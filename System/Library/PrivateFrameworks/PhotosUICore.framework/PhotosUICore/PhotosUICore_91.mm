unint64_t sub_1A47D1928(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_1A47D193C()
{
  result = qword_1EB142790;
  if (!qword_1EB142790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142790);
  }

  return result;
}

unint64_t sub_1A47D1994()
{
  result = qword_1EB142798;
  if (!qword_1EB142798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142798);
  }

  return result;
}

unint64_t sub_1A47D19EC()
{
  result = qword_1EB1427A0;
  if (!qword_1EB1427A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1427A0);
  }

  return result;
}

uint64_t sub_1A47D1A40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A47D1A60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CloudQuotaNotificationItemAdditionalInformation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 11))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 9);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudQuotaNotificationItemAdditionalInformation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1A47D1B98(double a1)
{
  v1 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v1, qword_1EB1D40E8);
  __swift_project_value_buffer(v1, qword_1EB1D40E8);
  return sub_1A5240B94();
}

uint64_t static RevealAssetsIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1D40E0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1D40E8);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t static RevealAssetsIntent.title.setter(uint64_t a1, double a2)
{
  if (qword_1EB1D40E0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1D40E8);
  swift_beginAccess();
  v5 = *(v3 - 8);
  (*(v5 + 24))(v4, a1, v3);
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t (*static RevealAssetsIntent.title.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_1EB1D40E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  __swift_project_value_buffer(v2, qword_1EB1D40E8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A47D1E44@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1D40E0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1D40E8);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A47D1F04(uint64_t a1, double a2)
{
  if (qword_1EB1D40E0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1D40E8);
  swift_beginAccess();
  (*(*(v3 - 8) + 24))(v4, a1, v3);
  return swift_endAccess();
}

uint64_t RevealAssetsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v31 = a1;
  v32 = sub_1A5240334();
  v1 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4120C34(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24[-v8];
  sub_1A4120C34(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24[-v11];
  sub_1A3F57E84(0);
  v28 = v13;
  v14 = sub_1A5240BB4();
  v15 = *(v14 - 8);
  v29 = *(v15 + 56);
  v30 = v15 + 56;
  v29(v12, 1, 1, v14);
  v34 = 0;
  v16 = sub_1A523FDB4();
  v17 = *(*(v16 - 8) + 56);
  v17(v9, 1, 1, v16);
  v17(v6, 1, 1, v16);
  v25 = *MEMORY[0x1E695A500];
  v18 = *(v1 + 104);
  v26 = v1 + 104;
  v27 = v18;
  v18(v3);
  sub_1A3F58824();
  v19 = v3;
  v20 = sub_1A523FF94();
  v21 = v31;
  *v31 = v20;
  sub_1A47D23AC(0);
  v28 = v22;
  v29(v12, 1, 1, v14);
  v33 = 30;
  v17(v9, 1, 1, v16);
  v17(v6, 1, 1, v16);
  v27(v19, v25, v32);
  sub_1A420E65C();
  sub_1A524E414();
  sub_1A420E5AC();
  result = sub_1A523FF74();
  v21[1] = result;
  return result;
}

void sub_1A47D235C()
{
  if (!qword_1EB12EEB8)
  {
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EEB8);
    }
  }
}

void sub_1A47D23AC(uint64_t a1)
{
  if (!qword_1EB1427A8)
  {
    sub_1A420E4B0();
    v1 = sub_1A5240044();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1427A8);
    }
  }
}

uint64_t sub_1A47D2408@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v35 = a2;
  v33 = a3;
  v34 = a1;
  v36 = sub_1A5240334();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4120C34(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25[-v10];
  sub_1A4120C34(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25[-v13];
  sub_1A3F57E84(0);
  v32 = v15;
  v16 = sub_1A5240BB4();
  v17 = *(v16 - 8);
  v30 = *(v17 + 56);
  v31 = v17 + 56;
  v30(v14, 1, 1, v16);
  v38 = 0;
  v18 = sub_1A523FDB4();
  v19 = *(*(v18 - 8) + 56);
  v19(v11, 1, 1, v18);
  v19(v8, 1, 1, v18);
  v26 = *MEMORY[0x1E695A500];
  v20 = *(v3 + 104);
  v27 = v3 + 104;
  v28 = v20;
  v20(v5);
  sub_1A3F58824();
  v21 = v5;
  v32 = sub_1A523FF94();
  v22 = v33;
  *v33 = v32;
  sub_1A47D23AC(0);
  v29 = v23;
  v30(v14, 1, 1, v16);
  v37 = 30;
  v19(v11, 1, 1, v18);
  v19(v8, 1, 1, v18);
  v28(v21, v26, v36);
  sub_1A420E65C();
  sub_1A524E414();
  sub_1A420E5AC();
  v22[1] = sub_1A523FF74();
  v38 = v34;
  sub_1A523FF54();
  LOBYTE(v38) = v35;
  return sub_1A523FF54();
}

uint64_t RevealAssetsIntent.perform()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = *v1;
  sub_1A524CC54();
  *(v2 + 56) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 64) = v4;
  *(v2 + 72) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A47D2864, v4, v3);
}

uint64_t sub_1A47D2864()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  sub_1A454AE30();
  *v4 = v0;
  v4[1] = sub_1A47D2970;
  v5 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v5, 0, 0, 0, 0, 0, 1, &unk_1A5361C28);
}

uint64_t sub_1A47D2970()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A3DDDA50;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A3DED3D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A47D2A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[71] = a3;
  v3[70] = a2;
  v3[69] = a1;
  sub_1A524CC54();
  v3[72] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[73] = v5;
  v3[74] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A47D2B30, v5, v4);
}

void sub_1A47D2B30()
{
  sub_1A523FF44();
  v1 = *(*(v0 + 536) + 16);

  if (v1 == 1)
  {
    sub_1A523FF44();
    v2 = *(v0 + 544);
    if (*(v2 + 16))
    {
      v3 = *(v2 + 32);
      v4 = *(v2 + 64);
      *(v0 + 32) = *(v2 + 48);
      *(v0 + 48) = v4;
      *(v0 + 16) = v3;
      v5 = *(v2 + 80);
      v6 = *(v2 + 96);
      v7 = *(v2 + 112);
      *(v0 + 112) = *(v2 + 128);
      *(v0 + 80) = v6;
      *(v0 + 96) = v7;
      *(v0 + 64) = v5;
      sub_1A3F67450(v0 + 16, v0 + 120);

      v8 = *(v0 + 96);
      *(v0 + 288) = *(v0 + 80);
      *(v0 + 304) = v8;
      *(v0 + 320) = *(v0 + 112);
      v9 = *(v0 + 32);
      *(v0 + 224) = *(v0 + 16);
      *(v0 + 240) = v9;
      v10 = *(v0 + 64);
      *(v0 + 256) = *(v0 + 48);
      *(v0 + 272) = v10;
      v11 = swift_task_alloc();
      *(v0 + 600) = v11;
      *v11 = v0;
      v11[1] = sub_1A47D2CE4;

      sub_1A3F660E4(v0 + 224);
    }

    else
    {

      __break(1u);
    }
  }

  else
  {
    sub_1A523FF44();
    v12 = *(v0 + 632);
    v13 = swift_task_alloc();
    *(v0 + 616) = v13;
    *v13 = v0;
    v13[1] = sub_1A47D2EC4;

    sub_1A494D63C(v12);
  }
}

uint64_t sub_1A47D2CE4()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 256);
    *(v2 + 344) = *(v2 + 240);
    *(v2 + 360) = v4;
    *(v2 + 328) = v3;
    v5 = *(v2 + 272);
    v6 = *(v2 + 288);
    v7 = *(v2 + 304);
    *(v2 + 424) = *(v2 + 320);
    *(v2 + 392) = v6;
    *(v2 + 408) = v7;
    *(v2 + 376) = v5;
    sub_1A3F678A8(v2 + 328);
    v8 = *(v2 + 592);
    v9 = *(v2 + 584);
    v10 = sub_1A47D3000;
  }

  else
  {
    v11 = *(v2 + 240);
    *(v2 + 432) = *(v2 + 224);
    *(v2 + 448) = v11;
    v12 = *(v2 + 256);
    v13 = *(v2 + 272);
    v14 = *(v2 + 288);
    v15 = *(v2 + 304);
    *(v2 + 528) = *(v2 + 320);
    *(v2 + 496) = v14;
    *(v2 + 512) = v15;
    *(v2 + 464) = v12;
    *(v2 + 480) = v13;
    sub_1A3F678A8(v2 + 432);
    v8 = *(v2 + 592);
    v9 = *(v2 + 584);
    v10 = sub_1A47D2E58;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1A47D2E58()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47D2EC4()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  v3 = *(v2 + 592);
  v4 = *(v2 + 584);
  if (v0)
  {
    v5 = sub_1A47D3064;
  }

  else
  {
    v5 = sub_1A47D2E58;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A47D3000()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47D3064()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47D30C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3CA8098;

  return sub_1A47D2A8C(a1, v5, v4);
}

unint64_t sub_1A47D3178()
{
  result = qword_1EB1427B0;
  if (!qword_1EB1427B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1427B0);
  }

  return result;
}

unint64_t sub_1A47D31D0()
{
  result = qword_1EB1427B8;
  if (!qword_1EB1427B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1427B8);
  }

  return result;
}

uint64_t sub_1A47D3278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 32) = a1;
  *(v4 + 56) = *v3;
  sub_1A524CC54();
  *(v4 + 72) = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  *(v4 + 80) = v6;
  *(v4 + 88) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A47D331C, v6, v5);
}

uint64_t sub_1A47D331C()
{
  v2 = v0[7];
  v1 = v0[8];
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1A47D341C;
  v5 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v5, 0, 0, 0, 0, 0, 1, &unk_1A5361D58);
}

uint64_t sub_1A47D341C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1A47D3538;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1A47CCDD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A47D3538()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47D35AC(uint64_t a1)
{
  v2 = sub_1A454AE30();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A47D35F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A47D2A8C(a1, v5, v4);
}

uint64_t sub_1A47D36A4@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v38 = type metadata accessor for LemonadePlaceholderView(0);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47DC7D0(0, &qword_1EB127F50, type metadata accessor for LemonadeShelfPlaceholderView, type metadata accessor for LemonadePlaceholderView, MEMORY[0x1E697F948]);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v37 = type metadata accessor for LemonadeShelfPlaceholderView(0);
  v10 = MEMORY[0x1EEE9AC00](v37);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 isCloudPhotoLibraryEnabled];
  v13 = sub_1A524C634();
  v14 = PXLemonadeLocalizedString(v13);

  v35 = sub_1A524C674();
  v16 = v15;

  v17 = sub_1A524C634();

  v18 = PXLemonadeLocalizedString(v17);

  v19 = sub_1A524C674();
  v21 = v20;

  v22 = a1;
  if (a2)
  {
    v23 = sub_1A3C5A374();
    v24 = sub_1A3C5A374();
    v25 = sub_1A3C5A374();
    v26 = sub_1A3C5A374();
    v27 = sub_1A3C5A374();
    sub_1A425463C(v22, v23 & 1, v24 & 1, v25 & 1, v26 & 1, v27 & 1, 0x69662E6B636F6C63, 0xEA00000000006C6CLL, v12, v35, v16, v19, v21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    sub_1A47D3B7C(v12, v9, type metadata accessor for LemonadeShelfPlaceholderView);
    swift_storeEnumTagMultiPayload();
    sub_1A47DCB5C(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView, &unk_1A53287E8);
    sub_1A47DCB5C(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView, &unk_1A5352A50);
    sub_1A5249744();
    v28 = type metadata accessor for LemonadeShelfPlaceholderView;
    v29 = v12;
  }

  else
  {
    v30 = sub_1A3C5A374();
    v31 = sub_1A3C5A374();
    v32 = sub_1A3C5A374();
    sub_1A463DB54(v22, v30 & 1, v31 & 1, v32 & 1, 0x69662E6B636F6C63, 0xEA00000000006C6CLL, v35, v16, v6, v19, v21, 0, 0, 0, 0, 0, 0, 0, 0);
    sub_1A47D3B7C(v6, v9, type metadata accessor for LemonadePlaceholderView);
    swift_storeEnumTagMultiPayload();
    sub_1A47DCB5C(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView, &unk_1A53287E8);
    sub_1A47DCB5C(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView, &unk_1A5352A50);
    sub_1A5249744();
    v28 = type metadata accessor for LemonadePlaceholderView;
    v29 = v6;
  }

  return sub_1A47DC954(v29, v28);
}

uint64_t sub_1A47D3B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A47D3BE4(unsigned int a2@<W1>, uint64_t a4@<X8>)
{
  v13 = a2;
  v14 = a4;
  sub_1A47DCAA4(0, &qword_1EB1292D0, MEMORY[0x1E69C1D98], MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1A47D4188(0, v5);
  v12[2] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v12[0] = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40F354C(0);
  MEMORY[0x1EEE9AC00](v8);
  v12[3] = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v11 = [swift_getObjCClassFromMetadata() sharedInstance];
  sub_1A5242E34();
  sub_1A5245A14();
}

void sub_1A47D41D0(uint64_t a1)
{
  if (!qword_1EB124CB8)
  {
    sub_1A40F3434(255);
    sub_1A47DC7D0(255, &qword_1EB122AA0, sub_1A47D43C0, MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
    sub_1A5243594();
    sub_1A47DCB5C(&qword_1EB124EC8, sub_1A40F3434, MEMORY[0x1E69C22E0]);
    sub_1A47DCB5C(&qword_1EB124EC0, sub_1A40F3434, MEMORY[0x1E69C22B8]);
    sub_1A47D44A8(v1);
    sub_1A47DCB5C(&qword_1EB129098, MEMORY[0x1E69C2520], MEMORY[0x1E69C2518]);
    v2 = sub_1A52440B4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB124CB8);
    }
  }
}

void sub_1A47D4358(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A47D43C0(uint64_t a1)
{
  if (!qword_1EB124DA0)
  {
    sub_1A40F3434(255);
    sub_1A47DCB5C(&qword_1EB124EC8, sub_1A40F3434, MEMORY[0x1E69C22E0]);
    sub_1A47DCB5C(&qword_1EB124EC0, sub_1A40F3434, MEMORY[0x1E69C22B8]);
    v1 = sub_1A5243394();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124DA0);
    }
  }
}

unint64_t sub_1A47D44A8(double a1)
{
  result = qword_1EB122AA8;
  if (!qword_1EB122AA8)
  {
    sub_1A47DC7D0(255, &qword_1EB122AA0, sub_1A47D43C0, MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
    sub_1A47DCB5C(&qword_1EB124DA8, sub_1A47D43C0, MEMORY[0x1E69C2448]);
    sub_1A47DCB5C(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122AA8);
  }

  return result;
}

unint64_t sub_1A47D45CC(double a1)
{
  result = qword_1EB1242C0;
  if (!qword_1EB1242C0)
  {
    sub_1A47D4188(255, a1);
    sub_1A47DCB5C(&qword_1EB124CC0, sub_1A47D41D0, MEMORY[0x1E69C2970]);
    sub_1A47DCB5C(&qword_1EB1279C8, sub_1A4178698, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1242C0);
  }

  return result;
}

double sub_1A47D46B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3C38BD4(0xD00000000000001ELL);
  v6 = v5;
  v7 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
  v9 = v8;
  sub_1A47DCAA4(0, &qword_1EB126230, MEMORY[0x1E69C12C8], MEMORY[0x1E69E6F90]);
  v10 = sub_1A5244EE4();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A52F8E10;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x1E69C12A8], v10);
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 32) = v13;
  *(a2 + 40) = v7;
  *(a2 + 48) = v9;
  type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

void sub_1A47D485C(uint64_t a1@<X8>)
{
  sub_1A47DCAA4(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {
    v8 = sub_1A3C5A374();

    sub_1A42E7F0C(0, 1, v8, a1);
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
    v9 = [swift_getObjCClassFromMetadata() sharedInstance];
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v25 = v9;
    v23 = sub_1A3C47918();
    v12 = v11;
    v13 = sub_1A3C47918();
    v15 = v14;
    v16 = sub_1A3C52D68();
    v24 = a1;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = sub_1A3C4ED50(v16);
    v26 = 1;
    *v7 = sub_1A47D4C0C;
    *(v7 + 1) = v10;
    v7[16] = 2;
    *(v7 + 3) = 0;
    v7[32] = 1;
    *(v7 + 5) = v23;
    *(v7 + 6) = v12;
    *(v7 + 7) = v13;
    *(v7 + 8) = v15;
    *(v7 + 9) = v17;
    *(v7 + 10) = v19;
    v7[88] = v21;
    v7[89] = v22;
    swift_storeEnumTagMultiPayload();
    sub_1A3C4ED54(v4);
    sub_1A3C52D78(v7, 0, v4, v24);
  }
}

uint64_t sub_1A47D4AAC(uint64_t a1, void *a2)
{
  v4 = sub_1A5242D14();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69C21F8])
  {
    return 11;
  }

  if (v9 == *MEMORY[0x1E69C2210])
  {
    return 4;
  }

  if ([a2 enableEventsCellCollageStyle])
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  (*(v5 + 8))(v8, v4);
  return v11;
}

void sub_1A47D4C14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5244EE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v37 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v37 - v14;
  v15 = objc_opt_self();
  v16 = sub_1A524CA14();
  v17 = sub_1A524C634();
  v44 = a1;
  v41 = [v15 transientCollectionListWithCollections:v16 title:v17 identifier:0 photoLibrary:a1];

  v45 = a2;
  v38 = *(a2 + 24);
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v43 = [swift_getObjCClassFromMetadata() sharedInstance];
  v18 = *(v7 + 104);
  v18(v11, *MEMORY[0x1E69C12B0], v6);
  sub_1A47DCB5C(&qword_1EB128F98, MEMORY[0x1E69C12C8], MEMORY[0x1E69C12E0]);
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v50[0] == v58[0])
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_1A524EAB4();
  }

  v20 = *(v7 + 8);
  v40 = v7 + 8;
  v39 = v20;
  v20(v11, v6);

  if (v19)
  {
    sub_1A5244824();
    v21 = sub_1A5244814();
    v18(v46, *MEMORY[0x1E69C12A8], v6);
  }

  else
  {
    (*(v7 + 16))(v46, a3, v6);
    v21 = 0;
  }

  v22 = v19 ^ 1;
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  v57 = 2;
  v23 = *(v45 + 40);
  v24 = v38;
  if (v23)
  {
    v25 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x258))(v38);
  }

  else
  {
    v26 = v38;
    v25 = 0;
  }

  sub_1A47D4358(0, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
  sub_1A3C6C180(&v47);
  v55 = v47;
  v56 = v48;
  sub_1A3C6C18C(&v53);
  v51 = v53;
  v52 = v54;
  v27 = sub_1A3C5A374();
  v28 = sub_1A3C5A374();
  v29 = sub_1A3C5A374();
  v30 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v55, 0, &unk_1F17249E0, v21, v22 & 1, &v51, v27 & 1, &v57, v50, 2, v28 & 1, v29 & 1, v30 & 1, v25);
  v48 = 0;
  v47 = 0;
  v49 = 0;
  v31 = v42;
  (*(v7 + 16))(v42, v46, v6);
  v32 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v33 = (v37 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v7 + 32))(v34 + v32, v31, v6);
  v35 = v44;
  *(v34 + v33) = v44;
  v36 = v35;
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v41, v24, v58, v50, &v47, sub_1A47DCC04, v34);
}

uint64_t sub_1A47D5264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5242314();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47D57A0(0, v6);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47DC7D0(0, &qword_1EB122C88, sub_1A47D5824, sub_1A47D57A0, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  if (!shouldUseNewCollectionsLayout()())
  {
    (*(v5 + 104))(v8, *MEMORY[0x1E69C1D90], v4);
    sub_1A47D3BE4(0, v12);
  }

  v48 = a1;

  v42 = sub_1A5242E44();
  v41 = v16;
  sub_1A5242E54();
  v40 = v47;
  sub_1A40F3434(0);
  v18 = v17;
  v19 = sub_1A47DCB5C(&qword_1EB124EC0, sub_1A40F3434, MEMORY[0x1E69C22B8]);
  v44 = a2;
  v20 = MEMORY[0x1E6981E70];
  v21 = MEMORY[0x1E6981E60];
  v22 = sub_1A41F7694();
  v23 = sub_1A3C5A374();
  v24 = sub_1A43C9BB4();
  v26 = v25;
  v27 = swift_allocObject();
  v43 = v10;
  v28 = v27;
  *(v27 + 16) = v24;
  *(v27 + 24) = v26;
  v29 = sub_1A43C9BD0();
  LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(&v48, 0, 0, v42, v41, v40, v23 & 1, sub_1A3F8B548, v49, v22, v28, v29, v20, v18, v21, v19);
  v30 = v49[5];
  *(v15 + 4) = v49[4];
  *(v15 + 5) = v30;
  v15[96] = v50;
  v31 = v49[1];
  *v15 = v49[0];
  *(v15 + 1) = v31;
  v32 = v49[3];
  *(v15 + 2) = v49[2];
  *(v15 + 3) = v32;
  swift_storeEnumTagMultiPayload();
  sub_1A47D5824(0);
  sub_1A47DCB5C(&qword_1EB125760, sub_1A47D5824, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
  sub_1A47D4188(255, v33);
  v35 = v34;
  v37 = sub_1A47D45CC(v36);
  v45 = v35;
  v46 = v37;
  swift_getOpaqueTypeConformance2();
  return sub_1A5249744();
}

void sub_1A47D57A0(uint64_t a1, double a2)
{
  if (!qword_1EB122008)
  {
    sub_1A47D4188(255, a2);
    sub_1A47D45CC(v2);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB122008);
    }
  }
}

