uint64_t sub_F2B78(uint64_t a1)
{
  v2 = sub_5AE8(&unk_161840, &qword_128110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F2BE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 208) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  sub_5AE8(&unk_162190, &unk_128500);
  *(v5 + 88) = swift_task_alloc();
  v6 = sub_12392C();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  v7 = sub_1253AC();
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  v8 = sub_12368C();
  *(v5 + 144) = v8;
  *(v5 + 152) = *(v8 - 8);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_F2DA8, 0, 0);
}

uint64_t sub_F2DA8()
{
  v29 = v0;
  if (qword_15EFD0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_125ABC();
  sub_5B30(v2, qword_162938);
  v3 = v1;
  v4 = sub_125AAC();
  v5 = sub_125DFC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = [v6 catId];
    v9 = sub_125B9C();
    v11 = v10;

    v12 = sub_8530(v9, v11, &v28);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    sub_12362C();
    v13 = sub_125BAC();
    v15 = sub_8530(v13, v14, &v28);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_0, v4, v5, "#Response 2.0 dialog/snippet conversation space generation for catId=%s, dialogPhase=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v16 = [*(v0 + 80) dialog];
  sub_F3768();
  v17 = sub_125C6C();

  if (v17 >> 62)
  {
    result = sub_1260FC();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:

    v22 = 0;
    v24 = 0xE000000000000000;
    goto LABEL_13;
  }

  result = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = sub_125FFC();
  }

  else
  {
    if (!*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v19 = *(v17 + 32);
  }

  v20 = v19;

  v21 = [v20 supportingPrint];

  v22 = sub_125B9C();
  v24 = v23;

LABEL_13:
  *(v0 + 176) = v24;
  v25 = swift_task_alloc();
  *(v0 + 184) = v25;
  *v25 = v0;
  v25[1] = sub_F30E8;
  v26 = *(v0 + 136);
  v27 = *(v0 + 208);

  return sub_656CC(v26, v27, v22, v24);
}

uint64_t sub_F30E8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_F3670;
  }

  else
  {

    v2 = sub_F3204;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_F3204(uint64_t a1)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 88);
  v5 = *(v1 + 64);
  sub_12362C();
  sub_F37B4(v5, v4);
  v6 = *(v3 + 48);
  if (v6(v4, 1, v2) == 1)
  {
    v7 = *(v1 + 88);
    v8 = *(v1 + 96);
    sub_FFAE8(*(v1 + 208));
    if (v6(v7, 1, v8) != 1)
    {
      sub_F3824(*(v1 + 88));
    }
  }

  else
  {
    (*(*(v1 + 104) + 32))(*(v1 + 112), *(v1 + 88), *(v1 + 96));
  }

  v10 = *(v1 + 128);
  v9 = *(v1 + 136);
  v11 = *(v1 + 120);
  v12 = sub_12503C();
  *(v1 + 40) = v12;
  *(v1 + 48) = sub_2AF38();
  v13 = sub_23B4C((v1 + 16));
  (*(v10 + 16))(v13, v9, v11);
  (*(*(v12 - 8) + 104))(v13, enum case for SiriTimePluginModel.timerConfirmation(_:), v12);
  v14 = swift_task_alloc();
  *(v1 + 200) = v14;
  *v14 = v1;
  v14[1] = sub_F33F4;
  v15 = *(v1 + 160);
  v16 = *(v1 + 112);
  v17 = *(v1 + 72);
  v18 = *(v1 + 56);

  return DialogExecutionResult.generateConversationOutput(dialogPhase:context:conversationModel:measure:sessionID:responseViewId:)(v18, v15, v16, v1 + 16, v17, 0, 0, 0);
}

uint64_t sub_F33F4()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 144);
  v5 = *(*v0 + 112);
  v6 = *(*v0 + 104);
  v7 = *(*v0 + 96);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_5BB0((v1 + 16));

  return _swift_task_switch(sub_F35B8, 0, 0);
}

uint64_t sub_F35B8()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_F3670()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_F371C()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162938);
  sub_5B30(v0, qword_162938);
  return sub_12578C();
}

unint64_t sub_F3768()
{
  result = qword_162950;
  if (!qword_162950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_162950);
  }

  return result;
}

uint64_t sub_F37B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_162190, &unk_128500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F3824(uint64_t a1)
{
  v2 = sub_5AE8(&unk_162190, &unk_128500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PauseTimerCATsSimple(uint64_t a1)
{
  result = qword_162958;
  if (!qword_162958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F3918(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_F3938, 0, 0);
}

uint64_t sub_F3938()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_126CB0;
  strcpy((v2 + 32), "pausedTimers");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  *(v2 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
  *(v2 + 48) = v1;
  v5 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_23FD8;

  return v5(0xD000000000000020, 0x800000000012E3D0, v2);
}

uint64_t sub_F3A84(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_F3C0C(uint64_t a1, uint64_t a2)
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

uint64_t sub_F3D34()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_1629A8);
  sub_5B30(v0, qword_1629A8);
  return sub_1257AC();
}

uint64_t sub_F3D80()
{
  v0 = sub_124FDC();
  sub_5BFC(v0, qword_167850);
  v1 = sub_5B30(v0, qword_167850);
  v2 = enum case for SiriTimeEventSender.TaskType.createTimerIntent(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_F3E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_12397C();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_12392C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_125ABC();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_124FFC();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();
  v8 = sub_12501C();
  v3[18] = v8;
  v3[19] = *(v8 - 8);
  v3[20] = swift_task_alloc();
  v9 = sub_1250BC();
  v3[21] = v9;
  v3[22] = *(v9 - 8);
  v3[23] = swift_task_alloc();
  v10 = sub_12368C();
  v3[24] = v10;
  v3[25] = *(v10 - 8);
  v3[26] = swift_task_alloc();
  sub_5AE8(&qword_15F6E8, &unk_1271C0);
  v3[27] = swift_task_alloc();
  sub_5AE8(&qword_15F6F0, &unk_128340);
  v3[28] = swift_task_alloc();
  sub_5AE8(&qword_15F6F8, &qword_1271D0);
  v3[29] = swift_task_alloc();
  v11 = sub_12370C();
  v3[30] = v11;
  v3[31] = *(v11 - 8);
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_F41F8, 0, 0);
}

uint64_t sub_F41F8()
{
  if (qword_15EFD8 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[12], qword_1629A8);
  v0[33] = v1;
  v29 = v1;
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "In UnsupportedCreateSleepTimerFlow execute()", v4, 2u);
  }

  v5 = v0[31];
  v6 = v0[32];
  v7 = v0[30];

  (*(v5 + 104))(v6, enum case for ActivityType.failed(_:), v7);
  if (qword_15EFE0 != -1)
  {
    swift_once();
  }

  v8 = v0[31];
  v9 = v0[29];
  v11 = v0[27];
  v10 = v0[28];
  v30 = v0[32];
  v13 = v0[22];
  v12 = v0[23];
  v31 = v0[30];
  v32 = v0[21];
  v14 = sub_124FDC();
  sub_5B30(v14, qword_167850);
  v15 = enum case for SiriKitReliabilityCodes.unsupportedParameter(_:);
  v16 = sub_12353C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v9, v15, v16);
  (*(v17 + 56))(v9, 0, 1, v16);
  v18 = sub_124FEC();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = enum case for SiriTimeEventSender.ReasonDescription.sleepUnavailable(_:);
  v20 = sub_124FCC();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v11, v19, v20);
  (*(v21 + 56))(v11, 0, 1, v20);
  sub_124FBC();
  sub_5CA8(v11, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v10, &qword_15F6F0, &unk_128340);
  sub_5CA8(v9, &qword_15F6F8, &qword_1271D0);
  (*(v8 + 8))(v30, v31);
  sub_12361C();
  sub_1250AC();
  LOBYTE(v19) = sub_12509C();
  (*(v13 + 8))(v12, v32);
  if (v19)
  {
    v22 = v0[14];
    v23 = v0[12];
    v24 = v0[13];
    (*(v0[16] + 104))(v0[17], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[15]);
    (*(v24 + 16))(v22, v29, v23);
    mach_absolute_time();
    sub_12502C();
    v33 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v25 = swift_task_alloc();
    v0[34] = v25;
    *v25 = v0;
    v25[1] = sub_F4730;

    return (v33)(0xD00000000000001CLL, 0x800000000012CF00, _swiftEmptyArrayStorage);
  }

  else
  {
    v34 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
    v27 = swift_task_alloc();
    v0[38] = v27;
    *v27 = v0;
    v27[1] = sub_F4DE4;
    v28 = v0[8];

    return (v34)(v28, 0xD000000000000027, 0x800000000012EF60, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_F4730(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v5 = sub_F4BA4;
  }

  else
  {
    *(v4 + 288) = a1;
    v5 = sub_F4858;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_F4858(uint64_t a1)
{
  sub_12391C();
  v2 = swift_task_alloc();
  v1[37] = v2;
  *v2 = v1;
  v2[1] = sub_F4908;
  v3 = v1[26];
  v4 = v1[20];
  v5 = v1[11];
  v6 = v1[3];

  return PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)(v6, v3, v5, v4);
}

uint64_t sub_F4908()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_F4A78, 0, 0);
}

uint64_t sub_F4A78()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_F4BA4()
{
  v15 = v0;
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[35];
  swift_errorRetain();
  v2 = sub_125AAC();
  v3 = sub_125DEC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v0[2] = v1;
    swift_errorRetain();
    sub_5AE8(&qword_15F670, &qword_127080);
    v6 = sub_125BAC();
    v8 = sub_8530(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Failed to execute DialogEngine: %s", v4, 0xCu);
    sub_5BB0(v5);
  }

  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  sub_12383C();

  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_F4DE4()
{
  v2 = *v1;
  v2[39] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_F50D0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[40] = v3;
    *v3 = v2;
    v3[1] = sub_F4F60;
    v4 = v2[26];
    v5 = v2[3];

    return sub_30624(v5, 0, v4);
  }
}

uint64_t sub_F4F60()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 328) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_F5404;
  }

  else
  {
    v5 = sub_F52F8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_F50D0()
{
  v15 = v0;
  v1 = v0[39];
  swift_errorRetain();
  v2 = sub_125AAC();
  v3 = sub_125DEC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v0[2] = v1;
    swift_errorRetain();
    sub_5AE8(&qword_15F670, &qword_127080);
    v6 = sub_125BAC();
    v8 = sub_8530(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Failed to execute DialogEngine: %s", v4, 0xCu);
    sub_5BB0(v5);
  }

  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  sub_12383C();

  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_F52F8()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_F5404()
{
  v15 = v0;
  v1 = v0[41];
  swift_errorRetain();
  v2 = sub_125AAC();
  v3 = sub_125DEC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v0[2] = v1;
    swift_errorRetain();
    sub_5AE8(&qword_15F670, &qword_127080);
    v6 = sub_125BAC();
    v8 = sub_8530(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Failed to execute DialogEngine: %s", v4, 0xCu);
    sub_5BB0(v5);
  }

  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  sub_12383C();

  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_F562C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_503C;

  return sub_F3E08(a1, v5, v4);
}

uint64_t type metadata accessor for PauseTimerCATs_Async(uint64_t a1)
{
  result = qword_1629C0;
  if (!qword_1629C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F5764(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_F58F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_12372C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v8 = sub_8AD8(0xD00000000000001CLL, 0x800000000012EFD0), (v9 & 1) != 0) && (sub_8B50(*(a1 + 56) + 32 * v8, v21), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v19;
    v10 = v20;
    sub_E430(v19, v20);
    sub_12371C();
    if (qword_15EFE8 != -1)
    {
      swift_once();
    }

    v14 = sub_125ABC();
    sub_5B30(v14, qword_162A10);
    v15 = sub_125AAC();
    v16 = sub_125DFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Followup PluginAction available.", v17, 2u);
    }

    sub_E498(v11, v10);

    (*(v5 + 32))(a2, v7, v4);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return (*(v5 + 56))(a2, v12, 1, v4);
}

uint64_t sub_F5C0C()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162A10);
  sub_5B30(v0, qword_162A10);
  return sub_1257AC();
}

uint64_t sub_F5C58(void *a1)
{
  sub_12550C();
  sub_12552C();
  sub_1233FC();
  if (qword_15EEA8 != -1)
  {
    swift_once();
  }

  sub_12333C();
  sub_5AE8(&qword_160690, &qword_128168);
  sub_1233AC();
  sub_5AE8(&qword_162450, &qword_12A830);
  sub_F5EE0();
  sub_12335C();
  sub_1233EC();
  sub_2F488(a1, v6);
  sub_F5F44();
  sub_12330C();
  sub_12338C();
  sub_2F488(a1, v5);
  sub_F5F98();
  sub_12334C();
  sub_1233DC();
  sub_2F488(a1, v4);
  sub_F5FEC();
  sub_12337C();
  sub_1233CC();
  sub_2F488(a1, v3);
  sub_F6040();
  sub_12332C();
  sub_12339C();
  sub_5BB0(a1);
  sub_F6094(v3);
  sub_F60E8(v4);
  sub_F613C(v5);
  return sub_F6190(v6);
}

uint64_t sub_F5E54(uint64_t *a1)
{
  *a1 = sub_DE8D8();
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_F5EE0()
{
  result = qword_162A28;
  if (!qword_162A28)
  {
    sub_5B68(&qword_162450, &qword_12A830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162A28);
  }

  return result;
}

unint64_t sub_F5F44()
{
  result = qword_162A30;
  if (!qword_162A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162A30);
  }

  return result;
}

unint64_t sub_F5F98()
{
  result = qword_162A38;
  if (!qword_162A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162A38);
  }

  return result;
}

unint64_t sub_F5FEC()
{
  result = qword_162A40;
  if (!qword_162A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162A40);
  }

  return result;
}

unint64_t sub_F6040()
{
  result = qword_162A48;
  if (!qword_162A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162A48);
  }

  return result;
}

uint64_t sub_F61E4(void *a1, uint64_t a2)
{
  v19 = a2;
  v17 = _s20HandleIntentStrategyVMa_6(0);
  __chkstk_darwin(v17);
  v18 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s21ConfirmIntentStrategyVMa_0(0);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1256CC();
  sub_1256AC();
  sub_1233FC();
  if (qword_15EEA8 != -1)
  {
    swift_once();
  }

  sub_12333C();
  sub_5AE8(&qword_160118, &qword_127E10);
  sub_1233AC();
  sub_2F488(a1, v6);
  v7 = *(v4 + 20);
  v8 = sub_12532C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = &v6[v7];
  v16 = v6;
  v12 = v19;
  v10(v11, v19, v8);
  sub_F65BC(&qword_162A50, _s21ConfirmIntentStrategyVMa_0, &unk_12A180);
  sub_12336C();
  sub_1233BC();
  v13 = v18;
  sub_2F488(a1, v18);
  v10((v13 + *(v17 + 20)), v12, v8);
  sub_F65BC(&qword_162A58, _s20HandleIntentStrategyVMa_6, &unk_12BA68);
  sub_12332C();
  sub_12339C();
  sub_2F488(a1, v20);
  sub_5AE8(&qword_162A60, &unk_12B568);
  sub_F6604();
  sub_12337C();
  sub_1233CC();
  (*(v9 + 8))(v12, v8);
  sub_5BB0(a1);
  sub_F6668(v20);
  sub_F66D0(v13, _s20HandleIntentStrategyVMa_6);
  return sub_F66D0(v16, _s21ConfirmIntentStrategyVMa_0);
}

BOOL sub_F6558()
{
  sub_5AE8(&qword_1621A0, &unk_12A210);
  v0 = sub_123A9C();
  sub_12569C();

  v1 = sub_1256BC();
  return v1 == sub_1256BC();
}

uint64_t sub_F65BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_F6604()
{
  result = qword_162A68;
  if (!qword_162A68)
  {
    sub_5B68(&qword_162A60, &unk_12B568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162A68);
  }

  return result;
}

uint64_t sub_F6668(uint64_t a1)
{
  v2 = sub_5AE8(&qword_162A60, &unk_12B568);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F66D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *UndoCreateTimerFlow.__allocating_init()()
{
  sub_12587C();
  swift_allocObject();
  v0 = sub_12586C();
  v1 = [objc_allocWithZone(MTTimerManager) init];
  type metadata accessor for UndoCreateTimerFlow(0);
  v2 = swift_allocObject();

  return sub_FC520(v0, v1, v2);
}

uint64_t type metadata accessor for UndoCreateTimerFlow(uint64_t a1)
{
  result = qword_162AB8;
  if (!qword_162AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_F6804()
{
  v1 = v0;
  v2 = sub_122F6C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1257EC();
  v6 = [v1 timerID];
  sub_122F4C();

  sub_122F3C();
  (*(v3 + 8))(v5, v2);
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_125B8C();

  v9 = sub_125B8C();
  v10 = [v7 initWithIdentifier:v8 displayString:v9];

  [v1 type];
  [v10 setType:sub_125DCC()];
  v11 = [v1 state];
  v12 = 0;
  if (v11 <= 4)
  {
    v12 = qword_12B6A0[v11];
  }

  [v10 setState:v12];
  [v1 duration];
  v14 = [objc_allocWithZone(NSNumber) initWithDouble:v13];
  [v10 setDuration:v14];

  [v1 remainingTime];
  v16 = [objc_allocWithZone(NSNumber) initWithDouble:v15];
  [v10 setRemainingTime:v16];

  v17 = [v1 title];
  [v10 setLabel:v17];

  return v10;
}

uint64_t sub_F6A9C()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162A70);
  sub_5B30(v0, qword_162A70);
  return sub_1257AC();
}

uint64_t UndoCreateTimerFlow.on(input:)()
{
  v0 = sub_5AE8(&qword_160838, &qword_128330);
  __chkstk_darwin(v0 - 8);
  v65 = &v61 - v1;
  v2 = sub_1252CC();
  v68 = *(v2 - 8);
  v69 = v2;
  __chkstk_darwin(v2);
  v67 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1252AC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v61 - v8;
  v10 = sub_123D1C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_123D3C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_123CCC();
  if ((*(v15 + 88))(v17, v14) != enum case for Parse.directInvocation(_:))
  {
    (*(v15 + 8))(v17, v14);
    return 0;
  }

  (*(v15 + 96))(v17, v14);
  (*(v11 + 32))(v13, v17, v10);
  v18 = sub_123D0C();
  v19 = v13;
  if (!v18)
  {
    (*(v11 + 8))(v13, v10);
    return 0;
  }

  v20 = v18;
  v63 = v19;
  v64 = v10;
  v21 = *(v5 + 104);
  v21(v9, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v4);
  v22 = sub_12529C();
  v24 = v23;
  v25 = *(v5 + 8);
  v25(v9, v4);
  if (!*(v20 + 16))
  {

    goto LABEL_11;
  }

  v26 = sub_8AD8(v22, v24);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_8B50(*(v20 + 56) + 32 * v26, v73);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v29 = sub_B66D0(v71, v72);
  if (v29 == 19)
  {
    goto LABEL_7;
  }

  v62 = v29;
  v31 = v70;
  v21(v70, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v4);
  v32 = sub_12529C();
  v34 = v33;
  v25(v31, v4);
  if (!*(v20 + 16))
  {

    goto LABEL_11;
  }

  v35 = sub_8AD8(v32, v34);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
LABEL_11:

    (*(v11 + 8))(v63, v64);
    return 0;
  }

  sub_8B50(*(v20 + 56) + 32 * v35, v73);
  v38 = swift_dynamicCast();
  v39 = v63;
  if ((v38 & 1) == 0)
  {
LABEL_7:
    (*(v11 + 8))(v63, v64);

    return 0;
  }

  v40 = v20;
  v61 = v71;
  v70 = v72;
  v41 = sub_123CFC();
  v43 = v42;
  v44 = v67;
  v45 = v68;
  v46 = v69;
  (*(v68 + 104))(v67, enum case for DirectInvocationUtils.Timer.URI.undo(_:), v69);
  v47 = sub_1252BC();
  v49 = v48;
  (*(v45 + 8))(v44, v46);
  if (v41 == v47 && v43 == v49)
  {
  }

  else
  {
    v50 = sub_1261BC();

    if ((v50 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (sub_B6264(v62) != 0x6574656C6564 || v51 != 0xE600000000000000)
  {
    v52 = sub_1261BC();

    if (v52)
    {
      goto LABEL_27;
    }

LABEL_32:
    (*(v11 + 8))(v39, v64);

    return 0;
  }

LABEL_27:
  if (qword_15EFF0 != -1)
  {
    swift_once();
  }

  v53 = sub_125ABC();
  sub_5B30(v53, qword_162A70);
  v54 = sub_125AAC();
  v55 = sub_125DFC();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_0, v54, v55, "UndoCreateTimerFlow: accepting input.", v56, 2u);
  }

  v57 = v66;
  v58 = v70;
  *(v66 + 80) = v61;
  *(v57 + 88) = v58;

  v59 = v65;
  sub_F58F4(v40, v65);

  (*(v11 + 8))(v39, v64);
  v60 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin19UndoCreateTimerFlow_followupPluginAction;
  swift_beginAccess();
  sub_FC65C(v59, v57 + v60);
  swift_endAccess();
  return 1;
}

uint64_t UndoCreateTimerFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UndoCreateTimerFlow(0);
  sub_FF214(&qword_160630, type metadata accessor for UndoCreateTimerFlow, &protocol conformance descriptor for UndoCreateTimerFlow);
  return sub_12344C();
}

uint64_t UndoCreateTimerFlow.execute()(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  sub_5AE8(&qword_160838, &qword_128330);
  v2[17] = swift_task_alloc();
  v3 = sub_12372C();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = sub_122EDC();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  v5 = sub_122F6C();
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  v6 = sub_1250BC();
  v2[27] = v6;
  v2[28] = *(v6 - 8);
  v2[29] = swift_task_alloc();
  v7 = sub_124FCC();
  v2[30] = v7;
  v2[31] = *(v7 - 8);
  v2[32] = swift_task_alloc();
  sub_5AE8(&qword_15F6E8, &unk_1271C0);
  v2[33] = swift_task_alloc();
  sub_5AE8(&qword_15F6F0, &unk_128340);
  v2[34] = swift_task_alloc();
  sub_5AE8(&qword_15F6F8, &qword_1271D0);
  v2[35] = swift_task_alloc();
  v8 = sub_12370C();
  v2[36] = v8;
  v2[37] = *(v8 - 8);
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_F7704, 0, 0);
}

