void sub_1003919B4(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      sub_1000F5104(a2, a3);
      v7 = static _SetStorage.allocate(capacity:)();
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
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

  v7 = _swiftEmptySetSingleton;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 7;
  v46 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = NSObject._rawHashValue(seed:)(v7[5]);
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = v13[v20 >> 6];
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_1000060C8(0, a4, a5);
        while (1)
        {
          v25 = *(v7[6] + 8 * v20);
          v26 = static NSObject.== infix(_:_:)();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = v13[v20 >> 6];
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        v13[v21] = v23 | v22;
        *(v7[6] + 8 * v20) = v17;
        v27 = v7[2];
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        v7[2] = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = v7[5];
      v31 = *(a1 + 32 + 8 * v29);
      v32 = NSObject._rawHashValue(seed:)(v30);
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = v13[v34 >> 6];
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        sub_1000060C8(0, a4, a5);
        while (1)
        {
          v39 = *(v7[6] + 8 * v34);
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = v13[v34 >> 6];
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        v13[v35] = v37 | v36;
        *(v7[6] + 8 * v34) = v31;
        v41 = v7[2];
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        v7[2] = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_100391CDC(uint64_t a1)
{
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v3 = *(PredicateType - 8);
  __chkstk_darwin(PredicateType, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7, v8);
  v11 = &v18 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, PredicateType, v9);
      sub_100379BD8(v11, v6);
      (*(v13 - 8))(v11, PredicateType);
      v16 += v17;
      --v12;
    }

    while (v12);
  }
}

void *sub_100391E24(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1000F5104(&qword_1009438E0, &unk_1007A41A0);
    v11 = static _SetStorage.allocate(capacity:)();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1003932B0(&qword_1009438D0, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_1003932B0(&qword_1009438D8, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

void sub_100392144(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_100378D70(&v6, v4);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

id sub_100392408(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100791340;

  v12 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v13)
  {
    v14 = v12;
    v15 = v13;

    *(v11 + 56) = &type metadata for String;
    *(v11 + 32) = v14;
    *(v11 + 40) = v15;
    *(v11 + 88) = sub_1000F5104(a3, a4);
    *(v11 + 64) = a2;
    v16 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v11, v18, v19, v20, v21, v22, v23, v24;
    v25 = [objc_opt_self() predicateWithFormat:v16 argumentArray:isa];

    return v25;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v27._object = 0x80000001007EC120;
    v27._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v27);
    sub_1000F5104(a5, a6);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_10039268C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791340;

  v8 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v9)
  {
    v10 = v8;
    v11 = v9;

    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = v10;
    *(v7 + 40) = v11;
    *(v7 + 88) = &type metadata for Bool;
    *(v7 + 64) = a2 & 1;
    v12 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v7, v14, v15, v16, v17, v18, v19, v20;
    v21 = [objc_opt_self() predicateWithFormat:v12 argumentArray:isa];

    return v21;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v23._object = 0x80000001007EC120;
    v23._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v23);
    sub_1000F5104(a3, a4);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003928FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004E4464(a1, a2, a3, a4, a5, 0);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  static String.Encoding.utf8.getter();
  v17 = String.data(using:allowLossyConversion:)();
  v19 = v18;
  v16, v18, v20, v21, v22, v23, v24, v25;
  (*(v11 + 8))(v14, v10);
  if (v19 >> 60 == 15)
  {
    return 0;
  }

  if (qword_100935F30 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_100942E20);
  v28 = a1;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v67 = v32;
    *v31 = 136315138;
    v33 = [v28 recordID];
    v34 = [v33 ckShortDescription];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = sub_10000668C(v35, v37, &v67);
    v37, v39, v40, v41, v42, v43, v44, v45;
    *(v31 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "Deserializing reminderIDsMergeableOrdering from readMaybeBigStringOrderedSet() {recordID: %s}", v31, 0xCu);
    sub_10000607C(v32);
  }

  v46 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v67 = 0;
  v48 = [v46 reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:isa error:&v67];

  v49 = v67;
  if (!v48)
  {
    v50 = v49;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v67 = v54;
      *v53 = 136315138;
      swift_getErrorValue();
      v55 = Error.localizedDescription.getter();
      v57 = v56;
      v58 = sub_10000668C(v55, v56, &v67);
      v57, v59, v60, v61, v62, v63, v64, v65;
      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v51, v52, "Failed to parse UUID strings JSON data {error: %s}", v53, 0xCu);
      sub_10000607C(v54);

      sub_100031A14(v17, v19);
    }

    else
    {
      sub_100031A14(v17, v19);
    }

    return 0;
  }

  return v48;
}