void sub_1A47D5824(uint64_t a1)
{
  if (!qword_1EB125758)
  {
    sub_1A40F3434(255);
    v3 = v2;
    v4 = sub_1A47DCB5C(&qword_1EB124EC0, sub_1A40F3434, MEMORY[0x1E69C22B8]);
    v7[0] = MEMORY[0x1E6981E70];
    v7[1] = v3;
    v7[2] = MEMORY[0x1E6981E60];
    v7[3] = v4;
    v5 = type metadata accessor for LemonadeMaterialTitleCell(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB125758);
    }
  }
}

void sub_1A47D58D4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ([a1 px_isEventsVirtualCollection])
  {
    v5 = sub_1A3C38BD4(0xD00000000000001ELL);
    v7 = v6;
    v8 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
    v10 = v9;
    sub_1A47DCAA4(0, &qword_1EB126230, MEMORY[0x1E69C12C8], MEMORY[0x1E69E6F90]);
    v11 = sub_1A5244EE4();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1A52F8E10;
    (*(v12 + 104))(v14 + v13, *MEMORY[0x1E69C12A8], v11);
    *a3 = a2;
    *(a3 + 8) = 0;
    *(a3 + 16) = v5;
    *(a3 + 24) = v7;
    *(a3 + 32) = v14;
    *(a3 + 40) = v8;
    *(a3 + 48) = v10;
    v15 = type metadata accessor for LemonadeNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for LemonadeNavigationDestination(0);
    v17 = *(*(v16 - 8) + 56);

    v17(a3, 1, 1, v16);
  }
}

void sub_1A47D5B30()
{
  sub_1A40F354C(0);
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1A5244084();
  MEMORY[0x1EEE9AC00](v6);
  sub_1A5245A14();
}

uint64_t sub_1A47D5F30()
{
  v0 = sub_1A5243834();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47DCAA4(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  sub_1A5242E54();
  memset(v9, 0, sizeof(v9));
  v10 = 1;
  v7 = sub_1A52429A4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2678], v0);
  return sub_1A5243ED4();
}

void sub_1A47D6118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1A5244EE4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A47D4358(0, &qword_1EB12A000, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v11 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  v12 = *(a2 + 16);
  (*(v8 + 104))(v10, *MEMORY[0x1E69C12A8], v7);
  sub_1A5244EF4();
  swift_allocObject();
  v13 = v12;
  v14 = v11;
  sub_1A5244ED4();
  sub_1A5244824();
  sub_1A3C37470(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A47D637C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3C38BD4(0xD00000000000001ELL);
  v6 = v5;
  v7 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
  v9 = v8;
  sub_1A47DCAA4(0, &qword_1EB126230, MEMORY[0x1E69C12C8], MEMORY[0x1E69E6F90]);
  v10 = sub_1A5244EE4();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A52F8E10;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x1E69C12A8], v10);
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 32) = v13;
  *(a2 + 40) = v7;
  *(a2 + 48) = v9;
  v14 = type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v14 - 8) + 56))(a2, 0, 1, v14);

  return result;
}

uint64_t sub_1A47D655C(uint64_t a1)
{
  sub_1A524BE94();
  sub_1A5248224();
  sub_1A5248234();
  v1 = sub_1A5248244();

  return v1;
}

void sub_1A47D65E8(uint64_t a1)
{
  sub_1A3C48108(0);
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    sub_1A5245FF4();
  }
}

void sub_1A47D668C(void **a1, uint64_t a2)
{
  v4 = sub_1A5244EE4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  (*(v5 + 104))(v8, *MEMORY[0x1E69C12B0], v4, v6);
  sub_1A47D4C14(v9, a2, v8);
}

void sub_1A47D67BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A47D5B30();
}

void sub_1A47D6920(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  sub_1A47D36A4(v3, 1, a2);
}

unint64_t sub_1A47D6A70(uint64_t a1)
{
  v2 = sub_1A3C440BC();

  return sub_1A42E6E80(a1, v2);
}

uint64_t sub_1A47D6AAC()
{
  sub_1A524EC94();
  sub_1A524DC04();
  sub_1A5244EE4();
  sub_1A47DCB5C(&qword_1EB128FA0, MEMORY[0x1E69C12C8], MEMORY[0x1E69C12D0]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A47D6B58(uint64_t a1)
{
  sub_1A524DC04();
  sub_1A5244EE4();
  sub_1A47DCB5C(&qword_1EB128FA0, MEMORY[0x1E69C12C8], MEMORY[0x1E69C12D0]);
  return sub_1A524C4B4();
}

uint64_t sub_1A47D6BE8(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524DC04();
  sub_1A5244EE4();
  sub_1A47DCB5C(&qword_1EB128FA0, MEMORY[0x1E69C12C8], MEMORY[0x1E69C12D0]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

id sub_1A47D6C94()
{
  v1 = [*(*v0 + 16) px_virtualCollections];
  v2 = [v1 eventsCollection];

  return v2;
}

id sub_1A47D6CF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *v2;
  v12 = *(*v2 + 16);
  v6 = type metadata accessor for LemonadeEventsFeature.FeedProvider(0);
  v7 = *(v6 + 20);
  v8 = sub_1A5244EE4();
  (*(*(v8 - 8) + 16))(&a2[v7], a1, v8);
  v9 = *(v5 + 40);
  *a2 = v12;
  *&a2[*(v6 + 24)] = v9;
  v10 = v9;

  return v12;
}

uint64_t sub_1A47D6DB0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  sub_1A47DCB5C(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524ECB4();
  sub_1A524C794();
  v3 = *(v2 + 32);
  v4 = *(v3 + 16);
  MEMORY[0x1A590A010](v4);
  if (v4)
  {
    v5 = *(sub_1A5244EE4() - 8);
    v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_1A47DCB5C(&qword_1EB128FA0, MEMORY[0x1E69C12C8], MEMORY[0x1E69C12D0]);
    do
    {
      sub_1A524C4B4();
      v6 += v7;
      --v4;
    }

    while (v4);
  }

  return sub_1A524C794();
}

uint64_t sub_1A47D6F40()
{
  sub_1A524EC94();
  sub_1A47D6DB0(v2, v0);
  return sub_1A524ECE4();
}

uint64_t sub_1A47D6F84(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A47D6DB0(v3, v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A47D6FC0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5244EE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeFeedBodyStyle(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeEventsFeature.FeedProvider(0);
  if (*(v1 + *(v13 + 24)))
  {
    v14 = sub_1A437C79C();
    return sub_1A47D3B7C(v14, a1, type metadata accessor for LemonadeFeedBodyStyle);
  }

  else
  {
    (*(v7 + 16))(v9, v1 + *(v13 + 20), v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69C12C0])
    {
      v47 = sub_1A3C47918();
      v17 = v16;
      v18 = sub_1A3C47918();
      v20 = v19;
      v21 = sub_1A3C52D68();
      v23 = v22;
      v25 = v24;
      v26 = sub_1A3C4ED50(v21);
      v48 = 1;
      *v5 = sub_1A47D731C;
      *(v5 + 1) = 0;
      v5[16] = 2;
      *(v5 + 3) = 5;
      v5[32] = 1;
      *(v5 + 5) = v47;
      *(v5 + 6) = v17;
      *(v5 + 7) = v18;
      *(v5 + 8) = v20;
      *(v5 + 9) = v21;
      *(v5 + 10) = v23;
      v5[88] = v25;
      v5[89] = v26;
      swift_storeEnumTagMultiPayload();
      v27 = sub_1A3DC1AF8();
      sub_1A437C3B8(v5, 1, v27, v28 & 1, v12);
    }

    else
    {
      v29 = sub_1A3C47918();
      v46 = v30;
      v47 = v29;
      v31 = sub_1A3C47918();
      v44 = v32;
      v45 = v31;
      v33 = sub_1A3C52D68();
      v35 = v34;
      v36 = a1;
      v38 = v37;
      v39 = sub_1A3C4ED50(v33);
      v49 = 1;
      *v5 = sub_1A47D7454;
      *(v5 + 1) = 0;
      v5[16] = 2;
      *(v5 + 3) = 5;
      v5[32] = 1;
      v40 = v46;
      *(v5 + 5) = v47;
      *(v5 + 6) = v40;
      v41 = v44;
      *(v5 + 7) = v45;
      *(v5 + 8) = v41;
      *(v5 + 9) = v33;
      *(v5 + 10) = v35;
      v5[88] = v38;
      a1 = v36;
      v5[89] = v39;
      swift_storeEnumTagMultiPayload();
      v42 = sub_1A3DC1AF8();
      sub_1A437C3B8(v5, 0, v42, v43 & 1, v12);
      (*(v7 + 8))(v9, v6);
    }

    return sub_1A3CA2900(v12, a1, type metadata accessor for LemonadeFeedBodyStyle);
  }
}

uint64_t sub_1A47D731C(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C21F0])
  {
    return 13;
  }

  if (v7 == *MEMORY[0x1E69C2210])
  {
    return 2;
  }

  (*(v3 + 8))(v6, v2);
  return 21;
}

uint64_t sub_1A47D7454(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  LODWORD(a1) = (*(v3 + 88))(v6, v2);
  v7 = *MEMORY[0x1E69C21F0];
  v8 = shouldUseNewCollectionsLayout()();
  if (a1 == v7)
  {
    if (v8)
    {
      return 40;
    }

    else
    {
      return 15;
    }
  }

  else
  {
    if (v8)
    {
      v9 = 40;
    }

    else
    {
      v9 = 21;
    }

    (*(v3 + 8))(v6, v2);
  }

  return v9;
}

uint64_t sub_1A47D759C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v38 = a2;
  sub_1A47DAAD4(0);
  v34 = v2;
  v32[2] = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v32[1] = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47DB07C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5242314();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47DB0B0(0, v8);
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47DC7D0(0, &qword_1EB1427C0, sub_1A47DB740, sub_1A47DB0B0, MEMORY[0x1E697F948]);
  v39 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v32 - v15;
  v17 = sub_1A5243284();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47DB740(0);
  v22 = v21;
  v35 = *(v21 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&v36[*(type metadata accessor for LemonadeEventsFeature.FeedProvider(0) + 24)];
  if (!v25)
  {
    v35 = v16;
    v36 = v22;
    (*(v7 + 104))(v10, *MEMORY[0x1E69C1D88], v6);
    sub_1A47D3BE4(1u, v13);
  }

  v26 = *((*MEMORY[0x1E69E7D40] & *v25) + 0x540);
  v36 = v25;
  v26();
  v41 = v40;

  v27 = sub_1A5242E44();
  v33 = v28;
  v34 = v27;
  (*(v18 + 104))(v20, *MEMORY[0x1E69C23E0], v17);

  sub_1A3D6CB10(MEMORY[0x1E69E7CC0]);
  sub_1A40F3434(0);
  sub_1A5243EC4();
  sub_1A47DCB5C(&qword_1EB124EC0, sub_1A40F3434, MEMORY[0x1E69C22B8]);
  sub_1A47DCB5C(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
  sub_1A5242AA4();
  v29 = v35;
  (*(v35 + 2))(v16, v24, v22);
  swift_storeEnumTagMultiPayload();
  sub_1A47DCB5C(&qword_1EB1427D0, sub_1A47DB740, MEMORY[0x1E69C20C8]);
  sub_1A47DB82C(v30);
  sub_1A5249744();

  return (*(v29 + 1))(v24, v22);
}

void sub_1A47D7D00()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v9[13] = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47DAB08(0);
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A5241144();
  v9[11] = *(v4 - 8);
  v9[12] = v4;
  MEMORY[0x1EEE9AC00](v4);
  v9[10] = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9[9] = v9 - v7;
  sub_1A40F354C(0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1A5242E34();
  sub_1A5245A14();
}

void sub_1A47D89E4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a1;
  v8 = sub_1A5240CA4();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47DC9B4(0);
  v13 = *(v12 - 8);
  v58 = v12;
  v59 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v47 - v16;
  v17 = sub_1A524ED94();
  v52 = *(v17 - 8);
  v53 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A524ED74();
  v50 = *(v20 - 8);
  v51 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1A524EDE4();
  v23 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1A524EDF4();
  v26 = [a1 enrichmentState];
  v54 = sub_1A44046A0(v26);
  v63 = v27;
  v68 = a2;
  v69 = a3;
  sub_1A47DCAA4(0, &qword_1EB142820, MEMORY[0x1E696A1C0], MEMORY[0x1E69E6F90]);
  sub_1A524EDC4();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1A52FC9F0;
  sub_1A524EDA4();
  sub_1A524EDB4();
  sub_1A47DB914(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1A524EDD4();
  sub_1A524ED64();
  sub_1A524ED84();
  sub_1A52403F4();

  (*(v52 + 8))(v19, v53);
  (*(v50 + 8))(v22, v51);
  (*(v23 + 8))(v25, v49);
  sub_1A47DCB5C(&qword_1EB142828, MEMORY[0x1E696A218], MEMORY[0x1E696A210]);
  v29 = sub_1A524A434();
  v31 = v30;
  v33 = v32;
  v53 = v34;
  [v47 promotionScore];
  v68 = v35;
  sub_1A5241234();
  sub_1A3F185D4();
  v36 = v55;
  sub_1A5240C04();
  v37 = v60;
  sub_1A5240C94();
  v38 = v58;
  MEMORY[0x1A58FBF80](v37, v58);
  (*(v61 + 8))(v37, v62);
  (*(v59 + 8))(v36, v38);
  sub_1A47DCB5C(&qword_1EB142830, sub_1A47DC9B4, MEMORY[0x1E6968E80]);
  v39 = sub_1A524A434();
  v41 = v40;
  LOBYTE(v68) = 0;
  v33 &= 1u;
  v67 = v33;
  v66 = 0;
  v65 = v33;
  v64 = v42 & 1;
  v44 = v53;
  v43 = v54;
  v45 = v63;
  *a4 = v54;
  *(a4 + 8) = v45;
  *(a4 + 16) = 0;
  *(a4 + 24) = MEMORY[0x1E69E7CC0];
  *(a4 + 32) = v29;
  *(a4 + 40) = v31;
  *(a4 + 48) = v33;
  *(a4 + 56) = v44;
  *(a4 + 64) = v39;
  *(a4 + 72) = v41;
  *(a4 + 80) = v42 & 1;
  *(a4 + 88) = v46;
  sub_1A3E75E68(v43, v45, 0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47D9148()
{
  sub_1A40F354C(0);
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A5244084();
  MEMORY[0x1EEE9AC00](v4);
  sub_1A5245A14();
}

uint64_t sub_1A47D9604(uint64_t a1)
{
  MEMORY[0x1A5907B60](0x2D73746E657665, 0xE700000000000000);
  sub_1A5244EE4();
  sub_1A524E624();
  return 0;
}

uint64_t sub_1A47D96A8(uint64_t a1)
{
  v3 = sub_1A5244EE4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + *(a1 + 20), v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E69C12A8])
  {
    return 0;
  }

  v10 = v8;
  v11 = 0xD00000000000001ELL;
  if (v10 == *MEMORY[0x1E69C12C0])
  {
    v11 = 0xD000000000000027;
  }

  else if (v10 != *MEMORY[0x1E69C12B0])
  {
    (*(v4 + 8))(v7, v3);
    v11 = 0xD00000000000001ELL;
  }

  return sub_1A3C38BD4(v11);
}

uint64_t sub_1A47D9834@<X0>(void *a2@<X8>)
{
  MEMORY[0x1A5907B60](0x2D73746E657665, 0xE700000000000000);
  sub_1A5244EE4();
  result = sub_1A524E624();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

id sub_1A47D98C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v8 = *v2;
  v4 = *(a1 + 20);
  v5 = *(type metadata accessor for LemonadeEventsFeature.EventsListManagerOptions(0) + 20);
  v6 = sub_1A5244EE4();
  (*(*(v6 - 8) + 16))(&a2[v5], v2 + v4, v6);
  *a2 = v8;

  return v8;
}

void sub_1A47D9960(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1 + *(type metadata accessor for LemonadeEventsFeature.EventsListManagerOptions(0) + 20);

  sub_1A47D4C14(v3, a2, v4);
}

uint64_t sub_1A47D9ACC(__n128 a1)
{
  result = sub_1A5242E44();
  if (!v2)
  {
    return sub_1A3C38BD4(0xD00000000000001DLL);
  }

  return result;
}

void sub_1A47D9B14(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  sub_1A47D36A4(v3, 0, a2);
}

uint64_t sub_1A47D9C40()
{
  sub_1A47DCB5C(&qword_1EB12A210, type metadata accessor for LemonadeEventsFeature.FeedProvider, &unk_1A5361F10);

  return sub_1A3C47918();
}

uint64_t sub_1A47D9CAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1A5244EE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47D4358(0, &qword_1EB12A000, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v9 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v10 = [swift_getObjCClassFromMetadata() sharedInstance];
  if ([v10 shouldRemoveFilteredEventsFromUI])
  {
    v11 = sub_1A47D9F00([v9 sharingFilter]);
    [v9 setPredicate_];
  }

  (*(v6 + 16))(v8, a2, v5);
  sub_1A5244EF4();
  swift_allocObject();
  v12 = v9;
  v13 = a3;
  sub_1A5244ED4();
  sub_1A5244824();
  v14 = sub_1A5245014();

  return v14;
}

id sub_1A47D9EA8()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 eventsCollection];

  return v2;
}

uint64_t sub_1A47D9F00(__int16 a1)
{
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 eventFilterType];
  if (v3 == 2)
  {
    v7 = [v2 eventsSummaryCountThreshold];
    if (a1 != 2)
    {
      if (a1 != 1)
      {
        if (a1)
        {
          goto LABEL_14;
        }

        sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
        sub_1A47DCAA4(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1A52FF950;
        v13 = MEMORY[0x1E69E6158];
        *(v8 + 56) = MEMORY[0x1E69E6158];
        v10 = sub_1A3D710E8();
        strcpy((v8 + 32), "summaryCount");
        *(v8 + 45) = 0;
        *(v8 + 46) = -5120;
        v11 = 0x80000001A53EBCC0;
        *(v8 + 96) = v13;
        *(v8 + 104) = v10;
        v12 = 0xD000000000000012;
        goto LABEL_13;
      }

      sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
      sub_1A47DCAA4(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1A52FC9F0;
      v18 = 0x80000001A53EBCC0;
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = sub_1A3D710E8();
      v19 = 0xD000000000000012;
      goto LABEL_18;
    }

    sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
    sub_1A47DCAA4(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A52FC9F0;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1A3D710E8();
    v20 = 0x437972616D6D7573;
    v21 = 0xEC000000746E756FLL;
LABEL_20:
    v24 = MEMORY[0x1E69E72F0];
    *(v17 + 32) = v20;
    *(v17 + 40) = v21;
    v23 = MEMORY[0x1E69E7358];
    *(v17 + 96) = v24;
    goto LABEL_21;
  }

  if (v3 == 1)
  {
    v7 = [v2 eventsExtendedCountThreshold];
    if (a1 != 2)
    {
      if (a1 != 1)
      {
        if (a1)
        {
          goto LABEL_14;
        }

        sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
        sub_1A47DCAA4(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1A52FF950;
        v9 = MEMORY[0x1E69E6158];
        *(v8 + 56) = MEMORY[0x1E69E6158];
        v10 = sub_1A3D710E8();
        strcpy((v8 + 32), "extendedCount");
        *(v8 + 46) = -4864;
        v11 = 0x80000001A53EBCE0;
        *(v8 + 96) = v9;
        *(v8 + 104) = v10;
        v12 = 0xD000000000000013;
LABEL_13:
        *(v8 + 64) = v10;
        *(v8 + 72) = v12;
        v14 = MEMORY[0x1E69E72F0];
        *(v8 + 80) = v11;
        v15 = MEMORY[0x1E69E7358];
        *(v8 + 136) = v14;
        *(v8 + 144) = v15;
        *(v8 + 112) = v7;
        goto LABEL_22;
      }

      sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
      sub_1A47DCAA4(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1A52FC9F0;
      v18 = 0x80000001A53EBCE0;
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = sub_1A3D710E8();
      v19 = 0xD000000000000013;
LABEL_18:
      v22 = MEMORY[0x1E69E72F0];
      *(v17 + 32) = v19;
      *(v17 + 40) = v18;
      v23 = MEMORY[0x1E69E7358];
      *(v17 + 96) = v22;
LABEL_21:
      *(v17 + 104) = v23;
      *(v17 + 72) = v7;
      goto LABEL_22;
    }

    sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
    sub_1A47DCAA4(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A52FC9F0;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1A3D710E8();
    v20 = 0x6465646E65747865;
    v21 = 0xED0000746E756F43;
    goto LABEL_20;
  }

  if (!v3)
  {
    [v2 eventsPromotionScoreThreshold];
    v5 = v4;
    sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
    sub_1A47DCAA4(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A52FC9F0;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1A3D710E8();
    strcpy((v6 + 32), "promotionScore");
    *(v6 + 47) = -18;
    *(v6 + 96) = MEMORY[0x1E69E7DE0];
    *(v6 + 104) = sub_1A47DCB08();
    *(v6 + 72) = v5;
LABEL_22:
    v16 = sub_1A524D134();

    return v16;
  }

LABEL_14:

  return 0;
}

uint64_t sub_1A47DA598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A47D3B7C(a1, v6, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (!swift_getEnumCaseMultiPayload())
  {
    v7 = *v6;
    v8 = v6[1];
    v9 = objc_opt_self();
    v10 = sub_1A524CA14();
    v11 = [v9 transientCollectionListWithCollections:v10 title:0 identifier:0 photoLibrary:*(a2 + 16)];

    v12 = *(a2 + 24);
    sub_1A47D4358(0, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    v32 = 2;
    v13 = v11;
    v14 = v12;
    sub_1A3C6C180(&v22);
    v30 = v22;
    v31 = v23;
    sub_1A3C6C18C(&v28);
    v26 = v28;
    v27 = v29;
    LOBYTE(v11) = sub_1A3C5A374();
    v15 = sub_1A3C30368();
    v16 = sub_1A3C5A374();
    v17 = sub_1A3C5A374();
    v18 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v30, 0, &unk_1F1724A08, 0, 1, &v26, v11 & 1, &v32, v25, v15, v16 & 1, v17 & 1, v18 & 1, 0);
    v23 = 0;
    v22 = 0;
    v24 = 0;
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = v7;
    v19[4] = v8;

    PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v13, v12, v33, v25, &v22, sub_1A47DCBA4, v19);
  }

  *&v25[0] = 0;
  *(&v25[0] + 1) = 0xE000000000000000;
  sub_1A524E404();

  *&v25[0] = 0xD00000000000001BLL;
  *(&v25[0] + 1) = 0x80000001A53B42A0;
  sub_1A47DCB5C(&unk_1EB139AE0, type metadata accessor for LemonadeBookmark.CollectionIdentifier, &unk_1A530C618);
  v20 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v20);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A47DA984(void *a1, void *a2)
{
  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  if (sub_1A524DBF4())
  {
    type metadata accessor for LemonadeEventsFeature.EventsListManagerOptions(0);
    sub_1A5244EE4();
    sub_1A47DCB5C(&qword_1EB128F98, MEMORY[0x1E69C12C8], MEMORY[0x1E69C12E0]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v6 == v4 && v7 == v5)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1A524EAB4();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1A47DAB08(uint64_t a1)
{
  if (!qword_1EB123020)
  {
    sub_1A47DABA8(255, &qword_1EB123078, sub_1A47DAC3C, &qword_1EB127B10, MEMORY[0x1E6980460]);
    sub_1A3E42C88(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123020);
    }
  }
}

void sub_1A47DABA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A47DCBB0(255, a4, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], a5);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A47DAC3C(uint64_t a1)
{
  if (!qword_1EB123140)
  {
    sub_1A47DABA8(255, &qword_1EB123290, sub_1A47DACD4, &qword_1EB127AD0, MEMORY[0x1E6980480]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123140);
    }
  }
}

void sub_1A47DACD4(uint64_t a1, double a2)
{
  if (!qword_1EB123588)
  {
    sub_1A47DC7D0(255, &qword_1EB123AF0, sub_1A47DADA4, sub_1A3EC18C4, MEMORY[0x1E697E830]);
    sub_1A3C37470(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB123588);
    }
  }
}

void sub_1A47DADA4(uint64_t a1)
{
  if (!qword_1EB121688)
  {
    sub_1A47DAE38(255);
    sub_1A47DCB5C(&qword_1EB120FC0, sub_1A47DAE38, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121688);
    }
  }
}

void sub_1A47DAE38(uint64_t a1)
{
  if (!qword_1EB120FB8)
  {
    sub_1A47DC854(255, &qword_1EB1218B0, sub_1A47DAEC0, sub_1A47DAF54);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120FB8);
    }
  }
}

void sub_1A47DAEC0(uint64_t a1)
{
  if (!qword_1EB1218B8)
  {
    sub_1A4074688(255);
    sub_1A47DCB5C(&qword_1EB1270E0, sub_1A4074688, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1218B8);
    }
  }
}

