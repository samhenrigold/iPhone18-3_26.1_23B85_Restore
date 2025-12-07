void sub_1000F3A94(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10019D07C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[24 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (*v13 < v11)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 24) = *v13;
          *(v13 + 5) = *(v13 + 2);
          *v13 = v11;
          *(v13 + 8) = v14;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 24;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = (v7 + 4);
    v16[1] = v6;
    sub_1000F4C88(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void sub_1000F3BF0(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for TargetTracks.TimePoint(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100356188, &unk_100283E60);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v49 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v49 - v20;
  v22 = [v1 startsAt];
  v55 = v13;
  v51 = v21;
  if (v22)
  {
    v50 = v8;
    v23 = v1;
    v24 = v21;
    v25 = v22;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = v13;
    v27 = *(v13 + 32);
    v27(v11, v17, v12);
    v28 = *(v26 + 56);
    v28(v11, 0, 1, v12);
    v29 = v24;
    v1 = v23;
    v8 = v50;
    v27(v29, v11, v12);
  }

  else
  {
    v28 = *(v13 + 56);
    v28(v11, 1, 1, v12);
    Date.init()();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_100008FA0(v11, &qword_100356188, &unk_100283E60);
    }
  }

  v30 = [v1 endsAt];
  if (v30)
  {
    v31 = v30;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = *(v55 + 32);
    v32(v8, v17, v12);
    v28(v8, 0, 1, v12);
    v32(v54, v8, v12);
  }

  else
  {
    v33 = v55;
    v28(v8, 1, 1, v12);
    Date.init()();
    if ((*(v33 + 48))(v8, 1, v12) != 1)
    {
      sub_100008FA0(v8, &qword_100356188, &unk_100283E60);
    }
  }

  v34 = [v1 readings];
  sub_10001D630(0, &qword_10035E400, CTCAServicePlotReading_ptr);
  v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v35 >> 62)
  {
    v36 = _CocoaArrayWrapper.endIndex.getter();
    v52 = v12;
    if (v36)
    {
      goto LABEL_11;
    }

LABEL_23:
    v38 = _swiftEmptyArrayStorage;
    goto LABEL_24;
  }

  v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v52 = v12;
  if (!v36)
  {
    goto LABEL_23;
  }

LABEL_11:
  if (v36 < 1)
  {
    __break(1u);
    return;
  }

  v37 = 0;
  v38 = _swiftEmptyArrayStorage;
  do
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v39 = *(v35 + 8 * v37 + 32);
    }

    v40 = v39;
    sub_1000F37F8(v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_10017C26C(0, v38[2] + 1, 1, v38);
    }

    v42 = v38[2];
    v41 = v38[3];
    if (v42 >= v41 >> 1)
    {
      v38 = sub_10017C26C((v41 > 1), v42 + 1, 1, v38);
    }

    ++v37;

    v38[2] = v42 + 1;
    sub_1000F8E7C(v5, v38 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v42, type metadata accessor for TargetTracks.TimePoint);
  }

  while (v36 != v37);
LABEL_24:

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = sub_10019D090(v38);
  }

  v43 = v51;
  v44 = v52;
  v45 = v38[2];
  v56[0] = v38 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v56[1] = v45;
  sub_1000F48B8(v56);
  v46 = *(v55 + 32);
  v47 = v53;
  v46(v53, v43, v44);
  v48 = type metadata accessor for TargetTracks(0);
  v46(v47 + *(v48 + 20), v54, v44);
  *(v47 + *(v48 + 24)) = v38;
}

void sub_1000F41F4(uint64_t a1, uint64_t a2)
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
LABEL_14:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a1 + 56) + 8 * v12);
      v14 = *(*(a1 + 48) + 8 * v12);

      v15 = sub_100186880(v14);
      v17 = v16;

      if ((v17 & 1) == 0 || (v18 = *(*(a2 + 56) + 8 * v15), v19 = *(v18 + 16), v19 != *(v13 + 16)))
      {
LABEL_28:

        return;
      }

      if (v19)
      {
        v20 = v18 == v13;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v21 = (v18 + 40);
        v22 = (v13 + 40);
        while (v19)
        {
          v23 = *(v21 - 1) == *(v22 - 1) && *v21 == *v22;
          if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_28;
          }

          v21 += 2;
          v22 += 2;
          if (!--v19)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        goto LABEL_32;
      }

LABEL_6:
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
        goto LABEL_14;
      }
    }

LABEL_32:
    __break(1u);
  }
}

