uint64_t sub_1000C0298()
{
  v1 = v0;
  if (qword_100390140 != -1)
  {
LABEL_20:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10009597C(v2, qword_100390148);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "updateMonitorWithNewAggregateState", v5, 2u);
  }

  v6 = (*(*v1 + 200))();
  v7 = v6;
  v8 = 0;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v6 + 56;
  v12 = v10 & *(v6 + 56);
  v13 = (v9 + 63) >> 6;
  while (v12)
  {
LABEL_12:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v16 = (*(v7 + 48) + ((v8 << 10) | (16 * v15)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*v1 + 264);

    v20 = v19(v17, v18);

    if (v20)
    {
      v21 = v1[8];
      if (v21)
      {
        [v21 updateAggregateOptIOState:v20];
      }
    }
  }

  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v14 >= v13)
    {
      break;
    }

    v12 = *(v11 + 8 * v14);
    ++v8;
    if (v12)
    {
      v8 = v14;
      goto LABEL_12;
    }
  }

  v22 = *(*v1 + 208);

  return v22(&_swiftEmptySetSingleton);
}

char *sub_1000C04E8(char *a1, char *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SHA256();
  v58 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SHA256Digest();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = __chkstk_darwin(v11);
  v57 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = type metadata accessor for String.Encoding();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  v60 = a2;

  v20._countAndFlagsBits = 47;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);

  v21._countAndFlagsBits = a3;
  v21._object = a4;
  String.append(_:)(v21);

  static String.Encoding.utf8.getter();
  v22 = String.data(using:allowLossyConversion:)();
  v24 = v23;

  (*(v17 + 8))(v19, v16);
  result = 0;
  if (v24 >> 60 != 15)
  {
    sub_1000D24F0(&unk_100384000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_100002D78(v22, v24);
    sub_1000B4C30(v22, v24, v10);
    v50 = v24;
    v51 = v22;
    sub_10009A9D4(v22, v24);
    dispatch thunk of HashFunction.finalize()();
    (*(v58 + 1))(v10, v8);
    v27 = v53;
    v26 = v54;
    (*(v53 + 16))(v57, v15, v54);
    sub_1000D24F0(&qword_1003846A0, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    result = dispatch thunk of Sequence.makeIterator()();
    v28 = v60;
    v58 = v59;
    v57 = *(v59 + 2);
    v29 = v15;
    v30 = _swiftEmptyArrayStorage;
    if (v60 == v57)
    {
LABEL_3:

      v59 = v30;
      sub_100095820(&unk_100383FD0, &qword_1002D6BC0);
      sub_1000D29A4(&qword_1003851A0, &unk_100383FD0, &qword_1002D6BC0, &protocol conformance descriptor for [A]);
      v31 = BidirectionalCollection<>.joined(separator:)();
      v33 = v32;

      sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
      v34 = *(v52 + 40);
      v35._countAndFlagsBits = v31;
      v35._object = v33;
      isa = CKRecordID.init(recordName:zoneID:)(v35, v34).super.isa;
      sub_10009A9D4(v51, v50);
      (*(v27 + 8))(v29, v26);
      return isa;
    }

    else
    {
      v56 = v58 + 32;
      v55 = xmmword_1002D47B0;
      v37 = v60;
      v38 = v26;
      v39 = v27;
      while ((v28 & 0x8000000000000000) == 0)
      {
        if (v37 >= *(v58 + 2))
        {
          goto LABEL_15;
        }

        v40 = v29;
        v41 = v37[v56];
        sub_100095820(&unk_100383140, &qword_1002D6BD0);
        v42 = swift_allocObject();
        *(v42 + 16) = v55;
        *(v42 + 56) = &type metadata for UInt8;
        *(v42 + 64) = &protocol witness table for UInt8;
        *(v42 + 32) = v41;
        v43 = String.init(format:_:)();
        v45 = v44;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000B3938(0, *(v30 + 2) + 1, 1, v30);
          v30 = result;
        }

        v47 = *(v30 + 2);
        v46 = *(v30 + 3);
        if (v47 >= v46 >> 1)
        {
          result = sub_1000B3938((v46 > 1), v47 + 1, 1, v30);
          v30 = result;
        }

        ++v37;
        *(v30 + 2) = v47 + 1;
        v48 = &v30[16 * v47];
        *(v48 + 4) = v43;
        *(v48 + 5) = v45;
        v26 = v38;
        v27 = v39;
        v29 = v40;
        if (v57 == v37)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000C0AB4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10009597C(v10, qword_100390148);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1000999E4(a1, a2, &v16);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1000999E4(a3, a4, &v16);
    _os_log_impl(&_mh_execute_header, v11, v12, "get record %s[%s]", v13, 0x16u);
    swift_arrayDestroy();
  }

  v14 = (*(*v5 + 152))();
  __chkstk_darwin(v14);
  sub_100095820(&qword_1003846A8, &qword_1002D71B0);
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v16;
}

id sub_1000C0CF4(uint64_t a1)
{

  v14 = sub_1000CD634(v2);
  sub_1000CB258(&v14);
  v3 = v14;
  v4 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
  if (!v4)
  {
    v5 = *(v14 + 16);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_13:

    return 0;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_6:
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
LABEL_15:
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (v4)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v1 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

  if (v7 < *(v3 + 16))
  {
    v8 = *(v3 + 8 * v7 + 32);
    if (v4)
    {
LABEL_11:
      v9 = _CocoaArrayWrapper.endIndex.getter();
LABEL_17:
      if (v9)
      {
        while (1)
        {
          v6 = __OFSUB__(v9--, 1);
          if (v6)
          {
            __break(1u);
            break;
          }

          if (v1)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v9 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            if (v9 >= *(v3 + 16))
            {
              goto LABEL_33;
            }

            v11 = *(v3 + 32 + 8 * v9);
          }

          v10 = v11;
          v12 = [v11 state];
          if (v12 != [v8 state])
          {

            return v8;
          }

          v8 = v10;
          if (!v9)
          {
            goto LABEL_31;
          }
        }
      }

      v10 = v8;
LABEL_31:

      return v10;
    }

LABEL_16:
    v9 = *(v3 + 16);
    goto LABEL_17;
  }

LABEL_35:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000C0EA4(void **a1, void **a2)
{
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v37 - v16;
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = *a1;
  v21 = *a2;
  v22 = &stru_10036E000;
  v23 = [v20 smtTimestamp];
  v38 = v19;
  if (v23)
  {
    v24 = v23;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = v14;
    v26 = v7;
    v27 = v21;
    v28 = *(v11 + 32);
    v28(v9, v17, v10);
    v37 = *(v11 + 56);
    v37(v9, 0, 1, v10);
    v28(v19, v9, v10);
    v21 = v27;
    v7 = v26;
    v14 = v25;
    v22 = &stru_10036E000;
  }

  else
  {
    v37 = *(v11 + 56);
    v37(v9, 1, 1, v10);
    static Date.distantPast.getter();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_1000057C4(v9, &qword_100383FB0, &unk_1002D6690);
    }
  }

  v29 = [v21 v22[201].attr];
  if (v29)
  {
    v30 = v29;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = *(v11 + 32);
    v31(v7, v17, v10);
    v37(v7, 0, 1, v10);
    v31(v14, v7, v10);
    v32 = v38;
  }

  else
  {
    v37(v7, 1, 1, v10);
    static Date.distantPast.getter();
    v33 = (*(v11 + 48))(v7, 1, v10);
    v32 = v38;
    if (v33 != 1)
    {
      sub_1000057C4(v7, &qword_100383FB0, &unk_1002D6690);
    }
  }

  v34 = static Date.< infix(_:_:)();
  v35 = *(v11 + 8);
  v35(v14, v10);
  v35(v32, v10);
  return v34 & 1;
}

void *sub_1000C1278(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100390140 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v6 = type metadata accessor for Logger();
    sub_10009597C(v6, qword_100390148);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v38 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000999E4(a1, a2, &v38);
      _os_log_impl(&_mh_execute_header, v7, v8, "get aggregate record [%s]", v9, 0xCu);
      sub_10009A9E8(v10);
    }

    v11 = (*(*v3 + 152))();
    __chkstk_darwin(v11);
    sub_100095820(&qword_1003846B0, &qword_1002D71B8);
    NSManagedObjectContext.performAndWait<A>(_:)();

    a1 = v38;
    if (!v38)
    {
      goto LABEL_33;
    }

    v12 = v38 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v12)
    {
      break;
    }

    a2 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v13 = *(a1 + 8 * a2 + 32);
      }

      v14 = v13;
      v15 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      v38 = v13;
      sub_1000C1810(&v38);

      ++a2;
      if (v15 == v12)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_16:

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_32:

LABEL_33:
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "no opt in records to pick";
      goto LABEL_35;
    }

LABEL_36:

    return 0;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_32;
  }

LABEL_18:
  v16 = (*(*v3 + 256))(a1);

  if (!v16)
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Failed to pick oldest record";
LABEL_35:
      _os_log_impl(&_mh_execute_header, v26, v27, v29, v28, 2u);

      goto LABEL_36;
    }

    goto LABEL_36;
  }

  [v16 setEverOptIn:1];
  v17 = v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v20 = 136315650;
    v21 = [v17 uri];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v25 = 0xE100000000000000;
      v23 = 45;
    }

    v30 = sub_1000999E4(v23, v25, &v38);

    *(v20 + 4) = v30;
    *(v20 + 12) = 2080;
    v31 = [v17 application];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_1000999E4(v32, v34, &v38);

    *(v20 + 14) = v35;
    *(v20 + 22) = 2048;
    v36 = [v17 state];

    *(v20 + 24) = v36;
    _os_log_impl(&_mh_execute_header, v18, v19, "Final optin: %s[%s] - %lu", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return v16;
}

void sub_1000C1810(void **a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v12 = *a1;
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10009597C(v13, qword_100390148);
  v43 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v40 = v5;
    v16 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44 = v41;
    *v16 = 136315906;
    v17 = [v43 uri];
    v42 = v3;
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v21 = 0xE100000000000000;
      v19 = 45;
    }

    v23 = sub_1000999E4(v19, v21, &v44);

    *(v16 + 4) = v23;
    *(v16 + 12) = 2080;
    v24 = [v43 application];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_1000999E4(v25, v27, &v44);

    *(v16 + 14) = v28;
    *(v16 + 22) = 2048;
    v29 = [v43 state];

    *(v16 + 24) = v29;
    *(v16 + 32) = 2080;
    v30 = [v43 smtTimestamp];
    if (v30)
    {
      v31 = v30;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = v42;
      (*(v42 + 56))(v9, 0, 1, v2);
    }

    else
    {
      v32 = v42;
      (*(v42 + 56))(v9, 1, 1, v2);
    }

    sub_1000D1B4C(v9, v11, &qword_100383FB0, &unk_1002D6690);
    if ((*(v32 + 48))(v11, 1, v2))
    {
      sub_1000057C4(v11, &qword_100383FB0, &unk_1002D6690);
      v33 = 0xE100000000000000;
      v34 = 45;
    }

    else
    {
      v35 = v40;
      (*(v32 + 16))(v40, v11, v2);
      sub_1000057C4(v11, &qword_100383FB0, &unk_1002D6690);
      v36 = Date.description.getter();
      v33 = v37;
      (*(v32 + 8))(v35, v2);
      v34 = v36;
    }

    v38 = sub_1000999E4(v34, v33, &v44);

    *(v16 + 34) = v38;
    _os_log_impl(&_mh_execute_header, v14, v15, "processing optin: %s[%s] - %lu %s", v16, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v22 = v43;
  }
}

void sub_1000C1CCC(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
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
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_1000C26C0(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1000C1DB8()
{
  v1 = v0;
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10009597C(v2, qword_100390148);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "getAllOptInStates", v5, 2u);
  }

  v6 = (*(*v1 + 152))();
  sub_100095820(&qword_1003846B8, &unk_1002DCED0);
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v8;
}

id sub_1000C1F0C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for Date();
  v65 = *(v8 - 8);
  __chkstk_darwin(v8);
  v64 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v57 - v14;
  v16 = *a1;
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10009597C(v17, qword_100390148);
  v18 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v60 = v20;
    v61 = a3;
    v62 = a2;
    v63 = a4;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v66 = v59;
    *v21 = 136315906;
    v23 = [v18 uri];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = sub_1000999E4(v24, v26, &v66);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    v28 = [v18 application];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = sub_1000999E4(v29, v31, &v66);

    *(v21 + 14) = v32;
    *(v21 + 22) = 2112;
    v33 = [v18 state];
    *(v21 + 24) = v33;
    v58 = v22;
    *v22 = v33;
    *(v21 + 32) = 2080;
    v34 = [v18 smtTimestamp];
    if (v34)
    {
      v35 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = v65;
      (*(v65 + 56))(v13, 0, 1, v8);
    }

    else
    {
      v36 = v65;
      (*(v65 + 56))(v13, 1, 1, v8);
    }

    sub_1000D1B4C(v13, v15, &qword_100383FB0, &unk_1002D6690);
    v37 = (*(v36 + 48))(v15, 1, v8);
    a4 = v63;
    v38 = v61;
    if (v37)
    {
      sub_1000057C4(v15, &qword_100383FB0, &unk_1002D6690);
      v39 = 0xE100000000000000;
      v40 = 45;
    }

    else
    {
      v41 = v64;
      (*(v36 + 16))(v64, v15, v8);
      sub_1000057C4(v15, &qword_100383FB0, &unk_1002D6690);
      v42 = Date.description.getter();
      v39 = v43;
      (*(v36 + 8))(v41, v8);
      v40 = v42;
    }

    v44 = sub_1000999E4(v40, v39, &v66);

    *(v21 + 34) = v44;
    _os_log_impl(&_mh_execute_header, v19, v60, v38, v21, 0x2Au);
    sub_1000057C4(v58, &unk_100383290, &unk_1002D5BA0);

    swift_arrayDestroy();

    a2 = v62;
  }

  else
  {
  }

  v45 = [v18 ckstate];
  if (!v45)
  {
    goto LABEL_16;
  }

  v46 = v45;
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  if (v47 == 0x646574656C6564 && v49 == 0xE700000000000000)
  {
    goto LABEL_18;
  }

  v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v50 & 1) == 0)
  {
LABEL_16:
    v51 = [v18 uri];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    if (v52 == *(a2 + 88) && v54 == *(a2 + 96))
    {
LABEL_18:

      goto LABEL_19;
    }

    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v56 & 1) == 0)
    {
      result = sub_1000BFA10();
      goto LABEL_20;
    }
  }

LABEL_19:
  result = 0;
LABEL_20:
  *a4 = result;
  return result;
}

