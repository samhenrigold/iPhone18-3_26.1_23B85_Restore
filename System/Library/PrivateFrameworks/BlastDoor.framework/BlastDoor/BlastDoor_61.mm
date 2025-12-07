id sub_21457D724(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 40))
  {

    v3 = sub_2146D98E8();

    return v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_21457D7D4(void *a1)
{
  if (*(v1 + *a1 + 40))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

id sub_21457D858(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_2146D98E8();

  return v3;
}

double sub_21457D94C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_214031CE0(*(a1 + *a3), *(a1 + *a3 + 8), *(a1 + *a3 + 16));

  return result;
}

id sub_21457D9E4(uint64_t (*a1)(void), void *a2, void (*a3)(_OWORD *, char *))
{
  v6 = v3[1];
  v16[0] = *v3;
  v16[1] = v6;
  v7 = v3[3];
  v16[2] = v3[2];
  v16[3] = v7;
  v8 = a1();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[*a2];
  v11 = v3[3];
  *(v10 + 2) = v3[2];
  *(v10 + 3) = v11;
  v12 = v3[1];
  *v10 = *v3;
  *(v10 + 1) = v12;
  a3(v16, v15);
  v14.receiver = v9;
  v14.super_class = v8;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_21457DAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), void *a4, void (*a5)(__int128 *, char *))
{
  v8 = v5[1];
  v19 = *v5;
  v20 = v8;
  v9 = v5[3];
  v21 = v5[2];
  v22 = v9;
  v10 = a3(a1, a2);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[*a4];
  v14 = v21;
  v13 = v22;
  v15 = v20;
  *v12 = v19;
  *(v12 + 1) = v15;
  *(v12 + 2) = v14;
  *(v12 + 3) = v13;
  a5(&v19, v18);
  v17.receiver = v11;
  v17.super_class = v10;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_21457DD48()
{
  v1 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage, v3, type metadata accessor for Metadata);
  v4 = type metadata accessor for _ObjCMetadataWrapper(0);
  v5 = objc_allocWithZone(v4);
  sub_213FB568C(v3, v5 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_213FB5844(v3, type metadata accessor for Metadata);
  return v6;
}

id sub_21457DF6C()
{
  v1 = type metadata accessor for TextMessage.MessageType(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v5 = type metadata accessor for TextMessage(0);
  sub_213FB568C(v4 + *(v5 + 20), v3, type metadata accessor for TextMessage.MessageType);
  v6 = type metadata accessor for _ObjCEnumTextMessageMessageTypeWrapper(0);
  v7 = objc_allocWithZone(v6);
  sub_213FB568C(v3, v7 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, type metadata accessor for TextMessage.MessageType);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_213FB5844(v3, type metadata accessor for TextMessage.MessageType);
  return v8;
}

id sub_21457E0D0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = a1 + *a3;
  v11 = a4(0);
  sub_213FB2E54(v10 + *(v11 + 24), v9, &unk_27C904F30, &unk_2146EFA20);
  v12 = sub_2146D8B88();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v9, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_2146D8B38();
    (*(v13 + 8))(v9, v12);
    v15 = v16;
  }

  return v15;
}

uint64_t sub_21457E244@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3 + *a1;
  v6 = a2(0);
  return sub_213FB2E54(v5 + *(v6 + 24), a3, &unk_27C904F30, &unk_2146EFA20);
}

id sub_21457E370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = (a3)(0, a2);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  sub_213FB568C(a1 + *a4, &v19 - v12, a5);
  v14 = &v13[*(v11 + 40)];
  v15 = *(v14 + 3);
  if (v15 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v16 = *(v14 + 2);

    sub_213FB5844(v13, a6);
    if (v15)
    {
      v17 = sub_2146D9588();
      sub_213FDC6D0(v16, v15);
    }

    else
    {
      v17 = 0;
    }

    return v17;
  }

  return result;
}

uint64_t sub_21457E500(uint64_t (*a1)(void), void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = a1(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  sub_213FB568C(v4 + *a2, &v15 - v10, a3);
  v12 = &v11[*(v9 + 40)];
  if (*(v12 + 3) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v13 = *(v12 + 2);

    sub_213FB5844(v11, a4);
    return v13;
  }

  return result;
}

uint64_t sub_21457E7FC()
{
  v1 = type metadata accessor for TextMessage(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage, v4, type metadata accessor for TextMessage);
  v5 = &v4[*(v2 + 48)];
  if (*(v5 + 3) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 2);

    sub_213FB5844(v4, type metadata accessor for TextMessage);
    return v6;
  }

  return result;
}

id sub_21457E93C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  if (*(v4 + *((a4)(0, a2) + 44) + 8))
  {

    v5 = sub_2146D9588();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_21457E9DC(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = *(v3 + *(a2(0) + 44));

  return v4;
}

uint64_t sub_21457EB10(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *((a4)(0, a2) + 48));
  if (v5[8])
  {
    return 0;
  }

  else
  {
    return *v5;
  }
}

uint64_t sub_21457EB78(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 48));
  if (v4[8])
  {
    return 0;
  }

  else
  {
    return *v4;
  }
}

uint64_t sub_21457EC90()
{
  v1 = v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v2 = (v1 + *(type metadata accessor for TextMessage(0) + 52));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_21457EDC0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *((a4)(0, a2) + 56));
  if (v5[8])
  {
    return 0;
  }

  else
  {
    return *v5;
  }
}

uint64_t sub_21457EE28(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 56));
  if (v4[8])
  {
    return 0;
  }

  else
  {
    return *v4;
  }
}

uint64_t sub_21457EF40()
{
  v1 = v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v2 = (v1 + *(type metadata accessor for TextMessage(0) + 60));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

id sub_21457F094()
{
  v1 = v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v2 = (v1 + *(type metadata accessor for TextMessage(0) + 64));
  v3 = *v2;
  v4 = v2[1];
  *(v24 + 9) = *(v2 + 73);
  v5 = *(v24 + 9);
  v6 = *(v2 + 4);
  v23 = *(v2 + 3);
  v24[0] = v6;
  v7 = *(v2 + 2);
  v21 = *(v2 + 1);
  v22 = v7;
  *(v28 + 9) = v5;
  v27 = v23;
  v28[0] = v6;
  v25 = v21;
  v26 = v7;
  if (!v4)
  {
    return 0;
  }

  v8 = type metadata accessor for _ObjCTextMessage_MessageSummaryInfoWrapper();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo];
  *v10 = v3;
  *(v10 + 1) = v4;
  v11 = v28[0];
  *(v10 + 3) = v27;
  *(v10 + 4) = v11;
  *(v10 + 73) = *(v28 + 9);
  v12 = v26;
  *(v10 + 1) = v25;
  *(v10 + 2) = v12;
  v16[0] = v3;
  v16[1] = v4;
  v19 = v23;
  v20[0] = v24[0];
  *(v20 + 9) = *(v24 + 9);
  v17 = v21;
  v18 = v22;
  sub_2143140D0(v16, v15);
  v14.receiver = v9;
  v14.super_class = v8;
  return objc_msgSendSuper2(&v14, sel_init);
}

id _ObjCTextMessage_MessageSummaryInfoWrapper.__allocating_init(textMessage_MessageSummaryInfo:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo];
  v5 = a1[3];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v5;
  *(v4 + 4) = a1[4];
  *(v4 + 73) = *(a1 + 73);
  v6 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v6;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_21457F290(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  if (*(v4 + *((a4)(0, a2) + 72) + 8))
  {

    v5 = sub_2146D9588();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_21457F330(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = *(v3 + *(a2(0) + 72));

  return v4;
}

uint64_t sub_21457F3FC()
{
  v1 = v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v2 = *(v1 + *(type metadata accessor for TextMessage(0) + 76));

  return v2;
}

id sub_21457F468(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  if (*(v4 + *((a4)(0, a2) + 80) + 8))
  {

    v5 = sub_2146D9588();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_21457F508(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = *(v3 + *(a2(0) + 80));

  return v4;
}

id sub_21457F574(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  if (*(v4 + *((a4)(0, a2) + 84) + 8))
  {

    v5 = sub_2146D9588();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_21457F614(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = *(v3 + *(a2(0) + 84));

  return v4;
}

uint64_t sub_21457F8B0()
{
  v1 = type metadata accessor for TextMessage(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage, v4, type metadata accessor for TextMessage);
  v5 = &v4[*(v2 + 100)];
  if (*(v5 + 3) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 2);

    sub_213FB5844(v4, type metadata accessor for TextMessage);
    return v6;
  }

  return result;
}

id sub_21457FAB4()
{
  v1 = v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v2 = *(type metadata accessor for TextMessage(0) + 96);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(__src, (v1 + v2), 0x109uLL);
  enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 = get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__src);
  result = 0;
  if (enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 != 1)
  {
    v5 = type metadata accessor for _ObjCNicknameInformationWrapper();
    v6 = objc_allocWithZone(v5);
    memcpy(&v6[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation], __src, 0x109uLL);
    memcpy(v9, __dst, 0x109uLL);
    sub_2142FB7A4(v9, v8);
    v7.receiver = v6;
    v7.super_class = v5;
    return objc_msgSendSuper2(&v7, sel_init);
  }

  return result;
}

id sub_21457FBA8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  if (*(v4 + *((a4)(0, a2) + 100) + 8))
  {

    v5 = sub_2146D9588();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_21457FC48(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = *(v3 + *(a2(0) + 100));

  return v4;
}

uint64_t sub_21457FECC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *((a4)(0, a2) + 116));
  if (v5[8])
  {
    return 0;
  }

  else
  {
    return *v5;
  }
}

uint64_t sub_21457FF34(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 116));
  if (v4[8])
  {
    return 0;
  }

  else
  {
    return *v4;
  }
}

uint64_t sub_21457FFB0()
{
  v1 = type metadata accessor for TextMessage(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage, v4, type metadata accessor for TextMessage);
  v5 = v4[*(v2 + 128)];
  sub_213FB5844(v4, type metadata accessor for TextMessage);
  return qword_214760600[v5];
}

uint64_t sub_2145801D8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v4 = type metadata accessor for TextMessage(0);
  return sub_213FB2E54(v3 + *(v4 + 124), a1, &qword_27C913090, &unk_2146E9DB0);
}

double sub_2145802A4()
{
  type metadata accessor for TextMessage(0);

  return result;
}

uint64_t sub_214580464()
{
  v1 = v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v2 = *(v1 + *(type metadata accessor for TextMessage(0) + 136));

  return v2;
}

id TextMessage.bridgedToObjectiveC.getter()
{
  v1 = type metadata accessor for TextMessage(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v3, type metadata accessor for TextMessage);
  v4 = type metadata accessor for _ObjCTextMessageWrapper(0);
  v5 = objc_allocWithZone(v4);
  sub_213FB568C(v3, v5 + OBJC_IVAR___BlastDoorTextMessage_textMessage, type metadata accessor for TextMessage);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_213FB5844(v3, type metadata accessor for TextMessage);
  return v6;
}

uint64_t sub_2145806D0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand), 0x131uLL);
  memcpy(a1, (v1 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand), 0x131uLL);
  return sub_21430890C(__dst, &v4);
}

id sub_214580870()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand), 0x131uLL);
  v1 = type metadata accessor for _ObjCEnumTranscriptBackgroundCommandTypeWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType], __dst, 0x122uLL);
  sub_21430890C(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_214580960()
{
  if (*(v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand + 304))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand + 296);
  }
}

id sub_214580A40()
{
  memcpy(__dst, v0, 0x131uLL);
  v1 = type metadata accessor for _ObjCTranscriptBackgroundCommandWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand], v0, 0x131uLL);
  sub_21430890C(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_214580AC4()
{
  memcpy(__dst, v0, 0x131uLL);
  v1 = type metadata accessor for _ObjCTranscriptBackgroundCommandWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand], __dst, 0x131uLL);
  sub_21430890C(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_214580B54(const void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  memcpy(&v5[*a2], a1, 0x122uLL);
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_214580BDC@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo), 0x122uLL);
  memcpy(a1, (v1 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo), 0x122uLL);
  return sub_2143087B4(__dst, &v4);
}

id sub_214580D08(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 32);
  if (v4)
  {
    if (v4 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v6 = *(v3 + 24);

    v7 = sub_2146D9588();
    sub_213FDC6D0(v6, v4);
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_214580DD8(void *a1)
{
  v2 = v1 + *a1;
  if (*(v2 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 24);

    return v3;
  }

  return result;
}

id sub_214580E6C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 72);
  if (v4)
  {
    if (v4 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v6 = *(v3 + 64);

    v7 = sub_2146D9588();
    sub_213FDC6D0(v6, v4);
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_214580F3C(void *a1)
{
  v2 = v1 + *a1;
  if (*(v2 + 72) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 64);

    return v3;
  }

  return result;
}

id sub_214580FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 112);
  if (v4)
  {
    if (v4 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v6 = *(v3 + 104);

    v7 = sub_2146D9588();
    sub_213FDC6D0(v6, v4);
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_2145810A0(void *a1)
{
  v2 = v1 + *a1;
  if (*(v2 + 112) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 104);

    return v3;
  }

  return result;
}

id sub_214581134(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 152);
  if (v4)
  {
    if (v4 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v6 = *(v3 + 144);

    v7 = sub_2146D9588();
    sub_213FDC6D0(v6, v4);
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_214581204(void *a1)
{
  v2 = v1 + *a1;
  if (*(v2 + 152) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 144);

    return v3;
  }

  return result;
}

uint64_t sub_214581354()
{
  if (*(v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 192) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 184);

    return v1;
  }

  return result;
}

uint64_t sub_214581450()
{
  if ((*(v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 233) & 1) == 0)
  {
    return (*(v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 232) & 1) == 0;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21458153C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo;
  if (*(v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 233))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 232);
    v3 = *(v1 + 224);
    if (v2)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t sub_214581610()
{
  if (*(v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 248))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 240);
  }
}

uint64_t sub_2145816F8()
{
  if (*(v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 280) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 272);

    return v1;
  }

  return result;
}

id sub_21458186C()
{
  memcpy(__dst, v0, 0x122uLL);
  updated = type metadata accessor for _ObjCBackgroundUpdateInfoWrapper();
  v2 = objc_allocWithZone(updated);
  memcpy(&v2[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo], v0, 0x122uLL);
  sub_2143087B4(__dst, v5);
  v4.receiver = v2;
  v4.super_class = updated;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2145818F0()
{
  memcpy(__dst, v0, 0x122uLL);
  updated = type metadata accessor for _ObjCBackgroundUpdateInfoWrapper();
  v2 = objc_allocWithZone(updated);
  memcpy(&v2[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo], __dst, 0x122uLL);
  sub_2143087B4(__dst, v5);
  v4.receiver = v2;
  v4.super_class = updated;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_214581980(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *(a1 + 32);
  v7 = &v5[*a2];
  v8 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v8;
  v7[32] = v6;
  v10.receiver = v5;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_214581A08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo;
  v4 = *(v1 + OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo);
  v3 = *(v1 + OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo + 8);
  v5 = *(v1 + OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo + 16);
  v6 = *(v1 + OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo + 24);
  LOBYTE(v2) = *(v2 + 32);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v2;

  return sub_213FDC9D0(v5, v6);
}

id sub_214581B00(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 24);
  if (v4)
  {
    if (v4 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v6 = *(v3 + 16);

    v7 = sub_2146D9588();
    sub_213FDC6D0(v6, v4);
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_214581BD0(void *a1)
{
  v2 = v1 + *a1;
  if (*(v2 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 16);

    return v3;
  }

  return result;
}

id sub_214581D1C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = type metadata accessor for _ObjCBackgroundRequestInfoWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo];
  *v8 = v2;
  *(v8 + 1) = v1;
  *(v8 + 2) = v3;
  *(v8 + 3) = v4;
  v8[32] = v5;

  sub_213FDC9D0(v3, v4);
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214581DB4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = type metadata accessor for _ObjCBackgroundRequestInfoWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo];
  *v8 = v2;
  *(v8 + 1) = v1;
  *(v8 + 2) = v3;
  *(v8 + 3) = v4;
  v8[32] = v5;

  sub_213FDC9D0(v3, v4);
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214581E58(const void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  memcpy(&v5[*a2], a1, 0x131uLL);
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_214581EE0(void *__src, void *a2, uint64_t (*a3)(void *))
{
  v5 = memcpy(&v3[*a2], __src, 0x131uLL);
  v7.receiver = v3;
  v7.super_class = a3(v5);
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_214581F3C@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR___BlastDoorTranscriptBackgroundStandaloneCommand_transcriptBackgroundStandaloneCommand), 0x131uLL);
  memcpy(a1, (v1 + OBJC_IVAR___BlastDoorTranscriptBackgroundStandaloneCommand_transcriptBackgroundStandaloneCommand), 0x131uLL);
  return sub_21459337C(__dst, &v4);
}

id sub_2145820DC()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundStandaloneCommand_transcriptBackgroundStandaloneCommand), 0x131uLL);
  v1 = type metadata accessor for _ObjCTranscriptBackgroundCommandWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand], __dst, 0x131uLL);
  sub_21459337C(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_214582228()
{
  memcpy(__dst, v0, 0x131uLL);
  v1 = type metadata accessor for _ObjCTranscriptBackgroundStandaloneCommandWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorTranscriptBackgroundStandaloneCommand_transcriptBackgroundStandaloneCommand], v0, 0x131uLL);
  sub_21459337C(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2145822AC()
{
  memcpy(__dst, v0, 0x131uLL);
  v1 = type metadata accessor for _ObjCTranscriptBackgroundStandaloneCommandWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorTranscriptBackgroundStandaloneCommand_transcriptBackgroundStandaloneCommand], __dst, 0x131uLL);
  sub_21459337C(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_214582330(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart];
  v5 = *(a1 + 112);
  *(v4 + 6) = *(a1 + 96);
  *(v4 + 7) = v5;
  *(v4 + 16) = *(a1 + 128);
  v6 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v6;
  v7 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v7;
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v8;
  v10.receiver = v3;
  v10.super_class = v1;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_2145823A8(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart];
  v3 = *(a1 + 112);
  *(v2 + 6) = *(a1 + 96);
  *(v2 + 7) = v3;
  *(v2 + 16) = *(a1 + 128);
  v4 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v4;
  v5 = *(a1 + 80);
  *(v2 + 4) = *(a1 + 64);
  *(v2 + 5) = v5;
  v6 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v6;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for _ObjCTranslatedMessagePartWrapper();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_214582410@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart;
  v3 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 80);
  v4 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 112);
  v21 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 96);
  v22 = v4;
  v5 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 16);
  v6 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 48);
  v17 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 32);
  v7 = v17;
  v18 = v6;
  v8 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 48);
  v9 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 80);
  v19 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 64);
  v10 = v19;
  v20 = v9;
  v11 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 16);
  v16[0] = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart);
  v12 = v16[0];
  v16[1] = v11;
  v13 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 112);
  *(a1 + 96) = v21;
  *(a1 + 112) = v13;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v2 + 128);
  *(a1 + 128) = *(v2 + 128);
  *a1 = v12;
  *(a1 + 16) = v5;
  return sub_214308AB8(v16, v15);
}

uint64_t sub_2145825E8()
{
  if ((*(v0 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 25) & 1) == 0)
  {
    return (*(v0 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 24) & 1) == 0;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145826D4()
{
  v1 = v0 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart;
  if (*(v0 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 16);
    if (v2)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

id sub_21458275C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 56);
  if (v4)
  {
    if (v4 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v6 = *(v3 + 48);

    v7 = sub_2146D9588();
    sub_213FDC6D0(v6, v4);
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_21458282C(void *a1)
{
  v2 = v1 + *a1;
  if (*(v2 + 56) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 48);

    return v3;
  }

  return result;
}

uint64_t sub_21458297C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 96) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 88);

    return v1;
  }

  return result;
}

id sub_214582A78()
{
  if (*(v0 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 112))
  {
    return sub_214664BB8();
  }

  else
  {
    return 0;
  }
}

id sub_214582B9C()
{
  v1 = *(v0 + 112);
  v15[6] = *(v0 + 96);
  v15[7] = v1;
  v16 = *(v0 + 128);
  v2 = *(v0 + 48);
  v15[2] = *(v0 + 32);
  v15[3] = v2;
  v3 = *(v0 + 80);
  v15[4] = *(v0 + 64);
  v15[5] = v3;
  v4 = *(v0 + 16);
  v15[0] = *v0;
  v15[1] = v4;
  v5 = type metadata accessor for _ObjCTranslatedMessagePartWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart];
  v8 = *(v0 + 112);
  *(v7 + 6) = *(v0 + 96);
  *(v7 + 7) = v8;
  *(v7 + 16) = *(v0 + 128);
  v9 = *(v0 + 48);
  *(v7 + 2) = *(v0 + 32);
  *(v7 + 3) = v9;
  v10 = *(v0 + 80);
  *(v7 + 4) = *(v0 + 64);
  *(v7 + 5) = v10;
  v11 = *(v0 + 16);
  *v7 = *v0;
  *(v7 + 1) = v11;
  sub_214308AB8(v15, v14);
  v13.receiver = v6;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_214582C58()
{
  v1 = v0[7];
  v23 = v0[6];
  v24 = v1;
  v25 = *(v0 + 16);
  v2 = v0[3];
  v19 = v0[2];
  v20 = v2;
  v3 = v0[5];
  v21 = v0[4];
  v22 = v3;
  v4 = v0[1];
  v17 = *v0;
  v18 = v4;
  v5 = type metadata accessor for _ObjCTranslatedMessagePartWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart];
  *v7 = v17;
  v8 = v21;
  v10 = v18;
  v9 = v19;
  *(v7 + 3) = v20;
  *(v7 + 4) = v8;
  *(v7 + 1) = v10;
  *(v7 + 2) = v9;
  v12 = v23;
  v11 = v24;
  v13 = v22;
  *(v7 + 16) = v25;
  *(v7 + 6) = v12;
  *(v7 + 7) = v11;
  *(v7 + 5) = v13;
  sub_214308AB8(&v17, v16);
  v15.receiver = v6;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

__n128 sub_214582D48@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR___BlastDoorUnitPoint_unitPoint);
  *a1 = result;
  return result;
}

id sub_214582E70(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = &v3[OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage];
  *v6 = *a1;
  *(v6 + 2) = v4;
  v6[24] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_214582ED8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = &v1[OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage];
  *v4 = *a1;
  *(v4 + 2) = v2;
  v4[24] = v3;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _ObjCUnsupportedMessageWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_214582F30@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage + 8);
  v3 = *(v1 + OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage + 16);
  v4 = *(v1 + OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage + 24);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

id sub_214583020(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 16))
  {

    v3 = sub_2146D98E8();

    return v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2145830D0(void *a1)
{
  if (*(v1 + *a1 + 16))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

id sub_214583204()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = type metadata accessor for _ObjCUnsupportedMessageWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage];
  *v7 = v2;
  *(v7 + 1) = v1;
  *(v7 + 2) = v3;
  v7[24] = v4;
  v9.receiver = v6;
  v9.super_class = v5;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214583290()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = type metadata accessor for _ObjCUnsupportedMessageWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage];
  *v7 = v2;
  *(v7 + 1) = v1;
  *(v7 + 2) = v3;
  v7[24] = v4;
  v9.receiver = v6;
  v9.super_class = v5;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_21458331C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_2140A4F3C(a1, v3 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2140A4F74(a1);
  return v4;
}

