uint64_t sub_1F798(uint64_t a1)
{
  v3 = *v2;
  v3[38] = v2;
  v3[39] = a1;
  v3[40] = v1;
  v3[56] = v1;

  if (v1)
  {
    v4 = sub_1F984;
  }

  else
  {
    v4 = sub_1F8D4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1F8D4()
{
  sub_23A30(v0[50], type metadata accessor for SearchForTimersHandledOtherMultiParameters);

  v1 = v0[39];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1F984()
{
  sub_23A30(*(v0 + 400), type metadata accessor for SearchForTimersHandledOtherMultiParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1FA2C(uint64_t a1)
{
  v3 = *v2;
  v3[41] = v2;
  v3[42] = a1;
  v3[43] = v1;
  v3[60] = v1;

  if (v1)
  {
    v4 = sub_1FC84;
  }

  else
  {
    v4 = sub_1FB6C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1FB6C()
{
  v1 = *(v0 + 202);
  v2 = *(v0 + 201);
  v3 = *(v0 + 111);
  v4 = *(v0 + 110);
  v5 = *(v0 + 109);
  v6 = *(v0 + 108);
  v7 = *(v0 + 107);
  v8 = *(v0 + 106);
  v9 = *(v0 + 105);
  v10 = *(v0 + 416);
  v11 = *(v0 + 424);
  v12 = *(v0 + 456);
  v13 = *(v0 + 408) != 0;
  *(v0 + 208) = 1;
  *(v0 + 216) = 0;
  *(v0 + 224) = v4;
  *(v0 + 232) = v11;
  *(v0 + 240) = v13;
  *(v0 + 241) = v9;
  *(v0 + 242) = v8;
  *(v0 + 243) = v7;
  *(v0 + 244) = v6;
  *(v0 + 245) = v5;
  *(v0 + 248) = v10;
  *(v0 + 256) = 0;
  *(v0 + 264) = v3;
  *(v0 + 272) = v12;
  *(v0 + 280) = v1;
  *(v0 + 288) = 0;
  *(v0 + 296) = v2;
  sub_229C8(v0 + 208);

  v14 = *(v0 + 336);

  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t sub_1FC84()
{
  v1 = *(v0 + 202);
  v2 = *(v0 + 201);
  v3 = *(v0 + 111);
  v4 = *(v0 + 110);
  v5 = *(v0 + 109);
  v6 = *(v0 + 108);
  v7 = *(v0 + 107);
  v8 = *(v0 + 106);
  v9 = *(v0 + 105);
  v10 = *(v0 + 416);
  v11 = *(v0 + 424);
  v12 = *(v0 + 456);
  v13 = *(v0 + 408) != 0;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = v4;
  *(v0 + 136) = v11;
  *(v0 + 144) = v13;
  *(v0 + 145) = v9;
  *(v0 + 146) = v8;
  *(v0 + 147) = v7;
  *(v0 + 148) = v6;
  *(v0 + 149) = v5;
  *(v0 + 152) = v10;
  *(v0 + 160) = 0;
  *(v0 + 168) = v3;
  *(v0 + 176) = v12;
  *(v0 + 184) = v1;
  *(v0 + 192) = 0;
  *(v0 + 200) = v2;
  sub_229C8(v0 + 112);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1FD94()
{
  sub_5BB0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1FE50()
{
  v1 = *(*v0 + 72);

  return v1;
}

uint64_t sub_1FE84()
{
  v1 = sub_12341C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1FEE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23CC8;

  return sub_101EC();
}

uint64_t sub_1FF74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23CC8;

  return sub_11558();
}

uint64_t sub_20004()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23CC8;

  return sub_18728();
}

uint64_t sub_20094(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_503C;

  return sub_1EAE8(a1);
}

uint64_t sub_20130(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_201D8;

  return sub_1DF18(a1, v4);
}

uint64_t sub_201D8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 40) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_20314, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_20314()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_203E0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23CC8;

  return sub_1C67C(a1, v4);
}

uint64_t sub_204D0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_204F4, 0, 0);
}

uint64_t sub_204F4()
{
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_15F700);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchTimer.HandleIntentStrategy.makeIntentHandledResponse() called", v4, 2u);
  }

  v5 = sub_125AAC();
  v6 = sub_125DDC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Timers #response enabled – allowing ResultSet output to handle rendering", v7, 2u);
  }

  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *v8 = v0;
  v8[1] = sub_206B0;
  v9 = *(v0 + 24);

  return sub_20820(v9);
}

uint64_t sub_206B0()
{

  return _swift_task_switch(sub_207AC, 0, 0);
}

uint64_t sub_207AC()
{
  sub_1236CC();
  sub_1236BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20820(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_1254DC();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v3 = sub_124E4C();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  v4 = sub_125ABC();
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  v5 = sub_124FFC();
  v1[29] = v5;
  v1[30] = *(v5 - 8);
  v1[31] = swift_task_alloc();
  v6 = sub_12501C();
  v1[32] = v6;
  v1[33] = *(v6 - 8);
  v1[34] = swift_task_alloc();
  sub_5AE8(&qword_15F960, &qword_12BAF0);
  v1[35] = swift_task_alloc();
  v7 = sub_122F6C();
  v1[36] = v7;
  v1[37] = *(v7 - 8);
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_20AE4, 0, 0);
}

uint64_t sub_20AE4()
{
  v34 = v0;
  sub_12357C();
  sub_23B08((v0 + 112), *(v0 + 136));
  sub_123A7C();
  if (!v1)
  {
    sub_5BB0((v0 + 112));
    goto LABEL_5;
  }

  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = *(v0 + 280);
  sub_5BB0((v0 + 112));
  sub_122F2C();

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_5CA8(*(v0 + 280), &qword_15F960, &qword_12BAF0);
LABEL_5:

    v5 = *(v0 + 8);

    return v5();
  }

  v8 = *(v0 + 240);
  v7 = *(v0 + 248);
  v9 = *(v0 + 232);
  (*(*(v0 + 296) + 32))(*(v0 + 304), *(v0 + 280), *(v0 + 288));
  (*(v8 + 104))(v7, enum case for SiriTimeMeasurement.LogDescription.siriSuggestionsDonation(_:), v9);
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  v12 = *(v0 + 208);
  v13 = sub_5B30(v12, qword_15F700);
  (*(v11 + 16))(v10, v13, v12);
  mach_absolute_time();
  sub_12502C();
  sub_5AE8(&qword_15F958, &qword_127550);
  v14 = sub_123ABC();
  v15 = [v14 label];

  if (v15)
  {
    v17 = *(v0 + 192);
    v16 = *(v0 + 200);
    v18 = *(v0 + 184);
    sub_125B9C();

    sub_125BCC();

    v19 = sub_124E3C();
    v21 = v20;
    (*(v17 + 8))(v16, v18);
    *(v0 + 40) = &type metadata for String;
    *(v0 + 48) = &protocol witness table for String;
    *(v0 + 56) = &protocol witness table for String;
    *(v0 + 16) = v19;
    *(v0 + 24) = v21;
    sub_E3AC((v0 + 16), (v0 + 64));
    LOBYTE(v16) = swift_isUniquelyReferenced_nonNull_native();
    v33 = &_swiftEmptyDictionarySingleton;
    v22 = *(v0 + 88);
    v23 = sub_23C74(v0 + 64, v22);
    v24 = *(v22 - 8);
    v25 = swift_task_alloc();
    (*(v24 + 16))(v25, v23, v22);
    sub_22EA0(*v25, v25[1], 0x62614C72656D6974, 0xEA00000000006C65, v16, &v33);
    sub_5BB0((v0 + 64));
  }

  v27 = *(v0 + 168);
  v26 = *(v0 + 176);
  v28 = *(v0 + 160);
  *v26 = sub_123ABC();
  (*(v27 + 104))(v26, enum case for SiriSuggestions.Intent.inIntent(_:), v28);
  v29 = sub_E210(_swiftEmptyArrayStorage);
  *(v0 + 312) = v29;
  v30 = swift_task_alloc();
  *(v0 + 320) = v30;
  *v30 = v0;
  v30[1] = sub_20F94;
  v31 = *(v0 + 304);
  v32 = *(v0 + 176);

  return sub_11C83C(v31, v32, v29);
}

uint64_t sub_20F94()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_21108, 0, 0);
}

uint64_t sub_21108()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  sub_12500C();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21200(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = sub_125ABC();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = sub_124FFC();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v5 = sub_12501C();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  sub_124EDC();
  v2[22] = swift_task_alloc();
  v6 = sub_12392C();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v7 = sub_12368C();
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_2145C, 0, 0);
}

uint64_t sub_2145C()
{
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v28 = sub_5B30(v0[13], qword_15F700);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "SearchTimer.HandleIntentStrategy.makeFailureHandlingIntentResponse() called", v3, 2u);
  }

  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[15];
  v26 = v0[16];
  v7 = v0[14];
  v27 = v0[13];

  sub_12364C();
  sub_12391C();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[29] = sub_124DBC();
  sub_5AE8(&qword_15F958, &qword_127550);
  v8 = sub_123A9C();
  v0[30] = v8;
  (*(v4 + 104))(v5, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v26);
  (*(v7 + 16))(v6, v28, v27);
  mach_absolute_time();
  sub_12502C();
  v9 = [v8 matchedTimers];
  if (v9)
  {
    v10 = v9;
    sub_1257EC();
    v11 = sub_125C6C();

    if (v11 >> 62)
    {
      v12 = sub_1260FC();
    }

    else
    {
      v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    }

    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = [v8 unmatchedTimers];
  if (!v14)
  {
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_20:
    v29 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v25 = swift_task_alloc();
    v0[36] = v25;
    *v25 = v0;
    v25[1] = sub_21DEC;
    v19 = 0xEF726F7272652365;
    v20 = 0x73614272656D6974;
    goto LABEL_21;
  }

  v15 = v14;
  sub_1257EC();
  v16 = sub_125C6C();

  if (v16 >> 62)
  {
    v17 = sub_1260FC();
  }

  else
  {
    v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v13)
  {
    goto LABEL_20;
  }

  if (v17)
  {
    v29 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v18 = swift_task_alloc();
    v0[34] = v18;
    *v18 = v0;
    v18[1] = sub_21AE4;
    v19 = 0x800000000012C5A0;
    v20 = 0xD000000000000012;
LABEL_21:

    return (v29)(v20, v19, _swiftEmptyArrayStorage);
  }

LABEL_17:
  v21 = v0[12];
  v22 = swift_task_alloc();
  v0[31] = v22;
  *(v22 + 16) = v21;
  v23 = swift_task_alloc();
  v0[32] = v23;
  *v23 = v0;
  v23[1] = sub_218EC;

  return sub_104D80(sub_23C6C, v22);
}

