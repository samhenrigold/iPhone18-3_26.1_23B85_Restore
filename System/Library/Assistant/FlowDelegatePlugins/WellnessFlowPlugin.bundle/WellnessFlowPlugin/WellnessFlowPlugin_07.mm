uint64_t sub_AFBCC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
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

uint64_t sub_AFBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t sub_AFD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t sub_AFF40()
{
  sub_8A88();
  sub_B25EC(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  *(v0 + 64) = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_AFFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t sub_B0194(char a1, char a2, char a3, char a4)
{
  *(v5 + 16) = v4;
  *(v5 + 51) = a4;
  *(v5 + 50) = a3;
  *(v5 + 49) = a2;
  *(v5 + 48) = a1;
  return sub_680E8();
}

uint64_t sub_B01B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v11 = *(v10 + 51);
  v12 = *(v10 + 50);
  v13 = *(v10 + 49);
  v14 = *(v10 + 48);
  v15 = sub_2440(&qword_1C6078, &unk_172520);
  v16 = sub_B2918(v15);
  *(v10 + 24) = v16;
  *(v16 + 16) = xmmword_172980;
  sub_38B4C();
  *(v17 + 32) = 0xD000000000000010;
  *(v17 + 40) = v18;
  *(v17 + 48) = v14;
  sub_775F0();
  *(v19 + 72) = v20;
  *(v19 + 80) = 0xD000000000000014;
  *(v19 + 88) = v21;
  *(v19 + 96) = v13;
  sub_775F0();
  *(v22 + 120) = v23;
  *(v22 + 128) = 0xD000000000000011;
  *(v22 + 136) = v24;
  *(v22 + 144) = v12;
  sub_775F0();
  v25[21] = v26;
  v25[22] = 0xD000000000000010;
  v25[23] = v27;
  v25[27] = v26;
  sub_B2904(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v16 + 192) = v11;
  swift_task_alloc();
  sub_179E8();
  *(v10 + 32) = v28;
  *v28 = v29;
  v28[1] = sub_B0320;
  sub_3E254();

  return v33(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

uint64_t sub_B0320()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 40) = v0;

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

uint64_t sub_B0448()
{
  sub_8A88();

  sub_C9BC();

  return v0();
}

uint64_t sub_B04A4()
{
  sub_8A88();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 99) = v3;
  *(v1 + 98) = v4;
  *(v1 + 97) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  *(v1 + 96) = v8;
  *(v1 + 16) = v9;
  v10 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v10);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  v11 = sub_17960();

  return _swift_task_switch(v11);
}

uint64_t sub_B0554()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_B2890(v3);
  *(v0 + 72) = v4;
  *(v4 + 16) = xmmword_1731E0;
  *(v4 + 32) = 0x6570797461746164;
  *(v4 + 40) = 0xE800000000000000;
  sub_1955C(v2, v1, &qword_1C5800, &unk_16F510);
  v5 = sub_16D5CC();
  if (sub_40124(v5) == 1)
  {
    sub_C878(*(v0 + 64), &qword_1C5800, &unk_16F510);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v2;
    sub_9910((v4 + 48));
    sub_400B8();
    sub_40154();
    v6();
  }

  v7 = *(v0 + 96);
  *(v4 + 80) = 0x6C61566C61746F74;
  *(v4 + 88) = 0xEA00000000006575;
  if (v7)
  {
    sub_B2734();
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  else
  {
    v9 = *(v0 + 24);
    v8 = &type metadata for Double;
  }

  v10 = *(v0 + 97);
  *(v4 + 96) = v9;
  *(v4 + 120) = v8;
  *(v4 + 128) = 0x756C61566C616F67;
  *(v4 + 136) = 0xE900000000000065;
  if (v10)
  {
    sub_B2734();
    *(v4 + 152) = 0;
    *(v4 + 160) = 0;
  }

  else
  {
    v12 = *(v0 + 32);
    v11 = &type metadata for Double;
  }

  v13 = *(v0 + 56);
  v14 = *(v0 + 98);
  *(v4 + 144) = v12;
  *(v4 + 168) = v11;
  strcpy((v4 + 176), "isRingClosed");
  *(v4 + 189) = 0;
  *(v4 + 190) = -5120;
  *(v4 + 192) = v14;
  sub_775F0();
  *(v4 + 216) = v15;
  *(v4 + 224) = 0xD000000000000010;
  *(v4 + 232) = v16;
  *(v4 + 240) = v17;
  *(v4 + 264) = v15;
  *(v4 + 272) = 1953066613;
  *(v4 + 280) = 0xE400000000000000;
  sub_1955C(v18, v13, &qword_1C5800, &unk_16F510);
  if (sub_369C(v13, 1, v2) == 1)
  {
    sub_C878(*(v0 + 56), &qword_1C5800, &unk_16F510);
    *(v4 + 288) = 0u;
    *(v4 + 304) = 0u;
  }

  else
  {
    *(v4 + 312) = v2;
    sub_9910((v4 + 288));
    sub_400B8();
    sub_40154();
    v19();
  }

  sub_B2904(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v20 = swift_task_alloc();
  v21 = sub_B2690(v20);
  *v21 = v22;
  sub_B28F8(v21);

  return v24(0xD00000000000001DLL, 0x800000000017EF20, v4);
}

uint64_t sub_B0860()
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

uint64_t sub_B099C()
{
  sub_8A88();

  sub_C9BC();

  return v0();
}

uint64_t sub_B0A0C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 88) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return sub_680E8();
}

uint64_t sub_B0A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = v12[2];
  v14 = sub_2440(&qword_1C6078, &unk_172520);
  v15 = sub_B28A8(v14);
  v12[8] = v15;
  sub_B24FC(v15, xmmword_172970);
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

  v15[3].n128_u64[0] = v16;
  sub_38B4C();
  v15[4].n128_u64[1] = v17;
  v15[5].n128_u64[0] = 0xD000000000000018;
  v15[5].n128_u64[1] = v18;
  if (v19)
  {
    sub_B2734();
    v15[6].n128_u64[1] = 0;
    v15[7].n128_u64[0] = 0;
  }

  else
  {
    v21 = v12[3];
    v20 = &type metadata for Double;
  }

  v22 = v12[4];
  v15[6].n128_u64[0] = v21;
  v15[7].n128_u64[1] = v20;
  v15[8].n128_u64[0] = 0xD000000000000014;
  v15[8].n128_u64[1] = 0x800000000017E100;
  if (v22)
  {
    sub_16D54C();
    v23 = v22;
  }

  else
  {
    sub_76C6C();
    v15[9].n128_u64[1] = 0;
    v15[10].n128_u64[0] = 0;
  }

  v24 = v12[5];
  v15[9].n128_u64[0] = v23;
  sub_38B4C();
  v15[10].n128_u64[1] = v25;
  v15[11].n128_u64[0] = 0xD000000000000015;
  v15[11].n128_u64[1] = v26;
  if (v24)
  {
    sub_16D54C();
    v27 = v24;
  }

  else
  {
    sub_76C6C();
    v15[12].n128_u64[1] = 0;
    v15[13].n128_u64[0] = 0;
  }

  v28 = v12[6];
  v15[12].n128_u64[0] = v27;
  sub_B28C0();
  v15[13].n128_u64[1] = v29;
  v15[14].n128_u64[0] = 0xD000000000000014;
  v15[14].n128_u64[1] = v30;
  v31 = 0;
  if (v28)
  {
    v31 = sub_16D39C();
  }

  else
  {
    v15[15].n128_u64[1] = 0;
    v15[16].n128_u64[0] = 0;
  }

  v15[15].n128_u64[0] = v28;
  v15[16].n128_u64[1] = v31;
  sub_B26B4(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  sub_179E8();
  v12[9] = v32;
  *v32 = v33;
  sub_B27EC(v32);
  sub_8CC0();

  return v37(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t sub_B0C44()
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

uint64_t sub_B0D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t sub_B0D8C()
{
  v1 = v0[2];
  v2 = sub_2440(&qword_1C6078, &unk_172520);
  v3 = sub_B2890(v2);
  v0[9] = v3;
  sub_B24FC(v3, xmmword_1731E0);
  if (v1)
  {
    type metadata accessor for WellnessTime(0);
    v4 = v1;
  }

  else
  {
    sub_76C6C();
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v5 = v0[3];
  v3[3].n128_u64[0] = v4;
  sub_38B4C();
  v3[4].n128_u64[1] = v6;
  v3[5].n128_u64[0] = 0xD000000000000012;
  v3[5].n128_u64[1] = v7;
  if (v5)
  {
    sub_16D54C();
    v8 = v5;
  }

  else
  {
    sub_76C6C();
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v9 = v0[4];
  v3[6].n128_u64[0] = v8;
  sub_38B4C();
  v3[7].n128_u64[1] = v10;
  v3[8].n128_u64[0] = 0xD000000000000013;
  v3[8].n128_u64[1] = v11;
  if (v9)
  {
    sub_16D54C();
    v12 = v9;
  }

  else
  {
    sub_76C6C();
    v3[9].n128_u64[1] = 0;
    v3[10].n128_u64[0] = 0;
  }

  v13 = v0[5];
  v3[9].n128_u64[0] = v12;
  sub_B28C0();
  v3[10].n128_u64[1] = v14;
  v3[11].n128_u64[0] = 0xD000000000000014;
  v3[11].n128_u64[1] = v15;
  if (v13)
  {
    sub_16D54C();
    v16 = v13;
  }

  else
  {
    sub_76C6C();
    v3[12].n128_u64[1] = 0;
    v3[13].n128_u64[0] = 0;
  }

  v17 = v0[6];
  v3[12].n128_u64[0] = v16;
  sub_38B4C();
  v3[13].n128_u64[1] = v18;
  v3[14].n128_u64[0] = 0xD000000000000015;
  v3[14].n128_u64[1] = v19;
  if (v17)
  {
    sub_16D54C();
    v20 = v17;
  }

  else
  {
    sub_76C6C();
    v3[15].n128_u64[1] = 0;
    v3[16].n128_u64[0] = 0;
  }

  v21 = v0[7];
  v3[15].n128_u64[0] = v20;
  sub_B28C0();
  v3[16].n128_u64[1] = v22;
  v3[17].n128_u64[0] = 0xD000000000000014;
  v3[17].n128_u64[1] = v23;
  v24 = 0;
  if (v21)
  {
    v24 = sub_16D39C();
  }

  else
  {
    v3[18].n128_u64[1] = 0;
    v3[19].n128_u64[0] = 0;
  }

  v3[18].n128_u64[0] = v21;
  v3[19].n128_u64[1] = v24;
  v29 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v25 = swift_task_alloc();
  v26 = sub_B2690(v25);
  *v26 = v27;
  sub_B2828(v26);

  return v29(0xD00000000000002ALL, 0x800000000017EEC0, v3);
}

uint64_t sub_B1018()
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

uint64_t sub_B1140()
{
  sub_8A88();

  sub_C9BC();

  return v0();
}

uint64_t sub_B119C()
{
  sub_8A88();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 113) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  *(v1 + 112) = v8;
  *(v1 + 16) = v9;
  v10 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v10);
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  v11 = sub_17960();

  return _swift_task_switch(v11);
}

uint64_t sub_B1248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v14 = v11[2];
  v15 = sub_2440(&qword_1C6078, &unk_172520);
  v16 = sub_B2890(v15);
  v17 = sub_B28EC(v16);
  sub_B24FC(v17, xmmword_1731E0);
  v18 = 0;
  if (v14)
  {
    v18 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
  }

  sub_B24D0(v18);
  if (v19)
  {
    sub_B2614();
  }

  else
  {
    v20 = &type metadata for Double;
  }

  sub_B24A8(v20);
  if (v21)
  {
    sub_B2604();
  }

  else
  {
    v22 = &type metadata for Double;
  }

  v23 = v11[10];
  v24 = sub_B2514(v22);
  sub_1955C(v24, v23, &qword_1C5800, &unk_16F510);
  v25 = sub_16D5CC();
  sub_40124(v25);
  v26 = v11[10];
  sub_B2788();
  if (v27)
  {

    sub_C878(v26, &qword_1C5800, &unk_16F510);
    sub_B27F8();
  }

  else
  {
    sub_B2878();
    sub_400B8();
    sub_40154();
    v28();
  }

  v29 = v11[9];
  v30 = v11[6];
  *(v13 + 224) = 0x6570795461746164;
  *(v13 + 232) = 0xE800000000000000;
  sub_1955C(v30, v29, &qword_1C5800, &unk_16F510);
  if (sub_369C(v29, 1, v10) == 1)
  {
    sub_C878(v11[9], &qword_1C5800, &unk_16F510);
    *(v13 + 240) = 0u;
    *(v13 + 256) = 0u;
  }

  else
  {
    *(v13 + 264) = v10;
    sub_9910((v13 + 240));
    sub_400B8();
    sub_40154();
    v31();
  }

  sub_B2794();
  v32 = v11[7];
  sub_38B4C();
  *(v13 + 272) = v12;
  *(v13 + 280) = v33;
  v34 = 0;
  if (v32)
  {
    v34 = sub_16D39C();
  }

  else
  {
    *(v13 + 296) = 0;
    *(v13 + 304) = 0;
  }

  *(v13 + 288) = v32;
  *(v13 + 312) = v34;
  sub_B2624();
  swift_task_alloc();
  sub_179E8();
  v11[12] = v35;
  *v35 = v36;
  sub_B2828(v35);
  sub_B25D8();
  sub_774AC();

  return v40(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

uint64_t sub_B14DC()
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

uint64_t sub_B1618()
{
  sub_8A88();

  sub_C9BC();

  return v0();
}

uint64_t sub_B1688()
{
  sub_8A88();
  sub_B25EC(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  *(v0 + 64) = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_B170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t sub_B18DC()
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

uint64_t sub_B1A0C()
{
  sub_8A88();

  sub_C9BC();

  return v0();
}

uint64_t sub_B1A70()
{
  sub_8A88();
  sub_B26C4(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v9);
  *(v0 + 80) = sub_8BC0();
  v10 = sub_17960();
  return sub_B2840(v10);
}

uint64_t sub_B1AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t sub_B1D24()
{
  sub_8A88();
  *(v1 + 56) = v15;
  *(v1 + 64) = v0;
  *(v1 + 107) = v14;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 106) = v4;
  *(v1 + 105) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  *(v1 + 104) = v8;
  *(v1 + 16) = v9;
  v10 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v10);
  *(v1 + 72) = sub_8BC0();
  v11 = sub_17960();

  return _swift_task_switch(v11);
}

uint64_t sub_B1DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v13 = v11[2];
  v14 = sub_2440(&qword_1C6078, &unk_172520);
  v15 = sub_B2930(v14);
  v11[10] = v15;
  sub_B24FC(v15, xmmword_1731B0);
  v16 = 0;
  if (v13)
  {
    v16 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
  }

  sub_B265C(v16);
  if (v17)
  {
    sub_B2614();
  }

  else
  {
    v18 = &type metadata for Double;
  }

  sub_B2558(v18);
  if (v19)
  {
    sub_B2604();
  }

  else
  {
    v20 = &type metadata for Double;
  }

  sub_B2534(v20);
  if (v21)
  {
    sub_B2734();
    *(v15 + 200) = 0;
    *(v15 + 208) = 0;
  }

  else
  {
    v23 = v11[5];
    v22 = &type metadata for Double;
  }

  v24 = v11[9];
  v25 = v11[6];
  *(v15 + 192) = v23;
  *(v15 + 216) = v22;
  *(v15 + 224) = 1953066613;
  *(v15 + 232) = 0xE400000000000000;
  sub_1955C(v25, v24, &qword_1C5800, &unk_16F510);
  v26 = sub_16D5CC();
  sub_40124(v26);
  v27 = v11[9];
  sub_B2788();
  if (v28)
  {

    sub_C878(v27, &qword_1C5800, &unk_16F510);
    *(v15 + 240) = 0u;
    *(v15 + 256) = 0u;
  }

  else
  {
    *(v15 + 264) = v10;
    sub_9910((v15 + 240));
    sub_400B8();
    sub_40154();
    v29();
  }

  sub_B2794();
  v30 = v11[7];
  sub_775F0();
  *(v15 + 272) = v12 | 2;
  *(v15 + 280) = v31;
  *(v15 + 288) = v32;
  *(v15 + 312) = &type metadata for Bool;
  *(v15 + 320) = v12;
  *(v15 + 328) = 0x800000000017DAD0;
  v33 = 0;
  if (v30)
  {
    v33 = sub_16D39C();
  }

  else
  {
    *(v15 + 344) = 0;
    *(v15 + 352) = 0;
  }

  sub_B28E0(v33);
  sub_B2624();
  swift_task_alloc();
  sub_179E8();
  v11[11] = v34;
  *v34 = v35;
  sub_B2828(v34);
  sub_B25D8();
  sub_774AC();

  return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_B2030()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 96) = v0;

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

uint64_t sub_B2160()
{
  sub_8A88();

  sub_C9BC();

  return v0();
}

uint64_t sub_B21C4()
{
  swift_allocObject();
  sub_40154();
  return sub_B2214(v0, v1, v2);
}

uint64_t sub_B2214(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_B238C(uint64_t a1, uint64_t a2)
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

void sub_B24A8(uint64_t a1@<X8>)
{
  v2[12] = v1;
  v2[15] = a1;
  v2[16] = 0x6C61566C61746F74;
  v2[17] = 0xEA00000000006575;
}

uint64_t sub_B24D0(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  strcpy((v2 + 80), "averageValue");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
  return result;
}

__n128 *sub_B24FC(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1701669236;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_B2514@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + 40);
  v3[18] = v1;
  v3[21] = a1;
  v3[22] = 1953066613;
  v3[23] = 0xE400000000000000;
  return result;
}

void sub_B2534(uint64_t a1@<X8>)
{
  v2[18] = v1;
  v2[21] = a1;
  v2[22] = 0x65756C615678616DLL;
  v2[23] = 0xE800000000000000;
}

void sub_B2558(uint64_t a1@<X8>)
{
  v2[12] = v1;
  v2[15] = a1;
  v2[16] = 0x65756C61566E696DLL;
  v2[17] = 0xE800000000000000;
}

void sub_B257C(uint64_t a1@<X8>)
{
  *(v2 + 192) = v1;
  *(v2 + 216) = a1;
  strcpy((v2 + 224), "averageValue");
  *(v2 + 237) = 0;
  *(v2 + 238) = -5120;
}

uint64_t sub_B25EC(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;
  *(v8 + 97) = a5;
  *(v8 + 32) = a4;
  *(v8 + 40) = a6;
  *(v8 + 96) = a3;
  *(v8 + 16) = result;
  *(v8 + 24) = a2;
  return result;
}

uint64_t sub_B2624()
{
}

uint64_t sub_B265C(uint64_t result)
{
  v2[6] = v1;
  v2[9] = result;
  v2[10] = 0x65756C6176;
  v2[11] = 0xE500000000000000;
  return result;
}

uint64_t sub_B267C@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 224) = v1;
  *(v2 + 232) = (a1 - 32) | 0x8000000000000000;
  return 0;
}

uint64_t sub_B26C4(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  *(v9 + 64) = *(v10 + 32);
  *(v9 + 72) = v8;
  *(v9 + 115) = v11;
  *(v9 + 48) = a8;
  *(v9 + 56) = v12;
  *(v9 + 114) = a7;
  *(v9 + 113) = a5;
  *(v9 + 32) = a4;
  *(v9 + 40) = a6;
  *(v9 + 112) = a3;
  *(v9 + 16) = result;
  *(v9 + 24) = a2;
  return result;
}

uint64_t sub_B26F0@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + 56);
  v3[30] = v1;
  v3[33] = a1;
  v3[34] = 1953066613;
  v3[35] = 0xE400000000000000;
  return result;
}

uint64_t sub_B2740@<X0>(uint64_t a1@<X8>)
{
  v3[18] = v1;
  v3[21] = a1;
  v3[22] = v4;
  v3[23] = (v2 - 32) | 0x8000000000000000;
  return 0;
}

uint64_t sub_B275C()
{
  result = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

uint64_t sub_B276C@<X0>(uint64_t a1@<X8>)
{
  v3[30] = v1;
  v3[33] = a1;
  v3[34] = v4;
  v3[35] = (v2 - 32) | 0x8000000000000000;
  return 0;
}

uint64_t sub_B27C0(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9, uint64_t a10)
{
  *(v11 + 56) = a10;
  *(v11 + 64) = v10;
  *(v11 + 99) = a9;
  *(v11 + 40) = a6;
  *(v11 + 48) = a8;
  *(v11 + 98) = a7;
  *(v11 + 97) = a5;
  *(v11 + 24) = a2;
  *(v11 + 32) = a4;
  *(v11 + 96) = a3;
  *(v11 + 16) = result;
  return result;
}

double sub_B27F8()
{
  result = 0.0;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  return result;
}

uint64_t sub_B2804@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[6] = a2;
  v2[9] = result;
  v2[10] = 0x65756C6176;
  v2[11] = 0xE500000000000000;
  return result;
}

uint64_t sub_B2834(uint64_t result)
{
  *(v2 + 240) = v1;
  *(v2 + 264) = result;
  return result;
}

uint64_t sub_B2840(uint64_t a1)
{

  return _swift_task_switch(a1);
}

