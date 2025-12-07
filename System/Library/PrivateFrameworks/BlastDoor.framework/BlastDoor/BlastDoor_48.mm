__n128 MemojiPoster.backgroundColor.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 MemojiPoster.backgroundColor.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

void (*MemojiPoster.avatarImage.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1F8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v3 + 248;
  *(v3 + 496) = v1;
  result = sub_213FB2E54(v1 + 32, v3 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v4 + 272))
  {
    v7 = *(v5 + 208);
    *(v4 + 192) = *(v5 + 192);
    *(v4 + 208) = v7;
    *(v4 + 224) = *(v5 + 224);
    *(v4 + 240) = *(v5 + 240);
    v8 = *(v5 + 144);
    *(v4 + 128) = *(v5 + 128);
    *(v4 + 144) = v8;
    v9 = *(v5 + 176);
    *(v4 + 160) = *(v5 + 160);
    *(v4 + 176) = v9;
    v10 = *(v5 + 80);
    *(v4 + 64) = *(v5 + 64);
    *(v4 + 80) = v10;
    v11 = *(v5 + 112);
    *(v4 + 96) = *(v5 + 96);
    *(v4 + 112) = v11;
    v12 = *(v5 + 16);
    *v4 = *v5;
    *(v4 + 16) = v12;
    v13 = *(v5 + 48);
    *(v4 + 32) = *(v5 + 32);
    *(v4 + 48) = v13;
    return sub_21445703C;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21445703C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 62);
    sub_21407CF14(*a1, (v2 + 248));
    sub_213FB2DF4(v3 + 32, &qword_27C904858, &qword_214736F00);
    v4 = *(v2 + 264);
    v5 = *(v2 + 296);
    v6 = *(v2 + 248);
    *(v3 + 64) = *(v2 + 280);
    *(v3 + 80) = v5;
    *(v3 + 32) = v6;
    *(v3 + 48) = v4;
    v7 = *(v2 + 360);
    v9 = *(v2 + 312);
    v8 = *(v2 + 328);
    *(v3 + 128) = *(v2 + 344);
    *(v3 + 144) = v7;
    *(v3 + 96) = v9;
    *(v3 + 112) = v8;
    v10 = *(v2 + 424);
    v12 = *(v2 + 376);
    v11 = *(v2 + 392);
    *(v3 + 192) = *(v2 + 408);
    *(v3 + 208) = v10;
    *(v3 + 160) = v12;
    *(v3 + 176) = v11;
    v14 = *(v2 + 456);
    v13 = *(v2 + 472);
    v15 = *(v2 + 440);
    *(v3 + 272) = *(v2 + 61);
    *(v3 + 240) = v14;
    *(v3 + 256) = v13;
    *(v3 + 224) = v15;
    sub_21406D2CC(v2);
  }

  else
  {
    v16 = *(v2 + 62);
    sub_213FB2DF4(v16 + 32, &qword_27C904858, &qword_214736F00);
    v17 = *(v2 + 3);
    v19 = *v2;
    v18 = *(v2 + 1);
    *(v16 + 64) = *(v2 + 2);
    *(v16 + 80) = v17;
    *(v16 + 32) = v19;
    *(v16 + 48) = v18;
    v20 = *(v2 + 7);
    v22 = *(v2 + 4);
    v21 = *(v2 + 5);
    *(v16 + 128) = *(v2 + 6);
    *(v16 + 144) = v20;
    *(v16 + 96) = v22;
    *(v16 + 112) = v21;
    v23 = *(v2 + 11);
    v25 = *(v2 + 8);
    v24 = *(v2 + 9);
    *(v16 + 192) = *(v2 + 10);
    *(v16 + 208) = v23;
    *(v16 + 160) = v25;
    *(v16 + 176) = v24;
    v27 = *(v2 + 13);
    v26 = *(v2 + 14);
    v28 = *(v2 + 12);
    *(v16 + 272) = *(v2 + 30);
    *(v16 + 240) = v27;
    *(v16 + 256) = v26;
    *(v16 + 224) = v28;
  }

  free(v2);
}

void (*MemojiPoster.$avatarImage.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1 + 32, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2144571F0;
}

void sub_2144571F0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[110];
    sub_213FB2E54(*a1, (v2 + 55), &qword_27C905500, &qword_2146F2BE0);
    sub_213FB2DF4(v3 + 32, &qword_27C905500, &qword_2146F2BE0);
    memcpy((v3 + 32), v2 + 55, 0x1B8uLL);
    sub_213FB2DF4(v2, &qword_27C905500, &qword_2146F2BE0);
  }

  else
  {
    v4 = v2[110];
    sub_213FB2DF4(v4 + 32, &qword_27C905500, &qword_2146F2BE0);
    memcpy((v4 + 32), v2, 0x1B8uLL);
  }

  free(v2);
}

uint64_t MemojiPoster.avatarRecord.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[59];
  v3 = v1[60];
  v4 = v1[61];
  v5 = v1[62];
  v6 = v1[63];
  v7 = v1[64];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_2142FCFDC(v2, v3, v4, v5, v6, v7);
}

__n128 MemojiPoster.avatarRecord.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2142FCF38(v1[59], v1[60], v1[61], v1[62], v1[63], v1[64]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 59) = *a1;
  *(v1 + 61) = v6;
  v1[63] = v3;
  v1[64] = v4;
  return result;
}

__n128 sub_214457438@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_214457448(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

__n128 sub_214457508@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 sub_214457514(__n128 *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

__n128 sub_214457540@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_214457550(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  return result;
}

__n128 sub_214457724@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 sub_214457740(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

__n128 sub_21445777C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 88);
  result = *(v1 + 97);
  *(a1 + 41) = result;
  return result;
}

__n128 sub_21445779C(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v2;
  *(v1 + 88) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 97) = result;
  return result;
}

uint64_t sub_2144577DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 96);
  v12 = *(v1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 112);
  v5 = v14;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_213FB2E54(v11, v10, &qword_27C908508, &qword_2146F5090);
}

__n128 sub_21445785C(uint64_t a1)
{
  v3 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v3;
  v10[6] = *(v1 + 96);
  v11 = *(v1 + 112);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C908508, &qword_2146F5090);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = *(a1 + 112);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v9;
  return result;
}

__n128 sub_21445790C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 120);
  v3 = *(v1 + 136);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_21445791C(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  return result;
}

__n128 sub_21445794C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 152);
  v3 = *(v1 + 168);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_21445795C(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 152) = *a1;
  *(v1 + 168) = v3;
  return result;
}

uint64_t sub_21445798C()
{
  v1 = *(v0 + 184);

  return v1;
}

void sub_2144579BC(uint64_t a1, uint64_t a2)
{

  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
}

__n128 sub_214457A44@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 sub_214457A50(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

void sub_214457AB4(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 6;
  if (v4 < 6)
  {
    v5 = v4;
  }

  *a3 = v5;
}

double sub_214457B24(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

__n128 DynamicPoster.customColor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 DynamicPoster.customColor.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v4;
  *(v1 + 40) = v2;
  return result;
}

BlastDoor::DynamicPoster::DynamicPosterType_optional __swiftcall DynamicPoster.DynamicPosterType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA8B8();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_214457D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_214457E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_2146DA958();
  a3(v4);
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_214457EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  sub_2146D9698();

  return result;
}

uint64_t sub_214457F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = sub_2146DA958();
  a4(v5);
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214457F98@<X0>(uint64_t *a1@<X8>)
{
  result = DynamicPoster.DynamicPosterType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_214458070(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_2144581C0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_2146D9EE8();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_2146D9F88() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_2144581C0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_214458258(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2144582CC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_214458258(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_21448C4AC(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2144582CC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_2146D9F88();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_2144583F0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2146DA6A8() & 1;
  }
}

unint64_t _s9BlastDoor13PosterArchiveV24ProviderBundleIdentifierO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_214458534()
{
  result = qword_27C913BF8;
  if (!qword_27C913BF8)
  {
    result = swift_getWitnessTable(byte_214747198, &type metadata for PosterArchive.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913BF8);
  }

  return result;
}

unint64_t sub_214458588()
{
  result = qword_27C913C00;
  if (!qword_27C913C00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Configuration, &type metadata for PosterArchive.Configuration, v0, v1);
    atomic_store(result, &qword_27C913C00);
  }

  return result;
}

unint64_t sub_2144585DC()
{
  result = qword_27C913C08;
  if (!qword_27C913C08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Provider, &type metadata for PosterArchive.Provider, v0, v1);
    atomic_store(result, &qword_27C913C08);
  }

  return result;
}

unint64_t sub_214458630()
{
  result = qword_27C913C18;
  if (!qword_27C913C18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Configuration, &type metadata for PosterArchive.Configuration, v0, v1);
    atomic_store(result, &qword_27C913C18);
  }

  return result;
}

unint64_t sub_214458684()
{
  result = qword_27C913C20;
  if (!qword_27C913C20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Provider, &type metadata for PosterArchive.Provider, v0, v1);
    atomic_store(result, &qword_27C913C20);
  }

  return result;
}

unint64_t sub_2144586DC()
{
  result = qword_27C913C28;
  if (!qword_27C913C28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Configuration.SystemTimeFontConfiguration.TimeFontIdentifier, &type metadata for PosterArchive.Configuration.SystemTimeFontConfiguration.TimeFontIdentifier, v0, v1);
    atomic_store(result, &qword_27C913C28);
  }

  return result;
}

uint64_t sub_214458788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2144587C8()
{
  result = qword_27C913C30;
  if (!qword_27C913C30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Configuration.TitleStyleConfiguration.TitleAlignment, &type metadata for PosterArchive.Configuration.TitleStyleConfiguration.TitleAlignment, v0, v1);
    atomic_store(result, &qword_27C913C30);
  }

  return result;
}

unint64_t sub_21445884C()
{
  result = qword_27C913C38;
  if (!qword_27C913C38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Configuration.TitleStyleConfiguration.TitleLayout, &type metadata for PosterArchive.Configuration.TitleStyleConfiguration.TitleLayout, v0, v1);
    atomic_store(result, &qword_27C913C38);
  }

  return result;
}

unint64_t sub_2144588D0()
{
  result = qword_27C913C40;
  if (!qword_27C913C40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.Style, &type metadata for PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.Style, v0, v1);
    atomic_store(result, &qword_27C913C40);
  }

  return result;
}

unint64_t sub_2144589AC()
{
  result = qword_27C913C48;
  if (!qword_27C913C48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleGradientContentStyleProperties.GradientType, &type metadata for PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleGradientContentStyleProperties.GradientType, v0, v1);
    atomic_store(result, &qword_27C913C48);
  }

  return result;
}

unint64_t sub_214458A5C()
{
  result = qword_27C913C50;
  if (!qword_27C913C50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.StyleType, &type metadata for PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.StyleType, v0, v1);
    atomic_store(result, &qword_27C913C50);
  }

  return result;
}

unint64_t sub_214458B0C()
{
  result = qword_27C913C58;
  if (!qword_27C913C58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Configuration.TitleStyleConfiguration.NumberingSystem, &type metadata for PosterArchive.Configuration.TitleStyleConfiguration.NumberingSystem, v0, v1);
    atomic_store(result, &qword_27C913C58);
  }

  return result;
}

unint64_t sub_214458C14()
{
  result = qword_27C913C60;
  if (!qword_27C913C60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.ProviderBundleIdentifier, &type metadata for PosterArchive.ProviderBundleIdentifier, v0, v1);
    atomic_store(result, &qword_27C913C60);
  }

  return result;
}

unint64_t sub_214458C98()
{
  result = qword_27C913C68;
  if (!qword_27C913C68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.PosterKitPosterRole, &type metadata for PosterArchive.PosterKitPosterRole, v0, v1);
    atomic_store(result, &qword_27C913C68);
  }

  return result;
}

unint64_t sub_214458D1C()
{
  result = qword_27C913C70;
  if (!qword_27C913C70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Context, &type metadata for PosterArchive.Context, v0, v1);
    atomic_store(result, &qword_27C913C70);
  }

  return result;
}

unint64_t sub_214458D74()
{
  result = qword_27C913C78;
  if (!qword_27C913C78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Context, &type metadata for PosterArchive.Context, v0, v1);
    atomic_store(result, &qword_27C913C78);
  }

  return result;
}

uint64_t sub_214458DC8(uint64_t a1)
{
  result = sub_214458EA4(&qword_27C913C80, type metadata accessor for PosterArchive, protocol conformance descriptor for PosterArchive);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_214458E20(uint64_t a1)
{
  *(a1 + 8) = sub_214458EA4(&qword_27C905610, type metadata accessor for PosterArchive, protocol conformance descriptor for PosterArchive);
  result = sub_214458EA4(&qword_27C9055F8, type metadata accessor for PosterArchive, protocol conformance descriptor for PosterArchive);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214458EA4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214458F1C()
{
  result = qword_27C913C88;
  if (!qword_27C913C88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotosPoster.MediaType, &type metadata for PhotosPoster.MediaType, v0, v1);
    atomic_store(result, &qword_27C913C88);
  }

  return result;
}

unint64_t sub_214458FCC()
{
  result = qword_27C913C90;
  if (!qword_27C913C90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotosPoster.Layout.ClockLayerOrder, &type metadata for PhotosPoster.Layout.ClockLayerOrder, v0, v1);
    atomic_store(result, &qword_27C913C90);
  }

  return result;
}

unint64_t sub_214459050()
{
  result = qword_27C913C98;
  if (!qword_27C913C98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotosPoster.Layout.ClockIntersection, &type metadata for PhotosPoster.Layout.ClockIntersection, v0, v1);
    atomic_store(result, &qword_27C913C98);
  }

  return result;
}

unint64_t sub_2144590D4()
{
  result = qword_27C913CA0;
  if (!qword_27C913CA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotosPoster.Layout.LayoutVariant, &type metadata for PhotosPoster.Layout.LayoutVariant, v0, v1);
    atomic_store(result, &qword_27C913CA0);
  }

  return result;
}

unint64_t sub_21445949C()
{
  result = qword_27C913CA8;
  if (!qword_27C913CA8)
  {
    result = swift_getWitnessTable(byte_214743330, &type metadata for GradientPoster.GradientVariant, v0, v1);
    atomic_store(result, &qword_27C913CA8);
  }

  return result;
}

unint64_t sub_214459578()
{
  result = qword_27C913CB0;
  if (!qword_27C913CB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DynamicPoster.DynamicPosterType, &type metadata for DynamicPoster.DynamicPosterType, v0, v1);
    atomic_store(result, &qword_27C913CB0);
  }

  return result;
}

uint64_t sub_21445964C(uint64_t a1)
{
  result = sub_2146D8B88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor13PosterArchiveV13ConfigurationV010TitleStyleE0V0F5ColorVSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor13PosterArchiveV13ConfigurationV010TitleStyleE0VSg(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy219_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 203) = *(a2 + 203);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_214459774(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 219))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 184);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2144597D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 218) = 0;
    *(result + 216) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 219) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 219) = 0;
    }

    if (a2)
    {
      *(result + 184) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PosterArchive.Configuration.SystemTimeFontConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PosterArchive.Configuration.SystemTimeFontConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy217_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 201) = *(a2 + 201);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_21445996C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 217))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 184);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2144599B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 217) = 1;
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
      *(result + 184) = (a2 - 1);
      return result;
    }

    *(result + 217) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214459A5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214459AB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_214459B54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214459BB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleDiscreteColorContentStyleProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleDiscreteColorContentStyleProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_214459D4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 729))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 728);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_214459D88(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    v5 = a2 - 251;
    bzero(a1, 0x2D9uLL);
    *a1 = v5;
    if (a3 >= 0xFB)
    {
      *(a1 + 729) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(a1 + 729) = 0;
    }

    if (a2)
    {
      *(a1 + 728) = -a2;
    }
  }
}

void sub_214459DFC(unsigned int *a1, unsigned int a2)
{
  if (a2 > 5)
  {
    v3 = a2 - 6;
    bzero(a1, 0x2D8uLL);
    *a1 = v3;
    LOBYTE(a2) = 6;
  }

  *(a1 + 728) = a2;
}

uint64_t sub_214459E68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 728))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214459EB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 728) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 728) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214459FDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21445A024(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21445A08C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 280))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 147);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21445A0E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 280) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 280) = 0;
    }

    if (a2)
    {
      *(result + 147) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21445A1B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 513))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 272) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_21445A204(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 504) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 512) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 513) = 1;
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
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      *(a1 + 272) = 2 * -a2;
      result = 0.0;
      *(a1 + 280) = 0u;
      *(a1 + 296) = 0u;
      *(a1 + 312) = 0u;
      *(a1 + 328) = 0u;
      *(a1 + 344) = 0u;
      *(a1 + 360) = 0u;
      *(a1 + 376) = 0u;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      return result;
    }

    *(a1 + 513) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21445A308(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 306))
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

uint64_t sub_21445A350(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 306) = 1;
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

    *(result + 306) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21445A3F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21445A414(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 104) = v3;
  return result;
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_21445A4AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 209))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21445A4CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = (a2 - 1);
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

  *(result + 209) = v3;
  return result;
}

