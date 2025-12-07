unint64_t sub_1003ECE88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_10002CB0C(&v43);
  v12 = v43;
  if (!v43)
  {
    goto LABEL_25;
  }

  sub_100005EE0(v44, v42);
  v13 = *a5;
  result = sub_10002B924(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_10002CD0C(v19, a4 & 1);
    result = sub_10002B924(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_100373210();
    result = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 32 * result;
    sub_100005EF0(*(*a5 + 56) + 32 * result, v41);
    sub_10000607C(v42);

    v24 = *(v22 + 56);
    sub_10000607C((v24 + v23));
    sub_100005EE0(v41, (v24 + v23));
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v26[6] + 8 * result) = v12;
  result = sub_100005EE0(v42, (v26[7] + 32 * result));
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
LABEL_15:
    sub_10002CB0C(&v43);
    v12 = v43;
    if (v43)
    {
      v20 = 1;
      do
      {
        sub_100005EE0(v44, v42);
        v32 = *a5;
        result = sub_10002B924(v12);
        v34 = *(v32 + 16);
        v35 = (v33 & 1) == 0;
        v18 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (*(v32 + 24) < v36)
        {
          sub_10002CD0C(v36, 1);
          result = sub_10002B924(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v29 = *a5;
          v30 = 32 * result;
          sub_100005EF0(*(*a5 + 56) + 32 * result, v41);
          sub_10000607C(v42);

          v31 = *(v29 + 56);
          sub_10000607C((v31 + v30));
          sub_100005EE0(v41, (v31 + v30));
        }

        else
        {
          v38 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = sub_100005EE0(v42, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_10002CB0C(&v43);
        v12 = v43;
      }

      while (v43);
    }

LABEL_25:
    sub_10001B860(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1003ED1A4(unint64_t a1, id a2, _TtC7remindd19RDXPCStorePerformer *a3, void *a4)
{
  v5 = a2;
  v156 = v4;
  if ([a2 includeConcealed])
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v160 = &_swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v154 = v5;
      v5 = 0;
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v8 + 16))
          {
            goto LABEL_17;
          }

          v9 = *(a1 + 8 * v5 + 32);
        }

        v10 = v9;
        v11 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ([v9 isConcealed])
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v8 = a1 & 0xFFFFFFFFFFFFFF8;
        }

        ++v5;
        if (v11 == i)
        {
          a1 = v160;
          v5 = v154;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    a1 = &_swiftEmptyArrayStorage;
LABEL_20:
  }

  v12 = v5;
  type metadata accessor for REMReminderStorageCDIngestor();
  swift_initStackObject();
  if (qword_100936028 != -1)
  {
LABEL_37:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_100006654(v13, qword_100945FD0);
  v160 = a1;
  __chkstk_darwin(v14, v15);
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  sub_10000CB90(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
  v16 = Sequence.map<A>(skippingError:_:)();
  if (v156)
  {

    v17 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v17 = v16;
  }

  sub_1003E9B04(a1, v12, a3, v17);
  a1, v18, v19, v20, v21, v22, v23, v24;
  v30 = sub_1003EBF14(a1, v12, a3, v25, v26, v27, v28, v29);
  v158 = v31;
  v153 = v32;
  a1, v32, v31, v33, v34, v35, v36, v37;
  v160 = v17;
  swift_getKeyPath();
  v159 = v17;
  swift_getKeyPath();
  sub_1000F5104(&qword_10094F400, &qword_1007A77C0);
  sub_10000CB90(&qword_1009460B0, &qword_10094F400, &qword_1007A77C0);
  sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
  v38 = Sequence.indexBy<A, B>(key:value:)();

  v39 = sub_10045B744(v38);
  v38, v40, v41, v42, v43, v44, v45, v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v160 = _swiftEmptyDictionarySingleton;
  sub_1003ECE88(v39, sub_10002CCBC, 0, isUniquelyReferenced_nonNull_native, &v160);
  v39, v48, v49, v50, v51, v52, v53, v54;
  v55 = v160;
  v160 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000F5104(&qword_10094F660, &unk_1007B1570);
  sub_10000CB90(&qword_1009460B8, &qword_10094F660, &unk_1007B1570);
  v56 = Sequence.indexBy<A, B>(key:value:)();
  v30, v57, v58, v59, v60, v61, v62, v63;

  v64 = sub_10002CF88(v56);
  v56, v65, v66, v67, v68, v69, v70, v71;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v160 = v55;
  sub_1003ECE88(v64, sub_10002CCBC, 0, v72, &v160);
  v64, v73, v74, v75, v76, v77, v78, v79;
  v80 = v160;
  v160 = v153;
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = sub_1000F5104(&qword_10093F640, &qword_100796D50);
  sub_10000CB90(&qword_100939BE8, &qword_10093F640, &qword_100796D50);
  v81 = Sequence.indexBy<A, B>(key:value:)();
  v153, v82, v83, v84, v85, v86, v87, v88;

  v89 = sub_10002CAF8(v81);
  v81, v90, v91, v92, v93, v94, v95, v96;
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v160 = v80;
  sub_1003ECE88(v89, sub_10002CCBC, 0, v97, &v160);
  v89, v98, v99, v100, v101, v102, v103, v104;
  v105 = v160;
  v160 = v158;
  swift_getKeyPath();
  swift_getKeyPath();
  v106 = Sequence.indexBy<A, B>(key:value:)();
  v158, v107, v108, v109, v110, v111, v112, v113;

  v114 = sub_10045B744(v106);
  v106, v115, v116, v117, v118, v119, v120, v121;
  v122 = swift_isUniquelyReferenced_nonNull_native();
  v160 = v105;
  sub_1003ECE88(v114, sub_10002CCBC, 0, v122, &v160);
  v114, v123, v124, v125, v126, v127, v128, v129;
  type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();
  v130 = a4;
  v131 = v159;
  a3 = REMStoreObjectsContainer.init(store:storages:)();
  if (v159 >> 62)
  {
LABEL_39:
    a1 = _CocoaArrayWrapper.endIndex.getter();
    if (a1)
    {
      goto LABEL_27;
    }

LABEL_40:

    v131, v146, v147, v148, v149, v150, v151, v152;
    return;
  }

  a1 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a1)
  {
    goto LABEL_40;
  }

LABEL_27:
  v160 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((a1 & 0x8000000000000000) == 0)
  {
    v132 = 0;
    v133 = v131;
    v134 = v131 & 0xC000000000000001;
    v156 = v131 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v135 = v132 + 1;
      if (__OFADD__(v132, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v134)
      {
        v136 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v132 >= *(v156 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        v136 = *(v133 + 8 * v132 + 32);
      }

      v137 = v136;
      v138 = [v136 objectID];
      v131 = dispatch thunk of REMStoreObjectsContainer.storedReminder(with:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = *v160->clientIdentity;
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v132;
      v133 = v159;
      if (v135 == a1)
      {

        v159, v139, v140, v141, v142, v143, v144, v145;

        return;
      }
    }
  }

  __break(1u);
}

id sub_1003EDB6C()
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100791340;
  v1 = sub_10030D838(v0);
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_10030D838(v1);
  *(v0 + 88) = &type metadata for String;
  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
  v5 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0, v7, v8, v9, v10, v11, v12, v13;
  v14 = [objc_opt_self() predicateWithFormat:v5 argumentArray:isa];

  return v14;
}

id sub_1003EDC84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791340;
  v8 = sub_10030D838(v7);
  *(v7 + 56) = &type metadata for String;
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  *(v7 + 88) = sub_1000F5104(a3, a4);
  v10 = sub_1000103CC((v7 + 64));
  sub_100010364(a2, v10, a3, a4);
  v11 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7, v13, v14, v15, v16, v17, v18, v19;
  v20 = [objc_opt_self() predicateWithFormat:v11 argumentArray:isa];

  sub_1000050A4(a2, a3, a4);
  return v20;
}

id sub_1003EDEC0(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100939D90, "8\n\r");
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100939D90, "8\n\r");
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v11, v12, v13, v14, v15, v16, v17;
    v18 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100939D90, "8\n\r");
    return v18;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v20._object = 0x80000001007EC120;
    v20._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v20);
    sub_1000F5104(&unk_100942FF0, &unk_1007A3A70);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003EE15C(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100939D90, "8\n\r");
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100939D90, "8\n\r");
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v11, v12, v13, v14, v15, v16, v17;
    v18 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100939D90, "8\n\r");
    return v18;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v20._object = 0x80000001007EC120;
    v20._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v20);
    sub_1000F5104(&qword_100946510, &qword_1007A3B48);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003EE38C(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v10, v11, v12, v13, v14, v15, v16;
    v17 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v17;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v19._object = 0x80000001007EC120;
    v19._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v19);
    sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003EE564(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v10, v11, v12, v13, v14, v15, v16;
    v17 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v17;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v19._object = 0x80000001007EC120;
    v19._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v19);
    sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003EE7B4(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100939D90, "8\n\r");
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100939D90, "8\n\r");
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v11, v12, v13, v14, v15, v16, v17;
    v18 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100939D90, "8\n\r");
    return v18;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v20._object = 0x80000001007EC120;
    v20._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v20);
    sub_1000F5104(&qword_100942F58, qword_1007A76A0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003EEA00(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  _StringGuts.grow(_:)(16);
  0xE000000000000000, v10, v11, v12, v13, v14, v15, v16;
  v24._countAndFlagsBits = sub_1003AB9F4(a4, v17, v18, v19, v20, v21, v22, v23);
  object = v24._object;
  String.append(_:)(v24);
  object, v26, v27, v28, v29, v30, v31, v32;
  v33._countAndFlagsBits = 4203808;
  v33._object = 0xE300000000000000;
  String.append(_:)(v33);
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100791340;

  v35 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v36)
  {
    v37 = v35;
    v38 = v36;

    *(v34 + 32) = v37;
    *(v34 + 40) = v38;
    *(v34 + 88) = &type metadata for String;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = a2;
    *(v34 + 72) = a3;
    v39 = String._bridgeToObjectiveC()();
    0xEB00000000534E49, v40, v41, v42, v43, v44, v45, v46;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v34, v48, v49, v50, v51, v52, v53, v54;
    v55 = [objc_opt_self() predicateWithFormat:v39 argumentArray:isa];

    return v55;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v57._object = 0x80000001007EC120;
    v57._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v57);
    sub_1000F5104(a5, a6);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1003EEC48(void *a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  KeyPath = swift_getKeyPath();
  v5 = a1;
  v6 = sub_100392240(KeyPath, a1);

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = v5;
  v8 = v5;
  sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  sub_10000CB90(&qword_100946C40, &qword_10093F5C0, &qword_1007A1FB0);
  sub_10000CE28(&qword_10093F488, &qword_10093F430, NSPersistentStore_ptr);
  v9 = Sequence.compactMapToSet<A>(_:)();
  sub_10002595C(v9);
  v9, v10, v11, v12, v13, v14, v15, v16;
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v17 = [objc_allocWithZone(NSFetchRequest) init];
  v18 = [swift_getObjCClassFromMetadata() entity];
  [v17 setEntity:v18];

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v17 setAffectedStores:isa];

  [v17 setPredicate:v6];

  sub_100050AD0(v20);
  a2, v21, v22, v23, v24, v25, v26, v27;
  v28 = sub_1003FE014(_swiftEmptySetSingleton);
  _swiftEmptySetSingleton, v29, v30, v31, v32, v33, v34, v35;
  v36 = Array._bridgeToObjectiveC()().super.isa;
  v28, v37, v38, v39, v40, v41, v42, v43;
  [v17 setPropertiesToFetch:v36];
  v7, v44, v45, v46, v47, v48, v49, v50;

  v71 = [v8 managedObjectContext];
  sub_1000F5104(&qword_1009460A0, &qword_1007A7718);
  Optional.tryUnwrap(_:file:line:)();

  v51 = NSManagedObjectContext.fetch<A>(_:)();
  if (qword_100936028 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_100006654(v52, qword_100945FD0);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v62 = swift_slowAlloc();
    *v62 = 134217984;
    if (v51 >> 62)
    {
      v63 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v63 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51, v55, v56, v57, v58, v59, v60, v61;
    *(v62 + 4) = v63;
    v51, v64, v65, v66, v67, v68, v69, v70;
    _os_log_impl(&_mh_execute_header, v53, v54, "Pre-fetching {result.count: %ld}", v62, 0xCu);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

id sub_1003EF240(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100939D90, "8\n\r");
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100939D90, "8\n\r");
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v11, v12, v13, v14, v15, v16, v17;
    v18 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100939D90, "8\n\r");
    return v18;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v20._object = 0x80000001007EC120;
    v20._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v20);
    sub_1000F5104(&qword_1009464E0, &unk_1007A3960);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003EF474(uint64_t a1, int a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int32;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v10, v11, v12, v13, v14, v15, v16;
    v17 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v17;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v19._object = 0x80000001007EC120;
    v19._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v19);
    sub_1000F5104(&qword_100943068, &unk_1007A3AE8);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003EF884(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100939D90, "8\n\r");
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100939D90, "8\n\r");
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v11, v12, v13, v14, v15, v16, v17;
    v18 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100939D90, "8\n\r");
    return v18;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v20._object = 0x80000001007EC120;
    v20._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v20);
    sub_1000F5104(&qword_100940340, &unk_10079F3A0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003EFA90(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int64;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v10, v11, v12, v13, v14, v15, v16;
    v17 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v17;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v19._object = 0x80000001007EC120;
    v19._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v19);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003EFC70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100791340;

  v6 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v7 && (*(v5 + 56) = &type metadata for String, *(v5 + 32) = v6, *(v5 + 40) = v7, v8 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter(), v9))
  {
    v10 = v8;
    v11 = v9;

    *(v5 + 88) = &type metadata for String;
    *(v5 + 64) = v10;
    *(v5 + 72) = v11;
    v12 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v5, v14, v15, v16, v17, v18, v19, v20;
    v21 = [objc_opt_self() predicateWithFormat:v12 argumentArray:isa];

    return v21;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v23._object = 0x80000001007EC120;
    v23._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v23);
    sub_1000F5104(a2, a3);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003EFE4C(void *a1, uint64_t a2)
{
  v74 = a2;
  v69 = a1;
  v70 = _s10PredicatesOMa(0);
  __chkstk_darwin(v70, v2);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar.Component();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v15 - 8, v16);
  v18 = (&v69 - v17);
  v73 = type metadata accessor for Date();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73, v19);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  static Calendar.current.getter();
  (*(v6 + 104))(v9, enum case for Calendar.Component.day(_:), v5);
  if (v74 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  v22 = *(sub_1000F5104(&qword_100946038, qword_1007A7578) + 48);
  sub_100010364(v18, v4, &unk_100938850, qword_100795AE0);
  v4[v22] = 1;
  swift_storeEnumTagMultiPayload();
  v23 = sub_100043AA8();
  sub_1000504F8(v4, _s10PredicatesOMa);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v24 = [objc_allocWithZone(NSFetchRequest) init];
  v25 = [swift_getObjCClassFromMetadata() entity];
  [v24 setEntity:v25];

  [v24 setAffectedStores:0];
  [v24 setPredicate:v23];
  *(&v78 + 1) = sub_1000F5104(&qword_100939EB8, &unk_1007A35C0);
  *&v77 = v24;
  v26 = v24;
  v27 = v71;
  throwingCast<A>(_:as:failureMessage:)();
  v28 = v18;
  if (!v27)
  {
    v5 = v21;

    sub_10000607C(&v77);
    v21 = v76[0];
    v4 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v76[0]];
    [v4 setResultType:1];
    v75 = 0;
    v29 = v69;
    v30 = [v69 executeRequest:v4 error:&v75];
    v26 = v75;
    if (!v30)
    {
      v33 = v75;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1000050A4(v18, &unk_100938850, qword_100795AE0);
      (*(v72 + 8))(v5, v73);
      return v26;
    }

    v31 = v30;
    *(&v78 + 1) = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
    *&v77 = v31;
    sub_1000060C8(0, &qword_100939EC8, NSBatchDeleteResult_ptr);
    v32 = v26;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v77);
    v34 = v76[0];
    if ([v76[0] result])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100005EE0(v76, &v77);
    }

    else
    {
      v77 = 0u;
      v78 = 0u;
    }

    v35 = sub_1000F5104(&qword_100937028, &qword_100791C10);
    throwingCast<A>(_:as:failureMessage:)();
    v70 = v34;
    v74 = v28;
    sub_1000050A4(&v77, &qword_100939ED0, &qword_100791B10);
    v37 = v75;
    v71 = objc_opt_self();
    sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *&v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v77 + 1) = v39;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = v35;
    *(inited + 72) = v37;

    v40 = sub_10038ED74(inited);
    swift_setDeallocating();
    sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v40, v42, v43, v44, v45, v46, v47, v48;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1007953F0;
    *(v49 + 32) = v29;
    sub_1000060C8(0, &unk_100940130, NSManagedObjectContext_ptr);
    v50 = v29;
    v51 = Array._bridgeToObjectiveC()().super.isa;
    v49, v52, v53, v54, v55, v56, v57, v58;
    [v71 mergeChangesFromRemoteContextSave:isa intoContexts:v51];

    v18 = v37;
    if (!(v37 >> 62))
    {
      v26 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
      v59 = v73;
      v60 = v72;
      v61 = v70;

      v18, v62, v63, v64, v65, v66, v67, v68;
      sub_1000050A4(v74, &unk_100938850, qword_100795AE0);
      (*(v60 + 8))(v5, v59);
      return v26;
    }

LABEL_16:
    v26 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_14;
  }

  sub_1000050A4(v18, &unk_100938850, qword_100795AE0);
  (*(v72 + 8))(v21, v73);
  sub_10000607C(&v77);
  return v26;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003F07EC(uint64_t a1, void *a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v5 = v4;
  if (a2)
  {
    v7 = a2;
    v8 = sub_1005E37C0(v7);
    if (v4)
    {

      return v3;
    }

    v9 = v8;
    v3 = a3;
    v10 = sub_1005660A8(v8, 0);
    v5 = 0;
    if (!v10)
    {
      [objc_opt_self() noSuchObjectErrorWithObjectID:v7];
      swift_willThrow();

      goto LABEL_29;
    }

    v11 = v10;
  }

  if (qword_100936080 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v12 = sub_100043AA8();
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v13 = [objc_allocWithZone(NSFetchRequest) init];
    v14 = [swift_getObjCClassFromMetadata() entity];
    [v13 setEntity:v14];

    [v13 setAffectedStores:0];
    [v13 setPredicate:v12];

    [v13 setFetchLimit:0];
    [v13 setFetchOffset:0];
    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v65 = sub_1003EBAD0();
    sub_100271EA8(&_swiftEmptyArrayStorage);
    v16 = sub_100235FA0(Predicate);
    Predicate, v17, v18, v19, v20, v21, v22, v23;
    v24 = sub_100277CC0(v16);
    v16, v25, v26, v27, v28, v29, v30, v31;

    v32 = *v24->clientIdentity;
    v63 = v13;
    if (!v32)
    {
      goto LABEL_27;
    }

LABEL_10:
    sub_100026EF4(0, v32 & ~(v32 >> 63), 0);
    if (v32 < 0)
    {
      __break(1u);
LABEL_33:
      _StringGuts.grow(_:)(46);
      v60._object = 0x80000001007EC120;
      v60._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v60);
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v61 = a3;
    v62 = v5;
    v33 = 0;
    v64 = v32;
    while (1)
    {
      a3 = (v33 + 1);
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if ((v24 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v33 >= *v24->clientIdentity)
        {
          goto LABEL_24;
        }
      }

      v34 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v35)
      {
        goto LABEL_33;
      }

      v36 = v34;
      v37 = v35;

      v39 = *_swiftEmptyArrayStorage.clientIdentity;
      v38 = *&_swiftEmptyArrayStorage.clientIdentity[8];
      v5 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        sub_100026EF4((v38 > 1), v39 + 1, 1);
      }

      *_swiftEmptyArrayStorage.clientIdentity = v5;
      v40 = &_swiftEmptyArrayStorage + 16 * v39;
      *(v40 + 4) = v36;
      *(v40 + 5) = v37;
      ++v33;
      if (a3 == v64)
      {

        a3 = v61;
        v5 = v62;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v32 = _CocoaArrayWrapper.endIndex.getter();
  v63 = v13;
  if (v32)
  {
    goto LABEL_10;
  }

LABEL_27:

LABEL_28:
  sub_100271EA8(&_swiftEmptyArrayStorage);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v65, v42, v43, v44, v45, v46, v47, v48;
  v9 = v63;
  [v63 setRelationshipKeyPathsForPrefetching:isa];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v49 = Array._bridgeToObjectiveC()().super.isa;
  [v63 setSortDescriptors:v49];

  v3 = a3;
  v50 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v5)
  {
    v51 = v50;
    v3 = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v50);
    v51, v52, v53, v54, v55, v56, v57, v58;

    return v3;
  }