uint64_t sub_F7704()
{
  (*(*(v0 + 296) + 104))(*(v0 + 304), enum case for ActivityType.correction(_:), *(v0 + 288));
  if (qword_15EFF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v2 = sub_124FDC();
  sub_5B30(v2, qword_167878);
  v3 = sub_12353C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  if (qword_15F000 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 280);
  v8 = *(v0 + 264);
  v7 = *(v0 + 272);
  v10 = *(v0 + 240);
  v9 = *(v0 + 248);
  v98 = *(v0 + 128);
  v100 = *(v0 + 288);
  v11 = sub_124FEC();
  v12 = sub_5B30(v11, qword_167890);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v7, v12, v11);
  (*(v13 + 56))(v7, 0, 1, v11);
  (*(v9 + 56))(v8, 1, 1, v10);
  sub_124FBC();
  sub_5CA8(v8, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v7, &qword_15F6F0, &unk_128340);
  sub_5CA8(v6, &qword_15F6F8, &qword_1271D0);
  (*(v5 + 8))(v4, v100);
  if (!*(v98 + 88))
  {
    if (qword_15EFF0 != -1)
    {
LABEL_63:
      swift_once();
    }

    v35 = sub_125ABC();
    sub_5B30(v35, qword_162A70);
    v36 = sub_125AAC();
    v37 = sub_125DEC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "UndoCreateTimerFlow: No timer id to delete! This should never happen.", v38, 2u);
    }

    v40 = *(v0 + 248);
    v39 = *(v0 + 256);
    v41 = *(v0 + 240);

    (*(v40 + 104))(v39, enum case for SiriTimeEventSender.ReasonDescription.noTimerToDelete(_:), v41);
    v42 = swift_task_alloc();
    *(v0 + 312) = v42;
    *v42 = v0;
    v42[1] = sub_F836C;
    v43 = *(v0 + 256);

    return sub_FC6CC(v43);
  }

  v15 = *(v0 + 224);
  v14 = *(v0 + 232);
  v16 = *(v0 + 216);
  sub_1250AC();
  v17 = sub_12504C();
  *(v0 + 464) = v17;
  (*(v15 + 8))(v14, v16);
  *(v0 + 104) = 0;
  if (!v17)
  {
    if (qword_15EFF0 != -1)
    {
      swift_once();
    }

    v44 = sub_125ABC();
    *(v0 + 320) = sub_5B30(v44, qword_162A70);
    v45 = sub_125AAC();
    v46 = sub_125DFC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "UndoCreateTimerFlow: Single-timer handling", v47, 2u);
    }

    v48 = *(v0 + 128);

    sub_2F488(v48 + 32, v0 + 16);
    v49 = *(v0 + 40);
    v50 = *(v0 + 48);
    sub_23B08((v0 + 16), v49);
    v51 = swift_task_alloc();
    *(v0 + 328) = v51;
    *v51 = v0;
    v51[1] = sub_F85B0;

    return dispatch thunk of SiriTimerManagerIOS.currentTimer()(v49, v50);
  }

  if (qword_15EFF0 != -1)
  {
    swift_once();
  }

  v18 = sub_125ABC();
  *(v0 + 352) = sub_5B30(v18, qword_162A70);
  v19 = sub_125AAC();
  v20 = sub_125DFC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "UndoCreateTimerFlow: Multi-timer handling", v21, 2u);
  }

  v22 = *(v0 + 128);

  v23 = *(v22 + 72);
  *(v0 + 360) = v23;
  v24 = v23;
  v25 = [v24 timers];
  *(v0 + 368) = v25;
  if (v25)
  {
    v26 = v25;
    v27 = swift_task_alloc();
    *(v0 + 376) = v27;
    *(v27 + 16) = v26;
    v28 = swift_task_alloc();
    *(v0 + 384) = v28;
    v29 = sub_5AE8(&qword_160868, qword_12B5A0);
    *v28 = v0;
    v28[1] = sub_F8BF4;
    v30 = sub_7CDC0;
    v31 = (v0 + 112);
    v32 = 0x800000000012D4F0;
    v33 = 0xD000000000000010;
    v34 = v27;
LABEL_13:

    return withCheckedContinuation<A>(isolation:function:_:)(v31, 0, 0, v33, v32, v30, v34, v29);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    v52 = sub_1260FC();
    v96 = v18;
    if (v52)
    {
      goto LABEL_31;
    }

LABEL_65:

    v92 = sub_125AAC();
    v93 = sub_125DEC();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_0, v92, v93, "UndoCreateTimerFlow: mtTimerManager.timersSync returned no timer with matching timerID: no timers to delete.", v94, 2u);
    }

    v86 = swift_task_alloc();
    *(v0 + 392) = v86;
    *v86 = v0;
    v87 = sub_F92A4;
    goto LABEL_68;
  }

  v52 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
  v96 = v18;
  if (!v52)
  {
    goto LABEL_65;
  }

LABEL_31:
  v53 = 0;
  v99 = (*(v0 + 200) + 8);
  v97 = (*(v0 + 176) + 8);
  while (1)
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      v54 = sub_125FFC();
    }

    else
    {
      if (v53 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_62;
      }

      v54 = _swiftEmptyArrayStorage[v53 + 4];
    }

    v55 = v54;
    v56 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v57 = *(v0 + 208);
    v58 = *(v0 + 192);
    v59 = *(v0 + 128);
    v60 = [v54 timerID];
    sub_122F4C();

    v61 = sub_122F3C();
    v63 = v62;
    (*v99)(v57, v58);
    v64 = *(v59 + 88);
    if (v64)
    {
      if (v61 == *(v59 + 80) && v64 == v63)
      {
LABEL_52:
        v76 = &selRef_archivedDataWithRootObject_requiringSecureCoding_error_;
        v77 = v96;

        goto LABEL_54;
      }

      v66 = sub_1261BC();

      if (v66)
      {
        break;
      }
    }

    else
    {
    }

    v67 = *(v0 + 184);
    v68 = *(v0 + 168);
    v69 = *(v0 + 128);
    v70 = [v55 timerURL];
    sub_122EBC();

    v71 = sub_122E9C();
    v73 = v72;
    (*v97)(v67, v68);
    v74 = *(v69 + 88);
    if (!v74)
    {

      goto LABEL_33;
    }

    if (v71 == *(v69 + 80) && v74 == v73)
    {
      goto LABEL_52;
    }

    v75 = sub_1261BC();

    if (v75)
    {
      break;
    }

LABEL_33:

    ++v53;
    if (v56 == v52)
    {
      goto LABEL_65;
    }
  }

  v76 = &selRef_archivedDataWithRootObject_requiringSecureCoding_error_;
  v77 = v96;
LABEL_54:

  *(v0 + 104) = v55;
  v78 = v55;
  v79 = sub_F6804();

  *(v0 + 400) = v79;
  *(v0 + 408) = v78;
  v80 = v79;
  [v80 state];
  v81 = sub_1258BC();
  v82 = sub_1258BC();

  if (v81 != v82)
  {
    v88 = *(v0 + 464);
    v89 = *(v0 + 128);
    v90 = swift_allocObject();
    *(v0 + 416) = v90;
    *(v90 + 16) = 1;
    v91 = swift_task_alloc();
    *(v0 + 424) = v91;
    *(v91 + 16) = v88;
    *(v91 + 24) = v89;
    *(v91 + 32) = v90;
    *(v91 + 40) = v0 + 104;
    v31 = swift_task_alloc();
    *(v0 + 432) = v31;
    *v31 = v0;
    v31[1] = sub_F93A0;
    v30 = sub_FEDE4;
    v33 = 0x2865747563657865;
    v29 = &type metadata for () + 8;
    v32 = 0xE900000000000029;
    v34 = v91;
    goto LABEL_13;
  }

  if (v76[510] != -1)
  {
    swift_once();
  }

  sub_5B30(v77, qword_162A70);
  v83 = sub_125AAC();
  v84 = sub_125DFC();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&dword_0, v83, v84, "UndoCreateTimerFlow: Timer has an unknown state (meaning there's no timer set on phone): No timers to delete.", v85, 2u);
  }

  v86 = swift_task_alloc();
  *(v0 + 456) = v86;
  *v86 = v0;
  v87 = sub_F9B40;
LABEL_68:
  v86[1] = v87;

  return sub_FDA68();
}

uint64_t sub_F836C()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 240);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_F84C4, 0, 0);
}

uint64_t sub_F84C4(uint64_t a1)
{
  sub_12383C();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_F85B0(uint64_t a1)
{
  *(*v1 + 336) = a1;

  return _swift_task_switch(sub_F86B0, 0, 0);
}

uint64_t sub_F86B0()
{
  v1 = *(v0 + 336);
  v2 = v1;
  sub_5BB0((v0 + 16));
  if (!v1)
  {
    v12 = sub_125AAC();
    v13 = sub_125DEC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "UndoCreateTimerFlow: siriTimerManager.currentTimer get nil result: no timers to delete.", v14, 2u);
    }

    v10 = swift_task_alloc();
    *(v0 + 344) = v10;
    *v10 = v0;
    v11 = sub_F8A04;
    goto LABEL_11;
  }

  *(v0 + 400) = v2;
  *(v0 + 408) = 0;
  v3 = v2;
  [v3 state];
  v4 = sub_1258BC();
  v5 = sub_1258BC();

  if (v4 == v5)
  {
    if (qword_15EFF0 != -1)
    {
      swift_once();
    }

    v6 = sub_125ABC();
    sub_5B30(v6, qword_162A70);
    v7 = sub_125AAC();
    v8 = sub_125DFC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "UndoCreateTimerFlow: Timer has an unknown state (meaning there's no timer set on phone): No timers to delete.", v9, 2u);
    }

    v10 = swift_task_alloc();
    *(v0 + 456) = v10;
    *v10 = v0;
    v11 = sub_F9B40;
LABEL_11:
    v10[1] = v11;

    return sub_FDA68();
  }

  v16 = *(v0 + 464);
  v17 = *(v0 + 128);
  v18 = swift_allocObject();
  *(v0 + 416) = v18;
  *(v18 + 16) = 1;
  v19 = swift_task_alloc();
  *(v0 + 424) = v19;
  *(v19 + 16) = v16;
  *(v19 + 24) = v17;
  *(v19 + 32) = v18;
  *(v19 + 40) = v0 + 104;
  v20 = swift_task_alloc();
  *(v0 + 432) = v20;
  *v20 = v0;
  v20[1] = sub_F93A0;

  return withCheckedContinuation<A>(isolation:function:_:)(v20, 0, 0, 0x2865747563657865, 0xE900000000000029, sub_FEDE4, v19, &type metadata for () + 8);
}

uint64_t sub_F8A04()
{

  return _swift_task_switch(sub_F8B00, 0, 0);
}

uint64_t sub_F8B00(uint64_t a1)
{
  v2 = *(v1 + 336);
  sub_12383C();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_F8BF4()
{

  return _swift_task_switch(sub_F8D0C, 0, 0);
}

uint64_t sub_F8D0C()
{
  v1 = *(v0 + 368);

  v2 = *(v0 + 112);
  if (v2 >> 62)
  {
LABEL_36:
    v3 = sub_1260FC();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_37:

    v43 = sub_125AAC();
    v44 = sub_125DEC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "UndoCreateTimerFlow: mtTimerManager.timersSync returned no timer with matching timerID: no timers to delete.", v45, 2u);
    }

    v36 = swift_task_alloc();
    *(v0 + 392) = v36;
    *v36 = v0;
    v37 = sub_F92A4;
LABEL_40:
    v36[1] = v37;

    return sub_FDA68();
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (!v3)
  {
    goto LABEL_37;
  }

LABEL_3:
  v4 = 0;
  v47 = v3;
  v48 = (*(v0 + 176) + 8);
  v49 = (*(v0 + 200) + 8);
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_125FFC();
    }

    else
    {
      if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_35;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 192);
    v10 = *(v0 + 128);
    v11 = [v5 timerID];
    sub_122F4C();

    v12 = sub_122F3C();
    v14 = v13;
    (*v49)(v8, v9);
    v15 = *(v10 + 88);
    if (!v15)
    {

      goto LABEL_18;
    }

    if (v12 == *(v10 + 80) && v15 == v14)
    {
      break;
    }

    v17 = sub_1261BC();

    if (v17)
    {
      goto LABEL_25;
    }

LABEL_18:
    v18 = *(v0 + 184);
    v19 = *(v0 + 168);
    v20 = *(v0 + 128);
    v21 = [v6 timerURL];
    sub_122EBC();

    v22 = sub_122E9C();
    v24 = v23;
    (*v48)(v18, v19);
    v25 = *(v20 + 88);
    if (v25)
    {
      if (v22 == *(v20 + 80) && v25 == v24)
      {
        break;
      }

      v26 = sub_1261BC();

      if (v26)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    ++v4;
    if (v7 == v47)
    {
      goto LABEL_37;
    }
  }

LABEL_25:

  *(v0 + 104) = v6;
  v27 = v6;
  v28 = sub_F6804();

  *(v0 + 400) = v28;
  *(v0 + 408) = v27;
  v29 = v28;
  [v29 state];
  v30 = sub_1258BC();
  v31 = sub_1258BC();

  if (v30 == v31)
  {
    if (qword_15EFF0 != -1)
    {
      swift_once();
    }

    v32 = sub_125ABC();
    sub_5B30(v32, qword_162A70);
    v33 = sub_125AAC();
    v34 = sub_125DFC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "UndoCreateTimerFlow: Timer has an unknown state (meaning there's no timer set on phone): No timers to delete.", v35, 2u);
    }

    v36 = swift_task_alloc();
    *(v0 + 456) = v36;
    *v36 = v0;
    v37 = sub_F9B40;
    goto LABEL_40;
  }

  v38 = *(v0 + 464);
  v39 = *(v0 + 128);
  v40 = swift_allocObject();
  *(v0 + 416) = v40;
  *(v40 + 16) = 1;
  v41 = swift_task_alloc();
  *(v0 + 424) = v41;
  *(v41 + 16) = v38;
  *(v41 + 24) = v39;
  *(v41 + 32) = v40;
  *(v41 + 40) = v0 + 104;
  v42 = swift_task_alloc();
  *(v0 + 432) = v42;
  *v42 = v0;
  v42[1] = sub_F93A0;

  return withCheckedContinuation<A>(isolation:function:_:)(v42, 0, 0, 0x2865747563657865, 0xE900000000000029, sub_FEDE4, v41, &type metadata for () + 8);
}

uint64_t sub_F92A4()
{

  return _swift_task_switch(sub_F84C4, 0, 0);
}

uint64_t sub_F93A0()
{

  return _swift_task_switch(sub_F94B8, 0, 0);
}

uint64_t sub_F94B8()
{
  v1 = v0[52];
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    v2 = swift_task_alloc();
    v0[55] = v2;
    *v2 = v0;
    v2[1] = sub_F9604;
    v3 = v0[50];

    return sub_FA81C(v3);
  }

  else
  {
    (*(v0[31] + 104))(v0[32], enum case for SiriTimeEventSender.ReasonDescription.failedToDeleteTimer(_:), v0[30]);
    v5 = swift_task_alloc();
    v0[56] = v5;
    *v5 = v0;
    v5[1] = sub_F98E0;
    v6 = v0[32];

    return sub_FC6CC(v6);
  }
}

uint64_t sub_F9604()
{

  return _swift_task_switch(sub_F9700, 0, 0);
}

uint64_t sub_F9700()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin19UndoCreateTimerFlow_followupPluginAction;
  swift_beginAccess();
  sub_E344(v4 + v5, v3, &qword_160838, &qword_128330);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_5CA8(*(v0 + 136), &qword_160838, &qword_128330);
    v6 = *(v0 + 400);
    sub_12383C();
  }

  else
  {
    v7 = *(v0 + 400);
    v9 = *(v0 + 152);
    v8 = *(v0 + 160);
    v10 = *(v0 + 144);
    (*(v9 + 32))(v8, *(v0 + 136), v10);
    sub_12384C();

    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_F98E0()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 240);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_F9A38, 0, 0);
}

uint64_t sub_F9A38(uint64_t a1)
{
  v2 = *(v1 + 400);
  sub_12383C();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_F9B40()
{

  return _swift_task_switch(sub_F9C3C, 0, 0);
}

uint64_t sub_F9C3C(uint64_t a1)
{
  v2 = v1[50];
  v3 = v1[51];
  sub_12383C();

  v4 = v1[1];

  return v4();
}

void sub_F9D34(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  if (a2)
  {
    v14 = [*(a3 + 72) removeTimer:*a5];
    if (v14)
    {
      v15 = v14;
      v30 = a4;
      v29 = *(v11 + 16);
      v29(v13, a1, v10);
      v16 = *(v11 + 80);
      v17 = swift_allocObject();
      v28 = *(v11 + 32);
      v28(v17 + ((v16 + 16) & ~v16), v13, v10);
      v35 = sub_FF030;
      v36 = v17;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v27 = &v33;
      v33 = sub_105C48;
      v34 = &unk_159FF0;
      v18 = _Block_copy(&aBlock);
      v19 = v15;

      v20 = [v19 addSuccessBlock:v18];
      _Block_release(v18);

      v29(v13, a1, v10);
      v21 = swift_allocObject();
      *(v21 + 16) = v30;
      v28(v21 + ((v16 + 24) & ~v16), v13, v10);
      v35 = sub_FF194;
      v36 = v21;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_105C50;
      v34 = &unk_15A040;
      v22 = _Block_copy(&aBlock);

      v23 = v19;

      v24 = [v23 addFailureBlock:v22];

      _Block_release(v22);
    }
  }

  else
  {
    sub_2F488(a3 + 32, &aBlock);
    sub_23B08(&aBlock, v34);
    (*(v11 + 16))(v13, a1, v10);
    v25 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = a4;
    (*(v11 + 32))(v26 + v25, v13, v10);

    sub_1257FC();

    sub_5BB0(&aBlock);
  }
}

uint64_t sub_FA12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_12571C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5AE8(&qword_160AD8, &qword_1284F0);
  __chkstk_darwin(v8);
  v10 = v25 - v9;
  sub_E344(a1, v25 - v9, &qword_160AD8, &qword_1284F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    swift_beginAccess();
    *(a2 + 16) = 0;
    if (qword_15EFF0 != -1)
    {
      swift_once();
    }

    v11 = sub_125ABC();
    sub_5B30(v11, qword_162A70);
    v12 = sub_125AAC();
    v13 = sub_125DEC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "UndoCreateTimerFlow: delete failed", v14, 2u);
    }

    v15 = sub_12547C();
    v25[3] = v15;
    v25[4] = &protocol witness table for ABCReport;
    v16 = sub_23B4C(v25);
    sub_FF214(&qword_160AE0, &type metadata accessor for TimerOperationError, &protocol conformance descriptor for TimerOperationError);
    swift_allocError();
    (*(v5 + 16))(v17, v7, v4);
    *v16 = sub_122E7C();
    v18 = enum case for ErrorSubType.managerReturnedError(_:);
    v19 = sub_12515C();
    (*(*(v19 - 8) + 104))(v16, v18, v19);
    (*(*(v15 - 8) + 104))(v16, enum case for ABCReport.timerUndoHandle(_:), v15);
    sub_1251AC();
    (*(v5 + 8))(v7, v4);
    sub_5BB0(v25);
  }

  else
  {
    if (qword_15EFF0 != -1)
    {
      swift_once();
    }

    v20 = sub_125ABC();
    sub_5B30(v20, qword_162A70);
    v21 = sub_125AAC();
    v22 = sub_125DFC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "UndoCreateTimerFlow: timer stopped completion", v23, 2u);
    }
  }

  sub_5AE8(&qword_162BF8, &unk_12B690);
  return sub_125D1C();
}

uint64_t sub_FA58C()
{
  if (qword_15EFF0 != -1)
  {
    swift_once();
  }

  v0 = sub_125ABC();
  sub_5B30(v0, qword_162A70);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "UndoCreateTimerFlow: removed mtTimer successfully", v3, 2u);
  }

  sub_5AE8(&qword_162BF8, &unk_12B690);
  return sub_125D1C();
}

uint64_t sub_FA688(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = 0;
  if (qword_15EFF0 != -1)
  {
    swift_once();
  }

  v3 = sub_125ABC();
  sub_5B30(v3, qword_162A70);
  swift_errorRetain();
  v4 = sub_125AAC();
  v5 = sub_125DFC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v4, v5, "UndoCreateTimerFlow: remove mtTimer failed with error %@", v6, 0xCu);
    sub_5CA8(v7, &unk_160540, &unk_1295A0);
  }

  sub_5AE8(&qword_162BF8, &unk_12B690);
  return sub_125D1C();
}

uint64_t sub_FA81C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  sub_5AE8(&qword_15F6E8, &unk_1271C0);
  v2[14] = swift_task_alloc();
  sub_5AE8(&qword_15F6F0, &unk_128340);
  v2[15] = swift_task_alloc();
  sub_5AE8(&qword_15F6F8, &qword_1271D0);
  v2[16] = swift_task_alloc();
  v3 = sub_12370C();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v4 = sub_125ABC();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v5 = sub_124FFC();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  v6 = sub_12501C();
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();
  v7 = sub_12368C();
  v2[29] = v7;
  v2[30] = *(v7 - 8);
  v2[31] = swift_task_alloc();
  v8 = sub_12392C();
  v2[32] = v8;
  v2[33] = *(v8 - 8);
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_FAB50, 0, 0);
}

uint64_t sub_FAB50()
{
  if (qword_15EFF0 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[20], qword_162A70);
  v0[35] = v1;
  v15 = v1;
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "UndoCreateTimerFlow.makeAndPublishSuccess() called", v4, 2u);
  }

  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[21];
  v14 = v0[20];

  sub_12391C();
  sub_12361C();
  v10 = sub_113D6C(0, 0);
  v0[36] = v10;
  (*(v6 + 104))(v5, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v7);
  (*(v9 + 16))(v8, v15, v14);
  mach_absolute_time();
  sub_12502C();
  sub_5AE8(&qword_160810, &unk_127420);
  v11 = swift_allocObject();
  v0[37] = v11;
  *(v11 + 16) = xmmword_126EB0;
  *(v11 + 32) = v10;

  v12 = swift_task_alloc();
  v0[38] = v12;
  *v12 = v0;
  v12[1] = sub_FADA4;

  return sub_906A8(v11);
}

uint64_t sub_FADA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[39] = a1;
  v3[40] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_FB5EC, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[41] = v5;
    *v5 = v4;
    v5[1] = sub_FAF64;
    v6 = v3[34];
    v7 = v3[31];
    v8 = v3[28];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v3 + 2, v7, v6, v8, 0);
  }
}

uint64_t sub_FAF64()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_FBA24;
  }

  else
  {
    v2 = sub_FB078;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_FB078()
{
  sub_123ACC();
  v1 = v0[10];
  v2 = v0[11];
  sub_23B08(v0 + 7, v1);
  v3 = swift_task_alloc();
  v0[43] = v3;
  *v3 = v0;
  v3[1] = sub_FB13C;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v1, v2);
}

uint64_t sub_FB13C()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_FBE6C;
  }

  else
  {
    v2 = sub_FB250;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_FB250()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_5BB0(v0 + 7);
  (*(v2 + 104))(v1, enum case for ActivityType.completed(_:), v3);
  if (qword_15EFF8 != -1)
  {
    swift_once();
  }

  v4 = v0[16];
  v5 = sub_124FDC();
  sub_5B30(v5, qword_167878);
  v6 = sub_12353C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  if (qword_15F000 != -1)
  {
    swift_once();
  }

  v21 = v0[39];
  v7 = v0[33];
  v27 = v0[32];
  v28 = v0[34];
  v8 = v0[30];
  v25 = v0[29];
  v26 = v0[31];
  v9 = v0[27];
  v23 = v0[26];
  v24 = v0[28];
  v10 = v0[18];
  v20 = v0[19];
  v11 = v0[16];
  v22 = v0[17];
  v13 = v0[14];
  v12 = v0[15];
  v14 = sub_124FEC();
  v15 = sub_5B30(v14, qword_167890);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v12, v15, v14);
  (*(v16 + 56))(v12, 0, 1, v14);
  v17 = sub_124FCC();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  sub_124FBC();

  sub_5CA8(v13, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v12, &qword_15F6F0, &unk_128340);
  sub_5CA8(v11, &qword_15F6F8, &qword_1271D0);
  (*(v10 + 8))(v20, v22);
  sub_5BB0(v0 + 2);
  (*(v9 + 8))(v24, v23);
  (*(v8 + 8))(v26, v25);
  (*(v7 + 8))(v28, v27);

  v18 = v0[1];

  return v18();
}

uint64_t sub_FB5EC()
{
  (*(v0[27] + 8))(v0[28], v0[26]);
  (*(v0[18] + 104))(v0[19], enum case for ActivityType.failed(_:), v0[17]);
  if (qword_15EFF8 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_124FDC();
  sub_5B30(v2, qword_167878);
  v3 = sub_12353C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  if (qword_15F000 != -1)
  {
    swift_once();
  }

  v4 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = sub_124FEC();
  v11 = sub_5B30(v10, qword_167890);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  v13 = enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:);
  v14 = sub_124FCC();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v9, v13, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  sub_124FBC();
  sub_5CA8(v9, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v8, &qword_15F6F0, &unk_128340);
  sub_5CA8(v7, &qword_15F6F8, &qword_1271D0);
  (*(v4 + 8))(v5, v6);
  v16 = sub_125AAC();
  v17 = sub_125DEC();
  v18 = os_log_type_enabled(v16, v17);
  v20 = v0[33];
  v19 = v0[34];
  v22 = v0[31];
  v21 = v0[32];
  v24 = v0[29];
  v23 = v0[30];
  if (v18)
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v16, v17, "UndoCreateTimerFlow: Error publishing Success output.", v25, 2u);
  }

  (*(v23 + 8))(v22, v24);
  (*(v20 + 8))(v19, v21);

  v26 = v0[1];

  return v26();
}