uint64_t sub_21445A540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21445A59C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_21445A638(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 10234))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21445A698(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 10232) = 0;
    *(result + 8440) = 0u;
    *(result + 8424) = 0u;
    *(result + 8408) = 0u;
    *(result + 8392) = 0u;
    *(result + 8376) = 0u;
    *(result + 8360) = 0u;
    *(result + 8344) = 0u;
    *(result + 8328) = 0u;
    *(result + 8312) = 0u;
    *(result + 8296) = 0u;
    *(result + 8280) = 0u;
    *(result + 8264) = 0u;
    *(result + 8248) = 0u;
    *(result + 8232) = 0u;
    *(result + 8216) = 0u;
    *(result + 8200) = 0u;
    *(result + 4344) = 0u;
    *(result + 4328) = 0u;
    *(result + 4312) = 0u;
    *(result + 4296) = 0u;
    *(result + 4280) = 0u;
    *(result + 4264) = 0u;
    *(result + 4248) = 0u;
    *(result + 4232) = 0u;
    *(result + 4216) = 0u;
    *(result + 4200) = 0u;
    *(result + 4184) = 0u;
    *(result + 4168) = 0u;
    *(result + 4152) = 0u;
    *(result + 4136) = 0u;
    *(result + 4120) = 0u;
    *(result + 4104) = 0u;
    *(result + 4088) = 0u;
    *(result + 4072) = 0u;
    *(result + 4056) = 0u;
    *(result + 4040) = 0u;
    *(result + 4024) = 0u;
    *(result + 4008) = 0u;
    *(result + 3992) = 0u;
    *(result + 3976) = 0u;
    *(result + 3960) = 0u;
    *(result + 3944) = 0u;
    *(result + 3928) = 0u;
    *(result + 3912) = 0u;
    *(result + 3896) = 0u;
    *(result + 3880) = 0u;
    *(result + 3864) = 0u;
    *(result + 3848) = 0u;
    *(result + 3832) = 0u;
    *(result + 3816) = 0u;
    *(result + 3800) = 0u;
    *(result + 3784) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 10216) = 0u;
    *(result + 10200) = 0u;
    *(result + 10184) = 0u;
    *(result + 10168) = 0u;
    *(result + 10152) = 0u;
    *(result + 10136) = 0u;
    *(result + 10120) = 0u;
    *(result + 10104) = 0u;
    *(result + 10088) = 0u;
    *(result + 10072) = 0u;
    *(result + 10056) = 0u;
    *(result + 10040) = 0u;
    *(result + 10024) = 0u;
    *(result + 10008) = 0u;
    *(result + 9992) = 0u;
    *(result + 9976) = 0u;
    *(result + 9960) = 0u;
    *(result + 9944) = 0u;
    *(result + 9928) = 0u;
    *(result + 9912) = 0u;
    *(result + 9896) = 0u;
    *(result + 9880) = 0u;
    *(result + 9864) = 0u;
    *(result + 9848) = 0u;
    *(result + 9832) = 0u;
    *(result + 9816) = 0u;
    *(result + 9800) = 0u;
    *(result + 9784) = 0u;
    *(result + 9768) = 0u;
    *(result + 9752) = 0u;
    *(result + 9736) = 0u;
    *(result + 9720) = 0u;
    *(result + 9704) = 0u;
    *(result + 9688) = 0u;
    *(result + 9672) = 0u;
    *(result + 9656) = 0u;
    *(result + 9640) = 0u;
    *(result + 9624) = 0u;
    *(result + 9608) = 0u;
    *(result + 9592) = 0u;
    *(result + 9576) = 0u;
    *(result + 9560) = 0u;
    *(result + 9544) = 0u;
    *(result + 9528) = 0u;
    *(result + 9512) = 0u;
    *(result + 9496) = 0u;
    *(result + 9480) = 0u;
    *(result + 9464) = 0u;
    *(result + 9448) = 0u;
    *(result + 9432) = 0u;
    *(result + 9416) = 0u;
    *(result + 9400) = 0u;
    *(result + 9384) = 0u;
    *(result + 9368) = 0u;
    *(result + 9352) = 0u;
    *(result + 9336) = 0u;
    *(result + 9320) = 0u;
    *(result + 9304) = 0u;
    *(result + 9288) = 0u;
    *(result + 9272) = 0u;
    *(result + 9256) = 0u;
    *(result + 9240) = 0u;
    *(result + 9224) = 0u;
    *(result + 9208) = 0u;
    *(result + 9192) = 0u;
    *(result + 9176) = 0u;
    *(result + 9160) = 0u;
    *(result + 9144) = 0u;
    *(result + 9128) = 0u;
    *(result + 9112) = 0u;
    *(result + 9096) = 0u;
    *(result + 9080) = 0u;
    *(result + 9064) = 0u;
    *(result + 9048) = 0u;
    *(result + 9032) = 0u;
    *(result + 9016) = 0u;
    *(result + 9000) = 0u;
    *(result + 8984) = 0u;
    *(result + 8968) = 0u;
    *(result + 8952) = 0u;
    *(result + 8936) = 0u;
    *(result + 8920) = 0u;
    *(result + 8904) = 0u;
    *(result + 8888) = 0u;
    *(result + 8872) = 0u;
    *(result + 8856) = 0u;
    *(result + 8840) = 0u;
    *(result + 8824) = 0u;
    *(result + 8808) = 0u;
    *(result + 8792) = 0u;
    *(result + 8776) = 0u;
    *(result + 8760) = 0u;
    *(result + 8744) = 0u;
    *(result + 8728) = 0u;
    *(result + 8712) = 0u;
    *(result + 8696) = 0u;
    *(result + 8680) = 0u;
    *(result + 8664) = 0u;
    *(result + 8648) = 0u;
    *(result + 8632) = 0u;
    *(result + 8616) = 0u;
    *(result + 8600) = 0u;
    *(result + 8584) = 0u;
    *(result + 8568) = 0u;
    *(result + 8552) = 0u;
    *(result + 8536) = 0u;
    *(result + 8520) = 0u;
    *(result + 8504) = 0u;
    *(result + 8488) = 0u;
    *(result + 8472) = 0u;
    *(result + 8456) = 0u;
    *(result + 8184) = 0u;
    *(result + 8168) = 0u;
    *(result + 8152) = 0u;
    *(result + 8136) = 0u;
    *(result + 8120) = 0u;
    *(result + 8104) = 0u;
    *(result + 8088) = 0u;
    *(result + 8072) = 0u;
    *(result + 8056) = 0u;
    *(result + 8040) = 0u;
    *(result + 8024) = 0u;
    *(result + 8008) = 0u;
    *(result + 7992) = 0u;
    *(result + 7976) = 0u;
    *(result + 7960) = 0u;
    *(result + 7944) = 0u;
    *(result + 7928) = 0u;
    *(result + 7912) = 0u;
    *(result + 7896) = 0u;
    *(result + 7880) = 0u;
    *(result + 7864) = 0u;
    *(result + 7848) = 0u;
    *(result + 7832) = 0u;
    *(result + 7816) = 0u;
    *(result + 7800) = 0u;
    *(result + 7784) = 0u;
    *(result + 7768) = 0u;
    *(result + 7752) = 0u;
    *(result + 7736) = 0u;
    *(result + 7720) = 0u;
    *(result + 7704) = 0u;
    *(result + 7688) = 0u;
    *(result + 7672) = 0u;
    *(result + 7656) = 0u;
    *(result + 7640) = 0u;
    *(result + 7624) = 0u;
    *(result + 7608) = 0u;
    *(result + 7592) = 0u;
    *(result + 7576) = 0u;
    *(result + 7560) = 0u;
    *(result + 7544) = 0u;
    *(result + 7528) = 0u;
    *(result + 7512) = 0u;
    *(result + 7496) = 0u;
    *(result + 7480) = 0u;
    *(result + 7464) = 0u;
    *(result + 7448) = 0u;
    *(result + 7432) = 0u;
    *(result + 7416) = 0u;
    *(result + 7400) = 0u;
    *(result + 7384) = 0u;
    *(result + 7368) = 0u;
    *(result + 7352) = 0u;
    *(result + 7336) = 0u;
    *(result + 7320) = 0u;
    *(result + 7304) = 0u;
    *(result + 7288) = 0u;
    *(result + 7272) = 0u;
    *(result + 7256) = 0u;
    *(result + 7240) = 0u;
    *(result + 7224) = 0u;
    *(result + 7208) = 0u;
    *(result + 7192) = 0u;
    *(result + 7176) = 0u;
    *(result + 7160) = 0u;
    *(result + 7144) = 0u;
    *(result + 7128) = 0u;
    *(result + 7112) = 0u;
    *(result + 7096) = 0u;
    *(result + 7080) = 0u;
    *(result + 7064) = 0u;
    *(result + 7048) = 0u;
    *(result + 7032) = 0u;
    *(result + 7016) = 0u;
    *(result + 7000) = 0u;
    *(result + 6984) = 0u;
    *(result + 6968) = 0u;
    *(result + 6952) = 0u;
    *(result + 6936) = 0u;
    *(result + 6920) = 0u;
    *(result + 6904) = 0u;
    *(result + 6888) = 0u;
    *(result + 6872) = 0u;
    *(result + 6856) = 0u;
    *(result + 6840) = 0u;
    *(result + 6824) = 0u;
    *(result + 6808) = 0u;
    *(result + 6792) = 0u;
    *(result + 6776) = 0u;
    *(result + 6760) = 0u;
    *(result + 6744) = 0u;
    *(result + 6728) = 0u;
    *(result + 6712) = 0u;
    *(result + 6696) = 0u;
    *(result + 6680) = 0u;
    *(result + 6664) = 0u;
    *(result + 6648) = 0u;
    *(result + 6632) = 0u;
    *(result + 6616) = 0u;
    *(result + 6600) = 0u;
    *(result + 6584) = 0u;
    *(result + 6568) = 0u;
    *(result + 6552) = 0u;
    *(result + 6536) = 0u;
    *(result + 6520) = 0u;
    *(result + 6504) = 0u;
    *(result + 6488) = 0u;
    *(result + 6472) = 0u;
    *(result + 6456) = 0u;
    *(result + 6440) = 0u;
    *(result + 6424) = 0u;
    *(result + 6408) = 0u;
    *(result + 6392) = 0u;
    *(result + 6376) = 0u;
    *(result + 6360) = 0u;
    *(result + 6344) = 0u;
    *(result + 6328) = 0u;
    *(result + 6312) = 0u;
    *(result + 6296) = 0u;
    *(result + 6280) = 0u;
    *(result + 6264) = 0u;
    *(result + 6248) = 0u;
    *(result + 6232) = 0u;
    *(result + 6216) = 0u;
    *(result + 6200) = 0u;
    *(result + 6184) = 0u;
    *(result + 6168) = 0u;
    *(result + 6152) = 0u;
    *(result + 6136) = 0u;
    *(result + 6120) = 0u;
    *(result + 6104) = 0u;
    *(result + 6088) = 0u;
    *(result + 6072) = 0u;
    *(result + 6056) = 0u;
    *(result + 6040) = 0u;
    *(result + 6024) = 0u;
    *(result + 6008) = 0u;
    *(result + 5992) = 0u;
    *(result + 5976) = 0u;
    *(result + 5960) = 0u;
    *(result + 5944) = 0u;
    *(result + 5928) = 0u;
    *(result + 5912) = 0u;
    *(result + 5896) = 0u;
    *(result + 5880) = 0u;
    *(result + 5864) = 0u;
    *(result + 5848) = 0u;
    *(result + 5832) = 0u;
    *(result + 5816) = 0u;
    *(result + 5800) = 0u;
    *(result + 5784) = 0u;
    *(result + 5768) = 0u;
    *(result + 5752) = 0u;
    *(result + 5736) = 0u;
    *(result + 5720) = 0u;
    *(result + 5704) = 0u;
    *(result + 5688) = 0u;
    *(result + 5672) = 0u;
    *(result + 5656) = 0u;
    *(result + 5640) = 0u;
    *(result + 5624) = 0u;
    *(result + 5608) = 0u;
    *(result + 5592) = 0u;
    *(result + 5576) = 0u;
    *(result + 5560) = 0u;
    *(result + 5544) = 0u;
    *(result + 5528) = 0u;
    *(result + 5512) = 0u;
    *(result + 5496) = 0u;
    *(result + 5480) = 0u;
    *(result + 5464) = 0u;
    *(result + 5448) = 0u;
    *(result + 5432) = 0u;
    *(result + 5416) = 0u;
    *(result + 5400) = 0u;
    *(result + 5384) = 0u;
    *(result + 5368) = 0u;
    *(result + 5352) = 0u;
    *(result + 5336) = 0u;
    *(result + 5320) = 0u;
    *(result + 5304) = 0u;
    *(result + 5288) = 0u;
    *(result + 5272) = 0u;
    *(result + 5256) = 0u;
    *(result + 5240) = 0u;
    *(result + 5224) = 0u;
    *(result + 5208) = 0u;
    *(result + 5192) = 0u;
    *(result + 5176) = 0u;
    *(result + 5160) = 0u;
    *(result + 5144) = 0u;
    *(result + 5128) = 0u;
    *(result + 5112) = 0u;
    *(result + 5096) = 0u;
    *(result + 5080) = 0u;
    *(result + 5064) = 0u;
    *(result + 5048) = 0u;
    *(result + 5032) = 0u;
    *(result + 5016) = 0u;
    *(result + 5000) = 0u;
    *(result + 4984) = 0u;
    *(result + 4968) = 0u;
    *(result + 4952) = 0u;
    *(result + 4936) = 0u;
    *(result + 4920) = 0u;
    *(result + 4904) = 0u;
    *(result + 4888) = 0u;
    *(result + 4872) = 0u;
    *(result + 4856) = 0u;
    *(result + 4840) = 0u;
    *(result + 4824) = 0u;
    *(result + 4808) = 0u;
    *(result + 4792) = 0u;
    *(result + 4776) = 0u;
    *(result + 4760) = 0u;
    *(result + 4744) = 0u;
    *(result + 4728) = 0u;
    *(result + 4712) = 0u;
    *(result + 4696) = 0u;
    *(result + 4680) = 0u;
    *(result + 4664) = 0u;
    *(result + 4648) = 0u;
    *(result + 4632) = 0u;
    *(result + 4616) = 0u;
    *(result + 4600) = 0u;
    *(result + 4584) = 0u;
    *(result + 4568) = 0u;
    *(result + 4552) = 0u;
    *(result + 4536) = 0u;
    *(result + 4520) = 0u;
    *(result + 4504) = 0u;
    *(result + 4488) = 0u;
    *(result + 4472) = 0u;
    *(result + 4456) = 0u;
    *(result + 4440) = 0u;
    *(result + 4424) = 0u;
    *(result + 4408) = 0u;
    *(result + 4392) = 0u;
    *(result + 4376) = 0u;
    *(result + 4360) = 0u;
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
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 792) = 0u;
    *result = a2 - 0x7FFFFFFF;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10234) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10234) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy250_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 234) = *(a2 + 234);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_21445B240(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 250))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21445B29C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 250) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 250) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21445B374(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_21445B3BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21445B438(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 521))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 304) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_21445B488(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 520) = 0;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 521) = 1;
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
      *(a1 + 280) = 0;
      *(a1 + 288) = 0;
      *(a1 + 296) = 0;
      *(a1 + 304) = 2 * -a2;
      result = 0.0;
      *(a1 + 312) = 0u;
      *(a1 + 328) = 0u;
      *(a1 + 344) = 0u;
      *(a1 + 360) = 0u;
      *(a1 + 376) = 0u;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      *(a1 + 440) = 0u;
      *(a1 + 456) = 0u;
      return result;
    }

    *(a1 + 521) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21445B584(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 192);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21445B5CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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
      *(result + 192) = (a2 - 1);
      return result;
    }

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21445B690(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21445B6D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 5;
    }
  }

  return result;
}

__n128 __swift_memcpy190_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 174) = *(a2 + 174);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_21445B778(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 190))
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

uint64_t sub_21445B7C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 188) = 0;
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 190) = 1;
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

    *(result + 190) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21445B844(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEF && a1[41])
  {
    return (*a1 + 239);
  }

  v3 = *a1;
  v4 = v3 >= 0x12;
  v5 = v3 - 18;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21445B888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 239;
    if (a3 >= 0xEF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2 + 17;
    }
  }

  return result;
}

unint64_t sub_21445B91C()
{
  result = qword_27C913CB8;
  if (!qword_27C913CB8)
  {
    result = swift_getWitnessTable(byte_2147470B8, &type metadata for PosterArchive.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913CB8);
  }

  return result;
}

unint64_t sub_21445B974()
{
  result = qword_27C913CC0;
  if (!qword_27C913CC0)
  {
    result = swift_getWitnessTable(aY_18, &type metadata for PosterArchive.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913CC0);
  }

  return result;
}

unint64_t sub_21445B9CC()
{
  result = qword_27C913CC8;
  if (!qword_27C913CC8)
  {
    result = swift_getWitnessTable(byte_2147470E0, &type metadata for PosterArchive.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913CC8);
  }

  return result;
}

unint64_t sub_21445BA24()
{
  result = qword_27C913CD0;
  if (!qword_27C913CD0)
  {
    result = swift_getWitnessTable(byte_214747108, &type metadata for PosterArchive.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913CD0);
  }

  return result;
}

unint64_t sub_21445BA7C()
{
  result = qword_27C913CD8;
  if (!qword_27C913CD8)
  {
    result = swift_getWitnessTable(aY_19, &type metadata for PosterArchive.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913CD8);
  }

  return result;
}

unint64_t sub_21445BAD4()
{
  result = qword_27C913CE0;
  if (!qword_27C913CE0)
  {
    result = swift_getWitnessTable(byte_214747050, &type metadata for PosterArchive.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913CE0);
  }

  return result;
}

uint64_t sub_21445BB28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5555726574736F70 && a2 == 0xEA00000000004449 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021479AC40 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_21445BD3C()
{
  result = qword_27C913CE8;
  if (!qword_27C913CE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DynamicPoster.DynamicPosterType, &type metadata for DynamicPoster.DynamicPosterType, v0, v1);
    atomic_store(result, &qword_27C913CE8);
  }

  return result;
}