LABEL_29:

  return v3;
}

uint64_t _s10PredicatesO18ConcealedPredicateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_19;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 4;
  if (v8 <= 4)
  {
    return 0;
  }

  return result;
}

uint64_t _s10PredicatesO18ConcealedPredicateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1003F0EC4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1003F0EE0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t *sub_1003F0F08(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(v5 + 64);

  return memcpy(a1, a2, v11);
}

uint64_t *sub_1003F108C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1000504F8(a1, _s10PredicatesO19CompletionPredicateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *sub_1003F11F4(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_1003F1314(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1000504F8(a1, _s10PredicatesO19CompletionPredicateOMa);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_1003F1458(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1003F14F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = *(a3 - 8);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);

        goto LABEL_74;
      case 1u:
      case 0x21u:
        v52 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v53 = v52;
        goto LABEL_74;
      case 2u:
        v42 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v43 = v42;
        v44 = *(sub_1000F5104(&qword_10093C920, qword_1007AC750) + 64);
        v45 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v45 - 8) + 16))(a1 + v44, a2 + v44, v45);
        goto LABEL_74;
      case 3u:
        *a1 = *a2;

        v65 = sub_1000F5104(&qword_100946068, &unk_1007A7650);
        v66 = *(v65 + 48);
        v67 = _s10PredicatesO19CompletionPredicateOMa(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 2)
        {
          *(a1 + v66) = *(a2 + v66);

          swift_storeEnumTagMultiPayload();
        }

        else if (EnumCaseMultiPayload > 1)
        {
          memcpy((a1 + v66), a2 + v66, *(*(v67 - 8) + 64));
        }

        else
        {
          v69 = type metadata accessor for Date();
          (*(*(v69 - 8) + 16))(a1 + v66, a2 + v66, v69);
          swift_storeEnumTagMultiPayload();
        }

        *(a1 + *(v65 + 64)) = *(a2 + *(v65 + 64));
        goto LABEL_74;
      case 4u:
        *a1 = *a2;

        v70 = sub_1000F5104(&qword_100946060, &qword_1007A7648);
        v71 = *(v70 + 48);
        v13 = type metadata accessor for Date();
        v14 = *(v13 - 8);
        v72 = *(v14 + 48);
        if (v72(a2 + v71, 1, v13))
        {
          v73 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy((a1 + v71), a2 + v71, *(*(v73 - 8) + 64));
        }

        else
        {
          (*(v14 + 16))(a1 + v71, a2 + v71, v13);
          (*(v14 + 56))(a1 + v71, 0, 1, v13);
        }

        v12 = *(v70 + 64);
        if (v72(a2 + v12, 1, v13))
        {
          goto LABEL_63;
        }

        goto LABEL_56;
      case 5u:
        v50 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 16) = a2[2];
        v51 = v50;
        goto LABEL_74;
      case 6u:
      case 7u:
      case 0x1Au:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
        v54 = *a2;
        *a1 = *a2;
        v55 = v54;
        goto LABEL_74;
      case 8u:
      case 0x17u:
        v34 = *a2;
        *a1 = *a2;
        v35 = v34;
        v36 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
        v37 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v37 - 8) + 16))(a1 + v36, a2 + v36, v37);
        goto LABEL_74;
      case 9u:
        v81 = *a2;
        *a1 = *a2;
        v82 = v81;
        v83 = sub_1000F5104(&qword_100946058, qword_1007A75D0);
        v84 = *(v83 + 48);
        v85 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v85 - 8) + 16))(a1 + v84, a2 + v84, v85);
        *(a1 + *(v83 + 64)) = *(a2 + *(v83 + 64));
        goto LABEL_74;
      case 0xAu:
        *a1 = *a2;

        v38 = *(sub_1000F5104(&qword_100946050, &qword_1007B0450) + 48);
        v39 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v39 - 8) + 16))(a1 + v38, a2 + v38, v39);
        goto LABEL_74;
      case 0xBu:
      case 0xCu:
      case 0xFu:
        v60 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v60 - 8) + 16))(a1, a2, v60);
        goto LABEL_74;
      case 0xDu:
        v28 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v28 - 8) + 16))(a1, a2, v28);
        v29 = *(sub_1000F5104(&qword_100946048, &unk_1007A75C0) + 48);
        v30 = type metadata accessor for Date();
        (*(*(v30 - 8) + 16))(a1 + v29, a2 + v29, v30);
        goto LABEL_74;
      case 0xEu:
        v59 = type metadata accessor for Date();
        (*(*(v59 - 8) + 16))(a1, a2, v59);
        goto LABEL_74;
      case 0x10u:
        v89 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v90 = v89;
        v12 = *(sub_1000F5104(&qword_100946040, &qword_1007A75B8) + 64);
        v13 = type metadata accessor for Date();
        v14 = *(v13 - 8);
        if ((*(v14 + 48))(a2 + v12, 1, v13))
        {
          goto LABEL_63;
        }

        goto LABEL_56;
      case 0x11u:
        v86 = type metadata accessor for Date();
        v87 = *(v86 - 8);
        if ((*(v87 + 48))(a2, 1, v86))
        {
          v88 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(a1, a2, *(*(v88 - 8) + 64));
        }

        else
        {
          (*(v87 + 16))(a1, a2, v86);
          (*(v87 + 56))(a1, 0, 1, v86);
        }

        v96 = sub_1000F5104(&qword_100946038, qword_1007A7578);
        *(a1 + *(v96 + 48)) = *(a2 + *(v96 + 48));
        goto LABEL_74;
      case 0x12u:
        v20 = *a2;
        v21 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v21;
        v22 = v20;
        v23 = v21;
        v24 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
        v25 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v25 - 8) + 16))(a1 + v24, a2 + v24, v25);
        goto LABEL_74;
      case 0x13u:
        *a1 = *a2;

        v40 = *(sub_1000F5104(&qword_10093A560, &qword_100797768) + 48);
        v41 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v41 - 8) + 16))(a1 + v40, a2 + v40, v41);
        goto LABEL_74;
      case 0x14u:
      case 0x16u:
      case 0x1Cu:
      case 0x20u:
      case 0x2Au:
      case 0x2Du:
        *a1 = *a2;

        goto LABEL_74;
      case 0x15u:
        *a1 = *a2;

        v26 = *(sub_1000F5104(&qword_100941B90, &unk_1007A7560) + 48);
        v27 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v27 - 8) + 16))(a1 + v26, a2 + v26, v27);
        goto LABEL_74;
      case 0x18u:
      case 0x19u:
        v31 = *a2;
        v32 = a2[1];
        *a1 = v31;
        *(a1 + 8) = v32;

        v33 = v32;
        goto LABEL_74;
      case 0x1Bu:
        v92 = type metadata accessor for Date();
        v93 = *(*(v92 - 8) + 16);
        v93(a1, a2, v92);
        v94 = sub_1000F5104(&qword_100946030, qword_1007A74D0);
        v93(a1 + *(v94 + 48), a2 + *(v94 + 48), v92);
        goto LABEL_74;
      case 0x1Du:
        *a1 = *a2;

        v46 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
        v47 = *(v46 + 48);
        v13 = type metadata accessor for Date();
        v14 = *(v13 - 8);
        v48 = *(v14 + 48);
        if (v48(a2 + v47, 1, v13))
        {
          v49 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy((a1 + v47), a2 + v47, *(*(v49 - 8) + 64));
        }

        else
        {
          (*(v14 + 16))(a1 + v47, a2 + v47, v13);
          (*(v14 + 56))(a1 + v47, 0, 1, v13);
        }

        v12 = *(v46 + 64);
        if (!v48(a2 + v12, 1, v13))
        {
          goto LABEL_56;
        }

        goto LABEL_63;
      case 0x1Eu:
        *a1 = *a2;

        v61 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
        v62 = *(v61 + 48);
        v13 = type metadata accessor for Date();
        v14 = *(v13 - 8);
        v63 = *(v14 + 48);
        if (v63(a2 + v62, 1, v13))
        {
          v64 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy((a1 + v62), a2 + v62, *(*(v64 - 8) + 64));
        }

        else
        {
          (*(v14 + 16))(a1 + v62, a2 + v62, v13);
          (*(v14 + 56))(a1 + v62, 0, 1, v13);
        }

        v12 = *(v61 + 64);
        if (v63(a2 + v12, 1, v13))
        {
          goto LABEL_63;
        }

        goto LABEL_56;
      case 0x26u:
        v74 = *a2;
        *a1 = *a2;
        v75 = v74;
        v76 = sub_1000F5104(&unk_100939F00, &unk_1007972A0);
        v77 = *(v76 + 48);
        v78 = _s10PredicatesO19CompletionPredicateOMa(0);
        v79 = swift_getEnumCaseMultiPayload();
        if (v79 == 2)
        {
          *(a1 + v77) = *(a2 + v77);

          swift_storeEnumTagMultiPayload();
        }

        else if (v79 > 1)
        {
          memcpy((a1 + v77), a2 + v77, *(*(v78 - 8) + 64));
        }

        else
        {
          v80 = type metadata accessor for Date();
          (*(*(v80 - 8) + 16))(a1 + v77, a2 + v77, v80);
          swift_storeEnumTagMultiPayload();
        }

        *(a1 + *(v76 + 64)) = *(a2 + *(v76 + 64));
        goto LABEL_74;
      case 0x27u:
        *a1 = *a2;

        v12 = *(sub_1000F5104(&qword_100946018, qword_1007A71C8) + 48);
        v13 = type metadata accessor for Date();
        v14 = *(v13 - 8);
        if ((*(v14 + 48))(a2 + v12, 1, v13))
        {
          goto LABEL_63;
        }

        goto LABEL_56;
      case 0x28u:
        v8 = *a2;
        v9 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v9;
        v10 = v8;
        v11 = v9;
        v12 = *(sub_1000F5104(&qword_100946010, &qword_1007A71C0) + 64);
        v13 = type metadata accessor for Date();
        v14 = *(v13 - 8);
        if ((*(v14 + 48))(a2 + v12, 1, v13))
        {
          goto LABEL_63;
        }

        goto LABEL_56;
      case 0x29u:
        *a1 = *a2;

        v12 = *(sub_1000F5104(&qword_100946008, &qword_1007A71B8) + 48);
        v13 = type metadata accessor for Date();
        v14 = *(v13 - 8);
        if ((*(v14 + 48))(a2 + v12, 1, v13))
        {
LABEL_63:
          v95 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy((a1 + v12), a2 + v12, *(*(v95 - 8) + 64));
        }

        else
        {
LABEL_56:
          (*(v14 + 16))(a1 + v12, a2 + v12, v13);
          (*(v14 + 56))(a1 + v12, 0, 1, v13);
        }

        goto LABEL_74;
      case 0x2Cu:
        v91 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v91;
        *(a1 + 16) = *(a2 + 16);

        goto LABEL_74;
      case 0x2Eu:
        v17 = type metadata accessor for Date();
        v18 = *(v17 - 8);
        if ((*(v18 + 48))(a2, 1, v17))
        {
          v19 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(a1, a2, *(*(v19 - 8) + 64));
        }

        else
        {
          (*(v18 + 16))(a1, a2, v17);
          (*(v18 + 56))(a1, 0, 1, v17);
        }

        goto LABEL_74;
      case 0x2Fu:
        v56 = type metadata accessor for UUID();
        (*(*(v56 - 8) + 16))(a1, a2, v56);
        v57 = *(sub_1000F5104(&qword_100945FF0, &qword_1007AC720) + 48);
        v58 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v58 - 8) + 16))(a1 + v57, a2 + v57, v58);
LABEL_74:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v15 = *(v6 + 64);

        return memcpy(a1, a2, v15);
    }
  }

  v7 = *a2;
  *a1 = *a2;
  a1 = v7 + ((v5 + 16) & ~v5);

  return a1;
}

void *sub_1003F2CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1000504F8(a1, _s10PredicatesOMa);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);

        goto LABEL_73;
      case 1u:
      case 0x21u:
        v49 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v50 = v49;
        goto LABEL_73;
      case 2u:
        v39 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v40 = v39;
        v41 = *(sub_1000F5104(&qword_10093C920, qword_1007AC750) + 64);
        v42 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v42 - 8) + 16))(a1 + v41, a2 + v41, v42);
        goto LABEL_73;
      case 3u:
        *a1 = *a2;

        v62 = sub_1000F5104(&qword_100946068, &unk_1007A7650);
        v63 = *(v62 + 48);
        v64 = _s10PredicatesO19CompletionPredicateOMa(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 2)
        {
          *(a1 + v63) = *(a2 + v63);

          swift_storeEnumTagMultiPayload();
        }

        else if (EnumCaseMultiPayload > 1)
        {
          memcpy((a1 + v63), (a2 + v63), *(*(v64 - 8) + 64));
        }

        else
        {
          v66 = type metadata accessor for Date();
          (*(*(v66 - 8) + 16))(a1 + v63, a2 + v63, v66);
          swift_storeEnumTagMultiPayload();
        }

        *(a1 + *(v62 + 64)) = *(a2 + *(v62 + 64));
        goto LABEL_73;
      case 4u:
        *a1 = *a2;

        v67 = sub_1000F5104(&qword_100946060, &qword_1007A7648);
        v68 = *(v67 + 48);
        v11 = type metadata accessor for Date();
        v12 = *(v11 - 8);
        v69 = *(v12 + 48);
        if (v69(a2 + v68, 1, v11))
        {
          v70 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy((a1 + v68), (a2 + v68), *(*(v70 - 8) + 64));
        }

        else
        {
          (*(v12 + 16))(a1 + v68, a2 + v68, v11);
          (*(v12 + 56))(a1 + v68, 0, 1, v11);
        }

        v10 = *(v67 + 64);
        if (v69(a2 + v10, 1, v11))
        {
          goto LABEL_62;
        }

        goto LABEL_55;
      case 5u:
        v47 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 16) = *(a2 + 16);
        v48 = v47;
        goto LABEL_73;
      case 6u:
      case 7u:
      case 0x1Au:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
        v51 = *a2;
        *a1 = *a2;
        v52 = v51;
        goto LABEL_73;
      case 8u:
      case 0x17u:
        v31 = *a2;
        *a1 = *a2;
        v32 = v31;
        v33 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
        v34 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v34 - 8) + 16))(a1 + v33, a2 + v33, v34);
        goto LABEL_73;
      case 9u:
        v78 = *a2;
        *a1 = *a2;
        v79 = v78;
        v80 = sub_1000F5104(&qword_100946058, qword_1007A75D0);
        v81 = *(v80 + 48);
        v82 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v82 - 8) + 16))(a1 + v81, a2 + v81, v82);
        *(a1 + *(v80 + 64)) = *(a2 + *(v80 + 64));
        goto LABEL_73;
      case 0xAu:
        *a1 = *a2;

        v35 = *(sub_1000F5104(&qword_100946050, &qword_1007B0450) + 48);
        v36 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v36 - 8) + 16))(a1 + v35, a2 + v35, v36);
        goto LABEL_73;
      case 0xBu:
      case 0xCu:
      case 0xFu:
        v57 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v57 - 8) + 16))(a1, a2, v57);
        goto LABEL_73;
      case 0xDu:
        v26 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v26 - 8) + 16))(a1, a2, v26);
        v27 = *(sub_1000F5104(&qword_100946048, &unk_1007A75C0) + 48);
        v28 = type metadata accessor for Date();
        (*(*(v28 - 8) + 16))(a1 + v27, a2 + v27, v28);
        goto LABEL_73;
      case 0xEu:
        v56 = type metadata accessor for Date();
        (*(*(v56 - 8) + 16))(a1, a2, v56);
        goto LABEL_73;
      case 0x10u:
        v86 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v87 = v86;
        v10 = *(sub_1000F5104(&qword_100946040, &qword_1007A75B8) + 64);
        v11 = type metadata accessor for Date();
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2 + v10, 1, v11))
        {
          goto LABEL_62;
        }

        goto LABEL_55;
      case 0x11u:
        v83 = type metadata accessor for Date();
        v84 = *(v83 - 8);
        if ((*(v84 + 48))(a2, 1, v83))
        {
          v85 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(a1, a2, *(*(v85 - 8) + 64));
        }

        else
        {
          (*(v84 + 16))(a1, a2, v83);
          (*(v84 + 56))(a1, 0, 1, v83);
        }

        v92 = sub_1000F5104(&qword_100946038, qword_1007A7578);
        *(a1 + *(v92 + 48)) = *(a2 + *(v92 + 48));
        goto LABEL_73;
      case 0x12u:
        v18 = *a2;
        *a1 = *a2;
        v19 = *(a2 + 8);
        *(a1 + 8) = v19;
        v20 = v18;
        v21 = v19;
        v22 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
        v23 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v23 - 8) + 16))(a1 + v22, a2 + v22, v23);
        goto LABEL_73;
      case 0x13u:
        *a1 = *a2;

        v37 = *(sub_1000F5104(&qword_10093A560, &qword_100797768) + 48);
        v38 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v38 - 8) + 16))(a1 + v37, a2 + v37, v38);
        goto LABEL_73;
      case 0x14u:
      case 0x16u:
      case 0x1Cu:
      case 0x20u:
      case 0x2Au:
      case 0x2Du:
        *a1 = *a2;

        goto LABEL_73;
      case 0x15u:
        *a1 = *a2;

        v24 = *(sub_1000F5104(&qword_100941B90, &unk_1007A7560) + 48);
        v25 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v25 - 8) + 16))(a1 + v24, a2 + v24, v25);
        goto LABEL_73;
      case 0x18u:
      case 0x19u:
        *a1 = *a2;
        v29 = *(a2 + 8);
        *(a1 + 8) = v29;

        v30 = v29;
        goto LABEL_73;
      case 0x1Bu:
        v88 = type metadata accessor for Date();
        v89 = *(*(v88 - 8) + 16);
        v89(a1, a2, v88);
        v90 = sub_1000F5104(&qword_100946030, qword_1007A74D0);
        v89(a1 + *(v90 + 48), a2 + *(v90 + 48), v88);
        goto LABEL_73;
      case 0x1Du:
        *a1 = *a2;

        v43 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
        v44 = *(v43 + 48);
        v11 = type metadata accessor for Date();
        v12 = *(v11 - 8);
        v45 = *(v12 + 48);
        if (v45(a2 + v44, 1, v11))
        {
          v46 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy((a1 + v44), (a2 + v44), *(*(v46 - 8) + 64));
        }

        else
        {
          (*(v12 + 16))(a1 + v44, a2 + v44, v11);
          (*(v12 + 56))(a1 + v44, 0, 1, v11);
        }

        v10 = *(v43 + 64);
        if (!v45(a2 + v10, 1, v11))
        {
          goto LABEL_55;
        }

        goto LABEL_62;
      case 0x1Eu:
        *a1 = *a2;

        v58 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
        v59 = *(v58 + 48);
        v11 = type metadata accessor for Date();
        v12 = *(v11 - 8);
        v60 = *(v12 + 48);
        if (v60(a2 + v59, 1, v11))
        {
          v61 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy((a1 + v59), (a2 + v59), *(*(v61 - 8) + 64));
        }

        else
        {
          (*(v12 + 16))(a1 + v59, a2 + v59, v11);
          (*(v12 + 56))(a1 + v59, 0, 1, v11);
        }

        v10 = *(v58 + 64);
        if (v60(a2 + v10, 1, v11))
        {
          goto LABEL_62;
        }

        goto LABEL_55;
      case 0x26u:
        v71 = *a2;
        *a1 = *a2;
        v72 = v71;
        v73 = sub_1000F5104(&unk_100939F00, &unk_1007972A0);
        v74 = *(v73 + 48);
        v75 = _s10PredicatesO19CompletionPredicateOMa(0);
        v76 = swift_getEnumCaseMultiPayload();
        if (v76 == 2)
        {
          *(a1 + v74) = *(a2 + v74);

          swift_storeEnumTagMultiPayload();
        }

        else if (v76 > 1)
        {
          memcpy((a1 + v74), (a2 + v74), *(*(v75 - 8) + 64));
        }

        else
        {
          v77 = type metadata accessor for Date();
          (*(*(v77 - 8) + 16))(a1 + v74, a2 + v74, v77);
          swift_storeEnumTagMultiPayload();
        }

        *(a1 + *(v73 + 64)) = *(a2 + *(v73 + 64));
        goto LABEL_73;
      case 0x27u:
        *a1 = *a2;

        v10 = *(sub_1000F5104(&qword_100946018, qword_1007A71C8) + 48);
        v11 = type metadata accessor for Date();
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2 + v10, 1, v11))
        {
          goto LABEL_62;
        }

        goto LABEL_55;
      case 0x28u:
        v6 = *a2;
        *a1 = *a2;
        v7 = *(a2 + 8);
        *(a1 + 8) = v7;
        v8 = v6;
        v9 = v7;
        v10 = *(sub_1000F5104(&qword_100946010, &qword_1007A71C0) + 64);
        v11 = type metadata accessor for Date();
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2 + v10, 1, v11))
        {
          goto LABEL_62;
        }

        goto LABEL_55;
      case 0x29u:
        *a1 = *a2;

        v10 = *(sub_1000F5104(&qword_100946008, &qword_1007A71B8) + 48);
        v11 = type metadata accessor for Date();
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2 + v10, 1, v11))
        {
LABEL_62:
          v91 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy((a1 + v10), (a2 + v10), *(*(v91 - 8) + 64));
        }

        else
        {
LABEL_55:
          (*(v12 + 16))(a1 + v10, a2 + v10, v11);
          (*(v12 + 56))(a1 + v10, 0, 1, v11);
        }

        goto LABEL_73;
      case 0x2Cu:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 16) = *(a2 + 16);

        goto LABEL_73;
      case 0x2Eu:
        v15 = type metadata accessor for Date();
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2, 1, v15))
        {
          v17 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(a1, a2, *(*(v17 - 8) + 64));
        }

        else
        {
          (*(v16 + 16))(a1, a2, v15);
          (*(v16 + 56))(a1, 0, 1, v15);
        }

        goto LABEL_73;
      case 0x2Fu:
        v53 = type metadata accessor for UUID();
        (*(*(v53 - 8) + 16))(a1, a2, v53);
        v54 = *(sub_1000F5104(&qword_100945FF0, &qword_1007AC720) + 48);
        v55 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v55 - 8) + 16))(a1 + v54, a2 + v54, v55);