id sub_214583390(uint64_t a1)
{
  sub_2140A4F3C(a1, v1 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCVideoPreviewWrapper();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2140A4F74(a1);
  return v3;
}

id sub_2145834C0()
{
  sub_2140A4F3C(v0 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview, v22);
  result = sub_213FB2E54(v22, &v6, &qword_27C904858, &qword_214736F00);
  if (*(&v7 + 1))
  {
    sub_2140A4F74(v22);
    v23[12] = v18;
    v23[13] = v19;
    v23[14] = v20;
    v24 = v21;
    v23[8] = v14;
    v23[9] = v15;
    v23[10] = v16;
    v23[11] = v17;
    v23[4] = v10;
    v23[5] = v11;
    v23[6] = v12;
    v23[7] = v13;
    v23[0] = v6;
    v23[1] = v7;
    v23[2] = v8;
    v23[3] = v9;
    sub_21407CF14(v23, v22);
    v2 = type metadata accessor for _ObjCImageWrapper();
    v3 = objc_allocWithZone(v2);
    sub_21407CF14(v22, v3 + OBJC_IVAR___BlastDoorImage_image);
    v5.receiver = v3;
    v5.super_class = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    sub_21406D2CC(v22);
    sub_21406D2CC(v23);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_214583738()
{
  v2 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 472);
  v1 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 480);
  v4 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 488);
  v3 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 496);
  v5 = type metadata accessor for _ObjCVideoPreview_VideoFormatWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorVideoPreview_VideoFormat_videoPreview_VideoFormat];
  *v7 = v2;
  *(v7 + 1) = v1;
  *(v7 + 2) = v4;
  *(v7 + 3) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214583878()
{
  v2 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 504);
  v1 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 512);
  v3 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 520);
  v4 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 528);
  v5 = type metadata accessor for _ObjCVideoPreview_AudioFormatWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorVideoPreview_AudioFormat_videoPreview_AudioFormat];
  *v7 = v2;
  *(v7 + 1) = v1;
  *(v7 + 2) = v3;
  *(v7 + 3) = v4;
  v9.receiver = v6;
  v9.super_class = v5;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214583918(_OWORD *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[*a2];
  v7 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v7;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

id VideoPreview.bridgedToObjectiveC.getter()
{
  sub_2140A4F3C(v0, v6);
  v1 = type metadata accessor for _ObjCVideoPreviewWrapper();
  v2 = objc_allocWithZone(v1);
  sub_2140A4F3C(v6, v2 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2140A4F74(v6);
  return v3;
}

id sub_214583AA8()
{
  sub_2140A4F3C(v0, v6);
  v1 = type metadata accessor for _ObjCVideoPreviewWrapper();
  v2 = objc_allocWithZone(v1);
  sub_2140A4F3C(v6, v2 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2140A4F74(v6);
  return v3;
}

id sub_214583B5C(uint64_t a1, void *a2, void (*a3)(uint64_t, char *), void (*a4)(uint64_t))
{
  v9 = objc_allocWithZone(v4);
  a3(a1, &v9[*a2]);
  v12.receiver = v9;
  v12.super_class = v4;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  a4(a1);
  return v10;
}

void *sub_214583CE4(void *a1, void (*a2)(uint64_t, _BYTE *), void (*a3)(_BYTE *))
{
  a2(v3 + *a1, v26);
  result = sub_213FB2E54(v26, &v10, &qword_27C904858, &qword_214736F00);
  if (*(&v11 + 1))
  {
    a3(v26);
    v27[12] = v22;
    v27[13] = v23;
    v27[14] = v24;
    v28 = v25;
    v27[8] = v18;
    v27[9] = v19;
    v27[10] = v20;
    v27[11] = v21;
    v27[4] = v14;
    v27[5] = v15;
    v27[6] = v16;
    v27[7] = v17;
    v27[0] = v10;
    v27[1] = v11;
    v27[2] = v12;
    v27[3] = v13;
    sub_21407CF14(v27, v26);
    v6 = type metadata accessor for _ObjCImageWrapper();
    v7 = objc_allocWithZone(v6);
    sub_21407CF14(v26, v7 + OBJC_IVAR___BlastDoorImage_image);
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    sub_21406D2CC(v26);
    sub_21406D2CC(v27);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_214583F20(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = &v3[OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview];
  *v9 = *a1;
  v9[8] = v4;
  v9[9] = v5;
  *(v9 + 2) = v6;
  *(v9 + 3) = v7;
  v9[32] = v8;
  v11.receiver = v3;
  v11.super_class = v1;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_214583F98(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = &v1[OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview];
  *v7 = *a1;
  v7[8] = v2;
  v7[9] = v3;
  *(v7 + 2) = v4;
  *(v7 + 3) = v5;
  v7[32] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for _ObjCWorkoutPreviewWrapper();
  return objc_msgSendSuper2(&v9, sel_init);
}

double sub_214584000@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 8);
  v3 = *(v1 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 9);
  v5 = *(v1 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 16);
  v4 = *(v1 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 24);
  v6 = *(v1 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 32);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6;

  return result;
}

uint64_t sub_214584138()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 9);
  if (v1 <= 4)
  {
    return v1 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_214584184()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 16);

  return v1;
}

unint64_t sub_2145841E4()
{
  result = *(v0 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 32);
  if (result > 3)
  {
    __break(1u);
  }

  return result;
}

id sub_214584290()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v5 = v0[2];
  v4 = v0[3];
  v6 = *(v0 + 32);
  v7 = type metadata accessor for _ObjCWorkoutPreviewWrapper();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview];
  *v9 = v1;
  v9[8] = v2;
  v9[9] = v3;
  *(v9 + 2) = v5;
  *(v9 + 3) = v4;
  v9[32] = v6;
  v11.receiver = v8;
  v11.super_class = v7;

  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21458432C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v5 = v0[2];
  v4 = v0[3];
  v6 = *(v0 + 32);
  v7 = type metadata accessor for _ObjCWorkoutPreviewWrapper();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview];
  *v9 = v1;
  v9[8] = v2;
  v9[9] = v3;
  *(v9 + 2) = v5;
  *(v9 + 3) = v4;
  v9[32] = v6;
  v11.receiver = v8;
  v11.super_class = v7;

  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_2145844CC(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_2146D8958();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  a3();

  v10 = sub_2146D8898();
  (*(v6 + 8))(v8, v5);

  return v10;
}

uint64_t sub_214584614@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = a1(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v21 - v15;
  sub_213FB568C(v5 + *a2, &v21 - v15, a3);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(&v16[*(v17 + 28)], v13, &unk_27C9131A0, &unk_2146E9D10);
  v18 = sub_2146D8958();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_213FB2DF4(v13, &unk_27C9131A0, &unk_2146E9D10);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_213FB5844(v16, a4);
    return (*(v19 + 32))(a5, v13, v18);
  }

  return result;
}

id sub_214584840(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  (a4)(0, a2);

  v4 = sub_2146D9588();

  return v4;
}

uint64_t sub_2145848D0(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = *(v3 + *(a2(0) + 20));

  return v4;
}

id sub_21458493C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  (a4)(0, a2);

  v4 = sub_2146D9588();

  return v4;
}

uint64_t sub_2145849CC(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = *(v3 + *(a2(0) + 24));

  return v4;
}

uint64_t sub_214584AF8()
{
  v1 = v0 + OBJC_IVAR___BlastDoorFileTransferAttribute_AttachmentInfo_fileTransferAttribute_AttachmentInfo[0];
  v2 = *(v1 + *(type metadata accessor for FileTransferAttribute.AttachmentInfo(0) + 32));

  return v2;
}

id sub_214584BF8()
{
  v1 = type metadata accessor for FileTransferAttribute.AttachmentInfo(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v3, type metadata accessor for FileTransferAttribute.AttachmentInfo);
  v4 = type metadata accessor for _ObjCFileTransferAttribute_AttachmentInfoWrapper(0);
  v5 = objc_allocWithZone(v4);
  sub_213FB568C(v3, v5 + OBJC_IVAR___BlastDoorFileTransferAttribute_AttachmentInfo_fileTransferAttribute_AttachmentInfo[0], type metadata accessor for FileTransferAttribute.AttachmentInfo);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_213FB5844(v3, type metadata accessor for FileTransferAttribute.AttachmentInfo);
  return v6;
}

id sub_214584D44(_OWORD *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[*a2] = *a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_214584DC0(_OWORD *a1, void *a2, uint64_t (*a3)(void))
{
  *&v3[*a2] = *a1;
  v5.receiver = v3;
  v5.super_class = a3();
  return objc_msgSendSuper2(&v5, sel_init);
}

__n128 sub_214584E04@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR___BlastDoorFileTransferAttribute_ImageInfo_fileTransferAttribute_ImageInfo);
  *a1 = result;
  return result;
}

id sub_214584F44(uint64_t (*a1)(void), void *a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = a1();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[*a2];
  *v8 = v4;
  *(v8 + 1) = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214584FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), void *a4)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = a3(a1, a2);
  v9 = objc_allocWithZone(v8);
  v10 = &v9[*a4];
  *v10 = v6;
  *(v10 + 1) = v7;
  v12.receiver = v9;
  v12.super_class = v8;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_21458502C(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints];
  v3 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v3;
  *(v2 + 2) = a1[2];
  *(v2 + 42) = *(a1 + 42);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCAttributionInfo_PreviewGenerationConstraintsWrapper();
  return objc_msgSendSuper2(&v5, sel_init);
}

__n128 sub_214585084@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints;
  v3 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 16);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

double sub_214585188()
{
  result = *(v0 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints);
  if (*(v0 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_214585208()
{
  result = *(v0 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 16);
  if (*(v0 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 24))
  {
    return 0.0;
  }

  return result;
}

double sub_214585288()
{
  result = *(v0 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 32);
  if (*(v0 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 40))
  {
    return 0.0;
  }

  return result;
}

double sub_214585308()
{
  result = *(v0 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 48);
  if (*(v0 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 56))
  {
    return 0.0;
  }

  return result;
}

id sub_2145853CC()
{
  v1 = type metadata accessor for _ObjCAttributionInfo_PreviewGenerationConstraintsWrapper();
  v2 = objc_allocWithZone(v1);
  v3 = &v2[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints];
  v4 = v0[1];
  *v3 = *v0;
  *(v3 + 1) = v4;
  *(v3 + 2) = v0[2];
  *(v3 + 42) = *(v0 + 42);
  v6.receiver = v2;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_214585434()
{
  v1 = v0[1];
  v8 = *v0;
  v9 = v1;
  v10[0] = v0[2];
  *(v10 + 10) = *(v0 + 42);
  v2 = type metadata accessor for _ObjCAttributionInfo_PreviewGenerationConstraintsWrapper();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints];
  v5 = v9;
  *v4 = v8;
  *(v4 + 1) = v5;
  *(v4 + 2) = v10[0];
  *(v4 + 42) = *(v10 + 10);
  v7.receiver = v3;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_2145854B4(char *a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo];
  *v2 = *a1;
  *(v2 + 8) = *(a1 + 8);
  v4.receiver = v1;
  v4.super_class = type metadata accessor for _ObjCBasicTapBack_MessageSummaryInfoWrapper();
  return objc_msgSendSuper2(&v4, sel_init);
}

double sub_214585504@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo + 8);
  v2 = *(v1 + OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo + 16);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

unint64_t _ObjCEnumBasicTapBackMessageSummaryInfoAssociatedMessageMessageSummaryInfoTypeContentType.init(rawValue:)(unint64_t result)
{
  if (result > 3 || result == 2)
  {
    return 0;
  }

  return result;
}

id BasicTapBack.MessageSummaryInfo.bridgedToObjectiveC.getter()
{
  v1 = *v0;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = type metadata accessor for _ObjCBasicTapBack_MessageSummaryInfoWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo];
  *v6 = v1;
  *(v6 + 1) = v3;
  *(v6 + 2) = v2;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_214585708()
{
  v1 = *v0;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = type metadata accessor for _ObjCBasicTapBack_MessageSummaryInfoWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo];
  *v6 = v1;
  *(v6 + 1) = v3;
  *(v6 + 2) = v2;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_21458579C(_OWORD *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = &v3[*a2];
  v5 = a1[5];
  *(v4 + 4) = a1[4];
  *(v4 + 5) = v5;
  *(v4 + 6) = a1[6];
  v6 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v6;
  v7 = a1[3];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v7;
  v9.receiver = v3;
  v9.super_class = a3();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_2145857FC@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 80);
  v13 = *(v1 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 96);
  v4 = v15;
  v5 = *(v1 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 16);
  v10[0] = *(v1 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo);
  v10[1] = v5;
  v6 = *(v1 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 48);
  v11 = *(v1 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[5] = v3;
  a1[6] = v4;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  return sub_2142ECDA4(v10, &v9);
}

uint64_t sub_214585928()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo);

  return v1;
}

id sub_214585970(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_2146D9588();

  return v3;
}

uint64_t sub_2145859CC()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 16);

  return v1;
}

id sub_214585A14(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 40))
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_214585A8C(void *a1)
{
  v2 = *(v1 + *a1 + 32);

  return v2;
}

id sub_214585AD0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 56))
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_214585B48(void *a1)
{
  v2 = *(v1 + *a1 + 48);

  return v2;
}

uint64_t sub_214585BE0()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 64);

  return v1;
}

uint64_t sub_214585C7C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 80);

  return v1;
}

uint64_t sub_214585D18()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 96);

  return v1;
}

double sub_214585DD8(uint64_t a1, uint64_t a2, void *a3)
{

  return result;
}

id sub_214585E68()
{
  v1 = v0[5];
  v13[4] = v0[4];
  v13[5] = v1;
  v13[6] = v0[6];
  v2 = v0[1];
  v13[0] = *v0;
  v13[1] = v2;
  v3 = v0[3];
  v13[2] = v0[2];
  v13[3] = v3;
  v4 = type metadata accessor for _ObjCContactMessage_ContactInfoWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo];
  v7 = v0[5];
  *(v6 + 4) = v0[4];
  *(v6 + 5) = v7;
  *(v6 + 6) = v0[6];
  v8 = v0[1];
  *v6 = *v0;
  *(v6 + 1) = v8;
  v9 = v0[3];
  *(v6 + 2) = v0[2];
  *(v6 + 3) = v9;
  sub_2142ECDA4(v13, v12);
  v11.receiver = v5;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_214585F10()
{
  v1 = v0[5];
  v19 = v0[4];
  v20 = v1;
  v21 = v0[6];
  v2 = v0[1];
  v15 = *v0;
  v16 = v2;
  v3 = v0[3];
  v17 = v0[2];
  v18 = v3;
  v4 = type metadata accessor for _ObjCContactMessage_ContactInfoWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo];
  v8 = v16;
  v7 = v17;
  *v6 = v15;
  *(v6 + 1) = v8;
  *(v6 + 2) = v7;
  v9 = v21;
  v11 = v18;
  v10 = v19;
  *(v6 + 5) = v20;
  *(v6 + 6) = v9;
  *(v6 + 3) = v11;
  *(v6 + 4) = v10;
  sub_2142ECDA4(&v15, v14);
  v13.receiver = v5;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_214586134()
{
  sub_214592114(v0 + OBJC_IVAR___BlastDoorEncodedAttachments_Content_encodedAttachments_Content, __src);
  memcpy(__dst, __src, 0x1DAuLL);
  v1 = type metadata accessor for _ObjCEnumEncodedAttachmentsEncodedContentWrapper();
  v2 = objc_allocWithZone(v1);
  sub_2143229E4(__dst, v2 + OBJC_IVAR___BlastDoorEncodedAttachmentsEncodedContentWrapper_encodedAttachments_EncodedContent);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214593574(__dst);
  return v3;
}

id sub_214586200(uint64_t a1, void *a2, void (*a3)(uint64_t, char *), void (*a4)(uint64_t))
{
  v9 = objc_allocWithZone(v4);
  a3(a1, &v9[*a2]);
  v12.receiver = v9;
  v12.super_class = v4;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  a4(a1);
  return v10;
}

id sub_214586314()
{
  sub_214592114(v0, v6);
  v1 = type metadata accessor for _ObjCEncodedAttachments_ContentWrapper();
  v2 = objc_allocWithZone(v1);
  sub_214592114(v6, v2 + OBJC_IVAR___BlastDoorEncodedAttachments_Content_encodedAttachments_Content);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214592194(v6);
  return v3;
}

id sub_214586394()
{
  sub_214592114(v0, v6);
  v1 = type metadata accessor for _ObjCEncodedAttachments_ContentWrapper();
  v2 = objc_allocWithZone(v1);
  sub_214592114(v6, v2 + OBJC_IVAR___BlastDoorEncodedAttachments_Content_encodedAttachments_Content);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214592194(v6);
  return v3;
}

id sub_214586414(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_2145935C8(a1, v3 + OBJC_IVAR___BlastDoorEncodedAttachments_EncodedAstc_encodedAttachments_EncodedAstc);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_214309B44(a1);
  return v4;
}

id sub_214586488(uint64_t a1)
{
  sub_2145935C8(a1, v1 + OBJC_IVAR___BlastDoorEncodedAttachments_EncodedAstc_encodedAttachments_EncodedAstc);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCEncodedAttachments_EncodedAstcWrapper();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214309B44(a1);
  return v3;
}

id sub_2145865B8()
{
  sub_2145935C8(v0 + OBJC_IVAR___BlastDoorEncodedAttachments_EncodedAstc_encodedAttachments_EncodedAstc, v22);
  result = sub_213FB2E54(v22, &v6, &qword_27C904858, &qword_214736F00);
  if (*(&v7 + 1))
  {
    sub_214309B44(v22);
    v23[12] = v18;
    v23[13] = v19;
    v23[14] = v20;
    v24 = v21;
    v23[8] = v14;
    v23[9] = v15;
    v23[10] = v16;
    v23[11] = v17;
    v23[4] = v10;
    v23[5] = v11;
    v23[6] = v12;
    v23[7] = v13;
    v23[0] = v6;
    v23[1] = v7;
    v23[2] = v8;
    v23[3] = v9;
    sub_21407CF14(v23, v22);
    v2 = type metadata accessor for _ObjCImageWrapper();
    v3 = objc_allocWithZone(v2);
    sub_21407CF14(v22, v3 + OBJC_IVAR___BlastDoorImage_image);
    v5.receiver = v3;
    v5.super_class = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    sub_21406D2CC(v22);
    sub_21406D2CC(v23);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2145867B4()
{
  sub_2145935C8(v0 + OBJC_IVAR___BlastDoorEncodedAttachments_EncodedAstc_encodedAttachments_EncodedAstc, v3);
  if (v5)
  {
    v1 = v4;

    sub_214309B44(v3);
    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

id sub_2145868DC()
{
  sub_2145935C8(v0, v6);
  v1 = type metadata accessor for _ObjCEncodedAttachments_EncodedAstcWrapper();
  v2 = objc_allocWithZone(v1);
  sub_2145935C8(v6, v2 + OBJC_IVAR___BlastDoorEncodedAttachments_EncodedAstc_encodedAttachments_EncodedAstc);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214309B44(v6);
  return v3;
}

id sub_21458695C()
{
  sub_2145935C8(v0, v6);
  v1 = type metadata accessor for _ObjCEncodedAttachments_EncodedAstcWrapper();
  v2 = objc_allocWithZone(v1);
  sub_2145935C8(v6, v2 + OBJC_IVAR___BlastDoorEncodedAttachments_EncodedAstc_encodedAttachments_EncodedAstc);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214309B44(v6);
  return v3;
}

id sub_214586A08(_OWORD *a1, void *a2, uint64_t (*a3)(void))
{
  *&v3[*a2] = *a1;
  v5.receiver = v3;
  v5.super_class = a3();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_214586A4C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorEncodedAttachments_RawData_encodedAttachments_RawData);
  v3 = *(v1 + OBJC_IVAR___BlastDoorEncodedAttachments_RawData_encodedAttachments_RawData + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_21402D9F8(v2, v3);
}

uint64_t sub_214586B48()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorEncodedAttachments_RawData_encodedAttachments_RawData);
  sub_21402D9F8(v1, *(v0 + OBJC_IVAR___BlastDoorEncodedAttachments_RawData_encodedAttachments_RawData + 8));
  return v1;
}

id sub_214586C48(uint64_t (*a1)(void), void *a2, void (*a3)(uint64_t, uint64_t))
{
  v7 = *v3;
  v6 = v3[1];
  v8 = a1();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[*a2];
  *v10 = v7;
  v10[1] = v6;
  a3(v7, v6);
  v12.receiver = v9;
  v12.super_class = v8;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_214586D00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = *v5;
  v8 = v5[1];
  v10 = a3(a1, a2);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[*a4];
  *v12 = v9;
  v12[1] = v8;
  a5(v9, v8);
  v14.receiver = v11;
  v14.super_class = v10;
  return objc_msgSendSuper2(&v14, sel_init);
}

__n128 sub_214586DA4@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorMediaMetadata_LargeImageContextualInfo_mediaMetadata_LargeImageContextualInfo + 16);
  result = *(v1 + OBJC_IVAR___BlastDoorMediaMetadata_LargeImageContextualInfo_mediaMetadata_LargeImageContextualInfo);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

id sub_214586F44(uint64_t (*a1)(void), void *a2)
{
  v9 = *v2;
  v4 = *(v2 + 2);
  v5 = a1();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[*a2];
  *v7 = v9;
  *(v7 + 2) = v4;
  v10.receiver = v6;
  v10.super_class = v5;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214586FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), void *a4)
{
  v11 = *v4;
  v6 = *(v4 + 2);
  v7 = a3(a1, a2);
  v8 = objc_allocWithZone(v7);
  v9 = &v8[*a4];
  *v9 = v11;
  *(v9 + 2) = v6;
  v12.receiver = v8;
  v12.super_class = v7;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_21458704C(char *a1)
{
  v2 = a1[1];
  v3 = &v1[OBJC_IVAR___BlastDoorMetadata_StorageContext_metadata_StorageContext];
  *v3 = *a1;
  v3[1] = v2;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCMetadata_StorageContextWrapper();
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_21458709C(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorMetadata_StorageContext_metadata_StorageContext + 1);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorMetadata_StorageContext_metadata_StorageContext);
  a1[1] = v2;
}

id sub_2145871D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = type metadata accessor for _ObjCMetadata_StorageContextWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorMetadata_StorageContext_metadata_StorageContext];
  *v5 = v1;
  v5[1] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_214587238()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = type metadata accessor for _ObjCMetadata_StorageContextWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorMetadata_StorageContext_metadata_StorageContext];
  *v5 = v1;
  v5[1] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_2145874B4(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata];
  v3 = a1[7];
  *(v2 + 6) = a1[6];
  *(v2 + 7) = v3;
  *(v2 + 8) = a1[8];
  *(v2 + 137) = *(a1 + 137);
  v4 = a1[3];
  *(v2 + 2) = a1[2];
  *(v2 + 3) = v4;
  v5 = a1[5];
  *(v2 + 4) = a1[4];
  *(v2 + 5) = v5;
  v6 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v6;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for _ObjCWallpaper_WallpaperMetadataWrapper();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_214587524@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata;
  v3 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 112);
  v4 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 80);
  v21 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 96);
  v22 = v3;
  v5 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 112);
  v23[0] = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 128);
  *(v23 + 9) = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 137);
  v6 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 48);
  v8 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 16);
  v17 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 32);
  v7 = v17;
  v18 = v6;
  v9 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 48);
  v10 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 80);
  v19 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 64);
  v11 = v19;
  v20 = v10;
  v12 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 16);
  v16[0] = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata);
  v13 = v16[0];
  v16[1] = v12;
  a1[6] = v21;
  a1[7] = v5;
  a1[8] = *(v2 + 128);
  *(a1 + 137) = *(v2 + 137);
  a1[2] = v7;
  a1[3] = v9;
  a1[4] = v11;
  a1[5] = v4;
  *a1 = v13;
  a1[1] = v8;
  return sub_21430E4C0(v16, &v15);
}

uint64_t sub_2145876B0()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata);

  return v1;
}

uint64_t sub_214587754()
{
  if (*(v0 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21458782C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 72))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

id sub_214587918(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata;
  v3 = type metadata accessor for _ObjCColorWrapper();
  v7 = *(v2 + 96);
  v8 = *(v2 + 80);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorColor_color];
  *v5 = v8;
  *(v5 + 1) = v7;
  v9.receiver = v4;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

unint64_t sub_2145879D0()
{
  result = *(v0 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 113);
  if (result > 3)
  {
    __break(1u);
  }

  return result;
}

id sub_214587A9C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata;
  if (*(v2 + 152))
  {
    return 0;
  }

  v4 = type metadata accessor for _ObjCColorWrapper();
  v7 = *(v2 + 136);
  v8 = *(v2 + 120);
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorColor_color];
  *v6 = v8;
  *(v6 + 1) = v7;
  v9.receiver = v5;
  v9.super_class = v4;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214587BF4(uint64_t a1)
{
  v2 = v1[7];
  v16[6] = v1[6];
  v16[7] = v2;
  v17[0] = v1[8];
  *(v17 + 9) = *(v1 + 137);
  v3 = v1[3];
  v16[2] = v1[2];
  v16[3] = v3;
  v4 = v1[5];
  v16[4] = v1[4];
  v16[5] = v4;
  v5 = v1[1];
  v16[0] = *v1;
  v16[1] = v5;
  v6 = type metadata accessor for _ObjCWallpaper_WallpaperMetadataWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata];
  v9 = v1[7];
  *(v8 + 6) = v1[6];
  *(v8 + 7) = v9;
  *(v8 + 8) = v1[8];
  *(v8 + 137) = *(v1 + 137);
  v10 = v1[3];
  *(v8 + 2) = v1[2];
  *(v8 + 3) = v10;
  v11 = v1[5];
  *(v8 + 4) = v1[4];
  *(v8 + 5) = v11;
  v12 = v1[1];
  *v8 = *v1;
  *(v8 + 1) = v12;
  sub_21430E4C0(v16, v15);
  v14.receiver = v7;
  v14.super_class = v6;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_214587CC0(uint64_t a1)
{
  v2 = v1[7];
  v25 = v1[6];
  v26 = v2;
  v27[0] = v1[8];
  *(v27 + 9) = *(v1 + 137);
  v3 = v1[3];
  v21 = v1[2];
  v22 = v3;
  v4 = v1[5];
  v23 = v1[4];
  v24 = v4;
  v5 = v1[1];
  v19 = *v1;
  v20 = v5;
  v6 = type metadata accessor for _ObjCWallpaper_WallpaperMetadataWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata];
  v9 = v20;
  *v8 = v19;
  *(v8 + 1) = v9;
  v10 = v24;
  v12 = v21;
  v11 = v22;
  *(v8 + 4) = v23;
  *(v8 + 5) = v10;
  *(v8 + 2) = v12;
  *(v8 + 3) = v11;
  v14 = v26;
  v13 = v27[0];
  v15 = v25;
  *(v8 + 137) = *(v27 + 9);
  *(v8 + 7) = v14;
  *(v8 + 8) = v13;
  *(v8 + 6) = v15;
  sub_21430E4C0(&v19, v18);
  v17.receiver = v7;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_214587D8C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 48);
  v4 = &v1[OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText];
  *v4 = *a1;
  *(v4 + 1) = v2;
  v5 = *(a1 + 32);
  *(v4 + 1) = *(a1 + 16);
  *(v4 + 2) = v5;
  v4[48] = v3;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for _ObjCOrderPreview_OrderTextWrapper();
  return objc_msgSendSuper2(&v7, sel_init);
}

