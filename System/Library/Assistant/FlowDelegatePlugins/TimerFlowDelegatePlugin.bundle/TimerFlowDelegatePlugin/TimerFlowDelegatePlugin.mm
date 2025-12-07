uint64_t sub_21F8()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15ED98);
  sub_5B30(v0, qword_15ED98);
  return sub_1257AC();
}

uint64_t sub_2244@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_15F1B0, qword_126E30);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  if (qword_15ED90 != -1)
  {
    swift_once();
  }

  v10 = sub_125ABC();
  sub_5B30(v10, qword_15ED98);
  v11 = sub_125AAC();
  v12 = sub_125DFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "CreateTimer.NeedsConfirmationStrategy.actionForInput() called)", v13, 2u);
  }

  v14 = sub_12532C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v16 = sub_12514C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  sub_346FC(a1, v9, 0, v6, a2);
  sub_5CA8(v6, &unk_15F1B0, qword_126E30);
  return sub_5CA8(v9, &qword_15FFB0, &unk_1270A0);
}

uint64_t sub_24D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_5AE8(&unk_15FF60, &unk_127BA0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_123A0C();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_5AE8(&unk_161EC0, &unk_126E20);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = sub_123A1C();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = sub_123D3C();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v8 = sub_123D1C();
  v3[20] = v8;
  v3[21] = *(v8 - 8);
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_2768, 0, 0);
}

uint64_t sub_2768()
{
  v57 = v0;
  if (qword_15ED90 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_15ED98);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "CreateTimer.NeedsConfirmationStrategy.parseConfirmationResponse() called", v4, 2u);
  }

  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 136);

  sub_123CCC();
  if ((*(v6 + 88))(v5, v7) == enum case for Parse.directInvocation(_:))
  {
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v12 = *(v0 + 112);
    v13 = *(v0 + 120);
    v14 = *(v0 + 104);
    (*(*(v0 + 144) + 96))(v11, *(v0 + 136));
    (*(v9 + 32))(v8, v11, v10);
    sub_12527C();
    v15 = (*(v13 + 48))(v14, 1, v12);
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    v18 = *(v0 + 160);
    if (v15 != 1)
    {
      v44 = *(v0 + 120);
      v43 = *(v0 + 128);
      v45 = *(v0 + 112);
      v46 = *(v0 + 96);
      (*(v44 + 32))(v43, *(v0 + 104), v45);
      (*(v44 + 16))(v46, v43, v45);
      (*(v44 + 56))(v46, 0, 1, v45);
      sub_123B4C();
      sub_1255EC();
      sub_123AEC();
      (*(v44 + 8))(v43, v45);
      (*(v17 + 8))(v16, v18);
      goto LABEL_14;
    }

    v19 = *(v0 + 104);
    (*(v17 + 8))(*(v0 + 176), *(v0 + 160));
    sub_5CA8(v19, &unk_161EC0, &unk_126E20);
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  }

  v20 = *(v0 + 88);
  v21 = *(v0 + 64);
  v22 = *(v0 + 72);
  sub_123B6C();
  v23 = sub_1239FC();
  v25 = v24;
  v26 = *(v22 + 8);
  v26(v20, v21);
  v27._rawValue = &off_1578D8;
  v59._countAndFlagsBits = v23;
  v59._object = v25;
  v28 = sub_12613C(v27, v59);

  if (v28 > 1)
  {
    (*(*(v0 + 48) + 16))(*(v0 + 56), *(v0 + 32), *(v0 + 40));
    v32 = sub_125AAC();
    v33 = sub_125DEC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 80);
      v54 = v33;
      v36 = *(v0 + 48);
      v35 = *(v0 + 56);
      v52 = *(v0 + 40);
      v53 = *(v0 + 64);
      v37 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = v55;
      *v37 = 136315138;
      v38 = v35;
      sub_123B6C();
      v39 = sub_1239FC();
      v41 = v40;
      v26(v34, v53);
      (*(v36 + 8))(v38, v52);
      v42 = sub_8530(v39, v41, &v56);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_0, v32, v54, "Received unsupported parameter name: %s", v37, 0xCu);
      sub_5BB0(v55);
    }

    else
    {
      v49 = *(v0 + 48);
      v48 = *(v0 + 56);
      v50 = *(v0 + 40);

      (*(v49 + 8))(v48, v50);
    }

    *(v0 + 184) = 0;
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0, &unk_1293F0);
    swift_allocError();
    sub_1251BC();
    swift_willThrow();

    v47 = *(v0 + 8);
    goto LABEL_17;
  }

  v29 = *(v0 + 112);
  v30 = *(v0 + 120);
  v31 = *(v0 + 96);
  (*(v30 + 104))(v31, enum case for ConfirmationResponse.confirmed(_:), v29);
  (*(v30 + 56))(v31, 0, 1, v29);
  sub_123B4C();
  sub_1255EC();
  sub_123AEC();
LABEL_14:

  v47 = *(v0 + 8);
LABEL_17:

  return v47();
}

uint64_t sub_2E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a1;
  v3[9] = a3;
  v4 = sub_12392C();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  sub_5AE8(&unk_162190, &unk_128500);
  v3[13] = swift_task_alloc();
  sub_5AE8(&unk_15F170, &unk_126E00);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v5 = sub_125ABC();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v6 = sub_124FFC();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v7 = sub_12501C();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v8 = sub_123A0C();
  v3[25] = v8;
  v3[26] = *(v8 - 8);
  v3[27] = swift_task_alloc();
  v9 = sub_12368C();
  v3[28] = v9;
  v3[29] = *(v9 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();

  return _swift_task_switch(sub_3148, 0, 0);
}

uint64_t sub_3148()
{
  v41 = v0;
  if (qword_15ED90 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[16], qword_15ED98);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "CreateTimer.NeedsConfirmationStrategy.makePromptForConfirmation() called", v4, 2u);
  }

  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];

  sub_12362C();
  sub_5AE8(&unk_15FF60, &unk_127BA0);
  sub_123B6C();
  v8 = sub_1239FC();
  v10 = v9;
  (*(v6 + 8))(v5, v7);

  v11 = sub_125AAC();
  v12 = sub_125DFC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_8530(v8, v10, v40);
    _os_log_impl(&dword_0, v11, v12, "Parameter name: %s", v13, 0xCu);
    sub_5BB0(v14);
  }

  v15 = v0[18];
  v16 = v0[16];
  v17 = v0[17];
  (*(v0[20] + 104))(v0[21], enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v0[19]);
  (*(v17 + 16))(v15, v1, v16);
  mach_absolute_time();
  sub_12502C();

  v18._rawValue = &off_1578D8;
  v43._countAndFlagsBits = v8;
  v43._object = v10;
  v19 = sub_12613C(v18, v43);

  if (v19)
  {

    if (v19 == 1)
    {
      if (qword_15EE10 != -1)
      {
        swift_once();
      }

      v20 = sub_123B4C();
      v21 = [v20 label];

      if (v21)
      {
        sub_125E0C();

        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

      v35 = v0[14];
      v36 = sub_124E4C();
      (*(*(v36 - 8) + 56))(v35, v22, 1, v36);
      v37 = swift_task_alloc();
      v0[34] = v37;
      *v37 = v0;
      v37[1] = sub_3A60;
      v38 = v0[14];

      return sub_8E4D8(v38);
    }

    else
    {
      v28 = sub_125AAC();
      v29 = sub_125DEC();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_0, v28, v29, "Parameter name or type is not supported.", v30, 2u);
      }

      if (qword_15EE18 != -1)
      {
        swift_once();
      }

      v31 = sub_124EAC();
      sub_12524C();
      sub_12523C();
      sub_12522C();

      v32 = sub_124E9C();
      v0[39] = v32;
      sub_5AE8(&qword_15F180, &unk_126E10);
      v33 = swift_allocObject();
      *(v33 + 32) = 0x656369766564;
      *(v33 + 40) = 0xE600000000000000;
      *(v33 + 72) = v31;
      v39 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v0[40] = v33;
      *(v33 + 16) = xmmword_126CB0;
      *(v33 + 48) = v32;

      v34 = swift_task_alloc();
      v0[41] = v34;
      *v34 = v0;
      v34[1] = sub_3F08;

      return v39(0xD000000000000011, 0x800000000012C010, v33);
    }
  }

  else
  {
    if (qword_15EE10 != -1)
    {
      swift_once();
    }

    v23 = v0[15];
    sub_125BCC();

    v24 = sub_124E4C();
    (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
    v25 = swift_task_alloc();
    v0[32] = v25;
    *v25 = v0;
    v25[1] = sub_3840;
    v26 = v0[15];

    return sub_8E8B8(v26);
  }
}

uint64_t sub_3840(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[15];
  v4[33] = v1;

  sub_5CA8(v5, &unk_15F170, &unk_126E00);
  if (v1)
  {
    v6 = sub_45E8;
  }

  else
  {
    v6 = sub_3988;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_3988()
{
  v1 = v0[3];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v0[36] = v1;
  (*(v4 + 56))(v2, 1, 1, v3);
  v1;
  v5 = swift_task_alloc();
  v0[37] = v5;
  *v5 = v0;
  v5[1] = sub_3C80;
  v6 = v0[24];
  v7 = v0[13];
  v8 = v0[8];

  return sub_F2BE4(v8, 1, v7, v6);
}

uint64_t sub_3A60(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[14];
  v4[35] = v1;

  sub_5CA8(v5, &unk_15F170, &unk_126E00);
  if (v1)
  {
    v6 = sub_47AC;
  }

  else
  {
    v6 = sub_3BA8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_3BA8()
{
  v1 = v0[6];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v0[36] = v1;
  (*(v4 + 56))(v2, 1, 1, v3);
  v1;
  v5 = swift_task_alloc();
  v0[37] = v5;
  *v5 = v0;
  v5[1] = sub_3C80;
  v6 = v0[24];
  v7 = v0[13];
  v8 = v0[8];

  return sub_F2BE4(v8, 1, v7, v6);
}

uint64_t sub_3C80()
{
  v2 = *(*v1 + 288);
  v3 = *(*v1 + 104);
  *(*v1 + 304) = v0;

  sub_5CA8(v3, &unk_162190, &unk_128500);

  if (v0)
  {
    v4 = sub_4970;
  }

  else
  {
    v4 = sub_3DE0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_3DE0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_3F08(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v4 = sub_42FC;
  }

  else
  {
    v4 = sub_4044;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_4044()
{

  sub_12364C();
  sub_12391C();
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_4110;
  v2 = v0[30];
  v3 = v0[24];
  v4 = v0[12];
  v5 = v0[8];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v5, v2, v4, v3, 0);
}

uint64_t sub_4110()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  v5 = *(v2 + 224);
  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  v8 = *(v2 + 80);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_4B3C;
  }

  else
  {
    v9 = sub_44C8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_42FC()
{

  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  (*(v0[23] + 8))(v0[24], v0[22]);
  sub_5AE8(&qword_15F188, &unk_1288E0);
  sub_5C60(&unk_15F190, &qword_15F188, &unk_1288E0, &unk_1294B8);
  swift_allocError();
  sub_1251BC();
  swift_willThrow();

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_44C8()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_45E8()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  (*(v0[23] + 8))(v0[24], v0[22]);
  sub_5AE8(&qword_15F188, &unk_1288E0);
  sub_5C60(&unk_15F190, &qword_15F188, &unk_1288E0, &unk_1294B8);
  swift_allocError();
  sub_1251BC();
  swift_willThrow();

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_47AC()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  (*(v0[23] + 8))(v0[24], v0[22]);
  sub_5AE8(&qword_15F188, &unk_1288E0);
  sub_5C60(&unk_15F190, &qword_15F188, &unk_1288E0, &unk_1294B8);
  swift_allocError();
  sub_1251BC();
  swift_willThrow();

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_4970()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  sub_5AE8(&qword_15F188, &unk_1288E0);
  sub_5C60(&unk_15F190, &qword_15F188, &unk_1288E0, &unk_1294B8);
  swift_allocError();
  sub_1251BC();
  swift_willThrow();

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_4B3C()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  (*(v0[23] + 8))(v0[24], v0[22]);
  sub_5AE8(&qword_15F188, &unk_1288E0);
  sub_5C60(&unk_15F190, &qword_15F188, &unk_1288E0, &unk_1294B8);
  swift_allocError();
  sub_1251BC();
  swift_willThrow();

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_4D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_5D08;

  return sub_24D8(a1, a2, a3);
}

uint64_t sub_4DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = _s25NeedsConfirmationStrategyCMa();
  *v8 = v4;
  v8[1] = sub_4EA0;

  return NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)(a1, a2, v9, a4);
}

uint64_t sub_4EA0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_4F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_503C;

  return sub_2E34(a1, v6, a3);
}

uint64_t sub_503C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_5130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = _s25NeedsConfirmationStrategyCMa();
  *v10 = v5;
  v10[1] = sub_5D08;

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)(a1, a2, a3, v11, a5);
}

uint64_t sub_51FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = _s25NeedsConfirmationStrategyCMa();
  *v10 = v5;
  v10[1] = sub_5D08;

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)(a1, a2, a3, v11, a5);
}

uint64_t sub_52C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = _s25NeedsConfirmationStrategyCMa();
  *v8 = v4;
  v8[1] = sub_5D08;

  return NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t sub_538C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = _s25NeedsConfirmationStrategyCMa();
  *v8 = v4;
  v8[1] = sub_5D08;

  return NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t sub_5450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = _s25NeedsConfirmationStrategyCMa();
  *v12 = v6;
  v12[1] = sub_5D08;

  return NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_552C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = _s25NeedsConfirmationStrategyCMa();
  *v12 = v6;
  v12[1] = sub_5D08;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_5608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = _s25NeedsConfirmationStrategyCMa();
  *v14 = v7;
  v14[1] = sub_5D08;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_594C(void (*a1)(void), uint64_t (*a2)(char *, void))
{
  v4 = sub_124EDC();
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(0);
  sub_124ECC();
  return a2(v6, 0);
}

uint64_t sub_59F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

unint64_t sub_5A94()
{
  result = qword_15F160;
  if (!qword_15F160)
  {
    _s25NeedsConfirmationStrategyCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15F160);
  }

  return result;
}

uint64_t sub_5AE8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_5B30(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_5B68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_5BB0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *sub_5BFC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_5C60(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_5B68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5CA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_5AE8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for ResetTimerCATsSimple(uint64_t a1)
{
  result = qword_15F580;
  if (!qword_15F580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5D9C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_5F24(uint64_t a1, uint64_t a2)
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

uint64_t sub_6034()
{
  sub_124E8C();

  return swift_deallocClassInstance();
}

uint64_t sub_606C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_60DC(uint64_t a1)
{
  v2 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6144(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x6970756F72476F6ELL;
  v4 = a1;
  v5 = 0x61727544656D6173;
  v6 = 0xEC0000006E6F6974;
  if (a1 == 5)
  {
    v5 = 0x65737561506C6C61;
    v6 = 0xE900000000000064;
  }

  v7 = 0x69766544656D6173;
  if (a1 == 3)
  {
    v8 = 0xEA00000000006563;
  }

  else
  {
    v7 = 0x696E6E75526C6C61;
    v8 = 0xEA0000000000676ELL;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6562614C656D6173;
  v10 = 0xE90000000000006CLL;
  if (a1 != 1)
  {
    v9 = 0x6D6F6F52656D6173;
    v10 = 0xE800000000000000;
  }

  if (!a1)
  {
    v9 = 0x6970756F72476F6ELL;
    v10 = 0xEA0000000000676ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE90000000000006CLL;
        if (v11 != 0x6562614C656D6173)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x6D6F6F52656D6173)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE900000000000064;
        if (v11 != 0x65737561506C6C61)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEC0000006E6F6974;
        if (v11 != 0x61727544656D6173)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xEA00000000006563;
      if (v11 != 0x69766544656D6173)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x696E6E75526C6C61;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_1261BC();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_637C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746C7561666564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x53736574756E696DLL;
    }

    else
    {
      v4 = 0xD000000000000020;
    }

    if (v3 == 2)
    {
      v5 = 0xEE0073646E6F6365;
    }

    else
    {
      v5 = 0x800000000012C180;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x73646E6F636573;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0x53736574756E696DLL;
  v7 = 0x800000000012C180;
  if (a2 == 2)
  {
    v7 = 0xEE0073646E6F6365;
  }

  else
  {
    v6 = 0xD000000000000020;
  }

  if (a2)
  {
    v2 = 0x73646E6F636573;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1261BC();
  }

  return v10 & 1;
}

uint64_t sub_64D8()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15F5D8);
  sub_5B30(v0, qword_15F5D8);
  return sub_12578C();
}

uint64_t static TimerResponseDisambiguationUtils.parsePromptResult<A>(input:items:intentType:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_1252AC();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_123D1C();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = sub_123DAC();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v6 = sub_123D6C();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  type metadata accessor for TimerNLv3Intent(0);
  v2[23] = swift_task_alloc();
  v7 = sub_123D3C();
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  v8 = sub_124BCC();
  v2[27] = v8;
  v2[28] = *(v8 - 8);
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_67E8, 0, 0);
}

uint64_t sub_67E8()
{
  v145 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  sub_123CCC();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(*(v0 + 200) + 96))(*(v0 + 208), *(v0 + 192));
LABEL_5:
    v5 = *(v0 + 232);
    v6 = *(v0 + 216);
    v7 = *(v0 + 184);
    v8 = *(v0 + 72);
    v9 = *(*(v0 + 224) + 32);
    v9(v5, *(v0 + 208), v6);
    v9(v7, v5, v6);
    v10 = sub_E113C();
    v11 = sub_E18C8();
    v12 = sub_9070(v10, v8, v11 & 1);

    sub_97EC(v7);
    goto LABEL_6;
  }

  if (v4 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(*(v0 + 200) + 96))(*(v0 + 208), *(v0 + 192));
    sub_5AE8(&unk_15FF80, &unk_126EE0);

    goto LABEL_5;
  }

  if (v4 != enum case for Parse.directInvocation(_:))
  {
    if (v4 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(*(v0 + 200) + 96))(*(v0 + 208), *(v0 + 192));
      ObjectType = swift_getObjectType();
      v47 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
      if (v47)
      {
        v48 = sub_93FC(v47);
        if (v48)
        {
          v49 = v48;
          sub_5AE8(&qword_160810, &unk_127420);
          v12 = swift_allocObject();
          *(v12 + 1) = xmmword_126EB0;
          v12[4] = v49;
LABEL_72:

          swift_unknownObjectRelease();
          goto LABEL_6;
        }
      }

      v91 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
      if (!v91)
      {
        swift_unknownObjectRelease();
        goto LABEL_86;
      }

      if (sub_C5BD0(v91))
      {
        sub_1257EC();

        v93 = sub_113084(v92);
        if (qword_15EDB0 != -1)
        {
          swift_once();
        }

        v94 = sub_125ABC();
        sub_5B30(v94, qword_15F5D8);
        v95 = v93;
        v96 = sub_125AAC();
        v97 = sub_125DFC();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          v144[0] = v138;
          *v98 = 136315138;
          v142 = v95;
          v99 = v95;
          v100 = [v99 description];
          v101 = sub_125B9C();
          v136 = v97;
          v103 = v102;

          v95 = v142;
          v104 = sub_8530(v101, v103, v144);

          *(v98 + 4) = v104;
          _os_log_impl(&dword_0, v96, v136, "Converted timer from UsoEntity_common_Timer: %s", v98, 0xCu);
          sub_5BB0(v138);
        }

        v105 = *(v0 + 72);
        sub_8BAC();
        v106 = UsoEntity_common_Timer.isMultiple.getter();
        isa = sub_125EEC(1).super.super.isa;
        v108 = sub_125F0C();

        v12 = sub_9070(v95, v105, v108 & 1);

        goto LABEL_72;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (v4 != enum case for Parse.uso(_:))
      {
        if (qword_15EDB0 != -1)
        {
          goto LABEL_91;
        }

        goto LABEL_52;
      }

      v50 = *(v0 + 208);
      v52 = *(v0 + 168);
      v51 = *(v0 + 176);
      v54 = *(v0 + 152);
      v53 = *(v0 + 160);
      v55 = *(v0 + 128);
      v56 = *(v0 + 136);
      (*(*(v0 + 200) + 96))(v50, *(v0 + 192));
      (*(v52 + 32))(v51, v50, v53);
      sub_123D5C();
      v57 = sub_123D8C();
      v58 = *(v56 + 8);
      v58(v54, v55);
      if (v57)
      {
        v59 = sub_93FC(v57);
        if (v59)
        {
          v60 = v59;
          v62 = *(v0 + 168);
          v61 = *(v0 + 176);
          v63 = *(v0 + 160);
          sub_5AE8(&qword_160810, &unk_127420);
          v12 = swift_allocObject();
          *(v12 + 1) = xmmword_126EB0;
          v12[4] = v60;

          (*(v62 + 8))(v61, v63);
          goto LABEL_6;
        }
      }

      v109 = *(v0 + 144);
      v110 = *(v0 + 128);
      sub_123D5C();
      v111 = sub_123D8C();
      v112 = (v58)(v109, v110);
      if (!v111)
      {
        (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
        goto LABEL_86;
      }

      if (sub_C5BD0(v112))
      {
        sub_1257EC();

        v114 = sub_113084(v113);
        if (qword_15EDB0 != -1)
        {
          swift_once();
        }

        v115 = sub_125ABC();
        sub_5B30(v115, qword_15F5D8);
        v116 = v114;
        v117 = sub_125AAC();
        v118 = sub_125DFC();

        v143 = v116;
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v144[0] = v139;
          *v119 = 136315138;
          v120 = v116;
          v121 = [v120 description];
          v122 = sub_125B9C();
          v124 = v123;

          v125 = sub_8530(v122, v124, v144);

          *(v119 + 4) = v125;
          _os_log_impl(&dword_0, v117, v118, "Converted timer from UsoEntity_common_Timer: %s", v119, 0xCu);
          sub_5BB0(v139);
        }

        v126 = *(v0 + 168);
        v140 = *(v0 + 176);
        v127 = *(v0 + 160);
        v128 = *(v0 + 72);
        sub_8BAC();
        v129 = UsoEntity_common_Timer.isMultiple.getter();
        v130 = sub_125EEC(1).super.super.isa;
        v131 = sub_125F0C();

        v12 = sub_9070(v143, v128, v131 & 1);

        (*(v126 + 8))(v140, v127);
        goto LABEL_6;
      }

      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    }

    goto LABEL_86;
  }

  v15 = *(v0 + 208);
  v17 = *(v0 + 112);
  v16 = *(v0 + 120);
  v18 = *(v0 + 104);
  (*(*(v0 + 200) + 96))(v15, *(v0 + 192));
  (*(v17 + 32))(v16, v15, v18);
  if (qword_15EDB0 != -1)
  {
    swift_once();
  }

  v19 = sub_125ABC();
  sub_5B30(v19, qword_15F5D8);
  v20 = sub_125AAC();
  v21 = sub_125DFC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "Received directInvocation in ResponseSimpleDisambiguationStrategy.parseDisambiguationResult", v22, 2u);
  }

  v23 = sub_123D0C();
  if (!v23)
  {
    goto LABEL_57;
  }

  v24 = v23;
  v26 = *(v0 + 88);
  v25 = *(v0 + 96);
  v27 = *(v0 + 80);
  (*(v26 + 104))(v25, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v27);
  v28 = sub_12529C();
  v30 = v29;
  (*(v26 + 8))(v25, v27);
  if (!*(v24 + 16))
  {

    goto LABEL_56;
  }

  v31 = sub_8AD8(v28, v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
LABEL_56:

LABEL_57:
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_58;
  }

  sub_8B50(*(v24 + 56) + 32 * v31, v0 + 16);

  if (!*(v0 + 40))
  {
LABEL_58:
    sub_5CA8(v0 + 16, &unk_161840, &qword_128110);
    goto LABEL_59;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_59:
    v83 = sub_125AAC();
    v84 = sub_125DEC();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_0, v83, v84, "There's no timerId in direct invocation", v85, 2u);
    }

    v87 = *(v0 + 112);
    v86 = *(v0 + 120);
    v88 = *(v0 + 104);

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v89 = 0;
    swift_willThrow();
    (*(v87 + 8))(v86, v88);

    v90 = *(v0 + 8);

    return v90();
  }

  v34 = *(v0 + 48);
  v35 = *(v0 + 56);
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {

    goto LABEL_59;
  }

  v37 = sub_125AAC();
  v38 = sub_125DDC();

  v135 = v34;
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v144[0] = v40;
    *v39 = 136315138;

    v41 = sub_8530(v34, v35, v144);

    *(v39 + 4) = v41;
    _os_log_impl(&dword_0, v37, v38, "Direct invocation timer ID: %s", v39, 0xCu);
    sub_5BB0(v40);
  }

  v42 = *(v0 + 72);
  v144[0] = _swiftEmptyArrayStorage;
  if (v42 >> 62)
  {
    v43 = sub_1260FC();
    if (v43)
    {
      goto LABEL_26;
    }

LABEL_93:
    v12 = _swiftEmptyArrayStorage;
LABEL_94:
    v132 = *(v0 + 112);
    v133 = *(v0 + 120);
    v134 = *(v0 + 104);

    (*(v132 + 8))(v133, v134);
    goto LABEL_6;
  }

  v43 = *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8));
  if (!v43)
  {
    goto LABEL_93;
  }