LABEL_73:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v13 = *(*(a3 - 8) + 64);

        return memcpy(a1, a2, v13);
    }
  }

  return a1;
}

void *sub_1003F446C(char *a1, char *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      *a1 = *a2;
      a1[8] = a2[8];
      v6 = *(sub_1000F5104(&qword_10093C920, qword_1007AC750) + 64);
      v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
      goto LABEL_61;
    case 3u:
      *a1 = *a2;
      v38 = sub_1000F5104(&qword_100946068, &unk_1007A7650);
      v39 = *(v38 + 48);
      v40 = _s10PredicatesO19CompletionPredicateOMa(0);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        memcpy(&a1[v39], &a2[v39], *(*(v40 - 8) + 64));
      }

      else
      {
        v41 = type metadata accessor for Date();
        (*(*(v41 - 8) + 32))(&a1[v39], &a2[v39], v41);
        swift_storeEnumTagMultiPayload();
      }

      a1[*(v38 + 64)] = a2[*(v38 + 64)];
      goto LABEL_61;
    case 4u:
      *a1 = *a2;
      v20 = sub_1000F5104(&qword_100946060, &qword_1007A7648);
      v21 = *(v20 + 48);
      v10 = type metadata accessor for Date();
      v11 = *(v10 - 8);
      v22 = *(v11 + 48);
      if (v22(&a2[v21], 1, v10))
      {
        v23 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy(&a1[v21], &a2[v21], *(*(v23 - 8) + 64));
      }

      else
      {
        (*(v11 + 32))(&a1[v21], &a2[v21], v10);
        (*(v11 + 56))(&a1[v21], 0, 1, v10);
      }

      v14 = *(v20 + 64);
      if (v22(&a2[v14], 1, v10))
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 8u:
    case 0x17u:
      *a1 = *a2;
      v36 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
      v37 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v37 - 8) + 32))(&a1[v36], &a2[v36], v37);
      goto LABEL_61;
    case 9u:
      *a1 = *a2;
      v24 = sub_1000F5104(&qword_100946058, qword_1007A75D0);
      v25 = *(v24 + 48);
      v26 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v26 - 8) + 32))(&a1[v25], &a2[v25], v26);
      a1[*(v24 + 64)] = a2[*(v24 + 64)];
      goto LABEL_61;
    case 0xAu:
      *a1 = *a2;
      v34 = *(sub_1000F5104(&qword_100946050, &qword_1007B0450) + 48);
      v35 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v35 - 8) + 32))(&a1[v34], &a2[v34], v35);
      goto LABEL_61;
    case 0xBu:
    case 0xCu:
    case 0xFu:
      v45 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v45 - 8) + 32))(a1, a2, v45);
      goto LABEL_61;
    case 0xDu:
      v53 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v53 - 8) + 32))(a1, a2, v53);
      v54 = *(sub_1000F5104(&qword_100946048, &unk_1007A75C0) + 48);
      v55 = type metadata accessor for Date();
      (*(*(v55 - 8) + 32))(&a1[v54], &a2[v54], v55);
      goto LABEL_61;
    case 0xEu:
      v50 = type metadata accessor for Date();
      (*(*(v50 - 8) + 32))(a1, a2, v50);
      goto LABEL_61;
    case 0x10u:
      *a1 = *a2;
      a1[8] = a2[8];
      v14 = *(sub_1000F5104(&qword_100946040, &qword_1007A75B8) + 64);
      v10 = type metadata accessor for Date();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(&a2[v14], 1, v10))
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 0x11u:
      v27 = type metadata accessor for Date();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(a2, 1, v27))
      {
        v29 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy(a1, a2, *(*(v29 - 8) + 64));
      }

      else
      {
        (*(v28 + 32))(a1, a2, v27);
        (*(v28 + 56))(a1, 0, 1, v27);
      }

      v63 = sub_1000F5104(&qword_100946038, qword_1007A7578);
      a1[*(v63 + 48)] = a2[*(v63 + 48)];
      goto LABEL_61;
    case 0x12u:
      *a1 = *a2;
      v15 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
      v16 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v16 - 8) + 32))(&a1[v15], &a2[v15], v16);
      goto LABEL_61;
    case 0x13u:
      *a1 = *a2;
      v46 = *(sub_1000F5104(&qword_10093A560, &qword_100797768) + 48);
      v47 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v47 - 8) + 32))(&a1[v46], &a2[v46], v47);
      goto LABEL_61;
    case 0x15u:
      *a1 = *a2;
      v48 = *(sub_1000F5104(&qword_100941B90, &unk_1007A7560) + 48);
      v49 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v49 - 8) + 32))(&a1[v48], &a2[v48], v49);
      goto LABEL_61;
    case 0x1Bu:
      v56 = type metadata accessor for Date();
      v57 = *(*(v56 - 8) + 32);
      v57(a1, a2, v56);
      v58 = sub_1000F5104(&qword_100946030, qword_1007A74D0);
      v57(&a1[*(v58 + 48)], &a2[*(v58 + 48)], v56);
      goto LABEL_61;
    case 0x1Du:
      *a1 = *a2;
      v8 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
      v9 = *(v8 + 48);
      v10 = type metadata accessor for Date();
      v11 = *(v10 - 8);
      v12 = *(v11 + 48);
      if (v12(&a2[v9], 1, v10))
      {
        v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy(&a1[v9], &a2[v9], *(*(v13 - 8) + 64));
      }

      else
      {
        (*(v11 + 32))(&a1[v9], &a2[v9], v10);
        (*(v11 + 56))(&a1[v9], 0, 1, v10);
      }

      v14 = *(v8 + 64);
      if (!v12(&a2[v14], 1, v10))
      {
        goto LABEL_41;
      }

      goto LABEL_53;
    case 0x1Eu:
      *a1 = *a2;
      v30 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
      v31 = *(v30 + 48);
      v10 = type metadata accessor for Date();
      v11 = *(v10 - 8);
      v32 = *(v11 + 48);
      if (v32(&a2[v31], 1, v10))
      {
        v33 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy(&a1[v31], &a2[v31], *(*(v33 - 8) + 64));
      }

      else
      {
        (*(v11 + 32))(&a1[v31], &a2[v31], v10);
        (*(v11 + 56))(&a1[v31], 0, 1, v10);
      }

      v14 = *(v30 + 64);
      if (v32(&a2[v14], 1, v10))
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 0x26u:
      *a1 = *a2;
      v59 = sub_1000F5104(&unk_100939F00, &unk_1007972A0);
      v60 = *(v59 + 48);
      v61 = _s10PredicatesO19CompletionPredicateOMa(0);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        memcpy(&a1[v60], &a2[v60], *(*(v61 - 8) + 64));
      }

      else
      {
        v62 = type metadata accessor for Date();
        (*(*(v62 - 8) + 32))(&a1[v60], &a2[v60], v62);
        swift_storeEnumTagMultiPayload();
      }

      a1[*(v59 + 64)] = a2[*(v59 + 64)];
      goto LABEL_61;
    case 0x27u:
      *a1 = *a2;
      v14 = *(sub_1000F5104(&qword_100946018, qword_1007A71C8) + 48);
      v10 = type metadata accessor for Date();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(&a2[v14], 1, v10))
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 0x28u:
      *a1 = *a2;
      v14 = *(sub_1000F5104(&qword_100946010, &qword_1007A71C0) + 64);
      v10 = type metadata accessor for Date();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(&a2[v14], 1, v10))
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 0x29u:
      *a1 = *a2;
      v14 = *(sub_1000F5104(&qword_100946008, &qword_1007A71B8) + 48);
      v10 = type metadata accessor for Date();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(&a2[v14], 1, v10))
      {
LABEL_53:
        v64 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy(&a1[v14], &a2[v14], *(*(v64 - 8) + 64));
      }

      else
      {
LABEL_41:
        (*(v11 + 32))(&a1[v14], &a2[v14], v10);
        (*(v11 + 56))(&a1[v14], 0, 1, v10);
      }

      goto LABEL_61;
    case 0x2Eu:
      v42 = type metadata accessor for Date();
      v43 = *(v42 - 8);
      if ((*(v43 + 48))(a2, 1, v42))
      {
        v44 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy(a1, a2, *(*(v44 - 8) + 64));
      }

      else
      {
        (*(v43 + 32))(a1, a2, v42);
        (*(v43 + 56))(a1, 0, 1, v42);
      }

      goto LABEL_61;
    case 0x2Fu:
      v17 = type metadata accessor for UUID();
      (*(*(v17 - 8) + 32))(a1, a2, v17);
      v18 = *(sub_1000F5104(&qword_100945FF0, &qword_1007AC720) + 48);
      v19 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v19 - 8) + 32))(&a1[v18], &a2[v18], v19);
LABEL_61:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v51 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v51);
      break;
  }

  return result;
}

char *sub_1003F58E0(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1000504F8(a1, _s10PredicatesOMa);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 2u:
        *a1 = *a2;
        a1[8] = a2[8];
        v6 = *(sub_1000F5104(&qword_10093C920, qword_1007AC750) + 64);
        v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
        goto LABEL_62;
      case 3u:
        *a1 = *a2;
        v38 = sub_1000F5104(&qword_100946068, &unk_1007A7650);
        v39 = *(v38 + 48);
        v40 = _s10PredicatesO19CompletionPredicateOMa(0);
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          memcpy(&a1[v39], &a2[v39], *(*(v40 - 8) + 64));
        }

        else
        {
          v41 = type metadata accessor for Date();
          (*(*(v41 - 8) + 32))(&a1[v39], &a2[v39], v41);
          swift_storeEnumTagMultiPayload();
        }

        a1[*(v38 + 64)] = a2[*(v38 + 64)];
        goto LABEL_62;
      case 4u:
        *a1 = *a2;
        v20 = sub_1000F5104(&qword_100946060, &qword_1007A7648);
        v21 = *(v20 + 48);
        v10 = type metadata accessor for Date();
        v11 = *(v10 - 8);
        v22 = *(v11 + 48);
        if (v22(&a2[v21], 1, v10))
        {
          v23 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(&a1[v21], &a2[v21], *(*(v23 - 8) + 64));
        }

        else
        {
          (*(v11 + 32))(&a1[v21], &a2[v21], v10);
          (*(v11 + 56))(&a1[v21], 0, 1, v10);
        }

        v14 = *(v20 + 64);
        if (v22(&a2[v14], 1, v10))
        {
          goto LABEL_54;
        }

        goto LABEL_42;
      case 8u:
      case 0x17u:
        *a1 = *a2;
        v36 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
        v37 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v37 - 8) + 32))(&a1[v36], &a2[v36], v37);
        goto LABEL_62;
      case 9u:
        *a1 = *a2;
        v24 = sub_1000F5104(&qword_100946058, qword_1007A75D0);
        v25 = *(v24 + 48);
        v26 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v26 - 8) + 32))(&a1[v25], &a2[v25], v26);
        a1[*(v24 + 64)] = a2[*(v24 + 64)];
        goto LABEL_62;
      case 0xAu:
        *a1 = *a2;
        v34 = *(sub_1000F5104(&qword_100946050, &qword_1007B0450) + 48);
        v35 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v35 - 8) + 32))(&a1[v34], &a2[v34], v35);
        goto LABEL_62;
      case 0xBu:
      case 0xCu:
      case 0xFu:
        v45 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v45 - 8) + 32))(a1, a2, v45);
        goto LABEL_62;
      case 0xDu:
        v53 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v53 - 8) + 32))(a1, a2, v53);
        v54 = *(sub_1000F5104(&qword_100946048, &unk_1007A75C0) + 48);
        v55 = type metadata accessor for Date();
        (*(*(v55 - 8) + 32))(&a1[v54], &a2[v54], v55);
        goto LABEL_62;
      case 0xEu:
        v50 = type metadata accessor for Date();
        (*(*(v50 - 8) + 32))(a1, a2, v50);
        goto LABEL_62;
      case 0x10u:
        *a1 = *a2;
        a1[8] = a2[8];
        v14 = *(sub_1000F5104(&qword_100946040, &qword_1007A75B8) + 64);
        v10 = type metadata accessor for Date();
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(&a2[v14], 1, v10))
        {
          goto LABEL_54;
        }

        goto LABEL_42;
      case 0x11u:
        v27 = type metadata accessor for Date();
        v28 = *(v27 - 8);
        if ((*(v28 + 48))(a2, 1, v27))
        {
          v29 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(a1, a2, *(*(v29 - 8) + 64));
        }

        else
        {
          (*(v28 + 32))(a1, a2, v27);
          (*(v28 + 56))(a1, 0, 1, v27);
        }

        v63 = sub_1000F5104(&qword_100946038, qword_1007A7578);
        a1[*(v63 + 48)] = a2[*(v63 + 48)];
        goto LABEL_62;
      case 0x12u:
        *a1 = *a2;
        v15 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
        v16 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v16 - 8) + 32))(&a1[v15], &a2[v15], v16);
        goto LABEL_62;
      case 0x13u:
        *a1 = *a2;
        v46 = *(sub_1000F5104(&qword_10093A560, &qword_100797768) + 48);
        v47 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v47 - 8) + 32))(&a1[v46], &a2[v46], v47);
        goto LABEL_62;
      case 0x15u:
        *a1 = *a2;
        v48 = *(sub_1000F5104(&qword_100941B90, &unk_1007A7560) + 48);
        v49 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v49 - 8) + 32))(&a1[v48], &a2[v48], v49);
        goto LABEL_62;
      case 0x1Bu:
        v56 = type metadata accessor for Date();
        v57 = *(*(v56 - 8) + 32);
        v57(a1, a2, v56);
        v58 = sub_1000F5104(&qword_100946030, qword_1007A74D0);
        v57(&a1[*(v58 + 48)], &a2[*(v58 + 48)], v56);
        goto LABEL_62;
      case 0x1Du:
        *a1 = *a2;
        v8 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
        v9 = *(v8 + 48);
        v10 = type metadata accessor for Date();
        v11 = *(v10 - 8);
        v12 = *(v11 + 48);
        if (v12(&a2[v9], 1, v10))
        {
          v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(&a1[v9], &a2[v9], *(*(v13 - 8) + 64));
        }

        else
        {
          (*(v11 + 32))(&a1[v9], &a2[v9], v10);
          (*(v11 + 56))(&a1[v9], 0, 1, v10);
        }

        v14 = *(v8 + 64);
        if (!v12(&a2[v14], 1, v10))
        {
          goto LABEL_42;
        }

        goto LABEL_54;
      case 0x1Eu:
        *a1 = *a2;
        v30 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
        v31 = *(v30 + 48);
        v10 = type metadata accessor for Date();
        v11 = *(v10 - 8);
        v32 = *(v11 + 48);
        if (v32(&a2[v31], 1, v10))
        {
          v33 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(&a1[v31], &a2[v31], *(*(v33 - 8) + 64));
        }

        else
        {
          (*(v11 + 32))(&a1[v31], &a2[v31], v10);
          (*(v11 + 56))(&a1[v31], 0, 1, v10);
        }

        v14 = *(v30 + 64);
        if (v32(&a2[v14], 1, v10))
        {
          goto LABEL_54;
        }

        goto LABEL_42;
      case 0x26u:
        *a1 = *a2;
        v59 = sub_1000F5104(&unk_100939F00, &unk_1007972A0);
        v60 = *(v59 + 48);
        v61 = _s10PredicatesO19CompletionPredicateOMa(0);
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          memcpy(&a1[v60], &a2[v60], *(*(v61 - 8) + 64));
        }

        else
        {
          v62 = type metadata accessor for Date();
          (*(*(v62 - 8) + 32))(&a1[v60], &a2[v60], v62);
          swift_storeEnumTagMultiPayload();
        }

        a1[*(v59 + 64)] = a2[*(v59 + 64)];
        goto LABEL_62;
      case 0x27u:
        *a1 = *a2;
        v14 = *(sub_1000F5104(&qword_100946018, qword_1007A71C8) + 48);
        v10 = type metadata accessor for Date();
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(&a2[v14], 1, v10))
        {
          goto LABEL_54;
        }

        goto LABEL_42;
      case 0x28u:
        *a1 = *a2;
        v14 = *(sub_1000F5104(&qword_100946010, &qword_1007A71C0) + 64);
        v10 = type metadata accessor for Date();
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(&a2[v14], 1, v10))
        {
          goto LABEL_54;
        }

        goto LABEL_42;
      case 0x29u:
        *a1 = *a2;
        v14 = *(sub_1000F5104(&qword_100946008, &qword_1007A71B8) + 48);
        v10 = type metadata accessor for Date();
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(&a2[v14], 1, v10))
        {
LABEL_54:
          v64 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(&a1[v14], &a2[v14], *(*(v64 - 8) + 64));
        }

        else
        {
LABEL_42:
          (*(v11 + 32))(&a1[v14], &a2[v14], v10);
          (*(v11 + 56))(&a1[v14], 0, 1, v10);
        }

        goto LABEL_62;
      case 0x2Eu:
        v42 = type metadata accessor for Date();
        v43 = *(v42 - 8);
        if ((*(v43 + 48))(a2, 1, v42))
        {
          v44 = sub_1000F5104(&unk_100938850, qword_100795AE0);
          memcpy(a1, a2, *(*(v44 - 8) + 64));
        }

        else
        {
          (*(v43 + 32))(a1, a2, v42);
          (*(v43 + 56))(a1, 0, 1, v42);
        }

        goto LABEL_62;
      case 0x2Fu:
        v17 = type metadata accessor for UUID();
        (*(*(v17 - 8) + 32))(a1, a2, v17);
        v18 = *(sub_1000F5104(&qword_100945FF0, &qword_1007AC720) + 48);
        v19 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
        (*(*(v19 - 8) + 32))(&a1[v18], &a2[v18], v19);