uint64_t *sub_B2878()
{
  *(v1 + 216) = v0;

  return sub_9910((v1 + 192));
}

uint64_t sub_B2890(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_B28A8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_B28E0(uint64_t result)
{
  *(v2 + 336) = v1;
  *(v2 + 360) = result;
  return result;
}

uint64_t sub_B2918(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_B2930(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_B2948(uint64_t a1)
{
  sub_B2EA4();
  if (v2 != 270)
  {
    sub_140650(v2);
    if (v7 == 0x61757274736E656DLL && v6 == 0xEC0000006E6F6974)
    {
LABEL_20:

LABEL_21:
      if (sub_16D65C())
      {
        sub_16CBCC();
        sub_4578C();
      }

      sub_B5210();
      v15 = v14;

      return *&v15;
    }

    v9 = sub_16E6BC();

    if (v9)
    {
      goto LABEL_21;
    }
  }

  sub_B2EA4();
  if (v3 == 270)
  {
    goto LABEL_3;
  }

  sub_140650(v3);
  if (v11 == 0x676E6974746F7073 && v10 == 0xE800000000000000)
  {
    goto LABEL_20;
  }

  sub_B6274();
  v13 = sub_16E6BC();

  if (v13)
  {
    goto LABEL_21;
  }

LABEL_3:
  v4 = sub_B337C(a1);
  if (sub_3B35C(v4))
  {
    sub_3B360();
    if ((v4 & 0xC000000000000001) != 0)
    {
      sub_16E48C();
    }

    else
    {
    }

    v5 = sub_16CDFC();

    if (v5)
    {
      sub_16C99C();
      sub_4578C();
    }
  }

  else
  {
  }

  sub_B598C();
  v15 = v16;
  v18 = v17;

  if ((v18 & 1) == 0 && v15 > 0.0)
  {
    v19 = sub_B2BD0(a1);
    if (v19 != 61)
    {
      if (sub_39008(v19) == 0x6C696B5F666C6168 && v21 == 0xED00006D6172676FLL)
      {
      }

      else
      {
        v23 = sub_16E6BC();

        if ((v23 & 1) == 0)
        {
          return *&v15;
        }
      }

      v15 = v15 * 0.5;
    }
  }

  return *&v15;
}

uint64_t sub_B2BD0(uint64_t a1)
{
  sub_16CB3C();
  sub_74678(v31, v29, &qword_1C63E0, &unk_1717D0);
  if (v30)
  {
    v4 = sub_16CC9C();
    if (sub_B628C(v4, v5))
    {

      v6 = sub_B337C(a1);
      if (sub_3B35C(v6))
      {
        sub_3B360();
        if ((v6 & 0xC000000000000001) != 0)
        {
LABEL_27:
          sub_16E48C();
        }

        else
        {
        }
      }

      v7 = sub_16D7EC();

      sub_B6314();
      while (v1 + v2 != -1)
      {
        if (++v2 >= *(v7 + 16))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v9 = v8 + 2;
        v11 = *(v8 - 1);
        v10 = *v8;

        v12 = sub_38FA8(v11, v10);
        v8 = v9;
        if (v12 != 61)
        {
          v13 = v12;
          sub_8748(v31, &qword_1C63E0, &unk_1717D0);

          return v13;
        }
      }
    }
  }

  else
  {
    sub_8748(v29, &qword_1C63E0, &unk_1717D0);
  }

  sub_74678(v31, v29, &qword_1C63E0, &unk_1717D0);
  if (v30)
  {
    v14 = sub_16C98C();
    if (sub_B628C(v14, v15))
    {

      sub_16CF0C();
      sub_4578C();
      v16 = sub_16D7FC();

      sub_B6314();
      while (v1 + v2 != -1)
      {
        if (++v2 >= *(v16 + 16))
        {
          goto LABEL_26;
        }

        v18 = v17 + 2;
        v20 = *(v17 - 1);
        v19 = *v17;

        v21 = sub_38FA8(v20, v19);
        v17 = v18;
        if (v21 != 61)
        {
          v13 = v21;
          sub_8748(v31, &qword_1C63E0, &unk_1717D0);

          return v13;
        }
      }
    }

    v26 = &qword_1C63E0;
    v27 = &unk_1717D0;
    v25 = v31;
  }

  else
  {
    sub_45624();
    sub_8748(v22, v23, v24);
    sub_45624();
  }

  sub_8748(v25, v26, v27);
  return 61;
}

void sub_B2EA4()
{
  sub_4597C();
  v3 = v2;
  v4 = sub_2440(&qword_1C8FC8, &qword_174EF0);
  sub_4348(v4);
  sub_433C();
  __chkstk_darwin(v5);
  v7 = v48 - v6;
  v8 = sub_2440(&qword_1C8FD0, &qword_174EF8);
  sub_4348(v8);
  sub_433C();
  __chkstk_darwin(v9);
  sub_B62D4();
  v10 = sub_16CDDC();
  sub_42F0();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_887C();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  sub_B6264();
  v18 = sub_16D65C();
  v19 = sub_B2BD0(v3);
  v20 = sub_B4F14(v18, v19);

  if (v20 == 270)
  {
    sub_16CB3C();
    sub_74678(v50, v48, &qword_1C63E0, &unk_1717D0);
    if (v49)
    {
      v21 = sub_16C98C();
      if ((sub_B62B0(v21) & 1) == 0)
      {
        goto LABEL_13;
      }

      v22 = sub_16CF0C();

      if (v22 && (v23 = sub_16CCCC(), , v23))
      {
        sub_16CDCC();

        sub_8B20(v0, 1, v10);
        if (!v24)
        {
          sub_B6280();
          v40();
          (*(v12 + 104))(v16, enum case for UsoEntity_common_MeasurementUnitType.DefinedValues.common_MeasurementUnitType_WeightUnit(_:), v10);
          v41 = sub_12170C(v1, v16);

          v42 = *(v12 + 8);
          v42(v16, v10);
          v43 = sub_B6308();
          (v42)(v43);
          if (v41)
          {
            sub_8748(v50, &qword_1C63E0, &unk_1717D0);
            goto LABEL_24;
          }

LABEL_13:
          sub_74678(v50, v48, &qword_1C63E0, &unk_1717D0);
          if (v49)
          {
            v31 = sub_16CCAC();
            if (sub_B62B0(v31))
            {

              sub_16CD2C();

              if (!v48[0] || (v32 = sub_16CA0C(), , !v32))
              {
                sub_8748(v50, &qword_1C63E0, &unk_1717D0);

                goto LABEL_24;
              }

              sub_9AD84(v32, v7);

              v33 = sub_16C9CC();
              sub_8B20(v7, 1, v33);
              if (!v24)
              {
                v44 = sub_16C9AC();
                v46 = v45;
                (*(*(v33 - 8) + 8))(v7, v33);
                sub_142388(v44, v46);

                sub_8748(v50, &qword_1C63E0, &unk_1717D0);
                goto LABEL_24;
              }

              sub_8748(v50, &qword_1C63E0, &unk_1717D0);

              v34 = &qword_1C8FC8;
              v35 = &qword_174EF0;
              v36 = v7;
            }

            else
            {
              v34 = &qword_1C63E0;
              v35 = &unk_1717D0;
              v36 = v50;
            }
          }

          else
          {
            sub_45624();
            sub_8748(v37, v38, v39);
            sub_45624();
          }

          sub_8748(v36, v34, v35);
          goto LABEL_24;
        }
      }

      else
      {

        sub_8AB4();
        sub_214C(v28, v29, v30, v10);
      }

      v25 = &qword_1C8FD0;
      v26 = &qword_174EF8;
      v27 = v0;
    }

    else
    {
      v25 = &qword_1C63E0;
      v26 = &unk_1717D0;
      v27 = v48;
    }

    sub_8748(v27, v25, v26);
    goto LABEL_13;
  }

LABEL_24:
  sub_45924();
}

void *sub_B337C(uint64_t a1)
{
  if (!sub_16D65C())
  {
    return _swiftEmptyArrayStorage;
  }

  if (!sub_16CBEC() || (sub_16CC3C(), sub_4578C(), !v1))
  {

    return _swiftEmptyArrayStorage;
  }

  result = sub_3B35C(v1);
  v3 = result;
  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {

      return _swiftEmptyArrayStorage;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      sub_B6308();
      result = sub_16E48C();
    }

    else
    {
      if (v4 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_19;
      }
    }

    v5 = (v4 + 1);
    if (__OFADD__(v4, 1))
    {
      break;
    }

    sub_16C9EC();

    v4 = (v4 + 1);
    if (v6)
    {
      sub_16E2AC();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_16E2EC();
      }

      result = sub_16E30C();
      v4 = v5;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_B34E4(uint64_t a1)
{
  v1 = sub_16CF4C();
  v3 = sub_158C3C(v1, v2);
  if (v3 > 9u)
  {
    return 0;
  }

  else
  {
    return byte_174FA6[v3];
  }
}

void sub_B3530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v20;
  a20 = v21;
  v22 = sub_16BF5C();
  sub_42F0();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_887C();
  __chkstk_darwin(v26);
  v28 = &a9 - v27;
  v29 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v29);
  sub_433C();
  __chkstk_darwin(v30);
  v32 = &a9 - v31;
  v33 = sub_16BD9C();
  sub_42F0();
  v35 = v34;
  __chkstk_darwin(v36);
  sub_4304();
  v39 = v38 - v37;
  sub_B379C();
  sub_8B20(v32, 1, v33);
  if (v40)
  {
    sub_8748(v32, &qword_1C5690, &dword_16F320);
  }

  else
  {
    (*(v35 + 32))(v39, v32, v33);
    sub_16BF4C();
    v41 = sub_16BD8C();
    if (v41)
    {
      (*(v24 + 8))(v28, v22);
    }

    else
    {
      sub_16BD4C();
      sub_16BF0C();
      v42 = *(v24 + 8);
      v43 = sub_B62FC();
      v42(v43);
      (v42)(v28, v22);
    }

    (*(v35 + 8))(v39, v33);
  }

  sub_45924();
}

void sub_B379C()
{
  sub_4597C();
  v2 = v1;
  v3 = sub_16CFBC();
  sub_42F0();
  v144 = v4;
  __chkstk_darwin(v5);
  sub_4304();
  v143 = v7 - v6;
  sub_16DBEC();
  sub_42F0();
  v139 = v9;
  v140 = v8;
  __chkstk_darwin(v8);
  sub_4304();
  v138 = v11 - v10;
  v12 = sub_16CC6C();
  sub_42F0();
  v146 = v13;
  __chkstk_darwin(v14);
  sub_4304();
  v17 = v16 - v15;
  v145 = sub_2440(&qword_1C6C28, &qword_174F10);
  sub_8B38();
  __chkstk_darwin(v18);
  sub_887C();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v24 = &v128 - v23;
  v25 = sub_2440(&qword_1C5680, &unk_16F310);
  v26 = sub_4348(v25);
  __chkstk_darwin(v26);
  sub_887C();
  v137 = v27 - v28;
  v30 = __chkstk_darwin(v29);
  v141 = &v128 - v31;
  v32 = __chkstk_darwin(v30);
  v142 = &v128 - v33;
  __chkstk_darwin(v32);
  sub_B62E8();
  v35 = __chkstk_darwin(v34);
  v37 = &v128 - v36;
  __chkstk_darwin(v35);
  v39 = &v128 - v38;
  v40 = sub_16D65C();
  if (v40)
  {
    v134 = v17;
    v41 = v40;
    if (sub_16CBFC())
    {
      v135 = v2;
      sub_13BE60();
      v132 = v42;

      v136 = v41;
      v43 = sub_16CBFC();
      v133 = v3;
      v131 = v21;
      if (v43 && (v44 = sub_16CB9C(), , v44) && (v45 = sub_16CA6C(), , v45) && (v46 = sub_16C9FC(), , v46))
      {
        sub_16CC5C();
      }

      else
      {
        sub_8AB4();
        sub_214C(v47, v48, v49, v12);
      }

      v50 = v145;
      v51 = *(v146 + 104);
      HIDWORD(v130) = enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Previous(_:);
      v129 = v51;
      v51(v37);
      sub_214C(v37, 0, 1, v12);
      v52 = *(v50 + 48);
      sub_74678(v39, v24, &qword_1C5680, &unk_16F310);
      sub_74678(v37, &v24[v52], &qword_1C5680, &unk_16F310);
      sub_B622C(v24);
      if (v64)
      {
        sub_B6274();
        sub_8748(v53, v54, v55);
        sub_B6274();
        sub_8748(v56, v57, v58);
        sub_B622C(&v24[v52]);
        if (v64)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_74678(v24, v0, &qword_1C5680, &unk_16F310);
        sub_B622C(&v24[v52]);
        if (!v64)
        {
          v90 = v146;
          v91 = v134;
          (*(v146 + 32))(v134, &v24[v52], v12);
          sub_B624C();
          sub_B6158(v92, v93, &protocol conformance descriptor for UsoEntity_common_ListPosition.DefinedValues);
          HIDWORD(v128) = sub_16E19C();
          v94 = *(v90 + 8);
          v95 = v91;
          v50 = v145;
          v94(v95, v12);
          sub_8748(v37, &qword_1C5680, &unk_16F310);
          sub_8748(v39, &qword_1C5680, &unk_16F310);
          v94(v0, v12);
          sub_8748(v24, &qword_1C5680, &unk_16F310);
          if ((v128 & 0x100000000) != 0)
          {
LABEL_42:
            v113 = sub_16DBBC();
            swift_beginAccess();
            v115 = v138;
            v114 = v139;
            v116 = v140;
            (*(v139 + 16))(v138, v113, v140);
            v117 = sub_16DBDC();
            v118 = sub_16E36C();
            if (os_log_type_enabled(v117, v118))
            {
              v119 = swift_slowAlloc();
              *v119 = 0;
              _os_log_impl(&def_259DC, v117, v118, "We are forcing DateTime convergence strategy to be .future because user said previous dayOfWeek or monthOfYear", v119, 2u);
              sub_8A2C(v119);
            }

            (*(v114 + 8))(v115, v116);
            sub_16C81C();
            v89 = &enum case for DateTimeResolutionSpec.DateTimeConvergenceStrategy.future(_:);
            goto LABEL_45;
          }

          goto LABEL_22;
        }

        sub_8748(v37, &qword_1C5680, &unk_16F310);
        sub_8748(v39, &qword_1C5680, &unk_16F310);
        (*(v146 + 8))(v0, v12);
      }

      sub_8748(v24, &qword_1C6C28, &qword_174F10);
LABEL_22:
      if (sub_16CBFC() && (v65 = sub_16CB9C(), , v65) && (v66 = sub_16CA2C(), , v66) && (v67 = sub_16C9FC(), , v67))
      {
        v68 = v142;
        sub_16CC5C();
      }

      else
      {
        v68 = v142;
        sub_8AB4();
        sub_214C(v69, v70, v71, v12);
      }

      v72 = v141;
      v129(v141, HIDWORD(v130), v12);
      sub_214C(v72, 0, 1, v12);
      v73 = *(v50 + 48);
      v74 = v131;
      sub_74678(v68, v131, &qword_1C5680, &unk_16F310);
      sub_74678(v72, v74 + v73, &qword_1C5680, &unk_16F310);
      sub_B622C(v74);
      if (!v64)
      {
        v81 = v137;
        sub_74678(v74, v137, &qword_1C5680, &unk_16F310);
        sub_B622C(v74 + v73);
        if (!v82)
        {
          v96 = v74;
          v97 = v146;
          v98 = v96 + v73;
          v99 = v134;
          (*(v146 + 32))(v134, v98, v12);
          sub_B624C();
          sub_B6158(v100, v101, &protocol conformance descriptor for UsoEntity_common_ListPosition.DefinedValues);
          v102 = sub_16E19C();
          v103 = *(v97 + 8);
          v103(v99, v12);
          sub_B6274();
          sub_8748(v104, v105, v106);
          sub_B6274();
          sub_8748(v107, v108, v109);
          v103(v81, v12);
          sub_B6274();
          sub_8748(v110, v111, v112);
          if (v102)
          {
            goto LABEL_42;
          }

LABEL_38:
          sub_16C81C();
          v89 = &enum case for DateTimeResolutionSpec.DateTimeConvergenceStrategy.past(_:);
LABEL_45:
          v120 = v143;
          (*(v144 + 104))(v143, *v89, v133);
          sub_13C33C(v132, 1, v120, v121, v122, v123, v124, v125, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);

          v126 = sub_B62FC();
          v127(v126);
          sub_453DC(&v147);
          sub_45924();
          return;
        }

        sub_45624();
        sub_8748(v83, v84, v85);
        sub_45624();
        sub_8748(v86, v87, v88);
        (*(v146 + 8))(v81, v12);
LABEL_37:
        sub_8748(v74, &qword_1C6C28, &qword_174F10);
        goto LABEL_38;
      }

      sub_45624();
      sub_8748(v75, v76, v77);
      sub_45624();
      sub_8748(v78, v79, v80);
      sub_B622C(v74 + v73);
      if (!v64)
      {
        goto LABEL_37;
      }

      v24 = v74;
LABEL_33:
      sub_8748(v24, &qword_1C5680, &unk_16F310);
      goto LABEL_42;
    }
  }

  sub_16BD9C();
  sub_8AB4();
  sub_45924();

  sub_214C(v59, v60, v61, v62);
}

uint64_t sub_B4198(uint64_t a1)
{
  v1 = sub_16CF4C();
  LODWORD(result) = sub_158C3C(v1, v2);
  if (result == 9)
  {
    return 3;
  }

  else
  {
    return result;
  }
}

void sub_B41D0()
{
  sub_4597C();
  v1 = v0;
  v59 = sub_2440(&qword_1C5680, &unk_16F310);
  sub_8B38();
  sub_433C();
  __chkstk_darwin(v2);
  v58 = v57 - v3;
  v57[1] = sub_2440(&qword_1C5688, &unk_16F500);
  sub_8B38();
  sub_433C();
  __chkstk_darwin(v4);
  v57[0] = v57 - v5;
  v6 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v6);
  sub_433C();
  __chkstk_darwin(v7);
  v9 = v57 - v8;
  v10 = sub_16BD9C();
  sub_42F0();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_4304();
  v16 = v15 - v14;
  v17 = sub_16C0EC();
  sub_42F0();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_4304();
  v23 = v22 - v21;
  v24 = [objc_allocWithZone(NSDateIntervalFormatter) init];
  [v24 setDateStyle:1];
  sub_16C0DC();
  isa = sub_16C0CC().super.isa;
  (*(v19 + 8))(v23, v17);
  [v24 setTimeZone:isa];

  sub_B379C();
  sub_B622C(v9);
  if (v37)
  {
    sub_8748(v9, &qword_1C5690, &dword_16F320);
    v26 = 0xE300000000000000;
    v27 = 7104878;
  }

  else
  {
    (*(v12 + 32))(v16, v9, v10);
    v28 = sub_16BD2C().super.isa;
    v29 = [v24 stringFromDateInterval:v28];

    if (v29)
    {
      v27 = sub_16E1BC();
      v26 = v30;
    }

    else
    {
      v26 = 0xE300000000000000;
      v27 = 7104878;
    }

    (*(v12 + 8))(v16, v10);
  }

  v62 = 0;
  v63 = 0xE000000000000000;
  sub_16E47C(186);
  v64._countAndFlagsBits = 0xD000000000000015;
  v64._object = 0x800000000017F360;
  sub_16E26C(v64);
  v31 = sub_16CF4C();
  v33 = sub_158C3C(v31, v32);
  if (v33 == 9)
  {
    v34 = 3;
  }

  else
  {
    v34 = v33;
  }

  LOBYTE(v60) = v34;
  sub_16E52C();
  v65._countAndFlagsBits = 0x707954617461640ALL;
  v65._object = 0xEB00000000203A65;
  sub_16E26C(v65);
  sub_B2EA4();
  LOWORD(v60) = v35;
  sub_2440(&qword_1C5790, &unk_16F3B0);
  v66._countAndFlagsBits = sub_16E3DC();
  sub_16E26C(v66);

  v67._countAndFlagsBits = 0x6E6152657461640ALL;
  v67._object = 0xEC000000203A6567;
  sub_16E26C(v67);
  v68._countAndFlagsBits = v27;
  v68._object = v26;
  sub_16E26C(v68);

  sub_B6348("\nisRequestForUser: ");
  sub_B4900();
  v37 = (v36 & 1) == 0;
  if (v36)
  {
    v38._countAndFlagsBits = 1702195828;
  }

  else
  {
    v38._countAndFlagsBits = 0x65736C6166;
  }

  if (v37)
  {
    v39 = 0xE500000000000000;
  }

  else
  {
    v39 = 0xE400000000000000;
  }

  v38._object = v39;
  sub_16E26C(v38);

  v69._countAndFlagsBits = 0xD000000000000012;
  v69._object = 0x800000000017A8C0;
  sub_16E26C(v69);
  LOBYTE(v60) = sub_B2BD0(v1);
  sub_2440(&qword_1C5798, &qword_1728A0);
  v70._countAndFlagsBits = sub_16E3DC();
  sub_16E26C(v70);

  sub_B6348("\nmeasurementValue: ");
  v60 = sub_B2948(v1);
  v61 = v40 & 1;
  sub_2440(&qword_1C57A0, &qword_16F3C0);
  v71._countAndFlagsBits = sub_16E3DC();
  sub_16E26C(v71);

  v72._countAndFlagsBits = 0xD000000000000017;
  v72._object = 0x800000000017A900;
  sub_16E26C(v72);
  v41 = v57[0];
  sub_B4D9C(v1, &dispatch thunk of UsoEntity_common_HealthLog.valueQualifier.getter, &dispatch thunk of UsoEntity_common_MeasurementQualifier.definedValue.getter, &type metadata accessor for UsoEntity_common_MeasurementQualifier.DefinedValues);
  v42 = sub_16E3DC();
  v44 = v43;
  sub_8748(v41, &qword_1C5688, &unk_16F500);
  v73._countAndFlagsBits = v42;
  v73._object = v44;
  sub_16E26C(v73);

  v74._countAndFlagsBits = 0x736F507473696C0ALL;
  v74._object = 0xEF203A6E6F697469;
  sub_16E26C(v74);
  v45 = v58;
  sub_B4D9C(v1, &dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter, &dispatch thunk of UsoEntity_common_ListPosition.definedValue.getter, &type metadata accessor for UsoEntity_common_ListPosition.DefinedValues);
  v46 = sub_16E3DC();
  v48 = v47;
  sub_8748(v45, &qword_1C5680, &unk_16F310);
  v75._countAndFlagsBits = v46;
  v75._object = v48;
  sub_16E26C(v75);

  v76._countAndFlagsBits = 0x726174537361680ALL;
  v76._object = 0xEF203A6574614474;
  sub_16E26C(v76);
  v49 = sub_B4E8C(v1, &dispatch thunk of UsoEntity_common_DateTimeRange.start.getter);
  v50 = (v49 & 1) == 0;
  if (v49)
  {
    v51._countAndFlagsBits = 1702195828;
  }

  else
  {
    v51._countAndFlagsBits = 0x65736C6166;
  }

  if (v50)
  {
    v52 = 0xE500000000000000;
  }

  else
  {
    v52 = 0xE400000000000000;
  }

  v51._object = v52;
  sub_16E26C(v51);

  v77._countAndFlagsBits = 0x44646E457361680ALL;
  v77._object = 0xED0000203A657461;
  sub_16E26C(v77);
  v53 = sub_B4E8C(v1, &dispatch thunk of UsoEntity_common_DateTimeRange.end.getter);
  v54 = (v53 & 1) == 0;
  if (v53)
  {
    v55._countAndFlagsBits = 1702195828;
  }

  else
  {
    v55._countAndFlagsBits = 0x65736C6166;
  }

  if (v54)
  {
    v56 = 0xE500000000000000;
  }

  else
  {
    v56 = 0xE400000000000000;
  }

  v55._object = v56;
  sub_16E26C(v55);

  sub_45924();
}

void sub_B4900()
{
  sub_4597C();
  v2 = sub_16CABC();
  sub_42F0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_4304();
  v8 = v7 - v6;
  v9 = sub_2440(&qword_1C8FD8, &qword_174F00);
  sub_8B38();
  sub_433C();
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = sub_2440(&qword_1C8FE0, &qword_174F08);
  v14 = sub_4348(v13);
  __chkstk_darwin(v14);
  sub_887C();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  sub_5E160();
  __chkstk_darwin(v19);
  sub_B6264();
  if (sub_16D65C())
  {
    v32 = v8;
    if (!sub_16CBDC())
    {

      goto LABEL_14;
    }

    sub_16CAAC();
    v31 = v4;
    (*(v4 + 104))(v1, enum case for UsoEntity_common_Person.DefinedValues.common_Person_User(_:), v2);
    sub_214C(v1, 0, 1, v2);
    v20 = *(v9 + 48);
    v21 = sub_B6308();
    sub_74678(v21, v22, &qword_1C8FE0, &qword_174F08);
    sub_74678(v1, &v12[v20], &qword_1C8FE0, &qword_174F08);
    sub_8B20(v12, 1, v2);
    if (!v23)
    {
      sub_74678(v12, v17, &qword_1C8FE0, &qword_174F08);
      sub_8B20(&v12[v20], 1, v2);
      if (!v23)
      {
        v26 = v31;
        v27 = &v12[v20];
        v28 = v32;
        (*(v31 + 32))(v32, v27, v2);
        sub_B6158(&qword_1C8FE8, &type metadata accessor for UsoEntity_common_Person.DefinedValues, &protocol conformance descriptor for UsoEntity_common_Person.DefinedValues);
        sub_16E19C();

        v29 = *(v26 + 8);
        v29(v28, v2);
        sub_8748(v1, &qword_1C8FE0, &qword_174F08);
        sub_8748(v0, &qword_1C8FE0, &qword_174F08);
        v30 = sub_B62FC();
        (v29)(v30);
        sub_8748(v12, &qword_1C8FE0, &qword_174F08);
        goto LABEL_14;
      }

      sub_8748(v1, &qword_1C8FE0, &qword_174F08);
      sub_8748(v0, &qword_1C8FE0, &qword_174F08);
      v24 = sub_B62FC();
      v25(v24);
LABEL_13:
      sub_8748(v12, &qword_1C8FD8, &qword_174F00);
      goto LABEL_14;
    }

    sub_8748(v1, &qword_1C8FE0, &qword_174F08);
    sub_8748(v0, &qword_1C8FE0, &qword_174F08);
    sub_8B20(&v12[v20], 1, v2);
    if (!v23)
    {
      goto LABEL_13;
    }

    sub_8748(v12, &qword_1C8FE0, &qword_174F08);
  }

LABEL_14:
  sub_45924();
}

uint64_t sub_B4D9C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t), void (*a4)(void))
{
  if (sub_16D65C() && (v7 = a2(), v8 = , v7))
  {
    a3(v8);
  }

  else
  {
    a4(0);
    sub_8AB4();

    return sub_214C(v10, v11, v12, v13);
  }
}