uint64_t sub_218EC(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[33] = v1;

  if (v1)
  {
    v4 = sub_22354;
  }

  else
  {
    v4 = sub_21A24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_21A24()
{
  v1 = v0[3];
  v0[38] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_220F4;
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[21];
  v6 = v0[11];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_21AE4(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[35] = v1;

  if (v1)
  {
    v4 = sub_21CC0;
  }

  else
  {
    v4 = sub_21C00;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_21C00()
{
  v1 = v0[6];
  v0[38] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_220F4;
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[21];
  v6 = v0[11];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_21CC0()
{

  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_21DEC(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v3[37] = v1;

  if (v1)
  {
    v4 = sub_21FC8;
  }

  else
  {
    v4 = sub_21F08;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_21F08()
{
  v1 = v0[9];
  v0[38] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_220F4;
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[21];
  v6 = v0[11];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_21FC8()
{

  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_220F4()
{
  v2 = *(*v1 + 304);
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_22480;
  }

  else
  {
    v3 = sub_22220;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_22220()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 192);
  v11 = *(v0 + 184);
  v12 = *(v0 + 208);
  v6 = *(v0 + 168);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v4, v11);
  (*(v3 + 8))(v2, v12);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22354()
{

  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22480()
{

  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

void sub_225B8(uint64_t a1)
{
  sub_5AE8(&qword_15F958, &qword_127550);
  v4 = sub_123ABC();
  sub_12568C();
  sub_1258DC();
  v3 = v2;

  *a1 = v3;
  *(a1 + 8) = 0;
}

uint64_t sub_2263C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_5D08;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_22700(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5D08;

  return sub_204D0(a1, a2);
}

uint64_t sub_227A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5D08;

  return sub_21200(a1, a2);
}

uint64_t sub_22848(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_228E4, 0, 0);
}

uint64_t sub_228E4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_12532C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_A85C8(v3, v1, v2);
  sub_5CA8(v2, &qword_15FFB0, &unk_1270A0);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_22A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_15F170, &unk_126E00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_22A8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22AAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22AAC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_5AE8(&qword_15F940, &unk_127410);
  v10 = *(sub_124F4C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_124F4C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_22C84(uint64_t a1, uint64_t a2)
{
  v3 = sub_12575C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_23BBC(&qword_15F8E0, 255, &type metadata accessor for TimerGrouping, &protocol conformance descriptor for TimerGrouping), v7 = sub_125B6C(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v17 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v16 = ~v8;
    v10 = v4 + 16;
    v11 = *(v4 + 16);
    v12 = *(v10 + 56);
    v13 = (v10 - 8);
    do
    {
      v11(v6, *(a2 + 48) + v12 * v9, v3);
      sub_23BBC(&qword_15F8E8, 255, &type metadata accessor for TimerGrouping, &protocol conformance descriptor for TimerGrouping);
      v14 = sub_125B7C();
      (*v13)(v6, v3);
      if (v14)
      {
        break;
      }

      v9 = (v9 + 1) & v16;
    }

    while (((*(v17 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

_OWORD *sub_22EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v28 = &type metadata for String;
  v29 = &protocol witness table for String;
  v30 = &protocol witness table for String;
  *&v27 = a1;
  *(&v27 + 1) = a2;
  v10 = *a6;
  v12 = sub_8AD8(a3, a4);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a5 & 1) != 0)
  {
LABEL_7:
    v18 = *a6;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 48 * v12);
      sub_5BB0(v19);
      return sub_E3AC(&v27, v19);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a5 & 1) == 0)
  {
    sub_AB638();
    goto LABEL_7;
  }

  sub_AA984(v15, a5 & 1);
  v21 = sub_8AD8(a3, a4);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_1261FC();
    __break(1u);
    return result;
  }

  v12 = v21;
  v18 = *a6;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = sub_23C74(&v27, &type metadata for String);
  __chkstk_darwin(v23);
  v25 = (&v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  sub_234E4(v12, a3, a4, *v25, v25[1], v18);

  return sub_5BB0(&v27);
}

_OWORD *sub_2309C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, double a5)
{
  *&v23 = a5;
  v24 = &type metadata for Double;
  v25 = &protocol witness table for Double;
  v26 = &protocol witness table for Double;
  v9 = *a4;
  v11 = sub_8AD8(a1, a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 48 * v11);
      sub_5BB0(v18);
      return sub_E3AC(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    sub_AB638();
    goto LABEL_7;
  }

  sub_AA984(v14, a3 & 1);
  v20 = sub_8AD8(a1, a2);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1261FC();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = sub_23C74(&v23, &type metadata for Double);
  sub_236B8(v11, a1, a2, v17, *v22);

  return sub_5BB0(&v23);
}

_OWORD *sub_23204(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  *&v23 = a1;
  v24 = &type metadata for Int;
  v25 = &protocol witness table for Int;
  v26 = &protocol witness table for Int;
  v9 = *a5;
  v11 = sub_8AD8(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 48 * v11);
      sub_5BB0(v18);
      return sub_E3AC(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_AB638();
    goto LABEL_7;
  }

  sub_AA984(v14, a4 & 1);
  v20 = sub_8AD8(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1261FC();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = sub_23C74(&v23, &type metadata for Int);
  sub_2361C(v11, a2, a3, *v22, v17);

  return sub_5BB0(&v23);
}

_OWORD *sub_23374(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOBYTE(v23) = a1;
  v24 = &type metadata for Bool;
  v25 = &protocol witness table for Bool;
  v26 = &protocol witness table for Bool;
  v9 = *a5;
  v11 = sub_8AD8(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 48 * v11);
      sub_5BB0(v18);
      return sub_E3AC(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_AB638();
    goto LABEL_7;
  }

  sub_AA984(v14, a4 & 1);
  v20 = sub_8AD8(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1261FC();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = sub_23C74(&v23, &type metadata for Bool);
  sub_23580(v11, a2, a3, *v22, v17);

  return sub_5BB0(&v23);
}

_OWORD *sub_234E4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = &type metadata for String;
  v14 = &protocol witness table for String;
  v15 = &protocol witness table for String;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_E3AC(&v12, (a6[7] + 48 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_23580(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = &type metadata for Bool;
  v13 = &protocol witness table for Bool;
  v14 = &protocol witness table for Bool;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_E3AC(&v11, (a5[7] + 48 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_2361C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = &type metadata for Int;
  v13 = &protocol witness table for Int;
  v14 = &protocol witness table for Int;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_E3AC(&v11, (a5[7] + 48 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_236B8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  *&v11 = a5;
  v12 = &type metadata for Double;
  v13 = &protocol witness table for Double;
  v14 = &protocol witness table for Double;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_E3AC(&v11, (a4[7] + 48 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_23754()
{
  v1 = sub_123C1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_2382C()
{
  v2 = *(sub_123C1C() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23934;

  return sub_1DD6C(v4, v0 + v3, v5);
}

uint64_t sub_23934(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_23A30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_15F170, &unk_126E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_23B08(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_23B4C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23BBC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23C18()
{
  result = qword_15F950;
  if (!qword_15F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15F950);
  }

  return result;
}

uint64_t sub_23C74(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_23D34(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
{
  v7 = sub_124EDC();
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_124ECC();
  result = a3(v9, 0);
  *a4 = result;
  return result;
}

uint64_t type metadata accessor for SetTimerAttributeCATsSimple(uint64_t a1)
{
  result = qword_15F968;
  if (!qword_15F968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E64(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_23E84, 0, 0);
}

uint64_t sub_23E84()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_126CB0;
  strcpy((v2 + 32), "speakableTimer");
  *(v2 + 47) = -18;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for TimerTimer(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v6 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_23FD8;

  return v6(0xD000000000000024, 0x800000000012CA70, v2);
}

uint64_t sub_23FD8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_24130, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_24130()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24194(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_241B8, 0, 0);
}

uint64_t sub_241B8()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_1270C0;
  *(v2 + 32) = 0x6954746567726174;
  *(v2 + 40) = 0xEB0000000072656DLL;
  if (v1)
  {
    v3 = type metadata accessor for TimerTimer(0);
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = v0[3];
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "updatedTimer");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
  v6 = 0;
  if (v5)
  {
    v6 = type metadata accessor for TimerTimer(0);
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  *(v2 + 96) = v5;
  *(v2 + 120) = v6;
  v9 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_24360;

  return v9(0xD000000000000027, 0x800000000012CA40, v2);
}

uint64_t sub_24360(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_244B8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_244B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2451C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v12 = sub_124E5C();
  (*(v6 + 8))(a2, v5);
  sub_60DC(a1);
  return v12;
}

uint64_t sub_246A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_124EDC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v4 + 16))(v6, a2, v3);
  v7 = sub_124E6C();
  (*(v4 + 8))(a2, v3);
  return v7;
}

uint64_t sub_247CC()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15F9B8);
  sub_5B30(v0, qword_15F9B8);
  return sub_1257AC();
}

uint64_t sub_24818(uint64_t a1, uint64_t a2)
{
  v2[33] = a1;
  v2[34] = a2;
  v3 = sub_123B3C();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  sub_5AE8(&unk_15F170, &unk_126E00);
  v2[38] = swift_task_alloc();
  v2[39] = type metadata accessor for SetTimerAttributeHandledOnWatchParameters(0);
  v2[40] = swift_task_alloc();
  sub_5AE8(&qword_15F9E0, &unk_127710);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v4 = sub_1250BC();
  v2[43] = v4;
  v2[44] = *(v4 - 8);
  v2[45] = swift_task_alloc();
  v5 = sub_12392C();
  v2[46] = v5;
  v2[47] = *(v5 - 8);
  v2[48] = swift_task_alloc();
  v6 = sub_12368C();
  v2[49] = v6;
  v2[50] = *(v6 - 8);
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v7 = sub_1254DC();
  v2[53] = v7;
  v2[54] = *(v7 - 8);
  v2[55] = swift_task_alloc();
  v8 = sub_125ABC();
  v2[56] = v8;
  v2[57] = *(v8 - 8);
  v2[58] = swift_task_alloc();
  v9 = sub_124FFC();
  v2[59] = v9;
  v2[60] = *(v9 - 8);
  v2[61] = swift_task_alloc();
  v10 = sub_12501C();
  v2[62] = v10;
  v2[63] = *(v10 - 8);
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  sub_5AE8(&qword_15F960, &qword_12BAF0);
  v2[66] = swift_task_alloc();
  v11 = sub_122F6C();
  v2[67] = v11;
  v2[68] = *(v11 - 8);
  v2[69] = swift_task_alloc();

  return _swift_task_switch(sub_24CE0, 0, 0);
}

uint64_t sub_24CE0()
{
  if (qword_15EDE8 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[56], qword_15F9B8);
  v0[70] = v1;
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SetTimerAttribute.HandleIntentStrategy.makeIntentHandledResponse() called", v4, 2u);
  }

  v0[71] = sub_5AE8(&qword_15F9D8, &qword_1276F8);
  v5 = sub_123A9C();
  v6 = [v5 updatedTimer];
  v0[72] = v6;

  if (v6)
  {
    sub_12357C();
    sub_23B08(v0 + 2, v0[5]);
    sub_123A7C();
    if (!v7)
    {
      sub_5BB0(v0 + 2);
      goto LABEL_15;
    }

    v8 = v0[68];
    v9 = v0[67];
    v10 = v0[66];
    sub_5BB0(v0 + 2);
    sub_122F2C();

    if ((*(v8 + 48))(v10, 1, v9) == 1)
    {
      sub_5CA8(v0[66], &qword_15F960, &qword_12BAF0);
LABEL_15:
      v17 = v0[72];
      v18 = v0[48];
      v19 = sub_123ABC();
      v0[75] = v19;
      sub_12361C();
      v0[76] = sub_5AE8(&qword_160810, &unk_127420);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_126EB0;
      *(inited + 32) = v17;
      v21 = v17;
      sub_FF26C(inited, v18);
      swift_setDeallocating();
      swift_arrayDestroy();
      v22 = [v19 targetTimer];
      if (v22)
      {
        v23 = v22;
        v24 = sub_113D6C(0, 0);
      }

      else
      {
        v24 = 0;
      }

      v0[77] = v24;
      v36 = v0[72];
      v0[78] = sub_113D6C(0, 0);
      sub_12573C();
      sub_12572C();
      v37 = v0[15];
      v38 = v0[16];
      sub_23B08(v0 + 12, v37);
      v39 = [v36 identifier];
      if (v39)
      {
        v40 = v39;
        v41 = sub_125B9C();
        v43 = v42;
      }

      else
      {
        v41 = 0;
        v43 = 0;
      }

      v0[79] = v43;
      v44 = swift_task_alloc();
      v0[80] = v44;
      *v44 = v0;
      v44[1] = sub_25844;

      return dispatch thunk of SessionManaging.sessionIDString(for:)(v41, v43, v37, v38);
    }

    v26 = v0[60];
    v25 = v0[61];
    v28 = v0[58];
    v27 = v0[59];
    v29 = v0[57];
    v31 = v0[54];
    v30 = v0[55];
    v46 = v0[53];
    v45 = v0[56];
    (*(v0[68] + 32))(v0[69], v0[66], v0[67]);
    (*(v26 + 104))(v25, enum case for SiriTimeMeasurement.LogDescription.siriSuggestionsDonation(_:), v27);
    (*(v29 + 16))(v28, v1, v45);
    mach_absolute_time();
    sub_12502C();
    *v30 = sub_123ABC();
    (*(v31 + 104))(v30, enum case for SiriSuggestions.Intent.inIntent(_:), v46);
    v32 = sub_E210(_swiftEmptyArrayStorage);
    v0[73] = v32;
    v33 = swift_task_alloc();
    v0[74] = v33;
    *v33 = v0;
    v33[1] = sub_25420;
    v34 = v0[69];
    v35 = v0[55];

    return sub_11C83C(v34, v35, v32);
  }

  else
  {
    v11 = sub_125AAC();
    v12 = sub_125DEC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Intent Handled dialog called but no timer was updated", v13, 2u);
    }

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v14 = 5;
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_25420()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 424);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_255C8, 0, 0);
}

uint64_t sub_255C8()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[65];
  v5 = v0[62];
  v6 = v0[63];
  sub_12500C();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[72];
  v8 = v0[48];
  v9 = sub_123ABC();
  v0[75] = v9;
  sub_12361C();
  v0[76] = sub_5AE8(&qword_160810, &unk_127420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_126EB0;
  *(inited + 32) = v7;
  v11 = v7;
  sub_FF26C(inited, v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = [v9 targetTimer];
  if (v12)
  {
    v13 = v12;
    v14 = sub_113D6C(0, 0);
  }

  else
  {
    v14 = 0;
  }

  v0[77] = v14;
  v15 = v0[72];
  v0[78] = sub_113D6C(0, 0);
  sub_12573C();
  sub_12572C();
  v16 = v0[15];
  v17 = v0[16];
  sub_23B08(v0 + 12, v16);
  v18 = [v15 identifier];
  if (v18)
  {
    v19 = v18;
    v20 = sub_125B9C();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v0[79] = v22;
  v23 = swift_task_alloc();
  v0[80] = v23;
  *v23 = v0;
  v23[1] = sub_25844;

  return dispatch thunk of SessionManaging.sessionIDString(for:)(v20, v22, v16, v17);
}

uint64_t sub_25844(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 648) = a1;
  *(v3 + 656) = a2;

  return _swift_task_switch(sub_25994, 0, 0);
}

uint64_t sub_25994()
{
  v1 = *(v0 + 656);
  v88 = *(v0 + 560);
  v3 = *(v0 + 480);
  v2 = *(v0 + 488);
  v4 = *(v0 + 464);
  v5 = *(v0 + 456);
  v82 = *(v0 + 472);
  v85 = *(v0 + 448);
  sub_5BB0((v0 + 96));
  sub_12524C();
  sub_12523C();
  sub_12522C();

  sub_23B08((v0 + 136), *(v0 + 160));
  v6 = sub_1235DC() & (v1 != 0);
  sub_5BB0((v0 + 136));
  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v82);
  (*(v5 + 16))(v4, v88, v85);
  mach_absolute_time();
  sub_12502C();
  sub_12523C();
  sub_12522C();

  sub_23B08((v0 + 176), *(v0 + 200));
  v7 = sub_1235DC();
  sub_5BB0((v0 + 176));
  if ((v7 & 1) == 0 || v6)
  {
    v36 = *(v0 + 352);
    v35 = *(v0 + 360);
    v37 = *(v0 + 344);
    sub_1250AC();
    v38 = sub_12504C();
    (*(v36 + 8))(v35, v37);
    if (!v38)
    {

      v41 = sub_125AAC();
      v42 = sub_125DFC();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_0, v41, v42, "[SetTimerAttribute.HandleIntentStrategy.makeIntentHandledResponse] Using non-watchOS pattern", v43, 2u);
      }

      if (qword_15EEC8 != -1)
      {
        swift_once();
      }

      v44 = *(v0 + 616);
      sub_5AE8(&qword_15F180, &unk_126E10);
      v45 = swift_allocObject();
      *(v0 + 728) = v45;
      *(v45 + 16) = xmmword_1270C0;
      *(v45 + 32) = 0x6954746567726174;
      *(v45 + 40) = 0xEB0000000072656DLL;
      v46 = 0;
      if (v44)
      {
        v46 = type metadata accessor for TimerTimer(0);
      }

      else
      {
        *(v45 + 56) = 0;
        *(v45 + 64) = 0;
      }

      *(v0 + 736) = v44;
      v75 = *(v0 + 624);
      *(v45 + 48) = v44;
      *(v45 + 72) = v46;
      strcpy((v45 + 80), "updatedTimer");
      *(v45 + 93) = 0;
      *(v45 + 94) = -5120;
      *(v45 + 120) = type metadata accessor for TimerTimer(0);
      *(v45 + 96) = v75;
      v76 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      swift_retain_n();
      swift_retain_n();
      v77 = swift_task_alloc();
      *(v0 + 744) = v77;
      *v77 = v0;
      v77[1] = sub_2700C;
      v31 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v76);
      v33 = 0x800000000012CBB0;
      v32 = 0xD000000000000019;
      v34 = v45;
      goto LABEL_35;
    }

    if (v6)
    {
      v39 = *(v0 + 336);
      v40 = sub_12503C();
      (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
    }

    else
    {
      v56 = *(v0 + 336);
      sub_5AE8(&qword_15F940, &unk_127410);
      v57 = *(sub_124F4C() - 8);
      v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_126CB0;
      sub_1135FC(v59 + v58);
      sub_12521C();
      v60 = enum case for SiriTimePluginModel.timerMulti(_:);
      v61 = sub_12503C();
      v62 = *(v61 - 8);
      (*(v62 + 104))(v56, v60, v61);
      (*(v62 + 56))(v56, 0, 1, v61);
      if (!v1)
      {
        if (qword_15EEC0 != -1)
        {
          swift_once();
        }

        v63 = *(v0 + 624);

        v64 = swift_task_alloc();
        *(v0 + 696) = v64;
        *v64 = v0;
        v65 = sub_26980;
        goto LABEL_26;
      }
    }

    if (qword_15EEC0 != -1)
    {
      swift_once();
    }

    v63 = *(v0 + 624);

    v64 = swift_task_alloc();
    *(v0 + 664) = v64;
    *v64 = v0;
    v65 = sub_26604;
LABEL_26:
    v64[1] = v65;
    v66 = *(v0 + 616);

    return sub_24194(v66, v63);
  }

  v8 = sub_125AAC();
  v9 = sub_125DFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "[SetTimerAttribute.HandleIntentStrategy.makeIntentHandledResponse] Using watchOS pattern", v10, 2u);
  }

  v11 = *(v0 + 576);

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_126EB0;
  *(v12 + 32) = v11;
  v13 = v11;
  v14 = sub_648C8(v12, 13);
  *(v0 + 784) = v14;

  if (v14)
  {
    v15 = objc_opt_self();
    *(v0 + 256) = 0;
    v16 = [v15 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:v0 + 256];
    v17 = *(v0 + 256);
    if (v16)
    {
      v18 = sub_122EFC();
      v20 = v19;

      *(v0 + 792) = v18;
      *(v0 + 800) = v20;
      if (qword_15EEC8 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 616);
      v22 = *(v0 + 312);
      v23 = *(v0 + 320);
      v24 = *(v0 + 304);
      v91 = *(v0 + 624);
      *v23 = 0;
      *(v23 + 1) = 0;
      v25 = *(v22 + 24);
      v26 = sub_124E4C();
      v27 = *(*(v26 - 8) + 56);
      v27(&v23[v25], 1, 1, v26);
      sub_122EEC(0);
      sub_124E1C();
      v27(v24, 0, 1, v26);
      sub_22A1C(v24, &v23[v25]);
      *v23 = v21;
      *(v23 + 1) = v91;

      v28 = sub_7DB10();
      *(v0 + 808) = v28;
      v29 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v30 = swift_task_alloc();
      *(v0 + 816) = v30;
      *v30 = v0;
      v30[1] = sub_277AC;
      v31 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v29);
      v32 = 0xD000000000000020;
      v33 = 0x800000000012CBD0;
      v34 = v28;
LABEL_35:

      return v31(v32, v33, v34);
    }

    v68 = *(v0 + 600);
    v69 = *(v0 + 576);
    v70 = *(v0 + 504);
    v79 = *(v0 + 496);
    v81 = *(v0 + 512);
    v71 = *(v0 + 400);
    v84 = *(v0 + 392);
    v87 = *(v0 + 416);
    v72 = *(v0 + 376);
    v90 = *(v0 + 368);
    v93 = *(v0 + 384);
    v73 = v17;
    sub_122E8C();

    swift_willThrow();

    (*(v70 + 8))(v81, v79);
    (*(v71 + 8))(v87, v84);
    (*(v72 + 8))(v93, v90);
  }

  else
  {
    v47 = sub_125AAC();
    v48 = sub_125DFC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "[SetTimerAttribute.HandleIntentStrategy.makeIntentHandledResponse] Could not get timer action from timer.", v49, 2u);
    }

    v50 = *(v0 + 600);
    v51 = *(v0 + 576);
    v52 = *(v0 + 504);
    v78 = *(v0 + 496);
    v80 = *(v0 + 512);
    v53 = *(v0 + 400);
    v83 = *(v0 + 392);
    v86 = *(v0 + 416);
    v54 = *(v0 + 376);
    v89 = *(v0 + 368);
    v92 = *(v0 + 384);

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v55 = 1;
    swift_willThrow();

    (*(v52 + 8))(v80, v78);
    (*(v53 + 8))(v86, v83);
    (*(v54 + 8))(v92, v89);
  }

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_26604(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 672) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_28044, 0, 0);
  }

  else
  {

    v4[85] = a1;
    v6 = swift_task_alloc();
    v4[86] = v6;
    *v6 = v5;
    v6[1] = sub_2681C;
    v7 = v4[82];
    v8 = v4[81];
    v9 = v4[64];
    v10 = v4[52];
    v11 = v4[48];
    v12 = v4[33];

    return DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(v12, v10, v11, v9, v8, v7, 0, 0);
  }
}

uint64_t sub_2681C()
{
  v1 = *(*v0 + 680);

  return _swift_task_switch(sub_2AFF4, 0, 0);
}

uint64_t sub_26980(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 704) = a1;
  *(v3 + 712) = v1;

  if (v1)
  {
    v4 = sub_28254;
  }

  else
  {
    v4 = sub_26AEC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_26AEC()
{
  v1 = *(v0 + 328);
  sub_2AEC8(*(v0 + 336), v1);
  v2 = sub_12503C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 328);
  if (v4 == 1)
  {
    sub_5CA8(*(v0 + 328), &qword_15F9E0, &unk_127710);
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0;
  }

  else
  {
    *(v0 + 240) = v2;
    *(v0 + 248) = sub_2AF38();
    v6 = sub_23B4C((v0 + 216));
    (*(v3 + 32))(v6, v5, v2);
  }

  v7 = swift_task_alloc();
  *(v0 + 720) = v7;
  *v7 = v0;
  v7[1] = sub_26CAC;
  v8 = *(v0 + 512);
  v9 = *(v0 + 416);
  v10 = *(v0 + 384);
  v11 = *(v0 + 264);

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v11, v9, v10, v0 + 216, v8, 0, 0, 0);
}

uint64_t sub_26CAC()
{
  v1 = *v0;
  v2 = *(*v0 + 704);

  sub_5CA8(v1 + 216, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_26E0C, 0, 0);
}

uint64_t sub_26E0C()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 336);

  sub_5CA8(v2, &qword_15F9E0, &unk_127710);
  v3 = *(v0 + 416);
  v4 = *(v0 + 392);
  v5 = *(v0 + 400);
  v6 = *(v0 + 376);
  v7 = *(v0 + 384);
  v8 = *(v0 + 368);
  (*(*(v0 + 504) + 8))(*(v0 + 512), *(v0 + 496));
  (*(v5 + 8))(v3, v4);
  (*(v6 + 8))(v7, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2700C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 752) = a1;
  *(v3 + 760) = v1;

  if (v1)
  {
    v4 = sub_273CC;
  }

  else
  {
    v4 = sub_27178;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_27178()
{
  v1 = v0;

  v2 = swift_task_alloc();
  v1[96] = v2;
  *v2 = v1;
  v2[1] = sub_2726C;
  v3 = v1[64];
  v4 = v1[52];
  v5 = v1[48];
  v6 = v1[33];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v4, v5, v3, 0);
}

uint64_t sub_2726C()
{
  v2 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v3 = sub_28464;
  }

  else
  {
    v3 = sub_275C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_273CC()
{
  v1 = v0[75];
  v2 = v0[72];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[62];
  v6 = v0[49];
  v7 = v0[50];
  v8 = v0[47];
  v13 = v0[48];
  v11 = v0[52];
  v12 = v0[46];

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v11, v6);
  (*(v8 + 8))(v13, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_275C8()
{
  v1 = *(v0 + 576);

  v2 = *(v0 + 416);
  v3 = *(v0 + 392);
  v4 = *(v0 + 400);
  v5 = *(v0 + 376);
  v6 = *(v0 + 384);
  v7 = *(v0 + 368);
  (*(*(v0 + 504) + 8))(*(v0 + 512), *(v0 + 496));
  (*(v4 + 8))(v2, v3);
  (*(v5 + 8))(v6, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_277AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 824) = a1;
  *(v3 + 832) = v1;

  if (v1)
  {
    v4 = sub_27C24;
  }

  else
  {
    v4 = sub_27918;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_27918()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[49];
  v4 = v0[50];
  v5 = v0[48];
  sub_2AF90(v0[40]);
  (*(v4 + 16))(v1, v2, v3);
  *(swift_task_alloc() + 16) = v5;
  sub_123B0C();

  v6 = swift_task_alloc();
  v0[105] = v6;
  *v6 = v0;
  v6[1] = sub_27A70;
  v7 = v0[64];
  v8 = v0[37];
  v9 = v0[33];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v9, v8, v7);
}

uint64_t sub_27A70()
{
  v2 = *v1;
  *(*v1 + 848) = v0;

  v3 = v2[103];
  (*(v2[36] + 8))(v2[37], v2[35]);

  if (v0)
  {
    v4 = sub_2865C;
  }

  else
  {
    v4 = sub_27E44;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_27C24()
{
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[75];
  v5 = v0[63];
  v10 = v0[72];
  v11 = v0[62];
  v6 = v0[50];
  v12 = v0[64];
  v13 = v0[49];
  v7 = v0[47];
  v16 = v0[48];
  v14 = v0[52];
  v15 = v0[46];
  sub_2AF90(v0[40]);

  sub_E498(v2, v1);

  (*(v5 + 8))(v12, v11);
  (*(v6 + 8))(v14, v13);
  (*(v7 + 8))(v16, v15);

  v8 = v0[1];

  return v8();
}

uint64_t sub_27E44()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 576);

  sub_E498(v2, v1);

  v5 = *(v0 + 416);
  v6 = *(v0 + 392);
  v7 = *(v0 + 400);
  v8 = *(v0 + 376);
  v9 = *(v0 + 384);
  v10 = *(v0 + 368);
  (*(*(v0 + 504) + 8))(*(v0 + 512), *(v0 + 496));
  (*(v7 + 8))(v5, v6);
  (*(v8 + 8))(v9, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_28044()
{
  v1 = *(v0 + 576);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v0 + 496);
  v5 = *(v0 + 400);
  v10 = *(v0 + 392);
  v11 = *(v0 + 416);
  v6 = *(v0 + 376);
  v12 = *(v0 + 368);
  v13 = *(v0 + 384);
  v7 = *(v0 + 336);

  sub_5CA8(v7, &qword_15F9E0, &unk_127710);
  (*(v3 + 8))(v2, v4);
  (*(v5 + 8))(v11, v10);
  (*(v6 + 8))(v13, v12);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_28254()
{
  v1 = *(v0 + 576);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v0 + 496);
  v5 = *(v0 + 400);
  v10 = *(v0 + 392);
  v11 = *(v0 + 416);
  v6 = *(v0 + 376);
  v12 = *(v0 + 368);
  v13 = *(v0 + 384);
  v7 = *(v0 + 336);

  sub_5CA8(v7, &qword_15F9E0, &unk_127710);
  (*(v3 + 8))(v2, v4);
  (*(v5 + 8))(v11, v10);
  (*(v6 + 8))(v13, v12);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_28464()
{
  v1 = *(v0 + 576);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v0 + 496);
  v5 = *(v0 + 392);
  v6 = *(v0 + 400);
  v7 = *(v0 + 376);
  v12 = *(v0 + 384);
  v10 = *(v0 + 416);
  v11 = *(v0 + 368);

  (*(v3 + 8))(v2, v4);
  (*(v6 + 8))(v10, v5);
  (*(v7 + 8))(v12, v11);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2865C()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 576);
  v5 = *(v0 + 504);
  v10 = *(v0 + 496);
  v11 = *(v0 + 512);
  v6 = *(v0 + 400);
  v12 = *(v0 + 392);
  v13 = *(v0 + 416);
  v7 = *(v0 + 376);
  v14 = *(v0 + 368);
  v15 = *(v0 + 384);

  sub_E498(v2, v1);

  (*(v5 + 8))(v11, v10);
  (*(v6 + 8))(v13, v12);
  (*(v7 + 8))(v15, v14);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2886C(uint64_t a1, uint64_t a2)
{
  v3 = sub_5AE8(&unk_162190, &unk_128500);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_12392C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  return sub_123B1C();
}

uint64_t sub_2896C(uint64_t a1, uint64_t a2)
{
  v2[21] = a1;
  v2[22] = a2;
  v3 = sub_125ABC();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v4 = sub_124FFC();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v5 = sub_12501C();
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  sub_124EDC();
  v2[32] = swift_task_alloc();
  v6 = sub_12392C();
  v2[33] = v6;
  v2[34] = *(v6 - 8);
  v2[35] = swift_task_alloc();
  v7 = sub_12368C();
  v2[36] = v7;
  v2[37] = *(v7 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_28BD4, 0, 0);
}

uint64_t sub_28BD4()
{
  if (qword_15EDE8 != -1)
  {
    swift_once();
  }

  v36 = sub_5B30(v0[23], qword_15F9B8);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "SetTimerAttribute.HandleIntentStrategy.makeFailureHandlingIntentResponse() called", v3, 2u);
  }

  sub_5AE8(&qword_15F9D8, &qword_1276F8);
  v4 = sub_123ABC();
  v0[40] = v4;
  v34 = v4;
  v5 = [v4 toDuration];
  if (v5)
  {
    v6 = v5;
    [v5 doubleValue];
    v8 = v7;

    v35 = v8 > 86400.0;
  }

  else
  {
    v35 = 0;
  }

  v9 = v0[27];
  v10 = v0[28];
  v11 = v0[25];
  v12 = v0[26];
  v13 = v0[23];
  v14 = v0[24];
  sub_12364C();
  sub_12391C();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[41] = sub_124DBC();
  (*(v9 + 104))(v10, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v12);
  (*(v14 + 16))(v11, v36, v13);
  mach_absolute_time();
  sub_12502C();
  v15 = sub_123A9C();
  v16 = sub_12551C();

  if (v16 <= 99)
  {
    if (v16 < 7)
    {
      v37 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v17 = swift_task_alloc();
      v0[54] = v17;
      *v17 = v0;
      v18 = sub_2A0B4;
LABEL_11:
      v17[1] = v18;
      v19 = 0xEF726F7272652365;
      v20 = 0x73614272656D6974;
LABEL_12:

      return (v37)(v20, v19, _swiftEmptyArrayStorage);
    }

LABEL_21:
    v0[20] = v16;

    return sub_1261EC();
  }

  if (v16 == 100)
  {
    v37 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v25 = swift_task_alloc();
    v0[45] = v25;
    *v25 = v0;
    v25[1] = sub_29474;
    v19 = 0x800000000012C5A0;
    v20 = 0xD000000000000012;
    goto LABEL_12;
  }

  if (v16 == 102)
  {
    if (v35)
    {
      type metadata accessor for CreateTimerCATPatternsExecutor(0);
      sub_124ECC();
      v0[47] = sub_124DBC();
      v26 = "deleteTimer#handledMulti";
      v37 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v27 = swift_task_alloc();
      v0[48] = v27;
      *v27 = v0;
      v27[1] = sub_29780;
      v20 = 0xD000000000000020;
    }

    else
    {
      v28 = [v34 toLabel];
      if (!v28)
      {
        v37 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
        v17 = swift_task_alloc();
        v0[52] = v17;
        *v17 = v0;
        v18 = sub_29DA8;
        goto LABEL_11;
      }

      v29 = v0[38];
      v30 = v0[39];
      v31 = v0[36];
      v32 = v0[37];

      sub_12361C();
      (*(v32 + 8))(v30, v31);
      (*(v32 + 32))(v30, v29, v31);
      if (qword_15EEC8 != -1)
      {
        swift_once();
      }

      v26 = "esponse(rchRecord:)";
      v37 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v33 = swift_task_alloc();
      v0[50] = v33;
      *v33 = v0;
      v33[1] = sub_29A9C;
      v20 = 0xD00000000000001ELL;
    }

    v19 = v26 | 0x8000000000000000;
    goto LABEL_12;
  }

  if (v16 != 101)
  {
    goto LABEL_21;
  }

  v22 = v0[22];
  v23 = swift_task_alloc();
  v0[42] = v23;
  *(v23 + 16) = v22;
  v24 = swift_task_alloc();
  v0[43] = v24;
  *v24 = v0;
  v24[1] = sub_2927C;

  return sub_104D80(sub_2AEC0, v23);
}

uint64_t sub_2927C(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[44] = v1;

  if (v1)
  {
    v4 = sub_2A62C;
  }

  else
  {
    v4 = sub_293B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_293B4()
{
  v1 = v0[3];
  v0[56] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = sub_2A3C0;
  v3 = v0[39];
  v4 = v0[35];
  v5 = v0[31];
  v6 = v0[21];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_29474(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[46] = v1;

  if (v1)
  {
    v4 = sub_29650;
  }

  else
  {
    v4 = sub_29590;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_29590()
{
  v1 = v0[6];
  v0[56] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = sub_2A3C0;
  v3 = v0[39];
  v4 = v0[35];
  v5 = v0[31];
  v6 = v0[21];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_29650()
{

  v1 = *(v0 + 312);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 264);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29780(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v3[49] = v1;

  if (v1)
  {
    v4 = sub_29964;
  }

  else
  {

    v4 = sub_298A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_298A4()
{
  v1 = v0[9];
  v0[56] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = sub_2A3C0;
  v3 = v0[39];
  v4 = v0[35];
  v5 = v0[31];
  v6 = v0[21];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_29964()
{
  v1 = v0[40];

  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[33];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_29A9C(uint64_t a1)
{
  v3 = *v2;
  v3[11] = v2;
  v3[12] = a1;
  v3[13] = v1;
  v3[51] = v1;

  if (v1)
  {
    v4 = sub_29C78;
  }

  else
  {
    v4 = sub_29BB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_29BB8()
{
  v1 = v0[12];
  v0[56] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = sub_2A3C0;
  v3 = v0[39];
  v4 = v0[35];
  v5 = v0[31];
  v6 = v0[21];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_29C78()
{

  v1 = *(v0 + 312);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 264);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29DA8(uint64_t a1)
{
  v3 = *v2;
  v3[14] = v2;
  v3[15] = a1;
  v3[16] = v1;
  v3[53] = v1;

  if (v1)
  {
    v4 = sub_29F84;
  }

  else
  {
    v4 = sub_29EC4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_29EC4()
{
  v1 = v0[15];
  v0[56] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = sub_2A3C0;
  v3 = v0[39];
  v4 = v0[35];
  v5 = v0[31];
  v6 = v0[21];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_29F84()
{

  v1 = *(v0 + 312);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 264);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2A0B4(uint64_t a1)
{
  v3 = *v2;
  v3[17] = v2;
  v3[18] = a1;
  v3[19] = v1;
  v3[55] = v1;

  if (v1)
  {
    v4 = sub_2A290;
  }

  else
  {
    v4 = sub_2A1D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_2A1D0()
{
  v1 = v0[18];
  v0[56] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = sub_2A3C0;
  v3 = v0[39];
  v4 = v0[35];
  v5 = v0[31];
  v6 = v0[21];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_2A290()
{

  v1 = *(v0 + 312);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 264);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2A3C0()
{
  v2 = *(*v1 + 448);
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_2A75C;
  }

  else
  {
    v3 = sub_2A4EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_2A4EC()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  v12 = *(v0 + 288);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v11 = *(v0 + 264);
  v6 = *(v0 + 240);
  v7 = *(v0 + 248);
  v8 = *(v0 + 232);

  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v5, v11);
  (*(v3 + 8))(v2, v12);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2A62C()
{

  v1 = *(v0 + 312);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 264);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2A75C()
{
  v1 = *(v0 + 448);

  v2 = *(v0 + 312);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v6 = *(v0 + 272);
  v5 = *(v0 + 280);
  v7 = *(v0 + 264);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

void sub_2A894(uint64_t a1)
{
  sub_5AE8(&qword_15F9D8, &qword_1276F8);
  v4 = sub_123ABC();
  sub_12550C();
  sub_1258DC();
  v3 = v2;

  *a1 = v3;
  *(a1 + 8) = 0;
}

uint64_t sub_2A918(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_2A9C0;

  return sub_24818(a1, a2);
}

uint64_t sub_2A9C0()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_2AAF4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2AAF4()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_2ABC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_2AC68;

  return sub_2896C(a1, a2);
}

uint64_t sub_2AC68()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_2AD9C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2AD9C()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

unint64_t sub_2AE6C()
{
  result = qword_15F9D0;
  if (!qword_15F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15F9D0);
  }

  return result;
}

uint64_t sub_2AEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_15F9E0, &unk_127710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2AF38()
{
  result = qword_15F930;
  if (!qword_15F930)
  {
    sub_12503C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15F930);
  }

  return result;
}

uint64_t sub_2AF90(uint64_t a1)
{
  v2 = type metadata accessor for SetTimerAttributeHandledOnWatchParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2AFF4()
{

  return sub_26E0C();
}

uint64_t type metadata accessor for ResumeTimerCATsSimple(uint64_t a1)
{
  result = qword_15F9E8;
  if (!qword_15F9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B0F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_2B114, 0, 0);
}

uint64_t sub_2B114()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_126CB0;
  *(v2 + 32) = 0x72656D6974;
  *(v2 + 40) = 0xE500000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for TimerTimer(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v6 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_23FD8;

  return v6(0xD000000000000021, 0x800000000012CC40, v2);
}

uint64_t sub_2B258(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_2B278, 0, 0);
}

uint64_t sub_2B278()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_126CB0;
  strcpy((v2 + 32), "resumedTimers");
  *(v2 + 46) = -4864;
  *(v2 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
  *(v2 + 48) = v1;
  v5 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2B3C8;

  return v5(0xD000000000000021, 0x800000000012CC70, v2);
}

uint64_t sub_2B3C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_2B7C0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_2B520(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v12 = sub_124E5C();
  (*(v6 + 8))(a2, v5);
  sub_60DC(a1);
  return v12;
}

uint64_t sub_2B6A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_124EDC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v4 + 16))(v6, a2, v3);
  v7 = sub_124E6C();
  (*(v4 + 8))(a2, v3);
  return v7;
}

uint64_t type metadata accessor for TimerBaseCATs_Async(uint64_t a1)
{
  result = qword_15FA38;
  if (!qword_15FA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B850(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 72) = a2;
  *(v4 + 16) = a1;
  sub_5AE8(&unk_15F170, &unk_126E00);
  *(v4 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_2B8F4, 0, 0);
}

uint64_t sub_2B8F4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 72);
  sub_5AE8(&qword_15F180, &unk_126E10);
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  *(v4 + 16) = xmmword_1270C0;
  *(v4 + 32) = 0x6C6174736E497369;
  *(v4 + 40) = 0xE90000000000006CLL;
  *(v4 + 48) = v3;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 80) = 0x65707954707061;
  *(v4 + 88) = 0xE700000000000000;
  sub_E344(v2, v1, &unk_15F170, &unk_126E00);
  v5 = sub_124E4C();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v1, 1, v5);
  v8 = *(v0 + 40);
  if (v7 == 1)
  {
    sub_5CA8(*(v0 + 40), &unk_15F170, &unk_126E00);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v5;
    v9 = sub_23B4C((v4 + 96));
    (*(v6 + 32))(v9, v8, v5);
  }

  v13 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v10 = swift_task_alloc();
  *(v0 + 56) = v10;
  *v10 = v0;
  v10[1] = sub_2BB10;
  v11 = *(v0 + 16);

  return v13(v11, 0xD000000000000017, 0x800000000012CCE0, v4);
}

uint64_t sub_2BB10()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_2BC58, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2BC58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2BCC4(uint64_t a1, uint64_t a2, uint64_t a3)
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

void *sub_2BE74(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_1260FC())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    sub_12606C();
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_125FFC();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      sub_2EAE8(v6, a1);

      sub_12603C();
      sub_12607C();
      sub_12608C();
      sub_12604C();
      if (v5 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

uint64_t sub_2BFBC()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15FA88);
  sub_5B30(v0, qword_15FA88);
  return sub_12578C();
}

Swift::Int sub_2C01C()
{
  v1 = *v0;
  sub_12626C();
  sub_12627C(v1);
  return sub_12628C();
}

Swift::Int sub_2C090(uint64_t a1)
{
  v2 = *v1;
  sub_12626C();
  sub_12627C(v2);
  return sub_12628C();
}

uint64_t sub_2C0D4(__int128 *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = _swiftEmptyArrayStorage;
  *(v1 + 80) = 0;
  if (qword_15EDF0 != -1)
  {
    swift_once();
  }

  v4 = sub_125ABC();
  sub_5B30(v4, qword_15FA88);
  v5 = sub_125AAC();
  v6 = sub_125DFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "RemoteTimerContinuationFlow.init", v7, 2u);
  }

  sub_2F4EC(a1, v2 + 24);
  return v2;
}

uint64_t sub_2C1E0(void *a1)
{
  v2 = v1;
  v4 = sub_12379C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v68 - v10;
  __chkstk_darwin(v9);
  v13 = &v68 - v12;
  v14 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  __chkstk_darwin(v14 - 8);
  v75 = &v68 - v15;
  v16 = sub_123D3C();
  v73 = *(v16 - 8);
  v74 = v16;
  __chkstk_darwin(v16);
  v72 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EDF0 != -1)
  {
    swift_once();
  }

  v18 = sub_125ABC();
  sub_5B30(v18, qword_15FA88);

  v19 = sub_125AAC();
  v20 = sub_125DFC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v69 = a1;
    v70 = v8;
    v22 = v21;
    v68 = swift_slowAlloc();
    v77[0] = v68;
    *v22 = 136315138;
    v76 = *(v2 + 16);
    v23 = sub_125BAC();
    v71 = v11;
    v25 = v13;
    v26 = v5;
    v27 = v4;
    v28 = v2;
    v29 = sub_8530(v23, v24, v77);
    v11 = v71;

    *(v22 + 4) = v29;
    v2 = v28;
    v4 = v27;
    v5 = v26;
    v13 = v25;
    _os_log_impl(&dword_0, v19, v20, "RemoteTimerContinuationFlow.on(input:) state %s", v22, 0xCu);
    sub_5BB0(v68);

    a1 = v69;
    v8 = v70;
  }

  v30 = *(v2 + 16);
  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v48 = sub_125AAC();
      v49 = sub_125DFC();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        v51 = "RemoteTimerContinuationFlow return false for waitingOnPromptResponse";
LABEL_23:
        _os_log_impl(&dword_0, v48, v49, v51, v50, 2u);
      }
    }

    else
    {
      if (v30 == 3)
      {
        sub_9D860(a1, 0, v13);
        (*(v5 + 16))(v11, v13, v4);
        sub_12377C();
        sub_2F560();
        v31 = sub_125B7C();
        v32 = v11;
        v33 = *(v5 + 8);
        v33(v8, v4);
        if (v31)
        {
          v33(v32, v4);
          v34 = sub_125AAC();
          v35 = sub_125DFC();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_0, v34, v35, "RemoteTimerContinuationFlow: Confirming to report back remote timers", v36, 2u);
          }

          swift_beginAccess();
          v37 = *(v2 + 64);
          if (v37)
          {
            swift_endAccess();
            sub_8BAC();
            v38 = v37;
            v39 = 1;
            isa = sub_125EEC(1).super.super.isa;
            [v38 setIncludeRemoteTimers:isa];

            v33(v13, v4);
            return v39;
          }

          v33(v13, v4);
          goto LABEL_40;
        }

        sub_12376C();
        v56 = v33;
        v57 = sub_125B7C();
        v56(v8, v4);
        v58 = v32;
        v59 = v56;
        v56(v58, v4);
        v60 = sub_125AAC();
        v61 = sub_125DFC();
        v62 = os_log_type_enabled(v60, v61);
        if (v57)
        {
          if (v62)
          {
            v63 = swift_slowAlloc();
            *v63 = 0;
            _os_log_impl(&dword_0, v60, v61, "RemoteTimerContinuationFlow: Confirming to stop here and only have read out first response", v63, 2u);
          }

          swift_beginAccess();
          v64 = *(v2 + 64);
          if (v64)
          {
            swift_endAccess();
            sub_8BAC();
            v65 = v64;
            v66 = sub_125EEC(0).super.super.isa;
            [v65 setIncludeRemoteTimers:v66];

            v59(v13, v4);
            return 1;
          }

          v59(v13, v4);
LABEL_40:
          swift_endAccess();
          return 1;
        }

        if (v62)
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_0, v60, v61, "RemoteTimerContinuationFlow: Default case return false for reportRemote", v67, 2u);
        }

        v59(v13, v4);
        return 0;
      }

      v48 = sub_125AAC();
      v49 = sub_125DFC();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        v51 = "RemoteTimerContinuationFlow: return false for complete";
        goto LABEL_23;
      }
    }

LABEL_24:

    return 0;
  }

  if (*(v2 + 16))
  {
    v48 = sub_125AAC();
    v49 = sub_125DFC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = "RemoteTimerContinuationFlow return false for shouldPromptRemote";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v41 = v72;
  sub_123CCC();
  v42 = sub_12532C();
  v43 = v75;
  (*(*(v42 - 8) + 56))(v75, 1, 1, v42);
  v44 = sub_A588C(v41, v43);
  sub_CCF4(v43);
  (*(v73 + 8))(v41, v74);
  if (v44 && (sub_12568C(), (v45 = swift_dynamicCastClass()) != 0))
  {
    v46 = v45;
    v39 = 1;
    swift_beginAccess();
    v47 = *(v2 + 64);
    *(v2 + 64) = v46;
  }

  else
  {
    v53 = sub_125AAC();
    v54 = sub_125DEC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_0, v53, v54, "RemoteTimerContinuationFlow didn't receive valid SearchTimerIntent parse", v55, 2u);
    }

    v39 = 0;
    *(v2 + 16) = 4;
  }

  return v39;
}

uint64_t sub_2CAF8(uint64_t a1)
{
  v2[41] = a1;
  v2[42] = v1;
  v3 = sub_12368C();
  v2[43] = v3;
  v2[44] = *(v3 - 8);
  v2[45] = swift_task_alloc();
  sub_124EDC();
  v2[46] = swift_task_alloc();
  v4 = sub_125ABC();
  v2[47] = v4;
  v2[48] = *(v4 - 8);
  v2[49] = swift_task_alloc();
  v5 = sub_124FFC();
  v2[50] = v5;
  v2[51] = *(v5 - 8);
  v2[52] = swift_task_alloc();
  v6 = sub_12501C();
  v2[53] = v6;
  v2[54] = *(v6 - 8);
  v2[55] = swift_task_alloc();
  v7 = sub_12392C();
  v2[56] = v7;
  v2[57] = *(v7 - 8);
  v2[58] = swift_task_alloc();
  v8 = sub_5AE8(&qword_15FB68, &unk_1278E0);
  v2[59] = v8;
  v2[60] = *(v8 - 8);
  v2[61] = swift_task_alloc();

  return _swift_task_switch(sub_2CDBC, 0, 0);
}

uint64_t sub_2CDBC()
{
  v58 = v0;
  if (qword_15EDF0 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(*(v0 + 376), qword_15FA88);
  *(v0 + 496) = v1;

  v2 = sub_125AAC();
  v3 = sub_125DFC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 336);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v57 = v6;
    *v5 = 136315138;
    *(v0 + 560) = *(v4 + 16);
    v7 = sub_125BAC();
    v9 = sub_8530(v7, v8, &v57);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "RemoteTimerContinuationFlow.execute() state %s", v5, 0xCu);
    sub_5BB0(v6);
  }

  v10 = *(v0 + 336);
  swift_beginAccess();
  v11 = *(v10 + 64);
  *(v0 + 504) = v11;
  if (!v11)
  {
    v30 = sub_125AAC();
    v31 = sub_125DEC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "Unable to parse intent", v32, 2u);
    }

    sub_12383C();
    goto LABEL_40;
  }

  v12 = *(v0 + 336);
  v13 = *(v12 + 16);
  v14 = v11;
  v15 = sub_125AAC();
  v16 = sub_125DFC();
  v17 = os_log_type_enabled(v15, v16);
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      if (v17)
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_0, v15, v16, "RemoteTimerContinuationFlow: in waitingOnPromptResponse", v41, 2u);
      }

      *(v12 + 16) = 3;
      sub_1237FC();
    }

    else
    {
      if (v13 == 3)
      {
        if (v17)
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_0, v15, v16, "RemoteTimerContinuationFlow: in needsPromptRemoteResponse", v18, 2u);
        }

        v19 = [v14 includeRemoteTimers];
        sub_8BAC();
        v20.super.super.isa = sub_125EEC(1).super.super.isa;
        isa = v20.super.super.isa;
        if (v19)
        {
          v22 = sub_125F0C();

          if (v22)
          {
            v23 = *(v0 + 488);
            v24 = *(v0 + 336);
            *(v12 + 16) = 3;
            sub_2F488(v24 + 24, v0 + 16);
            sub_12524C();
            sub_12523C();
            sub_12522C();

            v25 = type metadata accessor for TimerFlowProvider();
            v26 = swift_allocObject();
            sub_2F4EC((v0 + 176), v26 + 16);
            *(v0 + 56) = v26;
            *(v0 + 80) = v25;
            *(v0 + 88) = &off_158B00;
            sub_23B08((v0 + 56), v25);
            sub_635D0(*(v24 + 80), v23);
            if (qword_15EEA8 != -1)
            {
              swift_once();
            }

            v28 = *(v0 + 480);
            v27 = *(v0 + 488);
            v29 = *(v0 + 472);
            sub_1237BC();
            sub_12382C();

            (*(v28 + 8))(v27, v29);
            sub_2F504(v0 + 16);
            goto LABEL_40;
          }
        }

        else
        {
        }

        *(v12 + 16) = 4;
      }

      else
      {
        if (v17)
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_0, v15, v16, "RemoteTimerContinuationFlow: complete", v42, 2u);
        }
      }

      sub_12383C();
    }