uint64_t sub_FBA24()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);

  (*(v2 + 8))(v1, v3);
  (*(*(v0 + 144) + 104))(*(v0 + 152), enum case for ActivityType.failed(_:), *(v0 + 136));
  if (qword_15EFF8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 128);
  v5 = sub_124FDC();
  sub_5B30(v5, qword_167878);
  v6 = sub_12353C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  if (qword_15F000 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);
  v13 = sub_124FEC();
  v14 = sub_5B30(v13, qword_167890);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v11, v14, v13);
  (*(v15 + 56))(v11, 0, 1, v13);
  v16 = enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:);
  v17 = sub_124FCC();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v12, v16, v17);
  (*(v18 + 56))(v12, 0, 1, v17);
  sub_124FBC();
  sub_5CA8(v12, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v11, &qword_15F6F0, &unk_128340);
  sub_5CA8(v10, &qword_15F6F8, &qword_1271D0);
  (*(v7 + 8))(v8, v9);
  v19 = sub_125AAC();
  v20 = sub_125DEC();
  v21 = os_log_type_enabled(v19, v20);
  v23 = *(v0 + 264);
  v22 = *(v0 + 272);
  v25 = *(v0 + 248);
  v24 = *(v0 + 256);
  v27 = *(v0 + 232);
  v26 = *(v0 + 240);
  if (v21)
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_0, v19, v20, "UndoCreateTimerFlow: Error publishing Success output.", v28, 2u);
  }

  (*(v26 + 8))(v25, v27);
  (*(v23 + 8))(v22, v24);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_FBE6C()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);

  sub_5BB0((v0 + 16));
  (*(v2 + 8))(v1, v3);
  sub_5BB0((v0 + 56));
  (*(*(v0 + 144) + 104))(*(v0 + 152), enum case for ActivityType.failed(_:), *(v0 + 136));
  if (qword_15EFF8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 128);
  v5 = sub_124FDC();
  sub_5B30(v5, qword_167878);
  v6 = sub_12353C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  if (qword_15F000 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);
  v13 = sub_124FEC();
  v14 = sub_5B30(v13, qword_167890);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v11, v14, v13);
  (*(v15 + 56))(v11, 0, 1, v13);
  v16 = enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:);
  v17 = sub_124FCC();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v12, v16, v17);
  (*(v18 + 56))(v12, 0, 1, v17);
  sub_124FBC();
  sub_5CA8(v12, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v11, &qword_15F6F0, &unk_128340);
  sub_5CA8(v10, &qword_15F6F8, &qword_1271D0);
  (*(v7 + 8))(v8, v9);
  v19 = sub_125AAC();
  v20 = sub_125DEC();
  v21 = os_log_type_enabled(v19, v20);
  v23 = *(v0 + 264);
  v22 = *(v0 + 272);
  v25 = *(v0 + 248);
  v24 = *(v0 + 256);
  v27 = *(v0 + 232);
  v26 = *(v0 + 240);
  if (v21)
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_0, v19, v20, "UndoCreateTimerFlow: Error publishing Success output.", v28, 2u);
  }

  (*(v26 + 8))(v25, v27);
  (*(v23 + 8))(v22, v24);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t UndoCreateTimerFlow.deinit()
{

  sub_5BB0((v0 + 32));

  sub_5CA8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin19UndoCreateTimerFlow_followupPluginAction, &qword_160838, &qword_128330);
  return v0;
}

uint64_t UndoCreateTimerFlow.__deallocating_deinit()
{

  sub_5BB0((v0 + 32));

  sub_5CA8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin19UndoCreateTimerFlow_followupPluginAction, &qword_160838, &qword_128330);

  return swift_deallocClassInstance();
}

uint64_t sub_FC448(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_503C;

  return UndoCreateTimerFlow.execute()(a1);
}

uint64_t sub_FC4E4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UndoCreateTimerFlow(0);

  return sub_12347C();
}

char *sub_FC520(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_124EDC();
  __chkstk_darwin(v6 - 8);
  v11 = sub_12587C();
  v12 = &protocol witness table for SiriTimerManagerImpl;
  *&v10 = a1;
  type metadata accessor for DeleteTimerCATs_Async(0);
  sub_124ECC();
  *(a3 + 2) = sub_124DBC();
  type metadata accessor for DeleteTimerCATPatternsExecutor(0);
  sub_124ECC();
  *(a3 + 3) = sub_124DBC();
  *(a3 + 10) = 0;
  *(a3 + 11) = 0;
  v7 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin19UndoCreateTimerFlow_followupPluginAction;
  v8 = sub_12372C();
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  sub_7D780(&v10, (a3 + 32));
  *(a3 + 9) = a2;
  return a3;
}

uint64_t sub_FC65C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_160838, &qword_128330);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_FC6CC(uint64_t a1)
{
  v1[12] = a1;
  sub_124EDC();
  v1[13] = swift_task_alloc();
  v2 = sub_125ABC();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = sub_124FFC();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v4 = sub_12501C();
  v1[20] = v4;
  v1[21] = *(v4 - 8);
  v1[22] = swift_task_alloc();
  sub_5AE8(&qword_15F6E8, &unk_1271C0);
  v1[23] = swift_task_alloc();
  sub_5AE8(&qword_15F6F0, &unk_128340);
  v1[24] = swift_task_alloc();
  sub_5AE8(&qword_15F6F8, &qword_1271D0);
  v1[25] = swift_task_alloc();
  v5 = sub_12370C();
  v1[26] = v5;
  v1[27] = *(v5 - 8);
  v1[28] = swift_task_alloc();
  v6 = sub_12392C();
  v1[29] = v6;
  v1[30] = *(v6 - 8);
  v1[31] = swift_task_alloc();
  v7 = sub_12368C();
  v1[32] = v7;
  v1[33] = *(v7 - 8);
  v1[34] = swift_task_alloc();

  return _swift_task_switch(sub_FCA2C, 0, 0);
}

uint64_t sub_FCA2C()
{
  if (qword_15EFF0 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[14], qword_162A70);
  v0[35] = v1;
  v31 = v1;
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "UndoCreateTimerFlow.makeAndPublishGenericFailure() called", v4, 2u);
  }

  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];

  sub_12364C();
  sub_12391C();
  (*(v6 + 104))(v5, enum case for ActivityType.failed(_:), v7);
  if (qword_15EFF8 != -1)
  {
    swift_once();
  }

  v8 = v0[25];
  v9 = sub_124FDC();
  sub_5B30(v9, qword_167878);
  v10 = sub_12353C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  if (qword_15F000 != -1)
  {
    swift_once();
  }

  v11 = v0[27];
  v12 = v0[25];
  v25 = v0[28];
  v26 = v0[26];
  v14 = v0[23];
  v13 = v0[24];
  v15 = v0[18];
  v27 = v0[19];
  v28 = v0[17];
  v29 = v0[16];
  v16 = v0[15];
  v30 = v0[14];
  v17 = v0[12];
  v18 = sub_124FEC();
  v19 = sub_5B30(v18, qword_167890);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v13, v19, v18);
  (*(v20 + 56))(v13, 0, 1, v18);
  v21 = sub_124FCC();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v14, v17, v21);
  (*(v22 + 56))(v14, 0, 1, v21);
  sub_124FBC();
  sub_5CA8(v14, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v13, &qword_15F6F0, &unk_128340);
  sub_5CA8(v12, &qword_15F6F8, &qword_1271D0);
  (*(v11 + 8))(v25, v26);
  (*(v15 + 104))(v27, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v28);
  (*(v16 + 16))(v29, v31, v30);
  mach_absolute_time();
  sub_12502C();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[36] = sub_124DBC();
  v32 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v23 = swift_task_alloc();
  v0[37] = v23;
  *v23 = v0;
  v23[1] = sub_FCEF8;

  return (v32)(0x73614272656D6974, 0xEF726F7272652365, _swiftEmptyArrayStorage);
}

uint64_t sub_FCEF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[38] = a1;
  v3[39] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_FD1AC, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[40] = v5;
    *v5 = v4;
    v5[1] = sub_FD098;
    v6 = v3[34];
    v7 = v3[31];
    v8 = v3[22];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v3 + 2, v6, v7, v8, 0);
  }
}

uint64_t sub_FD098()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_FD6B0;
  }

  else
  {
    v2 = sub_FD380;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_FD1AC()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  (*(v2 + 8))(v1, v3);
  v4 = sub_125AAC();
  v5 = sub_125DEC();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[33];
  v7 = v0[34];
  v10 = v0[31];
  v9 = v0[32];
  v12 = v0[29];
  v11 = v0[30];
  if (v6)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v4, v5, "UndoCreateTimerFlow: Error publishing GenericFailure.", v13, 2u);
  }

  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v7, v9);

  v14 = v0[1];

  return v14();
}

uint64_t sub_FD380()
{
  sub_123ACC();
  v1 = v0[10];
  v2 = v0[11];
  sub_23B08(v0 + 7, v1);
  v3 = swift_task_alloc();
  v0[42] = v3;
  *v3 = v0;
  v3[1] = sub_FD444;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v1, v2);
}

uint64_t sub_FD444()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_FD884;
  }

  else
  {
    v2 = sub_FD558;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_FD558()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v9 = *(v0 + 160);

  sub_5BB0((v0 + 16));
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  sub_5BB0((v0 + 56));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_FD6B0()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);

  (*(v2 + 8))(v1, v3);
  v4 = sub_125AAC();
  v5 = sub_125DEC();
  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 264);
  v7 = *(v0 + 272);
  v10 = *(v0 + 248);
  v9 = *(v0 + 256);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  if (v6)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v4, v5, "UndoCreateTimerFlow: Error publishing GenericFailure.", v13, 2u);
  }

  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v7, v9);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_FD884()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);

  sub_5BB0((v0 + 16));
  (*(v2 + 8))(v1, v3);
  sub_5BB0((v0 + 56));
  v4 = sub_125AAC();
  v5 = sub_125DEC();
  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 264);
  v7 = *(v0 + 272);
  v10 = *(v0 + 248);
  v9 = *(v0 + 256);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  if (v6)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v4, v5, "UndoCreateTimerFlow: Error publishing GenericFailure.", v13, 2u);
  }

  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v7, v9);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_FDA68()
{
  sub_124EDC();
  v0[12] = swift_task_alloc();
  v1 = sub_125ABC();
  v0[13] = v1;
  v0[14] = *(v1 - 8);
  v0[15] = swift_task_alloc();
  v2 = sub_124FFC();
  v0[16] = v2;
  v0[17] = *(v2 - 8);
  v0[18] = swift_task_alloc();
  v3 = sub_12501C();
  v0[19] = v3;
  v0[20] = *(v3 - 8);
  v0[21] = swift_task_alloc();
  v4 = sub_12392C();
  v0[22] = v4;
  v0[23] = *(v4 - 8);
  v0[24] = swift_task_alloc();
  v5 = sub_12368C();
  v0[25] = v5;
  v0[26] = *(v5 - 8);
  v0[27] = swift_task_alloc();
  sub_5AE8(&qword_15F6E8, &unk_1271C0);
  v0[28] = swift_task_alloc();
  sub_5AE8(&qword_15F6F0, &unk_128340);
  v0[29] = swift_task_alloc();
  sub_5AE8(&qword_15F6F8, &qword_1271D0);
  v0[30] = swift_task_alloc();
  v6 = sub_12370C();
  v0[31] = v6;
  v0[32] = *(v6 - 8);
  v0[33] = swift_task_alloc();

  return _swift_task_switch(sub_FDDC4, 0, 0);
}

uint64_t sub_FDDC4()
{
  if (qword_15EFF0 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[13], qword_162A70);
  v0[34] = v1;
  v31 = v1;
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "UndoCreateTimerFlow.makeAndPublishFailureResponseTimerNotFound() called", v4, 2u);
  }

  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];

  (*(v6 + 104))(v5, enum case for ActivityType.failed(_:), v7);
  if (qword_15EFF8 != -1)
  {
    swift_once();
  }

  v8 = v0[30];
  v9 = sub_124FDC();
  sub_5B30(v9, qword_167878);
  v10 = sub_12353C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  if (qword_15F000 != -1)
  {
    swift_once();
  }

  v11 = v0[32];
  v12 = v0[30];
  v14 = v0[28];
  v13 = v0[29];
  v25 = v0[33];
  v26 = v0[31];
  v15 = v0[17];
  v27 = v0[18];
  v28 = v0[16];
  v29 = v0[15];
  v16 = v0[14];
  v30 = v0[13];
  v17 = sub_124FEC();
  v18 = sub_5B30(v17, qword_167890);
  v19 = *(v17 - 8);
  (*(v19 + 16))(v13, v18, v17);
  (*(v19 + 56))(v13, 0, 1, v17);
  v20 = enum case for SiriTimeEventSender.ReasonDescription.timerNotFound(_:);
  v21 = sub_124FCC();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v14, v20, v21);
  (*(v22 + 56))(v14, 0, 1, v21);
  sub_124FBC();
  sub_5CA8(v14, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v13, &qword_15F6F0, &unk_128340);
  sub_5CA8(v12, &qword_15F6F8, &qword_1271D0);
  (*(v11 + 8))(v25, v26);
  sub_12364C();
  sub_12391C();
  (*(v15 + 104))(v27, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v28);
  (*(v16 + 16))(v29, v31, v30);
  mach_absolute_time();
  sub_12502C();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[35] = sub_124DBC();
  v32 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v23 = swift_task_alloc();
  v0[36] = v23;
  *v23 = v0;
  v23[1] = sub_FE294;

  return (v32)(0xD000000000000012, 0x800000000012C5A0, _swiftEmptyArrayStorage);
}

uint64_t sub_FE294(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_FE548, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[39] = v5;
    *v5 = v4;
    v5[1] = sub_FE434;
    v6 = v3[27];
    v7 = v3[24];
    v8 = v3[21];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v3 + 2, v6, v7, v8, 0);
  }
}

uint64_t sub_FE434()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_FEA3C;
  }

  else
  {
    v2 = sub_FE70C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_FE548()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v10 = sub_125AAC();
  v11 = sub_125DEC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "UndoCreateTimerFlow: Error publishing FailureResponseTimerNotFound.", v12, 2u);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_FE70C()
{
  sub_123ACC();
  v1 = v0[10];
  v2 = v0[11];
  sub_23B08(v0 + 7, v1);
  v3 = swift_task_alloc();
  v0[41] = v3;
  *v3 = v0;
  v3[1] = sub_FE7D0;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v1, v2);
}

uint64_t sub_FE7D0()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_FEC00;
  }

  else
  {
    v2 = sub_FE8E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_FE8E4()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);

  sub_5BB0((v0 + 16));
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  sub_5BB0((v0 + 56));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_FEA3C()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v10 = sub_125AAC();
  v11 = sub_125DEC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "UndoCreateTimerFlow: Error publishing FailureResponseTimerNotFound.", v12, 2u);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_FEC00()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);

  sub_5BB0((v0 + 16));
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  sub_5BB0((v0 + 56));
  v10 = sub_125AAC();
  v11 = sub_125DEC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "UndoCreateTimerFlow: Error publishing FailureResponseTimerNotFound.", v12, 2u);
  }

  v13 = *(v0 + 8);

  return v13();
}

void sub_FEDFC(uint64_t a1)
{
  sub_FEEC0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_FEEC0(uint64_t a1)
{
  if (!qword_1608B0)
  {
    sub_12372C();
    v1 = sub_125F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_1608B0);
    }
  }
}

uint64_t sub_FEF1C(uint64_t a1)
{
  sub_5AE8(&qword_162BF8, &unk_12B690);
  v3 = *(v1 + 16);

  return sub_FA12C(a1, v3);
}

