uint64_t sub_1DF1DD8B8()
{
  v2 = *v1;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1DF1DD9E8;
  }

  else
  {
    v4 = sub_1DF1DD9CC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF1DD9E8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1DF1DDA14(uint64_t a1)
{
  v2[6] = v1;
  v2[7] = a1;
  v3 = swift_task_alloc();
  v2[8] = v3;
  *v3 = v2;
  v3[1] = sub_1DF1DC6C0;

  return sub_1DF1CE85C((v2 + 5), 0, 0, (v2 + 2));
}

uint64_t sub_1DF1DDAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = v4;
  v5[15] = a4;
  v5[13] = a1;
  v8 = swift_task_alloc();
  v5[16] = v8;
  *v8 = v5;
  v8[1] = sub_1DF1DDB70;

  return sub_1DF1CEA60((v5 + 2), a2, a3, (v5 + 10));
}

uint64_t sub_1DF1DDB70()
{
  v2 = *v1;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_1DF1DDCC8;
  }

  else
  {
    v4 = sub_1DF1DDC9C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF1DDC9C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v1[2] = *(v0 + 48);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;
  return (*(v0 + 8))();
}

uint64_t sub_1DF1DDCC8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  *v1 = *(v0 + 80);
  *(v1 + 16) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1DF1DDCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 168) = v4;
  *(v5 + 176) = a4;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  *(v5 + 184) = *a3;
  *(v5 + 51) = *(a3 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DF1DDD28, v4, 0);
}

uint64_t sub_1DF1DDD28()
{
  v1 = *(v0 + 51);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  *(v0 + 208) = v1;
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = *(v0 + 184);
  *(v0 + 48) = v1;

  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  *v4 = v0;
  v4[1] = sub_1DF1DDDFC;

  return sub_1DF1CEF00(v0 + 49, v0 + 16, v0 + 56);
}

uint64_t sub_1DF1DDDFC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 168);
    sub_1DF1DE1B0(*(v2 + 56), *(v2 + 64), *(v2 + 72));
    sub_1DF1DE1EC(v2 + 16);
    v4 = sub_1DF1DE114;
  }

  else
  {
    v3 = *(v2 + 168);
    sub_1DF1DE1EC(v2 + 16);
    v4 = sub_1DF1DDF30;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF1DDF30()
{
  v1 = *(v0 + 50);
  if (v1 <= 2)
  {
    v5 = 0xEE00747365757165;
    v6 = 0x5264696C61766E69;
    v4 = 0xD000000000000012;
    if (v1 != 1)
    {
      v6 = 0x696C756465686373;
      v5 = 0xEF726F727245676ELL;
    }

    if (*(v0 + 50))
    {
      v4 = v6;
      v3 = v5;
    }

    else
    {
      v3 = 0x80000001DF23D6C0;
    }

    goto LABEL_13;
  }

  if (*(v0 + 50) <= 4u)
  {
    v2 = v1 == 3;
    v3 = 0xEB0000000064696CLL;
    v4 = 0x6E6E75526B736174;
    if (v2)
    {
      v4 = 0x61766E496B736174;
    }

    else
    {
      v3 = 0xEB00000000676E69;
    }

    goto LABEL_13;
  }

  if (v1 == 5)
  {
    v4 = 0x646E65506B736174;
    v3 = 0xEB00000000676E69;
LABEL_13:
    v7 = *(v0 + 176);
    *v7 = v4;
    *(v7 + 8) = v3;
    v8 = 1;
    *(v7 + 16) = 1;
    *(v0 + 128) = v4;
    v9 = 144;
    v10 = 136;
LABEL_14:
    *(v0 + v10) = v3;
    *(v0 + v9) = v8;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v11 = *(v0 + 8);
    v12 = 0;
    goto LABEL_15;
  }

  if (*(v0 + 49))
  {
    v3 = 0;
    v14 = *(v0 + 176);
    *v14 = xmmword_1DF2381D0;
    v8 = 4;
    *(v14 + 16) = 4;
    *(v0 + 104) = 2;
    v9 = 120;
    v10 = 112;
    goto LABEL_14;
  }

  v11 = *(v0 + 8);
  v12 = 1;
LABEL_15:

  return v11(v12);
}

uint64_t sub_1DF1DE114()
{
  v1 = *(v0 + 176);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 80) = xmmword_1DF238200;
  *(v0 + 96) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2(0);
}

void sub_1DF1DE1B0(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3 >= 2u)
    {
      return;
    }

LABEL_7:

    return;
  }

  if (a3 == 2)
  {
    goto LABEL_7;
  }

  if (a3 == 3)
  {
  }
}

uint64_t sub_1DF1DE240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = v3;
  v4[14] = a3;
  v7 = swift_task_alloc();
  v4[15] = v7;
  *v7 = v4;
  v7[1] = sub_1DF1DE2F4;

  return sub_1DF1CF31C((v4 + 11), a1, a2, (v4 + 2));
}

uint64_t sub_1DF1DE2F4()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 104);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 16), *(v3 + 24), *(v3 + 32));
    v5 = sub_1DF1DE5CC;
  }

  else
  {
    v5 = sub_1DF1DE42C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1DE42C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  if (v1 == 5)
  {
    if (!v2)
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {

    v5 = 0x4764696C61766E69;
    v6 = 0xEA00000000007965;
    v7 = 0x4B64696C61766E69;
    v8 = 0xEC00000065756C61;
    v9 = 0x5664696C61766E69;
    if (v1 != 3)
    {
      v9 = 0xD000000000000011;
      v8 = 0x80000001DF23CF10;
    }

    if (v1 != 2)
    {
      v7 = v9;
      v6 = v8;
    }

    if (v1)
    {
      v10 = 0xEC00000070756F72;
    }

    else
    {
      v5 = 0xD000000000000010;
      v10 = 0x80000001DF23CED0;
    }

    if (v1 <= 1)
    {
      v11 = v5;
    }

    else
    {
      v11 = v7;
    }

    if (v1 <= 1)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }

    v13 = *(v0 + 112);
    *v13 = v11;
    *(v13 + 8) = v12;
    *(v13 + 16) = 1;
    *(v0 + 64) = v11;
    *(v0 + 72) = v12;
    *(v0 + 80) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1DF1DE5CC()
{
  v1 = *(v0 + 112);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 40) = xmmword_1DF238200;
  *(v0 + 56) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF1DE664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = v5;
  v6[16] = a5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF1DE68C, v5, 0);
}

uint64_t sub_1DF1DE68C()
{

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1DF1DE748;
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];

  return sub_1DF1CF748(v0 + 33, v5, v3, v4, v2, (v0 + 2));
}

uint64_t sub_1DF1DE748()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 120);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 16), *(v3 + 24), *(v3 + 32));

    v5 = sub_1DF1DEA84;
  }

  else
  {

    v5 = sub_1DF1DE8D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1DE8D0()
{
  v1 = *(v0 + 33);
  if (v1 <= 2)
  {
    v2 = 0x4764696C61766E69;
    v3 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v3 = 0xEC00000070756F72;
    }

    else
    {
      v2 = 0x4B64696C61766E69;
    }

    if (*(v0 + 33))
    {
      v4 = v2;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (*(v0 + 33))
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v5 = 0xEC00000065756C61;
    v4 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v5 = 0x80000001DF23CF10;
    v4 = 0xD000000000000011;
LABEL_15:
    v6 = *(v0 + 128);
    *v6 = v4;
    *(v6 + 8) = v5;
    *(v6 + 16) = 1;
    *(v0 + 64) = v4;
    *(v0 + 72) = v5;
    *(v0 + 80) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 34);
  v10 = 1635017060;
  if (v9)
  {
    v10 = 1953720684;
  }

  if (v9 == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (v9 == 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = *(v0 + 8);

  return v13(v11, v12);
}

uint64_t sub_1DF1DEA84()
{
  v1 = *(v0 + 128);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 40) = xmmword_1DF238200;
  *(v0 + 56) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF1DEB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = v6;
  v7[17] = a6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E400, &qword_1DF238330);
  v7[18] = swift_task_alloc();
  KeyExpirationResponse = type metadata accessor for GetKeyExpirationResponse(0);
  v7[19] = KeyExpirationResponse;
  v7[20] = *(KeyExpirationResponse - 8);
  v7[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF1DEC20, v6, 0);
}

uint64_t sub_1DF1DEC20()
{

  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_1DF1DECDC;
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[12];

  return sub_1DF1CFB58(v2, v6, v4, v5, v3, (v0 + 2));
}

uint64_t sub_1DF1DECDC()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 128);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 16), *(v3 + 24), *(v3 + 32));

    v5 = sub_1DF1DF0EC;
  }

  else
  {

    v5 = sub_1DF1DEE64;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1DEE64()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  (*(*(v0 + 160) + 56))(v2, 0, 1, *(v0 + 152));
  sub_1DF1F1A78(v2, v1, type metadata accessor for GetKeyExpirationResponse);
  v3 = *v1;
  if (v3 <= 2)
  {
    v4 = 0x4764696C61766E69;
    v5 = 0xEA00000000007965;
    if (v3 == 1)
    {
      v5 = 0xEC00000070756F72;
    }

    else
    {
      v4 = 0x4B64696C61766E69;
    }

    if (*v1)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (*v1)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v7 = 0xEC00000065756C61;
    v6 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v3 == 4)
  {
    v7 = 0x80000001DF23CF10;
    v6 = 0xD000000000000011;
LABEL_15:
    v8 = *(v0 + 168);
    v9 = *(v0 + 136);
    *v9 = v6;
    *(v9 + 8) = v7;
    *(v9 + 16) = 1;
    *(v0 + 64) = v6;
    *(v0 + 72) = v7;
    *(v0 + 80) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    sub_1DF1EA628(v8, type metadata accessor for GetKeyExpirationResponse);

    v10 = *(v0 + 8);

    return v10();
  }

  v12 = *(v0 + 168);
  v13 = *(v0 + 152);
  sub_1DF17A6A8(v12 + *(v13 + 20), *(v0 + 88), &qword_1ECE0CDC0, &unk_1DF22D7C0);
  v14 = v12 + *(v13 + 24);
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  sub_1DF1EA628(v12, type metadata accessor for GetKeyExpirationResponse);

  v18 = *(v0 + 8);

  return v18(v15, v16, v17);
}

uint64_t sub_1DF1DF0EC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  (*(*(v0 + 160) + 56))(v2, 1, 1, *(v0 + 152));
  sub_1DF16184C(v2, &qword_1ECE0E400, &qword_1DF238330);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 40) = xmmword_1DF238200;
  *(v0 + 56) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DF1DF1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = v3;
  v4[14] = a3;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF1DF1F4, v3, 0);
}

uint64_t sub_1DF1DF1F4()
{

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1DF1DF2A8;
  v2 = v0[12];
  v3 = v0[11];

  return sub_1DF1D00F4(v0 + 33, v3, v2, 0, 0, (v0 + 2));
}

uint64_t sub_1DF1DF2A8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 104);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 16), *(v3 + 24), *(v3 + 32));

    v5 = sub_1DF1DF58C;
  }

  else
  {

    v5 = sub_1DF1DF41C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1DF41C()
{
  v1 = *(v0 + 33);
  if (v1 <= 2)
  {
    v2 = 0x4764696C61766E69;
    v3 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v3 = 0xEC00000070756F72;
    }

    else
    {
      v2 = 0x4B64696C61766E69;
    }

    if (*(v0 + 33))
    {
      v4 = v2;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (*(v0 + 33))
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v5 = 0xEC00000065756C61;
    v4 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v5 = 0x80000001DF23CF10;
    v4 = 0xD000000000000011;
LABEL_15:
    v6 = *(v0 + 112);
    *v6 = v4;
    *(v6 + 8) = v5;
    *(v6 + 16) = 1;
    *(v0 + 64) = v4;
    *(v0 + 72) = v5;
    *(v0 + 80) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v7 = *(v0 + 8);
    v8 = 0;
    goto LABEL_16;
  }

  v7 = *(v0 + 8);
  v8 = *(v0 + 34) & 1;
LABEL_16:

  return v7(v8);
}

uint64_t sub_1DF1DF58C()
{
  v1 = *(v0 + 112);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 40) = xmmword_1DF238200;
  *(v0 + 56) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1DF1DF628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = v5;
  v6[16] = a5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF1DF650, v5, 0);
}

uint64_t sub_1DF1DF650()
{
  v1 = v0[14];

  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1DF1DF718;
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];

  return sub_1DF1D00F4(v0 + 33, v5, v3, v4, v1, (v0 + 2));
}

uint64_t sub_1DF1DF718()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 120);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 16), *(v3 + 24), *(v3 + 32));

    v5 = sub_1DF1DFA10;
  }

  else
  {

    v5 = sub_1DF1DF8A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1DF8A0()
{
  v1 = *(v0 + 33);
  if (v1 <= 2)
  {
    v2 = 0x4764696C61766E69;
    v3 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v3 = 0xEC00000070756F72;
    }

    else
    {
      v2 = 0x4B64696C61766E69;
    }

    if (*(v0 + 33))
    {
      v4 = v2;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (*(v0 + 33))
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v5 = 0xEC00000065756C61;
    v4 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v5 = 0x80000001DF23CF10;
    v4 = 0xD000000000000011;
LABEL_15:
    v6 = *(v0 + 128);
    *v6 = v4;
    *(v6 + 8) = v5;
    *(v6 + 16) = 1;
    *(v0 + 64) = v4;
    *(v0 + 72) = v5;
    *(v0 + 80) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v7 = *(v0 + 8);
    v8 = 0;
    goto LABEL_16;
  }

  v7 = *(v0 + 8);
  v8 = *(v0 + 34) & 1;
LABEL_16:

  return v7(v8);
}

uint64_t sub_1DF1DFA10()
{
  v1 = *(v0 + 128);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 40) = xmmword_1DF238200;
  *(v0 + 56) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1DF1DFAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 272) = v8;
  *(v9 + 280) = a8;
  *(v9 + 256) = a6;
  *(v9 + 264) = a7;
  *(v9 + 49) = a5;
  *(v9 + 240) = a3;
  *(v9 + 248) = a4;
  *(v9 + 224) = a1;
  *(v9 + 232) = a2;
  v10 = sub_1DF22AB50();
  *(v9 + 288) = v10;
  *(v9 + 296) = *(v10 - 8);
  *(v9 + 304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD50, &unk_1DF22D750);
  *(v9 + 312) = swift_task_alloc();
  v11 = sub_1DF22AA80();
  *(v9 + 320) = v11;
  *(v9 + 328) = *(v11 - 8);
  *(v9 + 336) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF1DFC10, v8, 0);
}

uint64_t sub_1DF1DFC10()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  *(v0 + 16) = *(v0 + 224);
  *(v0 + 24) = v4;
  *(v0 + 32) = v2;
  *(v0 + 40) = v3;
  *(v0 + 48) = v1;

  v5 = swift_task_alloc();
  *(v0 + 344) = v5;
  *v5 = v0;
  v5[1] = sub_1DF1DFCE8;

  return sub_1DF1D0428(v0 + 56, v0 + 16, v0 + 80);
}

uint64_t sub_1DF1DFCE8()
{
  v2 = *v1;
  *(v2 + 352) = v0;

  v3 = *(v2 + 272);
  if (v0)
  {
    sub_1DF1DE1B0(*(v2 + 80), *(v2 + 88), *(v2 + 96));
    sub_1DF1E06F4(v2 + 16);
    v4 = sub_1DF1E0640;
  }

  else
  {
    sub_1DF1E06F4(v2 + 16);
    v4 = sub_1DF1DFE34;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF1DFE34()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  *(v0 + 360) = v3;
  *(v0 + 368) = v2;
  if (v1 <= 2)
  {
    v4 = 0x4764696C61766E69;
    v5 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v5 = 0xEC00000070756F72;
    }

    else
    {
      v4 = 0x4B64696C61766E69;
    }

    if (v1)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (v1)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v7 = 0xEC00000065756C61;
    v6 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v7 = 0x80000001DF23CF10;
    v6 = 0xD000000000000011;
LABEL_15:
    v8 = *(v0 + 280);
    *v8 = v6;
    *(v8 + 8) = v7;
    *(v8 + 16) = 1;
    *(v0 + 176) = v6;
    *(v0 + 184) = v7;
    *(v0 + 192) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    sub_1DF18A0A4(v3, v2);

    v9 = *(v0 + 8);

    return v9();
  }

  if (v2 >> 60 == 15 || *(v0 + 264) == 0)
  {

    v12 = *(v0 + 8);

    return v12(v3, v2);
  }

  else
  {
    if (qword_1ECE0C778 != -1)
    {
      swift_once();
    }

    v13 = qword_1ECE0EEF0;
    *(v0 + 376) = qword_1ECE0EEF0;

    return MEMORY[0x1EEE6DFA0](sub_1DF1E00A4, v13, 0);
  }
}

uint64_t sub_1DF1E00A4()
{
  if (qword_1ECE0C780 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1DF1E0134, v1, 0);
}

uint64_t sub_1DF1E0134()
{
  v1 = *(v0 + 376);
  *(v0 + 384) = qword_1ECE0EEF8;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E015C, v1, 0);
}

uint64_t sub_1DF1E015C()
{
  v1 = v0[34];
  CryptoUtils.getClientEncryptionKey(accessGroup:)(v0[32], v0[33], v0[39]);

  return MEMORY[0x1EEE6DFA0](sub_1DF1E01D0, v1, 0);
}

uint64_t sub_1DF1E01D0()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 360);
    v4 = *(v0 + 368);
    v6 = *(v0 + 280);
    sub_1DF16184C(v3, &qword_1ECE0CD50, &unk_1DF22D750);
    *v6 = 0xD00000000000002ALL;
    *(v6 + 8) = 0x80000001DF23DF20;
    *(v6 + 16) = 2;
    *(v0 + 128) = 0xD00000000000002ALL;
    *(v0 + 136) = 0x80000001DF23DF20;
    *(v0 + 144) = 2;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    sub_1DF18A0A4(v5, v4);