unint64_t sub_21445BD90()
{
  result = qword_27C913CF0;
  if (!qword_27C913CF0)
  {
    result = swift_getWitnessTable(aN_8, &type metadata for GradientPoster.GradientVariant, v0, v1);
    atomic_store(result, &qword_27C913CF0);
  }

  return result;
}

unint64_t sub_21445BDE4()
{
  result = qword_27C913CF8;
  if (!qword_27C913CF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotosPoster.Layout.LayoutVariant, &type metadata for PhotosPoster.Layout.LayoutVariant, v0, v1);
    atomic_store(result, &qword_27C913CF8);
  }

  return result;
}

unint64_t sub_21445BE38()
{
  result = qword_27C913D00;
  if (!qword_27C913D00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotosPoster.Layout.ClockIntersection, &type metadata for PhotosPoster.Layout.ClockIntersection, v0, v1);
    atomic_store(result, &qword_27C913D00);
  }

  return result;
}

unint64_t sub_21445BE8C()
{
  result = qword_27C913D08;
  if (!qword_27C913D08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotosPoster.Layout.ClockLayerOrder, &type metadata for PhotosPoster.Layout.ClockLayerOrder, v0, v1);
    atomic_store(result, &qword_27C913D08);
  }

  return result;
}

unint64_t sub_21445BEE0()
{
  result = qword_27C913D10;
  if (!qword_27C913D10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotosPoster.MediaType, &type metadata for PhotosPoster.MediaType, v0, v1);
    atomic_store(result, &qword_27C913D10);
  }

  return result;
}

unint64_t sub_21445BF34()
{
  result = qword_27C913D18;
  if (!qword_27C913D18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.PosterKitPosterRole, &type metadata for PosterArchive.PosterKitPosterRole, v0, v1);
    atomic_store(result, &qword_27C913D18);
  }

  return result;
}

unint64_t sub_21445BF88()
{
  result = qword_27C913D20;
  if (!qword_27C913D20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Configuration.TitleStyleConfiguration.NumberingSystem, &type metadata for PosterArchive.Configuration.TitleStyleConfiguration.NumberingSystem, v0, v1);
    atomic_store(result, &qword_27C913D20);
  }

  return result;
}

unint64_t sub_21445BFDC()
{
  result = qword_27C913D28;
  if (!qword_27C913D28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.StyleType, &type metadata for PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.StyleType, v0, v1);
    atomic_store(result, &qword_27C913D28);
  }

  return result;
}

unint64_t sub_21445C030()
{
  result = qword_27C913D30;
  if (!qword_27C913D30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleGradientContentStyleProperties.GradientType, &type metadata for PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleGradientContentStyleProperties.GradientType, v0, v1);
    atomic_store(result, &qword_27C913D30);
  }

  return result;
}

unint64_t sub_21445C084()
{
  result = qword_27C913D38;
  if (!qword_27C913D38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.Style, &type metadata for PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.Style, v0, v1);
    atomic_store(result, &qword_27C913D38);
  }

  return result;
}

unint64_t sub_21445C0D8()
{
  result = qword_27C913D40;
  if (!qword_27C913D40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Configuration.TitleStyleConfiguration.TitleLayout, &type metadata for PosterArchive.Configuration.TitleStyleConfiguration.TitleLayout, v0, v1);
    atomic_store(result, &qword_27C913D40);
  }

  return result;
}

unint64_t sub_21445C12C()
{
  result = qword_27C913D48;
  if (!qword_27C913D48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Configuration.TitleStyleConfiguration.TitleAlignment, &type metadata for PosterArchive.Configuration.TitleStyleConfiguration.TitleAlignment, v0, v1);
    atomic_store(result, &qword_27C913D48);
  }

  return result;
}

unint64_t sub_21445C180()
{
  result = qword_27C913D50;
  if (!qword_27C913D50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.Configuration.SystemTimeFontConfiguration.TimeFontIdentifier, &type metadata for PosterArchive.Configuration.SystemTimeFontConfiguration.TimeFontIdentifier, v0, v1);
    atomic_store(result, &qword_27C913D50);
  }

  return result;
}

uint64_t sub_21445C1E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0 && sub_2146D96A8() > a3)
  {
    return 0;
  }

  v5 = sub_2146D96F8();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    do
    {
      if (sub_2146D9528() & 1) != 0 || (sub_2146D9538() & 1) != 0 || (sub_2146D94F8() & 1) != 0 || v7 == 9142498 && v8 == 0xA300000000000000 || (sub_2146DA6A8() & 1) != 0 || (sub_2146D9548())
      {
      }

      else
      {
        v10 = sub_2146D9518();

        if ((v10 & 1) == 0)
        {
          v4 = 0;
          goto LABEL_19;
        }
      }

      v7 = sub_2146D96F8();
      v8 = v9;
    }

    while (v9);
  }

  v4 = 1;
LABEL_19:

  return v4;
}

uint64_t sub_21445C344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D8928();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_213FB2DF4(v6, &unk_27C9131A0, &unk_2146E9D10);
LABEL_12:
    v27 = 0;
    return v27 & 1;
  }

  (*(v8 + 32))(v10, v6, v7);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v31 = v10;
    v32[0] = MEMORY[0x277D84F90];
    sub_21409FD08(0, v11, 0);
    v12 = v32[0];
    sub_214069AD8();
    v13 = (a3 + 40);
    do
    {
      v14 = *v13;
      v33 = *(v13 - 1);
      v34 = v14;
      v15 = sub_2146D9DD8();
      v32[0] = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        v30 = v15;
        v20 = v16;
        sub_21409FD08((v17 > 1), v18 + 1, 1);
        v16 = v20;
        v15 = v30;
        v12 = v32[0];
      }

      *(v12 + 16) = v18 + 1;
      v19 = v12 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v13 += 2;
      --v11;
    }

    while (v11);
    v10 = v31;
  }

  v21 = sub_2146D8918();
  if (!v22)
  {
    (*(v8 + 8))(v10, v7);

    goto LABEL_12;
  }

  v33 = v21;
  v34 = v22;
  sub_214069AD8();
  v23 = sub_2146D9DD8();
  v25 = v24;

  v32[0] = v23;
  v32[1] = v25;
  MEMORY[0x28223BE20](v26);
  *(&v29 - 2) = v32;
  v27 = sub_21441C084(sub_21445D518, (&v29 - 4), v12);

  (*(v8 + 8))(v10, v7);

  return v27 & 1;
}

uint64_t sub_21445C678(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  result = sub_2146D89C8();
  if (v8 >> 60 == 15)
  {
    return 0;
  }

  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = result;
      v11 = v8;
      v12 = 0;
      goto LABEL_12;
    }

    v14 = *(result + 16);
    v13 = *(result + 24);
    v15 = __OFSUB__(v13, v14);
    v16 = v13 - v14;
    if (!v15)
    {
      v11 = v8;
      v10 = result;
      v12 = v16;
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    if (!v9)
    {
      v10 = result;
      v11 = v8;
      v12 = BYTE6(v8);
LABEL_12:
      v17 = a3(v12, a5);
      sub_213FDC6BC(v10, v11);
      return v17 & 1;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      v11 = v8;
      v10 = result;
      v12 = HIDWORD(result) - result;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21445C760(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D91A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D58, &qword_214747238);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - v7;
  if (qword_27C9030A8 != -1)
  {
    swift_once();
  }

  if (byte_27CA19C80)
  {
    return 1;
  }

  sub_2146D9198();
  sub_2146D9158();
  v9 = 1;
  v10 = (*(v5 + 48))(v8, 1, v4);
  sub_213FB2DF4(v8, &qword_27C913D58, &qword_214747238);
  if (v10 == 1)
  {
    v11 = sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v12 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2146EA710;
    v19[0] = a1;
    v19[1] = a2;

    v14 = MEMORY[0x277D837D0];
    v15 = sub_2146D9618();
    v17 = v16;
    *(v13 + 56) = v14;
    *(v13 + 64) = sub_213FB2DA0();
    *(v13 + 32) = v15;
    *(v13 + 40) = v17;
    sub_2146D91D8(v11, &dword_213FAF000, v12, "Invalid UTIType (mimeType): '%@'.", 33, 2, v13);

    return 0;
  }

  return v9;
}

void sub_21445C9EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0 && sub_2146D96A8() > a3)
  {
    return;
  }

  while (1)
  {
    v4 = sub_2146D96F8();
    if (!v5)
    {
      goto LABEL_46;
    }

    v6 = v4;
    v7 = v5;
    if (v4 == 2573 && v5 == 0xE200000000000000)
    {
LABEL_43:

      goto LABEL_46;
    }

    v8 = HIBYTE(v5) & 0xF;
    if ((sub_2146DA6A8() & 1) == 0)
    {
      break;
    }

LABEL_19:
    if (sub_2146DA6A8())
    {
      goto LABEL_43;
    }

    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {
      goto LABEL_49;
    }

    if ((v7 & 0x1000000000000000) != 0)
    {
      v17 = sub_2146D9658();
    }

    else
    {
      if ((v7 & 0x2000000000000000) != 0)
      {
        v14 = v6;
      }

      else
      {
        if ((v6 & 0x1000000000000000) != 0)
        {
          v13 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v13 = sub_2146D9F88();
        }

        v14 = *v13;
      }

      v15 = v14;
      v16 = (__clz(~v14) - 24) << 16;
      if (v15 < 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 65541;
      }
    }

    if (v17 >> 14 != 4 * v8)
    {
      goto LABEL_50;
    }

    v18 = sub_214458070(v6, v7);
    if ((v18 & 0x100000000) != 0)
    {
      goto LABEL_55;
    }

    if ((v18 & 0xFFFFFF80) != 0)
    {
      goto LABEL_51;
    }

    v19 = sub_214458070(v6, v7);
    if ((v19 & 0x100000000) != 0)
    {
      goto LABEL_56;
    }

    v20 = v19;

    if ((v20 & 0xFFFFFF00) != 0)
    {
      goto LABEL_52;
    }

    if (v20 < 0x20u || v20 >= 0x7Fu)
    {
      goto LABEL_46;
    }
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      v10 = sub_2146D9658();
    }

    else
    {
      v10 = sub_2146D9ED8() << 16;
    }

    if (v10 >> 14 != 4 * v9)
    {
      goto LABEL_45;
    }

    v11 = sub_214458070(v6, v7);
    if ((v11 & 0x100000000) != 0)
    {
      goto LABEL_53;
    }

    if ((v11 & 0xFFFFFF80) != 0)
    {
LABEL_45:

LABEL_46:

      return;
    }

    v12 = sub_214458070(v6, v7);
    if ((v12 & 0x100000000) != 0)
    {
      goto LABEL_54;
    }

    if ((v12 & 0xFFFFFF00) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

uint64_t sub_21445CC88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0 && sub_2146D96A8() > a3)
  {
    return 0;
  }

  v5 = sub_2146D96F8();
  if (!v6)
  {
LABEL_34:
    v4 = 1;
LABEL_37:

    return v4;
  }

  v7 = v5;
  v8 = v6;
  while (1)
  {
    if (v7 == 2573 && v8 == 0xE200000000000000)
    {
      goto LABEL_29;
    }

    result = sub_2146DA6A8();
    if (result)
    {
      goto LABEL_29;
    }

    v11 = (v8 & 0x2000000000000000) != 0 ? HIBYTE(v8) & 0xF : v7 & 0xFFFFFFFFFFFFLL;
    if (!v11)
    {
      break;
    }

    if ((v8 & 0x1000000000000000) != 0)
    {
      v16 = sub_2146D9658();
    }

    else
    {
      if ((v8 & 0x2000000000000000) != 0)
      {
        v13 = v7;
      }

      else
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          v12 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v12 = sub_2146D9F88();
        }

        v13 = *v12;
      }

      v14 = v13;
      v15 = (__clz(~v13) - 24) << 16;
      if (v14 < 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 65541;
      }
    }

    if (v16 >> 14 != 4 * v11)
    {
      goto LABEL_35;
    }

    result = sub_214458070(v7, v8);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_41;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_35:

LABEL_36:
      v4 = 0;
      goto LABEL_37;
    }

    result = sub_214458070(v7, v8);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_42;
    }

    if ((result & 0xFFFFFF00) != 0)
    {
      goto LABEL_40;
    }

LABEL_29:
    if (sub_2146D9528())
    {
    }

    else
    {
      v17 = sub_2146D9538();

      if ((v17 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v7 = sub_2146D96F8();
    v8 = v9;
    if (!v9)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

BOOL sub_21445CE8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0 && sub_2146D96A8() > a3)
  {
    return 0;
  }

  do
  {
    sub_2146D96F8();
    v4 = v5 == 0;
    if (!v5)
    {
      break;
    }

    sub_2146D9508();
    v7 = v6;
  }

  while ((v7 & 1) == 0);

  return v4;
}

BOOL sub_21445CF3C(_BOOL8 result, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v5 = *(result + 16);
      v4 = *(result + 24);
      v6 = __OFSUB__(v4, v5);
      v7 = v4 - v5;
      if (v6)
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v7 > a3)
      {
        return 0;
      }
    }

    else if (a3 < 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v3)
  {
    return BYTE6(a2) <= a3;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    return HIDWORD(result) - result <= a3;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21445CFB0(uint64_t a1, uint64_t a2)
{
  result = sub_2146D96A8();
  if (result)
  {
    if (a1 == 0xD000000000000010 && 0x800000021479ACB0 == a2 || (sub_2146DA6A8() & 1) != 0)
    {
      return 1;
    }

    else
    {

      v5 = sub_2146D96F8();
      if (v6)
      {
        v7 = v5;
        v8 = v6;
        do
        {
          sub_2146D9508();
          if ((v10 & 1) == 0 || v7 == 43 && v8 == 0xE100000000000000 || ((v11 = sub_2146DA6A8(), v7 == 95) ? (v12 = v8 == 0xE100000000000000) : (v12 = 0), !v12 ? (v13 = 0) : (v13 = 1), (v11 & 1) != 0 || v13))
          {
          }

          else
          {
            v14 = sub_2146DA6A8();

            if ((v14 & 1) == 0)
            {
              v15 = 0;
              goto LABEL_24;
            }
          }

          v7 = sub_2146D96F8();
          v8 = v9;
        }

        while (v9);
      }

      v15 = 1;
LABEL_24:

      return v15;
    }
  }

  return result;
}

uint64_t sub_21445D11C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0 && sub_2146D96A8() > a3)
  {
    return 0;
  }

  v5 = sub_2146D96F8();
  if (!v6)
  {
LABEL_35:
    v4 = 1;
LABEL_38:

    return v4;
  }

  v7 = v5;
  v8 = v6;
  while (1)
  {
    if (v7 == 2573 && v8 == 0xE200000000000000)
    {
      goto LABEL_29;
    }

    result = sub_2146DA6A8();
    if (result)
    {
      goto LABEL_29;
    }

    v11 = (v8 & 0x2000000000000000) != 0 ? HIBYTE(v8) & 0xF : v7 & 0xFFFFFFFFFFFFLL;
    if (!v11)
    {
      break;
    }

    if ((v8 & 0x1000000000000000) != 0)
    {
      v16 = sub_2146D9658();
    }

    else
    {
      if ((v8 & 0x2000000000000000) != 0)
      {
        v13 = v7;
      }

      else
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          v12 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v12 = sub_2146D9F88();
        }

        v13 = *v12;
      }

      v14 = v13;
      v15 = (__clz(~v13) - 24) << 16;
      if (v14 < 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 65541;
      }
    }

    if (v16 >> 14 != 4 * v11)
    {
      goto LABEL_36;
    }

    result = sub_214458070(v7, v8);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_42;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_36:

LABEL_37:
      v4 = 0;
      goto LABEL_38;
    }

    result = sub_214458070(v7, v8);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_43;
    }

    if ((result & 0xFFFFFF00) != 0)
    {
      goto LABEL_41;
    }

LABEL_29:
    if (sub_2146D9528() & 1) != 0 || (sub_2146D9538())
    {
    }

    else
    {
      v17 = sub_2146D94F8();

      if ((v17 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v7 = sub_2146D96F8();
    v8 = v9;
    if (!v9)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

BOOL sub_21445D330(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D58, &qword_214747238);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;

  sub_2146D91B8();
  v7 = sub_2146D91A8();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  sub_213FB2DF4(v6, &qword_27C913D58, &qword_214747238);
  if (v8 == 1)
  {
    v9 = sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v10 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_2146EA710;
    v17[0] = a1;
    v17[1] = a2;

    v12 = MEMORY[0x277D837D0];
    v13 = sub_2146D9618();
    v15 = v14;
    *(v11 + 56) = v12;
    *(v11 + 64) = sub_213FB2DA0();
    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    sub_2146D91D8(v9, &dword_213FAF000, v10, "Invalid UTIType: '%@'.", 22, 2, v11);
  }

  return v8 != 1;
}

uint64_t sub_21445D518(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2146DA6A8() & 1;
  }
}

uint64_t sub_21445D60C(unsigned int a1)
{
  v2 = HIBYTE(a1);
  v3 = sub_2140958E0(0, 1, 1, MEMORY[0x277D84F90]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_2140958E0((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  *&v3[4 * v5 + 32] = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2140958E0(0, *(v3 + 2) + 1, 1, v3);
  }

  v7 = *(v3 + 2);
  v6 = *(v3 + 3);
  if (v7 >= v6 >> 1)
  {
    v3 = sub_2140958E0((v6 > 1), v7 + 1, 1, v3);
  }

  *(v3 + 2) = v7 + 1;
  *&v3[4 * v7 + 32] = BYTE2(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2140958E0(0, *(v3 + 2) + 1, 1, v3);
  }

  v9 = *(v3 + 2);
  v8 = *(v3 + 3);
  if (v9 >= v8 >> 1)
  {
    v3 = sub_2140958E0((v8 > 1), v9 + 1, 1, v3);
  }

  *(v3 + 2) = v9 + 1;
  *&v3[4 * v9 + 32] = BYTE1(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2140958E0(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = sub_2140958E0((v10 > 1), v11 + 1, 1, v3);
  }

  *(v3 + 2) = v11 + 1;
  *&v3[4 * v11 + 32] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D60, qword_214747268);
  sub_21445D82C();
  sub_2146D9668();

  return 0;
}

unint64_t sub_21445D82C()
{
  result = qword_27C913D68;
  if (!qword_27C913D68)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C913D60, qword_214747268);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_27C913D68);
  }

  return result;
}

