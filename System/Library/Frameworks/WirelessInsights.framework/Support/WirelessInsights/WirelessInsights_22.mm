void *sub_1001D7F68(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v46 = a2;
  v9 = sub_100164A3C(&qword_1002D8260, &qword_10024D538);
  __chkstk_darwin(v9 - 8);
  v52 = &v46 - v10;
  v11 = type metadata accessor for InternalServicePrediction(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v57 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v48 = a1;
  v49 = a5;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v53 = v21;
  v50 = (v21 + 48);
  v51 = (v21 + 56);
  v55 = a3 + 56;
  v56 = a3;
  while (2)
  {
    v47 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v22 = a5[1];
        v25 = a5[2];
        v24 = a5[3];
        v26 = a5[4];
        v54 = v25;
        if (!v26)
        {
          v28 = (v25 + 64) >> 6;
          if (v28 <= v24 + 1)
          {
            v29 = v24 + 1;
          }

          else
          {
            v29 = (v25 + 64) >> 6;
          }

          v30 = v29 - 1;
          while (1)
          {
            v27 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v27 >= v28)
            {
              v31 = 0;
              v33 = 1;
              v32 = v52;
              goto LABEL_14;
            }

            v26 = *(v22 + 8 * v27);
            ++v24;
            if (v26)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v27 = v24;
LABEL_13:
        v31 = (v26 - 1) & v26;
        v32 = v52;
        sub_1001DC504(*(v23 + 48) + *(v53 + 72) * (__clz(__rbit64(v26)) | (v27 << 6)), v52, type metadata accessor for InternalServicePrediction);
        v33 = 0;
        v30 = v27;
LABEL_14:
        (*v51)(v32, v33, 1, v11);
        *a5 = v23;
        a5[1] = v22;
        a5[2] = v54;
        a5[3] = v30;
        a5[4] = v31;
        if ((*v50)(v32, 1, v11) == 1)
        {
          sub_1000157F0(v32, &qword_1002D8260, &qword_10024D538);
          v45 = v56;

          return sub_1001D8480(v48, v46, v47, v45);
        }

        sub_1001DC56C(v32, v57, type metadata accessor for InternalServicePrediction);
        v34 = v56;
        sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction, &unk_1002496A0);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v55 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        result = sub_1001DE088(v57, type metadata accessor for InternalServicePrediction);
        a5 = v49;
      }

      v40 = *(v53 + 72);
      sub_1001DC504(*(v56 + 48) + v40 * v37, v14, type metadata accessor for InternalServicePrediction);
      sub_1001BCC20(&qword_1002D79C0, 255, type metadata accessor for InternalServicePrediction, &unk_100249708);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1001DE088(v14, type metadata accessor for InternalServicePrediction);
      if ((v41 & 1) == 0)
      {
        v42 = ~v36;
        do
        {
          v37 = (v37 + 1) & v42;
          v38 = v37 >> 6;
          v39 = 1 << v37;
          if (((1 << v37) & *(v55 + 8 * (v37 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          sub_1001DC504(*(v56 + 48) + v40 * v37, v14, type metadata accessor for InternalServicePrediction);
          v43 = dispatch thunk of static Equatable.== infix(_:_:)();
          sub_1001DE088(v14, type metadata accessor for InternalServicePrediction);
        }

        while ((v43 & 1) == 0);
      }

      result = sub_1001DE088(v57, type metadata accessor for InternalServicePrediction);
      a5 = v49;
      v44 = v48[v38];
      v48[v38] = v44 & ~v39;
    }

    while ((v44 & v39) == 0);
    v20 = v47 - 1;
    if (__OFSUB__(v47, 1))
    {
LABEL_29:
      __break(1u);
      return result;
    }

    if (v47 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_1001D8480(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for InternalServicePrediction(0);
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100164A3C(&qword_1002D8268, &qword_10024D540);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_1001DC504(v19 + v20 * (v16 | (v14 << 6)), v10, type metadata accessor for InternalServicePrediction);
    sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction, &unk_1002496A0);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_1001DC56C(v10, *(v11 + 48) + v24 * v20, type metadata accessor for InternalServicePrediction);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1001D8780()
{
  v1 = v0;
  v2 = type metadata accessor for InternalServicePrediction(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100164A3C(&qword_1002D8268, &qword_10024D540);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1001DC504(*(v6 + 48) + v21, v5, type metadata accessor for InternalServicePrediction);
        result = sub_1001DC56C(v5, *(v8 + 48) + v21, type metadata accessor for InternalServicePrediction);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1001D898C()
{
  v1 = v0;
  v2 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100164A3C(&qword_1002D8258, &qword_10024D530);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1001DC504(*(v6 + 48) + v21, v5, type metadata accessor for InternalUpcomingFlightPrediction);
        result = sub_1001DC56C(v5, *(v8 + 48) + v21, type metadata accessor for InternalUpcomingFlightPrediction);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_1001D8B98(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for InternalServicePrediction(0);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100164A3C(&qword_1002D8268, &qword_10024D540);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      sub_1001DC504(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for InternalServicePrediction);
      sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction, &unk_1002496A0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v8 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1001DC56C(v5, *(v8 + 48) + v15 * v19, type metadata accessor for InternalServicePrediction);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v2 = v8;
  }

  return result;
}

Swift::Int sub_1001D8EA4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v31 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100164A3C(&qword_1002D8258, &qword_10024D530);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v29 = v1;
    v30 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v31 + 72);
      sub_1001DC504(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for InternalUpcomingFlightPrediction);
      Hasher.init(_seed:)();
      type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
      sub_1001BCC20(&unk_1002D7BA8, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction, &unk_10024B3A8);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1001DC56C(v5, *(v8 + 48) + v16 * v21, type metadata accessor for InternalUpcomingFlightPrediction);
      ++*(v8 + 16);
      v6 = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1001D91CC(int64_t a1)
{
  v3 = type metadata accessor for InternalServicePrediction(0);
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v26 = v9;
      v14 = (v13 + 1) & v12;
      v15 = *(v4 + 72);
      while (1)
      {
        v16 = v15 * v11;
        sub_1001DC504(*(v8 + 48) + v15 * v11, v7, type metadata accessor for InternalServicePrediction);
        sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction, &unk_1002496A0);
        v17 = dispatch thunk of Hashable._rawHashValue(seed:)();
        sub_1001DE088(v7, type metadata accessor for InternalServicePrediction);
        v18 = v17 & v12;
        if (a1 >= v14)
        {
          if (v18 < v14 || a1 < v18)
          {
            goto LABEL_6;
          }
        }

        else if (v18 < v14 && a1 < v18)
        {
          goto LABEL_6;
        }

        v21 = v15 * a1;
        if (v15 * a1 < v16 || *(v8 + 48) + v15 * a1 >= (*(v8 + 48) + v16 + v15))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v11;
          if (v21 == v16)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v11;
LABEL_6:
        v11 = (v11 + 1) & v12;
        if (((*(v26 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          v9 = v26;
          goto LABEL_24;
        }
      }
    }

LABEL_24:
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v8 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v24;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_1001D94A4(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for InternalServicePrediction(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v24 = v8;
  v25 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001D78D4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1001D8780();
      goto LABEL_12;
    }

    sub_1001D8B98(v11 + 1);
  }

  v13 = *v3;
  sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction, &unk_1002496A0);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v8 + 72);
    do
    {
      sub_1001DC504(*(v13 + 48) + v17 * a2, v10, type metadata accessor for InternalServicePrediction);
      sub_1001BCC20(&qword_1002D79C0, 255, type metadata accessor for InternalServicePrediction, &unk_100249708);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1001DE088(v10, type metadata accessor for InternalServicePrediction);
      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1001DC56C(a1, *(v19 + 48) + *(v24 + 72) * a2, type metadata accessor for InternalServicePrediction);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001D9758(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v26 = v8;
  v27 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v25 = v9;
    sub_1001D7C10(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1001D898C();
      goto LABEL_12;
    }

    v25 = v9;
    sub_1001D8EA4(v12 + 1);
  }

  v14 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  sub_1001BCC20(&unk_1002D7BA8, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction, &unk_10024B3A8);
  dispatch thunk of Hashable.hash(into:)();
  v15 = Hasher._finalize()();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v8 + 72);
    do
    {
      sub_1001DC504(*(v14 + 48) + v18 * a2, v11, type metadata accessor for InternalUpcomingFlightPrediction);
      sub_1001BCC20(&qword_1002D7240, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction, &unk_10024B3E8);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1001DE088(v11, type metadata accessor for InternalUpcomingFlightPrediction);
      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1001DC56C(a1, *(v20 + 48) + *(v26 + 72) * a2, type metadata accessor for InternalUpcomingFlightPrediction);
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double sub_1001D9A2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100164498(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001DA788();
      v10 = v12;
    }

    sub_10001A700((*(v10 + 56) + 40 * v8), a3);
    sub_1001DA134(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1001D9AD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for InternalServicePrediction(0);
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100164A3C(&qword_1002D8248, &qword_10024D528);
  v44 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v3;
    v41 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v42 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v44)
      {
        sub_1001DC56C(v25, v7, type metadata accessor for InternalServicePrediction);
        v26 = *(v10 + 56);
        v27 = v7;
        v28 = *(v26 + 8 * v23);
      }

      else
      {
        sub_1001DC504(v25, v7, type metadata accessor for InternalServicePrediction);
        v29 = *(v10 + 56);
        v27 = v7;
        v28 = *(v29 + 8 * v23);
      }

      sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction, &unk_1002496A0);
      v30 = v27;
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1001DC56C(v30, *(v11 + 48) + v24 * v19, type metadata accessor for InternalServicePrediction);
      *(*(v11 + 56) + 8 * v19) = v28;
      v7 = v30;
      ++*(v11 + 16);
      v10 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_1001D9E90(int64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for InternalServicePrediction(0);
  v4 = *(v27 - 8);
  result = __chkstk_darwin(v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (_HashTable.previousHole(before:)() + 1) & ~v9;
    v13 = *(v4 + 72);
    do
    {
      v14 = v13 * v10;
      sub_1001DC504(*(a2 + 48) + v13 * v10, v7, type metadata accessor for InternalServicePrediction);
      sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction, &unk_1002496A0);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = sub_1001DE088(v7, type metadata accessor for InternalServicePrediction);
      v16 = v15 & v11;
      if (a1 >= v12)
      {
        if (v16 >= v12 && a1 >= v16)
        {
LABEL_15:
          v19 = *(a2 + 48);
          result = v19 + v13 * a1;
          if (v13 * a1 < v14 || result >= v19 + v14 + v13)
          {
            result = swift_arrayInitWithTakeFrontToBack();
          }

          else if (v13 * a1 != v14)
          {
            result = swift_arrayInitWithTakeBackToFront();
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 8 * a1);
          v22 = (v20 + 8 * v10);
          if (a1 != v10 || v21 >= v22 + 1)
          {
            *v21 = *v22;
            a1 = v10;
          }
        }
      }

      else if (v16 >= v12 || a1 >= v16)
      {
        goto LABEL_15;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001DA134(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001DA2F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for InternalServicePrediction(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1001D6204(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1001DA548();
      goto LABEL_7;
    }

    sub_1001D9AD8(v16, a3 & 1);
    v21 = sub_1001D6204(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1001DC504(a2, v10, type metadata accessor for InternalServicePrediction);
      return sub_1001DA494(v13, v10, a1, v19);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_1001DA494(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for InternalServicePrediction(0);
  result = sub_1001DC56C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for InternalServicePrediction);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_1001DA548()
{
  v1 = v0;
  v2 = type metadata accessor for InternalServicePrediction(0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100164A3C(&qword_1002D8248, &qword_10024D528);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
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
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1001DC504(*(v5 + 48) + v21, v4, type metadata accessor for InternalServicePrediction);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1001DC56C(v4, *(v7 + 48) + v21, type metadata accessor for InternalServicePrediction);
        *(*(v7 + 56) + 8 * v20) = v22;
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

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void sub_1001DA788()
{
  v1 = v0;
  sub_100164A3C(&qword_1002D71F8, &qword_10024B168);
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
        v22 = 40 * v17;
        sub_100164B34(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10001A700(v25, *(v4 + 56) + v22);
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

uint64_t sub_1001DA930(int64_t a1)
{
  v2 = v1;
  v43 = sub_100164A3C(&qword_1002D7BE8, &qword_10024C750);
  v4 = __chkstk_darwin(v43);
  v42 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v41 = &v34 - v6;
  v7 = type metadata accessor for InternalServicePrediction(0);
  v40 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v35 = v10;
    v36 = v2;
    v34 = &v34;
    __chkstk_darwin(v8);
    v37 = &v34 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v11);
    v38 = 0;
    v12 = 0;
    v44 = a1;
    v2 = a1 + 64;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 64);
    a1 = (v13 + 63) >> 6;
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v45 = (v15 - 1) & v15;
LABEL_12:
      v19 = v16 | (v12 << 6);
      v20 = v44;
      v10 = v39;
      sub_1001DC504(v44[6] + *(v40 + 72) * v19, v39, type metadata accessor for InternalServicePrediction);
      v21 = v19;
      v22 = *(v20[7] + 8 * v19);
      v23 = v41;
      sub_1001DC504(v10, v41, type metadata accessor for InternalServicePrediction);
      v24 = v43;
      *(v23 + *(v43 + 48)) = v22;
      v25 = v23;
      v26 = v42;
      sub_1001DE0E8(v25, v42);
      v27 = *(v26 + *(v24 + 48));
      v28 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
      swift_beginAccess();
      LODWORD(v28) = *(v27 + v28);
      swift_retain_n();

      sub_1001DE088(v26, type metadata accessor for InternalServicePrediction);

      sub_1001DE088(v10, type metadata accessor for InternalServicePrediction);
      v15 = v45;
      if (v28 == 2)
      {
        *&v37[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
          return sub_1001DB088(v37, v35, v38, v44);
        }
      }
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= a1)
      {
        return sub_1001DB088(v37, v35, v38, v44);
      }

      v18 = *(v2 + 8 * v12);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v45 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v31 = swift_slowAlloc();
  sub_1001DAD48(v31, v10, a1);
  v33 = v32;

  if (!v2)
  {
    return v33;
  }

  return result;
}

void sub_1001DAD48(char *a1, uint64_t a2, void *a3)
{
  v39 = a3;
  v38 = sub_100164A3C(&qword_1002D7BE8, &qword_10024C750);
  v5 = __chkstk_darwin(v38);
  v37 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v36 = &v30 - v7;
  v8 = type metadata accessor for InternalServicePrediction(0);
  v35 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v32 = a1;
    v33 = 0;
    v31 = a2;
    v10 = 0;
    v11 = v39 + 8;
    v12 = 1 << *(v39 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v39[8];
    v15 = (v12 + 63) >> 6;
    v16 = v37;
    while (v14)
    {
      v17 = __clz(__rbit64(v14));
      v40 = (v14 - 1) & v14;
LABEL_14:
      v20 = v17 | (v10 << 6);
      v21 = v39;
      v22 = v34;
      sub_1001DC504(v39[6] + *(v35 + 72) * v20, v34, type metadata accessor for InternalServicePrediction);
      v23 = v20;
      v24 = *(v21[7] + 8 * v20);
      v25 = v36;
      sub_1001DC504(v22, v36, type metadata accessor for InternalServicePrediction);
      v26 = v38;
      *(v25 + *(v38 + 48)) = v24;
      sub_1001DE0E8(v25, v16);
      v27 = *(v16 + *(v26 + 48));
      v28 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
      swift_beginAccess();
      LODWORD(v28) = *(v27 + v28);
      swift_retain_n();

      sub_1001DE088(v16, type metadata accessor for InternalServicePrediction);

      sub_1001DE088(v22, type metadata accessor for InternalServicePrediction);
      v14 = v40;
      if (v28 == 2)
      {
        *(v32 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_18:
          sub_1001DB088(v32, v31, v33, v39);

          return;
        }
      }
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_18;
      }

      v19 = v11[v10];
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

  __break(1u);
}

uint64_t sub_1001DB088(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for InternalServicePrediction(0);
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = __chkstk_darwin(v8);
  v40 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v34 = &v33 - v11;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100164A3C(&qword_1002D8248, &qword_10024D528);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v33 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v37 = (v14 - 1) & v14;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[6];
    v22 = v34;
    v39 = *(v35 + 72);
    sub_1001DC504(v21 + v39 * v20, v34, type metadata accessor for InternalServicePrediction);
    v23 = *(a4[7] + 8 * v20);
    sub_1001DC56C(v22, v40, type metadata accessor for InternalServicePrediction);
    sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction, &unk_1002496A0);
    v38 = v23;

    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v24 = -1 << *(v13 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v16 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = sub_1001DC56C(v40, *(v13 + 48) + v27 * v39, type metadata accessor for InternalServicePrediction);
    *(*(v13 + 56) + 8 * v27) = v38;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v33;
    v14 = v37;
    if (!a3)
    {
      return v13;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v37 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001DB3FC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1001DB4F0;

  return v5(v2 + 32);
}

uint64_t sub_1001DB4F0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1001DB604(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  *&v23 = a1;
  v24 = &type metadata for Int;
  v25 = &off_1002B54E0;
  v9 = *a5;
  v11 = sub_100164498(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      sub_100164B98(v18);
      return sub_10001A700(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_1001DA788();
    goto LABEL_7;
  }

  sub_1001B79CC(v14, a4 & 1);
  v20 = sub_100164498(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = sub_1001DE80C(&v23, &type metadata for Int);
  sub_1001DBC20(v11, a2, a3, *v22, v17);

  return sub_100164B98(&v23);
}

uint64_t sub_1001DB76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v29 = &type metadata for String;
  v30 = &off_1002B54C0;
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v10 = *a6;
  v12 = sub_100164498(a3, a4);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a5 & 1) != 0)
  {
LABEL_7:
    v18 = *a6;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 40 * v12);
      sub_100164B98(v19);
      return sub_10001A700(&v28, v19);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a5 & 1) == 0)
  {
    sub_1001DA788();
    goto LABEL_7;
  }

  sub_1001B79CC(v15, a5 & 1);
  v21 = sub_100164498(a3, a4);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v21;
  v18 = *a6;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = sub_1001DE80C(&v28, &type metadata for String);
  __chkstk_darwin(v23);
  v25 = (&v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  sub_1001DBB90(v12, a3, a4, *v25, v25[1], v18);

  return sub_100164B98(&v28);
}

uint64_t sub_1001DB95C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  v14 = sub_1001B8BDC(&v33);
  (*(*(a6 - 8) + 32))(v14, a1, a6);
  v15 = *a5;
  v17 = sub_100164498(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      sub_100164B98(v24);
      return sub_10001A700(&v33, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_1001DA788();
    goto LABEL_7;
  }

  sub_1001B79CC(v20, a4 & 1);
  v26 = sub_100164498(a2, a3);
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = sub_1001DE80C(&v33, v34);
  __chkstk_darwin(v28);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  sub_1001DBCB4(v17, a2, a3, v30, v23, a6, a7);

  return sub_100164B98(&v33);
}

uint64_t sub_1001DBB90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = &type metadata for String;
  v14 = &off_1002B54C0;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_10001A700(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_1001DBC20(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = &type metadata for Int;
  v13 = &off_1002B54E0;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10001A700(&v11, a5[7] + 40 * a1);
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

uint64_t sub_1001DBCB4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  v13 = sub_1001B8BDC(&v19);
  (*(*(a6 - 8) + 32))(v13, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_10001A700(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

id sub_1001DBD8C(unint64_t a1)
{
  v1 = a1;
  if (a1 >= 5)
  {
    _StringGuts.grow(_:)(32);
    v6._object = 0x800000010025E8E0;
    v6._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v6);
    type metadata accessor for WISRelayAdaptorRegistrationState(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    result = sub_1000CE644();
    if (result)
    {
      v3 = result;
      v4 = sub_100168AD4();

      v5 = *((swift_isaMask & *v4) + 0x390);

      v5(0x2010101uLL >> (8 * v1));
      (*((swift_isaMask & *v4) + 0x398))(0x4030201uLL >> (8 * v1));
    }
  }

  return result;
}

id sub_1001DBF58(unint64_t a1)
{
  if (a1 >= 3)
  {
    _StringGuts.grow(_:)(30);
    v5._object = 0x800000010025E8C0;
    v5._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v5);
    type metadata accessor for WISRelayAdaptorSignalStrength(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    result = sub_1000CE644();
    if (result)
    {
      v3 = result;
      v4 = sub_100168AD4();

      (*((swift_isaMask & *v4) + 0x3A0))(a1);
    }
  }

  return result;
}

uint64_t sub_1001DC0C8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 mcc];
    v3 = [v2 integerValue];

    v4 = [v1 mnc];
    v5 = [v4 integerValue];

    v6 = [v1 rat];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = [v1 band];
    v11 = [v10 integerValue];

    v12 = [v1 frequency];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 integerValue];
    }

    else
    {
      v14 = 0;
    }

    v15 = v13 == 0;
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v7 = 0;
    v9 = 0;
    v11 = 0;
    v14 = 0;
    v15 = 0;
  }

  v20[0] = v3;
  v20[1] = v5;
  v20[2] = v7;
  v20[3] = v9;
  v20[4] = v11;
  v20[5] = v14;
  v21 = v15;
  v16 = sub_1000CE644();
  if (v16)
  {
    v17 = v16;
    v18 = sub_100168AD4();

    (*((swift_isaMask & *v18) + 0x3B0))(v20);
  }
}

uint64_t sub_1001DC2EC(uint64_t a1)
{
  v2 = type metadata accessor for WIS.XPC.ServicePredictionSetSimulationModeRequest.SimulationMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for WIS.XPC.ServicePredictionSetSimulationModeRequest.SimulationMode.unrestricted(_:))
  {
    v7 = 2;
LABEL_7:
    (*(v3 + 8))(a1, v2);
    return v7;
  }

  if (v6 == enum case for WIS.XPC.ServicePredictionSetSimulationModeRequest.SimulationMode.simulatedOnly(_:))
  {
    v7 = 1;
    goto LABEL_7;
  }

  if (v6 == enum case for WIS.XPC.ServicePredictionSetSimulationModeRequest.SimulationMode.real(_:))
  {
    v7 = 0;
    goto LABEL_7;
  }

  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v9._object = 0x800000010025E8A0;
  v9._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v9);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001DC504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001DC56C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001DC5D4(uint64_t a1)
{
  v2 = sub_100164A3C(&unk_1002D8280, &qword_10024D578);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100164A3C(&qword_1002D8248, &qword_10024D528);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001A718(v9, v5, &unk_1002D8280, &qword_10024D578);
      result = sub_1001D6204(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for InternalServicePrediction(0);
      result = sub_1001DC56C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for InternalServicePrediction);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

id sub_1001DC800(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  swift_getObjectType();
  v10 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v10 - 8);
  v50 = &v44 - v11;
  v46 = type metadata accessor for Logger();
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[3] = &type metadata for PredictionMetric.CoreAnalyticsSubmitter;
  v57[4] = &off_1002B54A8;
  v56[3] = &type metadata for DefaultDateProvider;
  v56[4] = &off_1002B7A00;
  swift_defaultActor_initialize();
  *(a5 + 216) = 0;
  *(a5 + 112) = _swiftEmptyArrayStorage;
  *(a5 + 120) = _swiftEmptyArrayStorage;
  *(a5 + 128) = _swiftEmptyArrayStorage;
  *(a5 + 192) = 0;
  *(a5 + 224) = 0;
  *(a5 + 200) = _swiftEmptyArrayStorage;
  *(a5 + 208) = 0;
  *(a5 + 240) = sub_1001DC5D4(_swiftEmptyArrayStorage);
  type metadata accessor for RoamingPLMNPredictionController(0);
  sub_10019CBB4(v54);
  sub_10019CBEC(v53);
  *(a5 + 304) = sub_10019CC24(v54, v53);
  *(a5 + 232) = a1;
  sub_100164B34(v57, a5 + 152);
  sub_100164B34(v56, a5 + 264);
  v47 = a2;
  *(a5 + 248) = a2;
  *(a5 + 256) = a3;
  v14 = a1;

  v15 = [v14 relayRegistrationStateFetchedRawValue];
  if (v15 < 3)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2 * (v15 == 3);
  }

  swift_beginAccess();
  *(a5 + 216) = v16;
  v49 = a4;
  memcpy((a5 + 312), a4, 0x178uLL);
  sub_100003E50(&off_1002B7A38, v13);
  v17 = v14;
  v45 = v13;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v44 = a3;
    v22 = v21;
    *&v54[0] = v21;
    *v20 = 136315138;
    v23 = [v17 relayRegistrationStateRawValue];
    v24 = 0xEE00656369767265;
    v25 = 0x7320666F2074756FLL;
    if (v23 != 3)
    {
      v25 = 0x6E776F6E6B6E75;
      v24 = 0xE700000000000000;
    }

    v26 = v23 >= 3;
    if (v23 >= 3)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0x6976726573206E69;
    }

    if (v26)
    {
      v28 = v24;
    }

    else
    {
      v28 = 0xEA00000000006563;
    }

    v29 = sub_10017A8A8(v27, v28, v54);

    *(v20 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "Starting with registration state %s", v20, 0xCu);
    sub_100164B98(v22);
    a3 = v44;
  }

  (*(v48 + 8))(v45, v46);
  swift_beginAccess();
  *(a5 + 218) = 0;
  swift_beginAccess();
  *(a5 + 219) = 0;
  v30 = [v17 relayRegistrationStateRawValue];
  if (v30 < 3)
  {
    v31 = 1;
  }

  else
  {
    v31 = 2 * (v30 == 3);
  }

  type metadata accessor for MapsSuggestionController(0);
  v55 = 0;
  memset(v54, 0, sizeof(v54));

  sub_1001A691C(v53);
  sub_10019CBEC(v52);
  v32 = sub_1001A6960();
  v33 = v47;
  v34 = v49;
  *(a5 + 144) = sub_1001A702C(0, v31, v54, v53, v47, a3, v49, v52, v32, v35);
  type metadata accessor for MapsNavigationController();
  *(a5 + 136) = sub_1001BA164(v34, 0);
  v36 = type metadata accessor for ServicePredictionController();
  v51.receiver = a5;
  v51.super_class = v36;
  v37 = objc_msgSendSuper2(&v51, "init");
  v38 = type metadata accessor for TaskPriority();
  v39 = v50;
  (*(*(v38 - 8) + 56))(v50, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v33;
  v40[5] = a3;
  v40[6] = v37;
  v40[7] = v17;
  v41 = v37;

  v42 = v41;
  sub_100176B80(0, 0, v39, &unk_10024D570, v40);

  sub_100164B98(v56);
  sub_100164B98(v57);
  return v42;
}

id sub_1001DCD80(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v56 = a6;
  swift_getObjectType();
  v13 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v13 - 8);
  v53 = &v48 - v14;
  v51 = type metadata accessor for Logger();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(a7 + 216) = 0;
  *(a7 + 112) = _swiftEmptyArrayStorage;
  *(a7 + 120) = _swiftEmptyArrayStorage;
  *(a7 + 128) = _swiftEmptyArrayStorage;
  *(a7 + 192) = 0;
  *(a7 + 224) = 0;
  *(a7 + 200) = _swiftEmptyArrayStorage;
  *(a7 + 208) = 0;
  *(a7 + 240) = sub_1001DC5D4(_swiftEmptyArrayStorage);
  type metadata accessor for RoamingPLMNPredictionController(0);
  sub_10019CBB4(v60);
  sub_10019CBEC(v59);
  *(a7 + 304) = sub_10019CC24(v60, v59);
  *(a7 + 232) = a1;
  v55 = a2;
  sub_100164B34(a2, a7 + 152);
  v54 = a3;
  sub_100164B34(a3, a7 + 264);
  v17 = a4;
  *(a7 + 248) = a4;
  *(a7 + 256) = a5;
  swift_unknownObjectRetain();
  v52 = a5;

  v18 = [a1 relayRegistrationStateFetchedRawValue];
  if (v18 < 3)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2 * (v18 == 3);
  }

  swift_beginAccess();
  *(a7 + 216) = v19;
  memcpy((a7 + 312), v56, 0x178uLL);
  sub_100003E50(&off_1002B7A38, v16);
  swift_unknownObjectRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  v22 = &selRef_basebandSupportsWirelessInsights;
  if (os_log_type_enabled(v20, v21))
  {
    v23 = v50;
    v49 = v17;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v60[0] = v25;
    *v24 = 136315138;
    v26 = [a1 relayRegistrationStateRawValue];
    v27 = 2 * (v26 == 3);
    if (v26 < 3)
    {
      v27 = 1;
    }

    v28 = 0xEA00000000006563;
    v29 = 0x6976726573206E69;
    if (v27 != 1)
    {
      v29 = 0x7320666F2074756FLL;
      v28 = 0xEE00656369767265;
    }

    if (v27)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0x6E776F6E6B6E75;
    }

    if (v27)
    {
      v31 = v28;
    }

    else
    {
      v31 = 0xE700000000000000;
    }

    v32 = sub_10017A8A8(v30, v31, v60);

    *(v24 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v20, v21, "Starting with registration state %s", v24, 0xCu);
    sub_100164B98(v25);

    (*(v23 + 8))(v16, v51);
    v17 = v49;
    v22 = &selRef_basebandSupportsWirelessInsights;
  }

  else
  {

    (*(v50 + 8))(v16, v51);
  }

  swift_beginAccess();
  *(a7 + 218) = 0;
  swift_beginAccess();
  *(a7 + 219) = 0;
  type metadata accessor for MapsSuggestionController(0);
  v33 = [a1 v22[72]];
  if (v33 < 3)
  {
    v34 = 1;
  }

  else
  {
    v34 = 2 * (v33 == 3);
  }

  v61 = 0;
  memset(v60, 0, sizeof(v60));
  v35 = v52;

  sub_1001A691C(v59);
  sub_10019CBEC(v58);
  v36 = sub_1001A6960();
  v47 = v37;
  LODWORD(v37) = v34;
  v38 = v56;
  *(a7 + 144) = sub_1001A702C(0, v37, v60, v59, v17, v35, v56, v58, v36, v47);
  type metadata accessor for MapsNavigationController();
  *(a7 + 136) = sub_1001BA164(v38, 0);
  v39 = type metadata accessor for ServicePredictionController();
  v57.receiver = a7;
  v57.super_class = v39;
  v40 = objc_msgSendSuper2(&v57, "init");
  v41 = type metadata accessor for TaskPriority();
  v42 = v53;
  (*(*(v41 - 8) + 56))(v53, 1, 1, v41);
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v17;
  v43[5] = v35;
  v43[6] = v40;
  v43[7] = a1;
  v44 = v40;

  v45 = v44;
  sub_100176B80(0, 0, v42, &unk_10024D568, v43);

  sub_100164B98(v54);
  sub_100164B98(v55);
  return v45;
}

id sub_1001DD36C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, const void *a6)
{
  type metadata accessor for ServicePredictionController();
  v12 = swift_allocObject();

  return sub_1001DCD80(a1, a2, a3, a4, a5, a6, v12);
}

uint64_t sub_1001DD3FC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001C4C68(v4, v5, v6, v2, v3);
}

uint64_t sub_1001DD4C4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10017F434;

  return sub_1001C66F0(v4, v5, v6, v2, v3);
}

uint64_t sub_1001DD55C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  v8 = *(v84 - 8);
  v9 = __chkstk_darwin(v84);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v70 - v12;
  v14 = type metadata accessor for InternalServicePrediction(0) - 8;
  v15 = __chkstk_darwin(v14);
  v80 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v75 = &v70 - v18;
  v19 = __chkstk_darwin(v17);
  v79 = &v70 - v20;
  v21 = __chkstk_darwin(v19);
  v74 = &v70 - v22;
  v23 = __chkstk_darwin(v21);
  v78 = &v70 - v24;
  __chkstk_darwin(v23);
  v27 = *(a2 + 16);
  v28 = *(a3 + 16);
  if (v28)
  {
    v29 = &v70 - v26;
    v70 = v27;
    v71 = a1;
    v72 = a4;
    v30 = *(v25 + 72);
    v82 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v31 = a3 + v82;
    LODWORD(v76) = enum case for PrivateServicePrediction.ServicePredictionType.noCellularDataService(_:);
    v88 = (v8 + 8);
    v89 = (v8 + 104);
    v81 = _swiftEmptyArrayStorage;
    v85 = a3 + v82;
    v73 = v28;
    v83 = v30;
    v77 = v11;
    do
    {
      sub_1001DC504(v31, v29, type metadata accessor for InternalServicePrediction);
      PrivateServicePrediction.type.getter();
      v32 = v11;
      v33 = v11;
      v34 = v84;
      v87 = *v89;
      v87(v32, v76, v84);
      v35 = static PrivateServicePrediction.ServicePredictionType.== infix(_:_:)();
      v36 = *v88;
      (*v88)(v33, v34);
      v86 = v36;
      v36(v13, v34);
      if (v35)
      {
        sub_1001DC56C(v29, v78, type metadata accessor for InternalServicePrediction);
        v37 = v81;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001BBCAC(0, v37[2] + 1, 1);
          v37 = v90;
        }

        v11 = v77;
        v40 = v37[2];
        v39 = v37[3];
        if (v40 >= v39 >> 1)
        {
          sub_1001BBCAC((v39 > 1), v40 + 1, 1);
          v37 = v90;
        }

        v37[2] = v40 + 1;
        v30 = v83;
        v81 = v37;
        sub_1001DC56C(v78, v37 + v82 + v40 * v83, type metadata accessor for InternalServicePrediction);
      }

      else
      {
        sub_1001DE088(v29, type metadata accessor for InternalServicePrediction);
        v11 = v77;
      }

      v31 += v30;
      --v28;
    }

    while (v28);
    v76 = v81[2];

    LODWORD(v78) = enum case for PrivateServicePrediction.ServicePredictionType.lowSignalStrength(_:);
    v81 = _swiftEmptyArrayStorage;
    v41 = v85;
    v43 = v73;
    v42 = v74;
    do
    {
      sub_1001DC504(v41, v42, type metadata accessor for InternalServicePrediction);
      PrivateServicePrediction.type.getter();
      v45 = v84;
      v87(v11, v78, v84);
      v46 = static PrivateServicePrediction.ServicePredictionType.== infix(_:_:)();
      v47 = v11;
      v48 = v11;
      v49 = v86;
      v86(v48, v45);
      v49(v13, v45);
      if (v46)
      {
        sub_1001DC56C(v42, v79, type metadata accessor for InternalServicePrediction);
        v50 = v81;
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v52 = v50;
        v90 = v50;
        if ((v51 & 1) == 0)
        {
          sub_1001BBCAC(0, v50[2] + 1, 1);
          v42 = v74;
          v52 = v90;
        }

        v11 = v47;
        v54 = v52[2];
        v53 = v52[3];
        if (v54 >= v53 >> 1)
        {
          sub_1001BBCAC((v53 > 1), v54 + 1, 1);
          v42 = v74;
          v52 = v90;
        }

        v52[2] = v54 + 1;
        v44 = v83;
        v81 = v52;
        sub_1001DC56C(v79, v52 + v82 + v54 * v83, type metadata accessor for InternalServicePrediction);
      }

      else
      {
        sub_1001DE088(v42, type metadata accessor for InternalServicePrediction);
        v11 = v47;
        v44 = v83;
      }

      v41 += v44;
      --v43;
    }

    while (v43);
    v79 = v81[2];

    LODWORD(v81) = enum case for PrivateServicePrediction.ServicePredictionType.cellularDataCongestion(_:);
    v55 = _swiftEmptyArrayStorage;
    v56 = v73;
    v57 = v75;
    v59 = v84;
    v58 = v85;
    do
    {
      v85 = v58;
      sub_1001DC504(v58, v57, type metadata accessor for InternalServicePrediction);
      PrivateServicePrediction.type.getter();
      v87(v11, v81, v59);
      v60 = static PrivateServicePrediction.ServicePredictionType.== infix(_:_:)();
      v61 = v86;
      v86(v11, v59);
      v61(v13, v59);
      if (v60)
      {
        sub_1001DC56C(v57, v80, type metadata accessor for InternalServicePrediction);
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v90 = v55;
        if ((v62 & 1) == 0)
        {
          sub_1001BBCAC(0, v55[2] + 1, 1);
          v55 = v90;
        }

        v64 = v55[2];
        v63 = v55[3];
        if (v64 >= v63 >> 1)
        {
          sub_1001BBCAC((v63 > 1), v64 + 1, 1);
          v55 = v90;
        }

        v55[2] = v64 + 1;
        v65 = v55 + v82 + v64 * v83;
        v44 = v83;
        sub_1001DC56C(v80, v65, type metadata accessor for InternalServicePrediction);
        v57 = v75;
      }

      else
      {
        sub_1001DE088(v57, type metadata accessor for InternalServicePrediction);
      }

      v58 = v85 + v44;
      --v56;
    }

    while (v56);
    a4 = v72;
    v28 = v73;
    LOBYTE(a1) = v71;
    v27 = v70;
    v66 = v76;
    v67 = v79;
  }

  else
  {
    v55 = _swiftEmptyArrayStorage;
    v66 = _swiftEmptyArrayStorage[2];

    v67 = _swiftEmptyArrayStorage[2];
  }

  v68 = v55[2];

  *a4 = a1;
  *(a4 + 8) = v27;
  *(a4 + 16) = v28;
  *(a4 + 24) = v66;
  *(a4 + 32) = v67;
  *(a4 + 40) = v68;
  *(a4 + 48) = 1;
  return result;
}

uint64_t sub_1001DDD40(uint64_t a1)
{
  v2 = type metadata accessor for InternalServicePrediction(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction, &unk_1002496A0);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_1001DC504(v11, v6, type metadata accessor for InternalServicePrediction);
      sub_1001D6458(v8, v6);
      sub_1001DE088(v8, type metadata accessor for InternalServicePrediction);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_1001DDED4(uint64_t a1)
{
  v2 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_1001BCC20(&qword_1002D8250, 255, type metadata accessor for InternalUpcomingFlightPrediction, &unk_10024C8A8);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_1001DC504(v11, v6, type metadata accessor for InternalUpcomingFlightPrediction);
      sub_1001D6718(v8, v6);
      sub_1001DE088(v8, type metadata accessor for InternalUpcomingFlightPrediction);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_1001DE088(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001DE0E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100164A3C(&qword_1002D7BE8, &qword_10024C750);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DE158(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1001DE184()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002A5C;

  return sub_1001CDE80(v3, v4, v5, v2);
}

uint64_t sub_1001DE29C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 16);
  sub_100164A3C(&qword_1002D7BE8, &qword_10024C750);
  return a2(v5, v4);
}

uint64_t sub_1001DE364(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_100164A3C(&qword_1002D7BE8, &qword_10024C750);
  return a2(v4, v5);
}

uint64_t sub_1001DE3D4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002A5C;

  return sub_1001CFDF0(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_1001DE46C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001D1E28(v4, v5, v6, v2, v3);
}

uint64_t sub_1001DE508()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001D1EA0(v4, v5, v6, v2, v3);
}

uint64_t sub_1001DE5A4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001D20A0(v4, v5, v6, v2, v3);
}

uint64_t sub_1001DE640()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001D2208(v4, v5, v6, v2, v3);
}

