uint64_t sub_D4F40(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_5AE8(&unk_162190, &unk_128500);
  v2[4] = swift_task_alloc();
  v3 = sub_125ABC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_124FFC();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_12501C();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  sub_5AE8(&unk_15F170, &unk_126E00);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = sub_12368C();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v7 = sub_12392C();
  v2[21] = v7;
  v2[22] = *(v7 - 8);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_D5204, 0, 0);
}

uint64_t sub_D5204()
{
  sub_FFAE8(10);
  sub_12362C();
  _s21ConfirmIntentStrategyVMa_0(0);
  sub_12532C();
  v1 = sub_1251EC();
  v2 = sub_1251FC();
  v36 = v1;
  if (v2 && (v3 = v2, sub_12595C(), v5 = v4, v3, v5))
  {
    sub_125BCC();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v0[17];
  v8 = sub_124E4C();
  v37 = *(v8 - 8);
  v9 = *(v37 + 56);
  v10 = 1;
  v9(v7, v6, 1, v8);
  v11 = sub_1251FC();
  if (v11)
  {
    v12 = v11;
    sub_12596C();
    v14 = v13;

    if (v14)
    {
      sub_125BCC();

      v10 = 0;
    }

    else
    {
      v10 = 1;
    }
  }

  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  v9(v0[16], v10, 1, v8);
  (*(v16 + 104))(v15, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v17);
  if (qword_15EF30 != -1)
  {
    swift_once();
  }

  v18 = v0[6];
  v19 = v0[7];
  v20 = v0[5];
  v21 = sub_5B30(v20, qword_1620E0);
  (*(v18 + 16))(v19, v21, v20);
  mach_absolute_time();
  sub_12502C();
  if (qword_15EEE8 != -1)
  {
    swift_once();
  }

  v22 = v0[17];
  v23 = v0[15];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v24 = swift_allocObject();
  v0[24] = v24;
  *(v24 + 16) = xmmword_127990;
  *(v24 + 32) = 0x6E6F737265507369;
  *(v24 + 40) = 0xEA00000000006C61;
  *(v24 + 48) = (v36 ^ 1) & 1;
  *(v24 + 72) = &type metadata for Bool;
  *(v24 + 80) = 0x6E756D6D6F437369;
  *(v24 + 88) = 0xEA00000000006C61;
  *(v24 + 96) = v36 & 1;
  *(v24 + 120) = &type metadata for Bool;
  *(v24 + 128) = 0x614E656369766564;
  *(v24 + 136) = 0xEA0000000000656DLL;
  sub_E344(v22, v23, &unk_15F170, &unk_126E00);
  v25 = *(v37 + 48);
  v26 = v25(v23, 1, v8);
  v27 = v0[15];
  if (v26 == 1)
  {
    sub_5CA8(v0[15], &unk_15F170, &unk_126E00);
    *(v24 + 144) = 0u;
    *(v24 + 160) = 0u;
  }

  else
  {
    *(v24 + 168) = v8;
    v28 = sub_23B4C((v24 + 144));
    (*(v37 + 32))(v28, v27, v8);
  }

  v29 = v0[16];
  v30 = v0[14];
  *(v24 + 176) = 0x656D614E6D6F6F72;
  *(v24 + 184) = 0xE800000000000000;
  sub_E344(v29, v30, &unk_15F170, &unk_126E00);
  v31 = v25(v30, 1, v8);
  v32 = v0[14];
  if (v31 == 1)
  {
    sub_5CA8(v0[14], &unk_15F170, &unk_126E00);
    *(v24 + 192) = 0u;
    *(v24 + 208) = 0u;
  }

  else
  {
    *(v24 + 216) = v8;
    v33 = sub_23B4C((v24 + 192));
    (*(v37 + 32))(v33, v32, v8);
  }

  v38 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v34 = swift_task_alloc();
  v0[25] = v34;
  *v34 = v0;
  v34[1] = sub_D5740;

  return v38(0xD000000000000025, 0x800000000012E8D0, v24);
}

uint64_t sub_D5740(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = sub_D5A94;
  }

  else
  {
    *(v4 + 216) = a1;

    v5 = sub_D5870;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_D5870()
{
  (*(v0[22] + 56))(v0[4], 1, 1, v0[21]);
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_D5934;
  v2 = v0[13];
  v3 = v0[4];
  v4 = v0[2];

  return sub_F2BE4(v4, 10, v3, v2);
}

uint64_t sub_D5934()
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 32);
  *(*v1 + 232) = v0;

  sub_5CA8(v3, &unk_162190, &unk_128500);

  if (v0)
  {
    v4 = sub_D5D8C;
  }

  else
  {
    v4 = sub_D5C18;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_D5A94()
{

  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[19];
  v9 = v0[18];
  v10 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_5CA8(v6, &unk_15F170, &unk_126E00);
  sub_5CA8(v5, &unk_15F170, &unk_126E00);
  (*(v4 + 8))(v3, v9);
  (*(v2 + 8))(v1, v10);

  v7 = v0[1];

  return v7();
}

uint64_t sub_D5C18()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[19];
  v9 = v0[18];
  v10 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_5CA8(v6, &unk_15F170, &unk_126E00);
  sub_5CA8(v5, &unk_15F170, &unk_126E00);
  (*(v4 + 8))(v3, v9);
  (*(v2 + 8))(v1, v10);

  v7 = v0[1];

  return v7();
}

uint64_t sub_D5D8C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[19];
  v9 = v0[18];
  v10 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_5CA8(v6, &unk_15F170, &unk_126E00);
  sub_5CA8(v5, &unk_15F170, &unk_126E00);
  (*(v4 + 8))(v3, v9);
  (*(v2 + 8))(v1, v10);

  v7 = v0[1];

  return v7();
}

uint64_t sub_D5F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_5D08;

  return sub_D2538(a1, a2, a3);
}

uint64_t sub_D5FD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5D08;

  return sub_D4F40(a1);
}

uint64_t sub_D6068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_5D08;

  return ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)(a1, a2, a3, a4);
}

uint64_t sub_D612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_503C;

  return ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)(a1, a2, a3, a4);
}

uint64_t sub_D61F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_5D08;

  return ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)(a1, a2, a3, a4, a5);
}

uint64_t type metadata accessor for SetTimerAttributeCATs_Async(uint64_t a1)
{
  result = qword_1621A8;
  if (!qword_1621A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D6348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_606C(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_124DAC();
  (*(v6 + 8))(a2, v5);
  sub_60DC(a1);
  return v12;
}

uint64_t sub_D64D8(void *a1)
{
  sub_12564C();
  sub_12563C();
  sub_1233FC();
  if (qword_15EEA8 != -1)
  {
    swift_once();
  }

  sub_12333C();
  sub_5AE8(&qword_160700, &qword_1281B8);
  sub_1233AC();
  sub_5AE8(&qword_1621F8, &qword_12A260);
  sub_5C60(&qword_162200, &qword_1621F8, &qword_12A260, &unk_12A6F8);
  sub_12335C();
  sub_1233EC();
  sub_2F488(a1, v5);
  sub_D67A0();
  sub_12334C();
  sub_1233DC();
  sub_2F488(a1, v4);
  sub_D67F4();
  sub_12332C();
  sub_12339C();
  sub_2F488(a1, v3);
  sub_5AE8(&qword_162218, &qword_12A268);
  sub_5C60(&qword_162220, &qword_162218, &qword_12A268, &unk_128670);
  sub_12337C();
  sub_1233CC();
  sub_5BB0(a1);
  sub_D6848(v3);
  sub_D68B0(v4);
  return sub_D6904(v5);
}

uint64_t sub_D6714(void *a1, uint64_t a2)
{
  *a1 = sub_DE2F0();
  v3 = *(v2 + 8);

  return v3();
}

unint64_t sub_D67A0()
{
  result = qword_162208;
  if (!qword_162208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162208);
  }

  return result;
}

unint64_t sub_D67F4()
{
  result = qword_162210;
  if (!qword_162210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162210);
  }

  return result;
}

uint64_t sub_D6848(uint64_t a1)
{
  v2 = sub_5AE8(&qword_162218, &qword_12A268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SIRINLUUserDialogAct.firstUsoTask.getter(uint64_t a1)
{
  v1 = sub_12425C();
  if (v1 >> 62)
  {
    v13 = v1;
    v14 = sub_1260FC();
    v1 = v13;
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = sub_125FFC();
      goto LABEL_6;
    }

    if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      v2 = *(v1 + 32);

LABEL_6:

      if (qword_15EF38 != -1)
      {
        swift_once();
      }

      v3 = sub_125ABC();
      sub_5B30(v3, qword_162228);

      v4 = sub_125AAC();
      v5 = sub_125DFC();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v24[0] = swift_slowAlloc();
        *v6 = 136315394;
        v7 = sub_124B9C();
        v9 = sub_8530(v7, v8, v24);

        *(v6 + 4) = v9;
        *(v6 + 12) = 2080;
        v10 = sub_124B8C();
        v12 = sub_8530(v10, v11, v24);

        *(v6 + 14) = v12;
        _os_log_impl(&dword_0, v4, v5, "NLv4TranslationParse: Input is entity=%s verb=%s", v6, 0x16u);
        swift_arrayDestroy();
      }

      return v2;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (qword_15EF38 != -1)
  {
LABEL_19:
    swift_once();
  }

  v15 = sub_125ABC();
  sub_5B30(v15, qword_162228);
  swift_unknownObjectRetain();
  v16 = sub_125AAC();
  v17 = sub_125DEC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24[0] = v19;
    *v18 = 136315138;
    swift_unknownObjectRetain();
    v20 = sub_125BAC();
    v22 = sub_8530(v20, v21, v24);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_0, v16, v17, "NLv4TranslationParse: usoTasks are empty in UserDialogAct %s ", v18, 0xCu);
    sub_5BB0(v19);
  }

  return 0;
}

uint64_t sub_D6E14()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162228);
  sub_5B30(v0, qword_162228);
  return sub_1257AC();
}

uint64_t sub_D6ED8()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162240);
  sub_5B30(v0, qword_162240);
  return sub_12578C();
}

uint64_t sub_D6F24(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = *v2;
  return _swift_task_switch(sub_D6F70, 0, 0);
}

uint64_t sub_D6F70()
{
  if (qword_15EF40 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_162240);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ResponseTimerDisambiguationFlowProvider.makeIntentPromptAnswer(choice:)", v4, 2u);
  }

  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];

  sub_5AE8(&qword_15F900, &qword_12A800);
  v8 = *(v5 + 104);
  v0[3] = v8;
  v11 = v6 + 80;
  v10 = *(v6 + 80);
  v9 = *(v11 + 8);
  v12 = *(v9 + 8);

  v13 = v8;
  v12(v7, v10, v9);

  sub_1239BC();
  v14 = v0[1];

  return v14();
}

uint64_t sub_D7120()
{

  sub_5BB0((v0 + 40));

  return v0;
}

uint64_t sub_D7170()
{
  sub_D7120();

  return swift_deallocClassInstance();
}

void sub_D71C0(uint64_t a1)
{
  sub_DC350(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_D72B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NeedsDisambiguationDetailedFlowProvider.authenticationRequirements.getter(a1, WitnessTable);
}

uint64_t sub_D7318(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5D08;

  return sub_D6F24(a1, v4);
}

uint64_t sub_D73D0()
{
  v1 = *(*v0 + 88);

  return v1;
}

uint64_t sub_D7404(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v5 = type metadata accessor for ResponseTimerDisambiguationFlowProvider(0, *(a1 + 80), *(a1 + 88), v4);
  WitnessTable = swift_getWitnessTable();
  *v3 = v1;
  v3[1] = sub_23CC8;

  return NeedsDisambiguationDetailedSelectionFlowProvider.makeAllItemsFlow()(v5, WitnessTable);
}

uint64_t sub_D74D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v7 = type metadata accessor for ResponseTimerDisambiguationFlowProvider(0, *(a2 + 80), *(a2 + 88), v6);
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_5D08;

  return NeedsDisambiguationDetailedSelectionFlowProvider.makeWindowingConfiguration()(a1, v7, WitnessTable);
}

uint64_t sub_D75B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v9 = type metadata accessor for ResponseTimerDisambiguationFlowProvider(0, *(a3 + 80), *(a3 + 88), v8);
  WitnessTable = swift_getWitnessTable();
  *v7 = v3;
  v7[1] = sub_23CC8;

  return NeedsDisambiguationDetailedSelectionFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:)(a1, v6, v9, WitnessTable);
}

uint64_t sub_D76A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23CC8;

  return MultipleChoicePromptWindowingFlowProvider.makeConclusionFlow(paginationParameters:)(a1, a2, a3);
}

uint64_t sub_D7750(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v9 = type metadata accessor for ResponseTimerDisambiguationFlowProvider(0, *(a3 + 80), *(a3 + 88), v8);
  WitnessTable = swift_getWitnessTable();
  *v7 = v3;
  v7[1] = sub_23CC8;

  return NeedsDisambiguationDetailedSelectionFlowProvider.makeWindowFlow(paginationParameters:windowContent:)(a1, v6, v9, WitnessTable);
}

void sub_D783C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_5AE8(&qword_1623F8, &unk_12A7F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_123C1C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EF40 != -1)
  {
    swift_once();
  }

  v14 = sub_125ABC();
  sub_5B30(v14, qword_162240);
  v15 = sub_125AAC();
  v16 = sub_125DFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v21 = v13;
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "ResponseTimerSimpleDisambiguationStrategy.actionForInput(input:) called.", v17, 2u);
    v13 = v21;
  }

  v18 = qword_1622D8;
  swift_beginAccess();
  sub_DDCCC(v3 + v18, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_5CA8(v9, &qword_1623F8, &unk_12A7F0);
    v19 = 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v20 = sub_123C0C();
    v19 = ((v20 ^ sub_123BFC()) & 1) != 0 || (sub_123C0C() & 1) == 0 || sub_123BDC() != 0;
    (*(v11 + 8))(v13, v10);
  }

  sub_A11D4(a1, v19, *(v6 + 80), a2);
}

uint64_t sub_D7B58(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_123C1C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_D7C1C, 0, 0);
}

uint64_t sub_D7C1C(uint64_t a1)
{
  sub_123BCC();
  v2 = swift_task_alloc();
  v1[8] = v2;
  *v2 = v1;
  v2[1] = sub_D7CC0;
  v3 = v1[7];
  v4 = v1[3];
  v5 = v1[2];

  return sub_D7ECC(v5, v4, v3);
}

uint64_t sub_D7CC0()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(v5 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_D7E68, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_D7E68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_D7ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v4[27] = type metadata accessor for TimerBaseDisambiguationParameters(0);
  v4[28] = swift_task_alloc();
  v5 = sub_12368C();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v6 = sub_1237EC();
  v4[33] = v6;
  v4[34] = *(v6 - 8);
  v4[35] = swift_task_alloc();
  sub_124EDC();
  v4[36] = swift_task_alloc();
  v7 = sub_12397C();
  v4[37] = v7;
  v4[38] = *(v7 - 8);
  v4[39] = swift_task_alloc();
  v8 = sub_1239AC();
  v4[40] = v8;
  v4[41] = *(v8 - 8);
  v4[42] = swift_task_alloc();
  v9 = sub_125ABC();
  v4[43] = v9;
  v4[44] = *(v9 - 8);
  v4[45] = swift_task_alloc();
  v10 = sub_124FFC();
  v4[46] = v10;
  v4[47] = *(v10 - 8);
  v4[48] = swift_task_alloc();
  v11 = sub_12501C();
  v4[49] = v11;
  v4[50] = *(v11 - 8);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v12 = sub_124CCC();
  v4[53] = v12;
  v4[54] = *(v12 - 8);
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v13 = sub_1250BC();
  v4[57] = v13;
  v4[58] = *(v13 - 8);
  v4[59] = swift_task_alloc();
  v14 = sub_12392C();
  v4[60] = v14;
  v4[61] = *(v14 - 8);
  v4[62] = swift_task_alloc();
  sub_5AE8(&qword_1623F8, &unk_12A7F0);
  v4[63] = swift_task_alloc();

  return _swift_task_switch(sub_D83B0, 0, 0);
}

uint64_t sub_D83B0()
{
  v128 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = sub_1257EC();
  v4 = sub_1133B8(v2, v3);
  *(v0 + 512) = v4;
  v5 = *(v1 + 16);
  if (v5 >> 62)
  {
    v119 = sub_1260FC();
  }

  else
  {
    v119 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  v6 = *(v0 + 504);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  v9 = sub_123C1C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v6, v8, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  v11 = qword_1622D8;
  swift_beginAccess();
  sub_7CC5C(v6, v7 + v11, &qword_1623F8, &unk_12A7F0);
  swift_endAccess();
  if (qword_15EF40 != -1)
  {
    swift_once();
  }

  v12 = sub_5B30(*(v0 + 344), qword_162240);

  v13 = sub_125AAC();
  LOBYTE(v14) = sub_125DFC();
  v121 = v4;
  v122 = v12;
  if (!os_log_type_enabled(v13, v14))
  {

    goto LABEL_10;
  }

  v15 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v127[0] = v12;
  *v15 = 134218242;
  if (v4 >> 62)
  {
    goto LABEL_61;
  }

  for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); ; i = sub_1260FC())
  {
    *(v15 + 4) = i;

    *(v15 + 12) = 2080;
    type metadata accessor for TimerTimer(0);
    v17 = sub_125C7C();
    v19 = sub_8530(v17, v18, v127);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_0, v13, v14, "ResponseTimerDisambiguationStrategy.makePromptForItems(items:paginationParameters:) Converted %ld timers to send to dialog: %s", v15, 0x16u);
    sub_5BB0(v12);

    v12 = v122;
LABEL_10:
    v20 = *(v0 + 208);

    sub_123BDC();
    sub_DDC84(&qword_162400, &type metadata accessor for SiriTimer, &protocol conformance descriptor for NSObject);
    v21 = sub_12535C();

    v22 = qword_1622E0;
    v124 = v21;
    if (v21 != *(v20 + qword_1622E0))
    {
      *(*(v0 + 208) + qword_1622E8) = 0;
    }

    v23 = sub_125AAC();
    v24 = sub_125DFC();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 208);
    if (v25)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v127[0] = v28;
      *v27 = 134218498;
      v15 = v20;
      *(v27 + 4) = *(v20 + v22);
      *(v27 + 12) = 2048;
      *(v27 + 14) = *(v26 + qword_1622E8);

      *(v27 + 22) = 2080;
      *(v0 + 176) = v124;
      v29 = sub_12618C();
      v31 = sub_8530(v29, v30, v127);

      *(v27 + 24) = v31;
      _os_log_impl(&dword_0, v23, v24, "[makePromptForItems] window=%ld, promptCount=%ld, thisWindow=%s", v27, 0x20u);
      sub_5BB0(v28);

      v12 = v122;
    }

    else
    {
      v15 = v20;
    }

    v32 = *(v0 + 208);
    v14 = qword_1622E8;
    if (*(v32 + qword_1622E8))
    {
      v33 = *(v15 + v22);
      v34 = v33 != 0x8000000000000000 && v124 == v33;
      v35 = v34;
      v118 = v35;
    }

    else
    {
      v118 = 0;
    }

    v13 = *(v0 + 200);
    v36 = *(v32 + 32);
    if (sub_123C0C())
    {
      v13 = *(v0 + 200);
      v37 = sub_123BFC() ^ 1;
    }

    else
    {
      v37 = 1;
    }

    sub_101208(*(v0 + 192), v36, v37 & 1, *(v0 + 496));
    *(v15 + v22) = v124;
    v38 = *(v32 + v14);
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (!v39)
    {
      break;
    }

    __break(1u);
