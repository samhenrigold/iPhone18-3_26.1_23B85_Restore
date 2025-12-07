uint64_t sub_971EC()
{
  sub_8A88();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = *v0;
  v4 = sub_16C46C();
  v1[14] = v4;
  sub_888C(v4);
  v1[15] = v5;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v6 = sub_16C7BC();
  v1[18] = v6;
  sub_888C(v6);
  v1[19] = v7;
  v1[20] = sub_8BC0();
  v8 = sub_16DBEC();
  v1[21] = v8;
  sub_888C(v8);
  v1[22] = v9;
  v1[23] = sub_8BC0();
  sub_8ACC();

  return _swift_task_switch(v10);
}

uint64_t sub_9736C(uint64_t a1)
{
  v23 = v1;
  v2 = sub_16DBBC();
  sub_8B48(v2, (v1 + 7));
  v3 = sub_389C0();
  v4(v3);
  swift_errorRetain();
  v5 = sub_16DBDC();
  v6 = sub_16E36C();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v1[22];
  v8 = v1[23];
  v10 = v1[21];
  if (v7)
  {
    v21 = v1[21];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136315394;
    v14 = sub_16E7AC();
    v20 = v8;
    v16 = sub_3AB7C(v14, v15, &v22);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&def_259DC, v5, v6, "%s makeErrorResponse called with error: %@", v11, 0x16u);
    sub_C878(v12, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v12);
    sub_2D64(v13);
    sub_8A2C(v13);
    sub_8A2C(v11);

    (*(v9 + 8))(v20, v21);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  sub_2D20((v1[12] + 88), *(v1[12] + 112));
  v18 = swift_task_alloc();
  v1[24] = v18;
  *v18 = v1;
  v18[1] = sub_975B8;

  return sub_7AA38();
}

uint64_t sub_975B8()
{
  sub_386A8();
  sub_C9D4();
  v3 = v2;
  sub_8A60();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 200) = v5;

  if (v0)
  {

    sub_C9BC();

    return v6();
  }

  else
  {
    sub_8ACC();

    return _swift_task_switch(v8);
  }
}

uint64_t sub_9770C(uint64_t a1)
{
  v2 = v1[25];
  v4 = v1[16];
  v3 = v1[17];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[12];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C77C();
  v8 = [v2 patternId];
  sub_16E1BC();

  sub_C9E0();
  sub_16C76C();
  sub_8388(v7 + 224, (v1 + 2));
  v9 = v1[5];
  v10 = v1[6];
  sub_2D20(v1 + 2, v9);
  v11 = swift_task_alloc();
  v1[26] = v11;
  *v11 = v1;
  v11[1] = sub_978A0;
  v12 = v1[25];
  v13 = v1[20];
  v14 = v1[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v14, v12, v13, v9, v10);
}

uint64_t sub_978A0()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  v4 = *v1;
  sub_8A60();
  *v5 = v4;
  *(v6 + 216) = v0;

  sub_8ACC();

  return _swift_task_switch(v7);
}

uint64_t sub_979A0()
{
  sub_C9EC();

  v1 = sub_98BD8();
  v2(v1);
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v3();
}

uint64_t sub_97A54()
{
  sub_386A8();

  v1 = sub_98BE8();
  v2(v1);
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v3();
}

uint64_t sub_97B00()
{
  sub_8A88();
  v1[12] = v2;
  v1[13] = v0;
  sub_2440(&qword_1C5990, &unk_16F760);
  v1[14] = sub_8BC0();
  sub_16C46C();
  v1[15] = sub_8BC0();
  v3 = sub_16C7BC();
  v1[16] = v3;
  sub_888C(v3);
  v1[17] = v4;
  v1[18] = sub_8BC0();
  sub_8ACC();

  return _swift_task_switch(v5);
}

uint64_t sub_97BFC()
{
  sub_C9EC();
  v1 = v0[13];
  sub_8388(v1 + 128, (v0 + 2));
  v2 = sub_2D20(v0 + 2, v0[5]);
  v3 = *(v1 + 32);
  v4 = *v2;

  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_97CE0;
  v6 = v0[13];

  return (sub_10B1F0)(v3, v4, v6);
}

uint64_t sub_97CE0()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v4;
  *(v2 + 168) = v0;

  sub_8ACC();

  return _swift_task_switch(v5);
}

uint64_t sub_97DE4()
{
  sub_C9EC();
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[13];
  sub_2D64(v0 + 2);
  sub_16C44C();
  sub_16C75C();
  sub_16C79C();
  sub_98244();
  v4 = sub_16C55C();
  sub_214C(v2, 0, 1, v4);
  sub_16C78C();
  sub_16C77C();
  sub_16C7AC();
  v5 = [v1 patternId];
  sub_16E1BC();

  sub_C9E0();
  sub_16C76C();
  sub_8388(v3 + 224, (v0 + 7));
  v6 = v0[10];
  v7 = v0[11];
  sub_2D20(v0 + 7, v6);
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_97F74;
  v9 = v0[20];
  v10 = v0[18];
  v11 = v0[12];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v11, v9, v10, v6, v7);
}

uint64_t sub_97F74()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  v4 = *v1;
  sub_8A60();
  *v5 = v4;
  *(v6 + 184) = v0;

  sub_8ACC();

  return _swift_task_switch(v7);
}

uint64_t sub_98074()
{
  sub_386A8();
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v1();
}

uint64_t sub_980F4()
{
  sub_C9EC();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

  (*(v2 + 8))(v1, v3);
  sub_2D64((v0 + 56));

  sub_C9BC();

  return v4();
}

uint64_t sub_981A4()
{
  sub_386A8();

  v1 = sub_98BE8();
  v2(v1);
  sub_2D64((v0 + 56));

  sub_C9BC();

  return v3();
}

uint64_t sub_98244()
{
  v0 = sub_16C96C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  sub_4304();
  v4 = v3 - v2;
  v5 = sub_16C8BC();
  sub_42F0();
  v7 = v6;
  v9 = __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_16C8AC();
  sub_16C95C();
  (*(v7 + 16))(v11, v13, v5);
  sub_16C93C();
  sub_16C54C();
  sub_2440(&qword_1C5988, &unk_16F750);
  v14 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_16F530;
  (*(v1 + 16))(v15 + v14, v4, v0);
  sub_16C53C();
  (*(v1 + 8))(v4, v0);
  return (*(v7 + 8))(v13, v5);
}

uint64_t sub_98474()
{

  sub_C938(v0 + 48);

  sub_2D64((v0 + 224));
  return v0;
}

uint64_t sub_984BC()
{
  sub_98474();

  return _swift_deallocClassInstance(v0, 264, 7);
}

uint64_t sub_98518(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_985B0;

  return sub_96698();
}

uint64_t sub_985B0()
{
  sub_C9EC();
  v3 = v2;
  v5 = v4;
  sub_C9D4();
  v7 = v6;
  sub_8A60();
  *v8 = v7;
  v9 = *v1;
  sub_8A60();
  *v10 = v9;

  if (!v0)
  {
    v11 = *(v7 + 16);
    *v11 = v5;
    v11[1] = v3;
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_986BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_98BD4;

  return sub_97B00();
}

uint64_t sub_98754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_98BD4;

  return PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()(a1, a2, a3);
}

uint64_t sub_98808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_98BD4;

  return PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()(a1, a2, a3);
}

uint64_t sub_988BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_98970;

  return PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()(a1, a2, a3);
}

uint64_t sub_98970()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_8A60();
  *v2 = v1;

  sub_C9BC();

  return v3();
}

uint64_t sub_98A54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_98BD4;

  return sub_971EC();
}

uint64_t sub_98AFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a10;
  v23 = a11;
  v19 = sub_9910(&v21);
  (*(*(a10 - 8) + 32))(v19, a8, a10);
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  memcpy((a9 + 48), a5, 0xA0uLL);
  *(a9 + 208) = a6;
  *(a9 + 216) = a7;
  sub_1E1A8(&v21, a9 + 224);
  return a9;
}

uint64_t sub_98C08(uint64_t a1, uint64_t a2)
{
  sub_92310();

  return sub_16C33C();
}

uint64_t sub_98C5C()
{
  sub_8A88();
  v1[52] = v2;
  v1[53] = v0;
  v3 = sub_16DBEC();
  v1[54] = v3;
  sub_888C(v3);
  v1[55] = v4;
  v1[56] = sub_8BC0();
  v1[57] = type metadata accessor for GenericButtonModel(0);
  v1[58] = sub_8BC0();
  v5 = sub_16BE9C();
  v1[59] = v5;
  sub_888C(v5);
  v1[60] = v6;
  v1[61] = sub_8BC0();
  sub_2440(&qword_1C57F8, &unk_172510);
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v7 = sub_16C46C();
  v1[64] = v7;
  sub_888C(v7);
  v1[65] = v8;
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v9 = sub_16C7BC();
  v1[68] = v9;
  sub_888C(v9);
  v1[69] = v10;
  v1[70] = sub_8BC0();
  v11 = sub_17960();

  return _swift_task_switch(v11);
}

uint64_t sub_98E64()
{
  sub_8A88();
  v1 = swift_task_alloc();
  *(v0 + 568) = v1;
  *v1 = v0;
  v1[1] = sub_98EF4;

  return sub_3F070();
}

uint64_t sub_98EF4()
{
  sub_8A88();
  sub_C9D4();
  *(v2 + 576) = v1;
  *(v2 + 584) = v0;

  if (v0)
  {
    v3 = sub_99978;
  }

  else
  {
    v3 = sub_99004;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_99004(uint64_t a1)
{
  v2 = v1[72];
  v3 = v1[67];
  v4 = v1[66];
  v5 = v1[65];
  v6 = v1[63];
  v7 = v1[64];
  v8 = v1[62];
  v9 = v1[59];
  sub_16C45C();
  (*(v5 + 16))(v4, v3, v7);
  sub_16C75C();
  (*(v5 + 8))(v3, v7);
  sub_16C7AC();
  v10 = [v2 catId];
  sub_16E1BC();

  sub_16C76C();
  sub_16BE8C();
  sub_372FC(v6, v8);
  if (sub_369C(v8, 1, v9) == 1)
  {
    v11 = v1[72];
    v12 = v1[53];
    sub_C878(v1[62], &qword_1C57F8, &unk_172510);
    v13 = v12[33];
    v14 = v12[34];
    sub_2D20(v12 + 30, v13);
    sub_2440(&qword_1C5ED8, &unk_173090);
    v15 = swift_allocObject();
    v1[76] = v15;
    *(v15 + 16) = xmmword_170F70;
    *(v15 + 32) = v11;
    v16 = v11;
    swift_task_alloc();
    sub_179E8();
    v1[77] = v17;
    *v17 = v18;
    v17[1] = sub_996D4;
    v19 = v1[70];

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v1 + 22, v15, v19, v13, v14);
  }

  else
  {
    v20 = v1[72];
    v21 = v1[61];
    v22 = v1[59];
    v23 = v1[60];
    v25 = v1[57];
    v24 = v1[58];
    v26 = v1[53];
    (*(v23 + 32))(v21, v1[62], v22);
    v27 = sub_9A820(0xD000000000000012, 0x800000000017ED40, 0xD000000000000010, 0x800000000017ED60);
    v29 = v28;
    (*(v23 + 16))(v24 + *(v25 + 20), v21, v22);
    *v24 = v27;
    v24[1] = v29;
    v30 = v26[33];
    v31 = v26[34];
    sub_2D20(v26 + 30, v30);
    v1[40] = type metadata accessor for WellnessSnippets(0);
    v1[41] = sub_17548();
    v32 = sub_9910(v1 + 37);
    sub_175A0(v24, v32);
    swift_storeEnumTagMultiPayload();
    sub_2440(&qword_1C5ED8, &unk_173090);
    v33 = swift_allocObject();
    v1[74] = v33;
    *(v33 + 16) = xmmword_170F70;
    *(v33 + 32) = v20;
    v34 = v20;
    swift_task_alloc();
    sub_179E8();
    v1[75] = v35;
    *v35 = v36;
    v35[1] = sub_993FC;
    v37 = v1[70];

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v1 + 32, v1 + 37, v33, v37, v30, v31);
  }
}

uint64_t sub_993FC()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  sub_2D64((v2 + 296));
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_99504()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 552);
  v11 = *(v0 + 544);
  v12 = *(v0 + 560);
  v10 = *(v0 + 504);
  v3 = *(v0 + 480);
  v4 = *(v0 + 488);
  v6 = *(v0 + 464);
  v5 = *(v0 + 472);
  sub_8388(v0 + 256, v0 + 336);
  v7 = swift_allocObject();
  sub_17464((v0 + 336), v7 + 16);
  sub_16C73C();
  sub_16C1DC();
  swift_allocObject();
  *(v0 + 408) = sub_16C1CC();
  sub_16C4EC();

  sub_2D64((v0 + 256));
  sub_17604(v6);
  (*(v3 + 8))(v4, v5);
  sub_C878(v10, &qword_1C57F8, &unk_172510);
  (*(v2 + 8))(v12, v11);
  sub_99D84();

  sub_C9BC();

  return v8();
}

uint64_t sub_996D4()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_997D4()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 504);
  sub_8388(v0 + 176, v0 + 216);
  v6 = swift_allocObject();
  sub_17464((v0 + 216), v6 + 16);
  sub_16C73C();
  sub_16C1DC();
  swift_allocObject();
  *(v0 + 400) = sub_16C1CC();
  sub_16C4EC();

  sub_2D64((v0 + 176));
  sub_C878(v5, &qword_1C57F8, &unk_172510);
  (*(v3 + 8))(v2, v4);
  sub_99D84();

  sub_C9BC();

  return v7();
}

uint64_t sub_99978(uint64_t a1)
{
  v3 = v1[55];
  v2 = v1[56];
  v4 = v1[54];
  v5 = sub_16DBBC();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E37C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&def_259DC, v6, v7, "Couldn't execute wellness#regionNotSupported pattern. Error: %@", v8, 0xCu);
    sub_C878(v9, &qword_1C57B8, &qword_1715A0);
  }

  else
  {
  }

  v11 = v1[53];
  (*(v1[55] + 8))(v1[56], v1[54]);
  sub_8284(v11 + 80, (v1 + 2));
  sub_82E0();
  sub_16C4EC();
  sub_8334((v1 + 2));
  sub_99D84();

  sub_C9BC();

  return v12();
}

uint64_t sub_99BA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_98C5C();
}

uint64_t sub_99C38()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_99C70()
{
  sub_8A88();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_16AC0(v3, v4);
}

uint64_t sub_99CF8()
{
  sub_8A88();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_99D84()
{
}

_BYTE *storeEnumTagSinglePayload for WellnessIntentTemporalDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x99E7CLL);
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

unint64_t sub_99EB8()
{
  result = qword_1C8E28;
  if (!qword_1C8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8E28);
  }

  return result;
}

double sub_99F0C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = a3;
  v8 = sub_16DBEC();
  sub_42F0();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_16E69C();
  sub_42F0();
  v16 = v15;
  v18 = __chkstk_darwin(v17);
  v19 = __chkstk_darwin(v18);
  v20 = __chkstk_darwin(v19);
  v22 = &v64 - v21;
  __chkstk_darwin(v20);
  v26 = &v64 - v25;
  if (a2)
  {
    v27 = sub_9A56C(a1, a2, v5);
    v28 = __exp10(v27);
    v29 = v5;
    if ((v5 - 89 > 0x3E || (sub_9A7F0(), v30)) && ((v29 - 155) > 0x2B || (sub_9A7D4(), v30)) && v29 && v29 != 4)
    {
      v32 = enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:);
      sub_9A814();
      v49(v26, v32, v14);
    }

    else
    {
      sub_9A814();
      v31(v26);
      LODWORD(v32) = enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:);
    }

    v33 = v28 * a4;
    v67[0] = v33;
    (*(v16 + 16))(v22, v26, v14);
    v34 = (*(v16 + 88))(v22, v14);
    if (v34 == v32)
    {
      v35 = round(v33);
    }

    else if (v34 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
    {
      v35 = rint(v33);
    }

    else if (v34 == enum case for FloatingPointRoundingRule.up(_:))
    {
      v35 = ceil(v33);
    }

    else if (v34 == enum case for FloatingPointRoundingRule.down(_:))
    {
      v35 = floor(v33);
    }

    else
    {
      if (v34 != enum case for FloatingPointRoundingRule.towardZero(_:))
      {
        if (v34 == enum case for FloatingPointRoundingRule.awayFromZero(_:))
        {
          v54 = sub_16E35C();
          v55 = sub_9A808();
          v56(v55);
          v57 = floor(v33);
          v58 = ceil(v33);
          if (v54)
          {
            v35 = v57;
          }

          else
          {
            v35 = v58;
          }
        }

        else
        {
          sub_16E34C();
          v60 = *(v16 + 8);
          v61 = sub_9A808();
          v60(v61);
          (v60)(v22, v14);
          v35 = v67[0];
        }

        return v35 / v28;
      }

      v35 = trunc(v33);
    }

    v51 = sub_9A808();
    v52(v51);
    return v35 / v28;
  }

  v65 = v24;
  v36 = v23;
  v37 = sub_16DBBC();
  swift_beginAccess();
  (*(v10 + 16))(v13, v37, v8);
  v38 = sub_16DBDC();
  v39 = sub_16E37C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&def_259DC, v38, v39, "Missing unit for decimalPlaces lookup. Rounding to 0 places.", v40, 2u);
  }

  (*(v10 + 8))(v13, v8);
  v41 = v5;
  if ((v5 - 89 > 0x3E || (sub_9A7F0(), v30)) && ((v41 - 155) > 0x2B || (sub_9A7D4(), v30)) && v41 && v41 != 4)
  {
    v44 = enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:);
    sub_9A814();
    v42 = v36;
    v50(v36, v44, v14);
  }

  else
  {
    sub_9A814();
    v42 = v36;
    v43(v36);
    LODWORD(v44) = enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:);
  }

  v66 = a4;
  (*(v16 + 16))(v65, v42, v14);
  v45 = sub_9A808();
  v47 = v46(v45);
  if (v47 == v44)
  {
    v48 = round(a4);
LABEL_44:
    (*(v16 + 8))(v42, v14);
    return v48;
  }

  if (v47 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v48 = rint(a4);
    goto LABEL_44;
  }

  if (v47 == enum case for FloatingPointRoundingRule.up(_:))
  {
    v48 = ceil(a4);
    goto LABEL_44;
  }

  if (v47 == enum case for FloatingPointRoundingRule.down(_:))
  {
    v48 = floor(a4);
    goto LABEL_44;
  }

  if (v47 == enum case for FloatingPointRoundingRule.towardZero(_:))
  {
    v48 = trunc(a4);
    goto LABEL_44;
  }

  if (v47 == enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    v59 = sub_16E35C();
    (*(v16 + 8))(v42, v14);
    if (v59)
    {
      return floor(a4);
    }

    else
    {
      return ceil(a4);
    }
  }

  else
  {
    sub_16E34C();
    v62 = *(v16 + 8);
    v62(v42, v14);
    v63 = sub_9A808();
    (v62)(v63);
    return v66;
  }
}

uint64_t sub_9A56C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 147 <= 0x1B)
  {
    if (((1 << (a3 + 109)) & 0x8800019) != 0)
    {
      return 1;
    }

    if (a3 == 162)
    {
      v6 = a1 == 109 && a2 == 0xE100000000000000;
      if (!v6 && (sub_9A7B8(109, 0xE100000000000000) & 1) == 0)
      {
        v7 = a1 == 28003 && a2 == 0xE200000000000000;
        if (!v7 && (sub_9A7B8(28003, 0xE200000000000000) & 1) == 0)
        {
          if (a1 == 29798 && a2 == 0xE200000000000000)
          {
            return 1;
          }

          v9 = 29798;
          v10 = 0xE200000000000000;
          return (sub_9A7B8(v9, v10) & 1) != 0;
        }
      }

      return 2;
    }
  }

  if (a3 == 89)
  {
    v15 = a1 == 7102787 && a2 == 0xE300000000000000;
    if (v15 || (sub_9A7B8(7102787, 0xE300000000000000) & 1) != 0)
    {
      return 1;
    }

    v16 = a1 == 1818321771 && a2 == 0xE400000000000000;
    if (v16 || (sub_9A7B8(1818321771, 0xE400000000000000) & 1) != 0)
    {
      return 1;
    }

    if (a1 == 19051 && a2 == 0xE200000000000000)
    {
      return 0;
    }

    v12 = 19051;
    v14 = 0xE200000000000000;
    goto LABEL_50;
  }

  result = 2;
  if (a3 != 96 && a3 != 107)
  {
    if (a3 != 105)
    {
      if (a3 != 103)
      {
        return 0;
      }

      v11 = a1 == 0x2FA081E26C6F6D6DLL && a2 == 0xAC0000004CA081E2;
      if (v11 || (sub_9A7B8(0x2FA081E26C6F6D6DLL, 0xAC0000004CA081E2) & 1) != 0)
      {
        return 2;
      }

      v12 = 0x4C642F676DLL;
      if (a1 == 0x4C642F676DLL && a2 == 0xE500000000000000)
      {
        return 0;
      }

      v14 = 0xE500000000000000;
LABEL_50:
      sub_9A7B8(v12, v14);
      return 0;
    }

    if (a1 == 26475 && a2 == 0xE200000000000000)
    {
      return 2;
    }

    v19 = sub_9A7B8(26475, 0xE200000000000000);
    v21 = a1 == 29811 && a2 == 0xE200000000000000;
    result = 2;
    if ((v19 & 1) == 0 && !v21)
    {
      if ((sub_9A7B8(29811, 0xE200000000000000) & 1) == 0)
      {
        if (a1 == 7561836 && a2 == 0xE300000000000000)
        {
          return 1;
        }

        v9 = 7561836;
        v10 = 0xE300000000000000;
        return (sub_9A7B8(v9, v10) & 1) != 0;
      }

      return 2;
    }
  }

  return result;
}

uint64_t sub_9A7B8(uint64_t a1, uint64_t a2)
{

  return sub_16E6BC();
}

uint64_t sub_9A820(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v69._countAndFlagsBits = a3;
  v69._object = a4;
  v61 = a1;
  sub_16C4AC();
  sub_42F0();
  v56 = v7;
  v57 = v6;
  __chkstk_darwin(v6);
  sub_4304();
  v55 = v9 - v8;
  v10 = sub_16C5DC();
  sub_42F0();
  v12 = v11;
  v14 = __chkstk_darwin(v13);
  v63 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v60 = &v53 - v16;
  v17 = sub_2440(&qword_1C8E30, &qword_174AF8);
  v18 = sub_4348(v17);
  __chkstk_darwin(v18);
  v59 = &v53 - v19;
  v20 = sub_2440(&qword_1C6850, &unk_172440);
  __chkstk_darwin(v20);
  sub_9C214();
  v21 = sub_16C5AC();
  sub_42F0();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_4304();
  v27 = v26 - v25;
  sub_19320();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_C878(v4, &qword_1C6850, &unk_172440);
LABEL_15:

    return v61;
  }

  else
  {
    v53 = a2;
    (*(v23 + 32))(v27, v4, v21);
    result = sub_16C59C();
    v29 = result;
    v30 = 0;
    v68 = *(result + 16);
    v64 = v12 + 8;
    v65 = v12 + 16;
    v58 = (v12 + 32);
    v62 = _swiftEmptyArrayStorage;
    v31 = v12;
    v32 = v60;
    v66 = v23;
    v67 = v27;
    while (v68 != v30)
    {
      if (v30 >= *(v29 + 16))
      {
        __break(1u);
        return result;
      }

      v33 = v21;
      v34 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v35 = v29;
      v36 = *(v31 + 72);
      v37 = v31;
      (*(v31 + 16))(v32, v29 + v34 + v36 * v30, v10);
      sub_16C5BC();
      v38 = sub_16E28C(v69);

      if (v38)
      {
        v54 = *v58;
        v54(v63, v32, v10);
        v41 = v62;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v41;
        v70 = v41;
        v44 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_3B15C(0, v41[2] + 1, 1);
          v32 = v60;
          v43 = v70;
        }

        v29 = v35;
        v46 = v43[2];
        v45 = v43[3];
        if (v46 >= v45 >> 1)
        {
          sub_3B15C(v45 > 1, v46 + 1, 1);
          v32 = v60;
          v43 = v70;
        }

        ++v30;
        v43[2] = v46 + 1;
        v62 = v43;
        v47 = v43 + v34 + v46 * v36;
        v10 = v44;
        result = (v54)(v47, v63, v44);
        v21 = v33;
        v23 = v66;
        v27 = v67;
        v31 = v37;
      }

      else
      {
        v39 = sub_9C228();
        result = v40(v39);
        ++v30;
        v21 = v33;
        v23 = v66;
        v27 = v67;
        v31 = v37;
      }
    }

    v48 = v59;
    sub_9ADB4(v62, &type metadata accessor for TemplatingSection, v59);

    if (sub_369C(v48, 1, v10) == 1)
    {
      (*(v23 + 8))(v27, v21);
      sub_C878(v48, &qword_1C8E30, &qword_174AF8);
      goto LABEL_15;
    }

    v50 = v55;
    sub_16C5CC();
    v51 = sub_9C228();
    v52(v51);
    v49 = sub_16C49C();
    (*(v56 + 8))(v50, v57);
    (*(v23 + 8))(v27, v21);
  }

  return v49;
}

uint64_t sub_9ADB4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_214C(a3, v8, 1, v7);
}

id sub_9AE60(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_16E54C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }
  }

  sub_3B360();
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_16E48C();
  }

  else
  {
    return *(a1 + 32);
  }
}