uint64_t sub_1001DE6DC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002A5C;

  return sub_1001D24C8(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_1001DE774()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001D263C(v4, v5, v6, v2, v3);
}

uint64_t sub_1001DE80C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1001DE8AC()
{
  result = qword_1002D7C48;
  if (!qword_1002D7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C48);
  }

  return result;
}

unint64_t sub_1001DE908()
{
  result = qword_1002D7C58;
  if (!qword_1002D7C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C58);
  }

  return result;
}

unint64_t sub_1001DE960()
{
  result = qword_1002D7C60;
  if (!qword_1002D7C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C60);
  }

  return result;
}

unint64_t sub_1001DE9B8()
{
  result = qword_1002D7C68;
  if (!qword_1002D7C68)
  {
    sub_100169B50(&qword_1002D7C70, qword_10024CB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C68);
  }

  return result;
}

unint64_t sub_1001DEA20()
{
  result = qword_1002D7C78;
  if (!qword_1002D7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C78);
  }

  return result;
}

unint64_t sub_1001DEA78()
{
  result = qword_1002D7C80;
  if (!qword_1002D7C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C80);
  }

  return result;
}

unint64_t sub_1001DEAD0()
{
  result = qword_1002D7C88;
  if (!qword_1002D7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C88);
  }

  return result;
}