unint64_t sub_21445D890(uint64_t a1)
{
  *(a1 + 8) = sub_21431EB4C();
  result = sub_21431DFE0();
  *(a1 + 16) = result;
  return result;
}

void sub_21445D924(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B6972745378616DLL && a2 == 0xEE00746E756F4365)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_21445D9B4(uint64_t a1)
{
  v2 = sub_21445DB64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21445D9F0(uint64_t a1)
{
  v2 = sub_21445DB64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21445DA2C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D70, &qword_2147472E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21445DB64();
  sub_2146DAA28();
  sub_2146DA368();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_21445DB64()
{
  result = qword_280B30490;
  if (!qword_280B30490)
  {
    result = swift_getWitnessTable(byte_214747648, &type metadata for EmojiImageMetadata.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B30490);
  }

  return result;
}

uint64_t sub_21445DBB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D78, &qword_2147472E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21445DB64();
  sub_2146DAA08();
  if (!v2)
  {
    v9 = sub_2146DA1A8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21445DD24(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D70, &qword_2147472E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21445DB64();
  sub_2146DAA28();
  sub_2146DA368();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21445DE8C()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_21445DEBC(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_21445DF14()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_21445DF44(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_21445DF9C()
{
  v1 = *(v0 + 40);

  return v1;
}

void sub_21445DFCC(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_21445E024()
{
  v1 = *(v0 + 56);

  return v1;
}

void sub_21445E054(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

unint64_t sub_21445E0AC()
{
  v1 = *v0;
  v2 = 0x6572436567616D69;
  if (v1 != 3)
  {
    v2 = 0xD000000000000011;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000010;
  }

  v3 = 0xD000000000000010;
  if (*v0)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21445E158@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21445ED6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21445E180(uint64_t a1)
{
  v2 = sub_21445E41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21445E1BC(uint64_t a1)
{
  v2 = sub_21445E41C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21445E1F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D80, &qword_2147472F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = v1[1];
  v8 = v1[3];
  v14[5] = v1[2];
  v14[6] = v7;
  v9 = v1[5];
  v14[3] = v1[4];
  v14[4] = v8;
  v10 = v1[7];
  v14[0] = v1[6];
  v14[1] = v10;
  v14[2] = v9;
  v11 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21445E41C();
  sub_2146DAA28();
  v20 = 0;
  v12 = v15;
  sub_2146DA368();
  if (v12)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = v11;
  v19 = 1;
  sub_2146DA2B8();
  v18 = 2;
  sub_2146DA2B8();
  v17 = 3;
  sub_2146DA2B8();
  v16 = 4;
  sub_2146DA2B8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21445E41C()
{
  result = qword_280B304A8;
  if (!qword_280B304A8)
  {
    result = swift_getWitnessTable(a1_5, &type metadata for EmojiImageMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B304A8);
  }

  return result;
}

void sub_21445E470(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D88, &qword_2147472F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21445E41C();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v31 = sub_2146DA1A8();
    LOBYTE(v37[0]) = 1;
    v9 = sub_2146DA0F8();
    v11 = v10;
    v30 = v9;
    LOBYTE(v37[0]) = 2;
    v12 = sub_2146DA0F8();
    v14 = v13;
    v29 = v12;
    LOBYTE(v37[0]) = 3;
    v15 = sub_2146DA0F8();
    v17 = v16;
    v28 = v15;
    v38 = 4;
    v18 = sub_2146DA0F8();
    v19 = *(v6 + 8);
    v27 = v18;
    v20 = v8;
    v22 = v21;
    v19(v20, v5);
    v23 = v31;
    *&v32 = v31;
    *(&v32 + 1) = v30;
    v24 = v29;
    *&v33 = v11;
    *(&v33 + 1) = v29;
    *&v34 = v14;
    *(&v34 + 1) = v28;
    *&v35 = v17;
    *(&v35 + 1) = v27;
    v36 = v22;
    *(a2 + 64) = v22;
    v25 = v35;
    *(a2 + 32) = v34;
    *(a2 + 48) = v25;
    v26 = v33;
    *a2 = v32;
    *(a2 + 16) = v26;
    sub_21445E79C(&v32, v37);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v37[0] = v23;
    v37[1] = v30;
    v37[2] = v11;
    v37[3] = v24;
    v37[4] = v14;
    v37[5] = v28;
    v37[6] = v17;
    v37[7] = v27;
    v37[8] = v22;
    sub_21445E7D4(v37);
  }
}

uint64_t sub_21445E834@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

unint64_t sub_21445E85C()
{
  result = qword_280B30470;
  if (!qword_280B30470)
  {
    result = swift_getWitnessTable(asc_214747300, &type metadata for EmojiImageMetadata.Constraints, v0, v1);
    atomic_store(result, &qword_280B30470);
  }

  return result;
}

unint64_t sub_21445E8B4()
{
  result = qword_280B30478;
  if (!qword_280B30478)
  {
    result = swift_getWitnessTable(byte_214747328, &type metadata for EmojiImageMetadata.Constraints, v0, v1);
    atomic_store(result, &qword_280B30478);
  }

  return result;
}

unint64_t sub_21445E908(uint64_t a1)
{
  result = sub_21445E930();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21445E930()
{
  result = qword_280B30458;
  if (!qword_280B30458)
  {
    result = swift_getWitnessTable(asc_21474737C, &type metadata for EmojiImageMetadata, v0, v1);
    atomic_store(result, &qword_280B30458);
  }

  return result;
}

unint64_t sub_21445E984(uint64_t a1)
{
  *(a1 + 8) = sub_21445E9B4();
  result = sub_21445EA08();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21445E9B4()
{
  result = qword_280B30460;
  if (!qword_280B30460)
  {
    result = swift_getWitnessTable(aQ_21, &type metadata for EmojiImageMetadata, v0, v1);
    atomic_store(result, &qword_280B30460);
  }

  return result;
}

unint64_t sub_21445EA08()
{
  result = qword_280B30468;
  if (!qword_280B30468)
  {
    result = swift_getWitnessTable(byte_2147473C0, &type metadata for EmojiImageMetadata, v0, v1);
    atomic_store(result, &qword_280B30468);
  }

  return result;
}

uint64_t sub_21445EA5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21445EAB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_21445EB60()
{
  result = qword_27C913D90;
  if (!qword_27C913D90)
  {
    result = swift_getWitnessTable(byte_214747518, &type metadata for EmojiImageMetadata.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913D90);
  }

  return result;
}

unint64_t sub_21445EBB8()
{
  result = qword_27C913D98;
  if (!qword_27C913D98)
  {
    result = swift_getWitnessTable(byte_2147475D0, &type metadata for EmojiImageMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913D98);
  }

  return result;
}

unint64_t sub_21445EC10()
{
  result = qword_280B30498;
  if (!qword_280B30498)
  {
    result = swift_getWitnessTable(aA_26, &type metadata for EmojiImageMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B30498);
  }

  return result;
}

unint64_t sub_21445EC68()
{
  result = qword_280B304A0;
  if (!qword_280B304A0)
  {
    result = swift_getWitnessTable(aQ6, &type metadata for EmojiImageMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B304A0);
  }

  return result;
}

unint64_t sub_21445ECC0()
{
  result = qword_280B30480;
  if (!qword_280B30480)
  {
    result = swift_getWitnessTable(byte_214747488, &type metadata for EmojiImageMetadata.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B30480);
  }

  return result;
}

unint64_t sub_21445ED18()
{
  result = qword_280B30488;
  if (!qword_280B30488)
  {
    result = swift_getWitnessTable(a7_0, &type metadata for EmojiImageMetadata.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B30488);
  }

  return result;
}

uint64_t sub_21445ED6C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000021479ACD0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021479ACF0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021479AD10 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6572436567616D69 && a2 == 0xEB00000000746964 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021479AD30 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_2146DA6A8();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

BlastDoor::ErrorMessage::ErrorType_optional __swiftcall ErrorMessage.ErrorType.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = rawValue;
  if (rawValue > 0x18Fu)
  {
    if (rawValue <= 0x1F5u)
    {
      if (rawValue == 400)
      {
        *v1 = 5;
        return rawValue;
      }

      if (rawValue == 500)
      {
        *v1 = 6;
        return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 0x1F6u:
          *v1 = 7;
          return rawValue;
        case 0x258u:
          *v1 = 8;
          return rawValue;
        case 0x259u:
          *v1 = 9;
          return rawValue;
      }
    }

    goto LABEL_23;
  }

  if (rawValue <= 0xC8u)
  {
    if (!rawValue)
    {
LABEL_24:
      *v1 = v2;
      return rawValue;
    }

    if (rawValue == 120)
    {
      *v1 = 1;
      return rawValue;
    }

LABEL_23:
    v2 = 10;
    goto LABEL_24;
  }

  if (rawValue == 201)
  {
    *v1 = 2;
    return rawValue;
  }

  if (rawValue == 202)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 250)
  {
    goto LABEL_23;
  }

  *v1 = 4;
  return rawValue;
}

uint64_t sub_21445F048()
{
  sub_2146DA958();
  sub_2146DA988();
  return sub_2146DA9B8();
}

uint64_t sub_21445F0D0(uint64_t a1)
{
  sub_2146DA958();
  sub_2146DA988();
  return sub_2146DA9B8();
}

uint64_t ErrorMessage.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ErrorMessage(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for ErrorMessage(uint64_t a1)
{
  result = qword_280B30A68;
  if (!qword_280B30A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ErrorMessage.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ErrorMessage(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t ErrorMessage.additionalInfo.getter()
{
  v1 = *(v0 + *(type metadata accessor for ErrorMessage(0) + 24));

  return v1;
}

void ErrorMessage.additionalInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ErrorMessage(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

unint64_t sub_21445F3EC()
{
  result = qword_27C913DA0;
  if (!qword_27C913DA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ErrorMessage.ErrorType, &type metadata for ErrorMessage.ErrorType, v0, v1);
    atomic_store(result, &qword_27C913DA0);
  }

  return result;
}

unint64_t sub_21445F440(uint64_t a1)
{
  *(a1 + 8) = sub_2142EEDB4();
  result = sub_2142EEE08();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21445F470(uint64_t a1)
{
  *(a1 + 8) = sub_21445F4D8(&qword_27C913DA8, protocol conformance descriptor for ErrorMessage);
  result = sub_21445F4D8(&qword_27C913DB0, protocol conformance descriptor for ErrorMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21445F4D8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for ErrorMessage(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21445F544(uint64_t a1)
{
  type metadata accessor for Metadata(319);
  if (v1 <= 0x3F)
  {
    sub_2143ACE3C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21445F5E0()
{
  result = qword_27C913DB8;
  if (!qword_27C913DB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ErrorMessage.ErrorType, &type metadata for ErrorMessage.ErrorType, v0, v1);
    atomic_store(result, &qword_27C913DB8);
  }

  return result;
}

void sub_21445F634(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 4;
  if (v4 < 4)
  {
    v5 = v4;
  }

  *a3 = v5;
}

unint64_t sub_21445F690()
{
  v1 = 0x313030327061;
  v2 = 0xD00000000000001BLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000022;
  }

  if (*v0)
  {
    v1 = 0x323030327061;
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

uint64_t sub_21445F714()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_21445F7D4(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_21445F880(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_21445F948(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x313030327061;
  v4 = 0xD00000000000001BLL;
  v5 = 0x8000000214787FB0;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000022;
    v5 = 0x8000000214787FD0;
  }

  if (*v1)
  {
    v3 = 0x323030327061;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_21445FAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IMS3GPPCharacteristic(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21445FB34()
{
  v1 = *v0;

  return v1;
}

void sub_21445FB64(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_21445FBBC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 40);
  return sub_213FDC9D0(v2, v3);
}

__n128 sub_21445FBD8(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u16[4];
  sub_213FDC6D0(*(v1 + 16), *(v1 + 24));
  result = v5;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t sub_21445FCBC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GSMARCSApplicationCharacteristic(0) + 24);

  return sub_21445FD00(a1, v3);
}

uint64_t sub_21445FD00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909230, &unk_214747860);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21445FDB8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GSMARCSApplicationCharacteristic(0) + 28);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23 = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  v24 = *(v3 + 128);
  *(a1 + 128) = *(v3 + 128);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_213FB2E54(v17, v16, &qword_27C909270, &qword_2146F5620);
}

__n128 sub_21445FE6C(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GSMARCSApplicationCharacteristic(0) + 28);
  v4 = *(v3 + 112);
  v12[6] = *(v3 + 96);
  v12[7] = v4;
  v13 = *(v3 + 128);
  v5 = *(v3 + 48);
  v12[2] = *(v3 + 32);
  v12[3] = v5;
  v6 = *(v3 + 80);
  v12[4] = *(v3 + 64);
  v12[5] = v6;
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  sub_21445FEFC(v12);
  v8 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v8;
  *(v3 + 128) = *(a1 + 128);
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  v10 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v10;
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

uint64_t sub_21445FEFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909270, &qword_2146F5620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_21445FFAC()
{
  v1 = type metadata accessor for ApplicationCharacteristic(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214460080(v0, v3, type metadata accessor for ApplicationCharacteristic);
  v4 = swift_getEnumCaseMultiPayload() == 2;
  sub_2144600E8(v3);
  return v4;
}

uint64_t sub_214460080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2144600E8(uint64_t a1)
{
  v2 = type metadata accessor for ApplicationCharacteristic(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_214460148()
{
  result = qword_27C913DC0;
  if (!qword_27C913DC0)
  {
    result = swift_getWitnessTable(aY_20, &type metadata for OMADMApplicationID, v0, v1);
    atomic_store(result, &qword_27C913DC0);
  }

  return result;
}

uint64_t sub_21446019C(uint64_t a1)
{
  *(a1 + 8) = sub_214460240(&qword_27C90CDD8, type metadata accessor for IMS3GPPApplicationCharacteristic, aIMF);
  result = sub_214460240(&qword_27C90CDB8, type metadata accessor for IMS3GPPApplicationCharacteristic, byte_2146FCCC8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214460240(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214460288(uint64_t a1)
{
  *(a1 + 8) = sub_214460240(&qword_27C90CDD0, type metadata accessor for GSMARCSApplicationCharacteristic, byte_2146FCCF0);
  result = sub_214460240(&qword_27C90CDB0, type metadata accessor for GSMARCSApplicationCharacteristic, byte_2146FCD18);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21446030C(uint64_t a1)
{
  *(a1 + 8) = sub_214460240(&qword_27C909870, type metadata accessor for ApplicationCharacteristic, aIs);
  result = sub_214460240(&qword_27C9098D0, type metadata accessor for ApplicationCharacteristic, byte_214702EE8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144603C8(uint64_t a1)
{
  result = type metadata accessor for IMS3GPPCharacteristic(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21446045C(uint64_t a1)
{
  sub_21403BEC8(319, &qword_27C913DE8, &type metadata for ServicesCharacteristic);
  if (v1 <= 0x3F)
  {
    sub_214460528(319);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_27C913DF8, &type metadata for CapDiscoveryCharacteristic);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214460528(uint64_t a1)
{
  if (!qword_27C913DF0)
  {
    type metadata accessor for MessagingCharacteristic(255);
    v1 = sub_2146D9D38();
    if (!v2)
    {
      atomic_store(v1, &qword_27C913DF0);
    }
  }
}

uint64_t sub_214460580(uint64_t a1)
{
  result = type metadata accessor for IMS3GPPApplicationCharacteristic(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GSMARCSApplicationCharacteristic(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2144605F4()
{
  result = qword_27C913E10;
  if (!qword_27C913E10)
  {
    result = swift_getWitnessTable(byte_2147478D8, &type metadata for OMADMApplicationID, v0, v1);
    atomic_store(result, &qword_27C913E10);
  }

  return result;
}

uint64_t MBDChipAction.dictionaryRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C5E0, &qword_2146F6D30);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v167 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v167 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906180, &qword_2146F4250);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v167 - v8;
  v10 = type metadata accessor for MBDChipAction(0);
  sub_213FB2E54(v0 + *(v10 + 24), v9, &qword_27C906180, &qword_2146F4250);
  v11 = type metadata accessor for MBDActionContent(0);
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
LABEL_2:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2146E6910;
    *(v12 + 32) = 0x6974736567677573;
    *(v12 + 40) = 0xEA00000000006E6FLL;
    v13 = v0[1];
    *&v190[0] = *v0;
    *(&v190[0] + 1) = v13;
    v14 = *(v0 + 2);
    v190[1] = *(v0 + 1);
    v190[2] = v14;
    v15 = sub_2143E26FC();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *(v12 + 48) = v15;
    *(v12 + 72) = v16;
    *(v12 + 80) = 1701869940;
    *(v12 + 120) = MEMORY[0x277D83B88];
    *(v12 + 88) = 0xE400000000000000;
    *(v12 + 96) = -1;
    v17 = sub_214045690(v12);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
LABEL_3:
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v18 = sub_2140418B8(v17);
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v74 = *v9;
        v75 = *(v9 + 1);
        v76 = *(v9 + 2);
        v41 = *(v9 + 3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_2146E68D0;
        *(v77 + 32) = 0x6974736567677573;
        *(v77 + 40) = 0xEA00000000006E6FLL;
        v78 = v0[1];
        *&v190[0] = *v0;
        *(&v190[0] + 1) = v78;
        v79 = *(v0 + 2);
        v190[1] = *(v0 + 1);
        v190[2] = v79;
        v80 = sub_2143E26FC();
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v77 + 48) = v80;
        *(v77 + 72) = v81;
        *(v77 + 80) = 1701869940;
        v82 = MEMORY[0x277D83B88];
        *(v77 + 88) = 0xE400000000000000;
        *(v77 + 96) = 1;
        *(v77 + 120) = v82;
        *(v77 + 128) = 0x6E6F69746361;
        *(v77 + 136) = 0xE600000000000000;
        v168 = v75;
        if (!v74)
        {
          goto LABEL_34;
        }

        v83 = v81;
        v167 = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
        v84 = swift_allocObject();
        *(v84 + 16) = xmmword_2146EA710;
        *(v84 + 32) = 7107189;
        v85 = v84 + 32;
        v86 = 0xE300000000000000;
        goto LABEL_24;
      case 2u:
        v87 = *(v9 + 3);
        v190[2] = *(v9 + 2);
        v190[3] = v87;
        *(&v190[3] + 9) = *(v9 + 57);
        v88 = *(v9 + 1);
        v190[0] = *v9;
        v190[1] = v88;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_2146E68D0;
        *(v89 + 32) = 0x6974736567677573;
        *(v89 + 40) = 0xEA00000000006E6FLL;
        v90 = v0[1];
        *&v169 = *v0;
        *(&v169 + 1) = v90;
        v91 = *(v0 + 2);
        v170 = *(v0 + 1);
        v171 = v91;
        v92 = sub_2143E26FC();
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v89 + 48) = v92;
        *(v89 + 72) = v93;
        *(v89 + 80) = 1701869940;
        v94 = MEMORY[0x277D83B88];
        *(v89 + 88) = 0xE400000000000000;
        *(v89 + 96) = 2;
        *(v89 + 120) = v94;
        *(v89 + 128) = 0x6E6F69746361;
        *(v89 + 136) = 0xE600000000000000;
        if (*&v190[0])
        {
          v95 = v93;
          *&v185[0] = *&v190[0];
          *(&v185[1] + 8) = *(&v190[1] + 8);
          *(&v185[2] + 8) = *(&v190[2] + 8);
          *(&v185[3] + 8) = *(&v190[3] + 8);
          BYTE8(v185[4]) = BYTE8(v190[4]);
          *(v185 + 8) = *(v190 + 8);
          v96 = sub_2143A5734();
        }

        else
        {
          v96 = 0;
          v95 = 0;
          *(v89 + 152) = 0;
          *(v89 + 160) = 0;
        }

        *(v89 + 144) = v96;
        *(v89 + 168) = v95;
        v163 = sub_214045690(v89);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v18 = sub_2140418B8(v163);

        v156 = &qword_27C90C6E8;
        v157 = &qword_2146F6D88;
        goto LABEL_57;
      case 3u:
        v39 = *v9;
        v168 = *(v9 + 1);
        v40 = *(v9 + 2);
        v41 = *(v9 + 3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_2146E68D0;
        *(v42 + 32) = 0x6974736567677573;
        *(v42 + 40) = 0xEA00000000006E6FLL;
        v43 = v0[1];
        *&v190[0] = *v0;
        *(&v190[0] + 1) = v43;
        v44 = *(v0 + 2);
        v190[1] = *(v0 + 1);
        v190[2] = v44;
        v45 = sub_2143E26FC();
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v42 + 48) = v45;
        *(v42 + 72) = v46;
        *(v42 + 80) = 1701869940;
        v47 = MEMORY[0x277D83B88];
        *(v42 + 88) = 0xE400000000000000;
        *(v42 + 96) = 3;
        *(v42 + 120) = v47;
        *(v42 + 128) = 0x6E6F69746361;
        *(v42 + 136) = 0xE600000000000000;
        if (v39)
        {
          v48 = v46;
          v167 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_2146EA710;
          *(v49 + 32) = 0x6D754E656E6F6870;
          v50 = v49 + 32;
          *(v49 + 40) = 0xEB00000000726562;
          if (!v41)
          {
            goto LABEL_60;
          }

          *(v49 + 72) = MEMORY[0x277D837D0];
          *(v49 + 48) = v40;
          *(v49 + 56) = v41;
          v51 = v49;

          v52 = sub_2140457C0(v51);
          swift_setDeallocating();
          sub_213FB2DF4(v50, &qword_27C903FE0, &unk_2146EA760);
          swift_deallocClassInstance();
          *(v42 + 168) = v48;
          *(v42 + 144) = v52;
          v39 = v167;
        }

        else
        {
          *(v42 + 144) = 0u;
          *(v42 + 160) = 0u;
        }

        v161 = sub_214045690(v42);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v18 = sub_2140418B8(v161);

        v152 = v39;
        v153 = v168;
        v154 = v40;
        goto LABEL_48;
      case 4u:
        v74 = *v9;
        v105 = *(v9 + 1);
        v76 = *(v9 + 2);
        v41 = *(v9 + 3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_2146E68D0;
        *(v77 + 32) = 0x6974736567677573;
        *(v77 + 40) = 0xEA00000000006E6FLL;
        v106 = v0[1];
        *&v190[0] = *v0;
        *(&v190[0] + 1) = v106;
        v107 = *(v0 + 2);
        v190[1] = *(v0 + 1);
        v190[2] = v107;
        v108 = sub_2143E26FC();
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v77 + 48) = v108;
        *(v77 + 72) = v109;
        *(v77 + 80) = 1701869940;
        v110 = MEMORY[0x277D83B88];
        *(v77 + 88) = 0xE400000000000000;
        *(v77 + 96) = 4;
        *(v77 + 120) = v110;
        *(v77 + 128) = 0x6E6F69746361;
        *(v77 + 136) = 0xE600000000000000;
        v168 = v105;
        if (v74)
        {
          v83 = v109;
          v167 = v74;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
          v84 = swift_allocObject();
          *(v84 + 16) = xmmword_2146EA710;
          *(v84 + 32) = 0x6D754E656E6F6870;
          v85 = v84 + 32;
          v86 = 0xEB00000000726562;
LABEL_24:
          *(v84 + 40) = v86;
          if (!v41)
          {
LABEL_60:
            result = sub_2146DA018();
            __break(1u);
            return result;
          }

          *(v84 + 72) = MEMORY[0x277D837D0];
          *(v84 + 48) = v76;
          *(v84 + 56) = v41;
          v111 = v76;
          v112 = v84;

          v113 = sub_2140457C0(v112);
          swift_setDeallocating();
          sub_213FB2DF4(v85, &qword_27C903FE0, &unk_2146EA760);
          swift_deallocClassInstance();
          *(v77 + 168) = v83;
          *(v77 + 144) = v113;
          v74 = v167;
        }

        else
        {
LABEL_34:
          *(v77 + 144) = 0u;
          *(v77 + 160) = 0u;
          v111 = v76;
        }

        v151 = sub_214045690(v77);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v18 = sub_2140418B8(v151);

        v152 = v74;
        v153 = v168;
        v154 = v111;
LABEL_48:
        sub_21431E10C(v152, v153, v154, v41);
        break;
      case 5u:
        v120 = *(v9 + 9);
        v186 = *(v9 + 8);
        v187 = v120;
        v188 = *(v9 + 10);
        v189 = v9[176];
        v121 = *(v9 + 5);
        v185[4] = *(v9 + 4);
        v185[5] = v121;
        v122 = *(v9 + 7);
        v185[6] = *(v9 + 6);
        v185[7] = v122;
        v123 = *(v9 + 1);
        v185[0] = *v9;
        v185[1] = v123;
        v124 = *(v9 + 3);
        v185[2] = *(v9 + 2);
        v185[3] = v124;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v125 = swift_allocObject();
        *(v125 + 16) = xmmword_2146E68D0;
        *(v125 + 32) = 0x6974736567677573;
        *(v125 + 40) = 0xEA00000000006E6FLL;
        v126 = v0[1];
        v181 = *v0;
        v182 = v126;
        v127 = *(v0 + 2);
        v183 = *(v0 + 1);
        v184 = v127;
        v128 = sub_2143E26FC();
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v125 + 48) = v128;
        *(v125 + 72) = v129;
        *(v125 + 80) = 1701869940;
        v130 = MEMORY[0x277D83B88];
        *(v125 + 88) = 0xE400000000000000;
        *(v125 + 96) = 5;
        *(v125 + 120) = v130;
        *(v125 + 128) = 0x6E6F69746361;
        *(v125 + 136) = 0xE600000000000000;
        v191 = v186;
        v192 = v187;
        v193 = v188;
        v194 = v189;
        v190[4] = v185[4];
        v190[5] = v185[5];
        v190[6] = v185[6];
        v190[7] = v185[7];
        v190[0] = v185[0];
        v190[1] = v185[1];
        v190[2] = v185[2];
        v190[3] = v185[3];
        if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v190) == 1)
        {
          v131 = 0;
          v129 = 0;
          *(v125 + 152) = 0;
          *(v125 + 160) = 0;
        }

        else
        {
          v177 = v191;
          v178 = v192;
          v179 = v193;
          v180 = v194;
          v173 = v190[4];
          v174 = v190[5];
          v175 = v190[6];
          v176 = v190[7];
          v169 = v190[0];
          v170 = v190[1];
          v171 = v190[2];
          v172 = v190[3];
          v131 = sub_2143BE6A8();
        }

        *(v125 + 144) = v131;
        *(v125 + 168) = v129;
        v155 = sub_214045690(v125);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v18 = sub_2140418B8(v155);

        v156 = &qword_27C90C6A0;
        v157 = &unk_2146F6D70;
        v158 = v185;
        goto LABEL_58;
      case 6u:
        v97 = *v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_2146E68D0;
        *(v54 + 32) = 0x6974736567677573;
        *(v54 + 40) = 0xEA00000000006E6FLL;
        v98 = v0[1];
        *&v190[0] = *v0;
        *(&v190[0] + 1) = v98;
        v99 = *(v0 + 2);
        v190[1] = *(v0 + 1);
        v190[2] = v99;
        v100 = sub_2143E26FC();
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v54 + 48) = v100;
        *(v54 + 72) = v101;
        *(v54 + 80) = 1701869940;
        v102 = MEMORY[0x277D83B88];
        *(v54 + 88) = 0xE400000000000000;
        *(v54 + 96) = 6;
        *(v54 + 120) = v102;
        *(v54 + 128) = 0x6E6F69746361;
        *(v54 + 136) = 0xE600000000000000;
        if (v97 == 2)
        {
          goto LABEL_27;
        }

        v60 = v101;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_2146EA710;
        *(v103 + 32) = 0x68737550646E6573;
        v62 = v103 + 32;
        *(v103 + 40) = 0xE800000000000000;
        v104 = sub_2146D9988();
        *(v103 + 72) = sub_21403EBDC();
        *(v103 + 48) = v104;
        v61 = v103;
        goto LABEL_38;
      case 7u:
        sub_214463DEC(v9, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v143 = swift_allocObject();
        *(v143 + 16) = xmmword_2146E68D0;
        *(v143 + 32) = 0x6974736567677573;
        *(v143 + 40) = 0xEA00000000006E6FLL;
        v144 = v0[1];
        *&v190[0] = *v0;
        *(&v190[0] + 1) = v144;
        v145 = *(v0 + 2);
        v190[1] = *(v0 + 1);
        v190[2] = v145;
        v146 = sub_2143E26FC();
        v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v143 + 48) = v146;
        *(v143 + 72) = v147;
        *(v143 + 80) = 1701869940;
        v148 = MEMORY[0x277D83B88];
        *(v143 + 88) = 0xE400000000000000;
        *(v143 + 96) = 7;
        *(v143 + 120) = v148;
        *(v143 + 128) = 0x6E6F69746361;
        *(v143 + 136) = 0xE600000000000000;
        sub_213FB2E54(v6, v4, &qword_27C90C5E0, &qword_2146F6D30);
        v149 = type metadata accessor for MBDActionCalendar(0);
        if ((*(*(v149 - 8) + 48))(v4, 1, v149) == 1)
        {
          sub_213FB2DF4(v4, &qword_27C90C5E0, &qword_2146F6D30);
          v150 = 0;
          v147 = 0;
          *(v143 + 152) = 0;
          *(v143 + 160) = 0;
        }

        else
        {
          v150 = sub_2144455C0();
          sub_214463F14(v4, type metadata accessor for MBDActionCalendar);
        }

        *(v143 + 144) = v150;
        *(v143 + 168) = v147;
        v159 = sub_214045690(v143);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v18 = sub_2140418B8(v159);

        v156 = &qword_27C90C5E0;
        v157 = &qword_2146F6D30;
        v158 = v6;
        goto LABEL_58;
      case 8u:
        v64 = *(v9 + 3);
        v190[2] = *(v9 + 2);
        v190[3] = v64;
        *(&v190[3] + 9) = *(v9 + 57);
        v65 = *(v9 + 1);
        v190[0] = *v9;
        v190[1] = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_2146E68D0;
        *(v66 + 32) = 0x6974736567677573;
        *(v66 + 40) = 0xEA00000000006E6FLL;
        v67 = v0[1];
        *&v169 = *v0;
        *(&v169 + 1) = v67;
        v68 = *(v0 + 2);
        v170 = *(v0 + 1);
        v171 = v68;
        v69 = sub_2143E26FC();
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v66 + 48) = v69;
        *(v66 + 72) = v70;
        *(v66 + 80) = 1701869940;
        v71 = MEMORY[0x277D83B88];
        *(v66 + 88) = 0xE400000000000000;
        *(v66 + 96) = 8;
        *(v66 + 120) = v71;
        *(v66 + 128) = 0x6E6F69746361;
        *(v66 + 136) = 0xE600000000000000;
        if (*&v190[0])
        {
          v72 = v70;
          *&v185[0] = *&v190[0];
          *(&v185[1] + 8) = *(&v190[1] + 8);
          *(&v185[2] + 8) = *(&v190[2] + 8);
          *(&v185[3] + 8) = *(&v190[3] + 8);
          BYTE8(v185[4]) = BYTE8(v190[4]);
          *(v185 + 8) = *(v190 + 8);
          v73 = sub_2144D8EF4();
        }

        else
        {
          v73 = 0;
          v72 = 0;
          *(v66 + 152) = 0;
          *(v66 + 160) = 0;
        }

        *(v66 + 144) = v73;
        *(v66 + 168) = v72;
        v162 = sub_214045690(v66);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v18 = sub_2140418B8(v162);

        v156 = &qword_27C90C660;
        v157 = &qword_2146F6D60;
        goto LABEL_57;
      case 9u:
        v132 = *(v9 + 5);
        v190[4] = *(v9 + 4);
        v190[5] = v132;
        v190[6] = *(v9 + 6);
        LOBYTE(v190[7]) = v9[112];
        v133 = *(v9 + 1);
        v190[0] = *v9;
        v190[1] = v133;
        v134 = *(v9 + 3);
        v190[2] = *(v9 + 2);
        v190[3] = v134;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v135 = swift_allocObject();
        *(v135 + 16) = xmmword_2146E68D0;
        *(v135 + 32) = 0x6974736567677573;
        *(v135 + 40) = 0xEA00000000006E6FLL;
        v136 = v0[1];
        *&v169 = *v0;
        *(&v169 + 1) = v136;
        v137 = *(v0 + 2);
        v170 = *(v0 + 1);
        v171 = v137;
        v138 = sub_2143E26FC();
        v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v135 + 48) = v138;
        *(v135 + 72) = v139;
        *(v135 + 80) = 1701869940;
        v140 = MEMORY[0x277D83B88];
        *(v135 + 88) = 0xE400000000000000;
        *(v135 + 96) = 9;
        *(v135 + 120) = v140;
        *(v135 + 128) = 0x6E6F69746361;
        *(v135 + 136) = 0xE600000000000000;
        if (*&v190[0])
        {
          v141 = v139;
          *&v185[0] = *&v190[0];
          *(&v185[3] + 8) = *(&v190[3] + 8);
          *(&v185[4] + 8) = *(&v190[4] + 8);
          *(&v185[5] + 8) = *(&v190[5] + 8);
          *(&v185[6] + 1) = *(&v190[6] + 1);
          *(v185 + 8) = *(v190 + 8);
          *(&v185[1] + 8) = *(&v190[1] + 8);
          *(&v185[2] + 8) = *(&v190[2] + 8);
          v142 = sub_214419CDC();
        }

        else
        {
          v142 = 0;
          v141 = 0;
          *(v135 + 152) = 0;
          *(v135 + 160) = 0;
        }

        *(v135 + 144) = v142;
        *(v135 + 168) = v141;
        v165 = sub_214045690(v135);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v18 = sub_2140418B8(v165);

        v156 = &qword_27C90C648;
        v157 = &unk_214747AA0;
        goto LABEL_57;
      case 0xAu:
        v29 = *(v9 + 3);
        v190[2] = *(v9 + 2);
        v190[3] = v29;
        *(&v190[3] + 9) = *(v9 + 57);
        v30 = *(v9 + 1);
        v190[0] = *v9;
        v190[1] = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_2146E68D0;
        *(v31 + 32) = 0x6974736567677573;
        *(v31 + 40) = 0xEA00000000006E6FLL;
        v32 = v0[1];
        *&v169 = *v0;
        *(&v169 + 1) = v32;
        v33 = *(v0 + 2);
        v170 = *(v0 + 1);
        v171 = v33;
        v34 = sub_2143E26FC();
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v31 + 48) = v34;
        *(v31 + 72) = v35;
        *(v31 + 80) = 1701869940;
        v36 = MEMORY[0x277D83B88];
        *(v31 + 88) = 0xE400000000000000;
        *(v31 + 96) = 10;
        *(v31 + 120) = v36;
        *(v31 + 128) = 0x6E6F69746361;
        *(v31 + 136) = 0xE600000000000000;
        if (*&v190[0])
        {
          v37 = v35;
          *&v185[0] = *&v190[0];
          *(&v185[1] + 8) = *(&v190[1] + 8);
          *(&v185[2] + 8) = *(&v190[2] + 8);
          *(&v185[3] + 8) = *(&v190[3] + 8);
          BYTE8(v185[4]) = BYTE8(v190[4]);
          *(v185 + 8) = *(v190 + 8);
          v38 = sub_214699178();
        }

        else
        {
          v38 = 0;
          v37 = 0;
          *(v31 + 152) = 0;
          *(v31 + 160) = 0;
        }

        *(v31 + 144) = v38;
        *(v31 + 168) = v37;
        v160 = sub_214045690(v31);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v18 = sub_2140418B8(v160);

        v156 = &qword_27C90C630;
        v157 = &unk_2146F6D50;
        goto LABEL_57;
      case 0xBu:
        v53 = *v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_2146E68D0;
        *(v54 + 32) = 0x6974736567677573;
        *(v54 + 40) = 0xEA00000000006E6FLL;
        v55 = v0[1];
        *&v190[0] = *v0;
        *(&v190[0] + 1) = v55;
        v56 = *(v0 + 2);
        v190[1] = *(v0 + 1);
        v190[2] = v56;
        v57 = sub_2143E26FC();
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v54 + 48) = v57;
        *(v54 + 72) = v58;
        *(v54 + 80) = 1701869940;
        v59 = MEMORY[0x277D83B88];
        *(v54 + 88) = 0xE400000000000000;
        *(v54 + 96) = 11;
        *(v54 + 120) = v59;
        *(v54 + 128) = 0x6E6F69746361;
        *(v54 + 136) = 0xE600000000000000;
        if (v53 == 2)
        {
          goto LABEL_27;
        }

        v60 = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
        v61 = swift_allocObject();
        *(v61 + 32) = 1701869940;
        v62 = v61 + 32;
        *(v61 + 16) = xmmword_2146EA710;
        v63 = (v53 & 1) - 1;
        goto LABEL_37;
      case 0xCu:
        v114 = *v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_2146E68D0;
        *(v54 + 32) = 0x6974736567677573;
        *(v54 + 40) = 0xEA00000000006E6FLL;
        v115 = v0[1];
        *&v190[0] = *v0;
        *(&v190[0] + 1) = v115;
        v116 = *(v0 + 2);
        v190[1] = *(v0 + 1);
        v190[2] = v116;
        v117 = sub_2143E26FC();
        v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v54 + 48) = v117;
        *(v54 + 72) = v118;
        *(v54 + 80) = 1701869940;
        v59 = MEMORY[0x277D83B88];
        *(v54 + 88) = 0xE400000000000000;
        *(v54 + 96) = 12;
        *(v54 + 120) = v59;
        *(v54 + 128) = 0x6E6F69746361;
        *(v54 + 136) = 0xE600000000000000;
        if (v114 == 3)
        {
LABEL_27:
          v119 = 0;
          v60 = 0;
          *(v54 + 152) = 0;
          *(v54 + 160) = 0;
        }

        else
        {
          v60 = v118;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
          v61 = swift_allocObject();
          *(v61 + 16) = xmmword_2146EA710;
          *(v61 + 32) = 1701869940;
          v62 = v61 + 32;
          v63 = v114 - 1;
LABEL_37:
          *(v61 + 72) = v59;
          *(v61 + 40) = 0xE400000000000000;
          *(v61 + 48) = v63;
LABEL_38:
          v119 = sub_2140457C0(v61);
          swift_setDeallocating();
          sub_213FB2DF4(v62, &qword_27C903FE0, &unk_2146EA760);
          swift_deallocClassInstance();
        }

        *(v54 + 144) = v119;
        *(v54 + 168) = v60;
        v17 = sub_214045690(v54);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        goto LABEL_3;
      case 0xDu:
        goto LABEL_2;
      default:
        v19 = *(v9 + 3);
        v190[2] = *(v9 + 2);
        v190[3] = v19;
        v190[4] = *(v9 + 4);
        LOBYTE(v190[5]) = v9[80];
        v20 = *(v9 + 1);
        v190[0] = *v9;
        v190[1] = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_2146E68D0;
        *(v21 + 32) = 0x6974736567677573;
        *(v21 + 40) = 0xEA00000000006E6FLL;
        v22 = v0[1];
        *&v169 = *v0;
        *(&v169 + 1) = v22;
        v23 = *(v0 + 2);
        v170 = *(v0 + 1);
        v171 = v23;
        v24 = sub_2143E26FC();
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v21 + 48) = v24;
        *(v21 + 72) = v25;
        *(v21 + 80) = 1701869940;
        v26 = MEMORY[0x277D83B88];
        *(v21 + 88) = 0xE400000000000000;
        *(v21 + 96) = 0;
        *(v21 + 120) = v26;
        *(v21 + 128) = 0x6E6F69746361;
        *(v21 + 136) = 0xE600000000000000;
        if (*(&v190[0] + 1))
        {
          v27 = v25;
          v185[0] = v190[0];
          v185[3] = v190[3];
          v185[4] = v190[4];
          LOBYTE(v185[5]) = v190[5];
          v185[1] = v190[1];
          v185[2] = v190[2];
          v28 = sub_214698A70();
        }

        else
        {
          v28 = 0;
          v27 = 0;
          *(v21 + 152) = 0;
          *(v21 + 160) = 0;
        }

        *(v21 + 144) = v28;
        *(v21 + 168) = v27;
        v164 = sub_214045690(v21);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v18 = sub_2140418B8(v164);

        v156 = &qword_27C90C718;
        v157 = &qword_214747AB0;
LABEL_57:
        v158 = v190;
LABEL_58:
        sub_213FB2DF4(v158, v156, v157);
        return v18;
    }
  }

  return v18;
}

uint64_t sub_214461F18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  if (v2 != 1)
  {
    v4 = 0x6E6F69746361;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6974736567677573;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006E6FLL;
  }

  v7 = 0xE400000000000000;
  v8 = 1701869940;
  if (*a2 != 1)
  {
    v8 = 0x6E6F69746361;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6974736567677573;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006E6FLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_214462004()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2144620A0(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_214462128(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2144621C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214464630(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2144621F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E6FLL;
  v4 = 0xE400000000000000;
  v5 = 1701869940;
  if (v2 != 1)
  {
    v5 = 0x6E6F69746361;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6974736567677573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_214462248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214464630(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214462270(uint64_t a1)
{
  v2 = sub_214463E5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144622AC(uint64_t a1)
{
  v2 = sub_214463E5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDChipAction.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C5E0, &qword_2146F6D30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v70 - v4;
  v6 = type metadata accessor for MBDActionContent(0);
  v80 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913E18, &qword_214747AB8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v70 - v11;
  v13 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_214463E5C();
  v14 = v82;
  sub_2146DAA08();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }

  v77 = v5;
  v15 = v80;
  v78 = v6;
  v16 = v81;
  v82 = v10;
  v79 = v8;
  v95 = 0;
  sub_2142EA230();
  sub_2146DA1C8();
  v17 = v12;
  v19 = *(&v84 + 1);
  v75 = v84;
  v20 = *(&v85 + 1);
  v76 = v85;
  v21 = v17;
  v22 = v86;
  v95 = 1;
  sub_2142EA284();
  sub_2146DA1C8();
  v74 = v20;
  v71 = v9;
  v72 = v19;
  v73 = *(&v22 + 1);
  v23 = v84;
  swift_storeEnumTagMultiPayload();
  v70 = v23;
  v24 = v16;
  switch(v23)
  {
    case 1:
      v95 = 2;
      sub_21431EDD4();
      v48 = v71;
      sub_2146DA148();
      v30 = v76;
      v25 = v15;
      v26 = v22;
      v27 = v79;
      sub_214463F14(v79, type metadata accessor for MBDActionContent);
      (*(v82 + 8))(v21, v48);
      v49 = *v87;
      *(v27 + 32) = v86;
      *(v27 + 48) = v49;
      *(v27 + 64) = *&v87[16];
      *(v27 + 80) = v88;
      v50 = v85;
      *v27 = v84;
      *(v27 + 16) = v50;
      v29 = v78;
      goto LABEL_19;
    case 2:
      v95 = 2;
      sub_21431ECFC();
      v41 = v71;
      sub_2146DA148();
      v30 = v76;
      v25 = v15;
      v26 = v22;
      v27 = v79;
      sub_214463F14(v79, type metadata accessor for MBDActionContent);
      (*(v82 + 8))(v21, v41);
      v42 = v86;
      v43 = v85;
      *v27 = v84;
      *(v27 + 16) = v43;
      *(v27 + 32) = v42;
      v29 = v78;
      goto LABEL_19;
    case 3:
      v95 = 2;
      sub_21431EC24();
      v44 = v71;
      sub_2146DA148();
      v30 = v76;
      v25 = v15;
      v26 = v22;
      v27 = v79;
      sub_214463F14(v79, type metadata accessor for MBDActionContent);
      (*(v82 + 8))(v21, v44);
      v45 = *v87;
      *(v27 + 32) = v86;
      *(v27 + 48) = v45;
      *(v27 + 57) = *&v87[9];
      v46 = v85;
      *v27 = v84;
      *(v27 + 16) = v46;
      v29 = v78;
      goto LABEL_19;
    case 4:
      v95 = 2;
      sub_21431EB4C();
      v34 = v71;
      sub_2146DA148();
      v30 = v76;
      v25 = v15;
      v26 = v22;
      v27 = v79;
      sub_214463F14(v79, type metadata accessor for MBDActionContent);
      (*(v82 + 8))(v21, v34);
      v35 = v86;
      v36 = v85;
      *v27 = v84;
      *(v27 + 16) = v36;
      *(v27 + 32) = v35;
      v29 = v78;
      goto LABEL_19;
    case 5:
      v95 = 2;
      sub_21431EA74();
      v51 = v71;
      sub_2146DA148();
      v30 = v76;
      v25 = v15;
      v26 = v22;
      v27 = v79;
      sub_214463F14(v79, type metadata accessor for MBDActionContent);
      (*(v82 + 8))(v21, v51);
      v52 = v86;
      v53 = v85;
      *v27 = v84;
      *(v27 + 16) = v53;
      *(v27 + 32) = v52;
      v29 = v78;
      goto LABEL_19;
    case 6:
      v95 = 2;
      sub_214464070();
      v55 = v71;
      sub_2146DA0C8();
      v30 = v76;
      v25 = v15;
      v26 = v22;
      v27 = v79;
      sub_214463F14(v79, type metadata accessor for MBDActionContent);
      (*(v82 + 8))(v21, v55);
      v56 = v92;
      *(v27 + 128) = v91;
      *(v27 + 144) = v56;
      *(v27 + 160) = v93;
      *(v27 + 176) = v94;
      v57 = v88;
      *(v27 + 64) = *&v87[16];
      *(v27 + 80) = v57;
      v58 = v90;
      *(v27 + 96) = v89;
      *(v27 + 112) = v58;
      v59 = v85;
      *v27 = v84;
      *(v27 + 16) = v59;
      v60 = *v87;
      *(v27 + 32) = v86;
      *(v27 + 48) = v60;
      v29 = v78;
      goto LABEL_19;
    case 7:
      v95 = 2;
      sub_21431E8C4();
      v47 = v71;
      sub_2146DA148();
      v30 = v76;
      v25 = v15;
      v26 = v22;
      v27 = v79;
      sub_214463F14(v79, type metadata accessor for MBDActionContent);
      (*(v82 + 8))(v21, v47);
      *v27 = v84;
      v29 = v78;
      goto LABEL_19;
    case 8:
      v25 = v15;
      type metadata accessor for MBDActionCalendar(0);
      LOBYTE(v84) = 2;
      sub_2144643EC(&qword_27C913E40, aM_189);
      v65 = v71;
      sub_2146DA0C8();
      v30 = v76;
      v26 = v22;
      v27 = v79;
      sub_214463F14(v79, type metadata accessor for MBDActionContent);
      (*(v82 + 8))(v21, v65);
      sub_214463DEC(v77, v27);
      v29 = v78;
      goto LABEL_19;
    case 9:
      v95 = 2;
      sub_21446401C();
      v38 = v71;
      sub_2146DA0C8();
      v30 = v76;
      v25 = v15;
      v26 = v22;
      v27 = v79;
      sub_214463F14(v79, type metadata accessor for MBDActionContent);
      (*(v82 + 8))(v21, v38);
      v39 = *v87;
      *(v27 + 32) = v86;
      *(v27 + 48) = v39;
      *(v27 + 57) = *&v87[9];
      v40 = v85;
      *v27 = v84;
      *(v27 + 16) = v40;
      v29 = v78;
      goto LABEL_19;
    case 10:
      v95 = 2;
      sub_214463FC8();
      v61 = v71;
      sub_2146DA0C8();
      v30 = v76;
      v25 = v15;
      v26 = v22;
      v27 = v79;
      sub_214463F14(v79, type metadata accessor for MBDActionContent);
      (*(v82 + 8))(v21, v61);
      v62 = v88;
      *(v27 + 64) = *&v87[16];
      *(v27 + 80) = v62;
      *(v27 + 96) = v89;
      *(v27 + 112) = v90;
      v63 = v85;
      *v27 = v84;
      *(v27 + 16) = v63;
      v64 = *v87;
      *(v27 + 32) = v86;
      *(v27 + 48) = v64;
      v29 = v78;
      goto LABEL_19;
    case 11:
      v95 = 2;
      sub_214463F74();
      v31 = v71;
      sub_2146DA0C8();
      v30 = v76;
      v25 = v15;
      v26 = v22;
      v27 = v79;
      sub_214463F14(v79, type metadata accessor for MBDActionContent);
      (*(v82 + 8))(v21, v31);
      v32 = *v87;
      *(v27 + 32) = v86;
      *(v27 + 48) = v32;
      *(v27 + 57) = *&v87[9];
      v33 = v85;
      *v27 = v84;
      *(v27 + 16) = v33;
      v29 = v78;
      goto LABEL_19;
    case 12:
      v95 = 2;
      sub_21431E4B0();
      v37 = v71;
      sub_2146DA148();
      v30 = v76;
      v25 = v15;
      v26 = v22;
      v27 = v79;
      sub_214463F14(v79, type metadata accessor for MBDActionContent);
      (*(v82 + 8))(v21, v37);
      *v27 = v84;
      v29 = v78;
      goto LABEL_19;
    case 13:
      v95 = 2;
      sub_21431E3D8();
      v54 = v71;
      sub_2146DA148();
      v30 = v76;
      v25 = v15;
      v26 = v22;
      v27 = v79;
      sub_214463F14(v79, type metadata accessor for MBDActionContent);
      (*(v82 + 8))(v21, v54);
      *v27 = v84;
      v29 = v78;
LABEL_19:
      swift_storeEnumTagMultiPayload();
      v28 = v83;
      break;
    default:
      v25 = v15;
      v26 = v22;
      (*(v82 + 8))(v21, v71);
      v27 = v79;
      v28 = v83;
      v29 = v78;
      v30 = v76;
      break;
  }

  v66 = *(type metadata accessor for MBDChipAction(0) + 24);
  sub_214463EB0(v27, v24 + v66);
  (*(v25 + 56))(v24 + v66, 0, 1, v29);
  v67 = v72;
  *v24 = v75;
  *(v24 + 8) = v67;
  v68 = v74;
  *(v24 + 16) = v30;
  *(v24 + 24) = v68;
  v69 = v73;
  *(v24 + 32) = v26;
  *(v24 + 40) = v69;
  *(v24 + 48) = v70;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t MBDChipAction.encode(to:configuration:)(void *a1)
{
  v2 = v1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C5E0, &qword_2146F6D30);
  MEMORY[0x28223BE20](v75);
  v74 = &v73 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906180, &qword_2146F4250);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v76 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v73 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913E50, &unk_214747AC0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v73 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214463E5C();
  sub_2146DAA28();
  v14 = *(v2 + 8);
  v15 = *(v2 + 16);
  v16 = *(v2 + 40);
  *&v88 = *v2;
  *(&v88 + 1) = v14;
  *(v89 + 8) = *(v2 + 24);
  *&v89[0] = v15;
  *(&v89[1] + 1) = v16;
  LOBYTE(v77) = 0;
  sub_2142EA38C();

  v17 = v99;
  sub_2146DA388();
  if (v17)
  {

    return (*(v11 + 8))(v13, v10);
  }

  else
  {

    LOBYTE(v88) = *(v2 + 48);
    LOBYTE(v77) = 1;
    sub_2142EA3E0();
    sub_2146DA388();
    v19 = type metadata accessor for MBDChipAction(0);
    v20 = v9;
    sub_213FB2E54(v2 + *(v19 + 24), v9, &qword_27C906180, &qword_2146F4250);
    v21 = type metadata accessor for MBDActionContent(0);
    if ((*(*(v21 - 8) + 48))(v9, 1, v21) != 1)
    {
      v22 = v76;
      sub_213FB2E54(v9, v76, &qword_27C906180, &qword_2146F4250);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v51 = v22;
          v52 = *v22;
          v53 = *(v51 + 8);
          v99 = *(v51 + 16);
          v75 = *(v51 + 24);
          LODWORD(v76) = *(v51 + 32);
          *&v88 = v52;
          *(&v88 + 1) = v53;
          *&v89[0] = v99;
          *(&v89[0] + 1) = v75;
          LOBYTE(v89[1]) = v76;
          LOBYTE(v77) = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C700, &unk_2146F6D90);
          sub_21431E150();
          sub_2146DA388();
          (*(v11 + 8))(v13, v10);
          sub_21431E10C(v52, v53, v99, v75);
          goto LABEL_7;
        case 2u:
          v41 = *(v22 + 16);
          v42 = *(v22 + 48);
          v89[1] = *(v22 + 32);
          v90[0] = v42;
          *(v90 + 9) = *(v22 + 57);
          v43 = *(v22 + 16);
          v88 = *v22;
          v89[0] = v43;
          v44 = *(v22 + 48);
          v79 = v89[1];
          v80[0] = v44;
          *(v80 + 9) = *(v22 + 57);
          v77 = v88;
          v78 = v41;
          v98 = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6E8, &qword_2146F6D88);
          sub_21431E034();
          sub_2146DA388();
          (*(v11 + 8))(v13, v10);
          v39 = &qword_27C90C6E8;
          v40 = &qword_2146F6D88;
          goto LABEL_23;
        case 3u:
          v45 = v22;
          v28 = *v22;
          v46 = *(v45 + 8);
          v47 = *(v45 + 16);
          v48 = *(v45 + 24);
          LODWORD(v45) = *(v45 + 32);
          *&v88 = v28;
          *(&v88 + 1) = v46;
          v99 = v46;
          v75 = v48;
          v76 = v47;
          *&v89[0] = v47;
          *(&v89[0] + 1) = v48;
          LODWORD(v74) = v45;
          LOBYTE(v89[1]) = v45;
          LOBYTE(v77) = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6D0, &qword_2146F6D80);
          sub_21431DF5C();
          goto LABEL_14;
        case 4u:
          v27 = v22;
          v28 = *v22;
          v29 = *(v27 + 8);
          v30 = *(v27 + 16);
          v31 = *(v27 + 24);
          LODWORD(v27) = *(v27 + 32);
          *&v88 = v28;
          *(&v88 + 1) = v29;
          v99 = v29;
          v75 = v31;
          v76 = v30;
          *&v89[0] = v30;
          *(&v89[0] + 1) = v31;
          LODWORD(v74) = v27;
          LOBYTE(v89[1]) = v27;
          LOBYTE(v77) = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6B8, &qword_214747AE0);
          sub_21431DE84();
LABEL_14:
          sub_2146DA388();
          (*(v11 + 8))(v13, v10);
          sub_21431E10C(v28, v99, v76, v75);
          return sub_213FB2DF4(v20, &qword_27C906180, &qword_2146F4250);
        case 5u:
          v54 = *(v22 + 144);
          v55 = *(v22 + 112);
          v94 = *(v22 + 128);
          v95 = v54;
          v56 = *(v22 + 144);
          v96 = *(v22 + 160);
          v57 = *(v22 + 80);
          v58 = *(v22 + 48);
          v90[1] = *(v22 + 64);
          v91 = v57;
          v59 = *(v22 + 80);
          v60 = *(v22 + 112);
          v92 = *(v22 + 96);
          v93 = v60;
          v61 = *(v22 + 16);
          v88 = *v22;
          v89[0] = v61;
          v62 = *(v22 + 48);
          v64 = *v22;
          v63 = *(v22 + 16);
          v89[1] = *(v22 + 32);
          v90[0] = v62;
          v84 = v94;
          v85 = v56;
          v86 = *(v22 + 160);
          v80[1] = v90[1];
          v81 = v59;
          v82 = v92;
          v83 = v55;
          v77 = v64;
          v78 = v63;
          v97 = *(v22 + 176);
          v87 = *(v22 + 176);
          v79 = v89[1];
          v80[0] = v58;
          v98 = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6A0, &unk_2146F6D70);
          sub_214464430();
          sub_2146DA2A8();
          (*(v11 + 8))(v13, v10);
          v39 = &qword_27C90C6A0;
          v40 = &unk_2146F6D70;
          goto LABEL_23;
        case 6u:
          LOBYTE(v88) = *v22;
          LOBYTE(v77) = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C688, &qword_2146F6D68);
          sub_21431DCD4();
          goto LABEL_20;
        case 7u:
          v49 = v22;
          v50 = v74;
          sub_214463DEC(v49, v74);
          LOBYTE(v88) = 2;
          sub_21446434C();
          sub_2146DA2A8();
          sub_213FB2DF4(v50, &qword_27C90C5E0, &qword_2146F6D30);
          break;
        case 8u:
          v69 = *(v22 + 16);
          v70 = *(v22 + 48);
          v89[1] = *(v22 + 32);
          v90[0] = v70;
          *(v90 + 9) = *(v22 + 57);
          v71 = *(v22 + 16);
          v88 = *v22;
          v89[0] = v71;
          v72 = *(v22 + 48);
          v79 = v89[1];
          v80[0] = v72;
          *(v80 + 9) = *(v22 + 57);
          v77 = v88;
          v78 = v69;
          v98 = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C660, &qword_2146F6D60);
          sub_214464274();
          sub_2146DA2A8();
          (*(v11 + 8))(v13, v10);
          v39 = &qword_27C90C660;
          v40 = &qword_2146F6D60;
          goto LABEL_23;
        case 9u:
          v32 = *(v22 + 80);
          v33 = *(v22 + 48);
          v90[1] = *(v22 + 64);
          v91 = v32;
          v34 = *(v22 + 80);
          v92 = *(v22 + 96);
          v35 = *(v22 + 16);
          v88 = *v22;
          v89[0] = v35;
          v36 = *(v22 + 48);
          v38 = *v22;
          v37 = *(v22 + 16);
          v89[1] = *(v22 + 32);
          v90[0] = v36;
          v80[1] = v90[1];
          v81 = v34;
          v82 = *(v22 + 96);
          v77 = v38;
          v78 = v37;
          LOBYTE(v93) = *(v22 + 112);
          LOBYTE(v83) = *(v22 + 112);
          v79 = v89[1];
          v80[0] = v33;
          v98 = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C648, &unk_214747AA0);
          sub_21446419C();
          sub_2146DA2A8();
          (*(v11 + 8))(v13, v10);
          v39 = &qword_27C90C648;
          v40 = &unk_214747AA0;
          goto LABEL_23;
        case 0xAu:
          v65 = *(v22 + 16);
          v66 = *(v22 + 48);
          v89[1] = *(v22 + 32);
          v90[0] = v66;
          *(v90 + 9) = *(v22 + 57);
          v67 = *(v22 + 16);
          v88 = *v22;
          v89[0] = v67;
          v68 = *(v22 + 48);
          v79 = v89[1];
          v80[0] = v68;
          *(v80 + 9) = *(v22 + 57);
          v77 = v88;
          v78 = v65;
          v98 = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C630, &unk_2146F6D50);
          sub_2144640C4();
          sub_2146DA2A8();
          (*(v11 + 8))(v13, v10);
          v39 = &qword_27C90C630;
          v40 = &unk_2146F6D50;
LABEL_23:
          sub_213FB2DF4(&v88, v39, v40);
          return sub_213FB2DF4(v20, &qword_27C906180, &qword_2146F4250);
        case 0xBu:
          LOBYTE(v88) = *v22;
          LOBYTE(v77) = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C618, &unk_214747AD0);
          sub_21431D8C0();
          goto LABEL_20;
        case 0xCu:
          LOBYTE(v88) = *v22;
          LOBYTE(v77) = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C600, &unk_2146F6D40);
          sub_21431D7E8();
LABEL_20:
          sub_2146DA388();
          break;
        case 0xDu:
          (*(v11 + 8))(v13, v10);
          sub_214463F14(v22, type metadata accessor for MBDActionContent);
          return sub_213FB2DF4(v20, &qword_27C906180, &qword_2146F4250);
        default:
          v23 = *(v22 + 48);
          v24 = *(v22 + 16);
          v89[1] = *(v22 + 32);
          v90[0] = v23;
          v25 = *(v22 + 48);
          v90[1] = *(v22 + 64);
          v26 = *(v22 + 16);
          v88 = *v22;
          v89[0] = v26;
          v79 = v89[1];
          v80[0] = v25;
          v80[1] = *(v22 + 64);
          LOBYTE(v91) = *(v22 + 80);
          LOBYTE(v81) = *(v22 + 80);
          v77 = v88;
          v78 = v24;
          v98 = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C718, &qword_214747AB0);
          sub_21431E228();
          sub_2146DA388();
          (*(v11 + 8))(v13, v10);
          sub_213FB2DF4(&v88, &qword_27C90C718, &qword_214747AB0);
LABEL_7:
          v20 = v9;
          return sub_213FB2DF4(v20, &qword_27C906180, &qword_2146F4250);
      }
    }

    (*(v11 + 8))(v13, v10);
    return sub_213FB2DF4(v20, &qword_27C906180, &qword_2146F4250);
  }
}

uint64_t sub_214463DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C5E0, &qword_2146F6D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_214463E5C()
{
  result = qword_27C913E20;
  if (!qword_27C913E20)
  {
    result = swift_getWitnessTable(byte_214747C70, &_s19CodingConfigurationV10CodingKeysON_9, v0, v1);
    atomic_store(result, &qword_27C913E20);
  }

  return result;
}

uint64_t sub_214463EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MBDActionContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214463F14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_214463F74()
{
  result = qword_27C913E28;
  if (!qword_27C913E28)
  {
    result = swift_getWitnessTable(byte_21477D998, &type metadata for MBDActionDialPhone, v0, v1);
    atomic_store(result, &qword_27C913E28);
  }

  return result;
}

unint64_t sub_214463FC8()
{
  result = qword_27C913E30;
  if (!qword_27C913E30)
  {
    result = swift_getWitnessTable(aY_21, &type metadata for MBDActionDialEnriched, v0, v1);
    atomic_store(result, &qword_27C913E30);
  }

  return result;
}

unint64_t sub_21446401C()
{
  result = qword_27C913E38;
  if (!qword_27C913E38)
  {
    result = swift_getWitnessTable(aIy, &type metadata for MBDActionDialVideo, v0, v1);
    atomic_store(result, &qword_27C913E38);
  }

  return result;
}

unint64_t sub_214464070()
{
  result = qword_27C913E48;
  if (!qword_27C913E48)
  {
    result = swift_getWitnessTable(byte_2147379C0, &type metadata for MBDActionShowLocation, v0, v1);
    atomic_store(result, &qword_27C913E48);
  }

  return result;
}

unint64_t sub_2144640C4()
{
  result = qword_27C913E58;
  if (!qword_27C913E58)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C90C630, &unk_2146F6D50);
    v4[0] = sub_214464148();
    result = swift_getWitnessTable(MEMORY[0x277CCA010], v3, v4);
    atomic_store(result, &qword_27C913E58);
  }

  return result;
}

unint64_t sub_214464148()
{
  result = qword_27C913E60;
  if (!qword_27C913E60)
  {
    result = swift_getWitnessTable(byte_21477D9C8, &type metadata for MBDActionDialPhone, v0, v1);
    atomic_store(result, &qword_27C913E60);
  }

  return result;
}

unint64_t sub_21446419C()
{
  result = qword_27C913E68;
  if (!qword_27C913E68)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C90C648, &unk_214747AA0);
    v4[0] = sub_214464220();
    result = swift_getWitnessTable(MEMORY[0x277CCA010], v3, v4);
    atomic_store(result, &qword_27C913E68);
  }

  return result;
}

unint64_t sub_214464220()
{
  result = qword_27C913E70;
  if (!qword_27C913E70)
  {
    result = swift_getWitnessTable(aY_22, &type metadata for MBDActionDialEnriched, v0, v1);
    atomic_store(result, &qword_27C913E70);
  }

  return result;
}

unint64_t sub_214464274()
{
  result = qword_27C913E78;
  if (!qword_27C913E78)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C90C660, &qword_2146F6D60);
    v4[0] = sub_2144642F8();
    result = swift_getWitnessTable(MEMORY[0x277CCA010], v3, v4);
    atomic_store(result, &qword_27C913E78);
  }

  return result;
}

unint64_t sub_2144642F8()
{
  result = qword_27C913E80;
  if (!qword_27C913E80)
  {
    result = swift_getWitnessTable(aY_23, &type metadata for MBDActionDialVideo, v0, v1);
    atomic_store(result, &qword_27C913E80);
  }

  return result;
}

unint64_t sub_21446434C()
{
  result = qword_27C913E88;
  if (!qword_27C913E88)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C90C5E0, &qword_2146F6D30);
    v4[0] = sub_2144643EC(&qword_27C913E90, aG_12);
    result = swift_getWitnessTable(MEMORY[0x277CCA010], v3, v4);
    atomic_store(result, &qword_27C913E88);
  }

  return result;
}

uint64_t sub_2144643EC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for MBDActionCalendar(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214464430()
{
  result = qword_27C913E98;
  if (!qword_27C913E98)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C90C6A0, &unk_2146F6D70);
    v4[0] = sub_2144644B4();
    result = swift_getWitnessTable(MEMORY[0x277CCA010], v3, v4);
    atomic_store(result, &qword_27C913E98);
  }

  return result;
}

unint64_t sub_2144644B4()
{
  result = qword_27C913EA0;
  if (!qword_27C913EA0)
  {
    result = swift_getWitnessTable(byte_2147379F0, &type metadata for MBDActionShowLocation, v0, v1);
    atomic_store(result, &qword_27C913EA0);
  }

  return result;
}

unint64_t sub_21446452C()
{
  result = qword_27C913EA8;
  if (!qword_27C913EA8)
  {
    result = swift_getWitnessTable(byte_214747C48, &_s19CodingConfigurationV10CodingKeysON_9, v0, v1);
    atomic_store(result, &qword_27C913EA8);
  }

  return result;
}

unint64_t sub_214464584()
{
  result = qword_27C913EB0;
  if (!qword_27C913EB0)
  {
    result = swift_getWitnessTable(a4_0, &_s19CodingConfigurationV10CodingKeysON_9, v0, v1);
    atomic_store(result, &qword_27C913EB0);
  }

  return result;
}

unint64_t sub_2144645DC()
{
  result = qword_27C913EB8;
  if (!qword_27C913EB8)
  {
    result = swift_getWitnessTable(a10, &_s19CodingConfigurationV10CodingKeysON_9, v0, v1);
    atomic_store(result, &qword_27C913EB8);
  }

  return result;
}

unint64_t sub_214464630(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21446467C()
{
  sub_214464724();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2144646D0()
{
  sub_214464724();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214464724()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[26];
  v36 = v0[27];
  v37 = v0[28];
  v7 = *(v0 + 5);
  v8 = *(v0 + 10);
  v33 = *(v0 + 4);
  v34 = *(v0 + 9);
  v38 = v0[48];
  v39 = v0[89];
  v9 = *(v0 + 13);
  v35 = *(v0 + 12);
  v41 = v0[112];
  v42 = *(v0 + 136);
  v43 = v0[153];
  v44 = *(v0 + 22);
  v40 = *(v0 + 23);
  v45 = v0[193];
  v46 = v0[194];
  v49 = MEMORY[0x277D84B78];
  LOBYTE(v48) = v1;
  sub_213FDC730(&v48, v47);
  v10 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v47, 116, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v12 = MEMORY[0x277D83E88];
  v49 = MEMORY[0x277D83E88];
  *&v48 = v2;
  sub_213FDC730(&v48, v47);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v47, 118, 0xE100000000000000, v13);
  if ((v4 & 1) == 0)
  {
    v49 = v12;
    *&v48 = v3;
    sub_213FDC730(&v48, v47);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 26723, 0xE200000000000000, v14);
  }

  v15 = MEMORY[0x277D839B0];
  if (v5 != 2)
  {
    v49 = MEMORY[0x277D839B0];
    LOBYTE(v48) = v5 & 1;
    sub_213FDC730(&v48, v47);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 25956, 0xE200000000000000, v16);
  }

  if (v6 != 2)
  {
    v49 = v15;
    LOBYTE(v48) = v6 & 1;
    sub_213FDC730(&v48, v47);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 25715, 0xE200000000000000, v17);
  }

  if (v36 != 2)
  {
    v49 = v15;
    LOBYTE(v48) = v36 & 1;
    sub_213FDC730(&v48, v47);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 26989, 0xE200000000000000, v18);
  }

  if (v37 != 2)
  {
    v49 = v15;
    LOBYTE(v48) = v37 & 1;
    sub_213FDC730(&v48, v47);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 7500147, 0xE300000000000000, v19);
  }

  if (v7 >> 60 != 15)
  {
    v49 = MEMORY[0x277CC9318];
    *&v48 = v33;
    *(&v48 + 1) = v7;
    sub_213FDC730(&v48, v47);
    sub_213FDCA18(v33, v7);
    sub_21402D9F8(v33, v7);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 98, 0xE100000000000000, v20);
    sub_213FDC6BC(v33, v7);
  }

  if (v38 != 2)
  {
    v49 = v15;
    LOBYTE(v48) = v38 & 1;
    sub_213FDC730(&v48, v47);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 29810, 0xE200000000000000, v21);
  }

  if (v8 >> 60 == 11)
  {
    goto LABEL_31;
  }

  if (v8 >> 60 != 15)
  {
    v49 = MEMORY[0x277CC9318];
    *&v48 = v34;
    *(&v48 + 1) = v8;
    sub_213FDC730(&v48, v47);
    sub_21404F7E0(v34, v8);
    sub_213FDCA18(v34, v8);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 0xD00000000000001ALL, 0x800000021478B000, v22);
    sub_214032564(v34, v8);
  }

  if (v39 != 2)
  {
    v49 = v15;
    LOBYTE(v48) = v39 & 1;
    sub_213FDC730(&v48, v47);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 25970, 0xE200000000000000, v23);
  }

  if (v9 >> 60 != 15)
  {
    v49 = MEMORY[0x277CC9318];
    *&v48 = v35;
    *(&v48 + 1) = v9;
    sub_213FDC730(&v48, v47);
    sub_213FDCA18(v35, v9);
    sub_21402D9F8(v35, v9);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 99, 0xE100000000000000, v24);
    sub_213FDC6BC(v35, v9);
  }

  if (v41 != 2)
  {
    v49 = v15;
    LOBYTE(v48) = v41 & 1;
    sub_213FDC730(&v48, v47);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 1835819888, 0xE400000000000000, v25);
  }

  if (*(&v42 + 1) && (v26 = MEMORY[0x277D837D0], v49 = MEMORY[0x277D837D0], v48 = v42, sub_213FDC730(&v48, v47), , v27 = swift_isUniquelyReferenced_nonNull_native(), sub_2140524DC(v47, 112, 0xE100000000000000, v27), v49 = v15, LOBYTE(v48) = v43, sub_213FDC730(&v48, v47), v28 = swift_isUniquelyReferenced_nonNull_native(), sub_2140524DC(v47, 100, 0xE100000000000000, v28), v40))
  {
    v49 = v26;
    *&v48 = v44;
    *(&v48 + 1) = v40;
    sub_213FDC730(&v48, v47);

    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 115, 0xE100000000000000, v29);
    if (v45 != 2)
    {
      v49 = v15;
      LOBYTE(v48) = v45 & 1;
      sub_213FDC730(&v48, v47);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v47, 6579056, 0xE300000000000000, v30);
    }

    if (v46 != 2)
    {
      v49 = v15;
      LOBYTE(v48) = v46 & 1;
      sub_213FDC730(&v48, v47);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v47, 25443, 0xE200000000000000, v31);
    }

    return v10;
  }

  else
  {
LABEL_31:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_214464E10(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a1 + 48) + 4 * v12);
      v14 = *(a1 + 56) + 16 * v12;
      v15 = *v14;
      v16 = *(v14 + 8);

      if (!v16)
      {
        return;
      }

      v17 = sub_21408C2B8(v13);
      if ((v18 & 1) == 0 || *(*(a2 + 56) + 16 * v17) != v15)
      {

        return;
      }

      v20 = sub_2143D5098(v19, v16);

      if (!v20)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_214464F80(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v40 = (v5 + 63) >> 6;
  v41 = result;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(result + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(result + 56) + 24 * v11;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);

    sub_2143DA468(v16, v17, v18);
    v19 = v13 == 0;
    if (!v13)
    {
      return v19;
    }

    v20 = sub_21408C300(v14, v13);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      goto LABEL_50;
    }

    v23 = *(a2 + 56) + 24 * v20;
    v25 = *v23;
    v24 = *(v23 + 8);
    v26 = *(v23 + 16);
    if (v26 > 2)
    {
      if (v26 == 3)
      {
        if (v18 != 3)
        {
          goto LABEL_47;
        }

        v33 = *(v23 + 8);
        sub_2143DA468(*v23, v24, 3);
        sub_2143DA468(v25, v33, 3);
        sub_2143DA468(v16, v17, 3);
        v29 = sub_2143D80E4(v25, v16);
        sub_2143DA490(v16, v17, 3);
        sub_2143DA490(v25, v33, 3);
        sub_2143DA490(v25, v33, 3);
        v30 = v16;
        v31 = v17;
        v32 = 3;
        goto LABEL_36;
      }

      if (v26 != 4)
      {
        sub_2143DA490(*v23, v24, 5);
        if (v18 != 5 || (v17 | v16) != 0)
        {
          goto LABEL_50;
        }

        v36 = 0;
        v37 = 0;
        v38 = 5;
        goto LABEL_45;
      }

      sub_2143DA490(*v23, v24, 4);
      if (v18 != 4)
      {
        goto LABEL_50;
      }

      sub_2143DA490(v16, v17, 4);
      result = v41;
      v19 = 0;
      if ((v25 ^ v16))
      {
        return v19;
      }
    }

    else if (*(v23 + 16))
    {
      if (v26 == 1)
      {
        sub_2143DA490(*v23, v24, 1);
        if (v18 != 1)
        {
          goto LABEL_50;
        }

        sub_2143DA490(v16, v17, 1);
        result = v41;
        v19 = 0;
        if (v25 != v16)
        {
          return v19;
        }
      }

      else
      {
        if (v18 != 2)
        {
LABEL_47:
          v39 = *(v23 + 8);
LABEL_49:

          sub_2143DA490(v25, v39, v26);
LABEL_50:
          sub_2143DA490(v16, v17, v18);
          return 0;
        }

        v34 = *(v23 + 8);
        sub_2143DA468(*v23, v24, 2);
        sub_2143DA468(v25, v34, 2);
        sub_2143DA468(v16, v17, 2);
        v29 = sub_214464F80(v25, v16);
        sub_2143DA490(v16, v17, 2);
        sub_2143DA490(v25, v34, 2);
        sub_2143DA490(v25, v34, 2);
        v30 = v16;
        v31 = v17;
        v32 = 2;
LABEL_36:
        sub_2143DA490(v30, v31, v32);
        result = v41;
        v19 = 0;
        if ((v29 & 1) == 0)
        {
          return v19;
        }
      }
    }

    else
    {
      if (v18)
      {
        v39 = *(v23 + 8);
        goto LABEL_49;
      }

      if (v25 != v16 || v24 != v17)
      {
        v28 = *(v23 + 8);
        v29 = sub_2146DA6A8();

        sub_2143DA490(v25, v28, 0);
        v30 = v16;
        v31 = v17;
        v32 = 0;
        goto LABEL_36;
      }

      sub_2143DA490(v16, v17, 0);
      v36 = v16;
      v37 = v17;
      v38 = 0;
LABEL_45:
      sub_2143DA490(v36, v37, v38);
      result = v41;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v40)
    {
      return 1;
    }

    v10 = *(v4 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v7 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2144653A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_2144653C0, 0, 0);
}