unint64_t sub_1000C24D4()
{
  v14 = sub_1000CE2A8(_swiftEmptyArrayStorage);
  v1 = (*(*v0 + 272))();
  sub_1000C1CCC(v1, &v14);

  v2 = (*(*v0 + 312))(5456969, 0xE300000000000000);
  if (v2 == 2)
  {
    v3 = v14;
  }

  else
  {
    v4 = v2;
    sub_100095820(&unk_1003846C0, &qword_1002D71C0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6574617473;
    *(inited + 16) = xmmword_1002D47B0;
    *(inited + 40) = 0xE500000000000000;
    if (v4)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (v4)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v8 = v7;
    String.append(_:)(*&v6);

    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    v9 = sub_100099F8C(inited);
    swift_setDeallocating();
    sub_1000057C4(inited + 32, &qword_100382D70, qword_1002D5B88);
    v10 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000CD2C0(v9, 0x492D746E65746E69, 0xEA00000000005344, isUniquelyReferenced_nonNull_native);
    v3 = v10;
  }

  v12 = sub_1000C2E30(v3);

  return v12;
}

void sub_1000C26C0(void **a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v9 = __chkstk_darwin(v8 - 8);
  v68 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v62 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v62 - v15;
  __chkstk_darwin(v14);
  v18 = &v62 - v17;
  v19 = *a1;
  v20 = objc_opt_self();
  v21 = [v19 uri];
  v22 = [v20 privacyURI:v21];

  if (v22)
  {
    v67 = a2;
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v23;

    sub_100095820(&unk_1003846C0, &qword_1002D71C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002D7190;
    *(inited + 32) = 0x6574617473;
    v64 = inited + 32;
    *(inited + 40) = 0xE500000000000000;
    v71 = 0;
    v72 = 0xE000000000000000;
    v70 = [v19 state];
    type metadata accessor for KTOptIn(0);
    _print_unlocked<A, B>(_:_:)();
    v25 = v72;
    *(inited + 48) = v71;
    *(inited + 56) = v25;
    *(inited + 64) = 0x6D617473656D6974;
    *(inited + 72) = 0xE900000000000070;
    v71 = 0;
    v72 = 0xE000000000000000;
    v26 = [v19 smtTimestamp];
    v69 = v19;
    if (v26)
    {
      v27 = v26;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = *(v5 + 56);
    v29(v16, v28, 1, v4);
    sub_1000D1B4C(v16, v18, &qword_100383FB0, &unk_1002D6690);
    v30 = *(v5 + 48);
    v31 = v30(v18, 1, v4);
    v63 = v5;
    if (v31)
    {
      sub_1000057C4(v18, &qword_100383FB0, &unk_1002D6690);
    }

    else
    {
      (*(v5 + 16))(v7, v18, v4);
      sub_1000057C4(v18, &qword_100383FB0, &unk_1002D6690);
      Date.timeIntervalSince1970.getter();
      (*(v5 + 8))(v7, v4);
    }

    Double.write<A>(to:)();
    v32 = v72;
    *(inited + 80) = v71;
    *(inited + 88) = v32;
    *(inited + 96) = 0xD000000000000011;
    *(inited + 104) = 0x800000010029B390;
    v71 = 0;
    v72 = 0xE000000000000000;
    v33 = [v69 smtTimestamp];
    v34 = v68;
    if (v33)
    {
      v35 = v33;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v29(v34, v36, 1, v4);
    sub_1000D1B4C(v34, v13, &qword_100383FB0, &unk_1002D6690);
    if (v30(v13, 1, v4))
    {
      sub_1000057C4(v13, &qword_100383FB0, &unk_1002D6690);
      v37 = 0xE100000000000000;
      v38 = 45;
    }

    else
    {
      v39 = v63;
      (*(v63 + 16))(v7, v13, v4);
      sub_1000057C4(v13, &qword_100383FB0, &unk_1002D6690);
      v40 = Date.description.getter();
      v37 = v41;
      (*(v39 + 8))(v7, v4);
      v38 = v40;
    }

    v42 = v69;
    v43 = v37;
    String.append(_:)(*&v38);

    v44 = v72;
    *(inited + 112) = v71;
    *(inited + 120) = v44;
    *(inited + 128) = 0x6F6973726556736FLL;
    *(inited + 136) = 0xE90000000000006ELL;
    v71 = 0;
    v72 = 0xE000000000000000;
    v45 = [v42 osVersion];
    if (v45)
    {
      v46 = v45;
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;
    }

    else
    {
      v49 = 0xE100000000000000;
      v47 = 45;
    }

    v50._countAndFlagsBits = v47;
    v50._object = v49;
    String.append(_:)(v50);

    v51 = v72;
    *(inited + 144) = v71;
    *(inited + 152) = v51;
    *(inited + 160) = 28275;
    *(inited + 168) = 0xE200000000000000;
    v71 = 0;
    v72 = 0xE000000000000000;
    v52 = [v42 serialNumber];
    if (v52)
    {
      v53 = v52;
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;
    }

    else
    {
      v56 = 0xE100000000000000;
      v54 = 45;
    }

    v57 = v67;
    v58._countAndFlagsBits = v54;
    v58._object = v56;
    String.append(_:)(v58);

    v59 = v72;
    *(inited + 176) = v71;
    *(inited + 184) = v59;
    v60 = sub_100099F8C(inited);
    swift_setDeallocating();
    sub_100095820(&qword_100382D70, qword_1002D5B88);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = *v57;
    *v57 = 0x8000000000000000;
    sub_1000CD2C0(v60, v65, v66, isUniquelyReferenced_nonNull_native);

    *v57 = v71;
  }
}

unint64_t sub_1000C2E30(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100095820(&qword_100384A90, &unk_1002D7150);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        sub_100095820(&qword_100384A98, &qword_1002D73E8);
        swift_dynamicCast();
        sub_10009C6AC(&v22, v24);
        sub_10009C6AC(v24, v25);
        sub_10009C6AC(v25, &v23);
        result = sub_10000574C(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_10009A9E8(v11);
          result = sub_10009C6AC(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_10009C6AC(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1000C3090(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10009597C(v10, qword_100390148);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v13 = 136315394;
    if (a2)
    {
      v14 = a1;
    }

    else
    {
      v14 = 45;
    }

    v15 = a4;
    v16 = a3;
    if (a2)
    {
      v17 = a2;
    }

    else
    {
      v17 = 0xE100000000000000;
    }

    v18 = sub_1000999E4(v14, v17, &v20);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1000999E4(v16, v15, &v20);
    _os_log_impl(&_mh_execute_header, v11, v12, "deleting optin record %s[%s]", v13, 0x16u);
    swift_arrayDestroy();
  }

  v19 = (*(*v5 + 152))();
  __chkstk_darwin(v19);
  NSManagedObjectContext.performAndWait<A>(_:)();
}

uint64_t sub_1000C3318()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_1000C3348(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = (*(*v4 + 152))();
  sub_100095820(&qword_1003846D0, &qword_1002D71C8);
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v7;
}

uint64_t sub_1000C3434(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002D4790;
  v8 = *(v2 + 88);
  v7 = *(v2 + 96);
  *(v6 + 56) = &type metadata for String;
  v9 = sub_10009FD4C();
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v9;
  *(v6 + 64) = v9;
  *(v6 + 72) = a1;
  *(v6 + 80) = a2;

  v10 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v10];

  v23 = 0;
  v11 = [v5 execute:&v23];
  v12 = v23;
  if (!v11)
  {
    v22 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 2;
  }

  v13 = v11;
  sub_10009FDA0(0, &qword_1003846E0, off_100315888);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v12;

  if (v14 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_12:

    return 2;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v16 = *(v14 + 32);
  }

  v17 = v16;

  v18 = [v17 state];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 BOOLValue];

    return v20;
  }

  return 2;
}

uint64_t sub_1000C3708(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v8 = (*(*v5 + 152))();
  sub_100095820(a3, a4);
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v10;
}

id sub_1000C37B8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = (*(*v4 + 296))();
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = v4;
    *(v11 + 24) = v10;
    *(v11 + 32) = a4 & 1;
    *(v11 + 40) = a1;
    *(v11 + 48) = a2;
    *(v11 + 56) = a3 & 1;

    v12 = v10;

    v13 = String._bridgeToObjectiveC()();
    v24 = sub_1000CF3C0;
    v25 = v11;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1000D2A70;
    v23 = &unk_100320388;
    v14 = _Block_copy(&v20);
    v15 = [objc_opt_self() named:v13 withBlockTakingSelf:v14];

    _Block_release(v14);

    return v15;
  }

  else
  {
    v17 = String._bridgeToObjectiveC()();
    v24 = sub_1000C3A20;
    v25 = 0;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1000D2A70;
    v23 = &unk_100320338;
    v18 = _Block_copy(&v20);
    v19 = [objc_opt_self() named:v17 withBlockTakingSelf:v18];

    _Block_release(v18);

    return v19;
  }
}

void sub_1000C3A28(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1000C3A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*v3 + 320))();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 recordID];
  }

  else
  {
    v10 = (*(*v3 + 240))(v3[11], v3[12], a1, a2);
    if (!v10)
    {
      v17 = String._bridgeToObjectiveC()();
      v22 = sub_1000C3D2C;
      v23 = 0;
      v18 = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_1000D2A70;
      v21 = &unk_1003203B0;
      v14 = _Block_copy(&v18);
      v15 = [objc_opt_self() named:v17 withBlockTakingSelf:v14];

      goto LABEL_6;
    }

    v9 = v10;
  }

  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = v9;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v12 = v9;

  swift_unknownObjectRetain();
  v13 = String._bridgeToObjectiveC()();
  v22 = sub_1000CF724;
  v23 = v11;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_1000D2A70;
  v21 = &unk_100320400;
  v14 = _Block_copy(&v18);
  v15 = [objc_opt_self() named:v13 withBlockTakingSelf:v14];

LABEL_6:
  _Block_release(v14);

  return v15;
}

void sub_1000C3D34(void *a1, uint64_t a2)
{
  type metadata accessor for KTError(0);
  sub_1000D24F0(&qword_100384A78, type metadata accessor for KTError, &protocol conformance descriptor for KTError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  v3 = _convertErrorToNSError(_:)();

  [a1 setError:v3];
}

void sub_1000C3E0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyArrayStorage;
  v10 = (*(*v4 + 152))();
  NSManagedObjectContext.performAndWait<A>(_:)();
  if (v5)
  {
  }

  else
  {
    v11 = a4 & 1;

    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = v11;
    v13 = v17;
    *(v12 + 32) = v4;
    *(v12 + 40) = v13;
    *(v12 + 48) = a1;
    *(v12 + 56) = a2;

    v14 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_1000CFA5C;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D2A70;
    aBlock[3] = &unk_100320478;
    v15 = _Block_copy(aBlock);
    [objc_opt_self() named:v14 withBlockTakingSelf:v15];

    _Block_release(v15);
  }
}

id sub_1000C403C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v174 = a6;
  v196 = a3;
  v197 = a4;
  v195 = a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v179 = &v166[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v186 = &v166[-v14];
  v15 = __chkstk_darwin(v13);
  v176 = &v166[-v16];
  v17 = __chkstk_darwin(v15);
  v172 = &v166[-v18];
  v19 = __chkstk_darwin(v17);
  v194 = &v166[-v20];
  __chkstk_darwin(v19);
  v177 = &v166[-v21];
  v22 = sub_100095820(&qword_100384A68, &qword_1002D73D0);
  v23 = __chkstk_darwin(v22 - 8);
  v187 = &v166[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v185 = &v166[-v25];
  v26 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(a1 + 64);
  v169 = (v27 + 63) >> 6;
  v190 = (v10 + 16);
  v191 = (v10 + 32);
  v184 = "CloudOpInStateMonitor";
  v178 = v10;
  v188 = (v10 + 8);
  v181 = a5;
  v167 = a5 & 1;
  v180 = a1;

  v30 = 0;
  v31 = &qword_100384A70;
  *(&v32 + 1) = 4;
  v183 = xmmword_1002D4790;
  *&v32 = 136315138;
  v168 = v32;
  *&v32 = 136315906;
  v170 = v32;
  v198 = v9;
  v182 = a1 + 64;
  if (!v29)
  {
LABEL_5:
    if (v169 <= v30 + 1)
    {
      v34 = v30 + 1;
    }

    else
    {
      v34 = v169;
    }

    v35 = v34 - 1;
    v36 = v187;
    while (1)
    {
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v33 >= v169)
      {
        v78 = sub_100095820(&qword_100384A70, &qword_1002D73D8);
        (*(*(v78 - 8) + 56))(v36, 1, 1, v78);
        v29 = 0;
        v30 = v35;
        goto LABEL_14;
      }

      v29 = *(v26 + 8 * v33);
      ++v30;
      if (v29)
      {
        v30 = v33;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    swift_once();
    goto LABEL_62;
  }

  while (1)
  {
    v33 = v30;
LABEL_13:
    v37 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v38 = v37 | (v33 << 6);
    v39 = (*(v180 + 48) + 16 * v38);
    v41 = *v39;
    v40 = v39[1];
    v42 = v178;
    v43 = v177;
    (*(v178 + 16))(v177, *(v180 + 56) + *(v178 + 72) * v38, v9);
    v44 = sub_100095820(&qword_100384A70, &qword_1002D73D8);
    v45 = *(v44 + 48);
    v46 = v187;
    *v187 = v41;
    *(v46 + 1) = v40;
    v36 = v46;
    (*(v42 + 32))(&v46[v45], v43);
    (*(*(v44 - 8) + 56))(v36, 0, 1, v44);

LABEL_14:
    v47 = v185;
    sub_1000D1B4C(v36, v185, &qword_100384A68, &qword_1002D73D0);
    v48 = sub_100095820(&qword_100384A70, &qword_1002D73D8);
    if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
    {

      v156 = (*(*v197 + 152))(v155);
      v200 = 0;
      v157 = [v156 save:&v200];

      if (v157)
      {
        return v200;
      }

      v165 = v200;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }

    v49 = *v47;
    v6 = *(v47 + 1);
    v50 = v194;
    (*v191)();
    v200 = 0;
    v51 = [objc_opt_self() fetchRequest];
    sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
    sub_100095820(&unk_100383140, &qword_1002D6BD0);
    v52 = swift_allocObject();
    *(v52 + 16) = v183;
    *(v52 + 56) = &type metadata for String;
    v53 = sub_10009FD4C();
    v193 = v49;
    *(v52 + 32) = v49;
    *(v52 + 40) = v6;
    *(v52 + 96) = &type metadata for String;
    *(v52 + 104) = v53;
    v54 = v195;
    v55 = v196;
    *(v52 + 64) = v53;
    *(v52 + 72) = v54;
    *(v52 + 80) = v55;

    v56 = NSPredicate.init(format:_:)();
    [v51 setPredicate:v56];

    v199 = 0;
    v192 = v51;
    v57 = [v51 execute:&v199];
    v58 = v199;
    if (v57)
    {
      v59 = v57;
      sub_10009FDA0(0, &qword_1003846E0, off_100315888);
      v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v58;

      v62 = v60 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v31 = v50;
      v63 = v176;
      if (v62)
      {
        if ((v60 & 0xC000000000000001) != 0)
        {
          v65 = v6;
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v64 = v198;
        }

        else
        {
          v64 = v198;
          if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_69;
          }

          v65 = v6;
          v6 = *(v60 + 32);
        }

        swift_beginAccess();
        v200 = v6;
        if (v6)
        {

          if (qword_100390140 != -1)
          {
            swift_once();
          }

          v66 = type metadata accessor for Logger();
          sub_10009597C(v66, qword_100390148);
          v67 = *v190;
          v68 = v194;
          (*v190)(v172, v194, v64);
          v67(v63, v68, v64);
          v69 = Logger.logObject.getter();
          v9 = v64;
          v70 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v69, v70))
          {
            LODWORD(v189) = v70;
            v193 = v69;
            v71 = swift_slowAlloc();
            v175 = swift_slowAlloc();
            v199 = v175;
            *v71 = v170;
            v72 = [v6 recordID];
            if (v72)
            {
              v73 = v72;
              v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v76 = v75;
            }

            else
            {
              v76 = 0xE300000000000000;
              v74 = 7104878;
            }

            v104 = v172;
            v105 = sub_1000999E4(v74, v76, &v199);

            *(v71 + 4) = v105;
            *(v71 + 12) = 2080;
            v106 = [v6 uri];
            v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v109 = v108;

            v110 = sub_1000999E4(v107, v109, &v199);

            v173 = v71;
            *(v71 + 14) = v110;
            *(v71 + 22) = 2080;
            sub_1000D24F0(&qword_1003846E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
            v9 = v198;
            v111 = dispatch thunk of CustomStringConvertible.description.getter();
            v113 = v112;
            v114 = *v188;
            (*v188)(v104, v9);
            v115 = sub_1000999E4(v111, v113, &v199);

            v116 = v173;
            *(v173 + 3) = v115;
            *(v116 + 16) = 2048;
            v117 = v176;
            Date.timeIntervalSince1970.getter();
            v119 = v118;
            v114(v117, v9);
            *(v116 + 34) = v119;
            v120 = v193;
            _os_log_impl(&_mh_execute_header, v193, v189, "optInStore: updating existing record %s %s %s[%f", v116, 0x2Au);
            swift_arrayDestroy();
          }

          else
          {

            v103 = *v188;
            (*v188)(v63, v9);
            v103(v172, v9);
          }

          v31 = v194;
          goto LABEL_45;
        }

        v6 = v65;
      }

      else
      {

        swift_beginAccess();
        v200 = 0;
      }
    }

    else
    {
      v77 = v199;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v171 = 0;
      v31 = v50;
    }

    v79 = (*(*v197 + 240))(v193, v6, v195, v196);
    if (!v79)
    {
      break;
    }

    v80 = v79;
    if (qword_100390140 != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    sub_10009597C(v81, qword_100390148);
    v82 = v80;
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();

    v85 = os_log_type_enabled(v83, v84);
    v9 = v198;
    v189 = v82;
    if (v85)
    {
      v86 = swift_slowAlloc();
      v175 = v6;
      v87 = v86;
      v88 = swift_slowAlloc();
      v199 = v88;
      *v87 = v168;
      v89 = [v82 recordName];
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = v91;

      v93 = v90;
      v31 = v194;
      v94 = sub_1000999E4(v93, v92, &v199);
      v9 = v198;

      *(v87 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v83, v84, "creating new record %s", v87, 0xCu);
      sub_10009A9E8(v88);
    }

    v95 = (*(*v197 + 152))();
    v96 = [objc_allocWithZone(CloudOptIn) initWithContext:v95];

    if (!v96)
    {

      (*v188)(v31, v9);
    }

    v97 = v96;
    v98 = v189;
    v99 = [v189 recordName];
    if (!v99)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = String._bridgeToObjectiveC()();
    }

    [v97 setRecordID:v99];

    v100 = v97;
    v101 = String._bridgeToObjectiveC()();

    [v100 setUri:v101];

    v6 = v100;
    v102 = String._bridgeToObjectiveC()();
    [v6 setApplication:v102];

LABEL_45:
    v121 = v6;
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v121 setSmtTimestamp:isa];

    v123 = String._bridgeToObjectiveC()();
    [v121 setCkstate:v123];

    sub_10009FDA0(0, &qword_100384440, NSNumber_ptr);
    v124 = NSNumber.init(integerLiteral:)(v181 & 1).super.super.isa;
    [v121 setState:v124];

    [v121 setCkrecord:0];
    v125 = (*(*v197 + 440))(v121);
    if (!v125)
    {
      (*v188)(v31, v9);

      v153 = v192;
LABEL_54:
      v31 = &qword_100384A70;

      v26 = v182;
      goto LABEL_55;
    }

    v126 = v125;
    v127 = v174;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v128 = v179;
    if (*((*v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v193 = v121;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (qword_100390140 != -1)
    {
      swift_once();
    }

    v129 = type metadata accessor for Logger();
    sub_10009597C(v129, qword_100390148);
    v130 = *v190;
    v131 = v198;
    (*v190)(v186, v31, v198);
    v9 = v131;
    v130(v128, v31, v131);
    v132 = v128;
    v6 = v126;
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v133, v134))
    {

      v153 = v193;
      v154 = *v188;
      (*v188)(v132, v9);
      v154(v186, v9);
      v154(v194, v9);
      goto LABEL_54;
    }

    v135 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    v199 = v189;
    *v135 = v170;
    v136 = [v6 recordID];
    LODWORD(v175) = v134;
    v137 = v136;
    v138 = [v136 recordName];

    v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v141 = v140;

    v142 = sub_1000999E4(v139, v141, &v199);

    *(v135 + 4) = v142;
    *(v135 + 12) = 1024;
    *(v135 + 14) = v167;
    *(v135 + 18) = 2080;
    sub_1000D24F0(&qword_1003846E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v143 = v186;
    v144 = dispatch thunk of CustomStringConvertible.description.getter();
    v173 = v6;
    v6 = v144;
    v146 = v145;
    v147 = *v188;
    (*v188)(v143, v198);
    v148 = sub_1000999E4(v6, v146, &v199);

    *(v135 + 20) = v148;
    *(v135 + 28) = 2048;
    v149 = v179;
    Date.timeIntervalSince1970.getter();
    v151 = v150;
    v147(v149, v198);
    *(v135 + 30) = v151;
    _os_log_impl(&_mh_execute_header, v133, v175, "trying to update record %s %{BOOL}d smtTimeStamp: %s:[%f]", v135, 0x26u);
    swift_arrayDestroy();

    v9 = v198;

    v152 = v193;
    v147(v194, v9);

    v26 = v182;
    v31 = &qword_100384A70;
LABEL_55:
    if (!v29)
    {
      goto LABEL_5;
    }
  }

  v30 = v198;
  if (qword_100390140 != -1)
  {
    goto LABEL_70;
  }

LABEL_62:
  v159 = type metadata accessor for Logger();
  sub_10009597C(v159, qword_100390148);
  v160 = static os_log_type_t.error.getter();

  v161 = Logger.logObject.getter();

  if (os_log_type_enabled(v161, v160))
  {
    v162 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    v199 = v163;
    *v162 = v168;
    v164 = sub_1000999E4(v193, v6, &v199);

    *(v162 + 4) = v164;
    _os_log_impl(&_mh_execute_header, v161, v160, "failed to create recordID %s", v162, 0xCu);
    sub_10009A9E8(v163);
  }

  else
  {
  }

  return (*v188)(v31, v30);
}

void sub_1000C54FC(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10009597C(v9, qword_100390148);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v12 = 136315650;
    type metadata accessor for Date();
    v13 = Dictionary.Keys.description.getter();
    v15 = a3;
    v16 = a2;
    v17 = sub_1000999E4(v13, v14, &v19);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1000999E4(v16, v15, &v19);
    *(v12 + 22) = 1024;
    *(v12 + 24) = a4 & 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "updating record %s[%s] to %{BOOL}d", v12, 0x1Cu);
    swift_arrayDestroy();
  }

  v18 = (*(*v5 + 152))();
  __chkstk_darwin(v18);
  NSManagedObjectContext.performAndWait<A>(_:)();
}

