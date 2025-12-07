uint64_t sub_2203D8D88()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_2203DF1B0(v0[31], v0[32]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[34];
  if (qword_280FA09F8 != -1)
  {
    swift_once();
  }

  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[27];
  v8 = qword_280FA0A00;
  v9 = sub_22042BC90();
  sub_2203C1EE8(0);
  v10 = swift_allocObject();
  v0[10] = 0;
  *(v10 + 16) = xmmword_22042D3F0;
  v0[11] = 0xE000000000000000;
  v0[14] = v4;
  sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
  sub_22042BDF0();
  v11 = v0[10];
  v12 = v0[11];
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_2203C1FA8();
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_22042B8D0("Failed to decode WatchSymbolEvent.Model from process event with error %{public}@", 80, 2, &dword_2203BD000, v8, v9, v10);

  MEMORY[0x223D7C730](v4);
  (*(v7 + 8))(v5, v6);

  v13 = v0[1];

  return v13();
}

uint64_t sub_2203D8F90(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v4 = sub_22042AFD0();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  sub_2203DE8BC(0, &qword_27CF523B0, type metadata accessor for UnwatchSymbolEventUserInfo, MEMORY[0x277D83D88]);
  v2[25] = swift_task_alloc();
  v5 = sub_22042AAC0();
  v2[26] = v5;
  v2[27] = *(v5 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2203D917C, 0, 0);
}