void sub_1A47DAF54(uint64_t a1)
{
  if (!qword_1EB1218C0)
  {
    sub_1A47DAFE8(255);
    sub_1A47DCB5C(&qword_1EB121060, sub_1A47DAFE8, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1218C0);
    }
  }
}

void sub_1A47DB01C()
{
  if (!qword_1EB122038)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB122038);
    }
  }
}

void sub_1A47DB0F8(uint64_t a1)
{
  if (!qword_1EB122EC8)
  {
    sub_1A47DB07C(255);
    sub_1A47DB1C0(&qword_1EB123008, sub_1A47DB07C, sub_1A47DB18C);
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122EC8);
    }
  }
}

uint64_t sub_1A47DB1C0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A47DB23C()
{
  result = qword_1EB123028;
  if (!qword_1EB123028)
  {
    sub_1A47DAB08(255);
    sub_1A47DB2EC();
    sub_1A47DCB5C(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123028);
  }

  return result;
}

unint64_t sub_1A47DB2EC()
{
  result = qword_1EB123080;
  if (!qword_1EB123080)
  {
    v1 = MEMORY[0x1E6980460];
    sub_1A47DABA8(255, &qword_1EB123078, sub_1A47DAC3C, &qword_1EB127B10, MEMORY[0x1E6980460]);
    sub_1A47DB3D8();
    sub_1A47DB6E8(&qword_1EB127B20, &qword_1EB127B10, v1, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123080);
  }

  return result;
}

unint64_t sub_1A47DB3D8()
{
  result = qword_1EB123148;
  if (!qword_1EB123148)
  {
    sub_1A47DAC3C(255);
    sub_1A47DB458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123148);
  }

  return result;
}

unint64_t sub_1A47DB458()
{
  result = qword_1EB123298;
  if (!qword_1EB123298)
  {
    v1 = MEMORY[0x1E6980480];
    sub_1A47DABA8(255, &qword_1EB123290, sub_1A47DACD4, &qword_1EB127AD0, MEMORY[0x1E6980480]);
    sub_1A47DB544(v2);
    sub_1A47DB6E8(&qword_1EB127AD8, &qword_1EB127AD0, v1, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123298);
  }

  return result;
}

unint64_t sub_1A47DB544(double a1)
{
  result = qword_1EB123590;
  if (!qword_1EB123590)
  {
    sub_1A47DACD4(255, a1);
    sub_1A47DB5C4(v2);
    sub_1A3FF8FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123590);
  }

  return result;
}

unint64_t sub_1A47DB5C4(double a1)
{
  result = qword_1EB123AF8;
  if (!qword_1EB123AF8)
  {
    sub_1A47DC7D0(255, &qword_1EB123AF0, sub_1A47DADA4, sub_1A3EC18C4, MEMORY[0x1E697E830]);
    sub_1A47DCB5C(&qword_1EB121690, sub_1A47DADA4, MEMORY[0x1E6981870]);
    sub_1A47DCB5C(&qword_1EB127830, sub_1A3EC18C4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123AF8);
  }

  return result;
}

uint64_t sub_1A47DB6E8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A47DCBB0(255, a2, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A47DB740(uint64_t a1)
{
  if (!qword_1EB1427C8)
  {
    sub_1A40F3434(255);
    sub_1A5243EC4();
    sub_1A47DCB5C(&qword_1EB124EC0, sub_1A40F3434, MEMORY[0x1E69C22B8]);
    sub_1A47DCB5C(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    v1 = sub_1A5242A94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1427C8);
    }
  }
}

unint64_t sub_1A47DB82C(double a1)
{
  result = qword_1EB124000;
  if (!qword_1EB124000)
  {
    sub_1A47DB0B0(255, a1);
    sub_1A47D4188(255, v2);
    sub_1A47D45CC(v3);
    swift_getOpaqueTypeConformance2();
    sub_1A47DCB5C(&qword_1EB122ED0, sub_1A47DB0F8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124000);
  }

  return result;
}

uint64_t sub_1A47DB914(uint64_t a1)
{
  v2 = sub_1A524EDC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1A47DCA10(0);
    v9 = sub_1A524E3D4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1A47DCB5C(&qword_1EB142840, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
      v16 = sub_1A524C4A4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1A47DCB5C(&qword_1EB142848, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1D0]);
          v23 = sub_1A524C594();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1A47DBC28(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A47D4358(255, a2, &qword_1EB126CD0, 0x1E6978758, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A47DBCE4(uint64_t a1)
{
  result = sub_1A3C440BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A47DBD90()
{
  result = qword_1EB1427E0;
  if (!qword_1EB1427E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1427E0);
  }

  return result;
}

uint64_t sub_1A47DBDE4(uint64_t a1)
{
  *(a1 + 8) = sub_1A47DCB5C(&qword_1EB12A210, type metadata accessor for LemonadeEventsFeature.FeedProvider, &unk_1A5361F10);
  result = sub_1A47DCB5C(&qword_1EB12A228, type metadata accessor for LemonadeEventsFeature.FeedProvider, &unk_1A5361F2C);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A47DC014()
{
  result = qword_1EB1427E8;
  if (!qword_1EB1427E8)
  {
    sub_1A47DC0C8(255);
    sub_1A47DC19C(&qword_1EB129758, &qword_1EB129748, type metadata accessor for PhotoKitItemListImplementation, &protocol conformance descriptor for PhotoKitItemListImplementation<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1427E8);
  }

  return result;
}

void sub_1A47DC0C8(uint64_t a1)
{
  if (!qword_1EB1427F0)
  {
    sub_1A47D4358(255, &qword_1EB129748, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListImplementation);
    sub_1A47DC19C(&qword_1EB129750, &qword_1EB129748, type metadata accessor for PhotoKitItemListImplementation, &protocol conformance descriptor for PhotoKitItemListImplementation<A>);
    sub_1A5245DD4();
  }
}

uint64_t sub_1A47DC19C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A47D4358(255, a2, &qword_1EB126AC0, 0x1E6978650, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A47DC1F4(uint64_t a1)
{
  result = sub_1A47DCB5C(&qword_1EB12A220, type metadata accessor for LemonadeEventsFeature.FeedProvider, &unk_1A5361F64);
  *(a1 + 8) = result;
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A5244EE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm_8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5244EE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1A47DC4D4(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB126BF0, 0x1E69789A8);
  if (v1 <= 0x3F)
  {
    sub_1A5244EE4();
    if (v2 <= 0x3F)
    {
      sub_1A47DCAA4(319, &qword_1EB125A20, type metadata accessor for PickerConfiguration, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A47DC5B0(double a1)
{
  result = qword_1EB122908;
  if (!qword_1EB122908)
  {
    sub_1A47DC7D0(255, &qword_1EB122900, sub_1A47D5824, sub_1A47D57A0, MEMORY[0x1E697F960]);
    sub_1A47DCB5C(&qword_1EB125760, sub_1A47D5824, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
    sub_1A47D4188(255, v2);
    sub_1A47D45CC(v3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122908);
  }

  return result;
}

unint64_t sub_1A47DC6DC(double a1)
{
  result = qword_1EB1427F8;
  if (!qword_1EB1427F8)
  {
    sub_1A47DC7D0(255, &qword_1EB142800, sub_1A47DB740, sub_1A47DB0B0, MEMORY[0x1E697F960]);
    sub_1A47DCB5C(&qword_1EB1427D0, sub_1A47DB740, MEMORY[0x1E69C20C8]);
    sub_1A47DB82C(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1427F8);
  }

  return result;
}

void sub_1A47DC7D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A47DC854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A47DC8D0(uint64_t a1)
{
  if (!qword_1EB142808)
  {
    sub_1A47D4358(255, &qword_1EB142810, &qword_1EB126D20, 0x1E696AE18, MEMORY[0x1E69E6720]);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142808);
    }
  }
}

uint64_t sub_1A47DC954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A47DC9B4(uint64_t a1)
{
  if (!qword_1EB142818)
  {
    sub_1A3F185D4();
    v1 = sub_1A5240C24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142818);
    }
  }
}

void sub_1A47DCA10(uint64_t a1)
{
  if (!qword_1EB142838)
  {
    sub_1A524EDC4();
    sub_1A47DCB5C(&qword_1EB142840, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
    v1 = sub_1A524E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142838);
    }
  }
}

void sub_1A47DCAA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A47DCB08()
{
  result = qword_1EB125FE0;
  if (!qword_1EB125FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125FE0);
  }

  return result;
}

uint64_t sub_1A47DCB5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A47DCBB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1A47DCC04(uint64_t a1)
{
  v3 = *(sub_1A5244EE4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A47D9CAC(a1, v1 + v4, v5);
}

id sub_1A47DD1FC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 pinCollectionsTabTitle];
  *a2 = result;
  return result;
}

id sub_1A47DD244@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 pinSearchTabTitle];
  *a2 = result;
  return result;
}

id sub_1A47DD28C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableAdaptiveDarkBiasInGrid];
  *a2 = result;
  return result;
}

id sub_1A47DD2D4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableAdaptiveDarkBiasInEdit];
  *a2 = result;
  return result;
}

id sub_1A47DD31C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableStatusBarsHiddenFromCameraPadOneUp];
  *a2 = result;
  return result;
}

id sub_1A47DD364@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 disableInfoButtonMonochromaticWorkaround];
  *a2 = result;
  return result;
}

id sub_1A47DD3AC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useNewSearch];
  *a2 = result;
  return result;
}

id sub_1A47DD3F4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useNewMainViewLayout];
  *a2 = result;
  return result;
}

id sub_1A47DD43C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showShelvesOrderResetButton];
  *a2 = result;
  return result;
}

id sub_1A47DD484@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfExpandingMovementAnimationType];
  *a2 = result;
  return result;
}

id sub_1A47DD4CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfExpandingMovementAnimationDuration];
  *a2 = v4;
  return result;
}

id sub_1A47DD514@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfExpandingMovementAnimationDelay];
  *a2 = v4;
  return result;
}

id sub_1A47DD55C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfExpandingOpacityAnimationType];
  *a2 = result;
  return result;
}

id sub_1A47DD5A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfExpandingOpacityAnimationDuration];
  *a2 = v4;
  return result;
}

id sub_1A47DD5EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfExpandingOpacityAnimationDelay];
  *a2 = v4;
  return result;
}

id sub_1A47DD634@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfCollapsingMovementAnimationType];
  *a2 = result;
  return result;
}

id sub_1A47DD67C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfCollapsingMovementAnimationDuration];
  *a2 = v4;
  return result;
}

id sub_1A47DD6C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfCollapsingMovementAnimationDelay];
  *a2 = v4;
  return result;
}

id sub_1A47DD70C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfCollapsingOpacityAnimationType];
  *a2 = result;
  return result;
}

id sub_1A47DD754@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfCollapsingOpacityAnimationDuration];
  *a2 = v4;
  return result;
}

id sub_1A47DD79C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfCollapsingOpacityAnimationDelay];
  *a2 = v4;
  return result;
}

id sub_1A47DD7E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesExpandingMovementAnimationType];
  *a2 = result;
  return result;
}

id sub_1A47DD82C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesExpandingMovementAnimationDuration];
  *a2 = v4;
  return result;
}

id sub_1A47DD874@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesExpandingMovementAnimationDelay];
  *a2 = v4;
  return result;
}

id sub_1A47DD8BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesExpandingOpacityAnimationType];
  *a2 = result;
  return result;
}

id sub_1A47DD904@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesExpandingOpacityAnimationDuration];
  *a2 = v4;
  return result;
}

id sub_1A47DD94C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesExpandingOpacityAnimationDelay];
  *a2 = v4;
  return result;
}

id sub_1A47DD994@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesCollapsingMovementAnimationType];
  *a2 = result;
  return result;
}

id sub_1A47DD9DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesCollapsingMovementAnimationDuration];
  *a2 = v4;
  return result;
}

id sub_1A47DDA24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesCollapsingMovementAnimationDelay];
  *a2 = v4;
  return result;
}

id sub_1A47DDA6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesCollapsingOpacityAnimationType];
  *a2 = result;
  return result;
}

id sub_1A47DDAB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesCollapsingOpacityAnimationDuration];
  *a2 = v4;
  return result;
}

id sub_1A47DDAFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesCollapsingOpacityAnimationDelay];
  *a2 = v4;
  return result;
}

char *sub_1A47DDCF4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A47DDD14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A47DDD14(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A47E0078(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_1A47DE60C()
{
  swift_getKeyPath();
  sub_1A47DFCD8(qword_1F1724E18);
  sub_1A47DFE98(0);
  swift_arrayDestroy();
  v0 = sub_1A47DFF28();
  *&v1 = &off_1EE6EA5F8;
  *(&v1 + 1) = &protocol witness table for Int;
  sub_1A3F3E83C(0x746E656D65766F4DLL, 0xED00006570795420, &v2, v1, v0);
}

void sub_1A47DEBBC()
{
  swift_getKeyPath();
  sub_1A47DFCD8(qword_1F1724F48);
  sub_1A47DFE98(0);
  swift_arrayDestroy();
  v0 = sub_1A47DFF28();
  *&v1 = &off_1EE6EA5F8;
  *(&v1 + 1) = &protocol witness table for Int;
  sub_1A3F3E83C(0x746E656D65766F4DLL, 0xED00006570795420, &v2, v1, v0);
}

void sub_1A47DF16C()
{
  swift_getKeyPath();
  sub_1A47DFCD8(qword_1F1725078);
  sub_1A47DFE98(0);
  swift_arrayDestroy();
  v0 = sub_1A47DFF28();
  *&v1 = &off_1EE6EA5F8;
  *(&v1 + 1) = &protocol witness table for Int;
  sub_1A3F3E83C(0x746E656D65766F4DLL, 0xED00006570795420, &v2, v1, v0);
}

void sub_1A47DF71C()
{
  swift_getKeyPath();
  sub_1A47DFCD8(qword_1F17251A8);
  sub_1A47DFE98(0);
  swift_arrayDestroy();
  v0 = sub_1A47DFF28();
  *&v1 = &off_1EE6EA5F8;
  *(&v1 + 1) = &protocol witness table for Int;
  sub_1A3F3E83C(0x746E656D65766F4DLL, 0xED00006570795420, &v2, v1, v0);
}

void sub_1A47DFCD8(void *a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  v2 = a1[2];
  sub_1A3F41E2C(v2, 0);
  sub_1A47DDCF4(0, v2, 0);
  if (v2)
  {
    v4 = a1[4];
    v3 = a1[5];
    v5 = *(v8 + 16);
    if (v5)
    {
      v6 = (v8 + 40);
      do
      {
        v7 = *(v6 - 1) == v4 && *v6 == v3;
        if (v7 || (sub_1A524EAB4() & 1) != 0)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A47DFE98(uint64_t a1)
{
  if (!qword_1EB142850)
  {
    type metadata accessor for PXLemonadeShelvesAnimationType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB142850);
    }
  }
}

unint64_t sub_1A47DFF28()
{
  result = qword_1EB142858;
  if (!qword_1EB142858)
  {
    type metadata accessor for PXLemonadeShelvesAnimationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142858);
  }

  return result;
}

void sub_1A47DFFBC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A47E0028(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1A524EA54();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A47E0028(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A47E0078(uint64_t a1)
{
  if (!qword_1EB142860)
  {
    type metadata accessor for PXLemonadeShelvesAnimationType(255);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142860);
    }
  }
}

void sub_1A47E0228(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1;
  sub_1A3C5A374();
  PXDisplayCollectionDetailedCountsMake();
  v5 = v4;
  *(v2 + 16) = v4;
  *(v2 + 24) = v6;
  v10 = v4;
  v11 = v6;
  v7 = sub_1A3C411C8();
  v8 = sub_1A3C65064(&qword_1EB12A7D8, sub_1A3C41244, &protocol conformance descriptor for PhotoKitItem<A>);
  v9 = v5;
  sub_1A3C64F88(&v10, 0, 0, 0, 0, &type metadata for LemonadeMemoriesFeature.ShelfProvider, v7, v8);
}

uint64_t sub_1A47E0320(uint64_t a1)
{
  sub_1A3C50BAC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A47E037C()
{
  sub_1A47E0320(v0 + OBJC_IVAR____TtC12PhotosUICore29LemonadeMemoriesShelfProvider_wrappedProvider);

  return swift_deallocClassInstance();
}

void *sub_1A47E03E8()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t MemoryCreationLemonadeMemoriesShelfProvider.__allocating_init(photoLibrary:positionManager:forceCardVisibilityState:)(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = swift_allocObject();
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_1A47E0C98(a1, v12, a3, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v14;
}

uint64_t MemoryCreationLemonadeMemoriesShelfProvider.init(photoLibrary:positionManager:forceCardVisibilityState:)(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_1A47E0C98(a1, v12, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v14;
}

uint64_t sub_1A47E0650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_1A524CC54();
  *(v4 + 72) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47E06E8, v6, v5);
}

uint64_t sub_1A47E06E8()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3C6AB14();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A52415B4();
  }

  v1 = *(v0 + 8);

  return v1();
}

double sub_1A47E07E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3C56A4C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1A524CCB4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;

  sub_1A3D4D930(0, 0, v6, a3, v10);

  return result;
}

uint64_t sub_1A47E0988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1A524CC54();
  *(v4 + 48) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47E0A20, v6, v5);
}