unint64_t sub_1001DEB28()
{
  result = qword_1002D7C90;
  if (!qword_1002D7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C90);
  }

  return result;
}

unint64_t sub_1001DEB80()
{
  result = qword_1002D7C98;
  if (!qword_1002D7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C98);
  }

  return result;
}

unint64_t sub_1001DEBD8()
{
  result = qword_1002D7CA0;
  if (!qword_1002D7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7CA0);
  }

  return result;
}

void sub_1001DEC54(uint64_t a1)
{
  type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(319);
  if (v1 <= 0x3F)
  {
    sub_1001DED14(319);
    if (v2 <= 0x3F)
    {
      sub_1001DFB78(319, &unk_1002D7D10, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001DED14(uint64_t a1)
{
  if (!qword_1002D7D00)
  {
    sub_100169B50(&qword_1002D7D08, &qword_10024D008);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1002D7D00);
    }
  }
}

__n128 sub_1001DEDB0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001DEDCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1001DEE14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001DEE7C(uint64_t a1)
{
  result = type metadata accessor for Date();
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

void sub_1001DEF3C(uint64_t a1)
{
  sub_1001923F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t _s17wirelessinsightsd14SignalStrengthOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17wirelessinsightsd14SignalStrengthOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001DF208(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001DF25C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001DF2E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1001DF330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001DF3A4(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002A5C;

  return sub_1001D3744(a1, v5, v6, v4);
}

uint64_t sub_1001DF444()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001D3390(v2, v3);
}

uint64_t sub_1001DF4F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100002A5C;

  return sub_1001D59DC(v2, v3, v4);
}

uint64_t sub_1001DF5B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001DF5F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002A5C;

  return sub_1001D5AC4(a1, v4, v5, v6);
}

uint64_t sub_1001DF6C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002A5C;

  return sub_1001D5EA8(a1, v4);
}

uint64_t sub_1001DF77C(uint64_t a1)
{
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002A5C;

  return sub_1001D2C3C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1001DF818(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_1001DF874()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001DF8BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002A5C;

  return sub_1001DB3FC(a1, v4);
}

uint64_t sub_1001DF974(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10017F434;

  return sub_1001DB3FC(a1, v4);
}

uint64_t sub_1001DFA2C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100002A5C;

  return sub_1001C43CC(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1001DFAD8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

void sub_1001DFB78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t awd::metrics::protobuf_ShutdownFile_MetricLogHeader_2eproto(awd::metrics *this)
{
  result = awd::metrics::MetricLog::default_instance_;
  if (awd::metrics::MetricLog::default_instance_)
  {
    return (*(*awd::metrics::MetricLog::default_instance_ + 8))();
  }

  return result;
}

void awd::metrics::MetricLog::MergeFrom(awd::metrics::MetricLog *this, const awd::metrics::MetricLog *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(a2 + 14);
  if (v4)
  {
    sub_10001C3A0(this + 12, *(this + 14) + v4);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  LOBYTE(v5) = *(a2 + 68);
  if (v5)
  {
    if (*(a2 + 68))
    {
      v7 = *(a2 + 1);
      *(this + 17) |= 1u;
      v8 = *(this + 1);
      if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v5 = *(a2 + 17);
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }

    else if ((*(a2 + 68) & 2) == 0)
    {
      goto LABEL_8;
    }

    v9 = *(a2 + 16);
    *(this + 17) |= 2u;
    *(this + 16) = v9;
    v5 = *(a2 + 17);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

LABEL_19:
    v10 = *(a2 + 5);
    *(this + 17) |= 4u;
    *(this + 5) = v10;
    v5 = *(a2 + 17);
    if ((v5 & 8) == 0)
    {
LABEL_10:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

LABEL_20:
    v11 = *(a2 + 8);
    *(this + 17) |= 8u;
    *(this + 8) = v11;
    v5 = *(a2 + 17);
    if ((v5 & 0x10) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }

LABEL_21:
    v12 = *(a2 + 3);
    *(this + 17) |= 0x10u;
    v13 = *(this + 3);
    if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v13, v12);
    v5 = *(a2 + 17);
    if ((v5 & 0x20) == 0)
    {
LABEL_12:
      if ((v5 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

LABEL_24:
    v14 = *(a2 + 5);
    *(this + 17) |= 0x20u;
    *(this + 5) = v14;
    if ((*(a2 + 17) & 0x40) == 0)
    {
      return;
    }

LABEL_13:
    v6 = *(a2 + 9);
    *(this + 17) |= 0x40u;
    *(this + 9) = v6;
  }
}

void sub_1001DFEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::MetricLog::Clear(uint64_t this)
{
  if (*(this + 68))
  {
    if (*(this + 68))
    {
      v1 = *(this + 8);
      if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v1 + 23) < 0)
        {
          **v1 = 0;
          *(v1 + 8) = 0;
        }

        else
        {
          *v1 = 0;
          *(v1 + 23) = 0;
        }
      }
    }

    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 32) = 0;
    if ((*(this + 68) & 0x10) != 0)
    {
      v2 = *(this + 24);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(this + 40) = 0;
    *(this + 36) = 0;
  }

  *(this + 56) = 0;
  *(this + 68) = 0;
  return this;
}

uint64_t awd::metrics::MetricLog::MergePartialFromCodedStream(awd::metrics::MetricLog *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_1:
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 == 3)
            {
              if ((TagFallback & 7) == 0)
              {
                v18 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_52;
              }
            }

            else if (v7 == 4 && (TagFallback & 7) == 0)
            {
              v12 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_60;
            }

            goto LABEL_42;
          }

          if (v7 == 1)
          {
            if (v8 != 2)
            {
              goto LABEL_42;
            }

            *(this + 17) |= 1u;
            if (*(this + 1) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v14 < v9 && *v14 == 16)
            {
              v10 = v14 + 1;
              *(a2 + 1) = v10;
LABEL_34:
              v39 = 0;
              if (v10 >= v9 || (v15 = *v10, (v15 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                if (!result)
                {
                  return result;
                }

                v15 = v39;
                v16 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v16 = v10 + 1;
                *(a2 + 1) = v16;
              }

              *(this + 16) = v15 != 0;
              *(this + 17) |= 2u;
              if (v16 < v9 && *v16 == 24)
              {
                v18 = v16 + 1;
                *(a2 + 1) = v18;
LABEL_52:
                if (v18 >= v9 || (v21 = *v18, v21 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
                  if (!result)
                  {
                    return result;
                  }

                  v22 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  *(this + 5) = v21;
                  v22 = v18 + 1;
                  *(a2 + 1) = v22;
                }

                *(this + 17) |= 4u;
                if (v22 < v9 && *v22 == 32)
                {
                  v12 = v22 + 1;
                  *(a2 + 1) = v12;
LABEL_60:
                  if (v12 >= v9 || (v23 = *v12, v23 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
                    if (!result)
                    {
                      return result;
                    }

                    v24 = *(a2 + 1);
                    v9 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 5) = v23;
                    v24 = v12 + 1;
                    *(a2 + 1) = v24;
                  }

                  *(this + 17) |= 0x20u;
                  if (v24 < v9 && *v24 == 40)
                  {
                    v17 = v24 + 1;
                    *(a2 + 1) = v17;
                    goto LABEL_68;
                  }
                }
              }
            }
          }

          else
          {
            if (v7 == 2 && (TagFallback & 7) == 0)
            {
              v10 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_34;
            }

LABEL_42:
            if (v8 == 4)
            {
              return 1;
            }

            if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
            {
              return 0;
            }
          }
        }

        if (TagFallback >> 3 <= 6)
        {
          break;
        }

        if (v7 == 7)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_42;
          }

          v19 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_96:
          if (v19 >= v9 || (v37 = *v19, v37 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v38 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v37;
            v38 = v19 + 1;
            *(a2 + 1) = v38;
          }

          v13 = *(this + 17) | 8;
          *(this + 17) = v13;
          if (v38 < v9 && *v38 == 66)
          {
            *(a2 + 1) = v38 + 1;
            goto LABEL_104;
          }
        }

        else
        {
          if (v7 != 8 || v8 != 2)
          {
            goto LABEL_42;
          }

          v13 = *(this + 17);
LABEL_104:
          *(this + 17) = v13 | 0x10;
          if (*(this + 3) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 5)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_42;
      }

      v17 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_68:
      if (v17 >= v9 || (v25 = *v17, v25 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
        if (!result)
        {
          return result;
        }

        v26 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 9) = v25;
        v26 = (v17 + 1);
        *(a2 + 1) = v26;
      }

      *(this + 17) |= 0x40u;
      if (v26 < v9)
      {
        v27 = *v26;
        goto LABEL_75;
      }
    }

    if (v7 != 6)
    {
      goto LABEL_42;
    }

    if ((TagFallback & 7) != 0)
    {
      break;
    }

    v20 = *(a2 + 1);
    v9 = *(a2 + 2);
    while (1)
    {
      v40 = 0;
      if (v20 >= v9 || *v20 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
        {
          return 0;
        }
      }

      else
      {
        v40 = *v20;
        *(a2 + 1) = v20 + 1;
      }

      v28 = *(this + 14);
      if (v28 == *(this + 15))
      {
        sub_10001C3A0(this + 12, v28 + 1);
        v28 = *(this + 14);
      }

      v29 = v40;
      v30 = *(this + 6);
      *(this + 14) = v28 + 1;
      *(v30 + 4 * v28) = v29;
      v31 = *(this + 15) - *(this + 14);
      if (v31 >= 1)
      {
        v32 = v31 + 1;
        do
        {
          v33 = *(a2 + 1);
          v34 = *(a2 + 2);
          if (v33 >= v34 || *v33 != 48)
          {
            break;
          }

          *(a2 + 1) = v33 + 1;
          if ((v33 + 1) >= v34 || (v35 = v33[1], (v35 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
            {
              return 0;
            }

            v35 = v40;
            v30 = *(this + 6);
          }

          else
          {
            v40 = v33[1];
            *(a2 + 1) = v33 + 2;
          }

          v36 = *(this + 14);
          *(this + 14) = v36 + 1;
          *(v30 + 4 * v36) = v35;
          --v32;
        }

        while (v32 > 1);
      }

LABEL_93:
      v26 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v26 >= v9)
      {
        break;
      }

      v27 = *v26;
      if (v27 == 56)
      {
        v19 = (v26 + 1);
        *(a2 + 1) = v19;
        goto LABEL_96;
      }

LABEL_75:
      if (v27 != 48)
      {
        goto LABEL_1;
      }

      v20 = (v26 + 1);
      *(a2 + 1) = v20;
    }
  }

  if (v8 != 2)
  {
    goto LABEL_42;
  }

  result = sub_1001E0570(a2, this + 12);
  if (result)
  {
    goto LABEL_93;
  }

  return result;
}

uint64_t sub_1001E0570(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, _DWORD *a2)
{
  v13 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
    if (!result)
    {
      return result;
    }

    v5 = v13;
  }

  else
  {
    v13 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v12 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || *v8 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v12 = *v8;
        *(this + 1) = v8 + 1;
      }

      v9 = a2[2];
      if (v9 == a2[3])
      {
        sub_10001C3A0(a2, v9 + 1);
        v9 = a2[2];
      }

      v10 = v12;
      v11 = *a2;
      a2[2] = v9 + 1;
      *(v11 + 4 * v9) = v10;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
  return 1;
}

uint64_t awd::metrics::protobuf_ShutdownFile_MetricFile_2eproto(awd::metrics *this)
{
  result = awd::metrics::MetricFile::default_instance_;
  if (awd::metrics::MetricFile::default_instance_)
  {
    return (*(*awd::metrics::MetricFile::default_instance_ + 8))();
  }

  return result;
}

void awd::metrics::protobuf_AddDesc_MetricFile_2eproto_impl(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/WirelessInsightsExecutables/AWDMetrics/cpp/MetricFile.pb.cc", a4);
  awd::metrics::protobuf_AddDesc_MetricLog_2eproto(v4);
  operator new();
}

uint64_t awd::metrics::MetricFile::MetricFile(uint64_t this)
{
  *(this + 112) = 0;
  *this = off_1002B8678;
  *(this + 8) = 0;
  *(this + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 44) = 0;
  *(this + 128) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 136) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 56) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 64) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 72) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 80) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 88) = 0;
  *(this + 120) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 144) = 0;
  return this;
}