uint64_t sub_2203D917C()
{
  sub_2203DED10(0);
  sub_22042ABD0();
  v1 = v0[25];
  if (!v0[5])
  {
    sub_2203DF738((v0 + 2), &qword_280FA0188, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2203DF5B8);
    v13 = type metadata accessor for UnwatchSymbolEventUserInfo(0);
    (*(*(v13 - 8) + 56))(v1, 1, 1, v13);
LABEL_6:
    sub_2203DF738(v0[25], &unk_27CF523B0, type metadata accessor for UnwatchSymbolEventUserInfo, MEMORY[0x277D83D88], sub_2203DE8BC);
    sub_22042ACE0();
    if (sub_22042ACD0())
    {
      if (qword_280FA09F8 != -1)
      {
        swift_once();
      }

      v14 = qword_280FA0A00;
      v15 = sub_22042BC90();
      sub_22042B8D0("Encountered a UnwatchSymbolEvent without an associated UnwatchSymbolEventUserInfo userInfo value", 96, 2, &dword_2203BD000, v14, v15, MEMORY[0x277D84F90]);
    }

    goto LABEL_13;
  }

  v2 = type metadata accessor for UnwatchSymbolEventUserInfo(0);
  v3 = swift_dynamicCast();
  v4 = *(v2 - 8);
  (*(v4 + 56))(v1, v3 ^ 1u, 1, v2);
  if ((*(v4 + 48))(v1, 1, v2) == 1)
  {
    goto LABEL_6;
  }

  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[25];
  v10 = v0[17];
  (*(v8 + 16))(v6, v9, v7);
  sub_2203DF670(v9, type metadata accessor for UnwatchSymbolEventUserInfo);
  (*(v8 + 32))(v5, v6, v7);
  v0[30] = *(v10 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_sessionManager);
  if (sub_22042B410())
  {

    v11 = sub_22042ABC0();
    v0[31] = sub_22042AC60();
    v0[32] = v12;

    sub_22042A380();
    swift_allocObject();
    sub_22042A370();
    sub_2203DEB0C(&qword_27CF523B8, MEMORY[0x277D688D8], MEMORY[0x277D688E0]);
    sub_22042A360();

    v31 = swift_task_alloc();
    v0[33] = v31;
    *v31 = v0;
    v31[1] = sub_2203D97B4;
    v32 = v0[29];

    return sub_2203DD16C(v32);
  }

  v16 = v0[26];
  v17 = v0[27];
  type metadata accessor for UserEventHistoryEventProcessor.Errors(0);
  sub_2203DEB0C(&qword_27CF52388, type metadata accessor for UserEventHistoryEventProcessor.Errors, &unk_22042D900);
  v18 = swift_allocError();
  (*(v17 + 56))(v19, 2, 2, v16);
  swift_willThrow();
  v20 = v18;
  if (qword_280FA09F8 != -1)
  {
    swift_once();
  }

  v21 = v0[29];
  v22 = v0[26];
  v23 = v0[27];
  v24 = qword_280FA0A00;
  v25 = sub_22042BC90();
  sub_2203C1EE8(0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_22042D3F0;
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v0[14] = v20;
  sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
  sub_22042BDF0();
  v27 = v0[10];
  v28 = v0[11];
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = sub_2203C1FA8();
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  sub_22042B8D0("Failed to decode UnwatchSymbolEvent.Model from process event with error %{public}@", 82, 2, &dword_2203BD000, v24, v25, v26);

  MEMORY[0x223D7C730](v20);
  (*(v23 + 8))(v21, v22);
LABEL_13:

  v29 = v0[1];

  return v29();
}

uint64_t sub_2203D97B4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 272) = v2;

  if (v2)
  {
    v7 = sub_2203D9DF0;
  }

  else
  {
    *(v6 + 280) = a2;
    *(v6 + 288) = a1;
    v7 = sub_2203D98E8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2203D98E8()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[29];
  v5 = v0[17];
  v6 = swift_task_alloc();
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v2;
  v6[5] = v1;
  sub_2203DEB0C(&unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEvent);
  sub_22042B810();

  sub_22042ACE0();
  if (sub_22042ACD0())
  {
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    v7 = qword_280FA0A00;
    sub_2203C1EE8(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_22042D3F0;
    v9 = sub_2203D9FF8(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEvent);
    if (v3)
    {
      *(v8 + 16) = 0;

      v11 = sub_22042BC80();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_22042D3F0;
      v0[12] = 0;
      v0[13] = 0xE000000000000000;
      v0[15] = v3;
      sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
      sub_22042BDF0();
      v13 = v0[12];
      v14 = v0[13];
      *(v12 + 56) = MEMORY[0x277D837D0];
      *(v12 + 64) = sub_2203C1FA8();
      *(v12 + 32) = v13;
      *(v12 + 40) = v14;
      sub_22042B8D0("Saw unwatch symbol event but failed to get JSON representation with error %{public}@", 84, 2, &dword_2203BD000, v7, v11, v12);

      MEMORY[0x223D7C730](v3);
    }

    else
    {
      v15 = v9;
      v16 = v10;
      *(v8 + 56) = MEMORY[0x277D837D0];
      *(v8 + 64) = sub_2203C1FA8();
      *(v8 + 32) = v15;
      *(v8 + 40) = v16;
      v17 = sub_22042BCA0();
      sub_22042B8D0("See unwatch symbol event %{public}@", 35, 2, &dword_2203BD000, v7, v17, v8);
    }
  }

  if (sub_22042B410())
  {
    sub_2203DF42C(v0[21], v0[20], type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    v44 = sub_22042B480();
    v19 = v18;
    v20 = *(v18 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v19 + 16) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_22041EF10(0, v20[2] + 1, 1, v20);
      *(v19 + 16) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_22041EF10((v22 > 1), v23 + 1, 1, v20);
      *(v19 + 16) = v20;
    }

    v25 = v0[31];
    v24 = v0[32];
    v26 = v0[27];
    v42 = v0[26];
    v43 = v0[29];
    v27 = v0[23];
    v28 = v0[21];
    v40 = v0[22];
    v41 = v0[24];
    v30 = v0[19];
    v29 = v0[20];
    v20[2] = v23 + 1;
    sub_2203DF148(v29, v20 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v23, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    v44();
    sub_2203DF1B0(v25, v24);

    sub_2203DF670(v28, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    (*(v27 + 8))(v41, v40);
    (*(v26 + 8))(v43, v42);
  }

  else
  {
    v31 = v0[29];
    v32 = v0[26];
    v33 = v0[27];
    v35 = v0[23];
    v34 = v0[24];
    v37 = v0[21];
    v36 = v0[22];
    sub_2203DF1B0(v0[31], v0[32]);
    sub_2203DF670(v37, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    (*(v35 + 8))(v34, v36);
    (*(v33 + 8))(v31, v32);
  }

  v38 = v0[1];

  return v38();
}

uint64_t sub_2203D9DF0()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_2203DF1B0(v0[31], v0[32]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[34];
  if (qword_280FA09F8 != -1)
  {
    swift_once();
  }

  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[27];
  v8 = qword_280FA0A00;
  v9 = sub_22042BC90();
  sub_2203C1EE8(0);
  v10 = swift_allocObject();
  v0[10] = 0;
  *(v10 + 16) = xmmword_22042D3F0;
  v0[11] = 0xE000000000000000;
  v0[14] = v4;
  sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
  sub_22042BDF0();
  v11 = v0[10];
  v12 = v0[11];
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_2203C1FA8();
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_22042B8D0("Failed to decode UnwatchSymbolEvent.Model from process event with error %{public}@", 82, 2, &dword_2203BD000, v8, v9, v10);

  MEMORY[0x223D7C730](v4);
  (*(v7 + 8))(v5, v6);

  v13 = v0[1];

  return v13();
}

char *sub_2203D9FF8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v8 = sub_22042BA70();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22042B6A0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042B690();
  a1(0);
  sub_2203DEB0C(a2, a3, a4);
  v15 = v35;
  sub_22042B7B0();
  if (!v15)
  {
    (*(v12 + 8))(v14, v11);
    sub_22042BA60();
    v16 = sub_22042BA40();
    v18 = v17;

    (*(v33 + 8))(v10, v34);
    if (v18 >> 60 == 15)
    {
      sub_2203DF244();
      swift_allocError();
      swift_willThrow();
      return v14;
    }

    v19 = objc_opt_self();
    v20 = sub_22042A540();
    v36[0] = 0;
    v21 = [v19 JSONObjectWithData:v20 options:0 error:v36];

    v22 = v36[0];
    if (v21)
    {
      v36[0] = 0;
      v23 = v22;
      v24 = [v19 dataWithJSONObject:v21 options:3 error:v36];
      swift_unknownObjectRelease();
      v25 = v36[0];
      if (v24)
      {
        v26 = sub_22042A550();
        v28 = v27;

        sub_22042BA60();
        v14 = sub_22042BA50();
        v30 = v29;
        sub_2203DF1B0(v26, v28);
        if (v30)
        {
          sub_2203DF298(v16, v18);
          return v14;
        }

        sub_2203DF244();
        swift_allocError();
LABEL_12:
        swift_willThrow();
        sub_2203DF298(v16, v18);
        return v14;
      }

      v14 = v25;
    }

    else
    {
      v14 = v36[0];
    }

    sub_22042A480();

    goto LABEL_12;
  }

  (*(v12 + 8))(v14, v11);
  return v14;
}

uint64_t sub_2203DA3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_2203DE8BC(0, &qword_280FA2378, MEMORY[0x277D68FD8], MEMORY[0x277D83D88]);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2203DA480, 0, 0);
}

uint64_t sub_2203DA480()
{
  __swift_project_boxed_opaque_existential_1((v0[6] + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_groupIDStockMessageTranslator), *(v0[6] + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_groupIDStockMessageTranslator + 24));
  sub_22042B050();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_2203DA54C;
  v2 = v0[8];
  v3 = v0[5];

  return sub_22042407C(v3, v2);
}

uint64_t sub_2203DA54C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(*v1 + 80) = v0;

  sub_2203DF738(v2, &qword_280FA2378, MEMORY[0x277D68FD8], MEMORY[0x277D83D88], sub_2203DE8BC);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2203DA6FC, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2203DA6FC()
{
  if (qword_280FA09F8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[5];
  v3 = qword_280FA0A00;
  sub_2203C1EE8(0);
  v4 = swift_allocObject();
  v0[2] = 0;
  *(v4 + 16) = xmmword_22042D3F0;
  v0[3] = 0xE000000000000000;
  v0[4] = v1;
  sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
  sub_22042BDF0();
  v5 = v0[2];
  v6 = v0[3];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2203C1FA8();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  v7 = sub_22042BCA0();
  sub_22042B8D0("Failed to lookup stock from groupID with error: %{public}@", 58, 2, &dword_2203BD000, v3, v7, v4);
  MEMORY[0x223D7C730](v1);

  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2203DA8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v6 = MEMORY[0x277D83D88];
  sub_2203DE8BC(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_22042A5B0();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_22042B600();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042A5A0();
  sub_22042B5E0();
  v15 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 24);
  sub_2203DF738(a1 + v15, &qword_280FA2228, MEMORY[0x277D21570], v6, sub_2203DE8BC);
  (*(v12 + 32))(a1 + v15, v14, v11);
  (*(v12 + 56))(a1 + v15, 0, 1, v11);
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  v20 = a2;
  v21 = v18;
  v22 = v19;
  sub_2203DEB0C(&qword_280FA1CD0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  sub_22042B810();
  v16 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  return sub_2203DF494(v9, a1, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
}

uint64_t sub_2203DABCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v26 = a3;
  v24 = a2;
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22042ACA0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22042B650();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042B060();
  v15 = sub_22042AC90();
  v16 = (*(v8 + 8))(v10, v7);
  MEMORY[0x223D7B930](v16, v15 / 1000.0);
  v17 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  v18 = *(v17 + 24);
  v19 = MEMORY[0x277D83D88];
  sub_2203DF738(a1 + v18, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88], sub_2203DE8BC);
  (*(v12 + 32))(a1 + v18, v14, v11);
  (*(v12 + 56))(a1 + v18, 0, 1, v11);
  v28 = v26;
  v29 = v24;
  v30 = v27;
  sub_2203DEB0C(&qword_280FA1EE8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionArticle);
  v20 = v25;
  sub_22042B810();
  v21 = *(v17 + 20);
  sub_2203DF738(a1 + v21, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, v19, sub_2203DE8BC);
  sub_2203DF148(v20, a1 + v21, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  return (*(v31 + 56))(a1 + v21, 0, 1, v5);
}

uint64_t sub_2203DAF74(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_2203DE8BC(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18[-v9];
  v11 = [a2 articleID];
  v12 = sub_22042BA30();
  v14 = v13;

  *a1 = v12;
  a1[1] = v14;
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  v19 = a2;
  v20 = a3;
  v21 = a4;
  sub_2203DEB0C(&unk_280FA1798, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  sub_22042B810();
  v15 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  v16 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  return sub_2203DF494(v10, a1 + *(v16 + 20), &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
}

id sub_2203DB15C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v147 = a4;
  v150 = a3;
  v6 = MEMORY[0x277D83D88];
  sub_2203DE8BC(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v136 = &v135 - v8;
  v9 = sub_22042B6C0();
  MEMORY[0x28223BE20](v9 - 8);
  v137 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v135 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203DE8BC(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, v6);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v140 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v146 = &v135 - v17;
  v155 = sub_22042A7E0();
  v156 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v154 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v157 = *(v158 - 8);
  v19 = MEMORY[0x28223BE20](v158);
  v142 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v139 = &v135 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v135 - v23;
  v152 = sub_22042A810();
  v145 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v144 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203DE8BC(0, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, v6);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v135 - v27;
  v29 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures(0);
  v143 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v153 = (&v135 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  ObjectType = swift_getObjectType();
  v31 = [a2 publisherID];
  v148 = v13;
  v141 = v24;
  if (v31)
  {
    v32 = v31;
    v33 = sub_22042BA30();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0xE000000000000000;
  }

  v36 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(a1 + v36);
  v151 = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v38 = sub_22040B3C8(v38);
    *(a1 + v36) = v38;
  }

  swift_beginAccess();
  *(v38 + 3) = v33;
  *(v38 + 4) = v35;

  v39 = [a2 topicIDs];
  v40 = MEMORY[0x277D84F90];
  v138 = v11;
  if (v39)
  {
    v41 = v39;
    v42 = sub_22042BB10();
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  v43 = v151;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(a1 + v43);
  if ((v44 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v45 = sub_22040B3C8(v45);
    *(a1 + v43) = v45;
  }

  swift_beginAccess();
  *(v45 + 2) = v42;

  MEMORY[0x28223BE20](v46);
  v47 = v150;
  *(&v135 - 2) = a2;
  *(&v135 - 1) = v47;
  sub_2203DEB0C(&qword_280FA1DD8, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v48 = v163;
  sub_22042B810();
  v163 = v48;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(a1 + v43);
  if ((v49 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v50 = sub_22040B3C8(v50);
    *(a1 + v43) = v50;
  }

  v51 = v152;
  v52 = v143;
  sub_2203DF148(v153, v28, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  (*(v52 + 56))(v28, 0, 1, v29);
  v53 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  swift_beginAccess();
  sub_2203DF494(v28, &v50[v53], qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  swift_endAccess();
  v54 = v144;
  ObjectType = a2;
  sub_22042BCB0();
  v55 = sub_22042A800();
  (*(v145 + 8))(v54, v51);
  v56 = *(v55 + 16);
  if (v56)
  {
    v145 = a1;
    *&v159[0] = v40;
    sub_2203CE95C(0, v56, 0);
    v57 = *&v159[0];
    v153 = *(v156 + 16);
    v58 = (*(v156 + 80) + 32) & ~*(v156 + 80);
    v144 = v55;
    v59 = v55 + v58;
    v152 = *(v156 + 72);
    v156 += 16;
    v60 = (v156 - 8);
    v61 = v141;
    do
    {
      v62 = v154;
      v63 = v155;
      v64 = v153(v154, v59, v155);
      MEMORY[0x28223BE20](v64);
      *(&v135 - 2) = v62;
      sub_2203DEB0C(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionStock);
      v65 = v163;
      sub_22042B810();
      v163 = v65;
      (*v60)(v62, v63);
      *&v159[0] = v57;
      v67 = *(v57 + 16);
      v66 = *(v57 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_2203CE95C((v66 > 1), v67 + 1, 1);
        v57 = *&v159[0];
      }

      *(v57 + 16) = v67 + 1;
      sub_2203DF148(v61, v57 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v67, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
      v59 += v152;
      --v56;
    }

    while (v56);

    a1 = v145;
  }

  else
  {

    v57 = MEMORY[0x277D84F90];
  }

  v68 = v151;
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *(a1 + v68);
  if ((v69 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v70 = sub_22040B3C8(v70);
    *(a1 + v68) = v70;
  }

  v71 = v163;
  v72 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks;
  swift_beginAccess();
  *&v70[v72] = v57;

  sub_2203DC86C(v159);
  v73 = *&v159[0];
  v74 = BYTE8(v159[0]);
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *(a1 + v68);
  if ((v75 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v76 = sub_22040B3C8(v76);
    *(a1 + v68) = v76;
  }

  v77 = ObjectType;
  v78 = &v76[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed];
  swift_beginAccess();
  *v78 = v73;
  v78[8] = v74;
  sub_2203DCB80(v159);
  v79 = *&v159[0];
  v80 = BYTE8(v159[0]);
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *(a1 + v68);
  if ((v81 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v82 = sub_22040B3C8(v82);
    *(a1 + v68) = v82;
  }

  v83 = &v82[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group];
  swift_beginAccess();
  *v83 = v79;
  v83[8] = v80;
  sub_2203DCEE8(v159);
  v84 = *&v159[0];
  v85 = BYTE8(v159[0]);
  v86 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *(a1 + v68);
  if ((v86 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v87 = sub_22040B3C8(v87);
    *(a1 + v68) = v87;
  }

  v88 = v147;
  v89 = v146;
  v90 = &v87[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction];
  swift_beginAccess();
  *v90 = v84;
  v90[8] = v85;
  sub_2203DF344(v88, v89);
  if ((*(v157 + 48))(v89, 1, v158) == 1)
  {
    sub_2203DF738(v89, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88], sub_2203DE8BC);
    v91 = v148;
  }

  else
  {
    v92 = v89;
    v93 = v139;
    sub_2203DF148(v92, v139, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    v94 = v142;
    sub_2203DF42C(v93, v142, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v91 = v148;
    if (v95)
    {
      sub_2203DF670(v93, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
      v96 = *(a1 + v68);
    }

    else
    {
      type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();

      v98 = sub_22040B3C8(v97);
      v94 = v142;
      v96 = v98;
      sub_2203DF670(v93, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);

      *(a1 + v68) = v96;
    }

    v99 = v140;
    sub_2203DF148(v94, v140, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    (*(v157 + 56))(v99, 0, 1, v158);
    v100 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
    swift_beginAccess();
    sub_2203DF494(v99, &v96[v100], qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    swift_endAccess();
  }

  if ([v77 respondsToSelector_])
  {
    v101 = [v77 float16TitleEncoding];
    if (v101)
    {
      v102 = v101;
      v103 = sub_22042A550();
      v105 = v104;

      v161 = v103;
      v162 = v105;
      v160 = 0;
      memset(v159, 0, sizeof(v159));
      sub_2203DF3D8(v103, v105);
      sub_22042B6B0();
      sub_2203DEB0C(&unk_280FA0618, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v106 = v71;
      sub_22042B7E0();
      if (v71)
      {
        sub_22042ACE0();
        if (sub_22042ACD0())
        {
          v163 = 0;
          v145 = a1;
          if (qword_280FA09F8 != -1)
          {
            swift_once();
          }

          v158 = qword_280FA0A00;
          LODWORD(v157) = sub_22042BC90();
          sub_2203C1EE8(0);
          v107 = swift_allocObject();
          *(v107 + 16) = xmmword_22042D3E0;
          v108 = ObjectType;
          v109 = [ObjectType articleID];
          v110 = sub_22042BA30();
          v112 = v111;

          *(v107 + 56) = MEMORY[0x277D837D0];
          v113 = sub_2203C1FA8();
          *(v107 + 64) = v113;
          *(v107 + 32) = v110;
          *(v107 + 40) = v112;
          *&v159[0] = 0;
          *(&v159[0] + 1) = 0xE000000000000000;
          v161 = v106;
          sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
          sub_22042BDF0();
          v114 = v159[0];
          *(v107 + 96) = MEMORY[0x277D837D0];
          *(v107 + 104) = v113;
          *(v107 + 72) = v114;
          sub_22042B8D0("Failed to include embedding when creating session article from headline %{public}@, error: %{public}@", 101, 2, &dword_2203BD000, v158, v157, v107);
          sub_2203DF1B0(v103, v105);
          MEMORY[0x223D7C730](v106);
          v77 = v108;

          a1 = v145;
          v68 = v151;
        }

        else
        {
          sub_2203DF1B0(v103, v105);
          MEMORY[0x223D7C730](v71);
        }
      }

      else
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          sub_2203DF1B0(v103, v105);
          v115 = *(a1 + v68);
        }

        else
        {
          type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
          swift_allocObject();

          v115 = sub_22040B3C8(v116);
          sub_2203DF1B0(v103, v105);
          v91 = v148;

          *(a1 + v68) = v115;
        }

        v117 = v136;
        sub_2203DF148(v91, v136, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        (*(v135 + 56))(v117, 0, 1, v138);
        v118 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
        swift_beginAccess();
        sub_2203DF494(v117, &v115[v118], qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        swift_endAccess();
      }
    }
  }

  if ([v77 respondsToSelector_])
  {
    v119 = [v77 bodyTextLength];
    if (HIDWORD(v119))
    {
      sub_22042ACE0();
      if (sub_22042ACD0())
      {
        if (qword_280FA09F8 != -1)
        {
          swift_once();
        }

        v120 = qword_280FA0A00;
        v121 = sub_22042BC90();
        sub_2203C1EE8(0);
        v122 = swift_allocObject();
        *(v122 + 16) = xmmword_22042D3F0;
        *&v159[0] = v119;
        v123 = sub_22042BF20();
        v125 = v124;
        *(v122 + 56) = MEMORY[0x277D837D0];
        *(v122 + 64) = sub_2203C1FA8();
        *(v122 + 32) = v123;
        *(v122 + 40) = v125;
        sub_22042B8D0("Found article length %{public}@ that couldn't be converted for storage", 70, 2, &dword_2203BD000, v120, v121, v122);
      }
    }

    else
    {
      v126 = swift_isUniquelyReferenced_nonNull_native();
      v127 = *(a1 + v68);
      if ((v126 & 1) == 0)
      {
        type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
        swift_allocObject();
        v127 = sub_22040B3C8(v127);
        *(a1 + v68) = v127;
      }

      v128 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
      swift_beginAccess();
      *&v127[v128] = v119;
    }
  }

  result = [v77 iAdCategories];
  if (result)
  {
    v130 = result;
    v131 = sub_22042BB10();

    v132 = swift_isUniquelyReferenced_nonNull_native();
    v133 = *(a1 + v68);
    if ((v132 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v133 = sub_22040B3C8(v133);
      *(a1 + v68) = v133;
    }

    v134 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories;
    swift_beginAccess();
    *&v133[v134] = v131;
  }

  return result;
}

id sub_2203DC5D0(unsigned __int8 *a1, void *a2)
{
  v4 = sub_22042AF30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 respondsToSelector_])
  {
    v8 = [a2 hasAudioTrack];
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  if ([a2 respondsToSelector_])
  {
    v9 = [a2 isFeatured];
  }

  else
  {
    v9 = 0;
  }

  a1[1] = v9;
  if ([a2 respondsToSelector_])
  {
    v10 = [a2 isEvergreen];
  }

  else
  {
    v10 = 0;
  }

  a1[2] = v10;
  a1[3] = [a2 isANF];
  a1[4] = [a2 isPaid];
  a1[5] = [a2 hasVideo];
  sub_22042B020();
  v11 = sub_22042AF20();
  (*(v5 + 8))(v7, v4);
  if (v11)
  {
    v12 = [a2 isPaid];
  }

  else
  {
    v12 = 0;
  }

  a1[6] = v12;
  a1[8] = [a2 isPressRelease];
  result = [a2 isAIGenerated];
  a1[7] = result;
  return result;
}

uint64_t sub_2203DC7DC(uint64_t a1)
{
  v2 = sub_22042A7D0();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = (a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0) + 20));

    *v6 = v4;
    v6[1] = v5;
  }

  v7 = sub_22042A7A0();
  v9 = v8;
  v10 = (a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0) + 24));

  *v10 = v7;
  v10[1] = v9;
  return result;
}

uint64_t sub_2203DC86C@<X0>(uint64_t a1@<X8>)
{
  sub_2203DE8BC(0, &qword_280FA2388, MEMORY[0x277D68ED8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_22042B0B0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_22042B030();
  v12 = sub_22042B0A0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v4, 1, v12) == 1)
  {
    sub_2203DF738(v4, &qword_280FA2388, MEMORY[0x277D68ED8], MEMORY[0x277D83D88], sub_2203DE8BC);
    v14 = *MEMORY[0x277D68EF8];
    (*(v6 + 104))(v11, *MEMORY[0x277D68EF8], v5);
  }

  else
  {
    sub_22042B090();
    (*(v13 + 8))(v4, v12);
    (*(v6 + 32))(v11, v9, v5);
    v14 = *MEMORY[0x277D68EF8];
  }

  result = (*(v6 + 88))(v11, v5);
  if (result == v14)
  {
    v16 = 0;
LABEL_12:
    *a1 = v16;
    *(a1 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x277D68EF0])
  {
    v16 = 1;
    goto LABEL_12;
  }

  if (result == *MEMORY[0x277D68EE8])
  {
    v16 = 2;
    goto LABEL_12;
  }

  if (result == *MEMORY[0x277D68EE0])
  {
    v16 = 3;
    goto LABEL_12;
  }

  result = sub_22042BF40();
  __break(1u);
  return result;
}

uint64_t sub_2203DCB80@<X0>(uint64_t a1@<X8>)
{
  sub_2203DE8BC(0, &qword_280FA2378, MEMORY[0x277D68FD8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_22042B110();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_22042B050();
  v12 = sub_22042B100();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v4, 1, v12) == 1)
  {
    sub_2203DF738(v4, &qword_280FA2378, MEMORY[0x277D68FD8], MEMORY[0x277D83D88], sub_2203DE8BC);
    v14 = *MEMORY[0x277D69008];
    (*(v6 + 104))(v11, *MEMORY[0x277D69008], v5);
  }

  else
  {
    sub_22042B0F0();
    (*(v13 + 8))(v4, v12);
    (*(v6 + 32))(v11, v9, v5);
    v14 = *MEMORY[0x277D69008];
  }

  result = (*(v6 + 88))(v11, v5);
  if (result == v14)
  {
    v16 = 0;
LABEL_18:
    *a1 = v16;
    *(a1 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x277D68FF8])
  {
    v16 = 1;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D68FE0])
  {
    v16 = 2;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D68FF0])
  {
    v16 = 3;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D69010])
  {
    v16 = 4;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D69000])
  {
    v16 = 5;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D68FE8])
  {
    v16 = 6;
    goto LABEL_18;
  }

  result = sub_22042BF40();
  __break(1u);
  return result;
}

uint64_t sub_2203DCEE8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22042AF10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22042B0D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042B040();
  sub_22042B0C0();
  (*(v7 + 8))(v9, v6);
  result = (*(v3 + 88))(v5, v2);
  v11 = 0;
  if (result == *MEMORY[0x277D682E8])
  {
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D682F8])
  {
    v11 = 1;
LABEL_18:
    *a1 = v11;
    *(a1 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x277D682E0])
  {
    v11 = 2;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D682B8])
  {
    v11 = 3;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D682F0])
  {
    v11 = 4;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D682C0])
  {
    v11 = 5;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D682D0])
  {
    v11 = 6;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D682C8])
  {
    v11 = 7;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D682D8])
  {
    v11 = 8;
    goto LABEL_18;
  }

  result = sub_22042BF40();
  __break(1u);
  return result;
}

uint64_t sub_2203DD16C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22042A830();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2203DD22C, 0, 0);
}

uint64_t sub_2203DD22C()
{
  __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_stockEntityService), *(v0[3] + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_stockEntityService + 24));
  sub_2203DF5B8(0, &qword_280FA2560, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22042D3F0;
  *(v1 + 32) = sub_22042AAB0();
  *(v1 + 40) = v2;
  v0[7] = sub_22042A9E0();

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_2203DD368;
  v4 = v0[6];

  return MEMORY[0x2821D23D8](v4);
}

uint64_t sub_2203DD368()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2203DD69C;
  }

  else
  {

    v2 = sub_2203DD484;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2203DD484(uint64_t a1)
{
  sub_22042AAB0();
  v2 = sub_22042A820();
  v4 = v3;

  v6 = v1[5];
  v5 = v1[6];
  v7 = v1[4];
  if (v4)
  {
    (*(v6 + 8))(v1[6], v1[4]);

    v8 = v1[1];

    return v8(v2, v4);
  }

  else
  {
    v10 = v1[2];
    type metadata accessor for UserEventHistoryEventProcessor.Errors(0);
    sub_2203DEB0C(&qword_27CF52388, type metadata accessor for UserEventHistoryEventProcessor.Errors, &unk_22042D900);
    swift_allocError();
    v12 = v11;
    v13 = sub_22042AAC0();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v12, v10, v13);
    (*(v14 + 56))(v12, 0, 2, v13);
    swift_willThrow();
    (*(v6 + 8))(v5, v7);

    v15 = v1[1];

    return v15();
  }
}