LABEL_61:
    ;
  }

  *(v32 + v14) = v40;
  sub_12524C();
  sub_12523C();
  sub_12522C();

  sub_23B08((v0 + 16), *(v0 + 40));
  v41 = sub_1235DC();
  sub_5BB0((v0 + 16));
  if (v41 & 1) != 0 || (v42 = *(v0 + 464), v43 = *(v0 + 472), v44 = *(v0 + 456), sub_1250AC(), v45 = sub_12504C(), v125 = *(v42 + 8), v125(v43, v44), !v45) || (v47 = *(v0 + 440), v46 = *(v0 + 448), v49 = *(v0 + 424), v48 = *(v0 + 432), sub_124C7C(), sub_124C6C(), sub_124C3C(), , sub_1254FC(), , sub_124CBC(), sub_DDC84(&qword_161B78, &type metadata accessor for ResponseMode, &protocol conformance descriptor for ResponseMode), v50 = sub_125B7C(), v51 = *(v48 + 8), v51(v47, v49), v51(v46, v49), (v50))
  {

    v52 = sub_125AAC();
    v53 = sub_125DFC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134217984;
      if (v121 >> 62)
      {
        v55 = sub_1260FC();
      }

      else
      {
        v55 = *(&dword_10 + (v121 & 0xFFFFFFFFFFFFFF8));
      }

      *(v54 + 4) = v55;

      _os_log_impl(&dword_0, v52, v53, "[makePromptForItems] Using disambiguation pattern with %ld items", v54, 0xCu);
    }

    else
    {
    }

    v56 = sub_648C8(*(v0 + 192), v36);
    *(v0 + 664) = v56;
    if (v56)
    {
      v57 = v56;
      v58 = objc_opt_self();
      *(v0 + 160) = 0;
      v59 = [v58 archivedDataWithRootObject:v57 requiringSecureCoding:1 error:v0 + 160];
      v60 = *(v0 + 160);
      if (v59)
      {
        v61 = *(v0 + 376);
        v62 = *(v0 + 384);
        v63 = *(v0 + 360);
        v64 = *(v0 + 352);
        v110 = *(v0 + 368);
        v111 = *(v0 + 344);
        v65 = *(v0 + 224);
        v114 = *(v0 + 216);
        v126 = sub_122EFC();
        v67 = v66;
        v116 = v66;

        *(v0 + 672) = v126;
        *(v0 + 680) = v67;
        (*(v61 + 104))(v62, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v110);
        (*(v64 + 16))(v63, v122, v111);
        mach_absolute_time();
        sub_12502C();
        v123 = sub_123BEC();
        LOBYTE(v61) = sub_123C0C();
        v68 = sub_123BFC();
        v69 = sub_123BBC();
        v70 = v114[14];
        v71 = sub_124E4C();
        v72 = *(*(v71 - 8) + 56);
        v72(v65 + v70, 1, 1, v71);
        v72(v65 + v114[15], 1, 1, v71);
        *v65 = 0;
        *(v65 + 8) = 0;
        *(v65 + 16) = 1;
        *(v65 + 17) = v123 & 1;
        *(v65 + 18) = v61 & 1;
        *(v65 + 19) = v68 & 1;
        *(v65 + 20) = v69 & 1;
        *(v65 + 21) = v118;
        *(v65 + 24) = v121;
        *(v65 + 32) = 0;
        *(v65 + 40) = 1;
        *(v65 + 48) = 0;
        *(v65 + 56) = 1;
        v73 = v65 + v114[16];
        *v73 = 0;
        *(v73 + 8) = 1;
        sub_DB360(v65, v126, v116, v119);
        v74 = sub_104248();
        *(v0 + 688) = v74;
        v75 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
        v76 = swift_task_alloc();
        *(v0 + 696) = v76;
        *v76 = v0;
        v76[1] = sub_DA8A0;
        v77 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v75);
        v78 = 0x800000000012EA80;
        v79 = 0xD000000000000018;
        v80 = v74;
LABEL_39:

        return v77(v79, v78, v80);
      }

      v86 = v60;

      sub_122E8C();

      swift_willThrow();
    }

    else
    {

      v82 = sub_125AAC();
      v83 = sub_125DFC();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_0, v82, v83, "Could not get timer action from timer.", v84, 2u);
      }

      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0, &unk_1293F0);
      swift_allocError();
      *v85 = 1;
      swift_willThrow();
    }

    (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));

    v87 = *(v0 + 8);

    return v87();
  }

  else
  {

    v88 = sub_125AAC();
    v89 = sub_125DFC();
    v90 = os_log_type_enabled(v88, v89);
    v91 = *(v0 + 192);
    if (v90)
    {
      v92 = swift_slowAlloc();
      *v92 = 134217984;
      if (v91 >> 62)
      {
        v109 = v92;
        v93 = sub_1260FC();
        v92 = v109;
      }

      else
      {
        v93 = *(&dword_10 + (v91 & 0xFFFFFFFFFFFFFF8));
      }

      *(v92 + 4) = v93;
      v94 = v92;

      _os_log_impl(&dword_0, v88, v89, "[makePromptForItems] Using multi-timer snippet model for %ld timers.", v94, 0xCu);
    }

    else
    {
    }

    v95 = *(v0 + 472);
    v120 = *(v0 + 456);
    v96 = *(v0 + 376);
    v112 = *(v0 + 384);
    v113 = *(v0 + 368);
    v97 = *(v0 + 352);
    v115 = *(v0 + 360);
    v117 = *(v0 + 344);
    v98 = *(v0 + 208);
    *(v0 + 168) = *(v0 + 192);
    v99 = sub_5AE8(&qword_15F900, &qword_12A800);
    v100 = sub_124F4C();
    v101 = sub_5C60(&qword_162408, &qword_15F900, &qword_12A800, &protocol conformance descriptor for [A]);
    *(v0 + 520) = sub_11394C(sub_DDC64, v98, v99, v100, &type metadata for Never, v101, &protocol witness table for Never, v102);
    (*(v96 + 104))(v112, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v113);
    (*(v97 + 16))(v115, v122, v117);
    mach_absolute_time();
    sub_12502C();
    sub_1250AC();
    LOBYTE(v98) = sub_12505C();
    v125(v95, v120);
    if ((v98 & 1) == 0)
    {
      type metadata accessor for TimerBaseCATsSimple(0);
      sub_124ECC();
      *(v0 + 616) = sub_124E7C();
      sub_5AE8(&qword_15F180, &unk_126E10);
      v106 = swift_allocObject();
      *(v0 + 624) = v106;
      *(v106 + 16) = xmmword_126CB0;
      *(v106 + 32) = 0x736D657469;
      *(v106 + 40) = 0xE500000000000000;
      *(v106 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
      *(v106 + 48) = v121;
      v107 = async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
      v108 = swift_task_alloc();
      *(v0 + 632) = v108;
      *v108 = v0;
      v108[1] = sub_DA07C;
      v77 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + v107);
      v79 = 0xD000000000000025;
      v78 = 0x800000000012EAA0;
      v80 = v106;
      goto LABEL_39;
    }

    type metadata accessor for TimerBaseCATs_Async(0);
    sub_124ECC();
    *(v0 + 528) = sub_124DBC();
    v103 = async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
    v104 = swift_task_alloc();
    *(v0 + 536) = v104;
    *v104 = v0;
    v104[1] = sub_D944C;
    v105 = *(v0 + 312);

    return ((&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + v103))(v105, 0xD00000000000001DLL, 0x800000000012EAD0, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_D944C()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_D980C;
  }

  else
  {

    v2 = sub_D959C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_D959C(uint64_t a1)
{
  v3 = v1[38];
  v2 = v1[39];
  v4 = v1[37];
  v5 = sub_12396C();
  (*(v3 + 8))(v2, v4);
  if (*(v5 + 16))
  {
    v7 = v1[41];
    v6 = v1[42];
    v8 = v1[40];
    v10 = v1[34];
    v9 = v1[35];
    v11 = v1[33];
    (*(v7 + 16))(v6, v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v8);

    sub_12399C();
    (*(v7 + 8))(v6, v8);
    v12 = sub_1237DC();
    v14 = v13;
    (*(v10 + 8))(v9, v11);
  }

  else
  {

    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v1[70] = v14;
  v1[69] = v12;
  v15 = v1[64];
  type metadata accessor for TimerBaseCATsSimple(0);
  sub_124ECC();
  v1[71] = sub_124E7C();
  sub_5AE8(&qword_15F180, &unk_126E10);
  v16 = swift_allocObject();
  v1[72] = v16;
  *(v16 + 16) = xmmword_126CB0;
  *(v16 + 32) = 0x736D657469;
  *(v16 + 40) = 0xE500000000000000;
  *(v16 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
  *(v16 + 48) = v15;
  v17 = async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
  v18 = swift_task_alloc();
  v1[73] = v18;
  *v18 = v1;
  v18[1] = sub_D99D0;

  return ((&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + v17))(0xD000000000000025, 0x800000000012EAA0, v16);
}

uint64_t sub_D980C()
{
  v1 = v0[52];
  v2 = v0[49];
  v3 = v0[50];

  (*(v3 + 8))(v1, v2);
  (*(v0[61] + 8))(v0[62], v0[60]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_D99D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 592) = v1;

  if (v1)
  {
    v5 = sub_D9EAC;
  }

  else
  {

    *(v4 + 600) = a1;
    v5 = sub_D9B34;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_D9B34(uint64_t a1)
{
  sub_12363C();
  v2 = sub_12503C();
  v1[15] = v2;
  v1[16] = sub_DDC84(&qword_15F930, &type metadata accessor for SiriTimePluginModel, &protocol conformance descriptor for SiriTimePluginModel);
  v3 = sub_23B4C(v1 + 12);
  sub_12525C();
  (*(*(v2 - 8) + 104))(v3, enum case for SiriTimePluginModel.timerSelector(_:), v2);
  v4 = swift_task_alloc();
  v1[76] = v4;
  *v4 = v1;
  v4[1] = sub_D9CF0;
  v5 = v1[62];
  v6 = v1[52];
  v7 = v1[32];
  v8 = v1[23];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v8, v7, v5, v1 + 12, v6, 0, 0, 0);
}

uint64_t sub_D9CF0()
{
  v1 = *v0;
  v2 = *(*v0 + 600);
  v3 = *(*v0 + 256);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 232);

  (*(v4 + 8))(v3, v5);
  sub_5CA8(v1 + 96, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_DDD3C, 0, 0);
}

uint64_t sub_D9EAC()
{
  v1 = v0[52];
  v2 = v0[49];
  v3 = v0[50];

  (*(v3 + 8))(v1, v2);
  (*(v0[61] + 8))(v0[62], v0[60]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_DA07C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 640) = v1;

  if (v1)
  {
    v5 = sub_DA6DC;
  }

  else
  {

    *(v4 + 648) = a1;
    v5 = sub_DA1E0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_DA1E0(uint64_t a1)
{
  sub_12363C();
  v2 = sub_12503C();
  v1[10] = v2;
  v1[11] = sub_DDC84(&qword_15F930, &type metadata accessor for SiriTimePluginModel, &protocol conformance descriptor for SiriTimePluginModel);
  v3 = sub_23B4C(v1 + 7);
  sub_12521C();
  (*(*(v2 - 8) + 104))(v3, enum case for SiriTimePluginModel.timerMulti(_:), v2);
  v4 = swift_task_alloc();
  v1[82] = v4;
  *v4 = v1;
  v4[1] = sub_DA384;
  v5 = v1[62];
  v6 = v1[52];
  v7 = v1[32];
  v8 = v1[23];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v8, v7, v5, v1 + 7, v6, 0, 0, 0);
}

uint64_t sub_DA384()
{
  v1 = *v0;
  v2 = *(*v0 + 648);
  v3 = *(*v0 + 256);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 232);

  (*(v4 + 8))(v3, v5);
  sub_5CA8(v1 + 56, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_DA540, 0, 0);
}

uint64_t sub_DA540()
{
  v1 = v0[62];
  v2 = v0[60];
  v3 = v0[61];
  (*(v0[50] + 8))(v0[52], v0[49]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_DA6DC()
{
  v1 = v0[52];
  v2 = v0[49];
  v3 = v0[50];

  (*(v3 + 8))(v1, v2);
  (*(v0[61] + 8))(v0[62], v0[60]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_DA8A0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 704) = a1;
  *(v3 + 712) = v1;

  if (v1)
  {
    v4 = sub_DACB4;
  }

  else
  {
    v4 = sub_DAA0C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_DAA0C()
{
  v1 = v0;
  sub_DDC08(v0[28]);
  sub_12363C();
  v2 = swift_task_alloc();
  v1[90] = v2;
  *v2 = v1;
  v2[1] = sub_DAB00;
  v3 = v1[62];
  v4 = v1[51];
  v5 = v1[31];
  v6 = v1[23];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v5, v3, v4, 0);
}

uint64_t sub_DAB00()
{
  v2 = *v1;
  *(*v1 + 728) = v0;

  v3 = v2[88];
  (*(v2[30] + 8))(v2[31], v2[29]);

  if (v0)
  {
    v4 = sub_DB02C;
  }

  else
  {
    v4 = sub_DAE7C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_DACB4()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  v5 = v0[50];
  v4 = v0[51];
  v6 = v0[49];
  sub_DDC08(v0[28]);
  sub_E498(v2, v1);

  (*(v5 + 8))(v4, v6);
  (*(v0[61] + 8))(v0[62], v0[60]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_DAE7C()
{
  v1 = v0[83];
  sub_E498(v0[84], v0[85]);

  v2 = v0[62];
  v4 = v0[60];
  v3 = v0[61];
  (*(v0[50] + 8))(v0[51], v0[49]);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_DB02C()
{
  v1 = v0[83];
  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[49];
  sub_E498(v0[84], v0[85]);

  (*(v3 + 8))(v2, v4);
  (*(v0[61] + 8))(v0[62], v0[60]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_DB1E4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_123D1C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a2 + 32);
  v12 = [v10 identifier];
  if (v12)
  {
    v18[1] = v10;
    v13 = v12;
    v14 = sub_125B9C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  sub_D1F0(v11, v14, v16, v9);

  sub_114918(v9, a3);
  return (*(v7 + 8))(v9, v6);
}

void sub_DB360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_5AE8(&unk_15F170, &unk_126E00);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  sub_124DEC();
  if (qword_15EEA8 != -1)
  {
    swift_once();
  }

  v9 = sub_124DDC();

  *a1 = v9;
  sub_122EEC(0);
  sub_124E1C();
  v10 = sub_124E4C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = type metadata accessor for TimerBaseDisambiguationParameters(0);
  sub_7CC5C(v8, a1 + *(v12 + 56), &unk_15F170, &unk_126E00);
  *(a1 + 48) = a4;
  *(a1 + 56) = 0;
  v13 = sub_12398C();

  sub_125F1C();
  v16 = v15;

  if (v16)
  {
    sub_124E2C();
    v11(v8, 0, 1, v10);
    sub_7CC5C(v8, a1 + *(v12 + 60), &unk_15F170, &unk_126E00);
  }

  else
  {
    if (qword_15EF40 != -1)
    {
      swift_once();
    }

    v17 = sub_125ABC();
    sub_5B30(v17, qword_162240);
    v18 = sub_125AAC();
    v19 = sub_125DEC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "Error generating base64 action for 'windowPromptButtonAction'", v20, 2u);
    }
  }
}

uint64_t sub_DB61C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_12392C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_12368C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_125ABC();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_124FFC();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = sub_12501C();
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_DB84C, 0, 0);
}

uint64_t sub_DB84C()
{
  if (qword_15EF40 != -1)
  {
    swift_once();
  }

  v12 = sub_5B30(v0[10], qword_162240);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "ResponseTimerDisambiguationStrategy.makeErrorResponse(error:)", v3, 2u);
  }

  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[10];
  v9 = v0[11];

  (*(v5 + 104))(v4, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v6);
  (*(v9 + 16))(v7, v12, v8);
  mach_absolute_time();
  sub_12502C();
  v13 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_DBA5C;

  return (v13)(0x73614272656D6974, 0xEF726F7272652365, _swiftEmptyArrayStorage);
}

uint64_t sub_DBA5C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_DBE30;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_DBB84;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_DBB84(uint64_t a1)
{
  sub_12364C();
  sub_12391C();
  v2 = swift_task_alloc();
  v1[22] = v2;
  *v2 = v1;
  v2[1] = sub_DBC44;
  v3 = v1[18];
  v4 = v1[9];
  v5 = v1[6];
  v6 = v1[2];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v4, v5, v3, 0);
}

uint64_t sub_DBC44()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  *(*v1 + 184) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_DBFA8;
  }

  else
  {
    v9 = sub_DBEEC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_DBE30()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_DBEEC()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_DBFA8()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_DC064(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_12392C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_12368C();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_DC180, 0, 0);
}

uint64_t sub_DC180()
{
  if (qword_15EF40 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_162240);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ResponseTimerDisambiguationStrategy.makeFlowCancelledResponse()", v4, 2u);
  }

  sub_12367C();
  sub_12391C();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1D494;
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[2];

  return sub_2F7D4(v8, v6, v7);
}

uint64_t sub_DC2F0()
{

  sub_5CA8(v0 + qword_1622D8, &qword_1623F8, &unk_12A7F0);
  return v0;
}

void sub_DC350(uint64_t a1)
{
  if (!qword_162370[0])
  {
    sub_123C1C();
    v1 = sub_125F2C();
    if (!v2)
    {
      atomic_store(v1, qword_162370);
    }
  }
}

uint64_t sub_DC3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  v9 = *(a4 + 80);
  *v8 = v4;
  v8[1] = sub_DC4A8;

  return sub_DD6F4(a2, a3, v9);
}

uint64_t sub_DC4A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_DC5B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5D08;

  return sub_D7B58(a1, a2);
}

uint64_t sub_DC660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v12 = type metadata accessor for ResponseTimerSimpleDisambiguationStrategy(0, *(a3 + 80), v10, v11);
  *v9 = v4;
  v9[1] = sub_5D08;

  return SimpleDisambiguationPromptStrategy.makeRepromptOnEmptyParse(items:)(a1, a2, v12, a4);
}

uint64_t sub_DC730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v12 = type metadata accessor for ResponseTimerSimpleDisambiguationStrategy(0, *(a3 + 80), v10, v11);
  *v9 = v4;
  v9[1] = sub_5D08;

  return SimpleDisambiguationPromptStrategy.makeRepromptOnLowConfidence(items:)(a1, a2, v12, a4);
}

uint64_t sub_DC800(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5D08;

  return sub_DC064(a1);
}

uint64_t sub_DC898(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5D08;

  return sub_DB61C(a1);
}

uint64_t sub_DC930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_123C8C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_123CDC();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_DCA50, 0, 0);
}

uint64_t sub_DCA50()
{
  v27 = v0;
  if (qword_15EF40 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[3];
  v5 = sub_125ABC();
  sub_5B30(v5, qword_162240);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_125AAC();
  v7 = sub_125DFC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    sub_DDC84(&unk_161858, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v14 = sub_12618C();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_8530(v14, v16, &v26);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "TimerDisambiguation.parseWindowActionFromInput(input:items:): %s", v12, 0xCu);
    sub_5BB0(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  sub_DD020(v0[3], v0[8]);

  v18 = swift_task_alloc();
  v0[12] = v18;
  v19 = sub_1257EC();
  *v18 = v0;
  v18[1] = sub_DCD08;
  v20 = v0[8];
  v21 = v0[4];
  v22 = v0[5];
  v23 = v0[2];
  v24 = v0[3];

  return static ResponseDisambigUtils.parseWindowActionFromInput<A>(input:windowInputType:items:choiceSelector:)(v23, v24, v20, v21, &unk_12A7E8, v22, v19);
}

uint64_t sub_DCD08()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  *(v5 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_DCECC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_DCECC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_DCF48(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = *(v6 + 80);
  *v7 = v3;
  v7[1] = sub_1DE18;

  return sub_DD6F4(a1, a2, v8);
}

uint64_t sub_DD020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_15EF40 != -1)
  {
    swift_once();
  }

  v4 = sub_125ABC();
  sub_5B30(v4, qword_162240);
  v5 = sub_125AAC();
  v6 = sub_125DDC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    swift_getMetatypeMetadata();
    v9 = sub_125BAC();
    v11 = sub_8530(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "TimerDisambiguation.determineInputType(input:) with intent type: %s", v7, 0xCu);
    sub_5BB0(v8);
  }

  return static TimerResponseDisambiguationUtils.determineWindowInputType(input:)(a1, a2);
}

uint64_t sub_DD1B8()
{
  sub_DC2F0();

  return swift_deallocClassInstance();
}

uint64_t sub_DD250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_5D08;

  return sub_DC930(a1, a2, a3);
}

uint64_t sub_DD304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_503C;

  return sub_D7ECC(a1, a2, a3);
}

uint64_t sub_DD3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v14 = type metadata accessor for ResponseTimerDisambiguationStrategy(0, *(a4 + 288), v12, v13);
  *v11 = v5;
  v11[1] = sub_5D08;

  return ListPromptFlowStrategy.makeRepromptOnEmptyParse(items:paginationParameters:)(a1, a2, a3, v14, a5);
}

uint64_t sub_DD498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v14 = type metadata accessor for ResponseTimerDisambiguationStrategy(0, *(a4 + 288), v12, v13);
  *v11 = v5;
  v11[1] = sub_5D08;

  return ListPromptFlowStrategy.makeRepromptOnLowConfidence(items:paginationParameters:)(a1, a2, a3, v14, a5);
}

uint64_t sub_DD578(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5D08;

  return sub_DB61C(a1);
}

uint64_t sub_DD6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_123CDC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_DD7B8, 0, 0);
}