uint64_t sub_1000F4390(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = sub_1001921EC(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + result) != v13)
    {
      return 0;
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
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F4498(uint64_t result, uint64_t a2, __n128 a3)
{
  if (result == a2)
  {
    return 1;
  }

  v4 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_14:
    v13 = v10 | (v5 << 6);
    v14 = *(*(v4 + 48) + 8 * v13);
    v15 = (*(v4 + 56) + 16 * v13);
    v17 = *v15;
    v16 = v15[1];
    result = sub_1001868C8(v14);
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    v19 = (*(a2 + 56) + 16 * result);
    v20 = v19[1];
    if (v20)
    {
      if (!v16)
      {
        return 0;
      }

      result = *v19;
      if (*v19 != v17 || v20 != v16)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v16)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(v4 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F45D4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v32 = (v4 + 63) >> 6;
  v33 = result;
  if (v6)
  {
    do
    {
      v7 = __clz(__rbit64(v6));
      v35 = (v6 - 1) & v6;
LABEL_12:
      v10 = v7 | (v2 << 6);
      v11 = *(*(result + 48) + 8 * v10);
      v12 = *(result + 56) + 40 * v10;
      v14 = *v12;
      v13 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v17 = *(v12 + 25);
      v18 = *(v12 + 32);

      if (!v15)
      {
        return 1;
      }

      v20 = sub_1001921C8(v11, v19);
      if ((v21 & 1) == 0)
      {
        goto LABEL_41;
      }

      v22 = *(a2 + 56) + 40 * v20;
      if (*v22 != v14)
      {
        goto LABEL_41;
      }

      result = *(v22 + 8);
      v23 = *(v22 + 24);
      v24 = *(v22 + 25);
      v25 = *(v22 + 32);
      if (result != v13 || v15 != *(v22 + 16))
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      if (v16 != v23 || v17 != v24)
      {
        goto LABEL_41;
      }

      if (v25)
      {
        if (!v18)
        {
          goto LABEL_42;
        }

        v27 = *(v25 + 16);
        if (v27 != *(v18 + 16))
        {
LABEL_41:

LABEL_42:

          return 0;
        }

        if (v27)
        {
          v28 = v25 == v18;
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          v29 = (v25 + 40);
          v30 = (v18 + 40);
          while (v27)
          {
            result = *(v29 - 1);
            if (result != *(v30 - 1) || *v29 != *v30)
            {
              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              if ((result & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            v29 += 2;
            v30 += 2;
            if (!--v27)
            {
              goto LABEL_30;
            }
          }

          goto LABEL_46;
        }

LABEL_30:
      }

      else if (v18)
      {
        goto LABEL_41;
      }

      result = v33;
      v6 = v35;
    }

    while (v35);
  }

  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v32)
    {
      return 1;
    }

    v9 = *(v3 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v35 = (v9 - 1) & v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1000F4818(uint64_t a1, char a2)
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

void sub_1000F48B8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for TargetTracks.TimePoint(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for TargetTracks.TimePoint(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000F5250(v8, v9, a1, v4);
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
    sub_1000F49E4(0, v2, 1, a1);
  }
}

void sub_1000F49E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for TargetTracks.TimePoint(0);
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    type metadata accessor for Date();
    v17 = *(v8 + 72);
    v18 = v16 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v33 = v16;
    v27 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v31 = v18;
    v32 = a3;
    v29 = v21;
    v30 = v20;
    v22 = v20;
    while (1)
    {
      sub_1000F8F2C(v21, v15, type metadata accessor for TargetTracks.TimePoint);
      sub_1000F8F2C(v18, v12, type metadata accessor for TargetTracks.TimePoint);
      sub_1000F1E40(&qword_10035E408, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v23 = dispatch thunk of static Comparable.< infix(_:_:)();
      sub_1000F8E1C(v12, type metadata accessor for TargetTracks.TimePoint);
      sub_1000F8E1C(v15, type metadata accessor for TargetTracks.TimePoint);
      if (v23)
      {
LABEL_4:
        a3 = v32 + 1;
        v18 = v31 + v27;
        v20 = v30 - 1;
        v21 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_1000F8E7C(v21, v34, type metadata accessor for TargetTracks.TimePoint);
      swift_arrayInitWithTakeFrontToBack();
      sub_1000F8E7C(v24, v18, type metadata accessor for TargetTracks.TimePoint);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1000F4C88(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_10019DF64(v7);
    }

    v84 = v7 + 16;
    v85 = *(v7 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v7[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1000F5C10((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 3;
        v18 = (v12 >= v9) ^ (v16 < v17);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v12 < v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 < v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = *(v22 + 1);
            v26 = *(v23 - 24);
            v22[2] = *(v23 - 8);
            *v22 = v26;
            *(v23 - 24) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_10017C168(0, *(v7 + 2) + 1, 1, v7);
    }

    v37 = *(v7 + 2);
    v36 = *(v7 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v7 = sub_10017C168((v36 > 1), v37 + 1, 1, v7);
    }

    *(v7 + 2) = v38;
    v39 = v7 + 32;
    v40 = &v7[16 * v37 + 32];
    *v40 = v8;
    *(v40 + 1) = v6;
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 4);
          v43 = *(v7 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v7[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v39[16 * v41];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v7[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v39[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
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
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v39[16 * v41 - 16];
        v80 = *v79;
        v81 = &v39[16 * v41];
        v82 = *(v81 + 1);
        sub_1000F5C10((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *(v7 + 2);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        memmove(&v39[16 * v41], v81 + 16, 16 * (v83 - 1 - v41));
        *(v7 + 2) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v39[16 * v38];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v7[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v39[16 * v41];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*v33 < v31)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

void sub_1000F5250(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v117 = type metadata accessor for TargetTracks.TimePoint(0);
  v112 = *(v117 - 8);
  __chkstk_darwin(v117);
  v108 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v116 = &v100 - v11;
  __chkstk_darwin(v12);
  v119 = &v100 - v13;
  __chkstk_darwin(v14);
  v118 = &v100 - v15;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_127:
      v18 = sub_10019DF64(v18);
    }

    v120 = v18;
    v96 = *(v18 + 2);
    if (v96 >= 2)
    {
      while (*a3)
      {
        v97 = *&v18[16 * v96];
        v98 = *&v18[16 * v96 + 24];
        sub_1000F5E4C(*a3 + *(v112 + 72) * v97, *a3 + *(v112 + 72) * *&v18[16 * v96 + 16], *a3 + *(v112 + 72) * v98, v5);
        if (v6)
        {
          goto LABEL_105;
        }

        if (v98 < v97)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_10019DF64(v18);
        }

        if (v96 - 2 >= *(v18 + 2))
        {
          goto LABEL_121;
        }

        v99 = &v18[16 * v96];
        *v99 = v97;
        *(v99 + 1) = v98;
        v120 = v18;
        sub_10019DED8(v96 - 1);
        v18 = v120;
        v96 = *(v120 + 2);
        if (v96 <= 1)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_131;
    }

LABEL_105:

    return;
  }

  v101 = a4;
  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v102 = a3;
  while (1)
  {
    v19 = v17;
    v20 = v17 + 1;
    v113 = v18;
    if (v17 + 1 >= v16)
    {
      v31 = v17 + 1;
    }

    else
    {
      v114 = v16;
      v103 = v6;
      v21 = *a3;
      v22 = *(v112 + 72);
      v5 = *a3 + v22 * v20;
      v23 = v118;
      sub_1000F8F2C(v5, v118, type metadata accessor for TargetTracks.TimePoint);
      v24 = v21 + v22 * v19;
      v105 = v19;
      v25 = v119;
      sub_1000F8F2C(v24, v119, type metadata accessor for TargetTracks.TimePoint);
      type metadata accessor for Date();
      sub_1000F1E40(&qword_10035E408, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      LODWORD(v111) = dispatch thunk of static Comparable.< infix(_:_:)();
      sub_1000F8E1C(v25, type metadata accessor for TargetTracks.TimePoint);
      sub_1000F8E1C(v23, type metadata accessor for TargetTracks.TimePoint);
      v26 = v105 + 2;
      v115 = v22;
      v27 = v21 + v22 * (v105 + 2);
      while (v114 != v26)
      {
        v28 = v118;
        sub_1000F8F2C(v27, v118, type metadata accessor for TargetTracks.TimePoint);
        v29 = v119;
        sub_1000F8F2C(v5, v119, type metadata accessor for TargetTracks.TimePoint);
        v30 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        sub_1000F8E1C(v29, type metadata accessor for TargetTracks.TimePoint);
        v18 = v113;
        sub_1000F8E1C(v28, type metadata accessor for TargetTracks.TimePoint);
        ++v26;
        v27 += v115;
        v5 += v115;
        if ((v111 & 1) != v30)
        {
          v31 = v26 - 1;
          goto LABEL_11;
        }
      }

      v31 = v114;
LABEL_11:
      a3 = v102;
      v6 = v103;
      v19 = v105;
      if ((v111 & 1) == 0)
      {
        if (v31 < v105)
        {
          goto LABEL_124;
        }

        if (v105 < v31)
        {
          v32 = v115 * (v31 - 1);
          v5 = v31 * v115;
          v33 = v31;
          v34 = v105 * v115;
          do
          {
            if (v19 != --v31)
            {
              v35 = a3;
              v36 = *a3;
              if (!v36)
              {
                goto LABEL_130;
              }

              sub_1000F8E7C(v36 + v34, v108, type metadata accessor for TargetTracks.TimePoint);
              if (v34 < v32 || v36 + v34 >= v36 + v5)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v34 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1000F8E7C(v108, v36 + v32, type metadata accessor for TargetTracks.TimePoint);
              a3 = v35;
              v18 = v113;
            }

            ++v19;
            v32 -= v115;
            v5 -= v115;
            v34 += v115;
          }

          while (v19 < v31);
          v6 = v103;
          v19 = v105;
          v31 = v33;
        }
      }
    }

    v37 = a3[1];
    if (v31 < v37)
    {
      if (__OFSUB__(v31, v19))
      {
        goto LABEL_123;
      }

      if (v31 - v19 < v101)
      {
        if (__OFADD__(v19, v101))
        {
          goto LABEL_125;
        }

        if (v19 + v101 >= v37)
        {
          v38 = a3[1];
        }

        else
        {
          v38 = v19 + v101;
        }

        if (v38 < v19)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v31 != v38)
        {
          break;
        }
      }
    }

    v17 = v31;
    if (v31 < v19)
    {
      goto LABEL_122;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_10017C168(0, *(v18 + 2) + 1, 1, v18);
    }

    v40 = *(v18 + 2);
    v39 = *(v18 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v18 = sub_10017C168((v39 > 1), v40 + 1, 1, v18);
    }

    *(v18 + 2) = v41;
    v42 = &v18[16 * v40];
    *(v42 + 4) = v19;
    *(v42 + 5) = v17;
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_132;
    }

    if (v40)
    {
      while (1)
      {
        v43 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = *(v18 + 4);
          v45 = *(v18 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_54:
          if (v47)
          {
            goto LABEL_111;
          }

          v60 = &v18[16 * v41];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_114;
          }

          v66 = &v18[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_118;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v41 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v70 = &v18[16 * v41];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_68:
        if (v65)
        {
          goto LABEL_113;
        }

        v73 = &v18[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_116;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_75:
        v81 = v43 - 1;
        if (v43 - 1 >= v41)
        {
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
          __break(1u);
LABEL_116:
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v82 = *&v18[16 * v81 + 32];
        v83 = *&v18[16 * v43 + 40];
        sub_1000F5E4C(*a3 + *(v112 + 72) * v82, *a3 + *(v112 + 72) * *&v18[16 * v43 + 32], *a3 + *(v112 + 72) * v83, v5);
        if (v6)
        {
          goto LABEL_105;
        }

        if (v83 < v82)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_10019DF64(v18);
        }

        if (v81 >= *(v18 + 2))
        {
          goto LABEL_108;
        }

        v84 = &v18[16 * v81];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        v120 = v18;
        sub_10019DED8(v43);
        v18 = v120;
        v41 = *(v120 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v18[16 * v41 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_109;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_110;
      }

      v55 = &v18[16 * v41];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_112;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_115;
      }

      if (v59 >= v51)
      {
        v77 = &v18[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_119;
        }

        if (v46 < v80)
        {
          v43 = v41 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v16 = a3[1];
    if (v17 >= v16)
    {
      goto LABEL_95;
    }
  }

  v103 = v6;
  v85 = *a3;
  type metadata accessor for Date();
  v86 = *(v112 + 72);
  v87 = v85 + v86 * (v31 - 1);
  v88 = -v86;
  v105 = v19;
  v106 = v86;
  v89 = v19 - v31;
  v115 = v85;
  v5 = v85 + v31 * v86;
  v107 = v38;
LABEL_86:
  v114 = v31;
  v109 = v5;
  v110 = v89;
  v111 = v87;
  v90 = v87;
  while (1)
  {
    v91 = v118;
    sub_1000F8F2C(v5, v118, type metadata accessor for TargetTracks.TimePoint);
    v92 = v119;
    sub_1000F8F2C(v90, v119, type metadata accessor for TargetTracks.TimePoint);
    sub_1000F1E40(&qword_10035E408, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v93 = dispatch thunk of static Comparable.< infix(_:_:)();
    sub_1000F8E1C(v92, type metadata accessor for TargetTracks.TimePoint);
    sub_1000F8E1C(v91, type metadata accessor for TargetTracks.TimePoint);
    if (v93)
    {
LABEL_85:
      v31 = v114 + 1;
      v17 = v107;
      v87 = v111 + v106;
      v89 = v110 - 1;
      v5 = v109 + v106;
      if (v114 + 1 != v107)
      {
        goto LABEL_86;
      }

      a3 = v102;
      v6 = v103;
      v18 = v113;
      v19 = v105;
      if (v107 < v105)
      {
        goto LABEL_122;
      }

      goto LABEL_35;
    }

    if (!v115)
    {
      break;
    }

    v94 = v116;
    sub_1000F8E7C(v5, v116, type metadata accessor for TargetTracks.TimePoint);
    swift_arrayInitWithTakeFrontToBack();
    sub_1000F8E7C(v94, v90, type metadata accessor for TargetTracks.TimePoint);
    v90 += v88;
    v5 += v88;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}

uint64_t sub_1000F5C10(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (*v16 >= v19)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

void sub_1000F5E4C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for TargetTracks.TimePoint(0);
  __chkstk_darwin(v8);
  v43 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v42 = &v35 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v41 = v11;
  v16 = (a2 - a1) / v14;
  v46 = a1;
  v45 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v18;
    if (v18 >= 1)
    {
      v24 = -v14;
      v25 = a4 + v18;
      v37 = v24;
      v38 = a4;
      do
      {
        v35 = v23;
        v26 = a2 + v24;
        v39 = a2;
        v40 = a2 + v24;
        while (1)
        {
          if (a2 <= a1)
          {
            v46 = a2;
            v44 = v35;
            goto LABEL_58;
          }

          v36 = v23;
          v28 = a3 + v24;
          v29 = v25 + v24;
          v30 = v42;
          sub_1000F8F2C(v29, v42, type metadata accessor for TargetTracks.TimePoint);
          v31 = v26;
          v32 = v43;
          sub_1000F8F2C(v31, v43, type metadata accessor for TargetTracks.TimePoint);
          type metadata accessor for Date();
          sub_1000F1E40(&qword_10035E408, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v33 = dispatch thunk of static Comparable.< infix(_:_:)();
          sub_1000F8E1C(v32, type metadata accessor for TargetTracks.TimePoint);
          sub_1000F8E1C(v30, type metadata accessor for TargetTracks.TimePoint);
          if ((v33 & 1) == 0)
          {
            break;
          }

          v23 = v29;
          if (a3 < v25 || v28 >= v25)
          {
            a3 = v28;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v34 = a3 == v25;
            a3 = v28;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v29;
          a2 = v39;
          v27 = v29 > v38;
          v26 = v40;
          v24 = v37;
          if (!v27)
          {
            goto LABEL_56;
          }
        }

        if (a3 < v39 || v28 >= v39)
        {
          a3 = v28;
          a2 = v40;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v36;
          v24 = v37;
        }

        else
        {
          v34 = a3 == v39;
          a3 = v28;
          a2 = v40;
          v23 = v36;
          v24 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v38);
    }

LABEL_56:
    v46 = a2;
    v44 = v23;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v17;
    v44 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = v42;
      do
      {
        sub_1000F8F2C(a2, v20, type metadata accessor for TargetTracks.TimePoint);
        v21 = v43;
        sub_1000F8F2C(a4, v43, type metadata accessor for TargetTracks.TimePoint);
        type metadata accessor for Date();
        sub_1000F1E40(&qword_10035E408, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v22 = dispatch thunk of static Comparable.< infix(_:_:)();
        sub_1000F8E1C(v21, type metadata accessor for TargetTracks.TimePoint);
        sub_1000F8E1C(v20, type metadata accessor for TargetTracks.TimePoint);
        if (v22)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v46 = a1;
      }

      while (a4 < v40 && a2 < a3);
    }
  }

LABEL_58:
  sub_1000F63B8(&v46, &v45, &v44);
}

uint64_t sub_1000F63B8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for TargetTracks.TimePoint(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1000F649C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000040A8(&qword_100356188, &unk_100283E60);
  __chkstk_darwin(v8 - 8);
  v29 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for ServiceOutages.Outage(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  v30 = a1;
  Hasher._combine(_:)(v17);
  if (v17)
  {
    v18 = *(v13 + 20);
    v19 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = v14;
    v21 = (v5 + 48);
    v27 = *(v20 + 72);
    v28 = v18;
    v26 = (v5 + 32);
    v22 = (v5 + 8);
    do
    {
      sub_1000F8F2C(v19, v16, type metadata accessor for ServiceOutages.Outage);
      sub_100006C20(v16, v12, &qword_100356188, &unk_100283E60);
      v23 = *v21;
      if ((*v21)(v12, 1, v4) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        (*v26)(v7, v12, v4);
        Hasher._combine(_:)(1u);
        sub_1000F1E40(&qword_10035E3D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        dispatch thunk of Hashable.hash(into:)();
        (*v22)(v7, v4);
      }

      v24 = v29;
      sub_100006C20(&v16[v28], v29, &qword_100356188, &unk_100283E60);
      if (v23(v24, 1, v4) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        (*v26)(v7, v24, v4);
        Hasher._combine(_:)(1u);
        sub_1000F1E40(&qword_10035E3D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        dispatch thunk of Hashable.hash(into:)();
        (*v22)(v7, v4);
      }

      sub_1000F8E1C(v16, type metadata accessor for ServiceOutages.Outage);
      v19 += v27;
      --v17;
    }

    while (v17);
  }
}

uint64_t sub_1000F6898(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_10009298C(&qword_10035E440, &qword_10035ABD0, &qword_10027F558);
          for (i = 0; i != v7; ++i)
          {
            sub_1000040A8(&qword_10035ABD0, &qword_10027F558);
            v10 = sub_1000F6A28(v14, i, a3);
            v12 = *v11;

            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
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
        type metadata accessor for TryOutTranscriptItem(0);
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

uint64_t (*sub_1000F6A28(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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
    return sub_1000F6AA8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F6AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v6 = a1;

    sub_1000F41F4(v6, a3);
    LOBYTE(v6) = v8;

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4 && (sub_100204870() & 1) != 0)
    {
      return 1;
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

BOOL sub_1000F6B40(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TransmissionProgress(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000040A8(&qword_100354FD8, &qword_100277EF0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v29 - v9);
  v11 = sub_1000040A8(&qword_100359F60, &unk_100284630);
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  if (*a1 != *a2)
  {
    return 0;
  }

  v17 = a1[1];
  v18 = a2[1];
  if (v17 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else
  {
    v15 = 0;
    if (v18 == 2 || ((v18 ^ v17) & 1) != 0)
    {
      return v15;
    }
  }

  v19 = a1[2];
  v20 = a2[2];
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }

    goto LABEL_14;
  }

  v15 = 0;
  if (v20 != 2 && ((v20 ^ v19) & 1) == 0)
  {
LABEL_14:
    v21 = a1[3];
    v22 = a2[3];
    if (v21 == 4)
    {
      if (v22 != 4)
      {
        return 0;
      }
    }

    else if (v21 != v22)
    {
      return 0;
    }

    v23 = v12;
    v24 = *(type metadata accessor for LinkState(0) + 32);
    v25 = &a1[v24];
    v26 = *(v23 + 48);
    sub_100006C20(v25, v14, &qword_100354FD8, &qword_100277EF0);
    sub_100006C20(&a2[v24], &v14[v26], &qword_100354FD8, &qword_100277EF0);
    v27 = *(v5 + 48);
    if (v27(v14, 1, v4) == 1)
    {
      if (v27(&v14[v26], 1, v4) == 1)
      {
        sub_100008FA0(v14, &qword_100354FD8, &qword_100277EF0);
        return 1;
      }

      goto LABEL_23;
    }

    sub_100006C20(v14, v10, &qword_100354FD8, &qword_100277EF0);
    if (v27(&v14[v26], 1, v4) == 1)
    {
      sub_1000F8E1C(v10, type metadata accessor for TransmissionProgress);
LABEL_23:
      sub_100008FA0(v14, &qword_100359F60, &unk_100284630);
      return 0;
    }

    sub_1000F8E7C(&v14[v26], v7, type metadata accessor for TransmissionProgress);
    v28 = sub_1000F84AC(v10, v7);
    sub_1000F8E1C(v7, type metadata accessor for TransmissionProgress);
    sub_1000F8E1C(v10, type metadata accessor for TransmissionProgress);
    sub_100008FA0(v14, &qword_100354FD8, &qword_100277EF0);
    return v28;
  }

  return v15;
}

BOOL sub_1000F6EDC(uint64_t a1)
{
  v158 = type metadata accessor for ConnectionClosed(0);
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v3 = &v151 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000040A8(&qword_100356510, &qword_10027D810);
  __chkstk_darwin(v4 - 8);
  v157 = &v151 - v5;
  v155 = sub_1000040A8(&qword_10035E3E0, &qword_10028FBD0);
  __chkstk_darwin(v155);
  v159 = (&v151 - v6);
  v7 = type metadata accessor for LinkState(0);
  v164 = *(v7 - 8);
  v165 = v7;
  __chkstk_darwin(v7);
  v160 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000040A8(&qword_100359798, &unk_100284020);
  __chkstk_darwin(v9 - 8);
  v161 = &v151 - v10;
  v163 = sub_1000040A8(&qword_10035E3E8, &qword_100284640);
  __chkstk_darwin(v163);
  v166 = &v151 - v11;
  v12 = type metadata accessor for SilencePeriod(0);
  v168 = *(v12 - 8);
  v169 = v12;
  __chkstk_darwin(v12);
  v162 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000040A8(&qword_10035E270, &qword_100284018);
  __chkstk_darwin(v14 - 8);
  v167 = &v151 - v15;
  v16 = sub_1000040A8(&qword_10035E3F0, &qword_100284648);
  __chkstk_darwin(v16);
  v170 = &v151 - v17;
  v18 = type metadata accessor for ServiceOutages(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000040A8(&qword_10035E268, &qword_100284010);
  __chkstk_darwin(v22 - 8);
  v24 = &v151 - v23;
  v25 = sub_1000040A8(&qword_10035E3F8, &qword_100284650);
  __chkstk_darwin(v25);
  v28 = &v151 - v27;
  v29 = *(v26 + 40);
  if (*(a1 + 40))
  {
    if ((*(v26 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *v26)
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }

    v154 = v3;
    v54 = a1;
    v55 = v26;
    if ((static Angle.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }

    if ((static Angle.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }

    if ((static Angle.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }

    v56 = static Angle.== infix(_:_:)();
    v26 = v55;
    a1 = v54;
    v3 = v154;
    if ((v56 & 1) == 0)
    {
      return 0;
    }
  }

  v30 = *(a1 + 41);
  v31 = *(v26 + 41);
  if (v30 == 4)
  {
    if (v31 != 4)
    {
      return 0;
    }
  }

  else
  {
    if (v31 == 4)
    {
      return 0;
    }

    if (v30 == 3)
    {
      if (v31 != 3)
      {
        return 0;
      }
    }

    else if (v30 != v31)
    {
      return 0;
    }
  }

  v32 = *(v26 + 43);
  if (*(a1 + 43))
  {
    goto LABEL_6;
  }

  if (*(v26 + 43))
  {
    return 0;
  }

  v32 = *(v26 + 42);
  if (*(a1 + 42))
  {
LABEL_6:
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(v26 + 42))
  {
    return 0;
  }

  v154 = v3;
  v33 = a1;
  v34 = v26;
  v151 = type metadata accessor for ConnectionAssistantState(0);
  v152 = v33;
  v35 = *(v25 + 48);
  v36 = v33 + v151[7];
  v37 = v151[7];
  sub_100006C20(v36, v28, &qword_10035E268, &qword_100284010);
  v153 = v34;
  v38 = v34 + v37;
  v39 = v35;
  sub_100006C20(v38, &v28[v35], &qword_10035E268, &qword_100284010);
  v40 = *(v19 + 48);
  if (v40(v28, 1, v18) == 1)
  {
    if (v40(&v28[v39], 1, v18) == 1)
    {
      sub_100008FA0(v28, &qword_10035E268, &qword_100284010);
      goto LABEL_10;
    }

    goto LABEL_36;
  }

  sub_100006C20(v28, v24, &qword_10035E268, &qword_100284010);
  if (v40(&v28[v39], 1, v18) == 1)
  {
    sub_1000F8E1C(v24, type metadata accessor for ServiceOutages);
LABEL_36:
    v57 = &qword_10035E3F8;
    v58 = &qword_100284650;
LABEL_42:
    v60 = v28;
LABEL_43:
    sub_100008FA0(v60, v57, v58);
    return 0;
  }

  sub_1000F8E7C(&v28[v39], v21, type metadata accessor for ServiceOutages);
  if ((static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
  {
    sub_1000F8E1C(v21, type metadata accessor for ServiceOutages);
    sub_1000F8E1C(v24, type metadata accessor for ServiceOutages);
    v57 = &qword_10035E268;
    v58 = &qword_100284010;
    goto LABEL_42;
  }

  v59 = sub_100202114(*&v24[*(v18 + 24)], *&v21[*(v18 + 24)]);
  sub_1000F8E1C(v21, type metadata accessor for ServiceOutages);
  sub_1000F8E1C(v24, type metadata accessor for ServiceOutages);
  sub_100008FA0(v28, &qword_10035E268, &qword_100284010);
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v42 = v151;
  v41 = v152;
  v43 = v151[8];
  v44 = *(v16 + 48);
  v45 = v170;
  sub_100006C20(v152 + v43, v170, &qword_10035E270, &qword_100284018);
  sub_100006C20(v153 + v43, v45 + v44, &qword_10035E270, &qword_100284018);
  v46 = v169;
  v47 = *(v168 + 48);
  if (v47(v45, 1, v169) == 1)
  {
    if (v47(v45 + v44, 1, v46) == 1)
    {
      sub_100008FA0(v45, &qword_10035E270, &qword_100284018);
      goto LABEL_13;
    }

    goto LABEL_47;
  }

  v62 = v167;
  sub_100006C20(v45, v167, &qword_10035E270, &qword_100284018);
  if (v47(v45 + v44, 1, v46) == 1)
  {
    sub_1000F8E1C(v62, type metadata accessor for SilencePeriod);
LABEL_47:
    v57 = &qword_10035E3F0;
    v58 = &qword_100284648;
LABEL_48:
    v60 = v45;
    goto LABEL_43;
  }

  v63 = v45 + v44;
  v64 = v162;
  sub_1000F8E7C(v63, v162, type metadata accessor for SilencePeriod);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    sub_1000F8E1C(v64, type metadata accessor for SilencePeriod);
    sub_1000F8E1C(v62, type metadata accessor for SilencePeriod);
    v57 = &qword_10035E270;
    v58 = &qword_100284018;
    goto LABEL_48;
  }

  v65 = static Date.== infix(_:_:)();
  sub_1000F8E1C(v64, type metadata accessor for SilencePeriod);
  sub_1000F8E1C(v62, type metadata accessor for SilencePeriod);
  sub_100008FA0(v45, &qword_10035E270, &qword_100284018);
  if ((v65 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v48 = v42[9];
  v49 = *(v163 + 48);
  v50 = v166;
  sub_100006C20(v41 + v48, v166, &qword_100359798, &unk_100284020);
  v51 = v153 + v48;
  v28 = v50;
  sub_100006C20(v51, v50 + v49, &qword_100359798, &unk_100284020);
  v52 = v165;
  v53 = *(v164 + 48);
  if (v53(v50, 1, v165) == 1)
  {
    if (v53(v50 + v49, 1, v52) == 1)
    {
      sub_100008FA0(v50, &qword_100359798, &unk_100284020);
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  v66 = v161;
  sub_100006C20(v28, v161, &qword_100359798, &unk_100284020);
  if (v53(&v28[v49], 1, v52) == 1)
  {
    sub_1000F8E1C(v66, type metadata accessor for LinkState);
LABEL_54:
    v57 = &qword_10035E3E8;
    v58 = &qword_100284640;
    goto LABEL_42;
  }

  v67 = &v28[v49];
  v68 = v160;
  sub_1000F8E7C(v67, v160, type metadata accessor for LinkState);
  v69 = sub_1000F6B40(v66, v68);
  sub_1000F8E1C(v68, type metadata accessor for LinkState);
  sub_1000F8E1C(v66, type metadata accessor for LinkState);
  sub_100008FA0(v28, &qword_100359798, &unk_100284020);
  if (!v69)
  {
    return 0;
  }

LABEL_57:
  v70 = v42[10];
  v71 = (v41 + v70);
  v72 = *(v41 + v70 + 16);
  v73 = v153;
  v74 = (v153 + v70);
  v75 = *(v153 + v70 + 16);
  if (v72 == 2)
  {
    if (v75 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v75 == 2)
    {
      return 0;
    }

    v76 = *v71;
    v77 = v71[1];
    v78 = v71[3];
    v79 = *(v71 + 16);
    v80 = *v74;
    v81 = v74[1];
    v82 = v74[3];
    v83 = *(v74 + 16);
    v214[0] = v76;
    v215 = v77;
    v216 = v72 & 1;
    v217 = v78;
    v218 = v79 & 0x101;
    v219[0] = v80;
    v220 = v81;
    v221 = v75 & 1;
    v222 = v82;
    v223 = v83 & 0x101;
    v84 = sub_100086A90(v214, v219);
    v73 = v153;
    if (!v84)
    {
      return 0;
    }
  }

  v85 = v42[11];
  v86 = (v41 + v85);
  v87 = *(v41 + v85 + 8);
  v88 = (v73 + v85);
  v89 = *(v73 + v85 + 8);
  if (v87 == 2)
  {
    if (v89 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v89 == 2)
    {
      return 0;
    }

    v90 = *v86;
    v91 = v86[2];
    v92 = v86[3];
    v93 = v86[4];
    v94 = *(v86 + 20);
    v95 = *v88;
    v97 = v88[2];
    v96 = v88[3];
    v98 = v88[4];
    v99 = *(v88 + 20);
    v202 = v90;
    v203 = v87 & 1;
    v204 = v91;
    v205 = v92 & 1;
    v206 = v93;
    v207 = v94 & 0x101;
    v208 = v95;
    v209 = v89 & 1;
    v210 = v97;
    v211 = v96 & 1;
    v212 = v98;
    v213 = v99 & 0x101;
    v100 = sub_10001FA68(&v202, &v208);
    v73 = v153;
    if (!v100)
    {
      return 0;
    }
  }

  v101 = v42[12];
  v102 = (v41 + v101);
  v103 = *(v41 + v101 + 8);
  v104 = (v73 + v101);
  v105 = v104[1];
  if (v103)
  {
    if (!v105)
    {
      return 0;
    }

    if (*v102 != *v104 || v103 != v105)
    {
      v106 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v73 = v153;
      if ((v106 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v105)
  {
    return 0;
  }

  v107 = v42[13];
  v108 = v41 + v107;
  v109 = *(v41 + v107);
  v110 = (v73 + v107);
  v111 = *v110;
  if (v109 != 1)
  {
    if (v111 == 1)
    {
      return 0;
    }

    v116 = *(v108 + 8);
    v117 = v110[1];
    if (v109)
    {
      if (!v111)
      {

        goto LABEL_106;
      }

      sub_1000F8EE4(*v110, v110[1]);

      sub_1000F41F4(v109, v111);
      v119 = v118;

      if (v119)
      {
LABEL_100:
        if (v116)
        {
          if (v117)
          {
            v148 = sub_100204870();

            if ((v148 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_76;
          }
        }

        else
        {

          if (!v117)
          {
            goto LABEL_76;
          }
        }

LABEL_106:

        return 0;
      }
    }

    else
    {
      if (!v111)
      {

        goto LABEL_100;
      }

      sub_1000F8EE4(*v110, v110[1]);
    }

    goto LABEL_106;
  }

  if (v111 != 1)
  {
    return 0;
  }

LABEL_76:
  v112 = v151[14];
  v113 = *(v155 + 48);
  v114 = v159;
  sub_100006C20(v152 + v112, v159, &qword_100356510, &qword_10027D810);
  sub_100006C20(v153 + v112, v114 + v113, &qword_100356510, &qword_10027D810);
  v115 = *(v156 + 48);
  if (v115(v114, 1, v158) == 1)
  {
    if (v115(v159 + v113, 1, v158) == 1)
    {
      sub_100008FA0(v159, &qword_100356510, &qword_10027D810);
      goto LABEL_92;
    }

    goto LABEL_86;
  }

  v120 = v159;
  sub_100006C20(v159, v157, &qword_100356510, &qword_10027D810);
  if (v115((v120 + v113), 1, v158) == 1)
  {
    sub_1000F8E1C(v157, type metadata accessor for ConnectionClosed);
LABEL_86:
    v57 = &qword_10035E3E0;
    v58 = &qword_10028FBD0;
    v60 = v159;
    goto LABEL_43;
  }

  v121 = v159;
  v122 = v159 + v113;
  v123 = v154;
  sub_1000F8E7C(v122, v154, type metadata accessor for ConnectionClosed);
  v124 = v157;
  v125 = sub_1000F8120(v157, v123);
  sub_1000F8E1C(v123, type metadata accessor for ConnectionClosed);
  sub_1000F8E1C(v124, type metadata accessor for ConnectionClosed);
  sub_100008FA0(v121, &qword_100356510, &qword_10027D810);
  if ((v125 & 1) == 0)
  {
    return 0;
  }

LABEL_92:
  v126 = v152 + v151[15];
  v127 = *(v126 + 48);
  v128 = *(v126 + 64);
  v197 = *(v126 + 80);
  v129 = *(v126 + 32);
  v130 = *(v126 + 16);
  v196[3] = *(v126 + 48);
  v196[4] = v128;
  v131 = *(v126 + 16);
  v196[0] = *v126;
  v196[1] = v131;
  v196[2] = v129;
  v132 = v153 + v151[15];
  v133 = *(v132 + 64);
  v134 = *(v132 + 16);
  v198[0] = *v132;
  v198[1] = v134;
  v135 = *(v132 + 32);
  v198[3] = *(v132 + 48);
  v198[4] = v133;
  v198[2] = v135;
  v136 = *(v126 + 64);
  v193 = v127;
  v194 = v136;
  v199 = *(v132 + 80);
  v137 = v196[0];
  v195 = *(v126 + 80);
  v191 = v130;
  v192 = v129;
  if (*(&v196[0] + 1))
  {
    if (*(&v198[0] + 1))
    {
      v171 = v198[0];
      v138 = *(v132 + 64);
      v174 = *(v132 + 48);
      v175 = v138;
      v176 = *(v132 + 80);
      v139 = *(v132 + 32);
      v172 = *(v132 + 16);
      v173 = v139;
      v184 = v176;
      v182 = v174;
      v183 = v138;
      v180 = v172;
      v181 = v139;
      v179 = v198[0];
      v140 = *(v126 + 64);
      v200[3] = *(v126 + 48);
      v200[4] = v140;
      v201 = *(v126 + 80);
      v141 = *(v126 + 32);
      v200[1] = *(v126 + 16);
      v200[2] = v141;
      v200[0] = v196[0];
      v142 = sub_10001F4B0(v200, &v179);
      sub_100006C20(v196, v177, &unk_10035CEF0, &qword_1002794A0);
      sub_100006C20(v198, v177, &unk_10035CEF0, &qword_1002794A0);
      sub_100008FA0(&v171, &unk_10035CEF0, &qword_1002794A0);
      v177[0] = v137;
      v177[3] = v193;
      v177[4] = v194;
      v178 = v195;
      v177[2] = v192;
      v177[1] = v191;
      sub_100008FA0(v177, &unk_10035CEF0, &qword_1002794A0);
      return v142;
    }

    goto LABEL_98;
  }

  if (*(&v198[0] + 1))
  {
LABEL_98:
    v179 = v196[0];
    v143 = *(v126 + 64);
    v182 = *(v126 + 48);
    v183 = v143;
    v144 = *(v126 + 80);
    v145 = *(v126 + 32);
    v180 = *(v126 + 16);
    v181 = v145;
    v184 = v144;
    v185 = v198[0];
    v190 = *(v132 + 80);
    v146 = *(v132 + 64);
    v188 = *(v132 + 48);
    v189 = v146;
    v147 = *(v132 + 32);
    v186 = *(v132 + 16);
    v187 = v147;
    sub_100006C20(v196, v200, &unk_10035CEF0, &qword_1002794A0);
    sub_100006C20(v198, v200, &unk_10035CEF0, &qword_1002794A0);
    v57 = &qword_10035A098;
    v58 = &qword_10027E680;
    v60 = &v179;
    goto LABEL_43;
  }

  v179 = *&v196[0];
  v149 = *(v126 + 64);
  v182 = *(v126 + 48);
  v183 = v149;
  v184 = *(v126 + 80);
  v150 = *(v126 + 32);
  v180 = *(v126 + 16);
  v181 = v150;
  sub_100006C20(v196, v200, &unk_10035CEF0, &qword_1002794A0);
  sub_100006C20(v198, v200, &unk_10035CEF0, &qword_1002794A0);
  sub_100008FA0(&v179, &unk_10035CEF0, &qword_1002794A0);
  return 1;
}

uint64_t sub_1000F8120(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000040A8(&qword_100356188, &unk_100283E60);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_1000040A8(&qword_10035E3D0, &qword_100284628);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v25 = a1;
  v14 = *a1;
  v15 = *a2;
  if (v14 == 12)
  {
    if (v15 != 12)
    {
      goto LABEL_11;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_11;
  }

  v16 = a2;
  v24 = type metadata accessor for ConnectionClosed(0);
  v17 = *(v24 + 20);
  v18 = *(v11 + 48);
  sub_100006C20(&v25[v17], v13, &qword_100356188, &unk_100283E60);
  sub_100006C20(&v16[v17], &v13[v18], &qword_100356188, &unk_100283E60);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_100008FA0(v13, &qword_100356188, &unk_100283E60);
LABEL_14:
      v20 = sub_100204870();
      return v20 & 1;
    }

    goto LABEL_10;
  }

  sub_100006C20(v13, v10, &qword_100356188, &unk_100283E60);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_10:
    sub_100008FA0(v13, &qword_10035E3D0, &qword_100284628);
    goto LABEL_11;
  }

  (*(v5 + 32))(v7, &v13[v18], v4);
  sub_1000F1E40(&unk_10035C9E0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v5 + 8);
  v23(v7, v4);
  v23(v10, v4);
  sub_100008FA0(v13, &qword_100356188, &unk_100283E60);
  if (v22)
  {
    goto LABEL_14;
  }

LABEL_11:
  v20 = 0;
  return v20 & 1;
}

BOOL sub_1000F84AC(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000040A8(&qword_100356188, &unk_100283E60);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_1000040A8(&qword_10035E3D0, &qword_100284628);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = type metadata accessor for TransmissionProgress(0);
  v17 = *(v16 + 20);
  v18 = a1;
  v19 = *(v11 + 48);
  v33 = v16;
  v34 = v18;
  sub_100006C20(v18 + v17, v13, &qword_100356188, &unk_100283E60);
  v35 = a2;
  sub_100006C20(a2 + v17, &v13[v19], &qword_100356188, &unk_100283E60);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v19], 1, v4) == 1)
    {
      sub_100008FA0(v13, &qword_100356188, &unk_100283E60);
      goto LABEL_16;
    }

LABEL_13:
    sub_100008FA0(v13, &qword_10035E3D0, &qword_100284628);
    return 0;
  }

  sub_100006C20(v13, v10, &qword_100356188, &unk_100283E60);
  if (v20(&v13[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_13;
  }

  (*(v5 + 32))(v7, &v13[v19], v4);
  sub_1000F1E40(&unk_10035C9E0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v5 + 8);
  v23(v7, v4);
  v23(v10, v4);
  sub_100008FA0(v13, &qword_100356188, &unk_100283E60);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v24 = v33[6];
  v25 = (v34 + v24);
  v26 = *(v34 + v24 + 8);
  v27 = (v35 + v24);
  v28 = *(v35 + v24 + 8);
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  if (*(v34 + v33[7]) != *(v35 + v33[7]))
  {
    return 0;
  }

  v29 = v33[8];
  v30 = *(v34 + v29);
  v31 = *(v35 + v29);
  if (v30 == 8)
  {
    return v31 == 8;
  }

  return v30 == v31;
}

BOOL sub_1000F88AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000040A8(&qword_100356188, &unk_100283E60);
  __chkstk_darwin(v7 - 8);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_1000040A8(&qword_10035E3D0, &qword_100284628);
  __chkstk_darwin(v12);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  v18 = *(v17 + 48);
  v40 = a1;
  sub_100006C20(a1, &v36 - v15, &qword_100356188, &unk_100283E60);
  v41 = a2;
  sub_100006C20(a2, &v16[v18], &qword_100356188, &unk_100283E60);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_100006C20(v16, v11, &qword_100356188, &unk_100283E60);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = *(v5 + 32);
      v22 = &v16[v18];
      v23 = v5;
      v24 = v38;
      v21(v38, v22, v4);
      sub_1000F1E40(&unk_10035C9E0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = v23;
      v26 = *(v23 + 8);
      v26(v24, v4);
      v26(v11, v4);
      sub_100008FA0(v16, &qword_100356188, &unk_100283E60);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v5 + 8))(v11, v4);
LABEL_6:
    v20 = v16;
LABEL_14:
    sub_100008FA0(v20, &qword_10035E3D0, &qword_100284628);
    return 0;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  v36 = v5;
  sub_100008FA0(v16, &qword_100356188, &unk_100283E60);
LABEL_8:
  v27 = *(type metadata accessor for ServiceOutages.Outage(0) + 20);
  v28 = *(v12 + 48);
  v29 = v39;
  sub_100006C20(v40 + v27, v39, &qword_100356188, &unk_100283E60);
  sub_100006C20(v41 + v27, v29 + v28, &qword_100356188, &unk_100283E60);
  if (v19(v29, 1, v4) == 1)
  {
    if (v19((v29 + v28), 1, v4) == 1)
    {
      sub_100008FA0(v29, &qword_100356188, &unk_100283E60);
      return 1;
    }

    goto LABEL_13;
  }

  v30 = v37;
  sub_100006C20(v29, v37, &qword_100356188, &unk_100283E60);
  if (v19((v29 + v28), 1, v4) == 1)
  {
    (*(v36 + 8))(v30, v4);
LABEL_13:
    v20 = v29;
    goto LABEL_14;
  }

  v32 = v36;
  v33 = v38;
  (*(v36 + 32))(v38, v29 + v28, v4);
  sub_1000F1E40(&unk_10035C9E0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v32 + 8);
  v35(v33, v4);
  v35(v30, v4);
  sub_100008FA0(v29, &qword_100356188, &unk_100283E60);
  return (v34 & 1) != 0;
}

uint64_t sub_1000F8E1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000F8E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F8EE4(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1000F8F2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F8F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_10035E418, &qword_100284658);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F9004()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000F904C()
{
  result = qword_1003580B0;
  if (!qword_1003580B0)
  {
    sub_10001D630(255, &qword_10035CF30, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003580B0);
  }

  return result;
}

unint64_t sub_1000F90F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035E448;
  if (!qword_10035E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E448);
  }

  return result;
}

unint64_t sub_1000F9150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035E450;
  if (!qword_10035E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E450);
  }

  return result;
}

unint64_t sub_1000F91A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035E458;
  if (!qword_10035E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E458);
  }

  return result;
}

uint64_t sub_1000F9208(char a1)
{
  v1 = (a1 & 1) == 0;
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0x65646E6170786528;
}

uint64_t sub_1000F92A4()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for SettingsAgent();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] init", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_1000F9418()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381C80);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    type metadata accessor for SettingsAgent();

    v5 = String.init<A>(describing:)();
    v7 = sub_10017C9E8(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%{public}s] deinit", v3, 0xCu);
    sub_100008964(v4);
  }

  return swift_deallocClassInstance();
}

unint64_t sub_1000F95D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10035E518;
  if (!qword_10035E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E518);
  }

  return result;
}

void sub_1000F9624(uint64_t a1, uint64_t a2)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136446466;

    sub_1000040A8(&qword_100359C00, &unk_1002884A0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10017C9E8(v5, v6, &v12);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2082;
    swift_errorRetain();
    sub_1000040A8(&qword_100355D88, &qword_100278D50);
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v12);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Opening Settings result: %{public}s, %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_1000F9854(char a1)
{
  v2 = sub_1000040A8(&qword_100357468, &qword_100284930);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F53C(v9, qword_100381C80);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31 = v5;
    v32 = v6;
    v13 = v12;
    v14 = v8;
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v13 = 136315138;
    v33 = a1;
    v16 = String.init<A>(describing:)();
    v18 = sub_10017C9E8(v16, v17, aBlock);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Opening Settings for %s", v13, 0xCu);
    sub_100008964(v15);
    v8 = v14;

    v5 = v31;
    v6 = v32;
  }

  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_100083738(v4);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to form Settings URL", v21, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v22 = [objc_allocWithZone(_LSOpenConfiguration) init];
    [v22 setSensitive:1];
    v23 = [objc_opt_self() defaultWorkspace];
    if (v23)
    {
      v24 = v23;

      URL._bridgeToObjectiveC()(v25);
      v27 = v26;
      aBlock[4] = sub_1000F9624;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100145D6C;
      aBlock[3] = &unk_100330368;
      v28 = _Block_copy(aBlock);
      v29 = v22;
      [v24 openURL:v27 configuration:v29 completionHandler:v28];
      _Block_release(v28);

      (*(v6 + 8))(v8, v5);
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1000F9CE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1000F9CFC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      if ((v2 & 0xFF000000000000) == 0)
      {
        return;
      }

      v1 = BYTE6(v2);
      goto LABEL_15;
    }

    if (v1 == v1 >> 32)
    {
      return;
    }

LABEL_9:
    if (v3 == 2)
    {
      v6 = v1 + 16;
      v4 = *(v1 + 16);
      v5 = *(v6 + 8);
      v7 = __OFSUB__(v5, v4);
      v1 = v5 - v4;
      if (!v7)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    v7 = __OFSUB__(HIDWORD(v1), v1);
    LODWORD(v1) = HIDWORD(v1) - v1;
    if (v7)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v1 = v1;
LABEL_15:
    v7 = __OFSUB__(v1, 1);
    v8 = v1 - 1;
    if (v7)
    {
      __break(1u);
    }

    else if ((v8 - 0x1000000000000000) >> 61 == 7)
    {
      if (((8 * v8) & 0x8000000000000000) == 0)
      {
        return;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v3 == 2 && *(v1 + 16) != *(v1 + 24))
  {
    goto LABEL_9;
  }
}

void sub_1000F9DE0(int a1, unsigned __int8 a2)
{
  if (!a2)
  {
    return;
  }

  v3 = 8 - a2;
  if ((v3 & 0xFFFFFF00) != 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v4 = a1 << (v3 & 7);
  if ((8 - a2) <= 8u)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ((*(v2 + 32) | 8) == 8)
  {
    *(v2 + 32) = a2;
    swift_beginAccess();
    v22 = sub_1000040A8(&qword_10035E640, &qword_100284958);
    v23 = sub_1000FA484();
    LOBYTE(v21[0]) = v5;
    v24 = *sub_1000088DC(v21, v22);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_100008964(v21);
LABEL_11:
    swift_endAccess();
    return;
  }

  swift_beginAccess();
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    v10 = 0;
    if (v9 != 2)
    {
      goto LABEL_19;
    }

    v12 = *(v7 + 16);
    v11 = *(v7 + 24);
    v13 = __OFSUB__(v11, v12);
    v10 = v11 - v12;
    if (!v13)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(v8);
    goto LABEL_19;
  }

  LODWORD(v10) = HIDWORD(v7) - v7;
  if (__OFSUB__(HIDWORD(v7), v7))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  v10 = v10;
LABEL_19:
  if (__OFSUB__(v10, 1))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v9 <= 1)
  {
    if (!v9)
    {
      v14 = BYTE6(v8);
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v9 != 2)
  {
    v14 = 0;
    goto LABEL_30;
  }

  v16 = *(v7 + 16);
  v15 = *(v7 + 24);
  v13 = __OFSUB__(v15, v16);
  v14 = v15 - v16;
  if (v13)
  {
    __break(1u);
LABEL_27:
    LODWORD(v14) = HIDWORD(v7) - v7;
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      goto LABEL_44;
    }

    v14 = v14;
  }

LABEL_30:
  if (__OFSUB__(v14, 1))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_10000F480(v7, v8);
  Data._Representation.subscript.getter();
  sub_10000F4E8(v7, v8);
  swift_beginAccess();
  Data._Representation.subscript.setter();
  swift_endAccess();
  v17 = *(v2 + 32) + a2;
  if ((v17 & 0x100) != 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(v2 + 32) = v17;
  if (v17 >= 9u)
  {
    v18 = v17 - 8;
    *(v2 + 32) = v18;
    v19 = a2 - v18;
    if ((v19 & 0xFFFFFF00) == 0)
    {
      if ((v19 & 0xF8) != 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = v5 << (v19 & 7);
      }

      swift_beginAccess();
      v22 = sub_1000040A8(&qword_10035E640, &qword_100284958);
      v23 = sub_1000FA484();
      LOBYTE(v21[0]) = v20;
      sub_1000088DC(v21, v22);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_100008964(v21);
      goto LABEL_11;
    }

    goto LABEL_42;
  }
}

uint64_t sub_1000FA160(uint64_t a1)
{
  sub_1000F9CFC();
  v3 = v2;
  v4 = v2;
  do
  {
    sub_1000F9DE0(v4 & 0x7F | ((v4 > 0x7F) << 7), 8u);
    v5 = v4 > 0x7F;
    v4 >>= 7;
  }

  while (v5);
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  sub_10000F480(v6, v7);
  if (v3)
  {
    v8 = 0;
    v9 = v7 >> 62;
    v10 = (v3 - 1) >> 3;
    v20 = v3 - ((v3 - 1) & 0xF8);
    while (1)
    {
      if (v10 == v8)
      {
LABEL_25:
        v18 = Data._Representation.subscript.getter();
        sub_1000F9DE0(v18 >> (-v20 & 7), v20);
        return sub_10000F4E8(v6, v7);
      }

      if (v9 > 1)
      {
        break;
      }

      if (v9)
      {
        if (v8 < v6 || v8 >= v6 >> 32)
        {
          goto LABEL_29;
        }

        v16 = __DataStorage._bytes.getter();
        if (!v16)
        {
          goto LABEL_33;
        }

        v13 = v16;
        v17 = __DataStorage._offset.getter();
        v15 = v8 - v17;
        if (__OFSUB__(v8, v17))
        {
          __break(1u);
          goto LABEL_25;
        }

        goto LABEL_5;
      }

      if (v8 >= BYTE6(v7))
      {
        goto LABEL_28;
      }

      v21 = v6;
      v22 = v7;
      v23 = BYTE2(v7);
      v24 = BYTE3(v7);
      v25 = BYTE4(v7);
      v26 = BYTE5(v7);
      v11 = *(&v21 + v8);
LABEL_6:
      sub_1000F9DE0(v11, 8u);
      ++v8;
      v3 -= 8;
      if (!v3)
      {
        return sub_10000F4E8(v6, v7);
      }
    }

    if (v9 != 2)
    {
      goto LABEL_32;
    }

    if (v8 < *(v6 + 16))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    if (v8 >= *(v6 + 24))
    {
      goto LABEL_30;
    }

    v12 = __DataStorage._bytes.getter();
    if (!v12)
    {
      goto LABEL_34;
    }

    v13 = v12;
    v14 = __DataStorage._offset.getter();
    v15 = v8 - v14;
    if (__OFSUB__(v8, v14))
    {
      goto LABEL_31;
    }

LABEL_5:
    v11 = *(v13 + v15);
    goto LABEL_6;
  }

  return sub_10000F4E8(v6, v7);
}

uint64_t sub_1000FA428()
{
  sub_10000F4E8(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_1000FA484()
{
  result = qword_10035E648;
  if (!qword_10035E648)
  {
    sub_100008CF0(&qword_10035E640, &qword_100284958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E648);
  }

  return result;
}

uint64_t sub_1000FA4E8(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1000FE760(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_1000FA564(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000FA5AC(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1000FE7B4(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_1000FA628(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000FA6D4(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

void sub_1000FA810()
{
  v4 = v2;
  v149 = &_swiftEmptySetSingleton;
  v148 = &_swiftEmptySetSingleton;
  v5 = *(v1 + 96);
  v146 = v5;
  v141 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_205;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_206:
    if (v141)
    {
      v0 = _CocoaArrayWrapper.endIndex.getter();
      v5 = v146;
      if (!v0)
      {
LABEL_220:
        if (v141)
        {
          v130 = _CocoaArrayWrapper.endIndex.getter();
          v5 = v146;
        }

        else
        {
          v130 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v145 = v148;
        v131 = v149;
        if (v130)
        {
          v132 = 0;
          v143 = v5 & 0xC000000000000001;
          v0 = v5 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v143)
            {
              v133 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v3 = v132 + 1;
              if (__OFADD__(v132, 1))
              {
                goto LABEL_234;
              }
            }

            else
            {
              if (v132 >= *(v0 + 16))
              {
                goto LABEL_240;
              }

              v133 = *(v5 + 8 * v132 + 32);

              v3 = v132 + 1;
              if (__OFADD__(v132, 1))
              {
LABEL_234:
                __break(1u);
                goto LABEL_235;
              }
            }

            v134 = *(v133 + 48);

            sub_1000FC17C(v133, v134, v131, v145);
            if (v4)
            {
              break;
            }

            ++v132;
            v5 = v146;
            if (v3 == v130)
            {
              goto LABEL_235;
            }
          }

          goto LABEL_238;
        }

LABEL_235:

        goto LABEL_236;
      }
    }

    else
    {
      v0 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v0)
      {
        goto LABEL_220;
      }
    }

    v3 = 0;
    v125 = v5 & 0xC000000000000001;
    v126 = v5 & 0xFFFFFFFFFFFFFF8;
    v127 = v148;
    while (1)
    {
      if (v125)
      {
        v128 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v129 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_219:
          __break(1u);
          goto LABEL_220;
        }
      }

      else
      {
        if (v3 >= *(v126 + 16))
        {
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
          goto LABEL_247;
        }

        v128 = *(v5 + 8 * v3 + 32);

        v129 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_219;
        }
      }

      sub_1000FEC38(v128, v127);
      if (v4)
      {

        goto LABEL_236;
      }

      sub_1000FF128(v128, v127);
      v4 = 0;

      ++v3;
      v5 = v146;
      if (v129 == v0)
      {
        goto LABEL_220;
      }
    }
  }

LABEL_3:
  v3 = 0;
  v7 = v5 & 0xC000000000000001;
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  v9 = v5 + 32;
  if (v5 < 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  v135 = v10;
  v136 = v6;
  v138 = v5 & 0xC000000000000001;
  v139 = v5 & 0xFFFFFFFFFFFFFF8;
  v137 = v5 + 32;
  while (1)
  {
    if (v7)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v12 = __OFADD__(v3++, 1);
      if (v12)
      {
        goto LABEL_241;
      }
    }

    else
    {
      if (v3 >= *(v8 + 16))
      {
        goto LABEL_242;
      }

      v11 = *(v9 + 8 * v3);

      v12 = __OFADD__(v3++, 1);
      if (v12)
      {
        goto LABEL_241;
      }
    }

    v14 = v11[2];
    v13 = v11[3];

    sub_1000FE960(v14, v13);
    if (v4)
    {

LABEL_236:

      return;
    }

    v140 = v3;

    v15 = v149;
    v17 = v11[2];
    v16 = v11[3];

    v18 = sub_10006E374(v17, v16, v15);

    v19 = v148;
    if (v18 & 1) != 0 || (v20 = v11[2], v21 = v11[3], , v22 = sub_10006E374(v20, v21, v19), , (v22))
    {

      v78 = v11[2];
      v77 = v11[3];
      sub_100091C0C(v76, v79, v80);
      swift_allocError();
      *v81 = v78;
      *(v81 + 8) = v77;
      *(v81 + 16) = 0;
      *(v81 + 24) = 0;
      *(v81 + 32) = 1;
      swift_willThrow();

      goto LABEL_238;
    }

    v23 = v11[2];
    v0 = v11[3];

    sub_1000FC7C4(v147, v23, v0);

    v142 = v11;
    v24 = v11[5];
    v25 = v24 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v25)
    {
      break;
    }

LABEL_27:

    v3 = v142;
    v39 = v142[5];
    if (*(v142 + 32) <= 1u)
    {
      if (*(v142 + 32))
      {
        if (v39 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter() <= 0)
          {
            goto LABEL_180;
          }
        }

        else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
        {
          goto LABEL_180;
        }

        v48 = v142[5];
        if (v48 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter() >= 64)
          {
LABEL_185:

            v100 = v142[2];
            v101 = v142[3];
            v102 = v142[5];
            if (v102 >> 62)
            {
              v97 = _CocoaArrayWrapper.endIndex.getter();
              v94 = v97;
            }

            else
            {
              v94 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            sub_100091C0C(v97, v98, v99);
            swift_allocError();
            *v95 = v100;
            *(v95 + 8) = v101;
            v96 = 63;
            goto LABEL_191;
          }
        }

        else if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 64)
        {
          goto LABEL_185;
        }

        v0 = v142[5];
        if (v0 >> 62)
        {
          v49 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v49 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v49)
        {
          v3 = 0;
          do
          {
            if ((v0 & 0xC000000000000001) != 0)
            {
              v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v50 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_203;
              }
            }

            else
            {
              if (v3 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_204;
              }

              v42 = *(v0 + 8 * v3 + 32);

              v50 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_203;
              }
            }

            if (*(v42 + 40) == 1)
            {
              goto LABEL_176;
            }

            ++v3;
          }

          while (v50 != v49);
        }

        goto LABEL_82;
      }

      if (v39 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() <= 0)
        {
          goto LABEL_180;
        }
      }

      else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
      {
        goto LABEL_180;
      }

      v40 = v142[5];
      if (!(v40 >> 62))
      {
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 128)
        {
          goto LABEL_182;
        }

        goto LABEL_33;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 128)
      {
LABEL_33:
        v0 = v142[5];
        if (v0 >> 62)
        {
          v41 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v41 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v41)
        {
          v3 = 0;
          do
          {
            if ((v0 & 0xC000000000000001) != 0)
            {
              v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v43 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_201;
              }
            }

            else
            {
              if (v3 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_202;
              }

              v42 = *(v0 + 8 * v3 + 32);

              v43 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_201;
              }
            }

            if (*(v42 + 40) == 1)
            {
              goto LABEL_176;
            }

            ++v3;
          }

          while (v43 != v41);
        }

LABEL_82:

        goto LABEL_149;
      }

LABEL_182:

      v3 = v142[2];
      v0 = v142[3];
      v93 = v142[5];
      if (!(v93 >> 62))
      {
        v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_184:
        sub_100091C0C(v90, v91, v92);
        swift_allocError();
        *v95 = v3;
        *(v95 + 8) = v0;
        v96 = 127;
LABEL_191:
        *(v95 + 16) = v94;
        *(v95 + 24) = v96;
        *(v95 + 32) = 3;
        swift_willThrow();

        goto LABEL_238;
      }

LABEL_253:
      v90 = _CocoaArrayWrapper.endIndex.getter();
      v94 = v90;
      goto LABEL_184;
    }

    if (*(v142 + 32) == 2)
    {
      if (!(v39 >> 62))
      {
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
        {
          goto LABEL_49;
        }

LABEL_180:

        v84 = v142[2];
        v83 = v142[3];
        sub_100091C0C(v82, v85, v86);
        swift_allocError();
        *v74 = v84;
        *(v74 + 8) = v83;
        *(v74 + 16) = 0;
        *(v74 + 24) = 0;
        v75 = 2;
LABEL_177:
        *(v74 + 32) = v75;
        swift_willThrow();

        goto LABEL_238;
      }

      if (_CocoaArrayWrapper.endIndex.getter() <= 0)
      {
        goto LABEL_180;
      }

LABEL_49:
      v44 = v142[5];
      if (v44 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() < 17)
        {
LABEL_51:
          v0 = v142[5];
          if (v0 >> 62)
          {
            v45 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v45 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v3 = 0;
          v46 = 0;
          while (v45 != v3)
          {
            if ((v0 & 0xC000000000000001) != 0)
            {
              v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              if (__OFADD__(v3, 1))
              {
                goto LABEL_198;
              }
            }

            else
            {
              if (v3 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_199;
              }

              v42 = *(v0 + 8 * v3 + 32);

              if (__OFADD__(v3, 1))
              {
LABEL_198:
                __break(1u);
LABEL_199:
                __break(1u);
LABEL_200:
                __break(1u);
LABEL_201:
                __break(1u);
LABEL_202:
                __break(1u);
LABEL_203:
                __break(1u);
LABEL_204:
                __break(1u);
LABEL_205:
                v6 = _CocoaArrayWrapper.endIndex.getter();
                v5 = v146;
                if (!v6)
                {
                  goto LABEL_206;
                }

                goto LABEL_3;
              }
            }

            if ((*(v42 + 40) & 1) == 0)
            {
LABEL_176:

              v71 = v142[2];
              v70 = v142[3];
              sub_100091C0C(v69, v72, v73);
              swift_allocError();
              *v74 = v71;
              *(v74 + 8) = v70;
              *(v74 + 16) = v42;
              *(v74 + 24) = 0;
              v75 = 10;
              goto LABEL_177;
            }

            v47 = *(v42 + 48);

            ++v3;
            v12 = __OFADD__(v46, v47);
            v46 += v47;
            if (v12)
            {
              goto LABEL_200;
            }
          }

          if (v46 < 101)
          {
            goto LABEL_149;
          }

          v114 = v142[2];
          v113 = v142[3];
          sub_100091C0C(v112, v115, v116);
          swift_allocError();
          *v74 = v114;
          *(v74 + 8) = v113;
          *(v74 + 16) = v46;
          *(v74 + 24) = 100;
          v75 = 4;
          goto LABEL_177;
        }
      }

      else if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < 17)
      {
        goto LABEL_51;
      }

      v106 = v142[2];
      v107 = v142[3];
      v108 = v142[5];
      if (v108 >> 62)
      {
        v103 = _CocoaArrayWrapper.endIndex.getter();
        v94 = v103;
      }

      else
      {
        v94 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_100091C0C(v103, v104, v105);
      swift_allocError();
      *v95 = v106;
      *(v95 + 8) = v107;
      v96 = 16;
      goto LABEL_191;
    }

    if (v39 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_181:

        sub_100091C0C(v87, v88, v89);
        swift_allocError();
        v124 = 1;
        goto LABEL_197;
      }
    }

    else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_181;
    }

    v51 = *(v142 + 64);
    if (*(v142 + 64))
    {
      if (v51 == 7)
      {
        if (v141)
        {
          v52 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v52 = *(v139 + 16);
        }

        if (!v52)
        {
          goto LABEL_194;
        }

        v12 = __OFSUB__(v52, 1);
        v54 = v52 - 1;
        if (v12)
        {
          goto LABEL_243;
        }

        if (v138)
        {
          v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v54 & 0x8000000000000000) != 0)
          {
            goto LABEL_246;
          }

          if (v54 >= *(v139 + 16))
          {
LABEL_247:
            __break(1u);
LABEL_248:
            __break(1u);
LABEL_249:
            __break(1u);
LABEL_250:
            __break(1u);
LABEL_251:
            __break(1u);
LABEL_252:
            __break(1u);
            goto LABEL_253;
          }

          v0 = *(v137 + 8 * v54);
        }

        if (*(v0 + 16) == v142[2] && *(v0 + 24) == v142[3])
        {
        }

        else
        {
          v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v56 & 1) == 0)
          {
            goto LABEL_194;
          }
        }
      }

      else if (v51 == 8)
      {

        sub_100091C0C(v120, v121, v122);
        swift_allocError();
        v124 = 2;
        goto LABEL_197;
      }

      goto LABEL_149;
    }

    if (v141)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
      if (!v53)
      {
        v57 = 0;
LABEL_124:
        v0 = v135;
        if (_CocoaArrayWrapper.endIndex.getter() < 2)
        {
          goto LABEL_148;
        }

        v58 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_126;
      }
    }

    else
    {
      v53 = *(v139 + 16);
      if (!v53)
      {
        goto LABEL_196;
      }
    }

    v12 = __OFSUB__(v53, 1);
    v55 = v53 - 1;
    if (v12)
    {
      goto LABEL_244;
    }

    if (v138)
    {
      v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v55 & 0x8000000000000000) != 0)
      {
        goto LABEL_248;
      }

      if (v55 >= *(v139 + 16))
      {
        goto LABEL_249;
      }

      v0 = *(v137 + 8 * v55);
    }

    if (*(v0 + 16) == v142[2] && *(v0 + 24) == v142[3])
    {

      v57 = 1;
    }

    else
    {
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    if (v141)
    {
      goto LABEL_124;
    }

    v58 = *(v139 + 16);
    if (v58 <= 1)
    {
      goto LABEL_148;
    }

LABEL_126:
    v12 = __OFSUB__(v58, 2);
    v59 = v58 - 2;
    if (v12)
    {
      goto LABEL_245;
    }

    if (v138)
    {
      v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v59 & 0x8000000000000000) != 0)
      {
        goto LABEL_251;
      }

      if (v59 >= *(v139 + 16))
      {
        goto LABEL_252;
      }

      v0 = *(v137 + 8 * v59);
    }

    if (*(v0 + 16) == v142[2] && *(v0 + 24) == v142[3])
    {
    }

    else
    {
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v60 & 1) == 0)
      {
        goto LABEL_148;
      }
    }

    if (v141)
    {
      v61 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v61 = *(v139 + 16);
    }

    v3 = v142;
    if (!v61)
    {
      goto LABEL_148;
    }

    v12 = __OFSUB__(v61, 1);
    v62 = v61 - 1;
    if (v12)
    {
      goto LABEL_250;
    }

    if (v138)
    {
      v0 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 64);
      swift_unknownObjectRelease();
    }

    else
    {
      if ((v62 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_257:
        __break(1u);
        return;
      }

      if (v62 >= *(v139 + 16))
      {
        goto LABEL_257;
      }

      v0 = *(*(v137 + 8 * v62) + 64);
    }

    if (v0 == 8)
    {
LABEL_148:
      if ((v57 & 1) == 0)
      {
        goto LABEL_196;
      }

      goto LABEL_149;
    }

    if ((v57 & 1) == 0 && v0 != 7)
    {
LABEL_196:

      sub_100091C0C(v117, v118, v119);
      swift_allocError();
      v124 = 4;
      goto LABEL_197;
    }

LABEL_149:

    v9 = v137;
    v8 = v139;
    v3 = v140;
    v5 = v146;
    v7 = v138;
    if (v140 == v136)
    {
      goto LABEL_206;
    }
  }

  v0 = 0;
  v144 = v149;
  while ((v24 & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v27 = v0 + 1;
    if (__OFADD__(v0, 1))
    {
      goto LABEL_192;
    }

LABEL_20:
    v29 = *(v26 + 16);
    v28 = *(v26 + 24);

    sub_1000FE960(v29, v28);

    v31 = *(v26 + 16);
    v30 = *(v26 + 24);

    v32 = sub_10006E374(v31, v30, v144);

    if (v32 & 1) != 0 || (v33 = v148, v34 = *(v26 + 16), v35 = *(v26 + 24), , v36 = sub_10006E374(v34, v35, v33), , (v36))
    {

      v65 = *(v26 + 16);
      v64 = *(v26 + 24);
      sub_100091C0C(v63, v66, v67);
      swift_allocError();
      *v68 = v65;
      *(v68 + 8) = v64;
      *(v68 + 16) = 0;
      *(v68 + 24) = 0;
      *(v68 + 32) = 1;
      swift_willThrow();

      goto LABEL_238;
    }

    v37 = *(v26 + 16);
    v38 = *(v26 + 24);

    sub_1000FC7C4(v147, v37, v38);

    ++v0;
    if (v27 == v25)
    {
      goto LABEL_27;
    }
  }

  if (v0 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_193;
  }

  v26 = *(v24 + 8 * v0 + 32);

  v27 = v0 + 1;
  if (!__OFADD__(v0, 1))
  {
    goto LABEL_20;
  }

LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:

  sub_100091C0C(v109, v110, v111);
  swift_allocError();
  v124 = 5;
LABEL_197:
  *v123 = v124;
  *(v123 + 8) = 0;
  *(v123 + 16) = 0;
  *(v123 + 24) = 0;
  *(v123 + 32) = 17;
  swift_willThrow();
LABEL_238:
}

unint64_t sub_1000FB8D8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  switch(*(v0 + 32))
  {
    case 1:
      v50 = 0;
      _StringGuts.grow(_:)(71);
      v31._countAndFlagsBits = 0xD000000000000016;
      v31._object = 0x800000010029D490;
      String.append(_:)(v31);
      v32._countAndFlagsBits = v1;
      v32._object = v2;
      String.append(_:)(v32);
      v33 = " is already used by another question or option.";
      goto LABEL_36;
    case 2:
      v50 = 0;
      _StringGuts.grow(_:)(52);
      v22 = 0x800000010029D450;
      v23 = 0xD000000000000031;
      goto LABEL_33;
    case 3:
      v50 = 0;
      _StringGuts.grow(_:)(83);
      v16 = " allowed (encoding limitation).";
      v17 = 0xD00000000000001ALL;
      goto LABEL_13;
    case 4:
      v50 = 0;
      _StringGuts.grow(_:)(96);
      v16 = "t implemented yet";
      v17 = 0xD000000000000027;
LABEL_13:
      v24 = v16 | 0x8000000000000000;
      String.append(_:)(*&v17);
      v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v25);

      v26._countAndFlagsBits = 0x65757120726F6620;
      v26._object = 0xEE00206E6F697473;
      String.append(_:)(v26);
      v27._countAndFlagsBits = v1;
      v27._object = v2;
      String.append(_:)(v27);
      v28._countAndFlagsBits = 0x2078614D202ELL;
      v28._object = 0xE600000000000000;
      String.append(_:)(v28);
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      v10 = "extLimitBytes defined: ";
      v6 = 0xD00000000000001FLL;
      goto LABEL_39;
    case 5:
      v50 = 0;
      _StringGuts.grow(_:)(71);
      v23 = 0xD000000000000044;
      v22 = 0x800000010029D350;
LABEL_33:
      String.append(_:)(*&v23);
      goto LABEL_34;
    case 6:
      _StringGuts.grow(_:)(27);

      v30 = 0x6E6F697473657551;
      goto LABEL_38;
    case 7:
      _StringGuts.grow(_:)(25);

      v30 = 0x206E6F6974704FLL;
LABEL_38:
      v50 = v30;
      v43._countAndFlagsBits = v1;
      v43._object = v2;
      String.append(_:)(v43);
      v10 = "Options order for question ";
      v6 = 0xD000000000000010;
      goto LABEL_39;
    case 8:
      _StringGuts.grow(_:)(45);

      v50 = 0xD00000000000001BLL;
      v48._countAndFlagsBits = v1;
      v48._object = v2;
      String.append(_:)(v48);
      v49._countAndFlagsBits = 0x61766E6920736920;
      v49._object = 0xED0000203A64696CLL;
      String.append(_:)(v49);
      v39 = v4;
      v40 = v3;
      goto LABEL_42;
    case 9:
      v50 = 0;
      _StringGuts.grow(_:)(53);
      v20._countAndFlagsBits = 0xD000000000000017;
      v20._object = 0x800000010029D250;
      String.append(_:)(v20);
      v21._countAndFlagsBits = v1;
      v21._object = v2;
      String.append(_:)(v21);
      v14 = 0xD00000000000001ALL;
      v15 = 0x800000010029D2F0;
      goto LABEL_9;
    case 0xA:
      v50 = 0;
      _StringGuts.grow(_:)(50);
      v44._countAndFlagsBits = 0x6E6F697473657551;
      v44._object = 0xE900000000000020;
      String.append(_:)(v44);
      v45._countAndFlagsBits = v1;
      v45._object = v2;
      String.append(_:)(v45);
      v46._countAndFlagsBits = 0xD000000000000020;
      v46._object = 0x800000010029D2C0;
      String.append(_:)(v46);
      _print_unlocked<A, B>(_:_:)();
      v47._countAndFlagsBits = 10272;
      v47._object = 0xE200000000000000;
      String.append(_:)(v47);
      String.append(_:)(*(v4 + 16));
      v6 = 41;
      goto LABEL_43;
    case 0xB:
      _StringGuts.grow(_:)(40);

      v50 = 0xD000000000000022;
      v13._countAndFlagsBits = v1;
      v13._object = v2;
      String.append(_:)(v13);
      v14 = 8250;
      v15 = 0xE200000000000000;
LABEL_9:
      String.append(_:)(*&v14);
      v6 = v4;
      v7 = v3;
      goto LABEL_44;
    case 0xC:
      v50 = 0;
      _StringGuts.grow(_:)(55);
      v18._countAndFlagsBits = 0xD000000000000017;
      v18._object = 0x800000010029D250;
      String.append(_:)(v18);
      v19._countAndFlagsBits = v1;
      v19._object = v2;
      String.append(_:)(v19);
      v10 = "Condition for question ";
      v6 = 0xD00000000000001ELL;
      goto LABEL_39;
    case 0xD:
      v50 = 0;
      _StringGuts.grow(_:)(84);
      v41._countAndFlagsBits = 0xD000000000000023;
      v41._object = 0x800000010029D1F0;
      String.append(_:)(v41);
      v42._countAndFlagsBits = v1;
      v42._object = v2;
      String.append(_:)(v42);
      v33 = " refers to builtin question, it is not allowed.";
LABEL_36:
      v10 = (v33 - 32);
      v6 = 0xD00000000000002FLL;
      goto LABEL_39;
    case 0xE:
      v50 = 0;
      _StringGuts.grow(_:)(64);
      v11._countAndFlagsBits = 0xD000000000000014;
      v11._object = 0x800000010029D1A0;
      String.append(_:)(v11);
      v12._countAndFlagsBits = v1;
      v12._object = v2;
      String.append(_:)(v12);
      v10 = "Built-in condition (";
      v6 = 0xD00000000000002ALL;
      goto LABEL_39;
    case 0xF:
      _StringGuts.grow(_:)(37);

      v50 = 0xD000000000000022;
LABEL_34:
      v39 = v1;
      v40 = v2;
LABEL_42:
      String.append(_:)(*&v39);
      v6 = 46;
LABEL_43:
      v7 = 0xE100000000000000;
      goto LABEL_44;
    case 0x10:
      v50 = 0;
      _StringGuts.grow(_:)(54);
      v8._countAndFlagsBits = 0x20656C646E7542;
      v8._object = 0xE700000000000000;
      String.append(_:)(v8);
      v9._countAndFlagsBits = v1;
      v9._object = v2;
      String.append(_:)(v9);
      v10 = "duplicate optionId ";
      v6 = 0xD00000000000002DLL;
LABEL_39:
      v7 = v10 | 0x8000000000000000;
      goto LABEL_44;
    case 0x11:
      result = 0xD000000000000031;
      if (v4 | v2 | v1 | v3)
      {
        v35 = v4 | v2 | v3;
        if (v1 != 1 || v35 != 0)
        {
          if (v1 == 2 && v35 == 0)
          {
            return 0xD000000000000025;
          }

          else if (v1 == 3 && v35 == 0)
          {
            return 0xD000000000000020;
          }

          else if (v1 != 4 || v35)
          {
            return 0xD000000000000038;
          }

          else
          {
            return 0xD000000000000084;
          }
        }
      }

      return result;
    default:
      _StringGuts.grow(_:)(39);

      v50 = 0xD000000000000023;
      v5._countAndFlagsBits = v1;
      v5._object = v2;
      String.append(_:)(v5);
      v6 = 11815;
      v7 = 0xE200000000000000;
LABEL_44:
      String.append(_:)(*&v6);
      return v50;
  }
}

void sub_1000FC17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  type metadata accessor for QuestionCondition();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + 24);
    v13 = *(v10 + 32);

    v14 = sub_10006E374(v12, v13, a3);

    if (v14)
    {
      v19 = *(a1 + 16);
      v18 = *(a1 + 24);
      v21 = *(v11 + 24);
      v20 = *(v11 + 32);
      v22 = v19 == v21 && v18 == v20;
      if (v22 || (v15 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v15 & 1) != 0))
      {
        sub_100091C0C(v15, v16, v17);
        swift_allocError();
        *v23 = v19;
        *(v23 + 8) = v18;
        *(v23 + 16) = 0;
        *(v23 + 24) = 0;
        v24 = 12;
        goto LABEL_30;
      }

      v57 = *(v4 + 104);
      if (*(v57 + 16))
      {

        v85 = sub_100186A08(v21, v20);
        v59 = v58;

        if (v59)
        {
          if (*(*(*(v57 + 56) + 8 * v85) + 32) != 3 || *(a1 + 32) == 3)
          {
            goto LABEL_32;
          }

          sub_100091C0C(v15, v16, v17);
          swift_allocError();
          *v23 = v19;
          *(v23 + 8) = v18;
          *(v23 + 16) = 0;
          *(v23 + 24) = 0;
          v24 = 13;
          goto LABEL_30;
        }
      }
    }

    v61 = *(v11 + 24);
    v60 = *(v11 + 32);
    sub_100091C0C(v15, v16, v17);
    swift_allocError();
    *v23 = v61;
    *(v23 + 8) = v60;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    v24 = 6;
    goto LABEL_30;
  }

  type metadata accessor for OptionCondition();
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = v25;
    v27 = *(v25 + 16);
    v28 = *(v25 + 24);

    v29 = sub_10006E374(v27, v28, a4);

    if ((v29 & 1) == 0)
    {
      v51 = *(a1 + 16);
      v50 = *(a1 + 24);
      v53 = *(v26 + 16);
      v52 = *(v26 + 24);
      sub_100091C0C(v30, v31, v32);
      swift_allocError();
      *v54 = v51;
      *(v54 + 8) = v50;
      *(v54 + 16) = v53;
      *(v54 + 24) = v52;
      *(v54 + 32) = 9;
      swift_willThrow();

LABEL_31:

LABEL_32:

      return;
    }

    v33 = *(v4 + 112);
    if (*(v33 + 16) && (v34 = *(v26 + 16), v35 = *(v26 + 24), , v36 = sub_100186A08(v34, v35), v38 = v37, v30 = , (v38 & 1) != 0))
    {
      v39 = *(*(v33 + 56) + 8 * v36);
      v40 = *(v39 + 16);
      v41 = *(v39 + 24);
      v43 = *(a1 + 16);
      v42 = *(a1 + 24);
      v44 = v40 == v43 && v41 == v42;
      if (v44 || (v40 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v40 & 1) != 0))
      {
        sub_100091C0C(v40, v41, v32);
        swift_allocError();
        *v23 = v43;
        *(v23 + 8) = v42;
        *(v23 + 16) = 0;
        *(v23 + 24) = 0;
        v24 = 12;
      }

      else
      {
        if (*(v39 + 32) != 3)
        {
          goto LABEL_32;
        }

        sub_100091C0C(v40, v41, v32);
        swift_allocError();
        *v23 = v43;
        *(v23 + 8) = v42;
        *(v23 + 16) = 0;
        *(v23 + 24) = 0;
        v24 = 13;
      }
    }

    else
    {
      v56 = *(v26 + 16);
      v55 = *(v26 + 24);
      sub_100091C0C(v30, v31, v32);
      swift_allocError();
      *v23 = v56;
      *(v23 + 8) = v55;
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      v24 = 7;
    }

LABEL_30:
    *(v23 + 32) = v24;
    swift_willThrow();
    goto LABEL_31;
  }

  type metadata accessor for BuiltInCondition();
  if (swift_dynamicCastClass())
  {
    if (*(a1 + 32) != 3)
    {
      v45 = sub_10017FEE4();
      v47 = v46;
      sub_100091C0C(v45, v46, v48);
      swift_allocError();
      *v49 = v45;
      *(v49 + 8) = v47;
      *(v49 + 16) = 0;
      *(v49 + 24) = 0;
      *(v49 + 32) = 14;
      swift_willThrow();
    }

    return;
  }

  type metadata accessor for LogicalCondition();
  v62 = swift_dynamicCastClass();
  if (!v62)
  {
LABEL_52:
    type metadata accessor for NoPrerequisites();
    if (swift_dynamicCastClass())
    {
      return;
    }

    v77 = *(a1 + 16);
    v76 = *(a1 + 24);
    sub_100091C0C(0, v74, v75);
    swift_allocError();
    *v78 = v77;
    *(v78 + 8) = v76;
    *(v78 + 16) = 0;
    *(v78 + 24) = 0;
    v79 = 15;
LABEL_63:
    *(v78 + 32) = v79;
    swift_willThrow();

    return;
  }

  v63 = v62;
  type metadata accessor for NotCondition();
  v64 = swift_dynamicCastClass();
  if (!v64)
  {
    goto LABEL_38;
  }

  v67 = *(v64 + 24);
  if (!(v67 >> 62))
  {
    v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v68 == 1)
    {
      goto LABEL_38;
    }

    goto LABEL_62;
  }

  v68 = _CocoaArrayWrapper.endIndex.getter();
  if (v68 != 1)
  {
LABEL_62:
    v81 = *(a1 + 16);
    v80 = *(a1 + 24);
    sub_100091C0C(v68, v65, v66);
    swift_allocError();
    *v78 = v81;
    *(v78 + 8) = v80;
    *(v78 + 16) = 0;
    *(v78 + 24) = 0;
    v79 = 5;
    goto LABEL_63;
  }

LABEL_38:
  v69 = *(v63 + 24);
  if (v69 >> 62)
  {
    goto LABEL_60;
  }

  v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_40:

  if (v70)
  {
    v82 = a1;
    v83 = v69;
    v71 = 0;
    v86 = v69 & 0xC000000000000001;
    v84 = v69 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v86)
      {
        a1 = v70;
        v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v73 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }
      }

      else
      {
        if (v71 >= *(v84 + 16))
        {
          __break(1u);
LABEL_60:
          v70 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_40;
        }

        a1 = v70;
        v72 = *(v69 + 8 * v71 + 32);

        v73 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          goto LABEL_51;
        }
      }

      sub_1000FC17C(v82, v72, a3, a4);
      if (v6)
      {

        goto LABEL_58;
      }

      ++v71;
      v70 = a1;
      v22 = v73 == a1;
      v69 = v83;
    }

    while (!v22);
  }

LABEL_58:
}

uint64_t sub_1000FC7C4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

    sub_1000FD7B8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000FC930(void *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for Option();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (!__OFADD__(result, 1))
    {
      v18 = sub_1000FCCAC(v7, result + 1);
      v19 = *(v18 + 16);
      if (*(v18 + 24) <= v19)
      {
        sub_1000FD10C(v19 + 1);
      }

      sub_1000FD5A4(v20, v18);

      *v3 = v18;
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v2;

      sub_1000FD938(v17, v12, isUniquelyReferenced_nonNull_native);
      *v2 = v22;
LABEL_20:
      *a1 = a2;
      return 1;
    }

    v13 = ~v11;
    while (1)
    {
      v14 = *(*(v6 + 48) + 8 * v12);
      v15 = *(v14 + 16) == *(a2 + 16) && *(v14 + 24) == *(a2 + 24);
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v12);

    return 0;
  }

  return result;
}

