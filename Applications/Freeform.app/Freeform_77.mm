void sub_100AA78C0()
{
  v1 = v0;
  sub_1005B981C(&unk_101A0F2D0, &qword_101492970);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v19 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        sub_10000BE14(*(v2 + 56) + v17, v20, &qword_1019FBEF0, &qword_10147B4B0);
        *(*(v4 + 48) + v17) = v18;
        sub_10003DFF8(v20, *(v4 + 56) + v17, &qword_1019FBEF0, &qword_10147B4B0);
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

        v1 = v19;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_100AA7A70()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0F248, &qword_1014928E0);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 64);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 56) + v20, v2);
      (*(v3 + 32))(*(v8 + 56) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_100AA7CF8()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0EF78, &qword_1014925A0);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
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

void sub_100AA7E60()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0EFD8, &unk_101492600);
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
        v19 = *(v2 + 56) + 16 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = *(v4 + 56) + 16 * v17;
        *v22 = v20;
        *(v22 + 8) = v21;
        v23 = v18;
        sub_1006CE2EC(v20, v21);
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

void sub_100AA7FE4()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F240, &qword_10149E9C0);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
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
}

void sub_100AA8130()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F070, &unk_1014926B0);
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 48) + v19;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v25 = *(v20 + 32);
        v26 = *(v20 + 40);
        v27 = *(*(v2 + 56) + v17);
        v28 = *(v4 + 48) + v19;
        v29 = *(v20 + 48);
        *v28 = *v20;
        *(v28 + 8) = v22;
        *(v28 + 16) = v23;
        *(v28 + 24) = v24;
        *(v28 + 32) = v25;
        *(v28 + 40) = v26;
        *(v28 + 48) = v29;
        *(*(v4 + 56) + v17) = v27;
        sub_100076F8C(v21, v22, v23, v24, v25, v26, v29);
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

void sub_100AA82D4()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F208, &unk_1014928A0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v25 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v26 = v4;
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
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = 40 * v17;
        sub_10000630C(*(v2 + 56) + 40 * v17, v27);
        v24 = *(v26 + 48) + v18;
        *v24 = v20;
        *(v24 + 8) = v21;
        *(v24 + 16) = v22;
        sub_100050F74(v27, *(v26 + 56) + v23);
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

        v1 = v25;
        v4 = v26;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_100AA8490()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F238, &unk_1014928D0);
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
        v19 = v18;
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

void sub_100AA8600()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F2A8, &qword_101492940);
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
        v18 = (*(v2 + 56) + 24 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = (*(v4 + 56) + 24 * v17);
        *v22 = v19;
        v22[1] = v20;
        v22[2] = v21;
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

void sub_100AA8790(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1005B981C(a1, a2);
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

        v24 = v22;
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

void sub_100AA88EC()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F220, &qword_1014928B8);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void sub_100AA8A5C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1005B981C(a1, a2);
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
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
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

void sub_100AA8BA8()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F110, &unk_1014ABFD0);
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
}

void sub_100AA8D34()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0EEC8, &unk_1014924F0);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 56) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 56) + v17);
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

void sub_100AA8EB8()
{
  v1 = v0;
  v43 = type metadata accessor for UUID();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0F210, &unk_10149EB70);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v37 = v1;
    v38 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
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
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v48 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v45;
        v20 = *(v45 + 72) * v18;
        v21 = v42;
        v22 = v43;
        (*(v45 + 16))(v42, *(v3 + 48) + v20, v43);
        v23 = 48 * v18;
        v24 = *(v3 + 56) + 48 * v18;
        v25 = *v24;
        v26 = *(v24 + 40);
        v27 = v44;
        v28 = *(v44 + 48);
        v29 = *(v19 + 32);
        v30 = *(v24 + 8);
        v46 = *(v24 + 24);
        v47 = v30;
        v29(v28 + v20, v21, v22);
        v31 = *(v27 + 56) + v23;
        *v31 = v25;
        v32 = v47;
        *(v31 + 24) = v46;
        *(v31 + 8) = v32;
        *(v31 + 40) = v26;
        v33 = v32;

        v34 = v25;
        v3 = v41;
        v35 = v33;
        v13 = v48;
      }

      while (v48);
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

        v1 = v37;
        v5 = v44;
        goto LABEL_18;
      }

      v17 = *(v38 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v48 = (v17 - 1) & v17;
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

void sub_100AA9190(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1005B981C(a1, a2);
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
        v19 = 16 * (v16 | (v10 << 6));
        v20 = *(v4 + 56);
        v21 = (*(v4 + 48) + v19);
        v22 = *v21;
        v23 = v21[1];
        v25 = *(v20 + v19);
        v24 = *(v20 + v19 + 8);
        v26 = (*(v6 + 48) + v19);
        *v26 = v22;
        v26[1] = v23;
        v27 = (*(v6 + 56) + v19);
        *v27 = v25;
        v27[1] = v24;
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

void sub_100AA9308()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0BA60, &unk_10148CE80);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100064288(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000BF3C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_100AA94C0()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F200, &qword_101492898);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
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
}

void sub_100AA9610()
{
  v1 = v0;
  v45 = type metadata accessor for UUID();
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0F2B0, &qword_101492948);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v39 = v1;
    v40 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v46 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v41 = v47 + 32;
    v42 = v47 + 16;
    v43 = v3;
    v15 = v44;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v53 = (v13 - 1) & v13;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v47;
        v21 = *(v47 + 72) * v19;
        v22 = v45;
        (*(v47 + 16))(v15, *(v3 + 48) + v21, v45);
        v23 = v19 << 6;
        v24 = (*(v3 + 56) + (v19 << 6));
        v25 = *v24;
        v26 = v24[2];
        v48 = v24[1];
        v49 = v26;
        v27 = v24[4];
        v50 = v24[3];
        v28 = v24[6];
        v51 = v24[5];
        v52 = v25;
        v29 = v24[7];
        v30 = v46;
        (*(v20 + 32))(*(v46 + 48) + v21, v15, v22);
        v31 = (*(v30 + 56) + v23);
        v32 = v51;
        v34 = v48;
        v33 = v49;
        *v31 = v52;
        v31[1] = v34;
        v35 = v50;
        v31[2] = v33;
        v31[3] = v35;
        v31[4] = v27;
        v31[5] = v32;
        v31[6] = v28;
        v31[7] = v29;
        v36 = v27;
        v3 = v43;

        v37 = v35;
        v13 = v53;
      }

      while (v53);
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

        v1 = v39;
        v5 = v46;
        goto LABEL_18;
      }

      v18 = *(v40 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v53 = (v18 - 1) & v18;
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

void sub_100AA9934()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0F1E8, &qword_101492878);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
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
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
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
}

void sub_100AA9BA4()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F1D0, &qword_101492860);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void sub_100AA9D1C()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0EFD0, &qword_1014925F8);
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
        v19 = *(v2 + 56) + 32 * v17;
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v24 = *(v19 + 25);
        LOBYTE(v19) = *(v19 + 26);
        *(*(v4 + 48) + 8 * v17) = v18;
        v25 = *(v4 + 56) + 32 * v17;
        *v25 = v21;
        *(v25 + 8) = v20;
        *(v25 + 16) = v22;
        *(v25 + 24) = v23;
        *(v25 + 25) = v24;
        *(v25 + 26) = v19;
        v26 = v18;
        v27 = v21;
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

void sub_100AA9EFC(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for CRLZoneSyncResultScenarios(0);
  v29 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0F1B8, &qword_10149EA30);
  v5 = *v1;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v2;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v30 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
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
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = *(*(v5 + 48) + 8 * v21);
        v23 = v28;
        v24 = *(v29 + 72) * v21;
        sub_10000C704(*(v5 + 56) + v24, v28, type metadata accessor for CRLZoneSyncResultScenarios);
        v25 = v30;
        *(*(v30 + 48) + 8 * v21) = v22;
        sub_100025460(v23, *(v25 + 56) + v24, type metadata accessor for CRLZoneSyncResultScenarios);
        v26 = v22;
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v2 = v27;
        v7 = v30;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v7;
  }
}

void sub_100AAA138()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0EFC8, &qword_1014925F0);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void sub_100AAA2B0()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F1D8, &qword_101492868);
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
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
        swift_unknownObjectRetain();
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

void sub_100AAA428()
{
  sub_1005B981C(&qword_101A0F188, &qword_1014927D8);
  v25 = v0;
  v1 = *v0;
  v26 = static _DictionaryStorage.copy(original:)();
  if (*(v1 + 16))
  {
    v2 = (v26 + 64);
    v3 = ((1 << *(v26 + 32)) + 63) >> 6;
    if (v26 != v1 || v2 >= v1 + 64 + 8 * v3)
    {
      memmove(v2, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v26 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = *(*(v1 + 48) + 8 * v14);
        v16 = (*(v1 + 56) + 40 * v14);
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[3];
        v21 = v16[4];
        *(*(v26 + 48) + 8 * v14) = v15;
        v22 = (*(v26 + 56) + 40 * v14);
        *v22 = v17;
        v22[1] = v18;
        v22[2] = v19;
        v22[3] = v20;
        v22[4] = v21;
        v23 = v15;
        sub_1009F5E18(v17, v18, v19, v20, v21, v24);
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v25 = v26;
  }
}

void sub_100AAA5F4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1005B981C(a1, a2);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        v23 = v21;
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

void sub_100AAA758(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1005B981C(a1, a2);
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

void sub_100AAA8B8()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F1C0, &qword_101492850);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        v22 = v19;
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

void sub_100AAAA5C()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v28 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0EB50, &qword_101491E80);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
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
        sub_10000C704(*(v4 + 48) + v21, v27, type metadata accessor for CRLBoardIdentifier);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = v29;
        sub_100025460(v20, *(v29 + 48) + v21, type metadata accessor for CRLBoardIdentifier);
        *(*(v23 + 56) + 8 * v19) = v22;
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
}

void sub_100AAACC8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v31 - v7;
  sub_1005B981C(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v8 + 64);
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v12)
    {
      memmove(v11, v33, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v38 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v20 = v10;
    if (v18)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
LABEL_17:
        v24 = v21 | (v14 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v8 + 48) + v26, v37);
        v29 = *(*(v8 + 56) + 8 * v24);
        (*(v25 + 32))(*(v20 + 48) + v26, v28, v27);
        *(*(v20 + 56) + 8 * v24) = v29;
        v30 = v29;
        v18 = v40;
      }

      while (v40);
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

        v6 = v32;
        v10 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
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
}

void sub_100AAAF40()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F190, &qword_1014927E0);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        sub_100024E98(v18, *(&v18 + 1));
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

void sub_100AAB0A8()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F1E0, &qword_101492870);
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
        v19 = (*(v2 + 56) + 3 * v17);
        v20 = *v19;
        v21 = v19[1];
        LOBYTE(v19) = v19[2];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 3 * v17);
        *v22 = v20;
        v22[1] = v21;
        v22[2] = v19;
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

void sub_100AAB234()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F180, &qword_1014927D0);
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
        v19 = v18;
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

void sub_100AAB390()
{
  v1 = v0;
  v38 = type metadata accessor for Date();
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  v36 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0F158, &qword_1014927A0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
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
        sub_10000C704(*(v5 + 48) + v24, v35, type metadata accessor for CRLBoardIdentifier);
        v25 = v40;
        v26 = *(v40 + 72) * v22;
        v27 = *(v5 + 56) + v26;
        v28 = v38;
        (*(v40 + 16))(v17, v27, v38);
        sub_100025460(v23, *(v18 + 48) + v24, type metadata accessor for CRLBoardIdentifier);
        v29 = v28;
        v5 = v34;
        (*(v25 + 32))(*(v18 + 56) + v26, v17, v29);
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
}

void sub_100AAB6B8()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F150, &qword_101492798);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void sub_100AAB8C0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1005B981C(a1, a2);
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
        v21 = v20;
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

void sub_100AABA0C()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F120, &qword_101492768);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        v23 = v21;
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

void sub_100AABBA4()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F0F8, &qword_101492740);
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
        sub_100064110(*(v2 + 48) + 40 * v17, v25);
        v18 = (*(v2 + 56) + 32 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = *v18;
        v21 = v18[1];
        v22 = v26;
        v23 = v25[1];
        *v19 = v25[0];
        *(v19 + 16) = v23;
        *(v19 + 32) = v22;
        v24 = (*(v4 + 56) + 32 * v17);
        *v24 = v20;
        v24[1] = v21;
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

void sub_100AABD40()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F0D8, &qword_101492720);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        sub_100024E98(v22, *(&v22 + 1));
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

void sub_100AABF00(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v37 - v7;
  sub_1005B981C(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
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

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
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
}

void sub_100AAC1D8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v32 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  v30 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0EEB8, &qword_1014924E8);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v6 + 64;
    if (v8 != v6 || v9 >= &v10[8 * v11])
    {
      memmove(v9, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v33 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_10000C704(*(v6 + 48) + v23, v29, type metadata accessor for CRLAssetReferrerIdentifier);
        v24 = v31;
        v25 = *(v32 + 72) * v21;
        sub_10000C704(*(v6 + 56) + v25, v31, type metadata accessor for CRLBoardIdentifier);
        v26 = v33;
        sub_100025460(v22, *(v33 + 48) + v23, type metadata accessor for CRLAssetReferrerIdentifier);
        sub_100025460(v24, *(v26 + 56) + v25, type metadata accessor for CRLBoardIdentifier);
        v16 = v34;
      }

      while (v34);
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

        v1 = v27;
        v8 = v33;
        goto LABEL_18;
      }

      v20 = *(v28 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v34 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_100AAC508(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v37 = a4;
  v7 = v4;
  v8 = a1(0);
  v36 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v35 = &v33 - v9;
  sub_1005B981C(a2, a3);
  v10 = *v4;
  v11 = static _DictionaryStorage.copy(original:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v33 = v7;
    v13 = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || v13 >= v10 + 64 + 8 * v15)
    {
      memmove(v13, (v10 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v10 + 16);
    v38 = v12;
    *(v12 + 16) = v18;
    v19 = 1 << *(v10 + 32);
    v20 = *(v10 + 64);
    v21 = -1;
    if (v19 < 64)
    {
      v21 = ~(-1 << v19);
    }

    v22 = v21 & v20;
    v23 = (v19 + 63) >> 6;
    v34 = v10;
    if ((v21 & v20) != 0)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
LABEL_17:
        v27 = v24 | (v17 << 6);
        v28 = v35;
        v29 = *(v36 + 72) * v27;
        v30 = v37;
        sub_10000C704(*(v10 + 48) + v29, v35, v37);
        v31 = *(*(v10 + 56) + v27);
        v32 = v38;
        sub_100025460(v28, *(v38 + 48) + v29, v30);
        *(*(v32 + 56) + v27) = v31;
        v10 = v34;
      }

      while (v22);
    }

    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v17 >= v23)
      {

        v7 = v33;
        v12 = v38;
        goto LABEL_21;
      }

      v26 = *(v14 + 8 * v17);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
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

void sub_100AAC7A0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v49 = a1;
  v50 = a2;
  v8 = sub_1005B981C(a1, a2);
  v48 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v47 = &v38 - v9;
  v46 = type metadata accessor for UUID();
  v51 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(a3, a4);
  v11 = *v4;
  v12 = static _DictionaryStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v14 = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v39 = v4;
    v40 = v11 + 64;
    if (v13 != v11 || v14 >= &v15[8 * v16])
    {
      memmove(v14, v15, 8 * v16);
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
        sub_10000BE14(v34, v47, v49, v23);
        v36 = v52;
        (*(v29 + 32))(*(v52 + 48) + v30, v31, v24);
        v37 = v35;
        v11 = v44;
        sub_10003DFF8(v32, *(v36 + 56) + v33, v37, v23);
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
}

void sub_100AACAD4()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F088, &qword_1014926D0);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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
}

