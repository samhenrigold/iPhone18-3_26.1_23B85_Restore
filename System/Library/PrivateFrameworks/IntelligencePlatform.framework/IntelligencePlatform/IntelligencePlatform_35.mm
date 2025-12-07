uint64_t sub_1ABD34FC0()
{
  sub_1ABA7BBF8();
  v0[4] = v1;
  v0[5] = v2;
  v4 = v3[1];
  v0[6] = *v3;
  v0[7] = v4;
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8(&qword_1EB4CFFC0);
  }

  v0[8] = qword_1EB4CF2B8;
  v5 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v5);
}

void sub_1ABD3504C()
{
  sub_1ABA8C1F8();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v1[3];
  v4 = v1[4];
  sub_1ABA93E20(v1, v3);
  (*(v4 + 8))(v3, v4);
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABA841F4();
  v5();
  v7 = v0[6];
  v6 = v0[7];

  v8 = sub_1ABA8CD18();
  sub_1ABA93E20(v8, v9);
  v0[2] = v7;
  v0[3] = v6;
  sub_1ABA994A4();
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_1ABD3524C;
  sub_1ABA841F4();
  sub_1ABA9A540();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_1ABD3524C()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v7 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1ABD35384()
{
  sub_1ABA7BBF8();
  v3 = v2;
  *(v1 + 128) = v4;
  *(v1 + 136) = v0;
  *(v1 + 112) = v5;
  *(v1 + 120) = v6;
  *(v1 + 96) = v7;
  *(v1 + 104) = v8;
  *(v1 + 80) = v9;
  *(v1 + 88) = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v1 + 144) = type metadata accessor for InferenceMessageResponse(0, AssociatedTypeWitness, v12, v13);
  sub_1ABA994A4();
  *(v1 + 152) = v14;
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = sub_1ABF21F04();
  sub_1ABA994A4();
  *(v1 + 184) = v15;
  *(v1 + 192) = swift_task_alloc();
  v16 = v3[1];
  *(v1 + 16) = *v3;
  *(v1 + 32) = v16;
  *(v1 + 48) = v3[2];
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8(&qword_1EB4CFFC0);
  }

  *(v1 + 200) = qword_1EB4CF2B8;
  v17 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v17);
}

uint64_t sub_1ABD35508()
{
  sub_1ABA8C1F8();
  v1 = *(v0 + 192);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);
  v12 = *(v0 + 120);
  v13 = *(v0 + 88);
  sub_1ABF21EF4();
  *(v0 + 208) = *(v2 + 168);
  v4 = swift_task_alloc();
  *(v4 + 16) = v12;
  *(v4 + 32) = v1;
  *(v4 + 40) = v0 + 16;
  *(v4 + 48) = v13;
  sub_1ABA841F4();
  sub_1ABEA58D4(v5, v6, v7);

  v14 = (v3 + *v3);
  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v0 + 216) = v8;
  *v8 = v9;
  v8[1] = sub_1ABD35674;
  v10 = *(v0 + 160);

  return v14(v10, v0 + 64);
}

uint64_t sub_1ABD35674()
{
  sub_1ABA7BC04();
  v2 = *v1;
  sub_1ABA7D1C8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 224) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = sub_1ABD35910;
  }

  else
  {
    v6 = sub_1ABD35794;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1ABD35794()
{
  v14 = *(v0 + 208);
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v16 = *(v0 + 176);
  v4 = *(v0 + 144);
  v15 = *(v0 + 80);
  v5 = *(v0 + 64);
  v13 = *(v0 + 72);
  v6 = *(v0 + 73);
  v7 = *(*(v0 + 152) + 32);
  v11 = *(v0 + 120);
  v12 = *(v0 + 88);
  v7(v3);
  v8 = swift_task_alloc();
  *(v8 + 16) = v11;
  *(v8 + 32) = v1;
  *(v8 + 40) = v0 + 16;
  *(v8 + 48) = v12;
  *(v8 + 64) = v3;
  *(v8 + 72) = v5;
  *(v8 + 80) = v13;
  *(v8 + 81) = v6;
  sub_1ABEA58D4(sub_1ABD3738C, v8, v14);

  (v7)(v15, v3, v4);
  (*(v2 + 8))(v1, v16);

  sub_1ABA7BBE0();

  return v9();
}

uint64_t sub_1ABD35910()
{
  sub_1ABA7BC04();
  (*(v0[23] + 8))(v0[24], v0[22]);

  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABD359A4(void *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1[1];
  ObjectType = swift_getObjectType();
  v15 = a3[1];
  v17[0] = *a3;
  v17[1] = v15;
  v17[2] = a3[2];
  return (*(v13 + 8))(a2, v17, a4, a5, a6, a7, ObjectType, v13);
}

uint64_t sub_1ABD35A5C(void *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8, uint64_t a9, uint64_t a10)
{
  v15 = a1[1];
  ObjectType = swift_getObjectType();
  v17 = a3[1];
  v23[0] = *a3;
  v23[1] = v17;
  v23[2] = a3[2];
  v21 = a7;
  v22 = a8 & 0x1FF;
  return (*(v15 + 24))(a2, v23, a4, a5, a6, &v21, a9, a10, ObjectType, v15);
}

uint64_t sub_1ABD35B28(void *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[1];
  ObjectType = swift_getObjectType();
  v11 = a3[1];
  v13[0] = *a3;
  v13[1] = v11;
  v13[2] = a3[2];
  return (*(v9 + 16))(a2, v13, a4, a5, ObjectType, v9);
}

uint64_t sub_1ABD35BC8(void *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  v15 = a1[1];
  ObjectType = swift_getObjectType();
  v17 = a3[1];
  v22[0] = *a3;
  v22[1] = v17;
  v22[2] = a3[2];
  v20 = a8;
  v21 = a9 & 0x1FF;
  return (*(v15 + 32))(a2, v22, a4, a5, a6, a7, &v20, ObjectType, v15);
}

void *InferenceServer.deinit()
{

  sub_1ABA84B54(v0 + 4);
  swift_unknownObjectRelease();
  sub_1ABA84B54(v0 + 11);
  sub_1ABA84B54(v0 + 16);

  return v0;
}

uint64_t InferenceServer.__deallocating_deinit()
{
  InferenceServer.deinit();

  return swift_deallocClassInstance();
}

uint64_t InferenceServer.runRequest(instanceQualifiedId:requestData:clientEntitlementInfo:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5[26] = v4;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = *a4;
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8(&qword_1EB4CFFC0);
  }

  v5[27] = qword_1EB4CF2B8;
  v5[2] = v6;
  v5[3] = v7;
  v5[4] = v8;
  v5[5] = v9;
  v5[6] = v10;
  v5[7] = v11;
  v5[23] = v12;
  v13 = swift_task_alloc();
  v5[28] = v13;
  *v13 = v5;
  v13[1] = sub_1ABD35E34;
  sub_1ABA8BF40();

  return sub_1ABD361CC(v14, v15, v16, v17);
}

uint64_t sub_1ABD35E34()
{
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (!v0)
  {
    v8 = *(v5 + 8);

    __asm { BRAA            X3, X16 }
  }

  v7 = *(v3 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1ABD35F84, v7, 0);
}

uint64_t sub_1ABD35F84()
{
  v26 = v0;
  v1 = *(v0 + 232);
  *(v0 + 192) = v1;
  v2 = v1;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  sub_1ABAD219C(&qword_1EB4D5790, &unk_1ABF4B3A0);
  sub_1ABA841F4();
  if (swift_dynamicCast())
  {
    v3 = sub_1ABA8CD18();
    sub_1ABA946C0(v3, v4);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    sub_1ABA93E20((v0 + 64), v5);
    (*(v6 + 32))(v24, v5, v6);
    v7 = v24[0];
    v8 = v24[1];
    v9 = v24[2];
    v10 = v24[3];
    v11 = v25 | 0x100u;
    sub_1ABA84B54((v0 + 64));
  }

  else
  {
    v12 = *(v0 + 232);
    *(v0 + 104) = 0u;
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0;
    sub_1ABAB08B8(v0 + 104, &qword_1EB4D5798, &unk_1ABF598E0);
    *(v0 + 200) = v12;
    v13 = v12;
    sub_1ABA8CD18();
    v7 = sub_1ABF23C94();
    v8 = v14;
    v9 = 0;
    v10 = 0;
    v11 = 512;
  }

  v22 = objc_autoreleasePoolPush();
  sub_1ABD32A0C();
  v23 = v7;
  *(v0 + 144) = v7;
  *(v0 + 152) = v8;
  *(v0 + 160) = v9;
  *(v0 + 168) = v10;
  *(v0 + 176) = v11;
  *(v0 + 178) = 1;
  sub_1ABAD219C(&qword_1EB4D8B08, &qword_1ABF5B138);
  sub_1ABD36FAC();
  v15 = sub_1ABF21834();
  v16 = *(v0 + 232);
  v17 = v15;
  v19 = v18;

  objc_autoreleasePoolPop(v22);
  sub_1ABD37010(v23, v8, v9, v10, v11, 1);

  v20 = *(v0 + 8);

  return v20(v17, v19);
}

uint64_t sub_1ABD361CC(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v5 + 144) = a3;
  *(v5 + 152) = v4;
  *(v5 + 128) = a1;
  *(v5 + 136) = a2;
  v8 = sub_1ABF21F04();
  *(v5 + 160) = v8;
  *(v5 + 168) = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = a1[1];
  *(v5 + 16) = *a1;
  *(v5 + 32) = v10;
  *(v5 + 48) = a1[2];
  v11 = *a4;
  *(v5 + 176) = v9;
  *(v5 + 184) = v11;
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  *(v5 + 192) = qword_1EB4CF2B8;

  return MEMORY[0x1EEE6DFA0](sub_1ABD362EC);
}

uint64_t sub_1ABD362EC()
{
  sub_1ABA8C1F8();
  v19 = v0;
  v1 = v0[16];
  v18 = v0[23];
  sub_1ABD34F48(v1, &v18);
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];

  sub_1ABB0DBF0(v5, v4);
  sub_1ABAFEFB4((v0 + 2), (v0 + 8));

  sub_1ABF21EF4();
  v6 = *(v3 + 168);
  v0[25] = v6;
  v7 = swift_task_alloc();
  v7[2] = v2;
  v7[3] = v0 + 2;
  v7[4] = v5;
  v7[5] = v4;
  sub_1ABEA58D4(sub_1ABD3767C, v7, v6);

  swift_task_alloc();
  sub_1ABA8E8BC();
  v0[26] = v8;
  *v8 = v9;
  v8[1] = sub_1ABD36474;
  sub_1ABA9A540();

  return sub_1ABD3678C(v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1ABD36474()
{
  sub_1ABA7BC04();
  v2 = *v1;
  sub_1ABA7D1C8();
  *v4 = v3;
  v3[27] = v5;
  v3[28] = v6;
  v3[29] = v0;

  v7 = *(v2 + 192);
  if (v0)
  {
    v8 = sub_1ABD366E4;
  }

  else
  {
    v8 = sub_1ABD365A0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1ABD365A0()
{
  if ((*(v0 + 122) & 1) == 0)
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
    v3 = *(v0 + 200);
    v4 = *(v0 + 176);
    v12 = *(v0 + 136);
    v13 = *(v0 + 216);
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v0 + 16;
    *(v5 + 32) = v12;
    *(v5 + 48) = v13;
    *(v5 + 64) = v1;
    *(v5 + 72) = v2;
    *(v5 + 73) = HIBYTE(v2) & 1;
    sub_1ABEA58D4(sub_1ABD3769C, v5, v3);
  }

  v6 = *(v0 + 144);
  v7 = *(v0 + 136);
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

  sub_1ABA96210(v7, v6);
  sub_1ABC1AFCC(v0 + 16);

  v8 = *(v0 + 8);
  v9 = *(v0 + 216);
  v10 = *(v0 + 224);

  return v8(v9, v10);
}

uint64_t sub_1ABD366E4()
{
  sub_1ABA7BC04();
  v1 = v0[18];
  v2 = v0[17];
  (*(v0[21] + 8))(v0[22], v0[20]);

  sub_1ABA96210(v2, v1);
  sub_1ABC1AFCC((v0 + 2));

  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABD3678C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[33] = a5;
  v6[34] = a6;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  v6[35] = qword_1EB4CF2B8;

  return MEMORY[0x1EEE6DFA0](sub_1ABD36830);
}

uint64_t sub_1ABD36830()
{
  sub_1ABD34840(*(v0 + 264), v0 + 16);
  v1 = *(v0 + 240);
  v2 = objc_autoreleasePoolPush();
  *(v0 + 288) = *(v1 + 200);
  sub_1ABD376DC();
  sub_1ABF217D4();
  v3 = *(v0 + 272);
  v16 = *(v0 + 240);
  objc_autoreleasePoolPop(v2);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  *(v0 + 296) = v5;
  *(v0 + 304) = v4;
  v6 = *(v0 + 152);
  *(v0 + 312) = v6;
  v7 = *(v0 + 160);
  *(v0 + 161) = v7;
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  sub_1ABA93E20((v0 + 16), v9);
  *(v0 + 80) = v9;
  *(v0 + 88) = *(v8 + 8);
  sub_1ABA93DC0((v0 + 56));
  sub_1ABA7D08C();
  (*(v10 + 16))();
  *(v0 + 120) = &type metadata for InferenceFullRequestBase;
  *(v0 + 128) = &off_1F2080D70;
  v11 = swift_allocObject();
  *(v0 + 96) = v11;
  *(v11 + 16) = v5;
  *(v11 + 24) = v4;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  *(v0 + 200) = v16;
  *(v0 + 208) = v3;

  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v0 + 320) = v12;
  *v12 = v13;
  v12[1] = sub_1ABD36A58;
  sub_1ABA8BF40();

  return sub_1ABD34FC0();
}

uint64_t sub_1ABD36A58()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  v3[41] = v0;

  if (v0)
  {
    v7 = v3[35];

    v8 = sub_1ABD36EBC;
  }

  else
  {
    v7 = v3[35];
    sub_1ABA84B54(v3 + 12);
    sub_1ABA84B54(v3 + 7);
    v8 = sub_1ABD36B74;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

void sub_1ABD36B74()
{
  sub_1ABA8C1F8();
  v1 = v0[34];
  v2 = v0[30];
  sub_1ABA93E20(v0 + 2, v0[5]);
  v0[27] = v2;
  v0[28] = v1;
  v0[42] = sub_1ABD32A0C();
  sub_1ABA994A4();
  swift_task_alloc();
  sub_1ABA8E8BC();
  v0[43] = v3;
  *v3 = v4;
  v3[1] = sub_1ABD36CDC;
  sub_1ABA9A540();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1ABD36CDC()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 352) = v0;

  v7 = *(v3 + 280);
  if (v0)
  {

    v8 = sub_1ABD36F3C;
  }

  else
  {

    v8 = sub_1ABD36E08;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1ABD36E08()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 232);

  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = v5 < 0;
  v7 = v5 & 1;
  if (v6)
  {
    v4 = 0;
    v7 = 0;
  }

  *v1 = v4;
  *(v1 + 8) = v7;
  *(v1 + 10) = v6;
  sub_1ABA84B54((v0 + 16));
  v8 = *(v0 + 8);

  return v8(v3, v2);
}

uint64_t sub_1ABD36EBC()
{
  sub_1ABA7BBF8();

  sub_1ABA84B54(v0 + 12);
  sub_1ABA84B54(v0 + 7);
  sub_1ABA84B54(v0 + 2);
  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABD36F3C()
{
  sub_1ABA7BBF8();

  sub_1ABA84B54((v0 + 16));
  sub_1ABA7BBE0();

  return v1();
}

unint64_t sub_1ABD36FAC()
{
  result = qword_1EB4D8B10;
  if (!qword_1EB4D8B10)
  {
    sub_1ABAE2850(&qword_1EB4D8B08, &qword_1ABF5B138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8B10);
  }

  return result;
}

uint64_t sub_1ABD37010(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_1ABD37020(a1, a2, a3, a4, a5, SBYTE1(a5));
  }

  else
  {
    return sub_1ABA96210(a1, a2);
  }
}

uint64_t sub_1ABD37020(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6 == 2)
  {
  }

  if (a6 == 1)
  {
    return sub_1ABD2F5F0(result, a2, a3, a4, a5);
  }

  return result;
}

unint64_t sub_1ABD37048(uint64_t a1, uint64_t a2)
{
  result = qword_1EB4CF2C0;
  if (!qword_1EB4CF2C0)
  {
    type metadata accessor for InferenceActor.MyActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF2C0);
  }

  return result;
}

uint64_t sub_1ABD370F0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7F)
  {
    if (a2 + 129 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 129) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 130;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v5 >= 0x7E)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *sub_1ABD37184(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7E)
  {
    v6 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
        break;
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
          *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABD372A4(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1ABD37428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D8B20, &qword_1ABF5B3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABD374EC()
{
  result = qword_1EB4D8B38;
  if (!qword_1EB4D8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8B38);
  }

  return result;
}

uint64_t sub_1ABD37594()
{
  sub_1ABA8C1F8();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[8];
  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v1 + 16) = v12;
  *v12 = v13;
  v12[1] = sub_1ABA7FDA0;

  return sub_1ABD33958(v5, v3, v7, v8, v9, v10, v11, v6);
}

unint64_t sub_1ABD376DC()
{
  result = qword_1EB4D8B40;
  if (!qword_1EB4D8B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8B40);
  }

  return result;
}

uint64_t sub_1ABD37740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB4CF2B8;

  return MEMORY[0x1EEE6DFA0](sub_1ABD377DC, v7, 0);
}