uint64_t sub_9AEDC()
{
  sub_8A88();
  *(v0 + 488) = v18;
  *(v0 + 296) = v1;
  *(v0 + 304) = v2;
  *(v0 + 280) = v3;
  *(v0 + 288) = v4;
  *(v0 + 264) = v5;
  *(v0 + 272) = v6;
  v7 = sub_16DBEC();
  *(v0 + 312) = v7;
  sub_888C(v7);
  *(v0 + 320) = v8;
  *(v0 + 328) = sub_8C38();
  *(v0 + 336) = swift_task_alloc();
  v9 = type metadata accessor for GenericButtonModel(0);
  *(v0 + 344) = v9;
  sub_4348(v9);
  *(v0 + 352) = swift_task_alloc();
  v10 = sub_16C7BC();
  *(v0 + 360) = v10;
  sub_888C(v10);
  *(v0 + 368) = v11;
  *(v0 + 376) = sub_8C38();
  *(v0 + 384) = swift_task_alloc();
  v12 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v12);
  *(v0 + 392) = sub_8C38();
  *(v0 + 400) = swift_task_alloc();
  v13 = sub_16BE9C();
  *(v0 + 408) = v13;
  sub_888C(v13);
  *(v0 + 416) = v14;
  *(v0 + 424) = sub_8C38();
  *(v0 + 432) = swift_task_alloc();
  v15 = sub_17960();

  return _swift_task_switch(v15);
}

uint64_t sub_9B0B4()
{
  v1 = *(v0 + 288);
  v2 = v1[4];
  sub_2D20(v1, v1[3]);
  v3 = *(v2 + 8);
  v4 = sub_C9F8();
  v3(v4);
  sub_2D20((v0 + 16), *(v0 + 40));
  if (sub_16C40C())
  {
    sub_2D64((v0 + 16));
LABEL_4:
    v7 = *(v0 + 400);
    v8 = *(v0 + 408);
    v9 = sub_9A820(0x616548206E65704FLL, 0xEB0000000068746CLL, 0x6C6165486E65706FLL, 0xED00007070416874);
    v11 = v10;
    sub_16BE8C();
    if (sub_369C(v7, 1, v8) == 1)
    {
      v12 = *(v0 + 400);
      v13 = *(v0 + 336);
      v15 = *(v0 + 312);
      v14 = *(v0 + 320);

      sub_C878(v12, &qword_1C57F8, &unk_172510);
      v16 = sub_16DBBC();
      swift_beginAccess();
      (*(v14 + 16))(v13, v16, v15);
      v17 = sub_16DBDC();
      v18 = sub_16E36C();
      if (os_log_type_enabled(v17, v18))
      {
        *swift_slowAlloc() = 0;
        sub_1B9D0(&def_259DC, v19, v20, "Couldn't create URL for phoneMedications, returning GenericErrorFlow");
      }

      v21 = *(v0 + 264);

      v22 = sub_C9F8();
      v23(v22);
      goto LABEL_8;
    }

    v95 = v11;
    v96 = v9;
    v27 = *(v0 + 408);
    v26 = *(v0 + 416);
    v28 = *(v0 + 384);
    v30 = *(v0 + 360);
    v29 = *(v0 + 368);
    v31 = *(v0 + 352);
    v93 = *(v0 + 432);
    v94 = *(v0 + 344);
    v32 = *(v0 + 296);
    v34 = *(v0 + 272);
    v33 = *(v0 + 280);
    (*(v26 + 32))();
    (*(v29 + 16))(v28, v33, v30);
    v35 = [v34 catId];
    sub_16E1BC();

    sub_16C76C();
    (*(v26 + 16))(v31 + *(v94 + 20), v93, v27);
    *v31 = v96;
    v31[1] = v95;
    sub_2D20(v32, v32[3]);
    *(v0 + 200) = type metadata accessor for WellnessSnippets(0);
    *(v0 + 208) = sub_17548();
    v36 = sub_9910((v0 + 176));
    sub_175A0(v31, v36);
    swift_storeEnumTagMultiPayload();
    sub_2440(&qword_1C5ED8, &unk_173090);
    v37 = swift_allocObject();
    *(v0 + 440) = v37;
    *(v37 + 16) = xmmword_170F70;
    *(v37 + 32) = v34;
    v38 = v34;
    v39 = swift_task_alloc();
    *(v0 + 448) = v39;
    *v39 = v0;
    v39[1] = sub_9B9CC;
LABEL_12:
    sub_4B510();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v40, v41, v42, v43, v44, v45);
  }

  v5 = sub_C9F8();
  v3(v5);
  sub_2D20((v0 + 56), *(v0 + 80));
  sub_C9F8();
  v6 = sub_16C3FC();
  sub_2D64((v0 + 56));
  sub_2D64((v0 + 16));
  if (v6)
  {
    goto LABEL_4;
  }

  v47 = *(v0 + 488);
  (*(*(v0 + 368) + 16))(*(v0 + 376), *(v0 + 280), *(v0 + 360));
  if (v47 == 1)
  {
    v48 = *(v0 + 408);
    v49 = *(v0 + 392);
    v50 = sub_9A820(0xD000000000000010, 0x800000000017E960, 0xD000000000000012, 0x800000000017E980);
    v52 = v51;
    sub_16BE8C();
    if (sub_369C(v49, 1, v48) == 1)
    {
      v53 = *(v0 + 392);
      v55 = *(v0 + 320);
      v54 = *(v0 + 328);
      v56 = *(v0 + 312);

      sub_C878(v53, &qword_1C57F8, &unk_172510);
      v57 = sub_16DBBC();
      swift_beginAccess();
      (*(v55 + 16))(v54, v57, v56);
      v58 = sub_16DBDC();
      v59 = sub_16E36C();
      if (os_log_type_enabled(v58, v59))
      {
        *swift_slowAlloc() = 0;
        sub_1B9D0(&def_259DC, v60, v61, "Couldn't create URL for watchMedications, returning GenericErrorFlow");
      }

      v63 = *(v0 + 320);
      v62 = *(v0 + 328);
      v64 = *(v0 + 312);
      v21 = *(v0 + 264);

      (*(v63 + 8))(v62, v64);
      v65 = sub_C9F8();
      v66(v65);
LABEL_8:
      *(v21 + 32) = 0;
      *v21 = 0u;
      *(v21 + 16) = 0u;
      sub_9C1F0();

      sub_C9BC();
      sub_4B510();

      __asm { BRAA            X1, X16 }
    }

    v80 = *(v0 + 416);
    v79 = *(v0 + 424);
    v81 = *(v0 + 408);
    v82 = v50;
    v83 = *(v0 + 344);
    v84 = *(v0 + 352);
    v85 = *(v0 + 296);
    v86 = *(v0 + 272);
    (*(v80 + 32))(v79, *(v0 + 392), v81);
    (*(v80 + 16))(v84 + *(v83 + 20), v79, v81);
    *v84 = v82;
    v84[1] = v52;
    v87 = [v86 catId];
    sub_16E1BC();

    sub_16C76C();
    sub_2D20(v85, v85[3]);
    *(v0 + 120) = type metadata accessor for WellnessSnippets(0);
    *(v0 + 128) = sub_17548();
    v88 = sub_9910((v0 + 96));
    sub_175A0(v84, v88);
    swift_storeEnumTagMultiPayload();
    sub_2440(&qword_1C5ED8, &unk_173090);
    v89 = swift_allocObject();
    *(v0 + 456) = v89;
    *(v89 + 16) = xmmword_170F70;
    *(v89 + 32) = v86;
    v90 = v86;
    v91 = swift_task_alloc();
    *(v0 + 464) = v91;
    *v91 = v0;
    v91[1] = sub_9BBE0;
    goto LABEL_12;
  }

  v67 = *(v0 + 296);
  v68 = *(v0 + 272);
  v69 = [v68 catId];
  sub_16E1BC();

  sub_16C76C();
  sub_2D20(v67, v67[3]);
  sub_2440(&qword_1C5ED8, &unk_173090);
  v70 = swift_allocObject();
  *(v0 + 472) = v70;
  *(v70 + 16) = xmmword_170F70;
  *(v70 + 32) = v68;
  v71 = v68;
  v72 = swift_task_alloc();
  *(v0 + 480) = v72;
  *v72 = v0;
  v72[1] = sub_9BDE0;
  sub_4B510();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v73, v74, v75, v76, v77);
}

uint64_t sub_9B9CC()
{
  sub_8A88();
  v4 = *v0;
  sub_C990();
  *v1 = v4;

  sub_2D64((v4 + 176));
  v2 = sub_17960();

  return _swift_task_switch(v2);
}

uint64_t sub_9BAD8()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  v4 = *(v0 + 384);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  v7 = *(v0 + 264);
  sub_17604(*(v0 + 352));
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  sub_17464((v0 + 136), v7);
  sub_9C1F0();

  sub_C9BC();

  return v8();
}

uint64_t sub_9BBE0()
{
  sub_8A88();
  v4 = *v0;
  sub_C990();
  *v1 = v4;

  sub_2D64((v4 + 96));
  v2 = sub_17960();

  return _swift_task_switch(v2);
}

uint64_t sub_9BCEC()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[45];
  sub_17604(v0[44]);
  (*(v2 + 8))(v1, v3);
  (*(v5 + 8))(v4, v6);
  sub_9C1F0();

  sub_C9BC();

  return v7();
}

uint64_t sub_9BDE0()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_9BEE4()
{
  (*(v0[46] + 8))(v0[47], v0[45]);
  sub_9C1F0();

  sub_C9BC();

  return v1();
}

uint64_t sub_9BFAC(uint64_t a1)
{
  v3 = sub_2440(&qword_1C57E0, &unk_171C60);
  v4 = sub_4348(v3);
  __chkstk_darwin(v4);
  sub_9C214();
  v5 = sub_16BF5C();
  sub_42F0();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_4304();
  v11 = v10 - v9;
  sub_9C180(a1, v1);
  if (sub_369C(v1, 1, v5) == 1)
  {
    sub_C878(v1, &qword_1C57E0, &unk_171C60);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v11, v1, v5);
    v13 = [objc_allocWithZone(NSDateFormatter) init];
    [v13 setTimeStyle:1];
    isa = sub_16BEEC().super.isa;
    v15 = [v13 stringFromDate:isa];

    v12 = sub_16E1BC();
    (*(v7 + 8))(v11, v5);
  }

  return v12;
}

uint64_t sub_9C180(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C57E0, &unk_171C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9C1F0()
{
}

id sub_9C23C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_8427C();
  v1 = sub_16E1AC();

  v2 = [v0 initWithSymbol:v1];

  return v2;
}

uint64_t sub_9C2AC()
{
  v0 = sub_16D63C();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for WellnessQueryingCATsSimple(0);
  sub_16D62C();
  result = sub_16D5FC();
  qword_1D7258 = result;
  return result;
}

uint64_t sub_9C338()
{
  sub_8A88();
  *(v0 + 128) = v1;
  *(v0 + 136) = v2;
  *(v0 + 208) = v3;
  *(v0 + 120) = v4;
  v5 = sub_16DBEC();
  *(v0 + 144) = v5;
  sub_888C(v5);
  *(v0 + 152) = v6;
  *(v0 + 160) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7);
}

uint64_t sub_9C3E4()
{
  sub_C9EC();
  v2 = *(v1 + 208);
  v3 = (v2 - 89);
  if (v3 <= 0x3E)
  {
    if (((1 << (v2 - 89)) & 0x6400000000004113) != 0)
    {
LABEL_13:
      swift_task_alloc();
      sub_179E8();
      *(v1 + 168) = v16;
      *v16 = v17;
      sub_A780C(v16);
      sub_38F74();

      return sub_A24E0();
    }

    if (((1 << (v2 - 89)) & 0x40080) != 0)
    {
      swift_task_alloc();
      sub_179E8();
      *(v1 + 176) = v4;
      *v4 = v5;
      sub_A780C(v4);
      sub_38F74();

      return sub_A45FC();
    }

    if (v3 == 16)
    {
      swift_task_alloc();
      sub_179E8();
      *(v1 + 200) = v8;
      *v8 = v9;
      sub_A7678(v8);
      sub_38F74();

      return sub_A0410(v10, v11, v12, v13);
    }
  }

  v15 = (v2 - 155);
  if (v15 > 0x26)
  {
    goto LABEL_24;
  }

  if (((1 << v15) & 0x40200C0011) != 0)
  {
    goto LABEL_13;
  }

  if (v15 != 7)
  {
    if (v15 == 15)
    {
      swift_task_alloc();
      sub_179E8();
      *(v1 + 192) = v19;
      *v19 = v20;
      sub_A7678(v19);
      sub_38F74();

      return sub_9E850(v21, v22, v23, v24);
    }

LABEL_24:
    *(v1 + 48) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    sub_A796C();
    sub_A792C();
    if (v0)
    {
      sub_60248();
    }

    else
    {
      v29 = sub_16DBBC();
      sub_8B48(v29, v1 + 96);
      v30 = sub_3BD68();
      v31(v30);
      v32 = sub_16DBDC();
      v33 = sub_16E37C();
      if (sub_1BA1C(v33))
      {
        v34 = sub_1BA38();
        sub_1BA50(v34);
        sub_1B9D0(&def_259DC, v35, v36, "#GenerateQueryResponseOutput: Snippet model cannot be created. Possibly unsupported usecase.");
        sub_1BA00();
      }

      v38 = *(v1 + 152);
      v37 = *(v1 + 160);
      v39 = *(v1 + 144);

      (*(v38 + 8))(v37, v39);
      sub_8748(v1 + 16, &qword_1C5ED0, &qword_171090);
      sub_A7658();
    }

    sub_C9BC();
    sub_38F74();

    __asm { BRAA            X1, X16 }
  }

  swift_task_alloc();
  sub_179E8();
  *(v1 + 184) = v26;
  *v26 = v27;
  sub_A7678(v26);
  sub_38F74();

  return sub_9CD34();
}

uint64_t sub_9C798()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_9C87C()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_9C960()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_9CA44()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_9CB28()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

void sub_9CC0C()
{
  sub_C9EC();
  sub_A796C();
  sub_A792C();
  if (v0)
  {
    sub_60248();
  }

  else
  {
    v2 = sub_16DBBC();
    sub_8B48(v2, (v1 + 12));
    v3 = sub_3BD68();
    v4(v3);
    v5 = sub_16DBDC();
    v6 = sub_16E37C();
    if (sub_1BA1C(v6))
    {
      v7 = sub_1BA38();
      sub_1BA50(v7);
      sub_1B9D0(&def_259DC, v8, v9, "#GenerateQueryResponseOutput: Snippet model cannot be created. Possibly unsupported usecase.");
      sub_1BA00();
    }

    v11 = v1[19];
    v10 = v1[20];
    v12 = v1[18];

    (*(v11 + 8))(v10, v12);
    sub_8748((v1 + 2), &qword_1C5ED0, &qword_171090);
    sub_A7658();
  }

  sub_C9BC();
  sub_38F74();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_9CD34()
{
  sub_8A88();
  *(v0 + 184) = v1;
  *(v0 + 192) = v2;
  *(v0 + 600) = v3;
  *(v0 + 176) = v4;
  v5 = sub_16DBEC();
  *(v0 + 200) = v5;
  sub_888C(v5);
  *(v0 + 208) = v6;
  *(v0 + 216) = sub_8C38();
  *(v0 + 224) = swift_task_alloc();
  *(v0 + 232) = swift_task_alloc();
  *(v0 + 240) = swift_task_alloc();
  *(v0 + 248) = swift_task_alloc();
  v7 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v7);
  *(v0 + 256) = sub_8BC0();
  v8 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v8);
  *(v0 + 264) = sub_8BC0();
  v9 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v9);
  *(v0 + 272) = sub_8C38();
  *(v0 + 280) = swift_task_alloc();
  *(v0 + 288) = swift_task_alloc();
  Model = type metadata accessor for HeightQueryModel(0);
  *(v0 + 296) = Model;
  sub_4348(Model);
  *(v0 + 304) = sub_8C38();
  *(v0 + 312) = swift_task_alloc();
  *(v0 + 320) = swift_task_alloc();
  *(v0 + 328) = swift_task_alloc();
  v11 = type metadata accessor for SnippetHeaderModel(0);
  *(v0 + 336) = v11;
  sub_4348(v11);
  *(v0 + 344) = sub_8C38();
  *(v0 + 352) = swift_task_alloc();
  *(v0 + 360) = swift_task_alloc();
  v12 = sub_16BE9C();
  *(v0 + 368) = v12;
  sub_888C(v12);
  *(v0 + 376) = v13;
  *(v0 + 384) = sub_8BC0();
  v14 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v14);
  *(v0 + 392) = sub_8BC0();
  v15 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v15);
  *(v0 + 400) = sub_8C38();
  *(v0 + 408) = swift_task_alloc();
  *(v0 + 416) = swift_task_alloc();
  v16 = sub_17960();

  return _swift_task_switch(v16);
}

uint64_t sub_9CFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_A76E8();
  sub_A7760();
  v25 = v24[52];
  v26 = v24[24];
  sub_A79E8(v26);
  v24[53] = v27;
  sub_A7C24(v26, v25);
  v28 = sub_A6F70(v26);
  v30 = sub_13A5C4(v28, v29);
  v32 = v31;
  v24[54] = v30;
  v24[55] = v31;

  if (v32)
  {
    v33 = v24[23];
    v24[56] = sub_A84A0(v26);
    v34 = [v33 start];
    if (v34)
    {
      sub_16BF3C();
    }

    v56 = v24[49];
    v57 = sub_16BF5C();
    sub_A7740(v57);
    sub_8748(v56, &qword_1C57E0, &unk_171C60);
    v58 = swift_task_alloc();
    v24[57] = v58;
    *v58 = v24;
    sub_A73D4(v58);
    sub_A755C();

    return sub_6789C(v59, v60, v61);
  }

  else
  {
    v35 = sub_16DBBC();
    sub_A7704(v35);
    v36 = sub_A7894();
    v37(v36);
    v38 = sub_16DBDC();
    v39 = sub_16E37C();
    if (sub_4B3A8(v39))
    {
      v40 = sub_1BA38();
      *v40 = 0;
      sub_3851C(&def_259DC, v41, v42, "Failed to execute height pattern: no unit found in intent response.");
      sub_8A2C(v40);
    }

    v43 = v24[52];
    v44 = v24[22];

    v45 = sub_A77A4();
    v46(v45);
    sub_8748(v43, &qword_1C57F8, &unk_172510);
    *v44 = 0u;
    *(v44 + 16) = 0u;
    *(v44 + 32) = 0;
    sub_A7314();
    sub_A7374();

    sub_C9BC();
    sub_A755C();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }
}

uint64_t sub_9D2E0()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 464) = v3;
  *(v1 + 472) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_9D3C8()
{
  sub_8A88();
  sub_208C0(*(v0 + 600));
  sub_680F8();
  *(v0 + 480) = v1;
  v2 = swift_task_alloc();
  *(v0 + 488) = v2;
  *v2 = v0;
  sub_A73D4(v2);

  return sub_66E84();
}

uint64_t sub_9D460()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v3 = *v0;
  sub_C990();
  *v4 = v3;
  *(v7 + 496) = v5;
  *(v7 + 504) = v6;

  v8 = sub_17960();

  return _swift_task_switch(v8);
}

uint64_t sub_9D560()
{
  v178 = v0;
  if (!*(v0 + 504) || !*(v0 + 472))
  {

LABEL_6:
    v5 = sub_16DBBC();
    sub_A7598(v5);
    v6 = sub_3BD68();
    v7(v6);
    v8 = sub_16DBDC();
    v9 = sub_16E37C();
    if (sub_1BA1C(v9))
    {
      v10 = sub_1BA38();
      sub_1BA50(v10);
      sub_1B9D0(&def_259DC, v11, v12, "Couldn't create data or date dialog labels or deeplink");
      sub_1BA00();
    }

    v13 = *(v0 + 416);

    v14 = sub_A7610();
    v15(v14);
    sub_8748(v13, &qword_1C57F8, &unk_172510);
    sub_A7668();
    sub_A7314();

    sub_C9BC();
    sub_A78E8();

    __asm { BRAA            X1, X16 }
  }

  v1 = *(v0 + 368);
  sub_A7028();
  v2 = sub_A76DC();
  if (sub_369C(v2, v3, v1) == 1)
  {
    v4 = *(v0 + 408);

    sub_8748(v4, &qword_1C57F8, &unk_172510);
    goto LABEL_6;
  }

  v161 = *(v0 + 384);
  v162 = *(v0 + 376);
  v18 = *(v0 + 360);
  v159 = *(v0 + 368);
  v19 = *(v0 + 336);
  v20 = *(v0 + 320);
  v21 = *(v0 + 296);
  v173 = *(v0 + 288);
  v167 = *(v0 + 280);
  v169 = *(v0 + 400);
  v171 = *(v0 + 264);
  v164 = *(v0 + 256);
  v175 = *(v0 + 208);
  v22 = *(v0 + 192);
  v23 = *(v0 + 600);
  (*(v162 + 32))();
  sub_16E23C();

  v24 = sub_25948(v23);
  v26 = v25;
  v27 = sub_208C0(v23);
  v28 = (v18 + *(v19 + 20));
  *v28 = v24;
  v28[1] = v26;
  v29 = (v18 + *(v19 + 24));
  *v29 = v27;
  v29[1] = v30;
  sub_5840C(v22);
  v32 = v31;
  v33 = sub_A6F70(v22);
  v35 = sub_99F0C(v33, v34, v23, v32);

  [v22 maximum];
  v37 = v36;
  v38 = sub_A6F70(v22);
  v40 = sub_99F0C(v38, v39, v23, v37);

  [v22 minimum];
  v42 = v41;
  v43 = sub_A6F70(v22);
  v45 = sub_99F0C(v43, v44, v23, v42);

  sub_16E23C();

  v46 = sub_16D5CC();
  v47 = sub_38744();
  sub_214C(v47, v48, v49, v46);
  [v22 minimum];
  [v22 maximum];
  v50 = sub_A6F70(v22);
  if (v51)
  {
    v58 = v51;
  }

  else
  {
    v50 = 0;
    v58 = 0xE000000000000000;
  }

  v59 = *&v40;
  sub_5845C(v50, v58, v52, v53, v54, v55, v56, v57);
  v158 = v60;

  sub_16E23C();
  v61 = sub_38744();
  sub_214C(v61, v62, v63, v46);
  (*(v162 + 16))(v169, v161, v159);
  v64 = sub_38744();
  sub_214C(v64, v65, v66, v159);
  sub_A71E8();
  sub_A70D8();
  v67 = sub_38744();
  sub_214C(v67, v68, v69, v19);
  v157 = sub_16C11C();
  sub_8AB4();
  sub_214C(v70, v71, v72, v73);
  sub_8AB4();
  v165 = v46;
  sub_214C(v74, v75, v76, v46);
  sub_8AB4();
  sub_214C(v77, v78, v79, v19);
  if (v35 == 0.0)
  {
    v80 = 0;
  }

  else
  {
    v80 = *&v35;
  }

  v160 = v80;
  sub_A7364(v21[5]);
  if (v40 == 0.0)
  {
    v59 = 0;
  }

  v81 = v20 + v21[6];
  *v81 = v59;
  *(v81 + 8) = v40 == 0.0;
  if (v45 == 0.0)
  {
    v82 = 0;
  }

  else
  {
    v82 = *&v45;
  }

  v83 = v20 + v21[7];
  v84 = (v20 + v21[11]);
  v85 = (v20 + v21[12]);
  v163 = (v20 + v21[13]);
  *v83 = v82;
  *(v83 + 8) = v45 == 0.0;
  v166 = v21;
  *(v20 + v21[9]) = v158 & 1;
  sub_A6FD0();
  sub_1E8C0(v169);
  sub_388E4();
  sub_214C(v86, v87, v88, v157);
  sub_5FFFC(v164, v20);
  sub_A6FD0();
  *v84 = sub_1EA54(v82, v45 == 0.0, v167);
  v84[1] = v89;
  *v85 = sub_1EA54(v59, v40 == 0.0, v167);
  v85[1] = v90;
  v91 = sub_1EA54(v160, v35 == 0.0, v167);
  v93 = v92;
  sub_8748(v171, &dword_1C63F8, &qword_171800);
  sub_8748(v169, &qword_1C57F8, &unk_172510);
  sub_8748(v167, &qword_1C5800, &unk_16F510);
  sub_8748(v173, &qword_1C5800, &unk_16F510);
  *v163 = v91;
  v163[1] = v93;
  sub_A7458();
  sub_A7080();
  v94 = sub_16DBBC();
  *(v0 + 512) = v94;
  sub_8B48(v94, v0 + 104);
  v95 = *(v175 + 16);
  *(v0 + 520) = v95;
  sub_A7864();
  *(v0 + 528) = v96;
  v97 = sub_8427C();
  v95(v97);
  sub_A734C();
  sub_A70D8();
  v98 = sub_16DBDC();
  v99 = sub_16E36C();
  v100 = sub_4B3A8(v99);
  v101 = *(v0 + 312);
  if (v100)
  {
    v168 = *(v0 + 208);
    v170 = *(v0 + 200);
    v172 = *(v0 + 248);
    sub_8BD8();
    v177 = sub_A75B8();
    *v82 = 136315138;
    sub_A734C();
    sub_A70D8();
    v102 = sub_16E1EC();
    v104 = v103;
    sub_A7260();
    sub_A7130(v101, v105);
    v106 = sub_3AB7C(v102, v104, &v177);

    *(v82 + 4) = v106;
    sub_A7720(&def_259DC, v107, v108, "Query snippet model is: %s");
    v109 = sub_A7540();
    sub_8A2C(v109);
    sub_A76C0();

    v110 = *(v168 + 8);
    v110(v172, v170);
  }

  else
  {
    v111 = *(v0 + 208);

    sub_A7260();
    sub_A7130(v101, v112);
    v110 = *(v111 + 8);
    v113 = sub_C9E0();
    (v110)(v113);
  }

  *(v0 + 536) = v110;
  v114 = *(v0 + 200);
  sub_8B48(v94, v0 + 128);
  v115 = sub_A77B4();
  v95(v115);
  sub_A71E8();
  sub_38B40();
  sub_A70D8();
  v116 = sub_16DBDC();
  v117 = sub_16E36C();
  v118 = sub_A763C(v117);
  v119 = *(v0 + 352);
  if (v118)
  {
    v176 = *(v0 + 240);
    v174 = *(v0 + 200);
    sub_8BD8();
    v177 = sub_A7620();
    *v114 = 136315138;
    sub_A71E8();
    sub_A70D8();
    sub_A76B4();
    sub_16E1EC();
    sub_A7800();
    sub_A71D0();
    sub_A7130(v119, v120);
    v121 = sub_A76B4();
    v124 = sub_3AB7C(v121, v122, v123);

    *(v114 + 4) = v124;
    sub_A7438(&def_259DC, v125, v126, "Query snippet header model is: %s");
    sub_A74B4();
    sub_8A2C(v114);

    v110(v176, v174);
  }

  else
  {

    sub_A71D0();
    sub_A7130(v119, v127);
    v128 = sub_A7464();
    (v110)(v128);
  }

  if (qword_1C55D8 != -1)
  {
    sub_A73B4(&qword_1C55D8);
  }

  v129 = *(v0 + 328);
  v130 = *(v0 + 272);
  *(v0 + 544) = qword_1D7258;
  v131 = v129 + v166[5];
  v132 = *v131;
  v133 = *(v131 + 8);

  sub_A7830();
  sub_388E4();
  sub_214C(v134, v135, v136, v165);
  *(v0 + 552) = sub_A6BC4(v132, v133, v130);
  sub_8748(v130, &qword_1C5800, &unk_16F510);
  v137 = v129 + v166[7];
  v138 = *v137;
  v139 = *(v137 + 8);
  sub_A7830();
  sub_388E4();
  sub_214C(v140, v141, v142, v165);
  *(v0 + 560) = sub_A6BC4(v138, v139, v130);
  sub_8748(v130, &qword_1C5800, &unk_16F510);
  v143 = v129 + v166[6];
  v144 = *v143;
  LOBYTE(v138) = *(v143 + 8);
  sub_A7830();

  sub_388E4();
  sub_214C(v145, v146, v147, v165);
  *(v0 + 568) = sub_A6BC4(v144, v138, v130);
  sub_8748(v130, &qword_1C5800, &unk_16F510);
  v148 = swift_task_alloc();
  *(v0 + 576) = v148;
  *v148 = v0;
  v148[1] = sub_9E10C;
  sub_A78E8();

  return sub_AF7CC(v149, v150, v151, v152, v153, v154);
}

