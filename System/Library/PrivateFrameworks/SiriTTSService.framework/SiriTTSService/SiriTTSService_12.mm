uint64_t Realtime_V1_SessionUpdate.type.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[11] = v1;
  OUTLINED_FUNCTION_69_1();
  *(v3 + 21) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_65(v5 + 32, v3);
  v6 = *(v5 + 40);
  v3[9] = *(v5 + 32);
  *(v3 + 80) = v6;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B81BD0()
{
  OUTLINED_FUNCTION_53_0();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 84);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + 84);
    v11 = *(v3 + 88);
    OUTLINED_FUNCTION_70_1();
    v12 = OUTLINED_FUNCTION_47_5();
    v9 = sub_1B1B886C0(v12);
    *(v11 + v10) = v9;
  }

  v13 = 48;
  if (v1)
  {
    v13 = 24;
  }

  OUTLINED_FUNCTION_66_0(v9 + 32, v3 + v13);
  *(v9 + 32) = v4;
  *(v9 + 40) = v7;
  OUTLINED_FUNCTION_34_3();

  free(v14);
}

uint64_t Realtime_V1_SessionUpdate.session.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_32_0();
  v7 = *(v1 + *(type metadata accessor for Realtime_V1_SessionUpdate(v6) + 20));
  v8 = OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session;
  OUTLINED_FUNCTION_65(v7 + OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session, v11);
  OUTLINED_FUNCTION_107_0(v7 + v8);
  type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_13(v2);
  if (v9)
  {
    Realtime_V1_Session.init()(a1);
    result = OUTLINED_FUNCTION_13(v2);
    if (!v9)
    {
      return sub_1B1A90C20(v2, &qword_1EB762B18, &qword_1B1C3A140);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_11();
    return sub_1B1B884C0();
  }

  return result;
}

uint64_t Realtime_V1_SessionUpdate.session.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  if ((OUTLINED_FUNCTION_111_0() & 1) == 0)
  {
    OUTLINED_FUNCTION_70_1();
    v5 = OUTLINED_FUNCTION_47_5();
    *(v1 + v2) = sub_1B1B886C0(v5);
  }

  OUTLINED_FUNCTION_22_11();
  sub_1B1B884C0();
  type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_79_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  swift_beginAccess();
  v10 = OUTLINED_FUNCTION_116();
  sub_1B1B8C2AC(v10, v11, v12, v13);
  return swift_endAccess();
}

void Realtime_V1_SessionUpdate.session.modify()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  OUTLINED_FUNCTION_23(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_45();
  v8 = *(v7 + 64);
  v3[5] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[6] = v9;
  OUTLINED_FUNCTION_69_1();
  v11 = *(v0 + v10);
  v12 = OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session;
  OUTLINED_FUNCTION_65(v11 + OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session, v3);
  sub_1B1B8D9D8(v11 + v12, v6, &qword_1EB762B18, &qword_1B1C3A140);
  OUTLINED_FUNCTION_46();
  if (v13)
  {
    OUTLINED_FUNCTION_104_0(MEMORY[0x1E69E7CC0]);
    v9[7] = 0;
    *(v9 + 64) = 1;
    v9[9] = v14;
    v9[10] = 0;
    *(v9 + 88) = 1;
    *(v9 + 92) = 0;
    v9[13] = 0;
    v9[14] = v15;
    v9[15] = 0;
    v9[16] = v15;
    sub_1B1C2C5B8();
    type metadata accessor for Realtime_V1_InputAudioTranscription(0);
    OUTLINED_FUNCTION_64_1();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    type metadata accessor for Realtime_V1_TurnDetection(0);
    OUTLINED_FUNCTION_64_1();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    OUTLINED_FUNCTION_46();
    if (!v13)
    {
      sub_1B1A90C20(v6, &qword_1EB762B18, &qword_1B1C3A140);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_3_3();
    sub_1B1B884C0();
  }

  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_26_1();
}

void sub_1B1B82030(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_15();
    sub_1B1B88514();
    Realtime_V1_SessionUpdate.session.setter(v3);
    sub_1B1B8844C();
  }

  else
  {
    Realtime_V1_SessionUpdate.session.setter(*(*a1 + 48));
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t Realtime_V1_SessionUpdate.hasSession.getter()
{
  v1 = OUTLINED_FUNCTION_92();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_32_0();
  v6 = *(v0 + *(type metadata accessor for Realtime_V1_SessionUpdate(v5) + 20));
  v7 = OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session;
  OUTLINED_FUNCTION_65(v6 + OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session, v10);
  OUTLINED_FUNCTION_108_0(v6 + v7);
  v8 = type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_63_2(v8);
  return v6;
}

Swift::Void __swiftcall Realtime_V1_SessionUpdate.clearSession()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  OUTLINED_FUNCTION_23(v1);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v2);
  v3 = *(type metadata accessor for Realtime_V1_SessionUpdate(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_70_1();
    v4 = OUTLINED_FUNCTION_47_5();
    *(v0 + v3) = sub_1B1B886C0(v4);
  }

  type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_64_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  swift_beginAccess();
  v9 = OUTLINED_FUNCTION_116();
  sub_1B1B8C2AC(v9, v10, v11, v12);
  swift_endAccess();
}

uint64_t Realtime_V1_SessionUpdate.unknownFields.getter()
{
  OUTLINED_FUNCTION_89();
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45();
  v0 = OUTLINED_FUNCTION_43_0();

  return v1(v0);
}

uint64_t Realtime_V1_SessionUpdate.unknownFields.setter()
{
  OUTLINED_FUNCTION_58_0();
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45();
  v0 = OUTLINED_FUNCTION_49();

  return v1(v0);
}

uint64_t Realtime_V1_InputAudioBufferAppend.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_InputAudioBufferAppend(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_InputAudioBufferCommit.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_InputAudioBufferCommit(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1B82510()
{
  v0 = OUTLINED_FUNCTION_89();
  v1(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_84_0();

  return v3(v2);
}

uint64_t sub_1B1B82598()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_113_0();

  return v3(v2);
}

uint64_t Realtime_V1_InputAudioBufferClear.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_InputAudioBufferClear(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ConversationItemCreate.previousItemID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Realtime_V1_ConversationItemCreate.item.getter@<X0>(void *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AF8, &qword_1B1C3A120);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_32_0();
  v7 = type metadata accessor for Realtime_V1_ConversationItemCreate(v6);
  OUTLINED_FUNCTION_107_0(v1 + *(v7 + 32));
  type metadata accessor for Realtime_V1_Item(0);
  OUTLINED_FUNCTION_13(v2);
  if (v8)
  {
    Realtime_V1_Item.init()(a1);
    result = OUTLINED_FUNCTION_13(v2);
    if (!v8)
    {
      return sub_1B1A90C20(v2, &qword_1EB762AF8, &qword_1B1C3A120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_21();
    return sub_1B1B884C0();
  }

  return result;
}

uint64_t Realtime_V1_ConversationItemCreate.item.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_ConversationItemCreate(v1);
  sub_1B1A90C20(v0 + *(v2 + 32), &qword_1EB762AF8, &qword_1B1C3A120);
  OUTLINED_FUNCTION_4_21();
  OUTLINED_FUNCTION_116();
  sub_1B1B884C0();
  type metadata accessor for Realtime_V1_Item(0);
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_79_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Realtime_V1_ConversationItemCreate.item.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v1 + 8) = v7;
  *(v1 + 16) = type metadata accessor for Realtime_V1_Item(0);
  OUTLINED_FUNCTION_45();
  v9 = *(v8 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v1 + 32) = v10;
  v11 = *(type metadata accessor for Realtime_V1_ConversationItemCreate(0) + 32);
  *(v1 + 40) = v11;
  OUTLINED_FUNCTION_92_0(v0 + v11, v7);
  OUTLINED_FUNCTION_46();
  if (v12)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v10[4] = MEMORY[0x1E69E7CC0];
    v10[5] = 0;
    v10[6] = 0xE000000000000000;
    v10[7] = 0;
    v10[8] = 0xE000000000000000;
    v10[9] = 0;
    v10[10] = 0xE000000000000000;
    v10[11] = 0;
    v10[12] = 0xE000000000000000;
    v10[13] = 0;
    v10[14] = 0xE000000000000000;
    v10[15] = 0;
    v10[16] = 0xE000000000000000;
    sub_1B1C2C5B8();
    OUTLINED_FUNCTION_46();
    if (!v12)
    {
      sub_1B1A90C20(v7, &qword_1EB762AF8, &qword_1B1C3A120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_3_3();
    sub_1B1B884C0();
  }

  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_34_3();
}

void sub_1B1B829B4()
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_102_0();
  if (v5)
  {
    OUTLINED_FUNCTION_67_2();
    sub_1B1B88514();
    sub_1B1A90C20(v4 + v3, &qword_1EB762AF8, &qword_1B1C3A120);
    OUTLINED_FUNCTION_4_21();
    sub_1B1B884C0();
    OUTLINED_FUNCTION_75_0();
    OUTLINED_FUNCTION_71_1();
    sub_1B1B8844C();
  }

  else
  {
    sub_1B1A90C20(v4 + v3, &qword_1EB762AF8, &qword_1B1C3A120);
    OUTLINED_FUNCTION_4_21();
    sub_1B1B884C0();
    OUTLINED_FUNCTION_75_0();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_34_3();

  free(v6);
}

uint64_t Realtime_V1_ConversationItemCreate.hasItem.getter()
{
  v1 = OUTLINED_FUNCTION_92();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_32_0();
  v6 = type metadata accessor for Realtime_V1_ConversationItemCreate(v5);
  OUTLINED_FUNCTION_108_0(v0 + *(v6 + 32));
  v7 = type metadata accessor for Realtime_V1_Item(0);
  OUTLINED_FUNCTION_63_2(v7);
  return v0;
}

Swift::Void __swiftcall Realtime_V1_ConversationItemCreate.clearItem()()
{
  v1 = type metadata accessor for Realtime_V1_ConversationItemCreate(0);
  sub_1B1A90C20(v0 + *(v1 + 32), &qword_1EB762AF8, &qword_1B1C3A120);
  type metadata accessor for Realtime_V1_Item(0);
  OUTLINED_FUNCTION_64_1();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B1B82B9C()
{
  v0 = OUTLINED_FUNCTION_89();
  v1(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_84_0();

  return v3(v2);
}

uint64_t sub_1B1B82C24()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_113_0();

  return v3(v2);
}

uint64_t Realtime_V1_ConversationItemCreate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_ConversationItemCreate(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ConversationItemTruncate.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_89();
  type metadata accessor for Realtime_V1_ConversationItemTruncate(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45();
  v1 = OUTLINED_FUNCTION_84_0();

  return v2(v1);
}

uint64_t Realtime_V1_ConversationItemTruncate.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_ConversationItemTruncate(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45();
  v1 = OUTLINED_FUNCTION_113_0();

  return v2(v1);
}

uint64_t Realtime_V1_ConversationItemTruncate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_ConversationItemTruncate(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ConversationItemDelete.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_ConversationItemDelete(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ResponseCreate.response.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B08, &qword_1B1C3A130);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_32_0();
  v7 = type metadata accessor for Realtime_V1_ResponseCreate(v6);
  OUTLINED_FUNCTION_107_0(v1 + *(v7 + 28));
  type metadata accessor for Realtime_V1_Response(0);
  OUTLINED_FUNCTION_13(v2);
  if (v8)
  {
    Realtime_V1_Response.init()(a1);
    result = OUTLINED_FUNCTION_13(v2);
    if (!v8)
    {
      return sub_1B1A90C20(v2, &qword_1EB762B08, &qword_1B1C3A130);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_24();
    return sub_1B1B884C0();
  }

  return result;
}

uint64_t Realtime_V1_ResponseCreate.response.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_ResponseCreate(v1);
  sub_1B1A90C20(v0 + *(v2 + 28), &qword_1EB762B08, &qword_1B1C3A130);
  OUTLINED_FUNCTION_5_24();
  OUTLINED_FUNCTION_116();
  sub_1B1B884C0();
  type metadata accessor for Realtime_V1_Response(0);
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_79_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Realtime_V1_ResponseCreate.response.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v1 + 8) = v7;
  *(v1 + 16) = type metadata accessor for Realtime_V1_Response(0);
  OUTLINED_FUNCTION_45();
  v9 = *(v8 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v1 + 32) = v10;
  v11 = *(type metadata accessor for Realtime_V1_ResponseCreate(0) + 28);
  *(v1 + 40) = v11;
  OUTLINED_FUNCTION_92_0(v0 + v11, v7);
  OUTLINED_FUNCTION_46();
  if (v12)
  {
    OUTLINED_FUNCTION_104_0(MEMORY[0x1E69E7CC0]);
    v10[7] = v13;
    v10[8] = 0;
    *(v10 + 72) = 1;
    *(v10 + 19) = 0;
    v10[10] = 0;
    v10[11] = v14;
    sub_1B1C2C5B8();
    OUTLINED_FUNCTION_46();
    if (!v12)
    {
      sub_1B1A90C20(v7, &qword_1EB762B08, &qword_1B1C3A130);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_24();
    OUTLINED_FUNCTION_3_3();
    sub_1B1B884C0();
  }

  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_34_3();
}

void sub_1B1B83238()
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_102_0();
  if (v5)
  {
    OUTLINED_FUNCTION_67_2();
    sub_1B1B88514();
    sub_1B1A90C20(v4 + v3, &qword_1EB762B08, &qword_1B1C3A130);
    OUTLINED_FUNCTION_5_24();
    sub_1B1B884C0();
    OUTLINED_FUNCTION_75_0();
    OUTLINED_FUNCTION_74_3();
    sub_1B1B8844C();
  }

  else
  {
    sub_1B1A90C20(v4 + v3, &qword_1EB762B08, &qword_1B1C3A130);
    OUTLINED_FUNCTION_5_24();
    sub_1B1B884C0();
    OUTLINED_FUNCTION_75_0();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_34_3();

  free(v6);
}

uint64_t Realtime_V1_ResponseCreate.hasResponse.getter()
{
  v1 = OUTLINED_FUNCTION_92();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_32_0();
  v6 = type metadata accessor for Realtime_V1_ResponseCreate(v5);
  OUTLINED_FUNCTION_108_0(v0 + *(v6 + 28));
  v7 = type metadata accessor for Realtime_V1_Response(0);
  OUTLINED_FUNCTION_63_2(v7);
  return v0;
}

Swift::Void __swiftcall Realtime_V1_ResponseCreate.clearResponse()()
{
  v1 = type metadata accessor for Realtime_V1_ResponseCreate(0);
  sub_1B1A90C20(v0 + *(v1 + 28), &qword_1EB762B08, &qword_1B1C3A130);
  type metadata accessor for Realtime_V1_Response(0);
  OUTLINED_FUNCTION_64_1();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Realtime_V1_ResponseCreate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_ResponseCreate(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ResponseCancel.eventID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void Realtime_V1_ResponseCancel.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Realtime_V1_ResponseCancel.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Realtime_V1_ResponseCancel.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_ResponseCancel(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1B835AC()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB7629D0);
  __swift_project_value_buffer(v0, qword_1EB7629D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C3A0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CLIENT_EVENT_TYPE_UNSPECIFIED";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CLIENT_EVENT_TYPE_SESSION_UPDATE";
  *(v10 + 8) = 32;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CLIENT_EVENT_TYPE_INPUT_AUDIO_BUFFER_APPEND";
  *(v12 + 1) = 43;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CLIENT_EVENT_TYPE_INPUT_AUDIO_BUFFER_COMMIT";
  *(v14 + 1) = 43;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CLIENT_EVENT_TYPE_INPUT_AUDIO_BUFFER_CLEAR";
  *(v16 + 1) = 42;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "CLIENT_EVENT_TYPE_CONVERSATION_ITEM_CREATE";
  *(v18 + 1) = 42;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "CLIENT_EVENT_TYPE_CONVERSATION_ITEM_TRUNCATE";
  *(v20 + 1) = 44;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "CLIENT_EVENT_TYPE_CONVERSATION_ITEM_DELETE";
  *(v22 + 1) = 42;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "CLIENT_EVENT_TYPE_RESPONSE_CREATE";
  *(v24 + 1) = 33;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "CLIENT_EVENT_TYPE_RESPONSE_CANCEL";
  *(v26 + 1) = 33;
  v26[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B83998()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB7629E8);
  __swift_project_value_buffer(v0, qword_1EB7629E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B1C373B0;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "session_update";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B1C2C798();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "input_audio_buffer_append";
  *(v8 + 8) = 25;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "input_audio_buffer_commit";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "input_audio_buffer_clear";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "conversation_item_create";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "conversation_item_truncate";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "conversation_item_delete";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "response_create";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "response_cancel";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_ClientEvent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_15_4();
        sub_1B1B83E18(v3, v4, v5, v6);
        break;
      case 2:
        v23 = OUTLINED_FUNCTION_15_4();
        sub_1B1B84310(v23, v24, v25, v26);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_15_4();
        sub_1B1B84808(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_15_4();
        sub_1B1B84D00(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_15_4();
        sub_1B1B851F8(v7, v8, v9, v10);
        break;
      case 6:
        v27 = OUTLINED_FUNCTION_15_4();
        sub_1B1B856F0(v27, v28, v29, v30);
        break;
      case 7:
        v31 = OUTLINED_FUNCTION_15_4();
        sub_1B1B85BE8(v31, v32, v33, v34);
        break;
      case 8:
        v19 = OUTLINED_FUNCTION_15_4();
        sub_1B1B860E0(v19, v20, v21, v22);
        break;
      case 9:
        v35 = OUTLINED_FUNCTION_15_4();
        sub_1B1B865D8(v35, v36, v37, v38);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1B83E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Realtime_V1_SessionUpdate(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DF0, &qword_1B1C3B410);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B1B8D9D8(a1, v10, &qword_1EB762AE0, &qword_1B1C3A110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v10, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    sub_1B1B884C0();
    sub_1B1B884C0();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B1B8844C();
    }

    else
    {
      sub_1B1A90C20(v18, &qword_1EB762DF0, &qword_1B1C3B410);
      sub_1B1B884C0();
      sub_1B1B884C0();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B1B8C2F8(&qword_1EB762BC8, type metadata accessor for Realtime_V1_SessionUpdate, &protocol conformance descriptor for Realtime_V1_SessionUpdate);
  v19 = v29;
  sub_1B1C2C6B8();
  if (v19)
  {
    v20 = v18;
    return sub_1B1A90C20(v20, &qword_1EB762DF0, &qword_1B1C3B410);
  }

  sub_1B1B8D9D8(v18, v16, &qword_1EB762DF0, &qword_1B1C3B410);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B1A90C20(v18, &qword_1EB762DF0, &qword_1B1C3B410);
    v20 = v16;
    return sub_1B1A90C20(v20, &qword_1EB762DF0, &qword_1B1C3B410);
  }

  sub_1B1B884C0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v22 = v27;
  sub_1B1A90C20(v18, &qword_1EB762DF0, &qword_1B1C3B410);
  v23 = v25;
  sub_1B1A90C20(v25, &qword_1EB762AE0, &qword_1B1C3A110);
  sub_1B1B884C0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B1B84310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Realtime_V1_InputAudioBufferAppend(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DF8, &qword_1B1C3B418);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B1B8D9D8(a1, v10, &qword_1EB762AE0, &qword_1B1C3A110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v10, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    sub_1B1B884C0();
    sub_1B1B884C0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B1A90C20(v18, &qword_1EB762DF8, &qword_1B1C3B418);
      sub_1B1B884C0();
      sub_1B1B884C0();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B1B8844C();
    }
  }

  sub_1B1B8C2F8(&qword_1EB762BE0, type metadata accessor for Realtime_V1_InputAudioBufferAppend, &protocol conformance descriptor for Realtime_V1_InputAudioBufferAppend);
  v19 = v29;
  sub_1B1C2C6B8();
  if (v19)
  {
    v20 = v18;
    return sub_1B1A90C20(v20, &qword_1EB762DF8, &qword_1B1C3B418);
  }

  sub_1B1B8D9D8(v18, v16, &qword_1EB762DF8, &qword_1B1C3B418);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B1A90C20(v18, &qword_1EB762DF8, &qword_1B1C3B418);
    v20 = v16;
    return sub_1B1A90C20(v20, &qword_1EB762DF8, &qword_1B1C3B418);
  }

  sub_1B1B884C0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v22 = v27;
  sub_1B1A90C20(v18, &qword_1EB762DF8, &qword_1B1C3B418);
  v23 = v25;
  sub_1B1A90C20(v25, &qword_1EB762AE0, &qword_1B1C3A110);
  sub_1B1B884C0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B1B84808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Realtime_V1_InputAudioBufferCommit(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762E00, &qword_1B1C3B420);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B1B8D9D8(a1, v10, &qword_1EB762AE0, &qword_1B1C3A110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v10, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    sub_1B1B884C0();
    sub_1B1B884C0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B1A90C20(v18, &qword_1EB762E00, &qword_1B1C3B420);
      sub_1B1B884C0();
      sub_1B1B884C0();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B1B8844C();
    }
  }

  sub_1B1B8C2F8(&qword_1EB762BF8, type metadata accessor for Realtime_V1_InputAudioBufferCommit, &protocol conformance descriptor for Realtime_V1_InputAudioBufferCommit);
  v19 = v29;
  sub_1B1C2C6B8();
  if (v19)
  {
    v20 = v18;
    return sub_1B1A90C20(v20, &qword_1EB762E00, &qword_1B1C3B420);
  }

  sub_1B1B8D9D8(v18, v16, &qword_1EB762E00, &qword_1B1C3B420);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B1A90C20(v18, &qword_1EB762E00, &qword_1B1C3B420);
    v20 = v16;
    return sub_1B1A90C20(v20, &qword_1EB762E00, &qword_1B1C3B420);
  }

  sub_1B1B884C0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v22 = v27;
  sub_1B1A90C20(v18, &qword_1EB762E00, &qword_1B1C3B420);
  v23 = v25;
  sub_1B1A90C20(v25, &qword_1EB762AE0, &qword_1B1C3A110);
  sub_1B1B884C0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B1B84D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Realtime_V1_InputAudioBufferClear(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762E08, &qword_1B1C3B428);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B1B8D9D8(a1, v10, &qword_1EB762AE0, &qword_1B1C3A110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v10, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    sub_1B1B884C0();
    sub_1B1B884C0();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B1A90C20(v18, &qword_1EB762E08, &qword_1B1C3B428);
      sub_1B1B884C0();
      sub_1B1B884C0();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B1B8844C();
    }
  }

  sub_1B1B8C2F8(&qword_1EB762C10, type metadata accessor for Realtime_V1_InputAudioBufferClear, &protocol conformance descriptor for Realtime_V1_InputAudioBufferClear);
  v19 = v29;
  sub_1B1C2C6B8();
  if (v19)
  {
    v20 = v18;
    return sub_1B1A90C20(v20, &qword_1EB762E08, &qword_1B1C3B428);
  }

  sub_1B1B8D9D8(v18, v16, &qword_1EB762E08, &qword_1B1C3B428);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B1A90C20(v18, &qword_1EB762E08, &qword_1B1C3B428);
    v20 = v16;
    return sub_1B1A90C20(v20, &qword_1EB762E08, &qword_1B1C3B428);
  }

  sub_1B1B884C0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v22 = v27;
  sub_1B1A90C20(v18, &qword_1EB762E08, &qword_1B1C3B428);
  v23 = v25;
  sub_1B1A90C20(v25, &qword_1EB762AE0, &qword_1B1C3A110);
  sub_1B1B884C0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B1B851F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Realtime_V1_ConversationItemCreate(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762E10, &qword_1B1C3B430);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B1B8D9D8(a1, v10, &qword_1EB762AE0, &qword_1B1C3A110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v10, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    sub_1B1B884C0();
    sub_1B1B884C0();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B1A90C20(v18, &qword_1EB762E10, &qword_1B1C3B430);
      sub_1B1B884C0();
      sub_1B1B884C0();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B1B8844C();
    }
  }

  sub_1B1B8C2F8(&qword_1EB762C28, type metadata accessor for Realtime_V1_ConversationItemCreate, &protocol conformance descriptor for Realtime_V1_ConversationItemCreate);
  v19 = v29;
  sub_1B1C2C6B8();
  if (v19)
  {
    v20 = v18;
    return sub_1B1A90C20(v20, &qword_1EB762E10, &qword_1B1C3B430);
  }

  sub_1B1B8D9D8(v18, v16, &qword_1EB762E10, &qword_1B1C3B430);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B1A90C20(v18, &qword_1EB762E10, &qword_1B1C3B430);
    v20 = v16;
    return sub_1B1A90C20(v20, &qword_1EB762E10, &qword_1B1C3B430);
  }

  sub_1B1B884C0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v22 = v27;
  sub_1B1A90C20(v18, &qword_1EB762E10, &qword_1B1C3B430);
  v23 = v25;
  sub_1B1A90C20(v25, &qword_1EB762AE0, &qword_1B1C3A110);
  sub_1B1B884C0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B1B856F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Realtime_V1_ConversationItemTruncate(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762E18, &qword_1B1C3B438);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B1B8D9D8(a1, v10, &qword_1EB762AE0, &qword_1B1C3A110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v10, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    sub_1B1B884C0();
    sub_1B1B884C0();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B1A90C20(v18, &qword_1EB762E18, &qword_1B1C3B438);
      sub_1B1B884C0();
      sub_1B1B884C0();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B1B8844C();
    }
  }

  sub_1B1B8C2F8(&qword_1EB762C40, type metadata accessor for Realtime_V1_ConversationItemTruncate, &protocol conformance descriptor for Realtime_V1_ConversationItemTruncate);
  v19 = v29;
  sub_1B1C2C6B8();
  if (v19)
  {
    v20 = v18;
    return sub_1B1A90C20(v20, &qword_1EB762E18, &qword_1B1C3B438);
  }

  sub_1B1B8D9D8(v18, v16, &qword_1EB762E18, &qword_1B1C3B438);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B1A90C20(v18, &qword_1EB762E18, &qword_1B1C3B438);
    v20 = v16;
    return sub_1B1A90C20(v20, &qword_1EB762E18, &qword_1B1C3B438);
  }

  sub_1B1B884C0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v22 = v27;
  sub_1B1A90C20(v18, &qword_1EB762E18, &qword_1B1C3B438);
  v23 = v25;
  sub_1B1A90C20(v25, &qword_1EB762AE0, &qword_1B1C3A110);
  sub_1B1B884C0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B1B85BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Realtime_V1_ConversationItemDelete(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762E20, &qword_1B1C3B440);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B1B8D9D8(a1, v10, &qword_1EB762AE0, &qword_1B1C3A110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v10, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    sub_1B1B884C0();
    sub_1B1B884C0();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B1A90C20(v18, &qword_1EB762E20, &qword_1B1C3B440);
      sub_1B1B884C0();
      sub_1B1B884C0();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B1B8844C();
    }
  }

  sub_1B1B8C2F8(&qword_1EB762C58, type metadata accessor for Realtime_V1_ConversationItemDelete, &protocol conformance descriptor for Realtime_V1_ConversationItemDelete);
  v19 = v29;
  sub_1B1C2C6B8();
  if (v19)
  {
    v20 = v18;
    return sub_1B1A90C20(v20, &qword_1EB762E20, &qword_1B1C3B440);
  }

  sub_1B1B8D9D8(v18, v16, &qword_1EB762E20, &qword_1B1C3B440);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B1A90C20(v18, &qword_1EB762E20, &qword_1B1C3B440);
    v20 = v16;
    return sub_1B1A90C20(v20, &qword_1EB762E20, &qword_1B1C3B440);
  }

  sub_1B1B884C0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v22 = v27;
  sub_1B1A90C20(v18, &qword_1EB762E20, &qword_1B1C3B440);
  v23 = v25;
  sub_1B1A90C20(v25, &qword_1EB762AE0, &qword_1B1C3A110);
  sub_1B1B884C0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B1B860E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Realtime_V1_ResponseCreate(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762E28, &qword_1B1C3B448);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B1B8D9D8(a1, v10, &qword_1EB762AE0, &qword_1B1C3A110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v10, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    sub_1B1B884C0();
    sub_1B1B884C0();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B1A90C20(v18, &qword_1EB762E28, &qword_1B1C3B448);
      sub_1B1B884C0();
      sub_1B1B884C0();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B1B8844C();
    }
  }

  sub_1B1B8C2F8(&qword_1EB762C70, type metadata accessor for Realtime_V1_ResponseCreate, &protocol conformance descriptor for Realtime_V1_ResponseCreate);
  v19 = v29;
  sub_1B1C2C6B8();
  if (v19)
  {
    v20 = v18;
    return sub_1B1A90C20(v20, &qword_1EB762E28, &qword_1B1C3B448);
  }

  sub_1B1B8D9D8(v18, v16, &qword_1EB762E28, &qword_1B1C3B448);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B1A90C20(v18, &qword_1EB762E28, &qword_1B1C3B448);
    v20 = v16;
    return sub_1B1A90C20(v20, &qword_1EB762E28, &qword_1B1C3B448);
  }

  sub_1B1B884C0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v22 = v27;
  sub_1B1A90C20(v18, &qword_1EB762E28, &qword_1B1C3B448);
  v23 = v25;
  sub_1B1A90C20(v25, &qword_1EB762AE0, &qword_1B1C3A110);
  sub_1B1B884C0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B1B865D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Realtime_V1_ResponseCancel(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762E30, &unk_1B1C3B450);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B1B8D9D8(a1, v10, &qword_1EB762AE0, &qword_1B1C3A110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v10, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    sub_1B1B884C0();
    sub_1B1B884C0();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B1A90C20(v18, &qword_1EB762E30, &unk_1B1C3B450);
      sub_1B1B884C0();
      sub_1B1B884C0();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B1B8844C();
    }
  }

  sub_1B1B8C2F8(&qword_1EB762C88, type metadata accessor for Realtime_V1_ResponseCancel, &protocol conformance descriptor for Realtime_V1_ResponseCancel);
  v19 = v29;
  sub_1B1C2C6B8();
  if (v19)
  {
    v20 = v18;
    return sub_1B1A90C20(v20, &qword_1EB762E30, &unk_1B1C3B450);
  }

  sub_1B1B8D9D8(v18, v16, &qword_1EB762E30, &unk_1B1C3B450);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B1A90C20(v18, &qword_1EB762E30, &unk_1B1C3B450);
    v20 = v16;
    return sub_1B1A90C20(v20, &qword_1EB762E30, &unk_1B1C3B450);
  }

  sub_1B1B884C0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v22 = v27;
  sub_1B1A90C20(v18, &qword_1EB762E30, &unk_1B1C3B450);
  v23 = v25;
  sub_1B1A90C20(v25, &qword_1EB762AE0, &qword_1B1C3A110);
  sub_1B1B884C0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t Realtime_V1_ClientEvent.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v44 - v4;
  sub_1B1B8D9D8(v0, &v44 - v4, &qword_1EB762AE0, &qword_1B1C3A110);
  v6 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    OUTLINED_FUNCTION_66_1();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v27 = OUTLINED_FUNCTION_8_22();
        sub_1B1B86EA0(v27, v28, v29, v30);
        goto LABEL_11;
      case 2u:
        v15 = OUTLINED_FUNCTION_8_22();
        sub_1B1B870B4(v15, v16, v17, v18);
        goto LABEL_11;
      case 3u:
        v19 = OUTLINED_FUNCTION_8_22();
        sub_1B1B872C8(v19, v20, v21, v22);
        goto LABEL_11;
      case 4u:
        v11 = OUTLINED_FUNCTION_8_22();
        sub_1B1B874DC(v11, v12, v13, v14);
        goto LABEL_11;
      case 5u:
        v31 = OUTLINED_FUNCTION_8_22();
        sub_1B1B876F0(v31, v32, v33, v34);
        goto LABEL_11;
      case 6u:
        v35 = OUTLINED_FUNCTION_8_22();
        sub_1B1B87904(v35, v36, v37, v38);
        goto LABEL_11;
      case 7u:
        v23 = OUTLINED_FUNCTION_8_22();
        sub_1B1B87B18(v23, v24, v25, v26);
        goto LABEL_11;
      case 8u:
        v40 = OUTLINED_FUNCTION_8_22();
        sub_1B1B87D2C(v40, v41, v42, v43);
        if (v1)
        {
          OUTLINED_FUNCTION_2_29();
          return sub_1B1B8844C();
        }

        OUTLINED_FUNCTION_2_29();
        sub_1B1B8844C();
        break;
      default:
        v7 = OUTLINED_FUNCTION_8_22();
        sub_1B1B86C90(v7, v8, v9, v10);