uint64_t sub_1ABD377DC()
{
  v1 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for InferenceMessageResponse(0, AssociatedTypeWitness, v3, v4);
  sub_1ABA7B9B4(v1, 1, 1, v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1ABD37878@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
  return sub_1ABD39888(v2, v3);
}

void sub_1ABD37894()
{
  sub_1ABA7BCA8();
  v3 = v2;
  sub_1ABF217B4();
  sub_1ABA7BB64();
  v36[3] = v4;
  v36[4] = v5;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v36[2] = v7 - v6;
  v37 = sub_1ABF21CF4();
  sub_1ABA7BB64();
  v41 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v38 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = v36 - v12;
  v39 = type metadata accessor for AssetRegistryAsset(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  sub_1ABAD219C(&qword_1EB4D8BE0, &qword_1ABF5B9F8);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7ED98();
  v18 = type metadata accessor for AssetRegistryAssetLocalAvailabilityInfo(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v36 - v23;
  v26 = *v3;
  v25 = v3[1];
  AssetRegistry.locallyAvailableAsset(for:in:)();
  if (!v0)
  {
    v36[0] = v25;
    v36[1] = v26;
    v42 = v24;
    v27 = v16;
    v28 = v39;
    v29 = v40;
    v30 = v41;
    if (sub_1ABA7E1E0(v1, 1, v18) == 1)
    {
      sub_1ABD396B0(v1);
    }

    else
    {
      sub_1ABD397D0(v1, v42, type metadata accessor for AssetRegistryAssetLocalAvailabilityInfo);
      sub_1ABD3976C(v42, v21);
      if (sub_1ABA7E1E0(v21, 1, v28) != 1)
      {
        sub_1ABD397D0(v21, v27, type metadata accessor for AssetRegistryAsset);
        v32 = v38;
        v39 = v27;
        sub_1ABF21C84();
        sub_1ABF21C94();
        v33 = *(v30 + 8);
        v34 = v32;
        v35 = v37;
        v33(v34, v37);
        sub_1ABF21D34();
        v33(v29, v35);
        sub_1ABA80CF8();
        sub_1ABA7F540();
        goto LABEL_7;
      }

      sub_1ABD39830(v42, type metadata accessor for AssetRegistryAssetLocalAvailabilityInfo);
      sub_1ABD39830(v21, type metadata accessor for AssetRegistryAssetLocalAvailabilityInfo);
    }

    v31 = sub_1ABD39718();
    sub_1ABA7BD00(&unk_1F207EBF8, v31);
    swift_willThrow();
  }

LABEL_7:
  sub_1ABA7BC90();
}

uint64_t sub_1ABD37CF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001ABF8E090 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001ABF8E0B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABD37E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD37CF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD37E2C(uint64_t a1)
{
  v2 = sub_1ABD38204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD37E68(uint64_t a1)
{
  v2 = sub_1ABD38204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD37EA4(uint64_t a1)
{
  v2 = sub_1ABD38258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD37EE0(uint64_t a1)
{
  v2 = sub_1ABD38258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD37F1C(uint64_t a1)
{
  v2 = sub_1ABD382AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD37F58(uint64_t a1)
{
  v2 = sub_1ABD382AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceServiceLoadInstanceError.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v25 = v24;
  sub_1ABAD219C(&qword_1EB4D8B48, &qword_1ABF5B450);
  sub_1ABA7BB64();
  v47 = v27;
  v48 = v26;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  v46 = &v44 - v29;
  sub_1ABAD219C(&qword_1EB4D8B50, &qword_1ABF5B458);
  sub_1ABA7BB64();
  v44 = v31;
  v45 = v30;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v44 - v33;
  v35 = sub_1ABAD219C(&qword_1EB4D8B58, &qword_1ABF5B460);
  sub_1ABA7BB64();
  v37 = v36;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v44 - v39;
  v41 = *v23;
  sub_1ABA93E20(v25, v25[3]);
  sub_1ABD38204();
  sub_1ABF252E4();
  v42 = (v37 + 8);
  if (v41)
  {
    sub_1ABD38258();
    v43 = v46;
    sub_1ABF24EC4();
    (*(v47 + 8))(v43, v48);
  }

  else
  {
    sub_1ABD382AC();
    sub_1ABF24EC4();
    (*(v44 + 8))(v34, v45);
  }

  (*v42)(v40, v35);
  sub_1ABA7BC90();
}

unint64_t sub_1ABD38204()
{
  result = qword_1EB4D8B60;
  if (!qword_1EB4D8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8B60);
  }

  return result;
}

unint64_t sub_1ABD38258()
{
  result = qword_1EB4D8B68;
  if (!qword_1EB4D8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8B68);
  }

  return result;
}

unint64_t sub_1ABD382AC()
{
  result = qword_1EB4D8B70;
  if (!qword_1EB4D8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8B70);
  }

  return result;
}

uint64_t InferenceServiceLoadInstanceError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

void InferenceServiceLoadInstanceError.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v25;
  a23 = v26;
  v70 = v23;
  v28 = v27;
  v67 = v29;
  v69 = sub_1ABAD219C(&qword_1EB4D8B78, &qword_1ABF5B468);
  sub_1ABA7BB64();
  v66 = v30;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v62 - v32;
  v34 = sub_1ABAD219C(&qword_1EB4D8B80, &qword_1ABF5B470);
  sub_1ABA7BB64();
  v65 = v35;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v62 - v37;
  v39 = sub_1ABAD219C(&qword_1EB4D8B88, &unk_1ABF5B478);
  sub_1ABA7BB64();
  v68 = v40;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA7ED98();
  sub_1ABA93E20(v28, v28[3]);
  sub_1ABD38204();
  v42 = v70;
  sub_1ABF252C4();
  if (v42)
  {
    goto LABEL_10;
  }

  v63 = v34;
  v64 = v38;
  v70 = v28;
  v43 = v69;
  sub_1ABF24EA4();
  v44 = sub_1ABAD4EA4();
  if (v46 == v47 >> 1)
  {
    v69 = v44;
LABEL_9:
    v56 = sub_1ABF24B44();
    sub_1ABA7BD00(v56, MEMORY[0x1E69E6B28]);
    v58 = v57;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v58 = &type metadata for InferenceServiceLoadInstanceError;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x1E69E6AF8], v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v68 + 8))(v24, v39);
    v28 = v70;
LABEL_10:
    sub_1ABA84B54(v28);
LABEL_11:
    sub_1ABA7BC90();
    return;
  }

  v62[1] = 0;
  if (v46 < (v47 >> 1))
  {
    v48 = *(v45 + v46);
    v49 = sub_1ABAD4E90();
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    if (v51 == v53 >> 1)
    {
      if (v48)
      {
        a13 = 1;
        sub_1ABD38258();
        v54 = v33;
        sub_1ABA7E518(&type metadata for InferenceServiceLoadInstanceError.InstanceIdNotFoundCodingKeys, &a13);
        v55 = v67;
        swift_unknownObjectRelease();
        (*(v66 + 8))(v54, v43);
      }

      else
      {
        a12 = 0;
        sub_1ABD382AC();
        v59 = v64;
        sub_1ABA7E518(&type metadata for InferenceServiceLoadInstanceError.MissingEntitlementCodingKeys, &a12);
        v55 = v67;
        swift_unknownObjectRelease();
        (*(v65 + 8))(v59, v63);
      }

      v60 = sub_1ABA90200();
      v61(v60);
      *v55 = v48;
      sub_1ABA84B54(v70);
      goto LABEL_11;
    }

    v69 = v49;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1ABD387CC(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

void sub_1ABD38814(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = *a1;
  v7 = a1[1];
  v15 = *(a1 + 1);
  v8 = a1[4];
  sub_1ABA93E20((v4 + 16), *(v4 + 40));
  sub_1ABD37894();
  if (!v3)
  {
    v11 = v10;
    if (v10 >> 60 == 15)
    {
      sub_1ABD3921C();
      swift_allocError();
      *v12 = 1;
      swift_willThrow();
    }

    else
    {
      v13 = v9;
      v14 = objc_autoreleasePoolPush();
      sub_1ABD3965C();
      sub_1ABF217D4();
      objc_autoreleasePoolPop(v14);
      *a2 = v13;
      *(a2 + 8) = v11;
      *(a2 + 16) = v6;
      *(a2 + 24) = v7;
      *(a2 + 32) = v15;
      *(a2 + 48) = v8;
    }
  }
}

void sub_1ABD38A28(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *a2;
  v15[0] = *a1;
  v15[1] = v3;
  v16 = v4;
  v17 = v5;
  sub_1ABD38814(v15, v14);
  if (!v2)
  {
    v7 = v14[6];
    sub_1ABA96210(v14[0], v14[1]);
    if (!v6 || (sub_1ABB130E0(), (v8 & 1) != 0))
    {

      return;
    }

    if (v7)
    {
      v9 = sub_1ABA90200();
      v11 = sub_1ABD3903C(v9, v10);

      if ((v11 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    v12 = sub_1ABD3921C();
    sub_1ABA7BD00(&type metadata for InferenceServiceLoadInstanceError, v12);
    *v13 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1ABD38B38(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = v4;
  sub_1ABD38814(v7, v6);
  if (!v2)
  {
    v1 = v6[4];
    sub_1ABA96210(v6[0], v6[1]);
  }

  return v1;
}

void sub_1ABD38BC0()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v37 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for InferenceServiceConfig(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  sub_1ABA7BB64();
  v14 = v13;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7ED98();
  v17 = *v7;
  v16 = *(v7 + 8);
  v18 = *(v7 + 16);
  v19 = *(v7 + 32);
  v20 = *(v7 + 40);
  v39[0] = *v7;
  v39[1] = v16;
  v40 = v18;
  v41 = v19;
  v42 = v20;
  sub_1ABD38814(v39, v38);
  if (!v1)
  {
    v35 = v17;
    v36 = v14;
    v21 = v38[0];
    v22 = v38[1];

    v23 = objc_autoreleasePoolPush();
    sub_1ABD38ED8(v0, v21, v22, v5, v43, v38);
    v34 = v21;
    objc_autoreleasePoolPop(v23);
    (*(v36 + 32))(v37, AssociatedTypeWitness, v12);
    v24 = v37[2];
    v25 = v37[3];
    if (v24 == (*(v43 + 56))(v5, v43) && v25 == v26)
    {
    }

    else
    {
      v28 = sub_1ABF25054();

      if ((v28 & 1) == 0)
      {
        v29 = sub_1ABD39608();
        sub_1ABA7BD00(&unk_1F207EAA0, v29);
        *v30 = 0;
        swift_willThrow();
        sub_1ABA96210(v34, v22);
        (*(v36 + 8))(v37, v12);
        goto LABEL_15;
      }
    }

    v31 = *v37 == v35 && v37[1] == v16;
    if (v31 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA96210(v34, v22);
    }

    else
    {
      v32 = sub_1ABD39608();
      sub_1ABA7BD00(&unk_1F207EAA0, v32);
      *v33 = 1;
      swift_willThrow();
      sub_1ABA96210(v34, v22);
      (*(v36 + 8))(v37, v12);
    }
  }

LABEL_15:
  sub_1ABA7BC90();
}

uint64_t sub_1ABD38ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for InferenceServiceConfig(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  swift_getWitnessTable();
  result = sub_1ABF217D4();
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

void *sub_1ABD38FD8()
{
  sub_1ABA84B54((v0 + 16));
  sub_1ABA84B54((v0 + 56));

  return v0;
}

uint64_t sub_1ABD39008()
{
  sub_1ABD38FD8();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABD3903C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  sub_1ABF25234();

  sub_1ABF23D34();
  v11 = sub_1ABF25294();
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v11 & v12;
    if (((*(v6 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v14 = (*(a2 + 48) + 16 * v13);
    if (*v14 == v10 && v14[1] == v9)
    {
      break;
    }

    v16 = sub_1ABF25054();
    v11 = v13 + 1;
  }

  while ((v16 & 1) == 0);

  return 0;
}

unint64_t sub_1ABD39174(uint64_t a1)
{
  result = sub_1ABB6ADDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABD391A0()
{
  result = qword_1EB4D8B90;
  if (!qword_1EB4D8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8B90);
  }

  return result;
}

unint64_t sub_1ABD391F4(uint64_t a1)
{
  result = sub_1ABD3921C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABD3921C()
{
  result = qword_1EB4D8B98;
  if (!qword_1EB4D8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8B98);
  }

  return result;
}

unint64_t sub_1ABD39270(uint64_t a1)
{
  result = sub_1ABC43B94();
  *(a1 + 8) = result;
  return result;
}

_BYTE *sub_1ABD392A4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABD393A4()
{
  result = qword_1EB4D8BA0;
  if (!qword_1EB4D8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BA0);
  }

  return result;
}

unint64_t sub_1ABD393FC()
{
  result = qword_1EB4D8BA8;
  if (!qword_1EB4D8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BA8);
  }

  return result;
}

unint64_t sub_1ABD39454()
{
  result = qword_1EB4D8BB0;
  if (!qword_1EB4D8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BB0);
  }

  return result;
}

unint64_t sub_1ABD394AC()
{
  result = qword_1EB4D8BB8;
  if (!qword_1EB4D8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BB8);
  }

  return result;
}

unint64_t sub_1ABD39504()
{
  result = qword_1EB4D8BC0;
  if (!qword_1EB4D8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BC0);
  }

  return result;
}

unint64_t sub_1ABD3955C()
{
  result = qword_1EB4D8BC8;
  if (!qword_1EB4D8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BC8);
  }

  return result;
}

unint64_t sub_1ABD395B4()
{
  result = qword_1EB4D8BD0;
  if (!qword_1EB4D8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BD0);
  }

  return result;
}

unint64_t sub_1ABD39608()
{
  result = qword_1EB4D8BD8;
  if (!qword_1EB4D8BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BD8);
  }

  return result;
}

unint64_t sub_1ABD3965C()
{
  result = qword_1EB4CED80;
  if (!qword_1EB4CED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED80);
  }

  return result;
}

uint64_t sub_1ABD396B0(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D8BE0, &qword_1ABF5B9F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABD39718()
{
  result = qword_1EB4D8BE8;
  if (!qword_1EB4D8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BE8);
  }

  return result;
}

uint64_t sub_1ABD3976C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetRegistryAssetLocalAvailabilityInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABD397D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1ABA7BBB0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1ABD39830(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1ABA7BBB0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1ABD39888(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

_BYTE *sub_1ABD3989C(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1ABD39944(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABD3995C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABD399B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1ABD39A14(uint64_t a1)
{
  result = sub_1ABD39608();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABD39A40()
{
  result = qword_1EB4D8BF0;
  if (!qword_1EB4D8BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BF0);
  }

  return result;
}

uint64_t sub_1ABD39ABC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD39B10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1ABD39D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1ABF23C94();
}

uint64_t sub_1ABD39D88(uint64_t a1)
{
  sub_1ABA7BB64();
  v2 = MEMORY[0x1EEE9AC00](v1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_1ABF23C94();
}

uint64_t sub_1ABD39EAC@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D8D20, &qword_1ABF5C3C8);
  v4 = sub_1ABF23C94();
  v6 = v5;
  v7 = a1;
  result = sub_1ABF23C94();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  *(a2 + 24) = v9;
  *(a2 + 32) = 3;
  return result;
}

uint64_t sub_1ABD39F44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D8D48, &unk_1ABF5C3F0);
  v4 = sub_1ABF23C94();
  v6 = v5;
  sub_1ABD3C1B4(a1);
  result = sub_1ABF23C94();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  *(a2 + 24) = v8;
  *(a2 + 32) = 3;
  return result;
}

uint64_t sub_1ABD39FDC@<X0>(uint64_t a1@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D8D40, &qword_1ABF5C3E8);
  v2 = sub_1ABF23C94();
  v4 = v3;
  result = sub_1ABF23C94();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = result;
  *(a1 + 24) = v6;
  *(a1 + 32) = 3;
  return result;
}

uint64_t sub_1ABD3A058@<X0>(uint64_t a4@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D8D38, &qword_1ABF5C3E0);
  v5 = sub_1ABF23C94();
  v7 = v6;
  sub_1ABD3C1AC();
  result = sub_1ABF23C94();
  *a4 = v5;
  *(a4 + 8) = v7;
  *(a4 + 16) = result;
  *(a4 + 24) = v9;
  *(a4 + 32) = 3;
  return result;
}

uint64_t sub_1ABD3A10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(a2 + 16))();
  v8 = v7;
  result = (*(a2 + 24))(a1, a2);
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = result;
  *(a3 + 24) = v10;
  *(a3 + 32) = 3;
  return result;
}