unint64_t sub_100392D78(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100392DF0(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_1000F5104(&qword_100943328, &qword_1007A3CF0);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = _swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 7;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_1003932B0(&qword_100943330, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = v7[v11 >> 6];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1003932B0(&qword_100943338, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while (1)
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = v7[v11 >> 6];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      v7[v12] = v14 | v13;
      *(v3[6] + 8 * v11) = v8;
      v16 = v3[2];
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id sub_100393084(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10._countAndFlagsBits = sub_1003AB9F4(a4, a2, a3, a4, a5, a6, a7, a8);
  object = v10._object;
  String.append(_:)(v10);
  object, v12, v13, v14, v15, v16, v17, v18;
  v19._countAndFlagsBits = 4203808;
  v19._object = 0xE300000000000000;
  String.append(_:)(v19);
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100791340;

  v21 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v22)
  {
    v23 = v21;
    v24 = v22;

    *(v20 + 56) = &type metadata for String;
    *(v20 + 32) = v23;
    *(v20 + 40) = v24;
    *(v20 + 88) = sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    *(v20 + 64) = a2;
    *(v20 + 72) = a3;
    v25 = String._bridgeToObjectiveC()();
    0xE500000000000000, v26, v27, v28, v29, v30, v31, v32;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v20, v34, v35, v36, v37, v38, v39, v40;
    v41 = [objc_opt_self() predicateWithFormat:v25 argumentArray:isa];

    return v41;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v43._object = 0x80000001007EC120;
    v43._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v43);
    sub_1000F5104(&qword_10093F478, &unk_1007A76E0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003932B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1003932F8(uint64_t a1)
{
  v2 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1000F5104(&qword_100943EF0, &unk_100797DB0);
    v11 = static _SetStorage.allocate(capacity:)();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1003932B0(&qword_100943EE0, &type metadata accessor for REMSuggestedAttributeOutput.Pipeline, &protocol conformance descriptor for REMSuggestedAttributeOutput.Pipeline);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_1003932B0(&qword_100943EE8, &type metadata accessor for REMSuggestedAttributeOutput.Pipeline, &protocol conformance descriptor for REMSuggestedAttributeOutput.Pipeline);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

Swift::Int sub_10039363C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&unk_100943030, &unk_1007A3AB0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

Swift::Int sub_100393778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100943340, &qword_1007A3CF8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_1003938B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10039391C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s6FieldsOwet_1(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6FieldsOwst_1(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100393AD4(uint64_t a1)
{
  result = sub_100393AFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100393AFC()
{
  result = qword_1009441A0;
  if (!qword_1009441A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009441A0);
  }

  return result;
}

unint64_t sub_100393B50(uint64_t a1)
{
  result = sub_100393B78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100393B78()
{
  result = qword_1009441A8;
  if (!qword_1009441A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009441A8);
  }

  return result;
}

unint64_t sub_100393C14()
{
  result = qword_1009441C0;
  if (!qword_1009441C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009441C0);
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100393C7C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = &_swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = [v5 remObjectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v8 == i)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

void sub_100393DD8(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = _swiftEmptySetSingleton;
    goto LABEL_6;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1000F5104(&qword_10093A728, &unk_100797BC0);
  v3 = static _SetStorage.allocate(capacity:)();
LABEL_6:
  if (sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr) == &type metadata for String)
  {
    if (v2)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for REMObjectID_Codable();
      sub_1003A99EC(&qword_100943E80, &type metadata accessor for REMObjectID_Codable, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v1 = v39;
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      v10 = 0;
    }

    while ((v1 & 0x8000000000000000) == 0)
    {
      if (v11)
      {
        v33 = v10;
        goto LABEL_44;
      }

      v36 = v10;
      do
      {
        v33 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_60;
        }

        if (v33 >= ((v9 + 64) >> 6))
        {
          v37 = v1;
          goto LABEL_56;
        }

        v11 = *(v8 + 8 * v33);
        ++v36;
      }

      while (!v11);
      v10 = v33;
LABEL_44:
      v34 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
LABEL_45:
      sub_1003A932C(v35, &qword_1009391E0, REMObjectID_ptr);
    }

    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for REMObjectID_Codable();
      swift_dynamicCast();
      v35 = v38;
      goto LABEL_45;
    }

    v37 = v1;
LABEL_56:
    sub_10001B860(v37);
LABEL_57:

    return;
  }

  if (v2)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for REMObjectID_Codable();
    sub_1003A99EC(&qword_100943E80, &type metadata accessor for REMObjectID_Codable, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v1 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 7;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
LABEL_38:
      sub_10001B860(v1);
      goto LABEL_57;
    }

    type metadata accessor for REMObjectID_Codable();
    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = NSObject._rawHashValue(seed:)(v3[5]);
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~v16[v24 >> 6]) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~v16[v24 >> 6])) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = v16[v25];
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(v3[6] + 8 * v17) = v19;
    ++v3[2];
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v38 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v38;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_38;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

void sub_1003942EC(uint64_t a1)
{
  v52 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v42 = *(v52 - 8);
  __chkstk_darwin(v52, v2);
  v51 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v5);
  v7 = &v40 - v6;
  v8 = type metadata accessor for UUID();
  v53 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v48 = &v40 - v14;
  v54 = a1;
  if (*(a1 + 16))
  {
    sub_1000F5104(&qword_100944248, &qword_1007A4B48);
    v15 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v15 = _swiftEmptySetSingleton;
  }

  v16 = v54 + 56;
  v17 = 1 << *(v54 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v54 + 56);
  v20 = (v17 + 63) >> 6;
  v46 = v53 + 32;
  v47 = v53 + 16;
  v44 = v53 + 48;
  v41 = (v53 + 8);
  v21 = v15 + 7;

  v22 = 0;
  v49 = v11;
  v50 = v7;
  v45 = v16;
  v55 = v15;
  v43 = v20;
  while (v19)
  {
    v24 = v11;
    v25 = v7;
LABEL_16:
    v27 = v53;
    v28 = v48;
    (*(v53 + 16))(v48, *(v54 + 48) + *(v53 + 72) * (__clz(__rbit64(v19)) | (v22 << 6)), v8);
    v29 = *(v27 + 32);
    v29(v24, v28, v8);
    swift_dynamicCast();
    Hasher.init(_seed:)();
    v30 = v51;
    sub_100010364(v25, v51, &unk_100939D90, "8\n\r");
    if ((*(v27 + 48))(v30, 1, v8) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v29(v24, v30, v8);
      Hasher._combine(_:)(1u);
      sub_1003A99EC(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      (*v41)(v24, v8);
    }

    v16 = v45;
    v20 = v43;
    v31 = Hasher._finalize()();
    v32 = v55;
    v33 = -1 << *(v55 + 32);
    v34 = v31 & ~v33;
    v35 = v34 >> 6;
    v7 = v50;
    if (((-1 << v34) & ~v21[v34 >> 6]) == 0)
    {
      v36 = 0;
      v37 = (63 - v33) >> 6;
      v11 = v49;
      while (++v35 != v37 || (v36 & 1) == 0)
      {
        v38 = v35 == v37;
        if (v35 == v37)
        {
          v35 = 0;
        }

        v36 |= v38;
        v39 = v21[v35];
        if (v39 != -1)
        {
          v23 = __clz(__rbit64(~v39)) + (v35 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v34) & ~v21[v34 >> 6])) | v34 & 0x7FFFFFFFFFFFFFC0;
    v11 = v49;
LABEL_9:
    v19 &= v19 - 1;
    *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    sub_100031B58(v7, v32[6] + *(v42 + 72) * v23, &unk_100939D90, "8\n\r");
    ++v32[2];
  }

  while (1)
  {
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v26 >= v20)
    {

      return;
    }

    v19 = *(v16 + 8 * v26);
    ++v22;
    if (v19)
    {
      v24 = v11;
      v25 = v7;
      v22 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_100394808(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F5104(&qword_100944238, &qword_1007A4B40);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptySetSingleton;
  }

  v3 = sub_1000F5104(&unk_100939E40, &qword_100791BD0);
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  if (v3 == &type metadata for String)
  {

    v22 = 0;
    if (!v7)
    {
      goto LABEL_30;
    }

    do
    {
LABEL_34:
      v7 &= v7 - 1;

      swift_dynamicCast();
      sub_1003A9190(v24, v25);
    }

    while (v7);
LABEL_30:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v8)
      {
LABEL_36:

        return;
      }

      v7 = *(v4 + 8 * v23);
      ++v22;
      if (v7)
      {
        v22 = v23;
        goto LABEL_34;
      }
    }
  }

  else
  {
    v9 = v2 + 7;

    v10 = 0;
    while (v7)
    {
LABEL_16:

      swift_dynamicCast();
      Hasher.init(_seed:)();
      if (v27)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v14 = Hasher._finalize()();
      v15 = -1 << *(v2 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~v9[v16 >> 6]) == 0)
      {
        v18 = 0;
        v19 = (63 - v15) >> 6;
        while (++v17 != v19 || (v18 & 1) == 0)
        {
          v20 = v17 == v19;
          if (v17 == v19)
          {
            v17 = 0;
          }

          v18 |= v20;
          v21 = v9[v17];
          if (v21 != -1)
          {
            v11 = __clz(__rbit64(~v21)) + (v17 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v11 = __clz(__rbit64((-1 << v16) & ~v9[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v9 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (v2[6] + 16 * v11);
      *v12 = v26;
      v12[1] = v27;
      ++v2[2];
    }

    while (1)
    {
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v13);
      ++v10;
      if (v7)
      {
        v10 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

void sub_100394B68(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v6 = a1;
  v7 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = _swiftEmptySetSingleton;
    goto LABEL_6;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1000F5104(&qword_1009430E0, &qword_1007A3B20);
  v8 = static _SetStorage.allocate(capacity:)();
LABEL_6:
  if (sub_1000060C8(0, &qword_100939D80, off_1008D41B8) == &type metadata for String)
  {
    if (v7)
    {

      __CocoaSet.makeIterator()();
      a2(0);
      sub_1003A99EC(a3, a4, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v6 = v45;
      v13 = v46;
      v14 = v47;
      v15 = v48;
      v16 = v49;
    }

    else
    {
      v35 = -1 << *(v6 + 32);
      v13 = v6 + 56;
      v14 = ~v35;
      v36 = -v35;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      else
      {
        v37 = -1;
      }

      v16 = v37 & *(v6 + 56);

      v15 = 0;
    }

    while ((v6 & 0x8000000000000000) == 0)
    {
      if (v16)
      {
        v38 = v15;
        goto LABEL_44;
      }

      v41 = v15;
      do
      {
        v38 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_60;
        }

        if (v38 >= ((v14 + 64) >> 6))
        {
          v42 = v6;
          goto LABEL_56;
        }

        v16 = *(v13 + 8 * v38);
        ++v41;
      }

      while (!v16);
      v15 = v38;
LABEL_44:
      v39 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v40 = *(*(v6 + 48) + ((v38 << 9) | (8 * v39)));
LABEL_45:
      sub_1003A932C(v40, &qword_100939D80, off_1008D41B8);
    }

    if (__CocoaSet.Iterator.next()())
    {
      a2(0);
      swift_dynamicCast();
      v40 = v44;
      goto LABEL_45;
    }

    v42 = v6;
LABEL_56:
    sub_10001B860(v42);
LABEL_57:

    return;
  }

  if (v7)
  {

    __CocoaSet.makeIterator()();
    a2(0);
    sub_1003A99EC(a3, a4, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v6 = v45;
    v9 = v46;
    v10 = v47;
    v11 = v48;
    v12 = v49;
  }

  else
  {
    v17 = -1 << *(v6 + 32);
    v9 = v6 + 56;
    v10 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v12 = v19 & *(v6 + 56);

    v11 = 0;
  }

  v20 = (v10 + 64) >> 6;
  v21 = v8 + 7;
  while (v6 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
LABEL_38:
      sub_10001B860(v6);
      goto LABEL_57;
    }

    a2(0);
    swift_dynamicCast();
    v24 = v44;
LABEL_29:
    v27 = NSObject._rawHashValue(seed:)(v8[5]);
    v28 = -1 << *(v8 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~v21[v29 >> 6]) != 0)
    {
      v22 = __clz(__rbit64((-1 << v29) & ~v21[v29 >> 6])) | v29 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = 0;
      v32 = (63 - v28) >> 6;
      do
      {
        if (++v30 == v32 && (v31 & 1) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v33 = v30 == v32;
        if (v30 == v32)
        {
          v30 = 0;
        }

        v31 |= v33;
        v34 = v21[v30];
      }

      while (v34 == -1);
      v22 = __clz(__rbit64(~v34)) + (v30 << 6);
    }

    *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(v8[6] + 8 * v22) = v24;
    ++v8[2];
  }

  if (v12)
  {
    v23 = v11;
LABEL_28:
    v26 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v44 = *(*(v6 + 48) + ((v23 << 9) | (8 * v26)));
    v24 = v44;
    goto LABEL_29;
  }

  v25 = v11;
  while (1)
  {
    v23 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      goto LABEL_38;
    }

    v12 = *(v9 + 8 * v23);
    ++v25;
    if (v12)
    {
      v11 = v23;
      goto LABEL_28;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

void sub_1003950EC(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v7 = a1;
  v8 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = _swiftEmptySetSingleton;
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = -1 << *(v7 + 32);
    v10 = v7 + 56;
    v11 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v7 + 56);

    v32 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1000F5104(&unk_100944220, &qword_1007A4B38);
  v9 = static _SetStorage.allocate(capacity:)();
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_4:

  __CocoaSet.makeIterator()();
  sub_1000060C8(0, a2, a3);
  sub_10000CDE4(a4, a2, a3, &protocol conformance descriptor for NSObject);
  Set.Iterator.init(_cocoa:)();
  v7 = v36;
  v10 = v37;
  v11 = v38;
  v32 = v39;
  v12 = v40;
LABEL_11:
  v16 = v9 + 7;
  while (v7 < 0)
  {
    v20 = __CocoaSet.Iterator.next()();
    if (!v20)
    {
LABEL_34:
      sub_10001B860(v7);

      return;
    }

    *&v33 = v20;
    sub_1000060C8(0, a2, a3);
    swift_dynamicCast();
LABEL_25:
    sub_1000060C8(0, a2, a3);
    swift_dynamicCast();
    v24 = AnyHashable._rawHashValue(seed:)(v9[5]);
    v25 = -1 << *(v9 + 32);
    v26 = v24 & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~v16[v26 >> 6]) != 0)
    {
      v17 = __clz(__rbit64((-1 << v26) & ~v16[v26 >> 6])) | v26 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = 0;
      v29 = (63 - v25) >> 6;
      do
      {
        if (++v27 == v29 && (v28 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v30 = v27 == v29;
        if (v27 == v29)
        {
          v27 = 0;
        }

        v28 |= v30;
        v31 = v16[v27];
      }

      while (v31 == -1);
      v17 = __clz(__rbit64(~v31)) + (v27 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v18 = v9[6] + 40 * v17;
    *(v18 + 32) = v35;
    *v18 = v33;
    *(v18 + 16) = v34;
    ++v9[2];
  }

  if (v12)
  {
    v19 = v32;
LABEL_24:
    v22 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v23 = *(*(v7 + 48) + ((v19 << 9) | (8 * v22)));
    goto LABEL_25;
  }

  v21 = v32;
  while (1)
  {
    v19 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v19 >= ((v11 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v12 = *(v10 + 8 * v19);
    ++v21;
    if (v12)
    {
      v32 = v19;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_100395478@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 dueDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_10039551C(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDueDate:isa];
}

void sub_100395658(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  if (v5)
  {
    v6 = 0;
    v7 = __clz(__rbit64(v5));
    v8 = (v5 - 1) & v5;
    v9 = (v3 + 63) >> 6;
LABEL_9:
    v12 = (*(a1 + 48) + 16 * v7);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v7);

    v34 = v15;
    v35 = a1;

LABEL_10:
    v16 = v35;
    while (v8)
    {
LABEL_16:
      v18 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v19 = v18 | (v6 << 6);
      v20 = (*(v16 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      if (*v20 != v14 || v22 != v13)
      {
        v24 = *(*(v16 + 56) + 8 * v19);
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v16 = v35;
        if (v25)
        {

          v26 = v24;

          v13, v27, v28, v29, v30, v31, v32, v33;
          v34 = v26;
          v13 = v22;
          v14 = v21;
          goto LABEL_10;
        }
      }
    }

    while (1)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v17 >= v9)
      {

        return;
      }

      v8 = *(v2 + 8 * v17);
      ++v6;
      if (v8)
      {
        v6 = v17;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = 0;
    v9 = (v3 + 63) >> 6;
    while (v9 - 1 != v5)
    {
      v6 = v5 + 1;
      v11 = *(a1 + 72 + 8 * v5);
      v10 -= 64;
      ++v5;
      if (v11)
      {
        v8 = (v11 - 1) & v11;
        v7 = __clz(__rbit64(v11)) - v10;
        goto LABEL_9;
      }
    }
  }
}

id sub_100395850@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allDay];
  *a2 = result;
  return result;
}

uint64_t sub_100395898(char a1)
{
  result = 0x7344496D72616C61;
  switch(a1)
  {
    case 1:
      return 0x7961446C6C61;
    case 2:
      return 0xD000000000000026;
    case 3:
      v3 = 0x686361747461;
      return v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
    case 4:
      v3 = 0x6E6769737361;
      return v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
    case 5:
      return 0x6572436863746162;
    case 6:
      return 0x6574656C706D6F63;
    case 7:
      return 0x6974656C706D6F63;
    case 8:
      return 0x48746361746E6F63;
    case 9:
      return 0x6E6F697461657263;
    case 10:
      return 0x65746144657564;
    case 11:
      return 0xD000000000000016;
    case 12:
      return 0x64656767616C66;
    case 13:
      return 0x4967617468736168;
    case 14:
      return 0x6C7255736369;
    case 15:
      return 0x646574726F706D69;
    case 16:
      return 0xD000000000000010;
    case 17:
      return 1953720684;
    case 18:
      v4 = 0x447365746F6ELL;
      goto LABEL_32;
    case 19:
      return 0xD000000000000012;
    case 20:
      return 0x6552746E65726170;
    case 21:
      return 0xD00000000000002BLL;
    case 22:
      return 0x797469726F697270;
    case 23:
      return 0xD000000000000011;
    case 24:
      return 0x7461447472617473;
    case 25:
      return 0x656E6F5A656D6974;
    case 26:
      v4 = 0x44656C746974;
LABEL_32:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
      break;
    case 27:
      result = 0xD000000000000012;
      break;
    case 28:
      result = 0x6974634172657375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100395BE8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009441D0);
  v1 = sub_100006654(v0, qword_1009441D0);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_100395CB0(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = [a1 ckIdentifier];
  if (!v4)
  {
    if (qword_100935F38 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (!*(*v2 + 16) || (sub_100005F4C(v6, v8), (v9 & 1) == 0))
  {
    v17 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66[0] = *v2;
    sub_1002C7024(v17, v6, v8, isUniquelyReferenced_nonNull_native);
    v8, v19, v20, v21, v22, v23, v24, v25;
    *v2 = v66[0];
    while (1)
    {
      v43 = [v3 children];
      if (!v43)
      {
        return result;
      }

      v44 = v43;
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0, &protocol conformance descriptor for NSObject);
      v45 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v45 & 0xC000000000000001) != 0)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_33;
        }

        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v45 = v66[0];
        v53 = v66[1];
        v54 = v66[2];
        v55 = v66[3];
        v3 = v66[4];
      }

      else
      {
        if (!*(v45 + 16))
        {
LABEL_33:
          v45, v46, v47, v48, v49, v50, v51, v52;
          return result;
        }

        v55 = 0;
        v56 = -1 << *(v45 + 32);
        v53 = v45 + 56;
        v54 = ~v56;
        v57 = -v56;
        if (v57 < 64)
        {
          v58 = ~(-1 << v57);
        }

        else
        {
          v58 = -1;
        }

        v3 = (v58 & *(v45 + 56));
      }

      v59 = (v54 + 64) >> 6;
      if (v45 < 0)
      {
        while (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v64 = v65;
          v62 = v55;
          v63 = v3;
          if (!v65)
          {
            break;
          }

LABEL_30:
          sub_100395CB0(v64);

          v55 = v62;
          v3 = v63;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_32;
      }

LABEL_22:
      v60 = v55;
      v61 = v3;
      v62 = v55;
      if (v3)
      {
LABEL_26:
        v63 = (v61 - 1) & v61;
        v64 = *(*(v45 + 48) + ((v62 << 9) | (8 * __clz(__rbit64(v61)))));
        if (v64)
        {
          goto LABEL_30;
        }

LABEL_32:
        sub_10001B860(v45);
        return result;
      }

      while (1)
      {
        v62 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          break;
        }

        if (v62 >= v59)
        {
          goto LABEL_32;
        }

        v61 = *(v53 + 8 * v62);
        ++v60;
        if (v61)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_36:
      swift_once();
LABEL_9:
      v26 = type metadata accessor for Logger();
      sub_100006654(v26, qword_1009441D0);
      v27 = v3;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v66[0] = v31;
        *v30 = 136315138;
        v65 = [v27 remObjectID];
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v32 = Optional.descriptionOrNil.getter();
        v34 = v33;

        v35 = sub_10000668C(v32, v34, v66);
        v34, v36, v37, v38, v39, v40, v41, v42;
        *(v30 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v28, v29, "addSubtree: ckIdentifier is nil {objectID: %s}", v30, 0xCu);
        sub_10000607C(v31);
      }
    }
  }

  v8, v9, v10, v11, v12, v13, v14, v15;
  return result;
}

uint64_t sub_10039611C(char a1)
{
  result = 0x7344496D72616C41;
  switch(a1)
  {
    case 1:
      return 0x7961446C6C41;
    case 2:
      return 0xD000000000000025;
    case 3:
      v3 = 0x686361747441;
      return v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
    case 4:
      v3 = 0x6E6769737341;
      return v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
    case 5:
      return 0x6572436863746142;
    case 6:
      return 0x6574656C706D6F43;
    case 7:
      return 0x6974656C706D6F43;
    case 8:
      return 0x48746361746E6F43;
    case 9:
      return 0x6E6F697461657243;
    case 10:
      return 0x65746144657544;
    case 11:
      return 0xD000000000000016;
    case 12:
      return 0x64656767616C46;
    case 13:
      return 0x4967617468736148;
    case 14:
      return 0x6C7255736349;
    case 15:
      return 0x646574726F706D49;
    case 16:
      return 0xD000000000000010;
    case 17:
      return 1953720652;
    case 18:
      v4 = 0x447365746F4ELL;
      goto LABEL_32;
    case 19:
      return 0xD000000000000012;
    case 20:
      return 0x6552746E65726150;
    case 21:
      return 0xD00000000000002BLL;
    case 22:
      return 0x797469726F697250;
    case 23:
      return 0xD000000000000011;
    case 24:
      return 0x7461447472617453;
    case 25:
      return 0x656E6F5A656D6954;
    case 26:
      v4 = 0x44656C746954;
LABEL_32:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
      break;
    case 27:
      result = 0xD000000000000012;
      break;
    case 28:
      result = 0x6974634172657355;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10039646C()
{
  result = CKRecord.subscript.getter();
  if (result)
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = [v1 recordID];
      v3 = [v2 recordName];

      if (!v3)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v5 = v4;
        v3 = String._bridgeToObjectiveC()();
        v5, v6, v7, v8, v9, v10, v11, v12;
      }

      v13 = [objc_opt_self() ckIdentifierFromRecordName:v3];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      swift_unknownObjectRelease();

      return v14;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100396598(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100395898(*a1);
  v5 = v4;
  v6 = sub_100395898(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_100396620()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100395898(v1);
  v3 = v2;
  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

double sub_100396684(uint64_t a1)
{
  sub_100395898(*v1);
  v3 = v2;
  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

Swift::Int sub_1003966D8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100395898(v2);
  v4 = v3;
  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_100396738@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003A991C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100396768@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100395898(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static REMCDReminder.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

id static REMCDReminder.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
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

      sub_100396C30();
      [v19 setCkServerRecord:a1];
      [v19 setInCloud:1];
      [v19 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_100935F38 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_1009441D0);
      v23 = a2;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = v4;
        *v26 = 136446466;
        swift_getMetatypeMetadata();
        v27 = String.init<A>(describing:)();
        v29 = v28;
        v30 = sub_10000668C(v27, v28, &v53);
        v29, v31, v32, v33, v34, v35, v36, v37;
        *(v26 + 4) = v30;
        *(v26 + 12) = 2082;
        v38 = [v23 remObjectID];
        if (v38)
        {
          v39 = v38;
          v40 = [v38 description];

          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;
        }

        else
        {
          v43 = 0xE300000000000000;
          v41 = 7104878;
        }

        v44 = sub_10000668C(v41, v43, &v53);
        v43, v45, v46, v47, v48, v49, v50, v51;
        *(v26 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v24, v25, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v26, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v19;
}

void sub_100396C30()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v209 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v209 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v209 - v13;
  __chkstk_darwin(v15, v16);
  v18 = &v209 - v17;
  __chkstk_darwin(v19, v20);
  v22 = &v209 - v21;
  __chkstk_darwin(v23, v24);
  v26 = &v209 - v25;
  *&v29 = __chkstk_darwin(v27, v28).n128_u64[0];
  v31 = &v209 - v30;
  if ([v1 isOwnedByCurrentUser])
  {
    return;
  }

  v32 = [v1 managedObjectContext];
  if (!v32)
  {
    if (qword_100935F38 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100006654(v55, qword_1009441D0);
    v223 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v223, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v223, v56, "Trying to create REMCDSharedToMeReminderPlaceholder to a reminder object without MOC", v57, 2u);
    }

LABEL_18:
    v58 = v223;

    return;
  }

  v221 = v2;
  v222 = v3;
  v223 = v32;
  v33 = [v1 storeControllerManagedObjectContext];
  if (!v33 || (v34 = v33, v35 = [v33 storeController], v34, !v35))
  {
    if (qword_100935F38 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006654(v43, qword_1009441D0);
    v44 = v1;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v224 = v48;
      *v47 = 136446210;
      v49 = [v44 remObjectID];
      if (v49)
      {
        v50 = v49;
        v51 = [v49 description];

        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;
      }

      else
      {
        v52 = 7104878;
        v54 = 0xE300000000000000;
      }

      v59 = sub_10000668C(v52, v54, &v224);
      v54, v60, v61, v62, v63, v64, v65, v66;
      *(v47 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v45, v46, "REMCDReminder+CloudKit: Could not create REMCDSharedToMeReminderPlaceholder because storeController isn't available {reminder: %{public}s}", v47, 0xCu);
      sub_10000607C(v48);

      return;
    }

    goto LABEL_18;
  }

  v36 = [v1 account];
  v220 = v35;
  if (!v36)
  {
LABEL_26:
    if (qword_100935F38 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_100006654(v70, qword_1009441D0);
    v71 = v1;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v72, v73))
    {

      return;
    }

    v74 = swift_slowAlloc();
    v224 = swift_slowAlloc();
    *v74 = 136446722;
    v75 = [v71 account];
    if (v75)
    {

      v76 = 0xE200000000000000;
      v77 = 15649;
    }

    else
    {
      v76 = 0xE100000000000000;
      v77 = 61;
    }

    v116 = v222;
    v117 = sub_10000668C(v77, v76, &v224);
    v76, v118, v119, v120, v121, v122, v123, v124;
    *(v74 + 4) = v117;
    *(v74 + 12) = 2082;
    v125 = [v71 account];
    if (v125)
    {
      v126 = v125;
      v127 = [v125 identifier];

      if (v127)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v128 = 0;
      }

      else
      {
        v128 = 1;
      }

      v131 = v221;
      v132 = v222;
      (*(v222 + 56))(v10, v128, 1, v221);
      sub_100031B58(v10, v14, &unk_100939D90, "8\n\r");
      v133 = (*(v132 + 48))(v14, 1, v131);
      if (v133 == 1)
      {
        v130 = 61;
      }

      else
      {
        v130 = 15649;
      }

      if (v133 == 1)
      {
        v129 = 0xE100000000000000;
      }

      else
      {
        v129 = 0xE200000000000000;
      }
    }

    else
    {
      (*(v116 + 56))(v14, 1, 1, v221);
      v129 = 0xE100000000000000;
      v130 = 61;
    }

    sub_1000050A4(v14, &unk_100939D90, "8\n\r");
    v134 = sub_10000668C(v130, v129, &v224);
    v129, v135, v136, v137, v138, v139, v140, v141;
    *(v74 + 14) = v134;
    *(v74 + 22) = 2082;
    v142 = [v71 remObjectID];
    if (v142)
    {
      v143 = v142;
      v144 = [v142 description];

      v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v147 = v146;
    }

    else
    {
      v145 = 7104878;
      v147 = 0xE300000000000000;
    }

    v148 = sub_10000668C(v145, v147, &v224);
    v147, v149, v150, v151, v152, v153, v154, v155;
    *(v74 + 24) = v148;
    _os_log_impl(&_mh_execute_header, v72, v73, "REMCDReminder+CloudKit: Could not create REMCDSharedToMeReminderPlaceholder because accountIdentifier is nil where account %{public}s nil and account.identifier %{public}s nil, {reminder: %{public}s}", v74, 0x20u);
    swift_arrayDestroy();
    goto LABEL_54;
  }

  v37 = v36;
  v38 = [v36 identifier];

  v219 = v6;
  if (v38)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = v222;
    v40 = *(v222 + 56);
    v41 = v26;
    v42 = 0;
  }

  else
  {
    v39 = v222;
    v40 = *(v222 + 56);
    v41 = v26;
    v42 = 1;
  }

  v67 = v221;
  v218 = v40;
  v40(v41, v42, 1, v221);
  v35 = v220;
  sub_100031B58(v26, v31, &unk_100939D90, "8\n\r");
  v69 = v39 + 48;
  v68 = *(v39 + 48);
  if (v68(v31, 1, v67))
  {
    sub_1000050A4(v31, &unk_100939D90, "8\n\r");
    goto LABEL_26;
  }

  v214 = v68;
  v215 = v69;
  v78 = v222;
  v79 = v219;
  v211 = *(v222 + 16);
  v212 = v222 + 16;
  v211(v219, v31, v67);
  sub_1000050A4(v31, &unk_100939D90, "8\n\r");
  v80 = UUID.uuidString.getter();
  v82 = v81;
  v83 = v78 + 8;
  v217 = *(v78 + 8);
  v217(v79, v67);
  v84 = String._bridgeToObjectiveC()();
  v85 = [v35 storeForAccountIdentifier:v84];

  if (!v85)
  {
    if (qword_100935F38 != -1)
    {
      swift_once();
    }

    v156 = type metadata accessor for Logger();
    sub_100006654(v156, qword_1009441D0);

    v157 = v1;
    v72 = Logger.logObject.getter();
    v158 = static os_log_type_t.fault.getter();

    v82, v159, v160, v161, v162, v163, v164, v165;
    if (!os_log_type_enabled(v72, v158))
    {
      v82, v166, v167, v168, v169, v170, v171, v172;
      goto LABEL_55;
    }

    v173 = swift_slowAlloc();
    v224 = swift_slowAlloc();
    *v173 = 136446466;
    v174 = sub_10000668C(v80, v82, &v224);
    v82, v175, v176, v177, v178, v179, v180, v181;
    *(v173 + 4) = v174;
    *(v173 + 12) = 2082;
    v182 = [v157 remObjectID];
    if (v182)
    {
      v183 = v182;
      v184 = [v182 description];

      v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v187 = v186;
    }

    else
    {
      v185 = 7104878;
      v187 = 0xE300000000000000;
    }

    v201 = sub_10000668C(v185, v187, &v224);
    v187, v202, v203, v204, v205, v206, v207, v208;
    *(v173 + 14) = v201;
    _os_log_impl(&_mh_execute_header, v72, v158, "REMCDReminder+CloudKit: Could not create REMCDSharedToMeReminderPlaceholder because there is problem finding the persistent store for the accountIdentifier %{public}s and the reminder {reminder: %{public}s}", v173, 0x16u);
    swift_arrayDestroy();
LABEL_54:

LABEL_55:

    return;
  }

  v82, v86, v87, v88, v89, v90, v91, v92;
  sub_1000060C8(0, &qword_100944260, off_1008D41D8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v216 = v83;
  v94 = ObjCClassFromMetadata;
  v95 = v85;
  v96 = [v94 entity];
  v97 = objc_allocWithZone(v94);
  v98 = [v97 initWithEntity:v96 insertIntoManagedObjectContext:v223];
  v99 = v95;
  v100 = v98;
  [v223 assignObject:v100 toPersistentStore:v99];

  v213 = v99;
  v101 = v100;
  v102 = [v1 account];
  [v101 setAccount:v102];

  v103 = [v94 newObjectID];
  v104 = [v103 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v217(v79, v221);
  [v101 setIdentifier:isa];

  [v101 setReminder:v1];
  if (qword_100935F38 != -1)
  {
    swift_once();
  }

  v106 = type metadata accessor for Logger();
  sub_100006654(v106, qword_1009441D0);
  v107 = v101;
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();

  v110 = os_log_type_enabled(v108, v109);
  v111 = v220;
  if (v110)
  {
    v112 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v224 = v210;
    *v112 = 136446210;
    v113 = [v107 identifier];
    if (v113)
    {
      v114 = v113;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v115 = 0;
    }

    else
    {
      v115 = 1;
    }

    v188 = v214;
    v189 = v221;
    v218(v18, v115, 1, v221);
    sub_100031B58(v18, v22, &unk_100939D90, "8\n\r");
    if (v188(v22, 1, v189))
    {
      v190 = 7104878;
      sub_1000050A4(v22, &unk_100939D90, "8\n\r");
      v191 = 0xE300000000000000;
    }

    else
    {
      v211(v79, v22, v189);
      sub_1000050A4(v22, &unk_100939D90, "8\n\r");
      v190 = UUID.uuidString.getter();
      v191 = v192;
      v217(v79, v189);
    }

    v193 = sub_10000668C(v190, v191, &v224);
    v191, v194, v195, v196, v197, v198, v199, v200;
    *(v112 + 4) = v193;
    _os_log_impl(&_mh_execute_header, v108, v109, "Creating REMCDSharedToMeReminderPlaceholder for CloudKit: %{public}s", v112, 0xCu);
    sub_10000607C(v210);
  }

  else
  {
  }
}

Swift::String __swiftcall REMCDReminder.recordType()()
{
  v0 = 0x7265646E696D6552;
  v1 = 0xE800000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDReminder.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v4 = [v2 parentReminder];
  if (v4 && (v5 = v4, v6 = [v4 list], v5, v6))
  {

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = String._bridgeToObjectiveC()();
  v42.receiver = v2;
  v42.super_class = REMCDReminder;
  objc_msgSendSuper2(&v42, "mergeDataFromRecord:accountID:", from.super.isa, v8);

  v9 = [(objc_class *)from.super.isa recordID];
  v10 = [v9 recordName];

  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    v10 = String._bridgeToObjectiveC()();
    v12, v13, v14, v15, v16, v17, v18, v19;
  }

  v20 = [v2 ckIdentifierFromRecordName:v10];

  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    v20 = String._bridgeToObjectiveC()();
    v22, v23, v24, v25, v26, v27, v28, v29;
  }

  [v2 setCkIdentifier:v20];

  v30 = [v2 parentReminder];
  if (v30 && (v31 = v30, v32 = [v30 list], v31, v32))
  {

    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  v41 = v7 & v33;
  v40 = 0;
  v34 = [v2 mergeDataRevertedLocallyMarkedForDeletion];
  v35 = [v2 mergeDataRefusedToMergeMarkedForDeletion];
  v36 = v2;
  v37 = from.super.isa;
  sub_1004E5918(v37, v34, v35, v36, v36, v37, &v40, &v41);

  if (v41 == 1)
  {
    v38 = [v36 list];
    if (v38)
    {
      v39 = v38;
      if (([v38 ckNeedsInitialFetchFromCloud] & 1) == 0)
      {
        sub_100357E44();
      }
    }
  }

  if ([v36 isPlaceholder])
  {
    sub_100396C30();
  }
}

void sub_100397ED0(unsigned __int8 *a1, void *a2, void *a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), _BYTE *a5)
{
  v526 = a5;
  v531 = a4;
  v537 = a3;
  v538 = a2;
  v6 = type metadata accessor for UUID();
  v535 = *(v6 - 8);
  v536 = v6;
  __chkstk_darwin(v6, v7);
  v521 = &v511 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v532 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v532, v9);
  v525 = &v511 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v528 = (&v511 - v13);
  __chkstk_darwin(v14, v15);
  v523 = (&v511 - v16);
  v17 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v17 - 8, v18);
  v512 = &v511 - v19;
  v20 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v20 - 8, v21);
  v517 = &v511 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v514 = &v511 - v25;
  __chkstk_darwin(v26, v27);
  v530 = &v511 - v28;
  __chkstk_darwin(v29, v30);
  v513 = &v511 - v31;
  __chkstk_darwin(v32, v33);
  v534 = &v511 - v34;
  __chkstk_darwin(v35, v36);
  v516 = &v511 - v37;
  __chkstk_darwin(v38, v39);
  v520 = &v511 - v40;
  __chkstk_darwin(v41, v42);
  v529 = &v511 - v43;
  __chkstk_darwin(v44, v45);
  v524 = &v511 - v46;
  __chkstk_darwin(v47, v48);
  v527 = &v511 - v49;
  __chkstk_darwin(v50, v51);
  v515 = &v511 - v52;
  __chkstk_darwin(v53, v54);
  v519 = &v511 - v55;
  __chkstk_darwin(v56, v57);
  v522 = &v511 - v58;
  __chkstk_darwin(v59, v60);
  v518 = &v511 - v61;
  __chkstk_darwin(v62, v63);
  v533 = &v511 - v64;
  __chkstk_darwin(v65, v66);
  v511 = &v511 - v67;
  v68 = type metadata accessor for REMFeatureFlags();
  v69 = *(v68 - 8);
  __chkstk_darwin(v68, v70);
  v72 = &v511 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v73 - 8, v74);
  v76 = &v511 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77, v78);
  v80 = &v511 - v79;
  __chkstk_darwin(v81, v82);
  v84 = &v511 - v83;
  __chkstk_darwin(v85, v86);
  v88 = &v511 - v87;
  __chkstk_darwin(v89, v90);
  v92 = &v511 - v91;
  __chkstk_darwin(v93, v94);
  v96 = &v511 - v95;
  v97 = *a1;
  v99 = sub_10039611C(v97);
  switch(v97)
  {
    case 2:
      v201 = v98;
      v202 = [v537 encryptedValues];
      swift_getObjectType();
      v203 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v201, v204, v205, v206, v207, v208, v209, v210;
      swift_unknownObjectRelease();
      v211 = *(v203 - 8);
      isa = 0;
      if ((*(v211 + 48))(v80, 1, v203) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v211 + 8))(v80, v203);
      }

      v153 = "setAlternativeDisplayDateDate_forCalendar:";
      goto LABEL_66;
    case 5:
      v300 = v98;
      v301 = [v537 encryptedValues];
      v302 = String._bridgeToObjectiveC()();
      v300, v303, v304, v305, v306, v307, v308, v309;
      v310 = [v301 objectForKeyedSubscript:v302];
      swift_unknownObjectRelease();

      v223 = v538;
      if (!v310 || (v539 = v310, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) == 0))
      {
        [v223 setBatchCreationID:0];
        return;
      }

      v311 = *(&v540 + 1);
      v312 = v511;
      UUID.init(uuidString:)();
      v311, v313, v314, v315, v316, v317, v318, v319;
      v321 = v535;
      v320 = v536;
      if ((*(v535 + 48))(v312, 1, v536) == 1)
      {
        v141 = 0;
      }

      else
      {
        v141 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v321 + 8))(v312, v320);
      }

      v401 = "setBatchCreationID:";
LABEL_162:
      [v223 v401];
      goto LABEL_163;
    case 6:
      v154 = v98;
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      v154, v155, v156, v157, v158, v159, v160, v161;
      [v538 setCompleted:v540 & 1];
      return;
    case 7:
      v191 = v98;
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v192 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v191, v193, v194, v195, v196, v197, v198, v199;
      v200 = *(v192 - 8);
      isa = 0;
      if ((*(v200 + 48))(v96, 1, v192) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v200 + 8))(v96, v192);
      }

      v153 = "setCompletionDate:";
      goto LABEL_66;
    case 8:
      v251 = v98;
      v252 = [v537 encryptedValues];
      v253 = String._bridgeToObjectiveC()();
      v251, v254, v255, v256, v257, v258, v259, v260;
      v261 = [v252 objectForKeyedSubscript:v253];
      swift_unknownObjectRelease();

      v262 = v538;
      if (v261 && (v539 = v261, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) != 0))
      {
        v263 = *(&v540 + 1);
        v141 = sub_10013E5E4(v540, *(&v540 + 1));
        v263, v264, v265, v266, v267, v268, v269, v270;
        if (v141)
        {
          v271 = [v141 archivedData];

          v272 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v274 = v273;

          v141 = Data._bridgeToObjectiveC()().super.isa;
          sub_10001BBA0(v272, v274);
        }

        [v262 setContactHandles:v141];
LABEL_163:
      }

      else
      {
        [v262 setContactHandles:0];
      }

      return;
    case 9:
      v142 = v98;
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v143 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v142, v144, v145, v146, v147, v148, v149, v150;
      v151 = *(v143 - 8);
      isa = 0;
      if ((*(v151 + 48))(v92, 1, v143) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v151 + 8))(v92, v143);
      }

      v153 = "setCreationDate:";
      goto LABEL_66;
    case 10:
      v212 = v98;
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v213 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v212, v214, v215, v216, v217, v218, v219, v220;
      v221 = *(v213 - 8);
      v222 = 0;
      if ((*(v221 + 48))(v88, 1, v213) != 1)
      {
        v222 = Date._bridgeToObjectiveC()().super.isa;
        (*(v221 + 8))(v88, v213);
      }

      v223 = v538;
      [v538 setDueDate:v222];

      CKRecordKeyValueSetting.subscript.getter();
      [v223 setAllDay:v540 & 1];
      CKRecordKeyValueSetting.subscript.getter();
      v224 = *(&v540 + 1);
      if (*(&v540 + 1))
      {
        v141 = String._bridgeToObjectiveC()();
        v224, v225, v226, v227, v228, v229, v230, v231;
      }

      else
      {
        v141 = 0;
      }

      v401 = "setTimeZone:";
      goto LABEL_162;
    case 11:
      v131 = v98;
      v132 = [v537 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();
      v131, v133, v134, v135, v136, v137, v138, v139;
      swift_unknownObjectRelease();
      v140 = *(&v540 + 1);
      if (*(&v540 + 1) >> 60 == 15)
      {
        v141 = 0;
      }

      else
      {
        v366 = v540;
        v141 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v366, v140);
      }

      [v538 setDueDateDeltaAlertsData:v141];
      goto LABEL_163;
    case 12:
      v232 = v98;
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      v232, v233, v234, v235, v236, v237, v238, v239;
      if (BYTE8(v540))
      {
        v240 = 0;
      }

      else
      {
        v240 = v540;
      }

      [v538 setFlagged:v240];
      return;
    case 14:
      v275 = v98;
      v276 = [v537 encryptedValues];
      v277 = String._bridgeToObjectiveC()();
      v275, v278, v279, v280, v281, v282, v283, v284;
      v285 = [v276 objectForKeyedSubscript:v277];
      swift_unknownObjectRelease();

      v286 = v538;
      if (v285 && (v539 = v285, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) != 0))
      {
        v287 = *(&v540 + 1);
        v288 = v512;
        URL.init(string:)();
        v287, v289, v290, v291, v292, v293, v294, v295;
        v296 = type metadata accessor for URL();
        v297 = *(v296 - 8);
        isa = 0;
        if ((*(v297 + 48))(v288, 1, v296) != 1)
        {
          URL._bridgeToObjectiveC()(v298);
          isa = v299;
          (*(v297 + 8))(v288, v296);
        }

        [v286 setIcsUrl:isa];
LABEL_67:
      }

      else
      {
        [v286 setIcsUrl:0];
      }

      return;
    case 15:
      v346 = v98;
      v347 = [v537 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();
      v346, v348, v349, v350, v351, v352, v353, v354;
      swift_unknownObjectRelease();
      v355 = *(&v540 + 1);
      if (*(&v540 + 1) >> 60 == 15)
      {
        v141 = 0;
      }

      else
      {
        v368 = v540;
        v141 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v368, v355);
      }

      [v538 setImportedICSData:v141];
      goto LABEL_163;
    case 16:
      v241 = v98;
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v242 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v241, v243, v244, v245, v246, v247, v248, v249;
      v250 = *(v242 - 8);
      isa = 0;
      if ((*(v250 + 48))(v84, 1, v242) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v250 + 8))(v84, v242);
      }

      v153 = "setLastModifiedDate:";
      goto LABEL_66;
    case 17:
    case 20:
      v98, v98, v98, v99, v100, v101, v102, v103;
      if (*v531)
      {
        return;
      }

      *v531 = 1;
      v104 = v538;
      v105 = [v538 list];
      if (v105)
      {
        v106 = v105;
        v107 = [v105 identifier];

        v108 = v535;
        v109 = v536;
        v110 = v522;
        if (v107)
        {
          v111 = v518;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v112 = *(v108 + 56);
          v113 = v111;
          v114 = 0;
        }

        else
        {
          v112 = *(v535 + 56);
          v111 = v518;
          v113 = v518;
          v114 = 1;
        }

        v531 = v112;
        v112(v113, v114, 1, v109);
        sub_100031B58(v111, v533, &unk_100939D90, "8\n\r");
      }

      else
      {
        v108 = v535;
        v109 = v536;
        v531 = *(v535 + 56);
        v531(v533, 1, 1, v536);
        v110 = v522;
      }

      if (CKRecord.subscript.getter())
      {
        objc_opt_self();
        v430 = swift_dynamicCastObjCClass();
        if (!v430)
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v430 = 0;
      }

      v431 = sub_1004D6EF0(v430, v104);

      [v104 setList:v431];
      v432 = [v104 list];
      if (v432)
      {
        v433 = v432;
        v434 = [v432 identifier];

        v435 = v523;
        if (v434)
        {
          v436 = v519;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v437 = 0;
        }

        else
        {
          v437 = 1;
          v436 = v519;
        }

        v531(v436, v437, 1, v109);
        sub_100031B58(v436, v110, &unk_100939D90, "8\n\r");
      }

      else
      {
        v531(v110, 1, 1, v109);
        v435 = v523;
      }

      v438 = *(v532 + 48);
      sub_100010364(v110, v435, &unk_100939D90, "8\n\r");
      sub_100010364(v533, v435 + v438, &unk_100939D90, "8\n\r");
      v439 = *(v108 + 48);
      v440 = v439(v435, 1, v109);
      v523 = v439;
      if (v440 == 1)
      {
        sub_1000050A4(v110, &unk_100939D90, "8\n\r");
        if (v439(v435 + v438, 1, v109) == 1)
        {
          sub_1000050A4(v435, &unk_100939D90, "8\n\r");
          LODWORD(v522) = 1;
          goto LABEL_128;
        }

        goto LABEL_126;
      }

      v441 = v515;
      sub_100010364(v435, v515, &unk_100939D90, "8\n\r");
      if (v439(v435 + v438, 1, v109) == 1)
      {
        sub_1000050A4(v110, &unk_100939D90, "8\n\r");
        (*(v108 + 8))(v441, v109);
LABEL_126:
        sub_1000050A4(v435, &unk_10093A3D0, &qword_100795770);
        LODWORD(v522) = 0;
        goto LABEL_128;
      }

      v442 = v521;
      (*(v108 + 32))(v521, v435 + v438, v109);
      sub_1003A99EC(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v522) = dispatch thunk of static Equatable.== infix(_:_:)();
      v443 = *(v108 + 8);
      v443(v442, v109);
      sub_1000050A4(v110, &unk_100939D90, "8\n\r");
      v443(v441, v109);
      sub_1000050A4(v435, &unk_100939D90, "8\n\r");
LABEL_128:
      v444 = v527;
      v445 = v528;
      v446 = [v104 parentReminder];
      if (CKRecord.subscript.getter())
      {
        objc_opt_self();
        v447 = swift_dynamicCastObjCClass();
        if (!v447)
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v447 = 0;
      }

      v448 = sub_1001287DC(v447);

      if (v448)
      {
        objc_opt_self();
        v449 = swift_dynamicCastObjCClass();
        v450 = v524;
        if (!v449)
        {
        }
      }

      else
      {
        v449 = 0;
        v450 = v524;
      }

      [v104 setParentReminder:v449];

      v451 = [v104 parentReminder];
      if (v451)
      {
        v452 = v451;
        v453 = [v451 identifier];

        if (v453)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v454 = 0;
        }

        else
        {
          v454 = 1;
        }

        v455 = v529;
        v531(v450, v454, 1, v536);
        sub_100031B58(v450, v444, &unk_100939D90, "8\n\r");
      }

      else
      {
        v531(v444, 1, 1, v536);
        v455 = v529;
      }

      v528 = v446;
      if (v446)
      {
        v456 = [(RDXPCStorePerformer *)v446 identifier];
        if (v456)
        {
          v457 = v520;
          v458 = v456;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v459 = 0;
        }

        else
        {
          v459 = 1;
          v457 = v520;
        }

        v460 = (v108 + 48);
        v461 = v536;
        v531(v457, v459, 1, v536);
        sub_100031B58(v457, v455, &unk_100939D90, "8\n\r");
      }

      else
      {
        v460 = (v108 + 48);
        v461 = v536;
        v531(v455, 1, 1, v536);
      }

      v462 = *(v532 + 48);
      sub_100010364(v444, v445, &unk_100939D90, "8\n\r");
      sub_100010364(v455, v445 + v462, &unk_100939D90, "8\n\r");
      v463 = v523;
      v464 = v523(v445, 1, v461);
      v519 = v460;
      if (v464 == 1)
      {
        sub_1000050A4(v455, &unk_100939D90, "8\n\r");
        sub_1000050A4(v444, &unk_100939D90, "8\n\r");
        v465 = v463(v445 + v462, 1, v461);
        v466 = v522;
        if (v465 == 1)
        {
          sub_1000050A4(v445, &unk_100939D90, "8\n\r");
          v467 = 0;
          goto LABEL_155;
        }

        goto LABEL_153;
      }

      v468 = v516;
      sub_100010364(v445, v516, &unk_100939D90, "8\n\r");
      if (v463(v445 + v462, 1, v461) == 1)
      {
        sub_1000050A4(v529, &unk_100939D90, "8\n\r");
        sub_1000050A4(v444, &unk_100939D90, "8\n\r");
        (*(v535 + 8))(v468, v461);
        v466 = v522;
LABEL_153:
        sub_1000050A4(v445, &unk_10093A3D0, &qword_100795770);
        v467 = 1;
        goto LABEL_155;
      }

      v469 = v445;
      v470 = v535;
      v471 = v469 + v462;
      v472 = v521;
      (*(v535 + 32))(v521, v471, v461);
      sub_1003A99EC(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v473 = dispatch thunk of static Equatable.== infix(_:_:)();
      v474 = *(v470 + 8);
      v474(v472, v461);
      sub_1000050A4(v529, &unk_100939D90, "8\n\r");
      sub_1000050A4(v444, &unk_100939D90, "8\n\r");
      v474(v468, v461);
      v104 = v538;
      sub_1000050A4(v469, &unk_100939D90, "8\n\r");
      v467 = v473 ^ 1;
      v466 = v522;
LABEL_155:
      v475 = [v104 parentReminder];
      if (v475 && (v476 = v475, v477 = [v475 list], v476, v477))
      {
        v478 = [v477 identifier];

        if (v478)
        {
          v479 = v513;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v480 = 0;
        }

        else
        {
          v480 = 1;
          v479 = v513;
        }

        v531(v479, v480, 1, v536);
        sub_100031B58(v479, v534, &unk_100939D90, "8\n\r");
      }

      else
      {
        v531(v534, 1, 1, v536);
      }

      if (v466)
      {
        goto LABEL_174;
      }

      v481 = [v104 parentReminder];
      if (!v481)
      {
        goto LABEL_174;
      }

      v482 = v481;
      v483 = v482;
      if ([v482 ckNeedsInitialFetchFromCloud])
      {
        goto LABEL_172;
      }

      v484 = [v482 markedForDeletion];

      if ((v484 & 1) == 0)
      {
        v483 = [v104 list];
        [v482 setList:v483];
LABEL_172:
      }

LABEL_174:
      v485 = [v104 parentReminder];
      LODWORD(v529) = v467;
      if (v485 && (v486 = v485, v487 = [v485 list], v486, v487))
      {
        v488 = [v487 identifier];

        v489 = v536;
        v490 = v526;
        if (v488)
        {
          v491 = v514;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v492 = 0;
          v493 = v530;
        }

        else
        {
          v492 = 1;
          v493 = v530;
          v491 = v514;
        }

        v531(v491, v492, 1, v489);
        sub_100031B58(v491, v493, &unk_100939D90, "8\n\r");
      }

      else
      {
        v493 = v530;
        v489 = v536;
        v531(v530, 1, 1, v536);
        v490 = v526;
      }

      v494 = v466 ^ 1;
      v495 = *(v532 + 48);
      v496 = v493;
      v497 = v493;
      v498 = v525;
      sub_100010364(v496, v525, &unk_100939D90, "8\n\r");
      sub_100010364(v534, v498 + v495, &unk_100939D90, "8\n\r");
      v499 = v523;
      if (v523(v498, 1, v489) == 1)
      {
        sub_1000050A4(v497, &unk_100939D90, "8\n\r");
        v500 = v499(v498 + v495, 1, v489);
        v501 = v529;
        if (v500 == 1)
        {
          sub_1000050A4(v498, &unk_100939D90, "8\n\r");
          v502 = 0;
          goto LABEL_188;
        }

        goto LABEL_186;
      }

      v503 = v517;
      sub_100010364(v498, v517, &unk_100939D90, "8\n\r");
      if (v499(v498 + v495, 1, v489) == 1)
      {
        sub_1000050A4(v530, &unk_100939D90, "8\n\r");
        (*(v535 + 8))(v503, v489);
        v501 = v529;
LABEL_186:
        sub_1000050A4(v498, &unk_10093A3D0, &qword_100795770);
        v502 = 1;
        goto LABEL_188;
      }

      v504 = v535;
      v505 = v498 + v495;
      v506 = v521;
      (*(v535 + 32))(v521, v505, v489);
      sub_1003A99EC(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v507 = v498;
      v508 = dispatch thunk of static Equatable.== infix(_:_:)();
      v509 = *(v504 + 8);
      v509(v506, v489);
      sub_1000050A4(v530, &unk_100939D90, "8\n\r");
      v509(v503, v489);
      sub_1000050A4(v507, &unk_100939D90, "8\n\r");
      v502 = v508 ^ 1;
      v501 = v529;
LABEL_188:
      v510 = v528;
      sub_10039A638(v537, v528, v494 & 1, v502 & 1);

      sub_1000050A4(v534, &unk_100939D90, "8\n\r");
      sub_1000050A4(v533, &unk_100939D90, "8\n\r");
      *v490 = (*v490 | v494 | v501) & 1;
      return;
    case 18:
      v322 = v538;
      v323 = v98;
      sub_1004DD52C(v537, 0xD000000000000012, 1, &v540);
      v323, v324, v325, v326, v327, v328, v329, v330;
      v125 = *(&v540 + 1);
      v124 = v540;
      v331 = [v322 notesDocument];
      if (v331)
      {
        v332 = v331;
        v333 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v335 = v334;
      }

      else
      {
        v333 = 0;
        v335 = 0xF000000000000000;
      }

      v402 = sub_1004EB6C8(&v540, v333, v335, v124, v125, 0x636F447365746F6ELL, 0xED0000746E656D75, v322);
      v371 = v402;
      v372 = v403;
      v373 = v540;
      if (v540)
      {
        v404 = v540;
        0xED0000746E656D75, v405, v406, v407, v408, v409, v410, v411;
        sub_100031A14(v333, v335);
      }

      else
      {
        v373 = sub_1003A44B8(v402, v403, 0x636F447365746F6ELL, 0xED0000746E656D75);
        0xED0000746E656D75, v412, v413, v414, v415, v416, v417, v418;
        sub_100031A14(v333, v335);
      }

      if (v372 >> 60 == 15)
      {
        v419 = 0;
      }

      else
      {
        sub_100029344(v371, v372);
        v419 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v371, v372);
      }

      [v538 setNotesDocument:v419];

      if (v373)
      {
        v420 = [v373 attributedString];
        v391 = [v420 string];

        if (!v391)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v422 = v421;
          v391 = String._bridgeToObjectiveC()();
          v422, v423, v424, v425, v426, v427, v428, v429;
        }
      }

      else
      {
        v391 = 0;
      }

      [v538 setNotes:v391];
      goto LABEL_106;
    case 21:
      v171 = v98;
      v172 = v69;
      v173 = *(v69 + 104);
      v173(v72, enum case for REMFeatureFlags.urgentAlert(_:), v68);
      v174 = REMFeatureFlags.isEnabled.getter();
      v175 = *(v172 + 8);
      v175(v72, v68);
      if (v174 & 1) != 0 && (v173(v72, enum case for REMFeatureFlags.urgentAlertCloudKit(_:), v68), v183 = REMFeatureFlags.isEnabled.getter(), v175(v72, v68), (v183))
      {
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        CKRecordKeyValueSetting.subscript.getter();
        v171, v184, v185, v186, v187, v188, v189, v190;
        [v538 setPrefersUrgentPresentationStyleForDateAlarms:v540 & 1];
      }

      else
      {
        v171, v176, v177, v178, v179, v180, v181, v182;
      }

      return;
    case 22:
      v162 = v98;
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      v162, v163, v164, v165, v166, v167, v168, v169;
      if (BYTE8(v540))
      {
        v170 = 0;
      }

      else
      {
        v170 = v540;
      }

      [v538 setPriority:v170];
      return;
    case 24:
      v356 = v98;
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v357 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v356, v358, v359, v360, v361, v362, v363, v364;
      v365 = *(v357 - 8);
      isa = 0;
      if ((*(v365 + 48))(v76, 1, v357) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v365 + 8))(v76, v357);
      }

      v153 = "setStartDate:";