uint64_t sub_9E10C(uint64_t a1)
{
  v3 = *v2;
  sub_C990();
  *v4 = v3;
  *v4 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v3 + 584) = a1;
  }

  sub_8ACC();

  return _swift_task_switch(v5);
}

uint64_t sub_9E31C()
{
  sub_386A8();
  v1 = type metadata accessor for WellnessSnippets(0);
  v2 = sub_A79AC(v1);
  sub_A784C(v2);
  sub_A734C();
  sub_38B40();
  sub_A70D8();
  sub_8427C();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 592) = v3;
  *v3 = v4;
  v3[1] = sub_9E3E4;
  sub_A7824();

  return sub_672C0();
}

uint64_t sub_9E3E4()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 16));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_9E4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_A76E8();
  sub_A7760();
  v25 = *(v24 + 416);
  v27 = *(v24 + 376);
  v26 = *(v24 + 384);
  v29 = *(v24 + 360);
  v28 = *(v24 + 368);
  v30 = *(v24 + 328);

  sub_A7260();
  sub_A7130(v30, v31);
  sub_A71D0();
  sub_A7130(v29, v32);
  (*(v27 + 8))(v26, v28);
  sub_8748(v25, &qword_1C57F8, &unk_172510);
  sub_A7314();
  sub_A7374();

  sub_C9BC();
  sub_A755C();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_9E644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_A76E8();
  sub_A7760();
  v25 = v24[65];
  sub_A7578();
  v26 = sub_38408();
  v25(v26);
  v27 = sub_16DBDC();
  v28 = sub_16E37C();
  if (sub_1BA1C(v28))
  {
    v29 = sub_1BA38();
    sub_1BA50(v29);
    sub_1B9D0(&def_259DC, v30, v31, "Couldn't create dialog for height");
    sub_1BA00();
  }

  v47 = v24[67];
  v51 = v24[52];
  v32 = v24[47];
  v49 = v24[46];
  v50 = v24[48];
  v48 = v24[45];
  v33 = v24[41];
  v34 = v24[29];
  v35 = v24[25];

  v47(v34, v35);
  sub_A7260();
  sub_A7130(v33, v36);
  sub_A71D0();
  sub_A7130(v48, v37);
  (*(v32 + 8))(v50, v49);
  sub_8748(v51, &qword_1C57F8, &unk_172510);
  sub_A7658();
  sub_A7314();
  sub_A7374();

  sub_C9BC();
  sub_A755C();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, v47, v48, v49, v50, v51, a22, a23, a24);
}

uint64_t sub_9E850(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 184) = a3;
  *(v4 + 192) = a4;
  *(v4 + 584) = a2;
  *(v4 + 176) = a1;
  v5 = sub_16DBEC();
  *(v4 + 200) = v5;
  *(v4 + 208) = *(v5 - 8);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  sub_2440(&qword_1C63F0, &unk_1717F0);
  *(v4 + 256) = swift_task_alloc();
  sub_2440(&dword_1C63F8, &qword_171800);
  *(v4 + 264) = swift_task_alloc();
  sub_2440(&qword_1C5800, &unk_16F510);
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = type metadata accessor for OxygenSaturationQueryModel(0);
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = type metadata accessor for SnippetHeaderModel(0);
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  v6 = sub_16BE9C();
  *(v4 + 352) = v6;
  *(v4 + 360) = *(v6 - 8);
  *(v4 + 368) = swift_task_alloc();
  sub_2440(&qword_1C57E0, &unk_171C60);
  *(v4 + 376) = swift_task_alloc();
  sub_2440(&qword_1C57F8, &unk_172510);
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();

  return _swift_task_switch(sub_9EB70);
}

uint64_t sub_9EB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_A7910();
  v23 = v22[50];
  v24 = v22[24];
  sub_A79E8(v24);
  v22[51] = v25;
  sub_A7C24(v24, v23);
  v26 = sub_A6F70(v24);
  v28 = sub_13A5C4(v26, v27);
  v30 = v29;
  v22[52] = v28;
  v22[53] = v29;

  if (v30)
  {
    v31 = v22[23];
    v22[54] = sub_A84A0(v24);
    v32 = [v31 start];
    if (v32)
    {
      sub_16BF3C();
    }

    v54 = v22[47];
    v55 = sub_16BF5C();
    sub_A7740(v55);
    sub_8748(v54, &qword_1C57E0, &unk_171C60);
    v56 = swift_task_alloc();
    v22[55] = v56;
    *v56 = v22;
    sub_A73D4(v56);
    sub_A77E4();

    return sub_6789C(v57, v58, v59);
  }

  else
  {
    v33 = sub_16DBBC();
    sub_A7704(v33);
    v34 = sub_A7894();
    v35(v34);
    v36 = sub_16DBDC();
    v37 = sub_16E37C();
    if (sub_4B3A8(v37))
    {
      v38 = sub_1BA38();
      *v38 = 0;
      sub_3851C(&def_259DC, v39, v40, "Failed to execute height pattern: no unit found in intent response.");
      sub_8A2C(v38);
    }

    v41 = v22[50];
    v42 = v22[22];

    v43 = sub_A77A4();
    v44(v43);
    sub_8748(v41, &qword_1C57F8, &unk_172510);
    *v42 = 0u;
    *(v42 + 16) = 0u;
    *(v42 + 32) = 0;
    sub_A72F4();
    sub_A7404();

    sub_C9BC();
    sub_A77E4();

    return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_9EE58()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 448) = v3;
  *(v1 + 456) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_9EF40()
{
  sub_8A88();
  sub_208C0(*(v0 + 584));
  sub_680F8();
  *(v0 + 464) = v1;
  v2 = swift_task_alloc();
  *(v0 + 472) = v2;
  *v2 = v0;
  sub_A73D4(v2);

  return sub_66E84();
}

uint64_t sub_9EFD8()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;
  v2[60] = v6;
  v2[61] = v7;

  v8 = swift_task_alloc();
  v2[62] = v8;
  *v8 = v4;
  v9 = sub_A7290(v8);

  return sub_66A84(v9, v10);
}

uint64_t sub_9F108()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 504) = v3;
  *(v1 + 512) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_9F1F0()
{
  v166 = v0;
  v1 = *(v0 + 488);
  if (!v1 || !*(v0 + 456))
  {

    goto LABEL_6;
  }

  v2 = *(v0 + 392);
  v3 = *(v0 + 352);
  sub_A7028();
  if (sub_369C(v2, 1, v3) == 1)
  {
    v4 = *(v0 + 392);

    sub_8748(v4, &qword_1C57F8, &unk_172510);
LABEL_6:
    v5 = sub_16DBBC();
    sub_A7598(v5);
    v6 = sub_3BD68();
    v7(v6);
    v8 = sub_16DBDC();
    v9 = sub_16E37C();
    if (sub_1BA1C(v9))
    {
      v10 = sub_1BA38();
      sub_1BA50(v10);
      sub_1B9D0(&def_259DC, v11, v12, "Couldn't create data or date dialog labels or deeplink");
      sub_1BA00();
    }

    v13 = *(v0 + 400);

    v14 = sub_A7610();
    v15(v14);
    sub_8748(v13, &qword_1C57F8, &unk_172510);
    sub_A7668();
    sub_A72F4();

    sub_C9BC();

    return v16();
  }

  v18 = *(v0 + 480);
  v19 = *(v0 + 344);
  v20 = *(v0 + 320);
  v21 = *(v0 + 192);
  v22 = *(v0 + 584);
  (*(*(v0 + 360) + 32))(*(v0 + 368), *(v0 + 392), *(v0 + 352));
  sub_8B9C();
  sub_16E23C();

  sub_25948(v22);
  sub_680F8();
  v23 = sub_208C0(v22);
  v24 = (v19 + *(v20 + 20));
  *v24 = v1;
  v24[1] = v18;
  v25 = (v19 + *(v20 + 24));
  *v25 = v23;
  v25[1] = v26;
  [v21 minimum];
  v28 = v27;
  [v21 maximum];
  v30 = v29;
  if (v28 == v29)
  {
    v31 = 0.0;
  }

  else
  {
    v32 = *(v0 + 192);
    v33 = *(v0 + 584);
    [v32 average];
    v35 = v34 * 100.0;
    v36 = sub_A6F70(v32);
    v38 = sub_99F0C(v36, v37, v33, v35);

    v31 = v38;
  }

  if ((*&v31 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v39 = *&v31;
  }

  else
  {
    v39 = 0;
  }

  v151 = *(v0 + 504);
  v152 = *(v0 + 512);
  if (v28 == v30)
  {
    v39 = *&v31;
  }

  v147 = v39;
  v149 = *(v0 + 416);
  v150 = *(v0 + 424);
  v40 = *(v0 + 360);
  v41 = *(v0 + 352);
  v144 = *(v0 + 368);
  v153 = *(v0 + 320);
  v155 = *(v0 + 384);
  v42 = *(v0 + 304);
  v43 = *(v0 + 272);
  v44 = *(v0 + 280);
  v157 = *(v0 + 264);
  v148 = *(v0 + 256);
  v163 = *(v0 + 208);
  v45 = *(v0 + 192);
  v46 = *(v0 + 584);
  v47 = (*&v31 & 0x7FFFFFFFFFFFFFFFLL) == 0 || v28 == v30;
  v161 = v47;
  [v45 maximum];
  v49 = v48 * 100.0;
  v50 = sub_A6F70(v45);
  v52 = sub_99F0C(v50, v51, v46, v49);

  [v45 minimum];
  v54 = v53 * 100.0;
  v55 = sub_A6F70(v45);
  v57 = sub_99F0C(v55, v56, v46, v54);

  [v45 mostRecent];
  v59 = v58 * 100.0;
  v60 = sub_A6F70(v45);
  v62 = sub_99F0C(v60, v61, v46, v59);

  v159 = v43;
  sub_16E23C();

  v63 = sub_16D5CC();
  v64 = sub_38744();
  sub_214C(v64, v65, v66, v63);
  (*(v40 + 16))(v155, v144, v41);
  v67 = sub_38744();
  sub_214C(v67, v68, v69, v41);
  sub_A71E8();
  sub_A70D8();
  v70 = sub_38744();
  sub_214C(v70, v71, v72, v153);
  v142 = sub_16C11C();
  sub_8AB4();
  sub_214C(v73, v74, v75, v76);
  sub_8AB4();
  sub_214C(v77, v78, v79, v63);
  sub_8AB4();
  sub_214C(v80, v81, v82, v153);
  v83 = v42 + v44[5];
  *v83 = v147;
  *(v83 + 8) = v161;
  if (v52 == 0.0)
  {
    v84 = 0;
  }

  else
  {
    v84 = *&v52;
  }

  v143 = v84;
  sub_A7364(v44[6]);
  if (v57 == 0.0)
  {
    v85 = 0;
  }

  else
  {
    v85 = *&v57;
  }

  v145 = v85;
  sub_A7364(v44[7]);
  if (v62 == 0.0)
  {
    v86 = 0;
  }

  else
  {
    v86 = *&v62;
  }

  v141 = v86;
  v87 = v42 + v44[8];
  v88 = (v42 + v44[10]);
  v89 = (v42 + v44[11]);
  v90 = (v42 + v44[12]);
  v146 = (v42 + v44[13]);
  v154 = v44;
  v91 = (v42 + v44[14]);
  v92 = (v42 + v44[15]);
  *v87 = v86;
  *(v87 + 8) = v62 == 0.0;
  *v91 = v149;
  v91[1] = v150;
  sub_A6FD0();
  sub_161FAC(v155);
  sub_388E4();
  sub_214C(v93, v94, v95, v142);
  sub_5FFFC(v148, v42);
  *v92 = v151;
  v92[1] = v152;
  sub_A6FD0();
  *v88 = sub_162144(v147, v161);
  v88[1] = v96;
  *v89 = sub_162144(v143, v52 == 0.0);
  v89[1] = v97;
  *v90 = sub_162144(v145, v57 == 0.0);
  v90[1] = v98;
  v99 = sub_162144(v141, v62 == 0.0);
  v101 = v100;
  sub_8748(v157, &dword_1C63F8, &qword_171800);
  sub_8748(v155, &qword_1C57F8, &unk_172510);
  sub_8748(v159, &qword_1C5800, &unk_16F510);
  *v146 = v99;
  v146[1] = v101;
  sub_A7458();
  sub_A7080();
  v102 = sub_16DBBC();
  *(v0 + 520) = v102;
  sub_8B48(v102, v0 + 104);
  v103 = *(v163 + 16);
  *(v0 + 528) = v103;
  sub_A7864();
  *(v0 + 536) = v104;
  v105 = sub_8427C();
  v103(v105);
  sub_A7334();
  sub_A70D8();
  v106 = sub_16DBDC();
  v107 = sub_16E36C();
  v108 = sub_4B3A8(v107);
  v109 = *(v0 + 296);
  if (v108)
  {
    v160 = *(v0 + 248);
    v156 = *(v0 + 208);
    v158 = *(v0 + 200);
    sub_8BD8();
    v165 = sub_A75B8();
    dword_1C63F8 = 136315138;
    sub_A7334();
    sub_A70D8();
    v110 = sub_16E1EC();
    v112 = v111;
    sub_A7248();
    sub_A7130(v109, v113);
    v114 = sub_3AB7C(v110, v112, &v165);

    *algn_1C63FC = v114;
    sub_A7720(&def_259DC, v115, v116, "Query snippet model is: %s");
    v117 = sub_A7540();
    sub_8A2C(v117);
    sub_A76C0();

    v118 = *(v156 + 8);
    v118(v160, v158);
  }

  else
  {
    v119 = *(v0 + 208);

    sub_A7248();
    sub_A7130(v109, v120);
    v118 = *(v119 + 8);
    v121 = sub_C9E0();
    (v118)(v121);
  }

  *(v0 + 544) = v118;
  v122 = *(v0 + 200);
  sub_8B48(v102, v0 + 128);
  v123 = sub_A77B4();
  v103(v123);
  sub_A71E8();
  sub_38B40();
  sub_A70D8();
  v124 = sub_16DBDC();
  v125 = sub_16E36C();
  v126 = sub_A763C(v125);
  v127 = *(v0 + 336);
  if (v126)
  {
    v162 = *(v0 + 200);
    v164 = *(v0 + 240);
    sub_8BD8();
    v165 = sub_A7620();
    *v122 = 136315138;
    sub_A71E8();
    sub_A70D8();
    sub_A76B4();
    sub_16E1EC();
    sub_A7800();
    sub_A71D0();
    sub_A7130(v127, v128);
    v129 = sub_A76B4();
    v132 = sub_3AB7C(v129, v130, v131);

    *(v122 + 4) = v132;
    sub_A7438(&def_259DC, v133, v134, "Query snippet header model is: %s");
    sub_A74B4();
    sub_8A2C(v122);

    v118(v164, v162);
  }

  else
  {

    sub_A71D0();
    sub_A7130(v127, v135);
    v136 = sub_A7464();
    (v118)(v136);
  }

  if (qword_1C55D8 != -1)
  {
    sub_A73B4(&qword_1C55D8);
  }

  v137 = *(v0 + 432);
  v138 = *(v0 + 312);
  *(v0 + 552) = qword_1D7258;
  v139 = *(v138 + v154[5] + 8);

  v140 = swift_task_alloc();
  *(v0 + 560) = v140;
  *v140 = v0;
  v140[1] = sub_9FD60;
  v169 = v137;
  v168 = v139;

  return sub_AD924();
}

uint64_t sub_9FD60(uint64_t a1)
{
  v4 = *v2;
  sub_C990();
  *v5 = v4;
  *v5 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 568) = a1;
  }

  sub_8ACC();

  return _swift_task_switch(v6);
}

uint64_t sub_9FEF8()
{
  sub_386A8();
  v1 = type metadata accessor for WellnessSnippets(0);
  v2 = sub_A79AC(v1);
  sub_A784C(v2);
  sub_A7334();
  sub_38B40();
  sub_A70D8();
  sub_8427C();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 576) = v3;
  *v3 = v4;
  v3[1] = sub_9FFC0;
  sub_A7824();

  return sub_672C0();
}

uint64_t sub_9FFC0()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 16));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_A00A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_A7910();
  v23 = *(v22 + 400);
  v25 = *(v22 + 360);
  v24 = *(v22 + 368);
  v27 = *(v22 + 344);
  v26 = *(v22 + 352);
  v28 = *(v22 + 312);

  sub_A7248();
  sub_A7130(v28, v29);
  sub_A71D0();
  sub_A7130(v27, v30);
  (*(v25 + 8))(v24, v26);
  sub_8748(v23, &qword_1C57F8, &unk_172510);
  sub_A72F4();
  sub_A7404();

  sub_C9BC();
  sub_A77E4();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_A0214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_A7910();
  v23 = v22[66];
  sub_A7578();
  v24 = sub_38408();
  v23(v24);
  v25 = sub_16DBDC();
  v26 = sub_16E37C();
  if (sub_1BA1C(v26))
  {
    v27 = sub_1BA38();
    sub_1BA50(v27);
    sub_1B9D0(&def_259DC, v28, v29, "Couldn't create dialog for blood oxygen");
    sub_1BA00();
  }

  v30 = v22[45];
  v48 = v22[46];
  v49 = v22[50];
  v47 = v22[44];
  v45 = v22[68];
  v46 = v22[43];
  v31 = v22[39];
  v32 = v22[29];
  v33 = v22[25];

  v45(v32, v33);
  sub_A7248();
  sub_A7130(v31, v34);
  sub_A71D0();
  sub_A7130(v46, v35);
  (*(v30 + 8))(v48, v47);
  sub_8748(v49, &qword_1C57F8, &unk_172510);
  sub_A7658();
  sub_A72F4();
  sub_A7404();

  sub_C9BC();
  sub_A77E4();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, v45, v46, v47, v48, v49, a20, a21, a22);
}

uint64_t sub_A0410(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 160) = a3;
  *(v4 + 168) = a4;
  *(v4 + 632) = a2;
  *(v4 + 152) = a1;
  v5 = sub_16DBEC();
  *(v4 + 176) = v5;
  *(v4 + 184) = *(v5 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  sub_2440(&qword_1C63F0, &unk_1717F0);
  *(v4 + 224) = swift_task_alloc();
  sub_2440(&dword_1C63F8, &qword_171800);
  *(v4 + 232) = swift_task_alloc();
  sub_2440(&qword_1C5800, &unk_16F510);
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = type metadata accessor for GenericQueryModel(0);
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = type metadata accessor for SnippetHeaderModel(0);
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  v6 = sub_2440(&qword_1C6C68, &qword_172958);
  *(v4 + 328) = v6;
  *(v4 + 336) = *(v6 - 8);
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = swift_task_alloc();
  v7 = sub_16BE9C();
  *(v4 + 384) = v7;
  *(v4 + 392) = *(v7 - 8);
  *(v4 + 400) = swift_task_alloc();
  sub_2440(&qword_1C57E0, &unk_171C60);
  *(v4 + 408) = swift_task_alloc();
  sub_2440(&qword_1C57F8, &unk_172510);
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = swift_task_alloc();

  return _swift_task_switch(sub_A07C8);
}

uint64_t sub_A07C8()
{
  sub_C9EC();
  v1 = v0[54];
  v2 = v0[20];
  v3 = v0[21];
  sub_A79E8(v3);
  v0[55] = v4;
  sub_A7C24(v3, v1);
  v0[56] = sub_A84A0(v3);
  v5 = [v2 start];
  if (v5)
  {
    sub_16BF3C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v0[51];
  v8 = sub_16BF5C();
  sub_214C(v7, v6, 1, v8);
  sub_8748(v7, &qword_1C57E0, &unk_171C60);
  v9 = swift_task_alloc();
  v0[57] = v9;
  *v9 = v0;
  v9[1] = sub_A0918;
  sub_38F74();

  return sub_6789C(v10, v11, v12);
}

uint64_t sub_A0918()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 464) = v3;
  *(v1 + 472) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_A0A00()
{
  sub_8A88();
  sub_208C0(*(v0 + 632));
  sub_680F8();
  *(v0 + 480) = v1;
  v2 = swift_task_alloc();
  *(v0 + 488) = v2;
  *v2 = v0;
  sub_A73D4(v2);

  return sub_66E84();
}

uint64_t sub_A0A98()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v3 = *v0;
  sub_C990();
  *v4 = v3;
  *(v7 + 496) = v5;
  *(v7 + 504) = v6;

  v8 = sub_17960();

  return _swift_task_switch(v8);
}

uint64_t sub_A0B98()
{
  sub_386A8();
  v1 = *(v0 + 168);
  v2 = *(v0 + 632);
  sub_5840C(v1);
  v4 = v3;
  v5 = sub_A6F70(v1);
  *(v0 + 512) = sub_99F0C(v5, v6, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 520) = v7;
  *v7 = v0;
  v8 = sub_A7290(v7);

  return sub_66A84(v8, v9);
}

uint64_t sub_A0C5C()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 528) = v3;
  *(v1 + 536) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_A0D48()
{
  v193 = v0;
  if (!*(v0 + 504) || !*(v0 + 472))
  {
    goto LABEL_14;
  }

  v1 = *(v0 + 384);
  sub_A7028();
  v2 = sub_A76DC();
  if (sub_369C(v2, v3, v1) == 1)
  {
    v4 = *(v0 + 424);

    sub_8748(v4, &qword_1C57F8, &unk_172510);
LABEL_16:
    v42 = sub_16DBBC();
    sub_A7704(v42);
    v43 = sub_3BD68();
    v44(v43);
    v45 = sub_16DBDC();
    v46 = sub_16E37C();
    if (sub_1BA1C(v46))
    {
      v47 = sub_1BA38();
      sub_1BA50(v47);
      sub_1B9D0(&def_259DC, v48, v49, "Couldn't create data or date dialog labels or deeplink or invalid unit");
      sub_1BA00();
    }

    v50 = *(v0 + 432);

    v51 = sub_A7610();
    v52(v51);
    sub_8748(v50, &qword_1C57F8, &unk_172510);
    sub_A7668();
    sub_A73E4();

    sub_C9BC();
    sub_A79C4();

    return v53();
  }

  v5 = *(v0 + 168);
  (*(*(v0 + 392) + 32))(*(v0 + 400), *(v0 + 424), *(v0 + 384));
  v6 = sub_A6F70(v5);
  if (!v7)
  {
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));

LABEL_14:

