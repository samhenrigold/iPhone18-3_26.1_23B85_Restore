void sub_1001BA874(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_100140DD4(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

unint64_t sub_1001BA9AC()
{
  result = qword_10093B268;
  if (!qword_10093B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B268);
  }

  return result;
}

uint64_t sub_1001BAA00(uint64_t a1)
{
  type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1001BAA34()
{
  v1 = [objc_allocWithZone(type metadata accessor for Analytics()) init];
  v2 = [*(v0 + 16) newBackgroundContextWithAuthor:RDSharedInlineTagAutoConvertAuthor];
  type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.Batcher(0);
  v3 = swift_allocObject();
  v4 = v1;
  sub_1001BB7C0(v2, v4, v3);
  sub_1001B45F8();
}

void *sub_1001BAAE8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_1004ADF48(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_1001BAB78(uint64_t a1, char a2, void *a3, __n128 a4)
{
  v7 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&qword_10093B290, &qword_100798890);
  __chkstk_darwin(v12, v13);
  v17 = (&v46 - v16);
  v18 = *(a1 + 16);
  if (v18)
  {
    v48 = a1;
    v49 = v8;
    v19 = *(v14 + 48);
    v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v51 = *(v15 + 72);
    v47 = v20;
    sub_100010364(a1 + v20, &v46 - v16, &qword_10093B290, &qword_100798890);
    v21 = *v17;
    v50 = v19;
    sub_1001BBA14(v17 + v19, v11, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
    v22 = *a3;
    v24 = sub_1003644E8(v21);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_23;
    }

    LOBYTE(v8) = v23;
    if (v22[3] >= v27)
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_7;
    }

    sub_10036CB0C(v27, a2 & 1);
    v28 = sub_1003644E8(v21);
    if ((v8 & 1) == (v29 & 1))
    {
      v24 = v28;
LABEL_7:
      v30 = v49;
      while (1)
      {
        v49 = v18;
        v31 = *a3;
        if (v8)
        {

          v18 = *(v30 + 72);
          sub_1001BBA88(v11, v31[7] + v18 * v24);
        }

        else
        {
          v31[(v24 >> 6) + 8] |= 1 << v24;
          *(v31[6] + 8 * v24) = v21;
          v18 = *(v30 + 72);
          sub_1001BBA14(v11, v31[7] + v18 * v24, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
          v32 = v31[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_24;
          }

          v31[2] = v34;
        }

        v35 = v49 - 1;
        if (v49 == 1)
        {
          return;
        }

        v8 = v48 + v51 + v47;
        while (1)
        {
          sub_100010364(v8, v17, &qword_10093B290, &qword_100798890);
          v21 = *v17;
          sub_1001BBA14(v17 + v50, v11, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
          v36 = *a3;
          v37 = sub_1003644E8(v21);
          v39 = v36[2];
          v40 = (v38 & 1) == 0;
          v33 = __OFADD__(v39, v40);
          v41 = v39 + v40;
          if (v33)
          {
            break;
          }

          v24 = v38;
          if (v36[3] < v41)
          {
            sub_10036CB0C(v41, 1);
            v37 = sub_1003644E8(v21);
            if ((v24 & 1) != (v42 & 1))
            {
              goto LABEL_26;
            }
          }

          v43 = *a3;
          if (v24)
          {
            v24 = v37;

            sub_1001BBA88(v11, v43[7] + v18 * v24);
          }

          else
          {
            v43[(v37 >> 6) + 8] |= 1 << v37;
            *(v43[6] + 8 * v37) = v21;
            sub_1001BBA14(v11, v43[7] + v18 * v37, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag);
            v44 = v43[2];
            v33 = __OFADD__(v44, 1);
            v45 = v44 + 1;
            if (v33)
            {
              goto LABEL_24;
            }

            v43[2] = v45;
          }

          v8 += v51;
          if (!--v35)
          {
            return;
          }
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v30 = v49;
        sub_1003747E0();
      }
    }

LABEL_26:
    sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

void sub_1001BAF9C(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100943C60, &unk_100798920);
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  v6 = 0;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = v4 + 64;
  if (v9)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v15 = v12 | (v6 << 6);
      v16 = *(*(a1 + 48) + 8 * v15);
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(v5[6] + 8 * v15) = v16;
      *(v5[7] + 8 * v15) = a2;
      v17 = v5[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        break;
      }

      v5[2] = v19;
      v20 = v16;

      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        return;
      }

      v14 = *(a1 + 64 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

Swift::Int sub_1001BB0F0(uint64_t a1, uint64_t a2)
{
  if (__CocoaDictionary.count.getter())
  {
    sub_1000F5104(&unk_100943C60, &unk_100798920);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v20 = v3;
  __CocoaDictionary.makeIterator()();
  swift_unknownObjectRetain();
  v4 = __CocoaDictionary.Iterator.next()();
  if (v4)
  {
    v5 = v4;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v6 = v5;
    do
    {
      v18 = v6;
      swift_dynamicCast();
      sub_1000060C8(0, &unk_10093F600, REMHashtag_ptr);
      swift_dynamicCast();

      v13 = v3[2];
      if (v3[3] <= v13)
      {
        sub_10036CE68(v13 + 1, 1);
      }

      v3 = v20;
      result = NSObject._rawHashValue(seed:)(v20[5]);
      v8 = v20 + 8;
      v9 = -1 << *(v20 + 32);
      v10 = result & ~v9;
      v11 = v10 >> 6;
      if (((-1 << v10) & ~v20[(v10 >> 6) + 8]) != 0)
      {
        v12 = __clz(__rbit64((-1 << v10) & ~v20[(v10 >> 6) + 8])) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = 0;
        v15 = (63 - v9) >> 6;
        do
        {
          if (++v11 == v15 && (v14 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v16 = v11 == v15;
          if (v11 == v15)
          {
            v11 = 0;
          }

          v14 |= v16;
          v17 = v8[v11];
        }

        while (v17 == -1);
        v12 = __clz(__rbit64(~v17)) + (v11 << 6);
      }

      *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(v20[6] + 8 * v12) = v19;
      *(v20[7] + 8 * v12) = a2;
      ++v20[2];
      v6 = __CocoaDictionary.Iterator.next()();
    }

    while (v6);
  }

  return v3;
}

void *sub_1001BB358(unint64_t a1)
{
  v2 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  __chkstk_darwin(v2 - 8, v3);
  v49 = &v47 - v4;
  v56 = _swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_27:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v52 = a1 & 0xFFFFFFFFFFFFFF8;
      v53 = a1 & 0xC000000000000001;
      v7 = _swiftEmptyDictionarySingleton;
      v48 = xmmword_1007953F0;
      v50 = v5;
      v51 = a1;
      while (1)
      {
        if (v53)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(v52 + 16))
          {
            goto LABEL_24;
          }

          v9 = *(a1 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v12 = [v9 name];
        if (v12)
        {
          v13 = v12;
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          v54 = v14;
          v55 = v16;
          v17 = v49;
          static Locale.current.getter();
          v18 = type metadata accessor for Locale();
          (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
          sub_10013BCF4();
          v19 = StringProtocol.foldedStringForWriting(locale:)();
          v21 = v20;
          sub_1000050A4(v17, &unk_10093F420, &unk_100797AE0);
          v16, v22, v23, v24, v25, v26, v27, v28;
        }

        else
        {
          v19 = 0;
          v21 = 0xE000000000000000;
        }

        a1 = sub_100005F4C(v19, v21);
        v36 = v7[2];
        v37 = (v29 & 1) == 0;
        v38 = v36 + v37;
        if (__OFADD__(v36, v37))
        {
          goto LABEL_25;
        }

        v39 = v29;
        if (v7[3] < v38)
        {
          sub_10036CE7C(v38, 1);
          v7 = v56;
          v40 = sub_100005F4C(v19, v21);
          if ((v39 & 1) != (v29 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          a1 = v40;
        }

        if (v39)
        {
          v21, v29, v30, v31, v32, v33, v34, v35;
          v8 = (v7[7] + 8 * a1);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v41 = swift_allocObject();
          *(v41 + 16) = v48;
          *(v41 + 32) = v10;
          v7[(a1 >> 6) + 8] |= 1 << a1;
          v42 = (v7[6] + 16 * a1);
          *v42 = v19;
          v42[1] = v21;
          *(v7[7] + 8 * a1) = v41;
          v43 = v7[2];
          v44 = __OFADD__(v43, 1);
          v45 = v43 + 1;
          if (v44)
          {
            goto LABEL_26;
          }

          v7[2] = v45;
        }

        a1 = v51;
        ++v6;
        if (v11 == v50)
        {
          return v7;
        }
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

unint64_t sub_1001BB6DC(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
    return 0;
  }

  if (__OFADD__(a3, 1))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v5)
  {
    return 0;
  }

  if (__OFSUB__(a4, 1))
  {
    goto LABEL_10;
  }

  v6 = result;
  result = String.index(_:offsetBy:limitedBy:)();
  if (v7)
  {
    return 0;
  }

  if (result >> 14 >= v6 >> 14)
  {
    return String.subscript.getter();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1001BB7C0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.Metrics(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6, v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17[3] = type metadata accessor for Analytics();
  v17[4] = &protocol witness table for Analytics;
  v17[0] = a2;
  *(a3 + 16) = a1;
  *(a3 + 24) = 100;
  sub_10000A87C(v17, v16);
  v10[7] = 0;
  v10[8] = 0;
  v10[6] = 0;
  v11 = *(v7 + 48);
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  sub_10000A87C(v16, (v10 + 1));
  v13 = a1;
  Date.init()();
  sub_1001BB93C();
  v14 = swift_allocError();
  sub_10000607C(v16);
  sub_10000607C(v17);
  *v10 = v14;
  sub_1001BBA14(v10, a3 + OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler7Batcher_metrics, type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.Metrics);
  return a3;
}

unint64_t sub_1001BB93C()
{
  result = qword_10093B270;
  if (!qword_10093B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B270);
  }

  return result;
}

uint64_t sub_1001BB9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BBA14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BBA88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.CandidateHashtag(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001BBAF8()
{
  result = qword_10093B320;
  if (!qword_10093B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B320);
  }

  return result;
}

uint64_t sub_1001BBB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BBBD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1001BBC30(char *a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v5 = a1;
    v6 = a2[2];
    *(a1 + 1) = a2[1];
    *(a1 + 2) = v6;
    v7 = *(a3 + 24);
    v9 = type metadata accessor for UUID();
    v10 = *(*(v9 - 8) + 16);
    v11 = v4;

    v10(&v5[v7], a2 + v7, v9);
  }

  return v5;
}

uint64_t sub_1001BBD18(uint64_t a1, uint64_t a2)
{
  *(a1 + 16), v4, v5, v6, v7, v8, v9, v10;
  v11 = *(a2 + 24);
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 8);

  return v13(a1 + v11, v12);
}

char *sub_1001BBD94(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v5;
  *(a1 + 2) = *(a2 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 16);
  v10 = v6;

  v9(&a1[v7], a2 + v7, v8);
  return a1;
}

uint64_t sub_1001BBE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  *(a1 + 8) = *(a2 + 8);
  v9 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v9, v10, v11, v12, v13, v14, v15, v16;
  v17 = *(a3 + 24);
  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 24))(a1 + v17, a2 + v17, v18);
  return a1;
}

uint64_t sub_1001BBEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_1001BBF5C(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a2 + 2);
  v8 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 16) = v7;
  v8, v9, v10, v11, v12, v13, v14, v15;
  v16 = *(a3 + 24);
  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 40))(a1 + v16, &a2[v16], v17);
  return a1;
}

uint64_t sub_1001BC018(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1001BC0BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 2)
  {
    swift_errorRetain();
  }

  else if (a3 == 1)
  {
  }
}

void sub_1001BC0F8(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3 == 3 || a3 == 2)
  {
  }

  else if (a3 == 1)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

uint64_t sub_1001BC124(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1001BC0BC(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.AutoConversionError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1001BC0BC(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1001BC0F8(v6, v7, v8, v9, v10, v11, v12, v13);
  return a1;
}

uint64_t assignWithTake for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.AutoConversionError(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a2 + 16);
  v10 = *a1;
  v11 = *(a1 + 8);
  *a1 = *a2;
  v12 = *(a1 + 16);
  *(a1 + 16) = v9;
  sub_1001BC0F8(v10, v11, v12, a4, a5, a6, a7, a8);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.AutoConversionError(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter.AutoConversionError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1001BC29C(uint64_t a1)
{
  if (*(a1 + 16) <= 3u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1001BC2B4(uint64_t result, unsigned int a2)
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

uint64_t sub_1001BC334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001BC388()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093B418);
  v1 = sub_100006654(v0, qword_10093B418);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001BC450(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_10000F61C(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

void sub_1001BC4B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  swift_getObjectType();
  v5 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v6 = *(v5 - 8);
  *&v8 = __chkstk_darwin(v5, v7).n128_u64[0];
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = 0;
  v11 = [v2 remObjectIDWithError:{&v34, v8}];
  if (v11)
  {
    v12 = v11;
    v13 = v34;
    v14 = [v3 displayName];
    if (v14)
    {
      v32 = a1;
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v17;
      v31 = v16;

      v18 = REMObjectID.codable.getter();
      v19 = [v3 canonicalName];
      if (v19)
      {
        v20 = v19;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v28 = v30;
      v29 = v31;
      *v10 = v18;
      v10[1] = v29;
      v10[2] = v28;
      v10[3] = v21;
      v10[4] = v23;
      (*(v6 + 104))(v10, enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:), v5);

      REMRemindersListDataView.SectionLite.init(type:reminders:)();
    }

    else
    {
      v25 = objc_opt_self();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v27 = String._bridgeToObjectiveC()();
      [v25 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v27];

      swift_willThrow();
    }
  }

  else
  {
    v24 = v34;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

id sub_1001BC748()
{
  v5 = 0;
  v1 = [v0 remObjectIDWithError:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

void sub_1001BC89C(uint64_t a2@<X8>)
{
  v3 = v2;
  v22[1] = a2;
  swift_getObjectType();
  v4 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v5 = *(v4 - 8);
  *&v7 = __chkstk_darwin(v4, v6).n128_u64[0];
  v9 = (v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = 0;
  v10 = [v2 remObjectIDWithError:{&v23, v7}];
  if (v10)
  {
    v11 = v10;
    v12 = v23;
    v13 = [v3 displayName];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      *v9 = REMObjectID.codable.getter();
      v9[1] = v15;
      v9[3] = 0;
      v9[4] = 0;
      v9[2] = v17;
      (*(v5 + 104))(v9, enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:), v4);

      REMRemindersListDataView.SectionLite.init(type:reminders:)();
    }

    else
    {
      v19 = objc_opt_self();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v21 = String._bridgeToObjectiveC()();
      [v19 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v21];

      swift_willThrow();
    }
  }

  else
  {
    v18 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void *sub_1001BCB28(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v128 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v143 = &v121 - v12;
  __chkstk_darwin(v13, v14);
  v132 = &v121 - v15;
  __chkstk_darwin(v16, v17);
  v133 = &v121 - v18;
  __chkstk_darwin(v19, v20);
  v22 = &v121 - v21;
  v23 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23, v25);
  v147 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v28);
  __chkstk_darwin(v29, v30);
  v151 = &v121 - v39;
  if (a3)
  {
    v153 = _swiftEmptyDictionarySingleton;
    v141 = *(a1 + 16);
    if (v141)
    {
      v123 = v38;
      v124 = v9;
      v40 = 0;
      v42 = *(v24 + 16);
      v41 = v24 + 16;
      v149 = v42;
      v126 = *(v41 + 64);
      v127 = a1;
      v136 = (v126 + 32) & ~v126;
      v138 = a1 + v136;
      v150 = (v128 + 8);
      v148 = *(v41 + 56);
      v129 = (v128 + 32);
      v144 = &a2->clientIdentity[40];
      v145 = a2;
      v142 = v128 + 16;
      v135 = (v41 + 16);
      v137 = (v41 - 8);
      v43 = &_swiftEmptyArrayStorage;
      v125 = xmmword_100791300;
      v131 = a3;
      v130 = v22;
      v139 = v41;
      v140 = v23;
      while (1)
      {
        v149(v151, v138 + v148 * v40, v23);
        v44 = [a3 membershipByMemberIdentifier];
        sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
        sub_1001BE27C(&qword_10093B410, &protocol conformance descriptor for UUID);
        v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v46 = REMRemindersListDataView.ReminderLite.objectID.getter();
        v47 = [v46 uuid];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v45 + 16) && (v55 = sub_100363F20(v22), (v48 & 1) != 0))
        {
          v56 = *v150;
          v57 = *(*(v45 + 56) + 8 * v55);
          v146 = v56;
          v56(v22, v6);
          v45, v58, v59, v60, v61, v62, v63, v64;
          v65 = [v57 groupIdentifier];
          if (v65)
          {
            v134 = v57;
            v66 = v133;
            v67 = v132;
            v68 = v65;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v69 = v66;
            (*v129)(v66, v67, v6);
            if (*v145->clientIdentity)
            {
              v70 = v145;
              v71 = dispatch thunk of Hashable._rawHashValue(seed:)();
              v72 = -1 << v70->clientIdentity[16];
              v73 = v71 & ~v72;
              if ((*&v144[(v73 >> 3) & 0xFFFFFFFFFFFFFF8] >> v73))
              {
                v74 = ~v72;
                v75 = *(v128 + 72);
                v76 = *(v128 + 16);
                while (1)
                {
                  v77 = v143;
                  v76(v143, *&v145->clientIdentity[32] + v75 * v73, v6);
                  sub_1001BE27C(&qword_10093A3E0, &protocol conformance descriptor for UUID);
                  v78 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v146(v77, v6);
                  if (v78)
                  {
                    break;
                  }

                  v73 = (v73 + 1) & v74;
                  if (((*&v144[(v73 >> 3) & 0xFFFFFFFFFFFFFF8] >> v73) & 1) == 0)
                  {
                    goto LABEL_12;
                  }
                }

                a3 = v131;
                if (v153[2] && (sub_100363F20(v69), (v88 & 1) != 0))
                {
                  v89 = v124;
                  v76(v124, v69, v6);
                  v122 = sub_1002618D8(&v152);
                  v91 = v69;
                  v22 = v130;
                  if (*v90)
                  {
                    v92 = v90;
                    v149(v123, v151, v140);
                    v93 = *v92;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *v92 = v93;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v93 = sub_100365A24(0, *v93->clientIdentity + 1, 1, v93);
                      *v92 = v93;
                    }

                    v96 = *v93->clientIdentity;
                    v95 = *&v93->clientIdentity[8];
                    if (v96 >= v95 >> 1)
                    {
                      v93 = sub_100365A24((v95 > 1), v96 + 1, 1, v93);
                      *v92 = v93;
                    }

                    *v93->clientIdentity = v96 + 1;
                    v97 = v93 + v136 + v96 * v148;
                    v23 = v140;
                    (*v135)(v97, v123, v140);
                    (v122)(&v152, 0);

                    v98 = v146;
                    v146(v124, v6);
                    v98(v133, v6);
                    (*v137)(v151, v23);
                  }

                  else
                  {
                    (v122)(&v152, 0);

                    v105 = v146;
                    v146(v89, v6);
                    v105(v91, v6);
                    v23 = v140;
                    (*v137)(v151, v140);
                  }
                }

                else
                {
                  sub_1000F5104(&unk_1009430D0, &qword_10079D4F0);
                  v99 = v136;
                  v100 = swift_allocObject();
                  *(v100 + 16) = v125;
                  v101 = v100 + v99;
                  v102 = v151;
                  v23 = v140;
                  v149(v101, v151, v140);
                  v103 = v153;
                  v104 = swift_isUniquelyReferenced_nonNull_native();
                  v152 = v103;
                  sub_1002C7050(v100, v69, v104);

                  v153 = v152;
                  v146(v69, v6);
                  (*v137)(v102, v23);
                  v22 = v130;
                }

                goto LABEL_19;
              }
            }

LABEL_12:
            v146(v69, v6);

            a3 = v131;
            v22 = v130;
          }

          else
          {
          }
        }

        else
        {
          v45, v48, v49, v50, v51, v52, v53, v54;
          (*v150)(v22, v6);
        }

        v23 = v140;
        v149(v147, v151, v140);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_100365A24(0, *v43->clientIdentity + 1, 1, v43);
        }

        v80 = *v43->clientIdentity;
        v79 = *&v43->clientIdentity[8];
        if (v80 >= v79 >> 1)
        {
          v43 = sub_100365A24((v79 > 1), v80 + 1, 1, v43);
        }

        (*v137)(v151, v23);
        *v43->clientIdentity = v80 + 1;
        (*v135)(v43 + v136 + v80 * v148, v147, v23);
LABEL_19:
        if (++v40 == v141)
        {
          v127, v81, v82, v83, v84, v85, v86, v87;
          v145, v106, v107, v108, v109, v110, v111, v112;

          return v153;
        }
      }
    }

    a1, v31, v32, v33, v34, v35, v36, v37;
    a2, v114, v115, v116, v117, v118, v119, v120;

    return _swiftEmptyDictionarySingleton;
  }

  else
  {
    a2, v31, v32, v33, v34, v35, v36, v37;
    return sub_10038DB3C(&_swiftEmptyArrayStorage);
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1001BD57C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for REMJSONDeserializationError();
  v177 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = (&v171 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for UUID();
  v185 = *(v10 - 8);
  v186 = v10;
  __chkstk_darwin(v10, v11);
  v183 = &v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v18 = *(v182 - 8);
  __chkstk_darwin(v182, v19);
  v187 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v176 = &v171 - v23;
  v24 = a1;
  v25 = a1[2];
  if (!v25)
  {
    sub_1000F5104(&qword_10093B448, &qword_10079D400);
    v67 = swift_allocObject();
    *v67->clientIdentity = xmmword_100791300;
    (*(v14 + 104))(v17, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v13);

    REMRemindersListDataView.SectionLite.init(type:reminders:)();
    return v67;
  }

  v180 = a2;
  v184 = v18;
  v173 = v14;
  v174 = v17;
  v26 = v24[7];
  v27 = v24[8];
  v179 = v24;
  storeController = (v24 + 4);
  sub_10000F61C(v24 + 4, v26);
  v178 = (*(v27 + 24))(v26, v27);
  v175 = v13;
  if (v178)
  {
    v29 = v28;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v31 = sub_1001A3D08(ObjectType, v29);
    if (v3)
    {
      v172 = 0;
      swift_unknownObjectRelease();
      v193 = v3;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      if (swift_dynamicCast())
      {
        v32 = v177;
        if ((*&v177->contactInteractionWriter[2])(v9, v6) == enum case for REMJSONDeserializationError.notSupported(_:))
        {

          (*&v32->coreSuggestionsHandler[2])(v9, v6);
          v33 = *v9;
          if (qword_100935B48 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          sub_100006654(v34, qword_10093B418);
          swift_unknownObjectRetain();
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();
          v37 = os_log_type_enabled(v35, v36);
          v38 = storeController;
          if (v37)
          {
            v39 = swift_slowAlloc();
            v177 = swift_slowAlloc();
            v188 = v177;
            *v39 = 136446722;
            v189 = &_s9UtilitiesON_0;
            sub_1000F5104(&qword_10093B440, &unk_100798B58);
            v40 = String.init<A>(describing:)();
            v42 = v41;
            v43 = sub_10000668C(v40, v41, &v188);
            v171 = v33;
            v44 = v43;
            v42, v45, v46, v47, v48, v49, v50, v51;
            *(v39 + 4) = v44;
            *(v39 + 12) = 2082;
            v52 = swift_getObjectType();
            v189 = (*(v29 + 8))(v52, v29);
            v190 = v53;
            sub_1000F5104(&unk_100939E40, &qword_100791BD0);
            v54 = String.init<A>(describing:)();
            v56 = v55;
            v57 = sub_10000668C(v54, v55, &v188);
            v56, v58, v59, v60, v61, v62, v63, v64;
            *(v39 + 14) = v57;
            *(v39 + 22) = 2050;
            *(v39 + 24) = v171;
            _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s: Failed to deserialize 'membershipsOfRemindersInSectionsAsData' because current runtime version is lower than minimumSupportedVersion. {parentID: %{public}s, minimumSupportedVersion: %{public}ld}", v39, 0x20u);
            swift_arrayDestroy();
          }

          v65 = v185;
          v3 = v172;

          v66 = 0;
          goto LABEL_22;
        }

        (*v32->storeController)(v9, v6);
      }

      v38 = storeController;
      if (qword_100935B48 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_100006654(v70, qword_10093B418);
      swift_unknownObjectRetain();
      swift_errorRetain();
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.fault.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        LODWORD(v171) = v72;
        v74 = v73;
        v177 = swift_slowAlloc();
        v193 = v177;
        *v74 = 136446722;
        v189 = &_s9UtilitiesON_0;
        sub_1000F5104(&qword_10093B440, &unk_100798B58);
        v75 = String.init<A>(describing:)();
        v77 = v76;
        v78 = sub_10000668C(v75, v76, &v193);
        v77, v79, v80, v81, v82, v83, v84, v85;
        *(v74 + 4) = v78;
        *(v74 + 12) = 2082;
        v86 = swift_getObjectType();
        v189 = (*(v29 + 8))(v86, v29);
        v190 = v87;
        sub_1000F5104(&unk_100939E40, &qword_100791BD0);
        v88 = String.init<A>(describing:)();
        v90 = v89;
        v91 = sub_10000668C(v88, v89, &v193);
        v90, v92, v93, v94, v95, v96, v97, v98;
        *(v74 + 14) = v91;
        *(v74 + 22) = 2082;
        swift_getErrorValue();
        v99 = Error.rem_errorDescription.getter();
        v101 = v100;
        v102 = sub_10000668C(v99, v100, &v193);
        v101, v103, v104, v105, v106, v107, v108, v109;
        *(v74 + 24) = v102;
        _os_log_impl(&_mh_execute_header, v71, v171, "%{public}s: Error upon fetching 'membershipsOfRemindersInSections' {parentID: %{public}s, error: %{public}s}", v74, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v66 = 0;
      v65 = v185;
      v3 = v172;
      goto LABEL_22;
    }

    v68 = v31;
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0;
  }

  v69 = v68;
  v38 = storeController;
  v65 = v185;
  v66 = v68;
LABEL_22:
  v189 = v179;
  sub_1000F5104(&qword_10093B430, &qword_100798B50);
  v110 = sub_1001BE218();
  sub_1001BE27C(&qword_10093B410, &protocol conformance descriptor for UUID);
  v111 = Sequence.compactMapToSet<A>(_:)();

  v179 = v66;
  v185 = sub_1001BCB28(v112, v111, v66);
  v177 = v113;
  v193 = &_swiftEmptyArrayStorage;
  sub_1002532DC(0, v25, 0);
  v67 = v193;
  v180 = v184 + 32;
  storeController = v65->storeController;
  do
  {
    if (!v25)
    {
      __break(1u);
LABEL_40:
      v67 = sub_100365A4C(0, *v67->clientIdentity + 1, 1, v67);
      goto LABEL_35;
    }

    sub_10000A87C(v38, &v189);
    v114 = v191;
    v115 = v192;
    sub_10000F61C(&v189, v191);
    v116 = (*(v115 + 16))(v114, v115);
    if (v3)
    {
      v177, v117, v118, v119, v120, v121, v122, v123;
      v185, v145, v146, v147, v148, v149, v150, v151;

      swift_unknownObjectRelease();
      sub_10000607C(&v189);

      return v67;
    }

    v124 = v116;
    v125 = v25;
    v126 = [v116 uuid];
    v127 = v183;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v128 = v185;
    if (*v185->clientIdentity && (v129 = sub_100363F20(v127), (v130 & 1) != 0))
    {
      v131 = v38;
      v132 = *(*&v128->clientIdentity[40] + 8 * v129);
      v133 = *storeController;

      v133(v127, v186);
    }

    else
    {
      v131 = v38;
      (*storeController)(v127, v186);
      v132 = &_swiftEmptyArrayStorage;
    }

    v135 = v191;
    v134 = v192;
    sub_10000F61C(&v189, v191);
    (*(v134 + 32))(v132, v135, v134);

    v132, v136, v137, v138, v139, v140, v141, v142;
    sub_10000607C(&v189);
    v193 = v67;
    v144 = *v67->clientIdentity;
    v143 = *&v67->clientIdentity[8];
    if (v144 >= v143 >> 1)
    {
      sub_1002532DC((v143 > 1), v144 + 1, 1);
      v67 = v193;
    }

    *v67->clientIdentity = v144 + 1;
    v65 = ((*(v184 + 80) + 32) & ~*(v184 + 80));
    v66 = *(v184 + 72);
    v110 = *(v184 + 32);
    v110(v65 + v67 + v66 * v144, v187, v182);
    v38 = v131 + 40;
    v25 = v125 - 1;
  }

  while (v125 != 1);
  (*(v173 + 104))(v174, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v175);
  v152 = v177;

  v25 = v176;
  REMRemindersListDataView.SectionLite.init(type:reminders:)();
  v152, v153, v154, v155, v156, v157, v158, v159;
  v185, v160, v161, v162, v163, v164, v165, v166;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_35:
  v169 = *v67->clientIdentity;
  v168 = *&v67->clientIdentity[8];
  if (v169 >= v168 >> 1)
  {
    v67 = sub_100365A4C((v168 > 1), v169 + 1, 1, v67);
  }

  swift_unknownObjectRelease();
  *v67->clientIdentity = v169 + 1;
  v110(v65 + v67 + v169 * v66, v25, v182);
  return v67;
}

unint64_t sub_1001BE218()
{
  result = qword_10093B438;
  if (!qword_10093B438)
  {
    sub_1000F514C(&qword_10093B430, &qword_100798B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B438);
  }

  return result;
}

uint64_t sub_1001BE27C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001BE2C0(uint64_t a1, void *a2)
{
  v2 = qword_1009365A8;
  v3 = a2;
  if (v2 != -1)
  {
    swift_once();
  }

  type metadata accessor for REMCDListSection();
  v4 = sub_100597524();
  v5 = sub_100597980();
  v6 = sub_100596AB8(v3, 1u);
  v7 = [objc_allocWithZone(NSFetchRequest) init];
  v8 = [swift_getObjCClassFromMetadata() entity];
  [v7 setEntity:v8];

  [v7 setAffectedStores:0];
  [v7 setPredicate:v6];

  v9 = sub_10003450C(v4);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v9, v11, v12, v13, v14, v15, v16, v17;
  [v7 setPropertiesToFetch:isa];

  v18 = Array._bridgeToObjectiveC()().super.isa;
  [v7 setRelationshipKeyPathsForPrefetching:v18];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v19 = Array._bridgeToObjectiveC()().super.isa;
  [v7 setSortDescriptors:v19];

  v20 = NSManagedObjectContext.fetch<A>(_:)();
  v4, v21, v22, v23, v24, v25, v26, v27;
  v5, v28, v29, v30, v31, v32, v33, v34;

  return v20;
}

uint64_t sub_1001BE4D4(uint64_t a1, void *a2)
{
  v2 = qword_100935D60;
  v3 = a2;
  if (v2 != -1)
  {
    swift_once();
  }

  type metadata accessor for REMCDSmartListSection();
  v4 = sub_10024C42C();
  v5 = sub_10024C888();
  v6 = sub_10024B964(v3, 1u);
  v7 = [objc_allocWithZone(NSFetchRequest) init];
  v8 = [swift_getObjCClassFromMetadata() entity];
  [v7 setEntity:v8];

  [v7 setAffectedStores:0];
  [v7 setPredicate:v6];

  v9 = sub_10003450C(v4);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v9, v11, v12, v13, v14, v15, v16, v17;
  [v7 setPropertiesToFetch:isa];

  v18 = Array._bridgeToObjectiveC()().super.isa;
  [v7 setRelationshipKeyPathsForPrefetching:v18];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v19 = Array._bridgeToObjectiveC()().super.isa;
  [v7 setSortDescriptors:v19];

  v20 = NSManagedObjectContext.fetch<A>(_:)();
  v4, v21, v22, v23, v24, v25, v26, v27;
  v5, v28, v29, v30, v31, v32, v33, v34;

  return v20;
}

uint64_t sub_1001BE718()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093B458);
  v1 = sub_100006654(v0, qword_10093B458);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001BE7E0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001BE840(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a3;
  v31 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v13 = *(v32 - 8);
  __chkstk_darwin(v32, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10093B458);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = v16;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "XPCSyncInterface.RestartCloudKitSync: Requested Restart CloudKit sync", v20, 2u);
    v16 = v29;
  }

  v21 = swift_allocObject();
  v22 = v30;
  v23 = v31;
  *(v21 + 16) = a1;
  *(v21 + 24) = v22;
  *(v21 + 32) = v23;
  *(v21 + 40) = v5;
  *(v21 + 48) = a2 & 1;
  aBlock[4] = sub_1001C6838;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E9018;
  v24 = _Block_copy(aBlock);
  v25 = a1;

  v26 = v5;
  static DispatchQoS.unspecified.getter();
  v33 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v32);
}

void sub_1001BEBD0(void *a1, void (*a2)(id), void *a3, char *a4, char a5)
{
  v9 = a1;
  v10 = _sSo24ICCloudContextSyncReasona7reminddE03xpcc9InterfacecD0ABSgSo010REMXPCSyncgcD0a_tcfC_0(v9);
  if (v10)
  {
    v11 = v10;
    if (a5)
    {
      v12 = qword_100935B50;
      v13 = v9;
      v14 = a4;
      swift_retain_n();
      v15 = v11;
      v16 = v13;
      v17 = v14;
      v95 = v15;
      if (v12 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100006654(v18, qword_10093B458);
      v19 = v16;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v96 = v23;
        *v22 = 136446210;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
        v27 = sub_10000668C(v24, v25, &v96);
        v26, v28, v29, v30, v31, v32, v33, v34;
        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v20, v21, "XPCSyncInterface.RestartCloudKitSync: Bypassed throttler and restart CloudKit sync now {reason: %{public}s}", v22, 0xCu);
        sub_10000607C(v23);
      }

      sub_1001BF0FC(v19, v17, a2, a3, v95);
    }

    else
    {
      v79 = *&a4[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_cloudKitThrottler];
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;
      v83 = v9;
      v84 = a4;
      swift_retain_n();
      v85 = v11;
      v86 = v83;
      v87 = v84;
      v95 = v85;
      sub_1004C3B48(v80, v82, v79, v86, v87, a2, a3, v95);

      v82, v88, v89, v90, v91, v92, v93, v94;
    }
  }

  else
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100006654(v35, qword_10093B458);
    v36 = v9;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v96 = v40;
      *v39 = 136315138;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;
      v44 = sub_10000668C(v41, v42, &v96);
      v43, v45, v46, v47, v48, v49, v50, v51;
      *(v39 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "XPCSyncInterface.RestartCloudKitSync: Unsupported sync reason - %s", v39, 0xCu);
      sub_10000607C(v40);
    }

    v52 = objc_opt_self();
    v96 = 0;
    v97 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v97, v53, v54, v55, v56, v57, v58, v59;
    v96 = 0xD00000000000001ALL;
    v97 = 0x80000001007EF8C0;
    v60._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v60._object;
    String.append(_:)(v60);
    object, v62, v63, v64, v65, v66, v67, v68;
    v69 = v97;
    v70 = String._bridgeToObjectiveC()();
    v69, v71, v72, v73, v74, v75, v76, v77;
    v78 = [v52 internalErrorWithDebugDescription:v70];

    v95 = v78;
    a2(v78);
  }
}

void sub_1001BF0FC(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10093B458);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v45 = v11;
  if (os_log_type_enabled(v12, v13))
  {
    v44 = a4;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136446210;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = a5;
    v18 = a3;
    v20 = v19;
    v21 = a2;
    v22 = sub_10000668C(v16, v19, aBlock);
    v23 = v20;
    a3 = v18;
    a5 = v17;
    v23, v24, v25, v26, v27, v28, v29, v30;
    *(v14 + 4) = v22;
    a2 = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "XPCSyncInterface.RestartCloudKitSync: Restart CloudKit sync {reason: %{public}s}", v14, 0xCu);
    sub_10000607C(v15);

    a4 = v44;
  }

  v31 = [*(a2 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController) cloudContext];
  if (v31)
  {
    v32 = v31;
    v33 = swift_allocObject();
    v33[2] = v45;
    v33[3] = v32;
    v33[4] = a5;
    v33[5] = a3;
    v33[6] = a4;
    aBlock[4] = sub_1001C6848;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008E9068;
    v34 = _Block_copy(aBlock);
    v35 = v45;
    v36 = v32;
    v37 = a5;

    [v36 cancelEverythingWithCompletionHandler:v34];
    _Block_release(v34);
  }

  else
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "XPCSyncInterface.RestartCloudKitSync: CloudContext is nil -- can't restart cloudkit sync", v40, 2u);
    }

    v41 = objc_opt_self();
    v42 = String._bridgeToObjectiveC()();
    v43 = [v41 internalErrorWithDebugDescription:v42];

    v46 = v43;
    a3(v43);
  }
}