void awd::metrics::protobuf_AddDesc_MetricFile_2eproto(awd::metrics *this)
{
  v1 = awd::metrics::protobuf_AddDesc_MetricFile_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[1] = awd::metrics::protobuf_AddDesc_MetricFile_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1001E0894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MetricFile::MergeFrom(awd::metrics::MetricFile *this, const awd::metrics::MetricFile *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v35);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96), *(a2 + 26) + *(this + 26));
  if (*(a2 + 26) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 12) + 8 * v4);
      v6 = *(this + 27);
      v7 = *(this + 26);
      if (v7 >= v6)
      {
        if (v6 == *(this + 28))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96), v6 + 1);
          v6 = *(this + 27);
        }

        *(this + 27) = v6 + 1;
        sub_1001E22DC();
      }

      v8 = *(this + 12);
      *(this + 26) = v7 + 1;
      awd::metrics::MetricLog::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 26));
  }

  v9 = *(a2 + 36);
  if (!v9)
  {
    goto LABEL_21;
  }

  if (v9)
  {
    v11 = *(a2 + 1);
    *(this + 36) |= 1u;
    *(this + 1) = v11;
    v9 = *(a2 + 36);
    if ((v9 & 2) == 0)
    {
LABEL_14:
      if ((v9 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_35;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_14;
  }

  v12 = *(a2 + 2);
  *(this + 36) |= 2u;
  v13 = *(this + 2);
  if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v9 = *(a2 + 36);
  if ((v9 & 4) == 0)
  {
LABEL_15:
    if ((v9 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_35:
  v14 = *(a2 + 3);
  *(this + 36) |= 4u;
  v15 = *(this + 3);
  if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v9 = *(a2 + 36);
  if ((v9 & 8) == 0)
  {
LABEL_16:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  v16 = *(a2 + 8);
  *(this + 36) |= 8u;
  *(this + 8) = v16;
  v9 = *(a2 + 36);
  if ((v9 & 0x10) == 0)
  {
LABEL_17:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_40:
    v18 = *(a2 + 40);
    *(this + 36) |= 0x20u;
    *(this + 40) = v18;
    v9 = *(a2 + 36);
    if ((v9 & 0x40) == 0)
    {
LABEL_19:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_39:
  v17 = *(a2 + 9);
  *(this + 36) |= 0x10u;
  *(this + 9) = v17;
  v9 = *(a2 + 36);
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_18:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_41:
  v19 = *(a2 + 11);
  *(this + 36) |= 0x40u;
  *(this + 11) = v19;
  v9 = *(a2 + 36);
  if ((v9 & 0x80) != 0)
  {
LABEL_20:
    v10 = *(a2 + 34);
    *(this + 36) |= 0x80u;
    *(this + 34) = v10;
    v9 = *(a2 + 36);
  }

LABEL_21:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_29;
  }

  if ((v9 & 0x100) != 0)
  {
    v20 = *(a2 + 6);
    *(this + 36) |= 0x100u;
    v21 = *(this + 6);
    if (v21 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v21, v20);
    v9 = *(a2 + 36);
    if ((v9 & 0x200) == 0)
    {
LABEL_24:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_49;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  v22 = *(a2 + 7);
  *(this + 36) |= 0x200u;
  v23 = *(this + 7);
  if (v23 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v23, v22);
  v9 = *(a2 + 36);
  if ((v9 & 0x400) == 0)
  {
LABEL_25:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_52;
  }

LABEL_49:
  v24 = *(a2 + 8);
  *(this + 36) |= 0x400u;
  v25 = *(this + 8);
  if (v25 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v25, v24);
  v9 = *(a2 + 36);
  if ((v9 & 0x800) == 0)
  {
LABEL_26:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_52:
  v26 = *(a2 + 9);
  *(this + 36) |= 0x800u;
  v27 = *(this + 9);
  if (v27 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v27, v26);
  v9 = *(a2 + 36);
  if ((v9 & 0x1000) == 0)
  {
LABEL_27:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_55:
  v28 = *(a2 + 10);
  *(this + 36) |= 0x1000u;
  v29 = *(this + 10);
  if (v29 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v29, v28);
  v9 = *(a2 + 36);
  if ((v9 & 0x2000) == 0)
  {
LABEL_28:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  v30 = *(a2 + 11);
  *(this + 36) |= 0x2000u;
  *(this + 11) = v30;
  v9 = *(a2 + 36);
  if ((v9 & 0x8000) == 0)
  {
LABEL_29:
    if ((v9 & 0x10000) == 0)
    {
      return;
    }

    goto LABEL_62;
  }

LABEL_59:
  v31 = *(a2 + 15);
  *(this + 36) |= 0x8000u;
  v32 = *(this + 15);
  if (v32 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v32, v31);
  if ((*(a2 + 36) & 0x10000) != 0)
  {
LABEL_62:
    v33 = *(a2 + 16);
    *(this + 36) |= 0x10000u;
    v34 = *(this + 16);
    if (v34 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v34, v33);
  }
}

void sub_1001E0D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MetricFile::~MetricFile(awd::metrics::MetricFile *this)
{
  *this = off_1002B8678;
  awd::metrics::MetricFile::SharedDtor(this);
  sub_1000C8650(this + 96);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MetricFile::~MetricFile(this);

  operator delete();
}

void awd::metrics::MetricFile::SharedDtor(awd::metrics::MetricFile *this)
{
  v1 = *(this + 2);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = *(this + 3);
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v5 = *(this + 6);
  if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  v7 = *(this + 7);
  if (v7 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    operator delete();
  }

  v9 = *(this + 8);
  if (v9 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v9)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    operator delete();
  }

  v10 = *(this + 9);
  if (v10 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v10)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    operator delete();
  }

  v11 = *(this + 10);
  if (v11 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    operator delete();
  }

  v12 = *(this + 15);
  if (v12 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    operator delete();
  }

  v13 = *(this + 16);
  if (v13 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    operator delete();
  }

  awd::metrics::protobuf_AddDesc_MetricFile_2eproto(this);
}

uint64_t awd::metrics::MetricFile::Clear(awd::metrics::MetricFile *this)
{
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 1) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 2);
      if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    if ((*(this + 144) & 4) != 0)
    {
      v4 = *(this + 3);
      if (v4 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    *(this + 11) = 0;
    *(this + 34) = 0;
    *(this + 4) = 0;
    *(this + 40) = 0;
    v2 = *(this + 36);
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v5 = *(this + 6);
      if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    if ((*(this + 145) & 2) != 0)
    {
      v6 = *(this + 7);
      if (v6 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v6 + 23) < 0)
        {
          **v6 = 0;
          *(v6 + 8) = 0;
        }

        else
        {
          *v6 = 0;
          *(v6 + 23) = 0;
        }
      }
    }

    if ((*(this + 145) & 4) != 0)
    {
      v7 = *(this + 8);
      if (v7 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    if ((*(this + 145) & 8) != 0)
    {
      v8 = *(this + 9);
      if (v8 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v8 + 23) < 0)
        {
          **v8 = 0;
          *(v8 + 8) = 0;
        }

        else
        {
          *v8 = 0;
          *(v8 + 23) = 0;
        }
      }
    }

    if ((*(this + 145) & 0x10) != 0)
    {
      v9 = *(this + 10);
      if (v9 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 8) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }

    *(this + 11) = 0;
    if ((*(this + 145) & 0x80) != 0)
    {
      v10 = *(this + 15);
      if (v10 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v10 + 23) < 0)
        {
          **v10 = 0;
          *(v10 + 8) = 0;
        }

        else
        {
          *v10 = 0;
          *(v10 + 23) = 0;
        }
      }
    }
  }

  if (*(this + 146))
  {
    v11 = *(this + 16);
    if (v11 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      if (*(v11 + 23) < 0)
      {
        **v11 = 0;
        *(v11 + 8) = 0;
      }

      else
      {
        *v11 = 0;
        *(v11 + 23) = 0;
      }
    }
  }

  result = sub_1000C85E0(this + 96);
  *(this + 36) = 0;
  return result;
}

uint64_t awd::metrics::MetricFile::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2))
    {
      break;
    }

    TagFallback = *v5;
    if ((TagFallback & 0x80000000) != 0)
    {
      break;
    }

    *(a2 + 8) = TagFallback;
    *(a2 + 1) = v5 + 1;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (this + 8));
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        v17 = *(this + 144) | 1;
        *(this + 144) = v17;
        if (v11 < v8 && *v11 == 18)
        {
          *(a2 + 1) = v11 + 1;
          goto LABEL_50;
        }

        continue;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_42;
        }

        v17 = *(this + 144);
LABEL_50:
        *(this + 144) = v17 | 2;
        if (*(this + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 != 26)
        {
          continue;
        }

        *(a2 + 1) = v23 + 1;
LABEL_56:
        *(this + 144) |= 4u;
        if (*(this + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v24 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v24 >= v14 || *v24 != 32)
        {
          continue;
        }

        v20 = v24 + 1;
        *(a2 + 1) = v20;
LABEL_62:
        v56[0] = 0;
        if (v20 >= v14 || (v25 = *v20, (v25 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v56);
          if (!result)
          {
            return result;
          }

          v25 = v56[0];
          v26 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          v26 = v20 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 40) = v25 != 0;
        *(this + 144) |= 0x20u;
        if (v26 >= v14 || *v26 != 40)
        {
          continue;
        }

        v15 = v26 + 1;
        *(a2 + 1) = v15;
LABEL_70:
        if (v15 >= v14 || (v27 = *v15, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (this + 44));
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 44) = v27;
          v28 = v15 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 144) |= 0x40u;
        if (v28 >= v14 || *v28 != 48)
        {
          continue;
        }

        v18 = v28 + 1;
        *(a2 + 1) = v18;
LABEL_78:
        if (v18 >= v14 || (v29 = *v18, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (this + 136));
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 136) = v29;
          v30 = v18 + 1;
          *(a2 + 1) = v30;
        }

        v21 = *(this + 144) | 0x80;
        *(this + 144) = v21;
        if (v30 >= v14 || *v30 != 58)
        {
          continue;
        }

        *(a2 + 1) = v30 + 1;
LABEL_86:
        *(this + 144) = v21 | 0x800;
        if (*(this + 72) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 != 66)
        {
          continue;
        }

        *(a2 + 1) = v31 + 1;
LABEL_92:
        *(this + 144) |= 0x100u;
        if (*(this + 48) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v32 = *(a2 + 1);
        if (v32 >= *(a2 + 2) || *v32 != 74)
        {
          continue;
        }

        *(a2 + 1) = v32 + 1;
LABEL_98:
        *(this + 144) |= 0x200u;
        if (*(this + 56) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 != 82)
        {
          continue;
        }

        *(a2 + 1) = v33 + 1;
LABEL_104:
        *(this + 144) |= 0x1000u;
        if (*(this + 80) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v34 = *(a2 + 1);
        if (v34 >= *(a2 + 2) || *v34 != 90)
        {
          continue;
        }

        *(a2 + 1) = v34 + 1;
LABEL_110:
        *(this + 144) |= 0x400u;
        if (*(this + 64) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v35 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v35 >= v12 || *v35 != 96)
        {
          continue;
        }

        v19 = v35 + 1;
        *(a2 + 1) = v19;
LABEL_116:
        *v56 = 0;
        if (v19 >= v12 || (v36 = *v19, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v56);
          if (!result)
          {
            return result;
          }

          v36 = *v56;
          v37 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v37 = v19 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 88) = v36;
        *(this + 144) |= 0x2000u;
        if (v37 >= v12 || *v37 != 104)
        {
          continue;
        }

        v16 = v37 + 1;
        *(a2 + 1) = v16;
LABEL_124:
        if (v16 >= v12 || (v38 = *v16, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (this + 32));
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 32) = v38;
          v39 = v16 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 144) |= 8u;
        if (v39 >= v12 || *v39 != 112)
        {
          continue;
        }

        v13 = v39 + 1;
        *(a2 + 1) = v13;
LABEL_132:
        if (v13 >= v12 || (v40 = *v13, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (this + 36));
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 36) = v40;
          v41 = (v13 + 1);
          *(a2 + 1) = v41;
        }

        *(this + 144) |= 0x10u;
        if (v41 >= v12 || *v41 != 122)
        {
          continue;
        }

        break;
      case 3u:
        if (v7 == 2)
        {
          goto LABEL_56;
        }

        goto LABEL_42;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v20 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_62;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_70;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v18 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_78;
      case 7u:
        if (v7 != 2)
        {
          goto LABEL_42;
        }

        v21 = *(this + 144);
        goto LABEL_86;
      case 8u:
        if (v7 == 2)
        {
          goto LABEL_92;
        }

        goto LABEL_42;
      case 9u:
        if (v7 == 2)
        {
          goto LABEL_98;
        }

        goto LABEL_42;
      case 0xAu:
        if (v7 == 2)
        {
          goto LABEL_104;
        }

        goto LABEL_42;
      case 0xBu:
        if (v7 == 2)
        {
          goto LABEL_110;
        }

        goto LABEL_42;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v19 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_116;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v16 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_124;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_132;
      case 0xFu:
        if (v7 == 2)
        {
          goto LABEL_140;
        }

        goto LABEL_42;
      case 0x20u:
        if (v7 == 2)
        {
          goto LABEL_160;
        }

        goto LABEL_42;
      case 0x21u:
        if (v7 != 2)
        {
          goto LABEL_42;
        }

        goto LABEL_167;
      default:
LABEL_42:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }

        continue;
    }

    do
    {
      *(a2 + 1) = v41 + 1;
LABEL_140:
      v42 = *(this + 108);
      v43 = *(this + 104);
      if (v43 >= v42)
      {
        if (v42 == *(this + 112))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96), v42 + 1);
          v42 = *(this + 108);
        }

        *(this + 108) = v42 + 1;
        sub_1001E22DC();
      }

      v44 = *(this + 96);
      *(this + 104) = v43 + 1;
      v45 = *(v44 + 8 * v43);
      v56[0] = 0;
      v46 = *(a2 + 1);
      if (v46 >= *(a2 + 2) || *v46 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v56))
        {
          return 0;
        }
      }

      else
      {
        v56[0] = *v46;
        *(a2 + 1) = v46 + 1;
      }

      v47 = *(a2 + 14);
      v48 = *(a2 + 15);
      *(a2 + 14) = v47 + 1;
      if (v47 >= v48)
      {
        return 0;
      }

      v49 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v56[0]);
      if (!awd::metrics::MetricLog::MergePartialFromCodedStream(v45, a2, v50) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v49);
      v51 = *(a2 + 14);
      v52 = __OFSUB__(v51, 1);
      v53 = v51 - 1;
      if (v53 < 0 == v52)
      {
        *(a2 + 14) = v53;
      }

      v41 = *(a2 + 1);
      v54 = *(a2 + 2);
    }

    while (v41 < v54 && *v41 == 122);
    if (v54 - v41 >= 2 && *v41 == 130 && v41[1] == 2)
    {
      *(a2 + 1) = v41 + 2;
LABEL_160:
      *(this + 144) |= 0x8000u;
      if (*(this + 120) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v55 = *(a2 + 1);
      if (*(a2 + 4) - v55 >= 2 && *v55 == 138 && v55[1] == 2)
      {
        *(a2 + 1) = v55 + 2;
LABEL_167:
        *(this + 144) |= 0x10000u;
        if (*(this + 128) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }
  }

  TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
  *(a2 + 8) = TagFallback;
  if (TagFallback)
  {
    goto LABEL_6;
  }

  return 1;
}

uint64_t awd::metrics::MetricFile::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 144);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 144);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 44), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x80) == 0)
  {
LABEL_7:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 136), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 0x800) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x100) == 0)
  {
LABEL_9:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x200) == 0)
  {
LABEL_10:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x1000) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 144);
  if ((v6 & 0x2000) == 0)
  {
LABEL_13:
    if ((v6 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0xC, *(v5 + 88), a2, a4);
  v6 = *(v5 + 144);
  if ((v6 & 8) == 0)
  {
LABEL_14:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 32), a2, a4);
  if ((*(v5 + 144) & 0x10) != 0)
  {
LABEL_15:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 36), a2, a4);
  }

