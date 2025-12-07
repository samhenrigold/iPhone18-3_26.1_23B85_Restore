uint64_t sub_29D7F709C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_29D7F92A0;
  }

  else
  {
    *(v4 + 1248) = a1;
    v5 = sub_29D7F71C8;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D7F71C8()
{
  v1 = v0[156];
  if (!v1 || (v2 = *(v1 + 16)) == 0)
  {
    (*(v0[114] + 56))(v0[111], 1, 1, v0[113]);
    goto LABEL_6;
  }

  v3 = *(v0[101] + 80);
  v4 = v1 + ((v3 + 32) & ~v3);
  sub_29D7FF764(v4, v0[103], type metadata accessor for PregnancyModel);
  result = sub_29D935E88();
  if (v2 == 1)
  {
LABEL_4:
    v6 = v0[145];
    v7 = v0[114];
    v8 = v0[113];
    v9 = v0[111];
    v10 = v0[104];
    v11 = v0[103];

    sub_29D7FF8BC(v11, v10, type metadata accessor for PregnancyModel);
    v6(v9, v10, v8);
    sub_29D7FF924(v10, type metadata accessor for PregnancyModel);
    (*(v7 + 56))(v9, 0, 1, v8);
    v1 = v0[156];
LABEL_6:
    v0[157] = v1;
    v12 = swift_task_alloc();
    v0[158] = v12;
    *v12 = v0;
    v12[1] = sub_29D7F7458;
    v13 = v0[123];
    v14 = v0[120];

    return sub_29D8DC430(v1, v13, v14);
  }

  v15 = v0[101];
  v16 = 1;
  while (v16 < *(v1 + 16))
  {
    sub_29D7FF764(v4 + *(v15 + 72) * v16, v0[102], type metadata accessor for PregnancyModel);
    if (sub_29D933978())
    {
      v17 = v0[103];
      v18 = v0[102];
      sub_29D7FF924(v17, type metadata accessor for PregnancyModel);
      result = sub_29D7FF8BC(v18, v17, type metadata accessor for PregnancyModel);
    }

    else
    {
      result = sub_29D7FF924(v0[102], type metadata accessor for PregnancyModel);
    }

    if (v2 == ++v16)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29D7F7458(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1272) = v1;

  if (v1)
  {

    v5 = sub_29D7F9364;
  }

  else
  {
    *(v4 + 1280) = a1;

    v5 = sub_29D7F75C8;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D7F75C8()
{
  v1 = v0[80].i64[0];
  v2 = v0[76].u64[0];
  v3 = v0[75].u64[1];
  v4 = v0[67].i64[1];
  v5 = v0[59].i64[0];
  v6 = swift_task_alloc();
  v11 = v0[60];
  v6[1] = vextq_s8(v11, v11, 8uLL);
  sub_29D935E88();
  v0[80].i64[1] = sub_29D92976C(sub_29D7FF574, v6, v1);

  v0[81].i64[0] = sub_29D7FAD74(v3, v1, v11.i64[0]);
  v0[81].i64[1] = sub_29D7FAD74(v2, v1, v5);

  v7 = [objc_allocWithZone(MEMORY[0x29EDBAA48]) initWithHealthStore_];
  v0[82].i64[0] = v7;
  v0[1].i64[0] = v0;
  v0[3].i64[1] = &v0[45].i64[1];
  v0[1].i64[1] = sub_29D7F77B8;
  v8 = swift_continuation_init();
  sub_29D7FF594(0);
  v0[22].i64[1] = v9;
  v0[19].i64[0] = MEMORY[0x29EDCA5F8];
  v0[19].i64[1] = 1107296256;
  v0[20].i64[0] = sub_29D7BDEF0;
  v0[20].i64[1] = &unk_2A2446D80;
  v0[21].i64[0] = v8;
  [v7 preferredClassificationGuidelinesWithCompletionHandler_];

  return MEMORY[0x2A1C73CC0](&v0[1]);
}

uint64_t sub_29D7F77B8()
{

  return MEMORY[0x2A1C73D48](sub_29D7F7898, 0, 0);
}

uint64_t sub_29D7F7898()
{
  v0[165] = v0[91];
  v0[166] = sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v1 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  v0[167] = v1;
  v2 = swift_task_alloc();
  v0[168] = v2;
  *v2 = v0;
  v2[1] = sub_29D7F7978;
  v3 = v0[124];
  v4 = v0[121];

  return sub_29D7FAF98(v1, v4, v3);
}

uint64_t sub_29D7F7978(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1352) = a1;
  *(v4 + 1360) = v1;

  if (v1)
  {

    v5 = sub_29D7F9640;
  }

  else
  {
    v5 = sub_29D7F7B0C;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D7F7B0C()
{
  v1 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
  v0[171] = v1;
  v2 = swift_task_alloc();
  v0[172] = v2;
  *v2 = v0;
  v2[1] = sub_29D7F7BC8;
  v3 = v0[124];
  v4 = v0[121];

  return sub_29D7FAF98(v1, v4, v3);
}

uint64_t sub_29D7F7BC8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 1384) = v1;

  if (v1)
  {

    v5 = sub_29D7F9928;
  }

  else
  {
    *(v4 + 1392) = a1;
    v5 = sub_29D7F7D58;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D7F7D58()
{
  v23 = v0[174];
  v24 = v0[165];
  v25 = v0[169];
  v18 = v0[161];
  v19 = v0[164];
  v16 = v0[152];
  v17 = v0[163];
  v20 = v0[151];
  v21 = v0[162];
  v22 = v0[150];
  v1 = v0[145];
  v2 = v0[128];
  v14 = v0[124];
  v15 = v0[143];
  v3 = v0[121];
  v4 = v0[120];
  v5 = v0[117];
  v6 = v0[113];
  v12 = v0[118];
  v13 = v0[111];
  v7 = v0[100];
  v8 = v0[98];
  v1(v7 + v8[7], v0[123], v6);
  v1(v7 + v8[8], v4, v6);
  v1(v7 + v8[10], v3, v6);
  sub_29D7FF628(v2, v7 + v8[12], &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v1(v7 + v8[14], v5, v6);
  v1(v7 + v8[17], v12, v6);
  sub_29D7FF628(v13, v7 + v8[18], &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v1(v7 + v8[19], v14, v6);
  *v7 = v15;
  v7[1] = v17;
  v7[2] = v16;
  *(v7 + v8[9]) = v18;
  *(v7 + v8[11]) = v19;
  *(v7 + v8[13]) = v23;
  *(v7 + v8[15]) = v21;
  *(v7 + v8[16]) = v20;
  *(v7 + v8[20]) = v24;
  *(v7 + v8[21]) = v22;
  *(v7 + v8[22]) = v25;
  sub_29D7FB750(v0 + 63);
  v9 = swift_task_alloc();
  v0[175] = v9;
  *v9 = v0;
  v9[1] = sub_29D7F7FE0;
  v10 = v0[100];

  return sub_29D7FBC0C((v0 + 68), v10);
}

uint64_t sub_29D7F7FE0()
{
  v2 = *v1;
  v2[176] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29D7F9C20, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[177] = v3;
    *v3 = v2;
    v3[1] = sub_29D7F8158;
    v4 = v2[100];

    return sub_29D7FC3BC((v2 + 73), v4);
  }
}

uint64_t sub_29D7F8158()
{
  v2 = *v1;
  v2[178] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29D7F9F1C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[179] = v3;
    *v3 = v2;
    v3[1] = sub_29D7F82D0;
    v4 = v2[100];

    return sub_29D7FC7E4((v2 + 78), v4);
  }
}

uint64_t sub_29D7F82D0()
{
  *(*v1 + 1440) = v0;

  if (v0)
  {
    v2 = sub_29D7FA220;
  }

  else
  {
    v2 = sub_29D7F83E4;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D7F83E4()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 792);
  v3 = *(v0 + 752);
  sub_29D7FF764(*(v0 + 800), v2, type metadata accessor for BloodPressurePDFViewModel);
  sub_29D926384(v2, (v0 + 192));
  *(v0 + 296) = v1;
  v4 = *(v0 + 272);
  *(v0 + 144) = *(v0 + 256);
  *(v0 + 160) = v4;
  v5 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v5;
  v6 = *(v0 + 240);
  *(v0 + 112) = *(v0 + 224);
  *(v0 + 128) = v6;
  *(v0 + 176) = *(v0 + 288);
  v7 = v1;
  sub_29D922EC4((v0 + 664));
  sub_29D7FF6A8(v0 + 192);
  sub_29D934EF8();
  v8 = sub_29D934EE8();
  v9 = [v8 CGColor];

  sub_29D935C08();
  v10 = sub_29D934DF8();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = swift_task_alloc();
  *(v0 + 1448) = v11;
  *v11 = v0;
  v11[1] = sub_29D7F8584;

  return MEMORY[0x2A1C60DE8]();
}

uint64_t sub_29D7F8584(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1456) = v1;

  if (v1)
  {
    sub_29D7FF984(*(v4 + 752), &qword_2A17B3C78, MEMORY[0x29EDC1C50]);
    v5 = sub_29D7FA52C;
  }

  else
  {
    *(v4 + 1464) = a1;
    v5 = sub_29D7F86CC;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D7F86CC()
{
  v19 = v0[154];
  v1 = v0[140];
  v18 = v0[135];
  v25 = v0[128];
  v26 = v0[123];
  v27 = v0[124];
  v23 = v0[122];
  v28 = v0[120];
  v29 = v0[121];
  v24 = v0[118];
  v2 = v0[113];
  v21 = v0[111];
  v22 = v0[117];
  v20 = v0[100];
  v17 = v0[97];
  v3 = v0[96];
  v4 = v0[95];
  v16 = v0[92];
  sub_29D7FF6FC(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D94B280;
  v6 = sub_29D935488();
  v7 = MEMORY[0x29EDC1FC0];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  sub_29D693F78((v5 + 32));
  sub_29D935498();
  sub_29D6945AC((v0 + 63), v5 + 72);
  *(v5 + 136) = v6;
  *(v5 + 144) = v7;
  sub_29D693F78((v5 + 112));
  sub_29D935498();
  sub_29D6945AC((v0 + 73), v5 + 152);
  *(v5 + 216) = v6;
  *(v5 + 224) = v7;
  sub_29D693F78((v5 + 192));
  sub_29D935498();
  sub_29D6945AC((v0 + 68), v5 + 232);
  *(v5 + 296) = v6;
  *(v5 + 304) = v7;
  sub_29D693F78((v5 + 272));
  sub_29D935498();
  sub_29D6945AC((v0 + 78), v5 + 312);
  v8 = sub_29D935058();
  v9 = MEMORY[0x29EDC1D10];
  *(v5 + 376) = v8;
  *(v5 + 384) = v9;
  sub_29D693F78((v5 + 352));
  sub_29D935048();
  sub_29D6945AC((v0 + 83), v5 + 392);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29D93DDB0;
  v11 = MEMORY[0x29EDC2290];
  *(v10 + 56) = v4;
  *(v10 + 64) = v11;
  v12 = sub_29D693F78((v10 + 32));
  (*(v3 + 16))(v12, v17, v4);
  sub_29D934E68();

  swift_setDeallocating();
  sub_29D69417C((v19 + 16));

  (*(v3 + 8))(v17, v4);
  sub_29D69417C(v0 + 83);
  sub_29D69417C(v0 + 78);
  sub_29D69417C(v0 + 73);
  sub_29D69417C(v0 + 68);
  sub_29D69417C(v0 + 63);
  sub_29D7FF924(v20, type metadata accessor for BloodPressurePDFViewModel);
  sub_29D7FF984(v21, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v1(v22, v2);
  v1(v23, v2);
  sub_29D7FF984(v25, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v1(v24, v2);
  v1(v26, v2);
  v1(v27, v2);
  v13 = sub_29D934E78();
  (*(*(v13 - 8) + 56))(v16, 0, 1, v13);
  v1(v28, v2);
  v1(v29, v2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_29D7F8BF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D7F8DBC()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 992);
  v4 = *(v0 + 984);
  v5 = *(v0 + 976);
  v10 = *(v0 + 968);
  v6 = *(v0 + 960);
  v7 = *(v0 + 904);

  v1(v5, v7);
  sub_29D7FF984(v2, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v1(v4, v7);
  v1(v3, v7);
  v1(v6, v7);
  v1(v10, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_29D7F9018()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1024);
  v10 = *(v0 + 984);
  v11 = *(v0 + 992);
  v4 = *(v0 + 976);
  v12 = *(v0 + 960);
  v13 = *(v0 + 968);
  v5 = *(v0 + 944);
  v6 = *(v0 + 936);
  v7 = *(v0 + 904);

  v2(v6, v7);
  v2(v4, v7);
  sub_29D7FF984(v3, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v2(v5, v7);
  v2(v10, v7);
  v2(v11, v7);
  v2(v12, v7);
  v2(v13, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_29D7F92A0()
{
  (*(v0[114] + 56))(v0[111], 1, 1, v0[113]);
  v0[157] = 0;
  v1 = swift_task_alloc();
  v0[158] = v1;
  *v1 = v0;
  v1[1] = sub_29D7F7458;
  v2 = v0[123];
  v3 = v0[120];

  return sub_29D8DC430(0, v2, v3);
}

uint64_t sub_29D7F9364()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 1120);
  v13 = *(v0 + 992);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 984);
  v9 = *(v0 + 976);
  v14 = *(v0 + 960);
  v15 = *(v0 + 968);
  v10 = *(v0 + 944);
  v4 = *(v0 + 936);
  v5 = *(v0 + 904);
  v6 = *(v0 + 888);

  swift_setDeallocating();
  sub_29D69417C((v1 + 16));

  sub_29D7FF984(v6, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v3(v4, v5);
  v3(v9, v5);
  sub_29D7FF984(v11, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v3(v10, v5);
  v3(v12, v5);
  v3(v13, v5);
  v3(v14, v5);
  v3(v15, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29D7F9640()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1144);
  v4 = *(v0 + 1120);
  v14 = *(v0 + 992);
  v12 = *(v0 + 1024);
  v13 = *(v0 + 984);
  v10 = *(v0 + 976);
  v15 = *(v0 + 960);
  v16 = *(v0 + 968);
  v11 = *(v0 + 944);
  v9 = *(v0 + 936);
  v5 = *(v0 + 904);
  v6 = *(v0 + 888);

  swift_setDeallocating();
  sub_29D69417C((v2 + 16));

  sub_29D7FF984(v6, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v4(v9, v5);
  v4(v10, v5);
  sub_29D7FF984(v12, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v4(v11, v5);
  v4(v13, v5);
  v4(v14, v5);
  v4(v15, v5);
  v4(v16, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29D7F9928()
{
  v1 = *(v0 + 1352);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1232);
  v9 = *(v0 + 1144);
  v4 = *(v0 + 1120);
  v15 = *(v0 + 992);
  v13 = *(v0 + 1024);
  v14 = *(v0 + 984);
  v11 = *(v0 + 976);
  v16 = *(v0 + 960);
  v17 = *(v0 + 968);
  v12 = *(v0 + 944);
  v10 = *(v0 + 936);
  v5 = *(v0 + 904);
  v6 = *(v0 + 888);

  swift_setDeallocating();
  sub_29D69417C((v3 + 16));

  sub_29D7FF984(v6, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v4(v10, v5);
  v4(v11, v5);
  sub_29D7FF984(v13, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v4(v12, v5);
  v4(v14, v5);
  v4(v15, v5);
  v4(v16, v5);
  v4(v17, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29D7F9C20()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1120);
  v13 = *(v0 + 992);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 984);
  v9 = *(v0 + 976);
  v14 = *(v0 + 960);
  v15 = *(v0 + 968);
  v10 = *(v0 + 944);
  v3 = *(v0 + 936);
  v4 = *(v0 + 904);
  v5 = *(v0 + 888);
  v6 = *(v0 + 800);

  swift_setDeallocating();
  sub_29D69417C((v1 + 16));

  sub_29D69417C((v0 + 504));
  sub_29D7FF924(v6, type metadata accessor for BloodPressurePDFViewModel);
  sub_29D7FF984(v5, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v2(v3, v4);
  v2(v9, v4);
  sub_29D7FF984(v11, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v2(v10, v4);
  v2(v12, v4);
  v2(v13, v4);
  v2(v14, v4);
  v2(v15, v4);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29D7F9F1C()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1120);
  v13 = *(v0 + 992);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 984);
  v9 = *(v0 + 976);
  v14 = *(v0 + 960);
  v15 = *(v0 + 968);
  v10 = *(v0 + 944);
  v3 = *(v0 + 936);
  v4 = *(v0 + 904);
  v5 = *(v0 + 888);
  v6 = *(v0 + 800);

  swift_setDeallocating();
  sub_29D69417C((v1 + 16));

  sub_29D69417C((v0 + 544));
  sub_29D69417C((v0 + 504));
  sub_29D7FF924(v6, type metadata accessor for BloodPressurePDFViewModel);
  sub_29D7FF984(v5, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v2(v3, v4);
  v2(v9, v4);
  sub_29D7FF984(v11, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v2(v10, v4);
  v2(v12, v4);
  v2(v13, v4);
  v2(v14, v4);
  v2(v15, v4);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29D7FA220()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1120);
  v13 = *(v0 + 992);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 984);
  v9 = *(v0 + 976);
  v14 = *(v0 + 960);
  v15 = *(v0 + 968);
  v10 = *(v0 + 944);
  v3 = *(v0 + 936);
  v4 = *(v0 + 904);
  v5 = *(v0 + 888);
  v6 = *(v0 + 800);

  swift_setDeallocating();
  sub_29D69417C((v1 + 16));

  sub_29D69417C((v0 + 584));
  sub_29D69417C((v0 + 544));
  sub_29D69417C((v0 + 504));
  sub_29D7FF924(v6, type metadata accessor for BloodPressurePDFViewModel);
  sub_29D7FF984(v5, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v2(v3, v4);
  v2(v9, v4);
  sub_29D7FF984(v11, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v2(v10, v4);
  v2(v12, v4);
  v2(v13, v4);
  v2(v14, v4);
  v2(v15, v4);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29D7FA52C()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1120);
  v16 = *(v0 + 992);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 984);
  v12 = *(v0 + 976);
  v17 = *(v0 + 960);
  v18 = *(v0 + 968);
  v13 = *(v0 + 944);
  v3 = *(v0 + 904);
  v10 = *(v0 + 888);
  v11 = *(v0 + 936);
  v9 = *(v0 + 800);
  v4 = *(v0 + 776);
  v5 = *(v0 + 768);
  v6 = *(v0 + 760);

  swift_setDeallocating();
  sub_29D69417C((v1 + 16));

  (*(v5 + 8))(v4, v6);
  sub_29D69417C((v0 + 664));
  sub_29D69417C((v0 + 624));
  sub_29D69417C((v0 + 584));
  sub_29D69417C((v0 + 544));
  sub_29D69417C((v0 + 504));
  sub_29D7FF924(v9, type metadata accessor for BloodPressurePDFViewModel);
  sub_29D7FF984(v10, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v2(v11, v3);
  v2(v12, v3);
  sub_29D7FF984(v14, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v2(v13, v3);
  v2(v15, v3);
  v2(v16, v3);
  v2(v17, v3);
  v2(v18, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29D7FA894()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC51F8]) initWithHealthStore_];
  *(v0 + 160) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_29D7FA9CC;
  v2 = swift_continuation_init();
  sub_29D6F9F3C(0);
  *(v0 + 136) = v3;
  *(v0 + 80) = MEMORY[0x29EDCA5F8];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_29D6B458C;
  *(v0 + 104) = &unk_2A2446DA8;
  *(v0 + 112) = v2;
  [v1 fetchActiveJournalWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 16);
}

uint64_t sub_29D7FA9CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_29D7FAB44;
  }

  else
  {
    v2 = sub_29D7FAADC;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D7FAADC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_29D7FAB44(uint64_t a1)
{
  v19 = v1;
  swift_willThrow();
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v2 = v1[21];
  v3 = sub_29D937898();
  sub_29D69C6C0(v3, qword_2A1A2BF10);
  v4 = v2;
  v5 = sub_29D937878();
  v6 = sub_29D93A288();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v1[20];
  v8 = v1[21];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, v18);
    *(v10 + 12) = 2080;
    v1[10] = v8;
    v12 = v8;
    sub_29D6B7370(0, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
    v13 = sub_29D939DB8();
    v15 = sub_29D6C2364(v13, v14, v18);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_29D677000, v5, v6, "[%s] Error occurred while fetch active blood pressure journal: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v11, -1, -1);
    MEMORY[0x29ED6BE30](v10, -1, -1);
  }

  else
  {
  }

  v16 = v1[1];

  return v16(0);
}

unint64_t sub_29D7FAD74(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v24[-v13];
  if (!(a1 >> 62))
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

    return MEMORY[0x29EDCA190];
  }

  v15 = sub_29D93A928();
  if (!v15)
  {
    return MEMORY[0x29EDCA190];
  }

LABEL_3:
  v16 = __OFSUB__(v15, 1);
  result = v15 - 1;
  if (v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v18 = MEMORY[0x29ED6AE30](result, a1);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(a1 + 8 * result + 32);
LABEL_8:
    v19 = v18;
    v20 = [v18 startDate];

    sub_29D933998();
    v21 = (*(v7 + 32))(v14, v11, v6);
    MEMORY[0x2A1C7C4A8](v21, v22);
    *&v24[-16] = v14;
    *&v24[-8] = a3;
    sub_29D935E88();
    v23 = sub_29D92976C(sub_29D7FFA24, &v24[-32], a2);
    (*(v7 + 8))(v14, v6);
    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D7FAF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_29D7FF50C(0, &qword_2A17B3430, &qword_2A17B18A8, 0x29EDBAD10, MEMORY[0x29EDBA210]);
  v4[6] = swift_task_alloc();
  v5 = sub_29D939B68();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D7FB0B4, 0, 0);
}

uint64_t sub_29D7FB0B4()
{
  v17 = v0[5];
  v1 = objc_opt_self();
  v2 = sub_29D933958();
  v3 = sub_29D933958();
  v4 = [v1 predicateForSamplesWithStartDate:v2 endDate:v3 options:0];
  v0[10] = v4;

  v5 = sub_29D933958();
  v6 = sub_29D933958();
  v7 = [v1 predicateForSamplesWithStartDate:v5 endDate:v6 options:0];
  v0[11] = v7;

  sub_29D6A0C58();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D941B10;
  *(v8 + 32) = v4;
  *(v8 + 40) = v7;
  sub_29D69567C(0, &qword_2A17B4138, 0x29EDBA0A8);
  v9 = v4;
  v10 = v7;
  v11 = sub_29D939F18();

  v12 = [objc_opt_self() andPredicateWithSubpredicates_];
  v0[12] = v12;

  sub_29D69567C(0, &qword_2A17B18A8, 0x29EDBAD10);
  v13 = v12;
  sub_29D939AB8();

  sub_29D939B58();
  v14 = *v17;
  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_29D7FB30C;

  return MEMORY[0x2A1C5B590](v14);
}

uint64_t sub_29D7FB30C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_29D7FB6A0;
  }

  else
  {
    v4 = sub_29D7FB420;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D7FB420()
{
  v28 = v0;
  if (v0[14])
  {
    v1 = v0[11];
    v2 = v0[12];
    v3 = v0[10];
    (*(v0[8] + 8))(v0[9], v0[7]);
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v4 = v0[2];
    v5 = sub_29D937898();
    sub_29D69C6C0(v5, qword_2A1A2BF10);
    v6 = v4;
    v7 = sub_29D937878();
    v8 = sub_29D93A288();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[11];
    v11 = v0[12];
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[7];
    v15 = v0[8];
    if (v9)
    {
      v16 = v0[2];
      v26 = v0[9];
      v17 = swift_slowAlloc();
      v25 = v14;
      v18 = swift_slowAlloc();
      v24 = v11;
      v19 = swift_slowAlloc();
      v27 = v19;
      *v17 = 136446466;
      *(v17 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v27);
      *(v17 + 12) = 2112;
      *(v17 + 14) = v16;
      *v18 = v16;
      v20 = v16;
      _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s] Could not fetch statistics for quantity type:%@", v17, 0x16u);
      sub_29D6ACA3C(v18);
      MEMORY[0x29ED6BE30](v18, -1, -1);
      sub_29D69417C(v19);
      MEMORY[0x29ED6BE30](v19, -1, -1);
      MEMORY[0x29ED6BE30](v17, -1, -1);

      (*(v15 + 8))(v26, v25);
    }

    else
    {

      (*(v15 + 8))(v13, v14);
    }
  }

  v21 = v0[1];
  v22 = v0[14];

  return v21(v22);
}

uint64_t sub_29D7FB6A0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);

  (*(v5 + 8))(v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

double sub_29D7FB750@<D0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  sub_29D7FF488(0, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v46 = v37 - v3;
  v4 = sub_29D933788();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_29D9337B8();
  v9 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40, v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v42 = unk_2A1A2BEA0;
  v43 = qword_2A1A2BE98;
  v41 = qword_2A1A2BEA8;
  v36 = 0xE000000000000000;
  v44 = sub_29D9334A8();
  v45 = v13;
  type metadata accessor for BloodPressurePDFViewModel(0);
  sub_29D933798();
  sub_29D933768();
  v14 = sub_29D9339C8();
  v38 = v15;
  v39 = v14;
  v16 = *(v5 + 8);
  v37[1] = v5 + 8;
  v16(v8, v4);
  v17 = v4;
  v18 = *(v9 + 8);
  v19 = v40;
  v18(v12, v40);
  sub_29D933798();
  sub_29D933768();
  v20 = sub_29D9339C8();
  v22 = v21;
  v16(v8, v17);
  v18(v12, v19);
  v23 = sub_29D933AA8();
  v24 = v46;
  (*(*(v23 - 8) + 56))(v46, 1, 1, v23);
  sub_29D6CC0B8(0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_29D93F680;
  v26 = MEMORY[0x29EDC99B0];
  *(v25 + 56) = MEMORY[0x29EDC99B0];
  v27 = sub_29D69AD24();
  v28 = v38;
  *(v25 + 32) = v39;
  *(v25 + 40) = v28;
  *(v25 + 96) = v26;
  *(v25 + 104) = v27;
  *(v25 + 64) = v27;
  *(v25 + 72) = v20;
  *(v25 + 80) = v22;
  v36 = 0xE000000000000000;
  sub_29D9334A8();
  if (*(v25 + 16))
  {
    sub_29D939D78();
  }

  v29 = sub_29D7FF984(v24, &qword_2A17B1030, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v29, v30);
  v31 = v45;
  v37[-4] = v44;
  v37[-3] = v31;
  v32 = sub_29D9370F8();
  v33 = MEMORY[0x29EDC2C70];
  v34 = v47;
  v47[3] = v32;
  v34[4] = v33;
  sub_29D693F78(v34);
  sub_29D9370E8();

  return result;
}

uint64_t sub_29D7FBC0C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for BloodPressurePDFChartSection(0);
  v2[5] = swift_task_alloc();
  sub_29D7FF488(0, &qword_2A17B5790, type metadata accessor for BloodPressurePDFSeriesViewModel, MEMORY[0x29EDC9C68]);
  v4 = swift_task_alloc();
  v2[6] = v4;
  v5 = type metadata accessor for BloodPressurePDFSeriesViewModel(0);
  v2[7] = v5;
  v2[8] = *(v5 - 8);
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for BloodPressurePDFViewModel(0);
  v7 = *(v6 + 40);
  v8 = *(v6 + 76);
  v9 = swift_task_alloc();
  v2[10] = v9;
  *v9 = v2;
  v9[1] = sub_29D7FBDBC;

  return sub_29D7FDA18(v4, a2 + v7, a2 + v8);
}

uint64_t sub_29D7FBDBC()
{

  if (v0)
  {

    v1 = sub_29D7FC1BC;
  }

  else
  {
    v1 = sub_29D7FBED4;
  }

  return MEMORY[0x2A1C73D48](v1, 0, 0);
}

uint64_t sub_29D7FBED4()
{
  v20 = v0;
  v1 = v0[6];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    sub_29D7FF984(v1, &qword_2A17B5790, type metadata accessor for BloodPressurePDFSeriesViewModel);
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v2 = sub_29D937898();
    sub_29D69C6C0(v2, qword_2A1A2BF10);
    v3 = sub_29D937878();
    v4 = sub_29D93A288();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v19);
      _os_log_impl(&dword_29D677000, v3, v4, "[%{public}s] Could not generate series data.", v5, 0xCu);
      sub_29D69417C(v6);
      MEMORY[0x29ED6BE30](v6, -1, -1);
      MEMORY[0x29ED6BE30](v5, -1, -1);
    }

    v7 = v0[2];
    v8 = sub_29D9370A8();
    v9 = MEMORY[0x29EDC2C58];
    v7[3] = v8;
    v7[4] = v9;
    sub_29D693F78(v7);
    sub_29D937098();
  }

  else
  {
    v10 = v0[9];
    v12 = v0[4];
    v11 = v0[5];
    v14 = v0[2];
    v13 = v0[3];
    sub_29D7FF8BC(v1, v10, type metadata accessor for BloodPressurePDFSeriesViewModel);
    v19 = MEMORY[0x29EDCA190];
    v15 = sub_29D935E88();
    sub_29D88BF68(v15);
    v16 = sub_29D935E88();
    sub_29D88BF68(v16);
    sub_29D7FF764(v13, v11, type metadata accessor for BloodPressurePDFViewModel);
    *(v11 + *(v12 + 20)) = v19;
    sub_29D75E46C(v14);
    sub_29D7FF924(v11, type metadata accessor for BloodPressurePDFChartSection);
    sub_29D7FF924(v10, type metadata accessor for BloodPressurePDFSeriesViewModel);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_29D7FC1BC()
{
  v12 = v0;
  (*(v0[8] + 56))(v0[6], 1, 1, v0[7]);
  sub_29D7FF984(v0[6], &qword_2A17B5790, type metadata accessor for BloodPressurePDFSeriesViewModel);
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2BF10);
  v2 = sub_29D937878();
  v3 = sub_29D93A288();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v11);
    _os_log_impl(&dword_29D677000, v2, v3, "[%{public}s] Could not generate series data.", v4, 0xCu);
    sub_29D69417C(v5);
    MEMORY[0x29ED6BE30](v5, -1, -1);
    MEMORY[0x29ED6BE30](v4, -1, -1);
  }

  v6 = v0[2];
  v7 = sub_29D9370A8();
  v8 = MEMORY[0x29EDC2C58];
  v6[3] = v7;
  v6[4] = v8;
  sub_29D693F78(v6);
  sub_29D937098();

  v9 = v0[1];

  return v9();
}

uint64_t sub_29D7FC3BC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for BloodPressurePDFViewModel(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D7FC45C, 0, 0);
}

uint64_t sub_29D7FC45C()
{
  v32 = v0;
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v1 + v2[22]);
  if (v3 && (v4 = *(v1 + v2[13])) != 0)
  {
    v5 = *(v1 + v2[21]);
    if (v5 >> 62)
    {
      v6 = sub_29D93A928();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v0[2];
    v8 = v3;
    v9 = v4;
    sub_29D8F4CCC(v6, v8, v9, v7);
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
      v1 = v0[3];
    }

    v11 = v0[5];
    v10 = v0[6];
    v12 = sub_29D937898();
    sub_29D69C6C0(v12, qword_2A1A2BF10);
    sub_29D7FF764(v1, v10, type metadata accessor for BloodPressurePDFViewModel);
    sub_29D7FF764(v1, v11, type metadata accessor for BloodPressurePDFViewModel);
    v13 = sub_29D937878();
    v14 = sub_29D93A288();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[5];
    v17 = v0[6];
    if (v15)
    {
      v30 = v0[4];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v18 = 136446722;
      *(v18 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v31);
      *(v18 + 12) = 2112;
      v21 = *(v17 + v2[22]);
      *(v18 + 14) = v21;
      *v19 = v21;
      v22 = v21;
      sub_29D7FF924(v17, type metadata accessor for BloodPressurePDFViewModel);
      *(v18 + 22) = 2112;
      v23 = *(v16 + *(v30 + 52));
      *(v18 + 24) = v23;
      v19[1] = v23;
      v24 = v23;
      sub_29D7FF924(v16, type metadata accessor for BloodPressurePDFViewModel);
      _os_log_impl(&dword_29D677000, v13, v14, "[%{public}s] Could not create summary section with systolic statistics: %@, diastolic statistics: %@", v18, 0x20u);
      sub_29D7FF50C(0, &qword_2A1A21FC0, &qword_2A1A21FD0, 0x29EDC9738, MEMORY[0x29EDC9C68]);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v19, -1, -1);
      sub_29D69417C(v20);
      MEMORY[0x29ED6BE30](v20, -1, -1);
      MEMORY[0x29ED6BE30](v18, -1, -1);
    }

    else
    {

      sub_29D7FF924(v16, type metadata accessor for BloodPressurePDFViewModel);
      sub_29D7FF924(v17, type metadata accessor for BloodPressurePDFViewModel);
    }

    v25 = v0[2];
    v26 = sub_29D9370A8();
    v27 = MEMORY[0x29EDC2C58];
    v25[3] = v26;
    v25[4] = v27;
    sub_29D693F78(v25);
    sub_29D937098();
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_29D7FC7E4(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  v4 = MEMORY[0x29EDC9C68];
  sub_29D7FF488(0, &qword_2A17B2D20, MEMORY[0x29EDB9950], MEMORY[0x29EDC9C68]);
  v2[18] = swift_task_alloc();
  v5 = type metadata accessor for BloodPressureDayCoordinate(0);
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  sub_29D7FF488(0, &qword_2A17B5788, type metadata accessor for BloodPressureMinMaxCoordinate, v4);
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for BloodPressureMinMaxCoordinate(0);
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_29D7FF488(0, &qword_2A17B5790, type metadata accessor for BloodPressurePDFSeriesViewModel, v4);
  v7 = swift_task_alloc();
  v2[28] = v7;
  v8 = type metadata accessor for BloodPressurePDFSeriesViewModel(0);
  v2[29] = v8;
  v2[30] = *(v8 - 8);
  v2[31] = swift_task_alloc();
  v9 = type metadata accessor for BloodPressurePDFViewModel(0);
  v2[32] = v9;
  v10 = *(v9 + 40);
  v11 = *(v9 + 76);
  v12 = swift_task_alloc();
  v2[33] = v12;
  *v12 = v2;
  v12[1] = sub_29D7FCAD4;

  return sub_29D7FDA18(v7, a2 + v10, a2 + v11);
}

uint64_t sub_29D7FCAD4()
{
  *(*v1 + 272) = v0;

  if (v0)
  {

    v2 = sub_29D7FD45C;
  }

  else
  {
    v2 = sub_29D7FCBF0;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D7FCBF0()
{
  v79 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  if ((*(*(v0 + 240) + 48))(v2, 1, v1) == 1)
  {
    sub_29D7FF984(v2, &qword_2A17B5790, type metadata accessor for BloodPressurePDFSeriesViewModel);
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v3 = sub_29D937898();
    sub_29D69C6C0(v3, qword_2A1A2BF10);
    v4 = sub_29D937878();
    v5 = sub_29D93A288();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v78[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, v78);
      _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] Could not generate series data.", v6, 0xCu);
      sub_29D69417C(v7);
      MEMORY[0x29ED6BE30](v7, -1, -1);
      MEMORY[0x29ED6BE30](v6, -1, -1);
    }

    v8 = *(v0 + 128);
    v9 = sub_29D9370A8();
    v10 = MEMORY[0x29EDC2C58];
    v8[3] = v9;
    v8[4] = v10;
    sub_29D693F78(v8);
    sub_29D937098();
  }

  else
  {
    v69 = (v0 + 16);
    v11 = *(v0 + 248);
    sub_29D7FF8BC(v2, v11, type metadata accessor for BloodPressurePDFSeriesViewModel);
    v12 = *(v11 + *(v1 + 28));
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = *(v0 + 192);
      v77 = *(*(v0 + 248) + *(*(v0 + 232) + 32));
      v15 = v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v73 = *(v0 + 160);
      v74 = *(v0 + 184);
      v72 = *(v0 + 152);
      v75 = (v14 + 48);
      v76 = *(v14 + 72);
      v16 = *(v0 + 272);
      v17 = MEMORY[0x29EDCA190];
      do
      {
        v18 = *(v0 + 216);
        v20 = *(v0 + 176);
        v19 = *(v0 + 184);
        sub_29D7FF764(v15, v18, type metadata accessor for BloodPressureMinMaxCoordinate);
        *(swift_task_alloc() + 16) = v18;
        sub_29D8DBF10(sub_29D7FF7CC, v77, v20);

        if ((*v75)(v20, 1, v19) == 1)
        {
          sub_29D7FF984(*(v0 + 176), &qword_2A17B5788, type metadata accessor for BloodPressureMinMaxCoordinate);
          if (qword_2A1A24658 != -1)
          {
            swift_once();
          }

          v21 = *(v0 + 216);
          v22 = *(v0 + 200);
          v23 = sub_29D937898();
          sub_29D69C6C0(v23, qword_2A1A2BF10);
          sub_29D7FF764(v21, v22, type metadata accessor for BloodPressureMinMaxCoordinate);
          v24 = sub_29D937878();
          v25 = sub_29D93A2A8();
          v26 = os_log_type_enabled(v24, v25);
          v27 = *(v0 + 200);
          if (v26)
          {
            v71 = v17;
            v28 = swift_slowAlloc();
            v70 = v16;
            v29 = swift_slowAlloc();
            v78[0] = v29;
            *v28 = 136446466;
            *(v28 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, v78);
            *(v28 + 12) = 2080;
            sub_29D9339F8();
            sub_29D7FF878(&qword_2A17B7B10, MEMORY[0x29EDB9C00]);
            v30 = sub_29D93AD38();
            v32 = v31;
            sub_29D7FF924(v27, type metadata accessor for BloodPressureMinMaxCoordinate);
            v33 = sub_29D6C2364(v30, v32, v78);

            *(v28 + 14) = v33;
            _os_log_impl(&dword_29D677000, v24, v25, "[%{public}s] No matching diastolic value for systolic date: %s", v28, 0x16u);
            swift_arrayDestroy();
            v34 = v29;
            v16 = v70;
            MEMORY[0x29ED6BE30](v34, -1, -1);
            v35 = v28;
            v17 = v71;
            MEMORY[0x29ED6BE30](v35, -1, -1);
          }

          else
          {

            sub_29D7FF924(v27, type metadata accessor for BloodPressureMinMaxCoordinate);
          }
        }

        else
        {
          v36 = v16;
          v38 = *(v0 + 208);
          v37 = *(v0 + 216);
          v39 = *(v0 + 168);
          sub_29D7FF8BC(*(v0 + 176), v38, type metadata accessor for BloodPressureMinMaxCoordinate);
          v40 = v74[5];
          v41 = sub_29D9339F8();
          (*(*(v41 - 8) + 16))(v39, v37 + v40, v41);
          v42 = v74[6];
          v43 = v74[7];
          v44 = *(v37 + v42);
          v45 = *(v37 + v43);
          v46 = *(v38 + v42);
          v47 = *(v38 + v43);
          *(v39 + v72[5]) = v44;
          *(v39 + v72[6]) = v45;
          *(v39 + v72[7]) = v46;
          *(v39 + v72[8]) = v47;
          v48 = v44;
          v49 = v45;
          v50 = v46;
          v51 = v47;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_29D6901AC(0, v17[2] + 1, 1, v17);
          }

          v53 = v17[2];
          v52 = v17[3];
          v16 = v36;
          if (v53 >= v52 >> 1)
          {
            v17 = sub_29D6901AC((v52 > 1), v53 + 1, 1, v17);
          }

          v54 = *(v0 + 168);
          sub_29D7FF924(*(v0 + 208), type metadata accessor for BloodPressureMinMaxCoordinate);
          v17[2] = v53 + 1;
          sub_29D7FF8BC(v54, v17 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v53, type metadata accessor for BloodPressureDayCoordinate);
        }

        sub_29D7FF924(*(v0 + 216), type metadata accessor for BloodPressureMinMaxCoordinate);
        v15 += v76;
        --v13;
      }

      while (v13);
    }

    else
    {
      v17 = MEMORY[0x29EDCA190];
    }

    v55 = *(v0 + 248);
    v56 = *(v0 + 256);
    v58 = *(v0 + 136);
    v57 = *(v0 + 144);
    v59 = *(v0 + 128);
    v60 = *(v58 + v56[11]);
    sub_29D7FF628(v58 + v56[12], v57, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
    v61 = *(v58 + v56[20]);
    v62 = *(v58 + v56[9]);
    v63 = v60;
    sub_29D935E88();
    sub_29D889E9C(v17, v63, v57, v61, v62, (v0 + 72));
    v64 = *(v0 + 88);
    *v69 = *(v0 + 72);
    *(v0 + 32) = v64;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    *(swift_task_alloc() + 16) = v69;
    v65 = sub_29D9370F8();
    v66 = MEMORY[0x29EDC2C70];
    v59[3] = v65;
    v59[4] = v66;
    sub_29D693F78(v59);
    sub_29D9370E8();
    sub_29D7FF824(v0 + 72);

    sub_29D7FF924(v55, type metadata accessor for BloodPressurePDFSeriesViewModel);
  }

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_29D7FD45C()
{
  v12 = v0;
  (*(v0[30] + 56))(v0[28], 1, 1, v0[29]);
  sub_29D7FF984(v0[28], &qword_2A17B5790, type metadata accessor for BloodPressurePDFSeriesViewModel);
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2BF10);
  v2 = sub_29D937878();
  v3 = sub_29D93A288();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v11);
    _os_log_impl(&dword_29D677000, v2, v3, "[%{public}s] Could not generate series data.", v4, 0xCu);
    sub_29D69417C(v5);
    MEMORY[0x29ED6BE30](v5, -1, -1);
    MEMORY[0x29ED6BE30](v4, -1, -1);
  }

  v6 = v0[16];
  v7 = sub_29D9370A8();
  v8 = MEMORY[0x29EDC2C58];
  v6[3] = v7;
  v6[4] = v8;
  sub_29D693F78(v6);
  sub_29D937098();

  v9 = v0[1];

  return v9();
}

uint64_t sub_29D7FD698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a3;
  v23 = a1;
  v3 = sub_29D9339F8();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v20 - v10;
  v12 = sub_29D9331D8();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BloodPressurePDFSampleInterval(0);
  v17 = *(v4 + 16);
  v17(v11, v21, v3);
  v17(v8, v22, v3);
  sub_29D933188();
  v18 = sub_29D933138();
  (*(v13 + 8))(v16, v12);
  return v18 & 1;
}

uint64_t sub_29D7FD87C(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_29D9339F8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [v9 startDate];
  sub_29D933998();

  sub_29D7FF878(&qword_2A17B4730, MEMORY[0x29EDB9BE0]);
  v11 = sub_29D939CB8();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v14 = [v9 endDate];
    sub_29D933998();

    v13 = sub_29D933978();
    v12(v8, v4);
  }

  return v13 & 1;
}

uint64_t sub_29D7FDA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for BloodPressureMinMaxCoordinate(0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = sub_29D9339F8();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  sub_29D7FF50C(0, &qword_2A17B3430, &qword_2A17B18A8, 0x29EDBAD10, MEMORY[0x29EDBA210]);
  v4[13] = swift_task_alloc();
  v7 = sub_29D939B98();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v8 = sub_29D933318();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D7FDC6C, 0, 0);
}

uint64_t sub_29D7FDC6C()
{
  v27 = *(v0 + 152);
  v28 = *(v0 + 160);
  v29 = *(v0 + 144);
  v24 = *(v0 + 168);
  v1 = *(v0 + 88);
  v25 = *(v0 + 96);
  v26 = *(v0 + 80);
  v30 = *(v0 + 40);
  v23 = *(v0 + 24);
  v2 = [objc_opt_self() configurationForZoomLevel_];
  *(v0 + 176) = v2;
  v3 = [v2 seriesPointIntervalComponentsAtResolution_];
  sub_29D933298();

  *(v0 + 184) = sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(v0 + 192) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  v4 = objc_opt_self();
  *(v0 + 200) = v4;
  v5 = sub_29D933958();
  v6 = sub_29D933958();
  v7 = [v4 predicateForSamplesWithStartDate:v5 endDate:v6 options:0];
  *(v0 + 208) = v7;

  sub_29D7FF488(0, &qword_2A17B5798, MEMORY[0x29EDC4988], MEMORY[0x29EDC9E90]);
  *(v0 + 216) = v8;
  v9 = sub_29D937528();
  *(v0 + 224) = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  *(v0 + 232) = v11;
  v12 = *(v10 + 80);
  *(v0 + 384) = v12;
  v13 = (v12 + 32) & ~v12;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29D943EA0;
  v15 = v14 + v13;
  *(v0 + 388) = *MEMORY[0x29EDC4970];
  v16 = *(v10 + 104);
  *(v0 + 240) = v16;
  *(v0 + 248) = (v10 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v16(v15);
  *(v0 + 392) = *MEMORY[0x29EDC4968];
  v16(v15 + v11);
  *(v0 + 396) = *MEMORY[0x29EDC4960];
  v16(v15 + 2 * v11);
  sub_29D93A528();
  *(v0 + 256) = sub_29D69567C(0, &qword_2A17B18A8, 0x29EDBAD10);
  v17 = v7;
  sub_29D939AB8();

  v18 = *(v1 + 16);
  *(v0 + 264) = v18;
  *(v0 + 272) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v25, v23, v26);
  v19 = *(v27 + 16);
  *(v0 + 280) = v19;
  *(v0 + 288) = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v28, v24, v29);
  sub_29D939B88();
  v20 = *v30;
  *(v0 + 296) = *v30;
  v21 = swift_task_alloc();
  *(v0 + 304) = v21;
  *v21 = v0;
  v21[1] = sub_29D7FE060;

  return MEMORY[0x2A1C5B5F8](v20);
}

uint64_t sub_29D7FE060(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v4 = sub_29D7FE548;
  }

  else
  {
    v4 = sub_29D7FE174;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D7FE174()
{
  v30 = *(v0 + 280);
  v29 = *(v0 + 264);
  v22 = *(v0 + 392);
  v23 = *(v0 + 396);
  v21 = *(v0 + 388);
  v1 = *(v0 + 384);
  v2 = *(v0 + 232);
  v19 = *(v0 + 224);
  v20 = *(v0 + 240);
  v3 = *(v0 + 208);
  v18 = *(v0 + 200);
  v28 = *(v0 + 168);
  v4 = *(v0 + 136);
  v26 = *(v0 + 160);
  v27 = *(v0 + 144);
  v5 = *(v0 + 120);
  v6 = *(v0 + 112);
  v24 = *(v0 + 96);
  v25 = *(v0 + 80);
  v7 = *(v0 + 24);

  v8 = *(v5 + 8);
  *(v0 + 328) = v8;
  *(v0 + 336) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  *(v0 + 344) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
  v9 = sub_29D933958();
  v10 = sub_29D933958();
  v11 = [v18 predicateForSamplesWithStartDate:v9 endDate:v10 options:0];
  *(v0 + 352) = v11;

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D943EA0;
  v13 = v12 + ((v1 + 32) & ~v1);
  v20(v13, v21, v19);
  v20(v13 + v2, v22, v19);
  v20(v13 + 2 * v2, v23, v19);
  sub_29D93A528();
  v14 = v11;
  sub_29D939AB8();

  v29(v24, v7, v25);
  v30(v26, v28, v27);
  sub_29D939B88();
  v15 = swift_task_alloc();
  *(v0 + 360) = v15;
  *v15 = v0;
  v15[1] = sub_29D7FE434;
  v16 = *(v0 + 296);

  return MEMORY[0x2A1C5B5F8](v16);
}

uint64_t sub_29D7FE434(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v4 = sub_29D7FE670;
  }

  else
  {
    v4 = sub_29D7FE794;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D7FE548()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = *(v0 + 144);

  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_29D7FE670()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);

  v2(v4, v5);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  v8 = *(v0 + 144);

  (*(v7 + 8))(v6, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_29D7FE794()
{
  v100 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);
  v3 = *(v0 + 328);
  v4 = *(v0 + 312);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);

  v3(v5, v6);
  v7 = [v4 statistics];
  sub_29D69567C(0, &qword_2A17B4920, 0x29EDBAE18);
  v8 = sub_29D939F38();

  v9 = [v1 statistics];
  v78 = sub_29D939F38();

  if (v8 >> 62)
  {
LABEL_26:
    v10 = sub_29D93A928();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      v11 = 0;
      v79 = v98[6];
      v81 = v98[7];
      v86 = v8 & 0xFFFFFFFFFFFFFF8;
      v88 = v8 & 0xC000000000000001;
      v12 = MEMORY[0x29EDCA190];
      v83 = v10;
      v84 = v8;
      while (1)
      {
        if (v88)
        {
          v13 = MEMORY[0x29ED6AE30](v11, v8);
        }

        else
        {
          if (v11 >= *(v86 + 16))
          {
            goto LABEL_25;
          }

          v13 = *(v8 + 8 * v11 + 32);
        }

        v14 = v13;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v15 = [v13 minimumQuantity];
        if (!v15)
        {
          break;
        }

        v16 = v15;
        v17 = [v14 maximumQuantity];
        if (!v17)
        {
          goto LABEL_19;
        }

        v18 = v17;
        v19 = [v14 averageQuantity];
        if (!v19)
        {

LABEL_19:
          break;
        }

        v20 = v19;
        v95 = v12;
        v21 = v98[33];
        v90 = v11 + 1;
        v23 = v98[9];
        v22 = v98[10];
        v24 = [v14 startDate];
        v25 = v79[5];
        sub_29D933998();

        v21(v23, v23 + v25, v22);
        v12 = v95;
        *(v23 + v79[6]) = v16;
        *(v23 + v79[7]) = v18;
        *(v23 + v79[8]) = v20;
        *(v23 + v79[9]) = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_29D690178(0, v95[2] + 1, 1, v95);
        }

        v27 = v12[2];
        v26 = v12[3];
        if (v27 >= v26 >> 1)
        {
          v12 = sub_29D690178((v26 > 1), v27 + 1, 1, v12);
        }

        v28 = v98[9];

        v12[2] = v27 + 1;
        sub_29D7FF8BC(v28, v12 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v27, type metadata accessor for BloodPressureMinMaxCoordinate);
        ++v11;
        v8 = v84;
        if (v90 == v83)
        {
          goto LABEL_28;
        }
      }

      if (qword_2A1A24658 != -1)
      {
        swift_once();
      }

      v29 = sub_29D937898();
      sub_29D69C6C0(v29, qword_2A1A2BF10);
      v30 = v14;
      v31 = sub_29D937878();
      v32 = sub_29D93A288();

      v33 = os_log_type_enabled(v31, v32);
      v34 = v98[46];
      v35 = v98[39];
      v37 = v98[21];
      v36 = v98[22];
      v39 = v98[18];
      v38 = v98[19];
      if (v33)
      {
        v96 = v98[21];
        v40 = swift_slowAlloc();
        v92 = v39;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v99 = v42;
        *v40 = 136446466;
        *(v40 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v99);
        *(v40 + 12) = 2112;
        *(v40 + 14) = v30;
        *v41 = v30;
        v43 = v30;
        v44 = "[%{public}s] Could not find minimum/maximum for systolic statistic: %@";
LABEL_52:
        _os_log_impl(&dword_29D677000, v31, v32, v44, v40, 0x16u);
        sub_29D6ACA3C(v41);
        MEMORY[0x29ED6BE30](v41, -1, -1);
        sub_29D69417C(v42);
        MEMORY[0x29ED6BE30](v42, -1, -1);
        MEMORY[0x29ED6BE30](v40, -1, -1);

        (*(v38 + 8))(v96, v92);
        goto LABEL_54;
      }

LABEL_53:

      (*(v38 + 8))(v37, v39);
LABEL_54:
      v66 = type metadata accessor for BloodPressurePDFSeriesViewModel(0);
      v67 = 1;
      goto LABEL_60;
    }
  }

  v12 = MEMORY[0x29EDCA190];