uint64_t sub_1A47E0A20()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3C6AB14();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47E0B38()
{
  sub_1A524CC54();
  *(v0 + 24) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47E0BCC, v2, v1);
}

uint64_t sub_1A47E0C98(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  LOBYTE(a3) = *a3;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v12 = OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider____lazy_storage___wrappedProvider;
  sub_1A3C50BAC(0);
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  *(a4 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider____lazy_storage___prependItemListManager) = 0;
  *(a4 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider____lazy_storage___appendItemListManager) = 0;
  *(a4 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_availabilityManager) = 0;
  v14 = OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_logger;
  v15 = sub_1A3C4A780();
  v16 = sub_1A5246F24();
  (*(*(v16 - 8) + 16))(a4 + v14, v15, v16);
  *(a4 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_forceCardVisibilityState) = 3;
  *(a4 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_photoLibrary) = a1;
  sub_1A3C34460(&v18, a4 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_positionManager);
  *(a4 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_forceCardVisibilityState) = a3;
  return a4;
}

void sub_1A47E0E44(uint64_t a1)
{
  sub_1A3C50BAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1A47E109C()
{
  v1 = *(v0 + 16);
  type metadata accessor for GenerativeStoryBackgroundAssetsManager(0);
  v2 = *sub_1A4A071A0(v1);
  (*(v2 + 304))();

  return result;
}

uint64_t sub_1A47E1158()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A47E0988(v3, v4, v5, v2);
}

uint64_t sub_1A47E11EC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C56A4C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A47E12A4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A47E0650(v3, v4, v5, v2);
}

uint64_t sub_1A47E134C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A47E13B0(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x772D646572616873;
  a2[1] = 0xEF756F792D687469;
  v3 = type metadata accessor for LemonadeSharedWithYouFeature(0);
  sub_1A40B51E0(a2 + *(v3 + 20));
}

uint64_t sub_1A47E1480(uint64_t a1)
{
  result = sub_1A47E14D8(&qword_1EB129998, type metadata accessor for LemonadeSharedWithYouFeature, &unk_1A5362F0C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A47E14D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id UIViewController.pxView.getter()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void UIViewController.px_addChild(_:constraints:)(void *a1, uint64_t (*a2)(void))
{
  [v2 addChildViewController_];
  v10 = [a1 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = [v2 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 addSubview_];

  if (a2)
  {
    a2();
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = objc_opt_self();
    sub_1A4129FCC(0, v8);
    v9 = sub_1A524CA14();

    [v7 activateConstraints_];
  }

  [a1 didMoveToParentViewController_];
}

Swift::Void __swiftcall UIViewController.px_removeFromParent()()
{
  [v0 willMoveToParentViewController_];
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 removeFromSuperview];

    [v0 removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }
}

id PXSensitivityAssetMoreHelpMenuManager.init(asset:sharedAlbum:presenting:)(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAsset:a1 sharedAlbum:a2 presentingViewController:a3];

  return v6;
}

char *PXSensitivityAssetMoreHelpMenuManager.init(asset:sharedAlbum:presenting:)(void *a1, void *a2, void *a3)
{
  v6 = sub_1A47E27B0(a1, a2, a3);

  return v6;
}

void __swiftcall PXSensitivityAssetMoreHelpMenuManager.createMenuIfNeeded()(UIMenu_optional *__return_ptr retstr)
{
  v2 = v1;
  v42[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v40[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 asset];
  v9 = [v8 px_containsPotentiallySensitiveContent];

  if (v9)
  {
    v10 = [v2 asset];
    v11 = [v10 compactSCSensitivityAnalysis];

    v12 = objc_allocWithZone(MEMORY[0x1E697B670]);
    v41 = 0;
    v13 = [v12 initFromCompactAnalysis:v11 error:&v41];
    v14 = v41;
    if (v13)
    {
      v15 = v13;
      v16 = objc_opt_self();
      v17 = v14;
      v18 = [v2 sharedAlbum];
      LODWORD(v16) = [v16 sharedAlbumIsOwned_];

      if (v16)
      {
        v19 = 512;
      }

      else
      {
        v19 = 768;
      }

      v20 = objc_opt_self();
      v21 = [v2 delegateHandler];
      v41 = 0;
      v22 = [v20 menuWithAnalysis:v15 delegate:v21 additionalOptions:v19 error:&v41];

      v23 = v41;
      if (v22)
      {

        return;
      }

      v26 = v23;
      v25 = sub_1A5240B84();

      swift_willThrow();
    }

    else
    {
      v24 = v41;
      v25 = sub_1A5240B84();

      swift_willThrow();
    }

    v41 = v25;
    sub_1A3DBD9A0();
    sub_1A3C52C70(0, &qword_1EB12C740, 0x1E696ABC0);
    swift_dynamicCast();
    v27 = v40[0];
    v28 = [v40[0] code];
    if (v28 == *sub_1A45D8288())
    {
    }

    else
    {
      v29 = sub_1A45D8754();
      (*(v4 + 16))(v7, v29, v3);
      v30 = v27;
      v31 = sub_1A5246F04();
      v32 = sub_1A524D244();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v39 = v4;
        v42[0] = v34;
        *v33 = 136315138;
        v35 = [v30 localizedDescription];
        v36 = sub_1A524C674();
        v38 = v37;

        sub_1A3C2EF94(v36, v38, v42);
      }

      (*(v4 + 8))(v7, v3);
    }
  }
}

id PXSensitivityAssetMoreHelpMenuManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_1A47E1F74(char a1, void *a2, void *a3, void *a4)
{
  v70 = a4;
  v7 = sub_1A5246F24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - v15;
  v17 = sub_1A45D8754();
  v18 = *(v8 + 16);
  if (a1)
  {
    v67 = *(v8 + 16);
    v18(v16, v17, v7);
    v19 = a3;
    v20 = sub_1A5246F04();
    v21 = sub_1A524D264();

    v22 = os_log_type_enabled(v20, v21);
    v68 = v13;
    v69 = v7;
    v71 = v8;
    v66 = v19;
    if (v22)
    {
      v23 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v23 = 136315138;
      v24 = [v19 localizedTitle];
      if (v24)
      {
        v25 = v24;
        v26 = sub_1A524C674();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0xE000000000000000;
      }

      sub_1A3C2EF94(v26, v28, aBlock);
    }

    v40 = *(v8 + 8);
    v40(v16, v7);
    v41 = v70;
    v42 = [v70 navigationController];
    v43 = v42;
    if (v42)
    {
      v44 = [v42 topViewController];
      if (v44)
      {
        v45 = v44;
        aBlock[6] = &unk_1F1B457E0;
        v46 = swift_dynamicCastObjCProtocolConditional();
        if (v46)
        {
          v47 = [v46 originTransitionType];

          if (v47 == 1)
          {

            return;
          }

          if (v47 == 2)
          {
            v48 = [v41 navigationController];
            if (v48)
            {
              v49 = v48;
              v50 = [v48 presentingViewController];
            }

            else
            {
              v50 = 0;
            }

            v61 = swift_allocObject();
            *(v61 + 16) = v50;
            aBlock[4] = sub_1A47E2D1C;
            aBlock[5] = v61;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1A3C2E0D0;
            aBlock[3] = &block_descriptor_20_5;
            v62 = _Block_copy(aBlock);
            v63 = v50;
            v64 = v43;

            [v64 dismissViewControllerAnimated:1 completion:v62];

            _Block_release(v62);
            return;
          }
        }

        else
        {
        }
      }
    }

    v51 = v68;
    v67(v68, v17, v7);
    v52 = v66;
    v53 = sub_1A5246F04();
    v54 = sub_1A524D244();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v55 = 136315138;
      v56 = [v52 localizedTitle];
      if (v56)
      {
        v57 = v56;
        v58 = sub_1A524C674();
        v60 = v59;
      }

      else
      {
        v58 = 0;
        v60 = 0xE000000000000000;
      }

      sub_1A3C2EF94(v58, v60, aBlock);
    }

    v40(v51, v7);
  }

  else
  {
    v18(v10, v17, v7);
    v29 = v7;
    v30 = a3;
    v31 = a2;
    v32 = sub_1A5246F04();
    v33 = sub_1A524D244();

    if (os_log_type_enabled(v32, v33))
    {
      v71 = v8;
      v34 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v34 = 136315394;
      v35 = [v30 localizedTitle];
      if (v35)
      {
        v36 = v35;
        v37 = sub_1A524C674();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0xE000000000000000;
      }

      sub_1A3C2EF94(v37, v39, aBlock);
    }

    (*(v8 + 8))(v10, v29);
  }
}

id sub_1A47E276C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXSensitivityMoreHelpMenuDelegateHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1A47E27B0(void *a1, void *a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR___PXSensitivityAssetMoreHelpMenuManager_delegateHandler;
  *&v3[v6] = [objc_allocWithZone(type metadata accessor for PXSensitivityMoreHelpMenuDelegateHandler()) init];
  *&v3[OBJC_IVAR___PXSensitivityAssetMoreHelpMenuManager_asset] = a1;
  *&v3[OBJC_IVAR___PXSensitivityAssetMoreHelpMenuManager_sharedAlbum] = a2;
  swift_unknownObjectWeakAssign();
  v11.receiver = v3;
  v11.super_class = PXSensitivityAssetMoreHelpMenuManager;
  v7 = a1;
  v8 = a2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  swift_unknownObjectWeakAssign();
  return v9;
}

void sub_1A47E28AC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong presentingViewController])
    {
      v1 = [v2 sharedAlbum];
      type metadata accessor for PXSensitivityContentHelper();
      sub_1A45D8420(v1);
      sub_1A45D857C(v1);
      sub_1A45D830C();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }
}

void sub_1A47E2BB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1A3C4D548(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52F9790;
  *(v3 + 32) = v1;
  sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
  v4 = v1;
  v5 = sub_1A524CA14();

  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v10[4] = sub_1A47E2D14;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A3D6084C;
  v10[3] = &block_descriptor_14_6;
  v7 = _Block_copy(v10);
  v8 = v4;
  v9 = v2;

  PXSharedAlbumsDeleteSharedAlbums(v5, 0, v7);
  _Block_release(v7);
}