LABEL_11:
        OUTLINED_FUNCTION_2_29();
        result = sub_1B1B8844C();
        if (!v1)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for Realtime_V1_ClientEvent(0);
  OUTLINED_FUNCTION_72_0();
  return sub_1B1C2C5A8();
}

uint64_t sub_1B1B86C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Realtime_V1_SessionUpdate(0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B1B8D9D8(a1, v7, &qword_1EB762AE0, &qword_1B1C3A110);
  v9 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_1B1A90C20(v7, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B1B884C0();
      sub_1B1B8C2F8(&qword_1EB762BC8, type metadata accessor for Realtime_V1_SessionUpdate, &protocol conformance descriptor for Realtime_V1_SessionUpdate);
      sub_1B1C2C788();
      return sub_1B1B8844C();
    }

    result = sub_1B1B8844C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B86EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Realtime_V1_InputAudioBufferAppend(0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B1B8D9D8(a1, v7, &qword_1EB762AE0, &qword_1B1C3A110);
  v9 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_1B1A90C20(v7, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B1B884C0();
      sub_1B1B8C2F8(&qword_1EB762BE0, type metadata accessor for Realtime_V1_InputAudioBufferAppend, &protocol conformance descriptor for Realtime_V1_InputAudioBufferAppend);
      sub_1B1C2C788();
      return sub_1B1B8844C();
    }

    result = sub_1B1B8844C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B870B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Realtime_V1_InputAudioBufferCommit(0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B1B8D9D8(a1, v7, &qword_1EB762AE0, &qword_1B1C3A110);
  v9 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_1B1A90C20(v7, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B1B884C0();
      sub_1B1B8C2F8(&qword_1EB762BF8, type metadata accessor for Realtime_V1_InputAudioBufferCommit, &protocol conformance descriptor for Realtime_V1_InputAudioBufferCommit);
      sub_1B1C2C788();
      return sub_1B1B8844C();
    }

    result = sub_1B1B8844C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B872C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Realtime_V1_InputAudioBufferClear(0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B1B8D9D8(a1, v7, &qword_1EB762AE0, &qword_1B1C3A110);
  v9 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_1B1A90C20(v7, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B1B884C0();
      sub_1B1B8C2F8(&qword_1EB762C10, type metadata accessor for Realtime_V1_InputAudioBufferClear, &protocol conformance descriptor for Realtime_V1_InputAudioBufferClear);
      sub_1B1C2C788();
      return sub_1B1B8844C();
    }

    result = sub_1B1B8844C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B874DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Realtime_V1_ConversationItemCreate(0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B1B8D9D8(a1, v7, &qword_1EB762AE0, &qword_1B1C3A110);
  v9 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_1B1A90C20(v7, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B1B884C0();
      sub_1B1B8C2F8(&qword_1EB762C28, type metadata accessor for Realtime_V1_ConversationItemCreate, &protocol conformance descriptor for Realtime_V1_ConversationItemCreate);
      sub_1B1C2C788();
      return sub_1B1B8844C();
    }

    result = sub_1B1B8844C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B876F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Realtime_V1_ConversationItemTruncate(0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B1B8D9D8(a1, v7, &qword_1EB762AE0, &qword_1B1C3A110);
  v9 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_1B1A90C20(v7, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B1B884C0();
      sub_1B1B8C2F8(&qword_1EB762C40, type metadata accessor for Realtime_V1_ConversationItemTruncate, &protocol conformance descriptor for Realtime_V1_ConversationItemTruncate);
      sub_1B1C2C788();
      return sub_1B1B8844C();
    }

    result = sub_1B1B8844C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B87904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Realtime_V1_ConversationItemDelete(0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B1B8D9D8(a1, v7, &qword_1EB762AE0, &qword_1B1C3A110);
  v9 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_1B1A90C20(v7, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B1B884C0();
      sub_1B1B8C2F8(&qword_1EB762C58, type metadata accessor for Realtime_V1_ConversationItemDelete, &protocol conformance descriptor for Realtime_V1_ConversationItemDelete);
      sub_1B1C2C788();
      return sub_1B1B8844C();
    }

    result = sub_1B1B8844C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B87B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Realtime_V1_ResponseCreate(0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B1B8D9D8(a1, v7, &qword_1EB762AE0, &qword_1B1C3A110);
  v9 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_1B1A90C20(v7, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B1B884C0();
      sub_1B1B8C2F8(&qword_1EB762C70, type metadata accessor for Realtime_V1_ResponseCreate, &protocol conformance descriptor for Realtime_V1_ResponseCreate);
      sub_1B1C2C788();
      return sub_1B1B8844C();
    }

    result = sub_1B1B8844C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B87D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Realtime_V1_ResponseCancel(0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B1B8D9D8(a1, v7, &qword_1EB762AE0, &qword_1B1C3A110);
  v9 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_1B1A90C20(v7, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B1B884C0();
      sub_1B1B8C2F8(&qword_1EB762C88, type metadata accessor for Realtime_V1_ResponseCancel, &protocol conformance descriptor for Realtime_V1_ResponseCancel);
      sub_1B1C2C788();
      return sub_1B1B8844C();
    }

    result = sub_1B1B8844C();
  }

  __break(1u);
  return result;
}

void static Realtime_V1_ClientEvent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  v3 = OUTLINED_FUNCTION_51_4();
  type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(v3);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  v5 = OUTLINED_FUNCTION_66_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_23(v7);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_82();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B28, &qword_1B1C3A148);
  OUTLINED_FUNCTION_23(v9);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35();
  v12 = *(v11 + 56);
  OUTLINED_FUNCTION_92_0(v1, v2);
  OUTLINED_FUNCTION_92_0(v0, v2 + v12);
  OUTLINED_FUNCTION_36_9(v2);
  if (v17)
  {
    OUTLINED_FUNCTION_36_9(v2 + v12);
    if (v17)
    {
      sub_1B1A90C20(v2, &qword_1EB762AE0, &qword_1B1C3A110);
LABEL_12:
      type metadata accessor for Realtime_V1_ClientEvent(0);
      sub_1B1C2C5C8();
      OUTLINED_FUNCTION_0_29();
      v22 = sub_1B1B8C2F8(v20, v21, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_42(v22);
      goto LABEL_13;
    }

LABEL_9:
    sub_1B1A90C20(v2, &qword_1EB762B28, &qword_1B1C3A148);
    goto LABEL_13;
  }

  v13 = OUTLINED_FUNCTION_126();
  sub_1B1B8D9D8(v13, v14, v15, v16);
  OUTLINED_FUNCTION_36_9(v2 + v12);
  if (v17)
  {
    OUTLINED_FUNCTION_2_29();
    sub_1B1B8844C();
    goto LABEL_9;
  }

  sub_1B1B884C0();
  OUTLINED_FUNCTION_3_3();
  static Realtime_V1_ClientEvent.OneOf_Event.== infix(_:_:)();
  v19 = v18;
  sub_1B1B8844C();
  sub_1B1B8844C();
  sub_1B1A90C20(v2, &qword_1EB762AE0, &qword_1B1C3A110);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_13:
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1B88248(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762DC0, type metadata accessor for Realtime_V1_ClientEvent, &protocol conformance descriptor for Realtime_V1_ClientEvent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B882C8(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762BB0, type metadata accessor for Realtime_V1_ClientEvent, &protocol conformance descriptor for Realtime_V1_ClientEvent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B88338(uint64_t a1, uint64_t a2)
{
  sub_1B1B8C2F8(&qword_1EB762BB0, type metadata accessor for Realtime_V1_ClientEvent, &protocol conformance descriptor for Realtime_V1_ClientEvent);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B8840C()
{
  type metadata accessor for Realtime_V1_SessionUpdate._StorageClass(0);
  swift_allocObject();
  result = sub_1B1B88668();
  qword_1EB762A18 = result;
  return result;
}

uint64_t sub_1B1B8844C()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2(v1);
  OUTLINED_FUNCTION_45();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B1B884C0()
{
  v1 = OUTLINED_FUNCTION_51_4();
  v2(v1);
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_43_0();
  v4(v3);
  return v0;
}

uint64_t sub_1B1B88514()
{
  v1 = OUTLINED_FUNCTION_51_4();
  v2(v1);
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_43_0();
  v4(v3);
  return v0;
}

uint64_t sub_1B1B88668()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v1 = OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session;
  v2 = type metadata accessor for Realtime_V1_Session(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_1B1B886C0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-v4];
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  v6 = OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session;
  v7 = type metadata accessor for Realtime_V1_Session(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  swift_beginAccess();
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v10;
  *(v1 + 40) = v11;
  v12 = OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session;
  swift_beginAccess();
  sub_1B1B8D9D8(a1 + v12, v5, &qword_1EB762B18, &qword_1B1C3A140);

  swift_beginAccess();
  sub_1B1B8C2AC(v5, v1 + v6, &qword_1EB762B18, &qword_1B1C3A140);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B1B88880()
{

  sub_1B1A90C20(v0 + OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session, &qword_1EB762B18, &qword_1B1C3A140);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Realtime_V1_SessionUpdate.decodeMessage<A>(decoder:)()
{
  v1 = *(type metadata accessor for Realtime_V1_SessionUpdate(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Realtime_V1_SessionUpdate._StorageClass(0);
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_47_5();
    *(v0 + v1) = sub_1B1B886C0(v2);
  }

  v3 = OUTLINED_FUNCTION_8_22();
  return sub_1B1B8898C(v3, v4, v5, v6);
}

uint64_t sub_1B1B8898C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B1C2C618();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1B1B88B54(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B1B88AC0(a2, a1, a3, a4);
        break;
      case 1:
        sub_1B1B88A3C(a2, a1, a3, a4);
        break;
    }
  }

  return result;
}

uint64_t sub_1B1B88A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B1C2C698();
  return swift_endAccess();
}

uint64_t sub_1B1B88AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B1B8C340();
  sub_1B1C2C648();
  return swift_endAccess();
}

uint64_t sub_1B1B88B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Realtime_V1_Session(0);
  sub_1B1B8C2F8(&qword_1EB762DE8, type metadata accessor for Realtime_V1_Session, &protocol conformance descriptor for Realtime_V1_Session);
  sub_1B1C2C6B8();
  return swift_endAccess();
}

uint64_t Realtime_V1_SessionUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Realtime_V1_SessionUpdate(0);
  OUTLINED_FUNCTION_72_0();
  result = sub_1B1B88C94(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_15();
    return sub_1B1C2C5A8();
  }

  return result;
}

uint64_t sub_1B1B88C94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = a1[3];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (, sub_1B1C2C768(), result = , !v4))
  {
    swift_beginAccess();
    if (!a1[4])
    {
      return sub_1B1B88DB4(a1, a2, a3, a4);
    }

    sub_1B1B8C340();
    result = sub_1B1C2C718();
    if (!v4)
    {
      return sub_1B1B88DB4(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1B1B88DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Realtime_V1_Session(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session;
  swift_beginAccess();
  sub_1B1B8D9D8(a1 + v9, v7, &qword_1EB762B18, &qword_1B1C3A140);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1B1A90C20(v7, &qword_1EB762B18, &qword_1B1C3A140);
  }

  sub_1B1B884C0();
  sub_1B1B8C2F8(&qword_1EB762DE8, type metadata accessor for Realtime_V1_Session, &protocol conformance descriptor for Realtime_V1_Session);
  sub_1B1C2C788();
  return sub_1B1B8844C();
}

BOOL sub_1B1B88FA8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Realtime_V1_Session(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762E38, &qword_1B1C40520);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v27 - v14;
  swift_beginAccess();
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  swift_beginAccess();
  v18 = v16 == a2[2] && v17 == a2[3];
  if (!v18 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  swift_beginAccess();
  if (!sub_1B1B1AFA0(v19, v20, a2[4]))
  {
    return 0;
  }

  v27[1] = v6;
  v28 = v13;
  v21 = OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session;
  swift_beginAccess();
  sub_1B1B8D9D8(a1 + v21, v15, &qword_1EB762B18, &qword_1B1C3A140);
  v22 = OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session;
  swift_beginAccess();
  v23 = *(v7 + 48);
  sub_1B1B8D9D8(v15, v9, &qword_1EB762B18, &qword_1B1C3A140);
  sub_1B1B8D9D8(a2 + v22, &v9[v23], &qword_1EB762B18, &qword_1B1C3A140);
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    sub_1B1A90C20(v15, &qword_1EB762B18, &qword_1B1C3A140);
    if (__swift_getEnumTagSinglePayload(&v9[v23], 1, v4) == 1)
    {
      sub_1B1A90C20(v9, &qword_1EB762B18, &qword_1B1C3A140);
      return 1;
    }

    goto LABEL_12;
  }

  sub_1B1B8D9D8(v9, v28, &qword_1EB762B18, &qword_1B1C3A140);
  if (__swift_getEnumTagSinglePayload(&v9[v23], 1, v4) == 1)
  {
    sub_1B1A90C20(v15, &qword_1EB762B18, &qword_1B1C3A140);
    sub_1B1B8844C();
LABEL_12:
    sub_1B1A90C20(v9, &qword_1EB762E38, &qword_1B1C40520);
    return 0;
  }

  sub_1B1B884C0();
  static Realtime_V1_Session.== infix(_:_:)();
  v26 = v25;
  sub_1B1B8844C();
  sub_1B1A90C20(v15, &qword_1EB762B18, &qword_1B1C3A140);
  sub_1B1B8844C();
  sub_1B1A90C20(v9, &qword_1EB762B18, &qword_1B1C3A140);
  return (v26 & 1) != 0;
}

uint64_t sub_1B1B89470(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762DB8, type metadata accessor for Realtime_V1_SessionUpdate, &protocol conformance descriptor for Realtime_V1_SessionUpdate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B894F0(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762BC8, type metadata accessor for Realtime_V1_SessionUpdate, &protocol conformance descriptor for Realtime_V1_SessionUpdate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B89560(uint64_t a1, uint64_t a2)
{
  sub_1B1B8C2F8(&qword_1EB762BC8, type metadata accessor for Realtime_V1_SessionUpdate, &protocol conformance descriptor for Realtime_V1_SessionUpdate);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B89748(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762DB0, type metadata accessor for Realtime_V1_InputAudioBufferAppend, &protocol conformance descriptor for Realtime_V1_InputAudioBufferAppend);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B897C8(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762BE0, type metadata accessor for Realtime_V1_InputAudioBufferAppend, &protocol conformance descriptor for Realtime_V1_InputAudioBufferAppend);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B89838(uint64_t a1, uint64_t a2)
{
  sub_1B1B8C2F8(&qword_1EB762BE0, type metadata accessor for Realtime_V1_InputAudioBufferAppend, &protocol conformance descriptor for Realtime_V1_InputAudioBufferAppend);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B89A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762DA8, type metadata accessor for Realtime_V1_InputAudioBufferCommit, &protocol conformance descriptor for Realtime_V1_InputAudioBufferCommit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B89A94(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762BF8, type metadata accessor for Realtime_V1_InputAudioBufferCommit, &protocol conformance descriptor for Realtime_V1_InputAudioBufferCommit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B89B04(uint64_t a1, uint64_t a2)
{
  sub_1B1B8C2F8(&qword_1EB762BF8, type metadata accessor for Realtime_V1_InputAudioBufferCommit, &protocol conformance descriptor for Realtime_V1_InputAudioBufferCommit);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B89C24(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = OUTLINED_FUNCTION_7_18();
  if (!v8 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v4))
  {
    if (!*(v5 + 16) || (v9 = OUTLINED_FUNCTION_87_0(result), result = OUTLINED_FUNCTION_40_7(v9, v10, &type metadata for Realtime_V1_ClientEventType, v9, v11, v12, v13, v14, v15), !v4))
    {
      a4(0);
      return OUTLINED_FUNCTION_48();
    }
  }

  return result;
}

uint64_t sub_1B1B89D68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762DA0, type metadata accessor for Realtime_V1_InputAudioBufferClear, &protocol conformance descriptor for Realtime_V1_InputAudioBufferClear);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B89DE8(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762C10, type metadata accessor for Realtime_V1_InputAudioBufferClear, &protocol conformance descriptor for Realtime_V1_InputAudioBufferClear);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B89E58(uint64_t a1, uint64_t a2)
{
  sub_1B1B8C2F8(&qword_1EB762C10, type metadata accessor for Realtime_V1_InputAudioBufferClear, &protocol conformance descriptor for Realtime_V1_InputAudioBufferClear);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B89EE4()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762A68);
  __swift_project_value_buffer(v0, qword_1EB762A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "event_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "previous_item_id";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "item";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_ConversationItemCreate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_43();
        sub_1B1AFBF40(v7);
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_43();
        sub_1B1B8A1F0(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1B8A1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Realtime_V1_ConversationItemCreate(0);
  type metadata accessor for Realtime_V1_Item(0);
  sub_1B1B8C2F8(&qword_1EB762DE0, type metadata accessor for Realtime_V1_Item, &protocol conformance descriptor for Realtime_V1_Item);
  return sub_1B1C2C6B8();
}

uint64_t Realtime_V1_ConversationItemCreate.traverse<A>(visitor:)()
{
  result = OUTLINED_FUNCTION_7_18();
  if (!v4 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), (v0 = v1) == 0))
  {
    if (!*(v2 + 16) || (v5 = OUTLINED_FUNCTION_87_0(result), result = OUTLINED_FUNCTION_40_7(v5, v6, &type metadata for Realtime_V1_ClientEventType, v5, v7, v8, v9, v10, v16), (v0 = v1) == 0))
    {
      OUTLINED_FUNCTION_17_0();
      if (!v11 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), (v0 = v1) == 0))
      {
        OUTLINED_FUNCTION_50_3();
        result = sub_1B1B8A374(v12, v13, v14, v15);
        if (!v0)
        {
          type metadata accessor for Realtime_V1_ConversationItemCreate(0);
          return OUTLINED_FUNCTION_48();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B1B8A374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AF8, &qword_1B1C3A120);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Realtime_V1_Item(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for Realtime_V1_ConversationItemCreate(0);
  sub_1B1B8D9D8(a1 + *(v9 + 32), v7, &qword_1EB762AF8, &qword_1B1C3A120);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1B1A90C20(v7, &qword_1EB762AF8, &qword_1B1C3A120);
  }

  sub_1B1B884C0();
  sub_1B1B8C2F8(&qword_1EB762DE0, type metadata accessor for Realtime_V1_Item, &protocol conformance descriptor for Realtime_V1_Item);
  sub_1B1C2C788();
  return sub_1B1B8844C();
}

uint64_t sub_1B1B8A5F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762D98, type metadata accessor for Realtime_V1_ConversationItemCreate, &protocol conformance descriptor for Realtime_V1_ConversationItemCreate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B8A678(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762C28, type metadata accessor for Realtime_V1_ConversationItemCreate, &protocol conformance descriptor for Realtime_V1_ConversationItemCreate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B8A6E8(uint64_t a1, uint64_t a2)
{
  sub_1B1B8C2F8(&qword_1EB762C28, type metadata accessor for Realtime_V1_ConversationItemCreate, &protocol conformance descriptor for Realtime_V1_ConversationItemCreate);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B8A780()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762A80);
  __swift_project_value_buffer(v0, qword_1EB762A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C3A100;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "event_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "item_id";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "content_index";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "audio_end_ms";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_ConversationItemTruncate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_43();
        sub_1B1AFBF40(v3);
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C678();
        break;
      default:
        continue;
    }
  }
}

uint64_t Realtime_V1_ConversationItemTruncate.traverse<A>(visitor:)()
{
  result = OUTLINED_FUNCTION_7_18();
  if (!v4 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), (v0 = v1) == 0))
  {
    if (!*(v2 + 16) || (v5 = OUTLINED_FUNCTION_87_0(result), result = OUTLINED_FUNCTION_40_7(v5, v6, &type metadata for Realtime_V1_ClientEventType, v5, v7, v8, v9, v10, v12), (v0 = v1) == 0))
    {
      OUTLINED_FUNCTION_17_0();
      if (!v11 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), (v0 = v1) == 0))
      {
        if (!*(v2 + 48) || (OUTLINED_FUNCTION_50_3(), result = sub_1B1C2C748(), !v0))
        {
          if (!*(v2 + 52) || (OUTLINED_FUNCTION_50_3(), result = sub_1B1C2C748(), !v0))
          {
            type metadata accessor for Realtime_V1_ConversationItemTruncate(0);
            return OUTLINED_FUNCTION_48();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B1B8AC98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762D90, type metadata accessor for Realtime_V1_ConversationItemTruncate, &protocol conformance descriptor for Realtime_V1_ConversationItemTruncate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B8AD18(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762C40, type metadata accessor for Realtime_V1_ConversationItemTruncate, &protocol conformance descriptor for Realtime_V1_ConversationItemTruncate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B8AD88(uint64_t a1, uint64_t a2)
{
  sub_1B1B8C2F8(&qword_1EB762C40, type metadata accessor for Realtime_V1_ConversationItemTruncate, &protocol conformance descriptor for Realtime_V1_ConversationItemTruncate);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B8AE14()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762A98);
  __swift_project_value_buffer(v0, qword_1EB762A98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "event_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "item_id";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B8B074()
{
  OUTLINED_FUNCTION_97_0();
  while (1)
  {
    result = sub_1B1C2C618();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_9;
      case 2:
        v4 = OUTLINED_FUNCTION_119_0();
        v0(v4);
        break;
      case 1:
LABEL_9:
        sub_1B1C2C698();
        break;
    }
  }
}

uint64_t sub_1B1B8B12C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = OUTLINED_FUNCTION_7_18();
  if (!v8 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v4))
  {
    if (!*(v5 + 16) || (v9 = OUTLINED_FUNCTION_87_0(result), result = OUTLINED_FUNCTION_40_7(v9, v10, &type metadata for Realtime_V1_ClientEventType, v9, v11, v12, v13, v14, v16), !v4))
    {
      OUTLINED_FUNCTION_17_0();
      if (!v15 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v4))
      {
        a4(0);
        return OUTLINED_FUNCTION_48();
      }
    }
  }

  return result;
}

uint64_t sub_1B1B8B294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762D88, type metadata accessor for Realtime_V1_ConversationItemDelete, &protocol conformance descriptor for Realtime_V1_ConversationItemDelete);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B8B314(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762C58, type metadata accessor for Realtime_V1_ConversationItemDelete, &protocol conformance descriptor for Realtime_V1_ConversationItemDelete);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B8B384(uint64_t a1, uint64_t a2)
{
  sub_1B1B8C2F8(&qword_1EB762C58, type metadata accessor for Realtime_V1_ConversationItemDelete, &protocol conformance descriptor for Realtime_V1_ConversationItemDelete);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B8B434(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v5, a2);
  v6 = OUTLINED_FUNCTION_33();
  __swift_project_value_buffer(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B1C364D0;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = "event_id";
  *(v13 + 8) = 8;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADE8];
  v15 = sub_1B1C2C798();
  OUTLINED_FUNCTION_45();
  v17 = *(v16 + 104);
  (v17)(v13, v14, v15);
  v18 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v17();
  v19 = v8[14];
  v20 = (v12 + 2 * v9);
  *v20 = 3;
  v21 = v20 + v19;
  *v21 = a3;
  *(v21 + 1) = a4;
  v21[16] = 2;
  v17();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_ResponseCreate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v4 = OUTLINED_FUNCTION_43();
        sub_1B1B8B6D8(v4, v5, v6, v7);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_43();
        sub_1B1AFBF40(v3);
        break;
      case 1:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
    }
  }

  return result;
}

uint64_t sub_1B1B8B6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Realtime_V1_ResponseCreate(0);
  type metadata accessor for Realtime_V1_Response(0);
  sub_1B1B8C2F8(&qword_1EB762DD8, type metadata accessor for Realtime_V1_Response, &protocol conformance descriptor for Realtime_V1_Response);
  return sub_1B1C2C6B8();
}

uint64_t Realtime_V1_ResponseCreate.traverse<A>(visitor:)()
{
  result = OUTLINED_FUNCTION_7_18();
  if (!v4 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), (v0 = v1) == 0))
  {
    if (!*(v2 + 16) || (v5 = OUTLINED_FUNCTION_87_0(result), result = OUTLINED_FUNCTION_40_7(v5, v6, &type metadata for Realtime_V1_ClientEventType, v5, v7, v8, v9, v10, v15), (v0 = v1) == 0))
    {
      OUTLINED_FUNCTION_50_3();
      result = sub_1B1B8B838(v11, v12, v13, v14);
      if (!v0)
      {
        type metadata accessor for Realtime_V1_ResponseCreate(0);
        return OUTLINED_FUNCTION_48();
      }
    }
  }

  return result;
}

uint64_t sub_1B1B8B838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B08, &qword_1B1C3A130);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Realtime_V1_Response(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for Realtime_V1_ResponseCreate(0);
  sub_1B1B8D9D8(a1 + *(v9 + 28), v7, &qword_1EB762B08, &qword_1B1C3A130);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1B1A90C20(v7, &qword_1EB762B08, &qword_1B1C3A130);
  }

  sub_1B1B884C0();
  sub_1B1B8C2F8(&qword_1EB762DD8, type metadata accessor for Realtime_V1_Response, &protocol conformance descriptor for Realtime_V1_Response);
  sub_1B1C2C788();
  return sub_1B1B8844C();
}

uint64_t sub_1B1B8BABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762D80, type metadata accessor for Realtime_V1_ResponseCreate, &protocol conformance descriptor for Realtime_V1_ResponseCreate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B8BB3C(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762C70, type metadata accessor for Realtime_V1_ResponseCreate, &protocol conformance descriptor for Realtime_V1_ResponseCreate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B8BBAC(uint64_t a1, uint64_t a2)
{
  sub_1B1B8C2F8(&qword_1EB762C70, type metadata accessor for Realtime_V1_ResponseCreate, &protocol conformance descriptor for Realtime_V1_ResponseCreate);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B8BC50(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_49();
  __swift_project_value_buffer(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B1C36280;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "event_id";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v13 = sub_1B1C2C798();
  OUTLINED_FUNCTION_45();
  v15 = *(v14 + 104);
  (v15)(v11, v12, v13);
  v16 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v16 = "type";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v15();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B8BE34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1B1C2C7B8();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1B1B8BEF8()
{
  OUTLINED_FUNCTION_97_0();
  while (1)
  {
    result = sub_1B1C2C618();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v4 = OUTLINED_FUNCTION_119_0();
      v0(v4);
    }

    else if (result == 1)
    {
      sub_1B1C2C698();
    }
  }

  return result;
}

uint64_t sub_1B1B8BFE8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B1C2D888();
  a1(0);
  v6 = OUTLINED_FUNCTION_33();
  sub_1B1B8C2F8(v6, v7, a4);
  sub_1B1C2CAE8();
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B8C0C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762D78, type metadata accessor for Realtime_V1_ResponseCancel, &protocol conformance descriptor for Realtime_V1_ResponseCancel);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B8C148(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762C88, type metadata accessor for Realtime_V1_ResponseCancel, &protocol conformance descriptor for Realtime_V1_ResponseCancel);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B8C1B8(uint64_t a1, uint64_t a2)
{
  sub_1B1B8C2F8(&qword_1EB762C88, type metadata accessor for Realtime_V1_ResponseCancel, &protocol conformance descriptor for Realtime_V1_ResponseCancel);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B8C234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B1C2D888();
  sub_1B1C2CAE8();
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B8C2AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_11_18(a1, a2, a3, a4);
  OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_43_0();
  v6(v5);
  return v4;
}

uint64_t sub_1B1B8C2F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B1B8C340()
{
  result = qword_1EB762B40;
  if (!qword_1EB762B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762B40);
  }

  return result;
}

unint64_t sub_1B1B8C39C()
{
  result = qword_1EB762B88;
  if (!qword_1EB762B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762B88);
  }

  return result;
}

unint64_t sub_1B1B8C3F4()
{
  result = qword_1EB762B90;
  if (!qword_1EB762B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB762B98, &qword_1B1C3A198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762B90);
  }

  return result;
}

unint64_t sub_1B1B8C45C()
{
  result = qword_1EB762BA0;
  if (!qword_1EB762BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762BA0);
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

uint64_t getEnumTagSinglePayload for Realtime_V1_ClientEventType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1B8D024(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_1B1B8D078(uint64_t a1)
{
  sub_1B1B8D42C(319, &qword_1EB762CA8, type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event);
  if (v1 <= 0x3F)
  {
    sub_1B1C2C5C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B1B8D120(uint64_t a1)
{
  result = type metadata accessor for Realtime_V1_SessionUpdate(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Realtime_V1_InputAudioBufferAppend(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Realtime_V1_InputAudioBufferCommit(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Realtime_V1_InputAudioBufferClear(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Realtime_V1_ConversationItemCreate(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Realtime_V1_ConversationItemTruncate(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Realtime_V1_ConversationItemDelete(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for Realtime_V1_ResponseCreate(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for Realtime_V1_ResponseCancel(319);
                  if (v10 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
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

uint64_t sub_1B1B8D248(uint64_t a1)
{
  result = sub_1B1C2C5C8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Realtime_V1_SessionUpdate._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B1B8D36C(uint64_t a1)
{
  sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    sub_1B1B8D42C(319, &qword_1EB762D10, type metadata accessor for Realtime_V1_Item);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B1B8D42C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B1C2D2B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B1B8D4A8(uint64_t a1)
{
  result = sub_1B1C2C5C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_59Tm()
{
  OUTLINED_FUNCTION_61();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  v3 = OUTLINED_FUNCTION_76(*(v0 + 28));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_60Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    v2 = v0;
    sub_1B1C2C5C8();
    v3 = OUTLINED_FUNCTION_62_0(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1B1B8D630(uint64_t a1)
{
  result = sub_1B1C2C5C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B1B8D6E4(uint64_t a1)
{
  sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    sub_1B1B8D42C(319, &qword_1EB762D48, type metadata accessor for Realtime_V1_Response);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_68Tm()
{
  OUTLINED_FUNCTION_61();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  v3 = OUTLINED_FUNCTION_76(*(v0 + 24));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_69Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    v2 = v0;
    sub_1B1C2C5C8();
    v3 = OUTLINED_FUNCTION_62_0(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1B1B8D88C(uint64_t a1)
{
  result = sub_1B1C2C5C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B1B8D918(uint64_t a1)
{
  sub_1B1B8D42C(319, &qword_1EB762D70, type metadata accessor for Realtime_V1_Session);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1B1B8D9D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_11_18(a1, a2, a3, a4);
  OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_43_0();
  v6(v5);
  return v4;
}

void OUTLINED_FUNCTION_104_0(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0xE000000000000000;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0xE000000000000000;
  *(v2 + 40) = 0;
  *(v2 + 48) = v1;
}

uint64_t OUTLINED_FUNCTION_106_0(uint64_t a1)
{

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_107_0(uint64_t a1)
{

  return sub_1B1B8D9D8(a1, v2, v1, v3);
}

uint64_t OUTLINED_FUNCTION_111_0()
{
  type metadata accessor for Realtime_V1_SessionUpdate(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_112_0(uint64_t a1)
{

  return sub_1B1C2C5B8();
}

void sub_1B1B8DB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for Realtime_V1_RateLimit(0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v32 = &a9 - v31;
  v33 = *(v25 + 16);
  if (v33 == *(v23 + 16) && v33 && v25 != v23)
  {
    v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v35 = v25 + v34;
    v36 = v23 + v34;
    v37 = *(v30 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_15();
      sub_1B1B8F828();
      sub_1B1B8F828();
      v38 = *v32 == *v29 && *(v32 + 1) == *(v29 + 1);
      if (!v38 && (sub_1B1C2D7A8() & 1) == 0 || *(v32 + 4) != *(v29 + 4) || *(v32 + 5) != *(v29 + 5) || *(v32 + 6) != *(v29 + 6))
      {
        break;
      }

      sub_1B1C2C5C8();
      OUTLINED_FUNCTION_0_30();
      sub_1B1B94F28(&qword_1EB762AF0, v39, MEMORY[0x1E69AAC10]);
      v40 = sub_1B1C2CB18();
      sub_1B1B8F87C();
      sub_1B1B8F87C();
      if (v40)
      {
        v36 += v37;
        v35 += v37;
        if (--v33)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    sub_1B1B8F87C();
    OUTLINED_FUNCTION_33_2();
    sub_1B1B8F87C();
  }

LABEL_18:
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1B8DE00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B1B8DE90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Realtime_V1_Parameters(0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FF0, &qword_1B1C3B498);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = (&v51 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763060, &qword_1B1C3B4B8);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v51 - v9;
  v61 = type metadata accessor for Realtime_V1_Function(0);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FE8, &qword_1B1C3B490);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v57 = &v51 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763050, &qword_1B1C3B4B0);
  MEMORY[0x1EEE9AC00](v59);
  v14 = &v51 - v13;
  v63 = type metadata accessor for Realtime_V1_Tool(0);
  v15 = MEMORY[0x1EEE9AC00](v63);
  v17 = (&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v20 = (&v51 - v19);
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
LABEL_59:
    v48 = 0;
    return v48 & 1;
  }

  v56 = *(a1 + 16);
  if (!v21 || a1 == a2)
  {
    v48 = 1;
    return v48 & 1;
  }

  v51 = v8;
  v52 = v4;
  v22 = 0;
  v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v53 = a2 + v23;
  v54 = *(v18 + 72);
  v55 = a1 + v23;
  v24 = v56;
  while (1)
  {
    result = sub_1B1B8F828();
    if (v22 == v24)
    {
      break;
    }

    sub_1B1B8F828();
    v26 = *v20 == *v17 && v20[1] == v17[1];
    if (!v26 && (sub_1B1C2D7A8() & 1) == 0)
    {
      goto LABEL_58;
    }

    v27 = *(v59 + 48);
    sub_1B1B90BBC();
    sub_1B1B90BBC();
    v28 = v61;
    if (__swift_getEnumTagSinglePayload(v14, 1, v61) == 1)
    {
      if (__swift_getEnumTagSinglePayload(&v14[v27], 1, v28) != 1)
      {
        goto LABEL_53;
      }

      sub_1B1A90C20(v14, &qword_1EB762FE8, &qword_1B1C3B490);
    }

    else
    {
      v29 = v57;
      sub_1B1B90BBC();
      if (__swift_getEnumTagSinglePayload(&v14[v27], 1, v28) == 1)
      {
        sub_1B1B8F87C();
LABEL_53:
        v49 = &qword_1EB763050;
        v50 = &qword_1B1C3B4B0;
        goto LABEL_57;
      }

      v30 = v64;
      sub_1B1B8F650();
      v31 = *v29 == *v30 && v29[1] == v30[1];
      if (!v31 && (sub_1B1C2D7A8() & 1) == 0)
      {
        goto LABEL_56;
      }

      v32 = v29[2] == *(v64 + 2) && v29[3] == *(v64 + 3);
      if (!v32 && (sub_1B1C2D7A8() & 1) == 0)
      {
        goto LABEL_56;
      }

      v33 = *(v51 + 48);
      v34 = v62;
      sub_1B1B90BBC();
      sub_1B1B90BBC();
      v35 = v52;
      if (__swift_getEnumTagSinglePayload(v34, 1, v52) == 1)
      {
        if (__swift_getEnumTagSinglePayload(v62 + v33, 1, v35) != 1)
        {
          goto LABEL_55;
        }

        sub_1B1A90C20(v62, &qword_1EB762FF0, &qword_1B1C3B498);
      }

      else
      {
        v36 = v62;
        sub_1B1B90BBC();
        if (__swift_getEnumTagSinglePayload(v36 + v33, 1, v35) == 1)
        {
          sub_1B1B8F87C();
LABEL_55:
          sub_1B1A90C20(v62, &qword_1EB763060, &qword_1B1C3B4B8);
          goto LABEL_56;
        }

        v37 = v58;
        sub_1B1B8F650();
        v38 = *v60 == *v37 && v60[1] == v37[1];
        if (!v38 && (sub_1B1C2D7A8() & 1) == 0)
        {
          goto LABEL_51;
        }

        if ((sub_1B1B99CF0(v60[2], *(v58 + 2)) & 1) == 0)
        {
          goto LABEL_51;
        }

        v39 = v60[3];
        v40 = *(v58 + 3);
        v41 = *(v39 + 16);
        if (v41 != *(v40 + 16))
        {
          goto LABEL_51;
        }

        if (v41 && v39 != v40)
        {
          v42 = (v39 + 40);
          v43 = (v40 + 40);
          while (1)
          {
            v44 = *(v42 - 1) == *(v43 - 1) && *v42 == *v43;
            if (!v44 && (sub_1B1C2D7A8() & 1) == 0)
            {
              break;
            }

            v42 += 2;
            v43 += 2;
            if (!--v41)
            {
              goto LABEL_45;
            }
          }

LABEL_51:
          sub_1B1B8F87C();
          sub_1B1B8F87C();
          sub_1B1A90C20(v62, &qword_1EB762FF0, &qword_1B1C3B498);
LABEL_56:
          sub_1B1B8F87C();
          sub_1B1B8F87C();
          v49 = &qword_1EB762FE8;
          v50 = &qword_1B1C3B490;
LABEL_57:
          sub_1B1A90C20(v14, v49, v50);
LABEL_58:
          sub_1B1B8F87C();
          sub_1B1B8F87C();
          goto LABEL_59;
        }

LABEL_45:
        sub_1B1C2C5C8();
        sub_1B1B94F28(&qword_1EB762AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v45 = sub_1B1C2CB18();
        v46 = v62;
        sub_1B1B8F87C();
        sub_1B1B8F87C();
        sub_1B1A90C20(v46, &qword_1EB762FF0, &qword_1B1C3B498);
        if ((v45 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      sub_1B1C2C5C8();
      sub_1B1B94F28(&qword_1EB762AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v47 = sub_1B1C2CB18();
      sub_1B1B8F87C();
      sub_1B1B8F87C();
      sub_1B1A90C20(v14, &qword_1EB762FE8, &qword_1B1C3B490);
      if ((v47 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    sub_1B1C2C5C8();
    sub_1B1B94F28(&qword_1EB762AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v48 = sub_1B1C2CB18();
    sub_1B1B8F87C();
    sub_1B1B8F87C();
    if (v48)
    {
      ++v22;
      v24 = v56;
      if (v22 != v56)
      {
        continue;
      }
    }

    return v48 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B8E83C(uint64_t a1, uint64_t a2)
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
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B1C2D7A8() & 1) == 0)
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

uint64_t sub_1B1B8E8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Realtime_V1_Content(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v22 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_30:
    v20 = 0;
    return v20 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1B1B8F828();
      sub_1B1B8F828();
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_1B1C2D7A8() & 1) == 0)
      {
        break;
      }

      v17 = v10[2] == v7[2] && v10[3] == v7[3];
      if (!v17 && (sub_1B1C2D7A8() & 1) == 0)
      {
        break;
      }

      v18 = v10[4] == v7[4] && v10[5] == v7[5];
      if (!v18 && (sub_1B1C2D7A8() & 1) == 0)
      {
        break;
      }

      v19 = v10[6] == v7[6] && v10[7] == v7[7];
      if (!v19 && (sub_1B1C2D7A8() & 1) == 0)
      {
        break;
      }

      sub_1B1C2C5C8();
      sub_1B1B94F28(&qword_1EB762AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v20 = sub_1B1C2CB18();
      sub_1B1B8F87C();
      sub_1B1B8F87C();
      if (v20)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_1B1B8F87C();
    sub_1B1B8F87C();
    goto LABEL_30;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t Realtime_V1_Session.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_71_2(MEMORY[0x1E69E7CC0]);
  *(a1 + 56) = 0;
  *(a1 + 64) = v2;
  *(a1 + 72) = v3;
  *(a1 + 80) = 0;
  *(a1 + 88) = v2;
  *(a1 + 92) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = v4;
  *(a1 + 120) = 0;
  *(a1 + 128) = v4;
  type metadata accessor for Realtime_V1_Session(0);
  sub_1B1C2C5B8();
  type metadata accessor for Realtime_V1_InputAudioTranscription(0);
  OUTLINED_FUNCTION_64_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  type metadata accessor for Realtime_V1_TurnDetection(0);
  OUTLINED_FUNCTION_64_1();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t Realtime_V1_Item.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = MEMORY[0x1E69E7CC0];
  v1[5] = 0;
  v1[6] = v2;
  v1[7] = 0;
  v1[8] = v2;
  v1[9] = 0;
  v1[10] = v2;
  v1[11] = 0;
  v1[12] = v2;
  v1[13] = 0;
  v1[14] = v2;
  v1[15] = 0;
  v1[16] = v2;
  type metadata accessor for Realtime_V1_Item(0);
  return sub_1B1C2C5B8();
}

uint64_t Realtime_V1_Response.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_71_2(MEMORY[0x1E69E7CC0]);
  *(a1 + 56) = v2;
  *(a1 + 64) = 0;
  *(a1 + 72) = v3;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v4;
  type metadata accessor for Realtime_V1_Response(0);
  return sub_1B1C2C5B8();
}

uint64_t sub_1B1B8EDD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B9316C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B1B8EE70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B931C0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B1B8EEF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B935D4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Realtime_V1_Session.modalities.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Realtime_V1_Session.instructions.setter()
{
  OUTLINED_FUNCTION_62();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Realtime_V1_Session.voice.setter()
{
  OUTLINED_FUNCTION_62();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Realtime_V1_Session.inputAudioFormat.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Realtime_V1_Session.outputAudioFormat.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t Realtime_V1_Session.inputAudioTranscription.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_32_0();
  v6 = type metadata accessor for Realtime_V1_Session(v5);
  v7 = OUTLINED_FUNCTION_66_3(*(v6 + 64));
  OUTLINED_FUNCTION_103_0(v7, v8);
  type metadata accessor for Realtime_V1_InputAudioTranscription(0);
  OUTLINED_FUNCTION_27_12();
  if (v9)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    sub_1B1C2C5B8();
    result = OUTLINED_FUNCTION_27_12();
    if (!v9)
    {
      return sub_1B1A90C20(v1, &qword_1EB762FD8, &qword_1B1C3B480);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_21();
    OUTLINED_FUNCTION_33_2();
    return sub_1B1B8F650();
  }

  return result;
}

uint64_t Realtime_V1_Session.inputAudioTranscription.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_Session(v1);
  sub_1B1A90C20(v0 + *(v2 + 64), &qword_1EB762FD8, &qword_1B1C3B480);
  OUTLINED_FUNCTION_11_21();
  OUTLINED_FUNCTION_102_1();
  type metadata accessor for Realtime_V1_InputAudioTranscription(0);
  v3 = OUTLINED_FUNCTION_38_8();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Realtime_V1_InputAudioTranscription.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  type metadata accessor for Realtime_V1_InputAudioTranscription(0);
  return sub_1B1C2C5B8();
}

void (*Realtime_V1_Session.inputAudioTranscription.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_93_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_23(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_91(v5);
  v7 = type metadata accessor for Realtime_V1_InputAudioTranscription(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_45();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_89_1(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_58_5(v11);
  v13 = *(type metadata accessor for Realtime_V1_Session(v12) + 64);
  *(v0 + 40) = v13;
  OUTLINED_FUNCTION_66_3(v13);
  sub_1B1B90BBC();
  v14 = OUTLINED_FUNCTION_47_6();
  OUTLINED_FUNCTION_48_0(v14, v15, v7);
  if (v16)
  {
    OUTLINED_FUNCTION_92_1();
    sub_1B1C2C5B8();
    v17 = OUTLINED_FUNCTION_47_6();
    OUTLINED_FUNCTION_48_0(v17, v18, v7);
    if (!v16)
    {
      sub_1B1A90C20(v5, &qword_1EB762FD8, &qword_1B1C3B480);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_21();
    OUTLINED_FUNCTION_33();
    sub_1B1B8F650();
  }

  return sub_1B1B8F3B4;
}

uint64_t Realtime_V1_Session.hasInputAudioTranscription.getter()
{
  v0 = OUTLINED_FUNCTION_100_1();
  OUTLINED_FUNCTION_23(v0);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_32_0();
  type metadata accessor for Realtime_V1_Session(v2);
  OUTLINED_FUNCTION_57_3();
  v3 = type metadata accessor for Realtime_V1_InputAudioTranscription(0);
  OUTLINED_FUNCTION_63_2(v3);
  return OUTLINED_FUNCTION_88_1();
}

Swift::Void __swiftcall Realtime_V1_Session.clearInputAudioTranscription()()
{
  v1 = type metadata accessor for Realtime_V1_Session(0);
  sub_1B1A90C20(v0 + *(v1 + 64), &qword_1EB762FD8, &qword_1B1C3B480);
  type metadata accessor for Realtime_V1_InputAudioTranscription(0);
  v2 = OUTLINED_FUNCTION_37_8();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Realtime_V1_Session.turnDetection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_32_0();
  v6 = type metadata accessor for Realtime_V1_Session(v5);
  v7 = OUTLINED_FUNCTION_66_3(*(v6 + 68));
  OUTLINED_FUNCTION_103_0(v7, v8);
  type metadata accessor for Realtime_V1_TurnDetection(0);
  OUTLINED_FUNCTION_27_12();
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
    sub_1B1C2C5B8();
    result = OUTLINED_FUNCTION_27_12();
    if (!v9)
    {
      return sub_1B1A90C20(v1, &qword_1EB762FE0, &qword_1B1C3B488);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_23();
    OUTLINED_FUNCTION_33_2();
    return sub_1B1B8F650();
  }

  return result;
}

uint64_t Realtime_V1_Session.turnDetection.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_Session(v1);
  sub_1B1A90C20(v0 + *(v2 + 68), &qword_1EB762FE0, &qword_1B1C3B488);
  OUTLINED_FUNCTION_8_23();
  OUTLINED_FUNCTION_102_1();
  type metadata accessor for Realtime_V1_TurnDetection(0);
  v3 = OUTLINED_FUNCTION_38_8();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Realtime_V1_TurnDetection.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  type metadata accessor for Realtime_V1_TurnDetection(0);
  return sub_1B1C2C5B8();
}

uint64_t sub_1B1B8F650()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_10_24();
  v2 = OUTLINED_FUNCTION_43_0();
  v3(v2);
  return v0;
}

void (*Realtime_V1_Session.turnDetection.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_93_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_23(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_91(v5);
  v7 = type metadata accessor for Realtime_V1_TurnDetection(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_45();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_89_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_58_5(v12);
  v14 = *(type metadata accessor for Realtime_V1_Session(v13) + 68);
  *(v0 + 40) = v14;
  OUTLINED_FUNCTION_66_3(v14);
  sub_1B1B90BBC();
  v15 = OUTLINED_FUNCTION_47_6();
  OUTLINED_FUNCTION_48_0(v15, v16, v7);
  if (v17)
  {
    OUTLINED_FUNCTION_92_1();
    *(v9 + 24) = 0;
    *(v9 + 16) = 0;
    sub_1B1C2C5B8();
    v18 = OUTLINED_FUNCTION_47_6();
    OUTLINED_FUNCTION_48_0(v18, v19, v7);
    if (!v17)
    {
      sub_1B1A90C20(v5, &qword_1EB762FE0, &qword_1B1C3B488);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_23();
    OUTLINED_FUNCTION_33();
    sub_1B1B8F650();
  }

  return sub_1B1B8F7EC;
}

uint64_t sub_1B1B8F828()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_10_24();
  v2 = OUTLINED_FUNCTION_43_0();
  v3(v2);
  return v0;
}

uint64_t sub_1B1B8F87C()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2(v1);
  OUTLINED_FUNCTION_45();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Realtime_V1_Session.hasTurnDetection.getter()
{
  v0 = OUTLINED_FUNCTION_100_1();
  OUTLINED_FUNCTION_23(v0);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_32_0();
  type metadata accessor for Realtime_V1_Session(v2);
  OUTLINED_FUNCTION_57_3();
  v3 = type metadata accessor for Realtime_V1_TurnDetection(0);
  OUTLINED_FUNCTION_63_2(v3);
  return OUTLINED_FUNCTION_88_1();
}

Swift::Void __swiftcall Realtime_V1_Session.clearTurnDetection()()
{
  v1 = type metadata accessor for Realtime_V1_Session(0);
  sub_1B1A90C20(v0 + *(v1 + 68), &qword_1EB762FE0, &qword_1B1C3B488);
  type metadata accessor for Realtime_V1_TurnDetection(0);
  v2 = OUTLINED_FUNCTION_37_8();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Realtime_V1_Session.tools.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t Realtime_V1_Session.toolChoice.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 80) = *result;
  *(v1 + 88) = v2;
  return result;
}

uint64_t Realtime_V1_Session.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_89();
  type metadata accessor for Realtime_V1_Session(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45();
  v1 = OUTLINED_FUNCTION_84_0();

  return v2(v1);
}

uint64_t Realtime_V1_Session.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_Session(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_10_24();
  v1 = OUTLINED_FUNCTION_113_0();

  return v2(v1);
}

uint64_t Realtime_V1_Session.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_Session(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_Response.tools.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t Realtime_V1_Response.toolChoice.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Realtime_V1_Response.maxOutputTokens.setter()
{
  OUTLINED_FUNCTION_62();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Realtime_V1_Response.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_89();
  type metadata accessor for Realtime_V1_Response(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45();
  v1 = OUTLINED_FUNCTION_84_0();

  return v2(v1);
}

uint64_t Realtime_V1_Response.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_Response(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_10_24();
  v1 = OUTLINED_FUNCTION_113_0();

  return v2(v1);
}

uint64_t Realtime_V1_Response.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_Response(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_Part.audio.setter()
{
  OUTLINED_FUNCTION_62();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Realtime_V1_Part.transcript.setter()
{
  OUTLINED_FUNCTION_62();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Realtime_V1_Part.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_Part(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_InputAudioTranscription.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_InputAudioTranscription(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1B90160()
{
  v0 = OUTLINED_FUNCTION_89();
  v1(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_84_0();

  return v3(v2);
}

uint64_t sub_1B1B901E8()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_10_24();
  v2 = OUTLINED_FUNCTION_113_0();

  return v3(v2);
}

uint64_t Realtime_V1_TurnDetection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_TurnDetection(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_Tool.function.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Realtime_V1_Tool(0);
  OUTLINED_FUNCTION_103_0(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Realtime_V1_Function(0);
  OUTLINED_FUNCTION_48_0(v6, 1, v8);
  if (v9)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    sub_1B1C2C5B8();
    type metadata accessor for Realtime_V1_Parameters(0);
    OUTLINED_FUNCTION_64_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    result = OUTLINED_FUNCTION_48_0(v6, 1, v8);
    if (!v9)
    {
      return sub_1B1A90C20(v6, &qword_1EB762FE8, &qword_1B1C3B490);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_24();
    return sub_1B1B8F650();
  }

  return result;
}

uint64_t Realtime_V1_Tool.function.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_Tool(v1);
  sub_1B1A90C20(v0 + *(v2 + 24), &qword_1EB762FE8, &qword_1B1C3B490);
  OUTLINED_FUNCTION_9_24();
  OUTLINED_FUNCTION_102_1();
  type metadata accessor for Realtime_V1_Function(0);
  v3 = OUTLINED_FUNCTION_38_8();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Realtime_V1_Function.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  type metadata accessor for Realtime_V1_Function(0);
  sub_1B1C2C5B8();
  type metadata accessor for Realtime_V1_Parameters(0);
  OUTLINED_FUNCTION_64_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Realtime_V1_Tool.function.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_93_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_23(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_91(v5);
  v7 = type metadata accessor for Realtime_V1_Function(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_45();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_89_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_58_5(v12);
  v14 = type metadata accessor for Realtime_V1_Tool(v13);
  OUTLINED_FUNCTION_85_1(*(v14 + 24));
  v15 = OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_48_0(v15, v16, v7);
  if (v17)
  {
    OUTLINED_FUNCTION_92_1();
    *(v9 + 16) = 0;
    *(v9 + 24) = v18;
    sub_1B1C2C5B8();
    type metadata accessor for Realtime_V1_Parameters(0);
    OUTLINED_FUNCTION_64_1();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    v23 = OUTLINED_FUNCTION_73_4();
    OUTLINED_FUNCTION_48_0(v23, v24, v7);
    if (!v17)
    {
      sub_1B1A90C20(v5, &qword_1EB762FE8, &qword_1B1C3B490);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_24();
    OUTLINED_FUNCTION_3_3();
    sub_1B1B8F650();
  }

  return sub_1B1B90658;
}

uint64_t Realtime_V1_Tool.hasFunction.getter()
{
  v0 = OUTLINED_FUNCTION_100_1();
  OUTLINED_FUNCTION_23(v0);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_32_0();
  type metadata accessor for Realtime_V1_Tool(v2);
  OUTLINED_FUNCTION_57_3();
  v3 = type metadata accessor for Realtime_V1_Function(0);
  OUTLINED_FUNCTION_63_2(v3);
  return OUTLINED_FUNCTION_88_1();
}

Swift::Void __swiftcall Realtime_V1_Tool.clearFunction()()
{
  v1 = type metadata accessor for Realtime_V1_Tool(0);
  sub_1B1A90C20(v0 + *(v1 + 24), &qword_1EB762FE8, &qword_1B1C3B490);
  type metadata accessor for Realtime_V1_Function(0);
  v2 = OUTLINED_FUNCTION_37_8();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B1B90784()
{
  v0 = OUTLINED_FUNCTION_89();
  v1(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_84_0();

  return v3(v2);
}

uint64_t sub_1B1B9080C()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_10_24();
  v2 = OUTLINED_FUNCTION_113_0();

  return v3(v2);
}

uint64_t Realtime_V1_Tool.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_Tool(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_Tool.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  type metadata accessor for Realtime_V1_Tool(0);
  sub_1B1C2C5B8();
  type metadata accessor for Realtime_V1_Function(0);
  OUTLINED_FUNCTION_64_1();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Realtime_V1_Function.parameters.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_32_0();
  v6 = type metadata accessor for Realtime_V1_Function(v5);
  v7 = OUTLINED_FUNCTION_66_3(*(v6 + 28));
  OUTLINED_FUNCTION_103_0(v7, v8);
  type metadata accessor for Realtime_V1_Parameters(0);
  OUTLINED_FUNCTION_27_12();
  if (v9)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    type metadata accessor for Realtime_V1_Property(0);
    v10 = MEMORY[0x1E69E7CC0];
    a1[2] = sub_1B1C2CAB8();
    a1[3] = v10;
    sub_1B1C2C5B8();
    result = OUTLINED_FUNCTION_27_12();
    if (!v9)
    {
      return sub_1B1A90C20(v1, &qword_1EB762FF0, &qword_1B1C3B498);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_19();
    OUTLINED_FUNCTION_33_2();
    return sub_1B1B8F650();
  }

  return result;
}

uint64_t sub_1B1B90A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_23(v9);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_82();
  sub_1B1B8F828();
  return a7(v7);
}

uint64_t Realtime_V1_Function.parameters.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_Function(v1);
  sub_1B1A90C20(v0 + *(v2 + 28), &qword_1EB762FF0, &qword_1B1C3B498);
  OUTLINED_FUNCTION_7_19();
  OUTLINED_FUNCTION_102_1();
  type metadata accessor for Realtime_V1_Parameters(0);
  v3 = OUTLINED_FUNCTION_38_8();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Realtime_V1_Parameters.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  type metadata accessor for Realtime_V1_Property(0);
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = sub_1B1C2CAB8();
  *(v1 + 24) = v2;
  type metadata accessor for Realtime_V1_Parameters(0);
  return sub_1B1C2C5B8();
}

uint64_t sub_1B1B90BBC()
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_10_24();
  v3 = OUTLINED_FUNCTION_43_0();
  v4(v3);
  return v0;
}

void (*Realtime_V1_Function.parameters.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_93_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_23(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_91(v5);
  v7 = type metadata accessor for Realtime_V1_Parameters(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_45();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_89_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_58_5(v12);
  v14 = type metadata accessor for Realtime_V1_Function(v13);
  OUTLINED_FUNCTION_85_1(*(v14 + 28));
  v15 = OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_48_0(v15, v16, v7);
  if (v17)
  {
    OUTLINED_FUNCTION_92_1();
    type metadata accessor for Realtime_V1_Property(0);
    v18 = MEMORY[0x1E69E7CC0];
    *(v9 + 16) = sub_1B1C2CAB8();
    *(v9 + 24) = v18;
    sub_1B1C2C5B8();
    v19 = OUTLINED_FUNCTION_73_4();
    OUTLINED_FUNCTION_48_0(v19, v20, v7);
    if (!v17)
    {
      sub_1B1A90C20(v5, &qword_1EB762FF0, &qword_1B1C3B498);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_19();
    OUTLINED_FUNCTION_3_3();
    sub_1B1B8F650();
  }

  return sub_1B1B90D90;
}

void sub_1B1B90DCC(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v11 = (*a1)[1];
  v10 = **a1;
  if (a2)
  {
    sub_1B1B8F828();
    sub_1B1A90C20(v10 + v7, a3, a4);
    sub_1B1B8F650();
    OUTLINED_FUNCTION_98_1();
    sub_1B1B8F87C();
  }

  else
  {
    sub_1B1A90C20(v10 + v7, a3, a4);
    sub_1B1B8F650();
    OUTLINED_FUNCTION_98_1();
  }

  free(v9);
  free(v8);
  free(v11);

  free(v6);
}

uint64_t Realtime_V1_Function.hasParameters.getter()
{
  v0 = OUTLINED_FUNCTION_100_1();
  OUTLINED_FUNCTION_23(v0);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_32_0();
  type metadata accessor for Realtime_V1_Function(v2);
  OUTLINED_FUNCTION_57_3();
  v3 = type metadata accessor for Realtime_V1_Parameters(0);
  OUTLINED_FUNCTION_63_2(v3);
  return OUTLINED_FUNCTION_88_1();
}

Swift::Void __swiftcall Realtime_V1_Function.clearParameters()()
{
  v1 = type metadata accessor for Realtime_V1_Function(0);
  sub_1B1A90C20(v0 + *(v1 + 28), &qword_1EB762FF0, &qword_1B1C3B498);
  type metadata accessor for Realtime_V1_Parameters(0);
  v2 = OUTLINED_FUNCTION_37_8();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Realtime_V1_Function.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_Function(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_Parameters.properties.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Realtime_V1_Parameters.required.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Realtime_V1_Parameters.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_89();
  type metadata accessor for Realtime_V1_Parameters(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45();
  v1 = OUTLINED_FUNCTION_84_0();

  return v2(v1);
}

uint64_t Realtime_V1_Parameters.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_Parameters(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_10_24();
  v1 = OUTLINED_FUNCTION_113_0();

  return v2(v1);
}

uint64_t Realtime_V1_Parameters.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_Parameters(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1B91230()
{
  v0 = OUTLINED_FUNCTION_89();
  v1(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_84_0();

  return v3(v2);
}

uint64_t sub_1B1B912B8()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_10_24();
  v2 = OUTLINED_FUNCTION_113_0();

  return v3(v2);
}

uint64_t Realtime_V1_Property.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_Property(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_Conversation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_Conversation(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1B9145C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3(0);
  return sub_1B1C2C5B8();
}

uint64_t Realtime_V1_Item.id.setter()
{
  OUTLINED_FUNCTION_62();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Realtime_V1_Item.type.setter()
{
  OUTLINED_FUNCTION_62();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Realtime_V1_Item.content.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Realtime_V1_Item.role.setter()
{
  OUTLINED_FUNCTION_62();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Realtime_V1_Item.status.setter()
{
  OUTLINED_FUNCTION_62();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Realtime_V1_Item.callID.setter()
{
  OUTLINED_FUNCTION_62();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Realtime_V1_Item.name.setter()
{
  OUTLINED_FUNCTION_62();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Realtime_V1_Item.arguments.setter()
{
  OUTLINED_FUNCTION_62();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t Realtime_V1_Item.output.setter()
{
  OUTLINED_FUNCTION_62();

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t Realtime_V1_Item.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_89();
  type metadata accessor for Realtime_V1_Item(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45();
  v1 = OUTLINED_FUNCTION_84_0();

  return v2(v1);
}

uint64_t Realtime_V1_Item.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_Item(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_10_24();
  v1 = OUTLINED_FUNCTION_113_0();

  return v2(v1);
}

uint64_t Realtime_V1_Item.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_Item(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_Content.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_Content(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1B91AD8@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  v1[6] = 0;
  v1[7] = v2;
  v3(0);
  return sub_1B1C2C5B8();
}

uint64_t Realtime_V1_CommonError.eventID.setter()
{
  OUTLINED_FUNCTION_62();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Realtime_V1_CommonError.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_89();
  type metadata accessor for Realtime_V1_CommonError(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45();
  v1 = OUTLINED_FUNCTION_84_0();

  return v2(v1);
}

uint64_t Realtime_V1_CommonError.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_CommonError(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_10_24();
  v1 = OUTLINED_FUNCTION_113_0();

  return v2(v1);
}

uint64_t Realtime_V1_CommonError.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_CommonError(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_CommonError.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  v1[6] = 0;
  v1[7] = v2;
  v1[8] = 0;
  v1[9] = v2;
  type metadata accessor for Realtime_V1_CommonError(0);
  return sub_1B1C2C5B8();
}

uint64_t Realtime_V1_RateLimit.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_RateLimit(v0);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_RateLimit.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  type metadata accessor for Realtime_V1_RateLimit(0);
  return sub_1B1C2C5B8();
}

uint64_t sub_1B1B91ED8()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762E40);
  __swift_project_value_buffer(v0, qword_1EB762E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "MODALITY_UNSPECIFIED";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MODALITY_TEXT";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MODALITY_AUDIO";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B92104()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762E58);
  __swift_project_value_buffer(v0, qword_1EB762E58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C38930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_FORMAT_UNSPECIFIED";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_FORMAT_PCM16";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_FORMAT_G711_ULAW";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_FORMAT_OPUS16";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AUDIO_FORMAT_OPUS24";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "AUDIO_FORMAT_TOKENS";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B923E4()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762E70);
  __swift_project_value_buffer(v0, qword_1EB762E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "TOOL_CHOICE_UNSPECIFIED";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TOOL_CHOICE_AUTO";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TOOL_CHOICE_NONE";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B92624()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762E88);
  __swift_project_value_buffer(v0, qword_1EB762E88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B1C3B460;
  v4 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v4 = "modalities";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B1C2C798();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v32 + v3 + v2 + v1[14];
  *(v32 + v3 + v2) = 2;
  *v8 = "instructions";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v32 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "voice";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v32 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "input_audio_format";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v7();
  v13 = (v32 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "output_audio_format";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v32 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "input_audio_transcription";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v7();
  v17 = (v32 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "turn_detection";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  v19 = (v32 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "tools";
  *(v20 + 1) = 5;
  v20[16] = 2;
  v7();
  v21 = (v32 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "tool_choice";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "temperature";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v7();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "max_output_tokens";
  *(v26 + 1) = 17;
  v26[16] = 2;
  v7();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "id";
  *(v28 + 1) = 2;
  v28[16] = 2;
  v7();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "object";
  *(v30 + 1) = 6;
  v30[16] = 2;
  v7();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_Session.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_43();
        sub_1B1AFCC54();
        break;
      case 2:
      case 3:
      case 12:
      case 13:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 4:
        OUTLINED_FUNCTION_43();
        sub_1B1AFCCA4();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_43();
        sub_1B1B92C10(v3, v4, v5, v6);
        break;
      case 6:
        v11 = OUTLINED_FUNCTION_43();
        sub_1B1B92C78(v11, v12, v13, v14);
        break;
      case 7:
        v15 = OUTLINED_FUNCTION_43();
        sub_1B1B92D2C(v15, v16, v17, v18);
        break;
      case 8:
        v7 = OUTLINED_FUNCTION_43();
        sub_1B1B92DE0(v7, v8, v9, v10);
        break;
      case 9:
        v19 = OUTLINED_FUNCTION_43();
        sub_1B1B92E80(v19, v20, v21, v22);
        break;
      case 10:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C668();
        break;
      case 11:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C678();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1B92C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Realtime_V1_Session(0);
  type metadata accessor for Realtime_V1_InputAudioTranscription(0);
  sub_1B1B94F28(&qword_1EB763158, type metadata accessor for Realtime_V1_InputAudioTranscription, &protocol conformance descriptor for Realtime_V1_InputAudioTranscription);
  return sub_1B1C2C6B8();
}

uint64_t sub_1B1B92D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Realtime_V1_Session(0);
  type metadata accessor for Realtime_V1_TurnDetection(0);
  sub_1B1B94F28(&qword_1EB763170, type metadata accessor for Realtime_V1_TurnDetection, &protocol conformance descriptor for Realtime_V1_TurnDetection);
  return sub_1B1C2C6B8();
}

uint64_t sub_1B1B92DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Realtime_V1_Tool(0);
  sub_1B1B94F28(&qword_1EB763008, type metadata accessor for Realtime_V1_Tool, &protocol conformance descriptor for Realtime_V1_Tool);
  return sub_1B1C2C6A8();
}

uint64_t Realtime_V1_Session.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_3_22();
  if (!*(*v0 + 16) || (sub_1B1B9316C(), OUTLINED_FUNCTION_16_4(), result = sub_1B1C2C708(), !v1))
  {
    OUTLINED_FUNCTION_17_0();
    if (!v4 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v1))
    {
      OUTLINED_FUNCTION_17_0();
      if (!v5 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v1))
      {
        if (!*(v2 + 40) || (OUTLINED_FUNCTION_72_2(), sub_1B1B931C0(), OUTLINED_FUNCTION_16_4(), result = sub_1B1C2C718(), !v1))
        {
          if (!*(v2 + 56) || (OUTLINED_FUNCTION_72_2(), sub_1B1B931C0(), OUTLINED_FUNCTION_16_4(), result = sub_1B1C2C718(), !v1))
          {
            v6 = OUTLINED_FUNCTION_29_10();
            result = sub_1B1B93214(v6, v7, v8, v9);
            if (!v1)
            {
              v10 = OUTLINED_FUNCTION_29_10();
              sub_1B1B933F4(v10, v11, v12, v13);
              if (*(*(v2 + 72) + 16))
              {
                type metadata accessor for Realtime_V1_Tool(0);
                OUTLINED_FUNCTION_54_2();
                sub_1B1B94F28(v14, v15, &protocol conformance descriptor for Realtime_V1_Tool);
                OUTLINED_FUNCTION_16_4();
                sub_1B1C2C778();
              }

              if (*(v2 + 80))
              {
                OUTLINED_FUNCTION_72_2();
                sub_1B1B935D4();
                OUTLINED_FUNCTION_16_4();
                sub_1B1C2C718();
              }

              if (*(v2 + 92))
              {
                OUTLINED_FUNCTION_31_8();
                OUTLINED_FUNCTION_72_0();
                sub_1B1C2C738();
              }

              if (*(v2 + 96))
              {
                OUTLINED_FUNCTION_20_11();
                sub_1B1C2C748();
              }

              OUTLINED_FUNCTION_17_0();
              if (v16)
              {
                OUTLINED_FUNCTION_39();
                sub_1B1C2C768();
              }

              OUTLINED_FUNCTION_17_0();
              if (v17)
              {
                OUTLINED_FUNCTION_39();
                sub_1B1C2C768();
              }

              type metadata accessor for Realtime_V1_Session(0);
              return OUTLINED_FUNCTION_48();
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B1B9316C()
{
  result = qword_1EB762FF8;
  if (!qword_1EB762FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762FF8);
  }

  return result;
}

unint64_t sub_1B1B931C0()
{
  result = qword_1EB763000;
  if (!qword_1EB763000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB763000);
  }

  return result;
}

uint64_t sub_1B1B93214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FD8, &qword_1B1C3B480);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for Realtime_V1_InputAudioTranscription(0);
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for Realtime_V1_Session(0);
  sub_1B1B90BBC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1B1A90C20(v6, &qword_1EB762FD8, &qword_1B1C3B480);
  }

  sub_1B1B8F650();
  sub_1B1B94F28(&qword_1EB763158, type metadata accessor for Realtime_V1_InputAudioTranscription, &protocol conformance descriptor for Realtime_V1_InputAudioTranscription);
  sub_1B1C2C788();
  return sub_1B1B8F87C();
}

uint64_t sub_1B1B933F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FE0, &qword_1B1C3B488);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for Realtime_V1_TurnDetection(0);
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for Realtime_V1_Session(0);
  sub_1B1B90BBC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1B1A90C20(v6, &qword_1EB762FE0, &qword_1B1C3B488);
  }

  sub_1B1B8F650();
  sub_1B1B94F28(&qword_1EB763170, type metadata accessor for Realtime_V1_TurnDetection, &protocol conformance descriptor for Realtime_V1_TurnDetection);
  sub_1B1C2C788();
  return sub_1B1B8F87C();
}

unint64_t sub_1B1B935D4()
{
  result = qword_1EB763010;
  if (!qword_1EB763010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB763010);
  }

  return result;
}

void static Realtime_V1_Session.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_62();
  v48 = type metadata accessor for Realtime_V1_TurnDetection(0);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FE0, &qword_1B1C3B488);
  OUTLINED_FUNCTION_23(v8);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v9);
  v47 = v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763018, &qword_1B1C3B4A0);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_82();
  v13 = type metadata accessor for Realtime_V1_InputAudioTranscription(0);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16();
  v17 = (v16 - v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FD8, &qword_1B1C3B480);
  OUTLINED_FUNCTION_23(v18);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_35();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763020, &qword_1B1C3B4A8);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v46 - v22;
  if ((sub_1B1B8DE00(*v1, *v0) & 1) == 0)
  {
    goto LABEL_40;
  }

  v24 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v24 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_40;
  }

  v25 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v25 && (sub_1B1C2D7A8() & 1) == 0 || !sub_1B1B1AFA0(*(v1 + 40), *(v1 + 48), *(v0 + 40)) || !sub_1B1B1AFA0(*(v1 + 56), *(v1 + 64), *(v0 + 56)))
  {
    goto LABEL_40;
  }

  v46[0] = v7;
  v46[1] = type metadata accessor for Realtime_V1_Session(0);
  v26 = *(v20 + 48);
  sub_1B1B90BBC();
  sub_1B1B90BBC();
  OUTLINED_FUNCTION_48_0(v23, 1, v13);
  if (v24)
  {
    OUTLINED_FUNCTION_48_0(&v23[v26], 1, v13);
    if (v24)
    {
      sub_1B1A90C20(v23, &qword_1EB762FD8, &qword_1B1C3B480);
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  sub_1B1B90BBC();
  OUTLINED_FUNCTION_48_0(&v23[v26], 1, v13);
  if (v27)
  {
    sub_1B1B8F87C();
LABEL_22:
    v28 = &qword_1EB763020;
    v29 = &qword_1B1C3B4A8;
LABEL_23:
    v30 = v23;
LABEL_39:
    sub_1B1A90C20(v30, v28, v29);
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_11_21();
  sub_1B1B8F650();
  v31 = *v2 == *v17 && v2[1] == v17[1];
  if (!v31 && (sub_1B1C2D7A8() & 1) == 0)
  {
    sub_1B1B8F87C();
    OUTLINED_FUNCTION_33_2();
    sub_1B1B8F87C();
    v28 = &qword_1EB762FD8;
    v29 = &qword_1B1C3B480;
    goto LABEL_23;
  }

  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  sub_1B1B94F28(v32, v33, MEMORY[0x1E69AAC10]);
  v34 = sub_1B1C2CB18();
  sub_1B1B8F87C();
  sub_1B1B8F87C();
  sub_1B1A90C20(v23, &qword_1EB762FD8, &qword_1B1C3B480);
  if ((v34 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_30:
  v35 = *(v11 + 48);
  sub_1B1B90BBC();
  sub_1B1B90BBC();
  v36 = OUTLINED_FUNCTION_73_4();
  v37 = v48;
  OUTLINED_FUNCTION_48_0(v36, v38, v48);
  if (!v24)
  {
    v39 = v47;
    sub_1B1B90BBC();
    OUTLINED_FUNCTION_48_0(v3 + v35, 1, v37);
    if (!v40)
    {
      OUTLINED_FUNCTION_8_23();
      sub_1B1B8F650();
      v41 = static Realtime_V1_TurnDetection.== infix(_:_:)(v39);
      sub_1B1B8F87C();
      sub_1B1B8F87C();
      sub_1B1A90C20(v3, &qword_1EB762FE0, &qword_1B1C3B488);
      if ((v41 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_42;
    }

    sub_1B1B8F87C();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_48_0(v3 + v35, 1, v37);
  if (!v24)
  {
LABEL_38:
    v28 = &qword_1EB763018;
    v29 = &qword_1B1C3B4A0;
    v30 = v3;
    goto LABEL_39;
  }

  sub_1B1A90C20(v3, &qword_1EB762FE0, &qword_1B1C3B488);
LABEL_42:
  if ((sub_1B1B8DE90(*(v1 + 72), *(v0 + 72)) & 1) != 0 && sub_1B1B1AFA0(*(v1 + 80), *(v1 + 88), *(v0 + 80)) && *(v1 + 92) == *(v0 + 92) && *(v1 + 96) == *(v0 + 96))
  {
    v42 = *(v1 + 104) == *(v0 + 104) && *(v1 + 112) == *(v0 + 112);
    if (v42 || (sub_1B1C2D7A8() & 1) != 0)
    {
      v43 = *(v1 + 120) == *(v0 + 120) && *(v1 + 128) == *(v0 + 128);
      if (v43 || (sub_1B1C2D7A8() & 1) != 0)
      {
        sub_1B1C2C5C8();
        OUTLINED_FUNCTION_0_30();
        sub_1B1B94F28(v44, v45, MEMORY[0x1E69AAC10]);
        sub_1B1C2CB18();
      }
    }
  }

LABEL_40:
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1B93D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB7633C8, type metadata accessor for Realtime_V1_Session, &protocol conformance descriptor for Realtime_V1_Session);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B93DDC(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB762DE8, type metadata accessor for Realtime_V1_Session, &protocol conformance descriptor for Realtime_V1_Session);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B93E4C(uint64_t a1, uint64_t a2)
{
  sub_1B1B94F28(&qword_1EB762DE8, type metadata accessor for Realtime_V1_Session, &protocol conformance descriptor for Realtime_V1_Session);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B93ED8()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762EA0);
  __swift_project_value_buffer(v0, qword_1EB762EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B1C3B470;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "modalities";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B1C2C798();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "instructions";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "voice";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "output_audio_format";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "tools";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "tool_choice";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "temperature";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "max_output_tokens";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_Response.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_43();
        sub_1B1AFCC54();
        break;
      case 2:
      case 3:
      case 8:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 4:
        OUTLINED_FUNCTION_43();
        sub_1B1AFCCA4();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_43();
        sub_1B1B94330(v3, v4, v5, v6);
        break;
      case 6:
        v7 = OUTLINED_FUNCTION_43();
        sub_1B1B943D0(v7, v8, v9, v10);
        break;
      case 7:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C668();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1B94330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Realtime_V1_Tool(0);
  sub_1B1B94F28(&qword_1EB763008, type metadata accessor for Realtime_V1_Tool, &protocol conformance descriptor for Realtime_V1_Tool);
  return sub_1B1C2C6A8();
}

uint64_t Realtime_V1_Response.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_3_22();
  if (!*(*v0 + 16) || (sub_1B1B9316C(), OUTLINED_FUNCTION_16_4(), result = sub_1B1C2C708(), !v1))
  {
    OUTLINED_FUNCTION_17_0();
    if (!v4 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v1))
    {
      OUTLINED_FUNCTION_17_0();
      if (!v5 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v1))
      {
        if (!*(v2 + 40) || (OUTLINED_FUNCTION_72_2(), sub_1B1B931C0(), OUTLINED_FUNCTION_16_4(), result = sub_1B1C2C718(), !v1))
        {
          if (!*(*(v2 + 56) + 16) || (type metadata accessor for Realtime_V1_Tool(0), OUTLINED_FUNCTION_54_2(), sub_1B1B94F28(v6, v7, &protocol conformance descriptor for Realtime_V1_Tool), OUTLINED_FUNCTION_16_4(), result = sub_1B1C2C778(), !v1))
          {
            if (!*(v2 + 64) || (OUTLINED_FUNCTION_72_2(), sub_1B1B935D4(), OUTLINED_FUNCTION_16_4(), result = sub_1B1C2C718(), !v1))
            {
              if (!*(v2 + 76) || (OUTLINED_FUNCTION_31_8(), OUTLINED_FUNCTION_72_0(), result = sub_1B1C2C738(), !v1))
              {
                OUTLINED_FUNCTION_17_0();
                if (!v8 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v1))
                {
                  type metadata accessor for Realtime_V1_Response(0);
                  return OUTLINED_FUNCTION_48();
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

uint64_t static Realtime_V1_Response.== infix(_:_:)()
{
  OUTLINED_FUNCTION_69_0();
  if ((sub_1B1B8DE00(*v2, *v3) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v4 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v5 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  if (!sub_1B1B1AFA0(*(v1 + 40), *(v1 + 48), *(v0 + 40)) || (sub_1B1B8DE90(*(v1 + 56), *(v0 + 56)) & 1) == 0 || !sub_1B1B1AFA0(*(v1 + 64), *(v1 + 72), *(v0 + 64)) || *(v1 + 76) != *(v0 + 76))
  {
    return 0;
  }

  v6 = *(v1 + 80) == *(v0 + 80) && *(v1 + 88) == *(v0 + 88);
  if (!v6 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Realtime_V1_Response(0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  v9 = sub_1B1B94F28(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_42(v9) & 1;
}

uint64_t sub_1B1B9481C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB7633C0, type metadata accessor for Realtime_V1_Response, &protocol conformance descriptor for Realtime_V1_Response);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B9489C(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB762DD8, type metadata accessor for Realtime_V1_Response, &protocol conformance descriptor for Realtime_V1_Response);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B9490C(uint64_t a1, uint64_t a2)
{
  sub_1B1B94F28(&qword_1EB762DD8, type metadata accessor for Realtime_V1_Response, &protocol conformance descriptor for Realtime_V1_Response);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B94AD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB7633B8, type metadata accessor for Realtime_V1_Part, &protocol conformance descriptor for Realtime_V1_Part);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B94B54(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB763140, type metadata accessor for Realtime_V1_Part, &protocol conformance descriptor for Realtime_V1_Part);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B94BC4(uint64_t a1, uint64_t a2)
{
  sub_1B1B94F28(&qword_1EB763140, type metadata accessor for Realtime_V1_Part, &protocol conformance descriptor for Realtime_V1_Part);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B94C5C()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762ED0);
  __swift_project_value_buffer(v0, qword_1EB762ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B1C361C0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "model";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B1C2C798();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_InputAudioTranscription.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_72_0();
      sub_1B1C2C698();
    }
  }

  return result;
}

uint64_t Realtime_V1_InputAudioTranscription.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v1 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
  {
    type metadata accessor for Realtime_V1_InputAudioTranscription(0);
    return OUTLINED_FUNCTION_48();
  }

  return result;
}

uint64_t static Realtime_V1_InputAudioTranscription.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_52_4(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Realtime_V1_InputAudioTranscription(0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  v6 = sub_1B1B94F28(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_42(v6) & 1;
}

uint64_t sub_1B1B94F28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B1B95014(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB7633B0, type metadata accessor for Realtime_V1_InputAudioTranscription, &protocol conformance descriptor for Realtime_V1_InputAudioTranscription);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B95094(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB763158, type metadata accessor for Realtime_V1_InputAudioTranscription, &protocol conformance descriptor for Realtime_V1_InputAudioTranscription);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B95104(uint64_t a1, uint64_t a2)
{
  sub_1B1B94F28(&qword_1EB763158, type metadata accessor for Realtime_V1_InputAudioTranscription, &protocol conformance descriptor for Realtime_V1_InputAudioTranscription);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B9519C()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762EE8);
  __swift_project_value_buffer(v0, qword_1EB762EE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "threshold";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "prefix_padding_ms";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "silence_duration_ms";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_TurnDetection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v2 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
  {
    if (!v1[4] || (OUTLINED_FUNCTION_31_8(), OUTLINED_FUNCTION_72_0(), result = sub_1B1C2C738(), !v0))
    {
      if (!v1[5] || (OUTLINED_FUNCTION_20_11(), result = sub_1B1C2C748(), !v0))
      {
        if (!v1[6] || (OUTLINED_FUNCTION_20_11(), result = sub_1B1C2C748(), !v0))
        {
          type metadata accessor for Realtime_V1_TurnDetection(0);
          return OUTLINED_FUNCTION_48();
        }
      }
    }
  }

  return result;
}

uint64_t static Realtime_V1_TurnDetection.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_52_4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B1C2D7A8() & 1) == 0 || *(v2 + 16) != *(v1 + 16) || *(v2 + 20) != *(v1 + 20) || *(v2 + 24) != *(v1 + 24))
  {
    return 0;
  }

  type metadata accessor for Realtime_V1_TurnDetection(0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  v8 = sub_1B1B94F28(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_42(v8) & 1;
}

uint64_t sub_1B1B95658(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB7633A8, type metadata accessor for Realtime_V1_TurnDetection, &protocol conformance descriptor for Realtime_V1_TurnDetection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B956D8(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB763170, type metadata accessor for Realtime_V1_TurnDetection, &protocol conformance descriptor for Realtime_V1_TurnDetection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B95748(uint64_t a1, uint64_t a2)
{
  sub_1B1B94F28(&qword_1EB763170, type metadata accessor for Realtime_V1_TurnDetection, &protocol conformance descriptor for Realtime_V1_TurnDetection);

  return sub_1B1C2C6E8();
}

uint64_t Realtime_V1_Tool.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_43();
      sub_1B1B95878(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_72_0();
      sub_1B1C2C698();
    }
  }

  return result;
}

uint64_t sub_1B1B95878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Realtime_V1_Tool(0);
  type metadata accessor for Realtime_V1_Function(0);
  sub_1B1B94F28(&qword_1EB763198, type metadata accessor for Realtime_V1_Function, &protocol conformance descriptor for Realtime_V1_Function);
  return sub_1B1C2C6B8();
}

uint64_t Realtime_V1_Tool.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v1 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
  {
    v3 = OUTLINED_FUNCTION_29_10();
    result = sub_1B1B959A0(v3, v4, v5, v6);
    if (!v0)
    {
      type metadata accessor for Realtime_V1_Tool(0);
      return OUTLINED_FUNCTION_48();
    }
  }

  return result;
}

uint64_t sub_1B1B959A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FE8, &qword_1B1C3B490);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for Realtime_V1_Function(0);
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for Realtime_V1_Tool(0);
  sub_1B1B90BBC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1B1A90C20(v6, &qword_1EB762FE8, &qword_1B1C3B490);
  }

  sub_1B1B8F650();
  sub_1B1B94F28(&qword_1EB763198, type metadata accessor for Realtime_V1_Function, &protocol conformance descriptor for Realtime_V1_Function);
  sub_1B1C2C788();
  return sub_1B1B8F87C();
}

void static Realtime_V1_Tool.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_69_0();
  type metadata accessor for Realtime_V1_Function(0);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FE8, &qword_1B1C3B490);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_82();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763050, &qword_1B1C3B4B0);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_35();
  v8 = *v1 == *v0 && v1[1] == v0[1];
  if (!v8 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_18;
  }

  type metadata accessor for Realtime_V1_Tool(0);
  v9 = *(v6 + 48);
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_97_1();
  OUTLINED_FUNCTION_36_9(v2);
  if (v8)
  {
    OUTLINED_FUNCTION_36_9(v2 + v9);
    if (v8)
    {
      sub_1B1A90C20(v2, &qword_1EB762FE8, &qword_1B1C3B490);
LABEL_17:
      sub_1B1C2C5C8();
      OUTLINED_FUNCTION_0_30();
      v15 = sub_1B1B94F28(v13, v14, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_42(v15);
      goto LABEL_18;
    }

LABEL_14:
    sub_1B1A90C20(v2, &qword_1EB763050, &qword_1B1C3B4B0);
    goto LABEL_18;
  }

  sub_1B1B90BBC();
  OUTLINED_FUNCTION_36_9(v2 + v9);
  if (v10)
  {
    sub_1B1B8F87C();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_9_24();
  sub_1B1B8F650();
  OUTLINED_FUNCTION_3_3();
  static Realtime_V1_Function.== infix(_:_:)();
  v12 = v11;
  sub_1B1B8F87C();
  sub_1B1B8F87C();
  sub_1B1A90C20(v2, &qword_1EB762FE8, &qword_1B1C3B490);
  if (v12)
  {
    goto LABEL_17;
  }

LABEL_18:
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1B95E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB7633A0, type metadata accessor for Realtime_V1_Tool, &protocol conformance descriptor for Realtime_V1_Tool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B95F1C(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB763008, type metadata accessor for Realtime_V1_Tool, &protocol conformance descriptor for Realtime_V1_Tool);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B95F8C(uint64_t a1, uint64_t a2)
{
  sub_1B1B94F28(&qword_1EB763008, type metadata accessor for Realtime_V1_Tool, &protocol conformance descriptor for Realtime_V1_Tool);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B96018()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762F18);
  __swift_project_value_buffer(v0, qword_1EB762F18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parameters";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_Function.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      v3 = OUTLINED_FUNCTION_43();
      sub_1B1B962BC(v3, v4, v5, v6);
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_72_0();
      sub_1B1C2C698();
    }
  }

  return result;
}

uint64_t sub_1B1B962BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Realtime_V1_Function(0);
  type metadata accessor for Realtime_V1_Parameters(0);
  sub_1B1B94F28(&qword_1EB7631B0, type metadata accessor for Realtime_V1_Parameters, &protocol conformance descriptor for Realtime_V1_Parameters);
  return sub_1B1C2C6B8();
}

uint64_t Realtime_V1_Function.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v1 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
  {
    OUTLINED_FUNCTION_17_0();
    if (!v3 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
    {
      v4 = OUTLINED_FUNCTION_29_10();
      result = sub_1B1B96408(v4, v5, v6, v7);
      if (!v0)
      {
        type metadata accessor for Realtime_V1_Function(0);
        return OUTLINED_FUNCTION_48();
      }
    }
  }

  return result;
}

uint64_t sub_1B1B96408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FF0, &qword_1B1C3B498);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for Realtime_V1_Parameters(0);
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for Realtime_V1_Function(0);
  sub_1B1B90BBC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1B1A90C20(v6, &qword_1EB762FF0, &qword_1B1C3B498);
  }

  sub_1B1B8F650();
  sub_1B1B94F28(&qword_1EB7631B0, type metadata accessor for Realtime_V1_Parameters, &protocol conformance descriptor for Realtime_V1_Parameters);
  sub_1B1C2C788();
  return sub_1B1B8F87C();
}

void static Realtime_V1_Function.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_69_0();
  type metadata accessor for Realtime_V1_Parameters(0);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FF0, &qword_1B1C3B498);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_82();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763060, &qword_1B1C3B4B8);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_35();
  v8 = *v1 == *v0 && v1[1] == v0[1];
  if (!v8 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_50_4();
  v11 = v8 && v9 == v10;
  if (!v11 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_23;
  }

  type metadata accessor for Realtime_V1_Function(0);
  v12 = *(v6 + 48);
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_97_1();
  OUTLINED_FUNCTION_36_9(v2);
  if (v8)
  {
    OUTLINED_FUNCTION_36_9(v2 + v12);
    if (v8)
    {
      sub_1B1A90C20(v2, &qword_1EB762FF0, &qword_1B1C3B498);
LABEL_22:
      sub_1B1C2C5C8();
      OUTLINED_FUNCTION_0_30();
      v18 = sub_1B1B94F28(v16, v17, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_42(v18);
      goto LABEL_23;
    }

LABEL_19:
    sub_1B1A90C20(v2, &qword_1EB763060, &qword_1B1C3B4B8);
    goto LABEL_23;
  }

  sub_1B1B90BBC();
  OUTLINED_FUNCTION_36_9(v2 + v12);
  if (v13)
  {
    sub_1B1B8F87C();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_19();
  sub_1B1B8F650();
  v14 = OUTLINED_FUNCTION_3_3();
  v15 = static Realtime_V1_Parameters.== infix(_:_:)(v14);
  sub_1B1B8F87C();
  sub_1B1B8F87C();
  sub_1B1A90C20(v2, &qword_1EB762FF0, &qword_1B1C3B498);
  if (v15)
  {
    goto LABEL_22;
  }

LABEL_23:
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1B9691C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB763398, type metadata accessor for Realtime_V1_Function, &protocol conformance descriptor for Realtime_V1_Function);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B9699C(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB763198, type metadata accessor for Realtime_V1_Function, &protocol conformance descriptor for Realtime_V1_Function);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B96A0C(uint64_t a1, uint64_t a2)
{
  sub_1B1B94F28(&qword_1EB763198, type metadata accessor for Realtime_V1_Function, &protocol conformance descriptor for Realtime_V1_Function);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B96AA4()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762F30);
  __swift_project_value_buffer(v0, qword_1EB762F30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "properties";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "required";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_Parameters.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C688();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_43();
        sub_1B1B96D54(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
    }
  }

  return result;
}

uint64_t sub_1B1B96D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B1C2C598();
  type metadata accessor for Realtime_V1_Property(0);
  sub_1B1B94F28(&qword_1EB763070, type metadata accessor for Realtime_V1_Property, &protocol conformance descriptor for Realtime_V1_Property);
  sub_1B1B94F28(&qword_1EB763078, type metadata accessor for Realtime_V1_Property, &protocol conformance descriptor for Realtime_V1_Property);
  return sub_1B1C2C608();
}

uint64_t Realtime_V1_Parameters.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v2 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (sub_1B1C2C598(), type metadata accessor for Realtime_V1_Property(0), sub_1B1B94F28(&qword_1EB763070, type metadata accessor for Realtime_V1_Property, &protocol conformance descriptor for Realtime_V1_Property), sub_1B1B94F28(&qword_1EB763078, type metadata accessor for Realtime_V1_Property, &protocol conformance descriptor for Realtime_V1_Property), OUTLINED_FUNCTION_31_8(), result = sub_1B1C2C6F8(), !v0))
    {
      if (!*(*(v1 + 24) + 16) || (OUTLINED_FUNCTION_20_11(), result = sub_1B1C2C758(), !v0))
      {
        type metadata accessor for Realtime_V1_Parameters(0);
        return OUTLINED_FUNCTION_48();
      }
    }
  }

  return result;
}

uint64_t static Realtime_V1_Parameters.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_52_4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B1C2D7A8() & 1) == 0 || (sub_1B1B99CF0(*(v2 + 16), *(v1 + 16)) & 1) == 0 || (sub_1B1B8E83C(*(v2 + 24), *(v1 + 24)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Realtime_V1_Parameters(0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  v8 = sub_1B1B94F28(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_42(v8) & 1;
}

uint64_t sub_1B1B970F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB763390, type metadata accessor for Realtime_V1_Parameters, &protocol conformance descriptor for Realtime_V1_Parameters);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B97170(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB7631B0, type metadata accessor for Realtime_V1_Parameters, &protocol conformance descriptor for Realtime_V1_Parameters);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B971E0(uint64_t a1, uint64_t a2)
{
  sub_1B1B94F28(&qword_1EB7631B0, type metadata accessor for Realtime_V1_Parameters, &protocol conformance descriptor for Realtime_V1_Parameters);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B97284(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v5, a2);
  v6 = OUTLINED_FUNCTION_33();
  __swift_project_value_buffer(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B1C36280;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = "type";
  *(v13 + 8) = 4;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = sub_1B1C2C798();
  OUTLINED_FUNCTION_45();
  v17 = *(v16 + 104);
  (v17)(v13, v14, v15);
  v18 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v18 = a3;
  *(v18 + 1) = a4;
  v18[16] = 2;
  v17();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B97544(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB763388, type metadata accessor for Realtime_V1_Property, &protocol conformance descriptor for Realtime_V1_Property);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B975C4(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB763070, type metadata accessor for Realtime_V1_Property, &protocol conformance descriptor for Realtime_V1_Property);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B97634(uint64_t a1, uint64_t a2)
{
  sub_1B1B94F28(&qword_1EB763070, type metadata accessor for Realtime_V1_Property, &protocol conformance descriptor for Realtime_V1_Property);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B976CC()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762F60);
  __swift_project_value_buffer(v0, qword_1EB762F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C36280;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "object";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B978B4()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_72_0();
      sub_1B1C2C698();
    }
  }

  return result;
}

uint64_t sub_1B1B97940(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_7_18();
  if (!v6 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v4))
  {
    OUTLINED_FUNCTION_17_0();
    if (!v8 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v4))
    {
      a4(0);
      return OUTLINED_FUNCTION_48();
    }
  }

  return result;
}

uint64_t sub_1B1B979F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_52_4(a1);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_50_4();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  v12 = sub_1B1B94F28(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_42(v12) & 1;
}

uint64_t sub_1B1B97B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB763380, type metadata accessor for Realtime_V1_Conversation, &protocol conformance descriptor for Realtime_V1_Conversation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B97BA4(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB7631D8, type metadata accessor for Realtime_V1_Conversation, &protocol conformance descriptor for Realtime_V1_Conversation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B97C14(uint64_t a1, uint64_t a2)
{
  sub_1B1B94F28(&qword_1EB7631D8, type metadata accessor for Realtime_V1_Conversation, &protocol conformance descriptor for Realtime_V1_Conversation);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B97CA0()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762F78);
  __swift_project_value_buffer(v0, qword_1EB762F78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B1C373B0;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B1C2C798();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "type";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "content";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "role";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "status";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "call_id";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "name";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "arguments";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "output";
  *(v22 + 1) = 6;
  v22[16] = 2;
  v7();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_Item.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_43();
        sub_1B1B980EC(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1B980EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Realtime_V1_Content(0);
  sub_1B1B94F28(&qword_1EB763090, type metadata accessor for Realtime_V1_Content, &protocol conformance descriptor for Realtime_V1_Content);
  return sub_1B1C2C6A8();
}

uint64_t Realtime_V1_Item.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v2 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
  {
    OUTLINED_FUNCTION_17_0();
    if (!v4 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
    {
      if (!*(*(v1 + 32) + 16) || (type metadata accessor for Realtime_V1_Content(0), sub_1B1B94F28(&qword_1EB763090, type metadata accessor for Realtime_V1_Content, &protocol conformance descriptor for Realtime_V1_Content), OUTLINED_FUNCTION_16_4(), result = sub_1B1C2C778(), !v0))
      {
        OUTLINED_FUNCTION_17_0();
        if (!v5 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
        {
          OUTLINED_FUNCTION_17_0();
          if (!v6 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
          {
            OUTLINED_FUNCTION_17_0();
            if (!v7 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
            {
              OUTLINED_FUNCTION_17_0();
              if (!v8 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
              {
                OUTLINED_FUNCTION_17_0();
                if (!v9 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
                {
                  OUTLINED_FUNCTION_17_0();
                  if (!v10 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
                  {
                    type metadata accessor for Realtime_V1_Item(0);
                    return OUTLINED_FUNCTION_48();
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

uint64_t static Realtime_V1_Item.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_52_4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_50_4();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B1B8E8C8(v2[4], v1[4]) & 1) == 0)
  {
    return 0;
  }

  v9 = v2[5] == v1[5] && v2[6] == v1[6];
  if (!v9 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v10 = v2[7] == v1[7] && v2[8] == v1[8];
  if (!v10 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v11 = v2[9] == v1[9] && v2[10] == v1[10];
  if (!v11 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v12 = v2[11] == v1[11] && v2[12] == v1[12];
  if (!v12 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v13 = v2[13] == v1[13] && v2[14] == v1[14];
  if (!v13 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v14 = v2[15] == v1[15] && v2[16] == v1[16];
  if (!v14 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Realtime_V1_Item(0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  v17 = sub_1B1B94F28(v15, v16, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_42(v17) & 1;
}

uint64_t sub_1B1B98598(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB763378, type metadata accessor for Realtime_V1_Item, &protocol conformance descriptor for Realtime_V1_Item);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B98618(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB762DE0, type metadata accessor for Realtime_V1_Item, &protocol conformance descriptor for Realtime_V1_Item);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B98688(uint64_t a1, uint64_t a2)
{
  sub_1B1B94F28(&qword_1EB762DE0, type metadata accessor for Realtime_V1_Item, &protocol conformance descriptor for Realtime_V1_Item);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B9872C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B1C364E0;
  v8 = v7 + v6;
  v9 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v9 = "type";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  sub_1B1C2C798();
  OUTLINED_FUNCTION_45();
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_94_1();
  v11();
  v12 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v12 = "text";
  *(v12 + 8) = 4;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_94_1();
  v11();
  v13 = (v8 + 2 * v5);
  v14 = v13 + v4[14];
  *v13 = 3;
  *v14 = "audio";
  *(v14 + 1) = 5;
  v14[16] = 2;
  OUTLINED_FUNCTION_94_1();
  v11();
  v15 = (v8 + 3 * v5);
  v16 = v15 + v4[14];
  *v15 = 4;
  *v16 = "transcript";
  *(v16 + 1) = 10;
  v16[16] = 2;
  OUTLINED_FUNCTION_94_1();
  v11();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B98974()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1B98A2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_7_18();
  if (!v6 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v4))
  {
    OUTLINED_FUNCTION_17_0();
    if (!v8 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v4))
    {
      OUTLINED_FUNCTION_17_0();
      if (!v9 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v4))
      {
        OUTLINED_FUNCTION_17_0();
        if (!v10 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v4))
        {
          a4(0);
          return OUTLINED_FUNCTION_48();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B1B98B24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_52_4(a1);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_50_4();
  v11 = v8 && v9 == v10;
  if (!v11 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v12 = v4[4] == v3[4] && v4[5] == v3[5];
  if (!v12 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v13 = v4[6] == v3[6] && v4[7] == v3[7];
  if (!v13 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  v16 = sub_1B1B94F28(v14, v15, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_42(v16) & 1;
}

uint64_t sub_1B1B98C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB763370, type metadata accessor for Realtime_V1_Content, &protocol conformance descriptor for Realtime_V1_Content);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B98D18(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB763090, type metadata accessor for Realtime_V1_Content, &protocol conformance descriptor for Realtime_V1_Content);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B98D88(uint64_t a1, uint64_t a2)
{
  sub_1B1B94F28(&qword_1EB763090, type metadata accessor for Realtime_V1_Content, &protocol conformance descriptor for Realtime_V1_Content);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B98E20()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762FA8);
  __swift_project_value_buffer(v0, qword_1EB762FA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C3A100;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "code";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "message";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "param";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "event_id";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_CommonError.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      default:
        continue;
    }
  }
}

uint64_t Realtime_V1_CommonError.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v1 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
  {
    OUTLINED_FUNCTION_17_0();
    if (!v3 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
    {
      OUTLINED_FUNCTION_17_0();
      if (!v4 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
      {
        OUTLINED_FUNCTION_17_0();
        if (!v5 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
        {
          OUTLINED_FUNCTION_17_0();
          if (!v6 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
          {
            type metadata accessor for Realtime_V1_CommonError(0);
            return OUTLINED_FUNCTION_48();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Realtime_V1_CommonError.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_52_4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_50_4();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v9 = v2[4] == v1[4] && v2[5] == v1[5];
  if (!v9 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v10 = v2[6] == v1[6] && v2[7] == v1[7];
  if (!v10 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v11 = v2[8] == v1[8] && v2[9] == v1[9];
  if (!v11 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Realtime_V1_CommonError(0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  v14 = sub_1B1B94F28(v12, v13, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_42(v14) & 1;
}

uint64_t sub_1B1B993F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB763368, type metadata accessor for Realtime_V1_CommonError, &protocol conformance descriptor for Realtime_V1_CommonError);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B99474(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB763210, type metadata accessor for Realtime_V1_CommonError, &protocol conformance descriptor for Realtime_V1_CommonError);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B994E4(uint64_t a1, uint64_t a2)
{
  sub_1B1B94F28(&qword_1EB763210, type metadata accessor for Realtime_V1_CommonError, &protocol conformance descriptor for Realtime_V1_CommonError);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B9957C()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762FC0);
  __swift_project_value_buffer(v0, qword_1EB762FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "limit";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "remaining";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "reset_after_seconds";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B99818(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1B1C2C618();
    if (v5 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B1C2C698();
        break;
      case 2:
        a4(v4 + 16, a2, a3);
        break;
      case 3:
      case 4:
        sub_1B1C2C678();
        break;
      default:
        continue;
    }
  }
}

uint64_t Realtime_V1_RateLimit.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v2 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
  {
    if (!v1[4] || (OUTLINED_FUNCTION_20_11(), result = sub_1B1C2C748(), !v0))
    {
      if (!v1[5] || (OUTLINED_FUNCTION_20_11(), result = sub_1B1C2C748(), !v0))
      {
        if (!v1[6] || (OUTLINED_FUNCTION_20_11(), result = sub_1B1C2C748(), !v0))
        {
          type metadata accessor for Realtime_V1_RateLimit(0);
          return OUTLINED_FUNCTION_48();
        }
      }
    }
  }

  return result;
}

uint64_t static Realtime_V1_RateLimit.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_52_4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B1C2D7A8() & 1) == 0 || v2[4] != v1[4] || v2[5] != v1[5] || v2[6] != v1[6])
  {
    return 0;
  }

  type metadata accessor for Realtime_V1_RateLimit(0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  v8 = sub_1B1B94F28(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_42(v8) & 1;
}

uint64_t sub_1B1B99AA0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B1C2D888();
  a1(0);
  v6 = OUTLINED_FUNCTION_33();
  sub_1B1B94F28(v6, v7, a4);
  sub_1B1C2CAE8();
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B99B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB763360, type metadata accessor for Realtime_V1_RateLimit, &protocol conformance descriptor for Realtime_V1_RateLimit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B99C00(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB763228, type metadata accessor for Realtime_V1_RateLimit, &protocol conformance descriptor for Realtime_V1_RateLimit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B99C70(uint64_t a1, uint64_t a2)
{
  sub_1B1B94F28(&qword_1EB763228, type metadata accessor for Realtime_V1_RateLimit, &protocol conformance descriptor for Realtime_V1_RateLimit);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B99CF0(uint64_t a1, uint64_t a2)
{
  v47 = type metadata accessor for Realtime_V1_Property(0);
  v4 = MEMORY[0x1EEE9AC00](v47);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v43 - v8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7633D0, &qword_1B1C3D048);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v49 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v49 + 16))
  {
    return 0;
  }

  v44 = a1;
  v45 = &v43 - v14;
  v48 = v15;
  v16 = 0;
  v17 = *(a1 + 64);
  v43 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  while (v20)
  {
    v50 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_13:
    v26 = (*(v44 + 48) + 16 * v22);
    v28 = *v26;
    v27 = v26[1];
    sub_1B1B8F828();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7633D8, &unk_1B1C3D050);
    v30 = v48;
    *v48 = v28;
    v30[1] = v27;
    v23 = v30;
    sub_1B1B8F650();
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v29);

LABEL_14:
    v31 = v23;
    v32 = v45;
    sub_1B1B9C134(v31, v45);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7633D8, &unk_1B1C3D050);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v33);
    v35 = EnumTagSinglePayload == 1;
    if (EnumTagSinglePayload == 1)
    {
      return v35;
    }

    v36 = v6;
    sub_1B1B8F650();
    sub_1B1A8EB10();
    v38 = v37;

    if ((v38 & 1) == 0)
    {
      goto LABEL_31;
    }

    v6 = v36;
    sub_1B1B8F828();
    v39 = *v36 == *v9 && *(v36 + 1) == v9[1];
    if (!v39 && (sub_1B1C2D7A8() & 1) == 0 || (*(v36 + 2) == v9[2] ? (v40 = *(v36 + 3) == v9[3]) : (v40 = 0), !v40 && (sub_1B1C2D7A8() & 1) == 0))
    {
      sub_1B1B8F87C();
LABEL_31:
      sub_1B1B8F87C();
      return 0;
    }

    sub_1B1C2C5C8();
    sub_1B1B94F28(&qword_1EB762AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v41 = sub_1B1C2CB18();
    sub_1B1B8F87C();
    result = sub_1B1B8F87C();
    v20 = v50;
    if ((v41 & 1) == 0)
    {
      return v35;
    }
  }

  v23 = v48;
  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7633D8, &unk_1B1C3D050);
      __swift_storeEnumTagSinglePayload(v23, 1, 1, v42);
      v50 = 0;
      goto LABEL_14;
    }

    v25 = *(v43 + 8 * v24);
    ++v16;
    if (v25)
    {
      v50 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) | (v24 << 6);
      v16 = v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B1B9A1F4()
{
  result = qword_1EB7630B8;
  if (!qword_1EB7630B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7630B8);
  }

  return result;
}

unint64_t sub_1B1B9A27C()
{
  result = qword_1EB7630D0;
  if (!qword_1EB7630D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7630D0);
  }

  return result;
}

unint64_t sub_1B1B9A2D8()
{
  result = qword_1EB7630D8;
  if (!qword_1EB7630D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7630D8);
  }

  return result;
}

unint64_t sub_1B1B9A360()
{
  result = qword_1EB7630F0;
  if (!qword_1EB7630F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7630F0);
  }

  return result;
}

unint64_t sub_1B1B9A3BC()
{
  result = qword_1EB7630F8;
  if (!qword_1EB7630F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7630F8);
  }

  return result;
}

uint64_t sub_1B1B9A440(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1B1B9A498()
{
  result = qword_1EB763110;
  if (!qword_1EB763110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB763110);
  }

  return result;
}

void sub_1B1B9B504(uint64_t a1)
{
  sub_1B1B9BC6C(319, &qword_1EB763248, &type metadata for Realtime_V1_Modality);
  if (v1 <= 0x3F)
  {
    sub_1B1B9B6B0(319, &qword_1EB763250, type metadata accessor for Realtime_V1_Tool, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B1C2C5C8();
      if (v3 <= 0x3F)
      {
        sub_1B1B9B6B0(319, &qword_1EB763258, type metadata accessor for Realtime_V1_InputAudioTranscription, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B1B9B6B0(319, &qword_1EB763260, type metadata accessor for Realtime_V1_TurnDetection, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B1B9B6B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B1B9B73C(uint64_t a1)
{
  sub_1B1B9BC6C(319, &qword_1EB763248, &type metadata for Realtime_V1_Modality);
  if (v1 <= 0x3F)
  {
    sub_1B1B9B6B0(319, &qword_1EB763250, type metadata accessor for Realtime_V1_Tool, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B1C2C5C8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B1B9B890(uint64_t a1)
{
  result = sub_1B1C2C5C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B1B9B970(uint64_t a1)
{
  sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    sub_1B1B9B6B0(319, &qword_1EB7632B8, type metadata accessor for Realtime_V1_Function, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B1B9BA5C(uint64_t a1)
{
  sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    sub_1B1B9B6B0(319, &qword_1EB7632D0, type metadata accessor for Realtime_V1_Parameters, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B1B9BB48(uint64_t a1)
{
  sub_1B1B9BC04(319);
  if (v1 <= 0x3F)
  {
    sub_1B1B9BC6C(319, &qword_1EB7632F0, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1B1C2C5C8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B1B9BC04(uint64_t a1)
{
  if (!qword_1EB7632E8)
  {
    type metadata accessor for Realtime_V1_Property(255);
    v1 = sub_1B1C2CAD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB7632E8);
    }
  }
}

void sub_1B1B9BC6C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1B1C2CEF8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void __swift_store_extra_inhabitant_index_125Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_75_2();
    v2 = OUTLINED_FUNCTION_62_0(*(v0 + 24));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B1B9BD68(uint64_t a1)
{
  result = sub_1B1C2C5C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B1B9BE0C(uint64_t a1)
{
  sub_1B1B9B6B0(319, &qword_1EB763328, type metadata accessor for Realtime_V1_Content, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B1C2C5C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B1B9BF34(uint64_t a1)
{
  result = sub_1B1C2C5C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_70Tm()
{
  OUTLINED_FUNCTION_61();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  v3 = OUTLINED_FUNCTION_76(*(v0 + 32));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_71Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_75_2();
    v2 = OUTLINED_FUNCTION_62_0(*(v0 + 32));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B1B9C0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1B1C2C5C8();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1B9C134(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7633D0, &qword_1B1C3D048);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_71_2(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0xE000000000000000;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
}

uint64_t OUTLINED_FUNCTION_85_1@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_1B1B90BBC();
}

uint64_t OUTLINED_FUNCTION_104_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

unint64_t Realtime_V1_ServerEventType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x1D;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B1B9C42C@<X0>(uint64_t *a1@<X8>)
{
  result = Realtime_V1_ServerEventType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B1B9C460(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99FC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Realtime_V1_ServerEvent.error.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v15);
  OUTLINED_FUNCTION_4_22();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_6:
    OUTLINED_FUNCTION_33_9();
    v8 = type metadata accessor for Realtime_V1_ClientError(0);
    OUTLINED_FUNCTION_225(v8);
    v9 = OUTLINED_FUNCTION_275();
    type metadata accessor for Realtime_V1_CommonError(v9);
    v10 = OUTLINED_FUNCTION_55_2();
    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  OUTLINED_FUNCTION_67_0();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B1B9C820();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_93_1();
  OUTLINED_FUNCTION_49();
  return sub_1B1BB85CC();
}

void Realtime_V1_ServerEvent.error.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_ClientError(v8);
  OUTLINED_FUNCTION_22_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_2_30();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_126();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_93_1();
      OUTLINED_FUNCTION_67_2();
      sub_1B1BB85CC();
      goto LABEL_7;
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_261(v15);
  v16 = OUTLINED_FUNCTION_239();
  type metadata accessor for Realtime_V1_CommonError(v16);
  v17 = OUTLINED_FUNCTION_38_9();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
LABEL_7:
  OUTLINED_FUNCTION_34_3();
}

uint64_t sub_1B1B9C820()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2(v1);
  OUTLINED_FUNCTION_45();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Realtime_V1_ServerEvent.sessionCreated.getter()
{
  OUTLINED_FUNCTION_83();
  v2 = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_23(v6, v11);
  OUTLINED_FUNCTION_4_22();
  if (v7)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_91_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  sub_1B1C2C5B8();
  v10 = *(type metadata accessor for Realtime_V1_SessionCreated(0) + 20);
  if (qword_1EB761768 != -1)
  {
    OUTLINED_FUNCTION_197(&qword_1EB761768);
  }

  *(v0 + v10) = qword_1EB763440;
}

uint64_t sub_1B1B9C98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_56_0();
  v10 = v9(0);
  OUTLINED_FUNCTION_23(v10);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_126();
  sub_1B1BB8620();
  return a7(v7);
}

void Realtime_V1_ServerEvent.sessionCreated.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_38_7();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  type metadata accessor for Realtime_V1_SessionCreated(v9);
  OUTLINED_FUNCTION_22_12();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_80(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_3(v14);
  OUTLINED_FUNCTION_2_30();
  if (v15)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_126();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_91_2();
      OUTLINED_FUNCTION_67_2();
      sub_1B1BB85CC();
      goto LABEL_10;
    }

    sub_1B1B9C820();
  }

  sub_1B1C2C5B8();
  v17 = *(v0 + 20);
  if (qword_1EB761768 != -1)
  {
    OUTLINED_FUNCTION_197(&qword_1EB761768);
  }

  *(v11 + v17) = qword_1EB763440;

LABEL_10:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.sessionUpdated.getter()
{
  OUTLINED_FUNCTION_83();
  v2 = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_23(v6, v11);
  OUTLINED_FUNCTION_4_22();
  if (v7)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  sub_1B1C2C5B8();
  v10 = *(type metadata accessor for Realtime_V1_SessionUpdated(0) + 20);
  if (qword_1EB761778 != -1)
  {
    OUTLINED_FUNCTION_196(&qword_1EB761778);
  }

  *(v0 + v10) = qword_1EB763460;
}

uint64_t sub_1B1B9CD94@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B1C2C5B8();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_33();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

void Realtime_V1_ServerEvent.sessionUpdated.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_38_7();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  type metadata accessor for Realtime_V1_SessionUpdated(v9);
  OUTLINED_FUNCTION_22_12();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_80(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_3(v14);
  OUTLINED_FUNCTION_2_30();
  if (v15)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_126();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_67_2();
      sub_1B1BB85CC();
      goto LABEL_10;
    }

    sub_1B1B9C820();
  }

  sub_1B1C2C5B8();
  v17 = *(v0 + 20);
  if (qword_1EB761778 != -1)
  {
    OUTLINED_FUNCTION_196(&qword_1EB761778);
  }

  *(v11 + v17) = qword_1EB763460;

LABEL_10:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.conversationCreated.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v15);
  OUTLINED_FUNCTION_4_22();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_89_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_33_9();
  v9 = type metadata accessor for Realtime_V1_ConversationCreated(0);
  OUTLINED_FUNCTION_225(v9);
  v10 = OUTLINED_FUNCTION_275();
  type metadata accessor for Realtime_V1_Conversation(v10);
  v11 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_1B1B9D0F0(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_41_5();
  v3(0);
  sub_1B1C2C5B8();
  v4 = OUTLINED_FUNCTION_239();
  a2(v4);
  v5 = OUTLINED_FUNCTION_38_9();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Realtime_V1_ServerEvent.conversationCreated.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_ConversationCreated(v8);
  OUTLINED_FUNCTION_22_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_2_30();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_41_5();
    OUTLINED_FUNCTION_261(v15);
    v16 = OUTLINED_FUNCTION_239();
    type metadata accessor for Realtime_V1_Conversation(v16);
    v17 = OUTLINED_FUNCTION_38_9();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_89_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.inputAudioBufferCommitted.getter()
{
  OUTLINED_FUNCTION_83();
  v2 = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_23(v6, v12);
  OUTLINED_FUNCTION_4_22();
  if (v7)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_88_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  *(v0 + 48) = 0;
  *(v0 + 56) = v10;
  v11 = type metadata accessor for Realtime_V1_InputAudioBufferCommitted(0);
  return OUTLINED_FUNCTION_231(v11);
}

uint64_t Realtime_V1_InputAudioBufferCommitted.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_20();
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  v3 = type metadata accessor for Realtime_V1_InputAudioBufferCommitted(0);
  return OUTLINED_FUNCTION_231(v3);
}

void Realtime_V1_ServerEvent.inputAudioBufferCommitted.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_InputAudioBufferCommitted(v8);
  OUTLINED_FUNCTION_22_12();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_2_30();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    *(v10 + 48) = 0;
    *(v10 + 56) = v16;
    sub_1B1C2C5B8();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.inputAudioBufferCleared.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v9);
  OUTLINED_FUNCTION_4_22();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_87_1();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_33_9();
  type metadata accessor for Realtime_V1_InputAudioBufferCleared(0);
  return sub_1B1C2C5B8();
}

uint64_t Realtime_V1_InputAudioBufferCleared.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_29_11(a1);
  *(v1 + 24) = 1;
  type metadata accessor for Realtime_V1_InputAudioBufferCleared(0);
  return sub_1B1C2C5B8();
}

void Realtime_V1_ServerEvent.inputAudioBufferCleared.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_InputAudioBufferCleared(v8);
  OUTLINED_FUNCTION_22_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_2_30();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_41_5();
    OUTLINED_FUNCTION_261(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.inputAudioBufferSpeechStarted.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v12);
  OUTLINED_FUNCTION_4_22();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_86_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_10_25();
  v10 = OUTLINED_FUNCTION_230(v9);
  v11 = type metadata accessor for Realtime_V1_InputAudioBufferSpeechStarted(v10);
  return OUTLINED_FUNCTION_231(v11);
}

void Realtime_V1_ServerEvent.inputAudioBufferSpeechStarted.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_InputAudioBufferSpeechStarted(v8);
  OUTLINED_FUNCTION_22_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_2_30();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_282(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.inputAudioBufferSpeechStopped.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v12);
  OUTLINED_FUNCTION_4_22();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_10_25();
  v10 = OUTLINED_FUNCTION_230(v9);
  v11 = type metadata accessor for Realtime_V1_InputAudioBufferSpeechStopped(v10);
  return OUTLINED_FUNCTION_231(v11);
}

uint64_t sub_1B1B9DBC8@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_29_11(a1);
  OUTLINED_FUNCTION_269();
  v2 = OUTLINED_FUNCTION_230(v1);
  v4 = v3(v2);
  return OUTLINED_FUNCTION_231(v4);
}

void Realtime_V1_ServerEvent.inputAudioBufferSpeechStopped.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_InputAudioBufferSpeechStopped(v8);
  OUTLINED_FUNCTION_22_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_2_30();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_282(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_85_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.conversationItemCreated.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v14);
  OUTLINED_FUNCTION_4_22();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_84_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v9 = type metadata accessor for Realtime_V1_ConversationItemCreated(0);
  OUTLINED_FUNCTION_112_0(v9);
  type metadata accessor for Realtime_V1_Item(0);
  v10 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t Realtime_V1_ConversationItemCreated.init()()
{
  OUTLINED_FUNCTION_11_20();
  v0 = type metadata accessor for Realtime_V1_ConversationItemCreated(0);
  OUTLINED_FUNCTION_112_0(v0);
  type metadata accessor for Realtime_V1_Item(0);
  v1 = OUTLINED_FUNCTION_55_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Realtime_V1_ServerEvent.conversationItemCreated.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_ConversationItemCreated(v8);
  OUTLINED_FUNCTION_22_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_2_30();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    sub_1B1C2C5B8();
    type metadata accessor for Realtime_V1_Item(0);
    v15 = OUTLINED_FUNCTION_38_9();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.transcriptionCompleted.getter()
{
  OUTLINED_FUNCTION_83();
  v2 = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_23(v6, v12);
  OUTLINED_FUNCTION_4_22();
  if (v7)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_83_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = v10;
  v11 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionCompleted(0);
  return OUTLINED_FUNCTION_284(v11);
}

uint64_t Realtime_V1_ConversationItemInputAudioTranscriptionCompleted.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_20();
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v2;
  v3 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionCompleted(0);
  return OUTLINED_FUNCTION_284(v3);
}

void Realtime_V1_ServerEvent.transcriptionCompleted.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionCompleted(v8);
  OUTLINED_FUNCTION_22_12();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_2_30();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = v16;
    sub_1B1C2C5B8();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.transcriptionFailed.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v15);
  OUTLINED_FUNCTION_4_22();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      OUTLINED_FUNCTION_82_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v9 = OUTLINED_FUNCTION_267();
  v10 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed(v9);
  OUTLINED_FUNCTION_231(v10);
  type metadata accessor for Realtime_V1_CommonError(0);
  v11 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void Realtime_V1_ServerEvent.transcriptionFailed.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed(v8);
  OUTLINED_FUNCTION_22_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_2_30();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_251(v15);
    type metadata accessor for Realtime_V1_CommonError(0);
    v16 = OUTLINED_FUNCTION_38_9();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 10)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.conversationItemTruncated.getter()
{
  OUTLINED_FUNCTION_83();
  v2 = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_23(v6, v11);
  OUTLINED_FUNCTION_4_22();
  if (v7)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      OUTLINED_FUNCTION_80_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  *(v0 + 48) = 0;
  v10 = type metadata accessor for Realtime_V1_ConversationItemTruncated(0);
  return OUTLINED_FUNCTION_284(v10);
}

uint64_t Realtime_V1_ConversationItemTruncated.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_20();
  *(a1 + 48) = 0;
  v2 = type metadata accessor for Realtime_V1_ConversationItemTruncated(0);
  return OUTLINED_FUNCTION_284(v2);
}

void Realtime_V1_ServerEvent.conversationItemTruncated.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_ConversationItemTruncated(v8);
  OUTLINED_FUNCTION_22_12();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_2_30();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    *(v10 + 48) = 0;
    sub_1B1C2C5B8();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.conversationItemDeleted.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v10);
  OUTLINED_FUNCTION_4_22();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 12)
    {
      OUTLINED_FUNCTION_79_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v9 = type metadata accessor for Realtime_V1_ConversationItemDeleted(0);
  return OUTLINED_FUNCTION_112_0(v9);
}

uint64_t Realtime_V1_ConversationItemDeleted.init()()
{
  OUTLINED_FUNCTION_11_20();
  v0 = type metadata accessor for Realtime_V1_ConversationItemDeleted(0);
  return OUTLINED_FUNCTION_112_0(v0);
}

void Realtime_V1_ServerEvent.conversationItemDeleted.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_ConversationItemDeleted(v8);
  OUTLINED_FUNCTION_22_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_2_30();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    sub_1B1C2C5B8();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 12)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.responseCreated.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v15);
  OUTLINED_FUNCTION_4_22();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_78_1();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_33_9();
  v9 = type metadata accessor for Realtime_V1_ResponseCreated(0);
  OUTLINED_FUNCTION_225(v9);
  v10 = OUTLINED_FUNCTION_275();
  type metadata accessor for Realtime_V1_Response(v10);
  v11 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void Realtime_V1_ServerEvent.responseCreated.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_ResponseCreated(v8);
  OUTLINED_FUNCTION_22_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_2_30();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_41_5();
    OUTLINED_FUNCTION_261(v15);
    v16 = OUTLINED_FUNCTION_239();
    type metadata accessor for Realtime_V1_Response(v16);
    v17 = OUTLINED_FUNCTION_38_9();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 13)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.responseDone.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v15);
  OUTLINED_FUNCTION_4_22();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 14)
    {
      OUTLINED_FUNCTION_77_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_33_9();
  v9 = type metadata accessor for Realtime_V1_ResponseDone(0);
  OUTLINED_FUNCTION_225(v9);
  v10 = OUTLINED_FUNCTION_275();
  type metadata accessor for Realtime_V1_Response(v10);
  v11 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void Realtime_V1_ServerEvent.responseDone.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_ResponseDone(v8);
  OUTLINED_FUNCTION_22_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_2_30();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_41_5();
    OUTLINED_FUNCTION_261(v15);
    v16 = OUTLINED_FUNCTION_239();
    type metadata accessor for Realtime_V1_Response(v16);
    v17 = OUTLINED_FUNCTION_38_9();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 14)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.responseOutputItemAdded.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v15);
  OUTLINED_FUNCTION_4_22();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 15)
    {
      OUTLINED_FUNCTION_76_3();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v9 = OUTLINED_FUNCTION_267();
  v10 = type metadata accessor for Realtime_V1_ResponseOutputItemAdded(v9);
  OUTLINED_FUNCTION_231(v10);
  type metadata accessor for Realtime_V1_Item(0);
  v11 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_1B1B9F1C8@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0xE000000000000000;
  *(a3 + 48) = 0;
  a1(0);
  sub_1B1C2C5B8();
  a2(0);
  v4 = OUTLINED_FUNCTION_38_9();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Realtime_V1_ServerEvent.responseOutputItemAdded.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_ResponseOutputItemAdded(v8);
  OUTLINED_FUNCTION_22_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_2_30();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_251(v15);
    type metadata accessor for Realtime_V1_Item(0);
    v16 = OUTLINED_FUNCTION_38_9();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 15)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.responseOutputItemDone.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v11);
  OUTLINED_FUNCTION_4_22();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 16)
    {
      OUTLINED_FUNCTION_75_3();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v9 = OUTLINED_FUNCTION_267();
  v10 = type metadata accessor for Realtime_V1_ResponseOutputItemDone(v9);
  return OUTLINED_FUNCTION_231(v10);
}

uint64_t Realtime_V1_ResponseOutputItemDone.init()()
{
  OUTLINED_FUNCTION_11_20();
  v0 = OUTLINED_FUNCTION_267();
  v1 = type metadata accessor for Realtime_V1_ResponseOutputItemDone(v0);
  return OUTLINED_FUNCTION_231(v1);
}

void Realtime_V1_ServerEvent.responseOutputItemDone.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_ResponseOutputItemDone(v8);
  OUTLINED_FUNCTION_22_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_2_30();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_251(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 16)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.responseContentPartAdded.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v16);
  OUTLINED_FUNCTION_4_22();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 17)
    {
      OUTLINED_FUNCTION_73_5();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v10 = OUTLINED_FUNCTION_164(v9);
  v11 = type metadata accessor for Realtime_V1_ResponseContentPartAdded(v10);
  OUTLINED_FUNCTION_255(v11);
  type metadata accessor for Realtime_V1_Part(0);
  v12 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void Realtime_V1_ServerEvent.responseContentPartAdded.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_ResponseContentPartAdded(v8);
  OUTLINED_FUNCTION_22_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_2_30();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_216(v15);
    type metadata accessor for Realtime_V1_Part(0);
    v16 = OUTLINED_FUNCTION_38_9();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 17)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.responseContentPartDone.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v16);
  OUTLINED_FUNCTION_4_22();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 18)
    {
      OUTLINED_FUNCTION_72_3();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v10 = OUTLINED_FUNCTION_164(v9);
  v11 = type metadata accessor for Realtime_V1_ResponseContentPartDone(v10);
  OUTLINED_FUNCTION_255(v11);
  type metadata accessor for Realtime_V1_Part(0);
  v12 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}