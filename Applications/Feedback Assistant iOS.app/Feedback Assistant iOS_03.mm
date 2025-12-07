uint64_t sub_10007AEE8(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 title];
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41 = [v36 title];
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = v31 - 1;
        }

        else
        {
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v4 = v31 - 1;
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 title];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21 = [v16 title];
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * (v54 - v13));
  }

  return 1;
}

uint64_t sub_10007B2D4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10007B360(v3);
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

void *sub_10007B374(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100077B94(v3, 0);
  sub_10007B408((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10007B408(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1000456EC(&qword_10010A408, &qword_10010A400, &qword_1000C3410, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100041AA0(&qword_10010A400, &qword_1000C3410);
            v9 = sub_10005A2D4(v13, i, a3);
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
        type metadata accessor for FBAFilter(0, a2);
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

uint64_t *sub_10007B5AC(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_1000497E4(0, &qword_100109610, FBKTeam_ptr);
  sub_10007DA50(&qword_100109618, &qword_100109610, FBKTeam_ptr, &protocol conformance descriptor for NSObject);
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_1000497E4(0, &qword_100109610, FBKTeam_ptr);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

uint64_t sub_10007B800(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for FBKFeedbackUpload.BugSession();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10007BAB8(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
    sub_10007DA50(&qword_100109960, &qword_100109958, FBKUploadTask_ptr, &protocol conformance descriptor for NSObject);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = FBKUploadTask_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100078FFC(&v9, v7, &qword_100109958, FBKUploadTask_ptr, &qword_10010A588, &qword_1000C3598);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10007BC58(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000497E4(0, &qword_1001099B0, FBKBugSession_ptr);
    sub_10007DA50(&qword_1001099B8, &qword_1001099B0, FBKBugSession_ptr, &protocol conformance descriptor for NSObject);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = FBKBugSession_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100078FFC(&v9, v7, &qword_1001099B0, FBKBugSession_ptr, &qword_10010A590, &qword_1000C35A0);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10007BDF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100078D00(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10007BE90(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  sub_10007DE18();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100078E50(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10007BF1C(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000497E4(0, &qword_100109610, FBKTeam_ptr);
    sub_10007DA50(&qword_100109618, &qword_100109610, FBKTeam_ptr, &protocol conformance descriptor for NSObject);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = FBKTeam_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100078FFC(&v9, v7, &qword_100109610, FBKTeam_ptr, &qword_10010A560, &qword_1000C3578);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

char *sub_10007C0BC()
{
  sub_1000497E4(0, &qword_10010A3F8, NSPredicate_ptr);
  v0 = NSPredicate.init(format:_:)();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = [objc_opt_self() mainBundle];
  v13._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000016;
  v5._object = 0x80000001000CD830;
  v6.value._countAndFlagsBits = v1;
  v6.value._object = v3;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v13);

  v9 = FBKSystemImageNameFilterNeedsAttention;
  v11 = objc_allocWithZone(type metadata accessor for FBAFilter(0, v10));
  return sub_100070980(v0, v8._countAndFlagsBits, v8._object, v9);
}

char *sub_10007C1FC()
{
  sub_1000497E4(0, &qword_10010A3F8, NSPredicate_ptr);
  v0 = NSPredicate.init(format:_:)();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = [objc_opt_self() mainBundle];
  v14._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x4F5F5245544C4946;
  v5._object = 0xEB000000004E4550;
  v6.value._countAndFlagsBits = v1;
  v6.value._object = v3;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v14);

  v9 = FBKSystemImageNameFilterOpen;
  v11 = objc_allocWithZone(type metadata accessor for FBAFilter(0, v10));
  v12 = sub_100070980(v0, v8._countAndFlagsBits, v8._object, v9);
  [v12 setActive:1];
  return v12;
}

char *sub_10007C354()
{
  sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000C2E20;
  *(v0 + 32) = sub_10007C0BC();
  *(v0 + 40) = sub_10007C1FC();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = [objc_opt_self() mainBundle];
  v12._object = 0xE000000000000000;
  v5._object = 0x80000001000CD7D0;
  v5._countAndFlagsBits = 0xD000000000000011;
  v6.value._countAndFlagsBits = v1;
  v6.value._object = v3;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v12);

  v10 = objc_allocWithZone(type metadata accessor for FBAFilterGroup(0, v9));
  return sub_100059FF8(v8._countAndFlagsBits, v8._object, v0);
}

void sub_10007C478()
{
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000C29F0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 currentUser];

  if (v2)
  {
    v3 = [v2 ID];

    if (v3)
    {
      sub_1000497E4(0, &qword_10010A3F8, NSPredicate_ptr);
      *(v0 + 56) = sub_1000497E4(0, &qword_1001099A0, NSNumber_ptr);
      *(v0 + 64) = sub_10007DA50(&qword_10010A568, &qword_1001099A0, NSNumber_ptr, &protocol conformance descriptor for NSObject);
      *(v0 + 32) = v3;
      v4 = NSPredicate.init(format:_:)();
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
      v8 = [objc_opt_self() mainBundle];
      v16._object = 0xE000000000000000;
      v9._object = 0x80000001000CD8D0;
      v9._countAndFlagsBits = 0xD000000000000015;
      v10.value._countAndFlagsBits = v5;
      v10.value._object = v7;
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      v16._countAndFlagsBits = 0;
      v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v16);

      v13 = FBKSystemImageNameFilterAssignedToMe;
      v15 = objc_allocWithZone(type metadata accessor for FBAFilter(0, v14));
      [sub_100070980(v4 v12._countAndFlagsBits];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10007C6C4()
{
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000C29F0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 currentUser];

  if (v2)
  {
    v3 = [v2 ID];

    if (v3)
    {
      sub_1000497E4(0, &qword_10010A3F8, NSPredicate_ptr);
      *(v0 + 56) = sub_1000497E4(0, &qword_1001099A0, NSNumber_ptr);
      *(v0 + 64) = sub_10007DA50(&qword_10010A568, &qword_1001099A0, NSNumber_ptr, &protocol conformance descriptor for NSObject);
      *(v0 + 32) = v3;
      v4 = NSPredicate.init(format:_:)();
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
      v8 = [objc_opt_self() mainBundle];
      v16._object = 0xE000000000000000;
      v9._object = 0x80000001000CD890;
      v9._countAndFlagsBits = 0xD000000000000017;
      v10.value._countAndFlagsBits = v5;
      v10.value._object = v7;
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      v16._countAndFlagsBits = 0;
      v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v16);

      v13 = FBKSystemImageNameFilterOriginatedByMe;
      v15 = objc_allocWithZone(type metadata accessor for FBAFilter(0, v14));
      sub_100070980(v4, v12._countAndFlagsBits, v12._object, v13);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

char *sub_10007C8F8()
{
  sub_1000497E4(0, &qword_10010A3F8, NSPredicate_ptr);
  v0 = NSPredicate.init(format:_:)();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = [objc_opt_self() mainBundle];
  v13._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x4F5F5245544C4946;
  v5._object = 0xEF44454E41485052;
  v6.value._countAndFlagsBits = v1;
  v6.value._object = v3;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v13);

  v9 = FBKSystemImageNameFilterOrphaned;
  v11 = objc_allocWithZone(type metadata accessor for FBAFilter(0, v10));
  return sub_100070980(v0, v8._countAndFlagsBits, v8._object, v9);
}

char *sub_10007CA3C(void *a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 currentUser];

  if (v4)
  {
    v5 = [v4 hasManagedTeams];

    if (!a1)
    {
      if ((v5 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1000C3550;
      *(v6 + 32) = sub_10007C0BC();
      *(v6 + 40) = sub_10007C1FC();
      sub_10007C478();
      *(v6 + 48) = v7;
      sub_10007C6C4();
      *(v6 + 56) = v8;
      *(v6 + 64) = sub_10007C8F8();
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
      v12 = [objc_opt_self() mainBundle];
      v21._object = 0xE000000000000000;
      v13._object = 0x80000001000CD7D0;
      v13._countAndFlagsBits = 0xD000000000000011;
      v14.value._countAndFlagsBits = v9;
      v14.value._object = v11;
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      v21._countAndFlagsBits = 0;
      v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v21);

      v18 = objc_allocWithZone(type metadata accessor for FBAFilterGroup(0, v17));
      return sub_100059FF8(v16._countAndFlagsBits, v16._object, v6);
    }
  }

  else if (!a1)
  {
    goto LABEL_8;
  }

  if ([a1 teamType])
  {
    goto LABEL_7;
  }

LABEL_8:

  return sub_10007C354();
}

void sub_10007CC24(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100041AA0(&qword_10010A578, &qword_1000C3588);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

char *sub_10007CF14(uint64_t a1)
{
  sub_10007692C(a1);
  v2 = sub_10007BDF8(v1);

  v4 = *(v2 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    __chkstk_darwin(v3);
    v7 = &v40 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v8 = 0;
    v9 = 0;
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 56);
    v13 = (v10 + 63) >> 6;
    while (1)
    {
      if (!v12)
      {
        v16 = v9;
        while (1)
        {
          v9 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v9 >= v13)
          {
            goto LABEL_19;
          }

          v17 = *(v2 + 56 + 8 * v9);
          ++v16;
          if (v17)
          {
            v12 = (v17 - 1) & v17;
            v15 = __clz(__rbit64(v17)) | (v9 << 6);
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_22;
      }

      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_12:
      v18 = (*(v2 + 48) + 16 * v15);
      v20 = *v18;
      v19 = v18[1];
      v21 = v20 & 0xFFFFFFFFFFFFLL;
      if ((v19 & 0x2000000000000000) != 0)
      {
        v22 = HIBYTE(v19) & 0xF;
      }

      else
      {
        v22 = v21;
      }

      if (v22)
      {
        *&v7[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v8++, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_19:
    v24 = sub_100078AB8(v7, v5, v8, v2);
    if (!*(v24 + 16))
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

LABEL_22:

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v38 = swift_slowAlloc();
  v39 = sub_100078834(v38, v5, v2, sub_1000774D4);

  v24 = v39;
  if (v39[2])
  {
LABEL_20:
    sub_100076F1C(v24);

    v41 = sub_10007B374(v25);
    sub_10007A3EC(&v41);

    v26 = v41;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
    v30 = [objc_opt_self() mainBundle];
    v42._object = 0xE000000000000000;
    v31._object = 0x80000001000CD790;
    v31._countAndFlagsBits = 0xD000000000000019;
    v32.value._countAndFlagsBits = v27;
    v32.value._object = v29;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v42._countAndFlagsBits = 0;
    v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v42);

    v36 = objc_allocWithZone(type metadata accessor for FBAFilterGroup(0, v35));
    result = sub_100059FF8(v34._countAndFlagsBits, v34._object, v26);
    *&result[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_compoundType] = 2;
    return result;
  }

LABEL_25:

  return 0;
}

uint64_t sub_10007D288(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void *sub_10007D294(void *a1, uint64_t a2)
{
  v12[4] = sub_10007CA3C(a1, a2);
  v3 = [a1 contentItems];
  if (v3)
  {
    v4 = v3;
    sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr);
    sub_10007DA50(&qword_100109998, &qword_100109990, FBKContentItem_ptr, &protocol conformance descriptor for NSObject);
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10007CC24(_swiftEmptyArrayStorage);
    v5 = v11;
  }

  else
  {
    v5 = &_swiftEmptySetSingleton;
  }

  v6 = sub_10007CF14(v5);

  v7 = 0;
  v12[5] = v6;
  while (v7 != 2)
  {
    v8 = v12[v7++ + 4];
    if (v8)
    {
      v9 = v8;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  sub_100041AA0(&qword_10010A570, &qword_1000C3580);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

char *sub_10007D460(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 currentUser];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 teams];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  sub_1000497E4(0, &qword_100109610, FBKTeam_ptr);
  sub_10007DA50(&qword_100109618, &qword_100109610, FBKTeam_ptr, &protocol conformance descriptor for NSObject);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (([v3 hasManagedTeams] & 1) == 0)
  {

    return 0;
  }

  sub_100077C1C(v6);

  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  isa = [objc_opt_self() sortDescriptors];
  if (!isa)
  {
    sub_1000497E4(0, &qword_100109620, NSSortDescriptor_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v9 = [(objc_class *)v7.super.isa sortedArrayUsingDescriptors:isa];

  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = sub_100076C2C(v10, &qword_100109610, FBKTeam_ptr);

  v12 = v11;
  if (v11 >> 62)
  {
    goto LABEL_26;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    while (1)
    {
      v44 = v3;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v13 < 0)
      {
        break;
      }

      sub_1000497E4(0, &qword_10010A3F8, NSPredicate_ptr);
      v15 = v12;
      v16 = 0;
      v45 = FBKSystemImageNameFilterPersonalTeam;
      v46 = FBKSystemImageNameFilterOtherTeam;
      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if ((v12 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v18 = *(v15 + 8 * v16 + 32);
        }

        v19 = v18;
        v20 = [v18 teamType];
        v21 = v46;
        if (!v20)
        {
          v21 = v45;
        }

        v22 = v21;
        sub_100041AA0(&unk_100109860, qword_1000C2DA0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1000C29F0;
        sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000C2E80;
        *(inited + 32) = v19;
        v25 = v19;
        v26 = sub_10007BF1C(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        *(v23 + 56) = sub_100041AA0(&qword_10010A550, &qword_1000C3570);
        *(v23 + 64) = sub_1000456EC(&qword_10010A558, &qword_10010A550, &qword_1000C3570, &protocol conformance descriptor for Set<A>);
        *(v23 + 32) = v26;
        v27 = NSPredicate.init(format:_:)();
        result = [v25 name];
        if (!result)
        {
          goto LABEL_30;
        }

        v28 = result;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v33 = objc_allocWithZone(type metadata accessor for FBAFilter(0, v32));
        sub_100070980(v27, v29, v31, v22);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v3 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v16;
        v15 = v12;
        if (v17 == v13)
        {

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (!v13)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_27:

LABEL_28:
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    v37 = [objc_opt_self() mainBundle];
    v47._object = 0xE000000000000000;
    v38._object = 0x80000001000CD7B0;
    v38._countAndFlagsBits = 0xD000000000000011;
    v39.value._countAndFlagsBits = v34;
    v39.value._object = v36;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    v47._countAndFlagsBits = 0;
    v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v47);

    v43 = objc_allocWithZone(type metadata accessor for FBAFilterGroup(0, v42));
    result = sub_100059FF8(v41._countAndFlagsBits, v41._object, _swiftEmptyArrayStorage);
    *&result[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_compoundType] = 2;
  }

  return result;
}

uint64_t sub_10007DA50(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000497E4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10007DA94(uint64_t a1, uint64_t a2)
{
  v13 = sub_10007CA3C(0, a2);
  v14 = sub_10007D460(v13, v2);
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 currentUser];

  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = [v4 contentItems];

  if (v5)
  {
    sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr);
    sub_10007DA50(&qword_100109998, &qword_100109990, FBKContentItem_ptr, &protocol conformance descriptor for NSObject);
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = sub_10007CF14(v6);

    v8 = 0;
    v15 = v7;
LABEL_4:
    if (v8 <= 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = v8;
    }

    while (1)
    {
      if (v8 == 3)
      {
        sub_100041AA0(&qword_10010A570, &qword_1000C3580);
        swift_arrayDestroy();
        return;
      }

      if (v9 == v8)
      {
        break;
      }

      v10 = v12[v8++ + 4];
      if (v10)
      {
        v11 = v10;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_4;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

id sub_10007DCA0()
{
  sub_1000497E4(0, &qword_10010A3F8, NSPredicate_ptr);
  v0 = NSPredicate.init(format:_:)();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = [objc_opt_self() mainBundle];
  v14._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x435F5245544C4946;
  v5._object = 0xED00004445534F4CLL;
  v6.value._countAndFlagsBits = v1;
  v6.value._object = v3;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v14);

  v9 = [objc_opt_self() imageNamed:FBKImageNameCloseFeedback];
  v11 = objc_allocWithZone(type metadata accessor for FBAFilter(0, v10));
  v12 = sub_100070DB8(v0, v8._countAndFlagsBits, v8._object, v9);

  return v12;
}

unint64_t sub_10007DE18()
{
  result = qword_100109058;
  if (!qword_100109058)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100109058);
  }

  return result;
}

uint64_t sub_10007DE70(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FBATeamListHeaderView(a1, a2);
  sub_100041AA0(&qword_10010A5E8, &unk_1000C3600);
  result = String.init<A>(describing:)();
  qword_10010CED0 = result;
  *algn_10010CED8 = v3;
  return result;
}

void sub_10007DFD4(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamNameLabel] = 0;
  *&v6[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamTypeLabel] = 0;
  *&v6[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_stackView] = 0;
  v79.receiver = v6;
  v79.super_class = type metadata accessor for FBATeamListHeaderView(a5, a6);
  v11 = objc_msgSendSuper2(&v79, "initWithFrame:", a1, a2, a3, a4);
  v12 = objc_allocWithZone(UILabel);
  v13 = v11;
  v14 = [v12 init];
  v15 = OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamNameLabel;
  v16 = *&v13[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamNameLabel];
  *&v13[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamNameLabel] = v14;
  v17 = v14;

  if (!v17)
  {
    goto LABEL_30;
  }

  v18 = objc_opt_self();
  v19 = [v18 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v17 setFont:v19];

  v20 = *&v13[v15];
  if (!v20)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v20 setAdjustsFontForContentSizeCategory:1];
  v21 = *&v13[v15];
  if (!v21)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 labelColor];
  [v23 setTextColor:v24];

  v25 = *&v13[v15];
  if (!v25)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = [objc_allocWithZone(UILabel) init];
  v27 = OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamTypeLabel;
  v28 = *&v13[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamTypeLabel];
  *&v13[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamTypeLabel] = v26;
  v29 = v26;

  if (!v29)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = [v22 labelColor];
  [v29 setTextColor:v30];

  v31 = *&v13[v27];
  if (!v31)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v31 setAdjustsFontForContentSizeCategory:1];
  v32 = *&v13[v27];
  if (!v32)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v33 = v32;
  v34 = [v18 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v33 setFont:v34];

  v35 = *&v13[v27];
  if (!v35)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 traitCollectionDidChange:0];
  sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1000C2E20;
  v37 = *&v13[v15];
  if (!v37)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(v36 + 32) = v37;
  v38 = *&v13[v27];
  if (!v38)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v36 + 40) = v38;
  v39 = objc_allocWithZone(UIStackView);
  sub_1000497E4(0, &qword_100109D00, UIView_ptr);
  v40 = v38;
  v41 = v37;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v43 = [v39 initWithArrangedSubviews:isa];

  v44 = OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_stackView;
  v45 = *&v13[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_stackView];
  *&v13[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_stackView] = v43;
  v46 = v43;

  if (!v46)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v46 setAxis:1];

  v47 = *&v13[v44];
  if (!v47)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v47 setSpacing:2.5];
  v48 = *&v13[v44];
  if (!v48)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  v49 = v13;
  v50 = [v49 subviews];
  v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v51 >> 62)
  {
    v52 = _CocoaArrayWrapper.endIndex.getter();
    if (!v52)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v52)
    {
      goto LABEL_23;
    }
  }

  if (v52 < 1)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  for (i = 0; i != v52; ++i)
  {
    if ((v51 & 0xC000000000000001) != 0)
    {
      v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v54 = *(v51 + 8 * i + 32);
    }

    v55 = v54;
    [v54 removeFromSuperview];
  }

LABEL_23:

  if (!*&v13[v44])
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [v49 addSubview:?];
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1000C2E70;
  v57 = *&v13[v44];
  if (!v57)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v58 = [v57 trailingAnchor];
  v59 = [v49 layoutMarginsGuide];
  v60 = [v59 trailingAnchor];

  v61 = [v58 constraintEqualToAnchor:v60];
  *(v56 + 32) = v61;
  v62 = *&v13[v44];
  if (!v62)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v63 = [v62 leadingAnchor];
  v64 = [v49 layoutMarginsGuide];
  v65 = [v64 leadingAnchor];

  v66 = [v63 constraintEqualToAnchor:v65];
  *(v56 + 40) = v66;
  v67 = *&v13[v44];
  if (!v67)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v68 = [v67 topAnchor];
  v69 = [v49 layoutMarginsGuide];
  v70 = [v69 topAnchor];

  v71 = [v68 constraintEqualToAnchor:v70];
  *(v56 + 48) = v71;
  v72 = *&v13[v44];
  if (v72)
  {
    v73 = objc_opt_self();
    v74 = [v72 bottomAnchor];
    v75 = [v49 layoutMarginsGuide];

    v76 = [v75 bottomAnchor];
    v77 = [v74 constraintEqualToAnchor:v76 constant:-7.0];

    *(v56 + 56) = v77;
    sub_1000497E4(0, qword_100109D60, NSLayoutConstraint_ptr);
    v78 = Array._bridgeToObjectiveC()().super.isa;

    [v73 activateConstraints:v78];

    return;
  }

LABEL_47:
  __break(1u);
}

id sub_10007E7D8(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamNameLabel] = 0;
  *&v2[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamTypeLabel] = 0;
  *&v2[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_stackView] = 0;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for FBATeamListHeaderView(a1, a2);
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_10007E88C(void *a1)
{
  result = *&v1[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_stackView];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = [result setHidden:0];
  v4 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamNameLabel];
  if (!v4)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  v6 = [a1 name];
  [v5 setText:v6];

  result = [a1 typeString];
  if (!result)
  {
    goto LABEL_8;
  }

  v7 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  result = [a1 role];
  if (result != 2)
  {

LABEL_8:
    v17 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamTypeLabel];
    if (v17)
    {
      v10 = v17;
      v16 = [a1 typeString];
      [v10 setText:v16];
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  v8 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamTypeLabel];
  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v9 = v1;
  v10 = v8;
  v11._countAndFlagsBits = 2108704;
  v11._object = 0xE300000000000000;
  String.append(_:)(v11);
  v12 = [objc_opt_self() mainBundle];
  v19._object = 0x80000001000CDA00;
  v13._countAndFlagsBits = 0x4E494D4441;
  v14._countAndFlagsBits = 0x6E696D6441;
  v13._object = 0xE500000000000000;
  v14._object = 0xE500000000000000;
  v19._countAndFlagsBits = 0xD000000000000024;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v19);

  String.append(_:)(v15);

  v16 = String._bridgeToObjectiveC()();

  [v10 setText:v16];
  v1 = v9;
LABEL_10:

  return [v1 setNeedsLayout];
}

id sub_10007EB84(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBATeamListHeaderView(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10007EC38()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  result = *&v0[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamNameLabel];
  if ((v1 & 1) == 0)
  {
    if (result)
    {
      v4 = 1;
      [result setNumberOfLines:1];
      result = *&v0[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamTypeLabel];
      if (result)
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
      return result;
    }

    goto LABEL_11;
  }

  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [result setNumberOfLines:0];
  result = *&v0[OBJC_IVAR____TtC18Feedback_Assistant21FBATeamListHeaderView_teamTypeLabel];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = 0;
LABEL_7:

  return [result setNumberOfLines:v4];
}

void sub_10007ED50()
{
  *(v0 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_context) = 0;
  *(v0 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_formStubs) = 0;
  *(v0 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_currentSelection) = 0;
  *(v0 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_team) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_formsRefreshObserver);
  *v1 = 0u;
  v1[1] = 0u;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Int sub_10007EE88()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10007EED0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t *sub_10007EF14@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void sub_10007F048(uint64_t a1, uint64_t a2)
{
  v21.receiver = v2;
  v21.super_class = type metadata accessor for FBABugFormPickerController(a1, a2);
  objc_msgSendSuper2(&v21, "viewDidLoad");
  v3 = [v2 navigationItem];
  v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v2 action:"dismissPicker"];
  [v3 setRightBarButtonItem:v4];

  v5 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_context];
  if (v5 == 1)
  {
    v6 = [v2 navigationItem];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    v10 = [objc_opt_self() mainBundle];
    v22._object = 0xE000000000000000;
    v11._object = 0x80000001000CDCE0;
    v11._countAndFlagsBits = 0xD00000000000001ALL;
    v12.value._countAndFlagsBits = v7;
    v12.value._object = v9;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v22);
  }

  else
  {
    if (v5)
    {
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }

    v6 = [v2 navigationItem];
    v10 = [objc_opt_self() mainBundle];
    v23._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0x465F455441455243;
    v14._object = 0xEF4B434142444545;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v10, v15, v23);
  }

  v16 = String._bridgeToObjectiveC()();

  [v6 setTitle:v16];

  v17 = [v2 navigationController];
  if (v17)
  {
    v19 = v17;
    v20 = [v17 presentationController];

    if (v20)
    {
      [v20 setDelegate:v2];
    }
  }

  sub_10007FC98(v17, v18);
}

id sub_10007F450(void *a1, uint64_t a2)
{
  if (!FBKIsSolariumEnabled())
  {
    return 0;
  }

  result = [v2 tableView];
  if (result)
  {
    v6 = result;
    v7 = [v2 tableView:result titleForHeaderInSection:a2];

    if (v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    objc_allocWithZone(type metadata accessor for FBKTableSectionHeaderView());
    v8 = a1;
    return FBKTableSectionHeaderView.init(title:tableView:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10007F5D0(void *a1)
{
  v2 = v1;

  v4 = String._bridgeToObjectiveC()();

  v5 = [a1 dequeueReusableCellWithIdentifier:v4];

  if (!v5)
  {
    v6 = objc_allocWithZone(UITableViewCell);

    v7 = String._bridgeToObjectiveC()();

    v5 = [v6 initWithStyle:3 reuseIdentifier:v7];
  }

  v8 = IndexPath.row.getter();
  v9 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_formStubs);
  if (!v9)
  {
    goto LABEL_22;
  }

  if ((v9 & 0xC000000000000001) == 0)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 8 * v8 + 32);
      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_8:
  v11 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_currentSelection);
  if (v11)
  {
    sub_1000497E4(0, &qword_10010A678, NSObject_ptr);
    v12 = v11;
    if (static NSObject.== infix(_:_:)())
    {
      v13 = 1;
    }

    else
    {
      v14 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_team);
      if (v14 && (v15 = [v14 teamFormStubMatchingFromFormStub:v12]) != 0)
      {
        v16 = v15;
        sub_1000497E4(0, &unk_10010A668, FBKBugFormStub_ptr);
        v17 = v10;
        v13 = static NSObject.== infix(_:_:)();
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  if (v5)
  {
    [v5 configureWithBugFormStub:v10 isSelected:v13 & 1];

    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_10007FA20(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for FBABugFormPickerController(a1, a2);
  objc_msgSendSuper2(&v17, "viewDidAppear:", v3 & 1);
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 notificationCenter];

  v6 = FBKDidRefreshFormStubsNotification;
  v7 = [objc_opt_self() mainQueue];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_10008073C;
  v16 = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000871B4;
  ObjectType = &unk_1000E18F0;
  v9 = _Block_copy(aBlock);

  v10 = [v5 addObserverForName:v6 object:0 queue:v7 usingBlock:v9];
  _Block_release(v9);

  ObjectType = swift_getObjectType();
  aBlock[0] = v10;
  v11 = OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_formsRefreshObserver;
  swift_beginAccess();
  sub_10008075C(aBlock, v2 + v11);
  return swift_endAccess();
}

void sub_10007FBF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10007FC98(Strong, v3);
  }
}

void sub_10007FC98(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 currentUser];

  if (!v4)
  {
    v8 = static os_log_type_t.error.getter();
    v9 = [objc_opt_self() appHandle];
    if (v9)
    {
      v10 = v9;
      os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Cannot update form stubs because user is nil", 44, 2, _swiftEmptyArrayStorage);
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  v5 = [v4 bugFormStubsForPickerWithPredicate:*&v2[OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_stubsPredicate] team:*&v2[OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_team]];
  sub_1000497E4(0, &unk_10010A668, FBKBugFormStub_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v2[OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_formStubs] = v6;

  v7 = [v2 tableView];
  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v7;
  [v7 reloadData];

LABEL_6:
}

uint64_t sub_10007FE28(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for FBABugFormPickerController(a1, a2);
  objc_msgSendSuper2(&v12, "viewDidDisappear:", v3 & 1);
  v4 = OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_formsRefreshObserver;
  swift_beginAccess();
  sub_1000805E8(v2 + v4, &v8);
  if (!v9)
  {
    return sub_100080658(&v8);
  }

  sub_10006FB68(&v8, &v10);
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 notificationCenter];

  sub_1000806C0(&v10, v11);
  [v6 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  return sub_1000466E4(&v10);
}

void sub_10007FF8C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong respondsToSelector:"bugFormPickerDidCancel:"])
    {
      [v2 bugFormPickerDidCancel:v0];
    }

    swift_unknownObjectRelease();
  }

  v3 = [v0 presentingViewController];
  if (v3)
  {
    v4 = v3;
    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_100080160(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBABugFormPickerController(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100080244(void *a1, uint64_t a2)
{
  v3 = a2;
  v5 = objc_opt_self();
  [v5 labelFontSize];
  v24 = [v5 systemFontOfSize:? weight:?];
  v6 = [v2 textLabel];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleHeadline];
    v9 = [v8 scaledFontForFont:v24];

    [v7 setFont:v9];
  }

  v10 = [v2 textLabel];
  if (v10)
  {
    v11 = v10;
    [v10 setAdjustsFontForContentSizeCategory:1];
  }

  v12 = [v2 textLabel];
  if (v12)
  {
    v13 = v12;
    v14 = [a1 name];
    [v13 setText:v14];
  }

  v15 = [v2 detailTextLabel];
  if (v15)
  {
    v16 = v15;
    v17 = [a1 formDescription];
    [v16 setText:v17];
  }

  if (v3)
  {
    v18 = 3;
  }

  else
  {
    v18 = 0;
  }

  [v2 setAccessoryType:v18];
  [v2 setAccessibilityTraits:{objc_msgSend(v2, "accessibilityTraits") | UIAccessibilityTraitButton}];
  v19 = [v2 detailTextLabel];
  if (v19)
  {
    v20 = v19;
    v21 = [v2 traitCollection];
    v22 = [v21 preferredContentSizeCategory];

    LOBYTE(v21) = UIContentSizeCategory.isAccessibilityCategory.getter();
    if (v21)
    {
      v23 = 0;
    }

    else
    {
      v23 = 3;
    }

    [v20 setNumberOfLines:v23];
  }
}

unint64_t sub_100080594()
{
  result = qword_10010A660;
  if (!qword_10010A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010A660);
  }

  return result;
}

uint64_t sub_1000805E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041AA0(&unk_10010A0E0, qword_1000C3700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100080658(uint64_t a1)
{
  v2 = sub_100041AA0(&unk_10010A0E0, qword_1000C3700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1000806C0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100080704()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100080744(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008075C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041AA0(&unk_10010A0E0, qword_1000C3700);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000807CC()
{
  *(v0 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_context) = 0;
  *(v0 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_formStubs) = 0;
  *(v0 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_currentSelection) = 0;
  *(v0 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_team) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_formsRefreshObserver);
  *v1 = 0u;
  v1[1] = 0u;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100080880()
{
  *(v0 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_context) = 0;
  *(v0 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_formStubs) = 0;
  *(v0 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_currentSelection) = 0;
  *(v0 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_team) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_formsRefreshObserver);
  *v1 = 0u;
  v1[1] = 0u;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100080934(void *a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_context] = 0;
  *&v2[OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_formStubs] = 0;
  *&v2[OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_currentSelection] = 0;
  *&v2[OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_team] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v2[OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_formsRefreshObserver];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *&v2[OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_stubsPredicate] = a1;
  type metadata accessor for FBKTableSectionHeaderView();
  v5 = a1;
  v6 = static FBKTableSectionHeaderView.shouldPinCustomHeader()();
  LOBYTE(a1) = ~v6;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for FBABugFormPickerController(v6, v7);
  return objc_msgSendSuper2(&v9, "initWithStyle:", a1 & 1);
}

uint64_t sub_100080A04(uint64_t a1, uint64_t a2)
{
  v3 = 0xD00000000000001DLL;
  v4 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_context);
  if (!v4)
  {
    v5 = "MULTIPLE_FORMS_PICK_ONE_DRAFT";
    v3 = 0xD000000000000020;
LABEL_5:
    v6 = [objc_opt_self() mainBundle];
    v11._object = 0xE000000000000000;
    v7._object = (v5 | 0x8000000000000000);
    v7._countAndFlagsBits = v3;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v11)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (v4 == 1)
  {
    v5 = "init(nibName:bundle:)";
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_100080AF8(void *a1, uint64_t a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v12 = a1;
    v7 = [v6 textLabel];
    if (v7)
    {
      v8 = v7;
      v9 = [v2 tableView];
      if (!v9)
      {
        __break(1u);
        return;
      }

      v10 = v9;
      v11 = [v2 tableView:v9 titleForHeaderInSection:a2];

      [v8 setText:v11];
    }
  }
}

void sub_100080C04()
{
  v1 = v0;
  v2 = IndexPath.row.getter();
  v3 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_formStubs];
  if (!v3)
  {
    goto LABEL_26;
  }

  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v2 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v3 + 8 * v2 + 32);
      goto LABEL_6;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_6:
  v4 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant26FBABugFormPickerController_currentSelection];
  if (v4)
  {
    sub_1000497E4(0, &qword_10010A678, NSObject_ptr);
    v5 = v4;
    if (static NSObject.== infix(_:_:)())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        if ([Strong respondsToSelector:"bugFormPickerDidCancel:"])
        {
          [v7 bugFormPickerDidCancel:v1];
        }

        swift_unknownObjectRelease();
      }

      v8 = [v1 presentingViewController];
      if (v8)
      {
        v9 = v8;
        [v8 dismissViewControllerAnimated:1 completion:0];
      }

      goto LABEL_20;
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
LABEL_20:

    return;
  }

  [v10 bugFormPicker:v1 didSelectBugFormStub:v11];

  swift_unknownObjectRelease();
}

void sub_100080DE8(uint64_t a1, uint64_t a2)
{
  sub_100048008(a1, a2);
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() storyboardWithName:v3 bundle:v2];

  qword_10010CEE0 = v4;
}

void sub_100080FC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_followup);
  if (v1)
  {
    v18 = v1;
    v2 = [v18 requiresComments];
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = Strong;
    if (!v2)
    {
      if (Strong)
      {
        v5 = [objc_opt_self() mainBundle];
        v17 = 0x80000001000CDF90;
        v7 = 0x80000001000CDF70;
        v6 = 0xD000000000000015;
        v9.super.isa = v5;
        v10 = 0;
        v11 = 0xE000000000000000;
        v8 = 0x100000000000001ALL;
        goto LABEL_9;
      }

LABEL_15:
      __break(1u);
      return;
    }

    if (Strong)
    {
      v5 = [objc_opt_self() mainBundle];
      v17 = 0xAFA680E273746E65;
      v6 = 0x4D4D4F435F444441;
      v7 = 0xEC00000053544E45;
      v8 = 0x6D6D6F6320646441;
      v9.super.isa = v5;
      v10 = 0;
      v11 = 0xE000000000000000;
LABEL_9:
      v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, 0, v9, *&v10, *&v8);

      *&v4[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_placeholderText] = v16;

      sub_100046988();

      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = [objc_opt_self() mainBundle];
  v20._object = 0x80000001000CDF90;
  v13._object = 0x80000001000CDF70;
  v13._countAndFlagsBits = 0xD000000000000015;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0x100000000000001ALL;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v20);

  *&v18[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_placeholderText] = v15;

  sub_100046988();
LABEL_10:
}

void sub_100081234(void *a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_followup);
  *(v2 + OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_followup) = a1;
  if (a1)
  {
    if (v4)
    {
      v7 = v4;
      sub_100082130(0, a2);
      v5 = a1;
      v8 = v7;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
LABEL_7:

        v4 = v8;
        goto LABEL_8;
      }
    }

    else
    {
      v5 = a1;
      v8 = 0;
    }

    sub_100080FC4();
    goto LABEL_7;
  }

LABEL_8:
}

void sub_100081380()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_isEditing];

    v2 = swift_unknownObjectWeakLoadStrong();
    v3 = v2;
    if (v1 != 1)
    {
      if (v2)
      {

        return;
      }

      goto LABEL_10;
    }

    if (v2)
    {
      v4 = [v2 text];

      if (v4)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        return;
      }

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1000814A4(uint64_t a1, uint64_t a2)
{
  v13.receiver = v2;
  v13.super_class = type metadata accessor for FBAExpandingTextInputCell(a1, a2);
  objc_msgSendSuper2(&v13, "awakeFromNib");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = Strong;
  [Strong setScrollEnabled:0];

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  [v5 setDelegate:v2];

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  [v7 setAdjustsFontForContentSizeCategory:1];

  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [v9 text];

  if (v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = String.count.getter();

    sub_10008168C(v12);
    sub_100080FC4();
    [v2 setSelectionStyle:0];
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_10008168C(uint64_t a1)
{
  v1 = FBKTextAreaAnswerCharacterLimit - a1;
  if (__OFSUB__(FBKTextAreaAnswerCharacterLimit, a1))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = Strong;
  if (v1 <= 99)
  {
    if (Strong)
    {
      [Strong setHidden:0];

      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        v5 = [objc_opt_self() mainBundle];
        v15._object = 0xE000000000000000;
        v6._countAndFlagsBits = 0x4554434152414843;
        v6._object = 0xEF5446454C5F5352;
        v7._countAndFlagsBits = 0;
        v7._object = 0xE000000000000000;
        v15._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v15);

        sub_100041AA0(&unk_100109860, qword_1000C2DA0);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1000C29F0;
        *(v8 + 56) = &type metadata for Int;
        *(v8 + 64) = &protocol witness table for Int;
        *(v8 + 32) = v1;
        String.init(format:_:)();

        v9 = String._bridgeToObjectiveC()();

        [v4 setText:v9];

        v10 = swift_unknownObjectWeakLoadStrong();
        v11 = v10;
        if (v1 < 0)
        {
          if (v10)
          {
            v12 = [objc_opt_self() redColor];
            goto LABEL_12;
          }

LABEL_21:
          __break(1u);
          return;
        }

        if (v10)
        {
          v12 = [objc_opt_self() secondaryLabelColor];
LABEL_12:
          v13 = v12;
          [v11 setTextColor:?];

          goto LABEL_13;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (!Strong)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [Strong setHidden:1];
LABEL_13:
}

id sub_10008198C(void *a1)
{
  result = [a1 text];
  if (!result)
  {
    goto LABEL_6;
  }

  v2 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = String.count.getter();

  sub_10008168C(v3);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_10005CDE4();
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100082100;
    *(v7 + 24) = v6;
    v10[4] = sub_10004375C;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_100080EEC;
    v10[3] = &unk_1000E1978;
    v8 = _Block_copy(v10);
    v9 = v4;

    [v5 performWithoutAnimation:v8];
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
LABEL_6:
      __break(1u);
    }
  }

  return result;
}

id sub_100081D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_itemIdentifier];
  *v6 = 0xD000000000000019;
  *(v6 + 1) = 0x80000001000C3740;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_followup] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7 = swift_unknownObjectWeakInit();
  if (a3)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for FBAExpandingTextInputCell(v7, v8);
  v10 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", a1, v9);

  return v10;
}