LABEL_66:
      [v538 v153];
      goto LABEL_67;
    case 26:
      v115 = v538;
      v116 = v98;
      sub_1004DD52C(v537, 0xD000000000000012, 1, &v540);
      v116, v117, v118, v119, v120, v121, v122, v123;
      v125 = *(&v540 + 1);
      v124 = v540;
      v126 = [v115 titleDocument];
      if (v126)
      {
        v127 = v126;
        v128 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v130 = v129;
      }

      else
      {
        v128 = 0;
        v130 = 0xF000000000000000;
      }

      v369 = sub_1004EB6C8(&v540, v128, v130, v124, v125, 0x636F44656C746974, 0xED0000746E656D75, v115);
      v371 = v369;
      v372 = v370;
      v373 = v540;
      if (v540)
      {
        v374 = v540;
        0xED0000746E656D75, v375, v376, v377, v378, v379, v380, v381;
        sub_100031A14(v128, v130);
      }

      else
      {
        v373 = sub_1003A44B8(v369, v370, 0x636F44656C746974, 0xED0000746E656D75);
        0xED0000746E656D75, v382, v383, v384, v385, v386, v387, v388;
        sub_100031A14(v128, v130);
      }

      if (v372 >> 60 == 15)
      {
        v389 = 0;
      }

      else
      {
        sub_100029344(v371, v372);
        v389 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v371, v372);
      }

      [v538 setTitleDocument:v389];

      if (v373)
      {
        v390 = [v373 attributedString];
        v391 = [v390 string];

        if (!v391)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v393 = v392;
          v391 = String._bridgeToObjectiveC()();
          v393, v394, v395, v396, v397, v398, v399, v400;
        }
      }

      else
      {
        v391 = 0;
      }

      [v538 setTitle:v391];
LABEL_106:

      sub_100031A14(v371, v372);

      sub_100031A14(v124, v125);
      return;
    case 28:
      v336 = v98;
      v337 = [v537 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();
      v336, v338, v339, v340, v341, v342, v343, v344;
      swift_unknownObjectRelease();
      v345 = *(&v540 + 1);
      if (*(&v540 + 1) >> 60 == 15)
      {
        v141 = 0;
      }

      else
      {
        v367 = v540;
        v141 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v367, v345);
      }

      [v538 setUserActivity:v141];
      goto LABEL_163;
    default:

      v98, v98, v98, v99, v100, v101, v102, v103;
      return;
  }
}

void sub_10039A638(void *a1, _TtC7remindd19RDXPCStorePerformer *a2, int a3, int a4)
{
  LODWORD(v904) = a4;
  LODWORD(v906) = a3;
  v911 = a2;
  v901 = a1;
  v900 = type metadata accessor for URL();
  v903 = *(v900 - 8);
  __chkstk_darwin(v900, v5);
  v896 = &v882 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v897 = &v882 - v9;
  __chkstk_darwin(v10, v11);
  v891 = &v882 - v12;
  v898 = sub_1000F5104(&unk_100944250, &qword_1007957B0);
  __chkstk_darwin(v898, v13);
  v886 = &v882 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v893 = &v882 - v17;
  v18 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v18 - 8, v19);
  v890 = &v882 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v894 = &v882 - v23;
  __chkstk_darwin(v24, v25);
  v885 = &v882 - v26;
  __chkstk_darwin(v27, v28);
  v887 = &v882 - v29;
  __chkstk_darwin(v30, v31);
  v888 = &v882 - v32;
  __chkstk_darwin(v33, v34);
  v889 = &v882 - v35;
  __chkstk_darwin(v36, v37);
  v39 = &v882 - v38;
  __chkstk_darwin(v40, v41);
  v899 = (&v882 - v42);
  v43 = type metadata accessor for UUID();
  v912 = *&v43[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v43, v44);
  v895 = (&v882 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v46, v47);
  v908 = &v882 - v48;
  v49 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v49 - 8, v50);
  v52 = &v882 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53, v54);
  v902 = (&v882 - v55);
  __chkstk_darwin(v56, v57);
  v907 = (&v882 - v58);
  __chkstk_darwin(v59, v60);
  v909 = &v882 - v61;
  __chkstk_darwin(v62, v63);
  v65 = &v882 - v64;
  if (qword_100935F38 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  v67 = sub_100006654(v66, qword_1009441D0);
  v68 = v4;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  v914 = v68;

  v71 = os_log_type_enabled(v69, v70);
  v72 = &selRef_hack_willSaveHandled;
  v913 = v67;
  v910 = v43;
  v892 = v39;
  v905 = v46;
  if (v71)
  {
    v883 = v65;
    v884 = v52;
    v73 = swift_slowAlloc();
    v882 = swift_slowAlloc();
    v920 = v882;
    *v73 = 136315650;
    v74 = v914;
    v915 = [v914 remObjectID];
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v75 = String.init<A>(describing:)();
    v77 = v76;
    v78 = sub_10000668C(v75, v76, &v920);
    v77, v79, v80, v81, v82, v83, v84, v85;
    *(v73 + 4) = v78;
    *(v73 + 12) = 2080;
    v86 = [v74 parentReminder];
    if (v86)
    {
      v87 = v86;
      v88 = [v86 remObjectID];
    }

    else
    {
      v88 = 0;
    }

    v72 = &selRef_hack_willSaveHandled;
    v915 = v88;
    v90 = String.init<A>(describing:)();
    v92 = v91;
    v93 = sub_10000668C(v90, v91, &v920);
    v92, v94, v95, v96, v97, v98, v99, v100;
    *(v73 + 14) = v93;
    *(v73 + 22) = 2080;
    v101 = [v914 list];
    v52 = v884;
    if (v101)
    {
      v102 = v101;
      v103 = [v101 remObjectID];
    }

    else
    {
      v103 = 0;
    }

    v89 = v907;
    v915 = v103;
    v104 = String.init<A>(describing:)();
    v106 = v105;
    v107 = sub_10000668C(v104, v105, &v920);
    v106, v108, v109, v110, v111, v112, v113, v114;
    *(v73 + 24) = v107;
    _os_log_impl(&_mh_execute_header, v69, v70, "validateAndFixupReminderTree BEGIN {objectID: %s, parentID: %s, listID: %s}", v73, 0x20u);
    swift_arrayDestroy();

    v43 = v910;
    v65 = v883;
  }

  else
  {

    v89 = v907;
  }

  v115 = [v914 parentReminder];
  v116 = v909;
  if (!v115)
  {
    v115 = [v914 v72[291]];
    if (!v115)
    {
      v143 = Logger.logObject.getter();
      v144 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        *v145 = 0;
        v146 = "validateAndFixupReminderTree: Reminder is detached from lists. Nothing needs to be done.";
        goto LABEL_50;
      }

      goto LABEL_51;
    }
  }

  v117 = [v914 v72[291]];
  if (!v117)
  {
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&_mh_execute_header, v118, v119, "validateAndFixupReminderTree: Reminder has parent but no list. Assuming self.list = parent.list.", v120, 2u);
    }

    v121 = v914;
    v122 = [v914 parentReminder];
    v123 = [v122 v72[291]];

    [v121 setList:v123];
    v117 = v123;
    v116 = v909;
    v43 = v910;
  }

  v124 = v89;
  v125 = v52;

  v126 = [v914 parentReminder];
  if (v126)
  {
    v127 = v126;
    v128 = [v126 identifier];

    v129 = v911;
    v130 = v908;
    if (v128)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v131 = 0;
    }

    else
    {
      v131 = 1;
    }

    v43 = v910;
    v132 = v912[7];
    v132(v116, v131, 1, v910);
    sub_100031B58(v116, v65, &unk_100939D90, "8\n\r");
    if (v129)
    {
      goto LABEL_25;
    }

LABEL_22:
    v133 = v912;
    v132(v124, 1, 1, v43);
    v134 = v125;
    goto LABEL_29;
  }

  v132 = v912[7];
  v132(v65, 1, 1, v43);
  v129 = v911;
  v130 = v908;
  if (!v911)
  {
    goto LABEL_22;
  }

