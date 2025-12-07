void *sub_101007320()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016C2CD0, &qword_1013C5328);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = (*(v4 + 48) + v17);
        v24 = *(v21 + 8);
        *v23 = v20;
        v23[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v24;

        result = sub_10090C56C(v22, v24);
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

void *sub_1010074AC()
{
  v1 = v0;
  v29 = type metadata accessor for Date();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016C2DB0, &qword_1013F7690);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

char *sub_101007778(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v47 = a4;
  v7 = v4;
  v8 = a1(0);
  v46 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v45 = &v37 - v9;
  v44 = type metadata accessor for UUID();
  v49 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(a2, a3);
  v11 = *v4;
  v12 = static _DictionaryStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v38 = v7;
    v39 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v48 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v48;
    v40 = v49 + 32;
    v41 = v49 + 16;
    v42 = v11;
    v24 = v49;
    v25 = v47;
    if (v21)
    {
      do
      {
        v26 = __clz(__rbit64(v21));
        v50 = (v21 - 1) & v21;
LABEL_14:
        v29 = v26 | (v17 << 6);
        v30 = *(v24 + 72) * v29;
        v32 = v43;
        v31 = v44;
        (*(v24 + 16))(v43, *(v11 + 48) + v30, v44);
        v33 = *(v11 + 56);
        v34 = v45;
        v35 = *(v46 + 72) * v29;
        sub_100022ABC(v33 + v35, v45, v25);
        (*(v24 + 32))(*(v23 + 48) + v30, v32, v31);
        v36 = v34;
        v11 = v42;
        result = sub_100029184(v36, *(v23 + 56) + v35, v25);
        v21 = v50;
      }

      while (v50);
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v38;
        v13 = v48;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v17);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v50 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v13;
  }

  return result;
}

void *sub_101007AA4(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    v19 = v9;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v23 = v20 | (v13 << 6);
        v24 = v37;
        v25 = *(v37 + 72) * v23;
        v27 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v25, v35);
        v28 = *(*(v7 + 56) + v23);
        result = (*(v24 + 32))(*(v19 + 48) + v25, v27, v26);
        *(*(v19 + 56) + v23) = v28;
        v17 = v38;
      }

      while (v38);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v22 = *(v31 + v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v38 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

id sub_101007D8C()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016C2D70, &qword_1013F7660);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100013894(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10004D07C(v19, (*(v4 + 56) + 32 * v17));
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

char *sub_101007F0C()
{
  v1 = v0;
  v31 = type metadata accessor for MACAddress();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016ADE08, &qword_1013C5540);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

void sub_101008230(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  sub_1000BC4D4(a1, a2);
  v5 = *v3;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_100013894(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }
}

char *sub_101008444()
{
  v1 = v0;
  v43 = type metadata accessor for UUID();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016C31F0, &unk_1013F7A00);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v38 = v1;
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v39 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v44 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v41 = v45 + 16;
    v40 = v45 + 32;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v46 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v45;
        v20 = *(v45 + 72) * v18;
        v21 = v42;
        v22 = v43;
        (*(v45 + 16))(v42, *(v3 + 48) + v20, v43);
        v18 *= 104;
        v23 = *(v3 + 56) + v18;
        v24 = *(v23 + 48);
        v25 = *(v23 + 64);
        v26 = *(v23 + 80);
        v54 = *(v23 + 96);
        v52 = v25;
        v53 = v26;
        v51 = v24;
        v28 = *(v23 + 16);
        v27 = *(v23 + 32);
        v48 = *v23;
        v49 = v28;
        v50 = v27;
        v29 = v3;
        v30 = v44;
        (*(v19 + 32))(*(v44 + 48) + v20, v21, v22);
        v31 = *(v30 + 56);
        v3 = v29;
        v32 = v31 + v18;
        v33 = v51;
        v34 = v52;
        v35 = v53;
        *(v32 + 96) = v54;
        *(v32 + 64) = v34;
        *(v32 + 80) = v35;
        *(v32 + 48) = v33;
        v36 = v50;
        v37 = v49;
        *v32 = v48;
        *(v32 + 16) = v37;
        *(v32 + 32) = v36;
        result = sub_1000D2A70(&v48, v47, &unk_1016AA4C0, &unk_1013BD0B0);
        v13 = v46;
      }

      while (v46);
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

        v1 = v38;
        v5 = v44;
        goto LABEL_18;
      }

      v17 = *(v39 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v46 = (v17 - 1) & v17;
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

char *sub_1010087D0()
{
  v1 = v0;
  v39 = type metadata accessor for UUID();
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016C30E8, &qword_1013F7908);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v40 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    v36 = v14;
    v37 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v41;
        v20 = *(v41 + 72) * v18;
        v22 = v38;
        v21 = v39;
        (*(v41 + 16))(v38, *(v3 + 48) + v20, v39);
        v23 = 24 * v18;
        v24 = *(v3 + 56) + 24 * v18;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v24 + 16);
        v28 = v40;
        (*(v19 + 32))(*(v40 + 48) + v20, v22, v21);
        v29 = *(v28 + 56);
        v3 = v37;
        v30 = v29 + v23;
        *v30 = v25;
        *(v30 + 8) = v26;
        *(v30 + 16) = v27;
        result = sub_1004E39C8(v25, v26, v27);
        v14 = v36;
        v13 = v42;
      }

      while (v42);
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

        v1 = v32;
        v5 = v40;
        goto LABEL_18;
      }

      v17 = *(v33 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v42 = (v17 - 1) & v17;
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

char *sub_101008A74()
{
  v1 = v0;
  v2 = type metadata accessor for MACAddress();
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  __chkstk_darwin(v2);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016C3078, &qword_1013F7870);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v38 + 32;
    v35 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v37;
        v26 = v38;
        v27 = *(v38 + 72) * v20;
        v28 = v36;
        (*(v38 + 16))(v36, *(v5 + 56) + v27, v37);
        v29 = v39;
        v30 = (*(v39 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        (*(v26 + 32))(*(v29 + 56) + v27, v28, v25);
        result = sub_100017D5C(v23, v24);
        v15 = v40;
      }

      while (v40);
    }

    v18 = v11;
    v7 = v39;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_101008D04(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000BC4D4(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void sub_101008E60()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016C2E00, &qword_1013F76D8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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
}

char *sub_101008FD0()
{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&unk_1016C2D30, &unk_1013F7620);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        result = sub_10057C920(v23);
        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

void *sub_101009250()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016C2FC0, &qword_1013C53F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v21 = *(v19 + 8);
        v20 = *(v19 + 16);
        v17 *= 16;
        v22 = *(v4 + 48) + v18;
        v23 = *(*(v2 + 56) + v17);
        *v22 = *v19;
        *(v22 + 8) = v21;
        *(v22 + 16) = v20;
        *(*(v4 + 56) + v17) = v23;

        result = sub_100017D5C(v23, *(&v23 + 1));
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

void sub_1010093E4()
{
  v1 = v0;
  v37 = type metadata accessor for UUID();
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016C2FB8, &unk_1013F77D8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v38 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v35 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v40 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 24 * v18;
        v20 = *(v3 + 56);
        v21 = *(v3 + 48) + 24 * v18;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        v25 = v39;
        v26 = *(v39 + 72) * v18;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, v20 + v26, v37);
        v29 = v38;
        v30 = *(v38 + 48) + v19;
        *v30 = v22;
        *(v30 + 8) = v23;
        *(v30 + 16) = v24;
        v3 = v35;
        (*(v25 + 32))(*(v29 + 56) + v26, v28, v27);

        v13 = v40;
      }

      while (v40);
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

        v1 = v31;
        v5 = v38;
        goto LABEL_18;
      }

      v17 = *(v32 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
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
}

void sub_101009678()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016C3228, &qword_1013F7A40);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
}

void *sub_1010097D4()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016C2C88, &qword_1013F7590);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_101009920(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - v7;
  sub_1000BC4D4(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v20 = v10;
    if (v18)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v24 = v21 | (v14 << 6);
        v25 = v38;
        v26 = *(v38 + 72) * v24;
        v28 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v26, v36);
        v29 = *(*(v8 + 56) + 8 * v24);
        result = (*(v25 + 32))(*(v20 + 48) + v26, v28, v27);
        *(*(v20 + 56) + 8 * v24) = v29;
        v18 = v39;
      }

      while (v39);
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v23 = *(v32 + v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v39 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

void *sub_101009B94()
{
  v1 = v0;
  v2 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016C30F0, &qword_1013F7910);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v30;
        v25 = *(v31 + 72) * v19;
        sub_100022ABC(*(v4 + 56) + v25, v30, type metadata accessor for LocalFindableAccessoryRecord);
        v26 = v32;
        v27 = (*(v32 + 48) + v20);
        *v27 = v22;
        v27[1] = v23;
        sub_100029184(v24, *(v26 + 56) + v25, type metadata accessor for LocalFindableAccessoryRecord);
        result = sub_100017D5C(v22, v23);
        v14 = v33;
      }

      while (v33);
    }

    v17 = v10;
    v6 = v32;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_101009E2C()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016C2C40, &qword_1013F7568);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v17 *= 32;
        v19 = (*(v2 + 56) + v17);
        v20 = *(*(v2 + 48) + v18);
        v23 = *v19;
        v21 = *v19;
        v24 = v19[1];
        *(*(v4 + 48) + v18) = v20;
        v22 = (*(v4 + 56) + v17);
        *v22 = v21;
        v22[1] = v24;
        sub_100017D5C(v20, *(&v20 + 1));
        sub_100017D5C(v23, *(&v23 + 1));
        result = sub_100017D5C(v24, *(&v24 + 1));
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

void *sub_101009FCC()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016C2C48, &qword_1013F7570);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(v2 + 56) + v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v20;
        v21 = *(v4 + 56) + v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        result = sub_100017D5C(v20, *(&v20 + 1));
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

char *sub_10100A144()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016C2C50, &qword_1013F7578);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

void *sub_10100A3B4()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016C3068, &qword_1013F7860);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void *sub_10100A5A8()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016C2D20, &qword_1013F7610);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = sub_100017D5C(v18, *(&v18 + 1));
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

id sub_10100A710()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016ADD20, &qword_1013C53F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

char *sub_10100A870()
{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016C3170, &qword_1013F7990);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