double sub_214587DE4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText;
  v3 = *(v1 + OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText + 8);
  v4 = *(v1 + OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText + 48);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText);
  *(a1 + 8) = v3;
  v5 = *(v2 + 32);
  *(a1 + 16) = *(v2 + 16);
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;

  return result;
}

uint64_t sub_214587EA0()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText);

  return v1;
}

id sub_214587F68(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText;
  if (*(v2 + 48))
  {
    return 0;
  }

  v4 = type metadata accessor for _ObjCColorWrapper();
  v7 = *(v2 + 32);
  v8 = *(v2 + 16);
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorColor_color];
  *v6 = v8;
  *(v6 + 1) = v7;
  v9.receiver = v5;
  v9.super_class = v4;
  return objc_msgSendSuper2(&v9, sel_init);
}

id OrderPreview.OrderText.bridgedToObjectiveC.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 48);
  v4 = type metadata accessor for _ObjCOrderPreview_OrderTextWrapper();
  v8 = *(v0 + 2);
  v9 = *(v0 + 1);
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText];
  *v6 = v2;
  *(v6 + 1) = v1;
  *(v6 + 1) = v9;
  *(v6 + 2) = v8;
  v6[48] = v3;
  v10.receiver = v5;
  v10.super_class = v4;

  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_2145880FC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 48);
  v4 = type metadata accessor for _ObjCOrderPreview_OrderTextWrapper();
  v8 = *(v0 + 2);
  v9 = *(v0 + 1);
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText];
  *v6 = v2;
  *(v6 + 1) = v1;
  *(v6 + 1) = v9;
  *(v6 + 2) = v8;
  v6[48] = v3;
  v10.receiver = v5;
  v10.super_class = v4;

  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214588188(uint64_t a1)
{
  sub_214391180(a1, v1 + OBJC_IVAR___BlastDoorOrderPreview_OrderImage_orderPreview_OrderImage);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCOrderPreview_OrderImageWrapper();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2143911B8(a1);
  return v3;
}

id sub_2145882B8()
{
  sub_214391180(v0 + OBJC_IVAR___BlastDoorOrderPreview_OrderImage_orderPreview_OrderImage, v22);
  result = sub_213FB2E54(v22, &v6, &qword_27C904858, &qword_214736F00);
  if (*(&v7 + 1))
  {
    sub_2143911B8(v22);
    v23[12] = v18;
    v23[13] = v19;
    v23[14] = v20;
    v24 = v21;
    v23[8] = v14;
    v23[9] = v15;
    v23[10] = v16;
    v23[11] = v17;
    v23[4] = v10;
    v23[5] = v11;
    v23[6] = v12;
    v23[7] = v13;
    v23[0] = v6;
    v23[1] = v7;
    v23[2] = v8;
    v23[3] = v9;
    sub_21407CF14(v23, v22);
    v2 = type metadata accessor for _ObjCImageWrapper();
    v3 = objc_allocWithZone(v2);
    sub_21407CF14(v22, v3 + OBJC_IVAR___BlastDoorImage_image);
    v5.receiver = v3;
    v5.super_class = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    sub_21406D2CC(v22);
    sub_21406D2CC(v23);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214588418(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return v1 | ((a1 > 1u) << 8);
}

id OrderPreview.OrderImage.bridgedToObjectiveC.getter()
{
  sub_214391180(v0, v6);
  v1 = type metadata accessor for _ObjCOrderPreview_OrderImageWrapper();
  v2 = objc_allocWithZone(v1);
  sub_214391180(v6, v2 + OBJC_IVAR___BlastDoorOrderPreview_OrderImage_orderPreview_OrderImage);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2143911B8(v6);
  return v3;
}

id sub_214588544()
{
  sub_214391180(v0, v6);
  v1 = type metadata accessor for _ObjCOrderPreview_OrderImageWrapper();
  v2 = objc_allocWithZone(v1);
  sub_214391180(v6, v2 + OBJC_IVAR___BlastDoorOrderPreview_OrderImage_orderPreview_OrderImage);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2143911B8(v6);
  return v3;
}

id sub_2145885C4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &v1[OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText];
  *v3 = *a1;
  *(v3 + 1) = v2;
  v4 = *(a1 + 32);
  *(v3 + 1) = *(a1 + 16);
  *(v3 + 2) = v4;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _ObjCPassPreview_PassTextWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

double sub_214588614@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText;
  v3 = *(v1 + OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText + 8);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText);
  *(a1 + 8) = v3;
  v4 = *(v2 + 32);
  *(a1 + 16) = *(v2 + 16);
  *(a1 + 32) = v4;

  return result;
}

id sub_2145886BC(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_2146D9588();

  return v3;
}

uint64_t sub_214588718()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText);

  return v1;
}

id sub_2145887D0(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText;
  v3 = type metadata accessor for _ObjCColorWrapper();
  v7 = *(v2 + 32);
  v8 = *(v2 + 16);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorColor_color];
  *v5 = v8;
  *(v5 + 1) = v7;
  v9.receiver = v4;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id PassPreview.PassText.bridgedToObjectiveC.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = type metadata accessor for _ObjCPassPreview_PassTextWrapper();
  v7 = *(v0 + 2);
  v8 = *(v0 + 1);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText];
  *v5 = v2;
  *(v5 + 1) = v1;
  *(v5 + 1) = v8;
  *(v5 + 2) = v7;
  v9.receiver = v4;
  v9.super_class = v3;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214588944()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = type metadata accessor for _ObjCPassPreview_PassTextWrapper();
  v7 = *(v0 + 2);
  v8 = *(v0 + 1);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText];
  *v5 = v2;
  *(v5 + 1) = v1;
  *(v5 + 1) = v8;
  *(v5 + 2) = v7;
  v9.receiver = v4;
  v9.super_class = v3;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214588A08(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, char *), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v9 = a3(a1, &v5[*a2]);
  v12.receiver = v5;
  v12.super_class = a4(v9);
  v10 = objc_msgSendSuper2(&v12, sel_init);
  a5(a1);
  return v10;
}

id sub_214588ABC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, _BYTE *), uint64_t a5)
{
  a4(a1 + *a3, v7);
  sub_2146D9608();
  v5 = sub_2146D9588();

  return v5;
}

uint64_t (*sub_214588C7C(uint64_t (*a1)(uint64_t, char *), uint64_t (*a2)(uint64_t), void *a3, void (*a4)(_BYTE *)))(uint64_t, char *)
{
  v9 = a1(v4, v15);
  v10 = a2(v9);
  v11 = objc_allocWithZone(v10);
  a1(v15, &v11[*a3]);
  v14.receiver = v11;
  v14.super_class = v10;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  a4(v15);
  return v12;
}

id sub_214588D68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, char *), uint64_t (*a4)(uint64_t), void *a5, void (*a6)(_BYTE *))
{
  v11 = a3(v6, v17);
  v12 = a4(v11);
  v13 = objc_allocWithZone(v12);
  a3(v17, &v13[*a5]);
  v16.receiver = v13;
  v16.super_class = v12;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  a6(v17);
  return v14;
}

id sub_214588E54(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, char *), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v9 = a3(a1, &v5[*a2]);
  v12.receiver = v5;
  v12.super_class = a4(v9);
  v10 = objc_msgSendSuper2(&v12, sel_init);
  a5(a1);
  return v10;
}

id sub_214588F9C()
{
  sub_2144966B0(v0 + OBJC_IVAR___BlastDoorPassPreview_PassBackground_passPreview_PassBackground, __src);
  memcpy(__dst, __src, sizeof(__dst));
  if (__dst[34] >> 1 != 0xFFFFFFFFLL || ((__dst[38] | __dst[36]) <= 1 ? (v1 = (__dst[44] & 0xFFFFFFFFFFFFFEFELL | __dst[40] & 0xFFFFFFFFFFFF00FELL) == 0) : (v1 = 0), v1 ? (v2 = (__dst[48] | __dst[46]) >= 2uLL) : (v2 = 1), v2))
  {
    memcpy(v10, __src, sizeof(v10));
    sub_214495CA4(v10, __src);
    v4 = type metadata accessor for _ObjCPassPreview_PassImageWrapper();
    v5 = objc_allocWithZone(v4);
    sub_214495CA4(__src, v5 + OBJC_IVAR___BlastDoorPassPreview_PassImage_passPreview_PassImage);
    v7.receiver = v5;
    v7.super_class = v4;
    v6 = objc_msgSendSuper2(&v7, sel_init);
    sub_214495C74(__src);
    sub_214495C74(v10);
    return v6;
  }

  else
  {
    sub_213FB2DF4(__dst, &qword_27C9144F0, qword_21475A4B0);
    return 0;
  }
}

id sub_21458914C(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR___BlastDoorPassPreview_PassBackground_passPreview_PassBackground + 440);
  v3 = type metadata accessor for _ObjCColorWrapper();
  v7 = v2[1];
  v8 = *v2;
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorColor_color];
  *v5 = v8;
  *(v5 + 1) = v7;
  v9.receiver = v4;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id PassPreview.PassBackground.bridgedToObjectiveC.getter()
{
  sub_2144966B0(v0, v6);
  v1 = type metadata accessor for _ObjCPassPreview_PassBackgroundWrapper();
  v2 = objc_allocWithZone(v1);
  sub_2144966B0(v6, v2 + OBJC_IVAR___BlastDoorPassPreview_PassBackground_passPreview_PassBackground);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2144966E8(v6);
  return v3;
}

id sub_2145892C4()
{
  sub_2144966B0(v0, v6);
  v1 = type metadata accessor for _ObjCPassPreview_PassBackgroundWrapper();
  v2 = objc_allocWithZone(v1);
  sub_2144966B0(v6, v2 + OBJC_IVAR___BlastDoorPassPreview_PassBackground_passPreview_PassBackground);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2144966E8(v6);
  return v3;
}

id sub_214589364(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = &v3[*a2];
  *v5 = *a1;
  *(v5 + 2) = v4;
  v7.receiver = v3;
  v7.super_class = a3();
  return objc_msgSendSuper2(&v7, sel_init);
}

double sub_2145893C0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *a1;
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);

  return result;
}

id sub_2145893F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{

  sub_2146D9608();
  v4 = sub_2146D9588();

  return v4;
}

uint64_t sub_21458947C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorSMSMessage_SMSFilteringSettings_sMSMessage_SMSFilteringSettings);

  return v1;
}

id sub_21458958C(uint64_t (*a1)(void), void *a2)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v7 = a1();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[*a2];
  *v9 = v5;
  *(v9 + 1) = v4;
  *(v9 + 2) = v6;
  v11.receiver = v8;
  v11.super_class = v7;

  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21458962C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), void *a4)
{
  v7 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v9 = a3(a1, a2);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[*a4];
  *v11 = v7;
  *(v11 + 1) = v6;
  *(v11 + 2) = v8;
  v13.receiver = v10;
  v13.super_class = v9;

  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_2145896CC(_OWORD *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = &v3[*a2];
  v5 = a1[3];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v5;
  *(v4 + 4) = a1[4];
  v6 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v6;
  v8.receiver = v3;
  v8.super_class = a3();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_214589724@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 48);
  v9 = *(v1 + OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 32);
  v10 = v2;
  v11 = *(v1 + OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 64);
  v3 = v11;
  v4 = *(v1 + OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 16);
  v8[0] = *(v1 + OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo);
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_214311D90(v8, &v7);
}

unint64_t sub_214589860(uint64_t a1, uint64_t a2)
{
  result = sub_21459366C(qword_214760648[*(v2 + OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo)]);
  if (v4)
  {
    __break(1u);
  }

  return result;
}

id sub_2145898C0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 16))
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_214589938(void *a1)
{
  v2 = *(v1 + *a1 + 8);

  return v2;
}

uint64_t sub_214589A38()
{
  if (*(v0 + OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 48) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 40);

    return v1;
  }

  return result;
}

id sub_214589AD0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 72))
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_214589B48(void *a1)
{
  v2 = *(v1 + *a1 + 64);

  return v2;
}

id sub_214589C64()
{
  v1 = v0[3];
  v11[2] = v0[2];
  v11[3] = v1;
  v11[4] = v0[4];
  v2 = v0[1];
  v11[0] = *v0;
  v11[1] = v2;
  v3 = type metadata accessor for _ObjCTapBack_MessageSummaryInfoWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo];
  v6 = v0[3];
  *(v5 + 2) = v0[2];
  *(v5 + 3) = v6;
  *(v5 + 4) = v0[4];
  v7 = v0[1];
  *v5 = *v0;
  *(v5 + 1) = v7;
  sub_214311D90(v11, v10);
  v9.receiver = v4;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214589CFC()
{
  v1 = v0[3];
  v14 = v0[2];
  v15 = v1;
  v16 = v0[4];
  v2 = v0[1];
  v12 = *v0;
  v13 = v2;
  v3 = type metadata accessor for _ObjCTapBack_MessageSummaryInfoWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo];
  *v5 = v12;
  v6 = v16;
  v8 = v13;
  v7 = v14;
  *(v5 + 3) = v15;
  *(v5 + 4) = v6;
  *(v5 + 1) = v8;
  *(v5 + 2) = v7;
  sub_214311D90(&v12, v11);
  v10.receiver = v4;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214589DD4(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, char *), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v9 = a3(a1, &v5[*a2]);
  v12.receiver = v5;
  v12.super_class = a4(v9);
  v10 = objc_msgSendSuper2(&v12, sel_init);
  a5(a1);
  return v10;
}

id sub_214589E88(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t *), uint64_t a5)
{
  a4(a1 + *a3, &v7);
  sub_2146D9608();
  v5 = sub_2146D9588();

  return v5;
}

id sub_214589F34(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, _BYTE *), void (*a5)(_BYTE *, __n128))
{
  a4(a1 + *a3, v8);
  if (v9)
  {

    (a5)(v8);
    v6 = sub_2146D9588();

    return v6;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21458A034(void *a1, void (*a2)(uint64_t, _BYTE *), void (*a3)(_BYTE *, __n128))
{
  a2(v3 + *a1, v7);
  if (v9)
  {
    v5 = v8;

    (a3)(v7);
    return v5;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void *sub_21458A158(void *a1, void (*a2)(uint64_t, _BYTE *), void (*a3)(_BYTE *))
{
  a2(v3 + *a1, v26);
  result = sub_213FB2E54(&v27, &v10, &qword_27C904858, &qword_214736F00);
  if (*(&v11 + 1))
  {
    a3(v26);
    v28[12] = v22;
    v28[13] = v23;
    v28[14] = v24;
    v29 = v25;
    v28[8] = v18;
    v28[9] = v19;
    v28[10] = v20;
    v28[11] = v21;
    v28[4] = v14;
    v28[5] = v15;
    v28[6] = v16;
    v28[7] = v17;
    v28[0] = v10;
    v28[1] = v11;
    v28[2] = v12;
    v28[3] = v13;
    sub_21407CF14(v28, v26);
    v6 = type metadata accessor for _ObjCImageWrapper();
    v7 = objc_allocWithZone(v6);
    sub_21407CF14(v26, v7 + OBJC_IVAR___BlastDoorImage_image);
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    sub_21406D2CC(v26);
    sub_21406D2CC(v28);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_21458A370(uint64_t (*a1)(uint64_t, char *), uint64_t (*a2)(uint64_t), void *a3, void (*a4)(_BYTE *)))(uint64_t, char *)
{
  v9 = a1(v4, v15);
  v10 = a2(v9);
  v11 = objc_allocWithZone(v10);
  a1(v15, &v11[*a3]);
  v14.receiver = v11;
  v14.super_class = v10;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  a4(v15);
  return v12;
}

id sub_21458A45C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, char *), uint64_t (*a4)(uint64_t), void *a5, void (*a6)(_BYTE *))
{
  v11 = a3(v6, v17);
  v12 = a4(v11);
  v13 = objc_allocWithZone(v12);
  a3(v17, &v13[*a5]);
  v16.receiver = v13;
  v16.super_class = v12;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  a6(v17);
  return v14;
}

id _ObjCTextMessage_MessageSummaryInfoWrapper.init(textMessage_MessageSummaryInfo:)(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo];
  v3 = a1[3];
  *(v2 + 2) = a1[2];
  *(v2 + 3) = v3;
  *(v2 + 4) = a1[4];
  *(v2 + 73) = *(a1 + 73);
  v4 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v4;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _ObjCTextMessage_MessageSummaryInfoWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_21458A560@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 48);
  v10 = *(v1 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 32);
  v11 = v2;
  v12[0] = *(v1 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 64);
  v3 = v12[0];
  *(v12 + 9) = *(v1 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 73);
  v4 = *(v12 + 9);
  v6 = *(v1 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 16);
  v9[0] = *(v1 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  *(a1 + 73) = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_2143140D0(v9, &v8);
}

id sub_21458A770(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v6 = a1;
  a3();

  a4();
  v7 = sub_2146D98E8();

  return v7;
}

uint64_t sub_21458A7E8()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 8);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v32 = MEMORY[0x277D84F90];

    sub_2146D9FB8();
    v4 = type metadata accessor for _ObjCTranslatedMessagePartWrapper();
    v5 = v2 - 1;
    for (i = 32; ; i += 136)
    {
      v23 = *(v1 + i);
      v7 = *(v1 + i + 16);
      v8 = *(v1 + i + 32);
      v9 = *(v1 + i + 64);
      v26 = *(v1 + i + 48);
      v27 = v9;
      v24 = v7;
      v25 = v8;
      v10 = *(v1 + i + 80);
      v11 = *(v1 + i + 96);
      v12 = *(v1 + i + 112);
      v31 = *(v1 + i + 128);
      v29 = v11;
      v30 = v12;
      v28 = v10;
      v13 = objc_allocWithZone(v4);
      v14 = &v13[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart];
      *v14 = v23;
      v15 = v27;
      v17 = v24;
      v16 = v25;
      *(v14 + 3) = v26;
      *(v14 + 4) = v15;
      *(v14 + 1) = v17;
      *(v14 + 2) = v16;
      v19 = v29;
      v18 = v30;
      v20 = v28;
      *(v14 + 16) = v31;
      *(v14 + 6) = v19;
      *(v14 + 7) = v18;
      *(v14 + 5) = v20;
      sub_214308AB8(&v23, v22);
      v21.receiver = v13;
      v21.super_class = v4;
      objc_msgSendSuper2(&v21, sel_init);
      sub_2146D9F98();
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      if (!v5)
      {
        break;
      }

      --v5;
    }

    return v32;
  }

  return result;
}

uint64_t sub_21458AA24()
{
  if (*(v0 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 40) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 32);

    return v1;
  }

  return result;
}

uint64_t sub_21458AB78()
{
  if (*(v0 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 80) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 72);

    return v1;
  }

  return result;
}

id _ObjCTextMessage_MessageSummaryInfoWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TextMessage.MessageSummaryInfo.bridgedToObjectiveC.getter()
{
  v1 = v0[3];
  v11[2] = v0[2];
  v11[3] = v1;
  v12[0] = v0[4];
  *(v12 + 9) = *(v0 + 73);
  v2 = v0[1];
  v11[0] = *v0;
  v11[1] = v2;
  v3 = type metadata accessor for _ObjCTextMessage_MessageSummaryInfoWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo];
  v6 = v0[3];
  *(v5 + 2) = v0[2];
  *(v5 + 3) = v6;
  *(v5 + 4) = v0[4];
  *(v5 + 73) = *(v0 + 73);
  v7 = v0[1];
  *v5 = *v0;
  *(v5 + 1) = v7;
  sub_2143140D0(v11, v10);
  v9.receiver = v4;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_21458ADDC()
{
  v1 = v0[3];
  v15 = v0[2];
  v16 = v1;
  v17[0] = v0[4];
  *(v17 + 9) = *(v0 + 73);
  v2 = v0[1];
  v13 = *v0;
  v14 = v2;
  v3 = type metadata accessor for _ObjCTextMessage_MessageSummaryInfoWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo];
  v6 = v14;
  *v5 = v13;
  *(v5 + 1) = v6;
  v8 = v16;
  v7 = v17[0];
  v9 = v15;
  *(v5 + 73) = *(v17 + 9);
  *(v5 + 3) = v8;
  *(v5 + 4) = v7;
  *(v5 + 2) = v9;
  sub_2143140D0(&v13, v12);
  v11.receiver = v4;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_21458AED4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_VideoFormat_videoPreview_VideoFormat);

  return v1;
}

id sub_21458B00C(_OWORD *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = &v3[*a2];
  v5 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v5;
  v7.receiver = v3;
  v7.super_class = a3();
  return objc_msgSendSuper2(&v7, sel_init);
}

double sub_21458B060@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *a1;
  v4 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);
  *(a2 + 24) = v4;

  return result;
}

id sub_21458B0CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{

  sub_2146D9608();
  v4 = sub_2146D9588();

  return v4;
}

id sub_21458B164(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21458B1D0()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_AudioFormat_videoPreview_AudioFormat);

  return v1;
}

id sub_21458B218(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 24))
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21458B290(void *a1)
{
  v2 = *(v1 + *a1 + 16);

  return v2;
}

double sub_21458B34C(uint64_t a1, uint64_t a2, void *a3)
{

  return result;
}

id sub_21458B3B0(uint64_t (*a1)(void), void *a2)
{
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = a1();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[*a2];
  *v10 = v5;
  *(v10 + 1) = v4;
  *(v10 + 2) = v7;
  *(v10 + 3) = v6;
  v12.receiver = v9;
  v12.super_class = v8;

  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_21458B458(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), void *a4)
{
  v7 = *v4;
  v6 = v4[1];
  v9 = v4[2];
  v8 = v4[3];
  v10 = a3(a1, a2);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[*a4];
  *v12 = v7;
  *(v12 + 1) = v6;
  *(v12 + 2) = v9;
  *(v12 + 3) = v8;
  v14.receiver = v11;
  v14.super_class = v10;

  return objc_msgSendSuper2(&v14, sel_init);
}

unint64_t sub_21458B4EC@<X0>(unint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  result = sub_214592640(*a1);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_21458B538@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  result = sub_214592CB0(*a1);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t *sub_21458B574@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if ((*result + 1) <= 2)
  {
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t *sub_21458B5A0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result == 2006)
  {
    v3 = 2006;
  }

  else
  {
    v3 = 0;
  }

  v4 = *result != 2006;
  if (v2 == 3006)
  {
    v4 = 0;
  }

  else
  {
    v2 = v3;
  }

  *a2 = v2;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_21458B5D0@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  result = sub_214591CF4(*a1);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

unint64_t *sub_21458B608@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 3 || v2 == 2;
  if (v3)
  {
    v2 = 0;
  }

  v4 = v3;
  *a2 = v2;
  *(a2 + 8) = v4;
  return result;
}

uint64_t *sub_21458B630@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if ((*result + 1) <= 1)
  {
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t *sub_21458B658@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result == 4000 || v2 == 0)
  {
    v4 = 0;
  }

  else
  {
    v2 = 0;
    v4 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = v4;
  return result;
}