LABEL_25:
  v135 = [(RDXPCStorePerformer *)v129 identifier];
  if (v135)
  {
    v136 = v902;
    v137 = v135;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = v910;
    v138 = 0;
  }

  else
  {
    v138 = 1;
    v136 = v902;
  }

  v134 = v125;
  v133 = v912;
  v132(v136, v138, 1, v43);
  sub_100031B58(v136, v124, &unk_100939D90, "8\n\r");
LABEL_29:
  v139 = *(v905 + 48);
  sub_100010364(v65, v130, &unk_100939D90, "8\n\r");
  sub_100010364(v124, &v130[v139], &unk_100939D90, "8\n\r");
  v140 = v133[6];
  if (v140(v130, 1, v43) == 1)
  {
    sub_1000050A4(v124, &unk_100939D90, "8\n\r");
    v130 = v908;
    sub_1000050A4(v65, &unk_100939D90, "8\n\r");
    if (v140(&v130[v139], 1, v43) == 1)
    {
      sub_1000050A4(v130, &unk_100939D90, "8\n\r");
      v141 = &selRef_hack_willSaveHandled;
      v142 = v906;
      if ((v906 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_36;
    }

LABEL_35:
    sub_1000050A4(v130, &unk_10093A3D0, &qword_100795770);
    v141 = &selRef_hack_willSaveHandled;
    v142 = v906;
    goto LABEL_36;
  }

  sub_100010364(v130, v134, &unk_100939D90, "8\n\r");
  if (v140(&v130[v139], 1, v43) == 1)
  {
    sub_1000050A4(v124, &unk_100939D90, "8\n\r");
    sub_1000050A4(v65, &unk_100939D90, "8\n\r");
    (v912[1])(v134, v43);
    goto LABEL_35;
  }

  v156 = v124;
  v157 = v65;
  v158 = v134;
  v159 = v912;
  v160 = &v130[v139];
  v161 = v895;
  (v912[4])(v895, v160, v43);
  sub_1003A99EC(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v162 = v43;
  v163 = dispatch thunk of static Equatable.== infix(_:_:)();
  v164 = v159[1];
  v164(v161, v162);
  sub_1000050A4(v156, &unk_100939D90, "8\n\r");
  sub_1000050A4(v157, &unk_100939D90, "8\n\r");
  v164(v158, v162);
  sub_1000050A4(v130, &unk_100939D90, "8\n\r");
  v141 = &selRef_hack_willSaveHandled;
  v142 = v906;
  if ((v163 & 1) != 0 && (v906 & 1) == 0)
  {
LABEL_46:
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      *v145 = 0;
      v146 = "validateAndFixupReminderTree: Neither parent nor list is changed. Nothing needs to be done.";
      goto LABEL_50;
    }

    goto LABEL_51;
  }

LABEL_36:
  if (sub_1003A54EC(v911, v142 & 1, v904 & 1))
  {
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      *v145 = 0;
      v146 = "validateAndFixupReminderTree: Current reminder tree looks good. Skipping the fixup.";
LABEL_50:
      _os_log_impl(&_mh_execute_header, v143, v144, v146, v145, 2u);
    }

LABEL_51:

LABEL_52:
    sub_1003A63E4(v914);
    return;
  }

  v147 = [v914 v141[489]];
  v148 = [v147 v141[489]];

  if (!v148)
  {
    v148 = [v914 v141[489]];
  }

  v149 = [v148 v141[489]];
  v912 = v148;
  if (v149)
  {
    v150 = v900;

    if (v148)
    {
      v151 = v148;
      v152 = [v151 objectID];
      v153 = [v152 URIRepresentation];

      v154 = v899;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v155 = 0;
    }

    else
    {
      v155 = 1;
      v154 = v899;
    }

    v165 = v903;
    v166 = *(v903 + 56);
    v166(v154, v155, 1, v150);
    v167 = [v914 objectID];
    v168 = [v167 URIRepresentation];

    v169 = v892;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v166(v169, 0, 1, v150);
    v170 = *(v898 + 48);
    v171 = v893;
    sub_100010364(v154, v893, &unk_1009441F0, &qword_100795760);
    sub_100010364(v169, v171 + v170, &unk_1009441F0, &qword_100795760);
    v172 = *(v165 + 48);
    if (v172(v171, 1, v150) == 1)
    {
      sub_1000050A4(v169, &unk_1009441F0, &qword_100795760);
      sub_1000050A4(v154, &unk_1009441F0, &qword_100795760);
      v173 = v172(v171 + v170, 1, v150);
      v174 = v912;
      if (v173 == 1)
      {
        sub_1000050A4(v171, &unk_1009441F0, &qword_100795760);
        goto LABEL_64;
      }
    }

    else
    {
      v175 = v889;
      sub_100010364(v171, v889, &unk_1009441F0, &qword_100795760);
      if (v172(v171 + v170, 1, v150) != 1)
      {
        v182 = v903;
        v183 = v171 + v170;
        v184 = v891;
        (*(v903 + 32))(v891, v183, v150);
        sub_1003A99EC(&unk_100944080, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v185 = dispatch thunk of static Equatable.== infix(_:_:)();
        v186 = *(v182 + 8);
        v186(v184, v150);
        sub_1000050A4(v169, &unk_1009441F0, &qword_100795760);
        sub_1000050A4(v899, &unk_1009441F0, &qword_100795760);
        v186(v175, v150);
        sub_1000050A4(v171, &unk_1009441F0, &qword_100795760);
        v174 = v912;
        if (v185)
        {
LABEL_64:
          v177 = Logger.logObject.getter();
          v187 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v177, v187))
          {
            v188 = swift_slowAlloc();
            *v188 = 0;
            _os_log_impl(&_mh_execute_header, v177, v187, "validateAndFixupReminderTree: Detected a loop in the new reminder tree. Multiple client may have raced. Going to fix the tree locally.", v188, 2u);
LABEL_68:

            goto LABEL_69;
          }

          goto LABEL_69;
        }

LABEL_60:
        v176 = v174;
        v177 = Logger.logObject.getter();
        v178 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v177, v178))
        {
          v179 = swift_slowAlloc();
          v180 = swift_slowAlloc();
          v920 = v180;
          *v179 = 136315138;
          if (v174)
          {
            v181 = [v176 remObjectID];
          }

          else
          {
            v181 = 0;
          }

          v915 = v181;
          sub_1000F5104(&unk_10093AF40, &unk_100795790);
          v189 = Optional.descriptionOrNil.getter();
          v191 = v190;

          v192 = sub_10000668C(v189, v191, &v920);
          v191, v193, v194, v195, v196, v197, v198, v199;
          *(v179 + 4) = v192;
          _os_log_impl(&_mh_execute_header, v177, v178, "validateAndFixupReminderTree: There seems to be a multi-layer subtask tree in the database because the new root had both parent and children. Totally unexpected because the save request should have been rejected. {rootID: %s}", v179, 0xCu);
          sub_10000607C(v180);

          goto LABEL_68;
        }

LABEL_69:

        goto LABEL_70;
      }

      sub_1000050A4(v169, &unk_1009441F0, &qword_100795760);
      sub_1000050A4(v899, &unk_1009441F0, &qword_100795760);
      (*(v903 + 8))(v175, v150);
      v174 = v912;
    }

    sub_1000050A4(v171, &unk_100944250, &qword_1007957B0);
    goto LABEL_60;
  }

LABEL_70:
  if (!v911)
  {
    v921 = _swiftEmptyDictionarySingleton;
    v211 = v912;
    if (!v912)
    {
      goto LABEL_87;
    }

    goto LABEL_84;
  }

  v200 = [v914 children];
  if (v200)
  {
    v201 = v200;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0, &protocol conformance descriptor for NSObject);
    v202 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v210 = (v202 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v202 + 16);
    v202, v203, v204, v205, v206, v207, v208, v209;
    if (v210)
    {
      v212 = v914;
      v213 = Logger.logObject.getter();
      v214 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v213, v214))
      {
        v215 = swift_slowAlloc();
        v216 = swift_slowAlloc();
        v920 = v216;
        *v215 = 136315138;
        v915 = [v212 remObjectID];
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v217 = String.init<A>(describing:)();
        v219 = v218;
        v220 = sub_10000668C(v217, v218, &v920);
        v219, v221, v222, v223, v224, v225, v226, v227;
        *(v215 + 4) = v220;
        _os_log_impl(&_mh_execute_header, v213, v214, "validateAndFixupReminderTree: There seems to be a multi-layer subtask tree in the database because the current reminder had both parent and children. Totally unexpected because the save request should have been rejected. {objectID: %s}", v215, 0xCu);
        sub_10000607C(v216);
      }
    }
  }

  v921 = _swiftEmptyDictionarySingleton;
  v228 = v911;
  v229 = Logger.logObject.getter();
  v230 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v229, v230))
  {
    v231 = swift_slowAlloc();
    *v231 = 0;
    _os_log_impl(&_mh_execute_header, v229, v230, "validateAndFixupReminderTree: Reminder has old root.", v231, 2u);
  }

  sub_100395CB0(v228);
  v211 = v912;
  if (v912)
  {
LABEL_84:
    v232 = v211;
    v233 = Logger.logObject.getter();
    v234 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v233, v234))
    {
      v235 = swift_slowAlloc();
      *v235 = 0;
      _os_log_impl(&_mh_execute_header, v233, v234, "validateAndFixupReminderTree: Reminder has new root.", v235, 2u);
    }

    sub_100395CB0(v232);
  }

LABEL_87:
  sub_100395CB0(v914);
  v236 = Logger.logObject.getter();
  v237 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v236, v237))
  {
    v238 = swift_slowAlloc();
    v239 = swift_slowAlloc();
    v920 = v239;
    *v238 = 136446210;
    swift_beginAccess();

    v248 = sub_1005303BC(v240, v241, v242, v243, v244, v245, v246, v247);
    v249 = Array.description.getter();
    v251 = v250;
    v248, v250, v252, v253, v254, v255, v256, v257;
    v258 = sub_10000668C(v249, v251, &v920);
    v251, v259, v260, v261, v262, v263, v264, v265;
    *(v238 + 4) = v258;
    _os_log_impl(&_mh_execute_header, v236, v237, "validateAndFixupReminderTree {potentiallyConnectedReminders: %{public}s}", v238, 0xCu);
    sub_10000607C(v239);
  }

  v266 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  swift_beginAccess();
  v267 = v921;

  sub_1003A66A8(v268, v901);
  v270 = v269;
  v911 = v267;
  v267, v271, v272, v273, v274, v275, v276, v277;

  v278 = Logger.logObject.getter();
  v279 = static os_log_type_t.default.getter();
  v270, v280, v281, v282, v283, v284, v285, v286;
  if (os_log_type_enabled(v278, v279))
  {
    v287 = swift_slowAlloc();
    v288 = swift_slowAlloc();
    v918 = v288;
    *v287 = 136446210;
    v289 = Dictionary.description.getter();
    v290 = v270;
    v292 = v291;
    v293 = sub_10000668C(v289, v291, &v918);
    v294 = v292;
    v270 = v290;
    v294, v295, v296, v297, v298, v299, v300, v301;
    *(v287 + 4) = v293;
    _os_log_impl(&_mh_execute_header, v278, v279, "validateAndFixupReminderTree {rootMap: %{public}s}", v287, 0xCu);
    sub_10000607C(v288);
  }

  v302 = v912;
  v303 = [v914 ckIdentifier];
  if (!v303)
  {
    goto LABEL_99;
  }

  v311 = v303;
  v312 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v314 = v313;

  v315 = sub_1003535B0(v312, v314, v270);
  if (!v316)
  {
    v388 = v314;
LABEL_98:
    v388, v316, v317, v318, v319, v320, v321, v322;
LABEL_99:
    v270, v304, v305, v306, v307, v308, v309, v310;
    v389 = v914;
    v390 = Logger.logObject.getter();
    v391 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v390, v391))
    {
      v399 = swift_slowAlloc();
      v400 = swift_slowAlloc();
      v918 = v400;
      *v399 = 136446210;
      v401 = [v389 ckIdentifier];
      if (v401)
      {
        v402 = v401;
        v403 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v405 = v404;
      }

      else
      {
        v403 = 7104878;
        v405 = 0xE300000000000000;
      }

      v406 = sub_10000668C(v403, v405, &v918);
      v405, v407, v408, v409, v410, v411, v412, v413;
      *(v399 + 4) = v406;
      _os_log_impl(&_mh_execute_header, v390, v391, "validateAndFixupReminderTree: Can't resolve the root of the reminder tree. {ckIdentifier: %{public}s}", v399, 0xCu);
      sub_10000607C(v400);

      v911, v414, v415, v416, v417, v418, v419, v420;
    }

    else
    {
      v911, v392, v393, v394, v395, v396, v397, v398;
    }

    goto LABEL_52;
  }

  v323 = v315;
  v909 = v266;
  v324 = v316;
  v325 = v911;
  v906 = sub_100353594();
  if (!v906)
  {
    v314, v326, v327, v328, v329, v330, v331, v332;
    v388 = v324;
    goto LABEL_98;
  }

  v333 = sub_1003A96EC(v325, v270, v323, v324);
  v325, v334, v335, v336, v337, v338, v339, v340;
  v895 = v270;
  v270, v341, v342, v343, v344, v345, v346, v347;
  v907 = v324;
  v324, v348, v349, v350, v351, v352, v353, v354;

  v355 = Logger.logObject.getter();
  v356 = static os_log_type_t.default.getter();

  v357 = os_log_type_enabled(v355, v356);
  v902 = v314;
  v905 = v333;
  if (v357)
  {
    v358 = swift_slowAlloc();
    v359 = swift_slowAlloc();
    v918 = v359;
    *v358 = 136446210;

    v368 = sub_1005303BC(v360, v361, v362, v363, v364, v365, v366, v367);
    v369 = Array.description.getter();
    v371 = v370;
    v368, v370, v372, v373, v374, v375, v376, v377;
    v378 = sub_10000668C(v369, v371, &v918);
    v379 = v371;
    v380 = v897;
    v379, v381, v382, v383, v384, v385, v386, v387;
    *(v358 + 4) = v378;
    _os_log_impl(&_mh_execute_header, v355, v356, "validateAndFixupReminderTree: {allConnectedReminders: %{public}s}", v358, 0xCu);
    sub_10000607C(v359);

    v314 = v902;
  }

  else
  {

    v380 = v897;
  }

  if ((v312 != v323 || v907 != v314) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v428 = [v906 ckParentReminderIdentifier];
    if (v428)
    {

      goto LABEL_113;
    }

LABEL_117:
    v440 = v906;
    v429 = v905;
    goto LABEL_119;
  }

  sub_10039646C();
  if (!v421)
  {
    goto LABEL_117;
  }

  v421, v421, v422, v423, v424, v425, v426, v427;
LABEL_113:
  v429 = v905;
  v430 = Logger.logObject.getter();
  v431 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v430, v431))
  {
    v432 = swift_slowAlloc();
    *v432 = 0;
    _os_log_impl(&_mh_execute_header, v430, v431, "validateAndFixupReminderTree: Detected a loop in reminder tree in CK server data. Selecting a stable root.", v432, 2u);
  }

  sub_100395658(v429);
  if (v433)
  {
    v440 = v434;
    v433, v433, v434, v435, v436, v437, v438, v439;
  }

  else
  {
    v440 = v914;
  }

LABEL_119:
  v441 = v440;
  v442 = [v441 objectID];
  v443 = [v442 URIRepresentation];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  __chkstk_darwin(v444, v445);
  *(&v882 - 2) = v380;

  sub_1002E1AFC(sub_1003A9A34, (&v882 - 4), v429);
  v447 = v446;
  v448 = v441;

  v449 = Logger.logObject.getter();
  v450 = static os_log_type_t.default.getter();
  v447, v451, v452, v453, v454, v455, v456, v457;

  v458 = os_log_type_enabled(v449, v450);
  v904 = v447;
  if (v458)
  {
    v459 = swift_slowAlloc();
    v910 = swift_slowAlloc();
    v918 = v910;
    *v459 = 136315394;
    v460 = [v448 remObjectID];
    v916 = v460;
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v461 = Optional.descriptionOrNil.getter();
    v463 = v462;

    v464 = sub_10000668C(v461, v463, &v918);
    v463, v465, v466, v467, v468, v469, v470, v471;
    *(v459 + 4) = v464;
    *(v459 + 12) = 2082;
    v472 = sub_100393C7C(v447);
    v893 = 0;
    v473 = Array.description.getter();
    v475 = v474;
    v472, v474, v476, v477, v478, v479, v480, v481;
    v482 = sub_10000668C(v473, v475, &v918);
    v475, v483, v484, v485, v486, v487, v488, v489;
    *(v459 + 14) = v482;
    _os_log_impl(&_mh_execute_header, v449, v450, "validateAndFixupReminderTree {resolvedRoot: %s, childReminders: %{public}s}", v459, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v893 = 0;
  }

  v490 = v900;
  v491 = v448;
  v492 = Logger.logObject.getter();
  v493 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v492, v493))
  {
    v494 = swift_slowAlloc();
    v495 = swift_slowAlloc();
    v918 = v495;
    *v494 = 136315138;
    v496 = [(RDXPCStorePerformer *)v491 remObjectID];
    v916 = v496;
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v497 = Optional.descriptionOrNil.getter();
    v499 = v498;

    v500 = sub_10000668C(v497, v499, &v918);
    v499, v501, v502, v503, v504, v505, v506, v507;
    *(v494 + 4) = v500;
    _os_log_impl(&_mh_execute_header, v492, v493, "validateAndFixupReminderTree: Going to update root. {objectID: %s}", v494, 0xCu);
    sub_10000607C(v495);
  }

  v508 = v897;
  v509 = v890;
  v510 = [(RDXPCStorePerformer *)v491 parentReminder];

  if (v510)
  {

    v511 = Logger.logObject.getter();
    v512 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v511, v512))
    {
      v513 = swift_slowAlloc();
      *v513 = 0;
      _os_log_impl(&_mh_execute_header, v511, v512, "validateAndFixupReminderTree: ...Updated {root.parent: nil}", v513, 2u);
    }

    [(RDXPCStorePerformer *)v491 setParentReminder:0];
  }

  v514 = [v914 list];
  if (!v514)
  {
    v514 = [(RDXPCStorePerformer *)v491 list];
  }

  v515 = [v914 objectID];
  v516 = [v515 URIRepresentation];

  v910 = v491;
  v517 = v891;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v515) = static URL.== infix(_:_:)();
  v518 = *(v903 + 8);
  v519 = v517;
  v520 = v910;
  v901 = (v903 + 8);
  v899 = v518;
  (v518)(v519, v490);
  v908 = v514;
  if ((v515 & 1) != 0 || ([(RDXPCStorePerformer *)v520 ckNeedsInitialFetchFromCloud]& 1) == 0)
  {
    if (([(RDXPCStorePerformer *)v520 markedForDeletion]& 1) != 0)
    {
      v521 = 0;
    }

    else
    {
      v522 = v514;
      v521 = v514;
    }

    v523 = v888;
    v524 = [(RDXPCStorePerformer *)v910 list];
    if (v524)
    {
      v525 = v524;
      v526 = [v524 objectID];
      v527 = [v526 URIRepresentation];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v528 = 0;
    }

    else
    {
      v528 = 1;
    }

    v529 = *(v903 + 56);
    v530 = 1;
    v529(v523, v528, 1, v490);
    if (v521)
    {
      v531 = v521;
      v532 = v521;
      v533 = [v532 objectID];
      v534 = [v533 URIRepresentation];

      v535 = v887;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v530 = 0;
    }

    else
    {
      v531 = 0;
      v535 = v887;
    }

    v529(v535, v530, 1, v490);
    v536 = *(v898 + 48);
    v537 = v523;
    v538 = v523;
    v539 = v886;
    sub_100010364(v537, v886, &unk_1009441F0, &qword_100795760);
    sub_100010364(v535, v539 + v536, &unk_1009441F0, &qword_100795760);
    v540 = *(v903 + 48);
    if (v540(v539, 1, v490) == 1)
    {
      sub_1000050A4(v535, &unk_1009441F0, &qword_100795760);
      sub_1000050A4(v538, &unk_1009441F0, &qword_100795760);
      if (v540(v539 + v536, 1, v490) == 1)
      {
        sub_1000050A4(v539, &unk_1009441F0, &qword_100795760);
        v520 = v910;
LABEL_156:
        v542 = v531;
LABEL_185:

        v508 = v897;
        v509 = v890;
        v514 = v908;
        goto LABEL_186;
      }
    }

    else
    {
      v541 = v885;
      sub_100010364(v539, v885, &unk_1009441F0, &qword_100795760);
      if (v540(v539 + v536, 1, v490) != 1)
      {
        v564 = v539 + v536;
        v565 = v891;
        (*(v903 + 32))(v891, v564, v490);
        sub_1003A99EC(&unk_100944080, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v566 = dispatch thunk of static Equatable.== infix(_:_:)();
        v567 = v899;
        (v899)(v565, v490);
        sub_1000050A4(v887, &unk_1009441F0, &qword_100795760);
        sub_1000050A4(v888, &unk_1009441F0, &qword_100795760);
        v567(v541, v490);
        sub_1000050A4(v539, &unk_1009441F0, &qword_100795760);
        v520 = v910;
        if (v566)
        {
          goto LABEL_156;
        }

LABEL_147:
        v542 = v531;
        v543 = Logger.logObject.getter();
        v544 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v543, v544))
        {
          v545 = swift_slowAlloc();
          v546 = swift_slowAlloc();
          v918 = v546;
          *v545 = 136315138;
          v898 = v531;
          if (v531)
          {
            v531 = [v542 remObjectID];
          }

          v916 = v531;
          sub_1000F5104(&unk_10093AF40, &unk_100795790);
          v547 = Optional.descriptionOrNil.getter();
          v549 = v548;

          v550 = sub_10000668C(v547, v549, &v918);
          v549, v551, v552, v553, v554, v555, v556, v557;
          *(v545 + 4) = v550;
          _os_log_impl(&_mh_execute_header, v543, v544, "validateAndFixupReminderTree: ...Updated {root.list: %s}", v545, 0xCu);
          sub_10000607C(v546);

          v490 = v900;
          v520 = v910;
          v531 = v898;
        }

        else
        {
        }

        if (!v531)
        {
          goto LABEL_184;
        }

        v558 = v542;
        v559 = [(RDXPCStorePerformer *)v520 ckZoneOwnerName];
        if (v559)
        {
          v560 = v559;
          v561 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v563 = v562;
        }

        else
        {
          v561 = 0;
          v563 = 0;
        }

        v568 = v558;
        v569 = [v568 ckZoneOwnerName];
        if (v569)
        {
          v577 = v569;
          v578 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v580 = v579;

          if (!v563)
          {
            if (!v580)
            {
              goto LABEL_182;
            }

            goto LABEL_167;
          }

          if (v580)
          {
            if (v561 == v578 && v563 == v580)
            {

              v563, v581, v582, v583, v584, v585, v586, v587;
              v580, v588, v589, v590, v591, v592, v593, v594;
LABEL_183:
              v490 = v900;
LABEL_184:
              [(RDXPCStorePerformer *)v520 setList:v542];
              goto LABEL_185;
            }

            v666 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v563, v667, v668, v669, v670, v671, v672, v673;
            v580, v674, v675, v676, v677, v678, v679, v680;
            if (v666)
            {
LABEL_182:

              goto LABEL_183;
            }

LABEL_168:
            v595 = 7104878;
            v918 = 0;
            v919 = 0xE000000000000000;
            _StringGuts.grow(_:)(109);
            v596._countAndFlagsBits = 0xD000000000000039;
            v596._object = 0x80000001007F6160;
            String.append(_:)(v596);
            v597 = [(RDXPCStorePerformer *)v520 remObjectID];
            if (v597)
            {
              v598 = v597;
              v599 = [v597 description];

              v600 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v602 = v601;
            }

            else
            {
              v602 = 0xE300000000000000;
              v600 = 7104878;
            }

            v603._countAndFlagsBits = v600;
            v603._object = v602;
            String.append(_:)(v603);
            v602, v604, v605, v606, v607, v608, v609, v610;
            v611._countAndFlagsBits = 0x4E72656E776F205DLL;
            v611._object = 0xEE00203D20656D61;
            String.append(_:)(v611);
            v612 = [(RDXPCStorePerformer *)v910 ckZoneOwnerName];
            if (v612)
            {
              v613 = v612;
              v614 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v616 = v615;
            }

            else
            {
              v614 = 0;
              v616 = 0;
            }

            v916 = v614;
            v917 = v616;
            sub_1000F5104(&unk_100939E40, &qword_100791BD0);
            v617._countAndFlagsBits = String.init<A>(describing:)();
            object = v617._object;
            String.append(_:)(v617);
            object, v619, v620, v621, v622, v623, v624, v625;
            v626._countAndFlagsBits = 0x467473696C202C29;
            v626._object = 0xEF5B746F6F52726FLL;
            String.append(_:)(v626);
            v627 = [v568 remObjectID];
            if (v627)
            {
              v628 = v627;
              v629 = [v627 description];

              v595 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v631 = v630;
            }

            else
            {
              v631 = 0xE300000000000000;
            }

            v632._countAndFlagsBits = v595;
            v632._object = v631;
            String.append(_:)(v632);
            v631, v633, v634, v635, v636, v637, v638, v639;
            v640._countAndFlagsBits = 0x72656E6E776F205DLL;
            v640._object = 0xEF203D20656D614ELL;
            String.append(_:)(v640);
            v641 = [v568 ckZoneOwnerName];

            if (v641)
            {
              v642 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v644 = v643;
            }

            else
            {
              v642 = 0;
              v644 = 0;
            }

            v520 = v910;
            v916 = v642;
            v917 = v644;
            v645._countAndFlagsBits = String.init<A>(describing:)();
            v646 = v645._object;
            String.append(_:)(v645);
            v646, v647, v648, v649, v650, v651, v652, v653;
            v654 = v919;
            v655 = objc_opt_self();
            v656 = String._bridgeToObjectiveC()();
            v657 = String._bridgeToObjectiveC()();
            v658 = String._bridgeToObjectiveC()();
            v654, v659, v660, v661, v662, v663, v664, v665;
            [v655 faultAndPromptToFileRadarWithICTap2RadarType:4 title:v656 description:v657 logMessage:v658];

            goto LABEL_183;
          }
        }

        else if (!v563)
        {
          goto LABEL_182;
        }

        v580 = v563;
LABEL_167:
        v580, v570, v571, v572, v573, v574, v575, v576;
        goto LABEL_168;
      }

      sub_1000050A4(v887, &unk_1009441F0, &qword_100795760);
      sub_1000050A4(v888, &unk_1009441F0, &qword_100795760);
      (v899)(v541, v490);
    }

    sub_1000050A4(v539, &unk_100944250, &qword_1007957B0);
    v520 = v910;
    goto LABEL_147;
  }