LABEL_10:

    v28 = *(v0 + 8);

    return v28();
  }

  v7 = *(v0 + 360);
  v8 = *(v0 + 368);
  v9 = *(v0 + 352);
  (*(v2 + 32))(*(v0 + 336), v3, v1);
  sub_1DF1B7FDC(v7, v8);
  sub_1DF1EA2C0(v7, v8);
  if (v9)
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v12 = sub_1DF22A8C0();
    __swift_project_value_buffer(v12, qword_1ED8E92C0);
    v13 = v9;
    v14 = sub_1DF22A8A0();
    v15 = sub_1DF22B110();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v9;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1DF15A000, v14, v15, "Failed to decrypt data: %@", v16, 0xCu);
      sub_1DF16184C(v17, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v17, -1, -1);
      MEMORY[0x1E12D0B40](v16, -1, -1);
    }

    v21 = *(v0 + 360);
    v20 = *(v0 + 368);
    v23 = *(v0 + 328);
    v22 = *(v0 + 336);
    v24 = *(v0 + 320);
    v25 = *(v0 + 280);

    sub_1DF22B300();
    *(v0 + 200) = 0;
    *(v0 + 208) = 0xE000000000000000;
    MEMORY[0x1E12CF820](0xD000000000000018, 0x80000001DF23DF50);
    *(v0 + 216) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D448, &qword_1DF2305D8);
    sub_1DF22B3B0();
    v26 = *(v0 + 200);
    v27 = *(v0 + 208);
    *v25 = v26;
    *(v25 + 8) = v27;
    *(v25 + 16) = 2;
    *(v0 + 152) = v26;
    *(v0 + 160) = v27;
    *(v0 + 168) = 2;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();

    sub_1DF18A0A4(v21, v20);
    (*(v23 + 8))(v22, v24);
    goto LABEL_10;
  }

  v10 = sub_1DF22AB00();
  v31 = *(v0 + 328);
  v30 = *(v0 + 336);
  v32 = *(v0 + 320);
  v34 = *(v0 + 296);
  v33 = *(v0 + 304);
  v35 = *(v0 + 288);
  v36 = v10;
  v37 = v11;
  sub_1DF18A0A4(*(v0 + 360), *(v0 + 368));
  (*(v34 + 8))(v33, v35);
  (*(v31 + 8))(v30, v32);

  v38 = *(v0 + 8);

  return v38(v36, v37);
}

uint64_t sub_1DF1E0640()
{
  v1 = *(v0 + 280);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 104) = xmmword_1DF238200;
  *(v0 + 120) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF1E0748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v8;
  v9[12] = v22;
  v9[9] = v20;
  v9[10] = v21;
  v9[8] = a1;
  v17 = swift_task_alloc();
  v9[13] = v17;
  *v17 = v9;
  v17[1] = sub_1DF1E0840;

  return sub_1DF1DFAAC(a2, a3, a4, a5, a6, a7, a8, (v9 + 2));
}

uint64_t sub_1DF1E0840(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 88);
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = v2;

  if (v2)
  {
    v6 = sub_1DF1E0CC4;
  }

  else
  {
    v6 = sub_1DF1E0970;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF1E0970()
{
  v25 = v0;
  if (*(v0 + 120) >> 60 == 15)
  {
    v1 = 1;
LABEL_10:
    (*(*(*(v0 + 72) - 8) + 56))(*(v0 + 64), v1, 1);
    v21 = *(v0 + 8);
    goto LABEL_11;
  }

  v2 = *(v0 + 128);
  sub_1DF1CBEE0();
  sub_1DF22A5D0();
  if (!v2)
  {
    sub_1DF18A0A4(*(v0 + 112), *(v0 + 120));

    v1 = 0;
    goto LABEL_10;
  }

  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF22A8C0();
  __swift_project_value_buffer(v3, qword_1ED8E92C0);
  v4 = v2;
  v5 = sub_1DF22A8A0();
  v6 = sub_1DF22B110();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v7 = 136315394;
    v10 = sub_1DF22B7B0();
    v12 = sub_1DF160728(v10, v11, &v23);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_1DF15A000, v5, v6, "Failed at decoding from Data to %s: %@", v7, 0x16u);
    sub_1DF16184C(v8, &qword_1ECE0C7E8, &qword_1DF230550);
    MEMORY[0x1E12D0B40](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12D0B40](v9, -1, -1);
    MEMORY[0x1E12D0B40](v7, -1, -1);
  }

  v16 = *(v0 + 112);
  v15 = *(v0 + 120);
  v17 = *(v0 + 96);
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_1DF22B300();

  v23 = 0xD000000000000020;
  v24 = 0x80000001DF23DF70;
  v18 = sub_1DF22B7B0();
  MEMORY[0x1E12CF820](v18);

  v19 = v23;
  v20 = v24;
  *v17 = v23;
  *(v17 + 8) = v20;
  *(v17 + 16) = 1;
  *(v0 + 40) = v19;
  *(v0 + 48) = v20;
  *(v0 + 56) = 1;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  sub_1DF18A0A4(v16, v15);

  v21 = *(v0 + 8);
LABEL_11:

  return v21();
}

uint64_t sub_1DF1E0CC4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1DF1E0CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 384) = v8;
  *(v9 + 392) = v17;
  *(v9 + 368) = v15;
  *(v9 + 376) = v16;
  *(v9 + 83) = v14;
  *(v9 + 352) = a7;
  *(v9 + 360) = a8;
  *(v9 + 336) = a5;
  *(v9 + 344) = a6;
  *(v9 + 320) = a3;
  *(v9 + 328) = a4;
  *(v9 + 304) = a1;
  *(v9 + 312) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E408, &qword_1DF238388);
  *(v9 + 400) = swift_task_alloc();
  v10 = sub_1DF22AB50();
  *(v9 + 408) = v10;
  *(v9 + 416) = *(v10 - 8);
  *(v9 + 424) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD50, &unk_1DF22D750);
  *(v9 + 432) = swift_task_alloc();
  v11 = sub_1DF22AA80();
  *(v9 + 440) = v11;
  *(v9 + 448) = *(v11 - 8);
  *(v9 + 456) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF1E0EA4, v8, 0);
}

uint64_t sub_1DF1E0EA4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 344);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    v10 = *(*(v3 + 336) + 16);
    v11 = *(*(v3 + 336) + 24);
    v8 = __OFSUB__(v11, v10);
    v9 = v11 - v10;
    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_21:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, v4, a3);
  }

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = *(v3 + 336);
  v7 = *(v3 + 340);
  v8 = __OFSUB__(v7, v6);
  LODWORD(v9) = v7 - v6;
  if (v8)
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = v9;
LABEL_7:
  if (v9 >= 0x400000)
  {
    v21 = *(v3 + 392);
    sub_1DF22B300();

    *(v3 + 288) = 0x400000;
    v22 = sub_1DF22B600();
    MEMORY[0x1E12CF820](v22);

    MEMORY[0x1E12CF820](0x2E736574796220, 0xE700000000000000);
    *v21 = 0xD00000000000001DLL;
    *(v21 + 8) = 0x80000001DF23DFA0;
    *(v21 + 16) = 0;
    *(v3 + 88) = 0xD00000000000001DLL;
    *(v3 + 96) = 0x80000001DF23DFA0;
    *(v3 + 104) = 0;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();

    v23 = *(v3 + 8);

    return v23(0);
  }

LABEL_8:
  if (*(v3 + 376))
  {
    if (qword_1ECE0C778 != -1)
    {
      swift_once();
    }

    v4 = qword_1ECE0EEF0;
    *(v3 + 464) = qword_1ECE0EEF0;
    a1 = sub_1DF1E11AC;
    a3 = 0;

    return MEMORY[0x1EEE6DFA0](a1, v4, a3);
  }

  sub_1DF16573C(*(v3 + 336), v4);
  v13 = *(v3 + 328);
  v12 = *(v3 + 336);
  *(v3 + 480) = v12;
  v14 = *(v3 + 360);
  v16 = *(v3 + 312);
  v15 = *(v3 + 320);
  v17 = *(v3 + 304);
  *(v3 + 504) = *(v3 + 83) & 1;
  *(v3 + 16) = v17;
  *(v3 + 24) = v16;
  *(v3 + 32) = v15;
  *(v3 + 40) = v13;
  *(v3 + 48) = v12;
  v18 = *(v3 + 344);
  *(v3 + 488) = *(v3 + 344);
  *(v3 + 56) = v18;
  *(v3 + 72) = v14;
  *(v3 + 80) = *(v3 + 504);
  sub_1DF16573C(v12, v18);

  v19 = swift_task_alloc();
  *(v3 + 496) = v19;
  *v19 = v3;
  v19[1] = sub_1DF1E1864;

  return sub_1DF1D087C(v3 + 81, v3 + 16, v3 + 112);
}

uint64_t sub_1DF1E11AC()
{
  if (qword_1ECE0C780 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 464);

  return MEMORY[0x1EEE6DFA0](sub_1DF1E123C, v1, 0);
}

uint64_t sub_1DF1E123C()
{
  v1 = *(v0 + 464);
  *(v0 + 472) = qword_1ECE0EEF8;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E1264, v1, 0);
}

uint64_t sub_1DF1E1264()
{
  v1 = v0[48];
  CryptoUtils.getClientEncryptionKey(accessGroup:)(v0[46], v0[47], v0[54]);

  return MEMORY[0x1EEE6DFA0](sub_1DF1E12D8, v1, 0);
}

uint64_t sub_1DF1E12D8()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 432);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 392);
    sub_1DF16184C(v3, &qword_1ECE0CD50, &unk_1DF22D750);
    *v4 = 0xD00000000000002ALL;
    *(v4 + 8) = 0x80000001DF23DFC0;
    *(v4 + 16) = 2;
    *(v0 + 184) = 0xD00000000000002ALL;
    *(v0 + 192) = 0x80000001DF23DFC0;
    *(v0 + 200) = 2;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
LABEL_5:

    v19 = *(v0 + 8);

    return v19(0);
  }

  v5 = *(v0 + 400);
  v7 = *(v0 + 336);
  v6 = *(v0 + 344);
  (*(v2 + 32))(*(v0 + 456), v3, v1);
  *(v0 + 256) = v7;
  *(v0 + 264) = v6;
  v8 = sub_1DF22AB20();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1DF1EA5D4();
  sub_1DF22AB10();
  v10 = *(v0 + 416);
  v9 = *(v0 + 424);
  v11 = *(v0 + 408);
  sub_1DF16184C(*(v0 + 400), &qword_1ECE0E408, &qword_1DF238388);
  v12 = sub_1DF22AB30();
  v14 = v13;
  (*(v10 + 8))(v9, v11);
  if (v14 >> 60 == 15)
  {
    v16 = *(v0 + 448);
    v15 = *(v0 + 456);
    v17 = *(v0 + 440);
    v18 = *(v0 + 392);
    *v18 = 0xD000000000000029;
    *(v18 + 8) = 0x80000001DF23E010;
    *(v18 + 16) = 0;
    *(v0 + 232) = 0xD000000000000029;
    *(v0 + 240) = 0x80000001DF23E010;
    *(v0 + 248) = 0;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    (*(v16 + 8))(v15, v17);
    goto LABEL_5;
  }

  (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));
  *(v0 + 480) = v12;
  *(v0 + 488) = v14;
  v21 = *(v0 + 320);
  v22 = *(v0 + 328);
  v23 = *(v0 + 304);
  v24 = *(v0 + 312);
  v25 = *(v0 + 83) & 1;
  *(v0 + 504) = v25;
  *(v0 + 16) = v23;
  *(v0 + 24) = v24;
  *(v0 + 32) = v21;
  *(v0 + 40) = v22;
  *(v0 + 48) = v12;
  *(v0 + 56) = v14;
  *(v0 + 64) = *(v0 + 352);
  *(v0 + 80) = v25;
  sub_1DF16573C(v12, v14);

  v26 = swift_task_alloc();
  *(v0 + 496) = v26;
  *v26 = v0;
  v26[1] = sub_1DF1E1864;

  return sub_1DF1D087C(v0 + 81, v0 + 16, v0 + 112);
}

uint64_t sub_1DF1E1864()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 384);
    sub_1DF1DE1B0(*(v2 + 112), *(v2 + 120), *(v2 + 128));
    sub_1DF1B891C(v2 + 16);
    v4 = sub_1DF1E1B84;
  }

  else
  {
    v3 = *(v2 + 384);
    sub_1DF1B891C(v2 + 16);
    v4 = sub_1DF1E1998;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF1E1998()
{
  v1 = *(v0 + 81);
  if (v1 <= 2)
  {
    v2 = 0x4764696C61766E69;
    v3 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v3 = 0xEC00000070756F72;
    }

    else
    {
      v2 = 0x4B64696C61766E69;
    }

    if (*(v0 + 81))
    {
      v4 = v2;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (*(v0 + 81))
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v5 = 0xEC00000065756C61;
    v4 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v5 = 0x80000001DF23CF10;
    v4 = 0xD000000000000011;
LABEL_15:
    v6 = *(v0 + 480);
    v7 = *(v0 + 488);
    v8 = *(v0 + 392);
    *v8 = v4;
    *(v8 + 8) = v5;
    *(v8 + 16) = 1;
    *(v0 + 160) = v4;
    *(v0 + 168) = v5;
    *(v0 + 176) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    sub_1DF1657C8(v6, v7);

    v9 = *(v0 + 8);
    v10 = 0;
    goto LABEL_16;
  }

  v12 = *(v0 + 82);
  sub_1DF1657C8(*(v0 + 480), *(v0 + 488));

  v9 = *(v0 + 8);
  v10 = v12 & 1;
LABEL_16:

  return v9(v10);
}

uint64_t sub_1DF1E1B84()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v3 = *(v0 + 392);
  *v3 = xmmword_1DF238200;
  *(v3 + 16) = 4;
  *(v0 + 136) = xmmword_1DF238200;
  *(v0 + 152) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  sub_1DF1657C8(v1, v2);

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_1DF1E1C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 184) = v8;
  *(v9 + 192) = v14;
  *(v9 + 168) = v12;
  *(v9 + 176) = v13;
  *(v9 + 152) = v11;
  *(v9 + 57) = a8;
  *(v9 + 136) = a6;
  *(v9 + 144) = a7;
  *(v9 + 120) = a4;
  *(v9 + 128) = a5;
  *(v9 + 104) = a2;
  *(v9 + 112) = a3;
  *(v9 + 96) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E1CAC, v8, 0);
}

uint64_t sub_1DF1E1CAC()
{
  sub_1DF1CBE60();
  v1 = sub_1DF22A610();
  v0[25] = v1;
  v0[26] = v2;
  v3 = v1;
  v4 = v2;

  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_1DF1E1FA0;
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[14];
  v9 = v0[15];
  v11 = v0[12];
  v10 = v0[13];

  return sub_1DF1E0CF0(v11, v10, v8, v9, v3, v4, v6, v7);
}

uint64_t sub_1DF1E1FA0(char a1)
{
  v4 = *v2;

  v5 = *(v4 + 184);
  if (v1)
  {
    v6 = sub_1DF1E2134;
  }

  else
  {
    *(v4 + 58) = a1 & 1;
    v6 = sub_1DF1E20CC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF1E20CC()
{
  sub_1DF1657C8(*(v0 + 200), *(v0 + 208));
  v1 = *(v0 + 8);
  v2 = *(v0 + 58);

  return v1(v2);
}

uint64_t sub_1DF1E2134()
{
  v21 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  sub_1DF1DC5C8();
  v6 = swift_allocError();
  *v7 = v3;
  *(v7 + 8) = v4;
  *(v7 + 16) = v5;
  sub_1DF1657C8(v2, v1);
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v8 = sub_1DF22A8C0();
  __swift_project_value_buffer(v8, qword_1ED8E92C0);
  v9 = v6;
  v10 = sub_1DF22A8A0();
  v11 = sub_1DF22B110();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_1DF22B670();
    v16 = sub_1DF160728(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1DF15A000, v10, v11, "Error encoding value to Data: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12D0B40](v13, -1, -1);
    MEMORY[0x1E12D0B40](v12, -1, -1);
  }

  v17 = *(v0 + 192);
  *v17 = 0xD00000000000001FLL;
  *(v17 + 8) = 0x80000001DF23E040;
  *(v17 + 16) = 0;
  *(v0 + 40) = 0xD00000000000001FLL;
  *(v0 + 48) = 0x80000001DF23E040;
  *(v0 + 56) = 0;
  swift_willThrowTypedImpl();

  v18 = *(v0 + 8);

  return v18(0);
}

uint64_t sub_1DF1E2374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[19] = v6;
  v7[20] = a6;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  v7[21] = type metadata accessor for ListIndexDictionaryRequest(0);
  v7[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF1E2414, v6, 0);
}

uint64_t sub_1DF1E2414()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];
  v7 = *(v0[21] + 24);
  v8 = sub_1DF22A800();
  (*(*(v8 - 8) + 16))(&v1[v7], v3, v8);
  *v1 = v6;
  *(v1 + 1) = v4;
  *(v1 + 2) = v5;
  *(v1 + 3) = v2;

  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_1DF1E2538;
  v10 = v0[22];

  return sub_1DF1D0C9C((v0 + 2), v10, (v0 + 5));
}

