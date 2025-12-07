uint64_t sub_DD0A0(uint64_t a1, void *a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = [a2 alarmSearch];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 label];
    if (v9)
    {
      v10 = v9;
      sub_106E20();

      sub_106E50();

      v11 = sub_106160();
      (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    }

    else
    {
      v13 = sub_106160();
      (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    }
  }

  else
  {
    v12 = sub_106160();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  v14 = type metadata accessor for DeleteAlarmIntentHandledMultipleParameters(0);
  sub_1A814(v6, a1 + *(v14 + 48));
  v15 = [a2 alarmSearch];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1CE68();
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v14 + 52);

  *(a1 + v18) = v17;
  return result;
}

uint64_t sub_DD2A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_DD34C;

  return sub_D88A0(a1, a2);
}

uint64_t sub_DD34C()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_DD480, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_DD480()
{
  v0[3] = v0[5];
  sub_25E4(&qword_1376C0, &unk_1080D0);
  sub_1064E0();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_DD54C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA94;

  return sub_D750C(a1);
}

unint64_t sub_DD60C()
{
  result = qword_13A908;
  if (!qword_13A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13A908);
  }

  return result;
}

uint64_t sub_DD660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_DD730(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
{
  v7 = sub_106200();
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_1061E0();
  result = a3(v9, 0);
  *a4 = result;
  return result;
}

uint64_t type metadata accessor for DismissAlarmCATs_Async(uint64_t a1)
{
  result = qword_13A920;
  if (!qword_13A920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_DD860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_2A84(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v12;
}

uint64_t type metadata accessor for CreateAlarmCATsSimple(uint64_t a1)
{
  result = qword_13A970;
  if (!qword_13A970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_DDA7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_DDAA0, 0, 0);
}

uint64_t sub_DDAA0()
{
  v1 = v0[2];
  sub_25E4(&qword_137880, &unk_108290);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_1094F0;
  *(v2 + 32) = 0x6D72616C61;
  *(v2 + 40) = 0xE500000000000000;
  if (v1)
  {
    v3 = type metadata accessor for AlarmAlarm(0);
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
  *(v2 + 80) = 7368801;
  *(v2 + 88) = 0xE300000000000000;
  v6 = 0;
  if (v5)
  {
    v6 = sub_106100();
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
  v7[1] = sub_DDC2C;

  return v9(0xD000000000000032, 0x800000000010D740, v2);
}

uint64_t sub_DDC2C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_DDD84, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_DDD84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_DDDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_2A84(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_106170();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v12;
}

uint64_t sub_DDF70(uint64_t a1, uint64_t a2)
{
  v3 = sub_106200();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v4 + 16))(v6, a2, v3);
  v7 = sub_106180();
  (*(v4 + 8))(a2, v3);
  return v7;
}

uint64_t sub_DE088()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A9C0);
  sub_135C4(v0, qword_13A9C0);
  return sub_106A80();
}

uint64_t sub_DE0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E4(&unk_1374C0, &unk_1087B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_25E4(&qword_1374F0, &qword_1080F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  if (qword_136E98 != -1)
  {
    swift_once();
  }

  v10 = sub_106D20();
  sub_135C4(v10, qword_13A9C0);
  v11 = sub_106D10();
  v12 = sub_106FC0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "UpdateAlarm.NeedsValueStrategy.actionForInput() called)", v13, 2u);
  }

  v14 = sub_106630();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = enum case for DecideAction.PromptExpectation.slot(_:);
  v16 = sub_106450();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  sub_46C44(a1, v9, 0, v6, a2);
  sub_16F70(v6, &unk_1374C0, &unk_1087B0);
  return sub_16F70(v9, &qword_1374F0, &qword_1080F0);
}

uint64_t sub_DE368(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_106D20();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_106300();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_106320();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = sub_104FF0();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v7 = sub_104D60();
  v2[18] = v7;
  v2[19] = *(v7 - 8);
  v2[20] = swift_task_alloc();
  v8 = sub_1050C0();
  v2[21] = v8;
  v2[22] = *(v8 - 8);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_DE60C, 0, 0);
}

uint64_t sub_DE60C()
{
  v41 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_25E4(&qword_13A388, &unk_10B4C0);
  sub_105210();
  v4 = sub_1050B0();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if (qword_136E98 != -1)
  {
    swift_once();
  }

  v7 = sub_135C4(v0[4], qword_13A9C0);
  v8 = sub_106D10();
  v9 = sub_106FC0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "UpdateAlarm.NeedsValueStrategy.makePromptForValue() called)", v10, 2u);
  }

  v11 = sub_106D10();
  v12 = sub_106FC0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_722E8(v4, v6, &v40);
    _os_log_impl(&dword_0, v11, v12, "makeParameterPromptDialog for parameterName=%s", v13, 0xCu);
    sub_2738(v14);
  }

  sub_104D10();
  if (v4 == 0x6465736F706F7270 && v6 == 0xED00006C6562614CLL)
  {

LABEL_11:
    sub_BFA60(v0[17]);
    v16 = sub_106D10();
    v17 = sub_106FC0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "UpdateAlarm.NeedsValueStrategy.makePromptForValue() #Response label prompt", v18, 2u);
    }

    v20 = v0[8];
    v19 = v0[9];
    v22 = v0[6];
    v21 = v0[7];
    v23 = v0[4];
    v24 = v0[5];

    (*(v20 + 104))(v19, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v21);
    (*(v24 + 16))(v22, v7, v23);
    mach_absolute_time();
    sub_106330();
    if (qword_136E90 != -1)
    {
      swift_once();
    }

    v39 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v25 = swift_task_alloc();
    v0[24] = v25;
    *v25 = v0;
    v25[1] = sub_DEBC4;
    v26 = 0xD000000000000017;
    v27 = 0x800000000010E6A0;
    goto LABEL_21;
  }

  v15 = sub_107370();

  if (v15)
  {
    goto LABEL_11;
  }

  sub_BF5C0(v0[16]);
  v28 = sub_106D10();
  v29 = sub_106FC0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "UpdateAlarm.NeedsValueStrategy.makePromptForValue() #Response time prompt", v30, 2u);
  }

  v32 = v0[8];
  v31 = v0[9];
  v34 = v0[6];
  v33 = v0[7];
  v35 = v0[4];
  v36 = v0[5];

  (*(v32 + 104))(v31, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v33);
  (*(v36 + 16))(v34, v7, v35);
  mach_absolute_time();
  sub_106330();
  if (qword_136E90 != -1)
  {
    swift_once();
  }

  v39 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v37 = swift_task_alloc();
  v0[29] = v37;
  *v37 = v0;
  v37[1] = sub_DF0E4;
  v27 = 0x800000000010E680;
  v26 = 0xD000000000000016;
LABEL_21:

  return v39(v26, v27, _swiftEmptyArrayStorage);
}

uint64_t sub_DEBC4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_DEE8C, 0, 0);
  }

  else
  {
    v4[26] = a1;
    v6 = swift_task_alloc();
    v4[27] = v6;
    *v6 = v5;
    v6[1] = sub_DED60;
    v7 = v4[20];
    v8 = v4[17];
    v9 = v4[13];
    v10 = v4[2];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v10, v7, v8, v9, 0);
  }
}

uint64_t sub_DED60()
{
  v2 = *(*v1 + 208);
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_DF604;
  }

  else
  {
    v3 = sub_DEFBC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_DEE8C()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  (*(v0[11] + 8))(v0[13], v0[10]);
  (*(v4 + 8))(v2, v3);
  (*(v1 + 8))(v0[20], v0[18]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_DEFBC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[14];
  (*(v0[11] + 8))(v0[13], v0[10]);
  (*(v5 + 8))(v3, v6);
  (*(v2 + 8))(v1, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_DF0E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_DF3AC, 0, 0);
  }

  else
  {
    v4[31] = a1;
    v6 = swift_task_alloc();
    v4[32] = v6;
    *v6 = v5;
    v6[1] = sub_DF280;
    v7 = v4[20];
    v8 = v4[16];
    v9 = v4[12];
    v10 = v4[2];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v10, v7, v8, v9, 0);
  }
}

uint64_t sub_DF280()
{
  v2 = *(*v1 + 248);
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_DF728;
  }

  else
  {
    v3 = sub_DF4DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_DF3AC()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v0[20], v0[18]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_DF4DC()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v6);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_DF604()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  (*(v0[11] + 8))(v0[13], v0[10]);
  (*(v3 + 8))(v1, v2);
  (*(v0[19] + 8))(v0[20], v0[18]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_DF728()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);
  (*(v0[19] + 8))(v0[20], v0[18]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_DF84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_105460();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_105410();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_105380();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v7 = sub_1045E0();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = sub_25E4(&qword_137500, &qword_107E10);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v8 = sub_105E80();
  v3[29] = v8;
  v3[30] = *(v8 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v9 = sub_1053E0();
  v3[33] = v9;
  v3[34] = *(v9 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_DFBA8, 0, 0);
}

uint64_t sub_DFBA8()
{
  v302 = v0;
  v1 = v0;
  v2 = v0[36];
  v3 = v0[34];
  v4 = v1[33];
  sub_25E4(&qword_13A388, &unk_10B4C0);
  v5 = sub_1051F0();
  sub_105360();
  v6 = (*(v3 + 88))(v2, v4);
  if (v6 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v7 = v1[36];
    v8 = v1[32];
    v10 = v1[29];
    v9 = v1[30];
    (*(v1[34] + 96))(v7, v1[33]);
    (*(v9 + 32))(v8, v7, v10);
    if (qword_136E98 != -1)
    {
      swift_once();
    }

    v11 = sub_106D20();
    sub_135C4(v11, qword_13A9C0);
    v12 = v5;
    v13 = sub_106D10();
    v14 = sub_106FC0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *&v300 = swift_slowAlloc();
      v16 = v300;
      *v15 = 136315138;
      v17 = v12;
      v18 = [v17 description];
      v19 = v1;
      v20 = sub_106E20();
      v22 = v21;

      v23 = v20;
      v1 = v19;
      v24 = sub_722E8(v23, v22, &v300);

      *(v15 + 4) = v24;
      _os_log_impl(&dword_0, v13, v14, "Current SK intent: %s", v15, 0xCu);
      sub_2738(v16);
    }

    v25 = v1[31];
    v26 = v1[28];
    v28 = v1[16];
    v27 = v1[17];
    (*(v1[30] + 16))(v25, v1[32], v1[29]);
    type metadata accessor for AlarmNLIntent(0);
    swift_allocObject();
    sub_B3800(v25);
    sub_B5E60(v26);
    isa = 0;
    if ((*(v27 + 48))(v26, 1, v28) != 1)
    {
      v30 = v1[28];
      v32 = v1[16];
      v31 = v1[17];
      isa = sub_104560().super.isa;
      (*(v31 + 8))(v30, v32);
    }

    [v12 setProposedTime:isa];

    v33 = sub_B5620();
    if (v33)
    {
      v34 = sub_105F80();

      if (v34)
      {
        sub_1F7B8();
        v35 = sub_105F00();
        v33 = sub_107080(v35 & 1).super.super.isa;
      }

      else
      {
        v33 = 0;
      }
    }

    [v12 setProposedMeridiemSetByUser:v33];

    sub_B2324();
    if (v120)
    {
      v121 = sub_106E10();
    }

    else
    {
      v121 = 0;
    }

    [v12 setProposedLabel:v121];

    v122 = v12;
    v123 = sub_106D10();
    v124 = sub_106FC0();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *&v300 = v126;
      *v125 = 136315138;
      v127 = v122;
      v128 = [v127 description];
      v129 = v1;
      v130 = sub_106E20();
      v132 = v131;

      v133 = v130;
      v1 = v129;
      v134 = sub_722E8(v133, v132, &v300);

      *(v125 + 4) = v134;
      _os_log_impl(&dword_0, v123, v124, "Updated SK intent: %s", v125, 0xCu);
      sub_2738(v126);
    }

    v135 = v1[32];
    v136 = v1[29];
    v137 = v1[30];
    v138 = v1[2];
    sub_1068D0();
    v300 = 0u;
    v301 = 0u;
    sub_105070();

    (*(v137 + 8))(v135, v136);
    v139 = sub_25E4(&qword_13AA98, &unk_10B4D0);
    (*(*(v139 - 8) + 56))(v138, 0, 1, v139);
    goto LABEL_77;
  }

  if (v6 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v1[34] + 96))(v1[36], v1[33]);
    sub_25E4(&qword_13B010, &unk_1087A0);
    v36 = sub_1053D0();
    sub_1068D0();
    v295 = v36;
    v37 = swift_dynamicCastClassUnconditional();
    v38 = [v37 proposedTime];
    if (v38)
    {
      v40 = v1[26];
      v39 = v1[27];
      v41 = v1[20];
      v43 = v1[16];
      v42 = v1[17];
      v44 = v38;
      sub_104570();

      v45 = *(v42 + 32);
      v45(v40, v41, v43);
      v46 = *(v42 + 56);
      v46(v40, 0, 1, v43);
      v45(v39, v40, v43);
      v46(v39, 0, 1, v43);
    }

    else
    {
      v140 = *(v1[17] + 56);
      v140(v1[26], 1, 1, v1[16]);
      v141 = [v37 alarmSearch];
      if (v141)
      {
        v142 = v141;
        v143 = [v141 time];

        if (v143)
        {
          sub_104570();

          v144 = 0;
        }

        else
        {
          v144 = 1;
        }

        v184 = v1[27];
        v185 = v1[25];
        v140(v185, v144, 1, v1[16]);
        sub_1D68C(v185, v184);
      }

      else
      {
        v140(v1[27], 1, 1, v1[16]);
      }

      v186 = v1[26];
      if ((*(v1[17] + 48))(v186, 1, v1[16]) != 1)
      {
        sub_16F70(v186, &qword_137500, &qword_107E10);
      }
    }

    if (qword_136E98 != -1)
    {
      swift_once();
    }

    v187 = v1[27];
    v188 = v1[24];
    v189 = sub_106D20();
    sub_135C4(v189, qword_13A9C0);
    sub_E211C(v187, v188);
    v190 = sub_106D10();
    v191 = sub_106FC0();
    v192 = os_log_type_enabled(v190, v191);
    v193 = v1[24];
    if (v192)
    {
      v194 = v1[23];
      v195 = swift_slowAlloc();
      v196 = v1;
      v197 = swift_slowAlloc();
      *&v300 = v197;
      *v195 = 136315138;
      sub_E211C(v193, v194);
      v198 = sub_106E30();
      v200 = v199;
      sub_16F70(v193, &qword_137500, &qword_107E10);
      v201 = sub_722E8(v198, v200, &v300);

      *(v195 + 4) = v201;
      _os_log_impl(&dword_0, v190, v191, "Proposed Time: %s", v195, 0xCu);
      sub_2738(v197);
      v1 = v196;
    }

    else
    {

      sub_16F70(v193, &qword_137500, &qword_107E10);
    }

    v202 = [v5 alarm];
    if (v202)
    {
      v203 = v202;
      v204 = [v202 identifier];

      if (v204)
      {
        sub_106E20();
      }
    }

    v205 = v1[27];
    v206 = v1[22];
    v207 = v1;
    v210 = v1 + 16;
    v209 = v1[16];
    v208 = v210[1];
    sub_106A50();
    v211 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v212 = sub_106E10();

    v213 = sub_106E10();
    v214 = [v211 initWithIdentifier:v212 displayString:v213];

    sub_1F7B8();
    v215 = sub_107090(1).super.super.isa;
    [v214 setIncludeSleepAlarm:v215];

    [v5 setAlarmSearch:v214];
    [v5 setOperation:{objc_msgSend(v37, "operation")}];
    sub_E211C(v205, v206);
    v216 = v209;
    v1 = v207;
    v217 = 0;
    if ((*(v208 + 48))(v206, 1, v216) != 1)
    {
      v218 = v207[22];
      v220 = v207[16];
      v219 = v207[17];
      v217 = sub_104560().super.isa;
      (*(v219 + 8))(v218, v220);
    }

    [v5 setProposedTime:v217];

    v221 = [v37 proposedMeridiemSetByUser];
    [v5 setProposedMeridiemSetByUser:v221];

    v222 = [v37 proposedLabel];
    [v5 setProposedLabel:v222];

    v223 = v5;
    v224 = sub_106D10();
    v225 = sub_106FC0();

    if (os_log_type_enabled(v224, v225))
    {
      v226 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      *v226 = 138412290;
      *(v226 + 4) = v223;
      *v227 = v223;
      v228 = v223;
      _os_log_impl(&dword_0, v224, v225, "Updated intent: %@", v226, 0xCu);
      sub_16F70(v227, &qword_137578, &unk_10B4E0);
    }

    v229 = v207[36];
    v231 = v207[29];
    v230 = v207[30];
    v232 = v207[27];
    v233 = v207[2];

    v300 = 0u;
    v301 = 0u;
    sub_105070();

    sub_16F70(v232, &qword_137500, &qword_107E10);
    v234 = sub_25E4(&qword_13AA98, &unk_10B4D0);
    (*(*(v234 - 8) + 56))(v233, 0, 1, v234);
    (*(v230 + 8))(v229, v231);
    goto LABEL_77;
  }

  if (v6 != enum case for Parse.NLv4IntentOnly(_:))
  {
    if (v6 == enum case for Parse.uso(_:))
    {
      v79 = v1[36];
      v81 = v1[9];
      v80 = v1[10];
      v83 = v1[7];
      v82 = v1[8];
      v84 = v1[5];
      v85 = v1[6];
      (*(v1[34] + 96))(v79, v1[33]);
      (*(v81 + 32))(v80, v79, v82);
      sub_105400();
      v86 = sub_105440();
      (*(v85 + 8))(v83, v84);
      if (v86)
      {
        sub_1068D0();

        v88 = sub_87F34(v87);
        if (v88)
        {
          v89 = v88;
          if (qword_136E98 != -1)
          {
            swift_once();
          }

          v90 = sub_106D20();
          sub_135C4(v90, qword_13A9C0);
          v91 = v5;
          v92 = sub_106D10();
          v93 = sub_106FC0();

          v293 = v91;
          v291 = v1;
          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            *&v300 = v95;
            *v94 = 136315138;
            v96 = v91;
            v97 = [v96 description];
            v98 = sub_106E20();
            v100 = v99;

            v101 = sub_722E8(v98, v100, &v300);

            *(v94 + 4) = v101;
            _os_log_impl(&dword_0, v92, v93, "Current SK intent: %s", v94, 0xCu);
            sub_2738(v95);
          }

          v102 = v89;
          v103 = sub_106D10();
          v104 = sub_106FC0();

          v296 = v102;
          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            *&v300 = v106;
            *v105 = 136315138;
            v107 = v102;
            v108 = [v107 description];
            v109 = sub_106E20();
            v111 = v110;

            v112 = v109;
            v102 = v296;
            v113 = sub_722E8(v112, v111, &v300);

            *(v105 + 4) = v113;
            _os_log_impl(&dword_0, v103, v104, "This turn of updateAlarmIntent: %s", v105, 0xCu);
            sub_2738(v106);
          }

          v1 = v291;
          v114 = [v102 proposedTime];
          if (v114)
          {
            v115 = v291[17];
            v116 = v291[18];
            v117 = v291[16];
            v118 = v114;
            sub_104570();

            v119.super.isa = sub_104560().super.isa;
            (*(v115 + 8))(v116, v117);
          }

          else
          {
            v119.super.isa = 0;
          }

          [v293 setProposedTime:v119.super.isa];

          v271 = [v102 proposedMeridiemSetByUser];
          [v293 setProposedMeridiemSetByUser:v271];

          v272 = [v102 proposedLabel];
          [v293 setProposedLabel:v272];

          v273 = v293;
          v274 = sub_106D10();
          v275 = sub_106FC0();

          if (os_log_type_enabled(v274, v275))
          {
            v276 = swift_slowAlloc();
            v277 = swift_slowAlloc();
            *&v300 = v277;
            *v276 = 136315138;
            v278 = v273;
            v279 = [v278 description];
            v280 = sub_106E20();
            v282 = v281;

            v283 = v280;
            v1 = v291;
            v284 = sub_722E8(v283, v282, &v300);

            *(v276 + 4) = v284;
            _os_log_impl(&dword_0, v274, v275, "Updated SK intent: %s", v276, 0xCu);
            sub_2738(v277);
          }

          v286 = v1[9];
          v285 = v1[10];
          v287 = v1[8];
          v288 = v1[2];
          v300 = 0u;
          v301 = 0u;
          sub_105070();

          (*(v286 + 8))(v285, v287);
          v289 = sub_25E4(&qword_13AA98, &unk_10B4D0);
          (*(*(v289 - 8) + 56))(v288, 0, 1, v289);
          goto LABEL_77;
        }
      }

      if (qword_136E98 != -1)
      {
        swift_once();
      }

      v253 = v1[14];
      v254 = v1[11];
      v255 = v1[12];
      v256 = v1[3];
      v257 = sub_106D20();
      sub_135C4(v257, qword_13A9C0);
      (*(v255 + 16))(v253, v256, v254);
      v258 = sub_106D10();
      v259 = sub_106FB0();
      if (os_log_type_enabled(v258, v259))
      {
        v260 = v1[14];
        v261 = v1[12];
        v299 = v1[11];
        v262 = swift_slowAlloc();
        v263 = swift_slowAlloc();
        *&v300 = v263;
        *v262 = 136315138;
        sub_105360();
        v264 = sub_106E30();
        v266 = v265;
        (*(v261 + 8))(v260, v299);
        v267 = sub_722E8(v264, v266, &v300);

        *(v262 + 4) = v267;
        _os_log_impl(&dword_0, v258, v259, "Failed to parse userDialogAct to UpdateAlarmIntent: %s", v262, 0xCu);
        sub_2738(v263);
      }

      else
      {
        v268 = v1[14];
        v270 = v1[11];
        v269 = v1[12];

        (*(v269 + 8))(v268, v270);
      }

      v164 = v1[9];
      v163 = v1[10];
      v165 = v1[8];
      *(v1 + 297) = 0;
      sub_25E4(&qword_137DD8, &unk_1085D0);
      sub_26E48();
      swift_allocError();
    }

    else
    {
      if (qword_136E98 != -1)
      {
        swift_once();
      }

      v146 = v1[12];
      v145 = v1[13];
      v147 = v1[11];
      v148 = v1[3];
      v149 = sub_106D20();
      sub_135C4(v149, qword_13A9C0);
      (*(v146 + 16))(v145, v148, v147);
      v150 = sub_106D10();
      v151 = sub_106FB0();
      if (os_log_type_enabled(v150, v151))
      {
        v153 = v1[12];
        v152 = v1[13];
        v297 = v1[11];
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        *&v300 = v155;
        *v154 = 136315138;
        sub_105360();
        v156 = sub_106E30();
        v158 = v157;
        (*(v153 + 8))(v152, v297);
        v159 = sub_722E8(v156, v158, &v300);

        *(v154 + 4) = v159;
        _os_log_impl(&dword_0, v150, v151, "Received an unsupported input: %s", v154, 0xCu);
        sub_2738(v155);
      }

      else
      {
        v161 = v1[12];
        v160 = v1[13];
        v162 = v1[11];

        (*(v161 + 8))(v160, v162);
      }

      v163 = v1[36];
      v165 = v1[33];
      v164 = v1[34];
      *(v1 + 296) = 0;
      sub_25E4(&qword_137DD8, &unk_1085D0);
      sub_26E48();
      swift_allocError();
    }

    sub_1064E0();
    swift_willThrow();

    (*(v164 + 8))(v163, v165);
    goto LABEL_77;
  }

  (*(v1[34] + 96))(v1[36], v1[33]);
  swift_getObjectType();
  if (sub_107000())
  {
    sub_1068D0();

    v48 = sub_87F34(v47);
    if (v48)
    {
      v49 = v48;
      if (qword_136E98 != -1)
      {
        swift_once();
      }

      v50 = sub_106D20();
      sub_135C4(v50, qword_13A9C0);
      v51 = v5;
      v52 = sub_106D10();
      v53 = sub_106FC0();

      v290 = v1;
      v292 = v51;
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&v300 = v55;
        *v54 = 136315138;
        v56 = v51;
        v57 = [v56 description];
        v58 = sub_106E20();
        v60 = v59;

        v61 = sub_722E8(v58, v60, &v300);

        *(v54 + 4) = v61;
        _os_log_impl(&dword_0, v52, v53, "Current SK intent: %s", v54, 0xCu);
        sub_2738(v55);
      }

      v62 = v49;
      v63 = sub_106D10();
      v64 = sub_106FC0();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *&v300 = v66;
        *v65 = 136315138;
        v67 = v62;
        v68 = [v67 description];
        v69 = sub_106E20();
        v71 = v70;

        v72 = sub_722E8(v69, v71, &v300);

        *(v65 + 4) = v72;
        _os_log_impl(&dword_0, v63, v64, "This turn of updateAlarmIntent: %s", v65, 0xCu);
        sub_2738(v66);
      }

      v1 = v290;
      v73 = [v62 proposedTime];
      if (v73)
      {
        v74 = v290[19];
        v76 = v290[16];
        v75 = v290[17];
        v77 = v73;
        sub_104570();

        v78.super.isa = sub_104560().super.isa;
        (*(v75 + 8))(v74, v76);
      }

      else
      {
        v78.super.isa = 0;
      }

      [v292 setProposedTime:v78.super.isa];

      v237 = [v62 proposedMeridiemSetByUser];
      [v292 setProposedMeridiemSetByUser:v237];

      v238 = [v62 proposedLabel];
      [v292 setProposedLabel:v238];

      v239 = v292;
      v240 = sub_106D10();
      v241 = sub_106FC0();

      if (os_log_type_enabled(v240, v241))
      {
        v242 = swift_slowAlloc();
        v294 = swift_slowAlloc();
        *&v300 = v294;
        *v242 = 136315138;
        v243 = v239;
        v244 = [v243 description];
        v245 = sub_106E20();
        v246 = v62;
        v248 = v247;

        v249 = v245;
        v1 = v290;
        v250 = sub_722E8(v249, v248, &v300);
        v62 = v246;

        *(v242 + 4) = v250;
        _os_log_impl(&dword_0, v240, v241, "Updated SK intent: %s", v242, 0xCu);
        sub_2738(v294);
      }

      v251 = v1[2];
      v300 = 0u;
      v301 = 0u;
      sub_105070();

      swift_unknownObjectRelease();
      v252 = sub_25E4(&qword_13AA98, &unk_10B4D0);
      (*(*(v252 - 8) + 56))(v251, 0, 1, v252);
      goto LABEL_77;
    }
  }

  if (qword_136E98 != -1)
  {
    swift_once();
  }

  v166 = v1[15];
  v167 = v1[11];
  v168 = v1[12];
  v169 = v1[3];
  v170 = sub_106D20();
  sub_135C4(v170, qword_13A9C0);
  (*(v168 + 16))(v166, v169, v167);
  v171 = sub_106D10();
  v172 = sub_106FB0();
  if (os_log_type_enabled(v171, v172))
  {
    v173 = v1[15];
    v174 = v1[12];
    v298 = v1[11];
    v175 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    *&v300 = v176;
    *v175 = 136315138;
    sub_105360();
    v177 = sub_106E30();
    v179 = v178;
    (*(v174 + 8))(v173, v298);
    v180 = sub_722E8(v177, v179, &v300);

    *(v175 + 4) = v180;
    _os_log_impl(&dword_0, v171, v172, "Failed to parse userDialogAct to UpdateAlarmIntent: %s", v175, 0xCu);
    sub_2738(v176);
  }

  else
  {
    v181 = v1[15];
    v183 = v1[11];
    v182 = v1[12];

    (*(v182 + 8))(v181, v183);
  }

  *(v1 + 298) = 0;
  sub_25E4(&qword_137DD8, &unk_1085D0);
  sub_26E48();
  swift_allocError();
  sub_1064E0();
  swift_willThrow();

  swift_unknownObjectRelease();
LABEL_77:

  v235 = v1[1];

  return v235();
}

uint64_t sub_E1C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CE64;

  return sub_DF84C(a1, a2, a3);
}

uint64_t sub_E1CDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA94;

  return sub_DE368(a1, a2);
}

uint64_t sub_E1D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = _s18NeedsValueStrategyCMa_0();
  *v8 = v4;
  v8[1] = sub_1CE64;

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t sub_E1E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = _s18NeedsValueStrategyCMa_0();
  *v8 = v4;
  v8[1] = sub_1CE64;

  return NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t sub_E1F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = _s18NeedsValueStrategyCMa_0();
  *v12 = v6;
  v12[1] = sub_1CE64;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_E1FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = _s18NeedsValueStrategyCMa_0();
  *v14 = v7;
  v14[1] = sub_1CE64;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v15, a7);
}

unint64_t sub_E20C8()
{
  result = qword_13AA90;
  if (!qword_13AA90)
  {
    _s18NeedsValueStrategyCMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AA90);
  }

  return result;
}