uint64_t sub_2203DD69C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2203DD708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v20 = a3;
  v21 = a4;
  v8 = MEMORY[0x277D83D88];
  sub_2203DE8BC(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_22042A5B0();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_22042B600();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042A5A0();
  sub_22042B5E0();
  v17 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 24);
  sub_2203DF738(a1 + v17, &qword_280FA2228, MEMORY[0x277D21570], v8, sub_2203DE8BC);
  (*(v14 + 32))(a1 + v17, v16, v13);
  (*(v14 + 56))(a1 + v17, 0, 1, v13);
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  v24 = a2;
  v25 = v20;
  v26 = v21;
  v27 = v22;
  v28 = v23;
  sub_2203DEB0C(&qword_280FA1AE0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
  sub_22042B810();
  v18 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  return sub_2203DF494(v11, a1, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
}

uint64_t sub_2203DDA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v27 = a4;
  v28 = a5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v26 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22042ACA0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22042B650();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042AF50();
  v17 = sub_22042AC90();
  v18 = (*(v10 + 8))(v12, v9);
  MEMORY[0x223D7B930](v18, v17 / 1000.0);
  v19 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  v20 = *(v19 + 24);
  v21 = MEMORY[0x277D83D88];
  sub_2203DF738(a1 + v20, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88], sub_2203DE8BC);
  (*(v14 + 32))(a1 + v20, v16, v13);
  (*(v14 + 56))(a1 + v20, 0, 1, v13);
  v30 = v27;
  v31 = v28;
  v32 = v29;
  sub_2203DEB0C(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionStock);
  v22 = v26;
  sub_22042B810();
  v23 = *(v19 + 20);
  sub_2203DF738(a1 + v23, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, v21, sub_2203DE8BC);
  sub_2203DF148(v22, a1 + v23, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  return (*(v33 + 56))(a1 + v23, 0, 1, v7);
}

uint64_t sub_2203DDDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  v20 = a3;
  v7 = MEMORY[0x277D83D88];
  sub_2203DE8BC(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_22042A5B0();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_22042B600();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042A5A0();
  sub_22042B5E0();
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 24);
  sub_2203DF738(a1 + v16, &qword_280FA2228, MEMORY[0x277D21570], v7, sub_2203DE8BC);
  (*(v13 + 32))(a1 + v16, v15, v12);
  (*(v13 + 56))(a1 + v16, 0, 1, v12);
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0);
  v23 = a2;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  sub_2203DEB0C(&qword_27CF523A8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
  sub_22042B810();
  v17 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  return sub_2203DF494(v10, a1, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
}

uint64_t sub_2203DE0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  v20 = a3;
  v7 = MEMORY[0x277D83D88];
  sub_2203DE8BC(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_22042A5B0();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_22042B600();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042A5A0();
  sub_22042B5E0();
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 24);
  sub_2203DF738(a1 + v16, &qword_280FA2228, MEMORY[0x277D21570], v7, sub_2203DE8BC);
  (*(v13 + 32))(a1 + v16, v15, v12);
  (*(v13 + 56))(a1 + v16, 0, 1, v12);
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0);
  v23 = a2;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  sub_2203DEB0C(&qword_27CF523C0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
  sub_22042B810();
  v17 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  return sub_2203DF494(v10, a1, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
}

uint64_t sub_2203DE3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v21 = a7;
  v11 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  sub_2203DEB0C(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22042B810();
  v15 = *(v21(0) + 20);
  sub_2203DF738(a1 + v15, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88], sub_2203DE8BC);
  sub_2203DF148(v14, a1 + v15, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  return (*(v12 + 56))(a1 + v15, 0, 1, v11);
}

uint64_t sub_2203DE5CC()
{
  v1 = OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_eventStream;
  sub_2203DE8BC(0, &qword_280FA03B8, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D857B8]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_continuation;
  sub_2203DE8BC(0, &qword_280FA03D0, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D85788]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_groupIDStockMessageTranslator));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_stockEntityService));

  return swift_deallocClassInstance();
}

void sub_2203DE75C(uint64_t a1)
{
  sub_2203DE8BC(319, &qword_280FA03B8, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_2203DE8BC(319, &qword_280FA03D0, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2203DE8BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2203DE920(uint64_t a1)
{
  sub_2203DE9E4(319);
  if (v1 <= 0x3F)
  {
    sub_2203DEA78(319);
    if (v2 <= 0x3F)
    {
      sub_2203DEB54(319);
      if (v3 <= 0x3F)
      {
        sub_2203DEBE8(319);
        if (v4 <= 0x3F)
        {
          sub_2203DEC7C(319);
          if (v5 <= 0x3F)
          {
            sub_2203DED10(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2203DE9E4(uint64_t a1)
{
  if (!qword_280FA2440)
  {
    sub_22042AFC0();
    sub_2203DEB0C(&qword_280FA23B8, MEMORY[0x277D68850], MEMORY[0x277D68838]);
    v1 = sub_22042ABE0();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA2440);
    }
  }
}

void sub_2203DEA78(uint64_t a1)
{
  if (!qword_280FA2430)
  {
    sub_22042B010();
    sub_2203DEB0C(&qword_280FA23A0, MEMORY[0x277D68990], MEMORY[0x277D68978]);
    v1 = sub_22042ABE0();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA2430);
    }
  }
}

uint64_t sub_2203DEB0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2203DEB54(uint64_t a1)
{
  if (!qword_280FA2460)
  {
    sub_22042B080();
    sub_2203DEB0C(&qword_280FA2390, MEMORY[0x277D689F0], MEMORY[0x277D689D8]);
    v1 = sub_22042ABE0();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA2460);
    }
  }
}

void sub_2203DEBE8(uint64_t a1)
{
  if (!qword_280FA2450)
  {
    sub_22042AF70();
    sub_2203DEB0C(&qword_280FA23D0, MEMORY[0x277D68488], MEMORY[0x277D68470]);
    v1 = sub_22042ABE0();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA2450);
    }
  }
}

void sub_2203DEC7C(uint64_t a1)
{
  if (!qword_280FA2480)
  {
    sub_22042AF90();
    sub_2203DEB0C(&qword_280FA23C8, MEMORY[0x277D687D0], MEMORY[0x277D687B8]);
    v1 = sub_22042ABE0();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA2480);
    }
  }
}

void sub_2203DED10(uint64_t a1)
{
  if (!qword_280FA2470)
  {
    sub_22042AFE0();
    sub_2203DEB0C(&qword_280FA23B0, MEMORY[0x277D688E8], MEMORY[0x277D688D0]);
    v1 = sub_22042ABE0();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA2470);
    }
  }
}

uint64_t sub_2203DEFEC()
{
  sub_22042BFC0();
  MEMORY[0x223D7C2F0](0);
  return sub_22042BFE0();
}

uint64_t sub_2203DF058(uint64_t a1)
{
  sub_22042BFC0();
  MEMORY[0x223D7C2F0](0);
  return sub_22042BFE0();
}

uint64_t sub_2203DF0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22042AAB0();
  v9 = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v11 = (a1 + *(v10 + 20));

  *v11 = v7;
  v11[1] = v9;
  v12 = (a1 + *(v10 + 24));

  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t sub_2203DF148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2203DF1B0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_2203DF244()
{
  result = qword_27CF52390;
  if (!qword_27CF52390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52390);
  }

  return result;
}

uint64_t sub_2203DF298(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2203DF1B0(result, a2);
  }

  return result;
}

uint64_t sub_2203DF344(uint64_t a1, uint64_t a2)
{
  sub_2203DE8BC(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203DF3D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2203DF42C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2203DF494(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2203DE8BC(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_2203DF5B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2203DF670(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2203DF738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ProtoMessageJSONEncodingError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ProtoMessageJSONEncodingError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2203DF8A0(uint64_t a1)
{
  v1 = sub_22042AAC0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_2203DF8FC()
{
  result = qword_27CF523D8;
  if (!qword_27CF523D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF523D8);
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.stock.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0) + 20);
  sub_2203DFA48(v1 + v3);
  sub_2203DFAD4(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(uint64_t a1)
{
  result = qword_280FA1C18;
  if (!qword_280FA1C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2203DFA48(uint64_t a1)
{
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2203DFAD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.stock.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0);
  sub_2203DF344(v1 + *(v6 + 20), v5);
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_2203DFAD4(v5, a1);
  }

  sub_22042B670();
  v9 = (a1 + *(v7 + 20));
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + *(v7 + 24));
  *v10 = 0;
  v10[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_2203DFA48(v5);
  }

  return result;
}

uint64_t sub_2203DFC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0);
  sub_2203DF344(a1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_2203DFAD4(v6, a2);
  }

  sub_22042B670();
  v10 = (a2 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + *(v8 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2203DFA48(v6);
  }

  return result;
}

uint64_t sub_2203DFDF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203D174C(a1, v7);
  v8 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0) + 20);
  sub_2203DFA48(a2 + v8);
  sub_2203DFAD4(v7, a2 + v8);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.stock.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0) + 20);
  *(v5 + 12) = v16;
  sub_2203DF344(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_22042B670();
    v18 = (v15 + *(v10 + 20));
    *v18 = 0;
    v18[1] = 0;
    v19 = (v15 + *(v10 + 24));
    *v19 = 0;
    v19[1] = 0;
    if (v17(v9, 1, v10) != 1)
    {
      sub_2203DFA48(v9);
    }
  }

  else
  {
    sub_2203DFAD4(v9, v15);
  }

  return sub_2203E0104;
}

void sub_2203E0104(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_2203D174C((*a1)[5], v4);
    sub_2203DFA48(v9 + v3);
    sub_2203DFAD4(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_2203E0210(v5, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  else
  {
    sub_2203DFA48(v9 + v3);
    sub_2203DFAD4(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_2203E0210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.hasStock.getter()
{
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0);
  sub_2203DF344(v0 + *(v4 + 20), v3);
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_2203DFA48(v3);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.clearStock()()
{
  v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0) + 20);
  sub_2203DFA48(v0 + v1);
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.init()@<X0>(uint64_t a2@<X8>)
{
  sub_22042B670();
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0) + 20);
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

uint64_t sub_2203E056C()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_27CF523E0);
  __swift_project_value_buffer(v0, qword_27CF523E0);
  sub_2203E16A8(0, &qword_280FA01C8, sub_2203E170C, MEMORY[0x277D84560]);
  sub_2203E170C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22042D3F0;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "stock";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22042B8A0();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_SessionEventWatchSymbol._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51EE0 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF523E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22042B700();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2203E0844(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_2203E0844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0);
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  sub_2203E15FC(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionStock);
  return sub_22042B7A0();
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203E0950(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_22042B660();
  }

  return result;
}

uint64_t sub_2203E0950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0);
  sub_2203DF344(a1 + *(v12 + 20), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2203DFA48(v7);
  }

  sub_2203DFAD4(v7, v11);
  sub_2203E15FC(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22042B890();
  return sub_2203E0210(v11, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0);
  sub_2203E15FC(&qword_27CF523F8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203E0BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22042B670();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_2203E0C7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2203E0CE4(uint64_t a1)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2203E0DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203E15FC(&qword_27CF52410, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2203E0E20@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51EE0 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF523E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2203E0EC8(uint64_t a1)
{
  v2 = sub_2203E15FC(&qword_27CF523A8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2203E0F34(uint64_t a1, uint64_t a2)
{
  sub_22042BFC0();
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203E0F8C(uint64_t a1, uint64_t a2)
{
  sub_2203E15FC(&qword_27CF523A8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);

  return sub_22042B800();
}

uint64_t sub_2203E1008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22042BFC0();
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B24_SessionEventWatchSymbolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  sub_2203E1568(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0) + 20);
  v16 = *(v12 + 56);
  sub_2203DF344(a1 + v15, v14);
  sub_2203DF344(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_2203DFA48(v14);
LABEL_9:
      sub_22042B680();
      sub_2203E15FC(&qword_27CF52420, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_22042BA10();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_2203DF344(v14, v10);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    sub_2203E0210(v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
LABEL_6:
    sub_2203E0210(v14, sub_2203E1568);
    goto LABEL_7;
  }

  sub_2203DFAD4(&v14[v16], v7);
  v19 = static Com_Apple_Stocks_Personalization_SessionStock.== infix(_:_:)(v10, v7);
  sub_2203E0210(v7, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_2203E0210(v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_2203DFA48(v14);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

void sub_2203E14B4(uint64_t a1)
{
  sub_22042B680();
  if (v1 <= 0x3F)
  {
    sub_2203E16A8(319, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2203E1568(uint64_t a1)
{
  if (!qword_27CF52418)
  {
    sub_2203E16A8(255, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF52418);
    }
  }
}

uint64_t sub_2203E15FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2203E16A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2203E170C(uint64_t a1)
{
  if (!qword_280FA03B0)
  {
    sub_22042B8A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FA03B0);
    }
  }
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.stock.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0) + 20);
  sub_2203DFA48(v1 + v3);
  sub_2203DFAD4(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(uint64_t a1)
{
  result = qword_280FA1B88;
  if (!qword_280FA1B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.stock.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0);
  sub_2203DF344(v1 + *(v6 + 20), v5);
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_2203DFAD4(v5, a1);
  }

  sub_22042B670();
  v9 = (a1 + *(v7 + 20));
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + *(v7 + 24));
  *v10 = 0;
  v10[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_2203DFA48(v5);
  }

  return result;
}

uint64_t sub_2203E19B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0);
  sub_2203DF344(a1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_2203DFAD4(v6, a2);
  }

  sub_22042B670();
  v10 = (a2 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + *(v8 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2203DFA48(v6);
  }

  return result;
}

uint64_t sub_2203E1B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203D174C(a1, v7);
  v8 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0) + 20);
  sub_2203DFA48(a2 + v8);
  sub_2203DFAD4(v7, a2 + v8);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.stock.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0) + 20);
  *(v5 + 12) = v16;
  sub_2203DF344(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_22042B670();
    v18 = (v15 + *(v10 + 20));
    *v18 = 0;
    v18[1] = 0;
    v19 = (v15 + *(v10 + 24));
    *v19 = 0;
    v19[1] = 0;
    if (v17(v9, 1, v10) != 1)
    {
      sub_2203DFA48(v9);
    }
  }

  else
  {
    sub_2203DFAD4(v9, v15);
  }

  return sub_2203E0104;
}

BOOL Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.hasStock.getter()
{
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0);
  sub_2203DF344(v0 + *(v4 + 20), v3);
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_2203DFA48(v3);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.clearStock()()
{
  v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0) + 20);
  sub_2203DFA48(v0 + v1);
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.init()@<X0>(uint64_t a2@<X8>)
{
  sub_22042B670();
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0) + 20);
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