void sub_1001BF498(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10093B458);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29[0] = v15;
    *v14 = 136446210;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    v19 = sub_10000668C(v16, v17, v29);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "XPCSyncInterface.RestartCloudKitSync: Done cancelling works in ICCC and now calls updateCloudContextStateWithSyncOption {reason: %{public}s}", v14, 0xCu);
    sub_10000607C(v15);
  }

  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  v29[4] = sub_1001C6878;
  v29[5] = v27;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 1107296256;
  v29[2] = sub_1001BF6C0;
  v29[3] = &unk_1008E90B8;
  v28 = _Block_copy(v29);

  [a2 updateCloudContextStateWithSyncOption:1 syncReason:a3 withCompletionHandler:v28];
  _Block_release(v28);
}

void sub_1001BF6C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

uint64_t sub_1001BF7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a3;
  v30 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v13 = *(v31 - 8);
  __chkstk_darwin(v31, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10093B458);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v28 = v16;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Delete Application data from CloudKit", v20, 2u);
    v16 = v28;
  }

  v21 = swift_allocObject();
  v22 = v29;
  v23 = v30;
  v21[2] = v5;
  v21[3] = v22;
  v21[4] = a4;
  v21[5] = a1;
  v21[6] = v23;
  aBlock[4] = sub_1001C6808;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E8EB0;
  v24 = _Block_copy(aBlock);
  v25 = v5;

  static DispatchQoS.unspecified.getter();
  v32 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v31);
}

void sub_1001BFB78(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController);
  v10 = [v9 cloudContext];
  if (v10)
  {
    v11 = v10;
    v12 = [v9 accountUtils];
    if (v12)
    {
      v13 = v12;
      v14 = String._bridgeToObjectiveC()();
      v15 = swift_allocObject();
      v15[2] = a2;
      v15[3] = a3;
      v15[4] = v13;
      v15[5] = a4;
      v15[6] = a5;
      aBlock[4] = sub_1001C6820;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100042968;
      aBlock[3] = &unk_1008E8F00;
      v16 = _Block_copy(aBlock);

      [v11 deleteAllApplicationDataFromServerWithAccountID:v14 completion:v16];
      _Block_release(v16);

      return;
    }

    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_10093B458);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Missing account utils -- can't purge migration state cache", v26, 2u);
    }

    v27 = objc_opt_self();
    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 internalErrorWithDebugDescription:v28];

    v30 = v29;
    a2(v29);
  }

  else
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_10093B458);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "CloudContext is nil -- can't delete server data", v20, 2u);
    }

    v21 = objc_opt_self();
    v22 = String._bridgeToObjectiveC()();
    v30 = [v21 internalErrorWithDebugDescription:v22];

    a2(v30);
  }
}

uint64_t sub_1001BFF70(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10093B458);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v12 = 136315138;
      swift_errorRetain();
      sub_1000F5104(&qword_10093B608, &unk_1007B20D0);
      v14 = String.init<A>(describing:)();
      v16 = v15;
      v17 = sub_10000668C(v14, v15, &v29);
      v16, v18, v19, v20, v21, v22, v23, v24;
      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to delete application data from server {error: %s}", v12, 0xCu);
      sub_10000607C(v13);
    }

    return a2(a1);
  }

  else
  {
    v28 = swift_allocObject();
    *(v28 + 16) = a2;
    *(v28 + 24) = a3;

    sub_1006C1180(a5, a6, sub_1001C6830, v28);
  }
}

uint64_t sub_1001C0194(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_10093B458);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v9 = String.init<A>(describing:)();
      v11 = v10;
      v12 = sub_10000668C(v9, v10, &v21);
      v11, v13, v14, v15, v16, v17, v18, v19;
      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to purge migration state cache {error: %s}", v7, 0xCu);
      sub_10000607C(v8);
    }

    else
    {
    }
  }

  return a2(a1);
}

uint64_t sub_1001C0354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a1;
  v30 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v13 = *(v31 - 8);
  __chkstk_darwin(v31, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10093B458);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v28 = v16;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Reset migration state", v20, 2u);
    v16 = v28;
  }

  v21 = swift_allocObject();
  v22 = v29;
  v23 = v30;
  v21[2] = v5;
  v21[3] = v22;
  v21[4] = a2;
  v21[5] = a3;
  v21[6] = v23;
  aBlock[4] = sub_1001C67E4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E8E38;
  v24 = _Block_copy(aBlock);

  v25 = v5;
  static DispatchQoS.unspecified.getter();
  v32 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v31);
}

void sub_1001C06E4(char *a1, void *a2, _TtC7remindd19RDXPCStorePerformer *a3, void (*a4)(id), uint64_t a5)
{
  v10 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v81 - v12;
  sub_10031BE94();
  v14 = *&a1[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController];
  sub_10031C3BC(v14);
  if (a3)
  {
    v82 = a4;
    v83 = a5;
  }

  else
  {
    v15 = [objc_opt_self() sharedInstance];
    v16 = [v15 unsafeUntilSystemReady_primaryICloudACAccount];

    if (!v16)
    {
      if (qword_100935B50 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_100006654(v71, qword_10093B458);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "deleteApplicationDataFromCloudKit: accountIdentifier is nil", v74, 2u);
      }

      v75 = objc_opt_self();
      v76 = String._bridgeToObjectiveC()();
      v81 = [v75 internalErrorWithDebugDescription:v76];

      a4(v81);
      v77 = v81;

      return;
    }

    v17 = [v16 identifier];
    if (!v17)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    v18 = v17;
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v19;

    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_10093B458);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v82 = a4;
    v83 = a5;
    if (v23)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Primary account found - calling unmigration service for the account", v24, 2u);
    }
  }

  v25 = String._bridgeToObjectiveC()();
  v26 = [v14 newBackgroundContextWithAuthor:v25];

  __chkstk_darwin(v27, v28);
  *(&v81 - 4) = a2;
  *(&v81 - 3) = a3;
  *(&v81 - 2) = v26;
  NSManagedObjectContext.rem_performAndWait<A>(_:)();
  if (v84 == 1)
  {
    UUID.init(uuidString:)();
    v29 = type metadata accessor for UUID();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v13, 1, v29) != 1)
    {
      a3, v31, v32, v33, v34, v35, v36, v37;
      v38 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v30 + 8))(v13, v29);
      v40 = [v38 objectIDWithUUID:isa];

      sub_10031C72C(v40, v14);
      v41 = swift_allocObject();
      v41[2] = v82;
      v41[3] = v83;
      v41[4] = a1;
      v41[5] = v40;

      v42 = a1;
      v43 = v40;
      sub_100312738(sub_1001C67FC, v41);

      return;
    }

    goto LABEL_27;
  }

  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100006654(v44, qword_10093B458);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  a3, v47, v48, v49, v50, v51, v52, v53;
  if (os_log_type_enabled(v45, v46))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v84 = v62;
    *v61 = 136315138;
    v63 = sub_10000668C(a2, a3, &v84);
    a3, v64, v65, v66, v67, v68, v69, v70;
    *(v61 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v45, v46, "deleteApplicationDataFromCloudKit: accountIdentifier { %s } is not from CloudKit account", v61, 0xCu);
    sub_10000607C(v62);
  }

  else
  {
    a3, v54, v55, v56, v57, v58, v59, v60;
  }

  v78 = objc_opt_self();
  v79 = String._bridgeToObjectiveC()();
  v80 = [v78 internalErrorWithDebugDescription:v79];

  v82(v80);
}