void *sub_10100AAF0()
{
  v1 = v0;
  v37 = type metadata accessor for UUID();
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016C3178, &unk_1013F7998);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v38 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v35 = v39 + 16;
    v34 = v39 + 32;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v40 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v39;
        v20 = *(v39 + 72) * v18;
        v21 = v36;
        v22 = v37;
        (*(v39 + 16))(v36, *(v3 + 48) + v20, v37);
        v18 *= 72;
        v23 = *(v3 + 56) + v18;
        v25 = *(v23 + 16);
        v24 = *(v23 + 32);
        v26 = *(v23 + 48);
        v46 = *(v23 + 64);
        v45 = v26;
        v42 = *v23;
        v43 = v25;
        v44 = v24;
        v27 = v38;
        (*(v19 + 32))(*(v38 + 48) + v20, v21, v22);
        v28 = *(v27 + 56) + v18;
        v29 = v43;
        v30 = v44;
        v31 = v45;
        *(v28 + 64) = v46;
        *(v28 + 32) = v30;
        *(v28 + 48) = v31;
        *(v28 + 16) = v29;
        *v28 = v42;
        result = sub_1009871D4(&v42, v41);
        v13 = v40;
      }

      while (v40);
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

        v1 = v33;
        v5 = v38;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
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

void *sub_10100ADE4()
{
  v1 = v0;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016C3188, &qword_1013F79B0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v34[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v37 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v34[2] = v38 + 16;
    v34[1] = v38 + 32;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v39 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v38;
        v20 = *(v38 + 72) * v18;
        v21 = v35;
        v22 = v36;
        (*(v38 + 16))(v35, *(v3 + 48) + v20, v36);
        v18 *= 80;
        v23 = (*(v3 + 56) + v18);
        v25 = v23[1];
        v24 = v23[2];
        v26 = v23[4];
        v44 = v23[3];
        v45 = v26;
        v41 = *v23;
        v42 = v25;
        v43 = v24;
        v27 = v3;
        v28 = v37;
        (*(v19 + 32))(*(v37 + 48) + v20, v21, v22);
        v29 = *(v28 + 56);
        v3 = v27;
        v30 = (v29 + v18);
        v31 = v42;
        v32 = v43;
        v33 = v45;
        v30[3] = v44;
        v30[4] = v33;
        v30[1] = v31;
        v30[2] = v32;
        *v30 = v41;
        result = sub_1000D2A70(&v41, v40, &qword_1016C3180, &qword_1013F79A8);
        v13 = v39;
      }

      while (v39);
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

        v1 = v34[0];
        v5 = v37;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v39 = (v17 - 1) & v17;
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

char *sub_10100B1B8()
{
  v1 = v0;
  v38 = type metadata accessor for URL();
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for BeaconIdentifier(0);
  v36 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&unk_1016C2CE0, &unk_1013F75D8);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v37;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = v35;
        v24 = *(v36 + 72) * v22;
        sub_100022ABC(*(v5 + 48) + v24, v35, type metadata accessor for BeaconIdentifier);
        v25 = v40;
        v26 = *(v40 + 72) * v22;
        v27 = *(v5 + 56) + v26;
        v28 = v38;
        (*(v40 + 16))(v17, v27, v38);
        sub_100029184(v23, *(v18 + 48) + v24, type metadata accessor for BeaconIdentifier);
        v29 = v28;
        v5 = v34;
        result = (*(v25 + 32))(*(v18 + 56) + v26, v17, v29);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void sub_10100B554()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016ADE68, &unk_1013F7A90);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
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
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v40 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v22 = v34;
        v21 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 40 * v18;
        v24 = *(v3 + 56) + 40 * v18;
        v25 = *v24;
        v26 = *(v24 + 8);
        v39 = *(v24 + 16);
        v38 = *(v24 + 32);
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v22, v21);
        v28 = *(v27 + 56) + v23;
        *v28 = v25;
        *(v28 + 8) = v26;
        v3 = v33;
        *(v28 + 16) = v39;
        *(v28 + 32) = v38;

        v13 = v40;
      }

      while (v40);
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

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
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
}

char *sub_10100B804()
{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&unk_1016AFA20, &qword_1013CB0B0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v35 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v36 + 32;
    v31 = v36 + 16;
    v32 = v3;
    v15 = v33;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v37 = (v13 - 1) & v13;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v22 = v34;
        (*(v36 + 16))(v15, *(v3 + 48) + v21, v34);
        v19 *= 16;
        v23 = *(v3 + 56) + v19;
        v25 = *v23;
        v24 = *(v23 + 8);
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v15, v22);
        v27 = (*(v26 + 56) + v19);
        *v27 = v25;
        v27[1] = v24;
        v3 = v32;
        result = v25;
        v13 = v37;
      }

      while (v37);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v35;
        goto LABEL_18;
      }

      v18 = *(v29 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
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

void sub_10100BA90()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016C30A8, &unk_1013F7898);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *v19;
        v22 = *(v19 + 8);
        v21 = *(v19 + 16);
        v17 *= 16;
        v23 = (*(v2 + 56) + v17);
        v24 = *v23;
        v25 = v23[1];
        v26 = *(v4 + 48) + v18;
        *v26 = v20;
        *(v26 + 8) = v22;
        *(v26 + 16) = v21;
        v27 = (*(v4 + 56) + v17);
        *v27 = v24;
        v27[1] = v25;
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
}

id sub_10100BC18()
{
  v1 = v0;
  v2 = type metadata accessor for ManagedCBPeripheralManager.KeyType(0);
  v28 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016C2CF8, &qword_1013F75F0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v27;
        v21 = *(v28 + 72) * v19;
        sub_100022ABC(*(v4 + 48) + v21, v27, type metadata accessor for ManagedCBPeripheralManager.KeyType);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = v29;
        sub_100029184(v20, *(v29 + 48) + v21, type metadata accessor for ManagedCBPeripheralManager.KeyType);
        *(*(v23 + 56) + 8 * v19) = v22;
        result = v22;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void sub_10100BE60()
{
  v1 = v0;
  v2 = type metadata accessor for ManagedCBPeripheralBeaconInfo(0);
  v35 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016C2D28, &qword_1013F7618);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v36 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v35 + 72) * v19;
        sub_100022ABC(*(v4 + 48) + v21, v34, type metadata accessor for ManagedCBPeripheralBeaconInfo);
        v22 = *(v4 + 56);
        v23 = 24 * v19;
        v24 = (v22 + 24 * v19);
        v25 = *v24;
        v26 = v24[1];
        v27 = *(v24 + 16);
        v28 = v36;
        sub_100029184(v20, *(v36 + 48) + v21, type metadata accessor for ManagedCBPeripheralBeaconInfo);
        v29 = *(v28 + 56) + v23;
        v4 = v33;
        *v29 = v25;
        *(v29 + 8) = v26;
        *(v29 + 16) = v27;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v36;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_10100C10C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v36 = a4;
  v7 = v4;
  v8 = a1(0);
  v35 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v34 = &v32 - v9;
  sub_1000BC4D4(a2, a3);
  v10 = *v4;
  v11 = static _DictionaryStorage.copy(original:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v32 = v7;
    v13 = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || v13 >= v10 + 64 + 8 * v14)
    {
      memmove(v13, (v10 + 64), 8 * v14);
    }

    v33 = v10 + 64;
    v16 = 0;
    v17 = *(v10 + 16);
    v37 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = *(v10 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v16 << 6);
        v27 = v34;
        v28 = *(v35 + 72) * v26;
        v29 = v36;
        sub_100022ABC(*(v10 + 48) + v28, v34, v36);
        v30 = *(*(v10 + 56) + 8 * v26);
        v31 = v37;
        sub_100029184(v27, *(v37 + 48) + v28, v29);
        *(*(v31 + 56) + 8 * v26) = v30;
      }

      while (v21);
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v22)
      {

        v7 = v32;
        v12 = v37;
        goto LABEL_21;
      }

      v25 = *(v33 + 8 * v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }
}