uint64_t sub_E211C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137500, &qword_107E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E21EC()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - v2;
  sub_25E4(&qword_137880, &unk_108290);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10B4F0;
  *(v4 + 32) = 7368801;
  *(v4 + 40) = 0xE300000000000000;
  v5 = *v0;
  if (*v0)
  {
    v6 = sub_106100();
    v7 = v5;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 72) = v6;
  *(v4 + 80) = 0x6E69577473726966;
  *(v4 + 88) = 0xEF657A6953776F64;
  if (v0[2])
  {
    v8 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
    v9 = 0;
  }

  else
  {
    v9 = v0[1];
    v8 = &type metadata for Double;
  }

  *(v4 + 96) = v9;
  *(v4 + 120) = v8;
  strcpy((v4 + 128), "isConclusion");
  *(v4 + 141) = 0;
  *(v4 + 142) = -5120;
  *(v4 + 144) = *(v0 + 17);
  *(v4 + 168) = &type metadata for Bool;
  strcpy((v4 + 176), "isFirstWindow");
  *(v4 + 190) = -4864;
  *(v4 + 192) = *(v0 + 18);
  *(v4 + 216) = &type metadata for Bool;
  strcpy((v4 + 224), "isLastWindow");
  *(v4 + 237) = 0;
  *(v4 + 238) = -5120;
  *(v4 + 240) = *(v0 + 19);
  *(v4 + 264) = &type metadata for Bool;
  *(v4 + 272) = 0xD000000000000016;
  *(v4 + 280) = 0x800000000010DAF0;
  *(v4 + 288) = *(v0 + 20);
  *(v4 + 312) = &type metadata for Bool;
  *(v4 + 320) = 0x6D6F727065527369;
  *(v4 + 328) = 0xEA00000000007470;
  *(v4 + 336) = *(v0 + 21);
  *(v4 + 360) = &type metadata for Bool;
  *(v4 + 368) = 0x736D657469;
  *(v4 + 376) = 0xE500000000000000;
  v10 = v0[3];
  v11 = sub_25E4(&qword_137B40, &unk_108390);
  *(v4 + 384) = v10;
  *(v4 + 408) = v11;
  *(v4 + 416) = 0xD000000000000013;
  *(v4 + 424) = 0x800000000010DB10;
  if (v0[5])
  {
    v12 = 0;
    *(v4 + 440) = 0;
    *(v4 + 448) = 0;
    v13 = 0;
  }

  else
  {
    v13 = v0[4];
    v12 = &type metadata for Double;
  }

  *(v4 + 432) = v13;
  *(v4 + 456) = v12;
  *(v4 + 464) = 0x6574496C61746F74;
  *(v4 + 472) = 0xEA0000000000736DLL;
  if (v0[7])
  {
    v14 = 0;
    *(v4 + 488) = 0;
    *(v4 + 496) = 0;
    v15 = 0;
  }

  else
  {
    v15 = v0[6];
    v14 = &type metadata for Double;
  }

  *(v4 + 480) = v15;
  *(v4 + 504) = v14;
  *(v4 + 512) = 0xD000000000000018;
  *(v4 + 520) = 0x800000000010E730;
  v16 = type metadata accessor for AlarmBaseDisambiguationParameters(0);
  sub_14994(v0 + *(v16 + 56), v3, &qword_137598, &unk_107EB0);
  v17 = sub_106160();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v3, 1, v17) == 1)
  {

    sub_16F70(v3, &qword_137598, &unk_107EB0);
    *(v4 + 528) = 0u;
    *(v4 + 544) = 0u;
  }

  else
  {
    *(v4 + 552) = v17;
    v19 = sub_1A924((v4 + 528));
    (*(v18 + 32))(v19, v3, v17);
  }

  *(v4 + 560) = 0x6953776F646E6977;
  *(v4 + 568) = 0xEA0000000000657ALL;
  v20 = (v0 + *(v16 + 60));
  if (v20[1])
  {
    v21 = 0;
    *(v4 + 584) = 0u;
    v22 = 0;
  }

  else
  {
    v22 = *v20;
    v21 = &type metadata for Double;
  }

  *(v4 + 576) = v22;
  *(v4 + 600) = v21;
  return v4;
}

uint64_t sub_E2634()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  sub_25E4(&qword_137880, &unk_108290);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_109690;
  *(v7 + 32) = 0xD000000000000010;
  *(v7 + 40) = 0x800000000010CF20;
  sub_14994(v0, v6, &qword_137598, &unk_107EB0);
  v8 = sub_106160();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) == 1)
  {
    sub_16F70(v6, &qword_137598, &unk_107EB0);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    v11 = sub_1A924((v7 + 48));
    (*(v9 + 32))(v11, v6, v8);
  }

  *(v7 + 80) = 0xD000000000000014;
  *(v7 + 88) = 0x800000000010D320;
  v12 = type metadata accessor for AlarmBaseAppNotInstalledPromptInstallParameters(0);
  sub_14994(v0 + *(v12 + 20), v4, &qword_137598, &unk_107EB0);
  if (v10(v4, 1, v8) == 1)
  {
    sub_16F70(v4, &qword_137598, &unk_107EB0);
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
  }

  else
  {
    *(v7 + 120) = v8;
    v13 = sub_1A924((v7 + 96));
    (*(v9 + 32))(v13, v4, v8);
  }

  *(v7 + 128) = 0x656369766564;
  *(v7 + 136) = 0xE600000000000000;
  v14 = *(v0 + *(v12 + 24));
  if (v14)
  {
    v15 = sub_1061B0();
  }

  else
  {
    v15 = 0;
    *(v7 + 152) = 0;
    *(v7 + 160) = 0;
  }

  *(v7 + 144) = v14;
  *(v7 + 168) = v15;

  return v7;
}

uint64_t sub_E28E8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_25E4(&qword_137598, &unk_107EB0);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for AlarmBaseAppNotInstalledFallbackToSleepParameters(0);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_E29C0, 0, 0);
}

uint64_t sub_E29C0()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v16 = v0[4];
  v4 = v0[3];
  v5 = sub_106160();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2, 1, 1, v5);
  v7 = *(v1 + 20);
  *(v2 + v7) = 0;
  sub_1A8E0(v4, v4[3]);
  sub_106710();
  sub_1A814(v3, v2);
  sub_1A8E0(v4, v4[3]);
  v8 = sub_106720();
  *(v2 + v7) = v8;
  sub_25E4(&qword_137880, &unk_108290);
  v9 = swift_allocObject();
  v0[8] = v9;
  *(v9 + 16) = xmmword_1094F0;
  *(v9 + 32) = 0xD000000000000014;
  *(v9 + 40) = 0x800000000010D320;
  sub_14994(v2, v16, &qword_137598, &unk_107EB0);
  v10 = (*(v6 + 48))(v16, 1, v5);
  v11 = v0[4];
  if (v10 == 1)
  {
    sub_16F70(v0[4], &qword_137598, &unk_107EB0);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v5;
    v12 = sub_1A924((v9 + 48));
    (*(v6 + 32))(v12, v11, v5);
  }

  *(v9 + 80) = 0x656369766564;
  *(v9 + 88) = 0xE600000000000000;
  v13 = 0;
  if (v8)
  {
    v13 = sub_1061B0();
  }

  else
  {
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
  }

  *(v9 + 96) = v8;
  *(v9 + 120) = v13;
  v17 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_E2C88;

  return v17(0xD000000000000028, 0x800000000010E750, v9);
}