uint64_t *sub_21458B684@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result == 2006)
  {
    v3 = 2006;
  }

  else
  {
    v3 = 0;
  }

  v4 = *result != 2006;
  if (v2 == 3006)
  {
    v3 = 3006;
    v4 = 0;
  }

  if (v2)
  {
    v2 = v3;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_21458B6D4()
{
  sub_2146DA958();
  sub_2146DA988();
  return sub_2146DA9B8();
}

uint64_t sub_21458B748(uint64_t a1)
{
  sub_2146DA958();
  sub_2146DA988();
  return sub_2146DA9B8();
}

uint64_t sub_21458B78C@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_214592208(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

unint64_t sub_21458B7EC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21459367C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t _ObjCEnumLiteRelayTextMessageMessageType.init(rawValue:)(uint64_t result)
{
  if ((result + 1) >= 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_21458B864@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21459368C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_21458B89C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2145924C8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21458B8D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2145924D8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_21458B93C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2145936A4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_21458B99C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2145936C0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t *sub_21458B9D8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result + 1;
  v4 = v3 > 6;
  v5 = (1 << v3) & 0x61;
  v6 = v4 || v5 == 0;
  if (v6)
  {
    v2 = 0;
  }

  v7 = v6;
  *a2 = v2;
  *(a2 + 8) = v7;
  return result;
}

uint64_t *sub_21458BA14@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result == 2007)
  {
    v3 = 2007;
  }

  else
  {
    v3 = 0;
  }

  v4 = *result != 2007;
  if (v2 == 3007)
  {
    v3 = 3007;
    v4 = 0;
  }

  if (v2)
  {
    v2 = v3;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v4;
  return result;
}

unsigned __int8 *sub_21458BA50@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 2;
  if (v2 > 2)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

unint64_t sub_21458BA70@<X0>(unint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  result = sub_21459308C(*a1);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

unint64_t sub_21458BAA8@<X0>(unint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  result = sub_21459366C(*a1);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_21458BAE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2145932AC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21458BB18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2145934F8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_21458BB74@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2145936DC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void *sub_21458BBC0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

id sub_21458BC04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = &v1[OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation];
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v4;
  *(v3 + 16) = v2;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _ObjCEnumRelayGroupMutationWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_21458BDDC()
{
  v1 = v0 + OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation;
  if (*(v0 + OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation + 33))
  {
    return 0;
  }

  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 32);
  v8 = type metadata accessor for _ObjCRelayGroupDisplayNameMutationEnvelopeWrapper();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope];
  *v10 = v6;
  *(v10 + 1) = v5;
  *(v10 + 2) = v4;
  *(v10 + 3) = v3;
  v10[32] = v7;
  sub_21431C5DC(v6, v5, v4, v3);
  v11.receiver = v9;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21458BF48()
{
  v1 = (v0 + OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation);
  if (*(v0 + OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation + 33) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 1);
  v3 = *v1;
  v4 = type metadata accessor for _ObjCRelayGroupParticipantMutationEnvelopeWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorRelayGroupParticipantMutationEnvelope_relayGroupParticipantMutationEnvelope];
  *v6 = v3 & 1;
  *(v6 + 1) = v2;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_21458C09C(void *__src, void *a2, uint64_t (*a3)(void *))
{
  v5 = memcpy(&v3[*a2], __src, 0x122uLL);
  v7.receiver = v3;
  v7.super_class = a3(v5);
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_21458C1EC()
{
  memcpy(v3, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType), 0x122uLL);
  v1 = sub_2143215E0(v3);
  sub_213FBF540(v3);
  return v1;
}

id sub_21458C324()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType), sizeof(__dst));
  memcpy(v10, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType), 0x122uLL);
  if (sub_2143215E0(v10))
  {
    return 0;
  }

  v2 = sub_213FBF540(v10);
  updated = type metadata accessor for _ObjCBackgroundUpdateInfoWrapper();
  v4 = objc_allocWithZone(updated);
  memcpy(&v4[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo], v2, 0x122uLL);
  memcpy(v8, __dst, 0x122uLL);
  v5 = sub_213FBF540(v8);
  sub_2143087B4(v5, v7);
  v6.receiver = v4;
  v6.super_class = updated;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_21458C4DC()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType), sizeof(__dst));
  memcpy(v10, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType), 0x122uLL);
  if (sub_2143215E0(v10) != 1)
  {
    return 0;
  }

  v1 = sub_213FBF540(v10);
  updated = type metadata accessor for _ObjCBackgroundUpdateInfoWrapper();
  v3 = objc_allocWithZone(updated);
  memcpy(&v3[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo], v1, 0x122uLL);
  memcpy(v8, __dst, 0x122uLL);
  v4 = sub_213FBF540(v8);
  sub_2143087B4(v4, v7);
  v6.receiver = v3;
  v6.super_class = updated;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_21458C6C8()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType), sizeof(__dst));
  memcpy(v16, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType), 0x122uLL);
  if (sub_2143215E0(v16) != 2)
  {
    return 0;
  }

  v1 = sub_213FBF540(v16);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = type metadata accessor for _ObjCBackgroundRequestInfoWrapper();
  v12 = *v1;
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo];
  *v7 = v12;
  *(v7 + 2) = v2;
  *(v7 + 3) = v3;
  v7[32] = v4;
  memcpy(v14, __dst, 0x122uLL);
  v8 = sub_213FBF540(v14);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);

  sub_213FDC9D0(v9, v10);
  v13.receiver = v6;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_21458C8B4()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType), sizeof(__dst));
  memcpy(v10, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType), 0x122uLL);
  if (sub_2143215E0(v10) != 3)
  {
    return 0;
  }

  v1 = sub_213FBF540(v10);
  updated = type metadata accessor for _ObjCBackgroundUpdateInfoWrapper();
  v3 = objc_allocWithZone(updated);
  memcpy(&v3[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo], v1, 0x122uLL);
  memcpy(v8, __dst, 0x122uLL);
  v4 = sub_213FBF540(v8);
  sub_2143087B4(v4, v7);
  v6.receiver = v3;
  v6.super_class = updated;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_21458CA58(const void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  memcpy(&v5[*a2], a1, 0x139uLL);
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_21458CAE0(void *__src, void *a2, uint64_t (*a3)(void *))
{
  v5 = memcpy(&v3[*a2], __src, 0x139uLL);
  v7.receiver = v3;
  v7.super_class = a3(v5);
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_21458CC30()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), 0x139uLL);
  v1 = sub_214321D58(__dst);
  sub_213FBF550(__dst);
  return v1;
}

id sub_21458CD6C()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), sizeof(__dst));
  memcpy(v11, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), 0x139uLL);
  if (sub_214321D58(v11))
  {
    return 0;
  }

  v2 = sub_213FBF550(v11);
  v3 = *v2;
  v4 = v2[1];
  v5 = type metadata accessor for _ObjCGeneralAttachmentInfoWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorGeneralAttachmentInfo_generalAttachmentInfo];
  *v7 = v3;
  *(v7 + 1) = v4;
  memcpy(v9, __dst, 0x139uLL);
  sub_213FBF550(v9);
  v8.receiver = v6;
  v8.super_class = v5;

  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_21458CF28()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), sizeof(__dst));
  memcpy(v10, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), 0x139uLL);
  if (sub_214321D58(v10) != 1)
  {
    return 0;
  }

  v1 = sub_213FBF550(v10);
  v2 = type metadata accessor for _ObjCEmojiImageAttachmentInfoWrapper();
  v3 = objc_allocWithZone(v2);
  memcpy(&v3[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo], v1, 0x111uLL);
  memcpy(v8, __dst, 0x139uLL);
  v4 = sub_213FBF550(v8);
  sub_2142E346C(v4, v7);
  v6.receiver = v3;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_21458D0E4()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), sizeof(__dst));
  memcpy(v10, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), 0x139uLL);
  if (sub_214321D58(v10) != 2)
  {
    return 0;
  }

  v1 = sub_213FBF550(v10);
  v2 = type metadata accessor for _ObjCStickerAttachmentInfoWrapper();
  v3 = objc_allocWithZone(v2);
  memcpy(&v3[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo], v1, 0x139uLL);
  memcpy(v8, __dst, 0x139uLL);
  v4 = sub_213FBF550(v8);
  sub_2142E371C(v4, v7);
  v6.receiver = v3;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_21458D2D0()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), sizeof(__dst));
  memcpy(v13, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), 0x139uLL);
  if (sub_214321D58(v13) != 3)
  {
    return 0;
  }

  v1 = sub_213FBF550(v13);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = type metadata accessor for _ObjCLivePhotoAttachmentInfoWrapper();
  v9 = *v1;
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorLivePhotoAttachmentInfo_livePhotoAttachmentInfo];
  *v7 = v9;
  *(v7 + 2) = v2;
  *(v7 + 3) = v3;
  v7[32] = v4;
  memcpy(v11, __dst, 0x139uLL);
  sub_213FBF550(v11);
  v10.receiver = v6;
  v10.super_class = v5;

  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_21458D50C()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), sizeof(__dst));
  memcpy(v18, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), 0x139uLL);
  if (sub_214321D58(v18) != 4)
  {
    return 0;
  }

  v1 = sub_213FBF550(v18);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = type metadata accessor for _ObjCAudioMessageAttachmentInfoWrapper();
  v14 = *v1;
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo];
  *v9 = v14;
  *(v9 + 2) = v2;
  *(v9 + 3) = v3;
  v9[32] = v4;
  *(v9 + 5) = v5;
  *(v9 + 6) = v6;
  memcpy(v16, __dst, 0x139uLL);
  v10 = sub_213FBF550(v16);
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);

  sub_213FDC9D0(v11, v12);
  v15.receiver = v8;
  v15.super_class = v7;

  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_21458D7A4()
{
  v1 = type metadata accessor for BalloonPlugin.Payload(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, v3, type metadata accessor for BalloonPlugin.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_213FB5844(v3, type metadata accessor for BalloonPlugin.Payload);
  return EnumCaseMultiPayload;
}

uint64_t sub_21458D8B4()
{
  v1 = type metadata accessor for MessagesAppBalloon(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BalloonPlugin.Payload(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, v6, type metadata accessor for BalloonPlugin.Payload);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_213FB5844(v6, type metadata accessor for BalloonPlugin.Payload);
    return 0;
  }

  else
  {
    sub_21459375C(v6, v3, type metadata accessor for MessagesAppBalloon);
    v8 = sub_21406B29C();
    v10 = v9;
    v11 = sub_2146D8A38();
    sub_213FB54FC(v8, v10);
    sub_213FB5844(v3, type metadata accessor for MessagesAppBalloon);
    return v11;
  }
}

uint64_t sub_21458DA70()
{
  v1 = type metadata accessor for Handwriting(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BalloonPlugin.Payload(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, v6, type metadata accessor for BalloonPlugin.Payload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21459375C(v6, v3, type metadata accessor for Handwriting);
    v7 = objc_opt_self();
    sub_2144294FC();
    sub_214593710();
    v8 = sub_2146D98E8();

    v9 = &v3[*(v1 + 24)];
    v10 = v9[4];
    v11 = v9[5];
    v12 = v9[6];
    v13 = v9[7];
    v14 = *v9;
    v15 = v9[1];
    v16 = v9[2];
    v17 = v9[3];
    v18 = sub_2146D8B38();
    v19 = sub_2146D8AD8();
    v20 = [v7 dataRepresentation:v8 frame:v18 bound:v19 uuid:v10 date:{v11, v12, v13, v14, v15, v16, v17}];

    if (v20)
    {
      v21 = sub_2146D8A58();
      v23 = v22;
    }

    else
    {
      v25 = sub_2146D9BA8();
      if (qword_280B35360 != -1)
      {
        v27 = v25;
        swift_once();
        v25 = v27;
      }

      sub_2146D91D8(v25, &dword_213FAF000, qword_280B35410, "Fatal error, Could not encode HWHandwritingItem instance", 56, 2, MEMORY[0x277D84F90]);
      v21 = 0;
      v23 = 0xC000000000000000;
    }

    v26 = sub_2146D8A38();
    sub_213FB54FC(v21, v23);
    sub_213FB5844(v3, type metadata accessor for Handwriting);
    return v26;
  }

  else
  {
    sub_213FB5844(v6, type metadata accessor for BalloonPlugin.Payload);
    return 0;
  }
}

uint64_t sub_21458DDAC()
{
  v1 = type metadata accessor for LinkPresentation.MessagesPayload(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BalloonPlugin.Payload(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, v6, type metadata accessor for BalloonPlugin.Payload);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_21459375C(v6, v3, type metadata accessor for LinkPresentation.MessagesPayload);
    v7 = sub_2143E3A80();
    v9 = v8;
    v10 = sub_2146D8A38();
    sub_213FB54FC(v7, v9);
    sub_213FB5844(v3, type metadata accessor for LinkPresentation.MessagesPayload);
    return v10;
  }

  else
  {
    sub_213FB5844(v6, type metadata accessor for BalloonPlugin.Payload);
    return 0;
  }
}

id sub_21458DF6C()
{
  v1 = type metadata accessor for CombinedPluginAttachmentInfo(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = type metadata accessor for BalloonPlugin.Payload(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, v9, type metadata accessor for BalloonPlugin.Payload);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_21459375C(v9, v6, type metadata accessor for CombinedPluginAttachmentInfo);
    sub_213FB568C(v6, v4, type metadata accessor for CombinedPluginAttachmentInfo);
    v10 = type metadata accessor for _ObjCCombinedPluginAttachmentInfoWrapper(0);
    v11 = objc_allocWithZone(v10);
    sub_213FB568C(v4, v11 + OBJC_IVAR___BlastDoorCombinedPluginAttachmentInfo_combinedPluginAttachmentInfo, type metadata accessor for CombinedPluginAttachmentInfo);
    v14.receiver = v11;
    v14.super_class = v10;
    v12 = objc_msgSendSuper2(&v14, sel_init);
    sub_213FB5844(v4, type metadata accessor for CombinedPluginAttachmentInfo);
    sub_213FB5844(v6, type metadata accessor for CombinedPluginAttachmentInfo);
    return v12;
  }

  else
  {
    sub_213FB5844(v9, type metadata accessor for BalloonPlugin.Payload);
    return 0;
  }
}

uint64_t sub_21458E1AC()
{
  v1 = type metadata accessor for DigitalTouchBalloon(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BalloonPlugin.Payload(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, v6, type metadata accessor for BalloonPlugin.Payload);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_21459375C(v6, v3, type metadata accessor for DigitalTouchBalloon);
    v7 = sub_2146D9B88();
    if (qword_280B35358 != -1)
    {
      v13 = v7;
      swift_once();
      v7 = v13;
    }

    sub_2146D91D8(v7, &dword_213FAF000, qword_280B35408, "Getting data representation for DigitalTouchBalloon", 51, 2, MEMORY[0x277D84F90]);
    v8 = sub_2143C25AC(v3);
    v10 = v9;
    v11 = sub_2146D8A38();
    sub_213FB54FC(v8, v10);
    sub_213FB5844(v3, type metadata accessor for DigitalTouchBalloon);
    return v11;
  }

  else
  {
    sub_213FB5844(v6, type metadata accessor for BalloonPlugin.Payload);
    return 0;
  }
}

uint64_t sub_21458E3DC()
{
  v1 = type metadata accessor for MessagesAppCustomAcknowledgement(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BalloonPlugin.Payload(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, v6, type metadata accessor for BalloonPlugin.Payload);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_21459375C(v6, v3, type metadata accessor for MessagesAppCustomAcknowledgement);
    v7 = sub_21406C920();
    v9 = v8;
    v10 = sub_2146D8A38();
    sub_213FB54FC(v7, v9);
    sub_213FB5844(v3, type metadata accessor for MessagesAppCustomAcknowledgement);
    return v10;
  }

  else
  {
    sub_213FB5844(v6, type metadata accessor for BalloonPlugin.Payload);
    return 0;
  }
}

id _ObjCEnumBasicTextMessageMessageTypeWrapper.init(basicTextMessage_MessageType:)(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType];
  v3 = a1[9];
  *(v2 + 8) = a1[8];
  *(v2 + 9) = v3;
  *(v2 + 153) = *(a1 + 153);
  v4 = a1[5];
  *(v2 + 4) = a1[4];
  *(v2 + 5) = v4;
  v5 = a1[7];
  *(v2 + 6) = a1[6];
  *(v2 + 7) = v5;
  v6 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v6;
  v7 = a1[3];
  *(v2 + 2) = a1[2];
  *(v2 + 3) = v7;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for _ObjCEnumBasicTextMessageMessageTypeWrapper();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_21458E860()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v8[8] = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 128);
  v9[0] = v1;
  *(v9 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v8[4] = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 64);
  v8[5] = v2;
  v3 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v8[6] = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 96);
  v8[7] = v3;
  v4 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v8[0] = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v8[1] = v4;
  v5 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v8[2] = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 32);
  v8[3] = v5;
  v6 = sub_2143223B0(v8);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      nullsub_1();
      return 3;
    }

    else if (v6 == 4)
    {
      nullsub_1();
      return 4;
    }

    else
    {
      nullsub_1();
      return 5;
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      nullsub_1();
      return 1;
    }

    else
    {
      nullsub_1();
      return 2;
    }
  }

  else
  {
    nullsub_1();
    return 0;
  }
}

id sub_21458EA98()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v29 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 128);
  v30[0] = v2;
  *(v30 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v3 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v4 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v25 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 64);
  v26 = v4;
  v5 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v6 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v27 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 96);
  v28 = v6;
  v7 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v21 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v22 = v7;
  v8 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v10 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v9 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v23 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 32);
  v24 = v8;
  v11 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v31[8] = v29;
  v32[0] = v11;
  *(v32 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v31[4] = v25;
  v31[5] = v5;
  v31[6] = v27;
  v31[7] = v1;
  v31[0] = v10;
  v31[1] = v9;
  v31[2] = v23;
  v31[3] = v3;
  if (sub_2143223B0(v31))
  {
    return 0;
  }

  nullsub_1();
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = type metadata accessor for _ObjCBasicTypingIndicatorWrapper();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR___BlastDoorBasicTypingIndicator_basicTypingIndicator];
  *v18 = v14;
  *(v18 + 1) = v15;
  v19[1] = v21;
  v19[2] = v22;
  v19[5] = v25;
  v19[6] = v26;
  v19[3] = v23;
  v19[4] = v24;
  *&v20[9] = *(v30 + 9);
  v19[9] = v29;
  *v20 = v30[0];
  v19[7] = v27;
  v19[8] = v28;
  nullsub_1();
  v19[0].receiver = v17;
  v19[0].super_class = v16;

  return [(objc_super *)v19 init];
}

id sub_21458ED58()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v44 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 128);
  v45[0] = v2;
  *(v45 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v3 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v4 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v40 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 64);
  v41 = v4;
  v5 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v6 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v42 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 96);
  v43 = v6;
  v7 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v36 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v37 = v7;
  v8 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v10 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v9 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v38 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 32);
  v39 = v8;
  v11 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v46[8] = v44;
  v47[0] = v11;
  *(v47 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v46[4] = v40;
  v46[5] = v5;
  v46[6] = v42;
  v46[7] = v1;
  v46[0] = v10;
  v46[1] = v9;
  v46[2] = v38;
  v46[3] = v3;
  if (sub_2143223B0(v46) != 1)
  {
    return 0;
  }

  nullsub_1();
  v13 = v12;
  v14 = type metadata accessor for _ObjCBasicMessageWrapper();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR___BlastDoorBasicMessage_basicMessage];
  v18 = v13[1];
  v17 = v13[2];
  *v16 = *v13;
  *(v16 + 1) = v18;
  *(v16 + 2) = v17;
  v20 = v13[4];
  v19 = v13[5];
  v21 = v13[3];
  *(v16 + 89) = *(v13 + 89);
  *(v16 + 4) = v20;
  *(v16 + 5) = v19;
  *(v16 + 3) = v21;
  v34 = v44;
  v35[0] = v45[0];
  *(v35 + 9) = *(v45 + 9);
  v30 = v40;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  nullsub_1();
  sub_2142E5B20(v22, v25);
  v24.receiver = v15;
  v24.super_class = v14;
  return objc_msgSendSuper2(&v24, sel_init);
}

id sub_21458F030()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v45 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 128);
  v46[0] = v2;
  *(v46 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v3 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v4 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v41 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 64);
  v42 = v4;
  v5 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v6 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v43 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 96);
  v44 = v6;
  v7 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v37 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v38 = v7;
  v8 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v10 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v9 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v39 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 32);
  v40 = v8;
  v11 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v47[8] = v45;
  v48[0] = v11;
  *(v48 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v47[4] = v41;
  v47[5] = v5;
  v47[6] = v43;
  v47[7] = v1;
  v47[0] = v10;
  v47[1] = v9;
  v47[2] = v39;
  v47[3] = v3;
  if (sub_2143223B0(v47) != 2)
  {
    return 0;
  }

  nullsub_1();
  v13 = v12;
  v14 = type metadata accessor for _ObjCBasicTapBackWrapper();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack];
  v17 = v13[3];
  v19 = *v13;
  v18 = v13[1];
  *(v16 + 2) = v13[2];
  *(v16 + 3) = v17;
  *v16 = v19;
  *(v16 + 1) = v18;
  v20 = v13[7];
  v22 = v13[4];
  v21 = v13[5];
  *(v16 + 6) = v13[6];
  *(v16 + 7) = v20;
  *(v16 + 4) = v22;
  *(v16 + 5) = v21;
  v27 = v37;
  v28 = v38;
  v31 = v41;
  v32 = v42;
  v29 = v39;
  v30 = v40;
  *(v36 + 9) = *(v46 + 9);
  v35 = v45;
  v36[0] = v46[0];
  v33 = v43;
  v34 = v44;
  nullsub_1();
  sub_2142E5C78(v23, v26);
  v25.receiver = v15;
  v25.super_class = v14;
  return objc_msgSendSuper2(&v25, sel_init);
}

id sub_21458F2EC()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v42 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 128);
  v43[0] = v2;
  *(v43 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v3 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v4 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v38 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 64);
  v39 = v4;
  v5 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v6 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v40 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 96);
  v41 = v6;
  v7 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v34 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v35 = v7;
  v8 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v10 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v9 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v36 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 32);
  v37 = v8;
  v11 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v44[8] = v42;
  v45[0] = v11;
  *(v45 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v44[4] = v38;
  v44[5] = v5;
  v44[6] = v40;
  v44[7] = v1;
  v44[0] = v10;
  v44[1] = v9;
  v44[2] = v36;
  v44[3] = v3;
  if (sub_2143223B0(v44) != 3)
  {
    return 0;
  }

  nullsub_1();
  v13 = v12;
  v14 = type metadata accessor for _ObjCBasicAudioMessageWrapper();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR___BlastDoorBasicAudioMessage_basicAudioMessage];
  v17 = v13[3];
  v19 = *v13;
  v18 = v13[1];
  *(v16 + 2) = v13[2];
  *(v16 + 3) = v17;
  *v16 = v19;
  *(v16 + 1) = v18;
  v24 = v34;
  v25 = v35;
  v28 = v38;
  v29 = v39;
  v26 = v36;
  v27 = v37;
  *&v33[9] = *(v43 + 9);
  v32 = v42;
  *v33 = v43[0];
  v30 = v40;
  v31 = v41;
  nullsub_1();
  sub_2142E55D0(v20, v23);
  v22.receiver = v15;
  v22.super_class = v14;
  return objc_msgSendSuper2(&v22, sel_init);
}

id sub_21458F5B4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v40 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 128);
  v41[0] = v2;
  *(v41 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v3 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v4 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v36 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 64);
  v37 = v4;
  v5 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v6 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v38 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 96);
  v39 = v6;
  v7 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v32 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v33 = v7;
  v8 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v10 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v9 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v34 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 32);
  v35 = v8;
  v11 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v42[8] = v40;
  v43[0] = v11;
  *(v43 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v42[4] = v36;
  v42[5] = v5;
  v42[6] = v38;
  v42[7] = v1;
  v42[0] = v10;
  v42[1] = v9;
  v42[2] = v34;
  v42[3] = v3;
  if (sub_2143223B0(v42) != 4)
  {
    return 0;
  }

  nullsub_1();
  v13 = v12;
  v14 = *(v12 + 16);
  v15 = *(v12 + 24);
  v16 = type metadata accessor for _ObjCUnsupportedMessageWrapper();
  v20 = *v13;
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage];
  *v18 = v20;
  *(v18 + 2) = v14;
  v18[24] = v15;
  v22 = v32;
  v23 = v33;
  v26 = v36;
  v27 = v37;
  v24 = v34;
  v25 = v35;
  *&v31[9] = *(v41 + 9);
  v30 = v40;
  *v31 = v41[0];
  v28 = v38;
  v29 = v39;
  nullsub_1();
  v21.receiver = v17;
  v21.super_class = v16;

  return objc_msgSendSuper2(&v21, sel_init);
}