LABEL_186:
  if (v514)
  {
    v681 = v514;
    v682 = [v681 objectID];
    v683 = [v682 URIRepresentation];

    v684 = v894;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v685 = 0;
  }

  else
  {
    v685 = 1;
    v684 = v894;
  }

  v686 = v895;
  v687 = v903;
  (*(v903 + 56))(v684, v685, 1, v490);
  v918 = _swiftEmptySetSingleton;
  v688 = v896;
  (*(v687 + 16))(v896, v508, v490);
  sub_100010364(v684, v509, &unk_1009441F0, &qword_100795760);
  v689 = Logger.logObject.getter();
  v690 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v689, v690))
  {
    v691 = swift_slowAlloc();
    *v691 = 0;
    _os_log_impl(&_mh_execute_header, v689, v690, "validateAndFixupReminderTree: Going to update newly computed children.", v691, 2u);
    v688 = v896;
  }

  v692 = v688;
  v693 = v908;
  sub_1003A6A50(v904, &v918, v692, v520, v509, v908);
  v694 = [v914 parentReminder];
  if (v694)
  {

    v695 = [v914 children];
    if (v695)
    {
      v696 = v695;
      sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0, &protocol conformance descriptor for NSObject);
      v697 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v697 & 0xC000000000000001) != 0)
      {
        v705 = __CocoaSet.count.getter();
      }

      else
      {
        v705 = *(v697 + 16);
      }

      if (v705)
      {
        v706 = Logger.logObject.getter();
        v707 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v706, v707))
        {
          v708 = swift_slowAlloc();
          *v708 = 0;
          _os_log_impl(&_mh_execute_header, v706, v707, "validateAndFixupReminderTree: Going to update old children.", v708, 2u);
          v686 = v895;
        }

        v709 = sub_10027888C(v697);
        v697, v710, v711, v712, v713, v714, v715, v716;
        v693 = v908;
        sub_1003A6A50(v709, &v918, v896, v520, v509, v908);
      }

      else
      {
        v697, v698, v699, v700, v701, v702, v703, v704;
      }
    }
  }

  v717 = [(RDXPCStorePerformer *)v520 children];
  if (!v717)
  {

    v686, v771, v772, v773, v774, v775, v776, v777;

    v904, v778, v779, v780, v781, v782, v783, v784;
    goto LABEL_212;
  }

  v718 = v717;
  sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0, &protocol conformance descriptor for NSObject);
  v719 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  __chkstk_darwin(v720, v721);
  *(&v882 - 4) = &v918;
  *(&v882 - 3) = v508;
  *(&v882 - 2) = v894;

  v722 = v893;
  sub_1002E1C94(sub_1003A9A54, (&v882 - 6), v719);
  if (!v722)
  {
    v724 = v723;
    if (v723 >> 62)
    {
      v837 = _CocoaArrayWrapper.endIndex.getter();
      v725 = v910;
      if (v837)
      {
        goto LABEL_205;
      }
    }

    else
    {
      v725 = v910;
      if (*((v723 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_205:
        v726 = Logger.logObject.getter();
        v727 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v726, v727))
        {
          v728 = swift_slowAlloc();
          v729 = v490;
          v730 = v508;
          v731 = v509;
          v732 = v902;
          v733 = v686;
          v734 = v728;
          *v728 = 0;
          v719, v735, v736, v737, v738, v739, v740, v741;
          v904, v742, v743, v744, v745, v746, v747, v748;

          v907, v749, v750, v751, v752, v753, v754, v755;
          v756 = v732;
          v509 = v731;
          v508 = v730;
          v490 = v729;
          v756, v757, v758, v759, v760, v761, v762, v763;
          v733, v764, v765, v766, v767, v768, v769, v770;
          _os_log_impl(&_mh_execute_header, v726, v727, "validateAndFixupReminderTree: Going to update mismatched lists of remaining children attached to root.", v734, 2u);
        }

        else
        {

          v719, v792, v793, v794, v795, v796, v797, v798;
          v904, v799, v800, v801, v802, v803, v804, v805;

          v907, v806, v807, v808, v809, v810, v811, v812;
          v902, v813, v814, v815, v816, v817, v818, v819;
          v686, v820, v821, v822, v823, v824, v825, v826;
        }

        v827 = v896;
        v828 = v910;
        v829 = v908;
        sub_1003A6A50(v724, &v918, v896, v910, v509, v908);

        goto LABEL_213;
      }
    }

    v686, v838, v839, v840, v841, v842, v843, v844;

    v904, v845, v846, v847, v848, v849, v850, v851;
    v719, v852, v853, v854, v855, v856, v857, v858;

    v724, v859, v860, v861, v862, v863, v864, v865;
LABEL_212:
    v907, v785, v786, v787, v788, v789, v790, v791;
    v724 = v902;
    v827 = v896;
LABEL_213:
    v724, v830, v831, v832, v833, v834, v835, v836;
    sub_1000050A4(v509, &unk_1009441F0, &qword_100795760);
    v866 = v827;
    v867 = v899;
    (v899)(v866, v490);
    v918, v868, v869, v870, v871, v872, v873, v874;
    sub_1000050A4(v894, &unk_1009441F0, &qword_100795760);
    v867(v508, v490);
    v911, v875, v876, v877, v878, v879, v880, v881;
    goto LABEL_52;
  }

  sub_1000050A4(v509, &unk_1009441F0, &qword_100795760);
  (v899)(v896, v490);
  __break(1u);
}

id REMCDReminder.ckServerRecord.getter()
{
  v2.super_class = REMCDReminder;
  v0 = objc_msgSendSuper2(&v2, "ckServerRecord");

  return v0;
}

void REMCDReminder.ckServerRecord.setter(void *a1)
{
  v2.super_class = REMCDReminder;
  objc_msgSendSuper2(&v2, "setCkServerRecord:", a1);
  sub_10039DAE4();
}

double sub_10039DAE4()
{
  v1 = v0;
  v2 = [v0 ckServerRecord];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10039646C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = [v1 ckParentReminderIdentifier];
  if (v7)
  {
    v9 = v7;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (!v6)
    {
      v37 = 0;
      goto LABEL_15;
    }

    if (v10 == v4 && v6 == v12)
    {
      v6, v13, v14, v15, v16, v17, v18, v19;
      v36 = v12;
      goto LABEL_19;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v12, v22, v23, v24, v25, v26, v27, v28;
    if (v21)
    {
      v36 = v6;
LABEL_19:

      v36, v29, v30, v31, v32, v33, v34, v35;
      return result;
    }
  }

  else if (!v6)
  {
    return result;
  }

  v37 = String._bridgeToObjectiveC()();
  v12 = v6;
LABEL_15:
  v12, v13, v14, v15, v16, v17, v18, v19;
  [v1 setCkParentReminderIdentifier:v37];

  return result;
}

CKRecord_optional __swiftcall REMCDReminder.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v370 = &v359 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v400 = &v359 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v399 = &v359 - v11;
  v398 = type metadata accessor for URL();
  v12 = *(v398 - 8);
  __chkstk_darwin(v398, v13);
  v369 = &v359 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v15 - 8, v16);
  v397 = &v359 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v396 = &v359 - v20;
  v402 = type metadata accessor for REMFeatureFlags();
  v21 = *(v402 - 8);
  __chkstk_darwin(v402, v22);
  v401 = &v359 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v24 - 8, v25);
  v27 = &v359 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v395 = &v359 - v30;
  __chkstk_darwin(v31, v32);
  v394 = &v359 - v33;
  __chkstk_darwin(v34, v35);
  v393 = &v359 - v36;
  __chkstk_darwin(v37, v38);
  v392 = &v359 - v39;
  __chkstk_darwin(v40, v41);
  v391 = &v359 - v42;
  __chkstk_darwin(v43, v44);
  v390 = &v359 - v45;
  __chkstk_darwin(v46, v47);
  v389 = &v359 - v48;
  __chkstk_darwin(v49, v50);
  v388 = &v359 - v51;
  __chkstk_darwin(v52, v53);
  v387 = &v359 - v54;
  __chkstk_darwin(v55, v56);
  v386 = &v359 - v57;
  *&v60 = __chkstk_darwin(v58, v59).n128_u64[0];
  v385 = &v359 - v61;
  v408.receiver = v1;
  v408.super_class = REMCDReminder;
  v62 = objc_msgSendSuper2(&v408, "newlyCreatedRecord", v60);
  v64 = v62;
  if (!v62)
  {
LABEL_210:
    isUniquelyReferenced_nonNull_native = v64;
    goto LABEL_220;
  }

  v382 = v2;
  v65 = 0;
  v373 = "markedForDeletion";
  v371 = "TitleDocumentAsset";
  v361 = "notesDocumentAsset";
  v381 = enum case for REMFeatureFlags.urgentAlert(_:);
  v384 = (v21 + 104);
  v383 = (v21 + 8);
  v367 = enum case for REMFeatureFlags.urgentAlertCloudKit(_:);
  v372 = "RecurrenceRuleIDs";
  v380 = "LinkUpdateRequestDate";
  v379 = (v12 + 56);
  v378 = (v12 + 48);
  v366 = (v12 + 16);
  v365 = (v12 + 8);
  v377 = "NotesDocumentAsset";
  v376 = (v3 + 56);
  v375 = (v3 + 48);
  v364 = (v3 + 16);
  v363 = (v3 + 8);
  v374 = "DueDateDeltaAlertsData";
  v403 = v27;
  v404 = v62;
  v368 = v1;
  while (2)
  {
    v67 = &off_1008DE238 + v65++;
    switch(v67[32])
    {
      case 1:
        v160 = [v1 allDay];
        *(&v406 + 1) = &type metadata for Bool;
        v407 = &protocol witness table for Bool;
        LOBYTE(v405) = v160;
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        goto LABEL_4;
      case 2:
        v165 = [v64 encryptedValues];
        v166 = [v1 alternativeDisplayDateDate_forCalendar];
        if (v166)
        {
          v167 = v386;
          v168 = v166;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v169 = 0;
        }

        else
        {
          v169 = 1;
          v167 = v386;
        }

        v259 = type metadata accessor for Date();
        v260 = *(v259 - 8);
        (*(v260 + 56))(v167, v169, 1, v259);
        v261 = v385;
        sub_100031B58(v167, v385, &unk_100938850, qword_100795AE0);
        if ((*(v260 + 48))(v261, 1, v259) == 1)
        {
          sub_1000050A4(v261, &unk_100938850, qword_100795AE0);
          v405 = 0u;
          v406 = 0u;
          v407 = 0;
        }

        else
        {
          *(&v406 + 1) = v259;
          v407 = &protocol witness table for Date;
          v262 = sub_1000103CC(&v405);
          (*(v260 + 32))(v262, v261, v259);
        }

        goto LABEL_161;
      case 3:
        v120 = [v1 attachments];
        if (!v120)
        {
          v109 = &_swiftEmptyArrayStorage;
          goto LABEL_204;
        }

        *&v405 = v120;
        v121 = v120;
        sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
        sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
        sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
        v362 = v121;
        isUniquelyReferenced_nonNull_native = Sequence.elements<A>(ofType:)();
        v105 = isUniquelyReferenced_nonNull_native;
        v122 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
        if (isUniquelyReferenced_nonNull_native >> 62)
        {
          isUniquelyReferenced_nonNull_native = _CocoaArrayWrapper.endIndex.getter();
          v123 = isUniquelyReferenced_nonNull_native;
          if (!isUniquelyReferenced_nonNull_native)
          {
LABEL_206:
            v109 = &_swiftEmptyArrayStorage;
            goto LABEL_203;
          }
        }

        else
        {
          v123 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v123)
          {
            goto LABEL_206;
          }
        }

        v124 = 0;
        v109 = &_swiftEmptyArrayStorage;
        do
        {
          v125 = v124;
          while (1)
          {
            if ((v105 & 0xC000000000000001) != 0)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v125 >= *(v122 + 16))
              {
                goto LABEL_213;
              }

              isUniquelyReferenced_nonNull_native = *(v105 + 8 * v125 + 32);
            }

            v126 = isUniquelyReferenced_nonNull_native;
            v124 = v125 + 1;
            if (__OFADD__(v125, 1))
            {
              goto LABEL_212;
            }

            v127 = [isUniquelyReferenced_nonNull_native ckIdentifier];
            if (v127)
            {
              break;
            }

            ++v125;
            if (v124 == v123)
            {
              goto LABEL_203;
            }
          }

          v128 = v127;
          v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v360 = v130;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_100365788(0, *v109->clientIdentity + 1, 1, v109, v101, v102, v103, v104);
            v109 = isUniquelyReferenced_nonNull_native;
          }

          v132 = *v109->clientIdentity;
          v131 = *&v109->clientIdentity[8];
          if (v132 >= v131 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_100365788((v131 > 1), v132 + 1, 1, v109, v101, v102, v103, v104);
            v109 = isUniquelyReferenced_nonNull_native;
          }

          *v109->clientIdentity = v132 + 1;
          v133 = v109 + 16 * v132;
          v134 = v360;
          *(v133 + 4) = v129;
          *(v133 + 5) = v134;
          v1 = v368;
        }

        while (v124 != v123);
LABEL_203:
        v105, v63, v99, v100, v101, v102, v103, v104;
        v349 = v362;

        v27 = v403;
        v64 = v404;
        goto LABEL_204;
      case 4:
        v135 = [v1 assignments];
        if (v135)
        {
          v136 = v135;
          sub_1000060C8(0, &unk_10093F790, off_1008D4158);
          sub_10000CDE4(&qword_10093CC38, &unk_10093F790, off_1008D4158, &protocol conformance descriptor for NSObject);
          v137 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v137 = _swiftEmptySetSingleton;
        }

        sub_1003950EC(v137, &unk_10093F790, off_1008D4158, &qword_10093CC38);
        v221 = v220;
        v137, v222, v223, v224, v225, v226, v227, v228;
        v229 = objc_allocWithZone(NSOrderedSet);
        isa = Set._bridgeToObjectiveC()().super.isa;
        v221, v231, v232, v233, v234, v235, v236, v237;
        v238 = [v229 initWithSet:isa];

        v239 = sub_1004EB4B0(v238);
        if (v239)
        {
          goto LABEL_125;
        }

        v407 = 0;
        v405 = 0u;
        v406 = 0u;
        goto LABEL_137;
      case 5:
        [v64 encryptedValues];
        v87 = [v1 batchCreationID];
        if (v87)
        {
          v88 = v400;
          v89 = v87;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v90 = 0;
        }

        else
        {
          v90 = 1;
          v88 = v400;
        }

        v214 = v382;
        (*v376)(v88, v90, 1, v382);
        v215 = v399;
        sub_100031B58(v88, v399, &unk_100939D90, "8\n\r");
        if ((*v375)(v215, 1, v214))
        {
          sub_1000050A4(v215, &unk_100939D90, "8\n\r");
          v405 = 0u;
          v406 = 0u;
          v407 = 0;
        }

        else
        {
          v216 = v370;
          (*v364)(v370, v215, v214);
          sub_1000050A4(v215, &unk_100939D90, "8\n\r");
          v217 = UUID.uuidString.getter();
          v219 = v218;
          (*v363)(v216, v214);
          *(&v406 + 1) = &type metadata for String;
          v407 = &protocol witness table for String;
          *&v405 = v217;
          *(&v405 + 1) = v219;
        }

        goto LABEL_161;
      case 6:
        v148 = [v1 completed];
        *(&v406 + 1) = &type metadata for Bool;
        v407 = &protocol witness table for Bool;
        LOBYTE(v405) = v148;
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        goto LABEL_4;
      case 7:
        v79 = [v1 completionDate];
        if (v79)
        {
          v80 = v388;
          v81 = v79;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v82 = 0;
        }

        else
        {
          v82 = 1;
          v80 = v388;
        }

        v207 = type metadata accessor for Date();
        v208 = *(v207 - 8);
        (*(v208 + 56))(v80, v82, 1, v207);
        v209 = v387;
        sub_100031B58(v80, v387, &unk_100938850, qword_100795AE0);
        if ((*(v208 + 48))(v209, 1, v207) != 1)
        {
          goto LABEL_136;
        }

        goto LABEL_135;
      case 8:
        v138 = [v1 contactHandles];
        if (v138)
        {
          v139 = v138;
          v140 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v142 = v141;

          [v64 encryptedValues];
          sub_100029344(v140, v142);
          v143 = Data._bridgeToObjectiveC()().super.isa;
          v144 = [objc_opt_self() representationFromData:v143];

          sub_10001BBA0(v140, v142);
          if (v144 && (v145 = sub_1001E1880(), v147 = v146, v144, v147))
          {
            *(&v406 + 1) = &type metadata for String;
            v407 = &protocol witness table for String;
            *&v405 = v145;
            *(&v405 + 1) = v147;
          }

          else
          {
            v407 = 0;
            v405 = 0u;
            v406 = 0u;
          }

          v27 = v403;
          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.setter();
          sub_10001BBA0(v140, v142);
          swift_unknownObjectRelease();
          v64 = v404;
        }

        else
        {
          v240 = [v64 encryptedValues];
          v241 = String._bridgeToObjectiveC()();
          [v240 setObject:0 forKeyedSubscript:v241];
          swift_unknownObjectRelease();
        }

        goto LABEL_5;
      case 9:
        v170 = [v1 creationDate];
        if (v170)
        {
          v171 = v390;
          v172 = v170;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v173 = 0;
        }

        else
        {
          v173 = 1;
          v171 = v390;
        }

        v207 = type metadata accessor for Date();
        v208 = *(v207 - 8);
        (*(v208 + 56))(v171, v173, 1, v207);
        v209 = v389;
        sub_100031B58(v171, v389, &unk_100938850, qword_100795AE0);
        if ((*(v208 + 48))(v209, 1, v207) == 1)
        {
          goto LABEL_135;
        }

        goto LABEL_136;
      case 10:
        v83 = [v1 dueDate];
        if (v83)
        {
          v84 = v392;
          v85 = v83;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v86 = 0;
        }

        else
        {
          v86 = 1;
          v84 = v392;
        }

        v210 = type metadata accessor for Date();
        v211 = *(v210 - 8);
        (*(v211 + 56))(v84, v86, 1, v210);
        v212 = v391;
        sub_100031B58(v84, v391, &unk_100938850, qword_100795AE0);
        if ((*(v211 + 48))(v212, 1, v210) == 1)
        {
          sub_1000050A4(v212, &unk_100938850, qword_100795AE0);
          v405 = 0u;
          v406 = 0u;
          v407 = 0;
        }

        else
        {
          *(&v406 + 1) = v210;
          v407 = &protocol witness table for Date;
          v213 = sub_1000103CC(&v405);
          (*(v211 + 32))(v213, v212, v210);
        }

        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        goto LABEL_4;
      case 11:
        v149 = [v64 encryptedValues];
        v150 = [v1 dueDateDeltaAlertsData];
        if (v150)
        {
          goto LABEL_98;
        }

        v407 = 0;
        v405 = 0u;
        v406 = 0u;
        goto LABEL_161;
      case 12:
        v183 = [v1 flagged];
        *(&v406 + 1) = &type metadata for Int64;
        v407 = &protocol witness table for Int64;
        *&v405 = v183;
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        goto LABEL_4;
      case 13:
        if (([v1 isOwnedByCurrentUser] & 1) == 0)
        {
          goto LABEL_5;
        }

        v94 = [v1 hashtags];
        if (v94)
        {
          v95 = v94;
          sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
          sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190, &protocol conformance descriptor for NSObject);
          v96 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v96 = _swiftEmptySetSingleton;
        }

        sub_1003950EC(v96, &qword_10093CFE0, off_1008D4190, &qword_10093B280);
        v275 = v274;
        v96, v276, v277, v278, v279, v280, v281, v282;
        v283 = objc_allocWithZone(NSOrderedSet);
        v284 = Set._bridgeToObjectiveC()().super.isa;
        v275, v285, v286, v287, v288, v289, v290, v291;
        v292 = [v283 initWithSet:v284];

        v239 = sub_1004EB4B0(v292);
        if (v239)
        {
LABEL_125:
          *(&v406 + 1) = sub_1000F5104(&unk_10093B300, &unk_100797780);
          v407 = sub_1003A9970();
          *&v405 = v239;
        }

        else
        {
          v407 = 0;
          v405 = 0u;
          v406 = 0u;
        }

        goto LABEL_137;
      case 14:
        [v64 encryptedValues];
        v193 = [v1 icsUrl];
        if (v193)
        {
          v194 = v397;
          v195 = v193;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v196 = 0;
        }

        else
        {
          v196 = 1;
          v194 = v397;
        }

        v263 = v398;
        (*v379)(v194, v196, 1, v398);
        v264 = v194;
        v265 = v396;
        sub_100031B58(v264, v396, &unk_1009441F0, &qword_100795760);
        if ((*v378)(v265, 1, v263))
        {
          sub_1000050A4(v265, &unk_1009441F0, &qword_100795760);
          v405 = 0u;
          v406 = 0u;
          v407 = 0;
        }

        else
        {
          v266 = v369;
          (*v366)(v369, v265, v263);
          sub_1000050A4(v265, &unk_1009441F0, &qword_100795760);
          v267 = URL.absoluteString.getter();
          v269 = v268;
          (*v365)(v266, v263);
          *(&v406 + 1) = &type metadata for String;
          v407 = &protocol witness table for String;
          *&v405 = v267;
          *(&v405 + 1) = v269;
        }

        goto LABEL_161;
      case 15:
        v151 = [v64 encryptedValues];
        v150 = [v1 importedICSData];
        if (v150)
        {
          goto LABEL_98;
        }

        v407 = 0;
        v405 = 0u;
        v406 = 0u;
        goto LABEL_161;
      case 16:
        v161 = [v1 lastModifiedDate];
        if (v161)
        {
          v162 = v394;
          v163 = v161;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v164 = 0;
        }

        else
        {
          v164 = 1;
          v162 = v394;
        }

        v207 = type metadata accessor for Date();
        v208 = *(v207 - 8);
        (*(v208 + 56))(v162, v164, 1, v207);
        v209 = v393;
        sub_100031B58(v162, v393, &unk_100938850, qword_100795AE0);
        if ((*(v208 + 48))(v209, 1, v207) == 1)
        {
          goto LABEL_135;
        }

        goto LABEL_136;
      case 17:
        v184 = [v1 list];
        if (v184 && (v185 = v184, v186 = [v184 recordID], v185, v186))
        {
          v187 = [v64 recordID];
          v188 = [v187 zoneID];

          v189 = [v186 zoneID];
          v190 = [v188 isEqual:v189];

          if (v190)
          {
            v191 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v186];

            if (v191)
            {
              v192 = v191;
            }
          }

          else
          {

            v191 = 0;
          }
        }

        else
        {
          v191 = 0;
        }

        CKRecord.subscript.setter();

        goto LABEL_5;
      case 18:
        v152 = [v1 notesDocument];
        if (!v152)
        {
          v73 = 0;
          v75 = 0xF000000000000000;
LABEL_191:
          v304 = v404;
          CKRecord.subscript.setter();
          v305 = [v304 encryptedValues];
          if (v75 >> 60 == 15)
          {
            v407 = 0;
            v405 = 0u;
            v406 = 0u;
          }

          else
          {
            *(&v406 + 1) = &type metadata for Data;
            v407 = &protocol witness table for Data;
            *&v405 = v73;
            *(&v405 + 1) = v75;
          }

LABEL_194:
          swift_getObjectType();
          sub_1001CB4B8(v73, v75);
          CKRecordKeyValueSetting.subscript.setter();
          sub_100031A14(v73, v75);
          swift_unknownObjectRelease();
          v64 = v404;
          goto LABEL_5;
        }

        v153 = v152;
        v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v154;

        v155 = v75 >> 62;
        if ((v75 >> 62) > 1)
        {
          if (v155 == 2)
          {
            v273 = *(v73 + 16);
            v272 = *(v73 + 24);
            v156 = v272 - v273;
            if (__OFSUB__(v272, v273))
            {
              goto LABEL_216;
            }
          }

          else
          {
            v156 = 0;
          }
        }

        else if (v155)
        {
          if (__OFSUB__(HIDWORD(v73), v73))
          {
            goto LABEL_218;
          }

          v156 = HIDWORD(v73) - v73;
        }

        else
        {
          v156 = BYTE6(v75);
        }

        v297 = [objc_opt_self() sharedConfiguration];
        v298 = [v297 maxInlineAssetSizeBytes];

        if (v156 < 1 || v298 >> 1 >= v156)
        {
          goto LABEL_191;
        }