void sub_1001C0FF8(char a1, void *a2, void (*a3)(id), uint64_t a4, double a5, uint64_t a6, void *a7)
{
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10093B458);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = a5;
      _os_log_impl(&_mh_execute_header, v19, v20, "Server unmigration succeed {timeElapsed: %f}", v21, 0xCu);
    }

    v22 = [a7 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*(v14 + 8))(v17, v13);
    sub_1001BF7E8(v23, v25, a3, a4);
    v25, v26, v27, v28, v29, v30, v31, v32;
  }

  else
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_10093B458);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to unmigrate account - server returned error", v36, 2u);
    }

    if (a2)
    {
      v37 = a2;
    }

    else
    {
      v38 = objc_opt_self();
      v39 = String._bridgeToObjectiveC()();
      v37 = [v38 internalErrorWithDebugDescription:v39];
    }

    swift_errorRetain();
    a3(v37);
  }
}

uint64_t sub_1001C1394(void *a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v24[0] = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v15 = *(v25 - 8);
  __chkstk_darwin(v25, v16);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&v5[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_queue];
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v5;
  *(v19 + 32) = a2;
  *(v19 + 33) = a3;
  *(v19 + 40) = v24[0];
  *(v19 + 48) = a5;
  aBlock[4] = sub_1001C67A8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E8CA8;
  v20 = _Block_copy(aBlock);
  v21 = a1;
  v22 = v5;

  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v25);
}

uint64_t sub_1001C1638(void *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v137 = a6;
  v136 = a5;
  v133 = a4;
  v132 = a3;
  v144 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v141 = *(v7 - 8);
  v142 = v7;
  __chkstk_darwin(v7, v8);
  v139 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for DispatchQoS();
  v138 = *(v140 - 8);
  __chkstk_darwin(v140, v10);
  v135 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v125 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v130 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v23 = &v125 - v22;
  v134 = swift_allocObject();
  *(v134 + 16) = 0;
  v131 = swift_allocObject();
  *(v131 + 16) = 0;
  v143 = dispatch_group_create();
  v24 = [objc_opt_self() sharedInstance];
  v25 = [v24 accountStore];

  v145 = a1;
  v26 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  v28 = v27;
  v29 = *(v17 + 8);
  v29(v23, v16);
  v30 = String._bridgeToObjectiveC()();
  v28, v31, v32, v33, v34, v35, v36, v37;
  v38 = [v25 accountWithIdentifier:v30];

  if (!v38)
  {
    __break(1u);
LABEL_31:
    __break(1u);
  }

  v39 = [v38 displayAccount];

  if (!v39)
  {
    goto LABEL_31;
  }

  v40 = [v39 identifier];

  v41 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
  v42 = v145;
  if (!v40)
  {
LABEL_6:
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100006654(v52, qword_10093B458);
    v53 = v42;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    v56 = os_log_type_enabled(v54, v55);
    v57 = v144;
    if (v56)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138543362;
      *(v58 + 4) = v53;
      *v59 = v53;
      v60 = v53;
      _os_log_impl(&_mh_execute_header, v54, v55, "migrateICloudCalDavToCloudKit: Couldn't determine the display account ID for setting flag didChooseToMigrateLocally {accountID: %{public}@}", v58, 0xCu);
      sub_1000050A4(v59, &unk_100938E70, &unk_100797230);
      v41 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
    }

    goto LABEL_29;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;
  UUID.init(uuidString:)();
  v44, v45, v46, v47, v48, v49, v50, v51;
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_1000050A4(v15, &unk_100939D90, "8\n\r");
    goto LABEL_6;
  }

  v129 = v29;
  v61 = v130;
  v62 = (*(v17 + 32))(v130, v15, v16);
  v57 = v144;
  v82 = (*(v144 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeProvider))(v62);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v85 = [ObjCClassFromMetadata objectIDWithUUID:isa];

  aBlock = 0;
  v86 = v82;
  v87 = [v82 fetchAccountWithObjectID:v85 error:&aBlock];

  if (v87)
  {
    v128 = v86;
    v88 = aBlock;
    if (([v87 didChooseToMigrateLocally]& 1) != 0)
    {
      if (qword_100935B50 != -1)
      {
        swift_once();
      }

      v89 = type metadata accessor for Logger();
      sub_100006654(v89, qword_10093B458);
      v90 = v40;
      v91 = v42;
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();

      LODWORD(v127) = v93;
      v94 = v92;
      v95 = os_log_type_enabled(v92, v93);
      v96 = v129;
      if (v95)
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *v97 = 138543618;
        *(v97 + 4) = v90;
        *(v97 + 12) = 2114;
        *(v97 + 14) = v91;
        v126 = v98;
        *v98 = v40;
        v98[1] = v91;
        v99 = v90;
        v100 = v91;
        _os_log_impl(&_mh_execute_header, v94, v127, "migrateICloudCalDavToCloudKit: Account flag didChooseToMigrateLocally is already true {displayACAccountID: %{public}@, accountID: %{public}@}", v97, 0x16u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        v90 = v128;
      }

      else
      {
        v99 = v92;
        v94 = v87;
        v87 = v128;
      }

      v111 = v130;
    }

    else
    {
      v102 = objc_allocWithZone(REMSaveRequest);
      v103 = [v102 initWithStore:v128];
      v127 = [v103 updateAccount:v87];
      [v127 setDidChooseToMigrateLocally:1];
      v104 = v143;
      dispatch_group_enter(v143);
      v126 = *(v57 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_queue);
      v105 = swift_allocObject();
      v105[2] = v40;
      v105[3] = v42;
      v105[4] = v104;
      v151 = sub_1001C67D8;
      v152 = v105;
      aBlock = _NSConcreteStackBlock;
      v148 = 1107296256;
      v149 = sub_100042968;
      v150 = &unk_1008E8DC0;
      v106 = v42;
      v107 = _Block_copy(&aBlock);
      v108 = v40;
      v109 = v106;
      v110 = v104;

      [v103 saveWithQueue:v126 completion:v107];
      v94 = v103;
      _Block_release(v107);

      v99 = v128;
      v90 = v87;
      v87 = v127;
      v111 = v130;
      v96 = v129;
    }

    v96(v111, v16);
    v42 = v145;
  }

  else
  {
    v101 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v129(v61, v16);
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100006654(v63, qword_10093B458);
    v64 = v42;
    swift_errorRetain();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      aBlock = v69;
      *v67 = 138543618;
      *(v67 + 4) = v64;
      *v68 = v64;
      *(v67 + 12) = 2082;
      swift_getErrorValue();
      v70 = v64;
      v57 = v144;
      v71 = Error.rem_errorDescription.getter();
      v73 = v72;
      v74 = sub_10000668C(v71, v72, &aBlock);
      v73, v75, v76, v77, v78, v79, v80, v81;
      *(v67 + 14) = v74;
      v42 = v145;
      _os_log_impl(&_mh_execute_header, v65, v66, "migrateICloudCalDavToCloudKit: Failed to set flag didChooseToMigrateLocally before migration {accountID: %{public}@, error: %{public}s}", v67, 0x16u);
      sub_1000050A4(v68, &unk_100938E70, &unk_100797230);

      sub_10000607C(v69);
    }

    else
    {
    }
  }

  v41 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
LABEL_29:
  sub_10031C72C(v42, *(v57 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController));
  v145 = v112;
  v113 = v143;
  dispatch_group_enter(v143);
  v114 = swift_allocObject();
  v115 = v134;
  v116 = v131;
  v114[2] = v134;
  v114[3] = v116;
  v114[4] = v113;
  v117 = v113;

  sub_100312C34(v132 & 1, v133 & 1, sub_1001C67BC, v114);

  v118 = swift_allocObject();
  v119 = v137;
  v118[2] = v136;
  v118[3] = v119;
  v118[4] = v115;
  v118[5] = v116;
  v151 = sub_1001C67CC;
  v152 = v118;
  aBlock = _NSConcreteStackBlock;
  v148 = v41[87];
  v149 = sub_100019200;
  v150 = &unk_1008E8D70;
  v120 = _Block_copy(&aBlock);

  v121 = v135;
  static DispatchQoS.unspecified.getter();
  v146 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  v122 = v139;
  v123 = v142;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v120);

  (*(v141 + 8))(v122, v123);
  (*(v138 + 8))(v121, v140);
}

void sub_1001C241C(uint64_t a1, void *a2, void *a3, NSObject *a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_10093B458);
    swift_errorRetain();
    v8 = a2;
    v9 = a3;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v10, v11))
    {

      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v14;
    *v12 = 138543874;
    *(v12 + 4) = v8;
    *(v12 + 12) = 2114;
    *(v12 + 14) = v9;
    *v13 = v8;
    v13[1] = v9;
    *(v12 + 22) = 2082;
    swift_errorRetain();
    v15 = v8;
    v16 = v9;
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    v20 = sub_10000668C(v17, v18, &v36);
    v19, v21, v22, v23, v24, v25, v26, v27;
    *(v12 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "migrateICloudCalDavToCloudKit: Failed to save flag didChooseToMigrateLocally before migration {displayACAccountID: %{public}@, accountID: %{public}@, error: %{public}s}", v12, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    sub_10000607C(v14);
  }

  else
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_10093B458);
    v29 = a2;
    v30 = a3;
    v10 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138543618;
      *(v32 + 4) = v29;
      *(v32 + 12) = 2114;
      *(v32 + 14) = v30;
      *v33 = v29;
      v33[1] = v30;
      v34 = v29;
      v35 = v30;
      _os_log_impl(&_mh_execute_header, v10, v31, "migrateICloudCalDavToCloudKit: Saved flag didChooseToMigrateLocally before migration {displayACAccountID: %{public}@, accountID: %{public}@}", v32, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }
  }

LABEL_12:
  dispatch_group_leave(a4);
}

void sub_1001C2790(void *a1, char a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  if (a2)
  {
    swift_beginAccess();
    *(a4 + 16) = a1;
    swift_errorRetain();
  }

  else
  {
    swift_beginAccess();
    v9 = *(a3 + 16);
    *(a3 + 16) = a1;
    v10 = a1;
  }

  dispatch_group_leave(a5);
}

void sub_1001C282C(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  swift_beginAccess();
  v8 = *(a4 + 16);
  v9 = v7;
  swift_errorRetain();
  a1(v7, v8);
}

uint64_t sub_1001C2920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  __chkstk_darwin(v23, v15);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v4[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_queue];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v4;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = sub_1001C671C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E8C08;
  v19 = _Block_copy(aBlock);

  v20 = v4;

  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

void sub_1001C2BBC(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void (*a4)(void, id), uint64_t a5)
{
  if (a2)
  {
    v7 = a2;

LABEL_10:
    v17 = objc_opt_self();
    v18 = String._bridgeToObjectiveC()();
    v7, v19, v20, v21, v22, v23, v24, v25;
    v26 = [v17 newCloudContainerForAccountID:v18];

    v27 = [v26 privateCloudDatabase];
    sub_1000060C8(0, &qword_10093B610, CKQuery_ptr);
    v28 = [objc_opt_self() predicateWithValue:1];
    v29._countAndFlagsBits = 0x6F6974617267694DLL;
    v29._object = 0xEE0065686361436ELL;
    isa = CKQuery.init(recordType:predicate:)(v29, v28).super.isa;
    v31 = [objc_allocWithZone(CKRecordZoneID) initWithZoneName:@"RemindersMigration" ownerName:CKCurrentUserDefaultName databaseScope:2];
    v32 = swift_allocObject();
    *(v32 + 16) = a4;
    *(v32 + 24) = a5;
    v33 = v31;

    CKDatabase.fetch(withQuery:inZoneWith:desiredKeys:resultsLimit:completionHandler:)();

    return;
  }

  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 unsafeUntilSystemReady_primaryICloudACAccount];

  if (v9)
  {
    v10 = [v9 identifier];
    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v12;

    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_10093B458);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Use primary account as default for debug downloading migration cache", v16, 2u);
    }

    goto LABEL_10;
  }

  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100006654(v34, qword_10093B458);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "debugDownloadMigrationCache: accountIdentifier is nil", v37, 2u);
  }

  v38 = objc_opt_self();
  v39 = String._bridgeToObjectiveC()();
  v40 = [v38 internalErrorWithDebugDescription:v39];

  a4(0, v40);
}

void sub_1001C3030(uint64_t a1, uint64_t a2, char a3, void (*a4)(unint64_t, id))
{
  if (a3)
  {
    v6 = objc_opt_self();
    _StringGuts.grow(_:)(39);
    0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
    swift_getErrorValue();
    v14._countAndFlagsBits = Error.localizedDescription.getter();
    object = v14._object;
    String.append(_:)(v14);
    object, v16, v17, v18, v19, v20, v21, v22;
    v23 = String._bridgeToObjectiveC()();
    0x80000001007EF810, v24, v25, v26, v27, v28, v29, v30;
    v31 = [v6 internalErrorWithDebugDescription:v23];

    a4(0, v31);
    return;
  }

  v39 = sub_10038F794(&_swiftEmptyArrayStorage);
  v40 = *(a1 + 16);
  if (!v40)
  {
    v41 = _swiftEmptyDictionarySingleton;
LABEL_36:
    if (*v41->clientIdentity)
    {
      v39, v32, v33, v34, v35, v36, v37, v38;
      v115 = objc_opt_self();
      _StringGuts.grow(_:)(39);
      0xE000000000000000, v116, v117, v118, v119, v120, v121, v122;
      sub_1000060C8(0, &unk_100938CD0, CKRecordID_ptr);
      sub_1001C6740();
      v123 = Dictionary.description.getter();
      v125 = v124;
      v41, v124, v126, v127, v128, v129, v130, v131;
      v132._countAndFlagsBits = v123;
      v132._object = v125;
      String.append(_:)(v132);
      v125, v133, v134, v135, v136, v137, v138, v139;
      v140 = String._bridgeToObjectiveC()();
      0x80000001007EF810, v141, v142, v143, v144, v145, v146, v147;
      v148 = [v115 internalErrorWithDebugDescription:v140];

      a4(0, v148);
    }

    else
    {
      v41, v32, v33, v34, v35, v36, v37, v38;
      a4(v39, 0);
      v39, v149, v150, v151, v152, v153, v154, v155;
    }

    return;
  }

  v41 = _swiftEmptyDictionarySingleton;
  v42 = (a1 + 48);
  while (1)
  {
    v46 = *(v42 - 2);
    v47 = *(v42 - 1);
    if (*v42)
    {
      break;
    }

    v158 = v46;
    sub_100066F20(v47, 0);
    v69 = [v47 recordID];
    v70 = [v69 recordName];

    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
    CKRecordKeyValueSetting.subscript.getter();
    if (*(&v160 + 1) >> 60 == 15)
    {
      v74 = sub_100005F4C(v71, v73);
      v76 = v75;
      v73, v75, v77, v78, v79, v80, v81, v82;
      if (v76)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_100374E40();
        }

        *(*(v39 + 48) + 16 * v74 + 8), v83, v84, v85, v86, v87, v88, v89;
        sub_10001BBA0(*(*(v39 + 56) + 16 * v74), *(*(v39 + 56) + 16 * v74 + 8));
        sub_1003328B8(v74, v39);
      }

      goto LABEL_6;
    }

    v90 = v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v159 = v39;
    v99 = sub_100005F4C(v71, v73);
    v100 = v39;
    v101 = *(v39 + 16);
    v102 = (v92 & 1) == 0;
    v103 = v101 + v102;
    if (__OFADD__(v101, v102))
    {
      goto LABEL_40;
    }

    v104 = v92;
    if (*(v100 + 24) >= v103)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v41 = v90;
        if (v92)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_100374E40();
        v41 = v90;
        if (v104)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_10036D518(v103, isUniquelyReferenced_nonNull_native);
      v105 = sub_100005F4C(v71, v73);
      if ((v104 & 1) != (v92 & 1))
      {
        goto LABEL_44;
      }

      v99 = v105;
      v41 = v90;
      if (v104)
      {
LABEL_5:
        v73, v92, v93, v94, v95, v96, v97, v98;
        v39 = v159;
        v43 = (v159[7] + 16 * v99);
        v44 = *v43;
        v45 = v43[1];
        *v43 = v160;
        sub_10001BBA0(v44, v45);
LABEL_6:
        sub_100067078(v47, 0);

        goto LABEL_7;
      }
    }

    v39 = v159;
    v159[(v99 >> 6) + 8] |= 1 << v99;
    v111 = (v159[6] + 16 * v99);
    *v111 = v71;
    v111[1] = v73;
    *(v159[7] + 16 * v99) = v160;

    sub_100067078(v47, 0);
    v112 = v159[2];
    v66 = __OFADD__(v112, 1);
    v113 = v112 + 1;
    if (v66)
    {
      goto LABEL_42;
    }

    v159[2] = v113;
LABEL_7:
    v42 += 24;
    if (!--v40)
    {
      goto LABEL_36;
    }
  }

  v157 = v40;
  v48 = *(v42 - 1);
  v49 = v39;
  swift_getErrorValue();
  v50 = v46;
  v51 = v48;
  sub_100066F20(v48, 1);
  v52 = Error.localizedDescription.getter();
  v54 = v53;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  *&v160 = v41;
  v56 = sub_100364538(v50);
  v64 = *v41->clientIdentity;
  v65 = (v57 & 1) == 0;
  v66 = __OFADD__(v64, v65);
  v67 = v64 + v65;
  if (!v66)
  {
    v68 = v57;
    if (*&v41->clientIdentity[8] >= v67)
    {
      if ((v55 & 1) == 0)
      {
        v114 = v56;
        sub_100374CD0();
        v56 = v114;
      }
    }

    else
    {
      sub_10036D294(v67, v55);
      v56 = sub_100364538(v50);
      if ((v68 & 1) != (v57 & 1))
      {
        goto LABEL_43;
      }
    }

    v39 = v49;
    if (v68)
    {
      v106 = (*&v41->clientIdentity[40] + 16 * v56);
      v107 = v106[1];
      *v106 = v52;
      v106[1] = v54;
      v107, v57, v58, v59, v60, v61, v62, v63;
      sub_100067078(v51, 1);

      v40 = v157;
    }

    else
    {
      *&v41->storeProvider[8 * (v56 >> 6) + 2] |= 1 << v56;
      *(*&v41->clientIdentity[32] + 8 * v56) = v50;
      v108 = (*&v41->clientIdentity[40] + 16 * v56);
      *v108 = v52;
      v108[1] = v54;
      sub_100067078(v51, 1);
      v109 = *v41->clientIdentity;
      v66 = __OFADD__(v109, 1);
      v110 = v109 + 1;
      v40 = v157;
      if (v66)
      {
        goto LABEL_41;
      }

      *v41->clientIdentity = v110;
    }

    goto LABEL_7;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  sub_1000060C8(0, &unk_100938CD0, CKRecordID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_44:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1001C3734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_1001C37DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a3;
  v30 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v13 = *(v31 - 8);
  __chkstk_darwin(v31, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10093B458);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v28 = v16;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Manual fetch user record", v20, 2u);
    v16 = v28;
  }

  v21 = swift_allocObject();
  v22 = v29;
  v23 = v30;
  v21[2] = v5;
  v21[3] = v22;
  v21[4] = v23;
  v21[5] = a1;
  v21[6] = a2;
  aBlock[4] = sub_1001C66D4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E8B40;
  v24 = _Block_copy(aBlock);

  v25 = v5;

  static DispatchQoS.unspecified.getter();
  v32 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v31);
}