LABEL_62:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v51 = *(*(a3 - 8) + 64);

        return memcpy(a1, a2, v51);
    }
  }

  return a1;
}

void sub_1003F6D78(uint64_t a1)
{
  v33 = "\t";
  v34 = &unk_1007A78B0;
  v1 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  if (v2 <= 0x3F)
  {
    v3 = *(v1 - 8) + 64;
    swift_getTupleTypeLayout3();
    v35 = &v32;
    _s10PredicatesO19CompletionPredicateOMa(319);
    if (v4 <= 0x3F)
    {
      swift_getTupleTypeLayout3();
      v36 = &v31;
      sub_100140DD4(319);
      if (v6 <= 0x3F)
      {
        v7 = *(v5 - 8) + 64;
        swift_getTupleTypeLayout3();
        v37 = &v30;
        v38 = &unk_1007A78F8;
        v39 = &value witness table for Builtin.UnknownObject + 64;
        v40 = &value witness table for Builtin.UnknownObject + 64;
        swift_getTupleTypeLayout2();
        v41 = &v29;
        swift_getTupleTypeLayout3();
        v42 = &v28;
        swift_getTupleTypeLayout2();
        v43 = &v27;
        v44 = v3;
        v45 = v3;
        v8 = type metadata accessor for Date();
        if (v9 <= 0x3F)
        {
          v10 = *(v8 - 8) + 64;
          swift_getTupleTypeLayout2();
          v46 = &v26;
          v47 = v10;
          v48 = v3;
          swift_getTupleTypeLayout3();
          v49 = &v25;
          swift_getTupleTypeLayout2();
          v50 = &v24;
          swift_getTupleTypeLayout3();
          v51 = &v23;
          swift_getTupleTypeLayout2();
          v52 = &v22;
          v53 = &value witness table for Builtin.BridgeObject + 64;
          swift_getTupleTypeLayout2();
          v54 = &v21;
          v55 = &value witness table for Builtin.BridgeObject + 64;
          swift_getTupleTypeLayout2();
          v56 = &v20;
          v57 = &unk_1007A7910;
          v58 = &unk_1007A7910;
          v59 = &value witness table for Builtin.UnknownObject + 64;
          swift_getTupleTypeLayout2();
          v60 = &v19;
          v61 = &value witness table for Builtin.BridgeObject + 64;
          swift_getTupleTypeLayout3();
          v62 = &v18;
          swift_getTupleTypeLayout3();
          v63 = &v17;
          v64 = &value witness table for Builtin.Int64 + 64;
          v65 = &value witness table for Builtin.BridgeObject + 64;
          v66 = "\t";
          v67 = &value witness table for Builtin.UnknownObject + 64;
          v68 = &value witness table for Builtin.UnknownObject + 64;
          v69 = &value witness table for Builtin.UnknownObject + 64;
          v70 = &value witness table for Builtin.UnknownObject + 64;
          swift_getTupleTypeLayout3();
          v71 = &v16;
          swift_getTupleTypeLayout2();
          v72 = &v15;
          swift_getTupleTypeLayout3();
          v73 = &v14;
          swift_getTupleTypeLayout2();
          v74 = &v13;
          v75 = &value witness table for Builtin.BridgeObject + 64;
          v76 = &unk_1007A78C8;
          v77 = &unk_1007A7928;
          v78 = &value witness table for Builtin.BridgeObject + 64;
          v79 = v7;
          type metadata accessor for UUID();
          if (v11 <= 0x3F)
          {
            swift_getTupleTypeLayout2();
            v80 = &v12;
            swift_initEnumMetadataMultiPayload();
          }
        }
      }
    }
  }
}

void REMOwlEmbeddingClassifier.__allocating_init(locale:embeddingVersion:headerModelURL:numOfClasses:labels:)(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t a5, uint64_t a6, _TtC7remindd19RDXPCStorePerformer *a7)
{
  v49 = a7;
  v47 = a6;
  v48 = a4;
  v45 = a1;
  v46 = a3;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(MLModelConfiguration);
  v16 = [v15 init];
  [v16 setComputeUnits:2];
  sub_1000060C8(0, &qword_100946230, MLModel_ptr);
  (*(v11 + 16))(v14, a5, v10);
  v17 = v16;
  v18 = sub_1003F98D4(v14, v17);
  if (v7)
  {

    (*(v11 + 8))(a5, v10);
    a2, v19, v20, v21, v22, v23, v24, v25;
    v48, v26, v27, v28, v29, v30, v31, v32;
    v49, v33, v34, v35, v36, v37, v38, v39;
  }

  else
  {
    v40 = v18;

    v41 = swift_allocObject();
    v41[3] = [objc_allocWithZone(CDMClient) init];
    Locale.init(identifier:)();

    (*(v11 + 8))(a5, v10);
    v42 = (v41 + OBJC_IVAR____TtC7remindd25REMOwlEmbeddingClassifier_embeddingVersion);
    v43 = v48;
    *v42 = v46;
    v42[1] = v43;
    v44 = v47;
    v41[4] = v40;
    v41[5] = v44;
    v41[2] = v49;
  }
}

uint64_t sub_1003F7458()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100946218);
  v1 = sub_100006654(v0, qword_100946218);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMOwlEmbeddingClassifier.predict(_:thresholds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[47] = a3;
  v4[48] = v3;
  v4[45] = a1;
  v4[46] = a2;
  return _swift_task_switch(sub_1003F7544, 0, 0);
}

uint64_t sub_1003F7544(void *a1)
{
  v2 = v1[47];
  v3 = v1[48];
  if (!v2)
  {
    v4 = *(v3 + 40);
    if (v4 < 0)
    {
      __break(1u);
      return _swift_continuation_await(a1);
    }

    if (v4)
    {
      v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *v2->clientIdentity = v4;
      memset_pattern16(&v2->clientIdentity[16], &unk_1007A7940, 4 * v4);
      v3 = v1[48];
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
    }

LABEL_11:
    v1[49] = v2;
    v1[50] = v4;
    v8 = *(v3 + 24);
    v1[51] = v8;
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v1[52] = isa;
    v10 = String._bridgeToObjectiveC()();
    v1[53] = v10;
    v1[2] = v1;
    v1[3] = sub_1003F7780;
    v11 = swift_continuation_init();
    v1[35] = sub_1000F5104(&qword_100946248, &unk_1007B6E90);
    v1[28] = _NSConcreteStackBlock;
    v1[29] = 1107296256;
    v1[30] = sub_1003F8964;
    v1[31] = &unk_1008F0670;
    v1[32] = v11;
    [v8 setupWithLocale:isa embeddingVersion:v10 completionHandler:v1 + 28];
    a1 = v1 + 2;

    return _swift_continuation_await(a1);
  }

  v4 = *v2->clientIdentity;
  if (v4 == *(v3 + 40))
  {

    goto LABEL_11;
  }

  sub_1003F9A34();
  swift_allocError();
  *v5 = 0;
  swift_willThrow();
  v6 = v1[1];

  return v6();
}

uint64_t sub_1003F7780(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *v8;
  v10 = *(*v8 + 48);
  *(*v8 + 432) = v10;
  if (v10)
  {
    *(v9 + 392), a2, a3, a4, a5, a6, a7, a8;
    v11 = sub_1003F87FC;
  }

  else
  {
    v11 = sub_1003F7898;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1003F7898()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 408);

  v3 = String._bridgeToObjectiveC()();
  *(v0 + 440) = v3;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 352;
  *(v0 + 88) = sub_1003F79EC;
  v4 = swift_continuation_init();
  *(v0 + 344) = sub_1000F5104(&qword_100946250, qword_1007A7960);
  *(v0 + 288) = _NSConcreteStackBlock;
  *(v0 + 296) = 1107296256;
  *(v0 + 304) = sub_1003F8A10;
  *(v0 + 312) = &unk_1008F0698;
  *(v0 + 320) = v4;
  [v2 processEmbeddingRequest:v3 completionHandler:v0 + 288];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_1003F79EC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *v8;
  v10 = *(*v8 + 112);
  *(*v8 + 448) = v10;
  if (v10)
  {
    *(v9 + 392), a2, a3, a4, a5, a6, a7, a8;
    v11 = sub_1003F8874;
  }

  else
  {
    v11 = sub_1003F7B04;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1003F7B04()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 352);
  *(v0 + 456) = v2;

  v3 = [v2 subwordTokenEmbedding];
  v11 = v3;
  *(v0 + 464) = v3;
  if (!v3)
  {
    goto LABEL_11;
  }

  v12 = v3;
  v13 = [v12 embeddingTensor];
  if (!v13)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = v13;
  v16 = [v13 values];

  if (!v16)
  {

LABEL_11:
    *(v0 + 392), v4, v5, v6, v7, v8, v9, v10;
    sub_1003F9A34();
    swift_allocError();
    *v34 = 2;
    swift_willThrow();
    goto LABEL_15;
  }

  if ([v12 embeddingDim] == 192)
  {
    v13 = [v12 embeddingTensor];
    if (!v13)
    {
LABEL_34:
      __break(1u);
      return MLModel.prediction(from:options:)(v13, v14);
    }

    v24 = v13;
    v25 = [v13 numToken];

    if (v25 < 0)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_8;
    }

    if (v25)
    {
LABEL_8:
      v32 = 192 * v25;
      if ((v25 * 192) >> 64 == (192 * v25) >> 63)
      {
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_100796900;
        sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
        *(v33 + 32) = NSNumber.init(integerLiteral:)(1);
        *(v33 + 40) = Int._bridgeToObjectiveC()();
        objc_allocWithZone(MLMultiArray);
        v13 = sub_1003F8F54(v33, 65600);
        *(v0 + 472) = v13;
        v58 = v12;
        if ((v32 & 0x8000000000000000) == 0)
        {
          v39 = v13;
          if (v32)
          {
            for (i = 0; i != v32; ++i)
            {
              v44 = i % 192;
              if (i > 191)
              {
                v41 = [v39 objectAtIndexedSubscript:{i % 192, v58}];
                [v41 doubleValue];

                v42.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
              }

              else
              {
                v42.super.super.isa = Float._bridgeToObjectiveC()().super.super.isa;
              }

              isa = v42.super.super.isa;
              [v39 setObject:v42.super.super.isa atIndexedSubscript:{v44, v58}];
            }
          }

          for (j = 0; j != 192; ++j)
          {
            v46 = [v39 objectAtIndexedSubscript:{j, v58}];
            [v46 doubleValue];

            v47 = Double._bridgeToObjectiveC()().super.super.isa;
            [v39 setObject:v47 atIndexedSubscript:j];
          }

          sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
          inited = swift_initStackObject();
          *(inited + 32) = 0x7475706E69;
          *(inited + 16) = xmmword_100791300;
          *(inited + 40) = 0xE500000000000000;
          v49 = [objc_opt_self() featureValueWithMultiArray:v39];
          *(inited + 72) = sub_1000060C8(0, &qword_100946260, MLFeatureValue_ptr);
          *(inited + 48) = v49;
          v50 = sub_1001F67C8(inited);
          swift_setDeallocating();
          sub_1003F9A88(inited + 32);
          v51 = objc_allocWithZone(MLDictionaryFeatureProvider);
          v52 = sub_1003F9050(v50);
          *(v0 + 480) = v52;
          v53 = v52;
          v54 = objc_allocWithZone(MLPredictionOptions);
          v55 = v53;
          v56 = [v54 init];
          *(v0 + 488) = v56;
          v57 = swift_task_alloc();
          *(v0 + 496) = v57;
          *v57 = v0;
          v57[1] = sub_1003F80A0;
          v13 = v55;
          v14 = v56;

          return MLModel.prediction(from:options:)(v13, v14);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_33;
    }

    *(v0 + 392), v14, v26, v27, v28, v29, v30, v31;
    sub_1003F9A34();
    swift_allocError();
    v36 = 3;
  }

  else
  {
    *(v0 + 392), v17, v18, v19, v20, v21, v22, v23;
    sub_1003F9A34();
    swift_allocError();
    v36 = 1;
  }

  *v35 = v36;
  swift_willThrow();

  v11 = v12;
LABEL_15:

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1003F80A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 504) = a1;
  *(v4 + 512) = v1;

  v5 = *(v3 + 488);
  v6 = *(v3 + 480);
  if (v1)
  {
    v7 = *(v4 + 392);

    v7, v8, v9, v10, v11, v12, v13, v14;
    v15 = sub_1003F88E4;
  }

  else
  {

    v15 = sub_1003F8218;
  }

  return _swift_task_switch(v15, 0, 0);
}

void sub_1003F8218()
{
  v97 = v0;
  v1 = *(v0 + 504);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 featureValueForName:v2];

  if (!v3 || (v4 = [v3 multiArrayValue], v3, !v4))
  {
    v17 = *(v0 + 472);
    v18 = *(v0 + 480);
    v19 = *(v0 + 456);
    v6 = *(v0 + 392);

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  if (*(v0 + 400))
  {
    v5 = 0;
    v6 = &_swiftEmptyArrayStorage;
    do
    {
      v7 = [v4 objectAtIndexedSubscript:v5];
      Float.init(truncating:)();
      v9 = v8;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100366C18(0, *v6->clientIdentity + 1, 1, v6, v10, v11, v12, v13);
      }

      v15 = *v6->clientIdentity;
      v14 = *&v6->clientIdentity[8];
      if (v15 >= v14 >> 1)
      {
        v6 = sub_100366C18((v14 > 1), v15 + 1, 1, v6, v10, v11, v12, v13);
      }

      ++v5;
      v16 = *(v0 + 400);
      *v6->clientIdentity = v15 + 1;
      *&v6->clientIdentity[4 * v15 + 16] = v9;
    }

    while (v5 != v16);
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
  }

  v88 = v4;
  v29 = *(v0 + 384);
  v30 = Array<A>.softmax()();
  v38 = v30;
  v39 = *(v30 + 16);
  v40 = &_swiftEmptyArrayStorage;
  v95 = v0;
  if (v39)
  {
    v41 = 0;
    v42 = *(v0 + 392);
    v43 = v30 + 32;
    v44 = v42 + 32;
    v89 = v6;
    do
    {
      v93 = v40;
      v45 = v41;
      while (1)
      {
        if (v45 >= *(v38 + 16))
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        if (v45 >= *(*(v29 + 16) + 16))
        {
          if (qword_100936088 != -1)
          {
            swift_once();
          }

          v47 = type metadata accessor for Logger();
          sub_100006654(v47, qword_100946218);
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&_mh_execute_header, v48, v49, "Label index out of range. Mismatched model and labels.", v50, 2u);
            v6 = v89;
          }

          goto LABEL_21;
        }

        if (v45 >= *(v42 + 16))
        {
          goto LABEL_53;
        }

        v46 = *(v43 + 4 * v45);
        if (*(v44 + 4 * v45) < v46)
        {
          break;
        }

LABEL_21:
        if (v39 == ++v45)
        {
          v40 = v93;
          goto LABEL_38;
        }
      }

      v40 = v93;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96 = v93;
      v90 = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1002538C4(0, *v93->clientIdentity + 1, 1);
        v40 = v96;
      }

      v53 = *v40->clientIdentity;
      v52 = *&v40->clientIdentity[8];
      if (v53 >= v52 >> 1)
      {
        sub_1002538C4((v52 > 1), v53 + 1, 1);
        v40 = v96;
      }

      v41 = v45 + 1;
      *v40->clientIdentity = v53 + 1;
      v54 = v40 + 16 * v53;
      *(v54 + 4) = v45;
      *(v54 + 10) = v46;
      v44 = v90;
    }

    while (v39 - 1 != v45);
  }

