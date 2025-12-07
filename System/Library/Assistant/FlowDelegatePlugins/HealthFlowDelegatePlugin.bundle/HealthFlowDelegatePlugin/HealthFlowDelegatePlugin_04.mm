uint64_t sub_68470(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *), uint64_t a9, uint64_t a10)
{
  v65[1] = a2;
  v69 = a9;
  v70 = a8;
  v68 = sub_73720();
  sub_5394();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_C2A4();
  v18 = v17 - v16;
  v19 = sub_506C(&qword_A3F98, qword_75450);
  __chkstk_darwin(v19 - 8);
  sub_198CC();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  v25 = v65 - v24;
  v26 = sub_506C(&unk_A6CD0, &unk_75B80);
  __chkstk_darwin(v26 - 8);
  v28 = v65 - v27;
  sub_721F0();
  sub_5394();
  v66 = v30;
  v67 = v29;
  __chkstk_darwin(v29);
  sub_C2A4();
  v33 = v32 - v31;

  v34 = sub_453DC(a3, a4);
  if (v34 == 5)
  {
    v35 = type metadata accessor for HealthFlowError();
    swift_allocObject();
    v36 = sub_B5BC(2);
    v37 = sub_736E0();
    swift_beginAccess();
    (*(v14 + 16))(v18, v37, v68);

    v38 = sub_73710();
    v39 = sub_73980();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v67 = sub_14F88();
      v71[0] = v67;
      *v40 = 136315394;
      v42 = sub_73ED0();
      v44 = sub_19144(v42, v43, v71);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2112;
      sub_68EAC();
      v47 = sub_68D38(v45, v46, &unk_7567C);
      sub_14F2C(v35, v47);
      *v48 = v36;

      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v49;
      *v41 = v49;
      _os_log_impl(&dword_0, v38, v39, "%s Error: %@", v40, 0x16u);
      sub_10364(v41, &qword_A4060, &qword_75440);
      sub_7EBC(v41);
      v50 = v67;
      sub_AE38(v67);
      sub_7EBC(v50);
      sub_7EBC(v40);
    }

    (*(v14 + 8))(v18, v68);
    sub_68EAC();
    v53 = sub_68D38(v51, v52, &unk_7567C);
    v54 = sub_14F2C(v35, v53);
    *v55 = v36;
    v71[0] = v54;
    v74 = 1;

    v70(v71);

    return sub_10364(v71, &qword_A4810, &unk_760A0);
  }

  else
  {
    v57 = v34;
    sub_37918(v34);
    sub_21FC0(v10, v71);
    v58 = v72;
    v59 = v73;
    v68 = sub_7C78(v71, v72);
    sub_45428(v57);
    sub_737F0();

    v60 = sub_73350();
    v61 = 1;
    sub_7CC4(v25, 0, 1, v60);
    v62 = (*(*(a10 + 32) + 24))(*(a10 + 16));
    if (v62)
    {
      v63 = v62;
      sub_739A0();

      v61 = 0;
    }

    sub_7CC4(v22, v61, 1, v60);
    (*(v59 + 8))(v25, v22, v58, v59);
    sub_10364(v22, &qword_A3F98, qword_75450);
    sub_10364(v25, &qword_A3F98, qword_75450);
    v64 = sub_AE38(v71);
    __chkstk_darwin(v64);
    v65[-2] = v33;
    sub_541F4(sub_68CDC, v71);
    v70(v71);
    sub_10364(v71, &qword_A4810, &unk_760A0);
    sub_10364(v28, &unk_A6CD0, &unk_75B80);
    return (*(v66 + 8))(v33, v67);
  }
}

uint64_t sub_68A68@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_506C(&qword_A4050, &unk_75290);
  __chkstk_darwin(v5 - 8);
  v7 = v11 - v6;
  sub_72840();
  sub_72840();
  sub_7C78(v13, v13[3]);
  sub_71ED0();
  v8 = sub_721F0();
  (*(*(v8 - 8) + 16))(v7, a2, v8);
  sub_7CC4(v7, 0, 1, v8);
  v9 = sub_72890();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  a3[3] = v9;
  a3[4] = &protocol witness table for AceOutput;
  sub_5BAC(a3);
  sub_720E0();
  sub_10364(v11, &unk_A6D20, &qword_76D80);
  sub_10364(v7, &qword_A4050, &unk_75290);
  sub_AE38(v14);
  return sub_AE38(v13);
}

unint64_t sub_68CE4()
{
  result = qword_A8090;
  if (!qword_A8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A8090);
  }

  return result;
}

uint64_t sub_68D38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for WorkoutsConfirmSlotError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x68E1CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_68E58()
{
  result = qword_A8098;
  if (!qword_A8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A8098);
  }

  return result;
}

uint64_t sub_68EDC(uint64_t a1, void *a2)
{
  *a2 = v2;
  **(v3 - 192) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_68F50()
{

  return sub_7CC4(v1, 0, 1, v0);
}

void *sub_68FD0()
{
  sub_506C(&qword_A3FA0, qword_74FD0);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_772F0;
  *(v1 + 32) = 0x6E69577473726966;
  *(v1 + 40) = 0xEF657A6953776F64;
  if (*(v0 + 8))
  {
    v3 = 0;
    v4 = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  else
  {
    v3 = *v0;
    v4 = &type metadata for Double;
  }

  *(v1 + 48) = v3;
  *(v1 + 72) = v4;
  strcpy((v1 + 80), "isConclusion");
  *(v1 + 93) = 0;
  *(v1 + 94) = -5120;
  *(v1 + 96) = *(v0 + 9);
  *(v1 + 120) = &type metadata for Bool;
  strcpy((v1 + 128), "isFirstWindow");
  *(v1 + 142) = -4864;
  *(v1 + 144) = *(v0 + 10);
  *(v1 + 168) = &type metadata for Bool;
  strcpy((v1 + 176), "isLastWindow");
  *(v1 + 189) = 0;
  *(v1 + 190) = -5120;
  *(v1 + 192) = *(v0 + 11);
  *(v1 + 216) = &type metadata for Bool;
  *(v1 + 224) = 0xD000000000000016;
  *(v1 + 232) = 0x800000000007DDB0;
  *(v1 + 240) = *(v0 + 12);
  *(v1 + 264) = &type metadata for Bool;
  *(v1 + 272) = 0x736D657469;
  *(v1 + 280) = 0xE500000000000000;
  v5 = *(v0 + 16);
  v6 = sub_506C(&qword_A5998, &qword_77460);
  v2[36] = v5;
  v2[39] = v6;
  v2[40] = 0xD000000000000013;
  v2[41] = 0x800000000007DDD0;
  if (*(v0 + 32))
  {
    v7 = 0;
    v8 = 0;
    v2[43] = 0;
    v2[44] = 0;
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = &type metadata for Double;
  }

  v2[42] = v7;
  v2[45] = v8;
  v2[46] = 0x6574496C61746F74;
  v2[47] = 0xEA0000000000736DLL;
  if (*(v0 + 48))
  {
    v9 = 0;
    v10 = 0;
    v2[49] = 0;
    v2[50] = 0;
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = &type metadata for Double;
  }

  v2[48] = v9;
  v2[51] = v10;
  v2[52] = 0x6953776F646E6977;
  v2[53] = 0xEA0000000000657ALL;
  if (*(v0 + 64))
  {
    v11 = 0;
    v12 = 0;
    v2[55] = 0;
    v2[56] = 0;
  }

  else
  {
    v11 = *(v0 + 56);
    v12 = &type metadata for Double;
  }

  v2[54] = v11;
  v2[57] = v12;
  sub_6AA2C(v0, v14);
  return v2;
}

uint64_t sub_69248()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v1);
  sub_303DC();
  __chkstk_darwin(v2);
  v4 = &v19 - v3;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v5 = swift_allocObject();
  sub_302B0(v5, xmmword_77300);
  sub_3039C();
  sub_5AEC(v6, v7, v8, qword_75450);
  v9 = sub_73350();
  if (sub_5124(v4, 1, v9) == 1)
  {
    sub_5B50(v4, &qword_A3F98, qword_75450);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v9;
    sub_5BAC((v5 + 48));
    sub_5C0C();
    sub_3039C();
    v10();
  }

  *(v5 + 80) = 0x656369766564;
  *(v5 + 88) = 0xE600000000000000;
  v11 = type metadata accessor for WorkoutPauseErrorWithCodeParameters(0);
  v12 = *(v0 + *(v11 + 20));
  if (v12)
  {
    v13 = sub_73360();
    v14 = v12;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  *(v5 + 96) = v14;
  *(v5 + 120) = v13;
  *(v5 + 128) = 0x646F43726F727265;
  *(v5 + 136) = 0xE900000000000065;
  v15 = (v0 + *(v11 + 24));
  if (v15[1])
  {
    v16 = 0;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
    v17 = 0;
  }

  else
  {
    v17 = *v15;
    v16 = &type metadata for Double;
  }

  *(v5 + 144) = v17;
  *(v5 + 168) = v16;

  return v5;
}

uint64_t sub_6942C()
{
  v1 = v0;
  v2 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v2);
  sub_303DC();
  __chkstk_darwin(v3);
  v5 = &v10 - v4;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v6 = swift_allocObject();
  sub_302B0(v6, xmmword_74B40);
  sub_5AEC(v1, v5, &qword_A3F98, qword_75450);
  v7 = sub_73350();
  if (sub_5124(v5, 1, v7) == 1)
  {
    sub_5B50(v5, &qword_A3F98, qword_75450);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v7;
    sub_5BAC((v6 + 48));
    sub_5C0C();
    (*(v8 + 32))();
  }

  return v6;
}