LABEL_26:
  v44 = 0;
  v137 = v42 & 0xFFFFFFFFFFFFFF8;
  v141 = v42 & 0xC000000000000001;
  v45 = *(v0 + 72) + 32;
  while (1)
  {
    if (v141)
    {
      v64 = sub_125FFC();
    }

    else
    {
      if (v44 >= *(v137 + 16))
      {
        goto LABEL_90;
      }

      v64 = *(v45 + 8 * v44);
    }

    v65 = v64;
    v66 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    v67 = [v64 identifier];
    if (v67)
    {
      v68 = v67;
      v69 = v35;
      v70 = sub_125B9C();
      v72 = v71;

      v73 = v70;
      v35 = v69;
      if (v73 == v135 && v72 == v69)
      {

LABEL_49:
        sub_12603C();
        sub_12607C();
        sub_12608C();
        sub_12604C();
        goto LABEL_36;
      }

      v75 = sub_1261BC();

      if (v75)
      {
        goto LABEL_49;
      }
    }

LABEL_36:
    ++v44;
    if (v66 == v43)
    {
      v12 = v144[0];
      goto LABEL_94;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  swift_once();
LABEL_52:
  v76 = sub_125ABC();
  sub_5B30(v76, qword_15F5D8);
  v77 = sub_125AAC();
  v78 = sub_125DEC();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_0, v77, v78, "Unhandled unknown case", v79, 2u);
  }

  v81 = *(v0 + 200);
  v80 = *(v0 + 208);
  v82 = *(v0 + 192);

  (*(v81 + 8))(v80, v82);
LABEL_86:
  v12 = 0;
LABEL_6:

  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t static TimerResponseDisambiguationUtils.determineWindowInputType(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = sub_123CDC();
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3);
  v88 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1252AC();
  v92 = *(v5 - 8);
  v93 = v5;
  __chkstk_darwin(v5);
  v91 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_123D1C();
  v95 = *(v7 - 1);
  v96 = v7;
  __chkstk_darwin(v7);
  v94 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_123DAC();
  v86 = *(v9 - 8);
  v87 = v9;
  __chkstk_darwin(v9);
  v83 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_123D6C();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for TimerNLv3Intent(0);
  v12 = __chkstk_darwin(v97);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v81 - v15;
  v17 = sub_123D3C();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  __chkstk_darwin(v19);
  v21 = &v81 - v20;
  v22 = sub_124BCC();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_123CCC();
  v26 = (*(v18 + 88))(v21, v17);
  if (v26 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v18 + 96))(v21, v17);
    goto LABEL_5;
  }

  if (v26 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v18 + 96))(v21, v17);
    sub_5AE8(&unk_15FF80, &unk_126EE0);

LABEL_5:
    v27 = *(v23 + 32);
    v27(v25, v21, v22);
    v27(v16, v25, v22);
    if (qword_15EDB0 != -1)
    {
      swift_once();
    }

    v28 = sub_125ABC();
    sub_5B30(v28, qword_15F5D8);
    sub_9848(v16, v14);
    v29 = sub_125AAC();
    v30 = sub_125DFC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v101 = v32;
      *v31 = 136315138;
      sub_98AC(&qword_161ED0, &unk_12A9D8);
      v33 = sub_12618C();
      v35 = v34;
      sub_97EC(v14);
      v36 = sub_8530(v33, v35, &v101);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_0, v29, v30, "TimerDisambiguation.determineInputType(input:) TimerNLIntent: %s", v31, 0xCu);
      sub_5BB0(v32);
    }

    else
    {

      sub_97EC(v14);
    }

    if (qword_15EF98 != -1)
    {
      swift_once();
    }

    sub_98AC(&qword_15FFA0, &unk_12AA00);
    sub_12428C();
    if (v101 > 1u)
    {
      if (v101 == 2)
      {
        sub_123C7C();
        return sub_97EC(v16);
      }
    }

    else if (v101)
    {
      sub_123C5C();
      return sub_97EC(v16);
    }

    sub_123C6C();
    return sub_97EC(v16);
  }

  if (v26 != enum case for Parse.directInvocation(_:))
  {
    if (v26 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v18 + 96))(v21, v17);
      sub_12534C();
      return swift_unknownObjectRelease();
    }

    if (v26 == enum case for Parse.uso(_:))
    {
      (*(v18 + 96))(v21, v17);
      v64 = v84;
      v65 = v82;
      v66 = v85;
      (*(v84 + 32))(v82, v21, v85);
      v67 = v83;
      sub_123D5C();
      sub_123D9C();
      (*(v86 + 8))(v67, v87);
      sub_12533C();

      return (*(v64 + 8))(v65, v66);
    }

    if (qword_15EDB0 != -1)
    {
      swift_once();
    }

    v68 = sub_125ABC();
    sub_5B30(v68, qword_15F5D8);
    v70 = v88;
    v69 = v89;
    v71 = v90;
    (*(v89 + 16))(v88, a1, v90);
    v72 = sub_125AAC();
    v73 = sub_125DEC();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      LODWORD(v97) = v73;
      v75 = v70;
      v76 = v74;
      v96 = swift_slowAlloc();
      *&v101 = v96;
      *v76 = 136315138;
      sub_123CCC();
      v77 = sub_125BAC();
      v79 = v78;
      (*(v69 + 8))(v75, v71);
      v80 = sub_8530(v77, v79, &v101);

      *(v76 + 4) = v80;
      _os_log_impl(&dword_0, v72, v97, "TimerDisambiguation.determineInputType(input:) Received an unsupported parse for disambiguation window prompt: %s", v76, 0xCu);
      sub_5BB0(v96);
    }

    else
    {

      (*(v69 + 8))(v70, v71);
    }

    (*(v18 + 8))(v21, v17);
    return sub_123C4C();
  }

  (*(v18 + 96))(v21, v17);
  v39 = v94;
  v38 = v95;
  v40 = v96;
  (*(v95 + 32))(v94, v21, v96);
  if (qword_15EDB0 != -1)
  {
    swift_once();
  }

  v41 = sub_125ABC();
  sub_5B30(v41, qword_15F5D8);
  v42 = sub_125AAC();
  v43 = sub_125DFC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_0, v42, v43, "TimerDisambiguation.determineInputType(input:) Received directInvocation", v44, 2u);
  }

  v45 = sub_123D0C();
  if (!v45)
  {
    (*(v38 + 8))(v39, v40);
    v101 = 0u;
    v102 = 0u;
LABEL_46:
    sub_5CA8(&v101, &unk_161840, &qword_128110);
    return sub_123C4C();
  }

  v46 = v45;
  v48 = v91;
  v47 = v92;
  v49 = v93;
  (*(v92 + 104))(v91, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v93);
  v50 = sub_12529C();
  v52 = v51;
  (*(v47 + 8))(v48, v49);
  if (!*(v46 + 16))
  {

    goto LABEL_44;
  }

  v53 = sub_8AD8(v50, v52);
  v55 = v54;

  if ((v55 & 1) == 0)
  {
LABEL_44:

    v101 = 0u;
    v102 = 0u;
    goto LABEL_45;
  }

  sub_8B50(*(v46 + 56) + 32 * v53, &v101);

  if (!*(&v102 + 1))
  {
LABEL_45:
    (*(v38 + 8))(v39, v40);
    goto LABEL_46;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v38 + 8))(v39, v40);
    return sub_123C4C();
  }

  v57 = v99;
  v56 = v100;
  v58 = HIBYTE(v100) & 0xF;
  if ((v100 & 0x2000000000000000) == 0)
  {
    v58 = v99 & 0xFFFFFFFFFFFFLL;
  }

  if (!v58)
  {
    (*(v38 + 8))(v39, v40);

    return sub_123C4C();
  }

  v59 = sub_125AAC();
  v60 = sub_125DDC();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v101 = v62;
    *v61 = 136315138;
    v63 = sub_8530(v57, v56, &v101);

    *(v61 + 4) = v63;
    _os_log_impl(&dword_0, v59, v60, "TimerDisambiguation.determineInputType(input:) Direct invocation Timer ID: %s", v61, 0xCu);
    sub_5BB0(v62);
  }

  else
  {
  }

  sub_123C6C();
  return (*(v38 + 8))(v39, v40);
}

unint64_t sub_84CC()
{
  result = qword_15FF70;
  if (!qword_15FF70)
  {
    sub_5B68(&unk_15F1A0, &unk_126ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15FF70);
  }

  return result;
}

unint64_t sub_8530(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_85FC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_8B50(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_5BB0(v11);
  return v7;
}

unint64_t sub_85FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_8708(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_12601C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_8708(uint64_t a1, unint64_t a2)
{
  v3 = sub_8754(a1, a2);
  sub_8884(&off_157928);
  return v3;
}

void *sub_8754(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_8970(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_12601C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_125C1C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_8970(v10, 0);
        result = sub_125FDC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_8884(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_89E4(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_8970(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_5AE8(&qword_15F5F8, &unk_126F20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_89E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_5AE8(&qword_15F5F8, &unk_126F20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_8AD8(uint64_t a1, uint64_t a2)
{
  sub_12626C();
  sub_125BFC();
  v4 = sub_12628C();

  return sub_8D38(a1, a2, v4);
}

uint64_t sub_8B50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_8BAC()
{
  result = qword_160620;
  if (!qword_160620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_160620);
  }

  return result;
}

unint64_t sub_8BF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_125F9C(*(v2 + 40));

  return sub_8DF0(a1, v4);
}

unint64_t sub_8C3C(uint64_t a1)
{
  v1 = a1;
  sub_12626C();
  sub_125BFC();

  v2 = sub_12628C();

  return sub_8EB8(v1, v2);
}

unint64_t sub_8D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1261BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_8DF0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_9900(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_125FAC();
      sub_995C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_8EB8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v21 + 48) + v4);
      v7 = v6 == 2 ? 0x53736574756E696DLL : 0xD000000000000020;
      v8 = v6 == 2 ? 0xEE0073646E6F6365 : 0x800000000012C180;
      v9 = *(*(v21 + 48) + v4) ? 0x73646E6F636573 : 0x746C7561666564;
      v10 = *(*(v21 + 48) + v4) <= 1u ? v9 : v7;
      v11 = *(*(v21 + 48) + v4) <= 1u ? 0xE700000000000000 : v8;
      v12 = v5 == 2 ? 0x53736574756E696DLL : 0xD000000000000020;
      v13 = v5 == 2 ? 0xEE0073646E6F6365 : 0x800000000012C180;
      v14 = v5 ? 0x73646E6F636573 : 0x746C7561666564;
      v15 = v5 <= 1 ? v14 : v12;
      v16 = v5 <= 1 ? 0xE700000000000000 : v13;
      if (v10 == v15 && v11 == v16)
      {
        break;
      }

      v17 = sub_1261BC();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_9070(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 62)
  {
LABEL_17:
    v10 = a3;
    v11 = sub_1260FC();
    a3 = v10;
    v4 = v11;
    if (v11)
    {
LABEL_3:
      v24 = a3;
      v5 = 0;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v6 = sub_125FFC();
        }

        else
        {
          if (v5 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_16;
          }

          v6 = *(a2 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (sub_1257DC())
        {
          sub_12603C();
          sub_12607C();
          sub_12608C();
          sub_12604C();
        }

        else
        {
        }

        ++v5;
      }

      while (v8 != v4);
      v9 = _swiftEmptyArrayStorage;
      LOBYTE(a3) = v24;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v9 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
    {
      v12 = _swiftEmptyArrayStorage[2];
      if (v12 < 2)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

LABEL_26:
  v18 = a3;
  v12 = sub_1260FC();
  LOBYTE(a3) = v18;
  if (v12 < 2)
  {
LABEL_27:
    if (v12 != 1)
    {

      if (qword_15EDB0 != -1)
      {
        swift_once();
      }

      v20 = sub_125ABC();
      sub_5B30(v20, qword_15F5D8);
      v14 = sub_125AAC();
      v21 = sub_125DFC();
      if (!os_log_type_enabled(v14, v21))
      {
        v9 = 0;
        goto LABEL_38;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v14, v21, "Found multiple matching timers for disambiguation input. Re-prompting for input.", v22, 2u);
      v9 = 0;
      goto LABEL_37;
    }

    if (qword_15EDB0 != -1)
    {
      swift_once();
    }

    v19 = sub_125ABC();
    sub_5B30(v19, qword_15F5D8);
    v14 = sub_125AAC();
    v15 = sub_125DFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "Found single matching timer for disambiguation input. Using as result.";
      goto LABEL_32;
    }

    goto LABEL_38;
  }

LABEL_21:
  if ((a3 & 1) == 0)
  {
    goto LABEL_27;
  }

  if (qword_15EDB0 != -1)
  {
    swift_once();
  }

  v13 = sub_125ABC();
  sub_5B30(v13, qword_15F5D8);
  v14 = sub_125AAC();
  v15 = sub_125DFC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Found multiple matching timers and multiple quantifier was specified. Using filteredTimers for result.";
LABEL_32:
    _os_log_impl(&dword_0, v14, v15, v17, v16, 2u);
LABEL_37:
  }

LABEL_38:

  return v9;
}

uint64_t sub_93FC(uint64_t a1)
{
  v1 = sub_124F8C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_5AE8(&qword_15F5F0, &unk_12AAA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  sub_12437C();
  if (!v18)
  {
    sub_5CA8(&v17, &unk_161840, &qword_128110);
    if (qword_15EDB0 != -1)
    {
      swift_once();
    }

    v10 = sub_125ABC();
    sub_5B30(v10, qword_15F5D8);
    v11 = sub_125AAC();
    v12 = sub_125DEC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "NLv4TranslationParse: Dialog act is not a UsoTask_noVerb_common_Timer or has no target, cannot support input", v13, 2u);
    }

    return 0;
  }

  sub_99B0(&v17, v19);
  sub_8B50(v19, &v17);
  sub_12459C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_5BB0(v19);
    return 0;
  }

  sub_123F3C();

  if (!v17)
  {
    sub_5BB0(v19);

    return 0;
  }

  sub_124F7C();

  sub_12408C();

  sub_124F6C();

  (*(v2 + 8))(v4, v1);
  v8 = sub_125B4C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_5BB0(v19);

    sub_5CA8(v7, &qword_15F5F0, &unk_12AAA0);
    return 0;
  }

  sub_1257EC();
  v15 = sub_125B1C();
  sub_5BB0(v19);

  (*(v9 + 8))(v7, v8);
  if (!v15)
  {
    return 0;
  }

  return v15;
}

uint64_t sub_97EC(uint64_t a1)
{
  v2 = type metadata accessor for TimerNLv3Intent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimerNLv3Intent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_98AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TimerNLv3Intent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_99B0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for ResetTimerCATs_Async(uint64_t a1)
{
  result = qword_15F600;
  if (!qword_15F600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9A50(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_9BD8()
{
  sub_124DCC();

  return swift_deallocClassInstance();
}

__n128 sub_9C10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_9C24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_9C6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9CC4()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15F650);
  sub_5B30(v0, qword_15F650);
  return sub_1257AC();
}

uint64_t sub_9D10(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_125ABC();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_124FFC();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = sub_12501C();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = sub_123D1C();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v7 = sub_12368C();
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();
  v8 = sub_12392C();
  v2[25] = v8;
  v2[26] = *(v8 - 8);
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_9F9C, 0, 0);
}

unint64_t sub_9F9C()
{
  if (qword_15EDB8 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[10], qword_15F650);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "DeleteTimer.HandleIntentStrategy.makeIntentHandledResponse() called", v4, 2u);
  }

  sub_5AE8(&qword_15F678, &qword_127088);
  v5 = sub_123A9C();
  v6 = [v5 deletedTimers];

  if (!v6)
  {
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    v20 = v0[1];

    return v20();
  }

  sub_1257EC();
  v7 = sub_125C6C();

  sub_12391C();
  sub_12361C();
  result = sub_2BE74(v7);
  v9 = result;
  v0[28] = result;
  if (v7 >> 62)
  {
    if (sub_1260FC() == 1)
    {
      result = sub_1260FC();
      if (result)
      {
        goto LABEL_8;
      }
    }
  }

  else if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) == 1)
  {
LABEL_8:
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_125FFC();
    }

    else
    {
      if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return result;
      }

      v10 = *(v7 + 32);
    }

    v11 = v10;

    v12 = sub_113460();
    if (v12)
    {
      v13 = v12;
      v15 = v0[20];
      v14 = v0[21];
      v16 = v0[19];
      [v11 state];
      v17 = sub_1258BC();
      v18 = v17 == sub_1258BC();
      sub_CD5C(v13, v18, v14);
      sub_12386C();

      (*(v15 + 8))(v14, v16);
    }

    else
    {
    }

    goto LABEL_20;
  }