uint64_t sub_E2C88(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_E2E78;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_E2DD4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_E2DD4()
{
  sub_E3E24(v0[7], type metadata accessor for AlarmBaseAppNotInstalledFallbackToSleepParameters);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_E2E78()
{
  sub_E3E24(*(v0 + 56), type metadata accessor for AlarmBaseAppNotInstalledFallbackToSleepParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E2F18(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for AlarmBaseAppNotInstalledPromptInstallParameters(0);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_E2FB0, 0, 0);
}

uint64_t sub_E2FB0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v4 = sub_106160();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v5(v1 + *(v2 + 20), 1, 1, v4);
  *(v1 + *(v2 + 24)) = 0;
  v3(v1);
  v6 = sub_E2634();
  v0[7] = v6;
  v9 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_E3118;

  return v9(0xD000000000000026, 0x800000000010E700, v6);
}

uint64_t sub_E3118(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_E32EC;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_E3264;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_E3264()
{
  sub_E3E24(v0[6], type metadata accessor for AlarmBaseAppNotInstalledPromptInstallParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_E32EC()
{
  sub_E3E24(*(v0 + 48), type metadata accessor for AlarmBaseAppNotInstalledPromptInstallParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E3370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_14994(a1, v11, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v12;
}

uint64_t sub_E3574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25E4(&qword_137598, &unk_107EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_E3644(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_25E4(&qword_137598, &unk_107EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_E36F4(uint64_t a1)
{
  sub_E3AFC(319, &qword_137A10, &type metadata accessor for SirikitApp, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_A90C8();
    if (v2 <= 0x3F)
    {
      sub_E3AFC(319, &qword_137A18, type metadata accessor for AlarmAlarm, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_E3AFC(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_E386C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_E3954(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_E3A18(uint64_t a1)
{
  sub_E3AFC(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_E3AFC(319, &unk_13AC10, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_E3AFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_E3B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_E3C5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_E3D40(uint64_t a1)
{
  sub_E3AFC(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_E3AFC(319, &unk_13AC10, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_E3E24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_E3ED0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_E3F6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_E3FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1064A0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_E4048(uint64_t a1, uint64_t a2)
{
  v4 = sub_1064A0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for UnsupportedAppNotInstalledPatternExecutor(uint64_t a1)
{
  result = qword_13AD30;
  if (!qword_13AD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E4104(uint64_t a1)
{
  result = sub_1064A0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_E4170(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  sub_106200();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_E4204, 0, 0);
}

uint64_t sub_E4204()
{
  v9 = v0[9];
  v1 = v0[7];
  v2 = type metadata accessor for AlarmBaseAppNotInstalledPromptInstallParameters(0);
  v0[5] = v2;
  v0[6] = sub_E4D14(&qword_13AD68, type metadata accessor for AlarmBaseAppNotInstalledPromptInstallParameters, &unk_10B660);
  v3 = sub_1A924(v0 + 2);
  v4 = sub_106160();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v5((v3 + *(v2 + 20)), 1, 1, v4);
  *(v3 + *(v2 + 24)) = 0;
  v1(v0 + 2);
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v0[11] = sub_1060D0();
  v6 = swift_task_alloc();
  v0[12] = v6;
  *(v6 + 16) = v0 + 2;
  *(v6 + 24) = v9;
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_E43E4;

  return sub_E2F18(sub_E48D4, v6);
}

uint64_t sub_E43E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_E4590;
  }

  else
  {

    *(v4 + 120) = a1;

    v5 = sub_E451C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_E451C()
{
  sub_2738(v0 + 2);

  v1 = v0[1];
  v2 = v0[15];

  return v1(v2);
}

uint64_t sub_E4590()
{

  sub_2738((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E4610(uint64_t a1, void *a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  sub_1A8E0(a2, a2[3]);
  sub_106710();
  v7 = type metadata accessor for AlarmBaseAppNotInstalledPromptInstallParameters(0);
  sub_1A814(v6, a1 + *(v7 + 20));
  sub_1A8E0(a2, a2[3]);
  v8 = sub_106720();
  v9 = *(v7 + 24);

  *(a1 + v9) = v8;
  sub_106490();
  sub_106E50();

  v10 = sub_106160();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  return sub_1A814(v6, a1);
}

uint64_t sub_E477C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_56FA4;

  return sub_E4170(a1, a2);
}

uint64_t sub_E4820(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_57B60;

  return sub_E48DC(a1, a2);
}

uint64_t sub_E48DC(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  sub_106200();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_E496C, 0, 0);
}

uint64_t sub_E496C()
{
  v1 = v0[7];
  v2 = type metadata accessor for AlarmBaseAppNotInstalledFallbackToSleepParameters(0);
  v0[5] = v2;
  v0[6] = sub_E4D14(&qword_13AD70, type metadata accessor for AlarmBaseAppNotInstalledFallbackToSleepParameters, &unk_10B610);
  v3 = sub_1A924(v0 + 2);
  v4 = sub_106160();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  *(v3 + *(v2 + 20)) = 0;
  v1(v0 + 2);
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v5 = sub_1060D0();
  v0[10] = v5;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_E4AFC;

  return sub_E28E8(v5, (v0 + 2));
}

uint64_t sub_E4AFC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_E4CA0;
  }

  else
  {

    *(v4 + 104) = a1;
    v5 = sub_E4C2C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_E4C2C()
{
  sub_2738(v0 + 2);

  v1 = v0[1];
  v2 = v0[13];

  return v1(v2);
}

uint64_t sub_E4CA0()
{

  sub_2738((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E4D14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_E4D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25E4(&qword_1374F0, &qword_1080F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_E4E40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_25E4(&qword_1374F0, &qword_1080F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s20HandleIntentStrategyVMa_5(uint64_t a1)
{
  result = qword_13ADE8;
  if (!qword_13ADE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E4F3C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13AD78);
  sub_135C4(v0, qword_13AD78);
  return sub_106A80();
}

uint64_t sub_E4F88(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_136EA0 != -1)
  {
    swift_once();
  }

  v6 = sub_106D20();
  sub_135C4(v6, qword_13AD78);
  v7 = sub_106D10();
  v8 = sub_106FC0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "SnoozeAlarm.HandleIntentStrategy.makeIntentExecutionBehavior is called.", v9, 2u);
  }

  v10 = v3 + *(_s20HandleIntentStrategyVMa_5(0) + 20);

  return sub_169D8(a1, a2, v10);
}

uint64_t sub_E509C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_25E4(&qword_13AE28, &qword_10B898);
  v2[9] = swift_task_alloc();
  v3 = sub_106CC0();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_106BF0();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  sub_25E4(&qword_1374F0, &qword_1080F0);
  v2[16] = swift_task_alloc();
  sub_25E4(&qword_13AE30, &unk_10B8A0);
  v2[17] = swift_task_alloc();
  v5 = sub_1046B0();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_E52C8, 0, 0);
}

uint64_t sub_E52C8()
{
  sub_104CA0();
  sub_1A8E0(v0 + 2, v0[5]);
  sub_105130();
  if (v1)
  {
    v2 = v0[18];
    v3 = v0[19];
    v4 = v0[17];
    sub_2738(v0 + 2);
    sub_104680();

    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      v5 = v0[17];
      v6 = &qword_13AE30;
      v7 = &unk_10B8A0;
    }

    else
    {
      v8 = v0[16];
      v9 = v0[8];
      (*(v0[19] + 32))(v0[21], v0[17], v0[18]);
      v10 = _s20HandleIntentStrategyVMa_5(0);
      sub_517C8(v9 + *(v10 + 20), v8);
      v11 = sub_106630();
      v12 = *(v11 - 8);
      v13 = (*(v12 + 48))(v8, 1, v11);
      v14 = v0[21];
      if (v13 != 1)
      {
        v23 = v0[19];
        v32 = v0[20];
        v33 = v0[18];
        v25 = v0[15];
        v24 = v0[16];
        v26 = v0[14];
        v27 = v0[11];
        v34 = v0[12];
        v35 = v0[10];
        v36 = v0[9];
        v37 = v0[21];
        v38 = v0[13];
        v39 = v0[7];
        v28 = sub_106620();
        (*(v12 + 8))(v24, v11);
        sub_106C90();
        sub_106C80();
        sub_25E4(&qword_13AE40, &qword_10B8C0);
        sub_25E4(&qword_137DD0, &unk_108920);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_108470;
        *(v29 + 32) = v28;
        *v25 = v29;
        v25[1] = 0;
        (*(v23 + 16))(v32, v14, v33);
        (*(v27 + 104))(v34, enum case for ExecutionInfo.Action.alarmSnooze(_:), v35);
        v30 = sub_106CB0();
        (*(*(v30 - 8) + 56))(v36, 1, 1, v30);
        v31 = v28;
        sub_106CA0();
        (*(v26 + 104))(v25, enum case for CrossDeviceCommandExecution.started(_:), v38);
        sub_106C70();

        (*(v26 + 8))(v25, v38);
        v39[3] = sub_105430();
        v39[4] = &protocol witness table for AceOutput;
        sub_1A924(v39);
        sub_105420();

        (*(v23 + 8))(v37, v33);
        goto LABEL_13;
      }

      v15 = v0[16];
      (*(v0[19] + 8))(v0[21], v0[18]);
      v6 = &qword_1374F0;
      v7 = &qword_1080F0;
      v5 = v15;
    }

    sub_16F70(v5, v6, v7);
  }

  else
  {
    sub_2738(v0 + 2);
  }

  if (qword_136EA0 != -1)
  {
    swift_once();
  }

  v16 = sub_106D20();
  sub_135C4(v16, qword_13AD78);
  v17 = sub_106D10();
  v18 = sub_106FC0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "SnoozeAlarm.HandleIntentStrategy.makePreHandleIntentOutput() returning - selectedDevice not found in halInfo", v19, 2u);
  }

  v20 = v0[7];

  v20[3] = sub_105430();
  v20[4] = &protocol witness table for AceOutput;
  sub_1A924(v20);
  sub_105420();
LABEL_13:

  v21 = v0[1];

  return v21();
}

uint64_t sub_E5808(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  sub_25E4(&qword_13AE28, &qword_10B898);
  v3[31] = swift_task_alloc();
  v4 = sub_106CC0();
  v3[32] = v4;
  v3[33] = *(v4 - 8);
  v3[34] = swift_task_alloc();
  v5 = sub_106BF0();
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();
  v6 = sub_106BE0();
  v3[38] = v6;
  v3[39] = *(v6 - 8);
  v3[40] = swift_task_alloc();
  sub_25E4(&qword_13AE30, &unk_10B8A0);
  v3[41] = swift_task_alloc();
  v7 = sub_1046B0();
  v3[42] = v7;
  v3[43] = *(v7 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v8 = sub_104D60();
  v3[46] = v8;
  v3[47] = *(v8 - 8);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v9 = sub_106D20();
  v3[51] = v9;
  v3[52] = *(v9 - 8);
  v3[53] = swift_task_alloc();
  v10 = sub_106300();
  v3[54] = v10;
  v3[55] = *(v10 - 8);
  v3[56] = swift_task_alloc();
  v11 = sub_106320();
  v3[57] = v11;
  v3[58] = *(v11 - 8);
  v3[59] = swift_task_alloc();
  sub_25E4(&qword_1374F0, &qword_1080F0);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v12 = sub_104FF0();
  v3[62] = v12;
  v3[63] = *(v12 - 8);
  v3[64] = swift_task_alloc();

  return _swift_task_switch(sub_E5C84, 0, 0);
}

uint64_t sub_E5C84()
{
  if (qword_136EA0 != -1)
  {
    swift_once();
  }

  v1 = sub_135C4(v0[51], qword_13AD78);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SnoozeAlarm.HandleIntentStrategy.makeIntentHandledResponse() called.", v4, 2u);
  }

  v0[65] = sub_25E4(&qword_139638, &unk_109D20);
  v5 = sub_105170();
  v6 = [v5 alarmId];

  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v0[61];
  v8 = v0[30];
  v9 = sub_106E20();
  v11 = v10;

  v12 = _s20HandleIntentStrategyVMa_5(0);
  sub_517C8(v8 + *(v12 + 20), v7);
  v13 = sub_106630();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v7, 1, v13);
  v16 = v0[61];
  if (v15 != 1)
  {
    v17 = sub_106520();
    (*(v14 + 8))(v16, v13);
    if (!v17)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_104FE0();
    goto LABEL_12;
  }

  sub_16F70(v0[61], &qword_1374F0, &qword_1080F0);
LABEL_11:
  v18 = v0[64];
  sub_25E4(&qword_1376D0, &unk_1080E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_107FC0;
  *(inited + 32) = v9;
  v20 = inited + 32;
  *(inited + 40) = v11;
  sub_BD348(inited, v18);
  swift_setDeallocating();
  sub_1CDA8(v20);
LABEL_12:
  v21 = v0[53];
  v22 = v0[51];
  v23 = v0[52];
  (*(v0[55] + 104))(v0[56], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[54]);
  (*(v23 + 16))(v21, v1, v22);
  mach_absolute_time();
  sub_106330();
  v24 = sub_105150();
  v25 = sub_106880();

  if (v25 == 100)
  {
    if (qword_136D20 != -1)
    {
      swift_once();
    }

    v34 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v30 = swift_task_alloc();
    v0[72] = v30;
    *v30 = v0;
    v30[1] = sub_E6B68;
    v31 = 0x4E23657A6F6F6E53;
    v32 = 0xEF676E697269466FLL;
  }

  else
  {
    if (v25 == 4)
    {
      if (qword_136D20 != -1)
      {
        swift_once();
      }

      v26 = v0[30];
      v27 = swift_task_alloc();
      v0[66] = v27;
      *(v27 + 16) = v26;
      v28 = swift_task_alloc();
      v0[67] = v28;
      *v28 = v0;
      v28[1] = sub_E6204;

      return sub_7D400(sub_E8FBC, v27);
    }

    if (qword_136D20 != -1)
    {
      swift_once();
    }

    v34 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v33 = swift_task_alloc();
    v0[77] = v33;
    *v33 = v0;
    v33[1] = sub_E761C;
    v31 = 0x4523657A6F6F6E53;
    v32 = 0xEC000000726F7272;
  }

  return v34(v31, v32, _swiftEmptyArrayStorage);
}

uint64_t sub_E6204(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 544) = v1;

  if (v1)
  {
    v5 = sub_E80D0;
  }

  else
  {
    *(v4 + 552) = a1;
    v5 = sub_E6350;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_E6350(uint64_t a1)
{
  sub_104CF0();
  v2 = swift_task_alloc();
  v1[70] = v2;
  *v2 = v1;
  v2[1] = sub_E6404;
  v3 = v1[64];
  v4 = v1[59];
  v5 = v1[50];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v1 + 23, v5, v3, v4, 0);
}

uint64_t sub_E6404()
{
  v2 = *(*v1 + 552);
  v3 = *(*v1 + 400);
  v4 = *(*v1 + 376);
  v5 = *(*v1 + 368);
  *(*v1 + 568) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v6 = sub_E8244;
  }

  else
  {
    v6 = sub_E6594;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_E6594()
{
  sub_1AD44((v0 + 184), *(v0 + 224));
  sub_104CA0();
  sub_1A8E0((v0 + 104), *(v0 + 128));
  sub_105130();
  if (!v1)
  {
    v12 = *(v0 + 504);
    v11 = *(v0 + 512);
    v13 = *(v0 + 496);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    (*(v12 + 8))(v11, v13);
    sub_2738((v0 + 104));
    goto LABEL_11;
  }

  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = *(v0 + 328);
  sub_2738((v0 + 104));
  sub_104680();

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = *(v0 + 504);
    v5 = *(v0 + 512);
    v7 = *(v0 + 496);
    v8 = *(v0 + 328);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    (*(v6 + 8))(v5, v7);
    v9 = &qword_13AE30;
    v10 = &unk_10B8A0;
LABEL_7:
    sub_16F70(v8, v9, v10);
    goto LABEL_11;
  }

  v14 = *(v0 + 480);
  v15 = *(v0 + 240);
  (*(*(v0 + 344) + 32))(*(v0 + 360), *(v0 + 328), *(v0 + 336));
  v16 = _s20HandleIntentStrategyVMa_5(0);
  sub_517C8(v15 + *(v16 + 20), v14);
  v17 = sub_106630();
  if ((*(*(v17 - 8) + 48))(v14, 1, v17) == 1)
  {
    v19 = *(v0 + 504);
    v18 = *(v0 + 512);
    v20 = *(v0 + 496);
    v21 = *(v0 + 472);
    v8 = *(v0 + 480);
    v22 = *(v0 + 456);
    v23 = *(v0 + 464);
    (*(*(v0 + 344) + 8))(*(v0 + 360), *(v0 + 336));
    (*(v23 + 8))(v21, v22);
    (*(v19 + 8))(v18, v20);
    v9 = &qword_1374F0;
    v10 = &qword_1080F0;
    goto LABEL_7;
  }

  v50 = *(v0 + 512);
  v48 = *(v0 + 504);
  v49 = *(v0 + 496);
  v45 = *(v0 + 464);
  v46 = *(v0 + 456);
  v47 = *(v0 + 472);
  v24 = *(v0 + 352);
  v51 = *(v0 + 360);
  v25 = *(v0 + 344);
  v40 = *(v0 + 336);
  v26 = *(v0 + 312);
  v27 = *(v0 + 320);
  v28 = *(v0 + 296);
  v39 = *(v0 + 304);
  v29 = *(v0 + 288);
  v30 = *(v0 + 264);
  v41 = *(v0 + 272);
  v42 = *(v0 + 256);
  v43 = *(v0 + 248);
  v44 = *(v0 + 280);
  sub_16F70(*(v0 + 480), &qword_1374F0, &qword_1080F0);
  v31 = sub_105150();
  sub_106880();

  v32 = sub_1068A0();
  v33 = sub_1068A0();
  v34 = &enum case for CrossDeviceCommandExecution.Result.success(_:);
  if (v32 != v33)
  {
    v34 = &enum case for CrossDeviceCommandExecution.Result.error(_:);
  }

  (*(v26 + 104))(v27, *v34, v39);
  sub_106C90();
  sub_106C80();
  v38 = *(sub_25E4(&qword_13AE38, &qword_10B8B0) + 48);
  (*(v25 + 16))(v24, v51, v40);
  (*(v30 + 104))(v41, enum case for ExecutionInfo.Action.alarmSnooze(_:), v42);
  v35 = sub_106CB0();
  (*(*(v35 - 8) + 56))(v43, 1, 1, v35);
  sub_106CA0();
  (*(v26 + 16))(v28 + v38, v27, v39);
  (*(v29 + 104))(v28, enum case for CrossDeviceCommandExecution.ended(_:), v44);
  sub_106C70();

  (*(v29 + 8))(v28, v44);
  (*(v26 + 8))(v27, v39);
  (*(v25 + 8))(v51, v40);
  (*(v45 + 8))(v47, v46);
  (*(v48 + 8))(v50, v49);
LABEL_11:

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_E6B68(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 584) = v1;

  if (v1)
  {
    v5 = sub_E6ED4;
  }

  else
  {
    *(v4 + 592) = a1;
    v5 = sub_E6C90;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_E6C90(uint64_t a1)
{
  sub_104D20();
  v2 = swift_task_alloc();
  v1[75] = v2;
  *v2 = v1;
  v2[1] = sub_E6D44;
  v3 = v1[64];
  v4 = v1[59];
  v5 = v1[49];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v1 + 18, v5, v3, v4, 0);
}

uint64_t sub_E6D44()
{
  v2 = *(*v1 + 592);
  v3 = *(*v1 + 392);
  v4 = *(*v1 + 376);
  v5 = *(*v1 + 368);
  *(*v1 + 608) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v6 = sub_E83B8;
  }

  else
  {
    v6 = sub_E7048;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_E6ED4()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  (*(v0[58] + 8))(v0[59], v0[57]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_E7048()
{
  sub_1AD44((v0 + 144), *(v0 + 224));
  sub_104CA0();
  sub_1A8E0((v0 + 104), *(v0 + 128));
  sub_105130();
  if (!v1)
  {
    v12 = *(v0 + 504);
    v11 = *(v0 + 512);
    v13 = *(v0 + 496);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    (*(v12 + 8))(v11, v13);
    sub_2738((v0 + 104));
    goto LABEL_11;
  }

  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = *(v0 + 328);
  sub_2738((v0 + 104));
  sub_104680();

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = *(v0 + 504);
    v5 = *(v0 + 512);
    v7 = *(v0 + 496);
    v8 = *(v0 + 328);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    (*(v6 + 8))(v5, v7);
    v9 = &qword_13AE30;
    v10 = &unk_10B8A0;
LABEL_7:
    sub_16F70(v8, v9, v10);
    goto LABEL_11;
  }

  v14 = *(v0 + 480);
  v15 = *(v0 + 240);
  (*(*(v0 + 344) + 32))(*(v0 + 360), *(v0 + 328), *(v0 + 336));
  v16 = _s20HandleIntentStrategyVMa_5(0);
  sub_517C8(v15 + *(v16 + 20), v14);
  v17 = sub_106630();
  if ((*(*(v17 - 8) + 48))(v14, 1, v17) == 1)
  {
    v19 = *(v0 + 504);
    v18 = *(v0 + 512);
    v20 = *(v0 + 496);
    v21 = *(v0 + 472);
    v8 = *(v0 + 480);
    v22 = *(v0 + 456);
    v23 = *(v0 + 464);
    (*(*(v0 + 344) + 8))(*(v0 + 360), *(v0 + 336));
    (*(v23 + 8))(v21, v22);
    (*(v19 + 8))(v18, v20);
    v9 = &qword_1374F0;
    v10 = &qword_1080F0;
    goto LABEL_7;
  }

  v50 = *(v0 + 512);
  v48 = *(v0 + 504);
  v49 = *(v0 + 496);
  v45 = *(v0 + 464);
  v46 = *(v0 + 456);
  v47 = *(v0 + 472);
  v24 = *(v0 + 352);
  v51 = *(v0 + 360);
  v25 = *(v0 + 344);
  v40 = *(v0 + 336);
  v26 = *(v0 + 312);
  v27 = *(v0 + 320);
  v28 = *(v0 + 296);
  v39 = *(v0 + 304);
  v29 = *(v0 + 288);
  v30 = *(v0 + 264);
  v41 = *(v0 + 272);
  v42 = *(v0 + 256);
  v43 = *(v0 + 248);
  v44 = *(v0 + 280);
  sub_16F70(*(v0 + 480), &qword_1374F0, &qword_1080F0);
  v31 = sub_105150();
  sub_106880();

  v32 = sub_1068A0();
  v33 = sub_1068A0();
  v34 = &enum case for CrossDeviceCommandExecution.Result.success(_:);
  if (v32 != v33)
  {
    v34 = &enum case for CrossDeviceCommandExecution.Result.error(_:);
  }

  (*(v26 + 104))(v27, *v34, v39);
  sub_106C90();
  sub_106C80();
  v38 = *(sub_25E4(&qword_13AE38, &qword_10B8B0) + 48);
  (*(v25 + 16))(v24, v51, v40);
  (*(v30 + 104))(v41, enum case for ExecutionInfo.Action.alarmSnooze(_:), v42);
  v35 = sub_106CB0();
  (*(*(v35 - 8) + 56))(v43, 1, 1, v35);
  sub_106CA0();
  (*(v26 + 16))(v28 + v38, v27, v39);
  (*(v29 + 104))(v28, enum case for CrossDeviceCommandExecution.ended(_:), v44);
  sub_106C70();

  (*(v29 + 8))(v28, v44);
  (*(v26 + 8))(v27, v39);
  (*(v25 + 8))(v51, v40);
  (*(v45 + 8))(v47, v46);
  (*(v48 + 8))(v50, v49);
LABEL_11:

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_E761C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 624) = v1;

  if (v1)
  {
    v5 = sub_E7988;
  }

  else
  {
    *(v4 + 632) = a1;
    v5 = sub_E7744;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_E7744(uint64_t a1)
{
  sub_104D20();
  v2 = swift_task_alloc();
  v1[80] = v2;
  *v2 = v1;
  v2[1] = sub_E77F8;
  v3 = v1[64];
  v4 = v1[59];
  v5 = v1[48];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v1 + 8, v5, v3, v4, 0);
}

uint64_t sub_E77F8()
{
  v2 = *(*v1 + 632);
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 376);
  v5 = *(*v1 + 368);
  *(*v1 + 648) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v6 = sub_E852C;
  }

  else
  {
    v6 = sub_E7AFC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_E7988()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  (*(v0[58] + 8))(v0[59], v0[57]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_E7AFC()
{
  sub_1AD44((v0 + 64), *(v0 + 224));
  sub_104CA0();
  sub_1A8E0((v0 + 104), *(v0 + 128));
  sub_105130();
  if (!v1)
  {
    v12 = *(v0 + 504);
    v11 = *(v0 + 512);
    v13 = *(v0 + 496);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    (*(v12 + 8))(v11, v13);
    sub_2738((v0 + 104));
    goto LABEL_11;
  }

  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = *(v0 + 328);
  sub_2738((v0 + 104));
  sub_104680();

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = *(v0 + 504);
    v5 = *(v0 + 512);
    v7 = *(v0 + 496);
    v8 = *(v0 + 328);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    (*(v6 + 8))(v5, v7);
    v9 = &qword_13AE30;
    v10 = &unk_10B8A0;
LABEL_7:
    sub_16F70(v8, v9, v10);
    goto LABEL_11;
  }

  v14 = *(v0 + 480);
  v15 = *(v0 + 240);
  (*(*(v0 + 344) + 32))(*(v0 + 360), *(v0 + 328), *(v0 + 336));
  v16 = _s20HandleIntentStrategyVMa_5(0);
  sub_517C8(v15 + *(v16 + 20), v14);
  v17 = sub_106630();
  if ((*(*(v17 - 8) + 48))(v14, 1, v17) == 1)
  {
    v19 = *(v0 + 504);
    v18 = *(v0 + 512);
    v20 = *(v0 + 496);
    v21 = *(v0 + 472);
    v8 = *(v0 + 480);
    v22 = *(v0 + 456);
    v23 = *(v0 + 464);
    (*(*(v0 + 344) + 8))(*(v0 + 360), *(v0 + 336));
    (*(v23 + 8))(v21, v22);
    (*(v19 + 8))(v18, v20);
    v9 = &qword_1374F0;
    v10 = &qword_1080F0;
    goto LABEL_7;
  }

  v50 = *(v0 + 512);
  v48 = *(v0 + 504);
  v49 = *(v0 + 496);
  v45 = *(v0 + 464);
  v46 = *(v0 + 456);
  v47 = *(v0 + 472);
  v24 = *(v0 + 352);
  v51 = *(v0 + 360);
  v25 = *(v0 + 344);
  v40 = *(v0 + 336);
  v26 = *(v0 + 312);
  v27 = *(v0 + 320);
  v28 = *(v0 + 296);
  v39 = *(v0 + 304);
  v29 = *(v0 + 288);
  v30 = *(v0 + 264);
  v41 = *(v0 + 272);
  v42 = *(v0 + 256);
  v43 = *(v0 + 248);
  v44 = *(v0 + 280);
  sub_16F70(*(v0 + 480), &qword_1374F0, &qword_1080F0);
  v31 = sub_105150();
  sub_106880();

  v32 = sub_1068A0();
  v33 = sub_1068A0();
  v34 = &enum case for CrossDeviceCommandExecution.Result.success(_:);
  if (v32 != v33)
  {
    v34 = &enum case for CrossDeviceCommandExecution.Result.error(_:);
  }

  (*(v26 + 104))(v27, *v34, v39);
  sub_106C90();
  sub_106C80();
  v38 = *(sub_25E4(&qword_13AE38, &qword_10B8B0) + 48);
  (*(v25 + 16))(v24, v51, v40);
  (*(v30 + 104))(v41, enum case for ExecutionInfo.Action.alarmSnooze(_:), v42);
  v35 = sub_106CB0();
  (*(*(v35 - 8) + 56))(v43, 1, 1, v35);
  sub_106CA0();
  (*(v26 + 16))(v28 + v38, v27, v39);
  (*(v29 + 104))(v28, enum case for CrossDeviceCommandExecution.ended(_:), v44);
  sub_106C70();

  (*(v29 + 8))(v28, v44);
  (*(v26 + 8))(v27, v39);
  (*(v25 + 8))(v51, v40);
  (*(v45 + 8))(v47, v46);
  (*(v48 + 8))(v50, v49);
LABEL_11:

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_E80D0()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  (*(v0[58] + 8))(v0[59], v0[57]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_E8244()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  (*(v0[58] + 8))(v0[59], v0[57]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_E83B8()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  (*(v0[58] + 8))(v0[59], v0[57]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_E852C()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  (*(v0[58] + 8))(v0[59], v0[57]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_E86A0(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v3 = sub_25E4(&qword_1374F0, &qword_1080F0);
  v4 = __chkstk_darwin(v3 - 8);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v31 - v7;
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = sub_25E4(&qword_137598, &unk_107EB0);
  v12 = __chkstk_darwin(v11 - 8);
  v33 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v32 = &v31 - v15;
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  v36 = *(_s20HandleIntentStrategyVMa_5(0) + 20);
  v37 = a2;
  sub_517C8(a2 + v36, v10);
  v18 = sub_106630();
  v19 = *(v18 - 8);
  v35 = *(v19 + 48);
  if (v35(v10, 1, v18) == 1)
  {
    sub_16F70(v10, &qword_1374F0, &qword_1080F0);
  }

  else
  {
    v20 = sub_106520();
    (*(v19 + 8))(v10, v18);
    if (v20)
    {
      sub_106C20();

      v21 = 0;
      goto LABEL_6;
    }
  }

  v21 = 1;
LABEL_6:
  v22 = sub_106160();
  v23 = *(*(v22 - 8) + 56);
  v23(v17, v21, 1, v22);
  v24 = type metadata accessor for SnoozeIntentHandledParameters(0);
  sub_1A814(v17, v38 + v24[6]);
  sub_517C8(v37 + v36, v8);
  if (v35(v8, 1, v18) == 1)
  {
    sub_16F70(v8, &qword_1374F0, &qword_1080F0);
    v25 = v34;
  }

  else
  {
    v26 = sub_106520();
    (*(v19 + 8))(v8, v18);
    v25 = v34;
    if (v26)
    {
      v27 = v32;
      sub_106C30();

      goto LABEL_11;
    }
  }

  v27 = v32;
  v23(v32, 1, 1, v22);
LABEL_11:
  sub_1A814(v27, v38 + v24[7]);
  sub_517C8(v37 + v36, v25);
  if (v35(v25, 1, v18) == 1)
  {
    sub_16F70(v25, &qword_1374F0, &qword_1080F0);
LABEL_15:
    v29 = v33;
    v23(v33, 1, 1, v22);
    return sub_1A814(v29, v38 + v24[5]);
  }

  v28 = sub_106520();
  (*(v19 + 8))(v25, v18);
  if (!v28)
  {
    goto LABEL_15;
  }

  v29 = v33;
  sub_106C10();

  return sub_1A814(v29, v38 + v24[5]);
}

uint64_t sub_E8B08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CE64;

  return sub_E509C(a1);
}

uint64_t sub_E8BA0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_E8C48;

  return sub_E5808(a1, a2);
}

uint64_t sub_E8C48()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_E8D7C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_E8D7C()
{
  v0[3] = v0[5];
  sub_25E4(&qword_1376C0, &unk_1080D0);
  sub_1064E0();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_E8E48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA94;

  return sub_D7EB0(a1);
}

uint64_t sub_E8F04(uint64_t a1, void *a2)
{
  v3 = sub_E4F88(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

unint64_t sub_E8F64()
{
  result = qword_13AE20;
  if (!qword_13AE20)
  {
    _s20HandleIntentStrategyVMa_5(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AE20);
  }

  return result;
}

id *INDateComponentsRange.alarmRepeatSchedule.getter()
{
  v1 = [v0 recurrenceRule];
  if (v1)
  {
    v2 = v1;
    if ([v1 frequency]== &dword_0 + 3)
    {
      if (qword_136EA8 != -1)
      {
        swift_once();
      }

      v3 = sub_106D20();
      sub_135C4(v3, qword_13AE48);
      v4 = sub_106D10();
      v5 = sub_106FC0();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_0, v4, v5, "User requested to set alarm for every day.", v6, 2u);
      }

      v7 = 127;
    }

    else
    {
      v7 = [v2 weeklyRecurrenceDays];
    }

    v11 = sub_82D7C(v7);
  }

  else
  {
    if (qword_136EA8 != -1)
    {
      swift_once();
    }

    v8 = sub_106D20();
    sub_135C4(v8, qword_13AE48);
    v2 = sub_106D10();
    v9 = sub_106FC0();
    if (os_log_type_enabled(v2, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v2, v9, "No weeklyRecurrenceDays found.", v10, 2u);
    }

    v11 = _swiftEmptyArrayStorage;
  }

  return v11;
}

uint64_t sub_E91B4()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13AE48);
  sub_135C4(v0, qword_13AE48);
  return sub_106A80();
}

__n128 sub_E9200(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_E9214(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_E925C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_E92C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v40 = a2;
  v41 = a3;
  v38 = sub_106960();
  v3 = *(v38 - 8);
  __chkstk_darwin(v38);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1065A0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = sub_1065E0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, enum case for DirectInvocationUtils.Alarm.URI.undo(_:), v12);
  v37 = sub_1065D0();
  v36 = v16;
  (*(v13 + 8))(v15, v12);
  sub_25E4(&qword_137D68, &qword_108450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1094F0;
  v34 = *(v7 + 104);
  v33 = v6;
  v34(v11, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v6);
  v18 = sub_106590();
  v20 = v19;
  v21 = *(v7 + 8);
  v21(v11, v6);
  *(inited + 32) = v18;
  *(inited + 40) = v20;
  v22 = v38;
  (*(v3 + 104))(v5, enum case for AlarmNLv4Constants.AlarmVerb.delete(_:), v38);
  v23 = sub_106950();
  v25 = v24;
  (*(v3 + 8))(v5, v22);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v23;
  *(inited + 56) = v25;
  v26 = v35;
  v27 = v33;
  v34(v35, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:), v33);
  v28 = sub_106590();
  v30 = v29;
  v21(v26, v27);
  *(inited + 80) = v28;
  *(inited + 88) = v30;
  *(inited + 120) = &type metadata for String;
  v31 = v40;
  *(inited + 96) = v39;
  *(inited + 104) = v31;

  sub_EA35C(inited);
  swift_setDeallocating();
  sub_25E4(&qword_137D70, &qword_108458);
  swift_arrayDestroy();
  return sub_105390();
}

uint64_t sub_E96B8@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v41 = a1;
  v42 = a3;
  v40 = sub_106960();
  v3 = *(v40 - 8);
  __chkstk_darwin(v40);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1065A0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v34 - v10;
  v12 = sub_1065E0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, enum case for DirectInvocationUtils.Alarm.URI.undo(_:), v12);
  v38 = sub_1065D0();
  v37 = v16;
  (*(v13 + 8))(v15, v12);
  sub_25E4(&qword_137D68, &qword_108450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1094F0;
  v35 = *(v7 + 104);
  v34 = v6;
  v35(v11, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v6);
  v18 = sub_106590();
  v20 = v19;
  v21 = *(v7 + 8);
  v21(v11, v6);
  *(inited + 32) = v18;
  *(inited + 40) = v20;
  v22 = v5;
  v23 = v5;
  v24 = v40;
  (*(v3 + 104))(v23, *v39, v40);
  v25 = sub_106950();
  v27 = v26;
  (*(v3 + 8))(v22, v24);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v25;
  *(inited + 56) = v27;
  v28 = v36;
  v29 = v34;
  v35(v36, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:), v34);
  v30 = sub_106590();
  v32 = v31;
  v21(v28, v29);
  *(inited + 80) = v30;
  *(inited + 88) = v32;
  *(inited + 120) = sub_25E4(&qword_137558, &qword_109540);
  *(inited + 96) = v41;

  sub_EA35C(inited);
  swift_setDeallocating();
  sub_25E4(&qword_137D70, &qword_108458);
  swift_arrayDestroy();
  return sub_105390();
}

uint64_t sub_E9AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v39 = sub_106960();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1065A0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v38 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v35 - v10;
  v12 = sub_1065E0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_104500();
  swift_allocObject();
  sub_1044F0();
  v41 = a1;
  sub_25E4(&qword_137530, &qword_1087D0);
  sub_EBE84();
  v37 = sub_1044E0();
  v36 = v16;

  (*(v13 + 104))(v15, enum case for DirectInvocationUtils.Alarm.URI.undo(_:), v12);
  v35[3] = sub_1065D0();
  v35[2] = v17;
  (*(v13 + 8))(v15, v12);
  sub_25E4(&qword_137D68, &qword_108450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1094F0;
  v35[0] = *(v7 + 104);
  (v35[0])(v11, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v6);
  v19 = sub_106590();
  v21 = v20;
  v22 = *(v7 + 8);
  v22(v11, v6);
  *(inited + 32) = v19;
  v35[1] = inited + 32;
  *(inited + 40) = v21;
  v23 = v5;
  v24 = v39;
  (*(v3 + 104))(v5, enum case for AlarmNLv4Constants.AlarmVerb.create(_:), v39);
  v25 = sub_106950();
  v27 = v26;
  (*(v3 + 8))(v23, v24);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v25;
  *(inited + 56) = v27;
  v28 = v38;
  (v35[0])(v38, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmSnapshotsJson(_:), v6);
  v29 = sub_106590();
  v31 = v30;
  v22(v28, v6);
  *(inited + 80) = v29;
  *(inited + 88) = v31;
  *(inited + 120) = sub_25E4(&qword_13AED8, &qword_10BAA8);
  v32 = v37;
  v33 = v36;
  *(inited + 96) = v37;
  *(inited + 104) = v33;
  sub_EBF5C(v32, v33);
  sub_EA35C(inited);
  swift_setDeallocating();
  sub_25E4(&qword_137D70, &qword_108458);
  swift_arrayDestroy();
  sub_105390();
  return sub_EBF70(v32, v33);
}

uint64_t sub_E9F6C(void *a1)
{
  v3 = v1;
  v5 = sub_25E4(&qword_13AE78, &qword_10B960);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1A8E0(a1, a1[3]);
  sub_EBB6C();
  sub_107450();
  v14 = 0;
  sub_107320();
  if (!v2)
  {
    v13 = 1;
    sub_107320();
    v12 = 2;
    sub_107300();
    v11 = *(v3 + 32);
    v10[15] = 3;
    sub_25E4(&qword_137D90, &qword_108468);
    sub_EBBC0(&qword_13AE80, &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
    sub_107330();
    v10[14] = 4;
    sub_107310();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_EA1C4()
{
  v1 = *v0;
  v2 = 1920298856;
  v3 = 0x6C6562616CLL;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x64656C62616E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574756E696DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_EA254@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_EB6CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_EA288(uint64_t a1)
{
  v2 = sub_EBB6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_EA2C4(uint64_t a1)
{
  v2 = sub_EBB6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_EA300@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_EB87C(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_EA35C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_25E4(&qword_13AEC0, &qword_10BAA0);
    v3 = sub_107290();
    v4 = a1 + 32;

    while (1)
    {
      sub_14994(v4, &v13, &qword_137D70, &qword_108458);
      v5 = v13;
      v6 = v14;
      result = sub_32658(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1F7A8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_EA48C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_25E4(&qword_137D80, &qword_108460);
    v3 = sub_107290();
    v4 = a1 + 32;

    while (1)
    {
      sub_14994(v4, v13, &qword_13AE90, &qword_10B970);
      result = sub_326D0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1F7A8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_EA5C8(uint64_t a1)
{
  v2 = sub_25E4(&qword_13AE98, &qword_10B978);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_25E4(&qword_13AEA0, &qword_10B980);
    v7 = sub_107290();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_14994(v9, v5, &qword_13AE98, &qword_10B978);
      result = sub_32714(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_105F50();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_EA7C8(void *a1, int a2, void (*a3)(char *, uint64_t))
{
  v58 = a3;
  v62 = a2;
  v60 = a1;
  v57 = sub_106960();
  v54 = *(v57 - 1);
  __chkstk_darwin(v57);
  v56 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1065A0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v61 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v55 = &v51 - v9;
  __chkstk_darwin(v8);
  v11 = &v51 - v10;
  v12 = sub_1065E0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, enum case for DirectInvocationUtils.Alarm.URI.handleVerbAction(_:), v12);
  sub_1065D0();
  (*(v13 + 8))(v15, v12);
  v16 = objc_allocWithZone(SKIDirectInvocationPayload);
  v17 = sub_106E10();

  v59 = [v16 initWithIdentifier:v17];

  sub_25E4(&qword_13AE88, &qword_10B968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_109690;
  v19 = *(v5 + 104);
  v52 = v4;
  (v19)(v11, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v4);
  v20 = sub_106590();
  v22 = v21;
  v24 = v5 + 8;
  v23 = *(v5 + 8);
  v53 = v24;
  v23(v11, v4);
  v63 = v20;
  v64 = v22;
  sub_107140();
  v25 = v57;
  v26 = v54;
  v27 = v56;
  (*(v54 + 104))(v56, *v58, v57);
  v28 = sub_106950();
  v30 = v29;
  v31 = v27;
  v32 = v23;
  v33 = v19;
  v34 = v52;
  (*(v26 + 8))(v31, v25);
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v28;
  *(inited + 80) = v30;
  v35 = v55;
  v57 = v33;
  (v33)(v55, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:), v34);
  v36 = sub_106590();
  v38 = v37;
  v58 = v32;
  v32(v35, v34);
  v63 = v36;
  v64 = v38;
  sub_107140();
  v39 = [v60 identifier];
  if (v39)
  {
    v40 = v39;
    v41 = sub_106E20();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  *(inited + 168) = sub_25E4(&qword_138CB0, &qword_1097C8);
  *(inited + 144) = v41;
  *(inited + 152) = v43;
  v44 = v61;
  (v57)(v61, enum case for DirectInvocationUtils.Alarm.UserInfoKey.handleSilently(_:), v34);
  v45 = sub_106590();
  v47 = v46;
  v58(v44, v34);
  v63 = v45;
  v64 = v47;
  sub_107140();
  *(inited + 240) = &type metadata for Bool;
  *(inited + 216) = v62 & 1;
  sub_EA48C(inited);
  swift_setDeallocating();
  sub_25E4(&qword_13AE90, &qword_10B970);
  swift_arrayDestroy();
  isa = sub_106DC0().super.isa;

  v49 = v59;
  [v59 setUserData:isa];

  return v49;
}

id sub_EAD50(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v37 = a1;
  v2 = sub_1065A0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v9 = sub_1065E0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for DirectInvocationUtils.Alarm.URI.buttonPress(_:), v9);
  sub_1065D0();
  (*(v10 + 8))(v12, v9);
  v13 = objc_allocWithZone(SKIDirectInvocationPayload);
  v14 = sub_106E10();

  v36 = [v13 initWithIdentifier:v14];

  sub_25E4(&qword_13AE88, &qword_10B968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1094F0;
  v16 = *(v3 + 104);
  v16(v8, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v2);
  v17 = sub_106590();
  v19 = v18;
  v20 = *(v3 + 8);
  v20(v8, v2);
  v39 = v17;
  v40 = v19;
  sub_107140();
  v21 = sub_106950();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v21;
  *(inited + 80) = v22;
  v16(v6, enum case for DirectInvocationUtils.Alarm.UserInfoKey.buttonPressed(_:), v2);
  v23 = sub_106590();
  v25 = v24;
  v20(v6, v2);
  v39 = v23;
  v40 = v25;
  sub_107140();
  v26 = sub_106430();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v26;
  *(inited + 152) = v27;
  sub_EA48C(inited);
  swift_setDeallocating();
  sub_25E4(&qword_13AE90, &qword_10B970);
  swift_arrayDestroy();
  isa = sub_106DC0().super.isa;

  v29 = v36;
  [v36 setUserData:isa];

  v30 = objc_opt_self();
  sub_106560();
  sub_106550();
  sub_106540();

  sub_1A8E0(&v39, v41);
  v31 = sub_104CE0();
  v32 = [v30 runSiriKitExecutorCommandWithContext:v31 payload:v29];

  sub_2738(&v39);
  v33 = [v30 wrapCommandInStartLocalRequest:v32];

  return v33;
}

id sub_EB1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v34 = a2;
  v33 = a1;
  v3 = sub_1065A0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = sub_1065E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for DirectInvocationUtils.Alarm.URI.disambiguation(_:), v10);
  sub_1065D0();
  (*(v11 + 8))(v13, v10);
  v14 = objc_allocWithZone(SKIDirectInvocationPayload);
  v15 = sub_106E10();

  v32 = [v14 initWithIdentifier:v15];

  sub_25E4(&qword_13AE88, &qword_10B968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1094F0;
  v17 = *(v4 + 104);
  v17(v9, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v3);
  v18 = sub_106590();
  v20 = v19;
  v21 = *(v4 + 8);
  v21(v9, v3);
  v36 = v18;
  v37 = v20;
  sub_107140();
  v22 = sub_106950();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v22;
  *(inited + 80) = v23;
  v17(v7, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:), v3);
  v24 = sub_106590();
  v26 = v25;
  v21(v7, v3);
  v36 = v24;
  v37 = v26;
  sub_107140();
  *(inited + 168) = &type metadata for String;
  v27 = v35;
  *(inited + 144) = v34;
  *(inited + 152) = v27;

  sub_EA48C(inited);
  swift_setDeallocating();
  sub_25E4(&qword_13AE90, &qword_10B970);
  swift_arrayDestroy();
  isa = sub_106DC0().super.isa;

  v29 = v32;
  [v32 setUserData:isa];

  return v29;
}

id sub_EB5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_EB1D4(a1, a2, a3);
  v4 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  [v4 setInputOrigin:SAInputOriginDialogButtonTapValue];
  [v4 setInteractionType:SAIntentGroupAceInteractionTypeDisplayDrivenValue];
  v5 = objc_opt_self();
  sub_106560();
  sub_106550();
  sub_106540();

  sub_1A8E0(v9, v9[3]);
  v6 = sub_104CE0();
  v7 = [v5 runSiriKitExecutorCommandWithContext:v6 payload:v3];

  sub_2738(v9);
  return v7;
}

uint64_t sub_EB6CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1920298856 && a2 == 0xE400000000000000;
  if (v3 || (sub_107370() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000 || (sub_107370() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_107370() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000000010E7E0 == a2 || (sub_107370() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_107370();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_EB87C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25E4(&qword_13AE60, &qword_10B958);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_1A8E0(a1, a1[3]);
  sub_EBB6C();
  sub_107440();
  if (v2)
  {
    return sub_2738(a1);
  }

  v25 = 0;
  v9 = sub_1072D0();
  v24 = 1;
  v19 = sub_1072D0();
  v23 = 2;
  v17 = sub_1072B0();
  v18 = v10;
  sub_25E4(&qword_137D90, &qword_108468);
  v22 = 3;
  sub_EBBC0(&qword_13AE70, &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
  sub_1072E0();
  v16 = v20;
  v21 = 4;
  v11 = sub_1072C0();
  (*(v6 + 8))(v8, v5);
  result = sub_2738(a1);
  v13 = v19;
  *a2 = v9;
  *(a2 + 8) = v13;
  v14 = v18;
  *(a2 + 16) = v17;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  *(a2 + 40) = v11 & 1;
  return result;
}

unint64_t sub_EBB6C()
{
  result = qword_13AE68;
  if (!qword_13AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AE68);
  }

  return result;
}

uint64_t sub_EBBC0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_14EB0(&qword_137D90, &qword_108468);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmSnapshot.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlarmSnapshot.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_EBD80()
{
  result = qword_13AEA8;
  if (!qword_13AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AEA8);
  }

  return result;
}

unint64_t sub_EBDD8()
{
  result = qword_13AEB0;
  if (!qword_13AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AEB0);
  }

  return result;
}

unint64_t sub_EBE30()
{
  result = qword_13AEB8;
  if (!qword_13AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AEB8);
  }

  return result;
}

unint64_t sub_EBE84()
{
  result = qword_13AEC8;
  if (!qword_13AEC8)
  {
    sub_14EB0(&qword_137530, &qword_1087D0);
    sub_EBF08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AEC8);
  }

  return result;
}

unint64_t sub_EBF08()
{
  result = qword_13AED0;
  if (!qword_13AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AED0);
  }

  return result;
}

uint64_t sub_EBF5C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_20680(result, a2);
  }

  return result;
}

uint64_t sub_EBF70(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_14DD8(result, a2);
  }

  return result;
}

uint64_t sub_EBF84(void *a1, char a2)
{
  sub_106800();
  sub_1067E0();
  sub_104B00();
  if (qword_136E48 != -1)
  {
    swift_once();
  }

  sub_104A60();
  sub_25E4(&qword_13AEE0, qword_10BAB0);
  sub_104AC0();
  sub_262C(a1, v6);
  _s18NeedsValueStrategyCMa();
  v4 = swift_allocObject();
  sub_1AD44(v6, v4 + 16);
  *&v6[0] = v4;
  sub_EC140();
  sub_104A30();
  sub_104AA0();
  sub_262C(a1, v7);
  sub_EC198();
  sub_104A90();
  sub_104AE0();
  sub_262C(a1, v6 + 8);
  LOBYTE(v6[0]) = a2 & 1;
  sub_EC1EC();
  sub_104A50();
  sub_104AB0();

  sub_2738(a1);
  sub_EC240(v6);
  return sub_EC294(v7);
}

unint64_t sub_EC140()
{
  result = qword_13AEE8;
  if (!qword_13AEE8)
  {
    _s18NeedsValueStrategyCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AEE8);
  }

  return result;
}

unint64_t sub_EC198()
{
  result = qword_13AEF0;
  if (!qword_13AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AEF0);
  }

  return result;
}

unint64_t sub_EC1EC()
{
  result = qword_13AEF8;
  if (!qword_13AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13AEF8);
  }

  return result;
}

uint64_t sub_EC384(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
{
  v7 = sub_106200();
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_1061E0();
  result = a3(v9, 0);
  *a4 = result;
  return result;
}

uint64_t type metadata accessor for SnoozeAlarmCATs_Async(uint64_t a1)
{
  result = qword_13AF00;
  if (!qword_13AF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_EC4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_2A84(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v12;
}

uint64_t sub_EC644@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1047D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25E4(&qword_137518, &qword_107E28);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1045E0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 dateTime];
  if (v15)
  {
    v16 = v15;
    sub_104570();

    sub_104790();
    sub_104770();
    (*(v5 + 8))(v7, v4);
    v17 = sub_104670();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v10, 1, v17) == 1)
    {
      sub_ECC28(v10);
      if (qword_136EC8 != -1)
      {
        swift_once();
      }

      v19 = sub_106D20();
      sub_135C4(v19, qword_13AF50);
      v20 = sub_106D10();
      v21 = sub_106FB0();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_0, v20, v21, "getAlarmDate: Could not get date from alarmDateComponents.", v22, 2u);
      }

      (*(v12 + 8))(v14, v11);
      return (*(v18 + 56))(a2, 1, 1, v17);
    }

    else
    {
      (*(v12 + 8))(v14, v11);
      (*(v18 + 32))(a2, v10, v17);
      return (*(v18 + 56))(a2, 0, 1, v17);
    }
  }

  else
  {
    if (qword_136EC8 != -1)
    {
      swift_once();
    }

    v24 = sub_106D20();
    sub_135C4(v24, qword_13AF50);
    v25 = sub_106D10();
    v26 = sub_106FB0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "getAlarmDate: DateComponents not available from alarm in intent response.", v27, 2u);
    }

    v28 = sub_104670();
    v29 = *(*(v28 - 8) + 56);

    return v29(a2, 1, 1, v28);
  }
}

uint64_t sub_ECB40(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a2(0);
  sub_14930(v6, a3);
  sub_135C4(v6, a3);
  return a4();
}

uint64_t sub_ECB9C()
{
  v0 = sub_106200();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for AlarmBaseCATs_Async(0);
  sub_1061E0();
  result = sub_1060D0();
  qword_13AF80 = result;
  return result;
}

uint64_t sub_ECC28(uint64_t a1)
{
  v2 = sub_25E4(&qword_137518, &qword_107E28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_ECC90()
{
  v0 = sub_1046E0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_104700();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_136ED0 != -1)
  {
    swift_once();
  }

  v8 = sub_135C4(v4, qword_13AF68);
  (*(v5 + 16))(v7, v8, v4);
  sub_1046F0();
  (*(v5 + 8))(v7, v4);
  v9 = (*(v1 + 88))(v3, v0);
  if (v9 == enum case for Locale.HourCycle.zeroToEleven(_:) || v9 == enum case for Locale.HourCycle.oneToTwelve(_:))
  {
    if (qword_136EC8 != -1)
    {
      swift_once();
    }

    v11 = sub_106D20();
    sub_135C4(v11, qword_13AF50);
    v12 = sub_106D10();
    v13 = sub_106FC0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "uses24HourTime: Using 12h clock for time output", v14, 2u);
    }

    return 0;
  }

  if (v9 != enum case for Locale.HourCycle.zeroToTwentyThree(_:) && v9 != enum case for Locale.HourCycle.oneToTwentyFour(_:))
  {
    if (qword_136EC8 != -1)
    {
      swift_once();
    }

    v21 = sub_106D20();
    sub_135C4(v21, qword_13AF50);
    v22 = sub_106D10();
    v23 = sub_106FB0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "uses24HourTime: Unknown hourCycle enumeration found. This is a programming error. Defaulting to 12h time.", v24, 2u);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  if (qword_136EC8 != -1)
  {
    swift_once();
  }

  v16 = sub_106D20();
  sub_135C4(v16, qword_13AF50);
  v17 = sub_106D10();
  v18 = sub_106FC0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "uses24HourTime: Using 24h clock for time output", v19, 2u);
  }

  return 1;
}

uint64_t sub_ED0D0(void *a1)
{
  v2 = sub_104700();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1045E0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_ECC90();
  result = 0;
  if ((v10 & 1) == 0)
  {
    v12 = [a1 dateTime];
    if (!v12)
    {
LABEL_5:
      if (qword_136EC8 != -1)
      {
        swift_once();
      }

      v16 = sub_106D20();
      sub_135C4(v16, qword_13AF50);
      v17 = sub_106D10();
      v18 = sub_106FB0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_0, v17, v18, "getMeridiemForSnippet: Could not get hour from alarmDateComponents.", v19, 2u);
      }

      return 0;
    }

    v13 = v12;
    sub_104570();

    v14 = sub_104580();
    if (v15)
    {
      (*(v7 + 8))(v9, v6);
      goto LABEL_5;
    }

    v20 = v14;
    v21 = [objc_allocWithZone(NSDateFormatter) init];
    if (qword_136ED0 != -1)
    {
      swift_once();
    }

    v22 = sub_135C4(v2, qword_13AF68);
    (*(v3 + 16))(v5, v22, v2);
    isa = sub_1046C0().super.isa;
    (*(v3 + 8))(v5, v2);
    [v21 setLocale:isa];

    if (v20 >= 12)
    {
      v24 = [v21 PMSymbol];
      if (v24)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v24 = [v21 AMSymbol];
      if (v24)
      {
LABEL_16:
        v25 = v24;
        v26 = sub_106E20();

        (*(v7 + 8))(v9, v6);
        return v26;
      }
    }

    (*(v7 + 8))(v9, v6);

    return 0;
  }

  return result;
}

uint64_t sub_ED47C(void *a1)
{
  v2 = sub_104550();
  v111 = *(v2 - 8);
  v112 = v2;
  v3 = __chkstk_darwin(v2);
  v109 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v108 = &v101 - v6;
  __chkstk_darwin(v5);
  v110 = &v101 - v7;
  v105 = sub_25E4(&qword_13AF88, &qword_10BB28);
  __chkstk_darwin(v105);
  v114 = &v101 - v8;
  v9 = sub_104700();
  v115 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v107 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v101 - v12;
  v14 = sub_1047D0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25E4(&qword_137518, &qword_107E28);
  __chkstk_darwin(v18 - 8);
  v20 = &v101 - v19;
  v21 = sub_104670();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v118 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1045E0();
  v116 = *(v24 - 8);
  v117 = v24;
  __chkstk_darwin(v24);
  v26 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a1;
  v27 = [a1 dateTime];
  if (!v27)
  {
    if (qword_136EC8 != -1)
    {
      swift_once();
    }

    v35 = sub_106D20();
    sub_135C4(v35, qword_13AF50);
    v36 = sub_106D10();
    v37 = sub_106FB0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "getFormattedTimeComponentsForSnippet: DateComponents not available from alarm in intent response.", v38, 2u);
    }

    return 0;
  }

  v28 = v27;
  sub_104570();

  sub_104790();
  v113 = v26;
  sub_104770();
  (*(v15 + 8))(v17, v14);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_ECC28(v20);
    if (qword_136EC8 != -1)
    {
      swift_once();
    }

    v29 = sub_106D20();
    sub_135C4(v29, qword_13AF50);
    v30 = sub_106D10();
    v31 = sub_106FB0();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v113;
    if (v32)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v30, v31, "getFormattedTimeComponentsForSnippet: Could not get date from alarmDateComponents.", v34, 2u);
    }

    (*(v116 + 8))(v33, v117);
    return 0;
  }

  v40 = v21;
  v103 = v22;
  (*(v22 + 32))(v118, v20, v21);
  v41 = [objc_allocWithZone(NSDateFormatter) init];
  if (qword_136ED0 != -1)
  {
    swift_once();
  }

  v42 = sub_135C4(v9, qword_13AF68);
  v43 = v115;
  (*(v115 + 16))(v13, v42, v9);
  isa = sub_1046C0().super.isa;
  v102 = *(v43 + 8);
  v102(v13, v9);
  [v41 setLocale:isa];

  v45 = v114;
  if (qword_136EC8 != -1)
  {
    swift_once();
  }

  v46 = sub_106D20();
  v47 = sub_135C4(v46, qword_13AF50);
  v48 = v41;
  v104 = v47;
  v49 = sub_106D10();
  v50 = sub_106FC0();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v48;
    v54 = v52;
    v119 = v52;
    *v51 = 136315138;
    v55 = v53;
    v56 = [v53 locale];
    if (v56)
    {
      v57 = v56;
      sub_1046D0();

      v58 = 0;
    }

    else
    {
      v58 = 1;
    }

    (*(v115 + 56))(v45, v58, 1, v9);
    v59 = sub_106E30();
    v61 = sub_722E8(v59, v60, &v119);

    *(v51 + 4) = v61;
    _os_log_impl(&dword_0, v49, v50, "getFormattedTimeComponentsForSnippet: Using locale for snippet: %s", v51, 0xCu);
    sub_2738(v54);

    v48 = v55;
  }

  else
  {
  }

  LODWORD(v115) = sub_ECC90();
  v62 = sub_106E10();

  v63 = [v48 locale];
  if (v63)
  {
    v64 = v107;
    v65 = v63;
    sub_1046D0();

    v66.super.isa = sub_1046C0().super.isa;
    v102(v64, v9);
  }

  else
  {
    v66.super.isa = 0;
  }

  v67 = [objc_opt_self() dateFormatFromTemplate:v62 options:0 locale:v66.super.isa];

  if (v67)
  {
    v68 = sub_106E20();
    v70 = v69;

    v119 = v68;
    v120 = v70;
    v71 = v108;
    sub_104510();
    v72 = v109;
    sub_104520();
    v73 = v110;
    sub_104540();
    v74 = v112;
    v75 = *(v111 + 8);
    v75(v72, v112);
    v75(v71, v74);
    sub_7C40C();
    v67 = sub_1070F0();
    v77 = v76;
    v75(v73, v74);
  }

  else
  {
    v77 = 0;
  }

  v78 = v113;

  v79 = sub_106D10();
  v80 = sub_106FC0();

  v81 = os_log_type_enabled(v79, v80);
  v114 = v67;
  if (v81)
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v120 = v77;
    v121 = v83;
    *v82 = 136315138;
    v119 = v67;

    sub_25E4(&qword_138CB0, &qword_1097C8);
    v84 = sub_106E30();
    v86 = v78;
    v87 = v48;
    v88 = v40;
    v89 = sub_722E8(v84, v85, &v121);

    *(v82 + 4) = v89;
    v40 = v88;
    v48 = v87;
    v78 = v86;
    _os_log_impl(&dword_0, v79, v80, "getFormattedTimeComponentsForSnippet: Alarm time format: %s", v82, 0xCu);
    sub_2738(v83);
  }

  if (v77)
  {
    v90 = sub_106E10();
  }

  else
  {
    v90 = 0;
  }

  [v48 setDateFormat:v90];

  v91 = sub_104650().super.isa;
  v92 = [v48 stringFromDate:v91];

  v93 = sub_106E20();
  v95 = v94;

  v96 = sub_106D10();
  v97 = sub_106FC0();
  v98 = v95;

  if (os_log_type_enabled(v96, v97))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v119 = v100;
    *v99 = 136315138;
    *(v99 + 4) = sub_722E8(v93, v98, &v119);
    _os_log_impl(&dword_0, v96, v97, "getFormattedTimeComponentsForSnippet: Alarm time to print: %s", v99, 0xCu);
    sub_2738(v100);
  }

  if ((v115 & 1) == 0)
  {
    sub_ED0D0(v106);
  }

  (*(v103 + 8))(v118, v40);
  (*(v116 + 8))(v78, v117);
  return v93;
}

uint64_t sub_EE12C(void *a1)
{
  v2 = sub_104700();
  v46 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1047D0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&qword_137518, &qword_107E28);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_104670();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v47 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1045E0();
  v48 = *(v15 - 8);
  v49 = v15;
  __chkstk_darwin(v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 dateTime];
  if (!v18)
  {
    if (qword_136EC8 != -1)
    {
      swift_once();
    }

    v24 = sub_106D20();
    sub_135C4(v24, qword_13AF50);
    v25 = sub_106D10();
    v26 = sub_106FB0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "DateComponents not available from alarm in intent response.", v27, 2u);
    }

    return 0;
  }

  v19 = v18;
  sub_104570();

  sub_104790();
  v45 = v17;
  sub_104770();
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_ECC28(v11);
    if (qword_136EC8 != -1)
    {
      swift_once();
    }

    v20 = sub_106D20();
    sub_135C4(v20, qword_13AF50);
    v21 = sub_106D10();
    v22 = sub_106FB0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Could not get date from alarmDateComponents.", v23, 2u);
    }

    (*(v48 + 8))(v45, v49);
    return 0;
  }

  v29 = v47;
  (*(v13 + 32))(v47, v11, v12);
  v30 = [objc_allocWithZone(NSDateFormatter) init];
  if (qword_136ED0 != -1)
  {
    swift_once();
  }

  v31 = sub_135C4(v2, qword_13AF68);
  v32 = v46;
  (*(v46 + 16))(v4, v31, v2);
  isa = sub_1046C0().super.isa;
  (*(v32 + 8))(v4, v2);
  [v30 setLocale:isa];

  [v30 setDateFormat:0];
  [v30 setTimeStyle:1];
  v34 = sub_104650().super.isa;
  v35 = [v30 stringFromDate:v34];

  v46 = sub_106E20();
  v37 = v36;

  if (qword_136EC8 != -1)
  {
    swift_once();
  }

  v38 = sub_106D20();
  sub_135C4(v38, qword_13AF50);

  v39 = sub_106D10();
  v40 = sub_106FC0();

  v41 = os_log_type_enabled(v39, v40);
  v42 = v45;
  if (v41)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_722E8(v46, v37, &v50);
    _os_log_impl(&dword_0, v39, v40, "getFullFormattedTimeForSnippet: Full alarm time to print: %s", v43, 0xCu);
    sub_2738(v44);
  }

  (*(v13 + 8))(v29, v12);
  (*(v48 + 8))(v42, v49);
  return v46;
}

uint64_t sub_EE858()
{
  v1 = sub_104EC0();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_105030();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = sub_105060();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_EE9CC, 0, 0);
}