id sub_1A47E2D1C()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void sub_1A47E2D44(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  type metadata accessor for LemonadeAnalyticsViewTimeTracker(0);
  type metadata accessor for LemonadeViewTimeTracker();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47E2DDC(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  type metadata accessor for LemonadeViewTimeTracker();
  v5 = swift_allocObject();
  v5[3] = v3;
  v5[4] = 0;
  v5[2] = v4;
  *a1 = v5;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t type metadata accessor for LemonadeAnalyticsViewTimeTracker(uint64_t a1)
{
  result = qword_1EB17C0A0;
  if (!qword_1EB17C0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1A47E2EA8(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[3] = a2;
  result[4] = 0;
  result[2] = a1;
  return result;
}

void sub_1A47E2EEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[0] = a2;
  v9[1] = a1;
  v3 = type metadata accessor for LemonadeAnalyticsViewTimeTracker(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v2[1];
  v9[2] = *v2;
  v9[3] = v6;
  sub_1A47E3164(v2, v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1A47E322C(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_1A47E33B8(0);
  sub_1A47E344C(&qword_1EB127C30, sub_1A47E33B8, MEMORY[0x1E697FDF8]);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A47E3164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeAnalyticsViewTimeTracker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A47E31C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A47E322C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeAnalyticsViewTimeTracker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1A47E3290(void *a1, uint64_t *a2)
{
  type metadata accessor for LemonadeAnalyticsViewTimeTracker(0);
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_1A524EAB4() & 1) == 0)
  {
    sub_1A47E31C8(0, &qword_1EB1429A0, v6, type metadata accessor for LemonadeViewTimeTracker, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void sub_1A47E33B8(uint64_t a1)
{
  if (!qword_1EB127C28)
  {
    type metadata accessor for LemonadeAnalyticsViewTimeTracker(255);
    sub_1A47E344C(&qword_1EB1296B0, type metadata accessor for LemonadeAnalyticsViewTimeTracker, &unk_1A5362FD0);
    v1 = sub_1A52499C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127C28);
    }
  }
}

uint64_t sub_1A47E344C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1A47E3494()
{
  type metadata accessor for LemonadeAnalyticsViewTimeTracker(0);
  sub_1A47E31C8(0, &qword_1EB1429A0, v0, type metadata accessor for LemonadeViewTimeTracker, MEMORY[0x1E697DA80]);
  v1 = sub_1A5247C84();
  (*(*v3 + 128))(v1);

  return result;
}

void sub_1A47E358C(uint64_t a1)
{
  if (!qword_1EB1275A0)
  {
    sub_1A47E33B8(255);
    sub_1A47E344C(&qword_1EB127C30, sub_1A47E33B8, MEMORY[0x1E697FDF8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1275A0);
    }
  }
}

uint64_t objectdestroy_6Tm_2()
{
  v1 = (type metadata accessor for LemonadeAnalyticsViewTimeTracker(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  sub_1A47E31C8(0, &qword_1EB1272C8, v4, type metadata accessor for LemonadeViewTimeTracker, MEMORY[0x1E6981E90]);
  (*(*(v5 - 8) + 8))(v3, v5);
  sub_1A47E31C8(0, &qword_1EB127258, v6, type metadata accessor for LemonadeViewTimeTracker, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

double sub_1A47E37A8()
{
  type metadata accessor for LemonadeAnalyticsViewTimeTracker(0);
  sub_1A47E31C8(0, &qword_1EB1429A0, v0, type metadata accessor for LemonadeViewTimeTracker, MEMORY[0x1E697DA80]);
  v1 = sub_1A5247C84();
  (*(*v3 + 136))(v1);

  return result;
}

void sub_1A47E3880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A47E38DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(v2 + 16) != a1 || *(v2 + 24) != a2)
  {
    sub_1A524EAB4();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47E39C4(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  v5 = *(v1 + 24);
  *(v4 + 24) = *(v1 + 16);
  *(v4 + 32) = v5;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47E3A58(uint64_t a1, char a2)
{
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24) == *(v2 + 16) && *(*a1 + 32) == *(v2 + 24);
  if (a2)
  {
    if (v4)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A524EAB4();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (v4)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A524EAB4();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47E3C18()
{
  v1 = v0;
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    v22[0] = (*(*v0 + 104))();
    v22[1] = v2;
    MEMORY[0x1EEE9AC00](v22[0]);
    v21[2] = v22;
    v3 = sub_1A3D3E5DC(sub_1A3D3E6C0, v21, qword_1F17255F0);

    if (v3)
    {
      v4 = objc_opt_self();
      v5 = *MEMORY[0x1E6991CD0];
      sub_1A47E31C8(0, &qword_1EB126200, 255, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52F8E10;
      *(inited + 32) = sub_1A524C674();
      *(inited + 40) = v7;
      sub_1A3C52C70(0, &unk_1EB1265F0, 0x1E696AEC0);
      v8 = v5;
      *(inited + 48) = sub_1A524DC24();
      sub_1A3E75770(inited);
      swift_setDeallocating();
      sub_1A3F37E0C(inited + 32);
      sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
      v9 = sub_1A524C3D4();

      [v4 sendEvent:v8 withPayload:v9];
    }
  }

  if (!v0[4])
  {
    v10 = objc_opt_self();
    v0[4] = [v10 startSignpost];
    v11 = *MEMORY[0x1E6991CD8];
    sub_1A47E31C8(0, &qword_1EB126200, 255, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1A52FC9F0;
    *(v12 + 32) = sub_1A524C674();
    *(v12 + 40) = v13;
    v14 = *(*v1 + 104);
    v15 = v11;
    v14();
    v16 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v17 = sub_1A524C634();

    v18 = [v16 initWithString_];

    *(v12 + 48) = v18;
    *(v12 + 56) = sub_1A524C674();
    *(v12 + 64) = v19;
    *(v12 + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    sub_1A3E75770(v12);
    swift_setDeallocating();
    sub_1A3F24E98(0);
    swift_arrayDestroy();
    sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
    v20 = sub_1A524C3D4();

    [v10 sendEvent:v15 withPayload:v20];
  }
}

void sub_1A47E4020()
{
  v1 = v0[4];
  if (v1)
  {
    v21 = objc_opt_self();
    v2 = *MEMORY[0x1E6991E90];
    sub_1A47E31C8(0, &qword_1EB126200, 255, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    *(inited + 32) = sub_1A524C674();
    *(inited + 40) = v4;
    v5 = *(*v0 + 104);
    v20 = v5;
    v6 = v2;
    v5();
    v7 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v8 = sub_1A524C634();

    v9 = [v7 initWithString_];

    *(inited + 48) = v9;
    sub_1A3E75770(inited);
    swift_setDeallocating();
    sub_1A3F37E0C(inited + 32);
    sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
    v10 = sub_1A524C3D4();

    [v21 endSignpost:v1 forEventName:v6 withPayload:v10];

    v11 = *MEMORY[0x1E6991CE0];
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1A52FC9F0;
    *(v12 + 32) = sub_1A524C674();
    *(v12 + 40) = v13;
    v14 = v11;
    v20();
    v15 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v16 = sub_1A524C634();

    v17 = [v15 initWithString_];

    *(v12 + 48) = v17;
    *(v12 + 56) = sub_1A524C674();
    *(v12 + 64) = v18;
    *(v12 + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    sub_1A3E75770(v12);
    swift_setDeallocating();
    sub_1A3F24E98(0);
    swift_arrayDestroy();
    v19 = sub_1A524C3D4();

    [v21 sendEvent:v14 withPayload:v19];

    v0[4] = 0;
  }
}

uint64_t sub_1A47E435C()
{

  return swift_deallocClassInstance();
}

void sub_1A47E4394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A47E31C8(0, &qword_1EB126200, 255, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 16) = xmmword_1A533E260;
  *(inited + 40) = 0x80000001A53EC3C0;
  *(inited + 48) = sub_1A524CBB4();
  *(inited + 56) = 0xD00000000000001BLL;
  *(inited + 64) = 0x80000001A53EC3E0;
  v9 = *(a2 + 16);
  if (!v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(inited + 72) = sub_1A524CFC4();
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x80000001A53EC400;
  if (v9 == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(inited + 96) = sub_1A524CFC4();
  *(inited + 104) = 0xD00000000000001BLL;
  *(inited + 112) = 0x80000001A53EC420;
  if (v9 < 3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(inited + 120) = sub_1A524CFC4();
  *(inited + 128) = 0xD00000000000001CLL;
  *(inited + 136) = 0x80000001A53EC440;
  v10 = *(a3 + 16);
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(inited + 144) = sub_1A524CFC4();
  *(inited + 152) = 0xD00000000000001CLL;
  *(inited + 160) = 0x80000001A53EC460;
  if (v10 == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(inited + 168) = sub_1A524CFC4();
  *(inited + 176) = 0xD00000000000001CLL;
  *(inited + 184) = 0x80000001A53EC480;
  if (v10 >= 3)
  {
    *(inited + 192) = sub_1A524CFC4();
    *(inited + 200) = 0xD000000000000019;
    *(inited + 208) = 0x80000001A53EC4A0;
    *(inited + 216) = Int.nsNumberValue.getter(a4);
    v11 = sub_1A3E75770(inited);
    swift_setDeallocating();
    sub_1A3F24E98(0);
    swift_arrayDestroy();
    swift_beginAccess();
    *(v4 + 16) = v11;

    objc_opt_self();
    sub_1A524C634();
    sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_13:
  __break(1u);
}

void sub_1A47E4688(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1A47E31C8(0, &qword_1EB126200, 255, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A531D3E0;
  *(inited + 32) = 0x697463615F617063;
  *(inited + 40) = 0xEA00000000006E6FLL;
  *(inited + 48) = a1;
  strcpy((inited + 56), "cpa_upleveled");
  *(inited + 70) = -4864;
  v14 = a1;
  *(inited + 72) = sub_1A524CBB4();
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x80000001A53EC4F0;
  *(inited + 96) = a3;
  *(inited + 104) = 0x746E6F635F617063;
  *(inited + 112) = 0xEF65707954746E65;
  *(inited + 120) = a4;
  v15 = a3;
  v16 = a4;
  v17 = sub_1A3E75770(inited);
  swift_setDeallocating();
  sub_1A3F24E98(0);
  swift_arrayDestroy();
  swift_beginAccess();
  *(v9 + 16) = v17;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47E4F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A3C52C70(0, &unk_1EB1265F0, 0x1E696AEC0);
  v12 = sub_1A524DC24();
  (*(*v6 + 128))(a1, 0, a3, a4, v12, a5, a6);
}

uint64_t sub_1A47E4FF4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A47E502C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1A3E75770(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = 3;
  return v0;
}

PhotosUICore::LemonadeCustomizationAnalyticsName_optional __swiftcall LemonadeCustomizationAnalyticsName.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 17;
  if (rawValue < 0x11)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

PhotosUICore::LemonadeCustomizationAction_optional __swiftcall LemonadeCustomizationAction.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void sub_1A47E513C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A47E51A0()
{
  if (!qword_1EB142970)
  {
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142970);
    }
  }
}

void sub_1A47E51F0(uint64_t a1)
{
  if (!qword_1EB142980)
  {
    sub_1A3C52C70(255, &qword_1EB12B160, 0x1E69E58C0);
    v1 = sub_1A524CB74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142980);
    }
  }
}

unint64_t sub_1A47E5278()
{
  result = qword_1EB142988;
  if (!qword_1EB142988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142988);
  }

  return result;
}

unint64_t sub_1A47E52D0()
{
  result = qword_1EB142990;
  if (!qword_1EB142990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142990);
  }

  return result;
}

unint64_t sub_1A47E5328()
{
  result = qword_1EB142998;
  if (!qword_1EB142998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142998);
  }

  return result;
}

void sub_1A47E53A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A47E31C8(319, &qword_1EB1429A0, a3, type metadata accessor for LemonadeViewTimeTracker, MEMORY[0x1E697DA80]);
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for LemonadeCustomizationAnalyticsName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LemonadeCustomizationAnalyticsName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A47E55EC()
{
  result = qword_1EB128358;
  if (!qword_1EB128358)
  {
    sub_1A47E3880(255, &qword_1EB128350, sub_1A47E356C);
    sub_1A47E5688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128358);
  }

  return result;
}

unint64_t sub_1A47E5688()
{
  result = qword_1EB128640;
  if (!qword_1EB128640)
  {
    sub_1A47E356C(255);
    sub_1A47E33B8(255);
    sub_1A47E344C(&qword_1EB127C30, sub_1A47E33B8, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128640);
  }

  return result;
}

double sub_1A47E5794@<D0>(void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = a5 + *(type metadata accessor for LemonadePresentationRoot(0, a3, a4, a3) + 40);
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  sub_1A3C7A370(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);

  v7 = sub_1A524BAC4();
  a2(v7);

  return result;
}

uint64_t sub_1A47E58BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v90 = a2;
  sub_1A47E7548(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v92 = v3;
  v101 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v99 = *(a1 + 16);
  v100 = &v67 - v4;
  v98 = a1;
  sub_1A3D639BC(255);
  v5 = sub_1A5248804();
  v85 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v67 - v6;
  v7 = type metadata accessor for LemonadeNavigationContext(255);
  v8 = MEMORY[0x1E697E048];
  sub_1A47E6458(255, &qword_1EB128468, sub_1A457B820, MEMORY[0x1E697E048]);
  v10 = v9;
  v97 = *(a1 + 24);
  v11 = v97;
  v12 = sub_1A3C7A370(&qword_1EB127950, sub_1A3D639BC, MEMORY[0x1E6980A18]);
  v116 = v11;
  v117 = v12;
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1A3C7A370(&qword_1EB129D48, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  v15 = sub_1A457B848();
  v109 = v5;
  v110 = v7;
  v72 = v5;
  v69 = v10;
  v111 = v10;
  v112 = WitnessTable;
  v71 = WitnessTable;
  v113 = v14;
  v114 = v15;
  v16 = v14;
  v17 = v15;
  v70 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v88 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v95 = &v67 - v19;
  sub_1A47E6458(255, &qword_1EB1288B0, sub_1A457B99C, v8);
  v21 = v20;
  v109 = v5;
  v110 = v7;
  v68 = v7;
  v111 = v10;
  v112 = WitnessTable;
  v113 = v14;
  v114 = v17;
  v94 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_1A457B9F4();
  v24 = sub_1A457BA48();
  v109 = OpaqueTypeMetadata2;
  v110 = &type metadata for LemonadeNavigationContext.SheetContent;
  v78 = OpaqueTypeMetadata2;
  v111 = v21;
  v112 = OpaqueTypeConformance2;
  v74 = v21;
  v77 = OpaqueTypeConformance2;
  v113 = v23;
  v114 = v24;
  v76 = v23;
  v75 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v84 = v25;
  v89 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v96 = &v67 - v26;
  sub_1A457B820(255);
  v28 = v27;
  v80 = v27;
  v109 = OpaqueTypeMetadata2;
  v110 = &type metadata for LemonadeNavigationContext.SheetContent;
  v111 = v21;
  v112 = OpaqueTypeConformance2;
  v113 = v23;
  v114 = v24;
  v29 = swift_getOpaqueTypeConformance2();
  v82 = v29;
  v81 = sub_1A457B8EC();
  v109 = v25;
  v110 = v7;
  v111 = v28;
  v112 = v29;
  v113 = v16;
  v114 = v81;
  v87 = swift_getOpaqueTypeMetadata2();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v79 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v83 = &v67 - v32;
  swift_getKeyPath();
  v33 = v93;
  v34 = v92;
  sub_1A524BAA4();
  v35 = v73;
  v36 = v99;
  v37 = v97;
  sub_1A524A964();

  v38 = v100;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v39 = *(v101 + 8);
  v101 += 8;
  v91 = v39;
  v39(v38, v34);
  v102 = v109;
  v103 = v110;
  v104 = v111;
  v40 = sub_1A47E6BA4(v33, v36, v37, &unk_1F17259C0);
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1A47E7874;
  *(v41 + 24) = v40;
  v68 = swift_checkMetadataState();
  swift_checkMetadataState();
  v42 = v72;
  sub_1A524B004();

  (*(v85 + 8))(v35, v42);
  v43 = v100;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v91(v43, v34);
  v44 = v111;
  v45 = v112;
  v46 = v113;
  v47 = v114;
  v102 = v109;
  v103 = v110;
  v104 = v111;
  v105 = v112;
  v106 = v113;
  v107 = v114;
  v108 = v115;
  v48 = sub_1A47E6BA4(v33, v99, v97, &unk_1F1725998);
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1A47E77F0;
  *(v49 + 24) = v48;
  swift_checkMetadataState();
  v50 = v78;
  v51 = v95;
  sub_1A524B004();

  v52 = sub_1A3DD2224(v44, v45, v46, v47);
  (*(v88 + 8))(v51, v50, v52);
  v53 = v93;
  v54 = v100;
  v55 = v92;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v91(v54, v55);
  v102 = v109;
  v103 = v110;
  v104 = v111;
  v56 = sub_1A47E6BA4(v53, v99, v97, &unk_1F1725970);
  v57 = swift_allocObject();
  *(v57 + 16) = sub_1A47E75AC;
  *(v57 + 24) = v56;
  swift_checkMetadataState();
  v58 = v79;
  v59 = v84;
  v60 = v96;
  sub_1A524AB94();

  (*(v89 + 8))(v60, v59);
  v61 = v86;
  v62 = *(v86 + 16);
  v63 = v83;
  v64 = v87;
  v62(v83, v58, v87);
  v65 = *(v61 + 8);
  v65(v58, v64);
  v62(v90, v63, v64);
  return (v65)(v63, v64);
}

void sub_1A47E6458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

double sub_1A47E64BC@<D0>(void (*a1)()@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A457B820(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for LemonadeNavigationDestinationView(0);
  v15 = sub_1A3C7A370(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView, &unk_1A536BD00);

  LemonadeNavigationContainer.init(navigationContext:content:)(v16, sub_1A47E78F0, v14, v15, v13);
  v17 = (v13 + *(v11 + 44));
  *v17 = sub_1A457F3D8;
  v17[1] = a1;
  v17[2] = 0;
  v17[3] = 0;
  v18 = v3 + *(a2 + 40);
  v20 = *v18;
  v19 = *(v18 + 8);
  v21 = *(v18 + 16);
  v22 = *(v18 + 17);

  if (v22 != 1)
  {
    sub_1A457F3E0(v20, v19, v21, 0);
    v23 = sub_1A524D254();
    v24 = sub_1A524A014();
    sub_1A5246DF4(v23, &dword_1A3C1C000, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    v25 = sub_1A3EF9960(v20, v19, v21, 0);
    v35 = *(v7 + 8);
    v35(v9, v6, v25);
    v36 = v38;

    v26 = sub_1A524D254();
    v27 = sub_1A524A014();
    sub_1A5246DF4(v26, &dword_1A3C1C000, v27, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    v28 = sub_1A3EF9960(v20, v19, v21, 0);
    v35(v9, v6, v28);
  }

  sub_1A524BC74();
  sub_1A52481F4();
  v29 = v37;
  sub_1A457F3EC(v13, v37, sub_1A457B820);
  sub_1A47E6458(0, &qword_1EB128468, sub_1A457B820, MEMORY[0x1E697E048]);
  v31 = (v29 + *(v30 + 36));
  v32 = v39;
  *v31 = v38;
  v31[1] = v32;
  result = *&v40;
  v31[2] = v40;
  return result;
}

double sub_1A47E6868@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1A5249234();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A457B99C(0, v11, v12, v13);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a1 + 32);
  v38 = a1;
  sub_1A4546738(0, 0, v17, sub_1A47E786C, MEMORY[0x1E6981910], MEMORY[0x1E6981900], v16);
  v18 = v3 + *(a2 + 40);
  v20 = *v18;
  v19 = *(v18 + 8);
  v21 = *(v18 + 16);
  if (*(v18 + 17) != 1)
  {

    v22 = sub_1A524D254();
    v23 = sub_1A524A014();
    v37 = a3;
    v24 = v23;
    sub_1A5246DF4(v22, &dword_1A3C1C000, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    v25 = sub_1A3EF9960(v20, v19, v21, 0);
    v26 = *(v8 + 8);
    v26(v10, v7, v25);
    v35 = v7;
    v36 = v39;

    v27 = sub_1A524D254();
    v28 = sub_1A524A014();
    sub_1A5246DF4(v27, &dword_1A3C1C000, v28, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    a3 = v37;
    sub_1A5249224();
    swift_getAtKeyPath();
    v29 = sub_1A3EF9960(v20, v19, v21, 0);
    v26(v10, v35, v29);
  }

  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A457F3EC(v16, a3, sub_1A457B99C);
  sub_1A47E6458(0, &qword_1EB1288B0, sub_1A457B99C, MEMORY[0x1E697E048]);
  v31 = (a3 + *(v30 + 36));
  v32 = v40;
  *v31 = v39;
  v31[1] = v32;
  result = *&v41;
  v31[2] = v41;
  return result;
}

uint64_t sub_1A47E6BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LemonadePresentationRoot(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return v13;
}

uint64_t sub_1A47E6D0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(a1 + 16))(v10);
  v3 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v7 = sub_1A524B8E4();
  result = __swift_destroy_boxed_opaque_existential_0(v10);
  *a2 = v7;
  return result;
}

uint64_t sub_1A47E6E04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418E1E0(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootDestination, v6);

  return sub_1A487864C(v6, a1, 0, a2);
}

void sub_1A47E6EB0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1A47E7548(319, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
    if (v2 <= 0x3F)
    {
      sub_1A47E7548(319, &unk_1EB124680, sub_1A3E316EC, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A47E6FB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  sub_1A47E7548(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v12;
  v14 = *(*(v8 - 8) + 64) + 7;
  if (v11 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((v14 + (v13 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v15 <= 3)
  {
    v16 = ((a2 - v11 + 0xFFFF) >> 16) + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *(a1 + v15);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v21 = (v19 - 1) << (8 * v15);
    if (v15 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v11 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v15);
    if (*(a1 + v15))
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  if (v7 == v11)
  {
    v23 = *(v6 + 48);

    return v23(a1, v7, v5);
  }

  else
  {
    v24 = (a1 + v13) & ~v12;
    if (v10 == v11)
    {
      v25 = *(v9 + 48);

      return v25(v24);
    }

    else
    {
      v26 = *(((v14 + v24) & 0xFFFFFFFFFFFFFFF8) + 17);
      if (v26 > 1)
      {
        return (v26 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1A47E7248(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v30 = *(v7 - 8);
  v8 = *(v30 + 84);
  sub_1A47E7548(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v30 + 64);
  if (v11 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 80);
  v15 = *(*(v9 - 8) + 64);
  if (v13 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v13;
  }

  v17 = v12 + v14;
  v18 = (v12 + v14) & ~v14;
  v19 = v15 + 7;
  v20 = ((v15 + 7 + v18) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v16 >= a3)
  {
    v23 = 0;
    if (v16 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v20 <= 3)
    {
      v21 = ((a3 - v16 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v16 >= a2)
    {
LABEL_20:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *(a1 + v20) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v20) = 0;
      }

      else if (v23)
      {
        *(a1 + v20) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v8 == v16)
      {
        v26 = *(v30 + 56);

        v26(a1, a2, v8, v7);
      }

      else
      {
        v27 = (a1 + v17) & ~v14;
        if (v11 == v16)
        {
          v28 = *(v10 + 56);

          v28(v27, a2);
        }

        else
        {
          v29 = (v19 + v27) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            *(v29 + 16) = 0;
            *v29 = (a2 - 255);
            *(v29 + 8) = 0;
          }

          else
          {
            *(v29 + 17) = -a2;
          }
        }
      }

      return;
    }
  }

  v24 = ~v16 + a2;
  bzero(a1, v20);
  if (v20 <= 3)
  {
    v25 = HIWORD(v24) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v20 <= 3)
  {
    *a1 = v24;
    if (v23 > 1)
    {
LABEL_30:
      if (v23 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v23 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v23)
  {
    *(a1 + v20) = v25;
  }
}

void sub_1A47E7548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1A47E75AC@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeNavigationDestinationView(0);
  v5 = sub_1A3C7A370(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView, &unk_1A536BD00);

  LemonadeNavigationContainer.init(navigationContext:content:)(v6, sub_1A47E790C, v4, v5, a2);
  sub_1A457B820(0);
  v8 = (a2 + *(v7 + 36));
  *v8 = sub_1A457F654;
  v8[1] = a1;
  v8[2] = 0;
  v8[3] = 0;

  return result;
}

uint64_t objectdestroy_23Tm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for LemonadePresentationRoot(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  (*(*(v5 - 8) + 8))(v7, v5);
  v8 = v6[11];
  sub_1A47E7548(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  sub_1A3EF9960(*(v7 + v6[12]), *(v7 + v6[12] + 8), *(v7 + v6[12] + 16), *(v7 + v6[12] + 17));

  return swift_deallocObject();
}

uint64_t sub_1A47E7910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5249B24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A47EE6B4();
  v9 = v8;
  v32 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EE5EC(0, v10);
  v14 = v13;
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v31 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (a1 + *(type metadata accessor for AccountViewTipModifier(0) + 24));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v37) = v17;
  v38 = v18;
  sub_1A47EEA30(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v34 == 1)
  {
    v29 = sub_1A524B414();
    v41 = v29;
    sub_1A47EEA30(0, &qword_1EB124968, &type metadata for AccountViewTip, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    v39 = &type metadata for AccountViewTip;
    v40 = sub_1A3D810D4();
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v34 = *a1;
    v35 = v19;
    v36 = v20;
    sub_1A47EEA30(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    sub_1A524B924();
    v30 = v9;
    *v7 = sub_1A524B6E4();
    (*(v5 + 104))(v7, *MEMORY[0x1E697C8C0], v4);
    sub_1A524A834();

    (*(v5 + 8))(v7, v4);

    sub_1A47EDCA0(&v37, sub_1A47EE9FC);
    v21 = [objc_opt_self() secondaryLabelColor];
    v34 = sub_1A524B284();
    v37 = MEMORY[0x1E69815C0];
    v38 = MEMORY[0x1E6981580];
    swift_getOpaqueTypeConformance2();
    v22 = v30;
    v23 = v31;
    sub_1A524A854();

    (*(v32 + 8))(v12, v22);
    v24 = v33;
    (*(v33 + 32))(a2, v23, v14);
    v25 = 0;
    v26 = v24;
  }

  else
  {
    v25 = 1;
    v26 = v33;
  }

  return (*(v26 + 56))(a2, v25, 1, v14);
}

uint64_t sub_1A47E7DE0()
{
  sub_1A524CC54();
  *(v0 + 40) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47E7E74, v2, v1);
}

uint64_t sub_1A47E7E74()
{
  v1 = *(v0 + 32);

  v2 = (v1 + *(type metadata accessor for AccountViewTipModifier(0) + 24));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 48) = 1;
  sub_1A47EEA30(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A47E7F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v22[1] = a3;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1A47EE47C(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524BC74();
  v14 = v13;
  v15 = &v11[*(v9 + 36)];
  sub_1A47E7910(v4, v15);
  sub_1A47EE558(0);
  v17 = (v15 + *(v16 + 36));
  *v17 = v12;
  v17[1] = v14;
  sub_1A47EE4C4(0);
  (*(*(v18 - 8) + 16))(v11, a1, v18);
  sub_1A47ED8A8(v4, v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountViewTipModifier);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = swift_allocObject();
  sub_1A47EDD00(v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for AccountViewTipModifier);
  sub_1A47EE91C();
  sub_1A524A634();

  return sub_1A47EDA10(v11, sub_1A47EE47C);
}

uint64_t sub_1A47E8168@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F31578(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ProfileButton(0);
  sub_1A47ED8A8(v1 + *(v10 + 36), v9, sub_1A3F31578);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5247E04();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1A47E8388(uint64_t a1@<X8>)
{
  v2 = v1;
  v99 = sub_1A5247E04();
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v96 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v95 = &v91 - v6;
  v108 = sub_1A5243524();
  v101 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v100 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EA9D4(0);
  v102 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EBEB4(0);
  v106 = *(v11 - 8);
  v107 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EC304(0);
  v109 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v110 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EC34C(0);
  v112 = *(v15 - 8);
  v113 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v111 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1A5246E54();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ProfileButton(0);
  v98 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v105 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v91 - v22;
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A47EAFFC(&qword_1EB12A660, type metadata accessor for ProfileButton, &unk_1A5363588);
  v115 = v19;
  MEMORY[0x1A5905890](v19, v27);
  v28 = sub_1A5246E94();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 48))(v26, 1, v28);
  v114 = a1;
  v116 = v2;
  if (v30 == 1)
  {
    sub_1A47EDCA0(v26, sub_1A3E73E5C);
  }

  else
  {
    sub_1A47ED8A8(v2, v23, type metadata accessor for ProfileButton);
    sub_1A5246E44();
    v31 = sub_1A5246E84();
    v92 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v32 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v117 = v91;
      *v32 = 136446210;
      v33 = sub_1A524A694();
      v35 = v34;
      sub_1A47EDCA0(v23, type metadata accessor for ProfileButton);
      sub_1A3C2EF94(v33, v35, &v117);
    }

    (*(v93 + 8))(v18, v94);
    sub_1A47EDCA0(v23, type metadata accessor for ProfileButton);
    (*(v29 + 8))(v26, v28);
  }

  *v10 = sub_1A524BC74();
  *(v10 + 1) = v36;
  sub_1A47EC514(0);
  sub_1A47E90E4(v2, &v10[*(v37 + 44)]);
  v38 = v2 + *(v115 + 64);
  v39 = *v38;
  v40 = *(v38 + 8);
  v121 = v39;
  v122 = v40;
  sub_1A47EEA30(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  v94 = v41;
  sub_1A524B6C4();
  v42 = v117;
  v43 = v118;
  v44 = v119;
  sub_1A47EAB00(0, &qword_1EB1239F0, sub_1A47EAB84, type metadata accessor for AccountViewTipModifier, MEMORY[0x1E697E830]);
  v46 = &v10[*(v45 + 36)];
  *v46 = v42;
  *(v46 + 1) = v43;
  v46[16] = v44;
  v47 = type metadata accessor for AccountViewTipModifier(0);
  sub_1A5247C74();
  v48 = &v46[*(v47 + 24)];
  v121 = 0;
  sub_1A524B694();
  v49 = v118;
  *v48 = v117;
  *(v48 + 1) = v49;
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v50 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v50 profileButtonShapeOutset];
  v52 = v51;

  sub_1A47EAA1C(0);
  v54 = &v10[*(v53 + 36)];
  *v54 = -v52;
  *(v54 + 8) = 0;
  v55 = sub_1A524BC14();
  v57 = v56;
  v58 = v102;
  v59 = &v10[*(v102 + 36)];
  sub_1A47EA1BC(v59);
  sub_1A47EB124(0);
  v61 = (v59 + *(v60 + 36));
  *v61 = v55;
  v61[1] = v57;
  v62 = v95;
  sub_1A47E8168(v95);
  v63 = v97;
  v64 = v96;
  v65 = v99;
  (*(v97 + 104))(v96, *MEMORY[0x1E697DBA8], v99);
  sub_1A5247DF4();
  v66 = *(v63 + 8);
  v66(v64, v65);
  v66(v62, v65);
  v117 = sub_1A524B3A4();
  sub_1A5248204();
  v67 = v100;
  sub_1A5243514();
  v68 = sub_1A47EBF88();
  v69 = sub_1A47EAFFC(&unk_1EB1290A0, MEMORY[0x1E69C2500], MEMORY[0x1E69C24F8]);
  v70 = v103;
  v71 = v108;
  sub_1A524A944();
  (*(v101 + 8))(v67, v71);
  sub_1A47EDA10(v10, sub_1A47EA9D4);
  v117 = sub_1A3C38BD4(0xD000000000000027);
  v118 = v72;
  sub_1A3D5F9DC();
  v73 = sub_1A524A464();
  v75 = v74;
  LOBYTE(v62) = v76;
  v117 = v58;
  v118 = v71;
  v119 = v68;
  v120 = v69;
  swift_getOpaqueTypeConformance2();
  v77 = v110;
  v78 = v107;
  sub_1A524AC84();
  sub_1A3E04DF4(v73, v75, v62 & 1);

  (*(v106 + 8))(v70, v78);
  v79 = v116;
  v80 = (v116 + *(v115 + 60));
  v81 = *v80;
  v82 = *(v80 + 1);
  LOBYTE(v117) = v81;
  v118 = v82;
  sub_1A524B6A4();
  LOBYTE(v117) = v121;
  v83 = v105;
  sub_1A47ED8A8(v79, v105, type metadata accessor for ProfileButton);
  v84 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v85 = swift_allocObject();
  sub_1A47EDD00(v83, v85 + v84, type metadata accessor for ProfileButton);
  sub_1A47EC3E4();
  v86 = v111;
  sub_1A524B144();

  sub_1A47EDA10(v77, sub_1A47EC304);
  sub_1A47ED8A8(v116, v83, type metadata accessor for ProfileButton);
  v87 = swift_allocObject();
  sub_1A47EDD00(v83, v87 + v84, type metadata accessor for ProfileButton);
  v88 = v114;
  (*(v112 + 32))(v114, v86, v113);
  sub_1A47EB044(0, &qword_1EB123E28, sub_1A47EC34C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  v90 = (v88 + *(v89 + 36));
  *v90 = 0;
  v90[1] = 0;
  v90[2] = sub_1A47EDBE8;
  v90[3] = v87;
}

uint64_t sub_1A47E90E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a2;
  sub_1A47EADD4(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for ProfileButton(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A47EAD20(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  sub_1A47ED8A8(a1, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ProfileButton);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  sub_1A47EDD00(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for ProfileButton);
  type metadata accessor for ProfileIcon(0);
  sub_1A47EC22C(qword_1EB16F080, type metadata accessor for ProfileIcon, &unk_1A53636BC);
  sub_1A524B704();
  sub_1A47E99C0(v8);
  v22 = *(v14 + 16);
  v22(v16, v19, v13);
  sub_1A47EED90(v8, v5, sub_1A47EADD4);
  v23 = v29;
  v24 = v22(v29, v16, v13);
  sub_1A47EACB0(0, v24);
  sub_1A47EED90(v5, &v23[*(v25 + 48)], sub_1A47EADD4);
  sub_1A47EDA10(v8, sub_1A47EADD4);
  v26 = *(v14 + 8);
  v26(v19, v13);
  sub_1A47EDA10(v5, sub_1A47EADD4);
  return (v26)(v16, v13);
}

void sub_1A47E945C(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524CCB4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1A524CC54();
  v10 = sub_1A524CC44();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  sub_1A3D4D930(0, 0, v8, &unk_1A5363728, v11);

  v13 = *(a1 + 16);
  LOBYTE(a1) = *(a1 + 24);

  if ((a1 & 1) == 0)
  {
    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(v13);
    (*(v3 + 8))(v5, v2);
    v13 = v16[1];
  }

  if (v13)
  {
    sub_1A5245A84();
  }

  __break(1u);
}

uint64_t sub_1A47E9698(double a1)
{
  v2 = sub_1A5247634();
  v1[2] = v2;
  v1[3] = *(v2 - 8);
  v1[4] = swift_task_alloc();
  sub_1A524CC54();
  v1[5] = sub_1A524CC44();
  v4 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47E9788, v4, v3);
}

uint64_t sub_1A47E9788()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];

  PXDisplayCollectionDetailedCountsMake();
  (*(v3 + 104))(v1, *MEMORY[0x1E6982AE0], v2);
  sub_1A3D810D4();
  sub_1A5247424();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A47E9858()
{
  v0 = sub_1A5247E14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524A274();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = 0x4040000000000000;
  (*(v1 + 104))(v3, *MEMORY[0x1E697DC28], v0, v5);
  sub_1A52434F4();
  (*(v1 + 8))(v3, v0);
  sub_1A3F93828();
  return sub_1A52480B4();
}

uint64_t sub_1A47E99C0@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v62 = type metadata accessor for ProfileButton(0);
  v59 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = v2;
  v61 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1A52492A4();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EEA80(0);
  v58 = v5;
  v56 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - v8;
  v10 = sub_1A52443B4();
  v53 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EB648(0, &qword_1EB128990, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697BF30]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v52 - v16;
  sub_1A47EAB00(0, &qword_1EB1231C0, sub_1A47EAE70, sub_1A43D0964, MEMORY[0x1E697E830]);
  v63 = *(v18 - 8);
  v64 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v21 = v1;
  v22 = sub_1A47EC57C();
  if ((v22 & 0x100000000) != 0)
  {
    v49 = v64;
    v50 = *(v63 + 56);
    v51 = v65;

    return v50(v51, 1, 1, v49);
  }

  else
  {
    LODWORD(v66) = v22;
    BYTE4(v66) = 0;
    v68[0] = 1065353216;
    sub_1A47EEDF8();
    sub_1A5248064();
    sub_1A3C52C70(0, &unk_1EB120A50, off_1E771DF58);
    v23 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v23 minimumDisplayedProgress];

    v52 = v21;
    [*v21 isPaused];
    sub_1A524B3C4();
    sub_1A52492B4();

    sub_1A4775C00();
    sub_1A47EAFFC(&qword_1EB128FA8, MEMORY[0x1E69C2E80], MEMORY[0x1E69C2E78]);
    sub_1A524A8B4();
    (*(v53 + 8))(v12, v10);
    (*(v15 + 8))(v17, v14);
    sub_1A5249294();
    sub_1A524BD54();
    v24 = sub_1A47EAFFC(&qword_1EB128030, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    v25 = v57;
    sub_1A5247D44();

    (*(v55 + 8))(v4, v25);
    v26 = v56;
    v27 = v58;
    (*(v56 + 16))(v54, v9, v58);
    v66 = v25;
    v67 = v24;
    swift_getOpaqueTypeConformance2();
    v28 = sub_1A5248264();
    (*(v26 + 8))(v9, v27);
    sub_1A47EAB00(0, &qword_1EB128680, sub_1A47EAEFC, sub_1A400F5B4, MEMORY[0x1E697E830]);
    *&v20[*(v29 + 36)] = v28;
    v30 = v61;
    sub_1A47ED8A8(v52, v61, type metadata accessor for ProfileButton);
    v31 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v32 = swift_allocObject();
    sub_1A47EDD00(v30, v32 + v31, type metadata accessor for ProfileButton);
    sub_1A47EB388(0, &qword_1EB128368, &qword_1EB128680, sub_1A47EAEFC, MEMORY[0x1E69805D8]);
    v34 = &v20[*(v33 + 36)];
    *v34 = sub_1A47EEE4C;
    *(v34 + 1) = v32;
    *(v34 + 2) = 0;
    *(v34 + 3) = 0;
    v35 = sub_1A524A064();
    sub_1A5247BC4();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    sub_1A47EAE70(0);
    v45 = &v20[*(v44 + 36)];
    *v45 = v35;
    *(v45 + 1) = v37;
    *(v45 + 2) = v39;
    *(v45 + 3) = v41;
    *(v45 + 4) = v43;
    v45[40] = 0;
    v46 = v64;
    v47 = v65;
    *&v20[*(v64 + 36)] = 0xBFF0000000000000;
    sub_1A3D21DFC(v20, v47);
    return (*(v63 + 56))(v47, 0, 1, v46);
  }
}

uint64_t sub_1A47EA1BC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ProfileButton(0);
  v4 = *(v3 - 1);
  v73 = v3;
  v74 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v75 = v5;
  v76 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1A52492A4();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EEA80(0);
  v69 = v8;
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v62 - v11;
  sub_1A47EB2FC(0);
  v70 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EB044(0, &qword_1EB123E48, sub_1A47EB25C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  v77 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v62 - v16;
  v17 = sub_1A5249234();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + 32);
  v22 = v1;
  v23 = *(v1 + 40);

  if ((v23 & 1) == 0)
  {
    v24 = sub_1A524D254();
    v25 = v15;
    v26 = a1;
    v27 = sub_1A524A014();
    sub_1A5246DF4(v24, &dword_1A3C1C000, v27, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    a1 = v26;
    v15 = v25;
    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(v21);
    (*(v18 + 8))(v20, v17);
    v21 = v79;
  }

  if (v21 && (v28 = sub_1A3D35CBC(), , v28 != 4))
  {
    v31 = v71;
    v63 = v22;
    sub_1A47EC7A0(v28, v71);
    sub_1A5249294();
    sub_1A524BD24();
    sub_1A524BCD4();

    v32 = sub_1A47EAFFC(&qword_1EB128030, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    v62 = a1;
    v33 = v32;
    v34 = v65;
    v35 = v68;
    sub_1A5247D44();

    (*(v66 + 8))(v7, v35);
    v36 = v67;
    v37 = v69;
    (*(v67 + 16))(v64, v34, v69);
    v79 = v35;
    v80 = v33;
    swift_getOpaqueTypeConformance2();
    v38 = sub_1A5248264();
    (*(v36 + 8))(v34, v37);
    v69 = v15;
    sub_1A47EAB00(0, &qword_1EB123D20, sub_1A47EB41C, sub_1A400F5B4, MEMORY[0x1E697E830]);
    *(v31 + *(v39 + 36)) = v38;
    v40 = v73;
    v41 = v63;
    v42 = (v63 + *(v73 + 14));
    v43 = *v42;
    v44 = v42[1];
    v79 = v43;
    v80 = v44;
    sub_1A47EEA30(0, &qword_1EB121BF0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v45 = v78;
    sub_1A524BE94();
    v47 = v46;
    v49 = v48;
    sub_1A47EB388(0, &qword_1EB1236E8, &qword_1EB123D20, sub_1A47EB41C, MEMORY[0x1E697E080]);
    v51 = (v31 + *(v50 + 36));
    *v51 = v45;
    v51[1] = v45;
    v51[2] = v47;
    v51[3] = v49;
    v52 = *(v41 + *(v40 + 12));
    v53 = (v31 + *(v70 + 36));
    *v53 = v52;
    v53[1] = -v52;
    LOBYTE(v79) = v28;
    v73 = type metadata accessor for ProfileButton;
    v54 = v76;
    sub_1A47ED8A8(v41, v76, type metadata accessor for ProfileButton);
    v55 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v56 = swift_allocObject();
    sub_1A47EDD00(v54, v56 + v55, type metadata accessor for ProfileButton);
    sub_1A47EB804();
    sub_1A3D3743C();
    v57 = v72;
    sub_1A524B144();

    sub_1A47EDA10(v31, sub_1A47EB2FC);
    sub_1A47ED8A8(v63, v54, v73);
    v58 = swift_allocObject();
    a1 = v62;
    sub_1A47EDD00(v54, v58 + v55, type metadata accessor for ProfileButton);
    v59 = v77;
    v60 = (v57 + *(v77 + 36));
    *v60 = sub_1A47EF084;
    v60[1] = v58;
    v15 = v69;
    v60[2] = 0;
    v60[3] = 0;
    sub_1A3D21D60(v57, a1);
    v30 = v59;
    v29 = 0;
  }

  else
  {
    v29 = 1;
    v30 = v77;
  }

  return (*(v15 + 56))(a1, v29, 1, v30);
}

void sub_1A47EAA1C(uint64_t a1)
{
  if (!qword_1EB123500)
  {
    sub_1A47EAB00(255, &qword_1EB1239F0, sub_1A47EAB84, type metadata accessor for AccountViewTipModifier, MEMORY[0x1E697E830]);
    sub_1A47EE324(255, &qword_1EB127C88, sub_1A47EB0D0, MEMORY[0x1E69817C8], MEMORY[0x1E697FD48]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123500);
    }
  }
}

void sub_1A47EAB00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A47EAB84(uint64_t a1)
{
  if (!qword_1EB121510)
  {
    sub_1A47EAC18(255);
    sub_1A47EAFFC(&qword_1EB121050, sub_1A47EAC18, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121510);
    }
  }
}

void sub_1A47EAC4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A47EACB0(uint64_t a1, double a2)
{
  if (!qword_1EB121B68)
  {
    sub_1A47EAD20(255);
    sub_1A47EADD4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB121B68);
    }
  }
}

void sub_1A47EAD20(uint64_t a1)
{
  if (!qword_1EB121B70)
  {
    type metadata accessor for ProfileIcon(255);
    sub_1A47EC22C(qword_1EB16F080, type metadata accessor for ProfileIcon, &unk_1A53636BC);
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121B70);
    }
  }
}

void sub_1A47EADD4(uint64_t a1)
{
  if (!qword_1EB1231B8)
  {
    sub_1A47EAB00(255, &qword_1EB1231C0, sub_1A47EAE70, sub_1A43D0964, MEMORY[0x1E697E830]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1231B8);
    }
  }
}

void sub_1A47EAE70(uint64_t a1)
{
  if (!qword_1EB1233F0)
  {
    sub_1A47EB388(255, &qword_1EB128368, &qword_1EB128680, sub_1A47EAEFC, MEMORY[0x1E69805D8]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1233F0);
    }
  }
}

void sub_1A47EAEFC(uint64_t a1, double a2)
{
  if (!qword_1EB1275F0)
  {
    sub_1A47EB648(255, &qword_1EB128990, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697BF30]);
    sub_1A52443B4();
    sub_1A4775C00();
    sub_1A47EAFFC(&qword_1EB128FA8, MEMORY[0x1E69C2E80], MEMORY[0x1E69C2E78]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1275F0);
    }
  }
}

uint64_t sub_1A47EAFFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A47EB044(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A47EB0D0()
{
  result = qword_1EB127430;
  if (!qword_1EB127430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127430);
  }

  return result;
}

void sub_1A47EB124(uint64_t a1)
{
  if (!qword_1EB122F18)
  {
    sub_1A47EB1CC(255);
    sub_1A47EBD40(&qword_1EB123E38, sub_1A47EB1CC, sub_1A47EBDB0, MEMORY[0x1E6982090]);
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122F18);
    }
  }
}

void sub_1A47EB1CC(uint64_t a1)
{
  if (!qword_1EB123E40)
  {
    sub_1A47EB044(255, &qword_1EB123E48, sub_1A47EB25C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123E40);
    }
  }
}

void sub_1A47EB25C(uint64_t a1, double a2)
{
  if (!qword_1EB121DA0)
  {
    sub_1A47EB2FC(255);
    sub_1A47EB804();
    sub_1A3D3743C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121DA0);
    }
  }
}

void sub_1A47EB2FC(uint64_t a1)
{
  if (!qword_1EB123338)
  {
    sub_1A47EB388(255, &qword_1EB1236E8, &qword_1EB123D20, sub_1A47EB41C, MEMORY[0x1E697E080]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123338);
    }
  }
}

void sub_1A47EB388(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    sub_1A47EAB00(255, a3, a4, sub_1A400F5B4, MEMORY[0x1E697E830]);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A47EB41C(uint64_t a1)
{
  if (!qword_1EB121CF0)
  {
    sub_1A47EAB00(255, &qword_1EB122458, sub_1A47EB4B8, sub_1A47EB72C, MEMORY[0x1E697F960]);
    v1 = sub_1A524B514();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121CF0);
    }
  }
}

void sub_1A47EB4EC(uint64_t a1)
{
  if (!qword_1EB1275E8)
  {
    sub_1A47EB5B4(255);
    sub_1A47EC07C(&qword_1EB128318, sub_1A47EB5B4, sub_1A43D4E28, sub_1A47EB6A8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1275E8);
    }
  }
}

void sub_1A47EB5B4(uint64_t a1)
{
  if (!qword_1EB128310)
  {
    sub_1A429B8A0();
    sub_1A47EB648(255, &qword_1EB127AC0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E69805F0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128310);
    }
  }
}

void sub_1A47EB648(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void *))
{
  if (!*a2)
  {
    v10[6] = v5;
    v10[7] = v6;
    v10[0] = a3;
    v10[1] = a3;
    v10[2] = a4;
    v10[3] = a4;
    v8 = a5(0, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A47EB6A8()
{
  result = qword_1EB127AC8;
  if (!qword_1EB127AC8)
  {
    sub_1A47EB648(255, &qword_1EB127AC0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E69805F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127AC8);
  }

  return result;
}

void sub_1A47EB760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A47EB804()
{
  result = qword_1EB123340;
  if (!qword_1EB123340)
  {
    sub_1A47EB2FC(255);
    sub_1A47EB884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123340);
  }

  return result;
}

unint64_t sub_1A47EB884()
{
  result = qword_1EB1236F0;
  if (!qword_1EB1236F0)
  {
    sub_1A47EB388(255, &qword_1EB1236E8, &qword_1EB123D20, sub_1A47EB41C, MEMORY[0x1E697E080]);
    sub_1A47EB930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1236F0);
  }

  return result;
}

unint64_t sub_1A47EB930()
{
  result = qword_1EB123D28;
  if (!qword_1EB123D28)
  {
    sub_1A47EAB00(255, &qword_1EB123D20, sub_1A47EB41C, sub_1A400F5B4, MEMORY[0x1E697E830]);
    sub_1A47EBD40(&qword_1EB121CF8, sub_1A47EB41C, sub_1A47EBA68, MEMORY[0x1E6981600]);
    sub_1A47EAFFC(&qword_1EB127C68, sub_1A400F5B4, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123D28);
  }

  return result;
}

unint64_t sub_1A47EBA68()
{
  result = qword_1EB122460;
  if (!qword_1EB122460)
  {
    sub_1A47EAB00(255, &qword_1EB122458, sub_1A47EB4B8, sub_1A47EB72C, MEMORY[0x1E697F960]);
    sub_1A47EBB2C();
    sub_1A47EBC18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122460);
  }

  return result;
}

unint64_t sub_1A47EBB2C()
{
  result = qword_1EB1226F0;
  if (!qword_1EB1226F0)
  {
    sub_1A47EB4B8(255);
    sub_1A47EB5B4(255);
    sub_1A47EC07C(&qword_1EB128318, sub_1A47EB5B4, sub_1A43D4E28, sub_1A47EB6A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1226F0);
  }

  return result;
}

unint64_t sub_1A47EBC18()
{
  result = qword_1EB1227F0;
  if (!qword_1EB1227F0)
  {
    sub_1A47EB72C(255);
    sub_1A47EBC90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1227F0);
  }

  return result;
}

unint64_t sub_1A47EBC90()
{
  result = qword_1EB128778;
  if (!qword_1EB128778)
  {
    sub_1A47EB7C8(255);
    sub_1A47EAFFC(&qword_1EB128AC0, sub_1A421FEA8, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128778);
  }

  return result;
}

uint64_t sub_1A47EBD40(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

unint64_t sub_1A47EBDB0()
{
  result = qword_1EB123E50;
  if (!qword_1EB123E50)
  {
    sub_1A47EB044(255, &qword_1EB123E48, sub_1A47EB25C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A47EB2FC(255);
    sub_1A47EB804();
    sub_1A3D3743C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123E50);
  }

  return result;
}

void sub_1A47EBEB4(uint64_t a1)
{
  if (!qword_1EB121F00)
  {
    sub_1A47EA9D4(255);
    sub_1A5243524();
    sub_1A47EBF88();
    sub_1A47EAFFC(&unk_1EB1290A0, MEMORY[0x1E69C2500], MEMORY[0x1E69C24F8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121F00);
    }
  }
}

unint64_t sub_1A47EBF88()
{
  result = qword_1EB123270;
  if (!qword_1EB123270)
  {
    sub_1A47EA9D4(255);
    sub_1A47EC07C(&qword_1EB123508, sub_1A47EAA1C, sub_1A47EC108, sub_1A47EC274);
    sub_1A47EAFFC(&qword_1EB122F20, sub_1A47EB124, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123270);
  }

  return result;
}

uint64_t sub_1A47EC07C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A47EC108()
{
  result = qword_1EB1239F8;
  if (!qword_1EB1239F8)
  {
    sub_1A47EAB00(255, &qword_1EB1239F0, sub_1A47EAB84, type metadata accessor for AccountViewTipModifier, MEMORY[0x1E697E830]);
    sub_1A47EAFFC(&qword_1EB121518, sub_1A47EAB84, MEMORY[0x1E6981880]);
    sub_1A47EC22C(qword_1EB186E58, type metadata accessor for AccountViewTipModifier, &unk_1A536366C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1239F8);
  }

  return result;
}

uint64_t sub_1A47EC22C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A47EC274()
{
  result = qword_1EB127C90;
  if (!qword_1EB127C90)
  {
    sub_1A47EE324(255, &qword_1EB127C88, sub_1A47EB0D0, MEMORY[0x1E69817C8], MEMORY[0x1E697FD48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127C90);
  }

  return result;
}

void sub_1A47EC34C(uint64_t a1)
{
  if (!qword_1EB121D98)
  {
    sub_1A47EC304(255);
    sub_1A47EC3E4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121D98);
    }
  }
}

unint64_t sub_1A47EC3E4()
{
  result = qword_1EB123F30;
  if (!qword_1EB123F30)
  {
    sub_1A47EC304(255);
    sub_1A47EA9D4(255);
    sub_1A5243524();
    sub_1A47EBF88();
    sub_1A47EAFFC(&unk_1EB1290A0, MEMORY[0x1E69C2500], MEMORY[0x1E69C24F8]);
    swift_getOpaqueTypeConformance2();
    sub_1A47EAFFC(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123F30);
  }

  return result;
}

void sub_1A47EC514(uint64_t a1)
{
  if (!qword_1EB124408)
  {
    sub_1A47EAC18(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124408);
    }
  }
}

unint64_t sub_1A47EC57C()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &unk_1EB120A50, off_1E771DF58);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  if ([v5 simulateDisplayedProgress])
  {
    [v5 simulatedProgressValue];
  }

  else
  {
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);

    if ((v8 & 1) == 0)
    {
      v10 = sub_1A524D254();
      v11 = sub_1A524A014();
      sub_1A5246DF4(v10, &dword_1A3C1C000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      j__swift_release(v7);
      v9 = (*(v2 + 8))(v4, v1);
      v7 = v18[1];
    }

    if (!v7 || (v12 = v0, v13 = (*(*v7 + 192))(v9), , (v13 & 1) == 0))
    {

      v16 = 0;
      v15 = 1;
      return v16 | (v15 << 32);
    }

    [*v12 progress];
  }

  v14 = v6;

  v15 = 0;
  v16 = v14;
  return v16 | (v15 << 32);
}

uint64_t sub_1A47EC7A0@<X0>(unsigned __int8 a1@<W0>, uint64_t a3@<X8>)
{
  sub_1A47EAB00(0, &qword_1EB1429F0, sub_1A47EB4B8, sub_1A47EB72C, MEMORY[0x1E697F948]);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  sub_1A47EB760(0, &qword_1EB1429F8, sub_1A47EB4EC, MEMORY[0x1E697F948]);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v40 - v9;
  sub_1A47EB4B8(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A524B554();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47EB4EC(0);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v34 = sub_1A524B464();
      type metadata accessor for ProfileButton(0);
      sub_1A524BC74();
      sub_1A52481F4();
      *(v55 + 6) = v59;
      *(&v55[1] + 6) = v60;
      *(&v55[2] + 6) = v61;
      *v57 = v34;
      *&v57[8] = 256;
      *&v57[10] = v55[0];
      *&v57[26] = v55[1];
      *&v57[42] = v55[2];
      *&v57[56] = *(&v61 + 1);
      v50 = *v57;
      v51 = *&v57[16];
      v52 = *&v57[32];
      v53 = *&v57[48];
      v58 = 0;
      LOBYTE(v54) = 0;
    }

    else
    {
      v37 = sub_1A524B3C4();
      type metadata accessor for ProfileButton(0);
      sub_1A524BC74();
      sub_1A52481F4();
      *(v55 + 6) = v59;
      *(&v55[1] + 6) = v60;
      *(&v55[2] + 6) = v61;
      *v57 = v37;
      *&v57[8] = 256;
      *&v57[10] = v55[0];
      *&v57[26] = v55[1];
      *&v57[42] = v55[2];
      *&v57[56] = *(&v61 + 1);
      v50 = *v57;
      v51 = *&v57[16];
      v52 = *&v57[32];
      v53 = *&v57[48];
      v58 = 1;
      LOBYTE(v54) = 1;
    }

    sub_1A47ED8A8(v57, v55, sub_1A47EB7C8);
    sub_1A47EB7C8(0);
    sub_1A47EBC90();
    sub_1A5249744();
    v38 = v55[3];
    *(v7 + 2) = v55[2];
    *(v7 + 3) = v38;
    v7[64] = v56;
    v39 = v55[1];
    *v7 = v55[0];
    *(v7 + 1) = v39;
    swift_storeEnumTagMultiPayload();
    sub_1A47EB72C(0);
    sub_1A47EBB2C();
    sub_1A47EBC18();
    sub_1A5249744();
    return sub_1A47EDCA0(v57, sub_1A47EB7C8);
  }

  else
  {
    v42 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = v20;
    v44 = v11;
    v45 = a3;
    sub_1A524B544();
    (*(v14 + 104))(v16, *MEMORY[0x1E6981630], v13);
    v41 = sub_1A524B5C4();

    (*(v14 + 8))(v16, v13);
    type metadata accessor for ProfileButton(0);
    sub_1A524BC74();
    sub_1A52481F4();
    v21 = *v57;
    v22 = v57[8];
    if (a1)
    {
      v23 = *&v57[16];
      v24 = v57[24];
      v25 = *&v57[32];
      v26 = *&v57[40];
      v27 = sub_1A524B434();
      v28 = sub_1A524B464();
    }

    else
    {
      v23 = *&v57[16];
      v24 = v57[24];
      v25 = *&v57[32];
      v26 = *&v57[40];
      v27 = sub_1A524B434();
      v28 = sub_1A524B3B4();
    }

    LOBYTE(v59) = v22;
    v58 = v24;
    *&v50 = v41;
    *(&v50 + 1) = v21;
    LOBYTE(v51) = v22;
    *(&v51 + 1) = v23;
    LOBYTE(v52) = v24;
    *(&v52 + 1) = v25;
    *&v53 = v26;
    *(&v53 + 1) = v27;
    v54 = v28;
    sub_1A524A164();
    sub_1A47EB5B4(0);
    v30 = v29;
    v31 = sub_1A47EC07C(&qword_1EB128318, sub_1A47EB5B4, sub_1A43D4E28, sub_1A47EB6A8);
    v32 = v42;
    sub_1A524A8F4();
    v55[2] = v52;
    v55[3] = v53;
    v56 = v54;
    v55[0] = v50;
    v55[1] = v51;
    sub_1A47EDCA0(v55, sub_1A47EB5B4);
    v33 = v43;
    (*(v43 + 16))(v47, v32, v18);
    swift_storeEnumTagMultiPayload();
    *&v50 = v30;
    *(&v50 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    v35 = v48;
    sub_1A5249744();
    sub_1A47EED90(v35, v7, sub_1A47EB4B8);
    swift_storeEnumTagMultiPayload();
    sub_1A47EB72C(0);
    sub_1A47EBB2C();
    sub_1A47EBC18();
    sub_1A5249744();
    sub_1A47EDA10(v35, sub_1A47EB4B8);
    return (*(v33 + 8))(v32, v18);
  }
}

uint64_t sub_1A47ED104(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_1A5249DE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ProfileButton(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = *a2;
  v18[15] = *a1;
  v18[14] = v13;
  sub_1A3D3743C();
  result = sub_1A524C594();
  if ((result & 1) == 0)
  {
    sub_1A524BCF4();
    sub_1A524BCA4();

    sub_1A524BCD4();

    MEMORY[0x1EEE9AC00](v15);
    *&v18[-16] = a3;
    sub_1A47ED8A8(a3, &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ProfileButton);
    v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v17 = swift_allocObject();
    sub_1A47EDD00(&v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16, type metadata accessor for ProfileButton);
    sub_1A5249DD4();
    sub_1A52483C4();

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_1A47ED3C4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A3F31578(0);

  return swift_storeEnumTagMultiPayload();
}

void *sub_1A47ED418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  *(a4 + 32) = swift_getKeyPath();
  *(a4 + 40) = 0;
  *(a4 + 48) = swift_getKeyPath();
  *(a4 + 56) = 0;
  v6 = type metadata accessor for ProfileButton(0);
  sub_1A47EDD00(a3, a4 + v6[9], sub_1A47EDD68);
  *(a4 + v6[10]) = 0x402C000000000000;
  *(a4 + v6[11]) = 0x402A000000000000;
  *(a4 + v6[12]) = 0x3FF0000000000000;
  *(a4 + v6[13]) = 0x3FF0000000000000;
  v7 = (a4 + v6[14]);
  sub_1A524B694();
  *v7 = v11;
  v7[1] = v12;
  v8 = a4 + v6[15];
  sub_1A524B694();
  *v8 = v11;
  *(v8 + 8) = v12;
  v9 = a4 + v6[16];
  result = sub_1A524B694();
  *v9 = v11;
  *(v9 + 8) = v12;
  return result;
}

double sub_1A47ED57C@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LemonadeProfileIconView(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A4321AA0();
  if ((MEMORY[0x1A590D320](v5) & 1) == 0)
  {
    sub_1A47EE324(0, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
    sub_1A52480D4();
    v7 = *v12;
    sub_1A5243504();
    v6.n128_f64[0] = v7 + v6.n128_f64[0] + v6.n128_f64[0];
  }

  if ((MEMORY[0x1A590D320](v6) & 1) == 0)
  {
    sub_1A47EE324(0, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
    sub_1A52480D4();
    sub_1A5243504();
  }

  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A47EDD00(v4, a1, type metadata accessor for LemonadeProfileIconView);
  sub_1A47EB044(0, &qword_1EB124220, type metadata accessor for LemonadeProfileIconView, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
  v9 = (a1 + *(v8 + 36));
  v10 = v12[1];
  *v9 = v12[0];
  v9[1] = v10;
  result = *&v13;
  v9[2] = v13;
  return result;
}

void *sub_1A47ED7A4(uint64_t *a1)
{
  sub_1A47EDD9C();
  result = sub_1A5247FA4();
  if (v5 == 1)
  {
    sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
    v2 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v2 navigationBarAnimationDuration];
    v4 = v3;

    MEMORY[0x1A5907080](v4, 1.0, 0.0);
    return sub_1A5247F94();
  }

  return result;
}

uint64_t sub_1A47ED8A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1A47ED910(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = type metadata accessor for ProfileButton(0);
  if (*a1 != *a2)
  {
    sub_1A47EEA30(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    result = sub_1A524B6A4();
    if (v5 == 1)
    {
      sub_1A524B6A4();
      return sub_1A3D7F1A8(v5);
    }
  }

  return result;
}

uint64_t sub_1A47EDA10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_77()
{
  v1 = type metadata accessor for ProfileButton(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  j__swift_release(*(v2 + 16));
  j__swift_release(*(v2 + 32));
  j__swift_release(*(v2 + 48));
  v3 = *(v1 + 36);
  sub_1A3F31578(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5247E04();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A47EDBE8()
{
  type metadata accessor for ProfileButton(0);
  sub_1A47EEA30(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A47EDCA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A47EDD00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A47EDD9C()
{
  result = qword_1EB17B890[0];
  if (!qword_1EB17B890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17B890);
  }

  return result;
}

void sub_1A47EDE34(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB120A10, &off_1E7721588);
  if (v1 <= 0x3F)
  {
    sub_1A47EAC4C(319, &qword_1EB129720, type metadata accessor for LemonadeCuratedLibraryViewModel, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A47EAC4C(319, &qword_1EB1429A8, sub_1A4276AB8, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A47EAC4C(319, &unk_1EB124780, sub_1A47EE06C, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A47EAC4C(319, &qword_1EB124778, sub_1A47EE0A0, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1A47EDD68(319);
            if (v6 <= 0x3F)
            {
              sub_1A47EEA30(319, &qword_1EB121BF0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                sub_1A47EEA30(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1A47EE0D4()
{
  result = qword_1EB123E30;
  if (!qword_1EB123E30)
  {
    sub_1A47EB044(255, &qword_1EB123E28, sub_1A47EC34C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A47EC304(255);
    sub_1A47EC3E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123E30);
  }

  return result;
}

void sub_1A47EE208(uint64_t a1)
{
  sub_1A47EEA30(319, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1A47EEA30(319, &qword_1EB124968, &type metadata for AccountViewTip, MEMORY[0x1E697DA80]);
    if (v2 <= 0x3F)
    {
      sub_1A47EEA30(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A47EE324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A47EE3A0(uint64_t a1)
{
  sub_1A47EE324(319, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A47EE4C4(uint64_t a1)
{
  if (!qword_1EB127BC8)
  {
    type metadata accessor for AccountViewTipModifier(255);
    sub_1A47EC22C(qword_1EB186E58, type metadata accessor for AccountViewTipModifier, &unk_1A536366C);
    v1 = sub_1A52499C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127BC8);
    }
  }
}

void sub_1A47EE558(uint64_t a1)
{
  if (!qword_1EB1429B8)
  {
    sub_1A47EAC4C(255, &qword_1EB1429C0, sub_1A47EE5EC, MEMORY[0x1E69E6720]);
    sub_1A47EE734();
    v1 = sub_1A5249724();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1429B8);
    }
  }
}

void sub_1A47EE5EC(uint64_t a1, double a2)
{
  if (!qword_1EB1429C8)
  {
    sub_1A47EE6B4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1429C8);
    }
  }
}

void sub_1A47EE6B4()
{
  if (!qword_1EB1429D0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1429D0);
    }
  }
}

unint64_t sub_1A47EE734()
{
  result = qword_1EB1429D8;
  if (!qword_1EB1429D8)
  {
    sub_1A47EAC4C(255, &qword_1EB1429C0, sub_1A47EE5EC, MEMORY[0x1E69E6720]);
    sub_1A47EE6B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1429D8);
  }

  return result;
}

uint64_t sub_1A47EE850()
{
  v2 = *(type metadata accessor for AccountViewTipModifier(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A47E7DC0(v0 + v3);
}

unint64_t sub_1A47EE91C()
{
  result = qword_1EB1429E0;
  if (!qword_1EB1429E0)
  {
    sub_1A47EE47C(255);
    sub_1A47EAFFC(&qword_1EB127BD0, sub_1A47EE4C4, MEMORY[0x1E697FDF8]);
    sub_1A47EAFFC(&qword_1EB1429E8, sub_1A47EE558, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1429E0);
  }

  return result;
}

void sub_1A47EEA30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A47EEA80(uint64_t a1)
{
  if (!qword_1EB128AE8)
  {
    sub_1A52492A4();
    sub_1A47EAFFC(&qword_1EB128030, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB128AE8);
    }
  }
}

uint64_t sub_1A47EEB34(char *a1, char *a2)
{
  v5 = *(type metadata accessor for ProfileButton(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A47ED104(a1, a2, v6);
}

double sub_1A47EEBD0()
{
  type metadata accessor for ProfileButton(0);
  sub_1A524BD04();
  sub_1A52483D4();

  return result;
}

uint64_t sub_1A47EEC94()
{
  type metadata accessor for ProfileButton(0);
  sub_1A47EEA30(0, &qword_1EB121BF0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void sub_1A47EED30()
{
  v1 = *(type metadata accessor for ProfileButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1A47E945C(v2);
}

uint64_t sub_1A47EED90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A47EEDF8()
{
  result = qword_1EB142A00;
  if (!qword_1EB142A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142A00);
  }

  return result;
}

uint64_t sub_1A47EEE50()
{
  type metadata accessor for ProfileButton(0);
  sub_1A47EEA30(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A47EEF0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A47E9698(v2);
}

unint64_t sub_1A47EEF98()
{
  result = qword_1EB124228;
  if (!qword_1EB124228)
  {
    sub_1A47EB044(255, &qword_1EB124220, type metadata accessor for LemonadeProfileIconView, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A47EAFFC(&qword_1EB12A070, type metadata accessor for LemonadeProfileIconView, &unk_1A53302F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124228);
  }

  return result;
}

id sub_1A47EF08C()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(MEMORY[0x1E6978830]) init];
  [v2 setFetchLimit_];
  v3 = [objc_opt_self() fetchKeyAssetsInAssetCollection:v1 options:v2];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 firstObject];
  }

  else
  {

    return 0;
  }

  return v5;
}

id sub_1A47EF140()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = objc_allocWithZone(MEMORY[0x1E6978830]);
    v5 = v1;
    v6 = [v4 init];
    [v6 setFetchLimit_];
    v7 = [objc_opt_self() fetchKeyAssetsInAssetCollection:v3 options:v6];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 firstObject];

      return v9;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1A47EF274()
{

  v0 = PhotoKitItem.keyAsset.getter();

  return v0;
}

id sub_1A47EF2E0()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 16);

  v3 = PhotoKitItem.keyAsset.getter();
  sub_1A4267BB4(v2, v1);
  return v3;
}

uint64_t sub_1A47EF338()
{
  result = *(v0 + 24);
  if (*(v0 + 24))
  {
    v2 = *(v0 + 16);
    if (result == 1)
    {
      v3 = v2[2];
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        v4 = result;
        v5 = objc_allocWithZone(MEMORY[0x1E6978830]);
        v6 = v3;
        v7 = [v5 init];
        [v7 setFetchLimit_];
        v8 = [objc_opt_self() fetchKeyAssetsInAssetCollection:v4 options:v7];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 firstObject];
          sub_1A4267BB4(v2, 1);

          return v10;
        }

        else
        {
          sub_1A4267BB4(v2, 1);

          return 0;
        }
      }
    }

    else
    {

      v11 = sub_1A47EF08C();
      sub_1A4267BB4(v2, 2);
      return v11;
    }
  }

  return result;
}

uint64_t sub_1A47EF4D0(uint64_t a1)
{
  sub_1A47EF5DC(a1, v5);
  if (v5[3])
  {
    sub_1A3C34400(0, &qword_1EB12AAC0, &protocol descriptor for PhotosItemWithExistingKeyAsset);
    if (swift_dynamicCast())
    {
      v1 = *(&v7 + 1);
      if (*(&v7 + 1))
      {
        v2 = v8;
        __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
        v3 = (*(v2 + 16))(v1, v2);
        __swift_destroy_boxed_opaque_existential_0(&v6);
        return v3;
      }
    }

    else
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
    }
  }

  else
  {
    sub_1A3C35B00(v5);
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
  }

  sub_1A3EA8D18(&v6, &unk_1EB12D9C8, &qword_1EB12AAC0, &protocol descriptor for PhotosItemWithExistingKeyAsset);
  return 0;
}

uint64_t sub_1A47EF5DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v3 = *(a1 + 24);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 32);
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  v20 = (*(v16 + 88))(v19, a1);
  if (v20 == *off_1E7720FE8)
  {
    (*(v16 + 96))(v19, a1);
    v21 = *(v12 + 32);
    v21(v14, v19, v11);
    v22 = v33;
    v33[3] = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    return (v21)(boxed_opaque_existential_1, v14, v11);
  }

  else
  {
    v25 = v33;
    if (v20 == *off_1E7720FF8)
    {
      (*(v16 + 96))(v19, a1);
      v26 = *(v32 + 32);
      v26(v5, v19, v3);
      v25[3] = v3;
      v27 = __swift_allocate_boxed_opaque_existential_1(v25);
      return (v26)(v27, v5, v3);
    }

    else if (v20 == *off_1E7720FF0)
    {
      (*(v16 + 96))(v19, a1);
      v28 = *(v31 + 32);
      v28(v9, v19, v7);
      v25[3] = v7;
      v29 = __swift_allocate_boxed_opaque_existential_1(v25);
      return (v28)(v29, v9, v7);
    }

    else
    {
      result = sub_1A524E6E4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A47EF9BC(uint64_t a1)
{
  sub_1A47EF5DC(a1, v5);
  if (v5[3])
  {
    sub_1A3C34400(0, &qword_1EB12AA70, &protocol descriptor for PhotosItemWithFetchableKeyAsset);
    if (swift_dynamicCast())
    {
      v1 = *(&v7 + 1);
      if (*(&v7 + 1))
      {
        v2 = v8;
        __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
        v3 = (*(v2 + 16))(v1, v2);
        __swift_destroy_boxed_opaque_existential_0(&v6);
        return v3;
      }
    }

    else
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
    }
  }

  else
  {
    sub_1A3C35B00(v5);
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
  }

  sub_1A3EA8D18(&v6, &qword_1EB12D9D8, &qword_1EB12AA70, &protocol descriptor for PhotosItemWithFetchableKeyAsset);
  return 0;
}

uint64_t sub_1A47EFAC8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A47EFB04(uint64_t a1)
{
  result = sub_1A47EFBB4(&qword_1EB12A450, type metadata accessor for PeopleUnifiedItem, &protocol conformance descriptor for PeopleUnifiedItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A47EFB5C(uint64_t a1)
{
  result = sub_1A47EFBB4(&qword_1EB12A4C0, type metadata accessor for SearchResultItem, &protocol conformance descriptor for SearchResultItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A47EFBB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A47EFC00(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_1A47EFC4C(uint64_t a1)
{
  v2 = [objc_opt_self() px_sharedApplication];
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (v3)
  {
    v4 = [v3 importViewControllerForImportSource_];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
      [v6 setModalPresentationStyle_];
      v7 = [v6 sheetPresentationController];
      if (v7)
      {
        v8 = v7;
        [v7 setPrefersGrabberVisible_];
      }

      v9 = [v5 navigationItem];
      sub_1A47EFDF8();
      v10 = sub_1A47AC200();
      [v9 setLeftBarButtonItem_];
    }

    else
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
    }
  }

  else
  {

    return [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  }

  return v6;
}

unint64_t sub_1A47EFDF8()
{
  result = qword_1EB126B80;
  if (!qword_1EB126B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126B80);
  }

  return result;
}

void sub_1A47EFE68(void *a1@<X8>)
{
  v3 = *v1;
  *(swift_allocObject() + 16) = v3;
  v4 = v3;
  PXDisplayCollectionDetailedCountsMake();
  *a1 = v5;
  a1[1] = v6;
}

unint64_t sub_1A47EFEE4()
{
  result = qword_1EB129878;
  if (!qword_1EB129878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129878);
  }

  return result;
}

void sub_1A47EFF3C(uint64_t a1)
{
  if (!qword_1EB142A68)
  {
    sub_1A47EFF98();
    v1 = sub_1A5249FF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142A68);
    }
  }
}

unint64_t sub_1A47EFF98()
{
  result = qword_1EB142A70;
  if (!qword_1EB142A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142A70);
  }

  return result;
}

id sub_1A47EFFF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentViewController];
  *a2 = result;
  return result;
}

void sub_1A47F0034(id *a1)
{
  v1 = *a1;
  v2 = [*a1 parentViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 title];
    [v3 setTitle_];
  }
}

void *sub_1A47F00F8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_1A47F013C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1A47F0188()
{
  v1 = (*v0)();
  sub_1A47EFF3C(0);
  sub_1A5249FD4();
  swift_getKeyPath();
  v2 = sub_1A5240C84();

  (*(*v4 + 96))(v2);

  return v1;
}

uint64_t sub_1A47F0264@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LemonadeViewControllerWrapper.ParentChangeObservingCoordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1A47F029C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A47EFF98();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A47F0300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A47EFF98();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A47F0364(uint64_t a1)
{
  sub_1A47EFF98();
  sub_1A5249ED4();
  __break(1u);
}

void sub_1A47F03E4(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1A47F0440(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A40AFAE0;
}

void sub_1A47F051C(uint64_t a1, void *a2)
{
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_indexingStatusView];
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;
  *&v2[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_subtitleView] = 0;
  *&v2[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_cachedTitleFrameMaxY] = 0;
  *&v2[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_indexingStatus] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v20.receiver = v2;
  v20.super_class = type metadata accessor for PhotosSearchSubtitleViewHidingBackButton();

  v6 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = &v6[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_indexingStatusView];
  v9 = *&v6[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_indexingStatusView];
  v10 = *&v6[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_indexingStatusView + 8];
  v11 = *&v6[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_indexingStatusView + 16];
  *v8 = a1;
  *(v8 + 1) = sub_1A47F0770;
  *(v8 + 2) = v7;
  swift_retain_n();
  v12 = v6;

  sub_1A47F082C(v9, v10, v11);
  sub_1A47F1754(0, &unk_1EB142AA8, sub_1A47F0874, &type metadata for PhotosSearchIndexingStatusView, type metadata accessor for ZeroSafeAreaInsetsHostingView);
  v14 = objc_allocWithZone(v13);
  v19 = v7;
  v15 = sub_1A52485F4();
  v16 = OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_subtitleView;
  v17 = *&v12[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_subtitleView];
  *&v12[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_subtitleView] = v15;
  v18 = v15;

  sub_1A52485D4();
  if (*&v12[v16])
  {
    [v12 addSubview_];
    [v12 setHideBackButton_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1A47F0770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x78))();
    if (v8)
    {
      sub_1A47F0F20(a2, a3, a1, v8);
    }
  }
}

uint64_t sub_1A47F082C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_1A3C33378(a2, a3);
  }

  return result;
}

unint64_t sub_1A47F0874()
{
  result = qword_1EB1D4C20;
  if (!qword_1EB1D4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D4C20);
  }

  return result;
}

uint64_t sub_1A47F08E0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1A47F166C(a1);
  (*(*(*(v2 + qword_1EB1D4C28) - 8) + 8))(a1);
  return v5;
}

void sub_1A47F0A04()
{
  v1 = v0;
  v33.receiver = v0;
  v33.super_class = type metadata accessor for PhotosSearchSubtitleViewHidingBackButton();
  objc_msgSendSuper2(&v33, sel_layoutSubviews);
  v2 = [v0 effectiveUserInterfaceLayoutDirection];
  v3 = sub_1A4370EDC(v2);
  v4 = OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_subtitleView;
  v5 = *&v0[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_subtitleView];
  if ((v3 & 1) == 0)
  {
    if (v5)
    {
      [v5 setHidden_];
      *&v0[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_cachedTitleFrameMaxY] = 0;
      v14 = 0.0;
LABEL_22:
      [v1 setHeight_];
      return;
    }

    goto LABEL_24;
  }

  if (!v5)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v5 intrinsicContentSize];
  v7 = v6;
  v8 = [v0 overlays];
  if (v8)
  {
    v9 = v8;
    sub_1A524D964();
    v10 = v34;
    v11 = v35;
    v12 = v36;
    v13 = v37;

    if (v38)
    {
      v10 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0.0;
    }
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
  }

  v15 = OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_cachedTitleFrameMaxY;
  if (*&v1[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_cachedTitleFrameMaxY] == 0.0)
  {
    v39.origin.x = v10;
    v39.origin.y = v11;
    v39.size.width = v12;
    v39.size.height = v13;
    *&v1[v15] = CGRectGetMaxY(v39);
  }

  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  if (v2 == 1)
  {
    MinX = CGRectGetMaxX(*&v16) - v7;
    v21 = -2.0;
  }

  else
  {
    MinX = CGRectGetMinX(*&v16);
    v21 = 2.0;
  }

  v22 = MinX + v21;
  v23 = *&v1[v4];
  if (!v23)
  {
    goto LABEL_25;
  }

  v24 = v23;
  [v24 frame];
  [v24 setFrame_];

  v25 = *&v1[v4];
  if (!v25)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v25;
  [v26 frame];
  [v26 setFrame_];

  v27 = *&v1[v4];
  if (!v27)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v28 = v27;
  [v1 bounds];
  CGRectGetWidth(v40);
  [v28 frame];
  [v28 setFrame_];

  v29 = *&v1[v4];
  if (!v29)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v30 = v29;
  [v30 frame];
  [v30 setFrame_];

  v31 = *&v1[v4];
  if (!v31)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v31 setHidden_];
  v32 = *&v1[v4];
  if (v32)
  {
    [v32 frame];
    v14 = CGRectGetMaxY(v41) + 5.0;
    goto LABEL_22;
  }

LABEL_30:
  __break(1u);
}

void sub_1A47F0DB4(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for PhotosSearchSubtitleViewHidingBackButton();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  *&v7[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_cachedTitleFrameMaxY] = 0;
}

void sub_1A47F0F20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = sub_1A5249F84();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1A47F1754(0, &qword_1EB142AB8, sub_1A47F17BC, &type metadata for PhotosSearchProgressInfoView, MEMORY[0x1E697C5F0]);
  v6 = objc_allocWithZone(v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A47F11B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosSearchSubtitleViewHidingBackButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A47F1270(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ZeroSafeAreaInsetsHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1D4C28), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1D4C28 + 8), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_1A47F1348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ZeroSafeAreaInsetsHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1D4C28), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1D4C28 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1A47F13C4()
{
  if (sub_1A437125C())
  {
    sub_1A4371304();
    sub_1A43708CC();
  }

  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_So6UIViewCSSIeggg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A47F166C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return sub_1A52485F4();
}