void sub_100AACC48(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1005B981C(a1, a2);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        sub_100064288(*(v4 + 56) + 32 * v19, v22);
        *(*(v6 + 48) + 8 * v19) = v20;
        sub_10000BF3C(v22, (*(v6 + 56) + 32 * v19));
        v21 = v20;
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

void sub_100AACDB8()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F060, &qword_1014926A0);
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
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_100024E98(v19, *(&v19 + 1));
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

void sub_100AACF28()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0F068, &qword_1014926A8);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 56) + v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v21;
        v22 = (*(v4 + 56) + v17);
        *v22 = v19;
        v22[1] = v20;
        sub_100024E98(v21, *(&v21 + 1));
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

void sub_100AAD0C8(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(a1, a2);
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

void sub_100AAD37C()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v32 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0EF38, &qword_101492560);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
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
        v34 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v31;
        v21 = *(v32 + 72) * v19;
        sub_10000C704(*(v4 + 48) + v21, v31, type metadata accessor for CRLBoardIdentifier);
        v22 = 16 * v19;
        v23 = (*(v4 + 56) + 16 * v19);
        v25 = *v23;
        v24 = v23[1];
        v26 = v33;
        sub_100025460(v20, *(v33 + 48) + v21, type metadata accessor for CRLBoardIdentifier);
        v27 = (*(v26 + 56) + v22);
        *v27 = v25;
        v27[1] = v24;
        v28 = v24;

        v14 = v34;
      }

      while (v34);
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

        v1 = v29;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
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

void sub_100AAD5DC()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v28 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0EF30, &qword_101492558);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
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
        sub_10000C704(*(v4 + 48) + v21, v27, type metadata accessor for CRLBoardIdentifier);
        v22 = *(*(v4 + 56) + v19);
        v23 = v29;
        sub_100025460(v20, *(v29 + 48) + v21, type metadata accessor for CRLBoardIdentifier);
        *(*(v23 + 56) + v19) = v22;
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
}

void sub_100AAD834(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1005B981C(a1, a2);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
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

void sub_100AAD99C(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(a1, a2);
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

void sub_100AADC14()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0EF98, &qword_1014925C0);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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
}

void sub_100AADD60()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0EFA0, &qword_1014925C8);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v22[1] = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = 32 * v14;
      v19 = (*(v2 + 56) + v18);
      v20 = *v19;
      v21 = v19[1];
      *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
      v22 = (*(v4 + 56) + v18);
      *v22 = v20;
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
}

void sub_100AADEBC()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0EF90, &qword_1014925B8);
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
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
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

void sub_100AAE01C()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0EF80, &qword_1014925A8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
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
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
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
}

void sub_100AAE28C()
{
  v1 = v0;
  sub_1005B981C(&qword_101A0EF70, &qword_10149EA00);
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
        sub_100064110(*(v2 + 48) + 40 * v17, v26);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + 40 * v17;
        v23 = v26[0];
        v24 = v26[1];
        *(v22 + 32) = v27;
        *v22 = v23;
        *(v22 + 16) = v24;
        v25 = (*(v4 + 56) + 24 * v17);
        *v25 = v19;
        v25[1] = v20;
        v25[2] = v21;
        sub_100AAFD98(v19, v20, v21);
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

void sub_100AAE438(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_100AAE728(v7, v8, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100AAE530(0, v2, 1, a1);
  }
}

void sub_100AAE530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  if (a3 != a2)
  {
    v35 = *a4;
    v6 = (*a4 + (a3 << 6) - 64);
    v7 = a1 - a3;
LABEL_4:
    v33 = v6;
    v34 = a3;
    v32 = v7;
    while (1)
    {
      v44 = v5;
      v36 = v7;
      v8 = v6 + 8;
      v9 = v6[9];
      v10 = v6[10];
      v11 = v6[11];
      v12 = v6[12];
      v13 = v6[13];
      v14 = v6[14];
      v15 = v6[15];
      v43[0] = v6[8];
      v43[1] = v9;
      v43[2] = v10;
      v43[3] = v11;
      v43[4] = v12;
      v43[5] = v13;
      v43[6] = v14;
      v43[7] = v15;
      v16 = v6[1];
      v37 = v6[2];
      v39 = v6[3];
      v17 = v6[4];
      v18 = v6[5];
      v19 = v6[6];
      v20 = v6[7];
      v42[0] = *v6;
      v42[1] = v16;
      v42[2] = v37;
      v42[3] = v39;
      v42[4] = v17;
      v42[5] = v18;
      v42[6] = v19;
      v42[7] = v20;
      v41 = v17;

      v38 = v11;
      v21 = v12;

      v40 = v39;
      v22 = v44;
      v23 = sub_100A8510C(v43, v42);
      v5 = v22;

      if (v22)
      {
        break;
      }

      if (v23)
      {
        if (!v35)
        {
          __break(1u);
          return;
        }

        v25 = *(v6 + 6);
        v24 = *(v6 + 7);
        v26 = *(v6 + 5);
        v27 = *v6;
        v28 = *(v6 + 1);
        *v6 = *v8;
        *(v6 + 1) = v26;
        v29 = *(v6 + 2);
        v30 = *(v6 + 3);
        *(v6 + 2) = v25;
        *(v6 + 3) = v24;
        v6 -= 8;
        *v8 = v27;
        v8[1] = v28;
        v8[2] = v29;
        v8[3] = v30;
        v7 = v36 + 1;
        if (v36 != -1)
        {
          continue;
        }
      }

      a3 = v34 + 1;
      v6 = v33 + 8;
      v7 = v32 - 1;
      if (v34 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_100AAE728(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = v5;
  v8 = a3;
  v9 = a3[1];
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      v12 = v10;
      if (v10 + 1 >= v9)
      {
        v33 = v10 + 1;
      }

      else
      {
        v120 = v9;
        v116 = v11;
        v13 = v10;
        v14 = *v8;
        v15 = (*v8 + ((v10 + 1) << 6));
        v128 = v7;
        v16 = v15[1];
        v18 = v15[2];
        v17 = v15[3];
        v20 = v15[4];
        v19 = v15[5];
        v21 = v15[6];
        v22 = v15[7];
        v137 = *v15;
        v138 = v16;
        v139 = v18;
        v140 = v17;
        v141 = v20;
        v142 = v19;
        v143 = v21;
        v144 = v22;
        v23 = (v14 + (v10 << 6));
        v24 = v23[1];
        v25 = v23[2];
        v123 = v14;
        v125 = v23[3];
        v26 = v23[4];
        v27 = v23[5];
        v6 = v23[6];
        v28 = v23[7];
        v129 = *v23;
        v130 = v24;
        v131 = v25;
        v132 = v125;
        v133 = v26;
        v134 = v27;
        v135 = v6;
        v136 = v28;
        v127 = v26;

        v4 = v17;
        v29 = v20;

        v30 = v125;
        v119 = sub_100A8510C(&v137, &v129);
        if (v128)
        {

          return;
        }

        v31 = v13 + 2;
        v114 = v13;
        v121 = v13 << 6;
        v32 = (v123 + (v13 << 6) + 184);
        while (1)
        {
          v33 = v120;
          if (v120 == v31)
          {
            break;
          }

          v122 = v31;
          v34 = *(v32 - 6);
          v36 = *(v32 - 5);
          v35 = *(v32 - 4);
          v38 = *(v32 - 3);
          v37 = *(v32 - 2);
          v39 = *(v32 - 1);
          v40 = *v32;
          v137 = *(v32 - 7);
          v138 = v34;
          v139 = v36;
          v140 = v35;
          v141 = v38;
          v142 = v37;
          v143 = v39;
          v144 = v40;
          v41 = *(v32 - 14);
          v42 = *(v32 - 13);
          v124 = *(v32 - 12);
          v43 = *(v32 - 11);
          v44 = *(v32 - 10);
          v6 = *(v32 - 9);
          v45 = *(v32 - 8);
          v129 = *(v32 - 15);
          v130 = v41;
          v131 = v42;
          v132 = v124;
          v133 = v43;
          v134 = v44;
          v135 = v6;
          v136 = v45;
          v126 = v43;

          v46 = v35;
          v47 = v38;

          v4 = v124;
          LODWORD(v42) = sub_100A8510C(&v137, &v129);

          v31 = v122 + 1;
          v32 += 8;
          if ((v119 ^ v42))
          {
            v33 = v122;
            break;
          }
        }

        v7 = 0;
        v8 = a3;
        v11 = v116;
        v12 = v114;
        if (v119)
        {
          if (v33 < v114)
          {
            goto LABEL_118;
          }

          if (v114 < v33)
          {
            v48 = (v33 << 6) - 64;
            v49 = v33;
            v50 = v114;
            do
            {
              if (v50 != --v49)
              {
                v51 = *a3;
                if (!*a3)
                {
                  goto LABEL_121;
                }

                v52 = (v51 + v121);
                v53 = (v51 + v48);
                v55 = v52[2];
                v54 = v52[3];
                v57 = *v52;
                v56 = v52[1];
                v58 = v53[3];
                v60 = *v53;
                v59 = v53[1];
                v52[2] = v53[2];
                v52[3] = v58;
                *v52 = v60;
                v52[1] = v59;
                *v53 = v57;
                v53[1] = v56;
                v53[2] = v55;
                v53[3] = v54;
              }

              ++v50;
              v48 -= 64;
              v121 += 64;
            }

            while (v50 < v49);
          }
        }
      }

      v61 = v8[1];
      if (v33 >= v61)
      {
        goto LABEL_30;
      }

      if (__OFSUB__(v33, v12))
      {
        goto LABEL_114;
      }

      if (v33 - v12 >= a4)
      {
LABEL_30:
        v10 = v33;
        if (v33 < v12)
        {
          goto LABEL_113;
        }
      }

      else
      {
        if (__OFADD__(v12, a4))
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          return;
        }

        if (v12 + a4 >= v61)
        {
          v10 = v8[1];
        }

        else
        {
          v10 = v12 + a4;
        }

        if (v10 < v12)
        {
          goto LABEL_117;
        }

        v4 = v11;
        sub_100AAE530(v12, v10, v33, v8);
        if (v7)
        {
          goto LABEL_93;
        }

        v11 = v4;
        if (v10 < v12)
        {
          goto LABEL_113;
        }
      }

      v62 = v11;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v11 = v62;
      }

      else
      {
        v11 = sub_100B355CC(0, *(v62 + 2) + 1, 1, v62);
      }

      v4 = *(v11 + 2);
      v63 = *(v11 + 3);
      v64 = v4 + 1;
      if (v4 >= v63 >> 1)
      {
        v11 = sub_100B355CC((v63 > 1), v4 + 1, 1, v11);
      }

      *(v11 + 2) = v64;
      v65 = &v11[16 * v4];
      *(v65 + 4) = v12;
      *(v65 + 5) = v10;
      v66 = *a1;
      if (!*a1)
      {
        goto LABEL_122;
      }

      if (v4)
      {
        while (1)
        {
          v67 = v64 - 1;
          if (v64 >= 4)
          {
            break;
          }

          if (v64 == 3)
          {
            v68 = *(v11 + 4);
            v69 = *(v11 + 5);
            v78 = __OFSUB__(v69, v68);
            v70 = v69 - v68;
            v71 = v78;
LABEL_50:
            if (v71)
            {
              goto LABEL_102;
            }

            v84 = &v11[16 * v64];
            v86 = *v84;
            v85 = *(v84 + 1);
            v87 = __OFSUB__(v85, v86);
            v88 = v85 - v86;
            v89 = v87;
            if (v87)
            {
              goto LABEL_105;
            }

            v90 = &v11[16 * v67 + 32];
            v92 = *v90;
            v91 = *(v90 + 1);
            v78 = __OFSUB__(v91, v92);
            v93 = v91 - v92;
            if (v78)
            {
              goto LABEL_108;
            }

            if (__OFADD__(v88, v93))
            {
              goto LABEL_109;
            }

            if (v88 + v93 >= v70)
            {
              if (v70 < v93)
              {
                v67 = v64 - 2;
              }

              goto LABEL_71;
            }

            goto LABEL_64;
          }

          v94 = &v11[16 * v64];
          v96 = *v94;
          v95 = *(v94 + 1);
          v78 = __OFSUB__(v95, v96);
          v88 = v95 - v96;
          v89 = v78;
LABEL_64:
          if (v89)
          {
            goto LABEL_104;
          }

          v97 = &v11[16 * v67];
          v99 = *(v97 + 4);
          v98 = *(v97 + 5);
          v78 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v78)
          {
            goto LABEL_107;
          }

          if (v100 < v88)
          {
            goto LABEL_3;
          }

LABEL_71:
          v4 = v67 - 1;
          if (v67 - 1 >= v64)
          {
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            v108 = sub_10113DE48(v4);
            goto LABEL_85;
          }

          if (!*v8)
          {
            goto LABEL_119;
          }

          v105 = v11;
          v106 = *&v11[16 * v4 + 32];
          v6 = *&v11[16 * v67 + 40];
          sub_100AAEF80((*v8 + (v106 << 6)), (*v8 + (*&v11[16 * v67 + 32] << 6)), (*v8 + (v6 << 6)), v66);
          if (v7)
          {
            goto LABEL_93;
          }

          if (v6 < v106)
          {
            goto LABEL_98;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_10113DE48(v105);
          }

          if (v4 >= *(v105 + 2))
          {
            goto LABEL_99;
          }

          v107 = &v105[16 * v4];
          *(v107 + 4) = v106;
          *(v107 + 5) = v6;
          v145 = v105;
          sub_10113DDBC(v67);
          v11 = v145;
          v64 = *(v145 + 2);
          if (v64 <= 1)
          {
            goto LABEL_3;
          }
        }

        v72 = &v11[16 * v64 + 32];
        v73 = *(v72 - 64);
        v74 = *(v72 - 56);
        v78 = __OFSUB__(v74, v73);
        v75 = v74 - v73;
        if (v78)
        {
          goto LABEL_100;
        }

        v77 = *(v72 - 48);
        v76 = *(v72 - 40);
        v78 = __OFSUB__(v76, v77);
        v70 = v76 - v77;
        v71 = v78;
        if (v78)
        {
          goto LABEL_101;
        }

        v79 = &v11[16 * v64];
        v81 = *v79;
        v80 = *(v79 + 1);
        v78 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v78)
        {
          goto LABEL_103;
        }

        v78 = __OFADD__(v70, v82);
        v83 = v70 + v82;
        if (v78)
        {
          goto LABEL_106;
        }

        if (v83 >= v75)
        {
          v101 = &v11[16 * v67 + 32];
          v103 = *v101;
          v102 = *(v101 + 1);
          v78 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v78)
          {
            goto LABEL_112;
          }

          if (v70 < v104)
          {
            v67 = v64 - 2;
          }

          goto LABEL_71;
        }

        goto LABEL_50;
      }