id sub_10100C34C()
{
  v1 = v0;
  sub_1000BC4D4(&unk_1016C2D00, &unk_1013F75F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_100017D5C(v19, *(&v19 + 1));
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

id sub_10100C4B8()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016ADD30, &qword_1013C5410);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void sub_10100C628(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000BC4D4(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

char *sub_10100C824(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v49 = a1;
  v50 = a2;
  v8 = sub_1000BC4D4(a1, a2);
  v48 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v47 = &v38 - v9;
  v46 = type metadata accessor for UUID();
  v51 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(a3, a4);
  v11 = *v4;
  v12 = static _DictionaryStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v39 = v4;
    v40 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v52 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v50;
    v41 = v51 + 32;
    v42 = v51 + 16;
    v43 = v22;
    v44 = v11;
    v24 = v46;
    if (v21)
    {
      do
      {
        v25 = __clz(__rbit64(v21));
        v53 = (v21 - 1) & v21;
LABEL_14:
        v28 = v25 | (v17 << 6);
        v29 = v51;
        v30 = *(v51 + 72) * v28;
        v31 = v45;
        (*(v51 + 16))(v45, *(v11 + 48) + v30, v24);
        v32 = v47;
        v33 = *(v48 + 72) * v28;
        v34 = *(v11 + 56) + v33;
        v35 = v49;
        sub_1000D2A70(v34, v47, v49, v23);
        v36 = v52;
        (*(v29 + 32))(*(v52 + 48) + v30, v31, v24);
        v37 = v35;
        v11 = v44;
        result = sub_1000D2AD8(v32, *(v36 + 56) + v33, v37, v23);
        v22 = v43;
        v21 = v53;
      }

      while (v53);
    }

    v26 = v17;
    v13 = v52;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v39;
        goto LABEL_18;
      }

      v27 = *(v40 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v53 = (v27 - 1) & v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v13;
  }

  return result;
}

id sub_10100CBE0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v36 = a4;
  v7 = v4;
  v8 = a1(0);
  v35 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v34 = &v32 - v9;
  sub_1000BC4D4(a2, a3);
  v10 = *v4;
  v11 = static _DictionaryStorage.copy(original:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v33 = v7;
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, (v10 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v37 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = *(v10 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v16 << 6);
        v27 = *(*(v10 + 48) + 8 * v26);
        v28 = v34;
        v29 = *(v35 + 72) * v26;
        v30 = v36;
        sub_100022ABC(*(v10 + 56) + v29, v34, v36);
        v31 = v37;
        *(*(v37 + 48) + 8 * v26) = v27;
        sub_100029184(v28, *(v31 + 56) + v29, v30);
        result = v27;
      }

      while (v21);
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v22)
      {

        v7 = v33;
        v12 = v37;
        goto LABEL_21;
      }

      v25 = *(v10 + 64 + 8 * v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

char *sub_10100CE4C(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v8 = v4;
  v48 = a1(0);
  v51 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v37 - v9;
  v46 = a2(0);
  v50 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v37 - v10;
  sub_1000BC4D4(a3, a4);
  v11 = *v4;
  v12 = static _DictionaryStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v37 = v8;
    v38 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v49 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v42 = v50 + 16;
    v43 = v22;
    v40 = v50 + 32;
    v41 = v51 + 16;
    v39 = v51 + 32;
    v44 = v11;
    v24 = v45;
    v23 = v46;
    if (v21)
    {
      do
      {
        v25 = __clz(__rbit64(v21));
        v52 = (v21 - 1) & v21;
LABEL_14:
        v28 = v25 | (v17 << 6);
        v29 = v50;
        v30 = *(v50 + 72) * v28;
        (*(v50 + 16))(v24, *(v11 + 48) + v30, v23);
        v31 = v51;
        v32 = *(v51 + 72) * v28;
        v33 = v47;
        v34 = v48;
        (*(v51 + 16))(v47, *(v11 + 56) + v32, v48);
        v35 = v49;
        (*(v29 + 32))(*(v49 + 48) + v30, v24, v23);
        v36 = *(v35 + 56);
        v11 = v44;
        result = (*(v31 + 32))(v36 + v32, v33, v34);
        v22 = v43;
        v21 = v52;
      }

      while (v52);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v8 = v37;
        v13 = v49;
        goto LABEL_18;
      }

      v27 = *(v38 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v52 = (v27 - 1) & v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v8 = v13;
  }

  return result;
}

void *sub_10100D218(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(_BYTE *, unint64_t))
{
  v35 = a3;
  v6 = v3;
  v34 = type metadata accessor for UUID();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(a1, a2);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v32[0] = v6;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v36 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v32[1] = v37 + 32;
    v32[2] = v37 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v37;
        v26 = *(v37 + 72) * v24;
        v27 = v33;
        v28 = v34;
        (*(v37 + 16))(v33, *(v8 + 48) + v26, v34);
        v24 *= 40;
        sub_10001F280(*(v8 + 56) + v24, v39);
        v29 = v8;
        v30 = v36;
        (*(v25 + 32))(*(v36 + 48) + v26, v27, v28);
        v31 = *(v30 + 56);
        v8 = v29;
        result = v35(v39, v31 + v24);
        v19 = v38;
      }

      while (v38);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32[0];
        v10 = v36;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v38 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

void *sub_10100D4D8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v43 = v7;
  v44 = v8;
  __chkstk_darwin(v7);
  v42 = &v37 - v9;
  sub_1000BC4D4(a2, a3);
  v10 = *v3;
  v11 = static _DictionaryStorage.copy(original:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    v37 = v6;
    v38 = (v10 + 64);
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, v38, 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v45 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v39 = v44 + 32;
    v40 = v44 + 16;
    v41 = v10;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v46 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = v43;
        v27 = v44;
        v28 = *(v44 + 72) * v25;
        v29 = v42;
        (*(v44 + 16))(v42, *(v10 + 48) + v28, v43);
        v30 = *(v10 + 56);
        v31 = 16 * v25;
        v32 = (v30 + 16 * v25);
        v33 = *v32;
        v34 = v32[1];
        v35 = v45;
        (*(v27 + 32))(*(v45 + 48) + v28, v29, v26);
        v36 = (*(v35 + 56) + v31);
        v10 = v41;
        *v36 = v33;
        v36[1] = v34;
        result = sub_100017D5C(v33, v34);
        v20 = v46;
      }

      while (v46);
    }

    v23 = v16;
    v12 = v45;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v37;
        goto LABEL_21;
      }

      v24 = *(v38 + v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v46 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v12;
  }

  return result;
}

void *sub_10100D768()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016C2DD0, &unk_1013C53D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

void *sub_10100D8CC()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016C30A0, &qword_1013F7890);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + v17) = v18;
        result = sub_100017D5C(v19, *(&v19 + 1));
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

void *sub_10100DA48()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016C3060, &qword_1013F7858);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_100017D5C(v22, *(&v22 + 1));
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

char *sub_10100DBF4()
{
  v1 = v0;
  v2 = type metadata accessor for BeaconScanner.AISLookupState(0);
  v38 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v40 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - v4;
  sub_1000BC4D4(&qword_1016C3018, &unk_1013F7828);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_100022ABC(v26 + v28, v37, type metadata accessor for BeaconScanner.AISLookupState);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        result = sub_100029184(v29, *(v18 + 56) + v28, type metadata accessor for BeaconScanner.AISLookupState);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_10100DF44(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v47 = sub_1000BC4D4(a1, a2);
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v36 - v8;
  v45 = type metadata accessor for UUID();
  v49 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(a3, a4);
  v10 = *v4;
  v11 = static _DictionaryStorage.copy(original:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    result = (v11 + 64);
    v14 = (v10 + 64);
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    v36 = v7;
    v37 = v10 + 64;
    if (v12 != v10 || result >= &v14[8 * v15])
    {
      result = memmove(result, v14, 8 * v15);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v48 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = v49 + 16;
    v42 = v21;
    v39 = v49 + 32;
    v40 = v50 + 16;
    v38 = v50 + 32;
    v43 = v10;
    v23 = v44;
    v22 = v45;
    if (v20)
    {
      do
      {
        v24 = __clz(__rbit64(v20));
        v51 = (v20 - 1) & v20;
LABEL_14:
        v27 = v24 | (v16 << 6);
        v28 = v49;
        v29 = *(v49 + 72) * v27;
        (*(v49 + 16))(v23, *(v10 + 48) + v29, v22);
        v30 = v50;
        v31 = *(v50 + 72) * v27;
        v32 = v46;
        v33 = v47;
        (*(v50 + 16))(v46, *(v10 + 56) + v31, v47);
        v34 = v48;
        (*(v28 + 32))(*(v48 + 48) + v29, v23, v22);
        v35 = *(v34 + 56);
        v10 = v43;
        result = (*(v30 + 32))(v35 + v31, v32, v33);
        v21 = v42;
        v20 = v51;
      }

      while (v51);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v36;
        v12 = v48;
        goto LABEL_18;
      }

      v26 = *(v37 + 8 * v16);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v51 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v12;
  }

  return result;
}

void *sub_10100E290()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016C2FB0, &qword_1013F77D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v20 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v20;
        v19 = v18;
        result = sub_100017D5C(v20, *(&v20 + 1));
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

void *sub_10100E434()
{
  v1 = v0;
  v30 = type metadata accessor for UUID();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016C2FA8, &qword_1013F77C8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; result = )
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
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

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

id sub_10100E6B4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000BC4D4(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_10100E804(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3;
  sub_1000BC4D4(a1, a2);
  v6 = *v3;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v6 + 56) + 16 * v21;
        v24 = *v23;
        v25 = *(v23 + 8);
        *(*(v8 + 48) + 8 * v21) = v22;
        v26 = *(v8 + 56) + 16 * v21;
        *v26 = v24;
        *(v26 + 8) = v25;
        v27 = v22;
        result = a3(v24, v25);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_10100E980()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016C2D58, &qword_1013F7648);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v17) = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(*(v2 + 56) + v17);
      v22 = *(v4 + 48) + v17;
      *v22 = v19;
      *(v22 + 8) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_10100EB94(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }
}