id sub_100081ED0(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_itemIdentifier];
  *v3 = 0xD000000000000019;
  *(v3 + 1) = 0x80000001000C3740;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_followup] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = swift_unknownObjectWeakInit();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for FBAExpandingTextInputCell(v4, v5);
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_100081FE0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBAExpandingTextInputCell(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000820C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100082118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100082130(uint64_t a1, uint64_t a2)
{
  result = qword_10010A6E0;
  if (!qword_10010A6E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10010A6E0);
  }

  return result;
}

uint64_t sub_1000821A0(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_100084B88(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_10008221C(uint64_t a1, unint64_t a2)
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

id sub_100082274(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC18Feedback_Assistant17FBADataClientStub_Log;
  v5 = sub_1000474D8(0, a2);
  v7 = type metadata accessor for FBADataClientStub(v5, v6);
  v11 = v7;
  sub_100041AA0(&unk_10010A870, &qword_1000C37E0);
  String.init<A>(describing:)();
  *&v2[v4] = OS_os_log.init(subsystem:category:)();
  *&v2[OBJC_IVAR____TtC18Feedback_Assistant17FBADataClientStub_bundle] = a1;
  v8 = &v2[OBJC_IVAR____TtC18Feedback_Assistant17FBADataClientStub_testFixtureDir];
  *v8 = 0x4950412D3356;
  *(v8 + 1) = 0xE600000000000000;
  v10.receiver = v2;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_10008295C(void *a1, uint64_t a2)
{
  sub_1000806C0(a1, a1[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(a2 + 16))(a2, v3);

  return swift_unknownObjectRelease();
}

void sub_100082ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = URL.path.getter();
  v8 = v7;
  v9 = URL.query.getter();
  if (v10)
  {
    v11 = v9;
    v12 = v10;

    *&aBlock = URL.path.getter();
    *(&aBlock + 1) = v13;

    v14._countAndFlagsBits = 63;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);

    v15._countAndFlagsBits = v11;
    v15._object = v12;
    String.append(_:)(v15);

    v8 = *(&aBlock + 1);
    v6 = aBlock;
  }

  v16 = URL.path.getter();
  v18 = v17;
  *&aBlock = v16;
  *(&aBlock + 1) = v17;
  *&v58[0] = 63;
  *(&v58[0] + 1) = 0xE100000000000000;
  sub_100045528();
  if (StringProtocol.contains<A>(_:)())
  {
    v19 = objc_allocWithZone(NSURLComponents);
    v20 = String._bridgeToObjectiveC()();

    v21 = [v19 initWithString:v20];

    v48 = a3;
    if (v21)
    {
      v22 = [v21 path];
      if (v22)
      {
        v23 = v22;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v24;
      }

      else
      {
        v18 = 0xE100000000000000;
        v16 = 45;
      }

      v26 = [v21 queryItems];
      if (v26)
      {
        v27 = v26;
        type metadata accessor for URLQueryItem();
        static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v25 = Array.description.getter();
        v46 = v28;
      }

      else
      {
        v46 = 0xE100000000000000;
        v25 = 45;
      }
    }

    else
    {
      v46 = 0xE100000000000000;
      v25 = 45;
      v16 = 45;
      v18 = 0xE100000000000000;
    }

    static os_log_type_t.debug.getter();
    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1000C2530;
    *(v29 + 56) = &type metadata for String;
    v30 = sub_100047484();
    *(v29 + 32) = v25;
    *(v29 + 40) = v46;
    *(v29 + 96) = &type metadata for String;
    *(v29 + 104) = v30;
    *(v29 + 64) = v30;
    *(v29 + 72) = v16;
    *(v29 + 80) = v18;

    os_log(_:dso:log:type:_:)("Throwing out query items [%s] when loading fixture [%s]", v46, v21);

    a3 = v48;
  }

  sub_100083B90(v6, v8, &aBlock);
  if (v55)
  {

    sub_10006FB68(&aBlock, v58);
    static os_log_type_t.debug.getter();
    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1000C29F0;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_100047484();
    *(v31 + 32) = v6;
    *(v31 + 40) = v8;
    os_log(_:dso:log:type:_:)("Trying fixture load with query path [%s]", v45);

    v32 = [objc_opt_self() mainQueue];
    sub_100046784(v58, v52);
    v33 = swift_allocObject();
    *(v33 + 16) = a2;
    *(v33 + 24) = a3;
    sub_10006FB68(v52, (v33 + 32));
    v56 = sub_100085550;
    v57 = v33;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v34 = &unk_1000E1B80;
LABEL_18:
    v54 = sub_100088474;
    v55 = v34;
    v37 = _Block_copy(&aBlock);

    [v32 addOperationWithBlock:v37];
    _Block_release(v37);

    sub_1000466E4(v58);
    return;
  }

  sub_1000454C8(&aBlock, &unk_10010A0E0, qword_1000C3700);
  sub_100083B90(v16, v18, &aBlock);
  if (v55)
  {
    sub_10006FB68(&aBlock, v58);
    static os_log_type_t.debug.getter();
    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1000C29F0;
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = sub_100047484();
    *(v35 + 32) = v16;
    *(v35 + 40) = v18;
    os_log(_:dso:log:type:_:)("Retrying fixture load WITHOUT query path [%s]", v45);

    v32 = [objc_opt_self() mainQueue];
    sub_100046784(v58, v52);
    v36 = swift_allocObject();
    *(v36 + 16) = a2;
    *(v36 + 24) = a3;
    sub_10006FB68(v52, (v36 + 32));
    v56 = sub_100085344;
    v57 = v36;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v34 = &unk_1000E1B30;
    goto LABEL_18;
  }

  sub_1000454C8(&aBlock, &unk_10010A0E0, qword_1000C3700);
  v38 = objc_allocWithZone(NSError);
  v39 = String._bridgeToObjectiveC()();
  v40 = [v38 initWithDomain:v39 code:1001 userInfo:0];

  v41 = [objc_opt_self() mainQueue];
  v42 = swift_allocObject();
  v42[2] = a4;
  v42[3] = a5;
  v42[4] = v40;
  v56 = sub_100085310;
  v57 = v42;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v54 = sub_100088474;
  v55 = &unk_1000E1AE0;
  v43 = _Block_copy(&aBlock);

  v44 = v40;

  [v41 addOperationWithBlock:v43];
  _Block_release(v43);
}

uint64_t sub_10008350C(void *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = a8;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a4);
  v17 = _Block_copy(a5);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v20 = a1;
  sub_100083864(v15, v23, v18, a9, v19);

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1000836E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, const void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = a11;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(a6);
  v19 = _Block_copy(a7);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v22 = a1;
  sub_100083864(v17, a10, v20, v25, v21);

  return (*(v15 + 8))(v17, v14);
}

void sub_100083864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = URL.query.getter();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v32 = URL.path.getter();
    v33 = v13;

    v14._countAndFlagsBits = 63;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);

    v15._countAndFlagsBits = v11;
    v15._object = v12;
    String.append(_:)(v15);

    v16 = v32;
    v17 = v33;
  }

  else
  {
    v16 = URL.path.getter();
    v17 = v18;
  }

  v19 = sub_100083E08(v16, v17);
  v21 = v20;

  if (v21 >> 60 == 15)
  {
    v22 = objc_allocWithZone(NSError);
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 initWithDomain:v23 code:1002 userInfo:0];

    v25 = [objc_opt_self() mainQueue];
    v26 = swift_allocObject();
    v26[2] = a4;
    v26[3] = a5;
    v26[4] = v24;
    v36 = sub_1000855AC;
    v37 = v26;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_100088474;
    v35 = &unk_1000E1A40;
    v27 = _Block_copy(&v32);

    v28 = v24;

    [v25 addOperationWithBlock:v27];
    _Block_release(v27);
  }

  else
  {
    v29 = [objc_opt_self() mainQueue];
    v30 = swift_allocObject();
    v30[2] = a2;
    v30[3] = a3;
    v30[4] = v19;
    v30[5] = v21;
    v36 = sub_1000852A0;
    v37 = v30;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_100088474;
    v35 = &unk_1000E1A90;
    v31 = _Block_copy(&v32);

    sub_10008521C(v19, v21);

    [v29 addOperationWithBlock:v31];
    _Block_release(v31);

    sub_100085230(v19, v21);
  }
}