LABEL_15:

    goto LABEL_16;
  }

  v8 = v7;
  if (!*(v0 + 536))
  {
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));

    goto LABEL_15;
  }

  v9 = v6;
  v169 = *(v0 + 352);
  v170 = *(v0 + 344);
  v171 = *(v0 + 336);
  v173 = *(v0 + 360);
  v10 = *(v0 + 328);
  v178 = *(v0 + 320);
  v186 = *(v0 + 296);
  v11 = *(v0 + 168);
  v181 = *(v0 + 632);
  sub_A7188();

  v168 = v9;
  v189 = v8;
  v12 = sub_9C23C();
  *(v0 + 544) = v12;
  v176 = v11;
  [v11 minimum];
  v13 = v12;
  sub_16BCEC();
  [v11 maximum];
  v175 = v13;
  sub_16BCEC();
  v14 = objc_opt_self();
  v15 = [v14 poundsMass];
  sub_16BD1C();

  v16 = [v14 poundsMass];
  sub_16BD1C();

  sub_16BD0C();
  v17 = *(v171 + 8);
  *(v0 + 552) = v17;
  *(v0 + 560) = (v171 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v170, v10);
  v17(v169, v10);
  sub_16BCFC();
  v19 = v18;
  v17(v173, v10);
  sub_16E23C();

  v20 = sub_25948(v181);
  v22 = v21;
  v23 = sub_208C0(v181);
  v24 = (v178 + *(v186 + 20));
  *v24 = v20;
  v24[1] = v22;
  v25 = (v178 + *(v186 + 24));
  *v25 = v23;
  v25[1] = v26;
  [v176 minimum];
  v28 = v27;
  [v176 maximum];
  v30 = v29;
  v31 = 0.0;
  if (v28 != v29)
  {
    v32 = *(v0 + 632);
    [*(v0 + 168) minimum];
    v34 = v33;

    v35 = sub_99F0C(v168, v189, v32, v34);

    v31 = v35;
  }

  v36 = *(v0 + 168);
  [v36 minimum];
  v38 = v37;
  [v36 maximum];
  v40 = v39;
  if (v38 == v39)
  {

    v41 = 0.0;
  }

  else
  {
    v56 = *(v0 + 632);
    [*(v0 + 168) maximum];
    v58 = sub_99F0C(v168, v189, v56, v57);

    v41 = v58;
  }

  if ((*&v41 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v59 = *&v41;
  }

  else
  {
    v59 = 0;
  }

  v166 = *(v0 + 528);
  v167 = *(v0 + 536);
  v60 = v38 == v40;
  if (v38 == v40)
  {
    v59 = *&v41;
  }

  v165 = v59;
  v61 = *(v0 + 512);
  v62 = (*&v41 & 0x7FFFFFFFFFFFFFFFLL) == 0 || v60;
  v195 = v62;
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v63 = *&v31;
  }

  else
  {
    v63 = 0;
  }

  v187 = *(v0 + 416);
  v64 = *(v0 + 392);
  v159 = *(v0 + 400);
  if (v28 == v30)
  {
    v63 = *&v31;
  }

  v184 = v63;
  v65 = (*&v31 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  v66 = *(v0 + 384);
  v161 = *(v0 + 296);
  v67 = *(v0 + 280);
  v68 = *(v0 + 248);
  v69 = *(v0 + 256);
  v177 = *(v0 + 232);
  v190 = *(v0 + 184);
  v70 = v65 || v28 == v30;
  v182 = v70;
  v174 = v175;
  v71 = [v174 symbol];
  v72 = sub_16E1BC();
  v163 = v73;
  v164 = v72;

  v179 = v68;
  sub_16E23C();

  v74 = sub_16D5CC();
  sub_388E4();
  sub_214C(v75, v76, v77, v74);
  (*(v64 + 16))(v187, v159, v66);
  v78 = sub_38744();
  sub_214C(v78, v79, v80, v66);
  sub_A71E8();
  sub_A70D8();
  v81 = sub_38744();
  sub_214C(v81, v82, v83, v161);
  v84 = sub_16C11C();
  sub_8AB4();
  sub_214C(v85, v86, v87, v84);
  sub_8AB4();
  v172 = v74;
  sub_214C(v88, v89, v90, v74);
  sub_8AB4();
  sub_214C(v91, v92, v93, v161);
  if (v61 == 0.0)
  {
    v94 = 0;
  }

  else
  {
    v94 = *&v61;
  }

  v158 = v94;
  sub_A7364(v69[5]);
  v95 = v67 + v69[6];
  *v95 = v184;
  *(v95 + 8) = v182;
  v96 = v67 + v69[7];
  v97 = v67 + v69[8];
  v98 = v67 + v69[9];
  v99 = (v67 + v69[11]);
  v157 = (v67 + v69[12]);
  v160 = (v67 + v69[13]);
  v162 = (v67 + v69[14]);
  v100 = (v67 + v69[15]);
  v101 = (v67 + v69[16]);
  v102 = (v67 + v69[17]);
  *v96 = v165;
  v103 = v195;
  *(v96 + 8) = v195;
  *v97 = 0;
  *(v97 + 8) = 1;
  *v98 = 0;
  *(v98 + 8) = 1;
  *v101 = v164;
  v101[1] = v163;
  sub_A6FD0();
  sub_12A600(v187);
  v104 = sub_38744();
  sub_214C(v104, v105, v106, v84);
  v107 = sub_8B9C();
  sub_5FFFC(v107, v108);
  *v102 = v166;
  v102[1] = v167;
  sub_A6FD0();
  *v100 = sub_12A7A4(0, 1);
  v100[1] = v109;
  *v99 = sub_12A7A4(v158, v61 == 0.0);
  v99[1] = v110;
  *v157 = sub_12A7A4(v184, v182);
  v157[1] = v111;
  *v160 = sub_12A7A4(v165, v103);
  v160[1] = v112;
  v113 = sub_12A7A4(0, 1);
  v115 = v114;
  sub_8748(v177, &dword_1C63F8, &qword_171800);
  sub_8748(v187, &qword_1C57F8, &unk_172510);
  sub_8748(v179, &qword_1C5800, &unk_16F510);
  *v162 = v113;
  v162[1] = v115;
  sub_A7458();
  sub_A7080();
  v116 = sub_16DBBC();
  *(v0 + 568) = v116;
  sub_8B48(v116, v0 + 80);
  v117 = *(v190 + 16);
  *(v0 + 576) = v117;
  sub_A7864();
  *(v0 + 584) = v118;
  v119 = sub_8427C();
  v117(v119);
  sub_A7230();
  sub_A70D8();
  v120 = sub_16DBDC();
  v121 = sub_16E36C();
  v122 = sub_A763C(v121);
  v123 = *(v0 + 272);
  if (v122)
  {
    v185 = *(v0 + 216);
    v180 = *(v0 + 184);
    v183 = *(v0 + 176);
    sub_8BD8();
    v192 = sub_A75B8();
    *v177 = 136315138;
    sub_A7230();
    sub_A70D8();
    v124 = sub_16E1EC();
    v126 = v125;
    sub_A7200();
    sub_A7130(v123, v127);
    v128 = sub_3AB7C(v124, v126, &v192);

    *(v177 + 4) = v128;
    _os_log_impl(&def_259DC, v120, v100, "Query snippet model is: %s", v177, 0xCu);
    v129 = sub_A7540();
    sub_8A2C(v129);
    sub_A76C0();

    v130 = *(v180 + 8);
    v130(v185, v183);
  }

  else
  {
    v131 = *(v0 + 184);

    sub_A7200();
    sub_A7130(v123, v132);
    v130 = *(v131 + 8);
    v133 = sub_C9E0();
    (v130)(v133);
  }

  *(v0 + 592) = v130;
  v134 = *(v0 + 176);
  sub_8B48(v116, v0 + 104);
  v135 = sub_A77B4();
  v117(v135);
  sub_A71E8();
  sub_38B40();
  sub_A70D8();
  v136 = sub_16DBDC();
  v137 = sub_16E36C();
  v138 = sub_A763C(v137);
  v139 = *(v0 + 312);
  if (v138)
  {
    v188 = *(v0 + 176);
    v191 = *(v0 + 208);
    sub_8BD8();
    v192 = sub_A7620();
    *v134 = 136315138;
    sub_A71E8();
    sub_A70D8();
    sub_A76B4();
    sub_16E1EC();
    sub_A7800();
    sub_A71D0();
    sub_A7130(v139, v140);
    v141 = sub_A76B4();
    v144 = sub_3AB7C(v141, v142, v143);

    *(v134 + 4) = v144;
    sub_A7438(&def_259DC, v145, v146, "Query snippet header model is: %s");
    sub_A74B4();
    sub_8A2C(v134);

    v130(v191, v188);
  }

  else
  {

    sub_A71D0();
    sub_A7130(v139, v147);
    v148 = sub_A7464();
    (v130)(v148);
  }

  if (qword_1C55D8 != -1)
  {
    sub_A73B4(&qword_1C55D8);
  }

  v149 = *(v0 + 448);
  v150 = *(v0 + 168);
  *(v0 + 600) = qword_1D7258;

  [v150 minimum];
  [v150 maximum];
  v151 = [v174 symbol];

  sub_16E1BC();
  sub_A7800();

  sub_A76B4();
  sub_16E23C();

  sub_388E4();
  sub_214C(v152, v153, v154, v172);

  v155 = swift_task_alloc();
  *(v0 + 608) = v155;
  *v155 = v0;
  v155[1] = sub_A1B54;
  v196 = v149;
  v194 = v19 < 0.5;
  sub_A79C4();

  return sub_B1D24();
}

uint64_t sub_A1B54(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;
  *v6 = *v2;

  v7 = *(v4 + 240);
  if (v1)
  {

    sub_8748(v7, &qword_1C5800, &unk_16F510);
  }

  else
  {
    *(v5 + 616) = a1;
    sub_8748(v7, &qword_1C5800, &unk_16F510);
  }

  sub_8ACC();

  return _swift_task_switch(v8);
}

uint64_t sub_A1D30()
{
  sub_386A8();
  v1 = type metadata accessor for WellnessSnippets(0);
  v2 = sub_A79AC(v1);
  sub_A784C(v2);
  sub_A7230();
  sub_38B40();
  sub_A70D8();
  sub_8427C();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 624) = v3;
  *v3 = v4;
  v3[1] = sub_A1DF8;
  sub_A7824();

  return sub_672C0();
}

uint64_t sub_A1DF8()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 16));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_A1EDC()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 392);
  v14 = *(v0 + 400);
  v15 = *(v0 + 432);
  v12 = *(v0 + 376);
  v13 = *(v0 + 384);
  v11 = *(v0 + 368);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 288);

  sub_A7200();
  sub_A7130(v6, v7);
  sub_A71D0();
  sub_A7130(v5, v8);
  v1(v11, v4);
  v1(v12, v4);
  (*(v3 + 8))(v14, v13);
  sub_8748(v15, &qword_1C57F8, &unk_172510);
  sub_A73E4();

  sub_C9BC();

  return v9();
}

uint64_t sub_A2104()
{
  v37 = v0;
  v1 = *(v0 + 576);
  sub_8B48(*(v0 + 568), v0 + 128);
  v2 = sub_38408();
  v1(v2);
  v3 = sub_16DBDC();
  v4 = sub_16E37C();
  v5 = os_log_type_enabled(v3, v4);
  v31 = *(v0 + 592);
  v6 = *(v0 + 552);
  v29 = *(v0 + 544);
  v7 = *(v0 + 432);
  v8 = *(v0 + 392);
  v9 = *(v0 + 400);
  v34 = *(v0 + 376);
  v35 = *(v0 + 384);
  v10 = *(v0 + 328);
  v32 = *(v0 + 320);
  v33 = *(v0 + 368);
  v30 = *(v0 + 288);
  v27 = *(v0 + 176);
  v28 = *(v0 + 200);
  if (v5)
  {
    v26 = *(v0 + 400);
    v11 = *(v0 + 632);
    v24 = *(v0 + 552);
    v12 = sub_8BD8();
    v25 = v7;
    v13 = sub_CA30();
    v36 = v13;
    *v12 = 136315138;
    v14 = sub_208C0(v11);
    v16 = sub_3AB7C(v14, v15, &v36);

    *(v12 + 4) = v16;
    _os_log_impl(&def_259DC, v3, v4, "Couldn't create dialog for %s", v12, 0xCu);
    sub_2D64(v13);
    sub_8A2C(v13);
    sub_8A2C(v12);

    v31(v28, v27);
    sub_A7200();
    sub_A7130(v30, v17);
    sub_A71D0();
    sub_A7130(v32, v18);
    v24(v33, v10);
    v24(v34, v10);
    (*(v8 + 8))(v26, v35);
    v19 = v25;
  }

  else
  {

    v31(v28, v27);
    sub_A7200();
    sub_A7130(v30, v20);
    sub_A71D0();
    sub_A7130(v32, v21);
    v6(v33, v10);
    v6(v34, v10);
    (*(v8 + 8))(v9, v35);
    v19 = v7;
  }

  sub_8748(v19, &qword_1C57F8, &unk_172510);
  sub_A77D4(*(v0 + 152));
  sub_A73E4();

  sub_C9BC();

  return v22();
}

uint64_t sub_A24E0()
{
  sub_8A88();
  *(v0 + 192) = v1;
  *(v0 + 200) = v2;
  *(v0 + 616) = v3;
  *(v0 + 184) = v4;
  v5 = sub_16DBEC();
  *(v0 + 208) = v5;
  sub_888C(v5);
  *(v0 + 216) = v6;
  *(v0 + 224) = sub_8C38();
  *(v0 + 232) = swift_task_alloc();
  *(v0 + 240) = swift_task_alloc();
  *(v0 + 248) = swift_task_alloc();
  *(v0 + 256) = swift_task_alloc();
  v7 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v7);
  *(v0 + 264) = sub_8BC0();
  v8 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v8);
  *(v0 + 272) = sub_8BC0();
  v9 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v9);
  *(v0 + 280) = sub_8C38();
  *(v0 + 288) = swift_task_alloc();
  *(v0 + 296) = swift_task_alloc();
  Model = type metadata accessor for GenericQueryModel(0);
  *(v0 + 304) = Model;
  sub_4348(Model);
  *(v0 + 312) = sub_8C38();
  *(v0 + 320) = swift_task_alloc();
  *(v0 + 328) = swift_task_alloc();
  *(v0 + 336) = swift_task_alloc();
  v11 = type metadata accessor for SnippetHeaderModel(0);
  *(v0 + 344) = v11;
  sub_4348(v11);
  *(v0 + 352) = sub_8C38();
  *(v0 + 360) = swift_task_alloc();
  *(v0 + 368) = swift_task_alloc();
  v12 = sub_16BE9C();
  *(v0 + 376) = v12;
  sub_888C(v12);
  *(v0 + 384) = v13;
  *(v0 + 392) = sub_8BC0();
  v14 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v14);
  *(v0 + 400) = sub_8BC0();
  v15 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v15);
  *(v0 + 408) = sub_8C38();
  *(v0 + 416) = swift_task_alloc();
  *(v0 + 424) = swift_task_alloc();
  v16 = sub_17960();

  return _swift_task_switch(v16);
}

uint64_t sub_A2798()
{
  sub_386A8();
  v1 = *(v0 + 424);
  v2 = *(v0 + 200);
  sub_A79E8(v2);
  *(v0 + 432) = v3;
  sub_A7C24(v2, v1);
  v4 = swift_task_alloc();
  *(v0 + 440) = v4;
  *v4 = v0;
  v4[1] = sub_A2854;
  v5 = *(v0 + 616);

  return sub_A8154(v5);
}

uint64_t sub_A2854()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 448) = v3;
  *(v1 + 456) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_A293C()
{
  sub_C9EC();
  v1 = *(v0 + 192);
  v2 = *(v0 + 616);
  *(v0 + 464) = sub_A84A0(*(v0 + 200));
  *(v0 + 472) = sub_A8C8C(v2);
  *(v0 + 617) = v3;
  v4 = [v1 start];
  if (v4)
  {
    sub_16BF3C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(v0 + 400);
  v7 = sub_16BF5C();
  sub_214C(v6, v5, 1, v7);
  sub_8748(v6, &qword_1C57E0, &unk_171C60);
  v8 = swift_task_alloc();
  *(v0 + 480) = v8;
  *v8 = v0;
  v8[1] = sub_A2A88;
  sub_38F74();

  return sub_6789C(v9, v10, v11);
}

uint64_t sub_A2A88()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 488) = v3;
  *(v1 + 496) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_A2B70()
{
  sub_8A88();
  sub_208C0(*(v0 + 616));
  sub_680F8();
  *(v0 + 504) = v1;
  v2 = swift_task_alloc();
  *(v0 + 512) = v2;
  *v2 = v0;
  sub_A73D4(v2);

  return sub_66E84();
}

uint64_t sub_A2C08()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;
  v2[65] = v6;
  v2[66] = v7;

  v8 = swift_task_alloc();
  v2[67] = v8;
  *v8 = v4;
  v9 = sub_A7290(v8);

  return sub_66A84(v9, v10);
}

uint64_t sub_A2D3C()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 544) = v3;
  *(v1 + 552) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_A2E28()
{
  if (!*(v0 + 528) || !*(v0 + 496))
  {

    goto LABEL_6;
  }

  v1 = *(v0 + 376);
  sub_A7028();
  v2 = sub_A76DC();
  if (sub_369C(v2, v3, v1) == 1)
  {
    v4 = *(v0 + 416);

    sub_8748(v4, &qword_1C57F8, &unk_172510);
LABEL_6:
    v5 = sub_16DBBC();
    sub_A7704(v5);
    v6 = sub_3BD68();
    v7(v6);
    v8 = sub_16DBDC();
    v9 = sub_16E37C();
    if (sub_1BA1C(v9))
    {
      v10 = sub_1BA38();
      sub_1BA50(v10);
      sub_1B9D0(&def_259DC, v11, v12, "Couldn't create data or date dialog labels or deeplink");
      sub_1BA00();
    }

    v13 = *(v0 + 424);

    v14 = sub_A7610();
    v15(v14);
    sub_8748(v13, &qword_1C57F8, &unk_172510);
    sub_A7668();
    sub_A72D4();

    sub_C9BC();

    return v16();
  }

  v175 = *(v0 + 544);
  v176 = *(v0 + 552);
  v183 = *(v0 + 617);
  v173 = *(v0 + 456);
  v170 = *(v0 + 472);
  v172 = *(v0 + 448);
  v185 = *(v0 + 408);
  v167 = *(v0 + 392);
  v169 = *(v0 + 384);
  v18 = *(v0 + 368);
  v166 = *(v0 + 376);
  v19 = *(v0 + 344);
  v20 = *(v0 + 328);
  v21 = *(v0 + 304);
  v189 = *(v0 + 272);
  v193 = *(v0 + 296);
  v174 = *(v0 + 264);
  v177 = *(v0 + 256);
  v195 = *(v0 + 216);
  v178 = *(v0 + 208);
  v22 = *(v0 + 200);
  v23 = *(v0 + 616);
  (*(v169 + 32))();
  sub_16E23C();

  v24 = sub_25948(v23);
  v26 = v25;
  v27 = sub_208C0(v23);
  v28 = (v18 + *(v19 + 20));
  *v28 = v24;
  v28[1] = v26;
  v29 = (v18 + *(v19 + 24));
  *v29 = v27;
  v29[1] = v30;
  [v22 maximum];
  v32 = v31;
  sub_A6F70(v22);
  sub_A78C0();
  v36 = sub_99F0C(v33, v34, v35, v32);

  [v22 minimum];
  v38 = v37;
  sub_A6F70(v22);
  sub_A78C0();
  v42 = sub_99F0C(v39, v40, v41, v38);

  [v22 mostRecent];
  v44 = v43;
  sub_A6F70(v22);
  sub_A78C0();
  v48 = sub_99F0C(v45, v46, v47, v44);

  [v22 total];
  v50 = v49;
  sub_A6F70(v22);
  sub_A78C0();
  v54 = sub_99F0C(v51, v52, v53, v50);

  v55 = *&v54;
  sub_16E23C();

  v56 = sub_16D5CC();
  sub_388E4();
  sub_214C(v57, v58, v59, v56);
  (*(v169 + 16))(v185, v167, v166);
  sub_388E4();
  sub_214C(v60, v61, v62, v166);
  sub_A71E8();
  sub_A70D8();
  sub_388E4();
  sub_214C(v63, v64, v65, v19);
  v161 = sub_16C11C();
  sub_8AB4();
  sub_214C(v66, v67, v68, v69);
  sub_8AB4();
  v182 = v56;
  sub_214C(v70, v71, v72, v56);
  sub_8AB4();
  sub_214C(v73, v74, v75, v19);
  if ((v170 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v76 = v170;
  }

  else
  {
    v76 = 0;
  }

  v77 = v170;
  if ((v183 & 1) == 0)
  {
    v77 = v76;
  }

  v162 = v77;
  v78 = v20 + v21[5];
  *v78 = v77;
  v199 = v183 & 1 | ((v170 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v78 + 8) = v199;
  if (v36 == 0.0)
  {
    v79 = 0;
  }

  else
  {
    v79 = *&v36;
  }

  v163 = v79;
  sub_A7364(v21[6]);
  if (v42 == 0.0)
  {
    v80 = 0;
  }

  else
  {
    v80 = *&v42;
  }

  v165 = v80;
  sub_A7364(v21[7]);
  if (v48 == 0.0)
  {
    v81 = 0;
  }

  else
  {
    v81 = *&v48;
  }

  v168 = v81;
  sub_A7364(v21[8]);
  if (v54 == 0.0)
  {
    v55 = 0;
  }

  v82 = v20 + v21[9];
  v83 = (v20 + v21[11]);
  v84 = (v20 + v21[12]);
  v164 = (v20 + v21[13]);
  v171 = (v20 + v21[14]);
  v85 = (v20 + v21[15]);
  v86 = (v20 + v21[16]);
  v184 = v21;
  v87 = (v20 + v21[17]);
  *v82 = v55;
  *(v82 + 8) = v54 == 0.0;
  *v86 = v172;
  v86[1] = v173;

  sub_A6FD0();
  sub_12A600(v185);
  sub_388E4();
  sub_214C(v88, v89, v90, v161);
  sub_5FFFC(v174, v20);
  *v87 = v175;
  v87[1] = v176;
  sub_A6FD0();
  *v85 = sub_12A7A4(v55, v54 == 0.0);
  v85[1] = v91;
  *v83 = sub_12A7A4(v162, v199);
  v83[1] = v92;
  *v84 = sub_12A7A4(v163, v36 == 0.0);
  v84[1] = v93;
  *v164 = sub_12A7A4(v165, v42 == 0.0);
  v164[1] = v94;
  v95 = sub_12A7A4(v168, v48 == 0.0);
  v97 = v96;
  sub_8748(v189, &dword_1C63F8, &qword_171800);
  sub_8748(v185, &qword_1C57F8, &unk_172510);
  sub_8748(v193, &qword_1C5800, &unk_16F510);
  *v171 = v95;
  v171[1] = v97;
  sub_A7458();
  sub_A7080();
  v98 = sub_16DBBC();
  *(v0 + 560) = v98;
  sub_8B48(v98, v0 + 80);
  v99 = *(v195 + 16);
  *(v0 + 568) = v99;
  sub_A7864();
  *(v0 + 576) = v100;
  v99(v177, v98, v178);
  sub_A7230();
  sub_A70D8();
  v101 = sub_16DBDC();
  v102 = sub_16E36C();
  v103 = sub_A763C(v102);
  v104 = *(v0 + 320);
  if (v103)
  {
    v190 = *(v0 + 256);
    v180 = *(v0 + 216);
    v186 = *(v0 + 208);
    sub_8BD8();
    v200 = sub_A7620();
    *v85 = 136315138;
    sub_A7230();
    sub_A70D8();
    v105 = sub_16E1EC();
    v107 = v106;
    sub_A7200();
    sub_A7130(v104, v108);
    sub_3AB7C(v105, v107, &v200);
    sub_A7888();

    *(v85 + 4) = v105;
    sub_A7438(&def_259DC, v109, v110, "Query snippet model is: %s");
    v111 = sub_A7540();
    sub_8A2C(v111);
    sub_8A2C(v85);

    v112 = *(v180 + 8);
    (v112)(v190, v186);
  }

  else
  {
    v113 = *(v0 + 256);
    v114 = *(v0 + 208);
    v115 = *(v0 + 216);

    sub_A7200();
    sub_A7130(v104, v116);
    v112 = *(v115 + 8);
    (v112)(v113, v114);
  }

  *(v0 + 584) = v112;
  v117 = *(v0 + 248);
  v118 = *(v0 + 208);
  sub_8B48(v98, v0 + 104);
  v99(v117, v98, v118);
  sub_A71E8();
  sub_C9C8();
  sub_A70D8();
  v119 = sub_16DBDC();
  v120 = sub_16E36C();
  v121 = sub_A763C(v120);
  v122 = *(v0 + 360);
  if (v121)
  {
    v191 = *(v0 + 248);
    v187 = *(v0 + 208);
    sub_8BD8();
    v200 = sub_A7620();
    *v112 = 136315138;
    sub_A71E8();
    sub_A70D8();
    v123 = sub_16E1EC();
    v125 = v124;
    sub_A71D0();
    sub_A7130(v122, v126);
    sub_3AB7C(v123, v125, &v200);
    sub_A7888();

    *(v112 + 4) = v123;
    sub_A7438(&def_259DC, v127, v128, "Query snippet header model is: %s");
    v129 = sub_A7540();
    sub_8A2C(v129);
    sub_8A2C(v112);

    v131 = v187;
    v130 = v191;
  }

  else
  {

    sub_A71D0();
    sub_A7130(v122, v132);
    v130 = sub_A7464();
  }

  (v112)(v130, v131);
  v133 = *(v0 + 240);
  v134 = *(v0 + 208);
  sub_8B48(v98, v0 + 128);
  v99(v133, v98, v134);

  v135 = sub_16DBDC();
  v136 = sub_16E36C();

  if (os_log_type_enabled(v135, v136))
  {
    v137 = *(v0 + 432);
    v196 = *(v0 + 240);
    v138 = *(v0 + 208);
    sub_8BD8();
    v200 = sub_A7620();
    *v112 = 136315138;
    *(v0 + 176) = v137;
    type metadata accessor for WellnessTime(0);

    v139 = sub_16E1EC();
    v141 = sub_3AB7C(v139, v140, &v200);

    *(v112 + 4) = v141;
    sub_A7438(&def_259DC, v142, v143, "Query snippet wellness time is: %s");
    sub_A74B4();
    sub_8A2C(v112);

    (v112)(v196, v138);
  }

  else
  {

    v144 = sub_A7464();
    (v112)(v144);
  }

  v145 = *(v0 + 336);
  v146 = v145 + v184[9];
  v197 = *v146;
  v194 = *(v146 + 8);
  v147 = v184[7];
  v148 = v145 + v184[8];
  v192 = *v148;
  v188 = *(v148 + 8);
  v181 = *(v145 + v147);
  v179 = *(v145 + v147 + 8);
  if (*(v145 + v184[16] + 8))
  {

    sub_16E23C();
    sub_388E4();
    sub_214C(v149, v150, v151, v182);
  }

  else
  {
    sub_8AB4();
    sub_214C(v152, v153, v154, v182);
  }

  v155 = *(v0 + 432);

  sub_16E23C();

  v156 = sub_38744();
  sub_214C(v156, v157, v158, v182);
  v159 = swift_task_alloc();
  *(v0 + 592) = v159;
  *v159 = v0;
  v159[1] = sub_A3BA0;
  v160 = *(v0 + 616);

  return sub_10E85C(v160, v155, v197, v194, v192, v188, v181, v179);
}

uint64_t sub_A3BA0()
{
  sub_C9EC();
  sub_38388();
  *v3 = v2;
  v4 = *v1;
  sub_38440();
  *v5 = v4;
  *(v7 + 600) = v6;

  if (v0)
  {
  }

  sub_A776C();
  sub_A7788();
  sub_8ACC();

  return _swift_task_switch(v8);
}

uint64_t sub_A40C4()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 16));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_A41A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_A76E8();
  sub_A7760();
  v25 = v24[75];
  v26 = v24[53];
  v27 = v24[46];
  v28 = v24[42];

  sub_A71D0();
  sub_A7130(v27, v29);
  v30 = sub_C9E0();
  v31(v30);
  sub_8748(v26, &qword_1C57F8, &unk_172510);
  sub_A7200();
  sub_A7130(v28, v32);
  sub_A72D4();
  v44 = v34;
  v45 = v33;
  v46 = v24[37];
  v47 = v24[36];
  v48 = v24[35];
  v49 = v24[34];
  v50 = v24[33];
  v51 = v24[32];
  v52 = v24[31];
  v53 = v24[30];
  v54 = v24[29];
  v55 = v24[28];

  sub_C9BC();
  sub_A755C();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, a22, a23, a24);
}