id sub_21458F8B4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 128);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 96);
  v45 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v46 = v1;
  v3 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 128);
  v47[0] = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  *(v47 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v4 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v5 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v42 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 64);
  v43 = v5;
  v6 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v44 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 96);
  v7 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v38 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v39 = v7;
  v8 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v10 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v9 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v40 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 32);
  v41 = v8;
  v48[7] = v45;
  v48[8] = v3;
  v49[0] = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  *(v49 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v48[4] = v42;
  v48[5] = v6;
  v48[6] = v2;
  v48[0] = v10;
  v48[1] = v9;
  v48[2] = v40;
  v48[3] = v4;
  if (sub_2143223B0(v48) != 5)
  {
    return 0;
  }

  nullsub_1();
  v12 = v11;
  v13 = type metadata accessor for _ObjCBasicEmojiTapbackWrapper();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback];
  v17 = *(v12 + 16);
  v16 = *(v12 + 32);
  *v15 = *v12;
  *(v15 + 1) = v17;
  *(v15 + 2) = v16;
  v18 = *(v12 + 96);
  v20 = *(v12 + 48);
  v19 = *(v12 + 64);
  *(v15 + 5) = *(v12 + 80);
  *(v15 + 6) = v18;
  *(v15 + 3) = v20;
  *(v15 + 4) = v19;
  v22 = *(v12 + 128);
  v21 = *(v12 + 144);
  v23 = *(v12 + 112);
  *(v15 + 20) = *(v12 + 160);
  *(v15 + 8) = v22;
  *(v15 + 9) = v21;
  *(v15 + 7) = v23;
  v36 = v46;
  v37[0] = v47[0];
  *(v37 + 9) = *(v47 + 9);
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v35 = v45;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v31 = v41;
  nullsub_1();
  sub_2142E58CC(v24, v27);
  v26.receiver = v14;
  v26.super_class = v13;
  return objc_msgSendSuper2(&v26, sel_init);
}

unint64_t _ObjCEnumEncodedAttachmentsEncodedContent.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

id sub_21458FB6C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, char *), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v9 = a3(a1, &v5[*a2]);
  v12.receiver = v5;
  v12.super_class = a4(v9);
  v10 = objc_msgSendSuper2(&v12, sel_init);
  a5(a1);
  return v10;
}

uint64_t sub_21458FCA4()
{
  sub_2143229E4(v0 + OBJC_IVAR___BlastDoorEncodedAttachmentsEncodedContentWrapper_encodedAttachments_EncodedContent, v3);
  v1 = v3[473];
  sub_214593574(v3);
  return v1;
}

id sub_21458FD30()
{
  sub_2143229E4(v0 + OBJC_IVAR___BlastDoorEncodedAttachmentsEncodedContentWrapper_encodedAttachments_EncodedContent, __src);
  if (__src[473])
  {
    sub_214593574(__src);
    return 0;
  }

  else
  {
    memcpy(__dst, __src, 0x1D9uLL);
    sub_2145935C8(__dst, v6);
    v2 = type metadata accessor for _ObjCEncodedAttachments_EncodedAstcWrapper();
    v3 = objc_allocWithZone(v2);
    sub_2145935C8(v6, v3 + OBJC_IVAR___BlastDoorEncodedAttachments_EncodedAstc_encodedAttachments_EncodedAstc);
    v5.receiver = v3;
    v5.super_class = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    sub_214309B44(v6);
    sub_214309B44(__dst);
    return v4;
  }
}

id sub_21458FE38()
{
  sub_2143229E4(v0 + OBJC_IVAR___BlastDoorEncodedAttachmentsEncodedContentWrapper_encodedAttachments_EncodedContent, v8);
  if (v9 == 1)
  {
    v1 = v8[0];
    v2 = v8[1];
    v3 = type metadata accessor for _ObjCEncodedAttachments_RawDataWrapper();
    v4 = objc_allocWithZone(v3);
    v5 = &v4[OBJC_IVAR___BlastDoorEncodedAttachments_RawData_encodedAttachments_RawData];
    *v5 = v1;
    *(v5 + 1) = v2;
    v7.receiver = v4;
    v7.super_class = v3;
    return objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {
    sub_214593574(v8);
    return 0;
  }
}

id sub_21458FF74(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *(a1 + 32);
  v5 = &v3[*a2];
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  v5[32] = v4;
  v8.receiver = v3;
  v8.super_class = a3();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_214590114()
{
  v1 = (v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content);
  if (*(v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content + 32))
  {
    return 0;
  }

  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for _ObjCSMSCTPartPlainWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorSMSCTPartPlain_sMSCTPartPlain];
  *v7 = v4;
  *(v7 + 1) = v3;
  v8.receiver = v6;
  v8.super_class = v5;

  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_214590268()
{
  v1 = (v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content);
  if (*(v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content + 32) != 1)
  {
    return 0;
  }

  v3 = v1[2];
  v2 = v1[3];
  v5 = *v1;
  v4 = v1[1];
  v6 = type metadata accessor for _ObjCSMSCTPartSMILWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorSMSCTPartSMIL_sMSCTPartSMIL];
  *v8 = v5;
  v8[1] = v4;
  v8[2] = v3;
  v8[3] = v2;
  sub_214031CA0(v5, v4, v3);
  v10.receiver = v7;
  v10.super_class = v6;

  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_2145903E0()
{
  v1 = (v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content);
  if (*(v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content + 32) != 2)
  {
    return 0;
  }

  v3 = v1[2];
  v2 = v1[3];
  v5 = *v1;
  v4 = v1[1];
  v6 = type metadata accessor for _ObjCSMSCTPartAttachmentWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorSMSCTPartAttachment_sMSCTPartAttachment];
  *v8 = v5;
  v8[1] = v4;
  v8[2] = v3;
  v8[3] = v2;
  sub_213FDCA18(v5, v4);
  v10.receiver = v7;
  v10.super_class = v6;

  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214590538()
{
  v1 = (v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content);
  if (*(v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content + 32) != 3)
  {
    return 0;
  }

  v2 = *v1;
  v3 = v1[1];
  v4 = type metadata accessor for _ObjCSMSCTPartAttributedChipListWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorSMSCTPartAttributedChipList_sMSCTPartAttributedChipList];
  *v6 = v2;
  v6[8] = v3;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_214590674()
{
  v1 = (v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content);
  if (*(v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content + 32) != 4)
  {
    return 0;
  }

  v3 = *v1;
  v2 = v1[1];
  v4 = type metadata accessor for _ObjCSMSCTPartAttributedRichCardsWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorSMSCTPartAttributedRichCards_sMSCTPartAttributedRichCards];
  *v6 = v3;
  v6[1] = v2;
  sub_2143001B8(v3, v2);
  v8.receiver = v5;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_21459088C()
{
  v1 = type metadata accessor for TextMessage.MessageType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v3, type metadata accessor for TextMessage.MessageType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_213FB5844(v3, type metadata accessor for TextMessage.MessageType);
  return EnumCaseMultiPayload;
}

id sub_21459099C()
{
  v1 = type metadata accessor for TextMessage.MessageType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v3, type metadata accessor for TextMessage.MessageType);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_213FB5844(v3, type metadata accessor for TextMessage.MessageType);
    return 0;
  }

  else
  {
    memcpy(v10, v3, sizeof(v10));
    sub_214593100(v10, v9);
    v5 = type metadata accessor for _ObjCTypingIndicatorWrapper();
    v6 = objc_allocWithZone(v5);
    sub_214593100(v9, v6 + OBJC_IVAR___BlastDoorTypingIndicator_typingIndicator);
    v8.receiver = v6;
    v8.super_class = v5;
    v7 = objc_msgSendSuper2(&v8, sel_init);
    sub_214307C44(v9);
    sub_214307C44(v10);
    return v7;
  }
}

id sub_214590B2C()
{
  v1 = type metadata accessor for TextMessage.MessageType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v3, type metadata accessor for TextMessage.MessageType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(v3 + 5);
    v19 = *(v3 + 4);
    v20 = v4;
    v21 = *(v3 + 6);
    v22 = *(v3 + 14);
    v5 = *(v3 + 1);
    v15 = *v3;
    v16 = v5;
    v6 = *(v3 + 3);
    v17 = *(v3 + 2);
    v18 = v6;
    v7 = type metadata accessor for _ObjCMessageWrapper();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR___BlastDoorMessage_message];
    v10 = v20;
    *(v9 + 4) = v19;
    *(v9 + 5) = v10;
    *(v9 + 6) = v21;
    *(v9 + 14) = v22;
    v11 = v16;
    *v9 = v15;
    *(v9 + 1) = v11;
    v12 = v18;
    *(v9 + 2) = v17;
    *(v9 + 3) = v12;
    v14.receiver = v8;
    v14.super_class = v7;
    return objc_msgSendSuper2(&v14, sel_init);
  }

  else
  {
    sub_213FB5844(v3, type metadata accessor for TextMessage.MessageType);
    return 0;
  }
}

id sub_214590CC4()
{
  v1 = type metadata accessor for TextMessage.MessageType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v3, type metadata accessor for TextMessage.MessageType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v4 = *(v3 + 9);
    v27 = *(v3 + 8);
    v28 = v4;
    v29 = *(v3 + 10);
    v30 = *(v3 + 22);
    v5 = *(v3 + 5);
    v23 = *(v3 + 4);
    v24 = v5;
    v6 = *(v3 + 7);
    v25 = *(v3 + 6);
    v26 = v6;
    v7 = *(v3 + 1);
    v19 = *v3;
    v20 = v7;
    v8 = *(v3 + 3);
    v21 = *(v3 + 2);
    v22 = v8;
    v9 = type metadata accessor for _ObjCTapBackWrapper();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___BlastDoorTapBack_tapBack];
    v12 = v28;
    *(v11 + 8) = v27;
    *(v11 + 9) = v12;
    *(v11 + 10) = v29;
    *(v11 + 22) = v30;
    v13 = v24;
    *(v11 + 4) = v23;
    *(v11 + 5) = v13;
    v14 = v26;
    *(v11 + 6) = v25;
    *(v11 + 7) = v14;
    v15 = v20;
    *v11 = v19;
    *(v11 + 1) = v15;
    v16 = v22;
    *(v11 + 2) = v21;
    *(v11 + 3) = v16;
    v18.receiver = v10;
    v18.super_class = v9;
    return objc_msgSendSuper2(&v18, sel_init);
  }

  else
  {
    sub_213FB5844(v3, type metadata accessor for TextMessage.MessageType);
    return 0;
  }
}

id sub_214590E7C()
{
  v1 = type metadata accessor for BalloonPlugin(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = type metadata accessor for TextMessage.MessageType(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v9, type metadata accessor for TextMessage.MessageType);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_21459375C(v9, v6, type metadata accessor for BalloonPlugin);
    sub_213FB568C(v6, v4, type metadata accessor for BalloonPlugin);
    v10 = type metadata accessor for _ObjCBalloonPluginWrapper(0);
    v11 = objc_allocWithZone(v10);
    sub_213FB568C(v4, v11 + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, type metadata accessor for BalloonPlugin);
    v14.receiver = v11;
    v14.super_class = v10;
    v12 = objc_msgSendSuper2(&v14, sel_init);
    sub_213FB5844(v4, type metadata accessor for BalloonPlugin);
    sub_213FB5844(v6, type metadata accessor for BalloonPlugin);
    return v12;
  }

  else
  {
    sub_213FB5844(v9, type metadata accessor for TextMessage.MessageType);
    return 0;
  }
}

id sub_2145910BC()
{
  v1 = type metadata accessor for TextMessage.MessageType(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v3, type metadata accessor for TextMessage.MessageType);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v4 = v3[11];
    v31 = v3[10];
    v32[0] = v4;
    *(v32 + 9) = *(v3 + 185);
    v5 = v3[7];
    v27 = v3[6];
    v28 = v5;
    v6 = v3[9];
    v29 = v3[8];
    v30 = v6;
    v7 = v3[3];
    v23 = v3[2];
    v24 = v7;
    v8 = v3[5];
    v25 = v3[4];
    v26 = v8;
    v9 = v3[1];
    v21 = *v3;
    v22 = v9;
    v10 = type metadata accessor for _ObjCStickerWrapper();
    v11 = objc_allocWithZone(v10);
    v12 = &v11[OBJC_IVAR___BlastDoorSticker_sticker];
    v13 = v32[0];
    *(v12 + 10) = v31;
    *(v12 + 11) = v13;
    *(v12 + 185) = *(v32 + 9);
    v14 = v28;
    *(v12 + 6) = v27;
    *(v12 + 7) = v14;
    v15 = v30;
    *(v12 + 8) = v29;
    *(v12 + 9) = v15;
    v16 = v24;
    *(v12 + 2) = v23;
    *(v12 + 3) = v16;
    v17 = v26;
    *(v12 + 4) = v25;
    *(v12 + 5) = v17;
    v18 = v22;
    *v12 = v21;
    *(v12 + 1) = v18;
    v20.receiver = v11;
    v20.super_class = v10;
    return objc_msgSendSuper2(&v20, sel_init);
  }

  else
  {
    sub_213FB5844(v3, type metadata accessor for TextMessage.MessageType);
    return 0;
  }
}

id sub_214591278()
{
  v1 = type metadata accessor for TextMessage.MessageType(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v3, type metadata accessor for TextMessage.MessageType);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v4 = v3[1];
    v13 = *v3;
    v14 = v4;
    v5 = v3[3];
    v15 = v3[2];
    v16 = v5;
    v6 = type metadata accessor for _ObjCAudioMessageWrapper();
    v7 = objc_allocWithZone(v6);
    v8 = &v7[OBJC_IVAR___BlastDoorAudioMessage_audioMessage];
    v9 = v14;
    *v8 = v13;
    *(v8 + 1) = v9;
    v10 = v16;
    *(v8 + 2) = v15;
    *(v8 + 3) = v10;
    v12.receiver = v7;
    v12.super_class = v6;
    return objc_msgSendSuper2(&v12, sel_init);
  }

  else
  {
    sub_213FB5844(v3, type metadata accessor for TextMessage.MessageType);
    return 0;
  }
}

id sub_2145913E0()
{
  v1 = type metadata accessor for TextMessage.MessageType(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v3, type metadata accessor for TextMessage.MessageType);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v4 = v3[11];
    v33 = v3[10];
    v34 = v4;
    v5 = v3[13];
    v35 = v3[12];
    v36 = v5;
    v6 = v3[7];
    v29 = v3[6];
    v30 = v6;
    v7 = v3[9];
    v31 = v3[8];
    v32 = v7;
    v8 = v3[3];
    v25 = v3[2];
    v26 = v8;
    v9 = v3[5];
    v27 = v3[4];
    v28 = v9;
    v10 = v3[1];
    v23 = *v3;
    v24 = v10;
    v11 = type metadata accessor for _ObjCEmojiTapBackWrapper();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack];
    v14 = v34;
    *(v13 + 10) = v33;
    *(v13 + 11) = v14;
    v15 = v36;
    *(v13 + 12) = v35;
    *(v13 + 13) = v15;
    v16 = v30;
    *(v13 + 6) = v29;
    *(v13 + 7) = v16;
    v17 = v32;
    *(v13 + 8) = v31;
    *(v13 + 9) = v17;
    v18 = v26;
    *(v13 + 2) = v25;
    *(v13 + 3) = v18;
    v19 = v28;
    *(v13 + 4) = v27;
    *(v13 + 5) = v19;
    v20 = v24;
    *v13 = v23;
    *(v13 + 1) = v20;
    v22.receiver = v12;
    v22.super_class = v11;
    return objc_msgSendSuper2(&v22, sel_init);
  }

  else
  {
    sub_213FB5844(v3, type metadata accessor for TextMessage.MessageType);
    return 0;
  }
}

id sub_2145915A4()
{
  v1 = type metadata accessor for TextMessage.MessageType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v3, type metadata accessor for TextMessage.MessageType);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    memcpy(v8, v3, sizeof(v8));
    v4 = type metadata accessor for _ObjCStickerTapBackWrapper();
    v5 = objc_allocWithZone(v4);
    memcpy(&v5[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack], v8, 0x130uLL);
    v7.receiver = v5;
    v7.super_class = v4;
    return objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {
    sub_213FB5844(v3, type metadata accessor for TextMessage.MessageType);
    return 0;
  }
}

id sub_214591718()
{
  v1 = type metadata accessor for CustomAcknowledgement(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = type metadata accessor for TextMessage.MessageType(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v9, type metadata accessor for TextMessage.MessageType);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_21459375C(v9, v6, type metadata accessor for CustomAcknowledgement);
    sub_213FB568C(v6, v4, type metadata accessor for CustomAcknowledgement);
    v10 = type metadata accessor for _ObjCCustomAcknowledgementWrapper(0);
    v11 = objc_allocWithZone(v10);
    sub_213FB568C(v4, v11 + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement, type metadata accessor for CustomAcknowledgement);
    v14.receiver = v11;
    v14.super_class = v10;
    v12 = objc_msgSendSuper2(&v14, sel_init);
    sub_213FB5844(v4, type metadata accessor for CustomAcknowledgement);
    sub_213FB5844(v6, type metadata accessor for CustomAcknowledgement);
    return v12;
  }

  else
  {
    sub_213FB5844(v9, type metadata accessor for TextMessage.MessageType);
    return 0;
  }
}

uint64_t sub_214591CF4(uint64_t result)
{
  if ((result - 3000) >= 7)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if ((result - 2000) >= 7)
  {
    return v1;
  }

  return result;
}

uint64_t sub_214592208(unsigned __int16 a1)
{
  v1 = a1;
  if (a1 > 0x18Fu)
  {
    if (a1 <= 0x1F5u)
    {
      if (a1 != 400 && a1 != 500)
      {
        goto LABEL_19;
      }
    }

    else if (a1 != 502 && a1 != 600 && a1 != 601)
    {
      goto LABEL_19;
    }
  }

  else if (a1 <= 0xC8u)
  {
    if (a1 && a1 != 120)
    {
      goto LABEL_19;
    }
  }

  else if (a1 != 201 && a1 != 202 && a1 != 250)
  {
LABEL_19:
    v1 = 0;
    v2 = 1;
    return v1 | (v2 << 16);
  }

  v2 = 0;
  return v1 | (v2 << 16);
}

unint64_t sub_2145924C8(unint64_t result)
{
  if (result > 0xD)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2145924D8(uint64_t result)
{
  if ((result + 1) >= 0xF)
  {
    return 0;
  }

  return result;
}

unint64_t sub_214592640(unint64_t result)
{
  if (result > 0xE)
  {
    return 0;
  }

  return result;
}

uint64_t sub_214592CB0(uint64_t result)
{
  if ((result + 2) >= 9)
  {
    return 0;
  }

  return result;
}

unint64_t sub_21459308C(unint64_t result)
{
  if (result > 2999)
  {
    if (result - 3000 >= 8 && result != 4000)
    {
      return 0;
    }
  }

  else if (result - 2000 >= 8 && result >= 4 && result != 1000)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2145932AC(uint64_t result)
{
  if ((result + 1) >= 4 && result != 10)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2145934F8(uint64_t result)
{
  if ((result - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_21459366C(unint64_t result)
{
  if (result > 0xA)
  {
    return 0;
  }

  return result;
}

unint64_t sub_21459367C(unint64_t result)
{
  if (result > 0x31)
  {
    return 0;
  }

  return result;
}

uint64_t sub_21459368C(uint64_t result)
{
  if ((result + 1) >= 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2145936A4(unint64_t result)
{
  if (result - 6 >= 0xF && result >= 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2145936C0(unint64_t result)
{
  if (result - 7 >= 0x11 && result >= 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2145936DC(unint64_t result)
{
  if (result > 0x20)
  {
    return 0;
  }

  return result;
}

unint64_t sub_214593710()
{
  result = qword_27C9133E8;
  if (!qword_27C9133E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C9133E8);
  }

  return result;
}

uint64_t sub_21459375C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2145937C8()
{
  result = qword_27C915868;
  if (!qword_27C915868)
  {
    result = swift_getWitnessTable(aI_32, &type metadata for _ObjCEnumClientMessageType, v0, v1);
    atomic_store(result, &qword_27C915868);
  }

  return result;
}

unint64_t sub_214593820()
{
  result = qword_27C915870;
  if (!qword_27C915870)
  {
    result = swift_getWitnessTable(byte_21475AF00, &type metadata for _ObjCEnumGrammaticalGender, v0, v1);
    atomic_store(result, &qword_27C915870);
  }

  return result;
}

unint64_t sub_214593878()
{
  result = qword_27C915878;
  if (!qword_27C915878)
  {
    result = swift_getWitnessTable(asc_21475AFA0, &type metadata for _ObjCEnumPartOfSpeech, v0, v1);
    atomic_store(result, &qword_27C915878);
  }

  return result;
}

unint64_t sub_2145938D0()
{
  result = qword_27C915880;
  if (!qword_27C915880)
  {
    result = swift_getWitnessTable(byte_21475B040, &type metadata for _ObjCEnumGrammaticalNumber, v0, v1);
    atomic_store(result, &qword_27C915880);
  }

  return result;
}

unint64_t sub_214593928()
{
  result = qword_27C915888;
  if (!qword_27C915888)
  {
    result = swift_getWitnessTable(byte_21475B0E0, &type metadata for _ObjCEnumWallpaperType, v0, v1);
    atomic_store(result, &qword_27C915888);
  }

  return result;
}

unint64_t sub_214593980()
{
  result = qword_27C915890;
  if (!qword_27C915890)
  {
    result = swift_getWitnessTable(aI_33, &type metadata for _ObjCEnumOrderPreviewImageType, v0, v1);
    atomic_store(result, &qword_27C915890);
  }

  return result;
}

unint64_t sub_2145939D8()
{
  result = qword_27C915898;
  if (!qword_27C915898)
  {
    result = swift_getWitnessTable(byte_21475B220, &type metadata for _ObjCEnumRelayGroupParticipantMutationType, v0, v1);
    atomic_store(result, &qword_27C915898);
  }

  return result;
}

unint64_t sub_214593A30()
{
  result = qword_27C9158A0;
  if (!qword_27C9158A0)
  {
    result = swift_getWitnessTable(asc_21475B2C0, &type metadata for _ObjCEnumRelayReachabilityContextChatStyle, v0, v1);
    atomic_store(result, &qword_27C9158A0);
  }

  return result;
}

unint64_t sub_214593A88()
{
  result = qword_27C9158A8;
  if (!qword_27C9158A8)
  {
    result = swift_getWitnessTable(aI_34, &type metadata for _ObjCEnumRelayReachabilityError, v0, v1);
    atomic_store(result, &qword_27C9158A8);
  }

  return result;
}

unint64_t sub_214593AE0()
{
  result = qword_27C9158B0;
  if (!qword_27C9158B0)
  {
    result = swift_getWitnessTable(byte_21475B400, &type metadata for _ObjCEnumSharedETASessionMessage, v0, v1);
    atomic_store(result, &qword_27C9158B0);
  }

  return result;
}

unint64_t sub_214593B38()
{
  result = qword_27C9158B8;
  if (!qword_27C9158B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ObjCEnumBaseWritingDirectionAttributeWritingDirection, &type metadata for _ObjCEnumBaseWritingDirectionAttributeWritingDirection, v0, v1);
    atomic_store(result, &qword_27C9158B8);
  }

  return result;
}

unint64_t sub_214593B90()
{
  result = qword_27C9158C0;
  if (!qword_27C9158C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ObjCEnumTextEffectAttributeTextEffectType, &type metadata for _ObjCEnumTextEffectAttributeTextEffectType, v0, v1);
    atomic_store(result, &qword_27C9158C0);
  }

  return result;
}

unint64_t sub_214593BE8()
{
  result = qword_27C9158C8;
  if (!qword_27C9158C8)
  {
    result = swift_getWitnessTable(byte_21475B5E0, &type metadata for _ObjCEnumBasicEmojiTapbackAssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C9158C8);
  }

  return result;
}

unint64_t sub_214593C40()
{
  result = qword_27C9158D0;
  if (!qword_27C9158D0)
  {
    result = swift_getWitnessTable(aI_35, &type metadata for _ObjCEnumBasicTapBackAssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C9158D0);
  }

  return result;
}

unint64_t sub_214593C98()
{
  result = qword_27C9158D8;
  if (!qword_27C9158D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ObjCEnumBasicTapBackMessageSummaryInfoAssociatedMessageMessageSummaryInfoTypeContentType, &type metadata for _ObjCEnumBasicTapBackMessageSummaryInfoAssociatedMessageMessageSummaryInfoTypeContentType, v0, v1);
    atomic_store(result, &qword_27C9158D8);
  }

  return result;
}

unint64_t sub_214593CF0()
{
  result = qword_27C9158E0;
  if (!qword_27C9158E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ObjCEnumCollaborationNoticeActionActionType, &type metadata for _ObjCEnumCollaborationNoticeActionActionType, v0, v1);
    atomic_store(result, &qword_27C9158E0);
  }

  return result;
}

unint64_t sub_214593D48()
{
  result = qword_27C9158E8;
  if (!qword_27C9158E8)
  {
    result = swift_getWitnessTable(aI_36, &type metadata for _ObjCEnumCustomAcknowledgementAssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C9158E8);
  }

  return result;
}

unint64_t sub_214593DA0()
{
  result = qword_27C9158F0;
  if (!qword_27C9158F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ObjCEnumEditMessageCommandMessageEditType, &type metadata for _ObjCEnumEditMessageCommandMessageEditType, v0, v1);
    atomic_store(result, &qword_27C9158F0);
  }

  return result;
}

unint64_t sub_214593DF8()
{
  result = qword_27C9158F8;
  if (!qword_27C9158F8)
  {
    result = swift_getWitnessTable(asc_21475B9A0, &type metadata for _ObjCEnumEmojiTapBackAssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C9158F8);
  }

  return result;
}

unint64_t sub_214593E50()
{
  result = qword_27C915900;
  if (!qword_27C915900)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ObjCEnumErrorMessageErrorType, &type metadata for _ObjCEnumErrorMessageErrorType, v0, v1);
    atomic_store(result, &qword_27C915900);
  }

  return result;
}

unint64_t sub_214593EA8()
{
  result = qword_27C915908;
  if (!qword_27C915908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ObjCEnumIDSSessionCancelIDSSessionEndedReason, &type metadata for _ObjCEnumIDSSessionCancelIDSSessionEndedReason, v0, v1);
    atomic_store(result, &qword_27C915908);
  }

  return result;
}

unint64_t sub_214593F00()
{
  result = qword_27C915910;
  if (!qword_27C915910)
  {
    result = swift_getWitnessTable(aI_37, &type metadata for _ObjCEnumIDSSessionInvitationTransportType, v0, v1);
    atomic_store(result, &qword_27C915910);
  }

  return result;
}

unint64_t sub_214593F58()
{
  result = qword_27C915918;
  if (!qword_27C915918)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ObjCEnumIDSSessionReinitiateIDSSessionReinitiateSubcommand, &type metadata for _ObjCEnumIDSSessionReinitiateIDSSessionReinitiateSubcommand, v0, v1);
    atomic_store(result, &qword_27C915918);
  }

  return result;
}

unint64_t sub_214593FB0()
{
  result = qword_27C915920;
  if (!qword_27C915920)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ObjCEnumLiteRelayTextMessageMessageType, &type metadata for _ObjCEnumLiteRelayTextMessageMessageType, v0, v1);
    atomic_store(result, &qword_27C915920);
  }

  return result;
}