uint64_t sub_69574()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v1);
  sub_303DC();
  __chkstk_darwin(v2);
  v4 = &v14 - v3;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v5 = swift_allocObject();
  sub_302B0(v5, xmmword_77300);
  sub_3039C();
  sub_5AEC(v6, v7, v8, qword_75450);
  v9 = sub_73350();
  if (sub_5124(v4, 1, v9) == 1)
  {
    sub_5B50(v4, &qword_A3F98, qword_75450);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v9;
    sub_5BAC((v5 + 48));
    sub_5C0C();
    sub_3039C();
    v10();
  }

  *(v5 + 80) = 0x5074737269467369;
  *(v5 + 88) = 0xEF70704179747261;
  v11 = type metadata accessor for WorkoutPauseIntentHandledResponseParameters(0);
  *(v5 + 96) = *(v0 + *(v11 + 20));
  *(v5 + 120) = &type metadata for Bool;
  strcpy((v5 + 128), "isPunchingOut");
  *(v5 + 142) = -4864;
  v12 = *(v0 + *(v11 + 24));
  *(v5 + 168) = &type metadata for Bool;
  *(v5 + 144) = v12;
  return v5;
}

uint64_t sub_69728()
{
  sub_7F1C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for WorkoutPauseErrorWithCodeParameters(0);
  v1[5] = v4;
  sub_B1C0(v4);
  v1[6] = sub_7ED4();
  v5 = sub_221BC();

  return _swift_task_switch(v5);
}

uint64_t sub_697A8()
{
  sub_303D0();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v4 = sub_73350();
  sub_7CC4(v1, 1, 1, v4);
  *(v1 + *(v2 + 20)) = 0;
  v5 = v1 + *(v2 + 24);
  *v5 = 0;
  *(v5 + 8) = 1;
  v3(v1);
  sub_6AB78();
  v0[7] = sub_69248();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v10 = v6;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  sub_30354(v7);
  v8 = sub_6AB6C(26);

  return v10(v8);
}

uint64_t sub_698B4()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_44428();
  *v5 = v4;
  v6 = *v2;
  sub_B044();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_6AB00();

  return _swift_task_switch(v8);
}

uint64_t sub_699DC()
{
  sub_7F1C();
  sub_6AAA8();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_69A38()
{
  sub_7F1C();
  sub_6AAA8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_69A9C()
{
  sub_7F1C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for WorkoutPauseUnsupportedSlotValueParameters(0);
  sub_B1C0(v4);
  v1[5] = sub_7ED4();
  v5 = sub_221BC();

  return _swift_task_switch(v5);
}

uint64_t sub_69B18()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_73350();
  sub_6AB10(v3);
  v2(v1);
  sub_6AB78();
  v0[6] = sub_6942C();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v8 = v4;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  sub_30354(v5);
  v6 = sub_6AB6C(33);

  return v8(v6);
}

uint64_t sub_69BF4()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_44428();
  *v5 = v4;
  v6 = *v2;
  sub_B044();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  sub_6AB00();

  return _swift_task_switch(v8);
}

uint64_t sub_69D1C()
{
  sub_7F1C();
  sub_6AA7C();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_69D84()
{
  sub_7F1C();
  sub_6AA7C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_69DE8()
{
  sub_7F1C();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 89) = v4;
  *(v1 + 88) = v5;
  v6 = type metadata accessor for WorkoutPauseIntentHandledResponseParameters(0);
  *(v1 + 40) = v6;
  sub_B1C0(v6);
  *(v1 + 48) = sub_7ED4();
  v7 = sub_221BC();

  return _swift_task_switch(v7);
}

uint64_t sub_69E70()
{
  v2 = sub_6AB48();
  sub_6AB10(v2);
  v3 = sub_6AB30();
  v1(v3);
  sub_6AB78();
  *(v0 + 56) = sub_69574();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v8 = v4;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  sub_30354(v5);
  v6 = sub_6AB6C(34);

  return v8(v6);
}

uint64_t sub_69F4C()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_44428();
  *v5 = v4;
  v6 = *v2;
  sub_B044();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_6AB00();

  return _swift_task_switch(v8);
}

uint64_t sub_6A074()
{
  sub_7F1C();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 89) = v4;
  *(v1 + 88) = v5;
  v6 = type metadata accessor for WorkoutPauseIntentHandledResponseParameters(0);
  *(v1 + 40) = v6;
  sub_B1C0(v6);
  *(v1 + 48) = sub_7ED4();
  v7 = sub_221BC();

  return _swift_task_switch(v7);
}

uint64_t sub_6A0FC()
{
  v2 = sub_6AB48();
  sub_6AB10(v2);
  v3 = sub_6AB30();
  v1(v3);
  sub_6AB78();
  *(v0 + 56) = sub_69574();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v8 = v4;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  sub_30354(v5);
  v6 = sub_6AB6C(26);

  return v8(v6);
}

uint64_t sub_6A1D8()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_44428();
  *v5 = v4;
  v6 = *v2;
  sub_B044();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_6AB00();

  return _swift_task_switch(v8);
}

