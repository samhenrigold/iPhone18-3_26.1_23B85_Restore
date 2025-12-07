uint64_t sub_1000016D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100001734()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  __chkstk_darwin(v3);
  v5 = &v42 - v4;
  v6 = [objc_opt_self() sharedInstance];
  v7 = v0[2];
  v8 = [v6 objectForInputValue:v7];
  if (!v8)
  {
    v17 = sub_100003960();
    (*(v2 + 16))(v5, v17, v1);
    sub_100001E48(v0, v46);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      v21 = v46[2];
      sub_100001E80(v46);
      *(v20 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unknown input type: %llu", v20, 0xCu);
    }

    else
    {
      sub_100001E80(v46);
    }

    (*(v2 + 8))(v5, v1);
    sub_100001EB0(&qword_10005BAE0, &unk_100033370);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100033350;
    v27 = sub_10001F4BC(v7);
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *(inited + 32) = v28;
    *(inited + 40) = v30;
    *(inited + 48) = 5;
    sub_1000030B4(inited);
    swift_setDeallocating();
    sub_1000031B0(inited + 32);
    nullsub_1();
    v16 = v31;
    goto LABEL_16;
  }

  v9 = v8;
  if ([v8 status])
  {
    sub_100001EB0(&qword_10005BAE0, &unk_100033370);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_100033350;
    v11 = sub_10001F4BC(v7);
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    *(v10 + 48) = [v9 status];
    sub_1000030B4(v10);
    swift_setDeallocating();
    sub_1000031B0(v10 + 32);
    nullsub_1();
    v16 = v15;

    return v16;
  }

  v22 = v0[4];
  if (!v22)
  {
    if (![v9 performSelector:v0[3]])
    {
LABEL_14:
      v32 = 2;
      goto LABEL_15;
    }

LABEL_12:
    v32 = 3;
LABEL_15:
    sub_100001EB0(&qword_10005BAE0, &unk_100033370);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_100033350;
    v37 = sub_10001F4BC(v7);
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    *(v36 + 32) = v38;
    *(v36 + 40) = v40;
    *(v36 + 48) = v32;
    sub_1000030B4(v36);
    swift_setDeallocating();
    sub_1000031B0(v36 + 32);
    nullsub_1();
    v16 = v41;

LABEL_16:
    return v16;
  }

  v43 = v0[3];
  v44 = v6;
  v24 = v0[10];
  v23 = v0[11];
  result = sub_100003274(v0 + 7, v24);
  if (*(v22 + 16))
  {
    sub_100003218(v22 + 32, v45);
    (*(v23 + 8))(v46, v45, v24, v23);
    sub_100003374(v45);
    sub_100003274(v46, v46[3]);
    v33 = _bridgeAnythingToObjectiveC<A>(_:)();
    v34 = v9;
    v35 = [v34 performSelector:v43 withObject:v33];
    swift_unknownObjectRelease();
    sub_100003374(v46);
    v6 = v44;
    if (!v35)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100001EB0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_100001EF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  *a4 = 0;
  *(a4 + 8) = 0;
  v10 = sub_10000A874();
  if (!*(a1 + 16) || (v11 = *v10, v12 = v10[1], , v13 = sub_100002F84(v11, v12), v15 = v14, , (v15 & 1) == 0) || (sub_100003218(*(a1 + 56) + 32 * v13, v71), (swift_dynamicCast() & 1) == 0) || (v71[5] = a3, v16 = sub_10000A88C(), !*(a1 + 16)) || (v17 = *v16, v18 = v16[1], , v19 = sub_100002F84(v17, v18), v21 = v20, , (v21 & 1) == 0) || (sub_100003218(*(a1 + 56) + 32 * v19, v71), (swift_dynamicCast() & 1) == 0))
  {
    strcpy(v71, "InputPolicy: ");
    HIWORD(v71[1]) = -4864;
    v30 = Dictionary.description.getter();
    v32 = v31;

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    String.append(_:)(v33);

    v34 = v71[0];
    v35 = v71[1];
    sub_1000032B8();
    swift_allocError();
    *v36 = v34;
    *(v36 + 8) = v35;
    *(v36 + 16) = 1;
    swift_willThrow();
LABEL_12:
    swift_unknownObjectRelease();
    sub_10000330C(a2);
    return;
  }

  v22 = sub_10000A8A4();
  if (*(a1 + 16) && (v23 = *v22, v24 = v22[1], , v25 = sub_100002F84(v23, v24), v27 = v26, , (v27 & 1) != 0) && (sub_100003218(*(a1 + 56) + 32 * v25, v71), (swift_dynamicCast() & 1) != 0))
  {
    v28 = 0;
    v29 = v70;
  }

  else
  {
    v29 = 0;
    v28 = 1;
  }

  *(a4 + 40) = v29;
  *(a4 + 48) = v28;
  v37 = sub_10000A898();
  if (!*(a1 + 16) || (v38 = *v37, v39 = v37[1], , v40 = sub_100002F84(v38, v39), v42 = v41, , (v42 & 1) == 0) || (sub_100003218(*(a1 + 56) + 32 * v40, v71), sub_100001EB0(&qword_10005BAF8, &qword_100033380), (swift_dynamicCast() & 1) == 0))
  {
    v43 = 0;
    goto LABEL_20;
  }

  v43 = v70;
  if (*(v70 + 16) != 1)
  {

    v71[0] = 0;
    v71[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v61._countAndFlagsBits = 0xD000000000000032;
    v61._object = 0x8000000100038E90;
    String.append(_:)(v61);
    v62 = Array.description.getter();
    v64 = v63;

    v65._countAndFlagsBits = v62;
    v65._object = v64;
    String.append(_:)(v65);

    v66 = v71[0];
    v67 = v71[1];
    sub_1000032B8();
    swift_allocError();
    *v68 = v66;
    *(v68 + 8) = v67;
    *(v68 + 16) = 1;
    swift_willThrow();
    goto LABEL_12;
  }

LABEL_20:
  *(a4 + 32) = v43;
  v44 = Selector.init(_:)();
  v45 = [objc_opt_self() sharedInstance];
  v46 = [v45 objectForInputValue:v70];
  if (!v46)
  {

    v71[0] = 0;
    v71[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    v49._countAndFlagsBits = 0xD000000000000022;
    v49._object = 0x8000000100038E20;
    String.append(_:)(v49);
    type metadata accessor for os_eligibility_input_t(0);
    _print_unlocked<A, B>(_:_:)();
    v50 = v45;
    v51 = v71[0];
    v52 = v71[1];
    sub_1000032B8();
    swift_allocError();
    *v53 = v51;
    *(v53 + 8) = v52;
    *(v53 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();

LABEL_26:
    sub_10000330C(a2);

    return;
  }

  v47 = v46;
  if (([v46 respondsToSelector:v44] & 1) == 0)
  {

    v71[0] = 0;
    v71[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v54 = v45;
    v55._object = 0x8000000100038E50;
    v55._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v55);
    type metadata accessor for os_eligibility_input_t(0);
    _print_unlocked<A, B>(_:_:)();
    v56._countAndFlagsBits = 0xD00000000000001DLL;
    v56._object = 0x8000000100038E70;
    String.append(_:)(v56);
    v57._countAndFlagsBits = Selector.description.getter();
    String.append(_:)(v57);

    v58 = v71[0];
    v59 = v71[1];
    sub_1000032B8();
    swift_allocError();
    *v60 = v58;
    *(v60 + 8) = v59;
    *(v60 + 16) = 1;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  *(a4 + 16) = v70;
  *(a4 + 24) = v44;
  sub_1000016D0(a2 + 8, a4 + 56);
  v48 = sub_100008304(a1);
  if (v5)
  {
    sub_10000330C(a2);

    swift_unknownObjectRelease();

    sub_100003374((a4 + 56));
  }

  else
  {
    *a4 = v48 & 1;
    v69 = sub_1000083C0(a1);
    sub_10000330C(a2);

    swift_unknownObjectRelease();

    *(a4 + 8) = v69;
  }
}

uint64_t sub_100002608()
{
  v1 = v0;
  if (*(v0 + 32))
  {
    v25[0] = 0x203A73677261;
    v25[1] = 0xE600000000000000;
    v2._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v2);

    v4 = 0x203A73677261;
    v3 = 0xE600000000000000;
  }

  else
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  if (*(v0 + 48))
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v5 = sub_10001F30C(*(v0 + 40));
    v6 = 0xE000000000000000;
    if (v5)
    {
      _StringGuts.grow(_:)(16);

      strcpy(v25, "notSetAnswer: ");
      HIBYTE(v25[1]) = -18;
      v7._countAndFlagsBits = String.init(cString:)();
      String.append(_:)(v7);

      v5 = v25[0];
      v6 = v25[1];
    }
  }

  v8 = sub_10001F4BC(*(v0 + 16));
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  _StringGuts.grow(_:)(44);

  v25[0] = 0xD00000000000001CLL;
  v25[1] = 0x8000000100038ED0;
  if (*v1)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*v1)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  v14 = v13;
  String.append(_:)(*&v12);

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = v9;
  v16._object = v11;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x6F7463656C657320;
  v17._object = 0xEB00000000203A72;
  String.append(_:)(v17);
  v18._countAndFlagsBits = Selector.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 32;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = v4;
  v20._object = v3;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 32;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = v5;
  v22._object = v6;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 62;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  return v25[0];
}

Swift::Int sub_1000028F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100002968(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void *sub_1000029C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_1000029DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002AA8(v11, 0, 0, 1, a1, a2);
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
    sub_100003218(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003374(v11);
  return v7;
}

unint64_t sub_100002AA8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002BB4(a5, a6);
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

char *sub_100002BB4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002C00(a1, a2);
  sub_100002D30(&off_100045028);
  return v3;
}

char *sub_100002C00(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100002E1C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002E1C(v10, 0);
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

uint64_t sub_100002D30(uint64_t result)
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

  result = sub_100002E90(result, v11, 1, v3);
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

void *sub_100002E1C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100001EB0(&qword_10005BB70, &qword_1000335C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002E90(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EB0(&qword_10005BB70, &qword_1000335C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100002F84(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100002FFC(a1, a2, v4);
}

unint64_t sub_100002FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000030B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001EB0(&qword_10005BB28, &unk_1000335D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100002F84(v5, v6);
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

uint64_t sub_1000031B0(uint64_t a1)
{
  v2 = sub_100001EB0(&qword_10005BAE8, &unk_100034290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003218(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100003274(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1000032B8()
{
  result = qword_10005BAF0;
  if (!qword_10005BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BAF0);
  }

  return result;
}

uint64_t sub_100003374(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1000033C0(uint64_t a1)
{
  result = sub_1000033E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000033E8()
{
  result = qword_10005BB00;
  if (!qword_10005BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BB00);
  }

  return result;
}

__n128 sub_10000343C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100003458(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000034A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100003530(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_100003580()
{
  result = qword_10005BB20;
  if (!qword_10005BB20)
  {
    type metadata accessor for os_eligibility_answer_t(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BB20);
  }

  return result;
}

uint64_t sub_1000035E8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_100003630@<X0>(uint64_t a2@<X1>, uint64_t *a4@<X8>)
{

  sub_1000030B4(&_swiftEmptyArrayStorage);
  nullsub_1();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  swift_unknownObjectRelease();
  result = sub_10000330C(a2);
  *a4 = v7;
  a4[1] = v9;
  a4[2] = v11;
  return result;
}

uint64_t sub_1000036BC()
{
  v0._countAndFlagsBits = 60;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0x696C6F5074736554;
  v1._object = 0xEA00000000007963;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0;
}

unint64_t sub_10000376C(uint64_t a1)
{
  result = sub_100003794();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100003794()
{
  result = qword_10005BB30;
  if (!qword_10005BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BB30);
  }

  return result;
}

__n128 sub_1000037E8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000037FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100003844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100003894(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000038E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100003AA8(v5, a2);
  sub_100003894(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100003998()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100003AA8(v0, qword_10005D580);
  sub_100003894(v0, qword_10005D580);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_100003A48(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_100003894(v4, a3);
}

uint64_t *sub_100003AA8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100003B1C(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 sub_100003B38(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100003B4C(uint64_t a1, unsigned int a2)
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

uint64_t sub_100003B94(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100003BDC(uint64_t result, unsigned int a2)
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

uint64_t sub_100003C04(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (xpc_string_get_string_ptr(a1))
  {
    v10 = String.init(cString:)();
    v12 = v11;
    if (sub_100003E30(v10, v11, a2))
    {
      v13 = *a3;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v13;
      if ((result & 1) == 0)
      {
        result = sub_100004BA4(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
        *a3 = result;
      }

      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_100004BA4((v15 > 1), v16 + 1, 1, v13);
        v13 = result;
        *a3 = result;
      }

      *(v13 + 16) = v16 + 1;
      v17 = v13 + 16 * v16;
      *(v17 + 32) = v10;
      *(v17 + 40) = v12;
    }

    else
    {
    }
  }

  else
  {
    v18 = sub_100003960();
    (*(v7 + 16))(v9, v18, v6);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to read precise location string, skipping", v21, 2u);
    }

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_100003E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100003F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t *sub_100003F80(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = __chkstk_darwin(v2);
  v7 = *(a1 + 16);
  if (!v7)
  {
    v9 = &_swiftEmptyDictionarySingleton;
LABEL_62:
    if (!v9[2])
    {

      return 0;
    }

    return v9;
  }

  v77 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v3;
  v86 = 0x8000000100038F10;
  v84 = 0x8000000100038F40;
  v81 = 0x8000000100038F80;
  v80 = 0x8000000100038FB0;
  v79 = 0x8000000100038FE0;
  v76 = (v4 + 16);
  v75 = (v4 + 8);
  v8 = (a1 + 40);
  v9 = &_swiftEmptyDictionarySingleton;
  v10 = &qword_100033778;
  *&v6 = 136315138;
  v74 = v6;
  v82 = xmmword_100033350;
  while (1)
  {
    v12 = *(v8 - 1);
    v13 = *v8;
    v96 = 0;
    v94 = 0u;
    v95 = 0u;
    v14 = v12 == 0xD000000000000026 && v86 == v13;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v15 = objc_opt_self();
      v85 = v13;

      v16 = [v15 sharedInstance];
      v17 = [v16 objectForInputValue:2];
      if (v17)
      {
        v18 = v17;
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19)
        {
          v20 = [v19 countryCode];
          if (v20)
          {
            v21 = v12;
            v22 = v9;
            v23 = v20;
            v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v83 = v8;
            v25 = v10;
            v27 = v26;

            v9 = v22;
            v12 = v21;

            *&v88 = v24;
            *(&v88 + 1) = v27;
            v10 = v25;
            v8 = v83;
            AnyHashable.init<A>(_:)();
            sub_100006A80(&v94, &qword_10005BB48, v10);
LABEL_26:
            v13 = v85;
LABEL_27:
            v94 = v91;
            v95 = v92;
            v96 = v93;
            goto LABEL_28;
          }

          sub_100006A80(&v94, &qword_10005BB48, v10);
        }

        else
        {

          sub_100006A80(&v94, &qword_10005BB48, v10);
        }
      }

      else
      {
        sub_100006A80(&v94, &qword_10005BB48, v10);
      }

      v93 = 0;
      v91 = 0u;
      v92 = 0u;
      goto LABEL_26;
    }

    v28 = v12 == 0xD000000000000030 && v84 == v13;
    if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v29 = v12;
      v30 = v13;
      v31 = v9;
      v32 = v30;

      v34 = sub_100016754(v33);
      if (v35)
      {
        v36 = v34;
        v37 = v35;
        sub_100001EB0(&qword_10005BB40, &unk_1000342A0);
        v38 = swift_allocObject();
        *(v38 + 16) = v82;
        *(v38 + 32) = v36;
        *(v38 + 40) = v37;
        *&v88 = v38;
        sub_100001EB0(&qword_10005BB50, "|*");
        sub_1000069A4();
        AnyHashable.init<A>(_:)();
        sub_100006A80(&v94, &qword_10005BB48, v10);
      }

      else
      {
        sub_100006A80(&v94, &qword_10005BB48, v10);
        v91 = 0u;
        v92 = 0u;
        v93 = 0;
      }

      v9 = v31;
      v94 = v91;
      v95 = v92;
      v96 = v93;
      v13 = v32;
      v12 = v29;
      goto LABEL_28;
    }

    if (v12 == 0xD000000000000025 && v81 == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v53 = sub_100006104();
      if (v53)
      {
LABEL_42:
        *&v88 = v53;
        sub_100001EB0(&qword_10005BB50, "|*");
        sub_1000069A4();
LABEL_43:
        AnyHashable.init<A>(_:)();
        sub_100006A80(&v94, &qword_10005BB48, v10);
        goto LABEL_27;
      }

LABEL_48:
      sub_100006A80(&v94, &qword_10005BB48, v10);
      v91 = 0u;
      v92 = 0u;
      v93 = 0;
      goto LABEL_27;
    }

    if (v12 == 0xD000000000000027 && v80 == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v53 = sub_1000063BC();
      if (v53)
      {
        goto LABEL_42;
      }

      goto LABEL_48;
    }

    if (v12 == 0xD00000000000002DLL && v79 == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v54 = sub_100006614();
      if (v55)
      {
        *&v88 = v54;
        *(&v88 + 1) = v55;
        goto LABEL_43;
      }

      goto LABEL_48;
    }

    v56 = sub_100003960();
    v57 = v77;
    v58 = v78;
    (*v76)(v77, v56, v78);

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    v61 = v13;
    v62 = v60;
    v85 = v61;

    if (os_log_type_enabled(v59, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v83 = v9;
      v65 = v64;
      *&v91 = v64;
      *v63 = v74;
      *(v63 + 4) = sub_1000029DC(v12, v85, &v91);
      _os_log_impl(&_mh_execute_header, v59, v62, "Unknown context key: %s", v63, 0xCu);
      sub_100003374(v65);
      v9 = v83;

      (*v75)(v57, v78);
    }

    else
    {

      (*v75)(v57, v58);
    }

    v13 = v85;
LABEL_28:
    sub_100006828(&v94, &v88);
    if (!*(&v89 + 1))
    {
      sub_100006A80(&v94, &qword_10005BB48, v10);

      v11 = &v88;
LABEL_4:
      sub_100006A80(v11, &qword_10005BB48, v10);
      goto LABEL_5;
    }

    v91 = v88;
    v92 = v89;
    v93 = v90;
    sub_100006898(&v91, &v88);
    v39 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = v39;
    v41 = v12;
    v42 = v12;
    v43 = v13;
    v44 = sub_100002F84(v42, v13);
    v46 = v39[2];
    v47 = (v45 & 1) == 0;
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    if (v48)
    {
      break;
    }

    v50 = v45;
    if (v39[3] < v49)
    {
      sub_1000055F8(v49, isUniquelyReferenced_nonNull_native);
      v44 = sub_100002F84(v41, v43);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_67;
      }

LABEL_34:
      if (v50)
      {
        goto LABEL_35;
      }

      goto LABEL_59;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_34;
    }

    v66 = v44;
    sub_1000058C8();
    v44 = v66;
    if (v50)
    {
LABEL_35:
      v52 = v44;

      v9 = v87;
      sub_100006948(&v88, v87[7] + 40 * v52);
      sub_1000068F4(&v91);
      v11 = &v94;
      goto LABEL_4;
    }

LABEL_59:
    v9 = v87;
    v87[(v44 >> 6) + 8] |= 1 << v44;
    v67 = (v9[6] + 16 * v44);
    *v67 = v41;
    v67[1] = v43;
    v68 = v9[7] + 40 * v44;
    v69 = v90;
    v70 = v89;
    *v68 = v88;
    *(v68 + 16) = v70;
    *(v68 + 32) = v69;
    sub_1000068F4(&v91);
    sub_100006A80(&v94, &qword_10005BB48, v10);
    v71 = v9[2];
    v48 = __OFADD__(v71, 1);
    v72 = v71 + 1;
    if (v48)
    {
      goto LABEL_66;
    }

    v9[2] = v72;
LABEL_5:
    v8 += 2;
    if (!--v7)
    {
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100004898(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = a1;
  sub_100005AC8(a2, sub_100005A7C, 0, isUniquelyReferenced_nonNull_native, &v6);
  return v6;
}

uint64_t sub_100004930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003960();
  (*(v7 + 16))(v9, v10, v6);
  sub_100006898(a1, v27);
  sub_100006898(a2, v26);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = a3;
    v14 = v13;
    v25 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = AnyHashable.description.getter();
    v17 = v16;
    sub_1000068F4(v27);
    v18 = sub_1000029DC(v15, v17, &v25);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = AnyHashable.description.getter();
    v21 = v20;
    sub_1000068F4(v26);
    v22 = sub_1000029DC(v19, v21, &v25);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "Trying to merge two context dictionaries with the same keys: %s vs %s; Ignoring the new one", v14, 0x16u);
    swift_arrayDestroy();

    a3 = v24;
  }

  else
  {

    sub_1000068F4(v26);
    sub_1000068F4(v27);
  }

  (*(v7 + 8))(v9, v6);
  return sub_100006898(a1, a3);
}

char *sub_100004BA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EB0(&qword_10005BB40, &unk_1000342A0);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_100004CB0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100001EB0(&qword_10005BB40, &unk_1000342A0);
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

uint64_t sub_100004D34(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_1000050E4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_100004E84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001EB0(&unk_10005BBE0, &qword_1000337B0);
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

Swift::Int sub_1000050E4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100004E84(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100005264();
      goto LABEL_16;
    }

    sub_1000053C0(v8 + 1);
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

void *sub_100005264()
{
  v1 = v0;
  sub_100001EB0(&unk_10005BBE0, &qword_1000337B0);
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

Swift::Int sub_1000053C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001EB0(&unk_10005BBE0, &qword_1000337B0);
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

Swift::Int sub_1000055F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001EB0(&qword_10005BB78, &unk_1000337A0);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_100006898(v27, &v39);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_1000058C8()
{
  v1 = v0;
  sub_100001EB0(&qword_10005BB78, &unk_1000337A0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_100006898(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

  return result;
}

uint64_t sub_100005A7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_100006898((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_100005AC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v10 = -1 << *(a1 + 32);
  v11 = ~v10;
  v12 = *(a1 + 64);
  v13 = -v10;
  v51 = a1;
  v52 = a1 + 64;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v53 = v11;
  v54 = 0;
  v55 = v14 & v12;
  v56 = a2;
  v57 = a3;

  v58 = a3;

  sub_100005FB8(&v46);
  v15 = v47;
  if (!v47)
  {
LABEL_18:
    sub_100006A78(v51);
  }

  while (1)
  {
    v16 = v46;
    v44 = v46;
    v45 = v15;
    v41 = v48;
    v42 = v49;
    v43 = v50;
    v17 = *a5;
    v18 = sub_100002F84(v46, v15);
    v20 = v17[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_24;
    }

    v24 = v19;
    if (v17[3] >= v23)
    {
      break;
    }

    sub_1000055F8(v23, a4 & 1);
    v18 = sub_100002F84(v16, v15);
    if ((v24 & 1) != (v25 & 1))
    {
      goto LABEL_23;
    }

LABEL_12:
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_16:
    v29 = *a5;
    *(*a5 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    v30 = (v29[6] + 16 * v18);
    *v30 = v16;
    v30[1] = v15;
    v31 = v29[7] + 40 * v18;
    v32 = v41;
    v33 = v42;
    *(v31 + 32) = v43;
    *v31 = v32;
    *(v31 + 16) = v33;
    v34 = v29[2];
    v22 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v22)
    {
      goto LABEL_22;
    }

    v29[2] = v35;
LABEL_6:
    sub_100005FB8(&v46);
    v15 = v47;
    a4 = 1;
    if (!v47)
    {
      goto LABEL_18;
    }
  }

  if (a4)
  {
    goto LABEL_12;
  }

  v28 = v18;
  sub_1000058C8();
  v18 = v28;
  if ((v24 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v26 = *a5;
  v27 = v18;
  sub_100006898(*(*a5 + 56) + 40 * v18, v39);
  sub_100004930(v39, &v41, v40);
  if (!v6)
  {
    sub_1000068F4(v39);
    sub_1000068F4(&v41);

    sub_100006948(v40, v26[7] + 40 * v27);
    goto LABEL_6;
  }

  sub_1000068F4(v39);
  v39[0] = v6;
  swift_errorRetain();
  sub_100001EB0(&qword_10005BB60, &qword_100033990);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1000068F4(&v41);
    sub_100006A78(v51);
  }

LABEL_24:
  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v37._object = 0x8000000100039040;
  v37._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v37);
  _print_unlocked<A, B>(_:_:)();
  v38._countAndFlagsBits = 39;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100005E60(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_100005FB8@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100006898(*(v4 + 56) + 40 * v13, &v22);
    v20 = v23;
    v21 = v22;
    v17 = v24;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;

    if (v15)
    {
      v19 = v1[5];
      *&v22 = v16;
      *(&v22 + 1) = v15;
      v24 = v20;
      v23 = v21;
      v25 = v17;
      v19(&v22);
      return sub_100006A80(&v22, &qword_10005BB68, &qword_100033798);
    }

    else
    {
LABEL_13:
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_100006104()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 objectForInputValue:2];
  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  v5 = [v0 objectForInputValue:1];
  if (!v5)
  {

LABEL_15:
    return 0;
  }

  v6 = v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

    return 0;
  }

  v8 = v7;
  v9 = [v0 objectForInputValue:6];
  if (!v9)
  {

    goto LABEL_15;
  }

  v10 = v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {

    return 0;
  }

  v22 = _swiftEmptySetSingleton;
  if ([v11 isChinaSKU] & 1) != 0 || (isa = Array._bridgeToObjectiveC()().super.isa, v18 = objc_msgSend(v8, "anyInArray:", isa), isa, v18) && ((v19 = Array._bridgeToObjectiveC()().super.isa, v20 = objc_msgSend(v4, "inArray:", v19), v19, (v20) || objc_msgSend(v4, "status")))
  {
    sub_100004D34(&v21, 20035, 0xE200000000000000);

    v12 = v22;
    v13 = v22[2];
    if (!v13)
    {
LABEL_23:

      return 0;
    }
  }

  else
  {
    v12 = _swiftEmptySetSingleton;
    v13 = _swiftEmptySetSingleton[2];
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  v14 = sub_100004CB0(v13, 0);
  v15 = sub_100005E60(&v21, v14 + 4, v13, v12);
  result = sub_100006A78(v21);
  if (v15 == v13)
  {

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000063BC()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 objectForInputValue:16];
  if (!v1)
  {

    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3 || (v4 = [v3 countryCodes]) == 0)
  {

    return 0;
  }

  v5 = v4;
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v6 + 16))
  {

    return 0;
  }

  v16 = &_swiftEmptyArrayStorage;
  v7 = os_eligibility_precise_locations();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = &v16;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100006B18;
  *(v9 + 24) = v8;
  aBlock[4] = sub_100006B4C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003F28;
  aBlock[3] = &unk_1000453C8;
  v10 = _Block_copy(aBlock);

  xpc_array_apply(v7, v10);
  swift_unknownObjectRelease();

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return result;
  }

  v13 = v16;
  v14 = v16[2];

  result = v13;
  if (!v14)
  {

    return 0;
  }

  return result;
}

uint64_t sub_100006614()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 objectForInputValue:10];
  if (!v5)
  {
LABEL_6:
    v12 = sub_100003960();
    (*(v1 + 16))(v3, v12, v0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Missing input values for siri language", v15, 2u);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  v6 = v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

    goto LABEL_6;
  }

  v8 = [v7 language];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v10;
  }

  return 0;
}

uint64_t sub_100006828(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EB0(&qword_10005BB48, &qword_100033778);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000069A4()
{
  result = qword_10005BB58;
  if (!qword_10005BB58)
  {
    sub_100006A20(&qword_10005BB50, "|*");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BB58);
  }

  return result;
}

uint64_t sub_100006A20(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006A80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001EB0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006AE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006B78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B90(uint64_t a1)
{
  v1 = 2;
  if (a1 != 3)
  {
    v1 = a1;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

void sub_100006BAC()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100003274(v0 + 2, v1);
  (*(v2 + 16))(v1, v2);
  v4 = v3;
  sub_100001EB0(&qword_10005BB28, &unk_1000335D0);
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  v7 = 0;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v4 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = v5 + 64;
  if (v10)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v16 = v13 | (v7 << 6);
      v17 = (*(v4 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = *(*(v4 + 56) + 8 * v16);
      v21 = 3;
      if (v20 != 2)
      {
        v21 = *(*(v4 + 56) + 8 * v16);
      }

      v22 = v20 == 3 ? 2 : v21;
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v23 = (v6[6] + 16 * v16);
      *v23 = v19;
      v23[1] = v18;
      *(v6[7] + 8 * v16) = v22;
      v24 = v6[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v6[2] = v26;

      if (!v10)
      {
        goto LABEL_5;
      }
    }

LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_5:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v7 >= v11)
      {
        break;
      }

      v15 = *(v4 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    nullsub_1();
  }
}

uint64_t sub_100006D94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  *a4 = 0;
  *(a4 + 8) = 0;
  v10 = sub_10000A850();
  if (*(a1 + 16) && (v11 = *v10, v12 = v10[1], , v13 = sub_100002F84(v11, v12), v15 = v14, , (v15 & 1) != 0))
  {
    sub_100003218(*(a1 + 56) + 32 * v13, v23);
    sub_100007120(v23, v24);
    sub_100007C48(v24, a2, a3, v23);
    if (v5)
    {

      swift_unknownObjectRelease();
      sub_10000330C(a2);
      return sub_100003374(v24);
    }

    else
    {
      sub_100007130(v23, a4 + 16);
      *a4 = sub_100008304(a1) & 1;
      v22 = sub_1000083C0(a1);

      swift_unknownObjectRelease();
      sub_10000330C(a2);
      result = sub_100003374(v24);
      *(a4 + 8) = v22;
    }
  }

  else
  {
    v17 = Dictionary.description.getter();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    sub_1000032B8();
    swift_allocError();
    *v21 = 0x63696C6F50746F4ELL;
    *(v21 + 8) = 0xEA00000000002079;
    *(v21 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_10000330C(a2);
  }

  return result;
}

unint64_t sub_100007000()
{
  _StringGuts.grow(_:)(25);

  if (*v0)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v3 = v2;
  String.append(_:)(*&v1);

  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  sub_100003274((v0 + 16), *(v0 + 40));
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0xD00000000000001ALL;
}

_OWORD *sub_100007120(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100007130(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100007148(uint64_t a1)
{
  result = sub_100007170();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100007170()
{
  result = qword_10005BC50;
  if (!qword_10005BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BC50);
  }

  return result;
}

__n128 sub_1000071C4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000071E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100007228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100007284(uint64_t result, uint64_t a2)
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
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_100002F84(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
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

uint64_t sub_1000073B8(uint64_t result, uint64_t a2)
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
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_100006898(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_100002F84(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_1000068F4(&v24);
      return 0;
    }

    sub_100006898(*(a2 + 56) + 40 * v17, v23);
    v20 = static AnyHashable.== infix(_:_:)();
    sub_1000068F4(v23);
    result = sub_1000068F4(&v24);
    if ((v20 & 1) == 0)
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

uint64_t sub_100007554(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  if (sub_100007284(a1[1], a2[1]))
  {
    if (v3)
    {
      if (v2)
      {

        v4 = sub_1000073B8(v3, v2);

        if (v4)
        {
          return 1;
        }
      }
    }

    else if (!v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1000075D8(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1000339D0[a1 - 1];
  }
}

Swift::UInt64 sub_1000075FC(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v24 - v8;
  v11 = (*(v10 + 24))(v7);
  v13 = v12;
  v14 = *(v3 + 16);
  v14(v9, v1, a1);
  sub_100001EB0(&qword_10005BC58, &qword_100033870);
  if (swift_dynamicCast())
  {
    v24[1] = v13;
    v15 = v11;
    sub_100007130(&v25, v28);
    v16 = v29;
    v17 = v30;
    sub_100003274(v28, v29);
    if ((*(v17 + 8))(v16, v17))
    {

      sub_1000030B4(&_swiftEmptyArrayStorage);
    }

    sub_100003374(v28);
    v11 = v15;
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_100006A80(&v25, &qword_10005BC60, &qword_100033878);
  }

  v14(v6, v1, a1);
  sub_100001EB0(&qword_10005BC68, &qword_100033880);
  if (swift_dynamicCast())
  {
    sub_100007130(&v25, v28);
    v18 = v29;
    v19 = v30;
    sub_100003274(v28, v29);
    v20 = (*(v19 + 8))(v18, v19);
    if (v20)
    {
      v21 = v20;

      if (*(v21 + 16) && (sub_100008958(v11), (v22 & 1) != 0))
      {
      }

      else
      {
      }
    }

    sub_100003374(v28);
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_100006A80(&v25, &qword_10005BC70, &qword_100033888);
  }

  return v11;
}

uint64_t sub_1000078F0(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v46 = *(result + 16);
  if (!v46)
  {
    return result;
  }

  v6 = 0;
  v7 = result + 32;
  v45 = result + 32;
  while (2)
  {
    v8 = *(v7 + 8 * v6);
    v47 = v6 + 1;
    v48 = v8;
    v9 = v8 + 64;
    v10 = 1 << *(v8 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v8 + 64);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    v49 = v13;
    for (i = v9; ; v9 = i)
    {
      if (!v12)
      {
        if (v13 <= v14 + 1)
        {
          v19 = v14 + 1;
        }

        else
        {
          v19 = v13;
        }

        v20 = v19 - 1;
        while (1)
        {
          v18 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v18 >= v13)
          {
            v12 = 0;
            v55 = 0u;
            v56 = 0u;
            v14 = v20;
            v54 = 0u;
            goto LABEL_20;
          }

          v12 = *(v9 + 8 * v18);
          ++v14;
          if (v12)
          {
            v14 = v18;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v18 = v14;
LABEL_19:
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v22 = v21 | (v18 << 6);
      v23 = (*(v48 + 48) + 16 * v22);
      v25 = *v23;
      v24 = v23[1];
      sub_100003218(*(v48 + 56) + 32 * v22, v52);
      *&v54 = v25;
      *(&v54 + 1) = v24;
      sub_100007120(v52, &v55);

LABEL_20:
      v57 = v54;
      v58[0] = v55;
      v58[1] = v56;
      v26 = *(&v54 + 1);
      if (!*(&v54 + 1))
      {
        break;
      }

      v27 = v57;
      sub_100007120(v58, v53);
      sub_100007C48(v53, a2, a3, &v54);
      if (v4)
      {
        sub_100003374(v53);
      }

      sub_100007130(&v54, v52);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = a2;
      v30 = isUniquelyReferenced_nonNull_native;
      v31 = v29;
      v59 = *v29;
      v32 = v59;
      v33 = sub_100002F84(v27, v26);
      v35 = v32[2];
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        goto LABEL_38;
      }

      v39 = v34;
      if (v32[3] < v38)
      {
        sub_100008A30(v38, v30);
        v33 = sub_100002F84(v27, v26);
        if ((v39 & 1) != (v40 & 1))
        {
          goto LABEL_40;
        }

LABEL_27:
        a2 = v31;
        if (v39)
        {
          goto LABEL_7;
        }

        goto LABEL_28;
      }

      if (v30)
      {
        goto LABEL_27;
      }

      v44 = v33;
      sub_100008F84();
      v33 = v44;
      a2 = v31;
      if (v39)
      {
LABEL_7:
        v15 = v33;

        v16 = v59;
        v17 = (v59[7] + 40 * v15);
        sub_100003374(v17);
        sub_100007130(v52, v17);
        sub_100003374(v53);
        goto LABEL_8;
      }

LABEL_28:
      v16 = v59;
      v59[(v33 >> 6) + 8] |= 1 << v33;
      v41 = (v16[6] + 16 * v33);
      *v41 = v27;
      v41[1] = v26;
      sub_100007130(v52, v16[7] + 40 * v33);
      sub_100003374(v53);
      v42 = v16[2];
      v37 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v37)
      {
        goto LABEL_39;
      }

      v16[2] = v43;
LABEL_8:
      *a2 = v16;
      v4 = 0;
      v13 = v49;
    }

    v6 = v47;
    v7 = v45;
    if (v47 != v46)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_100007C48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  sub_100003218(a1, v44);
  if (swift_dynamicCast())
  {
    v10 = *a2;
    if (*(*a2 + 16))
    {
      v11 = sub_100002F84(v43[0]._countAndFlagsBits, v43[0]._object);
      if (v12)
      {
        sub_1000016D0(*(v10 + 56) + 40 * v11, v43);

        sub_100007130(&v43[0]._countAndFlagsBits, v44);
        return sub_100007130(v44, a4);
      }
    }

    *&v44[0] = 0;
    *(&v44[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v44[0] = v43[0];
    v21._countAndFlagsBits = 0xD000000000000018;
    v21._object = 0x80000001000390A0;
    String.append(_:)(v21);
    v22 = v44[0];
    sub_1000032B8();
    swift_allocError();
    *v23 = v22;
    v24 = 1;
    goto LABEL_12;
  }

  sub_100003218(a1, v44);
  sub_100001EB0(&qword_10005BC78, &qword_100033890);
  if (!swift_dynamicCast())
  {
    sub_1000032B8();
    swift_allocError();
    *v23 = xmmword_100033860;
    v24 = 4;
LABEL_12:
    *(v23 + 16) = v24;
    return swift_willThrow();
  }

  v42 = a3;
  v14 = sub_10000A820();
  if (*(v43[0]._countAndFlagsBits + 16) && (v15 = *v14, v16 = v14[1], , v17 = sub_100002F84(v15, v16), v19 = v18, , (v19 & 1) != 0) && (sub_100003218(*(v43[0]._countAndFlagsBits + 56) + 32 * v17, v44), (swift_dynamicCast() & 1) != 0))
  {
    countAndFlagsBits = v43[0]._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = sub_10000A258(&_swiftEmptyArrayStorage);
  }

  v25 = sub_10000A814();
  v26 = v25;
  if (!*(v43[0]._countAndFlagsBits + 16) || (v45 = countAndFlagsBits, v27 = *v25, v28 = v25[1], , v29 = sub_100002F84(v27, v28), v31 = v30, , (v31 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_100003218(*(v43[0]._countAndFlagsBits + 56) + 32 * v29, v44);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:

    v36 = *v26;
    v35 = v26[1];
    sub_1000032B8();
    swift_allocError();
    *v37 = v36;
    *(v37 + 8) = v35;
    *(v37 + 16) = 1;
    swift_willThrow();
  }

  v32 = v43[0]._countAndFlagsBits;
  if (*v43 == __PAIR128__(0xE900000000000079, 0x63696C6F50646E41) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = &type metadata for AndPolicy;
    v34 = sub_10000A704();
    goto LABEL_20;
  }

  if (*v43 == __PAIR128__(0xE800000000000000, 0x7963696C6F50724FLL) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = &type metadata for OrPolicy;
    v34 = sub_10000A6B0();
    goto LABEL_20;
  }

  if (*v43 == __PAIR128__(0xE900000000000079, 0x63696C6F50746F4ELL) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = &type metadata for NotPolicy;
    v34 = sub_10000A65C();
    goto LABEL_20;
  }

  if (__PAIR128__(0x80000001000390E0, 0xD000000000000011) == *v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = &type metadata for InputStatusPolicy;
    v34 = sub_10000A608();
    goto LABEL_20;
  }

  if (*v43 == __PAIR128__(0xEB00000000796369, 0x6C6F507475706E49) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = &type metadata for InputPolicy;
    v34 = sub_10000A5B4();
    goto LABEL_20;
  }

  if (__PAIR128__(0x8000000100039100, 0xD000000000000011) == *v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = &type metadata for GracePeriodPolicy;
    v34 = sub_10000A560();
    goto LABEL_20;
  }

  if (__PAIR128__(0x8000000100039120, 0xD00000000000001ALL) == *v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = &type metadata for AISupportedLanguagesPolicy;
    v34 = sub_10000A50C();
    goto LABEL_20;
  }

  if (*v43 == __PAIR128__(0xEA00000000007963, 0x696C6F5074736554) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = &type metadata for TestPolicy;
    v34 = sub_10000A4B8();
LABEL_20:
    v32 = v34;
    if (v5)
    {
LABEL_21:
    }

    goto LABEL_46;
  }

  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  *&v44[0] = 0xD000000000000012;
  *(&v44[0] + 1) = 0x8000000100039140;
  String.append(_:)(v43[0]);
  v38 = *(&v44[0] + 1);
  v33 = *&v44[0];
  sub_1000032B8();
  v39 = swift_allocError();
  *v40 = __PAIR128__(v38, v33);
  *(v40 + 16) = 1;
  swift_willThrow();
  if (v39)
  {
    goto LABEL_21;
  }

LABEL_46:

  sub_10000A388(a2, v44);
  v41 = *(v32 + 32);
  a4[3] = v33;
  a4[4] = v32;
  sub_10000A3E4(a4);
  swift_unknownObjectRetain();
  return v41(v45, v44, v42, v33, v32);
}

uint64_t sub_100008304(uint64_t a1)
{
  v2 = sub_10000A82C();
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = *v2;
  v4 = v2[1];

  v5 = sub_100002F84(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_100003218(*(a1 + 56) + 32 * v5, v9);
  result = swift_dynamicCast();
  if (result)
  {
    return v9[47];
  }

  return result;
}

uint64_t sub_1000083C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A838();
  if (!*(a1 + 16))
  {
    return 0;
  }

  v5 = *v4;
  v6 = v4[1];

  v7 = sub_100002F84(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_100003218(*(a1 + 56) + 32 * v7, v54);
  sub_100001EB0(&qword_10005BC80, &qword_100033898);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v51 = v2;
  v10 = v55 + 64;
  v11 = 1 << *(v55 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v55 + 64);
  v14 = (v11 + 63) >> 6;
  v53 = v55;

  v15 = 0;
  v52 = &_swiftEmptyArrayStorage;
  if (!v13)
  {
    while (1)
    {
LABEL_12:
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_96;
      }

      if (v19 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v19);
      ++v15;
      if (v13)
      {
        v15 = v19;
        goto LABEL_16;
      }
    }

    if (v52[2])
    {
      sub_100001EB0(&qword_10005BC88, qword_1000338A0);
      v49 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v49 = &_swiftEmptyDictionarySingleton;
    }

    v54[0] = v49;

    sub_100009288(v50, 1, v54);
    if (!v51)
    {

      return v54[0];
    }

    goto LABEL_100;
  }

  while (1)
  {
LABEL_16:
    v20 = __clz(__rbit64(v13)) | (v15 << 6);
    v21 = (*(v53 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(*(v53 + 56) + 8 * v20);
    v25 = HIBYTE(v22) & 0xF;
    v26 = *v21 & 0xFFFFFFFFFFFFLL;
    if ((v22 & 0x2000000000000000) != 0)
    {
      v27 = HIBYTE(v22) & 0xF;
    }

    else
    {
      v27 = *v21 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27)
    {
      goto LABEL_9;
    }

    if ((v22 & 0x1000000000000000) == 0)
    {
      break;
    }

    v17 = sub_10000972C(v23, v22, 10);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
LABEL_80:

      v18 = v24;
      goto LABEL_10;
    }

LABEL_9:
    v17 = 0;
    v18 = 0;
LABEL_10:
    v13 &= v13 - 1;

    if (v18)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1000095F8(0, v52[2] + 1, 1, v52);
      }

      v44 = v52[2];
      v43 = v52[3];
      if (v44 >= v43 >> 1)
      {
        v52 = sub_1000095F8((v43 > 1), v44 + 1, 1, v52);
      }

      v52[2] = v44 + 1;
      v45 = &v52[2 * v44];
      v45[4] = v17;
      v45[5] = v18;
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    else if (!v13)
    {
      goto LABEL_12;
    }
  }

  if ((v22 & 0x2000000000000000) == 0)
  {
    if ((v23 & 0x1000000000000000) != 0)
    {
      v28 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v28 = _StringObject.sharedUTF8.getter();
      v26 = v48;
    }

    v29 = *v28;
    if (v29 == 43)
    {
      if (v26 < 1)
      {
        goto LABEL_99;
      }

      v30 = v26 - 1;
      if (v26 == 1)
      {
        goto LABEL_78;
      }

      v17 = 0;
      if (v28)
      {
        v36 = v28 + 1;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            goto LABEL_78;
          }

          if (!is_mul_ok(v17, 0xAuLL))
          {
            goto LABEL_78;
          }

          v33 = __CFADD__(10 * v17, v37);
          v17 = 10 * v17 + v37;
          if (v33)
          {
            goto LABEL_78;
          }

          ++v36;
          if (!--v30)
          {
            goto LABEL_79;
          }
        }
      }
    }

    else if (v29 == 45)
    {
      if (v26 < 1)
      {
        goto LABEL_97;
      }

      v30 = v26 - 1;
      if (v26 == 1)
      {
        goto LABEL_78;
      }

      v17 = 0;
      if (v28)
      {
        v31 = v28 + 1;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            goto LABEL_78;
          }

          if (!is_mul_ok(v17, 0xAuLL))
          {
            goto LABEL_78;
          }

          v33 = 10 * v17 >= v32;
          v17 = 10 * v17 - v32;
          if (!v33)
          {
            goto LABEL_78;
          }

          ++v31;
          if (!--v30)
          {
            goto LABEL_79;
          }
        }
      }
    }

    else
    {
      if (!v26)
      {
LABEL_78:
        v17 = 0;
        LOBYTE(v30) = 1;
LABEL_79:
        LOBYTE(v55) = v30;
        if ((v30 & 1) == 0)
        {
          goto LABEL_80;
        }

        goto LABEL_9;
      }

      v17 = 0;
      if (v28)
      {
        do
        {
          v40 = *v28 - 48;
          if (v40 > 9)
          {
            goto LABEL_78;
          }

          if (!is_mul_ok(v17, 0xAuLL))
          {
            goto LABEL_78;
          }

          v33 = __CFADD__(10 * v17, v40);
          v17 = 10 * v17 + v40;
          if (v33)
          {
            goto LABEL_78;
          }

          ++v28;
        }

        while (--v26);
      }
    }

LABEL_77:
    LOBYTE(v30) = 0;
    goto LABEL_79;
  }

  v54[0] = v23;
  v54[1] = v22 & 0xFFFFFFFFFFFFFFLL;
  if (v23 == 43)
  {
    if (!v25)
    {
      goto LABEL_98;
    }

    v30 = v25 - 1;
    if (v25 != 1)
    {
      v17 = 0;
      v38 = v54 + 1;
      while (1)
      {
        v39 = *v38 - 48;
        if (v39 > 9)
        {
          break;
        }

        if (!is_mul_ok(v17, 0xAuLL))
        {
          break;
        }

        v33 = __CFADD__(10 * v17, v39);
        v17 = 10 * v17 + v39;
        if (v33)
        {
          break;
        }

        ++v38;
        if (!--v30)
        {
          goto LABEL_79;
        }
      }
    }

    goto LABEL_78;
  }

  if (v23 != 45)
  {
    if (v25)
    {
      v17 = 0;
      v41 = v54;
      while (1)
      {
        v42 = *v41 - 48;
        if (v42 > 9)
        {
          break;
        }

        if (!is_mul_ok(v17, 0xAuLL))
        {
          break;
        }

        v33 = __CFADD__(10 * v17, v42);
        v17 = 10 * v17 + v42;
        if (v33)
        {
          break;
        }

        ++v41;
        if (!--v25)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_78;
  }

  if (v25)
  {
    v30 = v25 - 1;
    if (v25 != 1)
    {
      v17 = 0;
      v34 = v54 + 1;
      while (1)
      {
        v35 = *v34 - 48;
        if (v35 > 9)
        {
          break;
        }

        if (!is_mul_ok(v17, 0xAuLL))
        {
          break;
        }

        v33 = 10 * v17 >= v35;
        v17 = 10 * v17 - v35;
        if (!v33)
        {
          break;
        }

        ++v34;
        if (!--v30)
        {
          goto LABEL_79;
        }
      }
    }

    goto LABEL_78;
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_100008958(Swift::UInt64 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_1000089C4(a1, v2);
}

unint64_t sub_1000089C4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

Swift::Int sub_100008A30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001EB0(&qword_10005BCF0, &qword_1000339C0);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_100007130(v24, v34);
      }

      else
      {
        sub_1000016D0(v24, v34);
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100007130(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_100008CF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001EB0(&qword_10005BC88, qword_1000338A0);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_100008F84()
{
  v1 = v0;
  sub_100001EB0(&qword_10005BCF0, &qword_1000339C0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1000016D0(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100007130(v25, *(v4 + 56) + v22);
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

  return result;
}

void *sub_10000912C()
{
  v1 = v0;
  sub_100001EB0(&qword_10005BC88, qword_1000338A0);
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

uint64_t sub_100009288(void *a1, char a2, void *a3)
{
  v44 = a1[2];
  if (!v44)
  {
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = *a3;
  v9 = sub_100008958(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_10000912C();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100001EB0(&qword_10005BB60, &qword_100033990);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_29;
  }

  sub_100008CF4(v13, a2 & 1);
  v17 = sub_100008958(v7);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_28:
    type metadata accessor for os_eligibility_answer_t(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_29:
    _StringGuts.grow(_:)(30);
    v42._object = 0x8000000100039040;
    v42._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v42);
    type metadata accessor for os_eligibility_answer_t(0);
    _print_unlocked<A, B>(_:_:)();
    v43._countAndFlagsBits = 39;
    v43._object = 0xE100000000000000;
    String.append(_:)(v43);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v14 = v17;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v20 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v20[6] + 8 * v14) = v7;
  *(v20[7] + 8 * v14) = v6;
  v21 = v20[2];
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20[2] = v23;
  if (v44 != 1)
  {
    v24 = a1 + 7;
    v25 = 1;
    while (v25 < a1[2])
    {
      v27 = *(v24 - 1);
      v26 = *v24;
      v28 = *a3;
      v29 = sub_100008958(v27);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_25;
      }

      v34 = v29;
      v35 = v30;
      v36 = v28[3];

      if (v36 < v33)
      {
        sub_100008CF4(v33, 1);
        v37 = sub_100008958(v27);
        if ((v35 & 1) != (v38 & 1))
        {
          goto LABEL_28;
        }

        v34 = v37;
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      *(v39[6] + 8 * v34) = v27;
      *(v39[7] + 8 * v34) = v26;
      v40 = v39[2];
      v22 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      ++v25;
      v39[2] = v41;
      v24 += 2;
      if (v44 == v25)
      {
      }
    }

    goto LABEL_27;
  }
}

void *sub_1000095F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001EB0(&qword_10005BC90, &qword_100033998);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001EB0(&qword_10005BC98, &unk_1000339A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unsigned __int8 *sub_10000972C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100009CB0(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100009CB0(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_100009D30(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100009D30(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100002E1C(v9, 0), v12 = sub_100009E88(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100009E88(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10000A0A8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10000A0A8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10000A0A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_10000A124(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001EB0(&qword_10005BCF0, &qword_1000339C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A758(v4, &v13, &qword_10005BCF8, &qword_1000339C8);
      v5 = v13;
      v6 = v14;
      result = sub_100002F84(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100007130(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_10000A258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001EB0(&qword_10005BCE0, &qword_1000339B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A758(v4, &v13, &qword_10005BCE8, &qword_1000339B8);
      v5 = v13;
      v6 = v14;
      result = sub_100002F84(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100007120(&v15, (v3[7] + 32 * result));
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

uint64_t *sub_10000A3E4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_10000A448(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

unint64_t sub_10000A4B8()
{
  result = qword_10005BCA0;
  if (!qword_10005BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BCA0);
  }

  return result;
}

unint64_t sub_10000A50C()
{
  result = qword_10005BCA8;
  if (!qword_10005BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BCA8);
  }

  return result;
}

unint64_t sub_10000A560()
{
  result = qword_10005BCB0;
  if (!qword_10005BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BCB0);
  }

  return result;
}

unint64_t sub_10000A5B4()
{
  result = qword_10005BCB8;
  if (!qword_10005BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BCB8);
  }

  return result;
}

unint64_t sub_10000A608()
{
  result = qword_10005BCC0;
  if (!qword_10005BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BCC0);
  }

  return result;
}

unint64_t sub_10000A65C()
{
  result = qword_10005BCC8;
  if (!qword_10005BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BCC8);
  }

  return result;
}

unint64_t sub_10000A6B0()
{
  result = qword_10005BCD0;
  if (!qword_10005BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BCD0);
  }

  return result;
}

unint64_t sub_10000A704()
{
  result = qword_10005BCD8;
  if (!qword_10005BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BCD8);
  }

  return result;
}

uint64_t sub_10000A758(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001EB0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000A928()
{
  v1 = v0;
  v96 = type metadata accessor for Logger();
  v98 = *(v96 - 8);
  __chkstk_darwin(v96);
  v97 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001EB0(&qword_10005BD00, "^/");
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v104 = &v94 - v7;
  v8 = type metadata accessor for Date();
  v103 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v95 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v100 = &v94 - v11;
  v12 = v0[5];
  v13 = v0[6];
  sub_100003274(v0 + 2, v12);
  v14 = (*(v13 + 16))(v12, v13);
  v16 = v15;
  v18 = v17;
  v19 = *(v1 + 64);
  v20 = String._bridgeToObjectiveC()();
  v102 = v14;
  if (v14 == 4)
  {
    [v19 createGracePeriod:v20];

    v104 = v16;
LABEL_40:

    nullsub_1();
    v93 = v92;

    return v93;
  }

  v94 = v8;
  v101 = v18;
  v21 = [v19 hasGracePeriod:v20];

  if (!v21)
  {

    v104 = v16;
    goto LABEL_40;
  }

  v22 = String._bridgeToObjectiveC()();
  v23 = [v19 getGracePeriodStartDate:v22];

  v24 = v16;
  if (v23)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = v103;
    v26 = *(v103 + 56);
    v27 = v6;
    v28 = 0;
  }

  else
  {
    v25 = v103;
    v26 = *(v103 + 56);
    v27 = v6;
    v28 = 1;
  }

  v29 = v94;
  v26(v27, v28, 1, v94);
  v30 = v6;
  v31 = v104;
  sub_10000B24C(v30, v104);
  v32 = (*(v25 + 48))(v31, 1, v29);
  v99 = v16;
  if (v32 == 1)
  {
    sub_10000B2BC(v31);
    v33 = String._bridgeToObjectiveC()();
    [v19 startGracePeriod:v33];

    sub_100001EB0(&qword_10005BB28, &unk_1000335D0);
    result = static _DictionaryStorage.copy(original:)();
    v35 = 0;
    v36 = v16 + 64;
    v37 = 1 << *(v16 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v16 + 64);
    v40 = (v37 + 63) >> 6;
    v104 = result;
    for (i = result + 64; v39; v24 = v99)
    {
      v42 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
LABEL_18:
      v45 = v42 | (v35 << 6);
      v46 = *(v24 + 56);
      v47 = (*(v24 + 48) + 16 * v45);
      v49 = *v47;
      v48 = v47[1];
      v50 = *(v46 + 8 * v45);

      result = sub_100006B90(v50);
      *(i + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      v51 = v104;
      v52 = (*(v104 + 48) + 16 * v45);
      *v52 = v49;
      v52[1] = v48;
      *(*(v51 + 56) + 8 * v45) = result;
      v53 = *(v51 + 16);
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        goto LABEL_43;
      }

      *(v104 + 16) = v55;
    }

    v43 = v35;
    while (1)
    {
      v35 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v35 >= v40)
      {
        goto LABEL_40;
      }

      v44 = *(v36 + 8 * v35);
      ++v43;
      if (v44)
      {
        v42 = __clz(__rbit64(v44));
        v39 = (v44 - 1) & v44;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v56 = v100;
    (*(v25 + 32))(v100, v31, v29);
    Date.timeIntervalSinceNow.getter();
    if (-v57 >= *(v1 + 56))
    {
      (*(v25 + 8))(v56, v29);

      v104 = v24;
      goto LABEL_40;
    }

    v58 = sub_100003960();
    v60 = v97;
    v59 = v98;
    v61 = v96;
    (*(v98 + 16))(v97, v58, v96);
    sub_10000B324(v1, v106);
    v62 = v95;
    (*(v25 + 16))(v95, v56, v29);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *v65 = 136315394;
      v66 = v107;
      v67 = v108;

      sub_10000B35C(v106);
      v68 = sub_1000029DC(v66, v67, &v105);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2080;
      sub_10000BD88(&qword_10005BD08, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v102 = *(v103 + 8);
      v102(v62, v29);
      v72 = sub_1000029DC(v69, v71, &v105);

      *(v65 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v63, v64, "Grace period in effect: %s since %s", v65, 0x16u);
      swift_arrayDestroy();

      (*(v98 + 8))(v97, v61);
    }

    else
    {

      v102 = *(v25 + 8);
      v102(v62, v29);
      sub_10000B35C(v106);
      (*(v59 + 8))(v60, v61);
    }

    sub_100001EB0(&qword_10005BB28, &unk_1000335D0);
    result = static _DictionaryStorage.copy(original:)();
    v73 = 0;
    v74 = v24 + 64;
    v75 = 1 << *(v24 + 32);
    v76 = -1;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    v77 = v76 & *(v24 + 64);
    v78 = (v75 + 63) >> 6;
    v104 = result;
    for (j = result + 64; v77; *(v104 + 16) = v91)
    {
      v80 = __clz(__rbit64(v77));
      v77 &= v77 - 1;
LABEL_36:
      v83 = v80 | (v73 << 6);
      v84 = (*(v99 + 48) + 16 * v83);
      v86 = *v84;
      v85 = v84[1];
      v87 = *(*(v99 + 56) + 8 * v83);

      result = sub_100006B90(v87);
      *(j + ((v83 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v83;
      v88 = v104;
      v89 = (*(v104 + 48) + 16 * v83);
      *v89 = v86;
      v89[1] = v85;
      *(*(v88 + 56) + 8 * v83) = result;
      v90 = *(v88 + 16);
      v54 = __OFADD__(v90, 1);
      v91 = v90 + 1;
      if (v54)
      {
        goto LABEL_44;
      }
    }

    v81 = v73;
    while (1)
    {
      v73 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        break;
      }

      if (v73 >= v78)
      {
        v102(v100, v94);
        goto LABEL_40;
      }

      v82 = *(v74 + 8 * v73);
      ++v81;
      if (v82)
      {
        v80 = __clz(__rbit64(v82));
        v77 = (v82 - 1) & v82;
        goto LABEL_36;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_10000B24C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EB0(&qword_10005BD00, "^/");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B2BC(uint64_t a1)
{
  v2 = sub_100001EB0(&qword_10005BD00, "^/");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B38C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  *a4 = 0;
  *(a4 + 8) = 0;
  v10 = sub_10000A850();
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v11 = *v10;
  v12 = v10[1];

  v13 = sub_100002F84(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_100003218(*(a1 + 56) + 32 * v13, v45);
  sub_100007120(v45, v47);
  v16 = sub_10000A868();
  if (!*(a1 + 16) || (v17 = *v16, v18 = v16[1], , v19 = sub_100002F84(v17, v18), v21 = v20, , (v21 & 1) == 0) || (sub_100003218(*(a1 + 56) + 32 * v19, v45), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    sub_100003374(v47);
LABEL_12:
    *&v45[0] = 0;
    *(&v45[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    *&v45[0] = 0xD000000000000013;
    *(&v45[0] + 1) = 0x8000000100039180;
    v31 = Dictionary.description.getter();
    v33 = v32;

    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    v35 = v45[0];
    sub_1000032B8();
    swift_allocError();
    *v36 = v35;
    *(v36 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_10000330C(a2);
  }

  v22 = *(&v46[0] + 1);
  v43 = *&v46[0];
  v23 = sub_10000A85C();
  if (!*(a1 + 16) || (v44 = v22, v24 = *v23, v25 = v23[1], v42 = v23, , v26 = sub_100002F84(v24, v25), v28 = v27, , (v28 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_100003218(*(a1 + 56) + 32 * v26, v45);
  sub_100007120(v45, v46);
  v29 = a2[4];
  v30 = a2[5];
  sub_100003274(a2 + 1, v29);
  (*(v30 + 8))(v45, v46, v29, v30);
  if (v5)
  {

    swift_unknownObjectRelease();

LABEL_17:
    sub_100003374(v46);
    sub_100003374(v47);
    return sub_10000330C(a2);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    v39 = *v42;
    v38 = v42[1];
    sub_1000032B8();
    swift_allocError();
    *v40 = v39;
    *(v40 + 8) = v38;
    *(v40 + 16) = 1;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  *(a4 + 56) = v48;
  sub_100007C48(v47, a2, a3, v45);
  sub_100007130(v45, a4 + 16);
  *(a4 + 72) = v43;
  *(a4 + 80) = v44;
  *(a4 + 64) = a3;
  *a4 = sub_100008304(a1) & 1;
  v41 = sub_1000083C0(a1);

  sub_100003374(v46);
  sub_100003374(v47);
  result = sub_10000330C(a2);
  *(a4 + 8) = v41;
  return result;
}

unint64_t sub_10000B810()
{
  v1 = v0;
  v2 = sub_100001EB0(&qword_10005BD00, "^/");
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v39 - v6;
  v40 = 0;
  v41 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v40 = 0xD000000000000010;
  v41 = 0x80000001000391A0;
  v8 = v0[9];
  v9 = v0[10];
  v10._countAndFlagsBits = v8;
  v10._object = v9;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x6144747261745320;
  v11._object = 0xEB000000003D6574;
  String.append(_:)(v11);
  v12 = v0[8];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 getGracePeriodStartDate:v13];

  if (v14)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
  }

  else
  {
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  }

  sub_10000B24C(v5, v7);
  type metadata accessor for Date();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v7, 1, v15) == 1)
  {
    sub_10000B2BC(v7);
    v17 = 0xE300000000000000;
    v18 = 7104878;
  }

  else
  {
    v19 = Date.description.getter();
    v17 = v20;
    (*(v16 + 8))(v7, v15);
    v18 = v19;
  }

  v21 = v17;
  String.append(_:)(*&v18);

  v23 = v40;
  v22 = v41;
  v40 = 0;
  v41 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);
  v24._countAndFlagsBits = 60;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0xD000000000000011;
  v25._object = 0x8000000100033B90;
  String.append(_:)(v25);
  v26._object = 0x80000001000391C0;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  if (*v1)
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (*v1)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  v29 = v28;
  String.append(_:)(*&v27);

  v30._countAndFlagsBits = 32;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = v8;
  v31._object = v9;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 32;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  sub_100003274(v1 + 2, v1[5]);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v33._countAndFlagsBits = 0x73646E6F63657320;
  v33._object = 0xE90000000000003ALL;
  String.append(_:)(v33);
  v39[1] = v1[7];
  v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v34);

  v35._countAndFlagsBits = 0x3A64726F63657220;
  v35._object = 0xE800000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = v23;
  v36._object = v22;
  String.append(_:)(v36);

  v37._countAndFlagsBits = 62;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  return v40;
}

unint64_t sub_10000BC3C(uint64_t a1)
{
  result = sub_10000BC64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000BC64()
{
  result = qword_10005BD10;
  if (!qword_10005BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BD10);
  }

  return result;
}

__n128 sub_10000BCB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10000BCDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000BD24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000BD88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_10000BDD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_100003218(a1, v17);
  if (!swift_dynamicCast())
  {
    return sub_100003218(a1, a3);
  }

  v6._countAndFlagsBits = 36;
  v6._object = 0xE100000000000000;
  if (String.hasPrefix(_:)(v6))
  {
    sub_10000BF74(1uLL, v15, v16);

    v7 = static String._fromSubstring(_:)();
    v9 = v8;

    if (*(a2 + 16) && (v10 = sub_100002F84(v7, v9), (v11 & 1) != 0))
    {
      v12 = v10;

      sub_100003218(*(a2 + 56) + 32 * v12, v17);
      return sub_100007120(v17, a3);
    }

    else
    {
      sub_1000032B8();
      swift_allocError();
      *v14 = v7;
      *(v14 + 8) = v9;
      *(v14 + 16) = 2;
      return swift_willThrow();
    }
  }

  else
  {
    sub_100003218(a1, a3);
  }
}

unint64_t sub_10000BF74(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
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
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

id sub_10000C0F4(uint64_t a1, uint64_t a2)
{
  v125 = a2;
  v122 = a1;
  v112 = type metadata accessor for OSSignpostError();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001EB0(&qword_10005BD88, &qword_100033D10);
  __chkstk_darwin(v3 - 8);
  v119 = &v106 - v4;
  v123 = type metadata accessor for OSSignpostID();
  v5 = *(v123 - 8);
  v6 = __chkstk_darwin(v123);
  v118 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v106 - v9;
  __chkstk_darwin(v8);
  v12 = &v106 - v11;
  v13 = type metadata accessor for OSSignposter();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v117 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v106 - v17;
  v19 = sub_100003A10();
  v20 = v14;
  v21 = *(v14 + 16);
  v114 = v19;
  v124 = v13;
  v115 = v14 + 16;
  v113 = v21;
  (v21)(v18);
  static OSSignpostID.exclusive.getter();
  v22 = OSSignposter.logHandle.getter();
  v23 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, v23, v25, "ParsePlist", "", v24, 2u);
  }

  v26 = v123;
  (*(v5 + 16))(v10, v12, v123);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v27 = OSSignpostIntervalState.init(id:isOpen:)();
  v28 = v5 + 8;
  v29 = *(v5 + 8);
  v116 = v28;
  v29(v12, v26);
  v31 = v20 + 8;
  v30 = *(v20 + 8);
  v30(v18, v124);
  if (v125)
  {
    v32 = v125;
  }

  else
  {
    type metadata accessor for SwiftDataStore();
    v60 = type metadata accessor for URL();
    v61 = v119;
    (*(*(v60 - 8) + 56))(v119, 1, 1, v60);
    v62 = v120;
    v63 = sub_100013C58(v61);
    v120 = v62;
    if (v62)
    {

      goto LABEL_20;
    }

    v32 = v63;
  }

  v33 = v122;
  swift_unknownObjectRetain();
  v34 = sub_10000A808();
  if (!*(v33 + 16) || (v119 = v30, v35 = *v34, v36 = v34[1], , v37 = sub_100002F84(v35, v36), v39 = v38, , (v39 & 1) == 0) || (v122 = v32, sub_100003218(*(v33 + 56) + 32 * v37, v129), sub_100001EB0(&qword_10005BD90, &unk_100033D18), (swift_dynamicCast() & 1) == 0))
  {

    sub_1000032B8();
    swift_allocError();
    *v58 = xmmword_100033860;
    *(v58 + 16) = 4;
    swift_willThrow();
LABEL_17:
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v59 = v121;
LABEL_21:
    type metadata accessor for PlistParser();
    swift_deallocPartialClassInstance();
    return v59;
  }

  v40 = v128;
  v41 = sub_1000078E4();
  v42 = sub_10000A7C0();
  if (!*(v33 + 16) || (v108 = v40, v109 = v27, v43 = *v42, v44 = v42[1], , v45 = sub_100002F84(v43, v44), v47 = v46, , (v47 & 1) == 0) || (sub_100003218(*(v33 + 56) + 32 * v45, v129), sub_100001EB0(&qword_10005BC78, &qword_100033890), (swift_dynamicCast() & 1) == 0))
  {

    sub_1000032B8();
    swift_allocError();
    v66 = xmmword_100033D00;
LABEL_26:
    *v65 = v66;
    *(v65 + 16) = 4;
    swift_willThrow();
    goto LABEL_17;
  }

  nullsub_1();
  v49 = v48;
  v50 = sub_10000A7CC();
  if (!*(v33 + 16) || (v51 = *v50, v52 = v50[1], , v53 = sub_100002F84(v51, v52), v55 = v54, , (v55 & 1) == 0))
  {

LABEL_28:
    sub_1000032B8();
    swift_allocError();
    v66 = xmmword_100033CF0;
    goto LABEL_26;
  }

  sub_100003218(*(v33 + 56) + 32 * v53, v129);

  sub_100001EB0(&qword_10005BD98, &qword_100033D28);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_28;
  }

  v107 = v29;
  v56 = v128;
  v129[4] = &type metadata for ConstantsProvider;
  v129[5] = &off_100045738;
  v129[0] = v41;
  v129[1] = v49;
  v57 = v120;
  sub_1000078F0(v108, v129, v122);
  if (v57)
  {
    sub_10000330C(v129);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

LABEL_20:

    v59 = v121;
    goto LABEL_21;
  }

  v120 = 0;

  v67 = 0;
  v68 = &_swiftEmptyArrayStorage;
  v128 = &_swiftEmptyArrayStorage;
  v69 = v56 + 64;
  v70 = 1 << *(v56 + 32);
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & *(v56 + 64);
  v73 = (v70 + 63) >> 6;
  v108 = v56 + 64;
  v74 = v73;
  v75 = v118;
  if (v72)
  {
    while (1)
    {
      v106 = v68;
LABEL_38:
      v77 = __clz(__rbit64(v72)) | (v67 << 6);
      v78 = (*(v56 + 48) + 16 * v77);
      v80 = *v78;
      v79 = v78[1];
      v81 = *(*(v56 + 56) + 8 * v77);
      swift_bridgeObjectRetain_n();

      v82 = sub_10000CF2C(v80, v79);
      if ((v83 & 1) != 0 || (v84 = v82) == 0)
      {

        sub_1000032B8();
        swift_allocError();
        *v101 = v80;
        *(v101 + 8) = v79;
        *(v101 + 16) = 0;
        swift_willThrow();

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        sub_10000330C(v129);
        v59 = v121;
        goto LABEL_21;
      }

      v85 = objc_allocWithZone(Domain);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v127 = 0;
      v87 = [v85 initWithDomain:v84 dictionary:isa error:{&v127, v106}];

      if (!v87)
      {
        v105 = v127;

        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        sub_10000330C(v129);
        goto LABEL_20;
      }

      v88 = v127;
      v89 = v120;
      sub_10000EC40(v81, v129, v122);
      v120 = v89;
      if (v89)
      {
        break;
      }

      v90 = v87;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v72 &= v72 - 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v68 = v128;
      v69 = v108;
      v73 = v74;
      v75 = v118;
      if (!v72)
      {
        goto LABEL_34;
      }
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    sub_10000330C(v129);
    goto LABEL_20;
  }

  while (1)
  {
LABEL_34:
    v76 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      __break(1u);
    }

    if (v76 >= v73)
    {
      break;
    }

    v72 = *(v69 + 8 * v76);
    ++v67;
    if (v72)
    {
      v106 = v68;
      v67 = v76;
      goto LABEL_38;
    }
  }

  v91 = v68;
  v108 = v31;

  v113(v117, v114, v124);
  v92 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v93 = v75;
  v94 = static os_signpost_type_t.end.getter();
  v95 = OS_os_log.signpostsEnabled.getter();
  v96 = v122;
  if (v95)
  {

    v97 = v110;
    checkForErrorAndConsumeState(state:)();

    v98 = v111;
    v99 = v112;
    if ((*(v111 + 88))(v97, v112) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v100 = "[Error] Interval already ended";
    }

    else
    {
      (*(v98 + 8))(v97, v99);
      v100 = "";
    }

    v102 = swift_slowAlloc();
    *v102 = 0;
    v93 = v118;
    v103 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v92, v94, v103, "ParsePlist", v100, v102, 2u);
  }

  v107(v93, v123);
  (v119)(v117, v124);
  sub_10000330C(v129);
  v104 = v121;
  *&v121[OBJC_IVAR___PlistParser_domains] = v91;
  *&v104[OBJC_IVAR___PlistParser_dataStore] = v96;
  v126.receiver = v104;
  v126.super_class = PlistParser;
  v59 = objc_msgSendSuper2(&v126, "init");
  swift_unknownObjectRelease();
  return v59;
}

unint64_t type metadata accessor for PlistParser()
{
  result = qword_10005CD90;
  if (!qword_10005CD90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005CD90);
  }

  return result;
}

unint64_t sub_10000CF2C(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_10000972C(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id Domain.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

__n128 sub_10000D398(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000D3AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000D3F4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double variable initialization expression of Domain.policy@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10000D58C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003960();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "This method should only be called for testing purposes as it is inefficient", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = &v1[OBJC_IVAR___Domain_policy];
  swift_beginAccess();
  v11 = *(v10 + 3);
  if (v11)
  {
    v12 = *(v10 + 4);
    v13 = sub_100003274(v10, *(v10 + 3));
    v14 = *(v11 - 8);
    __chkstk_darwin(v13);
    v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);
    v17 = (*(v12 + 16))(v11, v12);
    v19 = v18;
    v21 = v20;
    (*(v14 + 8))(v16, v11);
    if ([v1 enabled])
    {
      if (v19)
      {
        sub_10000D878(v17, v19, v21);
        return v17;
      }

      return [v1 defaultAnswer];
    }

    v23 = v17;
  }

  else
  {
    if ([v1 enabled])
    {
      return [v1 defaultAnswer];
    }

    v21 = 0;
    v19 = 0;
    v23 = 0;
  }

  sub_10000D878(v23, v19, v21);
  return 1;
}

void sub_10000D878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

void *sub_10000D94C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003960();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "This method should only be called for testing purposes as it is inefficient", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = (v1 + OBJC_IVAR___Domain_policy);
  swift_beginAccess();
  v11 = v10[3];
  if (v11)
  {
    v12 = v10[4];
    v13 = sub_100003274(v10, v10[3]);
    v14 = *(v11 - 8);
    __chkstk_darwin(v13);
    v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);
    v17 = (*(v12 + 16))(v11, v12);
    v19 = v18;
    v21 = v20;
    (*(v14 + 8))(v16, v11);
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v21 = 0;
  }

  v22 = sub_10000DBEC(v19);
  sub_10000D878(v17, v19, v21);
  return v22;
}

void *sub_10000DBEC(uint64_t a1)
{
  if (![v1 enabled])
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (!a1)
  {
    return 0;
  }

  sub_100001EB0(&qword_10005BE58, &unk_100033DD0);
  result = static _DictionaryStorage.copy(original:)();
  v4 = result;
  v5 = 0;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v24 = result + 8;
  v25 = result;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v14 = v11 | (v5 << 6);
      v15 = a1;
      v16 = (*(a1 + 48) + 16 * v14);
      v17 = v16[1];
      v26 = *v16;
      v18 = *(*(a1 + 56) + 8 * v14);
      v19 = objc_allocWithZone(NSNumber);

      result = [v19 initWithUnsignedLongLong:v18];
      v4 = v25;
      *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v20 = (v25[6] + 16 * v14);
      *v20 = v26;
      v20[1] = v17;
      *(v25[7] + 8 * v14) = result;
      v21 = v25[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v25[2] = v23;
      a1 = v15;
      if (!v9)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
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
        return v4;
      }

      v13 = *(v6 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10000DDC8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003960();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "This method should only be called for testing purposes as it is inefficient", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = &v1[OBJC_IVAR___Domain_policy];
  swift_beginAccess();
  v11 = *(v10 + 3);
  if (v11)
  {
    v12 = *(v10 + 4);
    v13 = sub_100003274(v10, *(v10 + 3));
    v14 = *(v11 - 8);
    __chkstk_darwin(v13);
    v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);
    (*(v12 + 16))(v11, v12);
    v18 = v17;
    (*(v14 + 8))(v16, v11);
    v19 = [v1 contextKeys];
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = sub_100003F80(v20);

    v22 = sub_100004898(v18, v21);

    if (v22)
    {
      v23 = sub_10000E0D4(v22);

      return v23;
    }
  }

  return 0;
}

unint64_t sub_10000E0D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100001EB0(&qword_10005BCE0, &qword_1000339B0);
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
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        sub_100006898(*(a1 + 56) + 40 * v14, &v29);
        v27 = v17;
        v28 = v16;

        swift_dynamicCast();
        sub_100007120(&v23, v25);
        sub_100007120(v25, v26);
        sub_100007120(v26, &v24);
        result = sub_100002F84(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100003374(v11);
          result = sub_100007120(&v24, v11);
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
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          result = sub_100007120(&v24, (v2[7] + 32 * result));
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
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

uint64_t sub_10000E35C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 domain];
  if (os_eligibility_get_domain_notification_name())
  {
    return String.init(cString:)();
  }

  v7 = sub_100003960();
  (*(v3 + 16))(v5, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Could not get domain change notification name. Falling back to default", v10, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return 0xD000000000000026;
}

Class sub_10000E500(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

uint64_t sub_10000E588()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___Domain_policy];
  swift_beginAccess();
  v3 = *(v2 + 3);
  if (v3)
  {
    v4 = *(v2 + 4);
    v5 = sub_100003274(v2, *(v2 + 3));
    v6 = *(v3 - 8);
    __chkstk_darwin(v5);
    v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = (*(v4 + 16))(v3, v4);
    v11 = v10;
    v13 = v12;
    (*(v6 + 8))(v8, v3);
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v13 = 0;
  }

  sub_100001EB0(&qword_10005BDE8, &qword_100033D98);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000017;
  *(inited + 16) = xmmword_100033D80;
  *(inited + 40) = 0x80000001000392B0;
  if ([v1 enabled])
  {
    v15 = v9;
    if (!v11)
    {
      v15 = [v1 defaultAnswer];
    }
  }

  else
  {
    v15 = 1;
  }

  *(inited + 48) = v15;
  *(inited + 72) = &type metadata for UInt64;
  *(inited + 80) = 0xD00000000000001ELL;
  *(inited + 88) = 0x80000001000392D0;
  *(inited + 96) = 1;
  *(inited + 120) = &type metadata for UInt64;
  *(inited + 128) = 0x737574617473;
  *(inited + 136) = 0xE600000000000000;
  v16 = sub_10000DBEC(v11);
  v17 = v16;
  if (v16)
  {
    v16 = sub_100001EB0(&qword_10005BDF8, &qword_100033DA8);
  }

  else
  {
    *(inited + 152) = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v17;
  *(inited + 168) = v16;
  *(inited + 176) = 0x747865746E6F63;
  *(inited + 184) = 0xE700000000000000;
  if (!v11)
  {
    goto LABEL_15;
  }

  v18 = [v1 contextKeys];
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = sub_100003F80(v19);

  v21 = sub_100004898(v13, v20);

  if (!v21)
  {
    sub_10000D878(v9, v11, v13);
LABEL_15:
    *(inited + 192) = 0u;
    *(inited + 208) = 0u;
    goto LABEL_16;
  }

  v22 = sub_10000E0D4(v21);

  sub_10000D878(v9, v11, v13);
  *(inited + 216) = sub_100001EB0(&qword_10005BC78, &qword_100033890);
  *(inited + 192) = v22;
LABEL_16:
  v23 = sub_10000F93C(inited);
  swift_setDeallocating();
  sub_100001EB0(&qword_10005BDF0, &qword_100033DA0);
  swift_arrayDestroy();
  v24 = sub_10000E91C(v23);

  return v24;
}

uint64_t sub_10000E91C(uint64_t a1)
{
  v1 = &_swiftEmptyDictionarySingleton;
  v38 = &_swiftEmptyDictionarySingleton;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
  }

  while (!v5);
  v39 = v1;
  v8 = v9;
  while (1)
  {
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_10000A758(*(a1 + 56) + 32 * v11, v37, &qword_10005BE40, &qword_100033DB8);
    *&v36 = v14;
    *(&v36 + 1) = v13;
    v33 = v36;
    v34 = v37[0];
    v35 = v37[1];
    sub_10000A758(&v34, &v27, &qword_10005BE40, &qword_100033DB8);
    if (!v28)
    {

      sub_100006A80(&v33, &qword_10005BE48, &qword_100033DC0);
      result = sub_100006A80(&v27, &qword_10005BE40, &qword_100033DB8);
      v1 = v39;
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    sub_100007120(&v27, v32);
    v30 = v33;
    v31[0] = v34;
    v31[1] = v35;
    sub_100007120(v32, v29);
    v1 = v39;
    v15 = v39[2];
    if (v39[3] <= v15)
    {

      sub_10000F684(v15 + 1, 1);
      v1 = v38;
    }

    else
    {
    }

    v16 = v30;
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v17 = v1 + 64;
    v18 = -1 << v1[32];
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*&v1[8 * (v19 >> 6) + 64]) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*&v1[8 * (v19 >> 6) + 64])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *&v17[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
    *(*(v1 + 6) + 16 * v21) = v16;
    sub_100007120(v29, (*(v1 + 7) + 32 * v21));
    ++*(v1 + 2);
    result = sub_100006A80(v31, &qword_10005BE40, &qword_100033DB8);
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_11:
    v39 = v1;
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *&v17[8 * v20];
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_26;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_10000EC40(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = sub_10000A7D8();
  if (*(a1 + 16) && (v11 = *v10, v12 = v10[1], , v13 = sub_100002F84(v11, v12), v15 = v14, , (v15 & 1) != 0))
  {
    sub_100003218(*(a1 + 56) + 32 * v13, v19);
    sub_100007120(v19, v21);
    sub_100007C48(v21, a2, a3, v19);
    result = sub_100003374(v21);
    if (v5)
    {
      return result;
    }

    v17 = OBJC_IVAR___Domain_policy;
    swift_beginAccess();
    sub_10000FA6C(v19, v6 + v17);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    v18 = OBJC_IVAR___Domain_policy;
    swift_beginAccess();
    sub_10000FA6C(v19, v6 + v18);
  }

  return swift_endAccess();
}

id sub_10000ED7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = &v3[OBJC_IVAR___Domain_policy];
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  *&v3[OBJC_IVAR___Domain_domain] = a1;
  v6 = sub_10000A7FC();
  if (*(a2 + 16) && (v7 = *v6, v8 = v6[1], , v9 = sub_100002F84(v7, v8), v11 = v10, , (v11 & 1) != 0) && (sub_100003218(*(a2 + 56) + 32 * v9, v30), sub_100001EB0(&qword_10005BB50, "|*"), (swift_dynamicCast() & 1) != 0))
  {
    v12 = v29;
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  *&v3[OBJC_IVAR___Domain_contextKeys] = v12;
  v13 = sub_10000A7F0();
  if (*(a2 + 16) && (v14 = *v13, v15 = v13[1], , v16 = sub_100002F84(v14, v15), v18 = v17, , (v18 & 1) != 0) && (sub_100003218(*(a2 + 56) + 32 * v16, v30), (swift_dynamicCast() & 1) != 0))
  {
    v19 = v29;
  }

  else
  {
    v19 = 4;
  }

  *&v3[OBJC_IVAR___Domain_defaultAnswer] = v19;
  v20 = sub_10000A7E4();
  if (!*(a2 + 16) || (v21 = *v20, v22 = v20[1], , v23 = sub_100002F84(v21, v22), v25 = v24, , (v25 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_100003218(*(a2 + 56) + 32 * v23, v30);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v26 = 1;
    goto LABEL_17;
  }

  v26 = v29;
LABEL_17:
  v3[OBJC_IVAR___Domain_enabled] = v26;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  swift_beginAccess();
  sub_10000FA6C(v30, v5);
  swift_endAccess();
  v28.receiver = v3;
  v28.super_class = Domain;
  return objc_msgSendSuper2(&v28, "init");
}

id sub_10000F078(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t Domain.description.getter()
{
  v1 = v0;
  v49 = 7104878;
  v2 = &v0[OBJC_IVAR___Domain_policy];
  swift_beginAccess();
  v3 = *(v2 + 3);
  if (v3)
  {
    v4 = sub_100003274(v2, *(v2 + 3));
    v5 = *(v3 - 8);
    __chkstk_darwin(v4);
    v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    (*(v5 + 8))(v7, v3);
  }

  else
  {
    v9 = 0xE300000000000000;
    v48 = 7104878;
  }

  v10 = [v1 context];
  if (v10)
  {
    v11 = v10;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = Dictionary.description.getter();
    v13 = v12;

    v14 = *(v2 + 3);
    if (v14)
    {
LABEL_6:
      v15 = *(v2 + 4);
      v16 = sub_100003274(v2, v14);
      v17 = *(v14 - 8);
      __chkstk_darwin(v16);
      v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v19);
      v20 = (*(v15 + 16))(v14, v15);
      v22 = v21;
      v24 = v23;
      (*(v17 + 8))(v19, v14);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    v47 = 7104878;
    v14 = *(v2 + 3);
    if (v14)
    {
      goto LABEL_6;
    }
  }

  v20 = 0;
  v22 = 0;
  v24 = 0;
LABEL_9:
  if (sub_10000DBEC(v22))
  {
    sub_10000FAF0(0, &qword_10005BE10, NSNumber_ptr);
    v49 = Dictionary.description.getter();
    v26 = v25;
  }

  else
  {
    v26 = 0xE300000000000000;
  }

  if ([v1 enabled])
  {
    if (v22)
    {
      sub_10000D878(v20, v22, v24);
    }

    else
    {
      v20 = [v1 defaultAnswer];
    }
  }

  else
  {
    sub_10000D878(v20, v22, v24);
    v20 = 1;
  }

  if (sub_10001F30C(v20))
  {
    v27 = String.init(cString:)();
    v29 = v28;
  }

  else
  {
    v29 = 0xE700000000000000;
    v27 = 0x6E776F6E6B6E55;
  }

  sub_10001BE98([v1 domain]);
  v30 = String.init(cString:)();
  v32 = v31;
  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(50);

  v51 = 60;
  v52 = 0xE100000000000000;
  v33._countAndFlagsBits = v30;
  v33._object = v32;
  String.append(_:)(v33);

  v34._countAndFlagsBits = 40;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  v50 = [v1 domain];
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v35);

  v36._countAndFlagsBits = 0x6577736E61203A29;
  v36._object = 0xEA00000000003D72;
  String.append(_:)(v36);
  v37._countAndFlagsBits = v27;
  v37._object = v29;
  String.append(_:)(v37);

  v38._countAndFlagsBits = 0x3D73757461747320;
  v38._object = 0xE800000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = v49;
  v39._object = v26;
  String.append(_:)(v39);

  v40._countAndFlagsBits = 0x747865746E6F6320;
  v40._object = 0xE90000000000003DLL;
  String.append(_:)(v40);
  v41._countAndFlagsBits = v47;
  v41._object = v13;
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0x3D7963696C6F7020;
  v42._object = 0xE800000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = v48;
  v43._object = v9;
  String.append(_:)(v43);

  v44._countAndFlagsBits = 62;
  v44._object = 0xE100000000000000;
  String.append(_:)(v44);
  return v51;
}

uint64_t sub_10000F684(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001EB0(&qword_10005BCE0, &qword_1000339B0);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100007120(v24, v34);
      }

      else
      {
        sub_100003218(v24, v34);
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100007120(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_10000F93C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001EB0(&qword_10005BE50, &qword_100033DC8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A758(v4, &v15, &qword_10005BDF0, &qword_100033DA0);
      v5 = v15;
      v6 = v16;
      result = sub_100002F84(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_10000FA6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EB0(&qword_10005BDD0, &qword_100033D90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FAF0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_10000FB38(char a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
LABEL_28:
    sub_1000030B4(&_swiftEmptyArrayStorage);
    goto LABEL_29;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = (a3 + 32);
  v8 = 2;
  do
  {
    v9 = v6;
    v10 = v7[3];
    v11 = v7[4];
    sub_100003274(v7, v10);
    v12 = (*(v11 + 16))(v10, v11);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    if (v12 <= 2)
    {
      if (v12 == 1)
      {
        v18 = v5 == 3;
        if (v5 < 3)
        {
          v5 = 3;
          goto LABEL_4;
        }
      }

      else if (v12 == 2)
      {
        v18 = v5 == 2;
        if (v5 < 2)
        {
          v5 = 2;
          goto LABEL_4;
        }
      }

      else
      {
LABEL_16:
        v18 = v5 == 1;
        if (v5 < 1)
        {
          v5 = 1;
          goto LABEL_4;
        }
      }

LABEL_22:
      if (!v18 || v8 == 4)
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }

    if (v12 == 3)
    {
      v18 = v5 == 4;
      if (v5 < 4)
      {
        v5 = 4;
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    if (v12 != 4)
    {
      goto LABEL_16;
    }

    if (v5 < 5)
    {
      v5 = 5;
LABEL_4:

      v4 = v15;
      v8 = v13;
      goto LABEL_5;
    }

    if (v8 == 4)
    {
      v5 = 5;
      goto LABEL_5;
    }

LABEL_25:
    if (v4)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v4;
      sub_10001047C(v15, sub_100010464, 0, isUniquelyReferenced_nonNull_native, &v23, a1 & 1, a2, a3);

      v4 = v23;
    }

LABEL_5:
    v6 = sub_100004898(v9, v17);

    v7 += 5;
    --v3;
  }

  while (v3);
  if (!v4)
  {
    goto LABEL_28;
  }

LABEL_29:

  nullsub_1();
}

uint64_t sub_10000FDA8@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t *a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_100010778(a2, a3, a4);
  if (!v4)
  {
    *a1 = result & 1;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
  }

  return result;
}

Swift::Int sub_10000FDE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001EB0(&qword_10005BB28, &unk_1000335D0);
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

void *sub_100010088()
{
  v1 = v0;
  sub_100001EB0(&qword_10005BB28, &unk_1000335D0);
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

  return result;
}

void *sub_1000101F0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001EB0(&qword_10005BE70, &qword_100033E98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001EB0(&qword_10005BE78, &qword_100033EA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100010338(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100010358(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100010358(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EB0(&qword_10005BB40, &unk_1000342A0);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100010464@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_10001047C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5, char a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 + 64;
  v11 = -1 << *(a1 + 32);
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a1 + 64);
  v14 = (63 - v11) >> 6;
  v50 = a6 & 1;

  v15 = 0;
  v48 = v14;
  v49 = v10;
  v43 = a5;
  while (v13)
  {
    v20 = v15;
LABEL_15:
    v22 = __clz(__rbit64(v13)) | (v20 << 6);
    v23 = (*(a1 + 48) + 16 * v22);
    v24 = v23[1];
    v25 = *(*(a1 + 56) + 8 * v22);
    v56 = *v23;
    v57 = v24;
    v58 = v25;

    a2(&v53, &v56);

    v26 = v53;
    v27 = v54;
    v59 = v55;
    v28 = *a5;
    v30 = sub_100002F84(v53, v54);
    v31 = *(v28 + 16);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_26;
    }

    v34 = v29;
    if (*(v28 + 24) >= v33)
    {
      if ((a4 & 1) == 0)
      {
        sub_100010088();
      }
    }

    else
    {
      sub_10000FDE8(v33, a4 & 1);
      v35 = sub_100002F84(v26, v27);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_28;
      }

      v30 = v35;
    }

    v13 &= v13 - 1;
    v37 = *a5;
    if (v34)
    {
      v16 = *(v37[7] + 8 * v30);
      v47 = v16;
      LOBYTE(v56) = v50;
      v57 = a7;
      v58 = a8;
      sub_10000A6B0();
      v46 = sub_1000075D8(v16);
      LOBYTE(v56) = v50;
      v57 = a7;
      v58 = a8;
      a5 = v43;
      v17 = v59;
      v18 = sub_1000075D8(v59);

      v19 = v47;
      if (v18 >= v46)
      {
        v19 = v17;
      }

      *(v37[7] + 8 * v30) = v19;
    }

    else
    {
      v37[(v30 >> 6) + 8] |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v26;
      v38[1] = v27;
      *(v37[7] + 8 * v30) = v59;
      v39 = v37[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_27;
      }

      v37[2] = v41;
    }

    a4 = 1;
    v15 = v20;
    v14 = v48;
    v10 = v49;
  }

  v21 = v15;
  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v14)
    {
      sub_100006A78(a1);
    }

    v13 = *(v10 + 8 * v20);
    ++v21;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}