uint64_t sub_1DF1E2538()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 176);
  v5 = *(v2 + 152);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 40), *(v3 + 48), *(v3 + 56));
    sub_1DF1EA628(v4, type metadata accessor for ListIndexDictionaryRequest);
    v6 = sub_1DF1E286C;
  }

  else
  {
    sub_1DF1EA628(v4, type metadata accessor for ListIndexDictionaryRequest);
    v6 = sub_1DF1E26C4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF1E26C4()
{
  v1 = *(v0 + 16);
  if (v1 <= 2)
  {
    v2 = 0x4764696C61766E69;
    v3 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v3 = 0xEC00000070756F72;
    }

    else
    {
      v2 = 0x4B64696C61766E69;
    }

    if (*(v0 + 16))
    {
      v4 = v2;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (*(v0 + 16))
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v5 = 0xEC00000065756C61;
    v4 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v5 = 0x80000001DF23CF10;
    v4 = 0xD000000000000011;
LABEL_15:
    v6 = *(v0 + 160);
    *v6 = v4;
    *(v6 + 8) = v5;
    *(v6 + 16) = 1;
    *(v0 + 88) = v4;
    *(v0 + 96) = v5;
    *(v0 + 104) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 24);
  v10 = *(v0 + 32);

  v11 = *(v0 + 8);

  return v11(v9, v10);
}

uint64_t sub_1DF1E286C()
{
  v1 = *(v0 + 160);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 64) = xmmword_1DF238200;
  *(v0 + 80) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF1E290C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[24] = v6;
  v7[25] = a6;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E2938, v6, 0);
}

uint64_t sub_1DF1E2938()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v0[2] = v0[19];
  v0[3] = v3;
  v0[4] = v4;
  v0[5] = v2;
  v0[6] = v1;

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_1DF1E2A0C;

  return sub_1DF1D10B8((v0 + 7), (v0 + 2), (v0 + 10));
}

uint64_t sub_1DF1E2A0C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 192);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 80), *(v3 + 88), *(v3 + 96));
    sub_1DF1EA688(v3 + 16);
    v5 = sub_1DF1E2D00;
  }

  else
  {
    sub_1DF1EA688(v3 + 16);
    v5 = sub_1DF1E2B54;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1E2B54()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  if (v1 <= 2)
  {
    v4 = 0x4764696C61766E69;
    v5 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v5 = 0xEC00000070756F72;
    }

    else
    {
      v4 = 0x4B64696C61766E69;
    }

    if (*(v0 + 56))
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (*(v0 + 56))
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v7 = 0xEC00000065756C61;
    v6 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v7 = 0x80000001DF23CF10;
    v6 = 0xD000000000000011;
LABEL_15:
    v8 = *(v0 + 200);
    *v8 = v6;
    *(v8 + 8) = v7;
    *(v8 + 16) = 1;
    *(v0 + 128) = v6;
    *(v0 + 136) = v7;
    *(v0 + 144) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    sub_1DF18A0A4(v3, v2);
    v9 = *(v0 + 8);

    return v9();
  }

  v11 = *(v0 + 8);
  v12 = *(v0 + 64);
  v13 = *(v0 + 72);

  return v11(v12, v13);
}

uint64_t sub_1DF1E2D00()
{
  v1 = *(v0 + 200);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 104) = xmmword_1DF238200;
  *(v0 + 120) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF1E2D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[30] = v8;
  v9[31] = v11;
  v9[28] = a7;
  v9[29] = a8;
  v9[26] = a5;
  v9[27] = a6;
  v9[24] = a3;
  v9[25] = a4;
  v9[22] = a1;
  v9[23] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E2DD0, v8, 0);
}

uint64_t sub_1DF1E2DD0()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v0[2] = v0[23];
  v0[3] = v3;
  v0[4] = v4;
  v0[5] = v2;
  v0[6] = v1;

  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_1DF1E2EA4;

  return sub_1DF1D10B8((v0 + 7), (v0 + 2), (v0 + 10));
}

uint64_t sub_1DF1E2EA4()
{
  v2 = *v1;
  *(v2 + 264) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    sub_1DF1DE1B0(*(v2 + 80), *(v2 + 88), *(v2 + 96));
    sub_1DF1EA688(v2 + 16);
    v4 = sub_1DF1E3444;
  }

  else
  {
    sub_1DF1EA688(v2 + 16);
    v4 = sub_1DF1E2FF0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF1E2FF0()
{
  v31 = v0;
  v1 = *(v0 + 56);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  if (v1 <= 2)
  {
    v4 = 0xEC00000070756F72;
    v5 = 0x4764696C61766E69;
    if (v1 != 1)
    {
      v5 = 0x4B64696C61766E69;
      v4 = 0xEA00000000007965;
    }

    if (*(v0 + 56))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (*(v0 + 56))
    {
      v7 = v4;
    }

    else
    {
      v7 = 0x80000001DF23CED0;
    }

    goto LABEL_14;
  }

  if (v1 == 3)
  {
    v7 = 0xEC00000065756C61;
    v6 = 0x5664696C61766E69;
    goto LABEL_14;
  }

  if (v1 == 4)
  {
    v7 = 0x80000001DF23CF10;
    v6 = 0xD000000000000011;
LABEL_14:
    *(v0 + 152) = v6;
    *(v0 + 160) = v7;
    *(v0 + 168) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    sub_1DF18A0A4(v3, v2);
    v8 = *(v0 + 248);
    *v8 = v6;
    *(v8 + 8) = v7;
    *(v8 + 16) = 1;
LABEL_15:
    v9 = *(v0 + 8);
    goto LABEL_16;
  }

  if (v2 >> 60 == 15)
  {
    v11 = 1;
  }

  else
  {
    v12 = *(v0 + 264);
    sub_1DF1CBEE0();
    sub_1DF22A5D0();
    if (v12)
    {

      if (qword_1ED8E7530 != -1)
      {
        swift_once();
      }

      v13 = sub_1DF22A8C0();
      __swift_project_value_buffer(v13, qword_1ED8E92C0);
      v14 = v12;
      v15 = sub_1DF22A8A0();
      v16 = sub_1DF22B110();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = v28;
        *v17 = 136315394;
        v19 = sub_1DF22B7B0();
        v21 = sub_1DF160728(v19, v20, &v29);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2112;
        v22 = v12;
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 14) = v23;
        *v18 = v23;
        _os_log_impl(&dword_1DF15A000, v15, v16, "Failed at decoding from Data to %s: %@", v17, 0x16u);
        sub_1DF16184C(v18, &qword_1ECE0C7E8, &qword_1DF230550);
        MEMORY[0x1E12D0B40](v18, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x1E12D0B40](v28, -1, -1);
        MEMORY[0x1E12D0B40](v17, -1, -1);
      }

      v24 = *(v0 + 248);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_1DF22B300();

      v29 = 0xD000000000000020;
      v30 = 0x80000001DF23DF70;
      v25 = sub_1DF22B7B0();
      MEMORY[0x1E12CF820](v25);

      v26 = v29;
      v27 = v30;
      *v24 = v29;
      *(v24 + 8) = v27;
      *(v24 + 16) = 1;
      *(v0 + 128) = v26;
      *(v0 + 136) = v27;
      *(v0 + 144) = 1;
      sub_1DF1DC5C8();
      swift_willThrowTypedImpl();
      sub_1DF18A0A4(v3, v2);

      goto LABEL_15;
    }

    sub_1DF18A0A4(v3, v2);

    v11 = 0;
  }

  (*(*(*(v0 + 224) - 8) + 56))(*(v0 + 176), v11, 1);
  v9 = *(v0 + 8);
LABEL_16:

  return v9();
}

uint64_t sub_1DF1E3444()
{
  *(v0 + 104) = xmmword_1DF238200;
  *(v0 + 120) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v1 = *(v0 + 248);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF1E34EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[18] = v5;
  v6[19] = a5;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E3514, v5, 0);
}

uint64_t sub_1DF1E3514()
{

  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_1DF1E35D0;
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];

  return sub_1DF1D12C8((v0 + 2), v5, v3, v4, v2, (v0 + 5));
}

uint64_t sub_1DF1E35D0()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 144);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 40), *(v3 + 48), *(v3 + 56));

    v5 = sub_1DF1E38E8;
  }

  else
  {

    v5 = sub_1DF1E3758;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1E3758()
{
  v1 = *(v0 + 16);
  if (v1 <= 2)
  {
    v2 = 0x4764696C61766E69;
    v3 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v3 = 0xEC00000070756F72;
    }

    else
    {
      v2 = 0x4B64696C61766E69;
    }

    if (*(v0 + 16))
    {
      v4 = v2;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (*(v0 + 16))
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v5 = 0xEC00000065756C61;
    v4 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v5 = 0x80000001DF23CF10;
    v4 = 0xD000000000000011;
LABEL_15:
    v6 = *(v0 + 152);
    *v6 = v4;
    *(v6 + 8) = v5;
    *(v6 + 16) = 1;
    *(v0 + 88) = v4;
    *(v0 + 96) = v5;
    *(v0 + 104) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 8);

  return v11(v9, v10);
}

uint64_t sub_1DF1E38E8()
{
  v1 = *(v0 + 152);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 64) = xmmword_1DF238200;
  *(v0 + 80) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF1E3980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 256) = v8;
  *(v9 + 264) = v12;
  *(v9 + 83) = v11;
  *(v9 + 240) = a7;
  *(v9 + 248) = a8;
  *(v9 + 224) = a5;
  *(v9 + 232) = a6;
  *(v9 + 208) = a3;
  *(v9 + 216) = a4;
  *(v9 + 192) = a1;
  *(v9 + 200) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E39C0, v8, 0);
}

void sub_1DF1E39C0()
{
  v1 = *(v0 + 232);
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(*(v0 + 224) + 16);
    v8 = *(*(v0 + 224) + 24);
    v5 = __OFSUB__(v8, v7);
    v6 = v8 - v7;
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
    return;
  }

  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = *(v0 + 224);
  v4 = *(v0 + 228);
  v5 = __OFSUB__(v4, v3);
  LODWORD(v6) = v4 - v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v6;
LABEL_7:
  if (v6 > 0x400000)
  {
    v9 = *(v0 + 264);
    sub_1DF22B300();

    *(v0 + 184) = 0x400000;
    v10 = sub_1DF22B600();
    MEMORY[0x1E12CF820](v10);

    MEMORY[0x1E12CF820](0x2E736574796220, 0xE700000000000000);
    *v9 = 0xD00000000000001DLL;
    *(v9 + 8) = 0x80000001DF23DFA0;
    *(v9 + 16) = 0;
    *(v0 + 160) = 0xD00000000000001DLL;
    *(v0 + 168) = 0x80000001DF23DFA0;
    *(v0 + 176) = 0;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v11 = *(v0 + 8);

    v11(0);
    return;
  }

LABEL_11:
  v13 = *(v0 + 216);
  v12 = *(v0 + 224);
  v14 = *(v0 + 200);
  v15 = *(v0 + 208);
  v16 = *(v0 + 192);
  v17 = *(v0 + 83) & 1;
  *(v0 + 280) = v17;
  *(v0 + 16) = v16;
  *(v0 + 24) = v14;
  *(v0 + 32) = v15;
  *(v0 + 40) = v13;
  *(v0 + 48) = v12;
  *(v0 + 56) = v1;
  *(v0 + 64) = *(v0 + 240);
  *(v0 + 80) = v17;

  sub_1DF16573C(v12, v1);
  v18 = swift_task_alloc();
  *(v0 + 272) = v18;
  *v18 = v0;
  v18[1] = sub_1DF1E3BFC;

  sub_1DF1D16F0(v0 + 81, v0 + 16, v0 + 88);
}

uint64_t sub_1DF1E3BFC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 256);
    sub_1DF1DE1B0(*(v2 + 88), *(v2 + 96), *(v2 + 104));
    sub_1DF1BB258(v2 + 16);
    v4 = sub_1DF1E3EA0;
  }

  else
  {
    v3 = *(v2 + 256);
    sub_1DF1BB258(v2 + 16);
    v4 = sub_1DF1E3D30;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF1E3D30()
{
  v1 = *(v0 + 81);
  if (v1 <= 2)
  {
    v2 = 0x4764696C61766E69;
    v3 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v3 = 0xEC00000070756F72;
    }

    else
    {
      v2 = 0x4B64696C61766E69;
    }

    if (*(v0 + 81))
    {
      v4 = v2;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (*(v0 + 81))
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v5 = 0xEC00000065756C61;
    v4 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v5 = 0x80000001DF23CF10;
    v4 = 0xD000000000000011;
LABEL_15:
    v6 = *(v0 + 264);
    *v6 = v4;
    *(v6 + 8) = v5;
    *(v6 + 16) = 1;
    *(v0 + 136) = v4;
    *(v0 + 144) = v5;
    *(v0 + 152) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v7 = *(v0 + 8);
    v8 = 0;
    goto LABEL_16;
  }

  v7 = *(v0 + 8);
  v8 = *(v0 + 82) & 1;
LABEL_16:

  return v7(v8);
}

uint64_t sub_1DF1E3EA0()
{
  v1 = *(v0 + 264);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 112) = xmmword_1DF238200;
  *(v0 + 128) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1DF1E3F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 320) = v8;
  *(v9 + 328) = v13;
  *(v9 + 304) = v11;
  *(v9 + 312) = v12;
  *(v9 + 83) = a8;
  *(v9 + 288) = a6;
  *(v9 + 296) = a7;
  *(v9 + 272) = a4;
  *(v9 + 280) = a5;
  *(v9 + 256) = a2;
  *(v9 + 264) = a3;
  *(v9 + 248) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E3F80, v8, 0);
}

uint64_t sub_1DF1E3F80()
{
  v36 = v0;
  sub_1DF1CBE60();
  v1 = sub_1DF22A610();
  v3 = v2;
  *(v0 + 336) = v1;
  *(v0 + 344) = v2;

  v16 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_17;
    }

    v19 = *(v1 + 16);
    v18 = *(v1 + 24);
    v20 = __OFSUB__(v18, v19);
    v17 = v18 - v19;
    if (!v20)
    {
      goto LABEL_15;
    }

LABEL_21:
    __break(1u);
    return result;
  }

  if (!v16)
  {
    goto LABEL_17;
  }

  LODWORD(v17) = HIDWORD(v1) - v1;
  if (__OFSUB__(HIDWORD(v1), v1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v17 = v17;
LABEL_15:
  if (v17 > 0x400000)
  {
    sub_1DF22B300();

    v34 = 0xD00000000000001DLL;
    v35 = 0x80000001DF23DFA0;
    *(v0 + 240) = 0x400000;
    v21 = sub_1DF22B600();
    MEMORY[0x1E12CF820](v21);

    MEMORY[0x1E12CF820](0x2E736574796220, 0xE700000000000000);
    v22 = v34;
    v23 = v35;
    *(v0 + 208) = v34;
    *(v0 + 216) = v23;
    *(v0 + 224) = 0;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v25 = *(v0 + 336);
    v24 = *(v0 + 344);
    v26 = swift_allocError();
    *v27 = v22;
    *(v27 + 8) = v23;
    *(v27 + 16) = 0;
    sub_1DF1657C8(v25, v24);
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v5 = sub_1DF22A8C0();
    __swift_project_value_buffer(v5, qword_1ED8E92C0);
    v6 = v26;
    v7 = sub_1DF22A8A0();
    v8 = sub_1DF22B110();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_1DF22B670();
      v13 = sub_1DF160728(v11, v12, &v34);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DF15A000, v7, v8, "Error encoding value to Data: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12D0B40](v10, -1, -1);
      MEMORY[0x1E12D0B40](v9, -1, -1);
    }

    v14 = *(v0 + 328);
    *v14 = 0xD00000000000001FLL;
    *(v14 + 8) = 0x80000001DF23E040;
    *(v14 + 16) = 0;
    *(v0 + 112) = 0xD00000000000001FLL;
    *(v0 + 120) = 0x80000001DF23E040;
    *(v0 + 128) = 0;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();

    v15 = *(v0 + 8);

    return v15(0);
  }

LABEL_17:
  v28 = *(v0 + 264);
  v29 = *(v0 + 272);
  v31 = *(v0 + 248);
  v30 = *(v0 + 256);
  v32 = *(v0 + 83) & 1;
  *(v0 + 360) = v32;
  *(v0 + 16) = v31;
  *(v0 + 24) = v30;
  *(v0 + 32) = v28;
  *(v0 + 40) = v29;
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = *(v0 + 288);
  *(v0 + 80) = v32;

  sub_1DF16573C(v1, v3);
  v33 = swift_task_alloc();
  *(v0 + 352) = v33;
  *v33 = v0;
  v33[1] = sub_1DF1E43BC;

  return sub_1DF1D16F0(v0 + 81, v0 + 16, v0 + 136);
}

uint64_t sub_1DF1E43BC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 320);
    sub_1DF1DE1B0(*(v2 + 136), *(v2 + 144), *(v2 + 152));
    sub_1DF1BB258(v2 + 16);
    v4 = sub_1DF1E4818;
  }

  else
  {
    v3 = *(v2 + 320);
    sub_1DF1BB258(v2 + 16);
    v4 = sub_1DF1E44F0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF1E44F0()
{
  v23 = v0;
  v1 = *(v0 + 81);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = 0xEC00000065756C61;
      v3 = 0x5664696C61766E69;
    }

    else
    {
      if (v1 != 4)
      {
        v21 = *(v0 + 82);
        sub_1DF1657C8(*(v0 + 336), *(v0 + 344));
        v18 = *(v0 + 8);
        v19 = v21 & 1;
        goto LABEL_16;
      }

      v2 = 0x80000001DF23CF10;
      v3 = 0xD000000000000011;
    }
  }

  else if (*(v0 + 81))
  {
    if (v1 == 1)
    {
      v2 = 0xEC00000070756F72;
      v3 = 0x4764696C61766E69;
    }

    else
    {
      v2 = 0xEA00000000007965;
      v3 = 0x4B64696C61766E69;
    }
  }

  else
  {
    v2 = 0x80000001DF23CED0;
    v3 = 0xD000000000000010;
  }

  *(v0 + 184) = v3;
  *(v0 + 192) = v2;
  *(v0 + 200) = 1;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v6 = swift_allocError();
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = 1;
  sub_1DF1657C8(v5, v4);
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v8 = sub_1DF22A8C0();
  __swift_project_value_buffer(v8, qword_1ED8E92C0);
  v9 = v6;
  v10 = sub_1DF22A8A0();
  v11 = sub_1DF22B110();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_1DF22B670();
    v16 = sub_1DF160728(v14, v15, &v22);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1DF15A000, v10, v11, "Error encoding value to Data: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12D0B40](v13, -1, -1);
    MEMORY[0x1E12D0B40](v12, -1, -1);
  }

  v17 = *(v0 + 328);
  *v17 = 0xD00000000000001FLL;
  *(v17 + 8) = 0x80000001DF23E040;
  *(v17 + 16) = 0;
  *(v0 + 112) = 0xD00000000000001FLL;
  *(v0 + 120) = 0x80000001DF23E040;
  *(v0 + 128) = 0;
  swift_willThrowTypedImpl();

  v18 = *(v0 + 8);
  v19 = 0;