unint64_t sub_214594008()
{
  result = qword_27C915928;
  if (!qword_27C915928)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ObjCEnumLiteTextMessageMessageType, &type metadata for _ObjCEnumLiteTextMessageMessageType, v0, v1);
    atomic_store(result, &qword_27C915928);
  }

  return result;
}

unint64_t sub_214594060()
{
  result = qword_27C915930;
  if (!qword_27C915930)
  {
    result = swift_getWitnessTable(byte_21475BE00, &type metadata for _ObjCEnumLiteTextMessageEffect, v0, v1);
    atomic_store(result, &qword_27C915930);
  }

  return result;
}

unint64_t sub_2145940B8()
{
  result = qword_27C915938;
  if (!qword_27C915938)
  {
    result = swift_getWitnessTable(asc_21475BEA0, &type metadata for _ObjCEnumLiteTapbackAssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C915938);
  }

  return result;
}

unint64_t sub_214594110()
{
  result = qword_27C915940;
  if (!qword_27C915940)
  {
    result = swift_getWitnessTable(byte_21475BF40, &type metadata for _ObjCEnumMediaMetadataAppleMakerNoteCamera, v0, v1);
    atomic_store(result, &qword_27C915940);
  }

  return result;
}

unint64_t sub_214594168()
{
  result = qword_27C915948;
  if (!qword_27C915948)
  {
    result = swift_getWitnessTable(byte_21475BFE0, &type metadata for _ObjCEnumMorphologySupportedLanguage, v0, v1);
    atomic_store(result, &qword_27C915948);
  }

  return result;
}

unint64_t sub_2145941C0()
{
  result = qword_27C915950;
  if (!qword_27C915950)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ObjCEnumNameAndPhotoPeerDeviceUpdateNameAndPhotoSettingsAudience, &type metadata for _ObjCEnumNameAndPhotoPeerDeviceUpdateNameAndPhotoSettingsAudience, v0, v1);
    atomic_store(result, &qword_27C915950);
  }

  return result;
}

unint64_t sub_214594218()
{
  result = qword_27C915958;
  if (!qword_27C915958)
  {
    result = swift_getWitnessTable(byte_21475C120, &type metadata for _ObjCEnumSMSMessageSMSType, v0, v1);
    atomic_store(result, &qword_27C915958);
  }

  return result;
}

unint64_t sub_214594270()
{
  result = qword_27C915960;
  if (!qword_27C915960)
  {
    result = swift_getWitnessTable(aM_115, &type metadata for _ObjCEnumSMSMessageFilterSubCategoryType, v0, v1);
    atomic_store(result, &qword_27C915960);
  }

  return result;
}

unint64_t sub_2145942C8()
{
  result = qword_27C915968;
  if (!qword_27C915968)
  {
    result = swift_getWitnessTable(aIMd, &type metadata for _ObjCEnumSafetyMonitorMessageSMMessageType, v0, v1);
    atomic_store(result, &qword_27C915968);
  }

  return result;
}

unint64_t sub_214594320()
{
  result = qword_27C915970;
  if (!qword_27C915970)
  {
    result = swift_getWitnessTable(byte_21475C300, &type metadata for _ObjCEnumSafetyMonitorMessageSMsessionType, v0, v1);
    atomic_store(result, &qword_27C915970);
  }

  return result;
}

unint64_t sub_214594378()
{
  result = qword_27C915978;
  if (!qword_27C915978)
  {
    result = swift_getWitnessTable(aM_116, &type metadata for _ObjCEnumSafetyMonitorMessageSMSessionDestinationType, v0, v1);
    atomic_store(result, &qword_27C915978);
  }

  return result;
}

unint64_t sub_2145943D0()
{
  result = qword_27C915980;
  if (!qword_27C915980)
  {
    result = swift_getWitnessTable(byte_21475C440, &type metadata for _ObjCEnumSafetyMonitorMessageCLClientLocationReferenceFrame, v0, v1);
    atomic_store(result, &qword_27C915980);
  }

  return result;
}

unint64_t sub_214594428()
{
  result = qword_27C915988;
  if (!qword_27C915988)
  {
    result = swift_getWitnessTable(byte_21475C4E0, &type metadata for _ObjCEnumSafetyMonitorMessageSMTriggerCategory, v0, v1);
    atomic_store(result, &qword_27C915988);
  }

  return result;
}

unint64_t sub_214594480()
{
  result = qword_27C915990;
  if (!qword_27C915990)
  {
    result = swift_getWitnessTable(aIM_1, &type metadata for _ObjCEnumSafetyMonitorMessageSMDeviceConfigurationLowPowerModeWarningState, v0, v1);
    atomic_store(result, &qword_27C915990);
  }

  return result;
}

unint64_t sub_2145944D8()
{
  result = qword_27C915998;
  if (!qword_27C915998)
  {
    result = swift_getWitnessTable(byte_21475C620, &type metadata for _ObjCEnumScheduledMessageUpdateScheduleState, v0, v1);
    atomic_store(result, &qword_27C915998);
  }

  return result;
}

unint64_t sub_214594530()
{
  result = qword_27C9159A0;
  if (!qword_27C9159A0)
  {
    result = swift_getWitnessTable(aM_117, &type metadata for _ObjCEnumStickerTapBackAssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C9159A0);
  }

  return result;
}

unint64_t sub_214594588()
{
  result = qword_27C9159A8;
  if (!qword_27C9159A8)
  {
    result = swift_getWitnessTable(aIMd_0, &type metadata for _ObjCEnumSyndicationActionItemType, v0, v1);
    atomic_store(result, &qword_27C9159A8);
  }

  return result;
}

unint64_t sub_2145945E0()
{
  result = qword_27C9159B0;
  if (!qword_27C9159B0)
  {
    result = swift_getWitnessTable(byte_21475C800, &type metadata for _ObjCEnumTapBackAssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C9159B0);
  }

  return result;
}

unint64_t sub_214594638()
{
  result = qword_27C9159B8;
  if (!qword_27C9159B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ObjCEnumTapBackMessageSummaryInfoAssociatedMessageMessageSummaryInfoTypeContentType, &type metadata for _ObjCEnumTapBackMessageSummaryInfoAssociatedMessageMessageSummaryInfoTypeContentType, v0, v1);
    atomic_store(result, &qword_27C9159B8);
  }

  return result;
}

unint64_t sub_214594690()
{
  result = qword_27C9159C0;
  if (!qword_27C9159C0)
  {
    result = swift_getWitnessTable(byte_21475C940, &type metadata for _ObjCEnumTextMessageScheduleType, v0, v1);
    atomic_store(result, &qword_27C9159C0);
  }

  return result;
}

unint64_t sub_2145946E8()
{
  result = qword_27C9159C8;
  if (!qword_27C9159C8)
  {
    result = swift_getWitnessTable(byte_21475C9E0, &type metadata for _ObjCEnumWorkoutPreviewConfigurationType, v0, v1);
    atomic_store(result, &qword_27C9159C8);
  }

  return result;
}

unint64_t sub_214594740()
{
  result = qword_27C9159D0;
  if (!qword_27C9159D0)
  {
    result = swift_getWitnessTable(aIM_2, &type metadata for _ObjCEnumWorkoutPreviewGoalTypeIdentifier, v0, v1);
    atomic_store(result, &qword_27C9159D0);
  }

  return result;
}

unint64_t sub_214594798()
{
  result = qword_27C9159D8;
  if (!qword_27C9159D8)
  {
    result = swift_getWitnessTable(byte_21475CB20, &type metadata for _ObjCEnumCollaborationHighlightEvent, v0, v1);
    atomic_store(result, &qword_27C9159D8);
  }

  return result;
}

unint64_t sub_2145947F0()
{
  result = qword_27C9159E0;
  if (!qword_27C9159E0)
  {
    result = swift_getWitnessTable(aM_118, &type metadata for _ObjCEnumIDSClientMessageType, v0, v1);
    atomic_store(result, &qword_27C9159E0);
  }

  return result;
}

unint64_t sub_214594848()
{
  result = qword_27C9159E8;
  if (!qword_27C9159E8)
  {
    result = swift_getWitnessTable(aIM_3, &type metadata for _ObjCEnumIDSDictionaryContext, v0, v1);
    atomic_store(result, &qword_27C9159E8);
  }

  return result;
}

unint64_t sub_2145948A0()
{
  result = qword_27C9159F0;
  if (!qword_27C9159F0)
  {
    result = swift_getWitnessTable(byte_21475CD00, &type metadata for _ObjCEnumIDSInvitationContextType, v0, v1);
    atomic_store(result, &qword_27C9159F0);
  }

  return result;
}

unint64_t sub_2145948F8()
{
  result = qword_27C9159F8;
  if (!qword_27C9159F8)
  {
    result = swift_getWitnessTable(aEm_2, &type metadata for _ObjCEnumIDSClientProtobufMessageType, v0, v1);
    atomic_store(result, &qword_27C9159F8);
  }

  return result;
}

unint64_t sub_214594950()
{
  result = qword_27C915A00;
  if (!qword_27C915A00)
  {
    result = swift_getWitnessTable(byte_21475CE40, &type metadata for _ObjCEnumIDSSampleMessageType, v0, v1);
    atomic_store(result, &qword_27C915A00);
  }

  return result;
}

unint64_t sub_2145949A8()
{
  result = qword_27C915A08;
  if (!qword_27C915A08)
  {
    result = swift_getWitnessTable(byte_21475CEE0, &type metadata for _ObjCEnumStickerEffect, v0, v1);
    atomic_store(result, &qword_27C915A08);
  }

  return result;
}

unint64_t sub_214594A00()
{
  result = qword_27C915A10;
  if (!qword_27C915A10)
  {
    result = swift_getWitnessTable(aIM_4, &type metadata for _ObjCEnumRelayGroupMutation, v0, v1);
    atomic_store(result, &qword_27C915A10);
  }

  return result;
}

unint64_t sub_214594A58()
{
  result = qword_27C915A18;
  if (!qword_27C915A18)
  {
    result = swift_getWitnessTable(byte_21475D020, &type metadata for _ObjCEnumTranscriptBackgroundCommandType, v0, v1);
    atomic_store(result, &qword_27C915A18);
  }

  return result;
}

unint64_t sub_214594AB0()
{
  result = qword_27C915A20;
  if (!qword_27C915A20)
  {
    result = swift_getWitnessTable(aEmp, &type metadata for _ObjCEnumFileTransferAttributeAttachmentSubtype, v0, v1);
    atomic_store(result, &qword_27C915A20);
  }

  return result;
}

unint64_t sub_214594B08()
{
  result = qword_27C915A28;
  if (!qword_27C915A28)
  {
    result = swift_getWitnessTable(aIMp, &type metadata for _ObjCEnumBalloonPluginPayload, v0, v1);
    atomic_store(result, &qword_27C915A28);
  }

  return result;
}

unint64_t sub_214594B60()
{
  result = qword_27C915A30;
  if (!qword_27C915A30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ObjCEnumBasicTextMessageMessageType, &type metadata for _ObjCEnumBasicTextMessageMessageType, v0, v1);
    atomic_store(result, &qword_27C915A30);
  }

  return result;
}

unint64_t sub_214594BB8()
{
  result = qword_27C915A38;
  if (!qword_27C915A38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ObjCEnumEncodedAttachmentsEncodedContent, &type metadata for _ObjCEnumEncodedAttachmentsEncodedContent, v0, v1);
    atomic_store(result, &qword_27C915A38);
  }

  return result;
}

unint64_t sub_214594C10()
{
  result = qword_27C915A40;
  if (!qword_27C915A40)
  {
    result = swift_getWitnessTable(byte_21475D340, &type metadata for _ObjCEnumSMSCTPartContent, v0, v1);
    atomic_store(result, &qword_27C915A40);
  }

  return result;
}

unint64_t sub_214594C68()
{
  result = qword_27C915A48;
  if (!qword_27C915A48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ObjCEnumTextMessageMessageType, &type metadata for _ObjCEnumTextMessageMessageType, v0, v1);
    atomic_store(result, &qword_27C915A48);
  }

  return result;
}