uint64_t sub_EE9CC()
{
  if (qword_136ED8 != -1)
  {
    swift_once();
  }

  v4 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_EEAD0;
  v2 = *(v0 + 56);

  return v4(v2, 0xD00000000000001DLL, 0x800000000010E870, _swiftEmptyArrayStorage);
}

uint64_t sub_EEAD0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_EED58;
  }

  else
  {
    v2 = sub_EEBE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_EEBE4(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[5];
  v5 = sub_105020();
  (*(v3 + 8))(v2, v4);
  if (*(v5 + 16))
  {
    v7 = v1[9];
    v6 = v1[10];
    v8 = v1[8];
    v10 = v1[3];
    v9 = v1[4];
    v11 = v1[2];
    (*(v7 + 16))(v6, v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v8);

    sub_105050();
    (*(v7 + 8))(v6, v8);
    v12 = sub_104EB0();
    v14 = v13;
    (*(v10 + 8))(v9, v11);
  }

  else
  {

    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = v1[1];

  return v15(v12, v14);
}

uint64_t sub_EED58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_EEDD4()
{
  v1 = sub_104EC0();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_105030();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = sub_105060();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_EEF48, 0, 0);
}

uint64_t sub_EEF48()
{
  if (qword_136ED8 != -1)
  {
    swift_once();
  }

  v4 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_EF04C;
  v2 = *(v0 + 56);

  return v4(v2, 0xD00000000000001ALL, 0x800000000010E850, _swiftEmptyArrayStorage);
}

uint64_t sub_EF04C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_EF3DC;
  }

  else
  {
    v2 = sub_EF3D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_EF160()
{
  v1 = sub_104EC0();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_105030();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = sub_105060();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_EF2D4, 0, 0);
}

uint64_t sub_EF2D4()
{
  if (qword_136ED8 != -1)
  {
    swift_once();
  }

  v4 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_EF04C;
  v2 = *(v0 + 56);

  return v4(v2, 0xD00000000000001CLL, 0x800000000010E830, _swiftEmptyArrayStorage);
}

uint64_t sub_EF3E0()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13AF90);
  sub_135C4(v0, qword_13AF90);
  return sub_106A80();
}

uint64_t static AlarmFlowFactory.makeFlowFrom(parse:)@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v331 = a2;
  v3 = sub_25E4(&unk_1374A0, &qword_10BB30);
  __chkstk_darwin(v3 - 8);
  v281 = &v276 - v4;
  v293 = sub_1065A0();
  v292 = *(v293 - 8);
  __chkstk_darwin(v293);
  v291 = &v276 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25E4(&qword_13AFB0, &qword_10BB38);
  __chkstk_darwin(v6 - 8);
  v308 = &v276 - v7;
  v8 = sub_1065E0();
  v310 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v280 = &v276 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v309 = &v276 - v12;
  __chkstk_darwin(v11);
  v315 = &v276 - v13;
  v14 = sub_1053C0();
  v314 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v307 = &v276 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v305 = &v276 - v18;
  v19 = __chkstk_darwin(v17);
  v294 = &v276 - v20;
  __chkstk_darwin(v19);
  v316 = &v276 - v21;
  v287 = sub_106040();
  v286 = *(v287 - 8);
  v22 = __chkstk_darwin(v287);
  v282 = &v276 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v288 = &v276 - v24;
  v290 = sub_1050A0();
  v289 = *(v290 - 8);
  __chkstk_darwin(v290);
  v306 = &v276 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = sub_106960();
  v285 = *(v284 - 8);
  v26 = __chkstk_darwin(v284);
  v276 = &v276 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v276 - v29;
  v31 = __chkstk_darwin(v28);
  v278 = &v276 - v32;
  v33 = __chkstk_darwin(v31);
  v279 = &v276 - v34;
  __chkstk_darwin(v33);
  v283 = &v276 - v35;
  v297 = sub_105460();
  v296 = *(v297 - 8);
  __chkstk_darwin(v297);
  v295 = &v276 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = sub_105410();
  v299 = *(v300 - 8);
  __chkstk_darwin(v300);
  v298 = &v276 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_25E4(&qword_13AFB8, &unk_10BB40);
  __chkstk_darwin(v38 - 8);
  v302 = &v276 - v39;
  v304 = sub_105120();
  v303 = *(v304 - 8);
  __chkstk_darwin(v304);
  v301 = &v276 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_25E4(&unk_13AFC0, &qword_10A928);
  __chkstk_darwin(v41 - 8);
  v313 = &v276 - v42;
  v43 = sub_25E4(&qword_13A028, &qword_10BB50);
  __chkstk_darwin(v43 - 8);
  v323 = &v276 - v44;
  v45 = sub_25E4(&unk_13AFD0, &qword_10A920);
  __chkstk_darwin(v45 - 8);
  v317 = &v276 - v46;
  v47 = sub_25E4(&qword_13A040, &qword_10A940);
  __chkstk_darwin(v47 - 8);
  v328 = &v276 - v48;
  v49 = sub_25E4(&qword_13AFE0, &qword_10A320);
  v50 = __chkstk_darwin(v49 - 8);
  v318 = &v276 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v322 = &v276 - v53;
  v54 = __chkstk_darwin(v52);
  v321 = &v276 - v55;
  __chkstk_darwin(v54);
  v324 = &v276 - v56;
  v57 = sub_105E80();
  v325 = *(v57 - 8);
  v326 = v57;
  v58 = __chkstk_darwin(v57);
  v320 = &v276 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v330 = (&v276 - v60);
  v61 = sub_1053E0();
  v62 = *(v61 - 8);
  v63 = __chkstk_darwin(v61);
  v327 = (&v276 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = __chkstk_darwin(v63);
  v67 = &v276 - v66;
  __chkstk_darwin(v65);
  v69 = &v276 - v68;
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v70 = sub_106D20();
  v71 = sub_135C4(v70, qword_13AF90);
  v72 = *(v62 + 16);
  v329 = a1;
  v332 = v72;
  v72(v69, a1, v61);
  v319 = v71;
  v73 = sub_106D10();
  v74 = sub_106FC0();
  v75 = os_log_type_enabled(v73, v74);
  v277 = v30;
  if (v75)
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v312 = v8;
    v78 = v77;
    v333 = v77;
    *v76 = 136315138;
    v332(v67, v69, v61);
    v79 = sub_106E30();
    v311 = v14;
    v81 = v80;
    v82 = v69;
    v83 = *(v62 + 8);
    v83(v82, v61);
    v84 = sub_722E8(v79, v81, &v333);
    v14 = v311;

    *(v76 + 4) = v84;
    _os_log_impl(&dword_0, v73, v74, "AlarmFlowFactory: called makeFlowFrom() with parse %s", v76, 0xCu);
    sub_2738(v78);
    v8 = v312;
  }

  else
  {

    v85 = v69;
    v83 = *(v62 + 8);
    v83(v85, v61);
  }

  v86 = v327;
  v332(v327, v329, v61);
  v87 = (*(v62 + 88))(v86, v61);
  v88 = v328;
  if (v87 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v89 = *(v62 + 96);
    v329 = v61;
    v89(v86, v61);
    v91 = v325;
    v90 = v326;
    v92 = v330;
    (*(v325 + 32))(v330, v86, v326);
    v93 = v320;
    (*(v91 + 16))(v320, v92, v90);
    type metadata accessor for AlarmNLIntent(0);
    swift_allocObject();
    v94 = sub_B3800(v93);
    v95 = v324;
    v332 = v94;
    sub_B245C(v324);
    v96 = v321;
    sub_14994(v95, v321, &qword_13AFE0, &qword_10A320);
    v97 = sub_105700();
    v98 = *(v97 - 8);
    v99 = *(v98 + 48);
    if (v99(v96, 1, v97) == 1)
    {
      sub_16F70(v96, &qword_13AFE0, &qword_10A320);
    }

    else
    {
      v104 = v317;
      v105 = v96;
      sub_1056F0();
      v106 = v104;
      (*(v98 + 8))(v105, v97);
      v107 = sub_1057F0();
      v108 = *(v107 - 8);
      if ((*(v108 + 48))(v106, 1, v107) != 1)
      {
        sub_1057E0();
        (*(v108 + 8))(v106, v107);
        v137 = sub_1057B0();
        v138 = (*(*(v137 - 8) + 48))(v88, 1, v137);
        v110 = v323;
        v95 = v324;
        v111 = v322;
        if (v138 != 1)
        {
          v131 = &qword_13A040;
          v132 = &qword_10A940;
          v133 = v88;
          goto LABEL_32;
        }

        goto LABEL_14;
      }

      sub_16F70(v106, &unk_13AFD0, &qword_10A920);
      v95 = v324;
    }

    v109 = sub_1057B0();
    (*(*(v109 - 8) + 56))(v88, 1, 1, v109);
    v111 = v322;
    v110 = v323;
LABEL_14:
    sub_16F70(v88, &qword_13A040, &qword_10A940);
    sub_14994(v95, v111, &qword_13AFE0, &qword_10A320);
    if (v99(v111, 1, v97) == 1)
    {
      sub_16F70(v111, &qword_13AFE0, &qword_10A320);
      v112 = sub_105640();
      (*(*(v112 - 8) + 56))(v110, 1, 1, v112);
    }

    else
    {
      sub_1056A0();
      (*(v98 + 8))(v111, v97);
      v129 = sub_105640();
      if ((*(*(v129 - 8) + 48))(v110, 1, v129) != 1)
      {
        v131 = &qword_13A028;
        v132 = &qword_10BB50;
        v133 = v110;
        goto LABEL_32;
      }
    }

    sub_16F70(v110, &qword_13A028, &qword_10BB50);
    v130 = v318;
    sub_14994(v95, v318, &qword_13AFE0, &qword_10A320);
    if (v99(v130, 1, v97) == 1)
    {
      v131 = &qword_13AFE0;
      v132 = &qword_10A320;
      v133 = v130;
LABEL_32:
      sub_16F70(v133, v131, v132);
LABEL_33:
      v144 = sub_B4AF8();
      v143 = v331;
      sub_F21A4(v144, v331);

      sub_16F70(v95, &qword_13AFE0, &qword_10A320);
      (*(v91 + 8))(v330, v90);
LABEL_34:
      v145 = sub_104BD0();
      v146 = *(*(v145 - 8) + 56);
      v147 = v143;
      return v146(v147, 0, 1, v145);
    }

    v134 = v313;
    sub_1056E0();
    (*(v98 + 8))(v130, v97);
    v135 = sub_1057D0();
    v136 = *(v135 - 8);
    if ((*(v136 + 48))(v134, 1, v135) == 1)
    {
      v131 = &unk_13AFC0;
      v132 = &qword_10A928;
      v133 = v134;
      goto LABEL_32;
    }

    v148 = COERCE_DOUBLE(sub_1057C0());
    v150 = v149;
    (*(v136 + 8))(v134, v135);
    if ((v150 & 1) != 0 || v148 <= 0.0)
    {
      goto LABEL_33;
    }

    v151 = sub_106D10();
    v152 = sub_106FC0();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      *v153 = 0;
      _os_log_impl(&dword_0, v151, v152, "Reforming qualified alarm nlv3 input to timers instead.", v153, 2u);
    }

    sub_105FD0();
    v154 = v301;
    sub_105110();
    v155 = v331;
    sub_104BC0();

    (*(v303 + 8))(v154, v304);
    sub_16F70(v95, &qword_13AFE0, &qword_10A320);
    (*(v91 + 8))(v330, v90);
LABEL_41:
    v145 = sub_104BD0();
    v146 = *(*(v145 - 8) + 56);
    v147 = v155;
    return v146(v147, 0, 1, v145);
  }

  if (v87 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v62 + 96))(v86, v61);
    sub_25E4(&qword_13B010, &unk_1087A0);
    v100 = sub_1053D0();
    v101 = v331;
    sub_F21A4(v100, v331);

    v102 = sub_104BD0();
    (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
    return (*(v325 + 8))(v86, v326);
  }

  if (v87 != enum case for Parse.directInvocation(_:))
  {
    if (v87 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v62 + 96))(v86, v61);
      v139 = *v86;
      v140 = sub_106D10();
      v141 = sub_106FC0();
      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        *v142 = 0;
        _os_log_impl(&dword_0, v140, v141, "Alarm domain: Hitting SiriX code path", v142, 2u);
      }

      v143 = v331;
      sub_F2748(v139, v331);
      swift_unknownObjectRelease();
      goto LABEL_34;
    }

    if (v87 != enum case for Parse.uso(_:))
    {
      if (v87 == enum case for Parse.ifClientAction(_:))
      {
        (*(v62 + 96))(v86, v61);
        v178 = v86;
        v179 = v289;
        v180 = v290;
        (*(v289 + 32))(v306, v178, v290);
        v181 = sub_106D10();
        v182 = sub_106FC0();
        if (os_log_type_enabled(v181, v182))
        {
          v183 = swift_slowAlloc();
          *v183 = 0;
          _os_log_impl(&dword_0, v181, v182, "Alarm domain: received ifClientAction parse.", v183, 2u);
        }

        v184 = v288;
        sub_105090();
        v185 = sub_106030();
        v187 = v287;
        if (v185 == 0x615F657461657263 && v186 == 0xEC0000006D72616CLL)
        {
        }

        else
        {
          v210 = sub_107370();

          if ((v210 & 1) == 0)
          {
            v229 = v286;
            v230 = v282;
            (*(v286 + 16))(v282, v184, v187);
            v231 = sub_106D10();
            v232 = sub_106FB0();
            if (os_log_type_enabled(v231, v232))
            {
              v233 = v229;
              v234 = swift_slowAlloc();
              v235 = swift_slowAlloc();
              v333 = v235;
              *v234 = 136315138;
              v236 = sub_106030();
              v237 = v230;
              v239 = v238;
              v240 = *(v233 + 8);
              v240(v237, v187);
              v241 = sub_722E8(v236, v239, &v333);

              *(v234 + 4) = v241;
              _os_log_impl(&dword_0, v231, v232, "Alarm domain unexpected client action toolId: %s", v234, 0xCu);
              sub_2738(v235);
            }

            else
            {

              v240 = *(v229 + 8);
              v240(v230, v187);
            }

            v155 = v331;
            sub_104B90();
            v240(v288, v187);
            (*(v289 + 8))(v306, v290);
            goto LABEL_41;
          }
        }

        sub_F5DBC(1, 1);
        v143 = v331;
        sub_104BB0();

        (*(v286 + 8))(v184, v187);
        (*(v179 + 8))(v306, v180);
        goto LABEL_34;
      }

      v203 = sub_106D10();
      v204 = sub_106FB0();
      if (os_log_type_enabled(v203, v204))
      {
        v205 = swift_slowAlloc();
        *v205 = 0;
        _os_log_impl(&dword_0, v203, v204, "FlowPlugin is unable to consume the alarm intent. Exiting the flow.", v205, 2u);
      }

      v206 = sub_104BD0();
      (*(*(v206 - 8) + 56))(v331, 1, 1, v206);
      return (v83)(v86, v61);
    }

    (*(v62 + 96))(v86, v61);
    v161 = v299;
    v162 = v298;
    v163 = v86;
    v164 = v300;
    (*(v299 + 32))(v298, v163, v300);
    v165 = sub_106D10();
    v166 = sub_106FC0();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      _os_log_impl(&dword_0, v165, v166, "Alarm domain: Hitting SiriX code path (receiving UsoParse)", v167, 2u);
    }

    v168 = v295;
    sub_105400();
    v169 = sub_105440();
    (*(v296 + 8))(v168, v297);
    if (v169)
    {
      if (!sub_F9670(v169))
      {
        v211 = v283;
        sub_274CC(v283);

        v143 = v331;
        sub_F2AF8(v211, 0, v169, v331);

        (*(v285 + 8))(v211, v284);
        goto LABEL_82;
      }

      v170 = sub_106D10();
      v171 = sub_106FC0();
      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        *v172 = 0;
        _os_log_impl(&dword_0, v170, v171, "This is not supported nvl4 intent, use unsupportedFlow.", v172, 2u);
      }

      v143 = v331;
      sub_104BB0();
    }

    else
    {
      v207 = sub_106D10();
      v208 = sub_106FB0();
      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        *v209 = 0;
        _os_log_impl(&dword_0, v207, v208, "UsoTask is empty! Calling searchAlarmFlow anyways", v209, 2u);
      }

      sub_F6720();
      v143 = v331;
      sub_104BB0();
    }

LABEL_82:
    (*(v161 + 8))(v162, v164);
    goto LABEL_34;
  }

  (*(v62 + 96))(v86, v61);
  v113 = v314;
  v114 = v316;
  (*(v314 + 32))(v316, v86, v14);
  sub_1053A0();
  v115 = v308;
  sub_1065C0();
  v116 = v310;
  if ((*(v310 + 48))(v115, 1, v8) == 1)
  {
    sub_16F70(v115, &qword_13AFB0, &qword_10BB38);
    v117 = *(v113 + 16);
    v118 = v307;
    v117(v307, v114, v14);
    v119 = sub_106D10();
    v120 = sub_106FB0();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = v14;
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v333 = v123;
      *v122 = 136315138;
      v117(v305, v118, v121);
      v124 = sub_106E30();
      v126 = v125;
      v127 = *(v113 + 8);
      v127(v118, v121);
      v128 = sub_722E8(v124, v126, &v333);

      *(v122 + 4) = v128;
      _os_log_impl(&dword_0, v119, v120, "Alarm domain received a direct invocation we don't support: %s", v122, 0xCu);
      sub_2738(v123);

      v127(v316, v121);
    }

    else
    {

      v177 = *(v113 + 8);
      v177(v118, v14);
      v177(v114, v14);
    }