char *sub_10100EE0C()
{
  v1 = v0;
  v38 = type metadata accessor for Date();
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  v36 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016C2DC8, &unk_1013F76A8);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v37;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = v35;
        v24 = *(v36 + 72) * v22;
        sub_100022ABC(*(v5 + 48) + v24, v35, type metadata accessor for ShareAttemptTracker.AttemptKey);
        v25 = v40;
        v26 = *(v40 + 72) * v22;
        v27 = *(v5 + 56) + v26;
        v28 = v38;
        (*(v40 + 16))(v17, v27, v38);
        sub_100029184(v23, *(v18 + 48) + v24, type metadata accessor for ShareAttemptTracker.AttemptKey);
        v29 = v28;
        v5 = v34;
        result = (*(v25 + 32))(*(v18 + 56) + v26, v17, v29);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void sub_10100F134(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000BC4D4(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_10100F294()
{
  v1 = v0;
  sub_1000BC4D4(&unk_1016C2D80, &unk_1013F7670);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 24 * v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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
}

void *sub_10100F488(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v36 = a4;
  v7 = v4;
  v8 = a1(0);
  v35 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v34 = &v32 - v9;
  sub_1000BC4D4(a2, a3);
  v10 = *v4;
  v11 = static _DictionaryStorage.copy(original:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v32 = v7;
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, (v10 + 64), 8 * v14);
    }

    v33 = v10 + 64;
    v16 = 0;
    v17 = *(v10 + 16);
    v37 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = *(v10 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v16 << 6);
        v27 = v34;
        v28 = *(v35 + 72) * v26;
        v29 = v36;
        sub_100022ABC(*(v10 + 48) + v28, v34, v36);
        v30 = *(*(v10 + 56) + 8 * v26);
        v31 = v37;
        sub_100029184(v27, *(v37 + 48) + v28, v29);
        *(*(v31 + 56) + 8 * v26) = v30;
      }

      while (v21);
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v22)
      {

        v7 = v32;
        v12 = v37;
        goto LABEL_21;
      }

      v25 = *(v33 + 8 * v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

id sub_10100F718(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    v19 = v9;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v23 = v20 | (v13 << 6);
        v24 = v37;
        v25 = *(v37 + 72) * v23;
        v27 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v25, v35);
        v28 = *(*(v7 + 56) + 8 * v23);
        (*(v24 + 32))(*(v19 + 48) + v25, v27, v26);
        *(*(v19 + 56) + 8 * v23) = v28;
        result = v28;
        v17 = v38;
      }

      while (v38);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v22 = *(v31 + v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v38 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

void *sub_10100F9B4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - v7;
  sub_1000BC4D4(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

char *sub_10100FC30()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016C2D60, &qword_1013F7650);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
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
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = *(v3 + 56) + 16 * v18;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = *(v27 + 56) + v23;
        *v28 = v25;
        v3 = v33;
        *(v28 + 8) = v26;

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

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
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

uint64_t sub_10100FEDC()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10100FF34()
{
  v1 = *(type metadata accessor for CloudKitChangeSet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);

  return _swift_deallocObject(v0, v3 + 8);
}

void sub_101010050()
{
  v1 = *(type metadata accessor for CloudKitChangeSet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_100FE5390(v0 + v2, v4, v5);
}

void sub_101010148(id a1, char a2)
{
  if (!a2)
  {
  }
}

uint64_t sub_1010101E8(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a2 + 32);
  v11->isa = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.notOnQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v14 = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (a1)
    {
      v15 = static os_log_type_t.debug.getter();
      if (qword_101695040 != -1)
      {
        swift_once();
      }

      v11 = qword_10177C388;
      if (os_log_type_enabled(qword_10177C388, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v63 = a4;
        v64 = a3;
        v18 = v17;
        v65 = v17;
        *v16 = 136315138;
        v19 = [*(a2 + 280) debugDescription];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = sub_1000136BC(v20, v22, &v65);

        *(v16 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v11, v15, "purgeLocalCloudKitData exclusiveAccessSemaphore -- caller claims to already have access %s", v16, 0xCu);
        sub_100007BAC(v18);
        a4 = v63;
        a3 = v64;

LABEL_13:
      }
    }

    else
    {
      v24 = static os_log_type_t.info.getter();
      if (qword_101695040 != -1)
      {
        swift_once();
      }

      v11 = qword_10177C388;
      v25 = os_log_type_enabled(qword_10177C388, v24);
      v63 = a4;
      v64 = a3;
      if (v25)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v65 = v27;
        *v26 = 136315138;
        v28 = [*(a2 + 280) debugDescription];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32 = sub_1000136BC(v29, v31, &v65);

        *(v26 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v11, v24, ">>> purgeLocalCloudKitData exclusiveAccessSemaphore.wait() %s", v26, 0xCu);
        sub_100007BAC(v27);
        a4 = v63;
        a3 = v64;
      }

      v33 = *(a2 + 280);
      OS_dispatch_semaphore.wait()();
      v34 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v65 = v36;
        *v35 = 136315138;
        v37 = [v33 debugDescription];
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41 = sub_1000136BC(v38, v40, &v65);

        *(v35 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v11, v34, "<<< purgeLocalCloudKitData exclusiveAccessSemaphore.wait() %s", v35, 0xCu);
        sub_100007BAC(v36);
        a4 = v63;
        a3 = v64;

        goto LABEL_13;
      }
    }

    v14 = static os_log_type_t.default.getter();
    if (qword_101695040 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_22:
  v61 = v14;
  swift_once();
  v14 = v61;
LABEL_15:
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v11, "Purging local CloudKit cache data", 33, 2, _swiftEmptyArrayStorage);
  sub_100B301AC(a3, a4);
  v42 = static os_log_type_t.default.getter();
  result = os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, v11, "Done purging local CloudKit cache data", 38, 2, _swiftEmptyArrayStorage);
  if ((a1 & 1) == 0)
  {
    v44 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v65 = v46;
      *v45 = 136315138;
      v47 = [*(a2 + 280) debugDescription];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = sub_1000136BC(v48, v50, &v65);

      *(v45 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v11, v44, ">>> purgeLocalCloudKitData exclusiveAccessSemaphore.signal() %s", v45, 0xCu);
      sub_100007BAC(v46);
    }

    v52 = *(a2 + 280);
    OS_dispatch_semaphore.signal()();
    v53 = static os_log_type_t.info.getter();
    result = os_log_type_enabled(v11, v53);
    if (result)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v65 = v55;
      *v54 = 136315138;
      v56 = [v52 debugDescription];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60 = sub_1000136BC(v57, v59, &v65);

      *(v54 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v11, v53, "<<< purgeLocalCloudKitData exclusiveAccessSemaphore.signal() %s", v54, 0xCu);
      sub_100007BAC(v55);
    }
  }

  return result;
}

uint64_t sub_1010108B8(uint64_t a1, uint64_t a2)
{
  v2 = qword_101694FA8;

  if (v2 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v6 == 1)
  {
    sub_1009CCA48();
    v3 = type metadata accessor for Transaction();
    __chkstk_darwin(v3);

    static Transaction.named<A>(_:with:)();
  }

  else
  {
    v4 = type metadata accessor for Transaction();
    __chkstk_darwin(v4);
    static Transaction.named<A>(_:with:)();
  }
}

void sub_101010AA8(uint64_t a1, void *a2)
{
  sub_100008BB8(0, &qword_1016C2F08, CKDatabaseSubscription_ptr);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  isa = CKDatabaseSubscription.init(subscriptionID:)(v4).super.super.isa;
  v6 = [objc_allocWithZone(CKNotificationInfo) init];
  [v6 setShouldSendContentAvailable:1];
  v7 = isa;
  [(objc_class *)v7 setNotificationInfo:v6];
  sub_100008BB8(0, &qword_1016C2F10, CKModifySubscriptionsOperation_ptr);
  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138C320;
  *(v8 + 32) = v7;
  v9 = _swiftEmptyArrayStorage;
  v10 = CKModifySubscriptionsOperation.init(subscriptionsToSave:subscriptionIDsToDelete:)(*&v8, v14).super.super.super.super.isa;
  v11 = [(objc_class *)v10 configuration];
  if (v11)
  {
    v12 = v11;
    [v11 setAutomaticallyRetryNetworkFailures:0];

    v13 = [(objc_class *)v10 configuration];
    if (v13)
    {
      [v13 setDiscretionaryNetworkBehavior:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_101010C38(unint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  v26 = xmmword_101385D80;
  *(v8 + 16) = xmmword_101385D80;
  v28 = a1;
  sub_101011594(a1);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v12 = static OS_os_log.default.getter();
  v13 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("ZoneState updated: %{public}@", 29, 2, &_mh_execute_header, v12, v13, v8);

  if (a1 >= 2)
  {
    if (a1 == 2)
    {
      v14 = static OS_os_log.default.getter();
      v15 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("ZoneState created", 17, 2, &_mh_execute_header, v14, v15, _swiftEmptyArrayStorage);

      if (qword_101694940 != -1)
      {
        swift_once();
      }

      Date.init()();
      v16 = type metadata accessor for Date();
      (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
      sub_1000034A4();
      sub_1000D2A70(v7, v5, &unk_101696900, &unk_10138B1E0);
      sub_100EEB5C0(v5);

      sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
      sub_1000034A4();
      sub_100EEB6C4(0, 1);
    }

    else
    {
      v28 = a1;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      type metadata accessor for CKError(0);
      if (swift_dynamicCast())
      {
        v18 = v27;
        v19 = swift_allocObject();
        *(v19 + 16) = v26;
        v28 = v18;
        sub_100004084(&qword_101696250, type metadata accessor for CKError, &unk_101389FF0);
        _BridgedStoredNSError.code.getter();
        v20 = v27;
        *(v19 + 56) = &type metadata for Int;
        *(v19 + 64) = &protocol witness table for Int;
        *(v19 + 32) = v20;
        v21 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("ZoneState ckError: %i", v26);

        if (qword_101694940 != -1)
        {
          swift_once();
        }

        v28 = v18;
        _BridgedStoredNSError.code.getter();
        v22 = v27;
        sub_1000034A4();
        sub_100EEB6C4(v22, 0);
      }

      else
      {
        v23 = static OS_os_log.default.getter();
        v24 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("ZoneState generic error: -1", 27, 2, &_mh_execute_header, v23, v24, _swiftEmptyArrayStorage);

        if (qword_101694940 != -1)
        {
          swift_once();
        }

        sub_1000034A4();
        sub_100EEB6C4(-1, 0);
      }

      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Date();
      (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
      sub_1000034A4();
      sub_1000D2A70(v7, v5, &unk_101696900, &unk_10138B1E0);
      sub_100EEB5C0(v5);

      sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
    }
  }
}

id sub_1010111E4(uint64_t a1)
{
  v13 = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  type metadata accessor for CKError(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_14;
  }

  v13 = v15;
  sub_100004084(&qword_101696250, type metadata accessor for CKError, &unk_101389FF0);
  _BridgedStoredNSError.code.getter();
  if (v15 != 2)
  {
    swift_errorRetain();

    return a1;
  }

  v15 = 2;
  v2 = _BridgedStoredNSError.userInfo.getter();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v2 + 16))
  {

    goto LABEL_12;
  }

  v5 = sub_100771D58(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_100013894(*(v2 + 56) + 32 * v5, &v13);

  sub_1000BC4D4(&qword_1016C2E20, &qword_1013F76F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

LABEL_14:
    swift_errorRetain();
    return a1;
  }

  v8 = v14;
  if (*(v14 + 16) != 1)
  {
    swift_errorRetain();

    return a1;
  }

  v9 = sub_1003A8AB4(1, 0);
  v10 = sub_1003AA840(&v13, v9 + 4, 1, v8);
  result = sub_1000128F8(v13);
  if (v10 == 1)
  {
    if (v9[2])
    {
      v12 = v9[4];

      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_101011434(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_101011444@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = v2;
  return sub_101011594(v2);
}

unint64_t sub_101011540()
{
  result = qword_1016C2E48;
  if (!qword_1016C2E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C2E48);
  }

  return result;
}

unint64_t sub_101011594(unint64_t result)
{
  if (result >= 3)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1010115EC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  Transaction.capture()();
  return v1(v2);
}

uint64_t sub_101011630()
{
  v1 = *(v0 + 24);
  Transaction.capture()();
  return v1(0);
}

uint64_t sub_101011704()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1010117DC()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_101011828()
{
  sub_1010111E4(*(v0 + 32));
  Future.finish(error:)();
}

uint64_t sub_101011878()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1010118C0()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t **sub_101011A58()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      PropertyListDecoder.init()();
      sub_1000BC4D4(&qword_1016C2ED8, &unk_1013F7740);
      sub_10101250C(&qword_1016C2EF0, &qword_1016C2EF8, &protocol conformance descriptor for CKRecordZoneID, &protocol conformance descriptor for <> Set<A>);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      v3 = sub_1003A8E9C(*&v9[0]);
      sub_100016590(v5, v6);

      return v3;
    }
  }

  else
  {
    sub_10000B3A8(v9, &unk_1016A0B10, &qword_10139BF40);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_101011C64(unint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = [v2 standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (!*(&v18 + 1))
  {
    sub_10000B3A8(v19, &unk_1016A0B10, &qword_10139BF40);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v14 = &_swiftEmptySetSingleton;
    goto LABEL_9;
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016C2ED8, &unk_1013F7740);
  sub_10101250C(&qword_1016C2EF0, &qword_1016C2EF8, &protocol conformance descriptor for CKRecordZoneID, &protocol conformance descriptor for <> Set<A>);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_100016590(v15, v16);

  v14 = *&v19[0];
LABEL_9:
  *&v19[0] = v14;
  v7 = sub_10112BA74(a1);

  sub_1005CA8A8(v7);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1000BC4D4(&qword_1016C2ED8, &unk_1013F7740);
  sub_10101250C(&qword_1016C2EE0, &qword_1016C2EE8, &protocol conformance descriptor for CKRecordZoneID, &protocol conformance descriptor for <> Set<A>);
  v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v10 = v9;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = String._bridgeToObjectiveC()();
  [v3 setObject:isa forKey:v12];

  return sub_100016590(v8, v10);
}

id sub_10101207C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v0 BOOLForKey:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10101214C(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = [v2 standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    if (swift_dynamicCast())
    {
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      PropertyListDecoder.init()();
      sub_1000BC4D4(&qword_1016C2ED8, &unk_1013F7740);
      sub_10101250C(&qword_1016C2EF0, &qword_1016C2EF8, &protocol conformance descriptor for CKRecordZoneID, &protocol conformance descriptor for <> Set<A>);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      sub_100016590(v14, v15);

      v13 = *&v18[0];
      goto LABEL_9;
    }
  }

  else
  {
    sub_10000B3A8(v18, &unk_1016A0B10, &qword_10139BF40);
  }

  v13 = &_swiftEmptySetSingleton;
LABEL_9:
  *&v18[0] = v13;

  if ((*&v18[0] & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_11:
      type metadata accessor for PropertyListEncoder();
      swift_allocObject();
      PropertyListEncoder.init()();
      sub_1000BC4D4(&qword_1016C2ED8, &unk_1013F7740);
      sub_10101250C(&qword_1016C2EE0, &qword_1016C2EE8, &protocol conformance descriptor for CKRecordZoneID, &protocol conformance descriptor for <> Set<A>);
      v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      v10 = v9;

      isa = Data._bridgeToObjectiveC()().super.isa;
      v12 = String._bridgeToObjectiveC()();
      [v3 setObject:isa forKey:v12];

      sub_100016590(v8, v10);
      return;
    }
  }

  else if (*(*&v18[0] + 16))
  {
    goto LABEL_11;
  }

  v7 = String._bridgeToObjectiveC()();
  [v3 removeObjectForKey:v7];
}

uint64_t sub_10101250C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016C2ED8, &unk_1013F7740);
    sub_100009D18(a2, &unk_1016BBFC0, CKRecordZoneID_ptr, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_101012610()
{
  *(*(v0 + 16) + 112) = *(v0 + 24);
}

void sub_10101264C(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = 2;
  if (*(v1 + 120))
  {
    v3 = 0;
  }

  *a1 = v3;
  a1[1] = v2;
  if (v2)
  {
    v4 = 707;
  }

  else
  {
    v4 = 0;
  }

  a1[2] = v2;
  a1[3] = v2;
  a1[4] = v4;
}

uint64_t sub_101012758(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014650;

  return sub_100FD2B5C(a1, v5, v4);
}

uint64_t sub_101012804(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100263B58(a1, v5, v4);
}

uint64_t sub_1010128AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1002ECF7C();
}

uint64_t sub_1010129C0()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_101012A20(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_101012A74()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_101012ADC(void *a1, char a2)
{
  sub_1000BC4D4(&unk_1016C3130, &unk_1013F7950);

  return sub_100FD1874(a1, a2 & 1);
}

uint64_t sub_101012B68(void (*a1)(void))
{

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32);
}

unint64_t sub_101012C84()
{
  result = qword_1016C32A8;
  if (!qword_1016C32A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C32A8);
  }

  return result;
}

unint64_t sub_101012CDC()
{
  result = qword_1016C32B0;
  if (!qword_1016C32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C32B0);
  }

  return result;
}

uint64_t sub_101012F80(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[15] = v4;
  v3[16] = v6;

  return _swift_task_switch(sub_101013014, v4, v6);
}

uint64_t sub_101013014()
{
  v0[17] = sub_1000BC4D4(&qword_1016A51A8, &unk_1013F8010);
  v0[18] = AsyncFilterSequence.Iterator.baseIterator.modify();
  sub_1000BC4D4(&qword_1016A51A0, &unk_1013B24F0);
  sub_1000041A4(&qword_1016C3520, &qword_1016A51A0, &unk_1013B24F0, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_10101313C;
  v2 = v0[12];
  v3 = v0[13];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 9, v2, v3);
}

uint64_t sub_10101313C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1010133C4;
  }

  else
  {
    (*(v2 + 144))();
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_101013264;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_101013264()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[11];
  v0[20] = v2;
  v0[21] = v1;
  v0[22] = v3;
  if (v2)
  {
    v0[6] = v2;
    v0[7] = v1;
    v0[8] = v3;
    v4 = AsyncFilterSequence.Iterator.isIncluded.getter();
    v0[23] = v5;
    v9 = (v4 + *v4);
    v6 = swift_task_alloc();
    v0[24] = v6;
    *v6 = v0;
    v6[1] = sub_101013438;

    return v9(v0 + 6);
  }

  else
  {
    v8 = v0[1];

    return v8(0);
  }
}

uint64_t sub_1010133C4()
{
  (*(v0 + 144))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101013438(char a1)
{
  v2 = *v1;
  *(*v1 + 200) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return _swift_task_switch(sub_101013584, v4, v3);
}

uint64_t sub_101013584()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 8);
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = *(v0 + 160);

    return v1(v4, v2, v3);
  }

  else
  {

    *(v0 + 136) = sub_1000BC4D4(&qword_1016A51A8, &unk_1013F8010);
    *(v0 + 144) = AsyncFilterSequence.Iterator.baseIterator.modify();
    sub_1000BC4D4(&qword_1016A51A0, &unk_1013B24F0);
    sub_1000041A4(&qword_1016C3520, &qword_1016A51A0, &unk_1013B24F0, &protocol conformance descriptor for AsyncStream<A>.Iterator);
    v6 = swift_task_alloc();
    *(v0 + 152) = v6;
    *v6 = v0;
    v6[1] = sub_10101313C;
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 72, v7, v8);
  }
}