char *sub_2145A8204()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904230, &qword_2146EAB88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904238, &unk_2146EAB90);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = sub_2145A8688(v10);
  v14 = v13;
  sub_213FB2DF4(v10, &qword_27C904230, &qword_2146EAB88);
  if (v1)
  {
    return v7;
  }

  v15 = type metadata accessor for CloudKitSharingToken(0);
  v16 = v0 + *(v15 + 24);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v16 + *(v17 + 28), v5, &unk_27C9131A0, &unk_2146E9D10);
  v18 = sub_2146D8958();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v5, 1, v18) == 1)
  {
    sub_213FB2DF4(v5, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    (*(v19 + 32))(v7, v5, v18);
    (*(v19 + 56))(v7, 0, 1, v18);
    v20 = v0 + *(v15 + 28);
    v21 = *(v20 + 24);
    if (v21 != 1)
    {
      v22 = *(v20 + 16);
      objc_allocWithZone(_BlastDoorCKDeviceToDeviceShareInvitationToken);
      sub_213FDC9D0(v22, v21);
      v7 = sub_2145B0C70(v12, v14, v7, v22, v21);
      sub_213FB54FC(v12, v14);
      return v7;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void sub_2145A8530(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2146D8958();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 sharingInvitationData];
  v8 = sub_2146D8A58();
  v10 = v9;
  v11 = [a1 shareURL];
  if (v11)
  {
    v12 = v11;

    sub_2146D88E8();
    v13 = [a1 participantID];
    if (v13)
    {
      v14 = v13;
      v15 = sub_2146D95B8();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    sub_2145A9478(v8, v10, v6, v15, v17, a2);
  }

  else
  {
    __break(1u);
  }
}

__int128 *sub_2145A8688(uint64_t a1)
{
  v2 = v1;
  v120 = *MEMORY[0x277D85DE8];
  v89 = type metadata accessor for PCSManateeShareInvitation(0);
  MEMORY[0x28223BE20](v89);
  v87 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2146D8998();
  v85 = *(v5 - 8);
  v86 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904230, &qword_2146EAB88);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v82 = (&v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v83 = (&v81 - v12);
  MEMORY[0x28223BE20](v11);
  v14 = &v81 - v13;
  memcpy(v118, v1, sizeof(v118));
  sub_2142EBBC4(v118, &v92);
  sub_2145AE29C(v104);
  memcpy(v119, v1, sizeof(v119));
  sub_2142EB96C(v119);
  v100 = v104[2];
  v101 = v104[3];
  v102 = v104[4];
  v103 = v105;
  v98 = v104[0];
  v99 = v104[1];
  v88 = a1;
  sub_213FB2E54(a1, v14, &qword_27C904230, &qword_2146EAB88);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904238, &unk_2146EAB90);
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v16 + 48;
  if (v17(v14, 1, v15) == 1)
  {
    sub_213FB2DF4(v14, &qword_27C904230, &qword_2146EAB88);
  }

  else
  {
    sub_213FB54FC(*v14, *(v14 + 1));
    v19 = *(v15 + 48);
    v20 = &v14[*(v15 + 64)];
    v21 = *(v20 + 3);
    v108 = *(v20 + 2);
    v109 = v21;
    v110 = *(v20 + 4);
    v111 = *(v20 + 10);
    v22 = *(v20 + 1);
    v106 = *v20;
    v107 = v22;
    sub_2145B12A0(&v14[v19], type metadata accessor for PCSManateeShareInvitation);
    v114 = v100;
    v115 = v101;
    v116 = v102;
    v117 = v103;
    v112 = v98;
    v113 = v99;
    if ((sub_2145AB598(&v106) & 1) == 0)
    {
      v27 = sub_2146D9F58();
      v89 = swift_allocError();
      v29 = v48;
      *&v92 = 0;
      *(&v92 + 1) = 0xE000000000000000;
      sub_2146D9EF8();
      v90 = v92;
      MEMORY[0x2160545D0](0xD00000000000001ALL, 0x80000002147A5090);
      v94 = v108;
      v95 = v109;
      v96 = v110;
      v97 = v111;
      v92 = v106;
      v93 = v107;
      type metadata accessor for PCSShareProtection(0);
      sub_2146D9FE8();
      MEMORY[0x2160545D0](0xD00000000000002ALL, 0x80000002147A50B0);
      v94 = v100;
      v95 = v101;
      v96 = v102;
      v97 = v103;
      v92 = v98;
      v93 = v99;
      sub_2146D9FE8();
      v43 = &v90;
      MEMORY[0x2160545D0](0xD00000000000006CLL, 0x80000002147A50E0);
LABEL_16:
      sub_2146D9F28();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84168], v27);
      swift_willThrow();
      return v43;
    }
  }

  v81 = v18;
  v23 = length_PCSShareProtection(&v98);
  v91 = 0;
  v24 = swift_slowAlloc();
  v25 = encode_PCSShareProtection(v24 + v23 - 1, v23, &v98, &v91);
  if (v25)
  {
    v26 = v25;
    v27 = sub_2146D9F58();
    swift_allocError();
    v29 = v28;
    *&v92 = 0;
    *(&v92 + 1) = 0xE000000000000000;
    sub_2146D9EF8();
    v90 = v92;
    MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A4E80);
    v94 = v100;
    v95 = v101;
    v96 = v102;
    v97 = v103;
    v92 = v98;
    v93 = v99;
    type metadata accessor for PCSShareProtection(0);
    sub_2146D9FE8();
    MEMORY[0x2160545D0](0xD000000000000061, 0x80000002147A4EA0);
    LODWORD(v92) = v26;
LABEL_15:
    v51 = sub_2146DA428();
    v43 = &v90;
    MEMORY[0x2160545D0](v51);

    goto LABEL_16;
  }

  if (v91 != v23)
  {
    v27 = sub_2146D9F58();
    swift_allocError();
    v29 = v49;
    *&v92 = 0;
    *(&v92 + 1) = 0xE000000000000000;
    sub_2146D9EF8();
    v90 = v92;
    MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A4E80);
    v94 = v100;
    v95 = v101;
    v96 = v102;
    v97 = v103;
    v92 = v98;
    v93 = v99;
    type metadata accessor for PCSShareProtection(0);
    sub_2146D9FE8();
    MEMORY[0x2160545D0](0xD000000000000066, 0x80000002147A4F10);
    *&v92 = v91;
    v50 = sub_2146DA428();
    MEMORY[0x2160545D0](v50);

    MEMORY[0x2160545D0](0xD00000000000002ALL, 0x80000002147A4F80);
    *&v92 = v91;
    goto LABEL_15;
  }

  (*(v85 + 13))(v7, *MEMORY[0x277CC92A0], v86);
  v86 = sub_2145B0A38(v24, v23, v7);
  v31 = v30;
  v32 = v87;
  sub_2146D8DE8();
  v33 = v89;
  v34 = v32 + *(v89 + 20);
  *v34 = xmmword_2146E68C0;
  v35 = v32 + *(v33 + 24);
  *v35 = xmmword_2146E68C0;
  v36 = v2[39];
  if (v36 >> 60 != 11)
  {
    v85 = v17;
    if (v36 >> 60 != 15)
    {
      v37 = v2[38];
      sub_213FDCA18(v37, v36);
      sub_213FDC6BC(0, 0xF000000000000000);
      *v35 = v37;
      *(v35 + 8) = v36;
    }

    v38 = *v34;
    v39 = *(v34 + 8);
    v40 = v86;
    *v34 = v86;
    *(v34 + 8) = v31;
    sub_21402D9F8(v40, v31);
    sub_213FDC6BC(v38, v39);
    v41 = *(v34 + 8);
    v42 = v88;
    if (v41 >> 60 == 15)
    {
      goto LABEL_11;
    }

    if (v85(v88, 1, v15) == 1)
    {
LABEL_19:
      v88 = v31;
      sub_2145B0D94();
      v43 = v32;
      v53 = v84;
      v54 = sub_2146D8FC8();
      if (v53)
      {
        sub_2145B12A0(v32, type metadata accessor for PCSManateeShareInvitation);
        sub_213FB54FC(v86, v88);
        return v43;
      }

      v43 = v54;
      v68 = v55;
      v69 = v85;
      if (v85(v42, 1, v15) == 1)
      {
        goto LABEL_32;
      }

      v70 = v42;
      v71 = v69;
      v72 = v82;
      sub_213FB2E54(v70, v82, &qword_27C904230, &qword_2146EAB88);
      if (v71(v72, 1, v15) == 1)
      {
        sub_21402D9F8(v43, v68);
        sub_213FB2DF4(v72, &qword_27C904230, &qword_2146EAB88);
        if (v68 >> 60 != 15)
        {
          v73 = 0;
          v74 = 0xF000000000000000;
          goto LABEL_42;
        }
      }

      else
      {
        v74 = v72[1];
        v89 = *v72;
        v75 = *(v15 + 48);
        sub_21402D9F8(v43, v68);
        sub_2145B12A0(v72 + v75, type metadata accessor for PCSManateeShareInvitation);
        if (v68 >> 60 != 15)
        {
          if (v74 >> 60 != 15)
          {
            sub_21402D9F8(v43, v68);
            v79 = v89;
            sub_213FDCA18(v89, v74);
            v80 = sub_214466780(v43, v68, v79, v74);
            sub_213FDC6BC(v79, v74);
            sub_213FDC6BC(v79, v74);
            sub_213FB54FC(v43, v68);
            sub_213FDC6BC(v43, v68);
            if (v80)
            {
LABEL_32:
              sub_213FB54FC(v86, v88);
LABEL_39:
              sub_2145B12A0(v32, type metadata accessor for PCSManateeShareInvitation);
              return v43;
            }

LABEL_43:
            v76 = sub_2146D9F58();
            swift_allocError();
            v78 = v77;
            sub_2146D9F28();
            (*(*(v76 - 8) + 104))(v78, *MEMORY[0x277D84168], v76);
            swift_willThrow();
            sub_213FB54FC(v43, v68);
            v46 = v86;
            v47 = v88;
            goto LABEL_12;
          }

          v73 = v89;
LABEL_42:
          sub_213FDC6BC(v43, v68);
          sub_213FDC6BC(v73, v74);
          goto LABEL_43;
        }

        v73 = v89;
        if (v74 >> 60 != 15)
        {
          goto LABEL_42;
        }
      }

      sub_213FB54FC(v86, v88);
      sub_213FDC6BC(v43, v68);
      goto LABEL_39;
    }

    v56 = *v34;
    v57 = v83;
    sub_213FB2E54(v42, v83, &qword_27C904230, &qword_2146EAB88);
    if (v85(v57, 1, v15) == 1)
    {
      sub_213FDCA18(v56, v41);
      sub_213FB2DF4(v57, &qword_27C904230, &qword_2146EAB88);
      sub_213FDC6BC(v56, v41);
      sub_213FDC6BC(0, 0xF000000000000000);
    }

    else
    {
      v58 = *v57;
      v59 = v57[1];
      sub_213FDCA18(v56, v41);
      sub_213FB54FC(v58, v59);
      v60 = v57 + *(v15 + 48);
      v61 = (v60 + *(v89 + 20));
      v62 = *v61;
      v63 = v61[1];
      sub_213FDCA18(*v61, v63);
      sub_2145B12A0(v60, type metadata accessor for PCSManateeShareInvitation);
      if (v63 >> 60 == 15)
      {
        v64 = 0;
      }

      else
      {
        v64 = v62;
      }

      if (v63 >> 60 == 15)
      {
        v65 = 0xC000000000000000;
      }

      else
      {
        v65 = v63;
      }

      sub_21402D9F8(v56, v41);
      sub_213FDCA18(v64, v65);
      v66 = sub_214466780(v56, v41, v64, v65);
      sub_213FDC6BC(v64, v65);
      v67 = v64;
      v42 = v88;
      sub_213FDC6BC(v67, v65);
      sub_213FB54FC(v56, v41);
      sub_213FDC6BC(v56, v41);
      if (v66)
      {
        goto LABEL_19;
      }
    }

LABEL_11:
    v43 = sub_2146D9F58();
    swift_allocError();
    v45 = v44;
    sub_2146D9F28();
    (*(*(v43 - 1) + 104))(v45, *MEMORY[0x277D84168], v43);
    swift_willThrow();
    v46 = v86;
    v47 = v31;
LABEL_12:
    sub_213FB54FC(v46, v47);
    sub_2145B12A0(v32, type metadata accessor for PCSManateeShareInvitation);
    return v43;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145A9478@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v168 = a5;
  v159 = a4;
  v170 = a1;
  v171 = a3;
  v173 = a2;
  v207 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904230, &qword_2146EAB88);
  MEMORY[0x28223BE20](v7 - 8);
  v158 = (&v152 - v8);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  MEMORY[0x28223BE20](v160);
  v161 = (&v152 - v9);
  v10 = sub_2146D8958();
  v11 = *(v10 - 8);
  v174 = v10;
  v175 = v11;
  MEMORY[0x28223BE20](v10);
  v163 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CloudKitSharingToken(0);
  v14 = MEMORY[0x28223BE20](v13);
  v162 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v157 = &v152 - v16;
  v17 = sub_2146D8E18();
  MEMORY[0x28223BE20](v17 - 8);
  v165 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for PCSManateeShareInvitation(0);
  MEMORY[0x28223BE20](v166);
  v172 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v20 = swift_allocObject();
  v176 = xmmword_2146E9BF0;
  *(v20 + 16) = xmmword_2146E9BF0;
  v21 = swift_allocObject();
  *(v21 + 16) = v176;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  v23[2] = sub_214059908;
  v23[3] = 0;
  v23[4] = 0x100000;
  v23[5] = sub_21403C354;
  v23[6] = 0;
  *(v22 + 16) = sub_2143A571C;
  *(v22 + 24) = v23;
  *(v21 + 32) = v22;
  v24 = sub_2142E00AC(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v25 = swift_allocObject();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v25 + 16) = sub_2143A5724;
  *(v25 + 24) = v26;
  *(v20 + 32) = v25;
  sub_214042E28(v20, (a6 + 36));
  v27 = *(v13 + 24);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2146EAEB0;
  v29 = sub_214069764(&unk_282652D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v30 = swift_allocObject();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v30 + 16) = sub_21409A858;
  *(v30 + 24) = v31;
  *(v28 + 32) = v30;
  v32 = sub_214069888(&unk_282652E20);
  v33 = swift_allocObject();
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v33 + 16) = sub_21409A860;
  *(v33 + 24) = v34;
  *(v28 + 40) = v33;
  v169 = v27;
  v35 = a6 + v27;
  v36 = v13;
  sub_214042F80(v28, v35);
  v37 = *(v13 + 28);
  v164 = a6;
  v38 = a6 + v37;
  v39 = v173;
  v40 = swift_allocObject();
  *(v40 + 16) = v176;
  v41 = v172;
  v42 = swift_allocObject();
  *(v42 + 16) = v176;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_21405980C;
  *(v43 + 24) = 0;
  *(v42 + 32) = v43;
  v44 = sub_2142E0070(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v45 = swift_allocObject();
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  *(v45 + 16) = sub_21403254C;
  *(v45 + 24) = v46;
  *(v40 + 32) = v45;
  *&v176 = v38;
  v47 = v40;
  v48 = v170;
  sub_214042A28(v47, v38);
  v186[0] = v48;
  v186[1] = v39;
  memset(v187, 0, 40);
  sub_21402D9F8(v48, v39);
  sub_2146D8E08();
  sub_2145B0D94();
  v49 = v167;
  v50 = v166;
  sub_2146D8FD8();
  if (v49)
  {
    (*(v175 + 8))(v171, v174);

    sub_213FB54FC(v48, v39);
    v51 = v164;
    v52 = v176;
LABEL_17:
    v116 = v51[38];
    v117 = v51[39];

    sub_214032564(v116, v117);
    sub_213FB2DF4(v51 + v169, &qword_27C9121F8, &unk_214734DB0);
    v118 = *(v52 + 16);
    v119 = *(v52 + 24);

    return sub_213FDC6D0(v118, v119);
  }

  sub_2145B1120(v41, &v194);
  if (v200)
  {

    v53 = sub_2146D9F58();
    swift_allocError();
    v55 = v54;
    sub_2146D9F28();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D84168], v53);
    swift_willThrow();
    sub_213FB54FC(v48, v39);
    (*(v175 + 8))(v171, v174);
    sub_2145B12A0(v41, type metadata accessor for PCSManateeShareInvitation);
    v51 = v164;
    v52 = v176;
    goto LABEL_17;
  }

  v165 = v36;
  v203 = v196;
  v204 = v197;
  v205 = v198;
  v206 = v199;
  v201 = v194;
  v202 = v195;
  v190 = v196;
  v191 = v197;
  v192 = v198;
  v193 = v199;
  v188 = v194;
  v189 = v195;
  sub_2145AD6DC(&v194, v187);
  v56 = v175;
  v167 = 0;
  memcpy(v186, v187, sizeof(v186));
  v57 = (v41 + *(v50 + 24));
  v58 = *v57;
  v59 = v57[1];
  if (v59 >> 60 != 15)
  {
    sub_213FDCA18(v58, v59);
  }

  v153 = *(v56 + 16);
  v154 = v56 + 16;
  v153(v163, v171, v174);
  sub_2142EBBC4(v186, v185);
  sub_213FDCA18(v58, v59);
  sub_21439FB9C(v185);
  v156 = v58;
  v60 = v185[1];
  v166 = v59;
  v61 = v185[2];
  v62 = v165;
  v63 = v162;
  v155 = *(v165 + 6);
  sub_21439FD04(&v162[v155]);
  sub_21439FE30(&v178);
  v64 = v180;
  memcpy(v63, v186, 0x120uLL);
  *(v63 + 288) = v185[0];
  *(v63 + 304) = v60;
  *(v63 + 320) = v61;
  v65 = v166;
  v66 = (v63 + *(v62 + 7));
  v67 = v179;
  *v66 = v178;
  *(v66 + 1) = v67;
  v66[32] = v64;
  v68 = *(v63 + 296);
  v70 = *(v63 + 304);
  v69 = *(v63 + 312);
  v71 = *(v63 + 320);
  *&v185[0] = *(v63 + 288);
  *(&v185[0] + 1) = v68;
  *&v185[1] = v70;
  *(&v185[1] + 1) = v69;
  LOBYTE(v185[2]) = v71;

  sub_21404F7E0(v70, v69);
  v72 = v156;
  v73 = v65;
  v74 = v167;
  sub_214032118(v156, v65, 2, 0xD000000000000028, 0x800000021478DC40, 0xD00000000000001CLL, 0x800000021478A360);
  v52 = v176;
  v167 = v74;
  if (v74)
  {

    sub_213FDC6BC(v72, v73);

    sub_213FDC6BC(v72, v73);
    sub_2142EB96C(v186);
    v75 = *(v175 + 8);
    v75(v163, v174);
    v76 = v185[1];
    v77 = v185[2];
    v78 = *(v63 + 304);
    v79 = *(v63 + 312);

    sub_214032564(v78, v79);
    *(v63 + 288) = v185[0];
    *(v63 + 304) = v76;
    *(v63 + 320) = v77;
    sub_2145B12A0(v63, type metadata accessor for CloudKitSharingToken);
    v81 = v170;
    v80 = v171;
    v82 = v172;
    v83 = v173;
LABEL_16:
    v185[2] = v190;
    v185[3] = v191;
    v185[4] = v192;
    *&v185[5] = v193;
    v185[0] = v188;
    v185[1] = v189;
    LOBYTE(v178) = 0;
    BYTE8(v185[5]) = 0;
    free_PCSShareProtection(v185);
    sub_213FB54FC(v81, v83);
    v75(v80, v174);
    sub_2145B12A0(v82, type metadata accessor for PCSManateeShareInvitation);
    v51 = v164;
    goto LABEL_17;
  }

  v165 = v66;

  v84 = *(&v185[1] + 1);
  v85 = *&v185[1];
  v86 = v185[2];
  v87 = *(v63 + 304);
  v88 = *(v63 + 312);

  sub_214032564(v87, v88);
  *(v63 + 288) = v185[0];
  *(v63 + 304) = v85;
  *(v63 + 312) = v84;
  *(v63 + 320) = v86;
  v89 = v161;
  sub_213FB2E54(v63 + v155, v161, &unk_27C9131D0, &qword_2146EAA70);
  v90 = *v89;
  LOBYTE(v178) = *(v89 + *(v160 + 32));
  *&v185[0] = 0xD00000000000001DLL;
  *(&v185[0] + 1) = 0x800000021478DC70;
  *&v185[1] = 0xD00000000000001CLL;
  *(&v185[1] + 1) = 0x800000021478A360;
  v91 = v163;
  v92 = v167;
  v93 = v90(v163, &v178, v185);
  v167 = v92;
  if (v92)
  {
    v94 = v156;
    v95 = v166;
    sub_213FDC6BC(v156, v166);

    sub_213FDC6BC(v94, v95);
    sub_2142EB96C(v186);
    v75 = *(v175 + 8);
    v75(v91, v174);

LABEL_15:
    v83 = v173;
    v81 = v170;
    v115 = v162;
    sub_2143A009C(v89, &v162[v155]);
    sub_2145B12A0(v115, type metadata accessor for CloudKitSharingToken);
    v80 = v171;
    v82 = v172;
    goto LABEL_16;
  }

  v96 = v175;
  v97 = v168;
  if ((v93 & 1) == 0)
  {
    v111 = v156;
    v112 = v166;
    sub_213FDC6BC(v156, v166);

    sub_214031C4C();
    v113 = swift_allocError();
    *v114 = 0xD00000000000001DLL;
    v114[1] = 0x800000021478DC70;
    v114[2] = 0xD00000000000001CLL;
    v114[3] = 0x800000021478A360;
    v167 = v113;
    swift_willThrow();
    sub_213FDC6BC(v111, v112);
    sub_2142EB96C(v186);
    v75 = *(v96 + 8);
    v75(v91, v174);
    v89 = v161;
    goto LABEL_15;
  }

  v98 = v161;
  v99 = *(v160 + 28);
  sub_213FB2DF4(v161 + v99, &unk_27C9131A0, &unk_2146E9D10);
  v100 = v174;
  v153((v98 + v99), v91, v174);
  (*(v96 + 56))(v98 + v99, 0, 1, v100);
  sub_2143A009C(v98, &v162[v155]);
  v101 = v165;
  v103 = *v165;
  v102 = *(v165 + 1);
  v105 = *(v165 + 2);
  v104 = *(v165 + 3);
  v106 = v165[32];
  *&v178 = v159;
  *(&v178 + 1) = v97;
  LODWORD(v160) = v106;
  v177[0] = v106;
  *&v185[0] = 0xD000000000000022;
  *(&v185[0] + 1) = 0x800000021478DC90;
  *&v185[1] = 0xD00000000000001CLL;
  *(&v185[1] + 1) = 0x800000021478A360;

  v155 = v104;
  sub_213FDC9D0(v105, v104);
  v107 = v167;
  v161 = v103;
  v108 = (v103)(&v178, v177, v185);
  v167 = v107;
  if (v107)
  {
    v159 = v105;
    v109 = v156;
    v110 = v166;
    sub_213FDC6BC(v156, v166);

LABEL_22:

    v81 = v170;
    sub_213FDC6BC(v109, v110);
    sub_2142EB96C(v186);
    v75 = *(v175 + 8);
    v75(v163, v174);
    v148 = *(v101 + 2);
    v149 = *(v101 + 3);

    sub_213FDC6D0(v148, v149);
    v150 = v162;
    *v101 = v161;
    *(v101 + 1) = v102;
    v151 = v155;
    *(v101 + 2) = v159;
    *(v101 + 3) = v151;
    v101[32] = v160;
    sub_2145B12A0(v150, type metadata accessor for CloudKitSharingToken);
    v80 = v171;
    v82 = v172;
    v83 = v173;
    goto LABEL_16;
  }

  v154 = 0x800000021478DC90;
  v121 = v162;
  if ((v108 & 1) == 0)
  {
    v159 = v105;
    sub_214031C4C();
    v145 = swift_allocError();
    v146 = v154;
    *v147 = 0xD000000000000022;
    v147[1] = v146;
    v147[2] = 0xD00000000000001CLL;
    v147[3] = 0x800000021478A360;
    v167 = v145;
    swift_willThrow();
    v109 = v156;
    v110 = v166;
    sub_213FDC6BC(v156, v166);
    goto LABEL_22;
  }

  sub_213FDC6D0(v105, v155);
  v122 = v175 + 8;
  v123 = *(v175 + 8);

  v124 = v163;
  v175 = v122;
  v163 = v123;
  (v123)(v124, v174);

  sub_213FDC6BC(v156, v166);
  v125 = *(v101 + 2);
  v126 = v121;
  v127 = *(v101 + 3);

  sub_213FDC6D0(v125, v127);
  *v101 = v161;
  *(v101 + 1) = v102;
  *(v101 + 2) = v159;
  *(v101 + 3) = v97;
  v101[32] = v160;
  v128 = v157;
  sub_21404A900(v126, v157);
  v51 = v164;
  v129 = v164[38];
  v130 = v164[39];

  sub_214032564(v129, v130);
  sub_213FB2DF4(v51 + v169, &qword_27C9121F8, &unk_214734DB0);
  v131 = *(v52 + 16);
  v132 = *(v52 + 24);

  sub_213FDC6D0(v131, v132);
  sub_21404A900(v128, v51);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904238, &unk_2146EAB90);
  v134 = *(v133 + 48);
  v135 = v158;
  v136 = v158 + *(v133 + 64);
  v137 = v170;
  v138 = v172;
  v139 = v173;
  *v158 = v170;
  *(v135 + 8) = v139;
  sub_2145B1300(v138, v135 + v134);
  v140 = v204;
  *(v136 + 2) = v203;
  *(v136 + 3) = v140;
  *(v136 + 4) = v205;
  *(v136 + 10) = v206;
  v141 = v202;
  *v136 = v201;
  *(v136 + 1) = v141;
  (*(*(v133 - 8) + 56))(v135, 0, 1, v133);
  sub_21402D9F8(v137, v139);
  v142 = v167;
  v143 = sub_2145A8688(v135);
  if (v142)
  {
    sub_213FB2DF4(v135, &qword_27C904230, &qword_2146EAB88);
    sub_2142EB96C(v186);
    sub_213FDC6BC(v156, v166);
    v180 = v190;
    v181 = v191;
    v182 = v192;
    v183 = v193;
    v178 = v188;
    v179 = v189;
    v177[0] = 0;
    v184 = 0;
    free_PCSShareProtection(&v178);
    sub_213FB54FC(v137, v173);
    (v163)(v171, v174);
    sub_2145B12A0(v172, type metadata accessor for PCSManateeShareInvitation);
    memcpy(v185, v51, sizeof(v185));
    sub_2142EB96C(v185);
    goto LABEL_17;
  }

  sub_213FB54FC(v143, v144);
  sub_213FDC6BC(v156, v166);
  sub_2142EB96C(v186);
  sub_213FB2DF4(v135, &qword_27C904230, &qword_2146EAB88);
  v185[2] = v190;
  v185[3] = v191;
  v185[4] = v192;
  *&v185[5] = v193;
  v185[0] = v188;
  v185[1] = v189;
  LOBYTE(v178) = 0;
  BYTE8(v185[5]) = 0;
  free_PCSShareProtection(v185);
  sub_213FB54FC(v137, v173);
  (v163)(v171, v174);
  return sub_2145B12A0(v172, type metadata accessor for PCSManateeShareInvitation);
}

uint64_t sub_2145AA740(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v68 = *MEMORY[0x277D85DE8];
  if (a3 != result)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v4 = a4 + 24;
  v5 = a2 + 24;
  v6 = a3;
  while (1)
  {
    if (!a4)
    {
      goto LABEL_131;
    }

    if (!a2)
    {
      goto LABEL_130;
    }

    if (*(v4 - 24) != *(v5 - 24))
    {
      return 0;
    }

    v7 = *(v4 - 16);
    v8 = *(v4 - 8);
    v9 = *v4;
    v10 = *(v4 + 8);
    v11 = *(v4 + 16);
    v62 = *(v4 + 24);
    v63 = v6;
    v12 = *(v5 - 16);
    v13 = *(v5 - 8);
    v14 = *v5;
    v61 = *(v5 + 24);
    if (v7)
    {
      break;
    }

    if (v12)
    {
      goto LABEL_138;
    }

    if (v8 != v13)
    {
      return 0;
    }

LABEL_18:
    if (!v9)
    {
      goto LABEL_133;
    }

    v64 = *(v5 + 16);
    v65 = *(v5 + 8);
    if (v8)
    {
      if (v8 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v67 = v8;
        memcpy(__dst, v9, v8);
        v18 = *__dst;
        v19 = v58 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v67 << 16)) << 32);
        v58 = v19;
        if (!v14)
        {
          goto LABEL_132;
        }
      }

      else
      {
        sub_2146D8778();
        swift_allocObject();
        v16 = sub_2146D8718();
        v17 = v16;
        if (v8 >= 0x7FFFFFFF)
        {
          sub_2146D89D8();
          v18 = swift_allocObject();
          *(v18 + 16) = 0;
          *(v18 + 24) = v8;
          v19 = v17 | 0x8000000000000000;
          if (!v14)
          {
            goto LABEL_132;
          }
        }

        else
        {
          v18 = v8 << 32;
          v19 = v16 | 0x4000000000000000;
          if (!v14)
          {
            goto LABEL_132;
          }
        }
      }
    }

    else
    {
      v18 = 0;
      v19 = 0xC000000000000000;
      if (!v14)
      {
        goto LABEL_132;
      }
    }

    if (v13)
    {
      if (v13 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v67 = v13;
        memcpy(__dst, v14, v13);
        v21 = *__dst;
        v22 = v57 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v67 << 16)) << 32);
        v57 = v22;
      }

      else
      {
        sub_2146D8778();
        swift_allocObject();
        v20 = sub_2146D8718();
        if (v13 >= 0x7FFFFFFF)
        {
          sub_2146D89D8();
          v21 = swift_allocObject();
          *(v21 + 16) = 0;
          *(v21 + 24) = v13;
          v22 = v20 | 0x8000000000000000;
        }

        else
        {
          v21 = v13 << 32;
          v22 = v20 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v21 = 0;
      v22 = 0xC000000000000000;
    }

    v23 = v19 >> 62;
    v24 = v22 >> 62;
    if (v19 >> 62 == 3)
    {
      v25 = 0;
      if (!v18 && v19 == 0xC000000000000000 && v22 >> 62 == 3)
      {
        v25 = 0;
        if (!v21 && v22 == 0xC000000000000000)
        {
          goto LABEL_65;
        }
      }
    }

    else if (v23)
    {
      if (v23 == 1)
      {
        LODWORD(v25) = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
          goto LABEL_127;
        }

        v25 = v25;
      }

      else
      {
        v27 = *(v18 + 16);
        v26 = *(v18 + 24);
        v28 = __OFSUB__(v26, v27);
        v25 = v26 - v27;
        if (v28)
        {
          goto LABEL_126;
        }
      }
    }

    else
    {
      v25 = BYTE6(v19);
    }

    if (v24 > 1)
    {
      if (v24 != 2)
      {
        if (v25)
        {
          goto LABEL_117;
        }

LABEL_64:
        sub_213FB54FC(v21, v22);
        sub_213FB54FC(v18, v19);
LABEL_65:
        v35 = v65;
        if (v10 != v65)
        {
          return 0;
        }

        goto LABEL_66;
      }

      v31 = *(v21 + 16);
      v30 = *(v21 + 24);
      v28 = __OFSUB__(v30, v31);
      v29 = v30 - v31;
      if (v28)
      {
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
      }
    }

    else if (v24)
    {
      LODWORD(v29) = HIDWORD(v21) - v21;
      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_123;
      }

      v29 = v29;
    }

    else
    {
      v29 = BYTE6(v22);
    }

    if (v25 != v29)
    {
      sub_213FB54FC(v21, v22);
LABEL_117:
      v53 = v18;
      v54 = v19;
LABEL_120:
      sub_213FB54FC(v53, v54);
      return 0;
    }

    if (v25 < 1)
    {
      goto LABEL_64;
    }

    v32 = v21;
    v33 = v22;
    sub_21402D9F8(v21, v22);
    v34 = sub_2143D9C50(v18, v19, v32, v33);
    sub_213FB54FC(v18, v19);
    sub_213FB54FC(v32, v33);
    result = 0;
    if ((v34 & 1) == 0)
    {
      return result;
    }

    v35 = v65;
    if (v10 != v65)
    {
      return result;
    }

LABEL_66:
    if (!v11)
    {
      goto LABEL_135;
    }

    if (v10)
    {
      if (v10 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v67 = v10;
        memcpy(__dst, v11, v10);
        v38 = *__dst;
        v39 = v56 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v67 << 16)) << 32);
        v56 = v39;
        if (!v64)
        {
          goto LABEL_134;
        }
      }

      else
      {
        sub_2146D8778();
        swift_allocObject();
        v36 = sub_2146D8718();
        v37 = v36;
        if (v10 >= 0x7FFFFFFF)
        {
          sub_2146D89D8();
          v38 = swift_allocObject();
          *(v38 + 16) = 0;
          *(v38 + 24) = v10;
          v39 = v37 | 0x8000000000000000;
          if (!v64)
          {
            goto LABEL_134;
          }
        }

        else
        {
          v38 = v10 << 32;
          v39 = v36 | 0x4000000000000000;
          if (!v64)
          {
            goto LABEL_134;
          }
        }
      }
    }

    else
    {
      v38 = 0;
      v39 = 0xC000000000000000;
      if (!v64)
      {
        goto LABEL_134;
      }
    }

    if (v35)
    {
      if (v35 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v67 = v35;
        memcpy(__dst, v64, v35);
        result = *__dst;
        v41 = v55 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v67 << 16)) << 32);
        v55 = v41;
      }

      else
      {
        sub_2146D8778();
        swift_allocObject();
        v40 = sub_2146D8718();
        if (v35 >= 0x7FFFFFFF)
        {
          sub_2146D89D8();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v35;
          v41 = v40 | 0x8000000000000000;
        }

        else
        {
          result = v35 << 32;
          v41 = v40 | 0x4000000000000000;
        }
      }
    }

    else
    {
      result = 0;
      v41 = 0xC000000000000000;
    }

    v42 = v39 >> 62;
    v43 = v41 >> 62;
    if (v39 >> 62 == 3)
    {
      v44 = 0;
      if (!v38 && v39 == 0xC000000000000000 && v41 >> 62 == 3)
      {
        v44 = 0;
        if (!result && v41 == 0xC000000000000000)
        {
          goto LABEL_111;
        }
      }

LABEL_97:
      if (v43 > 1)
      {
        goto LABEL_103;
      }

      goto LABEL_98;
    }

    if (v42 == 2)
    {
      v46 = *(v38 + 16);
      v45 = *(v38 + 24);
      v28 = __OFSUB__(v45, v46);
      v44 = v45 - v46;
      if (v28)
      {
        goto LABEL_128;
      }

      goto LABEL_97;
    }

    if (v42 == 1)
    {
      LODWORD(v44) = HIDWORD(v38) - v38;
      if (__OFSUB__(HIDWORD(v38), v38))
      {
        goto LABEL_129;
      }

      v44 = v44;
      if (v43 > 1)
      {
LABEL_103:
        if (v43 != 2)
        {
          if (v44)
          {
            goto LABEL_119;
          }

LABEL_110:
          sub_213FB54FC(result, v41);
          result = sub_213FB54FC(v38, v39);
          goto LABEL_111;
        }

        v49 = *(result + 16);
        v48 = *(result + 24);
        v28 = __OFSUB__(v48, v49);
        v47 = v48 - v49;
        if (v28)
        {
          goto LABEL_124;
        }

        goto LABEL_105;
      }
    }

    else
    {
      v44 = BYTE6(v39);
      if (v43 > 1)
      {
        goto LABEL_103;
      }
    }