LABEL_88:
    v228 = sub_104BD0();
    return (*(*(v228 - 8) + 56))(v331, 1, 1, v228);
  }

  v311 = v14;
  (*(v116 + 32))(v315, v115, v8);
  v156 = sub_106D10();
  v157 = sub_106FC0();
  if (os_log_type_enabled(v156, v157))
  {
    v158 = swift_slowAlloc();
    *v158 = 0;
    _os_log_impl(&dword_0, v156, v157, "Alarm domain: received known direct invocation", v158, 2u);
  }

  v159 = *(v116 + 104);
  v159(v309, enum case for DirectInvocationUtils.Alarm.URI.stopAlarm(_:), v8);
  sub_F9DEC(&qword_13AFE8, &type metadata accessor for DirectInvocationUtils.Alarm.URI, &protocol conformance descriptor for DirectInvocationUtils.Alarm.URI);
  sub_106EB0();
  v312 = v8;
  sub_106EB0();
  if (v333 == v335 && v334 == v336)
  {
    v160 = 1;
  }

  else
  {
    v160 = sub_107370();
  }

  v175 = *(v116 + 8);
  v174 = v116 + 8;
  v173 = v175;
  v176 = v312;
  v175(v309, v312);

  if (v160)
  {
    sub_F6BF0();
    v143 = v331;
    sub_104BB0();

    v173(v315, v176);
LABEL_58:
    (*(v314 + 8))(v114, v311);
    goto LABEL_34;
  }

  v332 = v173;
  v188 = sub_1053B0();
  if (!v188)
  {
LABEL_85:
    v212 = v314;
    v213 = *(v314 + 16);
    v214 = v294;
    v215 = v114;
    v216 = v114;
    v217 = v311;
    v213(v294, v215, v311);
    v218 = sub_106D10();
    v219 = sub_106FB0();
    if (os_log_type_enabled(v218, v219))
    {
      v220 = swift_slowAlloc();
      v330 = swift_slowAlloc();
      v333 = v330;
      *v220 = 136315138;
      v221 = v311;
      v213(v305, v214, v311);
      v222 = sub_106E30();
      v224 = v223;
      v225 = *(v212 + 8);
      v225(v214, v221);
      v226 = sub_722E8(v222, v224, &v333);

      *(v220 + 4) = v226;
      _os_log_impl(&dword_0, v218, v219, "Missing or incorrect value for 'verb' key on known directInvocation: %s", v220, 0xCu);
      sub_2738(v330);

      (v332)(v315, v312);
      v225(v316, v221);
    }

    else
    {

      v227 = *(v212 + 8);
      v227(v214, v217);
      (v332)(v315, v312);
      v227(v216, v217);
    }

    goto LABEL_88;
  }

  v189 = v188;
  v190 = v292;
  v191 = v291;
  v192 = v293;
  (*(v292 + 104))(v291, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v293);
  v193 = sub_106590();
  v195 = v194;
  (*(v190 + 8))(v191, v192);
  if (!*(v189 + 16))
  {

    goto LABEL_84;
  }

  v196 = sub_32658(v193, v195);
  v198 = v197;

  if ((v198 & 1) == 0)
  {
LABEL_84:

    v114 = v316;
    goto LABEL_85;
  }

  sub_135FC(*(v189 + 56) + 32 * v196, &v333);

  v199 = swift_dynamicCast();
  v114 = v316;
  if ((v199 & 1) == 0)
  {
    goto LABEL_85;
  }

  v200 = v281;
  sub_106940();
  v201 = v285;
  v202 = v284;
  if ((*(v285 + 48))(v200, 1, v284) == 1)
  {
    sub_16F70(v200, &unk_1374A0, &qword_10BB30);
    goto LABEL_85;
  }

  v242 = v279;
  (*(v201 + 32))(v279, v200, v202);
  v243 = v312;
  v159(v280, enum case for DirectInvocationUtils.Alarm.URI.undo(_:), v312);
  sub_106EB0();
  sub_106EB0();
  if (v333 == v335 && v334 == v336)
  {
    (v332)(v280, v243);
  }

  else
  {
    v244 = sub_107370();
    (v332)(v280, v243);

    if ((v244 & 1) == 0)
    {
      v310 = v174;
      v253 = v277;
      (*(v285 + 104))(v277, enum case for AlarmNLv4Constants.AlarmVerb.create(_:), v284);
      sub_F9DEC(&unk_13AFF0, &type metadata accessor for AlarmNLv4Constants.AlarmVerb, &protocol conformance descriptor for AlarmNLv4Constants.AlarmVerb);
      sub_106EB0();
      sub_106EB0();
      if (v333 == v335 && v334 == v336)
      {
        v254 = 1;
      }

      else
      {
        v254 = sub_107370();
      }

      v259 = v285;
      v260 = *(v285 + 8);
      v261 = v253;
      v262 = v284;
      v260(v261, v284);

      if (v254)
      {
        sub_F5DBC(1, 1);
        v143 = v331;
        sub_104BB0();

        v260(v242, v262);
        (v332)(v315, v243);
        goto LABEL_58;
      }

      v263 = v242;
      v264 = *(v259 + 16);
      v265 = v276;
      v264(v276, v263, v262);
      v266 = sub_106D10();
      LODWORD(v330) = sub_106FA0();
      if (os_log_type_enabled(v266, v330))
      {
        v267 = swift_slowAlloc();
        v268 = swift_slowAlloc();
        v333 = v268;
        *v267 = 136315138;
        v264(v283, v265, v284);
        v269 = sub_106E30();
        v271 = v270;
        v260(v265, v284);
        v272 = sub_722E8(v269, v271, &v333);

        *(v267 + 4) = v272;
        _os_log_impl(&dword_0, v266, v330, "Handling known direct invocation with verb %s", v267, 0xCu);
        sub_2738(v268);
        v243 = v312;

        v262 = v284;
      }

      else
      {

        v260(v265, v262);
      }

      v155 = v331;
      v275 = v279;
      sub_F2AF8(v279, 1, 0, v331);
      v260(v275, v262);
      (v332)(v315, v243);
LABEL_102:
      (*(v314 + 8))(v114, v311);
      goto LABEL_41;
    }
  }

  v245 = v285;
  v246 = v278;
  v247 = v284;
  (*(v285 + 16))(v278, v242, v284);
  v248 = (*(v245 + 88))(v246, v247);
  if (v248 == enum case for AlarmNLv4Constants.AlarmVerb.create(_:))
  {
    sub_106AC0();
    v249 = sub_106AB0();
    type metadata accessor for RecreateDeletedAlarmsFlow(0);
    v250 = swift_allocObject();
    v333 = sub_32AEC(v249, v250);
    sub_F9DEC(&qword_137FE0, type metadata accessor for RecreateDeletedAlarmsFlow, &protocol conformance descriptor for RecreateDeletedAlarmsFlow);
    sub_104B30();

    v155 = v331;
    sub_104BB0();

    (*(v245 + 8))(v242, v247);
LABEL_101:
    (v332)(v315, v243);
    goto LABEL_102;
  }

  if (v248 == enum case for AlarmNLv4Constants.AlarmVerb.delete(_:))
  {
    sub_106AC0();
    v251 = sub_106AB0();
    type metadata accessor for UndoCreateAlarmFlow(0);
    v252 = swift_allocObject();
    v333 = sub_F5204(v251, v252);
    sub_F9DEC(&unk_13B000, type metadata accessor for UndoCreateAlarmFlow, &protocol conformance descriptor for UndoCreateAlarmFlow);
    sub_104B30();

    v155 = v331;
    sub_104BB0();

    (*(v285 + 8))(v242, v247);
    goto LABEL_101;
  }

  v255 = v314;
  if (v248 == enum case for AlarmNLv4Constants.AlarmVerb.disable(_:) || v248 == enum case for AlarmNLv4Constants.AlarmVerb.enable(_:))
  {
    sub_106AC0();
    v273 = sub_106AB0();
    type metadata accessor for UndoChangeStatusFlow(0);
    v274 = swift_allocObject();
    v333 = sub_72F94(v273, v274);
    sub_F9DEC(&qword_138860, type metadata accessor for UndoChangeStatusFlow, &protocol conformance descriptor for UndoChangeStatusFlow);
    sub_104B30();

    v155 = v331;
    sub_104BB0();

    (*(v285 + 8))(v242, v247);
    (v332)(v315, v243);
    (*(v255 + 8))(v114, v311);
    goto LABEL_41;
  }

  v256 = v331;
  sub_F2AF8(v242, 1, 0, v331);
  v257 = *(v285 + 8);
  v257(v242, v247);
  (v332)(v315, v243);
  (*(v255 + 8))(v114, v311);
  v258 = sub_104BD0();
  (*(*(v258 - 8) + 56))(v256, 0, 1, v258);
  return (v257)(v278, v247);
}

uint64_t static Transformer<>.alarmToTimerParseTransformer.getter()
{
  sub_1053E0();

  return sub_105FD0();
}

uint64_t sub_F21A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E4(&qword_137500, &qword_107E10);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_25E4(&qword_13B028, &qword_10BB80);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - v8;
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v10 = sub_106D20();
  sub_135C4(v10, qword_13AF90);
  v11 = a1;
  v12 = sub_106D10();
  v13 = sub_106FC0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v37 = a2;
    v15 = v14;
    v36 = swift_slowAlloc();
    v38[0] = v36;
    *v15 = 136315138;
    v16 = v11;
    v17 = [v16 description];
    v18 = sub_106E20();
    v19 = v6;
    v21 = v20;

    v22 = sub_722E8(v18, v21, v38);
    v6 = v19;

    *(v15 + 4) = v22;
    _os_log_impl(&dword_0, v12, v13, "AlarmFlowFactory: routing flow with SK intent: %s", v15, 0xCu);
    sub_2738(v36);

    a2 = v37;
  }

  sub_F31A0(v11, v9);
  v23 = sub_104BD0();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v9, 1, v23) != 1)
  {
    return (*(v24 + 32))(a2, v9, v23);
  }

  sub_16F70(v9, &qword_13B028, &qword_10BB80);
  sub_106800();
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = [v25 time];
    if (v26)
    {
      sub_104570();

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v29 = sub_1045E0();
    (*(*(v29 - 8) + 56))(v6, v27, 1, v29);
    sub_16F70(v6, &qword_137500, &qword_107E10);
    sub_F5DBC(v26 != 0, 0);
    goto LABEL_14;
  }

  sub_106840();
  if (swift_dynamicCastClass())
  {
    sub_F6264();
LABEL_14:
    sub_104BB0();
  }

  sub_106870();
  if (swift_dynamicCastClass())
  {
    sub_F6720();
    goto LABEL_14;
  }

  sub_1067A0();
  v30 = swift_dynamicCastClass();
  if (v30)
  {
    if ([v30 operation] == &dword_0 + 2)
    {
      sub_F6BF0();
    }

    else
    {
      sub_F6D34();
    }

    goto LABEL_14;
  }

  sub_1068D0();
  if (swift_dynamicCastClass())
  {
    sub_F71F0();
    goto LABEL_14;
  }

  sub_1068B0();
  if (swift_dynamicCastClass())
  {
    sub_104940();
    swift_allocObject();
    v38[0] = sub_104950();
    sub_104B30();

    goto LABEL_14;
  }

  v31 = sub_106750();
  v38[3] = v31;
  v38[4] = &protocol witness table for ABCReport;
  v32 = sub_1A924(v38);
  *v32 = swift_getObjectType();
  v33 = enum case for UnhandledAbortSubtype.unknownIntent(_:);
  v34 = sub_106680();
  (*(*(v34 - 8) + 104))(v32, v33, v34);
  (*(*(v31 - 8) + 104))(v32, enum case for ABCReport.unhandledAbort(_:), v31);
  sub_1064D0();
  sub_2738(v38);
  return sub_104B90();
}

uint64_t sub_F2748@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_106960();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v8 = sub_106D20();
  sub_135C4(v8, qword_13AF90);
  swift_unknownObjectRetain();
  v9 = sub_106D10();
  v10 = sub_106FC0();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v29 = a2;
    v12 = v11;
    v28 = swift_slowAlloc();
    v30 = a1;
    v31 = v28;
    *v12 = 136315138;
    swift_unknownObjectRetain();
    sub_25E4(&unk_137470, &unk_10BC40);
    v13 = sub_106E30();
    v15 = v7;
    v16 = v5;
    v17 = v4;
    v18 = sub_722E8(v13, v14, &v31);

    *(v12 + 4) = v18;
    v4 = v17;
    v5 = v16;
    v7 = v15;
    _os_log_impl(&dword_0, v9, v10, "AlarmFlowFactory: routing flow with nlv4 intent: %s", v12, 0xCu);
    sub_2738(v28);

    a2 = v29;
  }

  swift_getObjectType();
  v19 = sub_107000();
  if (!v19)
  {
    v24 = sub_106D10();
    v25 = sub_106FB0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "UsoTask is empty! Calling searchAlarmFlow anyways", v26, 2u);
    }

    sub_F6720();
    sub_104BB0();
  }

  v20 = v19;
  if (sub_F9670(v19))
  {
    v21 = sub_106D10();
    v22 = sub_106FC0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "This is not supported nvl4 intent, use unsupportedFlow.", v23, 2u);
    }

    sub_104BB0();
  }

  sub_274CC(v7);

  sub_F2AF8(v7, 0, v20, a2);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_F2AF8@<X0>(_BYTE *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_106960();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v52 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v55 = &v48[-v13];
  v14 = __chkstk_darwin(v12);
  v56 = &v48[-v15];
  __chkstk_darwin(v14);
  v17 = &v48[-v16];
  if (qword_136EE0 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v18 = sub_106D20();
    v19 = sub_135C4(v18, qword_13AF90);
    v57 = *(v9 + 16);
    v58 = a1;
    v57(v17, a1, v8);
    v53 = v19;
    v20 = sub_106D10();
    v21 = sub_106FC0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v50 = a3;
      v23 = v22;
      v24 = swift_slowAlloc();
      v51 = a4;
      v25 = v24;
      v59 = v24;
      *v23 = 136315138;
      v26 = sub_106950();
      v49 = a2;
      v28 = v27;
      v54 = *(v9 + 8);
      v54(v17, v8);
      v29 = sub_722E8(v26, v28, &v59);
      a2 = v49;

      *(v23 + 4) = v29;
      _os_log_impl(&dword_0, v20, v21, "AlarmFlowFactory: routing flow with verb: %s", v23, 0xCu);
      sub_2738(v25);
      a4 = v51;

      a3 = v50;
    }

    else
    {

      v54 = *(v9 + 8);
      v54(v17, v8);
    }

    a1 = v56;
    v30 = v57;
    v17 = v58;
    v57(v56, v58, v8);
    v31 = (*(v9 + 88))(a1, v8);
    if (v31 == enum case for AlarmNLv4Constants.AlarmVerb.unknown(_:))
    {
      v32 = v55;
      v30(v55, v17, v8);
      v33 = sub_106D10();
      v34 = sub_106FB0();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = v30;
        v38 = v36;
        v59 = v36;
        *v35 = 136315138;
        v37(v52, v32, v8);
        v39 = sub_106E30();
        v40 = v32;
        v42 = v41;
        v54(v40, v8);
        v43 = sub_722E8(v39, v42, &v59);

        *(v35 + 4) = v43;
        _os_log_impl(&dword_0, v33, v34, "Unexpected alarmVerb: %s", v35, 0xCu);
        sub_2738(v38);
      }

      else
      {

        v54(v32, v8);
      }

LABEL_16:
      sub_F6720();
      goto LABEL_17;
    }

    if (v31 == enum case for AlarmNLv4Constants.AlarmVerb.checkExistence(_:))
    {
      goto LABEL_16;
    }

    if (v31 == enum case for AlarmNLv4Constants.AlarmVerb.create(_:))
    {
LABEL_10:
      if (a3)
      {
        v44 = sub_105E40();
        if (!v44)
        {
LABEL_21:
          sub_F5DBC(v44, a2 & 1);
          goto LABEL_17;
        }

        v45 = sub_1058F0();

        if (v45)
        {
          v46 = sub_105980();

          if (v46)
          {

            LOBYTE(v44) = 1;
            goto LABEL_21;
          }
        }
      }

      LOBYTE(v44) = 0;
      goto LABEL_21;
    }

    if (v31 == enum case for AlarmNLv4Constants.AlarmVerb.delete(_:))
    {
      sub_F6264();
      goto LABEL_17;
    }

    if (v31 == enum case for AlarmNLv4Constants.AlarmVerb.disable(_:))
    {
      break;
    }

    if (v31 == enum case for AlarmNLv4Constants.AlarmVerb.enable(_:))
    {
LABEL_25:
      sub_F6D34();
      goto LABEL_17;
    }

    if (v31 == enum case for AlarmNLv4Constants.AlarmVerb.read(_:) || v31 == enum case for AlarmNLv4Constants.AlarmVerb.request(_:))
    {
      goto LABEL_16;
    }

    if (v31 == enum case for AlarmNLv4Constants.AlarmVerb.snooze(_:))
    {
      sub_104940();
      swift_allocObject();
      v59 = sub_104950();
      sub_104B30();

      goto LABEL_17;
    }

    if (v31 == enum case for AlarmNLv4Constants.AlarmVerb.summarise(_:))
    {
      goto LABEL_16;
    }

    if (v31 == enum case for AlarmNLv4Constants.AlarmVerb.update(_:))
    {
      sub_F71F0();
      goto LABEL_17;
    }

    if (v31 == enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:))
    {
      goto LABEL_10;
    }

    if (v31 == enum case for AlarmNLv4Constants.AlarmVerb.close(_:))
    {
      break;
    }

    if (v31 == enum case for AlarmNLv4Constants.AlarmVerb.resume(_:))
    {
      goto LABEL_25;
    }

    if (v31 == enum case for AlarmNLv4Constants.AlarmVerb.stop(_:))
    {
      break;
    }

    sub_107360();
    __break(1u);
LABEL_38:
    swift_once();
  }

  sub_F6BF0();
LABEL_17:
  sub_104BB0();
}

uint64_t sub_F31A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_F5814(0))
  {
    goto LABEL_2;
  }

  sub_106800();
  if (swift_dynamicCastClass())
  {
    goto LABEL_21;
  }

  sub_106840();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    isa = a1;
    v8 = [v6 alarmSearch];
    if (v8)
    {
      goto LABEL_15;
    }

LABEL_20:

    goto LABEL_21;
  }

  sub_106870();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    isa = a1;
    v8 = [v10 alarmSearch];
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_1067A0();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      isa = a1;
      v8 = [v12 alarmSearch];
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1068D0();
      v13 = swift_dynamicCastClass();
      if (!v13)
      {
LABEL_21:
        v4 = 1;
        goto LABEL_22;
      }

      v14 = v13;
      isa = a1;
      v8 = [v14 alarmSearch];
      if (!v8)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_15:
  v15 = v8;
  v16 = [v8 includeSleepAlarm];
  sub_1F7B8();
  v17.super.super.isa = sub_107090(1).super.super.isa;
  if (!v16)
  {

    isa = v17.super.super.isa;
    goto LABEL_20;
  }

  v18 = sub_1070A0();

  if ((v18 & 1) == 0)
  {
    goto LABEL_21;
  }

  v4 = 1;
  if (sub_F5814(1))
  {
LABEL_2:
    sub_104BB0();

    v4 = 0;
  }

LABEL_22:
  v19 = sub_104BD0();
  v20 = *(*(v19 - 8) + 56);

  return v20(a2, v4, 1, v19);
}

uint64_t sub_F3420(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_25E4(&qword_13B0D8, &qword_10BC08);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_25E4(&qword_13B0E0, &qword_10BC10);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = sub_25E4(&unk_13B0E8, &unk_10BC18);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v4 = sub_1063E0();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  sub_25E4(&qword_1374F0, &qword_1080F0);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_F3648, 0, 0);
}

uint64_t sub_F3648()
{
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13AF90);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AlarmFlowFactory: making snoozeAlarmFlow.", v4, 2u);
  }

  sub_106780();
  sub_1063C0();
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_F37B0;

  return SiriTimeDeviceContextProvider.fetchAlarmContexts()();
}

uint64_t sub_F37B0(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  *(*v1 + 160) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_F3910, 0, 0);
}

uint64_t sub_F3910()
{
  v24 = v0;
  v1 = sub_106F00();

  if (*(v1 + 16))
  {
    v2 = v0[18];
    v3 = sub_106630();
    v4 = *(v3 - 8);
    (*(v4 + 16))(v2, v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

    v5 = 0;
  }

  else
  {

    v3 = sub_106630();
    v4 = *(v3 - 8);
    v5 = 1;
  }

  v6 = v0[18];
  v7 = v0[13];
  v18 = v0[12];
  v8 = v0[11];
  v9 = v0[8];
  v21 = v0[9];
  v22 = v0[17];
  v10 = v0[7];
  v19 = v0[10];
  v20 = v0[6];
  v11 = v0[5];
  v16 = v0[4];
  v17 = v0[3];
  (*(v4 + 56))(v6, v5, 1, v3);
  sub_106560();
  sub_106550();
  sub_106540();

  sub_14994(v6, v7 + *(v8 + 36), &qword_1374F0, &qword_1080F0);
  sub_106550();
  sub_106540();

  sub_14994(v6, v22, &qword_1374F0, &qword_1080F0);
  sub_84A9C(v23, v22);
  (*(v9 + 16))(v21, v19, v10);
  sub_25E4(&qword_13B0F8, &qword_10BC28);
  swift_allocObject();
  sub_104B10();
  sub_14994(v7, v18, &unk_13B0E8, &unk_10BC18);
  sub_B880C(&qword_13B100, &unk_13B0E8, &unk_10BC18, &unk_10BDF8);

  sub_104EA0();
  v12 = sub_104E80();
  (*(v11 + 8))(v20, v16);
  v0[2] = v12;
  sub_25E4(&qword_13B108, &unk_10BC30);
  sub_B880C(&unk_13B110, &qword_13B108, &unk_10BC30, &protocol conformance descriptor for AnyValueFlow<A>);
  v13 = sub_104B30();

  v17[3] = sub_1049D0();
  v17[4] = &protocol witness table for AnyFlow;

  *v17 = v13;
  (*(v9 + 8))(v19, v10);
  sub_16F70(v7, &unk_13B0E8, &unk_10BC18);
  sub_16F70(v6, &qword_1374F0, &qword_1080F0);

  v14 = v0[1];

  return v14();
}

uint64_t sub_F3D70(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_106630();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1063E0();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  sub_25E4(&qword_1374F0, &qword_1080F0);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_F3ED0, 0, 0);
}

uint64_t sub_F3ED0()
{
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  *(v0 + 88) = sub_135C4(v1, qword_13AF90);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AlarmFlowFactory: making decideDismissOrChangeAlarmStatusFlow.", v4, 2u);
  }

  sub_106780();
  sub_1063C0();
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_F403C;

  return SiriTimeDeviceContextProvider.fetchAlarmContexts()();
}

uint64_t sub_F403C(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 104) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_F419C, 0, 0);
}

uint64_t sub_F419C()
{
  v1 = sub_106F00();

  if (*(v1 + 16))
  {
    (*(v0[4] + 16))(v0[10], v1 + ((*(v0[4] + 80) + 32) & ~*(v0[4] + 80)), v0[3]);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[3];
  v6 = v0[4];

  (*(v6 + 56))(v3, v2, 1, v5);
  sub_14994(v3, v4, &qword_1374F0, &qword_1080F0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_16F70(v0[9], &qword_1374F0, &qword_1080F0);
    v7 = sub_106D10();
    v8 = sub_106FC0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "DecideDismissOrChangeStateFlow: Can NOT get valid HAL info, running changeAlarmStatusFlow.", v9, 2u);
    }

    v10 = v0[2];

    v11 = sub_F6D34();
    v10[3] = sub_1049D0();
    v10[4] = &protocol witness table for AnyFlow;
    *v10 = v11;
  }

  else
  {
    (*(v0[4] + 32))(v0[5], v0[9], v0[3]);
    v12 = sub_106D10();
    v13 = sub_106FA0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "DecideDismissOrChangeStateFlow: Running dismissAlarmFlow.", v14, 2u);
    }

    v16 = v0[4];
    v15 = v0[5];
    v18 = v0[2];
    v17 = v0[3];

    v19 = sub_F986C(v15);
    v18[3] = sub_1049D0();
    v18[4] = &protocol witness table for AnyFlow;
    *v18 = v19;
    (*(v16 + 8))(v15, v17);
  }

  sub_16F70(v0[10], &qword_1374F0, &qword_1080F0);

  v20 = v0[1];

  return v20();
}

uint64_t sub_F4490@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v127 = a1;
  v120 = a2;
  v3 = sub_1053C0();
  v111 = *(v3 - 8);
  v112 = v3;
  __chkstk_darwin(v3);
  v114 = v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25E4(&unk_13AFC0, &qword_10A928);
  __chkstk_darwin(v5 - 8);
  v7 = v107 - v6;
  v8 = sub_25E4(&qword_13AFE0, &qword_10A320);
  __chkstk_darwin(v8 - 8);
  v10 = v107 - v9;
  v11 = sub_105700();
  v117 = *(v11 - 8);
  v118 = v11;
  __chkstk_darwin(v11);
  v115 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_105E80();
  v119 = *(v125 - 8);
  v13 = __chkstk_darwin(v125);
  v116 = v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = v107 - v16;
  __chkstk_darwin(v15);
  v124 = v107 - v18;
  v19 = sub_1053E0();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v108 = v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v109 = v107 - v24;
  v25 = __chkstk_darwin(v23);
  v113 = v107 - v26;
  __chkstk_darwin(v25);
  v28 = v107 - v27;
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v29 = sub_106D20();
  v123 = sub_135C4(v29, qword_13AF90);
  v30 = sub_106D10();
  v31 = sub_106FC0();
  v32 = os_log_type_enabled(v30, v31);
  v126 = v19;
  if (v32)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_0, v30, v31, "Transforming timer parse to alarm parse", v33, 2u);
    v19 = v126;
  }

  v121 = *(v20 + 16);
  v122 = v20 + 16;
  v121(v28, v127, v19);
  v34 = (*(v20 + 88))(v28, v19);
  if (v34 != enum case for Parse.NLv3IntentOnly(_:))
  {
    v45 = v34;
    if (v34 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v20 + 8))(v28, v19);
      v46 = sub_106D10();
      v47 = sub_106FB0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_0, v46, v47, "Alarm domain was told to reform an NLv4 parse, which is not supported. Qualifying Alarm NLv4 parses should go directly to the Timer domain.", v48, 2u);
        v19 = v126;
      }

      v49 = v120;
      v50 = v127;
      v51 = v19;
      return (v121)(v49, v50, v51);
    }

    v72 = enum case for Parse.uso(_:);
    v73 = sub_106D10();
    v74 = sub_106FB0();
    v75 = os_log_type_enabled(v73, v74);
    if (v45 == v72)
    {
      if (v75)
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        v77 = "Alarm domain was told to reform a USO parse, which is not supported. Qualifying Alarm USO parses should go directly to the Timer domain.";
LABEL_27:
        _os_log_impl(&dword_0, v73, v74, v77, v76, 2u);
      }
    }

    else if (v75)
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      v77 = "Transformer should only be called for nlv3 parse. Check the caller to make sure it's not mis-used.";
      goto LABEL_27;
    }

    v82 = v126;
    v121(v120, v127, v126);
    return (*(v20 + 8))(v28, v82);
  }

  v107[1] = v2;
  (*(v20 + 96))(v28, v19);
  v35 = v119;
  v36 = v124;
  v37 = v28;
  v38 = v125;
  (*(v119 + 32))(v124, v37, v125);
  v39 = *(v35 + 16);
  v39(v17, v36, v38);
  type metadata accessor for AlarmNLIntent(0);
  swift_allocObject();
  v110 = sub_B3800(v17);
  sub_B245C(v10);
  v41 = v117;
  v40 = v118;
  if ((*(v117 + 48))(v10, 1, v118) == 1)
  {
    v42 = &qword_13AFE0;
    v43 = &qword_10A320;
    v44 = v10;
LABEL_14:
    sub_16F70(v44, v42, v43);
    v57 = v125;
LABEL_15:
    v58 = v124;
    v59 = v116;
    v39(v116, v124, v57);
    v60 = sub_106D10();
    v61 = sub_106FB0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = v59;
      v64 = swift_slowAlloc();
      v128[0] = v64;
      *v62 = 136315138;
      sub_F9DEC(&unk_13B018, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
      v65 = sub_107340();
      v66 = v57;
      v67 = v65;
      v69 = v68;
      v70 = *(v119 + 8);
      v70(v63, v66);
      v71 = sub_722E8(v67, v69, v128);
      v19 = v126;

      *(v62 + 4) = v71;
      _os_log_impl(&dword_0, v60, v61, "Not able to parse timer duration from alarm NLv3 intent %s", v62, 0xCu);
      sub_2738(v64);

      v70(v124, v125);
    }

    else
    {

      v78 = *(v119 + 8);
      v78(v59, v57);
      v78(v58, v57);
    }

    v49 = v120;
    v50 = v127;
    v51 = v19;
    return (v121)(v49, v50, v51);
  }

  v107[0] = v20;
  v52 = v115;
  (*(v41 + 32))(v115, v10, v40);
  v53 = v41;
  sub_1056E0();
  v54 = v40;
  v55 = sub_1057D0();
  v56 = *(v55 - 8);
  if ((*(v56 + 48))(v7, 1, v55) == 1)
  {
    (*(v53 + 8))(v52, v54);
    v42 = &unk_13AFC0;
    v43 = &qword_10A928;
    v44 = v7;
    goto LABEL_14;
  }

  sub_1057C0();
  v81 = v80;
  (*(v56 + 8))(v7, v55);
  v57 = v125;
  if (v81)
  {
    (*(v117 + 8))(v115, v118);
    v19 = v126;
    goto LABEL_15;
  }

  v83 = sub_106D10();
  v84 = sub_106FC0();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v128[0] = v86;
    *v85 = 136315138;
    v87 = sub_106F70();
    v89 = sub_722E8(v87, v88, v128);

    *(v85 + 4) = v89;
    _os_log_impl(&dword_0, v83, v84, "Found timer duration from alarmTime %s", v85, 0xCu);
    sub_2738(v86);
  }

  v90 = v126;
  v91 = v121;
  v93 = v111;
  v92 = v112;
  v94 = v107[0];
  sub_B2290();
  v95 = v114;
  sub_1065B0();

  v96 = v113;
  (*(v93 + 16))(v113, v95, v92);
  (*(v94 + 104))(v96, enum case for Parse.directInvocation(_:), v90);
  v97 = v109;
  v91(v109, v96, v90);
  v98 = sub_106D10();
  v99 = sub_106FC0();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v128[0] = v101;
    *v100 = 136315138;
    v102 = v94;
    v121(v108, v97, v90);
    v103 = sub_106E30();
    v105 = v104;
    (*(v102 + 8))(v97, v126);
    v106 = sub_722E8(v103, v105, v128);
    v94 = v102;

    *(v100 + 4) = v106;
    v90 = v126;
    _os_log_impl(&dword_0, v98, v99, "Alarm reformed alarm parse to timer: %s", v100, 0xCu);
    sub_2738(v101);

    (*(v111 + 8))(v114, v112);
  }

  else
  {

    (*(v94 + 8))(v97, v90);
    (*(v93 + 8))(v114, v92);
  }

  (*(v117 + 8))(v115, v118);
  (*(v119 + 8))(v124, v57);
  return (*(v94 + 32))(v120, v113, v90);
}