uint64_t sub_DD7B8()
{
  v23 = v0;
  if (qword_15EF40 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = sub_125ABC();
  sub_5B30(v5, qword_162240);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_125AAC();
  v7 = sub_125DFC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    sub_DDC84(&unk_161858, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v14 = sub_12618C();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_8530(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "ResponseTimerSimpleDisambiguationStrategy.parseDisambiguationResult(input:items:) parsing input: %s", v12, 0xCu);
    sub_5BB0(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[8] = v18;
  *v18 = v0;
  v18[1] = sub_DDA34;
  v19 = v0[3];
  v20 = v0[2];

  return static TimerResponseDisambiguationUtils.parsePromptResult<A>(input:items:intentType:)(v20, v19);
}

uint64_t sub_DDA34(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_DDB60(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_23934;

  return sub_DCF48(a1, a2, v2);
}

uint64_t sub_DDC08(uint64_t a1)
{
  v2 = type metadata accessor for TimerBaseDisambiguationParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DDC84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_DDCCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_1623F8, &unk_12A7F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DDD3C()
{

  return sub_DA540();
}

uint64_t sub_DDDC0(void *a1)
{
  sub_12561C();
  sub_12560C();
  sub_1233FC();
  if (qword_15EEA8 != -1)
  {
    swift_once();
  }

  sub_12333C();
  sub_5AE8(&unk_160770, &qword_127E08);
  sub_1233AC();
  sub_5AE8(&qword_162410, &qword_12A810);
  sub_5C60(&qword_162418, &qword_162410, &qword_12A810, &unk_12A6F8);
  sub_12335C();
  sub_1233EC();
  sub_2F488(a1, v5);
  sub_DF448();
  sub_12334C();
  sub_1233DC();
  sub_2F488(a1, v4);
  sub_DF49C();
  sub_12332C();
  sub_12339C();
  sub_2F488(a1, v3);
  sub_5AE8(&qword_162430, &qword_12A818);
  sub_5C60(&qword_162438, &qword_162430, &qword_12A818, &unk_128670);
  sub_12337C();
  sub_1233CC();
  sub_5BB0(a1);
  sub_DF4F0(v3);
  sub_DF558(v4);
  return sub_DF5AC(v5);
}

void *sub_DDFFC()
{
  sub_5AE8(&qword_162490, &qword_12BDD0);
  v0 = sub_123B5C();
  v1 = [v0 disambiguationItems];

  v2 = sub_125C6C();
  v3 = sub_DEEC0(v2);

  if (v3)
  {
    v4 = sub_123B4C();
    if (qword_15EE90 != -1)
    {
      swift_once();
    }

    v5 = sub_125ABC();
    sub_5B30(v5, qword_160E68);
    v6 = v4;
    v7 = sub_125AAC();
    v8 = sub_125DFC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v9 = 136315138;
      v10 = v6;
      v11 = [v10 description];
      v12 = sub_125B9C();
      v13 = v3;
      v15 = v14;

      v16 = sub_8530(v12, v15, &v20);
      v3 = v13;

      *(v9 + 4) = v16;
      _os_log_impl(&dword_0, v7, v8, "Creating ResponseTimerDisambiguationFlowProvider with intent: %s", v9, 0xCu);
      sub_5BB0(v19);
    }

    sub_5AE8(&qword_1601E0, &qword_127E98);
    swift_allocObject();
    return sub_DEFAC(v3, v6, 5, &qword_162498, &qword_12A870, &qword_1624A0, &unk_12A878);
  }

  else
  {
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0, &unk_1293F0);
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }
}

void *sub_DE2F0()
{
  sub_5AE8(&qword_161818, &qword_1292C0);
  v0 = sub_123B5C();
  v1 = [v0 disambiguationItems];

  v2 = sub_125C6C();
  v3 = sub_DEEC0(v2);

  if (v3)
  {
    v4 = sub_123B4C();
    if (qword_15EE90 != -1)
    {
      swift_once();
    }

    v5 = sub_125ABC();
    sub_5B30(v5, qword_160E68);
    v6 = v4;
    v7 = sub_125AAC();
    v8 = sub_125DFC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v9 = 136315138;
      v10 = v6;
      v11 = [v10 description];
      v12 = sub_125B9C();
      v13 = v3;
      v15 = v14;

      v16 = sub_8530(v12, v15, &v20);
      v3 = v13;

      *(v9 + 4) = v16;
      _os_log_impl(&dword_0, v7, v8, "Creating ResponseTimerDisambiguationFlowProvider with intent: %s", v9, 0xCu);
      sub_5BB0(v19);
    }

    sub_5AE8(&qword_1621F8, &qword_12A260);
    swift_allocObject();
    return sub_DEFAC(v3, v6, 8, &qword_162480, &qword_12A860, &qword_162488, &qword_12A868);
  }

  else
  {
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0, &unk_1293F0);
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }
}

void *sub_DE5E4()
{
  sub_5AE8(&qword_1612A8, &qword_128EA0);
  v0 = sub_123B5C();
  v1 = [v0 disambiguationItems];

  v2 = sub_125C6C();
  v3 = sub_DEEC0(v2);

  if (v3)
  {
    v4 = sub_123B4C();
    if (qword_15EE90 != -1)
    {
      swift_once();
    }

    v5 = sub_125ABC();
    sub_5B30(v5, qword_160E68);
    v6 = v4;
    v7 = sub_125AAC();
    v8 = sub_125DFC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v9 = 136315138;
      v10 = v6;
      v11 = [v10 description];
      v12 = sub_125B9C();
      v13 = v3;
      v15 = v14;

      v16 = sub_8530(v12, v15, &v20);
      v3 = v13;

      *(v9 + 4) = v16;
      _os_log_impl(&dword_0, v7, v8, "Creating ResponseTimerDisambiguationFlowProvider with intent: %s", v9, 0xCu);
      sub_5BB0(v19);
    }

    sub_5AE8(&qword_162410, &qword_12A810);
    swift_allocObject();
    return sub_DEFAC(v3, v6, 2, &qword_162440, &qword_12A820, &qword_162448, &qword_12A828);
  }

  else
  {
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0, &unk_1293F0);
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }
}

void *sub_DE8D8()
{
  sub_5AE8(&qword_161FC0, &qword_129DE0);
  v0 = sub_123B5C();
  v1 = [v0 disambiguationItems];

  v2 = sub_125C6C();
  v3 = sub_DEEC0(v2);

  if (v3)
  {
    v4 = sub_123B4C();
    if (qword_15EE90 != -1)
    {
      swift_once();
    }

    v5 = sub_125ABC();
    sub_5B30(v5, qword_160E68);
    v6 = v4;
    v7 = sub_125AAC();
    v8 = sub_125DFC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v9 = 136315138;
      v10 = v6;
      v11 = [v10 description];
      v12 = sub_125B9C();
      v13 = v3;
      v15 = v14;

      v16 = sub_8530(v12, v15, &v20);
      v3 = v13;

      *(v9 + 4) = v16;
      _os_log_impl(&dword_0, v7, v8, "Creating ResponseTimerDisambiguationFlowProvider with intent: %s", v9, 0xCu);
      sub_5BB0(v19);
    }

    sub_5AE8(&qword_162450, &qword_12A830);
    swift_allocObject();
    return sub_DEFAC(v3, v6, 12, &qword_162458, &qword_12A838, &qword_162460, &qword_12A840);
  }

  else
  {
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0, &unk_1293F0);
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }
}

void *sub_DEBCC()
{
  sub_5AE8(&qword_1620D8, &qword_12A120);
  v0 = sub_123B5C();
  v1 = [v0 disambiguationItems];

  v2 = sub_125C6C();
  v3 = sub_DEEC0(v2);

  if (v3)
  {
    v4 = sub_123B4C();
    if (qword_15EE90 != -1)
    {
      swift_once();
    }

    v5 = sub_125ABC();
    sub_5B30(v5, qword_160E68);
    v6 = v4;
    v7 = sub_125AAC();
    v8 = sub_125DFC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v9 = 136315138;
      v10 = v6;
      v11 = [v10 description];
      v12 = sub_125B9C();
      v13 = v3;
      v15 = v14;

      v16 = sub_8530(v12, v15, &v20);
      v3 = v13;

      *(v9 + 4) = v16;
      _os_log_impl(&dword_0, v7, v8, "Creating ResponseTimerDisambiguationFlowProvider with intent: %s", v9, 0xCu);
      sub_5BB0(v19);
    }

    sub_5AE8(&qword_162468, &qword_12A848);
    swift_allocObject();
    return sub_DEFAC(v3, v6, 7, &qword_162470, &qword_12A850, &qword_162478, &qword_12A858);
  }

  else
  {
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0, &unk_1293F0);
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }
}

void *sub_DEEC0(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_12606C();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_8B50(i, v5);
    sub_1257EC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_12603C();
    sub_12607C();
    sub_12608C();
    sub_12604C();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void *sub_DEFAC(unint64_t a1, void *a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v10 = v7;
  v13 = sub_124EDC();
  __chkstk_darwin(v13 - 8);
  sub_123ACC();
  sub_12394C();
  swift_allocObject();
  sub_12393C();
  v14 = sub_1232DC();
  swift_allocObject();
  v15 = sub_1232CC();
  v7[8] = v14;
  v7[9] = &protocol witness table for PatternFlowProvider;
  v7[5] = v15;
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v7[10] = sub_124DBC();
  v7[11] = 0xD000000000000018;
  v7[12] = 0x800000000012EA80;
  if (qword_15EF40 != -1)
  {
    swift_once();
  }

  v16 = sub_125ABC();
  sub_5B30(v16, qword_162240);

  v17 = a2;
  v18 = sub_125AAC();
  v19 = sub_125DFC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v41[0] = v35;
    *v20 = 134218242;
    v36 = a4;
    v37 = a5;
    if (a1 >> 62)
    {
      v21 = sub_1260FC();
    }

    else
    {
      v21 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    *(v20 + 4) = v21;

    *(v20 + 12) = 2080;
    v22 = v17;
    v23 = [v22 description];
    v24 = sub_125B9C();
    v26 = v25;

    v27 = sub_8530(v24, v26, v41);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_0, v18, v19, "ResponseTimerDisambiguationFlowProvider.init with %ld items and intent: %s", v20, 0x16u);
    sub_5BB0(v35);

    a4 = v36;
    a5 = v37;
  }

  else
  {
  }

  v10[2] = a1;
  v10[13] = v17;
  v28 = v10[10];
  sub_5AE8(a4, a5);
  v29 = swift_allocObject();
  v30 = qword_1622D8;
  v31 = sub_123C1C();
  v32 = *(*(v31 - 8) + 56);
  v32(v29 + v30, 1, 1, v31);
  *(v29 + qword_1622E0) = 0x8000000000000000;
  *(v29 + qword_1622E8) = 0;
  *(v29 + 16) = a1;
  *(v29 + 24) = v28;
  *(v29 + 32) = a3;
  v10[3] = v29;
  sub_5AE8(a6, a7);
  v33 = swift_allocObject();
  v32(v33 + qword_1622D8, 1, 1, v31);
  *(v33 + qword_1622E0) = 0x8000000000000000;
  *(v33 + qword_1622E8) = 0;
  *(v33 + 16) = a1;
  *(v33 + 24) = v28;
  *(v33 + 32) = a3;
  v10[4] = v33;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  return v10;
}

uint64_t sub_DF3BC(uint64_t *a1)
{
  *a1 = sub_DE5E4();
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_DF448()
{
  result = qword_162420;
  if (!qword_162420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162420);
  }

  return result;
}

unint64_t sub_DF49C()
{
  result = qword_162428;
  if (!qword_162428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162428);
  }

  return result;
}

uint64_t sub_DF4F0(uint64_t a1)
{
  v2 = sub_5AE8(&qword_162430, &qword_12A818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_DF600()
{
  v1 = v0;
  v2 = sub_5AE8(&qword_162008, &qword_129F20);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = *v1;
  v37 = &type metadata for Double;
  v38 = &protocol witness table for Double;
  v39 = &protocol witness table for Double;
  *&v36 = v5;
  sub_E3AC(&v36, &v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = &_swiftEmptyDictionarySingleton;
  v7 = sub_23C74(&v34, v35);
  sub_2309C(0x6E6F697461727564, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v40, *v7);
  sub_5BB0(&v34);
  v8 = v40;
  v9 = v1[1];
  v38 = &protocol witness table for Int;
  v39 = &protocol witness table for Int;
  v37 = &type metadata for Int;
  *&v36 = v9;
  sub_E3AC(&v36, &v34);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v40 = v8;
  v11 = sub_23C74(&v34, v35);
  sub_23204(*v11, 0x756F4372656D6974, 0xEA0000000000746ELL, v10, &v40);
  sub_5BB0(&v34);
  v12 = v40;
  v13 = *(v1 + 16);
  v37 = &type metadata for Bool;
  v38 = &protocol witness table for Bool;
  v39 = &protocol witness table for Bool;
  LOBYTE(v36) = v13;
  sub_E3AC(&v36, &v34);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v12;
  v15 = sub_23C74(&v34, v35);
  sub_23374(*v15, 0xD000000000000018, 0x800000000012EAF0, v14, &v33);
  sub_5BB0(&v34);
  v40 = v33;
  v16 = type metadata accessor for TimeSuggestionExecutionParameters(0);
  sub_DFC10(v1 + *(v16 + 28), v4);
  v17 = sub_124CCC();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v4, 1, v17) == 1)
  {
    sub_5CA8(v4, &qword_162008, &qword_129F20);
    sub_DFB18(0x65736E6F70736572, 0xEC00000065646F4DLL, &v36);
    sub_5CA8(&v36, &qword_1624A8, &qword_12A888);
    v19 = v40;
  }

  else
  {
    v37 = v17;
    v20 = sub_DFC80(&qword_1624B0, &protocol conformance descriptor for ResponseMode);
    v38 = v20;
    v21 = sub_DFC80(&qword_1624B8, &protocol conformance descriptor for ResponseMode);
    v39 = v21;
    v22 = sub_23B4C(&v36);
    (*(v18 + 32))(v22, v4, v17);
    sub_E3AC(&v36, &v34);
    v23 = v40;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v33 = v23;
    v25 = sub_23C74(&v34, v35);
    __chkstk_darwin(v25);
    v27 = &v33 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v27);
    sub_DFCC4(v27, 0x65736E6F70736572, 0xEC00000065646F4DLL, v24, &v33, v17, v20, v21);
    sub_5BB0(&v34);
    v19 = v33;
  }

  v29 = *(v1 + *(v16 + 32));
  v37 = &type metadata for Bool;
  v38 = &protocol witness table for Bool;
  v39 = &protocol witness table for Bool;
  LOBYTE(v36) = v29;
  sub_E3AC(&v36, &v34);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v19;
  v31 = sub_23C74(&v34, v35);
  sub_23374(*v31, 0xD00000000000001ALL, 0x800000000012EB10, v30, &v33);
  sub_5BB0(&v34);
  return v33;
}

double sub_DFB18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_8AD8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_AB638();
      v10 = v12;
    }

    sub_E3AC((*(v10 + 56) + 48 * v8), a3);
    sub_AB010(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t type metadata accessor for TimeSuggestionExecutionParameters(uint64_t a1)
{
  result = qword_162518;
  if (!qword_162518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_DFC10(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_162008, &qword_129F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DFC80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_124CCC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_DFCC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v16 = sub_23B4C(&v34);
  (*(*(a6 - 8) + 32))(v16, a1, a6);
  v17 = *a5;
  v19 = sub_8AD8(a2, a3);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a4 & 1) != 0)
  {
LABEL_7:
    v25 = *a5;
    if (v23)
    {
LABEL_8:
      v26 = (v25[7] + 48 * v19);
      sub_5BB0(v26);
      return sub_E3AC(&v34, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a4 & 1) == 0)
  {
    sub_AB638();
    goto LABEL_7;
  }

  sub_AA984(v22, a4 & 1);
  v28 = sub_8AD8(a2, a3);
  if ((v23 & 1) != (v29 & 1))
  {
LABEL_14:
    result = sub_1261FC();
    __break(1u);
    return result;
  }

  v19 = v28;
  v25 = *a5;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = sub_23C74(&v34, v35);
  __chkstk_darwin(v30);
  v32 = &v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32);
  sub_DFF04(v19, a2, a3, v32, v25, a6, a7, a8);

  return sub_5BB0(&v34);
}

_OWORD *sub_DFF04(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v14 = sub_23B4C(&v20);
  (*(*(a6 - 8) + 32))(v14, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v15 = (a5[6] + 16 * a1);
  *v15 = a2;
  v15[1] = a3;
  result = sub_E3AC(&v20, (a5[7] + 48 * a1));
  v17 = a5[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v19;
  }

  return result;
}

uint64_t sub_DFFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_5AE8(&qword_162008, &qword_129F20);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_E00C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
  }

  else
  {
    v7 = sub_5AE8(&qword_162008, &qword_129F20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_E0170(uint64_t a1)
{
  sub_E0204(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_E0204(uint64_t a1)
{
  if (!qword_162528)
  {
    sub_124CCC();
    v1 = sub_125F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_162528);
    }
  }
}

uint64_t sub_E02BC()
{
  v1 = sub_5AE8(&unk_15F170, &unk_126E00);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v19 - v6;
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_127990;
  *(v10 + 32) = 0x614E656369766564;
  *(v10 + 40) = 0xEA0000000000656DLL;
  sub_E344(v0, v9, &unk_15F170, &unk_126E00);
  v11 = sub_124E4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) == 1)
  {
    sub_5CA8(v9, &unk_15F170, &unk_126E00);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    v14 = sub_23B4C((v10 + 48));
    (*(v12 + 32))(v14, v9, v11);
  }

  *(v10 + 80) = 0x7954676F6C616964;
  *(v10 + 88) = 0xEA00000000006570;
  v15 = type metadata accessor for DismissTimerHandledRemoteParameters(0);
  sub_E344(v0 + v15[5], v7, &unk_15F170, &unk_126E00);
  if (v13(v7, 1, v11) == 1)
  {
    sub_5CA8(v7, &unk_15F170, &unk_126E00);
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
  }

  else
  {
    *(v10 + 120) = v11;
    v16 = sub_23B4C((v10 + 96));
    (*(v12 + 32))(v16, v7, v11);
  }

  *(v10 + 128) = 0x537373696D736964;
  *(v10 + 136) = 0xEF796C746E656C69;
  *(v10 + 144) = *(v0 + v15[6]);
  *(v10 + 168) = &type metadata for Bool;
  *(v10 + 176) = 0x656D614E6D6F6F72;
  *(v10 + 184) = 0xE800000000000000;
  sub_E344(v0 + v15[7], v4, &unk_15F170, &unk_126E00);
  if (v13(v4, 1, v11) == 1)
  {
    sub_5CA8(v4, &unk_15F170, &unk_126E00);
    *(v10 + 192) = 0u;
    *(v10 + 208) = 0u;
  }

  else
  {
    *(v10 + 216) = v11;
    v17 = sub_23B4C((v10 + 192));
    (*(v12 + 32))(v17, v4, v11);
  }

  return v10;
}

uint64_t sub_E062C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  *(v4 + 40) = type metadata accessor for DismissTimerHandledRemoteParameters(0);
  *(v4 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_E06C8, 0, 0);
}

uint64_t sub_E06C8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 88);
  v5 = sub_124E4C();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v6(v1 + v2[5], 1, 1, v5);
  v6(v1 + v2[7], 1, 1, v5);
  *(v1 + v2[6]) = v4;
  v3(v1);
  v7 = sub_E02BC();
  *(v0 + 56) = v7;
  v10 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_E0858;

  return v10(0xD00000000000001ALL, 0x800000000012EB70, v7);
}