double sub_100083B90@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = sub_100083E08(a1, a2);
  if (v5 >> 60 == 15)
  {
    sub_100041AA0(&qword_10010A040, &unk_1000C37D0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000C29F0;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 32) = 0x61746164206F6ELL;
    *(v6 + 40) = 0xE700000000000000;
    print(_:separator:terminator:)();
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v9 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v19 = 0;
    v11 = [v9 JSONObjectWithData:isa options:4 error:&v19];

    v12 = v19;
    if (v11)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_100085230(v7, v8);
      swift_unknownObjectRelease();
      return result;
    }

    v14 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100041AA0(&qword_10010A040, &unk_1000C37D0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000C29F0;
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);
    v16._object = 0x80000001000CE100;
    v16._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v16);
    sub_100041AA0(&qword_100109968, &unk_1000C3080);
    _print_unlocked<A, B>(_:_:)();
    v17 = v19;
    v18 = v20;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 32) = v17;
    *(v15 + 40) = v18;
    print(_:separator:terminator:)();
    sub_100085230(v7, v8);
  }

  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

id sub_100083E08(uint64_t a1, unint64_t a2)
{
  v110 = a1;
  v108 = a2;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v105 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v95 - v6;
  v8 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v103 = &v95 - v13;
  v14 = __chkstk_darwin(v12);
  v107 = &v95 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v95 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v95 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v95 - v23;
  __chkstk_darwin(v22);
  v26 = &v95 - v25;
  v106 = v3;
  v109 = v3[7];
  v27 = v109(&v95 - v25, 1, 1, v2);
  v29 = sub_100084BDC(v27, v28);
  v99 = v11;
  if (!v30)
  {
    sub_100041AA0(&qword_100109890, &qword_1000C2CA0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1000C2530;
    *(v36 + 32) = 0xD000000000000010;
    *(v36 + 40) = 0x80000001000CE040;
    v37 = v111;
    v38 = *&v111[OBJC_IVAR____TtC18Feedback_Assistant17FBADataClientStub_testFixtureDir + 8];
    *(v36 + 48) = *&v111[OBJC_IVAR____TtC18Feedback_Assistant17FBADataClientStub_testFixtureDir];
    *(v36 + 56) = v38;
    v112 = v36;

    sub_100041AA0(&unk_10010A850, qword_1000C3418);
    sub_100073E38();
    v104 = v18;
    v39 = BidirectionalCollection<>.joined(separator:)();
    v97 = v39;
    v100 = v7;
    v41 = v40;

    v42 = *&v37[OBJC_IVAR____TtC18Feedback_Assistant17FBADataClientStub_Log];
    v43 = static os_log_type_t.debug.getter();
    v101 = v24;
    v98 = v43;
    v102 = sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1000C2520;
    *(v44 + 56) = &type metadata for String;
    v45 = sub_100047484();
    *(v44 + 32) = 0xD000000000000014;
    *(v44 + 40) = 0x80000001000CE080;
    *(v44 + 96) = &type metadata for String;
    *(v44 + 104) = v45;
    *(v44 + 64) = v45;
    *(v44 + 72) = v39;
    *(v44 + 80) = v41;
    *(v44 + 136) = &type metadata for String;
    *(v44 + 144) = v45;
    v95 = v45;
    v46 = v108;
    *(v44 + 112) = v110;
    *(v44 + 120) = v46;

    v96 = v42;
    os_log(_:dso:log:type:_:)("%s from [<Test Bundle>/%@%@]", 28, 2, &_mh_execute_header, v42, v98, v44);

    v47 = [*&v111[OBJC_IVAR____TtC18Feedback_Assistant17FBADataClientStub_bundle] bundleURL];
    v48 = v105;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = v100;
    v111 = v41;
    URL.appendingPathComponent(_:)();
    v50 = v3[1];
    v50(v48, v2);
    v51 = v101;
    URL.appendingPathComponent(_:)();
    v52 = v104;
    v50(v49, v2);
    sub_1000454C8(v26, &qword_100109790, &unk_1000C29E0);
    v109(v51, 0, 1, v2);
    sub_100052BF8(v51, v26);
    v53 = static os_log_type_t.debug.getter();
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1000C29F0;
    sub_100084D30(v26, v52);
    v55 = v3[6];
    result = v55(v52, 1, v2);
    if (result == 1)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    v57 = v2;

    v58 = URL.path.getter();
    v59 = v95;
    *(v54 + 56) = &type metadata for String;
    *(v54 + 64) = v59;
    *(v54 + 32) = v58;
    *(v54 + 40) = v60;
    v111 = v50;
    v50(v52, v2);
    os_log(_:dso:log:type:_:)("Will load fixture path %@", 25, 2, &_mh_execute_header, v96, v53, v54);
    goto LABEL_13;
  }

  v100 = v29;
  v101 = v3;
  v104 = v30;
  v105 = v26;
  v102 = v2;
  v31 = v110;
  v32 = v108;
  v33 = sub_10008221C(v110, v108);
  v35 = v7;
  if (!v34)
  {
    goto LABEL_10;
  }

  if (v33 != 47 || v34 != 0xE100000000000000)
  {
    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v61)
    {
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

LABEL_9:

  sub_100084DF4(1, v31, v32);

  static String._fromSubstring(_:)();

LABEL_11:
  URL.init(fileURLWithPath:)();
  URL.appendingPathComponent(_:)();
  v62 = v101;
  v63 = v24;
  v64 = v101[1];
  v65 = v35;
  v57 = v102;
  v64(v65, v102);
  v66 = v105;
  sub_1000454C8(v105, &qword_100109790, &unk_1000C29E0);
  v109(v63, 0, 1, v57);
  sub_100052BF8(v63, v66);
  v110 = *&v111[OBJC_IVAR____TtC18Feedback_Assistant17FBADataClientStub_Log];
  LODWORD(v109) = static os_log_type_t.debug.getter();
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1000C2530;
  *(v67 + 56) = &type metadata for String;
  v68 = sub_100047484();
  *(v67 + 64) = v68;
  *(v67 + 32) = 0xD000000000000014;
  *(v67 + 40) = 0x80000001000CE080;
  sub_100084D30(v66, v21);
  v55 = v62[6];
  result = v55(v21, 1, v57);
  if (result == 1)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v69 = URL.description.getter();
  *(v67 + 96) = &type metadata for String;
  *(v67 + 104) = v68;
  *(v67 + 72) = v69;
  *(v67 + 80) = v70;
  v111 = v64;
  v64(v21, v57);
  os_log(_:dso:log:type:_:)("%s URL [%@]", 11, 2, &_mh_execute_header, v110, v109, v67);
  v26 = v105;
LABEL_13:

  v71 = [objc_opt_self() defaultManager];
  v72 = v107;
  sub_100084D30(v26, v107);
  result = v55(v72, 1, v57);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_25;
  }

  URL.path.getter();
  v73 = String._bridgeToObjectiveC()();

  v74 = v72;
  v75 = v111;
  (v111)(v74, v57);
  v76 = [v71 fileExistsAtPath:v73];

  if ((v76 & 1) == 0)
  {
    sub_100084DA0();
    v79 = swift_allocError();
    *v80 = 0xD000000000000013;
    v80[1] = 0x80000001000CE0C0;
    sub_100084EA4(v79, v26);
    sub_1000454C8(v26, &qword_100109790, &unk_1000C29E0);

    return 0;
  }

  v77 = v103;
  sub_100084D30(v26, v103);
  result = v55(v77, 1, v57);
  if (result == 1)
  {
    goto LABEL_26;
  }

  v78 = Data.init(contentsOf:options:)();
  v81 = v75;
  v83 = v82;
  v84 = v78;
  v81(v77, v57);
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    goto LABEL_28;
  }

  v85 = result;
  v86 = v99;
  sub_100084D30(v26, v99);
  v87 = v55(v86, 1, v57);
  sub_1000851C8(v84, v83);
  if (v87 == 1)
  {
    v89 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v88);
    v89 = v90;
    (v111)(v86, v57);
  }

  v91 = objc_allocWithZone(FBKRequestRecordWrapper);
  v92 = String._bridgeToObjectiveC()();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v94 = [v91 initWithURL:v89 httpMethod:v92 responseData:isa];

  [v85 addRequest:v94];
  sub_100046730(v84, v83);

  sub_1000454C8(v26, &qword_100109790, &unk_1000C29E0);
  return v84;
}