uint64_t sub_A45FC()
{
  sub_8A88();
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  *(v0 + 624) = v3;
  *(v0 + 192) = v4;
  v5 = sub_16DBEC();
  *(v0 + 216) = v5;
  sub_888C(v5);
  *(v0 + 224) = v6;
  *(v0 + 232) = sub_8C38();
  *(v0 + 240) = swift_task_alloc();
  *(v0 + 248) = swift_task_alloc();
  *(v0 + 256) = swift_task_alloc();
  *(v0 + 264) = swift_task_alloc();
  v7 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v7);
  *(v0 + 272) = sub_8BC0();
  v8 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v8);
  *(v0 + 280) = sub_8BC0();
  Model = type metadata accessor for TemperatureQueryModel(0);
  *(v0 + 288) = Model;
  sub_4348(Model);
  *(v0 + 296) = sub_8C38();
  *(v0 + 304) = swift_task_alloc();
  *(v0 + 312) = swift_task_alloc();
  *(v0 + 320) = swift_task_alloc();
  *(v0 + 328) = swift_task_alloc();
  v10 = type metadata accessor for SnippetHeaderModel(0);
  *(v0 + 336) = v10;
  sub_4348(v10);
  *(v0 + 344) = sub_8C38();
  *(v0 + 352) = swift_task_alloc();
  *(v0 + 360) = swift_task_alloc();
  v11 = sub_16D5CC();
  *(v0 + 368) = v11;
  sub_888C(v11);
  *(v0 + 376) = v12;
  *(v0 + 384) = sub_8BC0();
  v13 = sub_16BE9C();
  *(v0 + 392) = v13;
  sub_888C(v13);
  *(v0 + 400) = v14;
  *(v0 + 408) = sub_8BC0();
  v15 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v15);
  *(v0 + 416) = sub_8BC0();
  v16 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v16);
  *(v0 + 424) = sub_8C38();
  *(v0 + 432) = swift_task_alloc();
  *(v0 + 440) = swift_task_alloc();
  *(v0 + 448) = swift_task_alloc();
  *(v0 + 456) = swift_task_alloc();
  *(v0 + 464) = swift_task_alloc();
  v17 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v17);
  *(v0 + 472) = sub_8C38();
  *(v0 + 480) = swift_task_alloc();
  *(v0 + 488) = swift_task_alloc();
  v18 = sub_17960();

  return _swift_task_switch(v18);
}

uint64_t sub_A4930()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 208);
  sub_A79E8(v2);
  v4 = v3;
  *(v0 + 496) = v3;
  sub_A7C24(v2, v1);
  v5 = sub_A6F70(v2);
  sub_13A458(v5, v6);
  v8 = v7;

  if (v8)
  {
    sub_16E23C();

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v11 = *(v0 + 200);
  v10 = *(v0 + 208);
  v12 = *(v0 + 624);
  sub_214C(*(v0 + 464), v9, 1, *(v0 + 368));
  *(v0 + 504) = sub_A84A0(v2);
  *(v0 + 512) = sub_A697C(v12, v10);
  *(v0 + 625) = v13;
  v14 = [v11 start];
  if (v14)
  {
    sub_16BF3C();
  }

  v15 = *(v0 + 416);
  v16 = sub_16BF5C();
  sub_A7740(v16);
  sub_8748(v15, &qword_1C57E0, &unk_171C60);
  v17 = swift_task_alloc();
  *(v0 + 520) = v17;
  *v17 = v0;
  v18 = sub_A73D4(v17);

  return sub_6789C(v18, v14 == 0, v4);
}

uint64_t sub_A4AEC()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 528) = v3;
  *(v1 + 536) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_A4BD8()
{
  sub_8A88();
  sub_208C0(*(v0 + 624));
  sub_680F8();
  *(v0 + 544) = v1;
  v2 = swift_task_alloc();
  *(v0 + 552) = v2;
  *v2 = v0;
  sub_A73D4(v2);

  return sub_66E84();
}

uint64_t sub_A4C70()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;
  v2[70] = v6;
  v2[71] = v7;

  v8 = swift_task_alloc();
  v2[72] = v8;
  *v8 = v4;
  v9 = sub_A7290(v8);

  return sub_66A84(v9, v10);
}

uint64_t sub_A4DA4()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 584) = v3;
  *(v1 + 592) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_A4E90()
{
  if (!*(v0 + 568) || !*(v0 + 536))
  {

LABEL_9:
    v9 = sub_16DBBC();
    sub_A7704(v9);
    v10 = sub_3BD68();
    v11(v10);
    v12 = sub_16DBDC();
    v13 = sub_16E37C();
    if (sub_1BA1C(v13))
    {
      v14 = sub_1BA38();
      sub_1BA50(v14);
      sub_1B9D0(&def_259DC, v15, v16, "Couldn't create data or date dialog labels or deeplink");
      sub_1BA00();
    }

    v17 = *(v0 + 488);
    v18 = *(v0 + 464);
    v20 = *(v0 + 224);
    v19 = *(v0 + 232);
    v21 = *(v0 + 216);
    v22 = *(v0 + 192);

    (*(v20 + 8))(v19, v21);
    sub_8748(v18, &qword_1C5800, &unk_16F510);
    sub_8748(v17, &qword_1C57F8, &unk_172510);
    *v22 = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0;
    sub_A72B4();

    sub_C9BC();

    return v23();
  }

  v1 = *(v0 + 392);
  sub_A7028();
  v2 = sub_A76DC();
  if (sub_369C(v2, v3, v1) == 1)
  {
    v4 = *(v0 + 480);

    v5 = &qword_1C57F8;
    v6 = &unk_172510;
LABEL_8:
    sub_8748(v4, v5, v6);
    goto LABEL_9;
  }

  v7 = *(v0 + 456);
  v8 = *(v0 + 368);
  (*(*(v0 + 400) + 32))(*(v0 + 408), *(v0 + 480), *(v0 + 392));
  sub_38B40();
  sub_A7028();
  if (sub_369C(v7, 1, v8) == 1)
  {
    v4 = *(v0 + 456);
    (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));

    v5 = &qword_1C5800;
    v6 = &unk_16F510;
    goto LABEL_8;
  }

  v136 = *(v0 + 584);
  v137 = *(v0 + 592);
  v131 = *(v0 + 625);
  v132 = *(v0 + 512);
  v145 = *(v0 + 496);
  v146 = *(v0 + 472);
  v148 = *(v0 + 440);
  v150 = *(v0 + 448);
  v139 = *(v0 + 432);
  v140 = *(v0 + 424);
  v125 = *(v0 + 400);
  v128 = *(v0 + 392);
  v129 = *(v0 + 408);
  v152 = *(v0 + 376);
  v143 = *(v0 + 368);
  v144 = *(v0 + 384);
  v25 = *(v0 + 360);
  v26 = *(v0 + 336);
  v138 = *(v0 + 328);
  v27 = *(v0 + 320);
  v28 = *(v0 + 288);
  v141 = *(v0 + 280);
  v134 = *(v0 + 272);
  v29 = *(v0 + 208);
  v30 = *(v0 + 624);
  (*(v152 + 32))();
  sub_16E23C();

  v31 = sub_25948(v30);
  v33 = v32;
  v34 = sub_208C0(v30);
  v35 = (v25 + *(v26 + 20));
  *v35 = v31;
  v35[1] = v33;
  v36 = (v25 + *(v26 + 24));
  *v36 = v34;
  v36[1] = v37;
  [v29 maximum];
  v39 = v38;
  v40 = sub_A6F70(v29);
  v42 = sub_99F0C(v40, v41, v30, v39);

  [v29 minimum];
  v44 = v43;
  v45 = sub_A6F70(v29);
  v47 = sub_99F0C(v45, v46, v30, v44);

  [v29 mostRecent];
  v49 = v48;
  v50 = sub_A6F70(v29);
  v52 = sub_99F0C(v50, v51, v30, v49);

  v53 = sub_A6AD8(v30, v145, v29);
  v55 = v54;
  v120 = v56;
  v135 = *(v152 + 16);
  v135(v150, v144, v143, v53);
  sub_388E4();
  sub_214C(v57, v58, v59, v143);
  sub_16E23C();

  sub_388E4();
  sub_214C(v60, v61, v62, v143);
  (*(v125 + 16))(v146, v129, v128);
  sub_388E4();
  sub_214C(v63, v64, v65, v128);
  sub_A71E8();
  sub_A70D8();
  sub_388E4();
  sub_214C(v66, v67, v68, v26);
  v126 = sub_16C11C();
  sub_8AB4();
  sub_214C(v69, v70, v71, v72);
  sub_8AB4();
  sub_214C(v73, v74, v75, v143);
  v76 = v28[16];
  sub_8AB4();
  sub_214C(v77, v78, v79, v143);
  sub_8AB4();
  sub_214C(v80, v81, v82, v26);
  v83 = v132;
  if ((v132 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v84 = v132;
  }

  else
  {
    v84 = 0;
  }

  if ((v131 & 1) == 0)
  {
    v83 = v84;
  }

  v118 = v83;
  v85 = v27 + v28[5];
  *v85 = v83;
  v117 = v131 & 1 | ((v132 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v85 + 8) = v117;
  if (v42 == 0.0)
  {
    v86 = 0;
  }

  else
  {
    v86 = *&v42;
  }

  v119 = v86;
  sub_A7364(v28[6]);
  if (v47 == 0.0)
  {
    v87 = 0;
  }

  else
  {
    v87 = *&v47;
  }

  v127 = v87;
  sub_A7364(v28[7]);
  if (v52 == 0.0)
  {
    v88 = 0;
  }

  else
  {
    v88 = *&v52;
  }

  v130 = v88;
  sub_A7364(v28[8]);
  v89 = (v55 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((v55 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v90 = v55;
  }

  else
  {
    v90 = 0;
  }

  v91 = v120;
  if (v120)
  {
    v92 = v55;
  }

  else
  {
    v92 = v90;
  }

  v93 = v27 + v28[9];
  v94 = (v27 + v28[11]);
  v95 = (v27 + v28[12]);
  v121 = (v27 + v28[13]);
  v123 = (v27 + v28[14]);
  v124 = v92;
  v133 = (v27 + v28[15]);
  v96 = (v27 + v28[17]);
  *v93 = v92;
  v122 = (v91 | v89) & 1;
  *(v93 + 8) = v122;
  sub_A6FD0();
  sub_A6FD0();
  sub_D588C(v146);
  sub_388E4();
  sub_214C(v97, v98, v99, v126);
  sub_5FFFC(v134, v27);
  *v96 = v136;
  v96[1] = v137;
  sub_A6FD0();
  *v94 = sub_D5A34(v118, v117, v27 + v76, 1);
  v94[1] = v100;
  *v95 = sub_D5A34(v119, v42 == 0.0, v27 + v76, 1);
  v95[1] = v101;
  *v121 = sub_D5A34(v127, v47 == 0.0, v27 + v76, 0);
  v121[1] = v102;
  *v123 = sub_D5A34(v130, v52 == 0.0, v27 + v76, 1);
  v123[1] = v103;
  v104 = sub_D5A34(v124, v122, v27 + v76, 1);
  v106 = v105;
  sub_8748(v141, &dword_1C63F8, &qword_171800);
  sub_8748(v146, &qword_1C57F8, &unk_172510);
  sub_8748(v148, &qword_1C5800, &unk_16F510);
  sub_8748(v150, &qword_1C5800, &unk_16F510);
  *v133 = v104;
  v133[1] = v106;
  sub_A7458();
  sub_A7080();
  v107 = v28[7];
  v108 = v138 + v28[8];
  v151 = *v108;
  v149 = *(v108 + 8);
  v147 = *(v138 + v107);
  v142 = *(v138 + v107 + 8);
  (v135)(v139, v144, v143);
  sub_388E4();
  sub_214C(v109, v110, v111, v143);
  (v135)(v140, v144, v143);
  sub_388E4();
  sub_214C(v112, v113, v114, v143);

  v115 = swift_task_alloc();
  *(v0 + 600) = v115;
  *v115 = v0;
  v115[1] = sub_A5970;
  v116 = *(v0 + 624);

  return sub_10E85C(v116, v145, 0, 1, v151, v149, v147, v142);
}

uint64_t sub_A5970()
{
  sub_C9EC();
  sub_38388();
  *v3 = v2;
  v4 = *v1;
  sub_38440();
  *v5 = v4;
  *(v7 + 608) = v6;

  if (v0)
  {
  }

  sub_A776C();
  sub_A7788();
  sub_8ACC();

  return _swift_task_switch(v8);
}

uint64_t sub_A5B2C(uint64_t a1)
{
  v140 = v1;
  if (!*(v1 + 608))
  {
    v20 = *(v1 + 240);
    v21 = *(v1 + 216);
    v22 = sub_16DBBC();
    sub_A7598(v22);
    v23 = sub_3BD68();
    v24(v23);
    v25 = sub_16DBDC();
    v26 = sub_16E37C();
    os_log_type_enabled(v25, v26);
    sub_A7474();
    if (v27)
    {
      v125 = v3;
      v28 = *(v1 + 624);
      sub_8BD8();
      v139 = sub_A75B8();
      *v2 = 136315138;
      v29 = sub_208C0(v28);
      v118 = v20;
      v31 = sub_3AB7C(v29, v30, &v139);

      *(v2 + 4) = v31;
      sub_A794C(&def_259DC, v32, v33, "Couldn't create dialog for %s");
      v34 = sub_A7540();
      sub_8A2C(v34);
      sub_A76C0();

      v43 = sub_A7870(v35, v36, v37, v38, v39, v40, v41, v42, v111, v112, v113, v114, v115, v116, v118, v4, v2, v125, v127, v128);
      v44(v43);
      sub_A7218();
      sub_A7130(v133, v45);
      sub_A71D0();
      sub_A7130(v135, v46);
      v47 = sub_A78B4();
      v48(v47);
      (*(v21 + 8))(v126, v121);
      sub_8748(v123, &qword_1C5800, &unk_16F510);
      v49 = v119;
    }

    else
    {

      v103 = sub_A7870(v95, v96, v97, v98, v99, v100, v101, v102, v111, v112, v113, v114, v115, v116, v117, v120, v122, v124, v127, v128);
      v104(v103);
      sub_A7218();
      sub_A7130(v133, v105);
      sub_A71D0();
      sub_A7130(v135, v106);
      v107 = sub_A78B4();
      v108(v107);
      (*(v21 + 8))(v3, v4);
      sub_8748(v2, &qword_1C5800, &unk_16F510);
      v49 = v20;
    }

    sub_8748(v49, &qword_1C57F8, &unk_172510);
    sub_A77D4(*(v1 + 192));
    sub_A72B4();
    sub_A74E8();

    sub_C9BC();
    sub_A78CC();

    __asm { BRAA            X1, X16 }
  }

  v5 = *(v1 + 224);
  v6 = sub_16DBBC();
  sub_8B48(v6, v1 + 104);
  v7 = *(v5 + 16);
  v8 = sub_A77C4();
  v7(v8);
  sub_A7278();
  sub_C9C8();
  sub_A70D8();
  v9 = sub_16DBDC();
  v10 = sub_16E36C();
  v11 = sub_4B3A8(v10);
  v12 = *(v1 + 312);
  v134 = v7;
  if (v11)
  {
    v137 = *(v1 + 264);
    v129 = *(v1 + 224);
    v131 = *(v1 + 216);
    v13 = sub_8BD8();
    v139 = sub_CA30();
    *v13 = 136315138;
    sub_A7278();
    sub_A70D8();
    v14 = sub_16E1EC();
    v16 = v15;
    sub_A7218();
    sub_A7130(v12, v17);
    sub_3AB7C(v14, v16, &v139);
    sub_A7888();
    v7 = v134;

    *(v13 + 4) = v12;
    _os_log_impl(&def_259DC, v9, v10, "Query snippet model is: %s", v13, 0xCu);
    v18 = sub_A7540();
    sub_8A2C(v18);
    sub_8A2C(v13);

    v19 = v137;
    v138 = *(v129 + 8);
    v138(v19, v131);
  }

  else
  {

    sub_A7218();
    sub_A7130(v12, v50);
    v51 = sub_A77A4();
    v138 = v52;
    (v52)(v51);
  }

  sub_8B48(v6, v1 + 128);
  v53 = sub_A77C4();
  v7(v53);
  sub_A7278();
  sub_C9C8();
  sub_A70D8();
  v54 = sub_16DBDC();
  v55 = sub_16E36C();
  v56 = os_log_type_enabled(v54, v55);
  v57 = *(v1 + 296);
  if (v56)
  {
    v58 = *(v1 + 288);
    v130 = *(v1 + 216);
    v132 = *(v1 + 256);
    v59 = sub_8BD8();
    v60 = sub_CA30();
    v139 = v60;
    *v59 = 136315138;
    v61 = (v57 + *(v58 + 60));
    v62 = v61[1];
    *(v1 + 176) = *v61;
    *(v1 + 184) = v62;

    sub_2440(&qword_1C69C8, &qword_174150);
    v63 = sub_16E3DC();
    v65 = v64;
    sub_A7218();
    sub_A7130(v57, v66);

    v67 = sub_3AB7C(v63, v65, &v139);

    *(v59 + 4) = v67;
    _os_log_impl(&def_259DC, v54, v55, "Basal temp is: %s", v59, 0xCu);
    sub_2D64(v60);
    v68 = v60;
    v7 = v134;
    sub_8A2C(v68);
    sub_8A2C(v59);

    v69 = v130;
    v70 = v132;
  }

  else
  {
    v71 = *(v1 + 256);
    v72 = *(v1 + 216);
    v65 = *(v1 + 224);

    sub_A7218();
    sub_A7130(v57, v73);
    v70 = v71;
    v69 = v72;
  }

  v138(v70, v69);
  sub_8B48(v6, v1 + 152);
  v74 = sub_A77C4();
  v7(v74);
  sub_A71E8();
  sub_C9C8();
  sub_A70D8();
  v75 = sub_16DBDC();
  v76 = sub_16E36C();
  v77 = sub_4B3A8(v76);
  v78 = *(v1 + 352);
  if (v77)
  {
    v136 = *(v1 + 248);
    v79 = *(v1 + 216);
    sub_8BD8();
    v139 = sub_A75B8();
    *v65 = 136315138;
    sub_A71E8();
    sub_A70D8();
    sub_A76B4();
    sub_16E1EC();
    sub_A7800();
    sub_A71D0();
    sub_A7130(v78, v80);
    v81 = sub_A76B4();
    sub_3AB7C(v81, v82, v83);
    sub_A7888();

    *(v65 + 4) = v78;
    sub_A7720(&def_259DC, v84, v85, "Query snippet header model is: %s");
    sub_A74B4();
    sub_A76C0();

    v86 = v136;
  }

  else
  {
    v87 = *(v1 + 248);
    v79 = *(v1 + 216);

    sub_A71D0();
    sub_A7130(v78, v88);
    v86 = v87;
  }

  v138(v86, v79);
  v89 = type metadata accessor for WellnessSnippets(0);
  v90 = sub_A79AC(v89);
  sub_A784C(v90);
  sub_A7278();
  sub_38B40();
  sub_A70D8();
  sub_8427C();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_179E8();
  *(v1 + 616) = v91;
  *v91 = v92;
  v91[1] = sub_A6328;
  sub_A7824();
  sub_A78CC();

  return sub_672C0();
}

uint64_t sub_A6328()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 16));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_A640C()
{
  v1 = v0[76];
  v14 = v0[58];
  v15 = v0[61];
  v2 = v0[50];
  v13 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[45];
  v8 = v0[41];

  sub_A7218();
  sub_A7130(v8, v9);
  sub_A71D0();
  sub_A7130(v7, v10);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v13, v3);
  sub_8748(v14, &qword_1C5800, &unk_16F510);
  sub_8748(v15, &qword_1C57F8, &unk_172510);
  sub_A72B4();

  sub_C9BC();

  return v11();
}