LABEL_16:

  return v18(v19);
}

uint64_t sub_1DF1E4818()
{
  v18 = v0;
  *(v0 + 160) = xmmword_1DF238200;
  *(v0 + 176) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = swift_allocError();
  *v4 = xmmword_1DF238200;
  *(v4 + 16) = 4;
  sub_1DF1657C8(v2, v1);
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v5 = sub_1DF22A8C0();
  __swift_project_value_buffer(v5, qword_1ED8E92C0);
  v6 = v3;
  v7 = sub_1DF22A8A0();
  v8 = sub_1DF22B110();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_1DF22B670();
    v13 = sub_1DF160728(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1DF15A000, v7, v8, "Error encoding value to Data: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12D0B40](v10, -1, -1);
    MEMORY[0x1E12D0B40](v9, -1, -1);
  }

  v14 = *(v0 + 328);
  *v14 = 0xD00000000000001FLL;
  *(v14 + 8) = 0x80000001DF23E040;
  *(v14 + 16) = 0;
  *(v0 + 112) = 0xD00000000000001FLL;
  *(v0 + 120) = 0x80000001DF23E040;
  *(v0 + 128) = 0;
  swift_willThrowTypedImpl();

  v15 = *(v0 + 8);

  return v15(0);
}

uint64_t sub_1DF1E4A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[18] = v5;
  v6[19] = a5;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E4AB0, v5, 0);
}

uint64_t sub_1DF1E4AB0()
{

  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_1DF1E4B6C;
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];

  return sub_1DF1D1A34((v0 + 2), v5, v3, v4, v2, (v0 + 5));
}

uint64_t sub_1DF1E4B6C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 144);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 40), *(v3 + 48), *(v3 + 56));

    v5 = sub_1DF1E38E8;
  }

  else
  {

    v5 = sub_1DF1E4CF4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1E4CF4()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v1 <= 2)
  {
    v4 = 0x4764696C61766E69;
    v5 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v5 = 0xEC00000070756F72;
    }

    else
    {
      v4 = 0x4B64696C61766E69;
    }

    if (*(v0 + 16))
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (*(v0 + 16))
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v7 = 0xEC00000065756C61;
    v6 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v7 = 0x80000001DF23CF10;
    v6 = 0xD000000000000011;
LABEL_15:
    v8 = *(v0 + 152);
    *v8 = v6;
    *(v8 + 8) = v7;
    *(v8 + 16) = 1;
    *(v0 + 88) = v6;
    *(v0 + 96) = v7;
    *(v0 + 104) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    sub_1DF18A0A4(v3, v2);
    v9 = *(v0 + 8);

    return v9();
  }

  v11 = *(v0 + 8);
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);

  return v11(v12, v13);
}

uint64_t sub_1DF1E4EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[11] = v7;
  v8[12] = v16;
  v8[9] = a6;
  v8[10] = a7;
  v8[8] = a1;
  v13 = swift_task_alloc();
  v8[13] = v13;
  *v13 = v8;
  v13[1] = sub_1DF1E4F74;

  return sub_1DF1E4A88(a2, a3, a4, a5, (v8 + 2));
}

uint64_t sub_1DF1E4F74(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 88);
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = v2;

  if (v2)
  {
    v6 = sub_1DF1F22B0;
  }

  else
  {
    v6 = sub_1DF1E0970;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF1E50A4(char a1, uint64_t a2)
{
  v3[49] = v2;
  v3[50] = a2;
  v5 = swift_task_alloc();
  v3[51] = v5;
  *v5 = v3;
  v5[1] = sub_1DF1E5148;

  return sub_1DF1D1E80((v3 + 27), a1, (v3 + 37));
}

uint64_t sub_1DF1E5148()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 392);
    sub_1DF1DE1B0(*(v2 + 296), *(v2 + 304), *(v2 + 312));
    v4 = sub_1DF1E55D8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 392);
    v4 = sub_1DF1E5270;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1DF1E5270()
{
  v1 = *(v0 + 216);
  if (v1 <= 2)
  {
    v2 = 0x4764696C61766E69;
    v3 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v3 = 0xEC00000070756F72;
    }

    else
    {
      v2 = 0x4B64696C61766E69;
    }

    if (*(v0 + 216))
    {
      v4 = v2;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (*(v0 + 216))
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v5 = 0xEC00000065756C61;
    v4 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v5 = 0x80000001DF23CF10;
    v4 = 0xD000000000000011;
LABEL_15:
    v6 = *(v0 + 400);
    *v6 = v4;
    *(v6 + 8) = v5;
    v7 = 1;
    *(v6 + 16) = 1;
    *(v0 + 368) = v4;
    v8 = 384;
    v9 = 376;
LABEL_16:
    *(v0 + v9) = v5;
    *(v0 + v8) = v7;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v10 = *(v0 + 8);

    return v10();
  }

  if (*(v0 + 288))
  {
    v5 = 0;
    v12 = *(v0 + 400);
    *v12 = xmmword_1DF2381D0;
    v7 = 4;
    *(v12 + 16) = 4;
    *(v0 + 344) = 2;
    v8 = 360;
    v9 = 352;
    goto LABEL_16;
  }

  v13 = *(v0 + 224);
  v14 = *(v0 + 232);
  v16 = *(v0 + 256);
  v15 = *(v0 + 264);
  v17 = *(v0 + 272);
  v21 = *(v0 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E418, &qword_1DF238418);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF238210;
  *(inited + 32) = 0x657A695378616DLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v13;
  *(inited + 56) = 0x746E756F4378616DLL;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = v14;
  strcpy((inited + 80), "maxExpiration");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_1DF22B750();
  strcpy((inited + 104), "currentCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  *(inited + 120) = v16;
  *(inited + 128) = 0x53746E6572727563;
  *(inited + 136) = 0xEB00000000657A69;
  *(inited + 144) = v15;
  *(inited + 152) = 0x657A69537379656BLL;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = v17;
  *(inited + 176) = 0x69537365756C6176;
  *(inited + 184) = 0xEA0000000000657ALL;
  *(inited + 192) = v21;
  v19 = sub_1DF18FC1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E420, &qword_1DF238420);
  swift_arrayDestroy();
  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_1DF1E55D8()
{
  v1 = *(v0 + 400);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 320) = xmmword_1DF238200;
  *(v0 + 336) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF1E566C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = v3;
  v4[23] = a3;
  v4[20] = a1;
  v4[21] = a2;
  v7 = swift_task_alloc();
  v4[24] = v7;
  *v7 = v4;
  v7[1] = sub_1DF1E5724;

  return sub_1DF1D22CC((v4 + 2), a1, a2, (v4 + 8));
}

uint64_t sub_1DF1E5724()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 176);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 64), *(v3 + 72), *(v3 + 80));
    v5 = sub_1DF1F22AC;
  }

  else
  {
    v5 = sub_1DF1E585C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1E585C()
{
  v26 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v1 != 3)
  {

    v4 = *&aInvalidtinvali[8 * v1];
    v5 = *&aInvalidtinvali[8 * v1 + 24];
    v6 = *(v0 + 184);
    *v6 = v4;
    *(v6 + 8) = v5;
    v7 = 1;
    *(v6 + 16) = 1;
    *(v0 + 136) = v4;
    v8 = 152;
    v9 = 144;
LABEL_9:
    *(v0 + v9) = v5;
    *(v0 + v8) = v7;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v15 = *(v0 + 8);
    v16 = 0;
    goto LABEL_10;
  }

  v3 = *(v0 + 17);
  if (v3 == 2)
  {

LABEL_8:
    v5 = 0;
    v14 = *(v0 + 184);
    *v14 = xmmword_1DF2381D0;
    v7 = 4;
    *(v14 + 16) = 4;
    *(v0 + 112) = 2;
    v8 = 128;
    v9 = 120;
    goto LABEL_9;
  }

  if (!v2)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v10 = *(v0 + 168);
    v11 = *(v0 + 176);
    v12 = *(v0 + 160);
    *(v11 + 160) = *(v0 + 24);
    *(v11 + 168) = v2;

    swift_beginAccess();

    v13 = sub_1DF1EA9A8(&v25, v12, v10);
    swift_endAccess();
  }

  else
  {

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v18 = sub_1DF22A8C0();
    __swift_project_value_buffer(v18, qword_1ED8E92C0);

    v19 = sub_1DF22A8A0();
    v20 = sub_1DF22B110();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = *(v0 + 160);
      v21 = *(v0 + 168);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1DF160728(v22, v21, &v25);
      _os_log_impl(&dword_1DF15A000, v19, v20, "Failed to register publisher for topic '%s'", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1E12D0B40](v24, -1, -1);
      MEMORY[0x1E12D0B40](v23, -1, -1);
    }

    v13 = 0;
  }

  v15 = *(v0 + 8);
  v16 = v13 & 1;
LABEL_10:

  return v15(v16);
}

uint64_t sub_1DF1E5B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[33] = v5;
  v6[34] = a5;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E5B50, v5, 0);
}

uint64_t sub_1DF1E5B50()
{
  v1 = *(v0 + 256) >> 62;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v6 = *(*(v0 + 248) + 16);
      v7 = *(*(v0 + 248) + 24);
      v4 = __OFSUB__(v7, v6);
      v5 = v7 - v6;
      if (!v4)
      {
LABEL_7:
        if (v5 < 0x400000)
        {
          goto LABEL_8;
        }

        if (qword_1ED8E7530 == -1)
        {
LABEL_18:
          v29 = sub_1DF22A8C0();
          __swift_project_value_buffer(v29, qword_1ED8E92C0);
          v30 = sub_1DF22A8A0();
          v31 = sub_1DF22B110();
          if (!os_log_type_enabled(v30, v31))
          {
            goto LABEL_31;
          }

          v32 = swift_slowAlloc();
          *v32 = 0;
          v33 = "Failed to publish message, data size exceeds maximum allowed size.";
          goto LABEL_24;
        }

LABEL_37:
        swift_once();
        goto LABEL_18;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  else if (v1)
  {
    v2 = *(v0 + 248);
    v3 = *(v0 + 252);
    v4 = __OFSUB__(v3, v2);
    LODWORD(v5) = v3 - v2;
    if (!v4)
    {
      v5 = v5;
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_8:
  v8 = *(v0 + 264);
  if (*(v8 + 168))
  {
    v9 = *(v0 + 232);
    v10 = *(v0 + 240);
    swift_beginAccess();
    v11 = *(v8 + 176);

    LOBYTE(v10) = sub_1DF1E6954(v9, v10, v11);

    if (v10)
    {
      if (sub_1DF1CB304())
      {
        v12 = *(v0 + 264);
        v13 = v12[21];
        if (v13)
        {
          v14 = v12[20];
          v16 = *(v0 + 232);
          v15 = *(v0 + 240);
          swift_beginAccess();
          v17 = v12[22];

          LOBYTE(v15) = sub_1DF1E6954(v16, v15, v17);

          if (v15)
          {
            v19 = *(v0 + 248);
            v18 = *(v0 + 256);
            v43 = v14;
            v20 = *(v0 + 240);
            v44 = *(v0 + 232);
            v42 = mach_absolute_time();
            v21 = *(sub_1DF1C35C8() + 40);

            sub_1DF16573C(v19, v18);

            sub_1DF16573C(v19, v18);
            *(v0 + 16) = v21();
            *(v0 + 24) = v22;
            *(v0 + 32) = v42;
            *(v0 + 40) = v43;
            *(v0 + 48) = v13;
            *(v0 + 56) = v44;
            *(v0 + 64) = v20;
            *(v0 + 72) = v19;
            v23 = *(v0 + 16);
            *(v0 + 104) = *(v0 + 32);
            v24 = *(v0 + 64);
            *(v0 + 120) = *(v0 + 48);
            *(v0 + 136) = v24;
            *(v0 + 80) = v18;
            *(v0 + 152) = *(v0 + 80);
            *(v0 + 88) = v23;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E428, &unk_1DF238440);
            sub_1DF164BEC(&qword_1ECE0E430, &qword_1ECE0E428, &unk_1DF238440, &protocol conformance descriptor for EnvelopeMessage<A>);
            sub_1DF22A940();
            v40 = *(v0 + 248);
            v39 = *(v0 + 256);

            sub_1DF1657C8(v40, v39);

            sub_1DF16184C(v0 + 16, &qword_1ECE0E428, &unk_1DF238440);
            v41 = 1;
LABEL_32:
            v38 = *(v0 + 8);

            return v38(v41);
          }
        }

        if (qword_1ED8E7530 != -1)
        {
          swift_once();
        }

        v35 = sub_1DF22A8C0();
        __swift_project_value_buffer(v35, qword_1ED8E92C0);
        v30 = sub_1DF22A8A0();
        v36 = sub_1DF22B100();
        if (os_log_type_enabled(v30, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_1DF15A000, v30, v36, "Failed to publish message, no publisherId or topic registered.", v37, 2u);
          MEMORY[0x1E12D0B40](v37, -1, -1);
        }

LABEL_31:

        v41 = 0;
        goto LABEL_32;
      }

      if (qword_1ED8E7530 != -1)
      {
        swift_once();
      }

      v34 = sub_1DF22A8C0();
      __swift_project_value_buffer(v34, qword_1ED8E92C0);
      v30 = sub_1DF22A8A0();
      v31 = sub_1DF22B110();
      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_31;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "Failed to publish message, connection is closed.";
LABEL_24:
      _os_log_impl(&dword_1DF15A000, v30, v31, v33, v32, 2u);
      MEMORY[0x1E12D0B40](v32, -1, -1);
      goto LABEL_31;
    }
  }

  v25 = swift_task_alloc();
  *(v0 + 280) = v25;
  *v25 = v0;
  v25[1] = sub_1DF1E6280;
  v27 = *(v0 + 232);
  v26 = *(v0 + 240);

  return sub_1DF1E566C(v27, v26, v0 + 208);
}

uint64_t sub_1DF1E6280()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = sub_1DF1E6924;
  }

  else
  {
    v4 = sub_1DF1E6398;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF1E6398()
{
  v1 = *(v0 + 288);
  if (!sub_1DF1CB304())
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v26 = sub_1DF22A8C0();
    __swift_project_value_buffer(v26, qword_1ED8E92C0);
    v17 = sub_1DF22A8A0();
    v27 = sub_1DF22B110();
    if (os_log_type_enabled(v17, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1DF15A000, v17, v27, "Failed to publish message, connection is closed.", v28, 2u);
      MEMORY[0x1E12D0B40](v28, -1, -1);
    }

    goto LABEL_19;
  }

  v2 = *(v0 + 264);
  v3 = v2[21];
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = v2[20];
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  swift_beginAccess();
  v7 = v2[22];

  LOBYTE(v5) = sub_1DF1E6954(v6, v5, v7);

  if ((v5 & 1) == 0)
  {

LABEL_14:
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v29 = sub_1DF22A8C0();
    __swift_project_value_buffer(v29, qword_1ED8E92C0);
    v17 = sub_1DF22A8A0();
    v30 = sub_1DF22B100();
    if (os_log_type_enabled(v17, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DF15A000, v17, v30, "Failed to publish message, no publisherId or topic registered.", v31, 2u);
      MEMORY[0x1E12D0B40](v31, -1, -1);
    }

    goto LABEL_19;
  }

  v9 = *(v0 + 248);
  v8 = *(v0 + 256);
  v38 = v4;
  v10 = *(v0 + 240);
  v39 = *(v0 + 232);
  v37 = mach_absolute_time();
  v11 = *(sub_1DF1C35C8() + 40);

  sub_1DF16573C(v9, v8);

  sub_1DF16573C(v9, v8);
  *(v0 + 16) = v11();
  *(v0 + 24) = v12;
  *(v0 + 32) = v37;
  *(v0 + 40) = v38;
  *(v0 + 48) = v3;
  *(v0 + 56) = v39;
  *(v0 + 64) = v10;
  *(v0 + 72) = v9;
  v13 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v14 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v14;
  *(v0 + 80) = v8;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E428, &unk_1DF238440);
  sub_1DF164BEC(&qword_1ECE0E430, &qword_1ECE0E428, &unk_1DF238440, &protocol conformance descriptor for EnvelopeMessage<A>);
  sub_1DF22A940();
  if (v1)
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v15 = sub_1DF22A8C0();
    __swift_project_value_buffer(v15, qword_1ED8E92C0);
    v16 = v1;
    v17 = sub_1DF22A8A0();
    v18 = sub_1DF22B110();

    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 248);
    v20 = *(v0 + 256);
    if (!v19)
    {

      sub_1DF1657C8(v21, v20);
      sub_1DF16184C(v0 + 16, &qword_1ECE0E428, &unk_1DF238440);

      goto LABEL_20;
    }

    v22 = swift_slowAlloc();
    v40 = v20;
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = v1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v25;
    *v23 = v25;
    _os_log_impl(&dword_1DF15A000, v17, v18, "Failed to publish message: %@", v22, 0xCu);
    sub_1DF16184C(v23, &qword_1ECE0C7E8, &qword_1DF230550);
    MEMORY[0x1E12D0B40](v23, -1, -1);
    MEMORY[0x1E12D0B40](v22, -1, -1);

    sub_1DF1657C8(v21, v40);
    sub_1DF16184C(v0 + 16, &qword_1ECE0E428, &unk_1DF238440);