LABEL_20:
  v21 = v0[12];
  v22 = v0[10];
  v23 = v0[11];
  (*(v0[14] + 104))(v0[15], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[13]);
  (*(v23 + 16))(v21, v1, v22);
  mach_absolute_time();
  sub_12502C();
  if (v9 >> 62)
  {
    if (sub_1260FC() == 1)
    {
      goto LABEL_22;
    }
  }

  else if (*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)) == 1)
  {
LABEL_22:
    if (qword_15F038 != -1)
    {
      swift_once();
    }

    v24 = swift_task_alloc();
    v0[29] = v24;
    *v24 = v0;
    v24[1] = sub_A508;

    return sub_906A8(v9);
  }

  if (qword_15F038 != -1)
  {
    swift_once();
  }

  v26 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v25 = swift_task_alloc();
  v0[31] = v25;
  *v25 = v0;
  v25[1] = sub_A700;

  return (v26)(0xD000000000000018, 0x800000000012C630, _swiftEmptyArrayStorage);
}

uint64_t sub_A508(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[30] = v1;

  if (v1)
  {
    v4 = sub_AC2C;
  }

  else
  {
    v4 = sub_A640;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_A640()
{
  v1 = v0[3];
  v0[33] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_A9E0;
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[18];
  v6 = v0[8];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v4, v3, v5, 0);
}

uint64_t sub_A700(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[32] = v1;

  if (v1)
  {
    v4 = sub_A8DC;
  }

  else
  {
    v4 = sub_A81C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_A81C()
{
  v1 = v0[6];
  v0[33] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_A9E0;
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[18];
  v6 = v0[8];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v4, v3, v5, 0);
}

uint64_t sub_A8DC()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_A9E0()
{
  v2 = *(*v1 + 264);
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_AD30;
  }

  else
  {
    v3 = sub_AB0C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_AB0C()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = *(v0 + 128);

  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_AC2C()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_AD30()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v9 = *(v0 + 128);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_AE54(uint64_t a1, uint64_t a2)
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
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_B0BC, 0, 0);
}

uint64_t sub_B0BC()
{
  if (qword_15EDB8 != -1)
  {
    swift_once();
  }

  v24 = sub_5B30(v0[13], qword_15F650);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "DeleteTimer.HandleIntentStrategy.makeFailureHandlingIntentResponse() called", v3, 2u);
  }

  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];
  v23 = v0[13];

  sub_12361C();
  sub_12391C();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[30] = sub_124DBC();
  (*(v4 + 104))(v5, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v6);
  (*(v8 + 16))(v7, v24, v23);
  mach_absolute_time();
  sub_12502C();
  sub_5AE8(&qword_15F678, &qword_127088);
  v9 = sub_123A9C();
  v10 = sub_1255FC();

  if (v10 == 100)
  {
    v25 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v15 = swift_task_alloc();
    v0[34] = v15;
    *v15 = v0;
    v15[1] = sub_B6B4;
    v16 = 0x800000000012C5A0;
    v17 = 0xD000000000000012;
  }

  else
  {
    if (v10 == 101)
    {
      v11 = v0[12];
      v12 = swift_task_alloc();
      v0[31] = v12;
      *(v12 + 16) = v11;
      v13 = swift_task_alloc();
      v0[32] = v13;
      *v13 = v0;
      v13[1] = sub_B4BC;

      return sub_104D80(sub_CCEC, v12);
    }

    v19 = v0[28];
    v18 = v0[29];
    v20 = v0[26];
    v21 = v0[27];
    sub_12364C();
    (*(v21 + 8))(v18, v20);
    (*(v21 + 32))(v18, v19, v20);
    v25 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v22 = swift_task_alloc();
    v0[36] = v22;
    *v22 = v0;
    v22[1] = sub_B9B8;
    v16 = 0xEF726F7272652365;
    v17 = 0x73614272656D6974;
  }

  return (v25)(v17, v16, _swiftEmptyArrayStorage);
}

uint64_t sub_B4BC(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[33] = v1;

  if (v1)
  {
    v4 = sub_BF20;
  }

  else
  {
    v4 = sub_B5F4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_B5F4()
{
  v1 = v0[3];
  v0[38] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_BCBC;
  v3 = v0[29];
  v4 = v0[25];
  v5 = v0[21];
  v6 = v0[11];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_B6B4(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[35] = v1;

  if (v1)
  {
    v4 = sub_B890;
  }

  else
  {
    v4 = sub_B7D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_B7D0()
{
  v1 = v0[6];
  v0[38] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_BCBC;
  v3 = v0[29];
  v4 = v0[25];
  v5 = v0[21];
  v6 = v0[11];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_B890()
{

  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_B9B8(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v3[37] = v1;

  if (v1)
  {
    v4 = sub_BB94;
  }

  else
  {
    v4 = sub_BAD4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_BAD4()
{
  v1 = v0[9];
  v0[38] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_BCBC;
  v3 = v0[29];
  v4 = v0[25];
  v5 = v0[21];
  v6 = v0[11];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_BB94()
{

  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_BCBC()
{
  v2 = *(*v1 + 304);
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_C048;
  }

  else
  {
    v3 = sub_BDE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_BDE8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v11 = *(v0 + 208);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 168);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v11);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_BF20()
{

  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_C048()
{

  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

void sub_C17C(uint64_t a1)
{
  sub_5AE8(&qword_15F678, &qword_127088);
  v4 = sub_123ABC();
  sub_12561C();
  sub_1258DC();
  v3 = v2;

  *a1 = v3;
  *(a1 + 8) = 0;
}

uint64_t sub_C204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_5D08;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_C2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_5D08;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_C38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_503C;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_C450(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_C4F8;

  return sub_9D10(a1, a2);
}

uint64_t sub_C4F8()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_C62C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_C62C()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_C6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_5D08;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_C7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_5D08;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_C880(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_C928;

  return sub_AE54(a1, a2);
}

uint64_t sub_C928()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_CA5C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_CA5C()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_CB28(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_CBC4, 0, 0);
}

uint64_t sub_CBC4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_12532C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_A85C8(v3, v1, v2);
  sub_CCF4(v2);

  v6 = v0[1];

  return v6(v5);
}

unint64_t sub_CC98()
{
  result = qword_15F668;
  if (!qword_15F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15F668);
  }

  return result;
}

uint64_t sub_CCF4(uint64_t a1)
{
  v2 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_CD5C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v45 = a3;
  v41 = sub_1252AC();
  v4 = *(v41 - 8);
  v5 = __chkstk_darwin(v41);
  v43 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v42 = &v35 - v8;
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v11 = sub_1252CC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_122E2C();
  swift_allocObject();
  sub_122E1C();
  v46 = a1;
  sub_124BDC();
  sub_E3C4();
  v15 = sub_122E0C();
  v40 = v16;

  (*(v12 + 104))(v14, enum case for DirectInvocationUtils.Timer.URI.undo(_:), v11);
  v39 = sub_1252BC();
  v38 = v17;
  (*(v12 + 8))(v14, v11);
  sub_5AE8(&qword_15F680, &unk_129D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1270B0;
  v19 = *(v4 + 104);
  v20 = v41;
  v19(v10, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v41);
  v21 = sub_12529C();
  v23 = v22;
  v24 = *(v4 + 8);
  v24(v10, v20);
  v36 = v24;
  *(inited + 32) = v21;
  v37 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v23;
  *(inited + 48) = 0x657461657263;
  *(inited + 56) = 0xE600000000000000;
  v25 = v42;
  v19(v42, enum case for DirectInvocationUtils.Timer.UserInfoKey.usoEntity(_:), v20);
  v26 = sub_12529C();
  v28 = v27;
  v24(v25, v20);
  *(inited + 80) = v26;
  *(inited + 88) = v28;
  *(inited + 120) = sub_5AE8(&qword_15F6C8, &qword_1270F8);
  v29 = v40;
  *(inited + 96) = v15;
  *(inited + 104) = v29;
  v30 = v43;
  v19(v43, enum case for DirectInvocationUtils.Timer.UserInfoKey.paused(_:), v20);
  sub_E41C(v15, v29);
  v31 = sub_12529C();
  v33 = v32;
  v36(v30, v20);
  *(inited + 128) = v31;
  *(inited + 136) = v33;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = v44 & 1;
  sub_DBD0(inited);
  swift_setDeallocating();
  sub_5AE8(&qword_15F688, &qword_1270D0);
  swift_arrayDestroy();
  sub_123CEC();
  return sub_E484(v15, v29);
}

uint64_t sub_D1F0@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v33 = a4;
  v4 = sub_1252AC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v29 - v9;
  v11 = sub_1252CC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, enum case for DirectInvocationUtils.Timer.URI.disambiguation(_:), v11);
  v29[2] = sub_1252BC();
  v29[1] = v15;
  (*(v12 + 8))(v14, v11);
  sub_5AE8(&qword_15F680, &unk_129D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1270C0;
  v17 = *(v5 + 104);
  v17(v10, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v4);
  v18 = sub_12529C();
  v20 = v19;
  v21 = *(v5 + 8);
  v21(v10, v4);
  *(inited + 32) = v18;
  *(inited + 40) = v20;
  v22 = sub_B6264(v30);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v22;
  *(inited + 56) = v23;
  v17(v8, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v4);
  v24 = sub_12529C();
  v26 = v25;
  v21(v8, v4);
  *(inited + 80) = v24;
  *(inited + 88) = v26;
  *(inited + 120) = &type metadata for String;
  v27 = v32;
  *(inited + 96) = v31;
  *(inited + 104) = v27;

  sub_DBD0(inited);
  swift_setDeallocating();
  sub_5AE8(&qword_15F688, &qword_1270D0);
  swift_arrayDestroy();
  return sub_123CEC();
}

uint64_t sub_D510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a3;
  v30 = a1;
  v31 = a2;
  v32 = a4;
  v4 = sub_1252AC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v28 - v9;
  v11 = sub_1252CC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, enum case for DirectInvocationUtils.Timer.URI.undo(_:), v11);
  v28[2] = sub_1252BC();
  v28[1] = v15;
  (*(v12 + 8))(v14, v11);
  sub_5AE8(&qword_15F680, &unk_129D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1270C0;
  v17 = *(v5 + 104);
  v17(v10, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v4);
  v18 = sub_12529C();
  v20 = v19;
  v21 = *(v5 + 8);
  v21(v10, v4);
  *(inited + 32) = v18;
  *(inited + 72) = &type metadata for String;
  v22 = v29;
  *(inited + 40) = v20;
  *(inited + 48) = v22;
  *(inited + 56) = 0xE600000000000000;
  v17(v8, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v4);
  v23 = sub_12529C();
  v25 = v24;
  v21(v8, v4);
  *(inited + 80) = v23;
  *(inited + 88) = v25;
  *(inited + 120) = &type metadata for String;
  v26 = v31;
  *(inited + 96) = v30;
  *(inited + 104) = v26;

  sub_DBD0(inited);
  swift_setDeallocating();
  sub_5AE8(&qword_15F688, &qword_1270D0);
  swift_arrayDestroy();
  return sub_123CEC();
}

uint64_t sub_D80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v37 = a2;
  v36 = a1;
  v38 = a3;
  v5 = sub_1252AC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v35 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v34 - v10;
  __chkstk_darwin(v9);
  v13 = v34 - v12;
  v14 = sub_1252CC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v17, enum case for DirectInvocationUtils.Timer.URI.undo(_:), v14);
  v34[2] = sub_1252BC();
  v34[1] = v18;
  (*(v15 + 8))(v17, v14);
  sub_5AE8(&qword_15F680, &unk_129D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1270B0;
  v20 = *(v6 + 104);
  v20(v13, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v5);
  v21 = sub_12529C();
  v23 = v22;
  v24 = *(v6 + 8);
  v24(v13, v5);
  *(inited + 32) = v21;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v23;
  *(inited + 48) = 0x6573756170;
  *(inited + 56) = 0xE500000000000000;
  v20(v11, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v5);
  v25 = sub_12529C();
  v27 = v26;
  v24(v11, v5);
  *(inited + 80) = v25;
  *(inited + 88) = v27;
  *(inited + 120) = &type metadata for String;
  v28 = v37;
  *(inited + 96) = v36;
  *(inited + 104) = v28;
  v29 = v35;
  v20(v35, enum case for DirectInvocationUtils.Timer.UserInfoKey.duration(_:), v5);

  v30 = sub_12529C();
  v32 = v31;
  v24(v29, v5);
  *(inited + 128) = v30;
  *(inited + 136) = v32;
  *(inited + 168) = &type metadata for Double;
  *(inited + 144) = a4;
  sub_DBD0(inited);
  swift_setDeallocating();
  sub_5AE8(&qword_15F688, &qword_1270D0);
  swift_arrayDestroy();
  return sub_123CEC();
}

unint64_t sub_DBD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5AE8(&qword_15F690, &qword_1270D8);
    v3 = sub_12612C();
    v4 = a1 + 32;

    while (1)
    {
      sub_E344(v4, &v13, &qword_15F688, &qword_1270D0);
      v5 = v13;
      v6 = v14;
      result = sub_8AD8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_99B0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_DD00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5AE8(&qword_15F6A8, &unk_129D30);
    v3 = sub_12612C();
    v4 = a1 + 32;

    while (1)
    {
      sub_E344(v4, v13, &qword_15F6A0, &qword_1270E8);
      result = sub_8BF8(v13);
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
      result = sub_99B0(&v15, (v3[7] + 32 * result));
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

id sub_DE3C(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v34 = a2;
  v33 = a1;
  v3 = sub_1252AC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = sub_1252CC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for DirectInvocationUtils.Timer.URI.disambiguation(_:), v10);
  sub_1252BC();
  (*(v11 + 8))(v13, v10);
  v14 = objc_allocWithZone(SKIDirectInvocationPayload);
  v15 = sub_125B8C();

  v32 = [v14 initWithIdentifier:v15];

  sub_5AE8(&qword_15F698, &qword_1270E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1270C0;
  v17 = *(v4 + 104);
  v17(v9, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v3);
  v18 = sub_12529C();
  v20 = v19;
  v21 = *(v4 + 8);
  v21(v9, v3);
  v36 = v18;
  v37 = v20;
  sub_125FBC();
  v22 = sub_B6264(v33);
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v22;
  *(inited + 80) = v23;
  v17(v7, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v3);
  v24 = sub_12529C();
  v26 = v25;
  v21(v7, v3);
  v36 = v24;
  v37 = v26;
  sub_125FBC();
  *(inited + 168) = &type metadata for String;
  v27 = v35;
  *(inited + 144) = v34;
  *(inited + 152) = v27;

  sub_DD00(inited);
  swift_setDeallocating();
  sub_5AE8(&qword_15F6A0, &qword_1270E8);
  swift_arrayDestroy();
  isa = sub_125B5C().super.isa;

  v29 = v32;
  [v32 setUserData:isa];

  return v29;
}

unint64_t sub_E210(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5AE8(&qword_15F6B0, &unk_129760);
    v3 = sub_12612C();
    v4 = a1 + 32;

    while (1)
    {
      sub_E344(v4, &v13, &qword_15F6B8, &qword_1270F0);
      v5 = v13;
      v6 = v14;
      result = sub_8AD8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_E3AC(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
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

uint64_t sub_E344(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5AE8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_E3AC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t sub_E3C4()
{
  result = qword_15F6C0;
  if (!qword_15F6C0)
  {
    sub_124BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15F6C0);
  }

  return result;
}

uint64_t sub_E41C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_E430(a1, a2);
  }

  return a1;
}

uint64_t sub_E430(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_E484(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_E498(a1, a2);
  }

  return a1;
}

uint64_t sub_E498(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

__n128 sub_E4EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_E4F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_E540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_E58C()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15F6D0);
  sub_5B30(v0, qword_15F6D0);
  return sub_1257AC();
}

uint64_t sub_E5D8()
{
  v0 = sub_124FDC();
  sub_5BFC(v0, qword_1674E0);
  v1 = sub_5B30(v0, qword_1674E0);
  v2 = enum case for SiriTimeEventSender.TaskType.createTimerIntent(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_E660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
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

  return _swift_task_switch(sub_E994, 0, 0);
}

uint64_t sub_E994()
{
  if (qword_15EDC0 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[11], qword_15F6D0);
  v0[26] = v1;
  v30 = v1;
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "In UnsupportedDateTimerFlow execute()", v4, 2u);
  }

  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];

  (*(v5 + 104))(v6, enum case for ActivityType.failed(_:), v7);
  if (qword_15EDC8 != -1)
  {
    swift_once();
  }

  v8 = v0[24];
  v9 = v0[22];
  v24 = v0[25];
  v25 = v0[23];
  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[15];
  v26 = v0[16];
  v27 = v0[14];
  v28 = v0[13];
  v13 = v0[12];
  v29 = v0[11];
  v14 = sub_124FDC();
  sub_5B30(v14, qword_1674E0);
  v15 = enum case for SiriKitReliabilityCodes.unsupportedParameter(_:);
  v16 = sub_12353C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v9, v15, v16);
  (*(v17 + 56))(v9, 0, 1, v16);
  v18 = sub_124FEC();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = enum case for SiriTimeEventSender.ReasonDescription.timerDurationTooLong(_:);
  v20 = sub_124FCC();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v11, v19, v20);
  (*(v21 + 56))(v11, 0, 1, v20);
  sub_124FBC();
  sub_5CA8(v11, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v10, &qword_15F6F0, &unk_128340);
  sub_5CA8(v9, &qword_15F6F8, &qword_1271D0);
  (*(v8 + 8))(v24, v25);
  (*(v12 + 104))(v26, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v27);
  (*(v13 + 16))(v28, v30, v29);
  mach_absolute_time();
  sub_12502C();
  v31 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v22 = swift_task_alloc();
  v0[27] = v22;
  *v22 = v0;
  v22[1] = sub_EDE0;

  return (v31)(0xD000000000000020, 0x800000000012C650, _swiftEmptyArrayStorage);
}

uint64_t sub_EDE0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = sub_F280;
  }

  else
  {
    *(v4 + 232) = a1;
    v5 = sub_EF08;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_EF08(uint64_t a1)
{
  sub_12361C();
  sub_12391C();
  v2 = swift_task_alloc();
  v1[30] = v2;
  *v2 = v1;
  v2[1] = sub_EFC4;
  v3 = v1[19];
  v4 = v1[10];
  v5 = v1[7];
  v6 = v1[3];

  return PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)(v6, v4, v5, v3);
}

uint64_t sub_EFC4()
{
  v1 = *(*v0 + 232);
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

uint64_t sub_F198()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_F280()
{
  v12 = v0;
  (*(v0[18] + 8))(v0[19], v0[17]);
  swift_errorRetain();
  v1 = sub_125AAC();
  v2 = sub_125DEC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[28];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[2] = v3;
    swift_errorRetain();
    sub_5AE8(&qword_15F670, &qword_127080);
    v6 = sub_125BAC();
    v8 = sub_8530(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v1, v2, "Failed to execute DialogEngine: %s", v4, 0xCu);
    sub_5BB0(v5);
  }

  else
  {
  }

  sub_12383C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_F4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_4EA0;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_F588(uint64_t a1)
{
  v4 = *(v1 + 8);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_503C;

  return sub_E660(a1, v5, v4);
}

uint64_t sub_F630()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15F700);
  sub_5B30(v0, qword_15F700);
  return sub_1257AC();
}

id sub_F67C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return v1;
}

unint64_t sub_F6F8(void *a1, char a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v6 = v5;
  LOBYTE(v8) = a2;
  sub_12524C();
  sub_12523C();
  sub_12522C();

  *(v5 + 72) = 0xD00000000000001CLL;
  *(v5 + 80) = 0x800000000012C7C0;
  if (qword_15EDD0 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v10 = sub_125ABC();
    sub_5B30(v10, qword_15F700);
    v11 = sub_125AAC();
    v12 = sub_125DFC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "SearchTimer.ResultSetProvider init", v13, 2u);
    }

    *(v6 + 64) = a1;
    *(v6 + 112) = v8 & 1;
    v14 = a4 >> 62 ? sub_1260FC() : *(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8));
    v15 = a1;
    v16 = v15;
    if (!v14)
    {
      break;
    }

    v47 = v15;
    v48 = v6;
    v8 = 0;
    v6 = a4 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v17 = sub_125FFC();
      }

      else
      {
        if (v8 >= *(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_38;
        }

        v17 = *(a4 + 8 * v8 + 32);
      }

      v18 = v17;
      v19 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [v17 state];
      v20 = sub_1258BC();
      if (v20 == sub_1258BC())
      {
        sub_12603C();
        a1 = _swiftEmptyArrayStorage[2];
        sub_12607C();
        sub_12608C();
        sub_12604C();
      }

      else
      {
      }

      ++v8;
      if (v19 == v14)
      {
        v16 = v47;
        v6 = v48;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

LABEL_18:

  *(v6 + 104) = a5;

  v21 = [v16 includeRemoteTimers];
  sub_8BAC();
  v22.super.super.isa = sub_125EEC(1).super.super.isa;
  isa = v22.super.super.isa;
  if (v21)
  {
    v24 = sub_125F0C();

    if (v24)
    {
      v25 = v16;

      v26 = sub_125AAC();
      v27 = sub_125DFC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134217984;
        if (a5 >> 62)
        {
          v29 = sub_1260FC();
        }

        else
        {
          v29 = *(&dword_10 + (a5 & 0xFFFFFFFFFFFFFF8));
        }

        *(v28 + 4) = v29;

        _os_log_impl(&dword_0, v26, v27, "Using %ld remote timers for matched timers", v28, 0xCu);
      }

      else
      {
      }

      *(v6 + 88) = a5;
      *(v6 + 104) = _swiftEmptyArrayStorage;

      *(v6 + 56) = a5;

      *(v6 + 96) = _swiftEmptyArrayStorage;
      return v6;
    }
  }

  else
  {
  }

  if (a3 >> 62)
  {
    if (sub_1260FC())
    {
      goto LABEL_27;
    }
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_27:

LABEL_28:

    v30 = sub_125AAC();
    v31 = sub_125DFC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v6;
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      if (a3 >> 62)
      {
        v34 = sub_1260FC();
      }

      else
      {
        v34 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
      }

      *(v33 + 4) = v34;

      _os_log_impl(&dword_0, v30, v31, "Using %ld matched for results", v33, 0xCu);

      v6 = v32;
      v35 = a3;
    }

    else
    {

      v35 = a3;
    }

    *(v6 + 56) = v35;
    *(v6 + 88) = v35;
    *(v6 + 96) = _swiftEmptyArrayStorage;

    return v6;
  }

  if (a5 >> 62)
  {
    if (sub_1260FC() == 1)
    {
      goto LABEL_44;
    }
  }

  else if (*(&dword_10 + (a5 & 0xFFFFFFFFFFFFFF8)) == 1)
  {
LABEL_44:
    v36 = v16;

    v37 = sub_125AAC();
    v38 = sub_125DFC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v6;
      v40 = swift_slowAlloc();
      *v40 = 134217984;
      if (a5 >> 62)
      {
        v41 = sub_1260FC();
      }

      else
      {
        v41 = *(&dword_10 + (a5 & 0xFFFFFFFFFFFFFF8));
      }

      *(v40 + 4) = v41;

      _os_log_impl(&dword_0, v37, v38, "Matched are empty; single otherRemoteTimers – using %ld remote timers for results", v40, 0xCu);

      v6 = v39;
    }

    else
    {
    }

    *(v6 + 56) = a5;
    *(v6 + 88) = a5;

    *(v6 + 96) = _swiftEmptyArrayStorage;
    return v6;
  }

  if (!v14)
  {
    goto LABEL_28;
  }

  v42 = sub_125AAC();
  v43 = sub_125DFC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134217984;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      v45 = sub_1260FC();
    }

    else
    {
      v45 = _swiftEmptyArrayStorage[2];
    }

    *(v44 + 4) = v45;

    _os_log_impl(&dword_0, v42, v43, "Matched are empty; using %ld unmatchedRunningTimers for results", v44, 0xCu);
  }

  else
  {
  }

  *(v6 + 56) = _swiftEmptyArrayStorage;

  *(v6 + 88) = _swiftEmptyArrayStorage;
  *(v6 + 96) = _swiftEmptyArrayStorage;
  return v6;
}