uint64_t sub_1ABD3A1E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4574736575716572 && a2 == 0xEC000000726F7272;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001ABF8E120 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001ABF8E140 == a2;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x727245726568746FLL && a2 == 0xEA0000000000726FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1ABD3A350(char a1)
{
  result = 0x4574736575716572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x727245726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABD3A3EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABD3A4B4(char a1)
{
  if (a1)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1ABD3A4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD3A1E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD3A520(uint64_t a1)
{
  v2 = sub_1ABD3ACA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD3A55C(uint64_t a1)
{
  v2 = sub_1ABD3ACA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD3A598(uint64_t a1)
{
  v2 = sub_1ABD3AD48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD3A5D4(uint64_t a1)
{
  v2 = sub_1ABD3AD48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD3A610(uint64_t a1)
{
  v2 = sub_1ABD3ADF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD3A64C(uint64_t a1)
{
  v2 = sub_1ABD3ADF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD3A690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD3A3EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD3A6B8(uint64_t a1)
{
  v2 = sub_1ABD3ACF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD3A6F4(uint64_t a1)
{
  v2 = sub_1ABD3ACF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD3A730(uint64_t a1)
{
  v2 = sub_1ABD3AE98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD3A76C(uint64_t a1)
{
  v2 = sub_1ABD3AE98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceServerErrorInfo.encode(to:)(void *a1)
{
  sub_1ABAD219C(&qword_1EB4D8BF8, &qword_1ABF5BC20);
  sub_1ABA7BB64();
  v44 = v4;
  v45 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7FBE0();
  v43 = v6;
  sub_1ABAD219C(&qword_1EB4D8C00, &qword_1ABF5BC28);
  sub_1ABA7BB64();
  v41 = v8;
  v42 = v7;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v40 = v10;
  sub_1ABAD219C(&qword_1EB4D8C08, &qword_1ABF5BC30);
  sub_1ABA7BB64();
  v38 = v12;
  v39 = v11;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = sub_1ABAD219C(&qword_1EB4D8C10, &qword_1ABF5BC38);
  sub_1ABA7BB64();
  v37 = v17;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  sub_1ABAD219C(&qword_1EB4D8C18, &qword_1ABF5BC40);
  sub_1ABA7BB64();
  v50 = v22;
  v51 = v21;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v36 - v24;
  v26 = *v1;
  v48 = v1[1];
  v49 = v26;
  v27 = v1[2];
  v46 = v1[3];
  v47 = v27;
  v28 = *(v1 + 32);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABD3ACA0();
  sub_1ABF252E4();
  switch(v28)
  {
    case 1:
      LOBYTE(v52) = 1;
      sub_1ABD3ADF0();
      sub_1ABA7E8B4(&type metadata for InferenceServerErrorInfo.LoadInstanceErrorCodingKeys, &v52);
      LOBYTE(v52) = v49 & 1;
      sub_1ABD3AE44();
      v35 = v39;
      sub_1ABF24F84();
      (*(v38 + 8))(v15, v35);
      goto LABEL_9;
    case 2:
      LOBYTE(v52) = 2;
      sub_1ABD3AD48();
      v31 = v40;
      sub_1ABA7E8B4(&type metadata for InferenceServerErrorInfo.EntitlementCheckErrorCodingKeys, &v52);
      v52 = v49;
      v53 = v48;
      sub_1ABD3AD9C();
      v32 = v42;
      sub_1ABF24F84();
      v33 = v41;
      goto LABEL_7;
    case 3:
      LOBYTE(v52) = 3;
      sub_1ABD3ACF4();
      v31 = v43;
      sub_1ABA7E8B4(&type metadata for InferenceServerErrorInfo.OtherErrorCodingKeys, &v52);
      LOBYTE(v52) = 0;
      v32 = v45;
      v34 = v56;
      sub_1ABF24F34();
      if (!v34)
      {
        LOBYTE(v52) = 1;
        sub_1ABF24F34();
      }

      v33 = v44;
LABEL_7:
      (*(v33 + 8))(v31, v32);
LABEL_9:
      result = (*(v50 + 8))(v25, v20);
      break;
    default:
      LOBYTE(v52) = 0;
      sub_1ABD3AE98();
      v29 = v51;
      sub_1ABF24EC4();
      v52 = v49;
      v53 = v48;
      v54 = v47;
      v55 = v46;
      sub_1ABD3AEEC();
      sub_1ABF24F84();
      (*(v37 + 8))(v20, v16);
      result = (*(v50 + 8))(v25, v29);
      break;
  }

  return result;
}

unint64_t sub_1ABD3ACA0()
{
  result = qword_1EB4D8C20;
  if (!qword_1EB4D8C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C20);
  }

  return result;
}

unint64_t sub_1ABD3ACF4()
{
  result = qword_1EB4D8C28;
  if (!qword_1EB4D8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C28);
  }

  return result;
}

unint64_t sub_1ABD3AD48()
{
  result = qword_1EB4D8C30;
  if (!qword_1EB4D8C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C30);
  }

  return result;
}

unint64_t sub_1ABD3AD9C()
{
  result = qword_1EB4D8C38;
  if (!qword_1EB4D8C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C38);
  }

  return result;
}

unint64_t sub_1ABD3ADF0()
{
  result = qword_1EB4D8C40;
  if (!qword_1EB4D8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C40);
  }

  return result;
}

unint64_t sub_1ABD3AE44()
{
  result = qword_1EB4D8C48;
  if (!qword_1EB4D8C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C48);
  }

  return result;
}

unint64_t sub_1ABD3AE98()
{
  result = qword_1EB4D8C50;
  if (!qword_1EB4D8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C50);
  }

  return result;
}

unint64_t sub_1ABD3AEEC()
{
  result = qword_1EB4D8C58;
  if (!qword_1EB4D8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C58);
  }

  return result;
}

uint64_t InferenceServerErrorInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  sub_1ABAD219C(&qword_1EB4D8C60, &qword_1ABF5BC48);
  sub_1ABA7BB64();
  v94 = v4;
  v95 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7FBE0();
  v98 = v6;
  sub_1ABAD219C(&qword_1EB4D8C68, &qword_1ABF5BC50);
  sub_1ABA7BB64();
  v92 = v8;
  v93 = v7;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v97 = v10;
  sub_1ABAD219C(&qword_1EB4D8C70, &qword_1ABF5BC58);
  sub_1ABA7BB64();
  v90 = v12;
  v91 = v11;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v83 - v14;
  v16 = sub_1ABAD219C(&qword_1EB4D8C78, &qword_1ABF5BC60);
  sub_1ABA7BB64();
  v89 = v17;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v83 - v19;
  v21 = sub_1ABAD219C(&qword_1EB4D8C80, &unk_1ABF5BC68);
  sub_1ABA7BB64();
  v23 = v22;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v83 - v25;
  v27 = a1[3];
  v99 = a1;
  sub_1ABA93E20(a1, v27);
  sub_1ABD3ACA0();
  v28 = v104;
  sub_1ABF252C4();
  if (v28)
  {
    goto LABEL_8;
  }

  v86 = v16;
  v87 = v20;
  v88 = v15;
  v29 = v98;
  v104 = v23;
  sub_1ABF24EA4();
  result = sub_1ABAD4EA4();
  v34 = v21;
  v35 = v26;
  if (v32 == v33 >> 1)
  {
LABEL_7:
    v43 = sub_1ABF24B44();
    swift_allocError();
    v45 = v44;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v45 = &type metadata for InferenceServerErrorInfo;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    v46 = sub_1ABA7DA6C();
    v47(v46);
LABEL_8:
    v77 = v99;
    return sub_1ABA84B54(v77);
  }

  v85 = v34;
  if (v32 < (v33 >> 1))
  {
    v84 = *(v31 + v32);
    v36 = sub_1ABAD4E90();
    v38 = v37;
    v40 = v39;
    swift_unknownObjectRelease();
    v41 = v96;
    if (v38 == v40 >> 1)
    {
      v42 = v85;
      switch(v84)
      {
        case 1:
          LOBYTE(v100) = 1;
          sub_1ABD3ADF0();
          sub_1ABA80D20(&type metadata for InferenceServerErrorInfo.LoadInstanceErrorCodingKeys, &v100);
          v77 = v99;
          v59 = sub_1ABD3B8FC();
          sub_1ABA93668(&type metadata for InferenceServiceLoadInstanceError, v60, v61, v62, v59);
          swift_unknownObjectRelease();
          v78 = sub_1ABA7F568();
          v79(v78);
          v80 = sub_1ABA7DA6C();
          v81(v80);
          v73 = 0;
          v75 = 0;
          v76 = 0;
          v74 = v100;
          break;
        case 2:
          LOBYTE(v100) = 2;
          sub_1ABD3AD48();
          sub_1ABA80D20(&type metadata for InferenceServerErrorInfo.EntitlementCheckErrorCodingKeys, &v100);
          v77 = v99;
          v48 = sub_1ABD3B8A8();
          sub_1ABA93668(&type metadata for EntitlementCheckError, v49, v50, v51, v48);
          swift_unknownObjectRelease();
          v63 = sub_1ABA7F568();
          v64(v63);
          v65 = sub_1ABA7DA6C();
          v66(v65);
          v75 = 0;
          v76 = 0;
          v74 = v100;
          v73 = v101;
          break;
        case 3:
          LOBYTE(v100) = 3;
          sub_1ABD3ACF4();
          sub_1ABA80D20(&type metadata for InferenceServerErrorInfo.OtherErrorCodingKeys, &v100);
          v97 = v36;
          LOBYTE(v100) = 0;
          v52 = sub_1ABF24E14();
          v53 = v29;
          v77 = v99;
          v74 = v52;
          v73 = v67;
          LOBYTE(v100) = 1;
          v68 = sub_1ABF24E14();
          v69 = (v94 + 8);
          v70 = (v104 + 8);
          v104 = 0;
          v75 = v68;
          v76 = v82;
          swift_unknownObjectRelease();
          (*v69)(v53, v95);
          (*v70)(v35, v85);
          v41 = v96;
          break;
        default:
          LOBYTE(v100) = 0;
          sub_1ABD3AE98();
          sub_1ABA80D20(&type metadata for InferenceServerErrorInfo.RequestErrorCodingKeys, &v100);
          v54 = sub_1ABD3B950();
          sub_1ABA93668(&type metadata for InferenceServiceInstanceRequestError, v55, v56, v57, v54);
          v58 = v104;
          swift_unknownObjectRelease();
          v71 = sub_1ABA7F568();
          v72(v71);
          (*(v58 + 8))(v35, v42);
          v74 = v100;
          v73 = v101;
          v75 = v102;
          v76 = v103;
          v77 = v99;
          break;
      }

      *v41 = v74;
      *(v41 + 8) = v73;
      *(v41 + 16) = v75;
      *(v41 + 24) = v76;
      *(v41 + 32) = v84;
      return sub_1ABA84B54(v77);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1ABD3B8A8()
{
  result = qword_1EB4D8C88;
  if (!qword_1EB4D8C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C88);
  }

  return result;
}

unint64_t sub_1ABD3B8FC()
{
  result = qword_1EB4D8C90;
  if (!qword_1EB4D8C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C90);
  }

  return result;
}

unint64_t sub_1ABD3B950()
{
  result = qword_1EB4D8C98;
  if (!qword_1EB4D8C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C98);
  }

  return result;
}

uint64_t sub_1ABD3B9B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 33))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_BYTE *storeEnumTagSinglePayload for InferenceServerErrorInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_1ABD3BAFC(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InferenceServerErrorInfo.OtherErrorCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABD3BC88()
{
  result = qword_1EB4D8CA0;
  if (!qword_1EB4D8CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CA0);
  }

  return result;
}

unint64_t sub_1ABD3BCE0()
{
  result = qword_1EB4D8CA8;
  if (!qword_1EB4D8CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CA8);
  }

  return result;
}

unint64_t sub_1ABD3BD38()
{
  result = qword_1EB4D8CB0;
  if (!qword_1EB4D8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CB0);
  }

  return result;
}

unint64_t sub_1ABD3BD90()
{
  result = qword_1EB4D8CB8;
  if (!qword_1EB4D8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CB8);
  }

  return result;
}

unint64_t sub_1ABD3BDE8()
{
  result = qword_1EB4D8CC0;
  if (!qword_1EB4D8CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CC0);
  }

  return result;
}

unint64_t sub_1ABD3BE40()
{
  result = qword_1EB4D8CC8;
  if (!qword_1EB4D8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CC8);
  }

  return result;
}

unint64_t sub_1ABD3BE98()
{
  result = qword_1EB4D8CD0;
  if (!qword_1EB4D8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CD0);
  }

  return result;
}

unint64_t sub_1ABD3BEF0()
{
  result = qword_1EB4D8CD8;
  if (!qword_1EB4D8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CD8);
  }

  return result;
}

unint64_t sub_1ABD3BF48()
{
  result = qword_1EB4D8CE0;
  if (!qword_1EB4D8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CE0);
  }

  return result;
}

unint64_t sub_1ABD3BFA0()
{
  result = qword_1EB4D8CE8;
  if (!qword_1EB4D8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CE8);
  }

  return result;
}

unint64_t sub_1ABD3BFF8()
{
  result = qword_1EB4D8CF0;
  if (!qword_1EB4D8CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CF0);
  }

  return result;
}

unint64_t sub_1ABD3C050()
{
  result = qword_1EB4D8CF8;
  if (!qword_1EB4D8CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CF8);
  }

  return result;
}

unint64_t sub_1ABD3C0A8()
{
  result = qword_1EB4D8D00;
  if (!qword_1EB4D8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8D00);
  }

  return result;
}

unint64_t sub_1ABD3C100()
{
  result = qword_1EB4D8D08;
  if (!qword_1EB4D8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8D08);
  }

  return result;
}

unint64_t sub_1ABD3C158()
{
  result = qword_1EB4D8D10;
  if (!qword_1EB4D8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8D10);
  }

  return result;
}