uint64_t sub_E0858(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_E0A18;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_E09A4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_E09A4()
{
  sub_E0C58(v0[6]);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_E0A18()
{
  sub_E0C58(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E0A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_E344(a1, v11, &qword_15F5D0, &unk_126EA0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_124DAC();
  (*(v6 + 8))(a2, v5);
  sub_5CA8(a1, &qword_15F5D0, &unk_126EA0);
  return v12;
}

uint64_t sub_E0C58(uint64_t a1)
{
  v2 = type metadata accessor for DismissTimerHandledRemoteParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E0CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5AE8(&unk_15F170, &unk_126E00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_E0DB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_5AE8(&unk_15F170, &unk_126E00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

void sub_E0E78(uint64_t a1)
{
  sub_95D2C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_E0F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_124BCC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_E0F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_124BCC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for TimerNLv3Intent(uint64_t a1)
{
  result = qword_1626C0;
  if (!qword_1626C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E1040(uint64_t a1)
{
  result = sub_124BCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_E113C()
{
  v0 = sub_124F8C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v36[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_5AE8(&qword_15F5F0, &unk_12AAA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v36[-v5];
  if (qword_15EF90 != -1)
  {
    swift_once();
  }

  type metadata accessor for TimerNLv3Intent(0);
  sub_E499C(&qword_15FFA0, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
  sub_12428C();
  if (v37 == 36)
  {
    goto LABEL_12;
  }

  if (sub_E2BBC(v37) == 6647407 && v7 == 0xE300000000000000)
  {
  }

  else
  {
    v8 = sub_1261BC();

    if ((v8 & 1) == 0)
    {
LABEL_12:
      if (qword_15EF58 != -1)
      {
        swift_once();
      }

      sub_12428C();
      if (v38)
      {
        v12 = sub_125B8C();
      }

      else
      {
        v12 = 0;
      }

      sub_1257EC();
      v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v14 = sub_125B8C();
      v15 = [v13 initWithIdentifier:v12 displayString:v14];

      if (qword_15EF60 != -1)
      {
        swift_once();
      }

      sub_12428C();
      v16 = v38;
      if (v38)
      {
        sub_125BDC();

        v17 = objc_allocWithZone(INSpeakableString);
        v18 = sub_125B8C();

        v19 = [v17 initWithSpokenPhrase:v18];

        if (v19)
        {
          v16 = [v19 spokenPhrase];

          if (!v16)
          {
            sub_125B9C();
            v16 = sub_125B8C();
          }
        }

        else
        {
          v16 = 0;
        }
      }

      [v15 setLabel:v16];

      sub_E3330();
      isa = sub_125D5C().super.super.isa;
      [v15 setDuration:isa];

      [objc_opt_self() defaultDuration];
      v21 = sub_125D5C().super.super.isa;
      [v15 setRemainingTime:v21];

      [v15 setState:0];
      if (qword_15EF70 != -1)
      {
        swift_once();
      }

      sub_12428C();
      if (v37)
      {
        v22 = 0;
      }

      else
      {
        v22 = 2;
      }

      [v15 setType:v22];
      sub_E18C8();
      v23 = sub_125CEC().super.super.isa;
      [v15 setShouldMatchAny:v23];

      return v15;
    }
  }

  sub_12466C();
  swift_allocObject();
  sub_12465C();
  v9 = sub_12438C();

  if (!v9)
  {
    goto LABEL_12;
  }

  sub_124F7C();
  sub_124F6C();
  (*(v1 + 8))(v3, v0);
  v10 = sub_125B4C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {

    sub_5CA8(v6, &qword_15F5F0, &unk_12AAA0);
    goto LABEL_12;
  }

  sub_1257EC();
  v25 = sub_125B1C();
  (*(v11 + 8))(v6, v10);
  if (!v25)
  {

    goto LABEL_12;
  }

  if (qword_15EF48 != -1)
  {
    swift_once();
  }

  v26 = sub_125ABC();
  sub_5B30(v26, qword_162650);
  v15 = v25;
  v27 = sub_125AAC();
  v28 = sub_125DFC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v30;
    *v29 = 136315138;
    v15 = v15;
    v31 = [v15 description];
    v32 = sub_125B9C();
    v34 = v33;

    v35 = sub_8530(v32, v34, &v37);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_0, v27, v28, "getSiriTimer: Resolved timer %s from SRR. Using it to search timer.", v29, 0xCu);
    sub_5BB0(v30);
  }

  return v15;
}

uint64_t sub_E18C8()
{
  if (qword_15EF88 != -1)
  {
    swift_once();
  }

  type metadata accessor for TimerNLv3Intent(0);
  sub_E499C(&qword_15FFA0, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
  sub_12428C();
  if (v4 == 3)
  {
    v0 = 1;
  }

  else
  {
    if (qword_15EF90 != -1)
    {
      swift_once();
    }

    sub_12428C();
    if (v3 == 36)
    {
      v0 = 0;
    }

    else if (sub_E2BBC(v3) == 2037277037 && v1 == 0xE400000000000000)
    {

      v0 = 1;
    }

    else
    {
      v0 = sub_1261BC();
    }
  }

  return v0 & 1;
}

id sub_E1A4C()
{
  v1 = v0;
  v2 = sub_5AE8(&qword_15FF90, &unk_127BC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v24[-v3];
  v5 = type metadata accessor for TimerNLv3Intent(0);
  __chkstk_darwin(v5);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_15EF50 != -1)
  {
    swift_once();
  }

  sub_E499C(&qword_15FFA0, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
  sub_12428C();
  if (v25 <= 4u)
  {
    if (v25 > 1u)
    {
      if (v25 != 2)
      {
        if (v25 == 3)
        {
          sub_12558C();
          sub_9848(v0, v7);
          return sub_F2258(v7);
        }

        sub_9848(v0, v7);
        v16 = sub_E113C();
        sub_E18C8();
        v17 = sub_125CFC();
        v18 = [objc_allocWithZone(sub_12555C()) init];
        goto LABEL_27;
      }

LABEL_25:
      sub_12568C();
      sub_9848(v1, v7);
      return sub_F24F8(v7);
    }

    if (v25)
    {
      sub_9848(v0, v7);
      v14 = [objc_allocWithZone(sub_12561C()) init];
      v15 = sub_E113C();
      [v14 setTargetTimer:v15];

      [v14 setTargetingInfo:0];
      sub_97EC(v7);
      return v14;
    }

    goto LABEL_31;
  }

  if (v25 > 6u)
  {
    if (v25 == 7)
    {
      if (qword_15EF48 != -1)
      {
        swift_once();
      }

      v19 = sub_125ABC();
      sub_5B30(v19, qword_162650);
      v10 = sub_125AAC();
      v11 = sub_125DEC();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_24;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "TimerFlow doen't support nlv3 intent verb: add. Returning searchIntent anyways";
    }

    else
    {
      if (v25 != 8)
      {
        if (qword_15EF78 != -1)
        {
          swift_once();
        }

        sub_12428C();
        v22 = sub_12412C();
        v23 = (*(*(v22 - 8) + 48))(v4, 1, v22);
        sub_5CA8(v4, &qword_15FF90, &unk_127BC0);
        if (v23 == 1)
        {
          goto LABEL_25;
        }

LABEL_31:
        sub_1255EC();
        sub_9848(v1, v7);
        return sub_F2078(v7);
      }

      if (qword_15EF48 != -1)
      {
        swift_once();
      }

      v9 = sub_125ABC();
      sub_5B30(v9, qword_162650);
      v10 = sub_125AAC();
      v11 = sub_125DEC();
      if (!os_log_type_enabled(v10, v11))
      {
LABEL_24:

        goto LABEL_25;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "TimerFlow doen't support nlv3 intent verb: substract. Returning searchIntent anyways";
    }

    _os_log_impl(&dword_0, v10, v11, v13, v12, 2u);

    goto LABEL_24;
  }

  if (v25 == 5)
  {
    sub_9848(v0, v7);
    v16 = sub_E113C();
    sub_E18C8();
    v17 = sub_125CFC();
    v18 = [objc_allocWithZone(sub_12564C()) init];
LABEL_27:
    v20 = v18;
    [v16 setShouldMatchAny:v17];
    v21 = v16;
    [v20 setTargetTimer:v21];

    sub_97EC(v7);
    return v20;
  }

  sub_12550C();
  sub_9848(v0, v7);
  return sub_F2310(v7);
}

uint64_t sub_E1FC8()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162650);
  sub_5B30(v0, qword_162650);
  return sub_1257AC();
}

uint64_t sub_E2014()
{
  sub_5AE8(&qword_162728, &qword_12AA78);
  swift_allocObject();
  result = sub_12406C();
  qword_1677E0 = result;
  return result;
}

uint64_t sub_E207C()
{
  sub_5AE8(&qword_162700, &qword_12AA38);
  swift_allocObject();
  result = sub_12406C();
  qword_1677E8 = result;
  return result;
}

uint64_t sub_E20E0()
{
  sub_5AE8(&qword_162700, &qword_12AA38);
  swift_allocObject();
  result = sub_12406C();
  qword_1677F0 = result;
  return result;
}

uint64_t sub_E2148()
{
  sub_5AE8(&qword_162700, &qword_12AA38);
  swift_allocObject();
  result = sub_12406C();
  qword_1677F8 = result;
  return result;
}

uint64_t sub_E21B8()
{
  sub_5AE8(&qword_162718, &qword_12AA68);
  swift_allocObject();
  result = sub_12406C();
  qword_167800 = result;
  return result;
}

uint64_t sub_E2220()
{
  sub_5AE8(&qword_162710, &qword_12AA60);
  swift_allocObject();
  result = sub_12406C();
  qword_167808 = result;
  return result;
}

uint64_t sub_E2288()
{
  sub_5AE8(&qword_162710, &qword_12AA60);
  swift_allocObject();
  result = sub_12406C();
  qword_167810 = result;
  return result;
}

uint64_t sub_E22F4()
{
  sub_5AE8(&qword_162758, &qword_12AA88);
  swift_allocObject();
  result = sub_12406C();
  qword_167818 = result;
  return result;
}

uint64_t sub_E2364()
{
  sub_5AE8(&qword_162768, &qword_12AA90);
  swift_allocObject();
  result = sub_12406C();
  qword_167820 = result;
  return result;
}

uint64_t sub_E23D4()
{
  sub_5AE8(&qword_162778, &qword_12AA98);
  swift_allocObject();
  result = sub_12406C();
  qword_167828 = result;
  return result;
}

uint64_t sub_E243C()
{
  sub_5AE8(&qword_162710, &qword_12AA60);
  swift_allocObject();
  result = sub_12406C();
  qword_167830 = result;
  return result;
}

uint64_t sub_E24A4()
{
  sub_5AE8(&qword_162730, &qword_12AA80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_12A970;
  if (qword_15EF50 != -1)
  {
    swift_once();
  }

  v1 = qword_1677E0;
  *(v0 + 56) = sub_5AE8(&qword_162728, &qword_12AA78);
  *(v0 + 64) = sub_5C60(&qword_162738, &qword_162728, &qword_12AA78, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 32) = v1;
  v2 = qword_15EF58;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1677E8;
  v4 = sub_5AE8(&qword_162700, &qword_12AA38);
  *(v0 + 96) = v4;
  v5 = sub_5C60(&qword_162740, &qword_162700, &qword_12AA38, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 104) = v5;
  *(v0 + 72) = v3;
  v6 = qword_15EF60;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1677F0;
  *(v0 + 136) = v4;
  *(v0 + 144) = v5;
  *(v0 + 112) = v7;
  v8 = qword_15EF70;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_167800;
  *(v0 + 176) = sub_5AE8(&qword_162718, &qword_12AA68);
  *(v0 + 184) = sub_5C60(&qword_162748, &qword_162718, &qword_12AA68, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 152) = v9;
  v10 = qword_15EF78;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_167808;
  v12 = sub_5AE8(&qword_162710, &qword_12AA60);
  *(v0 + 216) = v12;
  v13 = sub_5C60(&qword_162750, &qword_162710, &qword_12AA60, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 224) = v13;
  *(v0 + 192) = v11;
  v14 = qword_15EF80;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_167810;
  *(v0 + 256) = v12;
  *(v0 + 264) = v13;
  *(v0 + 232) = v15;
  v16 = qword_15EF68;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_1677F8;
  *(v0 + 296) = v4;
  *(v0 + 304) = v5;
  *(v0 + 272) = v17;
  v18 = qword_15EF88;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_167818;
  *(v0 + 336) = sub_5AE8(&qword_162758, &qword_12AA88);
  *(v0 + 344) = sub_5C60(&qword_162760, &qword_162758, &qword_12AA88, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 312) = v19;
  v20 = qword_15EF90;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_167820;
  *(v0 + 376) = sub_5AE8(&qword_162768, &qword_12AA90);
  *(v0 + 384) = sub_5C60(&qword_162770, &qword_162768, &qword_12AA90, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 352) = v21;
  v22 = qword_15EF98;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_167828;
  *(v0 + 416) = sub_5AE8(&qword_162778, &qword_12AA98);
  *(v0 + 424) = sub_5C60(&qword_162780, &qword_162778, &qword_12AA98, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 392) = v23;
  sub_12405C();
  swift_allocObject();

  result = sub_12404C();
  qword_167838 = result;
  return result;
}

Swift::Int sub_E2A50()
{
  sub_12626C();
  sub_125BFC();
  return sub_12628C();
}

Swift::Int sub_E2AB4(uint64_t a1)
{
  sub_12626C();
  sub_125BFC();
  return sub_12628C();
}

uint64_t sub_E2B00@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_158088;
  v7._object = v3;
  v5 = sub_12613C(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_E2BBC(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      return 0x646E6F636573;
    case 2:
      return 0x6472696874;
    case 3:
      return 0x687472756F66;
    case 4:
      return 0x6874666966;
    case 5:
      return 0x6874786973;
    case 6:
      return 0x68746E65766573;
    case 7:
      return 0x687468676965;
    case 8:
      return 0x68746E696ELL;
    case 9:
      return 0x68746E6574;
    case 10:
      return 0x68746E6576656C65;
    case 11:
      return 0x6874666C657774;
    case 12:
      v4 = 1919510644;
      goto LABEL_26;
    case 13:
      v4 = 1920298854;
      goto LABEL_26;
    case 14:
      v3 = 1952868710;
      return v3 | 0x746E656500000000;
    case 15:
      v3 = 1954048371;
      return v3 | 0x746E656500000000;
    case 16:
      return 0x6565746E65766573;
    case 17:
      v4 = 1751607653;
      goto LABEL_26;
    case 18:
      v4 = 1701734766;
LABEL_26:
      result = v4 | 0x6E65657400000000;
      break;
    case 19:
      result = 0x746569746E657774;
      break;
    case 20:
    case 23:
    case 24:
      result = 0x662079746E657774;
      break;
    case 21:
      result = 0x732079746E657774;
      break;
    case 22:
      result = 0x742079746E657774;
      break;
    case 25:
      result = 1953718636;
      break;
    case 26:
      result = 0x656C6464696DLL;
      break;
    case 27:
      result = 1954047342;
      break;
    case 28:
      result = 0x73756F6976657270;
      break;
    case 29:
      result = 0x6F54646E6F636573;
      break;
    case 30:
      result = 0x4C6F546472696874;
      break;
    case 31:
      result = 6647407;
      break;
    case 32:
      result = 2037277037;
      break;
    case 33:
      result = 6645876;
      break;
    case 34:
      result = 0x6573656874;
      break;
    case 35:
      result = 0x74736574616CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_E2FA4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_E2BBC(*a1);
  v5 = v4;
  if (v3 == sub_E2BBC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1261BC();
  }

  return v8 & 1;
}

Swift::Int sub_E302C()
{
  v1 = *v0;
  sub_12626C();
  sub_E2BBC(v1);
  sub_125BFC();

  return sub_12628C();
}

uint64_t sub_E3090(uint64_t a1)
{
  sub_E2BBC(*v1);
  sub_125BFC();
}

Swift::Int sub_E30E4(uint64_t a1)
{
  v2 = *v1;
  sub_12626C();
  sub_E2BBC(v2);
  sub_125BFC();

  return sub_12628C();
}

unint64_t sub_E3144@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_E5658(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_E3174@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E2BBC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_E31F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4(a1, a2, a3);
  v11 = a5();
  v12 = a6();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v10, v11, v12);
}

uint64_t sub_E32BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v8 = a4(a1, a2, a3);
  v9 = a5();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v8, v9);
}

id sub_E3330()
{
  v0 = sub_5AE8(&qword_15FF98, &qword_12AA40);
  __chkstk_darwin(v0 - 8);
  v80 = v73 - v1;
  v2 = sub_5AE8(&qword_162708, &qword_12AA48);
  __chkstk_darwin(v2 - 8);
  v79 = v73 - v3;
  v76 = sub_5AE8(&qword_160578, &unk_12AA50);
  v4 = __chkstk_darwin(v76);
  v77 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = v73 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = v73 - v10;
  __chkstk_darwin(v9);
  v78 = v73 - v12;
  v13 = sub_5AE8(&qword_160568, &unk_1280F0);
  __chkstk_darwin(v13 - 8);
  v15 = v73 - v14;
  v16 = sub_5AE8(&qword_15FF90, &unk_127BC0);
  __chkstk_darwin(v16 - 8);
  v18 = v73 - v17;
  v19 = sub_12412C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EF78 != -1)
  {
    swift_once();
  }

  type metadata accessor for TimerNLv3Intent(0);
  sub_E499C(&qword_15FFA0, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
  sub_12428C();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_5CA8(v18, &qword_15FF90, &unk_127BC0);
    return [objc_opt_self() defaultDuration];
  }

  v74 = v20;
  v75 = v19;
  v24 = *(v20 + 32);
  v25 = v22;
  v24(v22, v18, v19);
  sub_1240EC();
  v26 = sub_12418C();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v15, 1, v26) == 1)
  {
    sub_5CA8(v15, &qword_160568, &unk_1280F0);
  }

  else
  {
    v28 = sub_12415C();
    (*(v27 + 8))(v15, v26);
    if (v28)
    {

      v29 = sub_124EFC();

      if (v29)
      {
        v73[1] = v28;
        v30 = v78;
        sub_124BEC();
        if (qword_15EF48 != -1)
        {
          swift_once();
        }

        v31 = sub_125ABC();
        sub_5B30(v31, qword_162650);
        sub_E492C(v30, v11);
        v32 = sub_125AAC();
        v33 = sub_125DFC();
        v34 = os_log_type_enabled(v32, v33);
        v73[0] = v29;
        if (v34)
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v81 = *&v36;
          *v35 = 136315138;
          sub_E492C(v11, v8);
          v37 = sub_125BAC();
          v39 = v38;
          sub_5CA8(v11, &qword_160578, &unk_12AA50);
          v40 = sub_8530(v37, v39, &v81);

          *(v35 + 4) = v40;
          _os_log_impl(&dword_0, v32, v33, "convertedDate: %s", v35, 0xCu);
          sub_5BB0(v36);
        }

        else
        {

          sub_5CA8(v11, &qword_160578, &unk_12AA50);
        }

        v41 = v77;
        sub_E492C(v30, v77);
        v42 = sub_122F1C();
        v43 = *(v42 - 8);
        v44 = (*(v43 + 48))(v41, 1, v42);
        if (v44 == 1)
        {
          sub_5CA8(v41, &qword_160578, &unk_12AA50);
          v45 = 0.0;
        }

        else
        {
          sub_122F0C();
          v45 = v46;
          (*(v43 + 8))(v41, v42);
        }

        v47 = sub_125AAC();
        v48 = sub_125DFC();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v83 = v50;
          *v49 = 136315138;
          v81 = v45;
          v82 = v44 == 1;
          sub_5AE8(&qword_162720, &qword_12AA70);
          v51 = sub_125BAC();
          v53 = sub_8530(v51, v52, &v83);

          *(v49 + 4) = v53;
          _os_log_impl(&dword_0, v47, v48, "timeIntervalSinceNow: %s", v49, 0xCu);
          sub_5BB0(v50);
        }

        v54 = v73[0];
        if (v44 != 1 && v45 > 0.0)
        {

          v55 = sub_125AAC();
          v56 = sub_125DFC();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = v25;
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v81 = *&v59;
            *v58 = 136315138;
            v83 = v54;
            sub_124C2C();
            sub_E499C(&qword_160590, &type metadata accessor for DateTime, &protocol conformance descriptor for DateTime);
            v60 = sub_12618C();
            v62 = sub_8530(v60, v61, &v81);

            *(v58 + 4) = v62;
            _os_log_impl(&dword_0, v55, v56, "Resolved duration using absolute date %s", v58, 0xCu);
            sub_5BB0(v59);

            sub_5CA8(v30, &qword_160578, &unk_12AA50);
            return (*(v74 + 8))(v57, v75);
          }

          sub_5CA8(v30, &qword_160578, &unk_12AA50);
          return (*(v74 + 8))(v25, v75);
        }

        sub_5CA8(v30, &qword_160578, &unk_12AA50);
      }
    }
  }

  v63 = v79;
  sub_12411C();
  v64 = sub_1241CC();
  v65 = *(v64 - 8);
  if ((*(v65 + 48))(v63, 1, v64) == 1)
  {
    sub_5CA8(v63, &qword_162708, &qword_12AA48);
    v66 = v80;
  }

  else
  {
    sub_1241BC();
    v68 = v67;
    (*(v65 + 8))(v63, v64);
    v66 = v80;
    if ((v68 & 1) == 0)
    {
      return (*(v74 + 8))(v25, v75);
    }
  }

  sub_12410C();
  v69 = sub_1241AC();
  v70 = *(v69 - 8);
  if ((*(v70 + 48))(v66, 1, v69) == 1)
  {
    sub_5CA8(v66, &qword_15FF98, &qword_12AA40);
LABEL_32:
    [objc_opt_self() defaultDuration];
    return (*(v74 + 8))(v25, v75);
  }

  sub_12419C();
  v72 = v71;
  (*(v70 + 8))(v66, v69);
  if (v72)
  {
    goto LABEL_32;
  }

  return (*(v74 + 8))(v25, v75);
}

id sub_E3E90()
{
  v0 = sub_5AE8(&qword_15FF98, &qword_12AA40);
  __chkstk_darwin(v0 - 8);
  v56 = &v53 - v1;
  v2 = sub_5AE8(&qword_162708, &qword_12AA48);
  __chkstk_darwin(v2 - 8);
  v4 = &v53 - v3;
  v5 = sub_5AE8(&qword_160578, &unk_12AA50);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v53 - v9;
  v10 = sub_5AE8(&qword_160568, &unk_1280F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v53 - v11;
  v13 = sub_5AE8(&qword_15FF90, &unk_127BC0);
  __chkstk_darwin(v13 - 8);
  v15 = &v53 - v14;
  v16 = sub_12412C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EF80 != -1)
  {
    swift_once();
  }

  type metadata accessor for TimerNLv3Intent(0);
  sub_E499C(&qword_15FFA0, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
  sub_12428C();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_5CA8(v15, &qword_15FF90, &unk_127BC0);
    return [objc_opt_self() defaultDuration];
  }

  v21 = v16;
  v22 = v17;
  v23 = *(v17 + 32);
  v54 = v21;
  v23(v19, v15);
  sub_1240EC();
  v24 = sub_12418C();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v12, 1, v24) == 1)
  {
    v26 = &qword_160568;
    v27 = &unk_1280F0;
    v28 = v12;
LABEL_7:
    sub_5CA8(v28, v26, v27);
    goto LABEL_20;
  }

  v29 = sub_12415C();
  (*(v25 + 8))(v12, v24);
  if (v29)
  {

    v30 = sub_124EFC();

    if (v30)
    {
      v31 = v55;
      sub_124BEC();
      sub_E492C(v31, v8);
      v32 = sub_122F1C();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v8, 1, v32) == 1)
      {
        sub_5CA8(v31, &qword_160578, &unk_12AA50);

        v28 = v8;
        v26 = &qword_160578;
        v27 = &unk_12AA50;
        goto LABEL_7;
      }

      sub_122F0C();
      v35 = v34;
      (*(v33 + 8))(v8, v32);
      if (v35 > 0.0)
      {
        if (qword_15EF48 != -1)
        {
          swift_once();
        }

        v36 = sub_125ABC();
        sub_5B30(v36, qword_162650);

        v37 = sub_125AAC();
        v38 = sub_125DFC();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v57 = v30;
          v58 = v40;
          *v39 = 136315138;
          sub_124C2C();
          sub_E499C(&qword_160590, &type metadata accessor for DateTime, &protocol conformance descriptor for DateTime);
          v41 = sub_12618C();
          v43 = sub_8530(v41, v42, &v58);

          *(v39 + 4) = v43;
          _os_log_impl(&dword_0, v37, v38, "Resolved toDuration using absolute date %s", v39, 0xCu);
          sub_5BB0(v40);
        }

        sub_5CA8(v55, &qword_160578, &unk_12AA50);
        return (*(v22 + 8))(v19, v54);
      }

      sub_5CA8(v31, &qword_160578, &unk_12AA50);
    }
  }

LABEL_20:
  sub_12411C();
  v44 = sub_1241CC();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v4, 1, v44) == 1)
  {
    sub_5CA8(v4, &qword_162708, &qword_12AA48);
  }

  else
  {
    sub_1241BC();
    v47 = v46;
    (*(v45 + 8))(v4, v44);
    if ((v47 & 1) == 0)
    {
      return (*(v22 + 8))(v19, v54);
    }
  }

  v48 = v56;
  sub_12410C();
  v49 = sub_1241AC();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v48, 1, v49) == 1)
  {
    sub_5CA8(v48, &qword_15FF98, &qword_12AA40);
LABEL_26:
    [objc_opt_self() defaultDuration];
    return (*(v22 + 8))(v19, v54);
  }

  sub_12419C();
  v52 = v51;
  (*(v50 + 8))(v48, v49);
  if (v52)
  {
    goto LABEL_26;
  }

  return (*(v22 + 8))(v19, v54);
}