id sub_FE18()
{
  result = [*(v0 + 64) duration];
  if (result)
  {
    v2 = result;
    [result doubleValue];
    v4 = v3;

    [objc_opt_self() defaultDuration];
    result = 0;
    if (v4 != v5)
    {
      sub_124D6C();
      swift_allocObject();
      sub_124D5C();
      sub_124D4C();

      v6 = sub_124D3C();

      return v6;
    }
  }

  return result;
}

uint64_t sub_FF00()
{
  v1 = v0[4];
  sub_123ACC();
  sub_12394C();
  swift_allocObject();
  sub_12393C();
  v2 = sub_1232DC();
  swift_allocObject();
  v3 = sub_1232CC();
  v0[5] = v3;
  v0[2] = v3;
  v0[3] = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = _s17ResultSetProviderCMa();
  v7 = sub_23BBC(&qword_15F948, v6, _s17ResultSetProviderCMa, &unk_127348);
  *v4 = v0;
  v4[1] = sub_10070;

  return PatternFlowProviding.makeResultSetFlow<A>(provider:)(v0 + 3, v2, v5, &protocol witness table for PatternFlowProvider, v7);
}

uint64_t sub_10070(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 56) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_101D4, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_101EC()
{
  v1[13] = v0;
  v2 = sub_123B3C();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = sub_12392C();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v4 = sub_12368C();
  v1[20] = v4;
  v1[21] = *(v4 - 8);
  v1[22] = swift_task_alloc();
  sub_124EDC();
  v1[23] = swift_task_alloc();
  v5 = sub_1250BC();
  v1[24] = v5;
  v1[25] = *(v5 - 8);
  v1[26] = swift_task_alloc();
  v6 = sub_125ABC();
  v1[27] = v6;
  v1[28] = *(v6 - 8);
  v1[29] = swift_task_alloc();
  v7 = sub_124FFC();
  v1[30] = v7;
  v1[31] = *(v7 - 8);
  v1[32] = swift_task_alloc();
  v8 = sub_12501C();
  v1[33] = v8;
  v1[34] = *(v8 - 8);
  v1[35] = swift_task_alloc();

  return _swift_task_switch(sub_10500, 0, 0);
}

uint64_t sub_10500()
{
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v24 = sub_5B30(v0[27], qword_15F700);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "SearchTimer.ResultSetProvider makeEmptyResultSetFlow", v3, 2u);
  }

  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[25];
  v11 = v0[26];
  v23 = v0[24];

  (*(v5 + 104))(v4, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v6);
  (*(v8 + 16))(v7, v24, v9);
  mach_absolute_time();
  sub_12502C();
  sub_1250AC();
  LOBYTE(v8) = sub_12506C();
  (*(v10 + 8))(v11, v23);
  if (v8)
  {
    v12 = *(v0[13] + 104);
    if (v12 >> 62)
    {
      if (sub_1260FC())
      {
        goto LABEL_8;
      }
    }

    else if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_8:
      type metadata accessor for TimerBaseCATsSimple(0);
      sub_124ECC();
      v0[36] = sub_124E7C();
      v25 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
      v13 = swift_task_alloc();
      v0[37] = v13;
      *v13 = v0;
      v13[1] = sub_108D8;
      v14 = _swiftEmptyArrayStorage;
      v15 = 0xD000000000000016;
      v16 = 0x800000000012C9E0;
      goto LABEL_11;
    }
  }

  v17 = v0[13];
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[41] = sub_124DBC();
  v0[12] = *(v17 + 64);
  sub_12568C();
  sub_1258DC();
  v19 = v18;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v20 = swift_allocObject();
  *(v20 + 32) = 0xD000000000000011;
  *(v20 + 40) = 0x800000000012C9C0;
  *(v20 + 72) = &type metadata for Double;
  v25 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v0[42] = v20;
  *(v20 + 16) = xmmword_126CB0;
  *(v20 + 48) = v19;
  v21 = swift_task_alloc();
  v0[43] = v21;
  *v21 = v0;
  v21[1] = sub_10EB8;
  v15 = 0xD000000000000012;
  v16 = 0x800000000012C9A0;
  v14 = v20;
LABEL_11:

  return (v25)(v15, v16, v14);
}

uint64_t sub_108D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v5 = sub_10DC8;
  }

  else
  {

    *(v4 + 312) = a1;
    v5 = sub_10A08;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10A08(uint64_t a1)
{
  sub_12361C();
  sub_12391C();
  v2 = swift_task_alloc();
  v1[40] = v2;
  *v2 = v1;
  v2[1] = sub_10AD4;
  v3 = v1[35];
  v4 = v1[22];
  v5 = v1[19];

  return DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(v1 + 7, v4, v5, v3, 0, 0, 0, 0);
}

uint64_t sub_10AD4()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);
  v5 = *(*v0 + 152);
  v6 = *(*v0 + 144);
  v7 = *(*v0 + 136);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10CA8, 0, 0);
}

uint64_t sub_10CA8()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  sub_23B08(v0 + 7, v0[10]);
  v4 = sub_123D4C();
  (*(v2 + 8))(v1, v3);
  sub_5BB0(v0 + 7);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_10DC8()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[34];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10EB8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v5 = sub_11258;
  }

  else
  {
    *(v4 + 360) = a1;

    v5 = sub_10FE8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10FE8()
{

  sub_12361C();
  sub_123B0C();
  v1 = swift_task_alloc();
  v0[46] = v1;
  *v1 = v0;
  v1[1] = sub_110C8;
  v2 = v0[35];
  v3 = v0[16];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v0 + 2, v3, v2);
}

uint64_t sub_110C8()
{
  v2 = *(*v1 + 360);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  *(*v1 + 376) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v6 = sub_11474;
  }

  else
  {
    v6 = sub_11354;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_11258()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_11354()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  sub_23B08(v0 + 2, v0[5]);
  v4 = sub_123D4C();
  (*(v2 + 8))(v1, v3);
  sub_5BB0(v0 + 2);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_11474()
{
  (*(v0[34] + 8))(v0[35], v0[33]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_11558()
{
  v1[68] = v0;
  v2 = sub_123B3C();
  v1[69] = v2;
  v1[70] = *(v2 - 8);
  v1[71] = swift_task_alloc();
  v3 = sub_12503C();
  v1[72] = v3;
  v1[73] = *(v3 - 8);
  v1[74] = swift_task_alloc();
  v1[75] = type metadata accessor for SearchForTimersHandledOtherMultiParameters(0);
  v1[76] = swift_task_alloc();
  sub_5AE8(&unk_15F170, &unk_126E00);
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v4 = sub_125ABC();
  v1[97] = v4;
  v1[98] = *(v4 - 8);
  v1[99] = swift_task_alloc();
  v5 = sub_124FFC();
  v1[100] = v5;
  v1[101] = *(v5 - 8);
  v1[102] = swift_task_alloc();
  v6 = sub_12501C();
  v1[103] = v6;
  v1[104] = *(v6 - 8);
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v7 = sub_1250BC();
  v1[109] = v7;
  v1[110] = *(v7 - 8);
  v1[111] = swift_task_alloc();
  v8 = sub_12392C();
  v1[112] = v8;
  v1[113] = *(v8 - 8);
  v1[114] = swift_task_alloc();
  v9 = sub_12368C();
  v1[115] = v9;
  v1[116] = *(v9 - 8);
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();

  return _swift_task_switch(sub_11A18, 0, 0);
}

uint64_t sub_11A18()
{
  v2 = *(v0 + 544);
  v3 = *(v2 + 56);
  if (v3 >> 62)
  {
    if (sub_1260FC())
    {
LABEL_3:
      if ((v3 & 0xC000000000000001) != 0)
      {

        v4 = sub_125FFC();
      }

      else
      {
        if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_58:
          swift_once();
LABEL_44:
          v56 = *(v0 + 608);
          v57 = *(v0 + 600);

          v59 = sub_2BE74(v58);

          v60 = v57[14];
          v61 = sub_124E4C();
          v62 = *(*(v61 - 8) + 56);
          v63 = 1;
          v62(v56 + v60, 1, 1, v61);
          v77 = v57[16];
          v62(v56 + v77, 1, 1, v61);
          v78 = v57[17];
          v62(v56 + v78, 1, 1, v61);
          *v56 = 1;
          *(v56 + 8) = 0;
          *(v56 + 16) = 1;
          *(v56 + 24) = 0;
          *(v56 + 32) = v1;
          *(v56 + 33) = 65792;
          *(v56 + 40) = v59;
          *(v56 + 48) = 0;
          *(v56 + 56) = 1;
          v64 = v57[15];
          *(v56 + v64) = 0;
          v65 = v56 + v57[18];
          *v65 = 0;
          v79 = v65;
          *(v65 + 8) = 1;
          v66 = v56 + v57[19];
          *v66 = 0;
          *(v66 + 8) = 1;
          v67 = [v81 label];
          if (v67)
          {
            v68 = v67;
            sub_125B9C();

            sub_125BCC();

            v63 = 0;
          }

          v69 = *(v0 + 720);
          v70 = *(v0 + 712);
          v62(v69, v63, 1, v61);
          sub_22A1C(v69, v56 + v77);
          *(v56 + v64) = sub_FE18();
          [v81 type];
          sub_12588C();
          v62(v70, 0, 1, v61);
          sub_22A1C(v70, v56 + v78);
          [v81 state];
          sub_1258AC();
          v62(v70, 0, 1, v61);
          sub_22A1C(v70, v56 + v60);
          v71 = *(v80 + 56);
          if (v71 >> 62)
          {
            v72 = sub_1260FC();
          }

          else
          {
            v72 = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8));
          }

          *v79 = v72;
          *(v79 + 8) = 0;
          *(v56 + 24) = 0;
          v73 = sub_AD73C();
          *(v0 + 1056) = v73;
          v82 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
          v74 = swift_task_alloc();
          *(v0 + 1064) = v74;
          *v74 = v0;
          v74[1] = sub_14104;

          return v82(0xD000000000000021, 0x800000000012C7E0, v73);
        }

        v4 = *(v3 + 32);
      }

      *(v0 + 952) = v4;
      if (qword_15EDD0 != -1)
      {
        swift_once();
      }

      v5 = sub_5B30(*(v0 + 776), qword_15F700);
      *(v0 + 960) = v5;
      v6 = sub_125AAC();
      v7 = sub_125DFC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_0, v6, v7, "SearchTimer.ResultSetProvider makeSingleItemFlow", v8, 2u);
      }

      v9 = *(v0 + 912);
      v10 = *(v0 + 544);

      sub_12361C();
      sub_5AE8(&qword_160810, &unk_127420);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_126EB0;
      *(inited + 32) = v4;
      v12 = v4;
      sub_FF26C(inited, v9);
      swift_setDeallocating();
      swift_arrayDestroy();
      v13 = *(v10 + 88);
      if (v13 >> 62)
      {
        v14 = sub_1260FC();
      }

      else
      {
        v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
      }

      v15 = sub_125AAC();
      v16 = sub_125DFC();
      v17 = os_log_type_enabled(v15, v16);
      if (v14)
      {
        if (v17)
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_0, v15, v16, "SearchTimer.ResultSetProvider makeSingleItemFlow for matched timer", v18, 2u);
        }

        v19 = *(v0 + 888);
        v20 = *(v0 + 880);
        v21 = *(v0 + 872);

        sub_1250AC();
        v22 = sub_12504C();
        (*(v20 + 8))(v19, v21);
        if (v22)
        {
          v23 = sub_125AAC();
          v24 = sub_125DFC();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&dword_0, v23, v24, "[SearchTimer.ResultSetProvider.makeSingleItemFlow] Using multi-timer RF 2.0 path.", v25, 2u);
          }

          sub_12573C();
          sub_12572C();
          v26 = *(v0 + 120);
          v27 = *(v0 + 128);
          sub_23B08((v0 + 96), v26);
          v28 = [v12 identifier];
          if (v28)
          {
            v29 = v28;
            v30 = sub_125B9C();
            v32 = v31;
          }

          else
          {
            v30 = 0;
            v32 = 0;
          }

          *(v0 + 1104) = v32;
          v51 = swift_task_alloc();
          *(v0 + 1112) = v51;
          *v51 = v0;
          v52 = sub_149A4;
        }

        else
        {
          sub_12573C();
          sub_12572C();
          v26 = *(v0 + 80);
          v27 = *(v0 + 88);
          sub_23B08((v0 + 56), v26);
          v44 = [v12 identifier];
          if (v44)
          {
            v45 = v44;
            v30 = sub_125B9C();
            v32 = v46;
          }

          else
          {
            v30 = 0;
            v32 = 0;
          }

          *(v0 + 1264) = v32;
          v51 = swift_task_alloc();
          *(v0 + 1272) = v51;
          *v51 = v0;
          v52 = sub_17698;
        }

LABEL_39:
        v51[1] = v52;

        return dispatch thunk of SessionManaging.sessionIDString(for:)(v30, v32, v26, v27);
      }

      if (v17)
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_0, v15, v16, "SearchTimer.ResultSetProvider makeSingleItemFlow for unmatched timer", v33, 2u);
      }

      v34 = *(v0 + 888);
      v35 = *(v0 + 880);
      v36 = *(v0 + 872);

      sub_1250AC();
      v37 = sub_12504C();
      (*(v35 + 8))(v34, v36);
      if (v37)
      {
        v38 = sub_125AAC();
        v39 = sub_125DFC();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_0, v38, v39, "[SearchTimer.ResultSetProvider.makeSingleItemFlow] Using multi-timer RF 2.0 path", v40, 2u);
        }

        sub_12573C();
        sub_12572C();
        v26 = *(v0 + 320);
        v27 = *(v0 + 328);
        sub_23B08((v0 + 296), v26);
        v41 = [v12 identifier];
        if (v41)
        {
          v42 = v41;
          v30 = sub_125B9C();
          v32 = v43;
        }

        else
        {
          v30 = 0;
          v32 = 0;
        }

        *(v0 + 968) = v32;
        v51 = swift_task_alloc();
        *(v0 + 976) = v51;
        *v51 = v0;
        v52 = sub_1278C;
        goto LABEL_39;
      }

      v81 = *(*(v0 + 544) + 64);
      v47 = [v81 allAvailableTargets];
      v80 = v2;
      if (v47)
      {
        v48 = v47;
        sub_1256DC();
        v49 = sub_125C6C();

        if (v49 >> 62)
        {
          v50 = sub_1260FC();
        }

        else
        {
          v50 = *(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8));
        }

        v1 = v50 > 1;
      }

      else
      {
        v1 = 0;
      }

      v53 = *(v0 + 792);
      v54 = *(v0 + 784);
      v55 = *(v0 + 776);
      (*(*(v0 + 808) + 104))(*(v0 + 816), enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), *(v0 + 800));
      (*(v54 + 16))(v53, v5, v55);
      mach_absolute_time();
      sub_12502C();
      if (qword_15F078 == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_58;
    }
  }

  else if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  *(v0 + 1352) = 0;
  sub_5AE8(&unk_15F1A0, &unk_126ED0);
  sub_5C60(&qword_15FF70, &unk_15F1A0, &unk_126ED0, &unk_1293F0);
  swift_allocError();
  sub_1251BC();
  swift_willThrow();

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_1278C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 984) = a1;
  *(v3 + 992) = a2;

  return _swift_task_switch(sub_128B0, 0, 0);
}