uint64_t sub_101013708(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1010137FC, v1, 0);
}

uint64_t sub_1010137FC()
{
  v20 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016BB490);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000136BC(0xD00000000000001FLL, 0x80000001013782B0, &v19);
    *(v7 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_101028238(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v5 + 8))(v4, v6);
    v11 = sub_1000136BC(v8, v10, &v19);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s for peripheral: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = v0[3];
  v13 = v0[4];
  v14 = v0[2];
  v15 = swift_allocObject();
  v0[8] = v15;
  v15[2] = v12;
  v15[3] = v14;
  v15[4] = v13;
  v18 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);

  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  v16[1] = sub_101013B64;

  return (v18)(v0 + 11, &unk_1013F7F90, v15, &type metadata for LocalAccountCheckResult);
}

uint64_t sub_101013B64()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1004327D4;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_101013C8C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_101013C8C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_101013CF8(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_101013D90;

  return sub_100DBB6E8(a1);
}

uint64_t sub_101013D90(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v4[4] = a1;
  v4[5] = a2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = v4[2];

    return _swift_task_switch(sub_101013ED8, v8, 0);
  }
}

uint64_t sub_101013ED8()
{
  v21 = v0;
  if ((v0[5] & 0x3000000000000000) == 0x1000000000000000)
  {
    v1 = *(v0 + 32);
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016BB490);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = 0xD000000000000010;
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136446210;
      if (v1)
      {
        if (v1 == 1)
        {
          v5 = 0xD000000000000014;
        }

        else
        {
          v5 = 0xD000000000000017;
        }

        if (v1 == 1)
        {
          v8 = ".pairedToAnotherAccount";
        }

        else
        {
          v8 = "lastProactiveSubscribeTime";
        }
      }

      else
      {
        v8 = ".pairedToThisAccount";
      }

      v17 = sub_1000136BC(v5, v8 | 0x8000000000000000, &v20);

      *(v6 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v3, v4, "FMND status: %{public}s", v6, 0xCu);
      sub_100007BAC(v7);
    }

    v16 = (v1 + 1);
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_1016BB490);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[4];
    v13 = v0[5];
    if (v12)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unexpected FMND ID response!", v15, 2u);
    }

    sub_100DD9F00(v14, v13);
    v16 = 0;
  }

  v18 = v0[1];

  return v18(v16);
}

uint64_t sub_101014188@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000B3A8(v11, &unk_1016A0B10, &qword_10139BF40);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_10101430C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016C32C0);
  v1 = sub_1000076D4(v0, qword_1016C32C0);
  if (qword_101695150 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C4B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1010143D4()
{
  v1[2] = v0;
  v1[3] = *v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_101014498, v0, 0);
}

uint64_t sub_101014498()
{
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 40) = sub_1000076D4(v1, qword_1016C32C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Registering notifications", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1010145E8;

  return daemon.getter();
}

uint64_t sub_1010145E8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DistributedNotificationService();
  v6 = sub_101028238(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_101028238(&qword_1016A51C8, 255, type metadata accessor for DistributedNotificationService, &unk_1013E5D40);
  *v3 = v9;
  v3[1] = sub_1010147CC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1010147CC(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 16);
  if (v1)
  {

    v7 = sub_101014A8C;
  }

  else
  {

    *(v5 + 72) = a1;
    v7 = sub_101014934;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_101014934()
{
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;
  v6[5] = v5;
  v6[6] = v3;

  sub_1008CE048(0, 0, v2, &unk_1013F8000, v6);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);

  v7 = v0[1];

  return v7();
}

uint64_t sub_101014A8C(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No distributed notification service to monitor!", v4, 2u);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_101014B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  type metadata accessor for UUID();
  v6[8] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A51A0, &unk_1013B24F0);
  v6[9] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_1016A51A8, &unk_1013F8010);
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_1016A51B0, &unk_1013B2500);
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = sub_1000BC4D4(&qword_1016A51B8, &unk_1013F8020);
  v6[17] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016A51C0, &unk_1013B2510);
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_101014DA4, 0, 0);
}