uint64_t sub_B4E8C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = sub_16D65C();
  if (result)
  {
    v4 = sub_16CBFC();

    if (v4 && (sub_16CB6C(), v5 = sub_4578C(), v6 = a2(v5), , v6))
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

uint64_t sub_B4F14(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (sub_16D7CC())
  {
    return 239;
  }

  v5 = sub_16D64C();
  if (!v6)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = sub_142388(v5, v6);
  if (v7 != 270)
  {
    v3 = v7;
    sub_140650(v7);
    if (v9 == 0x6168636C65656877 && v8 == 0xEE006573755F7269)
    {
    }

    else
    {
      sub_B6280();
      v11 = sub_16E6BC();

      if ((v11 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v3 = 268;
LABEL_18:
    if (!sub_C1AF4(v3, &off_1B7D48) || v2 == 61)
    {
      goto LABEL_25;
    }

    if (sub_39008(v2) == 1885697139 && v12 == 0xE400000000000000)
    {
    }

    else
    {
      v14 = sub_16E6BC();

      if ((v14 & 1) == 0)
      {
LABEL_25:
        sub_140650(v3);
        if (v16 == 0x6168636C65656877 && v15 == 0xEA00000000007269)
        {
        }

        else
        {
          sub_B6280();
          v18 = sub_16E6BC();

          if ((v18 & 1) == 0)
          {
LABEL_38:
            sub_140650(v3);
            if (v23 == 0x646E617473 && v22 == 0xE500000000000000)
            {

              if (v2 == 61)
              {
                return v3;
              }
            }

            else
            {
              v25 = sub_16E6BC();

              if ((v25 & 1) == 0 || v2 == 61)
              {
                return v3;
              }
            }

            if (sub_39008(v2) == 1920298856 && v26 == 0xE400000000000000)
            {
            }

            else
            {
              v28 = sub_16E6BC();

              if ((v28 & 1) == 0)
              {
                return v3;
              }
            }

            return 256;
          }
        }

        if (v2 != 61)
        {
          if (sub_39008(v2) == 0x6168636C65656877 && v19 == 0xEF687375705F7269)
          {
          }

          else
          {
            sub_B6280();
            v21 = sub_16E6BC();

            if ((v21 & 1) == 0)
            {
              goto LABEL_38;
            }
          }
        }

        return 247;
      }
    }

    return 269;
  }

  return sub_B5EC0(v2);
}

void sub_B5210()
{
  sub_4597C();
  v4 = v3;
  v5 = sub_16DBEC();
  sub_42F0();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_887C();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  sub_5E160();
  __chkstk_darwin(v13);
  sub_B62E8();
  __chkstk_darwin(v14);
  v16 = &v74 - v15;
  v82 = sub_16C9CC();
  sub_42F0();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_887C();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  sub_B6264();
  if (!v4)
  {
    v44 = sub_16DBBC();
    sub_3E174(v44);
    (*(v7 + 16))(v11, v16, v5);
    v45 = sub_16DBDC();
    v46 = sub_16E36C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&def_259DC, v45, v46, "Failed to parse flowDistinction: no measurementCategory entity", v47, 2u);
      sub_8A2C(v47);
    }

    v48 = *(v7 + 8);
    v49 = v11;
    goto LABEL_23;
  }

  v24 = sub_16CA0C();
  if (!v24)
  {
    v50 = sub_16DBBC();
    sub_3E174(v50);
    (*(v7 + 16))(v2, v16, v5);

    v51 = sub_16DBDC();
    v52 = sub_16E36C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = v5;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v83 = v4;
      v84[0] = v55;
      *v54 = 136315138;
      sub_16CDBC();

      v56 = sub_16E1EC();
      v58 = sub_3AB7C(v56, v57, v84);

      *(v54 + 4) = v58;
      _os_log_impl(&def_259DC, v51, v52, "Failed to parse flowDistinction: no 'name' UsoIdentifier found in measurementCategory: %s", v54, 0xCu);
      sub_2D64(v55);
      sub_8A2C(v55);
      sub_8A2C(v54);

      (*(v7 + 8))(v2, v53);
      goto LABEL_32;
    }

    v48 = *(v7 + 8);
    v49 = v2;
LABEL_23:
    v48(v49, v5);
    goto LABEL_32;
  }

  v25 = v24;
  v76 = v1;
  v77 = v0;
  v75 = v16;
  v78 = v5;
  v79 = v4;
  v26 = *(v24 + 16);
  v80 = v7;
  v81 = v26;
  if (!v26)
  {
LABEL_13:
    v32 = sub_16DBBC();
    sub_3E174(v32);
    v33 = v80;
    v35 = v77;
    v34 = v78;
    (*(v80 + 16))(v77, v16, v78);

    v36 = sub_16DBDC();
    v37 = sub_16E36C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v84[0] = v39;
      *v38 = 136315138;
      v40 = sub_16E2DC();
      v42 = v41;

      v43 = sub_3AB7C(v40, v42, v84);

      *(v38 + 4) = v43;
      _os_log_impl(&def_259DC, v36, v37, "Failed to parse flowDistinction: no identifier found with namespace 'healthLogValueCategory' in identifiers: %s", v38, 0xCu);
      sub_2D64(v39);
      sub_8A2C(v39);
      sub_8A2C(v38);
    }

    else
    {
    }

    (*(v33 + 8))(v35, v34);
    goto LABEL_32;
  }

  v27 = 0;
  v28 = v24 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  while (1)
  {
    if (v27 >= *(v25 + 16))
    {
      __break(1u);
      return;
    }

    (*(v18 + 16))(v22, v28 + *(v18 + 72) * v27, v82);
    v29 = sub_16C9BC();
    if (!v30)
    {
      goto LABEL_12;
    }

    if (v29 == 0xD000000000000016 && 0x800000000017F340 == v30)
    {
      break;
    }

    v16 = sub_16E6BC();

    if (v16)
    {
      goto LABEL_26;
    }

LABEL_12:
    ++v27;
    (*(v18 + 8))(v22, v82);
    if (v81 == v27)
    {
      goto LABEL_13;
    }
  }

LABEL_26:

  v59 = v76;
  v60 = v82;
  (*(v18 + 32))(v76, v22, v82);
  v61 = sub_16C9AC();
  v63 = v62;
  (*(v18 + 8))(v59, v60);

  sub_16D84C();
  v64 = v80;
  if (v65)
  {
    v66 = sub_16DBBC();
    sub_3E174(v66);
    v67 = v75;
    v68 = v78;
    (*(v64 + 16))(v75, v60, v78);

    v69 = sub_16DBDC();
    v70 = sub_16E36C();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v84[0] = v72;
      *v71 = 136315138;
      v73 = sub_3AB7C(v61, v63, v84);

      *(v71 + 4) = v73;
      _os_log_impl(&def_259DC, v69, v70, "Failed to parse flowDistinction: unexpected healthLogValueCategory value: %s", v71, 0xCu);
      sub_2D64(v72);
      sub_8A2C(v72);
      sub_8A2C(v71);
    }

    else
    {
    }

    (*(v64 + 8))(v67, v68);
  }

  else
  {
  }

LABEL_32:
  sub_45924();
}

void sub_B598C()
{
  sub_4597C();
  v3 = v2;
  v4 = sub_2440(&qword_1C8FC0, &unk_174EE0);
  sub_4348(v4);
  sub_433C();
  __chkstk_darwin(v5);
  sub_B62D4();
  v6 = sub_16CAEC();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_887C();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  sub_B6264();
  if (v3)
  {
    sub_16CD6C();
    swift_retain_n();
    sub_16CBBC();
    if (!v27)
    {
      goto LABEL_7;
    }

    if (sub_16CD5C())
    {
      sub_16C99C();
      sub_16CB2C();
      sub_16CBBC();

      sub_16CB1C();
      v15 = v14;

      if ((v15 & 1) == 0)
      {
LABEL_13:

        goto LABEL_20;
      }

LABEL_7:
      v16 = sub_16CB2C();
      sub_B6328(v16);
      if (!v27 || (sub_16CB1C(), v18 = v17, , (v18 & 1) != 0))
      {
        v19 = sub_16CB0C();
        sub_B6328(v19);

        if (v27)
        {
          sub_16CADC();
          sub_8B20(v0, 1, v6);
          if (v20)
          {
            sub_8748(v0, &qword_1C8FC0, &unk_174EE0);
          }

          else
          {
            sub_B6280();
            v21();
            (*(v8 + 104))(v12, enum case for UsoEntity_common_Decimal.DefinedValues.common_Decimal_Percent(_:), v6);
            v22 = sub_121874(v1, v12);
            v23 = *(v8 + 8);
            v23(v12, v6);
            v24 = sub_B6308();
            (v23)(v24);
            if (v22)
            {

              goto LABEL_20;
            }
          }

          v25 = sub_16CAFC();
          if (v26)
          {
            sub_B5E60(v25, v26);

            goto LABEL_20;
          }
        }

        goto LABEL_20;
      }

      goto LABEL_13;
    }
  }

LABEL_20:
  sub_45924();
}