uint64_t sub_2203E211C()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_27CF52428);
  __swift_project_value_buffer(v0, qword_27CF52428);
  sub_2203E16A8(0, &qword_280FA01C8, sub_2203E170C, MEMORY[0x277D84560]);
  sub_2203E170C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22042D3F0;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "stock";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22042B8A0();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51EE8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF52428);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22042B700();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2203E23BC(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_2203E23BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0);
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  sub_2203E2E0C(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionStock);
  return sub_22042B7A0();
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203E24C8(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_22042B660();
  }

  return result;
}

uint64_t sub_2203E24C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0);
  sub_2203DF344(a1 + *(v12 + 20), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2203DFA48(v7);
  }

  sub_2203DFAD4(v7, v11);
  sub_2203E2E0C(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22042B890();
  return sub_2203E0210(v11, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0);
  sub_2203E2E0C(&qword_27CF52440, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203E27A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203E2E0C(&qword_27CF52458, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2203E2824@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51EE8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF52428);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2203E28CC(uint64_t a1)
{
  v2 = sub_2203E2E0C(&qword_27CF523C0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2203E2938(uint64_t a1, uint64_t a2)
{
  sub_2203E2E0C(&qword_27CF523C0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);

  return sub_22042B800();
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B26_SessionEventUnwatchSymbolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  sub_2203E1568(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0) + 20);
  v16 = *(v12 + 56);
  sub_2203DF344(a1 + v15, v14);
  sub_2203DF344(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_2203DFA48(v14);
LABEL_9:
      sub_22042B680();
      sub_2203E2E0C(&qword_27CF52420, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_22042BA10();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_2203DF344(v14, v10);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    sub_2203E0210(v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
LABEL_6:
    sub_2203E0210(v14, sub_2203E1568);
    goto LABEL_7;
  }

  sub_2203DFAD4(&v14[v16], v7);
  v19 = static Com_Apple_Stocks_Personalization_SessionStock.== infix(_:_:)(v10, v7);
  sub_2203E0210(v7, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_2203E0210(v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_2203DFA48(v14);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_2203E2E0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2203E2E54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC21StocksPersonalization29ComputeServiceUnloaderService_configurationManager] = a1;
  *&v3[OBJC_IVAR____TtC21StocksPersonalization29ComputeServiceUnloaderService_workService] = a2;
  v13.receiver = v3;
  v13.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v13, sel_init);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 defaultCenter];
  [v10 addObserver:v9 selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];

  v11 = [v8 defaultCenter];
  [v11 addObserver:v9 selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  return v9;
}

uint64_t sub_2203E2FA0()
{
  v1 = v0;
  v24 = sub_22042A790();
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280FA0CE8 != -1)
  {
    swift_once();
  }

  v5 = qword_280FA0CF0;
  sub_2203C1EE8(0);
  v23 = v6;
  v7 = swift_allocObject();
  v22 = xmmword_22042D3F0;
  *(v7 + 16) = xmmword_22042D3F0;
  sub_22042A420();
  sub_2203C1F50();
  v8 = sub_22042BF20();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2203C1FA8();
  *(v7 + 64) = v11;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v12 = sub_22042BCA0();
  v25 = v5;
  sub_22042B8D0("applicationDidEnterBackground, notification=%{public}@", 54, 2, &dword_2203BD000, v5, v12, v7);

  v21[1] = v1;
  __swift_project_boxed_opaque_existential_1((*(v1 + OBJC_IVAR____TtC21StocksPersonalization29ComputeServiceUnloaderService_configurationManager) + 16), *(*(v1 + OBJC_IVAR____TtC21StocksPersonalization29ComputeServiceUnloaderService_configurationManager) + 40));
  sub_22042AA40();
  sub_2203C1FFC(&v27);
  (*(v2 + 8))(v4, v24);
  v42[12] = v39;
  v42[13] = v40;
  v42[8] = v35;
  v42[9] = v36;
  v42[10] = v37;
  v42[11] = v38;
  v42[4] = v31;
  v42[5] = v32;
  v42[6] = v33;
  v42[7] = v34;
  v42[0] = v27;
  v42[1] = v28;
  v42[2] = v29;
  v42[3] = v30;
  v45 = v39;
  v46 = v40;
  v44[8] = v35;
  v44[9] = v36;
  v44[10] = v37;
  v44[11] = v38;
  v44[4] = v31;
  v44[5] = v32;
  v44[6] = v33;
  v44[7] = v34;
  v44[0] = v27;
  v44[1] = v28;
  v43 = v41;
  v47 = v41;
  v44[2] = v29;
  v44[3] = v30;
  if (sub_2203C30A8(v44) == 1)
  {
    sub_2203C30C0();
    v13 = swift_allocError();
    swift_willThrow();
    v14 = sub_22042BC80();
    v15 = swift_allocObject();
    *(v15 + 16) = v22;
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    v26 = v13;
    sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
    sub_22042BDF0();
    v16 = v27;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = v11;
    *(v15 + 32) = v16;
    sub_22042B8D0("Encountered an error checking unloadGraphOnBackgroundConfiguration enablement: %{public}@", 89, 2, &dword_2203BD000, v25, v14, v15);

    return MEMORY[0x223D7C730](v13);
  }

  else
  {
    v18 = v25;
    sub_2203E34AC(v42);
    v19 = BYTE8(v45);
    v20 = sub_22042BCA0();
    if (v19 == 1)
    {
      sub_22042B8D0("See app entering background, setting graph to unload", 52, 2, &dword_2203BD000, v18, v20, MEMORY[0x277D84F90]);
      return sub_22042B1A0();
    }

    else
    {
      return sub_22042B8D0("See app entering background but unload graph on background as disabled, doing nothing to work service", 101, 2, &dword_2203BD000, v18, v20, MEMORY[0x277D84F90]);
    }
  }
}

id sub_2203E3428()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2203E34AC(uint64_t a1)
{
  sub_2203E3508();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2203E3508()
{
  if (!qword_280FA08C0)
  {
    v0 = sub_22042BCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA08C0);
    }
  }
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.symbol.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(uint64_t a1)
{
  result = qword_280FA2048;
  if (!qword_280FA2048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.entityID.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2203E364C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0) + 20));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_2203E36B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0) + 20));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.symbol.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2203E374C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_2203E37B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0) + 24));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.entityID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.init()@<X0>(uint64_t a2@<X8>)
{
  sub_22042B670();
  result = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v4 = (a2 + *(result + 20));
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + *(result + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t (*Com_Apple_Stocks_Personalization_SessionStock.symbol.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2203E3940;
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_SessionStock.clearSymbol()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0) + 20));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t (*Com_Apple_Stocks_Personalization_SessionStock.entityID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2203E47CC;
}

void sub_2203E3A5C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_SessionStock.clearEntityID()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2203E3C58()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_280FA2078);
  __swift_project_value_buffer(v0, qword_280FA2078);
  sub_2203E4774(0);
  sub_2203E170C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042D3E0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "symbol";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_22042B8A0();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "entity_id";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v10();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_SessionStock._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA2070 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA2078);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22042B700();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
      sub_22042B760();
    }
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203E3FD0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_2203E4048(v3, a1, a2, a3);
    return sub_22042B660();
  }

  return result;
}

uint64_t sub_2203E3FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_22042B860();
  }

  return result;
}

uint64_t sub_2203E4048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_22042B860();
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  sub_2203E472C(&qword_27CF52470, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203E414C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22042B670();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_2203E41D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203E472C(&qword_27CF52480, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionStock);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2203E4250@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA2070 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA2078);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2203E42F8(uint64_t a1)
{
  v2 = sub_2203E472C(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionStock);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2203E4364(uint64_t a1, uint64_t a2)
{
  sub_2203E472C(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionStock);

  return sub_22042B800();
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B13_SessionStockV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22042BF50();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_22042BF50() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v17)
  {
LABEL_17:
    sub_22042B680();
    sub_2203E472C(&qword_27CF52420, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22042BA10() & 1;
  }

  return 0;
}

void sub_2203E4658(uint64_t a1)
{
  sub_22042B680();
  if (v1 <= 0x3F)
  {
    sub_2203E46DC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2203E46DC()
{
  if (!qword_280FA0460)
  {
    v0 = sub_22042BCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA0460);
    }
  }
}

uint64_t sub_2203E472C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2203E4774(uint64_t a1)
{
  if (!qword_280FA01C8)
  {
    sub_2203E170C(255);
    v1 = sub_22042BF30();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA01C8);
    }
  }
}

uint64_t sub_2203E47F4()
{
  v0 = sub_22042AB90();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22042AB80();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_2203C2F20(0, &qword_27CF52490, MEMORY[0x277D837D0], MEMORY[0x277D6D0D8]);
  swift_allocObject();
  result = sub_22042ABB0();
  qword_27CF52488 = result;
  return result;
}

