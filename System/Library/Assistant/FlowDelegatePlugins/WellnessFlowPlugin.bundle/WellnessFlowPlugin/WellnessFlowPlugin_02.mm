uint64_t sub_36AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_3884C();
  sub_38980();
  sub_385F4();
  v40 = *(v38 + 3344);
  sub_385D8();
  swift_beginAccess();
  v41 = sub_38408();
  v39(v41);
  sub_16DBDC();
  v42 = sub_16E37C();
  if (sub_1BA1C(v42))
  {
    v43 = sub_1BA38();
    sub_1BA50(v43);
    sub_1B9D0(&def_259DC, v44, v45, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
    sub_1BA00();
  }

  v46 = *(v38 + 3520);
  sub_38620();
  sub_38724();
  v47 = sub_386B4();
  v46(v47);
  sub_8284(v40 + 64, v38 + 976);
  sub_82E0();
  sub_16C4EC();
  sub_8334(v38 + 976);
  v48 = sub_38930();
  v49(v48);
  sub_37F20();
  sub_37F54();

  sub_C9BC();
  sub_387D8();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_36CE4(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v34 = a4;
  v6 = sub_2440(&qword_1C57E0, &unk_171C60);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = sub_2440(&qword_1C5800, &unk_16F510);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v33 - v14;
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v18 = sub_3B35C(*a2);
  v19 = type metadata accessor for WellnessLoggingLogGenericMedRejectedConfirmationResultSetParameters(0);
  v20 = a1 + v19[14];
  *v20 = v18;
  *(v20 + 8) = 0;
  v21 = v19[12];
  sub_8748(a1 + v21, &qword_1C5800, &unk_16F510);
  v22 = sub_16D5CC();
  sub_214C(a1 + v21, 1, 1, v22);

  getMedStatus(from:)();

  sub_16E23C();
  sub_214C(v17, 0, 1, v22);
  sub_3769C(v17, a1 + v19[15], &qword_1C5800, &unk_16F510);
  v23 = sub_372A0(v34, &selRef_matchingMeds);
  if (v23)
  {
    v24 = v23;
    if (sub_3B35C(v23))
    {
      sub_3B360();
      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = sub_16E48C();
      }

      else
      {
        v25 = *(v24 + 32);
      }

      v26 = v25;

      sub_146C80(v26);
      if (v27)
      {
        sub_16E23C();

        sub_214C(v12, 0, 1, v22);
        (*(*(v22 - 8) + 32))(v15, v12, v22);
        sub_214C(v15, 0, 1, v22);
        return sub_3769C(v15, a1 + v19[11], &qword_1C5800, &unk_16F510);
      }
    }

    else
    {
    }
  }

  v28 = 1;
  sub_214C(v12, 1, 1, v22);
  sub_16BF4C();
  v29 = sub_16BF5C();
  sub_214C(v8, 0, 1, v29);
  sub_9BFAC(v8);
  v31 = v30;
  sub_8748(v8, &qword_1C57E0, &unk_171C60);
  if (v31)
  {
    sub_16E23C();

    v28 = 0;
  }

  sub_214C(v15, v28, 1, v22);
  if (sub_369C(v12, 1, v22) != 1)
  {
    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  return sub_3769C(v15, a1 + v19[11], &qword_1C5800, &unk_16F510);
}

uint64_t sub_370D4()
{

  sub_2D64((v0 + 24));
  sub_C938(v0 + 64);
  sub_37C80(*(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288));
  sub_2D64((v0 + 296));

  swift_unknownObjectRelease();
  sub_2D64((v0 + 360));
  return v0;
}

uint64_t sub_37150()
{
  sub_370D4();

  return _swift_deallocClassInstance(v0, 401, 7);
}

uint64_t sub_371CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_25D60();
}

uint64_t sub_37268(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GenericMedLoggingFlow();

  return sub_16C37C();
}

uint64_t sub_372A0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_16D86C();
  v4 = sub_16E2CC();

  return v4;
}

uint64_t sub_372FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C57F8, &unk_172510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_3736C()
{
  result = qword_1C6770;
  if (!qword_1C6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6770);
  }

  return result;
}

uint64_t sub_373C0()
{
  sub_2D64((v0 + 16));
  sub_387F4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_373F4()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_37478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpecificMedCompletedLogModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_374DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_8B38();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_3753C()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_16AC0(v3, v4);
}

uint64_t sub_375C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_8B38();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_37618()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_3769C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2440(a3, a4);
  sub_8B38();
  (*(v6 + 40))(a2, a1);
  return a2;
}

unint64_t sub_37750()
{
  result = qword_1C6798;
  if (!qword_1C6798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C6798);
  }

  return result;
}

uint64_t sub_377C0()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_37844()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_378C8()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_3794C()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_379D4()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_37A5C()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_37AE0()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_37B64()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_37BE8(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_37C38(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_37C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v9 = a9 >> 6;
  if (v9 != 1)
  {
    if (v9)
    {
      return;
    }
  }
}

uint64_t sub_37CFC()
{
  sub_2D64(v0 + 2);
  sub_2D64(v0 + 7);
  sub_2D64(v0 + 12);
  sub_2D64(v0 + 17);
  sub_2D64(v0 + 22);

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_37E9C()
{
  v3 = v0[1158];
  *(v1 - 224) = v0[1159];
  *(v1 - 216) = v3;
  v4 = v0[1156];
  *(v1 - 208) = v0[1157];
  *(v1 - 200) = v4;
  v5 = v0[1154];
  *(v1 - 192) = v0[1155];
  *(v1 - 184) = v5;
  v6 = v0[1150];
  *(v1 - 176) = v0[1153];
  *(v1 - 168) = v6;
  v7 = v0[1148];
  *(v1 - 160) = v0[1149];
  *(v1 - 152) = v7;
  v8 = v0[1146];
  *(v1 - 144) = v0[1147];
  *(v1 - 136) = v8;
  v9 = v0[1143];
  *(v1 - 128) = v0[1145];
  *(v1 - 120) = v9;
  v10 = v0[1140];
  *(v1 - 112) = v0[1141];
  *(v1 - 104) = v10;
  v11 = v0[1138];
  *(v1 - 96) = v0[1139];
  *(v1 - 88) = v11;
}

uint64_t sub_37F54()
{
  v3 = v0[392];
  *(v1 - 136) = v0[393];
  *(v1 - 128) = v3;
  v4 = v0[390];
  *(v1 - 120) = v0[391];
  *(v1 - 112) = v4;
  v5 = v0[386];
  *(v1 - 104) = v0[389];
  *(v1 - 96) = v5;
  *(v1 - 88) = v0[384];
}

uint64_t sub_38014()
{
  v3 = v0[1155];
  *(v1 - 240) = v0[1156];
  *(v1 - 232) = v3;
  v4 = v0[1153];
  *(v1 - 224) = v0[1154];
  *(v1 - 216) = v4;
  v5 = v0[1149];
  *(v1 - 208) = v0[1150];
  *(v1 - 200) = v5;
  v6 = v0[1147];
  *(v1 - 192) = v0[1148];
  *(v1 - 184) = v6;
  v7 = v0[1145];
  *(v1 - 176) = v0[1146];
  *(v1 - 168) = v7;
  v8 = v0[1141];
  *(v1 - 160) = v0[1143];
  *(v1 - 152) = v8;
  v9 = v0[1139];
  *(v1 - 144) = v0[1140];
  *(v1 - 136) = v9;
  *(v1 - 128) = v0[1138];
}

uint64_t sub_38250()
{
  v3 = v0[1156];
  *(v1 - 248) = v0[1157];
  *(v1 - 240) = v3;
  v4 = v0[1154];
  *(v1 - 232) = v0[1155];
  *(v1 - 224) = v4;
  v5 = v0[1150];
  *(v1 - 216) = v0[1153];
  *(v1 - 208) = v5;
  v6 = v0[1148];
  *(v1 - 200) = v0[1149];
  *(v1 - 192) = v6;
  v7 = v0[1146];
  *(v1 - 184) = v0[1147];
  *(v1 - 176) = v7;
  v8 = v0[1143];
  *(v1 - 168) = v0[1145];
  *(v1 - 160) = v8;
  v9 = v0[1140];
  *(v1 - 152) = v0[1141];
  *(v1 - 144) = v9;
  v10 = v0[1138];
  *(v1 - 136) = v0[1139];
  *(v1 - 128) = v10;
}

uint64_t sub_383D8(uint64_t a1)
{

  return sub_374DC(v1, a1, type metadata accessor for GenericMedCompletedLogModel);
}

uint64_t sub_38418()
{
  v2 = *(v0 - 128);

  return sub_375C0(v2, type metadata accessor for GenericMedCompletedLogModel);
}

uint64_t sub_38450()
{

  return swift_beginAccess();
}

uint64_t sub_38474()
{

  return swift_beginAccess();
}

uint64_t sub_384B8()
{
  v3 = v0[390];
  *(v1 - 160) = v0[391];
  *(v1 - 152) = v3;
  v4 = v0[386];
  *(v1 - 144) = v0[389];
  *(v1 - 136) = v4;
  *(v1 - 128) = v0[384];
}

uint64_t sub_384FC()
{

  return sub_16C1CC();
}

void sub_3851C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_38604()
{
}

BOOL sub_38670(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_386DC()
{
}

void sub_38724()
{
}

void *sub_38754(uint64_t a1)
{
  sub_17464((v1 + v2), a1 + 16);

  return sub_16C73C();
}

BOOL sub_387B0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_3880C@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 128) = *(v2 + 9144);
  sub_2D64((v2 + a1));

  return sub_8388(v2 + v1, v2 + v3);
}

void *sub_3888C(__int128 *a1)
{
  sub_17464(a1, v1 + 16);

  return sub_16C73C();
}

uint64_t sub_388B8(unint64_t *a1)
{

  return sub_98C8(a1, v1, v2, &protocol conformance descriptor for PromptForValueFlowAsync<A>);
}

void *sub_388F0()
{
  v2 = (*(v0 - 248) + 224);

  return memcpy((v0 - 208), v2, 0x41uLL);
}

void sub_38910()
{
  *(v3 - 136) = *(v2 + 9208);
  *(v3 - 128) = v0;
}

uint64_t sub_38940(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_98C8(a1, a2, a3, &protocol conformance descriptor for PromptResult<A>);
}

uint64_t sub_38964(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_3898C(uint64_t a1)
{

  return sub_375C0(a1, type metadata accessor for WellnessLoggingLogGenericMedRejectedConfirmationResultSetParameters);
}

void sub_389B0(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

uint64_t sub_389CC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_389E8()
{

  return sub_376FC(v0 + 4952);
}

double sub_38A00@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 224) = a1;
  result = 0.0;
  *(v1 + 232) = 0u;
  v3 = v1 + 232;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *(v3 + 56) = -64;
  return result;
}

uint64_t sub_38A44(void *a1)
{
  sub_2D64(a1);
  sub_2D64((v1 + v2));
  return sub_2D64((v1 + v3));
}

uint64_t sub_38A6C(void *a1)
{
  sub_2D64(a1);
  sub_2D64((v1 + v3));
  return sub_2D64((v1 + v2));
}

void sub_38A94()
{
}

uint64_t sub_38AEC()
{

  return sub_16C4EC();
}

uint64_t sub_38B58()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_38B74(void *a1)
{
  sub_2D20(a1, v1);

  return type metadata accessor for WellnessSnippets(0);
}

void sub_38BA4()
{
}

uint64_t sub_38BBC(uint64_t a1)
{

  return sub_16C45C();
}

uint64_t sub_38BD8(__int128 *a1)
{
  sub_17464(a1, v2 + v1);

  return sub_8388(v2 + v1, v2 + v3);
}

uint64_t sub_38CF4()
{

  return sub_8388(v2 + 24, v0 + v1);
}

uint64_t sub_38D0C()
{

  return sub_16C4EC();
}

uint64_t sub_38D28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = *(v15 - 88);

  return sub_3769C(v17, v14 + a14, a3, a4);
}

void sub_38D44()
{
}

uint64_t sub_38D60(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *(v4 - 88);

  return sub_374DC(v3, v6, a3);
}

uint64_t sub_38D7C(uint64_t a1)
{
  *(v1 - 360) = a1;

  return swift_slowAlloc();
}

uint64_t sub_38DA0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_38E84(uint64_t a1)
{
  *(v2 - 120) = *(v1 + 9096);

  return sub_16E23C();
}

void sub_38EA4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_38EC4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_38EE4()
{

  return sub_16C7AC();
}

uint64_t sub_38EFC@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_3769C(v3, v4 + a3, a1, a2);
}

uint64_t sub_38F14()
{

  return sub_8388(v1 + 24, v0 + v2);
}

uint64_t sub_38F2C(uint64_t a1)
{

  return sub_16D62C();
}

uint64_t sub_38F44()
{
}

unint64_t sub_38FA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_16E6CC();

  if (v2 >= 0x3D)
  {
    return 61;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_39008(char a1)
{
  result = 0x7265702074656566;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 40:
    case 45:
      sub_39A14();
      return v12 | 3;
    case 3:
      return 0x65702073656C696DLL;
    case 4:
      return 0x6C696B5F666C6168;
    case 5:
    case 42:
      sub_39A14();
      return v14 | 2;
    case 6:
    case 7:
      v10 = 1920298856;
      return v10 | 0x7265705F00000000;
    case 8:
      return 0xD000000000000010;
    case 9:
      sub_39A14();
      return v8 | 4;
    case 10:
      return 0x70206574756E696DLL;
    case 11:
      return 0xD000000000000010;
    case 12:
      v7 = 0x6574756E696DLL;
      return v7 & 0xFFFFFFFFFFFFLL | 0x705F000000000000;
    case 13:
      return 0xD000000000000010;
    case 14:
      return 0x705F646E6F636573;
    case 15:
      v7 = 0x646E6F636573;
      return v7 & 0xFFFFFFFFFFFFLL | 0x705F000000000000;
    case 16:
      v4 = 1767994483;
      goto LABEL_47;
    case 17:
      v10 = 1885697139;
      return v10 | 0x7265705F00000000;
    case 18:
      v11 = 9;
      return v11 | 0xD000000000000010;
    case 19:
      sub_39A14();
      return v13 | 8;
    case 20:
      return 0x6D6172676F6C696BLL;
    case 21:
      return 1835102823;
    case 22:
      return 0x646E756F70;
    case 23:
      v5 = 1852798067;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 24:
      return 1751346793;
    case 25:
      v9 = 1701603693;
      return v9 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
    case 26:
      return 0x74656D69746E6563;
    case 27:
      return 0x6574656D6F6C696BLL;
    case 28:
      return 0x73726574656DLL;
    case 29:
      return 1952802150;
    case 30:
      v9 = 1685217657;
      return v9 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
    case 31:
      return 0x6E6F68746172616DLL;
    case 32:
      return 0x6569726F6C6163;
    case 33:
      return 0x6F6C61636F6C696BLL;
    case 34:
      v5 = 1819635562;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 35:
      return 0x6C756F6A6F6C696BLL;
    case 36:
      return 0x655F657669746361;
    case 37:
      return 0x5F676E6974736572;
    case 38:
      return 7172194;
    case 39:
      v4 = 1702127980;
      goto LABEL_47;
    case 41:
    case 43:
      return 0x5F7265705F707563;
    case 44:
      sub_39A14();
      return v6 | 7;
    case 46:
      v11 = 5;
      return v11 | 0xD000000000000010;
    case 47:
      return 0x5F666F5F74696E75;
    case 48:
      return 1734897005;
    case 49:
      return 0x6D5F687461657262;
    case 50:
      v4 = 1701344367;
LABEL_47:
      result = v4 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
      break;
    case 51:
      result = 0x737569736C6563;
      break;
    case 52:
      result = 0x65686E6572686166;
      break;
    case 53:
      result = 1885697139;
      break;
    case 54:
      result = 0x746867696C66;
      break;
    case 55:
      result = 0x6168636C65656877;
      break;
    case 56:
      result = 0x656B6F727473;
      break;
    case 57:
      result = 0x676E696D6D697773;
      break;
    case 58:
      result = 7364972;
      break;
    case 59:
      result = 0x6574756E696DLL;
      break;
    case 60:
      result = 1920298856;
      break;
    default:
      sub_39A14();
      result = v3 | 1;
      break;
  }

  return result;
}

unint64_t sub_3975C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_38FA8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_3978C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_39008(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for MeasurementUnit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xC4)
  {
    if (a2 + 60 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 60) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 61;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3D;
  v5 = v6 - 61;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MeasurementUnit(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 60 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 60) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xC4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xC3)
  {
    v6 = ((a2 - 196) >> 8) + 1;
    *result = a2 + 60;
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
        JUMPOUT(0x3991CLL);
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
          *result = a2 + 60;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_39958()
{
  result = qword_1C67E0;
  if (!qword_1C67E0)
  {
    sub_9790(&qword_1C67E8, qword_171D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C67E0);
  }

  return result;
}

unint64_t sub_399C0()
{
  result = qword_1C67F0;
  if (!qword_1C67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C67F0);
  }

  return result;
}

uint64_t getLocalizedMedName(from:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_16CC1C();

  return v1;
}