LABEL_3:
      v9 = v8[1];
      if (v10 >= v9)
      {
        goto LABEL_82;
      }
    }
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_82:
  v6 = *a1;
  if (!*a1)
  {
    goto LABEL_123;
  }

  v4 = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_115;
  }

  v108 = v4;
LABEL_85:
  v109 = v7;
  v145 = v108;
  v110 = *(v108 + 2);
  if (v110 >= 2)
  {
    do
    {
      v111 = *v8;
      if (!*v8)
      {
        goto LABEL_120;
      }

      v4 = v110 - 1;
      v7 = *&v108[16 * v110];
      v112 = v108;
      v8 = *&v108[16 * v110 + 24];
      sub_100AAEF80((v111 + (v7 << 6)), (v111 + (*&v108[16 * v110 + 16] << 6)), (v111 + (v8 << 6)), v6);
      if (v109)
      {
        break;
      }

      if (v8 < v7)
      {
        goto LABEL_110;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_10113DE48(v112);
      }

      if (v110 - 2 >= *(v112 + 2))
      {
        goto LABEL_111;
      }

      v113 = &v112[16 * v110];
      *v113 = v7;
      *(v113 + 1) = v8;
      v145 = v112;
      sub_10113DDBC(v4);
      v108 = v145;
      v110 = *(v145 + 2);
      v8 = a3;
    }

    while (v110 > 1);
  }

LABEL_93:
}

uint64_t sub_100AAEF80(char *__src, char *a2, char *a3, char *a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = __src;
  v10 = a2 - __src;
  v11 = a2 - __src + 63;
  if (a2 - __src >= 0)
  {
    v11 = a2 - __src;
  }

  v12 = v11 >> 6;
  v13 = a3 - a2;
  v14 = a3 - a2 + 63;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 6;
  if (v12 >= v14 >> 6)
  {
    if (a4 != a2 || &a2[64 * v15] <= a4)
    {
      memmove(a4, a2, v15 << 6);
      v8 = a2;
    }

    v17 = &v6[64 * v15];
    if (v13 < 64 || v8 <= v9)
    {
      v43 = v8;
    }

    else
    {
      __srcb = v6;
      __dsta = v9;
LABEL_27:
      v93 = v7;
      v116 = v5;
      v45 = 0;
      v46 = v17;
      v83 = v8 - 64;
      v84 = v17;
      v97 = v8;
      do
      {
        v47 = &v46[v45];
        v48 = &v46[v45 - 64];
        v50 = *&v46[v45 - 56];
        v49 = *&v46[v45 - 48];
        v51 = *&v46[v45 - 40];
        v89 = *&v46[v45 - 32];
        v91 = v45;
        v52 = *&v46[v45 - 24];
        v53 = *(v47 - 2);
        v54 = *(v47 - 1);
        v108 = *v48;
        v109 = v50;
        v110 = v49;
        v111 = v51;
        v112 = v89;
        v113 = v52;
        v114 = v53;
        v115 = v54;
        v55 = *(v8 - 7);
        v56 = *(v8 - 6);
        v88 = *(v8 - 5);
        v57 = *(v8 - 4);
        v58 = *(v8 - 3);
        v59 = *(v8 - 2);
        v60 = *(v8 - 1);
        v100 = *(v8 - 8);
        v101 = v55;
        v102 = v56;
        v103 = v88;
        v104 = v57;
        v105 = v58;
        v106 = v59;
        v107 = v60;
        v85 = v57;

        v61 = v51;
        v62 = v89;

        v63 = v88;
        v64 = v116;
        v65 = sub_100A8510C(&v108, &v100);
        v116 = v64;
        if (v64)
        {

          v43 = v97;
          v74 = __srcb;
          v77 = v84 - __srcb + v91;
          v78 = v77 + 63;
          if (v77 >= 0)
          {
            v78 = v84 - __srcb + v91;
          }

          v76 = v78 >> 6;
          if (v97 < __srcb || v97 >= &__srcb[v78 & 0xFFFFFFFFFFFFFFC0])
          {
            memmove(v97, __srcb, v76 << 6);
          }

          else if (v97 != __srcb)
          {
            goto LABEL_50;
          }

          return 1;
        }

        v66 = v65;

        if (v66)
        {
          v7 = &v93[v91 - 64];
          v6 = __srcb;
          v5 = v116;
          v43 = v83;
          if (&v93[v91] != v97)
          {
            v71 = *v83;
            v72 = *(v83 + 1);
            v73 = *(v83 + 3);
            *&v93[v91 - 32] = *(v83 + 2);
            *&v93[v91 - 16] = v73;
            *v7 = v71;
            *&v93[v91 - 48] = v72;
          }

          v17 = &v84[v91];
          if (&v84[v91] <= __srcb || (v8 = v83, v83 <= __dsta))
          {
            v17 = &v84[v91];
            goto LABEL_52;
          }

          goto LABEL_27;
        }

        v8 = v97;
        v6 = __srcb;
        v46 = v84;
        if (&v93[v91] != v47)
        {
          v67 = &v93[v91 - 64];
          v68 = *v48;
          v69 = *(v48 + 16);
          v70 = *(v48 + 48);
          *(v67 + 2) = *(v48 + 32);
          *(v67 + 3) = v70;
          *v67 = v68;
          *(v67 + 1) = v69;
        }

        v45 = v91 - 64;
        v17 = &v84[v91 - 64];
      }

      while (v17 > __srcb);
      v43 = v97;
    }
  }

  else
  {
    if (a4 != __src || &__src[64 * v12] <= a4)
    {
      memmove(a4, __src, v12 << 6);
      v8 = a2;
    }

    v17 = &v6[64 * v12];
    if (v10 >= 64 && v8 < v7)
    {
      v92 = v7;
      v86 = &v6[64 * v12];
      while (1)
      {
        v116 = v5;
        __dst = v9;
        v96 = v8;
        v18 = *(v8 + 1);
        v20 = *(v8 + 2);
        v19 = *(v8 + 3);
        v21 = *(v8 + 5);
        v90 = *(v8 + 4);
        v22 = *(v8 + 6);
        v23 = *(v8 + 7);
        v108 = *v8;
        v109 = v18;
        v110 = v20;
        v111 = v19;
        v112 = v90;
        v113 = v21;
        v114 = v22;
        v115 = v23;
        v24 = *(v6 + 1);
        v25 = *(v6 + 2);
        v26 = *(v6 + 3);
        v27 = *(v6 + 4);
        v28 = *(v6 + 5);
        v29 = *(v6 + 6);
        __srca = v6;
        v100 = *v6;
        v30 = *(v6 + 7);
        v101 = v24;
        v102 = v25;
        v103 = v26;
        v104 = v27;
        v105 = v28;
        v106 = v29;
        v107 = v30;
        v87 = v27;

        v31 = v19;
        v32 = v90;

        v33 = v26;
        v34 = v116;
        v35 = sub_100A8510C(&v108, &v100);
        if (v34)
        {

          v74 = __srca;
          v75 = v86 - __srca + 63;
          if (v86 - __srca >= 0)
          {
            v75 = v86 - __srca;
          }

          v76 = v75 >> 6;
          v43 = __dst;
          if (__dst < __srca || __dst >= &__srca[v75 & 0xFFFFFFFFFFFFFFC0])
          {
            memmove(__dst, __srca, v76 << 6);
          }

          else
          {
            if (__dst == __srca)
            {
              return 1;
            }

LABEL_50:
            v79 = v76 << 6;
LABEL_58:
            memmove(v43, v74, v79);
          }

          return 1;
        }

        v36 = v35;

        if ((v36 & 1) == 0)
        {
          break;
        }

        v37 = __dst;
        v38 = v96;
        v8 = v96 + 64;
        v6 = __srca;
        v39 = v92;
        if (__dst != v96)
        {
          goto LABEL_17;
        }

LABEL_18:
        v9 = v37 + 64;
        v17 = v86;
        v5 = 0;
        if (v6 >= v86 || v8 >= v39)
        {
          goto LABEL_20;
        }
      }

      v8 = v96;
      v38 = __srca;
      v6 = __srca + 64;
      v37 = __dst;
      v39 = v92;
      if (__dst == __srca)
      {
        goto LABEL_18;
      }

LABEL_17:
      v40 = *v38;
      v41 = *(v38 + 1);
      v42 = *(v38 + 3);
      *(v37 + 2) = *(v38 + 2);
      *(v37 + 3) = v42;
      *v37 = v40;
      *(v37 + 1) = v41;
      goto LABEL_18;
    }

LABEL_20:
    v43 = v9;
  }

LABEL_52:
  v80 = v17 - v6;
  v81 = v80 + 63;
  if (v80 >= 0)
  {
    v81 = v80;
  }

  if (v43 < v6 || v43 >= &v6[v81 & 0xFFFFFFFFFFFFFFC0] || v43 != v6)
  {
    v79 = v81 >> 6 << 6;
    v74 = v6;
    goto LABEL_58;
  }

  return 1;
}

void sub_100AAF598()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_1019F1B88 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:static CRLMathCalculationController.mathHintsModeChangedNotificationName object:0 userInfo:0];
}

double _s8Freeform28CRLMathCalculationControllerC13mathHintsModeAA0bfG0Ovs_0(uint64_t a1)
{
  if (a1 == 3)
  {
    v1 = objc_opt_self();
    v2 = [v1 _atomicIncrementAssertCount];
    v30[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v30, "Should not set the math hint mode to answersSuppressed.", 55, 2u);
    StaticString.description.getter("mathHintsMode", 13, 2);
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMathCalculationController.swift", 99, 2);
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v11;
    v12 = sub_1005CF04C();
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 254;
    v14 = v30[0];
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "Should not set the math hint mode to answersSuppressed.", 55, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter("mathHintsMode", 13, 2);
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMathCalculationController.swift", 99, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Should not set the math hint mode to answersSuppressed.", 55, 2);
    v23 = String._bridgeToObjectiveC()();

    [v1 handleFailureInFunction:v21 file:v22 lineNumber:254 isFatal:0 format:v23 args:v20];

    goto LABEL_5;
  }

  v31 = &type metadata for CRLPencilAndPaperFeatureFlags;
  v32 = sub_10067BFD0();
  LOBYTE(v30[0]) = 0;
  v26 = isFeatureEnabled(_:)();
  sub_100005070(v30);
  if (v26)
  {
    v31 = &type metadata for CRLFeatureFlags;
    v32 = sub_100004D60();
    LOBYTE(v30[0]) = 15;
    v27 = isFeatureEnabled(_:)();
    sub_100005070(v30);
    if (v27)
    {
      if (qword_1019F2000 != -1)
      {
        swift_once();
      }

      v28 = qword_101A1AB00;
      v29 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
      swift_beginAccess();
      if (*(v28 + v29) == 1)
      {
        v23 = [objc_opt_self() standardUserDefaults];
        [v23 setInteger:a1 forKey:@"CRLMathRecognitionMode"];
LABEL_5:
      }
    }
  }

  return result;
}

unint64_t sub_100AAFC6C()
{
  result = qword_101A0EDB8;
  if (!qword_101A0EDB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CRLMathHintsMode, &type metadata for CRLMathHintsMode, v0, v1);
    atomic_store(result, &qword_101A0EDB8);
  }

  return result;
}

unint64_t sub_100AAFCC4()
{
  result = qword_101A0EDC0;
  if (!qword_101A0EDC0)
  {
    v3 = sub_1005C4E5C(&qword_101A0EDC8, &qword_101492330);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_101A0EDC0);
  }

  return result;
}

void sub_100AAFD48(void *a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

id sub_100AAFD98(id result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;

    return a3;
  }

  return result;
}

uint64_t sub_100AAFE68()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100AAFFA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D4C8;

  return sub_100A83DE4();
}

uint64_t sub_100AB0058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_100AB00C0()
{
  result = qword_101A0F2A0;
  if (!qword_101A0F2A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CRLMathHintsMode, &type metadata for CRLMathHintsMode, v0, v1);
    atomic_store(result, &qword_101A0F2A0);
  }

  return result;
}