id sub_100084968(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBADataClientStub(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100084A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v13 = 0;
  if ((*(v11 + 48))(a1, 1, v10) != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v13 = v14;
    (*(v11 + 8))(a1, v10);
  }

  v15 = String._bridgeToObjectiveC()();

  if (a5 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100085230(a4, a5);
  }

  v17 = [v6 initWithURL:v13 httpMethod:v15 responseData:isa];

  return v17;
}

uint64_t sub_100084B88(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_100084BDC(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 environment];

  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v4 + 16) && (v5 = sub_100065F3C(0x545849465F414246, 0xEC00000053455255), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 16 * v5);
  }

  else
  {

    v8 = [objc_opt_self() standardUserDefaults];
    v9 = [v8 stringForKey:FBKFixturePath];

    if (v9)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_100084D30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100084DA0()
{
  result = qword_10010A860;
  if (!qword_10010A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010A860);
  }

  return result;
}

uint64_t sub_100084DF4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return String.subscript.getter();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = String.index(_:offsetBy:limitedBy:)();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

id sub_100084EA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - v5;
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v11._object = 0x80000001000CE0E0;
  v11._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v11);
  v26 = a1;
  sub_100041AA0(&qword_100109968, &unk_1000C3080);
  _print_unlocked<A, B>(_:_:)();
  sub_100041AA0(&qword_10010A040, &unk_1000C37D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000C29F0;
  swift_getErrorValue();
  v13 = v24[1];
  v14 = v25;
  *(v12 + 56) = v25;
  v15 = sub_100049974((v12 + 32));
  (*(*(v14 - 8) + 16))(v15, v13, v14);
  print(_:separator:terminator:)();

  static String.Encoding.utf8.getter();
  v16 = String.data(using:allowLossyConversion:)();
  v18 = v17;
  (*(v8 + 8))(v10, v7);
  sub_100084D30(a2, v6);
  v19 = objc_allocWithZone(FBKRequestRecordWrapper);
  sub_10008521C(v16, v18);
  v20 = sub_100084A20(v6, 0x45525554584946, 0xE700000000000000, v16, v18);
  v21 = v20;
  if (v20)
  {
    [v20 setIsFailure:1];
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v23 = result;

    [v23 addRequest:v21];

    return sub_100085230(v16, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000851C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10008521C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000851C8(result, a2);
  }

  return result;
}

uint64_t sub_100085230(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100046730(result, a2);
  }

  return result;
}

uint64_t sub_100085248(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100085260()
{

  sub_100046730(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000852D0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100085374()
{

  sub_1000466E4((v0 + 32));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000853B4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000853FC()
{
  v1 = *(v0 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

void sub_100085454()
{
  v1 = *(v0 + 16);
  v2 = _convertErrorToNSError(_:)();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1000854AC(uint64_t a1, int a2)
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

uint64_t sub_1000854F4(uint64_t result, int a2, int a3)
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

uint64_t sub_1000855B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for FBASmartMailbox(a1, a2);
  v4 = objc_msgSendSuper2(&v11, "diffableIdentifier");
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v12 = v5;
  v13 = v7;
  v8._countAndFlagsBits = 45;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  [v3 unreadCountForTeam:0];
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  return v12;
}

uint64_t sub_1000858FC(uint64_t a1)
{
  sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr);
  v3 = [swift_getObjCClassFromMetadata() entityName];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v3];

    v6 = [v1 predicateForTeam:a1];
    [v5 setPredicate:v6];

    v7 = [objc_opt_self() sharedInstance];
    v8 = [v7 mainQueueContext];

    if (v8)
    {
      v9 = NSManagedObjectContext.count<A>(for:)();

      if ((v9 & 0x8000000000000000) == 0)
      {
        return v9;
      }

      __break(1u);
    }

    return 0;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_100085B6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = [objc_opt_self() mainBundle];
  v16._object = 0xE000000000000000;
  v10._countAndFlagsBits = a3;
  v10._object = a4;
  v11.value._countAndFlagsBits = v6;
  v11.value._object = v8;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v16);

  v13 = String._bridgeToObjectiveC()();

  return v13;
}

uint64_t sub_100085C60(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = [v5 currentUser];

  if (v6)
  {
    sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr);
    v7 = [swift_getObjCClassFromMetadata() entityName];
    if (!v7)
    {
LABEL_20:
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v8 = v7;
    v9 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v7];

    v21[4] = [v2 predicateForTeam:a1];
    v10 = objc_opt_self();
    v21[5] = [v10 needsActionPredicate];
    v11 = 0;
    v21[6] = [v10 assignedPredicateForUser:v6];
LABEL_4:
    if (v11 <= 3)
    {
      v12 = 3;
    }

    else
    {
      v12 = v11;
    }

    while (v11 != 3)
    {
      if (v12 == v11)
      {
        __break(1u);
        goto LABEL_20;
      }

      v13 = v21[v11++ + 4];
      if (v13)
      {
        v14 = v13;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_4;
      }
    }

    sub_100041AA0(&qword_10010A9A8, qword_1000C38D8);
    swift_arrayDestroy();
    sub_1000497E4(0, &qword_10010A3F8, NSPredicate_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v16 = [objc_opt_self() andPredicateWithSubpredicates:isa];

    [v9 setPredicate:v16];
    v17 = [v4 sharedInstance];
    v18 = [v17 mainQueueContext];

    if (v18)
    {
      v19 = NSManagedObjectContext.count<A>(for:)();

      result = v19;
      if ((v19 & 0x8000000000000000) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  return 0;
}

uint64_t sub_10008615C(uint64_t a1)
{
  sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr);
  v3 = [swift_getObjCClassFromMetadata() entityName];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v3];

    sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000C2E20;
    v7 = [v1 predicateForTeam:a1];
    if (v7)
    {
      *(v6 + 32) = v7;
      sub_1000497E4(0, &qword_10010A3F8, NSPredicate_ptr);
      *(v6 + 40) = NSPredicate.init(format:_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v9 = [objc_opt_self() andPredicateWithSubpredicates:isa];

      [v5 setPredicate:v9];
      v10 = [objc_opt_self() sharedInstance];
      v11 = [v10 mainQueueContext];

      if (v11)
      {
        v12 = NSManagedObjectContext.count<A>(for:)();

        if ((v12 & 0x8000000000000000) == 0)
        {
          return v12;
        }

        __break(1u);
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_1000864F8(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, "init");
}

id sub_100086554(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1000866B4()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  Date.init(timeIntervalSinceNow:)();
  Date.init()();
  sub_100041AA0(&qword_10010A040, &unk_1000C37D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000C2530;
  *(v7 + 56) = v0;
  v8 = sub_100049974((v7 + 32));
  v9 = *(v1 + 16);
  v9(v8, v6, v0);
  *(v7 + 88) = v0;
  v10 = sub_100049974((v7 + 64));
  v9(v10, v4, v0);
  v11 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [objc_opt_self() predicateWithFormat:v11 argumentArray:isa];

  v14 = *(v1 + 8);
  v14(v4, v0);
  v14(v6, v0);
  return v13;
}

id sub_1000868BC()
{
  sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000C2E20;
  sub_1000497E4(0, &qword_10010A3F8, NSPredicate_ptr);
  *(v0 + 32) = NSPredicate.init(format:_:)();
  *(v0 + 40) = [objc_opt_self() isSurveyAvailablePredicate];
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  return v2;
}

unint64_t sub_1000869B8()
{
  result = qword_100109998;
  if (!qword_100109998)
  {
    sub_1000497E4(255, &qword_100109990, FBKContentItem_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100109998);
  }

  return result;
}

id sub_100086AD0()
{
  v1 = OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell____lazy_storage___choiceLabel;
  v2 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell____lazy_storage___choiceLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell____lazy_storage___choiceLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setNumberOfLines:0];
    v5 = [objc_opt_self() secondaryLabelColor];
    [v4 setTextColor:v5];

    v6 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCallout];
    [v4 setFont:v6];

    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100086BEC(char a1, uint64_t a2)
{
  if (a1 == 2)
  {
    v3 = [objc_opt_self() mainBundle];
    v13 = 0xE000000000000000;
    v4 = 0x80000001000CE520;
    v5 = 0xD000000000000014;
  }

  else
  {
    v3 = [objc_opt_self() mainBundle];
    v13 = 0xE000000000000000;
    if (a1)
    {
      v5 = 5457241;
      v4 = 0xE300000000000000;
    }

    else
    {
      v5 = 20302;
      v4 = 0xE200000000000000;
    }
  }

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8 = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, 0, v3, v7, *(&v13 - 1));

  v9 = sub_100086AD0();
  v10 = String._bridgeToObjectiveC()();

  [v9 setText:v10];

  v11 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell____lazy_storage___choiceLabel);

  return [v11 sizeToFit];
}

void sub_100086D44(uint64_t a1, uint64_t a2)
{
  v12.receiver = v2;
  v12.super_class = type metadata accessor for FBAFFUValidationCell(a1, a2);
  objc_msgSendSuper2(&v12, "awakeFromNib");
  v3 = sub_100086AD0();
  [v2 setAccessoryView:v3];

  v4 = [objc_opt_self() mainBundle];
  v13._object = 0xE000000000000000;
  v5._object = 0x80000001000CE520;
  v5._countAndFlagsBits = 0xD000000000000014;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v13);

  v7 = sub_100086AD0();
  v8 = String._bridgeToObjectiveC()();

  [v7 setText:v8];

  [*&v2[OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell____lazy_storage___choiceLabel] sizeToFit];
  v9 = [v2 textLabel];
  if (v9)
  {
    v10 = v9;

    v11 = String._bridgeToObjectiveC()();

    [v10 setText:v11];
  }
}

id sub_100086F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = &v3[OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_itemIdentifier];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = &v3[OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_validationQuery];
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_choice] = 2;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell____lazy_storage___choiceLabel] = 0;
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for FBAFFUValidationCell(a1, a2);
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:", v4, v7);

  return v8;
}

id sub_100087028(void *a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_itemIdentifier];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = &v2[OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_validationQuery];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v2[OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_choice] = 2;
  *&v2[OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell____lazy_storage___choiceLabel] = 0;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for FBAFFUValidationCell(a1, a2);
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1000870F8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBAFFUValidationCell(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000871B4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

Class sub_1000872C0(void *a1, uint64_t a2, void *a3)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = a1;
  sub_100087600(v4, v6);

  sub_1000497E4(0, &qword_10010AA48, NSManagedObject_ptr);
  sub_100087CD4();
  v8.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

uint64_t sub_1000873C8()
{
  isa = Notification._bridgeToObjectiveC()().super.isa;
  v1 = [(objc_class *)isa userInfo];

  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v9 + 1) = v3;
  AnyHashable.init<A>(_:)();
  if (!*(v2 + 16) || (v4 = sub_100065FB4(v8), (v5 & 1) == 0))
  {

    sub_100065FF8(v8);
LABEL_7:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_8;
  }

  sub_100046784(*(v2 + 56) + 32 * v4, &v9);
  sub_100065FF8(v8);

  if (!*(&v10 + 1))
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = 1;
LABEL_9:
  sub_100080658(&v9);
  return v6;
}

uint64_t sub_10008752C()
{
  Notification.object.getter();
  if (v3)
  {
    sub_1000497E4(0, &qword_10010AA40, NSManagedObjectContext_ptr);
    if (swift_dynamicCast())
    {
      return v1;
    }
  }

  else
  {
    sub_100080658(v2);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100087600(uint64_t a1, uint64_t a2)
{
  isa = Notification._bridgeToObjectiveC()().super.isa;
  v5 = [(objc_class *)isa userInfo];

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v11 = a1;
  *(&v11 + 1) = a2;

  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v7 = sub_100065FB4(v10), (v8 & 1) == 0))
  {

    sub_100065FF8(v10);
LABEL_8:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_9;
  }

  sub_100046784(*(v6 + 56) + 32 * v7, &v11);
  sub_100065FF8(v10);

  if (!*(&v12 + 1))
  {
LABEL_9:
    sub_100080658(&v11);
    return &_swiftEmptySetSingleton;
  }

  sub_100041AA0(&qword_10010AA38, qword_1000C3970);
  if (swift_dynamicCast())
  {
    return v10[0];
  }

  return &_swiftEmptySetSingleton;
}

id sub_100087790()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBAManagedObjectChanges(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FBAManagedObjectChanges(uint64_t a1)
{
  result = qword_10010AA28;
  if (!qword_10010AA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100087888(uint64_t a1)
{
  result = type metadata accessor for Notification();
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

id sub_100087918(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() defaultCenter];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v10[4] = sub_100087CB4;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000871B4;
  v10[3] = &unk_1000E1EC8;
  v7 = _Block_copy(v10);

  v8 = [v5 addObserverForName:NSManagedObjectContextObjectsDidChangeNotification object:v2 queue:0 usingBlock:v7];
  _Block_release(v7);

  return v8;
}

void sub_100087A50(uint64_t a1, void (*a2)(id))
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7, a1, v4);
  v9 = type metadata accessor for FBAManagedObjectChanges(0);
  v10 = objc_allocWithZone(v9);
  v8(&v10[OBJC_IVAR____TtC18Feedback_Assistant23FBAManagedObjectChanges_notification], v7, v4);
  v12.receiver = v10;
  v12.super_class = v9;
  v11 = objc_msgSendSuper2(&v12, "init");
  (*(v5 + 8))(v7, v4);
  a2(v11);
}

uint64_t sub_100087C44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100087C7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100087CBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100087CD4()
{
  result = qword_10010AA50;
  if (!qword_10010AA50)
  {
    sub_1000497E4(255, &qword_10010AA48, NSManagedObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010AA50);
  }

  return result;
}

void sub_100087D3C(uint64_t a1, uint64_t a2)
{
  sub_1000497E4(0, &qword_1001098C8, FBKGroupedDevice_ptr);
  sub_10005327C();
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

id sub_100087EE0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBADevicePickerCoordinator(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100087F38()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100087F70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000497E4(0, &qword_1001098C8, FBKGroupedDevice_ptr);
  sub_10005327C();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t sub_100088000(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1000531A8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100088474;
  aBlock[3] = &unk_1000E1F68;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  v15 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006CCFC();
  sub_100041AA0(&unk_100109980, &qword_1000C1B50);
  sub_100041AE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v18);
}

void sub_10008829C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(FBADevicePickingNavigationController);
  sub_1000497E4(0, &qword_1001098C8, FBKGroupedDevice_ptr);
  sub_10005327C();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100087F70;
  v12[3] = &unk_1000E1F18;
  v9 = _Block_copy(v12);

  v10 = [v7 initWithDeviceChoices:isa allowsMultipleSelection:1 completion:v9];

  _Block_release(v9);

  if (v10)
  {
    v11 = v10;
    sub_100088000(v11, a2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000883D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000883EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100088444()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_100088474(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_1000885D0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [objc_opt_self() tintColor];
  [v5 setTintColor:v6];

  v7 = [v0 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  sub_100088824(v8);
  [v0 setIsAccessibilityElement:1];
  v9 = UIAccessibilityTraitButton;

  return [v0 setAccessibilityTraits:v9];
}

void sub_100088824(uint64_t a1)
{
  v1 = UIContentSizeCategory.isAccessibilityCategory.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if ((v1 & 1) == 0)
  {
    if (Strong)
    {
      [Strong setNumberOfLines:1];

      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v5 = v7;
        v6 = 24.0;
        goto LABEL_8;
      }

LABEL_14:
      __break(1u);
      return;
    }

    goto LABEL_12;
  }

  if (!Strong)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [Strong setNumberOfLines:2];

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  v6 = 32.0;
LABEL_8:
  v8 = [objc_opt_self() boldSystemFontOfSize:v6];
  [v5 setFont:v8];
}

void sub_100088954(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = Strong;
  v6 = [a1 displayText];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  [v5 setText:v6];

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [a1 iconConfiguration];
  [v8 setPreferredSymbolConfiguration:v9];

  v10 = [a1 unreadCountForTeam:0];
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  dispatch thunk of CustomStringConvertible.description.getter();
  v13 = String._bridgeToObjectiveC()();

  [v12 setText:v13];

  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = [a1 icon];
  if (v16)
  {
    v17 = v16;
    v18 = [objc_opt_self() configurationWithPointSize:20.0];
    v19 = [v17 imageByApplyingSymbolConfiguration:v18];
  }

  else
  {
    v19 = 0;
  }

  [v15 setImage:v19];

  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
    goto LABEL_19;
  }

  v21 = v20;
  v22 = [objc_opt_self() tintColor];
  [v21 setTintColor:v22];

  sub_100088D84(v10, a1);
  if (v23)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  [v2 setAccessibilityLabel:v24];

  v25 = [v2 contentView];
  v26 = [v25 layer];

  [v26 setCornerRadius:15.0];
  v27 = [v2 contentView];
  v28 = [v27 layer];

  [v28 setBorderWidth:1.0];
  v29 = [v2 contentView];
  v30 = [v29 layer];

  v31 = [objc_opt_self() clearColor];
  v32 = [v31 CGColor];

  [v30 setBorderColor:v32];
  v33 = [v2 contentView];
  v34 = [v33 layer];

  [v34 setMasksToBounds:1];
}

uint64_t sub_100088D84(uint64_t a1, id a2)
{
  v4 = [a2 isCountingUnreadOnly];
  v5 = v4;
  if (a1 == 1)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v9 = [objc_opt_self() mainBundle];
    v38 = 0xE000000000000000;
    if (v5)
    {
      v10 = 0xD000000000000021;
      v11 = 0x80000001000CE890;
    }

    else
    {
      v10 = 0xD00000000000001ALL;
      v11 = 0x80000001000CE870;
    }

    v12.value._countAndFlagsBits = v6;
    v12.value._object = v8;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v14 = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v10, v12, v9, v13, *(&v38 - 1));

    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000C29F0;
    v26 = [a2 displayText];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100047484();
    *(v15 + 32) = v27;
    *(v15 + 40) = v29;
  }

  else
  {
    if (v4)
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
      v19 = [objc_opt_self() mainBundle];
      v39 = 0xE000000000000000;
      v20 = 0x80000001000CE850;
      v21 = 0xD000000000000013;
    }

    else
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v30;
      v19 = [objc_opt_self() mainBundle];
      v39 = 0xE000000000000000;
      v21 = 0x69207525202C4025;
      v20 = 0xEC000000736D6574;
    }

    v22.value._countAndFlagsBits = v16;
    v22.value._object = v18;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v24 = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v21, v22, v19, v23, *(&v39 - 1));

    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1000C2530;
    v31 = [a2 displayText];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    *(v25 + 56) = &type metadata for String;
    v35 = sub_100047484();
    *(v25 + 32) = v32;
    *(v25 + 40) = v34;
    *(v25 + 96) = &type metadata for UInt;
    *(v25 + 104) = &protocol witness table for UInt;
    *(v25 + 64) = v35;
    *(v25 + 72) = a1;
  }

  v36 = String.init(format:arguments:)();

  return v36;
}