LABEL_38:
  v0 = v95;
  v55 = *(v95 + 512);
  *(v95 + 392), v31, v32, v33, v34, v35, v36, v37;
  v38, v56, v57, v58, v59, v60, v61, v62;
  v96 = v40;

  sub_1003F8E00(&v96);
  if (v55)
  {

    return;
  }

  v63 = v96;
  v64 = *v96->clientIdentity;
  if (!v64)
  {
    v17 = *(v95 + 472);
    v85 = *(v95 + 480);
    v87 = *(v95 + 456);
    v86 = *(v95 + 464);

    swift_unknownObjectRelease();
LABEL_12:

    v6, v20, v21, v22, v23, v24, v25, v26;
    v27 = &_swiftEmptyArrayStorage;
LABEL_13:
    v28 = *(v0 + 8);

    v28(v27);
    return;
  }

  v96 = &_swiftEmptyArrayStorage;
  sub_1002538A4(0, v64, 0);
  v65 = 0;
  v27 = v96;
  v92 = v63;
  v94 = *(v29 + 16);
  v91 = v64;
  v66 = &v63->clientIdentity[24];
  while (v65 < *v63->clientIdentity)
  {
    v67 = *(v66 - 1);
    if ((v67 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    if (v67 >= *(v94 + 16))
    {
      goto LABEL_56;
    }

    v68 = *v66;
    v69 = (v94 + 32 + 16 * v67);
    v71 = *v69;
    v70 = v69[1];
    v96 = v27;
    v72 = *v27->clientIdentity;
    v73 = *&v27->clientIdentity[8];

    if (v72 >= v73 >> 1)
    {
      sub_1002538A4((v73 > 1), v72 + 1, 1);
      v27 = v96;
    }

    ++v65;
    *v27->clientIdentity = v72 + 1;
    v74 = v27 + 32 * v72;
    *(v74 + 4) = v67;
    *(v74 + 5) = v71;
    *(v74 + 6) = v70;
    *(v74 + 14) = v68;
    v66 += 16;
    v63 = v92;
    v0 = v95;
    if (v91 == v65)
    {
      v75 = *(v95 + 472);
      v76 = *(v95 + 480);
      v77 = *(v95 + 456);

      swift_unknownObjectRelease();

      v6, v78, v79, v80, v81, v82, v83, v84;
      goto LABEL_13;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

uint64_t sub_1003F87FC(uint64_t a1)
{
  v2 = v1[53];
  v3 = v1[52];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1003F8874(uint64_t a1)
{
  v2 = *(v1 + 440);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1003F88E4()
{
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1003F8964(uint64_t a1, void *a2)
{
  v3 = sub_10000F61C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_1003F8A10(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10000F61C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t REMOwlEmbeddingClassifier.deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  v9 = OBJC_IVAR____TtC7remindd25REMOwlEmbeddingClassifier_locale;
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  *(v8 + OBJC_IVAR____TtC7remindd25REMOwlEmbeddingClassifier_embeddingVersion + 8), v11, v12, v13, v14, v15, v16, v17;
  return v8;
}

uint64_t REMOwlEmbeddingClassifier.__deallocating_deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  v9 = OBJC_IVAR____TtC7remindd25REMOwlEmbeddingClassifier_locale;
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  *(v8 + OBJC_IVAR____TtC7remindd25REMOwlEmbeddingClassifier_embeddingVersion + 8), v11, v12, v13, v14, v15, v16, v17;

  return swift_deallocClassInstance();
}

uint64_t sub_1003F8C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1003F8CF4;

  return REMOwlEmbeddingClassifier.predict(_:thresholds:)(a1, a2, a3);
}

uint64_t sub_1003F8CF4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void sub_1003F8E00(_TtC7remindd19RDXPCStorePerformer **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100436464(v2);
  }

  v3 = *v2->clientIdentity;
  v4 = &v2->clientIdentity[16];
  v29[0] = &v2->clientIdentity[16];
  v29[1] = v3;
  v5 = _minimumMergeRunLength(_:)(v3);
  if (v5 >= v3)
  {
    if (v3 >= 2)
    {
      v13 = -1;
      for (i = 1; i != v3; ++i)
      {
        v15 = v13;
        v16 = v4;
        do
        {
          v17 = *(v16 + 6);
          if (*(v16 + 2) >= v17)
          {
            break;
          }

          v18 = *(v16 + 2);
          *(v16 + 1) = *v16;
          *v16 = v18;
          *(v16 + 2) = v17;
          v16 -= 16;
        }

        while (!__CFADD__(v15++, 1));
        v4 += 16;
        --v13;
      }
    }
  }

  else
  {
    v10 = v5;
    v11 = (v3 >> 1);
    if (v3 >= 2)
    {
      sub_1000F5104(&qword_100946348, &qword_1007A7AD8);
      v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *v12->clientIdentity = v11;
    }

    else
    {
      v12 = &_swiftEmptyArrayStorage;
    }

    v27[0] = &v12->clientIdentity[16];
    v27[1] = v11;
    sub_1003F9138(v27, v28, v29, v10, v6, v7, v8, v9);
    *v12->clientIdentity = 0;
    v12, v20, v21, v22, v23, v24, v25, v26;
  }

  *a1 = v2;
}

id sub_1003F8F54(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2)
{
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  a1, v6, v7, v8, v9, v10, v11, v12;
  v17 = 0;
  v13 = [v2 initWithShape:isa dataType:a2 error:&v17];

  if (v13)
  {
    v14 = v17;
  }

  else
  {
    v15 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v13;
}

id sub_1003F9050(_TtC7remindd19RDXPCStorePerformer *a1)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a1, v4, v5, v6, v7, v8, v9, v10;
  v15 = 0;
  v11 = [v1 initWithDictionary:isa error:&v15];

  if (v11)
  {
    v12 = v15;
  }

  else
  {
    v13 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v11;
}

void sub_1003F9138(float **a1, const char *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = &_swiftEmptyArrayStorage;
LABEL_91:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_125:
      v12 = sub_1004361F4(v12, a2, a3, a4, a5, a6, a7, a8);
    }

    clientIdentity = v12->clientIdentity;
    v85 = *v12->clientIdentity;
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v12 + 16 * v85);
        v87 = *v86;
        v88 = &clientIdentity[2 * v85];
        v89 = v88[1];
        sub_1003F96D8((*a3 + 16 * *v86), (*a3 + 16 * *v88), (*a3 + 16 * v89), v9);
        if (v8)
        {
          goto LABEL_100;
        }

        if (v89 < v87)
        {
          goto LABEL_117;
        }

        if (v85 - 2 >= *clientIdentity)
        {
          goto LABEL_118;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *clientIdentity - v85;
        if (*clientIdentity < v85)
        {
          goto LABEL_119;
        }

        v85 = *clientIdentity - 1;
        memmove(v88, v88 + 2, 16 * v90);
        *clientIdentity = v85;
        if (v85 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_129;
    }

LABEL_100:
    v12, a2, a3, a4, a5, a6, a7, a8;
    return;
  }

  v11 = 0;
  v12 = &_swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v13 = v11++;
    if (v11 < v10)
    {
      v14 = *(*a3 + 16 * v11 + 8);
      v15 = 16 * v13;
      v16 = *a3 + 16 * v13;
      v17 = *(v16 + 8);
      v18 = v13 + 2;
      v19 = (v16 + 40);
      while (v10 != v18)
      {
        v20 = *(v19 - 4) >= *v19;
        ++v18;
        v19 += 4;
        if ((((v17 < v14) ^ v20) & 1) == 0)
        {
          v11 = v18 - 1;
          if (v17 >= v14)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v11 = v10;
      if (v17 >= v14)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v11 < v13)
      {
        goto LABEL_122;
      }

      if (v13 < v11)
      {
        v21 = 16 * v11 - 16;
        v22 = v11;
        v23 = v13;
        do
        {
          if (v23 != --v22)
          {
            v25 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v26 = (v25 + v15);
            v27 = (v25 + v21);
            v28 = *(v25 + v15);
            v29 = *(v25 + v15 + 8);
            if (v15 != v21 || v26 >= v27 + 1)
            {
              *v26 = *v27;
            }

            v24 = v25 + v21;
            *v24 = v28;
            *(v24 + 8) = v29;
          }

          ++v23;
          v21 -= 16;
          v15 += 16;
        }

        while (v23 < v22);
        v10 = a3[1];
      }
    }

LABEL_23:
    if (v11 < v10)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_121;
      }

      if (v11 - v13 < a4)
      {
        if (__OFADD__(v13, a4))
        {
          goto LABEL_123;
        }

        if (a4 + v13 < v10)
        {
          v10 = a4 + v13;
        }

        if (v10 < v13)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v11 != v10)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v11 < v13)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1003658B8(0, *v12->clientIdentity + 1, 1, v12, a5, a6, a7, a8);
    }

    v9 = *v12->clientIdentity;
    v38 = *&v12->clientIdentity[8];
    v39 = v9 + 1;
    if (v9 >= v38 >> 1)
    {
      v12 = sub_1003658B8((v38 > 1), v9 + 1, 1, v12, a5, a6, a7, a8);
    }

    *v12->clientIdentity = v39;
    v40 = &v12->clientIdentity[16];
    v41 = &v12->clientIdentity[16 * v9 + 16];
    *v41 = v13;
    *(v41 + 1) = v11;
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (v9)
    {
      while (1)
      {
        v9 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v42 = *&v12->clientIdentity[16];
          v43 = *&v12->clientIdentity[24];
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_60:
          if (v45)
          {
            goto LABEL_107;
          }

          v58 = &v12->super.isa + 2 * v39;
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_109;
          }

          v64 = &v40[16 * v9];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_114;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v9 = v39 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v39 < 2)
        {
          goto LABEL_115;
        }

        v68 = &v12->super.isa + 2 * v39;
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_75:
        if (v63)
        {
          goto LABEL_111;
        }

        v71 = &v40[16 * v9];
        v73 = *v71;
        v72 = *(v71 + 1);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v9 - 1 >= v39)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v79 = &v40[16 * v9 - 16];
        v80 = *v79;
        v81 = &v40[16 * v9];
        v82 = *(v81 + 1);
        sub_1003F96D8((*a3 + 16 * *v79), (*a3 + 16 * *v81), (*a3 + 16 * v82), v93);
        if (v8)
        {
          goto LABEL_100;
        }

        if (v82 < v80)
        {
          goto LABEL_102;
        }

        if (v9 > *v12->clientIdentity)
        {
          goto LABEL_103;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v12->clientIdentity;
        if (v9 >= v83)
        {
          goto LABEL_104;
        }

        v39 = v83 - 1;
        memmove(&v40[16 * v9], v81 + 16, 16 * (v83 - 1 - v9));
        *v12->clientIdentity = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v40[16 * v39];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_105;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_106;
      }

      v53 = &v12->super.isa + 2 * v39;
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_108;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_110;
      }

      if (v57 >= v49)
      {
        v75 = &v40[16 * v9];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_116;
        }

        if (v44 < v78)
        {
          v9 = v39 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v10 = a3[1];
    a4 = v91;
    if (v11 >= v10)
    {
      goto LABEL_91;
    }
  }

  v30 = *a3;
  v31 = *a3 + 16 * v11;
  v32 = v13 - v11;
LABEL_33:
  v33 = v32;
  v34 = v31;
  while (1)
  {
    v35 = *(v34 + 8);
    if (*(v34 - 8) >= v35)
    {
LABEL_32:
      ++v11;
      v31 += 16;
      --v32;
      if (v11 != v10)
      {
        goto LABEL_33;
      }

      v11 = v10;
      goto LABEL_40;
    }

    if (!v30)
    {
      break;
    }

    v36 = *v34;
    *v34 = *(v34 - 16);
    *(v34 - 8) = v35;
    *(v34 - 16) = v36;
    v34 -= 16;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_32;
    }
  }

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
}

uint64_t sub_1003F96D8(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 4 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 4);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 4;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 4;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 4 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v19 = v5 + 4;
      if (*(v6 - 2) < *(v15 - 2))
      {
        v21 = v6 - 4;
        if (v19 != v6)
        {
          *v5 = *v21;
        }

        if (v15 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v20 = v15 - 4;
      if (v19 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 4;
      v15 -= 4;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v22 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= (v4 + v22))
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

id sub_1003F98D4(uint64_t a1, uint64_t a2)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

unint64_t sub_1003F9A34()
{
  result = qword_100946258;
  if (!qword_100946258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946258);
  }

  return result;
}

uint64_t sub_1003F9A88(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100939260, &unk_100797220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for REMOwlEmbeddingClassifier(uint64_t a1)
{
  result = qword_100946290;
  if (!qword_100946290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003F9B44(uint64_t a1)
{
  result = type metadata accessor for Locale();
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

unint64_t sub_1003F9C1C()
{
  result = qword_100946340;
  if (!qword_100946340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946340);
  }

  return result;
}

void sub_1003F9C78(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, char *a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v85 = a4;
  v74 = a3;
  v81 = a2;
  v77 = a5;
  v73 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v83 = *(v73 - 8);
  __chkstk_darwin(v73, v7);
  v76 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v80 = &v65 - v11;
  v12 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v12 - 8, v13);
  v70 = &v65 - v14;
  v82 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v78 = *(v82 - 8);
  __chkstk_darwin(v82, v15);
  v72 = (&v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17, v18);
  v79 = &v65 - v19;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v71 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v21);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for REMRemindersListDataView.Diff();
  v75 = *(v24 - 8);
  __chkstk_darwin(v24, v25);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v31 = &v65 - v30;
  v32 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v32 - 8, v33);
  v35 = &v65 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v37);
  v39 = &v65 - v38;
  v40 = a1;
  v41 = v86;
  v42 = sub_1003FA7F4(a1, v85);
  if (!v41)
  {
    v86 = v42;
    v67 = v35;
    v68 = v27;
    v69 = v31;
    v66 = v24;
    v44 = v82;
    v43 = v83;
    sub_1003FA464(a1, v39);
    v45 = [v84 fetchResultTokenToDiffAgainst];
    sub_100534D44(v45, v69);
    v84 = 0;
    v81 = v39;

    REMRemindersListDataView.ScheduledFlatInvocation.Parameters.configuration.getter();
    v46 = v79;
    REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
    (*(v71 + 8))(v23, Configuration);
    v47 = v78;
    v48 = v72;
    v49 = v46;
    v50 = v44;
    (*(v78 + 16))(v72, v49, v44);
    v51 = (*(v47 + 88))(v48, v44);
    if (v51 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
    {
      (*(v47 + 96))(v48, v44);
      sub_10053DB98(*v48, v86, a1, v74, 0);
      v52 = v47;
      v53 = v73;
      v54 = v79;
      v55 = v80;
      v56 = v67;
LABEL_12:
      (*(v52 + 8))(v54, v50);
      sub_1003FAEE8(v81, v56);
      REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
      (*(v43 + 16))(v76, v55, v53);
      v62 = v75;
      v63 = v69;
      v64 = v66;
      (*(v75 + 16))(v68, v69, v66);
      sub_1003FAF58(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
      sub_1003FAF58(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
      REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
      (*(v43 + 8))(v80, v53);
      (*(v62 + 8))(v63, v64);
      sub_1000050A4(v81, &qword_100938A70, &qword_1007ACC60);
      return;
    }

    v57 = v74;
    if (v51 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
    {
      (*(v47 + 96))(v48, v44);
      sub_10053E698(*v48, v69, v40, v57, 0);
      v52 = v47;
      v53 = v73;
    }

    else
    {
      if (v51 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
      {
        (*(v47 + 96))(v48, v44);
        v52 = v47;
        v58 = *v48;
        v59 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
        v60 = v70;
        sub_100226AD8(v48 + *(v59 + 48), v70);
        v61 = v86;
        sub_10053DB98(v58, v86, v40, v57, 0);
        sub_10053EBE4(v60, v61, v40, v57, 0);
        sub_1000050A4(v60, &qword_10094B8E0, &unk_1007AABD0);
        v53 = v73;
        v54 = v79;
        v56 = v67;
LABEL_11:
        v43 = v83;
        v55 = v80;
        goto LABEL_12;
      }

      if (v51 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      v53 = v73;
      v50 = v44;
      v52 = v78;
    }

    v54 = v79;
    v56 = v67;
    goto LABEL_11;
  }
}

void sub_1003FA464(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _s10PredicatesOMa(0);
  __chkstk_darwin(v5, v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v10 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListDataView.ScheduledFlatInvocation.Parameters.configuration.getter();
  v14 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  (*(v10 + 8))(v13, Configuration);
  if (v14)
  {
    v15 = enum case for REMRemindersListDataView.ShowCompleted.on(_:);
    v16 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
    (*(*(v16 - 8) + 104))(v8, v15, v16);
    swift_storeEnumTagMultiPayload();
    v17 = sub_100043AA8();
    sub_1001A4F3C(v8, _s10PredicatesOMa);
    sub_10053464C(a1, v17);
    if (!v2)
    {
      v18 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
      (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
    }
  }

  else
  {
    v19 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }
}

uint64_t sub_1003FA6D0(__n128 a1)
{
  v1 = _s9UtilitiesO12SortingStyleOMa(0);
  sub_1000EECAC(v1, qword_100946350);
  v2 = sub_100006654(v1, qword_100946350);
  v3 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v4 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v4 - 8) + 104))(v2, v3, v4);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1003FA79C(uint64_t a1)
{
  result = sub_1003FAF58(&qword_100946388, &type metadata accessor for REMRemindersListDataView.ScheduledFlatInvocation, &protocol conformance descriptor for REMRemindersListDataView.ScheduledFlatInvocation);
  *(a1 + 8) = result;
  return result;
}

NSString sub_1003FA7F4(uint64_t a1, uint64_t a2)
{
  v75 = a1;
  v3 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3, v4);
  v77 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v6 - 8, v7);
  v69 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v70, v9);
  v71 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v74 = v63 - v13;
  v64 = _s10PredicatesOMa(0);
  __chkstk_darwin(v64, v14);
  v65 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v17 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v18);
  v72 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v23 = v63 - v22;
  __chkstk_darwin(v24, v25);
  v27 = v63 - v26;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v29 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v30);
  v68 = v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v33);
  v67 = v63 - v34;
  __chkstk_darwin(v35, v36);
  v38 = v63 - v37;
  v73 = a2;
  REMRemindersListDataView.ScheduledFlatInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v80 = *(v29 + 8);
  v80(v38, Configuration);
  (*(v17 + 104))(v23, enum case for REMRemindersListDataView.FetchSubtasks.on(_:), Subtasks);
  sub_1003FAF58(&qword_100940630, &type metadata accessor for REMRemindersListDataView.FetchSubtasks, &protocol conformance descriptor for REMRemindersListDataView.FetchSubtasks);
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = *(v17 + 8);
  v39 = v17 + 8;
  v40(v23, Subtasks);
  v66 = v40;
  v40(v27, Subtasks);
  if (a2)
  {
    v41 = objc_opt_self();
    v42 = String._bridgeToObjectiveC()();
    [v41 internalErrorWithDebugDescription:v42];

    swift_willThrow();
  }

  else
  {
    v63[1] = v39;
    REMRemindersListDataView.ScheduledFlatInvocation.Parameters.configuration.getter();
    v43 = v65;
    REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
    v44 = v80;
    v80(v38, Configuration);
    swift_storeEnumTagMultiPayload();
    v64 = sub_100043AA8();
    sub_1001A4F3C(v43, _s10PredicatesOMa);
    REMRemindersListDataView.ScheduledFlatInvocation.Parameters.configuration.getter();
    v45 = v69;
    REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
    v44(v38, Configuration);
    v46 = v45;
    v47 = Configuration;
    if (qword_100936090 != -1)
    {
      swift_once();
    }

    v48 = sub_100006654(v70, qword_100946350);
    v49 = v71;
    sub_1001A4ED8(v48, v71, v50);
    v51 = v74;
    sub_1005368D8(v46, v49, v74);
    v52 = v67;
    REMRemindersListDataView.ScheduledFlatInvocation.Parameters.configuration.getter();
    v53 = v77;
    REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
    v54 = v80;
    v80(v52, v47);
    v55 = v68;
    REMRemindersListDataView.ScheduledFlatInvocation.Parameters.configuration.getter();
    v56 = v72;
    v42 = v55;
    REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
    v57 = v55;
    v58 = v51;
    v54(v57, v47);
    v59 = v76;
    v60 = v64;
    v61 = sub_100536D54(v75, v64, v58, v53, v56, &_swiftEmptyArrayStorage, 0);
    if (!v59)
    {
      v42 = v61;
    }

    v66(v56, Subtasks);
    (*(v78 + 8))(v53, v79);
    sub_1001A4F3C(v58, _s9UtilitiesO12SortingStyleOMa);
  }

  return v42;
}