uint64_t sub_2203E49E8(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_2203E4A58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x8000000220431180;
      v3 = 0xD000000000000024;
    }

    else
    {
      v4 = 0xE700000000000000;
      v3 = 0x6E6F6973726576;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x7475706D6F436C6DLL;
    }

    else
    {
      v3 = 0xD000000000000020;
    }

    if (v2)
    {
      v4 = 0xEE007374696E5565;
    }

    else
    {
      v4 = 0x8000000220431150;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x8000000220431180;
      if (v3 != 0xD000000000000024)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE700000000000000;
      if (v3 != 0x6E6F6973726576)
      {
LABEL_26:
        v7 = sub_22042BF50();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x7475706D6F436C6DLL;
    }

    else
    {
      v5 = 0xD000000000000020;
    }

    if (a2)
    {
      v6 = 0xEE007374696E5565;
    }

    else
    {
      v6 = 0x8000000220431150;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

unint64_t sub_2203E4BC4()
{
  if (*v0)
  {
    return 0xD000000000000023;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_2203E4C14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2203E843C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2203E4C54(uint64_t a1)
{
  v2 = sub_2203EA080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203E4C90(uint64_t a1)
{
  v2 = sub_2203EA080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2203E4CCC(void *a1)
{
  sub_2203EA908(0, &qword_280FA02A0, sub_2203EA080, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.OutputConfiguration.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203EA080();
  sub_22042C000();
  v12 = 0;
  sub_22042BED0();
  if (!v1)
  {
    v11 = 1;
    sub_22042BED0();
    v10 = 2;
    sub_22042BED0();
  }

  return (*(v5 + 8))(v7, v4);
}

double sub_2203E4E78@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2203E8560(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_2203E4ED4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_22042BF50() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_22042BF50() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_22042BF50();
}

uint64_t sub_2203E4FCC(void *a1, double a2, double a3)
{
  sub_2203EA908(0, &qword_280FA0290, sub_2203EA8B4, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.UserEventConfiguration.EventConditions.DurationCondition.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203EA8B4();
  sub_22042C000();
  v11[15] = 0;
  sub_22042BEF0();
  if (!v3)
  {
    v11[14] = 1;
    sub_22042BEF0();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2203E5160(void *a1, double a2, double a3)
{
  sub_2203EA908(0, &qword_280FA0298, sub_2203EA690, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.UserEventConfiguration.EventConditions.CodingKeys, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203EA690();
  sub_22042C000();
  *v12 = a2;
  *&v12[1] = a3;
  sub_2203EA738();
  sub_22042BF10();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2203E52E0(void *a1)
{
  v3 = v1;
  sub_2203EA908(0, &qword_280FA0288, sub_2203EA0D4, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.UserEventConfiguration.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203EA0D4();
  sub_22042C000();
  LOBYTE(v11) = 0;
  sub_22042BF00();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = 1;
    sub_2203EA17C();
    sub_22042BF10();
    LOBYTE(v11) = 2;
    sub_22042BF00();
    LOBYTE(v11) = 3;
    sub_22042BF00();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2203E54E0(void *a1)
{
  v3 = v1;
  sub_2203EA908(0, &qword_280FA0280, sub_2203E98E4, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203E98E4();
  sub_22042C000();
  v10 = v3[1];
  v14 = *v3;
  v15 = v10;
  v16 = v3[2];
  v17 = 0;
  sub_2203E9A34();
  sub_22042BF10();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_22042BF00();
    LOBYTE(v14) = 2;
    sub_22042BF00();
    v11 = v3[5];
    v14 = v3[4];
    v15 = v11;
    v16 = v3[6];
    v17 = 3;
    sub_22042BF10();
    LOBYTE(v14) = 4;
    sub_22042BED0();
    LOBYTE(v14) = 5;
    sub_22042BF00();
    v13 = *(v3 + 152);
    v14 = *(v3 + 136);
    v15 = v13;
    *&v16 = *(v3 + 21);
    v17 = 6;
    sub_2203E9A88();
    sub_22042BF10();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2203E5780(void *a1, uint64_t a2, uint64_t a3)
{
  v11[1] = a3;
  sub_2203EA908(0, &qword_280FA02A8, sub_2203E99E0, &type metadata for ComputeServiceConfiguration.UnloadGraphOnBackgroundConfiguration.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203E99E0();
  sub_22042C000();
  v13 = 0;
  sub_22042BEE0();
  if (!v3)
  {
    v12 = 1;
    sub_22042BF00();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2203E5914()
{
  if (*v0)
  {
    return 0x6C696261626F7270;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_2203E5958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (sub_22042BF50() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C696261626F7270 && a2 == 0xEB00000000797469)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22042BF50();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2203E5A38(uint64_t a1)
{
  v2 = sub_2203EA8B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203E5A74(uint64_t a1)
{
  v2 = sub_2203EA8B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2203E5AB0(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_2203E87E4(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
  }
}

uint64_t sub_2203E5B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x52656C6369747261 && a2 == 0xEB00000000646165)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22042BF50();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2203E5BDC(uint64_t a1)
{
  v2 = sub_2203EA690();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203E5C18(uint64_t a1)
{
  v2 = sub_2203EA690();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2203E5C54(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_2203E89D8(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
  }
}

unint64_t sub_2203E5CB8()
{
  v1 = 0x6E6F43746E657665;
  v2 = 0x6369706F5478616DLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2203E5D4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2203E8BA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2203E5D74(uint64_t a1)
{
  v2 = sub_2203EA0D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203E5DB0(uint64_t a1)
{
  v2 = sub_2203EA0D4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2203E5DEC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2203E8D24(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_2203E5E94()
{
  v1 = *v0;
  sub_22042BFC0();
  MEMORY[0x223D7C2F0](v1);
  return sub_22042BFE0();
}

uint64_t sub_2203E5EDC(uint64_t a1)
{
  v2 = *v1;
  sub_22042BFC0();
  MEMORY[0x223D7C2F0](v2);
  return sub_22042BFE0();
}

unint64_t sub_2203E5F20()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6369706F5478616DLL;
    if (v1 == 1)
    {
      v5 = 0xD00000000000001ALL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000019;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (v1 != 5)
    {
      v2 = 0xD000000000000016;
    }

    v3 = 0xD00000000000001CLL;
    if (v1 != 3)
    {
      v3 = 0x416567616B636170;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2203E6024@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2203E8F80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2203E6058(uint64_t a1)
{
  v2 = sub_2203E98E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203E6094(uint64_t a1)
{
  v2 = sub_2203E98E4();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_2203E60D0@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2203E91D4(a2, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v5;
    *(a1 + 160) = v9[10];
    v6 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v6;
    v7 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v7;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    result = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = result;
  }

  return result;
}

BOOL sub_2203E614C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v13[10] = a1[10];
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v14[8] = a2[8];
  v14[9] = v7;
  v14[10] = a2[10];
  v8 = a2[5];
  v14[4] = a2[4];
  v14[5] = v8;
  v9 = a2[7];
  v14[6] = a2[6];
  v14[7] = v9;
  v10 = a2[1];
  v14[0] = *a2;
  v14[1] = v10;
  v11 = a2[3];
  v14[2] = a2[2];
  v14[3] = v11;
  return sub_2203E822C(v13, v14);
}

uint64_t sub_2203E61E0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_2203E6220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_22042BF50() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002204326C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22042BF50();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2203E6304(uint64_t a1)
{
  v2 = sub_2203E99E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203E6340(uint64_t a1)
{
  v2 = sub_2203E99E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2203E637C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2203E96C0(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_2203E6408()
{
  sub_22042BFC0();
  sub_22042BAA0();

  return sub_22042BFE0();
}

uint64_t sub_2203E64E4(uint64_t a1)
{
  sub_22042BAA0();
}

uint64_t sub_2203E65AC(uint64_t a1)
{
  sub_22042BFC0();
  sub_22042BAA0();

  return sub_22042BFE0();
}

unint64_t sub_2203E6684@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2203E9898(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2203E66B4(unint64_t *a1@<X8>)
{
  v2 = 0xEE007374696E5565;
  v3 = 0x7475706D6F436C6DLL;
  v4 = 0x8000000220431180;
  v5 = 0xD000000000000024;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000020;
    v2 = 0x8000000220431150;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2203E674C()
{
  v1 = 0x7475706D6F436C6DLL;
  v2 = 0xD000000000000024;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2203E67E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2203E9898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2203E6808(uint64_t a1)
{
  v2 = sub_2203E7380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203E6844(uint64_t a1)
{
  v2 = sub_2203E7380();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ComputeServiceConfiguration.humanReadableIdentifier.getter()
{
  v1 = *(v0 + 216);

  return v1;
}

uint64_t ComputeServiceConfiguration.identifier.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t ComputeServiceConfiguration.computeUnits.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 192);
  v4 = sub_22042B140();
  v5 = *(*(v4 - 8) + 104);
  if ((v3 - 1) > 2)
  {
    v6 = MEMORY[0x277CFBAE8];
  }

  else
  {
    v6 = qword_278444B50[v3 - 1];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t ComputeServiceConfiguration.packageIDs.getter()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  sub_2203E69D4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22042D3F0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  return v3;
}

void sub_2203E69D4()
{
  if (!qword_280FA2560)
  {
    v0 = sub_22042BF30();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA2560);
    }
  }
}

uint64_t ComputeServiceConfiguration.version.getter()
{
  v1 = *(v0 + 216);

  return v1;
}

uint64_t sub_2203E6A54(_OWORD *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_22042A3A0();
  MEMORY[0x28223BE20](v7 - 8);
  sub_22042A3E0();
  swift_allocObject();
  sub_22042A3D0();
  sub_22042A390();
  sub_22042A3B0();
  sub_2203E7C20();
  v8 = sub_22042A3C0();
  if (v6)
  {
  }

  v10 = v8;
  v11 = v9;
  v22 = sub_22042A3C0();
  v21 = v12;
  sub_2203E7C74();
  v13 = sub_22042A3C0();
  v15 = v14;
  v16 = sub_22042A3C0();
  v20 = v11;
  v18 = v17;
  sub_22042A560();
  sub_22042A560();
  sub_22042A560();
  sub_22042A560();
  sub_2203DF1B0(v16, v18);
  sub_2203DF1B0(v13, v15);
  sub_2203DF1B0(v22, v21);
  sub_2203DF1B0(v10, v20);

  return 0;
}

uint64_t ComputeServiceConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v55 = sub_22042B9A0();
  v51 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22042B980();
  v52 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203EA908(0, &qword_280FA02B0, sub_2203E7380, &type metadata for ComputeServiceConfiguration.CodingKeys, MEMORY[0x277D844C8]);
  v8 = v7;
  v53 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  v11 = a1[3];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2203E7380();
  v12 = v56;
  sub_22042BFF0();
  if (!v12)
  {
    v56 = v6;
    v14 = v54;
    v13 = v55;
    v15 = v53;
    v57[0] = 0;
    sub_2203E73D4();
    v16 = v10;
    sub_22042BEC0();
    v90 = v79;
    v91 = v80;
    v92 = v81;
    v86 = v75;
    v87 = v76;
    v88 = v77;
    v89 = v78;
    v82 = v71;
    v83 = v72;
    v84 = v73;
    v85 = v74;
    v17 = sub_2203E7428();
    v57[0] = 2;
    sub_2203E74F4();
    sub_22042BEC0();
    v48 = v17;
    v47 = v69;
    v46 = v70;
    v57[0] = 3;
    v18 = sub_22042BE80();
    v49 = v19;
    v66 = v90;
    v67 = v91;
    v68 = v92;
    v62 = v86;
    v63 = v87;
    v64 = v88;
    v65 = v89;
    v58 = v82;
    v59 = v83;
    v60 = v84;
    v61 = v85;
    v21 = v18;
    sub_2203CF92C(&v82, v57);
    v22 = v49;

    v45 = v21;
    v42 = sub_2203E6A54(&v82, v48, v47, v46, v21, v22);
    v44 = v23;

    sub_2203CF9DC(&v82);
    v24 = sub_2203E7D68(&qword_280FA04A0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v43 = v16;
    v41 = v24;
    v25 = v14;
    v26 = v13;
    sub_22042B970();
    v27 = v42;
    v28 = v44;
    sub_2203DF3D8(v42, v44);
    sub_2203E7A40(v27, v28, v25);
    sub_2203DF1B0(v27, v28);
    sub_22042B960();
    sub_2203DF1B0(v27, v44);
    (*(v51 + 8))(v25, v26);
    sub_2203E7D68(&qword_280FA04A8, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
    v29 = v4;
    v30 = v56;
    v31 = sub_22042B990();
    v33 = v32;
    (*(v52 + 8))(v30, v29);
    (*(v15 + 8))(v43, v8);
    v34 = v67;
    v35 = v50;
    *(v50 + 128) = v66;
    *(v35 + 144) = v34;
    *(v35 + 160) = v68;
    v36 = v63;
    *(v35 + 64) = v62;
    *(v35 + 80) = v36;
    v37 = v65;
    *(v35 + 96) = v64;
    *(v35 + 112) = v37;
    v38 = v59;
    *v35 = v58;
    *(v35 + 16) = v38;
    v39 = v61;
    *(v35 + 32) = v60;
    *(v35 + 48) = v39;
    *(v35 + 176) = v31;
    *(v35 + 184) = v33;
    *(v35 + 192) = v48;
    *(v35 + 200) = v47;
    v40 = v45;
    *(v35 + 208) = v46;
    *(v35 + 216) = v40;
    *(v35 + 224) = v49;
  }

  return __swift_destroy_boxed_opaque_existential_1(v93);
}

unint64_t sub_2203E7380()
{
  result = qword_280FA08F8;
  if (!qword_280FA08F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA08F8);
  }

  return result;
}

unint64_t sub_2203E73D4()
{
  result = qword_280FA0900;
  if (!qword_280FA0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0900);
  }

  return result;
}

unint64_t sub_2203E7428()
{
  sub_2203EA908(0, &qword_280FA02B0, sub_2203E7380, &type metadata for ComputeServiceConfiguration.CodingKeys, MEMORY[0x277D844C8]);
  result = sub_22042BEB0();
  if (!v0 && result >= 4)
  {
    v2 = result;
    sub_2203E9ADC();
    swift_allocError();
    *v3 = v2;
    *(v3 + 8) = 0;
    swift_willThrow();
    return v2;
  }

  return result;
}

unint64_t sub_2203E74F4()
{
  result = qword_280FA09C8;
  if (!qword_280FA09C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09C8);
  }

  return result;
}

uint64_t ComputeServiceConfiguration.encode(to:)(void *a1)
{
  sub_2203EA908(0, &qword_27CF52498, sub_2203E7380, &type metadata for ComputeServiceConfiguration.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v60 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - v5;
  v7 = v1[9];
  v57 = v1[8];
  v58 = v7;
  v59 = v1[10];
  v8 = v1[5];
  v53 = v1[4];
  v54 = v8;
  v9 = v1[7];
  v55 = v1[6];
  v56 = v9;
  v10 = v1[1];
  v49 = *v1;
  v50 = v10;
  v11 = v1[3];
  v51 = v1[2];
  v52 = v11;
  v21 = *(v1 + 24);
  v20 = *(v1 + 200);
  v12 = *(v1 + 26);
  v18[1] = *(v1 + 27);
  v18[2] = *(v1 + 28);
  v19 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CF92C(&v49, &v38);
  sub_2203E7380();
  sub_22042C000();
  v46 = v57;
  v47 = v58;
  v48 = v59;
  v42 = v53;
  v43 = v54;
  v44 = v55;
  v45 = v56;
  v38 = v49;
  v39 = v50;
  v40 = v51;
  v41 = v52;
  v37 = 0;
  sub_2203E7C20();
  v13 = v22;
  sub_22042BF10();
  if (v13)
  {
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v30 = v42;
    v31 = v43;
    v32 = v44;
    v26 = v38;
    v27 = v39;
    v28 = v40;
    v29 = v41;
    sub_2203CF9DC(&v26);
    return (*(v60 + 8))(v6, v4);
  }

  else
  {
    v15 = v19;
    v16 = v20;
    v17 = v60;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v30 = v42;
    v31 = v43;
    v32 = v44;
    v26 = v38;
    v27 = v39;
    v28 = v40;
    v29 = v41;
    sub_2203CF9DC(&v26);
    v24[0] = 1;
    sub_22042BF00();
    v24[0] = v16;
    v25 = v15;
    v23 = 2;
    sub_2203E7C74();
    sub_22042BF10();
    v24[0] = 3;
    sub_22042BED0();
    return (*(v17 + 8))(v6, v4);
  }
}

uint64_t static ComputeServiceConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 176) == *(a2 + 176) && *(a1 + 184) == *(a2 + 184))
  {
    return 1;
  }

  else
  {
    return sub_22042BF50();
  }
}

uint64_t sub_2203E78E4()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  sub_2203E69D4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22042D3F0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  return v3;
}

uint64_t sub_2203E7940@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 192);
  v4 = sub_22042B140();
  v5 = *(*(v4 - 8) + 104);
  if ((v3 - 1) > 2)
  {
    v6 = MEMORY[0x277CFBAE8];
  }

  else
  {
    v6 = qword_278444B50[v3 - 1];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_2203E79D4()
{
  v1 = *(v0 + 216);

  return v1;
}

uint64_t sub_2203E7A04(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 176) == *(a2 + 176) && *(a1 + 184) == *(a2 + 184))
  {
    return 1;
  }

  else
  {
    return sub_22042BF50();
  }
}

uint64_t sub_2203E7A34@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 184);
  *a1 = *(v1 + 176);
  a1[1] = v2;
}

uint64_t sub_2203E7A40(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_22042B9A0();
      sub_2203E7D68(&qword_280FA04A0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22042B950();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_2203E814C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_2203E814C(v5, v6);
  }

  sub_22042B9A0();
  sub_2203E7D68(&qword_280FA04A0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_22042B950();
}

unint64_t sub_2203E7C20()
{
  result = qword_280FA0908;
  if (!qword_280FA0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0908);
  }

  return result;
}

unint64_t sub_2203E7C74()
{
  result = qword_280FA09D0;
  if (!qword_280FA09D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09D0);
  }

  return result;
}

unint64_t sub_2203E7CCC()
{
  result = qword_280FA08C8;
  if (!qword_280FA08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA08C8);
  }

  return result;
}

uint64_t sub_2203E7D68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_2203E7E08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ComputeServiceConfiguration.UnloadGraphOnBackgroundConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ComputeServiceConfiguration.UnloadGraphOnBackgroundConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_2203E7F80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2203E7FC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2203E8048()
{
  result = qword_27CF524A0;
  if (!qword_27CF524A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524A0);
  }

  return result;
}

unint64_t sub_2203E80A0()
{
  result = qword_280FA08E8;
  if (!qword_280FA08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA08E8);
  }

  return result;
}

unint64_t sub_2203E80F8()
{
  result = qword_280FA08F0;
  if (!qword_280FA08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA08F0);
  }

  return result;
}

uint64_t sub_2203E814C(uint64_t a1, uint64_t a2)
{
  result = sub_22042A430();
  if (!result || (result = sub_22042A460(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22042A450();
      sub_22042B9A0();
      sub_2203E7D68(&qword_280FA04A0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22042B950();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_2203E822C(double *a1, uint64_t a2)
{
  v4 = *(a1 + 2);
  v6 = *(a1 + 3);
  v5 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  result = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8) || (sub_22042BF50()) && (v4 == v8 && v6 == v9 || (sub_22042BF50()) && (v5 == v10 && v7 == v11 || (sub_22042BF50()) && *(a1 + 6) == *(a2 + 48) && *(a1 + 7) == *(a2 + 56))
  {
    if (v12 = *(a1 + 10), v13 = *(a1 + 11), v14 = *(a1 + 12), v15 = *(a1 + 13), v16 = *(a2 + 80), v17 = *(a2 + 88), v18 = *(a2 + 96), v19 = *(a2 + 104), *(a1 + 8) == *(a2 + 64)) && *(a1 + 9) == *(a2 + 72) || (sub_22042BF50())
    {
      if (v12 == v16 && v13 == v17 || (sub_22042BF50()) && (v14 == v18 && v15 == v19 || (sub_22042BF50()) && (*(a1 + 14) == *(a2 + 112) && *(a1 + 15) == *(a2 + 120) || (sub_22042BF50()) && *(a1 + 16) == *(a2 + 128) && *(a1 + 17) == *(a2 + 136) && a1[18] == *(a2 + 144) && a1[19] == *(a2 + 152) && *(a1 + 20) == *(a2 + 160) && *(a1 + 21) == *(a2 + 168))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_2203E843C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001CLL && 0x80000002204326E0 == a2;
  if (v4 || (sub_22042BF50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000220432700 == a2 || (sub_22042BF50() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000220432730 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_22042BF50();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2203E8560@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  sub_2203EA908(0, &qword_280FA02D8, sub_2203EA080, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.OutputConfiguration.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203EA080();
  sub_22042BFF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v24;
  v27 = 0;
  v11 = sub_22042BE80();
  v13 = v12;
  v23 = v11;
  v26 = 1;
  v21 = sub_22042BE80();
  v22 = v14;
  v25 = 2;
  v15 = sub_22042BE80();
  v16 = v8;
  v18 = v17;
  (*(v9 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v23;
  v10[1] = v13;
  v20 = v22;
  v10[2] = v21;
  v10[3] = v20;
  v10[4] = v15;
  v10[5] = v18;
  return result;
}

double sub_2203E87E4(void *a1)
{
  sub_2203EA908(0, &qword_280FA02C8, sub_2203EA8B4, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.UserEventConfiguration.EventConditions.DurationCondition.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203EA8B4();
  sub_22042BFF0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v16 = 0;
    v9 = sub_22042BE70();
    v11 = v10;
    v12 = *&v9;
    v15 = 1;
    sub_22042BEA0();
    if (v11)
    {
      v2 = 0.0;
    }

    else
    {
      v2 = v12;
    }

    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v2;
}

double sub_2203E89D8(void *a1)
{
  sub_2203EA908(0, &qword_280FA02D0, sub_2203EA690, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.UserEventConfiguration.EventConditions.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203EA690();
  sub_22042BFF0();
  if (!v1)
  {
    sub_2203EA6E4();
    sub_22042BEC0();
    (*(v6 + 8))(v8, v5);
    v2 = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_2203E8BA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000220432760 == a2;
  if (v3 || (sub_22042BF50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F43746E657665 && a2 == 0xEF736E6F69746964 || (sub_22042BF50() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220432780 == a2 || (sub_22042BF50() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6369706F5478616DLL && a2 == 0xEB00000000736449)
  {

    return 3;
  }

  else
  {
    v6 = sub_22042BF50();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2203E8D24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  sub_2203EA908(0, &qword_280FA02C0, sub_2203EA0D4, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.UserEventConfiguration.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203EA0D4();
  sub_22042BFF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v18;
  LOBYTE(v19) = 0;
  v11 = sub_22042BEB0();
  v21 = 1;
  sub_2203EA128();
  sub_22042BEC0();
  v12 = v19;
  v13 = v20;
  LOBYTE(v19) = 2;
  v14 = sub_22042BEB0();
  LOBYTE(v19) = 3;
  v15 = sub_22042BEB0();
  (*(v9 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v11;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  v10[4] = v15;
  return result;
}

uint64_t sub_2203E8F80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000019 && 0x8000000220432620 == a2;
  if (v4 || (sub_22042BF50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000220432640 == a2 || (sub_22042BF50() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369706F5478616DLL && a2 == 0xEB00000000736449 || (sub_22042BF50() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000220432660 == a2 || (sub_22042BF50() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x416567616B636170 && a2 == 0xEE00444974657373 || (sub_22042BF50() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000220432680 == a2 || (sub_22042BF50() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002204326A0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_22042BF50();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_2203E91D4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v56 = a2;
  sub_2203EA908(0, &qword_280FA02B8, sub_2203E98E4, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  v9 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2203E98E4();
  v57 = v8;
  sub_22042BFF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v10 = v6;
  LOBYTE(v59) = 0;
  sub_2203E9938();
  v11 = v5;
  sub_22042BEC0();
  v12 = v70;
  v13 = v72;
  v54 = v73;
  v55 = v71;
  v14 = v74;
  v53 = v75;
  LOBYTE(v70) = 1;
  v15 = sub_22042BEB0();
  v50 = v13;
  v51 = v12;
  v48 = v15;
  v49 = v14;
  LOBYTE(v70) = 2;
  v16 = sub_22042BEB0();
  LOBYTE(v59) = 3;
  sub_22042BEC0();
  v17 = v70;
  v52 = v71;
  v18 = v72;
  v19 = v74;
  v46 = v73;
  v47 = v75;
  LOBYTE(v70) = 4;
  v42 = sub_22042BE80();
  v43 = v19;
  v44 = v18;
  v45 = v17;
  v21 = v20;
  LOBYTE(v70) = 5;
  v22 = sub_22042BEB0();
  v94 = 6;
  sub_2203E998C();
  sub_22042BEC0();
  (*(v10 + 8))(v57, v11);
  v23 = v91;
  v24 = v92;
  v40 = *(&v93 + 1);
  v57 = v93;
  v41 = v16;
  v26 = v54;
  v25 = v55;
  *&v59 = v51;
  *(&v59 + 1) = v55;
  *&v60 = v50;
  *(&v60 + 1) = v54;
  *&v61 = v49;
  v27 = v16;
  v28 = v53;
  *(&v61 + 1) = v53;
  *&v62 = v48;
  *(&v62 + 1) = v27;
  *&v63 = v45;
  *(&v63 + 1) = v52;
  *&v64 = v44;
  v29 = v22;
  v39 = v22;
  v31 = v46;
  v30 = v47;
  *(&v64 + 1) = v46;
  *&v65 = v43;
  *(&v65 + 1) = v47;
  *&v66 = v42;
  *(&v66 + 1) = v21;
  *&v67 = v29;
  *(&v67 + 1) = v91;
  v68 = v92;
  v69 = v93;
  sub_2203CF92C(&v59, &v70);
  __swift_destroy_boxed_opaque_existential_1(v58);
  v70 = v51;
  v71 = v25;
  v72 = v50;
  v73 = v26;
  v74 = v49;
  v75 = v28;
  v76 = v48;
  v77 = v41;
  v78 = v45;
  v79 = v52;
  v80 = v44;
  v81 = v31;
  v82 = v43;
  v83 = v30;
  v84 = v42;
  v85 = v21;
  v86 = v39;
  v87 = v23;
  v88 = v24;
  v89 = v57;
  v90 = v40;
  result = sub_2203CF9DC(&v70);
  v33 = v68;
  v34 = v56;
  v56[8] = v67;
  v34[9] = v33;
  v34[10] = v69;
  v35 = v64;
  v34[4] = v63;
  v34[5] = v35;
  v36 = v66;
  v34[6] = v65;
  v34[7] = v36;
  v37 = v60;
  *v34 = v59;
  v34[1] = v37;
  v38 = v62;
  v34[2] = v61;
  v34[3] = v38;
  return result;
}

uint64_t sub_2203E96C0(void *a1)
{
  sub_2203EA908(0, &qword_280FA02E0, sub_2203E99E0, &type metadata for ComputeServiceConfiguration.UnloadGraphOnBackgroundConfiguration.CodingKeys, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_2203E99E0();
  sub_22042BFF0();
  if (!v1)
  {
    v12 = 0;
    LOBYTE(v8) = sub_22042BE90();
    v11 = 1;
    sub_22042BEB0();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8 & 1;
}

unint64_t sub_2203E9898(uint64_t a1, uint64_t a2)
{
  v2 = sub_22042BE60();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2203E98E4()
{
  result = qword_280FA0920;
  if (!qword_280FA0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0920);
  }

  return result;
}

unint64_t sub_2203E9938()
{
  result = qword_280FA09A0;
  if (!qword_280FA09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09A0);
  }

  return result;
}

unint64_t sub_2203E998C()
{
  result = qword_280FA0928;
  if (!qword_280FA0928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0928);
  }

  return result;
}

unint64_t sub_2203E99E0()
{
  result = qword_280FA09E8;
  if (!qword_280FA09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09E8);
  }

  return result;
}

unint64_t sub_2203E9A34()
{
  result = qword_280FA09A8;
  if (!qword_280FA09A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09A8);
  }

  return result;
}

unint64_t sub_2203E9A88()
{
  result = qword_280FA0930;
  if (!qword_280FA0930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0930);
  }

  return result;
}

unint64_t sub_2203E9ADC()
{
  result = qword_27CF524A8;
  if (!qword_27CF524A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524A8);
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

uint64_t getEnumTagSinglePayload for Com_Apple_Stocks_Personalization_GroupType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Com_Apple_Stocks_Personalization_GroupType(uint64_t result, int a2, int a3)
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

uint64_t sub_2203E9B94(uint64_t a1)
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

uint64_t sub_2203E9BB0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ComputeServiceConfiguration.FeedPersonalizationConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ComputeServiceConfiguration.FeedPersonalizationConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2203E9D54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2203E9D74(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2203E9DCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2203E9E14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2203E9E74()
{
  result = qword_27CF524B0;
  if (!qword_27CF524B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524B0);
  }

  return result;
}

unint64_t sub_2203E9ECC()
{
  result = qword_27CF524B8;
  if (!qword_27CF524B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524B8);
  }

  return result;
}

unint64_t sub_2203E9F24()
{
  result = qword_280FA09D8;
  if (!qword_280FA09D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09D8);
  }

  return result;
}

unint64_t sub_2203E9F7C()
{
  result = qword_280FA09E0;
  if (!qword_280FA09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09E0);
  }

  return result;
}

unint64_t sub_2203E9FD4()
{
  result = qword_280FA0910;
  if (!qword_280FA0910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0910);
  }

  return result;
}

unint64_t sub_2203EA02C()
{
  result = qword_280FA0918;
  if (!qword_280FA0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0918);
  }

  return result;
}

unint64_t sub_2203EA080()
{
  result = qword_280FA09C0;
  if (!qword_280FA09C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09C0);
  }

  return result;
}

unint64_t sub_2203EA0D4()
{
  result = qword_280FA0948;
  if (!qword_280FA0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0948);
  }

  return result;
}

unint64_t sub_2203EA128()
{
  result = qword_280FA0950;
  if (!qword_280FA0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0950);
  }

  return result;
}

unint64_t sub_2203EA17C()
{
  result = qword_280FA0958;
  if (!qword_280FA0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0958);
  }

  return result;
}

uint64_t _s24PersistableSessionErrorsOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s24PersistableSessionErrorsOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ComputeServiceConfiguration.FeedPersonalizationConfiguration.OutputConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ComputeServiceConfiguration.FeedPersonalizationConfiguration.OutputConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2203EA484()
{
  result = qword_27CF524C0;
  if (!qword_27CF524C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524C0);
  }

  return result;
}

unint64_t sub_2203EA4DC()
{
  result = qword_27CF524C8;
  if (!qword_27CF524C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524C8);
  }

  return result;
}

unint64_t sub_2203EA534()
{
  result = qword_280FA0938;
  if (!qword_280FA0938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0938);
  }

  return result;
}

unint64_t sub_2203EA58C()
{
  result = qword_280FA0940;
  if (!qword_280FA0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0940);
  }

  return result;
}

unint64_t sub_2203EA5E4()
{
  result = qword_280FA09B0;
  if (!qword_280FA09B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09B0);
  }

  return result;
}

unint64_t sub_2203EA63C()
{
  result = qword_280FA09B8;
  if (!qword_280FA09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09B8);
  }

  return result;
}

unint64_t sub_2203EA690()
{
  result = qword_280FA0998;
  if (!qword_280FA0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0998);
  }

  return result;
}

unint64_t sub_2203EA6E4()
{
  result = qword_280FA0960;
  if (!qword_280FA0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0960);
  }

  return result;
}

unint64_t sub_2203EA738()
{
  result = qword_280FA0968;
  if (!qword_280FA0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0968);
  }

  return result;
}

unint64_t sub_2203EA7B0()
{
  result = qword_27CF524D0;
  if (!qword_27CF524D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524D0);
  }

  return result;
}

unint64_t sub_2203EA808()
{
  result = qword_280FA0988;
  if (!qword_280FA0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0988);
  }

  return result;
}

unint64_t sub_2203EA860()
{
  result = qword_280FA0990;
  if (!qword_280FA0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0990);
  }

  return result;
}

unint64_t sub_2203EA8B4()
{
  result = qword_280FA0980;
  if (!qword_280FA0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0980);
  }

  return result;
}

void sub_2203EA908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_2203EA970(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2203EAA00(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2203EAAC4()
{
  result = qword_27CF524D8;
  if (!qword_27CF524D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524D8);
  }

  return result;
}

unint64_t sub_2203EAB1C()
{
  result = qword_280FA0970;
  if (!qword_280FA0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0970);
  }

  return result;
}

unint64_t sub_2203EAB74()
{
  result = qword_280FA0978;
  if (!qword_280FA0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0978);
  }

  return result;
}

uint64_t sub_2203EAC30()
{
  v3 = (*MEMORY[0x277CFBAF0] + MEMORY[0x277CFBAF0]);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2203EACD8;

  return v3();
}

uint64_t sub_2203EACD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2203EADD0()
{

  return swift_deallocClassInstance();
}

uint64_t ComputeService<>.runningConfigurationData.getter()
{
  sub_22042A3E0();
  swift_allocObject();
  sub_22042A3D0();
  sub_22042B150();
  v16 = v19[12];
  v17 = v19[13];
  v18 = v20;
  v12 = v19[8];
  v13 = v19[9];
  v14 = v19[10];
  v15 = v19[11];
  v8 = v19[4];
  v9 = v19[5];
  v10 = v19[6];
  v11 = v19[7];
  v4 = v19[0];
  v5 = v19[1];
  v6 = v19[2];
  v7 = v19[3];
  sub_2203C3C64(0, &qword_280FA08C0, &type metadata for ComputeServiceConfiguration, MEMORY[0x277D83D88]);
  sub_2203EAFC4();
  v2[12] = v19[12];
  v2[13] = v19[13];
  v3 = v20;
  v2[8] = v19[8];
  v2[9] = v19[9];
  v2[10] = v19[10];
  v2[11] = v19[11];
  v2[4] = v19[4];
  v2[5] = v19[5];
  v2[6] = v19[6];
  v2[7] = v19[7];
  v2[0] = v19[0];
  v2[1] = v19[1];
  v2[2] = v19[2];
  v2[3] = v19[3];
  v0 = sub_22042A3C0();
  sub_2203E34AC(v2);

  return v0;
}

unint64_t sub_2203EAFC4()
{
  result = qword_27CF524F0;
  if (!qword_27CF524F0)
  {
    sub_2203C3C64(255, &qword_280FA08C0, &type metadata for ComputeServiceConfiguration, MEMORY[0x277D83D88]);
    sub_2203C0FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524F0);
  }

  return result;
}

uint64_t sub_2203EB108(uint64_t a1, uint64_t a2)
{
  v5 = a1 == 0x636F72705F707061 && a2 == 0xEB00000000737365;
  if (v5 || (sub_22042BF50() & 1) != 0)
  {
    v6 = *(v2 + 16);
  }

  else
  {
    v6 = 0x745F636974617473;
    if ((a1 != 0x636974617473 || a2 != 0xE600000000000000) && (sub_22042BF50() & 1) == 0)
    {
      if (qword_280FA1130 != -1)
      {
        swift_once();
      }

      v8 = qword_280FA1138;
      sub_2203C1EE8(0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_22042D3F0;
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = sub_2203C1FA8();
      *(v9 + 32) = a1;
      *(v9 + 40) = a2;

      v10 = sub_22042BCA0();
      sub_22042B8D0("Asked to vend retention token for unknown retention key %{public}@", 66, 2, &dword_2203BD000, v8, v10, v9);

      return 0;
    }
  }

  return v6;
}

uint64_t sub_2203EB29C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2203EB31C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2203C3E30;

  return sub_2203EAC10(a1, v1);
}

uint64_t sub_2203EB3B8()
{
  v0 = sub_22042AB90();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_22042AB80();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2203EB5D8();
  swift_allocObject();
  result = sub_22042ABB0();
  qword_280FA24B0 = result;
  return result;
}

uint64_t static Settings.UserEventHistory.verboseLoggingEnabled.getter()
{
  if (qword_280FA24A8 != -1)
  {
    swift_once();
  }
}

void sub_2203EB5D8()
{
  if (!qword_280FA2488)
  {
    v0 = sub_22042ABA0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA2488);
    }
  }
}

uint64_t Com_Apple_Stocks_Personalization_Session.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_Stocks_Personalization_Session.start(at:)(uint64_t a1)
{
  v18 = a1;
  v17 = sub_22042A5B0();
  v2 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22042B600();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203EB8E4(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session(0) + 36);
  sub_2203EB93C(v1 + v12, v11);
  v13 = (*(v6 + 48))(v11, 1, v5);
  sub_2203EB9A0(v11);
  if (v13 == 1)
  {
    (*(v2 + 16))(v4, v18, v17);
    sub_22042B5E0();
    sub_2203EB9A0(v1 + v12);
    (*(v6 + 32))(v1 + v12, v8, v5);
    return (*(v6 + 56))(v1 + v12, 0, 1, v5);
  }

  else
  {
    sub_2203EB9FC();
    swift_allocError();
    *v15 = 0;
    return swift_willThrow();
  }
}

void sub_2203EB8E4(uint64_t a1)
{
  if (!qword_280FA2228)
  {
    sub_22042B600();
    v1 = sub_22042BCF0();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA2228);
    }
  }
}

uint64_t sub_2203EB93C(uint64_t a1, uint64_t a2)
{
  sub_2203EB8E4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203EB9A0(uint64_t a1)
{
  sub_2203EB8E4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2203EB9FC()
{
  result = qword_27CF524F8;
  if (!qword_27CF524F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524F8);
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_Session.end(at:)(uint64_t a1)
{
  v18 = a1;
  v17 = sub_22042A5B0();
  v2 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22042B600();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203EB8E4(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session(0) + 40);
  sub_2203EB93C(v1 + v12, v11);
  v13 = (*(v6 + 48))(v11, 1, v5);
  sub_2203EB9A0(v11);
  if (v13 == 1)
  {
    (*(v2 + 16))(v4, v18, v17);
    sub_22042B5E0();
    sub_2203EB9A0(v1 + v12);
    (*(v6 + 32))(v1 + v12, v8, v5);
    return (*(v6 + 56))(v1 + v12, 0, 1, v5);
  }

  else
  {
    sub_2203EB9FC();
    swift_allocError();
    *v15 = 0;
    return swift_willThrow();
  }
}

uint64_t Com_Apple_Stocks_Personalization_Session.serialize()()
{
  sub_2203EB8E4(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
  sub_2203EB93C(v0 + *(v8 + 36), v7);
  v9 = sub_22042B600();
  v10 = *(*(v9 - 8) + 48);
  v11 = v10(v7, 1, v9);
  sub_2203EB9A0(v7);
  if (v11 == 1)
  {
    v12 = 2;
LABEL_5:
    sub_2203EB9FC();
    v14 = swift_allocError();
    *v15 = v12;
    v1 = v14;
    swift_willThrow();
    return v1;
  }

  sub_2203EB93C(v0 + *(v8 + 40), v5);
  v13 = v10(v5, 1, v9);
  sub_2203EB9A0(v5);
  if (v13 == 1)
  {
    v12 = 3;
    goto LABEL_5;
  }

  sub_2203EC354(&qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_Session);
  sub_22042B7D0();
  if (!v1)
  {
    v1 = *v0;
  }

  return v1;
}

uint64_t sub_2203EBEBC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2203EBF3C()
{
  result = Com_Apple_Stocks_Personalization_Session.serialize()();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2203EBF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042A5E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22042A5B0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042A590();
  sub_22042A570();
  v13 = v12;
  v14 = v12;
  result = (*(v9 + 8))(v11, v8);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v13 < 9.22337204e18)
  {
    v25[1] = v13;
    v26 = sub_22042BF20();
    v27 = v16;
    MEMORY[0x223D7BDE0](45, 0xE100000000000000);
    sub_22042A5D0();
    v17 = sub_22042A5C0();
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    MEMORY[0x223D7BDE0](v17, v19);

    v20 = v26;
    v21 = v27;

    *a1 = v20;
    *(a1 + 8) = v21;
    v22 = *(a2 + 16);
    v23 = *(a2 + 24);

    *(a1 + 24) = v22;
    *(a1 + 32) = v23;
    v24 = *(a2 + 40);
    *(a1 + 40) = *(a2 + 32);
    *(a1 + 48) = v24;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2203EC1D8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2203EC224()
{
  result = qword_27CF52500;
  if (!qword_27CF52500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52500);
  }

  return result;
}

void sub_2203EC2C0(uint64_t a1)
{
  if (!qword_280FA22B0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_Session(255);
    sub_2203EC354(qword_280FA1640, type metadata accessor for Com_Apple_Stocks_Personalization_Session, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_Session);
    v1 = sub_22042B4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA22B0);
    }
  }
}

uint64_t sub_2203EC354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2203EC39C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
  MEMORY[0x28223BE20](v2);
  sub_2203EC354(&qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_Session);
  sub_22042B810();
  sub_2203EC2C0(0);
  swift_allocObject();

  return sub_22042B470();
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.legacy.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2203EEEF0(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  sub_2203EEFC4(v1 + *(v6 + 20), v5, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) != 1)
  {
    return sub_2203EEE88(v5, a1, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  }

  sub_2203EEF54(v5, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  sub_22042B670();
  v8 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  if (qword_280FA1A10 != -1)
  {
    swift_once();
  }

  *(a1 + v8) = qword_280FA1A18;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0) + 20);

  return sub_2203EE2D8(a1, v3);
}

uint64_t sub_2203EC7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203EE3D0(a1, v6, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  v7 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0) + 20);
  sub_2203EEF54(a2 + v7, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  sub_2203EEE88(v6, a2 + v7, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  return (*(*(v8 - 8) + 56))(a2 + v7, 0, 1, v8);
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.legacy.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0) + 20);
  sub_2203EEF54(v1 + v3, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  sub_2203EEE88(a1, v1 + v3, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Stocks_Personalization_SessionArticle.legacy.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2203EEEF0(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0) + 20);
  *(v5 + 12) = v14;
  sub_2203EEFC4(v1 + v14, v9, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v15 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_2203EEF54(v9, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    sub_22042B670();
    v17 = *(v10 + 20);
    if (qword_280FA1A10 != -1)
    {
      swift_once();
    }

    *(v13 + v17) = qword_280FA1A18;
  }

  else
  {
    sub_2203EEE88(v9, v13, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  }

  return sub_2203ECC78;
}

void sub_2203ECC78(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = *(*a1 + 12);
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_2203EE3D0((*a1)[3], v6, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    sub_2203EEF54(v9 + v5, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    sub_2203EEE88(v6, v9 + v5, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    (*(v4 + 56))(v9 + v5, 0, 1, v3);
    sub_2203EEE28(v7, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  }

  else
  {
    sub_2203EEF54(v9 + v5, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    sub_2203EEE88(v7, v9 + v5, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    (*(v4 + 56))(v9 + v5, 0, 1, v3);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0) + 24);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0) + 24);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

BOOL static Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2203EE36C(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v7[*(v5 + 56)];
  sub_2203EE3D0(a1, v7, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  sub_2203EE3D0(a2, v8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v9 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v10 = *&v7[v9];
  v11 = *(v8 + v9);
  v13 = 0;
  if (v10 == v11 || (, , v12 = sub_22040D064(v10, v11), , , (v12 & 1) != 0))
  {
    sub_22042B680();
    sub_2203EE9DC(&qword_27CF52420, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_22042BA10())
    {
      v13 = 1;
    }
  }

  sub_2203EEE28(v8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  sub_2203EEE28(v7, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  return v13;
}

uint64_t sub_2203ED0D0(uint64_t a1, uint64_t a2)
{
  sub_2203EE36C(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 56);
  sub_2203EE3D0(a1, v7, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  sub_2203EE3D0(a2, &v7[v8], type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  LOBYTE(a2) = _s21StocksPersonalization010Com_Apple_a1_B29_SessionArticleLegacyMetadataV2eeoiySbAC_ACtFZ_0(v7, &v7[v8]);
  sub_2203EEE28(&v7[v8], type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  sub_2203EEE28(v7, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  return a2 & 1;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0) + 20);
  v3 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  return sub_22042B670();
}

uint64_t sub_2203ED26C()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_280FA1EF8);
  __swift_project_value_buffer(v0, qword_280FA1EF8);
  sub_2203EEEF0(0, &qword_280FA01C8, sub_2203E170C, MEMORY[0x277D84560]);
  sub_2203E170C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042D3E0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_22042B8A0();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "legacy";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v10();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_SessionArticle._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1EF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22042B700();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22042B770();
    }

    else if (result == 2)
    {
      sub_2203ED580(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_2203ED580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a1;
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = &v36 - v8;
  v9 = MEMORY[0x277D83D88];
  sub_2203EEEF0(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v40 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - v17;
  sub_2203EEEF0(0, qword_280FA1750, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata, v9);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v42 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v36 - v22;
  v39 = v5;
  v24 = *(v5 + 56);
  v43 = v4;
  v24(&v36 - v22, 1, 1, v4);
  v25 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0) + 20);
  sub_2203EEFC4(v48 + v25, v12, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v36 = v14;
  v37 = v13;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_2203EEF54(v12, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    v27 = v43;
  }

  else
  {
    sub_2203EEE88(v12, v18, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    v28 = v40;
    sub_2203EEE88(v18, v40, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    sub_2203EEF54(v23, qword_280FA1750, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    v29 = v28;
    v30 = v41;
    sub_2203EEE88(v29, v41, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    sub_2203EEE88(v30, v23, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    v27 = v43;
    v24(v23, 0, 1, v43);
  }

  sub_2203EE9DC(&unk_280FA1798, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  v31 = v44;
  sub_22042B7A0();
  v32 = v42;
  if (v31)
  {
    return sub_2203EEF54(v23, qword_280FA1750, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  }

  sub_2203EEFC4(v23, v42, qword_280FA1750, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  if ((*(v39 + 48))(v32, 1, v27) == 1)
  {
    sub_2203EEF54(v23, qword_280FA1750, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    return sub_2203EEF54(v32, qword_280FA1750, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  }

  else
  {
    v34 = v38;
    sub_2203EEE88(v32, v38, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    if (v26 != 1)
    {
      sub_22042B710();
    }

    sub_2203EEF54(v23, qword_280FA1750, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    v35 = v48;
    sub_2203EEF54(v48 + v25, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    sub_2203EEE88(v34, v35 + v25, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    return (*(v36 + 56))(v35 + v25, 0, 1, v37);
  }
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_22042B860(), !v4))
  {
    result = sub_2203EDC24(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
      return sub_22042B660();
    }
  }

  return result;
}

uint64_t sub_2203EDC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_2203EEEF0(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  sub_2203EEFC4(a1 + *(v11 + 20), v7, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v12 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    return sub_2203EEF54(v7, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  }

  sub_2203EEE88(v7, v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  sub_2203EE9DC(&unk_280FA1798, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  sub_22042B890();
  return sub_2203EEE28(v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  sub_2203EE9DC(&qword_27CF52510, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionArticle);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203EDEEC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v3 = *(a1 + 20);
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  return sub_22042B670();
}

uint64_t sub_2203EDF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_22042B680();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2203EE000(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_22042B680();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2203EE0C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203EE9DC(&qword_27CF52520, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionArticle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2203EE144@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1EF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2203EE1EC(uint64_t a1)
{
  v2 = sub_2203EE9DC(&qword_280FA1EE8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionArticle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2203EE258(uint64_t a1, uint64_t a2)
{
  sub_2203EE9DC(&qword_280FA1EE8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionArticle);

  return sub_22042B800();
}

uint64_t sub_2203EE2D8(uint64_t a1, uint64_t a2)
{
  sub_2203EEEF0(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2203EE36C(uint64_t a1)
{
  if (!qword_27CF52508)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF52508);
    }
  }
}

uint64_t sub_2203EE3D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B15_SessionArticleV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  sub_2203EE36C(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203EEEF0(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v33 - v13;
  sub_2203EED94(0);
  v16 = v15;
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 && (sub_22042BF50() & 1) == 0)
  {
    goto LABEL_9;
  }

  v33 = v5;
  v34 = v11;
  v35 = v7;
  v36 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v19 = *(v36 + 20);
  v20 = *(v16 + 48);
  sub_2203EEFC4(a1 + v19, v18, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  sub_2203EEFC4(a2 + v19, &v18[v20], &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) == 1)
  {
    if (v21(&v18[v20], 1, v8) == 1)
    {
      sub_2203EEF54(v18, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
LABEL_13:
      sub_22042B680();
      sub_2203EE9DC(&qword_27CF52420, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v22 = sub_22042BA10();
      return v22 & 1;
    }

    goto LABEL_8;
  }

  sub_2203EEFC4(v18, v14, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  if (v21(&v18[v20], 1, v8) == 1)
  {
    sub_2203EEE28(v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
LABEL_8:
    sub_2203EEE28(v18, sub_2203EED94);
    goto LABEL_9;
  }

  v23 = &v18[v20];
  v24 = v34;
  sub_2203EEE88(v23, v34, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v25 = v35;
  v26 = &v35[*(v33 + 48)];
  sub_2203EE3D0(v14, v35, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  sub_2203EE3D0(v24, v26, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v27 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v28 = *(v25 + v27);
  v29 = *(v26 + v27);
  if (v28 == v29 || (, , v30 = sub_22040D064(v28, v29), , , (v30 & 1) != 0))
  {
    sub_22042B680();
    sub_2203EE9DC(&qword_27CF52420, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v31 = sub_22042BA10();
    sub_2203EEE28(v24, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    sub_2203EEE28(v26, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    sub_2203EEE28(v25, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    sub_2203EEE28(v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    sub_2203EEF54(v18, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    if (v31)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_2203EEE28(v24, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    sub_2203EEE28(v26, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    sub_2203EEE28(v25, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    sub_2203EEE28(v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    sub_2203EEF54(v18, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  }

LABEL_9:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_2203EE9DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2203EEB6C(uint64_t a1)
{
  sub_2203EEEF0(319, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22042B680();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2203EEC30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_2203C4C14);
}

uint64_t sub_2203EEC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_2203C4CD0);
}

uint64_t sub_2203EECF0(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_2203EED94(uint64_t a1)
{
  if (!qword_27CF52528)
  {
    sub_2203EEEF0(255, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF52528);
    }
  }
}

uint64_t sub_2203EEE28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2203EEE88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2203EEEF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2203EEF54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2203EEEF0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2203EEFC4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2203EEEF0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t StocksUserEventHistorySessionUnarchiver.unarchive(session:)()
{
  v0 = sub_22042B6C0();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_22042B8F0();
  if (v2 >> 60 == 15)
  {
    sub_2203EF1A4();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v4 = v1;
    v5 = v2;
    type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
    sub_2203DF3D8(v4, v5);
    sub_22042B6B0();
    sub_2203EF244(&qword_280FA1638, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_Session);
    sub_22042B7E0();
    return sub_2203DF298(v4, v5);
  }
}

unint64_t sub_2203EF1A4()
{
  result = qword_27CF52530;
  if (!qword_27CF52530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52530);
  }

  return result;
}

uint64_t sub_2203EF244(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_Session(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2203EF2CC()
{
  result = qword_27CF52538;
  if (!qword_27CF52538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52538);
  }

  return result;
}

uint64_t FeedViewEventUserInfo.stock.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042AAC0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FeedViewEventUserInfo.init(stock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22042AAC0();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for FeedViewEventUserInfo(uint64_t a1)
{
  result = qword_280FA0DF8;
  if (!qword_280FA0DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2203EF468(uint64_t a1)
{
  result = sub_22042AAC0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0) + 24);
  sub_2203EF6B4(v1 + v3, &qword_280FA2210, MEMORY[0x277D21628]);
  v4 = sub_22042B650();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(uint64_t a1)
{
  result = qword_280FA1AC8;
  if (!qword_280FA1AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.stock.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0) + 20);
  sub_2203EF6B4(v1 + v3, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_2203DFAD4(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_2203EF6B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2203F2458(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.stock.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2203F2458(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  sub_2203F026C(v1 + *(v6 + 20), v5, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_2203DFAD4(v5, a1);
  }

  sub_22042B670();
  v9 = (a1 + *(v7 + 20));
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + *(v7 + 24));
  *v10 = 0;
  v10[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_2203EF6B4(v5, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  return result;
}

uint64_t sub_2203EF8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2203F2458(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  sub_2203F026C(a1 + *(v7 + 20), v6, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_2203DFAD4(v6, a2);
  }

  sub_22042B670();
  v10 = (a2 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + *(v8 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2203EF6B4(v6, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  return result;
}

uint64_t sub_2203EFA38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203D174C(a1, v7);
  v8 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0) + 20);
  sub_2203EF6B4(a2 + v8, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_2203DFAD4(v7, a2 + v8);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.stock.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2203F2458(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0) + 20);
  *(v5 + 12) = v16;
  sub_2203F026C(v1 + v16, v9, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_22042B670();
    v18 = (v15 + *(v10 + 20));
    *v18 = 0;
    v18[1] = 0;
    v19 = (v15 + *(v10 + 24));
    *v19 = 0;
    v19[1] = 0;
    if (v17(v9, 1, v10) != 1)
    {
      sub_2203EF6B4(v9, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    }
  }

  else
  {
    sub_2203DFAD4(v9, v15);
  }

  return sub_2203EFD9C;
}

void sub_2203EFD9C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_2203D174C((*a1)[5], v4);
    sub_2203EF6B4(v9 + v3, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    sub_2203DFAD4(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_2203EFECC(v5);
  }

  else
  {
    sub_2203EF6B4(v9 + v3, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    sub_2203DFAD4(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_2203EFECC(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.hasStock.getter()
{
  sub_2203F2458(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  sub_2203F026C(v0 + *(v4 + 20), v3, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_2203EF6B4(v3, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.clearStock()()
{
  v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0) + 20);
  sub_2203EF6B4(v0 + v1, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D21628];
  sub_2203F2458(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  sub_2203F026C(v1 + *(v7 + 24), v6, &qword_280FA2210, v3);
  v8 = sub_22042B650();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_22042B640();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2203EF6B4(v6, &qword_280FA2210, MEMORY[0x277D21628]);
  }

  return result;
}

uint64_t sub_2203F026C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2203F2458(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2203F02EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D21628];
  sub_2203F2458(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  sub_2203F026C(a1 + *(v8 + 24), v7, &qword_280FA2210, v4);
  v9 = sub_22042B650();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_22042B640();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_2203EF6B4(v7, &qword_280FA2210, MEMORY[0x277D21628]);
  }

  return result;
}

uint64_t sub_2203F0484(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042B650();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0) + 24);
  sub_2203EF6B4(a2 + v8, &qword_280FA2210, MEMORY[0x277D21628]);
  (*(v5 + 32))(a2 + v8, v7, v4);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2203F2458(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_22042B650();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0) + 24);
  *(v5 + 12) = v16;
  sub_2203F026C(v1 + v16, v9, &qword_280FA2210, MEMORY[0x277D21628]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_22042B640();
    if (v17(v9, 1, v10) != 1)
    {
      sub_2203EF6B4(v9, &qword_280FA2210, MEMORY[0x277D21628]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_2203F080C;
}

void sub_2203F080C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_2203EF6B4(v9 + v3, &qword_280FA2210, MEMORY[0x277D21628]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_2203EF6B4(v9 + v3, &qword_280FA2210, MEMORY[0x277D21628]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.hasDuration.getter()
{
  v1 = MEMORY[0x277D21628];
  sub_2203F2458(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  sub_2203F026C(v0 + *(v5 + 24), v4, &qword_280FA2210, v1);
  v6 = sub_22042B650();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_2203EF6B4(v4, &qword_280FA2210, v1);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0) + 24);
  sub_2203EF6B4(v0 + v1, &qword_280FA2210, MEMORY[0x277D21628]);
  v2 = sub_22042B650();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.init()@<X0>(uint64_t a2@<X8>)
{
  sub_22042B670();
  v3 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = sub_22042B650();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_2203F0D14()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_280FA1AF0);
  __swift_project_value_buffer(v0, qword_280FA1AF0);
  sub_2203F2458(0, &qword_280FA01C8, sub_2203E170C, MEMORY[0x277D84560]);
  sub_2203E170C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042D3E0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "stock";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_22042B8A0();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1AF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22042B700();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2203F1030(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_2203F10E4(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_2203F1030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  sub_2203F2410(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionStock);
  return sub_22042B7A0();
}

uint64_t sub_2203F10E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  sub_22042B650();
  sub_2203F2410(&unk_280FA2218, MEMORY[0x277D21628], MEMORY[0x277D21620]);
  return sub_22042B7A0();
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203F1208(v3, a1, a2, a3);
  if (!v4)
  {
    sub_2203F142C(v3, a1, a2, a3);
    return sub_22042B660();
  }

  return result;
}

uint64_t sub_2203F1208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_2203F2458(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  sub_2203F026C(a1 + *(v12 + 20), v7, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2203EF6B4(v7, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  sub_2203DFAD4(v7, v11);
  sub_2203F2410(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22042B890();
  return sub_2203EFECC(v11);
}

uint64_t sub_2203F142C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = MEMORY[0x277D21628];
  sub_2203F2458(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v9 = sub_22042B650();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  sub_2203F026C(a1 + *(v13 + 24), v8, &qword_280FA2210, v5);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_2203EF6B4(v8, &qword_280FA2210, MEMORY[0x277D21628]);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_2203F2410(&unk_280FA2218, MEMORY[0x277D21628], MEMORY[0x277D21620]);
  sub_22042B890();
  return (*(v10 + 8))(v12, v9);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  sub_2203F2410(&qword_27CF52540, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203F1704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22042B670();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = sub_22042B650();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_2203F1814(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203F2410(&qword_27CF52550, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2203F1890@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1AF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2203F1938(uint64_t a1)
{
  v2 = sub_2203F2410(&qword_280FA1AE0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2203F19A4(uint64_t a1, uint64_t a2)
{
  sub_2203F2410(&qword_280FA1AE0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);

  return sub_22042B800();
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B28_SessionEventSymbolFeedVisitV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v53 = a1;
  v2 = sub_22042B650();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v46 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D21628];
  v5 = MEMORY[0x277D83D88];
  sub_2203F2458(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v46 - v7;
  sub_2203F233C(0, &qword_27CF52558, &qword_280FA2210, v4);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v49 = &v46 - v9;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203F2458(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, v5);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - v15;
  sub_2203F233C(0, &qword_27CF52418, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  v21 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  v22 = *(v21 + 20);
  v23 = *(v18 + 56);
  sub_2203F026C(v53 + v22, v20, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v24 = v52 + v22;
  v25 = v52;
  sub_2203F026C(v24, &v20[v23], qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v26 = *(v11 + 48);
  if (v26(v20, 1, v10) != 1)
  {
    sub_2203F026C(v20, v16, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    if (v26(&v20[v23], 1, v10) != 1)
    {
      sub_2203DFAD4(&v20[v23], v13);
      v31 = static Com_Apple_Stocks_Personalization_SessionStock.== infix(_:_:)(v16, v13);
      sub_2203EFECC(v13);
      sub_2203EFECC(v16);
      sub_2203EF6B4(v20, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_2203EFECC(v16);
LABEL_6:
    v27 = &qword_27CF52418;
    v28 = qword_280FA2010;
    v29 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock;
    v30 = v20;
LABEL_14:
    sub_2203F23B4(v30, v27, v28, v29);
    goto LABEL_15;
  }

  if (v26(&v20[v23], 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_2203EF6B4(v20, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
LABEL_8:
  v32 = *(v21 + 24);
  v33 = v49;
  v34 = *(v48 + 48);
  v35 = MEMORY[0x277D21628];
  sub_2203F026C(v53 + v32, v49, &qword_280FA2210, MEMORY[0x277D21628]);
  sub_2203F026C(v25 + v32, v33 + v34, &qword_280FA2210, v35);
  v37 = v50;
  v36 = v51;
  v38 = *(v50 + 48);
  if (v38(v33, 1, v51) == 1)
  {
    if (v38(v33 + v34, 1, v36) == 1)
    {
      sub_2203EF6B4(v33, &qword_280FA2210, MEMORY[0x277D21628]);
LABEL_18:
      sub_22042B680();
      sub_2203F2410(&qword_27CF52420, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v40 = sub_22042BA10();
      return v40 & 1;
    }

    goto LABEL_13;
  }

  v39 = v47;
  sub_2203F026C(v33, v47, &qword_280FA2210, MEMORY[0x277D21628]);
  if (v38(v33 + v34, 1, v36) == 1)
  {
    (*(v37 + 8))(v39, v36);
LABEL_13:
    v27 = &qword_27CF52558;
    v28 = &qword_280FA2210;
    v29 = MEMORY[0x277D21628];
    v30 = v33;
    goto LABEL_14;
  }

  v42 = v33 + v34;
  v43 = v46;
  (*(v37 + 32))(v46, v42, v36);
  sub_2203F2410(&qword_27CF52560, MEMORY[0x277D21628], MEMORY[0x277D21630]);
  v44 = sub_22042BA10();
  v45 = *(v37 + 8);
  v45(v43, v36);
  v45(v39, v36);
  sub_2203EF6B4(v33, &qword_280FA2210, MEMORY[0x277D21628]);
  if (v44)
  {
    goto LABEL_18;
  }

LABEL_15:
  v40 = 0;
  return v40 & 1;
}

void sub_2203F2240(uint64_t a1)
{
  sub_22042B680();
  if (v1 <= 0x3F)
  {
    sub_2203F2458(319, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2203F2458(319, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2203F233C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2203F2458(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2203F23B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2203F233C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2203F2410(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2203F2458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL Com_Apple_Stocks_Personalization_SessionEvent.hasTimestamp.getter()
{
  v1 = MEMORY[0x277D21570];
  sub_2203F2FE0(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  sub_2203F95D4(v0 + *(v5 + 24), v4, &qword_280FA2228, v1);
  v6 = sub_22042B600();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_2203F9564(v4, &qword_280FA2228, v1);
  return v7;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D21570];
  sub_2203F2FE0(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  sub_2203F95D4(v1 + *(v7 + 24), v6, &qword_280FA2228, v3);
  v8 = sub_22042B600();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_22042B5F0();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2203F9564(v6, &qword_280FA2228, MEMORY[0x277D21570]);
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 24);
  sub_2203F9564(v1 + v3, &qword_280FA2228, MEMORY[0x277D21570]);
  v4 = sub_22042B600();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_2203F286C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D21570];
  sub_2203F2FE0(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  sub_2203F95D4(a1 + *(v8 + 24), v7, &qword_280FA2228, v4);
  v9 = sub_22042B600();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_22042B5F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_2203F9564(v7, &qword_280FA2228, MEMORY[0x277D21570]);
  }

  return result;
}

uint64_t sub_2203F2A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042B600();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 24);
  sub_2203F9564(a2 + v8, &qword_280FA2228, MEMORY[0x277D21570]);
  (*(v5 + 32))(a2 + v8, v7, v4);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Com_Apple_Stocks_Personalization_SessionEvent.timestamp.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2203F2FE0(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_22042B600();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 24);
  *(v5 + 12) = v16;
  sub_2203F95D4(v1 + v16, v9, &qword_280FA2228, MEMORY[0x277D21570]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_22042B5F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_2203F9564(v9, &qword_280FA2228, MEMORY[0x277D21570]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_2203F2D8C;
}

void sub_2203F2D8C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_2203F9564(v9 + v3, &qword_280FA2228, MEMORY[0x277D21570]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_2203F9564(v9 + v3, &qword_280FA2228, MEMORY[0x277D21570]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_SessionEvent.clearTimestamp()()
{
  v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 24);
  sub_2203F9564(v0 + v1, &qword_280FA2228, MEMORY[0x277D21570]);
  v2 = sub_22042B600();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void sub_2203F2FE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2203F306C(uint64_t a1, uint64_t a2)
{
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.articleRead.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_2203F95D4(v2, &v14 - v5, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_2203F9564(v6, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_2203F3B20(v6, a1, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    }

    sub_2203F389C(v6, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  sub_22042B670();
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = *(v8 + 24);
  v12 = sub_22042B650();
  return (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
}

uint64_t sub_2203F3340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_2203F95D4(a1, &v14 - v5, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_2203F9564(v6, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_2203F3B20(v6, a2, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    }

    sub_2203F389C(v6, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  sub_22042B670();
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = *(v8 + 24);
  v12 = sub_22042B650();
  return (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
}

void (*Com_Apple_Stocks_Personalization_SessionEvent.articleRead.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 8) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_2203F95D4(v2, v10, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_2203F9564(v10, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2203F3B20(v10, v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
      return sub_2203F3858;
    }

    sub_2203F389C(v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  sub_22042B670();
  v17 = *(v11 + 20);
  v18 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
  v19 = *(v11 + 24);
  v20 = sub_22042B650();
  (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
  return sub_2203F3858;
}

uint64_t sub_2203F389C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.symbolFeedVisit.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_2203F95D4(v2, &v14 - v5, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_2203F9564(v6, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_2203F3B20(v6, a1, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    }

    sub_2203F389C(v6, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  sub_22042B670();
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v9 + 24);
  v13 = sub_22042B650();
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}