uint64_t sub_100AB01E4(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

uint64_t sub_100AB0288(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_100A86278(a1, v4, v5, v7, v6);
}

float sub_100AB037C@<S0>(float *a2@<X8>)
{
  v3 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLWPShapeItemData(0);
  v6 = *swift_dynamicCastClassUnconditional();
  (*(v6 + 896))();
  sub_1005B981C(&unk_101A0D9C0, "@0$");
  CRRegister.wrappedValue.getter();
  sub_100AB78F8(v5, type metadata accessor for CRLWPShapeItemCRDTData);
  result = v9;
  *a2 = v9;
  return result;
}

void sub_100AB04B4(int *a1, uint64_t *a2)
{
  if (sub_1011255D0())
  {
    type metadata accessor for CRLWPShapeItemData(0);
    v2 = *(*swift_dynamicCastClassUnconditional() + 912);

    v3 = v2(v4);
    type metadata accessor for CRLWPShapeItemCRDTData(0);
    sub_1005B981C(&unk_101A0D9C0, "@0$");
    CRRegister.wrappedValue.setter();
    v3(v4, 0);
  }
}

void sub_100AB06A0()
{
  v1 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (v13)
    {
      (*(*v13 + 896))(v9);
      sub_100AB77F4(&v7[*(v5 + 20)], v11, type metadata accessor for CRLWPStorageCRDTData);
      v14 = v12;
      sub_100AB78F8(v7, type metadata accessor for CRLWPShapeItemCRDTData);
      (*(v2 + 16))(v4, v11, v1);
      sub_100AB78F8(v11, type metadata accessor for CRLWPStorageCRDTData);
      v15 = CRAttributedString.attributedString.getter();
      (*(v2 + 8))(v4, v1);
      [v15 length];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100AB0948()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v3 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v5 = v3(v4);

  v6 = [v5 widthValid];

  if (!v6)
  {
    return 1;
  }

  v7 = *(**(v1 + v2) + 296);

  v9 = v7(v8);

  v10 = [v9 heightValid];

  return v10 ^ 1;
}

char *sub_100AB0A4C(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage] = 0;
  v2[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textIsVertical] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a1;
  *&v2[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = a2;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for CRLBoardItemBase(0);
  v5 = a1;

  v6 = objc_msgSendSuper2(&v16, "init");
  sub_1006950BC(v19);
  v17[12] = v19[12];
  v17[13] = v19[13];
  v17[14] = v19[14];
  v18 = v20;
  v17[8] = v19[8];
  v17[9] = v19[9];
  v17[10] = v19[10];
  v17[11] = v19[11];
  v17[4] = v19[4];
  v17[5] = v19[5];
  v17[6] = v19[6];
  v17[7] = v19[7];
  v17[0] = v19[0];
  v17[1] = v19[1];
  v17[2] = v19[2];
  v17[3] = v19[3];
  v7 = objc_allocWithZone(type metadata accessor for CRLWPStorage());
  v8 = v5;

  v9 = sub_100A41BB8(v8, a2, v17);

  v10 = OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage;
  v11 = *&v6[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
  *&v6[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage] = v9;

  v12 = *&v6[v10];
  if (v12)
  {
    v13 = v12;
    v14 = v6;
    sub_100A29E08(v6);
  }

  return v6;
}

id sub_100AB0C14()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v3 = **(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = *(v3 + 840);

    v7 = v5(v6);

    v8 = [v7 bezierPath];

    LOBYTE(v7) = [v8 isLineSegment];
    if (v7)
    {
      return 0;
    }

    v9 = *(**(v1 + v2) + 296);

    v11 = v9(v10);

    v12 = [v11 widthValid];

    if (!v12)
    {
      return 0;
    }

    else
    {
      v13 = *(**(v1 + v2) + 296);

      v15 = v13(v14);

      v16 = [v15 heightValid];

      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_100AB0E00()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v4 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
  v5 = v1;

  v7 = v4(v6);

  v8 = [v7 widthValid];

  if (v8)
  {
    v9 = *(**(v2 + v3) + 296);

    v11 = v9(v10);

    v12 = [v11 heightValid];

    if (v12)
    {

      return 0;
    }
  }

  v14 = [v5 characterCount];

  return v14 == 0;
}

void sub_100AB10B0()
{
  v1 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (v13)
    {
      (*(*v13 + 896))(v9);
      sub_100AB77F4(&v7[*(v5 + 20)], v11, type metadata accessor for CRLWPStorageCRDTData);
      v14 = v12;
      sub_100AB78F8(v7, type metadata accessor for CRLWPShapeItemCRDTData);
      (*(v2 + 16))(v4, v11, v1);
      sub_100AB78F8(v11, type metadata accessor for CRLWPStorageCRDTData);
      v15 = CRAttributedString.attributedString.getter();
      (*(v2 + 8))(v4, v1);
      v16 = [v15 string];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_100AB13C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v51 = a2;
  v54 = type metadata accessor for UUID();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v50 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v6 - 8);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v9);
  v11 = v46 - v10;
  v12 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v12 - 8);
  v52 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v53 = v46 - v15;
  __chkstk_darwin(v16);
  v49 = v46 - v17;
  __chkstk_darwin(v18);
  v47 = v46 - v19;
  __chkstk_darwin(v20);
  v22 = v46 - v21;
  v55 = v4;
  type metadata accessor for CRLWPShapeItemData(0);
  v23 = *(*swift_dynamicCastClassUnconditional() + 504);

  v24 = v23(1);

  v25 = v24 + *(*v24 + 736);
  swift_beginAccess();
  sub_10000BE14(v25, v11, &unk_101A0F400, &unk_1014746E0);
  v48 = v9;

  v26 = sub_1005B981C(&unk_101A0F410, &unk_10148D730);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v11, &unk_101A0F400, &unk_1014746E0);
  sub_10000BE14(v8, v22, &qword_1019F6990, &qword_10146D2F0);
  sub_100AB78F8(v8, type metadata accessor for CRLShapeItemParentAffinity);
  swift_beginAccess();
  v27 = v25;
  v28 = v59;
  sub_10124E270(v57);
  swift_endAccess();
  if (v28)
  {

    sub_10000CAAC(v22, &qword_1019F6990, &qword_10146D2F0);
  }

  else
  {
    v46[1] = v26;
    v57 = 0;
    v29 = v47;
    v59 = v22;
    sub_10000BE14(v25, v11, &unk_101A0F400, &unk_1014746E0);
    sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
    v30 = v50;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v11, &unk_101A0F400, &unk_1014746E0);
    v31 = *(*v24 + 744);
    swift_beginAccess();
    v32 = v56;
    v33 = v54;
    (*(v56 + 40))(v24 + v31, v30, v54);
    swift_endAccess();
    v34 = v49;
    sub_10000BE14(v51, v49, &qword_1019F6990, &qword_10146D2F0);
    v35 = *(v32 + 48);
    if (v35(v34, 1, v33) == 1)
    {
      v36 = v29;
      sub_10000BE14(v59, v29, &qword_1019F6990, &qword_10146D2F0);
      v37 = v35(v34, 1, v33);
      v38 = v53;
      if (v37 != 1)
      {
        sub_10000CAAC(v34, &qword_1019F6990, &qword_10146D2F0);
      }
    }

    else
    {
      v39 = v56;
      v36 = v29;
      (*(v56 + 32))(v29, v34, v33);
      (*(v39 + 56))(v29, 0, 1, v33);
      v38 = v53;
    }

    sub_10000BE14(v36, v38, &qword_1019F6990, &qword_10146D2F0);
    swift_beginAccess();
    v40 = v52;
    sub_10000BE14(v38, v52, &qword_1019F6990, &qword_10146D2F0);
    v41 = CRRegister.wrappedValue.modify();
    sub_10002C638(v40, v42, &qword_1019F6990, &qword_10146D2F0);
    v41(v58, 0);
    sub_10000CAAC(v38, &qword_1019F6990, &qword_10146D2F0);
    swift_endAccess();

    sub_10000CAAC(v36, &qword_1019F6990, &qword_10146D2F0);
    v43 = *(v55 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v44 = objc_allocWithZone(type metadata accessor for CRLWPShapeItem(0));
    v27 = sub_100AB0A4C(v43, v24);
    sub_10000CAAC(v59, &qword_1019F6990, &qword_10146D2F0);
  }

  return v27;
}

uint64_t sub_100AB1A94()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v3 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v5 = v3(v4);

  v6 = [v5 widthValid];

  if (v6 && (v7 = *(**(v1 + v2) + 296), v8 = , v9 = v7(v8), , v10 = [v9 heightValid], v9, (v10 & 1) != 0))
  {
    v11 = *(v1 + v2);
    v12 = (*v11 + 464);
    v13 = *v12;
    v14 = (*v12)();
    if ((v16 & 0x100) != 0 && (!(v14 | v15) ? (v17 = v16 == 0) : (v17 = 0), !v17 && (v14 == 1 ? (v18 = v15 == 0) : (v18 = 0), v18 ? (v19 = v16 == 0) : (v19 = 0), v19)))
    {
      v26 = *v11;
      result = swift_conformsToProtocol2();
      if (result)
      {
        v27 = *(v26 + 840);

        v29 = v27(v28);

        v30 = [v29 inferredAccessibilityDescriptionNoShapeNames];

        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v31;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      (v13)(v14);

      return sub_1009B6B8C();
    }
  }

  else
  {
    v21 = [objc_opt_self() mainBundle];
    v22 = String._bridgeToObjectiveC()();
    v23 = String._bridgeToObjectiveC()();
    v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v25;
  }

  return result;
}

id sub_100AB1E2C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_100AB1E9C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v3 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v5 = v3(v4);

  v6 = [v5 widthValid];

  if (v6 && (v7 = *(**(v1 + v2) + 296), v8 = , v9 = v7(v8), , v10 = [v9 heightValid], v9, (v10 & 1) != 0))
  {
    v11 = *(v1 + v2);
    v12 = (*v11 + 464);
    v13 = *v12;
    v14 = (*v12)();
    if ((v16 & 0x100) != 0 && (!(v14 | v15) ? (v17 = v16 == 0) : (v17 = 0), !v17 && (v14 == 1 ? (v18 = v15 == 0) : (v18 = 0), v18 ? (v19 = v16 == 0) : (v19 = 0), v19)))
    {
      v26 = *v11;
      result = swift_conformsToProtocol2();
      if (result)
      {
        v27 = *(v26 + 840);

        v29 = v27(v28);

        v30 = [v29 inferredLocalizedAccessibilityDescriptionPlaceholder];

        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v31;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      (v13)(v14);

      return sub_1009B7078();
    }
  }

  else
  {
    v21 = [objc_opt_self() mainBundle];
    v22 = String._bridgeToObjectiveC()();
    v23 = String._bridgeToObjectiveC()();
    v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v25;
  }

  return result;
}

void sub_100AB2220()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v1)
  {
    goto LABEL_9;
  }

  v6 = v1;
  v2 = [v6 range];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < v2)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  sub_100A2E55C(v2, v5, 0, 0xE000000000000000, 1);
}

float sub_100AB2470()
{
  v0 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v0);
  v2 = v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLWPShapeItemData(0);
  v3 = *swift_dynamicCastClassUnconditional();
  (*(v3 + 896))();
  sub_1005B981C(&unk_101A0D9C0, "@0$");
  CRRegister.wrappedValue.getter();
  sub_100AB78F8(v2, type metadata accessor for CRLWPShapeItemCRDTData);
  return *&v5[3];
}

uint64_t sub_100AB2780()
{
  type metadata accessor for CRLWPShapeItemData(0);
  swift_dynamicCastClassUnconditional();

  v0 = sub_100693C3C();

  return v0;
}

double sub_100AB2840(uint64_t a1)
{
  if (sub_1011255D0())
  {
    type metadata accessor for CRLWPShapeItemData(0);
    v2 = *(*swift_dynamicCastClassUnconditional() + 912);

    v3 = v2(v4);
    type metadata accessor for CRLWPShapeItemCRDTData(0);
    type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
    sub_1005B981C(&unk_101A0F370, &unk_1014708C0);
    CRRegister.wrappedValue.setter();
    v3(v4, 0);
  }

  return result;
}

uint64_t sub_100AB2AB0()
{
  v0 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v0);
  v2 = &v5[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CRLWPShapeItemData(0);
  v3 = *swift_dynamicCastClassUnconditional();
  (*(v3 + 896))();
  type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.getter();
  sub_100AB78F8(v2, type metadata accessor for CRLWPShapeItemCRDTData);
  return v5[15];
}

double sub_100AB2D50(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  v4 = 0.0;
  if (!v3)
  {
    return v4;
  }

  v7 = *(v2 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textIsVertical);
  v8 = v3;
  if ([v8 paragraphCount] < 1)
  {
    goto LABEL_17;
  }

  v9 = [v8 paragraphStyleAtCharIndex:0 effectiveRange:0];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = *&v9[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_alignment];

  if (v10 <= 1)
  {
    if (v10 == 1)
    {

      if (v7)
      {
        return a2;
      }

      else
      {
        return a1;
      }
    }

    goto LABEL_17;
  }

  if (v10 != 2)
  {
    if (v10 == 4)
    {
      v11 = [v8 isWritingDirectionRightToLeftForParagraphAtParIndex:0];

      if (v7)
      {
        v12 = a2;
      }

      else
      {
        v12 = a1;
      }

      if (v11)
      {
        return v12;
      }

      else
      {
        return 0.0;
      }
    }

LABEL_17:

    return v4;
  }

  if (v7)
  {
    v14 = a2;
  }

  else
  {
    v14 = a1;
  }

  return v14 * 0.5;
}

double sub_100AB2F50(void *a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textIsVertical;
  v8 = *(v3 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textIsVertical);
  v9 = 0.0;
  if ([a1 widthValid])
  {
    goto LABEL_18;
  }

  if (!v8)
  {
    v9 = sub_100AB2D50(a2, a3);
    if ([a1 heightValid])
    {
      return v9;
    }

    goto LABEL_21;
  }

  v10 = *(v3 + v7);
  type metadata accessor for CRLWPShapeItemData(0);
  swift_dynamicCastClassUnconditional();

  v11 = sub_100693C3C();

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      if (v10)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = a3;
      }

      goto LABEL_18;
    }

LABEL_12:
    if (v10)
    {
      v9 = a2;
    }

    else
    {
      v9 = 0.0;
    }

    goto LABEL_18;
  }

  if (v11 != 1)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    v12 = a2;
  }

  else
  {
    v12 = a3;
  }

  v9 = v12 * 0.5;
LABEL_18:
  if (([a1 heightValid] & 1) == 0)
  {
    if (v8)
    {
      sub_100AB2D50(a2, a3);
      return v9;
    }

LABEL_21:
    type metadata accessor for CRLWPShapeItemData(0);
    swift_dynamicCastClassUnconditional();

    sub_100693C3C();
  }

  return v9;
}

void *sub_100AB32F4@<X0>(uint64_t *a1@<X8>)
{
  sub_1010A07F0(v1, 1, __src);
  a1[3] = &type metadata for CRLWPShapePresetData;
  a1[4] = sub_100AB78A4();
  v3 = swift_allocObject();
  *a1 = v3;
  return memcpy((v3 + 16), __src, 0x370uLL);
}

BOOL sub_100AB3368(unsigned __int8 a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x4F8))();
  if (v3 != 6 && v3 == a1)
  {
    return 1;
  }

  v4 = a1 + 1;
  if (v4 == 5)
  {
    return 1;
  }

  return !(*((swift_isaMask & *v1) + 0x4F8))() && v4 == 6;
}