uint64_t sub_1003FAEE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003FAF58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1003FB040(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2)
{
  v4 = v2;
  v6 = _s10PredicatesOMa_1(0);
  *&v8 = __chkstk_darwin(v6, v7).n128_u64[0];
  v10 = (&v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84[0] = 0;
  v11 = [v4 remObjectIDWithError:{v84, v8}];
  v12 = v84[0];
  if (!v11)
  {
    v60 = v84[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v60;
  }

  *v10 = v11;
  swift_storeEnumTagMultiPayload();
  v13 = v12;
  v14 = sub_10001F6F4();
  sub_100025374(v10, _s10PredicatesOMa_1);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007953F0;
  *(v15 + 32) = v4;
  v84[0] = v15;
  v16 = v4;
  sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  sub_10000CB90(&qword_100946C40, &qword_10093F5C0, &qword_1007A1FB0);
  sub_1000254F4();
  v17 = Sequence.compactMapToSet<A>(_:)();
  v76 = v3;
  sub_10002595C(v17);
  v17, v18, v19, v20, v21, v22, v23, v24;
  v25 = sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v26 = [objc_allocWithZone(NSFetchRequest) init];
  v77 = v25;
  v27 = [swift_getObjCClassFromMetadata() entity];
  [v26 setEntity:v27];

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v26 setAffectedStores:isa];

  v78 = v14;
  [v26 setPredicate:v14];
  v15, v29, v30, v31, v32, v33, v34, v35;

  if (qword_100936520 != -1)
  {
LABEL_27:
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v36 = Array._bridgeToObjectiveC()().super.isa;
  [v26 setSortDescriptors:v36];

  if (qword_100936528 != -1)
  {
    swift_once();
  }

  v37 = qword_100975238;
  v79 = a1;
  if (qword_100975238 >> 62)
  {
    v71 = qword_100975238;
    v72 = _CocoaArrayWrapper.endIndex.getter();
    v37 = v71;
    v38 = v72;
  }

  else
  {
    v38 = *((qword_100975238 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = &_swiftEmptyArrayStorage;
  if (!v38)
  {
LABEL_20:
    v51 = Array._bridgeToObjectiveC()().super.isa;
    a1, v52, v53, v54, v55, v56, v57, v58;
    [v26 setRelationshipKeyPathsForPrefetching:v51];

    v59 = v76;
    v60 = v79;
    v61 = NSManagedObjectContext.fetch<A>(_:)();
    if (!v59)
    {
      v84[0] = v61;
      v62 = v61;
      sub_1000F5104(&qword_10093F6F0, qword_10079A300);
      sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
      v60 = Sequence.elements<A>(ofType:)();
      v62, v63, v64, v65, v66, v67, v68, v69;
    }

    return v60;
  }

  v39 = v37;
  v85 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, v38 & ~(v38 >> 63), 0);
  if (v38 < 0)
  {
    __break(1u);
  }

  v75 = v26;
  v40 = 0;
  a1 = v85;
  v41 = v39;
  v81 = v39;
  v82 = v39 & 0xC000000000000001;
  v80 = v39 & 0xFFFFFFFFFFFFFF8;
  v26 = v38;
  while (1)
  {
    v42 = (v40 + 1);
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v82)
    {
      v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v40 >= *(v80 + 16))
      {
        goto LABEL_26;
      }

      v43 = *(v41 + 8 * v40 + 32);
    }

    v44 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v45)
    {
      break;
    }

    v46 = v44;
    v47 = v45;

    v85 = a1;
    v49 = *a1->clientIdentity;
    v48 = *&a1->clientIdentity[8];
    if (v49 >= v48 >> 1)
    {
      sub_100026EF4((v48 > 1), v49 + 1, 1);
      a1 = v85;
    }

    *a1->clientIdentity = v49 + 1;
    v50 = &a1->super.isa + 2 * v49;
    v50[4] = v46;
    v50[5] = v47;
    ++v40;
    v41 = v81;
    if (v42 == v26)
    {
      v26 = v75;
      goto LABEL_20;
    }
  }

  v84[0] = 0;
  v84[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v73._object = 0x80000001007EC120;
  v73._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v73);
  v83 = v43;
  sub_1000F5104(&qword_10093F478, &unk_1007A76E0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1003FB6B0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100946390);
  v1 = sub_100006654(v0, qword_100946390);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003FB790(id *a1, void **a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = sub_1003FC504(v3);
  v5 = v2;
  v6 = sub_1003FC504(v5);
  if (v4 >= v6)
  {
    if (v6 < v4)
    {
      v7 = 0;
      return v7 & 1;
    }

    v8 = [v3 name];
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xE000000000000000;
    }

    v13 = [v5 name];
    if (v13)
    {
      v21 = v13;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      if (v10 != v22)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v24 = 0xE000000000000000;
      if (v10)
      {
        goto LABEL_14;
      }
    }

    if (v12 == v24)
    {
      v7 = 0;
LABEL_15:
      v24, v14, v15, v16, v17, v18, v19, v20;
      v12, v25, v26, v27, v28, v29, v30, v31;
      return v7 & 1;
    }

LABEL_14:
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_15;
  }

  v7 = 1;
  return v7 & 1;
}

uint64_t sub_1003FB8D4()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007A7B10;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  *(v0 + 48) = swift_getKeyPath();
  *(v0 + 56) = swift_getKeyPath();
  *(v0 + 64) = swift_getKeyPath();
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  *(v0 + 88) = swift_getKeyPath();
  *(v0 + 96) = swift_getKeyPath();
  *(v0 + 104) = swift_getKeyPath();
  *(v0 + 112) = swift_getKeyPath();
  *(v0 + 120) = swift_getKeyPath();
  *(v0 + 128) = swift_getKeyPath();
  *(v0 + 136) = swift_getKeyPath();
  *(v0 + 144) = swift_getKeyPath();
  *(v0 + 152) = swift_getKeyPath();
  *(v0 + 160) = swift_getKeyPath();
  *(v0 + 168) = swift_getKeyPath();
  *(v0 + 176) = swift_getKeyPath();
  *(v0 + 184) = swift_getKeyPath();
  *(v0 + 192) = swift_getKeyPath();
  *(v0 + 200) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 208) = result;
  qword_100974E38 = v0;
  return result;
}

uint64_t sub_1003FBA98()
{
  if (qword_100936098 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100946390);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unexpected .localInternal in AccountsListDataView", v3, 2u);
  }

  return 3;
}

unint64_t sub_1003FBB74@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7remindd27RDSynchronizedKeyValueStoreC11ChangeEventV6ReasonO05ubkvsfhC0AGSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

id sub_1003FBBA0@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 remObjectID];
  if (v6)
  {

    *a3 = v5;
    return v5;
  }

  else
  {
    v8 = 7104878;
    if (a2 && (v9 = [a2 remObjectID]) != 0)
    {
      v10 = v9;
      v11 = [v9 description];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = objc_opt_self();
    _StringGuts.grow(_:)(106);
    v15._object = 0x80000001007F8030;
    v15._countAndFlagsBits = 0xD00000000000005DLL;
    String.append(_:)(v15);
    v16._countAndFlagsBits = v8;
    v16._object = v13;
    String.append(_:)(v16);
    v13, v17, v18, v19, v20, v21, v22, v23;
    v24._countAndFlagsBits = 0x203A44496F4D202CLL;
    v24._object = 0xE800000000000000;
    String.append(_:)(v24);
    v25 = [v5 objectID];
    v26 = [v25 description];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30._countAndFlagsBits = v27;
    v30._object = v29;
    String.append(_:)(v30);
    v29, v31, v32, v33, v34, v35, v36, v37;

    v38._countAndFlagsBits = 125;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    v39 = String._bridgeToObjectiveC()();
    0xE000000000000000, v40, v41, v42, v43, v44, v45, v46;
    [v14 internalErrorWithDebugDescription:v39];

    return swift_willThrow();
  }
}

void sub_1003FBDA8(char a1@<W0>, char a2@<W1>, _TtC7remindd19RDXPCStorePerformer **a3@<X8>)
{
  v86 = a3;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v8 = v83 - v7;
  v9 = type metadata accessor for UUID();
  v87 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v85 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v90 = v83 - v14;
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [ObjCClassFromMetadata cdEntityName];
  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    v15 = String._bridgeToObjectiveC()();
    v17, v18, v19, v20, v21, v22, v23, v24;
  }

  v25 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v15];

  v26 = sub_10000F8A4(a2 & 1, 0, a1 + 3);
  [v25 setPredicate:v26];
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100791300;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 32) = 0x696669746E656469;
  *(v27 + 40) = 0xEA00000000007265;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v27, v29, v30, v31, v32, v33, v34, v35;
  [v25 setPropertiesToFetch:isa];

  [v25 setResultType:2];
  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v36 = v95;
  v37 = NSManagedObjectContext.fetch<A>(_:)();
  if (v36)
  {

    return;
  }

  v45 = v37;
  if (v37 >> 62)
  {
    goto LABEL_36;
  }

  v46 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v83[1] = 0;
  v84 = v25;
  v95 = v26;
  if (v46)
  {
    v47 = 0;
    v92 = v45 & 0xFFFFFFFFFFFFFF8;
    v93 = (v45 & 0xC000000000000001);
    v48 = (v87 + 56);
    v88 = (v87 + 32);
    v89 = (v87 + 48);
    v94 = &_swiftEmptyArrayStorage;
    v91 = v46;
    while (1)
    {
      if (v93)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v47 >= *(v92 + 16))
        {
          goto LABEL_35;
        }

        v50 = *(v45 + 8 * v47 + 32);
      }

      v51 = v50;
      v26 = (v47 + 1);
      if (__OFADD__(v47, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v46 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_7;
      }

      v52 = v45;
      *&v96 = 0x696669746E656469;
      *(&v96 + 1) = 0xEA00000000007265;
      v25 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v53 = [v51 __swift_objectForKeyedSubscript:v25];
      swift_unknownObjectRelease();
      if (v53)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v96 = 0u;
        v97 = 0u;
      }

      v98[0] = v96;
      v98[1] = v97;
      v45 = v52;
      if (*(&v97 + 1))
      {
        v54 = swift_dynamicCast();
        (*v48)(v8, v54 ^ 1u, 1, v9);
        if ((*v89)(v8, 1, v9) != 1)
        {
          v25 = *v88;
          (*v88)(v90, v8, v9);
          v55 = v94;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_100366328(0, *v55->clientIdentity + 1, 1, v55);
          }

          v56 = v55;
          v57 = *v55->clientIdentity;
          v94 = v56;
          v58 = *&v56->clientIdentity[8];
          if (v57 >= v58 >> 1)
          {
            v94 = sub_100366328((v58 > 1), v57 + 1, 1, v94);
          }

          v59 = v94;
          *v94->clientIdentity = v57 + 1;
          (v25)(v59 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v57, v90, v9);
          goto LABEL_11;
        }
      }

      else
      {
        sub_1000050A4(v98, &qword_100939ED0, &qword_100791B10);
        (*v48)(v8, 1, 1, v9);
      }

      sub_1000050A4(v8, &unk_100939D90, "8\n\r");
LABEL_11:
      ++v47;
      v49 = v26 == v91;
      v26 = v95;
      if (v49)
      {
        goto LABEL_28;
      }
    }
  }

  v94 = &_swiftEmptyArrayStorage;
LABEL_28:
  v45, v38, v39, v40, v41, v42, v43, v44;
  v60 = v94;
  v61 = *v94->clientIdentity;
  if (v61)
  {
    *&v98[0] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v62 = *(v87 + 16);
    v63 = v60 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v92 = *(v87 + 72);
    v93 = v62;
    v64 = v85;
    v65 = (v87 + 8);
    do
    {
      v93(v64, v63, v9);
      v66 = UUID._bridgeToObjectiveC()().super.isa;
      v67 = [ObjCClassFromMetadata objectIDWithUUID:v66];

      (*v65)(v64, v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v63 += v92;
      --v61;
    }

    while (v61);
    v94, v68, v69, v70, v71, v72, v73, v74;

    v75 = *&v98[0];
  }

  else
  {

    v60, v76, v77, v78, v79, v80, v81, v82;
    v75 = &_swiftEmptyArrayStorage;
  }

  *v86 = v75;
}

double sub_1003FC4C0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u || a3 == 6)
  {
  }

  return result;
}

uint64_t sub_1003FC504(void *a1)
{
  v2 = [a1 accountTypeHost];
  REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();

  if (v4 == 4)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1003FC7C4()
{
  result = qword_1009463B0;
  if (!qword_1009463B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009463B0);
  }

  return result;
}

uint64_t sub_1003FC818(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    KeyPath = swift_getKeyPath();

    sub_1003EE9EC(KeyPath, a1, a2, 6);
  }

  else
  {
    v5 = swift_getKeyPath();
    sub_1003EE9C0(v5);
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*_swiftEmptyArrayStorage.clientIdentity >= *&_swiftEmptyArrayStorage.clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_10001035C(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*_swiftEmptyArrayStorage.clientIdentity >= *&_swiftEmptyArrayStorage.clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return sub_10000C2B0();
}

void *sub_1003FC96C(void *a1)
{
  v2 = v1;
  v3 = sub_10029C950(a1, 64);
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_100940370, off_1008D4150);
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  [v4 setAffectedStores:0];
  [v4 setPredicate:v3];
  [v4 setResultType:2];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v28 = &_swiftEmptyArrayStorage;
  sub_100010D04(0, 1, 0);
  v7 = &_swiftEmptyArrayStorage;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  v8 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v9)
  {
LABEL_13:
    _StringGuts.grow(_:)(46);
    v25._object = 0x80000001007EC120;
    v25._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v25);
    sub_1000F5104(&qword_1009464E0, &unk_1007A3960);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v10 = v8;
  v11 = v9;
  v27 = &type metadata for String;

  *&v26 = v10;
  *(&v26 + 1) = v11;
  v13 = *_swiftEmptyArrayStorage.clientIdentity;
  v12 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v13 >= v12 >> 1)
  {
    sub_100010D04((v12 > 1), v13 + 1, 1);
    v7 = v28;
  }

  *v7->clientIdentity = v13 + 1;
  sub_100005EE0(&v26, &v7->clientIdentity[32 * v13 + 16]);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setPropertiesToFetch:isa];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v15 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v16 = v15;
    v2 = sub_1003FCCDC(v15);

    v16, v17, v18, v19, v20, v21, v22, v23;
  }

  return v2;
}

void *sub_1003FCCDC(unint64_t a1)
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v33 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v6 = &v31 - v5;
  v40 = _swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_30:
    v29 = v4;
    v7 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v29;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v31 = v4;
      v8 = 0;
      v35 = a1 & 0xFFFFFFFFFFFFFF8;
      v36 = a1 & 0xC000000000000001;
      v34 = &unk_1007A8290;
      v9 = _swiftEmptyDictionarySingleton;
      v32 = xmmword_1007953F0;
      while (1)
      {
        if (v36)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v35 + 16))
          {
            goto LABEL_27;
          }

          v4 = *(a1 + 8 * v8 + 32);
        }

        v11 = v4;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v13 = String._bridgeToObjectiveC()();
        v14 = [v11 valueForKey:{v13, v31}];

        if (v14)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v37 = 0u;
          v38 = 0u;
        }

        v39[0] = v37;
        v39[1] = v38;
        if (*(&v38 + 1))
        {
          v15 = type metadata accessor for UUID();
          v16 = swift_dynamicCast();
          (*(*(v15 - 8) + 56))(v6, v16 ^ 1u, 1, v15);
        }

        else
        {
          sub_1000050A4(v39, &qword_100939ED0, &qword_100791B10);
          v17 = type metadata accessor for UUID();
          (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
        }

        v19 = sub_1003645D8(v6);
        v20 = v9[2];
        v21 = (v18 & 1) == 0;
        v4 = (v20 + v21);
        if (__OFADD__(v20, v21))
        {
          goto LABEL_28;
        }

        v22 = v18;
        if (v9[3] < v4)
        {
          sub_10036E0B0(v4, 1);
          v9 = v40;
          v23 = sub_1003645D8(v6);
          if ((v22 & 1) != (v24 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v19 = v23;
        }

        if (v22)
        {
          sub_1000050A4(v6, &unk_100939D90, "8\n\r");
          v10 = (v9[7] + 8 * v19);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v4 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v25 = swift_allocObject();
          *(v25 + 16) = v32;
          *(v25 + 32) = v11;
          v9[(v19 >> 6) + 8] |= 1 << v19;
          v4 = sub_100100FB4(v6, v9[6] + *(v33 + 72) * v19);
          *(v9[7] + 8 * v19) = v25;
          v26 = v9[2];
          v27 = __OFADD__(v26, 1);
          v28 = v26 + 1;
          if (v27)
          {
            goto LABEL_29;
          }

          v9[2] = v28;
        }

        ++v8;
        if (v12 == v7)
        {
          return v9;
        }
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003FD108(void *a1)
{
  v3 = sub_10029B198(a1, 32);
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  [v4 setAffectedStores:0];
  [v4 setPredicate:v3];
  [v4 setResultType:2];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100799D70;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  v57 = &_swiftEmptyArrayStorage;
  sub_100010D04(0, 3, 0);
  v7 = &_swiftEmptyArrayStorage;
  v8 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v9 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_32;
    }
  }

  v10 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v11)
  {
    goto LABEL_35;
  }

  v12 = v10;
  v13 = v11;
  v56 = &type metadata for String;

  *&v55 = v12;
  *(&v55 + 1) = v13;
  v2 = *_swiftEmptyArrayStorage.clientIdentity;
  v9 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v1 = v2 + 1;
  if (v2 >= v9 >> 1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    *v7->clientIdentity = v1;
    sub_100005EE0(&v55, &v7->clientIdentity[32 * v2 + 16]);
    if (v8)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 < 2)
      {
        goto LABEL_32;
      }
    }

    v14 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v15)
    {
      goto LABEL_35;
    }

    v16 = v14;
    v17 = v15;
    v56 = &type metadata for String;

    *&v55 = v16;
    *(&v55 + 1) = v17;
    v57 = v7;
    v2 = *v7->clientIdentity;
    v18 = *&v7->clientIdentity[8];
    v1 = v2 + 1;
    if (v2 >= v18 >> 1)
    {
      sub_100010D04((v18 > 1), v2 + 1, 1);
      v7 = v57;
    }

    *v7->clientIdentity = v1;
    sub_100005EE0(&v55, &v7->clientIdentity[32 * v2 + 16]);
    if (v8)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_18;
    }

    v9 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 >= 3)
    {
      break;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    sub_100010D04((v9 > 1), v1, 1);
    v7 = v57;
  }

LABEL_18:
  v19 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v20)
  {
    goto LABEL_35;
  }

  v21 = v19;
  v22 = v20;
  v56 = &type metadata for String;

  *&v55 = v21;
  *(&v55 + 1) = v22;
  v57 = v7;
  v24 = *v7->clientIdentity;
  v23 = *&v7->clientIdentity[8];
  if (v24 >= v23 >> 1)
  {
    sub_100010D04((v23 > 1), v24 + 1, 1);
    v7 = v57;
  }

  *v7->clientIdentity = v24 + 1;
  sub_100005EE0(&v55, &v7->clientIdentity[32 * v24 + 16]);
  swift_setDeallocating();
  swift_arrayDestroy();
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1007953F0;
  *(v25 + 32) = swift_getKeyPath();
  sub_100010D04(0, 1, 0);
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_25;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_35:
    _StringGuts.grow(_:)(46);
    v52._object = 0x80000001007EC120;
    v52._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v52);
    sub_1000F5104(&unk_100942FF0, &unk_1007A3A70);
    _print_unlocked<A, B>(_:_:)();
LABEL_37:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v26 = *(v25 + 32);