uint64_t sub_B5E60(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_B6044(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_B5EC0(char a1)
{
  if (a1 != 61)
  {
    switch(a1)
    {
      case 16:
        return 76;
      case 38:
        return 241;
      case 37:
        return 248;
      case 36:
        return 230;
    }

    sub_38F88(a1);
  }

  v2 = sub_16D8EC();

  result = 261;
  switch(v2)
  {
    case 1:
      result = 267;
      break;
    case 2:
      return 230;
    case 3:
      v4 = 0xF7004C010DuLL >> (16 * ((a1 - 53) & 0xFu));
      if ((a1 - 53) > 2u)
      {
        LODWORD(v4) = 270;
      }

      if (a1 == 61)
      {
        result = 270;
      }

      else
      {
        result = v4;
      }

      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_B5FD8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_B6044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *(&stru_20.cmd + (a2 & 0xFFFFFFFFFFFFFFFLL));
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_16E46C();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

uint64_t sub_B6158(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_B61B0(uint64_t a1)
{
  result = sub_B61D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_B61D8()
{
  result = qword_1C8FF0;
  if (!qword_1C8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8FF0);
  }

  return result;
}

uint64_t sub_B628C(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_B62B0(uint64_t a1)
{

  return swift_dynamicCast();
}

void *sub_B6328(uint64_t a1)
{

  return sub_16CBBC();
}

void sub_B6348(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000013;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_16E26C(v2);
}

uint64_t sub_B6370(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_B63B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B642C(uint64_t a1, uint64_t a2)
{
  sub_17358();

  return sub_16C33C();
}

uint64_t sub_B6480()
{
  sub_8A88();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_16DBEC();
  v1[7] = v3;
  sub_888C(v3);
  v1[8] = v4;
  v1[9] = swift_task_alloc();
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
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_B65E8);
}

uint64_t sub_B65E8()
{
  sub_8A88();
  sub_2D20((*(v0 + 48) + 40), *(*(v0 + 48) + 64));
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_B6684;

  return sub_7ABE4();
}

uint64_t sub_B6684(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;

  if (v1)
  {

    v7 = sub_B6968;
  }

  else
  {
    *(v4 + 144) = a1;
    v7 = sub_B67A8;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_B67A8(uint64_t a1)
{
  v2 = v1[18];
  v4 = v1[15];
  v3 = v1[16];
  v5 = v1[13];
  v13 = v1[14];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[10];
  v9 = v1[6];
  sub_16C45C();
  (*(v6 + 16))(v7, v5, v8);
  sub_16C75C();
  (*(v6 + 8))(v5, v8);
  v10 = [v2 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_2D20(v9, v9[3]);
  sub_16C2FC();
  sub_16D70C();
  sub_16C4FC();

  (*(v4 + 8))(v3, v13);

  v11 = v1[1];

  return v11();
}

uint64_t sub_B6968(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  v5 = sub_16DBBC();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_16DBDC();
  v7 = sub_16E37C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&def_259DC, v6, v7, "Failed to get wellness pattern for error message", v8, 2u);
  }

  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[7];

  (*(v10 + 8))(v9, v11);
  sub_16D6FC();
  sub_16C50C();

  v12 = v1[1];

  return v12();
}

uint64_t sub_B6AD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C374;

  return sub_B6480();
}

uint64_t sub_B6B70()
{
  sub_8A88();
  v1[15] = v2;
  v1[16] = v0;
  v1[17] = *v0;
  v3 = sub_16C7FC();
  v1[18] = v3;
  sub_888C(v3);
  v1[19] = v4;
  v1[20] = sub_8BC0();
  sub_2440(&qword_1C6FF0, &unk_1730A0);
  v1[21] = sub_8BC0();
  v5 = sub_16C89C();
  v1[22] = v5;
  sub_888C(v5);
  v1[23] = v6;
  v1[24] = sub_8BC0();
  v7 = sub_16C8FC();
  v1[25] = v7;
  sub_888C(v7);
  v1[26] = v8;
  v1[27] = sub_8BC0();
  v9 = sub_16C80C();
  v1[28] = v9;
  sub_888C(v9);
  v1[29] = v10;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v11 = sub_16C83C();
  v1[32] = v11;
  sub_888C(v11);
  v1[33] = v12;
  v1[34] = sub_8BC0();
  v13 = sub_16C7DC();
  v1[35] = v13;
  sub_888C(v13);
  v1[36] = v14;
  v1[37] = sub_8BC0();
  v15 = sub_16DBEC();
  v1[38] = v15;
  sub_888C(v15);
  v1[39] = v16;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v17 = sub_17960();

  return _swift_task_switch(v17);
}

uint64_t sub_B6E68(uint64_t a1)
{
  v102 = v1;
  v2 = *(v1 + 336);
  v3 = *(v1 + 304);
  v4 = *(v1 + 312);
  v5 = *(v1 + 288);
  v6 = *(v1 + 296);
  v7 = *(v1 + 280);
  v8 = *(v1 + 120);
  v9 = sub_16DBBC();
  sub_8B48(v9, v1 + 48);
  v94 = v9;
  v93 = *(v4 + 16);
  v93(v2, v9, v3);
  (*(v5 + 16))(v6, v8, v7);
  v10 = sub_16DBDC();
  v11 = sub_16E36C();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v1 + 336);
  v15 = *(v1 + 304);
  v14 = *(v1 + 312);
  v17 = *(v1 + 288);
  v16 = *(v1 + 296);
  v18 = *(v1 + 280);
  if (v12)
  {
    v99 = *(v1 + 336);
    v97 = *(v1 + 304);
    v19 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v101 = v95;
    *v19 = 136315394;
    v20 = sub_16E7AC();
    v22 = sub_3AB7C(v20, v21, &v101);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_6B580();
    sub_6B40C(v23, v24, &protocol conformance descriptor for Input);
    sub_16E68C();
    (*(v17 + 8))(v16, v18);
    v25 = sub_C9F8();
    v28 = sub_3AB7C(v25, v26, v27);

    *(v19 + 14) = v28;
    _os_log_impl(&def_259DC, v10, v11, "%s Parsing Input: %s", v19, 0x16u);
    swift_arrayDestroy();
    sub_8A2C(v95);
    sub_8A2C(v19);

    v29 = *(v14 + 8);
    v29(v99, v97);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    v29 = *(v14 + 8);
    v29(v13, v15);
  }

  v30 = *(v1 + 248);
  v32 = *(v1 + 224);
  v31 = *(v1 + 232);
  v96 = sub_6AB10();
  v34 = v33;
  sub_16C7CC();
  v35 = *(v31 + 88);
  if (v35(v30, v32) != enum case for Parse.uso(_:))
  {
    (*(*(v1 + 232) + 8))(*(v1 + 248), *(v1 + 224));
LABEL_8:
    v45 = *(v1 + 240);
    v46 = *(v1 + 224);
    sub_16C7CC();
    if (v35(v45, v46) != enum case for Parse.directInvocation(_:))
    {
      v53 = *(v1 + 232);
      v54 = *(v1 + 240);
      v55 = *(v1 + 224);

      (*(v53 + 8))(v54, v55);
      sub_8B48(v94, v1 + 72);
      v56 = sub_C9C8();
      (v93)(v56);
      v57 = sub_16DBDC();
      v58 = sub_16E37C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&def_259DC, v57, v58, "Received unsupported type of input", v59, 2u);
        sub_8A2C(v59);
      }

      v60 = sub_C9F8();
      (v29)(v60);
      goto LABEL_30;
    }

    v47 = *(v1 + 240);
    v48 = *(v1 + 152);
    v49 = *(v1 + 160);
    v50 = *(v1 + 144);
    (*(*(v1 + 232) + 96))(v47, *(v1 + 224));
    (*(v48 + 32))(v49, v47, v50);
    v51 = sub_16C7EC();
    if (v51)
    {
      sub_17400(v51, (v1 + 16), 0xD000000000000012, 0x800000000017A960);

      if (*(v1 + 40))
      {
        if (swift_dynamicCast())
        {
          if (*(v1 + 344) != 1)
          {
            (*(*(v1 + 152) + 8))(*(v1 + 160), *(v1 + 144));

            v98 = 0;
            v100 = v34;
            goto LABEL_31;
          }

          if (*(*(v1 + 128) + 16) == 1)
          {
            v101 = v34;

            sub_B96EC(v52);
          }

          else
          {
            v101 = v34;

            sub_B96EC(v96);
          }

          goto LABEL_42;
        }

        v92 = v29;

        goto LABEL_27;
      }
    }

    else
    {

      *(v1 + 16) = 0u;
      *(v1 + 32) = 0u;
    }

    v92 = v29;
    sub_C878(v1 + 16, &qword_1C63E0, &unk_1717D0);
LABEL_27:
    v71 = *(v1 + 328);
    v72 = *(v1 + 304);
    sub_8B48(v94, v1 + 96);
    v93(v71, v94, v72);
    v73 = sub_16DBDC();
    v74 = sub_16E37C();
    v75 = os_log_type_enabled(v73, v74);
    v76 = *(v1 + 328);
    v77 = *(v1 + 304);
    if (v75)
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&def_259DC, v73, v74, "LogMedAsNeededConfirmationStrategy failed to unpack directInvocation, returning nil", v78, 2u);
      sub_8A2C(v78);
    }

    v92(v76, v77);
    v79 = sub_C9C8();
    v80(v79);
LABEL_30:
    v98 = 0;
    v100 = 1;
    goto LABEL_31;
  }

  v100 = v34;
  v37 = *(v1 + 264);
  v36 = *(v1 + 272);
  v39 = *(v1 + 248);
  v38 = *(v1 + 256);
  v40 = *(v1 + 192);
  v90 = *(v1 + 200);
  v91 = v29;
  v41 = *(v1 + 184);
  v89 = *(v1 + 176);
  v42 = *(v1 + 168);
  (*(*(v1 + 232) + 96))(v39, *(v1 + 224));
  (*(v37 + 32))(v36, v39, v38);
  sub_16C82C();
  v43 = sub_16C88C();
  (*(v41 + 8))(v40, v89);
  sub_9AD9C(v43, v42);

  if (sub_369C(v42, 1, v90) == 1)
  {
    v44 = *(v1 + 168);
    (*(*(v1 + 264) + 8))(*(v1 + 272), *(v1 + 256));
    sub_C878(v44, &qword_1C6FF0, &unk_1730A0);
    v34 = v100;
    v29 = v91;
    goto LABEL_8;
  }

  (*(*(v1 + 208) + 32))(*(v1 + 216), *(v1 + 168), *(v1 + 200));
  if ((sub_16C8CC() & 1) == 0)
  {
    v65 = sub_16C8DC();
    v67 = *(v1 + 208);
    v66 = *(v1 + 216);
    v68 = *(v1 + 200);
    if (v65)
    {
      (*(v67 + 8))(*(v1 + 216), *(v1 + 200));
      v69 = sub_B9BE4();
      v70(v69);
    }

    else
    {
      v83 = sub_16C8EC();
      (*(v67 + 8))(v66, v68);
      v84 = sub_B9BE4();
      v85(v84);
      if ((v83 & 1) == 0)
      {
        v86 = *(v1 + 128);

        v100 = *(v86 + 24);

        v98 = 2;
        goto LABEL_31;
      }
    }

    v98 = 0;
    goto LABEL_31;
  }

  v61 = *(v1 + 208);
  v62 = *(v1 + 216);
  v63 = *(v1 + 200);
  if (*(*(v1 + 128) + 16) == 1)
  {
    v101 = v100;

    sub_B96EC(v64);
  }

  else
  {
    v101 = v100;

    sub_B96EC(v96);
  }

  (*(v61 + 8))(v62, v63);
LABEL_42:
  v87 = sub_B9BE4();
  v88(v87);
  v98 = 1;
  v100 = v101;
LABEL_31:

  v81 = *(v1 + 8);

  return v81(v98, v100);
}

uint64_t sub_B7844(uint64_t a1)
{
  v2 = sub_16C7DC();
  sub_42F0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_4304();
  v8 = v7 - v6;
  v9 = sub_16DBEC();
  sub_42F0();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_4304();
  v15 = v14 - v13;
  v16 = sub_16DBAC();
  sub_8B48(v16, v33);
  v31 = v9;
  (*(v11 + 16))(v15, v16, v9);
  (*(v4 + 16))(v8, a1, v2);
  v17 = sub_16DBDC();
  v18 = sub_16E36C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v19 = 136315394;
    v20 = sub_16E7AC();
    v22 = sub_3AB7C(v20, v21, &v32);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_6B580();
    sub_6B40C(v23, v24, &protocol conformance descriptor for Input);
    v25 = sub_16E68C();
    v27 = v26;
    (*(v4 + 8))(v8, v2);
    v28 = sub_3AB7C(v25, v27, &v32);

    *(v19 + 14) = v28;
    _os_log_impl(&def_259DC, v17, v18, "%s Handling Input: %s", v19, 0x16u);
    swift_arrayDestroy();
    sub_8A2C(v30);
    sub_8A2C(v19);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  (*(v11 + 8))(v15, v31);
  return sub_16C47C();
}

uint64_t sub_B7B68()
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
  v10 = sub_17960();

  return _swift_task_switch(v10);
}

uint64_t sub_B7CE4(uint64_t a1)
{
  v24 = v1;
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[21];
  v5 = sub_16DBBC();
  sub_8B48(v5, (v1 + 7));
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E36C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[22];
  v9 = v1[23];
  v11 = v1[21];
  if (v8)
  {
    v22 = v1[21];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136315394;
    v15 = sub_16E7AC();
    v21 = v9;
    v17 = sub_3AB7C(v15, v16, &v23);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&def_259DC, v6, v7, "%s makeErrorResponse called with error: %@", v12, 0x16u);
    sub_C878(v13, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v13);
    sub_2D64(v14);
    sub_8A2C(v14);
    sub_8A2C(v12);

    (*(v10 + 8))(v21, v22);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  sub_2D20((v1[12] + 72), *(v1[12] + 96));
  v19 = swift_task_alloc();
  v1[24] = v19;
  *v19 = v1;
  v19[1] = sub_B7F34;

  return sub_7AA38();
}

uint64_t sub_B7F34()
{
  sub_386A8();
  sub_C9D4();
  v3 = v2;
  sub_38388();
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

uint64_t sub_B8084(uint64_t a1)
{
  v2 = v1[25];
  v4 = v1[16];
  v3 = v1[17];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[12];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_6B5C8();
  (*(v6 + 8))(v3, v5);
  sub_16C77C();
  v8 = [v2 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_8388(v7 + 208, (v1 + 2));
  v9 = v1[5];
  v10 = v1[6];
  sub_2D20(v1 + 2, v9);
  v11 = swift_task_alloc();
  v1[26] = v11;
  *v11 = v1;
  v11[1] = sub_B820C;
  v12 = v1[25];
  v13 = v1[20];
  v14 = v1[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v14, v12, v13, v9, v10);
}

uint64_t sub_B820C()
{
  sub_8A88();
  sub_C9D4();
  v2 = *v1;
  sub_C990();
  *v3 = v2;
  *(v4 + 216) = v0;

  sub_8ACC();

  return _swift_task_switch(v5);
}

uint64_t sub_B830C()
{
  sub_386A8();

  v1 = sub_C9C8();
  v2(v1);
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v3();
}

uint64_t sub_B83BC()
{
  sub_8A88();
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_16DBEC();
  v1[22] = v3;
  sub_888C(v3);
  v1[23] = v4;
  v1[24] = sub_8BC0();
  sub_2440(&qword_1C5990, &unk_16F760);
  v1[25] = sub_8BC0();
  sub_16C46C();
  v1[26] = sub_8BC0();
  v5 = sub_16C7BC();
  v1[27] = v5;
  sub_888C(v5);
  v1[28] = v6;
  v1[29] = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7);
}

uint64_t sub_B8500()
{
  sub_C9EC();
  v1 = v0[21];
  v2 = sub_6AD78();
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  v8 = v2 < 1 || v3 < 1;
  v9 = v4 > 0;
  v0[30] = *(v1 + 192);
  v10 = v6;

  v11 = swift_task_alloc();
  v0[31] = v11;
  *v11 = v0;
  v11[1] = sub_B85F0;

  return sub_1669B4(v5, *&v10, 0, v8, v9);
}

uint64_t sub_B85F0()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  v6 = *v1;
  *v5 = *v1;

  if (v0)
  {

    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    *(v4 + 256) = v3;
    v8 = swift_task_alloc();
    *(v4 + 264) = v8;
    *v8 = v6;
    v8[1] = sub_B87A4;

    return sub_66A84(0x6C65636E6163, 0xE600000000000000);
  }
}

uint64_t sub_B87A4()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  *v3 = v4;
  v2[34] = v5;
  v2[35] = v6;

  v7 = swift_task_alloc();
  v2[36] = v7;
  *v7 = v4;
  v7[1] = sub_B88D8;

  return sub_66A84(0x6D7269666E6F63, 0xE700000000000000);
}

uint64_t sub_B88D8()
{
  sub_8A88();
  sub_C9D4();
  *(v2 + 296) = v0;
  *(v2 + 304) = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_B89C8()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[25];
  v6 = v0[21];
  v7 = v3 == 0;
  if (!v3)
  {
    v3 = 0xE600000000000000;
  }

  v24 = v3;
  v8 = 0x6C65636E6143;
  if (!v7)
  {
    v8 = v0[34];
  }

  v23 = v8;
  if (!v1)
  {
    v2 = 0x6D7269666E6F43;
  }

  v22 = v2;
  if (v1)
  {
    v9 = v0[38];
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  v0[5] = &type metadata for WellnessFeatureFlagsKey;
  v0[6] = sub_3736C();
  *(v0 + 16) = 4;
  v10 = sub_16C86C();
  sub_2D64(v0 + 2);
  sub_16C44C();
  sub_6B5C8();
  sub_16C79C();
  sub_B91B8();
  v11 = sub_16C55C();
  sub_214C(v5, 0, 1, v11);
  sub_16C78C();
  sub_16C77C();
  v12 = [v4 catId];
  sub_16E1BC();

  sub_16C76C();
  sub_16C7AC();
  sub_8388(v6 + 208, (v0 + 7));
  v13 = v0[10];
  v14 = v0[11];
  sub_2D20(v0 + 7, v13);
  v0[15] = type metadata accessor for WellnessSnippets(0);
  v0[16] = sub_6B40C(&qword_1C5EE0, type metadata accessor for WellnessSnippets, &protocol conformance descriptor for WellnessSnippets);
  v15 = sub_9910(v0 + 12);
  *v15 = 0xD000000000000031;
  v15[1] = 0x800000000017DF40;
  v15[2] = v23;
  v15[3] = v24;
  v15[4] = v22;
  v15[5] = v9;
  *(v15 + 48) = v10 & 1;
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v16 = swift_allocObject();
  v0[39] = v16;
  *(v16 + 16) = xmmword_170F70;
  *(v16 + 32) = v4;
  v17 = v4;
  v18 = swift_task_alloc();
  v0[40] = v18;
  *v18 = v0;
  v18[1] = sub_B8CB0;
  v19 = v0[29];
  v20 = v0[20];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v20, v0 + 12, v16, v19, v13, v14);
}

uint64_t sub_B8CB0()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 96));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_B8DB0()
{
  sub_386A8();

  v1 = sub_C9C8();
  v2(v1);
  sub_2D64((v0 + 56));

  sub_C9BC();

  return v3();
}

uint64_t sub_B8E60()
{
  sub_386A8();
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = sub_16DBBC();
  sub_8B48(v4, (v0 + 17));
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_16DBDC();
  v6 = sub_16E36C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&def_259DC, v5, v6, "Couldn't create logMedGenericMixedStatusConfirmation_Dialog, returning generic error output.", v7, 2u);
    sub_8A2C(v7);
  }

  v8 = sub_C9F8();
  v9(v8);
  sub_B9A00();
  v0[41] = swift_allocError();
  v10 = swift_task_alloc();
  v0[42] = v10;
  *v10 = v0;
  v10[1] = sub_B8FD4;

  return sub_B7B68();
}

uint64_t sub_B8FD4()
{
  sub_386A8();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v7);
  }

  else
  {

    sub_C9BC();

    return v8();
  }
}

uint64_t sub_B9128()
{
  sub_386A8();

  sub_C9BC();

  return v0();
}

uint64_t sub_B91B8()
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

uint64_t sub_B9410(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_B94A8;

  return sub_B6B70();
}

uint64_t sub_B94A8()
{
  sub_C9EC();
  v3 = v2;
  v5 = v4;
  sub_C9D4();
  v7 = v6;
  sub_38388();
  *v8 = v7;
  v9 = *v1;
  sub_C990();
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

uint64_t sub_B95AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_B83BC();
}

uint64_t sub_B9644()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_B7B68();
}