void sub_1A47F1754(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A47F17BC()
{
  result = qword_1EB1D4D40[0];
  if (!qword_1EB1D4D40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D4D40);
  }

  return result;
}

unint64_t sub_1A47F183C()
{
  result = qword_1EB142AC0;
  if (!qword_1EB142AC0)
  {
    sub_1A47F18EC(255);
    sub_1A47F1A04();
    sub_1A47F1B28(&qword_1EB127B20, sub_1A3DA3064, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142AC0);
  }

  return result;
}

void sub_1A47F18EC(uint64_t a1)
{
  if (!qword_1EB142AC8)
  {
    sub_1A47F19A0(255, &qword_1EB142AD0, sub_1A47F1978, MEMORY[0x1E697E5E0]);
    sub_1A3DA3064();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142AC8);
    }
  }
}

void sub_1A47F19A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A47F1A04()
{
  result = qword_1EB142AE8;
  if (!qword_1EB142AE8)
  {
    sub_1A47F19A0(255, &qword_1EB142AD0, sub_1A47F1978, MEMORY[0x1E697E5E0]);
    sub_1A47F1AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142AE8);
  }

  return result;
}

unint64_t sub_1A47F1AA8()
{
  result = qword_1EB142AF0;
  if (!qword_1EB142AF0)
  {
    sub_1A47F1978(255);
    sub_1A405D574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142AF0);
  }

  return result;
}