void sub_A6654(uint64_t a1)
{
  v5 = *(v1 + 240);
  v6 = *(v1 + 216);
  v7 = sub_16DBBC();
  sub_A7598(v7);
  v8 = sub_3BD68();
  v9(v8);
  v10 = sub_16DBDC();
  v11 = sub_16E37C();
  os_log_type_enabled(v10, v11);
  sub_A7474();
  if (v12)
  {
    v65 = v3;
    v13 = *(v1 + 624);
    sub_8BD8();
    v71 = sub_A75B8();
    *v2 = 136315138;
    v14 = sub_208C0(v13);
    v58 = v5;
    v16 = sub_3AB7C(v14, v15, &v71);

    *(v2 + 4) = v16;
    sub_A794C(&def_259DC, v17, v18, "Couldn't create dialog for %s");
    v19 = sub_A7540();
    sub_8A2C(v19);
    sub_A76C0();

    v28 = sub_A7870(v20, v21, v22, v23, v24, v25, v26, v27, v51, v52, v53, v54, v55, v56, v58, v4, v2, v65, v67, v68);
    v29(v28);
    sub_A7218();
    sub_A7130(v69, v30);
    sub_A71D0();
    sub_A7130(v70, v31);
    v32 = sub_A78B4();
    v33(v32);
    (*(v6 + 8))(v66, v61);
    sub_8748(v63, &qword_1C5800, &unk_16F510);
    v34 = v59;
  }

  else
  {

    v43 = sub_A7870(v35, v36, v37, v38, v39, v40, v41, v42, v51, v52, v53, v54, v55, v56, v57, v60, v62, v64, v67, v68);
    v44(v43);
    sub_A7218();
    sub_A7130(v69, v45);
    sub_A71D0();
    sub_A7130(v70, v46);
    v47 = sub_A78B4();
    v48(v47);
    (*(v6 + 8))(v3, v4);
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    v34 = v5;
  }

  sub_8748(v34, &qword_1C57F8, &unk_172510);
  sub_A77D4(*(v1 + 192));
  sub_A72B4();
  sub_A74E8();

  sub_C9BC();
  sub_A78CC();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_A697C(uint64_t a1, void *a2)
{
  if (sub_208C0(a1) == 0xD000000000000027 && 0x800000000017C350 == v4)
  {
  }

  else
  {
    v6 = sub_16E6BC();

    if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  [a2 minimum];
  v8 = v7;
  [a2 maximum];
  if (v8 != v9)
  {
LABEL_14:
    [a2 average];
    v14 = v13;
    v15 = sub_A6F70(a2);
    v17 = sub_99F0C(v15, v16, a1, v14);

    return *&v17;
  }

LABEL_9:
  if (sub_208C0(a1) == 0xD000000000000027 && 0x800000000017C350 == v10)
  {
  }

  else
  {
    v12 = sub_16E6BC();

    if ((v12 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  return 0;
}

double sub_A6AD8(char a1, uint64_t a2, void *a3)
{
  if (sub_208C0(a1) == 0xD00000000000002CLL && 0x800000000017C130 == v4)
  {
  }

  else
  {
    v6 = sub_16E6BC();

    if ((v6 & 1) == 0)
    {
      return result;
    }
  }

  v8 = sub_15EE1C();
  if (v8 >= 3u)
  {
    v9 = &selRef_average;
    if ((sub_15C380(v8) & 1) == 0)
    {
      [a3 average];
      if (v10 <= 0.0)
      {
        v9 = &selRef_mostRecent;
      }
    }
  }

  else
  {
    v9 = &selRef_average;
  }

  [a3 *v9];
  return result;
}

uint64_t sub_A6BC4(uint64_t a1, char a2, uint64_t a3)
{
  v24 = a1;
  v4 = sub_16DBEC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = sub_16D5CC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    sub_A7028();
    if (sub_369C(v13, 1, v14) != 1)
    {
      (*(v15 + 32))(v17, v13, v14);
      sub_16D2DC();
      swift_allocObject();
      sub_16D2CC();
      sub_16D40C();

      (*(v15 + 16))(v11, v17, v14);
      sub_214C(v11, 0, 1, v14);
      sub_16D3FC();

      sub_8748(v11, &qword_1C5800, &unk_16F510);
      v22 = sub_16D3EC();

      (*(v15 + 8))(v17, v14);
      return v22;
    }

    sub_8748(v13, &qword_1C5800, &unk_16F510);
  }

  v18 = sub_16DBBC();
  swift_beginAccess();
  (*(v5 + 16))(v7, v18, v4);
  v19 = sub_16DBDC();
  v20 = sub_16E36C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&def_259DC, v19, v20, "GenerateQueryResponseOutput: In getDialogPersonHeight value or unit is nil", v21, 2u);
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

uint64_t sub_A6F70(void *a1)
{
  v1 = [a1 unit];
  if (v1)
  {
    v2 = v1;
    sub_16E1BC();
  }

  return sub_8B9C();
}

uint64_t sub_A6FD0()
{
  sub_A78A8();
  sub_2440(v1, v2);
  sub_8B38();
  v3 = sub_8B9C();
  v4(v3);
  return v0;
}

uint64_t sub_A7028()
{
  sub_A78A8();
  sub_2440(v1, v2);
  sub_8B38();
  v3 = sub_8B9C();
  v4(v3);
  return v0;
}

uint64_t sub_A7080()
{
  sub_A78A8();
  v1(0);
  sub_8B38();
  v2 = sub_8B9C();
  v3(v2);
  return v0;
}

uint64_t sub_A70D8()
{
  sub_A78A8();
  v1(0);
  sub_8B38();
  v2 = sub_8B9C();
  v3(v2);
  return v0;
}

uint64_t sub_A7130(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_8B38();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_A7188()
{
  result = qword_1C6C70;
  if (!qword_1C6C70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C6C70);
  }

  return result;
}

void sub_A7364(uint64_t a1@<X8>)
{
  v4 = v3 + a1;
  *v4 = v2;
  *(v4 + 8) = v1;
}

uint64_t sub_A7374()
{
  *(v1 - 80) = *(v0 + 216);
}

uint64_t sub_A73B4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_A7404()
{
}

void sub_A7438(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_A7474()
{
  v2 = v0[48];
  *(v1 - 96) = v0[46];
  *(v1 - 88) = v2;
  *(v1 - 104) = v0[45];
}

uint64_t sub_A74B4()
{
  sub_2D64(v0);
}

uint64_t sub_A74E8()
{
  v3 = v0[30];
  *(v1 - 104) = v0[31];
  *(v1 - 96) = v3;
  *(v1 - 88) = v0[29];
}

uint64_t sub_A7578()
{

  return swift_beginAccess();
}

uint64_t sub_A7598(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_A75B8()
{

  return swift_slowAlloc();
}

uint64_t sub_A75D4()
{
}

uint64_t sub_A7620()
{

  return swift_slowAlloc();
}

BOOL sub_A763C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

double sub_A7658()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0;
  return result;
}

double sub_A7668()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0;
  return result;
}

uint64_t sub_A76C0()
{
}

uint64_t sub_A7704(uint64_t a1)
{

  return swift_beginAccess();
}

void sub_A7720(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_A7740(uint64_t a1)
{

  return sub_214C(v2, v1, 1, a1);
}

uint64_t sub_A776C()
{

  return sub_8748(v1, v0, v2);
}

uint64_t sub_A7788()
{

  return sub_8748(v1, v0, v2);
}

double sub_A77D4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_A7830()
{

  return sub_16E23C();
}

uint64_t *sub_A784C(uint64_t a1)
{
  *(v1 + 48) = a1;

  return sub_9910((v1 + 16));
}

uint64_t sub_A792C()
{

  return sub_8748(v2 + 56, v1, v0);
}

void sub_A794C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t sub_A796C()
{

  return sub_A7028();
}

void sub_A798C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 0xCu);
}

unint64_t sub_A79AC(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_17548();
}

void sub_A79E8(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1C57E0, &unk_171C60);
  v6 = sub_4348(v5);
  __chkstk_darwin(v6);
  sub_887C();
  v9 = v7 - v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v31 - v12;
  __chkstk_darwin(v11);
  sub_A9074();
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v17 = [v3 start];
  if (v17)
  {
    v18 = v17;
    sub_16BF3C();

    v19 = sub_16BF5C();
    v20 = 0;
  }

  else
  {
    v19 = sub_16BF5C();
    v20 = 1;
  }

  v21 = 1;
  sub_214C(v16, v20, 1, v19);
  v22 = [v3 end];
  if (v22)
  {
    v23 = v22;
    sub_16BF3C();

    v21 = 0;
  }

  v24 = sub_16BF5C();
  v25 = 1;
  sub_214C(v2, v21, 1, v24);
  v26 = [a1 sampleStartDate];
  if (v26)
  {
    v27 = v26;
    sub_16BF3C();

    v25 = 0;
  }

  v28 = 1;
  sub_214C(v13, v25, 1, v24);
  v29 = [a1 sampleEndDate];
  if (v29)
  {
    v30 = v29;
    sub_16BF3C();

    v28 = 0;
  }

  sub_214C(v9, v28, 1, v24);
  type metadata accessor for WellnessTime(0);
  sub_15BF80();
}

uint64_t sub_A7C24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v7 = sub_2440(&qword_1C57E0, &unk_171C60);
  v8 = sub_4348(v7);
  __chkstk_darwin(v8);
  v59 = &v55 - v9;
  sub_16BF5C();
  sub_42F0();
  v63 = v11;
  v64 = v10;
  __chkstk_darwin(v10);
  sub_887C();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  sub_A90BC();
  __chkstk_darwin(v16);
  sub_76B1C();
  __chkstk_darwin(v17);
  sub_8AC0();
  v62 = v18;
  sub_89B4();
  v20 = __chkstk_darwin(v19);
  v22 = &v55 - v21;
  __chkstk_darwin(v20);
  v24 = &v55 - v23;
  v25 = sub_2440(&qword_1C57F8, &unk_172510);
  v26 = sub_4348(v25);
  __chkstk_darwin(v26);
  v61 = &v55 - v27;
  v28 = sub_2440(&qword_1C5690, &dword_16F320);
  v29 = sub_4348(v28);
  __chkstk_darwin(v29);
  sub_887C();
  sub_A9074();
  __chkstk_darwin(v30);
  v32 = &v55 - v31;
  v33 = sub_16BD9C();
  sub_214C(v32, 1, 1, v33);
  v34 = sub_A8F94(v2);
  if (!v35 || (v36 = sub_21AE8(v34, v35), v36 == 205))
  {
    sub_C878(v32, &qword_1C5690, &dword_16F320);
    v37 = sub_16BE9C();
    return sub_214C(a2, 1, 1, v37);
  }

  v57 = v36;
  v58 = a2;
  v39 = [v2 start];
  if (v39)
  {
    v40 = v39;
    sub_16BF3C();

    v56 = *(v63 + 32);
    v56(v24, v22, v64);
    v41 = [v2 end];
    if (v41)
    {
      v42 = v41;
      sub_16BF3C();

      v56(v62, v4, v64);
      v43 = v63;
      v44 = v64;
      v45 = *(v63 + 16);
      v45(v5, v24, v64);
      v45(v14, v62, v44);
      sub_16BD5C();
      sub_C878(v32, &qword_1C5690, &dword_16F320);
      sub_214C(v3, 0, 1, v33);
      sub_A8FF8(v3, v32, &qword_1C5690, &dword_16F320);
      v46 = v61;
      sub_12093C(v57, v32, v61);
      v47 = *(v43 + 8);
      v47(v62, v44);
      v47(v24, v44);
      sub_C878(v32, &qword_1C5690, &dword_16F320);
      goto LABEL_12;
    }

    (*(v63 + 8))(v24, v64);
  }

  if (v60)
  {
    v48 = [v60 sampleEndDate];
    v49 = v58;
    v46 = v61;
    if (v48)
    {
      v50 = v48;
      v51 = v59;
      sub_16BF3C();

      v52 = 0;
      v53 = v64;
    }

    else
    {
      v52 = 1;
      v53 = v64;
      v51 = v59;
    }

    sub_214C(v51, v52, 1, v53);
    sub_1218BC(v57, v51, v46);
    sub_C878(v51, &qword_1C57E0, &unk_171C60);
    sub_C878(v32, &qword_1C5690, &dword_16F320);
    return sub_A8FF8(v46, v49, &qword_1C57F8, &unk_172510);
  }

  sub_C878(v32, &qword_1C5690, &dword_16F320);
  v54 = sub_16BE9C();
  v46 = v61;
  sub_214C(v61, 1, 1, v54);
LABEL_12:
  v49 = v58;
  return sub_A8FF8(v46, v49, &qword_1C57F8, &unk_172510);
}

uint64_t sub_A8154(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  v3 = sub_16D5CC();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_A8218);
}

uint64_t sub_A8218()
{
  v1 = sub_A6F70(*(v0 + 16));
  if (v2)
  {
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v5 = *(v0 + 32);
      v4 = *(v0 + 40);
      v6 = *(v0 + 24);
      sub_16E23C();

      v7 = sub_16D5BC();
      v9 = v8;
      (*(v5 + 8))(v4, v6);

      v10 = *(v0 + 8);

      return v10(v7, v9);
    }
  }

  v12 = swift_task_alloc();
  *(v0 + 48) = v12;
  *v12 = v0;
  v12[1] = sub_A8378;
  v13 = *(v0 + 56);

  return sub_A8D40(v13);
}