LABEL_40:

    v53 = *(v0 + 8);

    return v53();
  }

  if (!v13)
  {
    if (v17)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v15, v16, "RemoteTimerContinuationFlow: in begin", v33, 2u);
    }

    v34 = *(v0 + 488);
    v35 = *(v0 + 336);

    sub_2F488(v35 + 24, v0 + 96);
    sub_12524C();
    sub_12523C();
    sub_12522C();

    v36 = type metadata accessor for TimerFlowProvider();
    v37 = swift_allocObject();
    sub_2F4EC((v0 + 256), v37 + 16);
    *(v0 + 136) = v37;
    *(v0 + 160) = v36;
    *(v0 + 168) = &off_158B00;
    sub_23B08((v0 + 136), v36);
    sub_635D0(0, v34);
    if (qword_15EEA8 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 480);
    v38 = *(v0 + 488);
    v40 = *(v0 + 472);
    sub_1237BC();

    sub_12380C();

    (*(v39 + 8))(v38, v40);
    sub_2F504(v0 + 96);
    goto LABEL_40;
  }

  if (v17)
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v15, v16, "RemoteTimerContinuationFlow: in shouldPromptRemote", v43, 2u);
  }

  v45 = *(v0 + 408);
  v44 = *(v0 + 416);
  v46 = *(v0 + 392);
  v54 = *(v0 + 400);
  v47 = *(v0 + 384);
  v55 = *(v0 + 376);

  *(v12 + 16) = 2;
  sub_FFAE8(11);

  v49 = sub_2BE74(v48);

  (*(v45 + 104))(v44, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v54);
  (*(v47 + 16))(v46, v1, v55);
  mach_absolute_time();
  sub_12502C();
  type metadata accessor for SearchForTimersCATsSimple(0);
  sub_124ECC();
  *(v0 + 512) = sub_124E7C();
  sub_5AE8(&qword_15F180, &unk_126E10);
  v50 = swift_allocObject();
  *(v0 + 520) = v50;
  *(v50 + 16) = xmmword_126CB0;
  *(v50 + 32) = 0x7372656D6974;
  *(v50 + 40) = 0xE600000000000000;
  *(v50 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
  *(v50 + 48) = v49;
  v56 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v51 = swift_task_alloc();
  *(v0 + 528) = v51;
  *v51 = v0;
  v51[1] = sub_2D70C;

  return v56(0xD000000000000028, 0x800000000012CD90, v50);
}

uint64_t sub_2D70C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 536) = v1;

  if (v1)
  {
    v5 = sub_2DBCC;
  }

  else
  {

    *(v4 + 544) = a1;
    v5 = sub_2D848;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_2D848()
{
  sub_12362C();
  v1 = swift_task_alloc();
  v0[69] = v1;
  *v1 = v0;
  v1[1] = sub_2D908;
  v2 = v0[58];
  v3 = v0[55];
  v4 = v0[45];

  return DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(v0 + 27, v4, v2, v3, 0, 0, 0, 0);
}

uint64_t sub_2D908()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 352);
  v4 = *(*v0 + 344);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_2DA78, 0, 0);
}

uint64_t sub_2DA78()
{
  v1 = v0[63];
  v2 = v0[57];
  v9 = v0[58];
  v4 = v0[55];
  v3 = v0[56];
  v6 = v0[53];
  v5 = v0[54];
  sub_23B08(v0 + 27, v0[30]);
  sub_123D4C();
  sub_5BB0(v0 + 27);
  sub_12381C();

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v9, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2DBCC()
{
  v19 = v0;
  v2 = v0[57];
  v1 = v0[58];
  v4 = v0[55];
  v3 = v0[56];
  v5 = v0[53];
  v6 = v0[54];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v7 = sub_125AAC();
  v8 = sub_125DEC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[67];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v0[40] = v9;
    swift_errorRetain();
    sub_5AE8(&qword_15F670, &qword_127080);
    v12 = sub_125BAC();
    v14 = sub_8530(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v7, v8, "RemoteTimerContinuationFlow: Error outputting prompt confirmation: %s", v10, 0xCu);
    sub_5BB0(v11);
  }

  v15 = v0[63];
  *(v0[42] + 16) = 4;
  sub_12383C();

  v16 = v0[1];

  return v16();
}