uint64_t sub_E4714@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_124BCC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_E477C()
{
  if (qword_15EFA8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_E47D8(uint64_t a1)
{
  v2 = sub_E499C(&qword_1626F8, type metadata accessor for TimerNLv3Intent, &unk_12A998);

  return NLIntentWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t sub_E4854(uint64_t a1)
{
  v2 = sub_E499C(&qword_1626F8, type metadata accessor for TimerNLv3Intent, &unk_12A998);

  return NLIntentWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t sub_E48C0(uint64_t a1)
{
  v2 = sub_E499C(&qword_1626F8, type metadata accessor for TimerNLv3Intent, &unk_12A998);

  return NLIntentWrapper.description.getter(a1, v2);
}

uint64_t sub_E492C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_160578, &unk_12AA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E499C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for TimerNLv3Intent.TimerConfirmation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TimerNLv3Intent.TimerConfirmation(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TimerNLv3Intent.TimerReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerNLv3Intent.TimerReference(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimerNLv3Intent.TimerAttributes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerNLv3Intent.TimerAttributes(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimerNLv3Intent.Verb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerNLv3Intent.Verb(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_E4F38()
{
  result = qword_162788;
  if (!qword_162788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162788);
  }

  return result;
}

unint64_t sub_E4FD4()
{
  result = qword_1627A0;
  if (!qword_1627A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1627A0);
  }

  return result;
}

unint64_t sub_E502C()
{
  result = qword_1627A8;
  if (!qword_1627A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1627A8);
  }

  return result;
}

unint64_t sub_E5084()
{
  result = qword_1627B0;
  if (!qword_1627B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1627B0);
  }

  return result;
}

unint64_t sub_E5120()
{
  result = qword_1627C8;
  if (!qword_1627C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1627C8);
  }

  return result;
}

unint64_t sub_E5178()
{
  result = qword_1627D0;
  if (!qword_1627D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1627D0);
  }

  return result;
}

unint64_t sub_E51D0()
{
  result = qword_1627D8;
  if (!qword_1627D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1627D8);
  }

  return result;
}

unint64_t sub_E526C()
{
  result = qword_1627F0;
  if (!qword_1627F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1627F0);
  }

  return result;
}

unint64_t sub_E52C4()
{
  result = qword_1627F8;
  if (!qword_1627F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1627F8);
  }

  return result;
}

unint64_t sub_E531C()
{
  result = qword_162800;
  if (!qword_162800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162800);
  }

  return result;
}

unint64_t sub_E53B8()
{
  result = qword_162818;
  if (!qword_162818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162818);
  }

  return result;
}

unint64_t sub_E5410()
{
  result = qword_162820;
  if (!qword_162820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162820);
  }

  return result;
}

unint64_t sub_E5468()
{
  result = qword_162828;
  if (!qword_162828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162828);
  }

  return result;
}

unint64_t sub_E5504()
{
  result = qword_162840;
  if (!qword_162840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162840);
  }

  return result;
}

unint64_t sub_E555C()
{
  result = qword_162848;
  if (!qword_162848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162848);
  }

  return result;
}

unint64_t sub_E55B0()
{
  result = qword_162850;
  if (!qword_162850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162850);
  }

  return result;
}

unint64_t sub_E5604()
{
  result = qword_162858;
  if (!qword_162858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162858);
  }

  return result;
}

unint64_t sub_E5658(uint64_t a1, uint64_t a2)
{
  v2 = sub_1261DC();

  if (v2 >= 0x24)
  {
    return 36;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_E56AC()
{
  result = qword_162860;
  if (!qword_162860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162860);
  }

  return result;
}

unint64_t sub_E5700()
{
  result = qword_162868;
  if (!qword_162868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162868);
  }

  return result;
}

unint64_t sub_E5754()
{
  result = qword_162870;
  if (!qword_162870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162870);
  }

  return result;
}

unint64_t sub_E57A8()
{
  result = qword_162878;
  if (!qword_162878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162878);
  }

  return result;
}

unint64_t sub_E57FC()
{
  result = qword_162880;
  if (!qword_162880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162880);
  }

  return result;
}

unint64_t sub_E5850()
{
  result = qword_162888;
  if (!qword_162888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162888);
  }

  return result;
}

unint64_t sub_E58A4()
{
  result = qword_162890;
  if (!qword_162890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162890);
  }

  return result;
}

unint64_t sub_E58F8()
{
  result = qword_162898;
  if (!qword_162898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162898);
  }

  return result;
}

unint64_t sub_E594C()
{
  result = qword_1628A0;
  if (!qword_1628A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1628A0);
  }

  return result;
}

unint64_t sub_E59A0()
{
  result = qword_1628A8;
  if (!qword_1628A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1628A8);
  }

  return result;
}

uint64_t sub_E5A1C()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_1628B0);
  sub_5B30(v0, qword_1628B0);
  return sub_1257AC();
}

uint64_t sub_E5A68@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_15F1B0, qword_126E30);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  if (qword_15EFB0 != -1)
  {
    swift_once();
  }

  v10 = sub_125ABC();
  sub_5B30(v10, qword_1628B0);
  v11 = sub_125AAC();
  v12 = sub_125DFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "SetTimerAttribute.NeedsValueStrategy.actionForInput() called)", v13, 2u);
  }

  v14 = sub_12532C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = enum case for DecideAction.PromptExpectation.slot(_:);
  v16 = sub_12514C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  sub_435BC(a1, v9, 0, v6, a2);
  sub_5CA8(v6, &unk_15F1B0, qword_126E30);
  return sub_5CA8(v9, &qword_15FFB0, &unk_1270A0);
}

uint64_t sub_E5CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_123E8C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_123E4C();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_123DAC();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  sub_5AE8(&qword_160510, &qword_12B170);
  v4[15] = swift_task_alloc();
  v8 = sub_123D7C();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v9 = sub_123D6C();
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v10 = sub_123CDC();
  v4[23] = v10;
  v4[24] = *(v10 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for TimerNLv3Intent(0);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v11 = sub_124BCC();
  v4[33] = v11;
  v4[34] = *(v11 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v12 = sub_123D3C();
  v4[37] = v12;
  v4[38] = *(v12 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();

  return _swift_task_switch(sub_E610C, 0, 0);
}

unint64_t sub_E610C()
{
  v229 = v0;
  v1 = v0;
  v2 = v0[40];
  v3 = v0[38];
  v4 = v1[37];
  sub_5AE8(&qword_161FC0, &qword_129DE0);
  v5 = sub_123B4C();
  sub_123CCC();
  v6 = (*(v3 + 88))(v2, v4);
  if (v6 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v7 = v1[40];
    v8 = v1[36];
    v10 = v1[33];
    v9 = v1[34];
    v11 = v1[32];
    (*(v1[38] + 96))(v7, v1[37]);
    (*(v9 + 32))(v8, v7, v10);
    (*(v9 + 16))(v11, v8, v10);
    v12 = sub_E798C(v11, v5);
    if (qword_15EFB0 == -1)
    {
LABEL_3:
      v14 = v1[31];
      v13 = v1[32];
      v15 = sub_125ABC();
      sub_5B30(v15, qword_1628B0);
      sub_9848(v13, v14);
      v16 = sub_125AAC();
      v17 = sub_125DFC();
      v18 = os_log_type_enabled(v16, v17);
      v19 = v1[31];
      v222 = v5;
      v20 = v1;
      if (v18)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v227 = v22;
        *v21 = 136315138;
        sub_98AC(&qword_161ED0, &unk_12A9D8);
        v23 = sub_12618C();
        v25 = v24;
        sub_97EC(v19);
        v26 = sub_8530(v23, v25, &v227);

        *(v21 + 4) = v26;
        _os_log_impl(&dword_0, v16, v17, "NLIntent:%s", v21, 0xCu);
        sub_5BB0(v22);
      }

      else
      {

        sub_97EC(v19);
      }

      v47 = v12;
      v48 = sub_125AAC();
      v49 = sub_125DFC();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *&v227 = v51;
        *v50 = 136315138;
        v52 = v47;
        v53 = [v52 description];
        v54 = sub_125B9C();
        v56 = v55;

        v57 = sub_8530(v54, v56, &v227);

        *(v50 + 4) = v57;
        _os_log_impl(&dword_0, v48, v49, "UpdatedSKIntent:%s", v50, 0xCu);
        sub_5BB0(v51);
      }

      v58 = v20;
      v59 = v222;
      v60 = v20[36];
      v61 = v20[34];
      v63 = v58[32];
      v62 = v58[33];
LABEL_22:
      v227 = 0u;
      v228 = 0u;
      v87 = v47;
      sub_125EDC();

      sub_12550C();
      sub_1239BC();

      sub_97EC(v63);
      (*(v61 + 8))(v60, v62);
      goto LABEL_23;
    }

LABEL_74:
    swift_once();
    goto LABEL_3;
  }

  if (v6 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v27 = v1[40];
    v29 = v1[34];
    v28 = v1[35];
    v30 = v1[33];
    v31 = v1[30];
    (*(v1[38] + 96))(v27, v1[37]);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

    (*(v29 + 32))(v28, v27, v30);
    (*(v29 + 16))(v31, v28, v30);
    v32 = sub_E798C(v31, v5);
    if (qword_15EFB0 != -1)
    {
      swift_once();
    }

    v33 = v1[29];
    v34 = v1[30];
    v35 = sub_125ABC();
    sub_5B30(v35, qword_1628B0);
    sub_9848(v34, v33);
    v36 = sub_125AAC();
    v37 = sub_125DFC();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v1[29];
    v223 = v5;
    v40 = v1;
    if (v38)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v227 = v42;
      *v41 = 136315138;
      sub_98AC(&qword_161ED0, &unk_12A9D8);
      v43 = sub_12618C();
      v45 = v44;
      sub_97EC(v39);
      v46 = sub_8530(v43, v45, &v227);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_0, v36, v37, "NLIntent:%s", v41, 0xCu);
      sub_5BB0(v42);
    }

    else
    {

      sub_97EC(v39);
    }

    v47 = v32;
    v76 = sub_125AAC();
    v77 = sub_125DFC();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v227 = v79;
      *v78 = 136315138;
      v80 = v47;
      v81 = [v80 description];
      v82 = sub_125B9C();
      v84 = v83;

      v85 = sub_8530(v82, v84, &v227);

      *(v78 + 4) = v85;
      _os_log_impl(&dword_0, v76, v77, "UpdatedSKIntent:%s", v78, 0xCu);
      sub_5BB0(v79);
    }

    v58 = v40;
    v59 = v223;
    v86 = v40 + 34;
    v61 = v40[34];
    v60 = v86[1];
    v62 = v58[33];
    v63 = v58[30];
    goto LABEL_22;
  }

  if (v6 != enum case for Parse.NLv4IntentOnly(_:))
  {
    if (v6 != enum case for Parse.uso(_:))
    {
      if (qword_15EFB0 != -1)
      {
        swift_once();
      }

      v109 = v1[24];
      v108 = v1[25];
      v110 = v1[23];
      v111 = v1[3];
      v112 = sub_125ABC();
      sub_5B30(v112, qword_1628B0);
      (*(v109 + 16))(v108, v111, v110);
      v113 = sub_125AAC();
      v114 = sub_125DEC();
      if (os_log_type_enabled(v113, v114))
      {
        v116 = v1[24];
        v115 = v1[25];
        v224 = v5;
        v117 = v1[23];
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        *&v227 = v119;
        *v118 = 136315138;
        sub_123CCC();
        v120 = sub_125BAC();
        v122 = v121;
        v123 = v117;
        v5 = v224;
        (*(v116 + 8))(v115, v123);
        v124 = sub_8530(v120, v122, &v227);

        *(v118 + 4) = v124;
        _os_log_impl(&dword_0, v113, v114, "Received an unsupported input: %s", v118, 0xCu);
        sub_5BB0(v119);
      }

      else
      {
        v126 = v1[24];
        v125 = v1[25];
        v127 = v1[23];

        (*(v126 + 8))(v125, v127);
      }

      v128 = v1[40];
      v130 = v1[37];
      v129 = v1[38];
      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      *v131 = 0;
      swift_willThrow();

      goto LABEL_59;
    }

    v93 = v1[40];
    v95 = v1[21];
    v94 = v1[22];
    v96 = v1[20];
    (*(v1[38] + 96))(v93, v1[37]);
    (*(v95 + 32))(v94, v93, v96);
    if (qword_15EFB0 != -1)
    {
      swift_once();
    }

    v97 = sub_125ABC();
    sub_5B30(v97, qword_1628B0);
    v98 = sub_125AAC();
    v99 = sub_125DFC();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_0, v98, v99, "Received an USO parse in CreateTimer.parseResponseValue().", v100, 2u);
    }

    v102 = v1[13];
    v101 = v1[14];
    v103 = v1[12];

    sub_123D5C();
    v12 = sub_123D9C();
    (*(v102 + 8))(v101, v103);
    v104 = v12[2];
    if (v104)
    {
      v105 = 0;
      v106 = v1[10];
      while (v105 < v12[2])
      {
        (*(v106 + 16))(v1[11], v12 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v105, v1[9]);
        if (sub_123DBC())
        {
          v152 = v1[15];
          v154 = v1[10];
          v153 = v1[11];
          v155 = v1[9];

          (*(v154 + 32))(v152, v153, v155);
          v107 = 0;
          goto LABEL_52;
        }

        ++v105;
        (*(v106 + 8))(v1[11], v1[9]);
        if (v104 == v105)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_74;
    }

LABEL_37:

    v107 = 1;
LABEL_52:
    v226 = v5;
    v156 = v1[15];
    v157 = v1[9];
    v158 = v1[10];
    (*(v158 + 56))(v156, v107, 1, v157);
    if ((*(v158 + 48))(v156, 1, v157) == 1)
    {
      sub_5CA8(v1[15], &qword_160510, &qword_12B170);
      (*(v1[24] + 16))(v1[26], v1[3], v1[23]);
      v169 = sub_125AAC();
      v170 = sub_125DEC();
      v171 = os_log_type_enabled(v169, v170);
      v172 = v1[26];
      if (v171)
      {
        v174 = v1[23];
        v173 = v1[24];
        v175 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        *&v227 = v176;
        *v175 = 136315138;
        sub_123CCC();
        v177 = sub_125BAC();
        v179 = v178;
        (*(v173 + 8))(v172, v174);
        v180 = sub_8530(v177, v179, &v227);

        *(v175 + 4) = v180;
        _os_log_impl(&dword_0, v169, v170, "Failed to parse userParse from parse: %s.", v175, 0xCu);
        sub_5BB0(v176);
      }

      else
      {
        v181 = v1[23];
        v182 = v1[24];

        (*(v182 + 8))(v172, v181);
      }

      v129 = v1[21];
      v128 = v1[22];
      v130 = v1[20];
      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      *v183 = 0;
      swift_willThrow();

LABEL_59:
      (*(v129 + 8))(v128, v130);
LABEL_60:

      v91 = v1[1];
      goto LABEL_24;
    }

    v160 = v1[18];
    v159 = v1[19];
    v161 = v1[17];
    v221 = v1[16];
    v162 = v1[15];
    v163 = v1;
    v164 = v1[10];
    v166 = v163[8];
    v165 = v163[9];
    v168 = v163[6];
    v167 = v163[7];
    sub_123E0C();
    (*(v164 + 8))(v162, v165);
    sub_123E5C();
    (*(v167 + 8))(v166, v168);
    (*(v161 + 32))(v159, v160, v221);
    sub_123F0C();
    result = sub_12424C();
    if (result >> 62)
    {
      v211 = result;
      v212 = sub_1260FC();
      result = v211;
      v1 = v163;
      if (v212)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v1 = v163;
      if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_63:
        if ((result & 0xC000000000000001) != 0)
        {
          sub_125FFC();
        }

        else
        {
          if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }
        }

        sub_12550C();
        v184 = v226;

        v186 = sub_F18EC(v185, v226);
        v220 = v184;
        if (v186)
        {
          v187 = v186;
          v188 = sub_125AAC();
          v189 = sub_125DFC();

          if (os_log_type_enabled(v188, v189))
          {
            v190 = swift_slowAlloc();
            v191 = swift_slowAlloc();
            *v190 = 138412290;
            v192 = [v187 targetTimer];
            *(v190 + 4) = v192;
            *v191 = v192;
            _os_log_impl(&dword_0, v188, v189, "[SetTimerAttribute.NeedsValueStrategy.parseValueResponse] Using target timer: %@", v190, 0xCu);
            sub_5CA8(v191, &unk_160540, &unk_1295A0);
            v1 = v163;
          }

          v193 = v1[21];
          v194 = v1[22];
          v195 = v1[20];
          v196 = v163[19];
          v198 = v163[16];
          v197 = v163[17];

          v227 = 0u;
          v228 = 0u;
          sub_1239BC();

          v199 = v196;
          v58 = v163;
          (*(v197 + 8))(v199, v198);
          (*(v193 + 8))(v194, v195);
          goto LABEL_23;
        }

        v200 = sub_125AAC();
        v201 = sub_125DEC();

        if (os_log_type_enabled(v200, v201))
        {
          v202 = swift_slowAlloc();
          v203 = swift_slowAlloc();
          *&v227 = v203;
          *v202 = 136315138;
          v204 = sub_124B8C();
          v206 = sub_8530(v204, v205, &v227);

          *(v202 + 4) = v206;
          _os_log_impl(&dword_0, v200, v201, "Could not create SetTimerAttributeIntent from given task: %s", v202, 0xCu);
          sub_5BB0(v203);
        }

        v129 = v1[21];
        v128 = v1[22];
        v207 = v1[19];
        v130 = v1[20];
        v208 = v1[16];
        v209 = v1[17];
        sub_5AE8(&unk_15F1A0, &unk_126ED0);
        sub_84CC();
        swift_allocError();
        *v210 = 0;
        swift_willThrow();

        (*(v209 + 8))(v207, v208);
        goto LABEL_59;
      }
    }

    v213 = sub_125AAC();
    v214 = sub_125DEC();
    if (os_log_type_enabled(v213, v214))
    {
      v215 = swift_slowAlloc();
      *v215 = 0;
      _os_log_impl(&dword_0, v213, v214, "USO graph has no tasks.", v215, 2u);
    }

    v129 = v1[21];
    v128 = v1[22];
    v216 = v1[19];
    v130 = v1[20];
    v217 = v1[16];
    v218 = v1[17];

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v219 = 0;
    swift_willThrow();

    (*(v218 + 8))(v216, v217);
    goto LABEL_59;
  }

  (*(v1[38] + 96))(v1[40], v1[37]);
  ObjectType = swift_getObjectType();
  if (!SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType))
  {
LABEL_45:
    if (qword_15EFB0 != -1)
    {
      swift_once();
    }

    v132 = v1[27];
    v133 = v1[23];
    v134 = v1[24];
    v135 = v1[3];
    v136 = sub_125ABC();
    sub_5B30(v136, qword_1628B0);
    (*(v134 + 16))(v132, v135, v133);
    v137 = sub_125AAC();
    v138 = sub_125DEC();
    if (os_log_type_enabled(v137, v138))
    {
      v225 = v5;
      v139 = v1[27];
      v141 = v1[23];
      v140 = v1[24];
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      *&v227 = v143;
      *v142 = 136315138;
      sub_123CCC();
      v144 = sub_125BAC();
      v146 = v145;
      (*(v140 + 8))(v139, v141);
      v147 = sub_8530(v144, v146, &v227);
      v5 = v225;

      *(v142 + 4) = v147;
      _os_log_impl(&dword_0, v137, v138, "Failed to parse userDialogAct into SetTimerAttributeIntent: %s", v142, 0xCu);
      sub_5BB0(v143);
    }

    else
    {
      v148 = v1[27];
      v149 = v1[23];
      v150 = v1[24];

      (*(v150 + 8))(v148, v149);
    }

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v151 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_60;
  }

  v65 = sub_12550C();
  v66 = v5;

  v68 = sub_F18EC(v67, v5);
  if (!v68)
  {

    goto LABEL_45;
  }

  v69 = v68;
  v70 = [v66 targetTimer];
  v71 = [v69 toDuration];
  v72 = v1;
  v73 = [v69 toLabel];
  v74 = [objc_allocWithZone(v65) init];
  [v74 setTargetTimer:v70];
  [v74 setToDuration:v71];
  [v74 setToLabel:v73];

  v58 = v72;
  v227 = 0u;
  v228 = 0u;
  v75 = v74;
  sub_125EDC();

  sub_1239BC();

  swift_unknownObjectRelease();