void sub_10008920C(char *a1)
{
  v1 = [a1 contentView];
  v2 = [objc_opt_self() tintColor];
  [v1 setBackgroundColor:v2];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = Strong;
  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  [v4 setTextColor:v6];

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = [v5 whiteColor];
  [v8 setTextColor:v9];
}

void sub_100089358(char *a1)
{
  v1 = [a1 contentView];
  v2 = objc_opt_self();
  v3 = [v2 tableCellGroupedBackgroundColor];
  [v1 setBackgroundColor:v3];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = Strong;
  v6 = [v2 labelColor];
  [v5 setTextColor:v6];

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = [v2 labelColor];
  [v8 setTextColor:v9];
}

void sub_100089534(char a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  if (a1)
  {
    v13 = sub_10008991C;
    v14 = v5;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v6 = &unk_1000E2088;
  }

  else
  {
    v13 = sub_1000898FC;
    v14 = v5;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v6 = &unk_1000E2038;
  }

  v11 = sub_100088474;
  v12 = v6;
  v7 = _Block_copy(&v9);
  v8 = v2;

  [v4 animateWithDuration:v7 animations:{0.07, v9, v10}];
  _Block_release(v7);
}

id sub_100089744(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3 = swift_unknownObjectWeakInit();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FBASmartMailboxCell(v3, v4);
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_100089810(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBASmartMailboxCell(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000898C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100089904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100089B78()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleState;
  if (v0[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleState])
  {
    v3 = OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleView;
    v4 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleView];
    if (!v4)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    [v4 setHidden:0];
    v79 = v3;
    if (v0[v2] == 4)
    {
      v5 = OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleLabel;
      v6 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleLabel];
      if (!v6)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v7 = objc_opt_self();
      v8 = v6;
      v9 = [v7 tintColor];
      [v8 setTextColor:v9];

      if (qword_100108E20 == -1)
      {
        v10 = *(v1 + v3);
        if (v10)
        {
LABEL_7:
          v11 = *&v5[v1];
          if (!v11)
          {
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          v12 = *(&xmmword_10010AAC8 + 1);
          v13 = *&xmmword_10010AAC8;
          v14 = qword_10010AAD8;
          v15 = unk_10010AAE0;
          v16 = qword_10010AAE8;
          v17 = unk_10010AAF0;
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v19 = Strong;
          v78 = v16;
          v20 = swift_unknownObjectWeakLoadStrong();
          if (!v20)
          {
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          v21 = v20;
          v22 = v10;
          v23 = v11;
          v24 = [v22 layer];
          [v24 setBorderWidth:v15];

          v25 = [v22 layer];
LABEL_24:
          v38 = v25;
          [v38 setCornerRadius:*&v14];

          [v22 setBackgroundColor:v17];
          [v19 setConstant:v13];
          [v21 setConstant:v12];
          [v23 setFont:v78];

          v39 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleLabel);
          if (*(v1 + v2) == 1)
          {
            if (!v39)
            {
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v40 = &selRef_systemGrayColor;
          }

          else
          {
            if (!v39)
            {
LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

            v40 = &selRef_tintColor;
          }

          v41 = objc_opt_self();
          v42 = v39;
          v43 = [v41 *v40];
          [v42 setTextColor:v43];

          sub_10008A49C();
          v44 = *(v1 + v2);
          v45 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleLabel);
          if (v44 == 4)
          {
            if (!v45)
            {
LABEL_70:
              __break(1u);
              goto LABEL_71;
            }

            v54 = objc_opt_self();
            v50 = v45;
            v51 = [v54 mainBundle];
            v81._object = 0x80000001000CEB30;
            v55._countAndFlagsBits = 0x4E47495353414552;
            v56._countAndFlagsBits = 0x6E67697373616552;
            v55._object = 0xE800000000000000;
            v56._object = 0xE800000000000000;
            v81._countAndFlagsBits = 0xD000000000000056;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v55, 0, v51, v56, v81);
          }

          else
          {
            if (v44 == 1)
            {
              if (!v45)
              {
LABEL_69:
                __break(1u);
                goto LABEL_70;
              }

              v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v48 = v47;
              v49 = objc_opt_self();
              v50 = v45;
              v51 = [v49 mainBundle];
              v77 = 0xE000000000000000;
              v52 = 0x54414E494749524FLL;
              v53 = 0xEA0000000000524FLL;
            }

            else
            {
              if (!v45)
              {
LABEL_71:
                __break(1u);
                return;
              }

              v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v48 = v57;
              v58 = objc_opt_self();
              v50 = v45;
              v51 = [v58 mainBundle];
              v77 = 0xE000000000000000;
              v52 = 0x45454E4749535341;
              v53 = 0xE800000000000000;
            }

            v59.value._countAndFlagsBits = v46;
            v59.value._object = v48;
            v60._countAndFlagsBits = 0;
            v60._object = 0xE000000000000000;
            v61 = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(*&v52, v59, v51, v60, *(&v77 - 1));
          }

          v62 = String._bridgeToObjectiveC()();

          [v50 setText:v62];

          v63 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleLabel);
          if (v63)
          {
            v64 = v63;
            v65 = [v64 text];
            if (v65)
            {
              v66 = v65;
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100045528();
              StringProtocol.localizedUppercase.getter();

              v67 = String._bridgeToObjectiveC()();
            }

            else
            {
              v67 = 0;
            }

            [v64 setText:v67];

            v68 = OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleCenteringConstraint;
            [*(v1 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleCenteringConstraint) setActive:0];
            if (*(v1 + v2) == 4)
            {
              v69 = [v1 contentView];
              v70 = [v69 centerYAnchor];

              v71 = *(v1 + v79);
              if (v71)
              {
                goto LABEL_47;
              }

              __break(1u);
            }

            v72 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_dateLabel);
            if (v72)
            {
              v70 = [v72 centerYAnchor];
              v71 = *(v1 + v79);
              if (v71)
              {
LABEL_47:
                v73 = [v71 centerYAnchor];
                v74 = [v70 constraintEqualToAnchor:v73];

                v75 = *(v1 + v68);
                *(v1 + v68) = v74;
                v76 = v74;

                if (v76)
                {
                  [v76 setActive:1];
                }

                return;
              }

              goto LABEL_68;
            }

LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          goto LABEL_55;
        }

        goto LABEL_53;
      }

LABEL_52:
      swift_once();
      v10 = *(v1 + v3);
      if (v10)
      {
        goto LABEL_7;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (qword_100108E28 == -1)
    {
      v5 = *&v0[v3];
      if (v5)
      {
LABEL_20:
        v32 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleLabel];
        if (!v32)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v12 = *(&xmmword_10010AAF8 + 1);
        v13 = *&xmmword_10010AAF8;
        v14 = qword_10010AB08;
        v33 = unk_10010AB10;
        v34 = qword_10010AB18;
        v17 = unk_10010AB20;
        v35 = swift_unknownObjectWeakLoadStrong();
        if (!v35)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v19 = v35;
        v78 = v34;
        v36 = swift_unknownObjectWeakLoadStrong();
        if (!v36)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v21 = v36;
        v22 = v5;
        v23 = v32;
        v37 = [v22 layer];
        [v37 setBorderWidth:v33];

        v25 = [v22 layer];
        goto LABEL_24;
      }
    }

    else
    {
      swift_once();
      v5 = *&v0[v3];
      if (v5)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

  v26 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleLabel];
  if (!v26)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v27 = v26;
  v28 = String._bridgeToObjectiveC()();
  [v27 setText:v28];

  v29 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleView);
  if (!v29)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  [v29 setHidden:1];
  v30 = OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleCenteringConstraint;
  v31 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleCenteringConstraint);
  if (v31)
  {
    [v31 setActive:0];
    v31 = *(v1 + v30);
  }

  *(v1 + v30) = 0;
}

void sub_10008A49C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleView);
  if (*(v0 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleState) != 1)
  {
    if (v1)
    {
      v2 = [v1 layer];
      v5 = [objc_opt_self() tintColor];
      if (v5)
      {
        v3 = v5;
        v4 = [v5 CGColor];
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = [v1 layer];
  v3 = [objc_opt_self() systemGrayColor];
  v4 = [v3 CGColor];
LABEL_7:
  v6 = v4;

  [v2 setBorderColor:v6];
}

void sub_10008A5CC(uint64_t a1, uint64_t a2)
{
  v18.receiver = v2;
  v18.super_class = type metadata accessor for FBAResponseHeaderCell(a1, a2);
  objc_msgSendSuper2(&v18, "awakeFromNib");
  v3 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_nameLabel];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_dateLabel];
  if (!v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_contactImageView;
  v6 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_contactImageView];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleLabel];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleView;
  v9 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleView];
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = *&v2[v5];
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = [v10 layer];
  v12 = *&v2[v5];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v12 frame];
  [v11 setCornerRadius:v13 * 0.5];

  v14 = *&v2[v8];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = [v14 layer];
  [v15 setCornerRadius:5.0];

  v16 = *&v2[v8];
  if (v16)
  {
    v17 = [v16 layer];
    [v17 setBorderWidth:1.0];

    return;
  }

LABEL_19:
  __break(1u);
}

void sub_10008A7C0(void *a1)
{
  if (!a1)
  {
    v9 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_nameLabel);
    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
      v13 = objc_opt_self();
      v14 = v9;
      v15 = [v13 mainBundle];
      v25._object = 0xE000000000000000;
      v16._countAndFlagsBits = 0x5F4E574F4E4B4E55;
      v16._object = 0xEC00000052455355;
      v17.value._countAndFlagsBits = v10;
      v17.value._object = v12;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v25._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v25);

      v19 = String._bridgeToObjectiveC()();

      [v14 setText:v19];

      v20 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_contactImageView);
      if (v20)
      {
        v21 = FBKSystemImageNameGenericUser;
        v22 = objc_opt_self();
        v8 = v20;
        v23 = [v22 systemImageNamed:v21];
        [v8 setImage:?];
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      return;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_nameLabel);
  if (!v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v2;
  v5 = a1;
  v6 = [v5 fullName];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  [v4 setText:v6];

  v7 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_contactImageView);
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  v23 = [v5 contactImage];
  [v8 setImage:?];

LABEL_10:
}