char *sub_F5204(uint64_t a1, char *a2)
{
  v4 = sub_106200();
  __chkstk_darwin(v4 - 8);
  v9 = sub_106AC0();
  v10 = &protocol witness table for SiriAlarmManagerImpl;
  *&v8 = a1;
  type metadata accessor for DeleteAlarmCATs_Async(0);
  sub_1061E0();
  *(a2 + 2) = sub_1060D0();
  type metadata accessor for DeleteAlarmCATPatternsExecutor(0);
  sub_1061E0();
  *(a2 + 3) = sub_1060D0();
  sub_1061E0();
  *(a2 + 4) = sub_1060D0();
  type metadata accessor for ErrorCATPatternsExecutor(0);
  sub_1061E0();
  *(a2 + 5) = sub_1060D0();
  *(a2 + 6) = _s15AlarmFlowPlugin010UndoCreateaB0C11osLogObject33_795FD7BF22B6045B20B59C9797DF7ED4LLSo03OS_F4_logCvpfi_0();
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  v5 = OBJC_IVAR____TtC15AlarmFlowPlugin19UndoCreateAlarmFlow_followupPluginAction;
  v6 = sub_104E10();
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  sub_1AD44(&v8, (a2 + 56));
  return a2;
}

uint64_t sub_F537C(uint64_t a1)
{
  v28 = a1;
  v1 = sub_25E4(&unk_13B1C0, &unk_10BCB0);
  v29 = *(v1 - 8);
  v30 = v1;
  __chkstk_darwin(v1);
  v27 = &v26 - v2;
  v3 = sub_25E4(&qword_13AEE0, qword_10BAB0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = sub_25E4(&unk_13B1D0, &qword_10BCC0);
  v11 = __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v16 = sub_106D20();
  sub_135C4(v16, qword_13AF90);
  v17 = sub_106D10();
  v18 = sub_106FC0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "AlarmFlowFactory: making createAlarmFlow.", v19, 2u);
  }

  sub_106560();
  sub_106550();
  sub_106540();

  v20 = *(v10 + 36);
  v21 = sub_106630();
  (*(*(v21 - 8) + 56))(&v15[v20], 1, 1, v21);
  sub_106550();
  sub_106540();

  sub_EBF84(v31, 0);
  (*(v4 + 16))(v7, v9, v3);
  sub_25E4(&qword_13B1E0, &qword_10BCC8);
  swift_allocObject();
  sub_104B10();
  sub_14994(v15, v13, &unk_13B1D0, &qword_10BCC0);
  sub_B880C(&qword_13B1E8, &unk_13B1D0, &qword_10BCC0, &unk_10BDF8);

  v22 = v27;
  sub_104EA0();
  if (qword_136E48 != -1)
  {
    swift_once();
  }

  v23 = v30;
  v24 = sub_104E90();

  (*(v29 + 8))(v22, v23);
  (*(v4 + 8))(v9, v3);
  sub_16F70(v15, &unk_13B1D0, &qword_10BCC0);
  return v24;
}

uint64_t sub_F5814(int a1)
{
  v37 = a1;
  v1 = sub_106700();
  v40 = *(v1 - 8);
  v41 = v1;
  __chkstk_darwin(v1);
  v39 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1064A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1064C0();
  v44 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v13 = *(v4 + 104);
  v38 = enum case for AppInstallUtil.Domain.alarm(_:);
  v13(v6);
  sub_1064B0();
  v14 = enum case for AppInstallUtil.Domain.sleep(_:);
  (v13)(v6, enum case for AppInstallUtil.Domain.sleep(_:), v3);
  sub_1064B0();
  v43 = v12;
  v15 = sub_106470();
  v42 = v10;
  v16 = sub_106470();
  v17 = v16;
  if (v15 & 1) != 0 && (v16)
  {
    if (qword_136EE0 != -1)
    {
      swift_once();
    }

    v18 = sub_106D20();
    sub_135C4(v18, qword_13AF90);
    v19 = sub_106D10();
    v20 = sub_106FA0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "genericTaskNeedInstallationFlow: Both alarms and sleep/health are installed — not checking task for sleep properties.", v21, 2u);

      v22 = *(v44 + 8);
      v22(v42, v7);
      v23 = v43;
      v24 = v7;
LABEL_17:
      v22(v23, v24);
      return 0;
    }

LABEL_16:
    v22 = *(v44 + 8);
    v22(v42, v7);
    v23 = v43;
    v24 = v7;
    goto LABEL_17;
  }

  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v25 = sub_106D20();
  sub_135C4(v25, qword_13AF90);
  v26 = sub_106D10();
  v27 = sub_106FA0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v36 = v7;
    *v28 = 0;
    _os_log_impl(&dword_0, v26, v27, "genericTaskNeedInstallationFlow: One of alarms or sleep/health is not installed.", v28, 2u);
    v7 = v36;
  }

  if (v15)
  {
    goto LABEL_16;
  }

  if (v17 & 1) != 0 && (v37)
  {
    (v13)(v6, v14, v3);
    v48 = &type metadata for UnsupportedAppNotInstalledWithSleepFallbackPatternExecutor;
    v49 = sub_F97C4();
  }

  else
  {
    v30 = v38;
    (v13)(v6, v38, v3);
    v48 = type metadata accessor for UnsupportedAppNotInstalledPatternExecutor(0);
    v49 = sub_F9DEC(&qword_13B120, type metadata accessor for UnsupportedAppNotInstalledPatternExecutor, &unk_10B758);
    v31 = sub_1A924(v47);
    (v13)(v31, v30, v3);
  }

  v45 = &type metadata for AlarmAppNotInstalledLegacyDialog;
  v46 = sub_F9770();
  v32 = v39;
  sub_1066F0();
  sub_F9DEC(&qword_13B130, &type metadata accessor for UnsupportedAppNotInstalledFlow, &protocol conformance descriptor for UnsupportedAppNotInstalledFlow);
  v33 = v41;
  v34 = sub_104B30();
  (*(v40 + 8))(v32, v33);
  v35 = *(v44 + 8);
  v35(v42, v7);
  v35(v43, v7);
  return v34;
}

uint64_t sub_F5DBC(char a1, char a2)
{
  v4 = sub_25E4(&unk_13B1C0, &unk_10BCB0);
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v29 - v5;
  v7 = sub_25E4(&qword_13AEE0, qword_10BAB0);
  v33 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = sub_25E4(&unk_13B1D0, &qword_10BCC0);
  v14 = __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v29 - v17;
  if (a2 & 1) != 0 || (a1)
  {
    sub_106560();
    v30 = v7;
    v31 = v4;
    v21 = v7;
    sub_106550();
    sub_106540();

    v22 = *(v13 + 36);
    v23 = sub_106630();
    (*(*(v23 - 8) + 56))(&v18[v22], 1, 1, v23);
    sub_106550();
    sub_106540();

    v24 = v12;
    v29 = v12;
    sub_EBF84(v34, a2 & 1);
    v25 = v33;
    (*(v33 + 16))(v10, v24, v21);
    sub_25E4(&qword_13B1E0, &qword_10BCC8);
    swift_allocObject();
    sub_104B10();
    sub_14994(v18, v16, &unk_13B1D0, &qword_10BCC0);
    sub_B880C(&qword_13B1E8, &unk_13B1D0, &qword_10BCC0, &unk_10BDF8);

    sub_104EA0();
    v26 = v31;
    v27 = sub_104E80();
    (*(v32 + 8))(v6, v26);
    v34[0] = v27;
    sub_25E4(&qword_13B1F0, &qword_10BCD0);
    sub_B880C(&qword_13B1F8, &qword_13B1F0, &qword_10BCD0, &protocol conformance descriptor for AnyValueFlow<A>);
    v20 = sub_104B30();

    (*(v25 + 8))(v29, v30);
    sub_16F70(v18, &unk_13B1D0, &qword_10BCC0);
  }

  else
  {
    type metadata accessor for CreateAlarmReformableFlow();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    v34[0] = v19;
    sub_F9DEC(&qword_1382C0, type metadata accessor for CreateAlarmReformableFlow, &protocol conformance descriptor for CreateAlarmReformableFlow);
    v20 = sub_104B30();
  }

  return v20;
}

uint64_t sub_F6264()
{
  v0 = sub_25E4(&unk_13B030, &unk_10BB90);
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v26 - v1;
  v2 = sub_25E4(&qword_13A338, &qword_10AB98);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_25E4(&qword_13B040, &qword_10BBA0);
  v10 = __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v15 = sub_106D20();
  sub_135C4(v15, qword_13AF90);
  v16 = sub_106D10();
  v17 = sub_106FC0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "AlarmFlowFactory: making deleteAlarmFlow.", v18, 2u);
  }

  sub_106560();
  sub_106550();
  sub_106540();

  v19 = *(v9 + 36);
  v20 = sub_106630();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
  sub_106550();
  sub_106540();

  sub_C13DC(v29);
  (*(v3 + 16))(v6, v8, v2);
  sub_25E4(&qword_13B048, &qword_10BBA8);
  swift_allocObject();
  sub_104B10();
  sub_14994(v14, v12, &qword_13B040, &qword_10BBA0);
  sub_B880C(&qword_13B050, &qword_13B040, &qword_10BBA0, &unk_10BDF8);

  v21 = v26;
  sub_104EA0();
  v22 = v28;
  v23 = sub_104E80();
  (*(v27 + 8))(v21, v22);
  v29[0] = v23;
  sub_25E4(&qword_13B058, &qword_10BBB0);
  sub_B880C(&qword_13B060, &qword_13B058, &qword_10BBB0, &protocol conformance descriptor for AnyValueFlow<A>);
  v24 = sub_104B30();

  (*(v3 + 8))(v8, v2);
  sub_16F70(v14, &qword_13B040, &qword_10BBA0);
  return v24;
}

uint64_t sub_F6720()
{
  v0 = sub_25E4(&unk_13B150, &qword_10BC58);
  v28 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v25 - v1;
  v3 = sub_25E4(&qword_137060, &qword_10BC60);
  v27 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v29 = &v25 - v7;
  v8 = sub_25E4(&qword_13B160, &qword_10BC68);
  v9 = __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v14 = sub_106D20();
  sub_135C4(v14, qword_13AF90);
  v15 = sub_106D10();
  v16 = sub_106FC0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "AlarmFlowFactory: making Search Alarm Flow.", v17, 2u);
  }

  sub_106560();
  sub_106550();
  sub_106540();

  v18 = *(v8 + 36);
  v19 = sub_106630();
  v20 = *(*(v19 - 8) + 56);
  v26 = v13;
  v20(&v13[v18], 1, 1, v19);
  sub_106550();
  sub_106540();

  v21 = v29;
  sub_1EE8(v30);
  v22 = v27;
  (*(v27 + 16))(v6, v21, v3);
  sub_25E4(&qword_13B168, &qword_10BC70);
  swift_allocObject();
  sub_104B10();
  sub_14994(v13, v11, &qword_13B160, &qword_10BC68);
  sub_B880C(&qword_13B170, &qword_13B160, &qword_10BC68, &unk_10BDF8);

  sub_104EA0();
  v30[0] = sub_104E80();
  sub_25E4(&qword_13B178, &qword_10BC78);
  sub_B880C(&qword_13B180, &qword_13B178, &qword_10BC78, &protocol conformance descriptor for AnyValueFlow<A>);
  v23 = sub_104B30();

  (*(v28 + 8))(v2, v0);
  (*(v22 + 8))(v29, v3);
  sub_16F70(v26, &qword_13B160, &qword_10BC68);
  return v23;
}

uint64_t sub_F6BF0()
{
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v0 = sub_106D20();
  sub_135C4(v0, qword_13AF90);
  v1 = sub_106D10();
  v2 = sub_106FC0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "AlarmFlowFactory: making DecideDismissOrChangeStateFlow.", v3, 2u);
  }

  sub_104940();
  swift_allocObject();
  sub_104950();
  v4 = sub_104B30();

  return v4;
}

uint64_t sub_F6D34()
{
  v0 = sub_25E4(&qword_13B068, &qword_10BBB8);
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v26 - v1;
  v2 = sub_25E4(&qword_13B070, &qword_10BBC0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_25E4(&qword_13B078, &qword_10BBC8);
  v10 = __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v15 = sub_106D20();
  sub_135C4(v15, qword_13AF90);
  v16 = sub_106D10();
  v17 = sub_106FC0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "AlarmFlowFactory: making changeAlarmStatusFlow.", v18, 2u);
  }

  sub_106560();
  sub_106550();
  sub_106540();

  v19 = *(v9 + 36);
  v20 = sub_106630();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
  sub_106550();
  sub_106540();

  sub_8A8E4(v29);
  (*(v3 + 16))(v6, v8, v2);
  sub_25E4(&qword_13B080, &qword_10BBD0);
  swift_allocObject();
  sub_104B10();
  sub_14994(v14, v12, &qword_13B078, &qword_10BBC8);
  sub_B880C(&qword_13B088, &qword_13B078, &qword_10BBC8, &unk_10BDF8);

  v21 = v26;
  sub_104EA0();
  v22 = v28;
  v23 = sub_104E80();
  (*(v27 + 8))(v21, v22);
  v29[0] = v23;
  sub_25E4(&qword_13B090, &qword_10BBD8);
  sub_B880C(&qword_13B098, &qword_13B090, &qword_10BBD8, &protocol conformance descriptor for AnyValueFlow<A>);
  v24 = sub_104B30();

  (*(v3 + 8))(v8, v2);
  sub_16F70(v14, &qword_13B078, &qword_10BBC8);
  return v24;
}

uint64_t sub_F71F0()
{
  v0 = sub_25E4(&unk_13B0A0, &unk_10BBE0);
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v26 - v1;
  v2 = sub_25E4(&qword_1375D0, &qword_107FA0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_25E4(&qword_13B0B0, &qword_10BBF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v15 = sub_106D20();
  sub_135C4(v15, qword_13AF90);
  v16 = sub_106D10();
  v17 = sub_106FC0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "AlarmFlowFactory: making updateAlarmFlow.", v18, 2u);
  }

  sub_106560();
  sub_106550();
  sub_106540();

  v19 = *(v9 + 36);
  v20 = sub_106630();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
  sub_106550();
  sub_106540();

  sub_1AAC8(v29);
  (*(v3 + 16))(v6, v8, v2);
  sub_25E4(&qword_13B0B8, &qword_10BBF8);
  swift_allocObject();
  sub_104B10();
  sub_14994(v14, v12, &qword_13B0B0, &qword_10BBF0);
  sub_B880C(&qword_13B0C0, &qword_13B0B0, &qword_10BBF0, &unk_10BDF8);

  v21 = v26;
  sub_104EA0();
  v22 = v28;
  v23 = sub_104E80();
  (*(v27 + 8))(v21, v22);
  v29[0] = v23;
  sub_25E4(&qword_13B0C8, &qword_10BC00);
  sub_B880C(&qword_13B0D0, &qword_13B0C8, &qword_10BC00, &protocol conformance descriptor for AnyValueFlow<A>);
  v24 = sub_104B30();

  (*(v3 + 8))(v8, v2);
  sub_16F70(v14, &qword_13B0B0, &qword_10BBF0);
  return v24;
}

BOOL sub_F76AC(uint64_t a1)
{
  v2 = sub_105590();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_105940();
    sub_14994(v102, v100, &qword_137490, qword_108C80);
    if (v101)
    {
      sub_105A20();
      if (swift_dynamicCast())
      {

        sub_105930();

        if (v100[0])
        {
          v6 = sub_ACBCC();
          (*(v3 + 104))(v5, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v7 = sub_AB75C(v5, v6);

          (*(v3 + 8))(v5, v2);
          if (v7)
          {
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v8 = sub_106D20();
            sub_135C4(v8, qword_13AF90);

            v9 = sub_106D10();
            v10 = sub_106FC0();

            if (!os_log_type_enabled(v9, v10))
            {
              goto LABEL_136;
            }

            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v99 = a1;
            v100[0] = v12;
            *v11 = 136315138;
            sub_105E60();

            v13 = sub_106E30();
            v15 = sub_722E8(v13, v14, v100);

            *(v11 + 4) = v15;
            v16 = "Detected sleep attribute in UsoTask_create_common_Alarm: %s";
LABEL_135:
            _os_log_impl(&dword_0, v9, v10, v16, v11, 0xCu);
            sub_2738(v12);

LABEL_136:

LABEL_137:

            LOBYTE(v21) = 1;
LABEL_153:
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v89 = sub_106D20();
            sub_135C4(v89, qword_13AF90);
            v90 = sub_106D10();
            v91 = sub_106FA0();
            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              v100[0] = v93;
              *v92 = 136315138;
              if (v21)
              {
                v94 = 5457241;
              }

              else
              {
                v94 = 20302;
              }

              if (v21)
              {
                v95 = 0xE300000000000000;
              }

              else
              {
                v95 = 0xE200000000000000;
              }

              v96 = sub_722E8(v94, v95, v100);

              *(v92 + 4) = v96;
              _os_log_impl(&dword_0, v90, v91, "genericTaskHasSleepAttribute: Task requires sleep attribute: %s", v92, 0xCu);
              sub_2738(v93);
            }

            else
            {
            }

            sub_16F70(v102, &qword_137490, qword_108C80);
            return v21;
          }
        }
      }
    }

    else
    {
      sub_16F70(v100, &qword_137490, qword_108C80);
    }

    sub_14994(v102, v100, &qword_137490, qword_108C80);
    if (v101)
    {
      sub_105AC0();
      if (swift_dynamicCast())
      {

        sub_1059F0();

        if (v100[0])
        {
          v22 = sub_ACBCC();
          (*(v3 + 104))(v5, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v23 = sub_AB75C(v5, v22);

          (*(v3 + 8))(v5, v2);
          if (v23)
          {
LABEL_42:
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v32 = sub_106D20();
            sub_135C4(v32, qword_13AF90);

            v9 = sub_106D10();
            v10 = sub_106FC0();

            if (!os_log_type_enabled(v9, v10))
            {
              goto LABEL_136;
            }

            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v99 = a1;
            v100[0] = v12;
            *v11 = 136315138;
            sub_105E60();

            v33 = sub_106E30();
            v35 = sub_722E8(v33, v34, v100);

            *(v11 + 4) = v35;
            v16 = "Detected sleep attribute for UsoTask_disable_common_Alarm: %s";
            goto LABEL_135;
          }
        }
      }
    }

    else
    {
      sub_16F70(v100, &qword_137490, qword_108C80);
    }

    sub_14994(v102, v100, &qword_137490, qword_108C80);
    if (v101)
    {
      sub_105D80();
      if (swift_dynamicCast())
      {

        sub_1059F0();

        if (v100[0])
        {
          v24 = sub_ACBCC();
          (*(v3 + 104))(v5, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v25 = sub_AB75C(v5, v24);

          (*(v3 + 8))(v5, v2);
          if (v25)
          {
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v26 = sub_106D20();
            sub_135C4(v26, qword_13AF90);

            v9 = sub_106D10();
            v10 = sub_106FC0();

            if (!os_log_type_enabled(v9, v10))
            {
              goto LABEL_136;
            }

            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v99 = a1;
            v100[0] = v12;
            *v11 = 136315138;
            sub_105E60();

            v27 = sub_106E30();
            v29 = sub_722E8(v27, v28, v100);

            *(v11 + 4) = v29;
            v16 = "Detected sleep attribute for UsoTask_checkExistence_common_Alarm: %s";
            goto LABEL_135;
          }
        }
      }
    }

    else
    {
      sub_16F70(v100, &qword_137490, qword_108C80);
    }

    sub_14994(v102, v100, &qword_137490, qword_108C80);
    if (v101)
    {
      sub_105AC0();
      if (swift_dynamicCast())
      {

        sub_1059F0();

        if (v100[0])
        {
          v30 = sub_ACBCC();
          (*(v3 + 104))(v5, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v31 = sub_AB75C(v5, v30);

          (*(v3 + 8))(v5, v2);
          if (v31)
          {
            goto LABEL_42;
          }
        }
      }
    }

    else
    {
      sub_16F70(v100, &qword_137490, qword_108C80);
    }

    sub_14994(v102, v100, &qword_137490, qword_108C80);
    if (v101)
    {
      sub_105A50();
      if (swift_dynamicCast())
      {

        sub_1059F0();

        if (v100[0])
        {
          v36 = sub_ACBCC();
          (*(v3 + 104))(v5, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v37 = sub_AB75C(v5, v36);

          (*(v3 + 8))(v5, v2);
          if (v37)
          {
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v38 = sub_106D20();
            sub_135C4(v38, qword_13AF90);

            v9 = sub_106D10();
            v10 = sub_106FC0();

            if (!os_log_type_enabled(v9, v10))
            {
              goto LABEL_136;
            }

            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v99 = a1;
            v100[0] = v12;
            *v11 = 136315138;
            sub_105E60();

            v39 = sub_106E30();
            v41 = sub_722E8(v39, v40, v100);

            *(v11 + 4) = v41;
            v16 = "Detected sleep attribute for UsoTask_enable_common_Alarm: %s";
            goto LABEL_135;
          }
        }
      }
    }

    else
    {
      sub_16F70(v100, &qword_137490, qword_108C80);
    }

    sub_14994(v102, v100, &qword_137490, qword_108C80);
    if (v101)
    {
      sub_105A60();
      if (swift_dynamicCast())
      {

        sub_105570();

        if (v100[0])
        {
          v42 = sub_ACBCC();
          (*(v3 + 104))(v5, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v43 = sub_AB75C(v5, v42);

          (*(v3 + 8))(v5, v2);
          if (v43)
          {
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v44 = sub_106D20();
            sub_135C4(v44, qword_13AF90);

            v9 = sub_106D10();
            v10 = sub_106FC0();

            if (!os_log_type_enabled(v9, v10))
            {
              goto LABEL_136;
            }

            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v99 = a1;
            v100[0] = v12;
            *v11 = 136315138;
            sub_105E60();

            v45 = sub_106E30();
            v47 = sub_722E8(v45, v46, v100);

            *(v11 + 4) = v47;
            v16 = "Detected sleep attribute for UsoTask_noVerb_common_Alarm: %s";
            goto LABEL_135;
          }
        }
      }
    }

    else
    {
      sub_16F70(v100, &qword_137490, qword_108C80);
    }

    sub_14994(v102, v100, &qword_137490, qword_108C80);
    if (v101)
    {
      sub_105990();
      if (swift_dynamicCast())
      {

        sub_1059F0();

        if (v100[0])
        {
          v48 = sub_ACBCC();
          (*(v3 + 104))(v5, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v49 = sub_AB75C(v5, v48);

          (*(v3 + 8))(v5, v2);
          if (v49)
          {
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v50 = sub_106D20();
            sub_135C4(v50, qword_13AF90);

            v9 = sub_106D10();
            v10 = sub_106FC0();

            if (!os_log_type_enabled(v9, v10))
            {
              goto LABEL_136;
            }

            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v99 = a1;
            v100[0] = v12;
            *v11 = 136315138;
            sub_105E60();

            v51 = sub_106E30();
            v53 = sub_722E8(v51, v52, v100);

            *(v11 + 4) = v53;
            v16 = "Detected sleep attribute for UsoTask_read_common_Alarm: %s";
            goto LABEL_135;
          }
        }
      }
    }

    else
    {
      sub_16F70(v100, &qword_137490, qword_108C80);
    }

    sub_14994(v102, v100, &qword_137490, qword_108C80);
    if (v101)
    {
      sub_105AD0();
      if (swift_dynamicCast())
      {

        sub_105C40();

        if (v100[0])
        {
          v54 = sub_ACBCC();
          (*(v3 + 104))(v5, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v55 = sub_AB75C(v5, v54);

          (*(v3 + 8))(v5, v2);
          if (v55)
          {
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v56 = sub_106D20();
            sub_135C4(v56, qword_13AF90);

            v9 = sub_106D10();
            v10 = sub_106FC0();

            if (!os_log_type_enabled(v9, v10))
            {
              goto LABEL_136;
            }

            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v99 = a1;
            v100[0] = v12;
            *v11 = 136315138;
            sub_105E60();

            v57 = sub_106E30();
            v59 = sub_722E8(v57, v58, v100);

            *(v11 + 4) = v59;
            v16 = "Detected sleep attribute for UsoTask_request_common_Alarm: %s";
            goto LABEL_135;
          }
        }
      }
    }

    else
    {
      sub_16F70(v100, &qword_137490, qword_108C80);
    }

    sub_14994(v102, v100, &qword_137490, qword_108C80);
    if (v101)
    {
      sub_105A90();
      if (swift_dynamicCast())
      {

        sub_1059F0();

        if (v100[0])
        {
          v60 = sub_ACBCC();
          (*(v3 + 104))(v5, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v61 = sub_AB75C(v5, v60);

          (*(v3 + 8))(v5, v2);
          if (v61)
          {
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v62 = sub_106D20();
            sub_135C4(v62, qword_13AF90);

            v9 = sub_106D10();
            v10 = sub_106FC0();

            if (!os_log_type_enabled(v9, v10))
            {
              goto LABEL_136;
            }

            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v99 = a1;
            v100[0] = v12;
            *v11 = 136315138;
            sub_105E60();

            v63 = sub_106E30();
            v65 = sub_722E8(v63, v64, v100);

            *(v11 + 4) = v65;
            v16 = "Detected sleep attribute for UsoTask_snooze_common_Alarm: %s";
            goto LABEL_135;
          }
        }
      }
    }

    else
    {
      sub_16F70(v100, &qword_137490, qword_108C80);
    }

    sub_14994(v102, v100, &qword_137490, qword_108C80);
    if (v101)
    {
      sub_105B80();
      if (swift_dynamicCast())
      {

        sub_1059F0();

        if (v100[0])
        {
          v66 = sub_ACBCC();
          (*(v3 + 104))(v5, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v67 = sub_AB75C(v5, v66);

          (*(v3 + 8))(v5, v2);
          if (v67)
          {
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v68 = sub_106D20();
            sub_135C4(v68, qword_13AF90);

            v9 = sub_106D10();
            v10 = sub_106FC0();

            if (!os_log_type_enabled(v9, v10))
            {
              goto LABEL_136;
            }

            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v99 = a1;
            v100[0] = v12;
            *v11 = 136315138;
            sub_105E60();

            v69 = sub_106E30();
            v71 = sub_722E8(v69, v70, v100);

            *(v11 + 4) = v71;
            v16 = "Detected sleep attribute for UsoTask_summarise_common_Alarm: %s";
            goto LABEL_135;
          }
        }
      }
    }

    else
    {
      sub_16F70(v100, &qword_137490, qword_108C80);
    }

    sub_14994(v102, v100, &qword_137490, qword_108C80);
    if (v101)
    {
      sub_105AA0();
      if (swift_dynamicCast())
      {

        sub_105C50();
        if (v100[0])
        {
          v72 = sub_ACBCC();
          (*(v3 + 104))(v5, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v21 = sub_AB75C(v5, v72);

          (*(v3 + 8))(v5, v2);
        }

        else
        {
          v21 = 0;
        }

        sub_105C60();

        if (v100[0])
        {
          v79 = sub_ACBCC();
          (*(v3 + 104))(v5, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v80 = sub_AB75C(v5, v79);

          (*(v3 + 8))(v5, v2);
          if (v80 || v21)
          {
LABEL_142:
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v81 = sub_106D20();
            sub_135C4(v81, qword_13AF90);

            v82 = sub_106D10();
            v83 = sub_106FC0();

            if (os_log_type_enabled(v82, v83))
            {
              v84 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v99 = a1;
              v100[0] = v85;
              *v84 = 136315138;
              sub_105E60();

              v86 = sub_106E30();
              v88 = sub_722E8(v86, v87, v100);

              *(v84 + 4) = v88;
              _os_log_impl(&dword_0, v82, v83, "Detected sleep attribute for UsoTask_update_common_Alarm: %s", v84, 0xCu);
              sub_2738(v85);
            }

            goto LABEL_137;
          }
        }

        else if (v21)
        {
          goto LABEL_142;
        }

        goto LABEL_153;
      }
    }

    else
    {
      sub_16F70(v100, &qword_137490, qword_108C80);
    }

    sub_14994(v102, v100, &qword_137490, qword_108C80);
    if (v101)
    {
      sub_105A30();
      if (swift_dynamicCast())
      {

        sub_1059F0();

        if (v100[0])
        {
          v73 = sub_ACBCC();
          (*(v3 + 104))(v5, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v2);
          v74 = sub_AB75C(v5, v73);

          (*(v3 + 8))(v5, v2);
          if (v74)
          {
            if (qword_136EE0 != -1)
            {
              swift_once();
            }

            v75 = sub_106D20();
            sub_135C4(v75, qword_13AF90);

            v9 = sub_106D10();
            v10 = sub_106FC0();

            if (!os_log_type_enabled(v9, v10))
            {
              goto LABEL_136;
            }

            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v99 = a1;
            v100[0] = v12;
            *v11 = 136315138;
            sub_105E60();

            v76 = sub_106E30();
            v78 = sub_722E8(v76, v77, v100);

            *(v11 + 4) = v78;
            v16 = "Detected sleep attribute for UsoTask_delete_common_Alarm: %s";
            goto LABEL_135;
          }
        }
      }
    }

    else
    {
      sub_16F70(v100, &qword_137490, qword_108C80);
    }

    LOBYTE(v21) = 0;
    goto LABEL_153;
  }

  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v17 = sub_106D20();
  sub_135C4(v17, qword_13AF90);
  v18 = sub_106D10();
  v19 = sub_106FA0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "genericTaskHasSleepAttribute: Input task was nil", v20, 2u);
  }

  LOBYTE(v21) = 0;
  return v21;
}

uint64_t sub_F91EC(uint64_t a1)
{
  v2 = sub_106200();
  __chkstk_darwin(v2 - 8);
  v3 = sub_105590();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_F76AC(a1);
  result = sub_F5814(v7);
  if (result)
  {
    return result;
  }

  sub_105940();
  sub_14994(v25, v24, &qword_137490, qword_108C80);
  if (!v24[3])
  {
    sub_16F70(v25, &qword_137490, qword_108C80);
    v22 = v24;
LABEL_13:
    sub_16F70(v22, &qword_137490, qword_108C80);
    return 0;
  }

  sub_105A20();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = v25;
    goto LABEL_13;
  }

  sub_105930();

  if (!v24[0])
  {
    sub_16F70(v25, &qword_137490, qword_108C80);

    return 0;
  }

  v9 = sub_ACBCC();
  (*(v4 + 104))(v6, enum case for UsoEntity_appleAlarm_AlarmAttribute.DefinedValues.appleAlarm_AlarmAttribute_AlarmAttributesSleep(_:), v3);
  v10 = sub_AB75C(v6, v9);

  (*(v4 + 8))(v6, v3);
  if (!v10)
  {
    sub_16F70(v25, &qword_137490, qword_108C80);

    return 0;
  }

  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v11 = sub_106D20();
  sub_135C4(v11, qword_13AF90);

  v12 = sub_106D10();
  v13 = sub_106FC0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23[1] = a1;
    v24[0] = v15;
    *v14 = 136315138;

    sub_25E4(&qword_13B148, &qword_10BC50);
    v16 = sub_106E30();
    v18 = sub_722E8(v16, v17, v24);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v12, v13, "Detected sleep attribute in create: %s", v14, 0xCu);
    sub_2738(v15);
  }

  type metadata accessor for CreateAlarmCATs_Async(0);
  sub_1061E0();
  v19 = sub_1060D0();
  type metadata accessor for CreateAlarmCATPatternsExecutor(0);
  sub_1061E0();
  v20 = sub_1060D0();
  v24[0] = v19;
  v24[1] = v20;
  sub_F9818();
  v21 = sub_104B30();

  sub_16F70(v25, &qword_137490, qword_108C80);
  return v21;
}

uint64_t sub_F9670(uint64_t a1)
{
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v2 = sub_106D20();
  sub_135C4(v2, qword_13AF90);
  v3 = sub_106D10();
  v4 = sub_106FC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "AlarmFlowFactory: Testing for qualified AlarmFlowFactory.getUnsupportedFlow()", v5, 2u);
  }

  return sub_F91EC(a1);
}

unint64_t sub_F9770()
{
  result = qword_13B128;
  if (!qword_13B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13B128);
  }

  return result;
}

unint64_t sub_F97C4()
{
  result = qword_13B138;
  if (!qword_13B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13B138);
  }

  return result;
}

unint64_t sub_F9818()
{
  result = qword_13B140;
  if (!qword_13B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13B140);
  }

  return result;
}