LABEL_25:
  v27 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v28)
  {
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v53._object = 0x80000001007EC120;
    v53._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v53);
    v57 = v26;
    sub_1000F5104(&qword_1009464E0, &unk_1007A3960);
    _print_unlocked<A, B>(_:_:)();
    goto LABEL_37;
  }

  v29 = v27;
  v30 = v28;
  v56 = &type metadata for String;

  *&v55 = v29;
  *(&v55 + 1) = v30;
  v32 = *_swiftEmptyArrayStorage.clientIdentity;
  v31 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v32 >= v31 >> 1)
  {
    sub_100010D04((v31 > 1), v32 + 1, 1);
  }

  *_swiftEmptyArrayStorage.clientIdentity = v32 + 1;
  sub_100005EE0(&v55, &_swiftEmptyArrayStorage.clientIdentity[32 * v32 + 16]);
  swift_setDeallocating();
  swift_arrayDestroy();
  *&v55 = v7;
  sub_100271468(&_swiftEmptyArrayStorage);
  v33 = v55;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v33, v35, v36, v37, v38, v39, v40, v41;
  [v4 setPropertiesToFetch:isa];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v42 = NSManagedObjectContext.fetch<A>(_:)();
  if (v54)
  {
  }

  else
  {
    v43 = v42;
    v7 = sub_1003FCCDC(v42);

    v43, v44, v45, v46, v47, v48, v49, v50;
  }

  return v7;
}

void *sub_1003FD798()
{
  v1 = sub_10029B198(4, 160);
  v2 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  v3 = [swift_getObjCClassFromMetadata() entity];
  [v2 setEntity:v3];

  [v2 setAffectedStores:0];
  [v2 setPredicate:v1];
  v67 = v2;
  [v2 setResultType:2];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A81F0;
  *(inited + 32) = swift_getKeyPath();
  *&v66 = inited + 32;
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  sub_100010D04(0, 4, 0);
  v5 = 0;
  v6 = inited & 0xC000000000000001;
  do
  {
    if (v6)
    {
      v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5 >= v7)
      {
        __break(1u);
        goto LABEL_42;
      }

      v0 = *(inited + 8 * v5 + 32);
    }

    v8 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v9)
    {
      goto LABEL_45;
    }

    v10 = v8;
    v11 = v9;
    v69 = &type metadata for String;

    *&v68 = v10;
    *(&v68 + 1) = v11;
    v0 = *_swiftEmptyArrayStorage.clientIdentity;
    v12 = *&_swiftEmptyArrayStorage.clientIdentity[8];
    v3 = (v0 + 1);
    if (v0 >= v12 >> 1)
    {
      sub_100010D04((v12 > 1), v0 + 1, 1);
    }

    ++v5;
    *_swiftEmptyArrayStorage.clientIdentity = v3;
    sub_100005EE0(&v68, &_swiftEmptyArrayStorage.clientIdentity[32 * v0 + 16]);
  }

  while (v5 != 4);
  swift_setDeallocating();
  swift_arrayDestroy();
  inited = swift_initStackObject();
  v66 = xmmword_100796900;
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  v70 = &_swiftEmptyArrayStorage;
  sub_100010D04(0, 2, 0);
  v13 = v70;
  v6 = inited & 0xC000000000000001;
  v64 = inited & 0xFFFFFFFFFFFFFF8;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_14:
  v14 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v15)
  {
    goto LABEL_48;
  }

  v16 = v14;
  v17 = v15;
  v69 = &type metadata for String;

  *&v68 = v16;
  *(&v68 + 1) = v17;
  v0 = *(v13 + 16);
  v7 = *(v13 + 24);
  v3 = (v0 + 1);
  if (v0 >= v7 >> 1)
  {
LABEL_42:
    sub_100010D04((v7 > 1), v3, 1);
    v13 = v70;
  }

  *(v13 + 16) = v3;
  sub_100005EE0(&v68, (v13 + 32 * v0 + 32));
  if (v6)
  {
    v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_20;
  }

  if (*(v64 + 16) < 2uLL)
  {
    goto LABEL_43;
  }

  v0 = *(inited + 40);

LABEL_20:
  v18 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v19)
  {
    goto LABEL_48;
  }

  v20 = v18;
  v21 = v19;
  v69 = &type metadata for String;

  *&v68 = v20;
  *(&v68 + 1) = v21;
  v70 = v13;
  v23 = *(v13 + 16);
  v22 = *(v13 + 24);
  if (v23 >= v22 >> 1)
  {
    sub_100010D04((v22 > 1), v23 + 1, 1);
    v13 = v70;
  }

  *(v13 + 16) = v23 + 1;
  sub_100005EE0(&v68, (v13 + 32 * v23 + 32));
  swift_setDeallocating();
  swift_arrayDestroy();
  *&v68 = &_swiftEmptyArrayStorage;
  sub_100271468(v13);
  v24 = v68;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v24, v26, v27, v28, v29, v30, v31, v32;
  [v67 setPropertiesToFetch:isa];

  v33 = swift_initStackObject();
  *(v33 + 16) = v66;
  *(v33 + 32) = swift_getKeyPath();
  *(v33 + 40) = swift_getKeyPath();
  sub_100026EF4(0, 2, 0);
  if ((v33 & 0xC000000000000001) != 0)
  {
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_27;
  }

  if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_44;
  }

  v34 = *(v33 + 32);

LABEL_27:
  v35 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v36)
  {
LABEL_49:
    *&v68 = 0;
    *(&v68 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v63._object = 0x80000001007EC120;
    v63._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v63);
    v70 = v34;
    v60 = &qword_1009464E0;
    v61 = &unk_1007A3960;
    goto LABEL_46;
  }

  v0 = v35;
  v37 = v36;

  v39 = *_swiftEmptyArrayStorage.clientIdentity;
  v38 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v39 >= v38 >> 1)
  {
    sub_100026EF4((v38 > 1), v39 + 1, 1);
  }

  *_swiftEmptyArrayStorage.clientIdentity = v39 + 1;
  v40 = &_swiftEmptyArrayStorage + 16 * v39;
  *(v40 + 4) = v0;
  *(v40 + 5) = v37;
  if ((v33 & 0xC000000000000001) != 0)
  {
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_34;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    *&v68 = 0;
    *(&v68 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v59._object = 0x80000001007EC120;
    v59._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v59);
    v70 = v0;
    v60 = &unk_100942FF0;
    v61 = &unk_1007A3A70;
LABEL_46:
    sub_1000F5104(v60, v61);
    _print_unlocked<A, B>(_:_:)();
    while (1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_48:
      _StringGuts.grow(_:)(46);
      v62._object = 0x80000001007EC120;
      v62._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v62);
      sub_1000F5104(&qword_1009464E0, &unk_1007A3960);
      _print_unlocked<A, B>(_:_:)();
    }
  }

  v34 = *(v33 + 40);