void sub_10008AA2C(void *a1)
{
  v2 = v1;
  v4 = [a1 originator];
  sub_10008A7C0(v4);

  v5 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_dateLabel];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [a1 formattedCreationDate];
  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  [v6 setText:v7];

  v8 = [a1 singleTeam];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 teamType];

    if (!v10)
    {
      v16 = 0;
      goto LABEL_16;
    }
  }

  v11 = [a1 originator];
  v12 = [a1 assignee];
  v14 = v12;
  if (v11)
  {
    if (v12)
    {
      sub_10008C324(0, v13);
      v15 = static NSObject.== infix(_:_:)();

      if ((v15 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    v14 = v11;
LABEL_14:

LABEL_15:
    v16 = 1;
    goto LABEL_16;
  }

  if (v12)
  {
    goto LABEL_14;
  }

LABEL_11:
  v16 = 3;
LABEL_16:
  v2[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleState] = v16;
  sub_100089B78();
  if ([a1 canReassignFeedback])
  {
    v17 = 3;
  }

  else
  {
    v17 = 0;
  }

  [v2 setSelectionStyle:v17];
}

void sub_10008AC64(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v67 - v10;
  __chkstk_darwin(v9);
  v13 = &v67 - v12;
  v14 = [a1 originator];
  sub_10008A7C0(v14);

  v15 = [a1 respondedToAt];
  if (v15)
  {
    v16 = v15;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v13, v11, v4);
    v17 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_dateLabel);
    if (!v17)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v18 = qword_100108E18;
    v19 = v17;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = qword_10010AAC0;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v22 = [v20 stringFromDate:isa];

    if (!v22)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = String._bridgeToObjectiveC()();
    }

    [v19 setText:v22];

    (*(v5 + 8))(v13, v4);
  }

  else
  {
    v23 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_dateLabel);
    if (!v23)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v24 = qword_100108E18;
    v25 = v23;
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = qword_10010AAC0;
    v27 = [a1 createdAt];
    if (!v27)
    {
      goto LABEL_57;
    }

    v28 = v27;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = Date._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v8, v4);
    v30 = [v26 stringFromDate:v29];

    if (!v30)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = String._bridgeToObjectiveC()();
    }

    [v25 setText:v30];
  }

  v31 = [a1 feedback];
  if (!v31)
  {
    __break(1u);
    goto LABEL_55;
  }

  v32 = v31;
  v33 = [v31 contentItem];

  if (v33)
  {
    v34 = [v33 singleTeam];
    if (v34)
    {
      v35 = v34;
      v36 = [v34 teamType];

      if (!v36)
      {
        goto LABEL_50;
      }
    }

    v37 = [a1 originator];
    v38 = [v33 originator];
    v40 = v38;
    if (v37)
    {
      if (!v38)
      {
LABEL_31:
        v40 = v37;
        goto LABEL_33;
      }

      sub_10008C324(0, v39);
      v41 = static NSObject.== infix(_:_:)();

      if ((v41 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (v38)
    {
      goto LABEL_33;
    }

    v37 = [v33 originator];
    v52 = [v33 assignee];
    v40 = v52;
    if (v37)
    {
      if (v52)
      {
        sub_10008C324(0, v53);
        v54 = static NSObject.== infix(_:_:)();

        if ((v54 & 1) == 0)
        {
LABEL_34:
          v55 = [a1 originator];
          v56 = [v33 originator];
          v58 = v56;
          if (v55)
          {
            if (v56)
            {
              sub_10008C324(0, v57);
              v59 = static NSObject.== infix(_:_:)();

              if ((v59 & 1) == 0)
              {
LABEL_42:
                v62 = [a1 originator];
                v63 = [v33 assignee];
                v65 = v63;
                if (v62)
                {
                  if (v63)
                  {
                    sub_10008C324(0, v64);
                    v66 = static NSObject.== infix(_:_:)();

                    if ((v66 & 1) == 0)
                    {
                      goto LABEL_50;
                    }

                    goto LABEL_47;
                  }

                  v65 = v62;
                }

                else if (!v63)
                {
LABEL_47:
                  v60 = OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleState;
                  v61 = 2;
                  goto LABEL_52;
                }

LABEL_50:
                *(v2 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleState) = 0;
LABEL_53:
                sub_100089B78();

                return;
              }

LABEL_39:
              v60 = OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleState;
              v61 = 1;
LABEL_52:
              *(v2 + v60) = v61;
              goto LABEL_53;
            }

            v58 = v55;
          }

          else if (!v56)
          {
            goto LABEL_39;
          }

          goto LABEL_42;
        }

LABEL_51:
        v60 = OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleState;
        v61 = 3;
        goto LABEL_52;
      }

      goto LABEL_31;
    }

    if (!v52)
    {
      goto LABEL_51;
    }

LABEL_33:

    goto LABEL_34;
  }

  v42 = static os_log_type_t.error.getter();
  v43 = [objc_opt_self() appHandle];
  if (v43)
  {
    v44 = v43;
    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1000C29F0;
    v46 = [a1 ID];
    if (v46)
    {
      v47 = v46;
      v48 = [v46 stringValue];

      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = sub_100047484();
      *(v45 + 32) = v49;
      *(v45 + 40) = v51;
      os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, v44, "Configuring cell for a followup without a content item [%{public}@].", 68, 2, v45);

      return;
    }

    goto LABEL_59;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

id sub_10008B3B0(void *a1)
{
  v3 = [a1 assignee];
  sub_10008A7C0(v3);

  if ([a1 canReassignFeedback])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  [v1 setSelectionStyle:v4];
  result = [a1 isOrphaned];
  v6 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_dateLabel];
  if (result)
  {
    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      v10 = objc_opt_self();
      v11 = v6;
      v12 = [v10 mainBundle];
      v30._object = 0xE000000000000000;
      v13._countAndFlagsBits = 0x44454E414850524FLL;
      v13._object = 0xEE004C4542414C5FLL;
      v14.value._countAndFlagsBits = v7;
      v14.value._object = v9;
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      v30._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v30);

      v16 = String._bridgeToObjectiveC()();

      [v11 setText:v16];

      if ([a1 canReassignFeedback])
      {
        v17 = 4;
      }

      else
      {
        v17 = 0;
      }

      v1[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleState] = v17;
      sub_100089B78();
      v18 = 0;
      goto LABEL_12;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (!v6)
  {
    goto LABEL_16;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  v22 = objc_opt_self();
  v23 = v6;
  v24 = [v22 mainBundle];
  v31._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0x45454E4749535341;
  v25._object = 0xE800000000000000;
  v26.value._countAndFlagsBits = v19;
  v26.value._object = v21;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v31);

  v28 = String._bridgeToObjectiveC()();

  [v23 setText:v28];

  v1[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleState] = 0;
  sub_100089B78();
  v18 = [a1 canReassignFeedback];
LABEL_12:

  return [v1 setAccessoryType:v18];
}

void sub_10008B6E4(void *a1)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_nameLabel);
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = objc_opt_self();
  v12 = v7;
  v13 = [v11 mainBundle];
  v33._object = 0x80000001000CEB10;
  v14._object = 0x80000001000CEAF0;
  v33._countAndFlagsBits = 0xD00000000000001FLL;
  v14._countAndFlagsBits = 0xD000000000000013;
  v15.value._countAndFlagsBits = v8;
  v15.value._object = v10;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v33);

  v17 = String._bridgeToObjectiveC()();

  [v12 setText:v17];

  v18 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_dateLabel);
  if (!v18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = qword_100108E18;
  v20 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_10010AAC0;
  v22 = [v32 createdAt];
  if (!v22)
  {
    goto LABEL_12;
  }

  v23 = v22;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);
  v25 = [v21 stringFromDate:isa];

  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  [v20 setText:v25];

  v26 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_contactImageView);
  if (v26)
  {
    v27 = FBKImageNameAppleAvatar;
    v28 = objc_opt_self();
    v29 = v26;
    v30 = [v28 imageNamed:v27];
    [v29 setImage:v30];

    *(v2 + OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleState) = 0;
    sub_100089B78();
    return;
  }

LABEL_13:
  __break(1u);
}

id sub_10008BBF4()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  [v0 setDateStyle:2];
  result = [v0 setTimeStyle:1];
  qword_10010AAC0 = v0;
  return result;
}

id sub_10008BC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_nameLabel] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_dateLabel] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_contactImageView] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleView] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleLabel] = 0;
  swift_unknownObjectWeakInit();
  v6 = swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleCenteringConstraint] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleState] = 0;
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for FBAResponseHeaderCell(v6, v7);
  v9 = objc_msgSendSuper2(&v11, "initWithStyle:reuseIdentifier:", a1, v8);

  return v9;
}

id sub_10008BDA8(void *a1)
{
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_nameLabel] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_dateLabel] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_contactImageView] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleView] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleLabel] = 0;
  swift_unknownObjectWeakInit();
  v3 = swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleCenteringConstraint] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant21FBAResponseHeaderCell_roleState] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FBAResponseHeaderCell(v3, v4);
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_10008BEAC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBAResponseHeaderCell(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t getEnumTagSinglePayload for RoleState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RoleState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10008C104()
{
  result = qword_10010AB98;
  if (!qword_10010AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010AB98);
  }

  return result;
}

double sub_10008C158(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() boldSystemFontOfSize:14.0];
  v3 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCaption1];
  v4 = [v3 scaledFontForFont:v2 maximumPointSize:18.0];

  v5 = [objc_opt_self() tertiarySystemFillColor];
  result = 15.0;
  xmmword_10010AAC8 = xmmword_1000C3AC0;
  *&qword_10010AAD8 = xmmword_1000C3AD0;
  qword_10010AAE8 = v4;
  unk_10010AAF0 = v5;
  return result;
}

double sub_10008C238(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() systemFontOfSize:10.0 weight:UIFontWeightBold];
  v3 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCaption1];
  v4 = [v3 scaledFontForFont:v2 maximumPointSize:18.0];

  v5 = [objc_opt_self() clearColor];
  result = 7.0;
  xmmword_10010AAF8 = xmmword_1000C3AE0;
  *&qword_10010AB08 = xmmword_1000C3AF0;
  qword_10010AB18 = v4;
  unk_10010AB20 = v5;
  return result;
}

unint64_t sub_10008C324(uint64_t a1, uint64_t a2)
{
  result = qword_100109C18;
  if (!qword_100109C18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100109C18);
  }

  return result;
}

uint64_t sub_10008C370()
{
  v0 = type metadata accessor for Logger();
  sub_100046848(v0, qword_10010CEE8);
  sub_1000466AC(v0, qword_10010CEE8);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Logger.init(subsystem:category:)();
}

void sub_10008C3E8()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = [v11 BOOLForKey:FBKDirectoriesMigratorDidRun];

  if (v12)
  {
    if (qword_100108E30 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000466AC(v14, qword_10010CEE8);
    v22 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v22, v15, "Directory migration already done", v16, 2u);
    }

    v17 = v22;
  }

  else
  {
    sub_100041A4C(0, v13);
    (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.background(_:), v7);
    v18 = static OS_dispatch_queue.global(qos:)();
    (*(v8 + 8))(v10, v7);
    v19 = swift_allocObject();
    *(v19 + 16) = v21[1];
    aBlock[4] = sub_10008DF1C;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100088474;
    aBlock[3] = &unk_1000E2168;
    v20 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    v23 = _swiftEmptyArrayStorage;
    sub_10008DF3C(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100041AA0(&unk_100109980, &qword_1000C1B50);
    sub_100041AE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (v22[1].isa)(v2, v0);
    (*(v4 + 8))(v6, v3);
  }
}

void sub_10008C884()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100108E30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000466AC(v4, qword_10010CEE8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Migrating directories", v7, 2u);
  }

  v8 = [objc_opt_self() defaultManager];
  v9 = [v8 URLsForDirectory:5 inDomains:1];

  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v10 + 16))
  {
    (*(v1 + 16))(v3, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    sub_10008CCD0();
    (*(v1 + 8))(v3, v0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Did finish migrating directories", v13, 2u);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10008CB48()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultManager];
  v5 = [v4 URLsForDirectory:14 inDomains:1];

  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v6 + 16))
  {
    (*(v1 + 16))(v3, v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    URL.appendingPathComponent(_:)();

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10008CCD0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v90 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v90 - v9;
  __chkstk_darwin(v8);
  v12 = &v90 - v11;
  v13 = [objc_opt_self() defaultManager];
  URL.appendingPathComponent(_:)();
  v14 = objc_opt_self();
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  v97 = v14;
  v18 = [v14 isValidDirectory:v16];

  v19 = &selRef_setNumberOfEventsInLastFetch_;
  if (v18)
  {
    v93 = v4;
    if (qword_100108E30 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    v21 = sub_1000466AC(v20, qword_10010CEE8);
    v91 = v1[2];
    v92 = v1 + 2;
    v91(v10, v12, v0);
    v95 = v21;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v94 = v12;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v99 = v90;
      *v25 = 136315138;
      sub_10008DF3C(&qword_100109870, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v7;
      v28 = v13;
      v29 = v1;
      v30 = v0;
      v32 = v31;
      v96 = v29[1];
      v96(v10, v30);
      v33 = sub_10008D954(v26, v32, &v99);
      v0 = v30;
      v1 = v29;
      v13 = v28;
      v7 = v27;

      *(v25 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "Deleting %s", v25, 0xCu);
      sub_1000466E4(v90);

      v12 = v94;
    }

    else
    {

      v96 = v1[1];
      v96(v10, v0);
    }

    v38 = objc_opt_self();
    v19 = &selRef_setNumberOfEventsInLastFetch_;
    v41 = [v38 standardUserDefaults];
    v42 = FBKDirectoriesMigratorDryRun;
    v43 = [v41 BOOLForKey:FBKDirectoriesMigratorDryRun];

    if ((v43 & 1) == 0)
    {
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      v99 = 0;
      v47 = [(objc_class *)v13 removeItemAtURL:v45 error:&v99];

      if (!v47)
      {
        v98 = v13;
        v67 = v99;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_29;
      }

      v48 = v99;
    }

    sub_10008CB48();
    URL._bridgeToObjectiveC()(v49);
    v51 = v50;
    v52 = [v97 isValidDirectory:v50];

    if (v52)
    {
      v97 = v42;
      v98 = v13;
      v53 = v93;
      v91(v93, v7, v0);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v99 = v92;
        *v56 = 136315138;
        sub_10008DF3C(&qword_100109870, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v7;
        v59 = v0;
        v61 = v60;
        v96(v53, v59);
        v62 = sub_10008D954(v57, v61, &v99);
        v0 = v59;
        v7 = v58;

        *(v56 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v54, v55, "Deleting %s", v56, 0xCu);
        sub_1000466E4(v92);

        v12 = v94;
        v19 = &selRef_setNumberOfEventsInLastFetch_;
      }

      else
      {

        v96(v53, v0);
      }

      v68 = [v38 v19[189]];
      v42 = v97;
      v69 = [v68 BOOLForKey:v97];

      v13 = v98;
      if ((v69 & 1) == 0)
      {
        URL._bridgeToObjectiveC()(v70);
        v72 = v71;
        v99 = 0;
        v73 = [(objc_class *)v13 removeItemAtURL:v71 error:&v99];

        if (v73)
        {
          v74 = v99;
          v96(v7, v0);
LABEL_33:
          v39 = [v38 v19[189]];
          v40 = [v39 BOOLForKey:v42];
          goto LABEL_34;
        }

        v75 = v99;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v96(v7, v0);
LABEL_29:
        swift_errorRetain();
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v97 = v1;
          v79 = v0;
          v80 = v78;
          v81 = swift_slowAlloc();
          v99 = v81;
          *v80 = 136315138;
          swift_getErrorValue();
          v82 = Error.localizedDescription.getter();
          v84 = v42;
          v85 = sub_10008D954(v82, v83, &v99);

          *(v80 + 4) = v85;
          v42 = v84;
          _os_log_impl(&_mh_execute_header, v76, v77, "Directory migration failure: %s", v80, 0xCu);
          sub_1000466E4(v81);

          v0 = v79;
          v1 = v97;
          v19 = &selRef_setNumberOfEventsInLastFetch_;
        }

        else
        {
        }

        v12 = v94;
        v13 = v98;
        goto LABEL_33;
      }
    }

    else
    {
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v97 = v42;
        *v65 = 0;
        _os_log_impl(&_mh_execute_header, v63, v64, "Feedback Assistant App Support directory is not reachable", v65, 2u);

        v66 = v7;
        v42 = v97;
LABEL_27:
        v96(v66, v0);
        goto LABEL_33;
      }
    }

    v66 = v7;
    goto LABEL_27;
  }

  if (qword_100108E30 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000466AC(v34, qword_10010CEE8);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Feedback Assistant Library directory does not exist", v37, 2u);
  }

  v38 = objc_opt_self();
  v39 = [v38 standardUserDefaults];
  v40 = [v39 BOOLForKey:FBKDirectoriesMigratorDryRun];
LABEL_34:
  v86 = v40;

  if ((v86 & 1) == 0)
  {
    v87 = [v38 v19[189]];
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v87 setValue:isa forKey:FBKDirectoriesMigratorDidRun];

    v13 = isa;
  }

  return (v1[1])(v12, v0);
}