uint64_t sub_FEF9C()
{
  v1 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_FF030()
{
  sub_5AE8(&qword_162BF8, &unk_12B690);

  return sub_FA58C();
}

uint64_t sub_FF0AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_FF0C4()
{
  v1 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_FF194(uint64_t a1)
{
  sub_5AE8(&qword_162BF8, &unk_12B690);
  v3 = *(v1 + 16);

  return sub_FA688(a1, v3);
}

uint64_t sub_FF214(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_FF26C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&qword_162C28, &qword_12B6D8);
  v5 = __chkstk_darwin(v4 - 8);
  v59 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v68 = v55 - v7;
  v8 = sub_5AE8(&qword_15F5F0, &unk_12AAA0);
  __chkstk_darwin(v8 - 8);
  v10 = v55 - v9;
  v71 = sub_125B4C();
  v60 = *(v71 - 8);
  v11 = __chkstk_darwin(v71);
  v64 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v63 = v55 - v13;
  v55[1] = a2;
  sub_12391C();
  sub_125B0C();
  swift_allocObject();
  result = sub_125AFC();
  v61 = result;
  if (a1 >> 62)
  {
    result = sub_1260FC();
    v16 = result;
  }

  else
  {
    v16 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v55[0] = a1 >> 62;
  if (v16)
  {
    if (v16 < 1)
    {
      __break(1u);
      goto LABEL_43;
    }

    v17 = 0;
    v76 = 0;
    v72 = a1 & 0xC000000000000001;
    v65 = (v60 + 56);
    v62 = (v60 + 32);
    v58 = (v60 + 16);
    v57 = v60 + 8;
    v70 = _swiftEmptyArrayStorage;
    *&v15 = 136315138;
    v56 = v15;
    v69 = a1;
    v66 = v16;
    v67 = v10;
    do
    {
      if (v72)
      {
        v18 = sub_125FFC();
      }

      else
      {
        v18 = *(a1 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = sub_1153C8();
      if (sub_12438C())
      {

        v21 = [v19 identifier];
        if (v21)
        {
          v22 = v21;
          v23 = sub_125B9C();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0;
        }

        v74 = v19;
        v75 = v17;
        v77[0] = v23;
        v77[1] = v25;
        sub_5AE8(&qword_162000, &qword_129F18);
        v73 = sub_125BAC();
        if (qword_15EE98 != -1)
        {
          swift_once();
        }

        v34 = sub_125ADC();
        v35 = *(*(v34 - 8) + 56);
        v35(v68, 1, 1, v34);
        sub_1257EC();

        v36 = v74;
        v37 = v67;
        v38 = v36;
        v39 = v76;
        sub_125B2C();
        if (v39)
        {

          (*v65)(v37, 1, 1, v71);
          sub_5CA8(v37, &qword_15F5F0, &unk_12AAA0);
          v76 = 0;
          a1 = v69;
        }

        else
        {
          v40 = v38;
          v76 = 0;
          v41 = v71;
          (*v65)(v37, 0, 1, v71);
          v42 = v63;
          v43 = *v62;
          (*v62)(v63, v37, v41);
          v44 = v59;
          sub_125AEC();
          v35(v44, 0, 1, v34);
          sub_125B3C();
          (*v58)(v64, v42, v41);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a1 = v69;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v70 = sub_CDB78(0, *(v70 + 2) + 1, 1, v70);
          }

          v47 = *(v70 + 2);
          v46 = *(v70 + 3);
          if (v47 >= v46 >> 1)
          {
            v70 = sub_CDB78((v46 > 1), v47 + 1, 1, v70);
          }

          v48 = v60;
          v49 = v71;
          (*(v60 + 8))(v63, v71);
          v50 = v70;
          *(v70 + 2) = v47 + 1;
          v43(&v50[((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v47], v64, v49);
        }

        v16 = v66;
        v17 = v75;
      }

      else
      {
        if (qword_15F058 != -1)
        {
          swift_once();
        }

        v26 = sub_125ABC();
        sub_5B30(v26, qword_162FF0);

        v27 = sub_125AAC();
        v28 = sub_125DEC();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v77[0] = v30;
          *v29 = v56;
          v77[2] = v20;
          sub_12466C();

          v31 = sub_125BAC();
          v33 = sub_8530(v31, v32, v77);

          *(v29 + 4) = v33;
          _os_log_impl(&dword_0, v27, v28, "Fail to build uso entity %s", v29, 0xCu);
          sub_5BB0(v30);

          a1 = v69;
        }
      }

      ++v17;
    }

    while (v16 != v17);
  }

  else
  {
    v70 = _swiftEmptyArrayStorage;
  }

  sub_12387C();
  if (v55[0])
  {
    v51 = sub_1260FC();
  }

  else
  {
    v51 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v51)
  {
LABEL_40:

    sub_1238BC();
    sub_103160(a1);
    sub_12388C();
  }

  v77[0] = _swiftEmptyArrayStorage;
  result = sub_12606C();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v52 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v53 = sub_125FFC();
      }

      else
      {
        v53 = *(a1 + 8 * v52 + 32);
      }

      v54 = v53;
      ++v52;
      sub_11585C();

      sub_12603C();
      sub_12607C();
      sub_12608C();
      sub_12604C();
    }

    while (v51 != v52);
    goto LABEL_40;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_FFAE8(uint64_t a1)
{
  v1 = a1;
  v2 = sub_5AE8(&qword_162C18, &qword_12B6C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_123ECC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v26 - v11;
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  sub_12391C();
  sub_102588(v1);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_5CA8(v4, &qword_162C18, &qword_12B6C8);
  }

  else
  {
    (*(v6 + 32))(v14, v4, v5);
    if (qword_15F008 != -1)
    {
      swift_once();
    }

    v15 = sub_125ABC();
    sub_5B30(v15, qword_162C00);
    v16 = *(v6 + 16);
    v16(v12, v14, v5);
    v17 = sub_125AAC();
    v18 = sub_125DFC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28 = v18;
      v20 = v19;
      v27 = swift_slowAlloc();
      v29 = v27;
      *v20 = 136315138;
      v16(v9, v12, v5);
      v26 = sub_125BAC();
      v22 = v21;
      v23 = *(v6 + 8);
      v23(v12, v5);
      v24 = sub_8530(v26, v22, &v29);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_0, v17, v28, "Submitting NLv4 dialog act: %s", v20, 0xCu);
      sub_5BB0(v27);
    }

    else
    {

      v23 = *(v6 + 8);
      v23(v12, v5);
    }

    sub_12385C();
    v23(v14, v5);
  }

  sub_1238DC();
  sub_1238AC();
  sub_1238CC();
  sub_1238FC();
  return sub_1238EC();
}

uint64_t sub_FFF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = sub_123ECC();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v137 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_123EFC();
  v136 = *(v140 - 8);
  v5 = __chkstk_darwin(v140);
  v133 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v135 = &v112 - v7;
  v145 = sub_12452C();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_123D7C();
  v10 = __chkstk_darwin(v9 - 8);
  v146 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v149 = &v112 - v13;
  __chkstk_darwin(v12);
  v154 = (&v112 - v14);
  v15 = sub_123E8C();
  v158 = *(v15 - 8);
  v159 = v15;
  v16 = __chkstk_darwin(v15);
  v148 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v150 = &v112 - v19;
  v20 = __chkstk_darwin(v18);
  v152 = &v112 - v21;
  __chkstk_darwin(v20);
  v157 = &v112 - v22;
  v161 = sub_123E4C();
  v156 = *(v161 - 8);
  v23 = __chkstk_darwin(v161);
  v132 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v147 = &v112 - v26;
  v27 = __chkstk_darwin(v25);
  v141 = &v112 - v28;
  v29 = __chkstk_darwin(v27);
  v153 = &v112 - v30;
  __chkstk_darwin(v29);
  v160 = &v112 - v31;
  v155 = sub_12407C();
  v162 = *(v155 - 8);
  v32 = __chkstk_darwin(v155);
  v151 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v163 = &v112 - v34;
  v35 = sub_5AE8(&qword_162038, &qword_129F28);
  __chkstk_darwin(v35 - 8);
  v37 = &v112 - v36;
  v134 = a2;
  sub_FFAE8(a1);
  v38 = sub_103C24(&enum case for UsoEntity_common_UserEntity.DefinedValues.common_UserEntity_Everywhere(_:));
  v39 = sub_103C24(&enum case for UsoEntity_common_UserEntity.DefinedValues.common_UserEntity_Here(_:));
  v165 = _swiftEmptyArrayStorage;
  v40 = sub_5AE8(&qword_160810, &unk_127420);
  v41 = swift_allocObject();
  v164 = xmmword_126EB0;
  *(v41 + 16) = xmmword_126EB0;
  *(v41 + 32) = v38;
  v42 = sub_12422C();
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v45 = v43 + 56;
  v44(v37, 1, 1, v42);

  v46 = sub_1241EC();

  sub_5CA8(v37, &qword_162038, &qword_129F28);
  v142 = v40;
  v47 = swift_allocObject();
  *(v47 + 16) = v164;
  *(v47 + 32) = v39;
  v44(v37, 1, 1, v42);

  v48 = sub_1241EC();

  sub_5CA8(v37, &qword_162038, &qword_129F28);
  v49 = v163;
  sub_124B6C();
  v123 = v45;
  v127 = v44;
  v122 = v37;
  v124 = v42;
  v129 = v38;
  v130 = v39;
  v128 = v48;
  v131 = v46;
  v126 = sub_30B8C(0, &qword_162C40, USOSerializedGraph_ptr);
  v50 = sub_125E1C();
  v51 = v162[1];
  ++v162;
  v125 = v51;
  v51(v49, v155);
  v52 = [objc_allocWithZone(SIRINLUUserStatedTask) initWithTask:v50];
  sub_125C3C();
  if (*(&dword_10 + (v165 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v165 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_125C9C();
  }

  sub_125CCC();
  v163 = v165;
  v53 = v160;
  sub_123E3C();
  v54 = v157;
  sub_123E7C();
  sub_123F1C();
  v55 = v158;
  v120 = v52;
  v121 = v50;
  sub_123E6C();
  v119 = *(v55 + 16);
  v119(v152, v54, v159);
  sub_123E1C();
  v56 = v156;
  v57 = *(v156 + 16);
  v118 = v156 + 16;
  v117 = v57;
  (v57)(v153, v53, v161);
  v58 = sub_CDCD4(0, 1, 1, _swiftEmptyArrayStorage);
  v60 = v58[2];
  v59 = v58[3];
  if (v60 >= v59 >> 1)
  {
    v58 = sub_CDCD4((v59 > 1), v60 + 1, 1, v58);
  }

  v154 = v58;
  v58[2] = v60 + 1;
  v62 = *(v56 + 32);
  v61 = v56 + 32;
  v63 = (*(v61 + 48) + 32) & ~*(v61 + 48);
  v64 = *(v61 + 40);
  v65 = v161;
  v62(v58 + v63 + v64 * v60, v153, v161);
  v66 = v151;
  sub_124B6C();
  v113 = v64;
  v114 = v61;
  v115 = v63;
  v116 = v62;
  v153 = (v55 + 16);
  v67 = sub_125E1C();
  v125(v66, v155);
  v68 = objc_allocWithZone(SIRINLUUserStatedTask);
  v163 = v67;
  v69 = [v68 initWithTask:v67];
  sub_125C3C();
  if (*(&dword_10 + (v165 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v165 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_125C9C();
  }

  sub_125CCC();

  v70 = v150;
  sub_123E7C();
  sub_123F1C();
  v71 = v127;
  v162 = v69;
  sub_123E6C();
  v72 = v159;
  v119(v152, v70, v159);
  v73 = v160;
  sub_123E1C();
  v74 = v65;
  v75 = v141;
  v76 = v74;
  v117(v141, v73);
  v77 = v154;
  v79 = v154[2];
  v78 = v154[3];
  if (v79 >= v78 >> 1)
  {
    v77 = sub_CDCD4((v78 > 1), v79 + 1, 1, v154);
  }

  v80 = v116;
  v81 = v115;
  v82 = v113;
  v154 = v77;
  v77[2] = v79 + 1;
  v80(v77 + v81 + v79 * v82, v75, v76);
  sub_124A9C();
  swift_allocObject();
  v83 = sub_124A8C();
  sub_12478C();
  swift_allocObject();
  v84 = sub_12477C();
  sub_12497C();
  swift_allocObject();
  sub_12496C();
  v85 = v144;
  v86 = v143;
  v87 = v145;
  (*(v144 + 104))(v143, enum case for UsoEntity_common_Quantifier.DefinedValues.common_Quantifier_All(_:), v145);
  sub_12495C();
  (*(v85 + 8))(v86, v87);

  sub_12447C();

  sub_123FCC();
  v88 = swift_allocObject();
  *(v88 + 16) = v164;
  *(v88 + 32) = v83;
  v89 = v122;
  v71(v122, 1, 1, v124);

  v90 = sub_1241EC();

  sub_5CA8(v89, &qword_162038, &qword_129F28);
  v91 = v147;
  sub_123E3C();
  v92 = v148;
  sub_123E7C();
  sub_123F1C();
  v93 = v154;
  *&v164 = v90;
  sub_123E6C();
  v119(v152, v92, v72);
  sub_123E1C();
  v94 = v132;
  (v117)(v132, v91, v161);
  v96 = *(v93 + 2);
  v95 = *(v93 + 3);
  v97 = v93;
  v155 = v84;
  v151 = v83;
  if (v96 >= v95 >> 1)
  {
    v97 = sub_CDCD4((v95 > 1), v96 + 1, 1, v93);
  }

  v98 = v139;
  v99 = v137;
  v100 = v136;
  v101 = v116;
  v102 = v115;
  v103 = v113;
  *(v97 + 2) = v96 + 1;
  v101(&v97[v102 + v96 * v103], v94, v161);
  v104 = v135;
  sub_123EEC();
  sub_123EDC();
  sub_123EBC();
  (*(v100 + 16))(v133, v104, v140);
  sub_123EAC();
  sub_5AE8(&qword_162C48, &qword_12B6E8);
  v105 = v138;
  v106 = (*(v138 + 80) + 32) & ~*(v138 + 80);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_126CB0;
  (*(v105 + 16))(v107 + v106, v99, v98);
  sub_12389C();

  (*(v105 + 8))(v99, v98);
  (*(v100 + 8))(v104, v140);
  v108 = *(v158 + 8);
  v108(v148, v72);
  v109 = *(v156 + 8);
  v110 = v161;
  v109(v147, v161);
  v108(v150, v72);
  v108(v157, v72);
  return (v109)(v160, v110);
}

uint64_t sub_101208@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  LOBYTE(v5) = a2;
  v8 = sub_5AE8(&qword_15F5F0, &unk_12AAA0);
  __chkstk_darwin(v8 - 8);
  v72 = &v62 - v9;
  v10 = sub_125B4C();
  v71 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v76 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = &v62 - v13;
  v14 = sub_122F6C();
  v73 = *(v14 - 8);
  v74 = v14;
  __chkstk_darwin(v14);
  v68 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_5AE8(&qword_162C18, &qword_12B6C8);
  __chkstk_darwin(v16 - 8);
  v18 = &v62 - v17;
  v77 = sub_123ECC();
  v67 = *(v77 - 8);
  v19 = __chkstk_darwin(v77);
  v62 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v63 = &v62 - v22;
  __chkstk_darwin(v21);
  v24 = &v62 - v23;
  sub_12391C();
  sub_1238DC();
  sub_1238AC();
  sub_1238CC();
  sub_5AE8(&qword_162048, &qword_129F38);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_127990;
  *(v25 + 32) = 0xD00000000000001CLL;
  *(v25 + 40) = 0x800000000012C320;
  *(v25 + 48) = 0xD00000000000001BLL;
  *(v25 + 56) = 0x800000000012C030;
  *(v25 + 64) = 0xD000000000000020;
  *(v25 + 72) = 0x800000000012F070;
  *(v25 + 80) = 0xD00000000000001BLL;
  *(v25 + 88) = 0x800000000012C340;
  v66 = a3;
  v69 = a1;
  v75 = v24;
  if ((a3 & 1) == 0)
  {
    goto LABEL_4;
  }

  v24 = a4;
  v79 = 0;
  v80 = 0xE000000000000000;
  sub_125FEC(20);

  v79 = 0xD000000000000012;
  v80 = 0x800000000012F0A0;
  v81._countAndFlagsBits = sub_125BDC();
  sub_125C0C(v81);

  a3 = v79;
  a1 = v80;
  a4 = *(v25 + 16);
  v26 = *(v25 + 24);
  v27 = (a4 + 1);
  if (a4 >= v26 >> 1)
  {
    goto LABEL_44;
  }

LABEL_3:
  *(v25 + 16) = v27;
  v28 = v25 + 16 * a4;
  *(v28 + 32) = a3;
  *(v28 + 40) = a1;
  a4 = v24;
  sub_1238EC();
  a1 = v69;
  v24 = v75;
LABEL_4:

  v64 = v25;
  sub_1238FC();
  sub_103160(a1);
  sub_12388C();
  sub_12390C();
  v65 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v29 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    goto LABEL_6;
  }

  while (1)
  {
    v29 = sub_1260FC();
LABEL_6:
    v78 = v10;
    if (v29)
    {
      v79 = _swiftEmptyArrayStorage;
      v27 = &v79;
      sub_12606C();
      if (v29 < 0)
      {
        __break(1u);
LABEL_44:
        v25 = sub_CD9E0((v26 > 1), v27, 1, v25);
        goto LABEL_3;
      }

      v30 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v31 = sub_125FFC();
        }

        else
        {
          v31 = *(a1 + 8 * v30 + 32);
        }

        v32 = v31;
        ++v30;
        v33 = sub_1153C8();
        sub_103DC8(v5, v33);

        sub_12603C();
        sub_12607C();
        sub_12608C();
        sub_12604C();
        v10 = v78;
      }

      while (v29 != v30);
      v24 = v75;
    }

    sub_123E9C();

    v34 = v67;
    v35 = v77;
    if ((*(v67 + 48))(v18, 1, v77) == 1)
    {
      sub_5CA8(v18, &qword_162C18, &qword_12B6C8);
    }

    else
    {
      (*(v34 + 32))(v24, v18, v35);
      if (qword_15F008 != -1)
      {
        swift_once();
      }

      v36 = sub_125ABC();
      sub_5B30(v36, qword_162C00);
      v5 = *(v34 + 16);
      v37 = v63;
      v5(v63, v24, v35);
      v38 = sub_125AAC();
      v66 = sub_125DFC();
      if (os_log_type_enabled(v38, v66))
      {
        v39 = swift_slowAlloc();
        v40 = v37;
        v41 = v34;
        v42 = swift_slowAlloc();
        v79 = v42;
        *v39 = 136315138;
        v5(v62, v40, v77);
        v43 = sub_125BAC();
        v45 = v44;
        v46 = *(v41 + 8);
        LOBYTE(v5) = v41 + 8;
        v46(v40, v77);
        v47 = sub_8530(v43, v45, &v79);
        v10 = v78;

        *(v39 + 4) = v47;
        _os_log_impl(&dword_0, v38, v66, "Submitting Timer Disambiguation NLv4 dialog act: %s", v39, 0xCu);
        sub_5BB0(v42);
        v24 = v75;

        v35 = v77;
      }

      else
      {

        v46 = *(v34 + 8);
        LOBYTE(v5) = v34 + 8;
        v46(v37, v35);
      }

      sub_12385C();
      v46(v24, v35);
      a1 = v69;
    }

    v18 = v72;
    v48 = v73;
    v49 = v74;
    v50 = v68;
    sub_122F5C();
    v75 = sub_122F3C();
    v77 = v51;
    (*(v48 + 8))(v50, v49);
    if (v65)
    {
      break;
    }

    a3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    v68 = a4;
    if (!a3)
    {
      goto LABEL_39;
    }

LABEL_24:
    v24 = 0;
    v25 = a1;
    v73 = a1 & 0xFFFFFFFFFFFFFF8;
    v74 = a1 & 0xC000000000000001;
    a4 = v71 + 48;
    a1 = v71 + 32;
    v52 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v74)
      {
        v53 = sub_125FFC();
      }

      else
      {
        if (v24 >= *(v73 + 16))
        {
          goto LABEL_41;
        }

        v53 = *(v25 + 8 * v24 + 32);
      }

      v54 = v53;
      v5 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        break;
      }

      sub_114E08(v75, v77, v24, 0, v18);

      if ((*a4)(v18, 1, v10) == 1)
      {
        sub_5CA8(v18, &qword_15F5F0, &unk_12AAA0);
      }

      else
      {
        v55 = v18;
        v56 = *a1;
        v57 = v70;
        (*a1)(v70, v55, v10);
        v56(v76, v57, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_CDB78(0, v52[2] + 1, 1, v52);
        }

        v59 = v52[2];
        v58 = v52[3];
        if (v59 >= v58 >> 1)
        {
          v52 = sub_CDB78((v58 > 1), v59 + 1, 1, v52);
        }

        v52[2] = v59 + 1;
        v60 = v52 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v59;
        v10 = v78;
        v56(v60, v76, v78);
        v18 = v72;
      }

      ++v24;
      if (v5 == a3)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  a3 = sub_1260FC();
  v68 = a4;
  if (a3)
  {
    goto LABEL_24;
  }

LABEL_39:

  return sub_12387C();
}

uint64_t sub_101C5C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v7 = sub_5AE8(&qword_162C18, &qword_12B6C8);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_123ECC();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v38 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v39 = &v35 - v15;
  __chkstk_darwin(v14);
  v17 = &v35 - v16;
  sub_12391C();
  sub_1238DC();
  sub_1238AC();
  sub_1238CC();
  sub_1238FC();
  sub_1238EC();
  a2(0);
  swift_allocObject();
  a3();
  sub_12466C();
  swift_allocObject();
  v18 = sub_12465C();
  sub_1247EC();
  swift_allocObject();
  sub_1247DC();
  sub_12463C();

  a4(v18);
  sub_1251CC();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_5CA8(v9, &qword_162C18, &qword_12B6C8);
  }

  (*(v11 + 32))(v17, v9, v10);
  v20 = v17;
  if (qword_15F008 != -1)
  {
    swift_once();
  }

  v21 = sub_125ABC();
  sub_5B30(v21, qword_162C00);
  v22 = *(v11 + 16);
  v23 = v39;
  v37 = v20;
  v22(v39, v20, v10);
  v24 = sub_125AAC();
  v25 = sub_125DFC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v40 = v36;
    *v26 = 136315138;
    v22(v38, v23, v10);
    v27 = sub_125BAC();
    v28 = v23;
    v29 = v27;
    v31 = v30;
    v32 = *(v11 + 8);
    v32(v28, v10);
    v33 = sub_8530(v29, v31, &v40);

    *(v26 + 4) = v33;
    _os_log_impl(&dword_0, v24, v25, "Submitting NLv4 dialog act: %s", v26, 0xCu);
    sub_5BB0(v36);
  }

  else
  {

    v32 = *(v11 + 8);
    v32(v23, v10);
  }

  v34 = v37;
  sub_12385C();
  return (v32)(v34, v10);
}

uint64_t sub_102100()
{
  v0 = sub_5AE8(&qword_162C18, &qword_12B6C8);
  __chkstk_darwin(v0 - 8);
  v2 = &v24 - v1;
  v3 = sub_123ECC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v24 - v9;
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  sub_12391C();
  sub_1238DC();
  sub_1238AC();
  sub_1238CC();
  sub_1238FC();
  sub_1238EC();
  sub_1249AC();
  swift_allocObject();
  sub_12499C();
  sub_12466C();
  swift_allocObject();
  sub_12465C();
  sub_12473C();
  sub_1251CC();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_5CA8(v2, &qword_162C18, &qword_12B6C8);
  }

  (*(v4 + 32))(v12, v2, v3);
  if (qword_15F008 != -1)
  {
    swift_once();
  }

  v14 = sub_125ABC();
  sub_5B30(v14, qword_162C00);
  v15 = *(v4 + 16);
  v26 = v12;
  v15(v10, v12, v3);
  v16 = sub_125AAC();
  v17 = sub_125DFC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v18 = 136315138;
    v15(v7, v10, v3);
    v24 = sub_125BAC();
    v20 = v19;
    v21 = *(v4 + 8);
    v21(v10, v3);
    v22 = sub_8530(v24, v20, &v27);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_0, v16, v17, "Submitting NLv4 dialog act: %s", v18, 0xCu);
    sub_5BB0(v25);
  }

  else
  {

    v21 = *(v4 + 8);
    v21(v10, v3);
  }

  v23 = v26;
  sub_12385C();
  return (v21)(v23, v3);
}

uint64_t sub_10253C()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162C00);
  sub_5B30(v0, qword_162C00);
  return sub_1257AC();
}

uint64_t sub_102588(char a1)
{
  switch(a1)
  {
    case 1:
      goto LABEL_9;
    case 2:
    case 10:
      sub_1249CC();
      swift_allocObject();
      sub_1249BC();
      break;
    case 3:
      sub_124ABC();
      swift_allocObject();
      sub_124AAC();
      break;
    case 4:
      sub_124A7C();
      swift_allocObject();
      sub_124A6C();
      break;
    case 5:
      sub_1248BC();
      swift_allocObject();
      sub_1248AC();
      break;
    case 7:
    case 17:
    case 18:
      sub_1248DC();
      swift_allocObject();
      sub_1248CC();
      break;
    case 8:
      sub_124A0C();
      swift_allocObject();
      sub_1249FC();
      break;
    case 9:
      sub_1248FC();
      swift_allocObject();
      sub_1248EC();
      break;
    case 12:
      sub_124A2C();
      swift_allocObject();
      sub_124A1C();
      break;
    case 13:
    case 14:
    case 15:
      if (qword_15F008 != -1)
      {
        swift_once();
      }

      v1 = sub_125ABC();
      sub_5B30(v1, qword_162C00);
      v2 = sub_125AAC();
      v3 = sub_125DEC();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v10 = v5;
        *v4 = 136315138;
        v6 = sub_125BAC();
        v8 = sub_8530(v6, v7, &v10);

        *(v4 + 4) = v8;
        _os_log_impl(&dword_0, v2, v3, "Unsupported verb for confirmTimer: %s", v4, 0xCu);
        sub_5BB0(v5);
      }

LABEL_9:
      sub_1249AC();
      swift_allocObject();
      sub_12499C();
      break;
    default:
      sub_124ADC();
      swift_allocObject();
      sub_124ACC();
      break;
  }

  sub_1251DC();
}

uint64_t sub_1028BC()
{
  v0 = sub_5AE8(&qword_162C18, &qword_12B6C8);
  __chkstk_darwin(v0 - 8);
  v2 = &v26 - v1;
  v3 = sub_123ECC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v26 - v9;
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  sub_12391C();
  sub_1238DC();
  sub_1238AC();
  sub_1238CC();
  sub_1238FC();
  sub_1238EC();
  sub_1249AC();
  swift_allocObject();
  sub_12499C();
  sub_12466C();
  swift_allocObject();
  sub_12465C();
  sub_12464C();
  sub_12473C();
  sub_1251CC();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_5CA8(v2, &qword_162C18, &qword_12B6C8);
  }

  (*(v4 + 32))(v12, v2, v3);
  v14 = v12;
  if (qword_15F008 != -1)
  {
    swift_once();
  }

  v15 = sub_125ABC();
  sub_5B30(v15, qword_162C00);
  v16 = *(v4 + 16);
  v17 = v10;
  v28 = v14;
  v16(v10, v14, v3);
  v18 = sub_125AAC();
  v19 = sub_125DFC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v20 = 136315138;
    v16(v7, v17, v3);
    v26 = sub_125BAC();
    v22 = v21;
    v23 = *(v4 + 8);
    v23(v17, v3);
    v24 = sub_8530(v26, v22, &v29);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_0, v18, v19, "Submitting NLv4 dialog act: %s", v20, 0xCu);
    sub_5BB0(v27);
  }

  else
  {

    v23 = *(v4 + 8);
    v23(v10, v3);
  }

  v25 = v28;
  sub_12385C();
  return (v23)(v25, v3);
}