uint64_t sub_B96EC(unint64_t a1)
{
  v3 = sub_3B35C(a1);
  v4 = sub_3B35C(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_B9798(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_B989C(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_B9798(uint64_t a1, char a2)
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

  sub_16E54C();
LABEL_9:
  result = sub_16E49C();
  *v2 = result;
  return result;
}

uint64_t sub_B9838(void *a1)
{
  v1 = [a1 completionStatus];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16E1BC();

  return v3;
}

uint64_t sub_B989C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_16E54C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_3B35C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_16D86C();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_B9A54();
        for (i = 0; i != v7; ++i)
        {
          sub_2440(&qword_1C9198, &qword_1751C8);
          v9 = sub_16BA80(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_B9A00()
{
  result = qword_1C9190;
  if (!qword_1C9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9190);
  }

  return result;
}

unint64_t sub_B9A54()
{
  result = qword_1C91A0;
  if (!qword_1C91A0)
  {
    sub_9790(&qword_1C9198, &qword_1751C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C91A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LogMedGenericMixedStatusConfirmationStrategyError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0xB9B54);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_B9B90()
{
  result = qword_1C91A8;
  if (!qword_1C91A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C91A8);
  }

  return result;
}

uint64_t sub_B9BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_16C46C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  (*(v7 + 16))(&v10[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v11 = a2;
  v12 = a3;
  sub_16C75C();
  return (*(v7 + 8))(a1, v6);
}

uint64_t GenericMedCompletedLogModel.init(medStatus:givenTime:url:dontDisplayGranularTime:sashBundleID:isSmartEnabled:loggedLabel:skippedLabel:takenLabel:allScheduledMedicationsLabel:snippetHeaderModel:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v68 = a7;
  v62 = a4;
  HIDWORD(v52) = a1;
  v69 = a8;
  v70 = a17;
  v66 = a6;
  v67 = a16;
  v64 = a5;
  v65 = a15;
  v63 = a14;
  v60 = a12;
  v61 = a13;
  v59 = a11;
  v57 = a3;
  v58 = a10;
  v19 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v19);
  sub_433C();
  __chkstk_darwin(v20);
  v22 = &v52 - v21;
  v23 = type metadata accessor for GenericMedCompletedLogModel(0);
  v54 = v23[6];
  v24 = sub_16C11C();
  sub_8AB4();
  sub_214C(v25, v26, v27, v24);
  v28 = v23[7];
  v29 = (a9 + v23[8]);
  v30 = v23[10];
  v55 = v23[9];
  v56 = v28;
  v31 = (a9 + v30);
  v32 = (a9 + v23[11]);
  v33 = (a9 + v23[12]);
  v34 = v23[13];
  v53 = v23[14];
  v35 = (a9 + v34);
  type metadata accessor for SnippetHeaderModel(0);
  sub_8AB4();
  sub_214C(v36, v37, v38, v39);
  *a9 = BYTE4(v52);
  *(a9 + 8) = sub_BA66C();
  *(a9 + 16) = v40;
  v41 = v57;
  sub_BA70C(v57);
  sub_8748(v41, &qword_1C57F8, &unk_172510);
  sub_16BF5C();
  sub_8B38();
  (*(v42 + 8))(a2);
  sub_214C(v22, 0, 1, v24);
  sub_1E634(v22, a9 + v54, &qword_1C63F0, &unk_1717F0);
  v43 = v55;
  *(a9 + v56) = v62;
  v44 = v66;
  *v29 = v64;
  v29[1] = v44;
  *(a9 + v43) = v68;
  v45 = v58;
  v46 = v59;
  *v31 = v69;
  v31[1] = v45;
  v47 = v60;
  v48 = v61;
  *v32 = v46;
  v32[1] = v47;
  v49 = v63;
  *v33 = v48;
  v33[1] = v49;
  v50 = v67;
  *v35 = v65;
  v35[1] = v50;
  return sub_1E634(v70, a9 + v53, &dword_1C63F8, &qword_171800);
}

uint64_t type metadata accessor for GenericMedCompletedLogModel(uint64_t a1)
{
  result = qword_1C9220;
  if (!qword_1C9220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SpecificMedCompletedLogModel.time.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t GenericMedCompletedLogModel.dontDisplayGranularTime.setter(char a1)
{
  result = type metadata accessor for GenericMedCompletedLogModel(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t GenericMedCompletedLogModel.sashBundleID.getter()
{
  type metadata accessor for GenericMedCompletedLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t GenericMedCompletedLogModel.sashBundleID.setter()
{
  sub_BC0C4();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericMedCompletedLogModel.isSmartEnabled.setter(char a1)
{
  result = type metadata accessor for GenericMedCompletedLogModel(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t GenericMedCompletedLogModel.loggedLabel.getter()
{
  type metadata accessor for GenericMedCompletedLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t GenericMedCompletedLogModel.loggedLabel.setter()
{
  sub_BC0C4();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericMedCompletedLogModel.skippedLabel.getter()
{
  type metadata accessor for GenericMedCompletedLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t GenericMedCompletedLogModel.skippedLabel.setter()
{
  sub_BC0C4();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericMedCompletedLogModel.takenLabel.getter()
{
  type metadata accessor for GenericMedCompletedLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t GenericMedCompletedLogModel.takenLabel.setter()
{
  sub_BC0C4();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericMedCompletedLogModel.allScheduledMedicationsLabel.getter()
{
  type metadata accessor for GenericMedCompletedLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t GenericMedCompletedLogModel.allScheduledMedicationsLabel.setter()
{
  sub_BC0C4();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_BA66C()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  [v0 setTimeStyle:1];
  isa = sub_16BEEC().super.isa;
  v2 = [v0 stringFromDate:isa];

  v3 = sub_16E1BC();
  return v3;
}

uint64_t sub_BA70C(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  sub_433C();
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v6 = sub_16BE9C();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86B0(a1, v5, &qword_1C57F8, &unk_172510);
  if (sub_369C(v5, 1, v6) == 1)
  {
    sub_8748(v5, &qword_1C57F8, &unk_172510);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v8 + 32))(v11, v5, v6);
    v13 = sub_16BE5C();
    sub_2068C(v13, v14);
    return (*(v8 + 8))(v11, v6);
  }
}

uint64_t sub_BA8B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x757461745364656DLL && a2 == 0xE900000000000073;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701669236 && a2 == 0xE400000000000000;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x800000000017F3D0 == a2;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x646E754268736173 && a2 == 0xEC0000004449656CLL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x457472616D537369 && a2 == 0xEE0064656C62616ELL;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x614C646567676F6CLL && a2 == 0xEB000000006C6562;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4C64657070696B73 && a2 == 0xEC0000006C656261;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x62614C6E656B6174 && a2 == 0xEA00000000006C65;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001CLL && 0x800000000017F3F0 == a2;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000012 && 0x800000000017AE80 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_16E6BC();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_BAC44(char a1)
{
  result = 0x757461745364656DLL;
  switch(a1)
  {
    case 1:
      result = 1701669236;
      break;
    case 2:
      result = 0x68636E7550707061;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x646E754268736173;
      break;
    case 5:
      result = 0x457472616D537369;
      break;
    case 6:
      result = 0x614C646567676F6CLL;
      break;
    case 7:
      result = 0x4C64657070696B73;
      break;
    case 8:
      result = 0x62614C6E656B6174;
      break;
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_BADE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_BA8B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_BAE10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_BAC3C();
  *a1 = result;
  return result;
}

uint64_t sub_BAE38(uint64_t a1)
{
  v2 = sub_BB1C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BAE74(uint64_t a1)
{
  v2 = sub_BB1C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GenericMedCompletedLogModel.encode(to:)(void *a1)
{
  v3 = sub_2440(&qword_1C91B0, &qword_1752B8);
  sub_42F0();
  v5 = v4;
  sub_433C();
  __chkstk_darwin(v6);
  v8 = &v15[-v7];
  sub_2D20(a1, a1[3]);
  sub_BB1C8();
  sub_16E77C();
  v15[15] = 0;
  sub_BC0B8();
  sub_16E65C();
  if (!v1)
  {
    v15[14] = 1;
    sub_BC068();
    sub_16E64C();
    v9 = type metadata accessor for GenericMedCompletedLogModel(0);
    v15[13] = 2;
    sub_16C11C();
    sub_BC088();
    sub_BB9BC(v10, v11, &protocol conformance descriptor for AppPunchout);
    sub_BC0B8();
    sub_16E63C();
    v15[12] = 3;
    sub_BC0B8();
    sub_16E65C();
    sub_66A40(v9[8]);
    v15[11] = 4;
    sub_BC068();
    sub_16E64C();
    v15[10] = 5;
    sub_BC0B8();
    sub_16E65C();
    sub_66A40(v9[10]);
    v15[9] = 6;
    sub_BC068();
    sub_16E61C();
    sub_66A40(v9[11]);
    v15[8] = 7;
    sub_BC068();
    sub_16E61C();
    sub_66A40(v9[12]);
    v15[7] = 8;
    sub_BC068();
    sub_16E61C();
    sub_66A40(v9[13]);
    v15[6] = 9;
    sub_BC068();
    sub_16E61C();
    v15[5] = 10;
    type metadata accessor for SnippetHeaderModel(0);
    sub_BC0A0();
    sub_BB9BC(v12, v13, &protocol conformance descriptor for SnippetHeaderModel);
    sub_BC0B8();
    sub_16E63C();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_BB1C8()
{
  result = qword_1C91B8;
  if (!qword_1C91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C91B8);
  }

  return result;
}

uint64_t GenericMedCompletedLogModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v3);
  sub_433C();
  __chkstk_darwin(v4);
  v64 = v61 - v5;
  v6 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v6);
  sub_433C();
  __chkstk_darwin(v7);
  v9 = v61 - v8;
  v67 = sub_2440(&qword_1C91C0, &qword_1752C0);
  sub_42F0();
  v65 = v10;
  sub_433C();
  __chkstk_darwin(v11);
  v13 = v61 - v12;
  v14 = type metadata accessor for GenericMedCompletedLogModel(0);
  sub_8B38();
  v16 = __chkstk_darwin(v15);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 24);
  v20 = sub_16C11C();
  v71 = v19;
  sub_8AB4();
  sub_214C(v21, v22, v23, v20);
  v24 = *(v14 + 56);
  v72 = v18;
  v25 = &v18[v24];
  v26 = type metadata accessor for SnippetHeaderModel(0);
  v69 = v25;
  sub_8AB4();
  sub_214C(v27, v28, v29, v26);
  v30 = a1[3];
  v70 = a1;
  sub_2D20(a1, v30);
  sub_BB1C8();
  v66 = v13;
  v31 = v68;
  sub_16E76C();
  if (v31)
  {
    sub_BC054();
    v33 = v71;
    v34 = v72;
    sub_2D64(v70);

    sub_8748(&v34[v33], &qword_1C63F0, &unk_1717F0);

    return sub_8748(v69, &dword_1C63F8, &qword_171800);
  }

  else
  {
    v68 = 0x800000000017A2C0;
    v62 = v14;
    v83 = 0;
    v32 = sub_16E5CC();
    v36 = v72;
    *v72 = v32 & 1;
    v82 = 1;
    v37 = sub_16E5BC();
    v38 = v71;
    *(v36 + 1) = v37;
    *(v36 + 2) = v39;
    v61[1] = v39;
    v81 = 2;
    sub_BC088();
    sub_BB9BC(v40, v41, &protocol conformance descriptor for AppPunchout);
    sub_16E5AC();
    sub_1E634(v9, &v36[v38], &qword_1C63F0, &unk_1717F0);
    v80 = 3;
    sub_BC0E0();
    v42 = sub_16E5CC();
    v43 = v62;
    v36[v62[7]] = v42 & 1;
    v79 = 4;
    sub_BC0E0();
    v44 = sub_16E5BC();
    sub_BC114(v44, v45, v43[8]);
    v78 = 5;
    sub_BC0E0();
    v36[v43[9]] = sub_16E5CC() & 1;
    v77 = 6;
    sub_BC0E0();
    v46 = sub_16E58C();
    sub_BC114(v46, v47, v43[10]);
    v68 = v48;
    v76 = 7;
    sub_BC0E0();
    v49 = sub_16E58C();
    sub_BC114(v49, v50, v43[11]);
    v75 = 8;
    sub_BC0E0();
    v51 = sub_16E58C();
    sub_BC114(v51, v52, v43[12]);
    v74 = 9;
    sub_BC0E0();
    v53 = sub_16E58C();
    v54 = &v72[v62[13]];
    *v54 = v53;
    v54[1] = v55;
    v73 = 10;
    sub_BC0A0();
    sub_BB9BC(v56, v57, &protocol conformance descriptor for SnippetHeaderModel);
    sub_16E5AC();
    v58 = sub_BC104();
    v59(v58);
    sub_1E634(v64, v69, &dword_1C63F8, &qword_171800);
    v60 = v72;
    sub_BB86C(v72, v63);
    sub_2D64(v70);
    return sub_BB8D0(v60);
  }
}

uint64_t sub_BB86C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMedCompletedLogModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BB8D0(uint64_t a1)
{
  v2 = type metadata accessor for GenericMedCompletedLogModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BB9BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_BBA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_2440(&dword_1C63F8, &qword_171800);
      v10 = *(a3 + 56);
    }

    return sub_369C(a1 + v10, a2, v9);
  }
}

uint64_t sub_BBB40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_2440(&dword_1C63F8, &qword_171800);
      v10 = *(a4 + 56);
    }

    return sub_214C(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_BBC20(uint64_t a1)
{
  sub_BBD6C(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  if (v1 <= 0x3F)
  {
    sub_BBD1C();
    if (v2 <= 0x3F)
    {
      sub_BBD6C(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_BBD1C()
{
  if (!qword_1C64C8)
  {
    v0 = sub_16E3EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C64C8);
    }
  }
}

void sub_BBD6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_16E3EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for GenericMedCompletedLogModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GenericMedCompletedLogModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0xBBF14);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_BBF50()
{
  result = qword_1C9280;
  if (!qword_1C9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9280);
  }

  return result;
}

unint64_t sub_BBFA8()
{
  result = qword_1C9288;
  if (!qword_1C9288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9288);
  }

  return result;
}

unint64_t sub_BC000()
{
  result = qword_1C9290;
  if (!qword_1C9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9290);
  }

  return result;
}

uint64_t sub_BC0C4()
{

  return type metadata accessor for GenericMedCompletedLogModel(0);
}

uint64_t sub_BC0EC()
{

  return type metadata accessor for GenericMedCompletedLogModel(0);
}

uint64_t sub_BC114@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t sub_BC120(uint64_t a1, uint64_t a2)
{
  sub_BC9FC();

  return sub_16C33C();
}

uint64_t sub_BC174()
{
  sub_8A88();
  v1[25] = v2;
  v1[26] = v0;
  v3 = sub_16DBEC();
  v1[27] = v3;
  sub_888C(v3);
  v1[28] = v4;
  v1[29] = swift_task_alloc();
  v5 = sub_16C46C();
  v1[30] = v5;
  sub_888C(v5);
  v1[31] = v6;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v7 = sub_16C7BC();
  v1[34] = v7;
  sub_888C(v7);
  v1[35] = v8;
  v1[36] = swift_task_alloc();

  return _swift_task_switch(sub_BC2DC);
}

uint64_t sub_BC2DC()
{
  sub_8A88();
  sub_2D20((*(v0 + 208) + 40), *(*(v0 + 208) + 64));
  v1 = swift_task_alloc();
  *(v0 + 296) = v1;
  *v1 = v0;
  v1[1] = sub_BC378;

  return sub_7AC90();
}

uint64_t sub_BC378(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;
  *(v4 + 304) = v1;

  if (v1)
  {
    v7 = sub_BC64C;
  }

  else
  {
    *(v4 + 312) = a1;
    v7 = sub_BC498;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_BC498(uint64_t a1)
{
  v2 = v1[39];
  v4 = v1[35];
  v3 = v1[36];
  v5 = v1[33];
  v13 = v1[34];
  v6 = v1[31];
  v7 = v1[32];
  v8 = v1[30];
  v9 = v1[26];
  sub_16C45C();
  (*(v6 + 16))(v7, v5, v8);
  sub_16C75C();
  (*(v6 + 8))(v5, v8);
  v10 = [v2 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_2D20(v9, v9[3]);
  sub_16C2FC();
  sub_16C4FC();

  (*(v4 + 8))(v3, v13);

  v11 = v1[1];

  return v11();
}

uint64_t sub_BC64C(uint64_t a1)
{
  v3 = v1[28];
  v2 = v1[29];
  v4 = v1[27];
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
    _os_log_impl(&def_259DC, v6, v7, "Couldn't execute wellness#outsideRetentionPolicy pattern. Error: %@", v8, 0xCu);
    sub_6450C(v9);
  }

  else
  {
  }

  v11 = v1[26];
  (*(v1[28] + 8))(v1[29], v1[27]);
  sub_8284(v11, (v1 + 2));
  sub_82E0();
  sub_16C4EC();
  sub_8334((v1 + 2));

  v12 = v1[1];

  return v12();
}

uint64_t sub_BC848@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_16D63C();
  __chkstk_darwin(v2 - 8);
  sub_C1F30(a1);
  v3 = type metadata accessor for WellnessCATPatternsExecutor(0);
  sub_16D62C();
  v4 = sub_16D58C();
  a1[8] = v3;
  a1[9] = &off_1BA5B0;
  a1[5] = v4;
  v5 = type metadata accessor for WellnessLoggingCATPatternsExecutor(0);
  sub_16D62C();
  v6 = sub_16D58C();
  a1[13] = v5;
  a1[14] = &off_1BC5D0;
  a1[10] = v6;
  v7 = type metadata accessor for WellnessQueryingCATPatternsExecutor(0);
  sub_16D62C();
  result = sub_16D58C();
  a1[18] = v7;
  a1[19] = &off_1BA360;
  a1[15] = result;
  return result;
}

uint64_t sub_BC964()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C374;

  return sub_BC174();
}

unint64_t sub_BC9FC()
{
  result = qword_1C9298;
  if (!qword_1C9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9298);
  }

  return result;
}

uint64_t sub_BCA50()
{
  v1 = OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_first;
  v2 = sub_16D5CC();
  sub_214C(v0 + v1, 1, 1, v2);
  sub_7DED0(OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_second);
  sub_7DED0(OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_third);
  sub_7DED0(OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_fourth);
  return v0;
}

uint64_t sub_BCAC4()
{
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_first);
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_second);
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_third);
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_fourth);
  return v0;
}

uint64_t sub_BCB50(uint64_t a1)
{
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-v4];
  *(v1 + 16) = 0;
  v6 = OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_first;
  sub_8B48(a1 + OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_first, v14);
  sub_7DA9C(a1 + v6, v1 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_first);
  v7 = OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_second;
  sub_8B48(a1 + OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_second, v13);
  sub_7DA9C(a1 + v7, v1 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_second);
  v8 = OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_third;
  sub_8B48(a1 + OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_third, v12);
  sub_7DA9C(a1 + v8, v1 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_third);
  v9 = OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_fourth;
  sub_8B48(a1 + OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_fourth, v11);
  sub_7DA9C(a1 + v9, v5);

  sub_7DB0C(v5, v1 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_fourth);
  return v1;
}

uint64_t sub_BCC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_2440(&qword_1C5800, &unk_16F510);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v26 - v15;
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  v19 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v19 || (sub_BDE58(0x7473726966, 0xE500000000000000) & 1) != 0)
  {
    sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_first, v18);
    sub_16D5CC();
    sub_7DEB0(v18);
    if (!v19)
    {
      goto LABEL_33;
    }

    v20 = v18;
    goto LABEL_9;
  }

  v22 = a1 == 0x646E6F636573 && a2 == 0xE600000000000000;
  if (v22 || (sub_BDE58(0x646E6F636573, 0xE600000000000000) & 1) != 0)
  {
    sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_second, v16);
    sub_16D5CC();
    sub_7DEB0(v16);
    if (!v19)
    {
      goto LABEL_33;
    }

    v20 = v16;
    goto LABEL_9;
  }

  v23 = a1 == 0x6472696874 && a2 == 0xE500000000000000;
  if (v23 || (sub_BDE58(0x6472696874, 0xE500000000000000) & 1) != 0)
  {
    sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_third, v13);
    sub_16D5CC();
    sub_7DEB0(v13);
    if (!v19)
    {
      goto LABEL_33;
    }

    v20 = v13;
    goto LABEL_9;
  }

  if (a1 != 0x687472756F66 || a2 != 0xE600000000000000)
  {
    result = sub_BDE58(0x687472756F66, 0xE600000000000000);
    if ((result & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_fourth, v10);
  sub_16D5CC();
  sub_7DEB0(v10);
  if (v19)
  {
    v20 = v10;
LABEL_9:
    result = sub_6261C(v20);
LABEL_10:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

LABEL_33:
  sub_BDE84();
  sub_7DE8C();
  return (*(v25 + 32))();
}

unint64_t sub_BCF90(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1B85A0;
  v6._object = a2;
  v4 = sub_16E55C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_BCFDC(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      result = 0x646E6F636573;
      break;
    case 2:
      result = 0x6472696874;
      break;
    case 3:
      result = 0x687472756F66;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_BD080@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_BCF90(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_BD0B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_BCFDC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_BD0E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_BCF90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_BD118(uint64_t a1)
{
  v2 = sub_BDBD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BD154(uint64_t a1)
{
  v2 = sub_BDBD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_BD190()
{
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_first);
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_second);
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_third);
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_fourth);
  return v0;
}

uint64_t sub_BD208(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return _swift_deallocClassInstance(v1, v2, v3);
}

void sub_BD28C(uint64_t a1)
{
  sub_7D0F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_BD32C(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1C9548, &qword_1756D8);
  sub_42F0();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  sub_2D20(a1, a1[3]);
  sub_BDBD8();
  sub_16E77C();
  v11 = OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_first;
  v15[15] = 0;
  sub_16D5CC();
  sub_BDE40();
  sub_BDB90(v12, v13, &protocol conformance descriptor for SpeakableString);
  sub_7DE68(v3 + v11);
  if (!v2)
  {
    v15[14] = 1;
    sub_7DE68(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_second);
    v15[13] = 2;
    sub_7DE68(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_third);
    v15[12] = 3;
    sub_7DE68(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_fourth);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_BD4F8(void *a1)
{
  v2 = swift_allocObject();
  sub_BD604(a1);
  return v2;
}

void sub_BD570(uint64_t a1)
{
  sub_7D0F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_BD604(void *a1)
{
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v35 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = v35 - v11;
  __chkstk_darwin(v10);
  v14 = v35 - v13;
  v38 = sub_2440(&qword_1C9538, &qword_1756D0);
  sub_42F0();
  v16 = v15;
  __chkstk_darwin(v17);
  v40 = v1;
  v41 = a1;
  *(v1 + 16) = 0;
  v18 = a1[3];
  v19 = a1;
  v21 = v35 - v20;
  sub_2D20(v19, v18);
  sub_BDBD8();
  v22 = v39;
  sub_16E76C();
  if (v22)
  {
    v32 = v40;

    type metadata accessor for WellnessDialogStringQuartet(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v39 = v9;
    v23 = v16;
    v37 = v6;
    sub_16D5CC();
    v45 = 0;
    sub_BDE40();
    v26 = sub_BDB90(v24, v25, &protocol conformance descriptor for SpeakableString);
    v27 = v38;
    sub_16E5AC();
    v29 = v21;
    v30 = v40;
    sub_7DB0C(v14, v40 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_first);
    v44 = 1;
    sub_BDE74();
    v35[1] = v26;
    v36 = v29;
    sub_16E5AC();
    sub_7DB0C(v12, v30 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_second);
    v43 = 2;
    v31 = v39;
    sub_BDE74();
    v35[0] = 0;
    sub_16E5AC();
    v32 = v30;
    sub_7DB0C(v31, v30 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_third);
    v42 = 3;
    v33 = v36;
    v34 = v37;
    sub_BDE74();
    sub_16E5AC();
    (*(v23 + 8))(v33, v27);
    sub_7DB0C(v34, v30 + OBJC_IVAR____TtC18WellnessFlowPlugin27WellnessDialogStringQuartet_fourth);
  }

  sub_2D64(v41);
  return v32;
}

uint64_t sub_BDAB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_BD4F8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_BDB90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_BDBD8()
{
  result = qword_1C9540;
  if (!qword_1C9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9540);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WellnessDialogStringQuartet.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0xBDCF8);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_BDD34()
{
  result = qword_1C9550;
  if (!qword_1C9550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9550);
  }

  return result;
}

unint64_t sub_BDD8C()
{
  result = qword_1C9558;
  if (!qword_1C9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9558);
  }

  return result;
}

unint64_t sub_BDDE4()
{
  result = qword_1C9560;
  if (!qword_1C9560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9560);
  }

  return result;
}

uint64_t sub_BDE58(uint64_t a1, uint64_t a2)
{

  return sub_16E6BC();
}

uint64_t *sub_BDE84()
{
  v0[3] = v1;

  return sub_9910(v0);
}

unint64_t sub_BDE9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_8388(v2, v12);
  sub_8284(v2 + 40, v11);
  v5 = objc_allocWithZone(sub_16D92C());

  v6 = sub_16D91C();
  v7 = type metadata accessor for MedsLoggingCorrectionsFlow(0);
  v8 = swift_allocObject();
  v9 = sub_BDF64(a1, v12, v11, v6, v8);
  a2[3] = v7;
  result = sub_BE348();
  a2[4] = result;
  *a2 = v9;
  return result;
}

uint64_t sub_BDF64(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v33 = a4;
  v30 = a1;
  v8 = sub_16DBEC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v32 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v14 = (a5 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_kWellnessFlowPluginIdentifier);
  *v14 = 0xD000000000000021;
  v14[1] = 0x800000000017F4D0;
  v15 = OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_correctionInput;
  v16 = sub_16C7DC();
  sub_214C(a5 + v15, 1, 1, v16);
  v17 = sub_16DBBC();
  swift_beginAccess();
  v29 = v9[2];
  v29(v13, v17, v8);
  v18 = sub_16DBDC();
  v19 = sub_16E36C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = v9;
    *v20 = 0;
    _os_log_impl(&def_259DC, v18, v19, "Initializing MedsLoggingCorrectionsFlow", v20, 2u);
    v9 = v31;
  }

  v31 = v9[1];
  (v31)(v13, v8);
  *(a5 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_matchingMeds) = v30;
  sub_8388(a2, a5 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_flowConfig);
  sub_8284(a3, a5 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_provider);
  *(a5 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_intentHandler) = v33;
  *(a5 + 16) = 0;
  v21 = a5 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_correctionsExitValue;
  strcpy((a5 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_correctionsExitValue), "initial value");
  *(v21 + 14) = -4864;
  v22 = enum case for CorrectionsExitValue.failure(_:);
  v23 = sub_16C71C();
  (*(*(v23 - 8) + 104))(v21, v22, v23);
  swift_beginAccess();
  v29(v32, v17, v8);
  swift_unknownObjectRetain();
  v24 = sub_16DBDC();
  v25 = sub_16E36C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&def_259DC, v24, v25, "Initialized LoggingCorrectionsFlow", v26, 2u);
  }

  sub_C938(a3);
  sub_2D64(a2);
  (v31)(v32, v8);
  return a5;
}

unint64_t sub_BE348()
{
  result = qword_1C9568;
  if (!qword_1C9568)
  {
    type metadata accessor for MedsLoggingCorrectionsFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9568);
  }

  return result;
}

uint64_t sub_BE3BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_BE400(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t hasStatusOrSchedule(from:)(uint64_t result)
{
  if (result)
  {
    if (sub_16CCEC() || (result = sub_16CCDC()) != 0)
    {

      return 1;
    }
  }

  return result;
}

uint64_t isTimeframeToday(from:todayDate:)(uint64_t a1, uint64_t a2)
{
  v157 = a2;
  sub_16CA4C();
  sub_42F0();
  v146 = v4;
  v147 = v3;
  __chkstk_darwin(v3);
  sub_4304();
  v135 = v6 - v5;
  v145 = sub_2440(&qword_1C6978, &qword_172590);
  sub_8B38();
  __chkstk_darwin(v7);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v8);
  v143 = &v134 - v9;
  v10 = sub_2440(&qword_1C6980, &qword_172598);
  __chkstk_darwin(v10 - 8);
  sub_887C();
  sub_13058();
  __chkstk_darwin(v11);
  sub_13058();
  __chkstk_darwin(v12);
  sub_13058();
  __chkstk_darwin(v13);
  sub_13058();
  v15 = __chkstk_darwin(v14);
  v17 = &v134 - v16;
  __chkstk_darwin(v15);
  v142 = &v134 - v18;
  sub_CA04();
  sub_16DBEC();
  sub_42F0();
  v151 = v20;
  v152 = v19;
  __chkstk_darwin(v19);
  sub_4304();
  v150 = v22 - v21;
  sub_CA04();
  v156 = sub_16C09C();
  sub_42F0();
  v159 = v23;
  __chkstk_darwin(v24);
  sub_4304();
  v155 = v26 - v25;
  sub_CA04();
  v154 = sub_16C0BC();
  sub_42F0();
  v148 = v27;
  __chkstk_darwin(v28);
  sub_4304();
  v153 = v30 - v29;
  sub_CA04();
  v31 = sub_16CB8C();
  sub_42F0();
  v33 = v32;
  __chkstk_darwin(v34);
  sub_4304();
  v37 = v36 - v35;
  v38 = sub_2440(&qword_1C69A8, &qword_1725A8);
  sub_8B38();
  __chkstk_darwin(v39);
  v41 = &v134 - v40;
  v42 = sub_2440(&qword_1C69B0, qword_1725B0);
  __chkstk_darwin(v42 - 8);
  sub_887C();
  v45 = v43 - v44;
  v47 = __chkstk_darwin(v46);
  v49 = &v134 - v48;
  __chkstk_darwin(v47);
  v51 = &v134 - v50;
  v158 = a1;
  v137 = v17;
  if (a1 && sub_16CCFC())
  {
    sub_16CB7C();
  }

  else
  {
    sub_8AB4();
    sub_214C(v52, v53, v54, v31);
  }

  (*(v33 + 104))(v49, enum case for UsoEntity_common_DateTime.DefinedValues.common_DateTime_Now(_:), v31);
  sub_388E4();
  sub_214C(v55, v56, v57, v31);
  v58 = *(v38 + 48);
  sub_74678(v51, v41, &qword_1C69B0, qword_1725B0);
  sub_74678(v49, &v41[v58], &qword_1C69B0, qword_1725B0);
  sub_BFAB8(v41);
  if (v61)
  {
    sub_8748(v49, &qword_1C69B0, qword_1725B0);
    sub_BFA50();
    sub_BFAB8(&v41[v58]);
    if (v61)
    {
      v59 = &qword_1C69B0;
      v60 = qword_1725B0;
LABEL_61:
      sub_8748(v41, v59, v60);
      goto LABEL_62;
    }

    goto LABEL_13;
  }

  sub_74678(v41, v45, &qword_1C69B0, qword_1725B0);
  sub_BFAB8(&v41[v58]);
  if (v61)
  {
    sub_BFAA0(v49);
    sub_BFAA0(v51);
    (*(v33 + 8))(v45, v31);
LABEL_13:
    sub_8748(v41, &qword_1C69A8, &qword_1725A8);
    goto LABEL_14;
  }

  (*(v33 + 32))(v37, &v41[v58], v31);
  sub_BF9D0(&qword_1C69B8, &type metadata accessor for UsoEntity_common_DateTime.DefinedValues, &protocol conformance descriptor for UsoEntity_common_DateTime.DefinedValues);
  v79 = sub_16E19C();
  v80 = *(v33 + 8);
  v80(v37, v31);
  sub_8748(v49, &qword_1C69B0, qword_1725B0);
  sub_8748(v51, &qword_1C69B0, qword_1725B0);
  v80(v45, v31);
  sub_8748(v41, &qword_1C69B0, qword_1725B0);
  if (v79)
  {
    goto LABEL_62;
  }

LABEL_14:
  v62 = v158;
  if (v158 && sub_16CCFC())
  {
    v63 = sub_16CB9C();

    if (v63)
    {
      sub_16CA5C();
      sub_BFA88();
      sub_16CB1C();
      sub_BFA6C();
      v64 = v62 ^ 1;
      v62 = v158;
      goto LABEL_20;
    }
  }

  else
  {
    v63 = 0;
  }

  v64 = 0;
LABEL_20:
  v65 = v153;
  sub_16C08C();
  v66 = v159;
  v67 = *(v159 + 104);
  v69 = v155;
  v68 = v156;
  v67(v155, enum case for Calendar.Component.year(_:), v156);
  v70 = sub_16C0AC();
  v71 = *(v66 + 8);
  v159 = v66 + 8;
  v149 = v71;
  v71(v69, v68);
  v148 = *(v148 + 8);
  (v148)(v65, v154);
  v144 = v63 == v70;
  if (v62)
  {
    v72 = sub_16CCFC();
    if (v72)
    {
      sub_16CB9C();
      sub_BFA88();
      v72 = sub_16CA2C();

      if (v72)
      {
        sub_16CC4C();
        sub_BFA88();
        sub_16CB1C();
        sub_BFA6C();
        v136 = v62 ^ 1;
        v62 = v158;
        goto LABEL_26;
      }
    }
  }

  else
  {
    v72 = 0;
  }

  v136 = 0;
LABEL_26:
  v73 = v153;
  sub_16C08C();
  v75 = v155;
  v74 = v156;
  v67(v155, enum case for Calendar.Component.month(_:), v156);
  v76 = sub_16C0AC();
  v149(v75, v74);
  (v148)(v73, v154);
  v77 = v72 == v76;
  if (v62)
  {
    if (sub_16CCFC())
    {
      v78 = sub_16CB9C();

      if (v78)
      {
        sub_16CA1C();
        sub_BFA88();
        sub_16CB1C();
        sub_BFA6C();
        LOBYTE(v62) = v62 ^ 1;
        goto LABEL_35;
      }
    }

    else
    {
      v78 = 0;
    }

    LOBYTE(v62) = 0;
  }

  else
  {
    v78 = 0;
  }

LABEL_35:
  v81 = v64 & v144;
  v144 = v136 & v77;
  v82 = v153;
  sub_16C08C();
  v84 = v155;
  v83 = v156;
  v67(v155, enum case for Calendar.Component.day(_:), v156);
  v85 = sub_16C0AC();
  v149(v84, v83);
  (v148)(v82, v154);
  v86 = v62 & (v78 == v85);
  v87 = sub_16DBBC();
  swift_beginAccess();
  (*(v151 + 16))(v150, v87, v152);
  v88 = v158;

  v89 = sub_16DBDC();
  v90 = sub_16E36C();
  if (!os_log_type_enabled(v89, v90))
  {

    v95 = v146;
    v93 = v147;
    v96 = v88;
    goto LABEL_51;
  }

  LODWORD(v156) = v90;
  v91 = swift_slowAlloc();
  *v91 = 67109888;
  LODWORD(v159) = v81;
  *(v91 + 4) = v81;
  *(v91 + 8) = 1024;
  *(v91 + 10) = v144;
  *(v91 + 14) = 1024;
  LODWORD(v157) = v86;
  *(v91 + 16) = v86;
  *(v91 + 20) = 1024;
  v92 = v146;
  v93 = v147;
  if (v88 && sub_16CCFC())
  {
    sub_16CB9C();
    sub_BFA88();
    v94 = v142;
    sub_16CA3C();
  }

  else
  {
    v94 = v142;
    sub_8AB4();
    sub_214C(v97, v98, v99, v93);
  }

  v95 = v92;
  v100 = v137;
  (*(v92 + 104))(v137, enum case for UsoEntity_common_Date.DefinedValues.common_Date_Today(_:), v93);
  sub_388E4();
  sub_214C(v101, v102, v103, v93);
  v104 = *(v145 + 48);
  v105 = v143;
  sub_74678(v94, v143, &qword_1C6980, &qword_172598);
  sub_74678(v100, v105 + v104, &qword_1C6980, &qword_172598);
  sub_BFA18(v105);
  if (!v61)
  {
    v108 = v134;
    sub_74678(v105, v134, &qword_1C6980, &qword_172598);
    sub_BFA18(v105 + v104);
    if (!v109)
    {
      v110 = v105 + v104;
      v111 = v135;
      (*(v95 + 32))(v135, v110, v93);
      sub_BFA38();
      sub_BF9D0(v112, v113, &protocol conformance descriptor for UsoEntity_common_Date.DefinedValues);
      LODWORD(v155) = sub_16E19C();
      v114 = *(v146 + 8);
      v114(v111, v147);
      sub_8748(v100, &qword_1C6980, &qword_172598);
      sub_8748(v142, &qword_1C6980, &qword_172598);
      v114(v108, v147);
      v95 = v146;
      v93 = v147;
      sub_8748(v105, &qword_1C6980, &qword_172598);
      v107 = v155 & 1;
      goto LABEL_50;
    }

    sub_BFA50();
    v106 = v143;
    sub_8748(v142, &qword_1C6980, &qword_172598);
    (*(v95 + 8))(v108, v93);
LABEL_49:
    sub_8748(v106, &qword_1C6978, &qword_172590);
    v107 = 0;
    goto LABEL_50;
  }

  sub_BFA50();
  v106 = v143;
  sub_8748(v94, &qword_1C6980, &qword_172598);
  sub_BFA18(v106 + v104);
  if (!v61)
  {
    goto LABEL_49;
  }

  sub_8748(v106, &qword_1C6980, &qword_172598);
  v107 = 1;
LABEL_50:
  v86 = v157;
  *(v91 + 22) = v107;
  v96 = v158;

  _os_log_impl(&def_259DC, v89, v156, "isThisYear: %{BOOL}d,\nisThisMonth: %{BOOL}d,\nisThisDay: %{BOOL}d,\ndefinedValue: %{BOOL}d", v91, 0x1Au);

  v81 = v159;
LABEL_51:
  v115 = v144;
  (*(v151 + 8))(v150, v152);
  if ((v81 & v115 & v86 & 1) == 0)
  {
    if (v96 && sub_16CCFC())
    {
      sub_16CB9C();
      sub_BFA88();
      v116 = v139;
      sub_16CA3C();
    }

    else
    {
      v116 = v139;
      sub_8AB4();
      sub_214C(v117, v118, v119, v93);
    }

    v41 = v141;
    v120 = v140;
    v121 = v138;
    (*(v95 + 104))(v138, enum case for UsoEntity_common_Date.DefinedValues.common_Date_Today(_:), v93);
    sub_388E4();
    sub_214C(v122, v123, v124, v93);
    v125 = *(v145 + 48);
    sub_74678(v116, v41, &qword_1C6980, &qword_172598);
    sub_74678(v121, &v41[v125], &qword_1C6980, &qword_172598);
    sub_BFA18(v41);
    if (!v61)
    {
      sub_74678(v41, v120, &qword_1C6980, &qword_172598);
      sub_BFA18(&v41[v125]);
      if (!v128)
      {
        v129 = &v41[v125];
        v130 = v135;
        (*(v95 + 32))(v135, v129, v93);
        sub_BFA38();
        sub_BF9D0(v131, v132, &protocol conformance descriptor for UsoEntity_common_Date.DefinedValues);
        v126 = sub_16E19C();
        v133 = *(v95 + 8);
        v133(v130, v93);
        sub_BFAA0(v121);
        sub_BFAA0(v116);
        v133(v120, v93);
        sub_BFAA0(v41);
        return v126 & 1;
      }

      sub_BFA50();
      sub_8748(v116, &qword_1C6980, &qword_172598);
      (*(v95 + 8))(v120, v93);
LABEL_67:
      sub_8748(v41, &qword_1C6978, &qword_172590);
      v126 = 0;
      return v126 & 1;
    }

    sub_BFA50();
    sub_8748(v116, &qword_1C6980, &qword_172598);
    sub_BFA18(&v41[v125]);
    if (!v61)
    {
      goto LABEL_67;
    }

    v59 = &qword_1C6980;
    v60 = &qword_172598;
    goto LABEL_61;
  }

LABEL_62:
  v126 = 1;
  return v126 & 1;
}

uint64_t isTimeframeNone(from:)(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (!sub_16CCFC())
  {
    return 1;
  }

  return 0;
}

uint64_t getMedEventDateTime(from:)(uint64_t result)
{
  if (result)
  {
    return sub_16CCFC();
  }

  return result;
}

uint64_t getMedStatus(from:)(uint64_t a1)
{
  v2 = sub_16CD4C();
  sub_42F0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_4304();
  v8 = v7 - v6;
  v9 = sub_2440(&qword_1C9570, &qword_175928);
  sub_8B38();
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = sub_2440(&qword_1C9578, &qword_175930);
  __chkstk_darwin(v13 - 8);
  sub_887C();
  v16 = v14 - v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v35 - v19;
  __chkstk_darwin(v18);
  v22 = &v35 - v21;
  if (a1 && sub_16CCDC())
  {
    sub_16CD3C();
  }

  else
  {
    sub_8AB4();
    sub_214C(v23, v24, v25, v2);
  }

  (*(v4 + 104))(v20, enum case for UsoEntity_common_CompletionStatus.DefinedValues.common_CompletionStatus_NotCompleted(_:), v2);
  sub_388E4();
  sub_214C(v26, v27, v28, v2);
  v29 = *(v9 + 48);
  sub_74678(v22, v12, &qword_1C9578, &qword_175930);
  sub_74678(v20, &v12[v29], &qword_1C9578, &qword_175930);
  sub_BFAD8(v12);
  if (!v31)
  {
    sub_74678(v12, v16, &qword_1C9578, &qword_175930);
    sub_BFAD8(&v12[v29]);
    if (!v31)
    {
      (*(v4 + 32))(v8, &v12[v29], v2);
      sub_BF9D0(&qword_1C9580, &type metadata accessor for UsoEntity_common_CompletionStatus.DefinedValues, &protocol conformance descriptor for UsoEntity_common_CompletionStatus.DefinedValues);
      v32 = sub_16E19C();
      v33 = *(v4 + 8);
      v33(v8, v2);
      sub_8748(v20, &qword_1C9578, &qword_175930);
      sub_8748(v22, &qword_1C9578, &qword_175930);
      v33(v16, v2);
      sub_8748(v12, &qword_1C9578, &qword_175930);
      v30 = v32 ^ 1;
      return v30 & 1;
    }

    sub_4B43C(v20);
    sub_4B43C(v22);
    (*(v4 + 8))(v16, v2);
LABEL_13:
    sub_8748(v12, &qword_1C9570, &qword_175928);
    v30 = 1;
    return v30 & 1;
  }

  sub_4B43C(v20);
  sub_4B43C(v22);
  sub_BFAD8(&v12[v29]);
  if (!v31)
  {
    goto LABEL_13;
  }

  sub_8748(v12, &qword_1C9578, &qword_175930);
  v30 = 0;
  return v30 & 1;
}

uint64_t isTimeframeTodayOrNone(from:todayDate:)(uint64_t a1, uint64_t a2)
{
  if (!a1 || !sub_16CCFC())
  {
    return 1;
  }

  return isTimeframeToday(from:todayDate:)(a1, a2);
}

uint64_t sub_BF97C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_BF9AC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_BF9D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_BFA50()
{

  return sub_8748(v2, v0, v1);
}

uint64_t sub_BFA6C()
{
}

uint64_t sub_BFA88()
{
}

uint64_t sub_BFAA0(uint64_t a1)
{

  return sub_8748(a1, v1, v2);
}

id HKActivityRingUIViewRepresentable.makeUIView(context:)()
{
  v1 = [objc_allocWithZone(HKActivitySummary) init];
  v2 = objc_opt_self();
  v3 = [v2 largeCalorieUnit];
  if (*(v0 + 56))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *(v0 + 48);
  }

  v5 = [objc_opt_self() quantityWithUnit:v3 doubleValue:v4];

  [v1 setActiveEnergyBurned:v5];
  v6 = [v2 largeCalorieUnit];
  v7 = sub_C0000();

  sub_C001C(v8, "setActiveEnergyBurnedGoal:");
  v9 = [v2 hourUnit];
  v10 = sub_C0000();

  sub_C001C(v11, "setAppleExerciseTime:");
  v12 = [v2 hourUnit];
  v13 = sub_C0000();

  sub_C001C(v14, "setAppleExerciseTimeGoal:");
  v15 = [v2 countUnit];
  v16 = sub_C0000();

  sub_C001C(v17, "setAppleStandHours:");
  v18 = [v2 countUnit];
  v19 = sub_C0000();

  [v1 setAppleStandHoursGoal:v19];
  v20 = [objc_allocWithZone(HKActivityRingView) init];
  [v20 setActivitySummary:v1 animated:1];

  return v20;
}

unint64_t sub_BFDF4()
{
  result = qword_1C9588;
  if (!qword_1C9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9588);
  }

  return result;
}

uint64_t sub_BFEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BFFAC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_BFF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BFFAC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_BFF74(uint64_t a1)
{
  sub_BFFAC();
  sub_16DD9C();
  __break(1u);
}

unint64_t sub_BFFAC()
{
  result = qword_1C9590;
  if (!qword_1C9590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9590);
  }

  return result;
}

id sub_C0000()
{
  v4 = *(v2 + 3048);

  return [v1 v4];
}

id sub_C001C(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t SingleActivitySummaryModel.date.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SingleActivitySummaryModel.dateLabel.setter()
{
  sub_15474();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t SingleActivitySummaryModel.timeLabel.setter()
{
  sub_15474();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t SingleActivitySummaryModel.unitLabel.setter()
{
  sub_15474();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t SingleActivitySummaryModel.dataLabel.setter()
{
  sub_15474();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t SingleActivitySummaryModel.snippetHeaderModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SingleActivitySummaryModel(0) + 44);

  return sub_C0318(v3, a1);
}

uint64_t type metadata accessor for SingleActivitySummaryModel(uint64_t a1)
{
  result = qword_1C9618;
  if (!qword_1C9618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C0318(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&dword_1C63F8, &qword_171800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SingleActivitySummaryModel.snippetHeaderModel.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SingleActivitySummaryModel(0) + 44);

  return sub_C03CC(a1, v3);
}

uint64_t sub_C03CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&dword_1C63F8, &qword_171800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SingleActivitySummaryModel.init(totalValue:goalValue:date:unitLabel:snippetHeaderModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v14 = sub_2440(&qword_1C5800, &unk_16F510);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v38 - v18;
  v20 = type metadata accessor for SingleActivitySummaryModel(0);
  a5[9] = 0;
  a5[10] = 0;
  v21 = *(v20 + 44);
  v22 = type metadata accessor for SnippetHeaderModel(0);
  sub_214C(a5 + v21, 1, 1, v22);
  v23 = trunc(a6);
  if (a6 > -9.22337204e18 && a6 < 9.22337204e18 && v23 == a6)
  {
    *a5 = a6;
  }

  else
  {
    *a5 = 0;
  }

  if (a7 <= -9.22337204e18)
  {
    v27 = 0;
  }

  else
  {
    v26 = trunc(a7) == a7 && a7 < 9.22337204e18;
    v27 = a7;
    if (!v26)
    {
      v27 = 0;
    }
  }

  a5[1] = v27;
  a5[2] = a1;
  a5[7] = a2;
  a5[8] = a3;
  sub_5FF8C(a4, a5 + v21);
  if (a1)
  {
    sub_16D45C();
    v28 = sub_16D5CC();
    if (sub_369C(v19, 1, v28) == 1)
    {
      sub_C878(v19, &qword_1C5800, &unk_16F510);
      v29 = 0;
      v30 = 0;
    }

    else
    {
      v33 = sub_16D5BC();
      v35 = v34;
      (*(*(v28 - 8) + 8))(v19, v28);
      v38[0] = v33;
      v38[1] = v35;
      sub_9854();
      v29 = sub_16E3FC();
      v30 = v36;
    }

    a5[3] = v29;
    a5[4] = v30;
    sub_16D46C();
    if (sub_369C(v17, 1, v28) == 1)
    {
      sub_C878(a4, &dword_1C63F8, &qword_171800);
      result = sub_C878(v17, &qword_1C5800, &unk_16F510);
      v32 = 0;
      a1 = 0;
    }

    else
    {
      v32 = sub_16D5BC();
      a1 = v37;
      sub_C878(a4, &dword_1C63F8, &qword_171800);
      result = (*(*(v28 - 8) + 8))(v17, v28);
    }
  }

  else
  {
    a5[3] = 0;
    a5[4] = 0;
    result = sub_C878(a4, &dword_1C63F8, &qword_171800);
    v32 = 0;
  }

  a5[5] = v32;
  a5[6] = a1;
  return result;
}

uint64_t sub_C079C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61566C61746F74 && a2 == 0xEA00000000006575;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x756C61566C616F67 && a2 == 0xE900000000000065;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702125924 && a2 == 0xE400000000000000;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6562614C656D6974 && a2 == 0xE90000000000006CLL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6562614C74696E75 && a2 == 0xE90000000000006CLL;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6562614C61746164 && a2 == 0xE90000000000006CLL;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000012 && 0x800000000017AE80 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_16E6BC();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_C0A38(char a1)
{
  result = 0x6C61566C61746F74;
  switch(a1)
  {
    case 1:
      return 0x756C61566C616F67;
    case 2:
      return 1702125924;
    case 3:
      v3 = 1702125924;
      goto LABEL_9;
    case 4:
      v3 = 1701669236;
      goto LABEL_9;
    case 5:
      v3 = 1953066613;
      goto LABEL_9;
    case 6:
      v3 = 1635017060;
LABEL_9:
      result = v3 | 0x6562614C00000000;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_C0B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_C079C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_C0B54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_C0A30();
  *a1 = result;
  return result;
}

uint64_t sub_C0B7C(uint64_t a1)
{
  v2 = sub_C0E70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C0BB8(uint64_t a1)
{
  v2 = sub_C0E70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SingleActivitySummaryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1C9598, &qword_175AD0);
  sub_42F0();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v16[-v9];
  sub_2D20(a1, a1[3]);
  sub_C0E70();
  sub_16E77C();
  LOBYTE(v17) = 0;
  sub_205DC();
  sub_16E66C();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    sub_205DC();
    sub_16E66C();
    v17 = *(v3 + 16);
    v16[7] = 2;
    sub_16D4EC();
    sub_C1A84();
    sub_C14C4(v11, v12, &protocol conformance descriptor for DialogCalendar);
    sub_205DC();
    sub_16E63C();
    sub_C1A5C(3);
    sub_16E61C();
    sub_C1A5C(4);
    sub_16E61C();
    sub_C1A5C(5);
    sub_16E64C();
    sub_C1A5C(6);
    sub_16E61C();
    type metadata accessor for SingleActivitySummaryModel(0);
    LOBYTE(v17) = 7;
    type metadata accessor for SnippetHeaderModel(0);
    sub_C1A9C();
    sub_C14C4(v13, v14, &protocol conformance descriptor for SnippetHeaderModel);
    sub_205DC();
    sub_16E63C();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_C0E70()
{
  result = qword_1C95A0;
  if (!qword_1C95A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C95A0);
  }

  return result;
}

uint64_t SingleActivitySummaryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_2440(&dword_1C63F8, &qword_171800);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  sub_2440(&qword_1C95B0, &qword_175AD8);
  sub_42F0();
  v34 = v7;
  v35 = v8;
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for SingleActivitySummaryModel(0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v12 + 52);
  v16 = type metadata accessor for SnippetHeaderModel(0);
  v37 = v15;
  v17 = v14;
  sub_214C(v14 + v15, 1, 1, v16);
  v18 = a1[3];
  v36 = a1;
  v19 = sub_2D20(a1, v18);
  sub_C0E70();
  sub_16E76C();
  if (v2)
  {
    sub_C1AC8();
    sub_2D64(v36);

    if (v19)
    {
    }

    return sub_C878(v17 + v37, &dword_1C63F8, &qword_171800);
  }

  else
  {
    v20 = v34;
    v32 = v6;
    LOBYTE(v39) = 0;
    sub_C1AE8();
    *v17 = sub_16E5DC();
    sub_C1A74(1);
    sub_C1AE8();
    v17[1] = sub_16E5DC();
    sub_16D4EC();
    v38 = 2;
    sub_C1A84();
    sub_C14C4(v21, v22, &protocol conformance descriptor for DialogCalendar);
    sub_C1AE8();
    sub_16E5AC();
    v17[2] = v39;
    sub_C1A74(3);
    sub_C1AE8();
    v17[3] = sub_16E58C();
    v17[4] = v23;
    sub_C1A74(4);
    v31 = v10;
    sub_C1AE8();
    v17[5] = sub_16E58C();
    v17[6] = v24;
    sub_C1A74(5);
    v17[7] = sub_16E5BC();
    v17[8] = v25;
    sub_C1A74(6);
    v17[9] = sub_16E58C();
    v17[10] = v26;
    LOBYTE(v39) = 7;
    sub_C1A9C();
    sub_C14C4(v27, v28, &protocol conformance descriptor for SnippetHeaderModel);
    v29 = v31;
    sub_16E5AC();
    (*(v35 + 8))(v29, v20);
    sub_C03CC(v32, v17 + v37);
    sub_C1374(v17, v33);
    sub_2D64(v36);
    return sub_C13D8(v17);
  }
}

uint64_t sub_C1374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleActivitySummaryModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C13D8(uint64_t a1)
{
  v2 = type metadata accessor for SingleActivitySummaryModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C14C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_C1550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2440(&dword_1C63F8, &qword_171800);
    v9 = a1 + *(a3 + 44);

    return sub_369C(v9, a2, v8);
  }
}

uint64_t sub_C15F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = sub_2440(&dword_1C63F8, &qword_171800);
    v8 = v5 + *(a4 + 44);

    return sub_214C(v8, a2, a2, v7);
  }

  return result;
}

void sub_C1684(uint64_t a1)
{
  sub_C1774(319, &unk_1C7AE8, &type metadata accessor for DialogCalendar);
  if (v1 <= 0x3F)
  {
    sub_BBD1C();
    if (v2 <= 0x3F)
    {
      sub_C1774(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_C1774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_16E3EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SingleActivitySummaryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SingleActivitySummaryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0xC191CLL);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_C1958()
{
  result = qword_1C9668;
  if (!qword_1C9668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9668);
  }

  return result;
}

unint64_t sub_C19B0()
{
  result = qword_1C9670;
  if (!qword_1C9670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9670);
  }

  return result;
}

unint64_t sub_C1A08()
{
  result = qword_1C9678;
  if (!qword_1C9678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9678);
  }

  return result;
}

BOOL sub_C1AF4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    sub_140650(*v4);
    v8 = v7;
    v10 = v9;
    sub_140650(v2);
    if (v8 == v11 && v10 == v12)
    {

      return v5 != 0;
    }

    v14 = sub_C98E4(v11);

    ++v4;
  }

  while ((v14 & 1) == 0);
  return v5 != 0;
}