LABEL_28:

  v45 = v78;
  if (v78 >> 62)
  {
LABEL_57:
    v45 = v78;
    v46 = sub_29D93A928();
    v97 = v12;
    if (v46)
    {
LABEL_30:
      v47 = 0;
      v85 = v45 & 0xFFFFFFFFFFFFFF8;
      v87 = v45 & 0xC000000000000001;
      v48 = MEMORY[0x29EDCA190];
      v80 = v98[6];
      v82 = v98[7];
      while (1)
      {
        if (v87)
        {
          v49 = MEMORY[0x29ED6AE30](v47, v45);
          v50 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v47 >= *(v85 + 16))
          {
            goto LABEL_56;
          }

          v49 = *(v45 + 8 * v47 + 32);
          v50 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }
        }

        v51 = [v49 minimumQuantity];
        if (!v51)
        {
          goto LABEL_48;
        }

        v52 = v51;
        v53 = [v49 maximumQuantity];
        if (!v53)
        {
          break;
        }

        v54 = v53;
        v55 = [v49 averageQuantity];
        if (!v55)
        {

          break;
        }

        v56 = v55;
        v89 = v50;
        v91 = v49;
        v93 = v48;
        v57 = v98[33];
        v58 = v98[10];
        v59 = v98[8];
        v60 = [v49 startDate];
        v12 = v80[5];
        sub_29D933998();

        v57(v59, v12 + v59, v58);
        v48 = v93;
        *(v59 + v80[6]) = v52;
        *(v59 + v80[7]) = v54;
        *(v59 + v80[8]) = v56;
        *(v59 + v80[9]) = 1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_29D690178(0, v93[2] + 1, 1, v93);
        }

        v62 = v48[2];
        v61 = v48[3];
        if (v62 >= v61 >> 1)
        {
          v48 = sub_29D690178((v61 > 1), v62 + 1, 1, v48);
        }

        v63 = v98[8];

        v48[2] = v62 + 1;
        sub_29D7FF8BC(v63, v48 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v62, type metadata accessor for BloodPressureMinMaxCoordinate);
        ++v47;
        v45 = v78;
        if (v89 == v46)
        {
          goto LABEL_59;
        }
      }