LABEL_16:
  if (*(v5 + 104) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, *(*(v5 + 96) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 104));
  }

  v8 = *(v5 + 144);
  if ((v8 & 0x8000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v8 = *(v5 + 144);
  }

  if ((v8 & 0x10000) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return this;
}

uint64_t awd::metrics::MetricFile::ByteSize(awd::metrics::MetricFile *this, unint64_t a2)
{
  v3 = *(this + 36);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_47;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 36);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(this + 2);
  v7 = *(v6 + 23);
  v8 = v7;
  v9 = *(v6 + 8);
  if ((v7 & 0x80u) == 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = v9;
  }

  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    v7 = *(v6 + 23);
    v9 = *(v6 + 8);
    v3 = *(this + 36);
    v8 = *(v6 + 23);
  }

  else
  {
    v11 = 1;
  }

  if (v8 < 0)
  {
    v7 = v9;
  }

  v4 += v11 + v7 + 1;
LABEL_16:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_18;
    }

LABEL_29:
    v18 = *(this + 8);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
      v3 = *(this + 36);
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v12 = *(this + 3);
  v13 = *(v12 + 23);
  v14 = v13;
  v15 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v16 = *(v12 + 23);
  }

  else
  {
    v16 = v15;
  }

  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
    v13 = *(v12 + 23);
    v15 = *(v12 + 8);
    v3 = *(this + 36);
    v14 = *(v12 + 23);
  }

  else
  {
    v17 = 1;
  }

  if (v14 < 0)
  {
    v13 = v15;
  }

  v4 += v17 + v13 + 1;
  if ((v3 & 8) != 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  if ((v3 & 0x10) != 0)
  {
LABEL_33:
    v20 = *(this + 9);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
      v3 = *(this + 36);
    }

    else
    {
      v21 = 2;
    }

    v4 += v21;
  }

LABEL_37:
  v5 = ((v3 >> 4) & 2) + v4;
  if ((v3 & 0x40) != 0)
  {
    v22 = *(this + 11);
    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
      v3 = *(this + 36);
    }

    else
    {
      v23 = 2;
    }

    v5 += v23;
  }

  if ((v3 & 0x80) != 0)
  {
    v24 = *(this + 34);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
      v3 = *(this + 36);
    }

    else
    {
      v25 = 2;
    }

    v5 += v25;
  }

LABEL_47:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_55;
  }

  if ((v3 & 0x100) != 0)
  {
    v26 = *(this + 6);
    v27 = *(v26 + 23);
    v28 = v27;
    v29 = *(v26 + 8);
    if ((v27 & 0x80u) == 0)
    {
      v30 = *(v26 + 23);
    }

    else
    {
      v30 = v29;
    }

    if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
      v27 = *(v26 + 23);
      v29 = *(v26 + 8);
      v3 = *(this + 36);
      v28 = *(v26 + 23);
    }

    else
    {
      v31 = 1;
    }

    if (v28 < 0)
    {
      v27 = v29;
    }

    v5 += v31 + v27 + 1;
    if ((v3 & 0x200) == 0)
    {
LABEL_50:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_75;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  v32 = *(this + 7);
  v33 = *(v32 + 23);
  v34 = v33;
  v35 = *(v32 + 8);
  if ((v33 & 0x80u) == 0)
  {
    v36 = *(v32 + 23);
  }

  else
  {
    v36 = v35;
  }

  if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2);
    v33 = *(v32 + 23);
    v35 = *(v32 + 8);
    v3 = *(this + 36);
    v34 = *(v32 + 23);
  }

  else
  {
    v37 = 1;
  }

  if (v34 < 0)
  {
    v33 = v35;
  }

  v5 += v37 + v33 + 1;
  if ((v3 & 0x400) == 0)
  {
LABEL_51:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_84;
  }

LABEL_75:
  v38 = *(this + 8);
  v39 = *(v38 + 23);
  v40 = v39;
  v41 = *(v38 + 8);
  if ((v39 & 0x80u) == 0)
  {
    v42 = *(v38 + 23);
  }

  else
  {
    v42 = v41;
  }

  if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42, a2);
    v39 = *(v38 + 23);
    v41 = *(v38 + 8);
    v3 = *(this + 36);
    v40 = *(v38 + 23);
  }

  else
  {
    v43 = 1;
  }

  if (v40 < 0)
  {
    v39 = v41;
  }

  v5 += v43 + v39 + 1;
  if ((v3 & 0x800) == 0)
  {
LABEL_52:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_93;
  }

LABEL_84:
  v44 = *(this + 9);
  v45 = *(v44 + 23);
  v46 = v45;
  v47 = *(v44 + 8);
  if ((v45 & 0x80u) == 0)
  {
    v48 = *(v44 + 23);
  }

  else
  {
    v48 = v47;
  }

  if (v48 >= 0x80)
  {
    v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48, a2);
    v45 = *(v44 + 23);
    v47 = *(v44 + 8);
    v3 = *(this + 36);
    v46 = *(v44 + 23);
  }

  else
  {
    v49 = 1;
  }

  if (v46 < 0)
  {
    v45 = v47;
  }

  v5 += v49 + v45 + 1;
  if ((v3 & 0x1000) == 0)
  {
LABEL_53:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_102;
  }