void sub_2DE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_15FB70, &unk_1278F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v58 - v6);
  (*(v5 + 16))(v58 - v6, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    (*(v5 + 96))(v7, v4);
    v9 = v7[1];
    v10 = v7[2];

    swift_beginAccess();
    v11 = *(a2 + 64);
    *(a2 + 64) = v9;
    v12 = v9;

    v13 = [v10 matchedTimers];
    if (v13)
    {
      v14 = v13;
      sub_1257EC();
      v15 = sub_125C6C();
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    v29 = [v10 remoteTimers];
    if (v29)
    {
      v30 = v29;
      sub_1257EC();
      v31 = sub_125C6C();

      if (!(v15 >> 62))
      {
LABEL_18:
        v32 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
        goto LABEL_19;
      }
    }

    else
    {
      v31 = _swiftEmptyArrayStorage;
      if (!(v15 >> 62))
      {
        goto LABEL_18;
      }
    }

    v32 = sub_1260FC();
LABEL_19:

    *(a2 + 80) = v32 != 0;
    v33 = v31 >> 62;
    if (v31 >> 62)
    {
      if (sub_1260FC())
      {
LABEL_21:
        if (v32)
        {
LABEL_22:
          v34 = [v12 associatedDeviceTarget];
          if (!v34)
          {
            goto LABEL_25;
          }

          v35 = [v12 associatedDeviceTarget];
          v36 = [v35 isInRespondingRoom];

          sub_8BAC();
          v37.super.super.isa = sub_125EFC(1).super.super.isa;
          isa = v37.super.super.isa;
          if (!v36)
          {

            goto LABEL_45;
          }

          v39 = sub_125F0C();

          if (v39)
          {
LABEL_25:
            if (!v33)
            {
              if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)) < 2)
              {
                goto LABEL_45;
              }

              goto LABEL_40;
            }

            if (sub_1260FC() >= 2)
            {
LABEL_40:
              if (qword_15EDF0 != -1)
              {
                swift_once();
              }

              v44 = sub_125ABC();
              sub_5B30(v44, qword_15FA88);
              v45 = sub_125AAC();
              v46 = sub_125DFC();
              if (!os_log_type_enabled(v45, v46))
              {
                goto LABEL_55;
              }

              v47 = swift_slowAlloc();
              *v47 = 0;
              v48 = "RemoteTimerContinuationFlow: has both local and remote timers to respond – setting state .shouldPromptRemote";
LABEL_54:
              _os_log_impl(&dword_0, v45, v46, v48, v47, 2u);

LABEL_55:

              *(a2 + 72) = v31;

              v55 = 1;
LABEL_69:
              *(a2 + 16) = v55;
              return;
            }
          }

LABEL_45:

          if (qword_15EDF0 != -1)
          {
            swift_once();
          }

          v49 = sub_125ABC();
          sub_5B30(v49, qword_15FA88);
          v50 = sub_125AAC();
          v51 = sub_125DFC();
          if (!os_log_type_enabled(v50, v51))
          {
            goto LABEL_67;
          }

          v52 = swift_slowAlloc();
          *v52 = 0;
          v53 = "RemoteTimerContinuationFlow: associatedDeviceTarget was not in responding room (do not read other remote timers) - setting state .complete";
LABEL_66:
          _os_log_impl(&dword_0, v50, v51, v53, v52, 2u);

LABEL_67:

LABEL_68:
          v55 = 4;
          goto LABEL_69;
        }

        if (v33)
        {
          if (sub_1260FC() < 2)
          {
            goto LABEL_22;
          }
        }

        else if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)) < 2)
        {
          goto LABEL_22;
        }

        if (qword_15EDF0 != -1)
        {
          swift_once();
        }

        v54 = sub_125ABC();
        sub_5B30(v54, qword_15FA88);
        v45 = sub_125AAC();
        v46 = sub_125DFC();
        if (!os_log_type_enabled(v45, v46))
        {
          goto LABEL_55;
        }

        v47 = swift_slowAlloc();
        *v47 = 0;
        v48 = "RemoteTimerContinuationFlow: no local matched timers with matched remote timers – setting state .shouldPromptRemote";
        goto LABEL_54;
      }
    }

    else if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_21;
    }

    if (v32)
    {
      if (qword_15EDF0 != -1)
      {
        swift_once();
      }

      v56 = sub_125ABC();
      sub_5B30(v56, qword_15FA88);
      v50 = sub_125AAC();
      v51 = sub_125DFC();
      if (!os_log_type_enabled(v50, v51))
      {
        goto LABEL_67;
      }

      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = "RemoteTimerContinuationFlow: should have already read remote timers – setting state .complete";
    }

    else
    {
      if (qword_15EDF0 != -1)
      {
        swift_once();
      }

      v57 = sub_125ABC();
      sub_5B30(v57, qword_15FA88);
      v50 = sub_125AAC();
      v51 = sub_125DFC();
      if (!os_log_type_enabled(v50, v51))
      {
        goto LABEL_67;
      }

      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = "RemoteTimerContinuationFlow: No timers found at all – setting state .complete";
    }

    goto LABEL_66;
  }

  if (v8 == enum case for RCHFlowResult.error<A, B>(_:))
  {
    (*(v5 + 96))(v7, v4);
    v16 = *v7;
    if (qword_15EDF0 != -1)
    {
      swift_once();
    }

    v17 = sub_125ABC();
    sub_5B30(v17, qword_15FA88);
    swift_errorRetain();
    v18 = sub_125AAC();
    v19 = sub_125DEC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v58[0] = v21;
      *v20 = 136315138;
      v58[3] = v16;
      swift_errorRetain();
      sub_5AE8(&qword_15F670, &qword_127080);
      v22 = sub_125BAC();
      v24 = sub_8530(v22, v23, v58);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_0, v18, v19, "RemoteTimerContinuationFlow: Error handling base search flow: %s", v20, 0xCu);
      sub_5BB0(v21);
    }

    else
    {
    }

    goto LABEL_68;
  }

  if (v8 == enum case for RCHFlowResult.cancelled<A, B>(_:))
  {
    if (qword_15EDF0 != -1)
    {
      swift_once();
    }

    v25 = sub_125ABC();
    sub_5B30(v25, qword_15FA88);
    v26 = sub_125AAC();
    v27 = sub_125DFC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "RemoteTimerContinuationFlow: Parent flow returned .cancelled – setting state .complete", v28, 2u);
    }

    goto LABEL_68;
  }

  if (qword_15EDF0 != -1)
  {
    swift_once();
  }

  v40 = sub_125ABC();
  sub_5B30(v40, qword_15FA88);
  v41 = sub_125AAC();
  v42 = sub_125DEC();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "RemoteTimerContinuationFlow: Unknown state response in RemoteTimerContinuationFlow (state .begin)", v43, 2u);
  }

  *(a2 + 16) = 4;
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_2E7BC()
{
  sub_5BB0((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for RemoteTimerContinuationFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteTimerContinuationFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2E99C()
{
  result = qword_15FB60;
  if (!qword_15FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15FB60);
  }

  return result;
}

uint64_t sub_2EA4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_503C;

  return sub_2CAF8(a1);
}

uint64_t sub_2EAE8(void *a1, unint64_t a2)
{
  type metadata accessor for TimerTimer.Builder(0);
  swift_allocObject();
  v94 = sub_94508();
  v105 = a1;
  v4 = [a1 device];
  v103 = a2;
  if (v4)
  {
    v5 = v4;
    v6 = [v4 roomID];

    if (v6)
    {
      v96 = sub_125B9C();
      v8 = v7;

      if (a2 >> 62)
      {
        goto LABEL_45;
      }

      for (i = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1260FC())
      {
        v10 = 0;
        v99 = a2 & 0xFFFFFFFFFFFFFF8;
        v101 = a2 & 0xC000000000000001;
        v95 = v8;
        v97 = i;
        while (1)
        {
          if (v101)
          {
            v11 = sub_125FFC();
          }

          else
          {
            if (v10 >= *(v99 + 16))
            {
              goto LABEL_44;
            }

            v11 = *(a2 + 8 * v10 + 32);
          }

          v12 = v11;
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          v14 = [v11 device];
          if (v14)
          {
            v15 = v14;
            v16 = [v14 roomID];

            if (!v16)
            {

              goto LABEL_40;
            }

            v17 = sub_125B9C();
            v19 = v18;

            if (v96 == v17 && v8 == v19)
            {
            }

            else
            {
              v21 = sub_1261BC();

              if ((v21 & 1) == 0)
              {

                goto LABEL_39;
              }
            }

            v22 = [v12 identifier];
            if (v22)
            {
              v23 = v22;
              v24 = sub_125B9C();
              v26 = v25;
            }

            else
            {
              v24 = 0;
              v26 = 0;
            }

            v27 = [v105 identifier];
            if (v27)
            {
              v28 = v27;
              v29 = sub_125B9C();
              v31 = v30;

              if (v26)
              {
                if (v31)
                {
                  if (v24 == v29 && v26 == v31)
                  {

LABEL_38:
                    a2 = v103;
LABEL_39:
                    v8 = v95;
LABEL_40:
                    i = v97;
                    goto LABEL_7;
                  }

                  v32 = sub_1261BC();

                  if (v32)
                  {
LABEL_37:

                    goto LABEL_38;
                  }

LABEL_35:
                  sub_12603C();
                  sub_12607C();
                  sub_12608C();
                  sub_12604C();
                  goto LABEL_38;
                }
              }

              else if (!v31)
              {
                goto LABEL_37;
              }
            }

            else if (!v26)
            {
              goto LABEL_37;
            }

            goto LABEL_35;
          }

LABEL_7:
          ++v10;
          if (v13 == i)
          {
            goto LABEL_46;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        ;
      }

LABEL_46:
    }
  }

  v33 = [v105 label];
  v34 = _swiftEmptyArrayStorage >> 62;
  if (!v33)
  {
    goto LABEL_143;
  }

  v35 = v33;
  v36 = sub_125B9C();
  v38 = v37;

  v34 = _swiftEmptyArrayStorage >> 62;

  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {
    goto LABEL_143;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_79;
  }

  v40 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
  if (v40)
  {
LABEL_53:
    v41 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v42 = sub_125FFC();
      }

      else
      {
        if (v41 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_78;
        }

        v42 = _swiftEmptyArrayStorage[v41 + 4];
      }

      v43 = v42;
      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        v40 = sub_1260FC();
        if (!v40)
        {
          goto LABEL_80;
        }

        goto LABEL_53;
      }

      v45 = [v42 label];
      if (v45)
      {
        v46 = v45;
        v47 = sub_125B9C();
        v49 = v48;
      }

      else
      {
        v47 = 0;
        v49 = 0;
      }

      v50 = [v105 label];
      if (!v50)
      {
        break;
      }

      v51 = v50;
      v52 = sub_125B9C();
      v54 = v53;

      if (!v49)
      {
        if (!v54)
        {
LABEL_74:

LABEL_76:
          v56 = 0;
          a2 = v103;
          goto LABEL_81;
        }

        goto LABEL_55;
      }

      if (!v54)
      {
        goto LABEL_55;
      }

      if (v47 == v52 && v49 == v54)
      {

        goto LABEL_76;
      }

      v55 = sub_1261BC();

      a2 = v103;
      if (v55)
      {
        v56 = 0;
        goto LABEL_81;
      }

LABEL_56:
      ++v41;
      if (v44 == v40)
      {
        goto LABEL_80;
      }
    }

    if (!v49)
    {
      goto LABEL_74;
    }

LABEL_55:

    a2 = v103;
    goto LABEL_56;
  }

LABEL_80:
  v56 = 1;
LABEL_81:
  *(v94 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isLabelUniqueInRoom) = v56;
  if (a2 >> 62)
  {
LABEL_111:
    v57 = sub_1260FC();
    if (v57)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v57 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v57)
    {
LABEL_83:
      v58 = 0;
      v100 = a2 & 0xFFFFFFFFFFFFFF8;
      v102 = a2 & 0xC000000000000001;
      v59 = &stru_15D000;
      v98 = v57;
      while (1)
      {
        if (v102)
        {
          v60 = sub_125FFC();
        }

        else
        {
          if (v58 >= *(v100 + 16))
          {
            goto LABEL_110;
          }

          v60 = *(a2 + 8 * v58 + 32);
        }

        a2 = v60;
        v61 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

        v62 = [v60 v59[123].name];
        if (v62)
        {
          v63 = v62;
          v64 = sub_125B9C();
          v66 = v65;
        }

        else
        {
          v64 = 0;
          v66 = 0;
        }

        v67 = v59;
        v68 = [v105 v59[123].name];
        if (v68)
        {
          v69 = v68;
          v70 = sub_125B9C();
          v72 = v71;

          if (v66)
          {
            if (!v72)
            {
              goto LABEL_102;
            }

            if (v64 == v70 && v66 == v72)
            {

              goto LABEL_85;
            }

            v73 = sub_1261BC();

            if ((v73 & 1) == 0)
            {
              goto LABEL_103;
            }
          }

          else if (v72)
          {
LABEL_102:

LABEL_103:
            sub_12603C();
            sub_12607C();
            sub_12608C();
            sub_12604C();
            goto LABEL_85;
          }
        }

        else if (v66)
        {
          goto LABEL_102;
        }

LABEL_85:
        v59 = v67;
        ++v58;
        a2 = v103;
        if (v61 == v98)
        {
          if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
          {
            goto LABEL_140;
          }

          goto LABEL_113;
        }
      }
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_140;
  }

LABEL_113:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    goto LABEL_140;
  }

  v104 = _swiftEmptyArrayStorage[2];
  if (!v104)
  {
    goto LABEL_141;
  }

  do
  {
    v74 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v75 = sub_125FFC();
      }

      else
      {
        if (v74 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_139;
        }

        v75 = _swiftEmptyArrayStorage[v74 + 4];
      }

      v76 = v75;
      v77 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      v78 = [v75 label];
      if (v78)
      {
        v79 = v78;
        v80 = sub_125B9C();
        v82 = v81;
      }

      else
      {
        v80 = 0;
        v82 = 0;
      }

      v83 = [v105 label];
      if (!v83)
      {
        if (!v82)
        {
          goto LABEL_136;
        }

LABEL_117:

        goto LABEL_118;
      }

      v84 = v83;
      v85 = sub_125B9C();
      v87 = v86;

      if (!v82)
      {
        if (!v87)
        {
LABEL_136:

          v89 = 0;
          goto LABEL_142;
        }

        goto LABEL_117;
      }

      if (!v87)
      {
        goto LABEL_117;
      }

      if (v80 == v85 && v82 == v87)
      {

        v89 = 0;
        goto LABEL_142;
      }

      v88 = sub_1261BC();

      if (v88)
      {

        v89 = 0;
        goto LABEL_142;
      }

LABEL_118:
      ++v74;
      if (v77 == v104)
      {
        goto LABEL_141;
      }
    }

    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    v104 = sub_1260FC();
  }

  while (v104);
LABEL_141:

  v89 = 1;
LABEL_142:
  v34 = _swiftEmptyArrayStorage >> 62;
  *(v94 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isLabelUniqueAcrossGroup) = v89;
LABEL_143:
  if (v34)
  {
    v90 = sub_1260FC();
  }

  else
  {
    v90 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
  }

  *(v94 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isOnlyMatchingTimerInRoom) = v90 == 0;

  v92 = sub_113D6C(v91, 0);

  return v92;
}

uint64_t sub_2F488(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2F4EC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_2F560()
{
  result = qword_161880;
  if (!qword_161880)
  {
    sub_12379C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161880);
  }

  return result;
}

uint64_t type metadata accessor for DismissTimerCATs_Async(uint64_t a1)
{
  result = qword_15FB78;
  if (!qword_15FB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2F644(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2F7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_124EDC();
  v3[5] = swift_task_alloc();
  v4 = sub_125ABC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_124FFC();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_12501C();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_2F97C, 0, 0);
}

uint64_t sub_2F97C()
{
  (*(v0[10] + 104))(v0[11], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[9]);
  if (qword_15EDF8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = sub_5B30(v3, qword_15FBC8);
  (*(v2 + 16))(v1, v4, v3);
  mach_absolute_time();
  sub_12502C();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[15] = sub_124DBC();
  v7 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_2FB20;

  return (v7)(0xD000000000000013, 0x800000000012CE00, _swiftEmptyArrayStorage);
}

uint64_t sub_2FB20(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_2FDEC, 0, 0);
  }

  else
  {
    v4[18] = a1;

    v6 = swift_task_alloc();
    v4[19] = v6;
    *v6 = v5;
    v6[1] = sub_2FCC0;
    v7 = v4[14];
    v8 = v4[3];
    v9 = v4[4];
    v10 = v4[2];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v10, v8, v9, v7, 0);
  }
}

uint64_t sub_2FCC0()
{
  v2 = *(*v1 + 144);
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_2FF4C;
  }

  else
  {
    v3 = sub_2FEA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_2FDEC()
{

  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2FEA4()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2FF4C()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2FFFC()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15FBC8);
  sub_5B30(v0, qword_15FBC8);
  return sub_1257AC();
}

uint64_t sub_30048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return _swift_task_switch(sub_3006C, 0, 0);
}

uint64_t sub_3006C()
{
  sub_12524C();
  sub_12523C();
  sub_12522C();

  sub_23B08(v0 + 2, v0[5]);
  sub_12359C();
  sub_1236FC();
  swift_allocObject();
  sub_1236DC();
  sub_5BB0(v0 + 2);
  v1 = sub_1236EC();

  v2 = [objc_allocWithZone(SAUIAddViews) init];
  v0[16] = v2;
  if (v1 >> 62)
  {
    sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);

    sub_1260EC();
  }

  else
  {

    sub_1261CC();
    sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);
  }

  sub_102E40(v3);
  sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);
  isa = sub_125C4C().super.isa;

  [v2 setViews:isa];

  sub_12366C();
  v5 = sub_125B8C();

  [v2 setDialogPhase:v5];

  sub_12357C();
  v6 = v0[10];
  v7 = v0[11];
  sub_23B08(v0 + 7, v6);
  v8 = swift_task_alloc();
  v0[17] = v8;
  v9 = sub_30B8C(0, &qword_15FBE8, SABaseCommand_ptr);
  *v8 = v0;
  v8[1] = sub_3033C;

  return AceServiceInvokerAsync.submit<A>(_:)(v2, v6, v9, v7);
}

uint64_t sub_3033C(void *a1)
{
  *(*v2 + 144) = v1;

  if (v1)
  {
    v4 = sub_305A8;
  }

  else
  {

    v4 = sub_30458;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_30458()
{
  sub_5BB0(v0 + 7);
  if (qword_15EDF8 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_15FBC8);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "generateCustomFlowOutput completed successfully.", v4, 2u);
  }

  v5 = v0[15];
  v6 = v0[16];
  v8 = v0[13];
  v7 = v0[14];

  sub_BAF10(v8, v5, v7);
  sub_12383C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_305A8()
{
  v1 = v0[16];
  sub_5BB0(v0 + 7);
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_30624(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = v3;
  *(v4 + 144) = a2;
  *(v4 + 96) = a1;
  return _swift_task_switch(sub_3064C, 0, 0);
}

uint64_t sub_3064C()
{
  sub_12524C();
  sub_12523C();
  sub_12522C();

  sub_23B08(v0 + 2, v0[5]);
  sub_12359C();
  sub_1236FC();
  swift_allocObject();
  sub_1236DC();
  sub_5BB0(v0 + 2);
  v1 = sub_1236EC();

  if (v1 >> 62)
  {
    sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);

    v2 = sub_1260EC();
  }

  else
  {

    sub_1261CC();
    sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);
    v2 = v1;
  }

  sub_BAF10(v2, v0[14], v0[13]);

  v3 = [objc_allocWithZone(SAUIAddViews) init];
  v0[15] = v3;
  if (v1 >> 62)
  {
    sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);

    sub_1260EC();
  }

  else
  {

    sub_1261CC();
    sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);
  }

  sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);
  isa = sub_125C4C().super.isa;

  [v3 setViews:isa];

  sub_12366C();
  v5 = sub_125B8C();

  [v3 setDialogPhase:v5];

  sub_12357C();
  v6 = v0[10];
  v7 = v0[11];
  sub_23B08(v0 + 7, v6);
  v8 = swift_task_alloc();
  v0[16] = v8;
  v9 = sub_30B8C(0, &qword_15FBE8, SABaseCommand_ptr);
  *v8 = v0;
  v8[1] = sub_3098C;

  return AceServiceInvokerAsync.submit<A>(_:)(v3, v6, v9, v7);
}