uint64_t sub_2144653C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913ED8, &qword_214747D60);
  v1 = sub_2146D8BB8();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_21446548C;

  return MEMORY[0x2821FAF00](v0 + 32, v1, 0, 0);
}

uint64_t sub_21446548C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_214465B24;
  }

  else
  {

    v2 = sub_2144655A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2144655A8()
{
  v1 = v0[4];
  v0[11] = v1;
  if (v1 >> 62)
  {
    v2 = sub_2146DA028();
    result = sub_2146DA028();
    v0[12] = v2;
    v0[13] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = v0[6];
    v8 = v0[7];

    v10 = MEMORY[0x277D84F98];
    *v9 = v2;
    v9[1] = v10;
    v11 = v0[1];

    return v11();
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  result = v2;
  v0[12] = v2;
  v0[13] = v2;
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_3:
  v0[14] = MEMORY[0x277D84F98];
  v4 = v0[11];
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x216054E00](0);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v4 + 32);
  }

  v0[15] = v5;
  v0[16] = 1;
  v6 = v5;
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_214465738;

  return sub_2143D4060((v0 + 2), v6);
}

uint64_t sub_214465738()
{
  *(*v1 + 144) = v0;

  if (v0)
  {

    v2 = sub_214465B90;
  }

  else
  {
    v2 = sub_214465860;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_214465860()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 112);
  v4 = *(v0 + 24);
  v5 = [*(v0 + 120) trackID];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 40) = v3;
  v7 = sub_21408C2B8(v5);
  v9 = *(v3 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_24:
    v28 = v7;
    sub_214483778();
    v7 = v28;
    goto LABEL_8;
  }

  v1 = v8;
  if (*(*(v0 + 112) + 24) >= v12)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  sub_214051C9C(v12, isUniquelyReferenced_nonNull_native);
  v7 = sub_21408C2B8(v5);
  if ((v1 & 1) != (v13 & 1))
  {

    sub_2146DA8D8();
    return;
  }