uint64_t sub_F986C(uint64_t a1)
{
  v34 = a1;
  v38 = sub_25E4(&qword_13B188, &qword_10BC88);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v30 - v1;
  v2 = sub_106630();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_25E4(&qword_13B190, &qword_10BC90);
  v33 = *(v37 - 8);
  v6 = __chkstk_darwin(v37);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v30 - v8;
  v10 = sub_25E4(&qword_13B198, &qword_10BC98);
  v11 = __chkstk_darwin(v10);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  if (qword_136EE0 != -1)
  {
    swift_once();
  }

  v15 = sub_106D20();
  sub_135C4(v15, qword_13AF90);
  v16 = sub_106D10();
  v17 = sub_106FC0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "AlarmFlowFactory: making dismissAlarmFlow.", v18, 2u);
  }

  sub_106560();
  sub_106550();
  sub_106540();

  v19 = *(v10 + 36);
  v20 = *(v3 + 16);
  v30 = v10;
  v21 = v34;
  v20(&v14[v19], v34, v2);
  (*(v3 + 56))(&v14[v19], 0, 1, v2);
  sub_106550();
  sub_106540();

  v20(v5, v21, v2);
  v22 = v9;
  sub_26FE0(v39, v5);
  v23 = v33;
  v24 = v37;
  (*(v33 + 16))(v31, v22, v37);
  sub_25E4(&qword_13B1A0, &qword_10BCA0);
  swift_allocObject();
  sub_104B10();
  sub_14994(v14, v32, &qword_13B198, &qword_10BC98);
  sub_B880C(&qword_13B1A8, &qword_13B198, &qword_10BC98, &unk_10BDF8);

  v25 = v35;
  sub_104EA0();
  v26 = v38;
  v27 = sub_104E80();
  (*(v36 + 8))(v25, v26);
  v39[0] = v27;
  sub_25E4(&qword_13B1B0, &qword_10BCA8);
  sub_B880C(&qword_13B1B8, &qword_13B1B0, &qword_10BCA8, &protocol conformance descriptor for AnyValueFlow<A>);
  v28 = sub_104B30();

  (*(v23 + 8))(v22, v24);
  sub_16F70(v14, &qword_13B198, &qword_10BC98);
  return v28;
}

uint64_t sub_F9DEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_F9E3C(uint64_t a1)
{
  sub_1B2C0();
  if (v1 <= 0x3F)
  {
    sub_B9880(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_F9ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25E4(&qword_1374F0, &qword_1080F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_F9FA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_25E4(&qword_1374F0, &qword_1080F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_FA06C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13B200);
  sub_135C4(v0, qword_13B200);
  return sub_106A80();
}

uint64_t sub_FA0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_FA0DC, 0, 0);
}

uint64_t sub_FA0DC()
{
  if (qword_136EE8 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13B200);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AlarmIntents.FlowStrategy.makeIntentExecutionBehavior is called.", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  v9 = sub_169D8(v8, v7, v5 + *(v6 + 36));
  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_FA214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v41 = sub_105380();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25E4(&unk_1374C0, &unk_1087B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v10 = sub_1053E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_136EE8 != -1)
  {
    swift_once();
  }

  v40 = v5;
  v14 = sub_106D20();
  sub_135C4(v14, qword_13B200);
  v15 = sub_106D10();
  v16 = sub_106FC0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "Base AlarmIntents.FlowStrategy.actionForInput() called..", v17, 2u);
  }

  sub_105360();
  v18 = *(a2 + 16);
  v19 = *(a2 + 36);
  v20 = v42;
  v21 = sub_14F94(v13, v18, v42 + v19);
  (*(v11 + 8))(v13, v10);
  if (v21)
  {
    v23 = v39;
    v22 = v40;
    v24 = v41;
    (*(v40 + 16))(v39, a1, v41);
    v25 = sub_106D10();
    v26 = sub_106FB0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v22;
      v28 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = v18;
      v45 = v42;
      *v28 = 136315394;
      swift_getMetatypeMetadata();
      v29 = sub_106E30();
      v31 = sub_722E8(v29, v30, &v45);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      sub_105360();
      v32 = sub_106E30();
      v34 = v33;
      (*(v27 + 8))(v23, v24);
      v35 = sub_722E8(v32, v34, &v45);

      *(v28 + 14) = v35;
      _os_log_impl(&dword_0, v25, v26, "Current intent is incompatible with new input in makeIntentExecutionBehavior. Current Intent: %s, parse: %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v22 + 8))(v23, v24);
    }

    return sub_104E60();
  }

  else
  {
    v36 = sub_106450();
    (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
    sub_C140(a1, v20 + v19, 0, v9, v18, v43);
    return sub_16F70(v9, &unk_1374C0, &unk_1087B0);
  }
}

uint64_t sub_FA6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_56FA4;

  return sub_FAD60(a1, a3);
}

uint64_t sub_FA780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CE64;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_FA844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1CE64;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_FA910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1CE64;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_FA9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1CE64;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_FAAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1CA94;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_FAB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1CE64;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_FAC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_32420;

  return sub_FA0B8(a1, a2, a3);
}

uint64_t sub_FAD60(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1053E0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = sub_1062B0();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_FAE8C, 0, 0);
}

uint64_t sub_FAE8C()
{
  v58 = v0;
  if (qword_136EE8 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13B200);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Base AlarmIntents.FlowStrategy.makeIntentFromParse() called.", v4, 2u);
  }

  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);

  v8 = sub_579C(v7, v5 + *(v6 + 36));
  if (v8)
  {
    v9 = v8;
    v10 = *(*(v0 + 24) + 16);
    v11 = swift_dynamicCastUnknownClass();
    if (v11)
    {
      v12 = v11;
      v13 = objc_allocWithZone(_INPBIntentMetadata);
      v14 = v9;
      v15 = [v13 init];
      [v12 _setMetadata:v15];

      v16 = [v12 _metadata];
      if (v16)
      {
        v17 = v16;
        v19 = *(v0 + 80);
        v18 = *(v0 + 88);
        v20 = *(v0 + 72);
        (*(v19 + 104))(v18, enum case for SiriTimeAppBundleId.alarmExtension(_:), v20);
        sub_1062A0();
        (*(v19 + 8))(v18, v20);
        v21 = sub_106E10();

        [v17 setSystemExtensionBundleId:v21];
      }

      v22 = sub_107070();

      v23 = sub_107060();

      v24 = *(v0 + 8);

      return v24(v23);
    }

    v40 = v9;
    v41 = sub_106D10();
    v42 = sub_106FB0();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v57[0] = v45;
      *v43 = 138412546;
      *(v43 + 4) = v40;
      *v44 = v9;
      *(v43 + 12) = 2080;
      v46 = v40;
      v47 = sub_107480();
      v49 = sub_722E8(v47, v48, v57);

      *(v43 + 14) = v49;
      _os_log_impl(&dword_0, v41, v42, "Intent: %@ doesn't match intentType (we shouldn't ever get here): %s", v43, 0x16u);
      sub_16F70(v44, &qword_137578, &unk_10B4E0);

      sub_2738(v45);
    }

    v50 = *(v0 + 24);
    *(v0 + 97) = 0;
    type metadata accessor for AlarmIntents.FlowError(0, v10, *(v50 + 24), v51);
    swift_getWitnessTable();
    swift_allocError();
    sub_1064E0();
    swift_willThrow();
  }

  else
  {
    v26 = *(*(v0 + 48) + 16);
    v26(*(v0 + 64), *(v0 + 16), *(v0 + 40));
    v27 = sub_106D10();
    v28 = sub_106FB0();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 64);
    if (v29)
    {
      v31 = *(v0 + 48);
      v32 = *(v0 + 56);
      v33 = *(v0 + 40);
      v34 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57[0] = v56;
      *v34 = 136315138;
      v26(v32, v30, v33);
      v35 = sub_106E30();
      v37 = v36;
      (*(v31 + 8))(v30, v33);
      v38 = sub_722E8(v35, v37, v57);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_0, v27, v28, "Failed to parse intent from parse in makeIntentFromParse %s", v34, 0xCu);
      sub_2738(v56);
    }

    else
    {
      v52 = *(v0 + 40);
      v53 = *(v0 + 48);

      (*(v53 + 8))(v30, v52);
    }

    v54 = *(v0 + 24);
    *(v0 + 96) = 0;
    type metadata accessor for AlarmIntents.FlowError(0, *(v54 + 16), *(v54 + 24), v39);
    swift_getWitnessTable();
    swift_allocError();
    sub_1064E0();
    swift_willThrow();
  }

  v55 = *(v0 + 8);

  return v55();
}

uint64_t type metadata accessor for DeleteAlarmCATsSimple(uint64_t a1)
{
  result = qword_13B298;
  if (!qword_13B298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_FB598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_2A84(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_106170();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v12;
}

uint64_t sub_FB720(uint64_t a1, uint64_t a2)
{
  v3 = sub_106200();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v4 + 16))(v6, a2, v3);
  v7 = sub_106180();
  (*(v4 + 8))(a2, v3);
  return v7;
}

char *UndoCreateAlarmFlow.__allocating_init()()
{
  sub_106AC0();
  v0 = sub_106AB0();
  type metadata accessor for UndoCreateAlarmFlow(0);
  v1 = swift_allocObject();

  return sub_F5204(v0, v1);
}

uint64_t sub_FB89C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13B2E8);
  sub_135C4(v0, qword_13B2E8);
  return sub_106A80();
}

char *UndoCreateAlarmFlow.__allocating_init(manager:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_2B610(a1, v3);
  v6 = sub_1017D4(v5, v1, v3, v4);
  sub_2738(a1);
  return v6;
}

uint64_t type metadata accessor for UndoCreateAlarmFlow(uint64_t a1)
{
  result = qword_13B330;
  if (!qword_13B330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *UndoCreateAlarmFlow.init(manager:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_2B610(a1, v3);
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_101628(v7, v1, v3, v4);
  sub_2738(a1);
  return v9;
}

uint64_t UndoCreateAlarmFlow.on(input:)()
{
  v0 = sub_25E4(&qword_137FD0, &unk_1087C0);
  __chkstk_darwin(v0 - 8);
  v76 = &v72 - v1;
  v2 = sub_1065E0();
  v79 = *(v2 - 8);
  v80 = v2;
  __chkstk_darwin(v2);
  v78 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25E4(&unk_1374A0, &qword_10BB30);
  __chkstk_darwin(v4 - 8);
  v84 = &v72 - v5;
  v6 = sub_106960();
  v7 = *(v6 - 8);
  v85 = v6;
  v86 = v7;
  v8 = __chkstk_darwin(v6);
  v81 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v83 = &v72 - v10;
  v11 = sub_1065A0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v82 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v72 - v15;
  v17 = sub_1053C0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1053E0();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_105360();
  if ((*(v22 + 88))(v24, v21) != enum case for Parse.directInvocation(_:))
  {
    (*(v22 + 8))(v24, v21);
    return 0;
  }

  (*(v22 + 96))(v24, v21);
  (*(v18 + 32))(v20, v24, v17);
  v25 = sub_1053B0();
  v26 = v17;
  if (!v25)
  {
    (*(v18 + 8))(v20, v17);
    return 0;
  }

  v27 = v25;
  v75 = v20;
  v28 = *(v12 + 104);
  v28(v16, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v11);
  v29 = sub_106590();
  v31 = v30;
  v74 = *(v12 + 8);
  v74(v16, v11);
  if (!*(v27 + 16))
  {

    goto LABEL_11;
  }

  v32 = sub_32658(v29, v31);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
LABEL_11:

    (*(v18 + 8))(v75, v26);
    return 0;
  }

  sub_135FC(*(v27 + 56) + 32 * v32, v89);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v18 + 8))(v75, v26);

    return 0;
  }

  v35 = v28;
  v73 = v26;
  v36 = v84;
  sub_106940();
  v37 = v85;
  v38 = v86;
  if ((*(v86 + 48))(v36, 1, v85) == 1)
  {
    (*(v18 + 8))(v75, v73);

    sub_16F70(v36, &unk_1374A0, &qword_10BB30);
    return 0;
  }

  v40 = v36;
  v41 = v83;
  (*(v38 + 32))(v83, v40, v37);
  v42 = v82;
  v35(v82, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:), v11);
  v43 = sub_106590();
  v44 = v27;
  v46 = v45;
  v74(v42, v11);
  if (!*(v44 + 16))
  {

    goto LABEL_21;
  }

  v47 = sub_32658(v43, v46);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
LABEL_21:

    v60 = v75;
    (*(v86 + 8))(v41, v37);
    (*(v18 + 8))(v60, v73);
    return 0;
  }

  sub_135FC(*(v44 + 56) + 32 * v47, v89);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v86 + 8))(v41, v37);
    (*(v18 + 8))(v75, v73);
    return 0;
  }

  v84 = v44;
  v50 = v88;
  v82 = v87;
  v51 = sub_1053A0();
  v53 = v52;
  v54 = v78;
  v55 = v79;
  v56 = v80;
  (*(v79 + 104))(v78, enum case for DirectInvocationUtils.Alarm.URI.undo(_:), v80);
  v57 = sub_1065D0();
  v59 = v58;
  (*(v55 + 8))(v54, v56);
  if (v51 == v57 && v53 == v59)
  {
  }

  else
  {
    v61 = sub_107370();

    if ((v61 & 1) == 0)
    {

      v63 = *(v86 + 8);
      goto LABEL_36;
    }
  }

  (*(v86 + 104))(v81, enum case for AlarmNLv4Constants.AlarmVerb.delete(_:), v85);
  sub_1019E4(&unk_13AFF0, &type metadata accessor for AlarmNLv4Constants.AlarmVerb, &protocol conformance descriptor for AlarmNLv4Constants.AlarmVerb);
  sub_106EB0();
  sub_106EB0();
  if (v89[0] == v87 && v89[1] == v88)
  {
    v62 = 1;
  }

  else
  {
    v62 = sub_107370();
  }

  v63 = *(v86 + 8);
  v63(v81, v85);

  if ((v62 & 1) == 0)
  {

LABEL_36:
    v71 = v73;
    v63(v83, v85);
    (*(v18 + 8))(v75, v71);
    return 0;
  }

  if (qword_136EF0 != -1)
  {
    swift_once();
  }

  v64 = sub_106D20();
  sub_135C4(v64, qword_13B2E8);
  v65 = sub_106D10();
  v66 = sub_106FC0();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_0, v65, v66, "UndoCreateAlarmFlow: accepting input.", v67, 2u);
  }

  v68 = v77;
  *(v77 + 96) = v82;
  *(v68 + 104) = v50;

  v69 = v76;
  sub_20368(v84, v76);

  v63(v83, v85);
  (*(v18 + 8))(v75, v73);
  v70 = OBJC_IVAR____TtC15AlarmFlowPlugin19UndoCreateAlarmFlow_followupPluginAction;
  swift_beginAccess();
  sub_32EEC(v69, v68 + v70);
  swift_endAccess();
  return 1;
}

uint64_t UndoCreateAlarmFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UndoCreateAlarmFlow(0);
  sub_1019E4(&unk_13B000, type metadata accessor for UndoCreateAlarmFlow, &protocol conformance descriptor for UndoCreateAlarmFlow);
  return sub_104B50();
}

uint64_t UndoCreateAlarmFlow.execute()(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  sub_25E4(&qword_137FD0, &unk_1087C0);
  v2[29] = swift_task_alloc();
  v3 = sub_104E10();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  v4 = sub_1062D0();
  v2[33] = v4;
  v2[34] = *(v4 - 8);
  v2[35] = swift_task_alloc();
  sub_25E4(&qword_137DB8, &unk_1085B0);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v5 = sub_104D60();
  v2[38] = v5;
  v2[39] = *(v5 - 8);
  v2[40] = swift_task_alloc();
  v6 = sub_106D20();
  v2[41] = v6;
  v2[42] = *(v6 - 8);
  v2[43] = swift_task_alloc();
  v7 = sub_106300();
  v2[44] = v7;
  v2[45] = *(v7 - 8);
  v2[46] = swift_task_alloc();
  v8 = sub_106320();
  v2[47] = v8;
  v2[48] = *(v8 - 8);
  v2[49] = swift_task_alloc();
  v9 = sub_104FF0();
  v2[50] = v9;
  v2[51] = *(v9 - 8);
  v2[52] = swift_task_alloc();
  v10 = sub_104670();
  v2[53] = v10;
  v2[54] = *(v10 - 8);
  v2[55] = swift_task_alloc();
  sub_25E4(&qword_137FE8, &unk_1087E0);
  v2[56] = swift_task_alloc();
  sub_25E4(&qword_137FF0, &unk_10C0F0);
  v2[57] = swift_task_alloc();
  sub_25E4(&qword_137FF8, &qword_1087F0);
  v2[58] = swift_task_alloc();
  v11 = sub_104DE0();
  v2[59] = v11;
  v2[60] = *(v11 - 8);
  v2[61] = swift_task_alloc();

  return _swift_task_switch(sub_FCA74, 0, 0);
}

uint64_t sub_FCA74()
{
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[59];
  v4 = enum case for ActivityType.correction(_:);
  v5 = *(v2 + 104);
  v0[62] = v5;
  v0[63] = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v1, v4, v3);
  if (qword_136EF8 != -1)
  {
    swift_once();
  }

  v6 = v0[58];
  v7 = sub_1062E0();
  v0[64] = sub_135C4(v7, qword_13BA50);
  v8 = sub_104C40();
  v0[65] = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v0[66] = v10;
  v0[67] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v6, 1, 1, v8);
  if (qword_136F00 != -1)
  {
    swift_once();
  }

  v12 = v0[60];
  v11 = v0[61];
  v13 = v0[58];
  v15 = v0[56];
  v14 = v0[57];
  v17 = v0[33];
  v16 = v0[34];
  v41 = v0[28];
  v42 = v0[59];
  v18 = sub_1062F0();
  v0[68] = v18;
  v19 = sub_135C4(v18, qword_13BA68);
  v0[69] = v19;
  v20 = *(v18 - 8);
  v21 = *(v20 + 16);
  v0[70] = v21;
  v0[71] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v14, v19, v18);
  v22 = *(v20 + 56);
  v0[72] = v22;
  v0[73] = (v20 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v22(v14, 0, 1, v18);
  v23 = *(v16 + 56);
  v0[74] = v23;
  v0[75] = (v16 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v23(v15, 1, 1, v17);
  sub_1062C0();
  sub_16F70(v15, &qword_137FE8, &unk_1087E0);
  sub_16F70(v14, &qword_137FF0, &unk_10C0F0);
  sub_16F70(v13, &qword_137FF8, &qword_1087F0);
  v24 = *(v12 + 8);
  v0[76] = v24;
  v0[77] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v11, v42);
  v25 = *(v41 + 104);
  v0[78] = v25;
  if (v25)
  {
    v26 = v0[28];
    v27 = *(v26 + 96);

    v28 = swift_task_alloc();
    v0[79] = v28;
    v28[2] = v27;
    v28[3] = v25;
    v28[4] = v26;
    v29 = swift_task_alloc();
    v0[80] = v29;
    v30 = sub_25E4(&qword_138870, qword_10BE90);
    *v29 = v0;
    v29[1] = sub_FCF8C;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 25, 0, 0, 0xD000000000000010, 0x800000000010E920, sub_1018C4, v28, v30);
  }

  else
  {
    if (qword_136EF0 != -1)
    {
      swift_once();
    }

    sub_135C4(v0[41], qword_13B2E8);
    v31 = sub_106D10();
    v32 = sub_106FB0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "UndoCreateAlarmFlow: No alarm id to delete! This should never happen.", v33, 2u);
    }

    v35 = v0[34];
    v34 = v0[35];
    v36 = v0[33];

    (*(v35 + 104))(v34, enum case for SiriTimeEventSender.ReasonDescription.noAlarmToDelete(_:), v36);
    v37 = swift_task_alloc();
    v0[95] = v37;
    *v37 = v0;
    v37[1] = sub_FE9E4;
    v38 = v0[35];
    v39 = v0[27];

    return sub_1004F4(v39, v38);
  }
}

uint64_t sub_FCF8C()
{

  return _swift_task_switch(sub_FD0A4, 0, 0);
}

uint64_t sub_FD0A4()
{
  v1 = v0[25];
  v0[81] = v1;
  if (v1)
  {
    v2 = v0[28];
    v3 = swift_task_alloc();
    v0[82] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = swift_task_alloc();
    v0[83] = v4;
    *v4 = v0;
    v4[1] = sub_FD300;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 98, 0, 0, 0xD000000000000013, 0x800000000010E940, sub_1018D0, v3, &type metadata for Bool);
  }

  else
  {

    if (qword_136EF0 != -1)
    {
      swift_once();
    }

    sub_135C4(v0[41], qword_13B2E8);
    v5 = sub_106D10();
    v6 = sub_106FB0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "UndoCreateAlarmFlow: No alarm id to delete! This should never happen.", v7, 2u);
    }

    v9 = v0[34];
    v8 = v0[35];
    v10 = v0[33];

    (*(v9 + 104))(v8, enum case for SiriTimeEventSender.ReasonDescription.noAlarmToDelete(_:), v10);
    v11 = swift_task_alloc();
    v0[95] = v11;
    *v11 = v0;
    v11[1] = sub_FE9E4;
    v12 = v0[35];
    v13 = v0[27];

    return sub_1004F4(v13, v12);
  }
}

uint64_t sub_FD300()
{

  return _swift_task_switch(sub_FD418, 0, 0);
}

uint64_t sub_FD418(uint64_t a1)
{
  v52 = v1;
  if (*(v1 + 784) == 1)
  {
    v3 = *(v1 + 432);
    v2 = *(v1 + 440);
    v4 = *(v1 + 424);
    sub_106210();
    v5 = sub_75DD4(0, v2, 0);
    *(v1 + 672) = v5;
    (*(v3 + 8))(v2, v4);
    v6 = *(v1 + 648);
    if (v5)
    {
      v50 = v5;
      v7 = *(v1 + 416);

      sub_25E4(&qword_137DD0, &unk_108920);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_108470;
      *(inited + 32) = v6;
      v9 = v6;
      sub_BD4A4(inited, v7);
      swift_setDeallocating();
      swift_arrayDestroy();
      if (qword_136EF0 != -1)
      {
        swift_once();
      }

      v10 = sub_135C4(*(v1 + 328), qword_13B2E8);
      *(v1 + 680) = v10;
      v11 = sub_106D10();
      v12 = sub_106FC0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_0, v11, v12, "UndoCreateAlarmFlow: RF path for undoing a create alarm.", v13, 2u);
      }

      v15 = *(v1 + 360);
      v14 = *(v1 + 368);
      v17 = *(v1 + 344);
      v16 = *(v1 + 352);
      v19 = *(v1 + 328);
      v18 = *(v1 + 336);

      (*(v15 + 104))(v14, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v16);
      (*(v18 + 16))(v17, v10, v19);
      mach_absolute_time();
      sub_106330();
      sub_25E4(&qword_137880, &unk_108290);
      v20 = swift_allocObject();
      *(v1 + 688) = v20;
      *(v20 + 16) = xmmword_1094F0;
      *(v20 + 32) = 0x6D72616C61;
      *(v20 + 40) = 0xE500000000000000;
      *(v20 + 72) = type metadata accessor for AlarmAlarm(0);
      *(v20 + 80) = 0xD000000000000014;
      *(v20 + 88) = 0x800000000010CA10;
      *(v20 + 120) = &type metadata for Bool;
      v49 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      *(v20 + 48) = v50;
      *(v20 + 96) = 0;
      swift_retain_n();
      v21 = swift_task_alloc();
      *(v1 + 696) = v21;
      *v21 = v1;
      v21[1] = sub_FDC14;

      return v49(0xD000000000000019, 0x800000000010E4D0, v20);
    }

    else
    {
      v29 = sub_106750();
      *(v1 + 40) = v29;
      *(v1 + 48) = &protocol witness table for ABCReport;
      v30 = sub_1A924((v1 + 16));
      *v30 = 0xD000000000000013;
      v30[1] = 0x800000000010E960;
      v31 = enum case for UnhandledAbortSubtype.expectedObject(_:);
      v32 = sub_106680();
      (*(*(v32 - 8) + 104))(v30, v31, v32);
      (*(*(v29 - 8) + 104))(v30, enum case for ABCReport.unhandledAbort(_:), v29);
      sub_1064D0();
      sub_2738((v1 + 16));
      sub_107190(87);
      v54._countAndFlagsBits = 0xD000000000000055;
      v54._object = 0x800000000010E980;
      sub_106E80(v54);
      v33 = [v6 description];
      v34 = sub_106E20();
      v36 = v35;

      v55._countAndFlagsBits = v34;
      v55._object = v36;
      sub_106E80(v55);

      v37 = qword_136EF0;

      if (v37 != -1)
      {
        swift_once();
      }

      v38 = *(v1 + 328);
      v39 = *(v1 + 336);
      v41 = *(v1 + 288);
      v40 = *(v1 + 296);
      v42 = sub_135C4(v38, qword_13B2E8);
      (*(v39 + 16))(v40, v42, v38);
      (*(v39 + 56))(v40, 0, 1, v38);
      sub_14994(v40, v41, &qword_137DB8, &unk_1085B0);
      if ((*(v39 + 48))(v41, 1, v38) == 1)
      {
        sub_16F70(*(v1 + 288), &qword_137DB8, &unk_1085B0);
      }

      else
      {

        v43 = sub_106D10();
        v44 = sub_106FB0();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v45 = 136315650;
          v46 = sub_1071A0();
          v48 = sub_722E8(v46, v47, &v51);

          *(v45 + 4) = v48;
          *(v45 + 12) = 2048;
          *(v45 + 14) = 84;
          *(v45 + 22) = 2080;
          *(v45 + 24) = sub_722E8(0, 0xE000000000000000, &v51);
          _os_log_impl(&dword_0, v43, v44, "FatalError at %s:%lu - %s", v45, 0x20u);
          swift_arrayDestroy();
        }

        (*(*(v1 + 336) + 8))(*(v1 + 288), *(v1 + 328));
      }

      sub_104C90();
      return sub_107250();
    }
  }

  else
  {
    v24 = *(v1 + 272);
    v23 = *(v1 + 280);
    v25 = *(v1 + 264);

    (*(v24 + 104))(v23, enum case for SiriTimeEventSender.ReasonDescription.failedToDeleteAlarm(_:), v25);
    v26 = swift_task_alloc();
    *(v1 + 752) = v26;
    *v26 = v1;
    v26[1] = sub_FE38C;
    v27 = *(v1 + 280);
    v28 = *(v1 + 216);

    return sub_1004F4(v28, v27);
  }
}