uint64_t sub_128B0()
{
  v1 = v0[120];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  sub_5BB0(v0 + 37);
  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v4);
  (*(v6 + 16))(v5, v1, v7);
  mach_absolute_time();
  sub_12502C();
  if (qword_15F070 != -1)
  {
    swift_once();
  }

  v8 = v0[68];

  v45 = sub_2BE74(v9);

  v10 = *(v8 + 64);
  v11 = [v10 label];
  if (v11)
  {
    v12 = v11;
    sub_125B9C();

    sub_125BCC();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v0[96];
  v15 = v0[95];
  v16 = v0[94];
  v17 = v0[68];
  v18 = sub_124E4C();
  v46 = *(v18 - 8);
  v19 = *(v46 + 56);
  v19(v14, v13, 1, v18);
  v20 = sub_FE18();
  v0[125] = v20;
  [v10 type];
  sub_12588C();
  v19(v15, 0, 1, v18);
  [v10 state];
  sub_1258AC();
  v19(v16, 0, 1, v18);
  v21 = *(v17 + 56);
  if (v21 >> 62)
  {
    v22 = sub_1260FC();
  }

  else
  {
    v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
  }

  v23 = v0[96];
  v24 = v0[93];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v25 = swift_allocObject();
  v0[126] = v25;
  *(v25 + 16) = xmmword_1271F0;
  *(v25 + 32) = 0x736D657469;
  *(v25 + 40) = 0xE500000000000000;
  v26 = sub_5AE8(&qword_15F928, &unk_127400);
  *(v25 + 48) = v45;
  *(v25 + 72) = v26;
  *(v25 + 80) = 0xD000000000000013;
  *(v25 + 88) = 0x800000000012C810;
  sub_23A98(v23, v24);
  v27 = *(v46 + 48);
  v28 = v27(v24, 1, v18);
  v29 = v0[93];
  if (v28 == 1)
  {
    sub_5CA8(v0[93], &unk_15F170, &unk_126E00);
    *(v25 + 96) = 0u;
    *(v25 + 112) = 0u;
  }

  else
  {
    *(v25 + 120) = v18;
    v30 = sub_23B4C((v25 + 96));
    (*(v46 + 32))(v30, v29, v18);
  }

  *(v25 + 128) = 0xD000000000000016;
  *(v25 + 136) = 0x800000000012C830;
  if (v20)
  {
    v31 = sub_124D7C();
    v32 = v20;
  }

  else
  {
    v32 = 0;
    v31 = 0;
    *(v25 + 152) = 0;
    *(v25 + 160) = 0;
  }

  v33 = v0[95];
  v34 = v0[92];
  *(v25 + 144) = v32;
  *(v25 + 168) = v31;
  strcpy((v25 + 176), "requestedType");
  *(v25 + 190) = -4864;
  sub_23A98(v33, v34);
  v35 = v27(v34, 1, v18);
  v36 = v0[92];
  if (v35 == 1)
  {

    sub_5CA8(v36, &unk_15F170, &unk_126E00);
    *(v25 + 192) = 0u;
    *(v25 + 208) = 0u;
  }

  else
  {
    *(v25 + 216) = v18;
    v37 = sub_23B4C((v25 + 192));
    (*(v46 + 32))(v37, v36, v18);
  }

  v38 = v0[94];
  v39 = v0[91];
  strcpy((v25 + 224), "requestedState");
  *(v25 + 239) = -18;
  sub_23A98(v38, v39);
  v40 = v27(v39, 1, v18);
  v41 = v0[91];
  if (v40 == 1)
  {
    sub_5CA8(v0[91], &unk_15F170, &unk_126E00);
    *(v25 + 240) = 0u;
    *(v25 + 256) = 0u;
  }

  else
  {
    *(v25 + 264) = v18;
    v42 = sub_23B4C((v25 + 240));
    (*(v46 + 32))(v42, v41, v18);
  }

  *(v25 + 272) = 0x6574496C61746F74;
  *(v25 + 280) = 0xEA0000000000736DLL;
  *(v25 + 312) = &type metadata for Double;
  *(v25 + 320) = 0x676E6970756F7267;
  *(v25 + 328) = 0xE800000000000000;
  v47 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v25 + 288) = v22;
  *(v25 + 336) = 0u;
  *(v25 + 352) = 0u;
  v43 = swift_task_alloc();
  v0[127] = v43;
  *v43 = v0;
  v43[1] = sub_12EC8;

  return v47(0xD00000000000003CLL, 0x800000000012C900, v25);
}

uint64_t sub_12EC8(uint64_t a1)
{
  v3 = *v2;
  v3[128] = a1;
  v3[129] = v1;

  if (v1)
  {

    v4 = sub_135E8;
  }

  else
  {
    v5 = v3[96];
    v6 = v3[95];
    v7 = v3[94];

    sub_5CA8(v7, &unk_15F170, &unk_126E00);
    sub_5CA8(v6, &unk_15F170, &unk_126E00);
    sub_5CA8(v5, &unk_15F170, &unk_126E00);
    v4 = sub_13078;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_13078(uint64_t a1)
{
  v38 = v1;
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "[SearchTimer.ResultSetProvider.makeSingleItemFlow] Creating response using ResponseFactory...", v4, 2u);
  }

  v5 = v1[124];

  if (v5)
  {
    v6 = v1[124];

    v7 = sub_125AAC();
    v8 = sub_125DFC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v1[123];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v37 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_8530(v9, v6, &v37);
      _os_log_impl(&dword_0, v7, v8, "[SearchTimer.ResultSetProvider.makeSingleItemFlow] We have a live activity: %s", v10, 0xCu);
      sub_5BB0(v11);
    }

    v12 = v1[73];
    v13 = v1[72];
    v1[60] = v13;
    v1[61] = sub_23BBC(&qword_15F930, 255, &type metadata accessor for SiriTimePluginModel, &protocol conformance descriptor for SiriTimePluginModel);
    v14 = sub_23B4C(v1 + 57);
    sub_5AE8(&qword_15F940, &unk_127410);
    v15 = *(sub_124F4C() - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_126CB0;
    sub_1135FC(v17 + v16);
    sub_12521C();
    (*(v12 + 104))(v14, enum case for SiriTimePluginModel.timerMulti(_:), v13);
    v18 = swift_task_alloc();
    v1[130] = v18;
    *v18 = v1;
    v18[1] = sub_138F8;
    v19 = v1[124];
    v20 = v1[123];
    v21 = v1[118];
    v22 = v1[114];
    v23 = v1[108];
    v41 = 2;
    v40 = 0x800000000012C8E0;
    v24 = v1 + 52;
    v25 = v1 + 57;
  }

  else
  {
    v26 = sub_125AAC();
    v27 = sub_125DFC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "[SearchTimer.ResultSetProvider.makeSingleItemFlow] Using multi-timer snippet model for single unmatched timer instead.", v28, 2u);
    }

    v29 = v1[73];
    v30 = v1[72];

    v1[50] = v30;
    v1[51] = sub_23BBC(&qword_15F930, 255, &type metadata accessor for SiriTimePluginModel, &protocol conformance descriptor for SiriTimePluginModel);
    v31 = sub_23B4C(v1 + 47);
    sub_5AE8(&qword_15F940, &unk_127410);
    v32 = *(sub_124F4C() - 8);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_126CB0;
    sub_1135FC(v34 + v33);
    sub_12521C();
    (*(v29 + 104))(v31, enum case for SiriTimePluginModel.timerMulti(_:), v30);
    v35 = swift_task_alloc();
    v1[131] = v35;
    *v35 = v1;
    v35[1] = sub_13D0C;
    v21 = v1[118];
    v22 = v1[114];
    v23 = v1[108];
    v41 = 2;
    v40 = 0x800000000012C8E0;
    v24 = v1 + 42;
    v25 = v1 + 47;
    v20 = 0;
    v19 = 0;
  }

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v24, v21, v22, v25, v23, v20, v19, 0xD00000000000001DLL);
}

uint64_t sub_135E8()
{
  v1 = v0[116];
  v11 = v0[119];
  v12 = v0[115];
  v15 = v0[114];
  v2 = v0[113];
  v13 = v0[118];
  v14 = v0[112];
  v10 = v0[108];
  v3 = v0[104];
  v4 = v0[103];
  v5 = v0[96];
  v6 = v0[95];
  v7 = v0[94];

  sub_5CA8(v7, &unk_15F170, &unk_126E00);
  sub_5CA8(v6, &unk_15F170, &unk_126E00);
  sub_5CA8(v5, &unk_15F170, &unk_126E00);

  (*(v3 + 8))(v10, v4);
  (*(v1 + 8))(v13, v12);
  (*(v2 + 8))(v15, v14);

  v8 = v0[1];

  return v8();
}

uint64_t sub_138F8()
{
  v1 = *v0;

  sub_5CA8(v1 + 456, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_13A28, 0, 0);
}

uint64_t sub_13A28()
{
  v1 = v0[128];
  v2 = v0[119];
  v10 = v0[118];
  v3 = v0[116];
  v4 = v0[115];
  v5 = v0[108];
  v6 = v0[104];
  v7 = v0[103];
  sub_23B08(v0 + 52, v0[55]);
  v11 = sub_123D4C();

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v10, v4);
  sub_5BB0(v0 + 52);
  (*(v0[113] + 8))(v0[114], v0[112]);

  v8 = v0[1];

  return v8(v11);
}

uint64_t sub_13D0C()
{
  v1 = *v0;

  sub_5CA8(v1 + 376, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_13E20, 0, 0);
}

uint64_t sub_13E20()
{
  v1 = v0[128];
  v2 = v0[119];
  v10 = v0[118];
  v3 = v0[116];
  v4 = v0[115];
  v5 = v0[108];
  v6 = v0[104];
  v7 = v0[103];
  sub_23B08(v0 + 42, v0[45]);
  v11 = sub_123D4C();

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v10, v4);
  sub_5BB0(v0 + 42);
  (*(v0[113] + 8))(v0[114], v0[112]);

  v8 = v0[1];

  return v8(v11);
}

uint64_t sub_14104(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1072) = v1;

  if (v1)
  {
    v5 = sub_146D4;
  }

  else
  {
    *(v4 + 1080) = a1;
    v5 = sub_14248;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_14248()
{
  sub_23A30(v0[76], type metadata accessor for SearchForTimersHandledOtherMultiParameters);
  v1 = swift_task_alloc();
  v0[136] = v1;
  *v1 = v0;
  v1[1] = sub_14308;
  v2 = v0[118];
  v3 = v0[114];
  v4 = v0[107];

  return PatternExecutionResult.generateFlow(phase:contextUpdate:measure:)(v2, v3, v4);
}

uint64_t sub_14308(uint64_t a1)
{
  v2 = *(*v1 + 1080);
  *(*v1 + 1096) = a1;

  return _swift_task_switch(sub_14424, 0, 0);
}

uint64_t sub_14424()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 928);
  v3 = *(v0 + 920);
  v4 = *(v0 + 856);
  v5 = *(v0 + 832);
  v6 = *(v0 + 824);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v9 = *(v0 + 1096);
  (*(*(v0 + 904) + 8))(*(v0 + 912), *(v0 + 896));

  v7 = *(v0 + 8);

  return v7(v9);
}

uint64_t sub_146D4()
{
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[116];
  v4 = v0[115];
  v12 = v0[114];
  v5 = v0[113];
  v6 = v0[112];
  v7 = v0[107];
  v8 = v0[104];
  v9 = v0[103];
  sub_23A30(v0[76], type metadata accessor for SearchForTimersHandledOtherMultiParameters);

  (*(v8 + 8))(v7, v9);
  (*(v3 + 8))(v2, v4);
  (*(v5 + 8))(v12, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_149A4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1120) = a1;
  *(v3 + 1128) = a2;

  return _swift_task_switch(sub_14AC8, 0, 0);
}

uint64_t sub_14AC8()
{
  v133 = v0;
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  sub_5BB0(v0 + 12);
  sub_5AE8(&qword_15F940, &unk_127410);
  v4 = *(sub_124F4C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_126CB0;
  sub_1135FC(v6 + v5);
  sub_12521C();
  (*(v2 + 104))(v1, enum case for SiriTimePluginModel.timerMulti(_:), v3);
  sub_1257EC();

  v7 = sub_125CAC();

  v8 = sub_18324(v7);

  v0[142] = v8;
  v9 = *(v0[68] + 88);
  if (v9 >> 62)
  {
    goto LABEL_34;
  }

  v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v11 = v0[68];
  v129 = v8;
  v131 = v0;
  if (v10)
  {
    v8 = *(v11 + 88);

    v13 = sub_2BE74(v12);

    v132[0] = _swiftEmptyArrayStorage;
    v127 = v13;
    if (v13 >> 62)
    {
      v14 = sub_1260FC();
      if (v14)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
      if (v14)
      {
LABEL_6:
        v15 = 0;
        v0 = v13;
        v16 = v13 & 0xC000000000000001;
        v17 = v13 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v16)
          {
            v18 = sub_125FFC();
            v19 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
LABEL_16:
              __break(1u);
LABEL_17:
              v0 = v131;
              v20 = v132[0];
              goto LABEL_37;
            }
          }

          else
          {
            if (v15 >= *(v17 + 16))
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              v10 = sub_1260FC();
              goto LABEL_3;
            }

            v18 = *(v127 + 8 * v15 + 32);

            v19 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_16;
            }
          }

          if (*(v18 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isInRespondingRoom))
          {
            sub_12603C();
            sub_12607C();
            sub_12608C();
            v8 = v132;
            sub_12604C();
          }

          else
          {
          }

          ++v15;
          if (v19 == v14)
          {
            goto LABEL_17;
          }
        }
      }
    }

    v20 = _swiftEmptyArrayStorage;
LABEL_37:
    v27 = *(v0[68] + 88);
    if (v27 >> 62)
    {
      goto LABEL_77;
    }

    for (i = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)); ; i = sub_1260FC())
    {

      if (!i)
      {
        break;
      }

      v29 = 0;
      while (1)
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v30 = sub_125FFC();
        }

        else
        {
          if (v29 >= *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_76;
          }

          v30 = *(v27 + 8 * v29 + 32);
        }

        v31 = v30;
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        [v30 type];
        v33 = sub_12589C();
        if (v33 == sub_12589C())
        {

          v34 = sub_113D6C(0, 0);

          goto LABEL_51;
        }

        ++v29;
        if (v32 == i)
        {
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      ;
    }

LABEL_49:

    v34 = 0;
LABEL_51:
    v124 = v34;
    v0[149] = v34;
    v35 = v0[120];
    v36 = v0[99];
    v37 = v0[98];
    v38 = v0[97];
    (*(v0[101] + 104))(v0[102], enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v0[100]);
    (*(v37 + 16))(v36, v35, v38);
    mach_absolute_time();
    sub_12502C();
    if (qword_15F070 != -1)
    {
      swift_once();
    }

    v39 = *(v0[68] + 64);
    v40 = [v39 label];
    v125 = v20;
    if (v40)
    {
      v41 = v40;
      sub_125B9C();

      sub_125BCC();

      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = v0[82];
    v44 = v0[81];
    v45 = v0[80];
    v121 = v0[79];
    v46 = sub_124E4C();
    v47 = *(v46 - 8);
    v48 = *(v47 + 56);
    v48(v43, v42, 1, v46);
    v49 = sub_FE18();
    v131[150] = v49;
    [v39 type];
    sub_12588C();
    v48(v44, 0, 1, v46);
    [v39 state];
    sub_1258AC();
    v48(v45, 0, 1, v46);
    sub_5AE8(&qword_15F180, &unk_126E10);
    v50 = swift_allocObject();
    v131[151] = v50;
    *(v50 + 16) = xmmword_127200;
    *(v50 + 32) = 0xD000000000000013;
    *(v50 + 40) = 0x800000000012C810;
    sub_23A98(v43, v121);
    v51 = *(v47 + 48);
    v52 = v51(v121, 1, v46);
    v53 = v131[79];
    if (v52 == 1)
    {
      v54 = v47;
      sub_5CA8(v131[79], &unk_15F170, &unk_126E00);
      *(v50 + 48) = 0u;
      *(v50 + 64) = 0u;
    }

    else
    {
      *(v50 + 72) = v46;
      v55 = sub_23B4C((v50 + 48));
      v54 = v47;
      (*(v47 + 32))(v55, v53, v46);
    }

    *(v50 + 80) = 0xD000000000000016;
    *(v50 + 88) = 0x800000000012C830;
    if (v49)
    {
      v56 = sub_124D7C();
      v57 = v49;
    }

    else
    {
      v57 = 0;
      v56 = 0;
      *(v50 + 104) = 0;
      *(v50 + 112) = 0;
    }

    v58 = v131[81];
    v59 = v131[78];
    *(v50 + 96) = v57;
    *(v50 + 120) = v56;
    strcpy((v50 + 128), "requestedType");
    *(v50 + 142) = -4864;
    sub_23A98(v58, v59);
    v60 = v51(v59, 1, v46);
    v61 = v131[78];
    if (v60 == 1)
    {

      sub_5CA8(v61, &unk_15F170, &unk_126E00);
      *(v50 + 144) = 0u;
      *(v50 + 160) = 0u;
    }

    else
    {
      *(v50 + 168) = v46;
      v62 = sub_23B4C((v50 + 144));
      (*(v54 + 32))(v62, v61, v46);
    }

    v63 = v131[80];
    v64 = v131[77];
    strcpy((v50 + 176), "requestedState");
    *(v50 + 191) = -18;
    sub_23A98(v63, v64);
    v65 = v51(v64, 1, v46);
    v66 = v131[77];
    if (v65 == 1)
    {
      sub_5CA8(v131[77], &unk_15F170, &unk_126E00);
      *(v50 + 192) = 0u;
      *(v50 + 208) = 0u;
    }

    else
    {
      *(v50 + 216) = v46;
      v67 = sub_23B4C((v50 + 192));
      (*(v54 + 32))(v67, v66, v46);
    }

    strcpy((v50 + 224), "matchedTimers");
    *(v50 + 238) = -4864;
    v68 = sub_5AE8(&qword_15F928, &unk_127400);
    *(v50 + 240) = v127;
    *(v50 + 264) = v68;
    *(v50 + 272) = 0x6D69547065656C73;
    *(v50 + 280) = 0xEA00000000007265;
    if (v124)
    {
      v69 = type metadata accessor for TimerTimer(0);
      v70 = v124;
    }

    else
    {
      v70 = 0;
      v69 = 0;
      *(v50 + 296) = 0;
      *(v50 + 304) = 0;
    }

    *(v50 + 288) = v70;
    *(v50 + 312) = v69;
    *(v50 + 320) = 0xD00000000000001DLL;
    *(v50 + 328) = 0x800000000012C850;
    *(v50 + 336) = v125;
    *(v50 + 360) = v68;
    *(v50 + 368) = 0x676E6970756F7267;
    *(v50 + 376) = 0xE800000000000000;
    v71 = 0;
    if (v129)
    {
      v71 = type metadata accessor for TimerTimerGrouping();
    }

    else
    {
      *(v50 + 392) = 0;
      *(v50 + 400) = 0;
    }

    v131[152] = v129;
    *(v50 + 384) = v129;
    *(v50 + 408) = v71;
    v130 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

    v72 = swift_task_alloc();
    v131[153] = v72;
    *v72 = v131;
    v72[1] = sub_16574;
    v73 = 0xD00000000000001ELL;
    v74 = 0x800000000012C870;
    v75 = v50;
    goto LABEL_118;
  }

  v8 = *(v11 + 96);

  v22 = sub_2BE74(v21);

  v132[0] = _swiftEmptyArrayStorage;
  if (v22 >> 62)
  {
    v23 = sub_1260FC();
    if (v23)
    {
      goto LABEL_20;
    }

LABEL_79:
    v26 = _swiftEmptyArrayStorage;
    goto LABEL_80;
  }

  v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
  if (!v23)
  {
    goto LABEL_79;
  }