id sub_100AB346C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v3 = **(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = *(v3 + 840);

    v7 = v5(v6);

    v8 = [v7 bezierPath];

    LOBYTE(v7) = [v8 isLineSegment];
    if (v7)
    {
      return 0;
    }

    v9 = **(v1 + v2);
    result = swift_conformsToProtocol2();
    if (result)
    {
      v10 = *(v9 + 840);

      v12 = v10(v11);

      v13 = [v12 bezierPath];

      LOBYTE(v12) = [v13 isLineSegment];
      if ((v12 & 1) == 0)
      {
        v14 = *(**(v1 + v2) + 296);

        v16 = v14(v15);

        v17 = [v16 widthValid];

        if (v17)
        {
          v18 = *(**(v1 + v2) + 296);

          v20 = v18(v19);

          v21 = [v20 heightValid];

          return v21;
        }
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100AB3714(void *a1, uint64_t a2, unint64_t *a3, void *a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  v11 = sub_100C349A0();

  if (v11)
  {
    v12 = a3;
    v13 = a4;
  }

  else
  {
    v12 = a5;
    v13 = a6;
  }

  sub_100006370(0, v12, v13);

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_100AB37B8()
{
  v0 = _s13ShapeExporterCMa();
  sub_100AB785C(&qword_101A0F3F0, _s13ShapeExporterCMa, byte_10147F9E8);
  return v0;
}

char *sub_100AB381C()
{
  v1 = v0;
  type metadata accessor for CRLWPShapeItemData(0);
  v2 = *(*swift_dynamicCastClassUnconditional() + 504);

  v3 = v2(0);

  v4 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v5 = objc_allocWithZone(type metadata accessor for CRLWPShapeItem(0));
  return sub_100AB0A4C(v4, v3);
}

uint64_t sub_100AB3908(uint64_t a1)
{
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v48 - v6;
  v8 = sub_1005B981C(&qword_101A0F380, &qword_101492A90);
  __chkstk_darwin(v8 - 8);
  v10 = v48 - v9;
  type metadata accessor for CRLWPShapeItem(0);
  if (swift_dynamicCastClass())
  {
    v48[0] = a1;
    swift_unknownObjectRetain();
    v11 = sub_1011F0C64();
    type metadata accessor for CRLWPShapeItemData(0);
    v12 = *swift_dynamicCastClassUnconditional();
    (*(v12 + 896))();
    v13 = *swift_dynamicCastClassUnconditional();
    (*(v13 + 896))();
    sub_100AB785C(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData, "90<");
    CRStruct_4.actionUndoingDifference(from:)();
    sub_100AB78F8(v4, type metadata accessor for CRLWPShapeItemCRDTData);
    sub_100AB78F8(v7, type metadata accessor for CRLWPShapeItemCRDTData);
    v14 = sub_1005B981C(&qword_101A0F388, &qword_101492A98);
    if ((*(*(v14 - 1) + 48))(v10, 1, v14) == 1)
    {
      sub_10000CAAC(v10, &qword_101A0F380, &qword_101492A90);
      v49 = 0uLL;
      v50 = 0;
      v51 = 1;
    }

    else
    {
      v15 = v14[12];
      v16 = v14[16];
      v17 = v14[20];
      v51 = v14;
      v18 = sub_10002C58C(&v49);
      v19 = v14[12];
      v20 = v14[16];
      v21 = v14[20];
      sub_10003DFF8(v10, v18, &qword_101A0F3D0, &qword_1014950A0);
      sub_10003DFF8(&v10[v15], v18 + v19, &qword_101A0F3D8, &qword_101492AC0);
      sub_10003DFF8(&v10[v16], v18 + v20, &qword_101A0F3E0, &qword_101492AC8);
      sub_10003DFF8(&v10[v17], v18 + v21, &qword_101A0F3E8, &unk_101492AD0);
    }

    swift_beginAccess();
    sub_100BC1DF4(&v49, 5);
    swift_endAccess();
    swift_unknownObjectRelease();
    return v11;
  }

  else
  {
    v23 = objc_opt_self();
    v24 = [v23 _atomicIncrementAssertCount];
    v49.n128_u64[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v49, "Tried to generate undo from mismatched type", 43, 2u);
    StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeItem.swift", 85, 2);
    v26 = String._bridgeToObjectiveC()();

    v27 = [v26 lastPathComponent];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v31 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v24;
    v33 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v33;
    v34 = sub_1005CF04C();
    *(inited + 104) = v34;
    *(inited + 72) = v25;
    *(inited + 136) = &type metadata for String;
    v35 = sub_1000053B0();
    *(inited + 112) = v28;
    *(inited + 120) = v30;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v35;
    *(inited + 152) = 322;
    v36 = v49.n128_u64[0];
    *(inited + 216) = v33;
    *(inited + 224) = v34;
    *(inited + 192) = v36;
    v37 = v25;
    v38 = v36;
    v39 = static os_log_type_t.error.getter();
    sub_100005404(v31, &_mh_execute_header, v39, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v40 = static os_log_type_t.error.getter();
    sub_100005404(v31, &_mh_execute_header, v40, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
    type metadata accessor for __VaListBuilder();
    v41 = swift_allocObject();
    v41[2] = 8;
    v41[3] = 0;
    v41[4] = 0;
    v41[5] = 0;
    v42 = __VaListBuilder.va_list()();
    StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeItem.swift", 85, 2);
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Tried to generate undo from mismatched type", 43, 2);
    v45 = String._bridgeToObjectiveC()();

    [v23 handleFailureInFunction:v43 file:v44 lineNumber:322 isFatal:1 format:v45 args:v42];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v46, v47);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *sub_100AB4060(uint64_t a1)
{
  v109 = sub_1005B981C(&qword_101A0F398, &qword_101492AA0);
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v105 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v104 = &v102 - v4;
  __chkstk_darwin(v5);
  v103 = &v102 - v6;
  __chkstk_darwin(v7);
  v106 = &v102 - v8;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v102 - v13;
  v15 = sub_1005B981C(&unk_101A0F3A0, &qword_101492AA8);
  __chkstk_darwin(v15 - 8);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v102 - v19;
  type metadata accessor for CRLWPShapeItem(0);
  if (swift_dynamicCastClass())
  {
    v108 = a1;
    swift_unknownObjectRetain();
    v110 = sub_100EB663C();
    type metadata accessor for CRLWPShapeItemData(0);
    v21 = *swift_dynamicCastClassUnconditional();
    (*(v21 + 896))();
    v22 = *swift_dynamicCastClassUnconditional();
    (*(v22 + 896))();
    sub_100AB785C(&qword_1019F7E60, type metadata accessor for CRLWPShapeItemCRDTData, "Y0<");
    CRType.observableDifference(from:)();
    sub_100AB78F8(v11, type metadata accessor for CRLWPShapeItemCRDTData);
    sub_100AB78F8(v14, type metadata accessor for CRLWPShapeItemCRDTData);
    sub_10000BE14(v20, v17, &unk_101A0F3A0, &qword_101492AA8);
    v23 = v109;
    if ((*(v107 + 48))(v17, 1, v109) == 1)
    {
      sub_10000CAAC(v17, &unk_101A0F3A0, &qword_101492AA8);
      v24 = _swiftEmptyArrayStorage;
      v25 = v110;
      if (!_swiftEmptyArrayStorage[2])
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    v26 = v106;
    sub_10003DFF8(v17, v106, &qword_101A0F398, &qword_101492AA0);
    v27 = v103;
    sub_10000BE14(v26, v103, &qword_101A0F398, &qword_101492AA0);
    v28 = v23[12];
    v29 = v23[16];
    v30 = v23[20];
    v31 = sub_1005B981C(&unk_101A0F3B0, &unk_101495080);
    if ((*(*(v31 - 8) + 48))(v27, 1, v31) == 1)
    {
      sub_10000CAAC(v27 + v30, &qword_101A01F00, &unk_101492AB0);
      sub_10000CAAC(v27 + v29, &qword_101A0F338, &qword_101492A58);
      sub_10000CAAC(v27 + v28, &qword_101A0F328, &qword_101492A48);
      sub_10000CAAC(v27, &unk_101A0F3C0, &unk_101495090);
      v25 = v110;
      v32 = v105;
    }

    else
    {
      sub_10000CAAC(v27, &unk_101A0F3C0, &unk_101495090);
      sub_10000CAAC(v27 + v30, &qword_101A01F00, &unk_101492AB0);
      sub_10000CAAC(v27 + v29, &qword_101A0F338, &qword_101492A58);
      sub_10000CAAC(v27 + v28, &qword_101A0F328, &qword_101492A48);
      v25 = v110;
      v33 = v104;
      v32 = v105;
      if (*(v110 + 16))
      {
        sub_1007C8124(5);
        if (v34)
        {
LABEL_13:
          sub_10000BE14(v26, v33, &qword_101A0F398, &qword_101492AA0);
          v56 = v23[12];
          v57 = v23[16];
          v58 = v23;
          v59 = v23[20];
          v60 = sub_1005B981C(&qword_101A0F330, &qword_101492A50);
          if ((*(*(v60 - 8) + 48))(v33 + v56, 1, v60) == 1)
          {
            sub_10000CAAC(v33 + v59, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v33 + v57, &qword_101A0F338, &qword_101492A58);
            sub_10000CAAC(v33 + v56, &qword_101A0F328, &qword_101492A48);
            sub_10000CAAC(v33, &unk_101A0F3C0, &unk_101495090);
            v24 = _swiftEmptyArrayStorage;
          }

          else
          {
            sub_10000CAAC(v33 + v56, &qword_101A0F328, &qword_101492A48);
            sub_10000CAAC(v33 + v59, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v33 + v57, &qword_101A0F338, &qword_101492A58);
            sub_10000CAAC(v33, &unk_101A0F3C0, &unk_101495090);
            v24 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
            v62 = *(v24 + 2);
            v61 = *(v24 + 3);
            if (v62 >= v61 >> 1)
            {
              v24 = sub_100024CBC((v61 > 1), v62 + 1, 1, v24);
            }

            *(v24 + 2) = v62 + 1;
            v63 = &v24[16 * v62];
            *(v63 + 4) = 0xD000000000000013;
            *(v63 + 5) = 0x8000000101586880;
          }

          sub_10000BE14(v26, v32, &qword_101A0F398, &qword_101492AA0);
          v64 = v58[12];
          v65 = v58[16];
          v66 = v58[20];
          v67 = sub_1005B981C(&unk_101A0F340, &qword_101492A60);
          if ((*(*(v67 - 8) + 48))(v32 + v65, 1, v67) == 1)
          {
            sub_10000CAAC(v26, &qword_101A0F398, &qword_101492AA0);
            sub_10000CAAC(v32 + v66, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v32 + v65, &qword_101A0F338, &qword_101492A58);
            sub_10000CAAC(v32 + v64, &qword_101A0F328, &qword_101492A48);
            sub_10000CAAC(v32, &unk_101A0F3C0, &unk_101495090);
            if (!*(v24 + 2))
            {
LABEL_30:
              sub_10000CAAC(v20, &unk_101A0F3A0, &qword_101492AA8);

              swift_unknownObjectRelease();
              return v25;
            }
          }

          else
          {
            sub_10000CAAC(v32 + v65, &qword_101A0F338, &qword_101492A58);
            sub_10000CAAC(v32 + v66, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v32 + v64, &qword_101A0F328, &qword_101492A48);
            sub_10000CAAC(v32, &unk_101A0F3C0, &unk_101495090);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_100024CBC(0, *(v24 + 2) + 1, 1, v24);
            }

            v74 = *(v24 + 2);
            v73 = *(v24 + 3);
            if (v74 >= v73 >> 1)
            {
              v24 = sub_100024CBC((v73 > 1), v74 + 1, 1, v24);
            }

            sub_10000CAAC(v26, &qword_101A0F398, &qword_101492AA0);
            *(v24 + 2) = v74 + 1;
            v75 = &v24[16 * v74];
            *(v75 + 4) = 0xD000000000000010;
            *(v75 + 5) = 0x8000000101586860;
            if (!*(v24 + 2))
            {
              goto LABEL_30;
            }
          }

LABEL_20:
          if (v25[2] && (v68 = sub_1007C8124(5), (v69 & 1) != 0))
          {
            v112[0] = *(v25[7] + 8 * v68);

            sub_100798D48(v24);
            v70 = v112[0];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v111 = v25;
            sub_100A9B080(v70, 5, isUniquelyReferenced_nonNull_native);
            swift_unknownObjectRelease();
            v25 = v111;
          }

          else
          {
            v72 = swift_isUniquelyReferenced_nonNull_native();
            v112[0] = v25;
            sub_100A9B080(v24, 5, v72);
            swift_unknownObjectRelease();
            v25 = v112[0];
          }

          sub_10000CAAC(v20, &unk_101A0F3A0, &qword_101492AA8);
          return v25;
        }
      }

      v103 = v20;
      v102 = objc_opt_self();
      LODWORD(v107) = [v102 _atomicIncrementAssertCount];
      v112[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v112, "If superData has changed, super should have built keys for it already.", 70, 2u);
      StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
      v35 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeItem.swift", 85, 2);
      v36 = String._bridgeToObjectiveC()();

      v37 = [v36 lastPathComponent];

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v41 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v107;
      v43 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v43;
      v44 = sub_1005CF04C();
      *(inited + 104) = v44;
      *(inited + 72) = v35;
      *(inited + 136) = &type metadata for String;
      v45 = sub_1000053B0();
      *(inited + 112) = v38;
      *(inited + 120) = v40;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v45;
      *(inited + 152) = 343;
      v46 = v112[0];
      *(inited + 216) = v43;
      *(inited + 224) = v44;
      *(inited + 192) = v46;
      v47 = v35;
      v48 = v46;
      v49 = static os_log_type_t.error.getter();
      sub_100005404(v41, &_mh_execute_header, v49, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v50 = static os_log_type_t.error.getter();
      sub_100005404(v41, &_mh_execute_header, v50, "If superData has changed, super should have built keys for it already.", 70, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v51 = swift_allocObject();
      v51[2] = 8;
      v51[3] = 0;
      v51[4] = 0;
      v51[5] = 0;
      v52 = __VaListBuilder.va_list()();
      StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
      v53 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeItem.swift", 85, 2);
      v54 = String._bridgeToObjectiveC()();

      StaticString.description.getter("If superData has changed, super should have built keys for it already.", 70, 2);
      v55 = String._bridgeToObjectiveC()();

      [v102 handleFailureInFunction:v53 file:v54 lineNumber:343 isFatal:0 format:v55 args:v52];

      v20 = v103;
      v23 = v109;
      v25 = v110;
      v32 = v105;
      v26 = v106;
    }

    v33 = v104;
    goto LABEL_13;
  }

  v77 = objc_opt_self();
  v78 = [v77 _atomicIncrementAssertCount];
  v112[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v112, "Tried to create observable deltas from mismatched type", 54, 2u);
  StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
  v79 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeItem.swift", 85, 2);
  v80 = String._bridgeToObjectiveC()();

  v81 = [v80 lastPathComponent];

  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v85 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v86 = swift_initStackObject();
  *(v86 + 16) = xmmword_10146CA70;
  *(v86 + 56) = &type metadata for Int32;
  *(v86 + 64) = &protocol witness table for Int32;
  *(v86 + 32) = v78;
  v87 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v86 + 96) = v87;
  v88 = sub_1005CF04C();
  *(v86 + 104) = v88;
  *(v86 + 72) = v79;
  *(v86 + 136) = &type metadata for String;
  v89 = sub_1000053B0();
  *(v86 + 112) = v82;
  *(v86 + 120) = v84;
  *(v86 + 176) = &type metadata for UInt;
  *(v86 + 184) = &protocol witness table for UInt;
  *(v86 + 144) = v89;
  *(v86 + 152) = 334;
  v90 = v112[0];
  *(v86 + 216) = v87;
  *(v86 + 224) = v88;
  *(v86 + 192) = v90;
  v91 = v79;
  v92 = v90;
  v93 = static os_log_type_t.error.getter();
  sub_100005404(v85, &_mh_execute_header, v93, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v86);

  v94 = static os_log_type_t.error.getter();
  sub_100005404(v85, &_mh_execute_header, v94, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
  type metadata accessor for __VaListBuilder();
  v95 = swift_allocObject();
  v95[2] = 8;
  v95[3] = 0;
  v95[4] = 0;
  v95[5] = 0;
  v96 = __VaListBuilder.va_list()();
  StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
  v97 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeItem.swift", 85, 2);
  v98 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Tried to create observable deltas from mismatched type", 54, 2);
  v99 = String._bridgeToObjectiveC()();

  [v77 handleFailureInFunction:v97 file:v98 lineNumber:334 isFatal:1 format:v99 args:v96];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v100, v101);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100AB5170(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A0F380, &qword_101492A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_1005B981C(&qword_101A0F388, &qword_101492A98);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  sub_1009B611C(a1);
  if (!v1)
  {
    v13 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values;
    swift_beginAccess();
    v14 = *(a1 + v13);
    if (*(v14 + 16))
    {

      v15 = sub_1007C8124(5);
      if (v16)
      {
        sub_10000BE14(*(v14 + 56) + 32 * v15, &v27, &unk_1019F4D00, &unk_10146E7F0);

        v29[0] = v27;
        v29[1] = v28;
        if (*(&v28 + 1))
        {
          v17 = swift_dynamicCast();
          v18 = *(v10 + 56);
          v18(v8, v17 ^ 1u, 1, v9);
          if ((*(v10 + 48))(v8, 1, v9) != 1)
          {
            sub_10003DFF8(v8, v12, &qword_101A0F388, &qword_101492A98);
            type metadata accessor for CRLWPShapeItemData(0);
            v19 = v18;
            v20 = swift_dynamicCastClassUnconditional();
            sub_10000BE14(v12, v5, &qword_101A0F388, &qword_101492A98);
            v19(v5, 0, 1, v9);
            v21 = *(*v20 + 912);

            v22 = v21(v29);
            type metadata accessor for CRLWPShapeItemCRDTData(0);
            sub_100AB785C(&qword_101A0F390, type metadata accessor for CRLWPShapeItemCRDTData, "90<");
            CRStruct_4.apply(_:)();
            sub_10000CAAC(v5, &qword_101A0F380, &qword_101492A90);
            v22(v29, 0);

            v23 = v12;
            v24 = &qword_101A0F388;
            v25 = &qword_101492A98;
LABEL_11:
            sub_10000CAAC(v23, v24, v25);
            return;
          }

LABEL_10:
          v24 = &qword_101A0F380;
          v25 = &qword_101492A90;
          v23 = v8;
          goto LABEL_11;
        }

        sub_10000CAAC(v29, &unk_1019F4D00, &unk_10146E7F0);
      }

      else
      {
      }
    }

    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_10;
  }
}

void sub_100AB5588(char *a1, uint64_t a2, int a3, uint64_t a4, ProtocolDescriptor *a5)
{
  v204 = a1;
  LODWORD(v198) = a3;
  *&v202 = a2;
  v7 = sub_1005B981C(&qword_101A0F320, &qword_101492A40);
  __chkstk_darwin(v7 - 8);
  v9 = v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v166 - v11;
  v186 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v186);
  v185 = v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v184 = v166 - v15;
  v16 = sub_1005B981C(&qword_101A0F328, &qword_101492A48);
  __chkstk_darwin(v16 - 8);
  v183 = v166 - v17;
  v18 = sub_1005B981C(&qword_101A0F330, &qword_101492A50);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v177 = v166 - v23;
  __chkstk_darwin(v24);
  v181 = v166 - v25;
  v196 = type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
  __chkstk_darwin(v196);
  v192 = v166 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v191 = v166 - v28;
  v201 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v201);
  v182 = v166 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = v166 - v31;
  __chkstk_darwin(v33);
  v197 = v166 - v34;
  v35 = sub_1005B981C(&qword_101A0F338, &qword_101492A58);
  __chkstk_darwin(v35 - 8);
  v190 = v166 - v36;
  v200 = sub_1005B981C(&unk_101A0F340, &qword_101492A60);
  v37 = *(v200 - 8);
  __chkstk_darwin(v200);
  v189 = v166 - v38;
  type metadata accessor for CRLWPShapeItem(0);
  v39 = swift_dynamicCastClass();
  if (!v39)
  {
    return;
  }

  v174 = v9;
  v40 = *(v39 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  v199 = type metadata accessor for CRLWPShapeItemData(0);
  v194 = swift_dynamicCastClassUnconditional();
  v41 = v198;
  if (v198 != 5)
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();

    sub_100C38590(v204, v202, v41, a4, v203, ObjectType, a5);
    swift_unknownObjectRelease();

    return;
  }

  v166[0] = a5;
  v195 = *(v202 + 16);
  v167 = a4;
  v166[2] = v40;
  if (!v195)
  {
    swift_unknownObjectRetain();

    v178 = _swiftEmptyArrayStorage;
LABEL_96:
    v163 = v178;
    if (*(v178 + 2))
    {
      v164 = v167;
      v165 = swift_getObjectType();
      sub_100C38590(v204, v163, 5, v164, v203, v165, v166[0]);
    }

    swift_unknownObjectRelease();

    return;
  }

  v168 = v21;
  v180 = v18;
  v169 = v12;
  v42 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v175 = OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage;
  v193 = v202 + 32;
  v198 = 0x8000000101586860;
  v187 = 0x8000000101586880;
  v176 = (v19 + 48);
  v188 = (v37 + 48);
  swift_unknownObjectRetain();

  v43 = 0;
  v178 = _swiftEmptyArrayStorage;
  v179 = v32;
  while (1)
  {
    v47 = (v193 + 16 * v43);
    v48 = *v47;
    v49 = v47[1];
    v50 = *v47 == 0xD000000000000010 && v198 == v49;
    if (!v50 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

    v51 = swift_dynamicCastClassUnconditional();
    v52 = v197;
    (*(*v51 + 896))(v51, v53, v54);
    v55 = v201;
    v56 = v191;
    sub_100AB77F4(v52 + *(v201 + 24), v191, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
    v57 = sub_100AB78F8(v52, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(*v194 + 896))(v57);
    v58 = &v32[*(v55 + 24)];
    v59 = v192;
    sub_100AB77F4(v58, v192, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
    sub_100AB78F8(v32, type metadata accessor for CRLWPShapeItemCRDTData);
    sub_100AB785C(&unk_101A0F360, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData, byte_101470C94);
    v60 = v190;
    CRType.observableDifference(from:)();
    sub_100AB78F8(v59, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
    sub_100AB78F8(v56, type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData);
    if ((*v188)(v60, 1, v200) == 1)
    {
      v44 = v60;
      v45 = &qword_101A0F338;
      v46 = &qword_101492A58;
    }

    else
    {
      v61 = v189;
      sub_10003DFF8(v60, v189, &unk_101A0F340, &qword_101492A60);
      v62 = type metadata accessor for CRValueObservableDifference();
      v63 = *(*(v62 - 8) + 48);
      if (v63(v61, 1, v62) != 1)
      {
        v64 = swift_dynamicCastClassUnconditional();
        v65 = v197;
        (*(*v64 + 896))(v64, v66, v67);
        sub_1005B981C(&unk_101A0D9C0, "@0$");
        CRRegister.wrappedValue.getter();
        sub_100AB78F8(v65, type metadata accessor for CRLWPShapeItemCRDTData);
        v210 = &type metadata for Float;
        sub_10000BE14(&v208, &v206, &unk_1019F4D00, &unk_10146E7F0);
        swift_beginAccess();
        sub_100BC1F00(&v206, 33);
        v61 = v189;
        swift_endAccess();
        sub_10000CAAC(&v208, &unk_1019F4D00, &unk_10146E7F0);
      }

      if (v63(v61 + *(v200 + 48), 1, v62) != 1)
      {
        v68 = swift_dynamicCastClassUnconditional();
        v69 = v182;
        (*(*v68 + 896))(v68, v70, v71);
        sub_1005B981C(&unk_101A0F370, &unk_1014708C0);
        CRRegister.wrappedValue.getter();
        v72 = v69;
        v32 = v179;
        sub_100AB78F8(v72, type metadata accessor for CRLWPShapeItemCRDTData);
        if (v209)
        {
          v73 = 0;
        }

        else
        {
          v73 = v208;
        }

        type metadata accessor for CRLWPVerticalAlignment(0);
        v210 = v74;
        v208 = v73;
        sub_10000BE14(&v208, &v206, &unk_1019F4D00, &unk_10146E7F0);
        swift_beginAccess();
        sub_100BC1F00(&v206, 34);
        v61 = v189;
        swift_endAccess();
        sub_10000CAAC(&v208, &unk_1019F4D00, &unk_10146E7F0);
      }

      if (v63(v61 + *(v200 + 64), 1, v62) != 1)
      {
        v87 = swift_dynamicCastClassUnconditional();
        v88 = v197;
        (*(*v87 + 896))(v87, v89, v90);
        sub_1005B981C(&qword_101A2C810, &unk_101480B50);
        CRRegister.wrappedValue.getter();
        sub_100AB78F8(v88, type metadata accessor for CRLWPShapeItemCRDTData);
        v210 = &type metadata for Bool;
        sub_10000BE14(&v208, &v206, &unk_1019F4D00, &unk_10146E7F0);
        swift_beginAccess();
        sub_100BC1F00(&v206, 35);
        swift_endAccess();
        sub_10000CAAC(&v208, &unk_1019F4D00, &unk_10146E7F0);
      }

      v44 = v61;
      v45 = &unk_101A0F340;
      v46 = &qword_101492A60;
    }

    sub_10000CAAC(v44, v45, v46);
LABEL_7:
    if (++v43 == v195)
    {
      goto LABEL_96;
    }
  }

  v75 = v48 == 0xD000000000000013 && v187 == v49;
  if (!v75 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v178 = sub_100024CBC(0, *(v178 + 2) + 1, 1, v178);
    }

    v100 = *(v178 + 2);
    v99 = *(v178 + 3);
    if (v100 >= v99 >> 1)
    {
      v178 = sub_100024CBC((v99 > 1), v100 + 1, 1, v178);
    }

    v101 = v178;
    *(v178 + 2) = v100 + 1;
    v102 = &v101[16 * v100];
    *(v102 + 4) = v48;
    *(v102 + 5) = v49;
    goto LABEL_7;
  }

  v76 = swift_dynamicCastClassUnconditional();
  v77 = v197;
  (*(*v76 + 896))(v76, v78, v79);
  v80 = v201;
  v81 = v184;
  sub_100AB77F4(v77 + *(v201 + 20), v184, type metadata accessor for CRLWPStorageCRDTData);
  v82 = sub_100AB78F8(v77, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(*v194 + 896))(v82);
  v83 = &v32[*(v80 + 20)];
  v84 = v185;
  sub_100AB77F4(v83, v185, type metadata accessor for CRLWPStorageCRDTData);
  sub_100AB78F8(v32, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_100AB785C(&qword_101A0D160, type metadata accessor for CRLWPStorageCRDTData, byte_10148F2F0);
  v85 = v183;
  CRType.observableDifference(from:)();
  sub_100AB78F8(v84, type metadata accessor for CRLWPStorageCRDTData);
  sub_100AB78F8(v81, type metadata accessor for CRLWPStorageCRDTData);
  v86 = v180;
  if ((*v176)(v85, 1, v180) == 1)
  {
    sub_10000CAAC(v85, &qword_101A0F328, &qword_101492A48);
LABEL_78:
    v153 = *(v203 + v175);
    if (!v153)
    {
      goto LABEL_105;
    }

    *(v153 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) = 0;
    *(v153 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges) = 0;
    *(v153 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns) = 0;
    goto LABEL_7;
  }

  v91 = v85;
  v92 = v181;
  sub_10003DFF8(v91, v181, &qword_101A0F330, &qword_101492A50);
  v93 = v177;
  sub_10000BE14(v92, v177, &qword_101A0F330, &qword_101492A50);
  *&v202 = *(v86 + 48);
  v94 = v169;
  sub_10003DFF8(v93, v169, &qword_101A0F320, &qword_101492A40);
  v95 = sub_1005B981C(&qword_101A0F350, &qword_101492A68);
  v96 = *(v95 - 8);
  v97 = *(v96 + 48);
  v172 = v96 + 48;
  v171 = v97;
  v98 = v97(v94, 1, v95);
  v173 = v95;
  v170 = v96;
  if (v98 == 1)
  {
    sub_10000CAAC(v93 + v202, &qword_101A0F320, &qword_101492A40);
    sub_10000CAAC(v94, &qword_101A0F320, &qword_101492A40);
  }

  else
  {
    v103 = CRAttributedString.ObservableDifference.edits.getter();
    (*(v96 + 8))(v94, v95);
    sub_10000CAAC(v93 + v202, &qword_101A0F320, &qword_101492A40);
    v104 = *(v103 + 16);
    v166[1] = v103;
    if (v104)
    {
      v105 = (v103 + 56);
      v106 = _swiftEmptyArrayStorage;
      v107 = _swiftEmptyArrayStorage;
      do
      {
        v202 = *(v105 - 24);
        v156 = *(v105 - 1);
        v157 = *v105;
        if (v157 == 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v107 = sub_100B362F8(0, *(v107 + 2) + 1, 1, v107);
          }

          v159 = *(v107 + 2);
          v158 = *(v107 + 3);
          v160 = v159 + 1;
          if (v159 >= v158 >> 1)
          {
            v154 = sub_100B362F8((v158 > 1), v159 + 1, 1, v107);
            v107 = v154;
          }

          else
          {
            v154 = v107;
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v106 = sub_100B362F8(0, *(v106 + 2) + 1, 1, v106);
          }

          v159 = *(v106 + 2);
          v161 = *(v106 + 3);
          v160 = v159 + 1;
          if (v159 >= v161 >> 1)
          {
            v154 = sub_100B362F8((v161 > 1), v159 + 1, 1, v106);
            v106 = v154;
          }

          else
          {
            v154 = v106;
          }
        }

        *(v154 + 2) = v160;
        v155 = &v154[32 * v159];
        *(v155 + 2) = v202;
        *(v155 + 6) = v156;
        v155[56] = v157;
        v105 += 32;
        --v104;
      }

      while (v104);
    }

    else
    {
      v106 = _swiftEmptyArrayStorage;
      v107 = _swiftEmptyArrayStorage;
    }

    if (*(v107 + 2))
    {
      v210 = sub_1005B981C(&unk_101A27FA0, &unk_101492A80);
      v208 = v107;
      sub_10000BE14(&v208, &v206, &unk_1019F4D00, &unk_10146E7F0);
      swift_beginAccess();
      sub_100BC1F00(&v206, 29);
      swift_endAccess();
      sub_10000CAAC(&v208, &unk_1019F4D00, &unk_10146E7F0);
    }

    else
    {
    }

    if (*(v106 + 2))
    {
      v210 = sub_1005B981C(&unk_101A27FA0, &unk_101492A80);
      v208 = v106;
      sub_10000BE14(&v208, &v206, &unk_1019F4D00, &unk_10146E7F0);
      swift_beginAccess();
      sub_100BC1F00(&v206, 30);
      swift_endAccess();
      sub_10000CAAC(&v208, &unk_1019F4D00, &unk_10146E7F0);
    }

    else
    {
    }

    v92 = v181;
  }

  v108 = v168;
  sub_10000BE14(v92, v168, &qword_101A0F330, &qword_101492A50);
  v109 = v174;
  sub_10003DFF8(v108 + *(v180 + 48), v174, &qword_101A0F320, &qword_101492A40);
  v110 = v173;
  if (v171(v109, 1, v173) == 1)
  {
    sub_10000CAAC(v92, &qword_101A0F330, &qword_101492A50);
    sub_10000CAAC(v108, &qword_101A0F320, &qword_101492A40);
    v111 = v109;
    v112 = &qword_101A0F320;
    v113 = &qword_101492A40;
LABEL_77:
    sub_10000CAAC(v111, v112, v113);
    v32 = v179;
    goto LABEL_78;
  }

  v114 = CRAttributedString.ObservableDifference.edits.getter();
  (*(v170 + 8))(v109, v110);
  sub_10000CAAC(v108, &qword_101A0F320, &qword_101492A40);
  v115 = *(v114 + 16);
  if (!v115)
  {
LABEL_76:

    v111 = v181;
    v112 = &qword_101A0F330;
    v113 = &qword_101492A50;
    goto LABEL_77;
  }

  v116 = 0;
  v117 = (v114 + 56);
  while (2)
  {
    if (v116 < *(v114 + 16))
    {
      v119 = *(v117 - 3);
      v118 = *(v117 - 2);
      v120 = *(v117 - 1);
      if (*v117 == 1)
      {
        v210 = sub_1005B981C(&qword_101A0F358, &unk_101492A70);
        v121 = swift_allocObject();
        v208 = v121;
        *(v121 + 16) = v119;
        *(v121 + 24) = v118;
        *(v121 + 32) = v120;
        *(v121 + 40) = 1;
        v122 = v204;
        swift_beginAccess();
        sub_10000BE14(&v208, &v206, &unk_1019F4D00, &unk_10146E7F0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v205 = *&v122[v42];
        v124 = v205;
        *&v122[v42] = 0x8000000000000000;
        v125 = sub_1007CF108();
        v127 = v124[2];
        v128 = (v126 & 1) == 0;
        v129 = __OFADD__(v127, v128);
        v130 = v127 + v128;
        if (v129)
        {
          goto LABEL_102;
        }

        v131 = v126;
        if (v124[3] >= v130)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v151 = v125;
            sub_100AA3EA4();
            v125 = v151;
          }
        }

        else
        {
          sub_100A890C0(v130, isUniquelyReferenced_nonNull_native);
          v125 = sub_1007CF108();
          if ((v131 & 1) != (v132 & 1))
          {
            goto LABEL_106;
          }
        }

        v143 = v205;
        if ((v131 & 1) == 0)
        {
          v205[(v125 >> 6) + 8] |= 1 << v125;
          *(v143[6] + 8 * v125) = 31;
          v144 = v143[7] + 32 * v125;
          v145 = v207;
          *v144 = v206;
          *(v144 + 16) = v145;
          v146 = v143[2];
          v129 = __OFADD__(v146, 1);
          v147 = v146 + 1;
          if (v129)
          {
            goto LABEL_104;
          }

          goto LABEL_75;
        }

LABEL_53:
        sub_10002C638(&v206, v143[7] + 32 * v125, &unk_1019F4D00, &unk_10146E7F0);
      }

      else
      {
        v210 = sub_1005B981C(&qword_101A0F358, &unk_101492A70);
        v133 = swift_allocObject();
        v208 = v133;
        *(v133 + 16) = v119;
        *(v133 + 24) = v118;
        *(v133 + 32) = v120;
        *(v133 + 40) = 0;
        v134 = v204;
        swift_beginAccess();
        sub_10000BE14(&v208, &v206, &unk_1019F4D00, &unk_10146E7F0);
        v135 = swift_isUniquelyReferenced_nonNull_native();
        v205 = *&v134[v42];
        v136 = v205;
        *&v134[v42] = 0x8000000000000000;
        v125 = sub_1007CF108();
        v138 = v136[2];
        v139 = (v137 & 1) == 0;
        v129 = __OFADD__(v138, v139);
        v140 = v138 + v139;
        if (v129)
        {
          goto LABEL_101;
        }

        v141 = v137;
        if (v136[3] >= v140)
        {
          if ((v135 & 1) == 0)
          {
            v152 = v125;
            sub_100AA3EA4();
            v125 = v152;
          }
        }

        else
        {
          sub_100A890C0(v140, v135);
          v125 = sub_1007CF108();
          if ((v141 & 1) != (v142 & 1))
          {
            goto LABEL_106;
          }
        }

        v143 = v205;
        if (v141)
        {
          goto LABEL_53;
        }

        v205[(v125 >> 6) + 8] |= 1 << v125;
        *(v143[6] + 8 * v125) = 32;
        v148 = v143[7] + 32 * v125;
        v149 = v207;
        *v148 = v206;
        *(v148 + 16) = v149;
        v150 = v143[2];
        v129 = __OFADD__(v150, 1);
        v147 = v150 + 1;
        if (v129)
        {
          goto LABEL_103;
        }

LABEL_75:
        v143[2] = v147;
      }

      *&v204[v42] = v143;
      swift_endAccess();
      sub_10000CAAC(&v208, &unk_1019F4D00, &unk_10146E7F0);
      ++v116;
      v117 += 32;
      if (v115 == v116)
      {
        goto LABEL_76;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  type metadata accessor for CRLChangeProperty(0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

char *sub_100AB6F14()
{
  v1 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1009B4F54();
  v12 = result;
  v13 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v13)
  {
    return v12;
  }

  v14 = *&v13[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v14)
  {
    (*(*v14 + 896))();
    sub_100AB77F4(&v7[*(v5 + 20)], v10, type metadata accessor for CRLWPStorageCRDTData);
    v15 = v13;
    sub_100AB78F8(v7, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v2 + 16))(v4, v10, v1);
    sub_100AB78F8(v10, type metadata accessor for CRLWPStorageCRDTData);
    v16 = CRAttributedString.attributedString.getter();
    (*(v2 + 8))(v4, v1);
    v17 = [v16 string];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100024CBC(0, *(v12 + 2) + 1, 1, v12);
      }

      v23 = *(v12 + 2);
      v22 = *(v12 + 3);
      if (v23 >= v22 >> 1)
      {
        v12 = sub_100024CBC((v22 > 1), v23 + 1, 1, v12);
      }

      *(v12 + 2) = v23 + 1;
      v24 = &v12[16 * v23];
      *(v24 + 4) = v18;
      *(v24 + 5) = v20;
    }

    else
    {
    }

    return v12;
  }

  __break(1u);
  return result;
}

id sub_100AB7244()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPShapeItem(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLWPShapeItem(uint64_t a1)
{
  result = qword_101A0F308;
  if (!qword_101A0F308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100AB73DC(void *a1)
{
  type metadata accessor for CRLBoardItemSelection();
  result = [a1 mostSpecificSelectionOfClass:swift_getObjCClassFromMetadata()];
  if (result)
  {
    v4 = result;
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems;
      v8 = *(v5 + OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems);
      if ((v8 & 0xC000000000000001) != 0)
      {

        v9 = __CocoaSet.count.getter();

        if (v9 != 1)
        {
          goto LABEL_13;
        }
      }

      else if (*(v8 + 16) != 1)
      {
        goto LABEL_13;
      }

      v10 = *(v6 + v7);

      v11 = sub_10079DB40(v1, v10);

      if (v11)
      {
        sub_100006370(0, &qword_1019FFDF0, off_10182F9F8);
        v12 = [a1 mostSpecificSelectionOfClass:swift_getObjCClassFromMetadata()];
        if (v12)
        {
          v13 = v12;
          objc_opt_self();
          v14 = swift_dynamicCastObjCClass();
          if (v14)
          {
            v15 = [a1 indexForSelection:v14];
            v16 = [a1 indexForSelection:v6];

            if (v16 < v15)
            {
              v17 = *&v1[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
              if (v17)
              {
                v18 = *&v1[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
                v19 = v17;
                return v18;
              }
            }
          }

          else
          {
          }

          return 0;
        }
      }
    }

LABEL_13:

    return 0;
  }

  return result;
}

id sub_100AB7704()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v1)
  {
    return [objc_allocWithZone(NSEnumerator) init];
  }

  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 arrayWithObject:v3];
  v5 = [v4 objectEnumerator];

  return v5;
}

uint64_t sub_100AB77F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100AB785C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_100AB78A4()
{
  result = qword_101A0F3F8;
  if (!qword_101A0F3F8)
  {
    result = swift_getWitnessTable(byte_1014C4C40, &type metadata for CRLWPShapePresetData, v0, v1);
    atomic_store(result, &qword_101A0F3F8);
  }

  return result;
}

uint64_t sub_100AB78F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_100AB7958(_BYTE *a1)
{
  v3 = type metadata accessor for UUID();
  v80 = *(v3 - 8);
  v81 = v3;
  __chkstk_darwin(v3);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v89, a1, 0x258uLL);
  v6 = 0;
  v86 = sub_100C3B2CC(v89);
  v82 = a1;
  if ((a1[864] & 1) == 0)
  {
    v6 = v82[856];
  }

  KeyPath = swift_getKeyPath();
  v8 = sub_1005B981C(&unk_101A09590, &qword_101488F40);
  v9 = objc_allocWithZone(v8);
  v10 = (v9 + *((swift_isaMask & *v9) + 0xF0));
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v79 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  (*(**&v1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();
  v11 = *((swift_isaMask & *v9) + 0xD8);
  v83 = v1;
  v12 = v81;
  v80 = *(v80 + 32);
  (v80)(v9 + v11, v5, v81);
  *(v9 + *((swift_isaMask & *v9) + 0xE0)) = v6;
  *(v9 + *((swift_isaMask & *v9) + 0xE8)) = KeyPath;
  v85.receiver = v9;
  v85.super_class = v8;
  objc_msgSendSuper2(&v85, "init");
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v13 = *(v82 + 212);
  v14 = swift_getKeyPath();
  v15 = sub_1005B981C(&unk_101A0F450, &qword_101492B38);
  v16 = objc_allocWithZone(v15);
  v17 = (v16 + *((swift_isaMask & *v16) + 0xF0));
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  (*(**&v83[v79] + 264))();
  (v80)(v16 + *((swift_isaMask & *v16) + 0xD8), v5, v12);
  *(v16 + *((swift_isaMask & *v16) + 0xE0)) = v13;
  *(v16 + *((swift_isaMask & *v16) + 0xE8)) = v14;
  v84.receiver = v16;
  v84.super_class = v15;
  objc_msgSendSuper2(&v84, "init");
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v18 = v86;
  v19 = v83;
  v20 = *&v83[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
  if (!v20)
  {
    v83 = v86;
    v48 = objc_opt_self();
    v49 = [v48 _atomicIncrementAssertCount];
    *&v87[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v87, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("commandsToApplyStyle(_:store:)", 30, 2);
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeItem.swift", 85, 2);
    v51 = String._bridgeToObjectiveC()();

    v52 = [v51 lastPathComponent];

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v56 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_10146CA70;
    *(v57 + 56) = &type metadata for Int32;
    *(v57 + 64) = &protocol witness table for Int32;
    *(v57 + 32) = v49;
    v58 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v57 + 96) = v58;
    v59 = sub_1005CF04C();
    *(v57 + 104) = v59;
    *(v57 + 72) = v50;
    *(v57 + 136) = &type metadata for String;
    v60 = sub_1000053B0();
    *(v57 + 112) = v53;
    *(v57 + 120) = v55;
    *(v57 + 176) = &type metadata for UInt;
    *(v57 + 184) = &protocol witness table for UInt;
    *(v57 + 144) = v60;
    *(v57 + 152) = 255;
    v61 = *&v87[0];
    *(v57 + 216) = v58;
    *(v57 + 224) = v59;
    *(v57 + 192) = v61;
    v62 = v50;
    v63 = v61;
    v64 = static os_log_type_t.error.getter();
    sub_100005404(v56, &_mh_execute_header, v64, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v57);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v65 = static os_log_type_t.error.getter();
    sub_100005404(v56, &_mh_execute_header, v65, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v66 = swift_allocObject();
    v66[2] = 8;
    v66[3] = 0;
    v66[4] = 0;
    v66[5] = 0;
    v67 = __VaListBuilder.va_list()();
    StaticString.description.getter("commandsToApplyStyle(_:store:)", 30, 2);
    v68 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeItem.swift", 85, 2);
    v69 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v70 = String._bridgeToObjectiveC()();

    [v48 handleFailureInFunction:v68 file:v69 lineNumber:255 isFatal:0 format:v70 args:v67];

    return v83;
  }

  v21 = v20;
  v22 = [v21 range];
  v24 = v23;
  result = NSNotFound.getter();
  if (v22 == result)
  {
    v83 = v18;
    v82 = objc_opt_self();
    v26 = [v82 _atomicIncrementAssertCount];
    *&v87[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v87, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("commandsToApplyStyle(_:store:)", 30, 2);
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeItem.swift", 85, 2);
    v28 = String._bridgeToObjectiveC()();

    v29 = [v28 lastPathComponent];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v33 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10146CA70;
    *(v34 + 56) = &type metadata for Int32;
    *(v34 + 64) = &protocol witness table for Int32;
    *(v34 + 32) = v26;
    v35 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v34 + 96) = v35;
    v36 = sub_1005CF04C();
    *(v34 + 104) = v36;
    *(v34 + 72) = v27;
    *(v34 + 136) = &type metadata for String;
    v37 = sub_1000053B0();
    *(v34 + 112) = v30;
    *(v34 + 120) = v32;
    *(v34 + 176) = &type metadata for UInt;
    *(v34 + 184) = &protocol witness table for UInt;
    *(v34 + 144) = v37;
    *(v34 + 152) = 256;
    v38 = *&v87[0];
    *(v34 + 216) = v35;
    *(v34 + 224) = v36;
    *(v34 + 192) = v38;
    v39 = v27;
    v40 = v38;
    v41 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v41, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v34);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v42 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v42, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v43 = swift_allocObject();
    v43[2] = 8;
    v43[3] = 0;
    v43[4] = 0;
    v43[5] = 0;
    v44 = __VaListBuilder.va_list()();
    StaticString.description.getter("commandsToApplyStyle(_:store:)", 30, 2);
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeItem.swift", 85, 2);
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v47 = String._bridgeToObjectiveC()();

    [v82 handleFailureInFunction:v45 file:v46 lineNumber:256 isFatal:0 format:v47 args:v44];

    return v83;
  }

  if (__OFADD__(v22, v24))
  {
    __break(1u);
  }

  else
  {
    v88 = *(v82 + 105);
    v71 = *(v82 + 808);
    v87[12] = *(v82 + 792);
    v87[13] = v71;
    v87[14] = *(v82 + 824);
    v72 = *(v82 + 744);
    v87[8] = *(v82 + 728);
    v87[9] = v72;
    v73 = *(v82 + 776);
    v87[10] = *(v82 + 760);
    v87[11] = v73;
    v74 = *(v82 + 680);
    v87[4] = *(v82 + 664);
    v87[5] = v74;
    v75 = *(v82 + 712);
    v87[6] = *(v82 + 696);
    v87[7] = v75;
    v76 = *(v82 + 616);
    v87[0] = *(v82 + 600);
    v87[1] = v76;
    v77 = *(v82 + 648);
    v87[2] = *(v82 + 632);
    v87[3] = v77;
    sub_100A2197C(v87, v22, &v22[v24], v19);
    sub_100799F10(v78);

    return v86;
  }

  return result;
}

uint64_t sub_100AB8514(uint64_t a1)
{
  v3 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  sub_10000BE14(a1, v5, &unk_1019F33C0, &unk_101468A60);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10000CAAC(v5, &unk_1019F33C0, &unk_101468A60);
  }

  v14 = *(v7 + 32);
  v14(v12, v5, v6);
  (*(v7 + 16))(v9, v12, v6);
  v15 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_100B364FC(0, v15[2] + 1, 1, v15);
  }

  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_100B364FC((v16 > 1), v17 + 1, 1, v15);
  }

  (*(v7 + 8))(v12, v6);
  v15[2] = v17 + 1;
  result = (v14)(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v9, v6);
  *v1 = v15;
  return result;
}

void sub_100AB8788()
{
  if ([objc_opt_self() isInternalOSInstall])
  {
    v0 = [objc_opt_self() standardUserDefaults];
    v1 = String._bridgeToObjectiveC()();
    v2 = [v0 BOOLForKey:v1];

    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  byte_101AD7170 = v3;
}

id sub_100AB8848()
{
  result = [objc_opt_self() isInternalOSInstall];
  byte_101AD7171 = result;
  return result;
}

double sub_100AB887C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && a3)
  {
    v32 = v14;
    v33 = v13;
    v17 = a2;
    v31 = v17;
    v18 = a3;
    v19 = sub_100AB8CA4(v17, v18, 0, 0);
    sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
    v30 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    aBlock[4] = sub_100AB9F58;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_101893DE0;
    v21 = _Block_copy(aBlock);
    v29 = v18;
    v22 = v19;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100006568(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v30;
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v21);
    (*(v9 + 8))(v11, v8);
    (*(v32 + 8))(v16, v33);
  }

  else
  {
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = a2;
    v27 = a2;
    sub_10064191C(0, 0, v7, &unk_101492B48, v26);
  }

  return result;
}

id sub_100AB8CA4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v58 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v6 = objc_opt_self();
  [v6 labelFontSize];
  v7 = [v6 boldSystemFontOfSize:?];
  [v6 systemFontSize];
  v8 = [v6 systemFontOfSize:?];
  [v6 systemFontSize];
  v9 = [v6 boldSystemFontOfSize:?];
  sub_1005B981C(&unk_101A11100, &unk_101471490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = NSFontAttributeName;
  v11 = sub_100006370(0, &qword_101A0DE60, UIFont_ptr);
  *(inited + 64) = v11;
  *(inited + 40) = v7;
  v12 = NSFontAttributeName;
  v65 = v7;
  sub_10006E310(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_101A0DE70, "nd%");
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_10146C6B0;
  *(v13 + 32) = v12;
  *(v13 + 64) = v11;
  *(v13 + 40) = v8;
  v64 = v8;
  sub_10006E310(v13);
  swift_setDeallocating();
  sub_10000CAAC(v13 + 32, &unk_101A0DE70, "nd%");
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_10146C6B0;
  *(v14 + 32) = v12;
  *(v14 + 64) = v11;
  *(v14 + 40) = v9;
  v63 = v9;
  sub_10006E310(v14);
  swift_setDeallocating();
  sub_10000CAAC(v14 + 32, &unk_101A0DE70, "nd%");
  v15 = objc_allocWithZone(NSMutableAttributedString);
  v16 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_100006568(&qword_1019F34A0, type metadata accessor for Key, byte_101467F70);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v67 = [v15 initWithString:v16 attributes:isa];

  v18 = objc_allocWithZone(NSMutableAttributedString);
  v19 = String._bridgeToObjectiveC()();
  v20 = Dictionary._bridgeToObjectiveC()().super.isa;

  v66 = [v18 initWithString:v19 attributes:v20];

  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v57 = [v21 rangeOfString:v22];
  v56 = v23;

  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v55 = [v24 rangeOfString:v25];
  v27 = v26;

  v28 = String._bridgeToObjectiveC()();
  v29 = String._bridgeToObjectiveC()();
  v30 = [v28 rangeOfString:v29];
  v32 = v31;

  v33 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v66 addAttributes:v33 range:{v57, v56}];

  v34 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v66 addAttributes:v34 range:{v55, v27}];

  v35 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v66 addAttributes:v35 range:{v30, v32}];

  [v58 _setAttributedTitle:v67];
  [v58 _setAttributedMessage:v66];
  v36 = swift_allocObject();
  v36[2] = a1;
  v36[3] = a3;
  v36[4] = a4;
  v36[5] = a2;

  v37 = a2;
  v38 = a1;
  v39 = String._bridgeToObjectiveC()();
  v72 = sub_100ABD4C8;
  v73 = v36;
  aBlock = _NSConcreteStackBlock;
  v69 = *"";
  v70 = sub_10068B39C;
  v71 = &unk_101893E30;
  v40 = _Block_copy(&aBlock);

  v41 = objc_opt_self();
  v42 = [v41 actionWithTitle:v39 style:0 handler:v40];
  _Block_release(v40);

  [v58 addAction:v42];
  v43 = swift_allocObject();
  v43[2] = v38;
  v43[3] = a3;
  v43[4] = a4;
  v43[5] = v37;
  v44 = v38;

  v45 = v37;
  v46 = String._bridgeToObjectiveC()();
  v72 = sub_100ABD550;
  v73 = v43;
  aBlock = _NSConcreteStackBlock;
  v69 = *"";
  v70 = sub_10068B39C;
  v71 = &unk_101893E80;
  v47 = _Block_copy(&aBlock);

  v48 = [v41 actionWithTitle:v46 style:2 handler:v47];
  _Block_release(v47);

  [v58 addAction:v48];
  v49 = swift_allocObject();
  *(v49 + 16) = v58;
  v50 = v58;
  v51 = String._bridgeToObjectiveC()();
  v72 = sub_100ABD590;
  v73 = v49;
  aBlock = _NSConcreteStackBlock;
  v69 = *"";
  v70 = sub_10068B39C;
  v71 = &unk_101893ED0;
  v52 = _Block_copy(&aBlock);

  v53 = [v41 actionWithTitle:v51 style:1 handler:v52];
  _Block_release(v52);

  [v50 addAction:v53];
  return v50;
}

uint64_t sub_100AB9598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = type metadata accessor for URLComponents();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  sub_1005B981C(&qword_101A00288, &qword_10147C1A8);
  v4[7] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100AB9750, 0, 0);
}

uint64_t sub_100AB9750()
{
  sub_100ABBBD0(*(v0 + 24), 0, 0, *(v0 + 56));
  v1 = objc_allocWithZone(CRLTemporaryDirectory);
  v2 = String._bridgeToObjectiveC()();
  *(v0 + 16) = 0;
  v3 = [v1 initWithSignature:v2 error:v0 + 16];

  v4 = *(v0 + 16);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  if (v3)
  {
    v8 = v4;
    [v3 leakTemporaryDirectory];
    if ((*(v7 + 48))(v5, 1, v6))
    {
      v9 = *(v0 + 72);
      v10 = *(v0 + 80);
      v11 = *(v0 + 64);

      (*(v10 + 56))(v11, 1, 1, v9);
    }

    else
    {
      v14 = *(v0 + 40);
      v13 = *(v0 + 48);
      v15 = *(v0 + 32);
      (*(v14 + 16))(v13, *(v0 + 56), v15);
      URLComponents.url.getter();

      (*(v14 + 8))(v13, v15);
    }
  }

  else
  {
    v12 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if ((*(v7 + 48))(v5, 1, v6))
    {
      (*(*(v0 + 80) + 56))(*(v0 + 64), 1, 1, *(v0 + 72));
    }

    else
    {
      v17 = *(v0 + 40);
      v16 = *(v0 + 48);
      v18 = *(v0 + 32);
      (*(v17 + 16))(v16, *(v0 + 56), v18);
      URLComponents.url.getter();
      (*(v17 + 8))(v16, v18);
    }
  }

  v19 = *(v0 + 72);
  v20 = *(v0 + 80);
  v21 = *(v0 + 64);
  sub_10000CAAC(*(v0 + 56), &qword_101A00288, &qword_10147C1A8);
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    sub_10000CAAC(*(v0 + 64), &unk_1019F33C0, &unk_101468A60);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
    *(v0 + 96) = objc_opt_self();
    *(v0 + 104) = type metadata accessor for MainActor();
    *(v0 + 112) = static MainActor.shared.getter();
    v25 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100AB9B18, v25, v24);
  }
}

uint64_t sub_100AB9B18()
{
  v1 = *(v0 + 96);

  *(v0 + 120) = [v1 sharedApplication];

  return _swift_task_switch(sub_100AB9BCC, 0, 0);
}

uint64_t sub_100AB9BCC()
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v0[16].super.isa = v1;
  sub_100BD72C0(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_100006568(&qword_1019F3CF0, type metadata accessor for OpenExternalURLOptionsKey, "}~<");
  v0[17].super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v0[18].super.isa = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100AB9D10, v3, v2);
}

uint64_t sub_100AB9D10()
{
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];

  [v3 openURL:v2 options:v1 completionHandler:0];

  return _swift_task_switch(sub_100AB9DD8, 0, 0);
}