uint64_t sub_FDC14(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 704) = v1;

  if (v1)
  {
    v5 = sub_FDFB0;
  }

  else
  {
    *(v4 + 712) = a1;
    v5 = sub_FDD60;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_FDD60()
{

  sub_104CF0();
  v1 = swift_task_alloc();
  v0[90] = v1;
  *v1 = v0;
  v1[1] = sub_FDE20;
  v2 = v0[52];
  v3 = v0[49];
  v4 = v0[40];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v0 + 12, v4, v2, v3, 0);
}

uint64_t sub_FDE20()
{
  v2 = *(*v1 + 712);
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 312);
  v5 = *(*v1 + 304);
  *(*v1 + 728) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v6 = sub_FEFAC;
  }

  else
  {
    v6 = sub_FE1B4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_FDFB0()
{
  v17 = v0;
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];

  (*(v2 + 8))(v1, v3);
  v4 = v0[88];
  v0[96] = v4;
  swift_errorRetain();
  v5 = sub_106D10();
  v6 = sub_106FB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v0[26] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v9 = sub_106E30();
    v11 = sub_722E8(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "UndoCreateAlarmFlow: Error in RF path: %s", v7, 0xCu);
    sub_2738(v8);
  }

  (*(v0[34] + 104))(v0[35], enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v0[33]);
  v12 = swift_task_alloc();
  v0[97] = v12;
  *v12 = v0;
  v12[1] = sub_FECF0;
  v13 = v0[35];
  v14 = v0[27];

  return sub_1004F4(v14, v13);
}

uint64_t sub_FE1B4(uint64_t a1)
{
  sub_105180();
  v2 = v1[20];
  v3 = v1[21];
  sub_1A8E0(v1 + 17, v2);
  v4 = swift_task_alloc();
  v1[92] = v4;
  *v4 = v1;
  v4[1] = sub_FE278;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v1 + 12, v2, v3);
}

uint64_t sub_FE278()
{
  *(*v1 + 744) = v0;

  if (v0)
  {
    v2 = sub_FF1A0;
  }

  else
  {
    v2 = sub_FE614;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_FE38C()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_FE4E4, 0, 0);
}

uint64_t sub_FE4E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_FE614()
{
  v33 = v0[76];
  v28 = v0[74];
  v27 = v0[72];
  v26 = v0[70];
  v24 = v0[68];
  v25 = v0[69];
  v22 = v0[66];
  v21 = v0[65];
  v18 = v0[61];
  v1 = v0[58];
  v19 = v0[59];
  v20 = v0[62];
  v3 = v0[56];
  v2 = v0[57];
  v5 = v0[51];
  v4 = v0[52];
  v7 = v0[49];
  v6 = v0[50];
  v8 = v0[47];
  v9 = v0[48];
  v23 = v0[33];
  v31 = v0[31];
  v32 = v0[30];
  v29 = v0[28];
  v30 = v0[29];

  sub_2738(v0 + 12);
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  sub_2738(v0 + 17);
  v20(v18, enum case for ActivityType.completed(_:), v19);
  v22(v1, 1, 1, v21);
  v26(v2, v25, v24);
  v27(v2, 0, 1, v24);
  v28(v3, 1, 1, v23);
  sub_1062C0();
  sub_16F70(v3, &qword_137FE8, &unk_1087E0);
  sub_16F70(v2, &qword_137FF0, &unk_10C0F0);
  sub_16F70(v1, &qword_137FF8, &qword_1087F0);
  v33(v18, v19);
  v10 = OBJC_IVAR____TtC15AlarmFlowPlugin19UndoCreateAlarmFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v29 + v10, v30, &qword_137FD0, &unk_1087C0);
  v11 = (*(v31 + 48))(v30, 1, v32);
  v12 = v0[81];
  if (v11 == 1)
  {
    sub_16F70(v0[29], &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v14 = v0[31];
    v13 = v0[32];
    v15 = v0[30];
    (*(v14 + 32))(v13, v0[29], v15);
    sub_104F10();

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_FE9E4()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_FECF0()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_FEE48, 0, 0);
}

uint64_t sub_FEE48()
{
  v1 = v0[81];
  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[50];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_FEFAC()
{
  v14 = v0;
  (*(v0[48] + 8))(v0[49], v0[47]);
  v1 = v0[91];
  v0[96] = v1;
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v0[26] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "UndoCreateAlarmFlow: Error in RF path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  (*(v0[34] + 104))(v0[35], enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v0[33]);
  v9 = swift_task_alloc();
  v0[97] = v9;
  *v9 = v0;
  v9[1] = sub_FECF0;
  v10 = v0[35];
  v11 = v0[27];

  return sub_1004F4(v11, v10);
}

uint64_t sub_FF1A0()
{
  v17 = v0;
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  sub_2738(v0 + 12);
  (*(v2 + 8))(v1, v3);
  sub_2738(v0 + 17);
  v4 = v0[93];
  v0[96] = v4;
  swift_errorRetain();
  v5 = sub_106D10();
  v6 = sub_106FB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v0[26] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v9 = sub_106E30();
    v11 = sub_722E8(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "UndoCreateAlarmFlow: Error in RF path: %s", v7, 0xCu);
    sub_2738(v8);
  }

  (*(v0[34] + 104))(v0[35], enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v0[33]);
  v12 = swift_task_alloc();
  v0[97] = v12;
  *v12 = v0;
  v12[1] = sub_FECF0;
  v13 = v0[35];
  v14 = v0[27];

  return sub_1004F4(v14, v13);
}

uint64_t sub_FF3AC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v34 = a1;
  v7 = sub_25E4(&qword_138A30, &qword_109620);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v33 = &v30 - v9;
  v32 = sub_106D00();
  v10 = *(v32 - 8);
  __chkstk_darwin(v32);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_136EF0 != -1)
  {
    swift_once();
  }

  v13 = sub_106D20();
  sub_135C4(v13, qword_13B2E8);

  v14 = sub_106D10();
  v15 = sub_106FC0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v7;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = v10;
    v19 = a2;
    v20 = v18;
    v35[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_722E8(v19, a3, v35);
    _os_log_impl(&dword_0, v14, v15, "UndoCreateAlarmFlow.searchAlarm for %s", v17, 0xCu);
    sub_2738(v20);
    v10 = v30;

    v7 = v31;
  }

  sub_106A50();
  v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v22 = sub_106E10();
  v23 = sub_106E10();
  v24 = [v21 initWithIdentifier:v22 displayString:v23];

  sub_106FF0();
  sub_106CF0();
  sub_106CE0();
  (*(v10 + 8))(v12, v32);
  sub_262C(a4 + 56, v35);
  sub_1A8E0(v35, v35[3]);
  v25 = v33;
  (*(v8 + 16))(v33, v34, v7);
  v26 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  (*(v8 + 32))(v27 + v26, v25, v7);
  v28 = v24;

  sub_106B60();

  return sub_2738(v35);
}

uint64_t sub_FF7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v4 = sub_106990();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25E4(&qword_1381C8, &qword_109640);
  __chkstk_darwin(v7);
  v9 = (&v34 - v8);
  v10 = sub_106D00();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  sub_106CF0();
  sub_106CE0();
  (*(v11 + 8))(v13, v10);
  sub_14994(a1, v9, &qword_1381C8, &qword_109640);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    v27 = *v9;
    if (*v9 >> 62)
    {
      if (sub_107270() == 1)
      {
        result = sub_107270();
        if (result)
        {
          goto LABEL_9;
        }
      }
    }

    else if (*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)) == 1)
    {
LABEL_9:
      if ((v27 & 0xC000000000000001) != 0)
      {
        v28 = sub_1071C0();
      }

      else
      {
        if (!*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v28 = *(v27 + 32);
      }

      v29 = v28;

      v37[0] = v29;
LABEL_20:
      sub_25E4(&qword_138A30, &qword_109620);
      return sub_106F60();
    }

    if (qword_136EF0 != -1)
    {
      swift_once();
    }

    v30 = sub_106D20();
    sub_135C4(v30, qword_13B2E8);
    v31 = sub_106D10();
    v32 = sub_106FB0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "UndoCreateAlarmFlow: Alarm not found.", v33, 2u);
    }

    v37[0] = 0;
    goto LABEL_20;
  }

  v15 = v35;
  (*(v35 + 32))(v6, v9, v4);
  v16 = v4;
  v17 = v15;
  if (qword_136EF0 != -1)
  {
    swift_once();
  }

  v18 = sub_106D20();
  sub_135C4(v18, qword_13B2E8);
  v19 = sub_106D10();
  v20 = sub_106FB0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "UndoCreateAlarmFlow: Alarm search failure.", v21, 2u);
  }

  v37[0] = 0;
  sub_25E4(&qword_138A30, &qword_109620);
  sub_106F60();
  v22 = sub_106750();
  v37[3] = v22;
  v37[4] = &protocol witness table for ABCReport;
  v23 = sub_1A924(v37);
  sub_1019E4(&qword_1381C0, &type metadata accessor for AlarmOperationError, &protocol conformance descriptor for AlarmOperationError);
  swift_allocError();
  (*(v17 + 16))(v24, v6, v16);
  *v23 = sub_1045F0();
  v25 = enum case for ErrorSubType.managerReturnedError(_:);
  v26 = sub_106460();
  (*(*(v26 - 8) + 104))(v23, v25, v26);
  (*(*(v22 - 8) + 104))(v23, enum case for ABCReport.alarmUndoHandle(_:), v22);
  sub_1064D0();
  (*(v17 + 8))(v6, v16);
  sub_2738(v37);
}

uint64_t sub_FFD98(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = a3;
  v21 = a1;
  v4 = sub_25E4(&qword_13B468, &qword_10BF88);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - v6;
  v8 = sub_106D00();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FF0();
  sub_106CF0();
  sub_106CE0();
  (*(v9 + 8))(v11, v8);
  sub_262C(a2 + 56, v22);
  v19[2] = v22[4];
  v19[1] = sub_1A8E0(v22, v22[3]);
  sub_25E4(&qword_137DD0, &unk_108920);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_108470;
  v14 = v20;
  v13 = v21;
  *(v12 + 32) = v20;
  (*(v5 + 16))(v7, v13, v4);
  v15 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v5 + 32))(v16 + v15, v7, v4);
  v17 = v14;

  sub_106B40();

  return sub_2738(v22);
}

uint64_t sub_10003C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v4 = sub_106990();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25E4(&qword_1381C8, &qword_109640);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = sub_106D00();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  sub_106CF0();
  sub_106CE0();
  (*(v11 + 8))(v13, v10);
  sub_14994(a1, v9, &qword_1381C8, &qword_109640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = v28;
    (*(v28 + 32))(v6, v9, v4);
    v15 = v4;
    v16 = v14;
    if (qword_136EF0 != -1)
    {
      swift_once();
    }

    v17 = sub_106D20();
    sub_135C4(v17, qword_13B2E8);
    v18 = sub_106D10();
    v19 = sub_106FB0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "UndoCreateAlarmFlow: Failed to delete alarm.", v20, 2u);
    }

    LOBYTE(v30[0]) = 0;
    sub_25E4(&qword_13B468, &qword_10BF88);
    sub_106F60();
    v21 = sub_106750();
    v30[3] = v21;
    v30[4] = &protocol witness table for ABCReport;
    v22 = sub_1A924(v30);
    sub_1019E4(&qword_1381C0, &type metadata accessor for AlarmOperationError, &protocol conformance descriptor for AlarmOperationError);
    swift_allocError();
    (*(v16 + 16))(v23, v6, v15);
    *v22 = sub_1045F0();
    v24 = enum case for ErrorSubType.managerReturnedError(_:);
    v25 = sub_106460();
    (*(*(v25 - 8) + 104))(v22, v24, v25);
    (*(*(v21 - 8) + 104))(v22, enum case for ABCReport.alarmUndoHandle(_:), v21);
    sub_1064D0();
    (*(v16 + 8))(v6, v15);
    sub_2738(v30);
  }

  else
  {
    sub_16F70(v9, &qword_1381C8, &qword_109640);
    LOBYTE(v30[0]) = 1;
    sub_25E4(&qword_13B468, &qword_10BF88);
    return sub_106F60();
  }
}

uint64_t sub_1004F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_104FF0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_104D60();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for ErrorNotFoundParameters(0);
  v3[12] = swift_task_alloc();
  v6 = sub_106D20();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v7 = sub_106300();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v8 = sub_106320();
  v3[19] = v8;
  v3[20] = *(v8 - 8);
  v3[21] = swift_task_alloc();
  sub_25E4(&qword_137FE8, &unk_1087E0);
  v3[22] = swift_task_alloc();
  sub_25E4(&qword_137FF0, &unk_10C0F0);
  v3[23] = swift_task_alloc();
  sub_25E4(&qword_137FF8, &qword_1087F0);
  v3[24] = swift_task_alloc();
  v9 = sub_104DE0();
  v3[25] = v9;
  v3[26] = *(v9 - 8);
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_10085C, 0, 0);
}

uint64_t sub_10085C()
{
  (*(v0[26] + 104))(v0[27], enum case for ActivityType.failed(_:), v0[25]);
  if (qword_136EF8 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_1062E0();
  sub_135C4(v2, qword_13BA50);
  v3 = enum case for SiriKitReliabilityCodes.genericError(_:);
  v4 = sub_104C40();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  if (qword_136F00 != -1)
  {
    swift_once();
  }

  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[3];
  v13 = sub_1062F0();
  v14 = sub_135C4(v13, qword_13BA68);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v10, v14, v13);
  (*(v15 + 56))(v10, 0, 1, v13);
  v16 = sub_1062D0();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, v12, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  sub_1062C0();
  sub_16F70(v11, &qword_137FE8, &unk_1087E0);
  sub_16F70(v10, &qword_137FF0, &unk_10C0F0);
  sub_16F70(v9, &qword_137FF8, &qword_1087F0);
  (*(v7 + 8))(v6, v8);
  if (qword_136EF0 != -1)
  {
    swift_once();
  }

  v18 = sub_135C4(v0[13], qword_13B2E8);
  v0[28] = v18;
  v34 = v18;
  v19 = sub_106D10();
  v20 = sub_106FC0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "UndoCreateAlarmFlow: Hitting alarm RF codepath for UndoCreateAlarmFlow error case.", v21, 2u);
  }

  v22 = v0[17];
  v23 = v0[18];
  v25 = v0[15];
  v24 = v0[16];
  v27 = v0[13];
  v26 = v0[14];
  v29 = v0[11];
  v28 = v0[12];

  (*(v22 + 104))(v23, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v24);
  (*(v26 + 16))(v25, v34, v27);
  mach_absolute_time();
  sub_106330();
  v30 = sub_106160();
  (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
  *(v28 + v29[5]) = 0;
  *(v28 + v29[6]) = _swiftEmptyArrayStorage;
  *(v28 + v29[7]) = 0;
  v31 = sub_1FB6C();
  v0[29] = v31;
  v35 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v32 = swift_task_alloc();
  v0[30] = v32;
  *v32 = v0;
  v32[1] = sub_100D88;

  return v35(0x6F4E23726F727245, 0xEE00646E756F4674, v31);
}

uint64_t sub_100D88(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = sub_10126C;
  }

  else
  {
    *(v4 + 256) = a1;
    v5 = sub_100ED4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100ED4()
{
  sub_1A884(v0[12]);
  sub_104D20();
  sub_104FE0();
  v1 = swift_task_alloc();
  v0[33] = v1;
  *v1 = v0;
  v1[1] = sub_100F9C;
  v2 = v0[21];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[2];

  return PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)(v5, v3, v4, v2);
}

uint64_t sub_100F9C()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 40);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_101170, 0, 0);
}

uint64_t sub_101170()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10126C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  sub_1A884(v0[12]);
  (*(v2 + 8))(v1, v3);
  v4 = sub_106D10();
  v5 = sub_106FB0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "UndoCreateAlarmFlow: Failed to produce Incomplete response.", v6, 2u);
  }

  sub_104F00();

  v7 = v0[1];

  return v7();
}

uint64_t UndoCreateAlarmFlow.deinit()
{

  sub_2738((v0 + 56));

  sub_16F70(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin19UndoCreateAlarmFlow_followupPluginAction, &qword_137FD0, &unk_1087C0);
  return v0;
}

uint64_t UndoCreateAlarmFlow.__deallocating_deinit()
{
  UndoCreateAlarmFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_101550(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA94;

  return UndoCreateAlarmFlow.execute()(a1);
}

uint64_t sub_1015EC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UndoCreateAlarmFlow(0);

  return sub_104B80();
}

char *sub_101628(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_106200();
  __chkstk_darwin(v8 - 8);
  v14 = a3;
  v15 = a4;
  v9 = sub_1A924(&v13);
  (*(*(a3 - 8) + 32))(v9, a1, a3);
  type metadata accessor for DeleteAlarmCATs_Async(0);
  sub_1061E0();
  *(a2 + 2) = sub_1060D0();
  type metadata accessor for DeleteAlarmCATPatternsExecutor(0);
  sub_1061E0();
  *(a2 + 3) = sub_1060D0();
  sub_1061E0();
  *(a2 + 4) = sub_1060D0();
  type metadata accessor for ErrorCATPatternsExecutor(0);
  sub_1061E0();
  *(a2 + 5) = sub_1060D0();
  *(a2 + 6) = _s15AlarmFlowPlugin010UndoCreateaB0C11osLogObject33_795FD7BF22B6045B20B59C9797DF7ED4LLSo03OS_F4_logCvpfi_0();
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  v10 = OBJC_IVAR____TtC15AlarmFlowPlugin19UndoCreateAlarmFlow_followupPluginAction;
  v11 = sub_104E10();
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  sub_1AD44(&v13, (a2 + 56));
  return a2;
}

char *sub_1017D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UndoCreateAlarmFlow(0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  return sub_101628(v9, v10, a3, a4);
}

void sub_1018E0(uint64_t a1)
{
  sub_33058(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1019E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_101A68(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_25E4(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = v4 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a4(a1, v7, v8);
}

uint64_t type metadata accessor for ChangeAlarmStatusCATs_Async(uint64_t a1)
{
  result = qword_13B470;
  if (!qword_13B470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_2A84(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v12;
}

id Siri_Nlu_External_UserParse.alarmSearch.getter(uint64_t a1)
{
  v1 = sub_105440();
  if (v1)
  {
    v2 = sub_1EED0(v1);

    return v2;
  }

  else
  {
    if (qword_136F08 != -1)
    {
      swift_once();
    }

    v4 = sub_106D20();
    sub_135C4(v4, qword_13B4C0);
    v5 = sub_106D10();
    v6 = sub_106FB0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "No task found in userDialogAct.", v7, 2u);
    }

    return 0;
  }
}

uint64_t sub_101E10()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13B4C0);
  sub_135C4(v0, qword_13B4C0);
  return sub_106A80();
}

uint64_t sub_101E5C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13B4D8);
  sub_135C4(v0, qword_13B4D8);
  return sub_106A60();
}

uint64_t sub_101EA8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E4(&qword_13B028, &qword_10BB80);
  __chkstk_darwin(v4 - 8);
  v6 = (&v14 - v5);
  if (qword_136F10 != -1)
  {
    swift_once();
  }

  v7 = sub_106D20();
  sub_135C4(v7, qword_13B4D8);
  v8 = sub_106D10();
  v9 = sub_106FC0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "AlarmFlowPlugin: called findFlowForX()", v10, 2u);
  }

  static AlarmFlowFactory.makeFlowFrom(parse:)(a1, v6);
  v11 = sub_104BD0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) != 1)
  {
    return (*(v12 + 32))(a2, v6, v11);
  }

  sub_102408(v6);
  return sub_104B90();
}

void sub_1020B4(uint64_t *a1@<X8>)
{
  type metadata accessor for AlarmFlowPlugin();
  v2 = swift_allocObject();
  sub_106120();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_106110();

  *a1 = v2;
}

uint64_t sub_1021C0(char *a1)
{
  v2 = sub_25E4(&qword_13B028, &qword_10BB80);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  static AlarmFlowFactory.makeFlowFrom(parse:)(a1, (v13 - v3));
  v5 = sub_104BD0();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_102408(v4);
  }

  else
  {
    v7 = sub_104BA0();
    (*(v6 + 8))(v4, v5);
    if (v7)
    {
      return v7;
    }
  }

  if (qword_136F10 != -1)
  {
    swift_once();
  }

  v8 = sub_106D20();
  sub_135C4(v8, qword_13B4D8);
  v9 = sub_106D10();
  v10 = sub_106FB0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "Unable to parse valid alarm flow in deprecated makeFlowFor(parse:)", v11, 2u);
  }

  sub_106740();
  swift_allocObject();
  v13[1] = sub_106730();
  sub_102470(&qword_13B5A0, 255, &type metadata accessor for NoOpFlow, &protocol conformance descriptor for NoOpFlow);
  v7 = sub_104B30();

  return v7;
}

uint64_t sub_102408(uint64_t a1)
{
  v2 = sub_25E4(&qword_13B028, &qword_10BB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_102470(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1024B8(uint64_t a1, char a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CA94;

  return sub_57E00(a1, a2, a3);
}

uint64_t sub_10257C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_25E4(&qword_137598, &unk_107EB0);
  v4[6] = swift_task_alloc();
  v5 = sub_105030();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_25E4(&qword_137FE8, &unk_1087E0);
  v4[10] = swift_task_alloc();
  sub_25E4(&qword_137FF0, &unk_10C0F0);
  v4[11] = swift_task_alloc();
  sub_25E4(&qword_137FF8, &qword_1087F0);
  v4[12] = swift_task_alloc();
  v6 = sub_1062E0();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = sub_104DE0();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v8 = sub_1064C0();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  sub_106200();
  v4[22] = swift_task_alloc();
  v9 = sub_1064A0();
  v4[23] = v9;
  v4[24] = *(v9 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v10 = sub_1066E0();
  v4[27] = v10;
  v4[28] = *(v10 - 8);
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_102924, 0, 0);
}

uint64_t sub_102924()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[3];
  v5 = *(v3 + 16);
  v0[30] = v5;
  v0[31] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v0[32] = type metadata accessor for AlarmBaseCATs_Async(0);
  sub_1061E0();
  sub_1060D0();
  sub_4F234();
  sub_1066D0();
  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_102A48;

  return AppInstallDialogOutputUtil.makeLaunchAppView()();
}

uint64_t sub_102A48(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_103430;
  }

  else
  {
    v4 = sub_102B5C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_102B5C()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  (*(v0 + 240))(*(v0 + 208), *(v0 + 24), *(v0 + 184));
  sub_1064B0();
  v4 = sub_106470();
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 184);
  if (v4)
  {
    (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for AppInstallUtil.Domain.clock(_:), v5);
  }

  else
  {
    (*(v0 + 240))(*(v0 + 200), *(v0 + 24), v5);
  }

  v6 = *(v0 + 136);
  v7 = *(v0 + 120);
  v27 = *(v0 + 128);
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v25 = *(v0 + 144);
  v26 = v8;
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  v12 = *(v0 + 80);
  v28 = *(v0 + 48);
  v29 = *(v0 + 32);
  (*(v6 + 104))();
  (*(v9 + 104))(v7, enum case for SiriTimeEventSender.TaskType.current(_:), v8);
  v13 = enum case for SiriKitReliabilityCodes.noAppFoundOnDeviceToSupportIntent(_:);
  v14 = sub_104C40();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v10, v13, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  v16 = sub_1062F0();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = enum case for SiriTimeEventSender.ReasonDescription.alarmAppNotInstalledLegacyDialog(_:);
  v18 = sub_1062D0();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v12, v17, v18);
  (*(v19 + 56))(v12, 0, 1, v18);
  sub_1062C0();
  sub_16F70(v12, &qword_137FE8, &unk_1087E0);
  sub_16F70(v11, &qword_137FF0, &unk_10C0F0);
  sub_16F70(v10, &qword_137FF8, &qword_1087F0);
  (*(v9 + 8))(v7, v26);
  (*(v6 + 8))(v25, v27);
  sub_1061E0();
  *(v0 + 288) = sub_1060D0();
  sub_106490();
  sub_106E50();

  v20 = sub_106160();
  (*(*(v20 - 8) + 56))(v28, 0, 1, v20);
  v21 = swift_task_alloc();
  *(v0 + 296) = v21;
  *v21 = v0;
  v21[1] = sub_102F84;
  v22 = *(v0 + 72);
  v23 = *(v0 + 48);

  return sub_58274(v22, v29, v23);
}

uint64_t sub_102F84()
{
  v2 = *v1;
  v2[38] = v0;

  if (v0)
  {
    sub_16F70(v2[6], &qword_137598, &unk_107EB0);

    return _swift_task_switch(sub_103550, 0, 0);
  }

  else
  {
    sub_16F70(v2[6], &qword_137598, &unk_107EB0);

    v3 = swift_task_alloc();
    v2[39] = v3;
    *v3 = v2;
    v3[1] = sub_103160;
    v4 = v2[34];
    v5 = v2[5];
    v6 = v2[2];

    return sub_19F84(v6, v4, v5);
  }
}

uint64_t sub_103160()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 320) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_103688;
  }

  else
  {
    v5 = sub_1032F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1032F4()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  (*(v0[24] + 8))(v0[25], v0[23]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_103430()
{
  (*(v0[28] + 8))(v0[29], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_103550()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  (*(v0[28] + 8))(v0[29], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_103688()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  (*(v0[28] + 8))(v0[29], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1037C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CE64;

  return sub_10257C(a1, a2, a3, a4);
}

uint64_t type metadata accessor for SearchAlarmCATsSimple(uint64_t a1)
{
  result = qword_13B5A8;
  if (!qword_13B5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_103904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_2A84(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_106170();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v12;
}

uint64_t sub_103A8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_106200();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v4 + 16))(v6, a2, v3);
  v7 = sub_106180();
  (*(v4 + 8))(a2, v3);
  return v7;
}

uint64_t sub_103BB4()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13B5F8);
  sub_135C4(v0, qword_13B5F8);
  return sub_106A80();
}

uint64_t sub_103C00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_103C20, 0, 0);
}

uint64_t sub_103C20()
{
  sub_25E4(&qword_13A388, &unk_10B4C0);
  v1 = sub_105200();
  v0[4] = v1;
  if (qword_136F18 != -1)
  {
    swift_once();
  }

  v2 = sub_106D20();
  sub_135C4(v2, qword_13B5F8);
  v3 = v1;
  v4 = sub_106D10();
  v5 = sub_106FC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = [v3 unsupportedReason];

    _os_log_impl(&dword_0, v4, v5, "UpdateAlarm.UnsupportedValueStrategy.makeUnsupportedValueOutput() called with unsupportedReason: %ld", v6, 0xCu);
  }

  else
  {

    v4 = v3;
  }

  v7 = sub_1051F0();
  v8 = [v7 alarmSearch];
  v0[5] = v8;

  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_103E10;
  v10 = v0[2];

  return sub_17218(v10, v8, v3);
}

uint64_t sub_103E10()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_103F90;
  }

  else
  {

    v3 = sub_103F2C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_103F2C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_103F90()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_103FF8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1050C0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1040D0, 0, 0);
}

uint64_t sub_1040D0()
{
  v30 = v0;
  sub_25E4(&qword_13A388, &unk_10B4C0);
  sub_105210();
  if (qword_136F18 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_106D20();
  sub_135C4(v5, qword_13B5F8);
  v6 = *(v3 + 16);
  v6(v2, v1, v4);
  v7 = sub_106D10();
  v8 = sub_106FC0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[6];
  if (v9)
  {
    v28 = v8;
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_106E30();
    v17 = v16;
    v18 = *(v11 + 8);
    v18(v10, v13);
    v19 = sub_722E8(v15, v17, &v29);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v7, v28, "UpdateAlarm.UnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue() called for parameter: %s", v14, 0xCu);
    sub_2738(v27);
  }

  else
  {
    v20 = v0[3];
    v21 = v0[4];

    v18 = *(v21 + 8);
    v18(v10, v20);
  }

  v22 = v0[7];
  v23 = v0[3];
  v24 = sub_1051F0();
  v18(v22, v23);

  v25 = v0[1];

  return v25(v24);
}

uint64_t sub_10437C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA94;

  return sub_103C00(a1, a2);
}

uint64_t sub_10441C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_56FA4;

  return sub_103FF8(a1);
}