LABEL_190:
        v299 = objc_opt_self();
        v300 = Data._bridgeToObjectiveC()().super.isa;
        v301 = [v299 assetForData:v300];

        v302 = v404;
        CKRecord.subscript.setter();
        CKRecord.subscript.setter();
        v303 = v75;
        v64 = v302;
        sub_10001BBA0(v73, v303);
        goto LABEL_5;
      case 19:
      case 27:
        goto LABEL_5;
      case 20:
        v157 = [v1 parentReminder];
        if (v157)
        {
          v158 = v157;
          v159 = [v157 recordID];
        }

        else
        {
          v159 = 0;
        }

        v242 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v159];

        CKRecord.subscript.setter();
        goto LABEL_5;
      case 21:
        v174 = *v384;
        v176 = v401;
        v175 = v402;
        (*v384)(v401, v381, v402);
        v177 = REMFeatureFlags.isEnabled.getter();
        v178 = *v383;
        (*v383)(v176, v175);
        if ((v177 & 1) == 0)
        {
          goto LABEL_5;
        }

        v180 = v401;
        v179 = v402;
        v174(v401, v367, v402);
        v181 = REMFeatureFlags.isEnabled.getter();
        v178(v180, v179);
        if ((v181 & 1) == 0)
        {
          goto LABEL_5;
        }

        v182 = [v1 prefersUrgentPresentationStyleForDateAlarms];
        *(&v406 + 1) = &type metadata for Bool;
        v407 = &protocol witness table for Bool;
        LOBYTE(v405) = v182;
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        goto LABEL_4;
      case 22:
        v66 = [v1 priority];
        *(&v406 + 1) = &type metadata for Int64;
        v407 = &protocol witness table for Int64;
        *&v405 = v66;
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        goto LABEL_4;
      case 23:
        v97 = [v1 recurrenceRules];
        if (!v97)
        {
          v109 = &_swiftEmptyArrayStorage;
LABEL_204:
          *(&v406 + 1) = sub_1000F5104(&unk_10093B300, &unk_100797780);
          v407 = sub_1003A9970();
          *&v405 = v109;
          sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
LABEL_4:
          CKRecordKeyValueSetting.subscript.setter();
LABEL_5:
          if (v65 == 29)
          {
            goto LABEL_210;
          }

          continue;
        }

        *&v405 = v97;
        v98 = v97;
        sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
        sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
        sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
        v362 = v98;
        isUniquelyReferenced_nonNull_native = Sequence.elements<A>(ofType:)();
        v105 = isUniquelyReferenced_nonNull_native;
        v106 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
        if (!(isUniquelyReferenced_nonNull_native >> 62))
        {
          v107 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v107)
          {
            goto LABEL_27;
          }

LABEL_202:
          v109 = &_swiftEmptyArrayStorage;
          goto LABEL_203;
        }

        isUniquelyReferenced_nonNull_native = _CocoaArrayWrapper.endIndex.getter();
        v107 = isUniquelyReferenced_nonNull_native;
        if (!isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_202;
        }

LABEL_27:
        v108 = 0;
        v109 = &_swiftEmptyArrayStorage;
LABEL_28:
        v110 = v108;
        while (1)
        {
          if ((v105 & 0xC000000000000001) != 0)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v110 >= *(v106 + 16))
            {
              goto LABEL_214;
            }

            isUniquelyReferenced_nonNull_native = *(v105 + 8 * v110 + 32);
          }

          v111 = isUniquelyReferenced_nonNull_native;
          v108 = v110 + 1;
          if (__OFADD__(v110, 1))
          {
            break;
          }

          v112 = [isUniquelyReferenced_nonNull_native ckIdentifier];
          if (v112)
          {
            v113 = v112;
            v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v360 = v115;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_100365788(0, *v109->clientIdentity + 1, 1, v109, v101, v102, v103, v104);
              v109 = isUniquelyReferenced_nonNull_native;
            }

            v117 = *v109->clientIdentity;
            v116 = *&v109->clientIdentity[8];
            if (v117 >= v116 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_100365788((v116 > 1), v117 + 1, 1, v109, v101, v102, v103, v104);
              v109 = isUniquelyReferenced_nonNull_native;
            }

            *v109->clientIdentity = v117 + 1;
            v118 = v109 + 16 * v117;
            v119 = v360;
            *(v118 + 4) = v114;
            *(v118 + 5) = v119;
            v1 = v368;
            if (v108 == v107)
            {
              goto LABEL_203;
            }

            goto LABEL_28;
          }

          ++v110;
          if (v108 == v107)
          {
            goto LABEL_203;
          }
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
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        result.is_nil = v63;
        result.value.super.isa = isUniquelyReferenced_nonNull_native;
        return result;
      case 24:
        v91 = [v1 startDate];
        if (v91)
        {
          v92 = v91;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v93 = 0;
        }

        else
        {
          v93 = 1;
        }

        v207 = type metadata accessor for Date();
        v208 = *(v207 - 8);
        (*(v208 + 56))(v27, v93, 1, v207);
        v209 = v395;
        sub_100031B58(v27, v395, &unk_100938850, qword_100795AE0);
        if ((*(v208 + 48))(v209, 1, v207) == 1)
        {
LABEL_135:
          sub_1000050A4(v209, &unk_100938850, qword_100795AE0);
          v405 = 0u;
          v406 = 0u;
          v407 = 0;
        }

        else
        {
LABEL_136:
          *(&v406 + 1) = v207;
          v407 = &protocol witness table for Date;
          v243 = sub_1000103CC(&v405);
          (*(v208 + 32))(v243, v209, v207);
        }

        goto LABEL_137;
      case 25:
        v202 = [v1 timeZone];
        if (v202)
        {
          v203 = v202;
          v204 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v206 = v205;

          *(&v406 + 1) = &type metadata for String;
          v407 = &protocol witness table for String;
          *&v405 = v204;
          *(&v405 + 1) = v206;
        }

        else
        {
          v407 = 0;
          v405 = 0u;
          v406 = 0u;
        }

LABEL_137:
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        goto LABEL_4;
      case 26:
        v71 = [v1 titleDocument];
        if (!v71)
        {
          v73 = 0;
          v75 = 0xF000000000000000;
LABEL_182:
          v295 = v404;
          CKRecord.subscript.setter();
          v296 = [v295 encryptedValues];
          if (v75 >> 60 == 15)
          {
            v407 = 0;
            v405 = 0u;
            v406 = 0u;
          }

          else
          {
            *(&v406 + 1) = &type metadata for Data;
            v407 = &protocol witness table for Data;
            *&v405 = v73;
            *(&v405 + 1) = v75;
          }

          goto LABEL_194;
        }

        v72 = v71;
        v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v74;

        v77 = v75 >> 62;
        if ((v75 >> 62) > 1)
        {
          if (v77 == 2)
          {
            v271 = *(v73 + 16);
            v270 = *(v73 + 24);
            v78 = v270 - v271;
            if (__OFSUB__(v270, v271))
            {
              goto LABEL_217;
            }
          }

          else
          {
            v78 = 0;
          }
        }

        else if (v77)
        {
          if (__OFSUB__(HIDWORD(v73), v73))
          {
            goto LABEL_219;
          }

          v78 = HIDWORD(v73) - v73;
        }

        else
        {
          v78 = BYTE6(v75);
        }

        v293 = [objc_opt_self() sharedConfiguration];
        v294 = [v293 maxInlineAssetSizeBytes];

        if (v78 < 1 || v294 >> 1 >= v78)
        {
          goto LABEL_182;
        }

        goto LABEL_190;
      case 28:
        v197 = [v64 encryptedValues];
        v150 = [v1 userActivity];
        if (v150)
        {
LABEL_98:
          v198 = v150;
          v199 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v201 = v200;

          *(&v406 + 1) = &type metadata for Data;
          v407 = &protocol witness table for Data;
          *&v405 = v199;
          *(&v405 + 1) = v201;
        }

        else
        {
          v407 = 0;
          v405 = 0u;
          v406 = 0u;
        }

LABEL_161:
        swift_getObjectType();
        CKRecordKeyValueSetting.subscript.setter();
        swift_unknownObjectRelease();
        goto LABEL_5;
      default:
        v68 = [objc_opt_self() daemonUserDefaults];
        v69 = [v68 cloudKitMaxNumAlarmIDsInReminderCKRecordDebugOverride];

        if (v69)
        {
          v70 = [v69 integerValue];
        }

        else
        {
          v69 = [objc_opt_self() sharedConfiguration];
          v70 = [v69 alarmIDsLimitPerReminder];
        }

        v244 = v70;

        if (v244 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v245 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v245 = v244;
        }

        v246 = [v1 alarmStorage];
        v247 = sub_1004EB4B0(v246);

        if (!v247)
        {
          goto LABEL_208;
        }

        if (v244 >= *v247->clientIdentity)
        {
          goto LABEL_200;
        }

        if (qword_100935F38 != -1)
        {
          swift_once();
        }

        v248 = type metadata accessor for Logger();
        sub_100006654(v248, qword_1009441D0);
        swift_bridgeObjectRetain_n();
        v249 = v1;
        v250 = Logger.logObject.getter();
        v251 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v250, v251))
        {
          LODWORD(v360) = v251;
          v252 = swift_slowAlloc();
          v359 = swift_slowAlloc();
          *&v405 = v359;
          *v252 = 136446978;
          v253 = [v249 remObjectID];
          v362 = v245;
          if (v253)
          {
            v254 = v253;
            v255 = [v253 description];

            v256 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v258 = v257;
          }

          else
          {
            v258 = 0xE300000000000000;
            v256 = 7104878;
          }

          v306 = sub_10000668C(v256, v258, &v405);
          v258, v307, v308, v309, v310, v311, v312, v313;
          *(v252 + 4) = v306;
          *(v252 + 12) = 2082;
          v314 = sub_1004D7318();
          v316 = v315;
          v317 = sub_10000668C(v314, v315, &v405);
          v316, v318, v319, v320, v321, v322, v323, v324;
          *(v252 + 14) = v317;
          *(v252 + 22) = 2048;
          v325 = *v247->clientIdentity;
          v247, v326, v327, v328, v329, v330, v331, v332;
          *(v252 + 24) = v325;
          v247, v333, v334, v335, v336, v337, v338, v339;
          *(v252 + 32) = 2048;
          v245 = v362;
          *(v252 + 34) = v362;
          _os_log_impl(&_mh_execute_header, v250, v360, "Create Reminder CK record {self: %{public}s %{public}s} has %ld alarms exceeding limit %ld", v252, 0x2Au);
          swift_arrayDestroy();

          v1 = v368;
        }

        else
        {

          isUniquelyReferenced_nonNull_native = swift_bridgeObjectRelease_n();
        }

        v340 = *v247->clientIdentity;
        v27 = v403;
        if (v244 > v340)
        {
          goto LABEL_215;
        }

        v341 = swift_unknownObjectRetain();
        v341, v342, v343, v344, v345, v346, v347, v348;
        if (v244 == v340 || (sub_1002781A0(v247, &v247->clientIdentity[16], 0, (2 * v245) | 1), v351 = v350, v247, v352, v353, v354, v355, v356, v357, v358, (v247 = v351) != 0))
        {
LABEL_200:
          *(&v406 + 1) = sub_1000F5104(&unk_10093B300, &unk_100797780);
          v407 = sub_1003A9970();
          *&v405 = v247;
        }

        else
        {
LABEL_208:
          v407 = 0;
          v405 = 0u;
          v406 = 0u;
        }

        v64 = v404;
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        goto LABEL_4;
    }
  }
}

void __swiftcall REMCDReminder.parentCloud()(REMCDObject_optional *__return_ptr retstr)
{
  v2 = [v1 list];

  v3 = v2;
}

void __swiftcall REMCDReminder.existingLocalObjectToMerge(with:)(REMCDObject_optional *__return_ptr retstr, NSPredicate_optional *with)
{
  v3 = v2;
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v146 - v7;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v13, v14).n128_u64[0];
  v17 = &v146 - v16;
  v18 = [v3 managedObjectContext];
  if (!v18)
  {
    return;
  }

  v19 = v18;
  if ([v3 isConcealed])
  {
    if (qword_100935F38 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_1009441D0);
    v21 = v3;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      *v24 = 136446466;
      v25 = [v21 remObjectID];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 description];

        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;
      }

      else
      {
        v28 = 7104878;
        v30 = 0xE300000000000000;
      }

      v44 = sub_10000668C(v28, v30, &v149);
      v30, v45, v46, v47, v48, v49, v50, v51;
      *(v24 + 4) = v44;
      *(v24 + 12) = 2082;
      v52 = sub_1004D7318();
      v54 = v53;
      v55 = sub_10000668C(v52, v53, &v149);
      v54, v56, v57, v58, v59, v60, v61, v62;
      *(v24 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v22, v23, "MERGE.LOCAL: ...Should not attempt to find existing local object for this concealed reminder, race condition? {self: %{public}s %{public}s}", v24, 0x16u);
      swift_arrayDestroy();
    }

LABEL_17:
    return;
  }

  v31 = [v3 parentReminder];
  if (v31)
  {
    v32 = v31;

    return;
  }

  v33 = [v3 title];
  if (!v33)
  {
    goto LABEL_17;
  }

  v34 = v33;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v149 = &_swiftEmptyArrayStorage;
  KeyPath = swift_getKeyPath();
  v39 = [v3 account];
  if (v39)
  {
    v40 = v39;
    v146 = v37;
    v41 = v35;
    v42 = [v39 identifier];

    if (v42)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = type metadata accessor for UUID();
      (*(*(v43 - 8) + 56))(v12, 0, 1, v43);
    }

    else
    {
      v64 = type metadata accessor for UUID();
      (*(*(v64 - 8) + 56))(v12, 1, 1, v64);
    }

    sub_100031B58(v12, v17, &unk_100939D90, "8\n\r");
    v35 = v41;
    v37 = v146;
  }

  else
  {
    v63 = type metadata accessor for UUID();
    (*(*(v63 - 8) + 56))(v17, 1, 1, v63);
  }

  sub_100390EB8(KeyPath, v17);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v149->clientIdentity >= *&v149->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v65 = swift_getKeyPath();
  sub_1003910F4(v65, v35, v37);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v149->clientIdentity >= *&v149->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v66 = swift_getKeyPath();
  v67 = [v3 dueDate];
  if (v67)
  {
    v68 = v67;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v69 = 0;
  }

  else
  {
    v69 = 1;
  }

  v70 = type metadata accessor for Date();
  (*(*(v70 - 8) + 56))(v8, v69, 1, v70);
  sub_100390EF0(v66, v8);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v149->clientIdentity >= *&v149->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v71 = swift_getKeyPath();
  sub_1003910E0(v71, [v3 allDay]);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v149->clientIdentity >= *&v149->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v72 = swift_getKeyPath();
  v73 = [v3 timeZone];
  if (v73)
  {
    v74 = v73;
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;
  }

  else
  {
    v75 = 0;
    v77 = 0;
  }

  sub_1003910F4(v72, v75, v77);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v149->clientIdentity >= *&v149->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_10001035C(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v149->clientIdentity >= *&v149->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v148 = &_swiftEmptyArrayStorage;
  sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
  v78 = NSPredicate.init(format:_:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v148 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v148 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v79 = v148;
  v80 = sub_10000C2B0();
  if (v80)
  {
    v81 = v80;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v148 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v148 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v79 = v148;
  }

  if (with)
  {
    v82 = with;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v148 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v148 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v79 = v148;
  }

  v83 = objc_allocWithZone(NSCompoundPredicate);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v79, v85, v86, v87, v88, v89, v90, v91;
  v92 = [v83 initWithType:1 subpredicates:isa];

  swift_getObjectType();
  v93 = [swift_getObjCClassFromMetadata() ic_objectsMatchingPredicate:v92 context:v19];
  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  v94 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v94 >> 62))
  {
    if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_52;
    }

LABEL_68:

    v94, v139, v140, v141, v142, v143, v144, v145;
    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_68;
  }

LABEL_52:
  if ((v94 & 0xC000000000000001) != 0)
  {
    v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_55:
    v93 = v95;
    v94, v96, v97, v98, v99, v100, v101, v102;
    objc_opt_self();
    v103 = swift_dynamicCastObjCClass();
    if (!v103)
    {

      return;
    }

    v146 = v103;
    if (qword_100935F38 == -1)
    {
      goto LABEL_57;
    }

    goto LABEL_71;
  }

  if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v95 = *(v94 + 32);
    goto LABEL_55;
  }

  __break(1u);
LABEL_71:
  swift_once();
LABEL_57:
  v104 = type metadata accessor for Logger();
  sub_100006654(v104, qword_1009441D0);
  v105 = v3;
  v106 = v93;
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    *v109 = 136446466;
    v110 = &selRef_persistentStoreForIdentifier_;
    v111 = [v105 remObjectID];
    if (v111)
    {
      v112 = v111;
      v113 = [v111 description];

      v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v116 = v115;

      v110 = &selRef_persistentStoreForIdentifier_;
    }

    else
    {
      v116 = 0xE300000000000000;
      v114 = 7104878;
    }

    v117 = sub_10000668C(v114, v116, &v147);
    v116, v118, v119, v120, v121, v122, v123, v124;
    *(v109 + 4) = v117;
    *(v109 + 12) = 2082;
    v125 = [v146 v110[106]];
    if (v125)
    {
      v126 = v125;
      v127 = [v125 description];

      v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v130 = v129;
    }

    else
    {
      v130 = 0xE300000000000000;
      v128 = 7104878;
    }

    v131 = sub_10000668C(v128, v130, &v147);
    v130, v132, v133, v134, v135, v136, v137, v138;
    *(v109 + 14) = v131;
    _os_log_impl(&_mh_execute_header, v107, v108, "MERGE.LOCAL: ......REMCDReminder.existingLocalObjectToMerge found a matching local REMCDReminder! {self: %{public}s, matched: %{public}s}", v109, 0x16u);
    swift_arrayDestroy();
  }
}