void sub_1001C3B6C(uint64_t a1, void (*a2)(void, id), uint64_t a3, void **a4, _TtC7remindd19RDXPCStorePerformer *a5)
{
  v9 = *(a1 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController);
  v10 = [v9 cloudContext];
  if (v10)
  {
    v78 = v10;
    if (a5)
    {

LABEL_19:
      v26 = String._bridgeToObjectiveC()();
      v27 = [v9 newBackgroundContextWithAuthor:v26];

      __chkstk_darwin(v28, v29);
      NSManagedObjectContext.rem_performAndWait<A>(_:)();
      if (aBlock == 1)
      {
        v30 = String._bridgeToObjectiveC()();
        a5, v31, v32, v33, v34, v35, v36, v37;
        v38 = swift_allocObject();
        *(v38 + 16) = a2;
        *(v38 + 24) = a3;
        v83 = sub_1001C66EC;
        v84 = v38;
        aBlock = _NSConcreteStackBlock;
        v80 = 1107296256;
        v81 = sub_10016AC08;
        v82 = &unk_1008E8B90;
        v39 = _Block_copy(&aBlock);

        [v78 fetchUserRecordWithAccountID:v30 completionHandler:v39];

        _Block_release(v39);
      }

      else
      {
        if (qword_100935B50 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_100006654(v40, qword_10093B458);

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        a5, v43, v44, v45, v46, v47, v48, v49;
        if (os_log_type_enabled(v41, v42))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          aBlock = v51;
          *v50 = 136315138;
          *(v50 + 4) = sub_10000668C(a4, a5, &aBlock);
          _os_log_impl(&_mh_execute_header, v41, v42, "fetchUserRecord: accountIdentifier { %s } is not from CloudKit account", v50, 0xCu);
          sub_10000607C(v51);
        }

        v52 = objc_opt_self();
        aBlock = 0;
        v80 = 0xE000000000000000;
        _StringGuts.grow(_:)(33);
        v80, v53, v54, v55, v56, v57, v58, v59;
        aBlock = a4;
        v80 = a5;
        v60._countAndFlagsBits = 0xD00000000000001FLL;
        v60._object = 0x80000001007EE110;
        String.append(_:)(v60);
        v61 = v80;
        v62 = String._bridgeToObjectiveC()();
        v61, v63, v64, v65, v66, v67, v68, v69;
        v70 = [v52 internalErrorWithDebugDescription:v62];

        a2(0, v70);
      }

      return;
    }

    v17 = [objc_opt_self() sharedInstance];
    v18 = [v17 unsafeUntilSystemReady_primaryICloudACAccount];

    if (v18)
    {
      v19 = [v18 identifier];
      if (!v19)
      {
        __break(1u);
        return;
      }

      v20 = v19;
      a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a5 = v21;

      if (qword_100935B50 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_10093B458);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Use primary account as default for fetching user record", v25, 2u);
      }

      goto LABEL_19;
    }

    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_100006654(v71, qword_10093B458);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "fetchUserRecord: accountIdentifier is nil", v74, 2u);
    }

    v75 = objc_opt_self();
    v76 = String._bridgeToObjectiveC()();
    v77 = [v75 internalErrorWithDebugDescription:v76];

    a2(0, v77);
  }

  else
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_10093B458);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "CloudContext is nil -- can't fetch user record", v14, 2u);
    }

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v78 = [v15 internalErrorWithDebugDescription:v16];

    a2(0, v78);
  }
}

double sub_1001C456C(void *a1, int a2, _TtC7remindd19RDXPCStorePerformer *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  if (a3)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v15 = a1;
  a7(v12, a3, a6, v14);

  a3, v16, v17, v18, v19, v20, v21, v22;
  return result;
}

uint64_t sub_1001C4638(int a1, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v35 = a7;
  v32 = a6;
  v33 = a4;
  v34 = a2;
  v31 = a1;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v16 = *(v36 - 8);
  __chkstk_darwin(v36, v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_10093B458);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v30 = v19;
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Force set migration state", v23, 2u);
    v19 = v30;
  }

  v24 = swift_allocObject();
  v26 = v32;
  v25 = v33;
  *(v24 + 16) = v8;
  *(v24 + 24) = v26;
  *(v24 + 32) = v35;
  *(v24 + 40) = v25;
  *(v24 + 48) = a5;
  *(v24 + 56) = v31 & 1;
  *(v24 + 57) = v34 & 1;
  *(v24 + 58) = a3 & 1;
  aBlock[4] = sub_1001C6664;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E8A50;
  v27 = _Block_copy(aBlock);

  v28 = v8;

  static DispatchQoS.unspecified.getter();
  v37 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v12 + 8))(v15, v11);
  (*(v16 + 8))(v19, v36);
}

void sub_1001C49F8(uint64_t a1, void (*a2)(id), id a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, char a6, char a7, char a8)
{
  v15 = *(a1 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController);
  v16 = [v15 cloudContext];
  if (!v16)
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_10093B458);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "CloudContext is nil -- can't set migration state", v22, 2u);
    }

    v23 = objc_opt_self();
    v24 = String._bridgeToObjectiveC()();
    v89 = [v23 internalErrorWithDebugDescription:v24];

    a2(v89);
    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v15 accountUtils];
  if (!v18)
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_10093B458);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "AccountUtils is nil -- can't clear migration state cache", v28, 2u);
    }

    v29 = objc_opt_self();
    v30 = String._bridgeToObjectiveC()();
    v89 = [v29 internalErrorWithDebugDescription:v30];

    a2(v89);
LABEL_15:

    return;
  }

  v87 = v18;
  if (a5)
  {
    v88 = a4;

LABEL_25:
    v40 = String._bridgeToObjectiveC()();
    v41 = [v15 newBackgroundContextWithAuthor:v40];

    __chkstk_darwin(v42, v43);
    v86 = v41;
    NSManagedObjectContext.rem_performAndWait<A>(_:)();
    if (LOBYTE(aBlock[0]) == 1)
    {
      v44 = String._bridgeToObjectiveC()();
      v45 = swift_allocObject();
      v46 = a6 & 1;
      *(v45 + 16) = v46;
      *(v45 + 17) = a7 & 1;
      *(v45 + 18) = a8 & 1;
      *(v45 + 24) = a2;
      *(v45 + 32) = a3;
      *(v45 + 40) = v87;
      *(v45 + 48) = v88;
      *(v45 + 56) = a5;
      aBlock[4] = sub_1001C6698;
      aBlock[5] = v45;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100042968;
      aBlock[3] = &unk_1008E8AA0;
      v47 = _Block_copy(aBlock);

      [v17 setMigrationStateToDidChooseToMigrate:v46 didFinishMigration:a7 & 1 createZoneAccountIfFinishMigration:a8 & 1 accountID:v44 completionHandler:v47];

      _Block_release(v47);
    }

    else
    {
      if (qword_100935B50 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_100006654(v48, qword_10093B458);

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      a5, v51, v52, v53, v54, v55, v56, v57;
      if (os_log_type_enabled(v49, v50))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        aBlock[0] = v66;
        *v65 = 136315138;
        v67 = sub_10000668C(v88, a5, aBlock);
        a5, v68, v69, v70, v71, v72, v73, v74;
        *(v65 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v49, v50, "setMigrationStateToDidChooseToMigrate: accountIdentifier { %s } is not from CloudKit account", v65, 0xCu);
        sub_10000607C(v66);
      }

      else
      {
        a5, v58, v59, v60, v61, v62, v63, v64;
      }

      v82 = objc_opt_self();
      v83 = String._bridgeToObjectiveC()();
      v84 = [v82 internalErrorWithDebugDescription:v83];

      v85 = v84;
      a2(v84);
    }

    return;
  }

  v31 = [objc_opt_self() sharedInstance];
  v32 = [v31 unsafeUntilSystemReady_primaryICloudACAccount];

  if (v32)
  {
    v33 = [v32 identifier];
    if (!v33)
    {
      __break(1u);
      return;
    }

    v34 = v33;
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v35;

    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100006654(v36, qword_10093B458);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Use primary account as default for calling set migration state", v39, 2u);
    }

    goto LABEL_25;
  }

  if (qword_100935B50 != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  sub_100006654(v75, qword_10093B458);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&_mh_execute_header, v76, v77, "setMigrationStateToDidChooseToMigrate: accountIdentifier is nil", v78, 2u);
  }

  v79 = objc_opt_self();
  v80 = String._bridgeToObjectiveC()();
  v81 = [v79 internalErrorWithDebugDescription:v80];

  a2(v81);
}

uint64_t sub_1001C55A4(uint64_t a1, char a2, char a3, char a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10093B458);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v18 = 136315906;
      swift_errorRetain();
      sub_1000F5104(&qword_10093B608, &unk_1007B20D0);
      v19 = String.init<A>(describing:)();
      v36 = a4;
      v21 = v20;
      v22 = a5;
      v23 = a3;
      v24 = sub_10000668C(v19, v20, &v38);
      v21, v25, v26, v27, v28, v29, v30, v31;
      *(v18 + 4) = v24;
      *(v18 + 12) = 1024;
      *(v18 + 14) = a2 & 1;
      *(v18 + 18) = 1024;
      v32 = v23 & 1;
      a5 = v22;
      *(v18 + 20) = v32;
      *(v18 + 24) = 1024;
      *(v18 + 26) = v36 & 1;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to set migration state {error: %s, didChooseToMigrate: %{BOOL}d, didFinishMigration: %{BOOL}d, createZoneAccountIfFinishMigration: %{BOOL}d", v18, 0x1Eu);
      sub_10000607C(v37);
    }

    return a5(a1);
  }

  else
  {
    v35 = swift_allocObject();
    *(v35 + 16) = a5;
    *(v35 + 24) = a6;

    sub_1006C1180(a8, a9, sub_100189954, v35);
  }
}

uint64_t sub_1001C58FC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = *&v3[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_queue];
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_1001C64AC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E89D8;
  v18 = _Block_copy(aBlock);
  v19 = v3;
  v20 = a1;

  static DispatchQoS.unspecified.getter();
  v22[1] = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

uint64_t sub_1001C5B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_clientIdentity + 16);
  v7 = *(a1 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_clientIdentity);
  v8[0] = v4;
  *(v8 + 14) = *(a1 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_clientIdentity + 30);
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  return sub_100014A64(&v7, sub_1001C64B8, v6);
}

void sub_1001C5DF4(uint64_t a1, void *a2, void (*a3)(void))
{
  v6 = sub_100577A10(a2);
  if (!v3)
  {
    if (v6)
    {
      v7 = v6;
      v8 = [v6 ckServerRecord];
      a3();
    }

    else
    {
      if (qword_100935B50 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100006654(v9, qword_10093B458);
      v10 = a2;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138543362;
        *(v13 + 4) = v10;
        *v14 = v10;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v11, v12, "fetchServerRecord: Tried to fetch non-existent object {remObjectID: %{public}@}", v13, 0xCu);
        sub_1000050A4(v14, &unk_100938E70, &unk_100797230);
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v10];
      swift_willThrow();
    }
  }
}

void sub_1001C6060(const char *a1, SEL *a2, ...)
{
  v5 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10093B458);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v7;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, a1, v12, 0xCu);
      sub_1000050A4(v13, &unk_100938E70, &unk_100797230);
    }

    v15 = type metadata accessor for RDStoreControllerActivityObserver();
    v16 = objc_allocWithZone(v15);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v22.receiver = v16;
    v22.super_class = v15;
    v17 = objc_msgSendSuper2(&v22, "init");
    [*(v5 + OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController) *a2];
  }

  else
  {
    if (qword_100935B50 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10093B458);
    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v19, "Perform has no clientConnection. Is this really an XPC call? Without a real XPC call, I cannot ask the storeController to actively notify anything.", v20, 2u);
    }
  }
}

void *sub_1001C64D8(void *a1, uint64_t a2, void *a3)
{
  v3[2] = a3;
  v3[3] = a1;
  type metadata accessor for RDThrottler(0);
  v7 = swift_allocObject();
  *(v7 + 16) = 1;
  *(v7 + 24) = 0x403E000000000000;
  strcpy((v7 + 32), "CloudKit Sync");
  *(v7 + 46) = -4864;
  *(v7 + 48) = a3;
  v8 = a3;
  v9 = a1;
  Date.init(timeIntervalSinceNow:)();
  *(v7 + OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount) = 1;
  v3[5] = v7;
  v10 = swift_allocObject();
  v10[2] = 1;
  v10[3] = 0x403E000000000000;
  v10[4] = 0xD00000000000001DLL;
  v10[5] = 0x80000001007EF8E0;
  v10[6] = v8;
  v11 = v8;
  Date.init(timeIntervalSinceNow:)();
  *(v10 + OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount) = 1;
  v3[4] = v10;
  v12 = swift_allocObject();
  v12[2] = 1;
  v12[3] = 0x403E000000000000;
  v12[4] = 0x6563634161746144;
  v12[5] = 0xEF636E7953207373;
  v12[6] = v11;
  Date.init(timeIntervalSinceNow:)();
  *(v12 + OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount) = 1;
  v3[6] = v12;
  v3[7] = a2;
  return v3;
}

unint64_t sub_1001C6740()
{
  result = qword_10093B618;
  if (!qword_10093B618)
  {
    sub_1000060C8(255, &unk_100938CD0, CKRecordID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B618);
  }

  return result;
}

uint64_t sub_1001C6940()
{
  sub_1001C7170((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t destroy for RDPublicCloudDatabaseControllerMock.FetchPublicCloudObjectResultMock(void *a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 == 1)
  {
  }

  else
  {
    return sub_10000607C(a1);
  }
}

uint64_t initializeWithCopy for RDPublicCloudDatabaseControllerMock.FetchPublicCloudObjectResultMock(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    v4 = *a2;
    swift_errorRetain();
    *a1 = v4;
    v5 = 1;
  }

  else
  {
    v6 = *(a2 + 3);
    *(a1 + 24) = v6;
    (**(v6 - 8))(a1);
    v5 = 0;
  }

  *(a1 + 40) = v5;
  return a1;
}

uint64_t assignWithCopy for RDPublicCloudDatabaseControllerMock.FetchPublicCloudObjectResultMock(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
    }

    else
    {
      sub_10000607C(a1);
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v6 = *a2;
      swift_errorRetain();
      *a1 = v6;
      v7 = 1;
    }

    else
    {
      v8 = a2[3];
      *(a1 + 24) = v8;
      *(a1 + 32) = a2[4];
      (**(v8 - 8))(a1, a2);
      v7 = 0;
    }

    *(a1 + 40) = v7;
  }

  return a1;
}