uint64_t sub_101014DA4()
{
  v1 = v0[15];
  v3 = v0[13];
  v2 = v0[14];
  v4 = sub_100B11100(&off_10160D298);
  swift_arrayDestroy();
  sub_1000BC4D4(&qword_1016A51D0, &qword_1013B2520);
  (*(v2 + 104))(v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  AsyncStream.init(_:bufferingPolicy:_:)();
  *(swift_allocObject() + 16) = v4;
  sub_1000041A4(&qword_1016A51D8, &qword_1016A51B8, &unk_1013F8020, &protocol conformance descriptor for AsyncStream<A>);
  AsyncFilterSequence.init(_:isIncluded:)();
  AsyncFilterSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncFilterSequence.isIncluded.getter();
  AsyncFilterSequence.Iterator.init(_:isIncluded:)();
  swift_beginAccess();
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_101015018;

  return sub_101012F80(0, 0);
}

uint64_t sub_101015018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[22] = a1;
  v5[23] = a2;
  v5[24] = a3;

  if (!v3)
  {

    return _swift_task_switch(sub_101015130, 0, 0);
  }

  return result;
}

uint64_t sub_101015130()
{
  v34 = v0;
  if (v0[22])
  {
    v1 = v0[24];
    Strong = swift_weakLoadStrong();
    v0[25] = Strong;
    if (Strong)
    {
      v3 = Strong;
      v4 = qword_101695148;

      if (v4 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000076D4(v5, qword_1016C32C0);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = v0[23];
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v33 = v10;
        *v9 = 136315138;

        v11 = sub_1000136BC(v8, v1, &v33);

        *(v9 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v6, v7, "Getting a notification with name %s", v9, 0xCu);
        sub_100007BAC(v10);
      }

      if (v0[23] == 0xD00000000000001ELL && v0[24] == 0x800000010134A2A0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0[23] == 0xD000000000000020 && v0[24] == 0x800000010134A2F0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, v13, "Onboarding is about to appear, so flush the queue of any pending serial number lookups", v14, 2u);
        }

        v0[26] = *(v3 + 136);
        v32 = (&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + async function pointer to dispatch thunk of WorkItemQueue.flushQueue());

        v15 = swift_task_alloc();
        v0[27] = v15;
        *v15 = v0;
        v15[1] = sub_101015700;

        return v32();
      }

      else
      {
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v21, v22, "Onboarding is about to disappear, so no need to flush any pending serial number lookups", v23, 2u);
        }

        v24 = v0[24];
        v25 = v0[25];
        v26 = v0[22];
        v27 = v0[23];
        v28 = v0[7];
        type metadata accessor for WorkItemQueue.WorkItem();
        v29 = swift_allocObject();
        v29[2] = v27;
        v29[3] = v24;
        v29[4] = v25;
        v29[5] = v28;
        v30 = swift_allocObject();
        v30[2] = v26;
        v30[3] = v27;
        v30[4] = v24;
        v30[5] = v25;
        swift_retain_n();

        UUID.init()();
        WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
        dispatch thunk of WorkItemQueue.enqueue(_:)();

        v31 = swift_task_alloc();
        v0[21] = v31;
        *v31 = v0;
        v31[1] = sub_101015018;

        return sub_101012F80(0, 0);
      }
    }
  }

  v18 = v0[19];
  v17 = v0[20];
  v19 = v0[18];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v18 + 8))(v17, v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_101015700()
{

  return _swift_task_switch(sub_101015818, 0, 0);
}

uint64_t sub_101015818()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[7];
  type metadata accessor for WorkItemQueue.WorkItem();
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v1;
  v6[4] = v2;
  v6[5] = v5;
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v1;
  v7[5] = v2;
  swift_retain_n();

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_101015018;

  return sub_101012F80(0, 0);
}

uint64_t sub_1010159DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_101015A00, 0, 0);
}

uint64_t sub_101015A00()
{
  v33 = v0;
  v1 = v0[3];
  v2 = v0[2] == 0xD00000000000001ELL && 0x800000010134A2A0 == v1;
  if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_1016C32C0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "FindMy onboarding started", v6, 2u);
    }

    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_10095D224;

    return sub_101024564();
  }

  else if (v0[2] == 0xD000000000000021 && 0x800000010134A2C0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_1016C32C0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "FindMy onboarding ended", v12, 2u);
    }

    v13 = swift_task_alloc();
    v0[6] = v13;
    *v13 = v0;
    v13[1] = sub_101016110;

    return sub_1010248C4();
  }

  else if (v0[2] == 0xD000000000000020 && 0x800000010134A2F0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_1016C32C0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "PNP onboarding started", v17, 2u);
    }

    v18 = swift_task_alloc();
    v0[7] = v18;
    *v18 = v0;
    v18[1] = sub_101016208;

    return sub_101024C20();
  }

  else if (v0[2] == 0xD000000000000023 && 0x800000010134A320 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_1016C32C0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "PNP onboarding stopped", v22, 2u);
    }

    v23 = swift_task_alloc();
    v0[8] = v23;
    *v23 = v0;
    v23[1] = sub_101016300;

    return sub_101024F80();
  }

  else
  {
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_1016C32C0);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v28 = v0[2];
      v27 = v0[3];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1000136BC(v28, v27, &v32);
      _os_log_impl(&_mh_execute_header, v25, v26, "Received a notification %s that can't be handled", v29, 0xCu);
      sub_100007BAC(v30);
    }

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_101016110()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_101016208()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_101016300()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1010163F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_100014744;

  return sub_101017BC8(a1, a2 & 1, a4, a5);
}

uint64_t sub_1010164B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for CentralManager.State();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1010165F0, v2, 0);
}

uint64_t sub_1010165F0()
{
  v27 = v0;
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  v0[12] = sub_1000076D4(v5, qword_1016C32C0);
  v6 = *(v2 + 16);
  v0[13] = v6;
  v0[14] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v24 = v8;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1000136BC(v14, v16, &v26);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v24, "Fetching lost mode alert info (onboarding) for peripheral id %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v25);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[15] = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Awaiting CentralManager", v21, 2u);
  }

  v0[16] = type metadata accessor for CentralManager();
  v22 = swift_task_alloc();
  v0[17] = v22;
  *v22 = v0;
  v22[1] = sub_101016910;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_101016910(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 32);
  if (v1)
  {
    v6 = sub_1010175B8;
  }

  else
  {
    v6 = sub_101016A44;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_101016A44()
{
  (*(v0[6] + 104))(v0[7], enum case for CentralManager.State.poweredOn(_:), v0[5]);
  v1 = swift_task_alloc();
  v0[20] = v1;
  v2 = sub_101028238(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v1 = v0;
  v1[1] = sub_101016B44;
  v3 = v0[16];
  v4 = v0[7];

  return CentralManagerProtocol.await(state:)(v4, v3, v2);
}

uint64_t sub_101016B44()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = v2[7];
  v4 = v2[6];
  v5 = v2[5];
  v6 = v2[4];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_101017730;
  }

  else
  {
    v7 = sub_101016CC0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_101016CC0(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CentralManager powered on", v4, 2u);
  }

  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  type metadata accessor for UUID();
  v5 = swift_allocObject();
  *(v1 + 176) = v5;
  *(v5 + 16) = xmmword_101385D80;
  Identifier.id.getter();
  v8 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v6 = swift_task_alloc();
  *(v1 + 184) = v6;
  *v6 = v1;
  v6[1] = sub_101016E88;

  return v8(v5);
}

uint64_t sub_101016E88(uint64_t a1)
{
  v3 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = sub_1010178B0;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_101016FB0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_101016FB0()
{
  v31 = v0;
  v1 = v0[24];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v6 = v0[13];
    v7 = v0[10];
    v8 = v0[8];
    v9 = v0[3];

    v6(v7, v9, v8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[15];
    v14 = v0[10];
    v15 = v0[8];
    if (v12)
    {
      v29 = v0[15];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v29(v14, v15);
      v21 = sub_1000136BC(v18, v20, &v30);

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "No peripheral available for id %{private,mask.hash}s", v16, 0x16u);
      sub_100007BAC(v17);
    }

    else
    {

      v13(v14, v15);
    }

    sub_10102796C();
    swift_allocError();
    *v22 = 5;
    swift_willThrow();

    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to fetch lost mode info with error %@", v25, 0xCu);
      sub_10000B3A8(v26, &qword_10169BB30, &unk_10138B3C0);
    }

    swift_willThrow();

    v28 = v0[1];

    return v28();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[24] + 32);
  }

  v0[26] = v3;

  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_1010173F4;
  v5 = v0[2];

  return sub_10101E940(v5, v3);
}

uint64_t sub_1010173F4()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_101017A3C;
  }

  else
  {
    v4 = sub_101017520;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_101017520()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010175B8()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch lost mode info with error %@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_101017730()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch lost mode info with error %@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1010178B0()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch lost mode info with error %@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_101017A3C()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch lost mode info with error %@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_101017BC8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = a2;
  *(v5 + 16) = a1;
  return _swift_task_switch(sub_101017BF0, v4, 0);
}

uint64_t sub_101017BF0()
{
  v20 = v0;
  if (*(v0 + 40))
  {
    v1 = *(v0 + 16);
    if (qword_101695148 != -1)
    {
      swift_once();
      v1 = *(v0 + 16);
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016C32C0);

    sub_100B21C10(v1, 1);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    sub_1000BB584(v1, 1);
    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 24);
      v5 = *(v0 + 32);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v7 = 136446466;
      *(v7 + 4) = sub_1000136BC(v6, v5, &v19);
      *(v7 + 12) = 2114;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v10;
      *v8 = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "Notification task with name %{public}s failed with error %{public}@", v7, 0x16u);
      sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v9);

LABEL_10:
    }
  }

  else
  {
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_1016C32C0);

    v3 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v12))
    {
      v14 = *(v0 + 24);
      v13 = *(v0 + 32);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_1000136BC(v14, v13, &v19);
      _os_log_impl(&_mh_execute_header, v3, v12, "Notification task with name %{public}s succeeded", v15, 0xCu);
      sub_100007BAC(v16);

      goto LABEL_10;
    }
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_101017F08()
{
  v1[2] = v0;
  v1[3] = *v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_101017FFC;

  return daemon.getter();
}

uint64_t sub_101017FFC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for PencilPairingService(0);
  v6 = sub_101028238(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_101028238(&qword_10169A090, 255, type metadata accessor for PencilPairingService, &unk_1013E8708);
  *v3 = v9;
  v3[1] = sub_1010181E0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1010181E0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 16);
  if (v1)
  {

    v7 = sub_1010184A0;
  }

  else
  {

    *(v5 + 64) = a1;
    v7 = sub_101018348;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_101018348()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v6[5] = v1;
  v6[6] = v3;

  sub_1008CE048(0, 0, v2, &unk_1013F7FC8, v6);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1010184A0()
{
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C32C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No local findable pairing service to monitor!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1010185BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  type metadata accessor for UUID();
  v6[8] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A098, &unk_101393410);
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v6[11] = *(v8 + 64);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169A070, &qword_1013933F8);
  v6[14] = swift_task_alloc();
  v9 = sub_1000BC4D4(&unk_10169A080, &qword_1013E8BC0);
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_10169A078, &unk_101393400);
  v6[18] = v10;
  v6[19] = *(v10 - 8);
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_1010187D4, 0, 0);
}