id sub_1ABD3C1B4(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t sub_1ABD3C1C8()
{
  sub_1ABD3C200(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t static InferenceServiceCachePolicy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t InferenceServiceConfig.instanceId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InferenceServiceConfig.definitionId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1ABD3C330(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6174736E69 && a2 == 0xEA00000000006449;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6974696E69666564 && a2 == 0xEC00000064496E6FLL;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001ABF8E230 == a2;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1ABD3C4A0(char a1)
{
  result = 0x65636E6174736E69;
  switch(a1)
  {
    case 1:
      result = 0x6974696E69666564;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6574656D61726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABD3C540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD3C330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD3C570@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABB02A2C();
  *a1 = result;
  return result;
}

uint64_t sub_1ABD3C5A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD3C5F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t InferenceServiceConfig.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 24);
  v16 = *(a2 + 16);
  v17 = v5;
  type metadata accessor for InferenceServiceConfig.CodingKeys(255, v16, v5, a4);
  sub_1ABA7DA80();
  swift_getWitnessTable();
  v6 = sub_1ABF24FC4();
  sub_1ABA7BB64();
  v8 = v7;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1ABA93E20(a1, a1[3]);
  v12 = v18;
  sub_1ABF252E4();
  v23 = 0;
  v13 = v19;
  sub_1ABF24F34();
  if (!v13)
  {
    sub_1ABA8E804();
    sub_1ABF24F34();
    v20 = *(v12 + 32);
    v22 = 2;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80D40(&qword_1EB4D4308, MEMORY[0x1E69E6160]);
    sub_1ABF24F14();
    v21 = 3;
    sub_1ABF24F84();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t InferenceServiceConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v35 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InferenceServiceConfig.CodingKeys(255, v8, v9, v10);
  sub_1ABA7DA80();
  swift_getWitnessTable();
  v40 = sub_1ABF24EB4();
  sub_1ABA7BB64();
  v37 = v11;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v39 = a3;
  v16 = type metadata accessor for InferenceServiceConfig(0, a2, a3, v15);
  sub_1ABA7BB64();
  v34 = v17;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v32 - v19);
  sub_1ABA93E20(a1, a1[3]);
  v41 = v14;
  v21 = v42;
  sub_1ABF252C4();
  if (v21)
  {
    return sub_1ABA84B54(a1);
  }

  v33 = v16;
  v22 = v37;
  v42 = a2;
  v23 = v38;
  v46 = 0;
  *v20 = sub_1ABF24E14();
  v20[1] = v24;
  sub_1ABA8E804();
  v20[2] = sub_1ABF24E14();
  v20[3] = v25;
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  v45 = 2;
  sub_1ABA7C41C(&qword_1ED870660, MEMORY[0x1E69E6190]);
  sub_1ABA7E8D4();
  v32 = 0;
  sub_1ABF24DF4();
  v26 = a1;
  v20[4] = v43;
  v44 = 3;
  v27 = v23;
  v28 = v42;
  sub_1ABF24E64();
  (*(v22 + 8))(v41, v40);
  v29 = v33;
  (*(v35 + 32))(v20 + *(v33 + 44), v27, v28);
  v30 = v34;
  (*(v34 + 16))(v36, v20, v29);
  sub_1ABA84B54(v26);
  return (*(v30 + 8))(v20, v29);
}

uint64_t sub_1ABD3CCE8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABD3CD54(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1ABF25054() & 1) != 0)
    {
      v6 = a1[4];
      v7 = a2[4];
      if (v6)
      {
        if (v7 && (sub_1ABB48494(v6, v7) & 1) != 0)
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1ABD3CDE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6174736E69 && a2 == 0xEA00000000006449;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6974696E69666564 && a2 == 0xEC00000064496E6FLL;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x80000001ABF8E230 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABD3CF08(char a1)
{
  if (!a1)
  {
    return 0x65636E6174736E69;
  }

  if (a1 == 1)
  {
    return 0x6974696E69666564;
  }

  return 0xD000000000000011;
}

uint64_t sub_1ABD3CF70(void *a1)
{
  v3 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4D8D68, &qword_1ABF5C8A8);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABD3DBA8();
  sub_1ABF252E4();
  v14 = 0;
  sub_1ABF24F34();
  if (!v2)
  {
    sub_1ABA8E804();
    sub_1ABF24F34();
    v13 = *(v3 + 32);
    v12[15] = 2;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80D40(&qword_1EB4D4308, MEMORY[0x1E69E6160]);
    sub_1ABF24F14();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1ABD3D124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D8D60, &qword_1ABF5C8A0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABD3DBA8();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  v6 = sub_1ABF24E14();
  v8 = v7;
  v15 = v6;
  sub_1ABA8E804();
  v13 = sub_1ABF24E14();
  v14 = v9;
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABA7C41C(&qword_1ED870660, MEMORY[0x1E69E6190]);
  sub_1ABA7E8D4();
  sub_1ABF24DF4();
  v10 = sub_1ABA7BCF0();
  v11(v10);
  result = sub_1ABA84B54(a1);
  *a2 = v15;
  a2[1] = v8;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;
  return result;
}

uint64_t sub_1ABD3D3A0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void sub_1ABD3D400(uint64_t a1)
{
  sub_1ABD3D884(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1ABD3D498(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 40) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return sub_1ABA7E1E0((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1ABD3D628(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 40) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;

            sub_1ABA7B9B4(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_1ABD3D884(uint64_t a1)
{
  if (!qword_1EB4CE708)
  {
    sub_1ABAE2850(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    v1 = sub_1ABF247E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4CE708);
    }
  }
}

_BYTE *sub_1ABD3D8E8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_1ABD3DA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD3CDE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD3DA48(uint64_t a1)
{
  v2 = sub_1ABD3DBA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD3DA84(uint64_t a1)
{
  v2 = sub_1ABD3DBA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1ABD3DAC4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1ABD3D124(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1ABD3DB24(uint64_t a1)
{
  *(a1 + 8) = sub_1ABD3965C();
  result = sub_1ABD3DB54();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD3DB54()
{
  result = qword_1EB4D8D58;
  if (!qword_1EB4D8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8D58);
  }

  return result;
}

unint64_t sub_1ABD3DBA8()
{
  result = qword_1EB4CED98;
  if (!qword_1EB4CED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InferenceServiceConfigBase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1ABD3DCDC()
{
  result = qword_1EB4D8D70;
  if (!qword_1EB4D8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8D70);
  }

  return result;
}

unint64_t sub_1ABD3DD34()
{
  result = qword_1EB4CED88;
  if (!qword_1EB4CED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED88);
  }

  return result;
}

unint64_t sub_1ABD3DD8C()
{
  result = qword_1EB4CED90;
  if (!qword_1EB4CED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED90);
  }

  return result;
}

uint64_t InferenceServiceContextProtocol.model(for:in:configuration:)()
{
  sub_1ABA7BBF8();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[2] = v7;
  v1[3] = v8;
  v1[10] = *(v4 - 8);
  v1[11] = sub_1ABA7E314();
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD3DE90()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  sub_1ABD3E998(v4, v0[8]);
  type metadata accessor for InferenceMLModel();
  (*(v2 + 16))(v1, v3, v4);

  v6 = v5;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1ABD3DFB0;

  return InferenceMLModel.__allocating_init<A>(domainId:assetId:configuration:context:)();
}

uint64_t sub_1ABD3DFB0()
{
  v2 = *v1;
  sub_1ABA7D4E0();
  *v3 = v2;
  v4 = *v1;
  sub_1ABA7D4E0();
  *v5 = v4;
  *(v2 + 104) = v0;

  if (!v0)
  {

    v6 = *(v4 + 8);

    __asm { BRAA            X2, X16 }
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD3E0FC()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t InferenceServiceRunContext.run<A>(with:on:interface:parentEventId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 112) = a8;
  *(v9 + 120) = v8;
  *(v9 + 96) = a5;
  *(v9 + 104) = a7;
  *(v9 + 288) = a6;
  *(v9 + 80) = a2;
  *(v9 + 88) = a4;
  *(v9 + 72) = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v9 + 128) = AssociatedTypeWitness;
  *(v9 + 136) = *(AssociatedTypeWitness - 8);
  *(v9 + 144) = sub_1ABA7E314();
  v14 = type metadata accessor for InferenceMessageRequest(0, AssociatedTypeWitness, v12, v13);
  *(v9 + 152) = v14;
  *(v9 + 160) = *(v14 - 8);
  *(v9 + 168) = sub_1ABA7E314();
  v15 = swift_getAssociatedTypeWitness();
  *(v9 + 176) = v15;
  v18 = type metadata accessor for InferenceMessageResponse(0, v15, v16, v17);
  *(v9 + 184) = v18;
  *(v9 + 192) = *(v18 - 8);
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = *a3;
  *(v9 + 232) = *(a3 + 16);
  *(v9 + 240) = *(a3 + 24);
  *(v9 + 256) = *(a3 + 40);
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD3E360()
{
  v1 = *(v0 + 288);
  sub_1ABD3E928();
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = (v2 + 24);
  }

  else
  {
    v3 = (v0 + 96);
    v2 = *(v0 + 120);
  }

  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v18 = *(v0 + 216);
  v19 = *(v0 + 232);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);
  v22 = *(v0 + 112);
  v23 = *v3;
  v20 = *(v0 + 168);
  v21 = *(v0 + 104);
  v9 = *(v0 + 80);
  v10 = *(v2 + 16);
  *(v0 + 264) = *(v10 + 16);
  swift_unownedRetainStrong();
  *(v0 + 16) = v18;
  *(v0 + 32) = v19;
  *(v0 + 48) = v5;
  *(v0 + 56) = v4;
  (*(v6 + 16))(v7, v9, v8);
  sub_1ABD2B514(v7, v23, 0, v8, v21, v22, v20);
  *(v0 + 64) = *(v10 + 24);

  v11 = swift_task_alloc();
  *(v0 + 272) = v11;
  *v11 = v0;
  v11[1] = sub_1ABD3E4F8;
  v12 = *(v0 + 208);
  v13 = *(v0 + 168);
  v14 = *(v0 + 104);
  v15 = *(v0 + 112);
  v16 = *(v0 + 88);

  return sub_1ABD33398(v12, (v0 + 16), v16, v13, (v0 + 64), v14, v15);
}

uint64_t sub_1ABD3E4F8()
{
  v2 = *v1;
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = v4[21];
  v6 = v4[20];
  v7 = v4[19];
  v8 = *v1;
  sub_1ABA7D4E0();
  *v9 = v8;
  *(v2 + 280) = v0;

  (*(v6 + 8))(v5, v7);
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD3E688()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  v6 = v0[9];
  (*(v4 + 16))(v1, v2, v3);
  sub_1ABD49C04(v1, v5, v6);
  (*(v4 + 8))(v2, v3);

  sub_1ABA7BBE0();

  return v7();
}

uint64_t sub_1ABD3E774()
{

  sub_1ABA7BBE0();

  return v0();
}

void sub_1ABD3E7FC(char a1)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock((v3 + 24));
  *(*(v3 + 16) + 16) = a1;

  os_unfair_lock_unlock((v3 + 24));
}

void *sub_1ABD3E844(uint64_t *a1)
{
  v2 = a1[1];
  v1[2] = *a1;
  v1[3] = v2;
  swift_unownedRetain();

  type metadata accessor for InferenceServiceContextMemberVariables.BoolClass();
  v3 = swift_allocObject();
  *(v3 + 16) = 1;
  sub_1ABAD219C(&qword_1EB4D8D78, qword_1ABF5CB60);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  v1[4] = v4;
  return v1;
}

uint64_t InferenceServiceContextMemberVariables.deinit()
{
  swift_unownedRelease();

  return v0;
}

uint64_t InferenceServiceContextMemberVariables.__deallocating_deinit()
{
  InferenceServiceContextMemberVariables.deinit();

  return swift_deallocClassInstance();
}

void sub_1ABD3E928()
{
  v1 = *(*(v0 + 16) + 32);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(*(v1 + 16) + 16);
  os_unfair_lock_unlock((v1 + 24));
  if (v2 != 1)
  {
    sub_1ABA80D64();
    sub_1ABA7DA98("Fatal error", v3, v4, v5, v6, "IntelligencePlatform/InferenceServiceContext.swift", v7, v8, v9, v10);
    __break(1u);
  }
}

uint64_t sub_1ABD3E998(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 8))(a1) + 32);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(*(v2 + 16) + 16);
  os_unfair_lock_unlock((v2 + 24));

  if (v3 != 1)
  {
    sub_1ABA80D64();
    result = sub_1ABA7DA98("Fatal error", v5, v6, v7, v8, "IntelligencePlatform/InferenceServiceContext.swift", v9, v10, v11, v12);
    __break(1u);
  }

  return result;
}

uint64_t InferenceServiceContextProtocol.viewService()()
{
  if (qword_1ED870898 != -1)
  {
    swift_once();
  }

  return qword_1ED8708B8();
}

uint64_t InferenceServiceContextProtocol.asset(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  sub_1ABA814B0();
  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD3EACC()
{
  v14 = v0;
  v1 = v0[13];
  v2 = v0[12];
  v3 = type metadata accessor for AssetRegistry();
  v4 = *((*(v1 + 8))(v2, v1) + 16);
  swift_unownedRetainStrong();

  sub_1ABA93E64(v4 + 32, (v0 + 2));

  v5 = v0[5];
  v6 = v0[6];
  v7 = sub_1ABA93E20(v0 + 2, v5);
  v12[0] = sub_1ABAF31C0;
  v12[1] = 0;
  v13 = 0;
  v8 = *(v5 - 8);
  v9 = sub_1ABA7E314();
  (*(v8 + 16))(v9, v7, v5);
  v0[15] = sub_1ABA94614(v9, v12, v3, v5, *(v6 + 8));

  sub_1ABA84B54(v0 + 2);
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_1ABD3ECA0;

  return AssetRegistry.asset(for:in:)();
}

uint64_t sub_1ABD3ECA0()
{
  sub_1ABA7BBF8();
  v2 = *v1;
  sub_1ABA7D4E0();
  *v3 = v2;
  v4 = *v1;
  sub_1ABA7D4E0();
  *v5 = v4;
  *(v2 + 136) = v0;

  if (!v0)
  {

    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD3EDC8()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABD3EE24(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  type metadata accessor for InferenceServiceContextMemberVariables();
  v5 = swift_allocObject();
  sub_1ABD3E844(v7);
  *(v3 + 16) = v5;
  return v3;
}

uint64_t InferenceServiceInitContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1ABD3EEB8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  type metadata accessor for InferenceServiceContextMemberVariables();
  v6 = swift_allocObject();
  sub_1ABD3E844(v8);
  *(v3 + 16) = v6;
  *(v3 + 24) = a2;
  return v3;
}

void InferenceServiceRunContext.provide<A>(feedback:for:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1ABD3E928();
  v7 = [objc_allocWithZone(type metadata accessor for FeedbackService()) init];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  FeedbackService.record<A>(feedback:for:)(a1, a2, 0, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t InferenceServiceRunContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of static InferenceServiceDefinition.buildRunner(config:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 64) + **(a5 + 64));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1ABB385FC;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t static InferenceServiceDefinitionList.definitions.getter()
{
  sub_1ABAD219C(&qword_1EB4D8D80, &qword_1ABF5CC30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1ABF3BFC0;
  v1 = sub_1ABAD219C(&qword_1EB4D8D88, &qword_1ABF5CC38);
  v2 = sub_1ABA8F5D8(v1);
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_1ABD3F398();
  *(v0 + 32) = v2;
  v3 = sub_1ABAD219C(&qword_1EB4D8D90, &qword_1ABF5CC40);
  v4 = sub_1ABA8F5D8(v3);
  *(v0 + 96) = v3;
  *(v0 + 104) = sub_1ABD3F6C4();
  *(v0 + 72) = v4;
  v5 = sub_1ABAD219C(&qword_1EB4D8D98, &qword_1ABF5CC48);
  v6 = sub_1ABA8F5D8(v5);
  *(v0 + 136) = v5;
  *(v0 + 144) = sub_1ABD3FA44();
  *(v0 + 112) = v6;
  return v0;
}

unint64_t sub_1ABD3F398()
{
  result = qword_1EB4CEAC8[0];
  if (!qword_1EB4CEAC8[0])
  {
    sub_1ABAE2850(&qword_1EB4D8D88, &qword_1ABF5CC38);
    sub_1ABD3F4CC();
    sub_1ABD3F520();
    sub_1ABD3FC20(&qword_1EB4CEB98, type metadata accessor for PersonMatcherInferenceInterface.Output, &protocol conformance descriptor for PersonMatcherInferenceInterface.Output);
    sub_1ABD3FC20(&qword_1EB4CEBA0, type metadata accessor for PersonMatcherInferenceInterface.Output, &protocol conformance descriptor for PersonMatcherInferenceInterface.Output);
    sub_1ABD3F574();
    sub_1ABD3F5C8();
    sub_1ABD3F61C();
    sub_1ABD3F670();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4CEAC8);
  }

  return result;
}

unint64_t sub_1ABD3F4CC()
{
  result = qword_1EB4CEBC8;
  if (!qword_1EB4CEBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEBC8);
  }

  return result;
}

unint64_t sub_1ABD3F520()
{
  result = qword_1EB4CEBD0;
  if (!qword_1EB4CEBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEBD0);
  }

  return result;
}

unint64_t sub_1ABD3F574()
{
  result = qword_1EB4CEBA8;
  if (!qword_1EB4CEBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEBA8);
  }

  return result;
}

unint64_t sub_1ABD3F5C8()
{
  result = qword_1EB4CEBB0;
  if (!qword_1EB4CEBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEBB0);
  }

  return result;
}

unint64_t sub_1ABD3F61C()
{
  result = qword_1EB4CEBB8;
  if (!qword_1EB4CEBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEBB8);
  }

  return result;
}

unint64_t sub_1ABD3F670()
{
  result = qword_1EB4CEBC0;
  if (!qword_1EB4CEBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEBC0);
  }

  return result;
}

unint64_t sub_1ABD3F6C4()
{
  result = qword_1EB4CEAB8;
  if (!qword_1EB4CEAB8)
  {
    sub_1ABAE2850(&qword_1EB4D8D90, &qword_1ABF5CC40);
    sub_1ABD3F7A4();
    sub_1ABD3F7F8();
    sub_1ABD3F84C();
    sub_1ABD3F8A0();
    sub_1ABD3F8F4();
    sub_1ABD3F948();
    sub_1ABD3F99C();
    sub_1ABD3F9F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEAB8);
  }

  return result;
}

unint64_t sub_1ABD3F7A4()
{
  result = qword_1EB4CED08;
  if (!qword_1EB4CED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED08);
  }

  return result;
}

unint64_t sub_1ABD3F7F8()
{
  result = qword_1EB4CED10;
  if (!qword_1EB4CED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED10);
  }

  return result;
}

unint64_t sub_1ABD3F84C()
{
  result = qword_1EB4CECD8;
  if (!qword_1EB4CECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CECD8);
  }

  return result;
}

unint64_t sub_1ABD3F8A0()
{
  result = qword_1EB4CECE0;
  if (!qword_1EB4CECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CECE0);
  }

  return result;
}

unint64_t sub_1ABD3F8F4()
{
  result = qword_1EB4CECE8;
  if (!qword_1EB4CECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CECE8);
  }

  return result;
}

unint64_t sub_1ABD3F948()
{
  result = qword_1EB4CECF0;
  if (!qword_1EB4CECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CECF0);
  }

  return result;
}

unint64_t sub_1ABD3F99C()
{
  result = qword_1EB4CECF8;
  if (!qword_1EB4CECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CECF8);
  }

  return result;
}

unint64_t sub_1ABD3F9F0()
{
  result = qword_1EB4CED00;
  if (!qword_1EB4CED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED00);
  }

  return result;
}

unint64_t sub_1ABD3FA44()
{
  result = qword_1EB4CEAC0;
  if (!qword_1EB4CEAC0)
  {
    sub_1ABAE2850(&qword_1EB4D8D98, &qword_1ABF5CC48);
    sub_1ABD3FB78();
    sub_1ABD3FBCC();
    sub_1ABD3FC20(&qword_1EB4CEA60, type metadata accessor for LocationEmbedderInferenceInterface.Output, &protocol conformance descriptor for LocationEmbedderInferenceInterface.Output);
    sub_1ABD3FC20(&qword_1EB4CEA68, type metadata accessor for LocationEmbedderInferenceInterface.Output, &protocol conformance descriptor for LocationEmbedderInferenceInterface.Output);
    sub_1ABD3FC68();
    sub_1ABD3FCBC();
    sub_1ABD3FD10();
    sub_1ABD3FD64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEAC0);
  }

  return result;
}

unint64_t sub_1ABD3FB78()
{
  result = qword_1EB4CEA90;
  if (!qword_1EB4CEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA90);
  }

  return result;
}

unint64_t sub_1ABD3FBCC()
{
  result = qword_1EB4CEA98;
  if (!qword_1EB4CEA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA98);
  }

  return result;
}

uint64_t sub_1ABD3FC20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1ABD3FC68()
{
  result = qword_1EB4CEA70;
  if (!qword_1EB4CEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA70);
  }

  return result;
}

unint64_t sub_1ABD3FCBC()
{
  result = qword_1EB4CEA78;
  if (!qword_1EB4CEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA78);
  }

  return result;
}

unint64_t sub_1ABD3FD10()
{
  result = qword_1EB4CEA80;
  if (!qword_1EB4CEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA80);
  }

  return result;
}

unint64_t sub_1ABD3FD64()
{
  result = qword_1EB4CEA88;
  if (!qword_1EB4CEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA88);
  }

  return result;
}

uint64_t static InferenceServiceDefinitionList.localOnlyDefinitions.getter()
{
  sub_1ABAD219C(&qword_1EB4D8DA0, &qword_1ABF5CC50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1ABF3BFC0;
  v1 = sub_1ABAD219C(&qword_1EB4D8DA8, &qword_1ABF5CC58);
  v2 = sub_1ABA8F5D8(v1);
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_1ABD3FEF0(&qword_1EB4CEAA8, &qword_1EB4D8DA8, &qword_1ABF5CC58);
  *(v0 + 32) = v2;
  v3 = sub_1ABAD219C(&qword_1EB4D8DB0, &qword_1ABF5CC60);
  v4 = sub_1ABA8F5D8(v3);
  *(v0 + 96) = v3;
  *(v0 + 104) = sub_1ABD3FEF0(&qword_1EB4CEAA0, &qword_1EB4D8DB0, &qword_1ABF5CC60);
  *(v0 + 72) = v4;
  v5 = sub_1ABAD219C(&qword_1EB4D8DB8, &qword_1ABF5CC68);
  v6 = sub_1ABA8F5D8(v5);
  *(v0 + 136) = v5;
  *(v0 + 144) = sub_1ABD3FEF0(&qword_1EB4CEAB0, &qword_1EB4D8DB8, &qword_1ABF5CC68);
  *(v0 + 112) = v6;
  return v0;
}

uint64_t sub_1ABD3FEF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InferenceServiceDefinitionList(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1ABD40020(uint64_t a1, uint64_t a2)
{
  if (*((*(a2 + 8))() + 16))
  {
    v5 = sub_1ABA80D78();
    sub_1ABADE2BC(v5, v6, v7);
    sub_1ABA7C440();
    do
    {
      sub_1ABA93E64(v3, v4 + 16);
      sub_1ABA93E20((v4 + 16), v28);
      sub_1ABD40218(v28, *(v29 + 8));
      sub_1ABA7F578();
      if (v19)
      {
        v21 = sub_1ABA7DAC4(v16);
        sub_1ABADE2BC(v21, v22, v23);
        v2 = v30;
      }

      sub_1ABA8F5F0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v25, v26, v27);
    }

    while (!v20);
  }

  else
  {

    v2 = MEMORY[0x1E69E7CC0];
  }

  return sub_1ABBFA534(v2);
}

uint64_t sub_1ABD40114(uint64_t a1, uint64_t a2)
{
  if (*((*(a2 + 16))() + 16))
  {
    v5 = sub_1ABA80D78();
    sub_1ABADE2FC(v5, v6, v7);
    sub_1ABA7C440();
    do
    {
      sub_1ABA93E64(v3, v4 + 16);
      sub_1ABA93E20((v4 + 16), v28);
      sub_1ABD40218(v28, v29);
      sub_1ABA7F578();
      if (v19)
      {
        v21 = sub_1ABA7DAC4(v16);
        sub_1ABADE2FC(v21, v22, v23);
        v2 = v30;
      }

      sub_1ABA8F5F0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v25, v26, v27);
    }

    while (!v20);
  }

  else
  {

    v2 = MEMORY[0x1E69E7CC0];
  }

  return sub_1ABBFA55C(v2);
}