LABEL_34:
  v41 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v42)
  {
    goto LABEL_49;
  }

  v43 = v41;
  v44 = v42;

  v46 = *_swiftEmptyArrayStorage.clientIdentity;
  v45 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v46 >= v45 >> 1)
  {
    sub_100026EF4((v45 > 1), v46 + 1, 1);
  }

  *_swiftEmptyArrayStorage.clientIdentity = v46 + 1;
  v47 = &_swiftEmptyArrayStorage + 16 * v46;
  *(v47 + 4) = v43;
  *(v47 + 5) = v44;
  swift_setDeallocating();
  swift_arrayDestroy();
  v48 = Array._bridgeToObjectiveC()().super.isa;

  [v67 setRelationshipKeyPathsForPrefetching:v48];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v49 = NSManagedObjectContext.fetch<A>(_:)();
  if (v65)
  {
  }

  else
  {
    v50 = v49;
    v43 = sub_1003FCCDC(v49);

    v50, v51, v52, v53, v54, v55, v56, v57;
  }

  return v43;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003FE084(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = a1;
  v46 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  result = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v53 = &_swiftEmptyArrayStorage;
    sub_100010D04(0, v6 & ~(v6 >> 63), 0);
    v47 = &_swiftEmptyArrayStorage;
    if (v46)
    {
      v8 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v8 = _HashTable.startBucket.getter();
      v9 = *(v5 + 36);
    }

    v50 = v8;
    v51 = v9;
    v52 = v46 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v41 = v5 + 56;
      v40 = v5 + 64;
      while (v10 < v6)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v18 = v50;
        v19 = v51;
        v20 = v52;
        v21 = v5;
        sub_100018710(v50, v51, v52, v5, a2, a3);
        v22 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v23)
        {
          goto LABEL_44;
        }

        v24 = v22;
        v25 = v23;
        v49 = &type metadata for String;

        *&v48 = v24;
        *(&v48 + 1) = v25;
        v26 = v47;
        v53 = v47;
        v28 = *v47->clientIdentity;
        v27 = *&v47->clientIdentity[8];
        if (v28 >= v27 >> 1)
        {
          sub_100010D04((v27 > 1), v28 + 1, 1);
          v26 = v53;
        }

        *v26->clientIdentity = v28 + 1;
        v47 = v26;
        sub_100005EE0(&v48, &v26->clientIdentity[32 * v28 + 16]);
        if (v46)
        {
          if (!v20)
          {
            goto LABEL_42;
          }

          v5 = v21;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_1000F5104(a4, a5);
          v11 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v11(&v48, 0);
          if (v10 == v6)
          {
LABEL_34:
            sub_100010E34(v50, v51, v52, v12, v13, v14, v15, v16);
            return v47;
          }
        }

        else
        {
          if (v20)
          {
            goto LABEL_43;
          }

          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v5 = v21;
          v29 = (1 << *(v21 + 32));
          if (v18 >= v29)
          {
            goto LABEL_38;
          }

          v30 = v18 >> 6;
          v31 = *(v41 + 8 * (v18 >> 6));
          if (((v31 >> v18) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v21 + 36) != v19)
          {
            goto LABEL_40;
          }

          v32 = v31 & (-2 << (v18 & 0x3F));
          if (v32)
          {
            v29 = (__clz(__rbit64(v32)) | v18 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v33 = v30 << 6;
            v34 = v30 + 1;
            v35 = (v40 + 8 * v30);
            while (v34 < &v29->storeProvider[1] >> 6)
            {
              v37 = *v35++;
              v36 = v37;
              v33 += 64;
              ++v34;
              if (v37)
              {
                sub_100010E34(v18, v19, 0, v12, v13, v14, v15, v16);
                v29 = (__clz(__rbit64(v36)) + v33);
                goto LABEL_32;
              }
            }

            sub_100010E34(v18, v19, 0, v12, v13, v14, v15, v16);
LABEL_32:
            v5 = v21;
          }

          v38 = *(v5 + 36);
          v50 = v29;
          v51 = v38;
          v52 = 0;
          if (v10 == v6)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v39._object = 0x80000001007EC120;
    v39._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v39);
    sub_1000F5104(a2, a3);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003FE534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = 0;
  v81 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v4 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v24 = [objc_opt_self() localInternalAccountID];
    v77 = v23;
    v25 = v24;
    v26 = [v24 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v28 = v27;
    (*(v9 + 8))(v12, v8);
    v29 = String._bridgeToObjectiveC()();
    v28, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v4 storeForAccountIdentifier:v29];

    v23 = v77;
    if (v37)
    {
      v76 = a2;
      v38 = [v4 persistentStoreCoordinator];
      v39 = [v38 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v75 = a3;
        v48 = 0;
        v79 = v40 & 0xC000000000000001;
        a3 = i;
        while (1)
        {
          if (v79)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v48 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v49 = *(v40 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v48;
          if (v51 == a3)
          {
            a3 = v75;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v40, v41, v42, v43, v44, v45, v46, v47;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = v77;
      [v77 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v76;
    }
  }

  v53 = swift_allocObject();
  v53[2] = &v82;
  v53[3] = a2;
  v53[4] = a3;
  v53[5] = v23;
  v53[6] = &v81;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100412D3C;
  *(v54 + 24) = v53;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0AA0;
  v55 = _Block_copy(aBlock);
  v56 = v23;

  [v56 performBlockAndWait:v55];
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
  }

  else
  {
    if (v81)
    {
      swift_willThrow();
      swift_errorRetain();

      v58 = v82;

      v58, v59, v60, v61, v62, v63, v64, v65;
      return v54;
    }

    v54 = v82;
    if (v82)
    {

      v66 = v82;

      v66, v67, v68, v69, v70, v71, v72, v73;
      return v54;
    }
  }

  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1003FEA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = 1;
  v79 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v4 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v24 = [objc_opt_self() localInternalAccountID];
    v75 = v23;
    v25 = v24;
    v26 = [v24 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v28 = v27;
    (*(v9 + 8))(v12, v8);
    v29 = String._bridgeToObjectiveC()();
    v28, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v4 storeForAccountIdentifier:v29];

    v23 = v75;
    if (v37)
    {
      v74 = a2;
      v38 = [v4 persistentStoreCoordinator];
      v39 = [v38 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v73 = a3;
        v48 = 0;
        v77 = v40 & 0xC000000000000001;
        a3 = i;
        while (1)
        {
          if (v77)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v48 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v49 = *(v40 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v48;
          if (v51 == a3)
          {
            a3 = v73;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v40, v41, v42, v43, v44, v45, v46, v47;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = v75;
      [v75 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v74;
    }
  }

  v53 = swift_allocObject();
  v53[2] = &v80;
  v53[3] = a2;
  v53[4] = a3;
  v53[5] = v23;
  v53[6] = &v79;
  v54 = swift_allocObject();
  *v54->clientIdentity = sub_100412CA4;
  *&v54->clientIdentity[8] = v53;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F1130;
  v55 = _Block_copy(aBlock);
  v56 = v23;

  [v56 performBlockAndWait:v55];
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
  }

  else
  {
    if (v79)
    {
      swift_willThrow();
      swift_errorRetain();

      sub_100412CB4(v80, v58, v59, v60, v61, v62, v63, v64);

      return v54;
    }

    v54 = v80;
    if (v80 != 1)
    {

      sub_100412CB4(v80, v65, v66, v67, v68, v69, v70, v71);

      return v54;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FEFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v4 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v24 = [objc_opt_self() localInternalAccountID];
    v73 = v23;
    v25 = v24;
    v26 = [v24 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v28 = v27;
    (*(v9 + 8))(v12, v8);
    v29 = String._bridgeToObjectiveC()();
    v28, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v4 storeForAccountIdentifier:v29];

    v23 = v73;
    if (v37)
    {
      v72 = a2;
      v38 = [v4 persistentStoreCoordinator];
      v39 = [v38 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v71 = a3;
        v48 = 0;
        v75 = v40 & 0xC000000000000001;
        a3 = i;
        while (1)
        {
          if (v75)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v48 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v49 = *(v40 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v48;
          if (v51 == a3)
          {
            a3 = v71;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v40, v41, v42, v43, v44, v45, v46, v47;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = v73;
      [v73 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v72;
    }
  }

  v53 = swift_allocObject();
  v53[2] = &v77;
  v53[3] = a2;
  v53[4] = a3;
  v53[5] = v23;
  v53[6] = &v80;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100412C30;
  *(v54 + 24) = v53;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F10B8;
  v55 = _Block_copy(aBlock);
  v56 = v23;

  [v56 performBlockAndWait:v55];
  _Block_release(v55);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v80)
    {
      swift_willThrow();
      swift_errorRetain();

      sub_100412C60(v77, v78, v79, v59, v60, v61, v62, v63);

      return isEscapingClosureAtFileLocation;
    }

    if (v78)
    {
      v64 = v79;
      isEscapingClosureAtFileLocation = v77;

      v64;

      sub_100412C60(v77, v78, v79, v65, v66, v67, v68, v69);

      return isEscapingClosureAtFileLocation;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FF564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = 0;
  v81 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v4 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v24 = [objc_opt_self() localInternalAccountID];
    v77 = v23;
    v25 = v24;
    v26 = [v24 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v28 = v27;
    (*(v9 + 8))(v12, v8);
    v29 = String._bridgeToObjectiveC()();
    v28, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v4 storeForAccountIdentifier:v29];

    v23 = v77;
    if (v37)
    {
      v76 = a2;
      v38 = [v4 persistentStoreCoordinator];
      v39 = [v38 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v75 = a3;
        v48 = 0;
        v79 = v40 & 0xC000000000000001;
        a3 = i;
        while (1)
        {
          if (v79)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v48 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v49 = *(v40 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v48;
          if (v51 == a3)
          {
            a3 = v75;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v40, v41, v42, v43, v44, v45, v46, v47;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = v77;
      [v77 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v76;
    }
  }

  v53 = swift_allocObject();
  v53[2] = &v82;
  v53[3] = a2;
  v53[4] = a3;
  v53[5] = v23;
  v53[6] = &v81;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100412D3C;
  *(v54 + 24) = v53;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F1040;
  v55 = _Block_copy(aBlock);
  v56 = v23;

  [v56 performBlockAndWait:v55];
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
  }

  else
  {
    if (v81)
    {
      swift_willThrow();
      swift_errorRetain();

      v58 = v82;

      v58, v59, v60, v61, v62, v63, v64, v65;
      return v54;
    }

    v54 = v82;
    if (v82)
    {

      v66 = v82;

      v66, v67, v68, v69, v70, v71, v72, v73;
      return v54;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FFAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = 0;
  v81 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v4 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v24 = [objc_opt_self() localInternalAccountID];
    v77 = v23;
    v25 = v24;
    v26 = [v24 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v28 = v27;
    (*(v9 + 8))(v12, v8);
    v29 = String._bridgeToObjectiveC()();
    v28, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v4 storeForAccountIdentifier:v29];

    v23 = v77;
    if (v37)
    {
      v76 = a2;
      v38 = [v4 persistentStoreCoordinator];
      v39 = [v38 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v75 = a3;
        v48 = 0;
        v79 = v40 & 0xC000000000000001;
        a3 = i;
        while (1)
        {
          if (v79)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v48 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v49 = *(v40 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v48;
          if (v51 == a3)
          {
            a3 = v75;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v40, v41, v42, v43, v44, v45, v46, v47;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = v77;
      [v77 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v76;
    }
  }

  v53 = swift_allocObject();
  v53[2] = &v82;
  v53[3] = a2;
  v53[4] = a3;
  v53[5] = v23;
  v53[6] = &v81;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100412D3C;
  *(v54 + 24) = v53;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0FC8;
  v55 = _Block_copy(aBlock);
  v56 = v23;

  [v56 performBlockAndWait:v55];
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
  }

  else
  {
    if (v81)
    {
      swift_willThrow();
      swift_errorRetain();

      v58 = v82;

      v58, v59, v60, v61, v62, v63, v64, v65;
      return v54;
    }

    v54 = v82;
    if (v82)
    {

      v66 = v82;

      v66, v67, v68, v69, v70, v71, v72, v73;
      return v54;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10040001C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = 0;
  v81 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v4 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v24 = [objc_opt_self() localInternalAccountID];
    v77 = v23;
    v25 = v24;
    v26 = [v24 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v28 = v27;
    (*(v9 + 8))(v12, v8);
    v29 = String._bridgeToObjectiveC()();
    v28, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v4 storeForAccountIdentifier:v29];

    v23 = v77;
    if (v37)
    {
      v76 = a2;
      v38 = [v4 persistentStoreCoordinator];
      v39 = [v38 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v75 = a3;
        v48 = 0;
        v79 = v40 & 0xC000000000000001;
        a3 = i;
        while (1)
        {
          if (v79)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v48 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v49 = *(v40 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v48;
          if (v51 == a3)
          {
            a3 = v75;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v40, v41, v42, v43, v44, v45, v46, v47;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = v77;
      [v77 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v76;
    }
  }

  v53 = swift_allocObject();
  v53[2] = &v82;
  v53[3] = a2;
  v53[4] = a3;
  v53[5] = v23;
  v53[6] = &v81;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100412D3C;
  *(v54 + 24) = v53;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0F50;
  v55 = _Block_copy(aBlock);
  v56 = v23;

  [v56 performBlockAndWait:v55];
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
  }

  else
  {
    if (v81)
    {
      swift_willThrow();
      swift_errorRetain();

      v58 = v82;

      v58, v59, v60, v61, v62, v63, v64, v65;
      return v54;
    }

    v54 = v82;
    if (v82)
    {

      v66 = v82;

      v66, v67, v68, v69, v70, v71, v72, v73;
      return v54;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100400578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = 0;
  v81 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v4 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v24 = [objc_opt_self() localInternalAccountID];
    v77 = v23;
    v25 = v24;
    v26 = [v24 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v28 = v27;
    (*(v9 + 8))(v12, v8);
    v29 = String._bridgeToObjectiveC()();
    v28, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v4 storeForAccountIdentifier:v29];

    v23 = v77;
    if (v37)
    {
      v76 = a2;
      v38 = [v4 persistentStoreCoordinator];
      v39 = [v38 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v75 = a3;
        v48 = 0;
        v79 = v40 & 0xC000000000000001;
        a3 = i;
        while (1)
        {
          if (v79)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v48 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v49 = *(v40 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v48;
          if (v51 == a3)
          {
            a3 = v75;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v40, v41, v42, v43, v44, v45, v46, v47;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = v77;
      [v77 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v76;
    }
  }

  v53 = swift_allocObject();
  v53[2] = &v82;
  v53[3] = a2;
  v53[4] = a3;
  v53[5] = v23;
  v53[6] = &v81;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100412D3C;
  *(v54 + 24) = v53;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0938;
  v55 = _Block_copy(aBlock);
  v56 = v23;

  [v56 performBlockAndWait:v55];
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
  }

  else
  {
    if (v81)
    {
      swift_willThrow();
      swift_errorRetain();

      v58 = v82;

      v58, v59, v60, v61, v62, v63, v64, v65;
      return v54;
    }

    v54 = v82;
    if (v82)
    {

      v66 = v82;

      v66, v67, v68, v69, v70, v71, v72, v73;
      return v54;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100400AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = 0;
  v81 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v4 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v24 = [objc_opt_self() localInternalAccountID];
    v77 = v23;
    v25 = v24;
    v26 = [v24 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v28 = v27;
    (*(v9 + 8))(v12, v8);
    v29 = String._bridgeToObjectiveC()();
    v28, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v4 storeForAccountIdentifier:v29];

    v23 = v77;
    if (v37)
    {
      v76 = a2;
      v38 = [v4 persistentStoreCoordinator];
      v39 = [v38 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v75 = a3;
        v48 = 0;
        v79 = v40 & 0xC000000000000001;
        a3 = i;
        while (1)
        {
          if (v79)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v48 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v49 = *(v40 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v48;
          if (v51 == a3)
          {
            a3 = v75;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v40, v41, v42, v43, v44, v45, v46, v47;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = v77;
      [v77 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v76;
    }
  }

  v53 = swift_allocObject();
  v53[2] = &v82;
  v53[3] = a2;
  v53[4] = a3;
  v53[5] = v23;
  v53[6] = &v81;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100412D3C;
  *(v54 + 24) = v53;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0CF8;
  v55 = _Block_copy(aBlock);
  v56 = v23;

  [v56 performBlockAndWait:v55];
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
  }

  else
  {
    if (v81)
    {
      swift_willThrow();
      swift_errorRetain();

      v58 = v82;

      v58, v59, v60, v61, v62, v63, v64, v65;
      return v54;
    }

    v54 = v82;
    if (v82)
    {

      v66 = v82;

      v66, v67, v68, v69, v70, v71, v72, v73;
      return v54;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100401030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = 0;
  v81 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v4 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v24 = [objc_opt_self() localInternalAccountID];
    v77 = v23;
    v25 = v24;
    v26 = [v24 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v28 = v27;
    (*(v9 + 8))(v12, v8);
    v29 = String._bridgeToObjectiveC()();
    v28, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v4 storeForAccountIdentifier:v29];

    v23 = v77;
    if (v37)
    {
      v76 = a2;
      v38 = [v4 persistentStoreCoordinator];
      v39 = [v38 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v75 = a3;
        v48 = 0;
        v79 = v40 & 0xC000000000000001;
        a3 = i;
        while (1)
        {
          if (v79)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v48 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v49 = *(v40 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v48;
          if (v51 == a3)
          {
            a3 = v75;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v40, v41, v42, v43, v44, v45, v46, v47;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = v77;
      [v77 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v76;
    }
  }

  v53 = swift_allocObject();
  v53[2] = &v82;
  v53[3] = a2;
  v53[4] = a3;
  v53[5] = v23;
  v53[6] = &v81;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100412D3C;
  *(v54 + 24) = v53;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F1298;
  v55 = _Block_copy(aBlock);
  v56 = v23;

  [v56 performBlockAndWait:v55];
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
  }

  else
  {
    if (v81)
    {
      swift_willThrow();
      swift_errorRetain();

      v58 = v82;

      v58, v59, v60, v61, v62, v63, v64, v65;
      return v54;
    }

    v54 = v82;
    if (v82)
    {

      v66 = v82;

      v66, v67, v68, v69, v70, v71, v72, v73;
      return v54;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10040158C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = 0;
  v81 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v4 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v24 = [objc_opt_self() localInternalAccountID];
    v77 = v23;
    v25 = v24;
    v26 = [v24 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v28 = v27;
    (*(v9 + 8))(v12, v8);
    v29 = String._bridgeToObjectiveC()();
    v28, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v4 storeForAccountIdentifier:v29];

    v23 = v77;
    if (v37)
    {
      v76 = a2;
      v38 = [v4 persistentStoreCoordinator];
      v39 = [v38 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v75 = a3;
        v48 = 0;
        v79 = v40 & 0xC000000000000001;
        a3 = i;
        while (1)
        {
          if (v79)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v48 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v49 = *(v40 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v48;
          if (v51 == a3)
          {
            a3 = v75;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v40, v41, v42, v43, v44, v45, v46, v47;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = v77;
      [v77 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v76;
    }
  }

  v53 = swift_allocObject();
  v53[2] = &v82;
  v53[3] = a2;
  v53[4] = a3;
  v53[5] = v23;
  v53[6] = &v81;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100412D3C;
  *(v54 + 24) = v53;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F1220;
  v55 = _Block_copy(aBlock);
  v56 = v23;

  [v56 performBlockAndWait:v55];
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
  }

  else
  {
    if (v81)
    {
      swift_willThrow();
      swift_errorRetain();

      v58 = v82;

      v58, v59, v60, v61, v62, v63, v64, v65;
      return v54;
    }

    v54 = v82;
    if (v82)
    {

      v66 = v82;

      v66, v67, v68, v69, v70, v71, v72, v73;
      return v54;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100401AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = 0;
  v81 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v4 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v24 = [objc_opt_self() localInternalAccountID];
    v77 = v23;
    v25 = v24;
    v26 = [v24 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v28 = v27;
    (*(v9 + 8))(v12, v8);
    v29 = String._bridgeToObjectiveC()();
    v28, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v4 storeForAccountIdentifier:v29];

    v23 = v77;
    if (v37)
    {
      v76 = a2;
      v38 = [v4 persistentStoreCoordinator];
      v39 = [v38 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v75 = a3;
        v48 = 0;
        v79 = v40 & 0xC000000000000001;
        a3 = i;
        while (1)
        {
          if (v79)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v48 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v49 = *(v40 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v48;
          if (v51 == a3)
          {
            a3 = v75;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v40, v41, v42, v43, v44, v45, v46, v47;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = v77;
      [v77 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v76;
    }
  }

  v53 = swift_allocObject();
  v53[2] = &v82;
  v53[3] = a2;
  v53[4] = a3;
  v53[5] = v23;
  v53[6] = &v81;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100412D3C;
  *(v54 + 24) = v53;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F11A8;
  v55 = _Block_copy(aBlock);
  v56 = v23;

  [v56 performBlockAndWait:v55];
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
  }

  else
  {
    if (v81)
    {
      swift_willThrow();
      swift_errorRetain();

      v58 = v82;

      v58, v59, v60, v61, v62, v63, v64, v65;
      return v54;
    }

    v54 = v82;
    if (v82)
    {

      v66 = v82;

      v66, v67, v68, v69, v70, v71, v72, v73;
      return v54;
    }
  }

  __break(1u);
  return result;
}

void sub_100402044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v63 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = 0;
  v67 = 0;
  sub_1000063E8();
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  v15, v17, v18, v19, v20, v21, v22, v23;
  v24 = [v6 newBackgroundContextWithAuthor:v16];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v25 = [objc_opt_self() localInternalAccountID];
    v62 = v24;
    v26 = v25;
    v27 = [v25 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v29 = v28;
    (*(v10 + 8))(v13, v9);
    v30 = String._bridgeToObjectiveC()();
    v29, v31, v32, v33, v34, v35, v36, v37;
    v38 = [v6 storeForAccountIdentifier:v30];

    v24 = v62;
    if (v38)
    {
      v61 = a3;
      v39 = [v6 persistentStoreCoordinator];
      v40 = [v39 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v41 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v60[1] = v5;
        v49 = 0;
        v65 = v41 & 0xC000000000000001;
        v5 = i;
        while (1)
        {
          if (v65)
          {
            v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v49 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v50 = *(v41 + 8 * v49 + 32);
          }

          v51 = v50;
          v52 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v5 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v49;
          if (v52 == v5)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v41, v42, v43, v44, v45, v46, v47, v48;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v24 = v62;
      [v62 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a3 = v61;
    }
  }

  v54 = swift_allocObject();
  v54[2] = &v68;
  v54[3] = v63;
  v54[4] = a3;
  v54[5] = v24;
  v54[6] = &v67;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_100412D40;
  *(v55 + 24) = v54;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v55;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0E60;
  v56 = _Block_copy(aBlock);
  v57 = v24;

  [v57 performBlockAndWait:v56];
  _Block_release(v56);
  LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

  if (v56)
  {
    __break(1u);
  }

  else
  {
    if (v67)
    {
      swift_willThrow();
      swift_errorRetain();

      v58 = v68;

      return;
    }

    if (v68)
    {
      v68;

      v59 = v68;

      return;
    }
  }

  __break(1u);
}

uint64_t sub_10040259C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = 0;
  v81 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v4 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v24 = [objc_opt_self() localInternalAccountID];
    v77 = v23;
    v25 = v24;
    v26 = [v24 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v28 = v27;
    (*(v9 + 8))(v12, v8);
    v29 = String._bridgeToObjectiveC()();
    v28, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v4 storeForAccountIdentifier:v29];

    v23 = v77;
    if (v37)
    {
      v76 = a2;
      v38 = [v4 persistentStoreCoordinator];
      v39 = [v38 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v75 = a3;
        v48 = 0;
        v79 = v40 & 0xC000000000000001;
        a3 = i;
        while (1)
        {
          if (v79)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v48 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v49 = *(v40 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v48;
          if (v51 == a3)
          {
            a3 = v75;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v40, v41, v42, v43, v44, v45, v46, v47;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = v77;
      [v77 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v76;
    }
  }

  v53 = swift_allocObject();
  v53[2] = &v82;
  v53[3] = a2;
  v53[4] = a3;
  v53[5] = v23;
  v53[6] = &v81;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100412D3C;
  *(v54 + 24) = v53;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0B90;
  v55 = _Block_copy(aBlock);
  v56 = v23;

  [v56 performBlockAndWait:v55];
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
  }

  else
  {
    if (v81)
    {
      swift_willThrow();
      swift_errorRetain();

      v58 = v82;

      v58, v59, v60, v61, v62, v63, v64, v65;
      return v54;
    }

    v54 = v82;
    if (v82)
    {

      v66 = v82;

      v66, v67, v68, v69, v70, v71, v72, v73;
      return v54;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100402AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = 0;
  v81 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v4 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v24 = [objc_opt_self() localInternalAccountID];
    v77 = v23;
    v25 = v24;
    v26 = [v24 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v28 = v27;
    (*(v9 + 8))(v12, v8);
    v29 = String._bridgeToObjectiveC()();
    v28, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v4 storeForAccountIdentifier:v29];

    v23 = v77;
    if (v37)
    {
      v76 = a2;
      v38 = [v4 persistentStoreCoordinator];
      v39 = [v38 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v75 = a3;
        v48 = 0;
        v79 = v40 & 0xC000000000000001;
        a3 = i;
        while (1)
        {
          if (v79)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v48 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v49 = *(v40 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v48;
          if (v51 == a3)
          {
            a3 = v75;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v40, v41, v42, v43, v44, v45, v46, v47;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = v77;
      [v77 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v76;
    }
  }

  v53 = swift_allocObject();
  v53[2] = &v82;
  v53[3] = a2;
  v53[4] = a3;
  v53[5] = v23;
  v53[6] = &v81;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100412D3C;
  *(v54 + 24) = v53;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0B18;
  v55 = _Block_copy(aBlock);
  v56 = v23;

  [v56 performBlockAndWait:v55];
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
  }

  else
  {
    if (v81)
    {
      swift_willThrow();
      swift_errorRetain();

      v58 = v82;

      v58, v59, v60, v61, v62, v63, v64, v65;
      return v54;
    }

    v54 = v82;
    if (v82)
    {

      v66 = v82;

      v66, v67, v68, v69, v70, v71, v72, v73;
      return v54;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100403054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = 0;
  v81 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v4 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v24 = [objc_opt_self() localInternalAccountID];
    v77 = v23;
    v25 = v24;
    v26 = [v24 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v28 = v27;
    (*(v9 + 8))(v12, v8);
    v29 = String._bridgeToObjectiveC()();
    v28, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v4 storeForAccountIdentifier:v29];

    v23 = v77;
    if (v37)
    {
      v76 = a2;
      v38 = [v4 persistentStoreCoordinator];
      v39 = [v38 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v75 = a3;
        v48 = 0;
        v79 = v40 & 0xC000000000000001;
        a3 = i;
        while (1)
        {
          if (v79)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v48 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v49 = *(v40 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v48;
          if (v51 == a3)
          {
            a3 = v75;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v40, v41, v42, v43, v44, v45, v46, v47;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = v77;
      [v77 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v76;
    }
  }

  v53 = swift_allocObject();
  v53[2] = &v82;
  v53[3] = a2;
  v53[4] = a3;
  v53[5] = v23;
  v53[6] = &v81;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100412D3C;
  *(v54 + 24) = v53;
  aBlock[4] = sub_100008D30;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F08C0;
  v55 = _Block_copy(aBlock);
  v56 = v23;

  [v56 performBlockAndWait:v55];
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
  }

  else
  {
    if (v81)
    {
      swift_willThrow();
      swift_errorRetain();

      v58 = v82;

      v58, v59, v60, v61, v62, v63, v64, v65;
      return v54;
    }

    v54 = v82;
    if (v82)
    {

      v66 = v82;

      v66, v67, v68, v69, v70, v71, v72, v73;
      return v54;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004035B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = 0;
  v81 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v4 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v24 = [objc_opt_self() localInternalAccountID];
    v77 = v23;
    v25 = v24;
    v26 = [v24 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v28 = v27;
    (*(v9 + 8))(v12, v8);
    v29 = String._bridgeToObjectiveC()();
    v28, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v4 storeForAccountIdentifier:v29];

    v23 = v77;
    if (v37)
    {
      v76 = a2;
      v38 = [v4 persistentStoreCoordinator];
      v39 = [v38 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v75 = a3;
        v48 = 0;
        v79 = v40 & 0xC000000000000001;
        a3 = i;
        while (1)
        {
          if (v79)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v48 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v49 = *(v40 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v48;
          if (v51 == a3)
          {
            a3 = v75;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v40, v41, v42, v43, v44, v45, v46, v47;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = v77;
      [v77 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v76;
    }
  }

  v53 = swift_allocObject();
  v53[2] = &v82;
  v53[3] = a2;
  v53[4] = a3;
  v53[5] = v23;
  v53[6] = &v81;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100412D3C;
  *(v54 + 24) = v53;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F09B0;
  v55 = _Block_copy(aBlock);
  v56 = v23;

  [v56 performBlockAndWait:v55];
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
  }

  else
  {
    if (v81)
    {
      swift_willThrow();
      swift_errorRetain();

      v58 = v82;

      v58, v59, v60, v61, v62, v63, v64, v65;
      return v54;
    }

    v54 = v82;
    if (v82)
    {

      v66 = v82;

      v66, v67, v68, v69, v70, v71, v72, v73;
      return v54;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100403B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = 2;
  v65 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v61 = [v4 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v23 = [objc_opt_self() localInternalAccountID];
    v24 = [v23 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v26 = v25;
    (*(v9 + 8))(v12, v8);
    v27 = String._bridgeToObjectiveC()();
    v26, v28, v29, v30, v31, v32, v33, v34;
    v35 = [v4 storeForAccountIdentifier:v27];

    if (v35)
    {
      v60 = a2;
      v36 = [v4 persistentStoreCoordinator];
      v37 = [v36 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v38 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v59 = a3;
        v46 = 0;
        v63 = v38 & 0xC000000000000001;
        a3 = i;
        while (1)
        {
          if (v63)
          {
            v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v46 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v47 = *(v38 + 8 * v46 + 32);
          }

          v48 = v47;
          v49 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v46;
          if (v49 == a3)
          {
            a3 = v59;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v38, v39, v40, v41, v42, v43, v44, v45;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v61 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v60;
    }
  }

  v51 = swift_allocObject();
  v51[2] = &v66;
  v51[3] = a2;
  v52 = v61;
  v51[4] = a3;
  v51[5] = v52;
  v51[6] = &v65;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_100412BB8;
  *(v53 + 24) = v51;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v53;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0C08;
  v54 = _Block_copy(aBlock);
  v55 = v52;

  [v55 performBlockAndWait:v54];
  _Block_release(v54);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v65)
    {
      swift_willThrow();
      swift_errorRetain();

      return isEscapingClosureAtFileLocation & 1;
    }

    isEscapingClosureAtFileLocation = v66;
    if (v66 != 2)
    {

      return isEscapingClosureAtFileLocation & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100404048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = 0;
  v81 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v4 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v24 = [objc_opt_self() localInternalAccountID];
    v77 = v23;
    v25 = v24;
    v26 = [v24 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v28 = v27;
    (*(v9 + 8))(v12, v8);
    v29 = String._bridgeToObjectiveC()();
    v28, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v4 storeForAccountIdentifier:v29];

    v23 = v77;
    if (v37)
    {
      v76 = a2;
      v38 = [v4 persistentStoreCoordinator];
      v39 = [v38 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v75 = a3;
        v48 = 0;
        v79 = v40 & 0xC000000000000001;
        a3 = i;
        while (1)
        {
          if (v79)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v48 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v49 = *(v40 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v48;
          if (v51 == a3)
          {
            a3 = v75;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v40, v41, v42, v43, v44, v45, v46, v47;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = v77;
      [v77 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v76;
    }
  }

  v53 = swift_allocObject();
  v53[2] = &v82;
  v53[3] = a2;
  v53[4] = a3;
  v53[5] = v23;
  v53[6] = &v81;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100412BE8;
  *(v54 + 24) = v53;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0D70;
  v55 = _Block_copy(aBlock);
  v56 = v23;

  [v56 performBlockAndWait:v55];
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    __break(1u);
  }

  else
  {
    if (v81)
    {
      swift_willThrow();
      swift_errorRetain();

      v58 = v82;

      v58, v59, v60, v61, v62, v63, v64, v65;
      return v54;
    }

    v54 = v82;
    if (v82)
    {

      v66 = v82;

      v66, v67, v68, v69, v70, v71, v72, v73;
      return v54;
    }
  }

  __break(1u);
  return result;
}