LABEL_8:
  v14 = *(v0 + 40);
  v15 = *(v0 + 120);
  if (v1)
  {
    v16 = v14[7] + 16 * v7;
    *v16 = v2;
    *(v16 + 8) = v4;
  }

  else
  {
    v14[(v7 >> 6) + 8] |= 1 << v7;
    *(v14[6] + 4 * v7) = v5;
    v17 = v14[7] + 16 * v7;
    *v17 = v2;
    *(v17 + 8) = v4;

    v18 = v14[2];
    v11 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v11)
    {
      __break(1u);
LABEL_26:
      v25 = MEMORY[0x216054E00](v15);
      goto LABEL_19;
    }

    v14[2] = v19;
  }

  v15 = *(v0 + 128);
  if (v15 == *(v0 + 104))
  {
    v20 = *(v0 + 96);
    v22 = *(v0 + 48);
    v21 = *(v0 + 56);

    *v22 = v20;
    v22[1] = v14;
    v23 = *(v0 + 8);

    v23();
    return;
  }

  *(v0 + 112) = v14;
  v24 = *(v0 + 88);
  if ((v24 & 0xC000000000000001) != 0)
  {
    goto LABEL_26;
  }

  if (v15 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:
    __break(1u);
    return;
  }

  v25 = *(v24 + 8 * v15 + 32);