LABEL_19:
LABEL_20:
    v32 = 0;
    goto LABEL_21;
  }

  v36 = *(v0 + 248);
  v35 = *(v0 + 256);

  sub_1DF1657C8(v36, v35);

  sub_1DF16184C(v0 + 16, &qword_1ECE0E428, &unk_1DF238440);
  v32 = 1;
LABEL_21:
  v33 = *(v0 + 8);

  return v33(v32);
}

uint64_t sub_1DF1E6924()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);
  *v1 = *(v0 + 208);
  *(v1 + 16) = v2;
  return (*(v0 + 8))(0);
}

uint64_t sub_1DF1E6954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DF22B6C0();
  sub_1DF22AD20();
  v6 = sub_1DF22B6F0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1DF22B620() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DF1E6A4C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = a1, sub_1DF22B6C0(), v4 = v3, sub_1DF228924(v37, v3), v5 = sub_1DF22B6F0(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v36 = ~v6;
    v8 = 0xEC00000064657669;
    v9 = 0xEB00000000646574;
    v10 = v4;
    v35 = v4;
    while (1)
    {
      v11 = *(*(a2 + 48) + v7);
      if (v11 <= 4)
      {
        v14 = 0xD00000000000001ALL;
        if (v11 == 3)
        {
          v15 = 0x80000001DF23D000;
        }

        else
        {
          v15 = 0x80000001DF23D020;
        }

        if (v11 == 2)
        {
          v15 = 0x80000001DF23CFE0;
        }

        else
        {
          v14 = 0xD000000000000014;
        }

        if (*(*(a2 + 48) + v7))
        {
          v16 = 0x656365526B736154;
        }

        else
        {
          v16 = 0x616572436B736154;
        }

        if (*(*(a2 + 48) + v7))
        {
          v17 = v8;
        }

        else
        {
          v17 = v9;
        }

        if (*(*(a2 + 48) + v7) <= 1u)
        {
          v12 = v16;
        }

        else
        {
          v12 = v14;
        }

        if (*(*(a2 + 48) + v7) <= 1u)
        {
          v13 = v17;
        }

        else
        {
          v13 = v15;
        }
      }

      else if (*(*(a2 + 48) + v7) > 7u)
      {
        if (v11 == 8)
        {
          v13 = 0xE800000000000000;
          v12 = 0x6465727265666544;
        }

        else if (v11 == 9)
        {
          v12 = 0x6574656C706D6F43;
          v13 = 0xE900000000000064;
        }

        else
        {
          v13 = 0xE600000000000000;
          v12 = 0x64656C696146;
        }
      }

      else if (v11 == 5)
      {
        v12 = 0xD00000000000001BLL;
        v13 = 0x80000001DF23D040;
      }

      else if (v11 == 6)
      {
        v12 = 0x7261745320746F4ELL;
        v13 = v9;
      }

      else
      {
        v13 = 0xE700000000000000;
        v12 = 0x676E696E6E7552;
      }

      v18 = v10;
      v19 = 0x6574656C706D6F43;
      if (v10 != 9)
      {
        v19 = 0x64656C696146;
      }

      v20 = 0xE900000000000064;
      if (v10 != 9)
      {
        v20 = 0xE600000000000000;
      }

      if (v10 == 8)
      {
        v19 = 0x6465727265666544;
        v20 = 0xE800000000000000;
      }

      v21 = 0xD00000000000001BLL;
      v22 = 0x7261745320746F4ELL;
      if (v10 != 6)
      {
        v22 = 0x676E696E6E7552;
      }

      v23 = 0xE700000000000000;
      if (v18 == 6)
      {
        v23 = v9;
      }

      if (v18 != 5)
      {
        v21 = v22;
      }

      v24 = 0x80000001DF23D040;
      if (v18 != 5)
      {
        v24 = v23;
      }

      if (v18 <= 7)
      {
        v19 = v21;
        v20 = v24;
      }

      v25 = 0xD00000000000001ALL;
      if (v18 == 3)
      {
        v26 = 0x80000001DF23D000;
      }

      else
      {
        v26 = 0x80000001DF23D020;
      }

      if (v18 == 2)
      {
        v26 = 0x80000001DF23CFE0;
      }

      else
      {
        v25 = 0xD000000000000014;
      }

      if (v18)
      {
        v27 = 0x656365526B736154;
      }

      else
      {
        v27 = 0x616572436B736154;
      }

      if (v18)
      {
        v28 = v8;
      }

      else
      {
        v28 = v9;
      }

      if (v18 <= 1)
      {
        v25 = v27;
        v26 = v28;
      }

      v29 = v18 <= 4 ? v25 : v19;
      v30 = v18 <= 4 ? v26 : v20;
      if (v12 == v29 && v13 == v30)
      {
        break;
      }

      v31 = v9;
      v32 = v8;
      v33 = sub_1DF22B620();

      if ((v33 & 1) == 0)
      {
        v7 = (v7 + 1) & v36;
        v10 = v35;
        v8 = v32;
        v9 = v31;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v33 & 1;
    }

    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  return v33 & 1;
}

uint64_t sub_1DF1E6DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[17] = v7;
  v8[18] = a7;
  v8[15] = a4;
  v8[16] = a6;
  v8[13] = a2;
  v8[14] = a3;
  v8[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E6E24, v7, 0);
}

uint64_t sub_1DF1E6E24()
{
  sub_1DF1CBE60();
  v1 = sub_1DF22A610();
  v3 = v2;
  v0[19] = v1;
  v0[20] = v2;

  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_1DF1E70E8;
  v6 = v0[12];
  v5 = v0[13];

  return sub_1DF1E5B28(v6, v5, v1, v3, (v0 + 8));
}

uint64_t sub_1DF1E70E8(char a1)
{
  v4 = *v2;

  v5 = *(v4 + 136);
  if (v1)
  {
    v6 = sub_1DF1E727C;
  }

  else
  {
    *(v4 + 57) = a1 & 1;
    v6 = sub_1DF1E7214;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF1E7214()
{
  sub_1DF1657C8(*(v0 + 152), *(v0 + 160));
  v1 = *(v0 + 8);
  v2 = *(v0 + 57);

  return v1(v2);
}

uint64_t sub_1DF1E727C()
{
  v21 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  sub_1DF1DC5C8();
  v6 = swift_allocError();
  *v7 = v3;
  *(v7 + 8) = v4;
  *(v7 + 16) = v5;
  sub_1DF1657C8(v2, v1);
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v8 = sub_1DF22A8C0();
  __swift_project_value_buffer(v8, qword_1ED8E92C0);
  v9 = v6;
  v10 = sub_1DF22A8A0();
  v11 = sub_1DF22B110();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_1DF22B670();
    v16 = sub_1DF160728(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1DF15A000, v10, v11, "Error encoding value to Data: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12D0B40](v13, -1, -1);
    MEMORY[0x1E12D0B40](v12, -1, -1);
  }

  v17 = *(v0 + 144);
  *v17 = 0xD00000000000001FLL;
  *(v17 + 8) = 0x80000001DF23E040;
  *(v17 + 16) = 0;
  *(v0 + 40) = 0xD00000000000001FLL;
  *(v0 + 48) = 0x80000001DF23E040;
  *(v0 + 56) = 0;
  swift_willThrowTypedImpl();

  v18 = *(v0 + 8);

  return v18(0);
}

uint64_t sub_1DF1E74BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = v3;
  v4[23] = a3;
  v4[20] = a1;
  v4[21] = a2;
  v7 = swift_task_alloc();
  v4[24] = v7;
  *v7 = v4;
  v7[1] = sub_1DF1E7574;

  return sub_1DF1D2714((v4 + 2), a1, a2, (v4 + 8));
}

uint64_t sub_1DF1E7574()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 176);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 64), *(v3 + 72), *(v3 + 80));
    v5 = sub_1DF1E7AE0;
  }

  else
  {
    v5 = sub_1DF1E76AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1E76AC()
{
  v33 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v1 != 3)
  {

    v4 = *&aInvalidtinvali[8 * v1];
    v5 = *&aInvalidtinvali[8 * v1 + 24];
    v6 = *(v0 + 184);
    *v6 = v4;
    *(v6 + 8) = v5;
    v7 = 1;
    *(v6 + 16) = 1;
    *(v0 + 136) = v4;
    v8 = 152;
    v9 = 144;
LABEL_12:
    *(v0 + v9) = v5;
    *(v0 + v8) = v7;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v25 = *(v0 + 8);
    v26 = 0;
    goto LABEL_13;
  }

  v3 = *(v0 + 17);
  if (v3 == 2)
  {

LABEL_11:
    v5 = 0;
    v24 = *(v0 + 184);
    *v24 = xmmword_1DF2381D0;
    v7 = 4;
    *(v24 + 16) = 4;
    *(v0 + 112) = 2;
    v8 = 128;
    v9 = 120;
    goto LABEL_12;
  }

  if (!v2)
  {
    goto LABEL_11;
  }

  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  if ((v3 & 1) == 0)
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v28 = sub_1DF22A8C0();
    __swift_project_value_buffer(v28, qword_1ED8E92C0);

    v16 = sub_1DF22A8A0();
    v17 = sub_1DF22B110();

    if (os_log_type_enabled(v16, v17))
    {
      v30 = *(v0 + 160);
      v29 = *(v0 + 168);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_1DF160728(v30, v29, &v32);
      *(v20 + 12) = 2080;
      v31 = sub_1DF160728(v10, v11, &v32);

      *(v20 + 14) = v31;
      v23 = "Already subscribed to %s with id: %s";
      goto LABEL_20;
    }

LABEL_21:

    goto LABEL_22;
  }

  v12 = *(v0 + 168);
  v13 = *(v0 + 176);
  v14 = *(v0 + 160);
  *(v13 + 184) = v10;
  *(v13 + 192) = v2;

  swift_beginAccess();

  sub_1DF1EA9A8(&v32, v14, v12);
  swift_endAccess();

  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v15 = sub_1DF22A8C0();
  __swift_project_value_buffer(v15, qword_1ED8E92C0);

  v16 = sub_1DF22A8A0();
  v17 = sub_1DF22B0F0();

  if (!os_log_type_enabled(v16, v17))
  {
    goto LABEL_21;
  }

  v19 = *(v0 + 160);
  v18 = *(v0 + 168);
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v32 = v21;
  *v20 = 136315394;
  *(v20 + 4) = sub_1DF160728(v19, v18, &v32);
  *(v20 + 12) = 2080;
  v22 = sub_1DF160728(v10, v11, &v32);

  *(v20 + 14) = v22;
  v23 = "Subscribed to %s with id: %s";
LABEL_20:
  _os_log_impl(&dword_1DF15A000, v16, v17, v23, v20, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1E12D0B40](v21, -1, -1);
  MEMORY[0x1E12D0B40](v20, -1, -1);

LABEL_22:
  v25 = *(v0 + 8);
  v26 = v3 & 1;
LABEL_13:

  return v25(v26);
}

uint64_t sub_1DF1E7AE0()
{
  v1 = *(v0 + 184);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 88) = xmmword_1DF238200;
  *(v0 + 104) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1DF1E7B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = v3;
  v4[27] = a3;
  v4[24] = a1;
  v4[25] = a2;
  v5 = sub_1DF22A9E0();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  v6 = sub_1DF22AA00();
  v4[31] = v6;
  v4[32] = *(v6 - 8);
  v4[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF1E7C9C, v3, 0);
}

uint64_t sub_1DF1E7C9C()
{
  v17 = v0;
  v1 = v0[26];
  v2 = *(v1 + 184);
  v0[34] = v2;
  v3 = *(v1 + 192);
  v0[35] = v3;
  if (v3)
  {
    swift_bridgeObjectRetain_n();

    v4 = swift_task_alloc();
    v0[36] = v4;
    *v4 = v0;
    v4[1] = sub_1DF1E7EFC;
    v5 = v0[25];
    v6 = v0[24];

    return sub_1DF1D2A44(v0 + 105, v6, v5, v2, v3, (v0 + 11));
  }

  else
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v8 = sub_1DF22A8C0();
    __swift_project_value_buffer(v8, qword_1ED8E92C0);

    v9 = sub_1DF22A8A0();
    v10 = sub_1DF22B110();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = v0[24];
      v11 = v0[25];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1DF160728(v12, v11, &v16);
      _os_log_impl(&dword_1DF15A000, v9, v10, "Unsubscribing from %s but no subscription found", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12D0B40](v14, -1, -1);
      MEMORY[0x1E12D0B40](v13, -1, -1);
    }

    v15 = v0[1];

    return v15(0);
  }
}

uint64_t sub_1DF1E7EFC()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 208);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 88), *(v3 + 96), *(v3 + 104));
    swift_bridgeObjectRelease_n();

    v5 = sub_1DF1E872C;
  }

  else
  {

    v5 = sub_1DF1E8088;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1E8088()
{
  v48 = v0;
  v1 = *(v0 + 105);
  if (v1 != 3)
  {

    v8 = *&aInvalidtinvali[8 * v1];
    v4 = *&aInvalidtinvali[8 * v1 + 24];
    v9 = *(v0 + 216);
    *v9 = v8;
    *(v9 + 8) = v4;
    v5 = 1;
    *(v9 + 16) = 1;
    *(v0 + 160) = v8;
    v6 = 176;
    v7 = 168;
    goto LABEL_5;
  }

  v2 = *(v0 + 106);
  if (v2 == 2)
  {
    v3 = *(v0 + 216);

    v4 = 0;
    *v3 = xmmword_1DF2381D0;
    v5 = 4;
    *(v3 + 16) = 4;
    *(v0 + 136) = 2;
    v6 = 152;
    v7 = 144;
LABEL_5:
    *(v0 + v7) = v4;
    *(v0 + v6) = v5;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();

    v10 = *(v0 + 8);
    v11 = 0;
    goto LABEL_19;
  }

  if (v2)
  {
    v46 = *(v0 + 106);
    v12 = *(v0 + 264);
    v13 = *(v0 + 240);
    v44 = *(v0 + 256);
    v45 = *(v0 + 248);
    v14 = *(v0 + 224);
    v43 = *(v0 + 232);
    v15 = *(v0 + 200);
    v16 = *(v0 + 192);
    swift_beginAccess();
    sub_1DF1ECC90(v16, v15);
    swift_endAccess();

    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = v16;
    v18[4] = v15;
    *(v0 + 48) = sub_1DF1ECFB0;
    *(v0 + 56) = v18;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1DF1E87DC;
    *(v0 + 40) = &block_descriptor_1;
    v19 = _Block_copy((v0 + 16));

    sub_1DF22A9F0();
    *(v0 + 184) = MEMORY[0x1E69E7CC0];
    sub_1DF1F2214(&qword_1ECE0E438, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E440, &unk_1DF238470);
    sub_1DF164BEC(&qword_1ECE0E448, &qword_1ECE0E440, &unk_1DF238470, MEMORY[0x1E69E6328]);
    sub_1DF22B220();
    MEMORY[0x1E12CFC00](0, v12, v13, v19);
    _Block_release(v19);
    (*(v43 + 8))(v13, v14);
    (*(v44 + 8))(v12, v45);

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v20 = sub_1DF22A8C0();
    __swift_project_value_buffer(v20, qword_1ED8E92C0);

    v21 = sub_1DF22A8A0();
    v22 = sub_1DF22B0F0();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 280);
    if (v23)
    {
      v25 = *(v0 + 272);
      v27 = *(v0 + 192);
      v26 = *(v0 + 200);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_1DF160728(v27, v26, &v47);
      *(v28 + 12) = 2080;
      v30 = sub_1DF160728(v25, v24, &v47);

      *(v28 + 14) = v30;
      _os_log_impl(&dword_1DF15A000, v21, v22, "Unsubscribed from %s with id: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D0B40](v29, -1, -1);
      MEMORY[0x1E12D0B40](v28, -1, -1);
    }

    else
    {
    }

    LOBYTE(v2) = v46;
  }

  else
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v31 = sub_1DF22A8C0();
    __swift_project_value_buffer(v31, qword_1ED8E92C0);

    v32 = sub_1DF22A8A0();
    v33 = sub_1DF22B110();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 280);
    if (v34)
    {
      v36 = *(v0 + 272);
      v38 = *(v0 + 192);
      v37 = *(v0 + 200);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47 = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_1DF160728(v38, v37, &v47);
      *(v39 + 12) = 2080;
      v41 = sub_1DF160728(v36, v35, &v47);

      *(v39 + 14) = v41;
      _os_log_impl(&dword_1DF15A000, v32, v33, "Failed to unsubscribe to %s with id: %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D0B40](v40, -1, -1);
      MEMORY[0x1E12D0B40](v39, -1, -1);
    }

    else
    {
    }
  }

  v10 = *(v0 + 8);
  v11 = v2 & 1;
LABEL_19:

  return v10(v11);
}

uint64_t sub_1DF1E872C()
{
  v1 = *(v0 + 216);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 112) = xmmword_1DF238200;
  *(v0 + 128) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1DF1E87DC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1DF1E8820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = v5;
  v6[13] = a5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E450, &unk_1DF238480);
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[17] = v10;
  *v10 = v6;
  v10[1] = sub_1DF1E893C;

  return sub_1DF1E74BC(a2, a3, (v6 + 2));
}