uint64_t sub_1ABD40218(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1ABD402F4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABD403AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1ABAD219C(&qword_1EB4D1AC0, &qword_1ABF33C50);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  sub_1ABD48D94(a3, v23 - v9);
  v11 = sub_1ABF24294();
  v12 = sub_1ABA7E1E0(v10, 1, v11);

  if (v12 == 1)
  {
    sub_1ABA7E208(v10);
  }

  else
  {
    sub_1ABF24284();
    sub_1ABA7D08C();
    v13 = sub_1ABA954F0();
    v14(v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1ABF24244();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1ABF23CA4() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = sub_1ABA97360();

      sub_1ABA7E208(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1ABA7E208(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return sub_1ABA97360();
}

uint64_t InferenceServiceInstanceQualifiedID.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v5 = v0[4];

  sub_1ABAA2330();
  MEMORY[0x1AC5A9410](v1, v2);
  sub_1ABAA2330();
  v3 = sub_1ABA7E378();
  MEMORY[0x1AC5A9410](v3);
  return v5;
}

uint64_t static InferenceServiceInstanceQualifiedID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_1ABF25054() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v4 == v7;
  if (!v11 && (sub_1ABF25054() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  sub_1ABA7D000();

  return sub_1ABF25054();
}

uint64_t sub_1ABD407AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001ABF8E4D0 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001ABF89260 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x80000001ABF8E4F0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_1ABD408C4(char a1)
{
  result = 0xD000000000000011;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0xD000000000000018;
    }
  }

  return result;
}

uint64_t sub_1ABD40924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD407AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD4094C(uint64_t a1)
{
  v2 = sub_1ABD40B4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD40988(uint64_t a1)
{
  v2 = sub_1ABD40B4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceServiceInstanceQualifiedID.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  v38 = v25;
  v27 = v26;
  v28 = sub_1ABAD219C(&qword_1EB4D8DC0, &qword_1ABF5CE40);
  sub_1ABA7BB64();
  v30 = v29;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v37 - v32;
  v34 = v24[2];
  v37[3] = v24[3];
  v37[4] = v34;
  v35 = v24[4];
  v37[1] = v24[5];
  v37[2] = v35;
  sub_1ABA93E20(v27, v27[3]);
  sub_1ABD40B4C();
  sub_1ABF252E4();
  sub_1ABA8AF68();
  v36 = v38;
  sub_1ABF24F34();
  if (!v36)
  {
    sub_1ABA8E804();
    sub_1ABF24F34();
    sub_1ABF24F34();
  }

  (*(v30 + 8))(v33, v28);
  sub_1ABA7BC90();
}

unint64_t sub_1ABD40B4C()
{
  result = qword_1EB4CEA48;
  if (!qword_1EB4CEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA48);
  }

  return result;
}

uint64_t InferenceServiceInstanceQualifiedID.hash(into:)(uint64_t a1)
{
  sub_1ABF23D34();
  sub_1ABA7E378();
  sub_1ABF23D34();
  sub_1ABA8E7C4();

  return sub_1ABF23D34();
}

uint64_t InferenceServiceInstanceQualifiedID.hashValue.getter()
{
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF23D34();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

void InferenceServiceInstanceQualifiedID.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  v27 = v26;
  v29 = v28;
  v30 = sub_1ABAD219C(&qword_1EB4D8DC8, &qword_1ABF5CE48);
  sub_1ABA7BB64();
  v32 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7BCE0();
  sub_1ABA93E20(v27, v27[3]);
  sub_1ABD40B4C();
  sub_1ABF252C4();
  if (v24)
  {
    sub_1ABA84B54(v27);
  }

  else
  {
    v34 = sub_1ABF24E14();
    v43 = v35;
    sub_1ABA8E804();
    v41 = sub_1ABF24E14();
    v42 = v36;
    v37 = sub_1ABF24E14();
    v39 = v38;
    v40 = v37;
    (*(v32 + 8))(v25, v30);
    *v29 = v34;
    v29[1] = v43;
    v29[2] = v41;
    v29[3] = v42;
    v29[4] = v40;
    v29[5] = v39;

    sub_1ABA84B54(v27);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABD40EBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001ABF8E510 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABD40F58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001ABF8E530 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001ABF8E550 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1ABD4102C(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1ABD410A0(uint64_t a1)
{
  v2 = v1[1];
  v3 = *(v1 + 4);
  v4 = *(v1 + 5);
  v7 = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_1ABF25234();
  InferenceServiceInstanceQualifiedID.hash(into:)(v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABD410FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD40EBC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABD41128(uint64_t a1)
{
  v2 = sub_1ABD41440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD41164(uint64_t a1)
{
  v2 = sub_1ABD41440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD411A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD40F58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD411D0(uint64_t a1)
{
  v2 = sub_1ABD41494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD4120C(uint64_t a1)
{
  v2 = sub_1ABD41494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceServiceInstanceRequestError.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA7BCA8();
  v26 = v25;
  v27 = sub_1ABAD219C(&qword_1EB4D8DD0, &qword_1ABF5CE50);
  sub_1ABA7BB64();
  v34 = v28;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA83634();
  v30 = sub_1ABAD219C(&qword_1EB4D8DD8, &qword_1ABF5CE58);
  sub_1ABA7BB64();
  v33 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA7BCE0();
  sub_1ABA93E20(v26, v26[3]);
  sub_1ABD41440();
  sub_1ABF252E4();
  sub_1ABD41494();
  sub_1ABF24EC4();
  sub_1ABF24F34();
  if (!v22)
  {
    sub_1ABA8E804();
    sub_1ABF24F34();
  }

  (*(v34 + 8))(v23, v27);
  (*(v33 + 8))(v24, v30);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

unint64_t sub_1ABD41440()
{
  result = qword_1EB4D8DE0;
  if (!qword_1EB4D8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8DE0);
  }

  return result;
}

unint64_t sub_1ABD41494()
{
  result = qword_1EB4D8DE8;
  if (!qword_1EB4D8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8DE8);
  }

  return result;
}

void InferenceServiceInstanceRequestError.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA7BCA8();
  v25 = v24;
  v53 = v26;
  sub_1ABAD219C(&qword_1EB4D8DF0, &qword_1ABF5CE60);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7BCE0();
  v28 = sub_1ABAD219C(&qword_1EB4D8DF8, &unk_1ABF5CE68);
  sub_1ABA7BB64();
  v51 = v29;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA83634();
  sub_1ABA93E20(v25, v25[3]);
  sub_1ABD41440();
  sub_1ABF252C4();
  if (v22)
  {
    goto LABEL_8;
  }

  sub_1ABF24EA4();
  sub_1ABAD4EA4();
  v33 = v28;
  if (v31 == v32 >> 1)
  {
LABEL_7:
    sub_1ABF24B44();
    sub_1ABA7D104();
    swift_allocError();
    v39 = v38;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v39 = &type metadata for InferenceServiceInstanceRequestError;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    sub_1ABA7D08C();
    (*(v40 + 104))(v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v23, v33);
LABEL_8:
    v48 = v25;
    goto LABEL_9;
  }

  if (v31 < (v32 >> 1))
  {
    sub_1ABAD4E90();
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    if (v35 == v37 >> 1)
    {
      sub_1ABD41494();
      sub_1ABF24D94();
      v49 = sub_1ABF24E14();
      v50 = v41;
      sub_1ABA8E804();
      v42 = sub_1ABF24E14();
      v52 = v43;
      swift_unknownObjectRelease();
      v44 = sub_1ABA7EDF8();
      v45(v44);
      v46 = sub_1ABA8AF68();
      v47(v46);
      *v53 = v49;
      v53[1] = v50;
      v53[2] = v42;
      v53[3] = v52;
      v48 = v25;
LABEL_9:
      sub_1ABA84B54(v48);
      sub_1ABA8869C();
      sub_1ABA7BC90();
      return;
    }

    v33 = v28;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1ABD41944@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0;
}

uint64_t InferenceServiceInstanceRunEvent.instanceQualifiedId.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
}

uint64_t InferenceServiceInstanceRunEvent.variant.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v5 = v0[4];

  swift_bridgeObjectRetain_n();
  sub_1ABAA2330();
  MEMORY[0x1AC5A9410](v1, v2);
  sub_1ABAA2330();
  v3 = sub_1ABA7D2D8();
  MEMORY[0x1AC5A9410](v3);

  return v5;
}

uint64_t sub_1ABD41ACC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001ABF8E470 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABD41B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD41ACC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABD41B98(uint64_t a1)
{
  v2 = sub_1ABD4838C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD41BD4(uint64_t a1)
{
  v2 = sub_1ABD4838C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceServiceInstanceRunEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D8E00, &qword_1ABF5CE78);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA83634();
  sub_1ABA93E20(v1, v1[3]);
  sub_1ABD4838C();

  sub_1ABF252E4();
  sub_1ABD483E0();
  sub_1ABF24F84();

  v3 = sub_1ABA8AF68();
  v4(v3);
  sub_1ABA7BC90();
}

void InferenceServiceInstanceRunEvent.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4D8E08, &qword_1ABF5CE80);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BCE0();
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABD4838C();
  sub_1ABF252C4();
  if (!v0)
  {
    sub_1ABD48434();
    sub_1ABF24E64();
    v6 = sub_1ABA7BFF0();
    v7(v6);
    *v4 = v8;
    *(v4 + 16) = v9;
    *(v4 + 32) = v10;
    *(v4 + 40) = v11;
  }

  sub_1ABA84B54(v2);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABD41F2C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1ABA95334();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1ABA8CD18();
  v10 = sub_1ABAA1358(v5, v6, v7, v8, v9);
  v11 = sub_1ABAABCDC();
  v14 = type metadata accessor for InferenceServiceInstance(v11, v12, v10, v13);
  sub_1ABD373CC(a1, v18);
  v17 = sub_1ABD421DC(AssociatedTypeWitness, v18);
  a2[3] = v14;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABAA3168();
  sub_1ABA839F8();
  swift_getAssociatedConformanceWitness();
  sub_1ABA839F8();
  swift_getAssociatedConformanceWitness();
  sub_1ABAA3168();
  sub_1ABA839F8();
  swift_getAssociatedConformanceWitness();
  sub_1ABA839F8();
  swift_getAssociatedConformanceWitness();
  sub_1ABAA3168();
  swift_getAssociatedConformanceWitness();
  sub_1ABAA4150();
  swift_getAssociatedTypeWitness();
  sub_1ABA7BE8C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7BE8C();
  swift_getAssociatedConformanceWitness();
  sub_1ABAA4150();
  swift_getAssociatedTypeWitness();
  sub_1ABA7BE8C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7BE8C();
  swift_getAssociatedConformanceWitness();
  result = swift_getWitnessTable();
  a2[4] = result;
  *a2 = v17;
  return result;
}

uint64_t sub_1ABD421DC(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  sub_1ABD4254C(v3, a2);
  return v3;
}

uint64_t sub_1ABD4221C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7D000();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for InferenceServiceInstance(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  sub_1ABD373CC(a1, v9);
  result = sub_1ABD421DC(AssociatedTypeWitness, v9);
  a2[3] = v7;
  a2[4] = &off_1F20807E0;
  *a2 = result;
  return result;
}

uint64_t sub_1ABD422D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v21 = *(*v1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1ABF247E4();
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = *(v3 + 120);
  sub_1ABA7F2A0(v1 + v15, v24);
  (*(v7 + 16))(v10, v1 + v15, v5);
  v16 = sub_1ABAB5704(v10);
  if (v16 == 1)
  {
    result = (*(v7 + 8))(v10, v5);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(&v22, AssociatedTypeWitness, AssociatedConformanceWitness);
    result = (*(v11 + 8))(v14, AssociatedTypeWitness);
    v18 = v22;
    v19 = v23;
  }

  *a1 = v18;
  *(a1 + 8) = v19;
  *(a1 + 9) = v16 == 1;
  return result;
}

void *sub_1ABD4254C(uint64_t a1, void *a2)
{
  sub_1ABAA53DC();
  swift_getAssociatedTypeWitness();
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v4, v5, v6, v7);
  *(v2 + *(*v2 + 128)) = 0;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v2[2] = *a2;
  v2[3] = v8;
  v2[4] = v9;
  v2[5] = v10;
  v2[6] = v11;
  v2[7] = v12;
  sub_1ABA93FC4((a2 + 6), (v2 + 8));
  v2[13] = a2[11];

  sub_1ABD45570();
  sub_1ABD37498(a2);
  return v2;
}

uint64_t sub_1ABD42688(uint64_t a1)
{
  sub_1ABF25234();
  sub_1ABAB8190(v3, *v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABD426C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 72) = a7;
  *(v9 + 80) = v8;
  *(v9 + 296) = a8;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 40) = a2;
  *(v9 + 48) = a4;
  *(v9 + 32) = a1;
  v10 = *v8;
  v11 = sub_1ABAA4150();
  v12 = sub_1ABAB6938(v11);
  *(v9 + 88) = type metadata accessor for InferenceMessageResponse(255, v12, v13, v14);
  v15 = sub_1ABF247E4();
  *(v9 + 96) = v15;
  sub_1ABA7BBD0(v15);
  *(v9 + 104) = v16;
  *(v9 + 112) = sub_1ABA7E314();
  *(v9 + 120) = *(v10 + 88);
  *(v9 + 128) = *(v10 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = sub_1ABA95334();
  v18 = sub_1ABAB6938(v17);
  *(v9 + 136) = type metadata accessor for InferenceMessageResponse(255, v18, v19, v20);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v9 + 144) = TupleTypeMetadata2;
  sub_1ABA7BBD0(TupleTypeMetadata2);
  *(v9 + 152) = v22;
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  v23 = sub_1ABA95334();
  v24 = sub_1ABAB6938(v23);
  v27 = type metadata accessor for InferenceMessageRequest(255, v24, v25, v26);
  *(v9 + 184) = v27;
  sub_1ABA93630();
  v28 = sub_1ABF247E4();
  *(v9 + 192) = v28;
  sub_1ABA7BBD0(v28);
  *(v9 + 200) = v29;
  *(v9 + 208) = sub_1ABA7E314();
  v30 = sub_1ABAA4150();
  sub_1ABAB6938(v30);
  v31 = sub_1ABAA1CE0();
  v35 = type metadata accessor for InferenceMessageRequest(v31, v32, v33, v34);
  *(v9 + 216) = v35;
  sub_1ABA7BBD0(v35);
  *(v9 + 224) = v36;
  *(v9 + 232) = sub_1ABA7E314();
  *(v9 + 240) = *(v27 - 8);
  v37 = sub_1ABA7E314();
  v38 = *v43;
  v39 = v43[1];
  *(v9 + 248) = v37;
  *(v9 + 256) = v38;
  *(v9 + 264) = v39;
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8(&qword_1EB4CFFC0);
  }

  *(v9 + 272) = qword_1EB4CF2B8;
  v40 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v40);
}

uint64_t sub_1ABD42A38()
{
  sub_1ABD44F48();
  (*(v0[28] + 16))(v0[29], v0[6], v0[27]);
  sub_1ABA97C10();
  if (swift_dynamicCast())
  {
    v2 = v0[32];
    v1 = v0[33];
    sub_1ABA7B9B4(v0[26], 0, 1, v0[23]);
    v3 = sub_1ABA7EDF8();
    v4(v3);
    v0[2] = v2;
    v0[3] = v1;
    swift_task_alloc();
    sub_1ABA8E8BC();
    v0[35] = v5;
    *v5 = v6;
    v5[1] = sub_1ABD42C70;

    return sub_1ABD430EC();
  }

  else
  {
    sub_1ABA7ED8C();
    sub_1ABA7B9B4(v8, v9, v10, v11);
    v12 = sub_1ABA7EDF8();
    v13(v12);
    sub_1ABAA6114();
    type metadata accessor for InferenceServiceInstance.RunErrorLocalConversion(v14, v15, v16, v17);
    sub_1ABA9091C();
    swift_getWitnessTable();
    sub_1ABA7D104();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    sub_1ABA96D18();

    sub_1ABA7BBE0();

    return v19();
  }
}

uint64_t sub_1ABD42C70()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 288) = v0;

  v7 = *(v3 + 272);
  if (v0)
  {
    v8 = sub_1ABD43034;
  }

  else
  {
    v8 = sub_1ABD42D70;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1ABD42D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1ABA8CFC8();
  (*(v18[19] + 16))(v18[21], v18[22], v18[18]);
  sub_1ABA97C10();
  v19 = swift_dynamicCast();
  v20 = v18[30];
  v21 = v18[11];
  if (v19)
  {
    a12 = v18[29];
    v58 = v18[26];
    a10 = v18[22];
    a11 = v18[31];
    v22 = v18[20];
    v59 = v18[21];
    v24 = v18[18];
    v23 = v18[19];
    v25 = v18[14];
    v27 = v18[4];
    v26 = v18[5];
    (*(v20 + 8))(a11, v18[23]);
    sub_1ABA7B9B4(v25, 0, 1, v21);
    sub_1ABA7D08C();
    (*(v28 + 32))(v27, v25, v21);
    (*(v23 + 32))(v22, a10, v24);
    v29 = (v22 + *(v24 + 48));
    v30 = *v29;
    LOBYTE(v29) = *(v29 + 8);
    *v26 = v30;
    *(v26 + 8) = v29;
    sub_1ABA7D08C();
    v31 = sub_1ABA8E7C4();
    v32(v31);

    sub_1ABA80A84();
  }

  else
  {
    v58 = v18[22];
    v59 = v18[23];
    v34 = v18[18];
    v33 = v18[19];
    v35 = v18[13];
    v36 = v18[14];
    v37 = v18[12];
    sub_1ABA7ED8C();
    v38 = v21;
    v40 = v39;
    sub_1ABA7B9B4(v41, v42, v43, v38);
    (*(v35 + 8))(v36, v37);
    sub_1ABAA6114();
    type metadata accessor for InferenceServiceInstance.RunErrorLocalConversion(v44, v45, v46, v47);
    sub_1ABA9091C();
    swift_getWitnessTable();
    sub_1ABA7D104();
    swift_allocError();
    *v48 = 1;
    swift_willThrow();
    (*(v33 + 8))(v58, v34);
    (*(v20 + 8))(v40, v59);

    sub_1ABA7BBE0();
  }

  sub_1ABA8B690();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, v58, v59, a15, a16, a17, a18);
}