__n128 initializeWithTake for RDPublicCloudDatabaseControllerMock.FetchPublicCloudObjectResultMock(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void *assignWithTake for RDPublicCloudDatabaseControllerMock.FetchPublicCloudObjectResultMock(void *result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(result + 40);
    if (v3 >= 2)
    {
      v3 = *result + 2;
    }

    v4 = result;
    if (v3 == 1)
    {
    }

    else
    {
      sub_10000607C(result);
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    result = v4;
    if (v5 == 1)
    {
      *v4 = *a2;
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 1) = v7;
      v4[4] = *(a2 + 32);
    }

    *(v4 + 40) = v6;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RDPublicCloudDatabaseControllerMock.FetchPublicCloudObjectResultMock(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RDPublicCloudDatabaseControllerMock.FetchPublicCloudObjectResultMock(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001C6C78(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t sub_1001C6C94(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1001C6D64(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v24 = a1;
  sub_1000F514C(&unk_1009399E0, &qword_100795D00);
  v5 = type metadata accessor for Result();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = (&v23 - v8);
  v10 = type metadata accessor for Optional();
  v23 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v13 = &v23 - v12;
  v14 = *(a3 - 8);
  __chkstk_darwin(v15, v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C7138((v3 + 16), v27);
  if (v28)
  {
    *v9 = *&v27[0];
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v24(v9);

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    v20 = v24;
    sub_100054B6C(v27, v26);
    sub_10000A87C(v26, v25);
    sub_1000F5104(&qword_10093B6F0, &unk_100798CC0);
    v21 = swift_dynamicCast();
    v22 = *(v14 + 56);
    if (v21)
    {
      v22(v13, 0, 1, a3);
      (*(v14 + 32))(v18, v13, a3);
      (*(v14 + 16))(v9, v18, a3);
      swift_storeEnumTagMultiPayload();
      v20(v9);
      (*(v6 + 8))(v9, v5);
      (*(v14 + 8))(v18, a3);
    }

    else
    {
      v22(v13, 1, 1, a3);
      (*(v23 + 8))(v13, v10);
      *v9 = [objc_opt_self() cancelledError];
      swift_storeEnumTagMultiPayload();
      v20(v9);
      (*(v6 + 8))(v9, v5);
    }

    return sub_10000607C(v26);
  }
}

uint64_t sub_1001C71A0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093B6F8);
  v1 = sub_100006654(v0, qword_10093B6F8);
  if (qword_1009364F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975218);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_1001C72D0()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001C7324(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1001C72AC(v2);
  return Hasher._finalize()();
}

void sub_1001C73A4(uint64_t a1)
{
  v1 = a1;
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v51 = &_swiftEmptyArrayStorage;
    sub_10025371C(0, v2 & ~(v2 >> 63), 0);
    v46 = &_swiftEmptyArrayStorage;
    if (v42)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v48 = v3;
    v49 = v4;
    v50 = v42 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v39 = v1 + 56;
      v38 = v1 + 64;
      v40 = v2;
      v41 = v1;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v13 = v48;
        v14 = v50;
        v43 = v49;
        sub_100411D6C(v48, v49, v50, v1);
        v16 = v15;
        v45 = [v15 type];
        v17 = [v16 name];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v19;

        v20 = [v16 objectIdentifier];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = v46;
        v51 = v46;
        v26 = *v46->clientIdentity;
        v25 = *&v46->clientIdentity[8];
        if (v26 >= v25 >> 1)
        {
          sub_10025371C((v25 > 1), v26 + 1, 1);
          v24 = v51;
        }

        *v24->clientIdentity = v26 + 1;
        v27 = &v24->super.isa + 5 * v26;
        v27[4] = v45;
        v27[5] = v18;
        v27[6] = v44;
        v27[7] = v21;
        v27[8] = v23;
        v46 = v24;
        if (v42)
        {
          v1 = v41;
          if (!v14)
          {
            goto LABEL_40;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v40;
          sub_1000F5104(&qword_10093B7C0, &qword_1007A0250);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v47, 0);
          if (v5 == v40)
          {
LABEL_32:
            sub_100010E34(v48, v49, v50, v7, v8, v9, v10, v11);
            return;
          }
        }

        else
        {
          v1 = v41;
          if (v14)
          {
            goto LABEL_41;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v28 = (1 << *(v41 + 32));
          if (v13 >= v28)
          {
            goto LABEL_36;
          }

          v29 = v13 >> 6;
          v30 = *(v39 + 8 * (v13 >> 6));
          if (((v30 >> v13) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v41 + 36) != v43)
          {
            goto LABEL_38;
          }

          v31 = v30 & (-2 << (v13 & 0x3F));
          if (v31)
          {
            v28 = (__clz(__rbit64(v31)) | v13 & 0x7FFFFFFFFFFFFFC0);
            v2 = v40;
          }

          else
          {
            v32 = v29 << 6;
            v33 = v29 + 1;
            v34 = (v38 + 8 * v29);
            v2 = v40;
            while (v33 < &v28->storeProvider[1] >> 6)
            {
              v36 = *v34++;
              v35 = v36;
              v32 += 64;
              ++v33;
              if (v36)
              {
                sub_100010E34(v13, v43, 0, v7, v8, v9, v10, v11);
                v28 = (__clz(__rbit64(v35)) + v32);
                goto LABEL_31;
              }
            }

            sub_100010E34(v13, v43, 0, v7, v8, v9, v10, v11);
          }

LABEL_31:
          v37 = *(v41 + 36);
          v48 = v28;
          v49 = v37;
          v50 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

id sub_1001C7758()
{
  v1 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v45 - v3;
  v5 = type metadata accessor for TimeZone();
  v60 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Calendar.Identifier();
  v56 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v49 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Calendar();
  v53 = *(v62 - 8);
  __chkstk_darwin(v62, v12);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DateComponents();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Date();
  v51 = *(v61 - 8);
  __chkstk_darwin(v61, v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for RDSavedReminder(0);
  v23 = *(v0 + *(v22 + 20));
  if (v23)
  {
    v50 = v15;
    v59 = v9;
    v24 = *(v23 + 16);
    v25 = &_swiftEmptyArrayStorage;
    if (v24)
    {
      v45 = v22;
      v46 = v0;
      v47 = v4;
      v63 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v58 = v5;
      v26 = v23 + 32;
      v27 = v56++;
      v57 = (v27 + 13);
      v55 = enum case for Calendar.Identifier.gregorian(_:);
      ++v53;
      v54 = (v60 + 8);
      v60 = v14;
      ++v51;
      v52 = (v50 + 8);
      v28 = v48;
      v29 = v49;
      do
      {
        v26 += 8;
        Date.init(timeIntervalSinceReferenceDate:)();
        v30 = v59;
        (*v57)(v29, v55, v59);
        Calendar.init(identifier:)();
        (*v56)(v29, v30);
        static TimeZone.current.getter();
        Calendar.dateComponents(in:from:)();
        (*v54)(v8, v58);
        (*v53)(v28, v62);
        v31 = objc_allocWithZone(REMAlarmDateTrigger);
        isa = DateComponents._bridgeToObjectiveC()().super.isa;
        v33 = [v31 initWithDateComponents:isa];

        (*v52)(v18, v60);
        (*v51)(v21, v61);
        [objc_allocWithZone(REMAlarm) initWithTrigger:v33];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v24;
      }

      while (v24);
      v25 = v63;
      v0 = v46;
      v4 = v47;
      v14 = v60;
      v22 = v45;
    }

    v15 = v50;
  }

  else
  {
    v25 = 0;
  }

  sub_100010364(v0 + *(v22 + 28), v4, &qword_10093B790, &qword_100798D88);
  if ((*(v15 + 48))(v4, 1, v14) != 1)
  {
    v34 = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v15 + 8))(v4, v14);
    if (v25)
    {
      goto LABEL_10;
    }

LABEL_12:
    v35.super.isa = 0;
    goto LABEL_13;
  }

  v34 = 0;
  if (!v25)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
  v35.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v25, v36, v37, v38, v39, v40, v41, v42;
LABEL_13:
  v43 = [objc_opt_self() displayDateWithDueDateComponents:v34 alarms:v35.super.isa];

  return v43;
}

unint64_t sub_1001C7D58(char a1)
{
  result = 0x6E6F697461657263;
  switch(a1)
  {
    case 1:
      result = 0x6972546D72616C61;
      break;
    case 2:
    case 12:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x64656767616C66;
      break;
    case 5:
      result = 0x7367617468736168;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x797469726F697270;
      break;
    case 8:
      result = 0x6E65727275636572;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x656C746974;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001C7ED0(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&qword_10093B890, &qword_100798E78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = v20 - v8;
  sub_10000F61C(a1, a1[3]);
  sub_1001CD138();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = 0;
  type metadata accessor for Date();
  sub_1001CB52C(&qword_10093B8A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v10 = type metadata accessor for RDSavedReminder(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    v21 = *v11;
    v22 = v12;
    v23 = 1;
    sub_1001CD18C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v21 = *(v3 + v10[6]);
    v23 = 2;
    sub_1000F5104(&qword_10093B8B0, &qword_100798E80);
    sub_1001CD1E0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v21) = 3;
    type metadata accessor for DateComponents();
    sub_1001CB52C(&qword_10093B8C8, &type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v21) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v21 = *(v3 + v10[9]);
    v23 = 5;
    sub_1000F5104(&qword_10093B8D0, &qword_100798E88);
    sub_1001CD2B8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = (v3 + v10[10]);
    v14 = v13[1];
    *&v21 = *v13;
    *(&v21 + 1) = v14;
    v23 = 6;
    sub_1001CB4B8(v21, v14);
    v20[1] = sub_10015377C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100031A14(v21, *(&v21 + 1));
    LOBYTE(v21) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v21 = *(v3 + v10[12]);
    v23 = 8;
    sub_1000F5104(&qword_10093B8E8, &qword_100798E90);
    sub_1001CD390();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v21) = 9;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v21) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = (v3 + v10[15]);
    v16 = v15[1];
    *&v21 = *v15;
    *(&v21 + 1) = v16;
    v23 = 11;
    sub_100029344(v21, v16);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10001BBA0(v21, *(&v21 + 1));
    v18 = (v3 + v10[16]);
    v19 = v18[1];
    *&v21 = *v18;
    *(&v21 + 1) = v19;
    v23 = 12;
    sub_1001CB4B8(v21, v19);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100031A14(v21, *(&v21 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1001C83EC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v45 - v9;
  v11 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v11 - 8, v12);
  v50 = &v45 - v13;
  v14 = sub_1000F5104(&qword_10093B900, &qword_100798E98);
  v51 = *(v14 - 8);
  v52 = v14;
  __chkstk_darwin(v14, v15);
  v17 = &v45 - v16;
  v18 = type metadata accessor for RDSavedReminder(0);
  __chkstk_darwin(v18, v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F61C(a1, a1[3]);
  sub_1001CD138();
  v53 = v17;
  v22 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    sub_10000607C(a1);
  }

  else
  {
    v23 = v10;
    v46 = v6;
    v47 = v18;
    v48 = a1;
    v54 = v21;
    type metadata accessor for Date();
    LOBYTE(v55) = 0;
    sub_1001CB52C(&qword_10093B908, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v24 = v50;
    v26 = v52;
    v25 = v53;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = v24;
    v28 = v54;
    sub_100031B58(v27, v54, &unk_100938850, qword_100795AE0);
    v57 = 1;
    sub_1001CD468();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v29 = v51;
    v30 = v47;
    v31 = (v28 + v47[5]);
    v32 = v56;
    *v31 = v55;
    v31[1] = v32;
    sub_1000F5104(&qword_10093B8B0, &qword_100798E80);
    v50 = 0;
    v57 = 2;
    sub_1001CD4BC();
    v33 = v50;
    v34 = v50;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v34)
    {
      (*(v29 + 8))(v25, v26);
      sub_10000607C(v48);
      sub_1000050A4(v54, &unk_100938850, qword_100795AE0);
      if (!v33)
      {
        sub_1001CB4CC(*&v54[v47[5]], *&v54[v47[5] + 8], *&v54[v47[5] + 16], *&v54[v47[5] + 24], v36, v37, v38, v39);
      }
    }

    else
    {
      *(v28 + v30[6]) = v55;
      type metadata accessor for DateComponents();
      LOBYTE(v55) = 3;
      sub_1001CB52C(&qword_10093B928, &type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      sub_100031B58(v23, v28 + v47[7], &qword_10093B790, &qword_100798D88);
      LOBYTE(v55) = 4;
      v35 = KeyedDecodingContainer.decode(_:forKey:)();
      v40 = v47;
      *(v28 + v47[8]) = v35;
      sub_1000F5104(&qword_10093B8D0, &qword_100798E88);
      v57 = 5;
      sub_1001CD594();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      *(v28 + v40[9]) = v55;
      v57 = 6;
      sub_1000318F4();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      *(v28 + v47[10]) = v55;
      LOBYTE(v55) = 7;
      *(v28 + v47[11]) = KeyedDecodingContainer.decode(_:forKey:)();
      sub_1000F5104(&qword_10093B8E8, &qword_100798E90);
      v57 = 8;
      sub_1001CD66C();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      *&v54[v47[12]] = v55;
      LOBYTE(v55) = 9;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      sub_100031B58(v46, &v54[v47[13]], &qword_10093B790, &qword_100798D88);
      LOBYTE(v55) = 10;
      v41 = KeyedDecodingContainer.decode(_:forKey:)();
      v42 = &v54[v47[14]];
      *v42 = v41;
      v42[1] = v43;
      v57 = 11;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      *&v54[v47[15]] = v55;
      v57 = 12;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      (*(v51 + 8))(v53, v52);
      v44 = v54;
      *&v54[v47[16]] = v55;
      sub_1001CD744(v44, v49);
      sub_10000607C(v48);
      sub_1001CB574(v44);
    }
  }
}

uint64_t sub_1001C8E40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC7remindd19RDXPCStorePerformer *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_1001CDA00(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1001C8E74(uint64_t a1)
{
  v2 = sub_1001CD138();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C8EB0(uint64_t a1)
{
  v2 = sub_1001CD138();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001C8F20(id a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  __chkstk_darwin(v7 - 8, v8);
  v217 = &v211 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v211 - v12;
  v224 = type metadata accessor for Date();
  v222 = *(v224 - 8);
  __chkstk_darwin(v224, v14);
  v223 = &v211 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  *&v18 = __chkstk_darwin(v16 - 8, v17).n128_u64[0];
  v20 = &v211 - v19;
  v21 = [a1 titleDocument];
  if (!v21)
  {
    v26 = objc_opt_self();
    v225 = 0;
    v226 = 0xE000000000000000;
    _StringGuts.grow(_:)(137);
    v27._object = 0x80000001007EF970;
    v27._countAndFlagsBits = 0xD000000000000086;
    String.append(_:)(v27);
    v28 = [a1 objectID];
    v29 = [v28 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    String.append(_:)(v33);
    v32, v34, v35, v36, v37, v38, v39, v40;

    v41._countAndFlagsBits = 125;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    v42 = v226;
    v43 = String._bridgeToObjectiveC()();
    v42, v44, v45, v46, v47, v48, v49, v50;
    [v26 invalidParameterErrorWithDescription:v43];

    swift_willThrow();
    return;
  }

  v220 = v3;
  v216 = v21;
  v213 = v13;
  if (a2)
  {
    v22 = v21;
    v23 = [v21 replicaIDSource];
    v24 = [v22 attributedString];
    v25 = [objc_allocWithZone(REMCRMergeableStringDocument) initWithReplicaIDSource:v23 attributedString:v24];
  }

  else
  {
    v25 = v21;
  }

  v51 = [v25 string];
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  v55 = type metadata accessor for RDSavedReminder(0);
  v56 = (a3 + v55[14]);
  *v56 = v52;
  v56[1] = v54;
  v221 = v54;
  v57 = a3;
  v215 = v25;
  v58 = [v25 serializedData];
  v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  v62 = v55[15];
  v218 = v57;
  v63 = v57 + v62;
  *v63 = v59;
  *(v63 + 8) = v61;
  v64 = [a1 notesDocument];
  v214 = v64;
  if (a2)
  {
    if (v64)
    {
      v65 = v64;
      v66 = [v65 replicaIDSource];
      v67 = [v65 attributedString];
      v68 = [objc_allocWithZone(REMCRMergeableStringDocument) initWithReplicaIDSource:v66 attributedString:v67];

LABEL_11:
      v69 = v68;
      v70 = [v69 serializedData];

      v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      goto LABEL_13;
    }
  }

  else if (v64)
  {
    v68 = v64;
    goto LABEL_11;
  }

  v71 = 0;
  v69 = 0;
  v73 = 0xF000000000000000;
LABEL_13:
  v219 = v55;
  v74 = v218;
  v75 = (v218 + v55[10]);
  *v75 = v71;
  *(v75 + 1) = v73;
  v76 = [a1 creationDate];
  v77 = v222;
  if (v76)
  {
    v78 = v76;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*&v77->clientIdentity[40])(v20, 0, 1, v224);
  }

  else
  {
    (*&v222->clientIdentity[40])(v20, 1, 1, v224);
  }

  sub_100031B58(v20, v74, &unk_100938850, qword_100795AE0);
  v79 = [a1 alarms];
  if (v79)
  {
    v80 = v79;
    sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
    v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v82 = v220;
    v90 = sub_100152CF4(v81, v83, v84, v85, v86, v87, v88, v89);
    if (v82)
    {

      sub_1000050A4(v74, &unk_100938850, qword_100795AE0);
LABEL_19:
      sub_100031A14(*v75, *(v75 + 1));
      v221, v94, v95, v96, v97, v98, v99, v100;
      sub_10001BBA0(*v63, *(v63 + 8));
      return;
    }

    v220 = 0;
    v102 = (v74 + v219[5]);
    *v102 = v90;
    v102[1] = v91;
    v102[2] = v92;
    v102[3] = v93;
  }

  else
  {
    v101 = (v74 + v219[5]);
    *v101 = 0u;
    v101[1] = 0u;
  }

  v103 = objc_autoreleasePoolPush();
  v104 = [a1 fetchedDueDateDeltaAlerts];
  v211 = v69;
  if (v104)
  {
    v105 = v104;
    sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
    v106 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v139 = [a1 dueDateDeltaAlertsData];
    if (v139)
    {
      v140 = v139;
      v141 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v143 = v142;

      type metadata accessor for RDDueDateDeltaAlerts();
      sub_1001CB52C(&qword_10093B7B8, type metadata accessor for RDDueDateDeltaAlerts, &unk_100795448);
      v144 = v220;
      static REMJSONRepresentable.fromJSONData(_:)();
      if (v144)
      {
        sub_10001BBA0(v141, v143);
        objc_autoreleasePoolPop(v103);

        sub_1000050A4(v74, &unk_100938850, qword_100795AE0);
        sub_1001CB4CC(*(v74 + v219[5]), *(v74 + v219[5] + 8), *(v74 + v219[5] + 16), *(v74 + v219[5] + 24), v145, v146, v147, v148);
        goto LABEL_19;
      }

      v220 = 0;
      sub_10001BBA0(v141, v143);
      v149 = v225;
      v106 = *(&v225->super.isa + OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_remObjects);

      v77 = v222;
    }

    else
    {
      v106 = &_swiftEmptyArrayStorage;
    }
  }

  objc_autoreleasePoolPop(v103);
  v114 = v219;
  v212 = a1;
  if (v106 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v115 = _CocoaArrayWrapper.endIndex.getter();
      if (!v115)
      {
        v106, v150, v151, v152, v153, v154, v155, v156;
        v117 = &_swiftEmptyArrayStorage;
        goto LABEL_44;
      }

      goto LABEL_26;
    }

LABEL_43:
    v106, v107, v108, v109, v110, v111, v112, v113;
    v117 = 0;
    goto LABEL_44;
  }

  v115 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v115)
  {
    goto LABEL_43;
  }

LABEL_26:
  v225 = &_swiftEmptyArrayStorage;
  sub_10025373C(0, v115 & ~(v115 >> 63), 0);
  if (v115 < 0)
  {
    __break(1u);
    goto LABEL_63;
  }

  v116 = 0;
  v221 = (v106 & 0xC000000000000001);
  v222 = v106;
  v117 = v225;
  storeController = v77->storeController;
  v119 = v115;
  do
  {
    if (v221)
    {
      v120 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v120 = *&v222->clientIdentity[8 * v116 + 16];
    }

    v121 = v120;
    v122 = [v120 dueDateDelta];
    v123 = REMDueDateDeltaInterval.codable.getter();

    v124 = [v121 creationDate];
    v125 = v223;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v127 = v126;
    (*storeController)(v125, v224);
    v128 = [v121 minimumSupportedAppVersion];

    v225 = v117;
    v137 = *v117->clientIdentity;
    v136 = *&v117->clientIdentity[8];
    if (v137 >= v136 >> 1)
    {
      sub_10025373C((v136 > 1), v137 + 1, 1);
      v117 = v225;
    }

    *v117->clientIdentity = v137 + 1;
    v138 = &v117->super.isa + 3 * v137;
    v138[4] = v123;
    ++v116;
    v138[5] = v127;
    v138[6] = v128;
  }

  while (v119 != v116);
  v222, v129, v130, v131, v132, v133, v134, v135;
  v74 = v218;
  v114 = v219;
LABEL_44:
  *(v74 + v114[6]) = v117;
  a1 = v212;
  v157 = [v212 dueDateComponents];
  if (v157)
  {
    v158 = v213;
    v159 = v157;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v160 = 0;
  }

  else
  {
    v160 = 1;
    v158 = v213;
  }

  v106 = type metadata accessor for DateComponents();
  v161 = *(v106 - 8);
  v77 = *(v161 + 56);
  v75 = (v161 + 56);
  (v77)(v158, v160, 1, v106);
  sub_100031B58(v158, v74 + v114[7], &qword_10093B790, &qword_100798D88);
  *(v74 + v114[8]) = [a1 flagged];
  v162 = [a1 hashtags];
  if (v162)
  {
    sub_1000060C8(0, &unk_10093F600, REMHashtag_ptr);
    sub_1001CB5D0();
    v163 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v164 = v220;
    sub_1001C73A4(v163);
    v162 = v165;
    v220 = v164;
    v163, v166, v167, v168, v169, v170, v171, v172;
  }

  *(v74 + v114[9]) = v162;
  *(v74 + v114[11]) = [a1 priority];
  v173 = [a1 recurrenceRules];
  if (!v173)
  {
    v184 = 0;
    goto LABEL_65;
  }

  v174 = v173;
  sub_1000060C8(0, &unk_100940C70, REMRecurrenceRule_ptr);
  v103 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v103 >> 62)
  {
LABEL_63:
    v182 = _CocoaArrayWrapper.endIndex.getter();
    if (v182)
    {
      goto LABEL_52;
    }

LABEL_64:
    v103, v175, v176, v177, v178, v179, v180, v181;
    v184 = &_swiftEmptyArrayStorage;
    v74 = v218;
    goto LABEL_65;
  }

  v182 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v182)
  {
    goto LABEL_64;
  }

LABEL_52:
  v223 = v75;
  v224 = v77;
  v225 = &_swiftEmptyArrayStorage;
  sub_1002536FC(0, v182 & ~(v182 >> 63), 0);
  if (v182 < 0)
  {
    __break(1u);
    return;
  }

  v183 = 0;
  v184 = v225;
  do
  {
    if ((v103 & 0xC000000000000001) != 0)
    {
      v185 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v185 = *(v103 + 8 * v183 + 32);
    }

    sub_1004AF6D8(v185, v227);
    v225 = v184;
    v194 = *v184->clientIdentity;
    v193 = *&v184->clientIdentity[8];
    if (v194 >= v193 >> 1)
    {
      sub_1002536FC((v193 > 1), v194 + 1, 1);
      v184 = v225;
    }

    ++v183;
    *v184->clientIdentity = v194 + 1;
    v195 = v184 + 88 * v194;
    v196 = v227[1];
    *(v195 + 2) = v227[0];
    *(v195 + 3) = v196;
    v197 = v227[2];
    v198 = v227[3];
    v199 = v227[4];
    *(v195 + 14) = v228;
    *(v195 + 5) = v198;
    *(v195 + 6) = v199;
    *(v195 + 4) = v197;
  }

  while (v182 != v183);
  v103, v186, v187, v188, v189, v190, v191, v192;
  a1 = v212;
  v74 = v218;
  v114 = v219;
  v77 = v224;
LABEL_65:
  *(v74 + v114[12]) = v184;
  v200 = [a1 startDateComponents];
  if (v200)
  {
    v201 = v217;
    v202 = v200;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v203 = 0;
  }

  else
  {
    v203 = 1;
    v201 = v217;
  }

  (v77)(v201, v203, 1, v106);
  sub_100031B58(v201, v74 + v114[13], &qword_10093B790, &qword_100798D88);
  v204 = [a1 contactHandles];
  if (v204)
  {
    v205 = v204;
    v206 = [v204 archivedData];

    v207 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v209 = v208;
  }

  else
  {

    v207 = 0;
    v209 = 0xF000000000000000;
  }

  v210 = (v74 + v114[16]);
  *v210 = v207;
  v210[1] = v209;
}

uint64_t sub_1001C9D1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v10, v11).n128_u64[0];
  v14 = &v47 - v13;
  if ([a2 shouldIncludeHashtags])
  {
    v56 = *(a1 + *(type metadata accessor for RDSavedReminder(0) + 36));
  }

  else
  {
    v56 = 0;
  }

  if ([a2 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval])
  {
    v15 = type metadata accessor for RDSavedReminder(0);
    sub_100010364(a1 + v15[13], v14, &qword_10093B790, &qword_100798D88);
    sub_100010364(a1 + v15[7], v9, &qword_10093B790, &qword_100798D88);
    v55 = *(a1 + v15[12]);
  }

  else
  {
    v16 = type metadata accessor for DateComponents();
    v17 = *(*(v16 - 8) + 56);
    v17(v14, 1, 1, v16);
    v17(v9, 1, 1, v16);
    v55 = 0;
  }

  if ((([a2 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval] & 1) != 0 || objc_msgSend(a2, "shouldIncludeAlarmTriggersBasedOnLocationOrVehicle")) && (v18 = (a1 + *(type metadata accessor for RDSavedReminder(0) + 20)), (v19 = *v18) != 0))
  {
    v20 = v18[2];
    v21 = v18[3];
    v22 = v18[1];
    if ([a2 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval])
    {
      v54 = v19;
    }

    else
    {
      v54 = &_swiftEmptyArrayStorage;
    }

    if ([a2 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle])
    {
    }

    else
    {
      v22 = &_swiftEmptyArrayStorage;
    }

    if ([a2 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval])
    {
    }

    else
    {
      v20 = &_swiftEmptyArrayStorage;
    }

    if ([a2 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle])
    {
    }

    else
    {
      v21 = &_swiftEmptyArrayStorage;
    }
  }

  else
  {
    v54 = 0;
    v22 = 0;
    v20 = 0;
    v21 = 0;
  }

  v23 = type metadata accessor for RDSavedReminder(0);
  v48 = *(a1 + v23[6]);

  v24 = [a2 shouldIncludeContactsHandleData];

  v57 = v9;
  v58 = v14;
  v52 = v20;
  v53 = v22;
  v51 = v21;
  if (v24)
  {
    v25 = (a1 + v23[16]);
    v26 = *v25;
    v49 = v25[1];
    v50 = v26;
    sub_1001CB4B8(v26, v49);
  }

  else
  {
    v49 = 0xF000000000000000;
    v50 = 0;
  }

  sub_100010364(a1, a3, &unk_100938850, qword_100795AE0);
  v27 = *(a1 + v23[8]);
  v28 = (a1 + v23[10]);
  v29 = *v28;
  v30 = v28[1];
  v31 = *(a1 + v23[11]);
  v32 = v23[15];
  v33 = (a1 + v23[14]);
  v34 = v33[1];
  v47 = *v33;
  v36 = *(a1 + v32);
  v35 = *(a1 + v32 + 8);
  v37 = (a3 + v23[5]);
  v38 = v53;
  *v37 = v54;
  v37[1] = v38;
  v39 = v51;
  v37[2] = v52;
  v37[3] = v39;
  *(a3 + v23[6]) = v48;
  sub_100031B58(v57, a3 + v23[7], &qword_10093B790, &qword_100798D88);
  *(a3 + v23[8]) = v27;
  v40 = v55;
  *(a3 + v23[9]) = v56;
  v41 = (a3 + v23[10]);
  *v41 = v29;
  v41[1] = v30;
  *(a3 + v23[11]) = v31;
  *(a3 + v23[12]) = v40;
  sub_100031B58(v58, a3 + v23[13], &qword_10093B790, &qword_100798D88);
  v42 = (a3 + v23[14]);
  *v42 = v47;
  v42[1] = v34;
  v43 = (a3 + v23[15]);
  *v43 = v36;
  v43[1] = v35;
  v44 = (a3 + v23[16]);
  v45 = v49;
  *v44 = v50;
  v44[1] = v45;
  sub_1001CB4B8(v29, v30);

  sub_100029344(v36, v35);
  return sub_1001CB574(a1);
}

uint64_t sub_1001CA174@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1001CA3A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1001CA534(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_10001BBA0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1001CA174(v13, a3, a4, &v12);
  v10 = v4;
  sub_10001BBA0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1001CA534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1001CA174(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1001CA5EC(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_100029344(a3, a4);
          return sub_1001CA3A4(v13, a2, a3, a4) & 1;
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

BOOL sub_1001CA754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateComponents();
  v5 = *(v4 - 8);
  v188 = v4;
  v189 = v5;
  __chkstk_darwin(v4, v6);
  v185 = &v181[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  __chkstk_darwin(v8 - 8, v9);
  v184 = &v181[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11, v12);
  v187 = &v181[-v13];
  v191 = sub_1000F5104(&qword_10093B798, &qword_100798D90);
  __chkstk_darwin(v191, v14);
  v186 = &v181[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16, v17);
  v190 = &v181[-v18];
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19, v21);
  v23 = &v181[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v24 - 8, v25);
  v27 = &v181[-v26];
  v28 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  __chkstk_darwin(v28 - 8, v29);
  v31 = &v181[-v30];
  v33 = *(v32 + 56);
  v192 = a1;
  sub_100010364(a1, &v181[-v30], &unk_100938850, qword_100795AE0);
  v193 = a2;
  sub_100010364(a2, &v31[v33], &unk_100938850, qword_100795AE0);
  v34 = *(v20 + 48);
  if (v34(v31, 1, v19) == 1)
  {
    if (v34(&v31[v33], 1, v19) == 1)
    {
      sub_1000050A4(v31, &unk_100938850, qword_100795AE0);
      goto LABEL_9;
    }

LABEL_6:
    v35 = &qword_100938C18;
    v36 = &qword_1007957A0;
    v37 = v31;
LABEL_7:
    sub_1000050A4(v37, v35, v36);
    return 0;
  }

  sub_100010364(v31, v27, &unk_100938850, qword_100795AE0);
  if (v34(&v31[v33], 1, v19) == 1)
  {
    (*(v20 + 8))(v27, v19);
    goto LABEL_6;
  }

  (*(v20 + 32))(v23, &v31[v33], v19);
  sub_1001CB52C(&qword_100938DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v20 + 8);
  v39(v23, v19);
  v39(v27, v19);
  sub_1000050A4(v31, &unk_100938850, qword_100795AE0);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v40 = type metadata accessor for RDSavedReminder(0);
  v42 = v192;
  v41 = v193;
  if (*(v192 + v40[8]) != *(v193 + v40[8]) || *(v192 + v40[11]) != *(v193 + v40[11]))
  {
    return 0;
  }

  v183 = v40;
  v43 = v40[7];
  v44 = v190;
  v45 = *(v191 + 48);
  sub_100010364(v192 + v43, v190, &qword_10093B790, &qword_100798D88);
  sub_100010364(v41 + v43, &v44[v45], &qword_10093B790, &qword_100798D88);
  v47 = v188;
  v46 = v189;
  v48 = *(v189 + 48);
  if (v48(v44, 1, v188) == 1)
  {
    if (v48(&v44[v45], 1, v47) == 1)
    {
      sub_1000050A4(v44, &qword_10093B790, &qword_100798D88);
      goto LABEL_17;
    }

LABEL_22:
    v35 = &qword_10093B798;
    v36 = &qword_100798D90;
    v37 = v44;
    goto LABEL_7;
  }

  v49 = v187;
  sub_100010364(v44, v187, &qword_10093B790, &qword_100798D88);
  if (v48(&v44[v45], 1, v47) == 1)
  {
    (*(v46 + 8))(v49, v47);
    goto LABEL_22;
  }

  v50 = &v44[v45];
  v51 = v185;
  (*(v46 + 32))(v185, v50, v47);
  sub_1001CB52C(&qword_10093B7A8, &type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
  v182 = dispatch thunk of static Equatable.== infix(_:_:)();
  v52 = *(v46 + 8);
  v52(v51, v47);
  v52(v49, v47);
  sub_1000050A4(v190, &qword_10093B790, &qword_100798D88);
  if ((v182 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v53 = v183[13];
  v54 = *(v191 + 48);
  v44 = v186;
  sub_100010364(v42 + v53, v186, &qword_10093B790, &qword_100798D88);
  sub_100010364(v41 + v53, &v44[v54], &qword_10093B790, &qword_100798D88);
  if (v48(v44, 1, v47) == 1)
  {
    if (v48(&v44[v54], 1, v47) == 1)
    {
      sub_1000050A4(v44, &qword_10093B790, &qword_100798D88);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v55 = v184;
  sub_100010364(v44, v184, &qword_10093B790, &qword_100798D88);
  if (v48(&v44[v54], 1, v47) == 1)
  {
    (*(v189 + 8))(v55, v47);
    goto LABEL_22;
  }

  v56 = v189;
  v57 = v185;
  (*(v189 + 32))(v185, &v44[v54], v47);
  sub_1001CB52C(&qword_10093B7A8, &type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  v59 = *(v56 + 8);
  v59(v57, v47);
  v59(v55, v47);
  sub_1000050A4(v44, &qword_10093B790, &qword_100798D88);
  if ((v58 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v60 = v183;
  v61 = v183[14];
  v62 = *(v42 + v61);
  v63 = *(v42 + v61 + 8);
  v64 = (v41 + v61);
  if (v62 != *v64 || v63 != v64[1])
  {
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v60 = v183;
    if ((v65 & 1) == 0)
    {
      return 0;
    }
  }

  v66 = v60[9];
  v67 = *(v42 + v66);
  v68 = *(v41 + v66);
  if (v67)
  {
    if (!v68)
    {
      return 0;
    }

    v69 = sub_1003AF178(v67, v68);
    v60 = v183;
    if ((v69 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v68)
  {
    return 0;
  }

  v70 = v60[12];
  v71 = *(v42 + v70);
  v72 = *(v41 + v70);
  if (v71)
  {
    if (!v72)
    {
      return 0;
    }

    v73 = sub_1003AF258(v71, v72);
    v60 = v183;
    if ((v73 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v72)
  {
    return 0;
  }

  v74 = v60[5];
  v75 = *(v42 + v74);
  v76 = *(v42 + v74 + 8);
  v78 = *(v42 + v74 + 16);
  v77 = *(v42 + v74 + 24);
  v79 = (v41 + v74);
  v81 = *v79;
  v80 = v79[1];
  v82 = v79[2];
  v83 = v79[3];
  if (v75)
  {
    if (v81)
    {
      if (sub_1003B0A38())
      {
        sub_1001CB458(v81, v80, v82, v83);
        sub_1001CB458(v75, v76, v78, v77);
        if (sub_1003AE6C8(v76, v80) & 1) != 0 && (sub_1003B0A38())
        {
          v91 = sub_1003AE66C(v77, v83);
          v83, v92, v93, v94, v95, v96, v97, v98;
          v82, v99, v100, v101, v102, v103, v104, v105;
          v80, v106, v107, v108, v109, v110, v111, v112;
          v81, v113, v114, v115, v116, v117, v118, v119;
          sub_1001CB4CC(v75, v76, v78, v77, v120, v121, v122, v123);
          v60 = v183;
          if ((v91 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_50;
        }
      }

      else
      {
        sub_1001CB458(v81, v80, v82, v83);
        sub_1001CB458(v75, v76, v78, v77);
      }

      v83, v84, v85, v86, v87, v88, v89, v90;
      v82, v124, v125, v126, v127, v128, v129, v130;
      v80, v131, v132, v133, v134, v135, v136, v137;
      v81, v138, v139, v140, v141, v142, v143, v144;
      sub_1001CB4CC(v75, v76, v78, v77, v145, v146, v147, v148);
      return 0;
    }

    goto LABEL_45;
  }

  if (v81)
  {
LABEL_45:
    v194[0] = v75;
    v194[1] = v76;
    v194[2] = v78;
    v194[3] = v77;
    v194[4] = v81;
    v194[5] = v80;
    v194[6] = v82;
    v194[7] = v83;
    sub_1001CB458(v81, v80, v82, v83);
    sub_1001CB458(v75, v76, v78, v77);
    v35 = &unk_10093B7A0;
    v36 = &unk_100798D98;
    v37 = v194;
    goto LABEL_7;
  }

LABEL_50:
  v151 = v60[6];
  v153 = v192;
  v152 = v193;
  v154 = *(v192 + v151);
  v155 = *(v193 + v151);
  if (v154)
  {
    if (!v155)
    {
      return 0;
    }

    v156 = sub_1003AF32C(v154, v155);
    v155, v157, v158, v159, v160, v161, v162, v163;
    if (!v156)
    {
      return 0;
    }
  }

  else if (v155)
  {
    return 0;
  }

  if (sub_1001CA5EC(*(v153 + v183[15]), *(v153 + v183[15] + 8), *(v152 + v183[15]), *(v152 + v183[15] + 8)))
  {
    v164 = v183[10];
    v165 = v192 + v164;
    v167 = *(v192 + v164);
    v166 = *(v192 + v164 + 8);
    v168 = (v193 + v164);
    v170 = *v168;
    v169 = v168[1];
    if (v166 >> 60 == 15)
    {
      if (v169 >> 60 == 15)
      {
        sub_1001CB4B8(*v165, *(v165 + 8));
        sub_1001CB4B8(v170, v169);
        sub_100031A14(v167, v166);
LABEL_62:
        v174 = v183[16];
        v175 = v192 + v174;
        v177 = *(v192 + v174);
        v176 = *(v192 + v174 + 8);
        v178 = (v193 + v174);
        v180 = *v178;
        v179 = v178[1];
        if (v176 >> 60 == 15)
        {
          if (v179 >> 60 == 15)
          {
            sub_1001CB4B8(*v175, *(v175 + 8));
            sub_1001CB4B8(v180, v179);
            sub_100031A14(v177, v176);
            return 1;
          }
        }

        else if (v179 >> 60 != 15)
        {
          sub_1001CB4B8(*v175, *(v175 + 8));
          sub_1001CB4B8(v180, v179);
          v149 = sub_1001CA5EC(v177, v176, v180, v179);
          sub_100031A14(v180, v179);
          sub_100031A14(v177, v176);
          return v149;
        }

        sub_1001CB4B8(*v175, *(v175 + 8));
        sub_1001CB4B8(v180, v179);
        sub_100031A14(v177, v176);
        v171 = v180;
        v172 = v179;
        goto LABEL_67;
      }

LABEL_60:
      sub_1001CB4B8(*v165, *(v165 + 8));
      sub_1001CB4B8(v170, v169);
      sub_100031A14(v167, v166);
      v171 = v170;
      v172 = v169;
LABEL_67:
      sub_100031A14(v171, v172);
      return 0;
    }

    if (v169 >> 60 == 15)
    {
      goto LABEL_60;
    }

    sub_1001CB4B8(*v165, *(v165 + 8));
    sub_1001CB4B8(v170, v169);
    v173 = sub_1001CA5EC(v167, v166, v170, v169);
    sub_100031A14(v170, v169);
    sub_100031A14(v167, v166);
    if (v173)
    {
      goto LABEL_62;
    }
  }

  return 0;
}

uint64_t type metadata accessor for RDSavedReminder(uint64_t a1)
{
  result = qword_10093B820;
  if (!qword_10093B820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1001CB458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1001CB4B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100029344(result, a2);
  }

  return result;
}

double sub_1001CB4CC(_TtC7remindd19RDXPCStorePerformer *a1, char *a2, _TtC7remindd19RDXPCStorePerformer *a3, _TtC7remindd19RDXPCStorePerformer *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1)
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
    a2, v11, v12, v13, v14, v15, v16, v17;
    a3, v18, v19, v20, v21, v22, v23, v24;

    a4, v25, v26, v27, v28, v29, v30, v31;
  }

  return result;
}

uint64_t sub_1001CB52C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001CB574(uint64_t a1)
{
  v2 = type metadata accessor for RDSavedReminder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001CB5D0()
{
  result = qword_10093AA28;
  if (!qword_10093AA28)
  {
    sub_1000060C8(255, &unk_10093F600, REMHashtag_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093AA28);
  }

  return result;
}

uint64_t *sub_1001CB638(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = a3[5];
    v12 = (a1 + v11);
    v13 = (a2 + v11);
    if (*v13)
    {
      v14 = v13[1];
      v15 = v13[2];
      *v12 = *v13;
      v12[1] = v14;
      v16 = v13[3];
      v12[2] = v15;
      v12[3] = v16;
    }

    else
    {
      v17 = *(v13 + 1);
      *v12 = *v13;
      *(v12 + 1) = v17;
    }

    v18 = a3[7];
    *(a1 + a3[6]) = *(a2 + a3[6]);
    v19 = type metadata accessor for DateComponents();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);

    if (v21(a2 + v18, 1, v19))
    {
      v22 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
      memcpy(a1 + v18, a2 + v18, *(*(v22 - 8) + 64));
    }

    else
    {
      (*(v20 + 16))(a1 + v18, a2 + v18, v19);
      (*(v20 + 56))(a1 + v18, 0, 1, v19);
    }

    v23 = a3[9];
    *(a1 + a3[8]) = *(a2 + a3[8]);
    *(a1 + v23) = *(a2 + v23);
    v24 = a3[10];
    v25 = a1 + v24;
    v26 = (a2 + v24);
    v27 = *(a2 + v24 + 8);

    if (v27 >> 60 == 15)
    {
      *v25 = *v26;
    }

    else
    {
      v28 = *v26;
      sub_100029344(v28, v27);
      *v25 = v28;
      *(v25 + 1) = v27;
    }

    v29 = a3[12];
    *(a1 + a3[11]) = *(a2 + a3[11]);
    *(a1 + v29) = *(a2 + v29);
    v30 = a3[13];

    if (v21(a2 + v30, 1, v19))
    {
      v31 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
      memcpy(a1 + v30, a2 + v30, *(*(v31 - 8) + 64));
    }

    else
    {
      (*(v20 + 16))(a1 + v30, a2 + v30, v19);
      (*(v20 + 56))(a1 + v30, 0, 1, v19);
    }

    v32 = a3[14];
    v33 = a3[15];
    v34 = (a1 + v32);
    v35 = (a2 + v32);
    v36 = v35[1];
    *v34 = *v35;
    v34[1] = v36;
    v37 = (a1 + v33);
    v38 = *(a2 + v33);
    v39 = *(a2 + v33 + 8);

    sub_100029344(v38, v39);
    *v37 = v38;
    v37[1] = v39;
    v40 = a3[16];
    v41 = a1 + v40;
    v42 = a2 + v40;
    v43 = *(v42 + 1);
    if (v43 >> 60 == 15)
    {
      *v41 = *v42;
    }

    else
    {
      v44 = *v42;
      sub_100029344(*v42, *(v42 + 1));
      *v41 = v44;
      *(v41 + 1) = v43;
    }
  }

  return a1;
}

uint64_t sub_1001CBA60(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v13 = (a1 + a2[5]);
  if (*v13)
  {
    *v13, v6, v7, v8, v9, v10, v11, v12;
    v13[1], v14, v15, v16, v17, v18, v19, v20;
    v13[2], v21, v22, v23, v24, v25, v26, v27;
    v13[3], v28, v29, v30, v31, v32, v33, v34;
  }

  *(a1 + a2[6]), v6, v7, v8, v9, v10, v11, v12;
  v35 = a2[7];
  v36 = type metadata accessor for DateComponents();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  if (!v38(a1 + v35, 1, v36))
  {
    (*(v37 + 8))(a1 + v35, v36);
  }

  *(a1 + a2[9]), v39, v40, v41, v42, v43, v44, v45;
  v52 = (a1 + a2[10]);
  v53 = v52[1];
  if (v53 >> 60 != 15)
  {
    sub_10001BBA0(*v52, v53);
  }

  *(a1 + a2[12]), v53, v46, v47, v48, v49, v50, v51;
  v54 = a2[13];
  if (!v38(a1 + v54, 1, v36))
  {
    (*(v37 + 8))(a1 + v54, v36);
  }

  *(a1 + a2[14] + 8), v55, v56, v57, v58, v59, v60, v61;
  result = sub_10001BBA0(*(a1 + a2[15]), *(a1 + a2[15] + 8));
  v63 = (a1 + a2[16]);
  v64 = v63[1];
  if (v64 >> 60 != 15)
  {
    v65 = *v63;

    return sub_10001BBA0(v65, v64);
  }

  return result;
}

char *sub_1001CBCA8(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = a3[5];
  v10 = &a1[v9];
  v11 = &a2[v9];
  if (*v11)
  {
    v12 = *(v11 + 1);
    v13 = *(v11 + 2);
    *v10 = *v11;
    *(v10 + 1) = v12;
    v14 = *(v11 + 3);
    *(v10 + 2) = v13;
    *(v10 + 3) = v14;
  }

  else
  {
    v15 = *(v11 + 1);
    *v10 = *v11;
    *(v10 + 1) = v15;
  }

  v16 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  v17 = type metadata accessor for DateComponents();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);

  if (v19(&a2[v16], 1, v17))
  {
    v20 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
    memcpy(&a1[v16], &a2[v16], *(*(v20 - 8) + 64));
  }

  else
  {
    (*(v18 + 16))(&a1[v16], &a2[v16], v17);
    (*(v18 + 56))(&a1[v16], 0, 1, v17);
  }

  v21 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[v21] = *&a2[v21];
  v22 = a3[10];
  v23 = &a1[v22];
  v24 = &a2[v22];
  v25 = *&a2[v22 + 8];

  if (v25 >> 60 == 15)
  {
    *v23 = *v24;
  }

  else
  {
    v26 = *v24;
    sub_100029344(v26, v25);
    *v23 = v26;
    *(v23 + 1) = v25;
  }

  v27 = a3[12];
  *&a1[a3[11]] = *&a2[a3[11]];
  *&a1[v27] = *&a2[v27];
  v28 = a3[13];

  if (v19(&a2[v28], 1, v17))
  {
    v29 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
    memcpy(&a1[v28], &a2[v28], *(*(v29 - 8) + 64));
  }

  else
  {
    (*(v18 + 16))(&a1[v28], &a2[v28], v17);
    (*(v18 + 56))(&a1[v28], 0, 1, v17);
  }

  v30 = a3[14];
  v31 = a3[15];
  v32 = &a1[v30];
  v33 = &a2[v30];
  v34 = *(v33 + 1);
  *v32 = *v33;
  *(v32 + 1) = v34;
  v35 = &a1[v31];
  v36 = *&a2[v31];
  v37 = *&a2[v31 + 8];

  sub_100029344(v36, v37);
  *v35 = v36;
  *(v35 + 1) = v37;
  v38 = a3[16];
  v39 = &a1[v38];
  v40 = &a2[v38];
  v41 = *(v40 + 1);
  if (v41 >> 60 == 15)
  {
    *v39 = *v40;
  }

  else
  {
    v42 = *v40;
    sub_100029344(*v40, *(v40 + 1));
    *v39 = v42;
    *(v39 + 1) = v41;
  }

  return a1;
}

char *sub_1001CC084(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(a1, a2, v6);
LABEL_7:
  v12 = a3[5];
  v13 = &a1[v12];
  v14 = &a2[v12];
  v15 = *&a1[v12];
  v16 = *&a2[v12];
  if (v15)
  {
    if (v16)
    {
      *v13 = v16;

      v15, v17, v18, v19, v20, v21, v22, v23;
      v24 = *(v13 + 1);
      *(v13 + 1) = *(v14 + 1);

      v24, v25, v26, v27, v28, v29, v30, v31;
      v32 = *(v13 + 2);
      *(v13 + 2) = *(v14 + 2);

      v32, v33, v34, v35, v36, v37, v38, v39;
      v40 = *(v13 + 3);
      *(v13 + 3) = *(v14 + 3);

      v40, v41, v42, v43, v44, v45, v46, v47;
    }

    else
    {
      sub_1001CC6D4(&a1[v12]);
      v48 = *(v14 + 1);
      *v13 = *v14;
      *(v13 + 1) = v48;
    }
  }

  else if (v16)
  {
    *v13 = v16;
    *(v13 + 1) = *(v14 + 1);
    *(v13 + 2) = *(v14 + 2);
    *(v13 + 3) = *(v14 + 3);
  }

  else
  {
    v49 = *(v14 + 1);
    *v13 = *v14;
    *(v13 + 1) = v49;
  }

  v50 = a3[6];
  v51 = *&a1[v50];
  *&a1[v50] = *&a2[v50];

  v51, v52, v53, v54, v55, v56, v57, v58;
  v59 = a3[7];
  v60 = type metadata accessor for DateComponents();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  v63 = v62(&a1[v59], 1, v60);
  v64 = v62(&a2[v59], 1, v60);
  if (v63)
  {
    if (!v64)
    {
      (*(v61 + 16))(&a1[v59], &a2[v59], v60);
      (*(v61 + 56))(&a1[v59], 0, 1, v60);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v64)
  {
    (*(v61 + 8))(&a1[v59], v60);
LABEL_20:
    v65 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
    memcpy(&a1[v59], &a2[v59], *(*(v65 - 8) + 64));
    goto LABEL_21;
  }

  (*(v61 + 24))(&a1[v59], &a2[v59], v60);
LABEL_21:
  *&a1[a3[8]] = *&a2[a3[8]];
  v66 = a3[9];
  v67 = *&a1[v66];
  *&a1[v66] = *&a2[v66];

  v67, v68, v69, v70, v71, v72, v73, v74;
  v75 = a3[10];
  v76 = &a1[v75];
  v77 = &a2[v75];
  v78 = *&a2[v75 + 8];
  if (*&a1[v75 + 8] >> 60 == 15)
  {
    if (v78 >> 60 != 15)
    {
      v79 = *v77;
      sub_100029344(v79, v78);
      *v76 = v79;
      *(v76 + 1) = v78;
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v78 >> 60 == 15)
  {
    sub_1001531B8(v76);
LABEL_26:
    *v76 = *v77;
    goto LABEL_28;
  }

  v80 = *v77;
  sub_100029344(v80, v78);
  v81 = *v76;
  v82 = *(v76 + 1);
  *v76 = v80;
  *(v76 + 1) = v78;
  sub_10001BBA0(v81, v82);
LABEL_28:
  *&a1[a3[11]] = *&a2[a3[11]];
  v83 = a3[12];
  v84 = *&a1[v83];
  *&a1[v83] = *&a2[v83];

  v84, v85, v86, v87, v88, v89, v90, v91;
  v92 = a3[13];
  LODWORD(v84) = v62(&a1[v92], 1, v60);
  v93 = v62(&a2[v92], 1, v60);
  if (v84)
  {
    if (!v93)
    {
      (*(v61 + 16))(&a1[v92], &a2[v92], v60);
      (*(v61 + 56))(&a1[v92], 0, 1, v60);
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v93)
  {
    (*(v61 + 8))(&a1[v92], v60);
LABEL_33:
    v94 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
    memcpy(&a1[v92], &a2[v92], *(*(v94 - 8) + 64));
    goto LABEL_34;
  }

  (*(v61 + 24))(&a1[v92], &a2[v92], v60);
LABEL_34:
  v95 = a3[14];
  v96 = &a1[v95];
  v97 = &a2[v95];
  *v96 = *v97;
  v98 = *(v96 + 1);
  *(v96 + 1) = *(v97 + 1);

  v98, v99, v100, v101, v102, v103, v104, v105;
  v106 = a3[15];
  v107 = &a1[v106];
  v108 = &a2[v106];
  v109 = *v108;
  v110 = v108[1];
  sub_100029344(*v108, v110);
  v111 = *v107;
  v112 = v107[1];
  *v107 = v109;
  v107[1] = v110;
  sub_10001BBA0(v111, v112);
  v113 = a3[16];
  v114 = &a1[v113];
  v115 = &a2[v113];
  v116 = *&a2[v113 + 8];
  if (*&a1[v113 + 8] >> 60 != 15)
  {
    if (v116 >> 60 != 15)
    {
      v118 = *v115;
      sub_100029344(v118, v116);
      v119 = *v114;
      v120 = v114[1];
      *v114 = v118;
      v114[1] = v116;
      sub_10001BBA0(v119, v120);
      return a1;
    }

    sub_1001531B8(v114);
    goto LABEL_39;
  }

  if (v116 >> 60 == 15)
  {
LABEL_39:
    *v114 = *v115;
    return a1;
  }

  v117 = *v115;
  sub_100029344(v117, v116);
  *v114 = v117;
  v114[1] = v116;
  return a1;
}

char *sub_1001CC728(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = a3[5];
  v10 = a3[6];
  v11 = &a1[v9];
  v12 = &a2[v9];
  v13 = *(v12 + 1);
  *v11 = *v12;
  *(v11 + 1) = v13;
  *&a1[v10] = *&a2[v10];
  v14 = a3[7];
  v15 = type metadata accessor for DateComponents();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(&a2[v14], 1, v15))
  {
    v18 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
    memcpy(&a1[v14], &a2[v14], *(*(v18 - 8) + 64));
  }

  else
  {
    (*(v16 + 32))(&a1[v14], &a2[v14], v15);
    (*(v16 + 56))(&a1[v14], 0, 1, v15);
  }

  v19 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[v19] = *&a2[v19];
  v20 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  *&a1[v20] = *&a2[v20];
  v21 = a3[13];
  *&a1[a3[12]] = *&a2[a3[12]];
  if (v17(&a2[v21], 1, v15))
  {
    v22 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
    memcpy(&a1[v21], &a2[v21], *(*(v22 - 8) + 64));
  }

  else
  {
    (*(v16 + 32))(&a1[v21], &a2[v21], v15);
    (*(v16 + 56))(&a1[v21], 0, 1, v15);
  }

  v23 = a3[15];
  *&a1[a3[14]] = *&a2[a3[14]];
  *&a1[v23] = *&a2[v23];
  *&a1[a3[16]] = *&a2[a3[16]];
  return a1;
}

char *sub_1001CCA30(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v18 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1, a2, *(*(v18 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(a1, a2, v6);
LABEL_7:
  v19 = a3[5];
  v20 = &a1[v19];
  v21 = &a2[v19];
  v22 = *&a1[v19];
  if (v22)
  {
    if (*v21)
    {
      *v20 = *v21;
      v22, v11, v12, v13, v14, v15, v16, v17;
      v23 = *(v20 + 1);
      *(v20 + 1) = *(v21 + 1);
      v23, v24, v25, v26, v27, v28, v29, v30;
      v31 = *(v20 + 2);
      *(v20 + 2) = *(v21 + 2);
      v31, v32, v33, v34, v35, v36, v37, v38;
      v39 = *(v20 + 3);
      *(v20 + 3) = *(v21 + 3);
      v39, v40, v41, v42, v43, v44, v45, v46;
      goto LABEL_12;
    }

    sub_1001CC6D4(v20);
  }

  v47 = *(v21 + 1);
  *v20 = *v21;
  *(v20 + 1) = v47;
LABEL_12:
  v48 = a3[6];
  v49 = *&a1[v48];
  *&a1[v48] = *&a2[v48];
  v49, v11, v12, v13, v14, v15, v16, v17;
  v50 = a3[7];
  v51 = type metadata accessor for DateComponents();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  v54 = v53(&a1[v50], 1, v51);
  v55 = v53(&a2[v50], 1, v51);
  if (v54)
  {
    if (!v55)
    {
      (*(v52 + 32))(&a1[v50], &a2[v50], v51);
      (*(v52 + 56))(&a1[v50], 0, 1, v51);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v55)
  {
    (*(v52 + 8))(&a1[v50], v51);
LABEL_17:
    v63 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
    memcpy(&a1[v50], &a2[v50], *(*(v63 - 8) + 64));
    goto LABEL_18;
  }

  (*(v52 + 40))(&a1[v50], &a2[v50], v51);
LABEL_18:
  v64 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  v65 = *&a1[v64];
  *&a1[v64] = *&a2[v64];
  v65, v56, v57, v58, v59, v60, v61, v62;
  v72 = a3[10];
  v73 = &a1[v72];
  v74 = &a2[v72];
  v75 = *&a1[v72 + 8];
  if (v75 >> 60 == 15)
  {
LABEL_21:
    *v73 = *v74;
    goto LABEL_23;
  }

  v76 = *(v74 + 1);
  if (v76 >> 60 == 15)
  {
    sub_1001531B8(v73);
    goto LABEL_21;
  }

  v77 = *v73;
  *v73 = *v74;
  *(v73 + 1) = v76;
  sub_10001BBA0(v77, v75);
LABEL_23:
  v78 = a3[12];
  *&a1[a3[11]] = *&a2[a3[11]];
  v79 = *&a1[v78];
  *&a1[v78] = *&a2[v78];
  v79, v75, v66, v67, v68, v69, v70, v71;
  v80 = a3[13];
  v81 = v53(&a1[v80], 1, v51);
  v82 = v53(&a2[v80], 1, v51);
  if (v81)
  {
    if (!v82)
    {
      (*(v52 + 32))(&a1[v80], &a2[v80], v51);
      (*(v52 + 56))(&a1[v80], 0, 1, v51);
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v82)
  {
    (*(v52 + 8))(&a1[v80], v51);
LABEL_28:
    v90 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
    memcpy(&a1[v80], &a2[v80], *(*(v90 - 8) + 64));
    goto LABEL_29;
  }

  (*(v52 + 40))(&a1[v80], &a2[v80], v51);
LABEL_29:
  v91 = a3[14];
  v92 = &a1[v91];
  v93 = &a2[v91];
  v95 = *v93;
  v94 = *(v93 + 1);
  v96 = *(v92 + 1);
  *v92 = v95;
  *(v92 + 1) = v94;
  v96, v83, v84, v85, v86, v87, v88, v89;
  v97 = a3[15];
  v98 = *&a1[v97];
  v99 = *&a1[v97 + 8];
  *&a1[v97] = *&a2[v97];
  sub_10001BBA0(v98, v99);
  v100 = a3[16];
  v101 = &a1[v100];
  v102 = &a2[v100];
  v103 = *&a1[v100 + 8];
  if (v103 >> 60 != 15)
  {
    v104 = *(v102 + 1);
    if (v104 >> 60 != 15)
    {
      v105 = *v101;
      *v101 = *v102;
      v101[1] = v104;
      sub_10001BBA0(v105, v103);
      return a1;
    }

    sub_1001531B8(v101);
  }

  *v101 = *v102;
  return a1;
}

void sub_1001CCF9C(uint64_t a1)
{
  sub_1001CD0E4(319, &qword_100938D60, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_1001CD0E4(319, &unk_10093B830, &type metadata accessor for DateComponents);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_1001CD0E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1001CD138()
{
  result = qword_10093B898;
  if (!qword_10093B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B898);
  }

  return result;
}

unint64_t sub_1001CD18C()
{
  result = qword_10093B8A8;
  if (!qword_10093B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B8A8);
  }

  return result;
}

unint64_t sub_1001CD1E0()
{
  result = qword_10093B8B8;
  if (!qword_10093B8B8)
  {
    sub_1000F514C(&qword_10093B8B0, &qword_100798E80);
    sub_1001CD264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B8B8);
  }

  return result;
}

unint64_t sub_1001CD264()
{
  result = qword_10093B8C0;
  if (!qword_10093B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B8C0);
  }

  return result;
}

unint64_t sub_1001CD2B8()
{
  result = qword_10093B8D8;
  if (!qword_10093B8D8)
  {
    sub_1000F514C(&qword_10093B8D0, &qword_100798E88);
    sub_1001CD33C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B8D8);
  }

  return result;
}

unint64_t sub_1001CD33C()
{
  result = qword_10093B8E0;
  if (!qword_10093B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B8E0);
  }

  return result;
}

unint64_t sub_1001CD390()
{
  result = qword_10093B8F0;
  if (!qword_10093B8F0)
  {
    sub_1000F514C(&qword_10093B8E8, &qword_100798E90);
    sub_1001CD414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B8F0);
  }

  return result;
}

unint64_t sub_1001CD414()
{
  result = qword_10093B8F8;
  if (!qword_10093B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B8F8);
  }

  return result;
}

unint64_t sub_1001CD468()
{
  result = qword_10093B910;
  if (!qword_10093B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B910);
  }

  return result;
}

unint64_t sub_1001CD4BC()
{
  result = qword_10093B918;
  if (!qword_10093B918)
  {
    sub_1000F514C(&qword_10093B8B0, &qword_100798E80);
    sub_1001CD540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B918);
  }

  return result;
}

unint64_t sub_1001CD540()
{
  result = qword_10093B920;
  if (!qword_10093B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B920);
  }

  return result;
}

unint64_t sub_1001CD594()
{
  result = qword_10093B930;
  if (!qword_10093B930)
  {
    sub_1000F514C(&qword_10093B8D0, &qword_100798E88);
    sub_1001CD618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B930);
  }

  return result;
}

unint64_t sub_1001CD618()
{
  result = qword_10093B938;
  if (!qword_10093B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B938);
  }

  return result;
}

unint64_t sub_1001CD66C()
{
  result = qword_10093B940;
  if (!qword_10093B940)
  {
    sub_1000F514C(&qword_10093B8E8, &qword_100798E90);
    sub_1001CD6F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B940);
  }

  return result;
}

unint64_t sub_1001CD6F0()
{
  result = qword_10093B948;
  if (!qword_10093B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B948);
  }

  return result;
}

uint64_t sub_1001CD744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSavedReminder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for RDSavedReminder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RDSavedReminder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001CD8FC()
{
  result = qword_10093B950;
  if (!qword_10093B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B950);
  }

  return result;
}

unint64_t sub_1001CD954()
{
  result = qword_10093B958;
  if (!qword_10093B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B958);
  }

  return result;
}

unint64_t sub_1001CD9AC()
{
  result = qword_10093B960;
  if (!qword_10093B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B960);
  }

  return result;
}

uint64_t sub_1001CDA00(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = 0xEC00000065746144;
  v11 = a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0xED00007372656767;
    if (a1 == 0x6972546D72616C61 && a2 == 0xED00007372656767 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0x80000001007EC030;
      if (a1 == 0xD000000000000012 && 0x80000001007EC030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v15 = 0x80000001007EA5C0;
        if (a1 == 0xD000000000000011 && 0x80000001007EA5C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else if (a1 == 0x64656767616C66 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else if (a1 == 0x7367617468736168 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 5;
        }

        else
        {
          v16 = 0x80000001007EA5E0;
          if (a1 == 0xD000000000000011 && 0x80000001007EA5E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            a2, v16, a3, a4, a5, a6, a7, a8;
            return 6;
          }

          else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            a2, v16, a3, a4, a5, a6, a7, a8;
            return 7;
          }

          else
          {
            v17 = 0xEF73656C75526563;
            if (a1 == 0x6E65727275636572 && a2 == 0xEF73656C75526563 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              a2, v17, a3, a4, a5, a6, a7, a8;
              return 8;
            }

            else
            {
              v18 = 0x80000001007EA5A0;
              if (a1 == 0xD000000000000013 && 0x80000001007EA5A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                a2, v18, a3, a4, a5, a6, a7, a8;
                return 9;
              }

              else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                a2, v18, a3, a4, a5, a6, a7, a8;
                return 10;
              }

              else
              {
                v19 = 0x80000001007EA570;
                if (a1 == 0xD000000000000011 && 0x80000001007EA570 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  a2, v19, a3, a4, a5, a6, a7, a8;
                  return 11;
                }

                else if (a1 == 0xD000000000000012 && 0x80000001007EFA00 == a2)
                {
                  a2, 0x80000001007EFA00, a3, a4, a5, a6, a7, a8;
                  return 12;
                }

                else
                {
                  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  a2, v21, v22, v23, v24, v25, v26, v27;
                  if (v20)
                  {
                    return 12;
                  }

                  else
                  {
                    return 13;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1001CDE28()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093B968);
  v1 = sub_100006654(v0, qword_10093B968);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001CDEF0()
{
  result = sub_10001035C(0);
  qword_100974C28 = result;
  return result;
}

uint64_t sub_1001CDF14()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_1003EAA24(KeyPath);

  qword_100974C30 = v1;
  return result;
}

void sub_1001CDF58(uint64_t a1, void (*a2)(void, void, void))
{
  v267 = a2;
  v3 = v2;
  *&v268 = a1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v262 = &v258 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v263 = v7;
  v264 = v8;
  __chkstk_darwin(v7, v9);
  v261 = &v258 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v259 = &v258 - v13;
  __chkstk_darwin(v14, v15);
  v17 = &v258 - v16;
  __chkstk_darwin(v18, v19);
  v21 = &v258 - v20;
  __chkstk_darwin(v22, v23);
  v260 = &v258 - v24;
  __chkstk_darwin(v25, v26);
  v28 = &v258 - v27;
  __chkstk_darwin(v29, v30);
  v32 = &v258 - v31;
  __chkstk_darwin(v33, v34);
  v36 = &v258 - v35;
  v37 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v38 = *(v37 - 8);
  __chkstk_darwin(v37 - 8, v39);
  v41 = &v258 - v40;
  if (qword_100935B68 != -1)
  {
    swift_once();
  }

  v265 = qword_100974C28;
  switch([v3 type])
  {
    case 0uLL:
      v42 = [v3 listID];
      if (!v42)
      {
        goto LABEL_87;
      }

      v43 = v42;
      v44 = v266;
      v45 = sub_1005E37C0(v43);
      if (v44)
      {
        goto LABEL_47;
      }

      v46 = v45;
      v47 = sub_1005660A8(v45, 0);
      if (v47)
      {
        v266 = 0;
        v223 = v47;
        KeyPath = swift_getKeyPath();
        v225 = v223;
        v226 = sub_100392240(KeyPath, v223);

        sub_1000F5104(&qword_10093B980, qword_10079A3D0);
        inited = swift_initStackObject();
        v268 = xmmword_100791340;
        *(inited + 16) = xmmword_100791340;
        v228 = v265;
        *(inited + 32) = v265;
        *(inited + 40) = v226;
        v229 = v226;
        v230 = v228;
        v231 = sub_10000C2B0();
        if (v267)
        {
        }

        else
        {
          v232 = swift_getKeyPath();
          v233 = sub_1003F71EC(v232);

          v234 = swift_initStackObject();
          *(v234 + 16) = v268;
          v235 = v231;
          *(v234 + 32) = v231;
          *(v234 + 40) = v233;
          v236 = v233;
          v237 = v235;
          sub_10000C2B0();
        }
      }

      else
      {
        [objc_opt_self() noSuchObjectErrorWithObjectID:v43];
        swift_willThrow();
      }

      return;
    case 1uLL:
      v159 = [v3 parentReminderID];
      if (!v159)
      {
        goto LABEL_87;
      }

      v43 = v159;
      v160 = v266;
      v161 = sub_1005E2A38(v43);
      if (v160)
      {
LABEL_47:
      }

      else
      {
        v216 = v161;
        v217 = sub_100566030(v161, 0);
        if (v217)
        {
          v238 = v217;
          v239 = swift_getKeyPath();
          v240 = v238;
          v241 = sub_1003923E4(v239, v238);

          sub_1000F5104(&qword_10093B980, qword_10079A3D0);
          v242 = swift_initStackObject();
          *(v242 + 16) = xmmword_100791340;
          v243 = v265;
          *(v242 + 32) = v265;
          *(v242 + 40) = v241;
          v244 = v241;
          v245 = v243;
          sub_10000C2B0();
        }

        else
        {
          [objc_opt_self() noSuchObjectErrorWithObjectID:v43];
          swift_willThrow();
        }
      }

      return;
    case 2uLL:
      v109 = [v3 objectIDs];
      if (!v109)
      {
        goto LABEL_87;
      }

      v110 = v109;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v111 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v112 = swift_getKeyPath();
      v120 = v111;
      v121 = v112;
      if (v120 >> 62)
      {
        v246 = v120;
        v247 = _CocoaArrayWrapper.endIndex.getter();
        v120 = v246;
        v122 = v247;
        if (v247)
        {
LABEL_30:
          v123 = v120;
          v267 = v121;
          v269 = &_swiftEmptyArrayStorage;
          sub_100253218(0, v122 & ~(v122 >> 63), 0);
          if ((v122 & 0x8000000000000000) == 0)
          {
            v124 = 0;
            v125 = v269;
            v126 = v123;
            *&v268 = v123 & 0xC000000000000001;
            v127 = v123;
            do
            {
              v128 = v122;
              if (v268)
              {
                v129 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v129 = *&v126->clientIdentity[8 * v124 + 16];
              }

              v130 = v129;
              v131 = [v129 uuid];
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v132 = type metadata accessor for UUID();
              (*(*(v132 - 8) + 56))(v41, 0, 1, v132);
              v269 = v125;
              v134 = *v125->clientIdentity;
              v133 = *&v125->clientIdentity[8];
              if (v134 >= v133 >> 1)
              {
                sub_100253218((v133 > 1), v134 + 1, 1);
                v125 = v269;
              }

              ++v124;
              *v125->clientIdentity = v134 + 1;
              sub_100100FB4(v41, v125 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v134);
              v122 = v128;
              v126 = v127;
            }

            while (v128 != v124);
            v127, v127, v135, v136, v137, v138, v139, v140;
            v121 = v267;
            goto LABEL_109;
          }

          goto LABEL_113;
        }
      }

      else
      {
        v122 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v122)
        {
          goto LABEL_30;
        }
      }

      v120, v113, v114, v115, v116, v117, v118, v119;
      v125 = &_swiftEmptyArrayStorage;
LABEL_109:
      v248 = sub_1003E9F90(v121, v125);

      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v249 = swift_initStackObject();
      *(v249 + 16) = xmmword_100791340;
      v250 = v265;
      *(v249 + 32) = v265;
      *(v249 + 40) = v248;
      v251 = v250;
      sub_10000C2B0();
      return;
    case 3uLL:
      v141 = [v3 startingDueDate];
      if (!v141)
      {
        goto LABEL_87;
      }

      v142 = v141;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v143 = swift_getKeyPath();
      v145 = v263;
      v144 = v264;
      v146 = v262;
      (*(v264 + 16))(v262, v36, v263);
      (*(v144 + 56))(v146, 0, 1, v145);
      v147 = sub_1003EA414(v143, v146);

      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v148 = swift_initStackObject();
      *(v148 + 16) = xmmword_100791340;
      v149 = v265;
      *(v148 + 32) = v265;
      *(v148 + 40) = v147;
      v150 = v149;
      sub_10000C2B0();
      (*(v144 + 8))(v36, v145);
      return;
    case 4uLL:
      v58 = [v3 endingDueDate];
      if (!v58)
      {
        goto LABEL_87;
      }

      v59 = v58;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v60 = swift_getKeyPath();
      v62 = v263;
      v61 = v264;
      v63 = v262;
      (*(v264 + 16))(v262, v32, v263);
      (*(v61 + 56))(v63, 0, 1, v62);
      v64 = sub_1003EA208(v60, v63);

      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v65 = swift_initStackObject();
      *(v65 + 16) = xmmword_100791340;
      v66 = v265;
      *(v65 + 32) = v265;
      *(v65 + 40) = v64;
      v67 = v66;
      sub_10000C2B0();
      (*(v61 + 8))(v32, v62);
      return;
    case 5uLL:
      v162 = [v3 startingDueDate];
      if (!v162)
      {
        goto LABEL_87;
      }

      v163 = v162;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v164 = [v3 endingDueDate];
      if (v164)
      {
        v165 = v164;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v166 = swift_getKeyPath();
        v168 = v263;
        v167 = v264;
        v267 = *(v264 + 16);
        v169 = v262;
        v267(v262, v28, v263);
        v261 = *(v167 + 56);
        (v261)(v169, 0, 1, v168);
        *&v268 = sub_1003EA208(v166, v169);

        v170 = swift_getKeyPath();
        v267(v169, v260, v168);
        (v261)(v169, 0, 1, v168);
        v171 = sub_1003EA414(v170, v169);

        sub_1000F5104(&qword_10093B980, qword_10079A3D0);
        v172 = swift_initStackObject();
        *(v172 + 16) = xmmword_100791320;
        v173 = v265;
        v174 = v268;
        *(v172 + 32) = v265;
        *(v172 + 40) = v174;
        *(v172 + 48) = v171;
        v175 = v173;
        sub_10000C2B0();
        v176 = *(v167 + 8);
        v176(v260, v168);
        v176(v28, v168);
        return;
      }

      (*(v264 + 8))(v28, v263);
      goto LABEL_87;
    case 6uLL:
      v177 = [v3 completed];
      v178 = swift_getKeyPath();
      if (v177)
      {
        v179 = sub_1003910E0(v178, 1);
      }

      else
      {
        v179 = sub_1003EAA24(v178);
      }

      v158 = v179;

      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      goto LABEL_70;
    case 7uLL:
      v151 = [v3 text];
      if (!v151)
      {
        goto LABEL_87;
      }

      v152 = v151;
      v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v155 = v154;

      v156 = [v3 textMatching];
      if (v156 > 1)
      {
        if (v156 == 2)
        {
          v214 = swift_getKeyPath();
          v158 = sub_100546590(v214, v153, v155, 6, v215);

          sub_1000F5104(&qword_10093B980, qword_10079A3D0);
        }

        else
        {
          if (v156 != 3)
          {
            goto LABEL_119;
          }

          v221 = swift_getKeyPath();
          v158 = sub_1005465A4(v221, v153, v155, 6, v222);

          sub_1000F5104(&qword_10093B980, qword_10079A3D0);
        }
      }

      else if (v156)
      {
        if (v156 != 1)
        {
          goto LABEL_119;
        }

        v220 = swift_getKeyPath();
        v158 = sub_1003EB478(v220, v153, v155, 6);

        sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      }

      else
      {
        v157 = swift_getKeyPath();
        v158 = sub_1003910F4(v157, v153, v155);

        sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      }

LABEL_70:
      v204 = swift_initStackObject();
      *(v204 + 16) = xmmword_100791340;
      v205 = v265;
      *(v204 + 32) = v265;
      *(v204 + 40) = v158;
      v206 = v205;
      sub_10000C2B0();
      return;
    case 8uLL:
      v190 = [v3 descriptors];
      if (!v190)
      {
        goto LABEL_87;
      }

      v191 = v190;
      sub_1000060C8(0, &qword_10093B988, REMReminderPredicateDescriptor_ptr);
      v88 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v88 >> 62))
      {
        v199 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v200 = v266;
        if (v199)
        {
          goto LABEL_58;
        }

LABEL_67:
        v88, v192, v193, v194, v195, v196, v197, v198;
        sub_10000C2B0();
        return;
      }

      v199 = _CocoaArrayWrapper.endIndex.getter();
      v200 = v266;
      if (!v199)
      {
        goto LABEL_67;
      }

LABEL_58:
      v269 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v199 < 0)
      {
        goto LABEL_114;
      }

      v201 = 0;
      v264 = v88 & 0xFFFFFFFFFFFFFF8;
      v265 = v88 & 0xC000000000000001;
      while (1)
      {
        v202 = v201 + 1;
        if (__OFADD__(v201, 1))
        {
          break;
        }

        if (v265)
        {
          v203 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v201 >= *(v264 + 16))
          {
            goto LABEL_104;
          }

          v203 = *(v88 + 8 * v201 + 32);
        }

        v101 = v203;
        sub_1001CDF58(v268, v267);
        if (v200)
        {
LABEL_71:

          v88, v207, v208, v209, v210, v211, v212, v213;

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v201;
        v200 = 0;
        if (v202 == v199)
        {
          goto LABEL_67;
        }
      }

      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      v96 = _CocoaArrayWrapper.endIndex.getter();
      v97 = v266;
      if (!v96)
      {
LABEL_106:
        v88, v89, v90, v91, v92, v93, v94, v95;
        sub_100025060(&_swiftEmptyArrayStorage);
        return;
      }

LABEL_17:
      v269 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v96 < 0)
      {
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        if (qword_100935B60 != -1)
        {
          swift_once();
        }

        v252 = type metadata accessor for Logger();
        sub_100006654(v252, qword_10093B968);
        v253 = sub_1001F67C8(&_swiftEmptyArrayStorage);
        v254 = sub_1001F67C8(&_swiftEmptyArrayStorage);
        sub_10054573C("unknown type", 12, 2, v253, v254);
        while (1)
        {
          __break(1u);
LABEL_119:
          if (qword_100935B60 != -1)
          {
            swift_once();
          }

          v255 = type metadata accessor for Logger();
          sub_100006654(v255, qword_10093B968);
          v256 = sub_1001F67C8(&_swiftEmptyArrayStorage);
          v257 = sub_1001F67C8(&_swiftEmptyArrayStorage);
          sub_10054573C("unknown textMatching", 20, 2, v256, v257);
        }
      }

      v98 = 0;
      v264 = v88 & 0xFFFFFFFFFFFFFF8;
      v265 = v88 & 0xC000000000000001;
      do
      {
        v99 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          goto LABEL_102;
        }

        if (v265)
        {
          v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v98 >= *(v264 + 16))
          {
            goto LABEL_103;
          }

          v100 = *(v88 + 8 * v98 + 32);
        }

        v101 = v100;
        sub_1001CDF58(v268, v267);
        if (v97)
        {
          goto LABEL_71;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v98;
        v97 = 0;
      }

      while (v99 != v96);
      v88, v102, v103, v104, v105, v106, v107, v108;
      sub_100025060(v269);
      return;
    case 9uLL:
      v86 = [v3 descriptors];
      if (!v86)
      {
        goto LABEL_87;
      }

      v87 = v86;
      sub_1000060C8(0, &qword_10093B988, REMReminderPredicateDescriptor_ptr);
      v88 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v88 >> 62)
      {
        goto LABEL_105;
      }

      v96 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v97 = v266;
      if (v96)
      {
        goto LABEL_17;
      }

      goto LABEL_106;
    case 0xAuLL:
      v180 = [v3 startingDueDate];
      if (!v180)
      {
        goto LABEL_87;
      }

      v181 = v180;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v182 = swift_getKeyPath();
      v184 = v263;
      v183 = v264;
      v185 = v262;
      (*(v264 + 16))(v262, v21, v263);
      (*(v183 + 56))(v185, 0, 1, v184);
      v186 = sub_1003EA414(v182, v185);

      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v187 = swift_initStackObject();
      *(v187 + 16) = xmmword_100791340;
      v188 = v265;
      *(v187 + 32) = v265;
      *(v187 + 40) = v186;
      v189 = v188;
      sub_10000C2B0();
      (*(v183 + 8))(v21, v184);
      return;
    case 0xBuLL:
      v48 = [v3 endingDueDate];
      if (!v48)
      {
        goto LABEL_87;
      }

      v49 = v48;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = swift_getKeyPath();
      v52 = v263;
      v51 = v264;
      v53 = v262;
      (*(v264 + 16))(v262, v17, v263);
      (*(v51 + 56))(v53, 0, 1, v52);
      v54 = sub_1003EA208(v50, v53);

      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v55 = swift_initStackObject();
      *(v55 + 16) = xmmword_100791340;
      v56 = v265;
      *(v55 + 32) = v265;
      *(v55 + 40) = v54;
      v57 = v56;
      sub_10000C2B0();
      (*(v51 + 8))(v17, v52);
      return;
    case 0xCuLL:
      v68 = [v3 startingDueDate];
      if (!v68)
      {
        goto LABEL_87;
      }

      v69 = v259;
      v70 = v68;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v71 = [v3 endingDueDate];
      if (v71)
      {
        v72 = v71;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v73 = swift_getKeyPath();
        v74 = v264;
        v267 = *(v264 + 16);
        v75 = v262;
        v76 = v69;
        v77 = v263;
        v267(v262, v76, v263);
        v78 = *(v74 + 56);
        v78(v75, 0, 1, v77);
        *&v268 = sub_1003EA208(v73, v75);

        v79 = swift_getKeyPath();
        v267(v75, v261, v77);
        v78(v75, 0, 1, v77);
        v80 = sub_1003EA414(v79, v75);

        sub_1000F5104(&qword_10093B980, qword_10079A3D0);
        v81 = swift_initStackObject();
        *(v81 + 16) = xmmword_100791320;
        v82 = v265;
        v83 = v268;
        *(v81 + 32) = v265;
        *(v81 + 40) = v83;
        *(v81 + 48) = v80;
        v84 = v82;
        sub_10000C2B0();
        v85 = *(v74 + 8);
        v85(v261, v77);
        v85(v259, v77);
      }

      else
      {
        (*(v264 + 8))(v69, v263);
LABEL_87:
        v218 = objc_opt_self();
        v219 = String._bridgeToObjectiveC()();
        [v218 internalErrorWithDebugDescription:v219];

        swift_willThrow();
      }

      return;
    default:
      goto LABEL_115;
  }
}

uint64_t sub_1001CF968()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093B990);
  v1 = sub_100006654(v0, qword_10093B990);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001CFA78()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093BA40);
  v1 = sub_100006654(v0, qword_10093BA40);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static REMCDAlarm.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDAlarm.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v9 = String._bridgeToObjectiveC()();
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  v19 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v19)
  {
    v20 = [a2 ckIdentifier];
    if (v20)
    {
      v21 = v20;
      [v19 mergeDataFromRecord:a1 accountID:v20];

      v22 = v19;
      [v22 setCkServerRecord:a1];
      [v22 setInCloud:1];

      [v22 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_100935B80 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_10093BA40);
      v24 = a2;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = v4;
        *v27 = 136446466;
        swift_getMetatypeMetadata();
        v28 = String.init<A>(describing:)();
        v30 = v29;
        v31 = sub_10000668C(v28, v29, &v54);
        v30, v32, v33, v34, v35, v36, v37, v38;
        *(v27 + 4) = v31;
        *(v27 + 12) = 2082;
        v39 = [v24 remObjectID];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 description];

          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;
        }

        else
        {
          v44 = 0xE300000000000000;
          v42 = 7104878;
        }

        v45 = sub_10000668C(v42, v44, &v54);
        v44, v46, v47, v48, v49, v50, v51, v52;
        *(v27 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v25, v26, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v27, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v19;
}

Swift::String __swiftcall REMCDAlarm.recordType()()
{
  v0 = 0x6D72616C41;
  v1 = 0xE500000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDAlarm.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v5 - 8, v6);
  v64 = &v61 - v7;
  v8 = String._bridgeToObjectiveC()();
  v67.receiver = v3;
  v67.super_class = REMCDAlarm;
  objc_msgSendSuper2(&v67, "mergeDataFromRecord:accountID:", from.super.isa, v8);

  v9 = [(objc_class *)from.super.isa recordID];
  v10 = [v9 recordName];

  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    v10 = String._bridgeToObjectiveC()();
    v12, v13, v14, v15, v16, v17, v18, v19;
  }

  v20 = [v3 ckIdentifierFromRecordName:v10];

  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    v20 = String._bridgeToObjectiveC()();
    v22, v23, v24, v25, v26, v27, v28, v29;
  }

  [v3 setCkIdentifier:v20];

  v30 = 0;
  v62 = "OriginalAlarmUID";
  v63 = "cationEngineAssembly";
  v61 = "DueDateResolutionTokenAsNonce";
  v31 = &type metadata for String;
  do
  {
    v32 = *(&off_1008DF030 + v30 + 32);
    if (v32 > 2)
    {
      if (v32 == 3)
      {
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        CKRecordKeyValueSetting.subscript.getter();
        v50 = v66;
        if (v66)
        {
          v34 = String._bridgeToObjectiveC()();
          v50, v51, v52, v53, v54, v55, v56, v57;
        }

        else
        {
          v34 = 0;
        }

        [v3 setOriginalAlarmUID:{v34, v61, v62, v63}];
        goto LABEL_29;
      }

      if (v32 == 4)
      {
        if (CKRecord.subscript.getter())
        {
          objc_opt_self();
          v42 = swift_dynamicCastObjCClass();
          if (!v42)
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v42 = 0;
        }

        v59 = sub_1001287DC(v42);

        if (v59)
        {
          objc_opt_self();
          v60 = swift_dynamicCastObjCClass();
          if (!v60)
          {
          }
        }

        else
        {
          v60 = 0;
        }

        [v3 setReminder:{v60, v61, v62, v63}];
      }
    }

    else if (*(&off_1008DF030 + v30 + 32))
    {
      if (v32 == 1)
      {
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        CKRecordKeyValueSetting.subscript.getter();
        v33 = v66;
        if (v66)
        {
          v34 = String._bridgeToObjectiveC()();
          v33, v35, v36, v37, v38, v39, v40, v41;
        }

        else
        {
          v34 = 0;
        }

        [v3 setAlarmUID:{v34, v61, v62, v63}];
LABEL_29:

        goto LABEL_7;
      }

      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      v58 = v65;
      if (v66)
      {
        v58 = 0.0;
      }

      [v3 setDueDateResolutionTokenAsNonce:{v58, v61, v62, v63}];
    }

    else
    {
      v43 = v3;
      v44 = v31;
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v45 = type metadata accessor for Date();
      v46 = v64;
      CKRecordKeyValueSetting.subscript.getter();
      v47 = *(v45 - 8);
      isa = 0;
      if ((*(v47 + 48))(v46, 1, v45) != 1)
      {
        v49 = v64;
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v47 + 8))(v49, v45);
      }

      v3 = v43;
      [v43 setAcknowledgedDate:{isa, v61, v62, v63}];

      v31 = v44;
    }

LABEL_7:
    ++v30;
  }

  while (v30 != 6);
}

CKRecord_optional __swiftcall REMCDAlarm.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v6, v7).n128_u64[0];
  v10 = v43 - v9;
  v47.receiver = v0;
  v47.super_class = REMCDAlarm;
  v12 = objc_msgSendSuper2(&v47, "newlyCreatedRecord", v8);
  if (v12)
  {
    v13 = 0;
    v43[2] = "OriginalAlarmUID";
    v43[3] = "cationEngineAssembly";
    v43[1] = "DueDateResolutionTokenAsNonce";
    do
    {
      v15 = *(&off_1008DF058 + v13 + 32);
      if (v15 > 2)
      {
        if (v15 == 3)
        {
          v27 = [v1 originalAlarmUID];
          if (v27)
          {
            v28 = v27;
            v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v31 = v30;

            *(&v45 + 1) = &type metadata for String;
            v46 = &protocol witness table for String;
            *&v44 = v29;
            *(&v44 + 1) = v31;
          }

          else
          {
            v46 = 0;
            v44 = 0u;
            v45 = 0u;
          }
        }

        else
        {
          if (v15 == 4)
          {
            v21 = [v1 reminder];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 recordID];
            }

            else
            {
              v23 = 0;
            }

            v41 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v23];

            CKRecord.subscript.setter();
            goto LABEL_6;
          }

          v33 = [v1 trigger];
          if (v33 && (v34 = v33, v35 = [v33 ckIdentifier], v34, v35))
          {
            v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v38 = v37;

            *(&v45 + 1) = &type metadata for String;
            v46 = &protocol witness table for String;
            *&v44 = v36;
            *(&v44 + 1) = v38;
          }

          else
          {
            v46 = 0;
            v44 = 0u;
            v45 = 0u;
          }
        }
      }

      else if (*(&off_1008DF058 + v13 + 32))
      {
        if (v15 != 1)
        {
          [v1 dueDateResolutionTokenAsNonce];
          *(&v45 + 1) = &type metadata for Double;
          v46 = &protocol witness table for Double;
          *&v44 = v32;
          sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
          goto LABEL_5;
        }

        v16 = [v1 alarmUID];
        if (v16)
        {
          v17 = v16;
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;

          *(&v45 + 1) = &type metadata for String;
          v46 = &protocol witness table for String;
          *&v44 = v18;
          *(&v44 + 1) = v20;
        }

        else
        {
          v46 = 0;
          v44 = 0u;
          v45 = 0u;
        }
      }

      else
      {
        v24 = [v1 acknowledgedDate];
        if (v24)
        {
          v25 = v24;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v26 = 0;
        }

        else
        {
          v26 = 1;
        }

        v39 = type metadata accessor for Date();
        v40 = *(v39 - 8);
        (*(v40 + 56))(v5, v26, 1, v39);
        sub_10012F7FC(v5, v10);
        if ((*(v40 + 48))(v10, 1, v39) == 1)
        {
          sub_1001AAD5C(v10);
          v44 = 0u;
          v45 = 0u;
          v46 = 0;
        }

        else
        {
          *(&v45 + 1) = v39;
          v46 = &protocol witness table for Date;
          v14 = sub_1000103CC(&v44);
          (*(v40 + 32))(v14, v10, v39);
        }
      }

      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