LABEL_20:
  v24 = 0;
  while ((v22 & 0xC000000000000001) != 0)
  {
    v25 = sub_125FFC();
    v0 = (v24 + 1);
    if (__OFADD__(v24, 1))
    {
      goto LABEL_30;
    }

LABEL_26:
    if (*(v25 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isInRespondingRoom))
    {
      sub_12603C();
      sub_12607C();
      sub_12608C();
      v8 = v132;
      sub_12604C();
    }

    else
    {
    }

    ++v24;
    if (v0 == v23)
    {
      goto LABEL_31;
    }
  }

  if (v24 >= *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_33;
  }

  v25 = *(v22 + 8 * v24 + 32);

  v0 = (v24 + 1);
  if (!__OFADD__(v24, 1))
  {
    goto LABEL_26;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  v0 = v131;
  v26 = v132[0];
LABEL_80:
  v128 = v26;
  v76 = *(v0[68] + 88);
  if (v76 >> 62)
  {
    goto LABEL_123;
  }

  for (j = *(&dword_10 + (v76 & 0xFFFFFFFFFFFFFF8)); ; j = sub_1260FC())
  {

    if (!j)
    {
      break;
    }

    v78 = 0;
    while (1)
    {
      if ((v76 & 0xC000000000000001) != 0)
      {
        v79 = sub_125FFC();
      }

      else
      {
        if (v78 >= *(&dword_10 + (v76 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_122;
        }

        v79 = *(v76 + 8 * v78 + 32);
      }

      v80 = v79;
      v81 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
        break;
      }

      [v79 type];
      v82 = sub_12589C();
      if (v82 == sub_12589C())
      {

        v83 = sub_113D6C(0, 0);

        goto LABEL_94;
      }

      ++v78;
      if (v81 == j)
      {
        goto LABEL_92;
      }
    }

    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    ;
  }

LABEL_92:

  v83 = 0;
LABEL_94:
  v126 = v83;
  v131[143] = v83;
  v84 = v131[120];
  v85 = v131[99];
  v86 = v131[98];
  v87 = v131[97];
  (*(v131[101] + 104))(v131[102], enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v131[100]);
  (*(v86 + 16))(v85, v84, v87);
  mach_absolute_time();
  sub_12502C();
  if (qword_15F070 != -1)
  {
    swift_once();
  }

  v88 = *(v131[68] + 64);
  v89 = [v88 label];
  if (v89)
  {
    v90 = v89;
    sub_125B9C();

    sub_125BCC();

    v91 = 0;
  }

  else
  {
    v91 = 1;
  }

  v92 = v131[88];
  v93 = v131[87];
  v94 = v131[86];
  v123 = v131[85];
  v95 = sub_124E4C();
  v122 = *(v95 - 8);
  v96 = *(v122 + 56);
  v96(v92, v91, 1, v95);
  v97 = sub_FE18();
  v131[144] = v97;
  [v88 type];
  sub_12588C();
  v96(v93, 0, 1, v95);
  [v88 state];
  sub_1258AC();
  v96(v94, 0, 1, v95);
  sub_5AE8(&qword_15F180, &unk_126E10);
  v98 = swift_allocObject();
  v131[145] = v98;
  *(v98 + 16) = xmmword_127200;
  *(v98 + 32) = 0xD000000000000013;
  *(v98 + 40) = 0x800000000012C810;
  sub_23A98(v92, v123);
  v99 = *(v122 + 48);
  v100 = v99(v123, 1, v95);
  v101 = v131[85];
  if (v100 == 1)
  {
    sub_5CA8(v131[85], &unk_15F170, &unk_126E00);
    *(v98 + 48) = 0u;
    *(v98 + 64) = 0u;
  }

  else
  {
    *(v98 + 72) = v95;
    v102 = sub_23B4C((v98 + 48));
    (*(v122 + 32))(v102, v101, v95);
  }

  *(v98 + 80) = 0xD000000000000016;
  *(v98 + 88) = 0x800000000012C830;
  if (v97)
  {
    v103 = sub_124D7C();
    v104 = v97;
  }

  else
  {
    v104 = 0;
    v103 = 0;
    *(v98 + 104) = 0;
    *(v98 + 112) = 0;
  }

  v105 = v131[87];
  v106 = v131[84];
  *(v98 + 96) = v104;
  *(v98 + 120) = v103;
  strcpy((v98 + 128), "requestedType");
  *(v98 + 142) = -4864;
  sub_23A98(v105, v106);
  v107 = v99(v106, 1, v95);
  v108 = v131[84];
  if (v107 == 1)
  {

    sub_5CA8(v108, &unk_15F170, &unk_126E00);
    *(v98 + 144) = 0u;
    *(v98 + 160) = 0u;
  }

  else
  {
    *(v98 + 168) = v95;
    v109 = sub_23B4C((v98 + 144));
    (*(v122 + 32))(v109, v108, v95);
  }

  v110 = v131[86];
  v111 = v131[83];
  strcpy((v98 + 176), "requestedState");
  *(v98 + 191) = -18;
  sub_23A98(v110, v111);
  v112 = v99(v111, 1, v95);
  v113 = v131[83];
  if (v112 == 1)
  {
    sub_5CA8(v131[83], &unk_15F170, &unk_126E00);
    *(v98 + 192) = 0u;
    *(v98 + 208) = 0u;
  }

  else
  {
    *(v98 + 216) = v95;
    v114 = sub_23B4C((v98 + 192));
    (*(v122 + 32))(v114, v113, v95);
  }

  *(v98 + 224) = 0x65686374616D6E75;
  *(v98 + 232) = 0xEF7372656D695464;
  v115 = sub_5AE8(&qword_15F928, &unk_127400);
  *(v98 + 240) = v22;
  *(v98 + 264) = v115;
  *(v98 + 272) = 0x6D69547065656C73;
  *(v98 + 280) = 0xEA00000000007265;
  if (v126)
  {
    v116 = type metadata accessor for TimerTimer(0);
    v117 = v126;
  }

  else
  {
    v117 = 0;
    v116 = 0;
    *(v98 + 296) = 0;
    *(v98 + 304) = 0;
  }

  *(v98 + 288) = v117;
  *(v98 + 312) = v116;
  *(v98 + 320) = 0xD000000000000019;
  *(v98 + 328) = 0x800000000012C890;
  *(v98 + 336) = v128;
  *(v98 + 360) = v115;
  *(v98 + 368) = 0x676E6970756F7267;
  *(v98 + 376) = 0xE800000000000000;
  if (v129)
  {
    v118 = type metadata accessor for TimerTimerGrouping();
  }

  else
  {
    v118 = 0;
    *(v98 + 392) = 0;
    *(v98 + 400) = 0;
  }

  v131[146] = v129;
  *(v98 + 384) = v129;
  *(v98 + 408) = v118;
  v130 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v119 = swift_task_alloc();
  v131[147] = v119;
  *v119 = v131;
  v119[1] = sub_15CBC;
  v73 = 0xD000000000000020;
  v74 = 0x800000000012C8B0;
  v75 = v98;
LABEL_118:

  return v130(v73, v74, v75);
}

uint64_t sub_15CBC(uint64_t a1)
{
  v3 = *v2;
  v3[62] = v2;
  v3[63] = a1;
  v3[64] = v1;
  v3[148] = v1;

  if (v1)
  {

    v4 = sub_16214;
  }

  else
  {
    v5 = v3[88];
    v6 = v3[87];
    v7 = v3[86];

    sub_5CA8(v7, &unk_15F170, &unk_126E00);
    sub_5CA8(v6, &unk_15F170, &unk_126E00);
    sub_5CA8(v5, &unk_15F170, &unk_126E00);
    v4 = sub_15E68;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_15E68()
{
  v31 = v0;
  v1 = v0[63];
  v2 = v0[141];

  v0[155] = v1;
  if (v2)
  {
    v3 = v0[141];

    v4 = sub_125AAC();
    v5 = sub_125DFC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[140];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v30 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_8530(v6, v3, &v30);
      _os_log_impl(&dword_0, v4, v5, "[SearchTimer.ResultSetProvider.makeIntentHandledResponse] We have a live activity: %s", v7, 0xCu);
      sub_5BB0(v8);
    }

    v9 = v0[74];
    v10 = v0[73];
    v11 = v0[72];
    v0[35] = v11;
    v0[36] = sub_23BBC(&qword_15F930, 255, &type metadata accessor for SiriTimePluginModel, &protocol conformance descriptor for SiriTimePluginModel);
    v12 = sub_23B4C(v0 + 32);
    (*(v10 + 16))(v12, v9, v11);
    v13 = swift_task_alloc();
    v0[156] = v13;
    *v13 = v0;
    v13[1] = sub_16E2C;
    v14 = v0[141];
    v15 = v0[140];
    v16 = v0[118];
    v17 = v0[114];
    v18 = v0[106];
    v34 = 2;
    v33 = 0x800000000012C8E0;
    v19 = v0 + 27;
    v20 = v0 + 32;
  }

  else
  {
    v21 = sub_125AAC();
    v22 = sub_125DFC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "[SearchTimer.ResultSetProvider.makeIntentHandledResponse] Using multi-timer snippet model for single matched timer instead.", v23, 2u);
    }

    v24 = v0[74];
    v25 = v0[73];
    v26 = v0[72];

    v0[25] = v26;
    v0[26] = sub_23BBC(&qword_15F930, 255, &type metadata accessor for SiriTimePluginModel, &protocol conformance descriptor for SiriTimePluginModel);
    v27 = sub_23B4C(v0 + 22);
    (*(v25 + 16))(v27, v24, v26);
    v28 = swift_task_alloc();
    v0[157] = v28;
    *v28 = v0;
    v28[1] = sub_17270;
    v16 = v0[118];
    v17 = v0[114];
    v18 = v0[106];
    v34 = 2;
    v33 = 0x800000000012C8E0;
    v19 = v0 + 17;
    v20 = v0 + 22;
    v15 = 0;
    v14 = 0;
  }

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v19, v16, v17, v20, v18, v15, v14, 0xD00000000000001DLL);
}

uint64_t sub_16214()
{
  v1 = v0[116];
  v14 = v0[119];
  v15 = v0[115];
  v18 = v0[114];
  v2 = v0[113];
  v16 = v0[118];
  v17 = v0[112];
  v12 = v0[106];
  v3 = v0[104];
  v10 = v0[103];
  v4 = v0[88];
  v5 = v0[87];
  v6 = v0[86];
  v13 = v0[74];
  v7 = v0[73];
  v11 = v0[72];

  sub_5CA8(v6, &unk_15F170, &unk_126E00);
  sub_5CA8(v5, &unk_15F170, &unk_126E00);
  sub_5CA8(v4, &unk_15F170, &unk_126E00);

  (*(v3 + 8))(v12, v10);
  (*(v7 + 8))(v13, v11);
  (*(v1 + 8))(v16, v15);
  (*(v2 + 8))(v18, v17);

  v8 = v0[1];

  return v8();
}

uint64_t sub_16574(uint64_t a1)
{
  v3 = *v2;
  v3[65] = v2;
  v3[66] = a1;
  v3[67] = v1;
  v3[154] = v1;

  if (v1)
  {

    v4 = sub_16AD0;
  }

  else
  {
    v5 = v3[82];
    v6 = v3[81];
    v7 = v3[80];

    sub_5CA8(v7, &unk_15F170, &unk_126E00);
    sub_5CA8(v6, &unk_15F170, &unk_126E00);
    sub_5CA8(v5, &unk_15F170, &unk_126E00);
    v4 = sub_16724;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_16724()
{
  v31 = v0;
  v1 = v0[66];
  v2 = v0[141];

  v0[155] = v1;
  if (v2)
  {
    v3 = v0[141];

    v4 = sub_125AAC();
    v5 = sub_125DFC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[140];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v30 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_8530(v6, v3, &v30);
      _os_log_impl(&dword_0, v4, v5, "[SearchTimer.ResultSetProvider.makeIntentHandledResponse] We have a live activity: %s", v7, 0xCu);
      sub_5BB0(v8);
    }

    v9 = v0[74];
    v10 = v0[73];
    v11 = v0[72];
    v0[35] = v11;
    v0[36] = sub_23BBC(&qword_15F930, 255, &type metadata accessor for SiriTimePluginModel, &protocol conformance descriptor for SiriTimePluginModel);
    v12 = sub_23B4C(v0 + 32);
    (*(v10 + 16))(v12, v9, v11);
    v13 = swift_task_alloc();
    v0[156] = v13;
    *v13 = v0;
    v13[1] = sub_16E2C;
    v14 = v0[141];
    v15 = v0[140];
    v16 = v0[118];
    v17 = v0[114];
    v18 = v0[106];
    v34 = 2;
    v33 = 0x800000000012C8E0;
    v19 = v0 + 27;
    v20 = v0 + 32;
  }

  else
  {
    v21 = sub_125AAC();
    v22 = sub_125DFC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "[SearchTimer.ResultSetProvider.makeIntentHandledResponse] Using multi-timer snippet model for single matched timer instead.", v23, 2u);
    }

    v24 = v0[74];
    v25 = v0[73];
    v26 = v0[72];

    v0[25] = v26;
    v0[26] = sub_23BBC(&qword_15F930, 255, &type metadata accessor for SiriTimePluginModel, &protocol conformance descriptor for SiriTimePluginModel);
    v27 = sub_23B4C(v0 + 22);
    (*(v25 + 16))(v27, v24, v26);
    v28 = swift_task_alloc();
    v0[157] = v28;
    *v28 = v0;
    v28[1] = sub_17270;
    v16 = v0[118];
    v17 = v0[114];
    v18 = v0[106];
    v34 = 2;
    v33 = 0x800000000012C8E0;
    v19 = v0 + 17;
    v20 = v0 + 22;
    v15 = 0;
    v14 = 0;
  }

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v19, v16, v17, v20, v18, v15, v14, 0xD00000000000001DLL);
}

uint64_t sub_16AD0()
{
  v1 = v0[116];
  v14 = v0[119];
  v15 = v0[115];
  v18 = v0[114];
  v2 = v0[113];
  v16 = v0[118];
  v17 = v0[112];
  v12 = v0[106];
  v3 = v0[104];
  v10 = v0[103];
  v4 = v0[82];
  v5 = v0[81];
  v6 = v0[80];
  v13 = v0[74];
  v7 = v0[73];
  v11 = v0[72];

  sub_5CA8(v6, &unk_15F170, &unk_126E00);
  sub_5CA8(v5, &unk_15F170, &unk_126E00);
  sub_5CA8(v4, &unk_15F170, &unk_126E00);

  (*(v3 + 8))(v12, v10);
  (*(v7 + 8))(v13, v11);
  (*(v1 + 8))(v16, v15);
  (*(v2 + 8))(v18, v17);

  v8 = v0[1];

  return v8();
}

uint64_t sub_16E2C()
{
  v1 = *v0;

  sub_5CA8(v1 + 256, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_16F5C, 0, 0);
}

uint64_t sub_16F5C()
{
  v1 = v0[155];
  v2 = v0[119];
  v3 = v0[116];
  v12 = v0[115];
  v13 = v0[118];
  v4 = v0[104];
  v5 = v0[103];
  v11 = v0[74];
  v6 = v0[73];
  v9 = v0[106];
  v10 = v0[72];
  sub_23B08(v0 + 27, v0[30]);
  v14 = sub_123D4C();

  (*(v4 + 8))(v9, v5);
  (*(v6 + 8))(v11, v10);
  (*(v3 + 8))(v13, v12);
  sub_5BB0(v0 + 27);
  (*(v0[113] + 8))(v0[114], v0[112]);

  v7 = v0[1];

  return v7(v14);
}

uint64_t sub_17270()
{
  v1 = *v0;

  sub_5CA8(v1 + 176, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_17384, 0, 0);
}

uint64_t sub_17384()
{
  v1 = v0[155];
  v2 = v0[119];
  v3 = v0[116];
  v12 = v0[115];
  v13 = v0[118];
  v4 = v0[104];
  v5 = v0[103];
  v11 = v0[74];
  v6 = v0[73];
  v9 = v0[106];
  v10 = v0[72];
  sub_23B08(v0 + 17, v0[20]);
  v14 = sub_123D4C();

  (*(v4 + 8))(v9, v5);
  (*(v6 + 8))(v11, v10);
  (*(v3 + 8))(v13, v12);
  sub_5BB0(v0 + 17);
  (*(v0[113] + 8))(v0[114], v0[112]);

  v7 = v0[1];

  return v7(v14);
}

uint64_t sub_17698(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1280) = a1;
  *(v3 + 1288) = a2;

  return _swift_task_switch(sub_177BC, 0, 0);
}

uint64_t sub_177BC()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);
  v5 = *(v0 + 792);
  v6 = *(v0 + 784);
  v7 = *(v0 + 776);
  sub_5BB0((v0 + 56));
  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v4);
  (*(v6 + 16))(v5, v1, v7);
  mach_absolute_time();
  sub_12502C();
  if (qword_15F078 != -1)
  {
    swift_once();
  }

  v8 = *(*(v0 + 544) + 112);
  [*(v0 + 952) type];
  v9 = sub_12589C();
  LOWORD(v9) = v9 == sub_12589C();
  v10 = sub_113D6C(0, 0);
  *(v0 + 1296) = v10;
  v11 = sub_ADDF4(v8 | (v9 << 8), v10);
  *(v0 + 1304) = v11;
  v14 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v12 = swift_task_alloc();
  *(v0 + 1312) = v12;
  *v12 = v0;
  v12[1] = sub_179A8;

  return v14(0xD00000000000001DLL, 0x800000000012C8E0, v11);
}

uint64_t sub_179A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1320) = v1;

  if (v1)
  {

    v5 = sub_18068;
  }

  else
  {
    *(v4 + 1328) = a1;
    v5 = sub_17AFC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_17AFC()
{
  v1 = v0[161];
  v2 = v0[160];
  v3 = v0[118];
  v4 = v0[117];
  v5 = v0[116];
  v6 = v0[115];
  v7 = v0[114];

  (*(v5 + 16))(v4, v3, v6);
  v8 = swift_task_alloc();
  v8[2] = v7;
  v8[3] = v2;
  v8[4] = v1;
  sub_123B0C();

  v9 = swift_task_alloc();
  v0[167] = v9;
  *v9 = v0;
  v9[1] = sub_17C40;
  v10 = v0[105];
  v11 = v0[71];

  return PatternExecutionResult.generateFlow(manifest:measure:)(v11, v10);
}

uint64_t sub_17C40(uint64_t a1)
{
  v2 = *(*v1 + 1328);
  v3 = *(*v1 + 568);
  v4 = *(*v1 + 560);
  v5 = *(*v1 + 552);
  *(*v1 + 1344) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_17DB8, 0, 0);
}

uint64_t sub_17DB8()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 928);
  v3 = *(v0 + 920);
  v4 = *(v0 + 840);
  v5 = *(v0 + 832);
  v6 = *(v0 + 824);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v9 = *(v0 + 1344);
  (*(*(v0 + 904) + 8))(*(v0 + 912), *(v0 + 896));

  v7 = *(v0 + 8);

  return v7(v9);
}

uint64_t sub_18068()
{
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[116];
  v4 = v0[115];
  v12 = v0[114];
  v5 = v0[113];
  v6 = v0[112];
  v7 = v0[105];
  v8 = v0[104];
  v9 = v0[103];

  (*(v8 + 8))(v7, v9);
  (*(v3 + 8))(v2, v4);
  (*(v5 + 8))(v12, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_18324(uint64_t a1)
{
  v2 = sub_12575C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimerTimerGrouping.Builder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 19) = 0;
  *(inited + 16) = *(a1 + 16) == 0;
  v7 = *(v3 + 104);
  v7(v5, enum case for TimerGrouping.statePaused(_:), v2);
  v8 = sub_22C84(v5, a1);
  v9 = *(v3 + 8);
  v9(v5, v2);
  *(inited + 21) = v8 & 1;
  v7(v5, enum case for TimerGrouping.stateRunning(_:), v2);
  v10 = sub_22C84(v5, a1);
  v9(v5, v2);
  *(inited + 20) = v10 & 1;
  v7(v5, enum case for TimerGrouping.device(_:), v2);
  v11 = sub_22C84(v5, a1);
  v9(v5, v2);
  *(inited + 19) = v11 & 1;
  v7(v5, enum case for TimerGrouping.room(_:), v2);
  v12 = sub_22C84(v5, a1);
  v9(v5, v2);
  *(inited + 18) = v12 & 1;
  v7(v5, enum case for TimerGrouping.label(_:), v2);
  v13 = sub_22C84(v5, a1);
  v9(v5, v2);
  *(inited + 17) = v13 & 1;
  v7(v5, enum case for TimerGrouping.duration(_:), v2);
  LOBYTE(a1) = sub_22C84(v5, a1);
  v9(v5, v2);
  *(inited + 22) = a1 & 1;
  type metadata accessor for TimerTimerGrouping();
  swift_allocObject();
  return sub_90334(inited);
}

uint64_t sub_18604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_18728()
{
  v1[22] = v0;
  v2 = sub_123B3C();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v3 = sub_123C1C();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v4 = sub_12368C();
  v1[29] = v4;
  v1[30] = *(v4 - 8);
  v1[31] = swift_task_alloc();
  sub_5AE8(&unk_15F170, &unk_126E00);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v5 = sub_125ABC();
  v1[44] = v5;
  v1[45] = *(v5 - 8);
  v1[46] = swift_task_alloc();
  v6 = sub_124FFC();
  v1[47] = v6;
  v1[48] = *(v6 - 8);
  v1[49] = swift_task_alloc();
  v7 = sub_12501C();
  v1[50] = v7;
  v1[51] = *(v7 - 8);
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v8 = sub_124F4C();
  v1[55] = v8;
  v1[56] = *(v8 - 8);
  v1[57] = swift_task_alloc();
  v9 = sub_12503C();
  v1[58] = v9;
  v1[59] = *(v9 - 8);
  v1[60] = swift_task_alloc();
  v10 = sub_1250BC();
  v1[61] = v10;
  v1[62] = *(v10 - 8);
  v1[63] = swift_task_alloc();
  v11 = sub_12392C();
  v1[64] = v11;
  v1[65] = *(v11 - 8);
  v1[66] = swift_task_alloc();

  return _swift_task_switch(sub_18BF8, 0, 0);
}

uint64_t sub_18BF8()
{
  v178 = v0;
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(*(v0 + 352), qword_15F700);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchTimer.ResultSetProvider makeAllResultsFlow", v4, 2u);
  }

  v5 = *(v0 + 176);

  v6 = *(v5 + 56);
  if (!(v6 >> 62))
  {
    if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_7;
    }

LABEL_13:
    v10 = swift_task_alloc();
    *(v0 + 536) = v10;
    *v10 = v0;
    v10[1] = sub_1A318;

    return sub_101EC();
  }

  if (!sub_1260FC())
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = *(v5 + 56);
  if (v7 >> 62)
  {
    if (sub_1260FC() == 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) == 1)
  {
LABEL_9:
    v8 = swift_task_alloc();
    *(v0 + 544) = v8;
    *v8 = v0;
    v8[1] = sub_1A718;

    return sub_11558();
  }

  v11 = *(v5 + 56);
  if (v11 >> 62)
  {
    v14 = sub_1260FC();
    v12 = *(v0 + 528);
    if (v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v12 = *(v0 + 528);
    if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_19:

      sub_FF26C(v13, v12);

      goto LABEL_22;
    }
  }

  sub_12391C();
