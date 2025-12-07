_OWORD *sub_1001F94B8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100201570(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_1001F9534(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100201570(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_1001F95A0()
{
  v1 = v0;
  v2 = type metadata accessor for STransferMetrics(0);
  v27 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001A551C(&qword_100377208, &unk_1002F23B0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
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
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_100204DB0(*(v4 + 56) + v23, v26, type metadata accessor for STransferMetrics);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        sub_100204E18(v22, *(v24 + 56) + v23, type metadata accessor for STransferMetrics);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }
}

void sub_1001F97D8()
{
  v1 = v0;
  v29 = type metadata accessor for Date();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001A551C(&unk_1003770B0, &qword_1002F2260);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
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
    v26 = v31 + 32;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
      (*(v19 + 32))(*(v23 + 56) + v20, v22, v21);
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
}

void sub_1001F9A40()
{
  v1 = v0;
  sub_1001A551C(&unk_100377220, &unk_1002F23C8);
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

void sub_1001F9BB0()
{
  v1 = v0;
  sub_1001A551C(&unk_100377070, &qword_1002F2258);
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
        v18 = 40 * v17;
        sub_100201580(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1001A773C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_100201570(v22, (*(v4 + 56) + v17));
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

void sub_1001F9D54()
{
  v1 = v0;
  sub_1001A551C(&unk_1003771D0, &unk_1002F5090);
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
        sub_1001A773C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100201570(v25, (*(v4 + 56) + v22));
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

void sub_1001F9EF8()
{
  v1 = v0;
  sub_1001A551C(&qword_1003771B0, &qword_1002F2358);
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

void sub_1001FA060()
{
  v1 = v0;
  sub_1001A551C(&qword_1003771A0, &qword_1002F2348);
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

void sub_1001FA1D8()
{
  v1 = v0;
  v2 = type metadata accessor for DashboardViewModelObject(0);
  v33 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001A551C(&qword_100377158, &qword_1002F2308);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
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
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_100204DB0(v21 + v27, v32, type metadata accessor for DashboardViewModelObject);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_100204E18(v26, *(v28 + 56) + v27, type metadata accessor for DashboardViewModelObject);

        v14 = v35;
      }

      while (v35);
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
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

uint64_t sub_1001FA438(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
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

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_1001FA4D8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001FA564(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1001FA578(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_1003770D8, &qword_1002F22B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1001FA690(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void sub_1001FA7A8(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v19 = *a1 >> 62;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v19)
  {
    goto LABEL_71;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v6 = 0;
    while (1)
    {
      if (v5 == v6)
      {
        if (v19)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }

        return;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_61;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      if (*(v8 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) != a2)
      {

        goto LABEL_5;
      }

      if (*(v8 + 32) == 4543564 && *(v8 + 40) == 0xE300000000000000)
      {
        break;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        goto LABEL_22;
      }

LABEL_5:
      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_62;
      }
    }

LABEL_22:
    v11 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      while (2)
      {
        if (v3 >> 62)
        {
          if (v11 == _CocoaArrayWrapper.endIndex.getter())
          {
            return;
          }
        }

        else if (v11 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v12 = *(v3 + 8 * v11 + 32);
        }

        if (*(v12 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == a2)
        {
          if (*(v12 + 32) == 4543564 && *(v12 + 40) == 0xE300000000000000)
          {

            goto LABEL_25;
          }

          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v15)
          {
LABEL_25:
            v7 = __OFADD__(v11++, 1);
            if (v7)
            {
              goto LABEL_65;
            }

            continue;
          }
        }

        else
        {
        }

        break;
      }

      if (v6 != v11)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_68;
          }

          v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v16)
          {
            goto LABEL_69;
          }

          if (v11 >= v16)
          {
            goto LABEL_70;
          }

          v13 = *(v3 + 32 + 8 * v6);
          v14 = *(v3 + 32 + 8 * v11);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1001FA690(v3);
          v4 = (v3 >> 62) & 1;
        }

        else
        {
          v4 = 0;
        }

        v17 = v3 & 0xFFFFFFFFFFFFFF8;
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v14;

        if ((v3 & 0x8000000000000000) != 0 || v4)
        {
          v3 = sub_1001FA690(v3);
          v17 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            v5 = _CocoaArrayWrapper.endIndex.getter();
            continue;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        if (v11 >= *(v17 + 16))
        {
          goto LABEL_67;
        }

        *(v17 + 8 * v11 + 32) = v13;

        *a1 = v3;
      }

      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_66;
      }

      goto LABEL_25;
    }

    break;
  }

  __break(1u);
}

void sub_1001FAB28(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v19 = *a1 >> 62;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v19)
  {
    goto LABEL_71;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      if (v19)
      {
        _CocoaArrayWrapper.endIndex.getter();
      }

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_61;
      }

      v8 = *(v3 + 8 * v6 + 32);
    }

    if (*(v8 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) != a2)
    {

      goto LABEL_5;
    }

    if (*(v8 + 32) == 18229 && *(v8 + 40) == 0xE200000000000000)
    {
      break;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_22;
    }

LABEL_5:
    v7 = __OFADD__(v6++, 1);
    if (v7)
    {
      goto LABEL_62;
    }
  }

LABEL_22:
  v11 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    v4 = 18229;
    while (1)
    {
      if (v3 >> 62)
      {
        if (v11 == _CocoaArrayWrapper.endIndex.getter())
        {
          return;
        }
      }

      else if (v11 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v12 = *(v3 + 8 * v11 + 32);
      }

      if (*(v12 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == a2)
      {
        if (*(v12 + 32) == 18229 && *(v12 + 40) == 0xE200000000000000)
        {

          goto LABEL_25;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {
          goto LABEL_25;
        }
      }

      else
      {
      }

      if (v6 != v11)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_68;
          }

          v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v16)
          {
            goto LABEL_69;
          }

          if (v11 >= v16)
          {
            goto LABEL_70;
          }

          v13 = *(v3 + 32 + 8 * v6);
          v14 = *(v3 + 32 + 8 * v11);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1001FA690(v3);
          v17 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v18 = v3 & 0xFFFFFFFFFFFFFF8;
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v14;

        if ((v3 & 0x8000000000000000) != 0 || v17)
        {
          v3 = sub_1001FA690(v3);
          v18 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            v5 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_3;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        if (v11 >= *(v18 + 16))
        {
          goto LABEL_67;
        }

        *(v18 + 8 * v11 + 32) = v13;

        *a1 = v3;
      }

      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_66;
      }

LABEL_25:
      v7 = __OFADD__(v11++, 1);
      if (v7)
      {
        goto LABEL_65;
      }
    }
  }

  __break(1u);
}

void sub_1001FAE9C(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v19 = *a1 >> 62;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v19)
  {
LABEL_66:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      if (v19)
      {
        _CocoaArrayWrapper.endIndex.getter();
      }

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v8 = *(v3 + 8 * v6 + 32);
    }

    if (*(v8 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == a2 && (*(v8 + 32) != 5067591 || *(v8 + 40) != 0xE300000000000000))
    {
      break;
    }

LABEL_5:
    v7 = __OFADD__(v6++, 1);
    if (v7)
    {
      goto LABEL_60;
    }
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_5;
  }

  v11 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_70;
  }

  while (2)
  {
    if (v3 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }
    }

    else if (v11 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v12 = *(v3 + 8 * v11 + 32);
    }

    if (*(v12 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) != a2 || *(v12 + 32) == 5067591 && *(v12 + 40) == 0xE300000000000000)
    {

      goto LABEL_35;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_35:
    if (v6 == v11)
    {
      goto LABEL_23;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_44;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 >= v16)
      {
        goto LABEL_68;
      }

      if (v11 >= v16)
      {
        goto LABEL_69;
      }

      v13 = *(v3 + 32 + 8 * v6);
      v14 = *(v3 + 32 + 8 * v11);

LABEL_44:
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
      {
        v3 = sub_1001FA690(v3);
        v4 = (v3 >> 62) & 1;
      }

      else
      {
        v4 = 0;
      }

      v17 = v3 & 0xFFFFFFFFFFFFFF8;
      *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v14;

      if ((v3 & 0x8000000000000000) != 0 || v4)
      {
        v3 = sub_1001FA690(v3);
        v17 = v3 & 0xFFFFFFFFFFFFFF8;
        if ((v11 & 0x8000000000000000) != 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }
      }

      else if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_58;
      }

      if (v11 >= *(v17 + 16))
      {
        goto LABEL_65;
      }

      *(v17 + 8 * v11 + 32) = v13;

      *a1 = v3;
LABEL_23:
      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_64;
      }

LABEL_24:
      v7 = __OFADD__(v11++, 1);
      if (v7)
      {
        goto LABEL_63;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

void sub_1001FB200(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v19 = *a1 >> 62;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v19)
  {
    goto LABEL_71;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v6 = 0;
    while (1)
    {
      if (v5 == v6)
      {
        if (v19)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }

        return;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_61;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      if (*(v8 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) != a2)
      {

        goto LABEL_5;
      }

      if (*(v8 + 32) == 5067591 && *(v8 + 40) == 0xE300000000000000)
      {
        break;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        goto LABEL_22;
      }

LABEL_5:
      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_62;
      }
    }

LABEL_22:
    v11 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      while (2)
      {
        if (v3 >> 62)
        {
          if (v11 == _CocoaArrayWrapper.endIndex.getter())
          {
            return;
          }
        }

        else if (v11 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v12 = *(v3 + 8 * v11 + 32);
        }

        if (*(v12 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == a2)
        {
          if (*(v12 + 32) == 5067591 && *(v12 + 40) == 0xE300000000000000)
          {

            goto LABEL_25;
          }

          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v15)
          {
LABEL_25:
            v7 = __OFADD__(v11++, 1);
            if (v7)
            {
              goto LABEL_65;
            }

            continue;
          }
        }

        else
        {
        }

        break;
      }

      if (v6 != v11)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_68;
          }

          v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v16)
          {
            goto LABEL_69;
          }

          if (v11 >= v16)
          {
            goto LABEL_70;
          }

          v13 = *(v3 + 32 + 8 * v6);
          v14 = *(v3 + 32 + 8 * v11);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1001FA690(v3);
          v4 = (v3 >> 62) & 1;
        }

        else
        {
          v4 = 0;
        }

        v17 = v3 & 0xFFFFFFFFFFFFFF8;
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v14;

        if ((v3 & 0x8000000000000000) != 0 || v4)
        {
          v3 = sub_1001FA690(v3);
          v17 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            v5 = _CocoaArrayWrapper.endIndex.getter();
            continue;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        if (v11 >= *(v17 + 16))
        {
          goto LABEL_67;
        }

        *(v17 + 8 * v11 + 32) = v13;

        *a1 = v3;
      }

      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_66;
      }

      goto LABEL_25;
    }

    break;
  }

  __break(1u);
}

void sub_1001FB580(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v19 = *a1 >> 62;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v19)
  {
LABEL_66:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      if (v19)
      {
        _CocoaArrayWrapper.endIndex.getter();
      }

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v8 = *(v3 + 8 * v6 + 32);
    }

    if (*(v8 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == a2 && (*(v8 + 32) != 1398033749 || *(v8 + 40) != 0xE400000000000000))
    {
      break;
    }

LABEL_5:
    v7 = __OFADD__(v6++, 1);
    if (v7)
    {
      goto LABEL_60;
    }
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_5;
  }

  v11 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_70;
  }

  while (2)
  {
    if (v3 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }
    }

    else if (v11 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v12 = *(v3 + 8 * v11 + 32);
    }

    if (*(v12 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) != a2 || *(v12 + 32) == 1398033749 && *(v12 + 40) == 0xE400000000000000)
    {

      goto LABEL_35;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_35:
    if (v6 == v11)
    {
      goto LABEL_23;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_44;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 >= v16)
      {
        goto LABEL_68;
      }

      if (v11 >= v16)
      {
        goto LABEL_69;
      }

      v13 = *(v3 + 32 + 8 * v6);
      v14 = *(v3 + 32 + 8 * v11);

LABEL_44:
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
      {
        v3 = sub_1001FA690(v3);
        v4 = (v3 >> 62) & 1;
      }

      else
      {
        v4 = 0;
      }

      v17 = v3 & 0xFFFFFFFFFFFFFF8;
      *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v14;

      if ((v3 & 0x8000000000000000) != 0 || v4)
      {
        v3 = sub_1001FA690(v3);
        v17 = v3 & 0xFFFFFFFFFFFFFF8;
        if ((v11 & 0x8000000000000000) != 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }
      }

      else if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_58;
      }

      if (v11 >= *(v17 + 16))
      {
        goto LABEL_65;
      }

      *(v17 + 8 * v11 + 32) = v13;

      *a1 = v3;
LABEL_23:
      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_64;
      }

LABEL_24:
      v7 = __OFADD__(v11++, 1);
      if (v7)
      {
        goto LABEL_63;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

void sub_1001FB8E4(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v19 = *a1 >> 62;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v19)
  {
    goto LABEL_71;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v6 = 0;
    while (1)
    {
      if (v5 == v6)
      {
        if (v19)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }

        return;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_61;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      if (*(v8 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) != a2)
      {

        goto LABEL_5;
      }

      if (*(v8 + 32) == 1398033749 && *(v8 + 40) == 0xE400000000000000)
      {
        break;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        goto LABEL_22;
      }

LABEL_5:
      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_62;
      }
    }

LABEL_22:
    v11 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      while (2)
      {
        if (v3 >> 62)
        {
          if (v11 == _CocoaArrayWrapper.endIndex.getter())
          {
            return;
          }
        }

        else if (v11 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v12 = *(v3 + 8 * v11 + 32);
        }

        if (*(v12 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == a2)
        {
          if (*(v12 + 32) == 1398033749 && *(v12 + 40) == 0xE400000000000000)
          {

            goto LABEL_25;
          }

          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v15)
          {
LABEL_25:
            v7 = __OFADD__(v11++, 1);
            if (v7)
            {
              goto LABEL_65;
            }

            continue;
          }
        }

        else
        {
        }

        break;
      }

      if (v6 != v11)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_68;
          }

          v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v16)
          {
            goto LABEL_69;
          }

          if (v11 >= v16)
          {
            goto LABEL_70;
          }

          v13 = *(v3 + 32 + 8 * v6);
          v14 = *(v3 + 32 + 8 * v11);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1001FA690(v3);
          v4 = (v3 >> 62) & 1;
        }

        else
        {
          v4 = 0;
        }

        v17 = v3 & 0xFFFFFFFFFFFFFF8;
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v14;

        if ((v3 & 0x8000000000000000) != 0 || v4)
        {
          v3 = sub_1001FA690(v3);
          v17 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            v5 = _CocoaArrayWrapper.endIndex.getter();
            continue;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        if (v11 >= *(v17 + 16))
        {
          goto LABEL_67;
        }

        *(v17 + 8 * v11 + 32) = v13;

        *a1 = v3;
      }

      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_66;
      }

      goto LABEL_25;
    }

    break;
  }

  __break(1u);
}