LABEL_48:

      if (qword_2A1A24658 != -1)
      {
        swift_once();
      }

      v64 = sub_29D937898();
      sub_29D69C6C0(v64, qword_2A1A2BF10);
      v30 = v49;
      v31 = sub_29D937878();
      v32 = sub_29D93A288();

      v65 = os_log_type_enabled(v31, v32);
      v34 = v98[46];
      v35 = v98[39];
      v37 = v98[21];
      v36 = v98[22];
      v39 = v98[18];
      v38 = v98[19];
      if (v65)
      {
        v96 = v98[21];
        v40 = swift_slowAlloc();
        v92 = v39;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v99 = v42;
        *v40 = 136446466;
        *(v40 + 4) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D94B2C0, &v99);
        *(v40 + 12) = 2112;
        *(v40 + 14) = v30;
        *v41 = v30;
        v43 = v30;
        v44 = "[%{public}s] Could not find minimum/maximum for diastolic statistic: %@";
        goto LABEL_52;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v46 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v97 = v12;
    if (v46)
    {
      goto LABEL_30;
    }
  }

  v48 = MEMORY[0x29EDCA190];
LABEL_59:
  v94 = v48;
  v68 = v98[46];
  v69 = v98[39];
  v70 = v98[33];
  v71 = v98[22];
  v72 = v98[10];
  v73 = v98[3];
  v74 = v98[4];
  v75 = v98[2];
  (*(v98[19] + 8))(v98[21], v98[18]);

  v70(v75, v73, v72);
  v66 = type metadata accessor for BloodPressurePDFSeriesViewModel(0);
  v70(v75 + v66[5], v74, v72);
  v67 = 0;
  *(v75 + v66[6]) = 4;
  *(v75 + v66[7]) = v97;
  *(v75 + v66[8]) = v94;
LABEL_60:
  (*(*(v66 - 1) + 56))(v98[2], v67, 1, v66);

  v76 = v98[1];

  return v76();
}

uint64_t sub_29D7FF1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v7 = sub_29D935378();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935E88();
  v12 = sub_29D934FC8();
  v13 = *MEMORY[0x29EDC1F60];
  v14 = *(v8 + 104);
  v14(v11, v13, v7);
  v15 = sub_29D936FD8();
  v24 = v15;
  v25 = MEMORY[0x29EDC2C40];
  sub_29D693F78(v23);
  MEMORY[0x29ED673E0](a1, a2, v11, v12);
  v16 = sub_29D935808();
  sub_29D69417C(v23);
  sub_29D935E88();
  v17 = sub_29D934F58();
  v14(v11, v13, v7);
  v24 = v15;
  v25 = MEMORY[0x29EDC2C40];
  sub_29D693F78(v23);
  MEMORY[0x29ED673E0](v22, a4, v11, v17);
  v18 = sub_29D935808();
  sub_29D69417C(v23);
  sub_29D7FF488(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29D93F680;
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  v20 = MEMORY[0x29ED65BE0]();

  return v20;
}

uint64_t sub_29D7FF3F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29D6AC948;

  return sub_29D7F555C(a1);
}

void sub_29D7FF488(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D7FF50C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D69567C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D7FF594(uint64_t a1)
{
  if (!qword_2A17B4EE0)
  {
    type metadata accessor for HKBloodPressureClassificationGuidelines(255);
    v1 = sub_29D93A038();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4EE0);
    }
  }
}