LABEL_22:
  v15 = *(v0 + 496);
  v16 = *(v0 + 504);
  v17 = *(v0 + 488);
  sub_1250AC();
  v18 = sub_12504C();
  (*(v15 + 8))(v16, v17);
  if (!v18)
  {
    v37 = *(v0 + 368);
    v39 = *(v0 + 352);
    v38 = *(v0 + 360);
    (*(*(v0 + 384) + 104))(*(v0 + 392), enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), *(v0 + 376));
    (*(v38 + 16))(v37, v1, v39);
    mach_absolute_time();
    sub_12502C();
    sub_123BCC();
    v40 = *(v5 + 56);
    *(v0 + 680) = v40;

    v41 = swift_task_alloc();
    *(v0 + 688) = v41;
    *v41 = v0;
    v41[1] = sub_1BD9C;
    v42 = *(v0 + 224);

    return sub_1EEF0(v42, v40);
  }

  v19 = sub_125AAC();
  v20 = sub_125DFC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "[SearchTimer.ResultSetProvider.makeAllResultsFlow] Using multi-timer RF 2.0 path", v21, 2u);
  }

  v22 = *(v5 + 56);
  if (v22 >> 62)
  {
    goto LABEL_73;
  }

  v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
LABEL_27:
  v171 = v1;
  v1 = _swiftEmptyArrayStorage;
  v175 = v0;
  if (v23)
  {
    v177[0] = _swiftEmptyArrayStorage;
    v24 = v22;

    v25 = v177;
    sub_22A8C(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      goto LABEL_90;
    }

    v26 = 0;
    v27 = *(v0 + 448);
    v28 = v177[0];
    v29 = v24;
    v30 = v23;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v31 = sub_125FFC();
      }

      else
      {
        v31 = *(v29 + 8 * v26 + 32);
      }

      v32 = v31;
      sub_1135FC(*(v0 + 456));

      v177[0] = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_22A8C((v33 > 1), v34 + 1, 1);
        v28 = v177[0];
      }

      v35 = *(v0 + 456);
      v36 = *(v0 + 440);
      ++v26;
      *(v28 + 16) = v34 + 1;
      (*(v27 + 32))(v28 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v34, v35, v36);
      v29 = v24;
    }

    while (v30 != v26);

    v1 = _swiftEmptyArrayStorage;
  }

  v43 = *(v0 + 472);
  v44 = *(v0 + 480);
  v45 = *(v0 + 464);
  v46 = *(v0 + 176);
  sub_12521C();
  (*(v43 + 104))(v44, enum case for SiriTimePluginModel.timerMulti(_:), v45);
  v47 = v46;
  v48 = *(v46 + 88);
  if (v48 >> 62)
  {
    if (sub_1260FC())
    {
LABEL_42:
      sub_1257EC();

      v49 = sub_125CAC();

      v0 = sub_18324(v49);

      v25 = *(v47 + 88);
      v169 = v0;
      if (!(v25 >> 62))
      {
        v50 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
        goto LABEL_44;
      }

LABEL_91:
      v50 = sub_1260FC();
LABEL_44:

      if (v50)
      {
        v51 = 0;
        while (1)
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v22 = sub_125FFC();
          }

          else
          {
            if (v51 >= *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_72;
            }

            v22 = *(v25 + 8 * v51 + 32);
          }

          v52 = v22;
          v0 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            goto LABEL_71;
          }

          [v22 type];
          v53 = sub_12589C();
          if (v53 == sub_12589C())
          {
            break;
          }

          ++v51;
          if (v0 == v50)
          {
            goto LABEL_54;
          }
        }

        v54 = sub_113D6C(0, 0);
      }

      else
      {
LABEL_54:

        v54 = 0;
      }

      v55 = v175;
      v167 = v54;
      v175[77] = v54;

      v57 = sub_2BE74(v56);

      v177[0] = v1;
      if (v57 >> 62)
      {
        v22 = sub_1260FC();
        v58 = v22;
        if (v22)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v58 = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8));
        if (v58)
        {
LABEL_58:
          v59 = 0;
          v0 = &OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isInRespondingRoom;
          while (1)
          {
            if ((v57 & 0xC000000000000001) != 0)
            {
              v1 = sub_125FFC();
              v60 = v59 + 1;
              if (__OFADD__(v59, 1))
              {
LABEL_68:
                __break(1u);
LABEL_69:
                v55 = v175;
                v61 = v177[0];
                goto LABEL_94;
              }
            }

            else
            {
              if (v59 >= *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)))
              {
                __break(1u);
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                v62 = v22;
                v23 = sub_1260FC();
                v22 = v62;
                goto LABEL_27;
              }

              v1 = *(v57 + 8 * v59 + 32);

              v60 = v59 + 1;
              if (__OFADD__(v59, 1))
              {
                goto LABEL_68;
              }
            }

            if (*(v1 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isInRespondingRoom))
            {
              sub_12603C();
              sub_12607C();
              sub_12608C();
              v22 = sub_12604C();
            }

            else
            {
            }

            ++v59;
            if (v60 == v58)
            {
              goto LABEL_69;
            }
          }
        }
      }

      v61 = _swiftEmptyArrayStorage;
LABEL_94:
      v166 = v61;
      v69 = v55[48];
      v70 = v55[49];
      v72 = v55[46];
      v71 = v55[47];
      v74 = v55[44];
      v73 = v55[45];

      (*(v69 + 104))(v70, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v71);
      (*(v73 + 16))(v72, v171, v74);
      mach_absolute_time();
      sub_12502C();
      if (qword_15F070 != -1)
      {
        swift_once();
      }

      v162 = *(v55[22] + 64);
      v75 = [v162 label];
      v76 = v55;
      if (v75)
      {
        v77 = v75;
        sub_125B9C();

        v76 = v175;
        sub_125BCC();

        v78 = 0;
      }

      else
      {
        v78 = 1;
      }

      v79 = v76[36];
      v80 = v76[37];
      v161 = v80;
      v81 = v76[35];
      v164 = v76[34];
      v82 = sub_124E4C();
      v83 = *(v82 - 8);
      v84 = *(v83 + 56);
      v84(v80, v78, 1, v82);
      v85 = sub_FE18();
      v76[78] = v85;
      [v162 type];
      sub_12588C();
      v84(v79, 0, 1, v82);
      [v162 state];
      sub_1258AC();
      v84(v81, 0, 1, v82);

      v173 = sub_2BE74(v86);
      v87 = v83;

      sub_5AE8(&qword_15F180, &unk_126E10);
      v88 = swift_allocObject();
      v76[79] = v88;
      *(v88 + 16) = xmmword_127200;
      *(v88 + 32) = 0xD000000000000013;
      *(v88 + 40) = 0x800000000012C810;
      sub_23A98(v161, v164);
      v89 = *(v83 + 48);
      v90 = v89(v164, 1, v82);
      v91 = v76[34];
      if (v90 == 1)
      {
        sub_5CA8(v76[34], &unk_15F170, &unk_126E00);
        *(v88 + 48) = 0u;
        *(v88 + 64) = 0u;
      }

      else
      {
        *(v88 + 72) = v82;
        v92 = sub_23B4C((v88 + 48));
        (*(v87 + 32))(v92, v91, v82);
      }

      *(v88 + 80) = 0xD000000000000016;
      *(v88 + 88) = 0x800000000012C830;
      if (v85)
      {
        v93 = sub_124D7C();
        v94 = v85;
      }

      else
      {
        v94 = 0;
        v93 = 0;
        *(v88 + 104) = 0;
        *(v88 + 112) = 0;
      }

      v95 = v175[36];
      v96 = v175[33];
      *(v88 + 96) = v94;
      *(v88 + 120) = v93;
      strcpy((v88 + 128), "requestedType");
      *(v88 + 142) = -4864;
      sub_23A98(v95, v96);
      v97 = v89(v96, 1, v82);
      v98 = v175[33];
      if (v97 == 1)
      {

        sub_5CA8(v98, &unk_15F170, &unk_126E00);
        *(v88 + 144) = 0u;
        *(v88 + 160) = 0u;
      }

      else
      {
        *(v88 + 168) = v82;
        v99 = sub_23B4C((v88 + 144));
        (*(v87 + 32))(v99, v98, v82);
      }

      v100 = v175[35];
      v101 = v175[32];
      strcpy((v88 + 176), "requestedState");
      *(v88 + 191) = -18;
      sub_23A98(v100, v101);
      v102 = v89(v101, 1, v82);
      v103 = v175[32];
      if (v102 == 1)
      {
        sub_5CA8(v175[32], &unk_15F170, &unk_126E00);
        *(v88 + 192) = 0u;
        *(v88 + 208) = 0u;
      }

      else
      {
        *(v88 + 216) = v82;
        v104 = sub_23B4C((v88 + 192));
        (*(v87 + 32))(v104, v103, v82);
      }

      strcpy((v88 + 224), "matchedTimers");
      *(v88 + 238) = -4864;
      v105 = sub_5AE8(&qword_15F928, &unk_127400);
      *(v88 + 240) = v173;
      *(v88 + 264) = v105;
      *(v88 + 272) = 0x6D69547065656C73;
      *(v88 + 280) = 0xEA00000000007265;
      if (v167)
      {
        v106 = type metadata accessor for TimerTimer(0);
        v107 = v167;
      }

      else
      {
        v107 = 0;
        v106 = 0;
        *(v88 + 296) = 0;
        *(v88 + 304) = 0;
      }

      *(v88 + 288) = v107;
      *(v88 + 312) = v106;
      *(v88 + 320) = 0xD00000000000001DLL;
      *(v88 + 328) = 0x800000000012C850;
      *(v88 + 336) = v166;
      *(v88 + 360) = v105;
      *(v88 + 368) = 0x676E6970756F7267;
      *(v88 + 376) = 0xE800000000000000;
      v108 = 0;
      if (v169)
      {
        v108 = type metadata accessor for TimerTimerGrouping();
      }

      else
      {
        *(v88 + 392) = 0;
        *(v88 + 400) = 0;
      }

      v109 = v175;
      v175[80] = v169;
      *(v88 + 384) = v169;
      *(v88 + 408) = v108;
      v176 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

      v110 = swift_task_alloc();
      v109[81] = v110;
      *v110 = v109;
      v110[1] = sub_1B450;
      v111 = 0xD00000000000001ELL;
      v112 = 0x800000000012C870;
      v113 = v88;
      goto LABEL_158;
    }
  }

  else if (*(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_42;
  }

  v172 = *(v0 + 176);
  v25 = *(v172 + 96);

  v0 = sub_2BE74(v63);

  v177[0] = _swiftEmptyArrayStorage;
  if (v0 >> 62)
  {
    v64 = sub_1260FC();
    if (v64)
    {
      goto LABEL_77;
    }

LABEL_119:
    v68 = _swiftEmptyArrayStorage;
    goto LABEL_120;
  }

  v64 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
  if (!v64)
  {
    goto LABEL_119;
  }

LABEL_77:
  v65 = 0;
  v1 = (v0 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if ((v0 & 0xC000000000000001) == 0)
    {
      if (v65 < *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)))
      {
        v66 = *(v0 + 8 * v65 + 32);

        v67 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          break;
        }

        goto LABEL_83;
      }

      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v66 = sub_125FFC();
    v67 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

LABEL_83:
    if (*(v66 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin10TimerTimer_isInRespondingRoom))
    {
      sub_12603C();
      sub_12607C();
      sub_12608C();
      v25 = v177;
      sub_12604C();
    }

    else
    {
    }

    ++v65;
    if (v67 == v64)
    {
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_88:
  v68 = v177[0];
LABEL_120:
  v170 = v68;
  v114 = *(v172 + 96);
  if (v114 >> 62)
  {
    goto LABEL_163;
  }

  for (i = *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8)); ; i = sub_1260FC())
  {

    v168 = v0;
    if (!i)
    {
      break;
    }

    v116 = 0;
    while (1)
    {
      if ((v114 & 0xC000000000000001) != 0)
      {
        v117 = sub_125FFC();
      }

      else
      {
        if (v116 >= *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_162;
        }

        v117 = *(v114 + 8 * v116 + 32);
      }

      v118 = v117;
      v0 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        break;
      }

      [v117 type];
      v119 = sub_12589C();
      if (v119 == sub_12589C())
      {

        v120 = sub_113D6C(0, 0);

        goto LABEL_134;
      }

      ++v116;
      if (v0 == i)
      {
        goto LABEL_132;
      }
    }

    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    ;
  }

LABEL_132:

  v120 = 0;
LABEL_134:
  v121 = v175;
  v175[69] = v120;
  sub_1257EC();

  v122 = sub_125CAC();

  v174 = sub_18324(v122);

  v123 = v175[46];
  v125 = v175[44];
  v124 = v175[45];
  (*(v121[48] + 104))(v121[49], enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v121[47]);
  (*(v124 + 16))(v123, v171, v125);
  mach_absolute_time();
  sub_12502C();
  if (qword_15F070 != -1)
  {
    swift_once();
  }

  v165 = *(v175[22] + 64);
  v126 = [v165 label];
  if (v126)
  {
    v127 = v126;
    sub_125B9C();

    v121 = v175;
    sub_125BCC();

    v128 = 0;
  }

  else
  {
    v128 = 1;
  }

  v129 = v121[42];
  v130 = v121[43];
  v131 = v121[41];
  v163 = v121[40];
  v132 = sub_124E4C();
  v133 = *(v132 - 8);
  v134 = v121;
  v135 = *(v133 + 56);
  v135(v130, v128, 1, v132);
  v136 = sub_FE18();
  v134[70] = v136;
  [v165 type];
  sub_12588C();
  v135(v129, 0, 1, v132);
  [v165 state];
  sub_1258AC();
  v135(v131, 0, 1, v132);
  sub_5AE8(&qword_15F180, &unk_126E10);
  v137 = swift_allocObject();
  v134[71] = v137;
  *(v137 + 16) = xmmword_127200;
  *(v137 + 32) = 0xD000000000000013;
  *(v137 + 40) = 0x800000000012C810;
  sub_23A98(v130, v163);
  v138 = *(v133 + 48);
  v139 = v138(v163, 1, v132);
  v140 = v134[40];
  if (v139 == 1)
  {
    v141 = v133;
    sub_5CA8(v134[40], &unk_15F170, &unk_126E00);
    *(v137 + 48) = 0u;
    *(v137 + 64) = 0u;
  }

  else
  {
    *(v137 + 72) = v132;
    v142 = sub_23B4C((v137 + 48));
    v141 = v133;
    (*(v133 + 32))(v142, v140, v132);
  }

  *(v137 + 80) = 0xD000000000000016;
  *(v137 + 88) = 0x800000000012C830;
  if (v136)
  {
    v143 = sub_124D7C();
    v144 = v136;
  }

  else
  {
    v144 = 0;
    v143 = 0;
    *(v137 + 104) = 0;
    *(v137 + 112) = 0;
  }

  v145 = v175[42];
  v146 = v175[39];
  *(v137 + 96) = v144;
  *(v137 + 120) = v143;
  strcpy((v137 + 128), "requestedType");
  *(v137 + 142) = -4864;
  sub_23A98(v145, v146);
  v147 = v138(v146, 1, v132);
  v148 = v175[39];
  if (v147 == 1)
  {

    sub_5CA8(v148, &unk_15F170, &unk_126E00);
    *(v137 + 144) = 0u;
    *(v137 + 160) = 0u;
  }

  else
  {
    *(v137 + 168) = v132;
    v149 = sub_23B4C((v137 + 144));
    (*(v141 + 32))(v149, v148, v132);
  }

  v150 = v175[41];
  v151 = v175[38];
  strcpy((v137 + 176), "requestedState");
  *(v137 + 191) = -18;
  sub_23A98(v150, v151);
  v152 = v138(v151, 1, v132);
  v153 = v175[38];
  if (v152 == 1)
  {
    sub_5CA8(v175[38], &unk_15F170, &unk_126E00);
    *(v137 + 192) = 0u;
    *(v137 + 208) = 0u;
  }

  else
  {
    *(v137 + 216) = v132;
    v154 = sub_23B4C((v137 + 192));
    (*(v141 + 32))(v154, v153, v132);
  }

  *(v137 + 224) = 0x65686374616D6E75;
  *(v137 + 232) = 0xEF7372656D695464;
  v155 = sub_5AE8(&qword_15F928, &unk_127400);
  *(v137 + 240) = v168;
  *(v137 + 264) = v155;
  *(v137 + 272) = 0x6D69547065656C73;
  *(v137 + 280) = 0xEA00000000007265;
  if (v120)
  {
    v156 = type metadata accessor for TimerTimer(0);
    v157 = v120;
  }

  else
  {
    v157 = 0;
    v156 = 0;
    *(v137 + 296) = 0;
    *(v137 + 304) = 0;
  }

  *(v137 + 288) = v157;
  *(v137 + 312) = v156;
  *(v137 + 320) = 0xD000000000000019;
  *(v137 + 328) = 0x800000000012C890;
  *(v137 + 336) = v170;
  *(v137 + 360) = v155;
  *(v137 + 368) = 0x676E6970756F7267;
  *(v137 + 376) = 0xE800000000000000;
  v158 = 0;
  if (v174)
  {
    v158 = type metadata accessor for TimerTimerGrouping();
  }

  else
  {
    *(v137 + 392) = 0;
    *(v137 + 400) = 0;
  }

  v159 = v175;
  v175[72] = v174;
  *(v137 + 384) = v174;
  *(v137 + 408) = v158;
  v176 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v160 = swift_task_alloc();
  v159[73] = v160;
  *v160 = v159;
  v160[1] = sub_1AB18;
  v111 = 0xD000000000000020;
  v112 = 0x800000000012C8B0;
  v113 = v137;
LABEL_158:

  return v176(v111, v112, v113);
}

uint64_t sub_1A318(uint64_t a1)
{
  v7 = *v1;

  v3 = *(v7 + 8);
  if (!v6)
  {
    v2 = a1;
  }

  return v3(v2);
}

uint64_t sub_1A718(uint64_t a1)
{
  v7 = *v1;

  v3 = *(v7 + 8);
  if (!v6)
  {
    v2 = a1;
  }

  return v3(v2);
}

uint64_t sub_1AB18(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 592) = v1;

  if (v1)
  {
    v5 = sub_1B1D4;
  }

  else
  {
    v7 = v4[42];
    v6 = v4[43];
    v8 = v4[41];
    v4[75] = a1;

    sub_5CA8(v8, &unk_15F170, &unk_126E00);
    sub_5CA8(v7, &unk_15F170, &unk_126E00);
    sub_5CA8(v6, &unk_15F170, &unk_126E00);
    v5 = sub_1ACB0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1ACB0(uint64_t a1)
{
  v3 = v1[59];
  v2 = v1[60];
  v4 = v1[58];
  sub_12361C();
  v1[20] = v4;
  v1[21] = sub_23BBC(&qword_15F930, 255, &type metadata accessor for SiriTimePluginModel, &protocol conformance descriptor for SiriTimePluginModel);
  v5 = sub_23B4C(v1 + 17);
  (*(v3 + 16))(v5, v2, v4);
  v6 = swift_task_alloc();
  v1[76] = v6;
  *v6 = v1;
  v6[1] = sub_1ADF0;
  v7 = v1[66];
  v8 = v1[54];
  v9 = v1[31];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v1 + 12, v9, v7, v1 + 17, v8, 0, 0, 0);
}