uint64_t sub_6A300()
{
  sub_7F1C();
  sub_6AAD4();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_6A35C()
{
  sub_7F1C();
  sub_6AAD4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6A414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_73390();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = sub_506C(&qword_A3F90, &unk_74FC0);
  sub_B1C0(v7);
  sub_303DC();
  __chkstk_darwin(v8);
  sub_5AEC(a1, &v13 - v9, &qword_A3F90, &unk_74FC0);
  sub_3039C();
  v10();
  v11 = sub_73290();
  (*(v6 + 8))(a2, v5);
  sub_5B50(a1, &qword_A3F90, &unk_74FC0);
  return v11;
}

uint64_t sub_6A5DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_5C0C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_6A66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v7 + 84) == a2)
  {

    return sub_5124(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_6A740(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_303C4();
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_30368();

    sub_7CC4(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4;
  }
}

uint64_t sub_6A7F4()
{
  sub_303C4();
  v2 = sub_506C(&qword_A3F98, qword_75450);

  return sub_5124(v1, v0, v2);
}

uint64_t sub_6A858()
{
  sub_303C4();
  sub_506C(&qword_A3F98, qword_75450);
  v0 = sub_30368();

  return sub_7CC4(v0, v1, v2, v3);
}

uint64_t sub_6A8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v7 + 84) == a2)
  {

    return sub_5124(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2)
    {
      return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_6A98C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_303C4();
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_30368();

    sub_7CC4(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }
}

uint64_t sub_6AA7C()
{
  v2 = *(v0 + 40);

  return sub_6A5DC(v2, type metadata accessor for WorkoutPauseUnsupportedSlotValueParameters);
}

uint64_t sub_6AAA8()
{
  v2 = *(v0 + 48);

  return sub_6A5DC(v2, type metadata accessor for WorkoutPauseErrorWithCodeParameters);
}

uint64_t sub_6AAD4()
{
  v2 = *(v0 + 48);

  return sub_6A5DC(v2, type metadata accessor for WorkoutPauseIntentHandledResponseParameters);
}

uint64_t sub_6AB10(uint64_t a1)
{

  return sub_7CC4(v1, 1, 1, a1);
}

uint64_t sub_6AB30()
{
  *(v0 + *(v1 + 20)) = v3;
  *(v0 + *(v1 + 24)) = v2;
  return v0;
}

uint64_t sub_6AB48()
{

  return sub_73350();
}

uint64_t sub_6AB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_72820();
    v9 = a1 + *(a3 + 44);

    return sub_5124(v9, a2, v8);
  }
}