void sub_1000C579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v146 = a5;
  v140 = a4;
  v158 = a2;
  v159 = a3;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 1);
  v8 = __chkstk_darwin(v6);
  v153 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v144 = &v136 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = (&v136 - v13);
  __chkstk_darwin(v12);
  v141 = &v136 - v15;
  v16 = sub_100095820(&qword_100384A68, &qword_1002D73D0);
  v17 = __chkstk_darwin(v16 - 8);
  v152 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v150 = (&v136 - v19);
  v165 = 0;
  v20 = *(a1 + 64);
  v151 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v143 = a1;

  swift_beginAccess();
  v24 = 0;
  v163 = 0;
  v25 = (v21 + 63) >> 6;
  v154 = (v7 + 16);
  v160 = (v7 + 32);
  v149 = "CloudOpInStateMonitor";
  v142 = v7;
  v147 = (v7 + 8);
  v26 = &qword_1002D73D8;
  *(&v27 + 1) = 4;
  v148 = xmmword_1002D4790;
  *&v27 = 136315138;
  v136 = v27;
  *&v27 = 136315906;
  v137 = v27;
  v157 = v6;
  v155 = v14;
  v145 = v25;
  while (1)
  {
    if (!v23)
    {
      if (v25 <= v24 + 1)
      {
        v36 = v24 + 1;
      }

      else
      {
        v36 = v25;
      }

      v37 = v36 - 1;
      v38 = v152;
      while (1)
      {
        v35 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v35 >= v25)
        {
          v91 = sub_100095820(&qword_100384A70, &qword_1002D73D8);
          (*(*(v91 - 8) + 56))(v38, 1, 1, v91);
          v23 = 0;
          v24 = v37;
          goto LABEL_17;
        }

        v23 = *(v151 + 8 * v35);
        ++v24;
        if (v23)
        {
          v24 = v35;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      swift_once();
LABEL_51:
      v127 = type metadata accessor for Logger();
      sub_10009597C(v127, qword_100390148);
      v128 = static os_log_type_t.error.getter();
      v129 = v162;

      v130 = Logger.logObject.getter();

      if (os_log_type_enabled(v130, v128))
      {
        v131 = v26;
        v132 = swift_slowAlloc();
        v133 = v6;
        v134 = swift_slowAlloc();
        v164 = v134;
        *v132 = v136;
        v135 = sub_1000999E4(v156, v129, &v164);

        *(v132 + 4) = v135;
        _os_log_impl(&_mh_execute_header, v130, v128, "failed to create recordID %s", v132, 0xCu);
        sub_10009A9E8(v134);

        (*v147)(v131, v133);
      }

      else
      {

        (*v147)(v26, v6);
      }

      return;
    }

    v35 = v24;
LABEL_16:
    v39 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v40 = v39 | (v35 << 6);
    v41 = (*(v143 + 48) + 16 * v40);
    v43 = *v41;
    v42 = v41[1];
    v44 = v142;
    v45 = v141;
    (*(v142 + 16))(v141, *(v143 + 56) + *(v142 + 72) * v40, v6);
    v46 = sub_100095820(&qword_100384A70, &qword_1002D73D8);
    v47 = *(v46 + 48);
    v48 = v152;
    *v152 = v43;
    *(v48 + 1) = v42;
    v38 = v48;
    (*(v44 + 32))(&v48[v47], v45, v6);
    (*(*(v46 - 8) + 56))(v38, 0, 1, v46);

LABEL_17:
    v49 = v150;
    sub_1000D1B4C(v38, v150, &qword_100384A68, &qword_1002D73D0);
    v50 = sub_100095820(&qword_100384A70, &qword_1002D73D8);
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
    {
      break;
    }

    v52 = *v49;
    v51 = v49[1];
    v26 = v155;
    (*v160)(v155, v49 + *(v50 + 48), v6);
    v53 = [objc_opt_self() fetchRequest];
    sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
    sub_100095820(&unk_100383140, &qword_1002D6BD0);
    v54 = swift_allocObject();
    *(v54 + 16) = v148;
    *(v54 + 56) = &type metadata for String;
    v55 = sub_10009FD4C();
    v156 = v52;
    *(v54 + 32) = v52;
    *(v54 + 40) = v51;
    *(v54 + 96) = &type metadata for String;
    *(v54 + 104) = v55;
    v56 = v158;
    v57 = v159;
    *(v54 + 64) = v55;
    *(v54 + 72) = v56;
    *(v54 + 80) = v57;
    v162 = v51;

    v58 = NSPredicate.init(format:_:)();
    [v53 setPredicate:v58];

    v164 = 0;
    v161 = v53;
    v59 = [v53 execute:&v164];
    v6 = v164;
    if (!v59)
    {
      v67 = v164;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v138 = 0;
      v64 = v153;
      v68 = v163;
      v6 = v157;
      if (v163)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    v60 = v59;
    sub_10009FDA0(0, &qword_1003846E0, off_100315888);
    v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v6;

    v63 = v163;
    if (v61 >> 62)
    {
      v92 = _CocoaArrayWrapper.endIndex.getter();
      v64 = v153;
      if (!v92)
      {
LABEL_37:

        v66 = 0;
        goto LABEL_38;
      }
    }

    else
    {
      v64 = v153;
      if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }
    }

    if ((v61 & 0xC000000000000001) != 0)
    {
      v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v65 = *(v61 + 32);
    }

    v66 = v65;

LABEL_38:
    v165 = v66;

    v68 = v66;
    v6 = v157;
    if (v68)
    {
LABEL_39:
      v163 = v68;

      if (qword_100390140 != -1)
      {
        swift_once();
      }

      v93 = type metadata accessor for Logger();
      sub_10009597C(v93, qword_100390148);
      v94 = *v154;
      v95 = v144;
      (*v154)(v144, v26, v6);
      v94(v64, v26, v6);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v96, v97))
      {
        LODWORD(v156) = v97;
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v164 = v99;
        *v98 = v137;
        v100 = [v163 recordID];
        v162 = v96;
        v139 = v99;
        if (v100)
        {
          v101 = v100;
          v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v104 = v103;
        }

        else
        {
          v104 = 0xE300000000000000;
          v102 = 7104878;
        }

        v105 = v144;
        v106 = sub_1000999E4(v102, v104, &v164);

        *(v98 + 4) = v106;
        *(v98 + 12) = 2080;
        v107 = [v163 uri];
        v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v110 = v109;

        v111 = sub_1000999E4(v108, v110, &v164);

        *(v98 + 14) = v111;
        *(v98 + 22) = 2080;
        sub_1000D24F0(&qword_1003846E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v112 = v105;
        v6 = v157;
        v113 = dispatch thunk of CustomStringConvertible.description.getter();
        v115 = v114;
        v28 = v147;
        v116 = *v147;
        (*v147)(v112, v6);
        v117 = sub_1000999E4(v113, v115, &v164);

        *(v98 + 24) = v117;
        *(v98 + 32) = 2048;
        v118 = v153;
        Date.timeIntervalSince1970.getter();
        v120 = v119;
        v116(v118, v6);
        *(v98 + 34) = v120;
        v121 = v162;
        _os_log_impl(&_mh_execute_header, v162, v156, "setOptIn: updating existing record %s %s %s[%f", v98, 0x2Au);
        swift_arrayDestroy();

        v30 = v163;
        v26 = v155;
      }

      else
      {

        v28 = v147;
        v29 = *v147;
        (*v147)(v64, v6);
        v29(v95, v6);
        v30 = v163;
      }

      goto LABEL_5;
    }

LABEL_26:
    v69 = (*(*v140 + 240))(v156, v162, v158, v159);
    if (!v69)
    {
      if (qword_100390140 == -1)
      {
        goto LABEL_51;
      }

      goto LABEL_57;
    }

    v70 = v69;
    if (qword_100390140 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_10009597C(v71, qword_100390148);
    v72 = static os_log_type_t.info.getter();
    v73 = v70;
    v74 = Logger.logObject.getter();

    v75 = os_log_type_enabled(v74, v72);
    v139 = v73;
    if (v75)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v164 = v77;
      *v76 = v136;
      v78 = [v73 recordName];
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;

      v82 = sub_1000999E4(v79, v81, &v164);
      v26 = v155;

      *(v76 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v74, v72, "creating new record %s", v76, 0xCu);
      sub_10009A9E8(v77);
    }

    v83 = (*(*v140 + 152))();
    v84 = [objc_allocWithZone(CloudOptIn) initWithContext:v83];

    v165 = v84;
    if (!v84)
    {

      (*v147)(v26, v157);

      return;
    }

    v85 = v84;
    v86 = v139;
    v87 = [v139 recordName];
    v6 = v157;
    if (!v87)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = String._bridgeToObjectiveC()();
    }

    v163 = v84;
    [v85 setRecordID:{v87, v136}];

    v88 = v85;
    v89 = String._bridgeToObjectiveC()();
    [v88 setApplication:v89];

    v30 = v88;
    v90 = String._bridgeToObjectiveC()();

    [v30 setUri:v90];

    v28 = v147;
LABEL_5:
    v31 = v30;
    v32 = String._bridgeToObjectiveC()();
    [v31 setCkstate:v32];

    sub_10009FDA0(0, &qword_100384440, NSNumber_ptr);
    isa = NSNumber.init(integerLiteral:)(v146 & 1).super.super.isa;
    [v31 setState:isa];

    v34 = Date._bridgeToObjectiveC()().super.isa;
    [v31 setSmtTimestamp:v34];

    (*v28)(v26, v6);
    v25 = v145;
    v26 = &qword_1002D73D8;
  }

  v123 = (*(*v140 + 152))(v122);
  v164 = 0;
  v124 = [v123 save:&v164];

  v125 = v164;
  if ((v124 & 1) == 0)
  {
    v126 = v125;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000C6828(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = v6;
  v40 = a6;
  v41 = a5;
  v37 = a1;
  v38 = a4;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10009597C(v15, qword_100390148);
  v16 = *(v12 + 16);
  v39 = a3;
  v16(v14, a3, v11);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36 = v7;
    v20 = v19;
    v35 = swift_slowAlloc();
    v42 = v35;
    *v20 = 136315906;
    v34 = v18;
    v21 = v37;
    *(v20 + 4) = sub_1000999E4(v37, a2, &v42);
    *(v20 + 12) = 2080;
    sub_1000D24F0(&qword_1003846E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v33 = v17;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = a2;
    v25 = v24;
    (*(v12 + 8))(v14, v11);
    v26 = sub_1000999E4(v22, v25, &v42);
    a2 = v23;
    LOBYTE(v22) = v40;
    v27 = v41;

    *(v20 + 14) = v26;
    *(v20 + 22) = 2080;
    v28 = v38;
    *(v20 + 24) = sub_1000999E4(v38, v27, &v42);
    *(v20 + 32) = 1024;
    *(v20 + 34) = v22 & 1;
    v29 = v33;
    _os_log_impl(&_mh_execute_header, v33, v34, "adding optin record %s:%s[%s] to %{BOOL}d", v20, 0x26u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v14, v11);
    v21 = v37;
    v28 = v38;
  }

  v30 = (*(*v8 + 152))();
  __chkstk_darwin(v30);
  *(&v32 - 8) = v21;
  *(&v32 - 7) = a2;
  v31 = v41;
  *(&v32 - 6) = v28;
  *(&v32 - 5) = v31;
  *(&v32 - 4) = v39;
  *(&v32 - 3) = v8;
  *(&v32 - 16) = v40 & 1;
  NSManagedObjectContext.performAndWait<A>(_:)();
}

void sub_1000C6C0C(void *a1, char *a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v206 = a6;
  v202 = a7;
  v208 = a5;
  v212 = a3;
  v211 = type metadata accessor for Date();
  v213 = *(v211 - 8);
  v10 = __chkstk_darwin(v211);
  v189 = &v188 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v192 = &v188 - v13;
  v14 = __chkstk_darwin(v12);
  v201 = &v188 - v15;
  v16 = __chkstk_darwin(v14);
  v188 = &v188 - v17;
  v18 = __chkstk_darwin(v16);
  v200 = &v188 - v19;
  __chkstk_darwin(v18);
  v199 = &v188 - v20;
  v21 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v22 = __chkstk_darwin(v21 - 8);
  v193 = &v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v195 = &v188 - v25;
  v26 = __chkstk_darwin(v24);
  v194 = &v188 - v27;
  v28 = __chkstk_darwin(v26);
  v190 = &v188 - v29;
  v30 = __chkstk_darwin(v28);
  v191 = &v188 - v31;
  __chkstk_darwin(v30);
  v210 = (&v188 - v32);
  v198 = objc_opt_self();
  v33 = [v198 fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  v197 = sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v34 = swift_allocObject();
  v196 = xmmword_1002D4790;
  *(v34 + 16) = xmmword_1002D4790;
  *(v34 + 56) = &type metadata for String;
  v35 = sub_10009FD4C();
  v205 = a1;
  *(v34 + 32) = a1;
  *(v34 + 40) = a2;
  *(v34 + 96) = &type metadata for String;
  *(v34 + 104) = v35;
  v36 = v212;
  *(v34 + 64) = v35;
  *(v34 + 72) = v36;
  *(v34 + 80) = a4;
  v203 = a2;

  v209 = a4;

  v37 = NSPredicate.init(format:_:)();
  v38 = &selRef_setInitializedComplete_;
  [v33 setPredicate:v37];

  v215 = 0;
  v204 = v33;
  v39 = [v33 execute:&v215];
  v40 = v215;
  if (!v39)
  {
    v63 = v215;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v207 = 0;
    goto LABEL_15;
  }

  v41 = v39;
  sub_10009FDA0(0, &qword_1003846E0, off_100315888);
  v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v40;

  if (v42 >> 62)
  {
    v44 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v200;
  v46 = v199;
  if (!v44)
  {

LABEL_15:
    v199 = *(v213 + 56);
    v194 = (v213 + 56);
    (v199)(v210, 1, 1, v211);
    v64 = [v198 fetchRequest];
    v65 = swift_allocObject();
    *(v65 + 16) = v196;
    *(v65 + 56) = &type metadata for String;
    *(v65 + 64) = v35;
    *(v65 + 32) = v212;
    *(v65 + 40) = v209;
    *(v65 + 96) = &type metadata for Bool;
    *(v65 + 104) = &protocol witness table for Bool;
    *(v65 + 72) = v202 & 1;

    v66 = NSPredicate.init(format:_:)();
    [v64 setPredicate:v66];

    sub_100095820(&qword_100384A50, &qword_1002D7650);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1002D6360;
    v68 = objc_allocWithZone(NSSortDescriptor);
    v69 = String._bridgeToObjectiveC()();
    v70 = [v68 initWithKey:v69 ascending:0];

    *(v67 + 32) = v70;
    sub_10009FDA0(0, &unk_100384A58, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v64 setSortDescriptors:isa];

    sub_100095820(&qword_100383F98, &qword_1002D6B40);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1002D47B0;
    *(v72 + 56) = &type metadata for String;
    strcpy((v72 + 32), "smtTimestamp");
    *(v72 + 45) = 0;
    *(v72 + 46) = -5120;
    v73 = Array._bridgeToObjectiveC()().super.isa;

    [v64 setPropertiesToFetch:v73];

    [v64 setFetchLimit:1];
    v215 = 0;
    v200 = v64;
    v74 = [v64 execute:&v215];
    v75 = v215;
    if (!v74)
    {
      v87 = v215;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v207 = 0;
      v79 = v211;
      v80 = v213;
      v47 = v203;
      a2 = v201;
      goto LABEL_29;
    }

    v76 = v74;
    sub_10009FDA0(0, &qword_1003846E0, off_100315888);
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v75;

    v47 = v203;
    a2 = v201;
    if (!(v38 >> 62))
    {
      v78 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_18;
    }

LABEL_72:
    v78 = _CocoaArrayWrapper.endIndex.getter();
LABEL_18:
    v79 = v211;
    v80 = v213;
    v81 = v195;
    if (v78)
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_75;
        }

        v82 = *(v38 + 32);
      }

      v83 = v82;

      v84 = [v83 smtTimestamp];
      if (v84)
      {
        v85 = v84;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v86 = 0;
        v83 = v85;
        v81 = v195;
      }

      else
      {
        v86 = 1;
      }

      (v199)(v81, v86, 1, v79);
      sub_1000BECD4(v81, v210);
    }

    else
    {
    }

LABEL_29:
    v91 = v206;
    v92 = (*(*v206 + 240))(v205, v47, v212, v209);
    if (v92)
    {
      v93 = v92;
      if (qword_100390140 != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      sub_10009597C(v94, qword_100390148);
      v95 = static os_log_type_t.info.getter();
      v96 = *(v80 + 16);
      v97 = v208;
      v96(a2, v208, v79);
      v98 = v192;
      v197 = v96;
      v96(v192, v97, v79);
      v99 = v93;
      v100 = Logger.logObject.getter();

      LODWORD(v198) = v95;
      v101 = os_log_type_enabled(v100, v95);
      v102 = v79;
      v199 = v99;
      if (v101)
      {
        *&v196 = v100;
        v103 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        v215 = v195;
        *v103 = 136315906;
        v104 = [v99 recordName];
        v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v107 = v106;

        v108 = sub_1000999E4(v105, v107, &v215);

        *(v103 + 4) = v108;
        *(v103 + 12) = 2080;
        sub_1000D24F0(&qword_1003846E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v109 = v201;
        v110 = dispatch thunk of CustomStringConvertible.description.getter();
        v112 = v111;
        v113 = *(v213 + 8);
        v113(v109, v102);
        v114 = sub_1000999E4(v110, v112, &v215);

        *(v103 + 14) = v114;
        *(v103 + 22) = 2048;
        Date.timeIntervalSince1970.getter();
        v116 = v115;
        v113(v98, v102);
        *(v103 + 24) = v116;
        *(v103 + 32) = 2080;
        v117 = v210;
        swift_beginAccess();
        if ((*(v213 + 48))(v117, 1, v102))
        {
          v118 = 0xE100000000000000;
          v119 = 45;
        }

        else
        {
          v164 = v188;
          v197(v188, v117, v102);
          v165 = Date.description.getter();
          v118 = v166;
          v113(v164, v102);
          v119 = v165;
        }

        v91 = v206;
        v167 = sub_1000999E4(v119, v118, &v215);

        *(v103 + 34) = v167;
        v168 = v196;
        _os_log_impl(&_mh_execute_header, v196, v198, "creating new record %s %s[%f] newest %s", v103, 0x2Au);
        swift_arrayDestroy();

        v126 = v213;
      }

      else
      {

        v126 = v213;
        v113 = *(v213 + 8);
        v113(v98, v102);
        v127 = (v113)(v201, v102);
      }

      v169 = *(*v91 + 152);
      v170 = (v169)(v127);
      v171 = [objc_allocWithZone(CloudOptIn) initWithContext:v170];

      v172 = [v199 recordName];
      if (!v172)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v172 = String._bridgeToObjectiveC()();
      }

      [v171 setRecordID:v172];

      v173 = String._bridgeToObjectiveC()();
      [v171 setUri:v173];

      v174 = String._bridgeToObjectiveC()();
      [v171 setApplication:v174];

      sub_10009FDA0(0, &qword_100384440, NSNumber_ptr);
      v175 = NSNumber.init(integerLiteral:)(v202 & 1).super.super.isa;
      [v171 setState:v175];

      v176 = v210;
      swift_beginAccess();
      v177 = v193;
      sub_1000AB284(v176, v193);
      v178 = v211;
      if ((*(v126 + 48))(v177, 1, v211) == 1)
      {
        sub_1000057C4(v177, &qword_100383FB0, &unk_1002D6690);
      }

      else
      {
        v179 = v189;
        (*(v126 + 32))(v189, v177, v178);
        if (static Date.> infix(_:_:)())
        {
          v180 = v179;
          v181 = Date._bridgeToObjectiveC()().super.isa;
          [v171 setSmtTimestamp:v181];

          v113(v180, v178);
LABEL_64:
          v183 = String._bridgeToObjectiveC()();
          [v171 setCkstate:v183];

          v184 = v169();
          v214 = 0;
          v185 = [v184 save:&v214];

          if (!v185)
          {
            v187 = v214;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            sub_1000057C4(v210, &qword_100383FB0, &unk_1002D6690);
            return;
          }

          v186 = v214;

          v125 = &v216;
LABEL_66:

          v157 = v210;
          goto LABEL_67;
        }

        v113(v179, v178);
      }

      v182 = Date._bridgeToObjectiveC()().super.isa;
      [v171 setSmtTimestamp:v182];

      goto LABEL_64;
    }

    if (qword_100390140 == -1)
    {
LABEL_36:
      v120 = type metadata accessor for Logger();
      sub_10009597C(v120, qword_100390148);
      v121 = static os_log_type_t.error.getter();

      v122 = Logger.logObject.getter();

      if (os_log_type_enabled(v122, v121))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v215 = v124;
        *v123 = 136315138;
        *(v123 + 4) = sub_1000999E4(v205, v47, &v215);
        _os_log_impl(&_mh_execute_header, v122, v121, "failed to create recordID %s", v123, 0xCu);
        sub_10009A9E8(v124);
      }

      v125 = &v217;
      goto LABEL_66;
    }

LABEL_75:
    swift_once();
    goto LABEL_36;
  }

  if ((v42 & 0xC000000000000001) != 0)
  {
    v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v47 = v213;
    goto LABEL_8;
  }

  v47 = v213;
  if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_72;
  }

  v48 = *(v42 + 32);