uint64_t sub_102D14(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_CDB28(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1236AC();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_102E40(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1260FC();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1260FC();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_102F30(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_102FD0(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_102F30(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1260FC();
LABEL_9:
  result = sub_12600C();
  *v2 = result;
  return result;
}

uint64_t sub_102FD0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1260FC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1260FC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_104184();
          for (i = 0; i != v6; ++i)
          {
            sub_5AE8(&qword_162C30, &qword_12B6E0);
            v9 = sub_BA7CC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_103160(unint64_t a1)
{
  v2 = sub_123BAC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5AE8(&qword_162C20, &qword_12B6D0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v75 = &v62 - v10;
  v11 = sub_12374C();
  isa = v11[-1].isa;
  v12 = __chkstk_darwin(v11);
  v78 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v73 = (&v62 - v15);
  v16 = __chkstk_darwin(v14);
  *&v72 = &v62 - v17;
  __chkstk_darwin(v16);
  v19 = &v62 - v18;
  v82 = sub_1236AC();
  v76 = *(v82 - 1);
  v20 = __chkstk_darwin(v82);
  v71 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v77 = &v62 - v22;
  v23 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1260FC())
  {
    v62 = v23;
    v74 = v11;
    v66 = v9;
    v63 = v5;
    v64 = v3;
    v65 = v2;
    v3 = 0;
    v84 = a1 & 0xFFFFFFFFFFFFFF8;
    v85 = a1 & 0xC000000000000001;
    v70 = "com.apple.siri.nl.TimerNewTime";
    v81 = (isa + 32);
    v68 = (isa + 8);
    v69 = (isa + 16);
    v24 = (v76 + 32);
    v79 = a1;
    v80 = _swiftEmptyArrayStorage;
    v23 = i;
    do
    {
      if (v85)
      {
        v26 = sub_125FFC();
      }

      else
      {
        if (v3 >= *(v84 + 16))
        {
          goto LABEL_46;
        }

        v26 = *(a1 + 8 * v3 + 32);
      }

      v11 = v26;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v27 = [v26 label];
      if (v27)
      {
        v2 = v27;
        v28 = sub_125B9C();
        v30 = v29;

        v31 = HIBYTE(v30) & 0xF;
        if ((v30 & 0x2000000000000000) == 0)
        {
          v31 = v28 & 0xFFFFFFFFFFFFLL;
        }

        if (v31)
        {
          v32 = v72;
          sub_12373C();
          v33 = v32;
          v34 = v74;
          (*v81)(v19, v33, v74);
          sub_BDA9C(v75);
          (*v69)(v73, v19, v34);
          v5 = v71;
          sub_12369C();

          (*v68)(v19, v34);
          v35 = *v24;
          (*v24)(v77, v5, v82);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a1 = v79;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v80 = sub_CDB28(0, *(v80 + 2) + 1, 1, v80);
          }

          v2 = *(v80 + 2);
          v37 = *(v80 + 3);
          v11 = (v2 + 1);
          if (v2 >= v37 >> 1)
          {
            v80 = sub_CDB28((v37 > 1), v2 + 1, 1, v80);
          }

          v38 = v80;
          *(v80 + 2) = v11;
          v35(&v38[((v76[80] + 32) & ~v76[80]) + *(v76 + 9) * v2], v77, v82);
        }

        else
        {

          a1 = v79;
        }

        v23 = i;
      }

      else
      {
      }

      v3 = (v3 + 1);
    }

    while (v9 != v23);
    v23 = 0;
    v75 = "tput(resolveRecord:)";
    v3 = isa;
    v76 = isa + 48;
    v77 = isa + 56;
    v82 = _swiftEmptyArrayStorage;
    *&v25 = 136315138;
    v72 = v25;
    v5 = v66;
    v39 = v74;
    while (1)
    {
      if (v85)
      {
        v40 = sub_125FFC();
      }

      else
      {
        if (v23 >= *(v84 + 16))
        {
          goto LABEL_48;
        }

        v40 = *(a1 + 8 * v23 + 32);
      }

      v9 = v40;
      v41 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v42 = [v40 identifier];
      if (v42)
      {
        v11 = v42;
        v2 = sub_125B9C();
        v19 = v43;

        sub_12373C();
        v44 = 0;
      }

      else
      {
        if (qword_15EF10 != -1)
        {
          swift_once();
        }

        v45 = sub_125ABC();
        sub_5B30(v45, qword_161FC8);
        v46 = v9;
        v11 = sub_125AAC();
        v19 = sub_125DEC();

        if (os_log_type_enabled(v11, v19))
        {
          v2 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v86 = v73;
          *v2 = v72;
          v47 = v46;
          v48 = [v47 description];
          v49 = sub_125B9C();
          v51 = v50;

          v52 = sub_8530(v49, v51, &v86);
          v39 = v74;
          v5 = v66;

          *(v2 + 4) = v52;
          v3 = isa;
          _os_log_impl(&dword_0, v11, v19, "Error making descriptive hint for timer. Missing identifier: %s", v2, 0xCu);
          v19 = v73;
          sub_5BB0(v73);
        }

        v44 = 1;
        a1 = v79;
      }

      (*v77)(v5, v44, 1, v39);

      if ((*v76)(v5, 1, v39) == 1)
      {
        sub_5CA8(v5, &qword_162C20, &qword_12B6D0);
      }

      else
      {
        v11 = *v81;
        (*v81)(v78, v5, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_CDB50(0, v82[2] + 1, 1, v82);
        }

        v2 = v82[2];
        v53 = v82[3];
        v9 = (v2 + 1);
        if (v2 >= v53 >> 1)
        {
          v82 = sub_CDB50((v53 > 1), v2 + 1, 1, v82);
        }

        v54 = v82;
        v82[2] = v9;
        (v11)(v54 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 9) * v2, v78, v39);
      }

      ++v23;
      if (v41 == i)
      {
        v2 = v65;
        v3 = v64;
        v5 = v63;
        if (v62)
        {
          goto LABEL_51;
        }

        goto LABEL_44;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v80 = _swiftEmptyArrayStorage;
  v82 = _swiftEmptyArrayStorage;
  if (v23)
  {
LABEL_51:
    v55 = sub_1260FC();
  }

  else
  {
LABEL_44:
    v55 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v55 != v82[2])
  {
    if (qword_15F008 != -1)
    {
      swift_once();
    }

    v56 = sub_125ABC();
    sub_5B30(v56, qword_162C00);
    v57 = sub_125AAC();
    v58 = sub_125DEC();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_0, v57, v58, "makeTimerDisplayHints: Incorrect label value count during conversion of timer hints", v59, 2u);
    }
  }

  sub_123B8C();
  v60 = sub_123B9C();

  (*(v3 + 1))(v5, v2);
  v86 = v80;
  sub_102D14(v60);
  return v86;
}

uint64_t sub_103C24(unsigned int *a1)
{
  v2 = sub_123F9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12403C();
  swift_allocObject();
  sub_12402C();
  swift_allocObject();
  sub_12402C();
  (*(v3 + 104))(v5, *a1, v2);
  sub_12401C();
  (*(v3 + 8))(v5, v2);

  sub_12400C();

  sub_124A9C();
  swift_allocObject();
  v6 = sub_124A8C();

  sub_123FBC();

  return v6;
}

uint64_t sub_103DC8(char a1, uint64_t a2)
{
  if (qword_15F008 != -1)
  {
    swift_once();
  }

  v3 = sub_125ABC();
  sub_5B30(v3, qword_162C00);
  v4 = sub_125AAC();
  v5 = sub_125DFC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v8 = sub_B6264(a1);
    v10 = sub_8530(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v4, v5, "In timerNLBuilder(for:commonTimer:), verb = %s", v6, 0xCu);
    sub_5BB0(v7);
  }

  switch(a1)
  {
    case 1:
      sub_1249AC();
      swift_allocObject();
      return sub_12499C();
    case 2:
      sub_1249CC();
      swift_allocObject();
      v12 = sub_1249BC();
      goto LABEL_21;
    case 3:
      sub_124ABC();
      swift_allocObject();
      return sub_124AAC();
    case 4:
      sub_124A7C();
      swift_allocObject();
      return sub_124A6C();
    case 5:
      sub_1248BC();
      swift_allocObject();
      v12 = sub_1248AC();
      goto LABEL_21;
    case 6:
    case 13:
      sub_124A4C();
      swift_allocObject();
      v13 = sub_124A3C();
      sub_124AEC();
      return v13;
    case 7:
    case 17:
    case 18:
      sub_1248DC();
      swift_allocObject();
      v11 = sub_1248CC();
      goto LABEL_17;
    case 8:
      sub_124A0C();
      swift_allocObject();
      v12 = sub_1249FC();
      goto LABEL_21;
    case 9:
      sub_1248FC();
      swift_allocObject();
      v13 = sub_1248EC();
      sub_12473C();
      return v13;
    case 10:
      sub_12483C();
      swift_allocObject();
      v12 = sub_12482C();
      goto LABEL_21;
    case 11:
    case 15:
    case 16:
      sub_124ADC();
      swift_allocObject();
      v12 = sub_124ACC();
      goto LABEL_21;
    case 12:
      sub_124A2C();
      swift_allocObject();
      v11 = sub_124A1C();
LABEL_17:
      v13 = v11;
      sub_124AFC();
      break;
    case 14:
      sub_1249EC();
      swift_allocObject();
      v13 = sub_1249DC();
      sub_123FCC();
      break;
    default:
      sub_124B5C();
      swift_allocObject();
      v12 = sub_124B4C();
LABEL_21:
      v13 = v12;
      sub_12490C();
      break;
  }

  return v13;
}

unint64_t sub_104184()
{
  result = qword_162C38;
  if (!qword_162C38)
  {
    sub_5B68(&qword_162C30, &qword_12B6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_162C38);
  }

  return result;
}

uint64_t sub_104248()
{
  v1 = sub_5AE8(&unk_15F170, &unk_126E00);
  v2 = __chkstk_darwin(v1 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v29 - v4;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_129770;
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
  *(v6 + 80) = 0x6E69577473726966;
  *(v6 + 88) = 0xEF657A6953776F64;
  if (v0[2])
  {
    v10 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
    v11 = 0;
  }

  else
  {
    v11 = v0[1];
    v10 = &type metadata for Double;
  }

  *(v6 + 96) = v11;
  *(v6 + 120) = v10;
  strcpy((v6 + 128), "isConclusion");
  *(v6 + 141) = 0;
  *(v6 + 142) = -5120;
  *(v6 + 144) = *(v0 + 17);
  *(v6 + 168) = &type metadata for Bool;
  strcpy((v6 + 176), "isFirstWindow");
  *(v6 + 190) = -4864;
  *(v6 + 192) = *(v0 + 18);
  *(v6 + 216) = &type metadata for Bool;
  strcpy((v6 + 224), "isLastWindow");
  *(v6 + 237) = 0;
  *(v6 + 238) = -5120;
  *(v6 + 240) = *(v0 + 19);
  *(v6 + 264) = &type metadata for Bool;
  *(v6 + 272) = 0xD000000000000016;
  *(v6 + 280) = 0x800000000012E240;
  *(v6 + 288) = *(v0 + 20);
  *(v6 + 312) = &type metadata for Bool;
  *(v6 + 320) = 0x6D6F727065527369;
  *(v6 + 328) = 0xEA00000000007470;
  *(v6 + 336) = *(v0 + 21);
  *(v6 + 360) = &type metadata for Bool;
  *(v6 + 368) = 0x736D657469;
  *(v6 + 376) = 0xE500000000000000;
  v12 = v0[3];
  v13 = sub_5AE8(&qword_15F928, &unk_127400);
  *(v6 + 384) = v12;
  *(v6 + 408) = v13;
  *(v6 + 416) = 0xD000000000000013;
  *(v6 + 424) = 0x800000000012E260;
  if (v0[5])
  {
    v14 = 0;
    *(v6 + 440) = 0;
    *(v6 + 448) = 0;
    v15 = 0;
  }

  else
  {
    v15 = v0[4];
    v14 = &type metadata for Double;
  }

  *(v6 + 432) = v15;
  *(v6 + 456) = v14;
  *(v6 + 464) = 0x6574496C61746F74;
  *(v6 + 472) = 0xEA0000000000736DLL;
  if (v0[7])
  {
    v16 = 0;
    *(v6 + 488) = 0;
    *(v6 + 496) = 0;
    v17 = 0;
  }

  else
  {
    v17 = v0[6];
    v16 = &type metadata for Double;
  }

  *(v6 + 480) = v17;
  *(v6 + 504) = v16;
  *(v6 + 512) = 0x6174614477656976;
  *(v6 + 520) = 0xE800000000000000;
  v18 = type metadata accessor for TimerBaseDisambiguationParameters(0);
  sub_E344(v0 + v18[14], v5, &unk_15F170, &unk_126E00);
  v19 = sub_124E4C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v5, 1, v19) == 1)
  {

    sub_5CA8(v5, &unk_15F170, &unk_126E00);
    *(v6 + 528) = 0u;
    *(v6 + 544) = 0u;
  }

  else
  {
    *(v6 + 552) = v19;
    v22 = sub_23B4C((v6 + 528));
    (*(v20 + 32))(v22, v5, v19);
  }

  *(v6 + 560) = 0xD000000000000018;
  *(v6 + 568) = 0x800000000012F140;
  v23 = v30;
  sub_E344(v0 + v18[15], v30, &unk_15F170, &unk_126E00);
  if (v21(v23, 1, v19) == 1)
  {
    sub_5CA8(v23, &unk_15F170, &unk_126E00);
    *(v6 + 576) = 0u;
    *(v6 + 592) = 0u;
  }

  else
  {
    *(v6 + 600) = v19;
    v24 = sub_23B4C((v6 + 576));
    (*(v20 + 32))(v24, v23, v19);
  }

  *(v6 + 608) = 0x6953776F646E6977;
  *(v6 + 616) = 0xEA0000000000657ALL;
  v25 = (v0 + v18[16]);
  if (v25[1])
  {
    v26 = 0;
    *(v6 + 632) = 0u;
    v27 = 0;
  }

  else
  {
    v27 = *v25;
    v26 = &type metadata for Double;
  }

  *(v6 + 624) = v27;
  *(v6 + 648) = v26;
  return v6;
}

uint64_t sub_104778(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_5AE8(&unk_15F170, &unk_126E00);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for TimerBaseAppNotInstalledParameters(0);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_104850, 0, 0);
}

uint64_t sub_104850()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v16 = v0[4];
  v4 = v0[3];
  v5 = sub_124E4C();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2, 1, 1, v5);
  v7 = *(v1 + 20);
  *(v2 + v7) = 0;
  sub_23B08(v4, v4[3]);
  sub_12543C();
  sub_22A1C(v3, v2);
  sub_23B08(v4, v4[3]);
  v8 = sub_12544C();
  *(v2 + v7) = v8;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v9 = swift_allocObject();
  v0[8] = v9;
  *(v9 + 16) = xmmword_1270C0;
  *(v9 + 32) = 0xD000000000000014;
  *(v9 + 40) = 0x800000000012F100;
  sub_E344(v2, v16, &unk_15F170, &unk_126E00);
  v10 = (*(v6 + 48))(v16, 1, v5);
  v11 = v0[4];
  if (v10 == 1)
  {
    sub_5CA8(v0[4], &unk_15F170, &unk_126E00);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v5;
    v12 = sub_23B4C((v9 + 48));
    (*(v6 + 32))(v12, v11, v5);
  }

  *(v9 + 80) = 0x656369766564;
  *(v9 + 88) = 0xE600000000000000;
  v13 = 0;
  if (v8)
  {
    v13 = sub_124EAC();
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
  v14[1] = sub_104B18;

  return v17(0xD000000000000019, 0x800000000012F120, v9);
}

uint64_t sub_104B18(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_104CF4;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_104C64;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_104C64()
{
  sub_105290(v0[7]);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_104CF4()
{
  sub_105290(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_104D80(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_104DA4, 0, 0);
}

uint64_t sub_104DA4()
{
  *(v0 + 16) = 0;
  v1 = *(v0 + 32);
  *(v0 + 24) = 1;
  v1(v0 + 16);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_5AE8(&qword_15F180, &unk_126E10);
  v4 = swift_allocObject();
  v5 = v4;
  *(v0 + 56) = v4;
  *(v4 + 16) = xmmword_126CB0;
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = 0x800000000012C9C0;
  if (v3 == 1)
  {
    v6 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
    v2 = 0;
  }

  else
  {
    v6 = &type metadata for Double;
  }

  *(v4 + 48) = v2;
  *(v4 + 72) = v6;
  v9 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_104F10;

  return v9(0xD000000000000012, 0x800000000012C9A0, v5);
}

uint64_t sub_104F10(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_10505C;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_105040;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10505C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1050C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_105290(uint64_t a1)
{
  v2 = type metadata accessor for TimerBaseAppNotInstalledParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_105320(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5AE8(&unk_15F170, &unk_126E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1053F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_5AE8(&unk_15F170, &unk_126E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1054A0(uint64_t a1)
{
  sub_1058B0(319, &unk_15FE30, &type metadata accessor for SirikitApp, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_AE4FC();
    if (v2 <= 0x3F)
    {
      sub_1058B0(319, &unk_1602C8, type metadata accessor for TimerTimer, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_1058B0(319, &qword_15FD00, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_105620(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_105708(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_1057CC(uint64_t a1)
{
  sub_1058B0(319, &qword_15FD00, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1058B0(319, &unk_162DC8, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1058B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_105914()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162DF8);
  sub_5B30(v0, qword_162DF8);
  return sub_12578C();
}

unint64_t sub_105960@<X0>(void *a1@<X8>, unint64_t a2@<X0>)
{
  v4 = *v2;
  result = sub_10598C(a2);
  *a1 = v4;
  return result;
}

unint64_t sub_10598C(unint64_t result)
{
  if (result >> 62)
  {
    v9 = result;
    if (sub_1260FC() >= 2)
    {
      goto LABEL_3;
    }

    v1 = sub_1260FC();
    result = v9;
  }

  else
  {
    v1 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v1 > 1)
    {
LABEL_3:
      if (qword_15F010 != -1)
      {
        swift_once();
      }

      v2 = sub_125ABC();
      sub_5B30(v2, qword_162DF8);
      v3 = sub_125AAC();
      v4 = sub_125DFC();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_0, v3, v4, "Disambiguation selection returned multiple choices. Using original targetTimer with shouldMatchAny = true", v5, 2u);
      }

      v6 = [v11 targetTimer];
      if (!v6)
      {
        goto LABEL_17;
      }

      v7 = v6;
      sub_8BAC();
      v8.super.super.isa = sub_125EEC(1).super.super.isa;
      [v7 setShouldMatchAny:v8.super.super.isa];

      goto LABEL_16;
    }
  }

  if (v1)
  {
    if ((result & 0xC000000000000001) != 0)
    {
      v10 = sub_125FFC();
    }

    else
    {
      if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return result;
      }

      v10 = *(result + 32);
    }

    v8.super.super.isa = v10;
    [v11 setTargetTimer:v10];
LABEL_16:
  }

LABEL_17:

  return v11;
}

uint64_t RecreateDeletedTimerFlow.__allocating_init()()
{
  sub_12587C();
  swift_allocObject();
  v0 = sub_12586C();
  v1 = [objc_allocWithZone(MTTimerManager) init];
  type metadata accessor for RecreateDeletedTimerFlow(0);
  v2 = swift_allocObject();

  return sub_10EFA0(v0, v1, v2);
}

uint64_t type metadata accessor for RecreateDeletedTimerFlow(uint64_t a1)
{
  result = qword_162E58;
  if (!qword_162E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_105C58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_105CC4()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162E10);
  sub_5B30(v0, qword_162E10);
  return sub_1257AC();
}

uint64_t RecreateDeletedTimerFlow.on(input:)()
{
  v0 = sub_5AE8(&qword_160838, &qword_128330);
  __chkstk_darwin(v0 - 8);
  v83 = &v74 - v1;
  v2 = sub_1252CC();
  v86 = *(v2 - 8);
  v87 = v2;
  __chkstk_darwin(v2);
  v85 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1252AC();
  v4 = *(v89 - 8);
  v5 = __chkstk_darwin(v89);
  v88 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v74 - v8;
  __chkstk_darwin(v7);
  v11 = &v74 - v10;
  v12 = sub_123D1C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_123D3C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_123CCC();
  if ((*(v17 + 88))(v19, v16) != enum case for Parse.directInvocation(_:))
  {
    (*(v17 + 8))(v19, v16);
    return 0;
  }

  (*(v17 + 96))(v19, v16);
  (*(v13 + 32))(v15, v19, v12);
  v20 = sub_123D0C();
  v21 = v12;
  v22 = v15;
  if (!v20)
  {
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  v23 = v20;
  v82 = v22;
  v24 = v4;
  v25 = *(v4 + 104);
  v26 = v89;
  v80 = v25;
  v25(v11, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v89);
  v27 = sub_12529C();
  v29 = v28;
  v30 = *(v24 + 8);
  v81 = v24 + 8;
  v79 = v30;
  v30(v11, v26);
  if (!*(v23 + 16))
  {
    goto LABEL_10;
  }

  v31 = sub_8AD8(v27, v29);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
LABEL_11:

    (*(v13 + 8))(v82, v12);
    return 0;
  }

  sub_8B50(*(v23 + 56) + 32 * v31, v92);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v34 = sub_B66D0(v90, v91);
  if (v34 == 19)
  {
    goto LABEL_7;
  }

  v78 = v34;
  v80(v9, enum case for DirectInvocationUtils.Timer.UserInfoKey.usoEntity(_:), v26);
  v36 = sub_12529C();
  v38 = v37;
  v79(v9, v26);
  if (!*(v23 + 16))
  {
LABEL_10:

    goto LABEL_11;
  }

  v39 = sub_8AD8(v36, v38);
  v41 = v40;

  if ((v41 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_8B50(*(v23 + 56) + 32 * v39, v92);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    (*(v13 + 8))(v82, v12);

    return 0;
  }

  v43 = v90;
  v42 = v91;
  sub_122DFC();
  swift_allocObject();
  sub_122DEC();
  sub_124BDC();
  sub_10FA4C(&qword_161850, &type metadata accessor for UsoEntity, &protocol conformance descriptor for UsoEntity);
  v77 = v42;
  sub_122DDC();
  v76 = v43;

  sub_12434C();

  sub_12448C();

  if (!v92[0])
  {
    (*(v13 + 8))(v82, v12);

    sub_E498(v76, v77);
LABEL_26:

    return 0;
  }

  v75 = v92[0];
  v44 = v88;
  v80(v88, enum case for DirectInvocationUtils.Timer.UserInfoKey.paused(_:), v26);
  v45 = sub_12529C();
  v47 = v46;
  v79(v44, v26);
  if (!*(v23 + 16))
  {

    sub_E498(v76, v77);

LABEL_29:

    v63 = v82;

    (*(v13 + 8))(v63, v21);
    return 0;
  }

  v48 = sub_8AD8(v45, v47);
  v50 = v49;

  v52 = v76;
  v51 = v77;
  if ((v50 & 1) == 0)
  {

    sub_E498(v52, v51);
    goto LABEL_29;
  }

  sub_8B50(*(v23 + 56) + 32 * v48, v92);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v13 + 8))(v82, v12);

    sub_E498(v52, v51);

    goto LABEL_26;
  }

  v89 = v23;
  LODWORD(v88) = v90;
  v53 = sub_123CFC();
  v55 = v54;
  v56 = v85;
  v57 = v86;
  v58 = v87;
  (*(v86 + 104))(v85, enum case for DirectInvocationUtils.Timer.URI.undo(_:), v87);
  v59 = sub_1252BC();
  v61 = v60;
  (*(v57 + 8))(v56, v58);
  if (v53 == v59 && v55 == v61)
  {

    v62 = v89;
  }

  else
  {
    v64 = sub_1261BC();

    v62 = v89;
    if ((v64 & 1) == 0)
    {
LABEL_40:
      (*(v13 + 8))(v82, v21);
      sub_E498(v76, v77);

      goto LABEL_26;
    }
  }

  if (sub_B6264(v78) != 0x657461657263 || v65 != 0xE600000000000000)
  {
    v66 = sub_1261BC();

    if (v66)
    {
      goto LABEL_36;
    }

    goto LABEL_40;
  }

LABEL_36:
  v67 = v84;
  *(v84 + 88) = v75;

  *(v67 + 96) = v88;
  v68 = v83;
  sub_F58F4(v62, v83);

  v69 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24RecreateDeletedTimerFlow_followupPluginAction;
  swift_beginAccess();
  sub_7CC5C(v68, v67 + v69, &qword_160838, &qword_128330);
  swift_endAccess();
  if (qword_15F018 != -1)
  {
    swift_once();
  }

  v70 = sub_125ABC();
  sub_5B30(v70, qword_162E10);
  v71 = sub_125AAC();
  v72 = sub_125DFC();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_0, v71, v72, "RecreateDeletedTimerFlow accepting input.", v73, 2u);

    sub_E498(v76, v77);
  }

  else
  {

    sub_E498(v76, v77);
  }

  (*(v13 + 8))(v82, v21);
  return 1;
}

uint64_t RecreateDeletedTimerFlow.execute()(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  sub_5AE8(&qword_160838, &qword_128330);
  v2[23] = swift_task_alloc();
  v3 = sub_12372C();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v4 = sub_124FCC();
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v5 = sub_1250BC();
  v2[30] = v5;
  v2[31] = *(v5 - 8);
  v2[32] = swift_task_alloc();
  sub_5AE8(&qword_15F6E8, &unk_1271C0);
  v2[33] = swift_task_alloc();
  sub_5AE8(&qword_15F6F0, &unk_128340);
  v2[34] = swift_task_alloc();
  sub_5AE8(&qword_15F6F8, &qword_1271D0);
  v2[35] = swift_task_alloc();
  v6 = sub_12370C();
  v2[36] = v6;
  v2[37] = *(v6 - 8);
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_106ADC, 0, 0);
}

uint64_t sub_106ADC()
{
  if (qword_15F018 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_162E10);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "In RecreateDeletedTimerFlow async execute()", v4, 2u);
  }

  v5 = v0[37];
  v6 = v0[38];
  v7 = v0[36];

  (*(v5 + 104))(v6, enum case for ActivityType.correction(_:), v7);
  if (qword_15F020 != -1)
  {
    swift_once();
  }

  v8 = v0[35];
  v9 = sub_124FDC();
  sub_5B30(v9, qword_1678B8);
  v10 = sub_12353C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  if (qword_15F028 != -1)
  {
    swift_once();
  }

  v11 = v0[37];
  v12 = v0[38];
  v13 = v0[35];
  v15 = v0[33];
  v14 = v0[34];
  v17 = v0[27];
  v16 = v0[28];
  v55 = v0[22];
  v56 = v0[36];
  v18 = sub_124FEC();
  v19 = sub_5B30(v18, qword_1678D0);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v14, v19, v18);
  (*(v20 + 56))(v14, 0, 1, v18);
  (*(v16 + 56))(v15, 1, 1, v17);
  sub_124FBC();
  sub_5CA8(v15, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v14, &qword_15F6F0, &unk_128340);
  sub_5CA8(v13, &qword_15F6F8, &qword_1271D0);
  (*(v11 + 8))(v12, v56);
  v21 = *(v55 + 88);
  v0[39] = v21;
  if (!v21)
  {
    v32 = sub_125AAC();
    v33 = sub_125DEC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "timerUsoEntity is nil! RecreateDeletedTimerFlow execute() has no timer to recreate.", v34, 2u);
    }

    v36 = v0[28];
    v35 = v0[29];
    v37 = v0[27];

    (*(v36 + 104))(v35, enum case for SiriTimeEventSender.ReasonDescription.noTimerToCreate(_:), v37);
    v38 = swift_task_alloc();
    v0[50] = v38;
    *v38 = v0;
    v39 = sub_107CD0;
    goto LABEL_22;
  }

  v22 = v0[31];
  v23 = v0[32];
  v24 = v0[30];
  v25 = swift_allocObject();
  v0[40] = v25;
  *(v25 + 16) = 0;
  v26 = swift_allocObject();
  v0[41] = v26;
  *(v26 + 16) = 0;

  sub_1250AC();
  v27 = sub_12504C();
  (*(v22 + 8))(v23, v24);
  v28 = v0[22];
  if (v27)
  {
    v29 = swift_task_alloc();
    v0[42] = v29;
    v29[2] = v28;
    v29[3] = v21;
    v29[4] = v25;
    v29[5] = v26;
    v30 = swift_task_alloc();
    v0[43] = v30;
    *v30 = v0;
    v30[1] = sub_1072B4;
    v31 = sub_10F158;
LABEL_27:

    return withCheckedContinuation<A>(isolation:function:_:)(v30, 0, 0, 0x2865747563657865, 0xE900000000000029, v31, v29, &type metadata for () + 8);
  }

  sub_2F488(v28 + 40, (v0 + 2));
  sub_23B08(v0 + 2, v0[5]);
  v40 = sub_12583C();
  if (!v40)
  {
    sub_5BB0(v0 + 2);
LABEL_26:
    v54 = v0[22];
    v29 = swift_task_alloc();
    v0[45] = v29;
    v29[2] = v54;
    v29[3] = v21;
    v29[4] = v26;
    v29[5] = v25;
    v30 = swift_task_alloc();
    v0[46] = v30;
    *v30 = v0;
    v30[1] = sub_1076A8;
    v31 = sub_10F14C;
    goto LABEL_27;
  }

  sub_5BB0(v0 + 2);
  v41 = sub_125AAC();
  v42 = sub_125DFC();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "We have an existing valid timer. This is unexpected. Attempting to stop current timer.", v43, 2u);
  }

  sub_2F488(v28 + 40, (v0 + 7));
  sub_23B08(v0 + 7, v0[10]);
  v44 = sub_12580C();
  sub_5BB0(v0 + 7);
  if (v44)
  {
    goto LABEL_26;
  }

  v45 = sub_125AAC();
  v46 = sub_125DEC();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_0, v45, v46, "Failed to stop current timer using siriTimerManager.stopCurrentTimerSync", v47, 2u);
  }

  v49 = v0[28];
  v48 = v0[29];
  v50 = v0[27];

  (*(v49 + 104))(v48, enum case for SiriTimeEventSender.ReasonDescription.failedToStopCurrentTimer(_:), v50);
  v38 = swift_task_alloc();
  v0[44] = v38;
  *v38 = v0;
  v39 = sub_107550;