uint64_t sub_6AC34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_72820();
    v8 = v5 + *(a4 + 44);

    return sub_7CC4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DirectInvocationData(uint64_t a1)
{
  result = qword_A8308;
  if (!qword_A8308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6AD00(uint64_t a1)
{
  sub_6ADF8(319, &qword_A8318);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_6ADF8(319, &qword_A8320);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_6AE44(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = sub_72820();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_6ADF8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_73A90();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_6AE44(uint64_t a1)
{
  if (!qword_A8328)
  {
    sub_ADF8(255, &qword_A7778, INWorkoutAssociatedItem_ptr);
    v1 = sub_738D0();
    if (!v2)
    {
      atomic_store(v1, &qword_A8328);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for WorkoutVerb(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x6AF78);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_6AFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_72830();
  sub_5394();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_C2A4();
  v10 = v9 - v8;
  v11 = sub_72820();
  sub_5394();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_C2A4();
  v17 = (v16 - v15);
  v18 = type metadata accessor for DirectInvocationData(0);
  __chkstk_darwin(v18);
  sub_C2A4();
  v21 = v20 - v19;
  (*(v6 + 16))(v10, a1, v4);
  if ((*(v6 + 88))(v10, v4) != enum case for Parse.directInvocation(_:))
  {
    v33 = *(v6 + 8);
    v33(a1, v4);
    v33(v10, v4);
    return sub_7CC4(a2, 1, 1, v18);
  }

  v96 = a1;
  (*(v6 + 96))(v10, v4);
  (*(v13 + 32))(v17, v10, v11);
  v22 = *(v18 + 44);
  (*(v13 + 16))(v21 + v22, v17, v11);
  if (!sub_72810())
  {
    v34 = sub_6D754();
    v35(v34);
    v36 = v17;
    v17 = *(v13 + 8);
    (v17)(v36, v11);
    sub_6D788();
LABEL_12:
    sub_2E308(&v100);
LABEL_31:
    (v17)(v21 + v22, v11);
    return sub_7CC4(a2, 1, 1, v18);
  }

  v97 = v17;
  sub_6D890(0x5674756F6B726F77, 0xEB00000000627265);

  if (!v101)
  {
    v37 = sub_6D754();
    v38(v37);
    v39 = sub_6D7F0();
    (v17)(v39);
    goto LABEL_12;
  }

  v17 = &type metadata for Any;
  if ((sub_6D724(v23, v24, v25, &type metadata for String) & 1) == 0)
  {
    v40 = sub_6D754();
    v41(v40);
    v42 = sub_6D7F0();
    type metadata for Any(v42);
    goto LABEL_31;
  }

  v93 = v11;
  v94 = v13;
  if (sub_72810())
  {
    sub_6D800("workoutProgramName");

    sub_6D724(v26, v27, v28, &type metadata for String);
    sub_6D764();
    if (v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = v30;
    }
  }

  else
  {
    sub_6D788();
    sub_2E308(&v100);
    v29 = 0;
    v32 = 0;
  }

  *v21 = v29;
  *(v21 + 8) = v32;
  v95 = v21;
  if (!sub_72810())
  {
    sub_6D788();
    goto LABEL_21;
  }

  sub_6D800("workoutTrainerName");

  if (!v101)
  {
LABEL_21:
    sub_2E308(&v100);
    v46 = 0;
    v48 = 0;
    goto LABEL_22;
  }

  sub_6D724(v43, v44, v45, &type metadata for String);
  sub_6D764();
  if (v31)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

LABEL_22:
  *(v21 + 16) = v46;
  *(v21 + 24) = v48;
  if (!sub_72810())
  {
    sub_6D788();
    goto LABEL_28;
  }

  v49 = sub_6D774();
  sub_6D890(v49 & 0xFFFFFFFFFFFFLL | 0x4E74000000000000, 0xEB000000006E756FLL);

  if (!v101)
  {
LABEL_28:
    sub_2E308(&v100);
    v53 = 0;
    v55 = 0;
    goto LABEL_29;
  }

  sub_6D724(v50, v51, v52, &type metadata for String);
  sub_6D764();
  if (v31)
  {
    v55 = 0;
  }

  else
  {
    v55 = v54;
  }

LABEL_29:
  *(v21 + 72) = v53;
  *(v21 + 80) = v55;
  v56 = sub_6D128(v98, v99);
  if (v56 == 5)
  {
    v57 = sub_6D754();
    v58(v57);
    v59 = sub_6D7F0();
    type metadata for Any(v59);

    goto LABEL_31;
  }

  *(v21 + 48) = v56;
  if (!sub_72810())
  {
    sub_6D788();
    v65 = v94;
    goto LABEL_39;
  }

  v61 = sub_6D774();
  sub_6D890(v61 & 0xFFFFFFFFFFFFLL | 0x5374000000000000, 0xEF65636E65757165);

  v65 = v94;
  if (!v101)
  {
LABEL_39:
    sub_2E308(&v100);
    v66 = 0;
    v67 = 0;
    goto LABEL_40;
  }

  sub_6D724(v62, v63, v64, &type metadata for String);
  sub_6D764();
  if (v31)
  {
    v67 = 0;
  }

LABEL_40:
  *(v21 + 56) = v66;
  *(v21 + 64) = v67;
  if (!sub_72810())
  {
    sub_6D788();
    goto LABEL_45;
  }

  v68 = sub_6D774();
  sub_6D890(v68 & 0xFFFFFFFFFFFFLL | 0x4174000000000000, 0xEF79746976697463);

  if (!v101)
  {
LABEL_45:
    sub_2E308(&v100);
    goto LABEL_46;
  }

  if (sub_6D724(v69, v70, v71, &type metadata for String))
  {
    v72 = sub_12460(v98, v99);
    goto LABEL_47;
  }

LABEL_46:
  v72 = 87;
LABEL_47:
  *(v21 + 32) = v72;
  v73 = sub_72810();
  if (!v73)
  {
    sub_6D788();
    goto LABEL_63;
  }

  sub_6CDBC(0xD000000000000011, 0x800000000007F760, v73, &v100);

  if (!v101)
  {
LABEL_63:
    sub_2E308(&v100);
LABEL_64:
    (*(v6 + 8))(v96, v4);
    (*(v65 + 8))(v97, v11);
LABEL_65:
    *(v21 + 40) = _swiftEmptyArrayStorage;
    sub_6D664(v21, a2);
    sub_7CC4(a2, 0, 1, v18);
    return sub_6D6C8(v21);
  }

  v74 = sub_506C(&qword_A4B20, &unk_75EA0);
  result = sub_6D724(v74, v75, v76, v74);
  if ((result & 1) == 0)
  {
    goto LABEL_64;
  }

  v90 = v18;
  v91 = a2;
  v77 = 0;
  v78 = v97;
  v92 = *(v98 + 16);
  v79 = v98 + 40;
LABEL_51:
  v80 = (v79 + 16 * v77);
  while (1)
  {
    if (v92 == v77)
    {

      v88 = sub_6D754();
      v89(v88);
      (*(v65 + 8))(v78, v11);
      v18 = v90;
      a2 = v91;
      goto LABEL_65;
    }

    if (v77 >= *(v98 + 16))
    {
      break;
    }

    v81 = *v80;
    *&v100 = *(v80 - 1);
    *(&v100 + 1) = v81;
    sub_10414();

    if (*(sub_73AF0() + 16))
    {

      v82 = sub_737E0();
      v84 = v83;
      v11 = v93;

      v85 = objc_allocWithZone(INWorkoutAssociatedItem);
      v86 = v82;
      v78 = v97;
      v87 = sub_6D29C(5, v86, v84, 0, 0);

      if (v87)
      {
        sub_73850();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_73890();
        }

        ++v77;
        result = sub_738C0();
        v65 = v94;
        v21 = v95;
        v79 = v98 + 40;
        goto LABEL_51;
      }
    }

    else
    {
    }

    v80 += 2;
    ++v77;
    v65 = v94;
    v21 = v95;
  }

  __break(1u);
  return result;
}

void sub_6B824(void *a1@<X8>)
{
  switch(*(v1 + 48))
  {
    case 1:
      v13 = sub_6D560(v1);
      v4 = [objc_allocWithZone(INEndWorkoutIntent) initWithWorkoutName:v13];

      v3 = sub_6D878(v14, &qword_A4418);
      v6 = &off_9A868;
      break;
    case 2:
      v9 = sub_6D560(v1);
      v4 = [objc_allocWithZone(INPauseWorkoutIntent) initWithWorkoutName:v9];

      v3 = sub_6D878(v10, &qword_A4498);
      v6 = &off_9A878;
      break;
    case 3:
      v11 = sub_6D560(v1);
      v4 = [objc_allocWithZone(INCancelWorkoutIntent) initWithWorkoutName:v11];

      v3 = sub_6D878(v12, &qword_A4578);
      v6 = &off_9A870;
      break;
    case 4:
      v7 = sub_6D560(v1);
      v4 = [objc_allocWithZone(INResumeWorkoutIntent) initWithWorkoutName:v7];

      v3 = sub_6D878(v8, &qword_A3BA0);
      v6 = &off_9A880;
      break;
    default:
      v3 = sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
      sub_6D560(v1);
      sub_6D864();
      v4 = sub_739F0();
      sub_ADF8(0, &qword_A7778, INWorkoutAssociatedItem_ptr);
      isa = sub_73860().super.isa;
      [v4 setAssociatedItems:isa];

      v6 = &off_9A860;
      break;
  }

  a1[3] = v3;
  a1[4] = v6;
  *a1 = v4;
}

Swift::Int sub_6BA6C(uint64_t a1)
{
  v1 = a1;
  sub_6D84C(a1);
  sub_73E50(qword_7B690[v1]);
  return sub_73E60();
}

Swift::Int sub_6BB0C(uint64_t a1)
{
  v1 = a1;
  sub_6D84C(a1);
  sub_73E50(v1);
  return sub_73E60();
}

Swift::Int sub_6BB70(uint64_t a1)
{
  v1 = sub_6D84C(a1);
  sub_6D7B4(v1);
  return sub_73E60();
}

Swift::Int sub_6BBA4(uint64_t a1)
{
  v1 = a1;
  sub_6D84C(a1);
  sub_6C1A0(v3, v1);
  return sub_73E60();
}

Swift::Int sub_6BC14(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_6D84C(a1);
  v4 = a2(a1);
  sub_6D828(v4, v5, v6);

  return sub_73E60();
}

Swift::Int sub_6BC64(Swift::UInt a1)
{
  sub_6D84C(a1);
  sub_73E50(a1);
  return sub_73E60();
}

uint64_t sub_6BCCC(uint64_t a1, char a2)
{
  sub_73810();
}

uint64_t sub_6BDC4(uint64_t a1, char a2)
{
  sub_73810();
}

uint64_t sub_6BEAC(uint64_t a1, char a2)
{
  sub_73810();
}

uint64_t sub_6BF74(uint64_t a1, char a2)
{
  sub_73810();
}

uint64_t sub_6C040(uint64_t a1, char a2)
{
  sub_73810();
}

uint64_t sub_6C1A0(uint64_t a1, char a2)
{
  sub_73810();
}

uint64_t sub_6C278(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  sub_73810();
}

uint64_t sub_6C2D0(uint64_t a1, unsigned __int8 a2)
{
  sub_73810();
}

Swift::Int sub_6C344(uint64_t a1, char a2)
{
  sub_73E40();
  sub_73810();

  return sub_73E60();
}

Swift::Int sub_6C3E4(uint64_t a1, char a2)
{
  sub_73E40();
  sub_6C1A0(v4, a2);
  return sub_73E60();
}

Swift::Int sub_6C428(uint64_t a1)
{
  v1 = sub_73E40();
  sub_6D7B4(v1);
  return sub_73E60();
}

Swift::Int sub_6C4C0(uint64_t a1, char a2)
{
  sub_73E40();
  sub_73E50(qword_7B690[a2]);
  return sub_73E60();
}

Swift::Int sub_6C510(uint64_t a1, char a2)
{
  sub_73E40();
  sub_73810();

  return sub_73E60();
}

Swift::Int sub_6C5A4(uint64_t a1, unsigned __int8 a2)
{
  sub_73E40();
  sub_73E50(a2);
  return sub_73E60();
}

Swift::Int sub_6C600(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_73E40();
  v5 = a3(a2);
  sub_6D828(v5, v6, v7);

  return sub_73E60();
}

Swift::Int sub_6C654(uint64_t a1, Swift::UInt a2)
{
  sub_73E40();
  sub_73E50(a2);
  return sub_73E60();
}

uint64_t sub_6C698(char a1)
{
  result = 0x7472617473;
  switch(a1)
  {
    case 1:
      result = 6581861;
      break;
    case 2:
      result = 0x6573756170;
      break;
    case 3:
      result = 0x6C65636E6163;
      break;
    case 4:
      result = 0x656D75736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_6C72C@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = sub_506C(&qword_A8378, &qword_7B668);
  __chkstk_darwin(v2 - 8);
  v69 = &v60 - v3;
  v4 = sub_506C(&qword_A8380, &qword_7B670);
  __chkstk_darwin(v4 - 8);
  v66 = &v60 - v5;
  sub_72E60();
  sub_5394();
  v67 = v7;
  v68 = v6;
  __chkstk_darwin(v6);
  sub_198CC();
  v65 = v8 - v9;
  __chkstk_darwin(v10);
  v64 = &v60 - v11;
  v63 = sub_72E00();
  v12 = *(v63 - 8);
  __chkstk_darwin(v63);
  sub_198CC();
  v61 = v13 - v14;
  __chkstk_darwin(v15);
  v60 = &v60 - v16;
  v17 = sub_506C(qword_A8388, &qword_7B678);
  __chkstk_darwin(v17 - 8);
  sub_198CC();
  v20 = (v18 - v19);
  __chkstk_darwin(v21);
  v23 = (&v60 - v22);
  sub_506C(&qword_A4650, &unk_7B680);
  v24 = *(v12 + 72);
  v71 = v12;
  v72 = v24;
  v25 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_74F60;
  *v23 = sub_6C698(*(v1 + 48));
  v23[1] = v27;
  v28 = enum case for TerminalElement.Value.string(_:);
  v29 = sub_72D50();
  v30 = *(*(v29 - 8) + 104);
  v31 = sub_6D7E0();
  v30(v31);
  sub_6D794();
  sub_6D744();
  sub_72DF0();
  v32 = *(v1 + 32);
  v62 = v25;
  if (v32 == 87)
  {
    v33 = 0xE500000000000000;
    v34 = 0x726568746FLL;
  }

  else
  {
    v34 = sub_124B4(v32);
  }

  *v20 = v34;
  v20[1] = v33;
  (v30)(v20, v28, v29);
  sub_7CC4(v20, 0, 1, v29);
  sub_6D744();
  v35 = v72;
  sub_72DF0();
  v36 = *(v1 + 64);
  if (v36)
  {
    v37 = 2 * v35;
    *v23 = *(v1 + 56);
    v23[1] = v36;
    v38 = sub_6D7E0();
    v30(v38);
    sub_6D794();

    sub_6D744();
    v39 = v60;
    sub_72DF0();
    sub_FFB4();
    v26 = v40;
    *(v40 + 16) = 3;
    v41 = v62;
    v42 = v40 + v62 + v37;
    v43 = v63;
    (*(v71 + 32))(v42, v39, v63);
  }

  else
  {
    v41 = v62;
    v43 = v63;
  }

  v44 = *(v1 + 80);
  if (v44)
  {
    *v23 = *(v1 + 72);
    v23[1] = v44;
    v45 = sub_6D7E0();
    v30(v45);
    sub_6D794();

    sub_6D744();
    v46 = v61;
    sub_72DF0();
    v47 = *(v26 + 16);
    if (v47 >= *(v26 + 24) >> 1)
    {
      sub_FFB4();
      v26 = v59;
    }

    v48 = v71;
    v49 = v72;
    *(v26 + 16) = v47 + 1;
    (*(v48 + 32))(v26 + v41 + v47 * v49, v46, v43);
  }

  sub_6CE20(v26);

  sub_6D744();
  v50 = v64;
  sub_72E50();
  v51 = v65;
  sub_72E40();
  v52 = v68;
  v73[3] = v68;
  v73[4] = &protocol witness table for NonTerminalIntentNode;
  v53 = sub_5BAC(v73);
  v54 = v67;
  (*(v67 + 16))(v53, v51, v52);
  v55 = sub_73150();
  sub_7CC4(v66, 1, 1, v55);
  v56 = sub_72E70();
  sub_7CC4(v69, 1, 1, v56);
  sub_6D864();
  sub_731C0();
  v57 = *(v54 + 8);
  v57(v51, v52);
  return (v57)(v50, v52);
}

double sub_6CDBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_6D330(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_14E68(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void *sub_6CE20(uint64_t a1)
{
  v2 = sub_72E00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_40280();
    v7 = v20;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v16 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v20 = v7;
      v12 = v7[2];
      if (v12 >= v7[3] >> 1)
      {
        sub_40280();
      }

      v18 = v2;
      v19 = &protocol witness table for TerminalIntentNode;
      v13 = sub_5BAC(&v17);
      v9(v13, v5, v2);
      v7 = v20;
      v20[2] = v12 + 1;
      sub_D8D8(&v17, &v7[5 * v12 + 4]);
      (*(v8 - 8))(v5, v2);
      v11 += v16;
      --v6;
    }

    while (v6);
  }

  return v7;
}

unint64_t sub_6CFEC(char a1)
{
  result = 0x5374756F6B726F77;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x4174756F6B726F77;
      break;
    case 5:
      result = 0x5674756F6B726F77;
      break;
    case 6:
      result = 0x4E74756F6B726F77;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

unint64_t sub_6D128(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_97B28;
  v6._object = a2;
  v4 = sub_73CE0(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_6D1E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_6D128(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_6D218@<X0>(uint64_t *a1@<X8>)
{
  result = sub_6C698(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_6D248()
{
  result = qword_A8370;
  if (!qword_A8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A8370);
  }

  return result;
}

id sub_6D29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  if (a3)
  {
    v10 = sub_73780();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithItemLabel:a1 itemID:v10 contentRating:a4 itemName:a5];

  return v11;
}

unint64_t sub_6D330(uint64_t a1, uint64_t a2)
{
  sub_73E40();
  sub_73810();
  v4 = sub_73E60();

  return sub_6D3EC(a1, a2, v4);
}

unint64_t sub_6D3A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_73A30(*(v2 + 40));

  return sub_6D4A0(a1, v4);
}

unint64_t sub_6D3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_73DB0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_6D4A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_735B0();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_73A40();

    if (v8)
    {
      break;
    }
  }

  return i;
}

id sub_6D560(uint64_t a1)
{
  v14 = type metadata accessor for DirectInvocationData(0);
  v15 = &off_9A918;
  v2 = sub_5BAC(v13);
  sub_6D664(a1, v2);
  v3 = *(sub_7C78(v13, v14) + 32);
  if (v3 == 87)
  {
    v4 = 13;
  }

  else
  {
    v4 = v3;
  }

  v5 = sub_123E0(v4);
  v7 = v6;
  v8 = sub_7C78(v13, v14);
  if (v8[1])
  {
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    v10 = 0xE700000000000000;
    v9 = 0x74756F6B726F57;
  }

  objc_allocWithZone(INSpeakableString);

  v11 = sub_5ED24(v5, v7, v9, v10, 0, 0);
  sub_AE38(v13);
  return v11;
}

uint64_t sub_6D664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectInvocationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6D6C8(uint64_t a1)
{
  v2 = type metadata accessor for DirectInvocationData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6D724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

double sub_6D788()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

uint64_t sub_6D794()
{

  return sub_7CC4(v0, 0, 1, v1);
}

uint64_t sub_6D7B4(uint64_t a1, ...)
{

  return sub_73810();
}

double sub_6D800@<D0>(uint64_t a1@<X8>)
{

  return sub_6CDBC(0xD000000000000012, (a1 - 32) | 0x8000000000000000, v1, (v2 - 112));
}

uint64_t sub_6D828(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_73810();
}

void *sub_6D84C(uint64_t a1, ...)
{

  return sub_73E40();
}

uint64_t sub_6D878(uint64_t a1, unint64_t *a2)
{

  return sub_ADF8(0, a2, v2);
}

double sub_6D890(uint64_t a1, uint64_t a2)
{

  return sub_6CDBC(a1, a2, v2, (v3 - 112));
}

unint64_t sub_6D8A8@<X0>(void *a1@<X8>)
{
  v2 = sub_73720();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(NSUserDefaults);
  v7 = sub_6DAF4(0xD000000000000015, 0x800000000007F7A0);
  if (!v7)
  {
    v8 = sub_736E0();
    swift_beginAccess();
    (*(v3 + 16))(v5, v8, v2);
    v9 = sub_73710();
    v10 = sub_73970();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Error while creating Health user defaults!", v11, 2u);
    }

    (*(v3 + 8))(v5, v2);
    v7 = [objc_opt_self() standardUserDefaults];
  }

  v12 = v7;
  result = sub_22024();
  a1[3] = result;
  a1[4] = &off_9A940;
  *a1 = v12;
  return result;
}

id sub_6DAB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_73780();
  v4 = [v2 BOOLForKey:v3];

  return v4;
}

id sub_6DAF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_73780();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

uint64_t sub_6DB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_6DB9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
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

uint64_t sub_6DBDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_6DC88(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_73930();
  if (!v19)
  {
    return sub_738A0();
  }

  v41 = v19;
  v45 = sub_73C20();
  v32 = sub_73C30();
  sub_73BD0(v41);
  result = sub_73920();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_73950();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_73C10();
      result = sub_73940();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_6E0A4()
{
  sub_7F1C();
  v0[5] = v1;
  v0[6] = v2;
  v3 = sub_73720();
  v0[7] = v3;
  sub_7E94(v3);
  v0[8] = v4;
  v0[9] = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v5);
}

uint64_t sub_6E14C()
{
  v41 = v0;
  sub_72640();
  v1 = sub_72620();
  v2 = [v1 disambiguationItems];

  v3 = sub_73870();
  v4 = sub_3E538(v3);

  if (v4)
  {
    sub_506C(&qword_A4CF8, &qword_75FF0);
    v5 = sub_72790();

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    v8 = v0[8];
    v9 = v0[9];
    v10 = v0[7];
    v11 = type metadata accessor for HealthFlowError();
    swift_allocObject();
    v12 = sub_B5BC(6);
    v13 = sub_736E0();
    sub_7146C(v13);
    (*(v8 + 16))(v9, v13, v10);

    v14 = sub_73710();
    v15 = sub_73980();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[8];
    v18 = v0[9];
    v19 = v0[7];
    if (v16)
    {
      v39 = v0[9];
      v37 = v11;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = v22;
      *v20 = 136315394;
      v23 = sub_73ED0();
      v38 = v19;
      v25 = sub_19144(v23, v24, &v40);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2112;
      sub_713E0();
      v28 = sub_71398(v26, v27, &unk_7567C);
      v29 = v37;
      sub_14F2C(v37, v28);
      *v30 = v12;

      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v31;
      *v21 = v31;
      _os_log_impl(&dword_0, v14, v15, "%s Error: %@", v20, 0x16u);
      sub_AEF4(v21, &qword_A4060, &qword_75440);
      sub_7EBC(v21);
      sub_AE38(v22);
      sub_7EBC(v22);
      sub_7EBC(v20);

      (*(v17 + 8))(v39, v38);
    }

    else
    {

      (*(v17 + 8))(v18, v19);
      v29 = v11;
    }

    sub_713E0();
    v34 = sub_71398(v32, v33, &unk_7567C);
    sub_14F2C(v29, v34);
    *v35 = v12;
    swift_willThrow();

    sub_7EA4();

    return v36();
  }
}

uint64_t sub_6E4F8()
{
  sub_7F1C();
  v0[12] = v1;
  v0[13] = v2;
  v0[10] = v3;
  v0[11] = v4;
  v0[14] = *(v2 + 16);
  v5 = sub_722B0();
  v0[15] = v5;
  sub_7E94(v5);
  v0[16] = v6;
  v0[17] = sub_7ED4();
  v7 = sub_72830();
  v0[18] = v7;
  sub_7E94(v7);
  v0[19] = v8;
  v0[20] = sub_7ED4();
  v9 = sub_727F0();
  v0[21] = v9;
  sub_7E94(v9);
  v0[22] = v10;
  v0[23] = sub_7ED4();
  v11 = sub_73720();
  v0[24] = v11;
  sub_7E94(v11);
  v0[25] = v12;
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v13);
}

uint64_t sub_6E6A4(uint64_t a1)
{
  v85 = v1;
  v2 = v1[27];
  v3 = v1[24];
  v4 = v1[25];
  v6 = v1[22];
  v5 = v1[23];
  v7 = v1[21];
  v8 = v1[11];
  v9 = sub_736E0();
  sub_7146C(v9);
  v82 = v9;
  v80 = *(v4 + 16);
  v80(v2, v9, v3);
  (*(v6 + 16))(v5, v8, v7);
  v10 = sub_73710();
  v11 = sub_73970();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v1[27];
  v15 = v1[24];
  v14 = v1[25];
  v17 = v1[22];
  v16 = v1[23];
  v18 = v1[21];
  if (v12)
  {
    v78 = v1[27];
    v76 = v1[24];
    v19 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v84[0] = v75;
    *v19 = 136315394;
    v20 = sub_73ED0();
    v22 = sub_19144(v20, v21, v84);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_71398(&unk_A6D40, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v23 = sub_73DA0();
    v25 = v24;
    (*(v17 + 8))(v16, v18);
    v26 = sub_19144(v23, v25, v84);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_0, v10, v11, "%s Received parse: %s", v19, 0x16u);
    swift_arrayDestroy();
    sub_7EBC(v75);
    sub_7EBC(v19);

    v27 = *(v14 + 8);
    v27(v78, v76);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    v27 = *(v14 + 8);
    v27(v13, v15);
  }

  v29 = v1[13];
  v28 = v1[14];
  sub_727E0();
  v30 = *(v29 + 32);
  v31 = sub_221CC();
  v33 = sub_33058(v31, v32, v28, v30);
  v34 = v1[14];
  (*(v1[19] + 8))(v1[20], v1[18]);
  v79 = v33;
  v35 = (*(v30 + 24))(v34, v30);
  if (v35)
  {
    v36 = v35;
    v37 = [v35 spokenPhrase];

    v38 = sub_73790();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  sub_506C(&qword_A4D00, &unk_760B0);
  v1[9] = sub_72440();
  v41 = swift_task_alloc();
  *(v41 + 16) = v38;
  *(v41 + 24) = v40;
  sub_506C(&qword_A8410, &qword_7B940);
  sub_D9A8(&unk_A8420, &qword_A8410, &qword_7B940, &protocol conformance descriptor for [A]);
  sub_73840();

  v42 = v1[8];
  if (v42)
  {
    v44 = v1[16];
    v43 = v1[17];
    v45 = v1[15];
    v84[3] = sub_ADF8(0, &qword_A4058, INSpeakableString_ptr);
    v84[0] = v42;
    v46 = v42;
    v47 = v79;
    sub_722A0();
    sub_72350();

    (*(v44 + 8))(v43, v45);

    sub_7EA4();
  }

  else
  {
    v50 = v1[26];
    v51 = v1[24];
    v52 = type metadata accessor for HealthFlowError();
    swift_allocObject();
    v53 = sub_B5BC(5);
    swift_beginAccess();
    v80(v50, v82, v51);

    v54 = sub_73710();
    v55 = sub_73980();

    v56 = os_log_type_enabled(v54, v55);
    v57 = v1[24];
    if (v56)
    {
      v83 = v1[26];
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v84[0] = v77;
      *v58 = 136315394;
      v60 = sub_73ED0();
      v81 = v57;
      v62 = v52;
      v63 = sub_19144(v60, v61, v84);

      *(v58 + 4) = v63;
      v52 = v62;
      *(v58 + 12) = 2112;
      sub_713E0();
      v66 = sub_71398(v64, v65, &unk_7567C);
      sub_14F2C(v62, v66);
      *v67 = v53;

      v68 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 14) = v68;
      *v59 = v68;
      _os_log_impl(&dword_0, v54, v55, "%s Error: %@", v58, 0x16u);
      sub_AEF4(v59, &qword_A4060, &qword_75440);
      sub_7EBC(v59);
      sub_AE38(v77);
      sub_7EBC(v77);
      sub_7EBC(v58);

      v69 = v83;
      v70 = v81;
    }

    else
    {

      v69 = sub_221CC();
    }

    v27(v69, v70);
    sub_713E0();
    v73 = sub_71398(v71, v72, &unk_7567C);
    sub_14F2C(v52, v73);
    *v74 = v53;
    swift_willThrow();

    sub_7EA4();
  }

  return v48();
}

uint64_t sub_6EE10(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 spokenPhrase];
  v6 = sub_73790();
  v8 = v7;

  if (a3)
  {
    if (v6 == a2 && v8 == a3)
    {
      LOBYTE(a3) = 1;
    }

    else
    {
      LOBYTE(a3) = sub_73DB0();
    }
  }

  return a3 & 1;
}

uint64_t sub_6EEB8()
{
  sub_7F1C();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  sub_506C(&qword_A4050, &unk_75290);
  v1[10] = sub_7ED4();
  sub_71F70();
  v1[11] = sub_7ED4();
  v5 = sub_72580();
  v1[12] = v5;
  sub_7E94(v5);
  v1[13] = v6;
  v1[14] = sub_7ED4();
  v7 = sub_721F0();
  v1[15] = v7;
  sub_7E94(v7);
  v1[16] = v8;
  v1[17] = sub_7ED4();
  v9 = sub_73720();
  v1[18] = v9;
  sub_7E94(v9);
  v1[19] = v10;
  v1[20] = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v11);
}

uint64_t sub_6F050(uint64_t a1)
{
  v30 = v1;
  v3 = v1[19];
  v2 = v1[20];
  v4 = v1[18];
  v5 = sub_736E0();
  sub_7146C(v5);
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_73710();
  v7 = sub_73970();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    v10 = sub_73ED0();
    v12 = sub_19144(v10, v11, &v29);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "%s Generating prompt to disambiguate workoutName", v8, 0xCu);
    sub_AE38(v9);
    sub_7EBC(v9);
    sub_7EBC(v8);
  }

  v13 = sub_221CC();
  v14(v13);
  v15 = v1[16];
  v27 = v1[17];
  v28 = v1[15];
  v16 = v1[10];
  sub_506C(&qword_A4D00, &unk_760B0);
  v1[5] = sub_72440();
  v17 = sub_506C(&qword_A8410, &qword_7B940);
  sub_71428();
  v20 = sub_D9A8(v18, &qword_A8410, &qword_7B940, v19);
  v22 = sub_6DC88(sub_6F8D4, 0, v17, &type metadata for String, &type metadata for Never, v20, &protocol witness table for Never, v21);

  sub_3727C(v22);

  sub_71F50();
  sub_72530();
  (*(v15 + 16))(v16, v27, v28);
  sub_7CC4(v16, 0, 1, v28);
  sub_72550();
  sub_72570();
  v23 = sub_72440();
  v1[21] = v23;
  v24 = swift_task_alloc();
  v1[22] = v24;
  *v24 = v1;
  v24[1] = sub_6F36C;
  v25 = v1[8];

  return sub_6F93C(v23, v25);
}

uint64_t sub_6F36C()
{
  sub_44428();
  *v2 = v1;
  *(v1 + 184) = v3;
  *(v1 + 192) = v0;

  sub_7F10();

  return _swift_task_switch(v4);
}

uint64_t sub_6F49C()
{
  v1 = v0[9];
  v2 = v1[38];
  v3 = v1[39];
  sub_7C78(v1 + 35, v2);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_6F564;
  v5 = v0[23];
  v6 = v0[14];
  v7 = v0[6];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v7, v5, v6, v2, v3);
}