LABEL_8:

  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_10009597C(v49, qword_100390148);
  v50 = *(v47 + 16);
  v51 = v208;
  v52 = v211;
  v50(v46, v208, v211);
  v212 = v50;
  v50(v45, v51, v52);
  v53 = v48;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  v56 = &stru_10036E000;
  if (os_log_type_enabled(v54, v55))
  {
    v210 = v54;
    v57 = swift_slowAlloc();
    v205 = swift_slowAlloc();
    v215 = v205;
    *v57 = 136316162;
    v58 = [v53 recordID];
    LODWORD(v209) = v55;
    if (v58)
    {
      v59 = v58;
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;
    }

    else
    {
      v62 = 0xE300000000000000;
      v60 = 7104878;
    }

    v128 = sub_1000999E4(v60, v62, &v215);

    *(v57 + 4) = v128;
    *(v57 + 12) = 2080;
    v129 = [v53 uri];
    v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v131;

    v133 = sub_1000999E4(v130, v132, &v215);

    *(v57 + 14) = v133;
    *(v57 + 22) = 2080;
    sub_1000D24F0(&qword_1003846E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v52 = v211;
    v134 = dispatch thunk of CustomStringConvertible.description.getter();
    v135 = v46;
    v137 = v136;
    v138 = *(v213 + 8);
    v138(v135, v52);
    v139 = sub_1000999E4(v134, v137, &v215);

    *(v57 + 24) = v139;
    *(v57 + 32) = 2048;
    Date.timeIntervalSince1970.getter();
    v141 = v140;
    v138(v45, v52);
    *(v57 + 34) = v141;
    *(v57 + 42) = 2080;
    v142 = [v53 smtTimestamp];
    if (v142)
    {
      v143 = v190;
      v144 = v142;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v145 = 0;
      v146 = v191;
    }

    else
    {
      v145 = 1;
      v146 = v191;
      v143 = v190;
    }

    v147 = v213;
    (*(v213 + 56))(v143, v145, 1, v52);
    sub_1000D1B4C(v143, v146, &qword_100383FB0, &unk_1002D6690);
    if ((*(v147 + 48))(v146, 1, v52))
    {
      sub_1000057C4(v146, &qword_100383FB0, &unk_1002D6690);
      v148 = 0xE100000000000000;
      v149 = 45;
    }

    else
    {
      v150 = v188;
      v212(v188, v146, v52);
      sub_1000057C4(v146, &qword_100383FB0, &unk_1002D6690);
      v151 = Date.description.getter();
      v148 = v152;
      v138(v150, v52);
      v149 = v151;
    }

    v89 = v206;
    v90 = v194;
    v153 = sub_1000999E4(v149, v148, &v215);

    *(v57 + 44) = v153;
    v154 = v210;
    _os_log_impl(&_mh_execute_header, v210, v209, "addOptIn: have existing record %s %s %s[%f] %s", v57, 0x34u);
    swift_arrayDestroy();

    v47 = v213;
    v56 = &stru_10036E000;
  }

  else
  {

    v88 = *(v47 + 8);
    v88(v45, v52);
    v88(v46, v52);
    v89 = v206;
    v90 = v194;
  }

  v155 = [v53 v56[201].attr];
  if (v155)
  {
    v156 = v155;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v47 + 56))(v90, 0, 1, v52);
    v157 = v90;
LABEL_67:
    sub_1000057C4(v157, &qword_100383FB0, &unk_1002D6690);
    return;
  }

  (*(v47 + 56))(v90, 1, 1, v52);
  sub_1000057C4(v90, &qword_100383FB0, &unk_1002D6690);
  v158 = Date._bridgeToObjectiveC()().super.isa;
  [v53 setSmtTimestamp:v158];

  v159 = String._bridgeToObjectiveC()();
  [v53 setCkstate:v159];

  v160 = (*(*v89 + 152))();
  v215 = 0;
  v161 = [v160 save:&v215];

  if (v161)
  {
    v162 = v215;
  }

  else
  {
    v163 = v215;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000C83B8(void *a1)
{
  v2 = v1;
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10009597C(v4, qword_100390148);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = [v5 recordID];
    v11 = [v10 recordName];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1000999E4(v12, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "merging cloud optin: %s", v8, 0xCu);
    sub_10009A9E8(v9);
  }

  v16 = (*(*v2 + 152))();
  __chkstk_darwin(v16);
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v18;
}

void sub_1000C85F0(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v150 = a3;
  v6 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v7 = __chkstk_darwin(v6 - 8);
  v143 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v144 = &v134 - v10;
  __chkstk_darwin(v9);
  v138 = (&v134 - v11);
  v12 = type metadata accessor for Date();
  v146 = *(v12 - 8);
  v147 = v12;
  v13 = __chkstk_darwin(v12);
  v139 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v137 = (&v134 - v15);
  v16 = sub_100095820(&unk_100384A30, &qword_1002D73C8);
  __chkstk_darwin(v16 - 8);
  v148 = &v134 - v17;
  v145 = type metadata accessor for CloudOptInData(0);
  v141 = *(v145 - 8);
  __chkstk_darwin(v145);
  v140 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1002D47B0;
  v151 = a1;
  v21 = [a1 recordID];
  v22 = [v21 recordName];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_10009FD4C();
  *(v20 + 32) = v23;
  *(v20 + 40) = v25;
  v26 = NSPredicate.init(format:_:)();
  [v19 setPredicate:v26];

  v153[0] = 0;
  v149 = v19;
  v27 = [v19 execute:v153];
  v28 = v153[0];
  if (v27)
  {
    v29 = v27;
    sub_10009FDA0(0, &qword_1003846E0, off_100315888);
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v28;

    if (v30 >> 62)
    {
      v32 = v3;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else
    {
      v32 = v3;
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_4:
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = v32;
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v33 = v32;
          v34 = *(v30 + 32);
        }

        v35 = v34;

        goto LABEL_15;
      }
    }
  }

  else
  {
    v36 = v153[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v32 = 0;
  }

  v38 = (*(*a2 + 152))(v37);
  v35 = [objc_allocWithZone(CloudOptIn) initWithContext:v38];

  if (!v35)
  {
    v52 = 0;
    v53 = v149;
    goto LABEL_51;
  }

  v33 = v32;
  v39 = [v151 recordID];
  v40 = [v39 recordName];

  if (!v40)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = String._bridgeToObjectiveC()();
  }

  [v35 setRecordID:v40];