uint64_t sub_1DF1E893C(char a1)
{
  v4 = *v2;

  v5 = *(v4 + 96);
  if (v1)
  {
    v6 = sub_1DF1E8CC8;
  }

  else
  {
    *(v4 + 33) = a1 & 1;
    v6 = sub_1DF1E8A68;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF1E8A68()
{
  v16 = v0;
  if (*(v0 + 33))
  {
    v1 = *(v0 + 96);
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    (*(*(v0 + 120) + 16))(*(v0 + 128), *(v0 + 88), *(v0 + 112));
    v4 = swift_task_alloc();
    v4[2] = v1;
    v4[3] = v3;
    v4[4] = v2;
    sub_1DF22B000();

    v5 = *(v0 + 8);
  }

  else
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v6 = sub_1DF22A8C0();
    __swift_project_value_buffer(v6, qword_1ED8E92C0);

    v7 = sub_1DF22A8A0();
    v8 = sub_1DF22B110();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = *(v0 + 72);
      v9 = *(v0 + 80);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1DF160728(v10, v9, &v15);
      _os_log_impl(&dword_1DF15A000, v7, v8, "Already subscribed to %s, async stream cannot be created.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12D0B40](v12, -1, -1);
      MEMORY[0x1E12D0B40](v11, -1, -1);
    }

    v13 = *(v0 + 104);
    *v13 = xmmword_1DF238220;
    *(v13 + 16) = 4;
    *(v0 + 40) = xmmword_1DF238220;
    *(v0 + 56) = 4;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();

    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_1DF1E8CC8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DF1E8D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v25 = a3;
  v27 = a1;
  v29 = sub_1DF22A9E0();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1DF22AA00();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v26 = a2;
  v24 = *(a2 + 128);
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v12 + 16))(v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = a3;
  *(v17 + 4) = v32;
  (*(v12 + 32))(&v17[v16], v14, v11);
  aBlock[4] = sub_1DF1F08EC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF1E87DC;
  aBlock[3] = &block_descriptor_154;
  v18 = _Block_copy(aBlock);

  sub_1DF22A9F0();
  v33 = MEMORY[0x1E69E7CC0];
  sub_1DF1F2214(&qword_1ECE0E438, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E440, &unk_1DF238470);
  sub_1DF164BEC(&qword_1ECE0E448, &qword_1ECE0E440, &unk_1DF238470, MEMORY[0x1E69E6328]);
  v19 = v29;
  sub_1DF22B220();
  MEMORY[0x1E12CFC00](0, v10, v8, v18);
  _Block_release(v18);
  (*(v31 + 8))(v8, v19);
  (*(v28 + 8))(v10, v30);

  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v22 = v25;
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v32;

  return sub_1DF22AFD0();
}

uint64_t sub_1DF1E91BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD48, &qword_1DF2387E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13[-v8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
    v12 = *(v11 - 8);
    (*(v12 + 16))(v9, a4, v11);
    (*(v12 + 56))(v9, 0, 1, v11);
    swift_beginAccess();

    sub_1DF167800(v9, a2, a3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1DF1E9350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4A0, &qword_1DF23A430);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_1DF22A9E0();
  v38 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DF22AA00();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + 128);
    v35 = v10;
    v36 = v18;

    v19 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v20 = swift_allocObject();
    v34 = v19;
    v20[2] = v19;
    v20[3] = a3;
    v20[4] = a4;
    aBlock[4] = sub_1DF1F22F0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DF1E87DC;
    aBlock[3] = &block_descriptor_165;
    v21 = _Block_copy(aBlock);
    v37 = a3;
    v33 = v21;

    sub_1DF22A9F0();
    v39 = MEMORY[0x1E69E7CC0];
    v31 = sub_1DF1F2214(&qword_1ECE0E438, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v32 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E440, &unk_1DF238470);
    v22 = v38;
    v23 = v16;
    sub_1DF164BEC(&qword_1ECE0E448, &qword_1ECE0E440, &unk_1DF238470, MEMORY[0x1E69E6328]);
    v24 = v35;
    sub_1DF22B220();
    v25 = v33;
    v26 = v36;
    MEMORY[0x1E12CFC00](0, v23, v12, v33);
    v27 = v25;
    a3 = v37;
    _Block_release(v27);

    (*(v22 + 8))(v12, v24);
    (*(v14 + 8))(v23, v32);
  }

  v28 = sub_1DF22AFC0();
  (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = a2;
  v29[5] = a3;
  v29[6] = a4;

  sub_1DF1E9C74(0, 0, v9, &unk_1DF2387D8, v29);
}

uint64_t sub_1DF1E97D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD48, &qword_1DF2387E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10[-v6];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_1DF17582C(a2, a3, v7);
    sub_1DF16184C(v7, &qword_1ECE0CD48, &qword_1DF2387E0);
    swift_endAccess();
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    return sub_1DF16184C(v7, &qword_1ECE0CD48, &qword_1DF2387E0);
  }
}

uint64_t sub_1DF1E9940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E9964, 0, 0);
}

uint64_t sub_1DF1E9964()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_1DF1E9A58;
    v4 = v0[9];
    v3 = v0[10];

    return sub_1DF1E7B7C(v4, v3, (v0 + 5));
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1DF1E9A58()
{

  if (v0)
  {
    v1 = sub_1DF1E9BCC;
  }

  else
  {
    v1 = sub_1DF1E9B68;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1DF1E9B68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF1E9BCC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_1DF1DC5C8();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DF1E9C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4A0, &qword_1DF23A430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1DF17A6A8(a3, v22 - v9, &qword_1ECE0E4A0, &qword_1DF23A430);
  v11 = sub_1DF22AFC0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1DF16184C(v10, &qword_1ECE0E4A0, &qword_1DF23A430);
  }

  else
  {
    sub_1DF22AFB0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1DF22AF90();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1DF22ACF0() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1DF16184C(a3, &qword_1ECE0E4A0, &qword_1DF23A430);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DF16184C(a3, &qword_1ECE0E4A0, &qword_1DF23A430);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1DF1E9F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = v3;
  v4[19] = a3;
  v4[17] = a1;
  v6 = swift_task_alloc();
  v4[20] = v6;
  *v6 = v4;
  v6[1] = sub_1DF1E9FC8;

  return sub_1DF1D2C4C((v4 + 2), a2, (v4 + 5));
}

uint64_t sub_1DF1E9FC8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 144);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 40), *(v3 + 48), *(v3 + 56));
    v5 = sub_1DF1E38E8;
  }

  else
  {
    v5 = sub_1DF1EA100;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1EA100()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (v1 == 3)
  {
    if (v2)
    {
      v4 = *(v0 + 136);
      *v4 = v2;
      v4[1] = v3;
      v5 = *(v0 + 8);
      goto LABEL_7;
    }

    v7 = 0;
    v12 = *(v0 + 152);
    *v12 = xmmword_1DF2381D0;
    v9 = 4;
    *(v12 + 16) = 4;
    *(v0 + 88) = 2;
    v10 = 104;
    v11 = 96;
  }

  else
  {
    sub_1DF1BD204(v2, v3);
    v6 = *&aInvalidtinvali[8 * v1];
    v7 = *&aInvalidtinvali[8 * v1 + 24];
    v8 = *(v0 + 152);
    *v8 = v6;
    *(v8 + 8) = v7;
    v9 = 1;
    *(v8 + 16) = 1;
    *(v0 + 112) = v6;
    v10 = 128;
    v11 = 120;
  }

  *(v0 + v11) = v7;
  *(v0 + v10) = v9;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v5 = *(v0 + 8);
LABEL_7:

  return v5();
}

uint64_t MLHostClient.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MLHostClient.__deallocating_deinit()
{
  MLHostClient.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF1EA2C0(uint64_t a1, unint64_t a2)
{
  v29[5] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_1DF1657C8(a1, a2);
      v7 = sub_1DF22AA10();
      sub_1DF1F2214(&qword_1ECE0E6D8, 255, MEMORY[0x1E6966370], MEMORY[0x1E6966378]);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E6966368], v7);
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29[3] = MEMORY[0x1E6969080];
  v29[4] = MEMORY[0x1E6969078];
  v29[0] = a1;
  v29[1] = a2;
  v10 = __swift_project_boxed_opaque_existential_1(v29, MEMORY[0x1E6969080]);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v27, 0, 14);
      v15 = v27;
      v14 = v27;
      goto LABEL_33;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = sub_1DF22A570();
    if (v18)
    {
      v19 = sub_1DF22A5A0();
      v11 = v16 - v19;
      if (__OFSUB__(v16, v19))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 += v11;
    }

    v5 = __OFSUB__(v17, v16);
    v20 = v17 - v16;
    if (!v5)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v13)
  {
LABEL_21:
    v21 = v11;
    v22 = v11 >> 32;
    v20 = v22 - v21;
    if (v22 >= v21)
    {
      v18 = sub_1DF22A570();
      if (!v18)
      {
LABEL_25:
        v24 = sub_1DF22A590();
        if (v24 >= v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = v24;
        }

        v26 = (v25 + v18);
        if (v18)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v15 = v18;
        goto LABEL_33;
      }

      v23 = sub_1DF22A5A0();
      if (!__OFSUB__(v21, v23))
      {
        v18 += v21 - v23;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v27[0] = *v10;
  LOWORD(v27[1]) = v12;
  BYTE2(v27[1]) = BYTE2(v12);
  BYTE3(v27[1]) = BYTE3(v12);
  BYTE4(v27[1]) = BYTE4(v12);
  BYTE5(v27[1]) = BYTE5(v12);
  v14 = v27 + BYTE6(v12);
  v15 = v27;
LABEL_33:
  sub_1DF1EA6DC(v15, v14, &v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return sub_1DF22AB40();
}

unint64_t sub_1DF1EA5D4()
{
  result = qword_1ECE0E410;
  if (!qword_1ECE0E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0E410);
  }

  return result;
}

uint64_t sub_1DF1EA628(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *sub_1DF1EA6DC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1DF1F109C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1DF1F1154(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1DF1F11D0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1DF1EA770(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1DF22B270();

    if (v9)
    {

      sub_1DF1F225C(0, &qword_1ECE0D2E0, 0x1E698E4B0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1DF22B260();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1DF1EAF50(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1DF1EB140(v20 + 1);
    }

    v18 = v8;
    sub_1DF1EAECC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1DF1F225C(0, &qword_1ECE0D2E0, 0x1E698E4B0);
  v11 = sub_1DF22B170();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1DF1EB9A4(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1DF22B180();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1DF1EA9A8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1DF22B6C0();
  sub_1DF22AD20();
  v8 = sub_1DF22B6F0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1DF22B620() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1DF1EBB14(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DF1EAAF8(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1DF22B6C0();
  sub_1DF228924(v34, a2);
  v5 = sub_1DF22B6F0();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v31 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      v33 = v7;
      if (v8 <= 4)
      {
        v11 = 0xD00000000000001ALL;
        if (v8 == 3)
        {
          v12 = 0x80000001DF23D000;
        }

        else
        {
          v12 = 0x80000001DF23D020;
        }

        if (v8 == 2)
        {
          v12 = 0x80000001DF23CFE0;
        }

        else
        {
          v11 = 0xD000000000000014;
        }

        if (*(*(v4 + 48) + v7))
        {
          v13 = 0x656365526B736154;
        }

        else
        {
          v13 = 0x616572436B736154;
        }

        if (*(*(v4 + 48) + v7))
        {
          v14 = 0xEC00000064657669;
        }

        else
        {
          v14 = 0xEB00000000646574;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v9 = v13;
        }

        else
        {
          v9 = v11;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v10 = v14;
        }

        else
        {
          v10 = v12;
        }
      }

      else if (*(*(v4 + 48) + v7) > 7u)
      {
        if (v8 == 8)
        {
          v10 = 0xE800000000000000;
          v9 = 0x6465727265666544;
        }

        else if (v8 == 9)
        {
          v9 = 0x6574656C706D6F43;
          v10 = 0xE900000000000064;
        }

        else
        {
          v10 = 0xE600000000000000;
          v9 = 0x64656C696146;
        }
      }

      else if (v8 == 5)
      {
        v9 = 0xD00000000000001BLL;
        v10 = 0x80000001DF23D040;
      }

      else if (v8 == 6)
      {
        v9 = 0x7261745320746F4ELL;
        v10 = 0xEB00000000646574;
      }

      else
      {
        v10 = 0xE700000000000000;
        v9 = 0x676E696E6E7552;
      }

      v15 = 0x6574656C706D6F43;
      if (a2 != 9)
      {
        v15 = 0x64656C696146;
      }

      v16 = 0xE900000000000064;
      if (a2 != 9)
      {
        v16 = 0xE600000000000000;
      }

      if (a2 == 8)
      {
        v15 = 0x6465727265666544;
        v16 = 0xE800000000000000;
      }

      v17 = 0xD00000000000001BLL;
      v18 = 0x7261745320746F4ELL;
      if (a2 != 6)
      {
        v18 = 0x676E696E6E7552;
      }

      v19 = 0xE700000000000000;
      if (a2 == 6)
      {
        v19 = 0xEB00000000646574;
      }

      if (a2 != 5)
      {
        v17 = v18;
      }

      v20 = 0x80000001DF23D040;
      if (a2 != 5)
      {
        v20 = v19;
      }

      if (a2 <= 7u)
      {
        v15 = v17;
        v16 = v20;
      }

      v21 = 0xD00000000000001ALL;
      if (a2 == 3)
      {
        v22 = 0x80000001DF23D000;
      }

      else
      {
        v22 = 0x80000001DF23D020;
      }

      if (a2 == 2)
      {
        v22 = 0x80000001DF23CFE0;
      }

      else
      {
        v21 = 0xD000000000000014;
      }

      if (a2)
      {
        v23 = 0x656365526B736154;
      }

      else
      {
        v23 = 0x616572436B736154;
      }

      if (a2)
      {
        v24 = 0xEC00000064657669;
      }

      else
      {
        v24 = 0xEB00000000646574;
      }

      if (a2 <= 1u)
      {
        v21 = v23;
        v22 = v24;
      }

      v25 = a2 <= 4u ? v21 : v15;
      v26 = a2 <= 4u ? v22 : v16;
      if (v9 == v25 && v10 == v26)
      {
        break;
      }

      v32 = sub_1DF22B620();

      if (v32)
      {
        goto LABEL_76;
      }

      v7 = (v33 + 1) & v31;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_74;
      }
    }

LABEL_76:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v33);
  }

  else
  {
LABEL_74:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = *v29;
    sub_1DF1EBC94(a2, v7, isUniquelyReferenced_nonNull_native);
    *v29 = v34[0];
    result = 1;
  }

  *a1 = a2;
  return result;
}

unint64_t sub_1DF1EAECC(uint64_t a1, uint64_t a2)
{
  sub_1DF22B170();
  result = sub_1DF22B240();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1DF1EAF50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EA90, &unk_1DF238BD0);
    v2 = sub_1DF22B2D0();
    v15 = v2;
    sub_1DF22B250();
    if (sub_1DF22B280())
    {
      sub_1DF1F225C(0, &qword_1ECE0D2E0, 0x1E698E4B0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1DF1EB140(v9 + 1);
        }

        v2 = v15;
        result = sub_1DF22B170();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1DF22B280());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1DF1EB140(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EA90, &unk_1DF238BD0);
  result = sub_1DF22B2C0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_1DF22B170();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DF1EB368(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4A8, &qword_1DF2387E8);
  result = sub_1DF22B2C0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1DF22B6C0();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DF1EB5C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E458, &qword_1DF238790);
  result = sub_1DF22B2C0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_1DF22B6C0();
      sub_1DF22AD20();

      result = sub_1DF22B6F0();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_1DF1EB9A4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DF1EB140(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1DF1EC0AC();
      goto LABEL_12;
    }

    sub_1DF1EC498(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1DF22B170();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1DF1F225C(0, &qword_1ECE0D2E0, 0x1E698E4B0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1DF22B180();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1DF22B650();
  __break(1u);
}

void sub_1DF1EBB14(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DF1EB368(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1DF1EC1FC();
      goto LABEL_16;
    }

    sub_1DF1EC6AC(v8 + 1);
  }

  v10 = *v4;
  sub_1DF22B6C0();
  sub_1DF22AD20();
  v11 = sub_1DF22B6F0();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1DF22B620() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1DF22B650();
  __break(1u);
}

uint64_t sub_1DF1EBC94(uint64_t result, unint64_t a2, char a3)
{
  v38 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_80;
  }

  if (a3)
  {
    sub_1DF1EB5C8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1DF1EC358();
      goto LABEL_80;
    }

    sub_1DF1EC8E4(v5 + 1);
  }

  v7 = *v3;
  sub_1DF22B6C0();
  sub_1DF228924(v39, v38);
  result = sub_1DF22B6F0();
  v36 = v7 + 56;
  v37 = v7;
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v35 = ~v8;
    v9 = 0xEC00000064657669;
    do
    {
      v10 = *(*(v37 + 48) + a2);
      if (v10 <= 4)
      {
        v13 = 0xD00000000000001ALL;
        if (v10 == 3)
        {
          v14 = 0x80000001DF23D000;
        }

        else
        {
          v14 = 0x80000001DF23D020;
        }

        if (v10 == 2)
        {
          v14 = 0x80000001DF23CFE0;
        }

        else
        {
          v13 = 0xD000000000000014;
        }

        if (*(*(v37 + 48) + a2))
        {
          v15 = 0x656365526B736154;
        }

        else
        {
          v15 = 0x616572436B736154;
        }

        if (*(*(v37 + 48) + a2))
        {
          v16 = v9;
        }

        else
        {
          v16 = 0xEB00000000646574;
        }

        if (*(*(v37 + 48) + a2) <= 1u)
        {
          v11 = v15;
        }

        else
        {
          v11 = v13;
        }

        if (*(*(v37 + 48) + a2) <= 1u)
        {
          v12 = v16;
        }

        else
        {
          v12 = v14;
        }
      }

      else if (*(*(v37 + 48) + a2) > 7u)
      {
        if (v10 == 8)
        {
          v12 = 0xE800000000000000;
          v11 = 0x6465727265666544;
        }

        else if (v10 == 9)
        {
          v11 = 0x6574656C706D6F43;
          v12 = 0xE900000000000064;
        }

        else
        {
          v12 = 0xE600000000000000;
          v11 = 0x64656C696146;
        }
      }

      else if (v10 == 5)
      {
        v11 = 0xD00000000000001BLL;
        v12 = 0x80000001DF23D040;
      }

      else if (v10 == 6)
      {
        v11 = 0x7261745320746F4ELL;
        v12 = 0xEB00000000646574;
      }

      else
      {
        v12 = 0xE700000000000000;
        v11 = 0x676E696E6E7552;
      }

      v17 = 0x6574656C706D6F43;
      if (v38 != 9)
      {
        v17 = 0x64656C696146;
      }

      v18 = 0xE900000000000064;
      if (v38 != 9)
      {
        v18 = 0xE600000000000000;
      }

      if (v38 == 8)
      {
        v17 = 0x6465727265666544;
        v18 = 0xE800000000000000;
      }

      v19 = 0xD00000000000001BLL;
      v20 = 0x7261745320746F4ELL;
      if (v38 != 6)
      {
        v20 = 0x676E696E6E7552;
      }

      v21 = 0xE700000000000000;
      if (v38 == 6)
      {
        v21 = 0xEB00000000646574;
      }

      if (v38 != 5)
      {
        v19 = v20;
      }

      v22 = 0x80000001DF23D040;
      if (v38 != 5)
      {
        v22 = v21;
      }

      if (v38 <= 7u)
      {
        v17 = v19;
        v18 = v22;
      }

      v23 = 0xD00000000000001ALL;
      if (v38 == 3)
      {
        v24 = 0x80000001DF23D000;
      }

      else
      {
        v24 = 0x80000001DF23D020;
      }

      if (v38 == 2)
      {
        v24 = 0x80000001DF23CFE0;
      }

      else
      {
        v23 = 0xD000000000000014;
      }

      if (v38)
      {
        v25 = 0x656365526B736154;
      }

      else
      {
        v25 = 0x616572436B736154;
      }

      v26 = v9;
      if (!v38)
      {
        v9 = 0xEB00000000646574;
      }

      if (v38 <= 1u)
      {
        v23 = v25;
        v24 = v9;
      }

      v27 = v38 <= 4u ? v23 : v17;
      v28 = v38 <= 4u ? v24 : v18;
      if (v11 == v27 && v12 == v28)
      {
        goto LABEL_83;
      }

      v29 = sub_1DF22B620();

      if (v29)
      {
        goto LABEL_84;
      }

      a2 = (a2 + 1) & v35;
      v9 = v26;
    }

    while (((*(v36 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_80:
  v30 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v30 + 48) + a2) = v38;
  v31 = *(v30 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v30 + 16) = v33;
    return result;
  }

  __break(1u);
LABEL_83:

LABEL_84:
  result = sub_1DF22B650();
  __break(1u);
  return result;
}

id sub_1DF1EC0AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EA90, &unk_1DF238BD0);
  v2 = *v0;
  v3 = sub_1DF22B2B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1DF1EC1FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4A8, &qword_1DF2387E8);
  v2 = *v0;
  v3 = sub_1DF22B2B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_1DF1EC358()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E458, &qword_1DF238790);
  v2 = *v0;
  v3 = sub_1DF22B2B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DF1EC498(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EA90, &unk_1DF238BD0);
  result = sub_1DF22B2C0();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_1DF22B170();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DF1EC6AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4A8, &qword_1DF2387E8);
  result = sub_1DF22B2C0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1DF22B6C0();

      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DF1EC8E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E458, &qword_1DF238790);
  result = sub_1DF22B2C0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_1DF22B6C0();
      sub_1DF22AD20();

      result = sub_1DF22B6F0();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DF1ECC90(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1DF22B6C0();
  sub_1DF22AD20();
  v6 = sub_1DF22B6F0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1DF22B620() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DF1EC1FC();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1DF1ECDCC(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1DF1ECDCC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1DF22B230();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1DF22B6C0();

        sub_1DF22AD20();
        v10 = sub_1DF22B6F0();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1DF1ECF90(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t get_enum_tag_for_layout_string_20LighthouseBackground17MLHostClientErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1DF1ED010(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DF1ED058(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DF1ED09C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t _s20LighthouseBackground12MLHostClientC9getConfigAA0cF0VyYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 392) + **(*v2 + 392));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DF1F22C0;

  return v8(a1, a2);
}

uint64_t _s20LighthouseBackground12MLHostClientC9setConfig6configSbAA0cF0V_tYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 400) + **(*v2 + 400));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DF1F22B8;

  return v8(a1, a2);
}