uint64_t sub_A8378(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_A84A0(void *a1)
{
  v5 = v1;
  v90 = sub_16BF5C();
  sub_42F0();
  v92 = v7;
  __chkstk_darwin(v8);
  v91 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2440(&qword_1C57E0, &unk_171C60);
  v11 = sub_4348(v10);
  __chkstk_darwin(v11);
  sub_887C();
  v14 = v12 - v13;
  v16 = __chkstk_darwin(v15);
  v18 = &v85 - v17;
  __chkstk_darwin(v16);
  sub_76B1C();
  v20 = __chkstk_darwin(v19);
  v22 = &v85 - v21;
  __chkstk_darwin(v20);
  sub_8AC0();
  v86 = v23;
  sub_89B4();
  __chkstk_darwin(v24);
  sub_8AC0();
  v87 = v25;
  sub_89B4();
  __chkstk_darwin(v26);
  sub_8AC0();
  v88 = v27;
  sub_89B4();
  __chkstk_darwin(v28);
  sub_8AC0();
  v89 = v29;
  sub_89B4();
  __chkstk_darwin(v30);
  sub_A9074();
  v32 = __chkstk_darwin(v31);
  v34 = &v85 - v33;
  __chkstk_darwin(v32);
  sub_A90BC();
  __chkstk_darwin(v35);
  v37 = &v85 - v36;
  if (!a1)
  {
    sub_16D38C();
    swift_allocObject();
    sub_16D37C();
    v43 = v5;
    v44 = [v5 start];
    if (v44)
    {
      v45 = v44;
      sub_16BF3C();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    v72 = v90;
    sub_214C(v3, v46, 1, v90);
    sub_A8FF8(v3, v22, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v22, 1, v72))
    {
      sub_C878(v22, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      v73 = sub_A90D0();
      v74(v73, v22, v72);
      sub_C878(v22, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      v75 = sub_C9C8();
      v76(v75);
    }

    sub_16D35C();

    v77 = [v43 end];
    if (v77)
    {
      v78 = v77;
      sub_16BF3C();

      v79 = 0;
    }

    else
    {
      v79 = 1;
    }

    sub_214C(v14, v79, 1, v72);
    sub_A8FF8(v14, v18, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v18, 1, v72))
    {
      sub_C878(v18, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      v80 = sub_A90D0();
      v81(v80, v18, v72);
      sub_C878(v18, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      v82 = sub_C9C8();
      v83(v82);
    }

    sub_16D34C();

    v71 = sub_16D36C();
    goto LABEL_38;
  }

  sub_16D38C();
  swift_allocObject();
  v38 = a1;
  sub_16D37C();
  v39 = [v5 start];
  v40 = v5;
  if (v39)
  {
    v41 = v39;
    sub_16BF3C();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v47 = v90;
  sub_214C(v4, v42, 1, v90);
  sub_A8FF8(v4, v37, &qword_1C57E0, &unk_171C60);
  if (!sub_369C(v37, 1, v47))
  {
    v51 = sub_A9060();
    v52(v51, v37, v47);
    v53 = v37;
LABEL_15:
    sub_C878(v53, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v56 = sub_C9C8();
    v57(v56);
    goto LABEL_16;
  }

  sub_C878(v37, &qword_1C57E0, &unk_171C60);
  v48 = [v38 sampleEndDate];
  if (v48)
  {
    v49 = v48;
    sub_16BF3C();

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  sub_A9084(v48, v50);
  sub_A8FF8(v2, v34, &qword_1C57E0, &unk_171C60);
  if (!sub_A90A0())
  {
    v54 = sub_A9060();
    v55(v54, v34, v47);
    v53 = v34;
    goto LABEL_15;
  }

  sub_C878(v34, &qword_1C57E0, &unk_171C60);
LABEL_16:
  sub_16D35C();

  v58 = [v40 end];
  v59 = v88;
  v60 = v89;
  if (v58)
  {
    v61 = v58;
    sub_16BF3C();

    v62 = 0;
  }

  else
  {
    v62 = 1;
  }

  sub_A9084(v58, v62);
  sub_A8FF8(v59, v60, &qword_1C57E0, &unk_171C60);
  if (sub_A90A0() && ((sub_C878(v60, &qword_1C57E0, &unk_171C60), (v63 = [v38 sampleEndDate]) == 0) ? (v66 = 1, v65 = v86) : (v64 = v63, v65 = v86, sub_16BF3C(), v64, v66 = 0), v60 = v87, sub_A9084(v63, v66), sub_A8FF8(v65, v60, &qword_1C57E0, &unk_171C60), sub_A90A0()))
  {
    sub_C878(v60, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v67 = sub_A9060();
    v68(v67, v60, v47);
    sub_C878(v60, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v69 = sub_C9C8();
    v70(v69);
  }

  sub_16D34C();

  v71 = sub_16D36C();

LABEL_38:

  return v71;
}

uint64_t sub_A8C8C(uint64_t a1)
{
  if (a1 == 193 || a1 == 159)
  {
    [v1 minimum];
    v4 = v3;
    [v1 maximum];
    if (v4 == v5)
    {
      return 0;
    }
  }

  [v1 average];
  v8 = v7;
  v9 = sub_A6F70(v1);
  v11 = sub_99F0C(v9, v10, a1, v8);

  return *&v11;
}

uint64_t sub_A8D40(unsigned __int8 a1)
{
  v2 = a1;
  if (a1 == 147 || a1 == 150)
  {
    v4 = 0xE200000000000000;
    v3 = 26989;
    goto LABEL_11;
  }

  v3 = 5066818;
  v4 = 0xE300000000000000;
  if (v2 == 159)
  {
LABEL_11:
    v7 = *(v1 + 8);

    return v7(v3, v4);
  }

  if (v2 != 174)
  {
    v5 = 0xE000000000000000;
    v6 = 0x7370657473;
    if (v2 == 184)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v6 = 0;
    }

    if (v2 != 193)
    {
      v3 = v6;
      v4 = v5;
    }

    goto LABEL_11;
  }

  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_A8E88;

  return sub_67BD8();
}

uint64_t sub_A8E88(uint64_t a1, unint64_t a2)
{
  v5 = *v2;

  if (a2)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v8 = *(v5 + 8);

  return v8(v6, v7);
}

uint64_t sub_A8F94(void *a1)
{
  v1 = [a1 quantityIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16E1BC();

  return v3;
}

uint64_t sub_A8FF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2440(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_A9084(uint64_t a1, uint64_t a2)
{

  return sub_214C(v3, a2, 1, v2);
}

uint64_t sub_A90A0()
{

  return sub_369C(v1, 1, v0);
}

uint64_t sub_A90E4(uint64_t a1, void *a2, uint64_t a3)
{
  v85 = a3;
  v86 = a1;
  v87 = a2;
  v3 = sub_16D63C();
  __chkstk_darwin(v3 - 8);
  v82 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_16BF5C();
  sub_42F0();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_16DBEC();
  sub_42F0();
  v12 = v11;
  v14 = __chkstk_darwin(v13);
  v83 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v80 = &v80 - v17;
  __chkstk_darwin(v16);
  v19 = &v80 - v18;
  v20 = sub_16DBBC();
  swift_beginAccess();
  v21 = *(v12 + 16);
  v88 = v10;
  v81 = v21;
  v21(v19, v20, v10);
  v22 = sub_16DBDC();
  v23 = sub_16E36C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&def_259DC, v22, v23, "Getting Med Logging Flow", v24, 2u);
  }

  v25 = *(v12 + 8);
  v25(v19, v88);
  sub_16BF4C();
  v26 = v86;
  if (isLoggingTimeframeToday(from:todayDate:)(v86, v9))
  {
    (*(v6 + 8))(v9, v84);
    v27 = v26;
  }

  else
  {
    v28 = isLoggingTimeframeNone(from:)();
    (*(v6 + 8))(v9, v84);
    v27 = v26;
    if ((v28 & 1) == 0)
    {
      sub_8284(v85, &v101[1]);
      sub_8388(v87, v102);
      v62 = sub_16C58C();
      swift_allocObject();
      v63 = sub_16C57C();
      v106 = &protocol witness table for ResponseFactory;
      v105 = v62;
      v104 = v63;
      type metadata accessor for WellnessLoggingCATsSimple(0);
      sub_16D62C();
      sub_93198();
      v64 = sub_16D5FC();
      type metadata accessor for WellnessCATs(0);
      sub_16D62C();
      sub_93198();
      v65 = sub_16D58C();
      v66 = sub_16D8AC();
      sub_A9DC8(v66);
      v67 = sub_16D89C();
      v111 = &protocol witness table for MedStorageHelper;
      v110 = v66;
      v109 = v67;
      v101[0] = v27;
      v103 = 1;
      v107 = v64;
      v108 = v65;
      v68 = qword_1C55F0;
      goto LABEL_20;
    }
  }

  v29 = v87[3];
  v30 = v87[4];
  sub_2D20(v87, v29);
  (*(v30 + 8))(v101, v29, v30);
  isSpecificMedRequest(from:deviceState:)(v27, v101);
  v32 = v31;
  sub_2D64(v101);
  if (v32)
  {
    hasDateEdit(from:)(v27, v33, v34);
    v36 = v35;
    v37 = hasTimeEdit(from:)();
    v38 = v37;
    if ((v36 & 1) == 0 && !v37)
    {
      swift_beginAccess();
      v39 = v80;
      v81(v80, v20, v88);
      v40 = sub_16DBDC();
      v41 = sub_16E36C();
      if (os_log_type_enabled(v40, v41))
      {
        *swift_slowAlloc() = 0;
        sub_456DC(&def_259DC, v42, v43, "Got specific med request without edits, returning SpecificMedLoggingFlow.");
      }

      v25(v39, v88);
      sub_8388(v87, v112);
      sub_8284(v85, v101);
      v44 = sub_16C58C();
      v98 = 0u;
      v99 = 0u;
      v100 = 0;
      swift_allocObject();
      v45 = sub_16C57C();
      type metadata accessor for WellnessLoggingCATsSimple(0);
      sub_16D62C();
      sub_93198();
      v46 = sub_16D5FC();
      type metadata accessor for WellnessCATs(0);
      sub_16D62C();
      sub_93198();
      v47 = sub_16D58C();
      v48 = sub_16DB6C();
      v95 = 0u;
      v96 = 0u;
      v97 = 0;
      v49 = objc_allocWithZone(v48);
      v50 = sub_16DB5C();
      v51 = sub_16D8AC();
      v95 = 0u;
      v96 = 0u;
      v97 = 0;
      v52 = objc_allocWithZone(v51);
      v53 = sub_16D89C();
      type metadata accessor for SpecificMedLoggingFlow();
      v54 = swift_allocObject();
      *(&v96 + 1) = v44;
      v97 = &protocol witness table for ResponseFactory;
      *&v95 = v45;
      v93 = v51;
      v94 = &protocol witness table for MedStorageHelper;
      *&v92 = v53;
      *(v54 + 16) = v86;
      sub_8388(v112, v54 + 24);
      sub_8284(v101, v54 + 64);
      *(v54 + 224) = 0u;
      *(v54 + 240) = 0u;
      *(v54 + 256) = 0u;
      *(v54 + 272) = 0u;
      *(v54 + 288) = -64;
      sub_17464(&v95, v54 + 296);
      *(v54 + 336) = v46;
      *(v54 + 344) = v47;
      *(v54 + 352) = v50;
      sub_17464(&v92, v54 + 400);
      if (*(&v99 + 1))
      {

        sub_C938(v101);
        sub_2D64(v112);
        sub_17464(&v98, &v89);
      }

      else
      {
        v90 = &type metadata for MedsCorrectionsFlowProvider;
        v91 = &off_1BB2F8;
        v77 = swift_allocObject();
        *&v89 = v77;
        sub_17464(v112, v77 + 16);
        memcpy((v77 + 56), v101, 0xA0uLL);
        v78 = *(&v99 + 1);

        if (v78)
        {
          sub_A9CF8(&v98);
        }
      }

      sub_17464(&v89, v54 + 360);
      v101[0] = v54;
      if (qword_1C55F0 != -1)
      {
        sub_A9DA8(&qword_1C55F0);
      }

      *&v112[0] = sub_16C1AC();
      sub_16C29C();
      sub_A9D60(&qword_1C67C8, type metadata accessor for SpecificMedLoggingFlow, &unk_1766A8);
      v76 = sub_16C35C();

LABEL_28:
      v101[0] = v76;
      sub_2440(&qword_1C8AF0, &qword_1744A8);
      sub_92508();
      v61 = sub_16C32C();
      goto LABEL_29;
    }

    sub_8284(v85, &v101[1]);
    sub_8388(v87, v102);
    v69 = v27;
    v70 = sub_16C58C();
    swift_allocObject();
    v71 = sub_16C57C();
    v106 = &protocol witness table for ResponseFactory;
    v105 = v70;
    v104 = v71;
    type metadata accessor for WellnessLoggingCATsSimple(0);
    sub_16D62C();
    v72 = sub_16D5FC();
    type metadata accessor for WellnessCATs(0);
    sub_16D62C();
    v73 = sub_16D58C();
    v74 = sub_16D8AC();
    sub_A9DC8(v74);
    v75 = sub_16D89C();
    v111 = &protocol witness table for MedStorageHelper;
    v110 = v74;
    v109 = v75;
    v101[0] = v69;
    LOBYTE(v103) = v36 & 1;
    HIBYTE(v103) = v38;
    v107 = v72;
    v108 = v73;
    v68 = qword_1C55F0;
LABEL_20:

    if (v68 != -1)
    {
      sub_A9DA8(&qword_1C55F0);
    }

    *&v112[0] = sub_16C1AC();
    sub_16C29C();
    sub_87F90();
    v76 = sub_16C35C();

    sub_A9C4C(v101);
    goto LABEL_28;
  }

  swift_beginAccess();
  v81(v83, v20, v88);
  v55 = sub_16DBDC();
  v56 = sub_16E36C();
  if (os_log_type_enabled(v55, v56))
  {
    *swift_slowAlloc() = 0;
    sub_456DC(&def_259DC, v57, v58, "Got generic med request, returning GenericMedLoggingFlow.");
  }

  v25(v83, v88);
  sub_8388(v87, &v98);
  sub_8284(v85, v101);
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  memset(v112, 0, sizeof(v112));
  v113 = -64;
  type metadata accessor for GenericMedLoggingFlow();
  swift_allocObject();

  v101[0] = sub_25AE8(v59, &v98, v101, v112, &v95);
  if (qword_1C55F0 != -1)
  {
    sub_A9DA8(&qword_1C55F0);
  }

  *&v98 = sub_16C1AC();
  sub_16C29C();
  sub_A9D60(&qword_1C67D0, type metadata accessor for GenericMedLoggingFlow, &unk_171BC0);
  v60 = sub_16C35C();

  v101[0] = v60;
  sub_2440(&qword_1C8AF0, &qword_1744A8);
  sub_92508();
  v61 = sub_16C32C();
LABEL_29:

  return v61;
}

uint64_t sub_A9CA0()
{
  sub_2D64(v0 + 2);
  sub_2D64(v0 + 7);
  sub_2D64(v0 + 12);
  sub_2D64(v0 + 17);
  sub_2D64(v0 + 22);

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_A9CF8(uint64_t a1)
{
  v2 = sub_2440(&qword_1C67D8, &unk_176890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A9D60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A9DA8(uint64_t a1)
{

  return swift_once();
}

id sub_A9DC8(Class a1)
{
  *(v1 + 608) = 0u;
  *(v1 + 624) = 0u;
  *(v2 - 144) = 0;

  return objc_allocWithZone(a1);
}

uint64_t sub_A9DF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 280))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_A9E30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_A9EC8(uint64_t a1, uint64_t a2)
{
  sub_9218C();

  return sub_16C33C();
}

uint64_t sub_A9F1C(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  v3 = sub_16D7AC();
  v2[95] = v3;
  sub_4348(v3);
  v2[96] = sub_8BC0();
  v4 = sub_16D6BC();
  v2[97] = v4;
  sub_4348(v4);
  v2[98] = sub_8BC0();
  v5 = sub_2440(&qword_1C8E38, &qword_174C48);
  sub_4348(v5);
  v2[99] = sub_8BC0();
  v6 = sub_2440(&qword_1C8E40, &unk_174C50);
  sub_4348(v6);
  v2[100] = sub_8BC0();
  v7 = sub_16BE9C();
  v2[101] = v7;
  v2[102] = *(v7 - 8);
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v8 = sub_16DBEC();
  v2[105] = v8;
  v2[106] = *(v8 - 8);
  v2[107] = swift_task_alloc();
  v2[108] = swift_task_alloc();
  v9 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v9);
  v2[109] = sub_8BC0();
  v10 = sub_16D63C();
  sub_4348(v10);
  v2[110] = sub_8BC0();
  v11 = sub_2440(&qword_1C6850, &unk_172440);
  sub_4348(v11);
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();

  return _swift_task_switch(sub_AA180);
}

uint64_t sub_AA180()
{
  v71 = v0;
  v1 = *(v0 + 752);
  sub_AAC04();
  v2 = sub_17970();
  v3(v2);
  sub_2D20((v0 + 528), *(v0 + 552));
  sub_17970();
  if (sub_16C40C())
  {
    sub_2D64((v0 + 528));
    goto LABEL_4;
  }

  sub_AAC04();
  v4 = sub_17970();
  v5(v4);
  sub_2D20((v0 + 568), *(v0 + 592));
  sub_17970();
  v6 = sub_16C3FC();
  sub_2D64((v0 + 568));
  sub_2D64((v0 + 528));
  if (v6)
  {
LABEL_4:
    if ((sub_16D67C() & 1) == 0)
    {
      sub_8388((v1 + 30), v0 + 432);
      v42 = sub_16C58C();
      swift_allocObject();
      v43 = sub_16C57C();
      *(v0 + 496) = v42;
      *(v0 + 504) = &protocol witness table for ResponseFactory;
      *(v0 + 472) = v43;
      type metadata accessor for WellnessCATsSimple(0);
      sub_16D62C();
      v44 = sub_16D5FC();
      type metadata accessor for WellnessCATs(0);
      sub_16D62C();
      v45 = sub_16D58C();
      *(v0 + 512) = v44;
      *(v0 + 520) = v45;
      sub_89600();
      sub_16C4EC();
      sub_9256C(v0 + 432);
      goto LABEL_17;
    }

LABEL_5:
    v7 = *(v0 + 872);
    v8 = *(v0 + 848);
    v68 = *(v0 + 856);
    v69 = *(v0 + 840);
    v9 = *(v0 + 800);
    v10 = *(v0 + 792);
    v11 = *(v0 + 752);
    v12 = sub_2D20(v11 + 5, v11[8]);
    sub_15081C(*v12);
    sub_16E23C();
    v13 = sub_16D5CC();
    sub_214C(v7, 0, 1, v13);
    v14 = sub_16D66C();
    sub_1913C(v7, v14);

    sub_8748(v7, &qword_1C5800, &unk_16F510);
    v15 = v11[3];
    v16 = v11[4];
    sub_2D20(v11, v15);
    v17 = (*(v16 + 16))(v15, v16);
    v18 = &enum case for Route.logStateOfMind(_:);
    if (v17 != 1)
    {
      v18 = &enum case for Route.categoryRoom(_:);
    }

    v19 = *v18;
    v20 = sub_16D28C();
    sub_8B38();
    (*(v21 + 104))(v9, v19, v20);
    sub_214C(v9, 0, 1, v20);
    v22 = sub_16D27C();
    sub_214C(v10, 1, 1, v22);
    sub_16BE4C();
    sub_8748(v10, &qword_1C8E38, &qword_174C48);
    sub_8748(v9, &qword_1C8E40, &unk_174C50);
    v23 = sub_16DBBC();
    swift_beginAccess();
    (*(v8 + 16))(v68, v23, v69);
    v24 = sub_16DBDC();
    v25 = sub_16E36C();
    if (os_log_type_enabled(v24, v25))
    {
      *swift_slowAlloc() = 0;
      sub_1B9D0(&def_259DC, v26, v27, "Preparing SequenceFlow for Output and AppPunchOut.");
    }

    v28 = *(v0 + 896);
    v29 = *(v0 + 888);
    v30 = *(v0 + 856);
    v31 = *(v0 + 848);
    v32 = *(v0 + 840);
    v64 = *(v0 + 816);
    v65 = *(v0 + 824);
    v66 = *(v0 + 808);
    v67 = *(v0 + 832);
    v33 = *(v0 + 784);
    v34 = *(v0 + 768);

    (*(v31 + 8))(v30, v32);
    v35 = v1[33];
    v36 = v1[34];
    sub_2D20(v1 + 30, v35);
    (*(v36 + 16))(v70, v35, v36);
    sub_2440(&qword_1C5ED8, &unk_173090);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_172320;
    sub_3DE54(v28, v29);
    sub_8388((v1 + 30), v0 + 648);
    sub_16D6AC();
    sub_AABBC(&qword_1C6860, &type metadata accessor for OutputFlow, &protocol conformance descriptor for OutputFlow);
    v38 = sub_16C32C();
    sub_AAB64(v33, &type metadata accessor for OutputFlow);
    *(v37 + 32) = v38;
    sub_AAC04();
    v39 = sub_17970();
    v40(v39);
    (*(v64 + 16))(v65, v67, v66);
    sub_16D79C();
    sub_AABBC(&qword_1C6858, &type metadata accessor for AppPunchOutFlow, &protocol conformance descriptor for AppPunchOutFlow);
    v41 = sub_16C32C();
    sub_AAB64(v34, &type metadata accessor for AppPunchOutFlow);
    *(v37 + 40) = v41;
    sub_16D6DC();
    swift_allocObject();
    *(v0 + 736) = sub_16D6CC();
    sub_AABBC(&qword_1C6868, &type metadata accessor for SequenceFlow, &protocol conformance descriptor for SequenceFlow);
    sub_16C4EC();
    (*(v64 + 8))(v67, v66);
    sub_8748(v28, &qword_1C6850, &unk_172440);

    goto LABEL_17;
  }

  sub_AAC04();
  v46 = sub_17970();
  v47(v46);
  sub_2D20((v0 + 608), *(v0 + 632));
  sub_17970();
  v48 = sub_16C41C();
  sub_2D64((v0 + 608));
  if (v48)
  {
    if ((sub_16D67C() & 1) == 0)
    {
      v49 = *(v0 + 752);
      sub_8388((v1 + 30), v0 + 24);
      sub_8388(v49 + 40, v0 + 64);
      sub_8284(v49 + 80, v0 + 104);
      *(v0 + 16) = 132;
      *(v0 + 264) = 0;
      sub_3DF60();
      sub_16C4EC();
      sub_92798(v0 + 16);
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  v50 = *(v0 + 864);
  v51 = *(v0 + 848);
  v52 = *(v0 + 840);
  v53 = sub_16DBBC();
  swift_beginAccess();
  (*(v51 + 16))(v50, v53, v52);
  v54 = sub_16DBDC();
  v55 = sub_16E37C();
  if (os_log_type_enabled(v54, v55))
  {
    *swift_slowAlloc() = 0;
    sub_1B9D0(&def_259DC, v56, v57, "Could not create dialog on supported device, returning UnsupportedDeviceFlow");
  }

  v58 = *(v0 + 864);
  v59 = *(v0 + 848);
  v60 = *(v0 + 840);
  v61 = *(v0 + 752);

  (*(v59 + 8))(v58, v60);
  sub_8284(v61 + 80, v0 + 272);
  sub_92614();
  sub_16C4EC();
  sub_92668(v0 + 272);
LABEL_17:

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_AAACC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3BB78;

  return sub_A9F1C(a1);
}

uint64_t sub_AAB64(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_8B38();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_AABBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_AAC28(void *a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  sub_AAC80(a1, a2, a3);
  return v6;
}

uint64_t sub_AAC80(void *__src, __int128 *a2, __int128 *a3)
{
  memcpy((v3 + 16), __src, 0xA0uLL);
  sub_17464(a2, v3 + 176);
  sub_17464(a3, v3 + 216);
  return v3;
}

uint64_t sub_AACD8()
{
  v0 = sub_16DBEC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = sub_16DBBC();
  sub_8B48(v4, v10);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_16DBDC();
  v6 = sub_16E36C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_1BA38();
    *v7 = 0;
    _os_log_impl(&def_259DC, v5, v6, "In MedNameDisambiguationStrategy's actionForInput().", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return sub_16C47C();
}

uint64_t sub_AAE44()
{
  sub_8A88();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = type metadata accessor for WellnessDisambiguateMedScheduleParameters(0);
  v1[14] = sub_8BC0();
  v4 = sub_16C46C();
  v1[15] = v4;
  sub_888C(v4);
  v1[16] = v5;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v6 = sub_16C7BC();
  v1[19] = v6;
  sub_888C(v6);
  v1[20] = v7;
  v1[21] = sub_8BC0();
  v8 = sub_16DBEC();
  v1[22] = v8;
  sub_888C(v8);
  v1[23] = v9;
  v1[24] = sub_8BC0();
  sub_8ACC();

  return _swift_task_switch(v10);
}

uint64_t sub_AAFC4(uint64_t a1)
{
  v3 = v1[23];
  v2 = v1[24];
  v4 = v1[22];
  v5 = sub_16DBBC();
  sub_8B48(v5, (v1 + 7));
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_16DBDC();
  v7 = sub_16E36C();
  if (sub_1BA1C(v7))
  {
    *sub_1BA38() = 0;
    sub_1B9D0(&def_259DC, v8, v9, "MedScheduleDisambiguationStrategy: makePromptForDisambiguation");
    sub_1BA00();
  }

  v11 = v1[23];
  v10 = v1[24];
  v12 = v1[22];
  v14 = v1[17];
  v13 = v1[18];
  v16 = v1[15];
  v15 = v1[16];
  v17 = v1[14];
  v27 = v1[12];
  v28 = v1[13];

  (*(v11 + 8))(v10, v12);
  sub_16C44C();
  (*(v15 + 16))(v14, v13, v16);
  sub_16C75C();
  (*(v15 + 8))(v13, v16);
  sub_16C79C();
  sub_2440(&qword_1C8F68, qword_174DA0);
  v18 = sub_16C74C();
  v1[25] = v18;
  v19 = sub_ABE94(v18);
  v1[26] = v19;
  sub_2D20((v27 + 56), *(v27 + 80));
  v20 = v28[12];
  v21 = sub_16D5CC();

  sub_214C(v17 + v20, 1, 1, v21);
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v17 + 9) = 65792;
  *(v17 + 16) = v19;
  *(v17 + 24) = 0;
  *(v17 + 32) = 1;
  *(v17 + 40) = 0;
  *(v17 + 48) = 1;
  v22 = v17 + v28[13];
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v17 + v28[14];
  *v23 = 0;
  *(v23 + 8) = 1;
  *(v17 + 40) = *(v18 + 16);
  *(v17 + 48) = 0;

  v24 = sub_7A35C();
  v1[27] = v24;
  v29 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v25 = swift_task_alloc();
  v1[28] = v25;
  *v25 = v1;
  v25[1] = sub_AB2A0;

  return v29(0xD000000000000020, 0x800000000017E760, v24);
}

uint64_t sub_AB2A0()
{
  sub_8A88();
  v2 = *v1;
  sub_C990();
  *v3 = v2;
  *(v5 + 232) = v4;
  *(v5 + 240) = v0;

  sub_8ACC();

  return _swift_task_switch(v6);
}

uint64_t sub_AB3C4()
{
  v1 = v0[29];
  v2 = v0[12];
  sub_ACB78(v0[14]);
  swift_bridgeObjectRelease_n();

  v3 = [v1 patternId];
  sub_16E1BC();

  sub_C9E0();
  sub_16C76C();
  sub_8388(v2 + 176, (v0 + 2));
  v4 = v0[5];
  v5 = v0[6];
  sub_2D20(v0 + 2, v4);
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_AB4FC;
  v7 = v0[29];
  v8 = v0[21];
  v9 = v0[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v9, v7, v8, v4, v5);
}

uint64_t sub_AB4FC()
{
  sub_8A88();
  v2 = *v1;
  sub_C990();
  *v3 = v2;
  *(v4 + 256) = v0;

  sub_8ACC();

  return _swift_task_switch(v5);
}

uint64_t sub_AB600()
{
  sub_ACB78(*(v0 + 112));
  swift_bridgeObjectRelease_n();

  v1 = sub_C9E0();
  v2(v1);
  sub_ACBEC();

  sub_C9BC();

  return v3();
}

uint64_t sub_AB6C8()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);

  (*(v2 + 8))(v1, v3);
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v4();
}

uint64_t sub_AB79C()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);

  (*(v2 + 8))(v1, v3);
  sub_2D64((v0 + 16));
  sub_ACBEC();

  sub_C9BC();

  return v4();
}

uint64_t sub_AB858()
{
  sub_8A88();
  v0[23] = v1;
  v0[24] = v2;
  v3 = sub_16C7FC();
  v0[25] = v3;
  sub_888C(v3);
  v0[26] = v4;
  v0[27] = sub_8BC0();
  v5 = sub_16C80C();
  v0[28] = v5;
  sub_888C(v5);
  v0[29] = v6;
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v7 = sub_16DBEC();
  v0[32] = v7;
  sub_888C(v7);
  v0[33] = v8;
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  sub_8ACC();

  return _swift_task_switch(v9);
}

uint64_t sub_AB9CC(uint64_t a1)
{
  v2 = *(v1 + 288);
  v4 = *(v1 + 256);
  v3 = *(v1 + 264);
  v5 = sub_16DBBC();
  sub_8B48(v5, v1 + 48);
  v54 = v5;
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_16DBDC();
  v7 = sub_16E36C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_1BA38();
    *v8 = 0;
    _os_log_impl(&def_259DC, v6, v7, "MedScheduleDisambiguationStrategy: parseDisambiguationResponse", v8, 2u);
  }

  v9 = *(v1 + 264);
  v11 = *(v1 + 240);
  v10 = *(v1 + 248);
  v13 = *(v1 + 224);
  v12 = *(v1 + 232);

  v14 = *(v9 + 8);
  v15 = sub_C9E0();
  v14(v15);
  sub_16C7CC();
  (*(v12 + 16))(v11, v10, v13);
  v57 = v14;
  if ((*(v12 + 88))(v11, v13) == enum case for Parse.directInvocation(_:))
  {
    v16 = *(v1 + 240);
    v17 = *(v1 + 216);
    v19 = *(v1 + 200);
    v18 = *(v1 + 208);
    (*(*(v1 + 232) + 96))(v16, *(v1 + 224));
    (*(v18 + 32))(v17, v16, v19);
    v20 = sub_16C7EC();
    if (v20)
    {
      sub_17400(v20, (v1 + 16), 0x656C756465686373, 0xEA00000000004449);

      if (*(v1 + 40))
      {
        if (swift_dynamicCast())
        {
          v21 = *(v1 + 248);
          v22 = *(v1 + 224);
          v23 = *(v1 + 232);
          v24 = *(v1 + 160);
          *(v1 + 168) = *(v1 + 152);
          *(v1 + 176) = v24;
          sub_16C72C();
          v25 = sub_C9E0();
          v26(v25);
          (*(v23 + 8))(v21, v22);

          goto LABEL_16;
        }

        goto LABEL_13;
      }
    }

    else
    {
      *(v1 + 16) = 0u;
      *(v1 + 32) = 0u;
    }

    sub_C878(v1 + 16, &qword_1C63E0, &unk_1717D0);
LABEL_13:
    sub_8B48(v54, v1 + 96);
    v40 = sub_ACBD4();
    v41(v40);
    v42 = sub_16DBDC();
    v43 = sub_16E36C();
    if (sub_1BA1C(v43))
    {
      *sub_1BA38() = 0;
      sub_1B9D0(&def_259DC, v44, v45, "error in parseDisambiguationResponse for medication schedule; could not unpack directInvocation.");
      sub_1BA00();
    }

    v46 = *(v1 + 280);
    v47 = *(v1 + 256);
    v48 = *(v1 + 232);
    v55 = *(v1 + 224);
    v56 = *(v1 + 248);
    v49 = *(v1 + 208);
    v50 = *(v1 + 216);
    v51 = *(v1 + 200);

    (v57)(v46, v47);
    *(v1 + 136) = 0;
    *(v1 + 144) = 0xE000000000000000;
    sub_16C72C();
    (*(v49 + 8))(v50, v51);
    (*(v48 + 8))(v56, v55);
    goto LABEL_16;
  }

  sub_8B48(v5, v1 + 72);
  v27 = sub_ACBD4();
  v28(v27);
  v29 = sub_16DBDC();
  v30 = sub_16E36C();
  if (sub_1BA1C(v30))
  {
    *sub_1BA38() = 0;
    sub_1B9D0(&def_259DC, v31, v32, "error in parsing disambiguation response for medication name.");
    sub_1BA00();
  }

  v33 = *(v1 + 272);
  v35 = *(v1 + 248);
  v34 = *(v1 + 256);
  v37 = *(v1 + 232);
  v36 = *(v1 + 240);
  v38 = *(v1 + 224);

  (v57)(v33, v34);
  *(v1 + 120) = 0;
  *(v1 + 128) = 0xE000000000000000;
  sub_16C72C();
  v39 = *(v37 + 8);
  v39(v35, v38);
  v39(v36, v38);
LABEL_16:

  sub_C9BC();

  return v52();
}

void *sub_ABE94(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_16E4FC();
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = v4[1];
      v9 = v4[2];
      v10 = v4[3];
      v11 = v4[4];
      v12 = v4[5];

      sub_ABFC4(v5, v6, v7, v8, v9, v10, v11, v12, v13);

      sub_16E4DC();
      sub_16E50C();
      sub_16E51C();
      sub_16E4EC();
      v4 += 8;
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_ABFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v59[2] = a6;
  v59[1] = a5;
  v61 = a9;
  v64 = sub_16DBEC();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2440(&qword_1C5800, &unk_16F510);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v68 = v59 - v16;
  v17 = sub_16D5CC();
  v65 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v67 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = v59 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = v59 - v24;
  __chkstk_darwin(v23);
  v66 = v59 - v26;
  sub_16E23C();
  v27 = v25;
  sub_16E23C();
  v28 = v22;
  sub_16E23C();
  v29 = a7 == 48 && a8 == 0xE100000000000000;
  if (!v29 && (sub_16E6BC() & 1) == 0)
  {
    v78 = 0x20646E6128;
    v79 = 0xE500000000000000;
    v84._countAndFlagsBits = a7;
    v84._object = a8;
    sub_16E26C(v84);
    v85._countAndFlagsBits = 0x2965726F6D20;
    v85._object = 0xE600000000000000;
    sub_16E26C(v85);
  }

  v30 = v68;
  v31 = v63;
  v32 = v62;
  sub_16E23C();

  v33 = sub_16D5BC();
  LOBYTE(v69[0]) = 0;
  v78 = v33;
  v79 = v34;
  v80 = xmmword_174C60;
  v81 = 0xBFF0000000000000;
  v82 = 0;
  v83 = xmmword_174C70;
  v73[0] = v33;
  v73[1] = v34;
  v74 = xmmword_174C60;
  v75 = 0xBFF0000000000000;
  v76 = 0;
  v77 = xmmword_174C70;
  sub_ACAC8(&v78, v70);
  sub_ACB24(v73);
  sub_8388(v61 + 216, v70);
  v35 = v71;
  v36 = v72;
  sub_2D20(v70, v71);
  (*(v36 + 8))(v69, v35, v36);
  sub_7BBDC(v69);
  v38 = v37;
  sub_ACB24(&v78);
  sub_2D64(v69);
  sub_2D64(v70);
  if (v38)
  {
    sub_16E23C();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  sub_214C(v30, v39, 1, v17);
  v40 = sub_16DBBC();
  swift_beginAccess();
  v41 = v64;
  (*(v31 + 16))(v32, v40, v64);
  v42 = sub_16DBDC();
  v43 = sub_16E36C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&def_259DC, v42, v43, "Converted to string quartets.", v44, 2u);
  }

  (*(v31 + 8))(v32, v41);
  type metadata accessor for WellnessDialogStringQuartet.Builder(0);
  swift_allocObject();
  v45 = sub_BCA50();
  v46 = v65;
  v47 = *(v65 + 16);
  v60 = v27;
  v47(v15, v27, v17);
  sub_214C(v15, 0, 1, v17);
  v48 = OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_first;
  swift_beginAccess();
  sub_7DA2C(v15, v45 + v48);
  swift_endAccess();
  sub_C878(v15, &qword_1C5800, &unk_16F510);
  v49 = v28;
  v47(v15, v28, v17);
  sub_214C(v15, 0, 1, v17);
  v50 = OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_second;
  swift_beginAccess();
  sub_7DA2C(v15, v45 + v50);
  swift_endAccess();
  sub_C878(v15, &qword_1C5800, &unk_16F510);
  v51 = v67;
  v47(v15, v67, v17);
  sub_214C(v15, 0, 1, v17);
  v52 = OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_third;
  swift_beginAccess();
  sub_7DA2C(v15, v45 + v52);
  swift_endAccess();
  sub_C878(v15, &qword_1C5800, &unk_16F510);
  v53 = OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_fourth;
  swift_beginAccess();
  v54 = v45 + v53;
  v55 = v68;
  sub_7DA2C(v68, v54);
  swift_endAccess();
  type metadata accessor for WellnessDialogStringQuartet(0);
  swift_allocObject();
  v56 = sub_BCB50(v45);
  sub_C878(v55, &qword_1C5800, &unk_16F510);
  v57 = *(v46 + 8);
  v57(v51, v17);
  v57(v49, v17);
  v57(v60, v17);
  v57(v66, v17);
  return v56;
}

uint64_t sub_AC758()
{
  sub_C938(v0 + 16);
  sub_2D64((v0 + 176));
  sub_2D64((v0 + 216));
  return v0;
}

uint64_t sub_AC788()
{
  sub_AC758();

  return _swift_deallocClassInstance(v0, 256, 7);
}

uint64_t sub_AC7F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E1A4;

  return sub_AB858();
}

uint64_t sub_AC898()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E1A4;

  return sub_AAE44();
}

uint64_t sub_AC940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for MedScheduleDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_1E1A4;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)(a1, a2, v9, a4);
}

uint64_t sub_ACA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for MedScheduleDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_1E1A4;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)(a1, a2, v9, a4);
}

uint64_t sub_ACB78(uint64_t a1)
{
  v2 = type metadata accessor for WellnessDisambiguateMedScheduleParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_ACBEC()
{
}

void sub_ACC0C()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_16E1AC();
  v3 = [v1 integerForKey:v2];

  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = [v0 standardUserDefaults];
    v6 = sub_16E1AC();
    [v5 setInteger:v4 forKey:v6];

    v7 = [v0 standardUserDefaults];
    [v7 synchronize];
  }
}

BOOL sub_ACD38()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_16E1AC();
  v2 = [v0 integerForKey:v1];

  return v2 < 2;
}

uint64_t type metadata accessor for WellnessQueryingCATsSimple(uint64_t a1)
{
  result = qword_1C8F70;
  if (!qword_1C8F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_ACE54()
{
  sub_8A88();
  sub_B25EC(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  *(v0 + 64) = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_ACED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v13 = *(v11 + 16);
  v14 = sub_2440(&qword_1C6078, &unk_172520);
  v15 = sub_B28A8(v14);
  v16 = sub_B27A0(v15);
  sub_B24FC(v16, xmmword_172970);
  v17 = 0;
  if (v13)
  {
    v17 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  sub_B24D0(v17);
  if (v18)
  {
    sub_B2614();
  }

  else
  {
    v19 = &type metadata for Double;
  }

  sub_B24A8(v19);
  if (v20)
  {
    sub_B2604();
  }

  else
  {
    v21 = &type metadata for Double;
  }

  v22 = *(v11 + 64);
  v23 = sub_B2514(v21);
  sub_1955C(v23, v22, &qword_1C5800, &unk_16F510);
  v24 = sub_16D5CC();
  sub_B25A8(v24);
  if (v25)
  {

    sub_C878(v22, &qword_1C5800, &unk_16F510);
    sub_B27F8();
  }

  else
  {
    sub_B2878();
    sub_400B8();
    sub_40154();
    v26();
  }

  sub_B2724();
  v27 = sub_B267C("queriedCalendarRange");
  if (v10)
  {
    v27 = sub_16D39C();
  }

  else
  {
    v12[31] = 0;
    v12[32] = 0;
  }

  sub_B2834(v27);
  sub_B2624();
  v28 = swift_task_alloc();
  v29 = sub_B2690(v28);
  *v29 = v30;
  sub_B27EC(v29);
  sub_B25D8();
  sub_774AC();

  return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_AD0A8()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_400A4();

    return v9(v8);
  }
}

uint64_t sub_AD1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_680E8();
}

uint64_t sub_AD1F0()
{
  sub_38664();
  v1 = v0[2];
  sub_2440(&qword_1C6078, &unk_172520);
  v2 = swift_allocObject();
  v0[6] = v2;
  sub_B24FC(v2, xmmword_16F2F0);
  if (v1)
  {
    v3 = type metadata accessor for WellnessTime(0);
    v4 = v1;
  }

  else
  {
    v3 = sub_76C6C();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v5 = v0[3];
  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;
  v2[5].n128_u64[0] = 0x74617265706D6574;
  v2[5].n128_u64[1] = 0xEB00000000657275;
  if (v5)
  {
    sub_16D2BC();
    v6 = v5;
  }

  else
  {
    sub_76C6C();
    v2[6].n128_u64[1] = 0;
    v2[7].n128_u64[0] = 0;
  }

  v7 = v0[4];
  v2[6].n128_u64[0] = v6;
  sub_B28C0();
  v2[7].n128_u64[1] = v8;
  v2[8].n128_u64[0] = 0xD000000000000014;
  v2[8].n128_u64[1] = v9;
  v10 = 0;
  if (v7)
  {
    v10 = sub_16D39C();
  }

  else
  {
    v2[9].n128_u64[1] = 0;
    v2[10].n128_u64[0] = 0;
  }

  v2[9].n128_u64[0] = v7;
  v2[10].n128_u64[1] = v10;
  v14 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  sub_179E8();
  v0[7] = v11;
  *v11 = v12;
  v11[1] = sub_AD3BC;

  return v14(0xD00000000000002CLL, 0x800000000017F2E0, v2);
}

uint64_t sub_AD3BC()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_76ABC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_626BC();

    return v9(v8);
  }
}

uint64_t sub_AD4E4()
{
  sub_8A88();

  sub_C9BC();

  return v0();
}

uint64_t sub_AD540()
{
  sub_8A88();
  sub_B26C4(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v9);
  *(v0 + 80) = sub_8BC0();
  v10 = sub_17960();
  return sub_B2840(v10);
}

uint64_t sub_AD5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v15 = v12[2];
  v16 = sub_2440(&qword_1C6078, &unk_172520);
  v17 = sub_B2930(v16);
  v18 = sub_B28EC(v17);
  sub_B24FC(v18, xmmword_1731B0);
  v19 = 0;
  if (v15)
  {
    v19 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
  }

  sub_B265C(v19);
  if (v20)
  {
    sub_B2614();
  }

  else
  {
    v21 = &type metadata for Double;
  }

  sub_B2558(v21);
  if (v22)
  {
    sub_B2604();
  }

  else
  {
    v23 = &type metadata for Double;
  }

  sub_B2534(v23);
  if (v24)
  {
    sub_B2734();
    *(v14 + 200) = 0;
    *(v14 + 208) = 0;
  }

  else
  {
    v25 = &type metadata for Double;
  }

  sub_B257C(v25);
  if (v26)
  {
    sub_B2734();
    *(v14 + 248) = 0;
    *(v14 + 256) = 0;
  }

  else
  {
    v27 = &type metadata for Double;
  }

  v28 = sub_B26F0(v27);
  sub_1955C(v28, v11, &qword_1C5800, &unk_16F510);
  v29 = sub_16D5CC();
  sub_40124(v29);
  v30 = v12[10];
  sub_B2788();
  if (v31)
  {

    sub_C878(v30, &qword_1C5800, &unk_16F510);
    *(v14 + 288) = 0u;
    *(v14 + 304) = 0u;
  }

  else
  {
    *(v14 + 312) = v10;
    sub_9910((v14 + 288));
    sub_400B8();
    sub_40154();
    v32();
  }

  sub_B2794();
  v33 = v12[8];
  sub_38B4C();
  *(v14 + 320) = v13;
  *(v14 + 328) = v34;
  v35 = 0;
  if (v33)
  {
    v35 = sub_16D39C();
  }

  else
  {
    *(v14 + 344) = 0;
    *(v14 + 352) = 0;
  }

  sub_B28E0(v35);
  sub_B2624();
  swift_task_alloc();
  sub_179E8();
  v12[12] = v36;
  *v36 = v37;
  v36[1] = sub_AD7F4;
  sub_B25D8();
  sub_774AC();

  return v41(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
}

uint64_t sub_AD7F4()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_400A4();

    return v9(v8);
  }
}