LABEL_15:
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v41 = JSONDecoder.init()();
  v42 = [v151 encryptedValues];
  v43 = String._bridgeToObjectiveC()();
  v44 = [v42 objectForKeyedSubscript:v43];
  swift_unknownObjectRelease();

  v45 = &selRef_URIWithUnprefixedURI_;
  if (v44)
  {
    v152 = v44;
    sub_100095820(&qword_1003844B0, &qword_1002D6E00);
    v46 = v33;
    if (swift_dynamicCast())
    {
      v47 = v41;
      v48 = v153[0];
      v49 = v153[1];
      sub_1000D24F0(&unk_100384A40, type metadata accessor for CloudOptInData, &unk_1002D71D8);
      v50 = v148;
      v51 = v145;
      v142 = v47;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v46)
      {

        sub_1000956CC(v48, v49);
        (*(v141 + 56))(v50, 1, 1, v51);
        sub_1000057C4(v50, &unk_100384A30, &qword_1002D73C8);
        v148 = 0;
        v46 = 0;
        v41 = v142;
      }

      else
      {
        v135 = v49;
        v136 = v48;
        (*(v141 + 56))(v50, 0, 1, v51);
        v54 = v140;
        sub_1000D1AE8(v50, v140);
        v55 = String._bridgeToObjectiveC()();
        [v35 setUri:v55];

        v56 = v54[4];
        v57 = v54[5];
        v58 = String._bridgeToObjectiveC()();
        [v35 setApplication:v58];

        v59 = v54;
        v148 = (*(*a2 + 264))(v56, v57);
        if (*(v54 + 56) == 1)
        {
          [v35 setState:0];
        }

        else
        {
          v60 = [objc_allocWithZone(NSNumber) initWithInteger:v54[6]];
          [v35 setState:v60];
        }

        v62 = v146;
        v61 = v147;
        v63 = v138;
        v41 = v142;
        sub_1000AB284(v59 + *(v145 + 32), v138);
        v64 = &selRef_URIWithUnprefixedURI_;
        if ((*(v62 + 48))(v63, 1, v61) == 1)
        {
          sub_1000057C4(v63, &qword_100383FB0, &unk_1002D6690);
        }

        else
        {
          v65 = v137;
          (*(v62 + 32))(v137, v63, v61);
          isa = Date._bridgeToObjectiveC()().super.isa;
          [v35 setSmtTimestamp:isa];

          v67 = v65;
          v64 = &selRef_URIWithUnprefixedURI_;
          (*(v62 + 8))(v67, v61);
        }

        v68 = v145;
        if (*(v59 + *(v145 + 40) + 8))
        {
          v69 = String._bridgeToObjectiveC()();
          [v35 setSerialNumber:v69];
        }

        if (*(v59 + *(v68 + 36) + 8))
        {
          v70 = String._bridgeToObjectiveC()();
          [v35 setOsVersion:v70];
        }

        v71 = [v35 v64[203]];
        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v74 = v73;

        v75 = (*(*a2 + 216))(v153);
        v76 = v74;
        v45 = &selRef_URIWithUnprefixedURI_;
        sub_1000A971C(&v152, v72, v76);

        v77 = v75(v153, 0);
        v78 = (*(*a2 + 176))(v77);
        [v78 trigger];
        sub_1000956CC(v136, v135);

        sub_1000BF87C(v140);
      }
    }

    else
    {
      v148 = 0;
    }
  }

  else
  {
    v148 = 0;
    v46 = v33;
  }

  v79 = String._bridgeToObjectiveC()();
  [v35 setCkstate:v79];

  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  sub_10009597C(v80, qword_100390148);
  v81 = v35;
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v137 = v82;
    LODWORD(v141) = v83;
    v142 = v41;
    v145 = v46;
    v84 = v45;
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v153[0] = v140;
    *v85 = 136316162;
    v87 = [v81 uri];
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    v91 = sub_1000999E4(v88, v90, v153);

    *(v85 + 4) = v91;
    *(v85 + 12) = 2080;
    v92 = [v81 v84[203]];
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v96 = sub_1000999E4(v93, v95, v153);

    *(v85 + 14) = v96;
    *(v85 + 22) = 2112;
    v97 = [v81 state];
    *(v85 + 24) = v97;
    v138 = v86;
    *v86 = v97;
    *(v85 + 32) = 2080;
    v98 = [v81 smtTimestamp];
    if (v98)
    {
      v99 = v143;
      v100 = v98;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v101 = 0;
      v102 = v147;
    }

    else
    {
      v101 = 1;
      v102 = v147;
      v99 = v143;
    }

    v103 = v146;
    (*(v146 + 56))(v99, v101, 1, v102);
    v104 = v144;
    sub_1000D1B4C(v99, v144, &qword_100383FB0, &unk_1002D6690);
    v105 = (*(v103 + 48))(v104, 1, v102);
    v106 = v137;
    if (v105)
    {
      sub_1000057C4(v104, &qword_100383FB0, &unk_1002D6690);
      v107 = 0xE100000000000000;
      v108 = 45;
    }

    else
    {
      v109 = v139;
      (*(v103 + 16))(v139, v104, v102);
      sub_1000057C4(v104, &qword_100383FB0, &unk_1002D6690);
      v110 = Date.description.getter();
      v111 = v102;
      v108 = v110;
      v107 = v112;
      (*(v103 + 8))(v109, v111);
    }

    v113 = sub_1000999E4(v108, v107, v153);

    *(v85 + 34) = v113;
    *(v85 + 42) = 2080;
    v114 = [v81 recordID];
    if (v114)
    {
      v115 = v114;
      v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v118 = v117;
    }

    else
    {
      v118 = 0xEB00000000444964;
      v116 = 0x726F6365722D6F6ELL;
    }

    v119 = sub_1000999E4(v116, v118, v153);

    *(v85 + 44) = v119;
    _os_log_impl(&_mh_execute_header, v106, v141, "merged cloud optin: %s[%s] %@ %s %s", v85, 0x34u);
    sub_1000057C4(v138, &unk_100383290, &unk_1002D5BA0);

    swift_arrayDestroy();

    v45 = &selRef_URIWithUnprefixedURI_;
  }

  else
  {
  }

  v120 = (*(*a2 + 456))(v81, v151);
  v121 = (*(*a2 + 152))(v120);
  v153[0] = 0;
  v122 = [v121 save:v153];

  if (v122)
  {
    v123 = v153[0];
  }

  else
  {
    v124 = v153[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v125 = [v81 uri];
  v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v128 = v127;

  v129 = [v81 v45[203]];
  v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v132 = v131;

  v133 = v126;
  v53 = v148;
  (*(*a2 + 376))(v133, v128, v130, v132, v148);

  v52 = 1;
LABEL_51:

  *v150 = v52;
}

void sub_1000C9664(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = v5;
  v12 = (*(*v5 + 248))();
  if (!v12)
  {
    return;
  }

  if (v5[11] == a1 && v5[12] == a2)
  {
    goto LABEL_20;
  }

  v33 = v12;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    goto LABEL_19;
  }

  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10009597C(v14, qword_100390148);
  v33 = v33;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v32 = v16;
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v17 = 136315650;
    [v33 state];
    v18 = KTOptInGetString();
    log = v15;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_1000999E4(v19, v21, &v34);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1000999E4(a3, a4, &v34);
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_1000999E4(a1, a2, &v34);
    v15 = log;
    _os_log_impl(&_mh_execute_header, log, v32, "updating peer opt-in state to %s for %s for %s", v17, 0x20u);
    swift_arrayDestroy();
  }

  v23 = v6[8];
  if (!v23)
  {
LABEL_19:
    v12 = v33;
LABEL_20:

    return;
  }

  swift_unknownObjectRetain();
  v24 = sub_10014C080([v33 state]);
  sub_100095820(&qword_1003844C0, &qword_1002D6E08);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1002D47B0;
  *(v25 + 32) = a1;
  *(v25 + 40) = a2;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v27 = String._bridgeToObjectiveC()();
  [v23 setCachedPeerOptInState:v24 uris:isa application:v27];

  if (a5)
  {
    v28 = a5;
    v29 = [v28 state];
    if (v29 == [v33 state] || !sub_10014C080(objc_msgSend(v33, "state")))
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = String._bridgeToObjectiveC()();
      [v23 removeFailuresOnOptIn:v30];
      swift_unknownObjectRelease();
    }

    goto LABEL_19;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1000C9A78(void *a1)
{
  v3 = (*(*v1 + 152))();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000CFEB4;
  *(v5 + 24) = v4;
  v10[4] = sub_1000A040C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10009EB40;
  v10[3] = &unk_1003204F0;
  v6 = _Block_copy(v10);
  v7 = a1;

  [v3 performBlockAndWait:v6];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void *sub_1000C9C34()
{
  v9 = _swiftEmptyArrayStorage;
  v1 = (*(*v0 + 152))();
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000D0578;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_100320568;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

void *sub_1000C9DCC()
{
  v9 = _swiftEmptyArrayStorage;
  v1 = (*(*v0 + 152))();
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000D0590;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_1003205E0;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_1000C9F64()
{
  v9 = 0;
  v1 = (*(*v0 + 152))();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000D08F0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_100320658;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_1000CA0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*v3 + 152))();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000D0ADC;
  *(v9 + 24) = v8;
  v13[4] = sub_1000A0E98;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10009EB40;
  v13[3] = &unk_1003206D0;
  v10 = _Block_copy(v13);

  [v7 performBlockAndWait:v10];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000CA29C(void *a1)
{
  v12 = 0;
  v3 = (*(*v1 + 152))();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = &v12;
  v4[4] = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000D1134;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_100320748;
  v6 = _Block_copy(aBlock);
  v7 = a1;

  [v3 performBlockAndWait:v6];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

objc_class *sub_1000CA440(void *a1)
{
  v2 = v1;
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v4 - 8);
  v6 = &v62 - v5;
  v7 = type metadata accessor for CloudOptInData(0);
  __chkstk_darwin(v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 ckrecord];
  if (v10)
  {
    v11 = v10;
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  v15 = type metadata accessor for KTCloudRecords();
  v16 = (*(v15 + 456))(v12, v14);
  sub_10009A9D4(v12, v14);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    result = (*(*v2 + 448))(a1);
    if (!result)
    {
      return result;
    }

    v19.super.isa = result;
    sub_10009FDA0(0, &qword_1003851B0, CKRecord_ptr);
    v20 = v2[2];
    v21 = v2[3];

    v22._countAndFlagsBits = v20;
    v22._object = v21;
    v17 = CKRecord.init(recordType:recordID:)(v22, v19).super.isa;
    v16 = 0;
  }

  v23 = v16;
  v24 = [(objc_class *)v17 recordID];

  v25 = [v24 recordName];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v27;
  v69 = v26;

  v28 = [a1 uri];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = [a1 application];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v34;
  v66 = v33;

  v35 = [a1 state];
  v36 = v35;
  if (v35)
  {
    v64 = [v35 integerValue];
  }

  else
  {
    v64 = 0;
  }

  v37 = [a1 smtTimestamp];
  if (v37)
  {
    v38 = v37;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = type metadata accessor for Date();
    (*(*(v39 - 8) + 56))(v6, 0, 1, v39);
  }

  else
  {
    v40 = type metadata accessor for Date();
    (*(*(v40 - 8) + 56))(v6, 1, 1, v40);
  }

  v41 = v2[7];
  v67 = v17;
  if (v41)
  {
    v63 = v7;
    v42 = v6;
    v43 = v31;
    v44 = v29;
    v45 = [v41 osVersion];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49 = [v41 serialNumber];
    if (v49)
    {
      v50 = v49;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;
    }

    else
    {
      v41 = 0;
      v52 = 0;
    }

    v29 = v44;
    v31 = v43;
    v6 = v42;
    v7 = v63;
  }

  else
  {
    v52 = 0;
    v46 = 0;
    v48 = 0;
  }

  v53 = v68;
  *v9 = v69;
  *(v9 + 1) = v53;
  *(v9 + 2) = v29;
  *(v9 + 3) = v31;
  v54 = v65;
  *(v9 + 4) = v66;
  *(v9 + 5) = v54;
  *(v9 + 6) = v64;
  v9[56] = v36 == 0;
  sub_1000D1B4C(v6, &v9[v7[8]], &qword_100383FB0, &unk_1002D6690);
  v55 = &v9[v7[9]];
  *v55 = v46;
  v55[1] = v48;
  v56 = &v9[v7[10]];
  *v56 = v41;
  *(v56 + 1) = v52;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000D24F0(&qword_1003846F0, type metadata accessor for CloudOptInData, &unk_1002D7200);
  v57 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v58 = v67;
  v60 = v59;
  v61 = [(objc_class *)v67 encryptedValues];
  swift_getObjectType();
  v72 = &type metadata for Data;
  v73 = &protocol witness table for Data;
  v70 = v57;
  v71 = v60;
  sub_100002D78(v57, v60);
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();

  sub_1000956CC(v57, v60);
  sub_1000BF87C(v9);
  return v58;
}

CKRecordID sub_1000CA9DC(void *a1)
{
  v3 = [a1 recordID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
    v8 = v1[5];
    v9._countAndFlagsBits = v5;
    v9._object = v7;
    return CKRecordID.init(recordName:zoneID:)(v9, v8);
  }

  else
  {
    v11 = [a1 uri];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = [a1 application];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = (*(*v1 + 30))(v12, v14, v16, v18);

    return v19;
  }
}

uint64_t sub_1000CAB18()
{
  v1 = (*(*v0 + 152))();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1000D16E0;
  *(v2 + 24) = v0;
  v5[4] = sub_1000A0E98;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10009EB40;
  v5[3] = &unk_100320798;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait:v3];

  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

id *sub_1000CAC7C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1000CACDC()
{
  sub_1000CAC7C();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_1000CAD10()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1000CB090(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1000CB0CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095820(&unk_100384AB0, &unk_1002DCEE0);
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

void *sub_1000CB1D0(uint64_t a1, uint64_t a2)
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

  sub_100095820(&qword_100384A50, &qword_1002D7650);
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

uint64_t sub_1000CB258(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000CD87C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1000CB2D4(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1000CB2D4(uint64_t *a1)
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
        sub_10009FDA0(0, &qword_100384AA0, KTOptInState_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1000CB880(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1000CB3E8(0, v2, 1, a1);
  }
}

void sub_1000CB3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v9 = __chkstk_darwin(v8 - 8);
  v55 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v46 - v11;
  v13 = type metadata accessor for Date();
  v14 = __chkstk_darwin(v13);
  v60 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v57 = &v46 - v17;
  __chkstk_darwin(v16);
  v51 = &v46 - v19;
  v47 = a2;
  if (a3 != a2)
  {
    v56 = (v18 + 32);
    v20 = *a4;
    v59 = (v18 + 56);
    v52 = (v18 + 48);
    v53 = (v18 + 8);
    v54 = v20;
    v21 = v20 + 8 * a3 - 8;
    v22 = a1 - a3;
LABEL_5:
    v49 = v21;
    v50 = a3;
    v23 = *(v54 + 8 * a3);
    v48 = v22;
    v24 = v51;
    while (1)
    {
      v25 = *v21;
      v26 = v23;
      v61 = v25;
      v58 = v26;
      v27 = [v26 smtTimestamp];
      if (v27)
      {
        v28 = v27;
        v29 = v57;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v30 = *v56;
        (*v56)(v12, v29, v13);
        v31 = *v59;
        (*v59)(v12, 0, 1, v13);
        v30(v24, v12, v13);
      }

      else
      {
        v31 = *v59;
        (*v59)(v12, 1, 1, v13);
        static Date.distantPast.getter();
        if ((*v52)(v12, 1, v13) != 1)
        {
          sub_1000057C4(v12, &qword_100383FB0, &unk_1002D6690);
        }
      }

      v32 = [v61 smtTimestamp];
      if (v32)
      {
        v33 = v57;
        v34 = v32;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = *v56;
        v36 = v12;
        v37 = v55;
        v38 = v33;
        v24 = v51;
        (*v56)(v55, v38, v13);
        v31(v37, 0, 1, v13);
        v39 = v37;
        v12 = v36;
        v35(v60, v39, v13);
      }

      else
      {
        v40 = v55;
        v31(v55, 1, 1, v13);
        static Date.distantPast.getter();
        if ((*v52)(v40, 1, v13) != 1)
        {
          sub_1000057C4(v55, &qword_100383FB0, &unk_1002D6690);
        }
      }

      v41 = v60;
      v42 = static Date.< infix(_:_:)();
      v43 = *v53;
      (*v53)(v41, v13);
      v43(v24, v13);

      if ((v42 & 1) == 0)
      {
LABEL_4:
        a3 = v50 + 1;
        v21 = v49 + 8;
        v22 = v48 - 1;
        if (v50 + 1 == v47)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v54)
      {
        break;
      }

      v44 = *v21;
      v23 = *(v21 + 8);
      *v21 = v23;
      *(v21 + 8) = v44;
      v21 -= 8;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1000CB880(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v147 = a1;
  v8 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v9 = __chkstk_darwin(v8 - 8);
  v164 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v161 = &v143 - v12;
  v13 = __chkstk_darwin(v11);
  v154 = &v143 - v14;
  __chkstk_darwin(v13);
  v153 = &v143 - v15;
  v16 = type metadata accessor for Date();
  v17 = __chkstk_darwin(v16);
  v18 = __chkstk_darwin(v17);
  v168 = &v143 - v19;
  v20 = __chkstk_darwin(v18);
  v152 = &v143 - v21;
  v22 = __chkstk_darwin(v20);
  v166 = &v143 - v23;
  __chkstk_darwin(v22);
  v157 = &v143 - v26;
  v155 = a3;
  v27 = *(a3 + 8);
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_108:
    a3 = *v147;
    if (!*v147)
    {
      goto LABEL_149;
    }

    a4 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_143;
    }

    v138 = a4;
LABEL_111:
    v172 = v138;
    a4 = *(v138 + 2);
    if (a4 >= 2)
    {
      while (*v155)
      {
        v139 = *&v138[16 * a4];
        v140 = v138;
        v141 = *&v138[16 * a4 + 24];
        sub_1000CC604((*v155 + 8 * v139), (*v155 + 8 * *&v138[16 * a4 + 16]), (*v155 + 8 * v141), a3);
        if (v5)
        {
          goto LABEL_119;
        }

        if (v141 < v139)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = sub_1000CD004(v140);
        }

        if (a4 - 2 >= *(v140 + 2))
        {
          goto LABEL_137;
        }

        v142 = &v140[16 * a4];
        *v142 = v139;
        *(v142 + 1) = v141;
        v172 = v140;
        sub_1000CCF78(a4 - 1);
        v138 = v172;
        a4 = *(v172 + 2);
        if (a4 <= 1)
        {
          goto LABEL_119;
        }
      }

      goto LABEL_147;
    }

LABEL_119:

    return;
  }

  v144 = a4;
  v28 = 0;
  v165 = (v24 + 32);
  v169 = (v24 + 56);
  v158 = (v24 + 48);
  v29 = _swiftEmptyArrayStorage;
  v163 = (v24 + 8);
  v159 = v16;
  v160 = v25;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    if (v28 + 1 < v27)
    {
      v146 = v29;
      a4 = *v155;
      v32 = *(*v155 + 8 * v31);
      v170 = *(*v155 + 8 * v28);
      v33 = v170;
      v171 = v32;
      v34 = v32;
      a3 = v33;
      LODWORD(v162) = sub_1000C0EA4(&v171, &v170);
      if (v5)
      {

        return;
      }

      v35 = v28 + 2;
      v145 = v28;
      v150 = 8 * v28;
      v36 = (a4 + 8 * v28 + 16);
      v151 = v27;
      while (v27 != v35)
      {
        v156 = v5;
        v44 = *(v36 - 1);
        v45 = *v36;
        v46 = v44;
        v167 = v45;
        v47 = [v45 smtTimestamp];
        if (v47)
        {
          v48 = v47;
          v49 = v166;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v50 = *v165;
          v51 = v153;
          (*v165)(v153, v49, v16);
          v52 = *v169;
          (*v169)(v51, 0, 1, v16);
          (v50)(v157, v51, v16);
        }

        else
        {
          v52 = *v169;
          v53 = v153;
          (*v169)(v153, 1, 1, v16);
          static Date.distantPast.getter();
          if ((*v158)(v53, 1, v16) != 1)
          {
            sub_1000057C4(v53, &qword_100383FB0, &unk_1002D6690);
          }
        }

        v54 = [v46 smtTimestamp];
        if (v54)
        {
          v37 = v166;
          v38 = v54;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v39 = *v165;
          v40 = v154;
          (*v165)(v154, v37, v16);
          v52(v40, 0, 1, v16);
          v41 = v152;
          (v39)(v152, v40, v16);
        }

        else
        {
          v55 = v154;
          v52(v154, 1, 1, v16);
          v41 = v152;
          static Date.distantPast.getter();
          if ((*v158)(v55, 1, v16) != 1)
          {
            sub_1000057C4(v154, &qword_100383FB0, &unk_1002D6690);
          }
        }

        v42 = v157;
        a4 = static Date.< infix(_:_:)();
        a3 = v163;
        v43 = *v163;
        (*v163)(v41, v16);
        v43(v42, v16);

        ++v35;
        ++v36;
        v5 = v156;
        v27 = v151;
        if ((v162 ^ a4))
        {
          v27 = v35 - 1;
          break;
        }
      }

      v29 = v146;
      v30 = v145;
      v56 = v150;
      if (v162)
      {
        if (v27 < v145)
        {
          goto LABEL_142;
        }

        if (v145 < v27)
        {
          v57 = 8 * v27 - 8;
          v58 = v27;
          v59 = v145;
          do
          {
            if (v59 != --v58)
            {
              v60 = *v155;
              if (!*v155)
              {
                goto LABEL_146;
              }

              v61 = *(v60 + v56);
              *(v60 + v56) = *(v60 + v57);
              *(v60 + v57) = v61;
            }

            ++v59;
            v57 -= 8;
            v56 += 8;
          }

          while (v59 < v58);
        }
      }

      v31 = v27;
    }

    v62 = v155[1];
    if (v31 >= v62)
    {
      v28 = v31;
      if (v31 < v30)
      {
        goto LABEL_138;
      }

      goto LABEL_38;
    }

    v63 = v31;
    v81 = __OFSUB__(v31, v30);
    v64 = v31 - v30;
    if (v81)
    {
      goto LABEL_139;
    }

    if (v64 < v144)
    {
      v65 = v30 + v144;
      if (__OFADD__(v30, v144))
      {
        goto LABEL_140;
      }

      if (v65 >= v62)
      {
        v65 = v155[1];
      }

      if (v65 < v30)
      {
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        v138 = sub_1000CD004(a4);
        goto LABEL_111;
      }

      if (v63 != v65)
      {
        break;
      }
    }

    v28 = v63;
    if (v63 < v30)
    {
      goto LABEL_138;
    }

LABEL_38:
    v66 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v29 = v66;
    }

    else
    {
      v29 = sub_1000CB0CC(0, *(v66 + 2) + 1, 1, v66);
    }

    a3 = *(v29 + 2);
    v67 = *(v29 + 3);
    v68 = a3 + 1;
    if (a3 >= v67 >> 1)
    {
      v29 = sub_1000CB0CC((v67 > 1), a3 + 1, 1, v29);
    }

    *(v29 + 2) = v68;
    v69 = &v29[16 * a3];
    *(v69 + 4) = v30;
    *(v69 + 5) = v28;
    v70 = *v147;
    if (!*v147)
    {
      goto LABEL_148;
    }

    if (a3)
    {
      while (1)
      {
        a3 = v68 - 1;
        if (v68 >= 4)
        {
          break;
        }

        if (v68 == 3)
        {
          v71 = *(v29 + 4);
          v72 = *(v29 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_57:
          if (v74)
          {
            goto LABEL_127;
          }

          v87 = &v29[16 * v68];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_130;
          }

          v93 = &v29[16 * a3 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_134;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              a3 = v68 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v97 = &v29[16 * v68];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_71:
        if (v92)
        {
          goto LABEL_129;
        }

        v100 = &v29[16 * a3];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_132;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_78:
        a4 = a3 - 1;
        if (a3 - 1 >= v68)
        {
          __break(1u);
LABEL_123:
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v155)
        {
          goto LABEL_145;
        }

        v108 = v29;
        v109 = *&v29[16 * a4 + 32];
        v110 = *&v29[16 * a3 + 40];
        sub_1000CC604((*v155 + 8 * v109), (*v155 + 8 * *&v29[16 * a3 + 32]), (*v155 + 8 * v110), v70);
        if (v5)
        {
          goto LABEL_119;
        }

        if (v110 < v109)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_1000CD004(v108);
        }

        if (a4 >= *(v108 + 2))
        {
          goto LABEL_124;
        }

        v111 = &v108[16 * a4];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        v172 = v108;
        a4 = &v172;
        sub_1000CCF78(a3);
        v29 = v172;
        v68 = *(v172 + 2);
        if (v68 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v29[16 * v68 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_125;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_126;
      }

      v82 = &v29[16 * v68];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_128;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_131;
      }

      if (v86 >= v78)
      {
        v104 = &v29[16 * a3 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_135;
        }

        if (v73 < v107)
        {
          a3 = v68 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v27 = v155[1];
    if (v28 >= v27)
    {
      goto LABEL_108;
    }
  }

  v146 = v29;
  v156 = v5;
  v162 = *v155;
  v112 = v162 + 8 * v63 - 8;
  v145 = v30;
  v113 = v30 - v63;
  v148 = v65;
LABEL_89:
  v151 = v63;
  v114 = *(v162 + 8 * v63);
  v149 = v113;
  v150 = v112;
  while (1)
  {
    v115 = *v112;
    v116 = v114;
    v117 = v115;
    v167 = v116;
    v118 = [v116 smtTimestamp];
    if (v118)
    {
      v119 = v166;
      v120 = v118;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v121 = *v165;
      v122 = v161;
      (*v165)(v161, v119, v16);
      v123 = *v169;
      (*v169)(v122, 0, 1, v16);
      (v121)(v168, v122, v16);
    }

    else
    {
      v123 = *v169;
      v124 = v161;
      (*v169)(v161, 1, 1, v16);
      static Date.distantPast.getter();
      if ((*v158)(v124, 1, v16) != 1)
      {
        sub_1000057C4(v124, &qword_100383FB0, &unk_1002D6690);
      }
    }

    v125 = [v117 smtTimestamp];
    if (v125)
    {
      v126 = v166;
      v127 = v125;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v128 = v164;
      v129 = *v165;
      v130 = v126;
      v131 = v159;
      (*v165)(v164, v130, v159);
      v123(v128, 0, 1, v131);
      v132 = v160;
      v129();
      v16 = v131;
    }

    else
    {
      v133 = v164;
      v16 = v159;
      v123(v164, 1, 1, v159);
      v132 = v160;
      static Date.distantPast.getter();
      if ((*v158)(v133, 1, v16) != 1)
      {
        sub_1000057C4(v164, &qword_100383FB0, &unk_1002D6690);
      }
    }

    v134 = v168;
    a4 = static Date.< infix(_:_:)();
    a3 = v163;
    v135 = *v163;
    (*v163)(v132, v16);
    v135(v134, v16);

    if ((a4 & 1) == 0)
    {
LABEL_88:
      v63 = v151 + 1;
      v112 = v150 + 8;
      v113 = v149 - 1;
      if (v151 + 1 != v148)
      {
        goto LABEL_89;
      }

      v28 = v148;
      v5 = v156;
      v29 = v146;
      v30 = v145;
      if (v148 < v145)
      {
        goto LABEL_138;
      }

      goto LABEL_38;
    }

    if (!v162)
    {
      break;
    }

    v136 = *v112;
    v114 = *(v112 + 8);
    *v112 = v114;
    *(v112 + 8) = v136;
    v112 -= 8;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

uint64_t sub_1000CC604(void **a1, void **a2, void **a3, void **a4)
{
  v8 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v9 = __chkstk_darwin(v8 - 8);
  v97 = (&v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v95 = &v89 - v12;
  v13 = __chkstk_darwin(v11);
  v98 = &v89 - v14;
  __chkstk_darwin(v13);
  v96 = &v89 - v15;
  v16 = type metadata accessor for Date();
  v17 = __chkstk_darwin(v16);
  v94 = (&v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v17);
  v102 = &v89 - v20;
  v21 = __chkstk_darwin(v19);
  v93 = (&v89 - v22);
  v23 = __chkstk_darwin(v21);
  v103 = &v89 - v24;
  __chkstk_darwin(v23);
  v101 = &v89 - v26;
  v27 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v27 = a2 - a1;
  }

  v28 = v27 >> 3;
  v29 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v29 = a3 - a2;
  }

  v30 = v29 >> 3;
  if (v28 < v29 >> 3)
  {
    if (a4 != a1 || &a1[v28] <= a4)
    {
      v31 = v25;
      memmove(a4, a1, 8 * v28);
      v25 = v31;
    }

    v92 = &a4[v28];
    if (a2 - a1 < 8)
    {
      a2 = a1;
    }

    else
    {
      v32 = a1;
      if (a2 < a3)
      {
        v97 = (v25 + 32);
        v102 = (v25 + 56);
        v94 = (v25 + 48);
        v95 = (v25 + 8);
        v33 = v92;
        while (1)
        {
          v100 = a2;
          v34 = *a2;
          v104 = a4;
          v35 = *a4;
          v36 = v34;
          v37 = v35;
          v99 = v36;
          v38 = [v36 smtTimestamp];
          if (v38)
          {
            v39 = v38;
            v40 = v103;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v41 = v96;
            v42 = *v97;
            (*v97)(v96, v40, v16);
            v43 = *v102;
            (*v102)(v41, 0, 1, v16);
            v42(v101, v41, v16);
          }

          else
          {
            v43 = *v102;
            v44 = v96;
            (*v102)(v96, 1, 1, v16);
            static Date.distantPast.getter();
            if ((*v94)(v44, 1, v16) != 1)
            {
              sub_1000057C4(v44, &qword_100383FB0, &unk_1002D6690);
            }
          }

          v45 = [v37 smtTimestamp];
          if (v45)
          {
            v46 = v32;
            v47 = v103;
            v48 = v45;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v49 = v98;
            v50 = *v97;
            v51 = v47;
            v32 = v46;
            v33 = v92;
            (*v97)(v98, v51, v16);
            v43(v49, 0, 1, v16);
            v52 = v93;
            v50(v93, v49, v16);
          }

          else
          {
            v53 = v98;
            v43(v98, 1, 1, v16);
            v52 = v93;
            static Date.distantPast.getter();
            if ((*v94)(v53, 1, v16) != 1)
            {
              sub_1000057C4(v98, &qword_100383FB0, &unk_1002D6690);
            }
          }

          v54 = v101;
          v55 = static Date.< infix(_:_:)();
          v56 = v52;
          v57 = *v95;
          (*v95)(v56, v16);
          v57(v54, v16);

          if ((v55 & 1) == 0)
          {
            break;
          }

          v58 = v100;
          a2 = v100 + 1;
          a4 = v104;
          if (v32 != v100)
          {
            goto LABEL_24;
          }

LABEL_25:
          ++v32;
          if (a4 >= v33 || a2 >= a3)
          {
            a2 = v32;
            goto LABEL_56;
          }
        }

        v58 = v104;
        a4 = v104 + 1;
        a2 = v100;
        if (v32 == v104)
        {
          goto LABEL_25;
        }

LABEL_24:
        *v32 = *v58;
        goto LABEL_25;
      }

      a2 = a1;
    }

    v33 = v92;
    goto LABEL_56;
  }

  v90 = a1;
  if (a4 != a2 || &a2[v30] <= a4)
  {
    v59 = v25;
    memmove(a4, a2, 8 * v30);
    v25 = v59;
  }

  v33 = &a4[v30];
  if (a3 - a2 >= 8 && a2 > v90)
  {
    v96 = (v25 + 32);
    v101 = (v25 + 56);
    v91 = (v25 + 48);
    v92 = (v25 + 8);
    v104 = a4;
    do
    {
      v100 = a2;
      v60 = a2 - 1;
      --a3;
      v61 = v33;
      v93 = v60;
      while (1)
      {
        v62 = *--v61;
        v63 = *v60;
        v64 = v62;
        v65 = v63;
        v66 = [v64 smtTimestamp];
        v99 = v64;
        if (v66)
        {
          v67 = v66;
          v68 = v103;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v69 = v95;
          v70 = *v96;
          (*v96)(v95, v68, v16);
          v71 = *v101;
          (*v101)(v69, 0, 1, v16);
          v70(v102, v69, v16);
        }

        else
        {
          v71 = *v101;
          v72 = v95;
          (*v101)(v95, 1, 1, v16);
          static Date.distantPast.getter();
          if ((*v91)(v72, 1, v16) != 1)
          {
            sub_1000057C4(v72, &qword_100383FB0, &unk_1002D6690);
          }
        }

        v98 = v65;
        v73 = [v65 smtTimestamp];
        if (v73)
        {
          v74 = a3;
          v75 = v33;
          v76 = v103;
          v77 = v73;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v78 = v97;
          v79 = *v96;
          v80 = v76;
          v33 = v75;
          a3 = v74;
          (*v96)(v97, v80, v16);
          v71(v78, 0, 1, v16);
          v81 = v94;
          v79(v94, v78, v16);
        }

        else
        {
          v82 = v97;
          v71(v97, 1, 1, v16);
          v81 = v94;
          static Date.distantPast.getter();
          if ((*v91)(v82, 1, v16) != 1)
          {
            sub_1000057C4(v97, &qword_100383FB0, &unk_1002D6690);
          }
        }

        v83 = v102;
        v84 = static Date.< infix(_:_:)();
        v85 = *v92;
        (*v92)(v81, v16);
        v85(v83, v16);

        v86 = (a3 + 1);
        if (v84)
        {
          break;
        }

        a4 = v104;
        v60 = v93;
        if (v86 != v33)
        {
          *a3 = *v61;
        }

        --a3;
        v33 = v61;
        if (v61 <= a4)
        {
          v33 = v61;
          a2 = v100;
          goto LABEL_56;
        }
      }

      a4 = v104;
      v87 = v93;
      if (v86 != v100)
      {
        *a3 = *v93;
      }

      if (v33 <= a4)
      {
        break;
      }

      a2 = v87;
    }

    while (v87 > v90);
    a2 = v87;
  }

LABEL_56:
  if (a2 != a4 || a2 >= (a4 + ((v33 - a4 + (v33 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v33 - a4));
  }

  return 1;
}

uint64_t sub_1000CCF78(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000CD004(v3);
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

Swift::Int sub_1000CD018(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100095820(&unk_100384A80, &qword_1002D73E0);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000CD2C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000574C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000CD018(v16, a4 & 1);
      v11 = sub_10000574C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000CD43C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_1000CD43C()
{
  v1 = v0;
  sub_100095820(&unk_100384A80, &qword_1002D73E0);
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

  return result;
}

void (*sub_1000CD5AC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1000CD62C;
  }

  __break(1u);
  return result;
}

void *sub_1000CD634(unint64_t a1)
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
  v5 = sub_1000CB1D0(v3, 0);
  sub_1000CD6C8((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000CD6C8(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1000D29A4(&qword_100384AA8, &qword_1003846B8, &unk_1002DCED0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100095820(&qword_1003846B8, &unk_1002DCED0);
            v9 = sub_1000CD5AC(v13, i, a3);
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
        sub_10009FDA0(0, &qword_100384AA0, KTOptInState_ptr);
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

void sub_1000CD890(void *a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002D47A0;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_10009FD4C();
  *(v7 + 32) = v3;
  *(v7 + 40) = v2;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v8;
  *(v7 + 64) = v8;
  *(v7 + 72) = v5;
  *(v7 + 80) = v4;
  *(v7 + 136) = &type metadata for String;
  *(v7 + 144) = v8;
  *(v7 + 112) = 0x646574656C6564;
  *(v7 + 120) = 0xE700000000000000;

  v9 = NSPredicate.init(format:_:)();
  [v6 setPredicate:v9];

  v20 = 0;
  v10 = [v6 execute:&v20];
  v11 = v20;
  if (!v10)
  {
    v18 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v17 = 0;
    goto LABEL_11;
  }

  v12 = v10;
  sub_10009FDA0(0, &qword_1003846E0, off_100315888);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v11;

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:

    v17 = 0;
    goto LABEL_11;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);
LABEL_7:
    v16 = v15;

    v17 = sub_1000BFA10();

LABEL_11:
    *a1 = v17;
    return;
  }

  __break(1u);
}

uint64_t sub_1000CDB04@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v25 = v1[4];
  v5 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002D47B0;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10009FD4C();
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  v7 = v5;

  v8 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v8];

  v28 = 0;
  v9 = [v5 execute:&v28];
  v10 = v28;
  if (v9)
  {
    v11 = v9;
    sub_10009FDA0(0, &qword_1003846E0, off_100315888);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v10;

    v28 = _swiftEmptyArrayStorage;
    if (v12 >> 62)
    {
      goto LABEL_18;
    }

    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v7;
    for (i = a1; v14; i = a1)
    {
      v7 = v12 & 0xC000000000000001;
      v24 = _swiftEmptyArrayStorage;
      a1 = 4;
      while (1)
      {
        v15 = a1 - 4;
        if (v7)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v16 = *(v12 + 8 * a1);
        }

        v17 = v16;
        v18 = a1 - 3;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v27 = v16;
        sub_1000C1F0C(&v27, v25, "db optin: %s[%s] - %@ %s", &v26);

        if (v26)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v24 = v28;
        }

        ++a1;
        if (v18 == v14)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v14 = _CocoaArrayWrapper.endIndex.getter();
      v22 = v7;
    }

    v24 = _swiftEmptyArrayStorage;
LABEL_20:

    a1 = i;
    v21 = v24;
  }

  else
  {
    v19 = v28;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v21 = 0;
  }

  *a1 = v21;
  return result;
}

void sub_1000CDE08(void *a1@<X8>)
{
  v2 = [objc_opt_self() fetchRequest];
  v22 = 0;
  v3 = [v2 execute:&v22];
  v4 = v22;
  if (v3)
  {
    v5 = v3;
    sub_10009FDA0(0, &qword_1003846E0, off_100315888);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v4;

    v22 = _swiftEmptyArrayStorage;
    if (v6 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v16 = v2;
      v17 = a1;
      if (!i)
      {
        break;
      }

      a1 = (v6 & 0xC000000000000001);
      v2 = (v6 & 0xFFFFFFFFFFFFFF8);
      v18 = _swiftEmptyArrayStorage;
      v9 = 4;
      while (1)
      {
        v10 = v9 - 4;
        if (a1)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v11 = *(v6 + 8 * v9);
        }

        v12 = v11;
        v13 = v9 - 3;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v21 = v11;
        sub_1000C1F0C(&v21, v19, "list db optin: %s[%s] - %@ %s", &v20);

        if (v20)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v18 = v22;
        }

        ++v9;
        if (v13 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v18 = _swiftEmptyArrayStorage;
LABEL_18:

    a1 = v17;
    v15 = v18;
  }

  else
  {
    v14 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v15 = _swiftEmptyArrayStorage;
  }

  *a1 = v15;
}

uint64_t sub_1000CE058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6910581 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73656D6954746D73 && a2 == 0xEC000000706D6174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6169726573 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1000CE2A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&unk_100384A80, &qword_1002D73E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000574C(v5, v6);
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

void sub_1000CE3AC()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v27 = v0[6];
  v5 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  if (v1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1002D4790;
    *(v6 + 56) = &type metadata for String;
    v7 = sub_10009FD4C();
    *(v6 + 32) = v2;
    *(v6 + 40) = v1;
    *(v6 + 96) = &type metadata for String;
    *(v6 + 104) = v7;
    *(v6 + 64) = v7;
    *(v6 + 72) = v4;
    *(v6 + 80) = v3;
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1002D47B0;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_10009FD4C();
    *(v8 + 32) = v4;
    *(v8 + 40) = v3;
  }

  v9 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v9];

  v28 = 0;
  v10 = [v5 execute:&v28];
  v11 = v28;
  if (!v10)
  {
    goto LABEL_20;
  }

  v12 = v10;
  sub_10009FDA0(0, &qword_1003846E0, off_100315888);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v11;

  if (v13 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = 4;
    while (1)
    {
      v17 = v16 - 4;
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v18 = *(v13 + 8 * v16);
      }

      v19 = v18;
      v20 = v16 - 3;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = String._bridgeToObjectiveC()();
      [v19 setCkstate:v21];

      ++v16;
      if (v20 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  v23 = (*(*v27 + 152))(v22);
  v28 = 0;
  v24 = [v23 save:&v28];

  v11 = v28;
  if (v24)
  {
    v25 = v28;
  }

  else
  {
LABEL_20:
    v26 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000CE718(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  integerLiteral = *(v1 + 40);
  v41 = *(v1 + 41);
  v5 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002D4790;
  v8 = *(v2 + 88);
  v7 = *(v2 + 96);
  *(v6 + 56) = &type metadata for String;
  v9 = sub_10009FD4C();
  v44 = v8;
  *(v6 + 32) = v8;
  v10 = v7;
  v11 = v3;
  *(v6 + 40) = v10;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v9;
  *(v6 + 64) = v9;
  *(v6 + 72) = v3;
  *(v6 + 80) = v4;

  v12 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v12];

  v45 = 0;
  v42 = v5;
  v13 = [v5 execute:&v45];
  v14 = v45;
  if (v13)
  {
    v15 = v13;
    sub_10009FDA0(0, &qword_1003846E0, off_100315888);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v14;

    if (v16 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v2;
    v20 = v44;
    if (v18)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_8;
      }

      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(v16 + 32);
LABEL_8:
        v22 = v21;

        v23 = v22;
LABEL_15:
        sub_10009FDA0(0, &qword_100384440, NSNumber_ptr);
        isa = NSNumber.init(integerLiteral:)(integerLiteral).super.super.isa;
        [v23 setState:isa];

        v33 = String._bridgeToObjectiveC()();
        [v23 setCkstate:v33];

        if (v41)
        {
          [v23 setCkrecord:0];
        }

        v34 = (*(*v19 + 440))(v23);

        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    v24 = v45;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v19 = v2;
    v20 = v44;
  }

  v25 = (*(*v19 + 240))(v20, v10, v11, v4);
  if (v25)
  {
    v26 = v25;
    v27 = (*(*v19 + 152))();
    v28 = [objc_allocWithZone(CloudOptIn) initWithContext:v27];

    v23 = v28;
    v29 = String._bridgeToObjectiveC()();
    [v23 setApplication:v29];

    v30 = String._bridgeToObjectiveC()();
    [v23 setUri:v30];

    v31 = [v26 recordName];
    if (!v31)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = String._bridgeToObjectiveC()();
    }

    [v23 setRecordID:v31];

    goto LABEL_15;
  }

  if (qword_100390140 != -1)
  {
LABEL_26:
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10009597C(v35, qword_100390148);
  v36 = static os_log_type_t.error.getter();

  v37 = Logger.logObject.getter();

  if (os_log_type_enabled(v37, v36))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_1000999E4(v20, v10, &v45);
    _os_log_impl(&_mh_execute_header, v37, v36, "failed to create recordID %s", v38, 0xCu);
    sub_10009A9E8(v39);
  }

  v34 = 0;
LABEL_22:
  *a1 = v34;
}

void sub_1000CECBC(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002D4790;
  v8 = v3[11];
  v7 = v3[12];
  *(v6 + 56) = &type metadata for String;
  v9 = sub_10009FD4C();
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v9;
  *(v6 + 64) = v9;
  *(v6 + 72) = v2;
  *(v6 + 80) = v4;

  v10 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v10];

  v29 = 0;
  v11 = [v5 execute:&v29];
  v12 = v29;
  if (!v11)
  {
    v27 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v26 = 0;
    goto LABEL_15;
  }

  v13 = v11;
  sub_10009FDA0(0, &qword_1003846E0, off_100315888);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v12;

  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10009597C(v16, qword_100390148);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136315138;
    v21 = Array.description.getter();
    v23 = sub_1000999E4(v21, v22, &v29);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "found intent records: %s", v19, 0xCu);
    sub_10009A9E8(v20);
  }

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_14:

    v26 = 0;
    goto LABEL_15;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v14 + 32);
LABEL_11:
    v25 = v24;

    v26 = (*(*v3 + 448))(v25);

LABEL_15:
    *a1 = v26;
    return;
  }

  __break(1u);
}

void sub_1000CF06C(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002D4790;
  v7 = *(v2 + 88);
  v8 = *(v2 + 96);
  *(v6 + 56) = &type metadata for String;
  v9 = sub_10009FD4C();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v9;
  *(v6 + 64) = v9;
  *(v6 + 72) = v3;
  *(v6 + 80) = v4;

  v10 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v10];

  v29 = 0;
  v11 = [v5 execute:&v29];
  v12 = v29;
  if (!v11)
  {
    v26 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_11;
  }

  v13 = v11;
  sub_10009FDA0(0, &qword_1003846E0, off_100315888);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v12;

  if (!(v14 >> 62))
  {
    v16 = v2;
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:

    v25 = 0;
    goto LABEL_14;
  }

  v16 = v2;
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v14 + 32);
LABEL_7:
    v18 = v17;

    v19 = v18;
    v20 = String._bridgeToObjectiveC()();
    [v19 setCkstate:v20];

    v21 = (*(*v16 + 152))();
    v29 = 0;
    v22 = [v21 save:&v29];

    if (v22)
    {
      v23 = *(*v16 + 440);
      v24 = v29;
      v25 = v23(v19);

LABEL_14:
      *a1 = v25;
      return;
    }

    v27 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_11:

    v25 = 0;
    goto LABEL_14;
  }

  __break(1u);
}

void sub_1000CF3C0(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 48);
  v25 = *(v1 + 40);
  v24 = *(v1 + 56);
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10009597C(v7, qword_100390148);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "storeOptInIntent started CK", v10, 2u);
  }

  type metadata accessor for KTStoreOptInOperation();
  v11 = *(*v3 + 19);
  v12 = v3[6];
  v13 = v11();
  sub_100095820(&qword_100384A50, &qword_1002D7650);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1002D6360;
  *(v14 + 32) = v4;
  v15 = v4;
  v16 = KTStoreOptInOperation.__allocating_init(database:context:records:type:overwrite:)(v12, v13, v14, 0x746E65746E69, 0xE600000000000000, v5);
  v17 = swift_allocObject();
  *(v17 + 16) = v25;
  *(v17 + 24) = v6;
  *(v17 + 32) = v24;
  *(v17 + 40) = v16;
  *(v17 + 48) = v3;

  v18 = v16;

  v19 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1000D2580;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D2A70;
  aBlock[3] = &unk_100320918;
  v20 = _Block_copy(aBlock);
  v21 = [objc_opt_self() named:v19 withBlockTakingSelf:v20];

  _Block_release(v20);

  [v21 addSuccessDependency:v18];
  [a1 dependOnBeforeGroupFinished:v21];
  [a1 dependOnBeforeGroupFinished:v18];
  v22 = [a1 operationQueue];
  [v22 addOperation:v21];

  v23 = [a1 operationQueue];
  [v23 addOperation:v18];
}

void sub_1000CF724(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v24 = v1[4];
  v6 = v1[6];
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10009597C(v7, qword_100390148);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "deleteOptInIntent started CK", v10, 2u);
  }

  type metadata accessor for KTDeleteOptInOperation();
  v11 = *(*v3 + 19);
  v12 = v3[6];
  v13 = v11();
  v14 = v4;
  v15 = KTDeleteOptInOperation.__allocating_init(database:context:recordID:)(v12, v13, v14);
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v24;
  v16[4] = v5;
  v16[5] = v14;
  v16[6] = v6;
  v17 = v14;
  v18 = v15;

  swift_unknownObjectRetain();
  v19 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1000D2114;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D2A70;
  aBlock[3] = &unk_1003208C8;
  v20 = _Block_copy(aBlock);
  v21 = [objc_opt_self() named:v19 withBlockTakingSelf:v20];

  _Block_release(v20);

  [v21 addSuccessDependency:v18];
  [a1 dependOnBeforeGroupFinished:v21];
  [a1 dependOnBeforeGroupFinished:v18];
  v22 = [a1 operationQueue];
  [v22 addOperation:v21];

  v23 = [a1 operationQueue];
  [v23 addOperation:v18];
}