uint64_t _s20LighthouseBackground12MLHostClientC22getNotificationsConfig14registeredOnlySDySSSaySSGGSb_tYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 408) + **(*v2 + 408));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DF1F22B8;

  return v8(a1, a2);
}

uint64_t _s20LighthouseBackground12MLHostClientC18resetNotifications6reloadS2b_tYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 416) + **(*v2 + 416));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DF1F22B8;

  return v8(a1, a2);
}

uint64_t _s20LighthouseBackground12MLHostClientC8getTasksSayAA0C4TaskVGyYaAA0cD5ErrorOYKFTj(uint64_t a1)
{
  v6 = (*(*v1 + 424) + **(*v1 + 424));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DF1F22B8;

  return v6(a1);
}

uint64_t _s20LighthouseBackground12MLHostClientC7getTaskyAA0cF0VSgSSYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 432) + **(*v4 + 432));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1DF1F22C0;

  return v12(a1, a2, a3, a4);
}

uint64_t _s20LighthouseBackground12MLHostClientC7addTask14taskDefinitionSbAA0fH0V_tYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 440) + **(*v2 + 440));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DF1F22B8;

  return v8(a1, a2);
}

uint64_t _s20LighthouseBackground12MLHostClientC10removeTaskySbSSYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 448) + **(*v3 + 448));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1DF1F22B8;

  return v10(a1, a2, a3);
}

uint64_t _s20LighthouseBackground12MLHostClientC10resetTasks6reloadS2b_tYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 456) + **(*v2 + 456));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DF1F22B8;

  return v8(a1, a2);
}

uint64_t _s20LighthouseBackground12MLHostClientC10cleanTasksSaySSGyYaAA0cD5ErrorOYKFTj(uint64_t a1)
{
  v6 = (*(*v1 + 464) + **(*v1 + 464));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DF1EDD00;

  return v6(a1);
}

uint64_t sub_1DF1EDD00(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t _s20LighthouseBackground12MLHostClientC13getExtensionsSayAA15ExtensionRecordVGyYaAA0cD5ErrorOYKFTj(uint64_t a1)
{
  v6 = (*(*v1 + 472) + **(*v1 + 472));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DF1F22B8;

  return v6(a1);
}

uint64_t _s20LighthouseBackground12MLHostClientC12getExtensionyAA0F6RecordVSgSSYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 480) + **(*v4 + 480));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1DF1F22C0;

  return v12(a1, a2, a3, a4);
}

uint64_t _s20LighthouseBackground12MLHostClientC15runOnDemandTask_02onG7RequestSbSS_AA0fghJ0VSgtYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 488) + **(*v4 + 488));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1DF1F22B8;

  return v12(a1, a2, a3, a4);
}

uint64_t _s20LighthouseBackground12MLHostClientC10dsListKeys5groupSaySSGSS_tYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 496) + **(*v3 + 496));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1DF1F22B8;

  return v10(a1, a2, a3);
}

uint64_t _s20LighthouseBackground12MLHostClientC12dsGetKeyType5group3keySSSgSS_SStYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 504) + **(*v5 + 504));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1DF1EE450;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t sub_1DF1EE450(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t _s20LighthouseBackground12MLHostClientC18dsGetKeyExpiration5group3key10Foundation4DateVSg_s8DurationVSgtSS_SStYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 512) + **(*v6 + 512));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1DF1EE6C0;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DF1EE6C0(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3 & 1);
}

uint64_t _s20LighthouseBackground12MLHostClientC12dsClearGroup5groupSbSS_tYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 520) + **(*v3 + 520));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1DF1F22B8;

  return v10(a1, a2, a3);
}

uint64_t _s20LighthouseBackground12MLHostClientC10dsClearKey5group3keySbSS_SStYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 528) + **(*v5 + 528));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1DF1EDD00;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t _s20LighthouseBackground12MLHostClientC8dsGetKey5group3key14deleteOnAccess15encryptionGroup10Foundation4DataVSgSS_SSSbSSSgtYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 536) + **(*v8 + 536));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DF1F22D0;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t _s20LighthouseBackground12MLHostClientC8dsGetKey5group3key14deleteOnAccess15encryptionGroupxSgSS_SSSbSSSgtYaAA0cD5ErrorOYKSeRzSERzlFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = (*(*v12 + 544) + **(*v12 + 544));
  v18 = swift_task_alloc();
  *(v13 + 16) = v18;
  *v18 = v13;
  v18[1] = sub_1DF1F22C0;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t _s20LighthouseBackground12MLHostClientC8dsSetKey5group3key5value10timeToLive15encryptionGroupSbSS_SS10Foundation4DataVs8DurationVSgSSSgtYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = (*(*v12 + 552) + **(*v12 + 552));
  v18 = swift_task_alloc();
  *(v13 + 16) = v18;
  *v18 = v13;
  v18[1] = sub_1DF1F22B8;
  LOBYTE(a9) = a9 & 1;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t _s20LighthouseBackground12MLHostClientC8dsSetKey5group3key5value10timeToLive15encryptionGroupSbSS_SSxs8DurationVSgSSSgtYaAA0cD5ErrorOYKSeRzSERzlFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = (*(*v14 + 560) + **(*v14 + 560));
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  *v18 = v15;
  v18[1] = sub_1DF1F22B8;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, a10, a11, a12, a13, a14);
}

uint64_t _s20LighthouseBackground12MLHostClientC11dsListIndex5group3key4dateSiSgSS_SS10Foundation4DateVtYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 568) + **(*v6 + 568));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1DF1EF1CC;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DF1EF1CC(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t _s20LighthouseBackground12MLHostClientC9dsListGet5group3key5index10Foundation4DataVSgSS_SSSitYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 576) + **(*v6 + 576));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1DF1F22D0;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t _s20LighthouseBackground12MLHostClientC9dsListGet5group3key5indexxSgSS_SSSitYaAA0cD5ErrorOYKSeRzSERzlFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(*v10 + 584) + **(*v10 + 584));
  v18 = swift_task_alloc();
  *(v11 + 16) = v18;
  *v18 = v11;
  v18[1] = sub_1DF1F22C0;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t _s20LighthouseBackground12MLHostClientC12dsListLength5group3keySiSgSS_SStYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 592) + **(*v5 + 592));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1DF1F22BC;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t _s20LighthouseBackground12MLHostClientC10dsListPush5group3key5value10timeToLiveSbSS_SS10Foundation4DataVs8DurationVSgtYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(*v10 + 600) + **(*v10 + 600));
  v18 = swift_task_alloc();
  *(v11 + 16) = v18;
  *v18 = v11;
  v18[1] = sub_1DF1F22B8;
  LOBYTE(a9) = a9 & 1;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t _s20LighthouseBackground12MLHostClientC10dsListPush5group3key5value10timeToLiveSbSS_SSxs8DurationVSgtYaAA0cD5ErrorOYKSeRzSERzlFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = (*(*v12 + 608) + **(*v12 + 608));
  v18 = swift_task_alloc();
  *(v13 + 16) = v18;
  *v18 = v13;
  v18[1] = sub_1DF1F22B8;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, a10, a11, a12);
}

uint64_t _s20LighthouseBackground12MLHostClientC9dsListPop5group3key10Foundation4DataVSgSS_SStYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 616) + **(*v5 + 616));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1DF1F22D0;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t _s20LighthouseBackground12MLHostClientC9dsListPop5group3keyxSgSS_SStYaAA0cD5ErrorOYKSeRzSERzlFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = (*(*v9 + 624) + **(*v9 + 624));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_1DF1F22C0;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t _s20LighthouseBackground12MLHostClientC9dsGetInfo9estimatedSDySSSiGSb_tYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 632) + **(*v2 + 632));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DF1F22B8;

  return v8(a1, a2);
}

uint64_t _s20LighthouseBackground12MLHostClientC20streamPublisherSetup5topicSbSS_tYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 640) + **(*v3 + 640));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1DF1F22B8;

  return v10(a1, a2, a3);
}

uint64_t _s20LighthouseBackground12MLHostClientC13streamPublish5topic4dataSbSS_10Foundation4DataVtYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 648) + **(*v5 + 648));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1DF1F22B8;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t _s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(*v7 + 656) + **(*v7 + 656));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1DF1F22B8;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t _s20LighthouseBackground12MLHostClientC15streamSubscribe5topicSbSS_tYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 664) + **(*v3 + 664));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1DF1F22B8;

  return v10(a1, a2, a3);
}

uint64_t _s20LighthouseBackground12MLHostClientC17streamUnsubscribe5topicSbSS_tYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 672) + **(*v3 + 672));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1DF1F22B8;

  return v10(a1, a2, a3);
}

uint64_t _s20LighthouseBackground12MLHostClientC24streamSubscriptionStream8forTopic6policyScSyAA0G7MessageVGSS_ScS12ContinuationV15BufferingPolicyOyAH__GtYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 680) + **(*v5 + 680));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1DF1F22C0;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t _s20LighthouseBackground12MLHostClientC10streamInfo6topicsAA013StreamServiceF0VSaySSGSg_tYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 688) + **(*v3 + 688));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1DF1F0740;

  return v10(a1, a2, a3);
}

uint64_t sub_1DF1F0740()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DF1F0840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
    return sub_1DF1BD204(a2, a3);
  }

  return result;
}

double sub_1DF1F0858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
    return sub_1DF1BD190(a2, a3);
  }

  return result;
}

unint64_t sub_1DF1F0870()
{
  result = qword_1ECE0E470;
  if (!qword_1ECE0E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0E470);
  }

  return result;
}

uint64_t sub_1DF1F08EC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1DF1E91BC(v2, v3, v4, v5);
}

uint64_t objectdestroy_74Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DF1F09AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF1F22C0;

  return sub_1DF1E9940(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DF1F0B10(__int128 *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = a1[1];
  v15 = *a1;
  v16[0] = v13;
  *(v16 + 9) = *(a1 + 25);
  return sub_1DF1DBD50(&v15, v5 + v12, a4, a5, a2, a3);
}

unint64_t sub_1DF1F0BCC()
{
  result = qword_1ECE0E568;
  if (!qword_1ECE0E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0E568);
  }

  return result;
}

uint64_t sub_1DF1F0C20(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E560, &qword_1DF238870);
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v6[0] = a1[4];
  *(v6 + 10) = *(a1 + 74);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return sub_1DF1DBB7C(v5);
}

uint64_t sub_1DF1F0CE8(__int128 *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E5A0, &qword_1DF238898) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = a1[1];
  v7 = *a1;
  v8[0] = v5;
  *(v8 + 9) = *(a1 + 25);
  return sub_1DF1DB7D8(&v7, v1 + v4, &qword_1ECE0E5C8, &qword_1DF2388B0, &qword_1ECE0E5A0, &qword_1DF238898);
}

uint64_t sub_1DF1F0D98(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v3 + 48);
  v7[2] = *(v3 + 32);
  v7[3] = v4;
  v8 = *(v3 + 64);
  v5 = *(v3 + 16);
  v7[0] = *v3;
  v7[1] = v5;
  return sub_1DF1D8698(a1, v2, v7);
}

uint64_t sub_1DF1F0E28(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  v6[0] = *v3;
  v6[1] = v4;
  v7 = *(v3 + 32);
  return sub_1DF1D7EAC(a1, v2, v6);
}

uint64_t sub_1DF1F0EBC(__int128 *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E640, &qword_1DF238908) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = a1[1];
  v7 = *a1;
  v8[0] = v5;
  *(v8 + 9) = *(a1 + 25);
  return sub_1DF1DB7D8(&v7, v1 + v4, &qword_1ECE0E668, &qword_1DF238920, &qword_1ECE0E640, &qword_1DF238908);
}

uint64_t sub_1DF1F0F98(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v13;
  v16 = *(a1 + 32);
  return sub_1DF1DB9A8(v15, v5 + v12, a4, a5, a2, a3);
}

uint64_t sub_1DF1F1048(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v3 + 48);
  v7[2] = *(v3 + 32);
  v7[3] = v4;
  v8 = *(v3 + 64);
  v5 = *(v3 + 16);
  v7[0] = *v3;
  v7[1] = v5;
  return sub_1DF1D7614(a1, v2, v7);
}

uint64_t sub_1DF1F109C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1DF1F1154(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1DF22A5B0();
  swift_allocObject();
  result = sub_1DF22A560();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DF22A6D0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1DF1F11D0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1DF22A5B0();
  swift_allocObject();
  result = sub_1DF22A560();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DF1F1254(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  v6[0] = *v3;
  v6[1] = v4;
  v7 = *(v3 + 32);
  return sub_1DF1D7224(a1, v2, v6);
}

uint64_t sub_1DF1F12E8(__int128 *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E6E8, &qword_1DF238978) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = a1[1];
  v7 = *a1;
  v8[0] = v5;
  *(v8 + 9) = *(a1 + 25);
  return sub_1DF1DB7D8(&v7, v1 + v4, &qword_1ECE0E710, &qword_1DF238990, &qword_1ECE0E6E8, &qword_1DF238978);
}

uint64_t sub_1DF1F14D0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double sub_1DF1F14E4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DF1F14F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E7B0, &qword_1DF238A00);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return sub_1DF1DB0A4(v4);
}

uint64_t sub_1DF1F1580(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  v6[0] = *v3;
  v6[1] = v4;
  v7 = *(v3 + 32);
  return sub_1DF1D5E20(a1, v2, v6);
}

unint64_t sub_1DF1F15B8()
{
  result = qword_1ECE0E7F0;
  if (!qword_1ECE0E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0E7F0);
  }

  return result;
}

unint64_t sub_1DF1F168C()
{
  result = qword_1ECE0E828;
  if (!qword_1ECE0E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0E828);
  }

  return result;
}

uint64_t sub_1DF1F16E0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E820, &qword_1DF238A48);
  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v5[4] = *(a1 + 64);
  v6 = *(a1 + 80);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  return sub_1DF1DAE84(v5);
}