uint64_t sub_1001FBC64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1001AD0C8(&qword_100377230, &qword_100375610, &qword_1002EF860, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_1001A551C(&qword_100375610, &qword_1002EF860);
            v9 = sub_1001FBFBC(v13, i, a3);
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
        type metadata accessor for FTMAllMetricsModel(0);
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

uint64_t sub_1001FBE08(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1001AD0C8(&qword_100377150, &qword_100377148, &qword_1002F2300, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_1001A551C(&qword_100377148, &qword_1002F2300);
            v9 = sub_1001FC0CC(v13, i, a3);
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
        sub_1001E1BB4(0, &qword_100377140, CellularLoggingFileInformation_ptr);
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

uint64_t (*sub_1001FBFBC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1001FC03C;
  }

  __break(1u);
  return result;
}

void (*sub_1001FC044(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1001FC0C4;
  }

  __break(1u);
  return result;
}

void (*sub_1001FC0CC(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1002050B4;
  }

  __break(1u);
  return result;
}

void *sub_1001FC14C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v14 = 1;
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

void *sub_1001FC2A4(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_1001FC3FC(void *result, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    v8 = 0;
LABEL_25:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v25 = result;
    v26 = -1 << *(a4 + 32);
    result = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v12 = 1;
    while (v7)
    {
LABEL_14:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v10 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_1001A773C(*(a4 + 56) + 32 * v16, &v28);
      *&v27 = v19;
      *(&v27 + 1) = v20;
      v22 = v28;
      v21 = v29;
      v31 = v28;
      v32 = v29;
      v30 = v27;
      *v9 = v27;
      v9[1] = v22;
      v9[2] = v21;
      if (v12 == v8)
      {

        v5 = v26;
        a4 = v17;
        goto LABEL_23;
      }

      v9 += 3;

      result = v12;
      v23 = __OFADD__(v12++, 1);
      a4 = v17;
      if (v23)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v7 = *(v4 + 8 * v14);
      ++v13;
      if (v7)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v11 <= v10 + 1)
    {
      v24 = v10 + 1;
    }

    else
    {
      v24 = v11;
    }

    v10 = v24 - 1;
    v8 = result;
    v5 = v26;
LABEL_23:
    result = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_1001FC59C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_1001A551C(&qword_1003772A0, &qword_1002F11B0);
  v35 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v36 = (&v31 - v10);
  v11 = a4 + 64;
  v12 = -1 << *(a4 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v21 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v11;
    a1[2] = ~v12;
    a1[3] = v21;
    a1[4] = v14;
    return;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v32 = -1 << *(a4 + 32);
    v33 = a1;
    v15 = 0;
    v16 = (63 - v12) >> 6;
    v17 = 1;
    v34 = a3;
    while (v14)
    {
LABEL_14:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = v15;
      v22 = v20 | (v15 << 6);
      v23 = *(a4 + 56);
      v24 = a4;
      v25 = *(*(a4 + 48) + 8 * v22);
      v26 = v23 + *(*(type metadata accessor for STransferMetrics(0) - 8) + 72) * v22;
      v27 = v37;
      sub_100204DB0(v26, &v37[*(v38 + 48)], type metadata accessor for STransferMetrics);
      *v27 = v25;
      v28 = v27;
      a1 = v36;
      sub_100204FDC(v28, v36);
      sub_100204FDC(a1, a2);
      if (v17 == v34)
      {
        a1 = v33;
        a4 = v24;
        goto LABEL_23;
      }

      a2 += *(v35 + 72);
      v29 = __OFADD__(v17++, 1);
      a4 = v24;
      v15 = v21;
      if (v29)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v18 = v15;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v19 >= v16)
      {
        break;
      }

      v14 = *(v11 + 8 * v19);
      ++v18;
      if (v14)
      {
        v15 = v19;
        goto LABEL_14;
      }
    }

    v14 = 0;
    if (v16 <= v15 + 1)
    {
      v30 = v15 + 1;
    }

    else
    {
      v30 = v16;
    }

    v21 = v30 - 1;
    a1 = v33;
LABEL_23:
    v12 = v32;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_1001FC8FC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_1001FC954(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 208 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 208 * a3;
  v13 = (v7 + 32 + 208 * a2);
  v14 = 208 * v12;
  v15 = v13 + 208 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001FCA80(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_10020050C(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_1001FCB58(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 296 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 296 * a3;
  v13 = (v7 + 32 + 296 * a2);
  v14 = 296 * v12;
  v15 = v13 + 296 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001FCC58(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_1001FCD30(uint64_t a1)
{
  v2 = sub_1001A551C(&qword_100377198, &qword_1002F2340);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001A551C(&unk_1003770B0, &qword_1002F2260);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1001AC934(v9, v5, &qword_100377198, &qword_1002F2340);
      v11 = *v5;
      result = sub_1001F6730(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for Date();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001FCF0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A551C(&qword_1003771A0, &qword_1002F2348);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1001F66B8(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001FD020(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A551C(&unk_100377070, &qword_1002F2258);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1001AC934(v4, v13, &qword_100377058, &qword_1002F21F8);
      result = sub_1001F6774(v13);
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
      result = sub_100201570(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001FD15C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A551C(&unk_100377220, &unk_1002F23C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1001F66B8(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001FD260(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A551C(&qword_100377218, &qword_1002F23C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1001F66B8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001FD364(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A551C(&qword_100377178, &qword_1002F2328);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1001F6730(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 4 * result) = v6;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001FD444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A551C(&unk_1003771D0, &unk_1002F5090);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1001AC934(v4, &v13, &qword_100379B70, &qword_1002F2380);
      v5 = v13;
      v6 = v14;
      result = sub_1001F66B8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100201570(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001FD574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A551C(&qword_1003771B0, &qword_1002F2358);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1001F66B8(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1001FD670(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
    if (a1)
    {
      if (a2)
      {
        v3 = 0;
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    v4 = 4;
  }

  else
  {
    if (a1)
    {
LABEL_6:
      if (a2)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }

      goto LABEL_14;
    }

    v4 = 5;
  }

  if (a2)
  {
    v3 = 3;
  }

  else
  {
    v3 = v4;
  }

LABEL_14:
  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  v5 = qword_1003824C0;
  v6 = static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 16) = xmmword_1002EED40;
  if (v3 > 2u)
  {
    if (v3 == 3)
    {
      v10 = 5459283;
      v9 = 0xE300000000000000;
    }

    else if (v3 == 4)
    {
      v9 = 0xE300000000000000;
      v10 = 5456722;
    }

    else
    {
      v9 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E55;
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v9 = 0xEB00000000534D53;
      v10 = 0x2026206563696F56;
    }

    else
    {
      v9 = 0xE500000000000000;
      v10 = 0x6563696F56;
    }
  }

  else
  {
    v9 = 0x80000001002B92A0;
    v10 = 0xD000000000000010;
  }

  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_1001A76E8();
  *(v8 + 32) = v10;
  *(v8 + 40) = v9;
  os_log(_:dso:log:type:_:)("Registration Status: %{public}s ", 32, 2, &_mh_execute_header, v5, v6, v8);

  return v3;
}

uint64_t sub_1001FD848(void *a1)
{
  v1 = [a1 legacyInfo];
  if (!v1)
  {
    return 6;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v3 + 16))
  {
    goto LABEL_44;
  }

  sub_1001A773C(v3 + 32, &v15);

  sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 6;
  }

  if (!*(v14 + 16))
  {
    goto LABEL_44;
  }

  sub_100225CF4(v14);
  v5 = v4;
  v7 = v6;

  if (kCTCellMonitorRadioAccessTechnologyLTE)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v15 = 0;
      v16 = 0;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
      if (v16)
      {
        if (v15 == v5 && v16 == v7)
        {

LABEL_13:

          return 2;
        }

        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v8)
        {
          goto LABEL_13;
        }
      }
    }
  }

  if (kCTCellMonitorRadioAccessTechnologyNR)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v15 = 0;
      v16 = 0;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
      if (v16)
      {
        if (v15 == v5 && v16 == v7)
        {

LABEL_21:

          return 1;
        }

        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v10)
        {
          goto LABEL_21;
        }
      }
    }
  }

  if (kCTCellMonitorRadioAccessTechnologyUMTS)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v15 = 0;
      v16 = 0;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
      if (v16)
      {
        if (v15 == v5 && v16 == v7)
        {

LABEL_29:

          return 3;
        }

        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v11)
        {
          goto LABEL_29;
        }
      }
    }
  }

  if (kCTCellMonitorRadioAccessTechnologyUTRAN)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v15 = 0;
      v16 = 0;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
      if (v16)
      {
        if (v15 == v5 && v16 == v7)
        {

LABEL_37:

          return 4;
        }

        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v12)
        {
          goto LABEL_37;
        }
      }
    }
  }

  if (!kCTCellMonitorRadioAccessTechnologyGSM || (objc_opt_self(), !swift_dynamicCastObjCClass()) || (v15 = 0, v16 = 0, static String._conditionallyBridgeFromObjectiveC(_:result:)(), !v16))
  {
LABEL_44:

    return 6;
  }

  if (v15 == v5 && v16 == v7)
  {

    return 5;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    return 5;
  }

  return 6;
}

uint64_t sub_1001FDC20(void *a1)
{
  v1 = [a1 legacyInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v3 + 16))
  {
    goto LABEL_6;
  }

  sub_1001A773C(v3 + 32, v12);

  sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
  if (swift_dynamicCast())
  {
    if (!*(v11 + 16) || (sub_100225D00(v11), (v4 & 1) != 0))
    {
LABEL_6:

      return 0;
    }

    sub_100225D0C(v11);
    v7 = v6;

    if ((v7 & 1) == 0)
    {
      v12[0] = dispatch thunk of CustomStringConvertible.description.getter();
      v12[1] = v8;
      v9._countAndFlagsBits = 32;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
      v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v10);

      return v12[0];
    }
  }

  return 0;
}

uint64_t sub_1001FDD84(void *a1, uint64_t (*a2)())
{
  v3 = 0x6E776F6E6B6E55;
  v4 = [a1 legacyInfo];
  if (v4)
  {
    v5 = v4;
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v6 + 16))
    {
      goto LABEL_7;
    }

    sub_1001A773C(v6 + 32, v12);

    sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return v3;
    }

    if (!*(v11 + 16))
    {
LABEL_7:

      return v3;
    }

    v7 = a2();
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      v12[0] = v7;
      return dispatch thunk of CustomStringConvertible.description.getter();
    }
  }

  return v3;
}

uint64_t sub_1001FDEAC(void *a1, uint64_t (*a2)())
{
  v3 = [a1 legacyInfo];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v5 + 16))
  {
    goto LABEL_7;
  }

  sub_1001A773C(v5 + 32, v11);

  sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v10 + 16))
  {
LABEL_7:

    return 0;
  }

  v6 = a2();
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    v11[0] = v6;
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  return 0;
}