void sub_1000CFA5C(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v31 = *(v1 + 40);
  v6 = *(v1 + 48);
  v5 = *(v1 + 56);
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10009597C(v7, qword_100390148);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v10 = 136315394;
    type metadata accessor for Date();
    v11 = Dictionary.description.getter();
    v13 = v6;
    v14 = a1;
    v15 = v5;
    v16 = v3;
    v17 = sub_1000999E4(v11, v12, aBlock);

    *(v10 + 4) = v17;
    v3 = v16;
    v5 = v15;
    a1 = v14;
    v6 = v13;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v8, v9, "storeOptIn finished writing to CK %s:%{BOOL}d", v10, 0x12u);
    sub_10009A9E8(v30);
  }

  type metadata accessor for KTStoreOptInOperation();
  v18 = *(*v4 + 19);
  v19 = v4[6];
  v20 = v18();
  swift_beginAccess();
  v21 = *(v31 + 16);

  v22 = KTStoreOptInOperation.__allocating_init(database:context:records:type:overwrite:)(v19, v20, v21, 0x64726F636572, 0xE600000000000000, 1);
  v23 = swift_allocObject();
  *(v23 + 16) = v6;
  *(v23 + 24) = v5;
  *(v23 + 32) = v3;
  *(v23 + 40) = v22;
  *(v23 + 48) = v4;

  v24 = v22;

  v25 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1000D1BB4;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D2A70;
  aBlock[3] = &unk_100320878;
  v26 = _Block_copy(aBlock);
  v27 = [objc_opt_self() named:v25 withBlockTakingSelf:v26];

  _Block_release(v26);

  [v27 addDependency:v24];
  [a1 dependOnBeforeGroupFinished:v27];
  [a1 dependOnBeforeGroupFinished:v24];
  v28 = [a1 operationQueue];
  [v28 addOperation:v27];

  v29 = [a1 operationQueue];
  [v29 addOperation:v24];
}