LABEL_22:
  v38[1] = v39;
  v51 = v0[29];
  v52 = v0[21];

  return sub_1094BC(v52, v51);
}

uint64_t sub_1072B4()
{

  return _swift_task_switch(sub_1073CC, 0, 0);
}

uint64_t sub_1073CC()
{
  v1 = v0[41];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[47] = v2;
  if (v2)
  {
    v3 = v0[40];
    swift_beginAccess();
    v4 = *(v3 + 16);
    v5 = v2;
    v6 = swift_task_alloc();
    v0[48] = v6;
    *v6 = v0;
    v6[1] = sub_1077C0;

    return sub_10A1F4(v5, v4);
  }

  else
  {
    (*(v0[28] + 104))(v0[29], enum case for SiriTimeEventSender.ReasonDescription.failedToCreateTimer(_:), v0[27]);
    v8 = swift_task_alloc();
    v0[49] = v8;
    *v8 = v0;
    v8[1] = sub_107A98;
    v9 = v0[29];
    v10 = v0[21];

    return sub_1094BC(v10, v9);
  }
}

uint64_t sub_107550()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10FBF4, 0, 0);
}

uint64_t sub_1076A8()
{

  return _swift_task_switch(sub_10FBE8, 0, 0);
}

uint64_t sub_1077C0()
{

  return _swift_task_switch(sub_1078BC, 0, 0);
}

uint64_t sub_1078BC()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24RecreateDeletedTimerFlow_followupPluginAction;
  swift_beginAccess();
  sub_E344(v4 + v5, v3, &qword_160838, &qword_128330);
  v6 = (*(v2 + 48))(v3, 1, v1);
  v7 = v0[47];
  if (v6 == 1)
  {
    v8 = v0[23];

    sub_5CA8(v8, &qword_160838, &qword_128330);
    sub_12383C();
  }

  else
  {
    v10 = v0[25];
    v9 = v0[26];
    v11 = v0[24];
    (*(v10 + 32))(v9, v0[23], v11);
    sub_12384C();

    (*(v10 + 8))(v9, v11);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_107A98()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_107BF0, 0, 0);
}

uint64_t sub_107BF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_107CD0()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *v0;

  (*(v2 + 8))(v1, v3);

  v5 = *(v4 + 8);

  return v5();
}

void sub_107EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v7 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  if (*(a2 + 96))
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  if (sub_12430C())
  {
    sub_1243FC();
    v14 = v13;
  }

  else
  {
    [objc_opt_self() defaultDuration];
    v14 = v15;
  }

  v47 = [objc_allocWithZone(MTMutableTimer) initWithState:v12 duration:v14];
  sub_12432C();
  if (v16 && (sub_125BDC(), , v17 = objc_allocWithZone(INSpeakableString), v18 = sub_125B8C(), , v19 = [v17 initWithSpokenPhrase:v18], v18, v19))
  {
    v20 = [v19 spokenPhrase];

    if (!v20)
    {
      sub_125B9C();
      v20 = sub_125B8C();
    }
  }

  else
  {
    v20 = 0;
  }

  [v47 setTitle:v20];

  v21 = [*(a2 + 80) addTimer:v47];
  if (v21)
  {
    v22 = v21;
    v23 = *(v8 + 16);
    v41 = v8 + 16;
    v43 = v9;
    v44 = v23;
    v23(v11, a1, v7);
    v42 = a1;
    v24 = v7;
    v25 = *(v8 + 80);
    v39 = v11;
    v26 = swift_allocObject();
    v27 = v45;
    *(v26 + 2) = v47;
    *(v26 + 3) = v27;
    *(v26 + 4) = a2;
    v38 = a2;
    *(v26 + 5) = v46;
    v40 = *(v8 + 32);
    v40(&v26[(v25 + 48) & ~v25], v11, v24);
    v52 = sub_10F73C;
    v53 = v26;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_105C48;
    v51 = &unk_15A170;
    v28 = _Block_copy(&aBlock);
    v29 = v22;
    v30 = v47;

    v31 = [v29 addSuccessBlock:v28];
    _Block_release(v28);

    v32 = v39;
    v44(v39, v42, v24);
    v33 = swift_allocObject();
    v40((v33 + ((v25 + 16) & ~v25)), v32, v24);
    v52 = sub_10F86C;
    v53 = v33;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_105C50;
    v51 = &unk_15A1C0;
    v34 = _Block_copy(&aBlock);
    v35 = v29;

    v36 = [v35 addFailureBlock:v34];

    _Block_release(v34);
  }

  else
  {
    v37 = v47;
  }
}

uint64_t sub_1083EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_15F018 != -1)
  {
    swift_once();
  }

  v9 = sub_125ABC();
  sub_5B30(v9, qword_162E10);
  v10 = a2;
  v11 = sub_125AAC();
  v12 = sub_125DFC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25[0] = v23;
    *v13 = 136315138;
    v14 = [v10 timerIDString];
    v24 = a4;
    v15 = sub_125B9C();
    v17 = v16;

    v18 = sub_8530(v15, v17, v25);

    *(v13 + 4) = v18;
    a4 = v24;
    _os_log_impl(&dword_0, v11, v12, "RecreateDeletedTimerFlow: Added mtTimer successfully with ID %s", v13, 0xCu);
    sub_5BB0(v23);
  }

  v19 = *(a4 + 96);
  swift_beginAccess();
  *(a3 + 16) = v19;
  v20 = sub_FF264();
  swift_beginAccess();
  v21 = *(a5 + 16);
  *(a5 + 16) = v20;

  sub_5AE8(&qword_162BF8, &unk_12B690);
  return sub_125D1C();
}

uint64_t sub_108614(uint64_t a1)
{
  if (qword_15F018 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_162E10);
  swift_errorRetain();
  v2 = sub_125AAC();
  v3 = sub_125DEC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "RecreateDeletedTimerFlow: Added mtTimer failed with error %@", v4, 0xCu);
    sub_5CA8(v5, &unk_160540, &unk_1295A0);
  }

  sub_5AE8(&qword_162BF8, &unk_12B690);
  return sub_125D1C();
}

uint64_t sub_108784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v17 = a1;
  v7 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  sub_2F488(a2 + 40, v21);
  v19 = v21[4];
  v18 = sub_23B08(v21, v21[3]);
  sub_1255EC();

  v12 = sub_F2998(v11, 1);

  (*(v8 + 16))(v10, v17, v7);
  v13 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a4;
  *(v14 + 3) = a2;
  *(v14 + 4) = v20;
  (*(v8 + 32))(&v14[v13], v10, v7);

  sub_12582C();

  return sub_5BB0(v21);
}

void sub_10896C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v45 = a5;
  v42 = a4;
  v43 = a3;
  v7 = sub_12571C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = v39 - v11;
  v12 = sub_5AE8(&qword_160AE8, &qword_1284F8);
  __chkstk_darwin(v12);
  v14 = (v39 - v13);
  sub_E344(a1, v39 - v13, &qword_160AE8, &qword_1284F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v14, v7);
    if (qword_15F018 != -1)
    {
      swift_once();
    }

    v15 = sub_125ABC();
    sub_5B30(v15, qword_162E10);
    v16 = sub_125AAC();
    v17 = sub_125DFC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "Failed to create timer", v18, 2u);
    }

    sub_125D1C();
    v19 = sub_12547C();
    v47 = v19;
    v48 = &protocol witness table for ABCReport;
    v20 = sub_23B4C(v46);
    sub_10FA4C(&qword_160AE0, &type metadata accessor for TimerOperationError, &protocol conformance descriptor for TimerOperationError);
    swift_allocError();
    (*(v8 + 16))(v21, v10, v7);
    *v20 = sub_122E7C();
    v22 = enum case for ErrorSubType.managerReturnedError(_:);
    v23 = sub_12515C();
    (*(*(v23 - 8) + 104))(v20, v22, v23);
    (*(*(v19 - 8) + 104))(v20, enum case for ABCReport.timerUndoHandle(_:), v19);
    sub_1251AC();
    (*(v8 + 8))(v10, v7);
    sub_5BB0(v46);
  }

  else
  {
    v24 = *v14;
    if (qword_15F018 != -1)
    {
      swift_once();
    }

    v25 = sub_125ABC();
    sub_5B30(v25, qword_162E10);
    v26 = sub_125AAC();
    v27 = sub_125DFC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Successfully created", v28, 2u);
    }

    swift_beginAccess();
    v29 = *(a2 + 16);
    *(a2 + 16) = v24;
    v30 = v24;

    if (v43[96] == 1)
    {
      sub_2F488((v43 + 40), v46);
      v43 = v48;
      v39[1] = sub_23B08(v46, v47);
      sub_8BAC();
      v31 = v30;
      isa = sub_125EEC(0).super.super.isa;
      v33 = [objc_allocWithZone(sub_12555C()) init];
      [v31 setShouldMatchAny:isa];
      [v33 setTargetTimer:v31];

      v35 = v40;
      v34 = v41;
      v36 = v44;
      (*(v41 + 16))(v40, v45, v44);
      v37 = (*(v34 + 80) + 24) & ~*(v34 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = v42;
      (*(v34 + 32))(v38 + v37, v35, v36);

      sub_12581C();

      sub_5BB0(v46);
    }

    else
    {

      sub_125D1C();
    }
  }
}

uint64_t sub_108FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_12571C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5AE8(&qword_160AD8, &qword_1284F0);
  __chkstk_darwin(v8);
  v10 = &v26[-1] - v9;
  sub_E344(a1, &v26[-1] - v9, &qword_160AD8, &qword_1284F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    if (qword_15F018 != -1)
    {
      swift_once();
    }

    v11 = sub_125ABC();
    sub_5B30(v11, qword_162E10);
    v12 = sub_125AAC();
    v13 = sub_125DFC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "failed to pause the created timer", v14, 2u);
    }

    v15 = sub_12547C();
    v26[3] = v15;
    v26[4] = &protocol witness table for ABCReport;
    v16 = sub_23B4C(v26);
    sub_10FA4C(&qword_160AE0, &type metadata accessor for TimerOperationError, &protocol conformance descriptor for TimerOperationError);
    swift_allocError();
    (*(v5 + 16))(v17, v7, v4);
    *v16 = sub_122E7C();
    v18 = enum case for ErrorSubType.managerReturnedError(_:);
    v19 = sub_12515C();
    (*(*(v19 - 8) + 104))(v16, v18, v19);
    (*(*(v15 - 8) + 104))(v16, enum case for ABCReport.timerUndoHandle(_:), v15);
    sub_1251AC();
    (*(v5 + 8))(v7, v4);
    sub_5BB0(v26);
  }

  else
  {
    if (qword_15F018 != -1)
    {
      swift_once();
    }

    v20 = sub_125ABC();
    sub_5B30(v20, qword_162E10);
    v21 = sub_125AAC();
    v22 = sub_125DFC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Successfully paused", v23, 2u);
    }

    swift_beginAccess();
    *(a2 + 16) = 1;
  }

  sub_5AE8(&qword_162BF8, &unk_12B690);
  return sub_125D1C();
}

uint64_t RecreateDeletedTimerFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RecreateDeletedTimerFlow(0);
  sub_10FA4C(&qword_160638, type metadata accessor for RecreateDeletedTimerFlow, &protocol conformance descriptor for RecreateDeletedTimerFlow);
  return sub_12344C();
}

uint64_t sub_1094BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_12392C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_12368C();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_125ABC();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_124FFC();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = sub_12501C();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();
  sub_5AE8(&qword_15F6E8, &unk_1271C0);
  v3[20] = swift_task_alloc();
  sub_5AE8(&qword_15F6F0, &unk_128340);
  v3[21] = swift_task_alloc();
  sub_5AE8(&qword_15F6F8, &qword_1271D0);
  v3[22] = swift_task_alloc();
  v9 = sub_12370C();
  v3[23] = v9;
  v3[24] = *(v9 - 8);
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_1097F4, 0, 0);
}

uint64_t sub_1097F4()
{
  (*(v0[24] + 104))(v0[25], enum case for ActivityType.failed(_:), v0[23]);
  if (qword_15F020 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = sub_124FDC();
  sub_5B30(v2, qword_1678B8);
  v3 = sub_12353C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  if (qword_15F028 != -1)
  {
    swift_once();
  }

  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[22];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[15];
  v27 = v0[16];
  v25 = v0[23];
  v26 = v0[14];
  v10 = v0[3];
  v11 = sub_124FEC();
  v12 = sub_5B30(v11, qword_1678D0);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v7, v12, v11);
  (*(v13 + 56))(v7, 0, 1, v11);
  v14 = sub_124FCC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v8, v10, v14);
  (*(v15 + 56))(v8, 0, 1, v14);
  sub_124FBC();
  sub_5CA8(v8, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v7, &qword_15F6F0, &unk_128340);
  sub_5CA8(v6, &qword_15F6F8, &qword_1271D0);
  (*(v4 + 8))(v5, v25);
  (*(v9 + 104))(v27, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v26);
  if (qword_15F018 != -1)
  {
    swift_once();
  }

  v17 = v0[12];
  v16 = v0[13];
  v18 = v0[11];
  v19 = sub_5B30(v18, qword_162E10);
  v0[26] = v19;
  (*(v17 + 16))(v16, v19, v18);
  mach_absolute_time();
  sub_12502C();
  v20 = sub_124EAC();
  sub_12524C();
  sub_12523C();
  sub_12522C();

  v21 = sub_124E9C();
  v0[27] = v21;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v22 = swift_allocObject();
  *(v22 + 32) = 0x656369766564;
  *(v22 + 40) = 0xE600000000000000;
  *(v22 + 72) = v20;
  v28 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0[28] = v22;
  *(v22 + 16) = xmmword_126CB0;
  *(v22 + 48) = v21;

  v23 = swift_task_alloc();
  v0[29] = v23;
  *v23 = v0;
  v23[1] = sub_109C90;

  return v28(0xD000000000000011, 0x800000000012C010, v22);
}

uint64_t sub_109C90(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_10A078;
  }

  else
  {
    *(v4 + 248) = a1;
    v5 = sub_109DDC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_109DDC()
{

  sub_12364C();
  sub_12391C();
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_109EA4;
  v2 = v0[19];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[2];

  return PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)(v5, v3, v4, v2);
}

uint64_t sub_109EA4()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 40);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_F198, 0, 0);
}

uint64_t sub_10A078()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  (*(v2 + 8))(v1, v3);
  v4 = sub_125AAC();
  v5 = sub_125DEC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "Failed to produce Incomplete response.", v6, 2u);
  }

  sub_12383C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10A1F4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  sub_5AE8(&qword_15F6E8, &unk_1271C0);
  v2[12] = swift_task_alloc();
  sub_5AE8(&qword_15F6F0, &unk_128340);
  v2[13] = swift_task_alloc();
  sub_5AE8(&qword_15F6F8, &qword_1271D0);
  v2[14] = swift_task_alloc();
  v5 = sub_12370C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[18] = v6;
  *v6 = v2;
  v6[1] = sub_10A3A4;

  return sub_10B10C((v2 + 2), a1, v3);
}

uint64_t sub_10A3A4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10A96C;
  }

  else
  {
    v2 = sub_10A4B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10A4B8()
{
  sub_123ACC();
  v1 = v0[10];
  v2 = v0[11];
  sub_23B08(v0 + 7, v1);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_10A57C;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v1, v2);
}

uint64_t sub_10A57C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_10AD34;
  }

  else
  {
    v2 = sub_10A690;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10A690()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_5BB0(v0 + 7);
  (*(v2 + 104))(v1, enum case for ActivityType.completed(_:), v3);
  if (qword_15F020 != -1)
  {
    swift_once();
  }

  v4 = v0[14];
  v5 = sub_124FDC();
  sub_5B30(v5, qword_1678B8);
  v6 = sub_12353C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  if (qword_15F028 != -1)
  {
    swift_once();
  }

  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  v13 = sub_124FEC();
  v14 = sub_5B30(v13, qword_1678D0);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v11, v14, v13);
  (*(v15 + 56))(v11, 0, 1, v13);
  v16 = sub_124FCC();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  sub_124FBC();
  sub_5CA8(v12, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v11, &qword_15F6F0, &unk_128340);
  sub_5CA8(v10, &qword_15F6F8, &qword_1271D0);
  (*(v8 + 8))(v7, v9);
  sub_5BB0(v0 + 2);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10A96C()
{
  (*(v0[16] + 104))(v0[17], enum case for ActivityType.failed(_:), v0[15]);
  if (qword_15F020 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_124FDC();
  sub_5B30(v2, qword_1678B8);
  v3 = sub_12353C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  if (qword_15F028 != -1)
  {
    swift_once();
  }

  v4 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = sub_124FEC();
  v11 = sub_5B30(v10, qword_1678D0);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  v13 = enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:);
  v14 = sub_124FCC();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v9, v13, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  sub_124FBC();
  sub_5CA8(v9, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v8, &qword_15F6F0, &unk_128340);
  sub_5CA8(v7, &qword_15F6F8, &qword_1271D0);
  (*(v4 + 8))(v5, v6);
  if (qword_15F018 != -1)
  {
    swift_once();
  }

  v16 = sub_125ABC();
  sub_5B30(v16, qword_162E10);
  v17 = sub_125AAC();
  v18 = sub_125DEC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "Error producing and submitting output", v19, 2u);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_10AD34()
{
  sub_5BB0(v0 + 2);
  sub_5BB0(v0 + 7);
  (*(v0[16] + 104))(v0[17], enum case for ActivityType.failed(_:), v0[15]);
  if (qword_15F020 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_124FDC();
  sub_5B30(v2, qword_1678B8);
  v3 = sub_12353C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  if (qword_15F028 != -1)
  {
    swift_once();
  }

  v4 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = sub_124FEC();
  v11 = sub_5B30(v10, qword_1678D0);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  v13 = enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:);
  v14 = sub_124FCC();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v9, v13, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  sub_124FBC();
  sub_5CA8(v9, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v8, &qword_15F6F0, &unk_128340);
  sub_5CA8(v7, &qword_15F6F8, &qword_1271D0);
  (*(v4 + 8))(v5, v6);
  if (qword_15F018 != -1)
  {
    swift_once();
  }

  v16 = sub_125ABC();
  sub_5B30(v16, qword_162E10);
  v17 = sub_125AAC();
  v18 = sub_125DEC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "Error producing and submitting output", v19, 2u);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_10B10C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 392) = a2;
  *(v4 + 400) = v3;
  *(v4 + 960) = a3;
  *(v4 + 384) = a1;
  *(v4 + 408) = type metadata accessor for CreateTimerHandledOnWatchParameters(0);
  *(v4 + 416) = swift_task_alloc();
  v5 = sub_123B3C();
  *(v4 + 424) = v5;
  *(v4 + 432) = *(v5 - 8);
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  v6 = sub_12503C();
  *(v4 + 456) = v6;
  *(v4 + 464) = *(v6 - 8);
  *(v4 + 472) = swift_task_alloc();
  v7 = sub_12368C();
  *(v4 + 480) = v7;
  *(v4 + 488) = *(v7 - 8);
  *(v4 + 496) = swift_task_alloc();
  *(v4 + 504) = swift_task_alloc();
  v8 = sub_1260DC();
  *(v4 + 512) = v8;
  *(v4 + 520) = *(v8 - 8);
  *(v4 + 528) = swift_task_alloc();
  sub_5AE8(&unk_15F170, &unk_126E00);
  *(v4 + 536) = swift_task_alloc();
  *(v4 + 544) = swift_task_alloc();
  v9 = sub_1250BC();
  *(v4 + 552) = v9;
  *(v4 + 560) = *(v9 - 8);
  *(v4 + 568) = swift_task_alloc();
  v10 = sub_125ABC();
  *(v4 + 576) = v10;
  *(v4 + 584) = *(v10 - 8);
  *(v4 + 592) = swift_task_alloc();
  v11 = sub_124FFC();
  *(v4 + 600) = v11;
  *(v4 + 608) = *(v11 - 8);
  *(v4 + 616) = swift_task_alloc();
  v12 = sub_12501C();
  *(v4 + 624) = v12;
  *(v4 + 632) = *(v12 - 8);
  *(v4 + 640) = swift_task_alloc();
  v13 = sub_12392C();
  *(v4 + 648) = v13;
  *(v4 + 656) = *(v13 - 8);
  *(v4 + 664) = swift_task_alloc();
  v14 = sub_124F2C();
  *(v4 + 672) = v14;
  *(v4 + 680) = *(v14 - 8);
  *(v4 + 688) = swift_task_alloc();
  v15 = sub_124F1C();
  *(v4 + 696) = v15;
  *(v4 + 704) = *(v15 - 8);
  *(v4 + 712) = swift_task_alloc();

  return _swift_task_switch(sub_10B624, 0, 0);
}