uint64_t sub_1ABD43034()
{
  sub_1ABA906D0();
  (*(v0[30] + 8))(v0[31], v0[23]);
  sub_1ABA96D18();

  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABD430EC()
{
  sub_1ABAA1574();
  sub_1ABA906D0();
  v3 = v2;
  v1[20] = v4;
  v1[21] = v0;
  v1[18] = v5;
  v1[19] = v6;
  sub_1ABAA53DC();
  sub_1ABA839F8();
  v1[22] = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA95334();
  swift_getAssociatedTypeWitness();
  sub_1ABA7EDF8();
  v1[23] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[24] = AssociatedTypeWitness;
  sub_1ABA93630();
  v8 = sub_1ABF247E4();
  v1[25] = v8;
  sub_1ABA7BBD0(v8);
  v1[26] = v9;
  v1[27] = sub_1ABA7E314();
  v1[28] = *(AssociatedTypeWitness - 8);
  v1[29] = sub_1ABA7E314();
  sub_1ABAABCDC();
  v10 = swift_checkMetadataState();
  v1[30] = v10;
  sub_1ABA7BBD0(v10);
  v1[31] = v11;
  v1[32] = sub_1ABA96BDC();
  v1[33] = swift_task_alloc();
  sub_1ABA839F8();
  v1[34] = swift_getAssociatedTypeWitness();
  v1[35] = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v1[36] = v12;
  sub_1ABA7BBD0(v12);
  v1[37] = v13;
  v1[38] = sub_1ABA96BDC();
  v1[39] = swift_task_alloc();
  v14 = sub_1ABF21EB4();
  v1[40] = v14;
  sub_1ABA7BBD0(v14);
  v1[41] = v15;
  v1[42] = sub_1ABA7E314();
  v16 = sub_1ABF247E4();
  v1[43] = v16;
  sub_1ABA7BBD0(v16);
  v1[44] = v17;
  v18 = sub_1ABA7E314();
  v19 = *v3;
  v20 = v3[1];
  v1[45] = v18;
  v1[46] = v19;
  v1[47] = v20;
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8(&qword_1EB4CFFC0);
  }

  v1[48] = qword_1EB4CF2B8;
  sub_1ABA7FCF4();
  sub_1ABAB588C();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23, v24);
}

uint64_t sub_1ABD4348C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1ABA9644C();
  v27 = v26[45];
  sub_1ABA7F2A0(v26[21] + *(*v26[21] + 120), (v26 + 12));
  v28 = sub_1ABAA1A04();
  v29(v28);
  v30 = sub_1ABAB5704(v27);
  v31 = sub_1ABA7EDF8();
  v32(v31);
  if (v30 == 1)
  {
    sub_1ABD48EE8();
    sub_1ABA7D104();
    swift_allocError();
    swift_willThrow();
    sub_1ABA8C204();

    sub_1ABA7BBE0();
    sub_1ABAA3574();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }

  else
  {
    v42 = v26[21];
    v81 = v26[20];
    sub_1ABF24AB4();

    v44 = v42[2];
    v43 = v42[3];
    v45 = v42[4];
    v46 = v42[5];
    v82 = v42[6];
    v84 = v42[7];
    swift_bridgeObjectRetain_n();

    sub_1ABA958BC();
    MEMORY[0x1AC5A9410](v45, v46);
    sub_1ABA958BC();
    MEMORY[0x1AC5A9410](v44, v43);

    MEMORY[0x1AC5A9410](v82, v84);

    MEMORY[0x1AC5A9410](0x636972656E65673ALL, 0xED0000746E657645);
    sub_1ABD49388();
    swift_getAssociatedTypeWitness();
    v47 = sub_1ABAA1CE0();
    v51 = v81 + *(type metadata accessor for InferenceMessageRequest(v47, v48, v49, v50) + 28);
    v78 = *(v51 + 16);
    v77 = *(v51 + 24);
    if (qword_1ED86B788 != -1)
    {
      swift_once();
    }

    v52 = v26[42];
    v79 = v26[41];
    v80 = v26[40];
    sub_1ABA7F2A0(qword_1ED86E090, (v26 + 15));
    sub_1ABA93FC4(qword_1ED86E090, (v26 + 2));
    v53 = v26[5];
    v54 = v26[6];
    sub_1ABA93E20(v26 + 2, v53);
    v55 = *(v54 + 8);
    v56 = sub_1ABD48F3C();
    v57 = v55(&type metadata for InferenceServiceInstanceRunEvent, 0xD000000000000019, 0x80000001ABF8E590, &type metadata for InferenceServiceInstanceRunEvent, v56, v53, v54);
    v26[49] = v57;
    sub_1ABA84B54(v26 + 2);
    sub_1ABA93FC4(qword_1ED86E090, (v26 + 7));
    v58 = v26[11];
    sub_1ABA93E20(v26 + 7, v26[10]);
    sub_1ABF21E74();
    if (v77)
    {
      v59 = 0;
    }

    else
    {
      v59 = v78;
    }

    v60 = sub_1ABC3009C(v59);
    (*(v58 + 16))(&type metadata for InferenceServiceInstanceRunEvent, v52, v57, 0xD000000000000019, 0x80000001ABF8E590, v60, &type metadata for InferenceServiceInstanceRunEvent, v56);

    (*(v79 + 8))(v52, v80);
    sub_1ABA84B54(v26 + 7);
    if (swift_dynamicCastMetatype())
    {
      swift_task_alloc();
      sub_1ABA8E8BC();
      v26[54] = v61;
      *v61 = v62;
      v61[1] = sub_1ABD43E60;
    }

    else
    {
      sub_1ABF24AB4();

      v63 = v42[2];
      v64 = v42[3];
      v66 = v42[4];
      v65 = v42[5];
      v83 = v42[6];
      v85 = v42[7];

      swift_bridgeObjectRetain_n();
      sub_1ABA958BC();
      MEMORY[0x1AC5A9410](v66, v65);
      sub_1ABA958BC();
      MEMORY[0x1AC5A9410](v63, v64);

      MEMORY[0x1AC5A9410](v83, v85);

      MEMORY[0x1AC5A9410](0x456D6F747375633ALL, 0xEC000000746E6576);
      v26[50] = swift_getAssociatedConformanceWitness();
      static EventLogger.startInterval<A>(ofType:named:parent:)();
      v26[51] = v67;

      swift_task_alloc();
      sub_1ABA8E8BC();
      v26[52] = v68;
      *v68 = v69;
      v68[1] = sub_1ABD43A6C;
    }

    sub_1ABAA3574();

    return sub_1ABD443D8(v70, v71, v72, v73, v74, v75);
  }
}

uint64_t sub_1ABD43A6C()
{
  sub_1ABA7BC04();
  sub_1ABAA1140();
  sub_1ABA7D1C8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 424) = v0;

  sub_1ABD4937C();
  sub_1ABD49370();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD43B80()
{
  v2 = v0[27];
  (*(v0[23] + 40))(v0[30]);
  if (sub_1ABAB5704(v2) == 1)
  {
    (*(v0[26] + 8))(v0[27], v0[25]);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v3 = sub_1ABF237F4();
    sub_1ABA7AA24(v3, qword_1ED871B40);
    v4 = sub_1ABF237D4();
    v5 = sub_1ABF24674();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1ABA78000, v4, v5, "InferenceServiceInstance: runHelper: shouldLogCustomEvent but result.runEvent is nil", v6, 2u);
      MEMORY[0x1AC5AB8B0](v6, -1, -1);
    }
  }

  else
  {
    v8 = v0[28];
    v7 = v0[29];
    v9 = v0[24];
    (*(v8 + 32))(v7, v0[27], v9);
    sub_1ABAA6114();
    static EventLogger.endInterval<A>(with:_:)();
    (*(v8 + 8))(v7, v9);
  }

  v10 = sub_1ABA7E378();
  v11(v10);
  v12 = sub_1ABA7E378();
  v13(v12);
  v14 = sub_1ABA7EDF8();
  v15(v14);
  v16 = v0[51];
  v17 = v0[49];
  v19 = v0[38];
  v18 = v0[39];
  v20 = v0[36];
  sub_1ABA7AD74();
  v22 = v0[18];
  v21 = v0[19];
  (*(v23 + 32))(v19, v18, v20);
  sub_1ABD2D11C(v19, v16, v20, v22);
  *v21 = v26;
  *(v21 + 8) = v27;
  sub_1ABD44234(v17, v1);

  sub_1ABA80A84();

  return v24();
}

uint64_t sub_1ABD43E60()
{
  sub_1ABA7BC04();
  sub_1ABAA1140();
  sub_1ABA7D1C8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 440) = v0;

  sub_1ABD4937C();
  sub_1ABD49370();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD43F74()
{
  v2 = sub_1ABA7E378();
  v3(v2);
  v4 = sub_1ABA7E378();
  v5(v4);
  v6 = sub_1ABA7EDF8();
  v7(v6);
  v8 = v0[49];
  v10 = v0[38];
  v9 = v0[39];
  v11 = v0[36];
  sub_1ABA7AD74();
  v13 = v0[18];
  v12 = v0[19];
  (*(v14 + 32))(v10, v9, v11);
  sub_1ABD2D11C(v10, v8, v11, v13);
  *v12 = v17;
  *(v12 + 8) = v18;
  sub_1ABD44234(v8, v1);

  sub_1ABA80A84();

  return v15();
}

uint64_t sub_1ABD440EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABAA1574();
  sub_1ABA906D0();
  sub_1ABD44234(*(v10 + 392), *(v10 + 168));
  sub_1ABA8C204();

  sub_1ABA7BBE0();
  sub_1ABAB588C();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1ABD44190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABAA1574();
  sub_1ABA906D0();
  sub_1ABD44234(*(v10 + 392), *(v10 + 168));
  sub_1ABA8C204();

  sub_1ABA7BBE0();
  sub_1ABAB588C();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1ABD44234(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABF21EB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v19[0] = *(a2 + 16);
  v19[1] = v8;
  v20 = v9;
  v21 = v10;
  if (qword_1ED86B788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1ABA93FC4(qword_1ED86E090, v16);
  v11 = v17;
  v12 = v18;
  sub_1ABA93E20(v16, v17);
  sub_1ABF21E74();
  v13 = *(v12 + 24);
  v14 = sub_1ABD48F3C();
  v13(a1, v7, v19, &type metadata for InferenceServiceInstanceRunEvent, v14, v11, v12);
  (*(v5 + 8))(v7, v4);
  return sub_1ABA84B54(v16);
}

uint64_t sub_1ABD443D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6[102] = a6;
  v6[101] = a5;
  v6[100] = a4;
  v6[99] = a3;
  v6[93] = a2;
  v6[87] = a1;
  v7 = *a5;
  v6[103] = *(*a5 + 88);
  v6[104] = *(v7 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for InferenceMessageRequest(0, AssociatedTypeWitness, v9, v10);
  v6[105] = v11;
  v12 = *(v11 - 8);
  v6[106] = v12;
  v6[107] = *(v12 + 64);
  v6[108] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v6[109] = v13;
  v6[110] = *(v13 - 8);
  v6[111] = swift_task_alloc();
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  v6[112] = qword_1EB4CF2B8;

  return MEMORY[0x1EEE6DFA0](sub_1ABD44640);
}

uint64_t sub_1ABD44640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_1ABA8CFC8();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = v26[108];
  v30 = v26[106];
  v31 = v26[105];
  v44 = v26[104];
  v42 = v26[107];
  v43 = v26[103];
  v32 = v26[102];
  v33 = v26[101];
  v34 = v26[100];
  v35 = v26[93];
  a14 = v26[99];
  a15 = v34;
  type metadata accessor for InferenceServiceRunContext();
  swift_allocObject();

  v36 = sub_1ABD3EEB8(&a14, v35);
  v26[113] = v36;
  (*(v30 + 16))(v29, v32, v31);
  v37 = (*(v30 + 80) + 40) & ~*(v30 + 80);
  v38 = swift_allocObject();
  v26[114] = v38;
  *(v38 + 2) = v44;
  *(v38 + 3) = v43;
  *(v38 + 4) = v33;
  (*(v30 + 32))(&v38[v37], v29, v31);
  *&v38[(v42 + v37 + 7) & 0xFFFFFFFFFFFFFFF8] = v36;

  swift_asyncLet_begin();
  sub_1ABA8B690();

  return MEMORY[0x1EEE6DEC0](v39);
}

uint64_t sub_1ABD447EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15[115] = v14;
  if (v14)
  {
    return MEMORY[0x1EEE6DEB0](v15 + 2, v15[111], sub_1ABD44940, v15 + 88, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    return sub_1ABA7E8E8(a1, v15[112]);
  }
}

uint64_t sub_1ABD44828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA7BBF8();
  (*(v14[110] + 16))(v14[87], v14[111], v14[109]);
  sub_1ABD3E7FC(0);
  v19 = v14[111];

  return MEMORY[0x1EEE6DEB0](v14 + 2, v19, sub_1ABD448B8, v14 + 94, v15, v16, v17, v18, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1ABD448CC()
{
  sub_1ABA7BC04();
  sub_1ABA82AC8();

  sub_1ABA80A84();

  return v0();
}

uint64_t sub_1ABD44954()
{
  sub_1ABA7BC04();
  sub_1ABA82AC8();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABD449CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *a2;
  v4[9] = *(*a2 + 88);
  v4[10] = *(v5 + 80);
  v4[11] = swift_getAssociatedTypeWitness();
  v6 = sub_1ABF247E4();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ABD44AE8, 0, 0);
}

uint64_t sub_1ABD44AE8()
{
  sub_1ABA7BBF8();
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8(&qword_1EB4CFFC0);
  }

  v0 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1ABD44B64()
{
  sub_1ABA8C008();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[6];
  v5 = *(*v4 + 120);
  sub_1ABA7F2A0(v4 + v5, (v0 + 2));
  (*(v2 + 16))(v1, v4 + v5, v3);

  return MEMORY[0x1EEE6DFA0](sub_1ABD44C18, 0, 0);
}

uint64_t sub_1ABD44C18()
{
  sub_1ABA7BC04();
  result = sub_1ABA7E1E0(v0[14], 1, v0[11]);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v9 = (*(AssociatedConformanceWitness + 64) + **(AssociatedConformanceWitness + 64));
    swift_task_alloc();
    sub_1ABA8E8BC();
    v0[15] = v3;
    *v3 = v4;
    v3[1] = sub_1ABD44D6C;
    v5 = v0[11];
    v6 = v0[7];
    v7 = v0[8];
    v8 = v0[5];

    return v9(v8, v6, v7, v5, AssociatedConformanceWitness);
  }

  return result;
}

uint64_t sub_1ABD44D6C()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (!v0)
  {
    v7 = *(v3 + 112);
    sub_1ABA7D08C();
    (*(v8 + 8))(v7);

    sub_1ABA80A84();

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABD44EBC, 0, 0);
}

uint64_t sub_1ABD44EBC()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 112);
  sub_1ABA7D08C();
  (*(v2 + 8))(v1);

  sub_1ABA7BBE0();

  return v3();
}

void sub_1ABD44F48()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v3 = v2;
  sub_1ABAA53DC();
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 56);

  v5 = sub_1ABA954F0();
  if (v4(v5) == v3 && v6 == v1)
  {
  }

  else
  {
    v8 = sub_1ABF25054();

    if ((v8 & 1) == 0)
    {
      v9 = sub_1ABA954F0();
      v10 = v4(v9);
      v12 = v11;
      sub_1ABD48508();
      sub_1ABA7D104();
      swift_allocError();
      *v13 = v3;
      v13[1] = v1;
      v13[2] = v10;
      v13[3] = v12;
      swift_willThrow();
      goto LABEL_10;
    }
  }

LABEL_10:
  sub_1ABA7BC90();
}

void (*sub_1ABD450DC(uint64_t a1, __int128 *a2, void (*a3)(__int128 *)))(__int128 *)
{
  v5 = *(a2 + 2);
  v6 = *(v3 + 104);
  v8[2] = a1;
  v9 = *a2;
  v10 = v5;
  return sub_1ABEA58D4(a3, v8, v6);
}

uint64_t sub_1ABD4512C()
{
  sub_1ABA7BBF8();
  v3 = v2;
  *(v1 + 24) = v4;
  *(v1 + 32) = v0;
  *(v1 + 16) = v5;
  v6 = sub_1ABF21F04();
  *(v1 + 40) = v6;
  sub_1ABA7BBD0(v6);
  *(v1 + 48) = v7;
  *(v1 + 56) = sub_1ABA7E314();
  *(v1 + 64) = *v3;
  *(v1 + 80) = *(v3 + 16);
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8(&qword_1EB4CFFC0);
  }

  *(v1 + 88) = qword_1EB4CF2B8;
  v8 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v8);
}

uint64_t sub_1ABD45214(uint64_t a1)
{
  v11 = v1;
  v2 = *(v1 + 80);
  v7 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *(v1 + 16);
  sub_1ABF21EF4();
  v9 = v7;
  v10 = v2;
  sub_1ABD450AC(v3, &v9);
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v1 + 96) = v5;
  *v5 = v1;
  v5[1] = sub_1ABD45344;

  return v8();
}