uint64_t sub_1A47F1B28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A47F1B70()
{
  swift_getKeyPath();
  (*(*v0 + 424))();

  swift_beginAccess();
  return v0[2];
}

uint64_t sub_1A47F1BF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

double sub_1A47F1C84(uint64_t a1)
{
  swift_beginAccess();
  if (v1[2] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 432))(v5);
  }

  return result;
}

void sub_1A47F1D7C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 16) = v1;
}

uint64_t (*sub_1A47F1DCC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 424))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22TimelineTextEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47F1EF8();
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030(v4);
  return sub_1A47F1EEC;
}

unint64_t sub_1A47F1EF8()
{
  result = qword_1EB125888;
  if (!qword_1EB125888)
  {
    type metadata accessor for TimelineTextEngineSpec(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125888);
  }

  return result;
}

uint64_t type metadata accessor for TimelineTextEngineSpec(uint64_t a1)
{
  result = qword_1EB169700;
  if (!qword_1EB169700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A47F1F9C()
{
  swift_getKeyPath();
  (*(*v0 + 424))();

  swift_beginAccess();
  return v0[3];
}

uint64_t sub_1A47F201C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

double sub_1A47F20B0(uint64_t a1)
{
  swift_beginAccess();
  if (v1[3] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 432))(v5);
  }

  return result;
}