uint64_t sub_1010187D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v2 = v0[6];

    return _swift_task_switch(sub_1010188E4, v2, 0);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1010188E4()
{
  sub_100D7BE70();

  return _swift_task_switch(sub_101018950, 0, 0);
}

uint64_t sub_101018950()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_101018A2C;
  v5 = v0[18];
  v6 = v0[14];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_101018A2C()
{

  return _swift_task_switch(sub_101018B28, 0, 0);
}

uint64_t sub_101018B28()
{
  v1 = v0[14];
  v2 = v0[9];
  if ((*(v0[10] + 48))(v1, 1, v2) == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[13];
    v6 = *(v2 + 48);
    *v5 = *v1;
    sub_1000D2AD8(v1 + v6, v5 + v6, &qword_10169A068, &qword_1013933F0);
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    v0[23] = sub_1000076D4(v7, qword_1016C32C0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Waiting for queue to be empty", v10, 2u);
    }

    v11 = v0[21];

    v0[24] = *(v11 + 136);
    v13 = (&async function pointer to dispatch thunk of WorkItemQueue.awaitEmpty() + async function pointer to dispatch thunk of WorkItemQueue.awaitEmpty());

    v12 = swift_task_alloc();
    v0[25] = v12;
    *v12 = v0;
    v12[1] = sub_101018D98;

    return v13();
  }
}

uint64_t sub_101018D98()
{

  return _swift_task_switch(sub_101018EB0, 0, 0);
}

uint64_t sub_101018EB0(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Queue is now empty", v4, 2u);
  }

  v5 = v1[21];
  v7 = v1[12];
  v6 = v1[13];
  v8 = v1[10];
  v9 = v1[11];
  v10 = v1[7];

  type metadata accessor for WorkItemQueue.WorkItem();
  sub_1000D2A70(v6, v7, &qword_10169A098, &unk_101393410);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = (v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  sub_1000D2AD8(v7, v13 + v11, &qword_10169A098, &unk_101393410);
  *(v13 + v12) = v5;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v10;
  swift_retain_n();
  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  sub_10000B3A8(v6, &qword_10169A098, &unk_101393410);
  v14 = swift_task_alloc();
  v1[22] = v14;
  *v14 = v1;
  v14[1] = sub_101018A2C;
  v15 = v1[18];
  v16 = v1[14];

  return AsyncStream.Iterator.next(isolation:)(v16, 0, 0, v15);
}

uint64_t sub_101019100(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = sub_1000BC4D4(&qword_10169A098, &unk_101393410);
  v2[13] = swift_task_alloc();
  v2[14] = sub_1000BC4D4(&qword_10169A068, &qword_1013933F0);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1010192A4, 0, 0);
}

uint64_t sub_1010192A4()
{
  v50 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[12];
  sub_1000D2A70(v0[2], v3, &qword_10169A098, &unk_101393410);

  sub_1000D2AD8(v3 + *(v4 + 48), v2, &qword_10169A068, &qword_1013933F0);
  sub_1000D2A70(v2, v1, &qword_10169A068, &qword_1013933F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_1016C32C0);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error in monitoring pencil pairing service %@", v8, 0xCu);
      sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v39 = v0[16];
LABEL_13:
    sub_10000B3A8(v39, &qword_10169A068, &qword_1013933F0);

    v40 = v0[1];

    return v40();
  }

  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[5];
  sub_101028108(v0[15], v12, type metadata accessor for PencilPairingService.PeripheralDiscovery);
  sub_101028170(v12, v11, type metadata accessor for PencilPairingService.PeripheralDiscovery);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = *(v13 + 32);
  v16 = v0[10];
  v17 = v0[4];
  if (EnumCaseMultiPayload == 1)
  {
    v15(v0[7], v16, v17);
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v18 = v0[6];
    v19 = v0[7];
    v20 = v0[4];
    v21 = v0[5];
    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_1016C32C0);
    (*(v21 + 16))(v18, v19, v20);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[16];
    v27 = v0[11];
    v28 = v0[6];
    v29 = v0[7];
    v31 = v0[4];
    v30 = v0[5];
    if (v25)
    {
      v48 = v0[11];
      v32 = swift_slowAlloc();
      v47 = v29;
      v33 = swift_slowAlloc();
      v49 = v33;
      *v32 = 141558275;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2081;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v45 = v24;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v26;
      v36 = v35;
      v37 = *(v30 + 8);
      v37(v28, v31);
      v38 = sub_1000136BC(v34, v36, &v49);

      *(v32 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v23, v45, "Detached accessory with id %{private,mask.hash}s. Nothing to do here.", v32, 0x16u);
      sub_100007BAC(v33);

      v37(v47, v31);
      sub_1010281D8(v48, type metadata accessor for PencilPairingService.PeripheralDiscovery);
      v39 = v46;
    }

    else
    {

      v44 = *(v30 + 8);
      v44(v28, v31);
      v44(v29, v31);
      sub_1010281D8(v27, type metadata accessor for PencilPairingService.PeripheralDiscovery);
      v39 = v26;
    }

    goto LABEL_13;
  }

  v15(v0[8], v16, v17);
  v42 = swift_task_alloc();
  v0[17] = v42;
  *v42 = v0;
  v42[1] = sub_1010198C0;
  v43 = v0[8];

  return sub_101019DE0(v43);
}

uint64_t sub_1010198C0()
{

  return _swift_task_switch(sub_1010199BC, 0, 0);
}

uint64_t sub_1010199BC()
{
  v1 = v0[16];
  v2 = v0[11];
  (*(v0[5] + 8))(v0[8], v0[4]);
  sub_1010281D8(v2, type metadata accessor for PencilPairingService.PeripheralDiscovery);
  sub_10000B3A8(v1, &qword_10169A068, &qword_1013933F0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_101019AD4(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_101019B7C(a1, a2 & 1);
}

uint64_t sub_101019B7C(uint64_t a1, char a2)
{
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  return _swift_task_switch(sub_101019BA0, v2, 0);
}

uint64_t sub_101019BA0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    if (qword_101695148 != -1)
    {
      swift_once();
      v1 = *(v0 + 16);
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016C32C0);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    sub_1000BB584(v1, 1);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138477827;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Discovery failed with error %{private}@", v5, 0xCu);
      sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

LABEL_10:
    }
  }

  else
  {
    if (qword_101695148 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_1016C32C0);
    v3 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v3, v9, "Discovery succeeded", v10, 2u);
      goto LABEL_10;
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_101019DE0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  type metadata accessor for LostModeAlertInfo(0);
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for CentralManager.State();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v2[14] = *(v5 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_10101A06C, v1, 0);
}

uint64_t sub_10101A06C()
{
  v21 = v0;
  if (qword_101695148 != -1)
  {
    swift_once();
  }

  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  v0[29] = sub_1000076D4(v5, qword_1016C32C0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[26];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v20);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Detected local findable attach with peripheral id: %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[30] = v18;
  *v18 = v0;
  v18[1] = sub_10101A2EC;

  return daemon.getter();
}

uint64_t sub_10101A2EC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[31] = a1;

  v3 = swift_task_alloc();
  v2[32] = v3;
  v4 = type metadata accessor for Daemon();
  v2[33] = v4;
  UnlockService = type metadata accessor for FirstUnlockService();
  v6 = sub_101028238(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[34] = v6;
  v7 = sub_101028238(&qword_10169BD10, 255, &type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  *v3 = v9;
  v3[1] = sub_10101A4E0;

  return ActorServiceDaemon.getService<A>()(v4, UnlockService, v6, v7);
}

uint64_t sub_10101A4E0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 280) = a1;

  v4 = *(v3 + 56);
  if (v1)
  {

    v5 = sub_10101D754;
  }

  else
  {

    v5 = sub_10101A644;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10101A644(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for first unlock", v4, 2u);
  }

  v7 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
  v5 = swift_task_alloc();
  *(v1 + 288) = v5;
  *v5 = v1;
  v5[1] = sub_10101A760;

  return v7();
}

uint64_t sub_10101A760()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_10101A870, v1, 0);
}

uint64_t sub_10101A870(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Device is now unlocked", v4, 2u);
  }

  v5 = v1[7];

  if (*(v5 + 145) & 1) != 0 || (v6 = v1[7], (*(v6 + 146)))
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
LABEL_8:

      v11 = v1[1];

      return v11();
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Is currently going through PNP onboarding. Early return";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);

    goto LABEL_8;
  }

  v13 = *(v6 + 144);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v7, v8);
  if (v13)
  {
    if (!v14)
    {
      goto LABEL_8;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Is currently presenting lost mode alert. Early return.";
    goto LABEL_7;
  }

  if (v14)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to check if there is a local beacon identifier saved.", v15, 2u);
  }

  v16 = swift_task_alloc();
  v1[37] = v16;
  *v16 = v1;
  v16[1] = sub_10101AB84;

  return daemon.getter();
}

uint64_t sub_10101AB84(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 304) = a1;

  v5 = swift_task_alloc();
  *(v3 + 312) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_101028238(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_10101AD3C;
  v8 = *(v2 + 272);
  v9 = *(v2 + 264);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10101AD3C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 320) = a1;

  v4 = *(v3 + 56);
  if (v1)
  {

    v5 = sub_10101D8B4;
  }

  else
  {

    v5 = sub_10101AEA0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10101AEA0()
{
  v1 = *(v0 + 320);

  Identifier.id.getter();

  return _swift_task_switch(sub_10101AF2C, v1, 0);
}

uint64_t sub_10101AF2C()
{
  v1 = v0[40];
  v2 = v0[19];
  v3 = v0[13];
  v4 = v0[12];
  (*(v3 + 16))(v2, v0[20], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[41] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  v0[42] = v7;
  *v7 = v0;
  v7[1] = sub_10101B08C;
  v9 = v0[21];
  v8 = v0[22];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_101027C84, v6, v9);
}

uint64_t sub_10101B08C()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 56);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10101B21C, v4, 0);
}