BOOL sub_C1BA4(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = sub_208C0(*v4);
    v9 = v8;
    v10 = sub_208C0(a1);
    if (v7 == v10 && v9 == v11)
    {

      return v5 != 0;
    }

    v13 = sub_C98E4(v10);

    ++v4;
  }

  while ((v13 & 1) == 0);
  return v5 != 0;
}

BOOL sub_C1C54(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xEE0065636E657473;
    v8 = 0x6978456B63656863;
    switch(*v4)
    {
      case 1:
        v7 = 0xE600000000000000;
        v9 = 1634038371;
        goto LABEL_11;
      case 2:
        v7 = 0xE600000000000000;
        v9 = 1701602660;
        goto LABEL_11;
      case 3:
        v7 = 0xE600000000000000;
        v8 = 0x627265566F6ELL;
        break;
      case 4:
        v7 = 0xE400000000000000;
        v8 = 1852141679;
        break;
      case 5:
        v7 = 0xE600000000000000;
        v9 = 1633972341;
LABEL_11:
        v8 = v9 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
        break;
      case 6:
        v8 = 0x4C74736575716572;
        v7 = 0xEA0000000000676FLL;
        break;
      case 7:
        v8 = 0x736972616D6D7573;
        v7 = 0xE900000000000065;
        break;
      case 8:
        v7 = 0xE700000000000000;
        v8 = 0x74736575716572;
        break;
      default:
        break;
    }

    v10 = 0x6978456B63656863;
    v11 = 0xEE0065636E657473;
    switch(a1)
    {
      case 1:
        v11 = 0xE600000000000000;
        v12 = 1634038371;
        goto LABEL_21;
      case 2:
        v11 = 0xE600000000000000;
        v12 = 1701602660;
        goto LABEL_21;
      case 3:
        v11 = 0xE600000000000000;
        v10 = 0x627265566F6ELL;
        break;
      case 4:
        v11 = 0xE400000000000000;
        v10 = 1852141679;
        break;
      case 5:
        v11 = 0xE600000000000000;
        v12 = 1633972341;
LABEL_21:
        v10 = v12 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
        break;
      case 6:
        v10 = 0x4C74736575716572;
        v11 = 0xEA0000000000676FLL;
        break;
      case 7:
        v10 = 0x736972616D6D7573;
        v11 = 0xE900000000000065;
        break;
      case 8:
        v11 = 0xE700000000000000;
        v10 = 0x74736575716572;
        break;
      default:
        break;
    }

    if (v8 == v10 && v7 == v11)
    {

      return v5 != 0;
    }

    v14 = sub_16E6BC();

    ++v4;
  }

  while ((v14 & 1) == 0);
  return v5 != 0;
}