LABEL_93:
  v50 = *(this + 10);
  v51 = *(v50 + 23);
  v52 = v51;
  v53 = *(v50 + 8);
  if ((v51 & 0x80u) == 0)
  {
    v54 = *(v50 + 23);
  }

  else
  {
    v54 = v53;
  }

  if (v54 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54, a2);
    v51 = *(v50 + 23);
    v53 = *(v50 + 8);
    v3 = *(this + 36);
    v52 = *(v50 + 23);
  }

  else
  {
    v55 = 1;
  }

  if (v52 < 0)
  {
    v51 = v53;
  }

  v5 += v55 + v51 + 1;
  if ((v3 & 0x2000) == 0)
  {
LABEL_54:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_103;
  }

LABEL_102:
  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 11), a2) + 1;
  v3 = *(this + 36);
  if ((v3 & 0x8000) == 0)
  {
LABEL_55:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_112;
  }

LABEL_103:
  v56 = *(this + 15);
  v57 = *(v56 + 23);
  v58 = v57;
  v59 = *(v56 + 8);
  if ((v57 & 0x80u) == 0)
  {
    v60 = *(v56 + 23);
  }

  else
  {
    v60 = v59;
  }

  if (v60 >= 0x80)
  {
    v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60, a2);
    v57 = *(v56 + 23);
    v59 = *(v56 + 8);
    v3 = *(this + 36);
    v58 = *(v56 + 23);
  }

  else
  {
    v61 = 1;
  }

  if (v58 < 0)
  {
    v57 = v59;
  }

  v5 += v61 + v57 + 2;
  if ((v3 & 0x10000) != 0)
  {
LABEL_112:
    v62 = *(this + 16);
    v63 = *(v62 + 23);
    v64 = v63;
    v65 = *(v62 + 8);
    if ((v63 & 0x80u) == 0)
    {
      v66 = *(v62 + 23);
    }

    else
    {
      v66 = v65;
    }

    if (v66 >= 0x80)
    {
      v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66, a2);
      v63 = *(v62 + 23);
      v65 = *(v62 + 8);
      v64 = *(v62 + 23);
    }

    else
    {
      v67 = 1;
    }

    if (v64 < 0)
    {
      v63 = v65;
    }

    v5 += v67 + v63 + 2;
  }

LABEL_121:
  v68 = *(this + 26);
  v69 = (v68 + v5);
  if (v68 >= 1)
  {
    v70 = 0;
    do
    {
      v71 = awd::metrics::MetricLog::ByteSize(*(*(this + 12) + 8 * v70), a2);
      v72 = v71;
      if (v71 >= 0x80)
      {
        v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71, a2);
      }

      else
      {
        v73 = 1;
      }

      v69 = (v72 + v69 + v73);
      ++v70;
    }

    while (v70 < *(this + 26));
  }

  *(this + 35) = v69;
  return v69;
}

void awd::metrics::protobuf_AssignDesc_AwdOptions_2eproto(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  awd::metrics::protobuf_AddDesc_AwdOptions_2eproto(this, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  sub_100007ECC(__p, "AwdOptions.proto");
  FileByName = wireless_diagnostics::google::protobuf::DescriptorPool::FindFileByName();
  v6 = FileByName;
  if (v8 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      return;
    }
  }

  else if (FileByName)
  {
    return;
  }

  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__p);
}

void awd::metrics::protobuf_AddDesc_AwdOptions_2eproto(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1002DBDF0 & 1) == 0)
  {
    byte_1002DBDF0 = 1;
    v5 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/WirelessInsightsExecutables/AWDMetrics/cpp/AwdOptions.pb.cc", a4);
    wireless_diagnostics::google::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(v5);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_10024D610, 0x213, v6);
    v7 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    v8 = wireless_diagnostics::google::protobuf::FieldOptions::default_instance(v7);
    v10 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::RegisterExtension(v8, 0xC350, 8, 0, 0, v9);
    v11 = wireless_diagnostics::google::protobuf::FieldOptions::default_instance(v10);
    v13 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::RegisterExtension(v11, 0xC351, 8, 0, 0, v12);
    v14 = wireless_diagnostics::google::protobuf::FieldOptions::default_instance(v13);
    v16 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::RegisterExtension(v14, 0xC352, 13, 0, 0, v15);
    v17 = wireless_diagnostics::google::protobuf::FieldOptions::default_instance(v16);
    v19 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::RegisterExtension(v17, 0xC355, 9, 0, 0, v18);
    v20 = wireless_diagnostics::google::protobuf::FieldOptions::default_instance(v19);
    v22 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::RegisterExtension(v20, 0xC3B4, 9, 0, 0, v21);
    v23 = wireless_diagnostics::google::protobuf::FieldOptions::default_instance(v22);
    v25 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::RegisterExtension(v23, 0xC3B5, 9, 0, 0, v24);
    v26 = wireless_diagnostics::google::protobuf::MessageOptions::default_instance(v25);
    wireless_diagnostics::google::protobuf::internal::ExtensionSet::RegisterExtension(v26, 0xC352, 8, 0, 0, v27);

    wireless_diagnostics::google::protobuf::internal::OnShutdown(awd::metrics::protobuf_ShutdownFile_AwdOptions_2eproto, v28);
  }
}

uint64_t awd::metrics::protobuf_ShutdownFile_CellularServiceStatus_2eproto(awd::metrics *this)
{
  if (awd::metrics::CellularServiceStatus::default_instance_)
  {
    (*(*awd::metrics::CellularServiceStatus::default_instance_ + 8))(awd::metrics::CellularServiceStatus::default_instance_);
  }

  result = awd::metrics::KCellularServiceStatus::default_instance_;
  if (awd::metrics::KCellularServiceStatus::default_instance_)
  {
    v2 = *(*awd::metrics::KCellularServiceStatus::default_instance_ + 8);

    return v2();
  }

  return result;
}

void awd::metrics::protobuf_AddDesc_CellularServiceStatus_2eproto_impl(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/WirelessInsightsExecutables/AWDMetrics/cpp/CellularServiceStatus.pb.cc", a4);
  awd::metrics::protobuf_AddDesc_AwdOptions_2eproto(v4, v5, v6, v7);
  operator new();
}

double awd::metrics::CellularServiceStatus::CellularServiceStatus(awd::metrics::CellularServiceStatus *this)
{
  *this = off_1002B8708;
  *(this + 1) = 0;
  result = NAN;
  *(this + 1) = xmmword_10024D830;
  *(this + 4) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 8) = 0;
  *(this + 18) = -1;
  *(this + 76) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return result;
}

double awd::metrics::KCellularServiceStatus::KCellularServiceStatus(awd::metrics::KCellularServiceStatus *this)
{
  *(this + 14) = 0;
  *(this + 30) = 0;
  *this = off_1002B8780;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 14) = 0;
  result = 0.0;
  *(this + 4) = xmmword_10024D840;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  return result;
}

void awd::metrics::protobuf_AddDesc_CellularServiceStatus_2eproto(awd::metrics *this)
{
  v1 = awd::metrics::protobuf_AddDesc_CellularServiceStatus_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[1] = awd::metrics::protobuf_AddDesc_CellularServiceStatus_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1001E2844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CellularServiceStatus::MergeFrom(awd::metrics::CellularServiceStatus *this, const awd::metrics::CellularServiceStatus *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  v4 = *(a2 + 27);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 1);
    *(this + 27) |= 1u;
    *(this + 1) = v8;
    v4 = *(a2 + 27);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 4);
  *(this + 27) |= 2u;
  *(this + 4) = v9;
  v4 = *(a2 + 27);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  v10 = *(a2 + 5);
  *(this + 27) |= 4u;
  *(this + 5) = v10;
  v4 = *(a2 + 27);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  v11 = *(a2 + 6);
  *(this + 27) |= 8u;
  *(this + 6) = v11;
  v4 = *(a2 + 27);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_35:
    v13 = *(a2 + 10);
    *(this + 27) |= 0x20u;
    *(this + 10) = v13;
    v4 = *(a2 + 27);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_34:
  v12 = *(a2 + 7);
  *(this + 27) |= 0x10u;
  *(this + 7) = v12;
  v4 = *(a2 + 27);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_36:
  v14 = *(a2 + 4);
  *(this + 27) |= 0x40u;
  v15 = *(this + 4);
  if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v4 = *(a2 + 27);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 11);
    *(this + 27) |= 0x80u;
    *(this + 11) = v5;
    v4 = *(a2 + 27);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 12);
    *(this + 27) |= 0x100u;
    *(this + 12) = v16;
    v4 = *(a2 + 27);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_42;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(a2 + 13);
  *(this + 27) |= 0x200u;
  *(this + 13) = v17;
  v4 = *(a2 + 27);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_42:
  v18 = *(a2 + 7);
  *(this + 27) |= 0x400u;
  v19 = *(this + 7);
  if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v19, v18);
  v4 = *(a2 + 27);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  v20 = *(a2 + 16);
  *(this + 27) |= 0x800u;
  *(this + 16) = v20;
  v4 = *(a2 + 27);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  v21 = *(a2 + 17);
  *(this + 27) |= 0x1000u;
  *(this + 17) = v21;
  v4 = *(a2 + 27);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  v22 = *(a2 + 18);
  *(this + 27) |= 0x2000u;
  *(this + 18) = v22;
  v4 = *(a2 + 27);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_48:
  v23 = *(a2 + 76);
  *(this + 27) |= 0x4000u;
  *(this + 76) = v23;
  v4 = *(a2 + 27);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 22);
    *(this + 27) |= 0x8000u;
    *(this + 22) = v6;
    v4 = *(a2 + 27);
  }