uint64_t sub_100AB9DD8()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100AB9EA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100AB9598(a1, v4, v5, v6);
}

uint64_t sub_100AB9F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 144) = a4;
  *(v6 + 152) = a6;
  *(v6 + 336) = a5;
  *(v6 + 128) = a2;
  *(v6 + 136) = a3;
  *(v6 + 120) = a1;
  v7 = type metadata accessor for URLComponents();
  *(v6 + 160) = v7;
  *(v6 + 168) = *(v7 - 8);
  *(v6 + 176) = swift_task_alloc();
  v8 = type metadata accessor for URLQueryItem();
  *(v6 + 184) = v8;
  *(v6 + 192) = *(v8 - 8);
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v6 + 216) = v9;
  *(v6 + 224) = *(v9 - 8);
  *(v6 + 232) = swift_task_alloc();
  sub_1005B981C(&qword_101A00288, &qword_10147C1A8);
  *(v6 + 240) = swift_task_alloc();

  return _swift_task_switch(sub_100ABA164, 0, 0);
}

uint64_t sub_100ABA164()
{
  sub_100ABBBD0(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 240));
  v1 = objc_allocWithZone(CRLTemporaryDirectory);
  v2 = String._bridgeToObjectiveC()();
  *(v0 + 104) = 0;
  v3 = [v1 initWithSignature:v2 error:v0 + 104];
  *(v0 + 248) = v3;

  v4 = *(v0 + 104);
  if (v3)
  {
    v5 = *(v0 + 152);
    v6 = swift_allocObject();
    *(v0 + 256) = v6;
    *(v6 + 16) = _swiftEmptyArrayStorage;
    v7 = v4;
    [v3 leakTemporaryDirectory];
    if (!v5 || (v8 = *(v0 + 152), type metadata accessor for CRLiOSBoardViewController(0), v9 = swift_dynamicCastClass(), (*(v0 + 264) = v9) == 0))
    {
      v13 = *(v0 + 240);
      v14 = *(v0 + 160);
      v15 = *(v0 + 168);
      if ((*(v15 + 48))(v13, 1, v14))
      {
        v16 = *(v0 + 216);
        v17 = *(v0 + 224);
        v18 = *(v0 + 120);

        (*(v17 + 56))(v18, 1, 1, v16);
      }

      else
      {
        v20 = *(v0 + 176);
        (*(v15 + 16))(v20, v13, v14);
        URLComponents.url.getter();

        (*(v15 + 8))(v20, v14);
      }

      goto LABEL_17;
    }

    if (*(v0 + 336) == 1)
    {
      *(v0 + 272) = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator;
      type metadata accessor for MainActor();
      v10 = v8;
      *(v0 + 280) = static MainActor.shared.getter();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100ABA564, v12, v11);
    }
  }

  else
  {
    v19 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v21 = *(v0 + 240);
  v22 = *(v0 + 160);
  v23 = *(v0 + 168);
  if ((*(v23 + 48))(v21, 1, v22))
  {
    (*(*(v0 + 224) + 56))(*(v0 + 120), 1, 1, *(v0 + 216));
  }

  else
  {
    v24 = *(v0 + 176);
    (*(v23 + 16))(v24, v21, v22);
    URLComponents.url.getter();
    (*(v23 + 8))(v24, v22);
  }

LABEL_17:
  sub_10000CAAC(*(v0 + 240), &qword_101A00288, &qword_10147C1A8);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100ABA564()
{
  v1 = v0[34];
  v2 = v0[33];

  v0[36] = *(v2 + v1);

  return _swift_task_switch(sub_100ABA60C, 0, 0);
}

uint64_t sub_100ABA60C()
{
  v1 = *(*(v0 + 288) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardActor);
  *(v0 + 296) = v1;

  return _swift_task_switch(sub_100ABA6C4, v1, 0);
}

uint64_t sub_100ABA6C4()
{
  v1 = *(v0 + 296);
  type metadata accessor for CRLImmutableBoard(0);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store);
  v3 = OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier;
  v4 = swift_task_alloc();
  *(v0 + 304) = v4;
  *v4 = v0;
  v4[1] = sub_100ABA7C0;

  return sub_100797820(v2, v1 + v3, 1);
}