unint64_t sub_1DF1F17E0()
{
  result = qword_1ECE0C318;
  if (!qword_1ECE0C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C318);
  }

  return result;
}

unint64_t sub_1DF1F1854()
{
  result = qword_1ECE0E888;
  if (!qword_1ECE0E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0E888);
  }

  return result;
}

unint64_t sub_1DF1F18C8()
{
  result = qword_1ECE0E8C0;
  if (!qword_1ECE0E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0E8C0);
  }

  return result;
}

void sub_1DF1F1920(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

unint64_t sub_1DF1F193C()
{
  result = qword_1ECE0E8F8;
  if (!qword_1ECE0E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0E8F8);
  }

  return result;
}

uint64_t sub_1DF1F1A78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DF1F1AE0()
{
  result = qword_1ECE0E968;
  if (!qword_1ECE0E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0E968);
  }

  return result;
}

uint64_t sub_1DF1F1B5C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_1DF1F1BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DF1F1C5C()
{
  result = qword_1ECE0E9A8;
  if (!qword_1ECE0E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0E9A8);
  }

  return result;
}

unint64_t sub_1DF1F1CD0()
{
  result = qword_1ECE0E9D0;
  if (!qword_1ECE0E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0E9D0);
  }

  return result;
}

unint64_t sub_1DF1F1DB4()
{
  result = qword_1ECE0E9F8;
  if (!qword_1ECE0E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0E9F8);
  }

  return result;
}

void sub_1DF1F1EA4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_1DF1F1EF4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  v6[0] = *v3;
  v6[1] = v4;
  v7 = *(v3 + 32);
  return sub_1DF1D3430(a1, v2, v6);
}

unint64_t sub_1DF1F1F2C()
{
  result = qword_1ECE0EA30;
  if (!qword_1ECE0EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EA30);
  }

  return result;
}

uint64_t sub_1DF1F2004(__int128 *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(__int128 *, unint64_t))
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = a1[1];
  v11 = *a1;
  v12[0] = v9;
  *(v12 + 9) = *(a1 + 25);
  return a4(&v11, v4 + v8);
}

void sub_1DF1F20A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != 1)
  {
  }
}

double sub_1DF1F20E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_1DF1F2130()
{
  result = qword_1ECE0C120;
  if (!qword_1ECE0C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C120);
  }

  return result;
}

uint64_t sub_1DF1F2184(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EA68, &qword_1DF238BA8);
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  return sub_1DF1DA1D8(v4);
}

uint64_t sub_1DF1F2214(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1DF1F225C(uint64_t a1, unint64_t *a2, void *a3)
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

LighthouseBackground::TaskRequestPriority_optional __swiftcall TaskRequestPriority.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TaskRequestPriority.rawValue.getter()
{
  v1 = 1701736270;
  v2 = 0x7974696C697455;
  if (*v0 != 2)
  {
    v2 = 0x74696E4972657355;
  }

  if (*v0)
  {
    v1 = 0x616E65746E69614DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DF1F2434()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF1F2504(uint64_t a1)
{
  sub_1DF22AD20();
}

uint64_t sub_1DF1F25C0(uint64_t a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

void sub_1DF1F2698(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736270;
  v4 = 0xE700000000000000;
  v5 = 0x7974696C697455;
  if (*v1 != 2)
  {
    v5 = 0x74696E4972657355;
    v4 = 0xED00006465746169;
  }

  if (*v1)
  {
    v3 = 0x616E65746E69614DLL;
    v2 = 0xEB0000000065636ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

LighthouseBackground::TaskRequestProtectionClass_optional __swiftcall TaskRequestProtectionClass.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TaskRequestProtectionClass.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736270;
  v3 = 0x437373616C43;
  v4 = 0x58437373616C43;
  if (v1 != 4)
  {
    v4 = 0x447373616C43;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x417373616C43;
  if (v1 != 1)
  {
    v5 = 0x427373616C43;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF1F2900(uint64_t a1)
{
  sub_1DF22AD20();
}

void sub_1DF1F29E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736270;
  v5 = 0xE600000000000000;
  v6 = 0x437373616C43;
  v7 = 0xE700000000000000;
  v8 = 0x58437373616C43;
  if (v2 != 4)
  {
    v8 = 0x447373616C43;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x417373616C43;
  if (v2 != 1)
  {
    v9 = 0x427373616C43;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

LighthouseBackground::TaskRequestMotionState_optional __swiftcall TaskRequestMotionState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TaskRequestMotionState.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736270;
  v3 = 0xD000000000000010;
  if (v1 != 6)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0x676E696C637943;
  if (v1 != 4)
  {
    v4 = 0x69746F6D6F747541;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x676E696B6C6157;
  if (v1 != 2)
  {
    v5 = 0x676E696E6E7552;
  }

  if (*v0)
  {
    v2 = 0x616E6F6974617453;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1DF1F2CE8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736270;
  v5 = 0xD000000000000010;
  v6 = 0x80000001DF23D410;
  if (v2 != 6)
  {
    v5 = 0xD000000000000014;
    v6 = 0x80000001DF23D430;
  }

  v7 = 0xE700000000000000;
  v8 = 0x676E696C637943;
  if (v2 != 4)
  {
    v8 = 0x69746F6D6F747541;
    v7 = 0xEA00000000006576;
  }

  if (*v1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x676E696B6C6157;
  if (v2 != 2)
  {
    v9 = 0x676E696E6E7552;
  }

  if (*v1)
  {
    v4 = 0x616E6F6974617453;
    v3 = 0xEA00000000007972;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 > 3u)
  {
    v3 = v6;
  }

  *a1 = v10;
  a1[1] = v3;
}

LighthouseBackground::TaskRequestResources_optional __swiftcall TaskRequestResources.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TaskRequestResources.rawValue.getter()
{
  v1 = 5591107;
  v2 = *v0;
  v3 = 1802725732;
  v4 = 4542017;
  if (v2 != 3)
  {
    v4 = 5591111;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0x79726F6D656DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF1F2F94()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF1F3050(uint64_t a1)
{
  sub_1DF22AD20();
}

uint64_t sub_1DF1F30F8(uint64_t a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

void sub_1DF1F31BC(uint64_t *a1@<X8>)
{
  v2 = 5591107;
  v3 = *v1;
  v4 = 0xE300000000000000;
  v5 = 0xE400000000000000;
  v6 = 1802725732;
  v7 = 4542017;
  if (v3 != 3)
  {
    v7 = 5591111;
  }

  if (v3 != 2)
  {
    v6 = v7;
    v5 = 0xE300000000000000;
  }

  if (*v1)
  {
    v2 = 0x79726F6D656DLL;
    v4 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v2 = v6;
    v8 = v5;
  }

  *a1 = v2;
  a1[1] = v8;
}

LighthouseBackground::TaskRequestDevice_optional __swiftcall TaskRequestDevice.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TaskRequestDevice.rawValue.getter()
{
  v1 = 0x65726961506C6C61;
  if (*v0 != 1)
  {
    v1 = 0x65746F6D6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x50746C7561666564;
  }
}

uint64_t sub_1DF1F33C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65726961506C6C61;
  v4 = 0xE900000000000064;
  if (v2 != 1)
  {
    v3 = 0x65746F6D6572;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x50746C7561666564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED00006465726961;
  }

  v7 = 0x65726961506C6C61;
  v8 = 0xE900000000000064;
  if (*a2 != 1)
  {
    v7 = 0x65746F6D6572;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x50746C7561666564;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00006465726961;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DF22B620();
  }

  return v11 & 1;
}

uint64_t sub_1DF1F34D0()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF1F3580(uint64_t a1)
{
  sub_1DF22AD20();
}

uint64_t sub_1DF1F361C(uint64_t a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

void sub_1DF1F36D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006465726961;
  v4 = 0xE900000000000064;
  v5 = 0x65726961506C6C61;
  if (v2 != 1)
  {
    v5 = 0x65746F6D6572;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x50746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t RepeatingTaskRequest.minDurationBetweenInstances.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

LighthouseBackground::RepeatingTaskRequest __swiftcall RepeatingTaskRequest.init(interval:minDurationBetweenInstances:)(Swift::Double interval, Swift::Double_optional minDurationBetweenInstances)
{
  *v3 = interval;
  *(v3 + 8) = *&minDurationBetweenInstances.is_nil;
  *(v3 + 16) = v2 & 1;
  result.minDurationBetweenInstances.value = minDurationBetweenInstances.value;
  result.minDurationBetweenInstances.is_nil = minDurationBetweenInstances.is_nil;
  result.interval = interval;
  return result;
}

uint64_t sub_1DF1F3880()
{
  if (*v0)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x6C61767265746E69;
  }
}

uint64_t sub_1DF1F38C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DF23E1D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DF1F39A4(uint64_t a1)
{
  v2 = sub_1DF1F3A60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1F39E0(uint64_t a1)
{
  v2 = sub_1DF1F3A60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF1F3A60()
{
  result = qword_1ECE0C350;
  if (!qword_1ECE0C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C350);
  }

  return result;
}

uint64_t sub_1DF1F3B68()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x656C756465686373;
  }
}

uint64_t sub_1DF1F3BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C756465686373 && a2 == 0xED00007265746641;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DF23E1F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DF1F3CA0(uint64_t a1)
{
  v2 = sub_1DF1F3F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1F3CDC(uint64_t a1)
{
  v2 = sub_1DF1F3F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF1F3D5C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  v15 = *(v5 + 8);
  v14[1] = *(v5 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DF22B740();
  v18 = 0;
  v12 = v16;
  sub_1DF22B5A0();
  if (!v12)
  {
    v17 = 1;
    sub_1DF22B530();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1DF1F3F00()
{
  result = qword_1ECE0EAB0;
  if (!qword_1ECE0EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EAB0);
  }

  return result;
}

uint64_t sub_1DF1F3F98@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v22 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DF22B730();
  if (!v6)
  {
    v13 = v21;
    v12 = v22;
    v24 = 0;
    sub_1DF22B4C0();
    v15 = v14;
    v23 = 1;
    v17 = sub_1DF22B450();
    v19 = v18;
    (*(v13 + 8))(v11, v9);
    *v12 = v15;
    *(v12 + 8) = v17;
    *(v12 + 16) = v19 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t OnDemandTaskRequest.scheduleAfter.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t OnDemandTaskRequest.init(scheduleAfter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1DF1F41E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C756465686373 && a2 == 0xED00007265746641)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1F4274(uint64_t a1)
{
  v2 = sub_1DF1F443C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1F42B0(uint64_t a1)
{
  v2 = sub_1DF1F443C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OnDemandTaskRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EAC0, &qword_1DF238C30);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v8 = *v1;
  v7 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1F443C();
  sub_1DF22B740();
  v10[0] = v8;
  v10[1] = v7;
  sub_1DF22B5C0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DF1F443C()
{
  result = qword_1ECE0EAC8;
  if (!qword_1ECE0EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EAC8);
  }

  return result;
}

uint64_t OnDemandTaskRequest.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EAD0, &qword_1DF238C38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1F443C();
  sub_1DF22B730();
  if (!v2)
  {
    sub_1DF22B4E0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

__n128 TaskRequest.repeatingTask.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  v3 = v1[1].n128_u8[1];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u8[1] = v3;
  return result;
}

__n128 TaskRequest.repeatingTask.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  v3 = a1[1].n128_u8[1];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  v1[1].n128_u8[1] = v3;
  return result;
}

__n128 TaskRequest.nonRepeatingTask.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 41);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u8[1] = v3;
  return result;
}

__n128 TaskRequest.nonRepeatingTask.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  v3 = a1[1].n128_u8[1];
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  *(v1 + 41) = v3;
  return result;
}

uint64_t TaskRequest.randomInitialDelay.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t TaskRequest.resources.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t TaskRequest.networkDownloadSize.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t TaskRequest.networkUploadSize.setter(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t TaskRequest.groupName.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t TaskRequest.groupName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t TaskRequest.groupConcurrencyLimit.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t TaskRequest.rateLimitConfigurationName.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t TaskRequest.rateLimitConfigurationName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return result;
}

uint64_t TaskRequest.expectedDuration.setter(uint64_t result, char a2)
{
  *(v2 + 168) = result;
  *(v2 + 176) = a2 & 1;
  return result;
}

uint64_t TaskRequest.relatedApplications.setter(uint64_t a1)
{

  *(v1 + 184) = a1;
  return result;
}

uint64_t TaskRequest.involvedProcesses.setter(uint64_t a1)
{

  *(v1 + 192) = a1;
  return result;
}

uint64_t TaskRequest.targetDevice.setter(uint64_t a1)
{

  *(v1 + 208) = a1;
  return result;
}

uint64_t TaskRequest.remoteDevice.getter()
{
  v1 = *(v0 + 216);

  return v1;
}

uint64_t TaskRequest.remoteDevice.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 216) = a1;
  *(v2 + 224) = a2;
  return result;
}

uint64_t TaskRequest.producedResultIdentifiers.setter(uint64_t a1)
{

  *(v1 + 240) = a1;
  return result;
}

uint64_t TaskRequest.dependencies.setter(uint64_t a1)
{

  *(v1 + 248) = a1;
  return result;
}

__n128 TaskRequest.init(repeatingTask:nonRepeatingTask:requiresNetworkConnectivity:requiresExternalPower:priority:requiresProtectionClass:preventsDeviceSleep:randomInitialDelay:postInstall:requiresInexpensiveNetworkConnectivity:requiresUnconstrainedNetworkConnectivity:appRefresh:requiresUserInactivity:requiresSignificantUserInactivity:powerNap:resourceIntensive:resources:mayRebootDevice:userRequestedBackupTask:networkDownloadSize:networkUploadSize:communicatesWithPairedDevice:shouldWakeDevice:groupName:groupConcurrencyLimit:rateLimitConfigurationName:expectedDuration:powerBudgeted:dataBudgeted:relatedApplications:involvedProcesses:requiresBuddyComplete:targetDevice:remoteDevice:requiresRemoteDeviceWake:runOnMotionState:producedResultIdentifiers:dependencies:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, char a4@<W3>, _BYTE *a5@<X4>, _BYTE *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __int16 a12, uint64_t a13, char a14, uint64_t a15, int a16, __n128 a17, uint64_t a18, char a19, __int128 a20, uint64_t a21, int a22, uint64_t a23, uint64_t a24, char a25, __int128 a26, uint64_t a27, char a28, _BYTE *a29, uint64_t a30, uint64_t a31)
{
  *(a9 + 200) = 514;
  *(a9 + 16) = *(a1 + 16);
  v31 = *a1;
  *(a9 + 17) = *(a1 + 17);
  *(a9 + 40) = *(a2 + 16);
  v32 = *a2;
  *(a9 + 41) = *(a2 + 17);
  *(a9 + 42) = a3;
  *(a9 + 43) = a4;
  *(a9 + 44) = *a5;
  *(a9 + 45) = *a6;
  *(a9 + 46) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10 & 1;
  *(a9 + 57) = *(&a10 + 1);
  *(a9 + 61) = *(&a10 + 5);
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14 & 1;
  *(a9 + 104) = a15;
  *(a9 + 112) = a16 & 1;
  *(a9 + 113) = *(&a16 + 1);
  *(a9 + 136) = a18;
  *(a9 + 144) = a19 & 1;
  *(a9 + 168) = a21;
  *(a9 + 176) = a22 & 1;
  *(a9 + 177) = *(&a22 + 1);
  *(a9 + 184) = a23;
  *(a9 + 192) = a24;
  *(a9 + 202) = a25;
  *(a9 + 224) = a27;
  *(a9 + 232) = a28;
  *(a9 + 233) = *a29;
  *(a9 + 240) = a30;
  *(a9 + 248) = a31;
  *a9 = v31;
  result = a17;
  *(a9 + 24) = v32;
  *(a9 + 120) = a17;
  *(a9 + 152) = a20;
  *(a9 + 208) = a26;
  return result;
}

uint64_t sub_1DF1F516C(char a1)
{
  result = 0x6E69746165706572;
  switch(a1)
  {
    case 1:
      return 0xD000000000000010;
    case 2:
      v4 = 11;
      return v4 | 0xD000000000000010;
    case 3:
    case 24:
    case 33:
      v4 = 5;
      return v4 | 0xD000000000000010;
    case 4:
      return 0x797469726F697270;
    case 5:
    case 18:
      return 0xD000000000000017;
    case 6:
    case 19:
    case 29:
      return 0xD000000000000013;
    case 7:
    case 31:
      return 0xD000000000000012;
    case 8:
      return 0x74736E4974736F70;
    case 9:
      return 0xD000000000000026;
    case 10:
      return 0xD000000000000028;
    case 11:
      return 0x6572666552707061;
    case 12:
      return 0xD000000000000016;
    case 13:
      return 0xD000000000000021;
    case 14:
      return 0x70614E7265776F70;
    case 15:
    case 20:
    case 30:
      return 0xD000000000000011;
    case 16:
      return 0x656372756F736572;
    case 17:
      return 0x6F6F62655279616DLL;
    case 21:
      return 0xD00000000000001CLL;
    case 22:
      return 0xD000000000000010;
    case 23:
      return 0x6D614E70756F7267;
    case 25:
      v4 = 10;
      return v4 | 0xD000000000000010;
    case 26:
      return 0xD000000000000010;
    case 27:
      return 0x6475427265776F70;
    case 28:
      return 0x6764754261746164;
    case 32:
    case 38:
      v4 = 9;
      return v4 | 0xD000000000000010;
    case 34:
      v3 = 0x746567726174;
      goto LABEL_8;
    case 35:
      v3 = 0x65746F6D6572;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6544000000000000;
      break;
    case 36:
      result = 0xD000000000000018;
      break;
    case 37:
      result = 0xD000000000000010;
      break;
    case 39:
      result = 0x6E65646E65706564;
      break;
    default:
      return result;
  }

  return result;
}