uint64_t sub_3098C(void *a1)
{
  *(*v2 + 136) = v1;

  if (v1)
  {
    v4 = sub_30B20;
  }

  else
  {

    v4 = sub_30AA8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_30AA8()
{
  v1 = v0[15];
  sub_5BB0(v0 + 7);
  sub_12383C();

  v2 = v0[1];

  return v2();
}

uint64_t sub_30B20()
{
  sub_5BB0((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_30B8C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for SearchForTimersCATsSimple(uint64_t a1)
{
  result = qword_15FBF0;
  if (!qword_15FBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_30C60(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v12 = sub_124E5C();
  (*(v6 + 8))(a2, v5);
  sub_60DC(a1);
  return v12;
}

uint64_t sub_30DE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_124EDC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v4 + 16))(v6, a2, v3);
  v7 = sub_124E6C();
  (*(v4 + 8))(a2, v3);
  return v7;
}

uint64_t sub_30F60()
{
  v1 = sub_5AE8(&unk_15F170, &unk_126E00);
  v2 = __chkstk_darwin(v1 - 8);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_127990;
  *(v6 + 32) = 7368801;
  *(v6 + 40) = 0xE300000000000000;
  v7 = *v0;
  if (*v0)
  {
    v8 = sub_124DEC();
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
  }

  *(v6 + 48) = v9;
  *(v6 + 72) = v8;
  strcpy((v6 + 80), "createdTimer");
  *(v6 + 93) = 0;
  *(v6 + 94) = -5120;
  v10 = v0[1];
  if (v10)
  {
    v11 = type metadata accessor for TimerTimer(0);
    v12 = v10;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  *(v6 + 96) = v12;
  *(v6 + 120) = v11;
  *(v6 + 128) = 0xD000000000000016;
  *(v6 + 136) = 0x800000000012CEA0;
  TimerHandledOnWatchParameters = type metadata accessor for CreateTimerHandledOnWatchParameters(0);
  sub_E344(v0 + *(TimerHandledOnWatchParameters + 24), v5, &unk_15F170, &unk_126E00);
  v14 = sub_124E4C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v5, 1, v14) == 1)
  {

    sub_5CA8(v5, &unk_15F170, &unk_126E00);
    *(v6 + 144) = 0u;
    *(v6 + 160) = 0u;
  }

  else
  {
    *(v6 + 168) = v14;
    v17 = sub_23B4C((v6 + 144));
    (*(v15 + 32))(v17, v5, v14);
  }

  *(v6 + 176) = 0x6174614477656976;
  *(v6 + 184) = 0xE800000000000000;
  v18 = v0 + *(TimerHandledOnWatchParameters + 28);
  v19 = v23;
  sub_E344(v18, v23, &unk_15F170, &unk_126E00);
  if (v16(v19, 1, v14) == 1)
  {
    sub_5CA8(v19, &unk_15F170, &unk_126E00);
    *(v6 + 192) = 0u;
    *(v6 + 208) = 0u;
  }

  else
  {
    *(v6 + 216) = v14;
    v20 = sub_23B4C((v6 + 192));
    (*(v15 + 32))(v20, v19, v14);
  }

  return v6;
}

uint64_t sub_31288(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_5AE8(&unk_15F170, &unk_126E00);
  v2[4] = swift_task_alloc();
  v2[5] = type metadata accessor for CreateTimerHandledParameters(0);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_31354, 0, 0);
}

uint64_t sub_31354()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  *v2 = 0;
  v5 = *(v1 + 20);
  v6 = sub_124E4C();
  v7 = *(v6 - 8);
  (*(v7 + 56))(&v2[v5], 1, 1, v6);
  v8 = *v3;
  *v2 = v8;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v9 = swift_allocObject();
  v0[7] = v9;
  *(v9 + 16) = xmmword_1270C0;
  strcpy((v9 + 32), "createdTimer");
  *(v9 + 45) = 0;
  *(v9 + 46) = -5120;
  v10 = type metadata accessor for TimerTimer(0);
  *(v9 + 48) = v8;
  *(v9 + 72) = v10;
  *(v9 + 80) = 0xD000000000000016;
  *(v9 + 88) = 0x800000000012CEA0;
  sub_E344(&v2[v5], v4, &unk_15F170, &unk_126E00);
  v11 = (*(v7 + 48))(v4, 1, v6);
  v12 = v0[4];
  if (v11 == 1)
  {
    swift_retain_n();
    sub_5CA8(v12, &unk_15F170, &unk_126E00);
    *(v9 + 96) = 0u;
    *(v9 + 112) = 0u;
  }

  else
  {
    *(v9 + 120) = v6;
    v13 = sub_23B4C((v9 + 96));
    (*(v7 + 32))(v13, v12, v6);
    swift_retain_n();
  }

  v16 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v14 = swift_task_alloc();
  v0[8] = v14;
  *v14 = v0;
  v14[1] = sub_315CC;

  return v16(0xD000000000000013, 0x800000000012CEC0, v9);
}

uint64_t sub_315CC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_317AC;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_31718;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_31718()
{
  sub_3282C(v0[6], type metadata accessor for CreateTimerHandledParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_317AC()
{
  sub_3282C(*(v0 + 48), type metadata accessor for CreateTimerHandledParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3183C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for CreateTimerHandledOnWatchParameters(0);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_318D4, 0, 0);
}

uint64_t sub_318D4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  *v1 = 0;
  *(v1 + 1) = 0;
  v4 = *(v2 + 24);
  v5 = sub_124E4C();
  v6 = *(*(v5 - 8) + 56);
  v6(&v1[v4], 1, 1, v5);
  v6(&v1[*(v2 + 28)], 1, 1, v5);
  v3(v1);
  v7 = sub_30F60();
  v0[7] = v7;
  v10 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_31A40;

  return v10(0xD00000000000001ALL, 0x800000000012CF70, v7);
}

uint64_t sub_31A40(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_31C14;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_31B8C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_31B8C()
{
  sub_3282C(v0[6], type metadata accessor for CreateTimerHandledOnWatchParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_31C14()
{
  sub_3282C(*(v0 + 48), type metadata accessor for CreateTimerHandledOnWatchParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_31C98(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_31CB8, 0, 0);
}

uint64_t sub_31CB8()
{
  v1 = **(v0 + 24);
  *(v0 + 32) = v1;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_126CB0;
  strcpy((v2 + 32), "createdTimer");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  *(v2 + 72) = type metadata accessor for TimerTimer(0);
  *(v2 + 48) = v1;
  v5 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  swift_retain_n();
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_31E04;

  return v5(0xD000000000000018, 0x800000000012CEE0, v2);
}

uint64_t sub_31E04(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_31FB8;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_31F50;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_31F50()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_31FB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3201C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_5AE8(&unk_15F170, &unk_126E00);
  v3[5] = swift_task_alloc();
  v3[6] = type metadata accessor for CreateTimerPromptLabelDuplicateParameters(0);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_320EC, 0, 0);
}

uint64_t sub_320EC()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[2];
  *v2 = 0;
  v4 = *(v1 + 20);
  v5 = sub_124E4C();
  v6 = *(v5 - 8);
  (*(v6 + 56))(&v2[v4], 1, 1, v5);
  v3(v2);
  sub_5AE8(&qword_15F180, &unk_126E10);
  v7 = swift_allocObject();
  v0[8] = v7;
  *(v7 + 16) = xmmword_1270C0;
  *(v7 + 32) = 0x6E6F697461727564;
  *(v7 + 40) = 0xE800000000000000;
  v8 = *v2;
  if (*v2)
  {
    v9 = sub_124D7C();
    v10 = v8;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
  }

  v11 = v0[5];
  *(v7 + 48) = v10;
  *(v7 + 72) = v9;
  *(v7 + 80) = 0x62614C72656D6974;
  *(v7 + 88) = 0xEA00000000006C65;
  sub_E344(&v2[v4], v11, &unk_15F170, &unk_126E00);
  v12 = (*(v6 + 48))(v11, 1, v5);
  v13 = v0[5];
  if (v12 == 1)
  {

    sub_5CA8(v13, &unk_15F170, &unk_126E00);
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
  }

  else
  {
    *(v7 + 120) = v5;
    v14 = sub_23B4C((v7 + 96));
    (*(v6 + 32))(v14, v13, v5);
  }

  v17 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_32374;

  return v17(0xD000000000000020, 0x800000000012CF20, v7);
}

uint64_t sub_32374(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_32554;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_324C0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_324C0()
{
  sub_3282C(v0[7], type metadata accessor for CreateTimerPromptLabelDuplicateParameters);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_32554()
{
  sub_3282C(*(v0 + 56), type metadata accessor for CreateTimerPromptLabelDuplicateParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_325E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_327F4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3282C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_328F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_5AE8(&unk_15F170, &unk_126E00);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_329CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_5AE8(&unk_15F170, &unk_126E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_32A9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_32DD4(319, a4, a5);
  if (v5 <= 0x3F)
  {
    sub_32DD4(319, &qword_15FD00, &type metadata accessor for SpeakableString);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_32B58(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_5AE8(&unk_15F170, &unk_126E00);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_32C34(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_5AE8(&unk_15F170, &unk_126E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_32CE4(uint64_t a1)
{
  sub_32DD4(319, &unk_15FE30, &type metadata accessor for SirikitApp);
  if (v1 <= 0x3F)
  {
    sub_32DD4(319, &unk_15FD98, type metadata accessor for TimerTimer);
    if (v2 <= 0x3F)
    {
      sub_32DD4(319, &qword_15FD00, &type metadata accessor for SpeakableString);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_32DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_125F2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_32E30()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15FE68);
  sub_5B30(v0, qword_15FE68);
  return sub_1257AC();
}

uint64_t sub_32E7C()
{
  v0 = sub_123E8C();
  v36 = *(v0 - 8);
  v37 = v0;
  __chkstk_darwin(v0);
  v35 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_123E4C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v34 - v7;
  v9 = sub_123D7C();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = __chkstk_darwin(v9);
  v34 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v38 = &v34 - v12;
  v13 = sub_123D9C();
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = 0;
    while (v15 < *(v13 + 16))
    {
      (*(v3 + 16))(v6, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v2);
      if (sub_123DBC())
      {

        (*(v3 + 32))(v8, v6, v2);
        v16 = v35;
        sub_123E0C();
        (*(v3 + 8))(v8, v2);
        v17 = v34;
        sub_123E5C();
        (*(v36 + 8))(v16, v37);
        v19 = v38;
        v18 = v39;
        v20 = v40;
        (*(v39 + 32))(v38, v17, v40);
        sub_123F0C();
        v26 = sub_12424C();
        if (!(v26 >> 62))
        {
          if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_15;
          }

LABEL_22:

          if (qword_15EE00 == -1)
          {
LABEL_23:
            v30 = sub_125ABC();
            sub_5B30(v30, qword_15FE68);
            v31 = sub_125AAC();
            v32 = sub_125DEC();
            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              *v33 = 0;
              _os_log_impl(&dword_0, v31, v32, "USO tasks graph has no tasks. Returning nil intent.", v33, 2u);
            }

            (*(v18 + 8))(v19, v20);
            return 0;
          }

LABEL_28:
          swift_once();
          goto LABEL_23;
        }

        v28 = v26;
        v29 = sub_1260FC();
        v26 = v28;
        if (!v29)
        {
          goto LABEL_22;
        }

LABEL_15:
        if ((v26 & 0xC000000000000001) != 0)
        {
          v27 = sub_125FFC();
        }

        else
        {
          if (!*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_28;
          }

          v27 = *(v26 + 32);
        }

        (*(v18 + 8))(v19, v20);
        return v27;
      }

      ++v15;
      (*(v3 + 8))(v6, v2);
      if (v14 == v15)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_6:

  if (qword_15EE00 != -1)
  {
LABEL_20:
    swift_once();
  }

  v21 = sub_125ABC();
  sub_5B30(v21, qword_15FE68);
  v22 = sub_125AAC();
  v23 = sub_125DEC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "Failed to parse userParse. Returning nil intent.", v24, 2u);
  }

  return 0;
}

id sub_3341C()
{
  if (!sub_12468C())
  {
    return 0;
  }

  v0 = sub_1243BC();
  if (v0)
  {
    sub_1243FC();
    v2 = v1;

    if (v2 > 0.0)
    {
      if (qword_15EE00 != -1)
      {
        swift_once();
      }

      v3 = sub_125ABC();
      sub_5B30(v3, qword_15FE68);
      v4 = sub_125AAC();
      v5 = sub_125DFC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 134217984;
        *(v6 + 4) = v2;
        _os_log_impl(&dword_0, v4, v5, "makeSleepTimersIntent found valid parameters to create sleep timer for seconds: %f", v6, 0xCu);
      }

      v0 = [objc_allocWithZone(sub_1255EC()) init];
      [v0 setLabel:0];
      sub_1255DC();
      [v0 setType:2];
      goto LABEL_9;
    }

    if (qword_15EE00 != -1)
    {
      swift_once();
    }

    v7 = sub_125ABC();
    sub_5B30(v7, qword_15FE68);
    v8 = sub_125AAC();
    v9 = sub_125DEC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "TimerFlowDelegatePlugin was presented a sleep timer ontology, but with a duration of zero seconds.", v10, 2u);
    }

    return 0;
  }

LABEL_9:

  return v0;
}

id sub_33650(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v59 - v5;
  v7 = sub_12532C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EE00 != -1)
  {
    swift_once();
  }

  v11 = sub_125ABC();
  v12 = sub_5B30(v11, qword_15FE68);

  v13 = sub_125AAC();
  v14 = sub_125DFC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v61 = v12;
    v16 = v15;
    v60 = swift_slowAlloc();
    v65[0] = v60;
    *v16 = 136315138;
    v63[0] = a1;
    sub_124BAC();
    v62 = v8;

    v17 = sub_125BAC();
    v19 = v6;
    v20 = v7;
    v21 = sub_8530(v17, v18, v65);
    v8 = v62;

    *(v16 + 4) = v21;
    v7 = v20;
    v6 = v19;
    _os_log_impl(&dword_0, v13, v14, "Building SK intent from task: %s", v16, 0xCu);
    sub_5BB0(v60);
  }

  v22 = sub_C66F0();
  if (v22)
  {
    v23 = sub_3341C();
    if (v23)
    {
      v24 = v23;
      v25 = sub_125AAC();
      v26 = sub_125DFC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_0, v25, v26, "TimerFlowDelegatePlugin found trigger in stop task, attempting sleep timer intent creation", v27, 2u);
      }

      return v24;
    }
  }

  switch(sub_C69B0(v22))
  {
    case 1u:
    case 9u:
      goto LABEL_18;
    case 2u:

      v36 = sub_1172B0(v35);
      v37 = [objc_allocWithZone(sub_12561C()) init];
      goto LABEL_22;
    case 3u:
    case 4u:
      v31 = sub_C6B1C();
      if (v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = _swiftEmptyArrayStorage;
      }

      v65[0] = 22100;
      v65[1] = 0xE200000000000000;
      __chkstk_darwin(v31);
      *(&v59 - 2) = v65;
      v33 = sub_83744(sub_34084, (&v59 - 4), v32);

      if ((v33 & 1) == 0)
      {
        return 0;
      }

LABEL_18:
      sub_1255EC();

      return sub_F139C(v34);
    case 5u:
      sub_12555C();

      return sub_F17B8(v41);
    case 7u:
    case 0x11u:
    case 0x12u:
      sub_12558C();

      return sub_F1D90(v30);
    case 8u:
      sub_12564C();

      return sub_F2BE0(v52);
    case 0xAu:
      sub_E344(a2, v6, &qword_15FFB0, &unk_1270A0);
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        (*(v8 + 32))(v10, v6, v7);
        v54 = sub_1252DC();
        (*(v8 + 8))(v10, v7);
        return v54;
      }

      sub_5CA8(v6, &qword_15FFB0, &unk_1270A0);

      v36 = sub_1172B0(v38);
      v37 = [objc_allocWithZone(sub_12561C()) init];
LABEL_22:
      v39 = v37;
      [v39 setTargetTimer:v36];
      sub_12577C();
      sub_CBEB0();
      sub_C6B1C();
      v40 = sub_12576C();
      [v39 setTargetingInfo:v40];

      return v39;
    case 0xCu:
      sub_12550C();

      return sub_F18EC(v53, 0);
    case 0xDu:

      v42 = sub_125AAC();
      v43 = sub_125DEC();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v65[0] = v45;
        *v44 = 136315138;
        v46 = sub_124B8C();
        v48 = sub_8530(v46, v47, v65);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_0, v42, v43, "Unexpected timerVerb: %s", v44, 0xCu);
        sub_5BB0(v45);
      }

      return 0;
    case 0xEu:
      sub_12437C();
      sub_E344(v65, v63, &unk_161840, &qword_128110);
      if (v64)
      {
        sub_12458C();
        if (swift_dynamicCast())
        {
          sub_123F3C();
          if (!v63[0])
          {
            goto LABEL_43;
          }

          UsoEntity_common_Timer.duration.getter();
          sub_8BAC();
          v49 = UsoEntity_common_Timer.isMultiple.getter();
          isa = sub_125EFC(0).super.super.isa;
          v51 = sub_125F0C();

          if (v51)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        sub_5CA8(v63, &unk_161840, &qword_128110);
      }

      sub_E344(v65, v63, &unk_161840, &qword_128110);
      if (v64)
      {
        sub_12457C();
        if (swift_dynamicCast())
        {
          sub_123F3C();
          if (v63[0])
          {
            v55 = sub_1242DC();

            if (v55)
            {
              v56 = sub_1243BC();

              if (v56)
              {

LABEL_43:
                sub_1255EC();

                v54 = sub_F139C(v57);

                goto LABEL_47;
              }
            }
          }
        }
      }

      else
      {
        sub_5CA8(v63, &unk_161840, &qword_128110);
      }

      sub_12568C();

      v54 = sub_F14F0(v58);
LABEL_47:
      sub_5CA8(v65, &unk_161840, &qword_128110);
      return v54;
    default:
      sub_12568C();

      return sub_F14F0(v29);
  }
}

id sub_33F74(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
  if (v4)
  {
    v5 = sub_33650(v4, a2);

    return v5;
  }

  else
  {
    if (qword_15EE00 != -1)
    {
      swift_once();
    }

    v7 = sub_125ABC();
    sub_5B30(v7, qword_15FE68);
    v8 = sub_125AAC();
    v9 = sub_125DEC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "No firstUsoTask contained in userDialogAct. Returning nil intent.", v10, 2u);
    }

    return 0;
  }
}

uint64_t sub_34084(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1261BC() & 1;
  }
}

id sub_340DC(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
    case 4:
      if (qword_15EE00 != -1)
      {
        swift_once();
      }

      v11 = sub_125ABC();
      sub_5B30(v11, qword_15FE68);
      v4 = sub_125AAC();
      v12 = sub_125DEC();
      if (!os_log_type_enabled(v4, v12))
      {
        goto LABEL_27;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Calling .create for disambiguation item selection is invalid";
      goto LABEL_25;
    case 2:
    case 10:
      v18 = [objc_allocWithZone(sub_12561C()) init];
      [v18 setTargetTimer:a1];
      v16 = v18;
      v19 = [v18 targetTimer];
      if (v19)
      {
        v20 = v19;
        sub_8BAC();
        isa = sub_125EEC(0).super.super.isa;
        [v20 setShouldMatchAny:isa];
      }

      return v16;
    case 5:
      sub_8BAC();
      v15.super.super.isa = sub_125EEC(0).super.super.isa;
      v17 = [objc_allocWithZone(sub_12555C()) init];
      goto LABEL_16;
    case 7:
    case 17:
    case 18:
      sub_8BAC();
      v15.super.super.isa = sub_125EEC(0).super.super.isa;
      v16 = [objc_allocWithZone(sub_12558C()) init];
      [a1 setShouldMatchAny:v15.super.super.isa];
      [v16 setTargetTimer:a1];
      [v16 setToTimer:0];
      goto LABEL_29;
    case 8:
    case 9:
      sub_8BAC();
      v15.super.super.isa = sub_125EEC(0).super.super.isa;
      v17 = [objc_allocWithZone(sub_12564C()) init];
LABEL_16:
      v16 = v17;
      [a1 setShouldMatchAny:v15.super.super.isa];
      [v16 setTargetTimer:a1];
      goto LABEL_29;
    case 12:
      [objc_opt_self() defaultDuration];
      v15.super.super.isa = sub_125D5C().super.super.isa;
      v16 = [objc_allocWithZone(sub_12550C()) init];
      [v16 setTargetTimer:a1];
      [v16 setToDuration:v15.super.super.isa];
      [v16 setToLabel:0];
LABEL_29:

      return v16;
    case 13:
      if (qword_15EE00 != -1)
      {
        swift_once();
      }

      v22 = sub_125ABC();
      sub_5B30(v22, qword_15FE68);
      v4 = sub_125AAC();
      v23 = sub_125DEC();
      if (!os_log_type_enabled(v4, v23))
      {
        goto LABEL_27;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      v26 = sub_125BAC();
      v28 = sub_8530(v26, v27, &v31);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_0, v4, v23, "Unexpected timerVerb: %s", v24, 0xCu);
      sub_5BB0(v25);
      goto LABEL_6;
    case 14:
      if (qword_15EE00 != -1)
      {
        swift_once();
      }

      v29 = sub_125ABC();
      sub_5B30(v29, qword_15FE68);
      v4 = sub_125AAC();
      v12 = sub_125DEC();
      if (!os_log_type_enabled(v4, v12))
      {
        goto LABEL_27;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Calling .noVerb for disambiguation item selection is invalid";
LABEL_25:
      _os_log_impl(&dword_0, v4, v12, v14, v13, 2u);
      goto LABEL_26;
    default:
      if (qword_15EE00 != -1)
      {
        swift_once();
      }

      v3 = sub_125ABC();
      sub_5B30(v3, qword_15FE68);
      v4 = sub_125AAC();
      v5 = sub_125DEC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_27;
      }

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v31 = v7;
      *v6 = 136315138;
      v8 = sub_125BAC();
      v10 = sub_8530(v8, v9, &v31);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_0, v4, v5, "Calling verb %s for disambiguation selection is invalid", v6, 0xCu);
      sub_5BB0(v7);
LABEL_6:

LABEL_26:

LABEL_27:

      return 0;
  }
}