LABEL_5:
      CKRecordKeyValueSetting.subscript.setter();
LABEL_6:
      ++v13;
    }

    while (v13 != 6);
  }

  v42 = v12;
  result.value.super.isa = v42;
  result.is_nil = v11;
  return result;
}

Swift::Void __swiftcall REMCDAlarm.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100935B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093BA40);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_10093BA58, &unk_100799158);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v18);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

_TtC7remindd19RDXPCStorePerformer *REMCDAlarm.objectsToBeDeletedBeforeThisObject()()
{
  v1 = [v0 trigger];
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = v1;
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791300;
  v4 = sub_1000060C8(0, &unk_100940330, off_1008D4148);
  result = v3;
  *(v3 + 56) = v4;
  *(v3 + 32) = v2;
  return result;
}

Swift::Void __swiftcall REMCDAlarm.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_100935B80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_10093BA40);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_14;
  }

  v73 = v3;
  v7 = 7104878;
  v8 = swift_slowAlloc();
  v75 = swift_slowAlloc();
  *v8 = 136446466;
  v9 = [v4 remObjectID];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v7 = 7104878;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = sub_10000668C(v12, v14, &v75);
  v14, v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 4) = v15;
  *(v8 + 12) = 2082;
  v23 = [v4 reminder];
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = v23;
  v25 = [v23 remObjectID];
  if (!v25)
  {

LABEL_12:
    v29 = 0xE300000000000000;
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v25 description];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