BOOL sub_C1F00(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_C1F30@<X0>(uint64_t *a2@<X8>)
{
  sub_16C73C();
  v3 = sub_16C58C();
  sub_8D14(v3);
  sub_16C57C();
  v4 = sub_16C2EC();
  sub_8D14(v4);
  result = sub_16C2DC();
  a2[3] = v4;
  a2[4] = &protocol witness table for PatternFlowProvider;
  *a2 = result;
  return result;
}

uint64_t sub_C1FC4()
{
  sub_A78A8();
  sub_2440(&qword_1C9680, &unk_175DE0);
  v2 = swift_allocError();
  *v3 = v0;

  return _swift_continuation_throwingResumeWithError(v1, v2);
}

BOOL sub_C2070()
{
  v0 = sub_16BF5C();
  sub_42F0();
  v65 = v1;
  v3 = __chkstk_darwin(v2);
  v69 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v67 = &v62 - v5;
  v68 = sub_16C0BC();
  sub_42F0();
  v66 = v6;
  __chkstk_darwin(v7);
  sub_4304();
  v10 = v9 - v8;
  v11 = sub_16BE2C();
  sub_42F0();
  v70 = v12;
  __chkstk_darwin(v13);
  sub_4304();
  v14 = sub_2440(&qword_1C5690, &dword_16F320);
  v15 = sub_4348(v14);
  __chkstk_darwin(v15);
  v17 = &v62 - v16;
  v18 = sub_16BD9C();
  sub_42F0();
  v71 = v19;
  __chkstk_darwin(v20);
  sub_4304();
  v23 = v22 - v21;
  sub_38B40();
  sub_A7028();
  v24 = sub_C98CC();
  sub_8B20(v24, v25, v18);
  if (v26)
  {
    sub_8748(v17, &qword_1C5690, &dword_16F320);
    return 1;
  }

  v64 = v11;
  (*(v71 + 32))(v23, v17, v18);
  v63 = v10;
  sub_16C08C();
  sub_2440(&qword_1C96C0, &qword_175E28);
  v28 = sub_16C09C();
  sub_42F0();
  v30 = v29;
  v62 = v0;
  v32 = *(v31 + 72);
  v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_16F2F0;
  v35 = v34 + v33;
  v36 = v65;
  v37 = *(v30 + 104);
  v37(v35, enum case for Calendar.Component.year(_:), v28);
  v37(v35 + v32, enum case for Calendar.Component.month(_:), v28);
  v37(v35 + 2 * v32, enum case for Calendar.Component.day(_:), v28);
  sub_15EFE0();
  v38 = v67;
  sub_16BD7C();
  v39 = v69;
  sub_16BD4C();
  v40 = v63;
  sub_16C04C();

  v41 = *(v36 + 8);
  v42 = v39;
  v43 = v62;
  v41(v42, v62);
  v41(v38, v43);
  (*(v66 + 8))(v40, v68);
  v44 = sub_16BDAC();
  if (v45)
  {
    v46 = sub_C98A4();
    v47(v46, v64);
    (*(v71 + 8))(v23, v18);
    return 0;
  }

  v48 = v44;
  v49 = v71;
  v50 = sub_16BDEC();
  v51 = v64;
  if (v52)
  {
    v53 = sub_C98A4();
    v54(v53, v51);
    (*(v49 + 8))(v23, v18);
    return 0;
  }

  v55 = v50;
  v56 = sub_16BDDC();
  v58 = v57;
  v59 = sub_C98A4();
  v60(v59, v51);
  (*(v49 + 8))(v23, v18);
  if (v58)
  {
    return 0;
  }

  return !(v56 | v55) && v48 < 2;
}

uint64_t sub_C25B0()
{
  sub_8A88();
  *(v0 + 592) = v1;
  *(v0 + 352) = v2;
  *(v0 + 360) = v3;
  v4 = sub_16C0BC();
  *(v0 + 368) = v4;
  sub_888C(v4);
  *(v0 + 376) = v5;
  *(v0 + 384) = sub_8BC0();
  v6 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v6);
  *(v0 + 392) = sub_8BC0();
  v7 = sub_16BF5C();
  *(v0 + 400) = v7;
  sub_888C(v7);
  *(v0 + 408) = v8;
  *(v0 + 416) = sub_8C38();
  *(v0 + 424) = swift_task_alloc();
  *(v0 + 432) = swift_task_alloc();
  *(v0 + 440) = swift_task_alloc();
  *(v0 + 448) = swift_task_alloc();
  v9 = sub_16DBEC();
  *(v0 + 456) = v9;
  sub_888C(v9);
  *(v0 + 464) = v10;
  *(v0 + 472) = sub_8C38();
  *(v0 + 480) = swift_task_alloc();
  *(v0 + 488) = swift_task_alloc();
  v11 = sub_17960();

  return _swift_task_switch(v11);
}

uint64_t sub_C2764()
{
  v1 = v0[50];
  v2 = [objc_allocWithZone(HKHealthStore) init];
  v0[62] = v2;
  v3 = sub_C98CC();
  sub_8B20(v3, v4, v1);
  if (v5)
  {
    v6 = sub_16DBBC();
    sub_8B48(v6, (v0 + 34));
    v7 = sub_C97B8();
    v8(v7);
    v9 = sub_16DBDC();
    v10 = sub_16E37C();
    if (sub_4B3A8(v10))
    {
      *sub_1BA38() = 0;
      sub_4B3D0();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      sub_38604();
    }

    v16 = sub_C9E0();
    v17(v16);
  }

  v18 = v0[50];
  sub_A7028();
  v19 = sub_C98CC();
  if (sub_369C(v19, v20, v18) == 1)
  {
    v21 = v0[50];
    sub_16BF4C();
    v22 = sub_C98CC();
    sub_8B20(v22, v23, v21);
    if (!v5)
    {
      sub_8748(v0[49], &qword_1C57E0, &unk_171C60);
    }
  }

  else
  {
    (*(v0[51] + 32))(v0[56], v0[49], v0[50]);
  }

  v24 = v0[55];
  v25 = v0[56];
  v26 = v0[54];
  v27 = v0[50];
  v28 = v0[51];
  sub_25908(0, &qword_1C9688, HKCategoryType_ptr);
  isa = sub_16E39C(HKCategoryTypeIdentifierIntermenstrualBleeding).super.super.super.isa;
  v0[63] = isa;
  sub_25908(0, &qword_1C9690, HKCategorySample_ptr);
  v30 = *(v28 + 16);
  v0[64] = v30;
  v0[65] = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v30(v24, v25, v27);
  v30(v26, v25, v27);
  v0[66] = sub_C391C(isa, 0, v24, v26);
  v31 = swift_task_alloc();
  v0[67] = v31;
  *v31 = v0;
  v31[1] = sub_C2A2C;

  return isSiriAuthorizedToAccessHealthData(store:)(v2);
}

uint64_t sub_C2A2C()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 593) = v3;

  v4 = sub_17960();

  return _swift_task_switch(v4);
}

uint64_t sub_C2B14(uint64_t a1)
{
  v73 = v1;
  if (*(v1 + 593) == 1)
  {
    if ((*(v1 + 592) & 1) != 0 || *(v1 + 360) != 1)
    {
      v43 = sub_16DBBC();
      sub_8B48(v43, v1 + 296);
      v44 = sub_3BD68();
      v45(v44);
      v46 = sub_16DBDC();
      v47 = sub_16E36C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = sub_1BA38();
        *v48 = 0;
        _os_log_impl(&def_259DC, v46, v47, "Saving spotting.", v48, 2u);
        sub_8A2C(v48);
      }

      v49 = v1 + 16;
      v50 = *(v1 + 528);
      v51 = *(v1 + 496);

      v52 = sub_C98B4();
      v53(v52);
      *(v1 + 16) = v1;
      *(v1 + 24) = sub_C34EC;
      v54 = swift_continuation_init();
      *(v1 + 200) = sub_2440(&qword_1C96A0, &qword_175E10);
      *(v1 + 144) = _NSConcreteStackBlock;
      *(v1 + 152) = 1107296256;
      *(v1 + 160) = sub_C3A90;
      *(v1 + 168) = &unk_1BB4E8;
      *(v1 + 176) = v54;
      [v51 saveObject:v50 withCompletion:v1 + 144];
    }

    else
    {
      v70 = *(v1 + 512);
      v2 = *(v1 + 440);
      v3 = *(v1 + 448);
      v66 = *(v1 + 424);
      v68 = *(v1 + 416);
      v4 = *(v1 + 400);
      v5 = *(v1 + 408);
      v6 = objc_opt_self();
      sub_16C08C();
      sub_16C02C();
      v7 = sub_C98C0();
      v62 = v8;
      v8(v7);
      isa = sub_16BEEC().super.isa;
      v10 = *(v5 + 8);
      *(v1 + 544) = v10;
      *(v1 + 552) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v10(v2, v4);
      sub_7B6B8(v2);
      v11 = sub_16BEEC().super.isa;
      v10(v2, v4);
      v63 = [v6 predicateForSamplesWithStartDate:isa endDate:v11 options:0];
      *(v1 + 560) = v63;

      v12 = sub_16DBBC();
      sub_8B48(v12, v1 + 320);
      v13 = sub_8B9C();
      v14(v13);
      v70(v66, v3, v4);
      v70(v68, v3, v4);
      v15 = sub_16DBDC();
      v16 = sub_16E36C();
      log = v15;
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v1 + 480);
      v20 = *(v1 + 456);
      v19 = *(v1 + 464);
      if (v17)
      {
        v21 = *(v1 + 440);
        v60 = *(v1 + 424);
        v61 = *(v1 + 416);
        v67 = v16;
        v22 = *(v1 + 400);
        v69 = *(v1 + 480);
        v23 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v72[0] = v65;
        *v23 = 136315394;
        sub_16C08C();
        sub_16C02C();
        v24 = sub_C98C0();
        v62(v24);
        sub_C9498(&qword_1C96B0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v25 = sub_16E68C();
        v64 = v19;
        v27 = v26;
        v28 = sub_8427C();
        (v10)(v28);
        v10(v60, v22);
        v29 = sub_3AB7C(v25, v27, v72);

        *(v23 + 4) = v29;
        *(v23 + 12) = 2080;
        sub_7B6B8(v21);
        v30 = sub_16E68C();
        v32 = v31;
        v33 = sub_8427C();
        (v10)(v33);
        v10(v61, v22);
        v34 = sub_3AB7C(v30, v32, v72);

        *(v23 + 14) = v34;
        _os_log_impl(&def_259DC, log, v67, "Not spotting, preparing to delete any existing spotting entry from [%s] to [%s].", v23, 0x16u);
        swift_arrayDestroy();
        sub_8A2C(v65);
        sub_8A2C(v23);

        (*(v64 + 8))(v69, v20);
      }

      else
      {

        v55 = sub_C9F8();
        (v10)(v55);
        v56 = sub_38B40();
        (v10)(v56);
        (*(v19 + 8))(v18, v20);
      }

      v49 = v1 + 80;
      v57 = *(v1 + 496);
      v58 = [*(v1 + 528) categoryType];
      *(v1 + 568) = v58;
      *(v1 + 80) = v1;
      *(v1 + 120) = v1 + 344;
      *(v1 + 88) = sub_C32A0;
      v59 = swift_continuation_init();
      *(v1 + 264) = sub_2440(&qword_1C96A8, &qword_175E18);
      *(v1 + 208) = _NSConcreteStackBlock;
      *(v1 + 216) = 1107296256;
      *(v1 + 224) = sub_C3A0C;
      *(v1 + 232) = &unk_1BB510;
      *(v1 + 240) = v59;
      [v57 deleteObjectsOfType:v58 predicate:v63 withCompletion:v1 + 208];
    }

    return _swift_continuation_await(v49);
  }

  else
  {
    v35 = *(v1 + 528);
    v37 = *(v1 + 496);
    v36 = *(v1 + 504);
    v38 = *(v1 + 448);
    v39 = *(v1 + 400);
    v40 = *(v1 + 408);
    sub_C9418();
    swift_allocError();
    swift_willThrow();

    (*(v40 + 8))(v38, v39);
    sub_C975C();

    sub_C9BC();

    return v41();
  }
}

uint64_t sub_C32A0()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 576) = *(v3 + 112);
  sub_8ACC();

  return _swift_task_switch(v4);
}

uint64_t sub_C339C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_A7910();
  v30 = *(v24 + 568);

  sub_C9708();
  v31 = sub_16D9BC();
  isa = sub_16BEEC().super.isa;
  [v31 setDate:isa];

  if (v25)
  {
    v33 = 2;
  }

  else
  {
    v33 = v27;
  }

  [v31 setFlow:v33];

  (*(v22 + 8))(v29, v26);

  sub_5D948();
  sub_A77E4();

  return v36(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_C34EC()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 584) = *(v3 + 48);
  sub_8ACC();

  return _swift_task_switch(v4);
}