LABEL_98:
    if (v43)
    {
      LODWORD(v47) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_125;
      }

      v47 = v47;
    }

    else
    {
      v47 = BYTE6(v41);
    }

LABEL_105:
    if (v44 != v47)
    {
      sub_213FB54FC(result, v41);
LABEL_119:
      v53 = v38;
      v54 = v39;
      goto LABEL_120;
    }

    if (v44 < 1)
    {
      goto LABEL_110;
    }

    v50 = result;
    v51 = v41;
    sub_21402D9F8(result, v41);
    v52 = sub_2143D9C50(v38, v39, v50, v51);
    sub_213FB54FC(v38, v39);
    result = sub_213FB54FC(v50, v51);
    if ((v52 & 1) == 0)
    {
      return 0;
    }

LABEL_111:
    if (v62)
    {
      if (!v61)
      {
        goto LABEL_137;
      }

      if (*v62 != *v61)
      {
        return 0;
      }
    }

    else if (v61)
    {
      goto LABEL_139;
    }

    v4 += 56;
    v5 += 56;
    v6 = v63 - 1;
    if (v63 == 1)
    {
      return 1;
    }
  }

  if (v12)
  {
    if (*v7 != *v12 || v8 != v13)
    {
      return 0;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_2145AAE78(int a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v53 = *MEMORY[0x277D85DE8];
  if (a3 != a1)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v4 = a4;
  v5 = a2;
  v49 = 0;
  v6 = (a2 + 16);
  v7 = (a4 + 16);
  v8 = a3;
  while (1)
  {
    if (!v4)
    {
      goto LABEL_87;
    }

    if (!v5)
    {
      goto LABEL_88;
    }

    v9 = *(v7 - 1);
    if (*(v7 - 4) != *(v6 - 4) || v9 != *(v6 - 1))
    {
      return 0;
    }

    v11 = *v7;
    if (!*v7)
    {
      goto LABEL_90;
    }

    v12 = *v6;
    if (v9)
    {
      if (v9 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v52 = v9;
        memcpy(__dst, v11, v9);
        if (!v12)
        {
          goto LABEL_89;
        }

        v15 = *__dst;
        v16 = v47 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v52 << 16)) << 32);
        v47 = v16;
        memset(__dst, 0, sizeof(__dst));
        v52 = v9;
        memcpy(__dst, v12, v9);
        v17 = *__dst;
        v18 = v48 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v52 << 16)) << 32);
        v48 = v18;
      }

      else
      {
        sub_2146D8778();
        swift_allocObject();
        v13 = sub_2146D8718();
        v14 = v13;
        if (v9 >= 0x7FFFFFFF)
        {
          sub_2146D89D8();
          v20 = swift_allocObject();
          *(v20 + 16) = 0;
          *(v20 + 24) = v9;
          if (!v12)
          {
            goto LABEL_89;
          }

          v15 = v20;
          v16 = v14 | 0x8000000000000000;
        }

        else
        {
          if (!v12)
          {
            goto LABEL_89;
          }

          v15 = v9 << 32;
          v16 = v13 | 0x4000000000000000;
        }

        sub_2146D8778();
        swift_allocObject();
        v19 = sub_2146D8718();
        if (v9 >= 0x7FFFFFFF)
        {
          sub_2146D89D8();
          v17 = swift_allocObject();
          *(v17 + 16) = 0;
          *(v17 + 24) = v9;
          v18 = v19 | 0x8000000000000000;
        }

        else
        {
          v17 = v9 << 32;
          v18 = v19 | 0x4000000000000000;
        }
      }

      v21 = v16 >> 62;
      if (v16 >> 62 != 3)
      {
        if (v21 > 1)
        {
          if (v21 == 2)
          {
            v24 = *(v15 + 16);
            v23 = *(v15 + 24);
            v25 = __OFSUB__(v23, v24);
            v22 = v23 - v24;
            if (v25)
            {
              goto LABEL_83;
            }

            LODWORD(v21) = 2;
          }

          else
          {
            v22 = 0;
          }
        }

        else if (v21)
        {
          if (__OFSUB__(HIDWORD(v15), v15))
          {
            goto LABEL_84;
          }

          v22 = HIDWORD(v15) - v15;
          LODWORD(v21) = 1;
        }

        else
        {
          v22 = BYTE6(v16);
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (!v12)
      {
        goto LABEL_89;
      }

      v17 = 0;
      v15 = 0;
      v18 = 0xC000000000000000;
      v16 = 0xC000000000000000;
    }

    v22 = 0;
    LODWORD(v21) = 3;
    if (!v15 && v16 == 0xC000000000000000 && v18 >> 62 == 3)
    {
      v15 = 0;
      v16 = 0xC000000000000000;
      LODWORD(v21) = 3;
      v22 = 0;
      if (!v17 && v18 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_45:
    v26 = v18 >> 62;
    if ((v18 >> 62) <= 1)
    {
      if (v26)
      {
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
        }

        if (v22 != HIDWORD(v17) - v17)
        {
          break;
        }
      }

      else if (v22 != BYTE6(v18))
      {
        break;
      }

      goto LABEL_55;
    }

    if (v26 != 2)
    {
      if (v22)
      {
        goto LABEL_77;
      }

LABEL_5:
      sub_213FB54FC(v17, v18);
      sub_213FB54FC(v15, v16);
      goto LABEL_6;
    }

    v28 = *(v17 + 16);
    v27 = *(v17 + 24);
    v25 = __OFSUB__(v27, v28);
    v29 = v27 - v28;
    if (v25)
    {
      goto LABEL_80;
    }

    if (v22 != v29)
    {
      break;
    }

LABEL_55:
    if (v22 < 1)
    {
      goto LABEL_5;
    }

    if (v21 > 1)
    {
      if (v21 != 2)
      {
        memset(__dst, 0, sizeof(__dst));
        v30 = v17;
        goto LABEL_73;
      }

      v44 = v17;
      v32 = *(v15 + 16);
      v31 = *(v15 + 24);
      v33 = sub_2146D8728();
      if (v33)
      {
        v34 = sub_2146D8758();
        if (__OFSUB__(v32, v34))
        {
          goto LABEL_85;
        }

        v33 += v32 - v34;
      }

      if (__OFSUB__(v31, v32))
      {
        goto LABEL_82;
      }

      sub_2146D8748();
      v35 = v33;
      v36 = v44;
      v37 = v44;
      v38 = v18;
      v39 = v49;
LABEL_70:
      sub_2143D9A20(v35, v37, v38, __dst);
      sub_213FB54FC(v15, v16);
      sub_213FB54FC(v36, v18);
      if ((__dst[0] & 1) == 0)
      {
        return 0;
      }

      v49 = v39;
      v4 = a4;
      v5 = a2;
      goto LABEL_6;
    }

    if (v21)
    {
      v45 = v17;
      if (v15 >> 32 < v15)
      {
        goto LABEL_81;
      }

      v40 = sub_2146D8728();
      if (v40)
      {
        v41 = sub_2146D8758();
        if (__OFSUB__(v15, v41))
        {
          goto LABEL_86;
        }

        v40 += v15 - v41;
      }

      v39 = v49;
      sub_2146D8748();
      v35 = v40;
      v36 = v45;
      v37 = v45;
      v38 = v18;
      goto LABEL_70;
    }

    *__dst = v15;
    *&__dst[8] = v16;
    __dst[10] = BYTE2(v16);
    __dst[11] = BYTE3(v16);
    __dst[12] = BYTE4(v16);
    __dst[13] = BYTE5(v16);
    v30 = v17;
LABEL_73:
    sub_2143D9A20(__dst, v30, v18, &v50);
    sub_213FB54FC(v30, v18);
    if (!v50)
    {
      return 0;
    }

    v5 = a2;
LABEL_6:
    v6 += 3;
    v7 += 3;
    if (!--v8)
    {
      return 1;
    }
  }

  sub_213FB54FC(v17, v18);
LABEL_77:
  sub_213FB54FC(v15, v16);
  return 0;
}

_DWORD *sub_2145AB440(_DWORD *result)
{
  if (*(v1 + 16) != result[4])
  {
    return 0;
  }

  v2 = *v1;
  if (*v1 != *result)
  {
    return 0;
  }

  if (!*(v1 + 8))
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = result;
  v4 = *(result + 1);
  result = sub_2144668E8(*(v1 + 8), *v1);
  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  v7 = v5;
  v8 = sub_2144668E8(v4, v2);
  v10 = v9;
  v11 = sub_214466780(v6, v7, v8, v9);
  sub_213FB54FC(v8, v10);
  sub_213FB54FC(v6, v7);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v1 + 24);
  if (v12 != *(v3 + 3))
  {
    return 0;
  }

  result = *(v1 + 32);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = *(v3 + 4);
  result = sub_2144668E8(result, *(v1 + 24));
  if (v13)
  {
    v15 = result;
    v16 = v14;
    v17 = sub_2144668E8(v13, v12);
    v19 = v18;
    v20 = sub_214466780(v15, v16, v17, v18);
    sub_213FB54FC(v17, v19);
    sub_213FB54FC(v15, v16);
    return v20;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_2145AB598(uint64_t a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *(v1 + 24);
  result = sub_2145AA740(*(a1 + 8), *(a1 + 16), *(v1 + 8), *(v1 + 16));
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v3)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    result = sub_2145AAE78(*v3, *(v3 + 8), *v4, *(v4 + 8));
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v6 = *(v1 + 32);
  if (!v6)
  {
    if (!*(a1 + 32))
    {
      goto LABEL_16;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v7 = *(a1 + 32);
  if (!v7)
  {
    goto LABEL_53;
  }

  v8 = *v6;
  if (*v6 != *v7)
  {
    return 0;
  }

  result = v6[1];
  if (!result)
  {
    goto LABEL_57;
  }

  v9 = v7[1];
  result = sub_2144668E8(result, *v6);
  if (!v9)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v11 = result;
  v12 = v10;
  v13 = sub_2144668E8(v9, v8);
  v15 = v14;
  v16 = sub_214466780(v11, v12, v13, v14);
  sub_213FB54FC(v13, v15);
  result = sub_213FB54FC(v11, v12);
  if (!v16)
  {
    return 0;
  }

LABEL_16:
  v17 = *(v1 + 40);
  if (!v17)
  {
    if (!*(a1 + 40))
    {
      goto LABEL_25;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v18 = *(a1 + 40);
  if (!v18)
  {
    goto LABEL_56;
  }

  if (*v17 != *v18)
  {
    return 0;
  }

  v20 = *(v17 + 8);
  v19 = *(v17 + 16);
  v21 = *(v17 + 24);
  v22 = *(v18 + 8);
  v23 = *(v18 + 16);
  v24 = *(v18 + 24);
  if (v20)
  {
    if (!v22)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    result = 0;
    if (*v20 != *v22 || v19 != v23)
    {
      return result;
    }
  }

  else
  {
    if (v22)
    {
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (v19 != v23)
    {
      return 0;
    }
  }

  if (!v21)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  result = sub_2144668E8(v21, v19);
  if (!v24)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v41 = result;
  v42 = v40;
  v43 = sub_2144668E8(v24, v23);
  v45 = v44;
  v46 = sub_214466780(v41, v42, v43, v44);
  sub_213FB54FC(v43, v45);
  result = sub_213FB54FC(v41, v42);
  if (!v46)
  {
    return 0;
  }

LABEL_25:
  v25 = *(v1 + 64);
  if (!v25)
  {
    if (!*(a1 + 64))
    {
      goto LABEL_33;
    }

    goto LABEL_62;
  }

  v26 = *(a1 + 64);
  if (!v26)
  {
    goto LABEL_60;
  }

  v27 = *v25;
  if (*v25 != *v26)
  {
    return 0;
  }

  result = v25[1];
  if (!result)
  {
    goto LABEL_66;
  }

  v28 = v26[1];
  result = sub_2144668E8(result, *v25);
  if (!v28)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v30 = result;
  v31 = v29;
  v32 = sub_2144668E8(v28, v27);
  v34 = v33;
  v35 = sub_214466780(v30, v31, v32, v33);
  sub_213FB54FC(v32, v34);
  result = sub_213FB54FC(v30, v31);
  if (!v35)
  {
    return 0;
  }

LABEL_33:
  v36 = *(v1 + 72);
  if (v36)
  {
    v37 = v36[1];
    v55 = *v36;
    v56 = v37;
    v57 = *(v36 + 4);
    v38 = *(a1 + 72);
    if (v38)
    {
      v39 = *(v38 + 16);
      v53[0] = *v38;
      v53[1] = v39;
      v54 = *(v38 + 32);
      result = sub_2145AB440(v53);
      if (result)
      {
        goto LABEL_45;
      }

      return 0;
    }

    goto LABEL_65;
  }

  if (*(a1 + 72))
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

LABEL_45:
  v47 = *(v1 + 80);
  v48 = *(a1 + 80);
  if (!v47)
  {
    if (!v48)
    {
      return 1;
    }

    goto LABEL_71;
  }

  if (!v48)
  {
    goto LABEL_69;
  }

  v49 = *(v47 + 8);
  v50 = *v47;
  v51 = *v48;
  v52 = *(v48 + 8);

  return sub_2145AAE78(v51, v52, v50, v49);
}

__n128 sub_2145AB91C@<Q0>(int a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  v10[2] = sub_214059908;
  v10[3] = 0;
  v10[4] = 0x100000;
  v10[5] = sub_21403C354;
  v10[6] = 0;
  *(v9 + 16) = sub_2143A572C;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  sub_214042CD0(inited, &v30);
  if (!a3 || a2 < 1)
  {
    v14 = v31;
    v15 = v32;
    v23 = v30;
    v25 = v31;
    v27 = v32;
    v29 = v33;

    sub_213FDCA18(v14, v15);
    sub_214032024(0, 0xC000000000000000, 2, 0xD000000000000017, 0x800000021478DB00, 0xD00000000000001CLL, 0x800000021478A360);

    v16 = v25;
    v17 = v27;
    if (!v20)
    {
      v21 = v23;
      v18 = v29;

      sub_213FDC6BC(v14, v15);
      goto LABEL_8;
    }

LABEL_6:

    sub_213FDC6BC(v14, v15);

    sub_213FDC6BC(v16, v17);
    return result;
  }

  v34 = a1;
  v11 = sub_2144668E8(a3, a2);
  v13 = v12;
  v14 = v31;
  v15 = v32;
  v22 = v30;
  v24 = v31;
  v26 = v32;
  v28 = v33;

  sub_213FDCA18(v14, v15);
  sub_214032024(v11, v13, 2, 0xD000000000000017, 0x800000021478DB00, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FB54FC(v11, v13);

  v16 = v24;
  v17 = v26;
  if (v20)
  {
    goto LABEL_6;
  }

  v21 = v22;
  v18 = v28;

  sub_213FDC6BC(v14, v15);
  a1 = v34;
LABEL_8:
  *a4 = a1;
  result = v21;
  *(a4 + 8) = v21;
  *(a4 + 24) = v16;
  *(a4 + 32) = v17;
  *(a4 + 40) = v18;
  return result;
}

void sub_2145ABC18(unsigned int a1@<W0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  if (!a1)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_22:
    *a3 = v5;
    return;
  }

  v4 = a1;
  v5 = MEMORY[0x277D84F90];
  v6 = (a2 + 16);
  v25 = a2;
  while (a2)
  {
    sub_2145AB91C(*(v6 - 4), *(v6 - 1), *v6, &v27);
    if (v3)
    {
      goto LABEL_27;
    }

    v7 = v27;
    v8 = v29;
    v26 = v28;
    v9 = v30;
    v10 = v31;
    v11 = v32;
LABEL_14:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_214095390(0, *(v5 + 2) + 1, 1, v5);
    }

    v20 = *(v5 + 2);
    v19 = *(v5 + 3);
    v21 = v5;
    if (v20 >= v19 >> 1)
    {
      v21 = sub_214095390((v19 > 1), v20 + 1, 1, v5);
    }

    *(v21 + 2) = v20 + 1;
    v5 = v21;
    v22 = &v21[48 * v20];
    *(v22 + 8) = v7;
    v3 = 0;
    *(v22 + 5) = v26;
    *(v22 + 6) = v8;
    *(v22 + 7) = v9;
    *(v22 + 8) = v10;
    v22[72] = v11;
    v6 += 3;
    --v4;
    a2 = v25;
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v8 = swift_allocObject();
  v13 = swift_allocObject();
  v13[2] = sub_214059908;
  v13[3] = 0;
  v13[4] = 0x100000;
  v13[5] = sub_21403C354;
  v13[6] = 0;
  *(v8 + 16) = sub_2143A572C;
  *(v8 + 24) = v13;
  *(inited + 32) = v8;
  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x216054E00](0, inited);
    }

    else
    {
    }

    v14 = sub_2145B1398;
  }

  else
  {
    v15 = sub_2142E00AC(inited);
    v8 = swift_allocObject();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v8 + 16) = sub_2145B1364;
    *(v8 + 24) = v16;
    v14 = sub_2145B136C;
  }

  v17 = v14;
  v33 = xmmword_2146ECC00;
  v34 = 2;
  v27 = 0xD000000000000017;
  v28 = 0x800000021478DB00;
  v29 = 0xD00000000000001CLL;
  v30 = 0x800000021478A360;

  sub_213FDCA18(0, 0xF000000000000000);
  v18 = v17(&v33, &v34, &v27);
  if (v3)
  {

    goto LABEL_26;
  }

  if (v18)
  {
    v26 = v17;

    sub_213FDC6BC(0, 0xF000000000000000);
    v10 = *(&v33 + 1);
    v9 = v33;
    sub_21402D9F8(v33, *(&v33 + 1));

    sub_213FDC6BC(0, 0xF000000000000000);
    v7 = 0;
    v11 = 2;
    goto LABEL_14;
  }

  sub_214031C4C();
  swift_allocError();
  *v23 = 0xD000000000000017;
  v23[1] = 0x800000021478DB00;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();
LABEL_26:

  sub_213FDC6BC(0, 0xF000000000000000);

  sub_213FDC6BC(0, 0xF000000000000000);
LABEL_27:
}

uint64_t sub_2145AC034()
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  if ((*(*v0 + 16) * 24) >> 64 != (24 * *(*v0 + 16)) >> 63)
  {
    goto LABEL_85;
  }

  v32 = *(*v0 + 16);
  v33 = swift_slowAlloc();
  v35 = *(v1 + 16);
  if (v35)
  {
    v2 = 0;
    v3 = (v33 + 8);
    v4 = (v1 + 64);
    v34 = v1;
    do
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
      }

      v7 = *v4;
      if (*v4 >> 60 == 15)
      {
        result = sub_2146DA018();
        __break(1u);
        return result;
      }

      v8 = *(v4 - 8);
      v9 = *(v4 - 1);
      v10 = v7 >> 62;
      if ((v7 >> 62) > 1)
      {
        if (v10 != 2)
        {

          sub_213FDCA18(v9, v7);
          v5 = swift_slowAlloc();
          sub_213FDC6BC(v9, v7);
          v6 = 0;
          goto LABEL_5;
        }

        if (__OFSUB__(*(v9 + 24), *(v9 + 16)))
        {
          goto LABEL_75;
        }

        sub_21402D9F8(*(v4 - 1), *v4);

        sub_213FDCA18(v9, v7);
        __dst = swift_slowAlloc();
        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        v11 = v12 - v13;
        if (__OFSUB__(v12, v13))
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (!v10)
        {
          v11 = BYTE6(v7);

          sub_213FDCA18(v9, v7);
          __dst = swift_slowAlloc();
          goto LABEL_19;
        }

        if (__OFSUB__(HIDWORD(v9), v9))
        {
          goto LABEL_76;
        }

        v11 = HIDWORD(v9) - v9;
        sub_21402D9F8(*(v4 - 1), *v4);

        sub_213FDCA18(v9, v7);
        __dst = swift_slowAlloc();
      }

      if (v11 < 0)
      {
        goto LABEL_72;
      }

LABEL_19:
      v36 = v8;
      if (!v11)
      {
        goto LABEL_28;
      }

      if (v10)
      {
        if (v10 == 2)
        {
          v14 = *(v9 + 16);
        }

        else
        {
          v14 = v9;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = v14 + v11;
      if (__OFADD__(v14, v11))
      {
        goto LABEL_73;
      }

      v16 = v11;
      if (v15 < v14)
      {
        goto LABEL_74;
      }

      if (v15 != v14)
      {
        if (v10 != 2)
        {
          if (v10 == 1)
          {
            v5 = __dst;
            if (v9 >> 32 < v15 || v14 < v9 || v9 >> 32 < v14 || v15 < v9)
            {
              goto LABEL_81;
            }

            v18 = sub_2146D8728();
            if (v18)
            {
              v19 = v18;
              v20 = sub_2146D8758();
              if (__OFSUB__(v14, v20))
              {
                goto LABEL_87;
              }

              v21 = (v14 - v20 + v19);
              v22 = sub_2146D8748();
              if (v21)
              {
                if (v22 >= v11)
                {
                  v23 = v11;
                }

                else
                {
                  v23 = v22;
                }

                memmove(__dst, v21, v23);
              }
            }

            else
            {
              sub_2146D8748();
            }

LABEL_31:
            sub_213FDC6BC(v9, v7);
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              goto LABEL_78;
            }

            v6 = HIDWORD(v9) - v9;
LABEL_67:
            v1 = v34;
            v8 = v36;
            goto LABEL_5;
          }

          v5 = __dst;
          v6 = BYTE6(v7);
          if (v14 > BYTE6(v7) || v15 > BYTE6(v7))
          {
            goto LABEL_82;
          }

          v38 = v9;
          v39 = v7;
          v40 = BYTE2(v7);
          v41 = BYTE3(v7);
          v42 = BYTE4(v7);
          v43 = BYTE5(v7);
          if (v16 > 13)
          {
            v16 = 14;
          }

          else if (v16 < 1)
          {
            goto LABEL_66;
          }

          memmove(__dst, &v38 + v14, v16);
LABEL_66:
          sub_213FDC6BC(v9, v7);
          goto LABEL_67;
        }

        if (v14 < *(v9 + 16))
        {
          goto LABEL_80;
        }

        if (*(v9 + 24) < v15)
        {
          goto LABEL_83;
        }

        v24 = sub_2146D8728();
        if (v24)
        {
          v25 = sub_2146D8758();
          if (__OFSUB__(v14, v25))
          {
            goto LABEL_88;
          }

          v24 += v14 - v25;
        }

        if (__OFSUB__(v15, v14))
        {
          goto LABEL_84;
        }

        v26 = sub_2146D8748();
        if (v24)
        {
          if (v26 >= v11)
          {
            v27 = v11;
          }

          else
          {
            v27 = v26;
          }

          memmove(__dst, v24, v27);
        }
      }

      else
      {
LABEL_28:
        if (v10 != 2)
        {
          v17 = v10 == 1;
          v5 = __dst;
          if (v17)
          {
            goto LABEL_31;
          }

          sub_213FDC6BC(v9, v7);
          v6 = BYTE6(v7);
          goto LABEL_67;
        }
      }

      v29 = *(v9 + 16);
      v28 = *(v9 + 24);
      sub_213FDC6BC(v9, v7);
      v30 = __OFSUB__(v28, v29);
      v6 = v28 - v29;
      v8 = v36;
      if (v30)
      {
        goto LABEL_79;
      }

      v1 = v34;
      v5 = __dst;
LABEL_5:
      ++v2;
      *(v3 - 2) = v8;
      *v3 = v6;
      v3[1] = v5;
      v3 += 3;

      sub_213FDC6BC(v9, v7);
      v4 += 6;
    }

    while (v35 != v2);
  }

  result = v32;
  if (HIDWORD(v32))
  {
    goto LABEL_86;
  }

  return result;
}