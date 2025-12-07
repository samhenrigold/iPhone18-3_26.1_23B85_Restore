void *sub_38A3C()
{
  v1 = v0;
  sub_147EC(&qword_B82D0, &qword_891B8);
  v2 = *v0;
  v3 = sub_81D98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_3BC1C(&v33, v32))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 88;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 48);
      v24 = *(v21 + 64);
      v38 = *(v21 + 80);
      v36 = v23;
      v37 = v24;
      v25 = *(v21 + 16);
      v33 = *v21;
      v34 = v25;
      v35 = v22;
      v26 = (*(v4 + 48) + v17);
      *v26 = v20;
      v26[1] = v19;
      v27 = *(v4 + 56) + v16;
      v28 = v34;
      *v27 = v33;
      *(v27 + 16) = v28;
      v29 = v35;
      v30 = v36;
      v31 = v37;
      *(v27 + 80) = v38;
      *(v27 + 48) = v30;
      *(v27 + 64) = v31;
      *(v27 + 32) = v29;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

char *sub_38C0C()
{
  v1 = v0;
  v35 = sub_80A38();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_147EC(&unk_B8310, &qword_89230);
  v3 = *v0;
  v4 = sub_81D98();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_38E8C()
{
  v1 = v0;
  sub_147EC(&qword_B8340, &unk_89360);
  v2 = *v0;
  v3 = sub_81D98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_3C168(&v45, v44))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 216;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 48);
      v24 = *(v21 + 80);
      v49 = *(v21 + 64);
      v50 = v24;
      v48 = v23;
      v25 = *(v21 + 144);
      v27 = *(v21 + 96);
      v26 = *(v21 + 112);
      v53 = *(v21 + 128);
      v54 = v25;
      v51 = v27;
      v52 = v26;
      v29 = *(v21 + 176);
      v28 = *(v21 + 192);
      v30 = *(v21 + 160);
      v58 = *(v21 + 208);
      v56 = v29;
      v57 = v28;
      v55 = v30;
      v31 = *(v21 + 16);
      v45 = *v21;
      v46 = v31;
      v47 = v22;
      v32 = (*(v4 + 48) + v17);
      *v32 = v20;
      v32[1] = v19;
      v33 = *(v4 + 56) + v16;
      v34 = v46;
      *v33 = v45;
      *(v33 + 16) = v34;
      v35 = v47;
      v36 = v48;
      v37 = v50;
      *(v33 + 64) = v49;
      *(v33 + 80) = v37;
      *(v33 + 32) = v35;
      *(v33 + 48) = v36;
      v38 = v51;
      v39 = v52;
      v40 = v54;
      *(v33 + 128) = v53;
      *(v33 + 144) = v40;
      *(v33 + 96) = v38;
      *(v33 + 112) = v39;
      v41 = v55;
      v42 = v56;
      v43 = v57;
      *(v33 + 208) = v58;
      *(v33 + 176) = v42;
      *(v33 + 192) = v43;
      *(v33 + 160) = v41;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_390A0()
{
  v1 = v0;
  sub_147EC(&qword_B8290, &qword_88FB8);
  v2 = *v0;
  v3 = sub_81D98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t (*sub_39218(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_39E60(v7);
  v7[9] = sub_393D4(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_392C4;
}

uint64_t (*sub_392C8(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_39E94(v7);
  v7[9] = sub_3991C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_3CD34;
}

void sub_39374(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_393D4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x68uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v11 = type metadata accessor for Application(0);
  v10[3] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v10[4] = v12;
  v14 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v10[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v10[6] = malloc(v14);
    v15 = malloc(v14);
  }

  v10[7] = v15;
  v16 = *(*(sub_147EC(&qword_B7E50, &qword_8A3F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[8] = swift_coroFrameAlloc();
    v10[9] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[8] = malloc(v16);
    v10[9] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[10] = v17;
  v19 = *v4;
  v21 = sub_34B30(a2, a3);
  *(v10 + 96) = v20 & 1;
  v22 = *(v19 + 16);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = *(v19 + 24);
    if (v26 >= v24 && (a4 & 1) != 0)
    {
LABEL_16:
      v10[11] = v21;
      if (v25)
      {
LABEL_17:
        sub_3C81C(*(*v5 + 56) + *(v13 + 72) * v21, v18, type metadata accessor for Application);
        v27 = 0;
LABEL_21:
        (*(v13 + 56))(v18, v27, 1, v11);
        return sub_396B0;
      }

LABEL_20:
      v27 = 1;
      goto LABEL_21;
    }

    if (v26 >= v24 && (a4 & 1) == 0)
    {
      sub_3834C();
      goto LABEL_16;
    }

    sub_358F0(v24, a4 & 1);
    v28 = sub_34B30(a2, a3);
    if ((v25 & 1) == (v29 & 1))
    {
      v21 = v28;
      v10[11] = v28;
      if (v25)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_81E38();
  __break(1u);
  return result;
}

void sub_396B0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_14F6C(v5, v6, &qword_B7E50, &qword_8A3F0);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_3C81C(v9, *(v2 + 6), type metadata accessor for Application);
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_3C81C(v13, v14, type metadata accessor for Application);
        sub_38164(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_14F6C(v5, v17, &qword_B7E50, &qword_8A3F0);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_3C81C(v9, *(v2 + 7), type metadata accessor for Application);
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_3C81C(v13, v11[7] + *(*(v2 + 4) + 72) * v12, type metadata accessor for Application);
      goto LABEL_10;
    }
  }

  sub_14FD4(v9, &qword_B7E50, &qword_8A3F0);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_3BD1C(*(v20 + 48) + 16 * v19);
    sub_37654(v19, v20, type metadata accessor for Application);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_14FD4(v23, &qword_B7E50, &qword_8A3F0);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

void (*sub_3991C(void *a1, uint64_t a2, uint64_t a3, char a4))(char **a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x608uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[191] = v4;
  v10[190] = a3;
  v10[189] = a2;
  v12 = *v4;
  v13 = sub_34B30(a2, a3);
  *(v11 + 209) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_38E8C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_36D0C(v18, a4 & 1);
    v13 = sub_34B30(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_81E38();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[192] = v13;
  if (v19)
  {
    memmove(v11 + 81, (*(*v5 + 56) + 216 * v13), 0xD1uLL);
    nullsub_1();
    v23 = *(v11 + 103);
    *(v11 + 37) = *(v11 + 101);
    *(v11 + 38) = v23;
    *(v11 + 39) = *(v11 + 105);
    *(v11 + 640) = *(v11 + 856);
    v24 = *(v11 + 95);
    *(v11 + 33) = *(v11 + 93);
    *(v11 + 34) = v24;
    v25 = *(v11 + 99);
    *(v11 + 35) = *(v11 + 97);
    *(v11 + 36) = v25;
    v26 = *(v11 + 87);
    *(v11 + 29) = *(v11 + 85);
    *(v11 + 30) = v26;
    v27 = *(v11 + 91);
    *(v11 + 31) = *(v11 + 89);
    *(v11 + 32) = v27;
    v28 = *(v11 + 83);
    *(v11 + 27) = *(v11 + 81);
    *(v11 + 28) = v28;
  }

  else
  {
    sub_1A6B0((v11 + 54));
  }

  return sub_39AD4;
}

void sub_39AD4(char **a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 36);
  v3[64] = *(*a1 + 37);
  v5 = v3[37];
  v3[65] = v3[38];
  v6 = v3[38];
  v3[66] = v3[39];
  v8 = v3[33];
  v7 = v3[34];
  v9 = v3[32];
  v3[60] = v8;
  v3[61] = v7;
  v10 = v3[34];
  v12 = v3[35];
  v11 = v3[36];
  v3[62] = v12;
  v3[63] = v11;
  v14 = v3[29];
  v13 = v3[30];
  v15 = v3[28];
  v3[56] = v14;
  v3[57] = v13;
  v16 = v3[30];
  v18 = v3[31];
  v17 = v3[32];
  v3[58] = v18;
  v3[59] = v17;
  v19 = v3[28];
  v20 = v3[27];
  v3[54] = v20;
  v3[55] = v19;
  *(v3 + 808) = v5;
  *(v3 + 824) = v6;
  *(v3 + 840) = v3[39];
  *(v3 + 744) = v8;
  *(v3 + 760) = v10;
  *(v3 + 776) = v12;
  *(v3 + 792) = v4;
  *(v3 + 680) = v14;
  *(v3 + 696) = v16;
  *(v3 + 712) = v18;
  *(v3 + 728) = v9;
  v21 = v3 + 54;
  *(v3 + 1072) = *(v3 + 640);
  *(v3 + 856) = *(v3 + 640);
  *(v3 + 648) = v20;
  *(v3 + 664) = v15;
  v22 = sub_3C268(v3 + 648);
  if ((a2 & 1) == 0)
  {
    if (v22 != 1)
    {
      v28 = *(v3 + 192);
      v29 = *(v3 + 191);
      if (*(v3 + 209))
      {
        v25 = (*(*v29 + 56) + 216 * v28);
        goto LABEL_10;
      }

      goto LABEL_14;
    }

LABEL_6:
    if (*(v3 + 209))
    {
      v26 = *(v3 + 192);
      v27 = **(v3 + 191);
      sub_3BD1C(*(v27 + 48) + 16 * v26);
      sub_37848(v26, v27);
    }

    goto LABEL_16;
  }

  if (v22 == 1)
  {
    goto LABEL_6;
  }

  v23 = *(v3 + 192);
  v24 = *(v3 + 191);
  if ((*(v3 + 209) & 1) == 0)
  {
    v30 = *(v3 + 190);
    v31 = *(v3 + 189);
    v32 = *v24;
    v33 = v3[65];
    v3[10] = v3[64];
    v3[11] = v33;
    v3[12] = v3[66];
    *(v3 + 208) = *(v3 + 1072);
    v34 = v3[61];
    v3[6] = v3[60];
    v3[7] = v34;
    v35 = v3[63];
    v3[8] = v3[62];
    v3[9] = v35;
    v36 = v3[57];
    v3[2] = v3[56];
    v3[3] = v36;
    v37 = v3[59];
    v3[4] = v3[58];
    v3[5] = v37;
    v38 = v3[55];
    *v3 = *v21;
    v3[1] = v38;
    v32[(v23 >> 6) + 8] |= 1 << v23;
    v39 = (v32[6] + 16 * v23);
    *v39 = v31;
    v39[1] = v30;
    v29 = 216;
    v40 = v32[7] + 216 * v23;
    v41 = v3[1];
    *v40 = *v3;
    *(v40 + 16) = v41;
    v42 = v3[2];
    v43 = v3[3];
    v44 = v3[5];
    *(v40 + 64) = v3[4];
    *(v40 + 80) = v44;
    *(v40 + 32) = v42;
    *(v40 + 48) = v43;
    v45 = v3[6];
    v46 = v3[7];
    v47 = v3[9];
    *(v40 + 128) = v3[8];
    *(v40 + 144) = v47;
    *(v40 + 96) = v45;
    *(v40 + 112) = v46;
    v48 = v3[10];
    v49 = v3[11];
    v50 = v3[12];
    v28 = *(v3 + 208);
    *(v40 + 208) = v28;
    *(v40 + 176) = v49;
    *(v40 + 192) = v50;
    *(v40 + 160) = v48;
    v51 = v32[2];
    v52 = __OFADD__(v51, 1);
    v53 = v51 + 1;
    if (!v52)
    {
LABEL_15:
      v32[2] = v53;

      goto LABEL_16;
    }

    __break(1u);
LABEL_14:
    v54 = *(v3 + 190);
    v55 = *(v3 + 189);
    v32 = *v29;
    v56 = v3[65];
    *(v3 + 376) = v3[64];
    *(v3 + 392) = v56;
    *(v3 + 408) = v3[66];
    *(v3 + 424) = *(v3 + 1072);
    v57 = v3[61];
    *(v3 + 312) = v3[60];
    *(v3 + 328) = v57;
    v58 = v3[63];
    *(v3 + 344) = v3[62];
    *(v3 + 360) = v58;
    v59 = v3[57];
    *(v3 + 248) = v3[56];
    *(v3 + 264) = v59;
    v60 = v3[59];
    *(v3 + 280) = v3[58];
    *(v3 + 296) = v60;
    v61 = v3[55];
    *(v3 + 216) = *v21;
    *(v3 + 232) = v61;
    v32[(v28 >> 6) + 8] |= 1 << v28;
    v62 = (v32[6] + 16 * v28);
    *v62 = v55;
    v62[1] = v54;
    v63 = v32[7] + 216 * v28;
    v64 = *(v3 + 232);
    *v63 = *(v3 + 216);
    *(v63 + 16) = v64;
    v65 = *(v3 + 248);
    v66 = *(v3 + 264);
    v67 = *(v3 + 296);
    *(v63 + 64) = *(v3 + 280);
    *(v63 + 80) = v67;
    *(v63 + 32) = v65;
    *(v63 + 48) = v66;
    v68 = *(v3 + 312);
    v69 = *(v3 + 328);
    v70 = *(v3 + 360);
    *(v63 + 128) = *(v3 + 344);
    *(v63 + 144) = v70;
    *(v63 + 96) = v68;
    *(v63 + 112) = v69;
    v71 = *(v3 + 376);
    v72 = *(v3 + 392);
    v73 = *(v3 + 408);
    *(v63 + 208) = *(v3 + 424);
    *(v63 + 176) = v72;
    *(v63 + 192) = v73;
    *(v63 + 160) = v71;
    v74 = v32[2];
    v52 = __OFADD__(v74, 1);
    v53 = v74 + 1;
    if (v52)
    {
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

  v25 = (*(*v24 + 56) + 216 * v23);
LABEL_10:
  memmove(v25, v3 + 54, 0xD1uLL);
LABEL_16:
  v75 = v3[38];
  *(v3 + 1240) = v3[37];
  *(v3 + 1256) = v75;
  *(v3 + 1272) = v3[39];
  *(v3 + 1288) = *(v3 + 640);
  v76 = v3[34];
  *(v3 + 1176) = v3[33];
  *(v3 + 1192) = v76;
  v77 = v3[36];
  *(v3 + 1208) = v3[35];
  *(v3 + 1224) = v77;
  v78 = v3[30];
  *(v3 + 1112) = v3[29];
  *(v3 + 1128) = v78;
  v79 = v3[32];
  *(v3 + 1144) = v3[31];
  *(v3 + 1160) = v79;
  v80 = v3[28];
  *(v3 + 1080) = v3[27];
  *(v3 + 1096) = v80;
  sub_14F6C((v3 + 54), (v3 + 81), &qword_B8350, &qword_8A5D0);
  sub_14FD4(v3 + 1080, &qword_B8350, &qword_8A5D0);

  free(v3);
}

uint64_t (*sub_39E60(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_39E88;
}

uint64_t (*sub_39E94(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_3CCF0;
}

void *sub_39EBC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_3A014(void *result, char *__dst, uint64_t a3, uint64_t a4)
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
  if (!__dst)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 88 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v25[0] = *v18;
      v25[1] = v19;
      v21 = v18[3];
      v20 = v18[4];
      LOBYTE(v17) = *(v18 + 80);
      v25[2] = v18[2];
      v26 = v17;
      v25[3] = v21;
      v25[4] = v20;
      memmove(v11, v18, 0x51uLL);
      if (v14 == v10)
      {
        sub_3BC1C(v25, v24);
        goto LABEL_24;
      }

      v11 += 88;
      sub_3BC1C(v25, v24);
      result = v14;
      v22 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v22)
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_3A1AC(void *result, char *__dst, uint64_t a3, uint64_t a4)
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
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v31 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 216 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v33[0] = *v18;
      v33[1] = v19;
      v20 = v18[5];
      v22 = v18[2];
      v21 = v18[3];
      v33[4] = v18[4];
      v33[5] = v20;
      v33[2] = v22;
      v33[3] = v21;
      v23 = v18[9];
      v25 = v18[6];
      v24 = v18[7];
      v33[8] = v18[8];
      v33[9] = v23;
      v33[6] = v25;
      v33[7] = v24;
      v27 = v18[11];
      v26 = v18[12];
      v28 = v18[10];
      v34 = *(v18 + 208);
      v33[11] = v27;
      v33[12] = v26;
      v33[10] = v28;
      memmove(v11, v18, 0xD1uLL);
      if (v14 == v10)
      {
        sub_3C168(v33, v32);
        goto LABEL_23;
      }

      v11 += 216;
      sub_3C168(v33, v32);
      result = v14;
      v29 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v29)
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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v30 = v12 + 1;
    }

    else
    {
      v30 = v13;
    }

    v12 = v30 - 1;
    v10 = result;
LABEL_23:
    v7 = v31;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_3A36C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_81C78();
      sub_1A7F4(0, &qword_B8348, off_A91F8);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1A7F4(0, &qword_B8348, off_A91F8);
    if (sub_81C48() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_81C58();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_81B78(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_81B88();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_3A590(void *a1, uint64_t a2)
{
  v4 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  v18[3] = type metadata accessor for StorageShared(0);
  v18[4] = &off_AB6C0;
  v18[0] = a1;
  sub_3C978(v18, aBlock);
  swift_beginAccess();
  v7 = a1;
  sub_3C9DC(aBlock, a2 + 160, &qword_B8398, &qword_89420);
  swift_endAccess();
  v8 = [objc_opt_self() defaultCenter];
  v9 = MSPStorageTipsManagerTipDidChangeNotification;
  v10 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_3CA7C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_33800;
  aBlock[3] = &unk_ABA18;
  v11 = _Block_copy(aBlock);

  v12 = [v8 addObserverForName:v9 object:0 queue:0 usingBlock:v11];
  _Block_release(v11);

  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_819D8();
  if (*(&dword_10 + (*(a2 + 136) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a2 + 136) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_81A08();
  }

  sub_81A28();
  swift_endAccess();
  v13 = sub_81AB8();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = sub_3CA84();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = v14;
  v15[4] = a2;
  swift_retain_n();
  sub_68AE4(0, 0, v6, &unk_89428, v15);

  swift_unknownObjectRelease();
  return sub_20FD0(v18);
}

unint64_t sub_3A894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_147EC(&qword_B83D8, qword_89460);
    v3 = sub_81DB8();
    v4 = a1 + 32;

    while (1)
    {
      sub_14F6C(v4, v13, &unk_B83E0, &qword_88A38);
      result = sub_34BA8(v13);
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
      result = sub_3C158(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_3A9D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_147EC(&qword_B8290, &qword_88FB8);
    v3 = sub_81DB8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_34B30(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_3AAE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_147EC(&qword_B82F0, &qword_891C8);
  v3 = sub_81DB8();

  v4 = *(a1 + 144);
  v39 = *(a1 + 128);
  v40 = v4;
  v5 = *(a1 + 176);
  v41 = *(a1 + 160);
  v42 = v5;
  v6 = *(a1 + 80);
  v35 = *(a1 + 64);
  v36 = v6;
  v7 = *(a1 + 112);
  v37 = *(a1 + 96);
  v38 = v7;
  v8 = *(a1 + 48);
  v33 = *(a1 + 32);
  v34 = v8;
  v10 = *(&v33 + 1);
  v9 = v33;
  sub_14F6C(&v33, v32, &qword_B82F8, &qword_891D0);
  result = sub_34B30(v9, v10);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v13 = (a1 + 192);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v14 = (v3[6] + 16 * result);
    *v14 = v9;
    v14[1] = v10;
    v15 = (v3[7] + 144 * result);
    *v15 = v34;
    v16 = v35;
    v17 = v36;
    v18 = v38;
    v15[3] = v37;
    v15[4] = v18;
    v15[1] = v16;
    v15[2] = v17;
    v19 = v39;
    v20 = v40;
    v21 = v42;
    v15[7] = v41;
    v15[8] = v21;
    v15[5] = v19;
    v15[6] = v20;
    v22 = v3[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      break;
    }

    v3[2] = v24;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v25 = v13 + 10;
    v26 = v13[7];
    v39 = v13[6];
    v40 = v26;
    v27 = v13[9];
    v41 = v13[8];
    v42 = v27;
    v28 = v13[3];
    v35 = v13[2];
    v36 = v28;
    v29 = v13[5];
    v37 = v13[4];
    v38 = v29;
    v30 = v13[1];
    v33 = *v13;
    v34 = v30;
    v10 = *(&v33 + 1);
    v9 = v33;
    sub_14F6C(&v33, v32, &qword_B82F8, &qword_891D0);
    result = sub_34B30(v9, v10);
    v13 = v25;
    if (v31)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_3ACBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_147EC(&qword_B83D0, &qword_89458);
    v3 = sub_81DB8();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);
      result = sub_34BEC(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_3ADB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_147EC(&qword_B83C8, &qword_89450);
    v3 = sub_81DB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_34BEC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_3AEAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_147EC(&qword_B8340, &unk_89360);
  v3 = sub_81DB8();

  v4 = *(a1 + 240);
  v53 = *(a1 + 224);
  v54 = v4;
  v55 = *(a1 + 256);
  v5 = *(a1 + 176);
  v49 = *(a1 + 160);
  v50 = v5;
  v6 = *(a1 + 208);
  v51 = *(a1 + 192);
  v52 = v6;
  v7 = *(a1 + 112);
  v45 = *(a1 + 96);
  v46 = v7;
  v8 = *(a1 + 144);
  v47 = *(a1 + 128);
  v48 = v8;
  v9 = *(a1 + 48);
  v41 = *(a1 + 32);
  v42 = v9;
  v10 = *(a1 + 80);
  v43 = *(a1 + 64);
  v44 = v10;
  v12 = *(&v41 + 1);
  v11 = v41;
  sub_14F6C(&v41, v40, &qword_B83A8, &qword_89430);
  result = sub_34B30(v11, v12);
  if (v14)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v15 = (a1 + 264);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v16 = (v3[6] + 16 * result);
    *v16 = v11;
    v16[1] = v12;
    v17 = v3[7] + 216 * result;
    v18 = v43;
    *v17 = v42;
    *(v17 + 16) = v18;
    v19 = v44;
    v20 = v45;
    v21 = v47;
    *(v17 + 64) = v46;
    *(v17 + 80) = v21;
    *(v17 + 32) = v19;
    *(v17 + 48) = v20;
    v22 = v48;
    v23 = v49;
    v24 = v51;
    *(v17 + 128) = v50;
    *(v17 + 144) = v24;
    *(v17 + 96) = v22;
    *(v17 + 112) = v23;
    v25 = v52;
    v26 = v53;
    v27 = v54;
    *(v17 + 208) = v55;
    *(v17 + 176) = v26;
    *(v17 + 192) = v27;
    *(v17 + 160) = v25;
    v28 = v3[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      break;
    }

    v3[2] = v30;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v31 = (v15 + 232);
    v32 = v15[13];
    v53 = v15[12];
    v54 = v32;
    v55 = *(v15 + 224);
    v33 = v15[9];
    v49 = v15[8];
    v50 = v33;
    v34 = v15[11];
    v51 = v15[10];
    v52 = v34;
    v35 = v15[5];
    v45 = v15[4];
    v46 = v35;
    v36 = v15[7];
    v47 = v15[6];
    v48 = v36;
    v37 = v15[1];
    v41 = *v15;
    v42 = v37;
    v38 = v15[3];
    v43 = v15[2];
    v44 = v38;
    v12 = *(&v41 + 1);
    v11 = v41;
    sub_14F6C(&v41, v40, &qword_B83A8, &qword_89430);
    result = sub_34B30(v11, v12);
    v15 = v31;
    if (v39)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_3B0CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_147EC(&qword_B83B8, &qword_89440);
    v3 = sub_81DB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_34B30(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_3B1C8(uint64_t a1)
{
  v2 = sub_147EC(&qword_B83B0, &qword_89438);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_147EC(&unk_B8310, &qword_89230);
    v7 = sub_81DB8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_14F6C(v9, v5, &qword_B83B0, &qword_89438);
      v11 = *v5;
      v12 = v5[1];
      result = sub_34B30(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_80A38();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_3B3B4(uint64_t a1)
{
  v2 = sub_147EC(&qword_B8300, &qword_891D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_147EC(&qword_B82B0, &qword_89140);
    v7 = sub_81DB8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_14F6C(v9, v5, &qword_B8300, &qword_891D8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_34B30(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Application(0);
      result = sub_3C81C(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Application);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_3B59C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_147EC(&qword_B8328, &qword_892F8);
    v3 = sub_81DB8();
    v4 = a1 + 32;

    while (1)
    {
      sub_14F6C(v4, &v13, &qword_B8330, &qword_89300);
      v5 = v13;
      v6 = v14;
      result = sub_34B30(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_3C158(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_3B6CC()
{
  v1 = *(sub_817E8() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_809D8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_3B7D0(uint64_t a1)
{
  v4 = *(sub_817E8() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22EB0;

  return sub_301DC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_3B8D4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_3B938(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_3B948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3BAA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Application(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_3BB04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_16268;

  return sub_27478(a1, v4, v5, v6);
}

uint64_t *sub_3BBB8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_3BD70(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_3BE84()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3BEC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3BEE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_2EDD8(a1, v4, v5, v6);
}

uint64_t sub_3BF98()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3BFE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22EB0;

  return sub_29650(a1, v4, v5, v7, v6);
}

unint64_t sub_3C0A0()
{
  result = qword_B8320;
  if (!qword_B8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8320);
  }

  return result;
}

uint64_t sub_3C0F4()
{

  return _swift_deallocObject(v0, 48, 7);
}

_OWORD *sub_3C158(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_3C268(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_3C280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_33240(a1, v4, v5, v6);
}

uint64_t sub_3C334()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3C37C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22EB0;

  return sub_323A4(a1, v4, v5, v7, v6);
}

uint64_t sub_3C43C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3C484(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22EB0;

  return sub_320F4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_3C54C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_31F10(a1, v4, v5, v6);
}

uint64_t sub_3C600(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_31DA8(a1, v4, v5, v6);
}

uint64_t sub_3C6B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_31C44(a1, v4, v5, v6);
}

uint64_t sub_3C768(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_317AC(a1, v4, v5, v6);
}

uint64_t sub_3C81C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_3C884()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3C8C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_28904(a1, v4, v5, v6);
}

uint64_t sub_3C978(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_3C9DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_147EC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_3CA44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_3CA84()
{
  result = qword_B83A0;
  if (!qword_B83A0)
  {
    type metadata accessor for RecommendationController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B83A0);
  }

  return result;
}

uint64_t sub_3CADC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3CB1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_51A54(a1, v4, v5, v6);
}

uint64_t sub_3CBD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_3CD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Application(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_3CE10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Application(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SyncedContent(uint64_t a1)
{
  result = qword_B8448;
  if (!qword_B8448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3CF00(uint64_t a1)
{
  type metadata accessor for MPMediaType(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Application(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_3CFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SyncedContent(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = a1;
  v12[1] = a2;
  v13 = *(v10 + 28);
  sub_3D2DC(a3, v12 + v13, type metadata accessor for Application);
  if (a1 <= 3)
  {
    if (a1 == 1 || a1 == 2)
    {
      goto LABEL_8;
    }
  }

  else if (a1 == 4 || a1 == 512 || a1 == 2048)
  {
LABEL_8:
    v14 = sub_818E8();
    v15 = sub_818E8();
    v16 = STLocalizedString(v14);

    v17 = sub_81928();
    v19 = v18;

    sub_3D344(a3, type metadata accessor for Application);
    v12[2] = v17;
    v12[3] = v19;
    sub_3D2DC(v12, a4, type metadata accessor for SyncedContent);
    (*(v9 + 56))(a4, 0, 1, v8);
    return sub_3D344(v12, type metadata accessor for SyncedContent);
  }

  sub_3D344(a3, type metadata accessor for Application);
  sub_3D344(v12 + v13, type metadata accessor for Application);
  return (*(v9 + 56))(a4, 1, 1, v8);
}

uint64_t sub_3D2DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3D344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_3D3AC(uint64_t a1)
{
  sub_3D70C(319, &qword_B8518, &type metadata accessor for AppendSettingsNavigationPathAction);
  if (v1 <= 0x3F)
  {
    sub_3D70C(319, &qword_B8520, &type metadata accessor for SettingsAppPrimaryNavigationMode);
    if (v2 <= 0x3F)
    {
      sub_3D760();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_3D49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_147EC(&qword_B8488, &qword_894D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_147EC(qword_B8490, qword_894D8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_3D5D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_147EC(&qword_B8488, &qword_894D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_147EC(qword_B8490, qword_894D8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

void sub_3D70C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_80CF8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_3D760()
{
  result = qword_B8528;
  if (!qword_B8528)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_B8528);
  }

  return result;
}

uint64_t sub_3D7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_81098();
  __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_810A8();
}

uint64_t sub_3D8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_81098();
  __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_810A8();
}

uint64_t sub_3D9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v60 = sub_81578();
  v65 = v60;
  v66 = sub_14E2C(&qword_B8530, &qword_89578);
  WitnessTable = swift_getWitnessTable();
  v58 = v66;
  v67 = WitnessTable;
  v68 = sub_3EBA4();
  v56 = v68;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = *(OpaqueTypeMetadata2 - 8);
  v6 = __chkstk_darwin(OpaqueTypeMetadata2);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v46 - v8;
  v9 = sub_14E2C(&qword_B8540, &qword_89580);
  v10 = sub_3EC08();
  v65 = v4;
  v66 = v9;
  v67 = v3;
  v68 = v10;
  v11 = sub_80DC8();
  v48 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = &v46 - v15;
  v16 = sub_80B18();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v46 - v21;
  v53 = OpaqueTypeMetadata2;
  v23 = sub_810B8();
  v54 = *(v23 - 8);
  v55 = v23;
  __chkstk_darwin(v23);
  v61 = &v46 - v24;
  v52 = a1;
  sub_6BB00(v22);
  (*(v17 + 104))(v20, enum case for SettingsAppPrimaryNavigationMode.classic(_:), v16);
  sub_3ECC4(&qword_B8558, &type metadata accessor for SettingsAppPrimaryNavigationMode, &protocol conformance descriptor for SettingsAppPrimaryNavigationMode);
  sub_819C8();
  sub_819C8();
  v25 = *(v17 + 8);
  v25(v20, v16);
  v25(v22, v16);
  if (v65 == v64)
  {
    sub_3E0A4(v52);
    v26 = swift_getWitnessTable();
    v27 = v47;
    sub_68AE0();
    v28 = *(v48 + 8);
    v28(v14, v11);
    sub_68AE0();
    v29 = v60;
    v31 = WitnessTable;
    v30 = v58;
    v65 = v60;
    v66 = v58;
    v32 = v56;
    v67 = WitnessTable;
    v68 = v56;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_3D7F4(v14, v11, v53, v26, OpaqueTypeConformance2);
    v28(v14, v11);
    v28(v27, v11);
  }

  else
  {
    v34 = v50;
    sub_3E14C(v52, v50);
    v31 = WitnessTable;
    v30 = v58;
    v65 = v60;
    v66 = v58;
    v32 = v56;
    v67 = WitnessTable;
    v68 = v56;
    v35 = swift_getOpaqueTypeConformance2();
    v36 = v49;
    v37 = v53;
    sub_68AE0();
    v38 = *(v51 + 8);
    v38(v34, v37);
    sub_68AE0();
    v39 = swift_getWitnessTable();
    sub_3D8EC(v34, v11, v37, v39, v35);
    v40 = v34;
    v29 = v60;
    v38(v40, v37);
    v38(v36, v37);
  }

  v41 = swift_getWitnessTable();
  v65 = v29;
  v66 = v30;
  v67 = v31;
  v68 = v32;
  v42 = swift_getOpaqueTypeConformance2();
  v62 = v41;
  v63 = v42;
  v43 = v55;
  swift_getWitnessTable();
  v44 = v61;
  sub_68AE0();
  return (*(v54 + 8))(v44, v43);
}

uint64_t sub_3E0A4(uint64_t a1)
{
  v1 = *(a1 + 24);
  v7 = *(a1 + 16);
  v8 = v1;
  v5[2] = v7;
  v5[3] = v1;
  v2 = sub_147EC(&qword_B8540, &qword_89580);
  v3 = sub_3EC08();
  return sub_3E810(sub_3ED0C, v6, sub_3ED18, v5, v7, v2, v1, v3);
}

uint64_t sub_3E14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_147EC(&qword_B8530, &qword_89578);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  v6 = __chkstk_darwin(v4);
  v22 = &v20 - v7;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = sub_81578();
  v21 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  (*(v8 + 16))(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  *(v16 + 24) = v11;
  (*(v8 + 32))(v16 + v15, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v26 = v10;
  v27 = v11;
  v28 = v2;
  sub_81528();
  v17 = v22;
  sub_810C8();
  swift_getWitnessTable();
  sub_3EBA4();
  v18 = v23;
  sub_812F8();
  (*(v24 + 8))(v17, v18);
  return (*(v21 + 8))(v14, v12);
}

uint64_t sub_3E440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v27 = a1;
  v28 = a4;
  v5 = sub_80AE8();
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_147EC(&qword_B8560, &qword_89588);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = sub_147EC(&qword_B8568, &unk_89590);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = sub_80B08();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v25 - v19;
  v22 = type metadata accessor for ProtectedNavigationLink(0, a2, v26, v21);
  (*(v27 + *(v22 + 44)))();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_3ED38(v13);
    swift_storeEnumTagMultiPayload();
    sub_3ECC4(&qword_B8550, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
    return sub_810A8();
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    (*(v15 + 16))(v18, v20, v14);
    sub_80AD8();
    v24 = v25;
    (*(v25 + 16))(v10, v7, v5);
    swift_storeEnumTagMultiPayload();
    sub_3ECC4(&qword_B8550, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
    sub_810A8();
    (*(v24 + 8))(v7, v5);
    return (*(v15 + 8))(v20, v14);
  }
}

uint64_t sub_3E810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1);
  v8();
  return sub_80DB8();
}

uint64_t sub_3E8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_80B38();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_147EC(&qword_B8568, &unk_89590);
  __chkstk_darwin(v10 - 8);
  v12 = &v16 - v11;
  v14 = type metadata accessor for ProtectedNavigationLink(0, a2, a3, v13);
  (*(a1 + *(v14 + 44)))();
  LODWORD(v14) = *(a1 + *(v14 + 40));
  sub_6BB28(v9);
  sub_613EC(v12, v14, v9);
  (*(v7 + 8))(v9, v6);
  return sub_3ED38(v12);
}

uint64_t sub_3EA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v14 = type metadata accessor for ProtectedNavigationLink(0, v11, v12, v13);
  (*(a1 + *(v14 + 48)))();
  sub_68AE0();
  v15 = *(v5 + 8);
  v15(v8, a2);
  sub_68AE0();
  return (v15)(v10, a2);
}

unint64_t sub_3EBA4()
{
  result = qword_B8538;
  if (!qword_B8538)
  {
    sub_14E2C(&qword_B8530, &qword_89578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8538);
  }

  return result;
}

unint64_t sub_3EC08()
{
  result = qword_B8548;
  if (!qword_B8548)
  {
    sub_14E2C(&qword_B8540, &qword_89580);
    sub_3ECC4(&qword_B8550, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8548);
  }

  return result;
}

uint64_t sub_3ECC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3ED38(uint64_t a1)
{
  v2 = sub_147EC(&qword_B8568, &unk_89590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3EDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ProtectedNavigationLink(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  sub_147EC(&qword_B8570, &qword_8A370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_80B38();
    (*(*(v9 - 8) + 8))(v4 + v7, v9);
  }

  else
  {
  }

  v10 = *(v5 + 36);
  sub_147EC(&qword_B8680, &unk_895A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_80B18();
    (*(*(v11 - 8) + 8))(v4 + v7 + v10, v11);
  }

  else
  {
  }

  return _swift_deallocObject(v4, v7 + v8, v6 | 7);
}

uint64_t sub_3EF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for ProtectedNavigationLink(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_3E8E0(v8, v5, v6);
}

uint64_t sub_3F004(uint64_t *a1)
{
  sub_14E2C(&qword_B8540, &qword_89580);
  sub_3EC08();
  sub_80DC8();
  sub_81578();
  sub_14E2C(&qword_B8530, &qword_89578);
  swift_getWitnessTable();
  sub_3EBA4();
  swift_getOpaqueTypeMetadata2();
  sub_810B8();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_3F19C@<X0>(char *a1@<X0>, uint64_t a3@<X8>)
{
  v65 = a3;
  v61 = sub_817E8();
  v4 = __chkstk_darwin(v61);
  v59 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v57 - v6;
  v8 = sub_147EC(&qword_B78C8, &unk_89660);
  v9 = __chkstk_darwin(v8 - 8);
  v64 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v63 = &v57 - v12;
  v13 = __chkstk_darwin(v11);
  v62 = &v57 - v14;
  __chkstk_darwin(v13);
  v16 = &v57 - v15;
  if (a1)
  {
    v17 = *&a1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_deviceName + 8];
    v66 = *&a1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_deviceName];
    v67 = v17;
    v60 = sub_14ED0();
    v18 = a1;

    v19 = sub_81288();
    v21 = v20;
    v66 = v19;
    v67 = v20;
    v23 = v22 & 1;
    v68 = v22 & 1;
    v69 = v24;
    sub_81398();
    sub_15034(v19, v21, v23);

    v25 = sub_818E8();
    v26 = sub_818E8();
    v27 = STLocalizedString(v25);

    v57 = sub_81928();
    sub_147EC(&qword_B7CB0, &qword_88A40);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_886E0;
    swift_getKeyPath();
    v58 = v16;
    swift_getKeyPath();
    sub_80C68();

    sub_3F7A0(v7);
    v29 = sub_81E68();
    v31 = v30;
    *(v28 + 56) = &type metadata for String;
    v32 = sub_1A83C();
    *(v28 + 64) = v32;
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v59;
    sub_80C68();

    sub_3F7A0(v33);
    v34 = sub_81E68();
    *(v28 + 96) = &type metadata for String;
    *(v28 + 104) = v32;
    *(v28 + 72) = v34;
    *(v28 + 80) = v35;
    v36 = sub_818F8();
    v38 = v37;

    v66 = v36;
    v67 = v38;
    v39 = sub_81288();
    v41 = v40;
    LOBYTE(v28) = v42;
    LODWORD(v66) = sub_81138();
    v43 = sub_81238();
    v45 = v44;
    LOBYTE(v32) = v46;
    v48 = v47;
    sub_15034(v39, v41, v28 & 1);

    v66 = v43;
    v67 = v45;
    v68 = v32 & 1;
    v69 = v48;
    v49 = v62;
    sub_81398();
    sub_15034(v43, v45, v32 & 1);

    v50 = v58;
    v51 = v63;
    sub_3F7FC(v58, v63);
    v52 = v64;
    sub_3F7FC(v49, v64);
    v53 = v65;
    sub_3F7FC(v51, v65);
    v54 = sub_147EC(&qword_B8580, &qword_896B8);
    v55 = v53 + *(v54 + 48);
    *v55 = 0;
    *(v55 + 8) = 1;
    sub_3F7FC(v52, v53 + *(v54 + 64));
    sub_3F86C(v49);
    sub_3F86C(v50);
    sub_3F86C(v52);
    return sub_3F86C(v51);
  }

  else
  {
    type metadata accessor for StorageShared(0);
    sub_1635C();
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

uint64_t sub_3F734@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_81008();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = sub_147EC(&qword_B8578, &qword_89658);
  return sub_3F19C(v4, a2 + *(v5 + 44));
}

uint64_t sub_3F7A0(uint64_t a1)
{
  v2 = sub_817E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3F7FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B78C8, &unk_89660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3F86C(uint64_t a1)
{
  v2 = sub_147EC(&qword_B78C8, &unk_89660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_3F8D8()
{
  result = qword_B8588;
  if (!qword_B8588)
  {
    sub_14E2C(&qword_B8590, &unk_896C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8588);
  }

  return result;
}

void sub_3F93C()
{
  v1 = sub_80D18();
  v104 = *(v1 - 8);
  v105 = v1;
  __chkstk_darwin(v1);
  v103 = &v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_80FC8();
  v101 = *(v3 - 8);
  v102 = v3;
  __chkstk_darwin(v3);
  v97 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_147EC(&qword_B85C0, &qword_89718);
  v95 = *(v98 - 8);
  __chkstk_darwin(v98);
  v6 = &v92 - v5;
  v100 = sub_147EC(&qword_B85C8, &qword_89720);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v96 = &v92 - v7;
  v8 = sub_147EC(&qword_B85D0, &qword_89728);
  __chkstk_darwin(v8 - 8);
  v94 = &v92 - v9;
  v10 = type metadata accessor for HiddenAppsListWrapper();
  v115.receiver = v0;
  v115.super_class = v10;
  objc_msgSendSuper2(&v115, "viewDidLoad");
  v11 = sub_818E8();
  v12 = sub_818E8();
  v13 = STLocalizedString(v11);

  v14 = v13;
  if (!v13)
  {
    sub_81928();
    v14 = sub_818E8();
  }

  v106 = v14;
  v93 = v0;
  v15 = sub_81928();
  v17 = v16;
  type metadata accessor for StorageShared(0);
  sub_1635C();
  v18 = sub_80E68();
  v20 = v19;
  LOBYTE(v107) = 0;
  sub_814C8();
  v21 = v109;
  v22 = v110;
  if (qword_B7858 != -1)
  {
    swift_once();
  }

  v23 = qword_BCF88;
  v24 = sub_80C38();
  v109 = v18;
  v110 = v20;
  LOBYTE(v111) = v21;
  v112 = v22;
  v113 = v24;
  v114 = v23;
  v107 = v15;
  v108 = v17;
  v92 = v17;
  v25 = v23;
  v26 = sub_147EC(&qword_B85D8, &qword_89730);
  v27 = sub_405EC();
  v28 = sub_14ED0();
  sub_81358();

  v30 = v101;
  v29 = v102;
  v31 = v97;
  (*(v101 + 104))(v97, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v102);
  v109 = v26;
  v110 = &type metadata for String;
  v111 = v27;
  v112 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v96;
  v34 = v98;
  sub_813A8();
  (*(v30 + 8))(v31, v29);
  (*(v95 + 8))(v6, v34);
  v35 = v103;
  sub_80D08();
  v109 = v34;
  v110 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v36 = v100;
  sub_81318();
  (*(v104 + 8))(v35, v105);
  (*(v99 + 8))(v33, v36);
  v37 = objc_allocWithZone(sub_147EC(&qword_B8600, &unk_89740));
  v38 = sub_81088();
  v39 = [v38 view];
  if (!v39)
  {

    __break(1u);
    goto LABEL_21;
  }

  v40 = v39;
  v41 = v93;
  v42 = [v93 view];
  if (!v42)
  {
LABEL_21:

    __break(1u);
    goto LABEL_22;
  }

  v43 = v42;
  [v42 bounds];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  [v40 setFrame:{v45, v47, v49, v51}];
  v52 = [v38 view];
  if (!v52)
  {
LABEL_22:

    __break(1u);
    goto LABEL_23;
  }

  v53 = v52;
  [v52 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v41 addChildViewController:v38];
  v54 = [v41 view];
  if (!v54)
  {
LABEL_23:

    __break(1u);
    goto LABEL_24;
  }

  v55 = v54;
  v56 = [v38 view];
  if (!v56)
  {
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  v57 = v56;
  [v55 addSubview:v56];

  [v38 didMoveToParentViewController:v41];
  v58 = [v41 navigationItem];
  v59 = v106;
  [v58 setTitle:v106];

  v60 = [v41 navigationItem];
  [v60 setLargeTitleDisplayMode:2];

  v61 = [v41 view];
  if (!v61)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v62 = v61;
  sub_147EC(&qword_B8C70, &qword_89E70);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_896D0;
  v64 = [v41 view];
  if (!v64)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v65 = v64;
  v66 = [v64 topAnchor];

  v67 = [v38 view];
  if (!v67)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v68 = v67;
  v69 = [v67 topAnchor];

  v70 = [v66 constraintEqualToAnchor:v69];
  *(v63 + 32) = v70;
  v71 = [v41 view];
  if (!v71)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v72 = v71;
  v73 = [v71 leadingAnchor];

  v74 = [v38 view];
  if (!v74)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v75 = v74;
  v76 = [v74 leadingAnchor];

  v77 = [v73 constraintEqualToAnchor:v76];
  *(v63 + 40) = v77;
  v78 = [v41 view];
  if (!v78)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v79 = v78;
  v80 = [v78 bottomAnchor];

  v81 = [v38 view];
  if (!v81)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v82 = v81;
  v83 = [v81 bottomAnchor];

  v84 = [v80 constraintEqualToAnchor:v83];
  *(v63 + 48) = v84;
  v85 = [v41 view];
  if (!v85)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v86 = v85;
  v87 = [v85 trailingAnchor];

  v88 = [v38 view];
  if (v88)
  {

    v89 = [v88 trailingAnchor];

    v90 = [v87 constraintEqualToAnchor:v89];
    *(v63 + 56) = v90;
    sub_40730();
    isa = sub_819E8().super.isa;

    [v62 addConstraints:isa];

    return;
  }

LABEL_33:
  __break(1u);
}

id sub_40594(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HiddenAppsListWrapper();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_405EC()
{
  result = qword_B85E0;
  if (!qword_B85E0)
  {
    sub_14E2C(&qword_B85D8, &qword_89730);
    sub_40678();
    sub_406CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B85E0);
  }

  return result;
}

unint64_t sub_40678()
{
  result = qword_B85E8;
  if (!qword_B85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B85E8);
  }

  return result;
}

unint64_t sub_406CC()
{
  result = qword_B85F0;
  if (!qword_B85F0)
  {
    sub_14E2C(&qword_B85F8, &qword_89738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B85F0);
  }

  return result;
}

unint64_t sub_40730()
{
  result = qword_B8608;
  if (!qword_B8608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_B8608);
  }

  return result;
}

__n128 sub_4077C(uint64_t a1, __int128 *a2)
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
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_407C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_40810(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_408B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_147EC(&qword_B8610, &qword_89918);
  v4 = __chkstk_darwin(v3 - 8);
  v56 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v50[-v6];
  v53 = sub_147EC(&qword_B8618, &qword_89920);
  __chkstk_darwin(v53);
  v9 = &v50[-v8];
  v52 = sub_147EC(&qword_B8620, &qword_89928);
  __chkstk_darwin(v52);
  v11 = &v50[-v10];
  v12 = sub_147EC(&qword_B8628, &qword_89930);
  __chkstk_darwin(v12);
  v14 = &v50[-v13];
  v15 = sub_147EC(&qword_B8630, &qword_89938);
  v16 = __chkstk_darwin(v15 - 8);
  v54 = &v50[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v19 = &v50[-v18];
  v20 = *(a1 + 176);
  v21 = *(a1 + 184);
  if (*(a1 + 168))
  {
    v51 = *(a1 + 224);
    v57[31] = &OBJC_PROTOCOL___PSController;
    if (swift_dynamicCastTypeToObjCProtocolConditional())
    {
      v22 = swift_allocObject();
      v23 = *(a1 + 208);
      *(v22 + 208) = *(a1 + 192);
      *(v22 + 224) = v23;
      *(v22 + 240) = *(a1 + 224);
      *(v22 + 256) = *(a1 + 240);
      v24 = *(a1 + 144);
      *(v22 + 144) = *(a1 + 128);
      *(v22 + 160) = v24;
      v25 = *(a1 + 176);
      *(v22 + 176) = *(a1 + 160);
      *(v22 + 192) = v25;
      v26 = *(a1 + 80);
      *(v22 + 80) = *(a1 + 64);
      *(v22 + 96) = v26;
      v27 = *(a1 + 112);
      *(v22 + 112) = *(a1 + 96);
      *(v22 + 128) = v27;
      v28 = *(a1 + 16);
      *(v22 + 16) = *a1;
      *(v22 + 32) = v28;
      v29 = *(a1 + 48);
      *(v22 + 48) = *(a1 + 32);
      *(v22 + 64) = v29;
      v30 = swift_allocObject();
      v31 = *(a1 + 208);
      *(v30 + 208) = *(a1 + 192);
      *(v30 + 224) = v31;
      *(v30 + 240) = *(a1 + 224);
      *(v30 + 256) = *(a1 + 240);
      v32 = *(a1 + 144);
      *(v30 + 144) = *(a1 + 128);
      *(v30 + 160) = v32;
      v33 = *(a1 + 176);
      *(v30 + 176) = *(a1 + 160);
      *(v30 + 192) = v33;
      v34 = *(a1 + 80);
      *(v30 + 80) = *(a1 + 64);
      *(v30 + 96) = v34;
      v35 = *(a1 + 112);
      *(v30 + 112) = *(a1 + 96);
      *(v30 + 128) = v35;
      v36 = *(a1 + 16);
      *(v30 + 16) = *a1;
      *(v30 + 32) = v36;
      v37 = *(a1 + 48);
      *(v30 + 48) = *(a1 + 32);
      *(v30 + 64) = v37;
      *v14 = swift_getKeyPath();
      sub_147EC(&qword_B8570, &qword_8A370);
      swift_storeEnumTagMultiPayload();
      v38 = v12[9];
      *(v14 + v38) = swift_getKeyPath();
      sub_147EC(&qword_B8680, &unk_895A0);
      swift_storeEnumTagMultiPayload();
      *(v14 + v12[10]) = v51;
      v39 = (v14 + v12[11]);
      *v39 = sub_43204;
      v39[1] = v22;
      v40 = (v14 + v12[12]);
      *v40 = sub_43270;
      v40[1] = v30;
      sub_14F6C(v14, v11, &qword_B8628, &qword_89930);
      swift_storeEnumTagMultiPayload();
      sub_43280(a1, v57);
      sub_43280(a1, v57);
      sub_14F24(&qword_B8668, &qword_B8628, &qword_89930, &unk_89528);
      sub_14F24(&unk_B8670, &qword_B8618, &qword_89920, &protocol conformance descriptor for HStack<A>);
      sub_810A8();
      sub_14FD4(v14, &qword_B8628, &qword_89930);
LABEL_6:
      v41 = 0;
      goto LABEL_7;
    }
  }

  v41 = 1;
  if (v21)
  {
    *v9 = sub_81008();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v42 = sub_147EC(&qword_B8660, &qword_89960);
    sub_4127C(a1, v20, v21, &v9[*(v42 + 44)]);
    sub_14F6C(v9, v11, &qword_B8618, &qword_89920);
    swift_storeEnumTagMultiPayload();
    sub_14F24(&qword_B8668, &qword_B8628, &qword_89930, &unk_89528);
    sub_14F24(&unk_B8670, &qword_B8618, &qword_89920, &protocol conformance descriptor for HStack<A>);
    sub_810A8();
    sub_14FD4(v9, &qword_B8618, &qword_89920);
    goto LABEL_6;
  }

LABEL_7:
  v43 = sub_147EC(&qword_B8638, &qword_89940);
  (*(*(v43 - 8) + 56))(v19, v41, 1, v43);
  *v7 = sub_81008();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v44 = sub_147EC(&qword_B8640, &qword_89948);
  __chkstk_darwin(v44);
  *&v50[-16] = a1;
  sub_147EC(&qword_B8648, &qword_89950);
  sub_4314C();
  sub_814B8();
  v45 = v54;
  sub_14F6C(v19, v54, &qword_B8630, &qword_89938);
  v46 = v56;
  sub_14F6C(v7, v56, &qword_B8610, &qword_89918);
  v47 = v55;
  sub_14F6C(v45, v55, &qword_B8630, &qword_89938);
  v48 = sub_147EC(&qword_B8658, &qword_89958);
  sub_14F6C(v46, v47 + *(v48 + 48), &qword_B8610, &qword_89918);
  sub_14FD4(v7, &qword_B8610, &qword_89918);
  sub_14FD4(v19, &qword_B8630, &qword_89938);
  sub_14FD4(v46, &qword_B8610, &qword_89918);
  return sub_14FD4(v45, &qword_B8630, &qword_89938);
}

uint64_t sub_41044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_147EC(&qword_B8688, &qword_899D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-v6];
  v24 = a1;
  v23 = a1;
  sub_432C8();
  sub_814B8();
  sub_147EC(&qword_B8698, &unk_899E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_886E0;
  v9 = sub_811A8();
  *(inited + 32) = v9;
  v10 = sub_811B8();
  *(inited + 33) = v10;
  v11 = sub_811C8();
  sub_811C8();
  if (sub_811C8() != v9)
  {
    v11 = sub_811C8();
  }

  sub_811C8();
  if (sub_811C8() != v10)
  {
    v11 = sub_811C8();
  }

  sub_80CC8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v5 + 32))(a2, v7, v4);
  result = sub_147EC(&unk_B86A0, &unk_8B770);
  v21 = a2 + *(result + 36);
  *v21 = v11;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_4127C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v99 = a2;
  *(&v99 + 1) = a3;
  v121 = a4;
  v95 = sub_147EC(&qword_B86B0, &qword_88500);
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v101 = &v92 - v5;
  v6 = sub_147EC(&qword_B86B8, &qword_89A28);
  v96 = *(v6 - 8);
  v97 = v6;
  __chkstk_darwin(v6);
  v94 = &v92 - v7;
  v104 = sub_147EC(&qword_B86C0, &qword_89A30);
  __chkstk_darwin(v104);
  v98 = &v92 - v8;
  v102 = sub_147EC(&qword_B86C8, &qword_89A38);
  __chkstk_darwin(v102);
  v103 = &v92 - v9;
  v117 = sub_147EC(&qword_B86D0, &qword_89A40);
  __chkstk_darwin(v117);
  v105 = &v92 - v10;
  v112 = sub_147EC(&qword_B86D8, &qword_89A48);
  __chkstk_darwin(v112);
  v100 = &v92 - v11;
  v113 = sub_147EC(&qword_B86E0, &qword_89A50);
  __chkstk_darwin(v113);
  v115 = &v92 - v12;
  v108 = sub_147EC(&qword_B86E8, &qword_89A58);
  __chkstk_darwin(v108);
  v109 = &v92 - v13;
  v114 = sub_147EC(&unk_B86F0, &unk_89A60);
  __chkstk_darwin(v114);
  v111 = &v92 - v14;
  v110 = sub_147EC(&qword_B7B68, &unk_8A470);
  v107 = *(v110 - 1);
  __chkstk_darwin(v110);
  v106 = &v92 - v15;
  v16 = sub_147EC(&qword_B8700, &qword_89A70);
  v17 = __chkstk_darwin(v16 - 8);
  v120 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v116 = &v92 - v19;
  v118 = sub_147EC(&qword_B8688, &qword_899D8);
  v20 = *(v118 - 1);
  __chkstk_darwin(v118);
  v22 = &v92 - v21;
  v23 = sub_147EC(&unk_B86A0, &unk_8B770);
  v24 = __chkstk_darwin(v23);
  v119 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v92 - v27;
  __chkstk_darwin(v26);
  v122 = &v92 - v29;
  v124 = a1;
  v123 = a1;
  sub_432C8();
  sub_814B8();
  sub_147EC(&qword_B8698, &unk_899E0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_886E0;
  v31 = sub_811A8();
  *(v30 + 32) = v31;
  v32 = sub_811B8();
  *(v30 + 33) = v32;
  v33 = sub_811C8();
  sub_811C8();
  if (sub_811C8() != v31)
  {
    v33 = sub_811C8();
  }

  sub_811C8();
  if (sub_811C8() != v32)
  {
    v33 = sub_811C8();
  }

  sub_80CC8();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  (*(v20 + 32))(v28, v22, v118);
  v42 = &v28[*(v23 + 36)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  sub_43324(v28, v122);
  v44 = *(a1 + 16);
  v43 = *(a1 + 24);
  v45 = *(a1 + 48);
  v46 = *(a1 + 56);
  v47 = *(a1 + 144);
  v139 = *(a1 + 128);
  v140 = v47;
  v141 = *(a1 + 160);
  v48 = *(a1 + 80);
  v135 = *(a1 + 64);
  v136 = v48;
  v49 = *(a1 + 112);
  v137 = *(a1 + 96);
  v138 = v49;
  if (*(a1 + 200))
  {
    v50 = *(a1 + 192);
    if (v50)
    {
      if (v50 == 1)
      {
        *&v142 = sub_81478();
        *&v128 = 0;
        *(&v128 + 1) = 0xE000000000000000;
        sub_81D08(37);

        *&v128 = 0xD000000000000023;
        *(&v128 + 1) = 0x8000000000095790;
        v145._countAndFlagsBits = v44;
        v145._object = v43;
        sub_81978(v145);
        v51 = v100;
        sub_81398();

        v52 = (v51 + *(v112 + 36));
        v53 = *(sub_147EC(&qword_B8748, &qword_89A90) + 28);
        sub_81068();
        v54 = sub_81078();
        (*(*(v54 - 8) + 56))(v52 + v53, 0, 1, v54);
        *v52 = swift_getKeyPath();
        sub_14F6C(v51, v109, &qword_B86D8, &qword_89A48);
        swift_storeEnumTagMultiPayload();
        sub_14F24(&qword_B8760, &qword_B7B68, &unk_8A470, &protocol conformance descriptor for ProgressView<A, B>);
        sub_433A8();
        v55 = v111;
        sub_810A8();
        sub_14F6C(v55, v115, &unk_B86F0, &unk_89A60);
        swift_storeEnumTagMultiPayload();
        sub_43680();
        sub_43738();
        v56 = v116;
        sub_810A8();
        sub_14FD4(v55, &unk_B86F0, &unk_89A60);
        v57 = v51;
      }

      else
      {
        *&v142 = sub_81478();
        *&v128 = 0;
        *(&v128 + 1) = 0xE000000000000000;
        sub_81D08(35);

        *&v128 = 0xD000000000000021;
        *(&v128 + 1) = 0x8000000000095740;
        v146._countAndFlagsBits = v44;
        v146._object = v43;
        sub_81978(v146);
        v72 = v100;
        sub_81398();

        v73 = (v72 + *(v112 + 36));
        v74 = *(sub_147EC(&qword_B8748, &qword_89A90) + 28);
        sub_81068();
        v75 = sub_81078();
        (*(*(v75 - 8) + 56))(v73 + v74, 0, 1, v75);
        *v73 = swift_getKeyPath();
        sub_14F6C(v72, v103, &qword_B86D8, &qword_89A48);
        swift_storeEnumTagMultiPayload();
        sub_433A8();
        sub_4351C();
        v76 = v105;
        sub_810A8();
        sub_14F6C(v76, v115, &qword_B86D0, &qword_89A40);
        swift_storeEnumTagMultiPayload();
        sub_43680();
        sub_43738();
        v56 = v116;
        sub_810A8();
        sub_14FD4(v76, &qword_B86D0, &qword_89A40);
        v57 = v72;
      }

      sub_14FD4(v57, &qword_B86D8, &qword_89A48);
    }

    else
    {
      v142 = v99;
      v62 = swift_allocObject();
      v63 = *(a1 + 208);
      *(v62 + 208) = *(a1 + 192);
      *(v62 + 224) = v63;
      *(v62 + 240) = *(a1 + 224);
      *(v62 + 256) = *(a1 + 240);
      v64 = *(a1 + 144);
      *(v62 + 144) = *(a1 + 128);
      *(v62 + 160) = v64;
      v65 = *(a1 + 176);
      *(v62 + 176) = *(a1 + 160);
      *(v62 + 192) = v65;
      v66 = *(a1 + 80);
      *(v62 + 80) = *(a1 + 64);
      *(v62 + 96) = v66;
      v67 = *(a1 + 112);
      *(v62 + 112) = *(a1 + 96);
      *(v62 + 128) = v67;
      v68 = *(a1 + 16);
      *(v62 + 16) = *a1;
      *(v62 + 32) = v68;
      v69 = *(a1 + 48);
      *(v62 + 48) = *(a1 + 32);
      *(v62 + 64) = v69;

      sub_43280(a1, &v128);
      v70 = sub_14ED0();
      sub_81568();
      v142 = v139;
      v143 = v140;
      v144 = v141;
      v118 = v43;
      v92 = v44;
      if (*(&v140 + 1) && (v71 = *(&v142 + 1)) != 0)
      {
        v45 = v142;
        sub_14F6C(&v142, &v128, &qword_B8708, &qword_89A78);

        v46 = v71;
      }

      else
      {
        sub_14F6C(&v142, &v128, &qword_B8708, &qword_89A78);
      }

      v126 = v45;
      v127 = v46;
      v125 = *(a1 + 232);
      sub_147EC(&unk_B8710, &qword_89A80);
      v77 = sub_814F8();
      v110 = &v92;
      v128 = v142;
      v129 = v143;
      LOBYTE(v130) = v144;
      __chkstk_darwin(v77);
      v91 = sub_14F24(&qword_B8F20, &qword_B86B0, &qword_88500, &protocol conformance descriptor for Button<A>);
      v78 = v95;
      v111 = v70;
      v79 = v94;
      v80 = v101;
      sub_81368();

      sub_14FD4(&v142, &qword_B8708, &qword_89A78);

      (*(v93 + 8))(v80, v78);
      *&v128 = 0;
      *(&v128 + 1) = 0xE000000000000000;
      sub_81D08(29);

      *&v128 = 0xD00000000000001BLL;
      *(&v128 + 1) = 0x80000000000956F0;
      v147._countAndFlagsBits = v92;
      v147._object = v118;
      sub_81978(v147);
      *&v128 = v78;
      *(&v128 + 1) = &type metadata for String;
      *&v129 = v78;
      *(&v129 + 1) = &type metadata for Text;
      v130 = &type metadata for Recommendation.Confirmation;
      v131 = v91;
      v132 = v111;
      v133 = v91;
      v134 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      v81 = v97;
      v82 = v98;
      sub_81398();

      (*(v96 + 8))(v79, v81);
      sub_14F6C(v82, v103, &qword_B86C0, &qword_89A30);
      swift_storeEnumTagMultiPayload();
      sub_433A8();
      sub_4351C();
      v83 = v105;
      sub_810A8();
      sub_14F6C(v83, v115, &qword_B86D0, &qword_89A40);
      swift_storeEnumTagMultiPayload();
      sub_43680();
      sub_43738();
      v56 = v116;
      sub_810A8();
      sub_14FD4(v83, &qword_B86D0, &qword_89A40);
      sub_14FD4(v82, &qword_B86C0, &qword_89A30);
    }
  }

  else
  {
    v58 = v106;
    sub_80D28();
    v59 = v107;
    v60 = v110;
    (*(v107 + 16))(v109, v58, v110);
    swift_storeEnumTagMultiPayload();
    sub_14F24(&qword_B8760, &qword_B7B68, &unk_8A470, &protocol conformance descriptor for ProgressView<A, B>);
    sub_433A8();
    v61 = v111;
    sub_810A8();
    sub_14F6C(v61, v115, &unk_B86F0, &unk_89A60);
    swift_storeEnumTagMultiPayload();
    sub_43680();
    sub_43738();
    v56 = v116;
    sub_810A8();
    sub_14FD4(v61, &unk_B86F0, &unk_89A60);
    (*(v59 + 8))(v58, v60);
  }

  v84 = v122;
  v85 = v119;
  sub_14F6C(v122, v119, &unk_B86A0, &unk_8B770);
  v86 = v120;
  sub_14F6C(v56, v120, &qword_B8700, &qword_89A70);
  v87 = v121;
  sub_14F6C(v85, v121, &unk_B86A0, &unk_8B770);
  v88 = sub_147EC(&qword_B8770, &qword_89A98);
  v89 = v87 + *(v88 + 48);
  *v89 = 0;
  *(v89 + 8) = 1;
  sub_14F6C(v86, v87 + *(v88 + 64), &qword_B8700, &qword_89A70);
  sub_14FD4(v56, &qword_B8700, &qword_89A70);
  sub_14FD4(v84, &unk_B86A0, &unk_8B770);
  sub_14FD4(v86, &qword_B8700, &qword_89A70);
  return sub_14FD4(v85, &unk_B86A0, &unk_8B770);
}

uint64_t sub_424DC(uint64_t a1)
{
  v2 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  if (*(a1 + 152))
  {
    v16[0] = *(a1 + 232);
    v17 = 1;
    sub_147EC(&unk_B8710, &qword_89A80);
    return sub_814E8();
  }

  else
  {
    v16[0] = *(a1 + 232);
    v17 = 0;
    sub_147EC(&unk_B8710, &qword_89A80);
    sub_814E8();
    v6 = sub_81AB8();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_81A88();
    sub_43280(a1, v16);
    v7 = sub_81A78();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = &protocol witness table for MainActor;
    v9 = *(a1 + 208);
    *(v8 + 224) = *(a1 + 192);
    *(v8 + 240) = v9;
    *(v8 + 256) = *(a1 + 224);
    *(v8 + 272) = *(a1 + 240);
    v10 = *(a1 + 144);
    *(v8 + 160) = *(a1 + 128);
    *(v8 + 176) = v10;
    v11 = *(a1 + 176);
    *(v8 + 192) = *(a1 + 160);
    *(v8 + 208) = v11;
    v12 = *(a1 + 80);
    *(v8 + 96) = *(a1 + 64);
    *(v8 + 112) = v12;
    v13 = *(a1 + 112);
    *(v8 + 128) = *(a1 + 96);
    *(v8 + 144) = v13;
    v14 = *(a1 + 16);
    *(v8 + 32) = *a1;
    *(v8 + 48) = v14;
    v15 = *(a1 + 48);
    *(v8 + 64) = *(a1 + 32);
    *(v8 + 80) = v15;
    sub_68AE4(0, 0, v4, &unk_89AE8, v8);
  }
}

uint64_t sub_426C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_147EC(&qword_B8780, &qword_8B7E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23[-1] - v9;
  LODWORD(v9) = *(a1 + 32);
  v23[31] = a2;
  v23[32] = a3;
  if (v9 == 1)
  {

    sub_80C98();
    v11 = sub_80CB8();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_80CB8();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = swift_allocObject();
  v14 = *(a4 + 208);
  *(v13 + 208) = *(a4 + 192);
  *(v13 + 224) = v14;
  *(v13 + 240) = *(a4 + 224);
  *(v13 + 256) = *(a4 + 240);
  v15 = *(a4 + 144);
  *(v13 + 144) = *(a4 + 128);
  *(v13 + 160) = v15;
  v16 = *(a4 + 176);
  *(v13 + 176) = *(a4 + 160);
  *(v13 + 192) = v16;
  v17 = *(a4 + 80);
  *(v13 + 80) = *(a4 + 64);
  *(v13 + 96) = v17;
  v18 = *(a4 + 112);
  *(v13 + 112) = *(a4 + 96);
  *(v13 + 128) = v18;
  v19 = *(a4 + 16);
  *(v13 + 16) = *a4;
  *(v13 + 32) = v19;
  v20 = *(a4 + 48);
  *(v13 + 48) = *(a4 + 32);
  *(v13 + 64) = v20;
  sub_43280(a4, v23);
  sub_14ED0();
  return sub_81548();
}

uint64_t sub_428B8(uint64_t a1)
{
  v2 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v16[0] = *(a1 + 232);
  v17 = 0;
  sub_147EC(&unk_B8710, &qword_89A80);
  sub_814E8();
  v5 = sub_81AB8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_81A88();
  sub_43280(a1, v16);
  v6 = sub_81A78();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = *(a1 + 208);
  *(v7 + 224) = *(a1 + 192);
  *(v7 + 240) = v8;
  *(v7 + 256) = *(a1 + 224);
  *(v7 + 272) = *(a1 + 240);
  v9 = *(a1 + 144);
  *(v7 + 160) = *(a1 + 128);
  *(v7 + 176) = v9;
  v10 = *(a1 + 176);
  *(v7 + 192) = *(a1 + 160);
  *(v7 + 208) = v10;
  v11 = *(a1 + 80);
  *(v7 + 96) = *(a1 + 64);
  *(v7 + 112) = v11;
  v12 = *(a1 + 112);
  *(v7 + 128) = *(a1 + 96);
  *(v7 + 144) = v12;
  v13 = *(a1 + 16);
  *(v7 + 32) = *a1;
  *(v7 + 48) = v13;
  v14 = *(a1 + 48);
  *(v7 + 64) = *(a1 + 32);
  *(v7 + 80) = v14;
  sub_68AE4(0, 0, v4, &unk_89AE0, v7);
}

uint64_t sub_42A64@<X0>(uint64_t a2@<X8>)
{
  sub_14ED0();

  result = sub_81288();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_42AD0@<X0>(uint64_t a2@<X8>)
{
  sub_170A4();
  sub_14ED0();
  v3 = sub_81288();
  v5 = v4;
  v7 = v6;
  sub_811E8();
  v8 = sub_81258();
  v10 = v9;
  v12 = v11;

  sub_15034(v3, v5, v7 & 1);

  sub_81448();
  v13 = sub_81228();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_15034(v8, v10, v12 & 1);

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  return result;
}

double sub_42C34@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_81438();
  sub_81688();
  sub_80D68();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 40) = v8;
  return result;
}

uint64_t sub_42CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_81A88();
  v4[3] = sub_81A78();
  v6 = sub_81A58();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_42D48, v6, v5);
}

uint64_t sub_42D48()
{
  v1 = v0[2];
  if (*v1)
  {
    v0[6] = *(*v1 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationController);
    v2 = v1[2];
    v3 = v1[3];

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_42E8C;

    return sub_5237C(v2, v3);
  }

  else
  {
    type metadata accessor for StorageShared(0);
    sub_439F4(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);

    return sub_80E58();
  }
}

uint64_t sub_42E8C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_15E64, v3, v2);
}

uint64_t sub_42FD0@<X0>(uint64_t a2@<X8>)
{
  sub_14ED0();

  result = sub_81288();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_4303C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v6 = *(a1 + 88);
  v5 = *(a1 + 96);
  v7 = *(a1 + 80);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v7;
  *(a2 + 40) = v6;
  *(a2 + 48) = v5;
  *(a2 + 56) = 2;
  sub_2092C(v3, v4, v7);
}

uint64_t sub_430D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  v10[12] = *(v1 + 192);
  v10[13] = v2;
  v10[14] = *(v1 + 224);
  v11 = *(v1 + 240);
  v3 = *(v1 + 144);
  v10[8] = *(v1 + 128);
  v10[9] = v3;
  v4 = *(v1 + 176);
  v10[10] = *(v1 + 160);
  v10[11] = v4;
  v5 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v5;
  v6 = *(v1 + 112);
  v10[6] = *(v1 + 96);
  v10[7] = v6;
  v7 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v7;
  v8 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v8;
  return sub_408B8(v10, a1);
}

unint64_t sub_4314C()
{
  result = qword_B8650;
  if (!qword_B8650)
  {
    sub_14E2C(&qword_B8648, &qword_89950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8650);
  }

  return result;
}

uint64_t sub_431D4(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 < 2u || a3 == 3;
  if (v3 || a3 == 2)
  {
  }

  return v4;
}

unint64_t sub_432C8()
{
  result = qword_B8690;
  if (!qword_B8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8690);
  }

  return result;
}

uint64_t sub_43324(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&unk_B86A0, &unk_8B770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_433A8()
{
  result = qword_B8720;
  if (!qword_B8720)
  {
    sub_14E2C(&qword_B86D8, &qword_89A48);
    sub_43460();
    sub_14F24(&qword_B8740, &qword_B8748, &qword_89A90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8720);
  }

  return result;
}

unint64_t sub_43460()
{
  result = qword_B8728;
  if (!qword_B8728)
  {
    sub_14E2C(&qword_B8730, &qword_89A88);
    sub_439F4(&qword_B8738, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8728);
  }

  return result;
}

unint64_t sub_4351C()
{
  result = qword_B8750;
  if (!qword_B8750)
  {
    sub_14E2C(&qword_B86C0, &qword_89A30);
    sub_14E2C(&qword_B86B0, &qword_88500);
    sub_14F24(&qword_B8F20, &qword_B86B0, &qword_88500, &protocol conformance descriptor for Button<A>);
    sub_14ED0();
    swift_getOpaqueTypeConformance2();
    sub_439F4(&qword_B8738, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8750);
  }

  return result;
}

unint64_t sub_43680()
{
  result = qword_B8758;
  if (!qword_B8758)
  {
    sub_14E2C(&unk_B86F0, &unk_89A60);
    sub_14F24(&qword_B8760, &qword_B7B68, &unk_8A470, &protocol conformance descriptor for ProgressView<A, B>);
    sub_433A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8758);
  }

  return result;
}

unint64_t sub_43738()
{
  result = qword_B8768;
  if (!qword_B8768)
  {
    sub_14E2C(&qword_B86D0, &qword_89A40);
    sub_433A8();
    sub_4351C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8768);
  }

  return result;
}

uint64_t sub_437E8(uint64_t a1)
{
  v2 = sub_147EC(&qword_B8778, &qword_89AD0);
  __chkstk_darwin(v2 - 8);
  sub_14F6C(a1, &v5 - v3, &qword_B8778, &qword_89AD0);
  return sub_80F18();
}

uint64_t sub_43894()
{

  sub_431D4(*(v0 + 80), *(v0 + 88), *(v0 + 96));

  if (*(v0 + 168))
  {
  }

  if (*(v0 + 224))
  {
  }

  return _swift_deallocObject(v0, 264, 7);
}

uint64_t sub_43944(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22EB0;

  return sub_42CB0(a1, v4, v5, v1 + 32);
}

uint64_t sub_439F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_43A3C()
{
  swift_unknownObjectRelease();

  sub_431D4(*(v0 + 96), *(v0 + 104), *(v0 + 112));

  if (*(v0 + 184))
  {
  }

  if (*(v0 + 240))
  {
  }

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t sub_43AE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_16268;

  return sub_42CB0(a1, v4, v5, v1 + 32);
}

unint64_t sub_43B9C()
{
  result = qword_B8788;
  if (!qword_B8788)
  {
    sub_14E2C(&qword_B8790, &qword_89AF0);
    sub_14F24(&qword_B8798, &unk_B87A0, &qword_89AF8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8788);
  }

  return result;
}

void *sub_43C64(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_81D88())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_81D18();
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_43D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_147EC(&unk_B88F8, &qword_89BA0);
  v4 = __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v9 = type metadata accessor for FileProviderAppDetailView(0);
  v37 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = 0;
  sub_147EC(&qword_B88E8, &qword_89B98);
  sub_814C8();
  v13 = v42;
  v12 = v43;
  v11[4] = v42;
  v11[5] = v12;
  v35 = v12;
  v14 = *(v9 + 28);
  v15 = sub_81168();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_14F6C(v8, v6, &unk_B88F8, &qword_89BA0);
  v36 = v14;
  sub_814C8();
  sub_14FD4(v8, &unk_B88F8, &qword_89BA0);
  v16 = v11 + *(v9 + 32);
  LOBYTE(v41) = 0;
  sub_814C8();
  v17 = v43;
  *v16 = v42;
  *(v16 + 1) = v17;
  v18 = [objc_opt_self() sharedMonitor];
  v19 = [v18 fpDomains];

  sub_1A7F4(0, &qword_B8C78, FPProviderDomain_ptr);
  v20 = sub_819F8();

  v40 = a1;
  v21 = sub_43C64(sub_4DA8C, v39, v20);

  if (v21)
  {
    v22 = objc_opt_self();
    v23 = [v22 defaultManager];
    v24 = [v23 rootCollectionForProviderDomain:v21];

    v25 = type metadata accessor for ObservableItemCollection(0);
    v26 = objc_allocWithZone(v25);
    v41 = sub_487C8(v24);
    sub_814C8();
    v27 = v43;
    *v11 = v42;
    v11[1] = v27;
    v28 = [v22 defaultManager];
    v29 = [v28 trashCollectionForProviderDomain:v21];

    v30 = objc_allocWithZone(v25);
    v41 = sub_487C8(v29);
    v31 = v41;
    sub_814C8();

    v32 = v43;
    v11[2] = v42;
    v11[3] = v32;
    v33 = v38;
    sub_4C60C(v11, v38, type metadata accessor for FileProviderAppDetailView);
    (*(v37 + 56))(v33, 0, 1, v9);
    sub_4D5C0(a1, type metadata accessor for Application);
    return sub_4D5C0(v11, type metadata accessor for FileProviderAppDetailView);
  }

  else
  {
    sub_4D5C0(a1, type metadata accessor for Application);

    sub_14FD4(v11 + v36, &qword_B8860, &unk_89B70);

    return (*(v37 + 56))(v38, 1, 1, v9);
  }
}

uint64_t sub_44228(id *a1, void *a2)
{
  v3 = [*a1 topLevelBundleIdentifier];
  v4 = sub_81928();
  v6 = v5;

  if (v4 == *a2 && v6 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_81E18();
  }

  return v8 & 1;
}

uint64_t sub_442C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = sub_147EC(&qword_B8EB0, &qword_8A0B0);
  __chkstk_darwin(v3);
  v42 = (v40 - v4);
  v5 = sub_147EC(&qword_B8EB8, &qword_8A0B8);
  v6 = __chkstk_darwin(v5 - 8);
  v44 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v40 - v8;
  v41 = sub_147EC(&qword_B8EC0, &qword_8A0C0);
  __chkstk_darwin(v41);
  v11 = v40 - v10;
  v12 = sub_147EC(&qword_B8EC8, &qword_8A0C8);
  v13 = __chkstk_darwin(v12 - 8);
  v43 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v40 - v15;
  v17 = v1[1];
  v47 = *v1;
  v48 = v17;
  sub_147EC(&qword_B8A38, &qword_89CB0);
  sub_814D8();
  v18 = v46;
  swift_getKeyPath();
  v47 = v18;
  sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection, &unk_89C68);
  sub_80A68();

  v19 = *&v18[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];
  if (v19 >> 62)
  {
    v20 = sub_81D88();
  }

  else
  {
    v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
  }

  v22 = 1;
  if (v20)
  {
    v40[1] = v40;
    __chkstk_darwin(v21);
    v40[-2] = v2;
    *v11 = sub_81008();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v23 = sub_147EC(&qword_B8ED0, &qword_8A0D0);
    sub_44A6C(&v11[*(v23 + 44)]);
    type metadata accessor for FileProviderDetailView(0);
    sub_14F24(&qword_B8ED8, &qword_B8EC0, &qword_8A0C0, &protocol conformance descriptor for HStack<A>);
    sub_4C424(&qword_B8A30, type metadata accessor for FileProviderDetailView, &unk_89D98);
    sub_81618();
    v22 = 0;
  }

  v24 = sub_147EC(&qword_B8EE0, &qword_8A0D8);
  (*(*(v24 - 8) + 56))(v16, v22, 1, v24);
  v25 = *(v2 + 24);
  v47 = *(v2 + 16);
  v48 = v25;
  sub_814D8();
  v26 = v46;
  swift_getKeyPath();
  v47 = v26;
  sub_80A68();

  v27 = *&v26[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];
  if (v27 >> 62)
  {
    v28 = sub_81D88();
  }

  else
  {
    v28 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
  }

  v30 = 1;
  if (v28)
  {
    __chkstk_darwin(v29);
    v40[-2] = v2;
    v31 = sub_81008();
    v32 = v42;
    *v42 = v31;
    v32[1] = 0;
    *(v32 + 16) = 1;
    v33 = sub_147EC(&qword_B8EE8, &qword_8A0E0);
    sub_44D98(v2, (v32 + *(v33 + 44)));
    type metadata accessor for FileProviderDetailView(0);
    sub_14F24(&qword_B8EF0, &qword_B8EB0, &qword_8A0B0, &protocol conformance descriptor for HStack<A>);
    sub_4C424(&qword_B8A30, type metadata accessor for FileProviderDetailView, &unk_89D98);
    sub_81618();
    v30 = 0;
  }

  v34 = sub_147EC(&qword_B8EF8, &qword_8A0E8);
  (*(*(v34 - 8) + 56))(v9, v30, 1, v34);
  v35 = v43;
  sub_14F6C(v16, v43, &qword_B8EC8, &qword_8A0C8);
  v36 = v44;
  sub_4E810(v9, v44);
  v37 = v45;
  sub_14F6C(v35, v45, &qword_B8EC8, &qword_8A0C8);
  v38 = sub_147EC(&unk_B8F00, &unk_8A0F0);
  sub_4E810(v36, v37 + *(v38 + 48));
  sub_4E880(v9);
  sub_14FD4(v16, &qword_B8EC8, &qword_8A0C8);
  sub_4E880(v36);
  return sub_14FD4(v35, &qword_B8EC8, &qword_8A0C8);
}

__n128 sub_4497C@<Q0>(uint64_t a2@<X8>)
{
  sub_147EC(&qword_B8A38, &qword_89CB0);
  sub_814F8();
  sub_147EC(&qword_B8A98, &qword_89D00);
  sub_814F8();
  type metadata accessor for FileProviderAppDetailView(0);
  type metadata accessor for FileProviderDetailView(0);
  sub_147EC(&qword_B8860, &unk_89B70);
  sub_814F8();
  *a2 = *v4;
  result = *v4;
  *(a2 + 8) = *&v4[8];
  *(a2 + 24) = *v4;
  *(a2 + 40) = *&v4[16];
  return result;
}

uint64_t sub_44A6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_80CE8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v20[-v7];
  v9 = sub_818E8();
  v10 = sub_818E8();
  v11 = STLocalizedString(v9);

  v12 = sub_81928();
  v14 = v13;

  sub_80CD8();
  v21 = 0;
  v20[0] = 1;
  v15 = *(v3 + 16);
  v15(v6, v8, v2);
  LOBYTE(v11) = v21;
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v11;
  v16 = v20[0];
  *(a1 + 24) = _swiftEmptyArrayStorage;
  *(a1 + 32) = 0;
  *(a1 + 40) = v16;
  v17 = sub_147EC(&qword_B8F30, &qword_8A118);
  v15((a1 + *(v17 + 64)), v6, v2);
  sub_16C28(v12, v14, v11);
  v18 = *(v3 + 8);

  v18(v8, v2);
  v18(v6, v2);
  sub_15034(v12, v14, v21);
}

__n128 sub_44CA8@<Q0>(uint64_t a2@<X8>)
{
  sub_147EC(&qword_B8A38, &qword_89CB0);
  sub_814F8();
  sub_147EC(&qword_B8A98, &qword_89D00);
  sub_814F8();
  type metadata accessor for FileProviderAppDetailView(0);
  type metadata accessor for FileProviderDetailView(0);
  sub_147EC(&qword_B8860, &unk_89B70);
  sub_814F8();
  *a2 = *v4;
  result = *v4;
  *(a2 + 8) = *&v4[8];
  *(a2 + 24) = *v4;
  *(a2 + 40) = *&v4[16];
  return result;
}

uint64_t sub_44D98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v55 = type metadata accessor for FileProviderAppDetailView(0);
  v3 = *(v55 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v55);
  v5 = sub_147EC(&qword_B86B0, &qword_88500);
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin(v5);
  v7 = &v54 - v6;
  v8 = sub_147EC(&unk_B8F10, &unk_8A100);
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = __chkstk_darwin(v8);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v59 = &v54 - v11;
  v12 = sub_818E8();
  v13 = sub_818E8();
  v14 = STLocalizedString(v12);

  v15 = sub_81928();
  v56 = v16;
  v57 = v15;

  v17 = sub_818E8();
  v18 = sub_818E8();
  v19 = STLocalizedString(v17);

  v20 = sub_81928();
  v22 = v21;

  v66 = v20;
  v67 = v22;
  sub_4C60C(a1, &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FileProviderAppDetailView);
  v23 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v24 = swift_allocObject();
  sub_4D018(&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for FileProviderAppDetailView);
  v25 = sub_14ED0();
  v58 = v7;
  v54 = v25;
  sub_81568();
  v26 = sub_818E8();
  v27 = sub_818E8();
  v28 = STLocalizedString(v26);

  sub_81928();
  sub_147EC(&qword_B7CB0, &qword_88A40);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_886D0;
  v30 = *(a1 + 24);
  v66 = *(a1 + 16);
  v67 = v30;
  sub_147EC(&qword_B8A38, &qword_89CB0);
  sub_814D8();
  v31 = v70;
  swift_getKeyPath();
  v66 = v31;
  sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection, &unk_89C68);
  sub_80A68();

  v32 = *&v31[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];

  if (v32 >> 62)
  {
    v33 = sub_81D88();
  }

  else
  {
    v33 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
  }

  *(v29 + 56) = &type metadata for Int;
  *(v29 + 64) = &protocol witness table for Int;
  *(v29 + 32) = v33;
  v34 = sub_81938();
  v36 = v35;

  v70 = v34;
  v71 = v36;
  v37 = (a1 + *(v55 + 32));
  v38 = *v37;
  v39 = *(v37 + 1);
  v68 = v38;
  v69 = v39;
  sub_147EC(&unk_B8710, &qword_89A80);
  v40 = sub_814F8();
  __chkstk_darwin(v40);
  sub_147EC(&qword_B8C28, &qword_89E40);
  sub_14F24(&qword_B8F20, &qword_B86B0, &qword_88500, &protocol conformance descriptor for Button<A>);
  sub_14F24(&qword_B8C38, &qword_B8C28, &qword_89E40, &protocol conformance descriptor for TupleView<A>);
  v41 = v59;
  v42 = v61;
  v43 = v58;
  sub_81388();

  (*(v60 + 8))(v43, v42);
  v45 = v62;
  v44 = v63;
  v46 = *(v63 + 16);
  v47 = v64;
  v46(v62, v41, v64);
  v48 = v65;
  v49 = v56;
  v50 = v57;
  *v65 = v57;
  v48[1] = v49;
  *(v48 + 16) = 0;
  v48[3] = _swiftEmptyArrayStorage;
  v48[4] = 0;
  *(v48 + 40) = 1;
  v51 = sub_147EC(&qword_B8F28, &qword_8A110);
  v46(v48 + *(v51 + 64), v45, v47);
  sub_16C28(v50, v49, 0);
  v52 = *(v44 + 8);

  v52(v41, v47);
  v52(v45, v47);
  sub_15034(v50, v49, 0);
}

uint64_t sub_45520@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v30 = a1;
  v34 = a2;
  v3 = type metadata accessor for FileProviderAppDetailView(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v29 = v5;
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_80CB8();
  __chkstk_darwin(v7 - 8);
  v8 = sub_147EC(&qword_B8C20, &qword_89E38);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v32 = &v29 - v13;
  v14 = __chkstk_darwin(v12);
  v31 = &v29 - v15;
  __chkstk_darwin(v14);
  v17 = &v29 - v16;
  sub_80C98();
  sub_4C60C(a1, v6, type metadata accessor for FileProviderAppDetailView);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_4D018(v6, v19 + v18, type metadata accessor for FileProviderAppDetailView);
  sub_81538();
  sub_80CA8();
  sub_4C60C(v30, v6, type metadata accessor for FileProviderAppDetailView);
  v20 = swift_allocObject();
  sub_4D018(v6, v20 + v18, type metadata accessor for FileProviderAppDetailView);
  v21 = v31;
  sub_81538();
  v22 = *(v9 + 16);
  v23 = v32;
  v22(v32, v17, v8);
  v24 = v33;
  v22(v33, v21, v8);
  v25 = v34;
  v22(v34, v23, v8);
  v26 = sub_147EC(&qword_B8C68, &qword_89E68);
  v22(&v25[*(v26 + 48)], v24, v8);
  v27 = *(v9 + 8);
  v27(v21, v8);
  v27(v17, v8);
  v27(v24, v8);
  return (v27)(v23, v8);
}

void sub_45900(uint64_t a1)
{
  type metadata accessor for FileProviderAppDetailView(0);
  LOBYTE(v5) = 0;
  sub_147EC(&unk_B8710, &qword_89A80);
  sub_814E8();
  v1 = [objc_opt_self() defaultManager];
  sub_147EC(&qword_B8A38, &qword_89CB0);
  sub_814D8();
  swift_getKeyPath();
  sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection, &unk_89C68);
  sub_80A68();

  v2 = objc_allocWithZone(FPDeleteOperation);
  sub_1A7F4(0, &qword_B88D0, FPItem_ptr);
  isa = sub_819E8().super.isa;

  v4 = [v2 initWithItems:isa];

  [v1 scheduleAction:v4];
}

uint64_t sub_45AC4(uint64_t a1, char a2)
{
  type metadata accessor for FileProviderAppDetailView(0);
  sub_147EC(&unk_B8710, &qword_89A80);
  return sub_814E8();
}

void sub_45B3C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_147EC(&unk_B88F8, &qword_89BA0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v19 = 0;
  sub_147EC(&qword_B88E8, &qword_89B98);
  sub_814C8();
  *(a2 + 24) = v20;
  type metadata accessor for FolderDetailView(0);
  v10 = sub_81168();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_14F6C(v9, v7, &unk_B88F8, &qword_89BA0);
  sub_814C8();
  sub_14FD4(v9, &unk_B88F8, &qword_89BA0);
  *a2 = a1;
  v11 = objc_opt_self();
  v12 = a1;
  v13 = [v11 defaultManager];
  v14 = [v13 collectionForFolderItem:v12];

  v15 = objc_allocWithZone(type metadata accessor for ObservableItemCollection(0));
  v19 = sub_487C8(v14);
  v16 = v19;
  sub_814C8();

  v17 = *(&v20 + 1);
  *(a2 + 8) = v20;
  *(a2 + 16) = v17;
}

uint64_t sub_45D50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_147EC(&qword_B89F8, &qword_89C88);
  __chkstk_darwin(v3);
  v5 = &v28 - v4;
  v6 = sub_147EC(&qword_B8A00, &qword_89C90);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = sub_147EC(&qword_B8A08, &qword_89C98);
  v29 = *(v9 - 8);
  v30 = v9;
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v32 = v1;
  sub_147EC(&qword_B8A10, &qword_89CA0);
  sub_4C2EC();
  sub_81218();
  v12 = sub_81698();
  v13 = *(v1 + 16);
  v33 = *(v1 + 8);
  v34 = v13;
  sub_147EC(&qword_B8A38, &qword_89CB0);
  sub_814D8();
  v14 = v37;
  swift_getKeyPath();
  v33 = v14;
  sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection, &unk_89C68);
  sub_80A68();

  v15 = *&v14[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];
  if (v15 >> 62)
  {
    v16 = sub_81D88();
  }

  else
  {
    v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
  }

  v17 = &v5[*(v3 + 36)];
  *v17 = v12;
  v17[8] = v16 == 0;
  v18 = sub_4C46C();
  sub_812A8();
  sub_14FD4(v5, &qword_B89F8, &qword_89C88);
  v19 = [*v2 displayName];
  v20 = sub_81928();
  v22 = v21;

  v33 = v20;
  v34 = v22;
  v37 = v3;
  v38 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_14ED0();
  sub_81358();

  v25 = (*(v28 + 8))(v8, v6);
  __chkstk_darwin(v25);
  *(&v28 - 2) = v2;
  sub_147EC(&qword_B8A78, &qword_89CF0);
  v33 = v6;
  v34 = &type metadata for String;
  v35 = OpaqueTypeConformance2;
  v36 = v24;
  swift_getOpaqueTypeConformance2();
  sub_4C558();
  v26 = v30;
  sub_813C8();
  return (*(v29 + 8))(v11, v26);
}

uint64_t sub_461C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for FileProviderDetailView(0);
  __chkstk_darwin(v26);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_147EC(&qword_B8A90, &qword_89CF8);
  __chkstk_darwin(v23);
  v6 = &v21 - v5;
  v24 = sub_147EC(&qword_B8A28, &qword_89CA8);
  *&v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v21 - v7;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  *v27 = v10;
  *&v27[8] = v9;
  sub_147EC(&qword_B8A38, &qword_89CB0);
  sub_814D8();
  v11 = v28;
  swift_getKeyPath();
  *v27 = v11;
  sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection, &unk_89C68);
  sub_80A68();

  v12 = *&v11[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];
  if (v12 >> 62)
  {
    v18 = sub_81D88();

    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));

    if (v13)
    {
LABEL_3:
      *&v28 = v10;
      *(&v28 + 1) = v9;
      sub_814F8();
      v14 = *v27;
      v22 = *&v27[8];
      v28 = *(a1 + 24);
      sub_147EC(&qword_B8A98, &qword_89D00);
      sub_814F8();
      v21 = *v27;
      v15 = *&v27[16];
      type metadata accessor for FolderDetailView(0);
      sub_147EC(&qword_B8860, &unk_89B70);
      sub_814F8();
      *v4 = v14;
      v16 = v21;
      *(v4 + 8) = v22;
      *(v4 + 24) = v16;
      *(v4 + 5) = v15;
      sub_4C60C(v4, v6, type metadata accessor for FileProviderDetailView);
      swift_storeEnumTagMultiPayload();
      sub_14F24(&qword_B8A20, &qword_B8A28, &qword_89CA8, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
      sub_4C424(&qword_B8A30, type metadata accessor for FileProviderDetailView, &unk_89D98);
      sub_810A8();
      return sub_4D5C0(v4, type metadata accessor for FileProviderDetailView);
    }
  }

  sub_81118();
  v19 = v22;
  v20 = v24;
  (*(v22 + 16))(v6, v8, v24);
  swift_storeEnumTagMultiPayload();
  sub_14F24(&qword_B8A20, &qword_B8A28, &qword_89CA8, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
  sub_4C424(&qword_B8A30, type metadata accessor for FileProviderDetailView, &unk_89D98);
  sub_810A8();
  return (*(v19 + 8))(v8, v20);
}

void sub_466C8(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  v5 = sub_81928();
  v7 = v6;

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_46774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_80CE8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v16 = *(a1 + 8);
  v17 = v8;
  sub_147EC(&qword_B8A38, &qword_89CB0);
  sub_814D8();
  v9 = v15[1];
  swift_getKeyPath();
  v16 = v9;
  sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection, &unk_89C68);
  sub_80A68();

  v10 = *&v9[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];
  if (v10 >> 62)
  {
    v13 = sub_81D88();

    if (v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 1;
    return (*(v5 + 56))(a2, v12, 1, v4);
  }

  v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));

  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_80CD8();
  (*(v5 + 32))(a2, v7, v4);
  v12 = 0;
  return (*(v5 + 56))(a2, v12, 1, v4);
}

void (*sub_46958(void **a1))(uint64_t a1, char a2)
{
  v3 = *(*(sub_147EC(&unk_B88F8, &qword_89BA0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  a1[1] = v4;
  v5 = sub_147EC(&qword_B8AF8, &unk_89D60);
  a1[2] = v5;
  v6 = *(*(v5 - 1) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for FileProviderDetailView(0);
  sub_14F6C(v1 + *(v9 + 24), v8, &qword_B8AF8, &unk_89D60);
  sub_815A8();
  return sub_46A98;
}

void sub_46A98(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_14F6C(*(a1 + 8), v3, &unk_B88F8, &qword_89BA0);
    sub_815B8();
    sub_14FD4(v2, &qword_B8AF8, &unk_89D60);
    v5 = v4;
    v6 = &unk_B88F8;
    v7 = &qword_89BA0;
  }

  else
  {
    sub_815B8();
    v6 = &qword_B8AF8;
    v7 = &unk_89D60;
    v5 = v2;
  }

  sub_14FD4(v5, v6, v7);
  free(v2);
  free(v4);

  free(v3);
}

uint64_t sub_46B74@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = type metadata accessor for FileProviderDetailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v22 = *v1;
  v23 = *(v1 + 8);
  sub_147EC(&qword_B8BE8, &unk_89DE8);
  sub_815A8();
  swift_getKeyPath();
  v22 = v27;
  sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection, &unk_89C68);
  sub_80A68();

  v5 = *&v27[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems];

  v27 = v5;
  v20[5] = swift_getKeyPath();
  sub_4C60C(v1, v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FileProviderDetailView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_4D018(v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for FileProviderDetailView);
  v20[4] = sub_147EC(&qword_B8BF0, &qword_89E20);
  v20[3] = sub_147EC(&qword_B8BF8, &qword_89E28);
  v20[2] = sub_14F24(&qword_B8C00, &qword_B8BF0, &qword_89E20, &protocol conformance descriptor for [A]);
  v20[1] = sub_4D100();
  v8 = sub_14E2C(&qword_B8C18, &qword_89E30);
  v9 = sub_14E2C(&qword_B8C20, &qword_89E38);
  v10 = type metadata accessor for FileView(255);
  v11 = sub_14E2C(&qword_B8C28, &qword_89E40);
  v12 = sub_4C424(&qword_B8C30, type metadata accessor for FileView, &unk_89FC0);
  v13 = sub_14ED0();
  v14 = sub_14F24(&qword_B8C38, &qword_B8C28, &qword_89E40, &protocol conformance descriptor for TupleView<A>);
  v22 = v10;
  *&v23 = &type metadata for String;
  *(&v23 + 1) = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_14F24(&qword_B8C40, &qword_B8C20, &qword_89E38, &protocol conformance descriptor for Button<A>);
  v22 = v8;
  *&v23 = v9;
  *(&v23 + 1) = OpaqueTypeConformance2;
  v24 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v21;
  sub_815F8();
  result = sub_147EC(&qword_B8C48, &qword_89E48);
  v19 = (v17 + *(result + 36));
  *v19 = nullsub_1;
  v19[1] = 0;
  return result;
}

uint64_t sub_46F88@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v5 = sub_80FE8();
  v68 = *(v5 - 8);
  v69 = v5;
  __chkstk_darwin(v5);
  v66 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_147EC(&unk_B8C50, &unk_89E50);
  __chkstk_darwin(v7 - 8);
  v64 = &v52 - v8;
  v9 = type metadata accessor for FileProviderDetailView(0);
  v10 = *(v9 - 8);
  v62 = v9 - 8;
  v58 = v10;
  v57 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_147EC(&qword_B8930, &qword_89BA8);
  v13 = __chkstk_darwin(v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v52 - v16;
  v18 = type metadata accessor for FileView(0);
  v60 = v18;
  __chkstk_darwin(v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_147EC(&qword_B8C18, &qword_89E30);
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v52 - v21;
  v22 = *a1;
  v23 = sub_809D8();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  sub_14F6C(v17, v15, &qword_B8930, &qword_89BA8);
  v24 = v22;
  v59 = v20;
  sub_814C8();
  sub_14FD4(v17, &qword_B8930, &qword_89BA8);
  *&v20[*(v18 + 20)] = v24;
  v25 = sub_818E8();
  v26 = sub_818E8();
  v27 = STLocalizedString(v25);

  sub_81928();
  sub_147EC(&qword_B7CB0, &qword_88A40);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_886D0;
  *(v28 + 56) = &type metadata for Int;
  *(v28 + 64) = &protocol witness table for Int;
  *(v28 + 32) = 1;
  v29 = sub_81938();
  v31 = v30;
  v55 = v30;

  v80 = v29;
  v81 = v31;
  v53 = type metadata accessor for FileProviderDetailView;
  v32 = a2;
  v33 = v56;
  sub_4C60C(a2, v56, type metadata accessor for FileProviderDetailView);
  sub_81A88();
  v34 = v24;
  v35 = sub_81A78();
  v36 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v37 = (v36 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = v35;
  *(v38 + 24) = &protocol witness table for MainActor;
  sub_4D018(v33, v38 + v36, type metadata accessor for FileProviderDetailView);
  v54 = v34;
  *(v38 + v37) = v34;
  sub_4C60C(v32, v33, v53);
  v39 = sub_81A78();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = &protocol witness table for MainActor;
  sub_4D018(v33, v40 + v36, type metadata accessor for FileProviderDetailView);
  sub_815E8();
  v72 = v32;
  v73 = v34;
  v58 = sub_147EC(&qword_B8C28, &qword_89E40);
  v41 = sub_4C424(&qword_B8C30, type metadata accessor for FileView, &unk_89FC0);
  v42 = sub_14ED0();
  v43 = sub_14F24(&qword_B8C38, &qword_B8C28, &qword_89E40, &protocol conformance descriptor for TupleView<A>);
  v44 = v61;
  v45 = v60;
  v46 = v59;
  sub_81388();

  sub_4D5C0(v46, type metadata accessor for FileView);
  v47 = sub_147EC(&qword_B8AF8, &unk_89D60);
  v48 = v64;
  sub_815D8();
  (*(*(v47 - 8) + 56))(v48, 0, 1, v47);
  v70 = v32;
  v71 = v54;
  v49 = v66;
  sub_80FD8();
  sub_147EC(&qword_B8C20, &qword_89E38);
  v74 = v45;
  v75 = &type metadata for String;
  v76 = v58;
  v77 = v41;
  v78 = v42;
  v79 = v43;
  swift_getOpaqueTypeConformance2();
  sub_14F24(&qword_B8C40, &qword_B8C20, &qword_89E38, &protocol conformance descriptor for Button<A>);
  v50 = v63;
  sub_81328();
  (*(v68 + 8))(v49, v69);
  sub_14FD4(v48, &unk_B8C50, &unk_89E50);
  return (*(v65 + 8))(v44, v50);
}

void sub_47880(void *a1@<X3>, _BYTE *a2@<X8>)
{
  sub_147EC(&qword_B8C60, &qword_89E60);
  sub_815A8();
  v4 = [a1 itemIdentifier];
  if (v11)
  {
    v5 = sub_81928();
    v7 = v6;
    if (v5 == sub_81928() && v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_81E18();
    }
  }

  else
  {
    v10 = 0;
  }

  *a2 = v10 & 1;
}

uint64_t sub_479E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v39 = a2;
  v40 = a3;
  v35 = a1;
  v4 = type metadata accessor for FileProviderDetailView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_80CB8();
  __chkstk_darwin(v8 - 8);
  v33 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_147EC(&qword_B8C20, &qword_89E38);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v38 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v37 = &v33 - v15;
  v16 = __chkstk_darwin(v14);
  v36 = &v33 - v17;
  __chkstk_darwin(v16);
  v19 = &v33 - v18;
  sub_80C98();
  v34 = type metadata accessor for FileProviderDetailView;
  sub_4C60C(a1, v7, type metadata accessor for FileProviderDetailView);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  sub_4D018(v7, v21 + v20, type metadata accessor for FileProviderDetailView);
  v22 = v39;
  *(v21 + ((v20 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v39;
  v23 = v22;
  sub_81538();
  sub_80CA8();
  sub_4C60C(v35, v7, v34);
  v24 = swift_allocObject();
  sub_4D018(v7, v24 + v20, type metadata accessor for FileProviderDetailView);
  v25 = v36;
  sub_81538();
  v26 = *(v11 + 16);
  v27 = v37;
  v26(v37, v19, v10);
  v28 = v38;
  v26(v38, v25, v10);
  v29 = v40;
  v26(v40, v27, v10);
  v30 = sub_147EC(&qword_B8C68, &qword_89E68);
  v26(&v29[*(v30 + 48)], v28, v10);
  v31 = *(v11 + 8);
  v31(v25, v10);
  v31(v19, v10);
  v31(v28, v10);
  return (v31)(v27, v10);
}

uint64_t sub_47DD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v15 = *(a1 + 24);
  v16 = v3;
  v17 = 0;
  sub_147EC(&qword_B8C60, &qword_89E60);
  sub_815B8();
  v4 = [objc_opt_self() defaultManager];
  sub_147EC(&qword_B8C70, &qword_89E70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_89B00;
  *(v5 + 32) = a2;
  v6 = objc_allocWithZone(FPDeleteOperation);
  sub_1A7F4(0, &qword_B88D0, FPItem_ptr);
  v7 = a2;
  isa = sub_819E8().super.isa;

  v9 = [v6 initWithItems:isa];

  [v4 scheduleAction:v9];
  v10 = sub_46958(&v15);
  v12 = v11;
  v13 = sub_81168();
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    sub_81158();
  }

  return (v10)(&v15, 0);
}

uint64_t sub_47F8C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v7 = *(a1 + 24);
  v8 = v1;
  v9 = 0;
  sub_147EC(&qword_B8C60, &qword_89E60);
  sub_815B8();
  v2 = sub_46958(&v7);
  v4 = v3;
  v5 = sub_81168();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    sub_81148();
  }

  return (v2)(&v7, 0);
}

uint64_t sub_48064(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FileProviderDetailView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_80CB8();
  __chkstk_darwin(v7 - 8);
  sub_80C98();
  sub_4C60C(a1, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FileProviderDetailView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_4D018(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for FileProviderDetailView);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v10 = a2;
  return sub_81538();
}

uint64_t sub_48200(uint64_t a1, id a2)
{
  v2 = [a2 itemIdentifier];
  sub_147EC(&qword_B8C60, &qword_89E60);
  return sub_815B8();
}

uint64_t sub_48280()
{
  v0 = sub_818D8();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = sub_147EC(&qword_B8C88, qword_89E78);
  __chkstk_darwin(v7 - 8);
  sub_147EC(&qword_B8C70, &qword_89E70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_89B10;
  sub_1A7F4(0, &qword_B8C80, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v8 + 32) = sub_81B58();
  swift_getKeyPath();
  sub_818C8();
  (*(v1 + 16))(v4, v6, v0);

  sub_808F8();

  (*(v1 + 8))(v6, v0);
  sub_1A7F4(0, &qword_B88D0, FPItem_ptr);
  *(v8 + 40) = sub_81B68();
  swift_getKeyPath();
  result = sub_81B58();
  *(v8 + 48) = result;
  qword_BCFD0 = v8;
  return result;
}

void sub_484B4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 displayName];
  v4 = sub_81928();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_4850C()
{
  swift_getKeyPath();
  sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection, &unk_89C68);
  sub_80A68();
}

uint64_t sub_485B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection, &unk_89C68);
  sub_80A68();

  *a2 = *(v3 + OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems);
}

uint64_t sub_4866C(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems;

  v5 = sub_6D740(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4C424(&qword_B8A40, type metadata accessor for ObservableItemCollection, &unk_89C68);
    sub_80A58();
  }
}

id sub_487C8(void *a1)
{
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems] = _swiftEmptyArrayStorage;
  sub_80A98();
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection_itemCollection] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ObservableItemCollection(0);
  v3 = a1;
  v4 = objc_msgSendSuper2(&v9, "init");
  v5 = qword_B7860;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  sub_1A7F4(0, &qword_B8C80, NSSortDescriptor_ptr);
  isa = sub_819E8().super.isa;
  [v3 reorderItemsWithSortDescriptors:{isa, v9.receiver, v9.super_class}];

  [v3 setDelegate:v6];
  [v3 startObserving];

  return v6;
}

id sub_48908()
{
  [*&v0[OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection_itemCollection] stopObserving];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObservableItemCollection(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_48A70(void *a1)
{
  v1 = [a1 items];
  sub_1A7F4(0, &qword_B88D0, FPItem_ptr);
  v2 = sub_819F8();

  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_81D88())
  {
    v4 = 0;
    v16 = v2 & 0xC000000000000001;
    v15 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v16)
      {
        v5 = sub_81D18();
      }

      else
      {
        if (v4 >= *(v15 + 16))
        {
          goto LABEL_20;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 capabilities];
      v9 = [v6 capabilities];
      v10 = [v6 childItemCount];
      if (v10)
      {
        v11 = v2;
        v12 = v10;
        v13 = [v10 integerValue];

        if (v13 < 1)
        {

          v2 = v11;
          goto LABEL_5;
        }

        v2 = v11;
        if (v9 & 0x10 | (v8 & 1))
        {
LABEL_15:
          sub_81D38();
          sub_81D58();
          sub_81D68();
          sub_81D48();
          goto LABEL_5;
        }
      }

      else if ((v9 & 0x10) != 0)
      {
        goto LABEL_15;
      }

LABEL_5:
      ++v4;
      if (v7 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  return sub_4866C(_swiftEmptyArrayStorage);
}

uint64_t sub_48D28(uint64_t a1)
{
  result = sub_80AA8();
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

void sub_48E24(uint64_t a1)
{
  sub_1A7F4(319, &qword_B88D0, FPItem_ptr);
  if (v1 <= 0x3F)
  {
    sub_49370(319, &qword_B88D8, type metadata accessor for ObservableItemCollection, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_4DDC0(319, &qword_B88E0, &qword_B88E8, &qword_89B98, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_4DDC0(319, &qword_B88F0, &unk_B88F8, &qword_89BA0, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_48F84(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_147EC(&qword_B8930, &qword_89BA8);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_80B88();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_490D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_147EC(&qword_B8930, &qword_89BA8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_80B88();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_49224(uint64_t a1)
{
  sub_4DDC0(319, &qword_B89A0, &qword_B89A8, &qword_89BC0, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_4E118(319, &qword_B89B0, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_49370(319, &unk_B89B8, &type metadata accessor for URL, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_80B88();
        if (v4 <= 0x3F)
        {
          type metadata accessor for CGSize(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_49370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_493F0@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = type metadata accessor for FileView(0);
  v3 = *(v1 + *(v2 + 20));
  v4 = [v3 displayName];
  v5 = sub_81928();
  v7 = v6;

  v8 = type metadata accessor for FileIconView(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_147EC(&qword_B8C90, &qword_89F20);
  sub_814D8();
  v12 = [v3 contentType];
  sub_80B78();

  v55 = 0;
  sub_147EC(&qword_B89A8, &qword_89BC0);
  sub_814C8();
  *v11 = v56;
  *(v11 + 2) = swift_getKeyPath();
  v11[24] = 0;
  __asm { FMOV            V0.2D, #29.0 }

  *&v11[*(v9 + 40)] = _Q0;
  v18 = sub_147EC(&unk_B8E00, &unk_8A040);
  v51 = *(v18 - 8);
  v52 = v18;
  __chkstk_darwin(v18);
  v50 = &v45 - v19;
  v20 = sub_147EC(&qword_B78E8, &qword_87E88);
  __chkstk_darwin(v20 - 8);
  v49 = &v45 - v21;
  v53 = v7;
  v22 = sub_49A58(v1, v5, v7, 0, _swiftEmptyArrayStorage, v11, &v45 - v21);
  v23 = *(v2 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_4C60C(v1, &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FileView);
  sub_81A88();
  v25 = sub_81A78();
  v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = &protocol witness table for MainActor;
  sub_4D018(&v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for FileView);
  v28 = sub_81AB8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v32 = &v45 - v31;
  sub_81A98();
  if (sub_7FD88(2, 26, 4, 0))
  {
    v47 = sub_80DF8();
    v48 = &v45;
    v46 = *(v47 - 8);
    __chkstk_darwin(v47);
    v45 = v28;
    v34 = &v45 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    sub_81D08(17);

    *&v56 = 0xD00000000000003BLL;
    *(&v56 + 1) = 0x8000000000095990;
    v55 = 230;
    v57._countAndFlagsBits = sub_81DF8();
    sub_81978(v57);

    __chkstk_darwin(v35);
    v36 = &v45 - v31;
    v37 = &v45 - v31;
    v38 = v45;
    (*(v29 + 16))(v36, v37, v45);
    sub_80DE8();

    (*(v29 + 8))(v32, v38);
    v39 = v50;
    sub_4E688(v49, v50);
    v40 = sub_147EC(&qword_B78F0, &qword_87E90);
    (*(v46 + 32))(v39 + *(v40 + 36), v34, v47);
  }

  else
  {

    v41 = sub_147EC(&qword_B78F8, &qword_87E98);
    v39 = v50;
    v42 = (v50 + *(v41 + 36));
    v43 = sub_80DA8();
    (*(v29 + 32))(&v42[*(v43 + 20)], &v45 - v31, v28);
    *v42 = &unk_8A058;
    *(v42 + 1) = v27;
    sub_4E688(v49, v39);
  }

  (*(v51 + 32))(v54, v39, v52);
  return sub_4D5C0(v11, type metadata accessor for FileIconView);
}

uint64_t sub_49A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v32 = a5;
  v33 = a6;
  v30 = a4;
  v31 = a3;
  v29 = a2;
  v36 = a7;
  v35 = sub_147EC(&qword_B8E18, &qword_8A068);
  __chkstk_darwin(v35);
  v9 = &v28 - v8;
  v34 = sub_147EC(&qword_B8E20, &qword_8A070);
  __chkstk_darwin(v34);
  v11 = &v28 - v10;
  v12 = type metadata accessor for FolderDetailView(0);
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_147EC(&qword_B8E28, &qword_8A078);
  v28 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v18 = *(a1 + *(type metadata accessor for FileView(0) + 20));
  v19 = [v18 childItemCount];
  if (v19 && (v20 = v19, v21 = [v19 integerValue], v20, v21 >= 1))
  {
    sub_45B3C(v18, v14);
    __chkstk_darwin(v22);
    v23 = v31;
    *(&v28 - 6) = v29;
    *(&v28 - 5) = v23;
    *(&v28 - 32) = v30 & 1;
    v24 = v33;
    *(&v28 - 3) = v32;
    *(&v28 - 2) = v21;
    *(&v28 - 1) = v24;
    sub_147EC(&qword_B8E48, &qword_8A088);
    sub_14F24(&qword_B8E50, &qword_B8E48, &qword_8A088, &protocol conformance descriptor for Label<A, B>);
    sub_4C424(&qword_B8E58, type metadata accessor for FolderDetailView, &unk_89C18);
    sub_80DB8();
    v25 = v28;
    (*(v28 + 16))(v11, v17, v15);
    swift_storeEnumTagMultiPayload();
    sub_14F24(&qword_B8E38, &qword_B8E28, &qword_8A078, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_14F24(&qword_B8E40, &qword_B8E18, &qword_8A068, &protocol conformance descriptor for HStack<A>);
    sub_810A8();
    return (*(v25 + 8))(v17, v15);
  }

  else
  {
    *v9 = sub_81008();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v27 = sub_147EC(&qword_B8E30, &qword_8A080);
    sub_4A26C(v29, v31, v30 & 1, v32, a1, v33, &v9[*(v27 + 44)]);
    sub_14F6C(v9, v11, &qword_B8E18, &qword_8A068);
    swift_storeEnumTagMultiPayload();
    sub_14F24(&qword_B8E38, &qword_B8E28, &qword_8A078, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_14F24(&qword_B8E40, &qword_B8E18, &qword_8A068, &protocol conformance descriptor for HStack<A>);
    sub_810A8();
    return sub_14FD4(v9, &qword_B8E18, &qword_8A068);
  }
}

uint64_t sub_49F4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_147EC(&qword_B8E60, &qword_8A090);
  type metadata accessor for FileIconView(0);
  sub_14F24(&qword_B8E68, &qword_B8E60, &qword_8A090, &protocol conformance descriptor for TupleView<A>);
  sub_4C424(&qword_B8E70, type metadata accessor for FileIconView, &unk_89BC8);
  return sub_814B8();
}

uint64_t sub_4A06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_818E8();
  v13 = sub_818E8();
  v14 = STLocalizedString(v12);

  sub_81928();
  sub_147EC(&qword_B7CB0, &qword_88A40);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_886D0;
  *(v15 + 56) = &type metadata for Int;
  *(v15 + 64) = &protocol witness table for Int;
  *(v15 + 32) = a5;
  sub_81938();

  sub_14ED0();
  v16 = sub_81288();
  v18 = v17;
  LOBYTE(v14) = v19 & 1;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = v16;
  *(a6 + 40) = v17;
  *(a6 + 48) = v19 & 1;
  *(a6 + 56) = v20;
  sub_16C28(a1, a2, a3 & 1);

  sub_16C28(a1, a2, a3 & 1);

  sub_16C28(v16, v18, v14);

  sub_15034(v16, v18, v14);

  sub_15034(a1, a2, a3);
}

uint64_t sub_4A26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X8>)
{
  v52 = a7;
  v53 = a6;
  v12 = sub_80938();
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_80918();
  v15 = *(v46 - 8);
  __chkstk_darwin(v46);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_80948();
  __chkstk_darwin(v45);
  v18 = sub_147EC(&qword_B8E78, &qword_8A098);
  v49 = *(v18 - 8);
  v50 = v18;
  v19 = __chkstk_darwin(v18);
  v51 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v44 - v21;
  v55 = a1;
  v56 = a2;
  v57 = a3 & 1;
  v58 = a4;
  v59 = a5;
  v54 = v53;
  sub_147EC(&qword_B8E80, &qword_8A0A0);
  type metadata accessor for FileIconView(0);
  sub_14F24(&qword_B8E88, &qword_B8E80, &qword_8A0A0, &protocol conformance descriptor for TupleView<A>);
  sub_4C424(&qword_B8E70, type metadata accessor for FileIconView, &unk_89BC8);
  v53 = v22;
  sub_814B8();
  v23 = [*(a5 + *(type metadata accessor for FileView(0) + 20)) documentSize];
  if (v23)
  {
    v24 = v23;
    v60[0] = [v23 longLongValue];
    v25 = v46;
    (*(v15 + 104))(v17, enum case for ByteCountFormatStyle.Style.file(_:), v46);
    sub_80928();
    sub_80808();
    (*(v47 + 8))(v14, v48);
    (*(v15 + 8))(v17, v25);
    sub_4C424(&qword_B8E98, &type metadata accessor for ByteCountFormatStyle, &protocol conformance descriptor for ByteCountFormatStyle);
    v26 = sub_81268();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v33 = v30 & 1;
    sub_16C28(v26, v28, v33);
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v33 = 0;
    v32 = 0;
  }

  v34 = v49;
  v35 = v50;
  v36 = *(v49 + 16);
  v37 = v51;
  v36(v51, v53, v50);
  v38 = v52;
  v36(v52, v37, v35);
  v39 = sub_147EC(&qword_B8E90, &qword_8A0A8);
  v40 = &v38[*(v39 + 48)];
  *v40 = 0;
  v40[8] = 1;
  v41 = &v38[*(v39 + 64)];
  sub_4E778(v26, v28, v33, v32);
  sub_4E7BC(v26, v28, v33, v32);
  *v41 = v26;
  v41[1] = v28;
  v41[2] = v33;
  v41[3] = v32;
  v42 = *(v34 + 8);
  v42(v53, v35);
  sub_4E7BC(v26, v28, v33, v32);
  return (v42)(v37, v35);
}

uint64_t sub_4A7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a4;
  v33 = a3;
  v32 = sub_809E8();
  __chkstk_darwin(v32);
  v10 = sub_80A38();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v32 - v16;
  __chkstk_darwin(v15);
  v19 = &v32 - v18;
  v20 = [*(a5 + *(type metadata accessor for FileView(0) + 20)) contentModificationDate];
  if (v20)
  {
    v21 = v20;
    sub_80A08();

    (*(v11 + 32))(v19, v17, v10);
    (*(v11 + 16))(v14, v19, v10);
    sub_80818();
    sub_4C424(&unk_B8EA0, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
    sub_4C424(&qword_B7E98, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v22 = sub_81268();
    v24 = v23;
    LOBYTE(v21) = v25;
    v27 = v26;
    (*(v11 + 8))(v19, v10);
    v28 = v21 & 1;
    sub_16C28(v22, v24, v21 & 1);
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v28 = 0;
    v27 = 0;
  }

  v29 = v33 & 1;
  sub_16C28(a1, a2, v33 & 1);
  v30 = v34;

  sub_16C28(a1, a2, v29);

  sub_4E778(v22, v24, v28, v27);
  sub_4E7BC(v22, v24, v28, v27);
  v35 = v29;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v29;
  *(a6 + 24) = v30;
  *(a6 + 32) = v22;
  *(a6 + 40) = v24;
  *(a6 + 48) = v28;
  *(a6 + 56) = v27;
  sub_4E7BC(v22, v24, v28, v27);
  sub_15034(a1, a2, v29);
}

uint64_t sub_4AB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a3;
  v4 = sub_809D8();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  sub_147EC(&qword_B8930, &qword_89BA8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  sub_81A88();
  v3[24] = sub_81A78();
  v6 = sub_81A58();
  v3[25] = v6;
  v3[26] = v5;

  return _swift_task_switch(sub_4AC6C, v6, v5);
}

uint64_t sub_4AC6C()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = [objc_opt_self() defaultManager];
  v0[27] = v3;
  v4 = *(v2 + *(type metadata accessor for FileView(0) + 20));
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_4ADCC;
  v5 = swift_continuation_init();
  v0[17] = sub_147EC(&qword_B8E10, &qword_8A060);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_4B160;
  v0[13] = &unk_ABE48;
  v0[14] = v5;
  [v3 fetchURLForItem:v4 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_4ADCC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);
  if (v2)
  {
    v5 = sub_4B034;
  }

  else
  {
    v5 = sub_4AEFC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_4AEFC()
{
  v1 = v0[27];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];

  (*(v4 + 32))(v2, v3, v5);
  (*(v4 + 56))(v2, 0, 1, v5);

  v6 = v0[23];
  sub_14F6C(v6, v0[22], &qword_B8930, &qword_89BA8);
  sub_147EC(&qword_B8C90, &qword_89F20);
  sub_814E8();
  sub_14FD4(v6, &qword_B8930, &qword_89BA8);

  v7 = v0[1];

  return v7();
}

uint64_t sub_4B034()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[20];

  swift_willThrow();

  (*(v4 + 56))(v2, 1, 1, v3);
  v5 = v0[23];
  sub_14F6C(v5, v0[22], &qword_B8930, &qword_89BA8);
  sub_147EC(&qword_B8C90, &qword_89F20);
  sub_814E8();
  sub_14FD4(v5, &qword_B8930, &qword_89BA8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_4B160(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_809D8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *sub_22CB8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_147EC(&qword_B8018, &qword_89D40);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return _swift_continuation_throwingResumeWithError(v9, v10);
  }

  else
  {
    sub_809B8();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

double sub_4B2D4()
{
  v1 = sub_80FB8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    return *(v0 + 16);
  }

  sub_81B28();
  v7 = sub_81198();
  sub_80B98();

  sub_80FA8();
  swift_getAtKeyPath();
  sub_4C7F8(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

void sub_4B420(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_81408();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_147EC(&qword_B8AD0, &qword_89D48);
  __chkstk_darwin(v7);
  v9 = (&v21 - v8);
  v10 = sub_147EC(&qword_B8AD8, &qword_89D50);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v23 = *a1;
  sub_147EC(&unk_B8AC0, &qword_89D38);
  sub_814D8();
  if (v22)
  {
    v14 = v22;
    v15 = sub_81468();
    (*(v4 + 104))(v6, enum case for Color.RGBColorSpace.sRGBLinear(_:), v3);
    v16 = sub_81458();
    *v9 = v15;
    v9[1] = v16;
    v9[3] = 0;
    v9[4] = 0;
    v9[2] = 0x3FF0000000000000;
    swift_storeEnumTagMultiPayload();

    sub_147EC(&qword_B8AE0, &qword_89D58);
    sub_4C8E8();
    sub_14F24(&qword_B8AF0, &qword_B8AD8, &qword_89D50, &protocol conformance descriptor for AsyncIconImage<A>);
    sub_810A8();
  }

  else
  {
    v17 = type metadata accessor for FileIconView(0);
    sub_80B68();
    v18 = objc_allocWithZone(ISIcon);
    v19 = sub_818E8();

    [v18 initWithType:{v19, v21}];

    v20 = (a1 + *(v17 + 32));
    [objc_allocWithZone(ISImageDescriptor) initWithSize:*v20 scale:{v20[1], sub_4B2D4()}];
    sub_80B58();
    (*(v11 + 16))(v9, v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_147EC(&qword_B8AE0, &qword_89D58);
    sub_4C8E8();
    sub_14F24(&qword_B8AF0, &qword_B8AD8, &qword_89D50, &protocol conformance descriptor for AsyncIconImage<A>);
    sub_810A8();
    (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_4B85C(uint64_t a1)
{
  v1[22] = a1;
  sub_147EC(&qword_B8930, &qword_89BA8);
  v1[23] = swift_task_alloc();
  v2 = sub_809D8();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  sub_81A88();
  v1[27] = sub_81A78();
  v4 = sub_81A58();
  v1[28] = v4;
  v1[29] = v3;

  return _swift_task_switch(sub_4B988, v4, v3);
}

uint64_t sub_4B988()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = type metadata accessor for FileIconView(0);
  sub_14F6C(v4 + *(v5 + 24), v3, &qword_B8930, &qword_89BA8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[23];

    sub_14FD4(v6, &qword_B8930, &qword_89BA8);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[22];
    (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
    v10 = (v9 + *(v5 + 32));
    v11 = *v10;
    v12 = v10[1];
    v13 = sub_4B2D4();
    v14 = objc_allocWithZone(QLThumbnailGenerationRequest);
    sub_809A8(v15);
    v17 = v16;
    v18 = [v14 initWithFileAtURL:v16 size:4 scale:v11 representationTypes:{v12, v13}];
    v0[30] = v18;

    [v18 setIconMode:1];
    [v18 setBadgeType:0];
    v19 = [objc_opt_self() sharedGenerator];
    v0[31] = v19;
    v0[2] = v0;
    v0[7] = v0 + 20;
    v0[3] = sub_4BC58;
    v20 = swift_continuation_init();
    v0[17] = sub_147EC(&qword_B8AB8, &qword_89D30);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_4C000;
    v0[13] = &unk_ABD08;
    v0[14] = v20;
    [v19 generateBestRepresentationForRequest:v18 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_4BC58()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_4BED4;
  }

  else
  {
    v5 = sub_4BD88;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_4BD88()
{
  v1 = v0[31];

  v2 = v0[20];
  v3 = [v2 UIImage];

  v4 = v0[30];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v8 = v0[22];
  v10 = *v8;
  v9 = *(v8 + 8);
  v0[18] = *v8;
  v0[19] = v9;
  v0[21] = v3;
  v11 = v3;
  v12 = v10;

  sub_147EC(&unk_B8AC0, &qword_89D38);
  sub_814E8();

  (*(v6 + 8))(v5, v7);

  v13 = v0[1];

  return v13();
}

uint64_t sub_4BED4()
{
  v1 = v0[31];

  swift_willThrow();

  v2 = v0[30];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v6 = v0[22];
  v7 = *v6;
  v8 = *(v6 + 8);
  v0[18] = *v6;
  v0[19] = v8;
  v0[21] = 0;
  v9 = v7;

  sub_147EC(&unk_B8AC0, &qword_89D38);
  sub_814E8();

  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_4C000(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_22CB8((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_147EC(&qword_B8018, &qword_89D40);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_4C0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4B420(v2, a2);
  sub_81688();
  sub_80D68();
  v8 = (a2 + *(sub_147EC(&qword_B8AA0, &qword_89D08) + 36));
  v9 = v16[1];
  *v8 = v16[0];
  v8[1] = v9;
  v8[2] = v16[2];
  v10 = *(v4 + 32);
  sub_4C60C(v2, v7, type metadata accessor for FileIconView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_4D018(v7, v12 + v11, type metadata accessor for FileIconView);
  v13 = (a2 + *(sub_147EC(&qword_B8AA8, &qword_89D20) + 36));
  v14 = sub_147EC(&qword_B8AB0, &qword_89D28);
  sub_81A98();
  result = sub_14F6C(v2 + v10, v13 + *(v14 + 40), &qword_B8930, &qword_89BA8);
  *v13 = &unk_89D18;
  v13[1] = v12;
  return result;
}

unint64_t sub_4C2EC()
{
  result = qword_B8A18;
  if (!qword_B8A18)
  {
    sub_14E2C(&qword_B8A10, &qword_89CA0);
    sub_14F24(&qword_B8A20, &qword_B8A28, &qword_89CA8, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    sub_4C424(&qword_B8A30, type metadata accessor for FileProviderDetailView, &unk_89D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8A18);
  }

  return result;
}

uint64_t sub_4C424(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_4C46C()
{
  result = qword_B8A48;
  if (!qword_B8A48)
  {
    sub_14E2C(&qword_B89F8, &qword_89C88);
    sub_14F24(&qword_B8A50, &qword_B8A58, &qword_89CE0, &protocol conformance descriptor for Form<A>);
    sub_14F24(&qword_B8A60, &unk_B8A68, &qword_89CE8, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8A48);
  }

  return result;
}

unint64_t sub_4C558()
{
  result = qword_B8A80;
  if (!qword_B8A80)
  {
    sub_14E2C(&qword_B8A78, &qword_89CF0);
    sub_4C424(&qword_B8A88, &type metadata accessor for EditButton, &protocol conformance descriptor for EditButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8A80);
  }

  return result;
}

uint64_t sub_4C60C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_4C674()
{
  v1 = type metadata accessor for FileIconView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_4C7F8(*(v5 + 16), *(v5 + 24));
  v6 = *(v1 + 24);
  v7 = sub_809D8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = *(v1 + 28);
  v10 = sub_80B88();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4C7F8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_4C804()
{
  v2 = *(type metadata accessor for FileIconView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_16268;

  return sub_4B85C(v0 + v3);
}

unint64_t sub_4C8E8()
{
  result = qword_B8AE8;
  if (!qword_B8AE8)
  {
    sub_14E2C(&qword_B8AE0, &qword_89D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8AE8);
  }

  return result;
}

uint64_t sub_4C96C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection__filteredItems) = *(v0 + 24);
}

uint64_t sub_4C9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_147EC(&qword_B8AF8, &unk_89D60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_4CA94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_147EC(&qword_B8AF8, &unk_89D60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_4CB44(uint64_t a1)
{
  sub_49370(319, &qword_B8B68, type metadata accessor for ObservableItemCollection, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_4DDC0(319, &qword_B8B70, &qword_B88E8, &qword_89B98, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_4DDC0(319, &unk_B8B78, &unk_B88F8, &qword_89BA0, &type metadata accessor for Binding);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_4CC68()
{
  sub_14E2C(&qword_B8A08, &qword_89C98);
  sub_14E2C(&qword_B8A78, &qword_89CF0);
  sub_14E2C(&qword_B8A00, &qword_89C90);
  sub_14E2C(&qword_B89F8, &qword_89C88);
  sub_4C46C();
  swift_getOpaqueTypeConformance2();
  sub_14ED0();
  swift_getOpaqueTypeConformance2();
  sub_4C558();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_4CD88()
{
  result = qword_B8BB0;
  if (!qword_B8BB0)
  {
    sub_14E2C(&qword_B8AA8, &qword_89D20);
    sub_4CE40();
    sub_14F24(&qword_B8BE0, &qword_B8AB0, &qword_89D28, &protocol conformance descriptor for _TaskValueModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8BB0);
  }

  return result;
}

unint64_t sub_4CE40()
{
  result = qword_B8BB8;
  if (!qword_B8BB8)
  {
    sub_14E2C(&qword_B8AA0, &qword_89D08);
    sub_4EC38(&qword_B8BC0, &qword_B8BC8, &qword_89D88, sub_4CEF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8BB8);
  }

  return result;
}

unint64_t sub_4CEF8()
{
  result = qword_B8BD0;
  if (!qword_B8BD0)
  {
    sub_14E2C(&qword_B8BD8, &qword_89D90);
    sub_4C8E8();
    sub_14F24(&qword_B8AF0, &qword_B8AD8, &qword_89D50, &protocol conformance descriptor for AsyncIconImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8BD0);
  }

  return result;
}

id sub_4CFD8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 itemID];
  *a2 = result;
  return result;
}

uint64_t sub_4D018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_4D080@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FileProviderDetailView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_46F88(a1, v6, a2);
}

unint64_t sub_4D100()
{
  result = qword_B8C08;
  if (!qword_B8C08)
  {
    sub_1A7F4(255, &qword_B8C10, FPItemID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8C08);
  }

  return result;
}

uint64_t sub_4D188()
{
  v1 = (type metadata accessor for FileProviderDetailView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[8];

  v6 = *(sub_147EC(&qword_B8AF8, &unk_89D60) + 32);
  v7 = sub_81168();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v9 + 8, v2 | 7);
}

void sub_4D320(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for FileProviderDetailView(0) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_47880(v4, a1);
}

uint64_t sub_4D3C0()
{
  v1 = (type metadata accessor for FileProviderDetailView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[8];

  v6 = *(sub_147EC(&qword_B8AF8, &unk_89D60) + 32);
  v7 = sub_81168();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4D544(uint64_t a1)
{
  v3 = *(type metadata accessor for FileProviderDetailView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_47984(a1, v4, v5, v6);
}

uint64_t sub_4D5C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_4D644()
{
  v1 = (type metadata accessor for FileProviderDetailView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];

  v6 = *(sub_147EC(&qword_B8AF8, &unk_89D60) + 32);
  v7 = sub_81168();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v9 + 8, v2 | 7);
}

uint64_t sub_4D7EC(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for FileProviderDetailView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_4D88C()
{
  v1 = (type metadata accessor for FileProviderDetailView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];

  v6 = *(sub_147EC(&qword_B8AF8, &unk_89D60) + 32);
  v7 = sub_81168();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4DA54(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_4DAB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 documentSize];
  *a2 = result;
  return result;
}

id sub_4DB10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 itemIdentifier];
  *a2 = result;
  return result;
}

uint64_t sub_4DB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_147EC(&qword_B8C90, &qword_89F20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_4DC3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_147EC(&qword_B8C90, &qword_89F20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_4DD00(uint64_t a1)
{
  sub_4DDC0(319, &unk_B8D00, &qword_B8930, &qword_89BA8, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_1A7F4(319, &qword_B88D0, FPItem_ptr);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_4DDC0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_14E2C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_4DE38(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_147EC(&qword_B8860, &unk_89B70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_4DF08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_147EC(&qword_B8860, &unk_89B70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_4DFB8(uint64_t a1)
{
  sub_49370(319, &qword_B88D8, type metadata accessor for ObservableItemCollection, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_4DDC0(319, &qword_B88E0, &qword_B88E8, &qword_89B98, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_4DDC0(319, &qword_B88F0, &unk_B88F8, &qword_89BA0, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_4E118(319, &qword_B8D98, &type metadata for Bool, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_4E118(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_4E16C()
{
  result = qword_B8DD8;
  if (!qword_B8DD8)
  {
    sub_14E2C(&qword_B8C48, &qword_89E48);
    sub_4E224();
    sub_14F24(&qword_B8DF0, &qword_B8DF8, &qword_89F68, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8DD8);
  }

  return result;
}

unint64_t sub_4E224()
{
  result = qword_B8DE0;
  if (!qword_B8DE0)
  {
    sub_14E2C(&qword_B8DE8, &qword_89F60);
    sub_14E2C(&qword_B8C18, &qword_89E30);
    sub_14E2C(&qword_B8C20, &qword_89E38);
    type metadata accessor for FileView(255);
    sub_14E2C(&qword_B8C28, &qword_89E40);
    sub_4C424(&qword_B8C30, type metadata accessor for FileView, &unk_89FC0);
    sub_14ED0();
    sub_14F24(&qword_B8C38, &qword_B8C28, &qword_89E40, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    sub_14F24(&qword_B8C40, &qword_B8C20, &qword_89E38, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8DE0);
  }

  return result;
}

uint64_t sub_4E458()
{
  v1 = type metadata accessor for FileView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = sub_809D8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  sub_147EC(&qword_B8C90, &qword_89F20);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4E5AC()
{
  v2 = *(type metadata accessor for FileView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22EB0;

  return sub_4AB34(v4, v5, v0 + v3);
}

uint64_t sub_4E688(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B78E8, &qword_87E88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4E778(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_16C28(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_4E7BC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_15034(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_4E810(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B8EB8, &qword_8A0B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4E880(uint64_t a1)
{
  v2 = sub_147EC(&qword_B8EB8, &qword_8A0B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4E8FC()
{
  v1 = type metadata accessor for FileProviderAppDetailView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 28);
  v6 = sub_81168();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  sub_147EC(&qword_B8860, &unk_89B70);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4EAB8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_4EBA0()
{
  sub_14E2C(&qword_B78E8, &qword_87E88);
  sub_4EC38(&qword_B8F38, &qword_B78E8, &qword_87E88, sub_4ECB4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_4EC38(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_14E2C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_4ECB4()
{
  result = qword_B8F40;
  if (!qword_B8F40)
  {
    sub_14E2C(&qword_B8F48, &qword_8A120);
    sub_14F24(&qword_B8E38, &qword_B8E28, &qword_8A078, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_14F24(&qword_B8E40, &qword_B8E18, &qword_8A068, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8F40);
  }

  return result;
}

__n128 sub_4EE0C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_4EE18(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_4EE74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_4EEF4@<X0>(void *a1@<X0>, void (*a2)(void, void, void)@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a5;
  v9 = sub_147EC(&qword_B8F60, &qword_8A1E8);
  v74 = *(v9 - 8);
  v75 = v9;
  __chkstk_darwin(v9);
  v72 = &v60[-v10];
  v65 = sub_147EC(&qword_B8F68, &qword_8A1F0);
  v64 = *(v65 - 8);
  v11 = __chkstk_darwin(v65);
  v70 = &v60[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v67 = &v60[-v13];
  v69 = sub_147EC(&qword_B8F70, &qword_8A1F8);
  v68 = *(v69 - 8);
  v14 = __chkstk_darwin(v69);
  v66 = &v60[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v71 = &v60[-v16];
  v17 = sub_147EC(&qword_B8F78, &qword_8A200);
  v18 = __chkstk_darwin(v17 - 8);
  v73 = &v60[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v21 = &v60[-v20];
  v22 = sub_147EC(&qword_B8F80, &qword_8A208);
  v23 = v22 - 8;
  v24 = __chkstk_darwin(v22);
  v26 = &v60[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v28 = &v60[-v27];
  v77 = a1;
  v78 = a2;
  v63 = a2;
  v79 = a3;
  v80 = a4;
  v61 = a3;
  v81 = a3;
  v62 = a4;
  v82 = a4;
  sub_147EC(&qword_B8F88, &qword_8A210);
  sub_814F8();
  v29 = v83;
  v30 = v84;
  LOBYTE(a2) = v85;
  type metadata accessor for StorageShared(0);
  sub_51240(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
  v83 = sub_80E68();
  v84 = v31;
  v85 = v29;
  v86 = v30;
  v87 = a2;
  sub_147EC(&qword_B8F90, &qword_8A218);
  sub_50CD0();
  sub_50D24();
  sub_81618();
  v32 = &v28[*(v23 + 44)];
  v33 = *(sub_147EC(&qword_B8FE0, &unk_8ACA0) + 28);
  v34 = sub_81248();
  (*(*(v34 - 8) + 56))(v32 + v33, 1, 1, v34);
  *v32 = swift_getKeyPath();
  if (a1)
  {
    v35 = a1;
    v36 = sub_254C4()[2];

    if (v36)
    {
      v37 = v35[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationsDidUpdateOnce];

      if (v37 == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_80C68();

        v38 = v83;
        v39 = v84;

        v40 = HIBYTE(v39) & 0xF;
        if ((v39 & 0x2000000000000000) == 0)
        {
          v40 = v38 & 0xFFFFFFFFFFFFLL;
        }

        if (!v40)
        {
          sub_147EC(&qword_B8FF0, &qword_8A2C0);
          sub_50ED4();
          v41 = sub_81628();
          __chkstk_darwin(v41);
          v42 = v63;
          *&v60[-32] = a1;
          *&v60[-24] = v42;
          v60[-16] = v61;
          *&v60[-8] = v62;
          sub_147EC(&qword_B9020, &qword_8A2D8);
          sub_51058();
          v43 = v67;
          sub_81628();
          v63 = *(v68 + 16);
          v44 = v66;
          v45 = v69;
          v63(v66, v71, v69);
          v46 = v64;
          v47 = *(v64 + 16);
          v48 = v43;
          v49 = v65;
          v47(v70, v48, v65);
          v63(v72, v44, v45);
          v50 = sub_147EC(&qword_B9048, &qword_8A2E8);
          v51 = v70;
          v47(&v72[*(v50 + 48)], v70, v49);
          v52 = *(v46 + 8);
          v52(v67, v49);
          v53 = *(v68 + 8);
          v54 = v69;
          v53(v71, v69);
          v52(v51, v49);
          v53(v66, v54);
          sub_511C8(v72, v21);
          v55 = 0;
LABEL_11:
          (*(v74 + 56))(v21, v55, 1, v75);
          sub_14F6C(v28, v26, &qword_B8F80, &qword_8A208);
          v56 = v73;
          sub_14F6C(v21, v73, &qword_B8F78, &qword_8A200);
          v57 = v76;
          sub_14F6C(v26, v76, &qword_B8F80, &qword_8A208);
          v58 = sub_147EC(&qword_B8FE8, &qword_8A270);
          sub_14F6C(v56, v57 + *(v58 + 48), &qword_B8F78, &qword_8A200);
          sub_14FD4(v21, &qword_B8F78, &qword_8A200);
          sub_14FD4(v28, &qword_B8F80, &qword_8A208);
          sub_14FD4(v56, &qword_B8F78, &qword_8A200);
          return sub_14FD4(v26, &qword_B8F80, &qword_8A208);
        }

LABEL_10:
        v55 = 1;
        goto LABEL_11;
      }
    }

    else
    {
    }

    goto LABEL_10;
  }

  result = sub_80E58();
  __break(1u);
  return result;
}

uint64_t sub_4F76C@<X0>(void *a1@<X0>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a4;
  LODWORD(v42) = a3;
  v49 = a5;
  v50 = sub_147EC(&qword_B8FD8, &unk_8A230);
  __chkstk_darwin(v50);
  v7 = &v39[-v6];
  v47 = sub_147EC(&qword_B9060, &qword_8A3E0);
  __chkstk_darwin(v47);
  v9 = &v39[-v8];
  v44 = sub_147EC(&qword_B9068, &qword_8A3E8);
  __chkstk_darwin(v44);
  v11 = &v39[-v10];
  v48 = sub_147EC(&qword_B8FB0, &qword_8A220);
  __chkstk_darwin(v48);
  v13 = &v39[-v12];
  v14 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  v15 = __chkstk_darwin(v14);
  v17 = &v39[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v39[-v18];
  v46 = type metadata accessor for AppsListView(0);
  __chkstk_darwin(v46);
  v21 = &v39[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v22 = a1;
    v23 = sub_254C4()[2];

    v45 = v13;
    if (v23)
    {
      v24 = v22[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationsDidUpdateOnce];

      if (v24 == 1)
      {

        KeyPath = swift_getKeyPath();
        LOBYTE(v51[0]) = v42;
        *(&v51[0] + 1) = v43;
        sub_147EC(&qword_B8F88, &qword_8A210);
        sub_814F8();
        v42 = *(&v55 + 1);
        v43 = v55;
        v40 = v56[0];
        type metadata accessor for StorageShared(0);
        sub_51240(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
        *(v21 + 2) = sub_80E68();
        *(v21 + 3) = v25;
        LOBYTE(v51[0]) = 1;
        sub_814C8();
        v26 = *(&v55 + 1);
        v21[56] = v55;
        *(v21 + 8) = v26;
        v27 = type metadata accessor for Application(0);
        (*(*(v27 - 8) + 56))(v19, 1, 1, v27);
        sub_14F6C(v19, v17, &qword_B7E50, &qword_8A3F0);
        sub_814C8();
        sub_14FD4(v19, &qword_B7E50, &qword_8A3F0);
        *v21 = KeyPath;
        v21[8] = 1;
        v28 = v42;
        *(v21 + 4) = v43;
        *(v21 + 5) = v28;
        v21[48] = v40;
        sub_512A8(v21, v11, type metadata accessor for AppsListView);
        swift_storeEnumTagMultiPayload();
        sub_147EC(&qword_B8FC8, &qword_8A228);
        sub_51240(&qword_B8FB8, type metadata accessor for AppsListView, &unk_8C3D0);
        sub_14F24(&qword_B8FC0, &qword_B8FC8, &qword_8A228, &protocol conformance descriptor for HStack<A>);
        v29 = v45;
        sub_810A8();
        sub_14F6C(v29, v9, &qword_B8FB0, &qword_8A220);
        swift_storeEnumTagMultiPayload();
        sub_50DDC();
        sub_14F24(&qword_B8FD0, &qword_B8FD8, &unk_8A230, &protocol conformance descriptor for HStack<A>);
        sub_810A8();
        sub_14FD4(v29, &qword_B8FB0, &qword_8A220);
        return sub_51310(v21, type metadata accessor for AppsListView);
      }
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_80C68();

    if (v55 == 1)
    {
      v31 = sub_81008();
      v52 = 1;
      sub_50128(v53);
      *(v51 + 7) = v53[0];
      *(&v51[1] + 7) = v53[1];
      *(&v51[2] + 7) = v54[0];
      v51[3] = *(v54 + 9);
      v55 = v31;
      v56[0] = v52;
      *&v56[1] = v51[0];
      *&v56[17] = v51[1];
      *&v56[33] = v51[2];
      *&v56[49] = *(v54 + 9);
      v32 = *v56;
      *v11 = v31;
      *(v11 + 1) = v32;
      v33 = *&v56[32];
      *(v11 + 2) = *&v56[16];
      *(v11 + 3) = v33;
      *(v11 + 4) = *&v56[48];
      v11[80] = v56[64];
      swift_storeEnumTagMultiPayload();
      sub_14F6C(&v55, v51, &qword_B8FC8, &qword_8A228);
      sub_147EC(&qword_B8FC8, &qword_8A228);
      sub_51240(&qword_B8FB8, type metadata accessor for AppsListView, &unk_8C3D0);
      sub_14F24(&qword_B8FC0, &qword_B8FC8, &qword_8A228, &protocol conformance descriptor for HStack<A>);
      v34 = v45;
      sub_810A8();
      sub_14F6C(v34, v9, &qword_B8FB0, &qword_8A220);
      swift_storeEnumTagMultiPayload();
      sub_50DDC();
      sub_14F24(&qword_B8FD0, &qword_B8FD8, &unk_8A230, &protocol conformance descriptor for HStack<A>);
      sub_810A8();
      sub_14FD4(&v55, &qword_B8FC8, &qword_8A228);
      v35 = v34;
      v36 = &qword_B8FB0;
      v37 = &qword_8A220;
    }

    else
    {
      *v7 = sub_81008();
      *(v7 + 1) = 0;
      v7[16] = 1;
      v38 = sub_147EC(&qword_B9070, &qword_8A440);
      sub_50254(&v7[*(v38 + 44)]);
      sub_14F6C(v7, v9, &qword_B8FD8, &unk_8A230);
      swift_storeEnumTagMultiPayload();
      sub_50DDC();
      sub_14F24(&qword_B8FD0, &qword_B8FD8, &unk_8A230, &protocol conformance descriptor for HStack<A>);
      sub_810A8();
      v35 = v7;
      v36 = &qword_B8FD8;
      v37 = &unk_8A230;
    }

    return sub_14FD4(v35, v36, v37);
  }

  else
  {
    type metadata accessor for StorageShared(0);
    sub_51240(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

uint64_t sub_50128@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  v5 = sub_81288();
  v7 = v6;
  v9 = v8 & 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8 & 1;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_16C28(v5, v6, v8 & 1);

  sub_15034(v5, v7, v9);
}

uint64_t sub_50254@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_147EC(&qword_B7B68, &unk_8A470);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - v4;
  v6 = sub_147EC(&qword_B9078, &qword_8BEC0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_80D28();
  sub_14F24(&qword_B8760, &qword_B7B68, &unk_8A470, &protocol conformance descriptor for ProgressView<A, B>);
  sub_81398();
  (*(v3 + 8))(v5, v2);
  sub_14F6C(v11, v9, &qword_B9078, &qword_8BEC0);
  *a1 = 0;
  *(a1 + 8) = 1;
  v12 = sub_147EC(&qword_B9080, &qword_8A480);
  sub_14F6C(v9, a1 + *(v12 + 48), &qword_B9078, &qword_8BEC0);
  v13 = a1 + *(v12 + 64);
  *v13 = 0;
  *(v13 + 8) = 1;
  sub_14FD4(v11, &qword_B9078, &qword_8BEC0);
  return sub_14FD4(v9, &qword_B9078, &qword_8BEC0);
}

uint64_t sub_5048C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_147EC(&qword_B9018, &qword_8A2D0);
  __chkstk_darwin(v2);
  v4 = (&v11 - v3);
  *v4 = swift_getKeyPath();
  sub_147EC(&qword_B8570, &qword_8A370);
  swift_storeEnumTagMultiPayload();
  v5 = v2[9];
  *(v4 + v5) = swift_getKeyPath();
  sub_147EC(&qword_B8680, &unk_895A0);
  swift_storeEnumTagMultiPayload();
  *(v4 + v2[10]) = 1;
  v6 = (v4 + v2[11]);
  *v6 = sub_5066C;
  v6[1] = 0;
  v7 = (v4 + v2[12]);
  *v7 = sub_506FC;
  v7[1] = 0;
  sub_14F24(&qword_B9010, &qword_B9018, &qword_8A2D0, &unk_89528);
  sub_81398();
  sub_14FD4(v4, &qword_B9018, &qword_8A2D0);
  v8 = sub_81038();
  result = sub_147EC(&qword_B8FF0, &qword_8A2C0);
  v10 = (a1 + *(result + 36));
  *v10 = v8;
  v10[1] = sub_50920;
  v10[2] = 0;
  return result;
}

uint64_t sub_5066C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for HiddenAppsListWrapper();
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_80AF8();
  v2 = sub_80B08();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_506FC()
{
  sub_432C8();

  return sub_814B8();
}

uint64_t sub_50780@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  result = sub_81288();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_50854@<X0>(uint64_t a1@<X8>)
{
  if (qword_B7868 != -1)
  {
    swift_once();
  }

  v2 = qword_BCFD8;
  v3 = unk_BCFE0;
  v5 = qword_BCFF0;
  v4 = unk_BCFF8;
  v6 = byte_BCFE8;
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  *(a1 + 56) = 2;
  sub_2092C(v2, v3, v6);
}

uint64_t sub_50928(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = a1;
    sub_80C68();

    sub_147EC(&qword_B81A0, &qword_88E90);
    sub_147EC(&qword_B9038, &qword_8A2E0);
    sub_14F24(&qword_B9050, &qword_B81A0, &qword_88E90, &protocol conformance descriptor for [A]);
    sub_510DC();
    sub_51240(&qword_B9058, type metadata accessor for Application, &unk_88BF0);
    return sub_81608();
  }

  else
  {
    type metadata accessor for StorageShared(0);
    sub_51240(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

uint64_t sub_50AF4(Swift::String *a1)
{
  v2 = type metadata accessor for AppListView(0);
  v3 = __chkstk_darwin(v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_512A8(a1, v5 + *(v3 + 20), type metadata accessor for Application);
  type metadata accessor for StorageShared(0);
  sub_51240(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
  *v5 = sub_80E68();
  v5[1] = v6;
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_81D08(17);

  v8 = 0x746163696C707041;
  v9 = 0xEF2D776F526E6F69;
  sub_81978(*a1);
  sub_51240(&qword_B9040, type metadata accessor for AppListView, &unk_8BDA0);
  sub_81398();

  return sub_51310(v5, type metadata accessor for AppListView);
}

unint64_t sub_50CD0()
{
  result = qword_B8F98;
  if (!qword_B8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8F98);
  }

  return result;
}

unint64_t sub_50D24()
{
  result = qword_B8FA0;
  if (!qword_B8FA0)
  {
    sub_14E2C(&qword_B8F90, &qword_8A218);
    sub_50DDC();
    sub_14F24(&qword_B8FD0, &qword_B8FD8, &unk_8A230, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8FA0);
  }

  return result;
}

unint64_t sub_50DDC()
{
  result = qword_B8FA8;
  if (!qword_B8FA8)
  {
    sub_14E2C(&qword_B8FB0, &qword_8A220);
    sub_51240(&qword_B8FB8, type metadata accessor for AppsListView, &unk_8C3D0);
    sub_14F24(&qword_B8FC0, &qword_B8FC8, &qword_8A228, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8FA8);
  }

  return result;
}

unint64_t sub_50ED4()
{
  result = qword_B8FF8;
  if (!qword_B8FF8)
  {
    sub_14E2C(&qword_B8FF0, &qword_8A2C0);
    sub_50F60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8FF8);
  }

  return result;
}

unint64_t sub_50F60()
{
  result = qword_B9000;
  if (!qword_B9000)
  {
    sub_14E2C(&qword_B9008, &qword_8A2C8);
    sub_14F24(&qword_B9010, &qword_B9018, &qword_8A2D0, &unk_89528);
    sub_51240(&qword_B8738, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9000);
  }

  return result;
}

unint64_t sub_51058()
{
  result = qword_B9028;
  if (!qword_B9028)
  {
    sub_14E2C(&qword_B9020, &qword_8A2D8);
    sub_510DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9028);
  }

  return result;
}

unint64_t sub_510DC()
{
  result = qword_B9030;
  if (!qword_B9030)
  {
    sub_14E2C(&qword_B9038, &qword_8A2E0);
    sub_51240(&qword_B9040, type metadata accessor for AppListView, &unk_8BDA0);
    sub_51240(&qword_B8738, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9030);
  }

  return result;
}

uint64_t sub_511C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B8F60, &qword_8A1E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_51240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_512A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_51310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_513B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a1;
  v4[19] = a4;
  sub_147EC(&unk_B8240, &qword_88F50);
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_51454, a4, 0);
}

uint64_t sub_51454()
{
  v22 = v0;
  v1 = v0[19];
  swift_beginAccess();
  sub_555C4(v1 + 160, (v0 + 2));
  if (v0[5])
  {
    v2 = v0[19];
    sub_3C978((v0 + 2), (v0 + 7));
    sub_14FD4((v0 + 2), &qword_B8398, &qword_89420);
    v3 = sub_22CB8(v0 + 7, v0[10]);
    swift_beginAccess();
    v4 = *(v2 + 120);
    v5 = *(v4 + 16);
    if (v5)
    {
      v20 = v3;
      v6 = sub_3445C(v5, 0);
      v7 = sub_3A1AC(&v21, v6 + 32, v5, v4);
      v8 = v21;

      result = sub_208C0(v8);
      if (v7 != v5)
      {
        __break(1u);
        return result;
      }

      v10 = v6;
      v3 = v20;
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }

    v12 = v0[20];
    v13 = v0[18];
    v14 = *v3;
    v15 = sub_81AB8();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    sub_81A88();
    v16 = v14;
    v17 = sub_81A78();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v16;
    v18[5] = v10;
    sub_68AE4(0, 0, v12, &unk_8A5B0, v18);

    *v13 = 0;
    sub_20FD0(v0 + 7);
  }

  else
  {
    v11 = v0[18];
    sub_14FD4((v0 + 2), &qword_B8398, &qword_89420);
    *v11 = 1;
  }

  v19 = v0[1];

  return v19();
}

uint64_t (*sub_516C0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_147EC(&unk_B8240, &qword_88F50) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  *(v4 + 32) = v6;
  swift_beginAccess();
  return sub_51784;
}

void sub_51784(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = sub_81AB8();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = sub_3CA84();
    v8 = swift_allocObject();
    v8[2] = v5;
    v8[3] = v7;
    v8[4] = v5;
    swift_retain_n();
    sub_68DE4(0, 0, v4, &unk_8A638, v8);
  }

  free(v4);

  free(v3);
}

uint64_t sub_51888()
{
  swift_defaultActor_initialize();
  *(v0 + 120) = sub_3AEAC(_swiftEmptyArrayStorage);
  *(v0 + 128) = [objc_allocWithZone(MSPStorageTipsManager) init];
  *(v0 + 136) = _swiftEmptyArrayStorage;
  *(v0 + 208) = 0;
  *(v0 + 144) = vnegq_f64(0);
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 185) = 0u;
  *(v0 + 216) = 1;
  v1 = [objc_opt_self() recommendationsShared];
  *(v0 + 112) = v1;
  [v1 setDelegate:v0];
  return v0;
}

uint64_t sub_51934(uint64_t a1, uint64_t a2)
{
  v2 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_81AB8();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    sub_68AE4(0, 0, v4, &unk_8A660, v8);
  }

  return result;
}

uint64_t sub_51A74()
{
  [*(*(v0 + 16) + 112) startMonitor];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_51AE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for Application(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = sub_81928();
  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

  v16 = sub_34B30(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_7:
    v21 = 0x8000000000000000;
    goto LABEL_8;
  }

  sub_208C8(*(a1 + 56) + *(v8 + 72) * v16, v13);
  v19 = *(v13 + 6);
  v20 = *(v13 + 7);
  sub_2095C(v13);
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
LABEL_6:

    goto LABEL_7;
  }

LABEL_8:
  *(v2 + 144) = v21;
  v22 = sub_81928();
  if (!*(a1 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v24 = sub_34B30(v22, v23);
  v26 = v25;

  if (v26)
  {
    sub_208C8(*(a1 + 56) + *(v8 + 72) * v24, v11);
    v27 = *(v11 + 6);
    v28 = *(v11 + 7);
    sub_2095C(v11);
    v29 = v27 + v28;
    if (!__OFADD__(v27, v28))
    {
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  v29 = 0x8000000000000000;
LABEL_15:
  *(v2 + 152) = v29;
  v30 = sub_81AB8();
  (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
  v31 = sub_3CA84();
  v32 = swift_allocObject();
  v32[2] = v2;
  v32[3] = v31;
  v32[4] = v2;
  swift_retain_n();
  sub_68AE4(0, 0, v6, &unk_8A628, v32);
}

uint64_t sub_51D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_147EC(&unk_B8240, &qword_88F50);
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_51E24, a4, 0);
}

uint64_t sub_51E24()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_81AB8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_68AE4(0, 0, v2, &unk_8A630, v4);

  v5 = v0[1];

  return v5();
}

id sub_51F24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 detailClass] && (swift_getObjCClassMetadata(), sub_1A7F4(0, &unk_B9300, UIViewController_ptr), (v5 = swift_dynamicCastMetatype()) != 0))
  {
    v55 = v5;
  }

  else
  {
    v6 = [a1 enableButtonTitle];
    if (v6)
    {
      v7 = v6;
      v8 = sub_81928();
      v57 = v9;
      v58 = v8;

      v10 = swift_allocObject();
      *(v10 + 16) = v2;
      *(v10 + 24) = a1;
      v56 = v10;

      v11 = a1;
      v54 = &unk_8A618;
      v55 = 0;
      goto LABEL_8;
    }

    v55 = 0;
  }

  v54 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
LABEL_8:
  [a1 progress];
  if (v12 == 1.0)
  {
    v53 = 1;
    *&v13 = 1;
  }

  else
  {
    [a1 progress];
    if (v14 == 0.0)
    {
      v53 = 1;
      v13 = 0.0;
    }

    else
    {
      [a1 progress];
      v53 = 0;
      v13 = v15;
    }
  }

  v16 = [a1 confirmationText];
  if (v16)
  {
    v17 = v16;
    v18 = sub_81928();
    v20 = v19;

    v21 = [a1 confirmationButtonTitle];
    if (v21)
    {
      v22 = v21;
      v23 = sub_81928();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v48 = v25;
    v49 = v23;
    v52 = [a1 mayCauseDataLoss];
    v50 = v20;
    v51 = v18;
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
  }

  v26 = [a1 identifier];
  v27 = sub_81928();
  v46 = v28;
  v47 = v27;

  v29 = [a1 bundleID];
  v45 = sub_81928();
  v31 = v30;

  v32 = [a1 title];
  v33 = sub_81928();
  v35 = v34;

  v36 = [a1 bundleID];
  v37 = sub_81928();
  v39 = v38;

  v40 = [a1 explanaition];
  v41 = sub_81928();
  v43 = v42;

  result = [a1 gain];
  *a2 = v47;
  *(a2 + 8) = v46;
  *(a2 + 16) = v45;
  *(a2 + 24) = v31;
  *(a2 + 32) = v33;
  *(a2 + 40) = v35;
  *(a2 + 48) = v37;
  *(a2 + 56) = v39;
  *(a2 + 64) = 0;
  *(a2 + 72) = v37;
  *(a2 + 80) = v39;
  *(a2 + 88) = v41;
  *(a2 + 96) = v43;
  *(a2 + 104) = result;
  *(a2 + 112) = v49;
  *(a2 + 120) = v48;
  *(a2 + 128) = v51;
  *(a2 + 136) = v50;
  *(a2 + 144) = v52;
  *(a2 + 152) = v55;
  *(a2 + 160) = v58;
  *(a2 + 168) = v57;
  *(a2 + 176) = v13;
  *(a2 + 184) = v53;
  *(a2 + 192) = v54;
  *(a2 + 200) = v56;
  *(a2 + 208) = 0;
  return result;
}

uint64_t sub_5229C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_522C0, a1, 0);
}

uint64_t sub_522C0()
{
  v1 = *(*(v0 + 16) + 112);
  v2 = [*(v0 + 24) identifier];
  if (!v2)
  {
    sub_81928();
    v2 = sub_818E8();
  }

  [v1 enableTip:v2];

  v3 = *(v0 + 8);

  return v3(0xBFF0000000000000, 0);
}

uint64_t sub_5237C(uint64_t a1, uint64_t a2)
{
  v3[241] = v2;
  v3[240] = a2;
  v3[239] = a1;
  return _swift_task_switch(sub_523A4, v2, 0);
}

uint64_t sub_523A4()
{
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1912);
  v3 = sub_516C0((v0 + 1744));
  v4 = sub_2659C((v0 + 1776), v2, v1);
  v6 = v5;
  memmove((v0 + 16), v5, 0xD1uLL);
  if (sub_3C268(v0 + 16) != 1)
  {
    v6[22] = 0xBFF0000000000000;
    *(v6 + 184) = 0;
  }

  v7 = (v0 + 232);
  (v4)(v0 + 1776, 0);
  (v3)(v0 + 1744, 0);
  v8 = *(v0 + 1928);
  swift_beginAccess();
  v9 = *(v8 + 120);
  if (*(v9 + 16))
  {
    v10 = *(v0 + 1920);
    v11 = *(v0 + 1912);

    v12 = sub_34B30(v11, v10);
    if (v13)
    {
      v14 = (*(v9 + 56) + 216 * v12);
      v15 = v14[1];
      *(v0 + 1312) = *v14;
      *(v0 + 1328) = v15;
      v16 = v14[2];
      v17 = v14[3];
      v18 = v14[5];
      *(v0 + 1376) = v14[4];
      *(v0 + 1392) = v18;
      *(v0 + 1344) = v16;
      *(v0 + 1360) = v17;
      v19 = v14[6];
      v20 = v14[7];
      v21 = v14[9];
      *(v0 + 1440) = v14[8];
      *(v0 + 1456) = v21;
      *(v0 + 1408) = v19;
      *(v0 + 1424) = v20;
      v22 = v14[10];
      v23 = v14[11];
      v24 = v14[12];
      *(v0 + 1520) = *(v14 + 208);
      *(v0 + 1488) = v23;
      *(v0 + 1504) = v24;
      *(v0 + 1472) = v22;
      memmove((v0 + 232), v14, 0xD1uLL);
      sub_3C168(v0 + 1312, v0 + 1528);

      nullsub_1();
      goto LABEL_8;
    }
  }

  sub_1A6B0(v0 + 232);
LABEL_8:
  v25 = *(v0 + 408);
  *(v0 + 608) = *(v0 + 392);
  *(v0 + 624) = v25;
  *(v0 + 640) = *(v0 + 424);
  *(v0 + 656) = *(v0 + 440);
  v26 = *(v0 + 344);
  *(v0 + 544) = *(v0 + 328);
  *(v0 + 560) = v26;
  v27 = *(v0 + 376);
  *(v0 + 576) = *(v0 + 360);
  *(v0 + 592) = v27;
  v28 = *(v0 + 280);
  *(v0 + 480) = *(v0 + 264);
  *(v0 + 496) = v28;
  v29 = *(v0 + 312);
  *(v0 + 512) = *(v0 + 296);
  *(v0 + 528) = v29;
  v30 = *(v0 + 248);
  *(v0 + 448) = *v7;
  *(v0 + 464) = v30;
  if (sub_3C268(v0 + 448) == 1)
  {
    v31 = *(v0 + 408);
    *(v0 + 1256) = *(v0 + 392);
    *(v0 + 1272) = v31;
    *(v0 + 1288) = *(v0 + 424);
    *(v0 + 1304) = *(v0 + 440);
    v32 = *(v0 + 344);
    *(v0 + 1192) = *(v0 + 328);
    *(v0 + 1208) = v32;
    v33 = *(v0 + 376);
    *(v0 + 1224) = *(v0 + 360);
    *(v0 + 1240) = v33;
    v34 = *(v0 + 280);
    *(v0 + 1128) = *(v0 + 264);
    *(v0 + 1144) = v34;
    v35 = *(v0 + 312);
    *(v0 + 1160) = *(v0 + 296);
    *(v0 + 1176) = v35;
    v36 = *(v0 + 248);
    *(v0 + 1096) = *v7;
    *(v0 + 1112) = v36;
    sub_14FD4(v0 + 1096, &qword_B8350, &qword_8A5D0);
    v37 = 0;
    v38 = &unk_8A5F8;
  }

  else
  {
    v40 = *(v0 + 424);
    v39 = *(v0 + 432);
    v41 = *(v0 + 408);
    *(v0 + 824) = *(v0 + 392);
    *(v0 + 840) = v41;
    *(v0 + 856) = *(v0 + 424);
    *(v0 + 872) = *(v0 + 440);
    v42 = *(v0 + 344);
    *(v0 + 760) = *(v0 + 328);
    *(v0 + 776) = v42;
    v43 = *(v0 + 376);
    *(v0 + 792) = *(v0 + 360);
    *(v0 + 808) = v43;
    v44 = *(v0 + 280);
    *(v0 + 696) = *(v0 + 264);
    *(v0 + 712) = v44;
    v45 = *(v0 + 312);
    *(v0 + 728) = *(v0 + 296);
    *(v0 + 744) = v45;
    v46 = *(v0 + 248);
    *(v0 + 664) = *v7;
    *(v0 + 680) = v46;
    sub_55AC0(v40, v39);
    sub_14FD4(v0 + 664, &qword_B8350, &qword_8A5D0);
    v38 = &unk_8A5F8;
    if (v40)
    {
      v37 = swift_allocObject();
      *(v37 + 16) = v40;
      *(v37 + 24) = v39;
      v38 = &unk_8A608;
    }

    else
    {
      v37 = 0;
    }
  }

  *(v0 + 1936) = v37;
  v49 = (v38 + *v38);
  v47 = swift_task_alloc();
  *(v0 + 1944) = v47;
  *v47 = v0;
  v47[1] = sub_5277C;

  return v49(v0 + 1896);
}

uint64_t sub_5277C()
{
  v1 = *v0;
  v2 = *(*v0 + 1928);

  *(v1 + 1952) = *(v1 + 1896);
  *(v1 + 225) = *(v1 + 1904);

  return _swift_task_switch(sub_528D8, v2, 0);
}

uint64_t sub_528D8()
{
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1912);
  v3 = sub_516C0((v0 + 1808));
  v4 = sub_2659C((v0 + 1840), v2, v1);
  v6 = v5;
  memmove((v0 + 880), v5, 0xD1uLL);
  if (sub_3C268(v0 + 880) != 1)
  {
    v7 = *(v0 + 225);
    v6[22] = *(v0 + 1952);
    *(v6 + 184) = v7;
  }

  (v4)(v0 + 1840, 0);
  (v3)(v0 + 1808, 0);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_529D0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_52ABC;

  return v5();
}

uint64_t sub_52ABC(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_52C00()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  *(v1 + 8) = 1;
  return (*(v0 + 8))();
}

uint64_t sub_52C24()
{
  *(v1 + 2176) = v0;
  sub_147EC(&unk_B8240, &qword_88F50);
  *(v1 + 2184) = swift_task_alloc();

  return _swift_task_switch(sub_52CC0, v0, 0);
}

uint64_t sub_52CC0()
{
  v1 = [objc_opt_self() ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeProduction];
  v2 = [v1 ams_activeiTunesAccount];

  if (v2)
  {
    v3 = [v2 isActive];
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_818E8();
  v5 = sub_818E8();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v4, v5, 0);

  if (!v3 || AppBooleanValue)
  {
    v9 = *(v0 + 2176);
    if (*(v9 + 216))
    {
      v10 = sub_540AC();
    }

    else
    {
      v11 = *(v0 + 2184);
      v10 = *(v9 + 208);
      v12 = sub_81AB8();
      (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
      v13 = sub_3CA84();
      v14 = swift_allocObject();
      v14[2] = v9;
      v14[3] = v13;
      v14[4] = v9;
      swift_retain_n();
      sub_68AE4(0, 0, v11, &unk_8A5E0, v14);
    }

    if (v10 < 1)
    {
      v15 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_19850(v10, v0 + 664);
      v15 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_3421C(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_3421C((v16 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      v18 = &v15[216 * v17];
      v19 = *(v0 + 680);
      *(v18 + 2) = *(v0 + 664);
      *(v18 + 3) = v19;
      v20 = *(v0 + 696);
      v21 = *(v0 + 712);
      v22 = *(v0 + 744);
      *(v18 + 6) = *(v0 + 728);
      *(v18 + 7) = v22;
      *(v18 + 4) = v20;
      *(v18 + 5) = v21;
      v23 = *(v0 + 760);
      v24 = *(v0 + 776);
      v25 = *(v0 + 808);
      *(v18 + 10) = *(v0 + 792);
      *(v18 + 11) = v25;
      *(v18 + 8) = v23;
      *(v18 + 9) = v24;
      v26 = *(v0 + 824);
      v27 = *(v0 + 840);
      v28 = *(v0 + 856);
      v18[240] = *(v0 + 872);
      *(v18 + 13) = v27;
      *(v18 + 14) = v28;
      *(v18 + 12) = v26;
    }

    sub_19B94(v0 + 232);
    if (sub_3C268(v0 + 232) != 1)
    {
      v29 = *(v0 + 408);
      *(v0 + 176) = *(v0 + 392);
      *(v0 + 192) = v29;
      *(v0 + 208) = *(v0 + 424);
      *(v0 + 224) = *(v0 + 440);
      v30 = *(v0 + 344);
      *(v0 + 112) = *(v0 + 328);
      *(v0 + 128) = v30;
      v31 = *(v0 + 376);
      *(v0 + 144) = *(v0 + 360);
      *(v0 + 160) = v31;
      v32 = *(v0 + 280);
      *(v0 + 48) = *(v0 + 264);
      *(v0 + 64) = v32;
      v33 = *(v0 + 312);
      *(v0 + 80) = *(v0 + 296);
      *(v0 + 96) = v33;
      v34 = *(v0 + 248);
      *(v0 + 16) = *(v0 + 232);
      *(v0 + 32) = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_3421C(0, *(v15 + 2) + 1, 1, v15);
      }

      v36 = *(v15 + 2);
      v35 = *(v15 + 3);
      if (v36 >= v35 >> 1)
      {
        v15 = sub_3421C((v35 > 1), v36 + 1, 1, v15);
      }

      *(v15 + 2) = v36 + 1;
      v37 = &v15[216 * v36];
      v38 = *(v0 + 32);
      *(v37 + 2) = *(v0 + 16);
      *(v37 + 3) = v38;
      v39 = *(v0 + 48);
      v40 = *(v0 + 64);
      v41 = *(v0 + 96);
      *(v37 + 6) = *(v0 + 80);
      *(v37 + 7) = v41;
      *(v37 + 4) = v39;
      *(v37 + 5) = v40;
      v42 = *(v0 + 112);
      v43 = *(v0 + 128);
      v44 = *(v0 + 160);
      *(v37 + 10) = *(v0 + 144);
      *(v37 + 11) = v44;
      *(v37 + 8) = v42;
      *(v37 + 9) = v43;
      v45 = *(v0 + 176);
      v46 = *(v0 + 192);
      v47 = *(v0 + 208);
      v37[240] = *(v0 + 224);
      *(v37 + 13) = v46;
      *(v37 + 14) = v47;
      *(v37 + 12) = v45;
    }

    *(v0 + 2200) = v15;
    v48 = *(v0 + 2176);
    v49 = sub_3CA84();
    v50 = swift_task_alloc();
    *(v0 + 2208) = v50;
    v51 = sub_147EC(&qword_B8350, &qword_8A5D0);
    *v50 = v0;
    v50[1] = sub_53700;
    v52 = *(v0 + 2176);

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 1528, v48, v49, 0xD000000000000016, 0x8000000000095CE0, sub_558E4, v52, v51);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 2192) = v7;
    *v7 = v0;
    v7[1] = sub_531C8;

    return sub_18D7C(v0 + 880);
  }
}

uint64_t sub_531C8()
{
  v1 = *(*v0 + 2176);

  return _swift_task_switch(sub_532D8, v1, 0);
}

uint64_t sub_532D8()
{
  v1 = sub_3421C(0, 1, 1, _swiftEmptyArrayStorage);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_3421C((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  v4 = &v1[216 * v3];
  v5 = *(v0 + 896);
  *(v4 + 2) = *(v0 + 880);
  *(v4 + 3) = v5;
  v6 = *(v0 + 912);
  v7 = *(v0 + 928);
  v8 = *(v0 + 960);
  *(v4 + 6) = *(v0 + 944);
  *(v4 + 7) = v8;
  *(v4 + 4) = v6;
  *(v4 + 5) = v7;
  v9 = *(v0 + 976);
  v10 = *(v0 + 992);
  v11 = *(v0 + 1024);
  *(v4 + 10) = *(v0 + 1008);
  *(v4 + 11) = v11;
  *(v4 + 8) = v9;
  *(v4 + 9) = v10;
  v12 = *(v0 + 1040);
  v13 = *(v0 + 1056);
  v14 = *(v0 + 1072);
  v4[240] = *(v0 + 1088);
  *(v4 + 13) = v13;
  *(v4 + 14) = v14;
  *(v4 + 12) = v12;
  v15 = *(v0 + 2176);
  if (*(v15 + 216))
  {
    v16 = sub_540AC();
  }

  else
  {
    v17 = *(v0 + 2184);
    v16 = *(v15 + 208);
    v18 = sub_81AB8();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v19 = sub_3CA84();
    v20 = swift_allocObject();
    v20[2] = v15;
    v20[3] = v19;
    v20[4] = v15;
    swift_retain_n();
    sub_68AE4(0, 0, v17, &unk_8A5E0, v20);
  }

  if (v16 >= 1)
  {
    sub_19850(v16, v0 + 664);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_3421C(0, *(v1 + 2) + 1, 1, v1);
    }

    v22 = *(v1 + 2);
    v21 = *(v1 + 3);
    if (v22 >= v21 >> 1)
    {
      v1 = sub_3421C((v21 > 1), v22 + 1, 1, v1);
    }

    *(v1 + 2) = v22 + 1;
    v23 = &v1[216 * v22];
    v24 = *(v0 + 680);
    *(v23 + 2) = *(v0 + 664);
    *(v23 + 3) = v24;
    v25 = *(v0 + 696);
    v26 = *(v0 + 712);
    v27 = *(v0 + 744);
    *(v23 + 6) = *(v0 + 728);
    *(v23 + 7) = v27;
    *(v23 + 4) = v25;
    *(v23 + 5) = v26;
    v28 = *(v0 + 760);
    v29 = *(v0 + 776);
    v30 = *(v0 + 808);
    *(v23 + 10) = *(v0 + 792);
    *(v23 + 11) = v30;
    *(v23 + 8) = v28;
    *(v23 + 9) = v29;
    v31 = *(v0 + 824);
    v32 = *(v0 + 840);
    v33 = *(v0 + 856);
    v23[240] = *(v0 + 872);
    *(v23 + 13) = v32;
    *(v23 + 14) = v33;
    *(v23 + 12) = v31;
  }

  sub_19B94(v0 + 232);
  if (sub_3C268(v0 + 232) != 1)
  {
    v34 = *(v0 + 408);
    *(v0 + 176) = *(v0 + 392);
    *(v0 + 192) = v34;
    *(v0 + 208) = *(v0 + 424);
    *(v0 + 224) = *(v0 + 440);
    v35 = *(v0 + 344);
    *(v0 + 112) = *(v0 + 328);
    *(v0 + 128) = v35;
    v36 = *(v0 + 376);
    *(v0 + 144) = *(v0 + 360);
    *(v0 + 160) = v36;
    v37 = *(v0 + 280);
    *(v0 + 48) = *(v0 + 264);
    *(v0 + 64) = v37;
    v38 = *(v0 + 312);
    *(v0 + 80) = *(v0 + 296);
    *(v0 + 96) = v38;
    v39 = *(v0 + 248);
    *(v0 + 16) = *(v0 + 232);
    *(v0 + 32) = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_3421C(0, *(v1 + 2) + 1, 1, v1);
    }

    v41 = *(v1 + 2);
    v40 = *(v1 + 3);
    if (v41 >= v40 >> 1)
    {
      v1 = sub_3421C((v40 > 1), v41 + 1, 1, v1);
    }

    *(v1 + 2) = v41 + 1;
    v42 = &v1[216 * v41];
    v43 = *(v0 + 32);
    *(v42 + 2) = *(v0 + 16);
    *(v42 + 3) = v43;
    v44 = *(v0 + 48);
    v45 = *(v0 + 64);
    v46 = *(v0 + 96);
    *(v42 + 6) = *(v0 + 80);
    *(v42 + 7) = v46;
    *(v42 + 4) = v44;
    *(v42 + 5) = v45;
    v47 = *(v0 + 112);
    v48 = *(v0 + 128);
    v49 = *(v0 + 160);
    *(v42 + 10) = *(v0 + 144);
    *(v42 + 11) = v49;
    *(v42 + 8) = v47;
    *(v42 + 9) = v48;
    v50 = *(v0 + 176);
    v51 = *(v0 + 192);
    v52 = *(v0 + 208);
    v42[240] = *(v0 + 224);
    *(v42 + 13) = v51;
    *(v42 + 14) = v52;
    *(v42 + 12) = v50;
  }

  *(v0 + 2200) = v1;
  v53 = *(v0 + 2176);
  v54 = sub_3CA84();
  v55 = swift_task_alloc();
  *(v0 + 2208) = v55;
  v56 = sub_147EC(&qword_B8350, &qword_8A5D0);
  *v55 = v0;
  v55[1] = sub_53700;
  v57 = *(v0 + 2176);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 1528, v53, v54, 0xD000000000000016, 0x8000000000095CE0, sub_558E4, v57, v56);
}

uint64_t sub_53700()
{
  v1 = *(*v0 + 2176);

  return _swift_task_switch(sub_53810, v1, 0);
}

uint64_t sub_53810()
{
  *(v0 + 1520) = *(v0 + 1736);
  v1 = *(v0 + 1704);
  *(v0 + 1472) = *(v0 + 1688);
  *(v0 + 1488) = v1;
  *(v0 + 1504) = *(v0 + 1720);
  v2 = *(v0 + 1640);
  *(v0 + 1408) = *(v0 + 1624);
  *(v0 + 1424) = v2;
  v3 = *(v0 + 1672);
  *(v0 + 1440) = *(v0 + 1656);
  *(v0 + 1456) = v3;
  v4 = *(v0 + 1576);
  *(v0 + 1344) = *(v0 + 1560);
  *(v0 + 1360) = v4;
  v5 = *(v0 + 1608);
  *(v0 + 1376) = *(v0 + 1592);
  *(v0 + 1392) = v5;
  v6 = *(v0 + 1544);
  *(v0 + 1312) = *(v0 + 1528);
  *(v0 + 1328) = v6;
  v7 = *(v0 + 1488);
  *(v0 + 1256) = *(v0 + 1472);
  *(v0 + 1272) = v7;
  *(v0 + 1288) = *(v0 + 1504);
  *(v0 + 1304) = *(v0 + 1520);
  v8 = *(v0 + 1424);
  *(v0 + 1192) = *(v0 + 1408);
  *(v0 + 1208) = v8;
  v9 = *(v0 + 1456);
  *(v0 + 1224) = *(v0 + 1440);
  *(v0 + 1240) = v9;
  v10 = *(v0 + 1360);
  *(v0 + 1128) = *(v0 + 1344);
  *(v0 + 1144) = v10;
  v11 = *(v0 + 1392);
  *(v0 + 1160) = *(v0 + 1376);
  *(v0 + 1176) = v11;
  v12 = *(v0 + 1328);
  *(v0 + 1096) = *(v0 + 1312);
  *(v0 + 1112) = v12;
  if (sub_3C268(v0 + 1096) == 1)
  {
    v13 = *(v0 + 2200);
    if (!STStorageIsInternalInstall())
    {
LABEL_16:
      sub_14FD4(v0 + 1312, &qword_B8350, &qword_8A5D0);
      goto LABEL_17;
    }
  }

  else
  {
    v14 = *(v0 + 1488);
    *(v0 + 1904) = *(v0 + 1472);
    *(v0 + 1920) = v14;
    *(v0 + 1936) = *(v0 + 1504);
    *(v0 + 1952) = *(v0 + 1520);
    v15 = *(v0 + 1424);
    *(v0 + 1840) = *(v0 + 1408);
    *(v0 + 1856) = v15;
    v16 = *(v0 + 1456);
    *(v0 + 1872) = *(v0 + 1440);
    *(v0 + 1888) = v16;
    v17 = *(v0 + 1360);
    *(v0 + 1776) = *(v0 + 1344);
    *(v0 + 1792) = v17;
    v18 = *(v0 + 1392);
    *(v0 + 1808) = *(v0 + 1376);
    *(v0 + 1824) = v18;
    v19 = *(v0 + 1328);
    *(v0 + 1744) = *(v0 + 1312);
    *(v0 + 1760) = v19;
    sub_3C168(v0 + 1744, v0 + 1960);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v0 + 2200);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_3421C(0, *(v13 + 2) + 1, 1, *(v0 + 2200));
    }

    v22 = *(v13 + 2);
    v21 = *(v13 + 3);
    if (v22 >= v21 >> 1)
    {
      v13 = sub_3421C((v21 > 1), v22 + 1, 1, v13);
    }

    *(v13 + 2) = v22 + 1;
    v23 = &v13[216 * v22];
    v24 = *(v0 + 1112);
    *(v23 + 2) = *(v0 + 1096);
    *(v23 + 3) = v24;
    v25 = *(v0 + 1128);
    v26 = *(v0 + 1144);
    v27 = *(v0 + 1176);
    *(v23 + 6) = *(v0 + 1160);
    *(v23 + 7) = v27;
    *(v23 + 4) = v25;
    *(v23 + 5) = v26;
    v28 = *(v0 + 1192);
    v29 = *(v0 + 1208);
    v30 = *(v0 + 1240);
    *(v23 + 10) = *(v0 + 1224);
    *(v23 + 11) = v30;
    *(v23 + 8) = v28;
    *(v23 + 9) = v29;
    v31 = *(v0 + 1256);
    v32 = *(v0 + 1272);
    v33 = *(v0 + 1288);
    v23[240] = *(v0 + 1304);
    *(v23 + 13) = v32;
    *(v23 + 14) = v33;
    *(v23 + 12) = v31;
    if (!STStorageIsInternalInstall())
    {
      goto LABEL_16;
    }
  }

  v34 = *(*(v0 + 2176) + 144);
  if (v34 == 0x8000000000000000 || (v34 - 0x4A817C801) >= 0xFFFFFFFB938301FFLL)
  {
    goto LABEL_16;
  }

  sub_18B08(v34, v0 + 448);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_3421C(0, *(v13 + 2) + 1, 1, v13);
  }

  v36 = *(v13 + 2);
  v35 = *(v13 + 3);
  if (v36 >= v35 >> 1)
  {
    v13 = sub_3421C((v35 > 1), v36 + 1, 1, v13);
  }

  sub_14FD4(v0 + 1312, &qword_B8350, &qword_8A5D0);
  *(v13 + 2) = v36 + 1;
  v37 = &v13[216 * v36];
  v38 = *(v0 + 464);
  *(v37 + 2) = *(v0 + 448);
  *(v37 + 3) = v38;
  v39 = *(v0 + 528);
  v41 = *(v0 + 480);
  v40 = *(v0 + 496);
  *(v37 + 6) = *(v0 + 512);
  *(v37 + 7) = v39;
  *(v37 + 4) = v41;
  *(v37 + 5) = v40;
  v42 = *(v0 + 592);
  v44 = *(v0 + 544);
  v43 = *(v0 + 560);
  *(v37 + 10) = *(v0 + 576);
  *(v37 + 11) = v42;
  *(v37 + 8) = v44;
  *(v37 + 9) = v43;
  v46 = *(v0 + 624);
  v45 = *(v0 + 640);
  v47 = *(v0 + 608);
  v37[240] = *(v0 + 656);
  *(v37 + 13) = v46;
  *(v37 + 14) = v45;
  *(v37 + 12) = v47;
LABEL_17:

  v48 = *(v0 + 8);

  return v48(v13);
}