uint64_t sub_C35E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_A7910();
  sub_C9708();
  v29 = sub_16D9BC();
  isa = sub_16BEEC().super.isa;
  [v29 setDate:isa];

  if (v24)
  {
    v31 = 2;
  }

  else
  {
    v31 = v26;
  }

  [v29 setFlow:v31];

  (*(v22 + 8))(v28, v25);

  sub_5D948();
  sub_A77E4();

  return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_C3728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  v31 = v14[71];
  v15 = v14[70];
  v16 = v14[68];
  v17 = v14[66];
  v18 = v14[62];
  v19 = v14[63];
  v20 = v14[56];
  v21 = v14[50];
  swift_willThrow();

  v16(v20, v21);
  v32 = v14[72];
  sub_C975C();

  sub_C9BC();
  sub_841E0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v32, a11, a12, a13, a14);
}

uint64_t sub_C382C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  v15 = v14[66];
  v17 = v14[62];
  v16 = v14[63];
  v18 = v14[56];
  v19 = v14[50];
  v20 = v14[51];
  swift_willThrow();

  (*(v20 + 8))(v18, v19);
  v30 = v14[73];
  sub_C975C();

  sub_C9BC();
  sub_841E0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, a11, a12, a13, a14);
}

id sub_C391C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isa = sub_16BEEC().super.isa;
  v9 = sub_16BEEC().super.isa;
  v10 = [swift_getObjCClassFromMetadata() categorySampleWithType:a1 value:a2 startDate:isa endDate:v9];

  v11 = sub_16BF5C();
  v12 = *(*(v11 - 8) + 8);
  v12(a4, v11);
  v12(a3, v11);
  return v10;
}

uint64_t *sub_C3A0C(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  result = sub_2D20((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v8 = *result;

    return sub_C204C(v8, a3);
  }

  else if (a4)
  {
    v9 = a4;
    return sub_C1FC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_C3A90(uint64_t a1, int a2, void *a3)
{
  result = sub_2D20((a1 + 32), *(a1 + 56));
  if (a2)
  {

    return j__swift_continuation_throwingResume();
  }

  else if (a3)
  {
    v6 = a3;
    return sub_C1FC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LogPeriodFlow.execute(completion:)()
{
  sub_926BC();
  sub_8427C();

  return sub_16C33C();
}

uint64_t sub_C3B5C(uint64_t a1)
{
  v2[79] = v1;
  v2[78] = a1;
  sub_16D63C();
  v2[80] = swift_task_alloc();
  v3 = sub_16DBEC();
  v2[81] = v3;
  v2[82] = *(v3 - 8);
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();

  return _swift_task_switch(sub_C3C58);
}

uint64_t sub_C3C58()
{
  v1 = v0[82];
  v2 = sub_C443C();
  v0[85] = v2;
  v3 = sub_16DBBC();
  v0[86] = v3;
  sub_8B48(v3, (v0 + 71));
  v0[87] = *(v1 + 16);
  v0[88] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = sub_C9E0();
  v5(v4);
  v6 = v2;
  v7 = sub_16DBDC();
  v8 = sub_16E36C();

  if (os_log_type_enabled(v7, v8))
  {
    sub_8BD8();
    v9 = sub_8A44();
    *v3 = 138412290;
    *(v3 + 4) = v6;
    *v9 = v6;
    v10 = v6;
    sub_4B3D0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_8748(v9, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_38604();
  }

  v16 = v0[82];
  v17 = v0[79];

  v0[89] = *(v16 + 8);
  v0[90] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18 = sub_4B4EC();
  v19(v18);
  v20 = *(v17 + 240);
  v0[2] = v0;
  v0[7] = v0 + 77;
  v0[3] = sub_C3EB0;
  v21 = swift_continuation_init();
  v0[70] = sub_2440(&qword_1C96B8, &qword_175E20);
  v0[67] = v21;
  v0[63] = _NSConcreteStackBlock;
  v0[64] = 1107296256;
  v0[65] = sub_53C4;
  v0[66] = &unk_1BB538;
  [v20 handleLogPeriod:v6 completion:v0 + 63];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_C3EB0()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3);
}

uint64_t sub_C3F80(uint64_t a1)
{
  v2 = *(v1 + 704);
  v3 = *(v1 + 696);
  v4 = *(v1 + 616);
  *(v1 + 728) = v4;
  sub_1B9B4(a1, v1 + 592);
  sub_8B60();
  v3();
  v5 = v4;
  v6 = sub_16DBDC();
  v7 = sub_16E36C();

  if (os_log_type_enabled(v6, v7))
  {
    sub_8BD8();
    v8 = sub_8A44();
    *v2 = 138412290;
    *(v2 + 4) = v5;
    *v8 = v5;
    v9 = v5;
    sub_4B3D0();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_8748(v8, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_38604();
  }

  v15 = (*(v1 + 712))(*(v1 + 664), *(v1 + 648));
  v16 = (*(&stru_20.maxprot + (swift_isaMask & *v5)))(v15);
  if (v16 == 4)
  {
    sub_16D72C();
    v26 = swift_task_alloc();
    *(v1 + 736) = v26;
    *v26 = v1;
    v26[1] = sub_C42B4;

    return sub_C467C();
  }

  else
  {
    if (v16 == 101)
    {
      v17 = *(v1 + 680);
      v18 = *(v1 + 632);
      v19 = *(v18 + 248);
      sub_C9294(v18 + 40, v1 + 88);
      sub_8284(v18 + 80, v1 + 128);
      v20 = sub_16C58C();
      sub_8D14(v20);
      v21 = sub_16C57C();
      *(v1 + 312) = v20;
      *(v1 + 320) = &protocol witness table for ResponseFactory;
      *(v1 + 288) = v21;
      v22 = type metadata accessor for WellnessCATsSimple(0);
      sub_8D2C(v22);
      sub_8CB4();
      v23 = sub_16D5FC();
      v24 = type metadata accessor for WellnessCATs(0);
      sub_8D2C(v24);
      sub_8CB4();
      v25 = sub_16D58C();
      *(v1 + 80) = v19;
      *(v1 + 328) = v23;
      *(v1 + 336) = v25;
      sub_84F0();
      sub_16C4EC();

      sub_8544(v1 + 80);
    }

    else
    {
      v28 = *(v1 + 680);
      v29 = *(v1 + 632);
      sub_16D6FC();
      sub_8284(v29 + 80, v1 + 344);
      sub_82E0();
      sub_16C4EC();

      sub_8334(v1 + 344);
    }

    sub_C9BC();

    return v30();
  }
}

uint64_t sub_C42B4()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 744) = v3;

  v4 = sub_17960();

  return _swift_task_switch(v4);
}

uint64_t sub_C439C()
{
  sub_386A8();
  v1 = *(v0 + 728);
  v2 = *(v0 + 680);
  sub_16C4FC();

  sub_C9BC();

  return v3();
}

id sub_C443C()
{
  v1 = v0;
  v2 = sub_2440(&qword_1C5690, &dword_16F320);
  v3 = sub_4348(v2);
  __chkstk_darwin(v3);
  v5 = &v23 - v4;
  v6 = sub_16BF5C();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_4304();
  v12 = v11 - v10;
  v13 = [objc_allocWithZone(sub_16D88C()) init];
  sub_2D20(v0, v0[3]);
  v14 = sub_C98B4();
  v15(v14);
  v16 = sub_16BD9C();
  sub_8B20(v5, 1, v16);
  if (v17)
  {
    sub_8748(v5, &qword_1C5690, &dword_16F320);
    v19.super.isa = 0;
  }

  else
  {
    sub_16BD7C();
    sub_5DE54();
    (*(v18 + 8))(v5, v16);
    v19.super.isa = sub_16BEEC().super.isa;
    (*(v8 + 8))(v12, v6);
  }

  [v13 setDate:v19.super.isa];

  v20 = v1[3];
  v21 = v1[4];
  sub_2D20(v1, v20);
  (*(v21 + 64))(v20, v21);
  [v13 setFlow:sub_16D85C()];
  return v13;
}

uint64_t sub_C467C()
{
  sub_8A88();
  v1[135] = v0;
  v1[134] = v2;
  v3 = sub_16C46C();
  v1[136] = v3;
  sub_888C(v3);
  v1[137] = v4;
  v1[138] = sub_8C38();
  v1[139] = swift_task_alloc();
  v5 = sub_16C7BC();
  v1[140] = v5;
  sub_888C(v5);
  v1[141] = v6;
  v1[142] = sub_8BC0();
  v7 = sub_16DBEC();
  v1[143] = v7;
  sub_888C(v7);
  v1[144] = v8;
  v1[145] = sub_8C38();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v1[150] = swift_task_alloc();
  v1[151] = swift_task_alloc();
  v1[152] = swift_task_alloc();
  v9 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v9);
  v1[153] = sub_8BC0();
  v10 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v10);
  v1[154] = sub_8BC0();
  v11 = type metadata accessor for CycleTrackingLogModel(0);
  v1[155] = v11;
  sub_4348(v11);
  v1[156] = sub_8C38();
  v1[157] = swift_task_alloc();
  v1[158] = swift_task_alloc();
  v1[159] = swift_task_alloc();
  v12 = type metadata accessor for SnippetHeaderModel(0);
  v1[160] = v12;
  sub_4348(v12);
  v1[161] = sub_8BC0();
  v13 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v13);
  v1[162] = sub_8C38();
  v1[163] = swift_task_alloc();
  v1[164] = swift_task_alloc();
  v1[165] = swift_task_alloc();
  v14 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v14);
  v1[166] = sub_8BC0();
  v15 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v15);
  v1[167] = sub_8C38();
  v1[168] = swift_task_alloc();
  v16 = sub_16BF5C();
  v1[169] = v16;
  sub_888C(v16);
  v1[170] = v17;
  v1[171] = sub_8C38();
  v1[172] = swift_task_alloc();
  v18 = sub_17960();

  return _swift_task_switch(v18);
}

uint64_t sub_C49EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_C9800();
  sub_C987C();
  v31 = [*(v30 + 1072) date];
  if (v31)
  {
    v32 = v31;
    v33 = *(v30 + 1080);
    sub_16BF3C();

    v34 = sub_C9F8();
    v35(v34);
    sub_2D20(v33, v33[3]);
    v36 = sub_C9F8();
    v38 = v37(v36);
    if (v38 == 270)
    {
LABEL_3:
      v39 = 248;
      goto LABEL_17;
    }

    sub_140650(v38);
    if (v70 == 0x676E6974746F7073 && v69 == 0xE800000000000000)
    {
    }

    else
    {
      sub_8B60();
      v72 = sub_16E6BC();

      if ((v72 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v39 = 249;
LABEL_17:
    v73 = *(v30 + 1376);
    v74 = *(v30 + 1360);
    v75 = *(v30 + 1352);
    v76 = *(v30 + 1344);
    v77 = *(v30 + 1328);
    v78 = *(*(v30 + 1080) + v39);
    *(v30 + 1594) = v78;
    (*(v74 + 16))(v77, v73, v75);
    sub_388E4();
    sub_214C(v79, v80, v81, v75);
    sub_1218BC(v78, v77, v76);
    sub_8748(v77, &qword_1C57E0, &unk_171C60);
    *(v30 + 680) = &type metadata for WellnessFeatureFlagsKey;
    *(v30 + 688) = sub_3736C();
    *(v30 + 656) = 4;
    LOBYTE(v76) = sub_16C86C();
    sub_2D64((v30 + 656));
    v82 = *(v30 + 1376);
    if (v76)
    {
      v83 = *(v30 + 1072);
      sub_16D4EC();
      *(v30 + 1384) = sub_16D47C();
      *(v30 + 1392) = [v83 flow];
      v84 = swift_task_alloc();
      *(v30 + 1400) = v84;
      *v84 = v30;
      v84[1] = sub_C4F4C;
      sub_C98D8(0x617254656C637963);
      sub_A78CC();

      return sub_66A84(v85, v86);
    }

    else
    {
      v88 = *(v30 + 1344);
      v89 = *(v30 + 1080);
      v90 = *(v30 + 1072);
      sub_2D20((v89 + 160), *(v89 + 184));
      v91 = swift_task_alloc();
      *(v30 + 1568) = v91;
      v91[2] = v89;
      v91[3] = v82;
      v91[4] = v90;
      v91[5] = v88;
      v92 = swift_task_alloc();
      *(v30 + 1576) = v92;
      *v92 = v30;
      v92[1] = sub_C693C;
      sub_A78CC();

      return sub_10B5F4();
    }
  }

  sub_C9908();
  v40 = *(v30 + 1072);
  v41 = sub_16DBBC();
  sub_8B48(v41, v30 + 816);
  v42 = sub_3BD68();
  v43(v42);
  v44 = v40;
  v45 = sub_16DBDC();
  v46 = sub_16E37C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = *(v30 + 1072);
    v48 = sub_8BD8();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    *(v48 + 4) = v47;
    *v49 = v47;
    v50 = v47;
    sub_8420C();
    _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
    sub_8748(v49, &qword_1C57B8, &qword_1715A0);
    sub_38604();
    sub_1BA00();
  }

  v56 = *(v30 + 1080);

  v57 = sub_C9F8();
  v58(v57);
  sub_8284(v56 + 80, v30 + 16);
  sub_82E0();
  v94 = sub_16C32C();
  sub_8334(v30 + 16);
  sub_C961C();
  sub_C979C(v59);

  sub_8938();
  sub_A78CC();

  return v62(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v94, a28, a29, a30);
}

uint64_t sub_C4F4C()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1408) = v3;
  *(v1 + 1416) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_C5038()
{
  v1 = v0[135];
  v0[178] = v1[32];
  sub_2D20(v1, v1[3]);
  v2 = sub_C9E0();
  v4 = v3(v2);
  if (v4 == 270)
  {
    v5 = 1;
  }

  else
  {
    sub_140650(v4);
    sub_16E23C();

    v5 = 0;
  }

  v6 = v0[165];
  v7 = sub_16D5CC();
  sub_214C(v6, v5, 1, v7);
  v8 = swift_task_alloc();
  v0[179] = v8;
  *v8 = v0;
  v8[1] = sub_C5178;
  sub_C98D8(v0[165]);

  return sub_164694();
}

uint64_t sub_C5178()
{
  sub_386A8();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 1320);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v3 + 1440) = v9;
  *(v3 + 1448) = v0;

  sub_8748(v6, &qword_1C5800, &unk_16F510);
  if (v0)
  {
  }

  sub_8ACC();

  return _swift_task_switch(v10);
}

uint64_t sub_C52B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_C9800();
  sub_C987C();
  v34 = [*(v30 + 1440) dialog];
  *(v30 + 1456) = sub_25908(0, &qword_1C6E48, DialogElement_ptr);
  v35 = sub_16E2CC();

  if (!sub_3B35C(v35))
  {
    v46 = *(v30 + 1440);

    goto LABEL_8;
  }

  sub_3B360();
  if ((v35 & 0xC000000000000001) != 0)
  {
    v36 = sub_16E48C();
  }

  else
  {
    v36 = *(v35 + 32);
  }

  v37 = v36;
  v31 = *(v30 + 1440);
  v32 = *(v30 + 1416);

  v38 = [v37 fullPrint];

  v39 = sub_16E1BC();
  v41 = v40;

  *(v30 + 1464) = v39;
  *(v30 + 1472) = v41;
  if (!v32)
  {
    goto LABEL_8;
  }

  v42 = *(v30 + 1080);
  v31 = v42[3];
  v32 = v42[4];
  sub_2D20(v42, v31);
  v43 = sub_3E1B8();
  v45 = v44(v43);
  *(v30 + 1592) = v45;
  if (v45 == 270)
  {

LABEL_8:

    sub_C9908();
    v47 = sub_16DBBC();
    sub_8B48(v47, v30 + 888);
    v48 = sub_3BD68();
    v49(v48);
    sub_16DBDC();
    v50 = sub_16E37C();
    if (sub_1BA1C(v50))
    {
      v51 = sub_1BA38();
      sub_1BA50(v51);
      sub_8420C();
      _os_log_impl(v52, v53, v54, v55, v56, 2u);
      sub_1BA00();
    }

    sub_C97C8();
    v57 = sub_C98B4();
    v58(v57);
    sub_8284(v47 + 80, v30 + 336);
    sub_82E0();
    v73 = sub_16C32C();

    sub_8334(v30 + 336);
    sub_8748(v32, &qword_1C57F8, &unk_172510);
    (*(v33 + 8))(a26, v31);
    sub_C961C();
    sub_C979C(v59);

    sub_8938();
    sub_A78CC();

    return v62(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v73, a28, a29, a30);
  }

  v69 = swift_task_alloc();
  *(v30 + 1480) = v69;
  *v69 = v30;
  v69[1] = sub_C5688;
  sub_C98D8(0x646567676F6CLL);
  sub_A78CC();

  return sub_66A84(v70, v71);
}

uint64_t sub_C5688()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1488) = v3;
  *(v1 + 1496) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_C5774()
{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1488);
  v69 = *(v0 + 1312);
  v3 = *(v0 + 1288);
  v4 = *(v0 + 1280);
  v75 = *(v0 + 1264);
  v5 = *(v0 + 1594);
  sub_16E23C();

  v6 = sub_25948(v5);
  v8 = v7;
  v9 = sub_208C0(v5);
  v10 = (v3 + *(v4 + 20));
  *v10 = v6;
  v10[1] = v8;
  v11 = (v3 + *(v4 + 24));
  *v11 = v9;
  v11[1] = v12;
  v72 = v1;
  v13 = 0x646567676F4CLL;
  if (v1)
  {
    v13 = v2;
  }

  v70 = v13;
  sub_C91E4();
  sub_388E4();
  sub_214C(v14, v15, v16, v4);
  sub_A7028();
  v71 = sub_16C11C();
  sub_214C(v75, 1, 1, v71);
  swift_retain_n();
  sub_16D45C();
  v17 = sub_16D5CC();
  *(v0 + 1504) = v17;
  sub_8B20(v69, 1, v17);
  v74 = v17;
  if (v18)
  {
    sub_8748(*(v0 + 1312), &qword_1C5800, &unk_16F510);
    v24 = 0;
    v26 = 0;
  }

  else
  {
    v19 = sub_16D5BC();
    v21 = v20;
    sub_5DE54();
    v22 = sub_38B40();
    v23(v22);
    *(v0 + 1040) = v19;
    *(v0 + 1048) = v21;
    sub_9854();
    v24 = sub_16E3FC();
    v26 = v25;
  }

  v27 = *(v0 + 1496);
  v28 = *(v0 + 1472);
  v29 = *(v0 + 1464);
  v30 = *(v0 + 1336);
  v66 = *(v0 + 1272);
  v31 = *(v0 + 1264);
  v32 = *(v0 + 1240);
  v67 = *(v0 + 1216);
  v33 = *(v0 + 1152);
  v68 = *(v0 + 1144);
  v34 = (v31 + v32[5]);
  *v34 = v24;
  v34[1] = v26;
  v35 = (v31 + v32[6]);
  if (!v72)
  {
    v27 = 0xE600000000000000;
  }

  *v35 = v70;
  v35[1] = v27;
  v36 = (v31 + v32[7]);
  *v36 = v29;
  v36[1] = v28;
  sub_A7028();
  sub_A7028();
  sub_14F138(v30);

  sub_8748(v30, &qword_1C57F8, &unk_172510);
  v37 = sub_C9F8();
  sub_8748(v37, v38, &qword_171800);
  sub_388E4();
  sub_214C(v39, v40, v41, v71);
  sub_C93C0();
  sub_C9180(v31, v66);
  v42 = sub_16DBBC();
  *(v0 + 1512) = v42;
  sub_8B48(v42, v0 + 912);
  v43 = *(v33 + 16);
  *(v0 + 1520) = v43;
  *(v0 + 1528) = (v33 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43(v67, v42, v68);
  sub_C96F0();
  sub_C91E4();
  v44 = sub_16DBDC();
  v45 = sub_16E36C();
  v46 = sub_4B3A8(v45);
  v47 = *(v0 + 1256);
  if (v46)
  {
    v73 = *(v0 + 1216);
    v48 = *(v0 + 1152);
    v49 = *(v0 + 1144);
    v50 = sub_8BD8();
    v76 = swift_slowAlloc();
    *v50 = 136315138;
    sub_C96F0();
    sub_C91E4();
    sub_C9F8();
    sub_16E1EC();
    sub_C96D8();
    sub_C923C(v47, v51);
    v52 = sub_C9F8();
    v55 = sub_3AB7C(v52, v53, v54);

    *(v50 + 4) = v55;
    _os_log_impl(&def_259DC, v44, v45, "#LogPeriodFlow: Snippet model %s", v50, 0xCu);
    sub_2D64(v76);
    sub_8A2C(v76);
    sub_8A2C(v50);

    v56 = *(v48 + 8);
    v56(v73, v49);
  }

  else
  {
    v57 = *(v0 + 1152);

    sub_C96D8();
    sub_C923C(v47, v58);
    v56 = *(v57 + 8);
    v59 = sub_C9F8();
    v56(v59, v60);
  }

  *(v0 + 1536) = v56;
  sub_140650(*(v0 + 1592));
  sub_16E23C();

  sub_388E4();
  sub_214C(v61, v62, v63, v74);
  v64 = swift_task_alloc();
  *(v0 + 1544) = v64;
  *v64 = v0;
  v64[1] = sub_C5D10;
  sub_C98D8(*(v0 + 1304));

  return sub_164294();
}