uint64_t sub_10B624()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);
  v6 = *(v0 + 672);
  v7 = *(v0 + 664);
  v8 = *(v0 + 960);
  v9 = *(v0 + 392);
  (*(v2 + 104))(v1, enum case for TipKitSiriTimeSource.timerPlugin(_:), v3);
  (*(v5 + 104))(v4, enum case for TipKitSiriTimeContext.timerCreatedWithSiri(_:), v6);
  sub_12537C();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  *(v0 + 720) = sub_5AE8(&qword_160810, &unk_127420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_126EB0;
  *(inited + 32) = v9;
  v9;
  sub_FF26C(inited, v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_124D9C();
  v11 = sub_124D8C();
  v12 = sub_113D6C(0, v11);

  *(v0 + 368) = v12;
  if (v8 == 1)
  {
    v13 = sub_10F2B8();

    *(v0 + 368) = v13;
    v12 = v13;
  }

  else if (*(*(v0 + 400) + 96) == 1)
  {
    if (qword_15F018 != -1)
    {
      swift_once();
    }

    sub_5B30(*(v0 + 576), qword_162E10);
    v14 = sub_125AAC();
    v15 = sub_125DFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Created the timer but its running even though it should have been paused.", v16, 2u);
    }
  }

  *(v0 + 728) = v12;
  v17 = [*(v0 + 392) identifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_125B9C();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  *(v0 + 736) = v21;
  sub_12573C();
  sub_12572C();
  v22 = *(v0 + 80);
  v23 = *(v0 + 88);
  sub_23B08((v0 + 56), v22);
  v24 = swift_task_alloc();
  *(v0 + 744) = v24;
  *v24 = v0;
  v24[1] = sub_10B9B0;

  return dispatch thunk of SessionManaging.sessionIDString(for:)(v19, v21, v22, v23);
}

uint64_t sub_10B9B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 752) = a1;
  *(v3 + 760) = a2;

  return _swift_task_switch(sub_10BB00, 0, 0);
}

uint64_t sub_10BB00()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 600);
  sub_5BB0((v0 + 56));
  sub_12524C();
  sub_12523C();
  sub_12522C();

  sub_23B08((v0 + 96), *(v0 + 120));
  v5 = sub_1235DC();
  *(v0 + 961) = v5 & 1;
  v6 = v5 & (v1 != 0);
  sub_5BB0((v0 + 96));
  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v4);
  if (qword_15F018 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 592);
  v8 = *(v0 + 584);
  v9 = *(v0 + 576);
  v10 = sub_5B30(v9, qword_162E10);
  (*(v8 + 16))(v7, v10, v9);
  mach_absolute_time();
  sub_12502C();
  sub_12523C();
  sub_12522C();

  sub_23B08((v0 + 136), *(v0 + 160));
  v11 = sub_1235DC();
  sub_5BB0((v0 + 136));
  if (v6 & 1 | ((v11 & 1) == 0))
  {
    v12 = [*(v0 + 392) type];
    if (v12 < 2)
    {
      v13 = *(v0 + 568);
      v14 = *(v0 + 560);
      v15 = *(v0 + 552);
      sub_1250AC();
      v16 = sub_12504C();
      (*(v14 + 8))(v13, v15);
      if (v16)
      {
        v17 = *(*(v0 + 728) + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration);
        v18 = *(v0 + 544);
        if (v17)
        {
          v19 = *(v0 + 528);
          v20 = *(v0 + 520);
          v21 = *(v0 + 512);

          sub_1260CC();
          *(v0 + 280) = v21;
          *(v0 + 288) = &off_1592B0;
          v22 = sub_23B4C((v0 + 256));
          (*(v20 + 16))(v22, v19, v21);
          v87 = type metadata accessor for DefaultCircuitBreaker();
          v23 = swift_allocObject();
          v24 = *(v0 + 280);
          v25 = sub_23C74(v0 + 256, v24);
          v26 = *(v24 - 8);
          v86 = v18;
          v27 = swift_task_alloc();
          (*(v26 + 16))(v27, v25, v24);
          *(v23 + 56) = v21;
          *(v23 + 64) = &off_1592B0;
          v28 = sub_23B4C((v23 + 32));
          (*(v20 + 32))(v28, v27, v21);
          *(v23 + 72) = sub_1262EC();
          *(v23 + 80) = v29;
          *(v23 + 16) = xmmword_129E00;
          sub_5BB0((v0 + 256));

          (*(v20 + 8))(v19, v21);
          *(v0 + 240) = v87;
          *(v0 + 248) = &off_1592C0;
          *(v0 + 216) = v23;
          sub_A983C(v17, (v0 + 216), v86);

          sub_5BB0((v0 + 216));
          v30 = sub_124E4C();
          (*(*(v30 - 8) + 56))(v86, 0, 1, v30);
        }

        else
        {
          v82 = sub_124E4C();
          (*(*(v82 - 8) + 56))(v18, 1, 1, v82);
        }

        v83 = *(v0 + 728);
        v84 = swift_task_alloc();
        *(v0 + 768) = v84;
        *v84 = v0;
        v84[1] = sub_10C77C;
        v85 = *(v0 + 544);

        return sub_8ED04(v83, v85);
      }

      v59 = *(*(v0 + 400) + 32);
      v60 = &dword_127A18;
      v61 = 0x3FFFFFFFFFFC261CLL;
      v62 = swift_task_alloc();
      *(v0 + 800) = v62;
      *v62 = v0;
      v63 = sub_10CD78;
      goto LABEL_20;
    }

    if (v12 == &dword_0 + 2)
    {
      v59 = *(*(v0 + 400) + 32);
      v60 = &dword_127A20;
      v61 = 0x3FFFFFFFFFFC289ELL;
      v62 = swift_task_alloc();
      *(v0 + 840) = v62;
      *v62 = v0;
      v63 = sub_10D38C;
LABEL_20:
      v62[1] = v63;

      return (&v60[v61])(v59, v0 + 368);
    }

    v72 = sub_124EAC();
    sub_12523C();
    sub_12522C();

    v73 = sub_124E9C();
    *(v0 + 856) = v73;
    sub_5AE8(&qword_15F180, &unk_126E10);
    v74 = swift_allocObject();
    *(v0 + 864) = v74;
    *(v74 + 16) = xmmword_126CB0;
    *(v74 + 32) = 0x656369766564;
    *(v74 + 40) = 0xE600000000000000;
    *(v74 + 72) = v72;
    *(v74 + 48) = v73;
    v75 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);

    v76 = swift_task_alloc();
    *(v0 + 872) = v76;
    *v76 = v0;
    v76[1] = sub_10D63C;
    v55 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v75);
    v57 = 0x800000000012C010;
    v56 = 0xD000000000000011;
    v58 = v74;
    goto LABEL_23;
  }

  v31 = *(v0 + 392);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_126EB0;
  *(v32 + 32) = v31;
  v33 = v31;
  v34 = sub_648C8(v32, 13);
  *(v0 + 888) = v34;

  if (v34)
  {
    v35 = objc_opt_self();
    *(v0 + 376) = 0;
    v36 = [v35 archivedDataWithRootObject:v34 requiringSecureCoding:1 error:v0 + 376];
    v37 = *(v0 + 376);
    if (v36)
    {
      v38 = v36;
      v88 = *(v0 + 728);
      v39 = *(v0 + 536);
      v41 = *(v0 + 408);
      v40 = *(v0 + 416);
      v42 = v37;
      v43 = sub_122EFC();
      v45 = v44;

      *(v0 + 896) = v43;
      *(v0 + 904) = v45;
      sub_E430(v43, v45);
      *v40 = 0;
      *(v40 + 1) = 0;
      v46 = *(v41 + 24);
      v47 = sub_124E4C();
      v48 = *(*(v47 - 8) + 56);
      v48(&v40[v46], 1, 1, v47);
      v49 = *(v41 + 28);
      v48(&v40[v49], 1, 1, v47);
      sub_122EEC(0);
      sub_124E1C();
      v48(v39, 0, 1, v47);
      sub_7CC5C(v39, &v40[v49], &unk_15F170, &unk_126E00);
      *(v40 + 1) = v88;
      sub_124DEC();
      v50 = qword_15EEA8;

      if (v50 != -1)
      {
        swift_once();
      }

      v51 = *(v0 + 416);

      *v51 = sub_124DDC();
      v52 = sub_30F60();
      *(v0 + 912) = v52;
      v53 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v54 = swift_task_alloc();
      *(v0 + 920) = v54;
      *v54 = v0;
      v54[1] = sub_10DAE8;
      v55 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v53);
      v56 = 0xD00000000000001ALL;
      v57 = 0x800000000012CF70;
      v58 = v52;
LABEL_23:

      return v55(v56, v57, v58);
    }

    v77 = *(v0 + 640);
    v78 = *(v0 + 632);
    v79 = *(v0 + 624);
    v80 = v37;

    sub_122E8C();

    swift_willThrow();
    (*(v78 + 8))(v77, v79);
  }

  else
  {

    v64 = sub_125AAC();
    v65 = sub_125DFC();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_0, v64, v65, "Could not get timer action from timer.", v66, 2u);
    }

    v67 = *(v0 + 640);
    v68 = *(v0 + 632);
    v69 = *(v0 + 624);

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v70 = 1;
    swift_willThrow();
    (*(v68 + 8))(v67, v69);
  }

  (*(*(v0 + 656) + 8))(*(v0 + 664), *(v0 + 648));

  v81 = *(v0 + 8);

  return v81();
}