LABEL_23:
  v88 = v58;
  v89 = v58[2];
  v90 = sub_5AE8(&qword_1628D0, &qword_12B178);
  (*(*(v90 - 8) + 56))(v89, 0, 1, v90);

  v91 = v88[1];
LABEL_24:

  return v91();
}

id sub_E798C(uint64_t a1, void *a2)
{
  if (qword_15EFB0 != -1)
  {
    swift_once();
  }

  v3 = sub_125ABC();
  sub_5B30(v3, qword_1628B0);
  v4 = sub_125AAC();
  v5 = sub_125DFC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "correct setTimerAttributeIntent from nlIntent by supplementing timerId", v6, 2u);
  }

  v7 = [a2 targetTimer];
  if (v7)
  {
    v8 = v7;
    if (qword_15EF58 != -1)
    {
      swift_once();
    }

    type metadata accessor for TimerNLv3Intent(0);
    sub_98AC(&qword_15FFA0, &unk_12AA00);
    sub_12428C();
    if (v29)
    {
      v9 = sub_125B8C();
    }

    else
    {
      v9 = 0;
    }

    sub_1257EC();
    v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v19 = sub_125B8C();
    v20 = [v18 initWithIdentifier:v9 displayString:v19];

    v21 = [v8 label];
    [v20 setLabel:v21];

    v22 = [v8 duration];
    [v20 setDuration:v22];

    v23 = [v8 remainingTime];
    [v20 setRemainingTime:v23];

    [v20 setState:{objc_msgSend(v8, "state")}];
    [v20 setType:{objc_msgSend(v8, "type")}];
    sub_E3E90();
    v13.super.super.isa = sub_125D5C().super.super.isa;
    if (qword_15EF68 != -1)
    {
      swift_once();
    }

    sub_12428C();
    v14 = v29;
    if (v29)
    {
      sub_125BDC();

      v24 = objc_allocWithZone(INSpeakableString);
      v25 = sub_125B8C();

      v14 = [v24 initWithSpokenPhrase:v25];
    }

    v26 = objc_allocWithZone(sub_12550C());
    v27 = v20;
    v17 = [v26 init];
    [v17 setTargetTimer:v27];
    [v17 setToDuration:v13.super.super.isa];
    [v17 setToLabel:v14];
  }

  else
  {
    v10 = sub_125AAC();
    v11 = sub_125DEC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "SetTimerAttribute+NeedsValueStrategy.correctedIntentFrom(): Could not get targetTimer from intent; returning SetTimerAttributeIntent without targetTimer.", v12, 2u);
    }

    sub_E3E90();
    v13.super.super.isa = sub_125D5C().super.super.isa;
    if (qword_15EF68 != -1)
    {
      swift_once();
    }

    type metadata accessor for TimerNLv3Intent(0);
    sub_98AC(&qword_15FFA0, &unk_12AA00);
    sub_12428C();
    v14 = v29;
    if (v29)
    {
      sub_125BDC();

      v15 = objc_allocWithZone(INSpeakableString);
      v16 = sub_125B8C();

      v14 = [v15 initWithSpokenPhrase:v16];
    }

    v17 = [objc_allocWithZone(sub_12550C()) init];
    [v17 setTargetTimer:0];
    [v17 setToDuration:v13.super.super.isa];
    [v17 setToLabel:v14];
  }

  return v17;
}

uint64_t sub_E7F84(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_125ABC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_124FFC();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_12501C();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_12392C();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = sub_12368C();
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();
  v8 = sub_123A0C();
  v2[19] = v8;
  v2[20] = *(v8 - 8);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_E8210, 0, 0);
}

uint64_t sub_E8210()
{
  v32 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  sub_5AE8(&qword_161FC0, &qword_129DE0);
  sub_123B6C();
  v4 = sub_1239FC();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  sub_12363C();

  v7._rawValue = &off_158500;
  v34._countAndFlagsBits = v4;
  v34._object = v6;
  v8 = sub_12613C(v7, v34);

  if (!v8)
  {
    v9 = 0;
    goto LABEL_5;
  }

  if (v8 == 1)
  {
    v9 = 1;
LABEL_5:
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[7];

    (*(v11 + 104))(v10, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v12);
    if (qword_15EFB0 != -1)
    {
      swift_once();
    }

    v14 = v0[5];
    v13 = v0[6];
    v15 = v0[4];
    v16 = sub_5B30(v15, qword_1628B0);
    (*(v14 + 16))(v13, v16, v15);
    mach_absolute_time();
    sub_12502C();
    if (v9)
    {
      sub_102100();
      if (qword_15EEC0 != -1)
      {
        swift_once();
      }

      v17 = sub_123B4C();
      v18 = [v17 targetTimer];

      if (v18)
      {
        v19 = sub_113D6C(0, 0);
      }

      else
      {
        v19 = 0;
      }

      v0[24] = v19;
      v29 = swift_task_alloc();
      v0[25] = v29;
      *v29 = v0;
      v29[1] = sub_E8A50;

      return sub_23E64(v19);
    }

    else
    {
      sub_101C14();
      if (qword_15EEC0 != -1)
      {
        swift_once();
      }

      v30 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
      v20 = swift_task_alloc();
      v0[22] = v20;
      *v20 = v0;
      v20[1] = sub_E8798;

      return (v30)(0xD000000000000027, 0x800000000012EC20, _swiftEmptyArrayStorage);
    }
  }

  if (qword_15EFB0 != -1)
  {
    swift_once();
  }

  sub_5B30(v0[4], qword_1628B0);

  v22 = sub_125AAC();
  v23 = sub_125DEC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v24 = 136315138;
    v26 = sub_8530(v4, v6, &v31);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_0, v22, v23, "NeedsValueStrategy error: Unexpected parameter name: %s", v24, 0xCu);
    sub_5BB0(v25);
  }

  else
  {
  }

  sub_5AE8(&unk_15F1A0, &unk_126ED0);
  sub_84CC();
  swift_allocError();
  *v27 = 4;
  swift_willThrow();
  (*(v0[17] + 8))(v0[18], v0[16]);

  v28 = v0[1];

  return v28();
}

uint64_t sub_E8798(void *a1)
{
  v4 = *v2;
  v4[23] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_E894C, 0, 0);
  }

  else
  {
    v4[27] = a1;
    a1;
    v5 = swift_task_alloc();
    v4[28] = v5;
    *v5 = v4;
    v5[1] = sub_E8C14;
    v6 = v4[18];
    v7 = v4[15];
    v8 = v4[12];
    v9 = v4[2];

    return DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(v9, v6, v7, v8, 0, 0, 0, 0);
  }
}

uint64_t sub_E894C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);
  (*(v0[17] + 8))(v0[18], v0[16]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_E8A50(void *a1)
{
  v4 = *v2;
  v4[26] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_E8E48, 0, 0);
  }

  else
  {

    v4[27] = a1;
    a1;
    v5 = swift_task_alloc();
    v4[28] = v5;
    *v5 = v4;
    v5[1] = sub_E8C14;
    v6 = v4[18];
    v7 = v4[15];
    v8 = v4[12];
    v9 = v4[2];

    return DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(v9, v6, v7, v8, 0, 0, 0, 0);
  }
}

uint64_t sub_E8C14()
{
  v1 = *(*v0 + 216);

  return _swift_task_switch(sub_E8D28, 0, 0);
}

uint64_t sub_E8D28()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = *(v0 + 80);

  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_E8E48()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);
  (*(v0[17] + 8))(v0[18], v0[16]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_E8F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_E9014;

  return sub_E5CFC(a1, a2, a3);
}

uint64_t sub_E9014()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_E9148, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_E9148()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_E9214(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_E92BC;

  return sub_E7F84(a1, a2);
}

uint64_t sub_E92BC()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_E93F0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_E93F0()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_E94BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_503C;

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t sub_E9580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_5D08;

  return NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)(a1, a2, a3, a4);
}

unint64_t sub_E9648()
{
  result = qword_1628C8;
  if (!qword_1628C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1628C8);
  }

  return result;
}

uint64_t sub_E96AC()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_1628D8);
  sub_5B30(v0, qword_1628D8);
  return sub_1257AC();
}

uint64_t sub_E96F8(uint64_t a1, uint64_t a2)
{
  v2[42] = a1;
  v2[43] = a2;
  v3 = sub_123B3C();
  v2[44] = v3;
  v2[45] = *(v3 - 8);
  v2[46] = swift_task_alloc();
  v4 = sub_124F4C();
  v2[47] = v4;
  v2[48] = *(v4 - 8);
  v2[49] = swift_task_alloc();
  sub_5AE8(&qword_15F9E0, &unk_127710);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v5 = sub_1250BC();
  v2[53] = v5;
  v2[54] = *(v5 - 8);
  v2[55] = swift_task_alloc();
  v6 = sub_125ABC();
  v2[56] = v6;
  v2[57] = *(v6 - 8);
  v2[58] = swift_task_alloc();
  v7 = sub_124FFC();
  v2[59] = v7;
  v2[60] = *(v7 - 8);
  v2[61] = swift_task_alloc();
  v8 = sub_12501C();
  v2[62] = v8;
  v2[63] = *(v8 - 8);
  v2[64] = swift_task_alloc();
  v9 = sub_12368C();
  v2[65] = v9;
  v2[66] = *(v9 - 8);
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v10 = sub_12392C();
  v2[71] = v10;
  v2[72] = *(v10 - 8);
  v2[73] = swift_task_alloc();

  return _swift_task_switch(sub_E9ADC, 0, 0);
}

uint64_t sub_E9ADC()
{
  if (qword_15EFB8 != -1)
  {
    swift_once();
  }

  *(v0 + 592) = sub_5B30(*(v0 + 448), qword_1628D8);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "ResetTimer.HandleIntentStrategy.makeIntentHandledResponse() called", v3, 2u);
  }

  sub_5AE8(&qword_1628F8, &qword_12B2A8);
  v4 = sub_123A9C();
  v5 = [v4 resetTimers];

  if (!v5)
  {
    goto LABEL_65;
  }

  sub_1257EC();
  v6 = sub_125C6C();
  *(v0 + 600) = v6;

  if (!(v6 >> 62))
  {
    if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_8;
    }

    goto LABEL_64;
  }

  if (!sub_1260FC())
  {
LABEL_64:

LABEL_65:
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v90 = 5;
    swift_willThrow();
LABEL_66:

    v91 = *(v0 + 8);

    return v91();
  }

LABEL_8:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = sub_125FFC();
  }

  else
  {
    if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_71;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;
  *(v0 + 608) = v7;
  v9 = *(v0 + 584);
  sub_5AE8(&qword_160810, &unk_127420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_126EB0;
  *(inited + 32) = v8;
  v11 = v8;
  sub_FF26C(inited, v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_12361C();
  *(v0 + 616) = sub_2BE74(v6);
  if (v6 >> 62)
  {
    v12 = sub_1260FC();
  }

  else
  {
    v12 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  *(v0 + 624) = v12;
  if (v12 == 1)
  {
    sub_12573C();
    sub_12572C();
    v13 = *(v0 + 240);
    v14 = *(v0 + 248);
    sub_23B08((v0 + 216), v13);
    v15 = [v11 identifier];
    if (v15)
    {
      v16 = v15;
      v17 = sub_125B9C();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    *(v0 + 632) = v19;
    v58 = swift_task_alloc();
    *(v0 + 640) = v58;
    *v58 = v0;
    v58[1] = sub_EA97C;

    return dispatch thunk of SessionManaging.sessionIDString(for:)(v17, v19, v13, v14);
  }

  *(v0 + 664) = 0u;
  v97 = *(v0 + 592);
  v21 = *(v0 + 480);
  v20 = *(v0 + 488);
  v22 = *(v0 + 464);
  v23 = *(v0 + 472);
  v24 = *(v0 + 456);
  v94 = *(v0 + 448);
  sub_12524C();
  sub_12523C();
  sub_12522C();

  sub_23B08((v0 + 56), *(v0 + 80));
  sub_1235DC();
  sub_5BB0((v0 + 56));
  (*(v21 + 104))(v20, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v23);
  (*(v24 + 16))(v22, v97, v94);
  mach_absolute_time();
  sub_12502C();
  sub_12523C();
  sub_12522C();

  sub_23B08((v0 + 96), *(v0 + 120));
  v25 = sub_1235DC();
  sub_5BB0((v0 + 96));
  if (v25)
  {
    v26 = sub_648C8(*(v0 + 600), 13);
    *(v0 + 792) = v26;

    if (v26)
    {
      v27 = objc_opt_self();
      *(v0 + 328) = 0;
      v28 = [v27 archivedDataWithRootObject:v26 requiringSecureCoding:1 error:v0 + 328];
      v29 = *(v0 + 328);
      if (v28)
      {
        v30 = v28;
        v31 = v29;
        v32 = sub_122EFC();
        v34 = v33;

        *(v0 + 800) = v32;
        *(v0 + 808) = v34;
        if (qword_15EE28 != -1)
        {
          swift_once();
        }

        v35 = *(v0 + 344);
        v36 = swift_task_alloc();
        *(v0 + 816) = v36;
        v36[2] = v32;
        v36[3] = v34;
        v36[4] = v35;
        v37 = swift_task_alloc();
        *(v0 + 824) = v37;
        *v37 = v0;
        v37[1] = sub_ECC20;
        v38 = *(v0 + 616);

        return sub_58F9C(v38, sub_EF97C, v36);
      }

      v92 = *(v0 + 608);
      v84 = *(v0 + 576);
      v99 = *(v0 + 568);
      v101 = *(v0 + 584);
      v85 = *(v0 + 528);
      v93 = *(v0 + 520);
      v96 = *(v0 + 560);
      v86 = *(v0 + 504);
      v87 = *(v0 + 512);
      v88 = *(v0 + 496);
      v89 = v29;

      sub_122E8C();

      swift_willThrow();
      (*(v86 + 8))(v87, v88);
      (*(v85 + 8))(v96, v93);
      (*(v84 + 8))(v101, v99);
    }

    else
    {

      v71 = sub_125AAC();
      v72 = sub_125DFC();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_0, v71, v72, "Could not get timer action from timer.", v73, 2u);
      }

      v74 = *(v0 + 608);
      v75 = *(v0 + 576);
      v98 = *(v0 + 568);
      v100 = *(v0 + 584);
      v95 = *(v0 + 560);
      v76 = *(v0 + 528);
      v77 = *(v0 + 520);
      v78 = *(v0 + 504);
      v79 = *(v0 + 512);
      v80 = *(v0 + 496);

      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      *v81 = 1;
      swift_willThrow();

      (*(v78 + 8))(v79, v80);
      (*(v76 + 8))(v95, v77);
      (*(v75 + 8))(v100, v98);
    }

    goto LABEL_66;
  }

  v41 = *(v0 + 432);
  v40 = *(v0 + 440);
  v42 = *(v0 + 424);
  sub_1250AC();
  v43 = sub_12504C();
  (*(v41 + 8))(v40, v42);
  if (v43)
  {
    v44 = sub_125AAC();
    v45 = sub_125DFC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_0, v44, v45, "[ResetTimer.HandleIntentStrategy.makeIntentHandledResponse] Using multi-timer RF 2.0 path", v46, 2u);
    }

    v47 = *(v0 + 624);
    if (!v47)
    {
      goto LABEL_49;
    }

    sub_22A8C(0, v47 & ~(v47 >> 63), 0);
    if ((v47 & 0x8000000000000000) == 0)
    {
      v48 = 0;
      v49 = *(v0 + 384);
      v50 = *(v0 + 600) + 32;
      do
      {
        if ((*(v0 + 600) & 0xC000000000000001) != 0)
        {
          v51 = sub_125FFC();
        }

        else
        {
          v51 = *(v50 + 8 * v48);
        }

        v52 = v51;
        sub_1135FC(*(v0 + 392));

        v54 = _swiftEmptyArrayStorage[2];
        v53 = _swiftEmptyArrayStorage[3];
        if (v54 >= v53 >> 1)
        {
          sub_22A8C((v53 > 1), v54 + 1, 1);
        }

        v55 = *(v0 + 624);
        v56 = *(v0 + 392);
        v57 = *(v0 + 376);
        ++v48;
        _swiftEmptyArrayStorage[2] = v54 + 1;
        (*(v49 + 32))(_swiftEmptyArrayStorage + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v54, v56, v57);
      }

      while (v48 != v55);
LABEL_49:
      v63 = *(v0 + 416);
      sub_12521C();
      v64 = enum case for SiriTimePluginModel.timerMulti(_:);
      v65 = sub_12503C();
      v66 = *(v65 - 8);
      (*(v66 + 104))(v63, v64, v65);
      (*(v66 + 56))(v63, 0, 1, v65);
      if (qword_15EE20 != -1)
      {
        swift_once();
      }

      v67 = *(v0 + 616);
      sub_5AE8(&qword_15F180, &unk_126E10);
      v68 = swift_allocObject();
      *(v0 + 680) = v68;
      *(v68 + 16) = xmmword_126CB0;
      *(v68 + 32) = 0x6D69547465736572;
      *(v68 + 40) = 0xEB00000000737265;
      *(v68 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
      *(v68 + 48) = v67;
      v69 = async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
      v70 = swift_task_alloc();
      *(v0 + 688) = v70;
      *v70 = v0;
      v70[1] = sub_EB660;

      return ((&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + v69))(0xD000000000000020, 0x800000000012EDE0, v68);
    }

    __break(1u);
    goto LABEL_73;
  }

  v59 = *(v0 + 616);

  if (!(v59 >> 62))
  {
    v60 = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8));
    goto LABEL_44;
  }