LABEL_23:
  if ((v4 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v4 & 0x10000) != 0)
  {
    v24 = *(a2 + 10);
    *(this + 27) |= 0x10000u;
    *(this + 10) = v24;
    v4 = *(a2 + 27);
    if ((v4 & 0x20000) == 0)
    {
LABEL_26:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_52;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v25 = *(a2 + 23);
  *(this + 27) |= 0x20000u;
  *(this + 23) = v25;
  v4 = *(a2 + 27);
  if ((v4 & 0x40000) == 0)
  {
LABEL_27:
    if ((v4 & 0x80000) == 0)
    {
      return;
    }

    goto LABEL_28;
  }

LABEL_52:
  v26 = *(a2 + 24);
  *(this + 27) |= 0x40000u;
  *(this + 24) = v26;
  if ((*(a2 + 27) & 0x80000) == 0)
  {
    return;
  }

LABEL_28:
  v7 = *(a2 + 25);
  *(this + 27) |= 0x80000u;
  *(this + 25) = v7;
}

void sub_1001E2C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CellularServiceStatus::~CellularServiceStatus(awd::metrics::CellularServiceStatus *this)
{
  *this = off_1002B8708;
  awd::metrics::CellularServiceStatus::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::CellularServiceStatus::~CellularServiceStatus(this);

  operator delete();
}

void awd::metrics::CellularServiceStatus::SharedDtor(awd::metrics::CellularServiceStatus *this)
{
  v1 = *(this + 4);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = *(this + 7);
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  awd::metrics::protobuf_AddDesc_CellularServiceStatus_2eproto(this);
}

uint64_t awd::metrics::CellularServiceStatus::Clear(uint64_t this)
{
  v1 = *(this + 108);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = xmmword_10024D830;
    *(this + 40) = 0;
    if ((v1 & 0x40) != 0)
    {
      v2 = *(this + 32);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(this + 44) = 0;
    v1 = *(this + 108);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    if ((v1 & 0x400) != 0)
    {
      v3 = *(this + 56);
      if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(this + 64) = 0;
    *(this + 72) = -1;
    *(this + 76) = 0;
    *(this + 88) = 0;
    v1 = *(this + 108);
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 80) = 0;
    *(this + 96) = 0;
    *(this + 92) = 0;
  }

  *(this + 108) = 0;
  return this;
}

uint64_t awd::metrics::CellularServiceStatus::MergePartialFromCodedStream(awd::metrics::CellularServiceStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (2)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 < v8)
        {
          v10 = *v9;
          if ((v10 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v10;
            v11 = v9 + 1;
            *(a2 + 1) = v11;
LABEL_54:
            *(this + 27) |= 1u;
            if (v11 < v8 && *v11 == 16)
            {
              v28 = v11 + 1;
              *(a2 + 1) = v28;
              goto LABEL_57;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_54;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v28 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_57:
        v75 = 0;
        if (v28 >= v8 || (v38 = *v28, (v38 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v75);
          if (!result)
          {
            return result;
          }

          v38 = v75;
        }

        else
        {
          *(a2 + 1) = v28 + 1;
        }

        if (v38 < 0xD || v38 - 15 <= 1)
        {
          *(this + 27) |= 2u;
          *(this + 4) = v38;
        }

        v39 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v39 >= v22 || *v39 != 24)
        {
          continue;
        }

        v23 = v39 + 1;
        *(a2 + 1) = v23;
LABEL_67:
        v75 = 0;
        if (v23 >= v22 || (v40 = *v23, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v75);
          if (!result)
          {
            return result;
          }

          v40 = v75;
        }

        else
        {
          *(a2 + 1) = v23 + 1;
        }

        if (awd::metrics::SrvStatus_IsValid(v40))
        {
          *(this + 27) |= 4u;
          *(this + 5) = v40;
        }

        v41 = *(a2 + 1);
        v25 = *(a2 + 2);
        if (v41 >= v25 || *v41 != 32)
        {
          continue;
        }

        v26 = v41 + 1;
        *(a2 + 1) = v26;
LABEL_77:
        v75 = 0;
        if (v26 >= v25 || (v42 = *v26, (v42 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v75);
          if (!result)
          {
            return result;
          }

          v42 = v75;
        }

        else
        {
          *(a2 + 1) = v26 + 1;
        }

        if (v42 + 1 <= 7)
        {
          *(this + 27) |= 8u;
          *(this + 6) = v42;
        }

        v43 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v43 >= v17 || *v43 != 40)
        {
          continue;
        }

        v18 = v43 + 1;
        *(a2 + 1) = v18;
LABEL_87:
        v75 = 0;
        if (v18 >= v17 || (v44 = *v18, (v44 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v75);
          if (!result)
          {
            return result;
          }

          v44 = v75;
        }

        else
        {
          *(a2 + 1) = v18 + 1;
        }

        if (awd::metrics::RoamStatus_IsValid(v44))
        {
          *(this + 27) |= 0x10u;
          *(this + 7) = v44;
        }

        v45 = *(a2 + 1);
        v30 = *(a2 + 2);
        if (v45 >= v30 || *v45 != 48)
        {
          continue;
        }

        v31 = v45 + 1;
        *(a2 + 1) = v31;
LABEL_97:
        if (v31 >= v30 || (v46 = *v31, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v30 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v46;
          v47 = v31 + 1;
          *(a2 + 1) = v47;
        }

        v33 = *(this + 27) | 0x20;
        *(this + 27) = v33;
        if (v47 >= v30 || *v47 != 58)
        {
          continue;
        }

        *(a2 + 1) = v47 + 1;
LABEL_105:
        *(this + 27) = v33 | 0x40;
        if (*(this + 4) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v48 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v48 >= v20 || *v48 != 64)
        {
          continue;
        }

        v27 = v48 + 1;
        *(a2 + 1) = v27;
LABEL_111:
        if (v27 >= v20 || (v49 = *v27, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v49;
          v50 = v27 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 27) |= 0x80u;
        if (v50 >= v20 || *v50 != 72)
        {
          continue;
        }

        v36 = v50 + 1;
        *(a2 + 1) = v36;
LABEL_119:
        if (v36 >= v20 || (v51 = *v36, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v51;
          v52 = v36 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 27) |= 0x100u;
        if (v52 >= v20 || *v52 != 80)
        {
          continue;
        }

        v21 = v52 + 1;
        *(a2 + 1) = v21;
LABEL_127:
        if (v21 >= v20 || (v53 = *v21, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v54 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v53;
          v54 = v21 + 1;
          *(a2 + 1) = v54;
        }

        v35 = *(this + 27) | 0x200;
        *(this + 27) = v35;
        if (v54 >= v20 || *v54 != 90)
        {
          continue;
        }

        *(a2 + 1) = v54 + 1;
LABEL_135:
        *(this + 27) = v35 | 0x400;
        if (*(this + 7) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v55 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v55 >= v15 || *v55 != 96)
        {
          continue;
        }

        v16 = v55 + 1;
        *(a2 + 1) = v16;
LABEL_141:
        v75 = 0;
        if (v16 >= v15 || (v56 = *v16, (v56 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v75);
          if (!result)
          {
            return result;
          }

          v56 = v75;
          v57 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          v57 = v16 + 1;
          *(a2 + 1) = v57;
        }

        *(this + 16) = v56;
        *(this + 27) |= 0x800u;
        if (v57 >= v15 || *v57 != 104)
        {
          continue;
        }

        v19 = v57 + 1;
        *(a2 + 1) = v19;
LABEL_149:
        v75 = 0;
        if (v19 >= v15 || (v58 = *v19, (v58 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v75);
          if (!result)
          {
            return result;
          }

          v58 = v75;
          v59 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          v59 = v19 + 1;
          *(a2 + 1) = v59;
        }

        *(this + 17) = v58;
        *(this + 27) |= 0x1000u;
        if (v59 >= v15 || *v59 != 112)
        {
          continue;
        }

        v32 = v59 + 1;
        *(a2 + 1) = v32;
LABEL_157:
        v75 = 0;
        if (v32 >= v15 || (v60 = *v32, (v60 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v75);
          if (!result)
          {
            return result;
          }

          v60 = v75;
        }

        else
        {
          *(a2 + 1) = v32 + 1;
        }

        if (v60 + 1 <= 6)
        {
          *(this + 27) |= 0x2000u;
          *(this + 18) = v60;
        }

        v61 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v61 >= v12 || *v61 != 120)
        {
          continue;
        }

        v14 = v61 + 1;
        *(a2 + 1) = v14;
LABEL_167:
        v75 = 0;
        if (v14 >= v12 || (v62 = *v14, (v62 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v75);
          if (!result)
          {
            return result;
          }

          v62 = v75;
          v63 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v63 = (v14 + 1);
          *(a2 + 1) = v63;
        }

        *(this + 76) = v62 != 0;
        *(this + 27) |= 0x4000u;
        if (v12 - v63 < 2 || *v63 != 128 || v63[1] != 1)
        {
          continue;
        }

        v24 = (v63 + 2);
        *(a2 + 1) = v24;
LABEL_176:
        if (v24 >= v12 || (v64 = *v24, v64 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v65 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v64;
          v65 = (v24 + 1);
          *(a2 + 1) = v65;
        }

        *(this + 27) |= 0x8000u;
        if (v12 - v65 < 2 || *v65 != 136 || v65[1] != 1)
        {
          continue;
        }

        v13 = (v65 + 2);
        *(a2 + 1) = v13;
LABEL_185:
        if (v13 >= v12 || (v66 = *v13, v66 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v67 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v66;
          v67 = (v13 + 1);
          *(a2 + 1) = v67;
        }

        *(this + 27) |= 0x10000u;
        if (v12 - v67 < 2 || *v67 != 144 || v67[1] != 1)
        {
          continue;
        }

        v29 = (v67 + 2);
        *(a2 + 1) = v29;
LABEL_194:
        if (v29 >= v12 || (v68 = *v29, v68 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
          if (!result)
          {
            return result;
          }

          v69 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 23) = v68;
          v69 = (v29 + 1);
          *(a2 + 1) = v69;
        }

        *(this + 27) |= 0x20000u;
        if (v12 - v69 < 2 || *v69 != 152 || v69[1] != 1)
        {
          continue;
        }

        v34 = (v69 + 2);
        *(a2 + 1) = v34;
LABEL_203:
        if (v34 >= v12 || (v70 = *v34, v70 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
          if (!result)
          {
            return result;
          }

          v71 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 24) = v70;
          v71 = (v34 + 1);
          *(a2 + 1) = v71;
        }

        *(this + 27) |= 0x40000u;
        if (v12 - v71 < 2 || *v71 != 160 || v71[1] != 1)
        {
          continue;
        }

        v37 = (v71 + 2);
        *(a2 + 1) = v37;
LABEL_212:
        v75 = 0;
        if (v37 >= v12 || (v72 = *v37, (v72 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v75);
          if (!result)
          {
            return result;
          }

          v72 = v75;
          v73 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v73 = v37 + 1;
          *(a2 + 1) = v73;
        }

        *(this + 25) = v72;
        *(this + 27) |= 0x80000u;
        if (v73 != v12 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_67;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_77;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_87;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v31 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_97;
      case 7u:
        if (v7 != 2)
        {
          goto LABEL_48;
        }

        v33 = *(this + 27);
        goto LABEL_105;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v27 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_111;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v36 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_119;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_127;
      case 0xBu:
        if (v7 != 2)
        {
          goto LABEL_48;
        }

        v35 = *(this + 27);
        goto LABEL_135;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_141;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v19 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_149;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v32 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_157;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v14 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_167;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v24 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_176;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_185;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v29 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_194;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v34 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_203;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v37 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_212;
      default:
LABEL_48:
        if (v7 == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

uint64_t awd::metrics::CellularServiceStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 108);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 108);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 108);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 48), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 52), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 108);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, *(v5 + 64), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, *(v5 + 68), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(v5 + 72), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, *(v5 + 76), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 88), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x11, *(v5 + 80), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 96), a2, a4);
    if ((*(v5 + 108) & 0x80000) == 0)
    {
      return this;
    }

    goto LABEL_41;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 92), a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 0x40000) != 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  if ((v6 & 0x80000) == 0)
  {
    return this;
  }

LABEL_41:
  v7 = *(v5 + 100);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x14, v7, a2, a4);
}

uint64_t awd::metrics::CellularServiceStatus::ByteSize(awd::metrics::CellularServiceStatus *this, unint64_t a2)
{
  v3 = *(this + 27);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_55;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 27);
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v5 = *(this + 4);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(this + 27);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_13:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(this + 27);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_15:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_15;
  }

  v9 = *(this + 6);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 11;
  }

  else if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(this + 27);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_16:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_32:
  v11 = *(this + 7);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    v3 = *(this + 27);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_17:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_38:
  v13 = *(this + 10);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(this + 27);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_18:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_51;
  }

LABEL_42:
  v15 = *(this + 4);
  v16 = *(v15 + 23);
  v17 = v16;
  v18 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v19 = *(v15 + 23);
  }

  else
  {
    v19 = v18;
  }

  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
    v16 = *(v15 + 23);
    v18 = *(v15 + 8);
    v3 = *(this + 27);
    v17 = *(v15 + 23);
  }

  else
  {
    v20 = 1;
  }

  if (v17 < 0)
  {
    v16 = v18;
  }

  v4 = (v4 + v20 + v16 + 1);
  if ((v3 & 0x80) != 0)
  {
LABEL_51:
    v21 = *(this + 11);
    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
      v3 = *(this + 27);
    }

    else
    {
      v22 = 2;
    }

    v4 = (v22 + v4);
  }

LABEL_55:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_103;
  }

  if ((v3 & 0x100) != 0)
  {
    v23 = *(this + 12);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
      v3 = *(this + 27);
    }

    else
    {
      v24 = 2;
    }

    LODWORD(v4) = v24 + v4;
    if ((v3 & 0x200) == 0)
    {
LABEL_58:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_71;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_58;
  }

  v25 = *(this + 13);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
    v3 = *(this + 27);
  }

  else
  {
    v26 = 2;
  }

  LODWORD(v4) = v26 + v4;
  if ((v3 & 0x400) == 0)
  {
LABEL_59:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_80;
  }

LABEL_71:
  v27 = *(this + 7);
  v28 = *(v27 + 23);
  v29 = v28;
  v30 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v31 = *(v27 + 23);
  }

  else
  {
    v31 = v30;
  }

  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2);
    v28 = *(v27 + 23);
    v30 = *(v27 + 8);
    v3 = *(this + 27);
    v29 = *(v27 + 23);
  }

  else
  {
    v32 = 1;
  }

  if (v29 < 0)
  {
    v28 = v30;
  }

  LODWORD(v4) = v4 + v32 + v28 + 1;
  if ((v3 & 0x800) == 0)
  {
LABEL_60:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_86;
  }

LABEL_80:
  v33 = *(this + 16);
  if ((v33 & 0x80000000) != 0)
  {
    v34 = 11;
  }

  else if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33, a2) + 1;
    v3 = *(this + 27);
  }

  else
  {
    v34 = 2;
  }

  LODWORD(v4) = v34 + v4;
  if ((v3 & 0x1000) == 0)
  {
LABEL_61:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_92;
  }

LABEL_86:
  v35 = *(this + 17);
  if ((v35 & 0x80000000) != 0)
  {
    v36 = 11;
  }

  else if (v35 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2) + 1;
    v3 = *(this + 27);
  }

  else
  {
    v36 = 2;
  }

  LODWORD(v4) = v36 + v4;
  if ((v3 & 0x2000) != 0)
  {
LABEL_92:
    v37 = *(this + 18);
    if ((v37 & 0x80000000) != 0)
    {
      v38 = 11;
    }

    else if (v37 >= 0x80)
    {
      v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37, a2) + 1;
      v3 = *(this + 27);
    }

    else
    {
      v38 = 2;
    }

    LODWORD(v4) = v38 + v4;
  }

LABEL_98:
  v4 = ((v3 >> 13) & 2) + v4;
  if ((v3 & 0x8000) != 0)
  {
    v39 = *(this + 22);
    if (v39 >= 0x80)
    {
      v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39, a2) + 2;
      v3 = *(this + 27);
    }

    else
    {
      v40 = 3;
    }

    v4 = (v40 + v4);
  }

LABEL_103:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_124;
  }

  if ((v3 & 0x10000) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 10), a2) + 2;
    v3 = *(this + 27);
    if ((v3 & 0x20000) == 0)
    {
LABEL_106:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_114;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_106;
  }

  v41 = *(this + 23);
  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41, a2) + 2;
    v3 = *(this + 27);
  }

  else
  {
    v42 = 3;
  }

  v4 = (v42 + v4);
  if ((v3 & 0x40000) == 0)
  {
LABEL_107:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_118;
  }

LABEL_114:
  v43 = *(this + 24);
  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43, a2) + 2;
    v3 = *(this + 27);
  }

  else
  {
    v44 = 3;
  }

  v4 = (v44 + v4);
  if ((v3 & 0x80000) != 0)
  {
LABEL_118:
    v45 = *(this + 25);
    if ((v45 & 0x80000000) != 0)
    {
      v46 = 12;
    }

    else if (v45 >= 0x80)
    {
      v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45, a2) + 2;
    }

    else
    {
      v46 = 3;
    }

    v4 = (v46 + v4);
  }

LABEL_124:
  *(this + 26) = v4;
  return v4;
}

void awd::metrics::KCellularServiceStatus::MergeFrom(awd::metrics::KCellularServiceStatus *this, const awd::metrics::KCellularServiceStatus *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v31);
  }

  v4 = *(a2 + 29);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v9 = *(a2 + 1);
    *(this + 29) |= 1u;
    *(this + 1) = v9;
    v4 = *(a2 + 29);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_37;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 4);
  *(this + 29) |= 2u;
  *(this + 4) = v10;
  v4 = *(a2 + 29);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_37:
  v11 = *(a2 + 60);
  *(this + 29) |= 4u;
  *(this + 60) = v11;
  v4 = *(a2 + 29);
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 5);
    *(this + 29) |= 8u;
    *(this + 5) = v5;
    v4 = *(a2 + 29);
  }