uint64_t sub_1ADF0()
{
  v1 = *v0;
  v2 = *(*v0 + 600);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 232);

  (*(v4 + 8))(v3, v5);
  sub_5CA8(v1 + 136, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_1AF80, 0, 0);
}

uint64_t sub_1AF80()
{
  v11 = v0[66];
  v1 = v0[65];
  v2 = v0[59];
  v9 = v0[60];
  v10 = v0[64];
  v8 = v0[58];
  v3 = v0[54];
  v5 = v0[50];
  v4 = v0[51];
  sub_23B08(v0 + 12, v0[15]);
  v12 = sub_123D4C();

  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v9, v8);
  sub_5BB0(v0 + 12);
  (*(v1 + 8))(v11, v10);

  v6 = v0[1];

  return v6(v12);
}

uint64_t sub_1B1D4()
{
  v1 = v0[65];
  v13 = v0[64];
  v14 = v0[66];
  v2 = v0[59];
  v11 = v0[58];
  v12 = v0[60];
  v10 = v0[54];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[42];
  v6 = v0[43];
  v7 = v0[41];

  sub_5CA8(v7, &unk_15F170, &unk_126E00);
  sub_5CA8(v5, &unk_15F170, &unk_126E00);
  sub_5CA8(v6, &unk_15F170, &unk_126E00);

  (*(v3 + 8))(v10, v4);
  (*(v2 + 8))(v12, v11);
  (*(v1 + 8))(v14, v13);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B450(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 656) = v1;

  if (v1)
  {
    v5 = sub_1BB20;
  }

  else
  {
    v7 = v4[36];
    v6 = v4[37];
    v8 = v4[35];
    v4[83] = a1;

    sub_5CA8(v8, &unk_15F170, &unk_126E00);
    sub_5CA8(v7, &unk_15F170, &unk_126E00);
    sub_5CA8(v6, &unk_15F170, &unk_126E00);
    v5 = sub_1B5E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1B5E8(uint64_t a1)
{
  v3 = v1[59];
  v2 = v1[60];
  v4 = v1[58];
  sub_12361C();
  v1[10] = v4;
  v1[11] = sub_23BBC(&qword_15F930, 255, &type metadata accessor for SiriTimePluginModel, &protocol conformance descriptor for SiriTimePluginModel);
  v5 = sub_23B4C(v1 + 7);
  (*(v3 + 16))(v5, v2, v4);
  v6 = swift_task_alloc();
  v1[84] = v6;
  *v6 = v1;
  v6[1] = sub_1B73C;
  v7 = v1[66];
  v8 = v1[53];
  v9 = v1[31];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v1 + 2, v9, v7, v1 + 7, v8, 0, 0, 0xD00000000000001CLL);
}

uint64_t sub_1B73C()
{
  v1 = *v0;
  v2 = *(*v0 + 664);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 232);

  (*(v4 + 8))(v3, v5);
  sub_5CA8(v1 + 56, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_1B8CC, 0, 0);
}

uint64_t sub_1B8CC()
{
  v11 = v0[66];
  v1 = v0[65];
  v2 = v0[59];
  v9 = v0[60];
  v10 = v0[64];
  v8 = v0[58];
  v3 = v0[53];
  v5 = v0[50];
  v4 = v0[51];
  sub_23B08(v0 + 2, v0[5]);
  v12 = sub_123D4C();

  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v9, v8);
  sub_5BB0(v0 + 2);
  (*(v1 + 8))(v11, v10);

  v6 = v0[1];

  return v6(v12);
}

uint64_t sub_1BB20()
{
  v1 = v0[65];
  v13 = v0[64];
  v14 = v0[66];
  v2 = v0[59];
  v11 = v0[58];
  v12 = v0[60];
  v10 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[36];
  v6 = v0[37];
  v7 = v0[35];

  sub_5CA8(v7, &unk_15F170, &unk_126E00);
  sub_5CA8(v5, &unk_15F170, &unk_126E00);
  sub_5CA8(v6, &unk_15F170, &unk_126E00);

  (*(v3 + 8))(v10, v4);
  (*(v2 + 8))(v12, v11);
  (*(v1 + 8))(v14, v13);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1BD9C(uint64_t a1)
{
  v4 = *v2;
  v4[87] = v1;

  v5 = v4[28];
  v6 = v4[27];
  v7 = v4[26];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = sub_1C39C;
  }

  else
  {
    v4[88] = a1;
    (*(v6 + 8))(v5, v7);

    v8 = sub_1BF48;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1BF48(uint64_t a1)
{
  v2 = v1[66];
  sub_12361C();
  *(swift_task_alloc() + 16) = v2;
  sub_123B0C();

  v3 = swift_task_alloc();
  v1[89] = v3;
  *v3 = v1;
  v3[1] = sub_1C040;
  v4 = v1[52];
  v5 = v1[25];

  return PatternExecutionResult.generateFlow(manifest:measure:)(v5, v4);
}

uint64_t sub_1C040(uint64_t a1)
{
  v2 = *(*v1 + 704);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  *(*v1 + 720) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_1C1B8, 0, 0);
}

uint64_t sub_1C1B8()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  (*(v0[51] + 8))(v0[52], v0[50]);
  (*(v2 + 8))(v1, v3);
  v6 = v0[90];

  v4 = v0[1];

  return v4(v6);
}

uint64_t sub_1C39C()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  (*(v0[51] + 8))(v0[52], v0[50]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C57C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C67C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_123C1C();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v3[9] = *(v5 + 64);
  v3[10] = swift_task_alloc();
  v6 = sub_12368C();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_123B3C();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v8 = sub_12392C();
  v3[18] = v8;
  v3[19] = *(v8 - 8);
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1C868, 0, 0);
}

uint64_t sub_1C868()
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
    _os_log_impl(&dword_0, v2, v3, "SearchTimer.ResultSetProvider makeWindowFlow", v4, 2u);
  }

  v5 = v0[17];
  v27 = v0[19];
  v28 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v26 = v0[20];
  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[12];
  v21 = v0[10];
  v22 = v0[9];
  v11 = v0[8];
  v20 = v0[7];
  v23 = v0[6];
  v24 = v0[5];
  v18 = v0[11];
  v19 = v0[4];

  sub_FFAE8(11);
  sub_12363C();
  v25 = v5;
  sub_123AFC();
  (*(v10 + 8))(v8, v18);
  (*(v7 + 16))(v6, v5, v9);
  sub_12394C();
  swift_allocObject();
  sub_12393C();
  (*(v11 + 16))(v21, v19, v20);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v23;
  (*(v11 + 32))(v13 + v12, v21, v20);
  *(v13 + ((v22 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
  sub_1253DC();
  swift_allocObject();

  sub_1253CC();
  sub_123ACC();
  swift_allocObject();
  sub_12393C();
  sub_1232DC();
  swift_allocObject();
  v0[2] = sub_1232CC();
  sub_23BBC(&qword_15F910, 255, &type metadata accessor for YesNoSearchWindowStrategy, &protocol conformance descriptor for YesNoSearchWindowStrategy);
  v14 = sub_1232EC();

  v0[3] = v14;
  sub_5AE8(&qword_15F918, &qword_1273F8);
  sub_5C60(&qword_15F920, &qword_15F918, &qword_1273F8, &protocol conformance descriptor for AnyValueFlow<A>);
  v15 = sub_12343C();

  (*(v7 + 8))(v25, v9);
  (*(v27 + 8))(v26, v28);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_1CD50(uint64_t a1)
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

  return _swift_task_switch(sub_1CE6C, 0, 0);
}

uint64_t sub_1CE6C()
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
    _os_log_impl(&dword_0, v2, v3, "SearchTimer.ResultSetProvider window prompt producing rejection output", v4, 2u);
  }

  sub_12367C();
  sub_12391C();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1CFDC;
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[2];

  return sub_2F7D4(v8, v6, v7);
}

uint64_t sub_1CFDC()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 80) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_23CC4, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9();
  }
}

uint64_t sub_1D208(uint64_t a1)
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

  return _swift_task_switch(sub_1D324, 0, 0);
}

uint64_t sub_1D324()
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
    _os_log_impl(&dword_0, v2, v3, "SearchTimer.ResultSetProvider window prompt producing cancel output", v4, 2u);
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

uint64_t sub_1D494()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 80) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1D6C0, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9();
  }
}

uint64_t sub_1D6C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D730(uint64_t a1)
{
  v2 = type metadata accessor for TimerNLv3Intent(0);
  __chkstk_darwin(v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v5 = sub_125ABC();
  sub_5B30(v5, qword_15F700);
  v6 = sub_125AAC();
  v7 = sub_125DFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "SearchTimer.ResultSetProvider Window prompt parsing nlv3 ActionForInput", v8, 2u);
  }

  v9 = sub_124BCC();
  (*(*(v9 - 8) + 16))(v4, a1, v9);
  if (qword_15EF98 != -1)
  {
    swift_once();
  }

  sub_23BBC(&qword_15FFA0, 255, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
  sub_12428C();
  if (v11[15] == 3)
  {
    sub_12378C();
  }

  else
  {
    sub_12377C();
  }

  return sub_23A30(v4, type metadata accessor for TimerNLv3Intent);
}

uint64_t sub_1D974(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_5AE8(&unk_161EC0, &unk_126E20);
  v2[4] = swift_task_alloc();
  v2[5] = type metadata accessor for TimerNLv3Intent(0);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1DA40, 0, 0);
}

uint64_t sub_1DA40()
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
    _os_log_impl(&dword_0, v2, v3, "SearchTimer.ResultSetProvider Window prompt parsing nlv3 window action", v4, 2u);
  }

  v5 = *(v0 + 48);
  v6 = *(v0 + 24);

  v7 = sub_124BCC();
  (*(*(v7 - 8) + 16))(v5, v6, v7);
  if (qword_15EF98 != -1)
  {
    swift_once();
  }

  sub_23BBC(&qword_15FFA0, 255, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
  sub_12428C();
  if (*(v0 + 56) - 1 < 2)
  {
    v8 = *(v0 + 32);
    v9 = &enum case for ConfirmationResponse.rejected(_:);
LABEL_11:
    v10 = *v9;
    v11 = sub_123A1C();
    v12 = *(v11 - 8);
    (*(v12 + 104))(v8, v10, v11);
    v13 = 0;
    goto LABEL_13;
  }

  if (!*(v0 + 56))
  {
    v8 = *(v0 + 32);
    v9 = &enum case for ConfirmationResponse.confirmed(_:);
    goto LABEL_11;
  }

  v11 = sub_123A1C();
  v12 = *(v11 - 8);
  v13 = 1;
LABEL_13:
  v14 = *(v0 + 48);
  (*(v12 + 56))(*(v0 + 32), v13, 1, v11);
  sub_123C9C();
  sub_23A30(v14, type metadata accessor for TimerNLv3Intent);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1DD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DE18;

  return sub_1EEF0(a2, a3);
}

uint64_t sub_1DE18(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1DF18(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_12368C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_125ABC();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_124FFC();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_12501C();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = sub_12392C();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1E14C, 0, 0);
}

uint64_t sub_1E14C()
{
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[8], qword_15F700);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchTimer.ResultSetProvider makeFinalWindowFlow", v4, 2u);
  }

  v5 = v0[4];

  v6 = *(v5 + 56);
  if (v6 >> 62)
  {
    if (sub_1260FC() == 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) == 1)
  {
LABEL_7:
    v7 = sub_125AAC();
    v8 = sub_125DFC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "SearchTimer.ResultSetProvider Bypassing windowing flow for single item presentation", v9, 2u);
    }

    v10 = swift_task_alloc();
    v0[20] = v10;
    *v10 = v0;
    v10[1] = sub_1E438;

    return sub_11558();
  }

  v13 = v0[12];
  v12 = v0[13];
  v15 = v0[10];
  v14 = v0[11];
  v16 = v0[8];
  v17 = v0[9];
  sub_FF26C(v0[3], v0[19]);
  (*(v13 + 104))(v12, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v14);
  (*(v17 + 16))(v15, v1, v16);
  mach_absolute_time();
  sub_12502C();
  v18 = swift_task_alloc();
  v0[21] = v18;
  *v18 = v0;
  v18[1] = sub_1E5E4;
  v19 = v0[3];
  v20 = v0[2];

  return sub_1EEF0(v20, v19);
}

uint64_t sub_1E438(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1E5E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_1EA10;
  }

  else
  {
    *(v4 + 184) = a1;
    v5 = sub_1E70C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1E70C(uint64_t a1)
{
  sub_12361C();
  v2 = swift_task_alloc();
  v1[24] = v2;
  *v2 = v1;
  v2[1] = sub_1E7B8;
  v3 = v1[19];
  v4 = v1[16];
  v5 = v1[7];

  return PatternExecutionResult.generateFlow(phase:contextUpdate:measure:)(v5, v3, v4);
}

uint64_t sub_1E7B8(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 200) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_1E930, 0, 0);
}

uint64_t sub_1E930()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[25];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1EA10()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1EAE8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_5AE8(&qword_15F8F0, &qword_1273B8);
  v2[5] = swift_task_alloc();
  v3 = sub_124CCC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1EBEC, 0, 0);
}

uint64_t sub_1EBEC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_124C7C();
  sub_124C6C();
  sub_124C3C();

  sub_1254FC();

  sub_124CBC();
  v5 = sub_124CAC();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v7 = sub_125ABC();
  sub_5B30(v7, qword_15F700);
  v8 = sub_125AAC();
  v9 = sub_125DFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v5 & 1;
    _os_log_impl(&dword_0, v8, v9, "[ResultSetProvider.makeWindowingConfiguration] Using windowing configuration = %{BOOL}d", v10, 8u);
  }

  v11 = v0[3];
  if (v5)
  {
    v0[2] = v0[4];
    sub_5AE8(&qword_15F900, &qword_12A800);
    _s17ResultSetProviderCMa();
    sub_23BBC(&qword_15F908, v12, _s17ResultSetProviderCMa, &unk_1272F0);
    sub_1232BC();
    sub_123ADC();
    v13 = sub_5AE8(&qword_15F8F8, &unk_1273C0);
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  else
  {
    v14 = sub_5AE8(&qword_15F8F8, &unk_1273C0);
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1EEF0(uint64_t a1, uint64_t a2)
{
  v3[45] = a2;
  v3[46] = v2;
  v3[44] = a1;
  sub_5AE8(&unk_15F170, &unk_126E00);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = type metadata accessor for SearchForTimersHandledOtherMultiParameters(0);
  v3[50] = swift_task_alloc();

  return _swift_task_switch(sub_1EFCC, 0, 0);
}

uint64_t sub_1EFCC()
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
    _os_log_impl(&dword_0, v2, v3, "SearchTimer.ResultSetProvider executePatternForWindow", v4, 2u);
  }

  v5 = *(v0 + 368);

  v6 = *(v5 + 64);
  v7 = [v6 allAvailableTargets];
  if (v7)
  {
    v8 = v7;
    sub_1256DC();
    v9 = sub_125C6C();

    if (v9 >> 62)
    {
      v10 = sub_1260FC();
    }

    else
    {
      v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    }

    v11 = v10 > 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*(v0 + 368) + 104);
  if (v12 >> 62)
  {
    v13 = sub_1260FC();
  }

  else
  {
    v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
  }

  *(v0 + 408) = v13;
  v14 = sub_2BE74(*(v0 + 360));
  *(v0 + 416) = v14;
  sub_1257EC();
  v15 = sub_125CAC();
  v16 = sub_18324(v15);

  *(v0 + 424) = v16;
  v17 = *(*(v0 + 368) + 88);
  if (v17 >> 62)
  {
    v64 = v16;
    if (sub_1260FC())
    {
      goto LABEL_14;
    }
  }

  else
  {
    v64 = v16;
    if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_14:
      v61 = v13;
      if (qword_15F078 != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 368);
      v19 = sub_123BEC();
      *(v0 + 105) = v19 & 1;
      v20 = sub_123C0C();
      *(v0 + 106) = v20 & 1;
      v21 = sub_123BFC();
      *(v0 + 107) = v21 & 1;
      v22 = sub_123BBC();
      *(v0 + 108) = v22 & 1;
      v23 = *(v18 + 112);
      *(v0 + 109) = v23;
      *(v0 + 488) = 1;
      *(v0 + 496) = 1;
      *(v0 + 504) = 1;
      *(v0 + 110) = 1;
      *(v0 + 111) = 1;
      *(v0 + 201) = 1;
      v24 = *(v18 + 56);
      if (v24 >> 62)
      {
        v52 = v22;
        v25 = sub_1260FC();
        v22 = v52;
      }

      else
      {
        v25 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
      }

      *(v0 + 456) = v25;
      *(v0 + 16) = 1;
      *(v0 + 24) = 0;
      *(v0 + 32) = 1;
      *(v0 + 40) = v64;
      *(v0 + 48) = v61 != 0;
      *(v0 + 49) = v19 & 1;
      *(v0 + 50) = v20 & 1;
      *(v0 + 51) = v21 & 1;
      *(v0 + 52) = v22 & 1;
      *(v0 + 53) = v23;
      *(v0 + 56) = v14;
      *(v0 + 64) = 0;
      *(v0 + 72) = 1;
      *(v0 + 80) = v25;
      *(v0 + 202) = 0;
      *(v0 + 88) = 0;
      *(v0 + 96) = 0;
      *(v0 + 104) = 1;
      v26 = sub_AD3C8();
      *(v0 + 464) = v26;
      v62 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

      v27 = swift_task_alloc();
      *(v0 + 472) = v27;
      *v27 = v0;
      v27[1] = sub_1FA2C;
      v28 = 0x800000000012C7C0;
      v29 = 0xD00000000000001CLL;
      v30 = v26;
      v31 = v62;
      goto LABEL_28;
    }
  }

  v59 = v11;
  v63 = v6;
  if (qword_15F078 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 392);
  v32 = *(v0 + 400);
  v55 = sub_123BEC();
  v54 = sub_123C0C();
  v53 = sub_123BFC();
  v34 = sub_123BBC();
  v35 = v33[14];
  v36 = sub_124E4C();
  v37 = *(*(v36 - 8) + 56);
  v38 = 1;
  v58 = v35;
  v37(v32 + v35, 1, 1, v36);
  v56 = v33[16];
  v37(v32 + v56, 1, 1, v36);
  v57 = v33[17];
  v37(v32 + v57, 1, 1, v36);
  *v32 = 1;
  *(v32 + 8) = 0;
  *(v32 + 16) = 1;
  *(v32 + 24) = 0;
  *(v32 + 32) = v59;
  *(v32 + 33) = v55 & 1;
  *(v32 + 34) = v54 & 1;
  *(v32 + 35) = v53 & 1;
  *(v32 + 36) = v34 & 1;
  *(v32 + 40) = v14;
  *(v32 + 48) = 0;
  *(v32 + 56) = 1;
  v39 = v33[15];
  *(v32 + v39) = 0;
  v40 = v32 + v33[18];
  *v40 = 0;
  v60 = v40;
  *(v40 + 8) = 1;
  v41 = v32 + v33[19];
  *v41 = 0;
  *(v41 + 8) = 1;
  v42 = [v63 label];
  if (v42)
  {
    v43 = v42;
    sub_125B9C();

    sub_125BCC();

    v38 = 0;
  }

  v45 = *(v0 + 376);
  v44 = *(v0 + 384);
  v46 = *(v0 + 368);
  v37(v44, v38, 1, v36);
  sub_22A1C(v44, v32 + v56);
  *(v32 + v39) = sub_FE18();
  [v63 type];
  sub_12588C();
  v37(v45, 0, 1, v36);
  sub_22A1C(v45, v32 + v57);
  [v63 state];
  sub_1258AC();
  v37(v45, 0, 1, v36);
  sub_22A1C(v45, v32 + v58);
  v47 = *(v46 + 56);
  if (v47 >> 62)
  {
    v48 = sub_1260FC();
  }

  else
  {
    v48 = *(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8));
  }

  *v60 = v48;
  *(v60 + 8) = 0;
  *(v32 + 24) = v64;

  v49 = sub_AD73C();
  *(v0 + 432) = v49;
  v65 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v50 = swift_task_alloc();
  *(v0 + 440) = v50;
  *v50 = v0;
  v50[1] = sub_1F798;
  v29 = 0xD000000000000021;
  v28 = 0x800000000012C7E0;
  v30 = v49;
  v31 = v65;
LABEL_28:

  return v31(v29, v28, v30);
}