LABEL_71:
  v60 = sub_1260FC();
LABEL_44:
  if (v60 >= 2)
  {
    if (qword_15EE28 == -1)
    {
LABEL_46:
      v61 = swift_task_alloc();
      *(v0 + 760) = v61;
      *v61 = v0;
      v61[1] = sub_EC668;
      v62 = *(v0 + 616);

      return sub_58E30(v62);
    }

LABEL_73:
    swift_once();
    goto LABEL_46;
  }

  if (qword_15EE28 != -1)
  {
    swift_once();
  }

  v82 = swift_task_alloc();
  *(v0 + 776) = v82;
  *v82 = v0;
  v82[1] = sub_EC944;
  v83 = *(v0 + 616);

  return sub_593AC(v83);
}

uint64_t sub_EA97C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 648) = a1;
  *(v3 + 656) = a2;

  return _swift_task_switch(sub_EAACC, 0, 0);
}

uint64_t sub_EAACC()
{
  sub_5BB0(v0 + 27);
  v1 = v0[82];
  v2 = v0[81];
  v0[84] = v1;
  v0[83] = v2;
  v81 = v0[74];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[58];
  v6 = v0[57];
  v76 = v0[59];
  v78 = v0[56];
  sub_12524C();
  sub_12523C();
  sub_12522C();

  sub_23B08(v0 + 7, v0[10]);
  v7 = sub_1235DC() & (v1 != 0);
  sub_5BB0(v0 + 7);
  (*(v4 + 104))(v3, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v76);
  (*(v6 + 16))(v5, v81, v78);
  mach_absolute_time();
  sub_12502C();
  sub_12523C();
  sub_12522C();

  sub_23B08(v0 + 12, v0[15]);
  v8 = sub_1235DC();
  sub_5BB0(v0 + 12);
  if ((v8 & 1) == 0 || v7)
  {
    v24 = v0[54];
    v23 = v0[55];
    v25 = v0[53];
    sub_1250AC();
    v26 = sub_12504C();
    (*(v24 + 8))(v23, v25);
    if (v26)
    {
      v27 = sub_125AAC();
      v28 = sub_125DFC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "[ResetTimer.HandleIntentStrategy.makeIntentHandledResponse] Using multi-timer RF 2.0 path", v29, 2u);
      }

      if (v7)
      {
        v30 = v0[52];
        v31 = sub_12503C();
        (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
      }

      else
      {
        v47 = v0[78];
        if (v47)
        {
          sub_22A8C(0, v47 & ~(v47 >> 63), 0);
          if (v47 < 0)
          {
            __break(1u);
          }

          v48 = 0;
          v49 = v0[48];
          v50 = v0[75] + 32;
          do
          {
            if ((v0[75] & 0xC000000000000001) != 0)
            {
              v51 = sub_125FFC();
            }

            else
            {
              v51 = *(v50 + 8 * v48);
            }

            v52 = v51;
            sub_1135FC(v0[49]);

            v54 = _swiftEmptyArrayStorage[2];
            v53 = _swiftEmptyArrayStorage[3];
            if (v54 >= v53 >> 1)
            {
              sub_22A8C((v53 > 1), v54 + 1, 1);
            }

            v55 = v0[78];
            v56 = v0[49];
            v57 = v0[47];
            ++v48;
            _swiftEmptyArrayStorage[2] = v54 + 1;
            (*(v49 + 32))(_swiftEmptyArrayStorage + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v54, v56, v57);
          }

          while (v48 != v55);
        }

        v60 = v0[52];
        sub_12521C();
        v61 = enum case for SiriTimePluginModel.timerMulti(_:);
        v62 = sub_12503C();
        v63 = *(v62 - 8);
        (*(v63 + 104))(v60, v61, v62);
        (*(v63 + 56))(v60, 0, 1, v62);
      }

      if (qword_15EE20 != -1)
      {
        swift_once();
      }

      v64 = v0[77];
      sub_5AE8(&qword_15F180, &unk_126E10);
      v65 = swift_allocObject();
      v0[85] = v65;
      *(v65 + 16) = xmmword_126CB0;
      *(v65 + 32) = 0x6D69547465736572;
      *(v65 + 40) = 0xEB00000000737265;
      *(v65 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
      *(v65 + 48) = v64;
      v66 = async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
      v67 = swift_task_alloc();
      v0[86] = v67;
      *v67 = v0;
      v67[1] = sub_EB660;

      return ((&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + v66))(0xD000000000000020, 0x800000000012EDE0, v65);
    }

    else
    {
      v32 = v0[77];

      if (v32 >> 62)
      {
        v33 = sub_1260FC();
      }

      else
      {
        v33 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
      }

      if (v33 < 2)
      {
        if (qword_15EE28 != -1)
        {
          swift_once();
        }

        v58 = swift_task_alloc();
        v0[97] = v58;
        *v58 = v0;
        v58[1] = sub_EC944;
        v59 = v0[77];

        return sub_593AC(v59);
      }

      else
      {
        if (qword_15EE28 != -1)
        {
          swift_once();
        }

        v34 = swift_task_alloc();
        v0[95] = v34;
        *v34 = v0;
        v34[1] = sub_EC668;
        v35 = v0[77];

        return sub_58E30(v35);
      }
    }
  }

  else
  {
    v9 = sub_648C8(v0[75], 13);
    v0[99] = v9;

    if (v9)
    {
      v10 = objc_opt_self();
      v0[41] = 0;
      v11 = [v10 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v0 + 41];
      v12 = v0[41];
      if (v11)
      {
        v13 = v11;
        v14 = v12;
        v15 = sub_122EFC();
        v17 = v16;

        v0[100] = v15;
        v0[101] = v17;
        if (qword_15EE28 != -1)
        {
          swift_once();
        }

        v18 = v0[43];
        v19 = swift_task_alloc();
        v0[102] = v19;
        v19[2] = v15;
        v19[3] = v17;
        v19[4] = v18;
        v20 = swift_task_alloc();
        v0[103] = v20;
        *v20 = v0;
        v20[1] = sub_ECC20;
        v21 = v0[77];

        return sub_58F9C(v21, sub_EF97C, v19);
      }

      v75 = v0[76];
      v68 = v0[72];
      v83 = v0[71];
      v85 = v0[73];
      v69 = v0[66];
      v77 = v0[65];
      v80 = v0[70];
      v70 = v0[63];
      v71 = v0[64];
      v72 = v0[62];
      v73 = v12;

      sub_122E8C();

      swift_willThrow();
      (*(v70 + 8))(v71, v72);
      (*(v69 + 8))(v80, v77);
      (*(v68 + 8))(v85, v83);
    }

    else
    {

      v36 = sub_125AAC();
      v37 = sub_125DFC();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_0, v36, v37, "Could not get timer action from timer.", v38, 2u);
      }

      v39 = v0[76];
      v40 = v0[72];
      v82 = v0[71];
      v84 = v0[73];
      v79 = v0[70];
      v41 = v0[66];
      v42 = v0[65];
      v43 = v0[63];
      v44 = v0[64];
      v45 = v0[62];

      sub_5AE8(&unk_15F1A0, &unk_126ED0);
      sub_84CC();
      swift_allocError();
      *v46 = 1;
      swift_willThrow();

      (*(v43 + 8))(v44, v45);
      (*(v41 + 8))(v79, v42);
      (*(v40 + 8))(v84, v82);
    }

    v74 = v0[1];

    return v74();
  }
}

uint64_t sub_EB660(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 696) = a1;
  *(v3 + 704) = v1;

  if (v1)
  {
    v4 = sub_EBCF8;
  }

  else
  {

    v4 = sub_EB7B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_EB7B4()
{
  v42 = v0;
  v1 = *(v0 + 672);
  if (v1)
  {

    v2 = sub_125AAC();
    v3 = sub_125DFC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 664);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v41 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_8530(v4, v1, &v41);
      _os_log_impl(&dword_0, v2, v3, "[ResetTimer.HandleIntentStrategy.makeIntentHandledResponse] We have a live activity: %s", v5, 0xCu);
      sub_5BB0(v6);
    }

    v7 = *(v0 + 408);
    v8 = *(v0 + 416);
    sub_12361C();
    sub_2AEC8(v8, v7);
    v9 = sub_12503C();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v7, 1, v9);
    v12 = *(v0 + 408);
    if (v11 == 1)
    {
      sub_5CA8(*(v0 + 408), &qword_15F9E0, &unk_127710);
      *(v0 + 176) = 0u;
      *(v0 + 192) = 0u;
      *(v0 + 208) = 0;
    }

    else
    {
      *(v0 + 200) = v9;
      *(v0 + 208) = sub_2AF38();
      v19 = sub_23B4C((v0 + 176));
      (*(v10 + 32))(v19, v12, v9);
    }

    v20 = swift_task_alloc();
    *(v0 + 712) = v20;
    *v20 = v0;
    v20[1] = sub_EBEF8;
    v21 = *(v0 + 672);
    v22 = *(v0 + 664);
    v23 = *(v0 + 584);
    v24 = *(v0 + 552);
    v25 = *(v0 + 512);
    v26 = *(v0 + 336);
    v45 = 2;
    v44 = 0x800000000012D290;
    v27 = v0 + 176;
    v28 = 0xD000000000000018;
  }

  else
  {

    v13 = sub_125AAC();
    v14 = sub_125DFC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 600);
    if (v15)
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      if (v16 >> 62)
      {
        v18 = sub_1260FC();
      }

      else
      {
        v18 = *(&dword_10 + (*(v0 + 600) & 0xFFFFFFFFFFFFFF8));
      }

      *(v17 + 4) = v18;

      _os_log_impl(&dword_0, v13, v14, "[ResetTimer.HandleIntentStrategy.makeIntentHandledResponse] Using multi-timer snippet model for %ld timers.", v17, 0xCu);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v29 = *(v0 + 416);
    v30 = *(v0 + 400);
    sub_12361C();
    sub_2AEC8(v29, v30);
    v31 = sub_12503C();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 48))(v30, 1, v31);
    v34 = *(v0 + 400);
    if (v33 == 1)
    {
      sub_5CA8(*(v0 + 400), &qword_15F9E0, &unk_127710);
      *(v0 + 136) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 168) = 0;
    }

    else
    {
      *(v0 + 160) = v31;
      *(v0 + 168) = sub_2AF38();
      v35 = sub_23B4C((v0 + 136));
      (*(v32 + 32))(v35, v34, v31);
    }

    v36 = *(v0 + 624);
    if (v36 <= 1)
    {
      v37 = 0xD000000000000018;
    }

    else
    {
      v37 = 0xD000000000000017;
    }

    if (v36 <= 1)
    {
      v38 = "esetTimerCATPatternsExecutor";
    }

    else
    {
      v38 = "resetTimer#handledOnWatch";
    }

    v39 = swift_task_alloc();
    *(v0 + 736) = v39;
    *v39 = v0;
    v39[1] = sub_EC2A0;
    v23 = *(v0 + 584);
    v24 = *(v0 + 544);
    v25 = *(v0 + 512);
    v26 = *(v0 + 336);
    v45 = 2;
    v44 = v38 | 0x8000000000000000;
    v27 = v0 + 136;
    v22 = 0;
    v21 = 0;
    v28 = v37;
  }

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v26, v24, v23, v27, v25, v22, v21, v28);
}

uint64_t sub_EBCF8()
{
  v1 = v0[76];
  v2 = v0[72];
  v12 = v0[71];
  v13 = v0[73];
  v3 = v0[66];
  v10 = v0[65];
  v11 = v0[70];
  v4 = v0[63];
  v5 = v0[64];
  v6 = v0[62];
  v7 = v0[52];

  sub_5CA8(v7, &qword_15F9E0, &unk_127710);
  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v11, v10);
  (*(v2 + 8))(v13, v12);

  v8 = v0[1];

  return v8();
}

uint64_t sub_EBEF8()
{
  v1 = *v0;
  v2 = *(*v0 + 552);
  v3 = *(*v0 + 528);
  v4 = *(*v0 + 520);

  v5 = *(v3 + 8);
  *(v1 + 720) = v5;
  *(v1 + 728) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  sub_5CA8(v1 + 176, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_EC0C8, 0, 0);
}

uint64_t sub_EC0C8()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 608);
  v3 = *(v0 + 560);
  v4 = *(v0 + 520);
  v6 = *(v0 + 504);
  v5 = *(v0 + 512);
  v7 = *(v0 + 496);
  v8 = *(v0 + 416);

  sub_5CA8(v8, &qword_15F9E0, &unk_127710);
  (*(v6 + 8))(v5, v7);
  v1(v3, v4);
  (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_EC2A0()
{
  v1 = *v0;
  v2 = *(*v0 + 544);
  v3 = *(*v0 + 528);
  v4 = *(*v0 + 520);

  v5 = *(v3 + 8);
  *(v1 + 744) = v5;
  *(v1 + 752) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  sub_5CA8(v1 + 136, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_EC490, 0, 0);
}

uint64_t sub_EC490()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 608);
  v3 = *(v0 + 560);
  v4 = *(v0 + 520);
  v6 = *(v0 + 504);
  v5 = *(v0 + 512);
  v7 = *(v0 + 496);
  v8 = *(v0 + 416);

  sub_5CA8(v8, &qword_15F9E0, &unk_127710);
  (*(v6 + 8))(v5, v7);
  v1(v3, v4);
  (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_EC668(uint64_t a1)
{
  v3 = *v2;
  v3[32] = v2;
  v3[33] = a1;
  v3[34] = v1;
  v3[96] = v1;

  if (v1)
  {

    v4 = sub_ED2BC;
  }

  else
  {
    v4 = sub_EC7D4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_EC7D4()
{
  v1 = v0[33];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[73];
  v5 = v0[70];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v0[105] = v1;
  (*(v7 + 16))(v6, v5, v8);
  v9 = swift_task_alloc();
  v9[2] = v4;
  v9[3] = v3;
  v9[4] = v2;
  v1;
  sub_123B0C();

  v10 = swift_task_alloc();
  v0[106] = v10;
  *v10 = v0;
  v10[1] = sub_ECF44;
  v11 = v0[64];
  v12 = v0[46];
  v13 = v0[42];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v13, v12, v11);
}

uint64_t sub_EC944(uint64_t a1)
{
  v3 = *v2;
  v3[35] = v2;
  v3[36] = a1;
  v3[37] = v1;
  v3[98] = v1;

  if (v1)
  {

    v4 = sub_ED480;
  }

  else
  {
    v4 = sub_ECAB0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_ECAB0()
{
  v1 = v0[36];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[73];
  v5 = v0[70];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v0[105] = v1;
  (*(v7 + 16))(v6, v5, v8);
  v9 = swift_task_alloc();
  v9[2] = v4;
  v9[3] = v3;
  v9[4] = v2;
  v1;
  sub_123B0C();

  v10 = swift_task_alloc();
  v0[106] = v10;
  *v10 = v0;
  v10[1] = sub_ECF44;
  v11 = v0[64];
  v12 = v0[46];
  v13 = v0[42];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v13, v12, v11);
}

uint64_t sub_ECC20(uint64_t a1)
{
  v3 = *v2;
  v3[38] = v2;
  v3[39] = a1;
  v3[40] = v1;
  v3[104] = v1;

  if (v1)
  {

    v4 = sub_ED644;
  }

  else
  {

    v4 = sub_ECDB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_ECDB8()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);

  sub_E498(v2, v1);
  v3 = *(v0 + 312);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v0 + 584);
  v7 = *(v0 + 560);
  v8 = *(v0 + 536);
  v9 = *(v0 + 528);
  v10 = *(v0 + 520);
  *(v0 + 840) = v3;
  (*(v9 + 16))(v8, v7, v10);
  v11 = swift_task_alloc();
  v11[2] = v6;
  v11[3] = v5;
  v11[4] = v4;
  v3;
  sub_123B0C();

  v12 = swift_task_alloc();
  *(v0 + 848) = v12;
  *v12 = v0;
  v12[1] = sub_ECF44;
  v13 = *(v0 + 512);
  v14 = *(v0 + 368);
  v15 = *(v0 + 336);

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v15, v14, v13);
}

uint64_t sub_ECF44()
{
  v2 = *v1;
  *(*v1 + 856) = v0;

  v3 = v2[105];
  (*(v2[45] + 8))(v2[46], v2[44]);

  if (v0)
  {
    v4 = sub_ED81C;
  }

  else
  {
    v4 = sub_ED0F8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_ED0F8()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 560);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v6 = *(v0 + 504);
  v5 = *(v0 + 512);
  v7 = *(v0 + 496);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_ED2BC()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);
  v9 = *(v0 + 496);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_ED480()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);
  v9 = *(v0 + 496);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_ED644()
{
  v1 = v0[99];
  v2 = v0[76];
  v3 = v0[72];
  v12 = v0[71];
  v13 = v0[73];
  v4 = v0[70];
  v5 = v0[66];
  v6 = v0[65];
  v7 = v0[63];
  v8 = v0[64];
  v9 = v0[62];
  sub_E498(v0[100], v0[101]);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v13, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_ED81C()
{
  v1 = *(v0 + 608);
  v12 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v7 = *(v0 + 504);
  v8 = *(v0 + 512);
  v9 = *(v0 + 496);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v12, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_ED9EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_5AE8(&unk_15F170, &unk_126E00);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_122EEC(0);
  sub_124E1C();
  v7 = sub_124E4C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = type metadata accessor for ResetTimerHandledOnWatchParameters(0);
  sub_22A1C(v6, a1 + *(v8 + 24));
  sub_124DEC();
  sub_5AE8(&qword_1628F8, &qword_12B2A8);
  sub_123AAC();
  v9 = sub_124DDC();

  *a1 = v9;
  return result;
}

uint64_t sub_EDB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_5AE8(&unk_162190, &unk_128500);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_12392C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a2, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_123B1C();

  return sub_123B2C();
}

uint64_t sub_EDC48(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_125ABC();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v4 = sub_124FFC();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = sub_12501C();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  sub_124EDC();
  v2[25] = swift_task_alloc();
  v6 = sub_12368C();
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();
  v7 = sub_12392C();
  v2[29] = v7;
  v2[30] = *(v7 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_EDEA4, 0, 0);
}

uint64_t sub_EDEA4()
{
  if (qword_15EFB8 != -1)
  {
    swift_once();
  }

  v28 = sub_5B30(v0[16], qword_1628D8);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "ResetTimer.HandleIntentStrategy.makeFailureHandlingIntentResponse() called", v3, 2u);
  }

  v4 = v0[20];
  v5 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
  v27 = v0[16];

  sub_12391C();
  sub_12361C();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[32] = sub_124DBC();
  (*(v4 + 104))(v5, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v6);
  (*(v8 + 16))(v7, v28, v27);
  mach_absolute_time();
  sub_12502C();
  sub_5AE8(&qword_1628F8, &qword_12B2A8);
  v9 = sub_123A9C();
  v10 = sub_12556C();

  if (v10 != 100)
  {
    if (v10 == 101)
    {
      v11 = v0[15];
      v12 = swift_task_alloc();
      v0[33] = v12;
      *(v12 + 16) = v11;
      v13 = swift_task_alloc();
      v0[34] = v13;
      *v13 = v0;
      v13[1] = sub_EE3C4;

      return sub_104D80(sub_EF968, v12);
    }

    v18 = sub_123ABC();
    v19 = [v18 targetTimer];

    v20 = [v19 shouldMatchAny];
    sub_8BAC();
    v21.super.super.isa = sub_125EFC(1).super.super.isa;
    isa = v21.super.super.isa;
    if (v20)
    {
      v23 = sub_125F0C();

      if (v23)
      {
        if (qword_15EE28 != -1)
        {
          swift_once();
        }

        v24 = "resetTimer#errorSingle";
        v29 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
        v25 = swift_task_alloc();
        v0[38] = v25;
        *v25 = v0;
        v25[1] = sub_EE8B4;
        v17 = 0xD000000000000015;
LABEL_20:
        v16 = v24 | 0x8000000000000000;
        goto LABEL_21;
      }
    }

    else
    {
    }

    if (qword_15EE28 != -1)
    {
      swift_once();
    }

    v24 = "ngIntentResponse(rchRecord:)";
    v29 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v26 = swift_task_alloc();
    v0[40] = v26;
    *v26 = v0;
    v26[1] = sub_EEBAC;
    v17 = 0xD000000000000016;
    goto LABEL_20;
  }

  v29 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v15 = swift_task_alloc();
  v0[36] = v15;
  *v15 = v0;
  v15[1] = sub_EE5BC;
  v16 = 0x800000000012C5A0;
  v17 = 0xD000000000000012;