uint64_t sub_1ABD45344()
{
  sub_1ABA7BC04();
  sub_1ABAA1140();
  sub_1ABA7D1C8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v0;

  sub_1ABD4937C();
  sub_1ABD49370();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD45458()
{
  sub_1ABA906D0();
  v9 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = v1;
  sub_1ABD450C4(v2, &v7);
  v3 = sub_1ABA7E378();
  v4(v3);

  sub_1ABA80A84();

  return v5();
}

uint64_t sub_1ABD454F8()
{
  sub_1ABA7BBF8();
  (*(v0[6] + 8))(v0[7], v0[5]);

  sub_1ABA7BBE0();

  return v1();
}

void sub_1ABD45570()
{
  sub_1ABA7BCA8();
  v16 = v2;
  v3 = sub_1ABF21F04();
  sub_1ABA7BB64();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABF21EF4();
  v9 = sub_1ABA90D28();
  v15 = v0;
  v11 = sub_1ABD450AC(v9, v10);
  v16(v11);
  if (!v1)
  {
    v12 = sub_1ABA90D28();
    sub_1ABD450C4(v12, v13);
  }

  (*(v5 + 8))(v8, v3);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABD45684()
{
  sub_1ABA7BBF8();
  v1[7] = v2;
  v1[8] = v0;
  v4 = v3[1];
  v1[9] = *v3;
  v1[10] = v4;
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8(&qword_1EB4CFFC0);
  }

  v1[11] = qword_1EB4CF2B8;
  v5 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t sub_1ABD45710()
{
  sub_1ABA8C008();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1ABD422D8(v0 + 40);
  v5 = 256;
  if (!*(v0 + 49))
  {
    v5 = 0;
  }

  v6 = v5 | *(v0 + 48);
  *(v0 + 16) = *(v0 + 40);
  *(v0 + 24) = v6;
  *(v0 + 32) = v4;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v2;
  v7[5] = v1;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_1ABD45818;

  return sub_1ABD4512C();
}

uint64_t sub_1ABD45818()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {

    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v7 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1ABD45934()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABD45990(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *a1;
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  v4[10] = qword_1EB4CF2B8;

  return MEMORY[0x1EEE6DFA0](sub_1ABD45A58);
}

uint64_t sub_1ABD45A58()
{
  sub_1ABA7BBF8();
  v0[4] = v0[5];
  v1 = v0[6];
  v3 = type metadata accessor for InferenceServiceInstance(0, *(v0[9] + 80), *(v0[9] + 88), v2);
  if (sub_1ABD4BF70(v3, &off_1F20807E0))
  {
    if ((v1 & 1) == 0)
    {
      sub_1ABD46BA4();
    }
  }

  else if (v1)
  {
    v4 = v0[8];
    v0[2] = v0[7];
    v0[3] = v4;
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_1ABD45B64;

    return sub_1ABD45C9C();
  }

  sub_1ABA80A84();

  return v7();
}

uint64_t sub_1ABD45B64()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v7 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1ABD45C9C()
{
  sub_1ABA8C008();
  v3 = v2;
  v1[5] = v0;
  v4 = *v0;
  sub_1ABAD219C(&qword_1EB4D1AC0, &qword_1ABF33C50);
  v1[6] = sub_1ABA7E314();
  v1[7] = *(v4 + 88);
  v1[8] = *(v4 + 80);
  sub_1ABD49388();
  swift_getAssociatedTypeWitness();
  sub_1ABA7E378();
  swift_getAssociatedConformanceWitness();
  v5 = sub_1ABA93630();
  v9 = type metadata accessor for InferenceServiceConfig(v5, v6, v7, v8);
  v1[9] = v9;
  sub_1ABA7BBD0(v9);
  v1[10] = v10;
  v1[11] = *(v11 + 64);
  v1[12] = sub_1ABA96BDC();
  v1[13] = swift_task_alloc();
  sub_1ABD49388();
  v1[14] = swift_getAssociatedTypeWitness();
  v12 = sub_1ABF247E4();
  v1[15] = v12;
  sub_1ABA7BBD0(v12);
  v1[16] = v13;
  v14 = sub_1ABA7E314();
  v15 = *v3;
  v16 = v3[1];
  v1[17] = v14;
  v1[18] = v15;
  v1[19] = v16;
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8(&qword_1EB4CFFC0);
  }

  v1[20] = qword_1EB4CF2B8;
  v17 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v17);
}

uint64_t sub_1ABD45EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a11, uint64_t a9, uint64_t a10, int8x16_t a12, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t _80, uint64_t a26)
{
  sub_1ABA9644C();
  v27 = *(v26 + 136);
  sub_1ABA7F2A0(*(v26 + 40) + *(**(v26 + 40) + 120), v26 + 16);
  v28 = sub_1ABAA1A04();
  v29(v28);
  v30 = sub_1ABAB5704(v27);
  v31 = sub_1ABA7EDF8();
  v32(v31);
  if (v30 == 1)
  {
    v33 = *(v26 + 40);
    sub_1ABA93E20(v33 + 8, v33[11]);
    a18 = v33[2];
    a19 = v33[3];
    a20 = v33[4];
    a21 = v33[5];
    a22 = v33[6];
    a23 = v33[7];

    sub_1ABD38BC0();
    v34 = *(v26 + 40);

    v35 = *(*v34 + 128);
    *(v26 + 168) = v35;
    v36 = *(v35 + v34);
    if (v36 || (v37 = *(v26 + 160), a15 = *(v26 + 144), a16 = *(v26 + 152), v39 = *(v26 + 96), v38 = *(v26 + 104), v40 = *(v26 + 80), v41 = *(v26 + 72), a9 = v41, a10 = v39, a17 = *(v26 + 48), a14 = *(v26 + 40), sub_1ABF24294(), a12 = *(v26 + 56), sub_1ABA7ED8C(), sub_1ABA7B9B4(v42, v43, v44, v45), v46 = (*(v40 + 16))(v39, v38, v41), v48 = sub_1ABD37048(v46, v47), v49 = (*(v40 + 80) + 72) & ~*(v40 + 80), v50 = swift_allocObject(), v50[1].i64[0] = v37, v50[1].i64[1] = v48, v50[2] = vextq_s8(a12, a12, 8uLL), v50[3].i64[0] = a15, v50[3].i64[1] = a16, v50[4].i64[0] = a14, (*(v40 + 32))(&v50->i8[v49], a10, v41), , , , , *(v35 + v34) = sub_1ABD403AC(0, 0, a17, &unk_1ABF5D798, v50), , (v36 = *(v35 + v34)) != 0))
    {
      *(v26 + 176) = v36;

      v51 = swift_task_alloc();
      *(v26 + 184) = v51;
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      *v51 = v26;
      v51[1] = sub_1ABD46290;
      sub_1ABAA3574();

      return MEMORY[0x1EEE6DA10](v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a12.i64[0], a12.i64[1], a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, _80, a26);
    }

    v60 = sub_1ABA97870();
    v61(v60);
    *v35 = 0;
  }

  sub_1ABA80A84();
  sub_1ABAA3574();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a12.i64[0], a12.i64[1], a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, _80, a26);
}

uint64_t sub_1ABD46290()
{
  sub_1ABA7BC04();
  v2 = *v1;
  sub_1ABA7D1C8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 192) = v0;

  v5 = *(v2 + 160);

  if (v0)
  {
    v6 = sub_1ABD46468;
  }

  else
  {
    v6 = sub_1ABD463CC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1ABD463CC()
{
  sub_1ABA7BC04();
  v2 = sub_1ABA97870();
  v3(v2);
  *(v0 + v1) = 0;

  sub_1ABA80A84();

  return v4();
}

uint64_t sub_1ABD46468()
{
  sub_1ABA7BC04();
  (*(v0[10] + 8))(v0[13], v0[9]);

  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABD46504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = *a6;
  v7[9] = *(*a6 + 88);
  v7[10] = *(v8 + 80);
  v7[11] = swift_getAssociatedTypeWitness();
  v9 = sub_1ABF247E4();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  v7[16] = qword_1EB4CF2B8;

  return MEMORY[0x1EEE6DFA0](sub_1ABD46660);
}

uint64_t sub_1ABD46660()
{
  sub_1ABA906D0();
  v12 = v0;
  v1 = v0[6];
  v10 = v0[9];
  v11[0] = v0[5];
  v11[1] = v1;
  type metadata accessor for InferenceServiceInitContext();
  swift_allocObject();

  v3 = sub_1ABD3EE24(v11, v2);
  v0[17] = v3;
  v9 = (*(v10 + 64) + **(v10 + 64));
  swift_task_alloc();
  sub_1ABA8E8BC();
  v0[18] = v4;
  *v4 = v5;
  v4[1] = sub_1ABD467C4;
  v6 = v0[15];
  v7 = v0[8];

  return v9(v6, v7, v3);
}

uint64_t sub_1ABD467C4()
{
  sub_1ABA7BC04();
  sub_1ABAA1140();
  sub_1ABA7D1C8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  sub_1ABD4937C();
  sub_1ABD49370();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD468D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABAA1574();
  sub_1ABA906D0();
  v11 = v10[14];
  v12 = v10[15];
  v13 = v10[12];
  v14 = v10[13];
  v15 = v10[11];
  v16 = v10[7];
  sub_1ABA7B9B4(v12, 0, 1, v15);
  v17 = *(*v16 + 120);
  swift_beginAccess();
  (*(v14 + 40))(v16 + v17, v12, v13);
  swift_endAccess();
  sub_1ABD3E7FC(0);
  (*(v14 + 16))(v11, v16 + v17, v13);
  if (sub_1ABA7E1E0(v11, 1, v15))
  {

    v18 = sub_1ABA8CD18();
    v19(v18);
  }

  else
  {
    v20 = v10[11];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v22 = (*(AssociatedConformanceWitness + 40))(v20, AssociatedConformanceWitness);

    v24 = v10[13];
    v23 = v10[14];
    v25 = v10[12];
    if (v22)
    {
      v26 = v10[7];
      (*(v24 + 8))(v23, v25);
      *(v22 + 32) = sub_1ABD48E04;
      *(v22 + 40) = v26;
    }

    else
    {
      (*(v24 + 8))(v23, v25);
    }
  }

  sub_1ABA80A84();
  sub_1ABAB588C();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_1ABD46ACC()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABD46BA4()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1ABF247E4();
  sub_1ABA7BB64();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-v10];
  v12 = *(v1 + 120);
  sub_1ABA7F2A0(&v0[v12], v18);
  (*(v5 + 16))(v11, &v0[v12], v3);
  LODWORD(v1) = sub_1ABAB5704(v11);
  result = (*(v5 + 8))(v11, v3);
  if (v1 != 1)
  {
    sub_1ABA7ED8C();
    sub_1ABA7B9B4(v14, v15, v16, AssociatedTypeWitness);
    swift_beginAccess();
    (*(v5 + 40))(&v0[v12], v8, v3);
    return swift_endAccess();
  }

  return result;
}

char *sub_1ABD46D70()
{

  sub_1ABA84B54(v0 + 8);

  v1 = *(*v0 + 120);
  swift_getAssociatedTypeWitness();
  sub_1ABAA1CE0();
  sub_1ABF247E4();
  sub_1ABA7D08C();
  (*(v2 + 8))(&v0[v1]);

  return v0;
}

uint64_t sub_1ABD46E70()
{
  sub_1ABD46D70();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABD46EEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1ABAB2788;

  return sub_1ABD45684();
}

uint64_t sub_1ABD46FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_1ABAB2788;

  return sub_1ABD426C8(a1, a2, v14, a4, a5, a6, a7, a8 & 1);
}

uint64_t sub_1ABD470B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1ABA8CFC8();
  v68 = v27;
  *(v26 + 240) = a25;
  *(v26 + 248) = v25;
  *(v26 + 224) = a23;
  *(v26 + 232) = a24;
  *(v26 + 208) = a21;
  *(v26 + 216) = a22;
  *(v26 + 192) = a19;
  *(v26 + 200) = a20;
  *(v26 + 184) = a18;
  *(v26 + 168) = a17;
  *(v26 + 440) = v28;
  *(v26 + 152) = v29;
  *(v26 + 160) = v30;
  *(v26 + 136) = v31;
  *(v26 + 144) = v32;
  *(v26 + 120) = v33;
  *(v26 + 128) = v34;
  sub_1ABAA53DC();
  *(v26 + 256) = *(v35 + 88);
  *(v26 + 264) = *(v36 + 80);
  swift_getAssociatedTypeWitness();
  sub_1ABA97C10();
  swift_getAssociatedConformanceWitness();
  sub_1ABA9020C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v26 + 272) = type metadata accessor for InferenceMessageResponse(255, AssociatedTypeWitness, v38, v39);
  *(v26 + 280) = swift_getTupleTypeMetadata2();
  sub_1ABA7BB64();
  *(v26 + 288) = v40;
  *(v26 + 296) = sub_1ABA7E314();
  sub_1ABA9020C();
  v41 = swift_getAssociatedTypeWitness();
  sub_1ABA7D2D8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v26 + 16) = AssociatedTypeWitness;
  *(v26 + 24) = v41;
  *(v26 + 32) = a20;
  *(v26 + 40) = a21;
  *(v26 + 48) = AssociatedConformanceWitness;
  *(v26 + 56) = a22;
  *(v26 + 64) = a23;
  *(v26 + 72) = a24;
  *(v26 + 80) = a25;
  v43 = type metadata accessor for InferenceMessageRemoteServerResponse(0, v26 + 16);
  *(v26 + 304) = v43;
  sub_1ABA7BBD0(v43);
  *(v26 + 312) = v44;
  *(v26 + 320) = sub_1ABA7E314();
  v45 = sub_1ABA95334();
  *(v26 + 328) = type metadata accessor for InferenceMessageResponseError(v45, v46, AssociatedConformanceWitness, v47);
  sub_1ABA7C454();
  swift_getWitnessTable();
  sub_1ABAABCDC();
  v48 = sub_1ABF252B4();
  *(v26 + 336) = v48;
  sub_1ABA7BBD0(v48);
  *(v26 + 344) = v49;
  *(v26 + 352) = sub_1ABA96BDC();
  *(v26 + 360) = swift_task_alloc();
  *(v26 + 368) = swift_task_alloc();
  sub_1ABA9020C();
  swift_getAssociatedTypeWitness();
  v50 = sub_1ABAA1CE0();
  v54 = type metadata accessor for InferenceMessageRequest(v50, v51, v52, v53);
  *(v26 + 376) = v54;
  sub_1ABA7BBD0(v54);
  *(v26 + 384) = v55;
  v56 = sub_1ABA7E314();
  v57 = *v68;
  v58 = v68[1];
  *(v26 + 392) = v56;
  *(v26 + 400) = v57;
  *(v26 + 408) = v58;
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8(&qword_1EB4CFFC0);
  }

  *(v26 + 416) = qword_1EB4CF2B8;
  sub_1ABA7FCF4();
  sub_1ABA8B690();

  return MEMORY[0x1EEE6DFA0](v59, v60, v61, v62, v63, v64, v65, v66);
}

uint64_t sub_1ABD4743C()
{
  sub_1ABD44F48();
  v17 = *(v0 + 256);
  v18 = *(v0 + 264);
  v1 = *(v0 + 240);
  v14 = *(v0 + 208);
  v15 = *(v0 + 224);
  v2 = *(v0 + 192);
  v16 = *(v0 + 200);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v19 = objc_autoreleasePoolPush();
  sub_1ABD47ACC(v4, v6, v5, v18, v17, v3, v2, v16, v14, *(&v14 + 1), v15, *(&v15 + 1), v1, (v0 + 104));
  *(v0 + 424) = 0;
  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  objc_autoreleasePoolPop(v19);
  *(v0 + 88) = v8;
  *(v0 + 96) = v7;
  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v0 + 432) = v9;
  *v9 = v10;
  v9[1] = sub_1ABD47640;
  v11 = *(v0 + 392);
  v12 = *(v0 + 368);

  return sub_1ABD47BFC(v12, v11, (v0 + 88));
}

uint64_t sub_1ABD47640()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v2 = *(v1 + 416);
  v3 = *v0;
  sub_1ABA7BBC0();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1ABD47740, v2, 0);
}

uint64_t sub_1ABD47ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for InferenceMessageRequest(0, AssociatedTypeWitness, v15, v16);
  swift_getWitnessTable();
  result = sub_1ABF217D4();
  if (v18)
  {
    *a14 = v18;
  }

  return result;
}

uint64_t sub_1ABD47BFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3[4] = a1;
  v4 = *a3;
  v5 = a3[1];
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  v3[5] = qword_1EB4CF2B8;
  v3[6] = swift_getAssociatedTypeWitness();
  v3[7] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for InferenceMessageResponse(255, AssociatedTypeWitness, v7, v8);
  v3[8] = swift_getTupleTypeMetadata2();
  v3[2] = v4;
  v3[3] = v5;
  v9 = swift_task_alloc();
  v3[9] = v9;
  *v9 = v3;
  v9[1] = sub_1ABD47DE8;

  return sub_1ABD430EC();
}

uint64_t sub_1ABD47DE8()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 80) = v0;

  v7 = *(v3 + 40);
  if (v0)
  {
    v8 = sub_1ABD47FC4;
  }

  else
  {
    v8 = sub_1ABD47EE8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1ABD47EE8()
{
  sub_1ABA8C008();
  sub_1ABA9020C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = sub_1ABA7D2D8();
  v6 = sub_1ABAA1358(v1, v2, v3, v4, v5);
  type metadata accessor for InferenceMessageResponseError(255, AssociatedTypeWitness, v6, v7);
  sub_1ABA7C454();
  swift_getWitnessTable();
  sub_1ABA93630();
  sub_1ABF252B4();
  swift_storeEnumTagMultiPayload();
  sub_1ABA7BBE0();

  return v8();
}

uint64_t sub_1ABD47FC4()
{
  sub_1ABA8C008();
  v1 = *(v0 + 80);
  swift_checkMetadataState();
  v2 = sub_1ABA8E7C4();
  sub_1ABD2836C(v2, v3);

  sub_1ABD49388();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1ABA8E7C4();
  v10 = sub_1ABAA1358(v5, v6, v7, v8, v9);
  type metadata accessor for InferenceMessageResponseError(255, AssociatedTypeWitness, v10, v11);
  sub_1ABA7C454();
  swift_getWitnessTable();
  sub_1ABA93630();
  sub_1ABF252B4();
  swift_storeEnumTagMultiPayload();
  sub_1ABA7BBE0();

  return v12();
}

uint64_t sub_1ABD480D4@<X0>(uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t *a6@<X8>, __int128 a7, uint64_t a8, uint64_t a9, void *a10)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16[0] = swift_getAssociatedTypeWitness();
  v16[1] = swift_getAssociatedTypeWitness();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = swift_getAssociatedConformanceWitness();
  v17 = a7;
  v18 = a8;
  v19 = a9;
  type metadata accessor for InferenceMessageRemoteServerResponse(0, v16);
  swift_getWitnessTable();
  v12 = v20;
  result = sub_1ABF21834();
  if (v12)
  {
    *a10 = v12;
  }

  else
  {
    *a6 = result;
    a6[1] = v14;
  }

  return result;
}

uint64_t sub_1ABD4825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v26 = v25;
  v27 = *(a12 - 48);
  v28 = *(a12 - 40);
  v29 = *(a12 - 64);
  v30 = *(a12 - 56);
  v31 = swift_task_alloc();
  *(v26 + 16) = v31;
  *v31 = v26;
  v31[1] = sub_1ABA7FDA0;

  return sub_1ABD470B0(a1, a2, a3, a4, a5, a6, a7 & 1, a8, v28, v27, v30, v29, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

unint64_t sub_1ABD4838C()
{
  result = qword_1EB4CEB80;
  if (!qword_1EB4CEB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEB80);
  }

  return result;
}

unint64_t sub_1ABD483E0()
{
  result = qword_1EB4CEA30;
  if (!qword_1EB4CEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA30);
  }

  return result;
}

unint64_t sub_1ABD48434()
{
  result = qword_1EB4D8E10;
  if (!qword_1EB4D8E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8E10);
  }

  return result;
}