LABEL_19:
  *(v0 + 120) = v25;
  *(v0 + 128) = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  v26 = v25;
  v27 = swift_task_alloc();
  *(v0 + 136) = v27;
  *v27 = v0;
  v27[1] = sub_214465738;

  sub_2143D4060(v0 + 16, v26);
}

uint64_t sub_214465B24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214465B90()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

void sub_214465BFC(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    sub_214464E10(a1[1], a2[1]);
  }
}

void sub_214465C20(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    sub_214464E10(a1[1], a2[1]);
  }
}

uint64_t sub_214465C44(uint64_t a1)
{
  v4 = v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21409A9C0;

  return sub_2144653A0(a1, v4);
}

uint64_t sub_214465CF4()
{
  *(v1 + 168) = v0;

  return MEMORY[0x2822009F8](sub_214465D84, 0, 0);
}

uint64_t sub_214465D84()
{
  v1 = v0[21];
  v2 = *MEMORY[0x277CE5F48];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_214465EE4;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913EC0, &qword_214747CE8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21446663C;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v1 loadMetadataForFormat:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_214465EE4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_214466504;
  }

  else
  {
    v2 = sub_214466020;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_214466020()
{
  v1 = objc_opt_self();
  sub_214466734();
  v2 = sub_2146D98E8();

  v3 = sub_2146D9588();
  v4 = [v1 metadataItemsFromArray:v2 withKey:v3 keySpace:*MEMORY[0x277CE5FB0]];

  v5 = sub_2146D9918();
  if (v5 >> 62)
  {
    if (sub_2146DA028() >= 1 && sub_2146DA028())
    {
      goto LABEL_3;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x216054E00](0, v5);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v6 = *(v5 + 32);
    }

    v0[23] = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913ED0, qword_214747CF0);
    v7 = sub_2146D8BA8();
    v0[24] = v7;
    v8 = swift_task_alloc();
    v0[25] = v8;
    *v8 = v0;
    v8[1] = sub_21446629C;

    return MEMORY[0x2821FAF00](v0 + 18, v7, 0, 0);
  }

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_21446629C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_2144665A0;
  }

  else
  {

    v2 = sub_2144663EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2144663EC()
{
  v1 = *(v0 + 152);
  if (v1 >> 60 == 15)
  {

    v2 = 0;
  }

  else
  {
    *(v0 + 216) = 0;
    v3 = *(v0 + 184);
    v4 = *(v0 + 144);
    v5 = sub_2145B089C((v0 + 216), (v0 + 220));
    v7 = v6;
    v2 = sub_214466780(v4, v1, v5, v6 & 0xFFFFFFFFFFFFFFLL);
    sub_213FB54FC(v5, v7 & 0xFFFFFFFFFFFFFFLL);
    sub_213FDC6BC(v4, v1);
  }

  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_214466504(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2(0);
}

uint64_t sub_2144665A0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_21446663C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_214466734();
    **(*(v4 + 64) + 40) = sub_2146D9918();

    return swift_continuation_throwingResume();
  }
}