void sub_346FC(NSObject *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v306 = a3;
  v313 = a2;
  v349 = a5;
  v350 = a1;
  v300 = sub_123DAC();
  v299 = *(v300 - 8);
  __chkstk_darwin(v300);
  v298 = &v294 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = type metadata accessor for TimerNLv3Intent(0);
  v7 = __chkstk_darwin(v307);
  v322 = &v294 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v318 = &v294 - v9;
  v302 = sub_123CDC();
  v321 = *(v302 - 8);
  __chkstk_darwin(v302);
  v301 = &v294 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_123D6C();
  v303 = *(v304 - 8);
  v11 = __chkstk_darwin(v304);
  v296 = &v294 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v297 = &v294 - v14;
  __chkstk_darwin(v13);
  v305 = &v294 - v15;
  v311 = sub_124BCC();
  v310 = *(v311 - 8);
  __chkstk_darwin(v311);
  v309 = &v294 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_123D3C();
  v328 = *(v320 - 8);
  v17 = __chkstk_darwin(v320);
  v314 = &v294 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v325 = &v294 - v19;
  v334 = sub_12379C();
  v330 = *(v334 - 8);
  __chkstk_darwin(v334);
  v312 = &v294 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = sub_5AE8(&qword_15FFB8, &qword_127BD0);
  __chkstk_darwin(v327);
  v333 = &v294 - v21;
  v22 = sub_5AE8(&qword_15FFC0, &qword_127BD8);
  v23 = __chkstk_darwin(v22 - 8);
  v317 = &v294 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v294 - v26;
  __chkstk_darwin(v25);
  v338 = &v294 - v28;
  v29 = sub_12514C();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v337 = &v294 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_5AE8(&qword_15FFC8, &qword_127BE0);
  v33 = __chkstk_darwin(v32);
  v316 = &v294 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v335 = &v294 - v36;
  v37 = __chkstk_darwin(v35);
  v332 = &v294 - v38;
  v39 = __chkstk_darwin(v37);
  v336 = &v294 - v40;
  __chkstk_darwin(v39);
  v42 = &v294 - v41;
  v43 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v44 = __chkstk_darwin(v43 - 8);
  v308 = &v294 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v315 = &v294 - v47;
  v48 = __chkstk_darwin(v46);
  v324 = &v294 - v49;
  v50 = __chkstk_darwin(v48);
  v340 = &v294 - v51;
  v52 = __chkstk_darwin(v50);
  v323 = &v294 - v53;
  v54 = __chkstk_darwin(v52);
  v331 = &v294 - v55;
  v56 = __chkstk_darwin(v54);
  v329 = &v294 - v57;
  v58 = __chkstk_darwin(v56);
  v341 = &v294 - v59;
  v60 = __chkstk_darwin(v58);
  v62 = &v294 - v61;
  __chkstk_darwin(v60);
  v64 = &v294 - v63;
  v65 = v30[13];
  v339 = enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  v343 = v65;
  v344 = v30 + 13;
  v65(&v294 - v63);
  v345 = v30[7];
  v346 = v30 + 7;
  v345(v64, 0, 1, v29);
  v347 = v32;
  v348 = a4;
  v66 = *(v32 + 48);
  sub_E344(a4, v42, &unk_15F1B0, qword_126E30);
  sub_E344(v64, &v42[v66], &unk_15F1B0, qword_126E30);
  v342 = v30;
  v67 = v30 + 6;
  v68 = v30[6];
  if (v68(v42, 1, v29) == 1)
  {
    sub_5CA8(v64, &unk_15F1B0, qword_126E30);
    v69 = v29;
    if (v68(&v42[v66], 1, v29) == 1)
    {
      sub_5CA8(v42, &unk_15F1B0, qword_126E30);
      v70 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_E344(v42, v62, &unk_15F1B0, qword_126E30);
  if (v68(&v42[v66], 1, v29) == 1)
  {
    sub_5CA8(v64, &unk_15F1B0, qword_126E30);
    v71 = v62;
    v69 = v29;
    (v342[1])(v71, v29);
LABEL_6:
    sub_5CA8(v42, &qword_15FFC8, &qword_127BE0);
    v70 = 0;
    goto LABEL_8;
  }

  v72 = v342;
  v73 = &v42[v66];
  v74 = v337;
  (v342[4])(v337, v73, v29);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v70 = sub_125B7C();
  v319 = v27;
  v75 = v72[1];
  v75(v74, v29);
  sub_5CA8(v64, &unk_15F1B0, qword_126E30);
  v76 = v62;
  v69 = v29;
  v75(v76, v29);
  v27 = v319;
  sub_5CA8(v42, &unk_15F1B0, qword_126E30);
LABEL_8:
  v77 = v341;
  if ((sub_A4794(v350, v70 & 1) & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v84 = sub_125ABC();
    sub_5B30(v84, qword_161820);
    v85 = sub_125AAC();
    v86 = sub_125DFC();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_0, v85, v86, "decideActionForInput(input:type:halInfo: ... no valid timer input", v87, 2u);
    }

    goto LABEL_16;
  }

  v78 = v69;
  v343(v77, enum case for DecideAction.PromptExpectation.confirmation(_:), v69);
  v345(v77, 0, 1, v69);
  v79 = *(v347 + 48);
  v80 = v336;
  sub_E344(v348, v336, &unk_15F1B0, qword_126E30);
  sub_E344(v77, v80 + v79, &unk_15F1B0, qword_126E30);
  v81 = v68(v80, 1, v78);
  v326 = v68;
  if (v81 == 1)
  {
    sub_5CA8(v77, &unk_15F1B0, qword_126E30);
    v82 = v68((v80 + v79), 1, v78);
    v83 = v340;
    if (v82 == 1)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v88 = v329;
  sub_E344(v80, v329, &unk_15F1B0, qword_126E30);
  if (v68((v80 + v79), 1, v78) == 1)
  {
    sub_5CA8(v77, &unk_15F1B0, qword_126E30);
    (v342[1])(v88, v78);
    v83 = v340;
LABEL_19:
    sub_5CA8(v80, &qword_15FFC8, &qword_127BE0);
    v89 = v333;
    v90 = v334;
    v91 = v338;
    goto LABEL_20;
  }

  v295 = v67;
  v101 = v342;
  v102 = v80 + v79;
  v103 = v337;
  (v342[4])(v337, v102, v78);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  LODWORD(v341) = sub_125B7C();
  v104 = v101[1];
  v104(v103, v78);
  sub_5CA8(v77, &unk_15F1B0, qword_126E30);
  v104(v88, v78);
  v67 = v295;
  sub_5CA8(v80, &unk_15F1B0, qword_126E30);
  v89 = v333;
  v90 = v334;
  v91 = v338;
  v83 = v340;
  if (v341)
  {
    goto LABEL_38;
  }

LABEL_20:
  v319 = v27;
  v343(v83, v339, v78);
  v345(v83, 0, 1, v78);
  v92 = *(v347 + 48);
  v80 = v335;
  sub_E344(v348, v335, &unk_15F1B0, qword_126E30);
  sub_E344(v83, v80 + v92, &unk_15F1B0, qword_126E30);
  v93 = v326;
  if (v326(v80, 1, v78) == 1)
  {
    sub_5CA8(v83, &unk_15F1B0, qword_126E30);
    if (v93(v80 + v92, 1, v78) == 1)
    {
LABEL_22:
      sub_5CA8(v80, &unk_15F1B0, qword_126E30);
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v94 = v324;
  sub_E344(v80, v324, &unk_15F1B0, qword_126E30);
  if (v93(v80 + v92, 1, v78) == 1)
  {
    sub_5CA8(v340, &unk_15F1B0, qword_126E30);
    (v342[1])(v94, v78);
LABEL_25:
    sub_5CA8(v80, &qword_15FFC8, &qword_127BE0);
    v95 = v319;
    v96 = v90;
    goto LABEL_26;
  }

  v118 = v342;
  v119 = v80 + v92;
  v120 = v337;
  (v342[4])(v337, v119, v78);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v121 = sub_125B7C();
  v122 = v118[1];
  v122(v120, v78);
  sub_5CA8(v340, &unk_15F1B0, qword_126E30);
  v122(v94, v78);
  v91 = v338;
  sub_5CA8(v335, &unk_15F1B0, qword_126E30);
  v95 = v319;
  v96 = v90;
  if (v121)
  {
LABEL_38:
    v123 = v331;
    v343(v331, v339, v78);
    v345(v123, 0, 1, v78);
    v124 = *(v347 + 48);
    v125 = v332;
    sub_E344(v348, v332, &unk_15F1B0, qword_126E30);
    sub_E344(v123, v125 + v124, &unk_15F1B0, qword_126E30);
    v126 = v326;
    if (v326(v125, 1, v78) == 1)
    {
      sub_5CA8(v123, &unk_15F1B0, qword_126E30);
      v127 = v126(v125 + v124, 1, v78);
      v128 = v349;
      if (v127 == 1)
      {
        sub_5CA8(v125, &unk_15F1B0, qword_126E30);
        v129 = 1;
LABEL_45:
        sub_9D860(v350, v129 & 1, v128);
        return;
      }
    }

    else
    {
      v130 = v323;
      sub_E344(v125, v323, &unk_15F1B0, qword_126E30);
      v131 = v126(v125 + v124, 1, v78);
      v128 = v349;
      if (v131 != 1)
      {
        v132 = v342;
        v133 = v125 + v124;
        v134 = v337;
        (v342[4])(v337, v133, v78);
        sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
        v129 = sub_125B7C();
        v135 = v132[1];
        v135(v134, v78);
        sub_5CA8(v123, &unk_15F1B0, qword_126E30);
        v135(v130, v78);
        sub_5CA8(v125, &unk_15F1B0, qword_126E30);
        goto LABEL_45;
      }

      sub_5CA8(v123, &unk_15F1B0, qword_126E30);
      (v342[1])(v130, v78);
    }

    sub_5CA8(v125, &qword_15FFC8, &qword_127BE0);
    v129 = 0;
    goto LABEL_45;
  }

LABEL_26:
  v295 = v67;
  sub_9F55C(v91);
  sub_12376C();
  v97 = v91;
  v98 = v330;
  (*(v330 + 56))(v95, 0, 1, v96);
  v99 = *(v327 + 48);
  sub_E344(v97, v89, &qword_15FFC0, &qword_127BD8);
  sub_E344(v95, v89 + v99, &qword_15FFC0, &qword_127BD8);
  v100 = *(v98 + 48);
  if (v100(v89, 1, v96) == 1)
  {
    sub_5CA8(v95, &qword_15FFC0, &qword_127BD8);
    sub_5CA8(v97, &qword_15FFC0, &qword_127BD8);
    if (v100(v89 + v99, 1, v96) == 1)
    {
      sub_5CA8(v89, &qword_15FFC0, &qword_127BD8);
      goto LABEL_51;
    }

    goto LABEL_33;
  }

  v105 = v317;
  sub_E344(v89, v317, &qword_15FFC0, &qword_127BD8);
  if (v100(v89 + v99, 1, v96) == 1)
  {
    sub_5CA8(v319, &qword_15FFC0, &qword_127BD8);
    sub_5CA8(v338, &qword_15FFC0, &qword_127BD8);
    (*(v330 + 8))(v105, v96);
LABEL_33:
    sub_5CA8(v89, &qword_15FFB8, &qword_127BD0);
    v106 = v322;
    v107 = v321;
    v108 = v350;
    goto LABEL_34;
  }

  v140 = v330;
  v141 = v89 + v99;
  v142 = v312;
  (*(v330 + 32))(v312, v141, v96);
  sub_536D8(&qword_161880, 255, &type metadata accessor for ActionForInput, &protocol conformance descriptor for ActionForInput);
  v143 = sub_125B7C();
  v144 = *(v140 + 8);
  v144(v142, v96);
  sub_5CA8(v319, &qword_15FFC0, &qword_127BD8);
  sub_5CA8(v338, &qword_15FFC0, &qword_127BD8);
  v144(v105, v96);
  sub_5CA8(v89, &qword_15FFC0, &qword_127BD8);
  v106 = v322;
  v107 = v321;
  v108 = v350;
  if (v143)
  {
LABEL_51:
    v145 = v315;
    v343(v315, enum case for DecideAction.PromptExpectation.slot(_:), v78);
    v345(v145, 0, 1, v78);
    v146 = *(v347 + 48);
    v147 = v316;
    sub_E344(v348, v316, &unk_15F1B0, qword_126E30);
    sub_E344(v145, v147 + v146, &unk_15F1B0, qword_126E30);
    v148 = v326;
    if (v326(v147, 1, v78) == 1)
    {
      sub_5CA8(v145, &unk_15F1B0, qword_126E30);
      if (v148(v147 + v146, 1, v78) == 1)
      {
        sub_5CA8(v147, &unk_15F1B0, qword_126E30);
LABEL_74:
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v173 = sub_125ABC();
        sub_5B30(v173, qword_161820);
        v174 = sub_125AAC();
        v175 = sub_125DFC();
        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          *v176 = 0;
          _os_log_impl(&dword_0, v174, v175, "Received cancel input slot prompt input – .cancel()", v176, 2u);
        }

        sub_12376C();
        return;
      }
    }

    else
    {
      v149 = v308;
      sub_E344(v147, v308, &unk_15F1B0, qword_126E30);
      if (v148(v147 + v146, 1, v78) != 1)
      {
        v168 = v342;
        v169 = v147 + v146;
        v170 = v337;
        (v342[4])(v337, v169, v78);
        sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
        v171 = sub_125B7C();
        v172 = v168[1];
        v172(v170, v78);
        sub_5CA8(v145, &unk_15F1B0, qword_126E30);
        v172(v149, v78);
        sub_5CA8(v147, &unk_15F1B0, qword_126E30);
        if (v171)
        {
          goto LABEL_74;
        }

        goto LABEL_57;
      }

      sub_5CA8(v145, &unk_15F1B0, qword_126E30);
      (v342[1])(v149, v78);
    }

    sub_5CA8(v147, &qword_15FFC8, &qword_127BE0);
LABEL_57:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v150 = sub_125ABC();
    sub_5B30(v150, qword_161820);
    v85 = sub_125AAC();
    v137 = sub_125DFC();
    if (!os_log_type_enabled(v85, v137))
    {
      goto LABEL_16;
    }

    v138 = swift_slowAlloc();
    *v138 = 0;
    v139 = "Received cancel input on non-confirmation, non-slot prompt input – .ignore()";
LABEL_61:
    _os_log_impl(&dword_0, v85, v137, v139, v138, 2u);

LABEL_16:

    sub_12378C();
    return;
  }

LABEL_34:
  v109 = v325;
  sub_123CCC();
  v110 = sub_4C6B4(v109);
  v111 = *(v328 + 8);
  v112 = v320;
  v111(v109, v320);
  if ((v110 & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v136 = sub_125ABC();
    sub_5B30(v136, qword_161820);
    v85 = sub_125AAC();
    v137 = sub_125DFC();
    if (!os_log_type_enabled(v85, v137))
    {
      goto LABEL_16;
    }

    v138 = swift_slowAlloc();
    *v138 = 0;
    v139 = "Disallowing timer input based on allowed input types for current stack state.";
    goto LABEL_61;
  }

  v113 = v314;
  sub_123CCC();
  v114 = v328;
  v115 = (*(v328 + 88))(v113, v112);
  if (v115 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v116 = v111;
    (*(v114 + 96))(v113, v112);
    v117 = v318;
    goto LABEL_65;
  }

  v117 = v318;
  if (v115 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v116 = v111;
    (*(v328 + 96))(v113, v112);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

LABEL_65:
    v151 = *(v310 + 32);
    v152 = v309;
    v153 = v113;
    v154 = v311;
    v151(v309, v153, v311);
    v151(v117, v152, v154);
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v155 = sub_125ABC();
    sub_5B30(v155, qword_161820);
    sub_9848(v117, v106);
    v156 = sub_125AAC();
    v157 = sub_125DFC();
    v158 = v116;
    if (os_log_type_enabled(v156, v157))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v352 = v160;
      *v159 = 136315138;
      sub_536D8(&qword_161ED0, 255, type metadata accessor for TimerNLv3Intent, &unk_12A9D8);
      v161 = sub_12618C();
      v162 = v106;
      v164 = v163;
      sub_97EC(v162);
      v165 = sub_8530(v161, v164, &v352);

      *(v159 + 4) = v165;
      _os_log_impl(&dword_0, v156, v157, "TimerNLIntent: %s", v159, 0xCu);
      sub_5BB0(v160);
      v112 = v320;
    }

    else
    {

      sub_97EC(v106);
    }

    v166 = v325;
    sub_123CCC();
    v167 = sub_A588C(v166, v313);
    v158(v166, v112);
    if (v167)
    {
      sub_1255EC();
      if (!swift_dynamicCastClass())
      {
        v182 = v167;
        v183 = sub_125AAC();
        v184 = sub_125DEC();

        if (os_log_type_enabled(v183, v184))
        {
          v185 = swift_slowAlloc();
          v352 = swift_slowAlloc();
          *v185 = 136315394;
          *(v185 + 4) = sub_8530(0xD000000000000011, 0x800000000012D040, &v352);
          *(v185 + 12) = 2080;
          v186 = v182;
          v187 = [v186 description];
          v188 = sub_125B9C();
          v190 = v189;

          v191 = sub_8530(v188, v190, &v352);

          *(v185 + 14) = v191;
          _os_log_impl(&dword_0, v183, v184, "Flows stack receives unexpected from input. Expecting: %s, Generated: %s", v185, 0x16u);
          swift_arrayDestroy();
        }

        v192 = v318;
        sub_12378C();

        v180 = v192;
        goto LABEL_90;
      }

      sub_12377C();
    }

    else
    {
      v177 = sub_125AAC();
      v178 = sub_125DEC();
      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        *v179 = 0;
        _os_log_impl(&dword_0, v177, v178, "Unable to parse intent from parse", v179, 2u);
      }

      sub_12378C();
    }

    v180 = v318;
LABEL_90:
    sub_97EC(v180);
    return;
  }

  if (v115 == enum case for Parse.directInvocation(_:))
  {
    sub_12377C();
    goto LABEL_85;
  }

  if (v115 != enum case for Parse.NLv4IntentOnly(_:))
  {
    if (v115 != enum case for Parse.uso(_:))
    {
      if (v115 == enum case for Parse.ifClientAction(_:))
      {
        v203 = v325;
        sub_123CCC();
        v204 = sub_A588C(v203, v313);
        v111(v203, v112);
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v205 = sub_125ABC();
        sub_5B30(v205, qword_161820);
        v206 = v204;
        v207 = sub_125AAC();
        v208 = sub_125DFC();

        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          v210 = swift_slowAlloc();
          v351 = v204;
          v352 = v210;
          *v209 = 136315138;
          v211 = v206;
          sub_5AE8(&unk_15FFD0, qword_127BE8);
          v212 = sub_125BAC();
          v214 = sub_8530(v212, v213, &v352);

          *(v209 + 4) = v214;
          _os_log_impl(&dword_0, v207, v208, "Handling ifClientAction for intent: %s", v209, 0xCu);
          sub_5BB0(v210);
          v112 = v320;
        }

        sub_12377C();
        v181 = v314;
        goto LABEL_86;
      }

      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v215 = sub_125ABC();
      sub_5B30(v215, qword_161820);
      v216 = v301;
      v217 = v302;
      (*(v107 + 16))(v301, v108, v302);
      v218 = sub_125AAC();
      v219 = sub_125DEC();
      if (os_log_type_enabled(v218, v219))
      {
        v220 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        v352 = v221;
        *v220 = 136315138;
        LODWORD(v348) = v219;
        v350 = v218;
        sub_123CCC();
        v222 = sub_125BAC();
        v224 = v223;
        (*(v107 + 8))(v216, v217);
        v225 = sub_8530(v222, v224, &v352);
        v112 = v320;

        *(v220 + 4) = v225;
        v226 = v350;
        _os_log_impl(&dword_0, v350, v348, "Received unsupported parse in decideActionForInput: %s", v220, 0xCu);
        sub_5BB0(v221);

        v113 = v314;
      }

      else
      {

        (*(v107 + 8))(v216, v217);
      }

      sub_12378C();
LABEL_85:
      v181 = v113;
LABEL_86:
      v111(v181, v112);
      return;
    }

    (*(v328 + 96))(v113, v112);
    (*(v303 + 32))(v305, v113, v304);
    if (v306)
    {
      v198 = v298;
      sub_123D5C();
      v199 = sub_123D8C();
      v200 = (*(v299 + 8))(v198, v300);
      if (v199)
      {
        v201 = sub_C69B0(v200);

        if (sub_B6264(v201) == 0x627265566F6ELL && v202 == 0xE600000000000000)
        {

LABEL_134:
          if (qword_15EED0 != -1)
          {
            swift_once();
          }

          v252 = sub_125ABC();
          sub_5B30(v252, qword_161820);
          v253 = v303;
          v254 = *(v303 + 16);
          v255 = v297;
          v256 = v304;
          v254(v297, v305, v304);
          v257 = sub_125AAC();
          v258 = sub_125DFC();
          if (os_log_type_enabled(v257, v258))
          {
            v259 = swift_slowAlloc();
            v260 = swift_slowAlloc();
            v352 = v260;
            *v259 = 136315138;
            v254(v296, v255, v256);
            v261 = sub_125BAC();
            v263 = v262;
            v264 = *(v253 + 8);
            v264(v255, v256);
            v265 = sub_8530(v261, v263, &v352);

            *(v259 + 4) = v265;
            _os_log_impl(&dword_0, v257, v258, "decideActionForInput decide handle disambiguation UsoParse: %s", v259, 0xCu);
            sub_5BB0(v260);
          }

          else
          {

            v264 = *(v253 + 8);
            v264(v255, v256);
          }

          sub_12377C();
          v264(v305, v256);
          return;
        }

        v251 = sub_1261BC();

        if (v251)
        {
          goto LABEL_134;
        }
      }
    }

    v266 = v325;
    sub_123CCC();
    v267 = sub_A588C(v266, v313);
    v111(v266, v112);
    if (v267 && (sub_1255EC(), (v268 = swift_dynamicCastClass()) != 0))
    {
      v269 = v268;
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v270 = sub_125ABC();
      sub_5B30(v270, qword_161820);
      v271 = v267;
      v272 = sub_125AAC();
      v273 = sub_125DFC();

      if (os_log_type_enabled(v272, v273))
      {
        v274 = swift_slowAlloc();
        v275 = swift_slowAlloc();
        v352 = v275;
        *v274 = 136315138;
        v276 = v271;
        v277 = [v269 description];
        v278 = sub_125B9C();
        v280 = v279;

        v281 = sub_8530(v278, v280, &v352);

        *(v274 + 4) = v281;
        _os_log_impl(&dword_0, v272, v273, "Handling action for intent: %s", v274, 0xCu);
        sub_5BB0(v275);
      }

      v282 = v304;
      v283 = v303;
      sub_12377C();

      (*(v283 + 8))(v305, v282);
    }

    else
    {
      v284 = v304;
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v285 = sub_125ABC();
      sub_5B30(v285, qword_161820);
      v286 = v267;
      v287 = sub_125AAC();
      v288 = sub_125DEC();

      if (os_log_type_enabled(v287, v288))
      {
        v289 = swift_slowAlloc();
        v352 = swift_slowAlloc();
        *v289 = 136315394;
        *(v289 + 4) = sub_8530(0xD000000000000011, 0x800000000012D040, &v352);
        *(v289 + 12) = 2080;
        v351 = v267;
        v290 = v286;
        sub_5AE8(&unk_15FFD0, qword_127BE8);
        v291 = sub_125BAC();
        v293 = sub_8530(v291, v292, &v352);

        *(v289 + 14) = v293;
        _os_log_impl(&dword_0, v287, v288, "decideActionForInput: Intent from parse does not match IntentType. Expected %s, received %s", v289, 0x16u);
        swift_arrayDestroy();
      }

      sub_12378C();
      (*(v303 + 8))(v305, v284);
    }

    return;
  }

  (*(v328 + 96))(v113, v112);
  v193 = *v113;
  if (v306)
  {
    ObjectType = swift_getObjectType();
    v195 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
    if (v195)
    {
      v196 = sub_C69B0(v195);

      if (sub_B6264(v196) == 0x627265566F6ELL && v197 == 0xE600000000000000)
      {

LABEL_114:
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v228 = sub_125ABC();
        sub_5B30(v228, qword_161820);
        swift_unknownObjectRetain();
        v229 = sub_125AAC();
        v230 = sub_125DFC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          v232 = swift_slowAlloc();
          v351 = v193;
          v352 = v232;
          *v231 = 136315138;
          swift_unknownObjectRetain();
          sub_5AE8(&unk_160610, &unk_129CC0);
          v233 = sub_125BAC();
          v235 = sub_8530(v233, v234, &v352);

          *(v231 + 4) = v235;
          _os_log_impl(&dword_0, v229, v230, "decideActionForInput decide handle disambiguation userDialogAct: %s", v231, 0xCu);
          sub_5BB0(v232);
        }

        sub_12377C();
        swift_unknownObjectRelease();
        return;
      }

      v227 = sub_1261BC();

      if (v227)
      {
        goto LABEL_114;
      }
    }
  }

  v236 = v325;
  sub_123CCC();
  v237 = sub_A588C(v236, v313);
  v111(v236, v112);
  if (v237 && (sub_1255EC(), swift_dynamicCastClass()))
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v238 = sub_125ABC();
    sub_5B30(v238, qword_161820);
    v239 = sub_125AAC();
    v240 = sub_125DFC();
    if (os_log_type_enabled(v239, v240))
    {
      v241 = swift_slowAlloc();
      *v241 = 0;
      _os_log_impl(&dword_0, v239, v240, "decideActionForInput: Handling action for intent", v241, 2u);
    }

    sub_12377C();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v242 = sub_125ABC();
    sub_5B30(v242, qword_161820);
    v243 = v237;
    v244 = sub_125AAC();
    v245 = sub_125DEC();

    if (os_log_type_enabled(v244, v245))
    {
      v246 = swift_slowAlloc();
      v352 = swift_slowAlloc();
      *v246 = 136315394;
      *(v246 + 4) = sub_8530(0xD000000000000011, 0x800000000012D040, &v352);
      *(v246 + 12) = 2080;
      v351 = v237;
      v247 = v243;
      sub_5AE8(&unk_15FFD0, qword_127BE8);
      v248 = sub_125BAC();
      v250 = sub_8530(v248, v249, &v352);

      *(v246 + 14) = v250;
      _os_log_impl(&dword_0, v244, v245, "decideActionForInput: Intent from parse does not match IntentType. Expected %s, received %s", v246, 0x16u);
      swift_arrayDestroy();
    }

    sub_12378C();
    swift_unknownObjectRelease();
  }
}