unint64_t sub_1ABD4848C()
{
  result = qword_1ED86E878;
  if (!qword_1ED86E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86E878);
  }

  return result;
}

unint64_t sub_1ABD484E0(uint64_t a1)
{
  result = sub_1ABD48508();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABD48508()
{
  result = qword_1EB4D8E18;
  if (!qword_1EB4D8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8E18);
  }

  return result;
}

unint64_t sub_1ABD4855C(uint64_t a1)
{
  *(a1 + 8) = sub_1ABD4858C();
  result = sub_1ABD485E0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD4858C()
{
  result = qword_1EB4CEB60;
  if (!qword_1EB4CEB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEB60);
  }

  return result;
}

unint64_t sub_1ABD485E0()
{
  result = qword_1EB4CEB68;
  if (!qword_1EB4CEB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEB68);
  }

  return result;
}

uint64_t sub_1ABD4864C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_1ABF247E4();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InferenceServiceInstanceQualifiedID.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1ABD48850()
{
  result = qword_1EB4D8E20;
  if (!qword_1EB4D8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8E20);
  }

  return result;
}

unint64_t sub_1ABD488A8()
{
  result = qword_1EB4D8E28;
  if (!qword_1EB4D8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8E28);
  }

  return result;
}

unint64_t sub_1ABD48900()
{
  result = qword_1EB4D8E30;
  if (!qword_1EB4D8E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8E30);
  }

  return result;
}

unint64_t sub_1ABD48958()
{
  result = qword_1EB4D8E38;
  if (!qword_1EB4D8E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8E38);
  }

  return result;
}

unint64_t sub_1ABD489B0()
{
  result = qword_1EB4CEB70;
  if (!qword_1EB4CEB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEB70);
  }

  return result;
}

unint64_t sub_1ABD48A08()
{
  result = qword_1EB4CEB78;
  if (!qword_1EB4CEB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEB78);
  }

  return result;
}

unint64_t sub_1ABD48A60()
{
  result = qword_1EB4D8E40;
  if (!qword_1EB4D8E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8E40);
  }

  return result;
}

unint64_t sub_1ABD48AB8()
{
  result = qword_1EB4D8E48;
  if (!qword_1EB4D8E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8E48);
  }

  return result;
}

unint64_t sub_1ABD48B10()
{
  result = qword_1EB4D8E50;
  if (!qword_1EB4D8E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8E50);
  }

  return result;
}

unint64_t sub_1ABD48B68()
{
  result = qword_1EB4D8E58;
  if (!qword_1EB4D8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8E58);
  }

  return result;
}

unint64_t sub_1ABD48BC0()
{
  result = qword_1EB4CEA38;
  if (!qword_1EB4CEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA38);
  }

  return result;
}

unint64_t sub_1ABD48C18()
{
  result = qword_1EB4CEA40;
  if (!qword_1EB4CEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA40);
  }

  return result;
}

uint64_t sub_1ABD48C6C()
{
  sub_1ABAA1574();
  sub_1ABA906D0();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_1ABD49394();
  sub_1ABAA1358(v3, v2, v4, v5, &associated conformance descriptor for InferenceServiceDefinition.InferenceServiceDefinition.ConfigParameters: InferenceServiceConfigParameters);
  v6 = sub_1ABAABCDC();
  type metadata accessor for InferenceServiceConfig(v6, v7, v8, v9);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1ABA7FDA0;
  sub_1ABA839F8();
  sub_1ABAB588C();

  return sub_1ABD46504(v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1ABD48D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1AC0, &qword_1ABF33C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABD48E0C()
{
  sub_1ABA7BC04();
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1ABAB2788;
  sub_1ABAA6114();

  return sub_1ABD45990(v4, v5, v6, v2);
}

unint64_t sub_1ABD48EE8()
{
  result = qword_1EB4D8E60[0];
  if (!qword_1EB4D8E60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D8E60);
  }

  return result;
}

unint64_t sub_1ABD48F3C()
{
  result = qword_1EB4CEB58;
  if (!qword_1EB4CEB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEB58);
  }

  return result;
}

uint64_t sub_1ABD48F90()
{
  sub_1ABA8C008();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  sub_1ABD49394();
  sub_1ABAA1358(v6, v5, v7, v8, &associated conformance descriptor for InferenceServiceDefinition.InferenceServiceDefinition.Interface: InferenceInterface);
  swift_getAssociatedTypeWitness();
  v9 = sub_1ABAA1CE0();
  v13 = type metadata accessor for InferenceMessageRequest(v9, v10, v11, v12);
  sub_1ABA7BBD0(v13);
  v15 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v17 = v0[4];
  v18 = *(v0 + ((*(v16 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = swift_task_alloc();
  *(v2 + 16) = v19;
  *v19 = v2;
  v19[1] = sub_1ABAB2788;

  return sub_1ABD449CC(v4, v17, v0 + v15, v18);
}

_BYTE *sub_1ABD4910C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABD491D8(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABD49280(uint64_t a1)
{
  result = sub_1ABD48EE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABD492AC()
{
  result = qword_1EB4D8EE8;
  if (!qword_1EB4D8EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8EE8);
  }

  return result;
}

uint64_t sub_1ABD49300(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABD49394()
{

  return swift_getAssociatedTypeWitness();
}

double sub_1ABD493B4@<D0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  sub_1ABD40114(a1, a2);
  sub_1ABA8F61C();
  sub_1ABAE3048();

  if (v8)
  {
    sub_1ABA946C0(&v7, v9);
    sub_1ABA93E20(v9, v9[3]);
    sub_1ABA7DADC();
    sub_1ABD4221C(v4, v5);
    sub_1ABA84B54(v9);
  }

  else
  {
    sub_1ABA925A4(&v7, qword_1EB4D8EF8, qword_1ABF5D9B8);
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1ABD4947C@<D0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  sub_1ABD40020(a1, a2);
  sub_1ABA8F61C();
  sub_1ABAE3048();

  if (v8)
  {
    sub_1ABA946C0(&v7, v9);
    sub_1ABA93E20(v9, v9[3]);
    sub_1ABA7DADC();
    sub_1ABD41F2C(v4, v5);
    sub_1ABA84B54(v9);
  }

  else
  {
    sub_1ABA925A4(&v7, &qword_1EB4D8EF0, &qword_1ABF5D9B0);
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1ABD49570(uint64_t a1)
{
  result = sub_1ABD374EC();
  *(a1 + 8) = result;
  return result;
}

void InferenceServiceInstanceClient.unsafeSyncRun(with:parentEventId:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v69 = a4;
  v65 = a3;
  v63 = a2;
  v58 = a1;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for InferenceOutput(255, AssociatedTypeWitness, v9, v10);
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v60 = sub_1ABF252B4();
  v64 = sub_1ABF247E4();
  sub_1ABA7BB64();
  v61 = v11;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v53 - v13;
  sub_1ABA7BD7C();
  v68 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v53 - v18;
  v19 = v7;
  v20 = swift_getAssociatedTypeWitness();
  v54 = v20;
  sub_1ABA7BD7C();
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA8176C();
  v55 = v5;
  sub_1ABAD219C(&qword_1EB4D1AC0, &qword_1ABF33C50);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v53 - v27;
  v57 = &v53 - v27;
  v56 = dispatch_semaphore_create(0);
  type metadata accessor for InferenceServiceInstanceClient._UnsafeOutputClass(0, v6, v19, v29);
  v30 = sub_1ABD4A528();
  v31 = sub_1ABF24294();
  sub_1ABA7B9B4(v28, 1, 1, v31);
  (*(v22 + 16))(v5, v58, v20);
  v32 = (*(v22 + 80) + 64) & ~*(v22 + 80);
  v33 = v32 + v24;
  v34 = (v32 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v6;
  v36[5] = v19;
  v37 = v55;
  v38 = v56;
  v40 = v61;
  v39 = v62;
  v36[6] = v56;
  v36[7] = v39;
  v41 = v36 + v32;
  v42 = v59;
  (*(v22 + 32))(v41, v37, v54);
  v43 = v36 + v34;
  v44 = v60;
  *v43 = v63;
  v43[8] = v65 & 1;
  *(v36 + v35) = v30;
  v45 = v38;

  sub_1ABD4AC88(0, 0, v57, &unk_1ABF5DB38, v36);

  sub_1ABF24734();
  v46 = *(*v30 + 96);
  swift_beginAccess();
  v47 = v30 + v46;
  v48 = v64;
  (*(v40 + 16))(v42, v47, v64);
  v49 = v42;
  if (sub_1ABA7E1E0(v42, 1, v44) == 1)
  {
    (*(v40 + 8))(v42, v48);
    sub_1ABF24CD4();
    __break(1u);
  }

  else
  {
    v51 = v67;
    v50 = v68;
    (*(v68 + 32))(v67, v49, v44);
    (*(v50 + 16))(v66, v51, v44);
    v52 = v70;
    sub_1ABD49B3C(v44, &v71, v69);
    if (v52)
    {
      (*(v50 + 8))(v51, v44);
    }

    else
    {
      (*(v50 + 8))(v51, v44);
    }
  }
}

uint64_t sub_1ABD49B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(a1 + 24);
    sub_1ABA7D08C();
    (*(v8 + 32))(a2, v3, v7);
    return swift_willThrowTypedImpl();
  }

  else
  {
    sub_1ABA7D08C();
    return (*(v10 + 32))(a3, v3);
  }
}

uint64_t sub_1ABD49C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1ABA7D08C();
  (*(v6 + 16))(a3, a1, a2);
  v9 = *(a1 + *(type metadata accessor for InferenceMessageResponse(0, a2, v7, v8) + 28));
  sub_1ABA7D08C();
  (*(v10 + 8))(a1);
  result = type metadata accessor for InferenceOutput(0, a2, v11, v12);
  *(a3 + *(result + 28)) = v9;
  return result;
}

uint64_t InferenceServiceInstanceClient.instanceQualifiedId.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_1ABA93E20(v0 + 2, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t InferenceServiceInstanceClient.run(with:parentEventId:)()
{
  sub_1ABA7BC04();
  *(v1 + 144) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = *v0;
  *(v1 + 48) = *(*v0 + 88);
  *(v1 + 56) = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v1 + 64) = AssociatedTypeWitness;
  sub_1ABA7BB64();
  *(v1 + 72) = v8;
  *(v1 + 80) = swift_task_alloc();
  v11 = type metadata accessor for InferenceMessageRequest(0, AssociatedTypeWitness, v9, v10);
  *(v1 + 88) = v11;
  *(v1 + 96) = *(v11 - 8);
  *(v1 + 104) = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  *(v1 + 112) = v12;
  type metadata accessor for InferenceMessageResponse(0, v12, v13, v14);
  *(v1 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ABD49EDC, 0, 0);
}

uint64_t sub_1ABD49EDC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v16 = *(v0 + 48);
  v7 = *(v0 + 144);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = v6[6];
  v18 = v6[5];
  sub_1ABA93E20(v6 + 2, v18);
  (*(v2 + 16))(v3, v8, v4);
  sub_1ABD2B514(v3, v9, v7 & 1, v4, v5, v16, v1);
  v17 = (*(v10 + 32) + **(v10 + 32));
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  *v11 = v0;
  v11[1] = sub_1ABD4A084;
  v12 = *(v0 + 120);
  v13 = *(v0 + 104);
  v14 = *(v0 + 56);

  return v17(v12, v13, v14, v18, v10);
}

uint64_t sub_1ABD4A084()
{
  sub_1ABA7BC04();
  sub_1ABA7BC10();
  v3 = v2[13];
  v4 = v2[12];
  v5 = v2[11];
  v6 = *v1;
  sub_1ABA7BBC0();
  *v7 = v6;
  *(v8 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_1ABD4A270;
  }

  else
  {
    v9 = sub_1ABD4A1E4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1ABD4A1E4()
{
  sub_1ABA7BC04();
  sub_1ABD49C04(v0[15], v0[14], v0[2]);

  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABD4A270()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

void InferenceServiceInstanceClient.provide(feedback:for:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for FeedbackService()) init];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  FeedbackService.record<A>(feedback:for:)(a1, a2, 0, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1ABD4A3DC()
{
  v1 = *(*v0 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for InferenceOutput(255, AssociatedTypeWitness, v3, v4);
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  sub_1ABF252B4();
  v5 = sub_1ABF247E4();
  (*(*(v5 - 8) + 8))(v0 + v1, v5);
  return v0;
}

uint64_t sub_1ABD4A4D4()
{
  sub_1ABD4A3DC();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABD4A55C()
{
  v1 = *(*v0 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for InferenceOutput(255, AssociatedTypeWitness, v3, v4);
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v5 = sub_1ABF252B4();
  sub_1ABA7B9B4(v0 + v1, 1, 1, v5);
  return v0;
}

uint64_t sub_1ABD4A62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[9] = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for InferenceOutput(255, AssociatedTypeWitness, v6, v7);
  v4[10] = v8;
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v4[11] = sub_1ABF252B4();
  v9 = sub_1ABF247E4();
  v4[12] = v9;
  v4[13] = *(v9 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = *(v8 - 8);
  v4[16] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[17] = v10;
  *v10 = v4;
  v10[1] = sub_1ABD4A838;

  return InferenceServiceInstanceClient.run(with:parentEventId:)();
}

uint64_t sub_1ABD4A838()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v2 = *v1;
  sub_1ABA7BBC0();
  *v3 = v2;
  *(v4 + 144) = v0;

  if (v0)
  {
    v5 = sub_1ABD4AA30;
  }

  else
  {
    v5 = sub_1ABD4A93C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1ABD4A93C()
{
  (*(v0[15] + 32))(v0[14], v0[16], v0[10]);
  swift_storeEnumTagMultiPayload();
  sub_1ABA90934();
  swift_beginAccess();
  v1 = sub_1ABA994B0();
  v2(v1);
  swift_endAccess();
  sub_1ABF24744();

  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABD4AA30()
{
  **(v0 + 112) = *(v0 + 144);
  swift_storeEnumTagMultiPayload();
  sub_1ABA90934();
  swift_beginAccess();
  v1 = sub_1ABA994B0();
  v2(v1);
  swift_endAccess();
  sub_1ABF24744();

  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABD4AB14(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[6];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1ABA7FDA0;

  return sub_1ABD4A62C(a1, v3, v4, v5);
}

uint64_t sub_1ABD4AC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1ABAD219C(&qword_1EB4D1AC0, &qword_1ABF33C50);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  sub_1ABD48D94(a3, v25 - v10);
  v12 = sub_1ABF24294();
  v13 = sub_1ABA7E1E0(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1ABA7E208(v11);
  }

  else
  {
    sub_1ABF24284();
    sub_1ABA7D08C();
    (*(v14 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1ABF24244();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1ABF23CA4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1ABA7E208(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1ABA7E208(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t InferenceServiceInstanceClient.__deallocating_deinit()
{
  sub_1ABA84B54((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1ABD4AFBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD4B010(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t InferenceOutput<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InferenceOutput.CodingKeys(255, *(a2 + 16), a3, a4);
  sub_1ABA80D90();
  swift_getWitnessTable();
  v6 = sub_1ABF24FC4();
  sub_1ABA7BB64();
  v8 = v7;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8176C();
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABF252E4();
  sub_1ABF24F84();
  if (!v11)
  {
    sub_1ABF24FA4();
  }

  return (*(v8 + 8))(v4, v6);
}

uint64_t InferenceOutput<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v32 = a4;
  sub_1ABA7BD7C();
  v34 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InferenceOutput.CodingKeys(255, v9, v10, v11);
  sub_1ABA80D90();
  swift_getWitnessTable();
  v35 = sub_1ABF24EB4();
  sub_1ABA7BB64();
  v33 = v12;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA8176C();
  v16 = type metadata accessor for InferenceOutput(0, a2, v14, v15);
  sub_1ABA7BB64();
  v31 = v17;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  sub_1ABA93E20(a1, a1[3]);
  v21 = v38;
  sub_1ABF252C4();
  if (v21)
  {
    return sub_1ABA84B54(a1);
  }

  v38 = v16;
  v22 = v34;
  v40 = 0;
  sub_1ABF24E64();
  v23 = *(v22 + 32);
  v36 = v20;
  v23(v20, v37, a2);
  v39 = 1;
  v24 = sub_1ABF24E84();
  v25 = sub_1ABA7F518();
  v26(v25);
  v27 = v38;
  v28 = v36;
  *&v36[*(v38 + 28)] = v24;
  v29 = v31;
  (*(v31 + 16))(v32, v28, v27);
  sub_1ABA84B54(a1);
  return (*(v29 + 8))(v28, v27);
}

uint64_t sub_1ABD4B5B4(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for InferenceOutput(255, AssociatedTypeWitness, v2, v3);
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  sub_1ABF252B4();
  result = sub_1ABF247E4();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_DWORD *sub_1ABD4B6A0(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_1ABA7E1E0(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1ABA7E1E0(result, v5, v4);
}

void sub_1ABD4B7A4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1ABA7B9B4(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_1ABD4B93C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABD4BA5C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1ABD4BB54;

  return v6(a1);
}

uint64_t sub_1ABD4BB54()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v1 = *v0;
  sub_1ABA7BBC0();
  *v2 = v1;

  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABD4BC38()
{
  sub_1ABA7BC04();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1ABA93490(v1);

  return v3(v2);
}

uint64_t sub_1ABD4BCD4()
{
  sub_1ABA7BC04();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1ABA93490(v1);

  return v3(v2);
}

__n128 sub_1ABD4BD7C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1ABD4BD90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABD4BDCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ABD4BE18(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1ABD4BE50@<X0>(uint64_t *a1@<X8>)
{
  sub_1ABAE2C4C(v1, v11);
  if ((v12 & 1) == 0)
  {
    return sub_1ABA946C0(v11, a1);
  }

  sub_1ABA946C0(v11, v8);
  v3 = v9;
  v4 = v10;
  v5 = sub_1ABA93E20(v8, v9);
  a1[3] = v3;
  a1[4] = *(v4 + 8);
  v6 = sub_1ABA93DC0(a1);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  return sub_1ABA84B54(v8);
}

uint64_t sub_1ABD4BF10@<X0>(uint64_t a1@<X8>)
{
  sub_1ABAE2C4C(v1, v4);
  if (v5)
  {
    return sub_1ABA946C0(v4, a1);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return sub_1ABD37540(v4);
}