uint64_t sub_6F564()
{
  sub_7F1C();
  sub_B0BC();
  v2 = *v1;
  sub_B044();
  *v3 = v2;
  *(v4 + 208) = v0;

  sub_7F10();

  return _swift_task_switch(v5);
}

uint64_t sub_6F664()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  (*(v3 + 8))(v1, v2);
  v4 = sub_221CC();
  v5(v4);

  sub_7EA4();

  return v6();
}

uint64_t sub_6F74C()
{
  v3 = sub_71440();
  v4(v3);
  (*(v2 + 8))(v0, v1);

  sub_7EA4();

  return v5();
}

uint64_t sub_6F80C()
{
  v4 = sub_71440();
  v5(v4);
  (*(v3 + 8))(v0, v2);

  sub_7EA4();

  return v6();
}

void sub_6F8D4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 spokenPhrase];
  v4 = sub_73790();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_6F93C(uint64_t a1, uint64_t a2)
{
  v3[63] = a2;
  v3[64] = v2;
  v3[62] = a1;
  sub_7F10();
  return _swift_task_switch(v4);
}

uint64_t sub_6F96C()
{
  v1 = sub_707B0(*(v0 + 496), *(v0 + 504));
  *(v0 + 520) = v1;
  v2 = sub_ADF8(0, &qword_A4578, INCancelWorkoutIntent_ptr);
  if (!sub_71488(v2))
  {
    v10 = sub_ADF8(0, &qword_A4418, INEndWorkoutIntent_ptr);
    if (sub_71488(v10))
    {
      sub_7C78((*(v0 + 512) + 40), *(*(v0 + 512) + 64));
      sub_71460();
      *(v0 + 744) = v11;
      *(v0 + 752) = v11;
      *(v0 + 760) = v11;
      *(v0 + 768) = v11;
      *(v0 + 232) = 0;
      *(v0 + 240) = *(v0 + 744);
      *(v0 + 241) = 65792;
      *(v0 + 248) = v1;
      *(v0 + 256) = 0;
      *(v0 + 264) = *(v0 + 752);
      *(v0 + 272) = 0;
      *(v0 + 280) = *(v0 + 760);
      *(v0 + 288) = 0;
      *(v0 + 296) = *(v0 + 768);
      v5 = sub_61674();
      *(v0 + 552) = v5;
      v12 = sub_71408();
      *(v0 + 560) = v12;
      *v12 = v0;
      v12[1] = sub_70090;
      v9 = 0x800000000007F8A0;
      v8 = 0xD000000000000020;
      goto LABEL_9;
    }

    v13 = sub_ADF8(0, &qword_A4498, INPauseWorkoutIntent_ptr);
    if (sub_71488(v13))
    {
      sub_7C78((*(v0 + 512) + 80), *(*(v0 + 512) + 104));
      sub_71460();
      *(v0 + 712) = v14;
      *(v0 + 720) = v14;
      *(v0 + 728) = v14;
      *(v0 + 736) = v14;
      *(v0 + 160) = 0;
      *(v0 + 168) = *(v0 + 712);
      *(v0 + 169) = 65792;
      *(v0 + 176) = v1;
      *(v0 + 184) = 0;
      *(v0 + 192) = *(v0 + 720);
      *(v0 + 200) = 0;
      *(v0 + 208) = *(v0 + 728);
      *(v0 + 216) = 0;
      v15 = "sambiguateSlotValue";
      *(v0 + 224) = *(v0 + 736);
      v5 = sub_68FD0();
      *(v0 + 576) = v5;
      v16 = sub_71408();
      *(v0 + 584) = v16;
      *v16 = v0;
      v17 = sub_70258;
    }

    else
    {
      v19 = sub_ADF8(0, &qword_A3BA0, INResumeWorkoutIntent_ptr);
      if (sub_71488(v19))
      {
        sub_7C78((*(v0 + 512) + 120), *(*(v0 + 512) + 144));
        sub_71460();
        *(v0 + 680) = v20;
        *(v0 + 688) = v20;
        *(v0 + 696) = v20;
        *(v0 + 648) = v20;
        *(v0 + 88) = 0;
        *(v0 + 96) = *(v0 + 680);
        *(v0 + 97) = 65792;
        *(v0 + 104) = v1;
        *(v0 + 112) = 0;
        *(v0 + 120) = *(v0 + 688);
        *(v0 + 128) = 0;
        *(v0 + 136) = *(v0 + 696);
        *(v0 + 144) = 0;
        v4 = "ambiguateSlotValue";
        *(v0 + 152) = *(v0 + 648);
        v5 = sub_65BF4();
        *(v0 + 600) = v5;
        v6 = sub_71408();
        *(v0 + 608) = v6;
        *v6 = v0;
        v7 = sub_70420;
        goto LABEL_3;
      }

      v21 = sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
      if (!sub_71488(v21))
      {
        return sub_73CC0();
      }

      sub_7C78((*(v0 + 512) + 160), *(*(v0 + 512) + 184));
      sub_71460();
      *(v0 + 704) = v22;
      *(v0 + 656) = v22;
      *(v0 + 664) = v22;
      *(v0 + 672) = v22;
      *(v0 + 16) = 0;
      *(v0 + 24) = *(v0 + 704);
      *(v0 + 25) = 65792;
      *(v0 + 32) = v1;
      *(v0 + 40) = 0;
      *(v0 + 48) = *(v0 + 656);
      *(v0 + 56) = 0;
      *(v0 + 64) = *(v0 + 664);
      *(v0 + 72) = 0;
      v15 = "rategyAsync.swift";
      *(v0 + 80) = *(v0 + 672);
      v5 = sub_63C88();
      *(v0 + 624) = v5;
      v16 = sub_71408();
      *(v0 + 632) = v16;
      *v16 = v0;
      v17 = sub_705E8;
    }

    v16[1] = v17;
    v9 = v15 | 0x8000000000000000;
    v8 = 0xD000000000000022;
    goto LABEL_9;
  }

  sub_7C78(*(v0 + 512), *(*(v0 + 512) + 24));
  sub_71460();
  *(v0 + 776) = v3;
  *(v0 + 784) = v3;
  *(v0 + 792) = v3;
  *(v0 + 800) = v3;
  *(v0 + 304) = 0;
  *(v0 + 312) = *(v0 + 776);
  *(v0 + 313) = 65792;
  *(v0 + 320) = v1;
  *(v0 + 328) = 0;
  *(v0 + 336) = *(v0 + 784);
  *(v0 + 344) = 0;
  *(v0 + 352) = *(v0 + 792);
  *(v0 + 360) = 0;
  v4 = "biguateSlotValue";
  *(v0 + 368) = *(v0 + 800);
  v5 = sub_2E6AC();
  *(v0 + 528) = v5;
  v6 = sub_71408();
  *(v0 + 536) = v6;
  *v6 = v0;
  v7 = sub_6FEC8;
LABEL_3:
  v6[1] = v7;
  v8 = 0xD000000000000023;
  v9 = v4 | 0x8000000000000000;
LABEL_9:

  return v23(v8, v9, v5);
}