LABEL_9:
  if ((v4 & 0x10) == 0)
  {
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_42:
    v14 = *(a2 + 4);
    *(this + 29) |= 0x20u;
    v15 = *(this + 4);
    if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v15, v14);
    v4 = *(a2 + 29);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_45;
  }

  v12 = *(a2 + 3);
  *(this + 29) |= 0x10u;
  v13 = *(this + 3);
  if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v4 = *(a2 + 29);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_42;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_45:
  v16 = *(a2 + 10);
  *(this + 29) |= 0x40u;
  *(this + 10) = v16;
  v4 = *(a2 + 29);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v6 = *(a2 + 11);
    *(this + 29) |= 0x80u;
    *(this + 11) = v6;
    v4 = *(a2 + 29);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v4 & 0x100) != 0)
  {
    v17 = *(a2 + 12);
    *(this + 29) |= 0x100u;
    *(this + 12) = v17;
    v4 = *(a2 + 29);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_49;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v18 = *(a2 + 13);
  *(this + 29) |= 0x200u;
  *(this + 13) = v18;
  v4 = *(a2 + 29);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  v19 = *(a2 + 14);
  *(this + 29) |= 0x400u;
  *(this + 14) = v19;
  v4 = *(a2 + 29);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  v20 = *(a2 + 16);
  *(this + 29) |= 0x800u;
  *(this + 16) = v20;
  v4 = *(a2 + 29);
  if ((v4 & 0x1000) == 0)
  {
LABEL_20:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  v21 = *(a2 + 17);
  *(this + 29) |= 0x1000u;
  *(this + 17) = v21;
  v4 = *(a2 + 29);
  if ((v4 & 0x2000) == 0)
  {
LABEL_21:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  v22 = *(a2 + 18);
  *(this + 29) |= 0x2000u;
  *(this + 18) = v22;
  v4 = *(a2 + 29);
  if ((v4 & 0x4000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_53:
  v23 = *(a2 + 19);
  *(this + 29) |= 0x4000u;
  *(this + 19) = v23;
  v4 = *(a2 + 29);
  if ((v4 & 0x8000) != 0)
  {
LABEL_23:
    v7 = *(a2 + 20);
    *(this + 29) |= 0x8000u;
    *(this + 20) = v7;
    v4 = *(a2 + 29);
  }

LABEL_24:
  if ((v4 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v4 & 0x10000) != 0)
  {
    v24 = *(a2 + 21);
    *(this + 29) |= 0x10000u;
    *(this + 21) = v24;
    v4 = *(a2 + 29);
    if ((v4 & 0x20000) == 0)
    {
LABEL_27:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_57;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_27;
  }

  v25 = *(a2 + 22);
  *(this + 29) |= 0x20000u;
  *(this + 22) = v25;
  v4 = *(a2 + 29);
  if ((v4 & 0x40000) == 0)
  {
LABEL_28:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  v26 = *(a2 + 23);
  *(this + 29) |= 0x40000u;
  *(this + 23) = v26;
  v4 = *(a2 + 29);
  if ((v4 & 0x80000) == 0)
  {
LABEL_29:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  v27 = *(a2 + 61);
  *(this + 29) |= 0x80000u;
  *(this + 61) = v27;
  v4 = *(a2 + 29);
  if ((v4 & 0x100000) == 0)
  {
LABEL_30:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_60;
  }

LABEL_59:
  v28 = *(a2 + 24);
  *(this + 29) |= 0x100000u;
  *(this + 24) = v28;
  v4 = *(a2 + 29);
  if ((v4 & 0x200000) == 0)
  {
LABEL_31:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_61;
  }

LABEL_60:
  v29 = *(a2 + 25);
  *(this + 29) |= 0x200000u;
  *(this + 25) = v29;
  v4 = *(a2 + 29);
  if ((v4 & 0x400000) == 0)
  {
LABEL_32:
    if ((v4 & 0x800000) == 0)
    {
      return;
    }

    goto LABEL_33;
  }

LABEL_61:
  v30 = *(a2 + 26);
  *(this + 29) |= 0x400000u;
  *(this + 26) = v30;
  if ((*(a2 + 29) & 0x800000) == 0)
  {
    return;
  }

LABEL_33:
  v8 = *(a2 + 27);
  *(this + 29) |= 0x800000u;
  *(this + 27) = v8;
}

void sub_1001E43C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::KCellularServiceStatus::~KCellularServiceStatus(awd::metrics::KCellularServiceStatus *this)
{
  *this = off_1002B8780;
  awd::metrics::KCellularServiceStatus::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::KCellularServiceStatus::~KCellularServiceStatus(this);

  operator delete();
}

void awd::metrics::KCellularServiceStatus::SharedDtor(awd::metrics::KCellularServiceStatus *this)
{
  v1 = *(this + 3);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = *(this + 4);
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  awd::metrics::protobuf_AddDesc_CellularServiceStatus_2eproto(this);
}

uint64_t awd::metrics::KCellularServiceStatus::Clear(uint64_t this)
{
  v1 = *(this + 116);
  if (v1)
  {
    *(this + 60) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v1 & 0x10) != 0)
    {
      v2 = *(this + 24);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    if ((*(this + 116) & 0x20) != 0)
    {
      v3 = *(this + 32);
      if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(this + 40) = 0;
    v1 = *(this + 116);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    *(this + 56) = 0;
    *(this + 64) = xmmword_10024D840;
    *(this + 80) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 61) = 0;
    *(this + 84) = 0;
    *(this + 100) = 0;
    *(this + 92) = 0;
    *(this + 108) = 0;
  }

  *(this + 116) = 0;
  return this;
}

uint64_t awd::metrics::KCellularServiceStatus::MergePartialFromCodedStream(awd::metrics::KCellularServiceStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (2)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 < v8)
        {
          v10 = *v9;
          if ((v10 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v10;
            v11 = v9 + 1;
            *(a2 + 1) = v11;
LABEL_62:
            *(this + 29) |= 1u;
            if (v11 < v8 && *v11 == 16)
            {
              v26 = v11 + 1;
              *(a2 + 1) = v26;
              goto LABEL_65;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_62;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_65:
        v87 = 0;
        if (v26 >= v8 || (v42 = *v26, (v42 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v42 = v87;
        }

        else
        {
          *(a2 + 1) = v26 + 1;
        }

        if (v42 < 0xD || v42 - 15 <= 1)
        {
          *(this + 29) |= 2u;
          *(this + 4) = v42;
        }

        v43 = *(a2 + 1);
        v23 = *(a2 + 2);
        if (v43 >= v23 || *v43 != 40)
        {
          continue;
        }

        v24 = v43 + 1;
        *(a2 + 1) = v24;
LABEL_75:
        v87 = 0;
        if (v24 >= v23 || (v44 = *v24, (v44 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v44 = v87;
          v45 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          v45 = v24 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 60) = v44 != 0;
        *(this + 29) |= 4u;
        if (v45 >= v23 || *v45 != 48)
        {
          continue;
        }

        v34 = v45 + 1;
        *(a2 + 1) = v34;
LABEL_83:
        if (v34 >= v23 || (v46 = *v34, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v23 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v46;
          v47 = v34 + 1;
          *(a2 + 1) = v47;
        }

        v35 = *(this + 29) | 8;
        *(this + 29) = v35;
        if (v47 >= v23 || *v47 != 58)
        {
          continue;
        }

        *(a2 + 1) = v47 + 1;
LABEL_91:
        *(this + 29) = v35 | 0x10;
        if (*(this + 3) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v48 = *(a2 + 1);
        if (v48 >= *(a2 + 2) || *v48 != 66)
        {
          continue;
        }

        *(a2 + 1) = v48 + 1;
LABEL_97:
        *(this + 29) |= 0x20u;
        if (*(this + 4) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v49 = *(a2 + 1);
        v27 = *(a2 + 2);
        if (v49 >= v27 || *v49 != 72)
        {
          continue;
        }

        v28 = v49 + 1;
        *(a2 + 1) = v28;
LABEL_103:
        v87 = 0;
        if (v28 >= v27 || (v50 = *v28, (v50 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v50 = v87;
        }

        else
        {
          *(a2 + 1) = v28 + 1;
        }

        if (awd::metrics::KRegStatus_IsValid(v50))
        {
          *(this + 29) |= 0x40u;
          *(this + 10) = v50;
        }

        v51 = *(a2 + 1);
        v29 = *(a2 + 2);
        if (v51 >= v29 || *v51 != 80)
        {
          continue;
        }

        v30 = v51 + 1;
        *(a2 + 1) = v30;
LABEL_113:
        v87 = 0;
        if (v30 >= v29 || (v52 = *v30, (v52 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v52 = v87;
        }

        else
        {
          *(a2 + 1) = v30 + 1;
        }

        if (awd::metrics::KRegStatus_IsValid(v52))
        {
          *(this + 29) |= 0x80u;
          *(this + 11) = v52;
        }

        v53 = *(a2 + 1);
        v37 = *(a2 + 2);
        if (v53 >= v37 || *v53 != 88)
        {
          continue;
        }

        v38 = v53 + 1;
        *(a2 + 1) = v38;
LABEL_123:
        v87 = 0;
        if (v38 >= v37 || (v54 = *v38, (v54 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v54 = v87;
        }

        else
        {
          *(a2 + 1) = v38 + 1;
        }

        if (awd::metrics::KPowerChangeMode_IsValid(v54))
        {
          *(this + 29) |= 0x100u;
          *(this + 12) = v54;
        }

        v55 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v55 >= v16 || *v55 != 96)
        {
          continue;
        }

        v36 = v55 + 1;
        *(a2 + 1) = v36;
LABEL_133:
        if (v36 >= v16 || (v56 = *v36, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v56;
          v57 = v36 + 1;
          *(a2 + 1) = v57;
        }

        *(this + 29) |= 0x200u;
        if (v57 >= v16 || *v57 != 104)
        {
          continue;
        }

        v19 = v57 + 1;
        *(a2 + 1) = v19;
LABEL_141:
        if (v19 >= v16 || (v58 = *v19, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v58;
          v59 = v19 + 1;
          *(a2 + 1) = v59;
        }

        *(this + 29) |= 0x400u;
        if (v59 >= v16 || *v59 != 112)
        {
          continue;
        }

        v25 = v59 + 1;
        *(a2 + 1) = v25;
LABEL_149:
        if (v25 >= v16 || (v60 = *v25, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v61 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v60;
          v61 = v25 + 1;
          *(a2 + 1) = v61;
        }

        *(this + 29) |= 0x800u;
        if (v61 >= v16 || *v61 != 120)
        {
          continue;
        }

        v21 = v61 + 1;
        *(a2 + 1) = v21;
LABEL_157:
        if (v21 >= v16 || (v62 = *v21, v62 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v63 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v62;
          v63 = (v21 + 1);
          *(a2 + 1) = v63;
        }

        *(this + 29) |= 0x1000u;
        if (v16 - v63 < 2 || *v63 != 128 || v63[1] != 1)
        {
          continue;
        }

        v17 = (v63 + 2);
        *(a2 + 1) = v17;
LABEL_166:
        v87 = 0;
        if (v17 >= v16 || (v64 = *v17, (v64 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v64 = v87;
        }

        else
        {
          *(a2 + 1) = v17 + 1;
        }

        if (awd::metrics::SrvStatus_IsValid(v64))
        {
          *(this + 29) |= 0x2000u;
          *(this + 18) = v64;
        }

        v65 = *(a2 + 1);
        v31 = *(a2 + 2);
        if (v31 - v65 < 2 || *v65 != 136 || v65[1] != 1)
        {
          continue;
        }

        v32 = (v65 + 2);
        *(a2 + 1) = v32;
LABEL_177:
        v87 = 0;
        if (v32 >= v31 || (v66 = *v32, (v66 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v66 = v87;
        }

        else
        {
          *(a2 + 1) = v32 + 1;
        }

        if (v66 + 1 <= 7)
        {
          *(this + 29) |= 0x4000u;
          *(this + 19) = v66;
        }

        v67 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v12 - v67 < 2 || *v67 != 144 || v67[1] != 1)
        {
          continue;
        }

        v33 = (v67 + 2);
        *(a2 + 1) = v33;
LABEL_188:
        if (v33 >= v12 || (v68 = *v33, v68 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v69 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v68;
          v69 = (v33 + 1);
          *(a2 + 1) = v69;
        }

        *(this + 29) |= 0x8000u;
        if (v12 - v69 < 2 || *v69 != 152 || v69[1] != 1)
        {
          continue;
        }

        v40 = (v69 + 2);
        *(a2 + 1) = v40;
LABEL_197:
        if (v40 >= v12 || (v70 = *v40, v70 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v71 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v70;
          v71 = (v40 + 1);
          *(a2 + 1) = v71;
        }

        *(this + 29) |= 0x10000u;
        if (v12 - v71 < 2 || *v71 != 160 || v71[1] != 1)
        {
          continue;
        }

        v39 = (v71 + 2);
        *(a2 + 1) = v39;
LABEL_206:
        v87 = 0;
        if (v39 >= v12 || (v72 = *v39, (v72 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v72 = v87;
          v73 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v73 = (v39 + 1);
          *(a2 + 1) = v73;
        }

        *(this + 22) = -(v72 & 1) ^ (v72 >> 1);
        *(this + 29) |= 0x20000u;
        if (v12 - v73 < 2 || *v73 != 168 || v73[1] != 1)
        {
          continue;
        }

        v13 = (v73 + 2);
        *(a2 + 1) = v13;
LABEL_215:
        v87 = 0;
        if (v13 >= v12 || (v74 = *v13, (v74 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v74 = v87;
          v75 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v75 = (v13 + 1);
          *(a2 + 1) = v75;
        }

        *(this + 23) = -(v74 & 1) ^ (v74 >> 1);
        *(this + 29) |= 0x40000u;
        if (v12 - v75 < 2 || *v75 != 176 || v75[1] != 1)
        {
          continue;
        }

        v22 = (v75 + 2);
        *(a2 + 1) = v22;
LABEL_224:
        v87 = 0;
        if (v22 >= v12 || (v76 = *v22, (v76 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v76 = v87;
          v77 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v77 = (v22 + 1);
          *(a2 + 1) = v77;
        }

        *(this + 61) = v76 != 0;
        *(this + 29) |= 0x80000u;
        if (v12 - v77 < 2 || *v77 != 184 || v77[1] != 1)
        {
          continue;
        }

        v41 = (v77 + 2);
        *(a2 + 1) = v41;
LABEL_233:
        v87 = 0;
        if (v41 >= v12 || (v78 = *v41, (v78 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v78 = v87;
        }

        else
        {
          *(a2 + 1) = v41 + 1;
        }

        if (v78 <= 1)
        {
          *(this + 29) |= 0x100000u;
          *(this + 24) = v78;
        }

        v79 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v14 - v79 < 2 || *v79 != 192 || v79[1] != 1)
        {
          continue;
        }

        v15 = (v79 + 2);
        *(a2 + 1) = v15;
LABEL_244:
        if (v15 >= v14 || (v80 = *v15, v80 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
          if (!result)
          {
            return result;
          }

          v81 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 25) = v80;
          v81 = (v15 + 1);
          *(a2 + 1) = v81;
        }

        *(this + 29) |= 0x200000u;
        if (v14 - v81 < 2 || *v81 != 200 || v81[1] != 1)
        {
          continue;
        }

        v20 = (v81 + 2);
        *(a2 + 1) = v20;
LABEL_253:
        if (v20 >= v14 || (v82 = *v20, v82 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
          if (!result)
          {
            return result;
          }

          v83 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 26) = v82;
          v83 = (v20 + 1);
          *(a2 + 1) = v83;
        }

        *(this + 29) |= 0x400000u;
        if (v14 - v83 < 2 || *v83 != 208 || v83[1] != 1)
        {
          continue;
        }

        v18 = (v83 + 2);
        *(a2 + 1) = v18;
LABEL_262:
        v87 = 0;
        if (v18 >= v14 || (v84 = *v18, (v84 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87);
          if (!result)
          {
            return result;
          }

          v84 = v87;
          v85 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          v85 = v18 + 1;
          *(a2 + 1) = v85;
        }

        *(this + 27) = v84;
        *(this + 29) |= 0x800000u;
        if (v85 != v14 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_75;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v34 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_83;
      case 7u:
        if (v7 != 2)
        {
          goto LABEL_56;
        }

        v35 = *(this + 29);
        goto LABEL_91;
      case 8u:
        if (v7 == 2)
        {
          goto LABEL_97;
        }

        goto LABEL_56;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v28 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_103;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v30 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_113;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v38 = *(a2 + 1);
        v37 = *(a2 + 2);
        goto LABEL_123;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v36 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_133;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v19 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_141;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v25 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_149;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v21 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_157;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_166;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v32 = *(a2 + 1);
        v31 = *(a2 + 2);
        goto LABEL_177;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v33 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_188;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v40 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_197;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v39 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_206;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_215;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v22 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_224;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v41 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_233;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_244;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v20 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_253;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v18 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_262;
      default:
LABEL_56:
        if (v7 == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}