void sub_376BC(NSObject *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v306 = a3;
  v313 = a2;
  v349 = a5;
  v350 = a1;
  v300 = sub_123DAC();
  v299 = *(v300 - 8);
  __chkstk_darwin(v300);
  v298 = &v294 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = type metadata accessor for TimerNLv3Intent(0);
  v7 = __chkstk_darwin(v307);
  v322 = &v294 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v318 = &v294 - v9;
  v302 = sub_123CDC();
  v321 = *(v302 - 8);
  __chkstk_darwin(v302);
  v301 = &v294 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_123D6C();
  v303 = *(v304 - 8);
  v11 = __chkstk_darwin(v304);
  v296 = &v294 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v297 = &v294 - v14;
  __chkstk_darwin(v13);
  v305 = &v294 - v15;
  v311 = sub_124BCC();
  v310 = *(v311 - 8);
  __chkstk_darwin(v311);
  v309 = &v294 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_123D3C();
  v328 = *(v320 - 8);
  v17 = __chkstk_darwin(v320);
  v314 = &v294 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v325 = &v294 - v19;
  v334 = sub_12379C();
  v330 = *(v334 - 8);
  __chkstk_darwin(v334);
  v312 = &v294 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = sub_5AE8(&qword_15FFB8, &qword_127BD0);
  __chkstk_darwin(v327);
  v333 = &v294 - v21;
  v22 = sub_5AE8(&qword_15FFC0, &qword_127BD8);
  v23 = __chkstk_darwin(v22 - 8);
  v317 = &v294 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v294 - v26;
  __chkstk_darwin(v25);
  v338 = &v294 - v28;
  v29 = sub_12514C();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v337 = &v294 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_5AE8(&qword_15FFC8, &qword_127BE0);
  v33 = __chkstk_darwin(v32);
  v316 = &v294 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v335 = &v294 - v36;
  v37 = __chkstk_darwin(v35);
  v332 = &v294 - v38;
  v39 = __chkstk_darwin(v37);
  v336 = &v294 - v40;
  __chkstk_darwin(v39);
  v42 = &v294 - v41;
  v43 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v44 = __chkstk_darwin(v43 - 8);
  v308 = &v294 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v315 = &v294 - v47;
  v48 = __chkstk_darwin(v46);
  v324 = &v294 - v49;
  v50 = __chkstk_darwin(v48);
  v340 = &v294 - v51;
  v52 = __chkstk_darwin(v50);
  v323 = &v294 - v53;
  v54 = __chkstk_darwin(v52);
  v331 = &v294 - v55;
  v56 = __chkstk_darwin(v54);
  v329 = &v294 - v57;
  v58 = __chkstk_darwin(v56);
  v341 = &v294 - v59;
  v60 = __chkstk_darwin(v58);
  v62 = &v294 - v61;
  __chkstk_darwin(v60);
  v64 = &v294 - v63;
  v65 = v30[13];
  v339 = enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  v343 = v65;
  v344 = v30 + 13;
  v65(&v294 - v63);
  v345 = v30[7];
  v346 = v30 + 7;
  v345(v64, 0, 1, v29);
  v347 = v32;
  v348 = a4;
  v66 = *(v32 + 48);
  sub_E344(a4, v42, &unk_15F1B0, qword_126E30);
  sub_E344(v64, &v42[v66], &unk_15F1B0, qword_126E30);
  v342 = v30;
  v67 = v30 + 6;
  v68 = v30[6];
  if (v68(v42, 1, v29) == 1)
  {
    sub_5CA8(v64, &unk_15F1B0, qword_126E30);
    v69 = v29;
    if (v68(&v42[v66], 1, v29) == 1)
    {
      sub_5CA8(v42, &unk_15F1B0, qword_126E30);
      v70 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_E344(v42, v62, &unk_15F1B0, qword_126E30);
  if (v68(&v42[v66], 1, v29) == 1)
  {
    sub_5CA8(v64, &unk_15F1B0, qword_126E30);
    v71 = v62;
    v69 = v29;
    (v342[1])(v71, v29);
LABEL_6:
    sub_5CA8(v42, &qword_15FFC8, &qword_127BE0);
    v70 = 0;
    goto LABEL_8;
  }

  v72 = v342;
  v73 = &v42[v66];
  v74 = v337;
  (v342[4])(v337, v73, v29);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v70 = sub_125B7C();
  v319 = v27;
  v75 = v72[1];
  v75(v74, v29);
  sub_5CA8(v64, &unk_15F1B0, qword_126E30);
  v76 = v62;
  v69 = v29;
  v75(v76, v29);
  v27 = v319;
  sub_5CA8(v42, &unk_15F1B0, qword_126E30);
LABEL_8:
  v77 = v341;
  if ((sub_A4794(v350, v70 & 1) & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v84 = sub_125ABC();
    sub_5B30(v84, qword_161820);
    v85 = sub_125AAC();
    v86 = sub_125DFC();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_0, v85, v86, "decideActionForInput(input:type:halInfo: ... no valid timer input", v87, 2u);
    }

    goto LABEL_16;
  }

  v78 = v69;
  v343(v77, enum case for DecideAction.PromptExpectation.confirmation(_:), v69);
  v345(v77, 0, 1, v69);
  v79 = *(v347 + 48);
  v80 = v336;
  sub_E344(v348, v336, &unk_15F1B0, qword_126E30);
  sub_E344(v77, v80 + v79, &unk_15F1B0, qword_126E30);
  v81 = v68(v80, 1, v78);
  v326 = v68;
  if (v81 == 1)
  {
    sub_5CA8(v77, &unk_15F1B0, qword_126E30);
    v82 = v68((v80 + v79), 1, v78);
    v83 = v340;
    if (v82 == 1)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v88 = v329;
  sub_E344(v80, v329, &unk_15F1B0, qword_126E30);
  if (v68((v80 + v79), 1, v78) == 1)
  {
    sub_5CA8(v77, &unk_15F1B0, qword_126E30);
    (v342[1])(v88, v78);
    v83 = v340;
LABEL_19:
    sub_5CA8(v80, &qword_15FFC8, &qword_127BE0);
    v89 = v333;
    v90 = v334;
    v91 = v338;
    goto LABEL_20;
  }

  v295 = v67;
  v101 = v342;
  v102 = v80 + v79;
  v103 = v337;
  (v342[4])(v337, v102, v78);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  LODWORD(v341) = sub_125B7C();
  v104 = v101[1];
  v104(v103, v78);
  sub_5CA8(v77, &unk_15F1B0, qword_126E30);
  v104(v88, v78);
  v67 = v295;
  sub_5CA8(v80, &unk_15F1B0, qword_126E30);
  v89 = v333;
  v90 = v334;
  v91 = v338;
  v83 = v340;
  if (v341)
  {
    goto LABEL_38;
  }

LABEL_20:
  v319 = v27;
  v343(v83, v339, v78);
  v345(v83, 0, 1, v78);
  v92 = *(v347 + 48);
  v80 = v335;
  sub_E344(v348, v335, &unk_15F1B0, qword_126E30);
  sub_E344(v83, v80 + v92, &unk_15F1B0, qword_126E30);
  v93 = v326;
  if (v326(v80, 1, v78) == 1)
  {
    sub_5CA8(v83, &unk_15F1B0, qword_126E30);
    if (v93(v80 + v92, 1, v78) == 1)
    {
LABEL_22:
      sub_5CA8(v80, &unk_15F1B0, qword_126E30);
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v94 = v324;
  sub_E344(v80, v324, &unk_15F1B0, qword_126E30);
  if (v93(v80 + v92, 1, v78) == 1)
  {
    sub_5CA8(v340, &unk_15F1B0, qword_126E30);
    (v342[1])(v94, v78);
LABEL_25:
    sub_5CA8(v80, &qword_15FFC8, &qword_127BE0);
    v95 = v319;
    v96 = v90;
    goto LABEL_26;
  }

  v118 = v342;
  v119 = v80 + v92;
  v120 = v337;
  (v342[4])(v337, v119, v78);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v121 = sub_125B7C();
  v122 = v118[1];
  v122(v120, v78);
  sub_5CA8(v340, &unk_15F1B0, qword_126E30);
  v122(v94, v78);
  v91 = v338;
  sub_5CA8(v335, &unk_15F1B0, qword_126E30);
  v95 = v319;
  v96 = v90;
  if (v121)
  {
LABEL_38:
    v123 = v331;
    v343(v331, v339, v78);
    v345(v123, 0, 1, v78);
    v124 = *(v347 + 48);
    v125 = v332;
    sub_E344(v348, v332, &unk_15F1B0, qword_126E30);
    sub_E344(v123, v125 + v124, &unk_15F1B0, qword_126E30);
    v126 = v326;
    if (v326(v125, 1, v78) == 1)
    {
      sub_5CA8(v123, &unk_15F1B0, qword_126E30);
      v127 = v126(v125 + v124, 1, v78);
      v128 = v349;
      if (v127 == 1)
      {
        sub_5CA8(v125, &unk_15F1B0, qword_126E30);
        v129 = 1;
LABEL_45:
        sub_9D860(v350, v129 & 1, v128);
        return;
      }
    }

    else
    {
      v130 = v323;
      sub_E344(v125, v323, &unk_15F1B0, qword_126E30);
      v131 = v126(v125 + v124, 1, v78);
      v128 = v349;
      if (v131 != 1)
      {
        v132 = v342;
        v133 = v125 + v124;
        v134 = v337;
        (v342[4])(v337, v133, v78);
        sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
        v129 = sub_125B7C();
        v135 = v132[1];
        v135(v134, v78);
        sub_5CA8(v123, &unk_15F1B0, qword_126E30);
        v135(v130, v78);
        sub_5CA8(v125, &unk_15F1B0, qword_126E30);
        goto LABEL_45;
      }

      sub_5CA8(v123, &unk_15F1B0, qword_126E30);
      (v342[1])(v130, v78);
    }

    sub_5CA8(v125, &qword_15FFC8, &qword_127BE0);
    v129 = 0;
    goto LABEL_45;
  }

LABEL_26:
  v295 = v67;
  sub_9F55C(v91);
  sub_12376C();
  v97 = v91;
  v98 = v330;
  (*(v330 + 56))(v95, 0, 1, v96);
  v99 = *(v327 + 48);
  sub_E344(v97, v89, &qword_15FFC0, &qword_127BD8);
  sub_E344(v95, v89 + v99, &qword_15FFC0, &qword_127BD8);
  v100 = *(v98 + 48);
  if (v100(v89, 1, v96) == 1)
  {
    sub_5CA8(v95, &qword_15FFC0, &qword_127BD8);
    sub_5CA8(v97, &qword_15FFC0, &qword_127BD8);
    if (v100(v89 + v99, 1, v96) == 1)
    {
      sub_5CA8(v89, &qword_15FFC0, &qword_127BD8);
      goto LABEL_51;
    }

    goto LABEL_33;
  }

  v105 = v317;
  sub_E344(v89, v317, &qword_15FFC0, &qword_127BD8);
  if (v100(v89 + v99, 1, v96) == 1)
  {
    sub_5CA8(v319, &qword_15FFC0, &qword_127BD8);
    sub_5CA8(v338, &qword_15FFC0, &qword_127BD8);
    (*(v330 + 8))(v105, v96);
LABEL_33:
    sub_5CA8(v89, &qword_15FFB8, &qword_127BD0);
    v106 = v322;
    v107 = v321;
    v108 = v350;
    goto LABEL_34;
  }

  v140 = v330;
  v141 = v89 + v99;
  v142 = v312;
  (*(v330 + 32))(v312, v141, v96);
  sub_536D8(&qword_161880, 255, &type metadata accessor for ActionForInput, &protocol conformance descriptor for ActionForInput);
  v143 = sub_125B7C();
  v144 = *(v140 + 8);
  v144(v142, v96);
  sub_5CA8(v319, &qword_15FFC0, &qword_127BD8);
  sub_5CA8(v338, &qword_15FFC0, &qword_127BD8);
  v144(v105, v96);
  sub_5CA8(v89, &qword_15FFC0, &qword_127BD8);
  v106 = v322;
  v107 = v321;
  v108 = v350;
  if (v143)
  {
LABEL_51:
    v145 = v315;
    v343(v315, enum case for DecideAction.PromptExpectation.slot(_:), v78);
    v345(v145, 0, 1, v78);
    v146 = *(v347 + 48);
    v147 = v316;
    sub_E344(v348, v316, &unk_15F1B0, qword_126E30);
    sub_E344(v145, v147 + v146, &unk_15F1B0, qword_126E30);
    v148 = v326;
    if (v326(v147, 1, v78) == 1)
    {
      sub_5CA8(v145, &unk_15F1B0, qword_126E30);
      if (v148(v147 + v146, 1, v78) == 1)
      {
        sub_5CA8(v147, &unk_15F1B0, qword_126E30);
LABEL_74:
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v173 = sub_125ABC();
        sub_5B30(v173, qword_161820);
        v174 = sub_125AAC();
        v175 = sub_125DFC();
        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          *v176 = 0;
          _os_log_impl(&dword_0, v174, v175, "Received cancel input slot prompt input – .cancel()", v176, 2u);
        }

        sub_12376C();
        return;
      }
    }

    else
    {
      v149 = v308;
      sub_E344(v147, v308, &unk_15F1B0, qword_126E30);
      if (v148(v147 + v146, 1, v78) != 1)
      {
        v168 = v342;
        v169 = v147 + v146;
        v170 = v337;
        (v342[4])(v337, v169, v78);
        sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
        v171 = sub_125B7C();
        v172 = v168[1];
        v172(v170, v78);
        sub_5CA8(v145, &unk_15F1B0, qword_126E30);
        v172(v149, v78);
        sub_5CA8(v147, &unk_15F1B0, qword_126E30);
        if (v171)
        {
          goto LABEL_74;
        }

        goto LABEL_57;
      }

      sub_5CA8(v145, &unk_15F1B0, qword_126E30);
      (v342[1])(v149, v78);
    }

    sub_5CA8(v147, &qword_15FFC8, &qword_127BE0);
LABEL_57:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v150 = sub_125ABC();
    sub_5B30(v150, qword_161820);
    v85 = sub_125AAC();
    v137 = sub_125DFC();
    if (!os_log_type_enabled(v85, v137))
    {
      goto LABEL_16;
    }

    v138 = swift_slowAlloc();
    *v138 = 0;
    v139 = "Received cancel input on non-confirmation, non-slot prompt input – .ignore()";
LABEL_61:
    _os_log_impl(&dword_0, v85, v137, v139, v138, 2u);

LABEL_16:

    sub_12378C();
    return;
  }

LABEL_34:
  v109 = v325;
  sub_123CCC();
  v110 = sub_4D620(v109);
  v111 = *(v328 + 8);
  v112 = v320;
  v111(v109, v320);
  if ((v110 & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v136 = sub_125ABC();
    sub_5B30(v136, qword_161820);
    v85 = sub_125AAC();
    v137 = sub_125DFC();
    if (!os_log_type_enabled(v85, v137))
    {
      goto LABEL_16;
    }

    v138 = swift_slowAlloc();
    *v138 = 0;
    v139 = "Disallowing timer input based on allowed input types for current stack state.";
    goto LABEL_61;
  }

  v113 = v314;
  sub_123CCC();
  v114 = v328;
  v115 = (*(v328 + 88))(v113, v112);
  if (v115 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v116 = v111;
    (*(v114 + 96))(v113, v112);
    v117 = v318;
    goto LABEL_65;
  }

  v117 = v318;
  if (v115 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v116 = v111;
    (*(v328 + 96))(v113, v112);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

LABEL_65:
    v151 = *(v310 + 32);
    v152 = v309;
    v153 = v113;
    v154 = v311;
    v151(v309, v153, v311);
    v151(v117, v152, v154);
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v155 = sub_125ABC();
    sub_5B30(v155, qword_161820);
    sub_9848(v117, v106);
    v156 = sub_125AAC();
    v157 = sub_125DFC();
    v158 = v116;
    if (os_log_type_enabled(v156, v157))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v352 = v160;
      *v159 = 136315138;
      sub_536D8(&qword_161ED0, 255, type metadata accessor for TimerNLv3Intent, &unk_12A9D8);
      v161 = sub_12618C();
      v162 = v106;
      v164 = v163;
      sub_97EC(v162);
      v165 = sub_8530(v161, v164, &v352);

      *(v159 + 4) = v165;
      _os_log_impl(&dword_0, v156, v157, "TimerNLIntent: %s", v159, 0xCu);
      sub_5BB0(v160);
      v112 = v320;
    }

    else
    {

      sub_97EC(v106);
    }

    v166 = v325;
    sub_123CCC();
    v167 = sub_A588C(v166, v313);
    v158(v166, v112);
    if (v167)
    {
      sub_12561C();
      if (!swift_dynamicCastClass())
      {
        v182 = v167;
        v183 = sub_125AAC();
        v184 = sub_125DEC();

        if (os_log_type_enabled(v183, v184))
        {
          v185 = swift_slowAlloc();
          v352 = swift_slowAlloc();
          *v185 = 136315394;
          *(v185 + 4) = sub_8530(0xD000000000000011, 0x800000000012D080, &v352);
          *(v185 + 12) = 2080;
          v186 = v182;
          v187 = [v186 description];
          v188 = sub_125B9C();
          v190 = v189;

          v191 = sub_8530(v188, v190, &v352);

          *(v185 + 14) = v191;
          _os_log_impl(&dword_0, v183, v184, "Flows stack receives unexpected from input. Expecting: %s, Generated: %s", v185, 0x16u);
          swift_arrayDestroy();
        }

        v192 = v318;
        sub_12378C();

        v180 = v192;
        goto LABEL_90;
      }

      sub_12377C();
    }

    else
    {
      v177 = sub_125AAC();
      v178 = sub_125DEC();
      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        *v179 = 0;
        _os_log_impl(&dword_0, v177, v178, "Unable to parse intent from parse", v179, 2u);
      }

      sub_12378C();
    }

    v180 = v318;
LABEL_90:
    sub_97EC(v180);
    return;
  }

  if (v115 == enum case for Parse.directInvocation(_:))
  {
    sub_12377C();
    goto LABEL_85;
  }

  if (v115 != enum case for Parse.NLv4IntentOnly(_:))
  {
    if (v115 != enum case for Parse.uso(_:))
    {
      if (v115 == enum case for Parse.ifClientAction(_:))
      {
        v203 = v325;
        sub_123CCC();
        v204 = sub_A588C(v203, v313);
        v111(v203, v112);
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v205 = sub_125ABC();
        sub_5B30(v205, qword_161820);
        v206 = v204;
        v207 = sub_125AAC();
        v208 = sub_125DFC();

        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          v210 = swift_slowAlloc();
          v351 = v204;
          v352 = v210;
          *v209 = 136315138;
          v211 = v206;
          sub_5AE8(&unk_15FFD0, qword_127BE8);
          v212 = sub_125BAC();
          v214 = sub_8530(v212, v213, &v352);

          *(v209 + 4) = v214;
          _os_log_impl(&dword_0, v207, v208, "Handling ifClientAction for intent: %s", v209, 0xCu);
          sub_5BB0(v210);
          v112 = v320;
        }

        sub_12377C();
        v181 = v314;
        goto LABEL_86;
      }

      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v215 = sub_125ABC();
      sub_5B30(v215, qword_161820);
      v216 = v301;
      v217 = v302;
      (*(v107 + 16))(v301, v108, v302);
      v218 = sub_125AAC();
      v219 = sub_125DEC();
      if (os_log_type_enabled(v218, v219))
      {
        v220 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        v352 = v221;
        *v220 = 136315138;
        LODWORD(v348) = v219;
        v350 = v218;
        sub_123CCC();
        v222 = sub_125BAC();
        v224 = v223;
        (*(v107 + 8))(v216, v217);
        v225 = sub_8530(v222, v224, &v352);
        v112 = v320;

        *(v220 + 4) = v225;
        v226 = v350;
        _os_log_impl(&dword_0, v350, v348, "Received unsupported parse in decideActionForInput: %s", v220, 0xCu);
        sub_5BB0(v221);

        v113 = v314;
      }

      else
      {

        (*(v107 + 8))(v216, v217);
      }

      sub_12378C();
LABEL_85:
      v181 = v113;
LABEL_86:
      v111(v181, v112);
      return;
    }

    (*(v328 + 96))(v113, v112);
    (*(v303 + 32))(v305, v113, v304);
    if (v306)
    {
      v198 = v298;
      sub_123D5C();
      v199 = sub_123D8C();
      v200 = (*(v299 + 8))(v198, v300);
      if (v199)
      {
        v201 = sub_C69B0(v200);

        if (sub_B6264(v201) == 0x627265566F6ELL && v202 == 0xE600000000000000)
        {

LABEL_134:
          if (qword_15EED0 != -1)
          {
            swift_once();
          }

          v252 = sub_125ABC();
          sub_5B30(v252, qword_161820);
          v253 = v303;
          v254 = *(v303 + 16);
          v255 = v297;
          v256 = v304;
          v254(v297, v305, v304);
          v257 = sub_125AAC();
          v258 = sub_125DFC();
          if (os_log_type_enabled(v257, v258))
          {
            v259 = swift_slowAlloc();
            v260 = swift_slowAlloc();
            v352 = v260;
            *v259 = 136315138;
            v254(v296, v255, v256);
            v261 = sub_125BAC();
            v263 = v262;
            v264 = *(v253 + 8);
            v264(v255, v256);
            v265 = sub_8530(v261, v263, &v352);

            *(v259 + 4) = v265;
            _os_log_impl(&dword_0, v257, v258, "decideActionForInput decide handle disambiguation UsoParse: %s", v259, 0xCu);
            sub_5BB0(v260);
          }

          else
          {

            v264 = *(v253 + 8);
            v264(v255, v256);
          }

          sub_12377C();
          v264(v305, v256);
          return;
        }

        v251 = sub_1261BC();

        if (v251)
        {
          goto LABEL_134;
        }
      }
    }

    v266 = v325;
    sub_123CCC();
    v267 = sub_A588C(v266, v313);
    v111(v266, v112);
    if (v267 && (sub_12561C(), (v268 = swift_dynamicCastClass()) != 0))
    {
      v269 = v268;
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v270 = sub_125ABC();
      sub_5B30(v270, qword_161820);
      v271 = v267;
      v272 = sub_125AAC();
      v273 = sub_125DFC();

      if (os_log_type_enabled(v272, v273))
      {
        v274 = swift_slowAlloc();
        v275 = swift_slowAlloc();
        v352 = v275;
        *v274 = 136315138;
        v276 = v271;
        v277 = [v269 description];
        v278 = sub_125B9C();
        v280 = v279;

        v281 = sub_8530(v278, v280, &v352);

        *(v274 + 4) = v281;
        _os_log_impl(&dword_0, v272, v273, "Handling action for intent: %s", v274, 0xCu);
        sub_5BB0(v275);
      }

      v282 = v304;
      v283 = v303;
      sub_12377C();

      (*(v283 + 8))(v305, v282);
    }

    else
    {
      v284 = v304;
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v285 = sub_125ABC();
      sub_5B30(v285, qword_161820);
      v286 = v267;
      v287 = sub_125AAC();
      v288 = sub_125DEC();

      if (os_log_type_enabled(v287, v288))
      {
        v289 = swift_slowAlloc();
        v352 = swift_slowAlloc();
        *v289 = 136315394;
        *(v289 + 4) = sub_8530(0xD000000000000011, 0x800000000012D080, &v352);
        *(v289 + 12) = 2080;
        v351 = v267;
        v290 = v286;
        sub_5AE8(&unk_15FFD0, qword_127BE8);
        v291 = sub_125BAC();
        v293 = sub_8530(v291, v292, &v352);

        *(v289 + 14) = v293;
        _os_log_impl(&dword_0, v287, v288, "decideActionForInput: Intent from parse does not match IntentType. Expected %s, received %s", v289, 0x16u);
        swift_arrayDestroy();
      }

      sub_12378C();
      (*(v303 + 8))(v305, v284);
    }

    return;
  }

  (*(v328 + 96))(v113, v112);
  v193 = *v113;
  if (v306)
  {
    ObjectType = swift_getObjectType();
    v195 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
    if (v195)
    {
      v196 = sub_C69B0(v195);

      if (sub_B6264(v196) == 0x627265566F6ELL && v197 == 0xE600000000000000)
      {

LABEL_114:
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v228 = sub_125ABC();
        sub_5B30(v228, qword_161820);
        swift_unknownObjectRetain();
        v229 = sub_125AAC();
        v230 = sub_125DFC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          v232 = swift_slowAlloc();
          v351 = v193;
          v352 = v232;
          *v231 = 136315138;
          swift_unknownObjectRetain();
          sub_5AE8(&unk_160610, &unk_129CC0);
          v233 = sub_125BAC();
          v235 = sub_8530(v233, v234, &v352);

          *(v231 + 4) = v235;
          _os_log_impl(&dword_0, v229, v230, "decideActionForInput decide handle disambiguation userDialogAct: %s", v231, 0xCu);
          sub_5BB0(v232);
        }

        sub_12377C();
        swift_unknownObjectRelease();
        return;
      }

      v227 = sub_1261BC();

      if (v227)
      {
        goto LABEL_114;
      }
    }
  }

  v236 = v325;
  sub_123CCC();
  v237 = sub_A588C(v236, v313);
  v111(v236, v112);
  if (v237 && (sub_12561C(), swift_dynamicCastClass()))
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v238 = sub_125ABC();
    sub_5B30(v238, qword_161820);
    v239 = sub_125AAC();
    v240 = sub_125DFC();
    if (os_log_type_enabled(v239, v240))
    {
      v241 = swift_slowAlloc();
      *v241 = 0;
      _os_log_impl(&dword_0, v239, v240, "decideActionForInput: Handling action for intent", v241, 2u);
    }

    sub_12377C();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v242 = sub_125ABC();
    sub_5B30(v242, qword_161820);
    v243 = v237;
    v244 = sub_125AAC();
    v245 = sub_125DEC();

    if (os_log_type_enabled(v244, v245))
    {
      v246 = swift_slowAlloc();
      v352 = swift_slowAlloc();
      *v246 = 136315394;
      *(v246 + 4) = sub_8530(0xD000000000000011, 0x800000000012D080, &v352);
      *(v246 + 12) = 2080;
      v351 = v237;
      v247 = v243;
      sub_5AE8(&unk_15FFD0, qword_127BE8);
      v248 = sub_125BAC();
      v250 = sub_8530(v248, v249, &v352);

      *(v246 + 14) = v250;
      _os_log_impl(&dword_0, v244, v245, "decideActionForInput: Intent from parse does not match IntentType. Expected %s, received %s", v246, 0x16u);
      swift_arrayDestroy();
    }

    sub_12378C();
    swift_unknownObjectRelease();
  }
}

