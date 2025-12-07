double sub_1AACF6BF0(uint64_t a1)
{
  *(a1 + 336) = 0;
  result = 0.0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1AACF6C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1AACF5D54(0, &qword_1ED9B31F8, sub_1AACC9D70, type metadata accessor for Signal);
  v6 = swift_allocObject();
  sub_1AACF6D8C(v16);
  v7 = v16[4];
  *(v6 + 120) = v16[5];
  v8 = v16[7];
  *(v6 + 136) = v16[6];
  *(v6 + 152) = v8;
  v9 = v16[0];
  *(v6 + 56) = v16[1];
  v10 = v16[3];
  *(v6 + 72) = v16[2];
  *(v6 + 88) = v10;
  *(v6 + 104) = v7;
  *(v6 + 168) = v17;
  *(v6 + 40) = v9;
  *(v6 + 176) = 0;
  *(v6 + 184) = 0;
  v11 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AACDECB4;
  *(v12 + 24) = v5;
  v13 = *(v11 + 176);
  v14 = *(v11 + 184);
  *(v11 + 176) = sub_1AACD8838;
  *(v11 + 184) = v12;

  sub_1AACB4A98(v13, v14);

  return v11;
}

double sub_1AACF6D8C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = -2;
  return result;
}

unint64_t sub_1AACF6DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1AACF5D54(0, &qword_1ED9B3200, sub_1AACC9DEC, type metadata accessor for Signal);
  v6 = swift_allocObject();
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = -2;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  v7 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AACDECB4;
  *(v8 + 24) = v5;
  v9 = *(v7 + 144);
  v10 = *(v7 + 152);
  *(v7 + 144) = sub_1AACD8838;
  *(v7 + 152) = v8;

  sub_1AACB4A98(v9, v10);

  return v7;
}

unint64_t sub_1AACF6EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AACC9BB0(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AAF9DE80;
  *(v6 + 32) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  sub_1AACF5D54(0, &qword_1ED9B3208, sub_1AACCF364, type metadata accessor for Signal);
  v8 = swift_allocObject();
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0;
  *(v8 + 144) = -2;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  v9 = sub_1AACBD668(v6);

  v10 = swift_allocObject();
  *(v10 + 16) = sub_1AACDB01C;
  *(v10 + 24) = v7;
  v11 = *(v9 + 152);
  v12 = *(v9 + 160);
  *(v9 + 152) = sub_1AACD8800;
  *(v9 + 160) = v10;

  sub_1AACB4A98(v11, v12);

  return v9;
}

unint64_t sub_1AACF7068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1AACF5D54(0, &qword_1ED9B3208, sub_1AACCF364, type metadata accessor for Signal);
  v6 = swift_allocObject();
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0;
  *(v6 + 144) = -2;
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  v7 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AACDECB4;
  *(v8 + 24) = v5;
  v9 = *(v7 + 152);
  v10 = *(v7 + 160);
  *(v7 + 152) = sub_1AACD8838;
  *(v7 + 160) = v8;

  sub_1AACB4A98(v9, v10);

  return v7;
}

void sub_1AACF71BC(uint64_t a1)
{
  if (!qword_1ED9B34A8[0])
  {
    sub_1AACF5D54(255, &qword_1ED9B3208, sub_1AACCF364, type metadata accessor for Signal);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1ED9B34A8);
    }
  }
}

void sub_1AACF7254(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v3 = sub_1AACF741C(*(a1 + 16), 0);
  v4 = sub_1AACF74C8(&v13, v3 + 32, v2, a1);
  v5 = v13;

  sub_1AACC9C00(v5);
  if (v4 == v2)
  {
    if (v3 < 0)
    {
      goto LABEL_9;
    }

LABEL_6:
    if ((v3 & 0x4000000000000000) == 0)
    {

      sub_1AAF90504();
      type metadata accessor for AnySignal();
      v6 = v3;
LABEL_8:

      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      sub_1AACF7624(0);
      v8 = swift_allocObject();
      v8[6] = 0;
      v8[7] = 0;
      v8[5] = 0;
      v9 = sub_1AACBD668(v6);

      v10 = swift_allocObject();
      *(v10 + 16) = sub_1AACDB278;
      *(v10 + 24) = v7;
      v11 = *(v9 + 48);
      v12 = *(v9 + 56);
      *(v9 + 48) = sub_1AACD8838;
      *(v9 + 56) = v10;

      sub_1AACB4A98(v11, v12);

      return;
    }

LABEL_9:
    type metadata accessor for AnySignal();

    v6 = sub_1AAF902D4();

    goto LABEL_8;
  }

  __break(1u);
}

void *sub_1AACF7424(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AAD6D1F0(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1AACF74D0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1AACF7624(uint64_t a1)
{
  if (!qword_1ED9B31B8)
  {
    sub_1AACCA000(255, &qword_1ED9B2AB8, MEMORY[0x1E69E5E28]);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ED9B31B8);
    }
  }
}

unint64_t sub_1AACF7698(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v31 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, qword_1ED9B3E60, &type metadata for AnyChartContent, MEMORY[0x1E69E6720]);
  v4 = *a1;

  MEMORY[0x1AC598430](v5);
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9E68(0);
  v6 = a1[1];

  MEMORY[0x1AC598430](v7);
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACCA000(0, &qword_1ED9B2AB8, MEMORY[0x1E69E5E28]);
  v8 = a1[2];

  MEMORY[0x1AC598430](v9);
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9CF4(0);
  v10 = a1[3];

  MEMORY[0x1AC598430](v11);
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9D70(0);
  v12 = a1[4];

  MEMORY[0x1AC598430](v13);
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9DEC(0);
  v14 = a1[5];

  MEMORY[0x1AC598430](v15);
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v16 = *v4;
  v17 = *v6;
  v18 = *v8;
  v19 = *v10;
  v20 = *v12;
  v21 = *v14;
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = v16;
  v22[5] = v17;
  v22[6] = v18;
  v22[7] = v19;
  v22[8] = v20;
  v22[9] = v21;
  sub_1AACC9BB0(0, &unk_1ED9B31D0, &type metadata for SgNode, type metadata accessor for Signal);
  v23 = swift_allocObject();
  v23[6] = 0;
  v23[7] = 0;
  v23[5] = 0xF000000000000007;

  v24 = sub_1AACBD668(v31);

  v25 = swift_allocObject();
  *(v25 + 16) = sub_1AACDB280;
  *(v25 + 24) = v22;
  v26 = *(v24 + 48);
  v27 = *(v24 + 56);
  *(v24 + 48) = sub_1AACD8838;
  *(v24 + 56) = v25;

  sub_1AACB4A98(v26, v27);

  return v24;
}