uint64_t sub_AD948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v12 = *(v10 + 16);
  v13 = sub_2440(&qword_1C6078, &unk_172520);
  v14 = sub_B2890(v13);
  v15 = sub_B27A0(v14);
  sub_B24FC(v15, xmmword_1731E0);
  if (v12)
  {
    v16 = type metadata accessor for WellnessTime(0);
    v17 = v12;
  }

  else
  {
    v16 = sub_B275C();
  }

  sub_B2804(v16, v17);
  if (v18)
  {
    sub_B2614();
  }

  else
  {
    v19 = &type metadata for Double;
  }

  sub_B2558(v19);
  if (v20)
  {
    sub_B2604();
  }

  else
  {
    v21 = &type metadata for Double;
  }

  sub_B2534(v21);
  if (v22)
  {
    sub_B2734();
    v11[25] = 0;
    v11[26] = 0;
  }

  else
  {
    v23 = &type metadata for Double;
  }

  sub_B257C(v23);
  if (v24)
  {
    sub_B2734();
    v11[31] = 0;
    v11[32] = 0;
  }

  sub_B2854();
  v25 = *(v10 + 56);
  v27 = sub_B276C(v26);
  if (v25)
  {
    v27 = sub_16D39C();
  }

  else
  {
    v11[37] = 0;
    v11[38] = 0;
  }

  v11[36] = v25;
  v11[39] = v27;
  sub_B26B4(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v28 = swift_task_alloc();
  v29 = sub_B2690(v28);
  *v29 = v30;
  sub_B2828(v29);
  sub_B2648();
  sub_3E254();

  return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_ADAF4()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_76ABC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_626BC();

    return v9(v8);
  }
}

uint64_t sub_ADC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v12 = *(v10 + 16);
  v13 = sub_2440(&qword_1C6078, &unk_172520);
  v14 = sub_B2890(v13);
  v15 = sub_B27A0(v14);
  sub_B24FC(v15, xmmword_1731E0);
  if (v12)
  {
    type metadata accessor for WellnessTime(0);
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  sub_B28CC();
  v17 = *(v10 + 96);
  *(v11 + 48) = v18;
  *(v11 + 72) = v19;
  *(v11 + 80) = v16;
  *(v11 + 88) = 0xEB000000006E694DLL;
  if (v17)
  {
    v20 = 0;
    v21 = 0;
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  else
  {
    v20 = *(v10 + 24);
    v21 = &type metadata for Double;
  }

  v22 = *(v10 + 97);
  *(v11 + 96) = v20;
  *(v11 + 120) = v21;
  *(v11 + 128) = v16;
  *(v11 + 136) = 0xEB0000000078614DLL;
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  else
  {
    v23 = *(v10 + 32);
    v24 = &type metadata for Double;
  }

  v25 = *(v10 + 98);
  *(v11 + 144) = v23;
  *(v11 + 168) = v24;
  strcpy((v11 + 176), "diastolicMin");
  *(v11 + 189) = 0;
  *(v11 + 190) = -5120;
  if (v25)
  {
    v26 = 0;
    v27 = 0;
    *(v11 + 200) = 0;
    *(v11 + 208) = 0;
  }

  else
  {
    v26 = *(v10 + 40);
    v27 = &type metadata for Double;
  }

  v28 = *(v10 + 99);
  *(v11 + 192) = v26;
  *(v11 + 216) = v27;
  strcpy((v11 + 224), "diastolicMax");
  *(v11 + 237) = 0;
  *(v11 + 238) = -5120;
  if (v28)
  {
    sub_B2734();
    *(v11 + 248) = 0;
    *(v11 + 256) = 0;
  }

  sub_B2854();
  v29 = *(v10 + 56);
  v31 = sub_B276C(v30);
  if (v29)
  {
    v31 = sub_16D39C();
  }

  else
  {
    *(v11 + 296) = 0;
    *(v11 + 304) = 0;
  }

  *(v11 + 288) = v29;
  *(v11 + 312) = v31;
  sub_B26B4(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v32 = swift_task_alloc();
  v33 = sub_B2690(v32);
  *v33 = v34;
  sub_B2828(v33);
  sub_B2648();
  sub_3E254();

  return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_ADE70(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 81) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;
  *(v7 + 80) = a3;
  *(v7 + 16) = a1;
  return sub_680E8();
}

uint64_t sub_ADE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v11 = *(v10 + 16);
  v12 = sub_2440(&qword_1C6078, &unk_172520);
  v13 = sub_B2918(v12);
  *(v10 + 56) = v13;
  sub_B24FC(v13, xmmword_172980);
  if (v11)
  {
    type metadata accessor for WellnessTime(0);
    v14 = v11;
  }

  else
  {
    sub_B275C();
  }

  v13[3].n128_u64[0] = v14;
  sub_B28CC();
  v13[4].n128_u64[1] = v15;
  v13[5].n128_u64[0] = v16;
  v13[5].n128_u64[1] = 0xE800000000000000;
  if (v17)
  {
    sub_B2614();
  }

  else
  {
    v19 = *(v10 + 24);
    v18 = &type metadata for Double;
  }

  v20 = *(v10 + 81);
  v13[6].n128_u64[0] = v19;
  v13[7].n128_u64[1] = v18;
  v13[8].n128_u64[0] = 0x696C6F7473616964;
  v13[8].n128_u64[1] = 0xE900000000000063;
  if (v20)
  {
    sub_B2604();
  }

  sub_B2854();
  v21 = *(v10 + 40);
  v23 = sub_B2740(v22);
  if (v21)
  {
    v23 = sub_16D39C();
  }

  else
  {
    v13[12].n128_u64[1] = 0;
    v13[13].n128_u64[0] = 0;
  }

  v13[12].n128_u64[0] = v21;
  v13[13].n128_u64[1] = v23;
  sub_B26B4(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  sub_179E8();
  *(v10 + 64) = v24;
  *v24 = v25;
  sub_B28F8(v24);
  sub_B2648();
  sub_3E254();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_AE034()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_76ABC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_626BC();

    return v9(v8);
  }
}

uint64_t sub_AE15C()
{
  sub_8A88();

  sub_C9BC();

  return v0();
}

uint64_t sub_AE1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return sub_680E8();
}

uint64_t sub_AE1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = v12[2];
  v14 = sub_2440(&qword_1C6078, &unk_172520);
  v15 = sub_B2890(v14);
  v12[9] = v15;
  sub_B24FC(v15, xmmword_1731E0);
  if (v13)
  {
    v16 = type metadata accessor for WellnessTime(0);
    v17 = v13;
  }

  else
  {
    v16 = sub_76C6C();
    v15[3].n128_u64[1] = 0;
    v15[4].n128_u64[0] = 0;
  }

  v18 = v12[3];
  v15[3].n128_u64[0] = v17;
  v15[4].n128_u64[1] = v16;
  v15[5].n128_u64[0] = 0x65756C6176;
  v15[5].n128_u64[1] = 0xE500000000000000;
  if (v18)
  {
    v19 = sub_16D2BC();
    v20 = v18;
  }

  else
  {
    v19 = sub_76C6C();
    v15[6].n128_u64[1] = 0;
    v15[7].n128_u64[0] = 0;
  }

  v21 = v12[4];
  v15[6].n128_u64[0] = v20;
  v15[7].n128_u64[1] = v19;
  v15[8].n128_u64[0] = 0x65756C61566E696DLL;
  v15[8].n128_u64[1] = 0xE800000000000000;
  if (v21)
  {
    v22 = sub_16D2BC();
    v23 = v21;
  }

  else
  {
    v22 = sub_76C6C();
    v15[9].n128_u64[1] = 0;
    v15[10].n128_u64[0] = 0;
  }

  v24 = v12[5];
  v15[9].n128_u64[0] = v23;
  v15[10].n128_u64[1] = v22;
  v15[11].n128_u64[0] = 0x65756C615678616DLL;
  v15[11].n128_u64[1] = 0xE800000000000000;
  if (v24)
  {
    sub_16D2BC();
    v25 = v24;
  }

  else
  {
    sub_76C6C();
    v15[12].n128_u64[1] = 0;
    v15[13].n128_u64[0] = 0;
  }

  v26 = v12[6];
  v15[12].n128_u64[0] = v25;
  sub_B27AC();
  v15[13].n128_u64[1] = v27;
  v15[14].n128_u64[0] = v28;
  sub_B2714();
  v15[14].n128_u64[1] = v29;
  if (v26)
  {
    sub_16D2BC();
    v30 = v26;
  }

  else
  {
    sub_76C6C();
    v15[15].n128_u64[1] = 0;
    v15[16].n128_u64[0] = 0;
  }

  v31 = v12[7];
  v15[15].n128_u64[0] = v30;
  sub_B28C0();
  v15[16].n128_u64[1] = v32;
  v15[17].n128_u64[0] = v33;
  v15[17].n128_u64[1] = v34;
  v35 = 0;
  if (v31)
  {
    v35 = sub_16D39C();
  }

  else
  {
    v15[18].n128_u64[1] = 0;
    v15[19].n128_u64[0] = 0;
  }

  v15[18].n128_u64[0] = v31;
  v15[19].n128_u64[1] = v35;
  sub_B26B4(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v36 = swift_task_alloc();
  v37 = sub_B2690(v36);
  *v37 = v38;
  sub_B2828(v37);
  sub_8CC0();

  return v42(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_AE440()
{
  sub_8A88();
  sub_B25EC(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  *(v0 + 64) = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_AE4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v13 = *(v11 + 16);
  v14 = sub_2440(&qword_1C6078, &unk_172520);
  v15 = sub_B28A8(v14);
  v16 = sub_B27A0(v15);
  sub_B24FC(v16, xmmword_172970);
  v17 = 0;
  if (v13)
  {
    v17 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  sub_B24D0(v17);
  if (v18)
  {
    sub_B2614();
  }

  else
  {
    v19 = &type metadata for Double;
  }

  sub_B24A8(v19);
  if (v20)
  {
    sub_B2604();
  }

  else
  {
    v21 = &type metadata for Double;
  }

  v22 = *(v11 + 64);
  v23 = sub_B2514(v21);
  sub_1955C(v23, v22, &qword_1C5800, &unk_16F510);
  v24 = sub_16D5CC();
  sub_B25A8(v24);
  if (v25)
  {

    sub_C878(v22, &qword_1C5800, &unk_16F510);
    sub_B27F8();
  }

  else
  {
    sub_B2878();
    sub_400B8();
    sub_40154();
    v26();
  }

  sub_B2724();
  v27 = sub_B267C("queriedCalendarRange");
  if (v10)
  {
    v27 = sub_16D39C();
  }

  else
  {
    v12[31] = 0;
    v12[32] = 0;
  }

  sub_B2834(v27);
  sub_B2624();
  v28 = swift_task_alloc();
  v29 = sub_B2690(v28);
  *v29 = v30;
  sub_B27EC(v29);
  sub_B25D8();
  sub_774AC();

  return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_AE694(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return sub_680E8();
}

uint64_t sub_AE6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v11 = v10[2];
  sub_2440(&qword_1C6078, &unk_172520);
  v12 = swift_allocObject();
  v10[5] = v12;
  *(v12 + 16) = xmmword_16F2F0;
  sub_38B4C();
  *(v13 + 32) = 0xD000000000000014;
  *(v13 + 40) = v14;
  if (v11)
  {
    sub_16D39C();
    v15 = v11;
  }

  else
  {
    sub_B275C();
  }

  v16 = v10[3];
  *(v12 + 48) = v15;
  sub_38B4C();
  *(v12 + 72) = v17;
  *(v12 + 80) = 0xD000000000000010;
  *(v12 + 88) = v18;
  *(v12 + 96) = v19;
  *(v12 + 120) = &type metadata for Bool;
  *(v12 + 128) = 1701669236;
  *(v12 + 136) = 0xE400000000000000;
  v20 = 0;
  if (v16)
  {
    v20 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  *(v12 + 144) = v16;
  *(v12 + 168) = v20;
  sub_B26B4(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  sub_179E8();
  v10[6] = v21;
  *v21 = v22;
  v21[1] = sub_AE838;
  sub_B2648();
  sub_3E254();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_AE838()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_76ABC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_626BC();

    return v9(v8);
  }
}

uint64_t sub_AE960()
{
  sub_8A88();

  sub_C9BC();

  return v0();
}

uint64_t sub_AE9BC()
{
  sub_8A88();
  sub_B25EC(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  *(v0 + 64) = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_AEA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v13 = *(v11 + 16);
  v14 = sub_2440(&qword_1C6078, &unk_172520);
  v15 = sub_B28A8(v14);
  v16 = sub_B27A0(v15);
  sub_B24FC(v16, xmmword_172970);
  v17 = 0;
  if (v13)
  {
    v17 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  sub_B24D0(v17);
  if (v18)
  {
    sub_B2614();
  }

  else
  {
    v19 = &type metadata for Double;
  }

  sub_B24A8(v19);
  if (v20)
  {
    sub_B2604();
  }

  else
  {
    v21 = &type metadata for Double;
  }

  v22 = *(v11 + 64);
  v23 = sub_B2514(v21);
  sub_1955C(v23, v22, &qword_1C5800, &unk_16F510);
  v24 = sub_16D5CC();
  sub_B25A8(v24);
  if (v25)
  {

    sub_C878(v22, &qword_1C5800, &unk_16F510);
    sub_B27F8();
  }

  else
  {
    sub_B2878();
    sub_400B8();
    sub_40154();
    v26();
  }

  sub_B2724();
  v27 = sub_B267C("queriedCalendarRange");
  if (v10)
  {
    v27 = sub_16D39C();
  }

  else
  {
    v12[31] = 0;
    v12[32] = 0;
  }

  sub_B2834(v27);
  sub_B2624();
  v28 = swift_task_alloc();
  v29 = sub_B2690(v28);
  *v29 = v30;
  sub_B27EC(v29);
  sub_B25D8();
  sub_774AC();

  return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_AEC10()
{
  sub_8A88();
  sub_B25EC(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  *(v0 + 64) = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_AEC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v13 = *(v11 + 16);
  v14 = sub_2440(&qword_1C6078, &unk_172520);
  v15 = sub_B28A8(v14);
  v16 = sub_B27A0(v15);
  sub_B24FC(v16, xmmword_172970);
  v17 = 0;
  if (v13)
  {
    v17 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  sub_B24D0(v17);
  if (v18)
  {
    sub_B2614();
  }

  else
  {
    v19 = &type metadata for Double;
  }

  sub_B24A8(v19);
  if (v20)
  {
    sub_B2604();
  }

  else
  {
    v21 = &type metadata for Double;
  }

  v22 = *(v11 + 64);
  v23 = sub_B2514(v21);
  sub_1955C(v23, v22, &qword_1C5800, &unk_16F510);
  v24 = sub_16D5CC();
  sub_B25A8(v24);
  if (v25)
  {

    sub_C878(v22, &qword_1C5800, &unk_16F510);
    sub_B27F8();
  }

  else
  {
    sub_B2878();
    sub_400B8();
    sub_40154();
    v26();
  }

  sub_B2724();
  v27 = sub_B267C("queriedCalendarRange");
  if (v10)
  {
    v27 = sub_16D39C();
  }

  else
  {
    v12[31] = 0;
    v12[32] = 0;
  }

  sub_B2834(v27);
  sub_B2624();
  v28 = swift_task_alloc();
  v29 = sub_B2690(v28);
  *v29 = v30;
  sub_B27EC(v29);
  sub_B25D8();
  sub_774AC();

  return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_AEE64()
{
  sub_8A88();
  sub_B25EC(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  *(v0 + 64) = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_AEEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v13 = *(v11 + 16);
  v14 = sub_2440(&qword_1C6078, &unk_172520);
  v15 = sub_B28A8(v14);
  v16 = sub_B27A0(v15);
  sub_B24FC(v16, xmmword_172970);
  v17 = 0;
  if (v13)
  {
    v17 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  sub_B24D0(v17);
  if (v18)
  {
    sub_B2614();
  }

  else
  {
    v19 = &type metadata for Double;
  }

  sub_B24A8(v19);
  if (v20)
  {
    sub_B2604();
  }

  else
  {
    v21 = &type metadata for Double;
  }

  v22 = *(v11 + 64);
  v23 = sub_B2514(v21);
  sub_1955C(v23, v22, &qword_1C5800, &unk_16F510);
  v24 = sub_16D5CC();
  sub_B25A8(v24);
  if (v25)
  {

    sub_C878(v22, &qword_1C5800, &unk_16F510);
    sub_B27F8();
  }

  else
  {
    sub_B2878();
    sub_400B8();
    sub_40154();
    v26();
  }

  sub_B2724();
  v27 = sub_B267C("queriedCalendarRange");
  if (v10)
  {
    v27 = sub_16D39C();
  }

  else
  {
    v12[31] = 0;
    v12[32] = 0;
  }

  sub_B2834(v27);
  sub_B2624();
  v28 = swift_task_alloc();
  v29 = sub_B2690(v28);
  *v29 = v30;
  sub_B27EC(v29);
  sub_B25D8();
  sub_774AC();

  return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_AF0B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 81) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;
  *(v7 + 80) = a3;
  *(v7 + 16) = a1;
  return sub_680E8();
}

uint64_t sub_AF0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v11 = v10[2];
  v12 = sub_2440(&qword_1C6078, &unk_172520);
  v13 = sub_B2918(v12);
  v10[7] = v13;
  sub_B24FC(v13, xmmword_172980);
  if (v11)
  {
    type metadata accessor for WellnessTime(0);
    v14 = v11;
  }

  else
  {
    sub_B275C();
  }

  v13[3].n128_u64[0] = v14;
  sub_B27AC();
  v13[4].n128_u64[1] = v15;
  v13[5].n128_u64[0] = v16;
  sub_B2714();
  v13[5].n128_u64[1] = v17;
  if (v18)
  {
    sub_B2614();
  }

  else
  {
    v19 = &type metadata for Double;
  }

  sub_B24A8(v19);
  if (v20)
  {
    sub_B2604();
  }

  sub_B2854();
  v21 = v10[5];
  v23 = sub_B2740(v22);
  if (v21)
  {
    v23 = sub_16D39C();
  }

  else
  {
    v13[12].n128_u64[1] = 0;
    v13[13].n128_u64[0] = 0;
  }

  v13[12].n128_u64[0] = v21;
  v13[13].n128_u64[1] = v23;
  sub_B26B4(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  sub_179E8();
  v10[8] = v24;
  *v24 = v25;
  sub_B28F8(v24);
  sub_B2648();
  sub_3E254();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_AF25C()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_76ABC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_626BC();

    return v9(v8);
  }
}

uint64_t sub_AF384()
{
  sub_8A88();
  sub_B26C4(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v9);
  *(v0 + 80) = sub_8BC0();
  v10 = sub_17960();
  return sub_B2840(v10);
}

uint64_t sub_AF3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v15 = v12[2];
  v16 = sub_2440(&qword_1C6078, &unk_172520);
  v17 = sub_B2930(v16);
  v18 = sub_B28EC(v17);
  sub_B24FC(v18, xmmword_1731B0);
  v19 = 0;
  if (v15)
  {
    v19 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
  }

  sub_B265C(v19);
  if (v20)
  {
    sub_B2614();
  }

  else
  {
    v21 = &type metadata for Double;
  }

  sub_B2558(v21);
  if (v22)
  {
    sub_B2604();
  }

  else
  {
    v23 = &type metadata for Double;
  }

  sub_B2534(v23);
  if (v24)
  {
    sub_B2734();
    *(v14 + 200) = 0;
    *(v14 + 208) = 0;
  }

  else
  {
    v25 = &type metadata for Double;
  }

  sub_B257C(v25);
  if (v26)
  {
    sub_B2734();
    *(v14 + 248) = 0;
    *(v14 + 256) = 0;
  }

  else
  {
    v27 = &type metadata for Double;
  }

  v28 = sub_B26F0(v27);
  sub_1955C(v28, v11, &qword_1C5800, &unk_16F510);
  v29 = sub_16D5CC();
  sub_40124(v29);
  v30 = v12[10];
  sub_B2788();
  if (v31)
  {

    sub_C878(v30, &qword_1C5800, &unk_16F510);
    *(v14 + 288) = 0u;
    *(v14 + 304) = 0u;
  }

  else
  {
    *(v14 + 312) = v10;
    sub_9910((v14 + 288));
    sub_400B8();
    sub_40154();
    v32();
  }

  sub_B2794();
  v33 = v12[8];
  sub_38B4C();
  *(v14 + 320) = v13;
  *(v14 + 328) = v34;
  v35 = 0;
  if (v33)
  {
    v35 = sub_16D39C();
  }

  else
  {
    *(v14 + 344) = 0;
    *(v14 + 352) = 0;
  }

  sub_B28E0(v35);
  sub_B2624();
  swift_task_alloc();
  sub_179E8();
  v12[12] = v36;
  *v36 = v37;
  v36[1] = sub_AF638;
  sub_B25D8();
  sub_774AC();

  return v41(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
}

uint64_t sub_AF638()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_400A4();

    return v9(v8);
  }
}

uint64_t sub_AF768()
{
  sub_8A88();

  sub_C9BC();

  return v0();
}

uint64_t sub_AF7CC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 88) = a2;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  return sub_680E8();
}

uint64_t sub_AF7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = v12[2];
  v14 = sub_2440(&qword_1C6078, &unk_172520);
  v15 = sub_B2890(v14);
  v12[8] = v15;
  sub_B24FC(v15, xmmword_1731E0);
  if (v13)
  {
    type metadata accessor for WellnessTime(0);
    v16 = v13;
  }

  else
  {
    sub_76C6C();
    v15[3].n128_u64[1] = 0;
    v15[4].n128_u64[0] = 0;
  }

  v17 = v12[3];
  v15[3].n128_u64[0] = v16;
  sub_38B4C();
  v15[4].n128_u64[1] = v19;
  v15[5].n128_u64[0] = v18 | 2;
  v15[5].n128_u64[1] = v20;
  v15[6].n128_u8[0] = v21;
  v15[7].n128_u64[1] = &type metadata for Bool;
  v15[8].n128_u64[0] = v18;
  v15[8].n128_u64[1] = 0x800000000017DAD0;
  if (v17)
  {
    v22 = sub_16D39C();
    v23 = v17;
  }

  else
  {
    v22 = sub_76C6C();
    v15[9].n128_u64[1] = 0;
    v15[10].n128_u64[0] = 0;
  }

  v24 = v12[4];
  v15[9].n128_u64[0] = v23;
  v15[10].n128_u64[1] = v22;
  v15[11].n128_u64[0] = 0x746867696568;
  v15[11].n128_u64[1] = 0xE600000000000000;
  if (v24)
  {
    v25 = sub_16D2FC();
    v26 = v24;
  }

  else
  {
    v25 = sub_76C6C();
    v15[12].n128_u64[1] = 0;
    v15[13].n128_u64[0] = 0;
  }

  v27 = v12[5];
  v15[12].n128_u64[0] = v26;
  v15[13].n128_u64[1] = v25;
  v15[14].n128_u64[0] = 0x68676965486E696DLL;
  v15[14].n128_u64[1] = 0xE900000000000074;
  if (v27)
  {
    v28 = sub_16D2FC();
    v29 = v27;
  }

  else
  {
    v28 = sub_76C6C();
    v15[15].n128_u64[1] = 0;
    v15[16].n128_u64[0] = 0;
  }

  v30 = v12[6];
  v15[15].n128_u64[0] = v29;
  v15[16].n128_u64[1] = v28;
  v15[17].n128_u64[0] = 0x686769654878616DLL;
  v15[17].n128_u64[1] = 0xE900000000000074;
  v31 = 0;
  if (v30)
  {
    v31 = sub_16D2FC();
  }

  else
  {
    v15[18].n128_u64[1] = 0;
    v15[19].n128_u64[0] = 0;
  }

  v15[18].n128_u64[0] = v30;
  v15[19].n128_u64[1] = v31;
  sub_B26B4(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  sub_179E8();
  v12[9] = v32;
  *v32 = v33;
  sub_B27EC(v32);
  sub_8CC0();

  return v37(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t sub_AFA48()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_76ABC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_626BC();

    return v9(v8);
  }
}

uint64_t sub_AFB70()
{
  sub_8A88();

  sub_C9BC();

  return v0();
}