char *getUsoMedNames(from:)(uint64_t a1)
{
  v2 = sub_16C9CC();
  sub_42F0();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v48 = &v42 - v9;
  __chkstk_darwin(v8);
  v11 = &v42 - v10;
  if (a1)
  {

    result = sub_16CA0C();
    if (result)
    {
      v13 = result;
      v14 = 0;
      v49 = *(result + 2);
      v50 = v4 + 16;
      v44 = a1;
      v45 = (v4 + 32);
      v15 = (v4 + 8);
      v47 = _swiftEmptyArrayStorage;
      while (1)
      {
        while (1)
        {
          if (v49 == v14)
          {

            v29 = v47[2];
            if (v29)
            {
              v30 = v47 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
              v49 = *(v4 + 72);
              v31 = *(v4 + 16);
              v32 = _swiftEmptyArrayStorage;
              do
              {
                v33 = v48;
                v31(v48, v30, v2);
                v34 = sub_16C9AC();
                v36 = v35;
                (*v15)(v33, v2);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_3A724(0, *(v32 + 2) + 1, 1, v32);
                  v32 = v40;
                }

                v38 = *(v32 + 2);
                v37 = *(v32 + 3);
                if (v38 >= v37 >> 1)
                {
                  sub_3A724(v37 > 1, v38 + 1, 1, v32);
                  v32 = v41;
                }

                *(v32 + 2) = v38 + 1;
                v39 = &v32[16 * v38];
                *(v39 + 4) = v34;
                *(v39 + 5) = v36;
                v30 += v49;
                --v29;
              }

              while (v29);
            }

            else
            {

              return _swiftEmptyArrayStorage;
            }

            return v32;
          }

          if (v14 >= *(v13 + 2))
          {
            __break(1u);
            return result;
          }

          v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
          v17 = *(v4 + 72);
          (*(v4 + 16))(v11, &v13[v16 + v17 * v14], v2);
          v18 = sub_16C9BC();
          if (v19)
          {
            break;
          }

LABEL_12:
          result = (*v15)(v11, v2);
          ++v14;
        }

        if (v18 == 0x64695F6D657469 && v19 == 0xE700000000000000)
        {
        }

        else
        {
          v21 = sub_16E6BC();

          if ((v21 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v22 = *v45;
        (*v45)(v46, v11, v2);
        v23 = v47;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v23;
        v51 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_3B114(0, v23[2] + 1, 1);
          v25 = v51;
        }

        v27 = v25[2];
        v26 = v25[3];
        v28 = (v27 + 1);
        if (v27 >= v26 >> 1)
        {
          v43 = v22;
          v47 = (v27 + 1);
          sub_3B114(v26 > 1, v27 + 1, 1);
          v28 = v47;
          v22 = v43;
          v25 = v51;
        }

        ++v14;
        v25[2] = v28;
        v47 = v25;
        result = (v22)(v25 + v16 + v27 * v17, v46, v2);
      }
    }
  }

  return 0;
}

uint64_t hasMedDosage(from:)(uint64_t result)
{
  if (result)
  {

    v1 = sub_16CC2C();

    if (v1)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t getUsoMedDosageUnit(from:)(uint64_t a1)
{
  v3 = sub_16DBEC();
  sub_42F0();
  v5 = v4;
  v7 = __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  if (!a1)
  {
    return 0;
  }

  v12 = sub_16CC2C();
  v43 = v9;
  if (v12)
  {
    v13 = v12;
    v14 = sub_16CC3C();

    if (v14)
    {
      if (sub_3A700(v14))
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          sub_16E48C();
        }

        else
        {
          if (!*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
LABEL_42:
            sub_16E48C();
LABEL_22:

            sub_16C9EC();

            if (!v44[0])
            {
              goto LABEL_32;
            }

            v26 = sub_16CDEC();

            if (v26)
            {
              v29 = sub_16CCBC();
              v31 = v30;

              if (v31)
              {
                v26 = 1702063972;
                if (v29 == 1702063972 && v31 == 0xE400000000000000)
                {
                }

                else
                {
                  v33 = sub_16E6BC();

                  if ((v33 & 1) == 0)
                  {

                    return 0;
                  }
                }

                swift_beginAccess();
                v34 = v43;
                v42(v43, v13, v3);
                v35 = sub_16DBDC();
                v36 = sub_16E36C();
                if (os_log_type_enabled(v35, v36))
                {
                  v37 = swift_slowAlloc();
                  *v37 = 0;
                  _os_log_impl(&def_259DC, v35, v36, "got a raw name for dosageUnit but no identifiers", v37, 2u);
                }

                v1(v34, v3);

                return v26;
              }

LABEL_32:

              return 0;
            }

LABEL_31:

            return v26;
          }
        }

        sub_16C9EC();

        if (v44[3])
        {
          sub_16CDEC();
        }
      }

      else
      {
      }
    }
  }

  v15 = sub_16D7FC();

  v13 = sub_16DBBC();
  swift_beginAccess();
  v42 = *(v5 + 16);
  v42(v11, v13, v3);

  v16 = sub_16DBDC();
  v17 = sub_16E36C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v40 = v3;
    v41 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v44[0] = v20;
    *v19 = 136315138;
    v21 = sub_16E2DC();
    v23 = sub_3AB7C(v21, v22, v44);
    v39 = v11;
    v24 = v13;
    v25 = v23;

    *(v19 + 4) = v25;
    v13 = v24;
    _os_log_impl(&def_259DC, v16, v17, "got identifiers: %s", v19, 0xCu);
    sub_2D64(v20);

    v3 = v40;

    v1 = *(v5 + 8);
    v1(v39, v3);
  }

  else
  {

    v1 = *(v5 + 8);
    v1(v11, v3);
  }

  if (*(v15 + 16))
  {
    v26 = *(v15 + 32);

    return v26;
  }

  v26 = sub_16CC2C();
  if (!v26)
  {
    goto LABEL_31;
  }

  v27 = sub_16CC3C();

  if (!v27)
  {
    goto LABEL_32;
  }

  result = sub_3A700(v27);
  if (!result)
  {

    return 0;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
    goto LABEL_42;
  }

  if (*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t getMedDosageValue(from:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!sub_16CC2C())
  {
    goto LABEL_11;
  }

  v1 = sub_16CC3C();

  if (!v1)
  {
LABEL_12:

    return v1;
  }

  result = sub_3A700(v1);
  if (!result)
  {

    return 0;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    sub_16E48C();
LABEL_8:

    sub_16C9EC();

    v1 = v4;
    if (v4)
    {
      v3 = sub_16CDFC();

      if (v3)
      {
        v1 = sub_16CA9C();

        return v1;
      }

LABEL_11:

      return 0;
    }

    goto LABEL_12;
  }

  if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_3A594(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_3A630(uint64_t result, uint64_t (*a2)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      a2(0);
      result = sub_16E2FC();
      *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)) = v2;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_3A6A4(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      sub_2440(a2, a3);
      result = sub_16E2FC();
      *(result + 16) = v3;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_3A700(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_16E54C();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

void sub_3A724(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_3B374();
    if (v7 != v8)
    {
      sub_3B398();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_3B364();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_2440(&qword_1C6828, &qword_1767D0);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_3A818(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    sub_3B374();
    if (v7 != v8)
    {
      sub_3B398();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_3B364();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_2440(&qword_1C6808, &qword_172200);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 64);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v11 != a4 || &a4[8 * v9 + 4] <= v11 + 4)
    {
      memmove(v11 + 4, a4 + 4, v9 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2440(&qword_1C6810, &qword_172208);
    swift_arrayInitWithCopy();
  }
}

void sub_3A934(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_3B374();
    if (v7 != v8)
    {
      sub_3B398();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_3B364();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_2440(&qword_1C6800, &qword_1721F8);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 8);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[8 * v9] <= v13)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v9);
  }
}

uint64_t sub_3AA20(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = sub_3B384();

    return _swift_arrayInitWithTakeFrontToBack(v10);
  }

  else if (a3 != a1)
  {
    v9 = sub_3B384();

    return _swift_arrayInitWithTakeBackToFront(v9);
  }

  return result;
}

_BYTE **sub_3AAE8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_3AB20(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_3AB7C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_3AB7C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3AC40(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_8220(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_2D64(v11);
  return v7;
}

unint64_t sub_3AC40(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_3AD40(a5, a6);
    *a1 = v9;
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
    result = sub_16E4CC();
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

char *sub_3AD40(uint64_t a1, unint64_t a2)
{
  v3 = sub_3AD8C(a1, a2);
  sub_3AEA4(&off_1B7650);
  return v3;
}

char *sub_3AD8C(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_16E27C())
  {
    result = sub_3AF88(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_16E45C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_16E4CC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_3AEA4(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_3AFF8(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_3AF88(uint64_t a1, uint64_t a2)
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

  sub_2440(&qword_1C6818, &qword_172210);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_3AFF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2440(&qword_1C6818, &qword_172210);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_3B0F0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_3B1A4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    sub_3B374();
    if (v13 != v14)
    {
      sub_3B398();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_3B364();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_2440(a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = j__malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_3AA20(a4 + v24, v15, v20 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_3B3AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_3B3EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_3B488(uint64_t a1, uint64_t a2)
{
  sub_3BD14();

  return sub_16C33C();
}

uint64_t sub_3B4DC(uint64_t a1)
{
  v2[88] = v1;
  v2[87] = a1;
  v3 = sub_16DBEC();
  v2[89] = v3;
  v2[90] = *(v3 - 8);
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();

  return _swift_task_switch(sub_3B5AC);
}

uint64_t sub_3B5AC()
{
  v2 = *(v0 + 704);
  sub_2D20((v2 + 40), *(v2 + 64));
  v3 = sub_C9F8();
  v4(v3);
  sub_2D20((v0 + 608), *(v0 + 632));
  sub_C9F8();
  v5 = sub_16C41C();
  sub_2D64((v0 + 608));
  if (v5)
  {
    v6 = *(v0 + 704);
    v7 = *(v6 + 24);
    v8 = *(v6 + 32);
    v9 = sub_C9F8();
    sub_2D20(v9, v10);
    v11 = (*(v8 + 16))(v7, v8);
    if (sub_C1C54(v11, &off_1B8418))
    {
      v13 = *(v6 + 24);
      v12 = *(v6 + 32);
      sub_2D20(*(v0 + 704), v13);
      v14 = (*(v12 + 24))(v13, v12);
      if (v14 != 270)
      {
        v15 = v14;
        if (sub_C1AF4(v14, *(*(v0 + 704) + 280)))
        {
          v16 = *(v0 + 704);
          sub_8388(v2 + 40, v0 + 24);
          sub_8388(v16 + 80, v0 + 64);
          sub_8284(v16 + 120, v0 + 104);
          *(v0 + 16) = v15;
          *(v0 + 264) = 0;
          sub_3BC6C();
          sub_16C4EC();
          sub_3BCC0(v0 + 16);
          goto LABEL_13;
        }
      }
    }

    sub_16DBBC();
    swift_beginAccess();
    v26 = sub_3BD68();
    v27(v26);
    v28 = sub_16DBDC();
    v29 = sub_16E37C();
    if (os_log_type_enabled(v28, v29))
    {
      *swift_slowAlloc() = 0;
      sub_1B9D0(&def_259DC, v30, v31, "Cannot punchout for the requested parse, executing GenericNotSupportedFlow");
    }

    sub_3BD7C();
    v32 = sub_C9F8();
    v33(v32);
    sub_8284(v1 + 120, v0 + 440);
    *(v0 + 600) = 0;
    sub_17358();
    sub_16C4EC();
    v25 = v0 + 440;
  }

  else
  {
    sub_16DBBC();
    swift_beginAccess();
    v17 = sub_3BD68();
    v18(v17);
    v19 = sub_16DBDC();
    v20 = sub_16E37C();
    if (os_log_type_enabled(v19, v20))
    {
      *swift_slowAlloc() = 0;
      sub_1B9D0(&def_259DC, v21, v22, "Legacy behavior not supported on this device. Returning GenericNotSupportedFlow.");
    }

    sub_3BD7C();
    v23 = sub_C9F8();
    v24(v23);
    sub_8284(v1 + 120, v0 + 272);
    *(v0 + 432) = 0;
    sub_17358();
    sub_16C4EC();
    v25 = v0 + 272;
  }

  sub_173AC(v25);
LABEL_13:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_3B930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_3B9E0;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_3B9E0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_3BAE0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3BB78;

  return sub_3B4DC(a1);
}

uint64_t sub_3BB78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_3BC6C()
{
  result = qword_1C6838;
  if (!qword_1C6838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6838);
  }

  return result;
}

unint64_t sub_3BD14()
{
  result = qword_1C6840;
  if (!qword_1C6840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6840);
  }

  return result;
}

void sub_3BD7C()
{
}

uint64_t sub_3BDA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 249))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_3BDE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 249) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 249) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_3BE74(uint64_t a1, uint64_t a2)
{
  sub_3DF60();

  return sub_16C33C();
}

uint64_t sub_3BEC8()
{
  sub_8A88();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_16DBEC();
  v1[7] = v3;
  sub_888C(v3);
  v1[8] = v4;
  v1[9] = sub_8BC0();
  v5 = sub_16C46C();
  v1[10] = v5;
  sub_888C(v5);
  v1[11] = v6;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v7 = sub_16C7BC();
  v1[14] = v7;
  sub_888C(v7);
  v1[15] = v8;
  v1[16] = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_3C018(uint64_t a1)
{
  v3 = v1[12];
  v2 = v1[13];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[6];
  sub_16C45C();
  (*(v5 + 16))(v3, v2, v4);
  sub_16C75C();
  (*(v5 + 8))(v2, v4);
  sub_2D20((v6 + 128), *(v6 + 152));
  v7 = swift_task_alloc();
  v1[17] = v7;
  *v7 = v1;
  v7[1] = sub_3C138;

  return sub_7AD3C();
}

uint64_t sub_3C138(uint64_t a1)
{
  sub_C9D4();
  v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v5 + 144) = v1;

  if (v1)
  {
    v8 = sub_3C380;
  }

  else
  {
    *(v5 + 152) = a1;
    v8 = sub_3C254;
  }

  return _swift_task_switch(v8);
}

void sub_3C254()
{
  v1 = v0[19];
  v2 = v0[5];
  v3 = v0[6];
  sub_16D74C();
  v4 = [v1 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_2D20((v3 + 88), *(v3 + 112));
  v5 = sub_16C2FC();
  v2[3] = sub_16C28C();
  v2[4] = &protocol witness table for AnyFlow;

  *v2 = v5;
  v6 = sub_3E1E8();
  v7(v6);

  sub_C9BC();
  sub_3E254();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_3C380(uint64_t a1)
{
  v23 = v1;
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
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
    v10 = swift_slowAlloc();
    v22 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_3AB7C(0xD00000000000001CLL, 0x800000000017D990, &v22);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&def_259DC, v6, v7, "Could not execute %s. Error: %@", v8, 0x16u);
    sub_1B918(v9, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v9);
    sub_2D64(v10);
    sub_8A2C(v10);
    sub_8A2C(v8);

    v12 = sub_C9F8();
    v13(v12);
  }

  else
  {

    v14 = sub_C9F8();
    v15(v14);
  }

  v16 = v1[5];
  sub_16D6FC();
  v16[3] = &type metadata for GenericErrorFlow;
  v16[4] = sub_82E0();
  v17 = swift_allocObject();
  *v16 = v17;
  sub_6362C((v17 + 16));

  v18 = sub_3E1E8();
  v19(v18);

  sub_C9BC();

  return v20();
}

uint64_t sub_3C608()
{
  sub_8A88();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  *(v1 + 160) = v3;
  *(v1 + 56) = v4;
  v5 = sub_16D6BC();
  *(v1 + 80) = v5;
  sub_4348(v5);
  *(v1 + 88) = sub_8BC0();
  v6 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v6);
  *(v1 + 96) = sub_8BC0();
  v7 = sub_2440(&qword_1C6850, &unk_172440);
  sub_4348(v7);
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  v8 = sub_16BE9C();
  *(v1 + 120) = v8;
  sub_888C(v8);
  *(v1 + 128) = v9;
  *(v1 + 136) = sub_8BC0();
  v10 = sub_16D7AC();
  *(v1 + 144) = v10;
  sub_4348(v10);
  *(v1 + 152) = sub_8BC0();
  v11 = sub_17960();

  return _swift_task_switch(v11);
}

uint64_t sub_3C768()
{
  v29 = v0;
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v23 = *(v0 + 112);
  v24 = *(v0 + 104);
  v22 = *(v0 + 96);
  v25 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v27 = *(v0 + 56);
  v7 = v6[4];
  v8 = v6[5];
  v21 = *(v0 + 160);
  sub_2D20(v6 + 1, v7);
  (*(v8 + 16))(v28, v7, v8);
  (*(v3 + 16))(v2, v5, v4);
  sub_16D79C();
  sub_3DF18(&qword_1C6858, &type metadata accessor for AppPunchOutFlow, &protocol conformance descriptor for AppPunchOutFlow);
  v26 = sub_16C32C();
  sub_3DEC4(v1, &type metadata accessor for AppPunchOutFlow);
  v9 = sub_2D20(v6 + 6, v6[9]);
  sub_15081C(*v9);
  sub_208C0(v21);
  sub_16E23C();

  v10 = sub_16D5CC();
  sub_214C(v22, 0, 1, v10);
  v11 = sub_38E5C();
  sub_1913C(v11, v12);

  sub_1B918(v22, &qword_1C5800, &unk_16F510);
  sub_3DE54(v23, v24);
  sub_8388((v6 + 1), v0 + 16);
  sub_16D6AC();
  sub_3DF18(&qword_1C6860, &type metadata accessor for OutputFlow, &protocol conformance descriptor for OutputFlow);
  v13 = sub_16C32C();
  sub_3DEC4(v25, &type metadata accessor for OutputFlow);
  sub_2D20(v6 + 1, v6[4]);
  v14 = sub_3E1B8();
  v15(v14);
  sub_2440(&qword_1C5ED8, &unk_173090);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_172320;
  *(v16 + 32) = v13;
  *(v16 + 40) = v26;
  v17 = sub_16D6DC();
  swift_allocObject();
  v18 = sub_16D6CC();
  v27[3] = v17;
  v27[4] = sub_3DF18(&qword_1C6868, &type metadata accessor for SequenceFlow, &protocol conformance descriptor for SequenceFlow);
  *v27 = v18;
  sub_1B918(v23, &qword_1C6850, &unk_172440);

  sub_C9BC();

  return v19();
}

uint64_t sub_3CB34()
{
  sub_8A88();
  v1[61] = v2;
  v1[62] = v0;
  v3 = sub_16BE9C();
  v1[63] = v3;
  sub_888C(v3);
  v1[64] = v4;
  v1[65] = sub_8BC0();
  v5 = sub_16D63C();
  sub_4348(v5);
  v1[66] = sub_8BC0();
  v6 = type metadata accessor for DataTypePunchoutFlow.PunchOutAction(0);
  sub_4348(v6);
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v7 = sub_16DBEC();
  v1[69] = v7;
  sub_888C(v7);
  v1[70] = v8;
  v1[71] = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_3CC78(uint64_t a1)
{
  v39 = v1;
  v2 = *(v1 + 568);
  v3 = *(v1 + 560);
  v4 = *(v1 + 552);
  v5 = sub_16DBBC();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_16DBDC();
  v7 = sub_16E36C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_8BD8();
    v9 = swift_slowAlloc();
    v38 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_3AB7C(0xD000000000000014, 0x8000000000172380, &v38);
    _os_log_impl(&def_259DC, v6, v7, "Executing %s", v8, 0xCu);
    sub_2D64(v9);
    sub_8A2C(v9);
    sub_8A2C(v8);
  }

  v10 = sub_C9F8();
  v11(v10);
  v12 = *(v1 + 544);
  v13 = *(v1 + 536);
  v14 = *(v1 + 496);
  v15 = *v14;
  sub_2D20(v14 + 1, *(v14 + 4));
  v16 = sub_3E1B8();
  v17(v16);
  sub_3D470(v15, (v1 + 344), v12);
  sub_2D64((v1 + 344));
  v18 = sub_C9F8();
  sub_3DDA0(v18, v19);
  v20 = sub_2440(&qword_1C6848, &qword_172428);
  switch(sub_369C(v13, 3, v20))
  {
    case 1u:
      v36 = swift_task_alloc();
      *(v1 + 576) = v36;
      *v36 = v1;
      v36[1] = sub_3D10C;
      sub_3E254();

      return sub_3BEC8();
    case 2u:
      v24 = *(v1 + 544);
      sub_C1F30((v1 + 16));
      v25 = type metadata accessor for WellnessCATPatternsExecutor(0);
      sub_16D62C();
      v26 = sub_16D58C();
      *(v1 + 80) = v25;
      *(v1 + 88) = &off_1BA5B0;
      *(v1 + 56) = v26;
      v27 = type metadata accessor for WellnessLoggingCATPatternsExecutor(0);
      sub_16D62C();
      v28 = sub_16D58C();
      *(v1 + 120) = v27;
      *(v1 + 128) = &off_1BC5D0;
      *(v1 + 96) = v28;
      v29 = type metadata accessor for WellnessQueryingCATPatternsExecutor(0);
      sub_16D62C();
      v30 = sub_16D58C();
      *(v1 + 160) = v29;
      *(v1 + 168) = &off_1BA360;
      *(v1 + 136) = v30;
      *(v1 + 176) = 0;
      sub_17358();
      sub_16C4EC();
      sub_3E15C();
      sub_3DEC4(v24, v31);
      sub_173AC(v1 + 16);
      goto LABEL_9;
    case 3u:
      v32 = *(v1 + 544);
      sub_16D6FC();
      sub_6362C((v1 + 184));
      sub_82E0();
      sub_16C4EC();
      sub_8334(v1 + 184);
      sub_3E15C();
      sub_3DEC4(v32, v33);
LABEL_9:
      sub_3E194();

      sub_C9BC();
      sub_3E254();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      (*(*(v1 + 512) + 32))(*(v1 + 520), *(v1 + 536) + *(v20 + 48), *(v1 + 504));
      sub_16D72C();
      v21 = swift_task_alloc();
      *(v1 + 584) = v21;
      *v21 = v1;
      v21[1] = sub_3D2AC;
      sub_3E254();

      return sub_3C608();
  }
}

uint64_t sub_3D10C()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_3D1F0()
{
  v1 = v0[68];
  sub_2D20(v0 + 53, v0[56]);
  sub_16C4EC();
  sub_3E15C();
  sub_3DEC4(v1, v2);
  sub_2D64(v0 + 53);
  sub_3E194();

  sub_C9BC();

  return v3();
}

uint64_t sub_3D2AC()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

void sub_3D390()
{
  v1 = v0[68];
  sub_2D20(v0 + 48, v0[51]);
  sub_16C4EC();
  v2 = sub_C9F8();
  v3(v2);
  sub_3E15C();
  sub_3DEC4(v1, v4);
  sub_2D64(v0 + 48);
  sub_3E194();

  sub_C9BC();
  sub_3E254();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_3D470@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v90 = a3;
  sub_16DBEC();
  sub_42F0();
  v88 = v6;
  v89 = v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v87 = &v83 - v12;
  v13 = __chkstk_darwin(v11);
  v86 = &v83 - v14;
  __chkstk_darwin(v13);
  v85 = &v83 - v15;
  v16 = sub_2440(&qword_1C5690, &dword_16F320);
  v17 = sub_4348(v16);
  __chkstk_darwin(v17);
  v19 = &v83 - v18;
  v20 = sub_2440(&qword_1C57F8, &unk_172510);
  v21 = sub_4348(v20);
  __chkstk_darwin(v21);
  v23 = &v83 - v22;
  v24 = sub_16BE9C();
  sub_42F0();
  v84 = v25;
  __chkstk_darwin(v26);
  sub_3E204();
  sub_2D20(a2, a2[3]);
  sub_3E1B8();
  if (sub_16C40C() & 1) != 0 || (sub_2D20(a2, a2[3]), sub_3E1B8(), (sub_16C3FC()))
  {
    if (a1 == 270)
    {
      v27 = sub_16DBBC();
      sub_3E174(v27);
      v29 = v88;
      v28 = v89;
      (*(v89 + 16))(v10, v19, v88);
      v30 = sub_16DBDC();
      v31 = sub_16E37C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&def_259DC, v30, v31, "Cannot punchout for nil datatype", v32, 2u);
        sub_8A2C(v32);
      }

      (*(v28 + 8))(v10, v29);
    }

    else
    {
      v36 = a1;
      if (!sub_C1AF4(a1, &off_1B8198))
      {
        v54 = sub_16DBBC();
        sub_3E174(v54);
        v56 = v88;
        v55 = v89;
        v57 = v87;
        (*(v89 + 16))(v87, v19, v88);
        v58 = sub_16DBDC();
        v59 = sub_16E36C();
        if (sub_3E238(v59))
        {
          sub_8BD8();
          v60 = sub_3E21C();
          v91[0] = v60;
          *v57 = 136315138;
          sub_140650(v36);
          v63 = sub_3AB7C(v61, v62, v91);

          *(v57 + 4) = v63;
          sub_3E1C8(&def_259DC, v64, v65, "Punchout not supported for %s");
          sub_2D64(v60);
          sub_8A2C(v60);
          sub_8A2C(v57);
        }

        (*(v55 + 8))(v57, v56);
        v33 = sub_2440(&qword_1C6848, &qword_172428);
        v34 = v90;
        v35 = 2;
        return sub_214C(v34, v35, 3, v33);
      }

      sub_16D74();
      v37 = sub_16E14C();
      v38 = sub_1730C(a1, v37);

      if (v38 == 205)
      {
        v39 = sub_16DBBC();
        sub_3E174(v39);
        v41 = v88;
        v40 = v89;
        v42 = v86;
        (*(v89 + 16))(v86, v19, v88);
        v43 = sub_16DBDC();
        v44 = sub_16E37C();
        if (sub_3E238(v44))
        {
          sub_8BD8();
          v45 = sub_3E21C();
          v91[0] = v45;
          *v42 = 136315138;
          sub_140650(v36);
          v48 = sub_3AB7C(v46, v47, v91);

          *(v42 + 4) = v48;
          sub_3E1C8(&def_259DC, v49, v50, "Expected to create a HealthKit Identifier to punchout for %s");
          sub_2D64(v45);
          sub_8A2C(v45);
          sub_8A2C(v42);
        }

        (*(v40 + 8))(v42, v41);
      }

      else
      {
        v66 = sub_16BD9C();
        sub_214C(v19, 1, 1, v66);
        sub_12093C(v38, v19, v23);
        sub_1B918(v19, &qword_1C5690, &dword_16F320);
        if (sub_369C(v23, 1, v24) != 1)
        {
          v79 = *(v84 + 32);
          v79(v3, v23, v24);
          v80 = sub_2440(&qword_1C6848, &qword_172428);
          v81 = *(v80 + 48);
          v82 = v90;
          *v90 = v38;
          v79(&v82[v81], v3, v24);
          v34 = v82;
          v35 = 0;
          v33 = v80;
          return sub_214C(v34, v35, 3, v33);
        }

        sub_1B918(v23, &qword_1C57F8, &unk_172510);
        v67 = sub_16DBBC();
        sub_3E174(v67);
        v69 = v88;
        v68 = v89;
        v70 = v85;
        (*(v89 + 16))(v85, v19, v88);
        v71 = sub_16DBDC();
        v72 = sub_16E37C();
        if (sub_3E238(v72))
        {
          sub_8BD8();
          v73 = sub_3E21C();
          v91[0] = v73;
          *v70 = 136315138;
          v74 = sub_208C0(v38);
          v76 = sub_3AB7C(v74, v75, v91);

          *(v70 + 4) = v76;
          sub_3E1C8(&def_259DC, v77, v78, "Cannot create a punchout url for %s");
          sub_2D64(v73);
          sub_8A2C(v73);
          sub_8A2C(v70);
        }

        (*(v68 + 8))(v70, v69);
      }
    }

    v33 = sub_2440(&qword_1C6848, &qword_172428);
    v34 = v90;
    v35 = 3;
    return sub_214C(v34, v35, 3, v33);
  }

  v51 = sub_2440(&qword_1C6848, &qword_172428);
  v52 = v90;

  return sub_214C(v52, 1, 3, v51);
}

uint64_t sub_3DBD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_16D63C();
  v3 = sub_4348(v2);
  __chkstk_darwin(v3);
  sub_3E204();
  sub_C1F30(a1);
  v4 = type metadata accessor for WellnessCATPatternsExecutor(0);
  sub_16D62C();
  sub_38E5C();
  v5 = sub_16D58C();
  a1[8] = v4;
  a1[9] = &off_1BA5B0;
  a1[5] = v5;
  v6 = type metadata accessor for WellnessLoggingCATPatternsExecutor(0);
  sub_16D62C();
  sub_38E5C();
  v7 = sub_16D58C();
  a1[13] = v6;
  a1[14] = &off_1BC5D0;
  a1[10] = v7;
  v8 = type metadata accessor for WellnessQueryingCATPatternsExecutor(0);
  sub_16D62C();
  sub_38E5C();
  result = sub_16D58C();
  a1[18] = v8;
  a1[19] = &off_1BA360;
  a1[15] = result;
  return result;
}

uint64_t sub_3DCBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_3CB34();
}

uint64_t type metadata accessor for DataTypePunchoutFlow.PunchOutAction(uint64_t a1)
{
  result = qword_1C68E8;
  if (!qword_1C68E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3DDA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataTypePunchoutFlow.PunchOutAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3DE04()
{
  sub_2D64(v0 + 2);
  sub_2D64(v0 + 7);
  sub_2D64(v0 + 12);
  sub_2D64(v0 + 17);

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_3DE54(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C6850, &unk_172440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3DEC4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1BA5C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_3DF18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_3DF60()
{
  result = qword_1C6870;
  if (!qword_1C6870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6870);
  }

  return result;
}

uint64_t sub_3DFC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C6848, &qword_172428);
  v5 = sub_369C(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3E030(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_2440(&qword_1C6848, &qword_172428);

  return sub_214C(a1, v5, a3, v6);
}

uint64_t sub_3E09C(uint64_t a1)
{
  sub_3E0F4(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_3E0F4(uint64_t a1)
{
  if (!qword_1C68F8)
  {
    sub_16BE9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1C68F8);
    }
  }
}

uint64_t sub_3E174(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_3E194()
{
}

void sub_3E1C8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_3E21C()
{

  return swift_slowAlloc();
}

BOOL sub_3E238(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t type metadata accessor for WellnessCATsSimple(uint64_t a1)
{
  result = qword_1C6920;
  if (!qword_1C6920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3E2F8()
{
  sub_8A88();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v3);
  v1[4] = sub_8BC0();
  v4 = sub_17960();

  return _swift_task_switch(v4);
}

uint64_t sub_3E37C()
{
  sub_40240();
  v15 = v1;
  sub_C9EC();
  sub_40204();
  sub_2440(&qword_1C6078, &unk_172520);
  v2 = swift_allocObject();
  v3 = sub_401F8(v2);
  v4 = sub_400C8(v3, xmmword_16F530);
  sub_401C8(v4, v5, &qword_1C5800, &unk_16F510);
  v6 = sub_16D5CC();
  sub_400F8(v6);
  if (v7)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    sub_40154();
    v8();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v9 = swift_task_alloc();
  v10 = sub_4021C(v9);
  *v10 = v11;
  sub_40210(v10);
  sub_40160();
  v12 = sub_40144(28);

  return v13(v12);
}

uint64_t sub_3E4C0()
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
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_400A4();

    return v9(v8);
  }
}

uint64_t sub_3E5F0()
{
  sub_8A88();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v3);
  v1[4] = sub_8BC0();
  v4 = sub_17960();

  return _swift_task_switch(v4);
}

uint64_t sub_3E674()
{
  sub_40240();
  v14 = v1;
  sub_C9EC();
  sub_40204();
  sub_2440(&qword_1C6078, &unk_172520);
  v2 = swift_allocObject();
  v3 = sub_401F8(v2);
  *(v3 + 16) = xmmword_16F530;
  strcpy((v3 + 32), "activityType");
  *(v3 + 45) = 0;
  *(v3 + 46) = -5120;
  sub_401C8(v3, v4, &qword_1C5800, &unk_16F510);
  v5 = sub_16D5CC();
  sub_400F8(v5);
  if (v6)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    sub_40154();
    v7();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v8 = swift_task_alloc();
  v9 = sub_4021C(v8);
  *v9 = v10;
  sub_40210(v9);
  sub_40160();
  v11 = sub_40144(23);

  return v12(v11);
}

uint64_t sub_3E7D8()
{
  sub_386A8();
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_4008C;
  sub_40160();
  v3 = sub_40198(24);

  return v4(v3);
}

uint64_t sub_3E880()
{
  sub_386A8();
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_4008C;
  sub_40160();
  v3 = sub_40198(49);

  return v4(v3);
}

uint64_t sub_3E928()
{
  sub_8A88();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v3);
  v1[4] = sub_8BC0();
  v4 = sub_17960();

  return _swift_task_switch(v4);
}

uint64_t sub_3E9AC()
{
  sub_40240();
  v15 = v1;
  sub_C9EC();
  sub_40204();
  sub_2440(&qword_1C6078, &unk_172520);
  v2 = swift_allocObject();
  v3 = sub_401F8(v2);
  v4 = sub_400C8(v3, xmmword_16F530);
  sub_401C8(v4, v5, &qword_1C5800, &unk_16F510);
  v6 = sub_16D5CC();
  sub_400F8(v6);
  if (v7)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    sub_40154();
    v8();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v9 = swift_task_alloc();
  v10 = sub_4021C(v9);
  *v10 = v11;
  sub_40210(v10);
  sub_40160();
  v12 = sub_40144(17);

  return v13(v12);
}

uint64_t sub_3EAF0()
{
  sub_386A8();
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_3EB98;
  sub_40160();
  v3 = sub_40198(22);

  return v4(v3);
}

uint64_t sub_3EB98()
{
  sub_8A88();
  v3 = v2;
  v4 = *v1;
  sub_C990();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_3EC8C()
{
  sub_8A88();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v1[5] = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_3ED14()
{
  v1 = sub_2440(&qword_1C6078, &unk_172520);
  v2 = sub_40228(v1);
  v0[6] = v2;
  v3 = sub_400C8(v2, xmmword_1712E0);
  sub_401C8(v3, v4, &qword_1C5800, &unk_16F510);
  v5 = sub_16D5CC();
  if (sub_40124(v5) == 1)
  {
    sub_C878(v0[5], &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    sub_40154();
    v6();
  }

  v7 = v0[3];
  v2[5].n128_u64[0] = 0xD000000000000014;
  v2[5].n128_u64[1] = 0x800000000017DAD0;
  v8 = 0;
  if (v7)
  {
    v8 = sub_16D39C();
  }

  else
  {
    v2[6].n128_u64[1] = 0;
    v2[7].n128_u64[0] = 0;
  }

  v2[6].n128_u64[0] = v7;
  v2[7].n128_u64[1] = v8;
  v11 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_3EED8;

  return v11(0xD00000000000001BLL, 0x800000000017DAF0, v2);
}

uint64_t sub_3EED8()
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
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_400A4();

    return v9(v8);
  }
}

uint64_t sub_3F008()
{
  sub_8A88();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3F070()
{
  sub_386A8();
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_4008C;
  sub_40160();
  v3 = sub_40198(27);

  return v4(v3);
}

uint64_t sub_3F118()
{
  sub_386A8();
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_4008C;
  sub_40160();
  v3 = sub_40198(34);

  return v4(v3);
}

uint64_t sub_3F1C0()
{
  sub_8A88();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_3F25C()
{
  sub_40240();
  v16 = v1;
  sub_C9EC();
  v2 = v0[2];
  v3 = sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_40228(v3);
  v0[7] = v4;
  v5 = sub_4016C(v4, xmmword_1712E0);
  sub_401C8(v5, v6, &qword_1C5800, &unk_16F510);
  v7 = sub_16D5CC();
  if (sub_40124(v7) == 1)
  {
    sub_C878(v0[6], &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    sub_40154();
    v8();
  }

  v9 = v0[5];
  v10 = v0[3];
  *(v4 + 80) = 1953066613;
  *(v4 + 88) = 0xE400000000000000;
  sub_1955C(v10, v9, &qword_1C5800, &unk_16F510);
  if (sub_369C(v9, 1, v2) == 1)
  {
    sub_C878(v0[5], &qword_1C5800, &unk_16F510);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v2;
    sub_9910((v4 + 96));
    sub_400B8();
    sub_40154();
    v11();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_3F450;
  sub_40160();
  v13 = sub_40144(24);

  return v14(v13);
}

uint64_t sub_3F450()
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
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_400A4();

    return v9(v8);
  }
}

uint64_t sub_3F58C()
{
  sub_8A88();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  *(v1 + 32) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_3F614()
{
  sub_40240();
  v18 = v3;
  sub_C9EC();
  sub_40204();
  v4 = sub_2440(&qword_1C6078, &unk_172520);
  v5 = sub_40228(v4);
  v6 = sub_401F8(v5);
  v7 = sub_4016C(v6, xmmword_1712E0);
  sub_401C8(v7, v8, &qword_1C5800, &unk_16F510);
  v9 = sub_16D5CC();
  sub_400F8(v9);
  if (v10)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    sub_40154();
    v11();
  }

  v12 = *(v1 + 64);
  *(v2 + 80) = 0xD000000000000010;
  *(v2 + 88) = 0x800000000017DA40;
  *(v2 + 120) = &type metadata for Bool;
  *(v2 + 96) = v12;
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = sub_4021C(v13);
  *v14 = v15;
  sub_40210(v14);

  return v17(0xD000000000000014, 0x800000000017DA20, v2);
}

uint64_t sub_3F78C()
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
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_400A4();

    return v9(v8);
  }
}

uint64_t sub_3F8BC()
{
  sub_8A88();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3F924()
{
  sub_8A88();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_3F9C0()
{
  sub_40240();
  v15 = v1;
  sub_C9EC();
  v2 = v0[2];
  v3 = sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_40228(v3);
  v0[7] = v4;
  *(v4 + 16) = xmmword_1712E0;
  *(v4 + 32) = 1953066613;
  *(v4 + 40) = 0xE400000000000000;
  sub_401C8(v4, v5, &qword_1C5800, &unk_16F510);
  v6 = sub_16D5CC();
  if (sub_40124(v6) == 1)
  {
    sub_C878(v0[6], &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    sub_40154();
    v7();
  }

  v8 = v0[5];
  v9 = v0[3];
  *(v4 + 80) = 0xD000000000000016;
  *(v4 + 88) = 0x800000000017D9E0;
  sub_1955C(v9, v8, &qword_1C5800, &unk_16F510);
  if (sub_369C(v8, 1, v2) == 1)
  {
    sub_C878(v0[5], &qword_1C5800, &unk_16F510);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v2;
    sub_9910((v4 + 96));
    sub_400B8();
    sub_40154();
    v10();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_3FBD4;
  sub_40160();
  v12 = sub_40144(19);

  return v13(v12);
}

uint64_t sub_3FBD4()
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
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_400A4();

    return v9(v8);
  }
}

uint64_t sub_3FD10()
{
  sub_8A88();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3FD84(uint64_t a1)
{
  swift_allocObject();
  sub_40154();
  return sub_3FDD4(v1, v2, v3);
}

uint64_t sub_3FDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16D63C();
  sub_401A4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2440(&qword_1C57F8, &unk_172510);
  v12 = sub_4348(v11);
  __chkstk_darwin(v12);
  sub_1955C(a1, &v16 - v13, &qword_1C57F8, &unk_172510);
  (*(v7 + 16))(v10, a2, v3);
  v14 = sub_16D5DC();
  (*(v7 + 8))(a2, v3);
  sub_C878(a1, &qword_1C57F8, &unk_172510);
  return v14;
}

uint64_t sub_3FF4C(uint64_t a1, uint64_t a2)
{
  sub_16D63C();
  sub_401A4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16D5EC();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_4004C()
{
  v0 = sub_16D60C();

  return _swift_deallocClassInstance(v0, 16, 7);
}

__n128 *sub_400C8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6570795461746164;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

uint64_t sub_40124(uint64_t a1)
{

  return sub_369C(v1, 1, a1);
}

__n128 *sub_4016C(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6570797461746164;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

double sub_4018C()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t sub_401C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1955C(v4, v5, a3, a4);
}

uint64_t *sub_401E0()
{
  *(v1 + 72) = v0;

  return sub_9910((v1 + 48));
}

uint64_t sub_40228(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t isLoggingTask(from:)()
{
  sub_16CB3C();
  if (v11)
  {
    v0 = sub_16CE1C();
    sub_455B0(v0, v1, v2, v0, v3, v4, v5, v6, v8, v9);
    if (sub_457BC())
    {

      return 1;
    }
  }

  else
  {
    sub_8748(v10, &qword_1C63E0, &unk_1717D0);
  }

  return 0;
}

uint64_t isQueryingTask(from:)()
{
  v0 = sub_16CB3C();
  sub_45730(v0, v1, &qword_1C63E0, &unk_1717D0, v2, v3, v4, v5);
  if (*(&v12 + 1))
  {
    v6 = sub_16CF2C();
    if (sub_4551C(v6, v7))
    {

      sub_8748(&v13, &qword_1C63E0, &unk_1717D0);
      return 1;
    }
  }

  else
  {
    sub_8748(&v11, &qword_1C63E0, &unk_1717D0);
  }

  v11 = v13;
  v12 = v14;
  if (*(&v14 + 1))
  {
    v8 = sub_16CE5C();
    if (sub_4551C(v8, v9))
    {

      return 1;
    }
  }

  else
  {
    sub_8748(&v11, &qword_1C63E0, &unk_1717D0);
  }

  return 0;
}

uint64_t isLoggingTimeframeTodayOrNone(from:todayDate:)(uint64_t a1, uint64_t a2)
{
  if (isLoggingTimeframeToday(from:todayDate:)(a1, a2))
  {
    return 1;
  }

  return isLoggingTimeframeNone(from:)();
}

uint64_t isLoggingTimeframeToday(from:todayDate:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_16CB3C();
  sub_45730(v3, v4, &qword_1C63E0, &unk_1717D0, v5, v6, v7, v8);
  if (!v50)
  {
    v17 = sub_8748(v49, &qword_1C63E0, &unk_1717D0);
LABEL_5:
    sub_45730(v17, v18, &qword_1C63E0, &unk_1717D0, v19, v20, v21, v22);
    if (v50)
    {
      v23 = sub_16CF2C();
      sub_45540(v23, v24, v25, v26, v27, v28, v29, v30, v47, v48);
      v31 = swift_dynamicCast();
      if (v31)
      {
        sub_45884();
        sub_16CC0C();
        goto LABEL_12;
      }
    }

    else
    {
      v31 = sub_8748(v49, &qword_1C63E0, &unk_1717D0);
    }

    sub_45730(v31, v32, &qword_1C63E0, &unk_1717D0, v33, v34, v35, v36);
    if (v50)
    {
      v37 = sub_16CE5C();
      sub_45540(v37, v38, v39, v40, v41, v42, v43, v44, v47, v48);
      if (swift_dynamicCast())
      {
        sub_45884();
        sub_16CD1C();
        goto LABEL_12;
      }
    }

    else
    {
      sub_8748(v49, &qword_1C63E0, &unk_1717D0);
    }

    sub_8748(v51, &qword_1C63E0, &unk_1717D0);
    v45 = 0;
    return v45 & 1;
  }

  v9 = sub_16CE1C();
  sub_45540(v9, v10, v11, v12, v13, v14, v15, v16, v47, v48);
  v17 = swift_dynamicCast();
  if ((v17 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_45884();
  sub_16CACC();
LABEL_12:

  v45 = isTimeframeToday(from:todayDate:)(v49[0], a2);

  sub_8748(v51, &qword_1C63E0, &unk_1717D0);
  return v45 & 1;
}

uint64_t getMedStatus(from:)()
{
  v0 = sub_16CB3C();
  sub_45730(v0, v1, &qword_1C63E0, &unk_1717D0, v2, v3, v4, v5);
  if (!v17[3])
  {
    sub_8748(v17, &qword_1C63E0, &unk_1717D0);
    goto LABEL_5;
  }

  v6 = sub_16CE1C();
  sub_455B0(v6, v7, v8, v6, v9, v10, v11, v12, v15, v16);
  if ((sub_457BC() & 1) == 0)
  {
LABEL_5:
    sub_8748(v18, &qword_1C63E0, &unk_1717D0);
    v13 = 0;
    return v13 & 1;
  }

  sub_45884();
  sub_16CACC();

  v13 = getMedStatus(from:)(v17[0]);

  sub_8748(v18, &qword_1C63E0, &unk_1717D0);
  return v13 & 1;
}

uint64_t isMedicationRequest(from:)()
{
  v0 = sub_16CB3C();
  sub_45730(v0, v1, &qword_1C63E0, &unk_1717D0, v2, v3, v4, v5);
  if (*(&v92 + 1))
  {
    v6 = sub_16CF2C();
    v8 = sub_4551C(v6, v7);
    if (v8)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v8 = sub_8748(&v91, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v8, v9, &qword_1C63E0, &unk_1717D0, v10, v11, v12, v13);
  if (*(&v92 + 1))
  {
    v14 = sub_16CE1C();
    v16 = sub_4551C(v14, v15);
    if (v16)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v16 = sub_8748(&v91, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v16, v17, &qword_1C63E0, &unk_1717D0, v18, v19, v20, v21);
  if (*(&v92 + 1))
  {
    v22 = sub_16CE2C();
    v24 = sub_4551C(v22, v23);
    if (v24)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v24 = sub_8748(&v91, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v24, v25, &qword_1C63E0, &unk_1717D0, v26, v27, v28, v29);
  if (*(&v92 + 1))
  {
    v30 = sub_16CE5C();
    v32 = sub_4551C(v30, v31);
    if (v32)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v32 = sub_8748(&v91, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v32, v33, &qword_1C63E0, &unk_1717D0, v34, v35, v36, v37);
  if (*(&v92 + 1))
  {
    v38 = sub_16CE3C();
    v40 = sub_4551C(v38, v39);
    if (v40)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v40 = sub_8748(&v91, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v40, v41, &qword_1C63E0, &unk_1717D0, v42, v43, v44, v45);
  if (*(&v92 + 1))
  {
    v46 = sub_16CF3C();
    v48 = sub_4551C(v46, v47);
    if (v48)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v48 = sub_8748(&v91, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v48, v49, &qword_1C63E0, &unk_1717D0, v50, v51, v52, v53);
  if (*(&v92 + 1))
  {
    v54 = sub_16CEDC();
    v56 = sub_4551C(v54, v55);
    if (v56)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v56 = sub_8748(&v91, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v56, v57, &qword_1C63E0, &unk_1717D0, v58, v59, v60, v61);
  if (*(&v92 + 1))
  {
    v62 = sub_16CECC();
    v64 = sub_4551C(v62, v63);
    if (v64)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v64 = sub_8748(&v91, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v64, v65, &qword_1C63E0, &unk_1717D0, v66, v67, v68, v69);
  if (*(&v92 + 1))
  {
    v70 = sub_16CEEC();
    v72 = sub_4551C(v70, v71);
    if (v72)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v72 = sub_8748(&v91, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v72, v73, &qword_1C63E0, &unk_1717D0, v74, v75, v76, v77);
  if (*(&v92 + 1))
  {
    v78 = sub_16CEBC();
    v80 = sub_4551C(v78, v79);
    if (v80)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v80 = sub_8748(&v91, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v80, v81, &qword_1C63E0, &unk_1717D0, v82, v83, v84, v85);
  if (!*(&v92 + 1))
  {
    sub_8748(&v91, &qword_1C63E0, &unk_1717D0);
LABEL_47:
    v91 = v93;
    v92 = v94;
    if (*(&v94 + 1))
    {
      v89 = sub_16CEFC();
      if (sub_4551C(v89, v90))
      {

        return 1;
      }
    }

    else
    {
      sub_8748(&v91, &qword_1C63E0, &unk_1717D0);
    }

    return 0;
  }

  v86 = sub_16CF1C();
  if ((sub_4551C(v86, v87) & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_43:

  sub_8748(&v93, &qword_1C63E0, &unk_1717D0);
  return 1;
}

uint64_t isQueryAboutStatusOrSchedule(from:)()
{
  v0 = sub_16CB3C();
  sub_45730(v0, v1, &qword_1C63E0, &unk_1717D0, v2, v3, v4, v5);
  if (!v19)
  {
    v8 = sub_8748(v18, &qword_1C63E0, &unk_1717D0);
LABEL_5:
    sub_45730(v8, v9, &qword_1C63E0, &unk_1717D0, v10, v11, v12, v13);
    if (v19)
    {
      v14 = sub_16CE5C();
      if (sub_4551C(v14, v15))
      {
        sub_45884();
        sub_16CD1C();
        goto LABEL_8;
      }
    }

    else
    {
      sub_8748(v18, &qword_1C63E0, &unk_1717D0);
    }

    sub_8748(v20, &qword_1C63E0, &unk_1717D0);
    v16 = 0;
    return v16 & 1;
  }

  v6 = sub_16CF2C();
  v8 = sub_4551C(v6, v7);
  if ((v8 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_45884();
  sub_16CC0C();
LABEL_8:

  v16 = hasStatusOrSchedule(from:)(v18[0]);

  sub_8748(v20, &qword_1C63E0, &unk_1717D0);
  return v16 & 1;
}

uint64_t isLoggingTimeframeNone(from:)()
{
  v0 = sub_16CB3C();
  sub_45730(v0, v1, &qword_1C63E0, &unk_1717D0, v2, v3, v4, v5);
  if (v28)
  {
    v6 = sub_16CE1C();
    v8 = sub_4551C(v6, v7);
    if (v8)
    {
      sub_45754();
      sub_45630();
      sub_16CACC();
      goto LABEL_12;
    }
  }

  else
  {
    v8 = sub_8748(v27, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v8, v9, &qword_1C63E0, &unk_1717D0, v10, v11, v12, v13);
  if (v28)
  {
    v14 = sub_16CF2C();
    v16 = sub_4551C(v14, v15);
    if (v16)
    {
      sub_45754();
      sub_45630();
      sub_16CC0C();
      goto LABEL_12;
    }
  }

  else
  {
    v16 = sub_8748(v27, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v16, v17, &qword_1C63E0, &unk_1717D0, v18, v19, v20, v21);
  if (!v28)
  {
    sub_8748(v27, &qword_1C63E0, &unk_1717D0);
    goto LABEL_19;
  }

  v22 = sub_16CE5C();
  if ((sub_4551C(v22, v23) & 1) == 0)
  {
LABEL_19:
    sub_8748(v29, &qword_1C63E0, &unk_1717D0);
    return 0;
  }

  sub_45754();
  sub_45630();
  sub_16CD1C();
LABEL_12:

  if (!v27[0])
  {

    goto LABEL_16;
  }

  v24 = sub_16CCFC();

  if (!v24)
  {
LABEL_16:
    v25 = 1;
    goto LABEL_17;
  }

  v25 = 0;
LABEL_17:
  sub_8748(v29, &qword_1C63E0, &unk_1717D0);
  return v25;
}

uint64_t getLocalizedMedName(from:)()
{
  v1 = sub_16CB3C();
  sub_45730(v1, v2, &qword_1C63E0, &unk_1717D0, v3, v4, v5, v6);
  if (v46)
  {
    v7 = sub_16CE1C();
    v9 = sub_4551C(v7, v8);
    if (v9)
    {
      sub_45754();
      sub_45630();
      sub_16CACC();
      goto LABEL_12;
    }
  }

  else
  {
    v9 = sub_8748(v45, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v9, v10, &qword_1C63E0, &unk_1717D0, v11, v12, v13, v14);
  if (v46)
  {
    v15 = sub_16CF2C();
    v17 = sub_4551C(v15, v16);
    if (v17)
    {
      sub_45754();
      sub_45630();
      sub_16CC0C();
      goto LABEL_12;
    }
  }

  else
  {
    v17 = sub_8748(v45, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v17, v18, &qword_1C63E0, &unk_1717D0, v19, v20, v21, v22);
  if (!v46)
  {
    sub_45624();
    v31 = sub_8748(v28, v29, v30);
    v39 = sub_455A0(v31, v32, v33, v34, v35, v36, v37, v38, v43, v44, v45[0]);
LABEL_22:
    sub_8748(v39, v40, v41);
    return 0;
  }

  v23 = sub_16CE5C();
  if ((sub_4551C(v23, v24) & 1) == 0)
  {
    v40 = &qword_1C63E0;
    v41 = &unk_1717D0;
    v39 = v47;
    goto LABEL_22;
  }

  sub_45754();
  sub_45630();
  sub_16CD1C();
LABEL_12:

  if (!*v45)
  {
    goto LABEL_17;
  }

  sub_16CCEC();
  sub_4578C();
  if (!v0)
  {
    goto LABEL_17;
  }

  sub_16CD8C();
  sub_455D8();

  if (!sub_3B35C(v0))
  {

    goto LABEL_18;
  }

  sub_45568();
  sub_3B360();
  sub_457FC();

  sub_45850(v25, v26);

  if (!v44)
  {
LABEL_17:

LABEL_18:
    v27 = 0;
    goto LABEL_19;
  }

  v27 = sub_16CC1C();

LABEL_19:
  sub_8748(v47, &qword_1C63E0, &unk_1717D0);
  return v27;
}

uint64_t getUSOMedNames(from:)()
{
  v1 = sub_16CB3C();
  sub_45730(v1, v2, &qword_1C63E0, &unk_1717D0, v3, v4, v5, v6);
  if (v46)
  {
    v7 = sub_16CE1C();
    v9 = sub_4551C(v7, v8);
    if (v9)
    {
      sub_45754();
      sub_45630();
      sub_16CACC();
      goto LABEL_12;
    }
  }

  else
  {
    v9 = sub_8748(v45, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v9, v10, &qword_1C63E0, &unk_1717D0, v11, v12, v13, v14);
  if (v46)
  {
    v15 = sub_16CF2C();
    v17 = sub_4551C(v15, v16);
    if (v17)
    {
      sub_45754();
      sub_45630();
      sub_16CC0C();
      goto LABEL_12;
    }
  }

  else
  {
    v17 = sub_8748(v45, &qword_1C63E0, &unk_1717D0);
  }

  sub_45730(v17, v18, &qword_1C63E0, &unk_1717D0, v19, v20, v21, v22);
  if (v46)
  {
    v23 = sub_16CE5C();
    if (sub_4551C(v23, v24))
    {
      sub_45754();
      sub_45630();
      sub_16CD1C();
LABEL_12:

      v25 = *v45;
      if (*v45)
      {
        sub_16CCEC();
        sub_4578C();
        if (!v0)
        {
LABEL_21:
          getUsoMedNames(from:)(v0);
          sub_456D0();

          sub_8748(v47, &qword_1C63E0, &unk_1717D0);
          return v25;
        }

        v25 = v0;
        sub_16CD8C();
        sub_455D8();

        if (sub_3B35C(v0))
        {
          sub_45568();
          sub_3B360();
          sub_457FC();

          sub_45850(v26, v27);

          v0 = v44;
          goto LABEL_21;
        }
      }

      v0 = 0;
      goto LABEL_21;
    }

    v40 = &qword_1C63E0;
    v41 = &unk_1717D0;
    v39 = v47;
  }

  else
  {
    sub_45624();
    v31 = sub_8748(v28, v29, v30);
    v39 = sub_455A0(v31, v32, v33, v34, v35, v36, v37, v38, v43, v44, v45[0]);
  }

  sub_8748(v39, v40, v41);
  return 0;
}

uint64_t getMedSchedule(from:)()
{
  v0 = sub_16CB3C();
  sub_45730(v0, v1, &qword_1C63E0, &unk_1717D0, v2, v3, v4, v5);
  if (!v28)
  {
    v8 = sub_8748(v27, &qword_1C63E0, &unk_1717D0);
LABEL_5:
    sub_45730(v8, v9, &qword_1C63E0, &unk_1717D0, v10, v11, v12, v13);
    if (v28)
    {
      v14 = sub_16CF2C();
      v16 = sub_4551C(v14, v15);
      if (v16)
      {

        sub_16CC0C();
        goto LABEL_12;
      }
    }

    else
    {
      v16 = sub_8748(v27, &qword_1C63E0, &unk_1717D0);
    }

    sub_45730(v16, v17, &qword_1C63E0, &unk_1717D0, v18, v19, v20, v21);
    if (v28)
    {
      v22 = sub_16CE5C();
      if (sub_4551C(v22, v23))
      {

        sub_16CD1C();
        goto LABEL_12;
      }
    }

    else
    {
      sub_8748(v27, &qword_1C63E0, &unk_1717D0);
    }

    v25 = 0;
    goto LABEL_18;
  }

  v6 = sub_16CE1C();
  v8 = sub_4551C(v6, v7);
  if ((v8 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_16CACC();
LABEL_12:

  if (v27[0])
  {
    v24 = v27[0];
    sub_16CCEC();
    sub_456D0();
  }

  else
  {
    v24 = 0;
  }

  v25 = getMedScheduleDateTime(from:)(v24);

LABEL_18:
  sub_8748(v29, &qword_1C63E0, &unk_1717D0);
  return v25;
}

void getMedScheduleWithDefinedValues(from:deviceState:)(uint64_t a1, uint64_t a2)
{
  sub_4597C();
  v375 = v3;
  v5 = v4;
  v6 = sub_2440(&qword_1C6970, &qword_172588);
  v7 = sub_4348(v6);
  __chkstk_darwin(v7);
  sub_45590(&v336 - v8);
  v371 = sub_16CC8C();
  sub_42F0();
  v354 = v9;
  __chkstk_darwin(v10);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v11);
  sub_458D8();
  sub_45590(v12);
  sub_16DBEC();
  sub_42F0();
  v377 = v13;
  v378[0] = v14;
  __chkstk_darwin(v13);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v15);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v16);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v17);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v18);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v19);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v20);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v21);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v22);
  sub_458D8();
  sub_45590(v23);
  v376 = sub_16BD9C();
  sub_42F0();
  v361 = v24;
  __chkstk_darwin(v25);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v26);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v27);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v28);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v29);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v30);
  sub_458D8();
  sub_45590(v31);
  sub_16BF5C();
  sub_42F0();
  v373 = v33;
  v374 = v32;
  __chkstk_darwin(v32);
  sub_4304();
  v372 = v35 - v34;
  v36 = sub_2440(&qword_1C5690, &dword_16F320);
  v37 = sub_4348(v36);
  __chkstk_darwin(v37);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v38);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v39);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v40);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v41);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v42);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v43);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v44);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v45);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v46);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v47);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v48);
  sub_458D8();
  sub_45590(v49);
  v365 = sub_16D10C();
  sub_42F0();
  v364 = v50;
  __chkstk_darwin(v51);
  sub_4304();
  sub_45590(v53 - v52);
  v363 = sub_16D06C();
  sub_42F0();
  v362 = v54;
  __chkstk_darwin(v55);
  sub_4304();
  sub_45590(v57 - v56);
  v58 = sub_16CA4C();
  sub_42F0();
  v60 = v59;
  __chkstk_darwin(v61);
  sub_4304();
  v64 = v63 - v62;
  v65 = sub_2440(&qword_1C6978, &qword_172590);
  sub_8B38();
  __chkstk_darwin(v66);
  v68 = &v336 - v67;
  v69 = sub_2440(&qword_1C6980, &qword_172598);
  v70 = sub_4348(v69);
  __chkstk_darwin(v70);
  sub_887C();
  v73 = v71 - v72;
  __chkstk_darwin(v74);
  sub_8C94();
  __chkstk_darwin(v75);
  v77 = &v336 - v76;
  sub_16CB3C();
  sub_45478(v381, v379, &qword_1C63E0, &unk_1717D0);
  if (!v379[3])
  {
    sub_45624();
    sub_8748(v82, v83, v84);
    sub_45624();
LABEL_63:
    sub_8748(v85, v86, v87);
    sub_2440(&qword_1C6988, &unk_176730);
    goto LABEL_64;
  }

  sub_16CE1C();
  if ((sub_457BC() & 1) == 0)
  {
LABEL_62:
    v86 = &qword_1C63E0;
    v87 = &unk_1717D0;
    v85 = v381;
    goto LABEL_63;
  }

  v338 = v5;

  sub_16CACC();
  if (v379[0])
  {
    v78 = sub_16CCEC();

    if (v78)
    {
      v79 = sub_16CDAC();

      if (v79)
      {
        v80 = sub_16CD7C();

        if (v80)
        {
          if (sub_3B35C(v80))
          {
            sub_3B360();
            if ((v80 & 0xC000000000000001) != 0)
            {
              sub_457FC();
            }

            else
            {
            }

            sub_16C9EC();

            if (v380)
            {
              v81 = sub_16CB9C();

              if (v81)
              {
                sub_16CA3C();

                goto LABEL_16;
              }
            }
          }

          else
          {
          }
        }
      }
    }
  }

  sub_8AB4();
  sub_214C(v88, v89, v90, v58);
LABEL_16:
  (*(v60 + 104))(v2, enum case for UsoEntity_common_Date.DefinedValues.common_Date_Today(_:), v58);
  sub_45604();
  v91 = *(v65 + 48);
  v92 = &qword_172598;
  sub_45478(v77, v68, &qword_1C6980, &qword_172598);
  sub_45478(v2, &v68[v91], &qword_1C6980, &qword_172598);
  sub_8B20(v68, 1, v58);
  if (v95)
  {
    sub_8748(v2, &qword_1C6980, &qword_172598);
    v93 = sub_8B9C();
    sub_8748(v93, v94, &qword_172598);
    sub_8B20(&v68[v91], 1, v58);
    if (v95)
    {
      sub_8748(v68, &qword_1C6980, &qword_172598);
      sub_4565C();
LABEL_36:

      v128 = sub_454F8();
      v129(v128);
      v130 = sub_16D08C();
      sub_8D14(v130);
      sub_456D0();
      sub_16D07C();
      v131 = sub_454D4();
      v132(v131);
      v133 = sub_16D14C();
      sub_8D14(v133);
      sub_455D8();
      sub_16D12C();
      v134 = sub_4589C();
      sub_8D14(v134);
      sub_4563C();
      sub_8388(v375, v379);
      v135 = v372;
      sub_16BF4C();
      v136 = v368;
      sub_457B0();
      sub_13AA0C(v137, v138, v139, v140, v141, v142, v143, v144, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347);
      sub_457A4();
      v145(v135);
      sub_453DC(v379);
      v146 = v358;
      sub_45478(v136, v358, &qword_1C5690, &dword_16F320);
      v147 = v376;
      sub_8B20(v146, 1, v376);
      if (!v95)
      {
        sub_4557C();
        v156 = v91;
        v157 = v356;
        v158(v356, v146, v147);
        v159 = sub_2440(&qword_1C6988, &unk_176730);
        v160 = *(v159 + 48);
        v2 = v156;
        v377 = *(v159 + 64);
        v378[0] = v160;
        sub_2440(&qword_1C6990, &qword_1725A0);
        sub_16BD7C();
        sub_16BD4C();
        sub_45604();

        (*(v136 + 8))(v157, v147);
        sub_8748(v368, &qword_1C5690, &dword_16F320);
        sub_8748(v381, &qword_1C63E0, &unk_1717D0);
        v242 = xmmword_172570;
        goto LABEL_41;
      }

      sub_8748(v146, &qword_1C5690, &dword_16F320);
      v148 = sub_16DBBC();
      sub_455E4(v148);
      sub_45748();
      v149 = sub_45910();
      v150(v149);
      v151 = sub_16DBDC();
      v152 = sub_16E36C();
      if (sub_38670(v152))
      {
        v153 = sub_1BA38();
        sub_458CC(v153);
        sub_456DC(&def_259DC, v154, v155, "failed to resolve dateTime in getMedScheduleWithDefinedValues, return nil");
        sub_8A2C(v58);
      }

      (*(v60 + 8))(v147, v73);
      sub_8748(v136, &qword_1C5690, &dword_16F320);
      goto LABEL_62;
    }

    goto LABEL_24;
  }

  sub_45478(v68, v73, &qword_1C6980, &qword_172598);
  sub_8B20(&v68[v91], 1, v58);
  if (v95)
  {
    sub_8748(v2, &qword_1C6980, &qword_172598);
    v96 = sub_8B9C();
    sub_8748(v96, v97, &qword_172598);
    v98 = *(v60 + 8);
    v60 += 8;
    v98(v73, v58);
LABEL_24:
    sub_8748(v68, &qword_1C6978, &qword_172590);
    sub_4565C();
    goto LABEL_25;
  }

  (*(v60 + 32))(v64, &v68[v91], v58);
  sub_45430(&qword_1C69A0, &type metadata accessor for UsoEntity_common_Date.DefinedValues, &protocol conformance descriptor for UsoEntity_common_Date.DefinedValues);
  HIDWORD(v337) = sub_16E19C();
  v127 = *(v60 + 8);
  v60 += 8;
  v127(v64, v58);
  v92 = &qword_1C6980;
  v91 = &qword_172598;
  sub_8748(v2, &qword_1C6980, &qword_172598);
  sub_8748(v77, &qword_1C6980, &qword_172598);
  v127(v73, v58);
  sub_8748(v68, &qword_1C6980, &qword_172598);
  sub_4565C();
  if ((v337 & 0x100000000) != 0)
  {
    goto LABEL_36;
  }

LABEL_25:
  sub_16CACC();
  v99 = v371;
  v100 = v370;
  if (!v379[0])
  {
    goto LABEL_43;
  }

  sub_16CCEC();
  sub_456D0();

  sub_16CDAC();
  sub_4578C();
  if (!v92)
  {
    goto LABEL_43;
  }

  v101 = sub_16CD7C();

  if (!v101)
  {
    goto LABEL_43;
  }

  if (!sub_3B35C(v101))
  {

    goto LABEL_43;
  }

  sub_4595C();
  sub_16E48C();
  v102 = v355;

  sub_16C9EC();

  if (!v380)
  {
LABEL_43:
    sub_8AB4();
    sub_214C(v162, v163, v164, v99);
    goto LABEL_44;
  }

  sub_16CB6C();
  sub_456D0();

  sub_16CC7C();

  sub_8B20(v100, 1, v99);
  if (v95)
  {
LABEL_44:
    sub_8748(v100, &qword_1C6970, &qword_172588);
    sub_16CACC();
    if (v379[0])
    {
      sub_16CCEC();
      sub_456D0();

      sub_16CDAC();
      sub_4578C();
      if (v92)
      {
        v165 = sub_16CD7C();

        if (v165)
        {
          if (sub_3B35C(v165))
          {
            sub_4595C();
            sub_16E48C();

            sub_16C9EC();

            if (v380)
            {
              v166 = sub_16CB5C();

LABEL_52:
              v167 = v369;
              sub_16CACC();

              v168 = v379[0];
              if (v379[0])
              {
                sub_16CCEC();
                sub_455D8();

                sub_16CDAC();
                sub_4578C();
                sub_16CD7C();
                sub_455D8();

                if (sub_3B35C(v168))
                {
                  sub_45568();
                  sub_3B360();
                  sub_457FC();

                  sub_16C9EC();
                }

                else
                {
                }
              }

              if (!v166)
              {
                v182 = sub_16DBBC();
                sub_45674(v182);
                sub_45748();
                v183(v366, v182, v73);
                v184 = sub_16DBDC();
                v185 = sub_16E36C();
                if (os_log_type_enabled(v184, v185))
                {
                  v186 = sub_1BA38();
                  *v186 = 0;
                  sub_4593C(&def_259DC, v187, v188, "failed to resolve dateTime with meridien in getMedScheduleWithDefinedValues, return nil");
                  sub_8A2C(v186);
                }

                (*(v60 + 8))(v366, v73);
                goto LABEL_62;
              }

              v169 = sub_16DBBC();
              sub_8B48(v169, &v380);
              v371 = *(v60 + 16);
              v371(v167, v169, v73);

              v170 = sub_16DBDC();
              v171 = sub_16E36C();

              if (os_log_type_enabled(v170, v171))
              {
                v172 = swift_slowAlloc();
                v173 = swift_slowAlloc();
                v378[1] = v166;
                v379[0] = v173;
                *v172 = 136315138;
                sub_16D1DC();
                sub_456B8();
                sub_45430(v174, v175, &protocol conformance descriptor for DateTime);
                v176 = sub_16E68C();
                v178 = sub_3AB7C(v176, v177, v379);

                *(v172 + 4) = v178;
                _os_log_impl(&def_259DC, v170, v171, "here's the datetime: %s", v172, 0xCu);
                sub_2D64(v173);
                v179 = v338;
                sub_8A2C(v173);
                v180 = v377;
                sub_8A2C(v172);

                v181 = *(v378[0] + 8);
                v73 = v180;
                v181(v167, v180);
              }

              else
              {
                v193 = v60;
                v179 = v91;

                v181 = *(v193 + 8);
                v181(v167, v73);
              }

              sub_8388(v375, v379);
              v194 = v372;
              sub_16BF4C();
              v195 = v367;
              sub_13AA0C(v367, v166, 1, v194, v196, v197, v198, v199, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347);
              sub_457A4();
              v200 = v194;
              v201 = v195;
              v202(v200);
              sub_453DC(v379);
              v203 = v195;
              v204 = v359;
              sub_45478(v203, v359, &qword_1C5690, &dword_16F320);
              sub_456FC(v204);
              if (!v95)
              {
                sub_4557C();
                v377 = v166;
                v211 = v357;
                v212(v357, v204, v379);
                v213 = sub_2440(&qword_1C6988, &unk_176730);
                v214 = (v179 + *(v213 + 48));
                v378[0] = *(v213 + 64);
                v215 = v201;
                v216 = sub_2440(&qword_1C6990, &qword_1725A0);
                sub_16BD7C();
                sub_16BD4C();

                sub_459AC();
                (*(v166 + 8))(v211, v379);
                sub_8748(v215, &qword_1C5690, &dword_16F320);
                sub_8748(v381, &qword_1C63E0, &unk_1717D0);
                sub_214C(v179, 0, 1, v216);
                *v214 = 0;
                v214[1] = 0;
                *(v179 + v378[0]) = 0;
                goto LABEL_73;
              }

              sub_8748(v204, &qword_1C5690, &dword_16F320);
              sub_8B48(v169, v379);
              v371(v360, v169, v73);
              v205 = sub_16DBDC();
              v206 = sub_16E36C();
              if (sub_38670(v206))
              {
                v207 = sub_1BA38();
                sub_458CC(v207);
                sub_456DC(&def_259DC, v208, v209, "failed to resolve dateInterval with meridien in getMedScheduleWithDefinedValues, return nil");
                v210 = v201;
                v201 = v367;
                sub_8A2C(v210);
              }

              sub_459AC();

              v181(v360, v73);
              sub_8748(v201, &qword_1C5690, &dword_16F320);
              sub_8748(v381, &qword_1C63E0, &unk_1717D0);
              sub_2440(&qword_1C6988, &unk_176730);
LABEL_64:
              sub_8AB4();
LABEL_65:
              sub_214C(v189, v190, v191, v192);
              goto LABEL_66;
            }
          }

          else
          {
          }
        }
      }
    }

    v166 = 0;
    goto LABEL_52;
  }

  v103 = v354;
  (*(v354 + 32))(v353, v100, v99);
  sub_45904();
  v104 = v352;
  sub_45814();
  v105();
  v106 = (*(v103 + 88))(v104, v99);
  if (v106 == enum case for UsoEntity_common_DateTimeRange.DefinedValues.common_DateTimeRange_Afternoon(_:))
  {
    v107 = sub_454F8();
    v108(v107);
    v109 = sub_16D08C();
    sub_8D14(v109);
    sub_456D0();
    sub_16D07C();
    v110 = sub_454D4();
    v111(v110);
    v112 = sub_16D14C();
    sub_8D14(v112);
    sub_455D8();
    sub_16D12C();
    v113 = sub_4589C();
    sub_8D14(v113);
    sub_4563C();
    sub_45868();
    v114 = v372;
    v115 = sub_16BF4C();
    v102 = v351;
    sub_4576C(v115, v116, v117, v118, v119, v120, v121, v122, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347);
    sub_457A4();
    v123(v114);
    sub_453DC(v379);
    v124 = v350;
    sub_45478(v102, v350, &qword_1C5690, &dword_16F320);
    sub_456FC(v124);
    if (!v95)
    {
      sub_4557C();
      sub_458F8();
      sub_45624();
      v236();
      v237 = sub_2440(&qword_1C6988, &unk_176730);
      sub_455BC(v237);
      sub_2440(&qword_1C6990, &qword_1725A0);
      sub_45690();
      sub_16BD4C();
      sub_45604();

      v238 = sub_45720();
      v239(v238);
      sub_8748(v351, &qword_1C5690, &dword_16F320);
      v240 = sub_45550();
      v241(v240, v371);
      sub_8748(v381, &qword_1C63E0, &unk_1717D0);
      v242 = xmmword_172560;
LABEL_41:
      v161 = v377;
      *(v2 + v378[0]) = v242;
      *(v2 + v161) = 1;
LABEL_73:
      sub_457B0();
      goto LABEL_65;
    }

    sub_8748(v124, &qword_1C5690, &dword_16F320);
    v125 = sub_16DBBC();
    sub_455E4(v125);
    sub_45748();
    v126 = v378;
    goto LABEL_82;
  }

  if (v106 == enum case for UsoEntity_common_DateTimeRange.DefinedValues.common_DateTimeRange_Night(_:))
  {
    v217 = sub_454F8();
    v218(v217);
    v219 = sub_16D08C();
    sub_8D14(v219);
    sub_456D0();
    sub_16D07C();
    v220 = sub_454D4();
    v221(v220);
    v222 = sub_16D14C();
    sub_8D14(v222);
    sub_455D8();
    sub_16D12C();
    v223 = sub_4589C();
    sub_8D14(v223);
    sub_4563C();
    sub_45868();
    v224 = v372;
    v225 = sub_16BF4C();
    sub_4576C(v225, v226, v227, v228, v229, v230, v231, v232, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347);
    sub_457A4();
    v233(v224);
    sub_453DC(v379);
    v234 = v349;
    sub_45478(v102, v349, &qword_1C5690, &dword_16F320);
    sub_456FC(v234);
    if (!v95)
    {
      sub_4557C();
      sub_458F8();
      sub_45624();
      v272();
      v273 = sub_2440(&qword_1C6988, &unk_176730);
      sub_455BC(v273);
      sub_2440(&qword_1C6990, &qword_1725A0);
      sub_45690();
      sub_16BD4C();
      sub_45604();

      v274 = sub_45720();
      v275(v274);
      sub_8748(v355, &qword_1C5690, &dword_16F320);
      v276 = sub_45550();
      v277(v276, v371);
      sub_8748(v381, &qword_1C63E0, &unk_1717D0);
      v242 = xmmword_172550;
      goto LABEL_41;
    }

    sub_8748(v234, &qword_1C5690, &dword_16F320);
    v235 = sub_16DBBC();
    sub_455E4(v235);
    sub_45748();
    v126 = &v374;
    goto LABEL_82;
  }

  if (v106 == enum case for UsoEntity_common_DateTimeRange.DefinedValues.common_DateTimeRange_Evening(_:))
  {
    v243 = sub_454F8();
    v244(v243);
    v245 = sub_16D08C();
    sub_8D14(v245);
    sub_456D0();
    sub_16D07C();
    v246 = sub_454D4();
    v247(v246);
    v248 = sub_16D14C();
    sub_8D14(v248);
    sub_455D8();
    sub_16D12C();
    v249 = sub_4589C();
    sub_8D14(v249);
    sub_4563C();
    sub_45868();
    v250 = v372;
    v251 = sub_16BF4C();
    v102 = v348;
    sub_4576C(v251, v252, v253, v254, v255, v256, v257, v258, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347);
    sub_457A4();
    v259(v250);
    sub_453DC(v379);
    v260 = v346;
    sub_45478(v102, v346, &qword_1C5690, &dword_16F320);
    sub_456FC(v260);
    if (!v95)
    {
      sub_4557C();
      sub_458F8();
      sub_45624();
      v308();
      v309 = sub_2440(&qword_1C6988, &unk_176730);
      sub_455BC(v309);
      sub_2440(&qword_1C6990, &qword_1725A0);
      sub_45690();
      sub_16BD4C();
      sub_45604();

      v310 = sub_45720();
      v311(v310);
      sub_8748(v348, &qword_1C5690, &dword_16F320);
      v312 = sub_45550();
      v313(v312, v371);
      sub_8748(v381, &qword_1C63E0, &unk_1717D0);
      v242 = xmmword_172540;
      goto LABEL_41;
    }

    sub_8748(v260, &qword_1C5690, &dword_16F320);
    v261 = sub_16DBBC();
    sub_455E4(v261);
    sub_45748();
    v126 = &v370;
LABEL_82:
    v262 = *(v126 - 32);
    v263 = sub_8B9C();
    v264(v263);
    v265 = sub_16DBDC();
    v266 = sub_16E36C();
    if (sub_38670(v266))
    {
      v267 = sub_1BA38();
      v377 = v100;
      sub_458CC(v267);
      sub_456DC(&def_259DC, v268, v269, "failed to resolve dateTime in getMedScheduleWithDefinedValues, return nil");
      sub_8A2C(v100);
    }

    (*(v60 + 8))(v262, v73);
    sub_8748(v102, &qword_1C5690, &dword_16F320);
    v270 = sub_45550();
    v271(v270, v99);
    goto LABEL_62;
  }

  if (v106 == enum case for UsoEntity_common_DateTimeRange.DefinedValues.common_DateTimeRange_Morning(_:))
  {
    v278 = sub_454F8();
    v279(v278);
    v280 = sub_16D08C();
    sub_8D14(v280);
    sub_456D0();
    sub_16D07C();
    v281 = sub_454D4();
    v282(v281);
    v283 = sub_16D14C();
    sub_8D14(v283);
    sub_455D8();
    sub_16D12C();
    v284 = sub_4589C();
    sub_8D14(v284);
    sub_4563C();
    sub_8388(v375, v379);
    v285 = v372;
    sub_16BF4C();
    v286 = v347;
    sub_457B0();
    sub_13AA0C(v287, v288, v289, v290, v291, v292, v293, v294, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347);
    sub_457A4();
    v295(v285);
    sub_453DC(v379);
    v296 = v342;
    sub_45478(v286, v342, &qword_1C5690, &dword_16F320);
    v297 = v376;
    sub_8B20(v296, 1, v376);
    if (!v95)
    {
      sub_4557C();
      v327 = sub_458F8();
      v328(v327, v296, v297);
      v329 = sub_2440(&qword_1C6988, &unk_176730);
      v378[0] = *(v329 + 48);
      v330 = *(v329 + 64);
      sub_2440(&qword_1C6990, &qword_1725A0);
      v331 = v338;
      sub_16BD7C();
      sub_16BD4C();
      sub_45604();
      sub_459AC();

      v332 = sub_45720();
      v333(v332);
      sub_8748(v347, &qword_1C5690, &dword_16F320);
      v334 = sub_45550();
      v335(v334, v371);
      sub_8748(v381, &qword_1C63E0, &unk_1717D0);
      *(v331 + v378[0]) = xmmword_172530;
      *(v331 + v330) = 1;
      goto LABEL_73;
    }

    sub_8748(v296, &qword_1C5690, &dword_16F320);
    v298 = sub_16DBBC();
    sub_455E4(v298);
    sub_45748();
    v299 = sub_45910();
    v300(v299);
    v301 = sub_16DBDC();
    v302 = sub_16E36C();
    if (sub_38670(v302))
    {
      v303 = sub_1BA38();
      sub_458CC(v303);
      sub_456DC(&def_259DC, v304, v305, "failed to resolve dateTime in getMedScheduleWithDefinedValues, return nil");
      sub_8A2C(v286);
    }

    sub_459AC();

    (*(v60 + 8))(v297, v73);
    sub_8748(v347, &qword_1C5690, &dword_16F320);
    v306 = sub_45550();
    v307(v306, v371);
    sub_8748(v381, &qword_1C63E0, &unk_1717D0);
    sub_2440(&qword_1C6988, &unk_176730);
    goto LABEL_64;
  }

  v314 = sub_16DBBC();
  sub_45674(v314);
  sub_45748();
  v315 = v343;
  v316(v343, v314, v73);
  v317 = sub_16DBDC();
  v318 = sub_16E36C();
  if (os_log_type_enabled(v317, v318))
  {
    v319 = sub_1BA38();
    *v319 = 0;
    sub_4593C(&def_259DC, v320, v321, "getMedScheduleWithDefinedValues got a definedValue that is not handled, return nil");
    sub_8A2C(v319);
  }

  (*(v60 + 8))(v315, v73);
  v322 = *(v354 + 8);
  v322(v353, v99);
  sub_8748(v381, &qword_1C63E0, &unk_1717D0);
  sub_2440(&qword_1C6988, &unk_176730);
  sub_8AB4();
  sub_214C(v323, v324, v325, v326);
  v322(v352, v99);
LABEL_66:
  sub_45924();
}

void getMedEventDate(from:deviceState:)(uint64_t a1, uint64_t a2)
{
  sub_4597C();
  v61 = v3;
  v5 = v4;
  v6 = sub_16BF5C();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_4304();
  v12 = v11 - v10;
  v13 = sub_16DBEC();
  sub_42F0();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_887C();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  sub_8C94();
  __chkstk_darwin(v21);
  v23 = &v54 - v22;
  sub_16CB3C();
  sub_45478(v65, v63, &qword_1C63E0, &unk_1717D0);
  if (!v63[3])
  {
    sub_8748(v63, &qword_1C63E0, &unk_1717D0);
    goto LABEL_9;
  }

  sub_16CE1C();
  if ((sub_457BC() & 1) == 0)
  {
LABEL_9:
    v40 = sub_16DBBC();
    sub_45674(v40);
    sub_45904();
    v41(v19, v40, v13);
    v42 = sub_16DBDC();
    v43 = sub_16E36C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = sub_1BA38();
      *v44 = 0;
      _os_log_impl(&def_259DC, v42, v43, "couldn't convert to task to common_MedicationEvent in getMedEventDate, returning nil", v44, 2u);
      sub_8A2C(v44);
    }

    (*(v15 + 8))(v19, v13);
    goto LABEL_15;
  }

  v60 = v5;
  v24 = v64;

  v25 = v24;
  sub_16CACC();

  if (!v63[0] || (v25 = sub_16CCFC(), , !v25))
  {
    v45 = sub_16DBBC();
    sub_455E4(v45);
    sub_45904();
    v46(v2, v25, v13);
    v47 = sub_16DBDC();
    v48 = sub_16E36C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = sub_1BA38();
      *v49 = 0;
      _os_log_impl(&def_259DC, v47, v48, "couldn't convert to dateTime in getMedEventDate, returning nil", v49, 2u);
      sub_8A2C(v49);
    }

    (*(v15 + 8))(v2, v13);
LABEL_15:
    sub_8748(v65, &qword_1C63E0, &unk_1717D0);
    goto LABEL_16;
  }

  v26 = sub_16CB5C();

  v27 = sub_16DBBC();
  sub_8B48(v27, &v64);
  sub_45904();
  v28(v23, v27, v13);

  v29 = sub_16DBDC();
  v30 = sub_16E36C();

  v59 = v30;
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v58 = v31;
    v56 = swift_slowAlloc();
    v62 = v26;
    v63[0] = v56;
    *v31 = 136315138;
    sub_16D1DC();
    sub_456B8();
    sub_45430(v32, v33, &protocol conformance descriptor for DateTime);
    v55 = v29;
    v34 = sub_16E68C();
    v36 = sub_3AB7C(v34, v35, v63);
    v57 = v26;
    v37 = v36;

    v38 = v58;
    *(v58 + 1) = v37;
    v29 = v55;
    _os_log_impl(&def_259DC, v55, v59, "here's the datetime: %s", v38, 0xCu);
    v39 = v56;
    sub_2D64(v56);
    sub_8A2C(v39);
    sub_8A2C(v58);
  }

  (*(v15 + 8))(v23, v13);
  sub_8388(v61, v63);
  sub_16BF4C();
  sub_13B45C();

  (*(v8 + 8))(v12, v6);
  sub_453DC(v63);
  sub_8748(v65, &qword_1C63E0, &unk_1717D0);
LABEL_16:
  sub_457B0();
  sub_214C(v50, v51, v52, v53);
  sub_45924();
}

uint64_t hasDosageEdit(from:)()
{
  v1 = sub_16CB3C();
  sub_45730(v1, v2, &qword_1C63E0, &unk_1717D0, v3, v4, v5, v6);
  if (v37)
  {
    v7 = sub_16CE1C();
    sub_455B0(v7, v8, v9, v7, v10, v11, v12, v13, v33, v34);
    if (sub_457BC())
    {
      sub_45754();
      sub_45630();
      sub_16CACC();

      if (!v36)
      {
        goto LABEL_12;
      }

      sub_16CCEC();
      sub_4578C();
      if (!v0)
      {
        goto LABEL_12;
      }

      sub_16CD8C();
      sub_455D8();

      if (!sub_3B35C(v0))
      {

        goto LABEL_13;
      }

      sub_45568();
      sub_3B360();
      sub_457FC();

      sub_45850(v14, v15);

      if (v35)
      {

        v16 = sub_16CC2C();

        if (v16)
        {

          v17 = 1;
LABEL_14:
          sub_8748(v38, &qword_1C63E0, &unk_1717D0);
          return v17;
        }
      }

      else
      {
LABEL_12:
      }

LABEL_13:
      v17 = 0;
      goto LABEL_14;
    }

    v30 = &qword_1C63E0;
    v31 = &unk_1717D0;
    v29 = v38;
  }

  else
  {
    sub_45624();
    v21 = sub_8748(v18, v19, v20);
    v29 = sub_455A0(v21, v22, v23, v24, v25, v26, v27, v28, v33, v34, v36);
  }

  sub_8748(v29, v30, v31);
  return 0;
}

void hasDateEdit(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_4597C();
  v3 = sub_16CB8C();
  sub_42F0();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_4304();
  v9 = v8 - v7;
  v10 = sub_2440(&qword_1C69A8, &qword_1725A8);
  sub_8B38();
  __chkstk_darwin(v11);
  v13 = &v71 - v12;
  v14 = sub_2440(&qword_1C69B0, qword_1725B0);
  v15 = sub_4348(v14);
  __chkstk_darwin(v15);
  sub_887C();
  v18 = v16 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v71 - v21;
  __chkstk_darwin(v20);
  v24 = &v71 - v23;
  sub_16CB3C();
  sub_45478(v75, v74, &qword_1C63E0, &unk_1717D0);
  if (!v74[3])
  {
    sub_8748(v74, &qword_1C63E0, &unk_1717D0);
    goto LABEL_21;
  }

  sub_16CE1C();
  if ((sub_457BC() & 1) == 0)
  {
LABEL_21:
    sub_8748(v75, &qword_1C63E0, &unk_1717D0);
    goto LABEL_22;
  }

  v25 = v5;

  sub_16CACC();
  if (v74[0] && (v26 = sub_16CCFC(), , v26))
  {
    sub_16CB7C();
  }

  else
  {
    sub_457B0();
    sub_214C(v27, v28, v29, v30);
  }

  (*(v25 + 104))(v22, enum case for UsoEntity_common_DateTime.DefinedValues.common_DateTime_Now(_:), v3);
  sub_457B0();
  sub_214C(v31, v32, v33, v34);
  v35 = *(v10 + 48);
  sub_45478(v24, v13, &qword_1C69B0, qword_1725B0);
  sub_45478(v22, &v13[v35], &qword_1C69B0, qword_1725B0);
  sub_8B20(v13, 1, v3);
  if (v43)
  {
    v36 = qword_1725B0;
    sub_45814();
    sub_8748(v37, v38, v39);
    sub_45814();
    sub_8748(v40, v41, v42);
    sub_8B20(&v13[v35], 1, v3);
    if (v43)
    {
      sub_8748(v13, &qword_1C69B0, qword_1725B0);
LABEL_20:

      goto LABEL_21;
    }

    goto LABEL_16;
  }

  sub_45478(v13, v18, &qword_1C69B0, qword_1725B0);
  sub_8B20(&v13[v35], 1, v3);
  if (v43)
  {
    v36 = qword_1725B0;
    sub_45814();
    sub_8748(v44, v45, v46);
    sub_45814();
    sub_8748(v47, v48, v49);
    (*(v25 + 8))(v18, v3);
LABEL_16:
    sub_8748(v13, &qword_1C69A8, &qword_1725A8);
    goto LABEL_17;
  }

  (*(v25 + 32))(v9, &v13[v35], v3);
  sub_45430(&qword_1C69B8, &type metadata accessor for UsoEntity_common_DateTime.DefinedValues, &protocol conformance descriptor for UsoEntity_common_DateTime.DefinedValues);
  v51 = sub_16E19C();
  v52 = *(v25 + 8);
  v52(v9, v3);
  v36 = &qword_1C69B0;
  sub_8748(v22, &qword_1C69B0, qword_1725B0);
  sub_8748(v24, &qword_1C69B0, qword_1725B0);
  v52(v18, v3);
  sub_8748(v13, &qword_1C69B0, qword_1725B0);
  if (v51)
  {
    goto LABEL_20;
  }

LABEL_17:
  sub_16CACC();
  v50 = v74[0];
  if (v74[0])
  {
    sub_16CCFC();
    sub_455D8();

    sub_16CB9C();
    sub_4578C();
  }

  sub_16CACC();

  if (v74[0])
  {
    v53 = v74[0];
    sub_16CCEC();
    sub_457E4();
  }

  else
  {
    v53 = 0;
  }

  getMedScheduleDateTime(from:)(v53);
  sub_45994();
  if (v36)
  {
    v54 = sub_16CB9C();

    if (!v50)
    {
LABEL_32:
      v55 = 0;
      if (!v54)
      {
        LOBYTE(v56) = 0;
        LOBYTE(v57) = 0;
        v36 = (&def_259DC + 1);
LABEL_37:
        LOBYTE(v58) = 1;
        goto LABEL_42;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v54 = 0;
    if (!v50)
    {
      goto LABEL_32;
    }
  }

  sub_16CA5C();
  sub_455D8();

  sub_16CB1C();
  sub_45838();
  v55 = v36 ^ 1;
  if (!v54)
  {
    v57 = 0;
    goto LABEL_36;
  }

LABEL_33:

  sub_16CA5C();
  sub_457E4();
  sub_16CB1C();
  sub_45838();
  v57 = v36 ^ 1;
  if (!v50)
  {
    v56 = 0;
    v36 = (&def_259DC + 1);
    goto LABEL_38;
  }

LABEL_36:

  sub_16CA5C();
  sub_455D8();

  v56 = sub_16CB1C();
  sub_45838();
  if (!v54)
  {
    goto LABEL_37;
  }

LABEL_38:

  v58 = sub_16CA5C();

  if (!v58)
  {
LABEL_42:
    if (v36)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

  v59 = sub_16CB1C();
  v61 = v60;

  LOBYTE(v58) = 0;
  if (v36)
  {
    if (v61)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

  if (v61)
  {
LABEL_45:
    if (v55 & 1) != 0 && (v57)
    {
      v62 = 0;
      goto LABEL_48;
    }

LABEL_51:
    v62 = 1;
    if (!v50)
    {
      goto LABEL_55;
    }

    goto LABEL_52;
  }

  v62 = v56 == v59;
  if ((v55 & v57 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  if (!v50)
  {
LABEL_55:
    if (v58)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

LABEL_52:

  sub_16CA2C();
  sub_455D8();

  sub_16CC4C();
  sub_45994();
  if (!v36)
  {
    goto LABEL_55;
  }

  sub_16CB1C();

  if (v58)
  {
    goto LABEL_61;
  }

LABEL_56:

  sub_16CA2C();
  sub_457E4();
  if (v54)
  {
    sub_16CC4C();
    sub_45994();
    if (v36)
    {
      sub_16CB1C();

      if (!v50)
      {
        LOBYTE(v56) = 0;
        goto LABEL_67;
      }

      goto LABEL_61;
    }
  }

LABEL_60:
  if (!v50)
  {
LABEL_65:
    v66 = 1;
    if (v58)
    {
      goto LABEL_72;
    }

    LOBYTE(v56) = 0;
    goto LABEL_67;
  }

LABEL_61:

  v63 = sub_16CA2C();

  if (!v63)
  {
    goto LABEL_65;
  }

  v64 = sub_16CC4C();

  if (!v64)
  {
    goto LABEL_65;
  }

  LOBYTE(v56) = sub_16CB1C();
  sub_45838();
  if (v58)
  {
    v65 = 1;
    goto LABEL_71;
  }

LABEL_67:

  sub_16CA2C();
  sub_457E4();
  if (v54)
  {
    v67 = sub_16CC4C();

    if (v67)
    {
      LODWORD(v73) = v62;
      sub_16CB1C();

      v66 = 0;
      goto LABEL_72;
    }
  }

  v65 = 0;
LABEL_71:
  v66 = v65;
LABEL_72:
  if (v50)
  {

    sub_16CA1C();
    sub_455D8();

    sub_16CB1C();
    sub_458B4();
    if (v66)
    {
LABEL_80:

      sub_16CA1C();
      sub_455D8();

      v72 = sub_16CB1C();
      sub_458B4();
      if ((v66 & 1) == 0)
      {
        sub_458E4();
        goto LABEL_85;
      }

LABEL_83:
      sub_8748(v75, &qword_1C63E0, &unk_1717D0);

      goto LABEL_22;
    }
  }

  else if (v66)
  {
    goto LABEL_79;
  }

  sub_16CA1C();
  sub_457E4();
  if (v54)
  {
    sub_16CB1C();
    sub_458B4();
    if (v50)
    {
      goto LABEL_80;
    }

    goto LABEL_84;
  }

LABEL_79:
  if (v50)
  {
    goto LABEL_80;
  }

  if (v66)
  {
    goto LABEL_83;
  }

LABEL_84:
  sub_458E4();
  v72 = 0;
  LOBYTE(v56) = 1;
LABEL_85:

  v68 = sub_16CA1C();

  if (v68)
  {
    sub_16CB1C();
    v70 = v69;

    sub_8748(v75, &qword_1C63E0, &unk_1717D0);
    if (v56 & 1) != 0 || (v70)
    {
      sub_457D4();
    }
  }

  else
  {
    sub_8748(v75, &qword_1C63E0, &unk_1717D0);

    sub_457D4();
  }

LABEL_22:
  sub_45924();
}

BOOL hasTimeEdit(from:)()
{
  v2 = sub_16CB3C();
  sub_45730(v2, v3, &qword_1C63E0, &unk_1717D0, v4, v5, v6, v7);
  if (!v34[3])
  {
    sub_8748(v34, &qword_1C63E0, &unk_1717D0);
    goto LABEL_6;
  }

  v8 = sub_16CE1C();
  sub_455B0(v8, v9, v10, v8, v11, v12, v13, v14, v32, v33);
  if ((sub_457BC() & 1) == 0)
  {
LABEL_6:
    sub_8748(v35, &qword_1C63E0, &unk_1717D0);
    return 0;
  }

  sub_45754();
  sub_45630();
  sub_16CACC();
  if (v34[0])
  {
    sub_16CCFC();
    sub_455D8();

    sub_16CBAC();
    sub_4578C();
  }

  sub_45630();
  sub_16CACC();

  if (v34[0])
  {
    v16 = v34[0];
    sub_16CCEC();
    sub_457E4();
  }

  else
  {
    v16 = 0;
  }

  getMedScheduleDateTime(from:)(v16);
  sub_45994();
  if (v0)
  {
    v17 = sub_16CBAC();

    if (!v34[0])
    {
LABEL_16:
      v18 = 0;
      if (!v17)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v17 = 0;
    if (!v34[0])
    {
      goto LABEL_16;
    }
  }

  sub_16CA7C();
  sub_455D8();

  sub_16CB1C();
  sub_45838();
  v18 = v0 ^ 1;
  if (!v17)
  {
LABEL_19:

    sub_16CA7C();
    sub_455D8();

    v19 = sub_16CB1C();
    sub_458B4();
    if (!v17)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

LABEL_17:

  sub_16CA7C();
  sub_457E4();
  sub_16CB1C();

LABEL_18:
  if (v34[0])
  {
    goto LABEL_19;
  }

  v19 = 0;
  v1 = 1;
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_22:

  v20 = sub_16CA7C();

  if (v20)
  {
    v21 = sub_16CB1C();
    v23 = v22;

    if (v1)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

LABEL_27:
  v21 = 0;
  v23 = 1;
  if (v1)
  {
LABEL_28:
    if (v23)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

LABEL_24:
  if ((v23 & 1) == 0)
  {
    v24 = v19 == v21;
    if (v18)
    {
      goto LABEL_31;
    }

LABEL_33:
    v24 = 1;
    if (!v34[0])
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

LABEL_29:
  if ((v18 & 1) == 0)
  {
    goto LABEL_33;
  }

  v24 = 0;
LABEL_31:
  if (!v34[0])
  {
LABEL_36:
    v25 = 0;
    if (!v17)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_34:

  sub_16CA8C();
  sub_455D8();

  sub_16CB1C();
  sub_45838();
  v25 = v19 ^ 1;
  if (!v17)
  {
    goto LABEL_39;
  }

LABEL_37:

  sub_16CA8C();
  sub_457E4();
  sub_16CB1C();

LABEL_38:
  if (!v34[0])
  {
    v26 = 0;
    v1 = 1;
    if (!v17)
    {
      goto LABEL_40;
    }

    goto LABEL_42;
  }

LABEL_39:

  sub_16CA8C();
  sub_455D8();

  v26 = sub_16CB1C();
  sub_458B4();
  if (!v17)
  {
LABEL_40:
    sub_8748(v35, &qword_1C63E0, &unk_1717D0);
    goto LABEL_49;
  }

LABEL_42:

  v27 = sub_16CA8C();

  if (v27)
  {
    v28 = sub_16CB1C();
    v30 = v29;

    sub_8748(v35, &qword_1C63E0, &unk_1717D0);
    if (v1)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

  sub_8748(v35, &qword_1C63E0, &unk_1717D0);

LABEL_49:

  v28 = 0;
  v30 = 1;
  if (v1)
  {
LABEL_50:
    if (v30)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_44:
  if ((v30 & 1) == 0)
  {
    if (v25)
    {
      v31 = v26 == v28;
      if (v24)
      {
        return !v31;
      }

      goto LABEL_54;
    }

    goto LABEL_52;
  }

LABEL_51:
  if (v25)
  {
LABEL_54:
    v31 = 0;
    return !v31;
  }

LABEL_52:
  if (!v24)
  {
    goto LABEL_54;
  }

  v31 = 1;
  return !v31;
}

void isSpecificMedRequest(from:deviceState:)(uint64_t a1, uint64_t a2)
{
  sub_4597C();
  v2 = sub_16DBEC();
  sub_42F0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_4304();
  v8 = v7 - v6;
  sub_2440(&qword_1C69C0, &unk_174290);
  sub_8B38();
  __chkstk_darwin(v9);
  sub_887C();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = sub_8B9C();
  getMedScheduleWithDefinedValues(from:deviceState:)(v16, v17);
  v45 = getLocalizedMedName(from:)();
  v19 = v18;
  v20 = getUSOMedNames(from:)();
  if (v20)
  {
    v21 = *(v20 + 16);

    v22 = v21 != 0;
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_2440(&qword_1C6988, &unk_176730);
  sub_8B20(v15, 1, v23);
  v24 = v24 && v19 == 0;
  v25 = !v24 || v22;
  v46 = v22;
  v47 = v25;
  v26 = sub_16DBBC();
  sub_8B48(v26, &v51);
  (*(v4 + 16))(v8, v26, v2);
  sub_45478(v15, v12, &qword_1C69C0, &unk_174290);

  v27 = sub_16DBDC();
  v28 = sub_16E36C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v44 = v2;
    v30 = v29;
    v43 = swift_slowAlloc();
    v50 = v43;
    *v30 = 136315906;
    v31 = sub_16E3DC();
    v33 = v32;
    sub_8748(v12, &qword_1C69C0, &unk_174290);
    v34 = sub_3AB7C(v31, v33, &v50);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v48 = v45;
    v49 = v19;
    sub_2440(&qword_1C69C8, &qword_174150);
    v35 = sub_16E3DC();
    v37 = v36;

    v38 = sub_3AB7C(v35, v37, &v50);

    *(v30 + 14) = v38;
    *(v30 + 22) = 2080;
    if (v46)
    {
      v39 = 1702195828;
    }

    else
    {
      v39 = 0x65736C6166;
    }

    if (v46)
    {
      v40 = 0xE400000000000000;
    }

    else
    {
      v40 = 0xE500000000000000;
    }

    v41 = sub_3AB7C(v39, v40, &v50);

    *(v30 + 24) = v41;
    *(v30 + 32) = 1024;
    *(v30 + 34) = v47;
    _os_log_impl(&def_259DC, v27, v28, "Checking specific med request:\nschedule: %s,\nlocalizedMedName: %s,\nfirstUSOMedName: %s,\ncombined: %{BOOL}d", v30, 0x26u);
    v42 = v43;
    swift_arrayDestroy();
    sub_8A2C(v42);
    sub_8A2C(v30);

    (*(v4 + 8))(v8, v44);
  }

  else
  {

    sub_8748(v12, &qword_1C69C0, &unk_174290);
    (*(v4 + 8))(v8, v2);
  }

  sub_8748(v15, &qword_1C69C0, &unk_174290);
  sub_45924();
}

BOOL isQueryAboutDetails(from:)()
{
  v1 = sub_16CB3C();
  sub_45730(v1, v2, &qword_1C63E0, &unk_1717D0, v3, v4, v5, v6);
  if (!v39)
  {
    v9 = sub_8748(v38, &qword_1C63E0, &unk_1717D0);
LABEL_7:
    sub_45730(v9, v10, &qword_1C63E0, &unk_1717D0, v11, v12, v13, v14);
    if (v39)
    {
      v16 = sub_16CE5C();
      if (sub_4551C(v16, v17))
      {
        sub_45754();
        sub_45630();
        sub_16CD1C();
        if (v38[0] && (sub_16CCFC(), sub_4578C(), v0))
        {

          v15 = 1;
        }

        else
        {
          v15 = 0;
        }

        sub_45630();
        sub_16CD1C();
        goto LABEL_19;
      }

      v30 = &qword_1C63E0;
      v31 = &unk_1717D0;
      v29 = v40;
    }

    else
    {
      sub_45624();
      v21 = sub_8748(v18, v19, v20);
      v29 = sub_455A0(v21, v22, v23, v24, v25, v26, v27, v28, v36, v37, v38[0]);
    }

    sub_8748(v29, v30, v31);
    return 0;
  }

  v7 = sub_16CF2C();
  v9 = sub_4551C(v7, v8);
  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_45754();
  sub_45630();
  sub_16CC0C();
  if (v38[0] && (sub_16CCFC(), sub_4578C(), v0))
  {

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  sub_45630();
  sub_16CC0C();
LABEL_19:

  if (!v38[0])
  {
    goto LABEL_25;
  }

  sub_16CCEC();
  sub_4578C();
  if (!v0)
  {
    goto LABEL_25;
  }

  sub_16CD8C();
  sub_455D8();

  if (!sub_3B35C(v0))
  {

LABEL_26:
    sub_8748(v40, &qword_1C63E0, &unk_1717D0);
    return (v15 & 1) != 0;
  }

  sub_45568();
  sub_3B360();
  sub_457FC();

  sub_45850(v32, v33);

  if (!v37)
  {
LABEL_25:

    goto LABEL_26;
  }

  v34 = sub_16CC2C();

  if (v34)
  {

    sub_8748(v40, &qword_1C63E0, &unk_1717D0);
    return 1;
  }

  sub_8748(v40, &qword_1C63E0, &unk_1717D0);
  return v15 != 0;
}

BOOL medScheduleHasOneMed(from:)()
{
  v0 = sub_16CB3C();
  sub_45730(v0, v1, &qword_1C63E0, &unk_1717D0, v2, v3, v4, v5);
  if (v34)
  {
    v6 = sub_16CE1C();
    sub_455B0(v6, v7, v8, v6, v9, v10, v11, v12, v31, v32);
    if (sub_457BC())
    {
      sub_45754();
      sub_45630();
      sub_16CACC();

      if (v33)
      {
        sub_16CCEC();
        sub_455D8();

        v13 = sub_16CD8C();
        if (v13)
        {
          v14 = sub_3A700(v13);

          v15 = v14 == 1;
LABEL_10:
          sub_8748(v35, &qword_1C63E0, &unk_1717D0);
          return v15;
        }
      }

      v15 = 0;
      goto LABEL_10;
    }

    v28 = &qword_1C63E0;
    v29 = &unk_1717D0;
    v27 = v35;
  }

  else
  {
    sub_45624();
    v19 = sub_8748(v16, v17, v18);
    v27 = sub_455A0(v19, v20, v21, v22, v23, v24, v25, v26, v31, v32, v33);
  }

  sub_8748(v27, v28, v29);
  return 0;
}

uint64_t getMedDosageUnit(from:)()
{
  v1 = sub_16CB3C();
  sub_45730(v1, v2, &qword_1C63E0, &unk_1717D0, v3, v4, v5, v6);
  if (v37)
  {
    v7 = sub_16CE1C();
    sub_455B0(v7, v8, v9, v7, v10, v11, v12, v13, v33, v34);
    if (sub_457BC())
    {
      sub_45754();
      sub_45630();
      sub_16CACC();

      if (v36)
      {
        sub_16CCEC();
        sub_4578C();
        if (v0)
        {
          sub_16CD8C();
          sub_455D8();

          if (sub_3B35C(v0))
          {
            sub_45568();
            sub_3B360();
            sub_457FC();

            sub_45850(v14, v15);

            v16 = v35;
LABEL_12:
            v31 = getUsoMedDosageUnit(from:)(v16);

            sub_8748(v38, &qword_1C63E0, &unk_1717D0);
            return v31;
          }
        }
      }

      v16 = 0;
      goto LABEL_12;
    }

    v29 = &qword_1C63E0;
    v30 = &unk_1717D0;
    v28 = v38;
  }

  else
  {
    sub_45624();
    v20 = sub_8748(v17, v18, v19);
    v28 = sub_455A0(v20, v21, v22, v23, v24, v25, v26, v27, v33, v34, v36);
  }

  sub_8748(v28, v29, v30);
  return 0;
}

uint64_t getMedDosageValue(from:)()
{
  v1 = sub_16CB3C();
  sub_45730(v1, v2, &qword_1C63E0, &unk_1717D0, v3, v4, v5, v6);
  if (v37)
  {
    v7 = sub_16CE1C();
    sub_455B0(v7, v8, v9, v7, v10, v11, v12, v13, v33, v34);
    if (sub_457BC())
    {
      sub_45754();
      sub_45630();
      sub_16CACC();

      if (v36)
      {
        sub_16CCEC();
        sub_4578C();
        if (v0)
        {
          sub_16CD8C();
          sub_455D8();

          if (sub_3B35C(v0))
          {
            sub_45568();
            sub_3B360();
            sub_457FC();

            sub_45850(v14, v15);

            v16 = v35;
LABEL_12:
            v31 = getMedDosageValue(from:)(v16);

            sub_8748(v38, &qword_1C63E0, &unk_1717D0);
            return v31;
          }
        }
      }

      v16 = 0;
      goto LABEL_12;
    }

    v29 = &qword_1C63E0;
    v30 = &unk_1717D0;
    v28 = v38;
  }

  else
  {
    sub_45624();
    v20 = sub_8748(v17, v18, v19);
    v28 = sub_455A0(v20, v21, v22, v23, v24, v25, v26, v27, v33, v34, v36);
  }

  sub_8748(v28, v29, v30);
  return 0;
}

uint64_t sub_45430(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_45478(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2440(a3, a4);
  sub_8B38();
  v5 = sub_8B9C();
  v6(v5);
  return a2;
}

uint64_t sub_4551C(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_455BC(uint64_t result)
{
  v2 = *(result + 48);
  *(v1 - 208) = *(result + 64);
  *(v1 - 200) = v2;
  return result;
}

uint64_t sub_455E4(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_45604()
{

  return sub_214C(v1, 0, 1, v0);
}

uint64_t sub_4563C()
{

  return DateTime.init(withDate:occurringIn:)(v0, v1);
}

uint64_t sub_45674(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_45690()
{

  return sub_16BD7C();
}

void sub_456DC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_45730(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  return sub_45478(va1, va, a3, a4);
}

uint64_t sub_45754()
{
}

void sub_4576C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_13AA0C(v22, v21, 1, v20, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_4578C()
{
}

uint64_t sub_457BC()
{

  return swift_dynamicCast();
}

uint64_t sub_457E4()
{
}

uint64_t sub_457FC()
{

  return sub_16E48C();
}

uint64_t sub_45820()
{
}

uint64_t sub_45838()
{
}

void *sub_45850(uint64_t a1, uint64_t a2, ...)
{

  return sub_16C9EC();
}

uint64_t sub_45868()
{
  v2 = *(v0 - 224);

  return sub_8388(v2, v0 - 184);
}

uint64_t sub_45884()
{
}

uint64_t sub_4589C()
{

  return sub_16D1DC();
}

uint64_t sub_458B4()
{
}

void sub_4593C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_4595C()
{

  return sub_3B360();
}

uint64_t sub_45994()
{
}

uint64_t sub_459AC()
{
}

uint64_t type metadata accessor for WellnessUnsupportedCATsSimple(uint64_t a1)
{
  result = qword_1C69D0;
  if (!qword_1C69D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_45AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16D63C();
  sub_401A4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v11 - 8);
  sub_372FC(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16D5DC();
  (*(v7 + 8))(a2, v3);
  sub_45D08(a1);
  return v13;
}

uint64_t sub_45C00(uint64_t a1, uint64_t a2)
{
  sub_16D63C();
  sub_401A4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16D5EC();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_45D08(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_45D70(uint64_t a1)
{
  v85 = sub_16C89C();
  sub_42F0();
  v84 = v2;
  __chkstk_darwin(v3);
  sub_4304();
  sub_130A0(v5 - v4);
  v6 = sub_2440(&qword_1C6250, &qword_1715A8);
  __chkstk_darwin(v6 - 8);
  sub_130A0(v81 - v7);
  v98 = sub_16C83C();
  sub_42F0();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_4304();
  v99 = v12 - v11;
  v13 = sub_16C80C();
  sub_42F0();
  v101 = v14;
  __chkstk_darwin(v15);
  sub_4304();
  v100 = v17 - v16;
  v18 = sub_16C7DC();
  sub_42F0();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_4304();
  v24 = v23 - v22;
  v25 = sub_16DBEC();
  sub_42F0();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v29);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v30);
  v32 = v81 - v31;
  v33 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v93 = v27;
  v35 = *(v27 + 16);
  v34 = v27 + 16;
  v97 = v33;
  v94 = v25;
  v96 = v34;
  v95 = v35;
  v35(v32, v33, v25);
  v36 = *(v20 + 16);
  v87 = v20 + 16;
  v86 = v36;
  v36(v24, a1, v18);
  v37 = sub_16DBDC();
  v38 = sub_16E36C();
  v39 = sub_4B38C(v38);
  v90 = v18;
  if (v39)
  {
    v40 = sub_8BD8();
    v82 = v9;
    v41 = v40;
    v81[0] = sub_CA30();
    v103[0] = v81[0];
    *v41 = 136315138;
    sub_4B13C(&qword_1C5998, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v42 = sub_16E68C();
    v81[1] = a1;
    v43 = v13;
    v45 = v44;
    v46 = sub_4B4A4();
    v47(v46);
    sub_3AB7C(v42, v45, v103);
    sub_4B430();
    v13 = v43;

    *(v41 + 4) = v42;
    _os_log_impl(&def_259DC, v37, v34, "LoggingCorrectionsFlow on(correction:) for input: %s", v41, 0xCu);
    v48 = sub_4B4F8(&v104);
    sub_2D64(v48);
    sub_8A2C(v18);
    v49 = v41;
    v9 = v82;
    sub_8A2C(v49);
  }

  else
  {

    v50 = sub_4B4A4();
    v51(v50);
  }

  v52 = *(v93 + 8);
  v53 = v94;
  v52(v32, v94);
  v54 = v100;
  sub_16C7CC();
  v55 = sub_38E50();
  v57 = v56(v55);
  v58 = v99;
  if (v57 == enum case for Parse.uso(_:))
  {
    v59 = sub_38E50();
    v60(v59);
    (*(v9 + 32))(v58, v54, v98);
    sub_4B4F8(&v105);
    sub_385D8();
    swift_beginAccess();
    v61 = v89;
    sub_4B370();
    v62();
    v63 = sub_16DBDC();
    sub_16E36C();
    sub_4B4BC();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = sub_1BA38();
      sub_1BA50(v65);
      sub_4B3F0(&def_259DC, v63, v61, "LoggingCorrectionsFlow examining USO parse...");
      sub_8A2C(v9);
    }

    v52(v61, v53);
    v66 = v91;
    v67 = v90;
    sub_4B408();
    v68();
    sub_214C(v66, 0, 1, v67);
    v69 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionInput;
    v70 = v92;
    sub_4B52C(v92 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionInput, v103);
    sub_4B060(v66, v70 + v69, &qword_1C6250, &qword_1715A8);
    swift_endAccess();
    if (sub_46C8C(v58))
    {
      v71 = v83;
      sub_16C82C();
      v72 = sub_10E3DC();
      sub_13094();
      v73(v71, v85);
      if (v72)
      {
        v102[3] = &type metadata for WellnessTask;
        v102[4] = sub_4B0B0();
        v102[0] = v72;

        v74 = v92;
        sub_47154(v102, v103);

        (*(v9 + 8))(v58, v98);
        sub_2D64(v102);
        sub_4B52C(v74 + 16, v102);
        sub_4B104(v103, v74 + 16);
        swift_endAccess();
        return 1;
      }
    }

    (*(v9 + 8))(v58, v98);
  }

  else
  {
    sub_4B4F8(&v105);
    sub_385D8();
    swift_beginAccess();
    v76 = v88;
    sub_4B370();
    v77();
    v78 = sub_16DBDC();
    sub_16E36C();
    sub_4B4BC();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = sub_1BA38();
      sub_1BA50(v80);
      sub_4B3F0(&def_259DC, v78, v76, "LoggingCorrectionsFlow encountered non-uso parse. Not handling.");
      sub_1BA00();
    }

    v52(v76, v53);
    (*(v101 + 8))(v100, v13);
  }

  return 0;
}

uint64_t sub_46598()
{
  v0 = sub_16DBEC();
  sub_42F0();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_4304();
  v6 = v5 - v4;
  v7 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  (*(v2 + 16))(v6, v7, v0);
  v8 = sub_16DBDC();
  v9 = sub_16E36C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_1BA38();
    *v10 = 0;
    _os_log_impl(&def_259DC, v8, v9, "LoggingCorrectionsFlow on(input:) - This is unexpected", v10, 2u);
    sub_38604();
  }

  (*(v2 + 8))(v6, v0);
  return 0;
}

uint64_t sub_466D8()
{
  sub_8A88();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_16DBEC();
  v1[14] = v3;
  sub_888C(v3);
  v1[15] = v4;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  sub_8ACC();

  return _swift_task_switch(v5);
}

uint64_t sub_467A0(uint64_t a1)
{
  v2 = v1[13];
  v3 = *(v2 + 64);
  sub_16DBBC();
  if (v3)
  {
    if (v3 == 1)
    {
      sub_385D8();
      swift_beginAccess();
      v4 = sub_1B9F0();
      v5(v4);
      v6 = sub_16DBDC();
      v7 = sub_16E36C();
      if (sub_1BA1C(v7))
      {
        v8 = sub_1BA38();
        sub_1BA50(v8);
        sub_1B9D0(&def_259DC, v9, v10, "LoggingCorrectionsFlow Execute - Correcting");
        sub_1BA00();
      }

      v11 = sub_C9F8();
      v12(v11);
      v13 = swift_task_alloc();
      v1[19] = v13;
      *v13 = v1;
      v13[1] = sub_46AAC;

      return sub_48B90();
    }

    sub_385D8();
    swift_beginAccess();
    v27 = sub_1B9F0();
    v28(v27);
    v29 = sub_16DBDC();
    v30 = sub_16E36C();
    if (sub_1BA1C(v30))
    {
      v31 = sub_1BA38();
      sub_1BA50(v31);
      sub_1B9D0(&def_259DC, v32, v33, "LoggingCorrectionsFlow Execute - Done");
      sub_1BA00();
    }

    v34 = sub_C9F8();
    v35(v34);
    sub_16C50C();
  }

  else
  {
    sub_385D8();
    swift_beginAccess();
    v15 = sub_1B9F0();
    v16(v15);
    v17 = sub_16DBDC();
    v18 = sub_16E36C();
    if (sub_1BA1C(v18))
    {
      v19 = sub_1BA38();
      sub_1BA50(v19);
      sub_1B9D0(&def_259DC, v20, v21, "LoggingCorrectionsFlow Execute - Ready");
      sub_1BA00();
    }

    v22 = v1[13];

    v23 = sub_C9F8();
    v24(v23);
    *(v2 + 64) = 1;
    v1[11] = v22;
    type metadata accessor for LoggingCorrectionsFlow(0);
    sub_4B2C8();
    sub_4B13C(v25, v26, &unk_1727F8);
    sub_16C4DC();
  }

  sub_C9BC();

  return v36();
}

uint64_t sub_46AAC()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  sub_8ACC();

  return _swift_task_switch(v3);
}

uint64_t sub_46B94()
{
  sub_8A88();
  *(*(v0 + 104) + 64) = 2;

  sub_C9BC();

  return v1();
}

uint64_t sub_46C0C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LoggingCorrectionsFlow(0);
  sub_4B2C8();
  sub_4B13C(v2, v3, &unk_1727F8);
  return sub_16C33C();
}

uint64_t sub_46C8C(uint64_t a1)
{
  v65 = a1;
  v66 = sub_16C89C();
  sub_42F0();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_4304();
  v6 = v5 - v4;
  v7 = sub_16DBEC();
  sub_42F0();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_38634();
  v63 = v11;
  v13 = __chkstk_darwin(v12);
  v15 = &v63 - v14;
  __chkstk_darwin(v13);
  sub_8AC0();
  v64 = v16;
  __chkstk_darwin(v17);
  v19 = &v63 - v18;
  v20 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v21 = *(v9 + 16);
  v69 = v7;
  v67 = v21;
  v21(v19, v20, v7);
  v22 = sub_16DBDC();
  v23 = sub_16E36C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v15;
    v25 = v9;
    v26 = sub_1BA38();
    *v26 = 0;
    _os_log_impl(&def_259DC, v22, v23, "isCorrectionsSteeringSupportedBySelf", v26, 2u);
    v27 = v26;
    v9 = v25;
    v15 = v24;
    sub_8A2C(v27);
  }

  v28 = *(v9 + 8);
  v29 = v69;
  v68 = v9 + 8;
  v28(v19, v69);
  sub_16C82C();
  v30 = sub_10E3DC();
  (*(v2 + 8))(v6, v66);
  sub_385D8();
  if (v30)
  {
    swift_beginAccess();
    v31 = v64;
    sub_4B3E0();
    v32();
    sub_4B4E0();
    swift_retain_n();
    v33 = sub_16DBDC();
    v34 = sub_16E36C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = sub_8BD8();
      v66 = v28;
      v36 = v35;
      v37 = sub_CA30();
      v70[0] = v37;
      *v36 = 136315138;

      sub_B41D0();
      v39 = v38;
      v41 = v40;

      v42 = sub_3AB7C(v39, v41, v70);
      v29 = v69;

      *(v36 + 4) = v42;
      _os_log_impl(&def_259DC, v33, v34, "Received corrections intent: %s", v36, 0xCu);
      sub_2D64(v37);
      sub_1BA00();
      v43 = v36;
      v28 = v66;
      sub_8A2C(v43);

      v44 = v64;
    }

    else
    {

      v44 = v31;
    }

    v28(v44, v29);
    if (sub_4A750(v30))
    {
      sub_4B4E0();

      return 1;
    }

    sub_385D8();
    swift_beginAccess();
    sub_4B3E0();
    v55();
    v46 = sub_16DBDC();
    v56 = sub_16E37C();
    if (!sub_4B3A8(v56))
    {

      sub_4B4E0();

      goto LABEL_15;
    }

    v57 = sub_1BA38();
    *v57 = 0;
    sub_4B4B0();
    _os_log_impl(v58, v59, v60, v61, v62, 2u);
    sub_8A2C(v57);
    sub_4B4E0();
  }

  else
  {
    swift_beginAccess();
    v15 = v63;
    sub_4B3E0();
    v45();
    v46 = sub_16DBDC();
    v47 = sub_16E37C();
    if (sub_4B3A8(v47))
    {
      v48 = sub_1BA38();
      *v48 = 0;
      sub_4B4B0();
      _os_log_impl(v49, v50, v51, v52, v53, 2u);
      sub_8A2C(v48);
    }
  }

LABEL_15:
  v28(v15, v29);
  return 0;
}

uint64_t sub_47154@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v324 = a2;
  v323 = sub_16CC6C();
  sub_42F0();
  v313 = v4;
  __chkstk_darwin(v5);
  sub_4304();
  sub_130A0(v7 - v6);
  v322 = sub_2440(&qword_1C6C28, &qword_174F10);
  sub_8B38();
  __chkstk_darwin(v8);
  sub_130A0(&v307 - v9);
  v311 = sub_2440(&qword_1C5680, &unk_16F310);
  sub_8B38();
  __chkstk_darwin(v10);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v11);
  sub_8AC0();
  sub_13058();
  v13 = __chkstk_darwin(v12);
  v15 = &v307 - v14;
  __chkstk_darwin(v13);
  sub_130A0(&v307 - v16);
  v325 = sub_16BD9C();
  sub_42F0();
  v312 = v17;
  __chkstk_darwin(v18);
  sub_4304();
  sub_130A0(v20 - v19);
  v321 = sub_2440(&qword_1C6C30, &qword_172898);
  sub_8B38();
  __chkstk_darwin(v21);
  sub_130A0(&v307 - v22);
  v310 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_8B38();
  __chkstk_darwin(v23);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v24);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v25);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v26);
  sub_130A0(&v307 - v27);
  v28 = sub_16DBEC();
  sub_42F0();
  v337 = v29;
  __chkstk_darwin(v30);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v31);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v32);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v33);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v34);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v35);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v36);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v37);
  v39 = &v307 - v38;
  v334 = type metadata accessor for SynthesizedWellnessIntent(0);
  sub_8B38();
  __chkstk_darwin(v40);
  sub_4304();
  v43 = v42 - v41;
  v329 = *(v2 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_lastSavedSampleHKIdentifier);
  v44 = (v2 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_lastSavedSampleIntent);
  sub_8388(v2 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_lastSavedSampleIntent, &v346);
  sub_3054(&v346, v43);
  sub_4B1F0();
  v45 = sub_4B214();
  v47 = v46(v45);
  v336 = v28;
  v335 = v43;
  v333 = v15;
  if (v47 == 270)
  {
    v48 = v327;
    sub_4B504();
    v49 = v331;
    goto LABEL_28;
  }

  v50 = v47;
  sub_4B1F0();
  v51 = sub_4B214();
  v53 = v52(v51);
  v54 = v44[3];
  v55 = v44[4];
  v56 = sub_38E50();
  sub_2D20(v56, v57);
  v58 = sub_4B430();
  v60 = v59(v58, v55);
  if (v53 == 270)
  {
    v15 = v333;
    v48 = v327;
    v49 = v331;
    if (v60 == 270)
    {
      goto LABEL_10;
    }

LABEL_7:
    sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    sub_4B234();
    sub_4B244();
    v61();
    v62 = sub_16DBDC();
    v63 = sub_16E36C();
    if (sub_4B3A8(v63))
    {
      v64 = sub_8BD8();
      v49 = sub_CA30();
      v346 = v49;
      *v64 = 136315138;
      v345 = v50;
      v65 = sub_16E1EC();
      v15 = v66;
      v67 = sub_3AB7C(v65, v66, &v346);

      *(v64 + 4) = v67;
      v48 = v327;
      sub_4B4B0();
      _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
      sub_2D64(v49);
      v73 = sub_4B294();
      sub_8A2C(v73);
      sub_8A2C(v64);
    }

    sub_4B224();
    sub_4B2BC();
    v74();
    sub_4B1F0();
    v75 = sub_4B214();
    v77 = v76(v75);
    *(v335 + 2) = v77;
    goto LABEL_10;
  }

  v15 = v333;
  v48 = v327;
  v49 = v331;
  if (v60 == 270)
  {
    goto LABEL_7;
  }

  sub_140650(v53);
  v99 = sub_4B3C0();
  sub_140650(v99);
  sub_4B4D4();
  if (v85 && v53 == v101)
  {

    goto LABEL_10;
  }

  sub_4B270(v100);
  sub_4B564();

  if ((v54 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  sub_16D74();
  v78 = sub_16E14C();
  v79 = sub_1730C(v50, v78);

  if (v79 == 205)
  {
    sub_4B504();
  }

  else
  {
    v80 = sub_208C0(v79);
    v82 = v81;
    sub_208C0(v329);
    sub_4B4D4();
    v85 = v85 && v82 == v84;
    v39 = v326;
    if (v85)
    {
    }

    else
    {
      sub_4B270(v83);
      sub_4B564();

      if ((v80 & 1) == 0)
      {
        sub_16DBBC();
        sub_385D8();
        swift_beginAccess();
        sub_4B234();
        sub_4B244();
        v86();
        v87 = sub_16DBDC();
        v88 = sub_16E36C();
        if (sub_4B3A8(v88))
        {
          v89 = sub_8BD8();
          v39 = sub_CA30();
          v346 = v39;
          *v89 = 136315138;
          LOBYTE(v345) = v79;
          v90 = sub_16E1EC();
          v49 = v91;
          v92 = sub_3AB7C(v90, v91, &v346);
          sub_4B294();

          *(v89 + 4) = v92;
          v48 = v327;
          sub_4B4B0();
          _os_log_impl(v93, v94, v95, v96, v97, 0xCu);
          sub_4B414();
          sub_4B504();
          sub_8A2C(v98);
          sub_8A2C(v89);
        }

        sub_4B224();
        sub_4B2BC();
        v103();
        v329 = v79;
      }
    }
  }

LABEL_28:
  sub_4B1F0();
  v104 = sub_4B214();
  v106 = v105(v104);
  v107 = v44[3];
  v108 = v44[4];
  v109 = sub_38E50();
  sub_2D20(v109, v110);
  v111 = sub_4B430();
  v112(v111, v108);
  sub_158B28(v106);
  v113 = sub_4B3C0();
  sub_158B28(v113);
  sub_4B4D4();
  if (v85 && v106 == v115)
  {

    v117 = v325;
  }

  else
  {
    sub_4B270(v114);
    sub_4B564();

    v117 = v325;
    if ((v107 & 1) == 0)
    {
      sub_16DBBC();
      sub_385D8();
      swift_beginAccess();
      sub_4B234();
      sub_4B244();
      v118();
      sub_4B470();
      v119 = sub_16DBDC();
      v39 = sub_16E36C();
      if (os_log_type_enabled(v119, v39))
      {
        v120 = sub_8BD8();
        v121 = sub_CA30();
        v344 = v121;
        *v120 = 136315138;
        sub_4B2E0();
        v122 = sub_4B2AC();
        v48 = v327;
        LOBYTE(v343) = v123(v122);
        sub_16E1EC();
        sub_4B488();
        v124 = sub_4B364();
        v127 = sub_3AB7C(v124, v125, v126);
        sub_4B294();

        *(v120 + 4) = v127;
        _os_log_impl(&def_259DC, v119, v39, "Corrections parse had an updated verb: %s", v120, 0xCu);
        sub_2D64(v121);
        sub_8A2C(v121);
        v128 = v120;
        v117 = v325;
        sub_8A2C(v128);

        sub_4B224();
        sub_4B2BC();
        v129();
      }

      else
      {

        sub_4B224();
        sub_4B2BC();
        v130();
        sub_2D64(&v346);
      }

      sub_4B1F0();
      v131 = sub_4B214();
      v133 = v132(v131);
      *v335 = v133;
      sub_4B504();
    }
  }

  sub_4B254();
  v134 = sub_4B214();
  v135(v134);
  sub_4B454();
  v136 = sub_4B214();
  v137(v136);
  v138 = *(v321 + 48);
  sub_4B010(v39, v48, &qword_1C5690, &dword_16F320);
  sub_4B010(v49, v48 + v138, &qword_1C5690, &dword_16F320);
  sub_4B544(v48);
  if (v85)
  {
    sub_4B43C(v49);
    sub_4B43C(v39);
    sub_4B544(v48 + v138);
    if (v85)
    {
      sub_8748(v48, &qword_1C5690, &dword_16F320);
      goto LABEL_51;
    }
  }

  else
  {
    v139 = v316;
    sub_4B010(v48, v316, &qword_1C5690, &dword_16F320);
    sub_4B544(v48 + v138);
    if (!v140)
    {
      v183 = v312;
      v184 = v308;
      (*(v312 + 32))(v308, v48 + v138, v117);
      sub_4B13C(&qword_1C6C48, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
      LODWORD(v327) = sub_16E19C();
      v185 = *(v183 + 8);
      v185(v184, v117);
      sub_8748(v331, &qword_1C5690, &dword_16F320);
      sub_8748(v39, &qword_1C5690, &dword_16F320);
      v185(v316, v117);
      sub_8748(v48, &qword_1C5690, &dword_16F320);
      if (v327)
      {
        goto LABEL_51;
      }

      goto LABEL_47;
    }

    sub_4B43C(v49);
    sub_4B43C(v39);
    sub_13094();
    v141(v139, v117);
  }

  sub_8748(v48, &qword_1C6C30, &qword_172898);
LABEL_47:
  sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  sub_4B234();
  sub_4B244();
  v142();
  sub_4B470();
  v143 = sub_16DBDC();
  v144 = sub_16E36C();
  if (os_log_type_enabled(v143, v144))
  {
    v145 = sub_8BD8();
    v343 = sub_CA30();
    *v145 = 136315138;
    sub_2D20(&v346, v347);
    v146 = v314;
    v147 = sub_4B2AC();
    v148(v147);
    v149 = sub_16E3DC();
    sub_8748(v146, &qword_1C5690, &dword_16F320);
    sub_2D64(&v346);
    v150 = sub_4B364();
    sub_3AB7C(v150, v151, v152);
    sub_4B310();
    v153 = v333;

    *(v145 + 4) = v149;
    v154 = v146;
    v15 = v153;
    _os_log_impl(&def_259DC, v143, v144, "Corrections parse had an updated dateInterval: %s", v145, 0xCu);
    v155 = sub_4B414();
    sub_8A2C(v155);
    sub_8A2C(v145);

    sub_4B224();
    sub_4B2BC();
    v156();
  }

  else
  {

    sub_4B224();
    sub_4B2BC();
    v157();
    sub_2D64(&v346);
    v154 = v314;
  }

  sub_4B254();
  v158 = sub_4B214();
  v159(v158);
  sub_4B358();
  sub_4B408();
  sub_4B060(v154, v161 + v160, v162, v163);
LABEL_51:
  sub_4B1F0();
  v164 = sub_4B214();
  v166 = v165(v164) & 1;
  sub_4B454();
  v167 = sub_4B214();
  if (v166 != (v168(v167) & 1))
  {
    sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    sub_4B234();
    v169 = v317;
    sub_4B244();
    v170();
    sub_4B470();
    v171 = sub_16DBDC();
    v172 = sub_16E36C();
    if (sub_4B38C(v172))
    {
      sub_8BD8();
      v342 = sub_4B33C();
      *v169 = 136315138;
      sub_4B2E0();
      v173 = sub_4B2AC();
      if (v174(v173))
      {
        v175 = 1702195828;
      }

      else
      {
        v175 = 0x65736C6166;
      }

      sub_2D64(&v346);
      v176 = sub_4B364();
      sub_3AB7C(v176, v177, v178);
      sub_4B310();
      v15 = v333;

      *(v169 + 4) = v175;
      sub_4B31C(&def_259DC, v179, v180, "Corrections parse had an updated isRequestForUser: %s");
      v181 = sub_4B414();
      sub_8A2C(v181);
      sub_38604();

      sub_4B224();
      sub_4B2BC();
      v182();
    }

    else
    {

      sub_4B224();
      sub_4B2BC();
      v186();
      sub_2D64(&v346);
    }

    sub_4B1F0();
    v187 = sub_4B214();
    v188(v187);
    sub_4B358();
    *(v335 + *(v189 + 28)) = v190 & 1;
  }

  sub_4B1F0();
  v191 = sub_4B214();
  v193 = v192(v191);
  v194 = v44[3];
  v195 = v44[4];
  v196 = sub_38E50();
  sub_2D20(v196, v197);
  v198 = sub_4B430();
  v200 = v199(v198, v195);
  if (v193 == 61)
  {
    if (v200 == 61)
    {
      goto LABEL_69;
    }

    goto LABEL_65;
  }

  if (v200 == 61)
  {
    goto LABEL_65;
  }

  sub_39008(v193);
  v298 = sub_4B3C0();
  sub_39008(v298);
  sub_4B4D4();
  if (v85 && v193 == v300)
  {

    goto LABEL_69;
  }

  sub_4B270(v299);
  sub_4B564();

  if ((v194 & 1) == 0)
  {
LABEL_65:
    sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    sub_4B234();
    v201 = v319;
    sub_4B244();
    v202();
    sub_4B470();
    v203 = sub_16DBDC();
    v204 = sub_16E36C();
    if (sub_4B38C(v204))
    {
      sub_8BD8();
      v341 = sub_4B33C();
      *v201 = 136315138;
      sub_4B2E0();
      v205 = sub_4B2AC();
      LOBYTE(v339) = v206(v205);
      sub_2440(&qword_1C5798, &qword_1728A0);
      sub_16E3DC();
      sub_4B488();
      v207 = sub_4B364();
      sub_3AB7C(v207, v208, v209);
      sub_4B310();
      v15 = v333;

      *(v201 + 4) = &v339;
      sub_4B31C(&def_259DC, v210, v211, "Corrections parse had an updated measurementUnit: %s");
      v212 = sub_4B414();
      sub_8A2C(v212);
      sub_38604();

      sub_4B224();
      sub_4B2BC();
      v213();
    }

    else
    {

      sub_4B224();
      sub_4B2BC();
      v214();
      sub_2D64(&v346);
    }

    sub_4B1F0();
    v215 = sub_4B214();
    v216(v215);
    sub_4B358();
    sub_4B408();
    *(v219 + v218) = v217;
  }

LABEL_69:
  sub_4B1F0();
  v220 = sub_4B214();
  v222 = COERCE_DOUBLE(v221(v220));
  v224 = v223;
  sub_2D20(v44, v44[3]);
  v225 = sub_4B4EC();
  v227 = COERCE_DOUBLE(v226(v225));
  if (v224)
  {
    v229 = v328;
    v230 = v332;
    if (v228)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v229 = v328;
    v230 = v332;
    if ((v228 & 1) == 0 && v222 == v227)
    {
      goto LABEL_78;
    }
  }

  v231 = v15;
  v232 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  sub_4B234();
  v233 = v336;
  v234 = v320;
  v235(v320, v232, v336);
  sub_4B470();
  v236 = sub_16DBDC();
  v237 = sub_16E36C();
  if (sub_4B38C(v237))
  {
    sub_8BD8();
    v338 = sub_4B33C();
    *v233 = 136315138;
    sub_4B2E0();
    v238 = sub_4B2AC();
    v339 = v239(v238);
    v340 = v240 & 1;
    sub_2440(&qword_1C57A0, &qword_16F3C0);
    sub_16E3DC();
    sub_4B488();
    v241 = sub_4B364();
    sub_3AB7C(v241, v242, v243);
    sub_4B310();
    v231 = v333;
    v244 = v336;

    *(v233 + 4) = &v339;
    sub_4B31C(&def_259DC, v245, v246, "Corrections parse had an updated measurementValue: %s");
    v247 = sub_4B414();
    v229 = v328;
    sub_8A2C(v247);
    sub_38604();

    sub_4B224();
    v248(v320, v244);
  }

  else
  {

    sub_4B224();
    v249(v234, v233);
    sub_2D64(&v346);
  }

  sub_4B1F0();
  v250 = sub_4B214();
  v251(v250);
  sub_4B358();
  sub_4B408();
  v254 = v253 + v252;
  *v254 = v255;
  *(v254 + 8) = v256 & 1;
  v230 = v332;
  v15 = v231;
LABEL_78:
  sub_4B254();
  v257 = sub_4B214();
  v258(v257);
  sub_4B454();
  v259 = sub_4B214();
  v260(v259);
  v261 = *(v322 + 48);
  v262 = sub_4B4EC();
  sub_4B010(v262, v263, &qword_1C5680, &unk_16F310);
  sub_4B010(v15, v229 + v261, &qword_1C5680, &unk_16F310);
  v264 = v323;
  if (sub_369C(v229, 1, v323) == 1)
  {
    v265 = sub_4B4A4();
    sub_8748(v265, v266, &unk_16F310);
    sub_8748(v230, &qword_1C5680, &unk_16F310);
    v267 = sub_369C(v229 + v261, 1, v264);
    v268 = v330;
    if (v267 == 1)
    {
      sub_8748(v229, &qword_1C5680, &unk_16F310);
      goto LABEL_88;
    }
  }

  else
  {
    v269 = v318;
    sub_4B010(v229, v318, &qword_1C5680, &unk_16F310);
    if (sub_369C(v229 + v261, 1, v264) != 1)
    {
      v302 = v309;
      v303 = v15;
      v304 = v313;
      (*(v313 + 32))(v309, v229 + v261, v264);
      sub_4B13C(&qword_1C6C40, &type metadata accessor for UsoEntity_common_ListPosition.DefinedValues, &protocol conformance descriptor for UsoEntity_common_ListPosition.DefinedValues);
      LODWORD(v333) = sub_16E19C();
      v305 = v230;
      v306 = v264;
      v264 = *(v304 + 8);
      (v264)(v302, v306);
      sub_4B43C(v303);
      sub_4B43C(v305);
      (v264)(v318, v306);
      sub_4B43C(v229);
      v268 = v330;
      if (v333)
      {
        goto LABEL_88;
      }

      goto LABEL_84;
    }

    v270 = sub_4B4A4();
    sub_8748(v270, v271, &unk_16F310);
    sub_8748(v230, &qword_1C5680, &unk_16F310);
    sub_13094();
    v272(v269, v264);
    v268 = v330;
  }

  sub_8748(v229, &qword_1C6C28, &qword_174F10);
LABEL_84:
  v273 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  sub_4B234();
  v274(v268, v273, v336);
  sub_4B470();
  v275 = sub_16DBDC();
  v276 = sub_16E36C();
  if (os_log_type_enabled(v275, v276))
  {
    sub_8BD8();
    v277 = sub_4B33C();
    v338 = v277;
    *v264 = 136315138;
    v278 = v347;
    v279 = v348;
    v280 = v337;
    sub_2D20(&v346, v347);
    v281 = v315;
    (*(v279 + 80))(v278, v279);
    v282 = sub_16E3DC();
    v284 = v283;
    sub_8748(v281, &qword_1C5680, &unk_16F310);
    sub_2D64(&v346);
    v285 = sub_3AB7C(v282, v284, &v338);

    *(v264 + 4) = v285;
    _os_log_impl(&def_259DC, v275, v276, "Corrections parse had an updated listPosition: %s", v264, 0xCu);
    sub_2D64(v277);
    sub_8A2C(v277);
    sub_38604();

    (*(v280 + 8))(v330, v336);
  }

  else
  {

    sub_13094();
    sub_4B2BC();
    v286();
    sub_2D64(&v346);
    v281 = v315;
  }

  v287 = a1[3];
  v288 = a1[4];
  sub_2D20(a1, v287);
  (*(v288 + 80))(v287, v288);
  sub_4B358();
  sub_4B408();
  sub_4B060(v281, v290 + v289, v291, v292);
LABEL_88:
  v293 = v324;
  *v324 = v329;
  sub_4B358();
  v293[4] = v294;
  v293[5] = sub_4B13C(&qword_1C6C38, type metadata accessor for SynthesizedWellnessIntent, &unk_16F394);
  sub_9910(v293 + 1);
  v295 = sub_4B4F8(&v348);
  sub_3498(v295, v296);
  return sub_34FC(v293);
}

uint64_t sub_48B90()
{
  sub_8A88();
  v1[216] = v0;
  v1[215] = v2;
  sub_2440(&qword_1C6250, &qword_1715A8);
  v1[217] = sub_8BC0();
  v3 = sub_16C46C();
  v1[218] = v3;
  sub_888C(v3);
  v1[219] = v4;
  v1[220] = swift_task_alloc();
  v1[221] = swift_task_alloc();
  v5 = sub_16C7BC();
  v1[222] = v5;
  sub_888C(v5);
  v1[223] = v6;
  v1[224] = sub_8BC0();
  v7 = sub_16C71C();
  v1[225] = v7;
  sub_888C(v7);
  v1[226] = v8;
  v1[227] = sub_8BC0();
  v9 = sub_16DBEC();
  v1[228] = v9;
  sub_888C(v9);
  v1[229] = v10;
  v1[230] = swift_task_alloc();
  v1[231] = swift_task_alloc();
  v1[232] = swift_task_alloc();
  v1[233] = swift_task_alloc();
  v1[234] = swift_task_alloc();
  v1[235] = swift_task_alloc();
  v1[236] = swift_task_alloc();
  v1[237] = swift_task_alloc();
  v1[238] = swift_task_alloc();
  sub_8ACC();

  return _swift_task_switch(v11);
}

uint64_t sub_48DCC()
{
  v1 = *(v0 + 1728);
  v2 = [objc_allocWithZone(sub_16D9DC()) init];
  *(v0 + 1912) = v2;
  isa = sub_16BF7C().super.isa;
  [v2 setSampleIdentifier:isa];

  sub_385D8();
  swift_beginAccess();
  sub_4AF54(v1 + 16, v0 + 1072);
  if (*(v0 + 1104))
  {
    v4 = *(v0 + 1872);
    v5 = *(v0 + 1832);
    v6 = *(v0 + 1824);
    *(v0 + 2025) = *(v0 + 1072);
    sub_17464((v0 + 1080), v0 + 1320);
    v7 = sub_16DBBC();
    *(v0 + 1992) = v7;
    sub_385D8();
    swift_beginAccess();
    v8 = *(v5 + 16);
    *(v0 + 2000) = v8;
    *(v0 + 2008) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v4, v7, v6);
    v9 = sub_16DBDC();
    sub_16E36C();
    sub_4B4BC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = sub_1BA38();
      sub_1BA50(v11);
      sub_4B3F0(&def_259DC, v9, v4, "LoggingCorrectionsFlow doCorrection - Updating");
      sub_1BA00();
    }

    v12 = v0 + 1008;
    v13 = v0 + 80;
    v14 = *(v0 + 1832);
    v15 = *(v0 + 1728);

    *(v0 + 2016) = *(v14 + 8);
    v16 = sub_4B4EC();
    v17(v16);
    v18 = *(v15 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_intentHandler);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 1680;
    *(v0 + 88) = sub_49CBC;
    v19 = swift_continuation_init();
    *(v0 + 1064) = sub_2440(&qword_1C6C10, &qword_172890);
    *(v0 + 1040) = v19;
    *(v0 + 1008) = _NSConcreteStackBlock;
    *(v0 + 1016) = 1107296256;
    *(v0 + 1024) = sub_53C4;
    *(v0 + 1032) = &unk_1BA030;
  }

  else
  {
    v20 = *(v0 + 1904);
    v21 = *(v0 + 1832);
    v22 = *(v0 + 1824);
    v23 = sub_16DBBC();
    *(v0 + 1920) = v23;
    sub_385D8();
    swift_beginAccess();
    v24 = *(v21 + 16);
    *(v0 + 1928) = v24;
    *(v0 + 1936) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v24(v20, v23, v22);
    v25 = sub_16DBDC();
    sub_16E36C();
    sub_4B4BC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = sub_1BA38();
      sub_1BA50(v27);
      sub_4B3F0(&def_259DC, v25, v20, "LoggingCorrectionsFlow doCorrection - Undoing");
      sub_1BA00();
    }

    v13 = v0 + 16;
    v12 = v0 + 944;
    v28 = *(v0 + 1832);
    v29 = *(v0 + 1728);

    *(v0 + 1944) = *(v28 + 8);
    v30 = sub_4B4EC();
    v31(v30);
    v18 = *(v29 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_intentHandler);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1696;
    *(v0 + 24) = sub_491D4;
    v32 = swift_continuation_init();
    *(v0 + 1000) = sub_2440(&qword_1C6C10, &qword_172890);
    *(v0 + 976) = v32;
    *(v0 + 944) = _NSConcreteStackBlock;
    *(v0 + 952) = 1107296256;
    *(v0 + 960) = sub_53C4;
    *(v0 + 968) = &unk_1BA080;
  }

  [v18 handleDeleteHealthSample:v2 completion:v12];

  return _swift_continuation_await(v13);
}

uint64_t sub_491D4()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3);
}

uint64_t sub_492A4()
{
  v47 = v0;
  v1 = v0[241];
  v2 = v0[212];
  v0[244] = v2;
  sub_385D8();
  swift_beginAccess();
  v3 = sub_1B9F0();
  v1(v3);
  v4 = v2;
  v5 = sub_16DBDC();
  v6 = sub_16E36C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_8BD8();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    sub_4B3D0();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_8748(v8, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v8);
    sub_38604();
  }

  v15 = v0[243];
  v16 = v0[237];
  v17 = v0[228];
  v0[245] = (v0[229] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18 = v15(v16, v17);
  v19 = *(&stru_20.maxprot + (swift_isaMask & *v4));
  if ((v19)(v18) != 4)
  {
    v25 = v0[241];
    sub_385D8();
    swift_beginAccess();
    v26 = sub_4B304();
    v25(v26);
    v27 = v4;
    v28 = sub_16DBDC();
    v29 = sub_16E37C();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[243];
    v32 = v0[235];
    v33 = v0[228];
    if (v30)
    {
      v44 = v0[228];
      v45 = v27;
      v34 = sub_8BD8();
      v43 = v32;
      v35 = sub_CA30();
      v46 = v35;
      *v34 = 136315138;
      v0[211] = v19();
      v36 = sub_16E1EC();
      v38 = sub_3AB7C(v36, v37, &v46);

      *(v34 + 4) = v38;
      _os_log_impl(&def_259DC, v28, v29, "Intent handler failed with code: %s", v34, 0xCu);
      sub_2D64(v35);
      sub_8A2C(v35);
      v39 = v34;
      v27 = v45;
      sub_8A2C(v39);

      v31(v43, v44);
    }

    else
    {

      v31(v32, v33);
    }

    v40 = v0[239];
    sub_8284(v0[216] + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_provider, (v0 + 58));
    sub_82E0();
    sub_16C4EC();

    sub_8334((v0 + 58));
    sub_4B1BC();
    sub_4B4C8();

    sub_C9BC();
    sub_4B510();

    __asm { BRAA            X1, X16 }
  }

  v20 = v0[216];
  v21 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_provider;
  v0[246] = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_provider;
  sub_2D20((v20 + v21 + 80), *(v20 + v21 + 104));
  v22 = swift_task_alloc();
  v0[247] = v22;
  *v22 = v0;
  v22[1] = sub_496F8;
  sub_4B510();

  return sub_10C040();
}

uint64_t sub_496F8(uint64_t a1)
{
  sub_C9D4();
  v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;

  if (v1)
  {
  }

  else
  {
    *(v5 + 1984) = a1;
  }

  sub_8ACC();

  return _swift_task_switch(v8);
}

uint64_t sub_49814()
{
  v16 = v0[239];
  v1 = v0[227];
  v2 = v0[226];
  v3 = v0[225];
  v13 = v0[224];
  v14 = v0[248];
  v17 = v0[223];
  v18 = v0[222];
  v19 = v0[244];
  v4 = v0[216];
  v15 = (v4 + v0[246]);
  (*(v2 + 104))(v1, enum case for CorrectionsExitValue.success(_:), v3);
  v5 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionsExitValue;
  sub_4B52C(v4 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionsExitValue, (v0 + 176));
  (*(v2 + 40))(v4 + v5, v1, v3);
  swift_endAccess();
  sub_16C43C();
  v6 = sub_4B304();
  v7(v6);
  sub_16C75C();
  v8 = sub_4B364();
  v9(v8);
  v10 = [v14 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_2D20(v15, v15[3]);
  sub_4B430();
  v0[209] = sub_16C2FC();
  sub_16C28C();
  sub_16C32C();
  sub_16C4FC();

  (*(v17 + 8))(v13, v18);
  sub_4B1BC();
  sub_4B4C8();

  sub_C9BC();

  return v11();
}

void sub_49AE8()
{
  v1 = v0[241];
  v2 = v0[240];
  v3 = v0[236];
  v4 = v0[228];
  sub_385D8();
  swift_beginAccess();
  v1(v3, v2, v4);
  v5 = sub_16DBDC();
  v6 = sub_16E37C();
  if (sub_1BA1C(v6))
  {
    v7 = sub_1BA38();
    sub_1BA50(v7);
    sub_1B9D0(&def_259DC, v8, v9, "LoggingCorrectionsFlow Error executing pattern");
    sub_1BA00();
  }

  v10 = v0[246];
  v17 = v0[244];
  v11 = v0[243];
  v12 = v0[239];
  v13 = v0[216];

  v14 = sub_C9F8();
  v11(v14);
  sub_8284(v13 + v10, (v0 + 38));
  sub_82E0();
  sub_16C32C();
  sub_8334((v0 + 38));
  sub_16C4FC();

  sub_4B1BC();
  sub_4B4C8();

  sub_C9BC();
  sub_4B510();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_49CBC()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3);
}

uint64_t sub_49D8C()
{
  v94 = v0;
  v1 = *(v0 + 2000);
  v2 = *(v0 + 1680);
  sub_385D8();
  swift_beginAccess();
  v3 = sub_1B9F0();
  v1(v3);
  v4 = v2;
  v5 = sub_16DBDC();
  v6 = sub_16E36C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_8BD8();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    sub_4B3D0();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_8748(v8, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v8);
    sub_38604();
  }

  v15 = (*(v0 + 2016))(*(v0 + 1864), *(v0 + 1824));
  v16 = *(&stru_20.maxprot + (swift_isaMask & *v4));
  if ((v16)(v15) != 4)
  {
    v36 = *(v0 + 2000);
    sub_385D8();
    swift_beginAccess();
    v37 = sub_4B304();
    v36(v37);
    v38 = v4;
    v39 = sub_16DBDC();
    v40 = sub_16E37C();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 2016);
    v43 = *(v0 + 1840);
    v44 = *(v0 + 1824);
    if (v41)
    {
      v90 = *(v0 + 1824);
      v88 = *(v0 + 1840);
      v45 = sub_8BD8();
      *&v92[0] = sub_CA30();
      v46 = *&v92[0];
      *v45 = 136315138;
      *(v0 + 1712) = v16();
      v47 = sub_16E1EC();
      v49 = sub_3AB7C(v47, v48, v92);

      *(v45 + 4) = v49;
      _os_log_impl(&def_259DC, v39, v40, "Intent handler failed with code: %s", v45, 0xCu);
      sub_2D64(v46);
      sub_8A2C(v46);
      sub_8A2C(v45);

      v42(v88, v90);
    }

    else
    {

      v42(v43, v44);
    }

    v72 = *(v0 + 1912);
    sub_8284(*(v0 + 1728) + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_provider, v0 + 784);
    sub_82E0();
    sub_16C4EC();

    v35 = v0 + 784;
LABEL_14:
    sub_8334(v35);
    goto LABEL_21;
  }

  v17 = *(v0 + 1736);
  v18 = *(v0 + 1728);
  v19 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionInput;
  sub_385D8();
  swift_beginAccess();
  sub_4B010(v18 + v19, v17, &qword_1C6250, &qword_1715A8);
  v20 = sub_16C7DC();
  LODWORD(v19) = sub_369C(v17, 1, v20);
  sub_8748(v17, &qword_1C6250, &qword_1715A8);
  v21 = *(v0 + 2000);
  if (v19 == 1)
  {
    sub_385D8();
    swift_beginAccess();
    v22 = sub_4B304();
    v21(v22);
    v23 = sub_16DBDC();
    v24 = sub_16E37C();
    if (sub_4B3A8(v24))
    {
      *sub_1BA38() = 0;
      sub_4B3D0();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      sub_38604();
    }

    v30 = *(v0 + 2016);
    v31 = *(v0 + 1912);
    v32 = *(v0 + 1848);
    v33 = *(v0 + 1824);
    v34 = *(v0 + 1728);

    v30(v32, v33);
    sub_8284(v34 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_provider, v0 + 144);
    sub_82E0();
    sub_16C4EC();

    v35 = v0 + 144;
    goto LABEL_14;
  }

  v89 = (v0 + 1240);
  v91 = v4;
  v50 = *(v0 + 1816);
  v51 = *(v0 + 1808);
  v52 = *(v0 + 1800);
  v53 = *(v0 + 1728);
  (*(v51 + 104))(v50, enum case for CorrectionsExitValue.success(_:), v52);
  v54 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionsExitValue;
  sub_4B52C(v53 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionsExitValue, v0 + 1432);
  (*(v51 + 40))(v53 + v54, v50, v52);
  swift_endAccess();
  sub_385D8();
  swift_beginAccess();
  v55 = sub_4B304();
  v21(v55);
  sub_8388(v0 + 1320, v0 + 1160);
  v56 = sub_16DBDC();
  v57 = sub_16E36C();
  v58 = sub_4B3A8(v57);
  v59 = *(v0 + 2016);
  if (v58)
  {
    v60 = *(v0 + 2025);
    v86 = *(v0 + 1824);
    v87 = *(v0 + 1856);
    v61 = swift_slowAlloc();
    v85 = v59;
    v62 = swift_slowAlloc();
    *&v92[0] = v62;
    *v61 = 136315394;
    *(v0 + 2024) = v60;
    v63 = sub_16E1EC();
    v65 = sub_3AB7C(v63, v64, v92);

    *(v61 + 4) = v65;
    *(v61 + 12) = 2080;
    v66 = *(v0 + 1184);
    sub_2D20((v0 + 1160), v66);
    v67 = *(v66 - 8);
    sub_8BC0();
    (*(v67 + 16))();
    v68 = sub_16E1FC();
    v70 = v69;

    sub_2D64((v0 + 1160));
    v71 = sub_3AB7C(v68, v70, v92);

    *(v61 + 14) = v71;
    _os_log_impl(&def_259DC, v56, v57, "LoggingCorrectionsFlow Pushing on LogHealthKitQuantity flow with updated identifier [%s] and intent [%s]", v61, 0x16u);
    swift_arrayDestroy();
    sub_8A2C(v62);
    sub_8A2C(v61);

    v85(v87, v86);
  }

  else
  {
    v73 = *(v0 + 1856);
    v74 = *(v0 + 1824);

    v59(v73, v74);
    sub_2D64((v0 + 1160));
  }

  v75 = *(v0 + 2025);
  v76 = *(v0 + 1728);
  sub_8388(v0 + 1320, v0 + 1200);
  sub_8388(v76 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_flowConfig, v0 + 1120);
  sub_8284(v76 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_provider, v0 + 624);
  *v89 = 0u;
  *(v0 + 1256) = 0u;
  *(v0 + 1272) = 0;
  v77 = sub_16D9FC();
  memset(v92, 0, sizeof(v92));
  v93 = 0;
  v78 = objc_allocWithZone(v77);
  v79 = sub_16D9EC();
  type metadata accessor for LogHealthKitQuantityFlow();
  v80 = swift_allocObject();
  *(v80 + 336) = 3;
  *(v80 + 16) = v75;
  sub_17464((v0 + 1200), v80 + 24);
  sub_8388(v0 + 1120, v80 + 64);
  sub_8284(v0 + 624, v80 + 104);
  *(v80 + 264) = v79;
  if (*(v0 + 1264))
  {
    sub_C938(v0 + 624);
    sub_2D64((v0 + 1120));
    sub_17464(v89, v0 + 1280);
  }

  else
  {
    *(v0 + 1304) = &type metadata for CorrectionsFlowProvider;
    *(v0 + 1312) = &off_1BB308;
    v81 = swift_allocObject();
    *(v0 + 1280) = v81;
    sub_17464((v0 + 1120), v81 + 16);
    memcpy((v81 + 56), (v0 + 624), 0xA0uLL);
    if (*(v0 + 1264))
    {
      sub_8748(v89, &qword_1C6C18, &unk_1744C0);
    }
  }

  v82 = *(v0 + 1912);
  sub_17464((v0 + 1280), v80 + 272);
  *(v80 + 312) = 0;
  *(v80 + 320) = 0;
  *(v80 + 328) = 1;
  *(v0 + 1704) = v80;
  sub_4B13C(&qword_1C6C20, type metadata accessor for LogHealthKitQuantityFlow, &protocol conformance descriptor for LogHealthKitQuantityFlow);
  sub_16C32C();
  sub_16C4FC();

LABEL_21:
  sub_2D64((v0 + 1320));
  sub_4B1BC();
  sub_4B4C8();

  sub_C9BC();

  return v83();
}

uint64_t sub_4A750(uint64_t a1)
{
  sub_B2EA4();
  v3 = v2;
  v4 = sub_B337C(a1);
  v5 = sub_3B35C(v4);

  v6 = sub_B2BD0(a1);
  sub_B2948(a1);
  v10 = v3 != 270 || v5 != 0 || v6 != 61;
  return v10 | ((v7 & 1) == 0);
}

uint64_t sub_4A7CC()
{
  sub_4B184(v0 + 16);
  v1 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionsExitValue;
  sub_16C71C();
  sub_8B38();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_uuidOfLastSavedSample;
  sub_16BFAC();
  sub_8B38();
  (*(v4 + 8))(v0 + v3);
  sub_2D64((v0 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_lastSavedSampleIntent));
  sub_2D64((v0 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_flowConfig));
  sub_C938(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_provider);
  swift_unknownObjectRelease();
  sub_8748(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionInput, &qword_1C6250, &qword_1715A8);
  return v0;
}

uint64_t sub_4A8D8()
{
  sub_4A7CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for LoggingCorrectionsFlow(uint64_t a1)
{
  result = qword_1C6A88;
  if (!qword_1C6A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4A984(uint64_t a1)
{
  sub_16C71C();
  if (v1 <= 0x3F)
  {
    sub_16BFAC();
    if (v2 <= 0x3F)
    {
      sub_1B334(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LoggingCorrectionsFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x4AB98);
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

uint64_t sub_4ABD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_4ABE8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}