uint64_t (*sub_1A47F21A8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 424))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22TimelineTextEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47F1EF8();
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4(v4);
  return sub_1A47F22C8;
}

double sub_1A47F22D4()
{
  swift_getKeyPath();
  (*(*v0 + 424))();

  swift_beginAccess();
  return v0[4];
}

void sub_1A47F23F8(double a1)
{
  swift_beginAccess();
  if (v1[4] == a1)
  {
    v1[4] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 432))(v4);
  }
}

uint64_t (*sub_1A47F24FC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 424))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22TimelineTextEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47F1EF8();
  sub_1A52415F4();

  v4[7] = sub_1A4197AC8(v4);
  return sub_1A47F261C;
}

double sub_1A47F2628()
{
  swift_getKeyPath();
  (*(*v0 + 424))();

  swift_beginAccess();
  return v0[5];
}

void sub_1A47F274C(double a1)
{
  swift_beginAccess();
  if (v1[5] == a1)
  {
    v1[5] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 432))(v4);
  }
}

uint64_t (*sub_1A47F2850(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 424))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22TimelineTextEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47F1EF8();
  sub_1A52415F4();

  v4[7] = sub_1A3DE3B2C(v4);
  return sub_1A47F2970;
}

uint64_t sub_1A47F2994()
{
  swift_getKeyPath();
  (*(*v0 + 424))();

  swift_beginAccess();
  return v0[6];
}

uint64_t sub_1A47F2A14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result;
  return result;
}

double sub_1A47F2AB8(uint64_t a1)
{
  swift_beginAccess();
  if (v1[6] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 432))(v5);
  }

  return result;
}

void sub_1A47F2BB0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 48) = v1;
}

uint64_t (*sub_1A47F2C00(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 424))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22TimelineTextEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47F1EF8();
  sub_1A52415F4();

  v4[7] = sub_1A47ADC18(v4);
  return sub_1A47F2D20;
}

double sub_1A47F2D2C()
{
  swift_getKeyPath();
  (*(*v0 + 424))();

  swift_beginAccess();
  return v0[7];
}

void sub_1A47F2E50(double a1)
{
  swift_beginAccess();
  if (v1[7] == a1)
  {
    v1[7] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 432))(v4);
  }
}

uint64_t (*sub_1A47F2F54(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 424))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22TimelineTextEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47F1EF8();
  sub_1A52415F4();

  v4[7] = sub_1A3DE3FB4(v4);
  return sub_1A47F3074;
}

uint64_t sub_1A47F3100(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_1A524B394();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 104))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v7);
  result = sub_1A524B4B4();
  *a5 = result;
  return result;
}

double sub_1A47F31F4()
{
  sub_1A468A74C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A531D3E0;
  if (qword_1EB169730 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1EB1EAEE8;
  v1 = qword_1EB169718;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_1EB1EAED8;
  v2 = qword_1EB169740;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_1EB1EAEF0;
  v3 = qword_1EB169720;

  if (v3 != -1)
  {
    swift_once();
  }

  *(v0 + 56) = qword_1EB1EAEE0;
  qword_1EB1EAEF8 = v0;

  return result;
}

uint64_t *sub_1A47F3348()
{
  if (qword_1EB169748 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EAEF8;
}

uint64_t sub_1A47F33D4()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524A184();
  v3 = *MEMORY[0x1E6980E20];
  v4 = sub_1A524A154();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = sub_1A524A1B4();
  result = sub_1A441183C(v2);
  qword_1EB1EAF00 = v6;
  return result;
}

uint64_t *sub_1A47F34F8()
{
  if (qword_1EB1697E0 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EAF00;
}

uint64_t sub_1A47F36B8()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore22TimelineTextEngineSpec___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A47F3754()
{
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A5363CC0;
  *(v0 + 32) = xmmword_1A5363CD0;
  *(v0 + 48) = 2;
  *(v0 + 56) = 0x400A666666666666;
  sub_1A5241604();
  return v0;
}

uint64_t sub_1A47F37C4(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1A47F3900(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + qword_1EB17FFF0);
  *v4 = a2;
  v4[1] = a3;
  type metadata accessor for SharedAlbumsAvailabilityObserver(0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A47F3BB8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = (*(**(v0 + 16) + 136))();
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  v6 = [v5 simulateEmptyShelves];

  if (v4 & 1) == 0 || (v6)
  {
    return [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  }

  else
  {
    return sub_1A47F42B4(v1, v2, v3);
  }
}

double (*sub_1A47F3C98())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A47F456C;
}

double sub_1A47F3CF0(uint64_t a1)
{
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  sub_1A3D4D930(0, 0, v3, &unk_1A5363F70, v7);

  return result;
}

uint64_t sub_1A47F3E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1A524CC54();
  *(v4 + 48) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47F3F00, v6, v5);
}

uint64_t sub_1A47F3F00()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_1EB15B5E0 != -1)
    {
      swift_once();
    }

    v1 = sub_1A5246F24();
    __swift_project_value_buffer(v1, qword_1EB15B5E8);
    v2 = sub_1A5246F04();
    v3 = sub_1A524D224();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1A3C1C000, v2, v3, "Updating SharedAlbumsItemListManager because of shared albums availability change", v4, 2u);
      MEMORY[0x1A590EEC0](v4, -1, -1);
    }

    sub_1A43F8A20();
    sub_1A52415B4();
  }

  v5 = *(v0 + 8);

  return v5();
}

double sub_1A47F40C0()
{

  return result;
}

uint64_t SharedAlbumsItemListManager.deinit()
{
  v0 = PhotoKitItemListManager.deinit();

  return v0;
}

uint64_t SharedAlbumsItemListManager.__deallocating_deinit()
{
  PhotoKitItemListManager.deinit();

  return swift_deallocClassInstance();
}

void sub_1A47F41EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1A3C33378(a6, a7);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1A47F4228()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B5E8);
  v1 = __swift_project_value_buffer(v0, qword_1EB15B5E8);
  v2 = sub_1A3C56D80();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1A47F42B4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 librarySpecificFetchOptions];
  if (a3)
  {
    objc_opt_self();
    sub_1A3D9E6B8();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A52F8E10;
    *(v6 + 32) = a2;
    *(v6 + 40) = a3;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v7 = sub_1A5241C44();
  v12[3] = v7;
  v12[4] = sub_1A47F4514();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v7 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69BDD20], v7);
  LOBYTE(v7) = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0(v12);
  if (v7)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 102;
  }

  sub_1A3C52C70(0, &unk_1EB120A20, 0x1E6978770);
  v10 = [swift_getObjCClassFromMetadata() fetchAssetCollectionsWithType:12 subtype:v9 options:v5];

  return v10;
}

uint64_t type metadata accessor for SharedAlbumsItemListManager(uint64_t a1)
{
  result = qword_1EB17FFE0;
  if (!qword_1EB17FFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A47F4514()
{
  result = qword_1EB1292F0;
  if (!qword_1EB1292F0)
  {
    sub_1A5241C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1292F0);
  }

  return result;
}

uint64_t sub_1A47F4574()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A47F3E68(v3, v4, v5, v2);
}

id sub_1A47F4678(void *a1)
{
  v1 = a1;
  v2 = [v1 appViewModel];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 hidesViewOptionsToolbar];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1A47F46E4(void *a1)
{
  v1 = a1;
  v2 = [v1 appViewModel];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 libraryFilterState];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1A47F47AC(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 appViewModel];
  v6 = [v5 *a3];

  return v6;
}

void sub_1A47F4824(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1;
  v5 = [v6 appViewModel];
  [v5 setSearchQueryMatchInfo_];
}

id sub_1A47F48A0(void *a1)
{
  v1 = a1;
  v2 = [v1 appViewModel];
  if (v2 && (v3 = v2, v4 = [v2 searchContextualVideoThumbnailIdentifiers], v3, v4))
  {
    sub_1A524C3E4();

    v5 = sub_1A524C3D4();

    v6 = v5;
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

void sub_1A47F4980(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_1A524C3E4();
  }

  else
  {
    v4 = 0;
  }

  v5 = a1;
  sub_1A47F4A00(v4);
}

double sub_1A47F4A00(uint64_t a1)
{
  v3 = [v1 appViewModel];
  if (v3)
  {
    v4 = v3;
    if (a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    [v3 setSearchContextualVideoThumbnailIdentifiers_];
  }

  v5 = [v1 mediaProvider];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    if (a1)
    {
      v7 = v6;
      v8 = sub_1A524C3D4();
      v6 = v7;
    }

    else
    {
      v8 = 0;
    }

    [v6 setSearchResultContextualVideoThumbnailIdentifiers_];

    v5 = v8;
  }

  return result;
}

id sub_1A47F4B4C(void *a1, uint64_t a2, SEL *a3, void *a4)
{
  v4 = [a1 *a3];
  if (v4)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClassUnconditional();
  }

  return v4;
}

id PXPhotosViewModel.additionalLeadingNavigationBarButtonItemsAfterExisting.getter()
{
  result = [v0 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

unint64_t sub_1A47F5374()
{
  result = qword_1EB120780;
  if (!qword_1EB120780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB120780);
  }

  return result;
}

void sub_1A47F53C0(id *a1@<X0>, void *a2@<X8>)
{
  if ([*a1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = 0;
}

id PXPhotosViewModel.additionalTrailingNavigationBarButtonItemsBeforeExisting.getter()
{
  result = [v0 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

void sub_1A47F5624(id *a1@<X0>, void *a2@<X8>)
{
  if ([*a1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = 0;
}

id PXPhotosViewModel.additionalTrailingNavigationBarButtonItemsAfterExisting.getter()
{
  result = [v0 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

void sub_1A47F58B4(id *a1@<X0>, void *a2@<X8>)
{
  if ([*a1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = 0;
}

id PXPhotosViewModel.additionalCenterToolbarBarButtonItemsAfterExisting.getter()
{
  result = [v0 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

void sub_1A47F5B44(id *a1@<X0>, void *a2@<X8>)
{
  if ([*a1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = 0;
}

id PXPhotosViewModel.searchQueryFetcher.getter()
{
  result = [v0 appViewModel];
  if (result)
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

void sub_1A47F5DD4(id *a1@<X0>, void *a2@<X8>)
{
  if ([*a1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = 0;
}

double sub_1A47F5E98(uint64_t *a1, id *a2)
{
  v2 = *a2;

  if ([v2 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return result;
}

void PXPhotosViewModel.currentCurationKind.getter(_BYTE *a1@<X8>)
{
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a1 = 6;
}

void sub_1A47F60A4(id *a1@<X0>, char *a2@<X8>)
{
  if ([*a1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = 6;
}

void sub_1A47F617C(char *a1, id *a2)
{
  if ([*a2 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }
}

void PXPhotosViewModel.defaultCurationKind.getter(_BYTE *a1@<X8>)
{
  if ([v1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a1 = 6;
}

void sub_1A47F6340(id *a1@<X0>, char *a2@<X8>)
{
  if ([*a1 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  *a2 = 6;
}

void sub_1A47F6418(char *a1, id *a2)
{
  if ([*a2 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }
}

uint64_t PXPhotosViewModel.availableCurationKinds.getter()
{
  if ([v0 appViewModel])
  {
    sub_1A47F5374();
    sub_1A4651E18();
    sub_1A5245CB4();
  }

  return MEMORY[0x1E69E7CC0];
}