void sub_1000CFEB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47B0;
  v56 = v1;
  v5 = [v1 recordName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_10009FD4C();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = NSPredicate.init(format:_:)();
  [v3 setPredicate:v9];

  v63 = 0;
  v10 = [v3 execute:&v63];
  v11 = v63;
  if (v10)
  {
    v12 = v10;
    sub_10009FDA0(0, &qword_1003846E0, off_100315888);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v11;

    if (v13 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v55 = v3;
      v16 = &unk_100390000;
      if (!i)
      {
        break;
      }

      v17 = v13 & 0xC000000000000001;
      v18 = v13 & 0xFFFFFFFFFFFFFF8;
      v3 = 4;
      v60 = v13;
      v61 = v2;
      v58 = v13 & 0xC000000000000001;
      v59 = i;
      v57 = v13 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v20 = v3 - 4;
        if (v17)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *(v18 + 16))
          {
            goto LABEL_30;
          }

          v21 = *(v13 + 8 * v3);
        }

        v22 = v21;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v62 = v3 - 3;
        if (v16[40] != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_10009597C(v23, qword_100390148);
        v24 = v22;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v63 = v29;
          *v27 = 138412546;
          *(v27 + 4) = v24;
          *v28 = v24;
          *(v27 + 12) = 2080;
          v30 = [v24 ckstate];
          if (v30)
          {
            v31 = v30;
            v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v34 = v33;
          }

          else
          {
            v34 = 0xE100000000000000;
            v32 = 45;
          }

          v35 = sub_1000999E4(v32, v34, &v63);

          *(v27 + 14) = v35;
          _os_log_impl(&_mh_execute_header, v25, v26, "deleting optIn record: %@ %s", v27, 0x16u);
          sub_1000057C4(v28, &unk_100383290, &unk_1002D5BA0);

          sub_10009A9E8(v29);

          v13 = v60;
          v2 = v61;
          v16 = &unk_100390000;
          v17 = v58;
          i = v59;
          v18 = v57;
        }

        else
        {
        }

        v19 = (*(*v2 + 152))();
        [v19 deleteObject:v24];

        ++v3;
        if (v62 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_20:

    v37 = (*(*v2 + 152))(v36);
    v63 = 0;
    v38 = [v37 save:&v63];

    if (v38)
    {
      v39 = v63;

      return;
    }

    v41 = v63;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (v16[40] != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10009597C(v42, qword_100390148);
    v43 = v56;
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v63 = v48;
      *v46 = 136315394;
      v49 = [v43 recordName];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = sub_1000999E4(v50, v52, &v63);

      *(v46 + 4) = v53;
      *(v46 + 12) = 2112;
      swift_errorRetain();
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 14) = v54;
      *v47 = v54;
      _os_log_impl(&_mh_execute_header, v44, v45, "delete of record %s failed %@", v46, 0x16u);
      sub_1000057C4(v47, &unk_100383290, &unk_1002D5BA0);

      sub_10009A9E8(v48);

      return;
    }
  }

  else
  {
    v40 = v63;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000D05A8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002D47B0;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_10009FD4C();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = NSPredicate.init(format:_:)();
  [v7 setPredicate:v9];

  v32 = 0;
  v10 = [v7 execute:&v32];
  v11 = v32;
  if (!v10)
  {
    v27 = v32;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v12 = v10;
  sub_10009FDA0(0, &qword_1003846E0, off_100315888);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v11;

  v32 = _swiftEmptyArrayStorage;
  if (v13 >> 62)
  {
LABEL_21:
    v15 = _CocoaArrayWrapper.endIndex.getter();
    v31 = v7;
    if (v15)
    {
LABEL_4:
      v30 = v5;
      v7 = 0;
      v16 = _swiftEmptyArrayStorage;
      v5 = v13 & 0xC000000000000001;
      do
      {
        v17 = v7;
        while (1)
        {
          if (v5)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v18 = *(v13 + 8 * v17 + 32);
          }

          v19 = v18;
          v7 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          v20 = [v18 recordID];
          if (v20)
          {
            break;
          }

          ++v17;
          if (v7 == v15)
          {
            goto LABEL_23;
          }
        }

        v29 = v6;
        v21 = v20;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
        v25 = *(v30 + 40);
        v26._countAndFlagsBits = v22;
        v26._object = v24;
        CKRecordID.init(recordName:zoneID:)(v26, v25);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16 = v32;
        v6 = v29;
      }

      while (v7 != v15);
      goto LABEL_23;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v7;
    if (v15)
    {
      goto LABEL_4;
    }
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_23:

  *v6 = v16;
}

void sub_1000D08F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D4790;
  *(v4 + 56) = &type metadata for String;
  v5 = sub_10009FD4C();
  *(v4 + 32) = 0x676E696F6774756FLL;
  *(v4 + 40) = 0xE800000000000000;
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v5;
  *(v4 + 64) = v5;
  *(v4 + 72) = 0x646574656C6564;
  *(v4 + 80) = 0xE700000000000000;
  v6 = NSPredicate.init(format:_:)();
  [v3 setPredicate:v6];

  v8 = (*(*v1 + 152))();
  sub_10009FDA0(0, &qword_1003846E0, off_100315888);
  v7 = NSManagedObjectContext.count<A>(for:)();

  if (v7 >= 1)
  {
    *v2 = 1;
  }
}

id sub_1000D0ADC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v48 = v1;
  v49 = v0[5];
  if (v1 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v50 = i;
    while (1)
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v7 = *(v48 + 32 + 8 * v5);
      }

      v8 = v7;
      v9 = __OFADD__(v5, 1);
      v10 = v5 + 1;
      if (v9)
      {
        break;
      }

      v52 = v10;
      if (qword_100390140 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10009597C(v11, qword_100390148);
      v12 = static os_log_type_t.info.getter();
      v6 = v8;

      v13 = Logger.logObject.getter();

      if (os_log_type_enabled(v13, v12))
      {
        v14 = v6;
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v53 = v17;
        *v15 = 138412546;
        *(v15 + 4) = v14;
        *v16 = v14;
        *(v15 + 12) = 2080;
        v18 = v14;
        *(v15 + 14) = sub_1000999E4(v2, v3, &v53);
        _os_log_impl(&_mh_execute_header, v13, v12, "updating state record.ID %@ newState %s", v15, 0x16u);
        sub_1000057C4(v16, &unk_100383290, &unk_1002D5BA0);

        sub_10009A9E8(v17);

        v6 = v14;
      }

      v19 = [objc_opt_self() fetchRequest];
      sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
      sub_100095820(&unk_100383140, &qword_1002D6BD0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1002D47B0;
      v21 = [v6 recordName];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      *(v20 + 56) = &type metadata for String;
      *(v20 + 64) = sub_10009FD4C();
      *(v20 + 32) = v22;
      *(v20 + 40) = v24;
      v25 = NSPredicate.init(format:_:)();
      [v19 setPredicate:v25];

      v53 = 0;
      v26 = [v19 execute:&v53];
      v27 = v53;
      if (v26)
      {
        v28 = v26;
        sub_10009FDA0(0, &qword_1003846E0, off_100315888);
        v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v27;

        sub_100095820(&qword_100383F98, &qword_1002D6B40);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1002D47B0;
        v53 = 0x3A7364726F636572;
        v54 = 0xE900000000000020;
        if (v29 >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }

        v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v32);

        v33 = v53;
        v34 = v54;
        *(v31 + 56) = &type metadata for String;
        *(v31 + 32) = v33;
        *(v31 + 40) = v34;
        print(_:separator:terminator:)();

        if (v29 >> 62)
        {
          v35 = _CocoaArrayWrapper.endIndex.getter();
          v51 = v6;
          if (v35)
          {
LABEL_22:
            v37 = 4;
            while (1)
            {
              v38 = v37 - 4;
              if ((v29 & 0xC000000000000001) != 0)
              {
                v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v38 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_32;
                }

                v39 = *(v29 + 8 * v37);
              }

              v40 = v39;
              v9 = __OFADD__(v38, 1);
              v41 = v37 - 3;
              if (v9)
              {
                break;
              }

              v42 = String._bridgeToObjectiveC()();
              [v40 setCkstate:v42];

              ++v37;
              if (v41 == v35)
              {
                goto LABEL_4;
              }
            }

            __break(1u);
LABEL_32:
            __break(1u);
            break;
          }
        }

        else
        {
          v35 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v51 = v6;
          if (v35)
          {
            goto LABEL_22;
          }
        }

LABEL_4:

        i = v50;
        v6 = v51;
      }

      else
      {
        v36 = v53;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v5 = v52;
      if (v52 == i)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:
  v43 = (*(*v49 + 152))();
  v53 = 0;
  v44 = [v43 save:&v53];

  v45 = v53;
  if (v44)
  {

    return v45;
  }

  else
  {
    v47 = v53;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000D1134()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002D47B0;
  v6 = [v1 recordName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10009FD4C();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v10 = NSPredicate.init(format:_:)();
  [v4 setPredicate:v10];

  v40 = 0;
  v11 = [v4 execute:&v40];
  v12 = v40;
  if (!v11)
  {
    v23 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if (qword_100390140 == -1)
    {
LABEL_12:
      v24 = type metadata accessor for Logger();
      sub_10009597C(v24, qword_100390148);
      v25 = static os_log_type_t.error.getter();
      v26 = v1;
      v27 = Logger.logObject.getter();

      if (!os_log_type_enabled(v27, v25))
      {
LABEL_21:

        return;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v26;
      *v29 = v26;
      v30 = v26;
      _os_log_impl(&_mh_execute_header, v27, v25, "record not found %@", v28, 0xCu);
      sub_1000057C4(v29, &unk_100383290, &unk_1002D5BA0);

LABEL_20:

      goto LABEL_21;
    }

LABEL_25:
    swift_once();
    goto LABEL_12;
  }

  v13 = v11;
  sub_10009FDA0(0, &qword_1003846E0, off_100315888);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v12;

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_16:
    if (qword_100390140 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10009597C(v32, qword_100390148);
    v33 = static os_log_type_t.error.getter();

    v27 = Logger.logObject.getter();

    if (!os_log_type_enabled(v27, v33))
    {

      return;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v34 = 136315138;
    v36 = Array.description.getter();
    v38 = v37;

    v39 = sub_1000999E4(v36, v38, &v40);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v27, v33, "no response %s", v34, 0xCu);
    sub_10009A9E8(v35);

    goto LABEL_20;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_25;
  }

  v15 = *(v1 + 32);
LABEL_7:
  v16 = v15;

  v17 = (*(*v3 + 440))(v16);
  v18 = *v2;
  *v2 = v17;
  v19 = v17;

  LOBYTE(v17) = (*(*v3 + 456))(v16, v17);
  if ((v17 & 1) == 0)
  {
LABEL_10:

    return;
  }

  v20 = (*(*v3 + 152))();
  v40 = 0;
  v21 = [v20 save:&v40];

  if (v21)
  {
    v22 = v40;
    goto LABEL_10;
  }

  v31 = v40;
  _convertNSErrorToError(_:)();

  swift_willThrow();
}

void sub_1000D16E0()
{
  v1 = objc_allocWithZone(NSFetchRequest);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithEntityName:v2];

  v4 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v3];
  v5 = *(*v0 + 152);
  v6 = v5();
  v15 = 0;
  v7 = [v6 executeRequest:v4 error:&v15];

  if (v7)
  {
    v8 = v15;
  }

  else
  {
    v10 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v11 = (v5)(v9);
  v15 = 0;
  v12 = [v11 save:&v15];

  if (v12)
  {
    v13 = v15;
  }

  else
  {
    v14 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v3 = v4;
  }
}

void sub_1000D18B0(uint64_t a1)
{
  sub_1000D2954(319, &unk_1003847C0, &type metadata for Int, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000B7104(319);
    if (v2 <= 0x3F)
    {
      sub_1000D2954(319, &unk_1003847D0, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1000D19E4()
{
  result = qword_100390380[0];
  if (!qword_100390380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100390380);
  }

  return result;
}

unint64_t sub_1000D1A3C()
{
  result = qword_100390490;
  if (!qword_100390490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100390490);
  }

  return result;
}

unint64_t sub_1000D1A94()
{
  result = qword_100390498[0];
  if (!qword_100390498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100390498);
  }

  return result;
}

uint64_t sub_1000D1AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudOptInData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D1B4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100095820(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1000D1BB4(uint64_t a1)
{
  v3 = *(v1 + 24);
  v44 = *(v1 + 16);
  LODWORD(v4) = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  if (qword_100390140 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v7 = type metadata accessor for Logger();
    v8 = sub_10009597C(v7, qword_100390148);
    v9 = v5;

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v39 = v8;
    if (os_log_type_enabled(v10, v11))
    {
      v42 = a1;
      v37 = v6;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v46 = v14;
      *v12 = 136315906;
      *(v12 + 4) = sub_1000999E4(v44, v3, &v46);
      *(v12 + 12) = 1024;
      *(v12 + 14) = v4;
      *(v12 + 18) = 2112;
      *(v12 + 20) = v9;
      *v13 = v9;
      *(v12 + 28) = 2048;
      v4 = *((swift_isaMask & *v9) + 0x80);
      v15 = v9;
      v16 = v4();
      if (v16 >> 62)
      {
        LODWORD(v4) = v16;
        v3 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v3 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v12 + 30) = v3;
      _os_log_impl(&_mh_execute_header, v10, v11, "store optin for %s to %{BOOL}d - %@ records: %ld", v12, 0x26u);
      sub_1000057C4(v13, &unk_100383290, &unk_1002D5BA0);

      sub_10009A9E8(v14);

      v6 = v37;
      v8 = v39;
      a1 = v42;
    }

    else
    {
    }

    v17 = [v9 error];
    if (v17)
    {
      v45 = v17;
      v18 = _convertErrorToNSError(_:)();
      [a1 setError:v18];

      return;
    }

    v19 = (*((swift_isaMask & *v9) + 0x80))();
    v5 = v19;
    if (!(v19 >> 62))
    {
      v43 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v43)
      {
        break;
      }

      goto LABEL_13;
    }

    v43 = _CocoaArrayWrapper.endIndex.getter();
    if (!v43)
    {
      break;
    }

LABEL_13:
    v40 = v5 & 0xFFFFFFFFFFFFFF8;
    v41 = v5 & 0xC000000000000001;
    a1 = 4;
    *&v20 = 136315138;
    v35 = v20;
    v36 = v5;
    v38 = v6;
    while (1)
    {
      v21 = a1 - 4;
      if (!v41)
      {
        break;
      }

      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v3 = a1 - 3;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_23;
      }

LABEL_19:
      v23 = v22;
      v24 = v8;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();

      LODWORD(v44) = v26;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v4 = swift_slowAlloc();
        v46 = v4;
        *v27 = v35;
        v28 = [v23 recordID];
        v29 = [v28 recordName];

        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = v30;
        v6 = v38;
        v34 = sub_1000999E4(v33, v32, &v46);

        *(v27 + 4) = v34;
        v5 = v36;
        _os_log_impl(&_mh_execute_header, v25, v26, "updating optIn record: %s", v27, 0xCu);
        sub_10009A9E8(v4);

        v8 = v39;
      }

      else
      {

        v8 = v24;
      }

      (*(*v6 + 368))(v23);

      ++a1;
      if (v3 == v43)
      {
        goto LABEL_28;
      }
    }

    if (v21 >= *(v40 + 16))
    {
      goto LABEL_24;
    }

    v22 = *(v5 + 8 * a1);
    v3 = a1 - 3;
    if (!__OFADD__(v21, 1))
    {
      goto LABEL_19;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

LABEL_28:
}

void sub_1000D2114(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = [*(v1 + 16) error];
  if (v7)
  {
    v8 = v7;
    if (qword_100390140 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10009597C(v9, qword_100390148);

    v28 = v8;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_1000999E4(v3, v4, &v29);
      *(v12 + 12) = 2112;
      v15 = v28;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      *v13 = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "delete of intent failed %s - %@", v12, 0x16u);
      sub_1000057C4(v13, &unk_100383290, &unk_1002D5BA0);

      sub_10009A9E8(v14);
    }

    v17 = _convertErrorToNSError(_:)();
    [a1 setError:v17];
  }

  else
  {
    if (qword_100390140 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10009597C(v18, qword_100390148);

    v19 = a1;
    v20 = v5;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v23 = 136315650;
      *(v23 + 4) = sub_1000999E4(v3, v4, &v29);
      *(v23 + 12) = 2112;
      *(v23 + 14) = v19;
      *(v23 + 22) = 2112;
      *(v23 + 24) = v20;
      *v24 = v19;
      v24[1] = v20;
      v26 = v19;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "delete optin intent for in local database %s - %@ - %@", v23, 0x20u);
      sub_100095820(&unk_100383290, &unk_1002D5BA0);
      swift_arrayDestroy();

      sub_10009A9E8(v25);
    }

    [v6 deleteRecordIDWithCkrecordID:v20];
  }
}

uint64_t sub_1000D24F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D2538()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_1000D2580(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10009597C(v8, qword_100390148);

  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v23 = v6;
    v12 = a1;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v13 = 136315650;
    *(v13 + 4) = sub_1000999E4(v4, v3, &v25);
    *(v13 + 12) = 1024;
    *(v13 + 14) = v5;
    *(v13 + 18) = 2112;
    *(v13 + 20) = v9;
    *v14 = v9;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "store optin intent for %s to %{BOOL}d - %@", v13, 0x1Cu);
    sub_1000057C4(v14, &unk_100383290, &unk_1002D5BA0);

    sub_10009A9E8(v15);

    a1 = v12;
    v6 = v23;
  }

  v17 = [v9 error];
  if (v17)
  {
    v18 = v17;
    v24 = _convertErrorToNSError(_:)();
    [a1 setError:?];

    goto LABEL_15;
  }

  v19 = (*((swift_isaMask & *v9) + 0x80))();
  if (v19 >> 62)
  {
    v21 = v19;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v19 = v21;
    if (v22)
    {
      goto LABEL_9;
    }

LABEL_14:

    type metadata accessor for KTError(0);
    sub_1000D24F0(&qword_100384A78, type metadata accessor for KTError, &protocol conformance descriptor for KTError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    v24 = _convertErrorToNSError(_:)();

    [a1 setError:v24];
    goto LABEL_15;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v20 = *(v19 + 32);
  }

  v24 = v20;

  (*(*v6 + 368))(v24);
LABEL_15:
}

void sub_1000D2954(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1000D29A4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000967DC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000D2A74()
{
  v0 = type metadata accessor for Logger();
  sub_100098130(v0, qword_100390628);
  sub_10009597C(v0, qword_100390628);
  return Logger.init(transparencyCategory:)(0xD000000000000017, 0x80000001002D7470);
}

uint64_t sub_1000D2AE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_application);

  return v1;
}