LABEL_13:
  v30 = sub_10000668C(v7, v29, &v75);
  v29, v31, v32, v33, v34, v35, v36, v37;
  *(v8 + 14) = v30;
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for alarm {alarmID: %{public}s, reminderID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v38 = [v4 reminder];
  if (v38)
  {
    v74 = v38;
    if ([v38 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
    {
      v39 = v4;
      v40 = v74;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v43 = 136446466;
        v44 = &selRef_persistentStoreForIdentifier_;
        v45 = [v39 remObjectID];
        if (v45)
        {
          v46 = v45;
          v47 = [v45 description];

          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v44 = &selRef_persistentStoreForIdentifier_;
        }

        else
        {
          v50 = 0xE300000000000000;
          v48 = 7104878;
        }

        v51 = sub_10000668C(v48, v50, &v75);
        v50, v52, v53, v54, v55, v56, v57, v58;
        *(v43 + 4) = v51;
        *(v43 + 12) = 2082;
        v59 = [v40 v44[106]];
        if (v59)
        {
          v60 = v59;
          v61 = [v59 description];

          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;
        }

        else
        {
          v64 = 0xE300000000000000;
          v62 = 7104878;
        }

        v65 = sub_10000668C(v62, v64, &v75);
        v64, v66, v67, v68, v69, v70, v71, v72;
        *(v43 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v41, v42, "Reminder is marked for deletion but alarm is not {alarmID: %{public}s, reminderID: %{public}s}", v43, 0x16u);
        swift_arrayDestroy();
      }

      [v39 markForDeletion];
    }

    [v74 forcePushToCloud];
  }
}

uint64_t _sSo10REMCDAlarmC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100935B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093BA40);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_10093BA58, &unk_100799158);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _sSo10REMCDAlarmC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100935B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093BA40);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_10093BA58, &unk_100799158);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t static REMCDBaseSection.cdEntityName.getter()
{
  v0 = [objc_opt_self() cdEntityName];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

Swift::Bool __swiftcall REMCDBaseSection.isConnected(toAccountObject:)(NSMutableDictionary toAccountObject)
{
  v3 = [v1 remObjectID];
  if (v3)
  {
    v4 = v3;
    if ([(objc_class *)toAccountObject.super.super.isa objectForKeyedSubscript:v3])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      if (swift_dynamicCast())
      {

        LOBYTE(v3) = v12 == 1;
        return v3;
      }
    }

    else
    {
      sub_1001B2134(v15);
    }

    v5 = v4;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [(objc_class *)toAccountObject.super.super.isa setObject:isa forKeyedSubscript:v5];

    v7 = (*((swift_isaMask & *v1) + 0x50))();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 isConnectedToAccountObject:toAccountObject.super.super.isa];

      *&v15[0] = v9;
      type metadata accessor for REMObjectIsConnectedState(0);
      v10 = v5;
      [(objc_class *)toAccountObject.super.super.isa setObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() forKeyedSubscript:v10];

      swift_unknownObjectRelease();
      LOBYTE(v3) = v9;
    }

    else
    {

      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

id REMCDBaseSection.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for REMCDBaseSection();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id REMCDBaseSection.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for REMCDBaseSection();
  return objc_msgSendSuper2(&v3, "dealloc");
}

Swift::Void __swiftcall REMCDBaseSection.incrementSpotlightIndexCount()()
{
  if ([v0 spotlightIndexCount] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v1 = 0;
  }

  else
  {
    v2 = [v0 spotlightIndexCount];
    v1 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }
  }

  [v0 setSpotlightIndexCount:v1];
}

uint64_t sub_1001D1F3C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  sub_1000EECAC(v8, a2);
  v9 = sub_100006654(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = sub_100006654(v8, a4);
  v11 = *(*(v8 - 8) + 16);

  return v11(v9, v10, v8);
}

uint64_t sub_1001D2004(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x44496D72616C61;
  }

  else
  {
    v9 = 0x49746E756F636361;
  }

  if (v8)
  {
    v10 = 0xE900000000000044;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (*a2)
  {
    v11 = 0x44496D72616C61;
  }

  else
  {
    v11 = 0x49746E756F636361;
  }

  if (*a2)
  {
    v12 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xE900000000000044;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}