id sub_10008D874(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBADirectoriesMigrator(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10008D8F8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10008D954(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10008D954(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10008DA20(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100046784(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000466E4(v11);
  return v7;
}

unint64_t sub_10008DA20(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10008DB2C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_10008DB2C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10008DB78(a1, a2);
  sub_10008DCA8(&off_1000DFD38);
  return v3;
}

void *sub_10008DB78(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10008DD94(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10008DD94(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10008DCA8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10008DE08(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10008DD94(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100041AA0(&qword_10010ABC8, &qword_1000C3BE8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10008DE08(char *result, int64_t a2, char a3, char *a4)
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
    sub_100041AA0(&qword_10010ABC8, &qword_1000C3BE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_10008DEFC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10008DF24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008DF3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008DF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v25 = a2;
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0x402C000000000000;
  v8 = enum case for Font.TextStyle.body(_:);
  v9 = *(v5 + 104);
  v9(v7, enum case for Font.TextStyle.body(_:), v4);
  sub_10008E304();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v10 = type metadata accessor for BatchUIButtonView(0);
  v26 = 0x4038000000000000;
  v9(v7, v8, v4);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v26 = 0x4034000000000000;
  v9(v7, v8, v4);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v26 = 0x4024000000000000;
  v9(v7, v8, v4);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v11 = v10[8];
  *(a3 + v11) = swift_getKeyPath();
  sub_100041AA0(&qword_10010ABD8, &qword_1000C3C30);
  swift_storeEnumTagMultiPayload();
  v23 = v10[9];
  sub_100041AA0(&qword_10010ABE0, &qword_1000C3C38);
  v12 = type metadata accessor for ContentSizeCategory();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000C3BF0;
  v17 = v16 + v15;
  v18 = *(v13 + 104);
  v18(v17, enum case for ContentSizeCategory.accessibilityMedium(_:), v12);
  v18(v17 + v14, enum case for ContentSizeCategory.accessibilityLarge(_:), v12);
  v18(v17 + 2 * v14, enum case for ContentSizeCategory.accessibilityExtraLarge(_:), v12);
  v18(v17 + 3 * v14, enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:), v12);
  result = (v18)(v17 + 4 * v14, enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:), v12);
  v20 = v24;
  *(a3 + v23) = v16;
  v21 = (a3 + v10[10]);
  v22 = v25;
  *v21 = v20;
  v21[1] = v22;
  return result;
}

unint64_t sub_10008E304()
{
  result = qword_10010ABD0;
  if (!qword_10010ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010ABD0);
  }

  return result;
}

uint64_t type metadata accessor for BatchUIButtonView(uint64_t a1)
{
  result = qword_10010AC50;
  if (!qword_10010AC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008E3A4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100041AA0(&qword_10010ABD8, &qword_1000C3C30);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for BatchUIButtonView(0);
  sub_100045460(v1 + *(v10 + 32), v9, &qword_10010ABD8, &qword_1000C3C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ContentSizeCategory();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

__n128 sub_10008E5AC@<Q0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v22 = type metadata accessor for BorderedButtonStyle();
  v2 = *(v22 - 8);
  __chkstk_darwin(v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100041AA0(&qword_10010ACC0, &qword_1000C3CD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_100041AA0(&qword_10010ACC8, &qword_1000C3CE0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  type metadata accessor for BatchUIButtonView(0);
  v24 = v1;

  sub_100041AA0(&qword_10010ACD0, &qword_1000C3CE8);
  sub_100090EC4();
  Button.init(action:label:)();
  BorderedButtonStyle.init()();
  sub_1000456EC(&qword_10010AD38, &qword_10010ACC0, &qword_1000C3CD8, &protocol conformance descriptor for Button<A>);
  sub_1000914B0(&qword_10010AD40, &type metadata accessor for BorderedButtonStyle, &protocol conformance descriptor for BorderedButtonStyle);
  v13 = v22;
  View.buttonStyle<A>(_:)();
  (*(v2 + 8))(v4, v13);
  (*(v6 + 8))(v8, v5);
  v14 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  v16 = &v12[*(v10 + 44)];
  *v16 = KeyPath;
  v16[1] = v14;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v17 = v23;
  sub_100045374(v12, v23, &qword_10010ACC8, &qword_1000C3CE0);
  v18 = v17 + *(sub_100041AA0(&qword_10010AD48, &qword_1000C3D48) + 36);
  v19 = v30;
  *(v18 + 64) = v29;
  *(v18 + 80) = v19;
  *(v18 + 96) = v31;
  v20 = v26;
  *v18 = v25;
  *(v18 + 16) = v20;
  result = v28;
  *(v18 + 32) = v27;
  *(v18 + 48) = result;
  return result;
}

uint64_t sub_10008E9B0()
{
  v0 = sub_100041AA0(&qword_10010ACF8, &qword_1000C3CF8);
  __chkstk_darwin(v0);
  v2 = &v33 - v1;
  v3 = sub_100041AA0(&qword_10010AD50, &qword_1000C3D50);
  __chkstk_darwin(v3);
  v5 = &v33 - v4;
  v6 = sub_100041AA0(&qword_10010ACE8, &qword_1000C3CF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10)
  {
    sub_10008EC90(v2);
    v11 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v12 = &v2[*(v0 + 36)];
    *v12 = v11;
    *(v12 + 1) = v13;
    *(v12 + 2) = v14;
    *(v12 + 3) = v15;
    *(v12 + 4) = v16;
    v12[40] = 0;
    sub_100045460(v2, v5, &qword_10010ACF8, &qword_1000C3CF8);
    swift_storeEnumTagMultiPayload();
    sub_100090F50();
    sub_100090FDC();
    _ConditionalContent<>.init(storage:)();
    v17 = v2;
    v18 = &qword_10010ACF8;
    v19 = &qword_1000C3CF8;
  }

  else
  {
    sub_10008EC90(v8);
    v20 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v21 = &v8[*(v0 + 36)];
    *v21 = v20;
    *(v21 + 1) = v22;
    *(v21 + 2) = v23;
    *(v21 + 3) = v24;
    *(v21 + 4) = v25;
    v21[40] = 0;
    v26 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v27 = &v8[*(v6 + 36)];
    *v27 = v26;
    *(v27 + 1) = v28;
    *(v27 + 2) = v29;
    *(v27 + 3) = v30;
    *(v27 + 4) = v31;
    v27[40] = 0;
    sub_100045460(v8, v5, &qword_10010ACE8, &qword_1000C3CF0);
    swift_storeEnumTagMultiPayload();
    sub_100090F50();
    sub_100090FDC();
    _ConditionalContent<>.init(storage:)();
    v17 = v8;
    v18 = &qword_10010ACE8;
    v19 = &qword_1000C3CF0;
  }

  return sub_1000454C8(v17, v18, v19);
}

__n128 sub_10008EC90@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_100041AA0(&qword_10010AD20, &qword_1000C3D10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_100041AA0(&qword_10010AD58, &qword_1000C3D58);
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = sub_100041AA0(&qword_10010AD18, &qword_1000C3D08);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v28 = v2;
  v27 = v2;
  sub_100041AA0(&qword_10010AD60, &qword_1000C3D60);
  sub_100041AA0(&qword_10010AD68, &qword_1000C3D68);
  sub_100091318();
  sub_1000913F8();
  Label.init(title:icon:)();
  sub_1000456EC(&qword_10010AD28, &qword_10010AD20, &qword_1000C3D10, &protocol conformance descriptor for Label<A, B>);
  sub_100091204();
  View.labelStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v24 + 32))(v13, v9, v25);
  v14 = &v13[*(v11 + 44)];
  v15 = v34;
  *(v14 + 4) = v33;
  *(v14 + 5) = v15;
  *(v14 + 6) = v35;
  v16 = v30;
  *v14 = v29;
  *(v14 + 1) = v16;
  v17 = v32;
  *(v14 + 2) = v31;
  *(v14 + 3) = v17;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v18 = v26;
  sub_100045374(v13, v26, &qword_10010AD18, &qword_1000C3D08);
  v19 = v18 + *(sub_100041AA0(&qword_10010AD08, &qword_1000C3D00) + 36);
  v20 = v41;
  *(v19 + 64) = v40;
  *(v19 + 80) = v20;
  *(v19 + 96) = v42;
  v21 = v37;
  *v19 = v36;
  *(v19 + 16) = v21;
  result = v39;
  *(v19 + 32) = v38;
  *(v19 + 48) = result;
  return result;
}

uint64_t sub_10008F080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_100041AA0(&qword_10010AD90, &qword_1000C3D78);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v6 = sub_100041AA0(&qword_10010ADD0, &qword_1000C3DA0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for ContentSizeCategory();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + *(type metadata accessor for BatchUIButtonView(0) + 36));
  sub_10008E3A4(v12);
  LOBYTE(v13) = sub_10008F4F8(v12, v13);
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v14 = static VerticalAlignment.center.getter();
    v32 = 1;
    sub_10008F604(a1, &v23);
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v33 = v23;
    v34 = v24;
    v35 = v25;
    v36 = v26;
    v41[0] = v23;
    v41[1] = v24;
    v41[2] = v25;
    v41[3] = v26;
    v41[4] = v27;
    v41[5] = v28;
    v41[6] = v29;
    v42 = v30;
    sub_100045460(&v33, &v22, &qword_10010ADE0, &qword_1000C3DB0);
    sub_1000454C8(v41, &qword_10010ADE0, &qword_1000C3DB0);
    *(&v31[4] + 7) = v37;
    *(&v31[5] + 7) = v38;
    *(&v31[6] + 7) = v39;
    *(&v31[7] + 7) = v40;
    *(v31 + 7) = v33;
    *(&v31[1] + 7) = v34;
    *(&v31[2] + 7) = v35;
    *(&v31[3] + 7) = v36;
    v15 = v31[5];
    *(v8 + 81) = v31[4];
    *(v8 + 97) = v15;
    *(v8 + 113) = v31[6];
    *(v8 + 8) = *(&v31[6] + 15);
    v16 = v31[1];
    *(v8 + 17) = v31[0];
    *(v8 + 33) = v16;
    v17 = v31[3];
    *(v8 + 49) = v31[2];
    v18 = v32;
    *v8 = v14;
    *(v8 + 1) = 0;
    v8[16] = v18;
    *(v8 + 65) = v17;
    swift_storeEnumTagMultiPayload();
    sub_100041AA0(&qword_10010AD80, &qword_1000C3D70);
    sub_1000456EC(&qword_10010AD78, &qword_10010AD80, &qword_1000C3D70, &protocol conformance descriptor for HStack<A>);
    sub_1000456EC(&qword_10010AD88, &qword_10010AD90, &qword_1000C3D78, &protocol conformance descriptor for HStack<A>);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    *v5 = static VerticalAlignment.center.getter();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v20 = sub_100041AA0(&qword_10010ADD8, &qword_1000C3DA8);
    sub_10008FA84(&v5[*(v20 + 44)]);
    sub_100045460(v5, v8, &qword_10010AD90, &qword_1000C3D78);
    swift_storeEnumTagMultiPayload();
    sub_100041AA0(&qword_10010AD80, &qword_1000C3D70);
    sub_1000456EC(&qword_10010AD78, &qword_10010AD80, &qword_1000C3D70, &protocol conformance descriptor for HStack<A>);
    sub_1000456EC(&qword_10010AD88, &qword_10010AD90, &qword_1000C3D78, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_1000454C8(v5, &qword_10010AD90, &qword_1000C3D78);
  }
}

BOOL sub_10008F4F8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for ContentSizeCategory();
    ++v2;
    sub_1000914B0(&qword_10010ADC8, &type metadata accessor for ContentSizeCategory, &protocol conformance descriptor for ContentSizeCategory);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_10008F604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v3 = sub_100041AA0(&qword_10010ADE8, &qword_1000C3DB8);
  __chkstk_darwin(v3 - 8);
  v44 = &v43 - v4;
  LocalizedStringKey.init(stringLiteral:)();
  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  static Font.body.getter();
  v10 = Text.font(_:)();
  v47 = v11;
  v48 = v10;
  v13 = v12;
  v15 = v14;

  sub_100043784(v5, v7, v9 & 1);

  v16 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v46 = v15 & 1;
  LOBYTE(v55) = v15 & 1;
  LOBYTE(v59[0]) = 0;
  v25 = [objc_opt_self() currentDevice];
  v26 = [v25 userInterfaceIdiom];

  v27 = 0;
  KeyPath = 0;
  v29 = 0;
  v49 = v16;
  if (!v26)
  {
    v30 = v44;
    v43 = v13;
    v31 = [objc_opt_self() sharedApplication];
    [v31 userInterfaceLayoutDirection];

    v27 = Image.init(systemName:)();
    v32 = v30;
    sub_100041AA0(&qword_10010ABE8, &qword_1000C3C40);
    ScaledMetric.wrappedValue.getter();
    static Font.Weight.bold.getter();
    v33 = type metadata accessor for Font.Design();
    (*(*(v33 - 8) + 56))(v30, 1, 1, v33);
    v29 = static Font.system(size:weight:design:)();
    sub_1000454C8(v32, &qword_10010ADE8, &qword_1000C3DB8);
    KeyPath = swift_getKeyPath();

    v13 = v43;
    LOBYTE(v16) = v49;
  }

  v34 = v48;
  *&v51 = v48;
  *(&v51 + 1) = v13;
  v35 = v13;
  LOBYTE(v52) = v46;
  *(&v52 + 1) = v71[0];
  DWORD1(v52) = *(v71 + 3);
  v36 = v47;
  *(&v52 + 1) = v47;
  LOBYTE(v53) = v16;
  *(&v53 + 1) = *v70;
  DWORD1(v53) = *&v70[3];
  *(&v53 + 1) = v18;
  *&v54[0] = v20;
  *(&v54[0] + 1) = v22;
  *&v54[1] = v24;
  BYTE8(v54[1]) = 0;
  *(v58 + 9) = *(v54 + 9);
  v58[0] = v54[0];
  v56 = v52;
  v57 = v53;
  v55 = v51;
  v50 = 1;
  v37 = v46;
  sub_100045460(&v51, v59, &qword_10010ADF0, &qword_1000C3DC0);
  sub_1000914F8(v27, KeyPath, v29);
  sub_100091548(v27, KeyPath, v29);
  v38 = v50;
  v39 = v56;
  v40 = v58[0];
  v41 = v58[1];
  *(a2 + 32) = v57;
  *(a2 + 48) = v40;
  *(a2 + 64) = v41;
  *a2 = v55;
  *(a2 + 16) = v39;
  *(a2 + 80) = 0;
  *(a2 + 88) = v38;
  *(a2 + 96) = v27;
  *(a2 + 104) = KeyPath;
  *(a2 + 112) = v29;
  sub_100091548(v27, KeyPath, v29);
  v59[0] = v34;
  v59[1] = v35;
  v60 = v37;
  *v61 = v71[0];
  *&v61[3] = *(v71 + 3);
  v62 = v36;
  v63 = v49;
  *v64 = *v70;
  *&v64[3] = *&v70[3];
  v65 = v18;
  v66 = v20;
  v67 = v22;
  v68 = v24;
  v69 = 0;
  return sub_1000454C8(v59, &qword_10010ADF0, &qword_1000C3DC0);
}

uint64_t sub_10008FA84@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_100041AA0(&qword_10010ADE8, &qword_1000C3DB8);
  __chkstk_darwin(v1 - 8);
  v50 = &v50 - v2;
  v52 = type metadata accessor for ScoreIndicator();
  v3 = *(v52 - 8);
  v4 = __chkstk_darwin(v52);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v18 = &v50 - v6;
  LocalizedStringKey.init(stringLiteral:)();
  v7 = Text.init(_:tableName:bundle:comment:)();
  v9 = v8;
  v11 = v10;
  static Font.body.getter();
  v59 = Text.font(_:)();
  v58 = v12;
  v14 = v13;
  v60 = v15;

  v16 = v9;
  v17 = v18;
  sub_100043784(v7, v16, v11 & 1);

  LODWORD(v18) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v14 & 1;
  LOBYTE(v66[0]) = v14 & 1;
  LOBYTE(v62) = 0;
  type metadata accessor for BatchUIButtonView(0);
  sub_100041AA0(&qword_10010ABE8, &qword_1000C3C40);
  ScaledMetric.wrappedValue.getter();
  v28 = v17;
  ScoreIndicator.init(size:)();
  v29 = [objc_opt_self() currentDevice];
  v30 = [v29 userInterfaceIdiom];

  v54 = 0;
  KeyPath = 0;
  v32 = 0;
  v57 = v18;
  v56 = v27;
  v55 = v17;
  if (!v30)
  {
    v33 = v50;
    v34 = [objc_opt_self() sharedApplication];
    [v34 userInterfaceLayoutDirection];

    v18 = Image.init(systemName:)();
    ScaledMetric.wrappedValue.getter();
    static Font.Weight.bold.getter();
    v35 = type metadata accessor for Font.Design();
    (*(*(v35 - 8) + 56))(v33, 1, 1, v35);
    v32 = static Font.system(size:weight:design:)();
    sub_1000454C8(v33, &qword_10010ADE8, &qword_1000C3DB8);
    KeyPath = swift_getKeyPath();
    v54 = v18;

    v28 = v55;
    LOBYTE(v18) = v57;
    LOBYTE(v27) = v56;
  }

  v61 = 1;
  v36 = *(v3 + 16);
  v37 = v51;
  v38 = v18;
  v39 = v52;
  v36(v51, v28, v52);
  *&v62 = v59;
  *(&v62 + 1) = v58;
  LOBYTE(v63) = v27;
  *(&v63 + 1) = *v78;
  DWORD1(v63) = *&v78[3];
  *(&v63 + 1) = v60;
  LOBYTE(v64) = v38;
  *(&v64 + 1) = *v77;
  DWORD1(v64) = *&v77[3];
  *(&v64 + 1) = v20;
  *v65 = v22;
  *&v65[8] = v24;
  *&v65[16] = v26;
  v65[24] = 0;
  v40 = v62;
  v41 = v63;
  v42 = v53;
  *(v53 + 57) = *&v65[9];
  v43 = *v65;
  *(v42 + 32) = v64;
  *(v42 + 48) = v43;
  *v42 = v40;
  *(v42 + 16) = v41;
  v44 = v61;
  *(v42 + 80) = 0;
  *(v42 + 88) = v44;
  v45 = sub_100041AA0(&qword_10010ADF8, &qword_1000C3DF8);
  v36((v42 + *(v45 + 64)), v37, v39);
  v46 = (v42 + *(v45 + 80));
  sub_100045460(&v62, v66, &qword_10010ADF0, &qword_1000C3DC0);
  v47 = v54;
  sub_1000914F8(v54, KeyPath, v32);
  sub_100091548(v47, KeyPath, v32);
  *v46 = v47;
  v46[1] = KeyPath;
  v46[2] = v32;
  v48 = *(v3 + 8);
  v48(v55, v39);
  sub_100091548(v47, KeyPath, v32);
  v48(v37, v39);
  v66[0] = v59;
  v66[1] = v58;
  v67 = v56;
  *v68 = *v78;
  *&v68[3] = *&v78[3];
  v69 = v60;
  v70 = v57;
  *v71 = *v77;
  *&v71[3] = *&v77[3];
  v72 = v20;
  v73 = v22;
  v74 = v24;
  v75 = v26;
  v76 = 0;
  return sub_1000454C8(v66, &qword_10010ADF0, &qword_1000C3DC0);
}

uint64_t sub_100090130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_100041AA0(&qword_10010ADB0, &qword_1000C3D88);
  __chkstk_darwin(v3);
  v5 = (&v17 - v4);
  v18 = sub_100041AA0(&qword_10010ADA8, &qword_1000C3D80);
  __chkstk_darwin(v18);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ContentSizeCategory();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + *(type metadata accessor for BatchUIButtonView(0) + 36));
  sub_10008E3A4(v11);
  LOBYTE(v12) = sub_10008F4F8(v11, v12);
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_100041AA0(&qword_10010ABE8, &qword_1000C3C40);
    ScaledMetric.wrappedValue.getter();
    v13 = v20;
    *v7 = static HorizontalAlignment.center.getter();
    *(v7 + 1) = v13;
    v7[16] = 0;
    v14 = sub_100041AA0(&qword_10010ADB8, &qword_1000C3D90);
    sub_100090474(&v7[*(v14 + 44)]);
    sub_100045460(v7, v5, &qword_10010ADA8, &qword_1000C3D80);
    swift_storeEnumTagMultiPayload();
    sub_1000456EC(&qword_10010ADA0, &qword_10010ADA8, &qword_1000C3D80, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_1000454C8(v7, &qword_10010ADA8, &qword_1000C3D80);
  }

  else
  {
    v16 = [objc_opt_self() mainBundle];
    *v5 = Image.init(_:bundle:)();
    swift_storeEnumTagMultiPayload();
    sub_1000456EC(&qword_10010ADA0, &qword_10010ADA8, &qword_1000C3D80, &protocol conformance descriptor for VStack<A>);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100090474@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ScoreIndicator();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = [objc_opt_self() mainBundle];
  v10 = Image.init(_:bundle:)();
  type metadata accessor for BatchUIButtonView(0);
  sub_100041AA0(&qword_10010ABE8, &qword_1000C3C40);
  ScaledMetric.wrappedValue.getter();
  ScoreIndicator.init(size:)();
  v11 = *(v3 + 16);
  v11(v6, v8, v2);
  *a1 = v10;
  v12 = sub_100041AA0(&qword_10010ADC0, &qword_1000C3D98);
  v11(a1 + *(v12 + 48), v6, v2);
  v13 = *(v3 + 8);

  v13(v8, v2);
  v13(v6, v2);
}

uint64_t sub_100090660@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for LabelStyleConfiguration.Title();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  v3 = __chkstk_darwin(v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  v8 = type metadata accessor for LabelStyleConfiguration.Icon();
  v27 = *(v8 - 8);
  v9 = v27;
  v10 = __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  LabelStyleConfiguration.icon.getter();
  LabelStyleConfiguration.title.getter();
  v15 = *(v9 + 16);
  v15(v12, v14, v8);
  v16 = *(v2 + 16);
  v16(v5, v7, v1);
  v17 = v28;
  v15(v28, v12, v8);
  v18 = &v17[*(sub_100041AA0(&qword_10010AE28, &qword_1000C3E58) + 48)];
  v19 = v25;
  v16(v18, v5, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v5, v22);
  return (v23)(v12, v8);
}

uint64_t sub_1000908F0@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = sub_100041AA0(&qword_10010AE20, &qword_1000C3E50);
  return sub_100090660((a2 + *(v3 + 44)));
}

uint64_t sub_10009096C(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.sizeCategory.setter();
}

uint64_t sub_100090A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100041AA0(&qword_10010ABE8, &qword_1000C3C40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100041AA0(&qword_10010ABF0, qword_1000C3C48);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 32);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100090B84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100041AA0(&qword_10010ABE8, &qword_1000C3C40);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100041AA0(&qword_10010ABF0, qword_1000C3C48);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 32);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100090CA4(uint64_t a1)
{
  sub_100090D94(319);
  if (v1 <= 0x3F)
  {
    sub_100090DF0(319, &qword_10010AC68, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100090DF0(319, &qword_10010AC70, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_100090E50();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100090D94(uint64_t a1)
{
  if (!qword_10010AC60)
  {
    sub_10008E304();
    v1 = type metadata accessor for ScaledMetric();
    if (!v2)
    {
      atomic_store(v1, &qword_10010AC60);
    }
  }
}

void sub_100090DF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ContentSizeCategory();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_100090E50()
{
  result = qword_10010AC78;
  if (!qword_10010AC78)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10010AC78);
  }

  return result;
}

unint64_t sub_100090EC4()
{
  result = qword_10010ACD8;
  if (!qword_10010ACD8)
  {
    sub_100041B4C(&qword_10010ACD0, &qword_1000C3CE8);
    sub_100090F50();
    sub_100090FDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010ACD8);
  }

  return result;
}

unint64_t sub_100090F50()
{
  result = qword_10010ACE0;
  if (!qword_10010ACE0)
  {
    sub_100041B4C(&qword_10010ACE8, &qword_1000C3CF0);
    sub_100090FDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010ACE0);
  }

  return result;
}

unint64_t sub_100090FDC()
{
  result = qword_10010ACF0;
  if (!qword_10010ACF0)
  {
    sub_100041B4C(&qword_10010ACF8, &qword_1000C3CF8);
    sub_100091068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010ACF0);
  }

  return result;
}

unint64_t sub_100091068()
{
  result = qword_10010AD00;
  if (!qword_10010AD00)
  {
    sub_100041B4C(&qword_10010AD08, &qword_1000C3D00);
    sub_1000910F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010AD00);
  }

  return result;
}

unint64_t sub_1000910F4()
{
  result = qword_10010AD10;
  if (!qword_10010AD10)
  {
    sub_100041B4C(&qword_10010AD18, &qword_1000C3D08);
    sub_100041B4C(&qword_10010AD20, &qword_1000C3D10);
    sub_1000456EC(&qword_10010AD28, &qword_10010AD20, &qword_1000C3D10, &protocol conformance descriptor for Label<A, B>);
    sub_100091204();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010AD10);
  }

  return result;
}

unint64_t sub_100091204()
{
  result = qword_10010AD30;
  if (!qword_10010AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010AD30);
  }

  return result;
}

uint64_t sub_100091258@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000912B0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100091318()
{
  result = qword_10010AD70;
  if (!qword_10010AD70)
  {
    sub_100041B4C(&qword_10010AD60, &qword_1000C3D60);
    sub_1000456EC(&qword_10010AD78, &qword_10010AD80, &qword_1000C3D70, &protocol conformance descriptor for HStack<A>);
    sub_1000456EC(&qword_10010AD88, &qword_10010AD90, &qword_1000C3D78, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010AD70);
  }

  return result;
}

unint64_t sub_1000913F8()
{
  result = qword_10010AD98;
  if (!qword_10010AD98)
  {
    sub_100041B4C(&qword_10010AD68, &qword_1000C3D68);
    sub_1000456EC(&qword_10010ADA0, &qword_10010ADA8, &qword_1000C3D80, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010AD98);
  }

  return result;
}

uint64_t sub_1000914B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000914F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100091548(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100091594@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100091600()
{
  result = qword_10010AE00;
  if (!qword_10010AE00)
  {
    sub_100041B4C(&qword_10010AD48, &qword_1000C3D48);
    sub_10009168C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010AE00);
  }

  return result;
}

unint64_t sub_10009168C()
{
  result = qword_10010AE08;
  if (!qword_10010AE08)
  {
    sub_100041B4C(&qword_10010ACC8, &qword_1000C3CE0);
    sub_100041B4C(&qword_10010ACC0, &qword_1000C3CD8);
    type metadata accessor for BorderedButtonStyle();
    sub_1000456EC(&qword_10010AD38, &qword_10010ACC0, &qword_1000C3CD8, &protocol conformance descriptor for Button<A>);
    sub_1000914B0(&qword_10010AD40, &type metadata accessor for BorderedButtonStyle, &protocol conformance descriptor for BorderedButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1000456EC(&qword_10010AE10, &qword_10010AE18, &qword_1000C3E10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010AE08);
  }

  return result;
}

uint64_t sub_100091864()
{
  v0 = type metadata accessor for Logger();
  sub_100046848(v0, qword_10010AE40);
  sub_1000466AC(v0, qword_10010AE40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Logger.init(subsystem:category:)();
}

id sub_100091920(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBAUserDefaultsMigrator(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10009197C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_1000920C8(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 objectForKeyedSubscript:AKAuthenticationIDMSTokenKey];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Sign in authenticated for user %@ with tokens %@", &v6, 0x16u);
}

void sub_100092188(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "AuthKit login error: [%{public}@]", &v2, 0xCu);
}

void sub_100092214(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 logArchivePath];
  v6 = [a2 description];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Could not initialize FBAOSLogViewerDataSource with logarchive file: [%{public}@] error: [%{public}@]", &v7, 0x16u);
}

void sub_1000922D8(void *a1, NSObject *a2)
{
  v4 = [a1 loggerLib];
  v5 = [v4 startDate];
  v6 = [v5 fba_toString];
  v7 = [a1 loggerLib];
  v8 = [v7 endDate];
  v9 = [v8 fba_toString];
  v10 = 138543618;
  v11 = v6;
  v12 = 2114;
  v13 = v9;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Log Archive has invalid dates. Start Date [%{public}@], end date: [%{public}@]", &v10, 0x16u);
}

void sub_100092400(void *a1)
{
  [a1 numberOfEmptyFetches];
  sub_10000B55C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000924B8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching page [%{public}@]", &v2, 0xCu);
}

void sub_100092530(void *a1)
{
  [a1 count];
  sub_10000B55C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000925E8(void *a1)
{
  v1 = [a1 savedEvents];
  [v1 count];
  sub_10000B55C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10009277C(uint64_t a1, NSObject *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained contentItem];
  v5 = [v4 ID];
  v6[0] = 67109120;
  v6[1] = [v5 intValue];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error while fetching response stub with ID [%i]", v6, 8u);
}

void sub_10009289C()
{
  sub_100012BA8();
  sub_100012B80();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100092930()
{
  sub_10000B56C();
  sub_100012B80();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10009296C()
{
  sub_10000B56C();
  sub_100012B80();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000929A8()
{
  sub_10000B56C();
  sub_100012B80();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000929E4(id *a1)
{
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = [*a1 biometricsState];
  sub_100012B60(&_mh_execute_header, v1, v2, "Biometrics Evaluation stuck in state [%lu]", v3, v4, v5, v6, v7, DWORD2(v7));
}

void sub_100092ACC(id *a1, NSObject *a2)
{
  v3 = [*a1 blurView];
  v4 = [v3 superview];
  v5[0] = 67109120;
  v5[1] = v4 != 0;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Timer Fired, Authenticated, blurView visible? [%i]", v5, 8u);
}

void sub_100092B88()
{
  sub_10000B56C();
  sub_100012B80();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100092BC4(uint64_t a1, NSObject *a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) lastUsedLAContext];
  v5 = 138412546;
  v6 = v3;
  sub_100012BA8();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "context [%@] last context used [%@]", &v5, 0x16u);
}

void sub_100092C6C(void *a1)
{
  v1 = [a1 localizedDescription];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_100012B60(&_mh_execute_header, v2, v3, "APNS Error: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_100092CF4()
{
  sub_100012BA8();
  sub_100012B80();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100092D74(void *a1)
{
  v1 = [a1 localizedDescription];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_100012B60(&_mh_execute_header, v2, v3, "Error: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_100092E44(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Found unknown interface orientation", buf, 2u);
}

void sub_100092F10(void *a1, NSObject *a2)
{
  v3 = [a1 shortDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cannot track upload progress for item [%{public}@]", &v4, 0xCu);
}

void sub_100092FD0()
{
  sub_10001A454();
  sub_100012B80();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100093080(void *a1, NSObject *a2)
{
  v3 = [a1 publicLogDescription];
  sub_10001A454();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "device [%{public}@] is not valid for FBA pairing removal", v4, 0xCu);
}

void sub_100093188()
{
  sub_10001A454();
  sub_100012B80();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100093314()
{
  sub_10000B56C();
  sub_100025ABC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100093350(void *a1, NSObject *a2)
{
  [a1 fbkNewFeedbackButtonState];
  sub_10001A454();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Compose button state [%lu]", v3, 0xCu);
}

void sub_1000933D8(os_log_t log)
{
  v1 = 136446210;
  v2 = "[FBAMailboxesViewController runDelayedUrlActionIfNeeded]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[%{public}s] action not handled", &v1, 0xCu);
}

void sub_10009345C()
{
  sub_10001A454();
  sub_100025ABC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000934CC()
{
  sub_10000B56C();
  sub_100025ABC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100093508()
{
  sub_10001A454();
  sub_100025ABC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100093578()
{
  sub_10000B56C();
  sub_100025ABC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10009371C()
{
  sub_10001A454();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Submitted inbox is missing (row: %ld, section: %ld)!", v2, 0x16u);
}

void sub_1000937A0()
{
  sub_10000B56C();
  sub_100025ABC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000937DC(os_log_t log)
{
  v1 = 136446210;
  v2 = "[FBAMailboxesViewController launchSurveyWithUrlAction:]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "[%{public}s] with action that does not launch survey", &v1, 0xCu);
}

void sub_100093860()
{
  sub_10000B56C();
  sub_100025ABC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10009389C(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error creation with type [%li] not implemented", &v2, 0xCu);
}

void sub_10009396C(sqlite3 **a1, NSObject *a2)
{
  v3 = sqlite3_errmsg(*a1);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s", &v4, 0xCu);
}

void sub_100093A10(void *a1)
{
  v6 = [a1 action];
  sub_10002EF94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100093AA0(void *a1)
{
  v1 = [a1 ID];
  [v1 intValue];
  sub_10002EF94();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100093B34(void *a1)
{
  v2 = [a1 ID];
  [v2 intValue];
  [a1 itemType];
  sub_10002EF94();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100093C74(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 48);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "background task expired for saving FR [%d]", v3, 8u);
}

void sub_100093CF0(uint64_t a1, os_log_t log)
{
  if (a1)
  {
    v5 = objc_opt_class();
    v4 = NSStringFromClass(v5);
  }

  else
  {
    v4 = 0;
  }

  v6 = 138412290;
  v7 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Modal feedback editor [%@]", &v6, 0xCu);
  if (a1)
  {
  }
}

void sub_100093DAC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to generate caller name with error [%{public}@]", &v2, 0xCu);
}

void sub_100093E24(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to generate caller name from string [%{public}@] from [%{public}@]", &v3, 0x16u);
}

void sub_100093EAC(void *a1, NSObject *a2)
{
  v3 = [a1 ID];
  v4 = 134217984;
  v5 = [v3 integerValue];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Tried to load Information Cell with a non-information type question, question id: %ld", &v4, 0xCu);
}

void sub_100093F48(os_log_t log)
{
  v1 = 136315138;
  v2 = "[FBAPinPairingViewController tryPin:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s", &v1, 0xCu);
}

void sub_100093FCC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[FBADevicePickingNavigationController pairingViewDidClose]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s", &v1, 0xCu);
}

void sub_100094094(void *a1, NSObject *a2)
{
  v3 = [a1 question];
  v4 = 134218242;
  v5 = [v3 answerType];
  v6 = 2082;
  v7 = "[FBABugFormDetailTableViewController tableView:didSelectRowAtIndexPath:]";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Question type [%lu] not handled in in %{public}s", &v4, 0x16u);
}

void sub_100094144(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error copying file: [%{public}@] ", &v2, 0xCu);
}

void sub_1000941BC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "error parsing url [%{public}@] with error [%{public}@]", &v3, 0x16u);
}

void sub_1000942C0(uint8_t *a1, void *a2, unsigned int *a3, NSObject *a4)
{
  v7 = [a2 ID];
  v8 = [v7 intValue];
  *a1 = 67109120;
  *a3 = v8;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Found complete validation FFU [%i] without response, this is invalid state", a1, 8u);
}

void sub_10009433C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FFU has no visible files", buf, 2u);
}

void sub_10009442C(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) contentItem];
  v4 = [v3 remoteID];
  [v4 unsignedIntegerValue];
  v5 = [a2 description];
  sub_1000409B4();
  sub_1000409CC(&_mh_execute_header, v6, v7, "Error promoting feedback [%lu]: %{public}@", v8, v9, v10, v11);
}

void sub_1000944F4(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) contentItem];
  v4 = [v3 remoteID];
  [v4 unsignedIntegerValue];
  v5 = [a2 description];
  sub_1000409B4();
  sub_1000409CC(&_mh_execute_header, v6, v7, "Error demoting feedback [%lu]: %{public}@", v8, v9, v10, v11);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}