uint64_t sub_1000FCB8C(_BYTE *a1, Swift::Int a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_1000FD648(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int sub_1000FCCAC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000040A8(&qword_10035E678, &qword_100284990);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for Option();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1000FD10C(v9 + 1);
        }

        v2 = v15;
        Hasher.init(_seed:)();
        String.hash(into:)();
        result = Hasher._finalize()();
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

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1000FCEAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000040A8(&qword_10035E650, &qword_100284960);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

Swift::Int sub_1000FD10C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000040A8(&qword_10035E678, &qword_100284990);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1000FD35C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000040A8(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_1000FD5A4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_1000FD648(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000FD35C(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = sub_1000FDD70(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_1000FE30C(v8 + 1, a4, a5);
  }

  v11 = *v6;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v7);
  result = Hasher._finalize()();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000FD7B8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000FCEAC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000FDAB0();
      goto LABEL_16;
    }

    sub_1000FDEA0(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000FD938(Swift::Int result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1000FD10C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1000FDC0C();
      goto LABEL_16;
    }

    sub_1000FE0D8(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for Option();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = *(v12 + 16) == *(result + 16) && *(v12 + 24) == *(result + 24);
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = result;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_1000FDAB0()
{
  v1 = v0;
  sub_1000040A8(&qword_10035E650, &qword_100284960);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

  return result;
}

void sub_1000FDC0C()
{
  v1 = v0;
  sub_1000040A8(&qword_10035E678, &qword_100284990);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_1000FDD70(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000040A8(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

Swift::Int sub_1000FDEA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000040A8(&qword_10035E650, &qword_100284960);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
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

Swift::Int sub_1000FE0D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000040A8(&qword_10035E678, &qword_100284990);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
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

        v2 = v1;
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

Swift::Int sub_1000FE30C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000040A8(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_1000FE524(uint64_t *a1, void *a2)
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

void sub_1000FE57C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for Option();
      swift_dynamicCast();
      return;
    }

    goto LABEL_26;
  }

  if (a3)
  {
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    type metadata accessor for Option();
    swift_dynamicCast();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v6 = Hasher._finalize()();
    v7 = -1 << *(a4 + 32);
    a1 = v6 & ~v7;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v8 = ~v7;
      do
      {
        v9 = *(*(a4 + 48) + 8 * a1);
        v10 = *(v9 + 16) == *(v11 + 16) && *(v9 + 24) == *(v11 + 24);
        if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_20;
        }

        a1 = (a1 + 1) & v8;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_20:
  }
}

uint64_t sub_1000FE760(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1000FE7B4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
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

uint64_t sub_1000FE808(uint64_t a1, uint64_t a2)
{
  if (a1 != 65 || a2 != 0xE100000000000000)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_6;
    }

    if (a1 == 90 && a2 == 0xE100000000000000)
    {
      return 1;
    }
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 1;
  }

LABEL_6:
  if (a1 == 97 && a2 == 0xE100000000000000)
  {
LABEL_8:
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = a1 == 95 && a2 == 0xE100000000000000;
    if ((v4 & 1) == 0 || v6)
    {
      return 1;
    }

    goto LABEL_16;
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (a1 == 122 && a2 == 0xE100000000000000)
    {
      return 1;
    }

    goto LABEL_8;
  }

  if (a1 == 95 && a2 == 0xE100000000000000)
  {
    return 1;
  }

LABEL_16:

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1000FE960(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000FA564(a1, a2);
  if (!v5 || (v7 = sub_1000FE808(v4, v5), v4 = , (v7 & 1) == 0))
  {
    sub_100091C0C(v4, v5, v6);
    swift_allocError();
    *v18 = a1;
    *(v18 + 8) = a2;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    swift_willThrow();

    return;
  }

  v8 = String.Iterator.next()();
  if (!v8.value._object)
  {
    goto LABEL_41;
  }

  countAndFlagsBits = v8.value._countAndFlagsBits;
  object = v8.value._object;
  while (1)
  {
    if (countAndFlagsBits != 65 || object != 0xE100000000000000)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_10;
      }

      if (countAndFlagsBits == 90 && object == 0xE100000000000000)
      {
        goto LABEL_31;
      }
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_10:
    if (countAndFlagsBits == 97 && object == 0xE100000000000000)
    {
      goto LABEL_12;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (countAndFlagsBits == 122 && object == 0xE100000000000000)
      {
        goto LABEL_31;
      }

LABEL_12:
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12 = object == 0xE100000000000000 && countAndFlagsBits == 95;
      if (v12 || (v11 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_17;
    }

    if (countAndFlagsBits == 95 && object == 0xE100000000000000)
    {
      goto LABEL_31;
    }

LABEL_17:
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_31;
    }

    if (countAndFlagsBits != 48 || object != 0xE100000000000000)
    {
      break;
    }

LABEL_20:
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_35;
    }

LABEL_31:

LABEL_32:
    v13 = String.Iterator.next()();
    countAndFlagsBits = v13.value._countAndFlagsBits;
    object = v13.value._object;
    if (!v13.value._object)
    {
      goto LABEL_41;
    }
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (countAndFlagsBits == 57 && object == 0xE100000000000000)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

LABEL_35:
  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_32;
  }

  sub_100091C0C(v15, v16, v17);
  swift_allocError();
  *v19 = a1;
  *(v19 + 8) = a2;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  swift_willThrow();

LABEL_41:
}

void sub_1000FEC38(void *a1, uint64_t a2)
{
  v2 = a1[14];
  if (v2)
  {
    v4 = &_swiftEmptySetSingleton;
    v67 = &_swiftEmptySetSingleton;
    v5 = *(v2 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = (v2 + 40);
      while (v6 < *(v2 + 16))
      {
        v9 = *(v7 - 1);
        v8 = *v7;
        v10 = v9 == 45 && v8 == 0xE100000000000000;
        if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {

          if (!sub_10008C2EC(v9, v8))
          {

            v33 = sub_10006E374(v9, v8, a2);
            v35 = a1[2];
            v34 = a1[3];
            v65 = 0;
            v66 = 0xE000000000000000;
            if (v33)
            {

              _StringGuts.grow(_:)(43);

              v65 = 0x64496E6F6974706FLL;
              v66 = 0xE900000000000020;
              v36._countAndFlagsBits = v9;
              v36._object = v8;
              String.append(_:)(v36);

              v37._countAndFlagsBits = 0xD000000000000020;
              v37._object = 0x800000010029CE10;
              String.append(_:)(v37);
            }

            else
            {

              _StringGuts.grow(_:)(19);

              v65 = 0xD000000000000011;
              v66 = 0x800000010029CDF0;
              v50._countAndFlagsBits = v9;
              v50._object = v8;
              String.append(_:)(v50);
            }

            v51 = v65;
            v52 = v66;
            sub_100091C0C(v38, v39, v40);
            swift_allocError();
            *v49 = v35;
            *(v49 + 8) = v34;
            *(v49 + 16) = v51;
            *(v49 + 24) = v52;
            goto LABEL_37;
          }

          if (sub_10006E374(v9, v8, v67))
          {

            v41 = a1[2];
            v42 = a1[3];
            v65 = 0;
            v66 = 0xE000000000000000;

            _StringGuts.grow(_:)(21);

            v65 = 0xD000000000000013;
            v66 = 0x800000010029CFB0;
            v43._countAndFlagsBits = v9;
            v43._object = v8;
            String.append(_:)(v43);

            v45 = v65;
            v46 = v66;
            sub_100091C0C(v44, v47, v48);
            swift_allocError();
            *v49 = v41;
            *(v49 + 8) = v42;
            *(v49 + 16) = v45;
            *(v49 + 24) = v46;
LABEL_37:
            *(v49 + 32) = 8;
            goto LABEL_38;
          }

          sub_1000FC7C4(&v65, v9, v8);
        }

        ++v6;
        v7 += 2;
        if (v5 == v6)
        {
          v4 = v67;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
    }

    else
    {
LABEL_15:
      if (v4[2])
      {
        v11 = 0;
        v12 = 0;
        v13 = v2 + 40;
        v14 = 1;
        while (2)
        {
          v64 = v11;
          v15 = (v13 + 16 * v12);
          do
          {
            if (v5 == v12)
            {

              return;
            }

            v11 = v12;
            v16 = *(v2 + 16);
            if (v12 >= v16)
            {
              goto LABEL_43;
            }

            if (*(v15 - 1) == 45 && *v15 == 0xE100000000000000)
            {
              break;
            }

            v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v15 += 2;
            v12 = v11 + 1;
          }

          while ((v18 & 1) == 0);
          if (v11)
          {
            if (v11 == v16 - 1)
            {

              v59 = a1[2];
              v60 = a1[3];
              v23 = 0x800000010029CF40;
              sub_100091C0C(v58, v61, v62);
              swift_allocError();
              *v26 = v59;
              *(v26 + 8) = v60;
              v27 = 0xD000000000000018;
            }

            else
            {
              v12 = v11 + 1;
              v19 = v14 | (v64 + 1 != v11);
              v14 = 0;
              v13 = v2 + 40;
              if (v19)
              {
                continue;
              }

              v21 = a1[2];
              v22 = a1[3];
              v23 = 0x800000010029CF10;
              sub_100091C0C(v20, v24, v25);
              swift_allocError();
              *v26 = v21;
              *(v26 + 8) = v22;
              v27 = 0xD000000000000025;
            }
          }

          else
          {

            v54 = a1[2];
            v55 = a1[3];
            v23 = 0x800000010029CF60;
            sub_100091C0C(v53, v56, v57);
            swift_allocError();
            *v26 = v54;
            *(v26 + 8) = v55;
            v27 = 0xD000000000000019;
          }

          break;
        }
      }

      else
      {

        v29 = a1[2];
        v30 = a1[3];
        v23 = 0x800000010029CF80;
        sub_100091C0C(v28, v31, v32);
        swift_allocError();
        *v26 = v29;
        *(v26 + 8) = v30;
        v27 = 0xD000000000000024;
      }

      *(v26 + 16) = v27;
      *(v26 + 24) = v23;
      *(v26 + 32) = 8;

LABEL_38:
      swift_willThrow();
    }
  }
}

uint64_t sub_1000FF128(uint64_t result, uint64_t a2)
{
  v2 = *(result + 128);
  if (v2)
  {
    v3 = result;
    v4 = *(result + 120);
    if (*(result + 32))
    {
      v6 = *(result + 16);
      v5 = *(result + 24);
      v41 = 0;
      v42 = 0xE000000000000000;

      _StringGuts.grow(_:)(77);
      v7._countAndFlagsBits = 0x206E6F6974704FLL;
      v7._object = 0xE700000000000000;
      String.append(_:)(v7);
      v8._countAndFlagsBits = v4;
      v8._object = v2;
      String.append(_:)(v8);
      v9 = "usedBitsInLastByte";
      v10 = 0xD000000000000044;
      goto LABEL_4;
    }

    if (!*(*(result + 56) + 16))
    {
      v6 = *(result + 16);
      v5 = *(result + 24);
      v41 = 0;
      v42 = 0xE000000000000000;

      _StringGuts.grow(_:)(74);
      v26._countAndFlagsBits = 0x206E6F6974704FLL;
      v26._object = 0xE700000000000000;
      String.append(_:)(v26);
      v27._countAndFlagsBits = v4;
      v27._object = v2;
      String.append(_:)(v27);
      v9 = "mentioned in optionsOrder";
      v10 = 0xD000000000000041;
      goto LABEL_4;
    }

    v19 = sub_10008C2EC(*(result + 120), v2);
    if (!v19)
    {
      v28 = sub_10006E374(v4, v2, a2);
      v6 = v3[2];
      v5 = v3[3];
      if ((v28 & 1) == 0)
      {

        _StringGuts.grow(_:)(19);

        v41 = 0xD000000000000011;
        v42 = 0x800000010029CDF0;
        v10 = v4;
        v11 = v2;
        goto LABEL_5;
      }

      _StringGuts.grow(_:)(43);

      v41 = 0x64496E6F6974706FLL;
      v42 = 0xE900000000000020;
      v29._countAndFlagsBits = v4;
      v29._object = v2;
      String.append(_:)(v29);
      v9 = "invalid optionId ";
      v10 = 0xD000000000000020;
LABEL_4:
      v11 = v9 | 0x8000000000000000;
LABEL_5:
      String.append(_:)(*&v10);
      v12 = v41;
      v13 = v42;
      sub_100091C0C(v14, v15, v16);
      swift_allocError();
      *v17 = v6;
      *(v17 + 8) = v5;
      *(v17 + 16) = v12;
      *(v17 + 24) = v13;
      *(v17 + 32) = 11;
      return swift_willThrow();
    }

    if (*(v19 + 40))
    {
      v21 = v3[2];
      v20 = v3[3];
      v41 = 0;
      v42 = 0xE000000000000000;

      _StringGuts.grow(_:)(72);
      v22._countAndFlagsBits = 0x206E6F6974704FLL;
      v22._object = 0xE700000000000000;
      String.append(_:)(v22);
      v23._countAndFlagsBits = v4;
      v23._object = v2;
      String.append(_:)(v23);
      v24 = "fferent question";
      v25 = 46;
    }

    else
    {
      if (!v3[14])
      {
      }

      v41 = v4;
      v42 = v2;
      __chkstk_darwin(v19);
      v40[2] = &v41;
      if (sub_1000FA628(sub_1000FF50C, v40, v30))
      {
      }

      v21 = v3[2];
      v20 = v3[3];
      v41 = 0;
      v42 = 0xE000000000000000;

      _StringGuts.grow(_:)(66);
      v31._countAndFlagsBits = 0x206E6F6974704FLL;
      v31._object = 0xE700000000000000;
      String.append(_:)(v31);
      v32._countAndFlagsBits = v4;
      v32._object = v2;
      String.append(_:)(v32);
      v24 = "rted for Selection options only";
      v25 = 40;
    }

    v33._countAndFlagsBits = v25 | 0xD000000000000011;
    v33._object = (v24 | 0x8000000000000000);
    String.append(_:)(v33);
    v34 = v41;
    v35 = v42;
    sub_100091C0C(v36, v37, v38);
    swift_allocError();
    *v39 = v21;
    *(v39 + 8) = v20;
    *(v39 + 16) = v34;
    *(v39 + 24) = v35;
    *(v39 + 32) = 11;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1000FF50C(uint64_t *a1)
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

uint64_t sub_1000FF564(uint64_t a1)
{
  if ((*(a1 + 32) & 0x1Fu) <= 0x10)
  {
    return *(a1 + 32) & 0x1F;
  }

  else
  {
    return (*a1 + 17);
  }
}

uint64_t sub_1000FF580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEF && *(a1 + 33))
  {
    return (*a1 + 239);
  }

  v3 = *(a1 + 32);
  if (v3 <= 0x11)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000FF5C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 239;
    *(result + 8) = 0;
    if (a3 >= 0xEF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000FF610(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x11)
  {
    *result = a2 - 17;
    *(result + 8) = 0;
    LOBYTE(a2) = 17;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void sub_1000FF668(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for MetalView();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v4 = [v2 layer];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = [v3 traitCollection];
    [v8 displayScale];
    v10 = v9;

    [v6 setContentsScale:v10];
    [v6 bounds];
    Width = CGRectGetWidth(v18);
    [v6 contentsScale];
    v13 = Width * v12;
    [v6 bounds];
    Height = CGRectGetHeight(v19);
    [v6 contentsScale];
    v16 = v15;

    [v6 setDrawableSize:{v13, Height * v16}];
  }
}

id sub_1000FF9D0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MetalView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1000FFA28()
{
  result = qword_10035E6A8[0];
  if (!qword_10035E6A8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_10035E6A8);
  }

  return result;
}

uint64_t sub_1000FFA74(uint64_t result, uint64_t a2, float32x2_t a3, float32x2_t a4, float32x2_t a5)
{
  v5 = vdiv_f32(a3, a5);
  v6 = vdiv_f32(a4, a5);
  v7 = a2;
  v8 = (1.0 - (vmuls_lane_f32(0.5, v6, 1) + 0.5)) * a2;
  v9 = ((0.5 * v6.f32[0]) + 0.5) * result;
  v10 = (1.0 - (vmuls_lane_f32(0.5, v5, 1) + 0.5)) * a2;
  v11 = floorf(((0.5 * v5.f32[0]) + 0.5) * result);
  if (v11 <= result)
  {
    v12 = v11;
  }

  else
  {
    v12 = result;
  }

  if (v12 < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v12;
  }

  v14 = floorf(v8);
  if (v14 <= v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = a2;
  }

  if (v15 < 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v15;
  }

  v17 = ceilf(v9) - v13;
  if ((result - v13) < v17)
  {
    v17 = result - v13;
  }

  if (v17 < 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v17;
  }

  v19 = ceilf(v10) - v16;
  v20 = v7 - v16;
  if (v20 < v19)
  {
    v19 = v20;
  }

  if (v19 < 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v19;
  }

  v23 = (LODWORD(v12) & 0x7FFFFFFFu) > 0x7F7FFFFF && v12 >= 0.0;
  if (v13 <= -9.2234e18)
  {
    __break(1u);
    goto LABEL_59;
  }

  if (v13 >= 9.2234e18)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v25 = (LODWORD(v15) & 0x7FFFFFFFu) > 0x7F7FFFFF && v15 >= 0.0;
  if (v16 <= -9.2234e18)
  {
    goto LABEL_60;
  }

  if (v16 >= 9.2234e18)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v27 = (LODWORD(v17) & 0x7FFFFFFFu) > 0x7F7FFFFF && v17 >= 0.0;
  if (v18 <= -9.2234e18)
  {
    goto LABEL_62;
  }

  if (v18 >= 9.2234e18)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v29 = (LODWORD(v19) & 0x7FFFFFFFu) > 0x7F7FFFFF && v19 >= 0.0;
  if (v23 || v25 || v27 || v29)
  {
    goto LABEL_64;
  }

  if (v21 <= -9.2234e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v21 < 9.2234e18)
  {
    return v13;
  }

LABEL_66:
  __break(1u);
  return result;
}

void sub_1000FFC5C(uint64_t a1)
{
  sub_1000FFE90();
  if (v3 <= 0x3F)
  {
    type metadata accessor for NavigationCancellationItem(319, *(a1 + 16), *(a1 + 24), v2);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000FFCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2147483646)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    v6 = v5 - 1;
    if (v6 < 0)
    {
      v6 = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = type metadata accessor for NavigationCancellationItem(0, *(a3 + 16), *(a3 + 24), a4);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000FFDD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for NavigationCancellationItem(0, *(a4 + 16), *(a4 + 24), a4);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000FFE90()
{
  if (!qword_100359EE8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100359EE8);
    }
  }
}

uint64_t sub_1000FFF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000040A8(&qword_10035E740, &qword_100284CC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  static ToolbarItemPlacement.principal.getter();
  v11 = a1;
  v12 = a2;
  ToolbarItem<>.init(placement:content:)();
  sub_100009274(&qword_10035E748, &qword_10035E740, &qword_100284CC0, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001000DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a1;
  v21 = a2;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000040A8(&qword_10035E758, &qword_100284D60);
  v7 = *(v20 - 8);
  v8 = __chkstk_darwin(v20);
  v10 = v19 - v9;
  v12 = *v2;
  v11 = v2[1];
  (*(v4 + 104))(v6, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v3, v8);
  v13 = sub_1000040A8(&qword_10035E760, &qword_100284D68);
  v14 = sub_100009274(qword_10035E768, &qword_10035E760, &qword_100284D68, &protocol conformance descriptor for _ViewModifier_Content<A>);
  View.navigationBarTitleDisplayMode(_:)();
  (*(v4 + 8))(v6, v3);
  v22 = v12;
  v23 = v11;
  sub_1000040A8(&qword_10035E738, &qword_100284CB8);
  v24 = v13;
  v25 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = sub_100008CF0(&qword_10035E740, &qword_100284CC0);
  v16 = sub_100009274(&qword_10035E748, &qword_10035E740, &qword_100284CC0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v24 = v15;
  v25 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v20;
  View.toolbar<A>(content:)();
  return (*(v7 + 8))(v10, v17);
}

uint64_t sub_1001003C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a1;
  v63 = a3;
  v61 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v6 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  v67 = v6;
  v68 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v56 = &v48 - v9;
  sub_100008CF0(&qword_10035E730, &unk_100284CA8);
  v10 = *(a2 + 16);
  v65 = *(a2 + 24);
  v66 = v10;
  v11 = type metadata accessor for ToolbarItem();
  v12 = swift_getWitnessTable();
  v67 = v11;
  v68 = v12;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v13 = type metadata accessor for TupleToolbarContent();
  v54 = WitnessTable;
  v55 = v6;
  v67 = v6;
  v68 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = swift_getWitnessTable();
  v58 = OpaqueTypeMetadata2;
  v67 = OpaqueTypeMetadata2;
  v68 = v13;
  v50 = OpaqueTypeConformance2;
  v69 = OpaqueTypeConformance2;
  v70 = v15;
  v16 = v15;
  v51 = swift_getOpaqueTypeMetadata2();
  v53 = *(v51 - 8);
  __chkstk_darwin(v51);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v52 = &v48 - v20;
  v21 = sub_1000040A8(qword_100356970, &unk_100279F20);
  __chkstk_darwin(v21 - 8);
  v23 = &v48 - v22;
  v24 = type metadata accessor for ToolbarItemPlacement();
  v64 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v29 = *(a2 + 36);
  v62 = v3;
  v30 = (v3 + v29);
  if (*v30 == 1)
  {
    v28 = static Color.red.getter();
  }

  v31 = type metadata accessor for NavigationCancellationItem(0, v66, v65, v25);
  sub_100101558(&v30[*(v31 + 36)], v23);
  v32 = v64;
  v33 = *(v64 + 48);
  v34 = v33(v23, 1, v24);
  v48 = v24;
  if (v34 == 1)
  {
    static ToolbarItemPlacement.navigationBarTrailing.getter();
    if (v33(v23, 1, v24) != 1)
    {
      sub_1001015C8(v23);
    }
  }

  else
  {
    (*(v32 + 32))(v27, v23, v24);
  }

  v35 = v59;
  v36 = v49;
  v37 = v61;
  (*(v59 + 104))(v49, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v61);
  swift_checkMetadataState();
  v38 = v56;
  View.navigationBarTitleDisplayMode(_:)();
  v39 = (*(v35 + 8))(v36, v37);
  __chkstk_darwin(v39);
  v40 = v65;
  *(&v48 - 6) = v66;
  *(&v48 - 5) = v40;
  *(&v48 - 4) = v62;
  *(&v48 - 3) = v27;
  *(&v48 - 2) = v28;
  v41 = swift_checkMetadataState();
  v42 = v58;
  v43 = v50;
  View.toolbar<A>(content:)();

  (*(v57 + 8))(v38, v42);
  v67 = v42;
  v68 = v41;
  v69 = v43;
  v70 = v16;
  swift_getOpaqueTypeConformance2();
  v45 = v51;
  v44 = v52;
  sub_10009A58C();
  v46 = *(v53 + 8);
  v46(v18, v45);
  sub_10009A58C();
  v46(v44, v45);
  return (*(v64 + 8))(v27, v48);
}

uint64_t sub_100100A88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a3;
  v62 = a2;
  v59 = a6;
  v67 = a4;
  v65 = a5;
  v7 = type metadata accessor for ToolbarItem();
  v55 = *(v7 - 8);
  __chkstk_darwin(v7);
  v54 = &v49 - v8;
  WitnessTable = swift_getWitnessTable();
  v70 = v7;
  v71 = WitnessTable;
  v63 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v61 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v64 = &v49 - v13;
  v14 = sub_1000040A8(&qword_10035E738, &qword_100284CB8);
  v56 = *(v14 - 8);
  __chkstk_darwin(v14);
  v53 = &v49 - v15;
  v16 = type metadata accessor for ToolbarItemPlacement();
  v57 = *(v16 - 8);
  __chkstk_darwin(v16);
  v68 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000040A8(&qword_10035E740, &qword_100284CC0);
  v52 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v49 - v19;
  v60 = sub_1000040A8(&qword_10035E730, &unk_100284CA8);
  __chkstk_darwin(v60);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v69 = &v49 - v25;
  v26 = a1;
  v27 = a1[1];
  if (v27)
  {
    v28 = v26;
    v50 = v18;
    v29 = *v26;
    v51 = v16;
    v30 = v14;
    v31 = static ToolbarItemPlacement.principal.getter();
    __chkstk_darwin(v31);
    *(&v49 - 2) = v29;
    *(&v49 - 1) = v27;
    v26 = v28;
    v32 = v20;
    ToolbarItem<>.init(placement:content:)();
    v33 = sub_100009274(&qword_10035E748, &qword_10035E740, &qword_100284CC0, &protocol conformance descriptor for ToolbarItem<A, B>);
    v34 = v53;
    v35 = v50;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v36 = v56;
    (*(v56 + 16))(v22, v34, v30);
    (*(v36 + 56))(v22, 0, 1, v30);
    v70 = v35;
    v71 = v33;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100101640(v22);
    v37 = v30;
    v16 = v51;
    (*(v36 + 8))(v34, v37);
    (*(v52 + 8))(v32, v35);
  }

  else
  {
    (*(v56 + 56))(v22, 1, 1, v14, v24);
    v38 = sub_100009274(&qword_10035E748, &qword_10035E740, &qword_100284CC0, &protocol conformance descriptor for ToolbarItem<A, B>);
    v70 = v18;
    v71 = v38;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100101640(v22);
  }

  v39 = (*(v57 + 16))(v68, v62, v16);
  __chkstk_darwin(v39);
  v40 = v65;
  *(&v49 - 4) = v67;
  *(&v49 - 3) = v40;
  *(&v49 - 2) = v26;
  v41 = v54;
  ToolbarItem<>.init(placement:content:)();
  v42 = v61;
  v43 = v63;
  ToolbarContent.containerTint(_:)();
  (*(v55 + 8))(v41, v7);
  v70 = v7;
  v71 = v43;
  swift_getOpaqueTypeConformance2();
  v44 = v64;
  v45 = OpaqueTypeMetadata2;
  (*(v10 + 16))(v64, v42, OpaqueTypeMetadata2);
  v46 = *(v10 + 8);
  v46(v42, v45);
  sub_1001016B4();
  v47 = v69;
  sub_100101434(v69, v44, v60, v45);
  v46(v44, v45);
  return sub_100101640(v47);
}

void sub_1001011F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100031770(a1, a2, a3);

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.headline.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_1000317C4(v5, v7, v9 & 1);

  *a4 = v10;
  *(a4 + 8) = v12;
  *(a4 + 16) = v14 & 1;
  *(a4 + 24) = v16;
}

uint64_t sub_1001012D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v15 = a1 + *(type metadata accessor for NavigationTitleToolbarViewModifier(0, v12, v13, v14) + 36);
  v17 = type metadata accessor for NavigationCancellationItem(0, a2, a3, v16);
  (*(v15 + *(v17 + 40)))();
  sub_10009A58C();
  v18 = *(v6 + 8);
  v18(v8, a2);
  sub_10009A58C();
  return (v18)(v11, a2);
}

uint64_t sub_100101434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = __chkstk_darwin(TupleTypeMetadata2);
  v11 = &v15 - v10;
  v13 = *(v12 + 48);
  (*(*(a3 - 8) + 16))(&v15 - v10, a1, a3, v9);
  (*(*(a4 - 8) + 16))(&v11[v13], a2, a4);
  return TupleToolbarContent.init(_:)();
}

uint64_t sub_100101558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(qword_100356970, &unk_100279F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001015C8(uint64_t a1)
{
  v2 = sub_1000040A8(qword_100356970, &unk_100279F20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100101640(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_10035E730, &unk_100284CA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001016B4()
{
  result = qword_10035E750;
  if (!qword_10035E750)
  {
    sub_100008CF0(&qword_10035E730, &unk_100284CA8);
    sub_100008CF0(&qword_10035E740, &qword_100284CC0);
    sub_100009274(&qword_10035E748, &qword_10035E740, &qword_100284CC0, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E750);
  }

  return result;
}

uint64_t sub_1001017B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NavigationTitleToolbarViewModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_100008CF0(&qword_10035E730, &unk_100284CA8);
  type metadata accessor for ToolbarItem();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleToolbarContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001019CC()
{
  sub_100008CF0(&qword_10035E758, &qword_100284D60);
  sub_100008CF0(&qword_10035E738, &qword_100284CB8);
  sub_100008CF0(&qword_10035E760, &qword_100284D68);
  sub_100009274(qword_10035E768, &qword_10035E760, &qword_100284D68, &protocol conformance descriptor for _ViewModifier_Content<A>);
  swift_getOpaqueTypeConformance2();
  sub_100008CF0(&qword_10035E740, &qword_100284CC0);
  sub_100009274(&qword_10035E748, &qword_10035E740, &qword_100284CC0, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100101B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100101B80(uint64_t a1, __int128 *a2)
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
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_100101BBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100101C04(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100101CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_100008CF0(&qword_10035B050, &unk_10027FA60);
  v26 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  v23 = &protocol conformance descriptor for VStack<A>;
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  sub_100008CF0(&qword_10035B058, &unk_100284E90);
  v3 = *(a1 + 32);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035B060, &unk_10027FA70);
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  *&v4 = vdupq_laneq_s64(v26, 1).u64[0];
  *(&v4 + 1) = v3;
  v22 = *(a1 + 48);
  v36[0] = v4;
  v36[1] = v22;
  type metadata accessor for ScrollableContentWithFloatingPanelView(255, v36);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  WitnessTable = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v21[1] = swift_getWitnessTable();
  v5 = type metadata accessor for VStack();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - v7;
  sub_100008CF0(&qword_10035B068, &qword_100284EA0);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v21 - v14;
  v27 = v26;
  v16 = *(a1 + 40);
  v28 = v3;
  v29 = v16;
  v30 = v22;
  v31 = v24;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  LOBYTE(v3) = sub_100102CEC();
  v17 = swift_getWitnessTable();
  sub_10002BE68(v3 & 1, v5, v17);
  (*(v6 + 8))(v8, v5);
  v18 = sub_100009274(&qword_10035B070, &qword_10035B068, &qword_100284EA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v32 = v17;
  v33 = v18;
  swift_getWitnessTable();
  sub_10009A58C();
  v19 = *(v10 + 8);
  v19(v12, v9);
  sub_10009A58C();
  return (v19)(v15, v9);
}

uint64_t sub_10010227C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(__int128 *, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v67 = a7;
  v68 = a1;
  v76 = a4;
  v77 = a6;
  v72 = a8;
  v73 = a5;
  *&v113 = a3;
  v75 = a3;
  *(&v113 + 1) = a4;
  *&v114 = a6;
  *(&v114 + 1) = a7;
  v66 = type metadata accessor for ScrollableContentWithFloatingPanelView(255, &v113);
  swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for TupleView();
  v65 = *(v9 - 8);
  __chkstk_darwin(v9);
  v64 = &v58 - v10;
  v62 = *(a2 - 8);
  __chkstk_darwin(v11);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v74 = &v58 - v14;
  sub_100008CF0(&qword_10035B050, &unk_10027FA60);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  sub_100008CF0(&qword_10035B058, &unk_100284E90);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035B060, &unk_10027FA70);
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for ZStack();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  v69 = v22;
  v79 = v9;
  v23 = type metadata accessor for _ConditionalContent();
  v70 = *(v23 - 8);
  v71 = v23;
  __chkstk_darwin(v23);
  v78 = &v58 - v24;
  v25 = a2;
  *&v113 = a2;
  *(&v113 + 1) = v75;
  *&v114 = v76;
  v26 = v73;
  *(&v114 + 1) = v73;
  *&v115 = v77;
  v27 = v67;
  *(&v115 + 1) = v67;
  type metadata accessor for ScrollableContentWithPanelsView(0, &v113);
  v28 = v68;
  v29 = sub_100102CEC();
  if (v29)
  {
    v74 = &v58;
    __chkstk_darwin(v29);
    v31 = v75;
    v30 = v76;
    *(&v58 - 8) = v25;
    *(&v58 - 7) = v31;
    *(&v58 - 6) = v30;
    *(&v58 - 5) = v26;
    *(&v58 - 4) = v77;
    *(&v58 - 3) = v27;
    v57 = v28;
    static Alignment.center.getter();
    ZStack.init(alignment:content:)();
    v32 = v69;
    swift_getWitnessTable();
    sub_10009A58C();
    v33 = *(v16 + 8);
    v33(v18, v32);
    sub_10009A58C();
    swift_getWitnessTable();
    sub_100096F00(v18, v32);
    v33(v18, v32);
    v33(v21, v32);
  }

  else
  {
    v34 = v28;
    v35 = v63;
    (*(v28 + 16))();
    v59 = v25;
    sub_10009A58C();
    v36 = v62;
    v37 = *(v62 + 8);
    v60 = v62 + 8;
    WitnessTable = v37;
    v37(v35, v25);
    v38 = *(v28 + 32);
    v39 = *(v28 + 40);
    v40 = *(v34 + 48);
    v41 = *(v34 + 56);
    v42 = *(v34 + 64);

    v57 = v27;
    sub_100211268(v38, v39, v40, v41, v42, &v113);
    v43 = v66;
    v44 = swift_getWitnessTable();
    sub_10009A58C();
    v110[8] = v121;
    v110[9] = v122;
    v110[10] = v123;
    v110[11] = v124;
    v110[4] = v117;
    v110[5] = v118;
    v110[6] = v119;
    v110[7] = v120;
    v110[0] = v113;
    v110[1] = v114;
    v110[2] = v115;
    v110[3] = v116;
    v45 = *(v43 - 8);
    v46 = *(v45 + 8);
    v46(v110, v43);
    v77 = v46;
    v47 = v59;
    (*(v36 + 16))(v35, v74, v59);
    v111[8] = v106;
    v111[9] = v107;
    v111[10] = v108;
    v111[11] = v109;
    v111[4] = v102;
    v111[5] = v103;
    v111[6] = v104;
    v111[7] = v105;
    v111[0] = v98;
    v111[1] = v99;
    v111[2] = v100;
    v111[3] = v101;
    v93 = v106;
    v94 = v107;
    v95 = v108;
    v96 = v109;
    v89 = v102;
    v90 = v103;
    v91 = v104;
    v92 = v105;
    v85 = v98;
    v86 = v99;
    v87 = v100;
    v88 = v101;
    v97[0] = v35;
    v97[1] = &v85;
    (*(v45 + 16))(&v113, v111, v43);
    v84[0] = v47;
    v84[1] = v43;
    v82 = v73;
    v83 = v44;
    v48 = v64;
    sub_1000970F0(v97, 2uLL, v84);
    v112[8] = v93;
    v112[9] = v94;
    v112[10] = v95;
    v112[11] = v96;
    v112[4] = v89;
    v112[5] = v90;
    v112[6] = v91;
    v112[7] = v92;
    v112[0] = v85;
    v112[1] = v86;
    v112[2] = v87;
    v112[3] = v88;
    v46(v112, v43);
    v49 = WitnessTable;
    WitnessTable(v35, v47);
    v50 = v69;
    swift_getWitnessTable();
    v51 = v79;
    swift_getWitnessTable();
    sub_100096FF8(v48, v50, v51);
    (*(v65 + 8))(v48, v51);
    v121 = v106;
    v122 = v107;
    v123 = v108;
    v124 = v109;
    v117 = v102;
    v118 = v103;
    v119 = v104;
    v120 = v105;
    v113 = v98;
    v114 = v99;
    v115 = v100;
    v116 = v101;
    v77(&v113, v43);
    v49(v74, v47);
  }

  v52 = swift_getWitnessTable();
  v53 = swift_getWitnessTable();
  v80 = v52;
  v81 = v53;
  v54 = v71;
  swift_getWitnessTable();
  v55 = v78;
  sub_10009A58C();
  return (*(v70 + 8))(v55, v54);
}

uint64_t sub_100102CEC()
{
  if (*v0)
  {
    v1 = *(*v0 + 112);
    v2 = UIContentSizeCategory.isAccessibilityCategory.getter();

    return v2 & 1;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100104988(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100102D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v54 = a7;
  v53 = a6;
  v55 = a8;
  sub_100008CF0(&qword_10035B058, &unk_100284E90);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035B060, &unk_10027FA70);
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getTupleTypeMetadata2();
  v49 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v46 = type metadata accessor for VStack();
  v51 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v37 - v13;
  v50 = type metadata accessor for ModifiedContent();
  v52 = *(v50 - 8);
  __chkstk_darwin(v50);
  v44 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v47 = &v37 - v16;
  sub_100008CF0(&qword_10035B050, &unk_10027FA60);
  v38 = a2;
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  v41 = &protocol conformance descriptor for VStack<A>;
  v43 = swift_getWitnessTable();
  v17 = type metadata accessor for ScrollView();
  v56 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v39 = &v37 - v21;
  static Axis.Set.vertical.getter();
  v64 = a2;
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v22 = v53;
  v23 = v54;
  v68 = v53;
  v69 = v54;
  v70 = a1;
  ScrollView.init(_:showsIndicators:content:)();
  v40 = swift_getWitnessTable();
  sub_10009A58C();
  v24 = *(v56 + 8);
  v42 = v56 + 8;
  v43 = v24;
  v24(v19, v17);
  v57 = v38;
  v58 = a3;
  v59 = a4;
  v60 = a5;
  v61 = v22;
  v62 = v23;
  v63 = a1;
  static HorizontalAlignment.center.getter();
  v25 = v45;
  VStack.init(alignment:spacing:content:)();
  static SafeAreaRegions.all.getter();
  static Edge.Set.all.getter();
  v26 = v46;
  v27 = swift_getWitnessTable();
  v28 = v44;
  View.ignoresSafeArea(_:edges:)();
  (*(v51 + 8))(v25, v26);
  v74[2] = v27;
  v74[3] = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v29 = v50;
  v30 = swift_getWitnessTable();
  v31 = v47;
  sub_10009A58C();
  v32 = v52;
  v33 = *(v52 + 8);
  v33(v28, v29);
  v34 = v39;
  (*(v56 + 16))(v19, v39, v17);
  v74[0] = v19;
  (*(v32 + 16))(v28, v31, v29);
  v74[1] = v28;
  v73[0] = v17;
  v73[1] = v29;
  v71 = v40;
  v72 = v30;
  sub_1000970F0(v74, 2uLL, v73);
  v33(v31, v29);
  v35 = v43;
  v43(v34, v17);
  v33(v28, v29);
  return v35(v19, v17);
}

uint64_t sub_10010348C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a6;
  v23 = a7;
  v21 = a5;
  v24 = a8;
  sub_100008CF0(&qword_10035B050, &unk_10027FA60);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v12 = type metadata accessor for VStack();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v21 - v17;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = v21;
  v29 = v22;
  v30 = v23;
  v31 = a1;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  sub_10009A58C();
  v19 = *(v13 + 8);
  v19(v15, v12);
  sub_10009A58C();
  return (v19)(v18, v12);
}

uint64_t sub_1001036AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v53 = a4;
  v54 = a5;
  v51 = a6;
  v52 = *(a3 - 8);
  __chkstk_darwin(a1);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v15 = *(v14 - 8);
  __chkstk_darwin(v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v43 - v21;
  (*(v23 + 16))(v20);
  v47 = v22;
  v24 = v10;
  sub_10009A58C();
  v45 = v15;
  v46 = v18;
  v25 = v18;
  v26 = a2;
  v48 = *(v15 + 8);
  v49 = v15 + 8;
  v27 = v48(v25, a2);
  (*(a1 + 32))(v27);
  v50 = v13;
  sub_10009A58C();
  v28 = *(v52 + 8);
  v29 = a3;
  v28(v24, a3);
  v30 = static Color.clear.getter();
  v70 = *(a1 + 72);
  *&v71 = *(a1 + 88);
  sub_1000040A8(&qword_100359F88, &unk_10027E5E0);
  State.wrappedValue.getter();
  v31 = *(v68 + 1);
  v70 = *(a1 + 72);
  *&v71 = *(a1 + 88);
  State.wrappedValue.getter();
  v32 = *(v68 + 1);
  static Alignment.center.getter();
  if (v31 > v32)
  {
    static os_log_type_t.fault.getter();
    v33 = static Log.runtimeIssuesLog.getter();
    v44 = v29;
    v34 = v26;
    v35 = v33;
    os_log(_:dso:log:_:_:)();

    v26 = v34;
    v29 = v44;
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v68[0] = v30;
  v36 = v46;
  v37 = v47;
  (*(v45 + 16))(v46, v47, v26);
  v67[0] = v36;
  v38 = v50;
  (*(v52 + 16))(v24, v50, v29);
  v63 = v68[4];
  v64 = v68[5];
  v65 = v68[6];
  v66 = v69;
  v59 = v68[0];
  v60 = v68[1];
  v61 = v68[2];
  v62 = v68[3];
  v67[1] = v24;
  v67[2] = &v59;
  sub_10009A0B0(v68, &v70);
  v58[0] = v26;
  v58[1] = v29;
  v58[2] = sub_1000040A8(&qword_10035B050, &unk_10027FA60);
  v55 = v53;
  v56 = v54;
  v57 = sub_10009A120();
  sub_1000970F0(v67, 3uLL, v58);
  sub_10009A1A4(v68);
  v28(v38, v29);
  v39 = v37;
  v40 = v28;
  v41 = v48;
  v48(v39, v26);
  v74 = v63;
  v75 = v64;
  v76 = v65;
  v77 = v66;
  v70 = v59;
  v71 = v60;
  v72 = v61;
  v73 = v62;
  sub_10009A1A4(&v70);
  v40(v24, v29);
  return v41(v36, v26);
}

uint64_t sub_100103B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23 = a6;
  v24 = a7;
  v22 = a5;
  v25 = a8;
  sub_100008CF0(&qword_10035B058, &unk_100284E90);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035B060, &unk_10027FA70);
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v12 = type metadata accessor for ZStack();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v22 - v17;
  static Alignment.bottom.getter();
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = a1;
  ZStack.init(alignment:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_10009A58C();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v36 = 0;
  v37 = 1;
  v38[0] = &v36;
  (*(v13 + 16))(v15, v18, v12);
  v38[1] = v15;
  v35[0] = &type metadata for Spacer;
  v35[1] = v12;
  v33 = &protocol witness table for Spacer;
  v34 = WitnessTable;
  sub_1000970F0(v38, 2uLL, v35);
  v20(v18, v12);
  return (v20)(v15, v12);
}

uint64_t sub_100103E14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v62 = a5;
  v63 = a6;
  v9 = a4;
  v60 = a2;
  v61 = a3;
  v73 = a8;
  v11 = *(a4 - 8);
  __chkstk_darwin(a1);
  v74 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ModifiedContent();
  v67 = *(v13 - 8);
  __chkstk_darwin(v13);
  v64 = &v59 - v14;
  sub_100008CF0(&qword_10035B060, &unk_10027FA70);
  v15 = type metadata accessor for ModifiedContent();
  v68 = *(v15 - 8);
  __chkstk_darwin(v15);
  v65 = &v59 - v16;
  type metadata accessor for AccessibilityAttachmentModifier();
  v69 = v15;
  v17 = type metadata accessor for ModifiedContent();
  v70 = *(v17 - 8);
  __chkstk_darwin(v17);
  v72 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v66 = &v59 - v20;
  __chkstk_darwin(v21);
  v71 = &v59 - v22;
  v95 = *(a1 + 9);
  v96 = a1[11];
  v79 = *(a1 + 9);
  v80 = a1[11];
  sub_1000040A8(&qword_100359F88, &unk_10027E5E0);
  State.wrappedValue.getter();
  v23 = *(&v88 + 1);
  v79 = v95;
  v80 = v96;
  State.wrappedValue.getter();
  v24 = *(&v88 + 1);
  static Alignment.center.getter();
  if (v23 > v24)
  {
    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    v59 = v9;
    v26 = v17;
    v27 = v11;
    v28 = v13;
    v29 = a7;
    v30 = v25;
    os_log(_:dso:log:_:_:)();

    a7 = v29;
    v13 = v28;
    v11 = v27;
    v17 = v26;
    v9 = v59;
  }

  v31 = _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (a1[6])(v31);
  static Edge.Set.bottom.getter();
  if (*a1)
  {
    v32 = qword_100353988;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = v64;
    v34 = v74;
    View.padding(_:_:)();
    (*(v11 + 8))(v34, v9);
    v35 = swift_allocObject();
    v37 = v60;
    v36 = v61;
    *(v35 + 16) = v60;
    *(v35 + 24) = v36;
    v39 = v62;
    v38 = v63;
    *(v35 + 32) = v9;
    *(v35 + 40) = v39;
    *(v35 + 48) = v38;
    *(v35 + 56) = a7;
    v40 = *(a1 + 9);
    *(v35 + 192) = *(a1 + 8);
    *(v35 + 208) = v40;
    *(v35 + 224) = *(a1 + 10);
    *(v35 + 240) = a1[22];
    v41 = *(a1 + 5);
    *(v35 + 128) = *(a1 + 4);
    *(v35 + 144) = v41;
    v42 = *(a1 + 7);
    *(v35 + 160) = *(a1 + 6);
    *(v35 + 176) = v42;
    v43 = *(a1 + 1);
    *(v35 + 64) = *a1;
    *(v35 + 80) = v43;
    v44 = *(a1 + 3);
    *(v35 + 96) = *(a1 + 2);
    *(v35 + 112) = v44;
    *&v79 = v37;
    *(&v79 + 1) = v36;
    v80 = v9;
    *&v81 = v39;
    *(&v81 + 1) = v38;
    *&v82 = a7;
    v45 = type metadata accessor for ScrollableContentWithPanelsView(0, &v79);
    (*(*(v45 - 8) + 16))(&v79, a1, v45);
    type metadata accessor for CGSize(0);
    v78[6] = a7;
    v78[7] = &protocol witness table for _PaddingLayout;
    WitnessTable = swift_getWitnessTable();
    sub_100104988(&qword_100356A00, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
    v47 = v65;
    View.onGeometryChange<A>(of:do:)();

    (*(v67 + 8))(v33, v13);
    v48 = sub_100009274(&qword_10035B078, &qword_10035B060, &unk_10027FA70, &protocol conformance descriptor for _GeometryActionModifier<A>);
    v78[4] = WitnessTable;
    v78[5] = v48;
    v49 = v69;
    v50 = swift_getWitnessTable();
    v51 = v66;
    View.accessibilitySortPriority(_:)();
    (*(v68 + 8))(v47, v49);
    v52 = sub_100104988(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    v78[2] = v50;
    v78[3] = v52;
    v53 = swift_getWitnessTable();
    v54 = v71;
    sub_10009A58C();
    v55 = v70;
    v56 = *(v70 + 8);
    v56(v51, v17);
    v84 = v91;
    v85 = v92;
    v86 = v93;
    v87 = v94;
    v81 = v88;
    v82 = v89;
    *&v79 = 0;
    *(&v79 + 1) = 6;
    v80 = 0x3FF0000000000000;
    v83 = v90;
    v78[0] = &v79;
    v57 = v72;
    (*(v55 + 16))(v72, v54, v17);
    v78[1] = v57;
    v77[0] = sub_1000040A8(&qword_10035B058, &unk_100284E90);
    v77[1] = v17;
    v75 = sub_100099FA0();
    v76 = v53;
    sub_1000970F0(v78, 2uLL, v77);
    v56(v54, v17);
    return (v56)(v57, v17);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100104988(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}