uint64_t sub_10101B21C()
{
  v1 = (*(v0[24] + 48))(v0[22], 1, v0[23]);

  if (v1 == 1)
  {
    sub_10000B3A8(v0[22], &qword_1016A9A30, &unk_1013BD120);
    v0[45] = v0[40];
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Awaiting CentralManager", v4, 2u);
    }

    v0[46] = type metadata accessor for CentralManager();
    v5 = swift_task_alloc();
    v0[47] = v5;
    *v5 = v0;
    v5[1] = sub_10101B6DC;

    return static CentralManager.pairingCentralManager.getter();
  }

  else
  {
    sub_101028108(v0[22], v0[25], type metadata accessor for LocalFindableAccessoryRecord);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "There is a local beacon identifier saved meaning that this is owner. Disable lost mode.", v8, 2u);
    }

    v9 = swift_task_alloc();
    v0[43] = v9;
    *v9 = v0;
    v9[1] = sub_10101B48C;
    v10 = v0[25];

    return sub_101021C70(v10);
  }
}

uint64_t sub_10101B48C()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_10101D9D0;
  }

  else
  {
    v4 = sub_10101B5B8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10101B5B8()
{
  v1 = *(v0 + 200);

  sub_1010281D8(v1, type metadata accessor for LocalFindableAccessoryRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10101B6DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 384) = a1;
  *(v4 + 392) = v1;

  v5 = *(v3 + 56);
  if (v1)
  {
    v6 = sub_10101DBFC;
  }

  else
  {
    v6 = sub_10101B810;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10101B810()
{
  (*(v0[10] + 104))(v0[11], enum case for CentralManager.State.poweredOn(_:), v0[9]);
  v1 = swift_task_alloc();
  v0[50] = v1;
  v2 = sub_101028238(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v1 = v0;
  v1[1] = sub_10101B910;
  v3 = v0[46];
  v4 = v0[11];

  return CentralManagerProtocol.await(state:)(v4, v3, v2);
}

uint64_t sub_10101B910()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = v2[11];
  v4 = v2[10];
  v5 = v2[9];
  v6 = v2[7];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_10101DE08;
  }

  else
  {
    v7 = sub_10101BA8C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10101BA8C(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CentralManager powered on", v4, 2u);
  }

  v5 = v1[18];
  v6 = v1[12];
  v7 = v1[13];

  Identifier.id.getter();
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v1[52] = v9;
  *(v9 + 16) = xmmword_101385D80;
  v10 = *(v7 + 16);
  v1[53] = v10;
  v1[54] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v9 + v8, v5, v6);
  v13 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v11 = swift_task_alloc();
  v1[55] = v11;
  *v11 = v1;
  v11[1] = sub_10101BC40;

  return v13(v9);
}

uint64_t sub_10101BC40(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 448) = a1;
  *(v4 + 456) = v1;

  v5 = *(v3 + 56);

  if (v1)
  {
    v6 = sub_10101E020;
  }

  else
  {
    v6 = sub_10101BD90;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10101BD90()
{
  v51 = v0;
  v1 = v0[56];
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) != 0)
      {
        v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return daemon.getter();
        }
      }

      v0[58] = v2;
      v3 = v0[53];
      v5 = v0[17];
      v4 = v0[18];
      v6 = v0[12];

      v3(v5, v4, v6);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      v9 = os_log_type_enabled(v7, v8);
      v10 = v0[17];
      v11 = v0[12];
      v12 = v0[13];
      if (v9)
      {
        v13 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v50[0] = v49;
        *v13 = 141558275;
        *(v13 + 4) = 1752392040;
        *(v13 + 12) = 2081;
        sub_101028238(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        v16 = v15;
        v17 = *(v12 + 8);
        v17(v10, v11);
        v18 = sub_1000136BC(v14, v16, v50);

        *(v13 + 14) = v18;
        _os_log_impl(&_mh_execute_header, v7, v8, "Successfully retrieved peripheral %{private,mask.hash}s from CentralManager", v13, 0x16u);
        sub_100007BAC(v49);
      }

      else
      {

        v17 = *(v12 + 8);
        v17(v10, v11);
      }

      v0[59] = v17;
      v19 = swift_task_alloc();
      v0[60] = v19;
      *v19 = v0;
      v19[1] = sub_10101C404;

      return daemon.getter();
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v20 = v0[53];
  v21 = v0[18];
  v22 = v0[15];
  v23 = v0[12];

  v20(v22, v21, v23);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[15];
  v28 = v0[12];
  v29 = v0[13];
  if (v26)
  {
    v30 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50[0] = v48;
    *v30 = 141558275;
    *(v30 + 4) = 1752392040;
    *(v30 + 12) = 2081;
    sub_101028238(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v34 = *(v29 + 8);
    v34(v27, v28);
    v35 = sub_1000136BC(v31, v33, v50);

    *(v30 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "Unable to retrieve a Peripheral for %{private,mask.hash}s", v30, 0x16u);
    sub_100007BAC(v48);
  }

  else
  {

    v34 = *(v29 + 8);
    v34(v27, v28);
  }

  v36 = v0[18];
  v37 = v0[12];
  sub_10102796C();
  swift_allocError();
  *v38 = 5;
  swift_willThrow();

  v34(v36, v37);
  swift_errorRetain();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v50[0] = v42;
    *v41 = 136315138;
    swift_getErrorValue();
    v43 = Error.localizedDescription.getter();
    v45 = sub_1000136BC(v43, v44, v50);

    *(v41 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v39, v40, "Found error %s with handling lost mode", v41, 0xCu);
    sub_100007BAC(v42);
  }

  else
  {
  }

  v46 = v0[1];

  return v46();
}

uint64_t sub_10101C404(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 488) = a1;

  v5 = swift_task_alloc();
  *(v3 + 496) = v5;
  v6 = type metadata accessor for PencilPairingService(0);
  v7 = sub_101028238(&qword_10169A090, 255, type metadata accessor for PencilPairingService, &unk_1013E8708);
  *v5 = v4;
  v5[1] = sub_10101C5BC;
  v8 = *(v2 + 272);
  v9 = *(v2 + 264);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10101C5BC(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 504) = a1;

  v4 = *(v3 + 56);
  if (v1)
  {

    v5 = sub_10101D558;
  }

  else
  {

    v5 = sub_10101C720;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10101C720(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing local account check", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v1 + 512) = v5;
  *v5 = v1;
  v5[1] = sub_10101C844;
  v6 = *(v1 + 464);

  return sub_101013708(v6);
}

uint64_t sub_10101C844(char a1)
{
  v4 = *v2;
  *(v4 + 520) = v1;

  v5 = *(v4 + 56);
  if (v1)
  {
    v6 = sub_10101E258;
  }

  else
  {
    *(v4 + 584) = a1;
    v6 = sub_10101C980;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10101C980(uint64_t a1)
{
  v2 = *(v1 + 584);
  if (v2 < 2)
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v1 + 472);
    v25 = *(v1 + 96);
    v26 = *(v1 + 144);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v24 = v6;
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Not elligible for lost mode notification, remove", v7, 2u);

LABEL_4:

      v24(v26, v25);
LABEL_12:

      v11 = *(v1 + 8);

      return v11();
    }

    goto LABEL_11;
  }

  if (v2 == 2)
  {
    Identifier.id.getter();
    v8 = swift_task_alloc();
    *(v1 + 552) = v8;
    *v8 = v1;
    v8[1] = sub_10101D26C;
    v9 = *(v1 + 128);

    return sub_101021C70(v9);
  }

  else
  {
    v12 = sub_101022DFC();
    v13 = Logger.logObject.getter();
    if (!v12)
    {
      v16 = static os_log_type_t.error.getter();
      v17 = os_log_type_enabled(v13, v16);
      v6 = *(v1 + 472);
      v25 = *(v1 + 96);
      v26 = *(v1 + 144);
      if (v17)
      {
        v18 = swift_slowAlloc();
        v24 = v6;
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v13, v16, "We have exceeded the maximum number of alerts. Return.", v18, 2u);

        goto LABEL_4;
      }

LABEL_11:
      v6(v26, v25);
      goto LABEL_12;
    }

    if (v12 == 1)
    {
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Throttle limit not reached, continue with lookup.", v15, 2u);
      }
    }

    else
    {
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v13, v19, "We have exceeded the date interval. Reset number of alerts and date of first lookup. Continue with lost mode lookup.", v20, 2u);
      }

      sub_101022BF0();
    }

    v21 = swift_task_alloc();
    *(v1 + 528) = v21;
    *v21 = v1;
    v21[1] = sub_10101CE84;
    v22 = *(v1 + 464);
    v23 = *(v1 + 64);

    return sub_10101E940(v23, v22);
  }
}

uint64_t sub_10101CE84()
{
  v2 = *v1;
  v2[67] = v0;

  if (v0)
  {
    v3 = v2[7];

    return _swift_task_switch(sub_10101E4A8, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[68] = v4;
    *v4 = v2;
    v4[1] = sub_10101CFF4;
    v5 = v2[8];

    return sub_1010217BC(v5);
  }
}

uint64_t sub_10101CFF4()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_10101D104, v1, 0);
}

uint64_t sub_10101D104()
{
  v1 = v0[59];
  v2 = v0[18];
  v3 = v0[12];
  v4 = v0[8];

  sub_1010281D8(v4, type metadata accessor for LostModeAlertInfo);
  v1(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10101D26C()
{
  v2 = *v1;
  v2[70] = v0;

  v3 = v2[59];
  v4 = v2[16];
  v5 = v2[12];
  v6 = v2[7];
  v7 = (v2[13] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[72] = v7;
    v3(v4, v5);
    v8 = sub_10101E6F8;
  }

  else
  {
    v2[71] = v7;
    v3(v4, v5);
    v8 = sub_10101D418;
  }

  return _swift_task_switch(v8, v6, 0);
}

uint64_t sub_10101D418()
{
  v1 = v0[59];
  v2 = v0[18];
  v3 = v0[12];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10101D558(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[59];
  v6 = v1[18];
  v7 = v1[12];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No local findable pairing service to verify FMNID!", v8, 2u);
  }

  else
  {
  }

  v5(v6, v7);

  v9 = v1[1];

  return v9();
}

uint64_t sub_10101D754(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "First unlock service is not available.  Bailing", v4, 2u);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_10101D8B4(uint64_t a1)
{
  v1[45] = 0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Awaiting CentralManager", v4, 2u);
  }

  v1[46] = type metadata accessor for CentralManager();
  v5 = swift_task_alloc();
  v1[47] = v5;
  *v5 = v1;
  v5[1] = sub_10101B6DC;

  return static CentralManager.pairingCentralManager.getter();
}