uint64_t sub_6FEC8()
{
  sub_7F1C();
  sub_B0BC();
  v3 = v2;
  sub_44428();
  *v4 = v3;
  v3[47] = v1;
  v3[48] = v5;
  v3[49] = v0;
  sub_B15C();
  v6 = *v1;
  sub_B044();
  *v7 = v6;
  v3[68] = v0;

  if (!v0)
  {
  }

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_6FFCC()
{
  sub_7F1C();

  sub_713F8();

  return v0();
}

uint64_t sub_70028()
{
  sub_7F1C();

  sub_7EA4();

  return v0();
}

uint64_t sub_70090()
{
  sub_7F1C();
  sub_B0BC();
  v3 = v2;
  sub_44428();
  *v4 = v3;
  v3[50] = v1;
  v3[51] = v5;
  v3[52] = v0;
  sub_B15C();
  v6 = *v1;
  sub_B044();
  *v7 = v6;
  v3[71] = v0;

  if (!v0)
  {
  }

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_70194()
{
  sub_7F1C();

  sub_713F8();

  return v0();
}

uint64_t sub_701F0()
{
  sub_7F1C();

  sub_7EA4();

  return v0();
}

uint64_t sub_70258()
{
  sub_7F1C();
  sub_B0BC();
  v3 = v2;
  sub_44428();
  *v4 = v3;
  v3[53] = v1;
  v3[54] = v5;
  v3[55] = v0;
  sub_B15C();
  v6 = *v1;
  sub_B044();
  *v7 = v6;
  v3[74] = v0;

  if (!v0)
  {
  }

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_7035C()
{
  sub_7F1C();

  sub_713F8();

  return v0();
}

uint64_t sub_703B8()
{
  sub_7F1C();

  sub_7EA4();

  return v0();
}

uint64_t sub_70420()
{
  sub_7F1C();
  sub_B0BC();
  v3 = v2;
  sub_44428();
  *v4 = v3;
  v3[56] = v1;
  v3[57] = v5;
  v3[58] = v0;
  sub_B15C();
  v6 = *v1;
  sub_B044();
  *v7 = v6;
  v3[77] = v0;

  if (!v0)
  {
  }

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_70524()
{
  sub_7F1C();

  sub_713F8();

  return v0();
}

uint64_t sub_70580()
{
  sub_7F1C();

  sub_7EA4();

  return v0();
}

uint64_t sub_705E8()
{
  sub_7F1C();
  sub_B0BC();
  v3 = v2;
  sub_44428();
  *v4 = v3;
  v3[59] = v1;
  v3[60] = v5;
  v3[61] = v0;
  sub_B15C();
  v6 = *v1;
  sub_B044();
  *v7 = v6;
  v3[80] = v0;

  if (!v0)
  {
  }

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_706EC()
{
  sub_7F1C();

  sub_713F8();

  return v0();
}

uint64_t sub_70748()
{
  sub_7F1C();

  sub_7EA4();

  return v0();
}

uint64_t sub_707B0(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v9[1] = *(a2 + 16);
  v10 = *(a2 + 32);
  v2 = sub_506C(&qword_A8410, &qword_7B940);
  v3 = sub_73260();
  sub_71428();
  v6 = sub_D9A8(v4, &qword_A8410, &qword_7B940, v5);
  return sub_6DC88(sub_71354, v9, v2, v3, &type metadata for Never, v6, &protocol witness table for Never, v7);
}

uint64_t sub_70874@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v3 = sub_506C(&qword_A3F98, qword_75450);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = sub_73350();
  v24 = *(v9 - 8);
  v25 = v9;
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_739A0();
  v12 = sub_73340();
  v14 = v13;
  v15 = a1[33];
  v16 = a1[34];
  sub_7C78(a1 + 30, v15);
  (*(v16 + 8))(v27, v15, v16);
  sub_2E370(v27, v12, v14);
  v18 = v17;

  sub_AE38(v27);
  if (v18)
  {
    sub_737F0();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = v25;
  sub_7CC4(v8, v19, 1, v25);
  sub_73250();
  swift_allocObject();
  sub_73240();
  v21 = v24;
  (*(v24 + 16))(v6, v11, v20);
  sub_7CC4(v6, 0, 1, v20);
  sub_73230();

  sub_AEF4(v6, &qword_A3F98, qword_75450);
  sub_73210();

  v22 = sub_73220();

  sub_AEF4(v8, &qword_A3F98, qword_75450);
  result = (*(v21 + 8))(v11, v20);
  *v26 = v22;
  return result;
}

uint64_t sub_70B50(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_70BF0;

  return sub_6E0A4();
}

uint64_t sub_70BF0(uint64_t a1)
{
  sub_B0BC();
  v5 = v4;
  sub_44428();
  *v6 = v5;
  v7 = *v2;
  sub_B044();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_70CEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_6E4F8();
}

uint64_t sub_70DA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_6EEB8();
}

uint64_t sub_70E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_B014;

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)(a1, a2, a3, a4, a5);
}

uint64_t sub_70F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_B014;

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)(a1, a2, a3, a4, a5);
}

uint64_t sub_70FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B014;

  return NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t sub_710B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B014;

  return NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t sub_71178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_ACC4;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_71254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_B014;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_71398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_71408()
{

  return swift_task_alloc();
}

uint64_t sub_7146C(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_71488(uint64_t a1)
{

  return _swift_dynamicCastMetatype(v1, a1);
}