uint64_t sub_29D7FF628(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D7FF488(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_29D7FF6FC(uint64_t a1)
{
  if (!qword_2A17B1018)
  {
    sub_29D6B7370(255, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1018);
    }
  }
}

uint64_t sub_29D7FF764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D7FF878(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D9339F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D7FF8BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D7FF924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D7FF984(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D7FF488(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D7FFA40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_29D939D28();
  v5 = [v3 hk:v4 keyExists:?];

  if (v5)
  {
    v6 = sub_29D939D28();
    [v3 doubleForKey_];

    sub_29D933748();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_29D9339F8();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t sub_29D7FFB50(uint64_t a1)
{
  v2 = v1;
  sub_29D6A08F8(0);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D9339F8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6A0A20(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_29D6A0D34(v7);
    v13 = *(v2 + 16);
    v14 = sub_29D939D28();
    [v13 removeObjectForKey_];

    return sub_29D6A0D34(a1);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_29D933758();
    v17 = v16;
    v18 = *(v2 + 16);
    v19 = sub_29D939D28();
    [v18 setDouble:v19 forKey:v17];

    sub_29D6A0D34(a1);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_29D7FFD7C(void (*a1)(char *))
{
  sub_29D8000B8(0, &unk_2A1A21EE0, MEMORY[0x29EDCA058]);
  MEMORY[0x2A1C7C4A8](v2, v3);
  v5 = &v7 - v4;
  sub_29D7FFA40(&v7 - v4);
  swift_storeEnumTagMultiPayload();
  a1(v5);
  return sub_29D800130(v5);
}

uint64_t sub_29D7FFE4C()
{
  sub_29D8000B8(0, &qword_2A1A22320, MEMORY[0x29EDB8AD0]);
  swift_allocObject();

  sub_29D938368();
  sub_29D800044();
  v0 = sub_29D938418();

  return v0;
}

uint64_t sub_29D7FFF04()
{
  sub_29D939D68();
  v0 = objc_allocWithZone(MEMORY[0x29EDB8E78]);
  v1 = sub_29D939D28();

  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    type metadata accessor for HypertensionNotificationsSettingsManager();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    sub_29D93AA18();

    v4 = sub_29D939D68();
    MEMORY[0x29ED6A240](v4);

    result = sub_29D93AB28();
    __break(1u);
  }

  return result;
}

unint64_t sub_29D800044()
{
  result = qword_2A1A22328;
  if (!qword_2A1A22328)
  {
    sub_29D8000B8(255, &qword_2A1A22320, MEMORY[0x29EDB8AD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22328);
  }

  return result;
}

void sub_29D8000B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_29D6A08F8(255);
    v7 = v6;
    v8 = sub_29D6A0CD0();
    v9 = a3(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D800130(uint64_t a1)
{
  sub_29D8000B8(0, &unk_2A1A21EE0, MEMORY[0x29EDCA058]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D8001A8()
{
  v0 = sub_29D934148();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D934178();
  sub_29D6FD494(v5, qword_2A1A2BF70);
  sub_29D69C6C0(v5, qword_2A1A2BF70);
  sub_29D933FE8();
  sub_29D6FD4F8(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v6 = sub_29D933F58();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29D93DDB0;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x29EDC3790], v6);
  sub_29D6E4080(v9);
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D77EC7C();
  *(inited + 32) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA460]);
  sub_29D6E3724(inited);
  v12 = v11;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_29D8E8608(v12);

  (*(v1 + 104))(v4, *MEMORY[0x29EDC3898], v0);
  return sub_29D934168();
}

uint64_t sub_29D800494()
{
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D77EC7C();
  *(inited + 32) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA460]);
  sub_29D6E3724(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D800554()
{
  v0 = type metadata accessor for HypertensionNotificationsPromotionTileActionHandler(0);
  sub_29D800B10();
  return v0;
}

uint64_t sub_29D800588()
{
  v1 = sub_29D934798();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  sub_29D837F94();
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9334A8();
  return sub_29D9349E8();
}

uint64_t type metadata accessor for HypertensionNotificationsPromotionGenerator(uint64_t a1)
{
  result = qword_2A1A231F8;
  if (!qword_2A1A231F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_29D8007CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v29 = a3;
  v30 = a4;
  v7 = a1;
  v27 = *v4;
  v8 = sub_29D934178();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D9341E8();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D7FFF04();
  v32[3] = type metadata accessor for HypertensionNotificationsSettingsManager();
  v32[4] = &off_2A2446DD0;
  v31 = a2;
  v32[0] = v18;
  (*(v14 + 16))(v17, a2, v13);
  if (qword_2A1A24788 != -1)
  {
    swift_once();
  }

  v19 = sub_29D69C6C0(v8, qword_2A1A2BF70);
  v28 = v9;
  v20 = *(v9 + 16);
  v20(v12, v19, v8);
  *&v5[OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_featurePromotionResult] = v7;
  v20(&v5[OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_domain], v12, v8);
  if (v7 > 1u)
  {

    v23 = 0;
    v21 = v31;
  }

  else
  {
    v21 = v31;
    v22 = sub_29D93AD78();

    v23 = v22 ^ 1;
  }

  v24 = sub_29D8A8360(v7, v23 & 1, v17, v32, v29, v30);
  v25 = *(v14 + 8);
  v25(v21, v13);
  (*(v28 + 8))(v12, v8);
  v25(v17, v13);
  sub_29D6FD3A4(v32);
  *&v5[OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_publisher] = v24;
  return v5;
}

unint64_t sub_29D800B10()
{
  result = qword_2A17B57A0;
  if (!qword_2A17B57A0)
  {
    type metadata accessor for HypertensionNotificationsPromotionTileActionHandler(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B57A0);
  }

  return result;
}

uint64_t type metadata accessor for ElectrocardiogramUpdateTileView(uint64_t a1)
{
  result = qword_2A17B57A8;
  if (!qword_2A17B57A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D800BF4(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_29D934BA8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ElectrocardiogramUpdateTileView(0);
  v18.receiver = a1;
  v18.super_class = updated;
  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a2, a3, a4, a5);
  sub_29D800D80();
  sub_29D934BB8();

  (*(v11 + 8))(v14, v10);
  return v16;
}

uint64_t sub_29D800D80()
{
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D939D28();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1];

  if (v3)
  {
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    sub_29D9334A8();
    [objc_opt_self() clearColor];
    return sub_29D934B98();
  }

  else
  {
    result = sub_29D93AB28();
    __break(1u);
  }

  return result;
}

id sub_29D800FE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ElectrocardiogramUpdateTileView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_29D801028(void *a1)
{
  v3 = type metadata accessor for HypertensionNotificationDetailView(0);
  v5 = MEMORY[0x2A1C7C4A8](v3, v4);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v36[-v9];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v12 = result;
    v13 = a1;
    v14 = [v12 sampleType];
    v15 = [v14 identifier];

    if (!v15)
    {
      sub_29D939D68();
      v15 = sub_29D939D28();
    }

    v16 = sub_29D939D68();
    v18 = v17;
    if (v16 == sub_29D939D68() && v18 == v19)
    {
    }

    else
    {
      v21 = sub_29D93AD78();

      if ((v21 & 1) == 0)
      {

        return 0;
      }
    }

    v22 = *(v1 + 24);
    v23 = sub_29D6F82E0();
    v24 = *(v1 + 16);
    *v10 = swift_getKeyPath();
    sub_29D74C354(0);
    swift_storeEnumTagMultiPayload();
    v25 = v10 + v3[6];
    v37 = 0;
    v26 = v13;
    v27 = v23;
    v28 = v24;
    sub_29D939688();
    v29 = v39;
    *v25 = v38;
    *(v25 + 1) = v29;
    v30 = v10 + v3[7];
    v37 = 0;
    sub_29D939688();
    v31 = v39;
    *v30 = v38;
    *(v30 + 1) = v31;
    v32 = v10 + v3[8];
    *v32 = v27;
    *(v32 + 1) = v12;
    v32[16] = v22;
    *(v10 + v3[9]) = v28;
    *(v10 + v3[5]) = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B8] healthStore:v28];
    sub_29D7559DC(v10, v7);
    sub_29D755A40(0);
    v34 = objc_allocWithZone(v33);
    v35 = sub_29D939A28();

    sub_29D755AFC(v10);
    return v35;
  }

  return result;
}

uint64_t sub_29D801324()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D8013A4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_29D8013BC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_29D8013E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_29D801430(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D801498(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  sub_29D803FAC(0, &qword_2A17B3C78, MEMORY[0x29EDC1C50]);
  v2[27] = swift_task_alloc();
  v3 = *(type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider(0) - 8);
  v2[28] = v3;
  v2[29] = *(v3 + 64);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v4 = type metadata accessor for AFibBurdenPDFChartPointProviderFactory(0);
  v2[32] = v4;
  v5 = *(v4 - 8);
  v2[33] = v5;
  v2[34] = *(v5 + 64);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v6 = sub_29D933CE8();
  v2[37] = v6;
  v2[38] = *(v6 - 8);
  v2[39] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D80167C, 0, 0);
}

uint64_t sub_29D80167C()
{
  v1 = v0[26];
  v2 = [objc_opt_self() hk_gregorianCalendarWithLocalTimeZone];
  sub_29D933C08();

  sub_29D933B08();
  v3 = *v1;
  v0[40] = *v1;
  v4 = v3;
  v5 = swift_task_alloc();
  v0[41] = v5;
  *v5 = v0;
  v5[1] = sub_29D801788;
  v6 = v0[39];

  return sub_29D8D7BA8(v6, v4, sub_29D68B82C, 0);
}

uint64_t sub_29D801788(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v4 = sub_29D8027E4;
  }

  else
  {
    v4 = sub_29D80189C;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D80189C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  if (*(*(v0 + 336) + 16))
  {
    v3 = *(v0 + 288);
    v4 = *(v0 + 256);
    v5 = *(v0 + 208);
    (*(v2 + 16))(v3, *(v0 + 312), *(v0 + 296));
    v6 = *(v5 + 96);
    *(v3 + *(v4 + 20)) = v1;
    *(v3 + *(v4 + 24)) = v6;
    v7 = *(v5 + 8);
    *(v0 + 352) = v7;
    v8 = v1;
    v9 = v6;
    v10 = v7;
    sub_29D933BC8();
    sub_29D803F2C(v5 + 16, v0 + 120);
    v11 = *(v0 + 144);
    if (v11)
    {
      v12 = *(v0 + 152);
      sub_29D693E2C((v0 + 120), *(v0 + 144));
      v13 = swift_task_alloc();
      *(v0 + 360) = v13;
      *v13 = v0;
      v14 = sub_29D801D10;
LABEL_9:
      v13[1] = v14;

      return MEMORY[0x2A1C61D28](v11, v12);
    }

    sub_29D804064(v0 + 120);
    *(v0 + 384) = 0;
    sub_29D803F2C(*(v0 + 208) + 56, v0 + 160);
    v11 = *(v0 + 184);
    if (v11)
    {
      v12 = *(v0 + 192);
      sub_29D693E2C((v0 + 160), *(v0 + 184));
      v13 = swift_task_alloc();
      *(v0 + 392) = v13;
      *v13 = v0;
      v14 = sub_29D802100;
      goto LABEL_9;
    }

    sub_29D804064(v0 + 160);
    *(v0 + 416) = 0;
    v19 = *(v0 + 352);
    v21 = *(v0 + 280);
    v20 = *(v0 + 288);
    v23 = *(v0 + 264);
    v22 = *(v0 + 272);
    v24 = *(v0 + 240);
    v25 = *(v0 + 248);
    v26 = *(v0 + 224);
    sub_29D8040DC(*(v0 + 208), v0 + 16);
    sub_29D804114(v20, v21, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
    sub_29D804114(v25, v24, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
    v27 = (*(v23 + 80) + 120) & ~*(v23 + 80);
    v28 = (v22 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (*(v26 + 80) + v28 + 8) & ~*(v26 + 80);
    v30 = swift_allocObject();
    *(v0 + 424) = v30;
    v31 = *(v0 + 96);
    *(v30 + 80) = *(v0 + 80);
    *(v30 + 96) = v31;
    *(v30 + 112) = *(v0 + 112);
    v32 = *(v0 + 32);
    *(v30 + 16) = *(v0 + 16);
    *(v30 + 32) = v32;
    v33 = *(v0 + 64);
    *(v30 + 48) = *(v0 + 48);
    *(v30 + 64) = v33;
    sub_29D80417C(v21, v30 + v27, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
    *(v30 + v28) = v19;
    sub_29D80417C(v24, v30 + v29, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
    v34 = v19;
    v35 = swift_task_alloc();
    *(v0 + 432) = v35;
    v36 = sub_29D9331D8();
    *v35 = v0;
    v35[1] = sub_29D802444;
    v37 = *(v0 + 336);

    return MEMORY[0x2A1C60C90](&unk_29D94B5C0, v30, v37, v36, &type metadata for AFibBurdenPDFChartPage);
  }

  else
  {
    v15 = *(v0 + 200);
    (*(v2 + 8))(*(v0 + 312), *(v0 + 296));

    v16 = sub_29D934E78();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_29D801D10(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {

    v5 = sub_29D8028B0;
  }

  else
  {
    *(v4 + 376) = a1;
    v5 = sub_29D801E40;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D801E40()
{
  sub_29D69417C((v0 + 120));
  *(v0 + 384) = *(v0 + 376);
  sub_29D803F2C(*(v0 + 208) + 56, v0 + 160);
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = *(v0 + 192);
    sub_29D693E2C((v0 + 160), *(v0 + 184));
    v3 = swift_task_alloc();
    *(v0 + 392) = v3;
    *v3 = v0;
    v3[1] = sub_29D802100;

    return MEMORY[0x2A1C61D28](v1, v2);
  }

  else
  {
    sub_29D804064(v0 + 160);
    *(v0 + 416) = 0;
    v4 = *(v0 + 352);
    v6 = *(v0 + 280);
    v5 = *(v0 + 288);
    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    v9 = *(v0 + 240);
    v10 = *(v0 + 248);
    v11 = *(v0 + 224);
    sub_29D8040DC(*(v0 + 208), v0 + 16);
    sub_29D804114(v5, v6, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
    sub_29D804114(v10, v9, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
    v12 = (*(v8 + 80) + 120) & ~*(v8 + 80);
    v13 = (v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = (*(v11 + 80) + v13 + 8) & ~*(v11 + 80);
    v15 = swift_allocObject();
    *(v0 + 424) = v15;
    v16 = *(v0 + 96);
    *(v15 + 80) = *(v0 + 80);
    *(v15 + 96) = v16;
    *(v15 + 112) = *(v0 + 112);
    v17 = *(v0 + 32);
    *(v15 + 16) = *(v0 + 16);
    *(v15 + 32) = v17;
    v18 = *(v0 + 64);
    *(v15 + 48) = *(v0 + 48);
    *(v15 + 64) = v18;
    sub_29D80417C(v6, v15 + v12, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
    *(v15 + v13) = v4;
    sub_29D80417C(v9, v15 + v14, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
    v19 = v4;
    v20 = swift_task_alloc();
    *(v0 + 432) = v20;
    v21 = sub_29D9331D8();
    *v20 = v0;
    v20[1] = sub_29D802444;
    v22 = *(v0 + 336);

    return MEMORY[0x2A1C60C90](&unk_29D94B5C0, v15, v22, v21, &type metadata for AFibBurdenPDFChartPage);
  }
}

uint64_t sub_29D802100(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {

    v5 = sub_29D8029CC;
  }

  else
  {
    *(v4 + 408) = a1;
    v5 = sub_29D80223C;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D80223C()
{
  sub_29D69417C((v0 + 160));
  *(v0 + 416) = *(v0 + 408);
  v1 = *(v0 + 352);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 240);
  v7 = *(v0 + 248);
  v8 = *(v0 + 224);
  sub_29D8040DC(*(v0 + 208), v0 + 16);
  sub_29D804114(v2, v3, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
  sub_29D804114(v7, v6, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
  v9 = (*(v5 + 80) + 120) & ~*(v5 + 80);
  v10 = (v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (*(v8 + 80) + v10 + 8) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v0 + 424) = v12;
  v13 = *(v0 + 96);
  *(v12 + 80) = *(v0 + 80);
  *(v12 + 96) = v13;
  *(v12 + 112) = *(v0 + 112);
  v14 = *(v0 + 32);
  *(v12 + 16) = *(v0 + 16);
  *(v12 + 32) = v14;
  v15 = *(v0 + 64);
  *(v12 + 48) = *(v0 + 48);
  *(v12 + 64) = v15;
  sub_29D80417C(v3, v12 + v9, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
  *(v12 + v10) = v1;
  sub_29D80417C(v6, v12 + v11, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
  v16 = v1;
  v17 = swift_task_alloc();
  *(v0 + 432) = v17;
  v18 = sub_29D9331D8();
  *v17 = v0;
  v17[1] = sub_29D802444;
  v19 = *(v0 + 336);

  return MEMORY[0x2A1C60C90](&unk_29D94B5C0, v12, v19, v18, &type metadata for AFibBurdenPDFChartPage);
}

uint64_t sub_29D802444(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {

    v5 = sub_29D802AE8;
  }

  else
  {

    *(v4 + 448) = a1;
    v5 = sub_29D8025C0;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D8025C0()
{
  v1 = v0[56];
  v2 = v0[40];
  v3 = v0[38];
  v13 = v0[37];
  v14 = v0[39];
  v11 = v0[44];
  v12 = v0[36];
  v10 = v0[31];
  v4 = v0[27];
  v5 = v0[25];
  sub_29D934DE8();
  v6 = sub_29D934DF8();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  sub_29D776658(v1);

  sub_29D934E68();

  sub_29D804348(v10, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
  sub_29D804348(v12, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
  (*(v3 + 8))(v14, v13);
  v7 = sub_29D934E78();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_29D8027E4()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29D8028B0()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 288);
  v6 = *(v0 + 248);

  sub_29D804348(v6, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
  sub_29D804348(v5, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
  (*(v4 + 8))(v2, v3);
  sub_29D69417C((v0 + 120));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29D8029CC()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 288);
  v6 = *(v0 + 248);

  sub_29D804348(v6, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
  sub_29D804348(v5, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
  (*(v4 + 8))(v2, v3);
  sub_29D69417C((v0 + 160));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29D802AE8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 288);
  v6 = *(v0 + 248);

  sub_29D804348(v6, type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider);
  sub_29D804348(v5, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
  (*(v4 + 8))(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29D802BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[39] = a5;
  v6[40] = a6;
  v6[37] = a3;
  v6[38] = a4;
  v6[35] = a1;
  v6[36] = a2;
  v7 = sub_29D9331D8();
  v6[41] = v7;
  v8 = *(v7 - 8);
  v6[42] = v8;
  v6[43] = *(v8 + 64);
  v6[44] = swift_task_alloc();
  v9 = sub_29D9339F8();
  v6[45] = v9;
  v6[46] = *(v9 - 8);
  v6[47] = swift_task_alloc();
  sub_29D8043A8(0, &qword_2A17B57C0, sub_29D70AA6C, sub_29D70AFA0, MEMORY[0x29EDB86F0]);
  v6[48] = v10;
  v11 = *(v10 - 8);
  v6[49] = v11;
  v6[50] = *(v11 + 64);
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D802DDC, 0, 0);
}

uint64_t sub_29D802DDC()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 392);
  v3 = *(v0 + 376);
  v23 = *(v0 + 384);
  v24 = *(v0 + 408);
  v4 = *(v0 + 368);
  v21 = *(v0 + 360);
  v22 = *(v0 + 352);
  v25 = *(v0 + 344);
  v5 = *(v0 + 336);
  v26 = *(v0 + 328);
  v6 = *(v0 + 312);
  v7 = *(v0 + 304);
  v20 = *(v0 + 296);
  v8 = *(v0 + 288);
  *(v0 + 144) = type metadata accessor for AFibBurdenPDFChartPointProviderFactory(0);
  *(v0 + 152) = &off_2A244AFD8;
  v9 = sub_29D693F78((v0 + 120));
  sub_29D804114(v7, v9, type metadata accessor for AFibBurdenPDFChartPointProviderFactory);
  *(v0 + 184) = &type metadata for AFibBurdenPDFChartFactory;
  *(v0 + 192) = &off_2A244EDF0;
  *(v0 + 160) = v6;
  v10 = v6;
  sub_29D9331A8();
  sub_29D709A58(v1);
  (*(v4 + 8))(v3, v21);
  sub_29D8040DC(v20, v0 + 16);
  sub_29D6945AC(v0 + 120, v0 + 200);
  (*(v5 + 16))(v22, v8, v26);
  sub_29D6945AC(v0 + 160, v0 + 240);
  (*(v2 + 16))(v24, v1, v23);
  v11 = (*(v5 + 80) + 160) & ~*(v5 + 80);
  v12 = (v25 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (*(v2 + 80) + v12 + 40) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v0 + 424) = v14;
  v15 = *(v0 + 96);
  *(v14 + 80) = *(v0 + 80);
  *(v14 + 96) = v15;
  *(v14 + 112) = *(v0 + 112);
  v16 = *(v0 + 32);
  *(v14 + 16) = *(v0 + 16);
  *(v14 + 32) = v16;
  v17 = *(v0 + 64);
  *(v14 + 48) = *(v0 + 48);
  *(v14 + 64) = v17;
  sub_29D679D3C((v0 + 200), v14 + 120);
  (*(v5 + 32))(v14 + v11, v22, v26);
  sub_29D679D3C((v0 + 240), v14 + v12);
  (*(v2 + 32))(v14 + v13, v24, v23);
  v18 = swift_task_alloc();
  *(v0 + 432) = v18;
  *v18 = v0;
  v18[1] = sub_29D8030B0;

  return MEMORY[0x2A1C60C90](&unk_29D94B5D0, v14, &unk_2A243E330, &type metadata for AFibBurdenPDFChartType, &type metadata for AFibBurdenPDFChartPage.Element);
}

uint64_t sub_29D8030B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v5 = sub_29D8032EC;
  }

  else
  {
    *(v4 + 448) = a1;
    v5 = sub_29D8031FC;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D8031FC()
{
  v1 = v0[52];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[35];
  v5 = sub_29D85502C(v0[56]);
  v7 = v6;
  v8 = v5;
  (*(v3 + 8))(v1, v2);
  sub_29D69417C(v0 + 20);
  sub_29D69417C(v0 + 15);
  *v4 = v7;
  v4[1] = v8;

  v9 = v0[1];

  return v9();
}

uint64_t sub_29D8032EC()
{
  (*(v0[49] + 8))(v0[52], v0[48]);
  sub_29D69417C(v0 + 20);
  sub_29D69417C(v0 + 15);

  v1 = v0[1];

  return v1();
}

uint64_t sub_29D8033A4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 168) = a6;
  *(v7 + 176) = a7;
  *(v7 + 152) = a4;
  *(v7 + 160) = a5;
  *(v7 + 136) = a1;
  *(v7 + 144) = a3;
  *(v7 + 184) = type metadata accessor for AFibBurdenPDFChartHeaderContentProvider(0);
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  v9 = sub_29D9331D8();
  *(v7 + 208) = v9;
  *(v7 + 216) = *(v9 - 8);
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = type metadata accessor for AFibBurdenPDFChartViewModel(0);
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 288) = *a2;

  return MEMORY[0x2A1C73D48](sub_29D8034E4, 0, 0);
}

uint64_t sub_29D8034E4()
{
  v1 = **(v0 + 144);
  v2 = sub_29D8A4E50(v1, *(v0 + 288));
  *(v0 + 248) = v2;
  v3 = sub_29D8A50D4(v2, v1, *(v0 + 288));
  *(v0 + 256) = v3;
  v4 = v3;
  LOBYTE(v1) = *(v0 + 288);
  sub_29D693E2C(*(v0 + 152), *(*(v0 + 152) + 24));
  sub_29D8876EC(v1, (v0 + 16));
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_29D693E2C((v0 + 16), v5);
  v10 = (*(v6 + 8) + **(v6 + 8));
  v7 = swift_task_alloc();
  *(v0 + 264) = v7;
  *v7 = v0;
  v7[1] = sub_29D8036E4;
  v8 = *(v0 + 160);

  return v10(v8, v4, v5, v6);
}

uint64_t sub_29D8036E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v5 = sub_29D803DF4;
  }

  else
  {
    *(v4 + 280) = a1;
    v5 = sub_29D80380C;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D80380C()
{
  v57 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v47 = *(v0 + 288);
  v54 = v47 != 2;
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  v7 = *(v0 + 208);
  v48 = *(v0 + 200);
  v49 = *(v0 + 192);
  v46 = *(v0 + 184);
  v51 = *(v0 + 176);
  v52 = *(v0 + 256);
  v50 = *(v0 + 168);
  v45 = *(v0 + 144);
  v8 = *(v5 + 16);
  v8(v6, *(v0 + 160), v7);
  v8(v4, v6, v7);
  *(v4 + v3[5]) = v1;
  *(v4 + v3[6]) = v52;
  *(v4 + v3[7]) = v2;
  v9 = v2;
  v10 = sub_29D935E88();
  v11 = sub_29D8F4700(v10, v9, v6);
  v44 = v12;
  v14 = v13;
  v53 = v9;

  (*(v5 + 8))(v6, v7);
  v15 = (v4 + v3[8]);
  *v15 = v11;
  v15[1] = v44;
  v15[2] = v14;
  v16 = *(v45 + 8);
  sub_29D804114(v4, &v48[*(v46 + 20)], type metadata accessor for AFibBurdenPDFChartViewModel);
  *v48 = v47;
  sub_29D804114(v48, v49, type metadata accessor for AFibBurdenPDFChartHeaderContentProvider);
  v17 = v16;
  sub_29D825AC8(v49, v55);
  v18 = sub_29D693E2C(v50, v50[3]);
  sub_29D8043A8(0, &qword_2A17B57C0, sub_29D70AA6C, sub_29D70AFA0, MEMORY[0x29EDB86F0]);
  v20 = v19;
  *(v0 + 120) = v19;
  *(v0 + 128) = sub_29D8045D0();
  v21 = sub_29D693F78((v0 + 96));
  (*(*(v20 - 8) + 16))(v21, v51, v20);
  if (((1 << v47) & 0x36) != 0)
  {
    v22 = *(v0 + 240);
    v23 = type metadata accessor for AFibBurdenPDFBarChart(0);
    *(v0 + 80) = v23;
    *(v0 + 88) = sub_29D80466C(&qword_2A17B57D0, type metadata accessor for AFibBurdenPDFBarChart, &unk_29D941AC0);
    v24 = sub_29D693F78((v0 + 56));
    sub_29D804114(v22, v24 + v23[6], type metadata accessor for AFibBurdenPDFChartViewModel);
    sub_29D6D6E54(v0 + 96, v24 + v23[8]);
    *v24 = 0;
    *(v24 + 8) = 1;
    v24[2] = 0;
    *(v24 + 24) = 1;
LABEL_3:
    v25 = v24 + v23[7];
    *v25 = v53;
    v25[8] = v54;
    *(v25 + 2) = v17;
    goto LABEL_4;
  }

  if (v47)
  {
    v43 = *(v0 + 240);
    v23 = type metadata accessor for AFibBurdenPDFLineChart(0);
    *(v0 + 80) = v23;
    *(v0 + 88) = sub_29D80466C(&qword_2A17B57E0, type metadata accessor for AFibBurdenPDFLineChart, &unk_29D94A5D0);
    v24 = sub_29D693F78((v0 + 56));
    sub_29D804114(v43, v24 + v23[6], type metadata accessor for AFibBurdenPDFChartViewModel);
    sub_29D6D6E54(v0 + 96, v24 + v23[8]);
    *v24 = 0;
    *(v24 + 8) = 1;
    v24[2] = 0;
    *(v24 + 24) = 1;
    goto LABEL_3;
  }

  v37 = *(v0 + 240);
  v38 = *v18;
  v39 = type metadata accessor for AFibBurdenPDFAFibChart(0);
  *(v0 + 80) = v39;
  *(v0 + 88) = sub_29D80466C(&qword_2A17B57E8, type metadata accessor for AFibBurdenPDFAFibChart, &unk_29D954C50);
  v40 = sub_29D693F78((v0 + 56));
  sub_29D804114(v37, v40 + v39[6], type metadata accessor for AFibBurdenPDFChartViewModel);
  sub_29D6D6E54(v0 + 96, v40 + v39[8]);
  *v40 = 0;
  *(v40 + 8) = 1;
  v40[2] = 0;
  *(v40 + 24) = 1;
  v41 = v40 + v39[7];
  *v41 = v53;
  v41[8] = v54;
  *(v41 + 2) = v17;
  *(v40 + v39[9]) = v38;
  v42 = v38;
LABEL_4:
  v26 = *(v0 + 288);
  v27 = *(v0 + 240);
  v28 = *(v0 + 200);
  v29 = *(v0 + 136);
  v30 = *(v0 + 248);
  v31 = v17;
  sub_29D8046B4(v0 + 96);
  if (v26)
  {
    v32 = 80.0;
  }

  else
  {
    v32 = 139.0;
  }

  sub_29D6945AC(v0 + 56, v29 + 40);
  *(v29 + 24) = &type metadata for AFibBurdenPDFChartCurrentValueView;
  *(v29 + 32) = sub_29D804708();
  v33 = swift_allocObject();
  *v29 = v33;
  *(v33 + 48) = v56;
  v34 = v55[1];
  *(v33 + 16) = v55[0];
  *(v33 + 32) = v34;

  sub_29D804348(v28, type metadata accessor for AFibBurdenPDFChartHeaderContentProvider);
  sub_29D804348(v27, type metadata accessor for AFibBurdenPDFChartViewModel);
  sub_29D69417C((v0 + 56));
  *(v29 + 80) = v32;
  sub_29D69417C((v0 + 16));

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_29D803DF4()
{
  v1 = *(v0 + 248);

  sub_29D69417C((v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29D803E94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29D6AC948;

  return sub_29D801498(a1);
}

uint64_t sub_29D803F2C(uint64_t a1, uint64_t a2)
{
  sub_29D803FAC(0, &qword_2A17B57B8, sub_29D804000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D803FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D804000()
{
  result = qword_2A17B3CA8;
  if (!qword_2A17B3CA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B3CA8);
  }

  return result;
}

uint64_t sub_29D804064(uint64_t a1)
{
  sub_29D803FAC(0, &qword_2A17B57B8, sub_29D804000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D804114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D80417C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8041E4(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = *(type metadata accessor for AFibBurdenPDFChartPointProviderFactory(0) - 8);
  v8 = (*(v7 + 80) + 120) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider(0) - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = *(v2 + v9);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_29D6AC948;

  return sub_29D802BFC(a1, a2, v2 + 16, v2 + v8, v12, v2 + v11);
}

uint64_t sub_29D804348(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D8043A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_29D804428(uint64_t a1, _BYTE *a2)
{
  v5 = v3;
  v7 = *(sub_29D9331D8() - 8);
  v8 = (*(v7 + 80) + 160) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_29D8043A8(0, &qword_2A17B57C0, sub_29D70AA6C, sub_29D70AFA0, MEMORY[0x29EDB86F0]);
  v11 = (v9 + *(*(v10 - 8) + 80) + 40) & ~*(*(v10 - 8) + 80);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_29D6C383C;

  return sub_29D8033A4(a1, a2, v2 + 16, v2 + 120, v2 + v8, v2 + v9, v2 + v11);
}

unint64_t sub_29D8045D0()
{
  result = qword_2A17B57C8;
  if (!qword_2A17B57C8)
  {
    sub_29D8043A8(255, &qword_2A17B57C0, sub_29D70AA6C, sub_29D70AFA0, MEMORY[0x29EDB86F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B57C8);
  }

  return result;
}

uint64_t sub_29D80466C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D804708()
{
  result = qword_2A17B57D8;
  if (!qword_2A17B57D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B57D8);
  }

  return result;
}

uint64_t type metadata accessor for AFibBurdenPromotionTileActionHandler(uint64_t a1)
{
  result = qword_2A17B57F8;
  if (!qword_2A17B57F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8047F4()
{
  v1 = qword_2A17B57F0;
  if (*(v0 + qword_2A17B57F0))
  {
    v2 = *(v0 + qword_2A17B57F0);
  }

  else
  {
    v2 = sub_29D80485C();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_29D80485C()
{
  v0 = sub_29D936638();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D936608();
  (*(v1 + 8))(v4, v0);
  sub_29D693E2C(v9, v9[3]);
  sub_29D936588();
  type metadata accessor for AFibBurdenSettingsManager();
  v5 = swift_allocObject();
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    v6 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {
    v6 = MEMORY[0x29EDCA1A0];
  }

  *(v5 + 24) = v6;
  sub_29D939D68();
  sub_29D934408();
  swift_allocObject();
  *(v5 + 16) = sub_29D9343C8();
  sub_29D69417C(v9);
  return v5;
}

uint64_t sub_29D804A04()
{
  v1 = v0;
  swift_getObjectType();
  v99 = type metadata accessor for AFibBurdenOnboardingPresentationContext(0);
  v3 = MEMORY[0x2A1C7C4A8](v99, v2);
  v100 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v109 = &v93 - v6;
  v7 = sub_29D936638();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v16 = &v93 - v15;
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v93 - v18;
  v20 = sub_29D9350C8();
  v105 = *(v20 - 8);
  v106 = v20;
  MEMORY[0x2A1C7C4A8](v20, v21);
  v23 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D936608();
  v24 = *(v8 + 8);
  v104 = v19;
  v107 = v8 + 8;
  v108 = v7;
  v102 = v24;
  v24(v19, v7);
  sub_29D693E2C(v120, v121);
  v103 = v23;
  sub_29D936598();
  sub_29D69417C(v120);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v25 = sub_29D937898();
  sub_29D69C6C0(v25, qword_2A1A2C008);
  v26 = sub_29D937878();
  v27 = sub_29D93A2A8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v120[0] = v29;
    *v28 = 136446466;
    v30 = sub_29D93AF08();
    v32 = sub_29D6C2364(v30, v31, v120);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    *(v28 + 14) = sub_29D6C2364(0x2928706154646964, 0xE800000000000000, v120);
    _os_log_impl(&dword_29D677000, v26, v27, "[%{public}s.%{public}s]: Presenting onboarding", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v29, -1, -1);
    MEMORY[0x29ED6BE30](v28, -1, -1);
  }

  v33 = v104;
  sub_29D936B88();
  sub_29D936608();
  v34 = v33;
  v35 = v108;
  v36 = v102;
  v102(v34, v108);
  sub_29D693E2C(v120, v121);
  v101 = sub_29D936588();
  sub_29D936B88();
  v37 = sub_29D936618();
  v36(v16, v35);
  sub_29D93A388();

  sub_29D936B88();
  sub_29D936608();
  v36(v12, v35);
  sub_29D693E2C(v118, v118[3]);
  sub_29D9365A8();
  v38 = v105;
  v39 = v103;
  v40 = v106;
  (*(v105 + 16))(v109, v103);
  swift_storeEnumTagMultiPayload();
  sub_29D805B00(0, &qword_2A17B2E10, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9E90]);
  v41 = *(v38 + 72);
  v42 = v38;
  v43 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_29D943EA0;
  v45 = v44 + v43;
  v46 = *MEMORY[0x29EDC1D20];
  v99 = v1;
  v47 = *(v42 + 104);
  v47(v45, v46, v40);
  v47(v45 + v41, *MEMORY[0x29EDC1D68], v40);
  v47(v45 + 2 * v41, *MEMORY[0x29EDC1D80], v40);
  LOBYTE(v41) = sub_29D719D0C(v39, v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v48 = type metadata accessor for AFibBurdenOnboardingController();
  v49 = objc_allocWithZone(v48);
  *&v49[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = 0;
  v49[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_navigateToDetailRoomUponOnboardingCompletion] = v41 & 1;
  v116.receiver = v49;
  v116.super_class = v48;
  v98 = objc_msgSendSuper2(&v116, sel_initWithNibName_bundle_, 0, 0);
  [v98 setModalPresentationStyle_];
  v50 = *MEMORY[0x29EDBA6B0];
  v51 = objc_allocWithZone(MEMORY[0x29EDBAB98]);
  v52 = v101;
  v53 = [v51 initWithFeatureIdentifier:v50 healthStore:v101];
  v54 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F8] healthStore:v52];
  v55 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
  v56 = v53;
  v96 = v56;
  v57 = [v55 initWithFeatureIdentifier:v50 healthStore:v52];
  sub_29D6945AC(v117, &v113);
  v97 = v54;
  v58 = sub_29D71B714(v56, v57, v97, &v113);
  v95 = v58;

  sub_29D6945AC(v119, &v113);
  sub_29D6945AC(v117, &v110);
  type metadata accessor for AFibBurdenOnboardingViewControllerFactory();
  v59 = swift_allocObject();
  sub_29D679D3C(&v113, v59 + 16);
  sub_29D679D3C(&v110, v59 + 64);
  *(v59 + 56) = 2;
  v60 = sub_29D933F18();

  v61 = sub_29D933F08();
  v62 = type metadata accessor for AFibBurdenOnboardingFlowManager();
  v114 = v62;
  v115 = &off_2A244DAB0;
  *&v113 = v58;
  v111 = v60;
  v112 = &off_2A24417F8;
  *&v110 = v61;
  v63 = type metadata accessor for AFibBurdenOnboardingModel();
  v64 = swift_allocObject();
  v65 = sub_29D693DDC(&v113, v62);
  v94 = &v93;
  MEMORY[0x2A1C7C4A8](v65, v65);
  v67 = (&v93 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v68 + 16))(v67);
  v69 = sub_29D693DDC(&v110, v111);
  MEMORY[0x2A1C7C4A8](v69, v69);
  v71 = (&v93 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71);
  v73 = *v67;
  v74 = *v71;
  v64[5] = v62;
  v64[6] = &off_2A244DAB0;
  v64[2] = v73;
  v64[10] = v60;
  v64[11] = &off_2A24417F8;
  v64[7] = v74;
  sub_29D69417C(&v110);
  sub_29D69417C(&v113);
  v75 = v100;
  sub_29D71B998(v109, v100);

  v76 = HKHRAFibBurdenLogForCategory();
  v77 = objc_allocWithZone(MEMORY[0x29EDBAA00]);
  v78 = v101;
  v79 = [v77 initWithLoggingCategory:v76 healthDataSource:v101];

  v114 = v63;
  v115 = &off_2A2441928;
  *&v113 = v64;
  type metadata accessor for AFibBurdenOnboardingCoordinator(0);
  v80 = swift_allocObject();
  v81 = sub_29D693DDC(&v113, v63);
  v94 = &v93;
  MEMORY[0x2A1C7C4A8](v81, v81);
  v83 = (&v93 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v84 + 16))(v83);
  v85 = *v83;
  v111 = v63;
  v112 = &off_2A2441928;
  *&v110 = v85;
  *(v80 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_completeOnboardingSubscriber) = 0;
  v86 = v80 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController;
  *(v80 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_29D6945AC(&v110, v80 + 16);
  sub_29D71B998(v75, v80 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_presentationContext);
  *(v86 + 8) = &off_2A24497D8;
  v87 = v98;
  swift_unknownObjectWeakAssign();

  *(v80 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_viewFactory) = v59;
  *(v80 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_healthStore) = v78;
  *(v80 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_analyticsEventSubmissionManager) = v79;

  v88 = v78;
  v89 = v79;
  sub_29D862C98();

  sub_29D71B9FC(v75);
  sub_29D69417C(&v110);
  sub_29D69417C(&v113);

  sub_29D71B9FC(v109);
  sub_29D69417C(v117);
  sub_29D69417C(v119);
  *&v87[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = v80;

  sub_29D69417C(v118);
  sub_29D69417C(v120);
  v90 = v104;
  sub_29D936B88();
  v91 = sub_29D936618();
  v102(v90, v108);
  [v91 presentViewController:v87 animated:1 completion:0];

  return (*(v105 + 8))(v103, v106);
}

uint64_t sub_29D805628(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  *&v8[qword_2A17B57F0] = 0;
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29D805744()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenPromotionTileActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D805798(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x6944706154646964, 0xEF29287373696D73);
  MEMORY[0x29ED6A240](0xD000000000000023, 0x800000029D965250);
  return 91;
}

uint64_t sub_29D805864()
{
  ObjectType = swift_getObjectType();
  sub_29D805B00(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = v8 - v3;
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v5, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = ObjectType;
  v8[1] = 0;
  sub_29D9371C8();

  sub_29D8047F4();
  sub_29D9339E8();
  v6 = sub_29D9339F8();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  sub_29D8B0134(v4);

  return sub_29D6A0D34(v4);
}

uint64_t sub_29D805AB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D805B00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_29D805B84()
{
  v0 = sub_29D937A88();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D937B88();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v10 setNumberOfLines_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAdjustsFontForContentSizeCategory_];
  sub_29D937B18();
  sub_29D937AA8();
  (*(v6 + 8))(v9, v5);
  v11 = sub_29D937A48();
  (*(v1 + 8))(v4, v0);
  [v10 setFont_];

  v12 = [objc_opt_self() labelColor];
  [v10 setTextColor_];

  return v10;
}

id sub_29D805DC4(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_29D805E24()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v0 setNumberOfLines_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  return v0;
}

void sub_29D805F1C()
{
  v1 = OBJC_IVAR____TtC5Heart17TitleSubtitleView_item;
  swift_beginAccess();
  sub_29D69F108(v0 + v1, v9);
  if (v9[3])
  {
    sub_29D69F188();
    if (swift_dynamicCast())
    {
      v2 = sub_29D805B64();
      v3 = sub_29D939D28();
      [v2 setText_];

      v4 = sub_29D805DA4();
      v5 = sub_29D939D28();

      [v4 setText_];

      return;
    }

    v6 = v0;
  }

  else
  {
    v6 = v0;
    sub_29D69F230(v9);
  }

  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_29D93AA18();

  v9[0] = 0xD000000000000026;
  v9[1] = 0x800000029D95B770;
  sub_29D69F108(v6 + v1, v8);
  sub_29D70E348(0);
  v7 = sub_29D939DB8();
  MEMORY[0x29ED6A240](v7);

  sub_29D93AB28();
  __break(1u);
}

void sub_29D806248()
{
  v1 = sub_29D805B64();
  [v0 addSubview_];

  v2 = sub_29D805DA4();
  [v0 addSubview_];

  v27 = objc_opt_self();
  sub_29D6A0C58();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29D9403C0;
  v4 = OBJC_IVAR____TtC5Heart17TitleSubtitleView____lazy_storage___titleLabel;
  v5 = [*&v0[OBJC_IVAR____TtC5Heart17TitleSubtitleView____lazy_storage___titleLabel] topAnchor];
  v6 = [v0 &selRef_irregularHeartRhythmFooterLinkTitle];
  v7 = [v5 constraintEqualToAnchor:v6 constant:12.0];

  *(v3 + 32) = v7;
  v8 = [*&v0[v4] leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:2.0];

  *(v3 + 40) = v10;
  v11 = [v0 trailingAnchor];
  v12 = [*&v0[v4] trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:2.0];

  *(v3 + 48) = v13;
  v14 = OBJC_IVAR____TtC5Heart17TitleSubtitleView____lazy_storage___subtitleLabel;
  v15 = [*&v0[OBJC_IVAR____TtC5Heart17TitleSubtitleView____lazy_storage___subtitleLabel] topAnchor];
  v16 = [*&v0[v4] bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:6.0];

  *(v3 + 56) = v17;
  v18 = [*&v0[v14] leadingAnchor];
  v19 = [v0 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v3 + 64) = v20;
  v21 = [*&v0[v14] trailingAnchor];
  v22 = [v0 trailingAnchor];
  v23 = [v21 constraintLessThanOrEqualToAnchor_];

  *(v3 + 72) = v23;
  v24 = [v0 bottomAnchor];
  v25 = [*&v0[v14] bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:5.0];

  *(v3 + 80) = v26;
  sub_29D6D37A4();
  v28 = sub_29D939F18();

  [v27 activateConstraints_];
}

id sub_29D8065F0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TitleSubtitleView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D8066A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart17TitleSubtitleView_item;
  swift_beginAccess();
  return sub_29D69F108(v3 + v4, a1);
}

uint64_t sub_29D806700(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart17TitleSubtitleView_item;
  swift_beginAccess();
  sub_29D69F2FC(a1, v3 + v4);
  swift_endAccess();
  sub_29D805F1C();
  return sub_29D69F230(a1);
}

void (*sub_29D806770(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_29D8067D8;
}

void sub_29D8067D8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_29D805F1C();
  }
}

char *sub_29D80680C(uint64_t a1)
{
  sub_29D806D28(0);
  v32 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D806DC8(0);
  v31 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v30 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D71BF90();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v34) = 1;
  sub_29D938338();
  sub_29D806E64(0);
  v17 = swift_allocObject();
  (*(v13 + 32))(&v17[*(*v17 + *MEMORY[0x29EDB8A08] + 16)], v16, v12);
  v18 = *(a1 + 16);

  v28 = v17;
  v19 = v17;
  if (v18)
  {
    v20 = (a1 + 32);
    v29 = (v3 + 8);
    sub_29D6AD548();
    sub_29D806F8C(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
    v19 = v28;
    do
    {
      v21 = *v20++;
      v33 = v21;
      v34 = v19;

      sub_29D938458();
      sub_29D806F8C(qword_2A1A22770, sub_29D806D28, MEMORY[0x29EDB8870]);
      v22 = v30;
      v23 = v6;
      v24 = v32;
      sub_29D938468();

      v25 = v24;
      v6 = v23;
      (*v29)(v23, v25);
      sub_29D806EF8(0);
      v19 = swift_allocObject();
      (*(v8 + 32))(v19 + *(*v19 + *MEMORY[0x29EDB8A08] + 16), v22, v31);
      --v18;
    }

    while (v18);
  }

  return v19;
}

char *sub_29D806C20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v12 = MEMORY[0x29EDCA190];
    sub_29D93AAD8();
    v4 = a1 + 32;
    do
    {
      sub_29D6945AC(v4, v9);
      v5 = v10;
      v6 = v11;
      sub_29D693E2C(v9, v10);
      (*(v6 + 8))(v5, v6);
      sub_29D69417C(v9);
      sub_29D93AAB8();
      sub_29D93AAE8();
      sub_29D93AAF8();
      sub_29D93AAC8();
      v4 += 40;
      --v1;
    }

    while (v1);
    v2 = v12;
  }

  v7 = sub_29D80680C(v2);

  return v7;
}

void sub_29D806D28(uint64_t a1)
{
  if (!qword_2A1A22768)
  {
    sub_29D6AD548();
    sub_29D806F8C(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
    v1 = sub_29D938058();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22768);
    }
  }
}

void sub_29D806DC8(uint64_t a1)
{
  if (!qword_2A1A22578)
  {
    sub_29D806D28(255);
    sub_29D806F8C(qword_2A1A22770, sub_29D806D28, MEMORY[0x29EDB8870]);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22578);
    }
  }
}

void sub_29D806E64(uint64_t a1)
{
  if (!qword_2A1A22378)
  {
    sub_29D71BF90();
    sub_29D806F8C(&qword_2A1A22340, sub_29D71BF90, MEMORY[0x29EDB8AB8]);
    v1 = sub_29D938248();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22378);
    }
  }
}

void sub_29D806EF8(uint64_t a1)
{
  if (!qword_2A1A22380)
  {
    sub_29D806DC8(255);
    sub_29D806F8C(&qword_2A1A22580, sub_29D806DC8, MEMORY[0x29EDB8908]);
    v1 = sub_29D938248();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22380);
    }
  }
}

uint64_t sub_29D806F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_29D806FD4(uint64_t a1, int a2, void *a3)
{
  result = sub_29D693E2C((a1 + 32), *(a1 + 56));
  if (a2)
  {

    return swift_continuation_throwingResume();
  }

  else if (a3)
  {
    sub_29D6B7370(0, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D807090(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29D936138();
  v41 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D9360E8();
  v43 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v42 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D936388();
  v44 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 16);
  sub_29D936148();
  v16 = v15;
  sub_29D936198();
  *(&v47 + 1) = &_s27CardioFitnessChartComponentVN;
  v17 = sub_29D809950();
  *&v46 = v16;
  *(&v46 + 1) = 0xD000000000000012;
  v48 = v17;
  v40 = 0x800000029D965410;
  *&v47 = 0x800000029D965410;
  v18 = v16;
  sub_29D936BC8();

  sub_29D8099A4(&v46);
  sub_29D9361B8();
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v45 = v11;
  v19 = v14;
  sub_29D936BC8();

  sub_29D8099A4(&v46);
  sub_29D936368();
  v20 = sub_29D9354E8();
  v22 = v21;
  if (v20 == sub_29D9354E8() && v22 == v23)
  {

LABEL_5:
    v38 = v18;
    v25 = _s29CardioFitnessSpinnerComponentCMa();
    v26 = swift_allocObject();
    v26[2] = 0xD000000000000014;
    v26[3] = 0x800000029D965430;
    v26[4] = 0;
    v27 = v18;
    v28 = v42;
    sub_29D9360D8();
    *(&v47 + 1) = v25;
    v48 = sub_29D809A68(&qword_2A17B5840, _s29CardioFitnessSpinnerComponentCMa, &unk_29D951700);
    *&v46 = v26;
    v29 = *MEMORY[0x29EDC2620];
    v39 = a1;
    v30 = v41;
    v37 = *(v41 + 104);
    v37(v7, v29, v4);

    v31 = v19;
    sub_29D936BB8();
    v41 = *(v30 + 8);
    (v41)(v7, v4);
    sub_29D69417C(&v46);
    *(&v47 + 1) = v8;
    v48 = sub_29D809A68(&qword_2A17B4150, MEMORY[0x29EDC25F8], MEMORY[0x29EDC25F0]);
    v32 = sub_29D693F78(&v46);
    v33 = v43;
    (*(v43 + 16))(v32, v28, v8);
    v37(v7, *MEMORY[0x29EDC2618], v4);
    sub_29D936BB8();

    (v41)(v7, v4);
    v18 = v38;
    (*(v33 + 8))(v28, v8);
    v19 = v31;
    sub_29D69417C(&v46);
    goto LABEL_6;
  }

  v24 = sub_29D93AD78();

  if (v24)
  {
    goto LABEL_5;
  }

LABEL_6:
  v34 = sub_29D936028();

  (*(v44 + 8))(v19, v45);
  return v34;
}

uint64_t sub_29D8075FC(uint64_t a1)
{
  sub_29D809858(0, &qword_2A17B5828, MEMORY[0x29EDB8A88]);
  v1[3] = v3;
  v1[4] = *(v3 - 8);
  v1[5] = swift_task_alloc();
  sub_29D809858(0, &qword_2A17B5830, MEMORY[0x29EDB8A80]);
  v1[6] = v4;
  v1[7] = *(v4 - 8);
  v1[8] = swift_task_alloc();
  v1[2] = a1;

  return MEMORY[0x2A1C73D48](sub_29D807754, 0, 0);
}

uint64_t sub_29D807754()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_29D809760(0, &qword_2A17B19D8, MEMORY[0x29EDB89F8]);
  v5 = v4;
  v6 = sub_29D8097E4();
  MEMORY[0x29ED688D0](v5, v6);
  sub_29D9382E8();
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_29D807878;
  v8 = v0[6];

  return MEMORY[0x2A1C58968](v0 + 11, v8);
}

uint64_t sub_29D807878()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_29D807A24;
  }

  else
  {
    v2 = sub_29D80798C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D80798C()
{
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_29D807A24()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

void sub_29D807AAC(void *a1)
{
  v3 = *v1;
  v4 = sub_29D936378();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9364A8();
  sub_29D936368();
  (*(v5 + 8))(v8, v4);
  v9 = sub_29D9354E8();
  v11 = v10;
  if (v9 == sub_29D9354E8() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_29D93AD78();

    if ((v14 & 1) == 0)
    {
      sub_29D807F14(a1, 0xD000000000000036, 0x800000029D965340);
      return;
    }
  }

  v15 = sub_29D936468();
  v16 = sub_29D939D28();
  v17 = sub_29D939D28();
  v18 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:1];

  v19 = sub_29D939D28();
  v33 = nullsub_1;
  v34 = 0;
  aBlock = MEMORY[0x29EDCA5F8];
  v30 = 1107296256;
  v31 = sub_29D799960;
  v32 = &unk_2A2446F20;
  v20 = _Block_copy(&aBlock);

  v21 = objc_opt_self();
  v22 = [v21 actionWithTitle:v19 style:1 handler:v20];
  _Block_release(v20);

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = v15;
  v24[4] = sub_29D807F14;
  v24[5] = 0;
  v24[6] = v3;

  v25 = v15;
  v26 = sub_29D939D28();
  v33 = sub_29D809648;
  v34 = v24;
  aBlock = MEMORY[0x29EDCA5F8];
  v30 = 1107296256;
  v31 = sub_29D799960;
  v32 = &unk_2A2446F98;
  v27 = _Block_copy(&aBlock);

  v28 = [v21 actionWithTitle:v26 style:2 handler:v27];
  _Block_release(v27);

  [v18 addAction_];
  [v18 addAction_];
  [a1 presentViewController:v18 animated:1 completion:0];
}

uint64_t sub_29D807F14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D939968();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = sub_29D939998();
  v11 = *(v20[0] - 8);
  MEMORY[0x2A1C7C4A8](v20[0], v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6FC794();
  v15 = sub_29D93A468();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;
  aBlock[4] = sub_29D8098E0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2447038;
  v17 = _Block_copy(aBlock);
  sub_29D935E88();
  v18 = a1;
  sub_29D939988();
  v20[1] = MEMORY[0x29EDCA190];
  sub_29D809A68(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D8098EC(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v14, v10, v17);
  _Block_release(v17);

  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20[0]);
}

void sub_29D8081FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_29D939D28();
  v5 = sub_29D939D28();
  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = sub_29D939D28();
  v10[4] = nullsub_1;
  v10[5] = 0;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1107296256;
  v10[2] = sub_29D799960;
  v10[3] = &unk_2A2447060;
  v8 = _Block_copy(v10);

  v9 = [objc_opt_self() actionWithTitle:v7 style:0 handler:v8];
  _Block_release(v8);

  [v6 addAction_];
  [a3 presentViewController:v6 animated:1 completion:0];
}

uint64_t sub_29D80839C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_29D8098EC(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = &v22 - v12;
  v14 = sub_29D93A028();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_29D939FF8();
  v17 = a3;

  v18 = sub_29D939FE8();
  v19 = swift_allocObject();
  v20 = MEMORY[0x29EDCA390];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v17;
  v19[5] = v15;
  v19[6] = a4;
  v19[7] = a5;
  v19[8] = a6;

  sub_29D6BEBA4(0, 0, v13, &unk_29D94B7F0, v19);
}

uint64_t sub_29D808578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a7;
  v8[29] = a8;
  v8[26] = a5;
  v8[27] = a6;
  v8[25] = a4;
  sub_29D939FF8();
  v8[30] = sub_29D939FE8();
  v10 = sub_29D939FD8();
  v8[31] = v10;
  v8[32] = v9;

  return MEMORY[0x2A1C73D48](sub_29D808618, v10, v9);
}

uint64_t sub_29D808618()
{
  v0[33] = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6C0] healthStore:v0[25]];
  v1 = [objc_allocWithZone(MEMORY[0x29EDB8E78]) initWithSuiteName_];
  v0[34] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_29D939FC8();
    [v2 setValue:v3 forKey:*MEMORY[0x29EDBB040]];
  }

  v4 = v0[25];
  sub_29D939D68();
  sub_29D936B48();
  swift_allocObject();
  v5 = v4;
  v0[35] = sub_29D936B38();
  v6 = sub_29D936B28();
  v0[36] = v6;
  v7 = swift_task_alloc();
  v0[37] = v7;
  *v7 = v0;
  v7[1] = sub_29D8087B0;

  return sub_29D8075FC(v6);
}

uint64_t sub_29D8087B0()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = sub_29D808E6C;
  }

  else
  {
    v5 = sub_29D808904;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29D808904()
{
  v1 = v0[33];
  v0[2] = v0;
  v0[3] = sub_29D808A28;
  v2 = swift_continuation_init();
  sub_29D809760(0, &qword_2A17B72C0, MEMORY[0x29EDCA3C8]);
  v0[17] = v3;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D806FD4;
  v0[13] = &unk_2A2446FE8;
  v0[14] = v2;
  [v1 resetOnboardingWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D808A28()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  v3 = *(v1 + 256);
  v4 = *(v1 + 248);
  if (v2)
  {
    v5 = sub_29D809238;
  }

  else
  {
    v5 = sub_29D808B58;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29D808B58()
{
  v26 = v0;

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2C008);
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v25 = v5;
    *v4 = 136446466;
    v6 = sub_29D93AF08();
    v8 = sub_29D6C2364(v6, v7, &v25);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D9653E0, &v25);
    _os_log_impl(&dword_29D677000, v2, v3, "[%{public}s]: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v5, -1, -1);
    MEMORY[0x29ED6BE30](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(v0 + 272);
    v11 = *(v0 + 264);
    v12 = Strong;
    (*(v0 + 216))(Strong, 0xD00000000000002ELL, 0x800000029D9653E0);
  }

  else
  {
    v13 = sub_29D937878();
    v14 = sub_29D93A288();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 272);
    v17 = *(v0 + 264);
    if (v15)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315138;
      v20 = sub_29D93AF08();
      v22 = sub_29D6C2364(v20, v21, &v25);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_29D677000, v13, v14, "%s: view controller found nil", v18, 0xCu);
      sub_29D69417C(v19);
      MEMORY[0x29ED6BE30](v19, -1, -1);
      MEMORY[0x29ED6BE30](v18, -1, -1);
    }
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_29D808E6C()
{
  v29 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 264);

  v3 = *(v0 + 304);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](0xD00000000000003CLL, 0x800000029D9653A0);
  *(v0 + 192) = v3;
  v4 = v3;
  sub_29D6B7370(0, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
  v5 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v5);

  v7 = v27;
  v6 = v28;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v8 = sub_29D937898();
  sub_29D69C6C0(v8, qword_2A1A2C008);
  sub_29D935E88();
  v9 = sub_29D937878();
  v10 = sub_29D93A288();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v11 = 136446466;
    v12 = sub_29D93AF08();
    v14 = sub_29D6C2364(v12, v13, &v27);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_29D6C2364(v7, v6, &v27);
    _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s]: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v26, -1, -1);
    MEMORY[0x29ED6BE30](v11, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    (*(v0 + 216))(Strong, v7, v6);
  }

  else
  {

    v17 = sub_29D937878();
    v18 = sub_29D93A288();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      v21 = sub_29D93AF08();
      v23 = sub_29D6C2364(v21, v22, &v27);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_29D677000, v17, v18, "%s: view controller found nil", v19, 0xCu);
      sub_29D69417C(v20);
      MEMORY[0x29ED6BE30](v20, -1, -1);
      MEMORY[0x29ED6BE30](v19, -1, -1);
    }
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_29D809238()
{
  v29 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 264);

  swift_willThrow();

  v3 = *(v0 + 312);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](0xD00000000000003CLL, 0x800000029D9653A0);
  *(v0 + 192) = v3;
  v4 = v3;
  sub_29D6B7370(0, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
  v5 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v5);

  v7 = v27;
  v6 = v28;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v8 = sub_29D937898();
  sub_29D69C6C0(v8, qword_2A1A2C008);
  sub_29D935E88();
  v9 = sub_29D937878();
  v10 = sub_29D93A288();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v11 = 136446466;
    v12 = sub_29D93AF08();
    v14 = sub_29D6C2364(v12, v13, &v27);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_29D6C2364(v7, v6, &v27);
    _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s]: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v26, -1, -1);
    MEMORY[0x29ED6BE30](v11, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    (*(v0 + 216))(Strong, v7, v6);
  }

  else
  {

    v17 = sub_29D937878();
    v18 = sub_29D93A288();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      v21 = sub_29D93AF08();
      v23 = sub_29D6C2364(v21, v22, &v27);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_29D677000, v17, v18, "%s: view controller found nil", v19, 0xCu);
      sub_29D69417C(v20);
      MEMORY[0x29ED6BE30](v20, -1, -1);
      MEMORY[0x29ED6BE30](v19, -1, -1);
    }
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_29D809630(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D809658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29D6AC948;

  return sub_29D808578(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_29D809760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_29D6B7370(255, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
    v7 = a3(a1, MEMORY[0x29EDCA180] + 8, v6, MEMORY[0x29EDC9F20]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D8097E4()
{
  result = qword_2A17B19E0;
  if (!qword_2A17B19E0)
  {
    sub_29D809760(255, &qword_2A17B19D8, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B19E0);
  }

  return result;
}

void sub_29D809858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_29D809760(255, &qword_2A17B19D8, MEMORY[0x29EDB89F8]);
    v7 = v6;
    v8 = sub_29D8097E4();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D8098EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D809950()
{
  result = qword_2A17B5838;
  if (!qword_2A17B5838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5838);
  }

  return result;
}

uint64_t sub_29D8099A4(uint64_t a1)
{
  sub_29D809A00(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D809A00(uint64_t a1)
{
  if (!qword_2A17B3DE0)
  {
    sub_29D6B7370(255, &qword_2A17B2E30, MEMORY[0x29EDC22E8]);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3DE0);
    }
  }
}

uint64_t sub_29D809A68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D809ADC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D809B94(uint64_t a1)
{
  sub_29D809ADC(319, &qword_2A17B5848, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
  if (v1 <= 0x3F)
  {
    sub_29D809ADC(319, &qword_2A17B1618, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC390]);
    if (v2 <= 0x3F)
    {
      sub_29D809ADC(319, &qword_2A17B1610, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC390]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for HealthCalendarDayContent(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_29D809D08(uint64_t a1)
{
  result = sub_29D9339F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t *sub_29D809D9C@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_29D809E68()
{
  result = qword_2A17B5870;
  if (!qword_2A17B5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5870);
  }

  return result;
}

uint64_t sub_29D809EBC(void *a1)
{
  v3 = v1;
  sub_29D8100CC(0, &qword_2A17B5A40, sub_29D810024, &type metadata for HealthCalendarDayContent.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v12 - v9;
  sub_29D693E2C(a1, a1[3]);
  sub_29D810024();
  sub_29D93AED8();
  v16 = 0;
  sub_29D9339F8();
  sub_29D80DD1C(&qword_2A17B1538, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD0]);
  sub_29D93AD18();
  if (!v2)
  {
    v15 = *(v3 + *(type metadata accessor for HealthCalendarDayContent(0) + 20));
    v14 = 1;
    sub_29D810134();
    sub_29D93AD18();
    v13 = 2;
    sub_29D93ACF8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29D80A0EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_29D9339F8();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v28 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8100CC(0, &qword_2A17B5A28, sub_29D810024, &type metadata for HealthCalendarDayContent.CodingKeys, MEMORY[0x29EDC9E80]);
  v27 = v7;
  v24 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for HealthCalendarDayContent(0);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D693E2C(a1, a1[3]);
  sub_29D810024();
  sub_29D93AEC8();
  if (v2)
  {
    return sub_29D69417C(a1);
  }

  v22 = a1;
  v16 = v24;
  v15 = v25;
  v32 = 0;
  sub_29D80DD1C(&qword_2A17B1558, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BF0]);
  v17 = v27;
  v18 = v26;
  sub_29D93AC88();
  (*(v15 + 32))(v14, v28, v18);
  v30 = 1;
  sub_29D810078();
  sub_29D93AC88();
  v14[*(v11 + 20)] = v31;
  v29 = 2;
  v19 = sub_29D93AC68();
  (*(v16 + 8))(v10, v17);
  v14[*(v11 + 24)] = v19 & 1;
  sub_29D80F578(v14, v23, type metadata accessor for HealthCalendarDayContent);
  sub_29D69417C(v22);
  return sub_29D80EAB4(v14, type metadata accessor for HealthCalendarDayContent);
}

uint64_t sub_29D80A4C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29D938B68();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDB9D18];
  sub_29D809ADC(0, &qword_2A17B5A20, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v17 - v12;
  sub_29D80FFA4(v2, &v17 - v12, &qword_2A17B5A20, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_29D933CE8();
    return (*(*(v14 - 8) + 32))(a1, v13, v14);
  }

  else
  {
    sub_29D93A298();
    v16 = sub_29D9390A8();
    sub_29D937758();

    sub_29D938B58();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_29D80A6E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29D938B68();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDBC7B8];
  sub_29D809ADC(0, &qword_2A17B1600, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for HealthCalendarDayView(0);
  sub_29D80FFA4(v1 + *(v13 + 20), v12, &qword_2A17B1600, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_29D938C58();
    return (*(*(v14 - 8) + 32))(a1, v12, v14);
  }

  else
  {
    sub_29D93A298();
    v16 = sub_29D9390A8();
    sub_29D937758();

    sub_29D938B58();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

unint64_t sub_29D80A910()
{
  v1 = 0x6574617473;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_29D80A964@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D80EC2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D80A98C(uint64_t a1)
{
  v2 = sub_29D810024();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D80A9C8(uint64_t a1)
{
  v2 = sub_29D810024();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D80AA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_29D933988() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_29D80AABC(uint64_t a1)
{
  sub_29D93AE58();
  sub_29D9339F8();
  sub_29D80DD1C(&qword_2A17B1360, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29D939C98();
  MEMORY[0x29ED6B260](*(v1 + *(a1 + 20)));
  sub_29D93AE78();
  return sub_29D93AE98();
}

uint64_t sub_29D80AB74(uint64_t a1, uint64_t a2)
{
  sub_29D9339F8();
  sub_29D80DD1C(&qword_2A17B1360, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29D939C98();
  MEMORY[0x29ED6B260](*(v2 + *(a2 + 20)));
  return sub_29D93AE78();
}

uint64_t sub_29D80AC18(uint64_t a1, uint64_t a2)
{
  sub_29D93AE58();
  sub_29D9339F8();
  sub_29D80DD1C(&qword_2A17B1360, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29D939C98();
  MEMORY[0x29ED6B260](*(v2 + *(a2 + 20)));
  sub_29D93AE78();
  return sub_29D93AE98();
}

uint64_t sub_29D80ACCC()
{
  v1 = sub_29D9338A8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D9338F8();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v25 - v13;
  v15 = type metadata accessor for HealthCalendarDayContent(0);
  v16 = v15 - 8;
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v0 + *(type metadata accessor for HealthCalendarDayView(0) + 28);
  if (*(v20 + *(v16 + 32)) != 1)
  {
    return 0;
  }

  v21 = sub_29D80F578(v20, v19, type metadata accessor for HealthCalendarDayContent);
  MEMORY[0x29ED634A0](v21);
  sub_29D933898();
  sub_29D933808();
  (*(v2 + 8))(v5, v1);
  v22 = *(v7 + 8);
  v22(v11, v6);
  sub_29D80DD1C(&qword_2A17B22A8, MEMORY[0x29EDB9BB0], MEMORY[0x29EDB9BA8]);
  sub_29D9339D8();
  v22(v14, v6);
  v23 = sub_29D9339F8();
  (*(*(v23 - 8) + 8))(v19, v23);
  return v25;
}

uint64_t sub_29D80AF9C()
{
  sub_29D8100CC(0, &qword_2A17B5A10, sub_29D7EF894, MEMORY[0x29EDC9BA8], MEMORY[0x29EDB9A88]);
  v54 = *(v1 - 8);
  v55 = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v53 = &v45 - v3;
  v4 = type metadata accessor for HealthCalendarDayContent(0);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D933CC8();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69A444(0);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D933CE8();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v45 - v21;
  v23 = sub_29D933AA8();
  v24 = *(v23 - 8);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v46 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = &v45 - v29;
  v47 = v0;
  sub_29D80A4C0(v22);
  sub_29D933C68();
  v31 = *(v15 + 8);
  v48 = v14;
  v31(v22, v14);
  if ((*(v24 + 48))(v13, 1, v23) == 1)
  {
    sub_29D80EAB4(v13, sub_29D69A444);
    return 0;
  }

  else
  {
    v33 = *(v24 + 32);
    v45 = v30;
    v33(v30, v13, v23);
    v34 = v47;
    sub_29D80A4C0(v19);
    v36 = v49;
    v35 = v50;
    v37 = v51;
    (*(v50 + 104))(v49, *MEMORY[0x29EDB9CB8], v51);
    v38 = type metadata accessor for HealthCalendarDayView(0);
    v39 = v52;
    sub_29D80F578(v34 + *(v38 + 28), v52, type metadata accessor for HealthCalendarDayContent);
    v40 = sub_29D933CD8();
    (*(v35 + 8))(v36, v37);
    v31(v19, v48);
    v41 = sub_29D9339F8();
    (*(*(v41 - 8) + 8))(v39, v41);
    v56 = v40;
    v42 = v45;
    (*(v24 + 16))(v46, v45, v23);
    sub_29D7EF894();
    v43 = v53;
    sub_29D9334D8();
    sub_29D80FF14();
    v44 = v55;
    sub_29D93A858();
    (*(v54 + 8))(v43, v44);
    (*(v24 + 8))(v42, v23);
    return v57;
  }
}

void sub_29D80B504(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MonitorHypertensionJournalViewSpecs(0);
  v5 = v4 - 8;
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D80DD64(0);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D80E8C0(0);
  v14 = v13 - 8;
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthCalendarDayView(0);
  sub_29D6998E4(v8);
  v18 = *&v8[*(v5 + 52)];
  sub_29D80EAB4(v8, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  *v12 = sub_29D938C68();
  *(v12 + 1) = v18;
  v12[16] = 0;
  sub_29D80E94C(0);
  sub_29D80B774(v2, &v12[*(v19 + 44)]);
  sub_29D9398A8();
  sub_29D9388E8();
  sub_29D80E9B4(v12, v17, sub_29D80DD64);
  v20 = &v17[*(v14 + 44)];
  v21 = v27[5];
  *(v20 + 4) = v27[4];
  *(v20 + 5) = v21;
  *(v20 + 6) = v27[6];
  v22 = v27[1];
  *v20 = v27[0];
  *(v20 + 1) = v22;
  v23 = v27[3];
  *(v20 + 2) = v27[2];
  *(v20 + 3) = v23;
  v24 = sub_29D939588();
  LOBYTE(v2) = sub_29D9390D8();
  sub_29D80E9B4(v17, a1, sub_29D80E8C0);
  sub_29D80EA1C(0, &qword_2A17B5970, sub_29D80E8C0);
  v26 = a1 + *(v25 + 36);
  *v26 = v24;
  *(v26 + 8) = v2;
}

uint64_t sub_29D80B774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v396 = a1;
  v386 = a2;
  v337 = type metadata accessor for MonitorHypertensionJournalViewSpecs(0);
  MEMORY[0x2A1C7C4A8](v337, v2);
  v336 = &v336 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D80E784(0);
  v359 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v361 = &v336 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D80E73C(0);
  v385 = v7;
  v9 = MEMORY[0x2A1C7C4A8](v7, v8);
  v360 = &v336 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v362 = &v336 - v12;
  sub_29D80E198(0, &qword_2A17B5978, sub_29D80E150, sub_29D80E73C, MEMORY[0x29EDBC7E8]);
  v383 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v384 = &v336 - v15;
  v16 = sub_29D9376C8();
  v351 = *(v16 - 8);
  KeyPath = v16;
  MEMORY[0x2A1C7C4A8](v16, v17);
  v350 = &v336 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D933CE8();
  v371 = *(v19 - 8);
  v372 = v19;
  MEMORY[0x2A1C7C4A8](v19, v20);
  v369 = &v336 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v394 = type metadata accessor for HealthCalendarDayContent(0) - 8;
  MEMORY[0x2A1C7C4A8](v394, v22);
  v370 = &v336 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v391 = sub_29D9388D8();
  v25 = MEMORY[0x2A1C7C4A8](v391, v24);
  v355 = (&v336 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v25, v27);
  *&v345 = &v336 - v28;
  sub_29D80E528(0);
  v373 = v29;
  v31 = MEMORY[0x2A1C7C4A8](v29, v30);
  v388 = &v336 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v346 = &v336 - v34;
  sub_29D80EA1C(0, &qword_2A17B5908, sub_29D80E528);
  v374 = v35;
  v37 = MEMORY[0x2A1C7C4A8](v35, v36);
  v389 = &v336 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v37, v39);
  v390 = &v336 - v40;
  sub_29D80E4AC(0);
  v376 = v41;
  v43 = MEMORY[0x2A1C7C4A8](v41, v42);
  v358 = &v336 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v43, v45);
  v353 = &v336 - v46;
  v395 = sub_29D938C58();
  v392 = *(v395 - 8);
  v48 = MEMORY[0x2A1C7C4A8](v395, v47);
  v357 = &v336 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x2A1C7C4A8](v48, v50);
  v356 = &v336 - v52;
  v54 = MEMORY[0x2A1C7C4A8](v51, v53);
  v354 = &v336 - v55;
  v57 = MEMORY[0x2A1C7C4A8](v54, v56);
  v387 = &v336 - v58;
  v60 = MEMORY[0x2A1C7C4A8](v57, v59);
  v363 = &v336 - v61;
  v63 = MEMORY[0x2A1C7C4A8](v60, v62);
  v343 = &v336 - v64;
  v66 = MEMORY[0x2A1C7C4A8](v63, v65);
  v341 = &v336 - v67;
  v69 = MEMORY[0x2A1C7C4A8](v66, v68);
  v398 = &v336 - v70;
  v72 = MEMORY[0x2A1C7C4A8](v69, v71);
  v397 = &v336 - v73;
  MEMORY[0x2A1C7C4A8](v72, v74);
  v364 = (&v336 - v75);
  v76 = sub_29D939628();
  v339 = *(v76 - 8);
  v340 = v76;
  MEMORY[0x2A1C7C4A8](v76, v77);
  v338 = &v336 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D80E198(0, &qword_2A17B58E0, sub_29D80E308, sub_29D80E39C, MEMORY[0x29EDBC558]);
  v393 = v79;
  MEMORY[0x2A1C7C4A8](v79, v80);
  v365 = &v336 - v81;
  sub_29D80E264(0);
  v342 = v82;
  MEMORY[0x2A1C7C4A8](v82, v83);
  v366 = &v336 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D80E21C(0);
  *&v344 = v85;
  MEMORY[0x2A1C7C4A8](v85, v86);
  v348 = &v336 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D80E150(0);
  v380 = v88;
  v90 = MEMORY[0x2A1C7C4A8](v88, v89);
  v347 = &v336 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v90, v92);
  v349 = &v336 - v93;
  sub_29D80E108(0);
  v96 = MEMORY[0x2A1C7C4A8](v94 - 8, v95);
  v382 = &v336 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v96, v98);
  v381 = &v336 - v99;
  v100 = sub_29D9391E8();
  v101 = *(v100 - 8);
  MEMORY[0x2A1C7C4A8](v100, v102);
  v104 = &v336 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D938C18();
  v105 = sub_29D9392D8();
  v107 = v106;
  v109 = v108;
  sub_29D939218();
  (*(v101 + 104))(v104, *MEMORY[0x29EDBC9B0], v100);
  sub_29D939208();

  (*(v101 + 8))(v104, v100);
  sub_29D939178();
  sub_29D9391D8();

  v110 = sub_29D9392C8();
  v377 = v111;
  v378 = v110;
  LOBYTE(v100) = v112;
  v379 = v113;
  v114 = v396;

  v115 = v109 & 1;
  v116 = v397;
  v117 = v107;
  v118 = v395;
  sub_29D69ABB4(v105, v117, v115);

  v119 = sub_29D9398A8();
  v121 = v120;
  sub_29D80DA64(&v399);
  v429[2] = v401;
  v429[3] = v402;
  v438 = v401;
  v439 = v402;
  v429[0] = v399;
  v429[1] = v400;
  *&v430 = v403;
  *(&v430 + 1) = v119;
  v436 = v399;
  v437 = v400;
  v440 = v430;
  v431 = v121;
  LOBYTE(v426) = v100 & 1;
  v441 = v121;
  v432[3] = v402;
  v432[2] = v401;
  v432[0] = v399;
  v432[1] = v400;
  v433 = v403;
  v434 = v119;
  v435 = v121;
  sub_29D80F578(v429, &v407, sub_29D80DEFC);
  sub_29D80EAB4(v432, sub_29D80DEFC);
  v375 = v426;
  v122 = type metadata accessor for HealthCalendarDayView(0);
  v123 = v122;
  v124 = *(v394 + 28);
  v368 = v114 + *(v122 + 28);
  v125 = *(v368 + v124);
  if (v125)
  {
    v367 = v125;
    v366 = v122;
    v407 = sub_29D80AF9C();
    v408 = v126;
    sub_29D69AB60();
    v127 = sub_29D9392F8();
    v363 = v128;
    v364 = v127;
    v130 = v129;
    v353 = v131;
    KeyPath = swift_getKeyPath();
    v351 = swift_getKeyPath();
    LODWORD(v350) = v130 & 1;
    LOBYTE(v407) = v130 & 1;
    LOBYTE(v399) = 0;
    sub_29D80A6E4(v387);
    sub_29D80A6E4(v116);
    v132 = v392;
    v133 = *(v392 + 104);
    v134 = v398;
    LODWORD(v390) = *MEMORY[0x29EDBC758];
    v393 = v133;
    v394 = v392 + 104;
    v133(v398);
    v135 = sub_29D80ED48(v116, v134);
    v136 = v118;
    v137 = *(v132 + 8);
    v137(v134, v136);
    v137(v116, v136);
    v138 = MEMORY[0x29EDBC780];
    if (v135)
    {
      v365 = 0x4041000000000000;
      v139 = v387;
    }

    else
    {
      v166 = v387;
      v167 = (*(v132 + 88))(v387, v136);
      v168 = *v138;
      v365 = 0x4040800000000000;
      if (v167 == v168)
      {
        goto LABEL_9;
      }

      v139 = v166;
      v365 = 0x4040000000000000;
    }

    v137(v139, v136);
LABEL_9:
    v169 = v354;
    sub_29D80A6E4(v354);
    sub_29D80A6E4(v116);
    (v393)(v134, v390, v136);
    v170 = sub_29D80ED48(v116, v134);
    v137(v134, v136);
    v137(v116, v136);
    if (v170)
    {
      v171 = v169;
      v172 = v367;
    }

    else
    {
      v173 = (*(v132 + 88))(v169, v136) == *MEMORY[0x29EDBC780];
      v171 = v169;
      v172 = v367;
      if (v173)
      {
        goto LABEL_13;
      }
    }

    v137(v171, v136);
LABEL_13:
    sub_29D9398A8();
    sub_29D938718();
    *(v418 + 7) = v420;
    *(&v418[1] + 7) = v421;
    *(&v418[2] + 7) = v422;
    if (v172 == 2)
    {
      v174 = sub_29D9395C8();
    }

    else
    {
      v174 = sub_29D9395B8();
    }

    v387 = v174;
    LODWORD(v343) = v172 != 2;
    v349 = swift_getKeyPath();
    v175 = v396;
    sub_29D80A6E4(v116);
    v176 = v398;
    LODWORD(v365) = *MEMORY[0x29EDBC7A0];
    v177 = v395;
    v393(v398);
    v178 = sub_29D80F160(v116, v176);
    v137(v176, v177);
    v137(v116, v177);
    if (v178)
    {
      v179 = 16.0;
    }

    else
    {
      v179 = 8.0;
    }

    v180 = *(v391 + 20);
    v181 = *MEMORY[0x29EDBC6F8];
    v182 = sub_29D938C38();
    v183 = *(v182 - 8);
    v184 = *(v183 + 104);
    v185 = v355;
    LODWORD(v354) = v181;
    v347 = v184;
    v348 = v182;
    v346 = v183 + 104;
    (v184)(v355 + v180, v181);
    *v185 = v179;
    v185[1] = v179;
    v186 = v175 + *(v366 + 32);
    v187 = *v186;
    v188 = *(v186 + 8);
    v344 = *(v186 + 24);
    v345 = v188;
    v189 = v370;
    sub_29D80F578(v368, v370, type metadata accessor for HealthCalendarDayContent);
    sub_29D935E88();
    v190 = v369;
    sub_29D933C88();
    sub_29D933B18();
    (*(v371 + 8))(v190, v372);
    v191 = sub_29D9339F8();
    (*(*(v191 - 8) + 8))(v189, v191);
    sub_29D9386D8();
    v192 = MEMORY[0x29EDBC5C0];
    v193 = v388;
    sub_29D80F578(v185, v388, MEMORY[0x29EDBC5C0]);
    v194 = *&v423 * 0.5;
    v195 = v193 + *(v373 + 68);
    sub_29D80F578(v185, v195, v192);
    *(v195 + *(sub_29D9388C8() + 20)) = v194;
    sub_29D80F5E0(0);
    v197 = v195 + *(v196 + 36);
    v198 = v424;
    *v197 = v423;
    *(v197 + 16) = v198;
    *(v197 + 32) = v425;
    sub_29D80F674(0);
    v200 = v195 + *(v199 + 52);
    *v200 = v187;
    v201 = v345;
    *(v200 + 24) = v344;
    *(v200 + 8) = v201;
    *(v195 + *(v199 + 56)) = 256;
    v202 = sub_29D9398A8();
    v204 = v203;
    sub_29D80EAB4(v185, MEMORY[0x29EDBC5C0]);
    sub_29D80F724(0);
    v206 = (v195 + *(v205 + 36));
    *v206 = v202;
    v206[1] = v204;
    if (v367 == 2)
    {
      v208 = sub_29D939588();
    }

    else
    {
      v207 = v336;
      sub_29D6998E4(v336);
      v208 = *(v207 + *(v337 + 40));

      sub_29D80EAB4(v207, type metadata accessor for MonitorHypertensionJournalViewSpecs);
    }

    v209 = v389;
    v210 = v357;
    v211 = sub_29D9390D8();
    sub_29D80E9B4(v388, v209, sub_29D80E528);
    v212 = v209 + *(v374 + 36);
    *v212 = v208;
    *(v212 + 8) = v211;
    v213 = v356;
    sub_29D80A6E4(v356);
    v214 = v397;
    sub_29D80A6E4(v397);
    v215 = v398;
    v216 = v395;
    (v393)(v398, v390, v395);
    v217 = sub_29D80ED48(v214, v215);
    v137(v215, v216);
    v137(v214, v216);
    if (v217)
    {
      v218 = v213;
    }

    else
    {
      if ((*(v392 + 88))(v213, v216) == *MEMORY[0x29EDBC780])
      {
        goto LABEL_27;
      }

      v218 = v213;
    }

    v137(v218, v216);
LABEL_27:
    sub_29D80A6E4(v210);
    v219 = v397;
    sub_29D80A6E4(v397);
    v220 = v398;
    (v393)(v398, v390, v216);
    v221 = sub_29D80ED48(v219, v220);
    v137(v220, v216);
    v137(v219, v216);
    if (v221)
    {
      v222 = v398;
    }

    else
    {
      v223 = (*(v392 + 88))(v210, v216);
      v222 = v398;
      if (v223 == *MEMORY[0x29EDBC780])
      {
LABEL_31:
        sub_29D9398A8();
        sub_29D938718();
        v224 = v358;
        sub_29D683354(v389, v358);
        v225 = (v224 + *(v376 + 36));
        v226 = v427;
        *v225 = v426;
        v225[1] = v226;
        v225[2] = v428;
        v227 = sub_29D9398A8();
        v229 = v228;
        v230 = v216;
        v231 = v361;
        v232 = &v361[*(v359 + 36)];
        sub_29D80E9B4(v224, v232, sub_29D80E4AC);
        sub_29D80E418(0);
        v234 = (v232 + *(v233 + 36));
        *v234 = v227;
        v234[1] = v229;
        *(v231 + 112) = *(&v418[2] + 15);
        v235 = v418[1];
        *(v231 + 97) = v418[2];
        v236 = v418[0];
        *(v231 + 81) = v235;
        v237 = v363;
        *v231 = v364;
        *(v231 + 8) = v237;
        *(v231 + 16) = v350;
        v238 = KeyPath;
        *(v231 + 24) = v353;
        *(v231 + 32) = v238;
        *(v231 + 40) = 1;
        *(v231 + 48) = v351;
        *(v231 + 56) = 1;
        *(v231 + 64) = 0;
        *(v231 + 65) = v236;
        v239 = v387;
        *(v231 + 120) = v349;
        *(v231 + 128) = v239;
        v240 = v397;
        sub_29D80A6E4(v397);
        (v393)(v222, v365, v230);
        LOBYTE(v227) = sub_29D80F160(v240, v222);
        v137(v222, v230);
        v137(v240, v230);
        if (v227)
        {
          v241 = 16.0;
        }

        else
        {
          v241 = 8.0;
        }

        v242 = v360;
        v243 = &v360[*(v385 + 36)];
        (v347)(v243 + *(v391 + 20), v354, v348);
        *v243 = v241;
        v243[1] = v241;
        sub_29D7280C0(0);
        *(v243 + *(v244 + 36)) = 256;
        sub_29D80E9B4(v231, v242, sub_29D80E784);
        v245 = v362;
        sub_29D80E9B4(v242, v362, sub_29D80E73C);
        sub_29D80FEAC(v245, v384, sub_29D80E73C);
        swift_storeEnumTagMultiPayload();
        sub_29D80FA90(&qword_2A17B59B0, sub_29D80E150, sub_29D80F80C);
        sub_29D80FA90(&qword_2A17B59E8, sub_29D80E73C, sub_29D80FB44);
        v246 = v381;
        sub_29D938DE8();
        v247 = sub_29D80E73C;
        goto LABEL_60;
      }
    }

    v137(v210, v216);
    goto LABEL_31;
  }

  sub_29D939618();
  v141 = v338;
  v140 = v339;
  v142 = v340;
  (*(v339 + 104))(v338, *MEMORY[0x29EDBCAB8], v340);
  v143 = sub_29D939668();

  (*(v140 + 8))(v141, v142);
  sub_29D80E308(0);
  v145 = v365;
  v146 = (v365 + *(v144 + 36));
  sub_29D764858(0);
  v148 = *(v147 + 28);
  sub_29D938CA8();
  v149 = sub_29D938CB8();
  v150 = v396;
  (*(*(v149 - 8) + 56))(v146 + v148, 0, 1, v149);
  *v146 = swift_getKeyPath();
  *v145 = v143;
  *(v145 + 8) = 0;
  *(v145 + 16) = 1;
  v151 = (v150 + *(v123 + 32));
  v152 = *v151;
  v153 = v151[1];
  v154 = v151[2];
  v155 = v151[3];
  v156 = v151[4];
  v157 = sub_29D939588();
  v158 = (v145 + *(v393 + 9));
  *v158 = v152;
  v158[1] = v153;
  v158[2] = v154;
  v158[3] = v155;
  v158[4] = v156;
  v158[5] = v157;
  v388 = v152;
  sub_29D935E88();
  sub_29D80A6E4(v364);
  sub_29D80A6E4(v116);
  v159 = v392;
  v160 = *(v392 + 104);
  v161 = v398;
  LODWORD(v389) = *MEMORY[0x29EDBC758];
  v393 = v160;
  v394 = v392 + 104;
  v160(v398);
  LOBYTE(v148) = sub_29D80ED48(v116, v161);
  v162 = *(v159 + 8);
  v162(v161, v118);
  v162(v116, v118);
  if (v148)
  {
    v163 = 0x4041000000000000;
    v164 = v341;
    v165 = v364;
  }

  else
  {
    v248 = *(v159 + 88);
    v249 = v364;
    v250 = v248(v364, v118);
    v163 = 0x4040800000000000;
    v164 = v341;
    if (v250 == *MEMORY[0x29EDBC780])
    {
      goto LABEL_38;
    }

    v165 = v249;
    v163 = 0x4040000000000000;
  }

  v118 = v395;
  v162(v165, v395);
LABEL_38:
  v387 = v163;
  sub_29D80A6E4(v164);
  v251 = v397;
  sub_29D80A6E4(v397);
  v252 = v398;
  (v393)(v398, v389, v118);
  v253 = sub_29D80ED48(v251, v252);
  v162(v252, v118);
  v162(v251, v118);
  if (v253)
  {
    v255 = v365;
    v254 = v366;
    v256 = v164;
  }

  else
  {
    v173 = (*(v392 + 88))(v164, v118) == *MEMORY[0x29EDBC780];
    v255 = v365;
    v254 = v366;
    v256 = v164;
    if (v173)
    {
      goto LABEL_42;
    }
  }

  v118 = v395;
  v162(v256, v395);
LABEL_42:
  sub_29D9398A8();
  sub_29D938718();
  sub_29D80FDA0(v255, v254);
  v257 = (v254 + *(v342 + 36));
  v258 = v421;
  *v257 = v420;
  v257[1] = v258;
  v257[2] = v422;
  v259 = v397;
  sub_29D80A6E4(v397);
  v260 = v398;
  LODWORD(v387) = *MEMORY[0x29EDBC7A0];
  v393(v398);
  v261 = sub_29D80F160(v259, v260);
  v162(v260, v118);
  v162(v259, v118);
  if (v261)
  {
    v262 = 16.0;
  }

  else
  {
    v262 = 8.0;
  }

  v263 = *(v391 + 20);
  v264 = *MEMORY[0x29EDBC6F8];
  v265 = sub_29D938C38();
  v266 = *(v265 - 8);
  v267 = *(v266 + 104);
  v268 = v345;
  v367 = v264;
  v364 = v267;
  v365 = v265;
  v362 = v266 + 104;
  (v267)(v345 + v263, v264);
  *v268 = v262;
  v268[1] = v262;
  v269 = v370;
  sub_29D80F578(v368, v370, type metadata accessor for HealthCalendarDayContent);
  sub_29D935E88();
  v270 = v369;
  sub_29D933C88();
  sub_29D933B18();
  (*(v371 + 8))(v270, v372);
  v271 = sub_29D9339F8();
  (*(*(v271 - 8) + 8))(v269, v271);
  sub_29D9386D8();
  v272 = MEMORY[0x29EDBC5C0];
  v273 = v346;
  sub_29D80F578(v268, v346, MEMORY[0x29EDBC5C0]);
  v274 = *&v423 * 0.5;
  v275 = v273 + *(v373 + 68);
  sub_29D80F578(v268, v275, v272);
  *(v275 + *(sub_29D9388C8() + 20)) = v274;
  sub_29D80F5E0(0);
  v277 = v275 + *(v276 + 36);
  v278 = v424;
  *v277 = v423;
  *(v277 + 16) = v278;
  *(v277 + 32) = v425;
  sub_29D80F674(0);
  v280 = (v275 + *(v279 + 52));
  *v280 = v388;
  v280[1] = v153;
  v280[2] = v154;
  v280[3] = v155;
  v280[4] = v156;
  *(v275 + *(v279 + 56)) = 256;
  v281 = sub_29D9398A8();
  v283 = v282;
  sub_29D80EAB4(v268, MEMORY[0x29EDBC5C0]);
  sub_29D80F724(0);
  v285 = (v275 + *(v284 + 36));
  *v285 = v281;
  v285[1] = v283;
  if (qword_2A17B0DF0 != -1)
  {
    swift_once();
  }

  v286 = KeyPath;
  v287 = sub_29D69C6C0(KeyPath, qword_2A17D10C0);
  (*(v351 + 16))(v350, v287, v286);
  v288 = sub_29D9395E8();
  v289 = sub_29D9390D8();
  v290 = v390;
  sub_29D80E9B4(v273, v390, sub_29D80E528);
  v291 = v290 + *(v374 + 36);
  *v291 = v288;
  *(v291 + 8) = v289;
  v292 = v343;
  sub_29D80A6E4(v343);
  v293 = v397;
  sub_29D80A6E4(v397);
  v294 = v395;
  (v393)(v260, v389, v395);
  LOBYTE(v288) = sub_29D80ED48(v293, v260);
  v162(v260, v294);
  v162(v293, v294);
  v295 = v294;
  if (v288)
  {
    v296 = 0x4041000000000000;
    v297 = v363;
  }

  else
  {
    v298 = (*(v392 + 88))(v292, v294);
    v296 = 0x4040800000000000;
    v297 = v363;
    if (v298 == *MEMORY[0x29EDBC780])
    {
      goto LABEL_52;
    }

    v296 = 0x4040000000000000;
  }

  v162(v292, v295);
LABEL_52:
  v388 = v296;
  sub_29D80A6E4(v297);
  v299 = v397;
  sub_29D80A6E4(v397);
  v300 = v398;
  (v393)(v398, v389, v295);
  v301 = sub_29D80ED48(v299, v300);
  v162(v300, v295);
  v162(v299, v295);
  if (v301)
  {
    v302 = v390;
    v303 = v353;
    v304 = v344;
LABEL_55:
    v162(v363, v295);
    goto LABEL_56;
  }

  v305 = (*(v392 + 88))(v297, v295);
  v302 = v390;
  v303 = v353;
  v304 = v344;
  if (v305 != *MEMORY[0x29EDBC780])
  {
    goto LABEL_55;
  }

LABEL_56:
  sub_29D9398A8();
  sub_29D938718();
  sub_29D683354(v302, v303);
  v306 = (v303 + *(v376 + 36));
  v307 = v427;
  *v306 = v426;
  v306[1] = v307;
  v306[2] = v428;
  v308 = sub_29D9398A8();
  v310 = v309;
  v311 = *(v304 + 36);
  v312 = v295;
  v313 = v348;
  v314 = &v348[v311];
  sub_29D80E9B4(v303, &v348[v311], sub_29D80E4AC);
  sub_29D80E418(0);
  v316 = &v314[*(v315 + 36)];
  *v316 = v308;
  v316[1] = v310;
  sub_29D80FE48(v366, v313);
  v317 = v397;
  sub_29D80A6E4(v397);
  v318 = v398;
  (v393)(v398, v387, v312);
  LOBYTE(v308) = sub_29D80F160(v317, v318);
  v162(v318, v312);
  v162(v317, v312);
  if (v308)
  {
    v319 = 16.0;
  }

  else
  {
    v319 = 8.0;
  }

  v320 = v347;
  v321 = &v347[*(v380 + 36)];
  (v364)(v321 + *(v391 + 20), v367, v365);
  *v321 = v319;
  v321[1] = v319;
  sub_29D7280C0(0);
  *(v321 + *(v322 + 36)) = 256;
  sub_29D80E9B4(v313, v320, sub_29D80E21C);
  v245 = v349;
  sub_29D80E9B4(v320, v349, sub_29D80E150);
  sub_29D80FEAC(v245, v384, sub_29D80E150);
  swift_storeEnumTagMultiPayload();
  sub_29D80FA90(&qword_2A17B59B0, sub_29D80E150, sub_29D80F80C);
  sub_29D80FA90(&qword_2A17B59E8, sub_29D80E73C, sub_29D80FB44);
  v246 = v381;
  sub_29D938DE8();
  v247 = sub_29D80E150;
LABEL_60:
  sub_29D80FD40(v245, v247);
  v323 = v382;
  sub_29D80FEAC(v246, v382, sub_29D80E108);
  v325 = v377;
  v324 = v378;
  *&v399 = v378;
  *(&v399 + 1) = v377;
  v326 = v375;
  LOBYTE(v400) = v375;
  *(&v400 + 1) = *v419;
  DWORD1(v400) = *&v419[3];
  v327 = v379;
  *(&v400 + 1) = v379;
  v403 = v438;
  v404 = v439;
  v405 = v440;
  v328 = v441;
  v406 = v441;
  v401 = v436;
  v402 = v437;
  v329 = v439;
  v330 = v440;
  v331 = v386;
  *(v386 + 64) = v438;
  *(v331 + 80) = v329;
  *(v331 + 96) = v330;
  *(v331 + 112) = v328;
  v332 = v400;
  *v331 = v399;
  *(v331 + 16) = v332;
  v333 = v402;
  *(v331 + 32) = v401;
  *(v331 + 48) = v333;
  sub_29D80DE2C(0);
  sub_29D80FEAC(v323, v331 + *(v334 + 48), sub_29D80E108);
  sub_29D80F578(&v399, &v407, sub_29D80DE9C);
  sub_29D80FD40(v246, sub_29D80E108);
  sub_29D80FD40(v323, sub_29D80E108);
  v407 = v324;
  v408 = v325;
  v409 = v326;
  *v410 = *v419;
  *&v410[3] = *&v419[3];
  v414 = v438;
  v415 = v439;
  v416 = v440;
  v411 = v327;
  v417 = v441;
  v412 = v436;
  v413 = v437;
  return sub_29D80EAB4(&v407, sub_29D80DE9C);
}

uint64_t sub_29D80DA64@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D9391E8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = sub_29D80ACCC();
  v28[4] = v7;
  sub_29D69AB60();
  v8 = sub_29D9392F8();
  v10 = v9;
  v12 = v11;
  sub_29D939218();
  (*(v3 + 104))(v6, *MEMORY[0x29EDBC9B0], v2);
  sub_29D939208();

  (*(v3 + 8))(v6, v2);
  sub_29D939178();
  sub_29D9391D8();

  v13 = sub_29D9392C8();
  v15 = v14;
  v17 = v16;

  sub_29D69ABB4(v8, v10, v12 & 1);

  v18 = [objc_opt_self() secondaryLabelColor];
  sub_29D939528();
  v19 = sub_29D9392A8();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_29D69ABB4(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v23 & 1;
  *(a1 + 24) = v25;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = result;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 65) = 257;
  return result;
}

uint64_t sub_29D80DD1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D80DD64(uint64_t a1)
{
  if (!qword_2A17B5880)
  {
    sub_29D80DDF8(255);
    sub_29D80DD1C(&qword_2A17B5958, sub_29D80DDF8, MEMORY[0x29EDBCC30]);
    v1 = sub_29D939758();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5880);
    }
  }
}

void sub_29D80DE2C(uint64_t a1)
{
  if (!qword_2A17B5890)
  {
    sub_29D80DE9C(255);
    sub_29D80E108(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B5890);
    }
  }
}

void sub_29D80DE9C(uint64_t a1)
{
  if (!qword_2A17B5898)
  {
    sub_29D80DEFC(255);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5898);
    }
  }
}

void sub_29D80DEFC(uint64_t a1)
{
  if (!qword_2A17B58A0)
  {
    v1 = MEMORY[0x29EDBC5E8];
    sub_29D80E8E8(255, &qword_2A17B58A8, sub_29D69A85C, MEMORY[0x29EDBC5E8]);
    sub_29D80FCB4(&qword_2A17B58B0, &qword_2A17B58A8, v1);
    v2 = sub_29D9388F8();
    if (!v3)
    {
      atomic_store(v2, &qword_2A17B58A0);
    }
  }
}

void sub_29D80DFAC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29D80E870(255, a3, a4, MEMORY[0x29EDC9C68]);
    v5 = sub_29D939088();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29D80E018()
{
  result = qword_2A17B58B8;
  if (!qword_2A17B58B8)
  {
    sub_29D69A85C(255);
    sub_29D72B0B8();
    sub_29D80E0B8(&qword_2A17B17F0, &qword_2A17B1678, &qword_2A17B1680, MEMORY[0x29EDC9BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B58B8);
  }

  return result;
}

uint64_t sub_29D80E0B8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D80DFAC(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D80E198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29D80E264(uint64_t a1)
{
  if (!qword_2A17B58D8)
  {
    sub_29D80E198(255, &qword_2A17B58E0, sub_29D80E308, sub_29D80E39C, MEMORY[0x29EDBC558]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B58D8);
    }
  }
}

void sub_29D80E308(uint64_t a1)
{
  if (!qword_2A17B58E8)
  {
    sub_29D80F7B8(255, &qword_2A17B1748, MEMORY[0x29EDBCAF8], MEMORY[0x29EDBC728], MEMORY[0x29EDBC558]);
    sub_29D764858(255);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B58E8);
    }
  }
}

void sub_29D80E39C()
{
  if (!qword_2A17B58F0)
  {
    v0 = sub_29D938F78();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B58F0);
    }
  }
}

void sub_29D80E418(uint64_t a1)
{
  if (!qword_2A17B58F8)
  {
    sub_29D80E4AC(255);
    sub_29D80E5EC(&qword_2A17B5920, sub_29D80E4AC, sub_29D80E670);
    v1 = sub_29D938DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B58F8);
    }
  }
}

void sub_29D80E4AC(uint64_t a1)
{
  if (!qword_2A17B5900)
  {
    sub_29D80EA1C(255, &qword_2A17B5908, sub_29D80E528);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5900);
    }
  }
}

void sub_29D80E528(uint64_t a1)
{
  if (!qword_2A17B5910)
  {
    sub_29D9388D8();
    sub_29D80DD1C(&qword_2A17B5918, MEMORY[0x29EDBC5C0], MEMORY[0x29EDBC5A8]);
    v1 = sub_29D938E88();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5910);
    }
  }
}

uint64_t sub_29D80E5EC(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D80E670()
{
  result = qword_2A17B5928;
  if (!qword_2A17B5928)
  {
    sub_29D80EA1C(255, &qword_2A17B5908, sub_29D80E528);
    sub_29D80DD1C(&qword_2A17B5930, sub_29D80E528, MEMORY[0x29EDBC838]);
    sub_29D7287B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5928);
  }

  return result;
}

void sub_29D80E7CC(uint64_t a1)
{
  if (!qword_2A17B5948)
  {
    sub_29D80E8E8(255, &qword_2A17B5950, sub_29D69A85C, MEMORY[0x29EDBC3E0]);
    sub_29D80DFAC(255, &qword_2A17B2518, &qword_2A17B1730, MEMORY[0x29EDBCA98]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5948);
    }
  }
}

void sub_29D80E870(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D80E8E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29D938838();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D80E94C(uint64_t a1)
{
  if (!qword_2A17B5968)
  {
    sub_29D80DDF8(255);
    v1 = sub_29D938788();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5968);
    }
  }
}

uint64_t sub_29D80E9B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D80EA1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D80F7B8(255, &qword_2A17B2FC8, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8D8]);
    v4 = sub_29D938838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D80EAB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D80EB38(uint64_t a1)
{
  sub_29D72B554(0);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  sub_29D80F578(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), sub_29D72B554);
  return sub_29D938A78();
}

uint64_t sub_29D80EBD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29D9389E8();
  *a1 = result;
  return result;
}

uint64_t sub_29D80EC2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000029D965450 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_29D93AD78();

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

BOOL sub_29D80ED48(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = sub_29D938C58();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v20 - v10;
  v12 = *(v4 + 16);
  v12(&v20 - v10, a1, v3);
  v13 = *(v4 + 88);
  v14 = v13(v11, v3);
  v15 = 0;
  v16 = *MEMORY[0x29EDBC778];
  if (v14 != *MEMORY[0x29EDBC778])
  {
    if (v14 == *MEMORY[0x29EDBC7A8])
    {
      v15 = 1;
      goto LABEL_24;
    }

    if (v14 == *MEMORY[0x29EDBC7B0])
    {
      v15 = 2;
      goto LABEL_24;
    }

    if (v14 == *MEMORY[0x29EDBC7A0])
    {
      goto LABEL_7;
    }

    if (v14 == *MEMORY[0x29EDBC770])
    {
      v15 = 4;
    }

    else if (v14 == *MEMORY[0x29EDBC780])
    {
      v15 = 5;
    }

    else if (v14 == *MEMORY[0x29EDBC758])
    {
      v15 = 6;
    }

    else if (v14 == *MEMORY[0x29EDBC790])
    {
      v15 = 7;
    }

    else if (v14 == *MEMORY[0x29EDBC788])
    {
      v15 = 8;
    }

    else if (v14 == *MEMORY[0x29EDBC798])
    {
      v15 = 9;
    }

    else if (v14 == *MEMORY[0x29EDBC760])
    {
      v15 = 10;
    }

    else
    {
      if (v14 != *MEMORY[0x29EDBC768])
      {
        (*(v4 + 8))(v11, v3);
LABEL_7:
        v15 = 3;
        goto LABEL_24;
      }

      v15 = 11;
    }
  }

LABEL_24:
  v12(v8, v21, v3);
  v17 = v13(v8, v3);
  if (v17 == v16)
  {
    v18 = 0;
  }

  else if (v17 == *MEMORY[0x29EDBC7A8])
  {
    v18 = 1;
  }

  else if (v17 == *MEMORY[0x29EDBC7B0])
  {
    v18 = 2;
  }

  else
  {
    if (v17 != *MEMORY[0x29EDBC7A0])
    {
      if (v17 == *MEMORY[0x29EDBC770])
      {
        v18 = 4;
        return v15 >= v18;
      }

      if (v17 == *MEMORY[0x29EDBC780])
      {
        v18 = 5;
        return v15 >= v18;
      }

      if (v17 == *MEMORY[0x29EDBC758])
      {
        v18 = 6;
        return v15 >= v18;
      }

      if (v17 == *MEMORY[0x29EDBC790])
      {
        v18 = 7;
        return v15 >= v18;
      }

      if (v17 == *MEMORY[0x29EDBC788])
      {
        v18 = 8;
        return v15 >= v18;
      }

      if (v17 == *MEMORY[0x29EDBC798])
      {
        v18 = 9;
        return v15 >= v18;
      }

      if (v17 == *MEMORY[0x29EDBC760])
      {
        v18 = 10;
        return v15 >= v18;
      }

      if (v17 == *MEMORY[0x29EDBC768])
      {
        v18 = 11;
        return v15 >= v18;
      }

      (*(v4 + 8))(v8, v3);
    }

    v18 = 3;
  }

  return v15 >= v18;
}

BOOL sub_29D80F160(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v3 = sub_29D938C58();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v20 - v10;
  v12 = *(v4 + 16);
  v12(&v20 - v10, a2, v3);
  v13 = *(v4 + 88);
  v14 = v13(v11, v3);
  v15 = 0;
  v16 = *MEMORY[0x29EDBC778];
  if (v14 != *MEMORY[0x29EDBC778])
  {
    if (v14 == *MEMORY[0x29EDBC7A8])
    {
      v15 = 1;
      goto LABEL_24;
    }

    if (v14 == *MEMORY[0x29EDBC7B0])
    {
      v15 = 2;
      goto LABEL_24;
    }

    if (v14 == *MEMORY[0x29EDBC7A0])
    {
      goto LABEL_7;
    }

    if (v14 == *MEMORY[0x29EDBC770])
    {
      v15 = 4;
    }

    else if (v14 == *MEMORY[0x29EDBC780])
    {
      v15 = 5;
    }

    else if (v14 == *MEMORY[0x29EDBC758])
    {
      v15 = 6;
    }

    else if (v14 == *MEMORY[0x29EDBC790])
    {
      v15 = 7;
    }

    else if (v14 == *MEMORY[0x29EDBC788])
    {
      v15 = 8;
    }

    else if (v14 == *MEMORY[0x29EDBC798])
    {
      v15 = 9;
    }

    else if (v14 == *MEMORY[0x29EDBC760])
    {
      v15 = 10;
    }

    else
    {
      if (v14 != *MEMORY[0x29EDBC768])
      {
        (*(v4 + 8))(v11, v3);
LABEL_7:
        v15 = 3;
        goto LABEL_24;
      }

      v15 = 11;
    }
  }

LABEL_24:
  v12(v8, v21, v3);
  v17 = v13(v8, v3);
  if (v17 == v16)
  {
    v18 = 0;
  }

  else if (v17 == *MEMORY[0x29EDBC7A8])
  {
    v18 = 1;
  }

  else if (v17 == *MEMORY[0x29EDBC7B0])
  {
    v18 = 2;
  }

  else
  {
    if (v17 != *MEMORY[0x29EDBC7A0])
    {
      if (v17 == *MEMORY[0x29EDBC770])
      {
        v18 = 4;
        return v15 >= v18;
      }

      if (v17 == *MEMORY[0x29EDBC780])
      {
        v18 = 5;
        return v15 >= v18;
      }

      if (v17 == *MEMORY[0x29EDBC758])
      {
        v18 = 6;
        return v15 >= v18;
      }

      if (v17 == *MEMORY[0x29EDBC790])
      {
        v18 = 7;
        return v15 >= v18;
      }

      if (v17 == *MEMORY[0x29EDBC788])
      {
        v18 = 8;
        return v15 >= v18;
      }

      if (v17 == *MEMORY[0x29EDBC798])
      {
        v18 = 9;
        return v15 >= v18;
      }

      if (v17 == *MEMORY[0x29EDBC760])
      {
        v18 = 10;
        return v15 >= v18;
      }

      if (v17 == *MEMORY[0x29EDBC768])
      {
        v18 = 11;
        return v15 >= v18;
      }

      (*(v4 + 8))(v8, v3);
    }

    v18 = 3;
  }

  return v15 >= v18;
}

uint64_t sub_29D80F578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D80F5E0(uint64_t a1)
{
  if (!qword_2A17B5980)
  {
    sub_29D9388C8();
    sub_29D80DD1C(&qword_2A17B5988, MEMORY[0x29EDBC5A0], MEMORY[0x29EDBC598]);
    v1 = sub_29D938768();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5980);
    }
  }
}