Swift::Bool __swiftcall REMCDReminder.merge(withLocalObject:)(REMCDObject *withLocalObject)
{
  v2 = v1;
  v4 = type metadata accessor for NSFastEnumerationIterator();
  v509 = *(v4 - 8);
  v510 = v4;
  __chkstk_darwin(v4, v5);
  v516 = &v487 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v514 = &v487 - v9;
  v504 = type metadata accessor for URL();
  v507 = *(v504 - 8);
  __chkstk_darwin(v504, v10);
  v503 = &v487 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v513 = type metadata accessor for REMFeatureFlags();
  v506 = *(v513 - 8);
  __chkstk_darwin(v513, v12);
  v512 = &v487 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v511 = *(v14 - 8);
  __chkstk_darwin(v14, v15);
  v502 = &v487 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v501 = &v487 - v19;
  __chkstk_darwin(v20, v21);
  v500 = &v487 - v22;
  __chkstk_darwin(v23, v24);
  v499 = &v487 - v25;
  __chkstk_darwin(v26, v27);
  v498 = &v487 - v28;
  __chkstk_darwin(v29, v30);
  v495 = (&v487 - v31);
  __chkstk_darwin(v32, v33);
  v494 = (&v487 - v34);
  __chkstk_darwin(v35, v36);
  v505 = &v487 - v37;
  __chkstk_darwin(v38, v39);
  v508 = &v487 - v40;
  v515 = type metadata accessor for UUID();
  v517 = *(v515 - 8);
  __chkstk_darwin(v515, v41);
  v497 = &v487 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43, v44);
  v46 = &v487 - v45;
  v47 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v47, v48);
  v50 = &v487 - v49;
  v51 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v51 - 8, v52);
  v54 = &v487 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55, v56);
  v58 = &v487 - v57;
  *&v61 = __chkstk_darwin(v59, v60).n128_u64[0];
  v63 = &v487 - v62;
  v64 = [(REMCDObject *)v2 managedObjectContext];
  if (!v64)
  {
    return v64;
  }

  v65 = v64;
  v496 = v14;
  objc_opt_self();
  v66 = swift_dynamicCastObjCClass();
  if (!v66)
  {

LABEL_142:
    LOBYTE(v64) = 0;
    return v64;
  }

  v67 = v66;
  v492 = withLocalObject;
  v68 = [v67 isConcealed];
  v493 = v65;
  if (v68)
  {
    if (qword_100935F38 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_100006654(v69, qword_1009441D0);
    v70 = v492;
    v71 = v2;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = 7104878;
      v75 = swift_slowAlloc();
      *&v521 = swift_slowAlloc();
      *v75 = 136446722;
      v76 = [(REMCDObject *)v71 remObjectID];
      if (v76)
      {
        v77 = v76;
        v78 = [(REMObjectID *)v76 description];

        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;
      }

      else
      {
        v81 = 0xE300000000000000;
        v79 = 7104878;
      }

      v120 = sub_10000668C(v79, v81, &v521);
      v81, v121, v122, v123, v124, v125, v126, v127;
      *(v75 + 4) = v120;
      *(v75 + 12) = 2082;
      v128 = [(REMCDObject *)v70 remObjectID];
      if (v128)
      {
        v129 = v128;
        v130 = [(REMObjectID *)v128 description];

        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v132 = v131;
      }

      else
      {
        v132 = 0xE300000000000000;
      }

      v133 = sub_10000668C(v74, v132, &v521);
      v132, v134, v135, v136, v137, v138, v139, v140;
      *(v75 + 14) = v133;
      *(v75 + 22) = 2082;
      v141 = sub_1004D7318();
      v143 = v142;
      v144 = sub_10000668C(v141, v142, &v521);
      v143, v145, v146, v147, v148, v149, v150, v151;
      *(v75 + 24) = v144;
      _os_log_impl(&_mh_execute_header, v72, v73, "MERGE.LOCAL: ...Should not attempt to merge with a concealed local reminder, race condition or corrupted database? {self: %{public}s, local: %{public}s %{public}s}", v75, 0x20u);
      swift_arrayDestroy();
    }

LABEL_141:
    goto LABEL_142;
  }

  v518 = v2;
  v491 = v67;
  v82 = [v67 identifier];
  if (v82)
  {
    v83 = v82;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = v517[7].isa;
    (isa)(v63, 0, 1, v515);
  }

  else
  {
    isa = v517[7].isa;
    (isa)(v63, 1, 1, v515);
  }

  v85 = [(REMCDObject *)v518 identifier];
  if (v85)
  {
    v86 = v85;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v87 = 0;
  }

  else
  {
    v87 = 1;
  }

  v88 = v517;
  v89 = v515;
  (isa)(v58, v87, 1, v515);
  v90 = *(v47 + 48);
  sub_100010364(v63, v50, &unk_100939D90, "8\n\r");
  sub_100010364(v58, &v50[v90], &unk_100939D90, "8\n\r");
  v91 = v88[6].isa;
  if (v91(v50, 1, v89) == 1)
  {
    sub_1000050A4(v58, &unk_100939D90, "8\n\r");
    sub_1000050A4(v63, &unk_100939D90, "8\n\r");
    v92 = v91(&v50[v90], 1, v89);
    v93 = v518;
    if (v92 == 1)
    {
      sub_1000050A4(v50, &unk_100939D90, "8\n\r");
LABEL_27:
      if (qword_100935F38 != -1)
      {
        swift_once();
      }

      v107 = type metadata accessor for Logger();
      sub_100006654(v107, qword_1009441D0);
      v108 = v492;
      v109 = v93;
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = 7104878;
        v113 = swift_slowAlloc();
        *&v521 = swift_slowAlloc();
        *v113 = 136446466;
        v114 = [(REMCDObject *)v109 remObjectID];
        if (v114)
        {
          v115 = v114;
          v116 = [(REMObjectID *)v114 description];

          v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v119 = v118;
        }

        else
        {
          v119 = 0xE300000000000000;
          v117 = 7104878;
        }

        v326 = sub_10000668C(v117, v119, &v521);
        v119, v327, v328, v329, v330, v331, v332, v333;
        *(v113 + 4) = v326;
        *(v113 + 12) = 2082;
        v334 = [(REMCDObject *)v108 remObjectID];
        if (v334)
        {
          v335 = v334;
          v336 = [(REMObjectID *)v334 description];

          v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v338 = v337;
        }

        else
        {
          v338 = 0xE300000000000000;
        }

        v339 = sub_10000668C(v112, v338, &v521);
        v338, v340, v341, v342, v343, v344, v345, v346;
        *(v113 + 14) = v339;
        _os_log_impl(&_mh_execute_header, v110, v111, "MERGE.LOCAL: ......should not try to merge with itself! {self: %{public}s, local: %{public}s}", v113, 0x16u);
        swift_arrayDestroy();
      }

      goto LABEL_141;
    }
  }

  else
  {
    sub_100010364(v50, v54, &unk_100939D90, "8\n\r");
    if (v91(&v50[v90], 1, v89) != 1)
    {
      v104 = v517;
      (v517[4].isa)(v46, &v50[v90], v89);
      sub_1003A99EC(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v105 = dispatch thunk of static Equatable.== infix(_:_:)();
      v106 = v104[1].isa;
      v106(v46, v89);
      sub_1000050A4(v58, &unk_100939D90, "8\n\r");
      sub_1000050A4(v63, &unk_100939D90, "8\n\r");
      v106(v54, v89);
      sub_1000050A4(v50, &unk_100939D90, "8\n\r");
      v93 = v518;
      if (v105)
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    sub_1000050A4(v58, &unk_100939D90, "8\n\r");
    sub_1000050A4(v63, &unk_100939D90, "8\n\r");
    (v517[1].isa)(v54, v89);
    v93 = v518;
  }

  sub_1000050A4(v50, &unk_10093A3D0, &qword_100795770);
LABEL_22:
  v94 = [(REMCDObject *)v93 lastModifiedDate];
  v95 = v491;
  v96 = v511;
  if (v94)
  {
    v97 = v508;
    v98 = v94;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v99 = [v95 lastModifiedDate];
    if (v99)
    {
      v100 = v505;
      v101 = v99;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1003A99EC(&qword_1009464D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v102 = v496;
      if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
      {
        if (qword_100935F38 != -1)
        {
          swift_once();
        }

        v309 = type metadata accessor for Logger();
        sub_100006654(v309, qword_1009441D0);
        v310 = v96[2];
        v311 = v494;
        (v310)(v494, v97, v102);
        v312 = v102;
        v313 = v495;
        (v310)(v495, v100, v312);
        v314 = v492;
        v315 = v93;
        v316 = Logger.logObject.getter();
        v317 = static os_log_type_t.info.getter();
        v518 = v314;

        if (os_log_type_enabled(v316, v317))
        {
          v517 = v316;
          v318 = 7104878;
          v319 = swift_slowAlloc();
          v516 = swift_slowAlloc();
          *&v521 = v516;
          *v319 = 136446978;
          v320 = [(REMCDObject *)v315 remObjectID];
          if (v320)
          {
            v321 = v320;
            v322 = [(REMObjectID *)v320 description];

            v323 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v325 = v324;

            v96 = v511;
          }

          else
          {
            v325 = 0xE300000000000000;
            v323 = 7104878;
          }

          v350 = v494;
          v351 = sub_10000668C(v323, v325, &v521);
          v325, v352, v353, v354, v355, v356, v357, v358;
          *(v319 + 4) = v351;
          *(v319 + 12) = 2082;
          v359 = [v491 remObjectID];
          if (v359)
          {
            v360 = v359;
            v361 = [v359 description];

            v318 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v363 = v362;
          }

          else
          {
            v363 = 0xE300000000000000;
          }

          v364 = sub_10000668C(v318, v363, &v521);
          v363, v365, v366, v367, v368, v369, v370, v371;
          *(v319 + 14) = v364;
          *(v319 + 22) = 2082;
          v372 = Date.debugDescription.getter();
          v374 = v373;
          v347 = v96[1];
          v349 = v496;
          v347(v350, v496);
          v375 = sub_10000668C(v372, v374, &v521);
          v374, v376, v377, v378, v379, v380, v381, v382;
          *(v319 + 24) = v375;
          *(v319 + 32) = 2082;
          v383 = v495;
          v384 = Date.debugDescription.getter();
          v386 = v385;
          v347(v383, v349);
          v387 = sub_10000668C(v384, v386, &v521);
          v386, v388, v389, v390, v391, v392, v393, v394;
          *(v319 + 34) = v387;
          v395 = v517;
          _os_log_impl(&_mh_execute_header, v517, v317, "MERGE.LOCAL: ......server copy is newer, keep server data and delete local. {cloud: %{public}s, local: %{public}s, cloud.lastmod: %{public}s, local.lastmod: %{public}s}", v319, 0x2Au);
          swift_arrayDestroy();

          v95 = v491;
        }

        else
        {

          v347 = v96[1];
          v348 = v313;
          v349 = v312;
          v347(v348, v312);
          v347(v311, v312);
        }

        v396 = [v95 list];
        [v396 removeRemindersObject:v95];

        v397 = v493;
        [v493 deleteObject:v95];

        v347(v505, v349);
        v347(v508, v349);
        LOBYTE(v64) = 1;
        return v64;
      }

      v103 = v96[1];
      v103(v100, v102);
      v103(v97, v102);
    }

    else
    {
      v96[1](v97, v496);
    }
  }

  v152 = [(REMCDObject *)v93 createResolutionTokenMapIfNecessary];
  v153 = 0;
  v494 = v507 + 1;
  v490 = v517 + 1;
  v511 = v96 + 1;
  LODWORD(v505) = enum case for REMFeatureFlags.urgentAlert(_:);
  v507 = (v506 + 8);
  v508 = (v506 + 104);
  v489 = enum case for REMFeatureFlags.urgentAlertCloudKit(_:);
  v488 = 0x80000001007E9050;
  v506 = 0x80000001007E8D70;
  v495 = 0x80000001007E8F70;
  v154 = &selRef_accountStatusWithCompletionHandler_;
  v517 = v152;
  while (2)
  {
    v166 = *(&off_1008DE238 + v153++ + 32);
    switch(v166)
    {
      case 2:
        v167 = [v95 alternativeDisplayDateDate_forCalendar];
        if (v167)
        {
          v168 = v500;
          v169 = v167;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v170.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*v511)(v168, v496);
        }

        else
        {
          v170.super.isa = 0;
        }

        [(REMCDObject *)v518 setAlternativeDisplayDateDate_forCalendar:v170.super.isa];

        v156 = v495;
        goto LABEL_41;
      case 5:
        v189 = [v95 batchCreationID];
        if (v189)
        {
          v190 = v497;
          v191 = v189;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v192.super.isa = UUID._bridgeToObjectiveC()().super.isa;
          (v490->isa)(v190, v515);
        }

        else
        {
          v192.super.isa = 0;
        }

        [(REMCDObject *)v518 setBatchCreationID:v192.super.isa];

        v156 = 0xEF44496E6F697461;
        goto LABEL_41;
      case 6:
        v155 = [v95 completed];
        [(REMCDObject *)v518 setCompleted:v155];
        v156 = 0xE900000000000064;
        goto LABEL_41;
      case 7:
        v209 = [v95 completionDate];
        if (v209)
        {
          v210 = v498;
          v211 = v209;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v212.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*v511)(v210, v496);
        }

        else
        {
          v212.super.isa = 0;
        }

        [(REMCDObject *)v518 setCompletionDate:v212.super.isa];

        v156 = 0xEE00657461446E6FLL;
        goto LABEL_41;
      case 9:
        v193 = [v95 creationDate];
        if (v193)
        {
          v194 = v499;
          v195 = v193;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v196.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*v511)(v194, v496);
        }

        else
        {
          v196.super.isa = 0;
        }

        [(REMCDObject *)v518 setCreationDate:v196.super.isa];

        v156 = 0xEC00000065746144;
        goto LABEL_41;
      case 14:
        v197 = [v95 icsUrl];
        if (v197)
        {
          v198 = v503;
          v199 = v197;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          URL._bridgeToObjectiveC()(v200);
          v202 = v201;
          (*v494)(v198, v504);
        }

        else
        {
          v202 = 0;
        }

        [(REMCDObject *)v518 setIcsUrl:v202];

        v156 = 0xE600000000000000;
        goto LABEL_41;
      case 15:
        v203 = [v95 importedICSData];
        if (v203)
        {
          v204 = v203;
          v205 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v207 = v206;

          v208.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10001BBA0(v205, v207);
        }

        else
        {
          v208.super.isa = 0;
        }

        [(REMCDObject *)v518 setImportedICSData:v208.super.isa];

        v156 = 0xEF61746144534349;
        goto LABEL_41;
      case 16:
        v213 = [v95 lastModifiedDate];
        if (v213)
        {
          v214 = v501;
          v215 = v213;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v216.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*v511)(v214, v496);
        }

        else
        {
          v216.super.isa = 0;
        }

        [(REMCDObject *)v518 setLastModifiedDate:v216.super.isa];

        v156 = v506;
        goto LABEL_41;
      case 18:
        v183 = [v95 notes];
        if (!v183)
        {
          goto LABEL_43;
        }

        v165 = v183;
        v184 = [(REMCDObject *)v518 notesDocument];
        if (v184)
        {
          v185 = v184;
          v186 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v188 = v187;
        }

        else
        {
          v186 = 0;
          v188 = 0xF000000000000000;
        }

        v228 = sub_1003A44B8(v186, v188, 0x636F447365746F6ELL, 0xED0000746E656D75);
        0xED0000746E656D75, v229, v230, v231, v232, v233, v234, v235;
        sub_100031A14(v186, v188);

        if (v228)
        {
          v236 = [v228 mutableDocument];
          v237 = [objc_allocWithZone(NSAttributedString) initWithString:v165];

          v238 = [v236 wipeAndReplaceWithString:v237];
          v165 = v237;
        }

        else
        {
          v239 = sub_1004D6FC8();
          if (!v239)
          {
            v95 = v491;
            v152 = v517;
LABEL_42:

            goto LABEL_43;
          }

          v236 = v239;
          v238 = [objc_allocWithZone(REMCRMergeableStringDocument) initWithReplicaIDSource:v239 string:v165];
        }

        v95 = v491;
        v152 = v517;

        if (v238)
        {
          v240 = [v238 serializedData];
          v241 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v243 = v242;

          v244 = Data._bridgeToObjectiveC()().super.isa;
          sub_10001BBA0(v241, v243);
          v245 = v518;
          [(REMCDObject *)v518 setNotesDocument:v244];

          v246 = [v238 attributedString];
          v247 = [v246 string];

          if (!v247)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v249 = v248;
            v247 = String._bridgeToObjectiveC()();
            v249, v250, v251, v252, v253, v254, v255, v256;
          }

          [(REMCDObject *)v245 setNotes:v247];

          v156 = 0xED0000746E656D75;
          v152 = v517;
LABEL_41:
          v157 = String._bridgeToObjectiveC()();
          v156, v158, v159, v160, v161, v162, v163, v164;
          v165 = [v152 v154[508]];

          [v165 update];
          goto LABEL_42;
        }

LABEL_43:
        if (v153 != 29)
        {
          continue;
        }

        v257 = v518;
        v258 = [(REMCDObject *)v518 alarmStorage];
        v259 = v516;
        if (v258)
        {
          v260 = v258;
          if (qword_100935F38 != -1)
          {
            swift_once();
          }

          v261 = type metadata accessor for Logger();
          v262 = sub_100006654(v261, qword_1009441D0);
          v263 = v260;
          v515 = v262;
          v264 = Logger.logObject.getter();
          v265 = static os_log_type_t.info.getter();
          v266 = os_log_type_enabled(v264, v265);
          v267 = v514;
          if (v266)
          {
            v268 = swift_slowAlloc();
            *v268 = 134217984;
            *(v268 + 4) = [v263 count];

            _os_log_impl(&_mh_execute_header, v264, v265, "MERGE.LOCAL: ......removing original alarms of the cloud reminder {cloud.alarms.count: %ld}.", v268, 0xCu);
          }

          else
          {

            v264 = v263;
          }

          v513 = v263;
          NSOrderedSet.makeIterator()();
          NSFastEnumerationIterator.next()();
          while (v522)
          {
            sub_100005EE0(&v521, &v520);
            sub_1000060C8(0, &unk_100938870, off_1008D4128);
            if (swift_dynamicCast())
            {
              v269 = v519;
              [v519 setReminder:0];
              if ([v269 shouldMarkAsDeletedInsteadOfDeletingImmediately])
              {
                v270 = [objc_allocWithZone(NSMutableSet) init];
                [v269 recursiveMarkForDeletion:1 usingVisitedMap:v270];
              }

              else
              {
                v271 = Logger.logObject.getter();
                v272 = static os_log_type_t.fault.getter();
                if (os_log_type_enabled(v271, v272))
                {
                  v273 = swift_slowAlloc();
                  *v273 = 0;
                  _os_log_impl(&_mh_execute_header, v271, v272, "MERGE.LOCAL: ......merge(withLocalObject): We expect alarms to support markForDeletion.", v273, 2u);
                  v259 = v516;
                }

                v267 = v514;
              }
            }

            NSFastEnumerationIterator.next()();
          }

          (*(v509 + 8))(v267, v510);
          v274 = v513;
          [(REMCDObject *)v257 removeAlarmStorage:v513];

          v95 = v491;
          v152 = v517;
        }

        v275 = [v95 alarmStorage];
        v276 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
        if (!v275)
        {
          goto LABEL_153;
        }

        *&v521 = v275;
        v277 = v275;
        sub_1000060C8(0, &unk_100938870, off_1008D4128);
        v278 = sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
        sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
        v279 = Sequence.elements<A>(ofType:)();

        if (qword_100935F38 != -1)
        {
          swift_once();
        }

        v280 = type metadata accessor for Logger();
        sub_100006654(v280, qword_1009441D0);

        v281 = Logger.logObject.getter();
        v282 = static os_log_type_t.info.getter();
        v283 = v279 >> 62;
        if (!os_log_type_enabled(v281, v282))
        {

          v279, v299, v300, v301, v302, v303, v304, v305;
          v257 = v518;
          goto LABEL_122;
        }

        v278 = swift_slowAlloc();
        *v278 = 134217984;
        if (v283)
        {
          goto LABEL_201;
        }

        v291 = *((v279 & 0xFFFFFFFFFFFFFF8) + 0x10);
        break;
      case 21:
        v171 = *v508;
        v172 = v512;
        v173 = v154;
        v174 = v513;
        (*v508)(v512, v505, v513);
        v175 = REMFeatureFlags.isEnabled.getter();
        v176 = *v507;
        v177 = v174;
        v154 = v173;
        (*v507)(v172, v177);
        if ((v175 & 1) == 0)
        {
          goto LABEL_43;
        }

        v178 = v512;
        v179 = v513;
        v171(v512, v489, v513);
        v180 = REMFeatureFlags.isEnabled.getter();
        v181 = v179;
        v154 = v173;
        v176(v178, v181);
        if ((v180 & 1) == 0)
        {
          goto LABEL_43;
        }

        v182 = [v95 prefersUrgentPresentationStyleForDateAlarms];
        [(REMCDObject *)v518 setPrefersUrgentPresentationStyleForDateAlarms:v182];
        v156 = v488;
        goto LABEL_41;
      case 22:
        v223 = [v95 priority];
        [(REMCDObject *)v518 setPriority:v223];
        v156 = 0xE800000000000000;
        goto LABEL_41;
      case 24:
        v224 = [v95 startDate];
        if (v224)
        {
          v225 = v502;
          v226 = v224;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v227.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*v511)(v225, v496);
        }

        else
        {
          v227.super.isa = 0;
        }

        [(REMCDObject *)v518 setStartDate:v227.super.isa];

        v156 = 0xE900000000000065;
        goto LABEL_41;
      case 28:
        v217 = [v95 userActivity];
        if (v217)
        {
          v218 = v217;
          v219 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v221 = v220;

          v222.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10001BBA0(v219, v221);
        }

        else
        {
          v222.super.isa = 0;
        }

        [(REMCDObject *)v518 setUserActivity:v222.super.isa];

        v156 = 0xEC00000079746976;
        goto LABEL_41;
      default:
        goto LABEL_43;
    }

    break;
  }

  while (1)
  {
    v257 = v518;
    *(v278 + 4) = v291;
    v279, v284, v285, v286, v287, v288, v289, v290;
    _os_log_impl(&_mh_execute_header, v281, v282, "MERGE.LOCAL: ......adding local alarms to the cloud reminder {local.alarms.count: %ld}.", v278, 0xCu);

LABEL_122:
    if (v283)
    {
      v281 = _CocoaArrayWrapper.endIndex.getter();
      if (!v281)
      {
        goto LABEL_152;
      }
    }

    else
    {
      v281 = *((v279 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v281)
      {
        goto LABEL_152;
      }
    }

    if (v281 < 1)
    {
      __break(1u);
      goto LABEL_200;
    }

    v306 = 0;
    do
    {
      if ((v279 & 0xC000000000000001) != 0)
      {
        v307 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v307 = *(v279 + 8 * v306 + 32);
      }

      v308 = v307;
      ++v306;
      [(REMCDObject *)v257 addAlarmStorageObject:v307];
      [v308 setReminder:v257];
      [v308 v276[293]];
    }

    while (v281 != v306);
LABEL_152:
    v279, v292, v293, v294, v295, v296, v297, v298;
    v95 = v491;
    v259 = v516;
    v152 = v517;
LABEL_153:
    v398 = [(REMCDObject *)v257 recurrenceRules];
    if (v398)
    {
      v399 = v398;
      if (qword_100935F38 != -1)
      {
        swift_once();
      }

      v400 = type metadata accessor for Logger();
      v401 = sub_100006654(v400, qword_1009441D0);
      v402 = v399;
      v515 = v401;
      v403 = Logger.logObject.getter();
      v404 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v403, v404))
      {
        v405 = swift_slowAlloc();
        *v405 = 134217984;
        *(v405 + 4) = [v402 count];

        _os_log_impl(&_mh_execute_header, v403, v404, "MERGE.LOCAL: ......removing original recurrence rules of the cloud reminder {cloud.rrules.count: %ld}.", v405, 0xCu);
      }

      else
      {

        v403 = v402;
      }

      v514 = v402;
      NSOrderedSet.makeIterator()();
      NSFastEnumerationIterator.next()();
      if (v522)
      {
        v406 = &qword_100940C50;
        v407 = &type metadata for Any;
        v408 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
        v409 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
        do
        {
          sub_100005EE0(&v521, &v520);
          sub_1000060C8(0, v406, off_1008D41C8);
          if (swift_dynamicCast())
          {
            v410 = v519;
            [v519 v408[6]];
            if ([v410 v409[121]])
            {
              v411 = [objc_allocWithZone(NSMutableSet) init];
              [v410 recursiveMarkForDeletion:1 usingVisitedMap:v411];
            }

            else
            {
              v412 = v407;
              v413 = v406;
              v414 = v409;
              v415 = v408;
              v416 = v276;
              v417 = Logger.logObject.getter();
              v418 = static os_log_type_t.fault.getter();
              if (os_log_type_enabled(v417, v418))
              {
                v419 = swift_slowAlloc();
                *v419 = 0;
                _os_log_impl(&_mh_execute_header, v417, v418, "merge(withLocalObject): We do actually expect recurrence-rules to support markForDeletion.", v419, 2u);
                v259 = v516;
              }

              v276 = v416;
              v408 = v415;
              v409 = v414;
              v406 = v413;
              v407 = v412;
              v257 = v518;
            }
          }

          NSFastEnumerationIterator.next()();
        }

        while (v522);
      }

      (*(v509 + 8))(v259, v510);
      v420 = v514;
      [(REMCDObject *)v257 removeRecurrenceRules:v514];

      v95 = v491;
      v152 = v517;
    }

    v421 = [v95 recurrenceRules];
    if (!v421)
    {
      goto LABEL_187;
    }

    *&v521 = v421;
    v422 = v421;
    sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
    v278 = sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
    sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
    v279 = Sequence.elements<A>(ofType:)();

    if (qword_100935F38 != -1)
    {
      swift_once();
    }

    v423 = type metadata accessor for Logger();
    sub_100006654(v423, qword_1009441D0);

    v424 = Logger.logObject.getter();
    v282 = static os_log_type_t.info.getter();
    v283 = v279 >> 62;
    if (os_log_type_enabled(v424, v282))
    {
      v278 = swift_slowAlloc();
      *v278 = 134217984;
      v432 = v283 ? _CocoaArrayWrapper.endIndex.getter() : *((v279 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v257 = v518;
      *(v278 + 4) = v432;
      v279, v425, v426, v427, v428, v429, v430, v431;
      _os_log_impl(&_mh_execute_header, v424, v282, "MERGE.LOCAL: ......adding local recurrence rules to the cloud reminder {local.rrules.count: %ld}.", v278, 0xCu);
    }

    else
    {

      v279, v440, v441, v442, v443, v444, v445, v446;
      v257 = v518;
    }

    if (v283)
    {
      v281 = _CocoaArrayWrapper.endIndex.getter();
      if (!v281)
      {
        goto LABEL_186;
      }
    }

    else
    {
      v281 = *((v279 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v281)
      {
        goto LABEL_186;
      }
    }

    if (v281 >= 1)
    {
      break;
    }

LABEL_200:
    __break(1u);
LABEL_201:
    v291 = _CocoaArrayWrapper.endIndex.getter();
  }

  v447 = 0;
  do
  {
    if ((v279 & 0xC000000000000001) != 0)
    {
      v448 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v448 = *(v279 + 8 * v447 + 32);
    }

    v449 = v448;
    ++v447;
    [(REMCDObject *)v257 addRecurrenceRulesObject:v448];
    [v449 setReminder:v257];
    [v449 v276[293]];
  }

  while (v281 != v447);
LABEL_186:
  v279, v433, v434, v435, v436, v437, v438, v439;
  v95 = v491;
  v152 = v517;
LABEL_187:
  [v257 v276[293]];
  if (qword_100935F38 != -1)
  {
    swift_once();
  }

  v450 = type metadata accessor for Logger();
  sub_100006654(v450, qword_1009441D0);
  v451 = v492;
  v452 = v257;
  v453 = Logger.logObject.getter();
  v454 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v453, v454))
  {
    v455 = swift_slowAlloc();
    *&v521 = swift_slowAlloc();
    *v455 = 136446466;
    v456 = [v95 remObjectID];
    if (v456)
    {
      v457 = v456;
      v458 = [v456 description];

      v459 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v461 = v460;
    }

    else
    {
      v461 = 0xE300000000000000;
      v459 = 7104878;
    }

    v462 = sub_10000668C(v459, v461, &v521);
    v461, v463, v464, v465, v466, v467, v468, v469;
    *(v455 + 4) = v462;
    *(v455 + 12) = 2082;
    v470 = [(REMCDObject *)v452 remObjectID];
    if (v470)
    {
      v471 = v470;
      v472 = [(REMObjectID *)v470 description];

      v473 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v475 = v474;
    }

    else
    {
      v475 = 0xE300000000000000;
      v473 = 7104878;
    }

    v476 = sub_10000668C(v473, v475, &v521);
    v475, v477, v478, v479, v480, v481, v482, v483;
    *(v455 + 14) = v476;
    _os_log_impl(&_mh_execute_header, v453, v454, "MERGE.LOCAL: ...done merging local reminder to the cloud reminder, now delete the local object {local.reminder: %{public}s, cloud.reminder: %{public}s}", v455, 0x16u);
    swift_arrayDestroy();

    v95 = v491;
    v152 = v517;
  }

  else
  {
  }

  v484 = [v95 list];
  [v484 removeRemindersObject:v95];

  v485 = v493;
  [v493 deleteObject:v95];

  LOBYTE(v64) = 1;
  return v64;
}