uint64_t sub_100ABA7C0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 312) = a1;

  v4 = *(v3 + 296);
  if (v1)
  {

    v5 = sub_100ABB1F8;
    v6 = v4;
  }

  else
  {

    v5 = sub_100ABA958;
    v6 = 0;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100ABA958()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 248);
  v3 = swift_task_alloc();
  *(v0 + 320) = v3;
  *(v3 + 16) = *(v0 + 256);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 328) = v4;
  *v4 = v0;
  v4[1] = sub_100ABAA7C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v4, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_101492B70, v3, &type metadata for () + 8);
}

uint64_t sub_100ABAA7C()
{

  return _swift_task_switch(sub_100ABABC0, 0, 0);
}

uint64_t sub_100ABABC0()
{
  v1 = v0;
  v2 = v0[32];
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_16;
  }

  v56 = v1 + 2;
  v57 = v1 + 6;
  v5 = v1[28];

  sub_100034080(0, v4, 0);
  v6 = *(v5 + 16);
  v5 += 16;
  v7 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
  v58 = *(v5 + 56);
  v59 = v6;
  v8 = (v5 - 8);
  do
  {
    v9 = v1[29];
    v10 = v1;
    v11 = v1[27];
    v59(v9, v7, v11);
    v12 = URL.path.getter();
    v14 = v13;
    (*v8)(v9, v11);
    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    if (v16 >= v15 >> 1)
    {
      sub_100034080((v15 > 1), v16 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[2 * v16];
    v17[4] = v12;
    v17[5] = v14;
    v7 += v58;
    --v4;
    v1 = v10;
  }

  while (v4);
  v18 = v10[30];
  v19 = v10[20];
  v20 = v10[21];

  v10[14] = _swiftEmptyArrayStorage;
  sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80, &unk_10146CF20, &protocol conformance descriptor for [A]);
  BidirectionalCollection<>.joined(separator:)();

  v21 = *(v20 + 48);
  if (v21(v18, 1, v19))
  {

    v1 = v10;
  }

  else
  {
    v23 = URLComponents.queryItems.modify();
    v1 = v10;
    if (*v22)
    {
      v24 = v22;
      URLQueryItem.init(name:value:)();

      v25 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v24 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_100B388A8(0, v25[2] + 1, 1, v25);
        *v24 = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_100B388A8((v27 > 1), v28 + 1, 1, v25);
        *v24 = v25;
      }

      v29 = v1[26];
      v30 = v1[23];
      v31 = v1[24];
      v25[2] = v28 + 1;
      (*(v31 + 32))(v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28, v29, v30);
      v23();
    }

    else
    {

      (v23)(v57, 0);
    }
  }

  if (!v21(v1[30], 1, v1[20]))
  {
    v35 = URLComponents.queryItems.modify();
    if (*v34)
    {
      v36 = v34;
      URLQueryItem.init(name:value:)();
      v37 = *v36;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      *v36 = v37;
      if ((v38 & 1) == 0)
      {
        v37 = sub_100B388A8(0, v37[2] + 1, 1, v37);
        *v36 = v37;
      }

      v40 = v37[2];
      v39 = v37[3];
      if (v40 >= v39 >> 1)
      {
        v37 = sub_100B388A8((v39 > 1), v40 + 1, 1, v37);
        *v36 = v37;
      }

      v41 = v1[39];
      v42 = v1[31];
      v44 = v1[24];
      v43 = v1[25];
      v45 = v1[23];
      v46 = v1[19];
      v37[2] = v40 + 1;
      (*(v44 + 32))(v37 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v40, v43, v45);
      v35(v56, 0);
    }

    else
    {
      v47 = v1[39];
      v48 = v1[31];
      v49 = v1[19];
      v35(v56, 0);
    }
  }

  else
  {
LABEL_16:
    v32 = v1[31];
    v33 = v1[19];
  }

  v50 = v1[30];
  v51 = v1[20];
  v52 = v1[21];
  if ((*(v52 + 48))(v50, 1, v51))
  {
    (*(v1[28] + 56))(v1[15], 1, 1, v1[27]);
  }

  else
  {
    v53 = v1[22];
    (*(v52 + 16))(v53, v50, v51);
    URLComponents.url.getter();
    (*(v52 + 8))(v53, v51);
  }

  sub_10000CAAC(v1[30], &qword_101A00288, &qword_10147C1A8);

  v54 = v1[1];

  return v54();
}