void sub_29D80F674(uint64_t a1)
{
  if (!qword_2A17B5990)
  {
    sub_29D80F5E0(255);
    sub_29D80DD1C(&qword_2A17B5998, sub_29D80F5E0, MEMORY[0x29EDBC438]);
    v1 = sub_29D938698();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5990);
    }
  }
}

void sub_29D80F724(uint64_t a1)
{
  if (!qword_2A17B59A0)
  {
    sub_29D80F674(255);
    sub_29D80F7B8(255, &qword_2A17B59A8, MEMORY[0x29EDBCBF8], MEMORY[0x29EDBCBF0], MEMORY[0x29EDBC7D8]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B59A0);
    }
  }
}

void sub_29D80F7B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29D80F80C()
{
  result = qword_2A17B59B8;
  if (!qword_2A17B59B8)
  {
    sub_29D80E21C(255);
    sub_29D80E5EC(&qword_2A17B59C0, sub_29D80E264, sub_29D80F8EC);
    sub_29D80DD1C(&qword_2A17B59E0, sub_29D80E418, MEMORY[0x29EDBC7E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B59B8);
  }

  return result;
}

unint64_t sub_29D80F8EC()
{
  result = qword_2A17B59C8;
  if (!qword_2A17B59C8)
  {
    sub_29D80E198(255, &qword_2A17B58E0, sub_29D80E308, sub_29D80E39C, MEMORY[0x29EDBC558]);
    sub_29D80F9E0();
    sub_29D80DD1C(&qword_2A17B59D8, sub_29D80E39C, MEMORY[0x29EDBC920]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B59C8);
  }

  return result;
}

unint64_t sub_29D80F9E0()
{
  result = qword_2A17B59D0;
  if (!qword_2A17B59D0)
  {
    sub_29D80E308(255);
    sub_29D69D430();
    sub_29D80DD1C(&qword_2A17B4008, sub_29D764858, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B59D0);
  }

  return result;
}

uint64_t sub_29D80FA90(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_29D80DD1C(&qword_2A17B3048, sub_29D7280C0, MEMORY[0x29EDBC3B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D80FB44()
{
  result = qword_2A17B59F0;
  if (!qword_2A17B59F0)
  {
    sub_29D80E784(255);
    sub_29D80FBF4();
    sub_29D80DD1C(&qword_2A17B59E0, sub_29D80E418, MEMORY[0x29EDBC7E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B59F0);
  }

  return result;
}

unint64_t sub_29D80FBF4()
{
  result = qword_2A17B59F8;
  if (!qword_2A17B59F8)
  {
    sub_29D80E7CC(255);
    sub_29D80FCB4(&qword_2A17B5A00, &qword_2A17B5950, MEMORY[0x29EDBC3E0]);
    sub_29D80E0B8(&qword_2A17B5A08, &qword_2A17B2518, &qword_2A17B1730, MEMORY[0x29EDBCA98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B59F8);
  }

  return result;
}

uint64_t sub_29D80FCB4(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D80E8E8(255, a2, sub_29D69A85C, a3);
    sub_29D80E018();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D80FD40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D80FDA0(uint64_t a1, uint64_t a2)
{
  sub_29D80E198(0, &qword_2A17B58E0, sub_29D80E308, sub_29D80E39C, MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D80FE48(uint64_t a1, uint64_t a2)
{
  sub_29D80E264(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D80FEAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29D80FF14()
{
  result = qword_2A17B5A18;
  if (!qword_2A17B5A18)
  {
    sub_29D8100CC(255, &qword_2A17B5A10, sub_29D7EF894, MEMORY[0x29EDC9BA8], MEMORY[0x29EDB9A88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A18);
  }

  return result;
}

uint64_t sub_29D80FFA4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D809ADC(0, a3, a4, MEMORY[0x29EDBC388]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_29D810024()
{
  result = qword_2A17B5A30;
  if (!qword_2A17B5A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A30);
  }

  return result;
}

unint64_t sub_29D810078()
{
  result = qword_2A17B5A38;
  if (!qword_2A17B5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A38);
  }

  return result;
}

void sub_29D8100CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_29D810134()
{
  result = qword_2A17B5A48;
  if (!qword_2A17B5A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A48);
  }

  return result;
}

unint64_t sub_29D810188()
{
  result = qword_2A17B5A50;
  if (!qword_2A17B5A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A50);
  }

  return result;
}

unint64_t sub_29D8101EC()
{
  result = qword_2A17B5A58;
  if (!qword_2A17B5A58)
  {
    sub_29D80EA1C(255, &qword_2A17B5970, sub_29D80E8C0);
    sub_29D810288();
    sub_29D7287B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A58);
  }

  return result;
}

unint64_t sub_29D810288()
{
  result = qword_2A17B5A60;
  if (!qword_2A17B5A60)
  {
    sub_29D80E8C0(255);
    sub_29D80DD1C(&qword_2A17B5A68, sub_29D80DD64, MEMORY[0x29EDBCB58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A60);
  }

  return result;
}

unint64_t sub_29D81033C()
{
  result = qword_2A17B5A70;
  if (!qword_2A17B5A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A70);
  }

  return result;
}

unint64_t sub_29D810394()
{
  result = qword_2A17B5A78;
  if (!qword_2A17B5A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A78);
  }

  return result;
}

unint64_t sub_29D8103EC()
{
  result = qword_2A17B5A80;
  if (!qword_2A17B5A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5A80);
  }

  return result;
}

uint64_t sub_29D810484()
{
  v1 = *v0;
  v2 = sub_29D933A58();
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v42 = qword_2A17D0F20;
  v43 = *algn_2A17D0F18;
  v7 = sub_29D9334A8();
  v40 = v8;
  v41 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  type metadata accessor for HypertensionNotificationsEducationCollectionViewCell(0);
  v10 = sub_29D9350D8();
  v12 = v11;
  sub_29D933A48();
  v13 = sub_29D933A18();
  v15 = v14;
  v44 = *(v46 + 8);
  v46 += 8;
  v44(v6, v45);
  *&v48 = v10;
  *(&v48 + 1) = v12;
  *&v49 = v13;
  *(&v49 + 1) = v15;
  *&v50 = v41;
  *(&v50 + 1) = v40;
  *&v51 = sub_29D8117D0;
  *(&v51 + 1) = v9;
  v16 = sub_29D9334A8();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  v20 = sub_29D9350D8();
  v22 = v21;
  sub_29D933A48();
  v23 = sub_29D933A18();
  v25 = v24;
  v26 = v45;
  v44(v6, v45);
  *&v52 = v20;
  *(&v52 + 1) = v22;
  *&v53 = v23;
  *(&v53 + 1) = v25;
  *&v54 = v16;
  *(&v54 + 1) = v18;
  *&v55 = sub_29D8117D8;
  *(&v55 + 1) = v19;
  sub_29D6AA3B4(0, &qword_2A17B5AB0, &type metadata for HypertensionNotificationsEducationDataSourceItem);
  inited = swift_initStackObject();
  inited[1] = xmmword_29D93F680;
  v28 = v51;
  v29 = v50;
  v30 = v49;
  inited[2] = v48;
  inited[3] = v30;
  inited[4] = v29;
  inited[5] = v28;
  v31 = v53;
  inited[6] = v52;
  inited[7] = v31;
  v32 = v55;
  inited[8] = v54;
  inited[9] = v32;
  sub_29D811944(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29D9359D8();
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D778B5C(&v48, v47);
  sub_29D778B5C(&v52, v47);
  sub_29D775FFC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_29D933A48();
  sub_29D933A18();
  v33 = v44;
  v44(v6, v26);
  sub_29D9359C8();
  v47[0] = 0x3C53447961727241;
  v47[1] = 0xE800000000000000;
  sub_29D933A48();
  v34 = sub_29D933A18();
  v36 = v35;
  v33(v6, v26);
  MEMORY[0x29ED6A240](v34, v36);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  v37 = sub_29D9351C8();
  sub_29D8117E0(&v48);
  sub_29D8117E0(&v52);
  return v37;
}

uint64_t sub_29D810990(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsThingsToKnowViewController(0));
  v5 = sub_29D851E40(0);
  [a1 pushViewController:v5 animated:1];

  v6 = HKLogHeartRateCategory();
  v7 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v8 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v6 healthDataSource:v7];

  type metadata accessor for HypertensionNotificationRoomInteractionEvent();
  v9 = swift_allocObject();
  *(v9 + 16) = 771;
  *(v9 + 18) = 2;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v13[4] = sub_29D811AE4;
  v13[5] = v10;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1107296256;
  v13[2] = sub_29D8E44F0;
  v13[3] = &unk_2A2447270;
  v11 = _Block_copy(v13);

  [v8 submitEvent:v9 completion:v11];
  _Block_release(v11);
}

uint64_t sub_29D810B3C(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsHowTheyWorkViewController());
  v5 = sub_29D708EB0(0);
  [a1 pushViewController:v5 animated:1];

  v6 = HKLogHeartRateCategory();
  v7 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v8 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v6 healthDataSource:v7];

  type metadata accessor for HypertensionNotificationRoomInteractionEvent();
  v9 = swift_allocObject();
  *(v9 + 16) = 772;
  *(v9 + 18) = 2;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v13[4] = sub_29D811810;
  v13[5] = v10;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1107296256;
  v13[2] = sub_29D8E44F0;
  v13[3] = &unk_2A2447220;
  v11 = _Block_copy(v13);

  [v8 submitEvent:v9 completion:v11];
  _Block_release(v11);
}

void sub_29D810CE8(char a1, void *a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v4 = sub_29D937898();
    sub_29D69C6C0(v4, qword_2A1A2C008);
    v5 = a2;
    oslog = sub_29D937878();
    v6 = sub_29D93A288();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v7 = 136446466;
      v10 = sub_29D93AF08();
      v12 = sub_29D6C2364(v10, v11, &v17);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2112;
      if (a2)
      {
        v13 = a2;
        v14 = _swift_stdlib_bridgeErrorToNSError();
        v15 = v14;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      *(v7 + 14) = v14;
      *v8 = v15;
      _os_log_impl(&dword_29D677000, oslog, v6, "[%{public}s] Failed to submit analytics with error: %@", v7, 0x16u);
      sub_29D8119A8(v8, &qword_2A1A21FC0, sub_29D751594);
      MEMORY[0x29ED6BE30](v8, -1, -1);
      sub_29D69417C(v9);
      MEMORY[0x29ED6BE30](v9, -1, -1);
      MEMORY[0x29ED6BE30](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_29D810EFC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D937B88();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v4 = sub_29D934D58();
  sub_29D937B18();
  v5 = sub_29D934D48();
  a1[3] = v4;
  result = sub_29D811A18(&qword_2A17B2C98, MEMORY[0x29EDC1C30], MEMORY[0x29EDC1C20]);
  a1[4] = result;
  *a1 = v5;
  return result;
}

uint64_t sub_29D811154(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D935D08();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CB8();
  v7 = sub_29D935CF8();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_29D8112BC(uint64_t a1)
{
  v2 = sub_29D811A8C();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29D811348(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29D933128();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69F108(a1, v29);
  if (v30)
  {
    sub_29D69F188();
    if (swift_dynamicCast())
    {
      v9 = v25;
      v10 = v26;
      v21 = v28;
      v22 = v27;
      v11 = sub_29D936858();
      v12 = sub_29D939D28();
      [v11 setText_];

      v23 = v9;
      v24 = v10;
      sub_29D935E88();
      sub_29D933118();
      sub_29D69AB60();
      v13 = MEMORY[0x29EDC99B0];
      v14 = sub_29D93A818();
      v16 = v15;
      (*(v5 + 8))(v8, v4);

      sub_29D6AA3B4(0, &qword_2A1A21F18, v13);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_29D93DDB0;
      *(inited + 32) = v14;
      *(inited + 40) = v16;
      static String.hypertensionAccessibilityIdentifier(_:)(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v18 = sub_29D939D28();

      [v2 setAccessibilityIdentifier_];

      return sub_29D694784(v22, v21);
    }
  }

  else
  {
    sub_29D8119A8(v29, &qword_2A17B1830, sub_29D69F188);
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_29D93AA18();
  swift_getObjectType();
  v20 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v20);

  MEMORY[0x29ED6A240](0xD000000000000033, 0x800000029D9655D0);
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

id sub_29D811658(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for HypertensionNotificationsEducationCollectionViewCell(0);
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_29D8116CC(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for HypertensionNotificationsEducationCollectionViewCell(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D811748()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HypertensionNotificationsEducationCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D81182C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D811844(void *a1)
{
  v2 = [a1 navigationController];
  if (v2)
  {
    v3 = *(v1 + 48);
    if (v3)
    {
      v4 = v2;
      v3();
      v2 = v4;
    }
  }

  else
  {
    sub_29D93AA18();
    MEMORY[0x29ED6A240](0xD000000000000030, 0x800000029D94BD80);
    MEMORY[0x29ED6A240](0xD000000000000033, 0x800000029D9655D0);
    sub_29D93AB28();
    __break(1u);
  }
}

void sub_29D811944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8119A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D811944(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D811A18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D811A60(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_29D811A8C()
{
  result = qword_2A17B5AB8;
  if (!qword_2A17B5AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5AB8);
  }

  return result;
}

uint64_t type metadata accessor for HealthCalendarView(uint64_t a1)
{
  result = qword_2A17B5AC0;
  if (!qword_2A17B5AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D811B60(uint64_t a1)
{
  sub_29D814338(319, &qword_2A17B1610, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC390]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HealthCalendarViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_29D814338(319, &qword_2A17B1618, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC390]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29D811C78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36[1] = a1;
  sub_29D812F08(0);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D812F9C(0);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D813510(0);
  v12 = v11 - 8;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D813538(0, &qword_2A17B5B78, sub_29D813510, MEMORY[0x29EDBC5E8]);
  v17 = v16 - 8;
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = v36 - v19;
  sub_29D81359C(0);
  v22 = v21;
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = sub_29D938C78();
  *(v10 + 1) = 0;
  v10[16] = 0;
  sub_29D81427C(0, &qword_2A17B5B88, sub_29D813030, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  sub_29D8120BC(v2, &v10[*(v26 + 44)]);
  sub_29D9398B8();
  sub_29D9388E8();
  sub_29D813680(v10, v15, sub_29D812F9C);
  v27 = &v15[*(v12 + 44)];
  v28 = v42;
  *(v27 + 4) = v41;
  *(v27 + 5) = v28;
  *(v27 + 6) = v43;
  v29 = v38;
  *v27 = v37;
  *(v27 + 1) = v29;
  v30 = v40;
  *(v27 + 2) = v39;
  *(v27 + 3) = v30;
  sub_29D813680(v15, v20, sub_29D813510);
  *&v20[*(v17 + 44)] = 256;
  v31 = sub_29D939588();
  LOBYTE(v15) = sub_29D9390D8();
  sub_29D8136E8(v20, v25);
  v32 = &v25[*(v22 + 36)];
  *v32 = v31;
  v32[8] = v15;
  v33 = *MEMORY[0x29EDBC510];
  v34 = sub_29D938818();
  (*(*(v34 - 8) + 104))(v6, v33, v34);
  sub_29D81416C(&qword_2A17B5B90, MEMORY[0x29EDBC518], MEMORY[0x29EDBC528]);
  result = sub_29D939CF8();
  if (result)
  {
    sub_29D813770();
    sub_29D81416C(&qword_2A17B5BB8, sub_29D812F08, MEMORY[0x29EDC9E78]);
    sub_29D9393E8();
    sub_29D81421C(v6, sub_29D812F08);
    return sub_29D81421C(v25, sub_29D81359C);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29D8120BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a1;
  v84 = a2;
  v2 = type metadata accessor for HealthCalendarView(0);
  v3 = v2 - 8;
  v77[0] = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v77[1] = v5;
  v78 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D813124(0);
  v83 = v6;
  v82 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6, v7);
  v81 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v80 = v77 - v11;
  v12 = type metadata accessor for MonitorHypertensionJournalViewSpecs(0);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HealthCalendarDaysOfWeekRow(0);
  v17 = (v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = (v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D8130FC(0);
  v22 = v21 - 8;
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8130D4(0);
  v27 = v26 - 8;
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v79 = v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v34 = v77 - v33;
  MEMORY[0x2A1C7C4A8](v32, v35);
  v85 = v77 - v36;
  *v20 = swift_getKeyPath();
  v37 = MEMORY[0x29EDBC388];
  sub_29D814338(0, &qword_2A17B5A20, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v38 = v17[7];
  *(v20 + v38) = swift_getKeyPath();
  sub_29D814338(0, &qword_2A17B1600, MEMORY[0x29EDBC7B8], v37);
  swift_storeEnumTagMultiPayload();
  v39 = v17[8];
  *(v20 + v39) = swift_getKeyPath();
  sub_29D814338(0, &qword_2A17B15F8, type metadata accessor for MonitorHypertensionJournalViewSpecs, v37);
  swift_storeEnumTagMultiPayload();
  v40 = v17[9];
  HKUIOnePixel();
  *(v20 + v40) = v41;
  sub_29D9398A8();
  sub_29D9388E8();
  sub_29D813680(v20, v25, type metadata accessor for HealthCalendarDaysOfWeekRow);
  v42 = &v25[*(v22 + 44)];
  v43 = v93;
  *(v42 + 4) = v92;
  *(v42 + 5) = v43;
  *(v42 + 6) = v94;
  v44 = v89;
  *v42 = v88;
  *(v42 + 1) = v44;
  v45 = v91;
  *(v42 + 2) = v90;
  *(v42 + 3) = v45;
  LOBYTE(v40) = sub_29D9390F8();
  v46 = v86;
  sub_29D6998E4(v15);
  sub_29D81421C(v15, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  sub_29D938618();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v25;
  v56 = v85;
  sub_29D813680(v55, v34, sub_29D8130FC);
  v57 = &v34[*(v27 + 44)];
  *v57 = v40;
  v58 = v46;
  *(v57 + 1) = v48;
  *(v57 + 2) = v50;
  *(v57 + 3) = v52;
  *(v57 + 4) = v54;
  v57[40] = 0;
  sub_29D813680(v34, v56, sub_29D8130D4);
  v59 = v46 + *(v3 + 28);
  v60 = type metadata accessor for HealthCalendarViewModel(0);
  v61 = sub_29D8AAB10(*(v59 + *(v60 + 20)));
  v62 = *(sub_29D933BD8() + 16);

  if (v62)
  {
    v63 = sub_29D813A3C(0, v61[2], v62, v61, v62);

    v87 = v63;
    swift_getKeyPath();
    v64 = v58;
    v65 = v78;
    sub_29D8141B4(v64, v78, type metadata accessor for HealthCalendarView);
    v66 = (*(v77[0] + 80) + 16) & ~*(v77[0] + 80);
    v67 = swift_allocObject();
    sub_29D813680(v65, v67 + v66, type metadata accessor for HealthCalendarView);
    sub_29D813260(0);
    sub_29D813538(0, &qword_2A17B5B18, sub_29D813294, MEMORY[0x29EDBC5F8]);
    sub_29D81416C(&qword_2A17B5B58, sub_29D813260, MEMORY[0x29EDC9A80]);
    sub_29D8134A0(&qword_2A17B5B60, sub_29D7EF9D8, sub_29D813438, MEMORY[0x29EDC9A50]);
    sub_29D814018();
    v68 = v80;
    sub_29D9397C8();
    v69 = v79;
    sub_29D8141B4(v56, v79, sub_29D8130D4);
    v70 = v82;
    v71 = *(v82 + 16);
    v72 = v81;
    v73 = v83;
    v71(v81, v68, v83);
    v74 = v84;
    sub_29D8141B4(v69, v84, sub_29D8130D4);
    sub_29D813064(0);
    v71((v74 + *(v75 + 48)), v72, v73);
    v76 = *(v70 + 8);
    v76(v68, v73);
    sub_29D81421C(v56, sub_29D8130D4);
    v76(v72, v73);
    sub_29D81421C(v69, sub_29D8130D4);
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_29D8128FC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[2] = a2;
  v28 = a3;
  v4 = type metadata accessor for MonitorHypertensionJournalViewSpecs(0);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D813294(0);
  v9 = v8 - 8;
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  *v12 = sub_29D938B98();
  *(v12 + 1) = 0;
  v12[16] = 0;
  sub_29D81427C(0, &qword_2A17B5BD8, sub_29D813364, MEMORY[0x29EDBC418], MEMORY[0x29EDBC410]);
  v27[1] = *(v14 + 44);
  *&v29 = v13;
  swift_getKeyPath();
  sub_29D7EF9D8(0);
  type metadata accessor for HealthCalendarDayView(0);
  sub_29D81416C(&qword_2A17B5B38, sub_29D7EF9D8, MEMORY[0x29EDC9A80]);
  sub_29D813438();
  sub_29D81346C();
  sub_29D935E88();
  sub_29D9397C8();
  v15 = sub_29D9390E8();
  sub_29D6998E4(v7);
  sub_29D81421C(v7, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  sub_29D938618();
  v16 = &v12[*(v9 + 44)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  sub_29D9398A8();
  sub_29D9388E8();
  v21 = v28;
  sub_29D813680(v12, v28, sub_29D813294);
  sub_29D813538(0, &qword_2A17B5B18, sub_29D813294, MEMORY[0x29EDBC5F8]);
  v23 = v21 + *(v22 + 36);
  v24 = v34;
  *(v23 + 64) = v33;
  *(v23 + 80) = v24;
  *(v23 + 96) = v35;
  v25 = v30;
  *v23 = v29;
  *(v23 + 16) = v25;
  result = v32;
  *(v23 + 32) = v31;
  *(v23 + 48) = result;
  return result;
}

double sub_29D812BF4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D9376C8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HealthCalendarDayView(0);
  sub_29D8141B4(a1, a2 + v9[7], type metadata accessor for HealthCalendarDayContent);
  *a2 = swift_getKeyPath();
  v10 = MEMORY[0x29EDBC388];
  sub_29D814338(0, &qword_2A17B5A20, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  *(a2 + v9[5]) = swift_getKeyPath();
  sub_29D814338(0, &qword_2A17B1600, MEMORY[0x29EDBC7B8], v10);
  swift_storeEnumTagMultiPayload();
  v11 = v9[6];
  *(a2 + v11) = swift_getKeyPath();
  sub_29D814338(0, &qword_2A17B15F8, type metadata accessor for MonitorHypertensionJournalViewSpecs, v10);
  swift_storeEnumTagMultiPayload();
  v12 = v9[8];
  sub_29D8142E8();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D93F680;
  if (qword_2A17B0DE0 != -1)
  {
    swift_once();
  }

  v14 = sub_29D69C6C0(v4, qword_2A17D1090);
  v15 = *(v5 + 16);
  v15(v8, v14, v4);
  *(v13 + 32) = sub_29D9395E8();
  if (qword_2A17B0DE8 != -1)
  {
    swift_once();
  }

  v16 = a2 + v12;
  v17 = sub_29D69C6C0(v4, qword_2A17D10A8);
  v15(v8, v17, v4);
  *(v13 + 40) = sub_29D9395E8();
  MEMORY[0x29ED69C80](v13);
  sub_29D9387C8();
  result = *&v21;
  v19 = v22;
  *v16 = v21;
  *(v16 + 1) = v19;
  *(v16 + 4) = v23;
  return result;
}

void sub_29D812F08(uint64_t a1)
{
  if (!qword_2A17B5AD0)
  {
    sub_29D938818();
    sub_29D81416C(&qword_2A17B5AD8, MEMORY[0x29EDBC518], MEMORY[0x29EDBC520]);
    v1 = sub_29D93ABC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5AD0);
    }
  }
}

void sub_29D812F9C(uint64_t a1)
{
  if (!qword_2A17B5AE0)
  {
    sub_29D813030(255);
    sub_29D81416C(&qword_2A17B5B68, sub_29D813030, MEMORY[0x29EDBCC30]);
    v1 = sub_29D939758();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5AE0);
    }
  }
}

void sub_29D813064(uint64_t a1)
{
  if (!qword_2A17B5AF0)
  {
    sub_29D8130D4(255);
    sub_29D813124(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B5AF0);
    }
  }
}

void sub_29D813124(uint64_t a1)
{
  if (!qword_2A17B5B08)
  {
    sub_29D813260(255);
    sub_29D7EF9D8(255);
    sub_29D813538(255, &qword_2A17B5B18, sub_29D813294, MEMORY[0x29EDBC5F8]);
    sub_29D81416C(&qword_2A17B5B58, sub_29D813260, MEMORY[0x29EDC9A80]);
    sub_29D8134A0(&qword_2A17B5B60, sub_29D7EF9D8, sub_29D813438, MEMORY[0x29EDC9A50]);
    v1 = sub_29D9397E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5B08);
    }
  }
}

void sub_29D8132BC(uint64_t a1)
{
  if (!qword_2A17B5B28)
  {
    sub_29D813364(255);
    sub_29D8134A0(&qword_2A17B5B48, sub_29D813364, sub_29D81346C, MEMORY[0x29EDBCBA0]);
    v1 = sub_29D939728();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5B28);
    }
  }
}

void sub_29D813364(uint64_t a1)
{
  if (!qword_2A17B5B30)
  {
    sub_29D7EF9D8(255);
    type metadata accessor for HealthCalendarDayContent(255);
    type metadata accessor for HealthCalendarDayView(255);
    sub_29D81416C(&qword_2A17B5B38, sub_29D7EF9D8, MEMORY[0x29EDC9A80]);
    sub_29D813438();
    v1 = sub_29D9397E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5B30);
    }
  }
}

uint64_t sub_29D8134A0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D813538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29D938838();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D81359C(uint64_t a1)
{
  if (!qword_2A17B5B80)
  {
    sub_29D813538(255, &qword_2A17B5B78, sub_29D813510, MEMORY[0x29EDBC5E8]);
    sub_29D813628();
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5B80);
    }
  }
}

void sub_29D813628()
{
  if (!qword_2A17B2FC8)
  {
    v0 = sub_29D938F58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2FC8);
    }
  }
}

uint64_t sub_29D813680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8136E8(uint64_t a1, uint64_t a2)
{
  sub_29D813538(0, &qword_2A17B5B78, sub_29D813510, MEMORY[0x29EDBC5E8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D813770()
{
  result = qword_2A17B5B98;
  if (!qword_2A17B5B98)
  {
    sub_29D81359C(255);
    sub_29D813820();
    sub_29D81416C(&qword_2A17B3040, sub_29D813628, MEMORY[0x29EDBC8E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5B98);
  }

  return result;
}

unint64_t sub_29D813820()
{
  result = qword_2A17B5BA0;
  if (!qword_2A17B5BA0)
  {
    sub_29D813538(255, &qword_2A17B5B78, sub_29D813510, MEMORY[0x29EDBC5E8]);
    sub_29D8138C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5BA0);
  }

  return result;
}

unint64_t sub_29D8138C4()
{
  result = qword_2A17B5BA8;
  if (!qword_2A17B5BA8)
  {
    sub_29D813510(255);
    sub_29D81416C(&qword_2A17B5BB0, sub_29D812F9C, MEMORY[0x29EDBCB58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5BA8);
  }

  return result;
}

uint64_t sub_29D813974(uint64_t a1)
{
  v2 = sub_29D933CE8();
  MEMORY[0x2A1C7C4A8](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29D938AE8();
}

uint64_t sub_29D813A3C(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v43 = MEMORY[0x29EDCA190];
  result = sub_29D7EE868(0, v9, 0);
  v42 = v7;
  if (v9)
  {
    v14 = a4[2];
    v15 = a5;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_71;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_72;
      }

      if (v8 < 0)
      {
        goto LABEL_73;
      }

      if (v14 == v19)
      {
        result = sub_29D935E88();
        v20 = a4;
      }

      else
      {
        v20 = MEMORY[0x29EDCA190];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            sub_29D814338(0, &qword_2A17B1430, type metadata accessor for HealthCalendarDayContent, MEMORY[0x29EDC9E90]);
            v23 = *(type metadata accessor for HealthCalendarDayContent(0) - 8);
            v38 = (*(v23 + 80) + 32) & ~*(v23 + 80);
            v39 = *(v23 + 72);
            v20 = swift_allocObject();
            result = j__malloc_size(v20);
            if (!v39)
            {
              goto LABEL_77;
            }

            if (result - v38 == 0x8000000000000000 && v39 == -1)
            {
              goto LABEL_79;
            }

            v20[2] = v19;
            v20[3] = 2 * ((result - v38) / v39);
          }

          type metadata accessor for HealthCalendarDayContent(0);
          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v22 = *(v43 + 16);
      v21 = *(v43 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_29D7EE868((v21 > 1), v22 + 1, 1);
        v15 = a5;
      }

      *(v43 + 16) = v22 + 1;
      *(v43 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v42;
      if (!v9)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a5;
LABEL_39:
    v25 = v17 <= v7;
    if (a3 > 0)
    {
      v25 = v17 >= v7;
    }

    if (v25)
    {
      return v43;
    }

    v26 = MEMORY[0x29EDCA190];
    while (1)
    {
      v27 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v28 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v29 = a4[2];
      if (v29 < v28)
      {
        v28 = a4[2];
      }

      v30 = v28 - v17;
      if (v28 < v17)
      {
        goto LABEL_75;
      }

      if (v17 < 0)
      {
        goto LABEL_76;
      }

      if (v29 == v30)
      {
        result = sub_29D935E88();
        v31 = a4;
      }

      else
      {
        v31 = v26;
        if (v28 != v17)
        {
          if (v30 < 1)
          {
            v31 = v26;
          }

          else
          {
            sub_29D814338(0, &qword_2A17B1430, type metadata accessor for HealthCalendarDayContent, MEMORY[0x29EDC9E90]);
            v35 = *(type metadata accessor for HealthCalendarDayContent(0) - 8);
            v36 = *(v35 + 72);
            v40 = (*(v35 + 80) + 32) & ~*(v35 + 80);
            v31 = swift_allocObject();
            result = j__malloc_size(v31);
            if (!v36)
            {
              goto LABEL_78;
            }

            if (result - v40 == 0x8000000000000000 && v36 == -1)
            {
              goto LABEL_80;
            }

            v31[2] = v30;
            v31[3] = 2 * ((result - v40) / v36);
          }

          type metadata accessor for HealthCalendarDayContent(0);
          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v33 = *(v43 + 16);
      v32 = *(v43 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_29D7EE868((v32 > 1), v33 + 1, 1);
        v15 = a5;
      }

      *(v43 + 16) = v33 + 1;
      *(v43 + 8 * v33 + 32) = v31;
      v34 = v27 <= v42;
      if (a3 > 0)
      {
        v34 = v27 >= v42;
      }

      v17 = v27;
      if (v34)
      {
        return v43;
      }
    }
  }

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
  return result;
}

double sub_29D813F98@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HealthCalendarView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  *&result = sub_29D8128FC(a1, v6, a2).n128_u64[0];
  return result;
}

unint64_t sub_29D814018()
{
  result = qword_2A17B5BC0;
  if (!qword_2A17B5BC0)
  {
    sub_29D813538(255, &qword_2A17B5B18, sub_29D813294, MEMORY[0x29EDBC5F8]);
    sub_29D8140BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5BC0);
  }

  return result;
}

unint64_t sub_29D8140BC()
{
  result = qword_2A17B5BC8;
  if (!qword_2A17B5BC8)
  {
    sub_29D813294(255);
    sub_29D81416C(&qword_2A17B5BD0, sub_29D8132BC, MEMORY[0x29EDBCB30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5BC8);
  }

  return result;
}

uint64_t sub_29D81416C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D8141B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D81421C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D81427C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_29D938788();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D8142E8()
{
  if (!qword_2A17B5BE0)
  {
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5BE0);
    }
  }
}

void sub_29D814338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for BloodPressureJournalCreationBestPracticesViewController(uint64_t a1)
{
  result = qword_2A17B5C00;
  if (!qword_2A17B5C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D814444(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for BloodPressureJournalCreationBestPracticesViewController(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_29D7B7874(6, 3);
}

id sub_29D8144B0()
{
  v1 = sub_29D9339F8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7B7874(6, 0);
  v6 = *&v0[qword_2A17B5BE8];
  if (v6)
  {
    swift_unknownObjectRetain();
    sub_29D9339E8();
    sub_29D81D22C(v5);
    (*(v2 + 8))(v5, v1);
    sub_29D8BA670(v0, v6);
    return sub_29D936978();
  }

  else
  {

    return [v0 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_29D814610()
{
  sub_29D936978();
}

id sub_29D814660()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalCreationBestPracticesViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D814698(uint64_t a1)
{
  sub_29D936978();
}

uint64_t sub_29D8146FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B5BE8);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D814718()
{
  v0 = MEMORY[0x29EDC9C68];
  sub_29D8196C0(0, &qword_2A17B3428, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v13 - v3;
  sub_29D8196C0(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18], v0);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v13 - v7;
  v9 = sub_29D933318();
  sub_29D6FD494(v9, qword_2A17D0BC0);
  sub_29D69C6C0(v9, qword_2A17D0BC0);
  sub_29D933C88();
  v10 = sub_29D933CE8();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = sub_29D933D38();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  return sub_29D933308();
}

uint64_t sub_29D814958()
{
  v0 = MEMORY[0x29EDC9C68];
  sub_29D8196C0(0, &qword_2A17B3428, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v13 - v3;
  sub_29D8196C0(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18], v0);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v13 - v7;
  v9 = sub_29D933318();
  sub_29D6FD494(v9, qword_2A17D0BD8);
  sub_29D69C6C0(v9, qword_2A17D0BD8);
  sub_29D933C88();
  v10 = sub_29D933CE8();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = sub_29D933D38();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  return sub_29D933308();
}

BOOL sub_29D814B98()
{
  v1 = v0;
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemState(0);
  MEMORY[0x2A1C7C4A8](updated, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D81A1B4(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 1;
    }

    (*(v3 + 32))(v6, v10, v2);
    if (qword_2A17B0C68 != -1)
    {
      swift_once();
    }

    v12 = qword_2A17D0BD8;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    if (qword_2A17B0C60 != -1)
    {
      swift_once();
    }

    v12 = qword_2A17D0BC0;
  }

  v13 = sub_29D933318();
  v14 = sub_29D69C6C0(v13, v12);
  v15 = sub_29D818D18(v6, v14);
  (*(v3 + 8))(v6, v2);
  return v15;
}

uint64_t sub_29D814DAC()
{
  v1 = v0;
  v2 = *v0;
  sub_29D81979C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v2;
  v10 = MEMORY[0x29EDB89F8];
  sub_29D8198A8(0, &qword_2A1A24AB8, MEMORY[0x29EDB89F8]);
  sub_29D819920(&qword_2A1A24AC0, &qword_2A1A24AB8, v10, MEMORY[0x29EDB8A00]);

  sub_29D938378();
  sub_29D819858(&qword_2A1A24A10, sub_29D81979C, MEMORY[0x29EDB8AE8]);
  v11 = sub_29D938418();
  (*(v5 + 8))(v8, v4);
  return v11;
}

uint64_t sub_29D814F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = MEMORY[0x29EDB8AD0];
  sub_29D8198A8(0, &qword_2A1A24A28, MEMORY[0x29EDB8AD0]);
  swift_allocObject();

  sub_29D938368();
  sub_29D819920(&qword_2A1A24A30, &qword_2A1A24A28, v7, MEMORY[0x29EDB8AD8]);
  v8 = sub_29D938418();

  *a3 = v8;
  return result;
}

void sub_29D8150A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = [objc_opt_self() heartRhythmDefaultsDomainWithHealthStore_];
  v9 = sub_29D939D28();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a4;
  v12[4] = sub_29D819964;
  v12[5] = v10;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29D815944;
  v12[3] = &unk_2A2447438;
  v11 = _Block_copy(v12);

  [v8 dateForKey:v9 completion:v11];
  _Block_release(v11);
}

uint64_t sub_29D8151E4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, void *a6)
{
  v88 = a5;
  v89 = a4;
  sub_29D8198A8(0, &unk_2A1A24820, MEMORY[0x29EDCA058]);
  v11 = v10;
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = (&v76 - v13);
  v15 = sub_29D9339F8();
  v84 = *(v15 - 8);
  v85 = v15;
  MEMORY[0x2A1C7C4A8](v15, v16);
  v80 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8196C0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v86 = v18;
  v20 = MEMORY[0x2A1C7C4A8](v18, v19);
  v82 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v25 = &v76 - v24;
  MEMORY[0x2A1C7C4A8](v23, v26);
  v28 = &v76 - v27;
  v29 = sub_29D937898();
  v90 = *(v29 - 8);
  v91 = v29;
  v31 = MEMORY[0x2A1C7C4A8](v29, v30);
  v87 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v35 = &v76 - v34;
  sub_29D934D28();
  v83 = a1;
  sub_29D6A0A20(a1, v28);
  v36 = sub_29D937878();
  v37 = sub_29D93A2A8();
  v38 = os_log_type_enabled(v36, v37);
  v81 = a6;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v79 = a2;
    v40 = v39;
    v77 = swift_slowAlloc();
    v92 = v77;
    v93 = a6;
    *v40 = 136446466;
    swift_getMetatypeMetadata();
    v41 = sub_29D939DA8();
    v78 = a3;
    v43 = v14;
    v44 = sub_29D6C2364(v41, v42, &v92);

    *(v40 + 4) = v44;
    v14 = v43;
    *(v40 + 12) = 2082;
    sub_29D6A0A20(v28, v25);
    v45 = sub_29D939DA8();
    v47 = v46;
    sub_29D819E6C(v28, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    v48 = sub_29D6C2364(v45, v47, &v92);

    *(v40 + 14) = v48;
    a3 = v78;
    _os_log_impl(&dword_29D677000, v36, v37, "[%{public}s] Received date of: %{public}s", v40, 0x16u);
    v49 = v77;
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v49, -1, -1);
    v50 = v40;
    a2 = v79;
    MEMORY[0x29ED6BE30](v50, -1, -1);
  }

  else
  {

    sub_29D819E6C(v28, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  }

  v51 = v91;
  v52 = *(v90 + 8);
  v52(v35, v91);
  v53 = v87;
  if (a2)
  {
    v54 = a2;
    sub_29D934D28();
    v55 = a2;

    v56 = sub_29D937878();
    v57 = sub_29D93A288();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v92 = v59;
      *v58 = 136446722;
      v93 = v81;
      swift_getMetatypeMetadata();
      v60 = sub_29D939DA8();
      v86 = v11;
      v62 = sub_29D6C2364(v60, v61, &v92);
      v85 = v14;
      v63 = v62;

      *(v58 + 4) = v63;
      *(v58 + 12) = 2082;
      *(v58 + 14) = sub_29D6C2364(*(a3 + 16), *(a3 + 24), &v92);
      *(v58 + 22) = 2082;
      v93 = a2;
      v64 = a2;
      sub_29D6A0CD0();
      v65 = sub_29D939DA8();
      v67 = sub_29D6C2364(v65, v66, &v92);

      *(v58 + 24) = v67;
      v14 = v85;
      _os_log_impl(&dword_29D677000, v56, v57, "[%{public}s] Failed to access the key %{public}s with error: %{public}s", v58, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v59, -1, -1);
      MEMORY[0x29ED6BE30](v58, -1, -1);

      v68 = v91;
      v69 = v53;
    }

    else
    {

      v69 = v53;
      v68 = v51;
    }

    v52(v69, v68);
    *v14 = a2;
    swift_storeEnumTagMultiPayload();
    v73 = a2;
    v89(v14);
  }

  else
  {
    v70 = v82;
    sub_29D6A0A20(v83, v82);
    v72 = v84;
    v71 = v85;
    if ((*(v84 + 48))(v70, 1, v85) != 1)
    {
      v75 = v80;
      (*(v72 + 32))(v80, v70, v71);
      (*(a3 + 40))(v75);
      swift_storeEnumTagMultiPayload();
      v89(v14);
      sub_29D819988(v14);
      return (*(v72 + 8))(v75, v71);
    }

    sub_29D819E6C(v70, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemState(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v89(v14);
  }

  return sub_29D819988(v14);
}

uint64_t sub_29D815944(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29D8196C0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 32);
  if (a2)
  {
    sub_29D933998();
    v11 = sub_29D9339F8();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = sub_29D9339F8();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v13 = a3;
  v10(v9, a3);

  return sub_29D819E6C(v9, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
}

uint64_t sub_29D815AC8(uint64_t a1)
{
  v2 = v1;
  v63[1] = *MEMORY[0x29EDCA608];
  v58 = *v1;
  v4 = sub_29D937898();
  v60 = *(v4 - 8);
  v61 = v4;
  v6 = MEMORY[0x2A1C7C4A8](v4, v5);
  v59 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v57 - v9;
  sub_29D8196C0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v57[1] = v11;
  v13 = MEMORY[0x2A1C7C4A8](v11, v12);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v19 = v57 - v18;
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = v57 - v21;
  v23 = [objc_opt_self() heartRhythmDefaultsDomainWithHealthStore_];
  sub_29D6A0A20(a1, v22);
  v24 = sub_29D9339F8();
  v25 = *(v24 - 8);
  v26 = 0;
  if ((*(v25 + 48))(v22, 1, v24) != 1)
  {
    v26 = sub_29D933958();
    (*(v25 + 8))(v22, v24);
  }

  v27 = sub_29D939D28();
  v62 = 0;
  v28 = [v23 setDate:v26 forKey:v27 error:&v62];

  if (v28)
  {
    v29 = v62;
    sub_29D934D28();
    sub_29D6A0A20(a1, v19);
    v30 = sub_29D937878();
    v31 = sub_29D93A2A8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v63[0] = v33;
      *v32 = 136446466;
      v62 = v58;
      swift_getMetatypeMetadata();
      v34 = sub_29D939DA8();
      v36 = sub_29D6C2364(v34, v35, v63);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      sub_29D6A0A20(v19, v15);
      v37 = sub_29D939DA8();
      v39 = v38;
      sub_29D819E6C(v19, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
      v40 = sub_29D6C2364(v37, v39, v63);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_29D677000, v30, v31, "[%{public}s]: Successfully saved date of %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v33, -1, -1);
      MEMORY[0x29ED6BE30](v32, -1, -1);
    }

    else
    {

      sub_29D819E6C(v19, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    }

    return (*(v60 + 8))(v10, v61);
  }

  else
  {
    v41 = v62;
    v42 = sub_29D933598();

    swift_willThrow();
    v43 = v59;
    sub_29D934D28();
    v44 = v42;
    v45 = sub_29D937878();
    v46 = sub_29D93A288();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v63[0] = v48;
      *v47 = 136446466;
      v62 = v58;
      swift_getMetatypeMetadata();
      v49 = sub_29D939DA8();
      v51 = sub_29D6C2364(v49, v50, v63);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      v62 = v42;
      v52 = v42;
      sub_29D6A0CD0();
      v53 = sub_29D939DA8();
      v55 = sub_29D6C2364(v53, v54, v63);

      *(v47 + 14) = v55;
      _os_log_impl(&dword_29D677000, v45, v46, "[%{public}s]: Failed to save date with error: %{public}s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v48, -1, -1);
      MEMORY[0x29ED6BE30](v47, -1, -1);
    }

    else
    {
    }

    return (*(v60 + 8))(v43, v61);
  }
}