void sub_3A67C(NSObject *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v306 = a3;
  v313 = a2;
  v349 = a5;
  v350 = a1;
  v300 = sub_123DAC();
  v299 = *(v300 - 8);
  __chkstk_darwin(v300);
  v298 = &v294 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = type metadata accessor for TimerNLv3Intent(0);
  v7 = __chkstk_darwin(v307);
  v322 = &v294 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v318 = &v294 - v9;
  v302 = sub_123CDC();
  v321 = *(v302 - 8);
  __chkstk_darwin(v302);
  v301 = &v294 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_123D6C();
  v303 = *(v304 - 8);
  v11 = __chkstk_darwin(v304);
  v296 = &v294 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v297 = &v294 - v14;
  __chkstk_darwin(v13);
  v305 = &v294 - v15;
  v311 = sub_124BCC();
  v310 = *(v311 - 8);
  __chkstk_darwin(v311);
  v309 = &v294 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_123D3C();
  v328 = *(v320 - 8);
  v17 = __chkstk_darwin(v320);
  v314 = &v294 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v325 = &v294 - v19;
  v334 = sub_12379C();
  v330 = *(v334 - 8);
  __chkstk_darwin(v334);
  v312 = &v294 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = sub_5AE8(&qword_15FFB8, &qword_127BD0);
  __chkstk_darwin(v327);
  v333 = &v294 - v21;
  v22 = sub_5AE8(&qword_15FFC0, &qword_127BD8);
  v23 = __chkstk_darwin(v22 - 8);
  v317 = &v294 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v294 - v26;
  __chkstk_darwin(v25);
  v338 = &v294 - v28;
  v29 = sub_12514C();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v337 = &v294 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_5AE8(&qword_15FFC8, &qword_127BE0);
  v33 = __chkstk_darwin(v32);
  v316 = &v294 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v335 = &v294 - v36;
  v37 = __chkstk_darwin(v35);
  v332 = &v294 - v38;
  v39 = __chkstk_darwin(v37);
  v336 = &v294 - v40;
  __chkstk_darwin(v39);
  v42 = &v294 - v41;
  v43 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v44 = __chkstk_darwin(v43 - 8);
  v308 = &v294 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v315 = &v294 - v47;
  v48 = __chkstk_darwin(v46);
  v324 = &v294 - v49;
  v50 = __chkstk_darwin(v48);
  v340 = &v294 - v51;
  v52 = __chkstk_darwin(v50);
  v323 = &v294 - v53;
  v54 = __chkstk_darwin(v52);
  v331 = &v294 - v55;
  v56 = __chkstk_darwin(v54);
  v329 = &v294 - v57;
  v58 = __chkstk_darwin(v56);
  v341 = &v294 - v59;
  v60 = __chkstk_darwin(v58);
  v62 = &v294 - v61;
  __chkstk_darwin(v60);
  v64 = &v294 - v63;
  v65 = v30[13];
  v339 = enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  v343 = v65;
  v344 = v30 + 13;
  v65(&v294 - v63);
  v345 = v30[7];
  v346 = v30 + 7;
  v345(v64, 0, 1, v29);
  v347 = v32;
  v348 = a4;
  v66 = *(v32 + 48);
  sub_E344(a4, v42, &unk_15F1B0, qword_126E30);
  sub_E344(v64, &v42[v66], &unk_15F1B0, qword_126E30);
  v342 = v30;
  v67 = v30 + 6;
  v68 = v30[6];
  if (v68(v42, 1, v29) == 1)
  {
    sub_5CA8(v64, &unk_15F1B0, qword_126E30);
    v69 = v29;
    if (v68(&v42[v66], 1, v29) == 1)
    {
      sub_5CA8(v42, &unk_15F1B0, qword_126E30);
      v70 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_E344(v42, v62, &unk_15F1B0, qword_126E30);
  if (v68(&v42[v66], 1, v29) == 1)
  {
    sub_5CA8(v64, &unk_15F1B0, qword_126E30);
    v71 = v62;
    v69 = v29;
    (v342[1])(v71, v29);
LABEL_6:
    sub_5CA8(v42, &qword_15FFC8, &qword_127BE0);
    v70 = 0;
    goto LABEL_8;
  }

  v72 = v342;
  v73 = &v42[v66];
  v74 = v337;
  (v342[4])(v337, v73, v29);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v70 = sub_125B7C();
  v319 = v27;
  v75 = v72[1];
  v75(v74, v29);
  sub_5CA8(v64, &unk_15F1B0, qword_126E30);
  v76 = v62;
  v69 = v29;
  v75(v76, v29);
  v27 = v319;
  sub_5CA8(v42, &unk_15F1B0, qword_126E30);
LABEL_8:
  v77 = v341;
  if ((sub_A4794(v350, v70 & 1) & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v84 = sub_125ABC();
    sub_5B30(v84, qword_161820);
    v85 = sub_125AAC();
    v86 = sub_125DFC();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_0, v85, v86, "decideActionForInput(input:type:halInfo: ... no valid timer input", v87, 2u);
    }

    goto LABEL_16;
  }

  v78 = v69;
  v343(v77, enum case for DecideAction.PromptExpectation.confirmation(_:), v69);
  v345(v77, 0, 1, v69);
  v79 = *(v347 + 48);
  v80 = v336;
  sub_E344(v348, v336, &unk_15F1B0, qword_126E30);
  sub_E344(v77, v80 + v79, &unk_15F1B0, qword_126E30);
  v81 = v68(v80, 1, v78);
  v326 = v68;
  if (v81 == 1)
  {
    sub_5CA8(v77, &unk_15F1B0, qword_126E30);
    v82 = v68((v80 + v79), 1, v78);
    v83 = v340;
    if (v82 == 1)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v88 = v329;
  sub_E344(v80, v329, &unk_15F1B0, qword_126E30);
  if (v68((v80 + v79), 1, v78) == 1)
  {
    sub_5CA8(v77, &unk_15F1B0, qword_126E30);
    (v342[1])(v88, v78);
    v83 = v340;
LABEL_19:
    sub_5CA8(v80, &qword_15FFC8, &qword_127BE0);
    v89 = v333;
    v90 = v334;
    v91 = v338;
    goto LABEL_20;
  }

  v295 = v67;
  v101 = v342;
  v102 = v80 + v79;
  v103 = v337;
  (v342[4])(v337, v102, v78);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  LODWORD(v341) = sub_125B7C();
  v104 = v101[1];
  v104(v103, v78);
  sub_5CA8(v77, &unk_15F1B0, qword_126E30);
  v104(v88, v78);
  v67 = v295;
  sub_5CA8(v80, &unk_15F1B0, qword_126E30);
  v89 = v333;
  v90 = v334;
  v91 = v338;
  v83 = v340;
  if (v341)
  {
    goto LABEL_38;
  }

LABEL_20:
  v319 = v27;
  v343(v83, v339, v78);
  v345(v83, 0, 1, v78);
  v92 = *(v347 + 48);
  v80 = v335;
  sub_E344(v348, v335, &unk_15F1B0, qword_126E30);
  sub_E344(v83, v80 + v92, &unk_15F1B0, qword_126E30);
  v93 = v326;
  if (v326(v80, 1, v78) == 1)
  {
    sub_5CA8(v83, &unk_15F1B0, qword_126E30);
    if (v93(v80 + v92, 1, v78) == 1)
    {
LABEL_22:
      sub_5CA8(v80, &unk_15F1B0, qword_126E30);
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v94 = v324;
  sub_E344(v80, v324, &unk_15F1B0, qword_126E30);
  if (v93(v80 + v92, 1, v78) == 1)
  {
    sub_5CA8(v340, &unk_15F1B0, qword_126E30);
    (v342[1])(v94, v78);
LABEL_25:
    sub_5CA8(v80, &qword_15FFC8, &qword_127BE0);
    v95 = v319;
    v96 = v90;
    goto LABEL_26;
  }

  v118 = v342;
  v119 = v80 + v92;
  v120 = v337;
  (v342[4])(v337, v119, v78);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v121 = sub_125B7C();
  v122 = v118[1];
  v122(v120, v78);
  sub_5CA8(v340, &unk_15F1B0, qword_126E30);
  v122(v94, v78);
  v91 = v338;
  sub_5CA8(v335, &unk_15F1B0, qword_126E30);
  v95 = v319;
  v96 = v90;
  if (v121)
  {
LABEL_38:
    v123 = v331;
    v343(v331, v339, v78);
    v345(v123, 0, 1, v78);
    v124 = *(v347 + 48);
    v125 = v332;
    sub_E344(v348, v332, &unk_15F1B0, qword_126E30);
    sub_E344(v123, v125 + v124, &unk_15F1B0, qword_126E30);
    v126 = v326;
    if (v326(v125, 1, v78) == 1)
    {
      sub_5CA8(v123, &unk_15F1B0, qword_126E30);
      v127 = v126(v125 + v124, 1, v78);
      v128 = v349;
      if (v127 == 1)
      {
        sub_5CA8(v125, &unk_15F1B0, qword_126E30);
        v129 = 1;
LABEL_45:
        sub_9D860(v350, v129 & 1, v128);
        return;
      }
    }

    else
    {
      v130 = v323;
      sub_E344(v125, v323, &unk_15F1B0, qword_126E30);
      v131 = v126(v125 + v124, 1, v78);
      v128 = v349;
      if (v131 != 1)
      {
        v132 = v342;
        v133 = v125 + v124;
        v134 = v337;
        (v342[4])(v337, v133, v78);
        sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
        v129 = sub_125B7C();
        v135 = v132[1];
        v135(v134, v78);
        sub_5CA8(v123, &unk_15F1B0, qword_126E30);
        v135(v130, v78);
        sub_5CA8(v125, &unk_15F1B0, qword_126E30);
        goto LABEL_45;
      }

      sub_5CA8(v123, &unk_15F1B0, qword_126E30);
      (v342[1])(v130, v78);
    }

    sub_5CA8(v125, &qword_15FFC8, &qword_127BE0);
    v129 = 0;
    goto LABEL_45;
  }

LABEL_26:
  v295 = v67;
  sub_9F55C(v91);
  sub_12376C();
  v97 = v91;
  v98 = v330;
  (*(v330 + 56))(v95, 0, 1, v96);
  v99 = *(v327 + 48);
  sub_E344(v97, v89, &qword_15FFC0, &qword_127BD8);
  sub_E344(v95, v89 + v99, &qword_15FFC0, &qword_127BD8);
  v100 = *(v98 + 48);
  if (v100(v89, 1, v96) == 1)
  {
    sub_5CA8(v95, &qword_15FFC0, &qword_127BD8);
    sub_5CA8(v97, &qword_15FFC0, &qword_127BD8);
    if (v100(v89 + v99, 1, v96) == 1)
    {
      sub_5CA8(v89, &qword_15FFC0, &qword_127BD8);
      goto LABEL_51;
    }

    goto LABEL_33;
  }

  v105 = v317;
  sub_E344(v89, v317, &qword_15FFC0, &qword_127BD8);
  if (v100(v89 + v99, 1, v96) == 1)
  {
    sub_5CA8(v319, &qword_15FFC0, &qword_127BD8);
    sub_5CA8(v338, &qword_15FFC0, &qword_127BD8);
    (*(v330 + 8))(v105, v96);
LABEL_33:
    sub_5CA8(v89, &qword_15FFB8, &qword_127BD0);
    v106 = v322;
    v107 = v321;
    v108 = v350;
    goto LABEL_34;
  }

  v140 = v330;
  v141 = v89 + v99;
  v142 = v312;
  (*(v330 + 32))(v312, v141, v96);
  sub_536D8(&qword_161880, 255, &type metadata accessor for ActionForInput, &protocol conformance descriptor for ActionForInput);
  v143 = sub_125B7C();
  v144 = *(v140 + 8);
  v144(v142, v96);
  sub_5CA8(v319, &qword_15FFC0, &qword_127BD8);
  sub_5CA8(v338, &qword_15FFC0, &qword_127BD8);
  v144(v105, v96);
  sub_5CA8(v89, &qword_15FFC0, &qword_127BD8);
  v106 = v322;
  v107 = v321;
  v108 = v350;
  if (v143)
  {
LABEL_51:
    v145 = v315;
    v343(v315, enum case for DecideAction.PromptExpectation.slot(_:), v78);
    v345(v145, 0, 1, v78);
    v146 = *(v347 + 48);
    v147 = v316;
    sub_E344(v348, v316, &unk_15F1B0, qword_126E30);
    sub_E344(v145, v147 + v146, &unk_15F1B0, qword_126E30);
    v148 = v326;
    if (v326(v147, 1, v78) == 1)
    {
      sub_5CA8(v145, &unk_15F1B0, qword_126E30);
      if (v148(v147 + v146, 1, v78) == 1)
      {
        sub_5CA8(v147, &unk_15F1B0, qword_126E30);
LABEL_74:
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v173 = sub_125ABC();
        sub_5B30(v173, qword_161820);
        v174 = sub_125AAC();
        v175 = sub_125DFC();
        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          *v176 = 0;
          _os_log_impl(&dword_0, v174, v175, "Received cancel input slot prompt input – .cancel()", v176, 2u);
        }

        sub_12376C();
        return;
      }
    }

    else
    {
      v149 = v308;
      sub_E344(v147, v308, &unk_15F1B0, qword_126E30);
      if (v148(v147 + v146, 1, v78) != 1)
      {
        v168 = v342;
        v169 = v147 + v146;
        v170 = v337;
        (v342[4])(v337, v169, v78);
        sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
        v171 = sub_125B7C();
        v172 = v168[1];
        v172(v170, v78);
        sub_5CA8(v145, &unk_15F1B0, qword_126E30);
        v172(v149, v78);
        sub_5CA8(v147, &unk_15F1B0, qword_126E30);
        if (v171)
        {
          goto LABEL_74;
        }

        goto LABEL_57;
      }

      sub_5CA8(v145, &unk_15F1B0, qword_126E30);
      (v342[1])(v149, v78);
    }

    sub_5CA8(v147, &qword_15FFC8, &qword_127BE0);
LABEL_57:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v150 = sub_125ABC();
    sub_5B30(v150, qword_161820);
    v85 = sub_125AAC();
    v137 = sub_125DFC();
    if (!os_log_type_enabled(v85, v137))
    {
      goto LABEL_16;
    }

    v138 = swift_slowAlloc();
    *v138 = 0;
    v139 = "Received cancel input on non-confirmation, non-slot prompt input – .ignore()";
LABEL_61:
    _os_log_impl(&dword_0, v85, v137, v139, v138, 2u);

LABEL_16:

    sub_12378C();
    return;
  }

LABEL_34:
  v109 = v325;
  sub_123CCC();
  v110 = sub_4E58C(v109);
  v111 = *(v328 + 8);
  v112 = v320;
  v111(v109, v320);
  if ((v110 & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v136 = sub_125ABC();
    sub_5B30(v136, qword_161820);
    v85 = sub_125AAC();
    v137 = sub_125DFC();
    if (!os_log_type_enabled(v85, v137))
    {
      goto LABEL_16;
    }

    v138 = swift_slowAlloc();
    *v138 = 0;
    v139 = "Disallowing timer input based on allowed input types for current stack state.";
    goto LABEL_61;
  }

  v113 = v314;
  sub_123CCC();
  v114 = v328;
  v115 = (*(v328 + 88))(v113, v112);
  if (v115 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v116 = v111;
    (*(v114 + 96))(v113, v112);
    v117 = v318;
    goto LABEL_65;
  }

  v117 = v318;
  if (v115 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v116 = v111;
    (*(v328 + 96))(v113, v112);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

LABEL_65:
    v151 = *(v310 + 32);
    v152 = v309;
    v153 = v113;
    v154 = v311;
    v151(v309, v153, v311);
    v151(v117, v152, v154);
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v155 = sub_125ABC();
    sub_5B30(v155, qword_161820);
    sub_9848(v117, v106);
    v156 = sub_125AAC();
    v157 = sub_125DFC();
    v158 = v116;
    if (os_log_type_enabled(v156, v157))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v352 = v160;
      *v159 = 136315138;
      sub_536D8(&qword_161ED0, 255, type metadata accessor for TimerNLv3Intent, &unk_12A9D8);
      v161 = sub_12618C();
      v162 = v106;
      v164 = v163;
      sub_97EC(v162);
      v165 = sub_8530(v161, v164, &v352);

      *(v159 + 4) = v165;
      _os_log_impl(&dword_0, v156, v157, "TimerNLIntent: %s", v159, 0xCu);
      sub_5BB0(v160);
      v112 = v320;
    }

    else
    {

      sub_97EC(v106);
    }

    v166 = v325;
    sub_123CCC();
    v167 = sub_A588C(v166, v313);
    v158(v166, v112);
    if (v167)
    {
      sub_12564C();
      if (!swift_dynamicCastClass())
      {
        v182 = v167;
        v183 = sub_125AAC();
        v184 = sub_125DEC();

        if (os_log_type_enabled(v183, v184))
        {
          v185 = swift_slowAlloc();
          v352 = swift_slowAlloc();
          *v185 = 136315394;
          *(v185 + 4) = sub_8530(0xD000000000000011, 0x800000000012D0E0, &v352);
          *(v185 + 12) = 2080;
          v186 = v182;
          v187 = [v186 description];
          v188 = sub_125B9C();
          v190 = v189;

          v191 = sub_8530(v188, v190, &v352);

          *(v185 + 14) = v191;
          _os_log_impl(&dword_0, v183, v184, "Flows stack receives unexpected from input. Expecting: %s, Generated: %s", v185, 0x16u);
          swift_arrayDestroy();
        }

        v192 = v318;
        sub_12378C();

        v180 = v192;
        goto LABEL_90;
      }

      sub_12377C();
    }

    else
    {
      v177 = sub_125AAC();
      v178 = sub_125DEC();
      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        *v179 = 0;
        _os_log_impl(&dword_0, v177, v178, "Unable to parse intent from parse", v179, 2u);
      }

      sub_12378C();
    }

    v180 = v318;
LABEL_90:
    sub_97EC(v180);
    return;
  }

  if (v115 == enum case for Parse.directInvocation(_:))
  {
    sub_12377C();
    goto LABEL_85;
  }

  if (v115 != enum case for Parse.NLv4IntentOnly(_:))
  {
    if (v115 != enum case for Parse.uso(_:))
    {
      if (v115 == enum case for Parse.ifClientAction(_:))
      {
        v203 = v325;
        sub_123CCC();
        v204 = sub_A588C(v203, v313);
        v111(v203, v112);
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v205 = sub_125ABC();
        sub_5B30(v205, qword_161820);
        v206 = v204;
        v207 = sub_125AAC();
        v208 = sub_125DFC();

        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          v210 = swift_slowAlloc();
          v351 = v204;
          v352 = v210;
          *v209 = 136315138;
          v211 = v206;
          sub_5AE8(&unk_15FFD0, qword_127BE8);
          v212 = sub_125BAC();
          v214 = sub_8530(v212, v213, &v352);

          *(v209 + 4) = v214;
          _os_log_impl(&dword_0, v207, v208, "Handling ifClientAction for intent: %s", v209, 0xCu);
          sub_5BB0(v210);
          v112 = v320;
        }

        sub_12377C();
        v181 = v314;
        goto LABEL_86;
      }

      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v215 = sub_125ABC();
      sub_5B30(v215, qword_161820);
      v216 = v301;
      v217 = v302;
      (*(v107 + 16))(v301, v108, v302);
      v218 = sub_125AAC();
      v219 = sub_125DEC();
      if (os_log_type_enabled(v218, v219))
      {
        v220 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        v352 = v221;
        *v220 = 136315138;
        LODWORD(v348) = v219;
        v350 = v218;
        sub_123CCC();
        v222 = sub_125BAC();
        v224 = v223;
        (*(v107 + 8))(v216, v217);
        v225 = sub_8530(v222, v224, &v352);
        v112 = v320;

        *(v220 + 4) = v225;
        v226 = v350;
        _os_log_impl(&dword_0, v350, v348, "Received unsupported parse in decideActionForInput: %s", v220, 0xCu);
        sub_5BB0(v221);

        v113 = v314;
      }

      else
      {

        (*(v107 + 8))(v216, v217);
      }

      sub_12378C();
LABEL_85:
      v181 = v113;
LABEL_86:
      v111(v181, v112);
      return;
    }

    (*(v328 + 96))(v113, v112);
    (*(v303 + 32))(v305, v113, v304);
    if (v306)
    {
      v198 = v298;
      sub_123D5C();
      v199 = sub_123D8C();
      v200 = (*(v299 + 8))(v198, v300);
      if (v199)
      {
        v201 = sub_C69B0(v200);

        if (sub_B6264(v201) == 0x627265566F6ELL && v202 == 0xE600000000000000)
        {

LABEL_134:
          if (qword_15EED0 != -1)
          {
            swift_once();
          }

          v252 = sub_125ABC();
          sub_5B30(v252, qword_161820);
          v253 = v303;
          v254 = *(v303 + 16);
          v255 = v297;
          v256 = v304;
          v254(v297, v305, v304);
          v257 = sub_125AAC();
          v258 = sub_125DFC();
          if (os_log_type_enabled(v257, v258))
          {
            v259 = swift_slowAlloc();
            v260 = swift_slowAlloc();
            v352 = v260;
            *v259 = 136315138;
            v254(v296, v255, v256);
            v261 = sub_125BAC();
            v263 = v262;
            v264 = *(v253 + 8);
            v264(v255, v256);
            v265 = sub_8530(v261, v263, &v352);

            *(v259 + 4) = v265;
            _os_log_impl(&dword_0, v257, v258, "decideActionForInput decide handle disambiguation UsoParse: %s", v259, 0xCu);
            sub_5BB0(v260);
          }

          else
          {

            v264 = *(v253 + 8);
            v264(v255, v256);
          }

          sub_12377C();
          v264(v305, v256);
          return;
        }

        v251 = sub_1261BC();

        if (v251)
        {
          goto LABEL_134;
        }
      }
    }

    v266 = v325;
    sub_123CCC();
    v267 = sub_A588C(v266, v313);
    v111(v266, v112);
    if (v267 && (sub_12564C(), (v268 = swift_dynamicCastClass()) != 0))
    {
      v269 = v268;
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v270 = sub_125ABC();
      sub_5B30(v270, qword_161820);
      v271 = v267;
      v272 = sub_125AAC();
      v273 = sub_125DFC();

      if (os_log_type_enabled(v272, v273))
      {
        v274 = swift_slowAlloc();
        v275 = swift_slowAlloc();
        v352 = v275;
        *v274 = 136315138;
        v276 = v271;
        v277 = [v269 description];
        v278 = sub_125B9C();
        v280 = v279;

        v281 = sub_8530(v278, v280, &v352);

        *(v274 + 4) = v281;
        _os_log_impl(&dword_0, v272, v273, "Handling action for intent: %s", v274, 0xCu);
        sub_5BB0(v275);
      }

      v282 = v304;
      v283 = v303;
      sub_12377C();

      (*(v283 + 8))(v305, v282);
    }

    else
    {
      v284 = v304;
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v285 = sub_125ABC();
      sub_5B30(v285, qword_161820);
      v286 = v267;
      v287 = sub_125AAC();
      v288 = sub_125DEC();

      if (os_log_type_enabled(v287, v288))
      {
        v289 = swift_slowAlloc();
        v352 = swift_slowAlloc();
        *v289 = 136315394;
        *(v289 + 4) = sub_8530(0xD000000000000011, 0x800000000012D0E0, &v352);
        *(v289 + 12) = 2080;
        v351 = v267;
        v290 = v286;
        sub_5AE8(&unk_15FFD0, qword_127BE8);
        v291 = sub_125BAC();
        v293 = sub_8530(v291, v292, &v352);

        *(v289 + 14) = v293;
        _os_log_impl(&dword_0, v287, v288, "decideActionForInput: Intent from parse does not match IntentType. Expected %s, received %s", v289, 0x16u);
        swift_arrayDestroy();
      }

      sub_12378C();
      (*(v303 + 8))(v305, v284);
    }

    return;
  }

  (*(v328 + 96))(v113, v112);
  v193 = *v113;
  if (v306)
  {
    ObjectType = swift_getObjectType();
    v195 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
    if (v195)
    {
      v196 = sub_C69B0(v195);

      if (sub_B6264(v196) == 0x627265566F6ELL && v197 == 0xE600000000000000)
      {

LABEL_114:
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v228 = sub_125ABC();
        sub_5B30(v228, qword_161820);
        swift_unknownObjectRetain();
        v229 = sub_125AAC();
        v230 = sub_125DFC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          v232 = swift_slowAlloc();
          v351 = v193;
          v352 = v232;
          *v231 = 136315138;
          swift_unknownObjectRetain();
          sub_5AE8(&unk_160610, &unk_129CC0);
          v233 = sub_125BAC();
          v235 = sub_8530(v233, v234, &v352);

          *(v231 + 4) = v235;
          _os_log_impl(&dword_0, v229, v230, "decideActionForInput decide handle disambiguation userDialogAct: %s", v231, 0xCu);
          sub_5BB0(v232);
        }

        sub_12377C();
        swift_unknownObjectRelease();
        return;
      }

      v227 = sub_1261BC();

      if (v227)
      {
        goto LABEL_114;
      }
    }
  }

  v236 = v325;
  sub_123CCC();
  v237 = sub_A588C(v236, v313);
  v111(v236, v112);
  if (v237 && (sub_12564C(), swift_dynamicCastClass()))
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v238 = sub_125ABC();
    sub_5B30(v238, qword_161820);
    v239 = sub_125AAC();
    v240 = sub_125DFC();
    if (os_log_type_enabled(v239, v240))
    {
      v241 = swift_slowAlloc();
      *v241 = 0;
      _os_log_impl(&dword_0, v239, v240, "decideActionForInput: Handling action for intent", v241, 2u);
    }

    sub_12377C();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v242 = sub_125ABC();
    sub_5B30(v242, qword_161820);
    v243 = v237;
    v244 = sub_125AAC();
    v245 = sub_125DEC();

    if (os_log_type_enabled(v244, v245))
    {
      v246 = swift_slowAlloc();
      v352 = swift_slowAlloc();
      *v246 = 136315394;
      *(v246 + 4) = sub_8530(0xD000000000000011, 0x800000000012D0E0, &v352);
      *(v246 + 12) = 2080;
      v351 = v237;
      v247 = v243;
      sub_5AE8(&unk_15FFD0, qword_127BE8);
      v248 = sub_125BAC();
      v250 = sub_8530(v248, v249, &v352);

      *(v246 + 14) = v250;
      _os_log_impl(&dword_0, v244, v245, "decideActionForInput: Intent from parse does not match IntentType. Expected %s, received %s", v246, 0x16u);
      swift_arrayDestroy();
    }

    sub_12378C();
    swift_unknownObjectRelease();
  }
}