id sub_1003A4078(uint64_t a1, unint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  result = 0;
  if (a2 >> 60 != 15)
  {
    sub_100029344(a1, a2);
    v10 = sub_1004D6FC8();
    if (v10)
    {
      v11 = v10;
      v12 = objc_allocWithZone(REMCRMergeableOrderedSet);
      sub_1001CB4B8(a1, a2);
      v28 = sub_1002F937C(v11);
      sub_100031A14(a1, a2);

      sub_100031A14(a1, a2);
      return v28;
    }

    else
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100006654(v13, qword_10094A590);
      v14 = v4;

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      a4, v17, v18, v19, v20, v21, v22, v23;
      if (os_log_type_enabled(v15, v16))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v29 = v26;
        *v24 = 136446466;
        *(v24 + 4) = sub_10000668C(a3, a4, &v29);
        *(v24 + 12) = 2112;
        *(v24 + 14) = v14;
        *v25 = v14;
        v27 = v14;
        _os_log_impl(&_mh_execute_header, v15, v16, "Unable to deserialize CR property from CKRecord because replicaIDSource isn't available {key: %{public}s, cdObject: %@}", v24, 0x16u);
        sub_1000050A4(v25, &unk_100938E70, &unk_100797230);

        sub_10000607C(v26);
      }

      sub_100031A14(a1, a2);

      return 0;
    }
  }

  return result;
}

id sub_1003A44B8(uint64_t a1, unint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  result = 0;
  if (a2 >> 60 != 15)
  {
    sub_100029344(a1, a2);
    v10 = sub_1004D6FC8();
    if (v10)
    {
      v11 = v10;
      v12 = objc_allocWithZone(REMCRMergeableStringDocument);
      sub_1001CB4B8(a1, a2);
      v28 = sub_1002F937C(v11);
      sub_100031A14(a1, a2);
      sub_100031A14(a1, a2);

      return v28;
    }

    else
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100006654(v13, qword_10094A590);
      v14 = v4;

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      a4, v17, v18, v19, v20, v21, v22, v23;
      if (os_log_type_enabled(v15, v16))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v29 = v26;
        *v24 = 136446466;
        *(v24 + 4) = sub_10000668C(a3, a4, &v29);
        *(v24 + 12) = 2112;
        *(v24 + 14) = v14;
        *v25 = v14;
        v27 = v14;
        _os_log_impl(&_mh_execute_header, v15, v16, "Unable to deserialize CR property from CKRecord because replicaIDSource isn't available {key: %{public}s, cdObject: %@}", v24, 0x16u);
        sub_1000050A4(v25, &unk_100938E70, &unk_100797230);

        sub_10000607C(v26);
      }

      sub_100031A14(a1, a2);

      return 0;
    }
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *REMCDReminder.objectsToBeDeletedBeforeThisObject()()
{
  v1 = v0;
  v2 = [v0 recurrenceRules];
  if (v2)
  {
    sub_100272574(v2);
  }

  v3 = [v0 attachments];
  if (v3)
  {
    sub_100272574(v3);
  }

  v4 = [v0 alarmStorage];
  if (v4)
  {
    sub_100272574(v4);
  }

  v5 = [v0 children];
  if (v5)
  {
    v6 = v5;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0, &protocol conformance descriptor for NSObject);
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_10027888C(v7);
    v7, v9, v10, v11, v12, v13, v14, v15;
    v16 = sub_100271258(v8);

    sub_100271468(v16);
  }

  v17 = [v1 assignments];
  if (v17)
  {
    v18 = v17;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    sub_10000CDE4(&qword_10093CC38, &unk_10093F790, off_1008D4158, &protocol conformance descriptor for NSObject);
    v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = sub_100278A1C(v19);
    v19, v21, v22, v23, v24, v25, v26, v27;
    v28 = sub_10027126C(v20);

    sub_100271468(v28);
  }

  v29 = [v1 hashtags];
  if (v29)
  {
    v30 = v29;
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190, &protocol conformance descriptor for NSObject);
    v31 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = sub_100278954(v31);
    v31, v33, v34, v35, v36, v37, v38, v39;
    v40 = sub_100271280(v32);

    sub_100271468(v40);
  }

  return &_swiftEmptyArrayStorage;
}

Swift::Void __swiftcall REMCDReminder.fixBrokenReferences()()
{
  if (qword_100935F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_1009441D0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = &selRef_hack_willSaveHandled;
  if (!os_log_type_enabled(v3, v4))
  {

    goto LABEL_19;
  }

  v6 = swift_slowAlloc();
  v129 = swift_slowAlloc();
  *v6 = 136315650;
  v7 = [v2 remObjectID];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 description];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v5 = &selRef_hack_willSaveHandled;
  }

  else
  {
    v12 = 0xE300000000000000;
    v10 = 7104878;
  }

  v13 = sub_10000668C(v10, v12, &v129);
  v12, v14, v15, v16, v17, v18, v19, v20;
  *(v6 + 4) = v13;
  *(v6 + 12) = 2082;
  v21 = [v2 list];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 remObjectID];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 description];

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v5 = &selRef_hack_willSaveHandled;
      v29 = v26;
      goto LABEL_13;
    }
  }

  v28 = 0xE300000000000000;
  v29 = 7104878;
LABEL_13:
  v30 = sub_10000668C(v29, v28, &v129);
  v28, v31, v32, v33, v34, v35, v36, v37;
  *(v6 + 14) = v30;
  *(v6 + 22) = 2082;
  v38 = [v2 parentReminder];
  v39 = 7104878;
  if (!v38)
  {
LABEL_17:
    v45 = 0xE300000000000000;
    goto LABEL_18;
  }

  v40 = v38;
  v41 = [v38 remObjectID];
  if (!v41)
  {

    goto LABEL_17;
  }

  v42 = v41;
  v43 = [v41 description];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

LABEL_18:
  v46 = sub_10000668C(v39, v45, &v129);
  v45, v47, v48, v49, v50, v51, v52, v53;
  *(v6 + 24) = v46;
  _os_log_impl(&_mh_execute_header, v3, v4, "Fixing broken references for reminder {reminderID: %s, list: %{public}s, parentReminder: %{public}s}", v6, 0x20u);
  swift_arrayDestroy();

LABEL_19:
  v54 = [v2 list];
  p_attr = (&stru_100923FF8 + 8);
  if (v54)
  {
    v56 = v54;
    if ([v54 markedForDeletion] && (objc_msgSend(v2, "markedForDeletion") & 1) == 0)
    {
      v57 = v2;
      v58 = v56;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v126 = v60;
        v61 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        *v61 = 136446466;
        v62 = &selRef_persistentStoreForIdentifier_;
        v127 = v57;
        v63 = [v57 remObjectID];
        if (v63)
        {
          v64 = v63;
          v65 = [v63 description];

          v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v68 = v67;

          v62 = &selRef_persistentStoreForIdentifier_;
        }

        else
        {
          v68 = 0xE300000000000000;
          v66 = 7104878;
        }

        log = v59;
        v69 = sub_10000668C(v66, v68, &v129);
        v68, v70, v71, v72, v73, v74, v75, v76;
        *(v61 + 4) = v69;
        *(v61 + 12) = 2082;
        v77 = [v58 v62[106]];
        if (v77)
        {
          v78 = v77;
          v79 = [v77 description];

          v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v82 = v81;

          v57 = v127;
          v5 = &selRef_hack_willSaveHandled;
        }

        else
        {
          v82 = 0xE300000000000000;
          v57 = v127;
          v5 = &selRef_hack_willSaveHandled;
          v80 = 7104878;
        }

        v83 = sub_10000668C(v80, v82, &v129);
        v82, v84, v85, v86, v87, v88, v89, v90;
        *(v61 + 14) = v83;
        _os_log_impl(&_mh_execute_header, log, v126, "List is marked for deletion but this reminer is not {reminderID: %{public}s, list: %{public}s}", v61, 0x16u);
        swift_arrayDestroy();

        p_attr = &stru_100923FF8.attr;
      }

      else
      {

        v5 = &selRef_hack_willSaveHandled;
      }

      [v57 markForDeletion];
    }

    [v56 p_attr[493]];
  }

  v91 = [v2 v5[489]];
  if (v91)
  {
    v128 = v91;
    if ([v91 markedForDeletion] && (objc_msgSend(v2, "markedForDeletion") & 1) == 0)
    {
      v92 = v2;
      v93 = v128;
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        *v96 = 136446466;
        v97 = [v92 remObjectID];
        if (v97)
        {
          v98 = v97;
          v99 = [v97 description];

          v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v102 = v101;
        }

        else
        {
          v102 = 0xE300000000000000;
          v100 = 7104878;
        }

        v103 = sub_10000668C(v100, v102, &v129);
        v102, v104, v105, v106, v107, v108, v109, v110;
        *(v96 + 4) = v103;
        *(v96 + 12) = 2082;
        v111 = [v93 remObjectID];
        if (v111)
        {
          v112 = v111;
          v113 = [v111 description];

          v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v116 = v115;
        }

        else
        {
          v116 = 0xE300000000000000;
          v114 = 7104878;
        }

        v117 = sub_10000668C(v114, v116, &v129);
        v116, v118, v119, v120, v121, v122, v123, v124;
        *(v96 + 14) = v117;
        _os_log_impl(&_mh_execute_header, v94, v95, "Parent reminder is marked for deletion but this reminer is not {reminderID: %{public}s, parentReminder: %{public}s}", v96, 0x16u);
        swift_arrayDestroy();

        p_attr = &stru_100923FF8.attr;
      }

      else
      {
      }

      [v92 markForDeletion];
    }

    [v128 p_attr[493]];
  }
}

uint64_t sub_1003A54EC(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v12, v13).n128_u64[0];
  v16 = &v115 - v15;
  v17 = [v4 parentReminder];
  if (v17)
  {
    v18 = v17;
    v19 = &selRef_accountStatusWithCompletionHandler_;
    if ((a3 & 1) != 0 && ([v17 markedForDeletion] & 1) == 0)
    {
      v116 = v11;
      v117 = a1;
      if (qword_100935F38 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100006654(v20, qword_1009441D0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "canSkipFixupReminderTree: Parent changed list. Need to validate siblings.", v23, 2u);
        v19 = &selRef_accountStatusWithCompletionHandler_;
      }

      v24 = [v4 list];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 objectID];
        v27 = [v26 URIRepresentation];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = &selRef_accountStatusWithCompletionHandler_;

        v28 = type metadata accessor for URL();
        (*(*(v28 - 8) + 56))(v16, 0, 1, v28);
      }

      else
      {
        v29 = type metadata accessor for URL();
        (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
      }

      a1 = v117;
      v30 = [v18 v19[155]];
      if (v30)
      {
        v31 = v30;
        sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
        sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0, &protocol conformance descriptor for NSObject);
        v32 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        __chkstk_darwin(v33, v34);
        *(&v115 - 2) = v16;
        sub_10032E104(sub_1003A9DA0, (&v115 - 4), v32);
        v36 = v35;
        v32, v37, v38, v39, v40, v41, v42, v43;
        if (v36)
        {
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&_mh_execute_header, v44, v45, "canSkipFixupReminderTree: Sibling list mismatch. Need to fixup.", v46, 2u);
          }

          v47 = v16;
LABEL_62:
          sub_1000050A4(v47, &unk_1009441F0, &qword_100795760);
          return 0;
        }

        a1 = v117;
        v19 = &selRef_accountStatusWithCompletionHandler_;
      }

      sub_1000050A4(v16, &unk_1009441F0, &qword_100795760);
      v11 = v116;
    }

    v48 = [v4 v19[155]];
    if (v48)
    {
      v49 = v48;
      v117 = 0;
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0, &protocol conformance descriptor for NSObject);
      v50 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v58 = (v50 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v50 + 16);
      v50, v51, v52, v53, v54, v55, v56, v57;
      if (v58)
      {
        goto LABEL_25;
      }
    }

    v59 = [v18 parentReminder];
    if (v59)
    {

LABEL_25:
      if (qword_100935F38 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_100006654(v60, qword_1009441D0);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v61, v62, "canSkipFixupReminderTree: Multiple layers of subtasks. Need to flatten.", v63, 2u);
      }

      return 0;
    }
  }

  if ((a2 & 1) == 0 || ([v4 markedForDeletion] & 1) != 0 || (v65 = objc_msgSend(v4, "children")) == 0)
  {
LABEL_44:
    if (!a1)
    {
      return 1;
    }

    goto LABEL_45;
  }

  v66 = v65;
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0, &protocol conformance descriptor for NSObject);
  v67 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v67 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_36;
    }

    goto LABEL_43;
  }

  if (!*(v67 + 16))
  {
LABEL_43:
    v67, v68, v69, v70, v71, v72, v73, v74;
    goto LABEL_44;
  }

LABEL_36:
  if (qword_100935F38 != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  sub_100006654(v75, qword_1009441D0);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&_mh_execute_header, v76, v77, "canSkipFixupReminderTree: List changed and has children. Need to validate children.", v78, 2u);
  }

  v79 = [v4 list];
  if (v79)
  {
    v80 = v79;
    v81 = [v79 objectID];
    v82 = [v81 URIRepresentation];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = 0;
  }

  else
  {
    v83 = 1;
  }

  v100 = type metadata accessor for URL();
  v101 = (*(*(v100 - 8) + 56))(v11, v83, 1, v100);
  __chkstk_darwin(v101, v102);
  *(&v115 - 2) = v11;
  sub_10032E104(sub_1003A9A78, (&v115 - 4), v67);
  v104 = v103;
  v67, v105, v106, v107, v108, v109, v110, v111;
  if (v104)
  {
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&_mh_execute_header, v112, v113, "canSkipFixupReminderTree: Child list mismatch. Need to fixup.", v114, 2u);
    }

    v47 = v11;
    goto LABEL_62;
  }

  sub_1000050A4(v11, &unk_1009441F0, &qword_100795760);
  if (!a1)
  {
    return 1;
  }

LABEL_45:
  v84 = a1;
  v85 = [v84 children];
  if (!v85 || ((v86 = v85, sub_1000060C8(0, &qword_100939EE0, off_1008D41D0), sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0, &protocol conformance descriptor for NSObject), v87 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v86, (v87 & 0xC000000000000001) == 0) ? (v95 = *(v87 + 16)) : (v95 = __CocoaSet.count.getter()), v87, v88, v89, v90, v91, v92, v93, v94, !v95))
  {

    return 1;
  }

  if (qword_100935F38 != -1)
  {
    swift_once();
  }

  v96 = type metadata accessor for Logger();
  sub_100006654(v96, qword_1009441D0);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&_mh_execute_header, v97, v98, "canSkipFixupReminderTree: Moving across parent. We can't skip the validation because self's children may have been flattened to siblings in previous saves.", v99, 2u);
  }

  return 0;
}

uint64_t sub_1003A5F94(id *a1, uint64_t a2)
{
  v32 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100944250, &qword_1007957B0);
  __chkstk_darwin(v7, v8);
  v10 = &v31 - v9;
  v11 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v15, v16).n128_u64[0];
  v19 = &v31 - v18;
  v20 = [*a1 list];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 objectID];
    v23 = [v22 URIRepresentation];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v4 + 56))(v19, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v19, 1, 1, v3);
  }

  v24 = *(v7 + 48);
  sub_100010364(v19, v10, &unk_1009441F0, &qword_100795760);
  sub_100010364(v32, &v10[v24], &unk_1009441F0, &qword_100795760);
  v25 = *(v4 + 48);
  if (v25(v10, 1, v3) != 1)
  {
    sub_100010364(v10, v14, &unk_1009441F0, &qword_100795760);
    if (v25(&v10[v24], 1, v3) != 1)
    {
      v27 = v31;
      (*(v4 + 32))(v31, &v10[v24], v3);
      sub_1003A99EC(&unk_100944080, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v4 + 8);
      v29(v27, v3);
      sub_1000050A4(v19, &unk_1009441F0, &qword_100795760);
      v29(v14, v3);
      sub_1000050A4(v10, &unk_1009441F0, &qword_100795760);
      v26 = v28 ^ 1;
      return v26 & 1;
    }

    sub_1000050A4(v19, &unk_1009441F0, &qword_100795760);
    (*(v4 + 8))(v14, v3);
    goto LABEL_9;
  }

  sub_1000050A4(v19, &unk_1009441F0, &qword_100795760);
  if (v25(&v10[v24], 1, v3) != 1)
  {
LABEL_9:
    sub_1000050A4(v10, &unk_100944250, &qword_1007957B0);
    v26 = 1;
    return v26 & 1;
  }

  sub_1000050A4(v10, &unk_1009441F0, &qword_100795760);
  v26 = 0;
  return v26 & 1;
}

void sub_1003A63E4(void *a1)
{
  if (qword_100935F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_1009441D0);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v5 = 136315650;
    [v3 remObjectID];
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v44);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v17 = [v3 parentReminder];
    if (v17)
    {
      v18 = v17;
      [v17 remObjectID];
    }

    v19 = String.init<A>(describing:)();
    v21 = v20;
    v22 = sub_10000668C(v19, v20, &v44);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v5 + 14) = v22;
    *(v5 + 22) = 2080;
    v30 = [v3 list];
    if (v30)
    {
      v31 = v30;
      [v30 remObjectID];
    }

    v32 = String.init<A>(describing:)();
    v34 = v33;
    v35 = sub_10000668C(v32, v33, &v44);
    v34, v36, v37, v38, v39, v40, v41, v42;
    *(v5 + 24) = v35;
    _os_log_impl(&_mh_execute_header, oslog, v4, "validateAndFixupReminderTree END {objectID: %s, parentID: %s, listID: %s}", v5, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_1003A66A8(uint64_t a1, void *a2)
{
  sub_1003A8724(a1);
  v80 = v4;
  v5 = [a2 recordID];
  v6 = [v5 recordName];

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v6 = String._bridgeToObjectiveC()();
    v8, v9, v10, v11, v12, v13, v14, v15;
  }

  v16 = [swift_getObjCClassFromMetadata() ckIdentifierFromRecordName:v6];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = sub_10039646C();
  if (v21)
  {
    sub_10031D9C4(v20, v21, v17, v19);
  }

  else
  {
    sub_100368F18(v17, v19);
    v23 = v22;
    v19, v22, v24, v25, v26, v27, v28, v29;
    v23, v30, v31, v32, v33, v34, v35, v36;
  }

  v37 = *(a1 + 64);
  v79 = _swiftEmptyDictionarySingleton;
  v38 = 1 << *(a1 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v37;
  v41 = (v38 + 63) >> 6;
  v42 = v80;

  v50 = 0;
  while (v40)
  {
    v51 = v50;
LABEL_14:
    v52 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v53 = (*(a1 + 48) + ((v51 << 10) | (16 * v52)));
    v54 = *v53;
    v55 = v53[1];
    v78 = _swiftEmptySetSingleton;

    sub_1003A898C(v54, v55, v42, &v79, &v78);
    v57 = v56;
    v55, v56, v58, v59, v60, v61, v62, v63;
    v57, v64, v65, v66, v67, v68, v69, v70;
    v78, v71, v72, v73, v74, v75, v76, v77;
  }

  while (1)
  {
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v51 >= v41)
    {
      v42, v43, v44, v45, v46, v47, v48, v49;

      return;
    }

    v40 = *(a1 + 64 + 8 * v51);
    ++v50;
    if (v40)
    {
      v50 = v51;
      goto LABEL_14;
    }
  }

  __break(1u);
}