uint64_t sub_1000D2E48(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

id PeerValidationOperation.__allocating_init(deps:application:uris:logClient:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1000D59A4(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v12;
}

id PeerValidationOperation.init(deps:application:uris:logClient:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1000D59A4(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v6;
}

void *sub_1000D2FB8(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1000D4D9C(0, v2, 0);
    v29 = _swiftEmptyArrayStorage;
    v4 = v1 + 64;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v30 = *(v1 + 36);
    v25 = v1 + 72;
    v26 = v2;
    v27 = v1 + 64;
    v28 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v30 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v9 = (*(v1 + 48) + 16 * v5);
      v10 = *(*(v1 + 56) + 8 * v5);
      v31 = *v9;
      v32 = v9[1];
      swift_bridgeObjectRetain_n();
      v11 = v10;
      v12._countAndFlagsBits = 58;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      [v11 succeed];
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      v14 = v29;
      v16 = v29[2];
      v15 = v29[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_1000D4D9C((v15 > 1), v16 + 1, 1);
        v14 = v29;
      }

      v14[2] = v16 + 1;
      v17 = &v14[2 * v16];
      v17[4] = v31;
      v17[5] = v32;
      v1 = v28;
      v7 = 1 << *(v28 + 32);
      if (v5 >= v7)
      {
        goto LABEL_25;
      }

      v4 = v27;
      v18 = *(v27 + 8 * v8);
      if ((v18 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      v29 = v14;
      if (v30 != *(v28 + 36))
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v5 & 0x3F));
      if (v19)
      {
        v7 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v8 << 6;
        v21 = v8 + 1;
        v22 = (v25 + 8 * v8);
        while (v21 < (v7 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_10000B2E8(v5, v30, 0);
            v7 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_10000B2E8(v5, v30, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v26)
      {
        return v29;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall PeerValidationOperation.groupStart()()
{
  [v0 dependOnBeforeGroupFinished:*&v0[OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_completeOp]];
  if (qword_100390620 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10009597C(v1, qword_100390628);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    (*((swift_isaMask & *v2) + 0x98))();
    sub_100095820(&qword_100384B18, &unk_1002D7460);
    sub_1000D29A4(&unk_100384B20, &qword_100384B18, &unk_1002D7460, &protocol conformance descriptor for Set<A>);
    sub_100008D30();
    v7 = Sequence<>.joined(separator:)();
    v9 = v8;

    v10 = sub_1000999E4(v7, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting fetch of uri data for: %s", v5, 0xCu);
    sub_10009A9E8(v6);
  }

  else
  {
  }

  (*((swift_isaMask & *v2) + 0xE8))(v11);
}

void sub_1000D35DC()
{
  v52 = *((swift_isaMask & *v0) + 0x98);
  v2 = v52();
  v3 = v2 + 56;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 56);
  v7 = (v4 + 63) >> 6;
  v53 = v2;

  v8 = 0;
  v9 = &selRef_started;
  while (v6)
  {
LABEL_10:
    v11 = (*(v53 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v13 = *v11;
    v12 = v11[1];
    v14 = *&v55[OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_deps];

    v15 = [v14 dataStore];
    v54 = v13;
    v16 = String._bridgeToObjectiveC()();
    v17 = String._bridgeToObjectiveC()();
    v18 = [v15 verifierResultForPeer:v16 application:v17];

    if (qword_100390620 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v1 = sub_10009597C(v19, qword_100390628);
    v20 = v18;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v1 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v57[0] = v23;
      *v1 = 134218242;
      *(v1 + 4) = [v20 succeed];

      *(v1 + 6) = 2080;
      *(v1 + 14) = sub_1000999E4(v54, v12, v57);
      _os_log_impl(&_mh_execute_header, v21, v22, "Cached response %lu for uri %s", v1, 0x16u);
      sub_10009A9E8(v23);
      v9 = &selRef_started;
    }

    else
    {
    }

    if ([v20 v9[75]] != 2)
    {
      v24 = *((swift_isaMask & *v55) + 0xD8);
      v1 = v20;

      v25 = v24(v57);
      v27 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = *v27;
      *v27 = 0x8000000000000000;
      sub_1000D516C(v1, v54, v12, isUniquelyReferenced_nonNull_native);

      *v27 = v56;
      v25(v57, 0);
      v9 = &selRef_started;
    }

    v6 &= v6 - 1;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  v30 = (*((swift_isaMask & *v55) + 0xC8))(v29);
  v31 = v30;
  v32 = v30 + 64;
  v33 = 1 << *(v30 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v30 + 64);
  v36 = (v33 + 63) >> 6;

  v37 = 0;
  while (v35)
  {
    v38 = v37;
LABEL_25:
    v39 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v40 = (*(v31 + 48) + ((v38 << 10) | (16 * v39)));
    v41 = *v40;
    v1 = v40[1];
    v42 = *((swift_isaMask & *v55) + 0xA8);

    v43 = v42(v57);
    sub_1000D5450(v41, v1);

    v43(v57, 0);
  }

  while (1)
  {
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v38 >= v36)
    {

      v1 = v55;
      v45 = *((v52)(v44) + 16);

      if (v45)
      {
        (*((swift_isaMask & *v55) + 0xF0))(v46);
        return;
      }

      if (qword_100390620 != -1)
      {
        goto LABEL_35;
      }

      goto LABEL_30;
    }

    v35 = *(v32 + 8 * v38);
    ++v37;
    if (v35)
    {
      v37 = v38;
      goto LABEL_25;
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  swift_once();
LABEL_30:
  v47 = type metadata accessor for Logger();
  sub_10009597C(v47, qword_100390628);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "got all entries from cache", v50, 2u);
  }

  v51 = [v1 operationQueue];
  [v51 addOperation:*&v1[OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_completeOp]];
}

void sub_1000D3C64()
{
  v1 = (*((swift_isaMask & *v0) + 0x98))();
  v2 = v0;
  sub_1000D5EC8(v1);

  v3 = [*(v2 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_deps) idsOperations];
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = String._bridgeToObjectiveC()();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  aBlock[4] = sub_1000D619C;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D45D4;
  aBlock[3] = &unk_1003209B0;
  v7 = _Block_copy(aBlock);
  v8 = v2;

  [v3 fetchPeerVerificationInfos:isa application:v5 completionBlock:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();
}

void sub_1000D3E10(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_100390620 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10009597C(v15, qword_100390628);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "IDS failed with %@", v18, 0xCu);
      sub_1000A4AD8(v19);
    }

    v21 = _convertErrorToNSError(_:)();
    [a3 setError:v21];

    v22 = [a3 operationQueue];
    [v22 addOperation:*(a3 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_completeOp)];
  }

  else
  {
    if (a1)
    {
      v48 = v12;
      v23 = *((swift_isaMask & *a3) + 0xB8);

      v25 = v23(v24);
      v26 = *((*((swift_isaMask & *a3) + 0xB0))(v25) + 16);

      v28 = *((*((swift_isaMask & *a3) + 0x98))(v27) + 16);

      if (v26 == v28)
      {
        v47[1] = *(a3 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_peerValidateQueue);
        v29 = swift_allocObject();
        *(v29 + 16) = a3;
        aBlock[4] = sub_1000D68A4;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000A31E0;
        aBlock[3] = &unk_100320AA0;
        v30 = _Block_copy(aBlock);
        v31 = a3;
        static DispatchQoS.unspecified.getter();
        v49 = _swiftEmptyArrayStorage;
        sub_1000D68F8(&qword_100384BD0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100095820(&qword_100384BD8, &qword_1002D74B8);
        sub_1000D29A4(&unk_100384BE0, &qword_100384BD8, &qword_1002D74B8, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v30);
        (*(v7 + 8))(v9, v6);
        (*(v11 + 8))(v14, v48);

        return;
      }

      if (qword_100390620 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10009597C(v37, qword_100390628);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "IDS didn't return all answers in peer query", v40, 2u);
      }

      v41 = objc_opt_self();
      v42 = kTransparencyErrorInternal;
      v43 = String._bridgeToObjectiveC()();
      v44 = [v41 errorWithDomain:v42 code:-353 underlyingError:0 userinfo:0 description:v43];

      v45 = _convertErrorToNSError(_:)();
      [a3 setError:v45];

      v36 = [a3 operationQueue];
    }

    else
    {
      if (qword_100390620 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_10009597C(v32, qword_100390628);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "No results from IDS", v35, 2u);
      }

      v36 = [a3 operationQueue];
    }

    v48 = v36;
    [v48 addOperation:*(a3 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_completeOp)];
    v46 = v48;
  }
}

uint64_t sub_1000D45D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10009FDA0(0, &qword_100384B30, KTVerificationInfo_ptr);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_1000D4688()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_deps) contextStore];
  v2 = (*((swift_isaMask & *v0) + 0x98))();
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_1000D4D18(*(v2 + 16), 0);
  v6 = sub_1000D5750(v13, v5 + 4, v4, v3);
  sub_1000D61BC(v13[0]);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = String._bridgeToObjectiveC()();
  v9 = *(v0 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_logClient);
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v13[4] = sub_1000D61C4;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100099654;
  v13[3] = &unk_100320A00;
  v11 = _Block_copy(v13);
  v12 = v0;

  [v1 queryForUris:isa application:v8 logClient:v9 userInitiated:1 cachedYoungerThan:0 completionHandler:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();
}

uint64_t sub_1000D4888()
{
  v1 = (*((swift_isaMask & *v0) + 0xC8))();
  sub_1000D2FB8(v1);

  sub_100095820(&unk_100383FD0, &qword_1002D6BC0);
  sub_1000D29A4(&qword_1003851A0, &unk_100383FD0, &qword_1002D6BC0, &protocol conformance descriptor for [A]);
  v2 = BidirectionalCollection<>.joined(separator:)();

  return v2;
}

void sub_1000D497C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_deps) contextStore];
  (*((swift_isaMask & *v0) + 0xB0))();
  sub_10009FDA0(0, &qword_100384B30, KTVerificationInfo_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v3 = String._bridgeToObjectiveC()();
  v4 = *(v0 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_logClient);
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v8[4] = sub_1000D63D0;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000D4B40;
  v8[3] = &unk_100320A50;
  v6 = _Block_copy(v8);
  v7 = v0;

  [v1 validatePeers:isa application:v3 fetchNow:1 logClient:v4 completionBlock:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();
}

uint64_t sub_1000D4B40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_10009FDA0(0, &qword_100384BC0, KTVerifierResult_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

id PeerValidationOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerValidationOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1000D4D18(uint64_t a1, uint64_t a2)
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

  sub_100095820(&qword_1003844C0, &qword_1002D6E08);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_1000D4D9C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D4DBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000D4DBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095820(&qword_1003844C0, &qword_1002D6E08);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_1000D4EC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100095820(&qword_100384BC8, &qword_1002D74B0);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1000D516C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000574C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000D4EC8(v16, a4 & 1);
      v11 = sub_10000574C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
_objc_release_x1:
        _objc_release_x1();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1000D52E4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_1000D52E4()
{
  v1 = v0;
  sub_100095820(&qword_100384BC8, &qword_1002D74B0);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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