uint64_t sub_1001FDFB8(void *a1)
{
  v1 = [a1 legacyInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v3 + 16))
  {
    goto LABEL_10;
  }

  sub_1001A773C(v3 + 32, v8);

  sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v7 + 16))
  {
LABEL_10:

    return 0;
  }

  sub_100225FE8(v7);
  v5 = v4;

  if (v5 <= 3)
  {
    if (v5 <= 1)
    {
      if (!v5)
      {
        return 4543564;
      }

      if (v5 != 1)
      {
        return 0x6E776F6E6B6E55;
      }

      return 4281166;
    }

    if (v5 == 2)
    {
      return 16723;
    }

    return 0x41534E2B4153;
  }

  if (v5 <= 5)
  {
    return 4281166;
  }

  if (v5 == 6 || v5 == 7)
  {
    return 0x41534E2B4153;
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_1001FE150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for FTMAllMetricsModel(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1001FE268(uint64_t a1, unsigned __int8 a2, void *a3, unint64_t a4)
{
  LOBYTE(v6) = a2;
  v115 = a1 != 1;
  if (a2 == 1)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if ((a3 != 16723 || a4 != 0xE200000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_38;
  }

  if (qword_100375020 != -1)
  {
    goto LABEL_217;
  }

  while (1)
  {
    v8 = &unk_100382000;
    v9 = qword_100382508;
    v10 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v11 = *(v9 + v10);
    v12 = v11 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = v115;

    if (!v12)
    {
      break;
    }

    v108 = a3;
    v109 = a4;
    v110 = v6;
    v14 = 0;
    a4 = v11 & 0xC000000000000001;
    a3 = (v11 & 0xFFFFFFFFFFFFFF8);
    v6 = &OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
    while (a4)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        LOBYTE(v6) = v110;
        a3 = v108;
        a4 = v109;
        v8 = &unk_100382000;
        goto LABEL_29;
      }

LABEL_18:
      if (*(v15 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v13 && (*(v15 + 32) == 4543564 ? (v17 = *(v15 + 40) == 0xE300000000000000) : (v17 = 0), v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v13 = v115;
      }

      else
      {
      }

      ++v14;
      if (v16 == v12)
      {
        goto LABEL_28;
      }
    }

    if (v14 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v11 + 8 * v14 + 32);

      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    swift_once();
  }

LABEL_29:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = _swiftEmptyArrayStorage[2];
  }

  if (!v18)
  {
LABEL_38:
    if (v6 == 2)
    {
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    if (a3 == 4543564 && a4 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (qword_100375020 != -1)
      {
        swift_once();
      }

      v18 = &unk_100382000;
      v30 = qword_100382508;
      v24 = &OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
      v31 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
      swift_beginAccess();
      a4 = *(v30 + v31);
      if (a4 >> 62)
      {
        a3 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        a3 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v32 = v115;

      if (!a3)
      {
        goto LABEL_67;
      }

      v111 = v6;
      v33 = 0;
      LOBYTE(v6) = a4 & 0xF8;
      while (1)
      {
        if ((a4 & 0xC000000000000001) != 0)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v35 = (v33 + 1);
          if (__OFADD__(v33, 1))
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (v33 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_212;
          }

          v34 = *(a4 + 8 * v33 + 32);

          v35 = (v33 + 1);
          if (__OFADD__(v33, 1))
          {
LABEL_65:
            __break(1u);
LABEL_66:
            LOBYTE(v6) = v111;
            v18 = &unk_100382000;
            v24 = &OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
LABEL_67:

            if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
            {
              v37 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v37 = _swiftEmptyArrayStorage[2];
            }

            if (v37)
            {
              if (qword_100374FD8 == -1)
              {
                goto LABEL_72;
              }

              goto LABEL_226;
            }

            goto LABEL_75;
          }
        }

        if (*(v34 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v32 && (*(v34 + 32) == 18229 ? (v36 = *(v34 + 40) == 0xE200000000000000) : (v36 = 0), v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v32 = v115;
        }

        else
        {
        }

        ++v33;
        if (v35 == a3)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_75;
  }

  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  v19 = qword_1003824C0;
  v20 = static os_log_type_t.default.getter();
  [*(v8[161] + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock];
  v21 = v8[161];
  v22 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
  swift_beginAccess();
  v23 = v21;
  v24 = 0;
  sub_1001FA7A8(&v21[v22], v115);
  v26 = *&v21[v22];
  if (v26 >> 62)
  {
    v24 = v25;
    v27 = _CocoaArrayWrapper.endIndex.getter();
    v25 = v24;
    if (v27 >= v24)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27 >= v25)
    {
LABEL_37:
      sub_100204C40(v25, v27, sub_1001FE150);
      swift_endAccess();
      sub_10020D3C0(0);

      v28 = v8[161];
      goto LABEL_176;
    }
  }

  __break(1u);
LABEL_226:
  swift_once();
LABEL_72:
  v38 = qword_1003824C0;
  v39 = static os_log_type_t.default.getter();
  [*(v18[161] + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock];
  v40 = v18[161];
  v41 = *v24;
  swift_beginAccess();
  v6 = v40;
  sub_1001FAB28(&v40[v41], v115);
  v43 = *&v40[v41];
  if (v43 >> 62)
  {
    v103 = v42;
    v44 = _CocoaArrayWrapper.endIndex.getter();
    v42 = v103;
    if (v44 >= v103)
    {
      goto LABEL_175;
    }
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44 >= v42)
    {
      goto LABEL_175;
    }
  }

  __break(1u);
LABEL_75:
  if (v6 == 5)
  {
  }

  else
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v45 & 1) == 0)
    {
      goto LABEL_109;
    }
  }

  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v18 = &unk_100382000;
  v46 = qword_100382508;
  v47 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
  swift_beginAccess();
  a4 = *(v46 + v47);
  if (a4 >> 62)
  {
    a3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    a3 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = v115;

  if (!a3)
  {
    goto LABEL_100;
  }

  v112 = v6;
  v49 = 0;
  v6 = (a4 & 0xC000000000000001);
  while (2)
  {
    if (v6)
    {
      v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v51 = (v49 + 1);
      if (__OFADD__(v49, 1))
      {
        break;
      }

      goto LABEL_89;
    }

    if (v49 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_213;
    }

    v50 = *(a4 + 8 * v49 + 32);

    v51 = (v49 + 1);
    if (!__OFADD__(v49, 1))
    {
LABEL_89:
      if (*(v50 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) != v48 || (*(v50 + 32) == 5067591 ? (v52 = *(v50 + 40) == 0xE300000000000000) : (v52 = 0), v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v48 = v115;
      }

      ++v49;
      if (v51 == a3)
      {
        goto LABEL_99;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_99:
  LOBYTE(v6) = v112;
  v18 = &unk_100382000;
LABEL_100:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v53 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v53 = _swiftEmptyArrayStorage[2];
  }

  if (v53)
  {
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    v54 = qword_1003824C0;
    v55 = static os_log_type_t.default.getter();
    [*(v18[161] + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock];
    v56 = v18[161];
    v57 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v6 = v56;
    sub_1001FAE9C(&v56[v57], v115);
    v58 = *&v56[v57];
    if (v58 >> 62)
    {
      v104 = v42;
      v44 = _CocoaArrayWrapper.endIndex.getter();
      v42 = v104;
      if (v44 >= v104)
      {
        goto LABEL_175;
      }
    }

    else
    {
      v44 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44 >= v42)
      {
        goto LABEL_175;
      }
    }

    __break(1u);
    goto LABEL_231;
  }

LABEL_109:
  if (v6 == 5)
  {

    goto LABEL_144;
  }

  v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v59)
  {
    goto LABEL_142;
  }

  if (qword_100375020 != -1)
  {
LABEL_231:
    swift_once();
  }

  v18 = &unk_100382000;
  v60 = qword_100382508;
  v61 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
  swift_beginAccess();
  a4 = *(v60 + v61);
  if (a4 >> 62)
  {
    a3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    a3 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = v115;

  if (!a3)
  {
    goto LABEL_133;
  }

  v113 = v6;
  v63 = 0;
  v6 = (a4 & 0xC000000000000001);
  while (2)
  {
    if (v6)
    {
      v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v65 = (v63 + 1);
      if (__OFADD__(v63, 1))
      {
        break;
      }

      goto LABEL_122;
    }

    if (v63 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_214;
    }

    v64 = *(a4 + 8 * v63 + 32);

    v65 = (v63 + 1);
    if (!__OFADD__(v63, 1))
    {
LABEL_122:
      if (*(v64 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v62 && (*(v64 + 32) == 5067591 ? (v66 = *(v64 + 40) == 0xE300000000000000) : (v66 = 0), v66 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v62 = v115;
      }

      else
      {
      }

      ++v63;
      if (v65 == a3)
      {
        goto LABEL_132;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_132:
  LOBYTE(v6) = v113;
  v18 = &unk_100382000;
LABEL_133:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v67 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v67 = _swiftEmptyArrayStorage[2];
  }

  if (v67)
  {
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    v68 = qword_1003824C0;
    v69 = static os_log_type_t.default.getter();
    [*(v18[161] + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock];
    v70 = v18[161];
    v71 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v6 = v70;
    sub_1001FB200(&v70[v71], v115);
    v72 = *&v70[v71];
    if (v72 >> 62)
    {
      v105 = v42;
      v44 = _CocoaArrayWrapper.endIndex.getter();
      v42 = v105;
      if (v44 >= v105)
      {
        goto LABEL_175;
      }
    }

    else
    {
      v44 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44 >= v42)
      {
LABEL_175:
        sub_100204C40(v42, v44, sub_1001FE150);
        swift_endAccess();
        sub_10020D3C0(0);

        v28 = v18[161];
        goto LABEL_176;
      }
    }

    __break(1u);
  }

LABEL_142:
  if (v6 == 3)
  {

    goto LABEL_145;
  }

LABEL_144:
  v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v73 & 1) == 0)
  {
    goto LABEL_178;
  }

LABEL_145:
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v18 = &unk_100382000;
  v74 = qword_100382508;
  v75 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
  swift_beginAccess();
  a4 = *(v74 + v75);
  if (a4 >> 62)
  {
    a3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    a3 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v76 = v115;

  if (!a3)
  {
    goto LABEL_167;
  }

  v114 = v6;
  v77 = 0;
  v6 = (a4 & 0xC000000000000001);
  while (2)
  {
    if (v6)
    {
      v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v79 = (v77 + 1);
      if (__OFADD__(v77, 1))
      {
        break;
      }

      goto LABEL_156;
    }

    if (v77 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_215;
    }

    v78 = *(a4 + 8 * v77 + 32);

    v79 = (v77 + 1);
    if (!__OFADD__(v77, 1))
    {
LABEL_156:
      if (*(v78 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) != v76 || (*(v78 + 32) == 1398033749 ? (v80 = *(v78 + 40) == 0xE400000000000000) : (v80 = 0), v80 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v76 = v115;
      }

      ++v77;
      if (v79 == a3)
      {
        goto LABEL_166;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_166:
  LOBYTE(v6) = v114;
  v18 = &unk_100382000;
LABEL_167:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v81 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v81 = _swiftEmptyArrayStorage[2];
  }

  if (v81)
  {
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    v82 = qword_1003824C0;
    v83 = static os_log_type_t.default.getter();
    [*(v18[161] + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock];
    v84 = v18[161];
    v85 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v6 = v84;
    sub_1001FB580(&v84[v85], v115);
    v86 = *&v84[v85];
    if (v86 >> 62)
    {
      v106 = v42;
      v44 = _CocoaArrayWrapper.endIndex.getter();
      v42 = v106;
      if (v44 >= v106)
      {
        goto LABEL_175;
      }
    }

    else
    {
      v44 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44 >= v42)
      {
        goto LABEL_175;
      }
    }

    __break(1u);
LABEL_240:
    swift_once();
LABEL_182:
    a3 = &unk_100382000;
    v88 = qword_100382508;
    v89 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v90 = *(v88 + v89);
    if (v90 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v91 = v115;

    if (!v6)
    {
      goto LABEL_202;
    }

    a4 = 0;
    while (1)
    {
      if ((v90 & 0xC000000000000001) != 0)
      {
        a3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v92 = (a4 + 1);
        if (__OFADD__(a4, 1))
        {
          goto LABEL_200;
        }
      }

      else
      {
        if (a4 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_216;
        }

        a3 = *(v90 + 8 * a4 + 32);

        v92 = (a4 + 1);
        if (__OFADD__(a4, 1))
        {
LABEL_200:
          __break(1u);
LABEL_201:
          a3 = &unk_100382000;
LABEL_202:

          if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
          {
            v94 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v94 = _swiftEmptyArrayStorage[2];
          }

          if (!v94)
          {
            return;
          }

          if (qword_100374FD8 != -1)
          {
            swift_once();
          }

          v95 = qword_1003824C0;
          v96 = static os_log_type_t.default.getter();
          [*(a3[161] + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock];
          v97 = a3[161];
          v98 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
          swift_beginAccess();
          v99 = v97;
          sub_1001FB8E4(&v97[v98], v115);
          v101 = *&v97[v98];
          if (!(v101 >> 62))
          {
            v102 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v102 >= v100)
            {
              goto LABEL_210;
            }

LABEL_244:
            __break(1u);
            return;
          }

          v107 = v100;
          v102 = _CocoaArrayWrapper.endIndex.getter();
          v100 = v107;
          if (v102 < v107)
          {
            goto LABEL_244;
          }

LABEL_210:
          sub_100204C40(v100, v102, sub_1001FE150);
          swift_endAccess();
          sub_10020D3C0(0);

          v28 = a3[161];
LABEL_176:
          [*(v28 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) unlock];
          return;
        }
      }

      if (*(a3 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v91 && (a3[4] == 1398033749 ? (v93 = a3[5] == 0xE400000000000000) : (v93 = 0), v93 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v91 = v115;
      }

      else
      {
      }

      ++a4;
      if (v92 == v6)
      {
        goto LABEL_201;
      }
    }
  }

LABEL_178:
  if (v6 == 3)
  {

    return;
  }

  v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v87 & 1) == 0)
  {
    if (qword_100375020 != -1)
    {
      goto LABEL_240;
    }

    goto LABEL_182;
  }
}

double sub_1001FFA48(uint64_t a1)
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
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  return result;
}

void *sub_1001FFA94@<X0>(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = [a1 legacyInfo];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v9 + 16))
  {
    goto LABEL_18;
  }

  sub_1001A773C(v9 + 32, __src);

  sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    sub_1001FFA48(__src);
    return memcpy(a4, __src, 0x121uLL);
  }

  v10 = v147;
  if (!*(v147 + 16))
  {
LABEL_18:

    goto LABEL_19;
  }

  sub_100226314(v147);
  v13 = v12;
  result = kCTCellMonitorCellTypeServing;
  if (kCTCellMonitorCellTypeServing)
  {
    v15 = v11;
    if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
    {

      goto LABEL_12;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
LABEL_12:
      v58 = v13;
      v62 = v15;
      __src[0] = 1;
      LOBYTE(v77) = 1;
      __dst[0] = 1;
      LOBYTE(v75[0]) = 1;
      v147 = 0;
      v148 = 1;
      v150 = 0;
      v151 = 1;
      v153 = 0;
      v154 = 1;
      v156 = 0.0;
      v157 = 1;
      v159 = 0;
      v160 = 1;
      v162 = 0;
      v163 = 1;
      v165 = 0;
      v166 = 1;
      v168 = 0;
      v169 = 1;
      v172 = 0;
      v171 = 0;
      v173 = 6;
      v175 = 0;
      v176 = 1;
      v178 = 0;
      v179 = 1;
      v181 = 0;
      v182 = 1;
      *(&v183 + 7) = 0;
      HIBYTE(v183) = 1;
      *(&v184 + 7) = 0;
      HIBYTE(v184) = 1;
      *(&v185 + 7) = 0;
      HIBYTE(v185) = 1;
      *(&v186 + 7) = 0;
      HIBYTE(v186) = 1;
      *(&v187 + 7) = 0;
      HIBYTE(v187) = 1;
      *(&v188 + 7) = 0;
      HIBYTE(v188) = 1;
      sub_1001DFB0C(&v147);
      *(v145 + 3) = *&v149[3];
      v145[0] = *v149;
      *(v143 + 3) = *&v152[3];
      v143[0] = *v152;
      v74 = v153;
      v142 = v154;
      *(v141 + 3) = *&v155[3];
      v141[0] = *v155;
      v18 = v156;
      v140 = v157;
      *(v139 + 3) = *&v158[3];
      v139[0] = *v158;
      *(v137 + 3) = *&v161[3];
      v137[0] = *v161;
      *(v135 + 3) = *&v164[3];
      v135[0] = *v164;
      *(v133 + 3) = *&v167[3];
      v133[0] = *v167;
      *(v131 + 3) = *&v170[3];
      v131[0] = *v170;
      *(v130 + 3) = *&v174[3];
      v130[0] = *v174;
      v65 = v175;
      v66 = v176;
      v129 = v176;
      *(v128 + 3) = *&v177[3];
      v128[0] = *v177;
      v70 = v178;
      v72 = v179;
      v127 = v179;
      *(v126 + 3) = *&v180[3];
      v126[0] = *v180;
      v63 = v181;
      v64 = v182;
      v125 = v182;
      v119 = v183;
      v120 = v184;
      v123 = v187;
      v124 = v188;
      v121 = v185;
      v122 = v186;
      v146 = 0;
      v19 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:a3];
      v20 = [v19 slotID];

      v68 = v20 != 1;
      v144 = 0;
      sub_100225FC4(v10);
      v69 = v21;
      v138 = v22 & 1;
      sub_100225FD0(v10);
      v24 = v23;
      v134 = v25 & 1;
      sub_100225FDC(v10);
      v60 = v26;
      v132 = v27 & 1;
      sub_10022707C(v10);
      v67 = v28;
      v136 = 0;
      sub_10022731C(v10);
      if ((v30 & 1) == 0)
      {
        v142 = 0;
        v74 = v29;
      }

      sub_100226854(v10);
      if (v32)
      {
        goto LABEL_37;
      }

      v33 = v31;
      v34 = v24;
      v35 = a3;
      if (a2 == 2)
      {
      }

      else
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v36 & 1) == 0)
        {
LABEL_36:
          v140 = 0;
          v18 = v33;
          a3 = v35;
          v24 = v34;
LABEL_37:
          sub_100226B04(v10);
          v61 = a4;
          if (v39)
          {
            sub_100226B10(v10);
            if (v41)
            {
              sub_100227328(v10);
              v43 = v42;
              v45 = v44;

              v46 = v58;
              if ((v45 & 1) == 0)
              {
                v64 = 0;
                v125 = 0;
                v63 = v43;
              }
            }

            else
            {
              v50 = v40;
              v46 = v58;

              v66 = 0;
              v129 = 0;
              v65 = v50;
            }

            v48 = v72;
            v49 = v70;
          }

          else
          {
            v47 = v38;
            v46 = v58;

            v48 = 0;
            v127 = 0;
            v49 = v47;
          }

          v71 = v49;
          v73 = v48;
          v75[0] = a3;
          v59 = v146;
          LOBYTE(v75[1]) = v146;
          *(&v75[1] + 1) = v145[0];
          HIDWORD(v75[1]) = *(v145 + 3);
          v75[2] = v68;
          v57 = v144;
          LOBYTE(v75[3]) = v144;
          *(&v75[3] + 1) = v143[0];
          HIDWORD(v75[3]) = *(v143 + 3);
          v75[4] = v74;
          v56 = v142;
          LOBYTE(v75[5]) = v142;
          HIDWORD(v75[5]) = *(v141 + 3);
          *(&v75[5] + 1) = v141[0];
          *&v75[6] = v18;
          v55 = v140;
          LOBYTE(v75[7]) = v140;
          HIDWORD(v75[7]) = *(v139 + 3);
          *(&v75[7] + 1) = v139[0];
          v75[8] = v69;
          v54 = v138;
          LOBYTE(v75[9]) = v138;
          HIDWORD(v75[9]) = *(v137 + 3);
          *(&v75[9] + 1) = v137[0];
          v75[10] = v67;
          v53 = v136;
          LOBYTE(v75[11]) = v136;
          HIDWORD(v75[11]) = *(v135 + 3);
          *(&v75[11] + 1) = v135[0];
          v75[12] = v24;
          v52 = v134;
          LOBYTE(v75[13]) = v134;
          HIDWORD(v75[13]) = *(v133 + 3);
          *(&v75[13] + 1) = v133[0];
          v75[14] = v60;
          v51 = v132;
          LOBYTE(v75[15]) = v132;
          HIDWORD(v75[15]) = *(v131 + 3);
          *(&v75[15] + 1) = v131[0];
          v75[16] = v46;
          v75[17] = v62;
          LOBYTE(v75[18]) = a2;
          HIDWORD(v75[18]) = *(v130 + 3);
          *(&v75[18] + 1) = v130[0];
          v75[19] = v65;
          LOBYTE(v75[20]) = v66;
          HIDWORD(v75[20]) = *(v128 + 3);
          *(&v75[20] + 1) = v128[0];
          v75[21] = v49;
          LOBYTE(v75[22]) = v48;
          HIDWORD(v75[22]) = *(v126 + 3);
          *(&v75[22] + 1) = v126[0];
          v75[23] = v63;
          LOBYTE(v75[24]) = v64;
          *(&v75[32] + 1) = v123;
          *(&v75[34] + 1) = v124;
          *(&v75[26] + 1) = v120;
          *(&v75[24] + 1) = v119;
          *(&v75[30] + 1) = v122;
          *(&v75[28] + 1) = v121;
          memcpy(__dst, v75, sizeof(__dst));
          nullsub_1();
          v77 = a3;
          v78 = v59;
          *v79 = v145[0];
          *&v79[3] = *(v145 + 3);
          v80 = v68;
          v81 = v57;
          *v82 = v143[0];
          *&v82[3] = *(v143 + 3);
          v83 = v74;
          v84 = v56;
          *v85 = v141[0];
          *&v85[3] = *(v141 + 3);
          v86 = v18;
          v87 = v55;
          *&v88[3] = *(v139 + 3);
          *v88 = v139[0];
          v89 = v69;
          v90 = v54;
          *&v91[3] = *(v137 + 3);
          *v91 = v137[0];
          v92 = v67;
          v93 = v53;
          *&v94[3] = *(v135 + 3);
          *v94 = v135[0];
          v95 = v24;
          v96 = v52;
          *v97 = v133[0];
          *&v97[3] = *(v133 + 3);
          v98 = v60;
          v99 = v51;
          *v100 = v131[0];
          *&v100[3] = *(v131 + 3);
          v101 = v46;
          v102 = v62;
          v103 = a2;
          *&v104[3] = *(v130 + 3);
          *v104 = v130[0];
          v105 = v65;
          v106 = v66;
          *&v107[3] = *(v128 + 3);
          *v107 = v128[0];
          v108 = v71;
          v109 = v73;
          *&v110[3] = *(v126 + 3);
          *v110 = v126[0];
          v111 = v63;
          v112 = v64;
          v117 = v123;
          v118 = v124;
          v114 = v120;
          v113 = v119;
          v116 = v122;
          v115 = v121;
          sub_1001DFAB0(v75, __src);
          sub_1001DFB0C(&v77);
          memcpy(__src, __dst, 0x121uLL);
          a4 = v61;
          return memcpy(a4, __src, 0x121uLL);
        }
      }

      v37 = v33;
      if (v33 == 6.0)
      {
        v33 = 1.4;
      }

      else if (v33 == 15.0)
      {
        v33 = 3.0;
      }

      else if (v33 == 25.0)
      {
        v33 = 5.0;
      }

      else if (v33 == 50.0)
      {
        v33 = 10.0;
      }

      else if (v33 == 75.0)
      {
        v33 = 15.0;
      }

      else
      {
        if (v33 == 100.0)
        {
          v37 = 20.0;
        }

        v33 = v37;
      }

      goto LABEL_36;
    }

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002004E8(uint64_t a1)
{
  v1 = *(a1 + 136);
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

unint64_t sub_10020050C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_100200658(uint64_t a1, const void *a2, void *a3, void *a4)
{
  v90 = a4;
  v94 = type metadata accessor for FTMBandInfoDataModel(0);
  v96 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v92 = &v90 - v9;
  __chkstk_darwin(v10);
  v93 = &v90 - v11;
  __chkstk_darwin(v12);
  v111 = &v90 - v13;
  __chkstk_darwin(v14);
  v95 = &v90 - v15;
  __chkstk_darwin(v16);
  v18 = &v90 - v17;
  __chkstk_darwin(v19);
  v21 = &v90 - v20;
  v97 = a1 != 1;
  memcpy(v124, a2, 0x121uLL);
  v22 = _swiftEmptyArrayStorage;
  if (sub_1002004E8(v124) == 1)
  {
    goto LABEL_18;
  }

  v23 = v124[4];
  v131 = *(&v124[7] + 1);
  v132 = *(&v124[5] + 1);
  v129 = *(&v124[11] + 1);
  v130 = *(&v124[9] + 1);
  v24 = LOBYTE(v124[18]);
  v127 = *(&v124[18] + 1);
  v128 = *(&v124[13] + 1);
  v125 = *(&v124[22] + 1);
  v126 = *(&v124[20] + 1);
  v22 = _swiftEmptyArrayStorage;
  if ((v124[5] & 1) != 0 || v124[4] < 1)
  {
    goto LABEL_18;
  }

  if (LOBYTE(v124[18]) == 1)
  {

    goto LABEL_9;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
LABEL_9:
    v26 = a3;
    v27 = 110;
    goto LABEL_14;
  }

  if (v24 <= 2 && v24)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      v26 = a3;
      *&v113[0] = v23;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v89;
      goto LABEL_15;
    }
  }

  v26 = a3;
  v27 = 66;
LABEL_14:
  *&v113[0] = v27;
  *(&v113[0] + 1) = 0xE100000000000000;
  v112[0] = v23;
  v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v29);

  v31 = *(&v113[0] + 1);
  v30 = *&v113[0];
LABEL_15:
  v147 = *(&v132 + 7);
  v148 = HIBYTE(v132);
  v145 = *(&v131 + 7);
  v146 = HIBYTE(v131);
  v143 = *(&v126 + 7);
  v144 = HIBYTE(v126);
  v142 = HIBYTE(v127);
  v141 = *(&v127 + 7);
  v140 = HIBYTE(v125);
  v139 = *(&v125 + 7);
  v137 = *(&v130 + 7);
  v138 = HIBYTE(v130);
  v135 = *(&v129 + 7);
  v136 = HIBYTE(v129);
  v133 = *(&v128 + 7);
  v134 = HIBYTE(v128);
  v32 = *(v94 + 92);
  Date.init()();
  v33 = type metadata accessor for Date();
  (*(*(v33 - 8) + 56))(&v21[v32], 0, 1, v33);
  *v21 = v97;
  *(v21 + 4) = 0;
  *(v21 + 2) = 1;
  v21[24] = 0;
  v21[25] = v24;
  *(v21 + 4) = v30;
  *(v21 + 5) = v31;
  *(v21 + 6) = v147;
  v21[56] = v148;
  *(v21 + 8) = v145;
  v21[72] = v146;
  v21[88] = v144;
  *(v21 + 10) = v143;
  *(v21 + 12) = v141;
  v21[104] = v142;
  *(v21 + 14) = v139;
  v21[120] = v140;
  *(v21 + 16) = v137;
  v21[136] = v138;
  v21[152] = v136;
  *(v21 + 18) = v135;
  v34 = v133;
  v21[168] = v134;
  *(v21 + 20) = v34;
  *(v21 + 22) = 0;
  v21[184] = 1;
  *(v21 + 24) = 0;
  v21[200] = 1;
  *(v21 + 26) = 0;
  v21[216] = 1;
  *(v21 + 28) = 0;
  v21[232] = 1;
  *(v21 + 30) = 0;
  v21[248] = 1;
  *(v21 + 32) = 0;
  v21[264] = 1;
  v22 = sub_100224E3C(0, 1, 1, _swiftEmptyArrayStorage);
  v36 = v22[2];
  v35 = v22[3];
  if (v36 >= v35 >> 1)
  {
    v22 = sub_100224E3C((v35 > 1), v36 + 1, 1, v22);
  }

  a3 = v26;
  v22[2] = v36 + 1;
  sub_100204E18(v21, v22 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v36, type metadata accessor for FTMBandInfoDataModel);
LABEL_18:
  if (a3)
  {
    v37 = a3;
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
  }

  v99 = v37;
  v38 = v37[2];
  if (v38)
  {

    v98 = 1 - v38;
    v39 = 0x7FFFFFFFFFFFFFFDLL;
    v40 = 3;
    v41 = 32;
    v42 = v95;
    while (1)
    {
      v113[0] = *(v99 + v41);
      v43 = *(v99 + v41 + 16);
      v44 = *(v99 + v41 + 32);
      v45 = *(v99 + v41 + 64);
      v115 = *(v99 + v41 + 48);
      v116 = v45;
      v113[1] = v43;
      v114 = v44;
      v46 = *(v99 + v41 + 80);
      v47 = *(v99 + v41 + 96);
      v48 = *(v99 + v41 + 128);
      v119 = *(v99 + v41 + 112);
      v120 = v48;
      v117 = v46;
      v118 = v47;
      v49 = *(v99 + v41 + 144);
      v50 = *(v99 + v41 + 160);
      v51 = *(v99 + v41 + 176);
      *(v123 + 9) = *(v99 + v41 + 185);
      v122 = v50;
      v123[0] = v51;
      v121 = v49;
      v52 = *(&v114 + 1);
      if (*(&v114 + 1))
      {
        v108 = v41;
        v109 = v39;
        v53 = BYTE10(v121);
        v54 = v114;
        v55 = v115;
        v110 = v22;
        v56 = BYTE8(v115);
        v107 = v122;
        v106 = BYTE8(v122);
        v105 = *&v123[0];
        v104 = BYTE8(v123[0]);
        v103 = *&v123[1];
        v102 = BYTE8(v123[1]);
        v101 = v116;
        v100 = BYTE8(v116);
        v57 = *(v94 + 92);
        sub_100201470(v113, v112);
        Date.init()();
        v58 = type metadata accessor for Date();
        (*(*(v58 - 8) + 56))(&v18[v57], 0, 1, v58);
        *v18 = v97;
        *(v18 + 4) = 256;
        *(v18 + 2) = v40 - 1;
        v18[24] = 0;
        v18[25] = v53;
        *(v18 + 4) = v54;
        *(v18 + 5) = v52;
        *(v18 + 6) = v55;
        v18[56] = v56;
        v22 = v110;
        *(v18 + 8) = 0;
        v18[72] = 1;
        *(v18 + 10) = v107;
        v18[88] = v106;
        *(v18 + 12) = v105;
        v18[104] = v104;
        *(v18 + 14) = v103;
        v18[120] = v102;
        *(v18 + 16) = v101;
        v18[136] = v100;
        *(v18 + 18) = 0;
        v18[152] = 1;
        *(v18 + 20) = 0;
        v18[168] = 1;
        *(v18 + 22) = 0;
        v18[184] = 1;
        *(v18 + 24) = 0;
        v18[200] = 1;
        *(v18 + 26) = 0;
        v18[216] = 1;
        *(v18 + 28) = 0;
        v18[232] = 1;
        *(v18 + 30) = 0;
        v18[248] = 1;
        *(v18 + 32) = 0;
        v18[264] = 1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_100224E3C(0, v22[2] + 1, 1, v22);
        }

        v60 = v22[2];
        v59 = v22[3];
        v42 = v95;
        if (v60 >= v59 >> 1)
        {
          v22 = sub_100224E3C((v59 > 1), v60 + 1, 1, v22);
        }

        v22[2] = v60 + 1;
        sub_100204E18(v18, v22 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v60, type metadata accessor for FTMBandInfoDataModel);
        v41 = v108;
        v39 = v109;
      }

      if (!v39)
      {
        break;
      }

      if (v98 + v40 == 3)
      {

        goto LABEL_34;
      }

      ++v40;
      --v39;
      v41 += 208;
    }

    __break(1u);
    goto LABEL_79;
  }

  v40 = 2;
  v42 = v95;
LABEL_34:
  if (v90)
  {
    v61 = v90;
  }

  else
  {
    v61 = _swiftEmptyArrayStorage;
  }

  v62 = v61[2];
  if (v62)
  {
    v63 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v110 = v61;
    v64 = v61 + v63;
    v65 = *(v96 + 72);

    while (1)
    {
      sub_100204DB0(v64, v42, type metadata accessor for FTMBandInfoDataModel);
      *(v42 + 16) = v40;
      *(v42 + 24) = 0;
      sub_100204DB0(v42, v111, type metadata accessor for FTMBandInfoDataModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_100224E3C(0, v22[2] + 1, 1, v22);
      }

      v67 = v22[2];
      v66 = v22[3];
      if (v67 >= v66 >> 1)
      {
        v22 = sub_100224E3C((v66 > 1), v67 + 1, 1, v22);
      }

      sub_1002034BC(v42, type metadata accessor for FTMBandInfoDataModel);
      v22[2] = v67 + 1;
      sub_100204E18(v111, v22 + v63 + v67 * v65, type metadata accessor for FTMBandInfoDataModel);
      if (v40 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++v40;
      v64 += v65;
      if (!--v62)
      {
        goto LABEL_47;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
    goto LABEL_49;
  }

LABEL_47:

  if (!v22[2])
  {

    return;
  }

  v110 = v22;
  if (qword_100375020 != -1)
  {
    goto LABEL_85;
  }

LABEL_49:
  v68 = qword_100382508;
  v69 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
  swift_beginAccess();
  v111 = v69;
  v70 = *&v68[v69];
  v71 = v70 + 2;
  v72 = v70[2];
  if (!v72)
  {
    goto LABEL_59;
  }

  v73 = 0;
  v74 = (*(v96 + 80) + 32) & ~*(v96 + 80);
  v75 = *(v96 + 72);
  v76 = v74;
  while ((*(v70 + v74 + 8) & 1) != 0 || *(v70 + v74) != v97)
  {
    ++v73;
    v74 += v75;
    if (v72 == v73)
    {
      goto LABEL_59;
    }
  }

  v77 = v73 + 1;
  if (!__OFADD__(v73, 1))
  {
    v78 = v68;
    if (v77 == v72)
    {
      v77 = v72;
LABEL_57:
      v72 = v73;
      if (v77 >= v73)
      {
        goto LABEL_60;
      }

      __break(1u);
LABEL_59:
      v79 = v68;
      v77 = v72;
LABEL_60:
      sub_1001FCA80(v72, v77, sub_100224E3C, type metadata accessor for FTMBandInfoDataModel);
      swift_endAccess();
      sub_10020CF1C();

      v80 = qword_100382508;
      swift_beginAccess();
      v81 = v80;
      sub_1001E30CC(v110, sub_100224E3C, type metadata accessor for FTMBandInfoDataModel);
      swift_endAccess();
      sub_10020CF1C();

      return;
    }

    v82 = v75 + v74;
    while (1)
    {
      if (v77 >= v72)
      {
        goto LABEL_80;
      }

      v83 = v93;
      sub_100204DB0(v70 + v82, v93, type metadata accessor for FTMBandInfoDataModel);
      if (*(v83 + 8))
      {
        sub_1002034BC(v83, type metadata accessor for FTMBandInfoDataModel);
      }

      else
      {
        v84 = v83;
        v85 = *v83;
        sub_1002034BC(v84, type metadata accessor for FTMBandInfoDataModel);
        if (v85 == v97)
        {
          goto LABEL_64;
        }
      }

      if (v77 != v73)
      {
        if ((v73 & 0x8000000000000000) != 0)
        {
          goto LABEL_81;
        }

        v86 = *v71;
        if (v73 >= *v71)
        {
          goto LABEL_82;
        }

        sub_100204DB0(v70 + v76 + v73 * v75, v92, type metadata accessor for FTMBandInfoDataModel);
        if (v77 >= v86)
        {
          goto LABEL_83;
        }

        sub_100204DB0(v70 + v82, v91, type metadata accessor for FTMBandInfoDataModel);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88 = v111;
        *&v68[v111] = v70;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v70 = sub_1001FA6F4(v70);
          *&v68[v88] = v70;
        }

        sub_100204E80(v91, v70 + v76 + v73 * v75, type metadata accessor for FTMBandInfoDataModel);
        *&v68[v88] = v70;
        if (v77 >= v70[2])
        {
          goto LABEL_84;
        }

        sub_100204E80(v92, v70 + v82, type metadata accessor for FTMBandInfoDataModel);
        *&v68[v88] = v70;
      }

      ++v73;
LABEL_64:
      ++v77;
      v71 = v70 + 2;
      v72 = v70[2];
      v82 += v75;
      if (v77 == v72)
      {
        goto LABEL_57;
      }
    }
  }

  __break(1u);
}

_OWORD *sub_100201570(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100201638(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100201650()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10020169C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002016E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100201730()
{
  if (*(v0 + 160) != 1)
  {
  }

  return _swift_deallocObject(v0, 344, 7);
}

void sub_1002017A4(void *a1, uint64_t a2)
{
  *&v190 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v188 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for Metric(0);
  __chkstk_darwin(v187);
  v7 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v189 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v168 - v12;
  v14 = type metadata accessor for FTMBandInfoDataModel(0);
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14 - 8).n128_u64[0];
  v18 = (&v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v186 = [a1 slotID];
  v191 = v186 != 1;
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v19 = sub_10021AF50();
  v20 = v19[2];
  if (!v20)
  {
LABEL_10:

    return;
  }

  v180 = v7;
  v181 = v4;
  v182 = v3;
  v184 = v13;
  v185 = v9;
  v183 = v8;
  v21 = 0;
  v22 = 0x79636167654CLL;
  v23 = 0x61746144205443;
  while (1)
  {
    if (v21 >= v19[2])
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v105)
      {
LABEL_83:
        v99 = 0xE400000000000000;
      }

      else
      {
LABEL_81:
        v99 = 0xE000000000000000;
      }

LABEL_84:
      if ((v99 & 0x700000000000000) != 0)
      {
        LODWORD(v178) = v186 != 1;
        v106 = v184;
        UUID.init()();
        v107 = *(v23 + 1288);
        v108 = *(v185 + 16);
        v176 = (v185 + 16);
        v177 = v108;
        v108(v189, v106, v183);
        v191 = v107;
        v175 = String._bridgeToObjectiveC()();

        v174 = String._bridgeToObjectiveC()();
        sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
        v173 = NSString.init(stringLiteral:)("rscp_ct", 7, 2);
        v172 = NSString.init(stringLiteral:)("rscp_ct", 7, 2);
        v109 = [v18 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v110 = String._bridgeToObjectiveC()();

        v111 = NSString.init(stringLiteral:)("INT", 3, 2);
        v112 = v188;
        Date.init()();
        UUID.uuidString.getter();
        v169 = String._bridgeToObjectiveC()();

        v113 = v187;
        v114 = v187[15];
        v168 = v187[14];
        v170 = v187[16];
        v171 = v18;
        v115 = v180;
        v116 = v189;
        v117 = v183;
        v177(v180, v189, v183);
        *(v115 + v113[5]) = v175;
        *(v115 + v113[6]) = v174;
        *(v115 + v113[7]) = v173;
        *(v115 + v113[8]) = v172;
        *(v115 + v113[9]) = v110;
        *(v115 + v113[10]) = v111;
        v118 = v181;
        v119 = v182;
        (*(v181 + 16))(v115 + v113[11], v112, v182);
        *(v115 + v113[12]) = v169;
        v120 = v113[13];
        v23 = 0x100382000;
        *(v115 + v120) = v178;
        *(v115 + v168) = 0;
        *(v115 + v114) = 0;
        (*(v118 + 8))(v112, v119);
        v121 = *(v185 + 8);
        v122 = v117;
        v121(v116, v117);
        *(v170 + v115) = xmmword_1002F2090;
        v123 = v191;
        sub_100215264(v115);

        sub_1002034BC(v115, type metadata accessor for Metric);
        v121(v184, v122);
      }

      else
      {
      }

LABEL_87:
      v124 = [v190 ecn0];
      if (!v124)
      {
        return;
      }

      v18 = v124;
      v95 = Int.init(truncating:)();
      v90 = *(v23 + 1288);
      v84 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
      swift_beginAccess();
      v89 = *&v90[v84];
      v96 = v90;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v90[v84] = v89;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_131:
        v89 = sub_1001FA6F4(v89);
      }

      if (v21 >= v89[2])
      {
        __break(1u);
      }

      else
      {
        v126 = v89 + v179 + v22;
        *(v126 + 32) = v95;
        v126[264] = 0;
        *&v90[v84] = v89;
        swift_endAccess();
        sub_10020CF1C();

        if (qword_100374F98 == -1)
        {
          goto LABEL_91;
        }
      }

      swift_once();
LABEL_91:
      v127 = qword_100382480;
      v128 = static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v129 = swift_allocObject();
      v190 = xmmword_1002EED40;
      *(v129 + 16) = xmmword_1002EED40;
      v193 = v95;
      v130 = dispatch thunk of CustomStringConvertible.description.getter();
      v132 = v131;
      *(v129 + 56) = &type metadata for String;
      *(v129 + 64) = sub_1001A76E8();
      *(v129 + 32) = v130;
      *(v129 + 40) = v132;
      os_log(_:dso:log:type:_:)("Primary Cell updateMeasurementData ECN0 %{private}s", 51, 2, &_mh_execute_header, v127, v128, v129);

      v133 = *(v23 + 1288);
      v134 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
      swift_beginAccess();
      v135 = *&v133[v134];
      if (v21 >= *(v135 + 16))
      {
        __break(1u);
        goto LABEL_135;
      }

      v136 = *(v135 + v179 + v22 + 25);
      if (v136 > 3)
      {
        v137 = v18;
        if (v136 > 5)
        {
          v138 = 5067591;
          if (v136 != 6)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v138 = 5067591;
          if (v136 != 4)
          {
            v139 = v23;
            v140 = 0xE300000000000000;

            v138 = 5067591;
LABEL_102:
            v142 = v185;
            goto LABEL_116;
          }
        }
      }

      else
      {
        v137 = v18;
        v138 = 5067591;
      }

      v140 = 0xE300000000000000;
      v141 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v141)
      {
        v139 = v23;
        goto LABEL_102;
      }

LABEL_103:
      v143 = *(v23 + 1288);
      v144 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
      swift_beginAccess();
      v145 = *(v143 + v144);
      if (v21 >= *(v145 + 16))
      {
LABEL_137:
        __break(1u);
        return;
      }

      v139 = v23;
      v138 = 1398033749;
      v146 = *(v145 + v179 + v22 + 25);
      if (v146 > 3)
      {
        v142 = v185;
        if (v146 > 5 && v146 != 6)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v142 = v185;
        if (v146 > 1 && v146 != 2)
        {

          goto LABEL_115;
        }
      }

      v147 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v147 & 1) == 0)
      {
LABEL_113:
        v138 = 0;
        v140 = 0xE000000000000000;
        goto LABEL_116;
      }

LABEL_115:
      v140 = 0xE400000000000000;
LABEL_116:
      if ((v140 & 0x700000000000000) == 0)
      {

        return;
      }

      LODWORD(v191) = v186 != 1;
      UUID.init()();
      v148 = *(v139 + 1288);
      v176 = *(v142 + 16);
      v149 = v137;
      v150 = v189;
      v176();
      v177 = v148;
      v175 = String._bridgeToObjectiveC()();
      v174 = String._bridgeToObjectiveC()();
      sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
      v173 = NSString.init(stringLiteral:)("ecn0_ct", 7, 2);
      v172 = NSString.init(stringLiteral:)("ecn0_ct", 7, 2);
      v151 = [v149 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v186 = v149;
      v179 = v140;

      v152 = String._bridgeToObjectiveC()();

      v153 = NSString.init(stringLiteral:)("INT", 3, 2);
      v178 = v138;
      v154 = v188;
      Date.init()();
      UUID.uuidString.getter();
      v170 = String._bridgeToObjectiveC()();

      v155 = v187;
      v156 = v187[15];
      v169 = v187[14];
      v171 = v187[16];
      v157 = v180;
      v158 = v183;
      (v176)(v180, v150, v183);
      v159 = v185;
      *(v157 + v155[5]) = v175;
      *(v157 + v155[6]) = v174;
      *(v157 + v155[7]) = v173;
      *(v157 + v155[8]) = v172;
      *(v157 + v155[9]) = v152;
      *(v157 + v155[10]) = v153;
      v160 = v181;
      v161 = v182;
      (*(v181 + 16))(v157 + v155[11], v154, v182);
      *(v157 + v155[12]) = v170;
      *(v157 + v155[13]) = v191;
      *(v169 + v157) = 0;
      *(v157 + v156) = 0;
      v22 = v158;
      (*(v160 + 8))(v154, v161);
      v129 = *(v159 + 8);
      (v129)(v150, v158);
      *(v171 + v157) = xmmword_1002F2090;
      v162 = v177;
      sub_100215264(v157);

      sub_1002034BC(v157, type metadata accessor for Metric);
      v133 = [objc_opt_self() defaultCenter];
      if (qword_100374FE0 == -1)
      {
LABEL_118:
        v163 = static NSNotificationName.NewABMMetric;
        sub_1001A551C(&qword_100377050, &qword_1002F21F0);
        inited = swift_initStackObject();
        *(inited + 16) = v190;
        strcpy(v192, "metricObject");
        HIBYTE(v192[6]) = 0;
        v192[7] = -5120;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for MetricNotificationObject;
        v165 = swift_allocObject();
        *(inited + 72) = v165;
        v166 = v179;
        *(v165 + 16) = v178;
        *(v165 + 24) = v166;
        *(v165 + 32) = 5521746;
        *(v165 + 40) = 0xE300000000000000;
        *(v165 + 48) = v191;
        sub_1001FD020(inited);
        swift_setDeallocating();
        sub_1001AC99C(inited + 32, &qword_100377058, &qword_1002F21F8);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v133 postNotificationName:v163 object:0 userInfo:isa];

        (v129)(v184, v22);
        return;
      }

LABEL_135:
      swift_once();
      goto LABEL_118;
    }

    if (*(v19 + v21 + 32) && *(v19 + v21 + 32) != 1)
    {
      break;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_14;
    }

    if (v20 == ++v21)
    {
      goto LABEL_10;
    }
  }

LABEL_14:

  v23 = &unk_100382000;
  v25 = qword_100382508;
  v26 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
  swift_beginAccess();
  v27 = *(v25 + v26);
  v28 = *(v27 + 16);
  if (!v28)
  {
    return;
  }

  v179 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v29 = v27 + v179;

  v21 = 0;
  while (2)
  {
    if (v21 >= *(v27 + 16))
    {
      goto LABEL_79;
    }

    v22 = *(v15 + 72) * v21;
    sub_100204DB0(v29 + v22, v18, type metadata accessor for FTMBandInfoDataModel);
    if ((v18[1] & 1) != 0 || *v18 != v191)
    {
      sub_1002034BC(v18, type metadata accessor for FTMBandInfoDataModel);
      goto LABEL_17;
    }

    v30 = *(v18 + 9);
    if (v30 > 2 || v30 == 1 || v30 == 2)
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1002034BC(v18, type metadata accessor for FTMBandInfoDataModel);
      if (v31)
      {
        goto LABEL_29;
      }

LABEL_17:
      if (v28 == ++v21)
      {

        return;
      }

      continue;
    }

    break;
  }

  sub_1002034BC(v18, type metadata accessor for FTMBandInfoDataModel);
LABEL_29:

  if (v190)
  {
    v32 = [v190 rsrp];
    if (!v32)
    {
      goto LABEL_36;
    }

    v18 = v32;
    v33 = Int.init(truncating:)();
    v34 = qword_100382508;
    v35 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
    swift_beginAccess();
    v36 = *&v34[v35];
    v37 = v34;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    *&v34[v35] = v36;
    if ((v38 & 1) == 0)
    {
      v36 = sub_1001FA6F4(v36);
    }

    if (v21 >= v36[2])
    {
      __break(1u);
      goto LABEL_121;
    }

    v39 = (v36 + v179 + v22);
    v39[22] = v33;
    *(v39 + 184) = 0;
    *&v34[v35] = v36;
    swift_endAccess();
    sub_10020CF1C();

    if (qword_100374F98 != -1)
    {
      goto LABEL_123;
    }

    while (1)
    {
      v40 = qword_100382480;
      v41 = static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1002EED40;
      v193 = v33;
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      *(v42 + 56) = &type metadata for String;
      *(v42 + 64) = sub_1001A76E8();
      *(v42 + 32) = v43;
      *(v42 + 40) = v45;
      os_log(_:dso:log:type:_:)("Primary Cell updateMeasurementData RSRP %{private}s", 51, 2, &_mh_execute_header, v40, v41, v42);

LABEL_36:
      v46 = [v190 rsrq];
      if (!v46)
      {
        goto LABEL_41;
      }

      v18 = v46;
      v33 = Int.init(truncating:)();
      v34 = qword_100382508;
      v35 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
      swift_beginAccess();
      v36 = *&v34[v35];
      v37 = v34;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      *&v34[v35] = v36;
      if ((v47 & 1) == 0)
      {
LABEL_121:
        v36 = sub_1001FA6F4(v36);
      }

      if (v21 < v36[2])
      {
        break;
      }

      __break(1u);
LABEL_123:
      swift_once();
    }

    v48 = (v36 + v179 + v22);
    v48[24] = v33;
    *(v48 + 200) = 0;
    *&v34[v35] = v36;
    swift_endAccess();
    sub_10020CF1C();

    if (qword_100374F98 != -1)
    {
      goto LABEL_125;
    }

    while (1)
    {
      v49 = qword_100382480;
      v50 = static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1002EED40;
      v193 = v33;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      *(v51 + 56) = &type metadata for String;
      *(v51 + 64) = sub_1001A76E8();
      *(v51 + 32) = v52;
      *(v51 + 40) = v54;
      os_log(_:dso:log:type:_:)("Primary Cell updateMeasurementData RSRQ %{private}s", 51, 2, &_mh_execute_header, v49, v50, v51);

LABEL_41:
      v55 = [v190 rssi];
      if (!v55)
      {
        goto LABEL_47;
      }

      v18 = v55;
      v33 = Int.init(truncating:)();
      v56 = qword_100382508;
      v57 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
      swift_beginAccess();
      v58 = *&v56[v57];
      v59 = v56;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      *&v56[v57] = v58;
      if ((v60 & 1) == 0)
      {
        v58 = sub_1001FA6F4(v58);
      }

      if (v21 < v58[2])
      {
        break;
      }

      __break(1u);
LABEL_125:
      swift_once();
    }

    v61 = (v58 + v179 + v22);
    v61[26] = v33;
    *(v61 + 216) = 0;
    *&v56[v57] = v58;
    swift_endAccess();
    sub_10020CF1C();

    if (qword_100374F98 != -1)
    {
      goto LABEL_127;
    }

    while (1)
    {
      v62 = qword_100382480;
      v63 = static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1002EED40;
      v193 = v33;
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      *(v64 + 56) = &type metadata for String;
      *(v64 + 64) = sub_1001A76E8();
      *(v64 + 32) = v65;
      *(v64 + 40) = v67;
      os_log(_:dso:log:type:_:)("Primary Cell updateMeasurementData RSSI %{private}s", 51, 2, &_mh_execute_header, v62, v63, v64);

LABEL_47:
      v68 = [v190 snr];
      if (!v68)
      {
        goto LABEL_53;
      }

      v18 = v68;
      Double.init(truncating:)();
      v70 = v69;
      v71 = qword_100382508;
      v72 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
      swift_beginAccess();
      v33 = *&v71[v72];
      v73 = v71;
      v74 = swift_isUniquelyReferenced_nonNull_native();
      *&v71[v72] = v33;
      if ((v74 & 1) == 0)
      {
        v33 = sub_1001FA6F4(v33);
      }

      if (v21 < v33[2])
      {
        break;
      }

      __break(1u);
LABEL_127:
      swift_once();
    }

    v75 = v33 + v179 + v22;
    *(v75 + 28) = v70;
    v75[232] = 0;
    *&v71[v72] = v33;
    swift_endAccess();
    sub_10020CF1C();

    if (qword_100374F98 != -1)
    {
      goto LABEL_129;
    }

    while (1)
    {
      v76 = qword_100382480;
      v77 = static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1002EED40;
      v193 = 0;
      v194 = 0xE000000000000000;
      Double.write<A>(to:)();
      v79 = v193;
      v80 = v194;
      *(v78 + 56) = &type metadata for String;
      *(v78 + 64) = sub_1001A76E8();
      *(v78 + 32) = v79;
      *(v78 + 40) = v80;
      os_log(_:dso:log:type:_:)("Primary Cell updateMeasurementData SNR %{private}s", 50, 2, &_mh_execute_header, v76, v77, v78);

LABEL_53:
      v81 = [v190 rscp];
      if (!v81)
      {
        goto LABEL_87;
      }

      v18 = v81;
      v82 = Int.init(truncating:)();
      v83 = qword_100382508;
      v84 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
      swift_beginAccess();
      v85 = *&v83[v84];
      v86 = v83;
      v87 = swift_isUniquelyReferenced_nonNull_native();
      *&v83[v84] = v85;
      if ((v87 & 1) == 0)
      {
        v85 = sub_1001FA6F4(v85);
      }

      if (v21 < v85[2])
      {
        break;
      }

      __break(1u);
LABEL_129:
      swift_once();
    }

    v88 = v85 + v179 + v22;
    *(v88 + 30) = v82;
    v88[248] = 0;
    *&v83[v84] = v85;
    swift_endAccess();
    sub_10020CF1C();

    if (qword_100374F98 != -1)
    {
      swift_once();
    }

    v89 = qword_100382480;
    v90 = static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_1002EED40;
    v193 = v82;
    v92 = dispatch thunk of CustomStringConvertible.description.getter();
    v94 = v93;
    *(v91 + 56) = &type metadata for String;
    *(v91 + 64) = sub_1001A76E8();
    *(v91 + 32) = v92;
    *(v91 + 40) = v94;
    os_log(_:dso:log:type:_:)("Primary Cell updateMeasurementData RSCP %{private}s", 51, 2, &_mh_execute_header, v89, v90, v91);

    v95 = qword_100382508;
    v96 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
    swift_beginAccess();
    v97 = *&v96[v95];
    if (v21 >= *(v97 + 16))
    {
      __break(1u);
      goto LABEL_131;
    }

    v98 = *(v97 + v179 + v22 + 25);
    if (v98 <= 3)
    {
      goto LABEL_67;
    }

    if (v98 <= 5)
    {
      if (v98 != 4)
      {
        v99 = 0xE300000000000000;

        goto LABEL_84;
      }

      goto LABEL_67;
    }

    if (v98 == 6)
    {
LABEL_67:
      v99 = 0xE300000000000000;
      v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v100)
      {
        goto LABEL_84;
      }
    }

    v101 = qword_100382508;
    v102 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
    swift_beginAccess();
    v103 = *(v101 + v102);
    if (v21 >= *(v103 + 16))
    {
      __break(1u);
      goto LABEL_137;
    }

    v104 = *(v103 + v179 + v22 + 25);
    if (v104 > 3)
    {
      if (v104 > 5 && v104 != 6)
      {
        goto LABEL_81;
      }
    }

    else if (v104 > 1 && v104 != 2)
    {

      goto LABEL_83;
    }

    goto LABEL_80;
  }
}

uint64_t sub_10020342C()
{

  return _swift_deallocObject(v0, 52, 7);
}

uint64_t sub_10020346C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001E1BB4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002034BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10020356C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002035C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10020369C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1002036F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100203740()
{
  if (*(v0 + 160) != 1)
  {
  }

  return _swift_deallocObject(v0, 336, 7);
}

uint64_t sub_100203798(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v79 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Metric(0);
  __chkstk_darwin(v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v83 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v82 = &v64 - v14;
  UUID.init()();
  v15 = [a1 slotID] != 1;
  if (a2)
  {
    v16 = [a2 rsrp];
    v78 = v15;
    v77 = v4;
    v76 = v5;
    v80 = v10;
    v81 = v12;
    if (v16)
    {
      v17 = v16;
      v74 = a2;
      v18 = v10;
      if (qword_100374FD8 != -1)
      {
        swift_once();
      }

      v19 = qword_1003824C0;
      v20 = static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1002EED50;
      v75 = a1;
      v22 = [a1 slotID];
      v23 = sub_1001A76E8();
      v24 = 48;
      if (v22 != 1)
      {
        v24 = 49;
      }

      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = v23;
      *(v21 + 32) = v24;
      *(v21 + 40) = 0xE100000000000000;
      *(v21 + 96) = sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
      *(v21 + 104) = sub_10020346C(&qword_1003770C0, &unk_10037A2C0, NSNumber_ptr);
      *(v21 + 72) = v17;
      v25 = v17;
      os_log(_:dso:log:type:_:)("RSRP11~CT~5G %{private}@ - %{private}@", 38, 2, &_mh_execute_header, v19, v20, v21);

      if (qword_100375020 != -1)
      {
        swift_once();
      }

      v26 = qword_100382508;
      v72 = *(v83 + 16);
      v72(v12, v82, v18);
      sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
      v73 = v26;
      v70 = NSString.init(stringLiteral:)("5G", 2, 2);
      v69 = NSString.init(stringLiteral:)("RAT", 3, 2);
      v68 = NSString.init(stringLiteral:)("rsrp_ct", 7, 2);
      v67 = NSString.init(stringLiteral:)("rsrp_ct", 7, 2);
      v27 = [v25 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v25;

      v66 = String._bridgeToObjectiveC()();

      v28 = NSString.init(stringLiteral:)("INT", 3, 2);
      v29 = v79;
      Date.init()();
      UUID.uuidString.getter();
      v30 = String._bridgeToObjectiveC()();

      v32 = v7[14];
      v31 = v7[15];
      v65 = v7[16];
      v10 = v80;
      v72(v9, v81, v80);
      *&v9[v7[5]] = v70;
      *&v9[v7[6]] = v69;
      *&v9[v7[7]] = v68;
      *&v9[v7[8]] = v67;
      *&v9[v7[9]] = v66;
      *&v9[v7[10]] = v28;
      v33 = v76;
      v34 = v77;
      (*(v76 + 16))(&v9[v7[11]], v29, v77);
      *&v9[v7[12]] = v30;
      v15 = v78;
      *&v9[v7[13]] = v78;
      v9[v32] = 0;
      v9[v31] = 0;
      (*(v33 + 8))(v29, v34);
      (*(v83 + 8))(v81, v10);
      *&v9[v65] = xmmword_1002F2090;
      v35 = v73;
      sub_100215264(v9);

      sub_1002034BC(v9, type metadata accessor for Metric);
      a1 = v75;
      a2 = v74;
    }

    v36 = [a2 snr];
    if (v36)
    {
      v37 = v36;
      v38 = a1;
      if (qword_100374FD8 != -1)
      {
        swift_once();
      }

      v39 = qword_1003824C0;
      v40 = static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1002EED50;
      v42 = [v38 slotID];
      v43 = sub_1001A76E8();
      v44 = 48;
      if (v42 != 1)
      {
        v44 = 49;
      }

      *(v41 + 56) = &type metadata for String;
      *(v41 + 64) = v43;
      *(v41 + 32) = v44;
      *(v41 + 40) = 0xE100000000000000;
      *(v41 + 96) = sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
      *(v41 + 104) = sub_10020346C(&qword_1003770C0, &unk_10037A2C0, NSNumber_ptr);
      *(v41 + 72) = v37;
      v45 = v37;
      os_log(_:dso:log:type:_:)("SNR11~CT~5G %{private}@ - %{private}@", 37, 2, &_mh_execute_header, v39, v40, v41);

      if (qword_100375020 != -1)
      {
        swift_once();
      }

      v46 = qword_100382508;
      v74 = *(v83 + 16);
      (v74)(v81, v82, v10);
      sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
      v75 = v46;
      v72 = NSString.init(stringLiteral:)("5G", 2, 2);
      v71 = NSString.init(stringLiteral:)("RAT", 3, 2);
      v70 = NSString.init(stringLiteral:)("snr_ct", 6, 2);
      v69 = NSString.init(stringLiteral:)("snr_ct", 6, 2);
      v47 = [v45 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v45;

      v48 = String._bridgeToObjectiveC()();

      v49 = NSString.init(stringLiteral:)("INT", 3, 2);
      v50 = v79;
      Date.init()();
      UUID.uuidString.getter();
      v51 = String._bridgeToObjectiveC()();

      v53 = v7[14];
      v52 = v7[15];
      v68 = v7[16];
      v54 = v81;
      (v74)(v9, v81, v80);
      *&v9[v7[5]] = v72;
      *&v9[v7[6]] = v71;
      *&v9[v7[7]] = v70;
      *&v9[v7[8]] = v69;
      *&v9[v7[9]] = v48;
      *&v9[v7[10]] = v49;
      v55 = v76;
      v56 = v77;
      (*(v76 + 16))(&v9[v7[11]], v50, v77);
      *&v9[v7[12]] = v51;
      v10 = v80;
      v15 = v78;
      *&v9[v7[13]] = v78;
      v9[v53] = 0;
      v9[v52] = 0;
      (*(v55 + 8))(v50, v56);
      (*(v83 + 8))(v54, v10);
      *&v9[v68] = xmmword_1002F2090;
      v57 = v75;
      sub_100215264(v9);

      sub_1002034BC(v9, type metadata accessor for Metric);
    }
  }

  v58 = [objc_opt_self() defaultCenter];
  if (qword_100374FE0 != -1)
  {
    swift_once();
  }

  v59 = static NSNotificationName.NewABMMetric;
  sub_1001A551C(&qword_100377050, &qword_1002F21F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002EED40;
  strcpy(v84, "metricObject");
  HIBYTE(v84[6]) = 0;
  v84[7] = -5120;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for MetricNotificationObject;
  v61 = swift_allocObject();
  *(inited + 72) = v61;
  *(v61 + 16) = 18229;
  *(v61 + 24) = 0xE200000000000000;
  *(v61 + 32) = 5521746;
  *(v61 + 40) = 0xE300000000000000;
  *(v61 + 48) = v15;
  sub_1001FD020(inited);
  swift_setDeallocating();
  sub_1001AC99C(inited + 32, &qword_100377058, &qword_1002F21F8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v58 postNotificationName:v59 object:0 userInfo:isa];

  return (*(v83 + 8))(v82, v10);
}

void sub_100204394(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isApplicationForeground) == 1)
  {
    sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1002EED50;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = 0xD00000000000001DLL;
    *(v3 + 40) = 0x80000001002BC380;
    *(v3 + 88) = sub_1001E1BB4(0, &unk_100377260, CTLazuliSystemConfiguration_ptr);
    *(v3 + 64) = a1;
    v4 = a1;
    print(_:separator:terminator:)();

    v5 = *(v1 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8[4] = sub_100205118;
    v8[5] = v6;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_1002050F8;
    v8[3] = &unk_10031EEA0;
    v7 = _Block_copy(v8);

    [v5 getSubscriptionInfo:v7];
    _Block_release(v7);
  }
}

unint64_t sub_10020452C(unint64_t result, _BYTE *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + 224 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 224 * v7;
  a2 = (v9 + 32 + 224 * v8);
  if (result != a2 || result >= &a2[224 * v14])
  {
    result = memmove(result, a2, 224 * v14);
  }

  v16 = *(v9 + 16);
  v11 = __OFADD__(v16, v12);
  v17 = v16 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v17;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  memmove(v10, v6, 0xE0uLL);
  a3 = &qword_100377258;
  a4 = &qword_1002F23F8;
  a2 = v18;
  result = v6;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_1001AC934(result, a2, a3, a4);
    __break(1u);
    return result;
  }

  return sub_1001AC934(v6, v18, &qword_100377258, &qword_1002F23F8);
}

unint64_t sub_100204650(unint64_t result, _BYTE *a2, uint64_t *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_100224E64(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_10020452C(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_100204724(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 224 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 224 * a3;
  v13 = (v7 + 32 + 224 * a2);
  if (result != v13 || result >= v13 + 224 * v12)
  {
    result = memmove(result, v13, 224 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void *sub_1002047FC(void *result, int a2, void *a3)
{
  v4 = result;
  if (qword_100375018 != -1)
  {
    result = swift_once();
  }

  if (*(qword_100382500 + 26) == 1)
  {
    if (qword_100374FD8 != -1)
    {
      swift_once();
    }

    v5 = qword_1003824C0;
    v6 = static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1002EED30;
    v8 = v4;
    sub_1001A551C(&qword_100377238, &qword_1002F23D8);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    *(v7 + 56) = &type metadata for String;
    v12 = sub_1001A76E8();
    *(v7 + 64) = v12;
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    type metadata accessor for CTDataConnectionType(0);
    v13 = String.init<A>(describing:)();
    *(v7 + 96) = &type metadata for String;
    *(v7 + 104) = v12;
    *(v7 + 72) = v13;
    *(v7 + 80) = v14;
    v15 = a3;
    sub_1001A551C(&qword_100377240, &qword_1002F23E0);
    v16 = String.init<A>(describing:)();
    *(v7 + 136) = &type metadata for String;
    *(v7 + 144) = v12;
    *(v7 + 112) = v16;
    *(v7 + 120) = v17;
    os_log(_:dso:log:type:_:)("connectionStateChanged context  ---> %{public}s and connection ---> %{public}s and statusinfo %{public}s", 104, 2, &_mh_execute_header, v5, v6, v7);
  }

  return result;
}

void sub_1002049CC(uint64_t a1)
{
  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  v2 = qword_1003824C0;
  v3 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("connectionAvailability context  connectionAvailability", 54, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);
  v4 = *(v1 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_100205118;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1002050F8;
  v7[3] = &unk_10031EDB0;
  v6 = _Block_copy(v7);

  [v4 getSubscriptionInfo:v6];
  _Block_release(v6);
}

uint64_t sub_100204B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1001E1BB4(0, &qword_100377140, CellularLoggingFileInformation_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100204C40(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v6 = a1;
    v7 = *v5;
    v8 = *v5 >> 62;
    v13 = a3;
    if (!v8)
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (v12)
  {
    goto LABEL_18;
  }

  sub_1001FA438(result, 1);

  return v13(v6, v4, 0);
}

uint64_t sub_100204D38()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100204D78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100204DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100204E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100204E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100204EE8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100204F58()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100204FB8(uint64_t (*a1)(uint64_t, void))
{
  result = *(v1 + 24);
  if (result)
  {
    return a1(result, *(v1 + 32));
  }

  __break(1u);
  return result;
}

uint64_t sub_100204FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_1003772A0, &qword_1002F11B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020511C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100205190(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x61746144205443;
  if (v2 != 1)
  {
    v4 = 0x666E4920646E6142;
    v3 = 0xE90000000000006FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x79636167654CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x61746144205443;
  if (*a2 != 1)
  {
    v8 = 0x666E4920646E6142;
    v7 = 0xE90000000000006FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x79636167654CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100205298()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020533C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002053CC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10020546C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002057E0(*a1);
  *a2 = result;
  return result;
}

void sub_10020549C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x61746144205443;
  if (v2 != 1)
  {
    v5 = 0x666E4920646E6142;
    v4 = 0xE90000000000006FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x79636167654CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1002054FC()
{
  v1 = OBJC_IVAR____TtC11FTMInternal24FTMNeighbourStateChanged__stateChanged;
  v2 = sub_1001A551C(&qword_100376320, &qword_1002F4310);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FTMNeighbourStateChanged(uint64_t a1)
{
  result = qword_1003772E0;
  if (!qword_1003772E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1002055F8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_10020563C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 201))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_100205698(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 201) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 201) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_100205730@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FTMNeighbourStateChanged(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

unint64_t sub_10020578C()
{
  result = qword_100377398;
  if (!qword_100377398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377398);
  }

  return result;
}

unint64_t sub_1002057E0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10031A480, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

id sub_10020582C()
{
  v1 = OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___activityIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___activityIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___activityIndicator);
  }

  else
  {
    v4 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() colorNamed:v5];

    [v4 setColor:v6];
    [v4 setHidesWhenStopped:1];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100205934()
{
  v1 = OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___loadingLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___loadingLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___loadingLabel);
  }

  else
  {
    v4 = sub_100205998(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100205998(uint64_t a1)
{
  v1 = [objc_allocWithZone(UILabel) init];

  v2 = String._bridgeToObjectiveC()();

  [v1 setText:v2];

  [v1 setTextAlignment:0];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() colorNamed:v3];

  [v1 setTextColor:v4];
  v5 = [objc_opt_self() systemFontOfSize:18.0 weight:UIFontWeightMedium];
  [v1 setFont:v5];

  v6 = v1;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setHidden:1];

  return v6;
}

char *sub_100205B14(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();
  v6[OBJC_IVAR____TtC11FTMInternal11LoadingView_shouldHideLoadingView] = 1;
  *&v6[OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___activityIndicator] = 0;
  *&v6[OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___loadingLabel] = 0;
  v14 = &v6[OBJC_IVAR____TtC11FTMInternal11LoadingView_loadingLabelText];
  *v14 = a1;
  v14[1] = a2;
  v38.receiver = v6;
  v38.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v38, "initWithFrame:", a3, a4, a5, a6);
  v16 = sub_10020582C();
  [v15 addSubview:v16];

  v17 = sub_100205934();
  [v15 addSubview:v17];

  v18 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1002EF640;
  v20 = OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___activityIndicator;
  v21 = [*&v15[OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___activityIndicator] centerYAnchor];
  v22 = [v15 centerYAnchor];

  v23 = [v21 constraintEqualToAnchor:v22];
  *(v19 + 32) = v23;
  v24 = [*&v15[v20] centerXAnchor];
  v25 = [v15 centerXAnchor];

  v26 = [v24 constraintEqualToAnchor:v25];
  *(v19 + 40) = v26;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:isa];

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1002EF640;
  v29 = OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___loadingLabel;
  v30 = [*&v15[OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___loadingLabel] topAnchor];
  v31 = [*&v15[v20] bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:5.0];

  *(v28 + 32) = v32;
  v33 = [*&v15[v29] centerXAnchor];
  v34 = [v15 centerXAnchor];

  v35 = [v33 constraintEqualToAnchor:v34];
  *(v28 + 40) = v35;
  v36 = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:v36];

  return v15;
}

id sub_100205F2C()
{
  v1 = OBJC_IVAR____TtC11FTMInternal11LoadingView_shouldHideLoadingView;
  v0[OBJC_IVAR____TtC11FTMInternal11LoadingView_shouldHideLoadingView] = 0;
  v2 = sub_10020582C();
  [v2 setHidden:v0[v1]];

  v3 = sub_100205934();
  [v3 setHidden:v0[v1]];

  v4 = *&v0[OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___loadingLabel];
  v5 = String._bridgeToObjectiveC()();
  [v4 setText:v5];

  [*&v0[OBJC_IVAR____TtC11FTMInternal11LoadingView____lazy_storage___activityIndicator] startAnimating];

  return [v0 setHidden:0];
}

void sub_1002060F0()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for TickerViewController();
  objc_msgSendSuper2(&v31, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC11FTMInternal20TickerViewController_collectionView];
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  [v1 setBackgroundColor:v3];

  [v1 setDelegate:v0];
  [v1 setDataSource:v0];
  type metadata accessor for TickerColumnCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = String._bridgeToObjectiveC()();
  [v1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v5];

  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  [v6 addSubview:v1];

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v0 view];
  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1002EF930;
  v11 = [v1 centerXAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12;
  v14 = [v12 centerXAnchor];

  v15 = [v11 constraintEqualToAnchor:v14];
  *(v10 + 32) = v15;
  v16 = [v1 centerYAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = v17;
  v19 = [v17 centerYAnchor];

  v20 = [v16 constraintEqualToAnchor:v19];
  *(v10 + 40) = v20;
  v21 = objc_opt_self();
  *(v10 + 48) = [v21 constraintWithItem:v1 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:50.0];
  v22 = [v0 view];
  if (v22)
  {
    v30 = v22;
    sub_1001E1BB4(0, qword_1003774A8, UIView_ptr);
    v23 = v1;
    v24 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  else
  {
    swift_unknownObjectRetain();
    v24 = 0;
  }

  v25 = [v21 constraintWithItem:v1 attribute:7 relatedBy:0 toItem:v24 attribute:7 multiplier:1.0 constant:0.0];

  swift_unknownObjectRelease();
  *(v10 + 56) = v25;
  sub_1001E1BB4(0, &qword_1003774A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 addConstraints:isa];

  v27 = [v0 view];
  if (v27)
  {
    v28 = v27;
    v29 = [v2 whiteColor];
    [v28 setBackgroundColor:v29];

    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1002065E0(double a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = type metadata accessor for IndexPath();
  v6 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  *(v3 + OBJC_IVAR____TtC11FTMInternal20TickerViewController_numberValue) = a1;
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1002EED40;
  *(v12 + 56) = &type metadata for Double;
  *(v12 + 64) = &protocol witness table for Double;
  *(v12 + 32) = a1;
  v13 = String.init(format:_:)();
  v15 = v14;
  v16 = (v4 + OBJC_IVAR____TtC11FTMInternal20TickerViewController_stringValue);
  *v16 = v13;
  v16[1] = v14;

  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v13 & 0xFFFFFFFFFFFFLL;
  }

  v48 = v13;
  v49 = v15;
  v50 = 0;
  v51 = v17;
  v18 = OBJC_IVAR____TtC11FTMInternal20TickerViewController_collectionView;
  if (!String.Iterator.next()().value._object)
  {
  }

  result = 0;
  v42 = v11;
  v43 = (v6 + 8);
  v41 = v18;
  while (1)
  {
    v20 = v8;
    v21 = result + 1;
    if (__OFADD__(result, 1))
    {
      break;
    }

    IndexPath.init(item:section:)();
    v22 = *(v4 + v18);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v24 = [v22 cellForItemAtIndexPath:isa];

    if (!v24)
    {

      goto LABEL_22;
    }

    type metadata accessor for TickerColumnCell();
    v25 = swift_dynamicCastClass();
    if (!v25)
    {

      goto LABEL_22;
    }

    v26 = v25;
    v27 = v4;
    v28 = *(v25 + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_characters);
    v46 = 0;
    v47 = 0xE000000000000000;

    Character.write<A>(to:)();

    v29 = v47;
    v30 = *(v28 + 16);
    if (!v30)
    {
LABEL_21:

      v11 = v42;
LABEL_22:
      (*v43)(v11, v45);
    }

    v31 = 0;
    v44 = v21;
    v32 = v46;
    v33 = (v28 + 40);
    while (1)
    {
      v34 = *(v33 - 1) == v32 && *v33 == v29;
      if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v31;
      v33 += 2;
      if (v30 == v31)
      {
        goto LABEL_21;
      }
    }

    v8 = v20;
    IndexPath.init(item:section:)();
    if ((*(v26 + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_isScrolling) & 1) == 0)
    {
      v35 = *(v26 + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_tableView);
      v36 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v35 scrollToRowAtIndexPath:v36 atScrollPosition:2 animated:1];

      v24 = v36;
    }

    v4 = v27;

    v37 = *v43;
    v38 = v45;
    (*v43)(v20, v45);
    v11 = v42;
    v37(v42, v38);
    object = String.Iterator.next()().value._object;
    v18 = v41;
    result = v44;
    if (!object)
    {
    }
  }

  __break(1u);
  return result;
}

id sub_100206A1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TickerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100206D50(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [a1 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:isa];

  type metadata accessor for TickerColumnCell();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v18[0] = 0;
    v18[1] = 0xE000000000000000;

    IndexPath.row.getter();
    String.index(_:offsetBy:)();
    String.subscript.getter();

    Character.write<A>(to:)();

    v9 = *(v1 + OBJC_IVAR____TtC11FTMInternal20TickerViewController_numericAlphabet);
    __chkstk_darwin(v8);
    v17[2] = v18;
    if ((sub_1001E2ED0(sub_1002071E0, v17, v9) & 1) == 0)
    {
      sub_1001A551C(&qword_1003770E0, &qword_1002F22B8);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1002EED40;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0xE000000000000000;
      v15 = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
LABEL_14:
      *(v7 + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_size) = v15;
      *(v7 + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_characters) = v9;

      [*(v7 + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_tableView) reloadData];
      return v7;
    }

    sub_1001A551C(&qword_100377110, &qword_1002F22D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002EED50;

    v11 = String.count.getter();

    if (__OFSUB__(v11, 1))
    {
      __break(1u);
    }

    else
    {
      *(inited + 32) = v11 - 1;

      v13 = String.count.getter();

      if (!__OFSUB__(v13, 2))
      {
        *(inited + 40) = v13 - 2;
        v14 = IndexPath.row.getter();
        if (*(inited + 32) == v14 || *(inited + 40) == v14)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

    v16 = objc_allocWithZone(UICollectionViewCell);

    return [v16 init];
  }

  return result;
}

void sub_100207200()
{
  *(v0 + OBJC_IVAR____TtC11FTMInternal20TickerViewController_numericAlphabet) = &off_10031A4E8;
  v1 = OBJC_IVAR____TtC11FTMInternal20TickerViewController_collectionView;
  v2 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v2 setScrollDirection:1];
  [v2 setMinimumInteritemSpacing:0.0];
  [v2 setMinimumLineSpacing:0.0];
  v3 = [objc_allocWithZone(UICollectionView) initWithFrame:v2 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *(v0 + v1) = v3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10020730C()
{

  v0 = String.count.getter();

  result = IndexPath.row.getter();
  if (result)
  {
    if (__OFSUB__(v0, 1))
    {
      __break(1u);
    }

    else
    {
      if (v0 - 1 == result)
      {
        return result;
      }

      if (!__OFSUB__(v0, 2))
      {
        if (v0 - 2 == result || !__OFSUB__(v0, 3))
        {
          return result;
        }

LABEL_10:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1002073C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100207444(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v27 - v12;
  __chkstk_darwin(v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100207864(uint64_t a1)
{
  type metadata accessor for Set();
  type metadata accessor for Binding();
  Binding.projectedValue.getter();
  return v2;
}

uint64_t sub_1002078C8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1001A55C8(&qword_100377530, &qword_1002F2780);
  v5 = *(a1 + 32);
  v19 = *(a1 + 16);
  v20 = v5;
  v6 = type metadata accessor for SMultiselectionPickerList(255, &v19);
  v7 = sub_1001AD0C8(&qword_100377538, &qword_100377530, &qword_1002F2780, &protocol conformance descriptor for HStack<A>);
  WitnessTable = swift_getWitnessTable();
  *&v19 = v4;
  *(&v19 + 1) = v6;
  *&v20 = v7;
  *(&v20 + 1) = WitnessTable;
  v9 = type metadata accessor for NavigationLink();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  sub_100207ABC(a1);
  swift_getWitnessTable();
  v16 = *(v10 + 16);
  v16(v15, v12, v9);
  v17 = *(v10 + 8);
  v17(v12, v9);
  v16(a2, v15, v9);
  return (v17)(v15, v9);
}

uint64_t sub_100207ABC(void *a1)
{
  v1 = a1[3];
  v10 = a1[2];
  v11 = v1;
  v2 = a1[5];
  v12 = a1[4];
  v13 = v2;
  v8[2] = v10;
  v8[3] = v1;
  v8[4] = v12;
  v8[5] = v2;
  v3 = sub_1001A551C(&qword_100377530, &qword_1002F2780);
  v14[0] = v10;
  v14[1] = v1;
  v14[2] = v12;
  v14[3] = v2;
  v4 = type metadata accessor for SMultiselectionPickerList(0, v14);
  v5 = sub_1001AD0C8(&qword_100377538, &qword_100377530, &qword_1002F2780, &protocol conformance descriptor for HStack<A>);
  WitnessTable = swift_getWitnessTable();
  return sub_100208298(sub_1002083BC, v9, sub_1002083CC, v8, v3, v4, v5, WitnessTable);
}

double sub_100207BE4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];

  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v14 = type metadata accessor for SMultiselectionPicker(0, &v28);
  v36 = sub_100207864(v14);
  v37 = v15;
  v35 = v13;
  v34[0] = v12;
  v34[1] = v11;
  v22 = v12;
  v23 = v11;
  v24 = v13;
  v25 = v36;
  v26 = v16;
  v27 = v15;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v17 = type metadata accessor for SMultiselectionPickerList(0, &v28);
  swift_getWitnessTable();
  v18 = *(*(v17 - 8) + 16);
  v18(&v28, &v22, v17);
  sub_100209DFC(v34);
  v19 = type metadata accessor for Array();
  (*(*(v19 - 8) + 8))(&v35, v19);
  sub_100209E50(&v36);

  v20 = type metadata accessor for Set();
  (*(*(v20 - 8) + 8))(&v37, v20);
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v18(a6, &v22, v17);

  return result;
}

uint64_t sub_100207DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a9@<X8>)
{
  *a9 = static VerticalAlignment.center.getter();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  v15 = sub_1001A551C(&qword_100377540, &qword_1002F2788);
  return sub_100207E68(a1, a2, a3, a4, a5, a9 + *(v15 + 44));
}

uint64_t sub_100207E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a4;
  v27 = a2;
  v25 = a1;
  v28 = a6;
  v10 = sub_1001A551C(&qword_100377548, &qword_1002F2790);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v13 = type metadata accessor for SMultiselectionPicker(0, &v29);
  sub_10020804C(v13, &v29);
  v14 = v30;
  v24 = v29;
  v15 = v31;
  v16 = v32;
  KeyPath = swift_getKeyPath();
  v18 = &v12[*(v10 + 36)];
  v19 = *(sub_1001A551C(&qword_100377550, &qword_1002F27C8) + 28);
  v20 = enum case for Text.TruncationMode.tail(_:);
  v21 = type metadata accessor for Text.TruncationMode();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  *v12 = v24;
  *(v12 + 1) = v14;
  v12[16] = v15;
  *(v12 + 3) = v16;
  *(v12 + 4) = KeyPath;
  *(v12 + 5) = 1;
  v12[48] = 0;
  sub_1002083DC(v13);
  Set.count.getter();

  sub_100209C10();
  View.badge(_:)();
  return sub_1001AC99C(v12, &qword_100377548, &qword_1002F2790);
}

uint64_t sub_10020804C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1002083DC(a1);
  v4 = a1[2];
  v5 = a1[4];
  v6 = Set.isEmpty.getter();

  if (v6)
  {
    v7 = 0xED00006465746365;
    v8 = 0x6C657320656E6F4ELL;
  }

  else
  {
    v27 = sub_1002083DC(a1);
    __chkstk_darwin(v27);
    v9 = a1[3];
    v23 = v4;
    v24 = v9;
    v10 = a1[5];
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v23 = v9;
    v24 = v5;
    v25 = v10;
    v26 = v12;
    v13 = type metadata accessor for Set();
    WitnessTable = swift_getWitnessTable();
    v16 = sub_100207444(sub_100209DD0, &v22, v13, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v15);

    v27 = v16;
    sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
    sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80, &protocol conformance descriptor for [A]);
    v8 = BidirectionalCollection<>.joined(separator:)();
    v7 = v17;
  }

  v27 = v8;
  v28 = v7;
  sub_1001A56A0();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v19;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v21;
  return result;
}

uint64_t sub_100208298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1);
  v9(v8);
  return NavigationLink.init(destination:label:)();
}

uint64_t sub_1002083DC(uint64_t a1)
{
  type metadata accessor for Set();
  type metadata accessor for Binding();
  Binding.wrappedValue.getter();
  return v2;
}

uint64_t sub_10020843C@<X0>(uint64_t a1@<X0>, __int8 *a2@<X8>)
{
  v3 = v2;
  v44.i64[0] = a1;
  v43 = a2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Array();
  v7 = *(a1 + 40);
  swift_getAssociatedTypeWitness();
  v42 = sub_1001A55C8(&qword_100377608, &qword_1002F2928);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ForEach();
  v40 = sub_1001AD0C8(&qword_100377610, &qword_100377608, &qword_1002F2928, &protocol conformance descriptor for Button<A>);
  v48[2] = v40;
  *&v49 = &type metadata for Never;
  *(&v49 + 1) = v8;
  v50 = &protocol witness table for Never;
  v51 = swift_getWitnessTable();
  v9 = type metadata accessor for List();
  v38 = v9;
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v35 = &v33.i8[-v10];
  v11 = swift_getWitnessTable();
  v37 = v11;
  v36 = sub_1001A56A0();
  *&v49 = v9;
  *(&v49 + 1) = &type metadata for String;
  v50 = v11;
  v51 = v36;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v15 = &v33.i8[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v16);
  v34 = &v33.i8[-v18];
  v55 = *(v3 + 16);
  *&v49 = v55;
  v17.i64[0] = v5;
  v33 = v17;

  v44 = *(v44.i64[0] + 24);
  *&v19 = vdupq_laneq_s64(v44, 1).u64[0];
  v20 = v7;
  *(&v19 + 1) = v7;
  v45 = vzip1q_s64(v33, v44);
  v46 = v19;
  swift_getWitnessTable();
  v21 = Sequence.sorted(by:)();
  v22 = *(v6 - 8);
  (*(v22 + 8))(&v55, v6);
  v48[0] = v21;
  v49 = *v3;
  v23 = *(v3 + 24);
  v53 = *(v3 + 40);
  v54 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v5;
  *(v24 + 24) = v44;
  *(v24 + 40) = v20;
  v25 = *(v3 + 16);
  *(v24 + 48) = *v3;
  *(v24 + 64) = v25;
  *(v24 + 80) = *(v3 + 32);
  (*(v22 + 16))(&v47, &v55, v6);
  sub_1001ACE9C(&v49, &v47);
  sub_10020A178(&v54, &v47);

  v26 = type metadata accessor for Set();
  (*(*(v26 - 8) + 16))(&v47, &v53, v26);
  v27 = v35;
  sub_100208D90(v48, sub_10020A11C, v24, v6, v42, WitnessTable, v40, v20);
  v47 = v49;
  v28 = v38;
  View.navigationTitle<A>(_:)();
  (*(v39 + 8))(v27, v28);
  v29 = *(v13 + 16);
  v30 = v34;
  v29(v34, v15, OpaqueTypeMetadata2);
  v31 = *(v13 + 8);
  v31(v15, OpaqueTypeMetadata2);
  v29(v43, v30, OpaqueTypeMetadata2);
  return (v31)(v30, OpaqueTypeMetadata2);
}

uint64_t sub_100208A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  v6 = v5;
  if (v4 == dispatch thunk of CustomStringConvertible.description.getter() && v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100208AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v30 = *v3;
  v9 = *(v3 + 2);
  v28 = *(v3 + 3);
  v29 = v9;
  v27 = *(v3 + 5);
  (*(v7 + 16))(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v10 = (*(v7 + 80) + 96) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = *(a2 + 40);
  v13.i64[0] = v6;
  v14 = v3[1];
  *(v11 + 48) = *v3;
  *(v11 + 64) = v14;
  *(v11 + 80) = v3[2];
  v20 = *(a2 + 24);
  v15 = *(a2 + 32);
  *(v11 + 16) = vzip1q_s64(v13, v20);
  *(v11 + 32) = v15;
  (*(v7 + 32))(v11 + v10, v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v21 = v6;
  v22 = v20;
  v23 = v12;
  v24 = a1;
  v25 = v3;
  sub_1001ACE9C(&v30, v26);
  v16 = type metadata accessor for Array();
  (*(*(v16 - 8) + 16))(v26, &v29, v16);
  sub_10020A178(&v28, v26);

  v17 = type metadata accessor for Set();
  (*(*(v17 - 8) + 16))(v26, &v27, v17);
  sub_1001A551C(&qword_100377618, &qword_1002F2930);
  sub_1001AD0C8(&qword_100377620, &qword_100377618, &qword_1002F2930, &protocol conformance descriptor for HStack<A>);
  return Button.init(action:label:)();
}

uint64_t sub_100208D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  swift_getWitnessTable();
  List<>.init(content:)();

  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t sub_100208F14(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  if (sub_100209660(a1, a2))
  {
    v28 = a1;
    v17 = v2[3];
    v16 = v2[4];
    v18 = v2[5];
    v37 = v18;
    v38 = v17;
    v33 = v17;
    v34 = v16;
    v35 = v18;
    sub_10020A178(&v38, &v30);

    v19 = type metadata accessor for Set();
    v20 = *(v19 - 8);
    (*(v20 + 16))(&v30, &v37, v19);
    type metadata accessor for Binding();
    Binding.wrappedValue.getter();
    Set.remove(_:)();
    (*(v13 + 8))(v15, v12);
    v30 = v17;
    v31 = v16;
    v32 = v18;
    v29 = v36;
    Binding.wrappedValue.setter();
    sub_100209E50(&v38);

    return (*(v20 + 8))(&v37, v19);
  }

  else
  {
    (*(v6 + 16))(v8, a1, v5);
    v28 = v2[3];
    v22 = v6;
    v23 = v2[4];
    v24 = v2[5];
    v37 = v24;
    v38 = v28;
    v33 = v28;
    v34 = v23;
    v35 = v24;
    sub_10020A178(&v38, &v30);

    v25 = type metadata accessor for Set();
    v26 = *(v25 - 8);
    (*(v26 + 16))(&v30, &v37, v25);
    type metadata accessor for Binding();
    Binding.wrappedValue.getter();
    Set.insert(_:)();
    (*(v22 + 8))(v11, v5);
    v30 = v28;
    v31 = v23;
    v32 = v24;
    v29 = v36;
    Binding.wrappedValue.setter();
    sub_100209E50(&v38);

    return (*(v26 + 8))(&v37, v25);
  }
}

uint64_t sub_1002092D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a9@<X8>)
{
  *a9 = static VerticalAlignment.center.getter();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  v16 = sub_1001A551C(&qword_100377628, &qword_1002F2938);
  return sub_10020936C(a1, a2, a3, a4, a5, a6, a9 + *(v16 + 44));
}

uint64_t sub_10020936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a5;
  v40 = a6;
  v41 = a2;
  v11 = sub_1001A551C(&qword_100377630, &qword_1002F2940);
  v43 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v37[-v12];
  v14 = sub_1001A551C(&qword_100377638, &qword_1002F2948);
  __chkstk_darwin(v14 - 8);
  v16 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v37[-v18];
  v44 = dispatch thunk of CustomStringConvertible.description.getter();
  v45 = v20;
  sub_1001A56A0();
  v21 = Text.init<A>(_:)();
  v23 = v22;
  v38 = v24;
  v42 = v25;
  v44 = a3;
  v45 = a4;
  v46 = v39;
  v47 = v40;
  v26 = type metadata accessor for SMultiselectionPickerList(0, &v44);
  v27 = sub_100209660(a1, v26);
  v28 = 1;
  if (v27)
  {
    v29 = type metadata accessor for SSFImage(0);
    static SymbolRenderingMode.multicolor.getter();
    *v13 = 0x72616D6B63656863;
    v13[1] = 0xE90000000000006BLL;
    v30 = (v13 + *(v29 + 24));
    *v30 = 0;
    v30[1] = 0;
    v31 = static Color.green.getter();
    KeyPath = swift_getKeyPath();
    v33 = (v13 + *(v11 + 36));
    *v33 = KeyPath;
    v33[1] = v31;
    sub_10020A410(v13, v19);
    v28 = 0;
  }

  (*(v43 + 56))(v19, v28, 1, v11);
  sub_10020A398(v19, v16);
  *a7 = v21;
  *(a7 + 8) = v23;
  v34 = v38 & 1;
  *(a7 + 16) = v38 & 1;
  *(a7 + 24) = v42;
  *(a7 + 32) = 0;
  *(a7 + 40) = 1;
  v35 = sub_1001A551C(&qword_100377640, &qword_1002F2950);
  sub_10020A398(v16, a7 + *(v35 + 64));
  sub_1001A5174(v21, v23, v34);

  sub_1001AC99C(v19, &qword_100377638, &qword_1002F2948);
  sub_1001AC99C(v16, &qword_100377638, &qword_1002F2948);
  sub_1001ACFEC(v21, v23, v34);
}

uint64_t sub_100209660(uint64_t a1, uint64_t a2)
{
  sub_1002083DC(a2);
  v2 = Set.contains(_:)();

  return v2 & 1;
}

uint64_t sub_1002096C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v38 = a7;
  v39 = a2;
  v40 = a3;
  v41 = a9;
  v37 = a1;
  v13 = *(a4 - 8);
  __chkstk_darwin(a1);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v35 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = a4;
  v44 = AssociatedTypeWitness;
  v45 = a5;
  v46 = a6;
  v18 = a5;
  v47 = AssociatedConformanceWitness;
  v19 = type metadata accessor for ForEach();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = &v34 - v25;
  v27 = *(v13 + 16);
  v34 = a4;
  v27(v15, v37, a4, v24);
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = v18;
  v30 = v38;
  v29 = v39;
  v28[4] = a6;
  v28[5] = v30;
  v28[6] = v35;
  v28[7] = v29;
  v28[8] = v40;

  ForEach<>.init(_:content:)();
  v42 = v30;
  swift_getWitnessTable();
  v31 = *(v20 + 16);
  v31(v26, v22, v19);
  v32 = *(v20 + 8);
  v32(v22, v19);
  v31(v41, v26, v19);
  return (v32)(v26, v19);
}

uint64_t sub_1002099D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12(v9);
  v13 = *(v5 + 16);
  v13(v11, v7, a2);
  v14 = *(v5 + 8);
  v14(v7, a2);
  v13(a3, v11, a2);
  return (v14)(v11, a2);
}

uint64_t sub_100209B44(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.truncationMode.setter();
}

unint64_t sub_100209C10()
{
  result = qword_100377558;
  if (!qword_100377558)
  {
    sub_1001A55C8(&qword_100377548, &qword_1002F2790);
    sub_100209CC8();
    sub_1001AD0C8(qword_100377580, &qword_100377550, &qword_1002F27C8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377558);
  }

  return result;
}

unint64_t sub_100209CC8()
{
  result = qword_100377560;
  if (!qword_100377560)
  {
    sub_1001A55C8(&qword_100377568, &qword_1002F2800);
    sub_1001AD0C8(&qword_100377570, &qword_100377578, &qword_1002F2808, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377560);
  }

  return result;
}

uint64_t sub_100209D80@<X0>(uint64_t *a3@<X8>)
{
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a3 = result;
  a3[1] = v5;
  return result;
}

__n128 sub_100209DC4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_100209EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100209EE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100209F28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100209F74(__int128 *a1)
{
  v2 = sub_1001A55C8(&qword_100377530, &qword_1002F2780);
  v3 = a1[1];
  v8 = *a1;
  v9 = v3;
  v4 = type metadata accessor for SMultiselectionPickerList(255, &v8);
  v5 = sub_1001AD0C8(&qword_100377538, &qword_100377530, &qword_1002F2780, &protocol conformance descriptor for HStack<A>);
  WitnessTable = swift_getWitnessTable();
  *&v8 = v2;
  *(&v8 + 1) = v4;
  *&v9 = v5;
  *(&v9 + 1) = WitnessTable;
  type metadata accessor for NavigationLink();
  return swift_getWitnessTable();
}

uint64_t sub_10020A0C4()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10020A11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  v8[0] = *(v2 + 16);
  v8[1] = v5;
  v6 = type metadata accessor for SMultiselectionPickerList(0, v8);
  return sub_100208AE8(a1, v6, a2);
}

uint64_t sub_10020A1E8()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10020A234()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10020A310()
{
  v1 = *(v0 + 32);
  v2 = (*(*(*(v0 + 16) - 8) + 80) + 96) & ~*(*(*(v0 + 16) - 8) + 80);
  v5[0] = *(v0 + 16);
  v5[1] = v1;
  v3 = type metadata accessor for SMultiselectionPickerList(0, v5);
  return sub_100208F14(v0 + v2, v3);
}

uint64_t sub_10020A398(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100377638, &qword_1002F2948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020A410(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100377630, &qword_1002F2940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020A480(void *a1)
{
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  sub_1001A55C8(&qword_100377608, &qword_1002F2928);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  sub_1001AD0C8(&qword_100377610, &qword_100377608, &qword_1002F2928, &protocol conformance descriptor for Button<A>);
  swift_getWitnessTable();
  type metadata accessor for List();
  swift_getWitnessTable();
  sub_1001A56A0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10020A64C()
{
  v0 = String._bridgeToObjectiveC()();
  MGGetBoolAnswer();

  v1.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Bool._conditionallyBridgeFromObjectiveC(_:result:)();

    v2 = 2;
  }

  else
  {

    v2 = 0;
  }

  v3 = String._bridgeToObjectiveC()();
  MGGetBoolAnswer();

  v4.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Bool._conditionallyBridgeFromObjectiveC(_:result:)();

    v5 = 2;
  }

  else
  {

    v5 = 0;
  }

  v6 = 0x6E776F6E6B6E75;
  v7 = String._bridgeToObjectiveC()();
  v8 = MGGetStringAnswer();

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = MGGetStringAnswer();

  if (v13)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  type metadata accessor for HardwareManager();
  v16 = swift_allocObject();
  result = sub_10020AC60(v2 & 1, v5 & 1, v9, v11, v6, v15);
  qword_100382500 = v16;
  return result;
}