unint64_t sub_214466734()
{
  result = qword_27C913EC8;
  if (!qword_27C913EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C913EC8);
  }

  return result;
}

BOOL sub_214466780(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_21402D9F8(a3, a4);
          return sub_2143D9C50(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_2144668E8(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_2145B089C(a1, &a1[a2]);
  }

  sub_2146D8778();
  swift_allocObject();
  sub_2146D8718();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_2146D89D8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t Endianness.hashValue.getter()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

unint64_t sub_214466A3C()
{
  result = qword_27C913EE0[0];
  if (!qword_27C913EE0[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Endianness, &type metadata for Endianness, v0, v1);
    atomic_store(result, qword_27C913EE0);
  }

  return result;
}

unint64_t sub_214466B20(uint64_t a1)
{
  *(a1 + 8) = sub_214303DFC();
  result = sub_214303F04();
  *(a1 + 16) = result;
  return result;
}

void Handwriting.Drawing.canvasBounds.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void Handwriting.Drawing.strokesFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

uint64_t Handwriting.sessionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Handwriting.sessionIdentifier.setter(uint64_t a1)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Handwriting.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Handwriting(0) + 20);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Handwriting(uint64_t a1)
{
  result = qword_280B30AF0;
  if (!qword_280B30AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Handwriting.creationDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Handwriting(0) + 20);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Handwriting.drawing.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Handwriting(0) + 24));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_2142F395C(v10, &v9);
}

__n128 Handwriting.drawing.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for Handwriting(0) + 24));
  v4 = v3[3];
  v8[2] = v3[2];
  v8[3] = v4;
  v8[4] = v3[4];
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_2142F3A0C(v8);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t sub_21446712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214467194(uint64_t a1)
{
  *(a1 + 8) = sub_2144671FC(&qword_27C90CF18, protocol conformance descriptor for Handwriting);
  result = sub_2144671FC(&qword_27C90CEE8, protocol conformance descriptor for Handwriting);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144671FC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for Handwriting(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214467268(uint64_t a1)
{
  result = sub_2146D8B88();
  if (v2 <= 0x3F)
  {
    result = sub_2146D8B08();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_214467314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21446735C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214467420(uint64_t a1)
{
  *(a1 + 8) = sub_214311430();
  result = sub_214311484();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214467460(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2144674D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_214467610(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_214467870()
{
  v1 = 0x656C616373;
  if (*v0 != 1)
  {
    v1 = 0x746E756F4378616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2144678CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214468FE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2144678F4(uint64_t a1)
{
  v2 = sub_214467B2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214467930(uint64_t a1)
{
  v2 = sub_214467B2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21446796C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913F68, &qword_2147480D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214467B2C();
  sub_2146DAA28();
  v12 = 0;
  sub_2146DA368();
  if (!v2)
  {
    v11 = 1;
    sub_2146DA348();
    v10 = 2;
    sub_2146DA368();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_214467B2C()
{
  result = qword_27C913F70;
  if (!qword_27C913F70)
  {
    result = swift_getWitnessTable(byte_214748658, &type metadata for AnimatedImageFrame.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913F70);
  }

  return result;
}

uint64_t sub_214467B80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913F78, &qword_2147480D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214467B2C();
  sub_2146DAA08();
  if (!v2)
  {
    v14[15] = 0;
    v9 = sub_2146DA1A8();
    v14[14] = 1;
    sub_2146DA188();
    v12 = v11;
    v14[13] = 2;
    v13 = sub_2146DA1A8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v12;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214467D84@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_214467E1C(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

void (*sub_214467E9C(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_214467FB4(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

void (*sub_214468008(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

uint64_t sub_2144680A0(uint64_t result, char a2)
{
  *(v2 + 440) = result;
  *(v2 + 448) = a2 & 1;
  return result;
}

uint64_t sub_214468108()
{
  v1 = *(v0 + 456);

  return v1;
}

void sub_214468138(uint64_t a1, uint64_t a2)
{

  *(v2 + 456) = a1;
  *(v2 + 464) = a2;
}

uint64_t sub_214468190()
{
  v1 = 0x6567616D69;
  v2 = 0x4572656B63697473;
  if (*v0 != 2)
  {
    v2 = 0x7453657079547475;
  }

  if (*v0)
  {
    v1 = 0x727544656D617266;
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

uint64_t sub_214468228@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214469104(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214468250(uint64_t a1)
{
  v2 = sub_21446850C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21446828C(uint64_t a1)
{
  v2 = sub_21446850C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144682C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913F80, &qword_2147480E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21446850C();
  sub_2146DAA28();
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_2140A4DD4(qword_280B2E688, byte_214738EE8);
  sub_2146DA388();
  if (!v2)
  {
    v10[14] = 1;
    sub_2146DA2D8();
    v10[13] = *(v3 + 449);
    v10[12] = 2;
    sub_214097618();
    sub_2146DA388();
    v10[11] = 3;
    sub_2146DA2B8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_21446850C()
{
  result = qword_27C913F88;
  if (!qword_27C913F88)
  {
    result = swift_getWitnessTable(a0_1, &type metadata for AnimatedImageFrame.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913F88);
  }

  return result;
}