uint64_t sub_10C77C(uint64_t a1)
{
  v3 = *v2;
  v3[97] = a1;
  v3[98] = v1;

  sub_5CA8(v3[68], &unk_15F170, &unk_126E00);

  if (v1)
  {

    v4 = sub_10E510;
  }

  else
  {
    v4 = sub_10C91C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10C91C(uint64_t a1)
{
  v2 = *(v1 + 961);
  v3 = *(v1 + 760);
  sub_12361C();
  if (v2 != 1 || v3 == 0)
  {
    v6 = *(v1 + 464);
    v5 = *(v1 + 472);
    v7 = *(v1 + 456);
    sub_5AE8(&qword_15F940, &unk_127410);
    v8 = *(sub_124F4C() - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_126CB0;
    sub_1135FC(v10 + v9);
    sub_12521C();
    (*(v6 + 104))(v5, enum case for SiriTimePluginModel.timerMulti(_:), v7);
    *(v1 + 200) = v7;
    *(v1 + 208) = sub_10FA4C(&qword_15F930, &type metadata accessor for SiriTimePluginModel, &protocol conformance descriptor for SiriTimePluginModel);
    v11 = sub_23B4C((v1 + 176));
    (*(v6 + 32))(v11, v5, v7);
  }

  else
  {
    *(v1 + 208) = 0;
    *(v1 + 176) = 0u;
    *(v1 + 192) = 0u;
  }

  v12 = swift_task_alloc();
  *(v1 + 792) = v12;
  *v12 = v1;
  v12[1] = sub_10CB98;
  v13 = *(v1 + 760);
  v14 = *(v1 + 752);
  v15 = *(v1 + 664);
  v16 = *(v1 + 640);
  v17 = *(v1 + 504);
  v18 = *(v1 + 384);

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v18, v17, v15, v1 + 176, v16, v14, v13, 0xD000000000000013);
}

uint64_t sub_10CB98()
{
  v1 = *v0;
  v2 = *(*v0 + 776);
  v3 = *(*v0 + 504);
  v4 = *(*v0 + 488);
  v5 = *(*v0 + 480);

  (*(v4 + 8))(v3, v5);
  sub_5CA8(v1 + 176, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_10FBF8, 0, 0);
}

uint64_t sub_10CD78(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 808) = a1;
  *(v3 + 816) = v1;

  if (v1)
  {

    v4 = sub_10E6CC;
  }

  else
  {
    v4 = sub_10CECC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10CECC(uint64_t a1)
{
  v2 = v1[95];
  v3 = v1[94];
  v4 = v1[83];
  sub_12361C();
  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  sub_123B0C();

  v6 = swift_task_alloc();
  v1[103] = v6;
  *v6 = v1;
  v6[1] = sub_10D018;
  v7 = v1[80];
  v8 = v1[56];
  v9 = v1[48];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v9, v8, v7);
}

uint64_t sub_10D018()
{
  v2 = *v1;
  *(*v1 + 832) = v0;

  v3 = v2[101];
  (*(v2[54] + 8))(v2[56], v2[53]);

  if (v0)
  {
    v4 = sub_10E888;
  }

  else
  {
    v4 = sub_10D1CC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10D1CC()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  (*(v0[79] + 8))(v0[80], v0[78]);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10D38C(uint64_t a1)
{
  v3 = *v2;
  v3[37] = v2;
  v3[38] = a1;
  v3[39] = v1;
  v3[106] = v1;

  if (v1)
  {

    v4 = sub_10E354;
  }

  else
  {
    v4 = sub_10D4E4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10D4E4()
{
  v1 = v0[38];
  v2 = v0[95];
  v3 = v0[94];
  v4 = v0[83];
  v0[117] = v1;
  v1;
  sub_12361C();
  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  sub_123B0C();

  v6 = swift_task_alloc();
  v0[118] = v6;
  *v6 = v0;
  v6[1] = sub_10DFD8;
  v7 = v0[80];
  v8 = v0[55];
  v9 = v0[48];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v9, v8, v7);
}

uint64_t sub_10D63C(uint64_t a1)
{
  v3 = *v2;
  v3[40] = v2;
  v3[41] = a1;
  v3[42] = v1;
  v3[110] = v1;

  if (v1)
  {

    v4 = sub_10D91C;
  }

  else
  {
    v4 = sub_10D7BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10D7BC()
{

  v1 = v0[41];
  v2 = v0[95];
  v3 = v0[94];
  v4 = v0[83];
  v0[117] = v1;
  v1;
  sub_12361C();
  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  sub_123B0C();

  v6 = swift_task_alloc();
  v0[118] = v6;
  *v6 = v0;
  v6[1] = sub_10DFD8;
  v7 = v0[80];
  v8 = v0[55];
  v9 = v0[48];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v9, v8, v7);
}

uint64_t sub_10D91C()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];

  (*(v2 + 8))(v1, v3);

  (*(v0[82] + 8))(v0[83], v0[81]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10DAE8(uint64_t a1)
{
  v3 = *v2;
  v3[43] = v2;
  v3[44] = a1;
  v3[45] = v1;
  v3[116] = v1;

  if (v1)
  {
    v4 = sub_10DDD8;
  }

  else
  {
    v4 = sub_10DC50;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10DC50()
{
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  sub_10F25C(v0[52]);
  sub_E498(v2, v1);

  sub_E498(v2, v1);
  v4 = v0[44];
  v5 = v0[95];
  v6 = v0[94];
  v7 = v0[83];
  v0[117] = v4;
  v4;
  sub_12361C();
  v8 = swift_task_alloc();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v5;
  sub_123B0C();

  v9 = swift_task_alloc();
  v0[118] = v9;
  *v9 = v0;
  v9[1] = sub_10DFD8;
  v10 = v0[80];
  v11 = v0[55];
  v12 = v0[48];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v12, v11, v10);
}

uint64_t sub_10DDD8()
{
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[78];
  sub_10F25C(v0[52]);
  sub_E498(v2, v1);

  sub_E498(v2, v1);

  (*(v5 + 8))(v4, v6);

  (*(v0[82] + 8))(v0[83], v0[81]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10DFD8()
{
  v2 = *v1;
  *(*v1 + 952) = v0;

  v3 = v2[117];
  (*(v2[54] + 8))(v2[55], v2[53]);

  if (v0)
  {
    v4 = sub_10EA44;
  }

  else
  {
    v4 = sub_10E18C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10E18C()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  (*(*(v0 + 632) + 8))(*(v0 + 640), *(v0 + 624));

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10E354()
{
  (*(v0[79] + 8))(v0[80], v0[78]);

  (*(v0[82] + 8))(v0[83], v0[81]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10E510()
{
  (*(v0[79] + 8))(v0[80], v0[78]);

  (*(v0[82] + 8))(v0[83], v0[81]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10E6CC()
{
  (*(v0[79] + 8))(v0[80], v0[78]);

  (*(v0[82] + 8))(v0[83], v0[81]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10E888()
{
  (*(v0[79] + 8))(v0[80], v0[78]);

  (*(v0[82] + 8))(v0[83], v0[81]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10EA44()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);

  (*(v2 + 8))(v1, v3);

  (*(*(v0 + 656) + 8))(*(v0 + 664), *(v0 + 648));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10EC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t RecreateDeletedTimerFlow.deinit()
{

  sub_5BB0((v0 + 40));

  sub_5CA8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24RecreateDeletedTimerFlow_followupPluginAction, &qword_160838, &qword_128330);
  return v0;
}

uint64_t RecreateDeletedTimerFlow.__deallocating_deinit()
{

  sub_5BB0((v0 + 40));

  sub_5CA8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24RecreateDeletedTimerFlow_followupPluginAction, &qword_160838, &qword_128330);

  return swift_deallocClassInstance();
}

uint64_t sub_10EEC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_503C;

  return RecreateDeletedTimerFlow.execute()(a1);
}

uint64_t sub_10EF64(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RecreateDeletedTimerFlow(0);

  return sub_12347C();
}

uint64_t sub_10EFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_124EDC();
  __chkstk_darwin(v6 - 8);
  v11 = sub_12587C();
  v12 = &protocol witness table for SiriTimerManagerImpl;
  *&v10 = a1;
  type metadata accessor for CreateTimerCATsSimple(0);
  sub_124ECC();
  *(a3 + 16) = sub_124E7C();
  type metadata accessor for CreateTimerCATs_Async(0);
  sub_124ECC();
  *(a3 + 24) = sub_124DBC();
  type metadata accessor for CreateTimerCATPatternsExecutor(0);
  sub_124ECC();
  *(a3 + 32) = sub_124DBC();
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  v7 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24RecreateDeletedTimerFlow_followupPluginAction;
  v8 = sub_12372C();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  sub_7D780(&v10, a3 + 40);
  *(a3 + 80) = a2;
  return a3;
}

uint64_t sub_10F114()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10F16C(uint64_t a1)
{
  sub_FEEC0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10F25C(uint64_t a1)
{
  TimerHandledOnWatchParameters = type metadata accessor for CreateTimerHandledOnWatchParameters(0);
  (*(*(TimerHandledOnWatchParameters - 8) + 8))(a1, TimerHandledOnWatchParameters);
  return a1;
}

uint64_t sub_10F2B8()
{
  v0 = sub_5AE8(&unk_15F170, &unk_126E00);
  __chkstk_darwin(v0 - 8);
  v2 = &v18 - v1;
  if (qword_15F018 != -1)
  {
    swift_once();
  }

  v3 = sub_125ABC();
  sub_5B30(v3, qword_162E10);
  v4 = sub_125AAC();
  v5 = sub_125DFC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "Producing dialog to indicate we created a paused timer.", v6, 2u);
  }

  sub_124D9C();
  v7 = sub_124D8C();
  v8 = sub_113D6C(0, v7);

  type metadata accessor for TimerTimer.Builder(0);
  swift_allocObject();
  v9 = sub_94508();
  v10 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_label;
  v11 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_label;
  swift_beginAccess();
  sub_10F5E4(v8 + v10, v9 + v11);
  swift_endAccess();
  v12 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_type;
  v13 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_type;
  swift_beginAccess();
  sub_10F5E4(v8 + v12, v9 + v13);
  swift_endAccess();
  sub_1258AC();
  v14 = sub_124E4C();
  (*(*(v14 - 8) + 56))(v2, 0, 1, v14);
  v15 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_state;
  swift_beginAccess();
  sub_7CC5C(v2, v9 + v15, &unk_15F170, &unk_126E00);
  swift_endAccess();
  *(v9 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_remainingTime) = *(v8 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_remainingTime);

  *(v9 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_duration) = *(v8 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_duration);

  type metadata accessor for TimerTimer(0);
  swift_allocObject();
  v16 = sub_96BA0(v9);

  return v16;
}

uint64_t sub_10F5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_15F170, &unk_126E00);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10F654()
{
  v1 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10F73C(uint64_t a1)
{
  sub_5AE8(&qword_162BF8, &unk_12B690);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];

  return sub_1083EC(a1, v3, v4, v5, v6);
}

uint64_t sub_10F7C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10F7D8()
{
  v1 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10F86C(uint64_t a1)
{
  sub_5AE8(&qword_162BF8, &unk_12B690);

  return sub_108614(a1);
}

uint64_t sub_10F8E8()
{
  v1 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10F9C8(uint64_t a1)
{
  v3 = *(sub_5AE8(&qword_162BF8, &unk_12B690) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_10896C(a1, v4, v5, v6, v7);
}

uint64_t sub_10FA4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10FA94()
{
  v1 = sub_5AE8(&qword_162BF8, &unk_12B690);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10FB64(uint64_t a1)
{
  sub_5AE8(&qword_162BF8, &unk_12B690);
  v3 = *(v1 + 16);

  return sub_108FC8(a1, v3);
}

uint64_t sub_10FBF8()
{

  return sub_10D1CC();
}

uint64_t sub_10FCD4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
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

uint64_t static Transformer<>.timerToAlarmParseTransformer.getter()
{
  sub_123D3C();

  return sub_124C8C();
}

uint64_t sub_10FDD4()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162FD0);
  sub_5B30(v0, qword_162FD0);
  return sub_1257AC();
}

unint64_t sub_10FE20@<X0>(char *a1@<X0>, void (**a2)(char *, char *)@<X8>)
{
  v344 = a1;
  v306 = sub_123E8C();
  v305 = *(v306 - 8);
  __chkstk_darwin(v306);
  v304 = &v284 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = sub_123E4C();
  v4 = *(v319 - 8);
  __chkstk_darwin(v319);
  v318 = &v284 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_123DAC();
  v317 = *(v6 - 8);
  __chkstk_darwin(v6);
  v316 = &v284 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5AE8(&qword_160510, &qword_12B170);
  __chkstk_darwin(v8 - 8);
  v315 = &v284 - v9;
  v311 = sub_123D7C();
  v310 = *(v311 - 8);
  v10 = __chkstk_darwin(v311);
  v303 = &v284 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v312 = &v284 - v12;
  v325 = sub_123D6C();
  v324 = *(v325 - 8);
  v13 = __chkstk_darwin(v325);
  v302 = &v284 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v313 = &v284 - v16;
  __chkstk_darwin(v15);
  v327 = &v284 - v17;
  v322 = sub_122E6C();
  v323 = *(v322 - 8);
  v18 = __chkstk_darwin(v322);
  v288 = &v284 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v284 - v20;
  v314 = sub_123D1C();
  v307 = *(v314 - 8);
  v22 = __chkstk_darwin(v314);
  v293 = &v284 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v300 = &v284 - v25;
  __chkstk_darwin(v24);
  v301 = &v284 - v26;
  v27 = sub_5AE8(&qword_162FE8, qword_12B9A0);
  v28 = __chkstk_darwin(v27 - 8);
  v289 = &v284 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v320 = &v284 - v31;
  v32 = __chkstk_darwin(v30);
  v298 = &v284 - v33;
  v34 = __chkstk_darwin(v32);
  v297 = &v284 - v35;
  __chkstk_darwin(v34);
  v309 = &v284 - v36;
  v37 = sub_5AE8(&qword_160568, &unk_1280F0);
  __chkstk_darwin(v37 - 8);
  v330 = &v284 - v38;
  v326 = sub_12418C();
  v328 = *(v326 - 8);
  v39 = __chkstk_darwin(v326);
  v290 = &v284 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v295 = &v284 - v42;
  __chkstk_darwin(v41);
  v321 = &v284 - v43;
  v44 = sub_5AE8(&qword_15FF90, &unk_127BC0);
  __chkstk_darwin(v44 - 8);
  v329 = &v284 - v45;
  v46 = sub_12412C();
  v47 = *(v46 - 8);
  v334 = v46;
  v335 = v47;
  __chkstk_darwin(v46);
  v49 = &v284 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for TimerNLv3Intent(0);
  __chkstk_darwin(v50);
  v339 = &v284 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_124BCC();
  v331 = *(v52 - 8);
  v332 = v52;
  __chkstk_darwin(v52);
  v336 = &v284 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_123D3C();
  v341 = *(v54 - 8);
  v55 = __chkstk_darwin(v54);
  v292 = &v284 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __chkstk_darwin(v55);
  v287 = &v284 - v58;
  v59 = __chkstk_darwin(v57);
  v291 = &v284 - v60;
  v61 = __chkstk_darwin(v59);
  v299 = &v284 - v62;
  v63 = __chkstk_darwin(v61);
  v294 = &v284 - v64;
  v65 = __chkstk_darwin(v63);
  v296 = &v284 - v66;
  v67 = __chkstk_darwin(v65);
  v308 = &v284 - v68;
  __chkstk_darwin(v67);
  v342 = (&v284 - v69);
  if (qword_15F040 != -1)
  {
    goto LABEL_112;
  }

  while (1)
  {
    v70 = sub_125ABC();
    v338 = sub_5B30(v70, qword_162FD0);
    v71 = sub_125AAC();
    v72 = sub_125DFC();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v337 = v6;
      *v73 = 0;
      _os_log_impl(&dword_0, v71, v72, "Transforming timer parse to alarm parse", v73, 2u);
      v6 = v337;
    }

    v340 = a2;

    v75 = v341;
    v74 = v342;
    v76 = *(v341 + 16);
    v337 = v341 + 16;
    v76(v342, v344, v54);
    v77 = (*(v75 + 88))(v74, v54);
    if (v77 == enum case for Parse.NLv3IntentOnly(_:))
    {
      v78 = v76;
      v79 = *(v75 + 96);
      v333 = v54;
      v79(v74, v54);
      v81 = v331;
      v80 = v332;
      v82 = v74;
      v83 = v336;
      (*(v331 + 32))(v336, v82, v332);
      (*(v81 + 16))(v339, v83, v80);
      if (qword_15EF78 != -1)
      {
        swift_once();
      }

      v84 = sub_F24A0();
      v85 = v329;
      v342 = v84;
      sub_12428C();
      v86 = v334;
      v87 = v335;
      v88 = (*(v335 + 48))(v85, 1, v334);
      v89 = v330;
      if (v88 == 1)
      {
        sub_5CA8(v85, &qword_15FF90, &unk_127BC0);
        v90 = v78;
      }

      else
      {
        v327 = v50;
        (*(v87 + 32))(v49, v85, v86);
        v99 = v89;
        v100 = v86;
        sub_1240EC();
        v101 = v328;
        v102 = v326;
        v103 = (*(v328 + 48))(v99, 1, v326);
        v286 = v78;
        if (v103 != 1)
        {
          v118 = v49;
          v119 = v321;
          (*(v101 + 32))(v321, v99, v102);
          v120 = sub_12417C();
          v121 = v102;
          v104 = v333;
          if (v122)
          {
            (*(v101 + 8))(v119, v121);
            (*(v335 + 8))(v118, v334);
          }

          else
          {
            v133 = v120;
            v134 = sub_12416C();
            v135 = v335;
            if ((v136 & 1) == 0)
            {
              v329 = v134;
              v172 = v328;
              v173 = *(v328 + 16);
              v174 = v295;
              v173(v295, v119, v121);
              v175 = sub_125AAC();
              v176 = sub_125DFC();
              v177 = os_log_type_enabled(v175, v176);
              v330 = v133;
              if (v177)
              {
                v178 = swift_slowAlloc();
                LODWORD(v325) = v176;
                v179 = v178;
                v324 = swift_slowAlloc();
                v345 = v324;
                *v179 = 136315138;
                v173(v290, v174, v121);
                v180 = sub_125BAC();
                v182 = v181;
                v344 = *(v172 + 8);
                (v344)(v174, v121);
                v183 = sub_8530(v180, v182, &v345);

                *(v179 + 4) = v183;
                _os_log_impl(&dword_0, v175, v325, "Converting to alarmTime from timerTime %s", v179, 0xCu);
                sub_5BB0(v324);
              }

              else
              {

                v344 = *(v172 + 8);
                (v344)(v174, v121);
              }

              v200 = v323;
              v201 = v309;
              sub_1240FC();
              v202 = sub_124EFC();

              v203 = v341;
              if (v202)
              {
                sub_124C0C();

                v204 = v322;
              }

              else
              {
                v204 = v322;
                (*(v200 + 56))(v201, 1, 1, v322);
              }

              v205 = v297;
              sub_112E98(v201, v297);
              v206 = *(v200 + 48);
              v207 = v206(v205, 1, v204);
              v285 = v118;
              if (v207 == 1)
              {
                sub_5CA8(v205, &qword_162FE8, qword_12B9A0);
              }

              else
              {
                v208 = v203;
                v209 = sub_122E4C();
                v211 = v210;
                (*(v200 + 8))(v205, v204);
                v212 = v330;
                if ((v211 & 1) == 0)
                {
                  v212 = v209;
                }

                v203 = v208;
                v330 = v212;
              }

              v213 = v296;
              v214 = v298;
              sub_112E98(v201, v298);
              if (v206(v214, 1, v204) == 1)
              {
                sub_5CA8(v214, &qword_162FE8, qword_12B9A0);
              }

              else
              {
                sub_122E5C();
                (*(v323 + 8))(v214, v204);
              }

              v215 = v333;
              v216 = v314;
              v217 = v307;
              v218 = v301;
              if (qword_15EF60 != -1)
              {
                swift_once();
              }

              sub_12428C();
              sub_12528C();

              v219 = v308;
              (*(v217 + 16))(v308, v218, v216);
              (*(v203 + 104))(v219, enum case for Parse.directInvocation(_:), v215);
              v220 = v203;
              v221 = v286;
              v286(v213, v219, v215);
              v222 = sub_125AAC();
              v223 = sub_125DFC();
              if (os_log_type_enabled(v222, v223))
              {
                v224 = swift_slowAlloc();
                v225 = swift_slowAlloc();
                v345 = v225;
                *v224 = 136315138;
                v221(v294, v213, v333);
                v226 = sub_125BAC();
                v227 = v217;
                v229 = v228;
                (*(v341 + 8))(v213, v333);
                v230 = sub_8530(v226, v229, &v345);

                *(v224 + 4) = v230;
                _os_log_impl(&dword_0, v222, v223, "Inference reformed alarm parse: %s", v224, 0xCu);
                sub_5BB0(v225);
                v215 = v333;

                (*(v227 + 8))(v301, v314);
                v220 = v341;
                sub_5CA8(v309, &qword_162FE8, qword_12B9A0);
                (v344)(v321, v326);
                v231 = v308;
                (*(v335 + 8))(v285, v334);
                sub_97EC(v339);
                (*(v331 + 8))(v336, v332);
                v232 = v340;
              }

              else
              {

                (*(v220 + 8))(v213, v215);
                (*(v217 + 8))(v218, v314);
                sub_5CA8(v309, &qword_162FE8, qword_12B9A0);
                (v344)(v321, v326);
                (*(v335 + 8))(v285, v334);
                sub_97EC(v339);
                (*(v331 + 8))(v336, v332);
                v232 = v340;
                v231 = v308;
              }

              return (*(v220 + 32))(v232, v231, v215);
            }

            (*(v328 + 8))(v119, v121);
            (*(v135 + 8))(v118, v334);
          }

          v90 = v286;
          goto LABEL_16;
        }

        (*(v87 + 8))(v49, v100);
        sub_5CA8(v99, &qword_160568, &unk_1280F0);
        v90 = v286;
      }

      v104 = v333;
LABEL_16:
      v105 = sub_125AAC();
      v106 = sub_125DEC();
      v107 = os_log_type_enabled(v105, v106);
      v108 = v340;
      if (v107)
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        _os_log_impl(&dword_0, v105, v106, "Not able to parse alarm time from timer NLv3 intent", v109, 2u);
      }

      sub_97EC(v339);
      (*(v81 + 8))(v336, v80);
      v110 = v108;
      v111 = v344;
      v112 = v104;
      return v90(v110, v111, v112);
    }

    if (v77 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v75 + 96))(v74, v54);
      v91 = *v74;
      ObjectType = swift_getObjectType();
      v93 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
      if (v93)
      {
        v94 = v93;
        v95 = v320;
        sub_1128A4(v93, v320);
        v96 = v323;
        v97 = v322;
        v98 = (*(v323 + 48))(v95, 1, v322);
        v333 = v54;
        if (v98 == 1)
        {
          sub_5CA8(v95, &qword_162FE8, qword_12B9A0);
        }

        else
        {
          (*(v96 + 32))(v21, v95, v97);
          sub_122E4C();
          if ((v132 & 1) == 0)
          {
            sub_122E5C();
            if ((v163 & 1) == 0)
            {
              v344 = v21;
              if (sub_C6CBC())
              {
                sub_12432C();
                v194 = v300;
                if (v195)
                {
                  v342 = v91;
                  sub_125BDC();

                  v196 = objc_allocWithZone(INSpeakableString);
                  v197 = sub_125B8C();

                  v198 = [v196 initWithSpokenPhrase:v197];

                  if (v198)
                  {
                    v199 = [v198 spokenPhrase];

                    sub_125B9C();
                  }

                  v75 = v341;
                }

                else
                {
                }
              }

              else
              {
                v194 = v300;
              }

              sub_12528C();

              v249 = v307;
              v250 = v299;
              (*(v307 + 16))(v299, v194, v314);
              v251 = v333;
              (*(v75 + 104))(v250, enum case for Parse.directInvocation(_:), v333);
              v252 = v291;
              v76(v291, v250, v251);
              v253 = sub_125AAC();
              v254 = sub_125DFC();
              if (os_log_type_enabled(v253, v254))
              {
                v255 = swift_slowAlloc();
                v256 = swift_slowAlloc();
                v345 = v256;
                *v255 = 136315138;
                v76(v294, v252, v333);
                v257 = sub_125BAC();
                v259 = v258;
                (*(v341 + 8))(v252, v333);
                v260 = sub_8530(v257, v259, &v345);
                v75 = v341;

                *(v255 + 4) = v260;
                _os_log_impl(&dword_0, v253, v254, "Reformed alarm parse: %s", v255, 0xCu);
                sub_5BB0(v256);

                v251 = v333;

                swift_unknownObjectRelease();

                (*(v307 + 8))(v300, v314);
              }

              else
              {

                swift_unknownObjectRelease();

                (*(v75 + 8))(v252, v251);
                (*(v249 + 8))(v300, v314);
              }

              (*(v323 + 8))(v344, v322);
              return (*(v75 + 32))(v340, v299, v251);
            }
          }

          (*(v96 + 8))(v21, v97);
        }

        v164 = sub_125AAC();
        v165 = sub_125DEC();

        if (os_log_type_enabled(v164, v165))
        {
          v166 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          v345 = v167;
          *v166 = 136315138;
          v346 = v94;
          sub_124BAC();

          v168 = sub_125BAC();
          v342 = v91;
          v170 = sub_8530(v168, v169, &v345);

          *(v166 + 4) = v170;
          _os_log_impl(&dword_0, v164, v165, "Could not get valid dateComponents from task: %s", v166, 0xCu);
          sub_5BB0(v167);

          v171 = v340;

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();

          v171 = v340;
        }

        v129 = v171;
        v130 = v344;
        v131 = v333;
      }

      else
      {
        v126 = sub_125AAC();
        v127 = sub_125DEC();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          *v128 = 0;
          _os_log_impl(&dword_0, v126, v127, "Timer to alarm transformer: NLv4Intent has no task in userDialogAct.", v128, 2u);
        }

        swift_unknownObjectRelease();

        v129 = v340;
        v130 = v344;
        v131 = v54;
      }

      return v76(v129, v130, v131);
    }

    if (v77 != enum case for Parse.uso(_:))
    {
      v123 = sub_125AAC();
      v124 = sub_125DEC();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        _os_log_impl(&dword_0, v123, v124, "Transformer should only be called for NLv4 parse. Check the caller to make sure it's not mis-used.", v125, 2u);
      }

      v76(v340, v344, v54);
      return (*(v75 + 8))(v342, v54);
    }

    v286 = v76;
    (*(v75 + 96))(v74, v54);
    (v324[4])(v327, v74, v325);
    v114 = v316;
    sub_123D5C();
    v50 = sub_123D9C();
    (*(v317 + 8))(v114, v6);
    v21 = *(v50 + 16);
    v49 = v319;
    v115 = v318;
    if (!v21)
    {
      break;
    }

    v6 = 0;
    a2 = (v4 + 8);
    while (v6 < *(v50 + 16))
    {
      (*(v4 + 16))(v115, v50 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v6, v49);
      if (sub_123DBC())
      {

        v117 = v315;
        (*(v4 + 32))(v315, v115, v49);
        v116 = 0;
        goto LABEL_41;
      }

      ++v6;
      (*a2)(v115, v49);
      if (v21 == v6)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_112:
    swift_once();
  }

LABEL_26:

  v116 = 1;
  v117 = v315;
LABEL_41:
  (*(v4 + 56))(v117, v116, 1, v49);
  v137 = (*(v4 + 48))(v117, 1, v49);
  v138 = v117;
  v139 = v340;
  v140 = v324;
  v141 = v325;
  v142 = v4;
  v143 = v327;
  if (v137 == 1)
  {
    sub_5CA8(v117, &qword_160510, &qword_12B170);
    goto LABEL_45;
  }

  v144 = v304;
  sub_123E0C();
  (*(v142 + 8))(v138, v49);
  v145 = v303;
  sub_123E5C();
  (*(v305 + 8))(v144, v306);
  v146 = v310;
  v147 = v312;
  v148 = v311;
  (*(v310 + 32))(v312, v145, v311);
  v149 = v343;
  v150 = sub_123F0C();
  v343 = v149;
  if (!v149)
  {
    v342 = v150;
    result = sub_12424C();
    v184 = v286;
    if (result >> 62)
    {
      v283 = result;
      v185 = sub_1260FC();
      result = v283;
    }

    else
    {
      v185 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    }

    v186 = v341;
    v187 = v293;
    v188 = v292;
    if (!v185)
    {

      v233 = sub_125AAC();
      v234 = sub_125DEC();
      if (os_log_type_enabled(v233, v234))
      {
        v235 = swift_slowAlloc();
        *v235 = 0;
        _os_log_impl(&dword_0, v233, v234, "Timer to alarm transformer: USO graph has no tasks.", v235, 2u);
      }

      (*(v310 + 8))(v312, v311);
      (v140[1])(v327, v325);
      return v184(v139, v344, v54);
    }

    if ((result & 0xC000000000000001) != 0)
    {
      v189 = sub_125FFC();
    }

    else
    {
      if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return result;
      }

      v189 = *(result + 32);
    }

    v190 = v289;
    sub_1128A4(v189, v289);
    v191 = v323;
    v192 = v322;
    v193 = (*(v323 + 48))(v190, 1, v322);
    v333 = v54;
    if (v193 == 1)
    {
      sub_5CA8(v190, &qword_162FE8, qword_12B9A0);
LABEL_97:
      v240 = v324;
      v241 = v312;

      v242 = sub_125AAC();
      v243 = sub_125DEC();

      if (os_log_type_enabled(v242, v243))
      {
        v244 = swift_slowAlloc();
        v245 = swift_slowAlloc();
        v345 = v245;
        *v244 = 136315138;
        v346 = v189;
        sub_124BAC();

        v246 = sub_125BAC();
        v248 = sub_8530(v246, v247, &v345);
        v90 = v286;

        *(v244 + 4) = v248;
        _os_log_impl(&dword_0, v242, v243, "Could not get valid dateComponents from task: %s", v244, 0xCu);
        sub_5BB0(v245);

        v139 = v340;

        (*(v310 + 8))(v241, v311);
        (v240[1])(v327, v325);
      }

      else
      {

        (*(v310 + 8))(v241, v311);
        (v240[1])(v327, v325);
        v90 = v286;
      }

      v110 = v139;
      v111 = v344;
      v112 = v333;
      return v90(v110, v111, v112);
    }

    v236 = v190;
    v237 = v288;
    (*(v191 + 32))(v288, v236, v192);
    sub_122E4C();
    if (v238)
    {
      (*(v191 + 8))(v237, v192);
      goto LABEL_97;
    }

    sub_122E5C();
    if (v239)
    {
      (*(v323 + 8))(v237, v322);
      v139 = v340;
      goto LABEL_97;
    }

    if (sub_C6CBC())
    {
      sub_12432C();
      v261 = v287;
      if (v262)
      {
        sub_125BDC();

        v263 = objc_allocWithZone(INSpeakableString);
        v264 = sub_125B8C();

        v265 = [v263 initWithSpokenPhrase:v264];

        if (v265)
        {
          v266 = [v265 spokenPhrase];

          sub_125B9C();
        }

        v267 = v307;
        v186 = v341;
        v187 = v293;
        v188 = v292;
        goto LABEL_116;
      }
    }

    else
    {
      v261 = v287;
    }

    v267 = v307;
LABEL_116:
    sub_12528C();

    (*(v267 + 16))(v261, v187, v314);
    v268 = v333;
    (*(v186 + 104))(v261, enum case for Parse.directInvocation(_:), v333);
    v269 = v261;
    v270 = v286;
    v286(v188, v269, v268);
    v271 = sub_125AAC();
    v272 = sub_125DFC();
    if (os_log_type_enabled(v271, v272))
    {
      v273 = swift_slowAlloc();
      v274 = swift_slowAlloc();
      v345 = v274;
      *v273 = 136315138;
      v270(v294, v188, v333);
      v275 = sub_125BAC();
      v276 = v188;
      v277 = v275;
      v279 = v278;
      (*(v341 + 8))(v276, v333);
      v280 = sub_8530(v277, v279, &v345);
      v186 = v341;

      *(v273 + 4) = v280;
      _os_log_impl(&dword_0, v271, v272, "Reformed alarm parse: %s", v273, 0xCu);
      sub_5BB0(v274);

      v268 = v333;

      v281 = *(v267 + 8);
      v282 = v287;
      v281(v293, v314);
      (*(v323 + 8))(v288, v322);
      (*(v310 + 8))(v312, v311);
      (v324[1])(v327, v325);
    }

    else
    {

      (*(v186 + 8))(v188, v268);
      (*(v267 + 8))(v187, v314);
      (*(v323 + 8))(v288, v322);
      (*(v310 + 8))(v312, v311);
      (v324[1])(v327, v325);
      v282 = v287;
    }

    return (*(v186 + 32))(v340, v282, v268);
  }

  (*(v146 + 8))(v147, v148);
  v343 = 0;
LABEL_45:
  v151 = v140[2];
  v152 = v313;
  v151(v313, v143, v141);
  v153 = sub_125AAC();
  v154 = sub_125DEC();
  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v333 = v54;
    v342 = v156;
    v345 = v156;
    *v155 = 136315138;
    v151(v302, v152, v141);
    v157 = sub_125BAC();
    v159 = v158;
    v160 = v140[1];
    v160(v152, v141);
    v161 = sub_8530(v157, v159, &v345);

    *(v155 + 4) = v161;
    _os_log_impl(&dword_0, v153, v154, "Timer to alarm transformer: Failed to parse usoParse: %s", v155, 0xCu);
    sub_5BB0(v342);
    v54 = v333;

    v160(v327, v141);
  }

  else
  {

    v162 = v140[1];
    v162(v152, v141);
    v162(v143, v141);
  }

  return (v286)(v340, v344, v54);
}

uint64_t sub_1128A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_5AE8(&qword_162FE8, qword_12B9A0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v41 - v8;
  v10 = sub_122E6C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_C6CBC() || (v14 = sub_12433C(), , !v14))
  {
    if (qword_15F040 != -1)
    {
      swift_once();
    }

    v20 = sub_125ABC();
    sub_5B30(v20, qword_162FD0);

    v21 = sub_125AAC();
    v22 = sub_125DEC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41 = a1;
      v42 = v24;
      *v23 = 136315138;
      sub_124BAC();

      v25 = sub_125BAC();
      v27 = sub_8530(v25, v26, &v42);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_0, v21, v22, "Transformer is invalid: uso graph don't have valid endTime %s.", v23, 0xCu);
      sub_5BB0(v24);
    }

    goto LABEL_21;
  }

  sub_1243AC();
  v15 = sub_124EFC();

  if (!v15)
  {
LABEL_16:
    if (qword_15F040 != -1)
    {
      swift_once();
    }

    v28 = sub_125ABC();
    sub_5B30(v28, qword_162FD0);

    v21 = sub_125AAC();
    v29 = sub_125DEC();

    if (os_log_type_enabled(v21, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v14;
      v42 = v31;
      *v30 = 136315138;
      sub_1243EC();

      v32 = sub_125BAC();
      v34 = sub_8530(v32, v33, &v42);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_0, v21, v29, "Transformer is invalid: failed to resolve alarm time from %s.", v30, 0xCu);
      sub_5BB0(v31);

      return (*(v11 + 56))(a2, 1, 1, v10);
    }

LABEL_21:

    return (*(v11 + 56))(a2, 1, 1, v10);
  }

  v16 = sub_124BFC(1, 0);
  if (!v16)
  {

    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_15:
    sub_5CA8(v9, &qword_162FE8, qword_12B9A0);
    goto LABEL_16;
  }

  v17 = v16;
  v18 = [v16 startDateComponents];

  if (v18)
  {
    sub_122E3C();

    v19 = *(v11 + 56);
    v19(v7, 0, 1, v10);
  }

  else
  {
    v19 = *(v11 + 56);
    v19(v7, 1, 1, v10);
  }

  sub_112F08(v7, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    goto LABEL_15;
  }

  v36 = v9;
  v37 = *(v11 + 32);
  v37(v13, v36, v10);
  sub_122E4C();
  if (v38)
  {
    (*(v11 + 8))(v13, v10);

    goto LABEL_16;
  }

  sub_122E5C();
  v40 = v39;

  if (v40)
  {
    (*(v11 + 8))(v13, v10);
    goto LABEL_16;
  }

  v37(a2, v13, v10);
  return (v19)(a2, 0, 1, v10);
}

uint64_t sub_112E98(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_162FE8, qword_12B9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_112F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_162FE8, qword_12B9A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_112FE0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
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

id sub_113084(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_125B8C();
  v5 = [v3 initWithIdentifier:0 displayString:v4];

  if (!a1)
  {
    v12 = v5;
    goto LABEL_8;
  }

  v6 = v5;

  sub_12432C();
  if (!v7)
  {

    goto LABEL_8;
  }

  sub_125BDC();

  v8 = objc_allocWithZone(INSpeakableString);
  v9 = sub_125B8C();

  v10 = [v8 initWithSpokenPhrase:v9];

  if (!v10)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v11 = [v10 spokenPhrase];

  if (!v11)
  {
    sub_125B9C();
    v11 = sub_125B8C();
  }

LABEL_9:
  [v5 setLabel:v11];

  if (a1)
  {

    UsoEntity_common_Timer.duration.getter();
  }

  else
  {
    [objc_opt_self() defaultDuration];
  }

  isa = sub_125D5C().super.super.isa;
  [v5 setDuration:isa];

  if (a1)
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
    [objc_opt_self() defaultDuration];
  }

  v14 = sub_125D5C().super.super.isa;
  [v5 setRemainingTime:v14];

  if (a1)
  {

    v15 = UsoEntity_common_Timer.timerState.getter();

    [v5 setState:v15];

    v16 = UsoEntity_common_Timer.timerType.getter();

    [v5 setType:v16];

    v17 = UsoEntity_common_Timer.isMultiple.getter();
  }

  else
  {
    [v5 setState:0];
    [v5 setType:0];
    v17 = 0;
  }

  [v5 setShouldMatchAny:v17];

  return v5;
}