LABEL_21:

  return (v29)(v17, v16, _swiftEmptyArrayStorage);
}

uint64_t sub_EE3C4(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[35] = v1;

  if (v1)
  {
    v4 = sub_EF0F8;
  }

  else
  {
    v4 = sub_EE4FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_EE4FC()
{
  v1 = v0[3];
  v0[42] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[43] = v2;
  *v2 = v0;
  v2[1] = sub_EEEA4;
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[24];
  v6 = v0[14];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v4, v3, v5, 0);
}

uint64_t sub_EE5BC(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[37] = v1;

  if (v1)
  {
    v4 = sub_EE798;
  }

  else
  {
    v4 = sub_EE6D8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_EE6D8()
{
  v1 = v0[6];
  v0[42] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[43] = v2;
  *v2 = v0;
  v2[1] = sub_EEEA4;
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[24];
  v6 = v0[14];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v4, v3, v5, 0);
}

uint64_t sub_EE798()
{

  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_EE8B4(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v3[39] = v1;

  if (v1)
  {
    v4 = sub_EEA90;
  }

  else
  {
    v4 = sub_EE9D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_EE9D0()
{
  v1 = v0[9];
  v0[42] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[43] = v2;
  *v2 = v0;
  v2[1] = sub_EEEA4;
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[24];
  v6 = v0[14];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v4, v3, v5, 0);
}

uint64_t sub_EEA90()
{

  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_EEBAC(uint64_t a1)
{
  v3 = *v2;
  v3[11] = v2;
  v3[12] = a1;
  v3[13] = v1;
  v3[41] = v1;

  if (v1)
  {
    v4 = sub_EED88;
  }

  else
  {
    v4 = sub_EECC8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_EECC8()
{
  v1 = v0[12];
  v0[42] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[43] = v2;
  *v2 = v0;
  v2[1] = sub_EEEA4;
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[24];
  v6 = v0[14];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v4, v3, v5, 0);
}

uint64_t sub_EED88()
{

  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_EEEA4()
{
  v2 = *(*v1 + 336);
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_EF214;
  }

  else
  {
    v3 = sub_EEFD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_EEFD0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 208);
  v11 = *(v0 + 232);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);

  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v11);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_EF0F8()
{

  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_EF214()
{

  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

void sub_EF33C(uint64_t a1)
{
  sub_5AE8(&qword_1628F8, &qword_12B2A8);
  v4 = sub_123ABC();
  sub_12558C();
  sub_1258DC();
  v3 = v2;

  *a1 = v3;
  *(a1 + 8) = 0;
}

uint64_t sub_EF3C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_EF468;

  return sub_E96F8(a1, a2);
}

uint64_t sub_EF468()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_EF59C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_EF59C()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_EF668(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_EF710;

  return sub_EDC48(a1, a2);
}

uint64_t sub_EF710()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_EF844, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_EF844()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

unint64_t sub_EF914()
{
  result = qword_1628F0;
  if (!qword_1628F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1628F0);
  }

  return result;
}

uint64_t sub_EF998()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162900);
  sub_5B30(v0, qword_162900);
  return sub_1257AC();
}

uint64_t sub_EF9E4@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_15F1B0, qword_126E30);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  if (qword_15EFC0 != -1)
  {
    swift_once();
  }

  v10 = sub_125ABC();
  sub_5B30(v10, qword_162900);
  v11 = sub_125AAC();
  v12 = sub_125DFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "PauseTimer.NeedsConfirmationStrategy.actionForInput() called)", v13, 2u);
  }

  v14 = sub_12532C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v16 = sub_12514C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  sub_435BC(a1, v9, 0, v6, a2);
  sub_5CA8(v6, &unk_15F1B0, qword_126E30);
  return sub_5CA8(v9, &qword_15FFB0, &unk_1270A0);
}

uint64_t sub_EFC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  sub_5AE8(&unk_161EC0, &unk_126E20);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_EFD14, 0, 0);
}

uint64_t sub_EFD14()
{
  if (qword_15EFC0 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_162900);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "PauseTimer.NeedsConfirmationStrategy.parseConfirmationResponse() called", v4, 2u);
  }

  sub_5AE8(&qword_161FC0, &qword_129DE0);
  v5 = sub_123B5C();
  v6 = [v5 itemToConfirm];

  sub_125F4C();
  swift_unknownObjectRelease();
  sub_1257EC();
  v7 = swift_dynamicCast();
  v8 = v0[9];
  if (v7)
  {
    v9 = v0[6];
    v10 = sub_123B4C();
    v11 = [objc_allocWithZone(sub_12550C()) init];
    [v11 setTargetTimer:v9];
    v12 = [v10 toDuration];
    [v11 setToDuration:v12];

    v13 = [v10 toLabel];
    [v11 setToLabel:v13];

    v14 = enum case for ConfirmationResponse.confirmed(_:);
    v15 = sub_123A1C();
    v16 = *(v15 - 8);
    (*(v16 + 104))(v8, v14, v15);
    (*(v16 + 56))(v8, 0, 1, v15);
    v17 = v11;
    sub_125EDC();

    sub_123AEC();
  }

  else
  {
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_F0088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  sub_5AE8(&unk_162190, &unk_128500);
  v3[9] = swift_task_alloc();
  v4 = sub_125ABC();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_124FFC();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_12501C();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v7 = sub_12392C();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v8 = sub_12368C();
  v3[22] = v8;
  v3[23] = *(v8 - 8);
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_F02F0, 0, 0);
}

uint64_t sub_F02F0()
{
  if (qword_15EFC0 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[10], qword_162900);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "PauseTimer.NeedsConfirmationStrategy.makePromptForConfirmation() called", v4, 2u);
  }

  sub_5AE8(&qword_161FC0, &qword_129DE0);
  v5 = sub_123B5C();
  v6 = [v5 itemToConfirm];

  sub_125F4C();
  swift_unknownObjectRelease();
  sub_1257EC();
  if (swift_dynamicCast())
  {
    v8 = v0[14];
    v7 = v0[15];
    v10 = v0[12];
    v9 = v0[13];
    v11 = v1;
    v13 = v0[10];
    v12 = v0[11];
    v0[25] = v0[6];
    sub_12362C();
    sub_FFAE8(5);
    (*(v8 + 104))(v7, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v9);
    (*(v12 + 16))(v10, v11, v13);
    mach_absolute_time();
    sub_12502C();
    if (qword_15EEC0 != -1)
    {
      swift_once();
    }

    v14 = sub_113D6C(0, 0);
    v0[26] = v14;
    sub_5AE8(&qword_15F180, &unk_126E10);
    v15 = swift_allocObject();
    v0[27] = v15;
    *(v15 + 16) = xmmword_126CB0;
    strcpy((v15 + 32), "speakableTimer");
    *(v15 + 47) = -18;
    *(v15 + 72) = type metadata accessor for TimerTimer(0);
    *(v15 + 48) = v14;
    v20 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

    v16 = swift_task_alloc();
    v0[28] = v16;
    *v16 = v0;
    v16[1] = sub_F0718;

    return v20(0xD000000000000024, 0x800000000012CA70, v15);
  }

  else
  {
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_F0718(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = sub_F0A5C;
  }

  else
  {

    v4 = sub_F083C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_F083C()
{
  (*(v0[20] + 56))(v0[9], 1, 1, v0[19]);
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = sub_F0900;
  v2 = v0[18];
  v3 = v0[9];
  v4 = v0[7];

  return sub_F2BE4(v4, 12, v3, v2);
}

uint64_t sub_F0900()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 232);
  sub_5CA8(*(v2 + 72), &unk_162190, &unk_128500);

  if (v0)
  {
    v4 = sub_F0CAC;
  }

  else
  {
    v4 = sub_F0B8C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_F0A5C()
{
  v1 = v0[25];
  v2 = v0[23];
  v11 = v0[22];
  v12 = v0[24];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[16];
  v7 = v0[17];

  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v12, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_F0B8C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 128);
  v9 = *(v0 + 136);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_F0CAC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 128);
  v9 = *(v0 + 136);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_F0DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_F0E94;

  return sub_EFC78(a1, a2, a3);
}

uint64_t sub_F0E94()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_F0FC8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_F0FC8()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_F1094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_F1144;

  return sub_F0088(a1, a2, a3);
}

uint64_t sub_F1144()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_F1278, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_F1278()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

unint64_t sub_F1348()
{
  result = qword_162918;
  if (!qword_162918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162918);
  }

  return result;
}

id sub_F139C(uint64_t a1)
{
  v2 = sub_C6CBC();
  if (v2)
  {
    v3 = sub_F2998(v2, 0);

    v4 = v3;
  }

  else
  {
    v8 = sub_124B7C();
    if (!v8)
    {
      v5 = [objc_allocWithZone(v1) init];
      [v5 setLabel:0];
      [objc_opt_self() defaultDuration];
      sub_1255DC();
      [v5 setType:1];
      goto LABEL_4;
    }

    v9 = sub_F27A4(v8);
    if (!v9)
    {

      return 0;
    }

    v4 = v9;
  }

  v5 = v4;
LABEL_4:
  sub_12577C();
  sub_CBEB0();
  sub_C6B1C();
  v6 = sub_12576C();
  [v5 setTargetingInfo:v6];

  return v5;
}

id sub_F14F0(uint64_t a1)
{
  if (sub_C5BD0(a1))
  {
    v2 = [objc_allocWithZone(v1) init];
    UsoEntity_common_Timer.duration.getter();
    v4 = [objc_allocWithZone(NSNumber) initWithDouble:v3];
    [v2 setDuration:v4];

    sub_12432C();
    if (v5 && (sub_125BDC(), , v6 = objc_allocWithZone(INSpeakableString), v7 = sub_125B8C(), , v8 = [v6 initWithSpokenPhrase:v7], v7, v8))
    {
      v9 = [v8 spokenPhrase];

      if (!v9)
      {
        sub_125B9C();
        v9 = sub_125B8C();
      }
    }

    else
    {
      v9 = 0;
    }

    [v2 setLabel:v9];

    [v2 setState:UsoEntity_common_Timer.timerState.getter()];
    [v2 setType:UsoEntity_common_Timer.timerType.getter()];
  }

  else
  {
    v10 = [objc_allocWithZone(v1) init];
    v11 = objc_opt_self();
    v2 = v10;
    [v11 defaultDuration];
    v13 = [objc_allocWithZone(NSNumber) initWithDouble:v12];
    [v2 setDuration:v13];

    [v2 setLabel:0];
    [v2 setState:0];
    [v2 setType:1];
  }

  sub_12577C();
  sub_CBEB0();
  sub_C6B1C();
  v14 = sub_12576C();
  [v2 setTargetingInfo:v14];

  return v2;
}

id sub_F17BC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1172B0(a1);
  if (sub_C5BD0(v3))
  {
    v4 = UsoEntity_common_Timer.isMultiple.getter();
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_allocWithZone(v2);
  v6 = v3;
  v7 = [v5 init];
  [v6 setShouldMatchAny:v4];
  v8 = v6;
  [v7 setTargetTimer:v8];

  sub_12577C();
  v9 = v7;
  sub_CBEB0();
  sub_C6B1C();
  v10 = sub_12576C();
  [v9 setTargetingInfo:v10];

  return v9;
}

id sub_F18EC(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_12437C();
  sub_F2B08(v25, v23);
  if (v24)
  {
    sub_1245DC();
    if (swift_dynamicCast())
    {

      sub_12488C();
      if (v23[0])
      {
        sub_12432C();
        if (v6)
        {
          sub_125BDC();

          v7 = objc_allocWithZone(INSpeakableString);
          v8 = sub_125B8C();

          v9 = [v7 initWithSpokenPhrase:v8];
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      sub_12488C();

      if (v23[0])
      {
        UsoEntity_common_Timer.duration.getter();
      }

      else
      {
        [objc_opt_self() defaultDuration];
      }

      v18 = sub_1172B0(a1);
      if (a2 && (v19 = [a2 targetTimer]) != 0)
      {
        v20 = v19;
        sub_1257CC();
      }

      else
      {
        v20 = v18;
      }

      v10 = v20;
      isa = sub_125D5C().super.super.isa;
      v12 = [objc_allocWithZone(v3) init];
      [v12 setTargetTimer:v10];
      [v12 setToDuration:isa];
      [v12 setToLabel:v9];

LABEL_31:

      sub_12577C();
      v21 = v12;
      sub_CBEB0();
      sub_C6B1C();
      v22 = sub_12576C();
      [v21 setTargetingInfo:v22];

      sub_F2B78(v25);
      return v21;
    }
  }

  else
  {
    sub_F2B78(v23);
  }

  sub_F2B08(v25, v23);
  if (v24)
  {
    sub_1245EC();
    if (swift_dynamicCast())
    {

      v10 = sub_1172B0(a1);
      if (!SiriTimer.isDefault()() || (isa = [a2 targetTimer]) == 0)
      {
        isa = v10;
      }

      [objc_opt_self() defaultDuration];
      v9 = sub_125D5C().super.super.isa;
      v12 = [objc_allocWithZone(v3) init];
      [v12 setTargetTimer:isa];
      [v12 setToDuration:v9];
      [v12 setToLabel:0];
      goto LABEL_31;
    }
  }

  else
  {
    sub_F2B78(v23);
  }

  if (qword_15EFC8 != -1)
  {
    swift_once();
  }

  v13 = sub_125ABC();
  sub_5B30(v13, qword_162920);
  v14 = sub_125AAC();
  v15 = sub_125DEC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "NLv4TranslationParse: Dialog act is not a resolvable INSetTimerAttributeIntent parse, cannot support input", v16, 2u);
  }

  else
  {
  }

  sub_F2B78(v25);
  return 0;
}

id sub_F1D90(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1172B0(a1);
  v4 = sub_CA148();
  if (v4)
  {
    v5 = v4;
    sub_1257EC();

    v6 = v3;
    v7 = sub_113084(v5);
    v8 = [objc_allocWithZone(v1) init];
    sub_8BAC();
    v9 = v8;
    isa = sub_125EEC(0).super.super.isa;
    [v6 setShouldMatchAny:isa];

    [v9 setTargetTimer:v6];
    v11 = v7;
    [v9 setToTimer:v11];

    v12 = v11;
  }

  else
  {
    if (sub_C5BD0(0))
    {
      v12 = UsoEntity_common_Timer.isMultiple.getter();
    }

    else
    {
      v12 = 0;
    }

    v13 = objc_allocWithZone(v2);
    v11 = v3;
    v9 = [v13 init];
    [(objc_class *)v11 setShouldMatchAny:v12];
    [v9 setTargetTimer:v11];
    [v9 setToTimer:0];
  }

  sub_12577C();
  v14 = v9;
  sub_CBEB0();
  sub_C6B1C();
  v15 = sub_12576C();
  [v14 setTargetingInfo:v15];

  return v14;
}

id sub_F1FAC(uint64_t a1, uint64_t a2, double a3)
{
  v5 = [objc_allocWithZone(v3) init];
  v6 = v5;
  if (a2)
  {
    v7 = sub_125BEC();
  }

  else
  {
    v7 = 0;
  }

  [v5 setLabel:v7];

  sub_1255DC();
  [v5 setType:1];
  [v5 setTargetingInfo:0];

  return v5;
}

id sub_F2078(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) init];
  v4 = qword_15EF60;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  type metadata accessor for TimerNLv3Intent(0);
  sub_F24A0();
  sub_12428C();
  v6 = v12;
  if (v12)
  {
    sub_125BDC();

    v7 = objc_allocWithZone(INSpeakableString);
    v8 = sub_125B8C();

    v6 = [v7 initWithSpokenPhrase:v8];
  }

  [v5 setLabel:v6];

  sub_E3330();
  sub_1255DC();
  if (qword_15EF70 != -1)
  {
    swift_once();
  }

  sub_12428C();
  if (v11)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  [v5 setType:v9];
  [v5 setTargetingInfo:0];

  sub_97EC(a1);
  return v5;
}

id sub_F2258(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E113C();
  sub_E18C8();
  v5 = sub_125CFC();
  v6 = [objc_allocWithZone(v2) init];
  [v4 setShouldMatchAny:v5];
  [v6 setTargetTimer:v4];
  [v6 setToTimer:0];

  sub_97EC(a1);
  return v6;
}

id sub_F2310(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E113C();
  sub_E3E90();
  v5.super.super.isa = sub_125D5C().super.super.isa;
  if (qword_15EF68 != -1)
  {
    swift_once();
  }

  type metadata accessor for TimerNLv3Intent(0);
  sub_F24A0();
  sub_12428C();
  v6 = v11;
  if (v11)
  {
    sub_125BDC();

    v7 = objc_allocWithZone(INSpeakableString);
    v8 = sub_125B8C();

    v6 = [v7 initWithSpokenPhrase:v8];
  }

  v9 = [objc_allocWithZone(v2) init];
  [v9 setTargetTimer:v4];
  [v9 setToDuration:v5.super.super.isa];
  [v9 setToLabel:v6];

  sub_97EC(a1);
  return v9;
}

unint64_t sub_F24A0()
{
  result = qword_15FFA0;
  if (!qword_15FFA0)
  {
    type metadata accessor for TimerNLv3Intent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15FFA0);
  }

  return result;
}

id sub_F24F8(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(v2) init];
  v5 = qword_15EF60;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  type metadata accessor for TimerNLv3Intent(0);
  sub_F24A0();
  sub_12428C();
  v7 = v16;
  if (v16)
  {
    sub_125BDC();

    v8 = objc_allocWithZone(INSpeakableString);
    v9 = sub_125B8C();

    v10 = [v8 initWithSpokenPhrase:v9];

    if (v10)
    {
      v7 = [v10 spokenPhrase];

      if (!v7)
      {
        sub_125B9C();
        v7 = sub_125B8C();
      }
    }

    else
    {
      v7 = 0;
    }
  }

  [v6 setLabel:v7];

  sub_E3330();
  v12 = [objc_allocWithZone(NSNumber) initWithDouble:v11];
  [v6 setDuration:v12];

  [v6 setState:0];
  if (qword_15EF70 != -1)
  {
    swift_once();
  }

  sub_12428C();
  if (v15)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  [v6 setType:v13];

  sub_97EC(a1);
  return v6;
}

uint64_t sub_F2758()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162920);
  sub_5B30(v0, qword_162920);
  return sub_1257AC();
}

id sub_F27A4(uint64_t a1)
{
  v2 = v1;
  if ((sub_1242CC() & 1) != 0 && (v3 = sub_1242BC()) != 0 && (v4 = v3, [v3 doubleValue], v6 = v5, v4, objc_msgSend(objc_opt_self(), "minimumDuration"), v7 < v6))
  {
    v8 = [objc_allocWithZone(v2) init];
    sub_1242EC();
    if (v9)
    {
      v10 = sub_125BEC();
    }

    else
    {
      v10 = 0;
    }

    [v8 setLabel:v10];

    sub_1255DC();
    [v8 setType:1];
    [v8 setTargetingInfo:0];

    return v8;
  }

  else
  {
    if (qword_15EFC8 != -1)
    {
      swift_once();
    }

    v11 = sub_125ABC();
    sub_5B30(v11, qword_162920);
    v12 = sub_125AAC();
    v13 = sub_125DFC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Timer domain received an alarm entity that it cannot handle. Rejecting parse.", v14, 2u);
    }

    return 0;
  }
}

id sub_F2998(uint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(v2) init];
  sub_12432C();
  if (v5)
  {
    sub_125BDC();

    v6 = objc_allocWithZone(INSpeakableString);
    v7 = sub_125B8C();

    v8 = [v6 initWithSpokenPhrase:v7];
  }

  else
  {
    v8 = 0;
  }

  [v4 setLabel:v8];

  if (a2)
  {
    if (sub_12430C())
    {
      sub_1243FC();
    }

    else
    {
      [objc_opt_self() defaultDuration];
    }
  }

  else
  {
    UsoEntity_common_Timer.duration.getter();
  }

  sub_1255DC();
  [v4 setType:UsoEntity_common_Timer.timerType.getter()];
  [v4 setTargetingInfo:0];

  return v4;
}

uint64_t sub_F2B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_161840, &qword_128110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}