uint64_t sub_1AACF7B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1E69E7CC0];
  v54 = MEMORY[0x1E69E7CC0];
  v6 = a4 + 64;
  v7 = 1 << *(a4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a4 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
LABEL_4:
  result = a4;
  while (v9)
  {
LABEL_5:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(*(a4 + 56) + 24 * v14 + 16);
    v16 = *(v15 + 16);
    if (v16)
    {
      v33 = v6;
      v34 = v10;
      v37 = *(*(a4 + 48) + v14);

      v18 = 0;
      v46 = 0;
      v36 = v16 - 1;
      for (i = v15; ; v15 = i)
      {
        v42 = v18;
        v19 = v15 + v18;
        v20 = *(v19 + 32);
        v21 = *(v19 + 40);
        v47 = *(v19 + 48);
        v56[0] = *(v19 + 49);
        *(v56 + 3) = *(v19 + 52);
        v22 = *(v19 + 56);
        v23 = *(v19 + 64);
        v55[0] = *(v19 + 65);
        *(v55 + 3) = *(v19 + 68);
        v44 = *(v19 + 72);
        v45 = v20;
        v24 = sub_1AAEA0404(v44);
        v43 = v22;
        if (v23)
        {
          v25 = sub_1AAEA4478(v53, sub_1AAEB2074, 0);
        }

        else
        {

          v25 = sub_1AACF263C(v22, v26);
        }

        if (v47)
        {
          v27 = sub_1AAD282BC;
          v28 = 0;
          v29 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v28 = sub_1AAEA05AC(v21);

          sub_1AACC14E4(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_1AAF9DE80;
          *(v29 + 32) = v28;
          v27 = sub_1AAEB2A34;
        }

        sub_1AAEB29A4(0);
        swift_allocObject();

        v30 = sub_1AAEAA3A8(v29, v27, v28);
        v51 = a2;
        v52 = a1;
        v53[0] = &v52;
        v53[1] = &v51;
        v49 = v25;
        v50 = v24;
        v53[2] = &v50;
        v53[3] = &v49;
        v48 = v30;
        v53[4] = &v48;
        v31 = swift_allocObject();
        *(v31 + 16) = v37;
        *(v31 + 24) = v46;
        *(v31 + 32) = v45;
        *(v31 + 40) = v21;
        *(v31 + 48) = v47;
        *(v31 + 49) = v56[0];
        *(v31 + 52) = *(v56 + 3);
        *(v31 + 56) = v43;
        *(v31 + 64) = v23;
        *(v31 + 65) = v55[0];
        *(v31 + 68) = *(v55 + 3);
        *(v31 + 72) = v44;
        *(v31 + 80) = a3;

        sub_1AAEA457C(v53, sub_1AAEB2A20, v31);

        MEMORY[0x1AC598430](v32);
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AAF8F874();
        }

        sub_1AAF8F8C4();

        if (v36 == v46)
        {
          break;
        }

        v18 = v42 + 48;
        ++v46;
      }

      v5 = v54;

      v6 = v33;
      v10 = v34;
      goto LABEL_4;
    }
  }

  while (1)
  {
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v17 >= v10)
    {

      return v5;
    }

    v9 = *(v6 + 8 * v17);
    ++v11;
    if (v9)
    {
      v11 = v17;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AACF7FD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

unint64_t sub_1AACF8008(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = sub_1AAF8FFB4();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v16 = MEMORY[0x1E69E7CC0];
    result = sub_1AAF901E4();
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    if ((a2 & 0xC000000000000001) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    for (i = MEMORY[0x1AC598D40](v7, a2); ; i = )
    {
      v13 = i;
      v14 = a1;
      v15[0] = &v14;
      v15[1] = &v13;

      sub_1AAEA49A0(v15, sub_1AAEB2628, 0);
      sub_1AAF901B4();
      sub_1AAF901F4();
      sub_1AAF90204();
      sub_1AAF901C4();
      if (v4 - 1 == v7)
      {
        break;
      }

      ++v7;
      if ((a2 & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }

LABEL_7:
      ;
    }

    v5 = v16;
  }

  sub_1AACC14E4(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AAF9DE80;
  *(inited + 32) = a1;
  v15[0] = v5;

  sub_1AACF82B4(inited);
  v10 = v15[0];
  if (v15[0] >> 62)
  {
    type metadata accessor for AnySignal();

    v11 = sub_1AAF902D4();
  }

  else
  {

    sub_1AAF90504();
    type metadata accessor for AnySignal();
    v11 = v10;
  }

  v12 = swift_allocObject();
  v12[2] = sub_1AACFEA44;
  v12[3] = 0;
  v12[4] = v10;
  sub_1AACC14E4(0, &qword_1ED9B31C8, &type metadata for SgPadding, type metadata accessor for Signal);
  swift_allocObject();
  return sub_1AACF669C(v11, sub_1AACDCED8, v12);
}

uint64_t sub_1AACF82E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1AAF8FFB4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = sub_1AAF8FFB4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1AAEAFD78(0);
          sub_1AAEB02DC(&qword_1EB4268D0, sub_1AAEAFD78, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1AAEAD53C(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1AACC9BB0(0, &qword_1ED9B31C8, &type metadata for SgPadding, type metadata accessor for Signal);
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

unint64_t sub_1AACF84A0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v22 = MEMORY[0x1E69E7CC0];
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for CGSize(0);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACC9BB0(0, &unk_1ED9B31D0, &type metadata for SgNode, type metadata accessor for Signal);
  v16 = swift_allocObject();
  v16[6] = 0;
  v16[7] = 0;
  v16[5] = 0xF000000000000007;

  v17 = sub_1AACBD668(v22);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AACE351C;
  *(v18 + 24) = v15;
  v19 = *(v17 + 48);
  v20 = *(v17 + 56);
  *(v17 + 48) = sub_1AACD8838;
  *(v17 + 56) = v18;

  sub_1AACB4A98(v19, v20);

  return v17;
}

unint64_t sub_1AACF8750(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 62)
  {
    v8 = sub_1AAF8FFB4();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v24 = MEMORY[0x1E69E7CC0];
    result = sub_1AAF901E4();
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v11 = 0;
    if ((a2 & 0xC000000000000001) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    for (i = MEMORY[0x1AC598D40](v11, a2); ; i = )
    {
      v21 = i;
      v22 = a1;
      v23[0] = &v22;
      v23[1] = &v21;
      v20 = a4;
      v23[2] = &v20;

      sub_1AAEA4BCC(v23, sub_1AAEB2620, a3);
      sub_1AAF901B4();
      sub_1AAF901F4();
      sub_1AAF90204();
      sub_1AAF901C4();
      if (v8 - 1 == v11)
      {
        break;
      }

      ++v11;
      if ((a2 & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }

LABEL_7:
      ;
    }

    v9 = v24;
  }

  if (v9 >> 62)
  {
    type metadata accessor for AnySignal();

    v13 = sub_1AAF902D4();
  }

  else
  {

    sub_1AAF90504();
    type metadata accessor for AnySignal();
    v13 = v9;
  }

  v14 = swift_allocObject();
  v14[2] = sub_1AAD14BCC;
  v14[3] = 0;
  v14[4] = v9;
  sub_1AACC14E4(0, &unk_1ED9B31D0, &type metadata for SgNode, type metadata accessor for Signal);
  v15 = swift_allocObject();
  v15[6] = 0;
  v15[7] = 0;
  v15[5] = 0xF000000000000007;
  v16 = sub_1AACBD668(v13);

  v17 = swift_allocObject();
  *(v17 + 16) = sub_1AAD04F6C;
  *(v17 + 24) = v14;
  v18 = *(v16 + 48);
  v19 = *(v16 + 56);
  *(v16 + 48) = sub_1AACD8830;
  *(v16 + 56) = v17;

  sub_1AACB8784(v18, v19);

  return v16;
}

uint64_t sub_1AACF8A10()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AACF8A74(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1AAF8FFB4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = sub_1AAF8FFB4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1AAEAFC74(0);
          sub_1AAEB02DC(&qword_1EB4268B8, sub_1AAEAFC74, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1AAEAD53C(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1AACC9BB0(0, &unk_1ED9B31D0, &type metadata for SgNode, type metadata accessor for Signal);
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

unint64_t sub_1AACF8C34(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v28 = MEMORY[0x1E69E7CC0];
  v5 = *a1;

  MEMORY[0x1AC598430](v6);
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for CGSize(0);
  v7 = a1[1];

  MEMORY[0x1AC598430](v8);
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v9 = a1[2];

  MEMORY[0x1AC598430](v10);
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v11 = a1[3];

  MEMORY[0x1AC598430](v12);
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v13 = a1[4];

  MEMORY[0x1AC598430](v14);
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v15 = *v5;
  v16 = *v7;
  v17 = *v9;
  v18 = *v11;
  v19 = *v13;
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = v15;
  v20[5] = v16;
  v20[6] = v17;
  v20[7] = v18;
  v20[8] = v19;
  sub_1AACC9BB0(0, &qword_1ED9B31C8, &type metadata for SgPadding, type metadata accessor for Signal);
  v21 = swift_allocObject();
  *(v21 + 40) = 0u;
  *(v21 + 56) = 0u;
  *(v21 + 72) = 1;
  *(v21 + 80) = 0;
  *(v21 + 88) = 0;

  v22 = sub_1AACBD668(v28);

  v23 = swift_allocObject();
  *(v23 + 16) = sub_1AAD0FACC;
  *(v23 + 24) = v20;
  v24 = *(v22 + 80);
  v25 = *(v22 + 88);
  *(v22 + 80) = sub_1AACD8800;
  *(v22 + 88) = v23;

  sub_1AACB4A98(v24, v25);

  return v22;
}

void sub_1AACF900C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = a4(255, a3, MEMORY[0x1E69E5E28]);
    v9 = type metadata accessor for Signal(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1AACF9078(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v19 = MEMORY[0x1E69E7CC0];
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACF92C8(0, &qword_1ED9B2AC8, MEMORY[0x1E69E5E28]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AACF5D54(0, &qword_1ED9B31A0, sub_1AACFE60C, type metadata accessor for Signal);
  v13 = swift_allocObject();
  v13[6] = 0;
  v13[7] = 0;
  v13[5] = 0;

  v14 = sub_1AACBD668(v19);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEAFA2C;
  *(v15 + 24) = v12;
  v16 = *(v14 + 48);
  v17 = *(v14 + 56);
  *(v14 + 48) = sub_1AACD8838;
  *(v14 + 56) = v15;

  sub_1AACB4A98(v16, v17);

  return v14;
}

void sub_1AACF92C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AACFDD38();
    v7 = a3(a1, &type metadata for EncodableProperty, &type metadata for AnyFormatStyle, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AACF9334(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  result = sub_1AACB6398(a1);
  if ((v9 & 1) == 0 || (*(*(a2 + 56) + 88 * result + 55) & 0x40) == 0)
  {
    return 0;
  }

  if (!*(a3 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1AACB6398(a1);
  if ((v10 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a4(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = result;

    return v11;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_1AACF93EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AACF9334(5u, a1, a2, sub_1AAEAF480);
  sub_1AACF9334(6u, a1, a2, sub_1AAEAF1EC);
  sub_1AACF9334(8u, a1, a2, sub_1AAEAF378);
  sub_1AACF9334(7u, a1, a2, sub_1AAEAF504);
  v6 = sub_1AACF96C4(5u, a1, a2, sub_1AAEAF3FC);
  sub_1AACF96C4(7u, a1, a2, sub_1AACC9C70);
  if (*(a1 + 16) && (v7 = sub_1AACB6398(5u), (v8 & 1) != 0))
  {
    v9 = *(a1 + 56) + 88 * v7;
    v10 = *v9;
    v11 = *(v9 + 8);
  }

  else
  {
    v10 = 0;
    v11 = -1;
  }

  v28 = sub_1AACF9780(v12);
  v29[0] = &v28;

  v27 = sub_1AACF991C(v13);
  v29[1] = &v27;

  v26 = sub_1AACF9A84(v14);
  v29[2] = &v26;

  v25 = sub_1AACF9C40(v15);
  v29[3] = &v25;
  v23 = sub_1AACF9DA4(v29, sub_1AACFECA8, 0);
  v24[0] = &v23;

  v22 = sub_1AACFA350(v6);
  v24[1] = &v22;

  v20 = a3;
  v21 = sub_1AACFA4B4(v16);
  v24[2] = &v21;
  v24[3] = &v20;
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 24) = v11;

  v18 = sub_1AACFA648(v24, sub_1AACFE334, v17);

  return v18;
}

unint64_t sub_1AACF96C4(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  result = sub_1AACB6398(a1);
  if ((v9 & 1) == 0 || (*(*(a2 + 56) + 88 * result + 55) & 0x60) != 0)
  {
    return 0;
  }

  if (!*(a3 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1AACB6398(a1);
  if ((v10 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a4(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = result;

    return v11;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_1AACF9780(uint64_t a1)
{
  if (a1)
  {
    sub_1AACB25D8(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AAF9DE80;
    *(v2 + 32) = a1;
    v3 = sub_1AAEC010C;
    v4 = a1;
  }

  else
  {
    v3 = sub_1AACFDB08;
    v4 = 0;
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAEC0094(0);
  v5 = swift_allocObject();
  *(v5 + 40) = 1;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0;

  v6 = sub_1AACBD668(v2);

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  v8 = *(v6 + 136);
  v9 = *(v6 + 144);
  *(v6 + 136) = sub_1AACFEA94;
  *(v6 + 144) = v7;

  sub_1AACB4A98(v8, v9);

  return v6;
}

uint64_t sub_1AACF98E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1AACF991C(uint64_t a1)
{
  if (a1)
  {
    sub_1AACB25D8(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AAF9DE80;
    *(v2 + 32) = a1;
    v3 = sub_1AAEBFF8C;
    v4 = a1;
  }

  else
  {
    v3 = sub_1AACFEAD0;
    v4 = 0;
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAEBFF14(0);
  v5 = swift_allocObject();
  *(v5 + 40) = 1;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0;

  v6 = sub_1AACBD668(v2);

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  v8 = *(v6 + 168);
  v9 = *(v6 + 176);
  *(v6 + 168) = sub_1AACFEA94;
  *(v6 + 176) = v7;

  sub_1AACB4A98(v8, v9);

  return v6;
}

unint64_t sub_1AACF9A84(uint64_t a1)
{
  if (a1)
  {
    sub_1AACB25D8(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AAF9DE80;
    *(v2 + 32) = a1;
    v3 = sub_1AAEBFF0C;
    v4 = a1;
  }

  else
  {
    v3 = sub_1AACFEAE8;
    v4 = 0;
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAEBFE94(0);
  v5 = swift_allocObject();
  sub_1AACF9C10(v15);
  v6 = v15[5];
  *(v5 + 104) = v15[4];
  *(v5 + 120) = v6;
  v7 = v15[7];
  *(v5 + 136) = v15[6];
  *(v5 + 152) = v7;
  v8 = v15[1];
  *(v5 + 40) = v15[0];
  *(v5 + 56) = v8;
  v9 = v15[3];
  *(v5 + 72) = v15[2];
  *(v5 + 88) = v9;
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  v10 = sub_1AACBD668(v2);

  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = v4;
  v12 = *(v10 + 168);
  v13 = *(v10 + 176);
  *(v10 + 168) = sub_1AACFEA94;
  *(v10 + 176) = v11;

  sub_1AACB4A98(v12, v13);

  return v10;
}

double sub_1AACF9C10(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

unint64_t sub_1AACF9C40(uint64_t a1)
{
  if (a1)
  {
    sub_1AACB25D8(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AAF9DE80;
    *(v2 + 32) = a1;
    v3 = sub_1AAEBFE68;
    v4 = a1;
  }

  else
  {
    v3 = sub_1AACFDF30;
    v4 = 0;
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAEBFDF0(0);
  v5 = swift_allocObject();
  *(v5 + 40) = 1;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;

  v6 = sub_1AACBD668(v2);

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  v8 = *(v6 + 144);
  v9 = *(v6 + 152);
  *(v6 + 144) = sub_1AACFEA94;
  *(v6 + 152) = v7;

  sub_1AACB4A98(v8, v9);

  return v6;
}

unint64_t sub_1AACF9DA4(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v25 = MEMORY[0x1E69E7CC0];
  sub_1AACFA0C4(0);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACFA148(0);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACFA1CC(0);
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACFA250(0);
  v12 = a1[3];

  MEMORY[0x1AC598430](v13);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v14 = *v6;
  v15 = *v8;
  v16 = *v10;
  v17 = *v12;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[7] = v17;
  sub_1AACFA2D4(0);
  v19 = swift_allocObject();
  v19[6] = 0;
  v19[7] = 0;
  v19[5] = 0;

  v20 = sub_1AACBD668(v25);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_1AACFEB54;
  *(v21 + 24) = v18;
  v22 = *(v20 + 48);
  v23 = *(v20 + 56);
  *(v20 + 48) = sub_1AACD8838;
  *(v20 + 56) = v21;

  sub_1AACB4A98(v22, v23);

  return v20;
}

void sub_1AACFA0C4(uint64_t a1)
{
  if (!qword_1ED9B4090)
  {
    sub_1AACC9C1C(255, &qword_1ED9B4098, MEMORY[0x1E69E6158], MEMORY[0x1E697E0B8], type metadata accessor for ConcreteScale);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B4090);
    }
  }
}

void sub_1AACFA148(uint64_t a1)
{
  if (!qword_1ED9B4078)
  {
    sub_1AACC9C1C(255, &qword_1ED9B4080, MEMORY[0x1E69E6158], &type metadata for AnyChartSymbolShape, type metadata accessor for ConcreteScale);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B4078);
    }
  }
}

void sub_1AACFA1CC(uint64_t a1)
{
  if (!qword_1ED9B40A0)
  {
    sub_1AACC9C1C(255, &qword_1ED9B40A8, MEMORY[0x1E69E6158], MEMORY[0x1E697DD48], type metadata accessor for ConcreteScale);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B40A0);
    }
  }
}

void sub_1AACFA250(uint64_t a1)
{
  if (!qword_1ED9B40B0)
  {
    sub_1AACC9C1C(255, qword_1ED9B40B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B40B0);
    }
  }
}

void sub_1AACFA2D4(uint64_t a1)
{
  if (!qword_1ED9B3198)
  {
    sub_1AACC9BB0(255, &qword_1ED9B2A78, &type metadata for LegendRenderingContext.Categories, MEMORY[0x1E69E62F8]);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ED9B3198);
    }
  }
}

unint64_t sub_1AACFA350(uint64_t a1)
{
  if (a1)
  {
    sub_1AACB25D8(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AAF9DE80;
    *(v2 + 32) = a1;
    v3 = sub_1AAEBFDC4;
    v4 = a1;
  }

  else
  {
    v3 = sub_1AACFDB08;
    v4 = 0;
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAEBFCF0(0);
  v5 = swift_allocObject();
  *(v5 + 40) = 1;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0;

  v6 = sub_1AACBD668(v2);

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  v8 = *(v6 + 136);
  v9 = *(v6 + 144);
  *(v6 + 136) = sub_1AACFEA94;
  *(v6 + 144) = v7;

  sub_1AACB4A98(v8, v9);

  return v6;
}

unint64_t sub_1AACFA4B4(uint64_t a1)
{
  if (a1)
  {
    sub_1AACB25D8(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AAF9DE80;
    *(v2 + 32) = a1;
    v3 = sub_1AAEBFCC4;
    v4 = a1;
  }

  else
  {
    v3 = sub_1AACFDF30;
    v4 = 0;
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAEBF694(0, &unk_1ED9B3230, sub_1AACFAA34, type metadata accessor for Signal);
  v5 = swift_allocObject();
  *(v5 + 40) = 1;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;

  v6 = sub_1AACBD668(v2);

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  v8 = *(v6 + 144);
  v9 = *(v6 + 152);
  *(v6 + 144) = sub_1AACFEA94;
  *(v6 + 152) = v7;

  sub_1AACB4A98(v8, v9);

  return v6;
}

unint64_t sub_1AACFA648(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v25 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A78, &type metadata for LegendRenderingContext.Categories, MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACFA9B0(0);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACFAA34(0);
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAF8CAA4();
  v12 = a1[3];

  MEMORY[0x1AC598430](v13);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v14 = *v6;
  v15 = *v8;
  v16 = *v10;
  v17 = *v12;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[7] = v17;
  sub_1AACC9BB0(0, &qword_1ED9B31E8, &type metadata for LegendRenderingContext, type metadata accessor for Signal);
  v19 = swift_allocObject();
  v19[6] = 0;
  v19[7] = 0;
  v19[5] = 0;

  v20 = sub_1AACBD668(v25);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_1AACFE300;
  *(v21 + 24) = v18;
  v22 = *(v20 + 48);
  v23 = *(v20 + 56);
  *(v20 + 48) = sub_1AACD8800;
  *(v20 + 56) = v21;

  sub_1AACB4A98(v22, v23);

  return v20;
}

void sub_1AACFA9B0(uint64_t a1)
{
  if (!qword_1ED9B4050)
  {
    sub_1AACC9C1C(255, &qword_1ED9B4060, MEMORY[0x1E69E63B0], MEMORY[0x1E697E0B8], type metadata accessor for ConcreteScale);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B4050);
    }
  }
}

void sub_1AACFAA34(uint64_t a1)
{
  if (!qword_1ED9B4068)
  {
    sub_1AACC9C1C(255, &qword_1ED9B4070, MEMORY[0x1E69E63B0], MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B4068);
    }
  }
}

unint64_t sub_1AACFAAB8(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v32 = v5;
  v33 = result;
  v31 = v1;
  while (v4)
  {
LABEL_10:
    v10 = *(*(result + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));
    v11 = v10 >> 62;
    v12 = v10;
    if (v10 >> 62)
    {
      v13 = sub_1AAF8FFB4();
    }

    else
    {
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      result = sub_1AAF8FFB4();
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = v13;
    v15 = __OFADD__(result, v13);
    v16 = result + v13;
    if (v15)
    {
      goto LABEL_39;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v14)
      {
LABEL_20:
        sub_1AAF8FFB4();
      }

LABEL_21:
      result = sub_1AAF90134();
      v17 = result;
      v18 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v14)
    {
      goto LABEL_20;
    }

    v17 = v8;
    v18 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v16 > *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

LABEL_22:
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = v12;
    v34 = v17;
    if (v11)
    {
      result = sub_1AAF8FFB4();
      v21 = v12;
      v22 = result;
    }

    else
    {
      v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 &= v4 - 1;
    if (v22)
    {
      if (((v20 >> 1) - v19) < v36)
      {
        goto LABEL_41;
      }

      v23 = v18 + 8 * v19 + 32;
      if (v11)
      {
        if (v22 < 1)
        {
          goto LABEL_43;
        }

        v24 = v21;
        sub_1AAD9B4FC(0);
        sub_1AAEB02DC(&qword_1EB4268A8, sub_1AAD9B4FC, MEMORY[0x1E69E6340]);
        for (i = 0; i != v22; ++i)
        {
          v26 = sub_1AAEAD5BC(v35, i, v24);
          v28 = *v27;

          (v26)(v35, 0);
          *(v23 + 8 * i) = v28;
        }
      }

      else
      {
        sub_1AACC9BB0(0, &qword_1ED9B1740, &type metadata for AnyPrimitivePlottableArray, type metadata accessor for Signal);
        swift_arrayInitWithCopy();
      }

      v5 = v32;
      result = v33;
      v1 = v31;
      v8 = v34;
      if (v36 >= 1)
      {
        v29 = *(v18 + 16);
        v15 = __OFADD__(v29, v36);
        v30 = v29 + v36;
        if (v15)
        {
          goto LABEL_42;
        }

        *(v18 + 16) = v30;
      }
    }

    else
    {

      v5 = v32;
      result = v33;
      v8 = v34;
      if (v36 > 0)
      {
        goto LABEL_40;
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v8;
    }

    v4 = *(v1 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

unint64_t sub_1AACFAE38(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v25 = MEMORY[0x1E69E7CC0];
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACCA000(0, &qword_1ED9B2AB8, MEMORY[0x1E69E5E28]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACFE434(0, &qword_1ED9B2AA8, MEMORY[0x1E69E5E28]);
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACF92C8(0, &qword_1ED9B2AC8, MEMORY[0x1E69E5E28]);
  v12 = a1[3];

  MEMORY[0x1AC598430](v13);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v14 = *v6;
  v15 = *v8;
  v16 = *v10;
  v17 = *v12;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[7] = v17;
  sub_1AACF5D54(0, &qword_1ED9B3188, sub_1AACFDD8C, type metadata accessor for Signal);
  v19 = swift_allocObject();
  v19[6] = 0;
  v19[7] = 0;
  v19[5] = 1;

  v20 = sub_1AACBD668(v25);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_1AAEAF9C0;
  *(v21 + 24) = v18;
  v22 = *(v20 + 48);
  v23 = *(v20 + 56);
  *(v20 + 48) = sub_1AACD8838;
  *(v20 + 56) = v21;

  sub_1AACB4A98(v22, v23);

  return v20;
}

unint64_t sub_1AACFB1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1AACC9BB0(0, &qword_1ED9B0DD8, &type metadata for AxisMarkPreset.Storage, type metadata accessor for Signal);
  v6 = swift_allocObject();
  *(v6 + 40) = 3;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  v7 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AAD13104;
  *(v8 + 24) = v5;
  v9 = *(v7 + 48);
  v10 = *(v7 + 56);
  *(v7 + 48) = sub_1AACD8800;
  *(v7 + 56) = v8;

  sub_1AACB4A98(v9, v10);

  return v7;
}

void *sub_1AACFB310(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1AAD6CF88(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[4 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 32 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_1AACFB478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1AAD6CF88(255, &qword_1ED9B1750, type metadata accessor for AxisMarkRenderContext, type metadata accessor for Signal);
    sub_1AAD6C9B4(255);
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

unint64_t sub_1AACFB538(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1AACE49D8(0);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = *v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  sub_1AACC9BB0(0, &qword_1ED9B31C8, &type metadata for SgPadding, type metadata accessor for Signal);
  v10 = swift_allocObject();
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 1;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;

  v11 = sub_1AACBD668(v16);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AAD14AB4;
  *(v12 + 24) = v9;
  v13 = *(v11 + 80);
  v14 = *(v11 + 88);
  *(v11 + 80) = sub_1AACD8838;
  *(v11 + 88) = v12;

  sub_1AACB4A98(v13, v14);

  return v11;
}

unint64_t sub_1AACFB710(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AACB6398(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1AACF4D48(v14, a3 & 1);
      result = sub_1AACB6398(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1AAD9695C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_1AACFB85C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AxisValue.as<A>(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char *x8_0@<X8>)
{
  v8 = *v4;
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  sub_1AACCAE10(v8, v9, v10);
  return sub_1AACFB938(v8, v9, v10, a2, a3, x8_0);
}

uint64_t sub_1AACFB938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v248 = a5;
  v247 = a3;
  v241 = a2;
  v244 = a6;
  v245 = a1;
  v200 = sub_1AAF8CA64();
  v199 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v217 = v7;
  v220 = &v197 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AAF8FE74();
  v9 = *(v8 - 8);
  v234 = v8;
  v235 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v201 = &v197 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v198 = &v197 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v197 = &v197 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v219 = &v197 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v218 = &v197 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v216 = &v197 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v215 = &v197 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v214 = &v197 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v213 = &v197 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v212 = &v197 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v211 = &v197 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v210 = &v197 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v209 = &v197 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v208 = &v197 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v207 = &v197 - v38;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = sub_1AAF8FE74();
  v41 = *(v40 - 8);
  v236 = v40;
  v237 = v41;
  MEMORY[0x1EEE9AC00](v40);
  v232 = &v197 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v231 = &v197 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v230 = &v197 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v229 = &v197 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v228 = &v197 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v227 = &v197 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v226 = &v197 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v225 = &v197 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v224 = &v197 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v223 = &v197 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v222 = &v197 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v221 = &v197 - v64;
  v239 = *(AssociatedTypeWitness - 8);
  v65 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v206 = &v197 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v205 = &v197 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v204 = &v197 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v203 = &v197 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v202 = &v197 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v197 - v76;
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v197 - v79;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v197 - v82;
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v197 - v85;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v197 - v88;
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v197 - v91;
  MEMORY[0x1EEE9AC00](v93);
  v238 = &v197 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v197 - v96;
  v243 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v233 = &v197 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v101 = *(AssociatedConformanceWitness + 16);
  v240 = AssociatedTypeWitness;
  v101(&v252, AssociatedTypeWitness, AssociatedConformanceWitness);
  switch(v252)
  {
    case 1:
      sub_1AAE8AD04();
      v119 = v222;
      v159 = v245;
      v160 = v241;
      v105 = v242;
      v161 = v247;
      v162 = v248;
      sub_1AAE86AAC(v245, v222);
      sub_1AACCA728(v159, v160, v161);
      v164 = v239;
      v163 = v240;
      if ((*(v239 + 48))(v119, 1, v240) == 1)
      {
        goto LABEL_36;
      }

      (*(v164 + 32))(v92, v119, v163);
      v165 = v238;
      (*(v164 + 16))(v238, v92, v163);
      v118 = v208;
      (*(v162 + 32))(v165, v105, v162);
      (*(v164 + 8))(v92, v163);
      goto LABEL_45;
    case 2:
      sub_1AAE8ACB0();
      v102 = v223;
      v137 = v245;
      v138 = v241;
      v105 = v242;
      v139 = v247;
      v140 = v248;
      sub_1AAE86AAC(v245, v223);
      sub_1AACCA728(v137, v138, v139);
      v142 = v239;
      v141 = v240;
      if ((*(v239 + 48))(v102, 1, v240) == 1)
      {
        goto LABEL_19;
      }

      (*(v142 + 32))(v89, v102, v141);
      v143 = v238;
      (*(v142 + 16))(v238, v89, v141);
      v111 = v209;
      (*(v140 + 32))(v143, v105, v140);
      (*(v142 + 8))(v89, v141);
      goto LABEL_38;
    case 3:
      sub_1AAE8AC5C();
      v102 = v224;
      v144 = v245;
      v145 = v241;
      v105 = v242;
      v146 = v247;
      v147 = v248;
      sub_1AAE86AAC(v245, v224);
      sub_1AACCA728(v144, v145, v146);
      v149 = v239;
      v148 = v240;
      if ((*(v239 + 48))(v102, 1, v240) == 1)
      {
        goto LABEL_19;
      }

      (*(v149 + 32))(v86, v102, v148);
      v189 = v238;
      (*(v149 + 16))(v238, v86, v148);
      v111 = v210;
      (*(v147 + 32))(v189, v105, v147);
      (*(v149 + 8))(v86, v148);
      goto LABEL_38;
    case 4:
      sub_1AADF24EC();
      v119 = v225;
      v129 = v245;
      v130 = v241;
      v105 = v242;
      v131 = v247;
      v123 = v248;
      sub_1AAE86AAC(v245, v225);
      sub_1AACCA728(v129, v130, v131);
      v125 = v239;
      v124 = v240;
      if ((*(v239 + 48))(v119, 1, v240) == 1)
      {
        goto LABEL_36;
      }

      (*(v125 + 32))(v83, v119, v124);
      v126 = v238;
      (*(v125 + 16))(v238, v83, v124);
      v127 = *(v123 + 32);
      v128 = &v242;
      goto LABEL_44;
    case 5:
      sub_1AAE8AC08();
      v119 = v226;
      v166 = v245;
      v167 = v241;
      v105 = v242;
      v168 = v247;
      v169 = v248;
      sub_1AAE86AAC(v245, v226);
      sub_1AACCA728(v166, v167, v168);
      v171 = v239;
      v170 = v240;
      if ((*(v239 + 48))(v119, 1, v240) == 1)
      {
        goto LABEL_36;
      }

      (*(v171 + 32))(v80, v119, v170);
      v172 = v238;
      (*(v171 + 16))(v238, v80, v170);
      v118 = v212;
      (*(v169 + 32))(v172, v105, v169);
      (*(v171 + 8))(v80, v170);
      goto LABEL_45;
    case 6:
      sub_1AAE8ABB4();
      v119 = v227;
      v176 = v245;
      v177 = v241;
      v105 = v242;
      v178 = v247;
      v179 = v248;
      sub_1AAE86AAC(v245, v227);
      sub_1AACCA728(v176, v177, v178);
      v181 = v239;
      v180 = v240;
      if ((*(v239 + 48))(v119, 1, v240) == 1)
      {
        goto LABEL_36;
      }

      (*(v181 + 32))(v77, v119, v180);
      v182 = v238;
      (*(v181 + 16))(v238, v77, v180);
      v118 = v213;
      (*(v179 + 32))(v182, v105, v179);
      (*(v181 + 8))(v77, v180);
      goto LABEL_45;
    case 7:
      sub_1AAE8AB60();
      v119 = v228;
      v150 = v245;
      v151 = v241;
      v105 = v242;
      v152 = v247;
      v153 = v248;
      sub_1AAE86AAC(v245, v228);
      sub_1AACCA728(v150, v151, v152);
      v155 = v239;
      v154 = v240;
      if ((*(v239 + 48))(v119, 1, v240) == 1)
      {
        goto LABEL_36;
      }

      v156 = v202;
      (*(v155 + 32))(v202, v119, v154);
      v157 = v238;
      (*(v155 + 16))(v238, v156, v154);
      v158 = v214;
      (*(v153 + 32))(v157, v105, v153);
      (*(v155 + 8))(v156, v154);
      v116 = v243;
      if ((*(v243 + 48))(v158, 1, v105))
      {
        (*(v235 + 8))(v158, v234);
        v113 = v244;
        goto LABEL_47;
      }

      v175 = v158;
      v113 = v244;
      goto LABEL_52;
    case 8:
      sub_1AAE8AB0C();
      v119 = v229;
      v186 = v245;
      v187 = v241;
      v105 = v242;
      v188 = v247;
      v123 = v248;
      sub_1AAE86AAC(v245, v229);
      sub_1AACCA728(v186, v187, v188);
      v125 = v239;
      v124 = v240;
      if ((*(v239 + 48))(v119, 1, v240) == 1)
      {
        goto LABEL_36;
      }

      v83 = v203;
      (*(v125 + 32))(v203, v119, v124);
      v126 = v238;
      (*(v125 + 16))(v238, v83, v124);
      v127 = *(v123 + 32);
      v128 = &v246;
      goto LABEL_44;
    case 9:
      sub_1AAE8AAB8();
      v119 = v230;
      v134 = v245;
      v135 = v241;
      v105 = v242;
      v136 = v247;
      v123 = v248;
      sub_1AAE86AAC(v245, v230);
      sub_1AACCA728(v134, v135, v136);
      v125 = v239;
      v124 = v240;
      if ((*(v239 + 48))(v119, 1, v240) == 1)
      {
        goto LABEL_36;
      }

      v83 = v204;
      (*(v125 + 32))(v204, v119, v124);
      v126 = v238;
      (*(v125 + 16))(v238, v83, v124);
      v127 = *(v123 + 32);
      v128 = &v248;
      goto LABEL_44;
    case 10:
      sub_1AAE8AA64();
      v119 = v231;
      v183 = v245;
      v184 = v241;
      v105 = v242;
      v185 = v247;
      v123 = v248;
      sub_1AAE86C6C(v245, v231);
      sub_1AACCA728(v183, v184, v185);
      v125 = v239;
      v124 = v240;
      if ((*(v239 + 48))(v119, 1, v240) == 1)
      {
        goto LABEL_36;
      }

      v83 = v205;
      (*(v125 + 32))(v205, v119, v124);
      v126 = v238;
      (*(v125 + 16))(v238, v83, v124);
      v127 = *(v123 + 32);
      v128 = &v250;
      goto LABEL_44;
    case 11:
      sub_1AAE8AA10();
      v119 = v232;
      v120 = v245;
      v121 = v241;
      v105 = v242;
      v122 = v247;
      v123 = v248;
      sub_1AAE86C6C(v245, v232);
      sub_1AACCA728(v120, v121, v122);
      v125 = v239;
      v124 = v240;
      if ((*(v239 + 48))(v119, 1, v240) == 1)
      {
LABEL_36:
        (*(v237 + 8))(v119, v236);
        goto LABEL_42;
      }

      v83 = v206;
      (*(v125 + 32))(v206, v119, v124);
      v126 = v238;
      (*(v125 + 16))(v238, v83, v124);
      v127 = *(v123 + 32);
      v128 = &v251;
LABEL_44:
      v118 = *(v128 - 32);
      v127(v126, v105, v123);
      (*(v125 + 8))(v83, v124);
LABEL_45:
      v116 = v243;
      v191 = (*(v243 + 48))(v118, 1, v105);
      v113 = v244;
      if (v191)
      {
        goto LABEL_46;
      }

LABEL_51:
      v175 = v118;
      goto LABEL_52;
    case 12:
      v112 = v247;
      if (v247)
      {
        goto LABEL_13;
      }

      v113 = v244;
      v249 = v245;
      v116 = v243;
      if (*(*(MEMORY[0x1E69E63B0] - 8) + 64) != v65)
      {
        goto LABEL_57;
      }

      v194 = v238;
      (*(v239 + 16))(v238, &v249, v240);
      v118 = v197;
      v105 = v242;
      (*(v248 + 32))(v194, v242);
      if (!(*(v116 + 48))(v118, 1, v105))
      {
        goto LABEL_51;
      }

      goto LABEL_46;
    case 13:
      if (v247 <= 1u)
      {
        v173 = v220;
        sub_1AAF8C844();
        v116 = v243;
        v113 = v244;
        if (v217 == v65)
        {
          v174 = v238;
          (*(v239 + 16))(v238, v173, v240);
          v111 = v198;
          v105 = v242;
          (*(v248 + 32))(v174, v242);
          (*(v199 + 8))(v173, v200);
          if (!(*(v116 + 48))(v111, 1, v105))
          {
LABEL_30:
            v175 = v111;
LABEL_52:
            v195 = *(v116 + 32);
            v196 = v233;
            v195(v233, v175, v105);
            v195(v113, v196, v105);
            v192 = 0;
            return (*(v116 + 56))(v113, v192, 1, v105);
          }

LABEL_39:
          (*(v235 + 8))(v111, v234);
          goto LABEL_47;
        }

LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        JUMPOUT(0x1AACFD23CLL);
      }

      v132 = v245;
      v133 = v241;
      v112 = 2;
      goto LABEL_41;
    case 14:
      v112 = v247;
      if (v247 != 2)
      {
LABEL_13:
        v132 = v245;
        v133 = v241;
LABEL_41:
        sub_1AACCA728(v132, v133, v112);
        v105 = v242;
LABEL_42:
        v116 = v243;
        v113 = v244;
        goto LABEL_47;
      }

      v113 = v244;
      v114 = v245;
      v115 = v241;
      v249 = v245;
      v250 = v241;
      v116 = v243;
      if (*(*(MEMORY[0x1E69E6158] - 8) + 64) != v65)
      {
        __break(1u);
        goto LABEL_56;
      }

      v117 = v238;
      (*(v239 + 16))(v238, &v249, v240);
      sub_1AACCA728(v114, v115, 2);
      v118 = v201;
      v105 = v242;
      (*(v248 + 32))(v117, v242);
      if (!(*(v116 + 48))(v118, 1, v105))
      {
        v175 = v118;
        goto LABEL_52;
      }

LABEL_46:
      (*(v235 + 8))(v118, v234);
LABEL_47:
      v192 = 1;
      return (*(v116 + 56))(v113, v192, 1, v105);
    default:
      sub_1AAE8AD58();
      v102 = v221;
      v103 = v245;
      v104 = v241;
      v105 = v242;
      v106 = v247;
      v107 = v248;
      sub_1AAE86AAC(v245, v221);
      sub_1AACCA728(v103, v104, v106);
      v109 = v239;
      v108 = v240;
      if ((*(v239 + 48))(v102, 1, v240) == 1)
      {
LABEL_19:
        (*(v237 + 8))(v102, v236);
        goto LABEL_42;
      }

      (*(v109 + 32))(v97, v102, v108);
      v110 = v238;
      (*(v109 + 16))(v238, v97, v108);
      v111 = v207;
      (*(v107 + 32))(v110, v105, v107);
      (*(v109 + 8))(v97, v108);
LABEL_38:
      v116 = v243;
      v190 = (*(v243 + 48))(v111, 1, v105);
      v113 = v244;
      if (v190)
      {
        goto LABEL_39;
      }

      goto LABEL_30;
  }
}

uint64_t sub_1AACFD288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  v5 = *(v7 + 56);

  return v5(a3, 0, 1, a2);
}

void static AxisValueLabelCollisionResolution.automatic.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 1;
}

uint64_t *sub_1AACFD36C(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = (*result + 40 * a2);
  v5 = *v4;
  if ((*v4 & 0x8000000000000000) == 0)
  {
    *(v3 + 40 * v5 + 8) = v4[1];
  }

  v6 = v4[1];
  if ((v6 & 0x8000000000000000) == 0)
  {
    *(v3 + 40 * v6) = v5;
  }

  if (*(a3 + 24) == a2)
  {
    *(a3 + 24) = *v4;
  }

  *v4 = -1;
  *(v3 + 40 * *(a3 + 16)) = a2;
  v4[1] = *(a3 + 16);
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_1AACFD3F0(uint64_t a1)
{
  sub_1AACDF9B8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AACFD44C(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AACC9B78(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_1AAD95064();
    result = v17;
    goto LABEL_8;
  }

  sub_1AACFD574(v14, a2 & 1);
  result = sub_1AACC9B78(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a1;
    *(v19[7] + 8 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

void sub_1AACFD574(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AAD9B5CC();
  v6 = sub_1AAF90394();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = sub_1AAF90684();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

uint64_t sub_1AACFD820(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  v3 = *a2;
  if (v2 == 2)
  {
    v4 = *(result + 8);
  }

  else
  {
    if (v2 != 255)
    {
      return result;
    }

    v4 = 4.0;
    if (*(v3 + 24) - 1 > 1)
    {
      return result;
    }
  }

  result = swift_beginAccess();
  v5 = *(v3 + 224);
  if (v5 <= v4)
  {
    v5 = v4;
  }

  *(v3 + 224) = v5;
  return result;
}

double sub_1AACFD8A4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = a1[1];
  a2[1] = v2;

  return result;
}

uint64_t sub_1AACFD8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  result = type metadata accessor for ConcreteScale(319, MEMORY[0x1E69E63B0], v4, a4);
  if (v7 <= 0x3F)
  {
    result = type metadata accessor for ConcreteScale(319, MEMORY[0x1E69E6158], v4, v6);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1AACFD9B4()
{
  result = qword_1ED9B4480;
  if (!qword_1ED9B4480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9B4480);
  }

  return result;
}

void sub_1AACFDA00(uint64_t a1)
{
  if (!qword_1ED9B2880)
  {
    sub_1AACFDCAC();
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B2880);
    }
  }
}

void sub_1AACFDA58()
{
  if (!qword_1ED9B36E0)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B36E0);
    }
  }
}

void sub_1AACFDAA8(uint64_t a1)
{
  if (!qword_1ED9B2E48)
  {
    sub_1AAF8E734();
    v1 = sub_1AAF8DF74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B2E48);
    }
  }
}

double sub_1AACFDB0C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *sub_1AACFDB20@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v4, &v4 + 1);
  *a1 = v4;
  return result;
}

void sub_1AACFDBAC(uint64_t a1)
{
  sub_1AACFDCAC();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 24);
    sub_1AAF8FE74();
    if (v4 <= 0x3F)
    {
      sub_1AACFDA00(319);
      if (v5 <= 0x3F)
      {
        sub_1AAF8F914();
        if (v8 <= 0x3F)
        {
          type metadata accessor for ConcreteScaleRange(255, v3, v6, v7);
          sub_1AAF8FE74();
          if (v9 <= 0x3F)
          {
            sub_1AACFDA58();
            if (v10 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1AACFDCAC()
{
  result = qword_1ED9B2888;
  if (!qword_1ED9B2888)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED9B2888);
  }

  return result;
}

uint64_t sub_1AACFDCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1AACFDD38()
{
  result = qword_1ED9B4EC0[0];
  if (!qword_1ED9B4EC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B4EC0);
  }

  return result;
}

void sub_1AACFDD8C(uint64_t a1)
{
  if (!qword_1ED9B29A8)
  {
    sub_1AAD59D08(255, &qword_1ED9B4480, 0x1E6959550);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B29A8);
    }
  }
}

uint64_t sub_1AACFDDF4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  sub_1AACDCA88();
  *(v1 + 16) = 1;
  result = swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;

    do
    {
      sub_1AACDCB7C(v6, v8, sub_1AACC9B7C);
      Strong = swift_weakLoadStrong();
      sub_1AACC9B18(v8, sub_1AACC9B7C);
      if (Strong)
      {
        *(Strong + 17) = 1;
      }

      v6 += 8;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1AACFDF04(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = sub_1AACFE87C(a2);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

double sub_1AACFDF34@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1AACFDF4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AACFDFAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AACFE00C(uint64_t a1)
{
  if (!qword_1ED9B4088)
  {
    sub_1AACFA0C4(255);
    sub_1AACFA148(255);
    sub_1AACFA1CC(255);
    sub_1AACFA250(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED9B4088);
    }
  }
}

uint64_t sub_1AACFE0A0(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AACFE248(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACC9BB0(0, &qword_1ED9B2A78, &type metadata for LegendRenderingContext.Categories, MEMORY[0x1E69E62F8]);
  sub_1AACFA9B0(0);
  sub_1AACFAA34(0);
  sub_1AAF8CAA4();

  sub_1AACD889C(v10);

  v14[0] = v10;

  sub_1AACD889C((v10 + 8));

  v14[1] = v10 + 8;

  sub_1AACD889C((v10 + 104));

  v14[2] = v10 + 104;
  v11 = &v10[*(v8 + 88)];

  sub_1AACD889C(v11);

  v14[3] = v11;
  (a1)(&v15, v14);
  sub_1AACD8D78(v10, sub_1AACFE248);
  return v15;
}

void sub_1AACFE248(uint64_t a1)
{
  if (!qword_1ED9B2A70)
  {
    sub_1AACC9BB0(255, &qword_1ED9B2A78, &type metadata for LegendRenderingContext.Categories, MEMORY[0x1E69E62F8]);
    sub_1AACFA9B0(255);
    sub_1AACFAA34(255);
    sub_1AAF8CAA4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED9B2A70);
    }
  }
}

uint64_t sub_1AACFE300@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AACFE0A0(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  *a1 = result;
  return result;
}

uint64_t sub_1AACFE340(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AAD6A9BC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1AACFE434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1AACC9BB0(255, &qword_1ED9B2A60, &type metadata for AnyPrimitivePlottableArray, MEMORY[0x1E69E62F8]);
    v7 = v6;
    v8 = sub_1AACB62F8();
    v9 = a3(a1, &type metadata for Spec.Channel, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1AACFE4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }
}

uint64_t sub_1AACFE510()
{
  sub_1AACFE544();

  return swift_deallocClassInstance();
}

void *sub_1AACFE544()
{

  return v0;
}

unint64_t sub_1AACFE5B8()
{
  result = qword_1ED9B6050;
  if (!qword_1ED9B6050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B6050);
  }

  return result;
}

void sub_1AACFE640(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for ConcreteScale(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AACFE690(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = a2(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20[-v10];
  v12 = (a3)(0, v9);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = *(*v4 + 256);
  swift_beginAccess();
  sub_1AACBD0FC(v11, v4 + v14, a4);
  swift_endAccess();
  sub_1AACDCA88();
  *(v4 + 16) = 1;
  result = swift_beginAccess();
  v16 = *(v4 + 32);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + 32;

    do
    {
      sub_1AACDCB7C(v18, v20, sub_1AACC9B7C);
      Strong = swift_weakLoadStrong();
      sub_1AACC9B18(v20, sub_1AACC9B7C);
      if (Strong)
      {
        *(Strong + 17) = 1;
      }

      v18 += 8;
      --v17;
    }

    while (v17);
  }

  return result;
}

double sub_1AACFE87C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = 0uLL;
    v4 = 0uLL;
    do
    {
      v6 = *v2;
      v5 = v2[1];
      v2 += 2;
      v4 = vbslq_s8(vcgtq_f64(v5, v4), v5, v4);
      v3 = vbslq_s8(vcgtq_f64(v6, v3), v6, v3);
      --v1;
    }

    while (v1);
  }

  else
  {
    v3.f64[0] = 0.0;
  }

  return ceil(v3.f64[0]);
}

char *sub_1AACFE8D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AACFE930(a1, a2, a3, *v3, &qword_1ED9B28C8, &type metadata for SgPadding);
  *v3 = result;
  return result;
}

uint64_t sub_1AACFE904@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_1AACDCC9C(a1, a2, a3);
  *a4 = v6;
  a4[1] = v7;
  a4[2] = v8;
  a4[3] = v9;
  return result;
}

char *sub_1AACFE930(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1AAD469FC(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 32 * v10);
  }

  return v12;
}

float64x2_t sub_1AACFEA44@<Q0>(uint64_t a1@<X0>, float64x2_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 48);
    v4 = 0uLL;
    v5 = 0uLL;
    do
    {
      v4 = vbslq_s8(vcgtq_f64(v3[-1], v4), v3[-1], v4);
      v5 = vbslq_s8(vcgtq_f64(*v3, v5), *v3, v5);
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = 0uLL;
    v5 = 0uLL;
  }

  result = vrndpq_f64(v4);
  *a2 = result;
  a2[1] = vrndpq_f64(v5);
  return result;
}

double sub_1AACFEAD0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_1AACFEAE8@<D0>(_OWORD *a1@<X8>)
{
  sub_1AACFEB38(v7);
  v2 = v11;
  a1[4] = v10;
  a1[5] = v2;
  v3 = v13;
  a1[6] = v12;
  a1[7] = v3;
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

double sub_1AACFEB3C(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1AACFEB6C(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AACFA0C4(0);
  sub_1AACFA148(0);
  sub_1AACFA1CC(0);
  sub_1AACFA250(0);

  sub_1AACD889C(v8);

  v12[0] = v8;

  sub_1AACD889C(v9);

  v12[1] = v9;

  sub_1AACD889C(v10);

  v12[2] = v10;

  sub_1AACD889C(v11);

  v12[3] = v11;
  (a1)(&v13, v12);
  sub_1AACD8D78(v8, sub_1AACFE00C);
  return v13;
}

uint64_t sub_1AACFECA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(*a1 + 16);
  *v58 = **a1;
  *&v58[16] = v5;
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[5];
  *&v58[64] = v3[4];
  *&v58[80] = v8;
  *&v58[32] = v6;
  *&v58[48] = v7;
  v9 = a1[2];
  v10 = a1[3];
  v12 = v9[6];
  v11 = v9[7];
  v13 = v9[4];
  v64 = v9[5];
  v65 = v12;
  v66 = v11;
  v14 = v9[3];
  v16 = *v9;
  v15 = v9[1];
  v61 = v9[2];
  v62 = v14;
  v59 = v16;
  v60 = v15;
  v63 = v13;
  v17 = *v10;
  v18 = v10[2];
  *&v67[16] = v10[1];
  *&v67[32] = v18;
  *v67 = v17;
  v19 = v10[3];
  v20 = v10[4];
  v21 = v10[5];
  *&v67[96] = *(v10 + 12);
  *&v67[64] = v20;
  *&v67[80] = v21;
  *&v67[48] = v19;
  v42 = MEMORY[0x1E69E7CC0];
  if (*v58)
  {
    v54 = *&v58[40];
    v55 = *&v58[56];
    v56 = *&v58[72];
    v51 = *v58;
    v57 = *&v58[88];
    v52 = *&v58[8];
    v53 = *&v58[24];
    sub_1AACFF080(v58, &v43, sub_1AACFA0C4);
    sub_1AAEB37B4(&v42, &v51, &v51);
    sub_1AACFDF4C(v58, sub_1AACFA0C4);
  }

  v22 = sub_1AACFF080(v4, &v43, sub_1AACFA148);
  if (v43)
  {
    v41[4] = v47;
    v41[5] = v48;
    v41[6] = v49;
    v41[7] = v50;
    v41[0] = v43;
    v41[1] = v44;
    v41[2] = v45;
    v41[3] = v46;
    MEMORY[0x1EEE9AC00](v22);
    v24[2] = v41;
    sub_1AAEB2CB0(&v42, v41, sub_1AAEB4318, v24);
    sub_1AAEB3754(v41, &qword_1ED9B4080, MEMORY[0x1E69E6158], &type metadata for AnyChartSymbolShape, sub_1AACFE640);
  }

  else
  {
    sub_1AACFDF4C(&v43, sub_1AACFA148);
  }

  v37 = v63;
  v38 = v64;
  v39 = v65;
  v40 = v66;
  v33 = v59;
  v34 = v60;
  v35 = v61;
  v36 = v62;
  result = sub_1AAEB1528(&v33);
  if (result != 1)
  {
    v47 = v37;
    v48 = v38;
    v49 = v39;
    v50 = v40;
    v43 = v33;
    v44 = v34;
    v45 = v35;
    v46 = v36;
    sub_1AACFF080(&v59, &v25, sub_1AACFA1CC);
    sub_1AAEB3B80(&v42, &v43, &v43);
    result = sub_1AACFDF4C(&v59, sub_1AACFA1CC);
  }

  if (*v67)
  {
    v25 = *v67;
    v28 = *&v67[40];
    v29 = *&v67[56];
    v30 = *&v67[72];
    v31 = *&v67[88];
    v26 = *&v67[8];
    v27 = *&v67[24];
    sub_1AACFF080(v67, &v32, sub_1AACFA250);
    sub_1AAEB3F64(&v42, &v25, &v25);
    result = sub_1AACFDF4C(v67, sub_1AACFA250);
  }

  *a2 = v42;
  return result;
}

uint64_t sub_1AACFEFFC(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1AAE28B54(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AACFF080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AACFF0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = *(a1 + 8);
  v6 = **a1;
  v7 = *v5;
  v99[1] = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[5];
  v102 = v5[4];
  v103 = v10;
  v100 = v8;
  v101 = v9;
  v99[0] = v7;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(v11 + 12);
  v15 = v11[3];
  v14 = v11[4];
  *&v107[32] = v11[5];
  *v107 = v15;
  *&v107[48] = v13;
  v17 = v11[1];
  v16 = v11[2];
  v104 = *v11;
  v105 = v17;
  v106 = v16;
  *&v107[16] = v14;
  if (*&v99[0] && (v18 = BYTE8(v101), BYTE8(v101) != 255) && (BYTE8(v101) & 1) != 0)
  {
    *&v88 = v12;
    v19 = *(&v100 + 1);
    v20 = v101;
    if (a3 == 255)
    {
      a2 = 1;
    }

    if (a3 == 255)
    {
      v22 = 2;
    }

    else
    {
      v22 = a3;
    }

    sub_1AACFF080(v99, v94, sub_1AACFA9B0);
    sub_1AAEB36D4(v20, v18);

    v23 = sub_1AAD6A9D0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    v26 = v23;
    if (v25 >= v24 >> 1)
    {
      v26 = sub_1AAD6A9D0((v24 > 1), v25 + 1, 1, v23);
    }

    sub_1AACFDF4C(v99, sub_1AACFA9B0);
    *(v26 + 2) = v25 + 1;
    v27 = &v26[32 * v25];
    v28 = v26;
    *(v27 + 4) = v19;
    *(v27 + 5) = v20;
    *(v27 + 6) = a2;
    v27[56] = v22;
    v12 = v88;
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  v29 = v104;
  v87 = v28;
  if (v104)
  {
    v28 = *(&v104 + 1);
    v30 = *v107;
    v94[0] = v104;
    v94[1] = v105;
    v94[2] = v106;
    v95 = *v107;
    v96 = *&v107[8];
    v97 = *&v107[24];
    v98 = *&v107[40];
    v31 = COERCE_DOUBLE(sub_1AADE69D4(*v107));
    v32 = v31;
    v34 = v33 & 1;
    v35 = 0.0;
    if (v33)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = v31;
    }

    v37 = COERCE_DOUBLE(sub_1AADC5CE8(v30));
    if ((v38 & 1) == 0)
    {
      v35 = v37;
    }

    if (!v34 && (*&v32 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || !(v38 & 1 | ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)) || v36 >= v35)
    {
      v28 = v87;
      goto LABEL_46;
    }

    if (v36 > v35)
    {
      __break(1u);
    }

    else
    {
      *&v88 = v12;
      v85 = a4;
      v86 = v6;
      sub_1AACFF080(&v104, v93, sub_1AACFAA34);
      v39.n128_f64[0] = sub_1AADEAF9C(4, 1, 1, v36, v35, 0.0);
      sub_1AAEC512C(v93, v39, v36, v35);
      sub_1AAEC4CDC();
      v41 = *(v40 + 16);
      if (v41)
      {
        v42 = (v40 + 32);
        v43 = MEMORY[0x1E69E7CC0];
        do
        {
          v46 = *v42;
          v92 = *v42;
          v29(&v89, &v92);
          if (v89 > 0.0)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v91[0] = v43;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1AACEF664(0, *(v43 + 16) + 1, 1);
              v43 = v91[0];
            }

            v45 = *(v43 + 16);
            v44 = *(v43 + 24);
            if (v45 >= v44 >> 1)
            {
              sub_1AACEF664((v44 > 1), v45 + 1, 1);
              v43 = v91[0];
            }

            *(v43 + 16) = v45 + 1;
            *(v43 + 8 * v45 + 32) = v46;
          }

          ++v42;
          --v41;
        }

        while (v41);
      }

      else
      {
        v43 = MEMORY[0x1E69E7CC0];
      }

      sub_1AAF0D208(v43, v88, v91);
      MEMORY[0x1EEE9AC00](v48);
      v83 = v91;
      sub_1AADE5BF8(sub_1AAEB36AC, &v82, v43);
      v50 = v49;
      v51 = *(v43 + 16);
      v6 = MEMORY[0x1E69E7CC0];
      if (v51)
      {
        v84 = 0;
        *&v88 = v49;
        v92 = MEMORY[0x1E69E7CC0];
        sub_1AAD411E8(0, v51, 0);
        v6 = v92;
        v52 = v43 + 32;
        do
        {
          v89 = 0.0;
          v90 = 0xE000000000000000;
          sub_1AAF8FA24();
          v49 = MEMORY[0x1AC5982F0](0x536C6F626D797324, 0xEB00000000657A69);
          v53 = v89;
          v54 = v90;
          v92 = v6;
          v56 = *(v6 + 2);
          v55 = *(v6 + 3);
          if (v56 >= v55 >> 1)
          {
            v49 = sub_1AAD411E8((v55 > 1), v56 + 1, 1);
            v6 = v92;
          }

          *(v6 + 2) = v56 + 1;
          v57 = &v6[16 * v56];
          *(v57 + 4) = v53;
          *(v57 + 5) = v54;
          v52 += 8;
          --v51;
        }

        while (v51);
        v50 = v88;
      }

      MEMORY[0x1EEE9AC00](v49);
      v83 = v94;
      sub_1AAEB3404(v43, v50, sub_1AAEB36CC);
      v30 = v58;

      v59 = swift_isUniquelyReferenced_nonNull_native();
      v28 = v87;
      if (v59)
      {
        goto LABEL_43;
      }
    }

    v86 = sub_1AAD6A75C(0, *(v86 + 2) + 1, 1, v86);
LABEL_43:
    v61 = *(v86 + 2);
    v60 = *(v86 + 3);
    if (v61 >= v60 >> 1)
    {
      v86 = sub_1AAD6A75C((v60 > 1), v61 + 1, 1, v86);
    }

    sub_1AACFDF4C(v93, sub_1AAD172C4);
    sub_1AACFDF4C(&v104, sub_1AACFAA34);
    v62 = v86;
    *(v86 + 2) = v61 + 1;
    v63 = &v62[16 * v61];
    *(v63 + 4) = v6;
    *(v63 + 5) = v30;
    v6 = v62;
    sub_1AAD57C94(v91);
    a4 = v85;
  }

LABEL_46:
  v64 = *(v6 + 2);
  v65 = MEMORY[0x1E69E7CC0];
  if (v64)
  {
    v66 = a4;
    v91[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD41584(0, v64, 0);
    v67 = v91[0];
    v68 = (v6 + 32);
    do
    {
      v88 = *v68;
      v91[0] = v67;
      v69 = *(v67 + 16);
      v70 = *(v67 + 24);

      if (v69 >= v70 >> 1)
      {
        sub_1AAD41584((v70 > 1), v69 + 1, 1);
        v67 = v91[0];
      }

      *(v67 + 16) = v69 + 1;
      v71 = v67 + 32 * v69;
      *(v71 + 32) = v88;
      *(v71 + 48) = 0;
      *(v71 + 56) = 0;
      ++v68;
      --v64;
    }

    while (v64);
    a4 = v66;
    v65 = MEMORY[0x1E69E7CC0];
    v72 = *(v28 + 2);
    if (v72)
    {
      goto LABEL_52;
    }

LABEL_58:

    v73 = MEMORY[0x1E69E7CC0];
    goto LABEL_59;
  }

  v67 = MEMORY[0x1E69E7CC0];
  v72 = *(v28 + 2);
  if (!v72)
  {
    goto LABEL_58;
  }

LABEL_52:
  v84 = v67;
  v85 = a4;
  v86 = v6;
  v91[0] = v65;
  sub_1AAD41584(0, v72, 0);
  v73 = v91[0];
  v74 = v28 + 56;
  do
  {
    v75 = *(v74 - 3);
    v76 = *(v74 - 2);
    *&v88 = *(v74 - 1);
    v77 = *v74;
    v91[0] = v73;
    v79 = *(v73 + 16);
    v78 = *(v73 + 24);

    if (v79 >= v78 >> 1)
    {
      sub_1AAD41584((v78 > 1), v79 + 1, 1);
      v73 = v91[0];
    }

    v74 += 32;
    *(v73 + 16) = v79 + 1;
    v80 = v73 + 32 * v79;
    *(v80 + 32) = v75;
    *(v80 + 40) = v76;
    *(v80 + 48) = v88;
    *(v80 + 56) = v77 | 0x80;
    --v72;
  }

  while (v72);

  v67 = v84;
  a4 = v85;
LABEL_59:
  v91[0] = v67;
  result = sub_1AACFE340(v73);
  *a4 = v91[0];
  return result;
}

char *sub_1AACFF894(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1AAD6D1F0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1AACFF9B8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a4;
  LODWORD(v38) = a3;
  v39 = a2;
  v11 = type metadata accessor for RenderBasedChartView(0, a5, a6, a4);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  sub_1AACFFED8(v16, &v56, v13);
  v76 = v62;
  v77[0] = *v63;
  *(v77 + 15) = *&v63[15];
  v72 = v58;
  v73 = v59;
  v74 = v60;
  v75 = v61;
  v70 = v56;
  v71 = v57;
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  v19 = v18 + v17;
  v20 = v39;
  (*(v12 + 32))(v19, v15, v11);
  v21 = sub_1AAF8F124();
  v40 = v22;
  v84 = v76;
  *v85 = v77[0];
  *&v85[15] = *(v77 + 15);
  v80 = v72;
  v81 = v73;
  v82 = v74;
  v83 = v75;
  v78 = v70;
  v79 = v71;
  if (!v20)
  {
    v23 = 0;
    v26 = 0;
    goto LABEL_9;
  }

  if ((sub_1AAF8D874() & 1) != 0 || !*(v20 + 16))
  {

    v23 = 0;
    v26 = 0;
    v20 = 0;
LABEL_9:
    v27 = 0;
    v28 = 0;
    goto LABEL_10;
  }

  sub_1AAE2F91C(v11, v68);
  v23 = v69;
  if (v69 < 2)
  {
    KeyPath = swift_getKeyPath();
    v25 = swift_getKeyPath();
    *&v56 = KeyPath;
    BYTE8(v56) = 0;
    *&v57 = v25;
    BYTE8(v57) = 0;
    sub_1AAE3944C();
    v23 = sub_1AAF8EF44();
    sub_1AACEC574(v68, &qword_1ED9B3888, &type metadata for ChartLegendConfiguration);
  }

  v26 = swift_getKeyPath();
  v27 = swift_getKeyPath();
  v28 = v37 - 3 < 2;

LABEL_10:
  v41[6] = v84;
  v41[7] = *v85;
  v41[2] = v80;
  v41[3] = v81;
  v41[4] = v82;
  v41[5] = v83;
  v41[0] = v78;
  v41[1] = v79;
  v38 = v21;
  v39 = sub_1AAD0D470;
  *&v42 = *&v85[16];
  *(&v42 + 1) = sub_1AAD0D470;
  *&v43 = v18;
  *(&v43 + 1) = v21;
  v29 = v40;
  v44 = v40;
  v55 = v40;
  v49 = v82;
  v50 = v83;
  v51 = v84;
  v52 = *v85;
  v45 = v78;
  v46 = v79;
  v47 = v80;
  v48 = v81;
  v53 = v42;
  v54 = v43;
  sub_1AAD00998(v41, &v56, sub_1AAD0113C);
  sub_1AAD01184(v23, v26, v20, v27);
  sub_1AAD011E8(v23, v26, v20, v27);
  v30 = v54;
  *(a7 + 128) = v53;
  *(a7 + 144) = v30;
  v31 = v55;
  v32 = v50;
  *(a7 + 64) = v49;
  *(a7 + 80) = v32;
  v33 = v52;
  *(a7 + 96) = v51;
  *(a7 + 112) = v33;
  v34 = v46;
  *a7 = v45;
  *(a7 + 16) = v34;
  v35 = v48;
  *(a7 + 32) = v47;
  *(a7 + 48) = v35;
  *(a7 + 160) = v31;
  *(a7 + 168) = v23;
  *(a7 + 176) = v26;
  *(a7 + 184) = v20;
  *(a7 + 192) = v27;
  *(a7 + 200) = v28;
  sub_1AAD011E8(v23, v26, v20, v27);
  v62 = v84;
  *v63 = *v85;
  v58 = v80;
  v59 = v81;
  v60 = v82;
  v61 = v83;
  v56 = v78;
  v57 = v79;
  *&v63[16] = *&v85[16];
  v64 = v39;
  v65 = v18;
  v66 = v38;
  v67 = v29;
  return sub_1AAD00EF8(&v56, sub_1AAD0113C);
}

void *sub_1AACFFDE4@<X0>(void *a1@<X8>)
{
  sub_1AAE394F4();
  result = sub_1AAF8E144();
  *a1 = v3;
  return result;
}

void *sub_1AACFFE38@<X0>(_BYTE *a1@<X8>)
{
  sub_1AAE394A0();
  result = sub_1AAF8E144();
  *a1 = v3;
  return result;
}

__n128 sub_1AACFFED8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (sub_1AAD00AC4(a1, a3))
  {
    sub_1AAE320C4(a1, sub_1AAE3965C, sub_1AAE39BB8, &v27);
    v19 = v27;
    v20 = v28;
    v21.n128_u64[0] = v29.n128_u64[0];
    v21.n128_u8[8] = 0;
  }

  else
  {
    if ((sub_1AAD00C3C(a1) & 1) == 0)
    {
      sub_1AAD0028C(a1, v17);
      v25 = v17[6];
      *v26 = v17[7];
      *&v26[16] = v18;
      v21 = v17[2];
      v22 = v17[3];
      v23 = v17[4];
      v24 = v17[5];
      v19 = v17[0];
      v20 = v17[1];
      sub_1AAD00F58(&v19);
      sub_1AACCC1B0(0);
      sub_1AAD00E14(0);
      sub_1AAD00F64();
      sub_1AAD00A0C(&qword_1ED9B2C40, sub_1AAD00E14, sub_1AAD00A90);
      sub_1AAF8E374();
      goto LABEL_7;
    }

    sub_1AAE320C4(a1, sub_1AAE3976C, sub_1AAE39BB8, &v27);
    v19 = v27;
    v20 = v28;
    v21.n128_u64[0] = v29.n128_u64[0];
    v21.n128_u8[8] = 1;
  }

  sub_1AAD00B34(0, &qword_1ED9B2DD0, sub_1AACCF894, &qword_1ED9B2BC0, MEMORY[0x1E6980448]);
  sub_1AAD00FDC();

  sub_1AAF8E374();
  v19 = v27;
  v20 = v28;
  v21.n128_u64[0] = v29.n128_u64[0];
  v21.n128_u8[8] = v29.n128_u8[8];
  sub_1AAE39654(&v19);
  v33 = v25;
  v34[0] = *v26;
  *(v34 + 15) = *&v26[15];
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v24;
  v27 = v19;
  v28 = v20;
  sub_1AACCC1B0(0);
  sub_1AAD00E14(0);
  sub_1AAD00F64();
  sub_1AAD00A0C(&qword_1ED9B2C40, sub_1AAD00E14, sub_1AAD00A90);
  sub_1AAF8E374();

  v33 = v15;
  v34[0] = *v16;
  *(v34 + 15) = *&v16[15];
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v27 = v9;
  v28 = v10;
LABEL_7:
  v5 = v34[0];
  *(a2 + 96) = v33;
  *(a2 + 112) = v5;
  *(a2 + 127) = *(v34 + 15);
  v6 = v30;
  *(a2 + 32) = v29;
  *(a2 + 48) = v6;
  v7 = v32;
  *(a2 + 64) = v31;
  *(a2 + 80) = v7;
  result = v28;
  *a2 = v27;
  *(a2 + 16) = result;
  return result;
}

__n128 sub_1AAD0028C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v2, a1, v6);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(v9 + 16) = v11;
  *(v9 + 24) = v10;
  (*(v4 + 32))(v9 + v8, v7, a1);
  sub_1AAF8F124();
  sub_1AAF8E054();
  *&v80 = sub_1AACDD678;
  *(&v80 + 1) = v9;
  v12 = sub_1AAE2F2F4(a1);
  v79[4] = v84;
  v79[5] = v85;
  v79[6] = v86;
  v79[7] = v87;
  v79[0] = v80;
  v79[1] = v81;
  v79[2] = v82;
  v79[3] = v83;
  v25[1] = v10;
  v25[2] = v11;
  if (v12)
  {
    *&v68[0] = v12;
    *(&v68[0] + 1) = v13;
    v14 = v12;
    v15 = v13;

    sub_1AAE302B0(v79, v68, &v48);
    sub_1AAE39810(&v48);
    v44 = v54;
    v45 = v55;
    LOBYTE(v46) = v56;
    v40 = v50;
    v41 = v51;
    v42 = v52;
    v43 = v53;
    v38 = v48;
    v39 = v49;
    sub_1AACCFC94(0);
    sub_1AAD00E48();
    swift_retain_n();
    sub_1AAF8E374();
    sub_1AAD00EF8(&v80, sub_1AACCFC94);
    sub_1AACB4A98(v14, v15);

    sub_1AACB4A98(v14, v15);
  }

  else
  {
    v33 = v84;
    v34 = v85;
    v35 = v86;
    v36 = v87;
    v29 = v80;
    v30 = v81;
    v31 = v82;
    v32 = v83;
    v50 = v82;
    v51 = v83;
    v48 = v80;
    v49 = v81;
    v54 = v86;
    v55 = v87;
    v52 = v84;
    v53 = v85;
    sub_1AAD0098C(&v48);
    v44 = v54;
    v45 = v55;
    LOBYTE(v46) = v56;
    v40 = v50;
    v41 = v51;
    v42 = v52;
    v43 = v53;
    v38 = v48;
    v39 = v49;
    sub_1AAD00998(&v29, v27, sub_1AACCFC94);
    sub_1AAD00998(&v29, v27, sub_1AACCFC94);
    sub_1AAD00998(&v29, v27, sub_1AACCFC94);
    sub_1AACCFC94(0);
    sub_1AAD00E48();
    sub_1AAF8E374();
    sub_1AAD00EF8(&v80, sub_1AACCFC94);
    sub_1AAD00EF8(&v29, sub_1AACCFC94);
    sub_1AAD00EF8(&v29, sub_1AACCFC94);
  }

  v65 = v76;
  v66 = v77;
  v61 = v72;
  v62 = v73;
  v63 = v74;
  v64 = v75;
  v59 = v70;
  v60 = v71;
  v68[6] = v76;
  v68[7] = v77;
  v68[2] = v72;
  v68[3] = v73;
  v68[4] = v74;
  v68[5] = v75;
  v67 = v78;
  v69 = v78;
  v68[0] = v70;
  v68[1] = v71;
  sub_1AAD00998(&v59, &v48, sub_1AACCD07C);
  sub_1AAD00EF8(v68, sub_1AACCD07C);
  v16 = sub_1AAE2F478(a1);
  v57[6] = v65;
  v57[7] = v66;
  v58 = v67;
  v57[2] = v61;
  v57[3] = v62;
  v57[4] = v63;
  v57[5] = v64;
  v57[0] = v59;
  v57[1] = v60;
  if (v16)
  {
    v47[0] = v16;
    v47[1] = v17;
    v18 = v16;
    v19 = v17;
    sub_1AAE30390(v57, v47, &v48);
    *&v38 = v48;
    sub_1AAE39808(&v38);
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v34 = v43;
    v29 = v38;
    v30 = v39;
    sub_1AACCD07C(0);
    sub_1AAD00A90();

    sub_1AAF8E374();
    sub_1AAD00EF8(&v59, sub_1AACCD07C);

    sub_1AACB4A98(v18, v19);
  }

  else
  {
    v27[6] = v65;
    v27[7] = v66;
    v27[2] = v61;
    v27[3] = v62;
    v27[4] = v63;
    v27[5] = v64;
    v27[0] = v59;
    v27[1] = v60;
    v44 = v65;
    v45 = v66;
    v40 = v61;
    v41 = v62;
    v42 = v63;
    v43 = v64;
    v28 = v67;
    LOBYTE(v46) = v67;
    v38 = v59;
    v39 = v60;
    sub_1AAD00A00(&v38);
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v34 = v43;
    v29 = v38;
    v30 = v39;
    sub_1AAD00998(v27, &v48, sub_1AACCD07C);
    sub_1AAD00998(v27, &v48, sub_1AACCD07C);
    sub_1AACCD07C(0);
    sub_1AAD00A90();
    sub_1AAF8E374();
    sub_1AAD00EF8(&v59, sub_1AACCD07C);
    sub_1AAD00EF8(v27, sub_1AACCD07C);
  }

  v35 = v54;
  v36 = v55;
  v31 = v50;
  v32 = v51;
  v33 = v52;
  v34 = v53;
  v29 = v48;
  v30 = v49;
  v44 = v54;
  v45 = v55;
  v40 = v50;
  v41 = v51;
  v42 = v52;
  v43 = v53;
  v37 = v56;
  v46 = v56;
  v38 = v48;
  v39 = v49;
  sub_1AAD00998(&v29, v27, sub_1AAD00E14);
  sub_1AAD00EF8(&v38, sub_1AAD00E14);
  v20 = v36;
  v21 = v26;
  *(v26 + 96) = v35;
  *(v21 + 112) = v20;
  *(v21 + 128) = v37;
  v22 = v32;
  *(v21 + 32) = v31;
  *(v21 + 48) = v22;
  v23 = v34;
  *(v21 + 64) = v33;
  *(v21 + 80) = v23;
  result = v30;
  *v21 = v29;
  *(v21 + 16) = result;
  return result;
}

uint64_t sub_1AAD00998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAD00A0C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

BOOL sub_1AAD00AC4(uint64_t a1, double a2)
{
  if ((sub_1AAD00C3C(a1) & 1) == 0)
  {
    return 0;
  }

  sub_1AAE2FE08(a1, v5);
  sub_1AACB2684(v5);
  v3 = sub_1AAF8E794();
  sub_1AAF8E784();
  return sub_1AAF8E784() != v3;
}

void sub_1AAD00B34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1AACCC748(255, a4, a5);
    v8 = sub_1AAF8DF74();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1AAD00BB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E6981910], v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1AAD00C24(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AAD00C3C(uint64_t a1)
{
  sub_1AAE2FE08(a1, v15);
  v1 = LOBYTE(v15[0]);
  sub_1AACB2684(v15);
  v2 = sub_1AAF8E784();
  v3 = 0;
  if (v1 != v2)
  {
    sub_1AACB6294(0, &qword_1ED9B44B0, type metadata accessor for ChartModel, MEMORY[0x1E6981E98]);
    sub_1AAF8F1D4();
    v4 = *(v9[0] + 64);
    v11 = *(v9[0] + 48);
    v5 = *(v9[0] + 80);
    v12 = v4;
    v13 = v5;
    v14 = *(v9[0] + 96);
    v6 = *(v9[0] + 32);
    v10[0] = *(v9[0] + 16);
    v10[1] = v6;
    sub_1AAE387DC(v10, v9, &qword_1ED9B5460, &type metadata for PartialSpec.Chart, MEMORY[0x1E69E6720]);

    if (v11)
    {
      v7 = HIBYTE(v14);
      sub_1AACEC574(v10, &qword_1ED9B5460, &type metadata for PartialSpec.Chart);
      v3 = v7 ^ 1;
    }

    else
    {
      v3 = 1;
    }
  }

  return v3 & 1;
}

void sub_1AAD00D70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AAD00E48()
{
  result = qword_1ED9B2DB8;
  if (!qword_1ED9B2DB8)
  {
    sub_1AACCFC94(255);
    sub_1AACDCA40(&qword_1ED9B2EA0, sub_1AACCD0B0, MEMORY[0x1E697E378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2DB8);
  }

  return result;
}

uint64_t sub_1AAD00EF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AAD00F64()
{
  result = qword_1ED9B2CB8;
  if (!qword_1ED9B2CB8)
  {
    sub_1AACCC1B0(255);
    sub_1AAD00FDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2CB8);
  }

  return result;
}

unint64_t sub_1AAD00FDC()
{
  result = qword_1ED9B2DD8;
  if (!qword_1ED9B2DD8)
  {
    v1 = MEMORY[0x1E6980448];
    sub_1AAD00B34(255, &qword_1ED9B2DD0, sub_1AACCF894, &qword_1ED9B2BC0, MEMORY[0x1E6980448]);
    sub_1AACDCA40(&qword_1ED9B2E90, sub_1AACCF894, MEMORY[0x1E697E378]);
    sub_1AAD010F8(&qword_1ED9B5538, &qword_1ED9B2BC0, v1, MEMORY[0x1E6980450]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2DD8);
  }

  return result;
}

uint64_t sub_1AAD010F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AACCC748(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1AAD01184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1AAD011E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AAD01248()
{
  result = sub_1AAF8EC44();
  qword_1ED9C3950 = result;
  return result;
}

uint64_t static BuilderTuple<each A>._renderChartContent(_:_:)@<X0>(uint64_t TupleTypeMetadata@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = a3;
  v65 = a6;
  if (a3 == 1)
  {
    v10 = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v8)
    {
      v13 = 0;
      v14 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 < 4)
      {
        goto LABEL_9;
      }

      if (&v12[-v14] < 0x20)
      {
        goto LABEL_9;
      }

      v13 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v15 = (v14 + 16);
      v16 = v12 + 16;
      v17 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      if (v13 != v8)
      {
LABEL_9:
        v19 = v8 - v13;
        v20 = 8 * v13;
        v21 = &v12[8 * v13];
        v22 = (v14 + v20);
        do
        {
          v23 = *v22++;
          *v21 = v23;
          v21 += 8;
          --v19;
        }

        while (v19);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v10 = TupleTypeMetadata;
  }

  v63 = &v61;
  v24 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v70 = *a2;
  v26 = *(a2 + 1);
  v62 = v27;
  v28 = *(v27 + 16);
  v71 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v28(v24);
  v30 = MEMORY[0x1E69E7CC0];
  v64 = v10;
  if (v8)
  {
    v31 = 0;
    v68 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v67 = a5 & 0xFFFFFFFFFFFFFFFELL;
    v32 = (v10 + 32);
    v66 = v8;
    v69 = v26;
    while (1)
    {
      v72 = &v61;
      v33 = *(v68 + 8 * v31);
      v73 = *(v67 + 8 * v31);
      v35.n128_f64[0] = MEMORY[0x1EEE9AC00](result);
      v37 = &v61 - v36;
      if (v8 == 1)
      {
        v38 = 0;
      }

      else
      {
        v38 = *v32;
      }

      v74 = v34;
      (*(v34 + 16))(v37, &v71[v38], v33, v35);
      v39 = *(v26 + 16);
      v40 = *(v39 + 16);
      v41 = *(v40 + 32);
      *&v77[0] = v31;

      sub_1AAF90024();
      v79 = v41;
      swift_beginAccess();
      v42 = *(v40 + 16);
      v43 = *(v42 + 16);
      v75 = v30;
      if (v43 && (v44 = sub_1AACCAE28(&v79), (v45 & 1) != 0))
      {
        v46 = *(*(v42 + 56) + 8 * v44);
      }

      else
      {
        swift_endAccess();
        sub_1AAF90704();
        MEMORY[0x1AC5992C0](v31);
        MEMORY[0x1AC5992F0](v41);
        v82 = v77[2];
        v83 = v77[3];
        v84 = v78;
        v80 = v77[0];
        v81 = v77[1];
        v47 = sub_1AAF906E4();
        v46 = sub_1AACCB060(v47);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = *(v40 + 16);
        *(v40 + 16) = 0x8000000000000000;
        sub_1AACCB154(v46, &v79, isUniquelyReferenced_nonNull_native);
        *(v40 + 16) = v76;
      }

      swift_endAccess();
      sub_1AACCAFF0(&v79);
      v49 = *(v40 + 32);
      *(v40 + 32) = v46;
      v50 = *(v39 + 24);
      *(v39 + 24) = v46;
      LOBYTE(v77[0]) = v70;
      v26 = v69;
      *(&v77[0] + 1) = v69;
      (*(v73 + 40))(&v79, v37, v77, v33);
      *(v39 + 24) = v50;
      *(v40 + 32) = v49;

      v51 = v79;
      v30 = v75;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AACE3508(0, *(v30 + 2) + 1, 1, v30);
      }

      v53 = *(v30 + 2);
      v52 = *(v30 + 3);
      if (v53 >= v52 >> 1)
      {
        v30 = sub_1AACE3508((v52 > 1), v53 + 1, 1, v30);
      }

      *(v30 + 2) = v53 + 1;
      *&v30[8 * v53 + 32] = v51;
      result = (*(v74 + 8))(v37, v33);
      if (v31 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++v31;
      v32 += 4;
      v8 = v66;
      if (v66 == v31)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_27:
    v54 = type metadata accessor for SgGroup(0);
    v55 = swift_allocBox();
    v57 = v56;
    v58 = *(*(v26 + 16) + 24);
    v59 = v54[6];
    v60 = type metadata accessor for SgClipRect(0);
    (*(*(v60 - 8) + 56))(&v57[v59], 1, 1, v60);
    *v57 = v58;
    *(v57 + 1) = v30;
    *&v57[v54[7]] = 0x3FF0000000000000;
    *&v57[v54[8]] = 0;
    *&v57[v54[9]] = MEMORY[0x1E69E7CC0];
    v57[v54[10]] = 0;
    *v65 = v55;
    return (*(v62 + 8))(v71, v64);
  }

  return result;
}

uint64_t static BuilderConditional<>._renderChartContent(_:_:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v42 = a6;
  v43 = a5;
  v45 = a7;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for BuilderConditional.Storage(0, v19, v20, v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v42 - v23;
  v44 = *a2;
  v25 = *(a2 + 1);
  (*(v26 + 16))(&v42 - v23, a1, v21, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v24, a4);
    v27 = *(v25 + 16);
    v28 = *(v27 + 16);
    v29 = *(v28 + 32);

    v31 = sub_1AACD5520(0, v29, v30);
    v32 = *(v28 + 32);
    *(v28 + 32) = v31;
    v33 = *(v27 + 24);
    *(v27 + 24) = v31;
    v46[0] = v44;
    v47 = v25;
    (*(v42 + 40))(v13, v46, a4);
    *(v27 + 24) = v33;
    *(v28 + 32) = v32;

    return (*(v11 + 8))(v13, a4);
  }

  else
  {
    (*(v15 + 32))(v18, v24, a3);
    v35 = *(v25 + 16);
    v36 = *(v35 + 16);
    v37 = *(v36 + 32);

    v39 = sub_1AACD5520(1, v37, v38);
    v40 = *(v36 + 32);
    *(v36 + 32) = v39;
    v41 = *(v35 + 24);
    *(v35 + 24) = v39;
    v46[0] = v44;
    v47 = v25;
    (*(v43 + 40))(v18, v46, a3);
    *(v35 + 24) = v41;
    *(v36 + 32) = v40;

    return (*(v15 + 8))(v18, a3);
  }
}

uint64_t sub_1AAD01C58(char **a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v46 = a8;
  v47 = a5;
  v45 = a4;
  v49 = a3;
  v40 = a1;
  v48 = a11;
  v51 = *(a7 - 8);
  v44 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = (&v39 - v17);
  v19 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v39 - v22;
  (*(v24 + 16))(v18, a2, TupleTypeMetadata2, v21);
  v41 = *v18;
  v25 = *(TupleTypeMetadata2 + 48);
  v50 = v19;
  v26 = *(v19 + 32);
  v52 = AssociatedTypeWitness;
  v26(v23, v18 + v25, AssociatedTypeWitness);
  v27 = v45;
  v42 = *(v45 + 16);
  v64 = a6;
  v65 = a7;
  v28 = v46;
  v66 = v46;
  v67 = a9;
  v29 = v44;
  v68 = v44;
  sub_1AAF8EFE4();
  v30 = v43;
  v31 = v47;
  sub_1AAF8EFA4();
  v54 = a6;
  v55 = a7;
  v56 = v28;
  v57 = a9;
  v58 = v29;
  v59 = v48;
  v60 = v31;
  v61 = v23;
  v62 = v49 & 1;
  v63 = v27;
  v32 = sub_1AACD857C(v30, sub_1AAD027CC, v53, a7, &type metadata for _ChartContentRenderOutputs, v29);
  (*(v51 + 8))(v30, a7, v32);
  v33 = v64;
  if (v64 != 0xE000000000000000)
  {
    v34 = v40;
    v35 = *v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1AAD04BDC(0, *(v35 + 2) + 1, 1, v35);
    }

    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_1AAD04BDC((v36 > 1), v37 + 1, 1, v35);
    }

    *(v35 + 2) = v37 + 1;
    *&v35[8 * v37 + 32] = v33;
    *v34 = v35;
  }

  return (*(v50 + 8))(v23, v52);
}

void sub_1AAD0209C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v58 = a1;
  v61 = a2;
  sub_1AAD0A9A4(0);
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0A9DC(0, &qword_1ED9B2D00, sub_1AAD0A9A4, MEMORY[0x1E697F948]);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v51 - v6;
  v7 = *(v2 + 496);
  v65 = *(v2 + 488);
  v66 = v7;
  if (v65)
  {
    sub_1AAD0F924(v2, v73);
    v8 = swift_allocObject();
    v9 = v66;
    v8[2] = v65;
    v8[3] = v9;
    memcpy(v8 + 4, v73, 0x1F8uLL);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1AAEBDDD8;
    *(v10 + 24) = v8;
    v63 = v10;
    v64 = sub_1AAEBDDE4;
    v11 = *(v2 + 424);
    v12 = *(v2 + 432);
    if (v11)
    {
LABEL_3:
      sub_1AAD0F924(v2, v73);
      v13 = swift_allocObject();
      v13[2] = v11;
      v13[3] = v12;
      memcpy(v13 + 4, v73, 0x1F8uLL);
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1AAEBDD8C;
      *(v14 + 24) = v13;
      v71 = sub_1AAEC0148;
      v72 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v63 = 0;
    v64 = 0;
    v11 = *(v2 + 424);
    v12 = *(v2 + 432);
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v71 = 0;
  v72 = 0;
LABEL_6:
  v16 = *(v2 + 456);
  v15 = *(v2 + 464);
  v57 = v11;
  v55 = v16;
  if (v16)
  {
    sub_1AAD0F924(v2, v73);
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v15;
    memcpy(v17 + 4, v73, 0x1F8uLL);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1AAEBDD7C;
    *(v18 + 24) = v17;
    v69 = v18;
    v70 = sub_1AAEBDD88;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  v19 = *(v2 + 440);
  v20 = *(v2 + 448);
  v56 = v12;
  if (v19)
  {
    sub_1AAD0F924(v2, v73);
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    memcpy(v21 + 4, v73, 0x1F8uLL);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1AAEBDD20;
    *(v22 + 24) = v21;
    v67 = sub_1AAEC0138;
    v68 = v22;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v53 = v15;
  v54 = v20;
  v24 = *(v2 + 472);
  v23 = *(v2 + 480);
  if (v24)
  {
    sub_1AAD0F924(v2, v73);
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = v23;
    v26 = v23;
    memcpy(v25 + 4, v73, 0x1F8uLL);
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1AAEBDBB4;
    *(v27 + 24) = v25;
    v28 = sub_1AAEBDBC0;
  }

  else
  {
    v26 = *(v2 + 480);
    v28 = 0;
    v27 = 0;
  }

  v29 = v55;
  if (*(v2 + 420) == 1)
  {
    sub_1AAD0AA94(0, &qword_1ED9B2BE8, sub_1AACCFAB4, &type metadata for ChartInternalOverlayListenerModifier, MEMORY[0x1E697FDE8]);
    (*(*(v30 - 8) + 16))(v60, v58, v30);
    swift_storeEnumTagMultiPayload();
    sub_1AACBD93C(v65, v66);
    sub_1AACBD93C(v57, v56);
    sub_1AACBD93C(v29, v53);
    sub_1AACBD93C(v19, v54);
    sub_1AACBD93C(v24, v26);
    sub_1AAD0ABAC();
    sub_1AAD0AAFC();
    sub_1AAF8E374();
    sub_1AACB4A98(v28, v27);
    sub_1AACB4A98(v67, v68);
    sub_1AACB4A98(v70, v69);
    sub_1AACB4A98(v71, v72);
    sub_1AACB4A98(v64, v63);
  }

  else
  {
    sub_1AACBD93C(v65, v66);
    sub_1AACBD93C(v57, v56);
    sub_1AACBD93C(v29, v53);
    sub_1AACBD93C(v19, v54);
    sub_1AACBD93C(v24, v26);
    v31 = sub_1AAF8F124();
    v65 = v32;
    v66 = v31;
    v33 = swift_allocObject();
    v34 = v69;
    v35 = v70;
    v36 = v33;
    v37 = v27;
    v38 = v63;
    *(v33 + 2) = v64;
    *(v33 + 3) = v38;
    v40 = v71;
    v39 = v72;
    *(v33 + 4) = v71;
    *(v33 + 5) = v39;
    v71 = v40;
    v72 = v39;
    *(v33 + 6) = v35;
    *(v33 + 7) = v34;
    v69 = v34;
    v70 = v35;
    v42 = v67;
    v41 = v68;
    *(v33 + 8) = v67;
    *(v33 + 9) = v41;
    v67 = v42;
    v68 = v41;
    v51 = v28;
    *(v33 + 10) = v28;
    *(v33 + 11) = v37;
    v43 = v37;
    v44 = swift_allocObject();
    *(v44 + 2) = v40;
    *(v44 + 3) = v39;
    *(v44 + 4) = v35;
    *(v44 + 5) = v34;
    *(v44 + 6) = v42;
    *(v44 + 7) = v41;
    *(v44 + 8) = v51;
    *(v44 + 9) = v43;
    v46 = v63;
    v45 = v64;
    *(v44 + 10) = v64;
    *(v44 + 11) = v46;
    sub_1AAD0AA94(0, &qword_1ED9B2BE8, sub_1AACCFAB4, &type metadata for ChartInternalOverlayListenerModifier, MEMORY[0x1E697FDE8]);
    v48 = v52;
    (*(*(v47 - 8) + 16))(v52, v58, v47);
    v49 = (v48 + *(v62 + 36));
    *v49 = sub_1AAEBDA7C;
    v49[1] = v36;
    v49[2] = sub_1AAEBDA94;
    v49[3] = v44;
    v50 = v65;
    v49[4] = v66;
    v49[5] = v50;
    sub_1AAEBDAF4(v48, v60);
    swift_storeEnumTagMultiPayload();
    sub_1AACBD93C(v45, v46);
    sub_1AACBD93C(v71, v72);
    sub_1AACBD93C(v70, v69);
    sub_1AACBD93C(v67, v68);
    sub_1AACBD93C(v51, v43);
    sub_1AAD0ABAC();
    sub_1AAD0AAFC();
    sub_1AAF8E374();
    sub_1AAEBDB58(v48);
  }
}

uint64_t sub_1AAD02808@<X0>(uint64_t a1@<X1>, int a2@<W2>, void (*a3)(void)@<X3>, uint64_t a4@<X4>, void (*a5)(void)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v26 = a5;
  v33 = a3;
  v34 = a8;
  v32 = a2;
  v31 = a10;
  v28 = *(*(a7 + 8) + 8);
  v29 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v26 - v14;
  v16 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a4;
  v36 = v26;
  v37 = a6;
  v38 = a7;
  v39 = a9;
  sub_1AAF8EFE4();
  v26 = sub_1AAF8EFB4();
  sub_1AAF8EF94();
  v23 = sub_1AAF8FC84();
  v24 = AssociatedTypeWitness;
  (*(v13 + 16))(v15);
  v23(&v35, 0);
  (*(v16 + 8))(v19, a4);
  v26(v15);

  (*(v13 + 8))(v15, v24);
  LOBYTE(v35) = v32 & 1;
  v36 = v33;
  (*(v31 + 40))(v22, &v35, a6);
  return (*(v30 + 8))(v22, a6);
}

uint64_t sub_1AAD02B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v26 = a4;
  v29 = a2;
  v30 = a5;
  v28 = *(a3 - 8);
  v7 = v28;
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v27 = *v13;
  v14 = *(v13 + 1);
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v20 = type metadata accessor for CombinedModifiedChartContent_Environment(0, &v32);
  v25 = *(a1 + *(v20 + 60));
  swift_beginAccess();
  v21 = swift_readAtKeyPath();
  v22 = *(v7 + 16);
  v22(v12);
  v21(&v32, 0);
  swift_endAccess();
  (v22)(v9, a1 + *(v20 + 64), a3);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();
  LOBYTE(v32) = v27;
  v33 = v14;
  (*(v26 + 40))(v31, a1, &v32);
  v23 = v31[0];
  (v22)(v9, v12, a3);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();
  result = (*(v28 + 8))(v12, a3);
  *v30 = v23;
  return result;
}

uint64_t static BarMark._renderChartContent(_:_:)@<X0>(__int128 *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AACAE13C(0, &qword_1ED9B5558, MEMORY[0x1E697F488]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v110 = &v103 - v7;
  v8 = sub_1AAF8E244();
  v115 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v111 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACAE13C(0, &qword_1ED9B67A0, type metadata accessor for SgClipRect);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v112 = (&v103 - v11);
  v114 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v114);
  v113 = (&v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v116);
  v14 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v117);
  v16 = (&v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v103 - v18);
  v20 = a1[7];
  v127[6] = a1[6];
  v127[7] = v20;
  v21 = a1[9];
  v127[8] = a1[8];
  v22 = a1[3];
  v127[2] = a1[2];
  v127[3] = v22;
  v23 = a1[5];
  v127[4] = a1[4];
  v127[5] = v23;
  v24 = a1[1];
  v127[0] = *a1;
  v127[1] = v24;
  v25 = a1[15];
  v126[5] = a1[14];
  v126[6] = v25;
  v26 = a1[17];
  v126[7] = a1[16];
  v126[8] = v26;
  v27 = a1[11];
  v126[1] = a1[10];
  v126[2] = v27;
  v28 = a1[13];
  v126[3] = a1[12];
  v126[4] = v28;
  v126[0] = v21;
  v29 = *a2;
  v30 = *(a2 + 1);
  if (v29)
  {
    result = sub_1AAE53674(v127, v126, v30);
  }

  else
  {
    v108 = a3;
    v32 = v30 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    v33 = *(v32 + 160);
    if (*(v32 + 168))
    {
      v33 = 2.0;
    }

    v109 = v33;
    sub_1AAD036DC(v127, 0, &v118);
    sub_1AAD036DC(v126, 1, &v122);
    v34 = *(*(v30 + 16) + 24);
    if (v119 >= v118)
    {
      v35 = v118;
    }

    else
    {
      v35 = v119;
    }

    if (v123 >= v122)
    {
      v36 = v122;
    }

    else
    {
      v36 = v123;
    }

    v37 = vabdd_f64(v119, v118);
    v38 = vabdd_f64(v123, v122);
    v107 = v32;
    sub_1AAD0F1D4(v32, v14, type metadata accessor for ChartContentRenderContext.Environment);
    v39 = v117;
    sub_1AAD0F2A4(v14, v19 + *(v117 + 44));
    sub_1AAF8E444();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = *MEMORY[0x1E697F468];
    v49 = *(v115 + 104);
    v50 = v19 + *(v39 + 40);
    v106 = v8;
    v104 = v49;
    v49(v50, v48, v8);
    *v19 = v34;
    v105 = v35;
    v19[1] = v35;
    v19[2] = v36;
    v51 = v38;
    v19[3] = v37;
    v19[4] = v38;
    *(v19 + 5) = v41;
    *(v19 + 6) = v43;
    *(v19 + 7) = v45;
    *(v19 + 8) = v47;
    *(v19 + *(v39 + 48)) = 0.0;
    if (v109 <= 2.22044605e-16)
    {
      v81 = v36;
      v82 = *(*(v30 + 16) + 24);
      v83 = v107;
      sub_1AAD0F1D4(v107, v14, type metadata accessor for ChartContentRenderContext.Environment);
      v84 = v117;
      sub_1AAD0F2A4(v14, v16 + *(v117 + 44));
      v85 = *(v83 + *(v116 + 64));
      sub_1AAF8E444();
      v87 = v86;
      v89 = v88;
      v91 = v90;
      v93 = v92;
      sub_1AAD0F610(v19, type metadata accessor for SgRectangle);
      v104(v16 + *(v84 + 40), v48, v106);
      *v16 = v82;
      v16[1] = v105;
      v16[2] = v81;
      v16[3] = v37;
      v16[4] = v51;
      *(v16 + 5) = v87;
      *(v16 + 6) = v89;
      *(v16 + 7) = v91;
      *(v16 + 8) = v93;
      *(v16 + *(v84 + 48)) = v85;
      v94 = swift_allocBox();
      sub_1AAD04A58(v16, v95, type metadata accessor for SgRectangle);
      result = v94 | 0x4000000000000000;
    }

    else
    {
      v52 = v120;
      v53 = v121;
      v54 = v124;
      v55 = v125;
      sub_1AAD04760(v127);
      sub_1AAD04760(v126);
      if (v53 >= v52)
      {
        v56 = v53;
      }

      else
      {
        v56 = v52;
      }

      if (v53 < v52)
      {
        v52 = v53;
      }

      if (v55 >= v54)
      {
        v57 = v55;
      }

      else
      {
        v57 = v54;
      }

      if (v55 >= v54)
      {
        v58 = v54;
      }

      else
      {
        v58 = v55;
      }

      v59 = v56 - v52;
      v60 = v57 - v58;
      v128.origin.x = v52;
      v128.origin.y = v58;
      v128.size.width = v59;
      v128.size.height = v60;
      CGRectGetWidth(v128);
      v129.origin.x = v52;
      v129.origin.y = v58;
      v129.size.width = v59;
      v129.size.height = v60;
      CGRectGetHeight(v129);
      sub_1AAF8E444();
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v69 = *(*(*(v30 + 16) + 16) + 32);

      v109 = COERCE_DOUBLE(sub_1AACD5520(0, v69, v70));

      sub_1AAD04A08(0, &qword_1ED9B28D0, &type metadata for SgNode, MEMORY[0x1E69E6F90]);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1AAF92AB0;
      v72 = swift_allocBox();
      sub_1AAD0F1D4(v19, v73, type metadata accessor for SgRectangle);
      *(v71 + 32) = v72 | 0x4000000000000000;
      v74 = v107;
      v75 = v110;
      sub_1AAD0F558(v107 + *(v116 + 44), v110);
      v76 = v115;
      v77 = *(v115 + 48);
      v78 = v106;
      if (v77(v75, 1, v106) == 1)
      {
        v79 = v111;
        if (qword_1ED9B1D88 != -1)
        {
          swift_once();
        }

        v80 = sub_1AAD0F5D8(v78, qword_1ED9C3498);
        (*(v76 + 16))(v79, v80, v78);
        if (v77(v75, 1, v78) != 1)
        {
          sub_1AAE551B4(v75);
        }
      }

      else
      {
        v79 = v111;
        (*(v76 + 32))(v111, v75, v78);
      }

      v96 = v112;
      *v112 = v52;
      *(v96 + 8) = v58;
      *(v96 + 16) = v59;
      *(v96 + 24) = v60;
      *(v96 + 32) = v62;
      *(v96 + 40) = v64;
      *(v96 + 48) = v66;
      *(v96 + 56) = v68;
      v97 = type metadata accessor for SgClipRect(0);
      (*(v76 + 32))(v96 + *(v97 + 24), v79, v78);
      (*(*(v97 - 8) + 56))(v96, 0, 1, v97);
      v98 = *(v74 + *(v116 + 64));
      sub_1AAD0F610(v19, type metadata accessor for SgRectangle);
      v100 = v113;
      v99 = v114;
      *v113 = v109;
      *(v100 + 8) = v71;
      sub_1AAD0F670(v96, v100 + v99[6]);
      *(v100 + v99[7]) = 0x3FF0000000000000;
      *(v100 + v99[8]) = v98;
      *(v100 + v99[9]) = MEMORY[0x1E69E7CC0];
      *(v100 + v99[10]) = 0;
      v101 = swift_allocBox();
      sub_1AAD04A58(v100, v102, type metadata accessor for SgGroup);
      result = v101;
    }

    a3 = v108;
  }

  *a3 = result;
  return result;
}

void sub_1AAD036DC(_OWORD *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v4 = v3;
  v8 = v4 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v9 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v10 = (v8 + *(v9 + 84));
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = (v8 + *(v9 + 88));
  v16 = *v14;
  v15 = v14[1];
  v17 = v14[2];
  v18 = a1[7];
  v99[6] = a1[6];
  v99[7] = v18;
  v99[8] = a1[8];
  v19 = a1[3];
  v99[2] = a1[2];
  v99[3] = v19;
  v20 = a1[5];
  v99[4] = a1[4];
  v99[5] = v20;
  v21 = a1[1];
  v99[0] = *a1;
  v99[1] = v21;
  v22 = sub_1AACDB99C(v99);
  v23 = sub_1AACD2C84(v99);
  if (v22 <= 2)
  {
    if (!v22)
    {
      v27 = *(v23 + 24);
      v28 = *(v23 + 32);
      v29 = *(v23 + 40);
      v30 = *(v23 + 16);
      __dst[0] = *v23;
      LOBYTE(__dst[1]) = v30;
      *&v103[0] = v27;
      v31 = *(v23 + 48);

      v32 = MEMORY[0x1E69810C8];
      v33 = MEMORY[0x1E69E62F8];
      sub_1AACDB9A8(v103, &v91, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AADFA6FC(__dst, &v91);
      sub_1AACD7C50(v28, v29, v31);
      v34 = COERCE_DOUBLE(sub_1AAE0B2CC(a2, v4, v28, v29, v31));
      v36 = v35;
      sub_1AAD6E0DC(__dst);
      sub_1AAE0BE80(v103, &qword_1ED9B1E40, v32, v33);
      sub_1AAD0E818(v28, v29, v31);

      if (v36)
      {
        v37 = NAN;
      }

      else
      {
        v37 = v34;
      }

      goto LABEL_21;
    }

    if (v22 == 1)
    {
      if (a2 == 1)
      {
        if (*(v23 + 8))
        {
          v37 = v16 + (*(v4 + 40) + *(v4 + 48)) * 0.5;
        }

        else
        {
          v37 = v16 + *v23;
        }

        goto LABEL_21;
      }

      if (!a2)
      {
        if (*(v23 + 8))
        {
          v24 = (*(v4 + 24) + *(v4 + 32)) * 0.5;
        }

        else
        {
          v24 = *v23;
        }

        v37 = v12 + v24;
        goto LABEL_21;
      }

LABEL_20:
      v37 = NAN;
LABEL_21:
      v45 = v37;
      v46 = v37;
      v47 = v37;
      v48 = v37;
      v49 = v37;
      goto LABEL_47;
    }

    v50 = *v23;
    v51 = *(v23 + 8);
    v52 = *(v23 + 32);
    v53 = *(v23 + 40);
    v86 = *(v23 + 72);
    v54 = *(v23 + 16);
    v55 = *(v23 + 48);
    v83 = *(v23 + 80);

    sub_1AACD7304(v50, v51, v54 & 1);
    sub_1AACD7C50(v52, v53, v55);
    sub_1AAD03E9C(a2, v4, v52, v53, v55, v86, v83, __dst);
    v45 = *(__dst + 1);
    v37 = *__dst;
    v47 = *(&__dst[1] + 1);
    v46 = *&__dst[1];
    v49 = *(&__dst[2] + 1);
    v48 = *&__dst[2];
    sub_1AAD04750(v50, v51, v54 & 1);

    sub_1AAD0E818(v52, v53, v55);
LABEL_19:

    if ((__dst[3] & 1) == 0)
    {
LABEL_47:
      *a3 = v37;
      a3[1] = v45;
      a3[2] = v46;
      a3[3] = v47;
      a3[4] = v48;
      a3[5] = v49;
      return;
    }

    goto LABEL_20;
  }

  v85 = a2;
  if (v22 == 3)
  {
    v38 = *(v23 + 8);
    v82 = *v23;
    v74 = *(v23 + 40);
    v75 = *(v23 + 32);
    v76 = *(v23 + 80);
    v77 = *(v23 + 72);
    v39 = *(v23 + 104);
    v40 = *(v23 + 112);
    v41 = *(v23 + 16);
    v42 = *(v23 + 48);
    v43 = *(v23 + 88);
    v78 = v4;
    v44 = *(v23 + 120);

    sub_1AACD7304(v82, v38, v41 & 1);
    sub_1AACD7C50(v75, v74, v42);
    sub_1AACD7304(v77, v76, v43 & 1);
    sub_1AACD7C50(v39, v40, v44);
    sub_1AAE0A9CC(v85, v78, v75, v74, v42, v39, v40, v44, __dst);
    v45 = *(__dst + 1);
    v37 = *__dst;
    v47 = *(&__dst[1] + 1);
    v46 = *&__dst[1];
    v49 = *(&__dst[2] + 1);
    v48 = *&__dst[2];
    sub_1AAD04750(v77, v76, v43 & 1);

    sub_1AAD0E818(v39, v40, v44);
    sub_1AAD04750(v82, v38, v41 & 1);

    sub_1AAD0E818(v75, v74, v42);
    goto LABEL_19;
  }

  if (v22 == 4)
  {
    if (a2)
    {
      if (*(v23 + 8))
      {
        v25 = *(v4 + 40);
        if ((*(v23 + 24) & 1) == 0)
        {
LABEL_13:
          v26 = *(v23 + 16);
LABEL_42:
          v37 = v15 + v25;
          v45 = v17 + v26;
LABEL_46:
          v46 = v37;
          v47 = v45;
          v48 = v37;
          v49 = v45;
          goto LABEL_47;
        }
      }

      else
      {
        v25 = *v23;
        if ((*(v23 + 24) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v26 = *(v4 + 48);
      goto LABEL_42;
    }

    if (*(v23 + 8))
    {
      v64 = *(v4 + 24);
      if ((*(v23 + 24) & 1) == 0)
      {
LABEL_26:
        v65 = *(v23 + 16);
LABEL_45:
        v37 = v11 + v64;
        v45 = v13 + v65;
        goto LABEL_46;
      }
    }

    else
    {
      v64 = *v23;
      if ((*(v23 + 24) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v65 = *(v4 + 32);
    goto LABEL_45;
  }

  v79 = *(v23 + 32);
  v84 = *(v23 + 48);
  v56 = *(v23 + 73);
  v80 = *(v23 + 74);
  v81 = *(v23 + 72);
  v57 = *(v23 + 80);
  v58 = *(v23 + 88);
  v59 = *(v23 + 96);
  swift_beginAccess();
  memcpy(__dst, (v4 + 80), 0x102uLL);
  sub_1AACBB21C(__dst, &v91);
  sub_1AACD7C50(v57, v58, v59);
  sub_1AACDBAD0((v56 & 1) == 0, &v91);
  sub_1AACBB254(__dst);
  v60 = v93;
  if (v93)
  {
    v61 = v96;
    v63 = v94;
    v62 = v95;
    v101 = v91;
    v102 = v92;
    sub_1AACD7C50(v94, v95, v96);
    sub_1AAD6E0DC(&v101);
    v100 = v60;
    sub_1AAE0BE80(&v100, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAD0E818(v63, v62, v61);
  }

  else
  {
    v63 = 0;
    v62 = 0;
    v61 = -4;
  }

  LOBYTE(v87) = v81;
  BYTE1(v87) = v56 & 1;
  BYTE2(v87) = v80 & 1;
  *(&v87 + 1) = v57;
  *&v88 = v58;
  BYTE8(v88) = v59;
  *&v89 = v63;
  *(&v89 + 1) = v62;
  v90 = v61;
  v104 = v61;
  v103[1] = v88;
  v103[2] = v89;
  v103[0] = v87;
  if (v81 == 3)
  {
    if ((v84 & 0x80) == 0)
    {
      if (!v84)
      {
        v66 = v79;
        v67 = 0.0;
        v68 = v79;
        v69 = 0.0;
        goto LABEL_35;
      }

      goto LABEL_53;
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  swift_beginAccess();
  v70 = *(v4 + 64);

  sub_1AAD0E824(v103, v70);
  v69 = v71;
  v68 = v72;

  if ((v84 & 0x80) != 0)
  {
    goto LABEL_52;
  }

  if (!v84)
  {
    swift_beginAccess();
    v67 = sub_1AAD0E8DC(v103, v79);
    v66 = v73;
    swift_endAccess();
LABEL_35:
    sub_1AACDC920(&v87);

    sub_1AAD0EACC(v85, v4, v85, v4, v97, v67, v66, v69, v68);
    v37 = *v97;
    v45 = *&v97[1];
    v46 = *&v97[2];
    v47 = *&v97[3];
    v48 = *&v97[4];
    v49 = *&v97[5];

    if (v98)
    {
      v37 = NAN;
      v45 = NAN;
      v46 = NAN;
      v47 = NAN;
      v48 = NAN;
      v49 = NAN;
    }

    goto LABEL_47;
  }

LABEL_54:
  __break(1u);
}

uint64_t sub_1AAD03E9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double a6@<X5>, unsigned __int8 a7@<W6>, uint64_t a8@<X8>)
{
  v15 = 0uLL;
  v16 = 0.0;
  if (result == 1)
  {
    swift_beginAccess();
    memcpy(__dst, (a2 + 80), sizeof(__dst));
    v97 = a3;
    v98 = a6;
    if (*&__dst[112])
    {
      v92 = a5;
      v94 = a7;
      v31 = *(a2 + 184);
      v32 = *(a2 + 216);
      v120 = *(a2 + 200);
      v121 = v32;
      v122 = *(a2 + 232);
      v123 = *(a2 + 248);
      v118 = *(a2 + 168);
      v119 = v31;
      v90 = a4;
LABEL_8:
      v33 = v118;
      v34 = v119;
      v36 = *(&v120 + 1);
      v35 = v120;
      v37 = *(&v122 + 1);
      v38 = v123;
      v39 = v121;
      sub_1AACDB9A8(&__dst[88], &v99, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v118, &v99);
      sub_1AAE0A738(v35, v36, v39, v37, v38, 4, &v125);
      v40 = v125;
      v41 = v126;
      v43 = v127;
      v42 = v128;
      v44 = v129;
      sub_1AAE0C014(&v118);
      sub_1AAD04750(v33, *(&v33 + 1), v34);

      sub_1AAD0E818(v35, v36, v39);
      a5 = v92;
      a7 = v94;
      a4 = v90;
      goto LABEL_30;
    }

    if (__dst[257] != 2)
    {
      sub_1AACBB21C(__dst, &v99);
      v48 = sub_1AAF8E7A4();
      if (v48 != sub_1AAF8E7A4())
      {
        v40 = 0.0;
        sub_1AACBB254(__dst);
        goto LABEL_29;
      }

      sub_1AACDB9A8(&__dst[176], &v99, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AACBB254(__dst);
      if (*&__dst[200])
      {
        v90 = a4;
        v92 = a5;
        v94 = a7;
        v118 = *&__dst[176];
        v119 = *&__dst[192];
        v120 = *&__dst[208];
        v121 = *&__dst[224];
        v122 = *&__dst[240];
        v123 = __dst[256];
        goto LABEL_8;
      }
    }

    v40 = 0.0;
LABEL_29:
    v44 = 2;
    v41 = 0.0;
    v43 = 0.0;
    v42 = 0.0;
LABEL_30:
    v67 = a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    result = type metadata accessor for ChartContentRenderContext.Environment(0);
    v68 = v67 + *(result + 88);
    v69 = *(v68 + 8);
    v52 = *(v68 + 16);
    v70 = *(a2 + 368);
    v71 = (a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
    *&v117[9] = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
    v72 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
    v116 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
    *v117 = v72;
    v73 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
    v112 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
    v113 = v73;
    v74 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
    v114 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
    v115 = v74;
    if (v117[24] != 255)
    {
      v95 = v69;
      v75 = v71[5];
      v110 = v71[4];
      v111[0] = v75;
      *(v111 + 9) = *(v71 + 89);
      v76 = v71[1];
      v106 = *v71;
      v107 = v76;
      v77 = v71[3];
      v108 = v71[2];
      v109 = v77;
      v99 = v106;
      v100 = v76;
      v101 = v108;
      v102 = v77;
      v103 = v110;
      v104[0] = v75;
      *(v104 + 9) = *(v111 + 9);
      sub_1AACDB9A8(&v106, v105, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
      v78 = COERCE_DOUBLE(sub_1AAD0E70C(v97, a4, a5, v70));
      if ((v80 & 1) == 0)
      {
        v64 = v78;
        v65 = v79;
        if (v44)
        {
          if (v44 == 1)
          {
            v64 = v41 + v40 * (v79 - v78) + v78;
            v65 = v42 + v43 * (v79 - v78) + v78;
          }
        }

        else
        {
          v65 = v41 * (v79 - v78) + v78;
          v64 = v40 * (v79 - v78) + v78;
        }

        goto LABEL_33;
      }

LABEL_32:
      v65 = NAN;
      v64 = NAN;
LABEL_33:
      v66 = v98;
      goto LABEL_34;
    }

LABEL_37:
    v45 = 1;
    v46 = 0.0;
    v15 = 0uLL;
    goto LABEL_56;
  }

  if (result)
  {
    v45 = 1;
    v46 = 0.0;
    goto LABEL_56;
  }

  swift_beginAccess();
  memcpy(__dst, (a2 + 80), sizeof(__dst));
  v98 = a6;
  if (*&__dst[24])
  {
    v96 = a3;
    v91 = a5;
    v93 = a7;
    v17 = *(a2 + 128);
    v120 = *(a2 + 112);
    v121 = v17;
    v122 = *(a2 + 144);
    v123 = *(a2 + 160);
    v18 = *(a2 + 96);
    v118 = *(a2 + 80);
    v119 = v18;
    v89 = a4;
LABEL_5:
    v19 = v118;
    v20 = v119;
    v22 = *(&v120 + 1);
    v21 = v120;
    v23 = *(&v122 + 1);
    v24 = v123;
    v25 = v121;
    sub_1AACDB9A8(__dst, &v99, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
    sub_1AAE0BFDC(&v118, &v99);
    sub_1AAE0A738(v21, v22, v25, v23, v24, 3, &v125);
    v26 = v125;
    v27 = v126;
    v29 = v127;
    v28 = v128;
    v30 = v129;
    sub_1AAE0C014(&v118);
    sub_1AAD04750(v19, *(&v19 + 1), v20);

    sub_1AAD0E818(v21, v22, v25);
    a5 = v91;
    a7 = v93;
    a4 = v89;
    a3 = v96;
    goto LABEL_22;
  }

  if (__dst[257] != 2)
  {
    sub_1AACBB21C(__dst, &v99);
    v47 = sub_1AAF8E7A4();
    if (v47 != sub_1AAF8E7A4())
    {
      v26 = 0.0;
      sub_1AACBB254(__dst);
      goto LABEL_21;
    }

    sub_1AACDB9A8(&__dst[176], &v99, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
    sub_1AACBB254(__dst);
    if (*&__dst[200])
    {
      v96 = a3;
      v89 = a4;
      v91 = a5;
      v93 = a7;
      v118 = *&__dst[176];
      v119 = *&__dst[192];
      v120 = *&__dst[208];
      v121 = *&__dst[224];
      v122 = *&__dst[240];
      v123 = __dst[256];
      goto LABEL_5;
    }
  }

  v26 = 0.0;
LABEL_21:
  v30 = 2;
  v27 = 0.0;
  v29 = 0.0;
  v28 = 0.0;
LABEL_22:
  v49 = a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  result = type metadata accessor for ChartContentRenderContext.Environment(0);
  v50 = v49 + *(result + 84);
  v51 = *(v50 + 8);
  v52 = *(v50 + 16);
  v53 = *(a2 + 352);
  v54 = (a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
  *&v117[9] = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
  v55 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
  v116 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
  *v117 = v55;
  v56 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
  v112 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
  v113 = v56;
  v57 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
  v114 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
  v115 = v57;
  if (v117[24] == 255)
  {
    goto LABEL_37;
  }

  v95 = v51;
  v58 = v54[5];
  v110 = v54[4];
  v111[0] = v58;
  *(v111 + 9) = *(v54 + 89);
  v59 = v54[1];
  v106 = *v54;
  v107 = v59;
  v60 = v54[3];
  v108 = v54[2];
  v109 = v60;
  v99 = v106;
  v100 = v59;
  v101 = v108;
  v102 = v60;
  v103 = v110;
  v104[0] = v58;
  *(v104 + 9) = *(v111 + 9);
  sub_1AACDB9A8(&v106, v105, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
  v61 = COERCE_DOUBLE(sub_1AAD0E70C(a3, a4, a5, v53));
  if (v63)
  {
    goto LABEL_32;
  }

  v64 = v61;
  v65 = v62;
  v66 = a6;
  if (v30)
  {
    if (v30 == 1)
    {
      v64 = v27 + v26 * (v62 - v61) + v61;
      v65 = v28 + v29 * (v62 - v61) + v61;
    }
  }

  else
  {
    v65 = v27 * (v62 - v61) + v61;
    v64 = v26 * (v62 - v61) + v61;
  }

LABEL_34:
  if (a7 <= 1u)
  {
    v81 = v66;
    if (!a7)
    {
      result = sub_1AACE337C(&v112, &qword_1ED9B3E30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0]);
      v82 = (v65 + v64) * 0.5;
      v83 = v81 * 0.5;
      v84 = v82 - v81 * 0.5;
LABEL_48:
      v86 = v83 + v82;
      goto LABEL_49;
    }

    result = sub_1AACE337C(&v112, &qword_1ED9B3E30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0]);
    v87 = (v65 - v64) * v81;
LABEL_47:
    v82 = v87 * 0.5;
    v83 = (v65 + v64) * 0.5;
    v84 = v83 - v82;
    goto LABEL_48;
  }

  if (a7 == 2)
  {
    v85 = v66;
    result = sub_1AACE337C(&v112, &qword_1ED9B3E30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0]);
    v84 = v64 + v85;
    v86 = v65 - v85;
  }

  else
  {
    if (v64 != v65)
    {
      result = sub_1AACE337C(&v112, &qword_1ED9B3E30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0]);
      v87 = (v65 - v64) * 0.7;
      goto LABEL_47;
    }

    v84 = v64 + -4.0;
    v86 = v64 + 4.0;
    sub_1AAF885A0(0);
    result = sub_1AACE337C(&v112, &qword_1ED9B3E30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0]);
  }

LABEL_49:
  v45 = 0;
  if (v64 == v65)
  {
    v88 = v84;
  }

  else
  {
    v88 = v64;
  }

  if (v64 == v65)
  {
    v46 = v86;
  }

  else
  {
    v46 = v65;
  }

  v16 = v95 + v84;
  *&v15 = v52 + v86;
  *(&v15 + 1) = v88;
LABEL_56:
  *a8 = v16;
  *(a8 + 8) = v15;
  *(a8 + 16) = v16;
  *(a8 + 24) = v15;
  *(a8 + 40) = v46;
  *(a8 + 48) = v45;
  return result;
}

void sub_1AAD04750(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1AAD04760(_OWORD *a1)
{
  v2 = v1;
  v3 = a1[7];
  v36[6] = a1[6];
  v36[7] = v3;
  v36[8] = a1[8];
  v4 = a1[3];
  v36[2] = a1[2];
  v36[3] = v4;
  v5 = a1[5];
  v36[4] = a1[4];
  v36[5] = v5;
  v6 = a1[1];
  v36[0] = *a1;
  v36[1] = v6;
  if (sub_1AACDB99C(v36) == 5)
  {
    v7 = sub_1AACD2C84(v36);
    v8 = *(v7 + 72);
    v9 = *(v7 + 73);
    v25 = *(v7 + 74);
    v10 = *(v7 + 80);
    v11 = *(v7 + 88);
    v12 = *(v7 + 96);
    swift_beginAccess();
    memcpy(__dst, (v1 + 80), 0x102uLL);
    sub_1AACBB21C(__dst, &v30);
    sub_1AACD7C50(v10, v11, v12);
    sub_1AACDBAD0((v9 & 1) == 0, &v30);
    sub_1AACBB254(__dst);
    v13 = v32;
    if (v32)
    {
      v14 = v35;
      v16 = v33;
      v15 = v34;
      v38 = v30;
      v39 = v31;
      sub_1AACD7C50(v33, v34, v35);
      sub_1AAD6E0DC(&v38);
      v37 = v13;
      sub_1AAE0BE80(&v37, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AAD0E818(v16, v15, v14);
    }

    else
    {
      v16 = 0;
      v15 = 0;
      v14 = -4;
    }

    LOBYTE(v26) = v8;
    BYTE1(v26) = v9 & 1;
    BYTE2(v26) = v25 & 1;
    *(&v26 + 1) = v10;
    *&v27 = v11;
    BYTE8(v27) = v12;
    *&v28 = v16;
    *(&v28 + 1) = v15;
    v29 = v14;
    v41 = v14;
    v40[1] = v27;
    v40[2] = v28;
    v40[0] = v26;
    if (v8 == 3)
    {
      sub_1AACDC920(&v26);
      v18 = 0;
      v17 = 1;
    }

    else
    {
      swift_beginAccess();
      v19 = *(v2 + 64);

      sub_1AAD0E824(v40, v19);
      v21 = v20;
      v23 = v22 == 0.0;
      sub_1AACDC920(&v26);

      v17 = v21 == 0.0;
      v18 = v23 << 8;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  return v18 | v17;
}

void sub_1AAD049BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1AAF90484();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AAD04A08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAD04A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1AAD04AC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AAF8FE74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AAD04B14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AAD04B78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_1AAD04BF0(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1AAD469FC(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t static Optional<A>._renderChartContent(_:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v22 = a5;
  v9 = sub_1AAF8FE74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v13 = *(a3 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v19 = *(a2 + 1);
  (*(v10 + 16))(v12, a1, v9, v15);
  if ((*(v13 + 48))(v12, 1, a3) == 1)
  {
    result = (*(v10 + 8))(v12, v9);
    *v22 = 0xE000000000000000;
  }

  else
  {
    (*(v13 + 32))(v17, v12, a3);
    v23[0] = v18;
    v24 = v19;
    (*(a4 + 40))(v17, v23, a3, a4);
    return (*(v13 + 8))(v17, a3);
  }

  return result;
}

uint64_t sub_1AAD04F3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAD0F720(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

uint64_t sub_1AAD04F78@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1ED9B5A00 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1AAD0F924(&qword_1ED9C36D0, v2);
}

uint64_t sub_1AAD04FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 504) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 504) = 0;
    }

    if (a2)
    {
      *(result + 424) = a2;
    }
  }

  return result;
}

uint64_t sub_1AAD05118(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAD0513C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAD0515C(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAD05174(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1AAD0518C(unint64_t **a1@<X0>, void *a2@<X8>)
{
  sub_1AAD10220(*a1[2], *a1[3], *a1[4]);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

CGFloat sub_1AAD05240()
{
  v1 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v752 = v731 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v756 = v731 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v762 = v731 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v761 = v731 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v754 = v731 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v760 = v731 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v759 = v731 - v14;
  v15 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v755 = v731 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v753 = v731 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v765 = (v731 - v20);
  v21 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v767 = (v731 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v758 = v731 - v24;
  v25 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v733 = (v731 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v743 = (v731 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v748 = (v731 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v747 = (v731 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v739 = (v731 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v746 = (v731 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v745 = (v731 - v38);
  v772 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v772);
  v771 = v731 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v770 = (v731 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v732 = v731 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v742 = v731 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v750 = v731 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v751 = v731 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v738 = v731 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v749 = v731 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v744 = v731 - v55;
  v56 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v769 = (v731 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = *(v0 + 8);
  v60 = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  v62 = *(MEMORY[0x1E695F050] + 16);
  v61 = *(MEMORY[0x1E695F050] + 24);
  v776 = *(v58 + 16);
  if (v776)
  {
    v63 = 0;
    v766 = 0;
    v775 = v58 + 32;
    v781.size.width = v62;
    v781.size.height = v61;
    v781.origin.x = v60;
    v781.origin.y = y;
    v787 = v60;
    v788 = v62;
    v789 = y;
    v790 = v61;
    v763 = v58;
    while (2)
    {
      if (v63 >= *(v58 + 16))
      {
        goto LABEL_428;
      }

      v72 = *(v775 + 8 * v63++);
      v66 = v60;
      v68 = y;
      v65 = v62;
      v64 = v61;
      switch(v72 >> 60)
      {
        case 1uLL:
          v757 = v72;
          v87 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v88 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          *&v791 = v87;
          v731[2] = v87;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();

          v731[1] = v88;
          sub_1AADC9018(v88);
          v89 = *&v791;
          v778 = *(v791 + 16);
          if (v778)
          {
            v90 = 0;
            v777 = v791 + 32;
            v64 = v61;
            v65 = v62;
            v786 = y;
            v66 = v60;
            v768 = *&v791;
            v773 = v63;
            while (1)
            {
              if (v90 >= *(*&v89 + 16))
              {
                goto LABEL_427;
              }

              v783 = v64;
              v784 = v66;
              v785 = v65;
              v103 = *(v777 + 8 * v90);
              v782 = v90 + 1;
              v97 = v60;
              v98 = y;
              v99 = v62;
              switch(*&v103 >> 60)
              {
                case 1:
                  v129 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                  *&v791 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v741 = *&v791;
                  swift_bridgeObjectRetain_n();
                  swift_bridgeObjectRetain_n();

                  v740 = *&v129;
                  sub_1AADC9018(v129);
                  v130 = *&v791;
                  v780 = *(v791 + 16);
                  if (v780)
                  {
                    v131 = 0;
                    *&v779 = v791 + 32;
                    v61 = v790;
                    v99 = v62;
                    v98 = y;
                    v97 = v60;
                    v774 = *&v791;
                    v764 = v103;
                    while (1)
                    {
                      if (v131 >= *(*&v130 + 16))
                      {
                        goto LABEL_425;
                      }

                      v143 = *(*&v779 + 8 * v131++);
                      x = v60;
                      width = v62;
                      height = v790;
                      switch(v143 >> 60)
                      {
                        case 1uLL:
                          v147 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                          *&v791 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          swift_bridgeObjectRetain_n();
                          swift_bridgeObjectRetain_n();

                          sub_1AADC9018(v147);
                          v148 = v791;
                          v149 = *(v791 + 16);
                          if (v149)
                          {
                            v150 = 0;
                            y = v789;
                            height = v790;
                            x = v787;
                            width = v788;
                            while (v150 < *(v148 + 16))
                            {
                              v151 = v150 + 1;
                              v152 = *(v148 + 32 + 8 * v150);

                              v857.origin.x = sub_1AAD0FB18(v152);
                              v857.origin.y = v153;
                              v857.size.width = v154;
                              v857.size.height = v155;
                              v831.origin.x = x;
                              v831.origin.y = y;
                              v831.size.width = width;
                              v831.size.height = height;
                              v832 = CGRectUnion(v831, v857);
                              x = v832.origin.x;
                              y = v832.origin.y;
                              width = v832.size.width;
                              height = v832.size.height;

                              v150 = v151;
                              if (v149 == v151)
                              {
                                goto LABEL_93;
                              }
                            }

                            __break(1u);
                            goto LABEL_415;
                          }

                          x = v787;
                          width = v788;
                          y = v789;
                          height = v790;
LABEL_93:

                          v63 = v773;
                          v89 = v768;
                          v103 = v764;
                          goto LABEL_109;
                        case 2uLL:
                          v156 = v103;
                          sub_1AAD117A0((v143 & 0xFFFFFFFFFFFFFFFLL) + 16, &v791);
                          v157 = *(&v791 + 1);
                          v158 = *(*(&v791 + 1) + 16);

                          if (v158)
                          {
                            v159 = 0;
                            y = v789;
                            height = v790;
                            x = v787;
                            width = v788;
                            while (v159 < *(v157 + 16))
                            {
                              v160 = v159 + 1;
                              v161 = *(v157 + 32 + 8 * v159);

                              v858.origin.x = sub_1AAD0FB18(v161);
                              v858.origin.y = v162;
                              v858.size.width = v163;
                              v858.size.height = v164;
                              v833.origin.x = x;
                              v833.origin.y = y;
                              v833.size.width = width;
                              v833.size.height = height;
                              v834 = CGRectUnion(v833, v858);
                              x = v834.origin.x;
                              y = v834.origin.y;
                              width = v834.size.width;
                              height = v834.size.height;

                              v159 = v160;
                              if (v158 == v160)
                              {
                                goto LABEL_95;
                              }
                            }

LABEL_415:
                            __break(1u);
LABEL_416:
                            __break(1u);
LABEL_417:
                            __break(1u);
LABEL_418:
                            __break(1u);
                            goto LABEL_419;
                          }

                          x = v787;
                          width = v788;
                          y = v789;
                          height = v790;
LABEL_95:
                          sub_1AAF14C40(&v791);
                          v89 = v768;
                          v103 = v156;
LABEL_109:
                          v130 = v774;
LABEL_50:
                          v829.origin.x = v97;
                          v829.origin.y = v98;
                          v829.size.width = v99;
                          v829.size.height = v61;
                          v856.origin.x = x;
                          v856.origin.y = y;
                          v856.size.width = width;
                          v856.size.height = height;
                          v830 = CGRectUnion(v829, v856);
                          v97 = v830.origin.x;
                          v98 = v830.origin.y;
                          v99 = v830.size.width;
                          v61 = v830.size.height;

                          v60 = v787;
                          v62 = v788;
                          y = v789;
                          if (v131 == v780)
                          {
                            goto LABEL_206;
                          }

                          break;
                        case 3uLL:
                          v144 = v103;
                          v145 = swift_projectBox();
                          v146 = v744;
                          sub_1AACAAD4C(v145, v744, type metadata accessor for SgPoint);
                          sub_1AAD9ADE4(v146 + 48, &v791);
                          if (v794)
                          {
                            width = *(&v791 + 1);
                            height = *&v792;

LABEL_91:
                            v202 = *(v146 + 16);
                            x = *(v146 + 8) - width * 0.5;
                            sub_1AACAADB4(v146, type metadata accessor for SgPoint);
                            y = v202 - height * 0.5;
                            goto LABEL_108;
                          }

                          v802 = v791;
                          v803 = v792;
                          v804 = v793;
                          v201 = *(v146 + 24);
                          if (*(v146 + 40) == 1)
                          {
                            height = *(v146 + 32);
                            width = *(v146 + 24);

                            sub_1AAE45A14(&v802);
                            goto LABEL_91;
                          }

                          v220 = *(v146 + 16);
                          v736 = *(v146 + 8);
                          v737 = v220;
                          v221 = *(&v803 + 1);
                          v222 = v804;
                          v223 = sqrt(v201);

                          sub_1AACBB42C(&v802, v221);
                          v224 = *(v222 + 16);
                          v225 = v222;
                          v89 = v768;
                          v734 = v224(v221, v225);
                          v735 = v226;
                          v228 = v227;
                          v230 = v229;
                          sub_1AACAADB4(v146, type metadata accessor for SgPoint);
                          width = v223 * v228;
                          height = v223 * v230;
                          x = v736 + v223 * (v734 + -0.5);
                          y = v737 + v223 * (v735 + -0.5);
                          sub_1AAE45A14(&v802);
LABEL_108:
                          v103 = v144;
                          goto LABEL_109;
                        case 4uLL:
                          v174 = swift_projectBox();
                          v133 = v770;
                          sub_1AACAAD4C(v174, v770, type metadata accessor for SgRectangle);
                          x = v133[1];
                          y = v133[2];
                          width = v133[3];
                          height = v133[4];

                          v141 = type metadata accessor for SgRectangle;
                          goto LABEL_49;
                        case 5uLL:
                          v175 = swift_projectBox();
                          v176 = v771;
                          sub_1AACAAD4C(v175, v771, type metadata accessor for SgSector);
                          v177 = vaddvq_f64(vmulq_f64(*(v176 + 24), xmmword_1AAFC7450));
                          v178 = __sincos_stret(((*(v176 + 8) + *(v176 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                          x = v177 * v178.__cosval;
                          y = v177 * v178.__sinval;
                          v179 = (v176 + *(v772 + 52));
                          v180 = v179[1];
                          width = *v179 + *v179;

                          v181 = v176;
                          v130 = v774;
                          sub_1AACAADB4(v181, type metadata accessor for SgSector);
                          height = v180 + v180;
                          goto LABEL_50;
                        case 6uLL:
                          v165 = swift_projectBox();
                          v133 = v745;
                          sub_1AACAAD4C(v165, v745, type metadata accessor for SgRule);
                          v166 = v133[1];
                          v167 = v133[2];
                          v168 = v133[3];
                          v169 = v133[4];
                          if (v168 >= v166)
                          {
                            x = v133[1];
                          }

                          else
                          {
                            x = v133[3];
                          }

                          if (v169 >= v167)
                          {
                            y = v133[2];
                          }

                          else
                          {
                            y = v133[4];
                          }

                          width = vabdd_f64(v168, v166);
                          height = vabdd_f64(v169, v167);

                          v141 = type metadata accessor for SgRule;
                          goto LABEL_49;
                        case 7uLL:
                          v190 = swift_projectBox();
                          v191 = v758;
                          sub_1AACAAD4C(v190, v758, type metadata accessor for SgLine);
                          v192 = *(v191 + 8);
                          swift_beginAccess();
                          v737 = v192;
                          v193 = *(*&v192 + 16);
                          v194 = *(v193 + 16);
                          if (v194)
                          {
                            *&v802 = MEMORY[0x1E69E7CC0];

                            sub_1AAF67208(v194);
                            v195 = v193 + 32;
                            v196 = v802;
                            x = v787;
                            y = v789;
                            do
                            {
                              sub_1AAE5EDF4(v195, &v791);
                              v197 = *(&v791 + 1);
                              sub_1AAE5EE50(&v791);
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                sub_1AAD1FAF4(0, *(v196 + 16) + 1, 1);
                                v196 = v802;
                              }

                              v199 = *(v196 + 16);
                              v198 = *(v196 + 24);
                              if (v199 >= v198 >> 1)
                              {
                                sub_1AAD1FAF4((v198 > 1), v199 + 1, 1);
                                v196 = v802;
                              }

                              *(v196 + 16) = v199 + 1;
                              *(v196 + 8 * v199 + 32) = v197;
                              v195 += 96;
                              --v194;
                            }

                            while (v194);
                          }

                          else
                          {

                            v196 = MEMORY[0x1E69E7CC0];
                            x = v787;
                            y = v789;
                          }

                          MEMORY[0x1EEE9AC00](v200);
                          sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                          v736 = v203;
                          *&v731[-4] = v203;
                          v735 = COERCE_DOUBLE(sub_1AAE840B8());
                          *&v731[-3] = v735;
                          v734 = COERCE_DOUBLE(sub_1AAE971D0());
                          *&v731[-2] = v734;
                          swift_getKeyPath();
                          v204 = v766;
                          v205 = COERCE_DOUBLE(sub_1AAF894FC(v196, sub_1AAF68E40));
                          v207 = v206;
                          v209 = v208;
                          v766 = v204;

                          width = v788;
                          height = v790;
                          v103 = v764;
                          v130 = v774;
                          if (v209)
                          {
                            goto LABEL_115;
                          }

                          x = v205;
                          v211 = v207;
                          if (v205 > v207)
                          {
                            goto LABEL_439;
                          }

                          v212 = *(*&v737 + 16);
                          v213 = *(v212 + 16);
                          if (v213)
                          {
                            *&v802 = MEMORY[0x1E69E7CC0];

                            sub_1AAF67208(v213);
                            v214 = v212 + 32;
                            v215 = v802;
                            v216 = v787;
                            do
                            {
                              sub_1AAE5EDF4(v214, &v791);
                              v217 = v792;
                              sub_1AAE5EE50(&v791);
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                sub_1AAD1FAF4(0, *(v215 + 16) + 1, 1);
                                v215 = v802;
                              }

                              v219 = *(v215 + 16);
                              v218 = *(v215 + 24);
                              if (v219 >= v218 >> 1)
                              {
                                sub_1AAD1FAF4((v218 > 1), v219 + 1, 1);
                                v215 = v802;
                              }

                              *(v215 + 16) = v219 + 1;
                              *(v215 + 8 * v219 + 32) = v217;
                              v214 += 96;
                              --v213;
                            }

                            while (v213);
                          }

                          else
                          {
                            v215 = MEMORY[0x1E69E7CC0];
                            v216 = v787;
                          }

                          MEMORY[0x1EEE9AC00](v210);
                          v231 = v735;
                          *&v731[-4] = v736;
                          *&v731[-3] = v231;
                          *&v731[-2] = v734;
                          swift_getKeyPath();
                          v232 = v766;
                          v233 = COERCE_DOUBLE(sub_1AAF894FC(v215, sub_1AAF68E40));
                          v235 = v234;
                          v237 = v236;
                          v766 = v232;

                          if (v237)
                          {
                            x = v216;
                            width = v788;
                            y = v789;
                            height = v790;
                            v103 = v764;
                            v130 = v774;
                          }

                          else
                          {
                            y = v233;
                            v103 = v764;
                            v130 = v774;
                            if (v233 > v235)
                            {
                              goto LABEL_441;
                            }

                            width = v211 - x;
                            height = v235 - v233;
                          }

LABEL_115:
                          sub_1AACAADB4(v758, type metadata accessor for SgLine);
                          v63 = v773;
                          v89 = v768;
                          goto LABEL_50;
                        case 8uLL:
                          v132 = swift_projectBox();
                          v133 = v765;
                          sub_1AACAAD4C(v132, v765, type metadata accessor for SgArea);

                          sub_1AAF58424();
                          x = v134;
                          y = v136;
                          width = v137;
                          height = v139;
                          v141 = type metadata accessor for SgArea;
                          goto LABEL_49;
                        case 9uLL:
                          v182 = swift_projectBox();
                          v183 = v759;
                          sub_1AACAAD4C(v182, v759, type metadata accessor for SgPath);
                          v184 = *(v183 + 24);
                          v806 = *(v183 + 8);
                          v807 = v184;
                          v808 = *(v183 + 40);

                          v185 = sub_1AAF8E8E4();
                          x = v787;
                          width = v788;
                          y = v789;
                          height = v790;
                          if ((v185 & 1) == 0)
                          {
                            sub_1AAF8E874();
                            x = v186;
                            y = v187;
                            width = v188;
                            height = v189;
                          }

                          sub_1AACAADB4(v759, type metadata accessor for SgPath);
                          goto LABEL_109;
                        case 0xAuLL:
                          width = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
                          height = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
                          x = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * width;
                          y = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * height;

                          goto LABEL_50;
                        case 0xBuLL:
                        case 0xCuLL:
                          x = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          y = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                          width = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                          height = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                          goto LABEL_50;
                        case 0xDuLL:

                          x = 0.0;
                          y = 0.0;
                          width = 0.0;
                          height = 0.0;
                          goto LABEL_50;
                        case 0xEuLL:
                          goto LABEL_50;
                        default:
                          v170 = swift_projectBox();
                          v133 = v769;
                          sub_1AACAAD4C(v170, v769, type metadata accessor for SgGroup);

                          x = sub_1AAD05240();
                          y = v171;
                          width = v172;
                          height = v173;
                          v141 = type metadata accessor for SgGroup;
LABEL_49:
                          v142 = v133;
                          v130 = v774;
                          sub_1AACAADB4(v142, v141);
                          goto LABEL_50;
                      }
                    }
                  }

                  v97 = v60;
                  v98 = y;
                  v99 = v62;
                  v61 = v790;
LABEL_206:

                  v58 = v763;
                  goto LABEL_25;
                case 2:
                  sub_1AAD117A0((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 16, &v791);
                  v238 = *(&v791 + 1);
                  v239 = *(*(&v791 + 1) + 16);

                  if (v239)
                  {
                    v240 = 0;
                    v241 = v238 + 32;
                    v61 = v790;
                    v99 = v62;
                    v98 = y;
                    v97 = v60;
                    v780 = v238 + 32;
                    v764 = v103;
                    while (1)
                    {
                      if (v240 >= *(v238 + 16))
                      {
                        goto LABEL_421;
                      }

                      v245 = *(v241 + 8 * v240++);
                      v242 = v60;
                      v243 = y;
                      v244 = v790;
                      switch(v245 >> 60)
                      {
                        case 1uLL:
                          v258 = *((v245 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                          *&v802 = *((v245 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          swift_bridgeObjectRetain_n();
                          swift_bridgeObjectRetain_n();

                          sub_1AADC9018(v258);
                          v259 = *(v802 + 16);
                          if (v259)
                          {
                            v260 = (v802 + 32);
                            v243 = v789;
                            v244 = v790;
                            v242 = v787;
                            v62 = v788;
                            do
                            {
                              v261 = *v260++;
                              v860.origin.x = sub_1AAD0FB18(v261);
                              v860.origin.y = v262;
                              v860.size.width = v263;
                              v860.size.height = v264;
                              v837.origin.x = v242;
                              v837.origin.y = v243;
                              v837.size.width = v62;
                              v837.size.height = v244;
                              v838 = CGRectUnion(v837, v860);
                              v242 = v838.origin.x;
                              v243 = v838.origin.y;
                              v62 = v838.size.width;
                              v244 = v838.size.height;
                              --v259;
                            }

                            while (v259);
                          }

                          else
                          {
                            v242 = v787;
                            v62 = v788;
                            v243 = v789;
                            v244 = v790;
                          }

                          v63 = v773;
                          v89 = v768;
                          v103 = v764;
                          v241 = v780;
                          goto LABEL_119;
                        case 2uLL:
                          v246 = v103;
                          sub_1AAD117A0((v245 & 0xFFFFFFFFFFFFFFFLL) + 16, &v802);
                          v265 = *(&v802 + 1);
                          v266 = *(*(&v802 + 1) + 16);

                          if (v266)
                          {
                            v267 = (v265 + 32);
                            v243 = v789;
                            v244 = v790;
                            v242 = v787;
                            v62 = v788;
                            do
                            {
                              v268 = *v267++;
                              v861.origin.x = sub_1AAD0FB18(v268);
                              v861.origin.y = v269;
                              v861.size.width = v270;
                              v861.size.height = v271;
                              v839.origin.x = v242;
                              v839.origin.y = v243;
                              v839.size.width = v62;
                              v839.size.height = v244;
                              v840 = CGRectUnion(v839, v861);
                              v242 = v840.origin.x;
                              v243 = v840.origin.y;
                              v62 = v840.size.width;
                              v244 = v840.size.height;
                              --v266;
                            }

                            while (v266);
                          }

                          else
                          {
                            v242 = v787;
                            v62 = v788;
                            v243 = v789;
                            v244 = v790;
                          }

                          sub_1AAF14C40(&v802);
                          v89 = v768;
                          goto LABEL_158;
                        case 3uLL:
                          v246 = v103;
                          v247 = swift_projectBox();
                          v248 = v749;
                          sub_1AACAAD4C(v247, v749, type metadata accessor for SgPoint);
                          sub_1AAD9ADE4(v248 + 48, &v802);
                          if (v805)
                          {
                            v62 = *(&v802 + 1);
                            v244 = *&v803;

                            v249 = *(v248 + 16);
                            v242 = *(v248 + 8) - v62 * 0.5;
                            v250 = v248;
LABEL_153:
                            sub_1AACAADB4(v250, type metadata accessor for SgPoint);
                            v243 = v249 - v244 * 0.5;
                            goto LABEL_158;
                          }

                          v795 = v802;
                          v796 = v803;
                          v797 = v804;
                          v303 = *(v248 + 24);
                          if (*(v248 + 40) == 1)
                          {
                            v244 = *(v248 + 32);
                            v62 = *(v248 + 24);

                            sub_1AAE45A14(&v795);
                            v249 = *(v248 + 16);
                            v242 = *(v248 + 8) - v62 * 0.5;
                            v250 = v248;
                            goto LABEL_153;
                          }

                          v304 = *(v248 + 16);
                          v774 = *(v248 + 8);
                          v779 = v304;
                          v305 = *(&v796 + 1);
                          v306 = v797;
                          v307 = sqrt(v303);

                          sub_1AACBB42C(&v795, v305);
                          v308 = *(v306 + 16);
                          v309 = v306;
                          v89 = v768;
                          v310 = v308(v305, v309);
                          v741 = v311;
                          v313 = v312;
                          v315 = v314;
                          sub_1AACAADB4(v749, type metadata accessor for SgPoint);
                          v62 = v307 * v313;
                          v244 = v307 * v315;
                          v242 = v774 + v307 * (v310 + -0.5);
                          v243 = v779 + v307 * (v741 + -0.5);
                          sub_1AAE45A14(&v795);
LABEL_158:
                          v103 = v246;
                          v241 = v780;
LABEL_119:
                          v835.origin.x = v97;
                          v835.origin.y = v98;
                          v835.size.width = v99;
                          v835.size.height = v61;
                          v859.origin.x = v242;
                          v859.origin.y = v243;
                          v859.size.width = v62;
                          v859.size.height = v244;
                          v836 = CGRectUnion(v835, v859);
                          v97 = v836.origin.x;
                          v98 = v836.origin.y;
                          v99 = v836.size.width;
                          v61 = v836.size.height;

                          v60 = v787;
                          v62 = v788;
                          y = v789;
                          if (v240 == v239)
                          {
                            goto LABEL_208;
                          }

                          break;
                        case 4uLL:
                          v281 = swift_projectBox();
                          v252 = v770;
                          sub_1AACAAD4C(v281, v770, type metadata accessor for SgRectangle);
                          v242 = v252[1];
                          v243 = v252[2];
                          v62 = v252[3];
                          v244 = v252[4];

                          v257 = type metadata accessor for SgRectangle;
                          goto LABEL_149;
                        case 5uLL:
                          v282 = swift_projectBox();
                          v283 = v771;
                          sub_1AACAAD4C(v282, v771, type metadata accessor for SgSector);
                          v284 = vaddvq_f64(vmulq_f64(*(v283 + 24), xmmword_1AAFC7450));
                          v285 = __sincos_stret(((*(v283 + 8) + *(v283 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                          v242 = v284 * v285.__cosval;
                          v243 = v284 * v285.__sinval;
                          v286 = (v283 + *(v772 + 52));
                          v287 = v286[1];
                          v62 = *v286 + *v286;

                          sub_1AACAADB4(v283, type metadata accessor for SgSector);
                          v244 = v287 + v287;
                          goto LABEL_119;
                        case 6uLL:
                          v272 = swift_projectBox();
                          v252 = v746;
                          sub_1AACAAD4C(v272, v746, type metadata accessor for SgRule);
                          v273 = v252[1];
                          v274 = v252[2];
                          v275 = v252[3];
                          v276 = v252[4];
                          if (v275 >= v273)
                          {
                            v242 = v252[1];
                          }

                          else
                          {
                            v242 = v252[3];
                          }

                          if (v276 >= v274)
                          {
                            v243 = v252[2];
                          }

                          else
                          {
                            v243 = v252[4];
                          }

                          v62 = vabdd_f64(v275, v273);
                          v244 = vabdd_f64(v276, v274);

                          v257 = type metadata accessor for SgRule;
                          goto LABEL_149;
                        case 7uLL:
                          v298 = swift_projectBox();
                          v252 = v767;
                          sub_1AACAAD4C(v298, v767, type metadata accessor for SgLine);

                          sub_1AAF56CF0();
                          v242 = v299;
                          v243 = v300;
                          v62 = v301;
                          v244 = v302;
                          v257 = type metadata accessor for SgLine;
                          goto LABEL_149;
                        case 8uLL:
                          v251 = swift_projectBox();
                          v252 = v765;
                          sub_1AACAAD4C(v251, v765, type metadata accessor for SgArea);

                          sub_1AAF58424();
                          v242 = v253;
                          v243 = v254;
                          v62 = v255;
                          v244 = v256;
                          v257 = type metadata accessor for SgArea;
                          goto LABEL_149;
                        case 9uLL:
                          v288 = swift_projectBox();
                          v289 = v760;
                          sub_1AACAAD4C(v288, v760, type metadata accessor for SgPath);
                          v290 = *(v289 + 24);
                          v809 = *(v289 + 8);
                          v810 = v290;
                          v811 = *(v289 + 40);

                          v291 = sub_1AAF8E8E4();
                          v242 = v787;
                          v62 = v788;
                          v243 = v789;
                          v244 = v790;
                          if ((v291 & 1) == 0)
                          {
                            sub_1AAF8E874();
                            v242 = v292;
                            v243 = v293;
                            v62 = v294;
                            v244 = v295;
                          }

                          v296 = type metadata accessor for SgPath;
                          v297 = v760;
                          goto LABEL_150;
                        case 0xAuLL:
                          v62 = *((v245 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
                          v244 = *((v245 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
                          v242 = *((v245 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v245 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v62;
                          v243 = *((v245 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v245 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v244;

                          goto LABEL_119;
                        case 0xBuLL:
                        case 0xCuLL:
                          v242 = *((v245 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          v243 = *((v245 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                          v62 = *((v245 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                          v244 = *((v245 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                          goto LABEL_119;
                        case 0xDuLL:

                          v242 = 0.0;
                          v243 = 0.0;
                          v62 = 0.0;
                          v244 = 0.0;
                          goto LABEL_119;
                        case 0xEuLL:
                          goto LABEL_119;
                        default:
                          v277 = swift_projectBox();
                          v252 = v769;
                          sub_1AACAAD4C(v277, v769, type metadata accessor for SgGroup);

                          v242 = sub_1AAD05240();
                          v243 = v278;
                          v62 = v279;
                          v244 = v280;
                          v257 = type metadata accessor for SgGroup;
LABEL_149:
                          v296 = v257;
                          v297 = v252;
LABEL_150:
                          sub_1AACAADB4(v297, v296);
                          goto LABEL_119;
                      }
                    }
                  }

                  v97 = v60;
                  v98 = y;
                  v99 = v62;
                  v61 = v790;
LABEL_208:
                  sub_1AAF14C40(&v791);
                  v58 = v763;
                  goto LABEL_25;
                case 3:
                  v104 = swift_projectBox();
                  v105 = v738;
                  sub_1AACAAD4C(v104, v738, type metadata accessor for SgPoint);
                  sub_1AAD9ADE4(v105 + 48, &v791);
                  if (v794)
                  {
                    v99 = *(&v791 + 1);
                    v61 = *&v792;

                    v106 = *(v105 + 16);
                    v97 = *(v105 + 8) - v99 * 0.5;
                    sub_1AACAADB4(v105, type metadata accessor for SgPoint);
                    v98 = v106 - v61 * 0.5;
                  }

                  else
                  {
                    v802 = v791;
                    v803 = v792;
                    v804 = v793;
                    v340 = *(v105 + 24);
                    v341 = v105;
                    if (*(v105 + 40) == 1)
                    {
                      v61 = *(v105 + 32);
                      v99 = *(v105 + 24);

                      sub_1AAE45A14(&v802);
                      v342 = *(v105 + 16);
                      v97 = *(v105 + 8) - v99 * 0.5;
                      sub_1AACAADB4(v105, type metadata accessor for SgPoint);
                      v98 = v342 - v61 * 0.5;
                    }

                    else
                    {
                      v357 = *(v105 + 8);
                      v358 = *(v105 + 16);
                      v359 = *(&v803 + 1);
                      v360 = v804;
                      v361 = sqrt(v340);

                      sub_1AACBB42C(&v802, v359);
                      v362 = *(v360 + 16);
                      v363 = v360;
                      v89 = v768;
                      v364 = v362(v359, v363);
                      v366 = v365;
                      v368 = v367;
                      v370 = v369;
                      v58 = v763;
                      sub_1AACAADB4(v341, type metadata accessor for SgPoint);
                      v99 = v361 * v368;
                      v61 = v361 * v370;
                      v97 = v357 + v361 * (v364 + -0.5);
                      v371 = v361 * (v366 + -0.5);
                      v62 = v788;
                      y = v789;
                      v98 = v358 + v371;
                      sub_1AAE45A14(&v802);
                    }
                  }

                  goto LABEL_25;
                case 4:
                  v320 = swift_projectBox();
                  v92 = v770;
                  sub_1AACAAD4C(v320, v770, type metadata accessor for SgRectangle);
                  v97 = v92[1];
                  v98 = v92[2];
                  v99 = v92[3];
                  v61 = v92[4];

                  v100 = type metadata accessor for SgRectangle;
                  goto LABEL_23;
                case 5:
                  v321 = swift_projectBox();
                  v322 = v771;
                  sub_1AACAAD4C(v321, v771, type metadata accessor for SgSector);
                  v323 = vaddvq_f64(vmulq_f64(*(v322 + 24), xmmword_1AAFC7450));
                  v324 = __sincos_stret(((*(v322 + 8) + *(v322 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                  v97 = v323 * v324.__cosval;
                  v98 = v323 * v324.__sinval;
                  v325 = (v322 + *(v772 + 52));
                  v326 = v325[1];
                  v99 = *v325 + *v325;

                  sub_1AACAADB4(v322, type metadata accessor for SgSector);
                  v61 = v326 + v326;
                  goto LABEL_25;
                case 6:
                  v91 = swift_projectBox();
                  v92 = v739;
                  sub_1AACAAD4C(v91, v739, type metadata accessor for SgRule);
                  v93 = v92[1];
                  v94 = v92[2];
                  v95 = v92[3];
                  v96 = v92[4];
                  if (v95 >= v93)
                  {
                    v97 = v92[1];
                  }

                  else
                  {
                    v97 = v92[3];
                  }

                  if (v96 >= v94)
                  {
                    v98 = v92[2];
                  }

                  else
                  {
                    v98 = v92[4];
                  }

                  v99 = vabdd_f64(v95, v93);
                  v61 = vabdd_f64(v96, v94);

                  v100 = type metadata accessor for SgRule;
                  goto LABEL_23;
                case 7:
                  v335 = swift_projectBox();
                  v92 = v767;
                  sub_1AACAAD4C(v335, v767, type metadata accessor for SgLine);

                  sub_1AAF56CF0();
                  v97 = v336;
                  v98 = v337;
                  v99 = v338;
                  v61 = v339;
                  v100 = type metadata accessor for SgLine;
                  goto LABEL_23;
                case 8:
                  v107 = swift_projectBox();
                  v108 = v753;
                  sub_1AACAAD4C(v107, v753, type metadata accessor for SgArea);
                  v109 = *(v108 + 8);
                  v110 = v103;
                  v111 = *(v109 + 16);
                  v112 = *(v111 + 16);
                  if (v112)
                  {
                    v780 = *(v108 + 8);
                    sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
                    v764 = v110;

                    v113 = (v111 + 56);
                    v114 = MEMORY[0x1E69E7CC0];
                    v61 = v790;
                    do
                    {
                      v115 = *(v113 - 2);
                      v116 = *v113;
                      v117 = swift_allocObject();
                      *(v117 + 32) = v115;
                      v118 = (v117 + 32);
                      *(v117 + 40) = v116;
                      v119 = *(v114 + 2);
                      v120 = v119 + 2;
                      if (__OFADD__(v119, 2))
                      {
                        goto LABEL_422;
                      }

                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      if (!isUniquelyReferenced_nonNull_native || (v122 = *(v114 + 3) >> 1, v122 < v120))
                      {
                        if (v119 <= v120)
                        {
                          v123 = v119 + 2;
                        }

                        else
                        {
                          v123 = v119;
                        }

                        v114 = sub_1AAD69810(isUniquelyReferenced_nonNull_native, v123, 1, v114);
                        v122 = *(v114 + 3) >> 1;
                      }

                      v124 = *(v114 + 2);
                      if (v122 - v124 < 2)
                      {
                        goto LABEL_423;
                      }

                      *&v114[8 * v124 + 32] = *v118;
                      swift_setDeallocating();
                      swift_deallocClassInstance();
                      v125 = *(v114 + 2);
                      v126 = __OFADD__(v125, 2);
                      v127 = v125 + 2;
                      if (v126)
                      {
                        goto LABEL_424;
                      }

                      *(v114 + 2) = v127;
                      v113 += 5;
                      --v112;
                    }

                    while (v112);

                    v58 = v763;
                    v128 = v764;
                    v63 = v773;
                    v89 = v768;
                    v109 = v780;
                  }

                  else
                  {

                    v114 = MEMORY[0x1E69E7CC0];
                    v61 = v790;
                    v128 = v110;
                  }

                  v343 = 0;
                  v344 = *(v114 + 2);
                  v345 = 1;
                  break;
                case 9:
                  v327 = swift_projectBox();
                  v328 = v754;
                  sub_1AACAAD4C(v327, v754, type metadata accessor for SgPath);
                  v329 = *(v328 + 24);
                  v812 = *(v328 + 8);
                  v813 = v329;
                  v814 = *(v328 + 40);

                  v330 = sub_1AAF8E8E4();
                  v97 = v60;
                  v98 = y;
                  v99 = v62;
                  v61 = v790;
                  if ((v330 & 1) == 0)
                  {
                    sub_1AAF8E874();
                    v97 = v331;
                    v98 = v332;
                    v99 = v333;
                    v61 = v334;
                  }

                  v101 = type metadata accessor for SgPath;
                  v102 = v754;
                  goto LABEL_24;
                case 0xALL:
                  v99 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
                  v61 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
                  v97 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v99;
                  v98 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v61;

                  goto LABEL_25;
                case 0xBLL:
                case 0xCLL:
                  v97 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v98 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                  v99 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                  v61 = *((*&v103 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                  goto LABEL_25;
                case 0xDLL:

                  v97 = 0.0;
                  v98 = 0.0;
                  v99 = 0.0;
                  v61 = 0.0;
                  goto LABEL_25;
                case 0xELL:
                  goto LABEL_25;
                default:
                  v316 = swift_projectBox();
                  v92 = v769;
                  sub_1AACAAD4C(v316, v769, type metadata accessor for SgGroup);

                  v97 = sub_1AAD05240();
                  v98 = v317;
                  v99 = v318;
                  v61 = v319;
                  v100 = type metadata accessor for SgGroup;
LABEL_23:
                  v101 = v100;
                  v102 = v92;
                  goto LABEL_24;
              }

              do
              {
                if (v344 == v343)
                {

LABEL_203:
                  v97 = v60;
                  v98 = y;
                  v99 = v62;
                  goto LABEL_204;
                }

                v346 = v345;
                v347 = &v114[8 * v343++];
                v97 = *(v347 + 4);
                v345 = v346 + 1;
              }

              while ((*&v97 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL);
              do
              {
                if (v344 == v346)
                {
                  LOBYTE(v791) = 0;

                  v352 = v97;
                  if ((v791 & 1) == 0)
                  {
                    goto LABEL_213;
                  }

                  goto LABEL_203;
                }

                v348 = v346 + 1;
                if (__OFADD__(v346, 1))
                {
                  goto LABEL_432;
                }

                v349 = *&v114[8 * v346++ + 32];
              }

              while ((*&v349 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL);
              if (v349 >= v97)
              {
                v350 = v349;
              }

              else
              {
                v350 = v97;
              }

              if (v349 < v97)
              {
                v97 = v349;
              }

              v351 = v97;
LABEL_182:
              v352 = v350;
LABEL_183:
              v353 = v348 + 1;
              while (v344 != v348)
              {
                if (v348 >= v344)
                {
                  goto LABEL_433;
                }

                if (__OFADD__(v348, 1))
                {
                  goto LABEL_434;
                }

                v354 = v353;
                v355 = *&v114[8 * v348++ + 32];
                ++v353;
                if ((*&v355 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  while (v344 != v354)
                  {
                    v348 = v354 + 1;
                    if (__OFADD__(v354, 1))
                    {
                      goto LABEL_438;
                    }

                    v356 = *&v114[8 * v354++ + 32];
                    if ((*&v356 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      goto LABEL_193;
                    }
                  }

                  v348 = *(v114 + 2);
                  v356 = v355;
LABEL_193:
                  if (v356 >= v355)
                  {
                    v350 = v356;
                  }

                  else
                  {
                    v350 = v355;
                  }

                  if (v356 < v355)
                  {
                    v355 = v356;
                  }

                  if (v355 < v351)
                  {
                    v97 = v355;
                    v351 = v355;
                  }

                  if (v350 < v352)
                  {
                    goto LABEL_183;
                  }

                  goto LABEL_182;
                }
              }

              LOBYTE(v791) = 0;

              if (v791)
              {
                goto LABEL_203;
              }

LABEL_213:
              if (v97 > v352)
              {
                goto LABEL_443;
              }

              v373 = *(v109 + 16);
              v374 = *(*&v373 + 16);
              if (v374)
              {
                sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
                v780 = v375;

                v779 = v373;
                v376 = (*&v373 + 64);
                v377 = MEMORY[0x1E69E7CC0];
                do
                {
                  v378 = v128;
                  v379 = v63;
                  v380 = *(v376 - 2);
                  v381 = *v376;
                  v382 = swift_allocObject();
                  *(v382 + 32) = v380;
                  v383 = (v382 + 32);
                  *(v382 + 40) = v381;
                  v384 = *(v377 + 2);
                  v385 = v384 + 2;
                  if (__OFADD__(v384, 2))
                  {
                    goto LABEL_435;
                  }

                  v386 = swift_isUniquelyReferenced_nonNull_native();
                  if (!v386 || (v387 = *(v377 + 3) >> 1, v387 < v385))
                  {
                    if (v384 <= v385)
                    {
                      v388 = v384 + 2;
                    }

                    else
                    {
                      v388 = v384;
                    }

                    v377 = sub_1AAD69810(v386, v388, 1, v377);
                    v387 = *(v377 + 3) >> 1;
                  }

                  v61 = v790;
                  v63 = v379;
                  v389 = *(v377 + 2);
                  if (v387 - v389 < 2)
                  {
                    goto LABEL_436;
                  }

                  v128 = v378;
                  *&v377[8 * v389 + 32] = *v383;
                  swift_setDeallocating();
                  swift_deallocClassInstance();
                  v390 = *(v377 + 2);
                  v126 = __OFADD__(v390, 2);
                  v391 = v390 + 2;
                  if (v126)
                  {
                    goto LABEL_437;
                  }

                  *(v377 + 2) = v391;
                  v376 += 5;
                  --v374;
                }

                while (v374);
              }

              else
              {
                v377 = MEMORY[0x1E69E7CC0];
              }

              MEMORY[0x1EEE9AC00](v372);
              sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
              v731[-4] = v392;
              v731[-3] = sub_1AAE840B8();
              v731[-2] = sub_1AAE971D0();
              swift_getKeyPath();
              v393 = v766;
              v394 = COERCE_DOUBLE(sub_1AAF894FC(v377, sub_1AAF68E40));
              v396 = v395;
              v398 = v397;
              v766 = v393;

              if (v398)
              {
                v97 = v60;
                v98 = y;
                v99 = v62;
                v58 = v763;
                v89 = v768;
                goto LABEL_204;
              }

              v98 = v394;
              v399 = v394 > v396;
              v58 = v763;
              if (v399)
              {
                goto LABEL_444;
              }

              v99 = v352 - v97;
              v61 = v396 - v98;
              v89 = v768;
LABEL_204:
              v101 = type metadata accessor for SgArea;
              v102 = v753;
LABEL_24:
              sub_1AACAADB4(v102, v101);
LABEL_25:
              v827.origin.x = v784;
              v827.size.width = v785;
              v827.origin.y = v786;
              v827.size.height = v783;
              v855.origin.x = v97;
              v855.origin.y = v98;
              v855.size.width = v99;
              v855.size.height = v61;
              v828 = CGRectUnion(v827, v855);
              v66 = v828.origin.x;
              v786 = v828.origin.y;
              v65 = v828.size.width;
              v64 = v828.size.height;

              v90 = v782;
              v61 = v790;
              if (v782 == v778)
              {
                goto LABEL_407;
              }
            }
          }

          v66 = v60;
          v786 = y;
          v65 = v62;
          v64 = v61;
LABEL_407:

          goto LABEL_410;
        case 2uLL:
          v757 = v72;
          sub_1AAD117A0((v72 & 0xFFFFFFFFFFFFFFFLL) + 16, &v791);
          v400 = *(&v791 + 1);
          v401 = *(*(&v791 + 1) + 16);

          if (v401 != 0.0)
          {
            v402 = 0;
            v780 = v400 + 32;
            v64 = v61;
            v65 = v62;
            v786 = y;
            v66 = v60;
            v778 = v400;
            v773 = v63;
            v774 = v401;
            while (1)
            {
              if (v402 >= *(v400 + 16))
              {
                goto LABEL_426;
              }

              v783 = v64;
              v784 = v66;
              v785 = v65;
              v406 = *(v780 + 8 * v402++);
              v403 = v60;
              v404 = y;
              v405 = v62;
              switch(*&v406 >> 60)
              {
                case 1:
                  v431 = *((*&v406 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                  *&v802 = *((*&v406 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v768 = *&v802;
                  swift_bridgeObjectRetain_n();
                  swift_bridgeObjectRetain_n();

                  v764 = *&v431;
                  sub_1AADC9018(v431);
                  v432 = v802;
                  v433 = *(v802 + 16);
                  if (v433)
                  {
                    v434 = 0;
                    v782 = v802 + 32;
                    v61 = v790;
                    v405 = v62;
                    v404 = y;
                    v403 = v60;
                    v777 = v433;
                    v779 = v406;
                    while (1)
                    {
                      if (v434 >= *(v432 + 16))
                      {
                        goto LABEL_416;
                      }

                      v438 = *(v782 + 8 * v434++);
                      v435 = v60;
                      v436 = y;
                      v437 = v790;
                      switch(v438 >> 60)
                      {
                        case 1uLL:
                          v451 = *((v438 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                          *&v802 = *((v438 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          swift_bridgeObjectRetain_n();
                          swift_bridgeObjectRetain_n();

                          sub_1AADC9018(v451);
                          v452 = *(v802 + 16);
                          if (v452)
                          {
                            v453 = (v802 + 32);
                            v436 = v789;
                            v437 = v790;
                            v435 = v787;
                            v62 = v788;
                            do
                            {
                              v454 = *v453++;
                              v864.origin.x = sub_1AAD0FB18(v454);
                              v864.origin.y = v455;
                              v864.size.width = v456;
                              v864.size.height = v457;
                              v845.origin.x = v435;
                              v845.origin.y = v436;
                              v845.size.width = v62;
                              v845.size.height = v437;
                              v846 = CGRectUnion(v845, v864);
                              v435 = v846.origin.x;
                              v436 = v846.origin.y;
                              v62 = v846.size.width;
                              v437 = v846.size.height;
                              --v452;
                            }

                            while (v452);
                          }

                          else
                          {
                            v435 = v787;
                            v62 = v788;
                            v436 = v789;
                            v437 = v790;
                          }

                          v63 = v773;
                          v401 = v774;
                          v406 = v779;
                          v433 = v777;
                          goto LABEL_258;
                        case 2uLL:
                          v458 = v401;
                          v459 = v406;
                          sub_1AAD117A0((v438 & 0xFFFFFFFFFFFFFFFLL) + 16, &v802);
                          v460 = *(&v802 + 1);
                          v461 = *(*(&v802 + 1) + 16);

                          if (v461)
                          {
                            v462 = (v460 + 32);
                            v436 = v789;
                            v437 = v790;
                            v435 = v787;
                            v62 = v788;
                            do
                            {
                              v463 = *v462++;
                              v865.origin.x = sub_1AAD0FB18(v463);
                              v865.origin.y = v464;
                              v865.size.width = v465;
                              v865.size.height = v466;
                              v847.origin.x = v435;
                              v847.origin.y = v436;
                              v847.size.width = v62;
                              v847.size.height = v437;
                              v848 = CGRectUnion(v847, v865);
                              v435 = v848.origin.x;
                              v436 = v848.origin.y;
                              v62 = v848.size.width;
                              v437 = v848.size.height;
                              --v461;
                            }

                            while (v461);
                          }

                          else
                          {
                            v435 = v787;
                            v62 = v788;
                            v436 = v789;
                            v437 = v790;
                          }

                          sub_1AAF14C40(&v802);
                          v406 = v459;
                          v401 = v458;
                          v63 = v773;
                          v433 = v777;
                          goto LABEL_258;
                        case 3uLL:
                          v439 = v406;
                          v440 = swift_projectBox();
                          v441 = v751;
                          sub_1AACAAD4C(v440, v751, type metadata accessor for SgPoint);
                          sub_1AAD9ADE4(v441 + 48, &v802);
                          if (v805)
                          {
                            v62 = *(&v802 + 1);
                            v437 = *&v803;

                            v442 = *(v441 + 16);
                            v435 = *(v441 + 8) - v62 * 0.5;
                            v443 = v441;
LABEL_292:
                            sub_1AACAADB4(v443, type metadata accessor for SgPoint);
                            v436 = v442 - v437 * 0.5;
                            goto LABEL_298;
                          }

                          v795 = v802;
                          v796 = v803;
                          v797 = v804;
                          v498 = *(v441 + 24);
                          if (*(v441 + 40) == 1)
                          {
                            v437 = *(v441 + 32);
                            v62 = *(v441 + 24);

                            sub_1AAE45A14(&v795);
                            v442 = *(v441 + 16);
                            v435 = *(v441 + 8) - v62 * 0.5;
                            v443 = v441;
                            goto LABEL_292;
                          }

                          v499 = *(v441 + 16);
                          v740 = *(v441 + 8);
                          v741 = v499;
                          v500 = *(&v796 + 1);
                          v501 = v797;
                          v502 = sqrt(v498);

                          sub_1AACBB42C(&v795, v500);
                          v503 = *(v501 + 16);
                          v504 = v501;
                          v401 = v774;
                          v505 = v503(v500, v504);
                          v737 = v506;
                          v508 = v507;
                          v510 = v509;
                          sub_1AACAADB4(v751, type metadata accessor for SgPoint);
                          v62 = v502 * v508;
                          v437 = v502 * v510;
                          v435 = v740 + v502 * (v505 + -0.5);
                          v436 = v741 + v502 * (v737 + -0.5);
                          sub_1AAE45A14(&v795);
LABEL_298:
                          v406 = v439;
                          v433 = v777;
LABEL_258:
                          v843.origin.x = v403;
                          v843.origin.y = v404;
                          v843.size.width = v405;
                          v843.size.height = v61;
                          v863.origin.x = v435;
                          v863.origin.y = v436;
                          v863.size.width = v62;
                          v863.size.height = v437;
                          v844 = CGRectUnion(v843, v863);
                          v403 = v844.origin.x;
                          v404 = v844.origin.y;
                          v405 = v844.size.width;
                          v61 = v844.size.height;

                          v60 = v787;
                          v62 = v788;
                          y = v789;
                          if (v434 == v433)
                          {
                            goto LABEL_378;
                          }

                          break;
                        case 4uLL:
                          v476 = swift_projectBox();
                          v445 = v770;
                          sub_1AACAAD4C(v476, v770, type metadata accessor for SgRectangle);
                          v435 = v445[1];
                          v436 = v445[2];
                          v62 = v445[3];
                          v437 = v445[4];

                          v450 = type metadata accessor for SgRectangle;
                          goto LABEL_288;
                        case 5uLL:
                          v477 = swift_projectBox();
                          v478 = v771;
                          sub_1AACAAD4C(v477, v771, type metadata accessor for SgSector);
                          v479 = vaddvq_f64(vmulq_f64(*(v478 + 24), xmmword_1AAFC7450));
                          v480 = __sincos_stret(((*(v478 + 8) + *(v478 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                          v435 = v479 * v480.__cosval;
                          v436 = v479 * v480.__sinval;
                          v481 = (v478 + *(v772 + 52));
                          v482 = v481[1];
                          v62 = *v481 + *v481;

                          sub_1AACAADB4(v478, type metadata accessor for SgSector);
                          v437 = v482 + v482;
                          goto LABEL_258;
                        case 6uLL:
                          v467 = swift_projectBox();
                          v445 = v747;
                          sub_1AACAAD4C(v467, v747, type metadata accessor for SgRule);
                          v468 = v445[1];
                          v469 = v445[2];
                          v470 = v445[3];
                          v471 = v445[4];
                          if (v470 >= v468)
                          {
                            v435 = v445[1];
                          }

                          else
                          {
                            v435 = v445[3];
                          }

                          if (v471 >= v469)
                          {
                            v436 = v445[2];
                          }

                          else
                          {
                            v436 = v445[4];
                          }

                          v62 = vabdd_f64(v470, v468);
                          v437 = vabdd_f64(v471, v469);

                          v450 = type metadata accessor for SgRule;
                          goto LABEL_288;
                        case 7uLL:
                          v493 = swift_projectBox();
                          v445 = v767;
                          sub_1AACAAD4C(v493, v767, type metadata accessor for SgLine);

                          sub_1AAF56CF0();
                          v435 = v494;
                          v436 = v495;
                          v62 = v496;
                          v437 = v497;
                          v450 = type metadata accessor for SgLine;
                          goto LABEL_288;
                        case 8uLL:
                          v444 = swift_projectBox();
                          v445 = v765;
                          sub_1AACAAD4C(v444, v765, type metadata accessor for SgArea);

                          sub_1AAF58424();
                          v435 = v446;
                          v436 = v447;
                          v62 = v448;
                          v437 = v449;
                          v450 = type metadata accessor for SgArea;
                          goto LABEL_288;
                        case 9uLL:
                          v483 = swift_projectBox();
                          v484 = v761;
                          sub_1AACAAD4C(v483, v761, type metadata accessor for SgPath);
                          v485 = *(v484 + 24);
                          v815 = *(v484 + 8);
                          v816 = v485;
                          v817 = *(v484 + 40);

                          v486 = sub_1AAF8E8E4();
                          v435 = v787;
                          v62 = v788;
                          v436 = v789;
                          v437 = v790;
                          if ((v486 & 1) == 0)
                          {
                            sub_1AAF8E874();
                            v435 = v487;
                            v436 = v488;
                            v62 = v489;
                            v437 = v490;
                          }

                          v491 = type metadata accessor for SgPath;
                          v492 = v761;
                          goto LABEL_289;
                        case 0xAuLL:
                          v62 = *((v438 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
                          v437 = *((v438 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
                          v435 = *((v438 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v438 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v62;
                          v436 = *((v438 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v438 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v437;

                          goto LABEL_258;
                        case 0xBuLL:
                        case 0xCuLL:
                          v435 = *((v438 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          v436 = *((v438 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                          v62 = *((v438 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                          v437 = *((v438 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                          goto LABEL_258;
                        case 0xDuLL:

                          v435 = 0.0;
                          v436 = 0.0;
                          v62 = 0.0;
                          v437 = 0.0;
                          goto LABEL_258;
                        case 0xEuLL:
                          goto LABEL_258;
                        default:
                          v472 = swift_projectBox();
                          v445 = v769;
                          sub_1AACAAD4C(v472, v769, type metadata accessor for SgGroup);

                          v435 = sub_1AAD05240();
                          v436 = v473;
                          v62 = v474;
                          v437 = v475;
                          v450 = type metadata accessor for SgGroup;
LABEL_288:
                          v491 = v450;
                          v492 = v445;
LABEL_289:
                          sub_1AACAADB4(v492, v491);
                          goto LABEL_258;
                      }
                    }
                  }

                  v403 = v60;
                  v404 = y;
                  v405 = v62;
                  v61 = v790;
LABEL_378:

                  v400 = v778;
                  goto LABEL_235;
                case 2:
                  sub_1AAD117A0((*&v406 & 0xFFFFFFFFFFFFFFFLL) + 16, &v802);
                  v511 = *(&v802 + 1);
                  v512 = *(*(&v802 + 1) + 16);

                  if (v512)
                  {
                    v513 = 0;
                    v782 = v511 + 32;
                    v61 = v790;
                    v405 = v62;
                    v404 = y;
                    v403 = v60;
                    v777 = v512;
                    v779 = v406;
                    while (1)
                    {
                      if (v513 >= *(v511 + 16))
                      {
                        goto LABEL_417;
                      }

                      v517 = *(v782 + 8 * v513++);
                      v514 = v60;
                      v515 = y;
                      v516 = v790;
                      switch(v517 >> 60)
                      {
                        case 1uLL:
                          v529 = *((v517 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                          *&v795 = *((v517 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          swift_bridgeObjectRetain_n();
                          swift_bridgeObjectRetain_n();

                          sub_1AADC9018(v529);
                          v530 = *(v795 + 16);
                          if (v530)
                          {
                            v531 = (v795 + 32);
                            v515 = v789;
                            v516 = v790;
                            v514 = v787;
                            v62 = v788;
                            do
                            {
                              v532 = *v531++;
                              v867.origin.x = sub_1AAD0FB18(v532);
                              v867.origin.y = v533;
                              v867.size.width = v534;
                              v867.size.height = v535;
                              v851.origin.x = v514;
                              v851.origin.y = v515;
                              v851.size.width = v62;
                              v851.size.height = v516;
                              v852 = CGRectUnion(v851, v867);
                              v514 = v852.origin.x;
                              v515 = v852.origin.y;
                              v62 = v852.size.width;
                              v516 = v852.size.height;
                              --v530;
                            }

                            while (v530);
                          }

                          else
                          {
                            v514 = v787;
                            v62 = v788;
                            v515 = v789;
                            v516 = v790;
                          }

                          v63 = v773;
                          v400 = v778;
                          v406 = v779;
                          v512 = v777;
                          goto LABEL_302;
                        case 2uLL:
                          v536 = v63;
                          v537 = v406;
                          sub_1AAD117A0((v517 & 0xFFFFFFFFFFFFFFFLL) + 16, &v795);
                          v538 = *(&v795 + 1);
                          v539 = *(*(&v795 + 1) + 16);

                          if (v539)
                          {
                            v540 = (v538 + 32);
                            v515 = v789;
                            v516 = v790;
                            v514 = v787;
                            v62 = v788;
                            do
                            {
                              v541 = *v540++;
                              v868.origin.x = sub_1AAD0FB18(v541);
                              v868.origin.y = v542;
                              v868.size.width = v543;
                              v868.size.height = v544;
                              v853.origin.x = v514;
                              v853.origin.y = v515;
                              v853.size.width = v62;
                              v853.size.height = v516;
                              v854 = CGRectUnion(v853, v868);
                              v514 = v854.origin.x;
                              v515 = v854.origin.y;
                              v62 = v854.size.width;
                              v516 = v854.size.height;
                              --v539;
                            }

                            while (v539);
                          }

                          else
                          {
                            v514 = v787;
                            v62 = v788;
                            v515 = v789;
                            v516 = v790;
                          }

                          sub_1AAF14C40(&v795);
                          v406 = v537;
                          v63 = v536;
                          v512 = v777;
                          v400 = v778;
                          goto LABEL_302;
                        case 3uLL:
                          v518 = swift_projectBox();
                          v519 = v750;
                          sub_1AACAAD4C(v518, v750, type metadata accessor for SgPoint);
                          sub_1AAD9ADE4(v519 + 48, &v795);
                          if (v798)
                          {
                            v62 = *(&v795 + 1);
                            v516 = *&v796;

                            v520 = *(v519 + 16);
                            v514 = *(v519 + 8) - v62 * 0.5;
                            v521 = v519;
LABEL_336:
                            sub_1AACAADB4(v521, type metadata accessor for SgPoint);
                            v515 = v520 - v516 * 0.5;
                            v512 = v777;
                            goto LABEL_302;
                          }

                          v799 = v795;
                          v800 = v796;
                          v801 = v797;
                          v576 = *(v519 + 24);
                          if (*(v519 + 40) == 1)
                          {
                            v516 = *(v519 + 32);
                            v62 = *(v519 + 24);

                            sub_1AAE45A14(&v799);
                            v520 = *(v519 + 16);
                            v514 = *(v519 + 8) - v62 * 0.5;
                            v521 = v519;
                            goto LABEL_336;
                          }

                          v577 = *(v519 + 16);
                          v764 = *(v519 + 8);
                          v768 = v577;
                          v578 = *(&v800 + 1);
                          v579 = v63;
                          v580 = v406;
                          v581 = v801;
                          v582 = sqrt(v576);

                          sub_1AACBB42C(&v799, v578);
                          v583 = *(v581 + 16);
                          v584 = v581;
                          v406 = v580;
                          v63 = v579;
                          v585 = v583(v578, v584);
                          v741 = v586;
                          v588 = v587;
                          v590 = v589;
                          v400 = v778;
                          sub_1AACAADB4(v750, type metadata accessor for SgPoint);
                          v62 = v582 * v588;
                          v516 = v582 * v590;
                          v514 = v764 + v582 * (v585 + -0.5);
                          v515 = v768 + v582 * (v741 + -0.5);
                          sub_1AAE45A14(&v799);
                          v512 = v777;
LABEL_302:
                          v849.origin.x = v403;
                          v849.origin.y = v404;
                          v849.size.width = v405;
                          v849.size.height = v61;
                          v866.origin.x = v514;
                          v866.origin.y = v515;
                          v866.size.width = v62;
                          v866.size.height = v516;
                          v850 = CGRectUnion(v849, v866);
                          v403 = v850.origin.x;
                          v404 = v850.origin.y;
                          v405 = v850.size.width;
                          v61 = v850.size.height;

                          v60 = v787;
                          v62 = v788;
                          y = v789;
                          if (v513 == v512)
                          {
                            goto LABEL_380;
                          }

                          break;
                        case 4uLL:
                          v554 = swift_projectBox();
                          v523 = v770;
                          sub_1AACAAD4C(v554, v770, type metadata accessor for SgRectangle);
                          v514 = v523[1];
                          v515 = v523[2];
                          v62 = v523[3];
                          v516 = v523[4];

                          v528 = type metadata accessor for SgRectangle;
                          goto LABEL_332;
                        case 5uLL:
                          v555 = swift_projectBox();
                          v556 = v771;
                          sub_1AACAAD4C(v555, v771, type metadata accessor for SgSector);
                          v557 = vaddvq_f64(vmulq_f64(*(v556 + 24), xmmword_1AAFC7450));
                          v558 = __sincos_stret(((*(v556 + 8) + *(v556 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                          v514 = v557 * v558.__cosval;
                          v515 = v557 * v558.__sinval;
                          v559 = (v556 + *(v772 + 52));
                          v560 = v559[1];
                          v62 = *v559 + *v559;

                          sub_1AACAADB4(v556, type metadata accessor for SgSector);
                          v516 = v560 + v560;
                          goto LABEL_302;
                        case 6uLL:
                          v545 = swift_projectBox();
                          v523 = v748;
                          sub_1AACAAD4C(v545, v748, type metadata accessor for SgRule);
                          v546 = v523[1];
                          v547 = v523[2];
                          v548 = v523[3];
                          v549 = v523[4];
                          if (v548 >= v546)
                          {
                            v514 = v523[1];
                          }

                          else
                          {
                            v514 = v523[3];
                          }

                          if (v549 >= v547)
                          {
                            v515 = v523[2];
                          }

                          else
                          {
                            v515 = v523[4];
                          }

                          v62 = vabdd_f64(v548, v546);
                          v516 = vabdd_f64(v549, v547);

                          v528 = type metadata accessor for SgRule;
                          goto LABEL_332;
                        case 7uLL:
                          v571 = swift_projectBox();
                          v523 = v767;
                          sub_1AACAAD4C(v571, v767, type metadata accessor for SgLine);

                          sub_1AAF56CF0();
                          v514 = v572;
                          v515 = v573;
                          v62 = v574;
                          v516 = v575;
                          v528 = type metadata accessor for SgLine;
                          goto LABEL_332;
                        case 8uLL:
                          v522 = swift_projectBox();
                          v523 = v765;
                          sub_1AACAAD4C(v522, v765, type metadata accessor for SgArea);

                          sub_1AAF58424();
                          v514 = v524;
                          v515 = v525;
                          v62 = v526;
                          v516 = v527;
                          v528 = type metadata accessor for SgArea;
                          goto LABEL_332;
                        case 9uLL:
                          v561 = swift_projectBox();
                          v562 = v762;
                          sub_1AACAAD4C(v561, v762, type metadata accessor for SgPath);
                          v563 = *(v562 + 24);
                          v818 = *(v562 + 8);
                          v819 = v563;
                          v820 = *(v562 + 40);

                          v564 = sub_1AAF8E8E4();
                          v514 = v787;
                          v62 = v788;
                          v515 = v789;
                          v516 = v790;
                          if ((v564 & 1) == 0)
                          {
                            sub_1AAF8E874();
                            v514 = v565;
                            v515 = v566;
                            v62 = v567;
                            v516 = v568;
                          }

                          v569 = type metadata accessor for SgPath;
                          v570 = v762;
                          goto LABEL_333;
                        case 0xAuLL:
                          v62 = *((v517 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
                          v516 = *((v517 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
                          v514 = *((v517 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v517 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v62;
                          v515 = *((v517 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v517 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v516;

                          goto LABEL_302;
                        case 0xBuLL:
                        case 0xCuLL:
                          v514 = *((v517 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          v515 = *((v517 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                          v62 = *((v517 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                          v516 = *((v517 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                          goto LABEL_302;
                        case 0xDuLL:

                          v514 = 0.0;
                          v515 = 0.0;
                          v62 = 0.0;
                          v516 = 0.0;
                          goto LABEL_302;
                        case 0xEuLL:
                          goto LABEL_302;
                        default:
                          v550 = swift_projectBox();
                          v523 = v769;
                          sub_1AACAAD4C(v550, v769, type metadata accessor for SgGroup);

                          v514 = sub_1AAD05240();
                          v515 = v551;
                          v62 = v552;
                          v516 = v553;
                          v528 = type metadata accessor for SgGroup;
LABEL_332:
                          v569 = v528;
                          v570 = v523;
LABEL_333:
                          sub_1AACAADB4(v570, v569);
                          goto LABEL_302;
                      }
                    }
                  }

                  v403 = v60;
                  v404 = y;
                  v405 = v62;
                  v61 = v790;
LABEL_380:
                  sub_1AAF14C40(&v802);
                  v401 = v774;
                  goto LABEL_235;
                case 3:
                  v407 = swift_projectBox();
                  v408 = v742;
                  sub_1AACAAD4C(v407, v742, type metadata accessor for SgPoint);
                  sub_1AAD9ADE4(v408 + 48, &v802);
                  if (v805)
                  {
                    v405 = *(&v802 + 1);
                    v61 = *&v803;

                    v409 = 0.5;
                    v410 = *(v408 + 16);
                    v403 = *(v408 + 8) - v405 * 0.5;
                    v411 = v408;
LABEL_360:
                    sub_1AACAADB4(v411, type metadata accessor for SgPoint);
                    v404 = v410 - v61 * v409;
                    goto LABEL_235;
                  }

                  v795 = v802;
                  v796 = v803;
                  v797 = v804;
                  v624 = *(v408 + 24);
                  v625 = v408;
                  if (*(v408 + 40) == 1)
                  {
                    v61 = *(v408 + 32);
                    v405 = *(v408 + 24);

                    sub_1AAE45A14(&v795);
                    v409 = 0.5;
                    v410 = *(v408 + 16);
                    v403 = *(v408 + 8) - v405 * 0.5;
                    v411 = v408;
                    goto LABEL_360;
                  }

                  v651 = *(v408 + 8);
                  v652 = *(v408 + 16);
                  v653 = *(&v796 + 1);
                  v654 = v797;
                  v655 = sqrt(v624);

                  sub_1AACBB42C(&v795, v653);
                  v656 = (*(v654 + 16))(v653, v654);
                  v658 = v657;
                  v660 = v659;
                  v662 = v661;
                  sub_1AACAADB4(v625, type metadata accessor for SgPoint);
                  v405 = v655 * v660;
                  v61 = v655 * v662;
                  v403 = v651 + v655 * (v656 + -0.5);
                  v663 = v655 * (v658 + -0.5);
                  v62 = v788;
                  y = v789;
                  v404 = v652 + v663;
                  sub_1AAE45A14(&v795);
                  goto LABEL_235;
                case 4:
                  v602 = swift_projectBox();
                  v592 = v770;
                  sub_1AACAAD4C(v602, v770, type metadata accessor for SgRectangle);
                  v403 = v592[1];
                  v404 = v592[2];
                  v405 = v592[3];
                  v61 = v592[4];

                  v597 = type metadata accessor for SgRectangle;
                  goto LABEL_356;
                case 5:
                  v603 = swift_projectBox();
                  v604 = v771;
                  sub_1AACAAD4C(v603, v771, type metadata accessor for SgSector);
                  v605 = vaddvq_f64(vmulq_f64(*(v604 + 24), xmmword_1AAFC7450));
                  v606 = __sincos_stret(((*(v604 + 8) + *(v604 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                  v403 = v605 * v606.__cosval;
                  v404 = v605 * v606.__sinval;
                  v607 = (v604 + *(v772 + 52));
                  v608 = v607[1];
                  v405 = *v607 + *v607;

                  sub_1AACAADB4(v604, type metadata accessor for SgSector);
                  v61 = v608 + v608;
                  goto LABEL_235;
                case 6:
                  v591 = swift_projectBox();
                  v592 = v743;
                  sub_1AACAAD4C(v591, v743, type metadata accessor for SgRule);
                  v593 = v592[1];
                  v594 = v592[2];
                  v595 = v592[3];
                  v596 = v592[4];
                  if (v595 >= v593)
                  {
                    v403 = v592[1];
                  }

                  else
                  {
                    v403 = v592[3];
                  }

                  if (v596 >= v594)
                  {
                    v404 = v592[2];
                  }

                  else
                  {
                    v404 = v592[4];
                  }

                  v405 = vabdd_f64(v595, v593);
                  v61 = vabdd_f64(v596, v594);

                  v597 = type metadata accessor for SgRule;
                  goto LABEL_356;
                case 7:
                  v619 = swift_projectBox();
                  v592 = v767;
                  sub_1AACAAD4C(v619, v767, type metadata accessor for SgLine);

                  sub_1AAF56CF0();
                  v403 = v620;
                  v404 = v621;
                  v405 = v622;
                  v61 = v623;
                  v597 = type metadata accessor for SgLine;
                  goto LABEL_356;
                case 8:
                  v412 = swift_projectBox();
                  v413 = v755;
                  sub_1AACAAD4C(v412, v755, type metadata accessor for SgArea);
                  v782 = *(v413 + 8);
                  v414 = *(v782 + 16);
                  v415 = *(v414 + 16);
                  v779 = v406;
                  if (v415)
                  {
                    sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                    v777 = v414;
                    v416 = (v414 + 56);
                    v417 = MEMORY[0x1E69E7CC0];
                    v61 = v790;
                    while (1)
                    {
                      v418 = *(v416 - 2);
                      v419 = *v416;
                      v420 = swift_allocObject();
                      *(v420 + 32) = v418;
                      v421 = (v420 + 32);
                      *(v420 + 40) = v419;
                      v422 = *(v417 + 2);
                      v423 = v422 + 2;
                      if (__OFADD__(v422, 2))
                      {
                        goto LABEL_418;
                      }

                      v424 = swift_isUniquelyReferenced_nonNull_native();
                      if (!v424 || (v425 = *(v417 + 3) >> 1, v425 < v423))
                      {
                        if (v422 <= v423)
                        {
                          v426 = v422 + 2;
                        }

                        else
                        {
                          v426 = v422;
                        }

                        v417 = sub_1AAD69810(v424, v426, 1, v417);
                        v425 = *(v417 + 3) >> 1;
                      }

                      v427 = *(v417 + 2);
                      if (v425 - v427 < 2)
                      {
                        break;
                      }

                      *&v417[8 * v427 + 32] = *v421;
                      swift_setDeallocating();
                      swift_deallocClassInstance();
                      v428 = *(v417 + 2);
                      v126 = __OFADD__(v428, 2);
                      v429 = v428 + 2;
                      if (v126)
                      {
                        goto LABEL_420;
                      }

                      *(v417 + 2) = v429;
                      v416 += 5;
                      if (!--v415)
                      {

                        goto LABEL_362;
                      }
                    }

LABEL_419:
                    __break(1u);
LABEL_420:
                    __break(1u);
LABEL_421:
                    __break(1u);
LABEL_422:
                    __break(1u);
LABEL_423:
                    __break(1u);
LABEL_424:
                    __break(1u);
LABEL_425:
                    __break(1u);
LABEL_426:
                    __break(1u);
LABEL_427:
                    __break(1u);
LABEL_428:
                    __break(1u);
LABEL_429:
                    __break(1u);
LABEL_430:
                    __break(1u);
LABEL_431:
                    __break(1u);
LABEL_432:
                    __break(1u);
LABEL_433:
                    __break(1u);
LABEL_434:
                    __break(1u);
LABEL_435:
                    __break(1u);
LABEL_436:
                    __break(1u);
LABEL_437:
                    __break(1u);
LABEL_438:
                    __break(1u);
LABEL_439:
                    __break(1u);
LABEL_440:
                    __break(1u);
LABEL_441:
                    __break(1u);
LABEL_442:
                    __break(1u);
LABEL_443:
                    __break(1u);
LABEL_444:
                    __break(1u);
                    JUMPOUT(0x1AAD0977CLL);
                  }

                  v417 = MEMORY[0x1E69E7CC0];
                  v61 = v790;
LABEL_362:
                  MEMORY[0x1EEE9AC00](v430);
                  sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                  v777 = v626;
                  v731[-4] = v626;
                  v768 = COERCE_DOUBLE(sub_1AAE840B8());
                  *&v731[-3] = v768;
                  v764 = COERCE_DOUBLE(sub_1AAE971D0());
                  *&v731[-2] = v764;
                  swift_getKeyPath();
                  v627 = v766;
                  v628 = COERCE_DOUBLE(sub_1AAF894FC(v417, sub_1AAF67DF8));
                  v630 = v629;
                  v632 = v631;
                  v766 = v627;

                  v403 = v60;
                  v404 = y;
                  v405 = v62;
                  v63 = v773;
                  if ((v632 & 1) == 0)
                  {
                    v403 = v628;
                    v634 = v630;
                    if (v628 > v630)
                    {
                      goto LABEL_440;
                    }

                    v635 = *(v782 + 16);
                    v636 = *(v635 + 16);
                    if (v636)
                    {
                      sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                      v782 = v635;
                      v637 = (v635 + 64);
                      v638 = MEMORY[0x1E69E7CC0];
                      do
                      {
                        v639 = *(v637 - 2);
                        v640 = *v637;
                        v641 = swift_allocObject();
                        *(v641 + 32) = v639;
                        v642 = (v641 + 32);
                        *(v641 + 40) = v640;
                        v643 = *(v638 + 2);
                        v644 = v643 + 2;
                        if (__OFADD__(v643, 2))
                        {
                          goto LABEL_429;
                        }

                        v645 = swift_isUniquelyReferenced_nonNull_native();
                        if (!v645 || (v646 = *(v638 + 3) >> 1, v646 < v644))
                        {
                          if (v643 <= v644)
                          {
                            v647 = v643 + 2;
                          }

                          else
                          {
                            v647 = v643;
                          }

                          v638 = sub_1AAD69810(v645, v647, 1, v638);
                          v646 = *(v638 + 3) >> 1;
                        }

                        v61 = v790;
                        v648 = *(v638 + 2);
                        if (v646 - v648 < 2)
                        {
                          goto LABEL_430;
                        }

                        *&v638[8 * v648 + 32] = *v642;
                        swift_setDeallocating();
                        swift_deallocClassInstance();
                        v649 = *(v638 + 2);
                        v126 = __OFADD__(v649, 2);
                        v650 = v649 + 2;
                        if (v126)
                        {
                          goto LABEL_431;
                        }

                        *(v638 + 2) = v650;
                        v637 += 5;
                        --v636;
                      }

                      while (v636);

                      v63 = v773;
                    }

                    else
                    {
                      v638 = MEMORY[0x1E69E7CC0];
                      v61 = v790;
                    }

                    MEMORY[0x1EEE9AC00](v633);
                    v664 = v768;
                    v731[-4] = v777;
                    *&v731[-3] = v664;
                    *&v731[-2] = v764;
                    swift_getKeyPath();
                    v665 = v766;
                    v666 = COERCE_DOUBLE(sub_1AAF894FC(v638, sub_1AAF68E40));
                    v668 = v667;
                    v670 = v669;
                    v766 = v665;

                    if (v670)
                    {
                      v403 = v60;
                      v404 = y;
                      v405 = v62;
                    }

                    else
                    {
                      v404 = v666;
                      if (v666 > v668)
                      {
                        goto LABEL_442;
                      }

                      v405 = v634 - v403;
                      v61 = v668 - v666;
                    }
                  }

                  sub_1AACAADB4(v755, type metadata accessor for SgArea);
                  v400 = v778;
                  v401 = v774;
LABEL_235:
                  v841.origin.x = v784;
                  v841.size.width = v785;
                  v841.origin.y = v786;
                  v841.size.height = v783;
                  v862.origin.x = v403;
                  v862.origin.y = v404;
                  v862.size.width = v405;
                  v862.size.height = v61;
                  v842 = CGRectUnion(v841, v862);
                  v66 = v842.origin.x;
                  v786 = v842.origin.y;
                  v65 = v842.size.width;
                  v64 = v842.size.height;

                  v61 = v790;
                  if (v402 == *&v401)
                  {
                    goto LABEL_409;
                  }

                  break;
                case 9:
                  v609 = swift_projectBox();
                  v610 = v756;
                  sub_1AACAAD4C(v609, v756, type metadata accessor for SgPath);
                  v611 = *(v610 + 24);
                  v821 = *(v610 + 8);
                  v822 = v611;
                  v823 = *(v610 + 40);

                  v612 = sub_1AAF8E8E4();
                  v403 = v60;
                  v404 = y;
                  v405 = v62;
                  v61 = v790;
                  if ((v612 & 1) == 0)
                  {
                    sub_1AAF8E874();
                    v403 = v613;
                    v404 = v614;
                    v405 = v615;
                    v61 = v616;
                  }

                  v617 = type metadata accessor for SgPath;
                  v618 = v756;
                  goto LABEL_357;
                case 0xALL:
                  v405 = *((*&v406 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
                  v61 = *((*&v406 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
                  v403 = *((*&v406 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((*&v406 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v405;
                  v404 = *((*&v406 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((*&v406 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v61;

                  goto LABEL_235;
                case 0xBLL:
                case 0xCLL:
                  v403 = *((*&v406 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v404 = *((*&v406 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                  v405 = *((*&v406 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                  v61 = *((*&v406 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                  goto LABEL_235;
                case 0xDLL:

                  v403 = 0.0;
                  v404 = 0.0;
                  v405 = 0.0;
                  v61 = 0.0;
                  goto LABEL_235;
                case 0xELL:
                  goto LABEL_235;
                default:
                  v598 = swift_projectBox();
                  v592 = v769;
                  sub_1AACAAD4C(v598, v769, type metadata accessor for SgGroup);

                  v403 = sub_1AAD05240();
                  v404 = v599;
                  v405 = v600;
                  v61 = v601;
                  v597 = type metadata accessor for SgGroup;
LABEL_356:
                  v617 = v597;
                  v618 = v592;
LABEL_357:
                  sub_1AACAADB4(v618, v617);
                  goto LABEL_235;
              }
            }
          }

          v66 = v60;
          v786 = y;
          v65 = v62;
          v64 = v61;
LABEL_409:
          sub_1AAF14C40(&v791);
          v58 = v763;
LABEL_410:
          v68 = v786;
LABEL_6:
          v69 = v66;
          v70 = v65;
          v71 = v64;
          v781 = CGRectUnion(v781, *(&v68 - 1));

          if (v63 != v776)
          {
            continue;
          }

          return v781.origin.x;
        case 3uLL:
          v73 = swift_projectBox();
          v74 = v732;
          sub_1AACAAD4C(v73, v732, type metadata accessor for SgPoint);
          sub_1AAD9ADE4(v74 + 48, &v791);
          if (v794)
          {
            v65 = *(&v791 + 1);
            v75 = *&v792;

            v76 = *(v74 + 16);
            v77 = *(v74 + 8) - v65 * 0.5;
            sub_1AACAADB4(v74, type metadata accessor for SgPoint);
            v78 = v75;
            v79 = v75 * 0.5;
            v66 = v77;
            v68 = v76 - v79;
            v64 = v78;
          }

          else
          {
            v802 = v791;
            v803 = v792;
            v804 = v793;
            v703 = *(v74 + 24);
            v704 = v74;
            if (*(v74 + 40) == 1)
            {
              v705 = *(v74 + 32);
              v65 = *(v74 + 24);

              sub_1AAE45A14(&v802);
              v706 = *(v74 + 16);
              v707 = *(v74 + 8) - v65 * 0.5;
              sub_1AACAADB4(v74, type metadata accessor for SgPoint);
              v708 = v705;
              v709 = v705 * 0.5;
              v66 = v707;
              v68 = v706 - v709;
              v64 = v708;
            }

            else
            {
              v710 = *(v74 + 8);
              v711 = *(v74 + 16);
              v712 = *(&v803 + 1);
              v713 = v804;
              v714 = sqrt(v703);

              sub_1AACBB42C(&v802, v712);
              v715 = *(v713 + 16);
              v716 = v713;
              v58 = v763;
              v717 = v715(v712, v716);
              v719 = v718;
              v721 = v720;
              v723 = v722;
              sub_1AACAADB4(v704, type metadata accessor for SgPoint);
              v724 = v714 * v723;
              v65 = v714 * v721;
              v725 = v717 + -0.5;
              v64 = v724;
              v726 = v710 + v714 * v725;
              v62 = v788;
              v727 = v719 + -0.5;
              v66 = v726;
              v728 = v714 * v727;
              y = v789;
              v61 = v790;
              v729 = v711 + v728;
              sub_1AAE45A14(&v802);
              v68 = v729;
            }
          }

          goto LABEL_6;
        case 4uLL:
          v680 = swift_projectBox();
          v81 = v770;
          sub_1AACAAD4C(v680, v770, type metadata accessor for SgRectangle);
          v66 = v81[1];
          v67 = v81[2];
          v65 = v81[3];
          v64 = v81[4];

          v86 = type metadata accessor for SgRectangle;
          goto LABEL_402;
        case 5uLL:
          v681 = swift_projectBox();
          v682 = v771;
          sub_1AACAAD4C(v681, v771, type metadata accessor for SgSector);
          v683 = vaddvq_f64(vmulq_f64(*(v682 + 24), xmmword_1AAFC7450));
          v684 = __sincos_stret(((*(v682 + 8) + *(v682 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
          v66 = v683 * v684.__cosval;
          v685 = v683 * v684.__sinval;
          v686 = (v682 + *(v772 + 52));
          v687 = v686[1];
          v65 = *v686 + *v686;

          sub_1AACAADB4(v682, type metadata accessor for SgSector);
          v68 = v685;
          v64 = v687 + v687;
          goto LABEL_6;
        case 6uLL:
          v671 = swift_projectBox();
          v81 = v733;
          sub_1AACAAD4C(v671, v733, type metadata accessor for SgRule);
          v672 = v81[1];
          v673 = v81[2];
          v674 = v81[3];
          v675 = v81[4];
          if (v674 >= v672)
          {
            v66 = v81[1];
          }

          else
          {
            v66 = v81[3];
          }

          if (v675 >= v673)
          {
            v67 = v81[2];
          }

          else
          {
            v67 = v81[4];
          }

          v65 = vabdd_f64(v674, v672);
          v64 = vabdd_f64(v675, v673);

          v86 = type metadata accessor for SgRule;
          goto LABEL_402;
        case 7uLL:
          v698 = swift_projectBox();
          v81 = v767;
          sub_1AACAAD4C(v698, v767, type metadata accessor for SgLine);

          sub_1AAF56CF0();
          v66 = v699;
          v67 = v700;
          v65 = v701;
          v64 = v702;
          v86 = type metadata accessor for SgLine;
          goto LABEL_402;
        case 8uLL:
          v80 = swift_projectBox();
          v81 = v765;
          sub_1AACAAD4C(v80, v765, type metadata accessor for SgArea);

          sub_1AAF58424();
          v66 = v82;
          v67 = v83;
          v65 = v84;
          v64 = v85;
          v86 = type metadata accessor for SgArea;
          goto LABEL_402;
        case 9uLL:
          v688 = swift_projectBox();
          v689 = v752;
          sub_1AACAAD4C(v688, v752, type metadata accessor for SgPath);
          v690 = *(v689 + 24);
          v824 = *(v689 + 8);
          v825 = v690;
          v826 = *(v689 + 40);

          v691 = sub_1AAF8E8E4();
          v66 = v60;
          v692 = y;
          v65 = v62;
          v64 = v61;
          if ((v691 & 1) == 0)
          {
            sub_1AAF8E874();
            v66 = v693;
            v65 = v694;
            v64 = v695;
          }

          v696 = type metadata accessor for SgPath;
          v697 = v752;
          v67 = v692;
          goto LABEL_403;
        case 0xAuLL:
          v65 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
          v64 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
          v66 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v65;
          v67 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v64;
          goto LABEL_4;
        case 0xBuLL:
        case 0xCuLL:
          v66 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v67 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v65 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v64 = *((v72 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
LABEL_4:

          goto LABEL_5;
        case 0xDuLL:

          v66 = 0.0;
          v68 = 0.0;
          v65 = 0.0;
          v64 = 0.0;
          goto LABEL_6;
        case 0xEuLL:
          goto LABEL_6;
        default:
          v676 = swift_projectBox();
          v81 = v769;
          sub_1AACAAD4C(v676, v769, type metadata accessor for SgGroup);

          v66 = sub_1AAD05240();
          v67 = v677;
          v65 = v678;
          v64 = v679;
          v86 = type metadata accessor for SgGroup;
LABEL_402:
          v696 = v86;
          v697 = v81;
LABEL_403:
          sub_1AACAADB4(v697, v696);
LABEL_5:
          v68 = v67;
          goto LABEL_6;
      }
    }
  }

  v781.origin.x = v60;
  v781.origin.y = y;
  v781.size.width = v62;
  v781.size.height = v61;
  return v781.origin.x;
}