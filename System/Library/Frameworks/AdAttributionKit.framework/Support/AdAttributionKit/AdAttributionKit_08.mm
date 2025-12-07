unint64_t sub_1000C04E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for URLQueryItem();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
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
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1000C063C()
{
  result = qword_10023C638;
  if (!qword_10023C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C638);
  }

  return result;
}

Swift::Int sub_1000C0690()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 18400;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1000C06E0()
{
  if (*v0)
  {
    v1 = 18400;
  }

  else
  {
    v1 = 0;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_1000C0718(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 18400;
  }

  else
  {
    v3 = 0;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void *sub_1000C0764@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 18400)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_1000C0788(uint64_t *a1@<X8>)
{
  v2 = 18400;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

void sub_1000C07B0(_BYTE *result, uint64_t a2)
{
  if ((*result & 1) == 0)
  {
    sub_1000C09DC(a2);
  }
}

unint64_t sub_1000C07E8(void *a1)
{
  a1[1] = sub_1000C0820();
  a1[2] = sub_1000C0874();
  result = sub_1000C08C8();
  a1[3] = result;
  return result;
}

unint64_t sub_1000C0820()
{
  result = qword_10023C680;
  if (!qword_10023C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C680);
  }

  return result;
}

unint64_t sub_1000C0874()
{
  result = qword_10023C688;
  if (!qword_10023C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C688);
  }

  return result;
}

unint64_t sub_1000C08C8()
{
  result = qword_10023C690;
  if (!qword_10023C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C690);
  }

  return result;
}

unint64_t sub_1000C0920()
{
  result = qword_10023C698;
  if (!qword_10023C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C698);
  }

  return result;
}

unint64_t sub_1000C0978()
{
  result = qword_10023C6A0;
  if (!qword_10023C6A0)
  {
    sub_10000CCC0(&qword_10023C6A8, &qword_1001BC6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C6A0);
  }

  return result;
}

void sub_1000C09DC(uint64_t a1)
{
  _StringGuts.grow(_:)(101);
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x80000001001CB510;
  String.append(_:)(v2);
  v3 = [type metadata accessor for ConversionTagEntity() databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 665632;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  v9._object = 0x80000001001CA000;
  v9._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x52454745544E4920;
  v10._object = 0xEA00000000000A2CLL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x69737265766E6F63;
  v11._object = 0xEE006761745F6E6FLL;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x52454745544E4920;
  v12._object = 0xEA00000000000A2CLL;
  String.append(_:)(v12);
  v13._object = 0x80000001001CA620;
  v13._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000011;
  v14._object = 0x80000001001CB530;
  String.append(_:)(v14);
  v15._object = 0x80000001001CA000;
  v15._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000018;
  v16._object = 0x80000001001CB550;
  String.append(_:)(v16);
  v17 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v17);
}

uint64_t sub_1000C0C24(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  sub_10000DAF8(a4, a5, a6);
  sub_1000C1D18(a1, a4, a7);
  v13 = a8(0);
  result = (*(*(v13 - 8) + 56))(a4, 0, 1, v13);
  *a3 = 1;
  return result;
}

void sub_1000C0CD0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v11 = [v2 connection];
  v12 = *(v5 + 16);
  v12(v10, a1, v4);
  v13 = String._bridgeToObjectiveC()();
  v12(v8, v10, v4);
  v14 = v21;
  v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v16 = [objc_opt_self() predicateWithProperty:v13 equalToValue:v15];
  swift_unknownObjectRelease();

  (*(v5 + 8))(v10, v4);
  v17 = sub_100085730(v11, v16, _swiftEmptyArrayStorage, 0, 0);
  v18 = type metadata accessor for ImpressionModel(0);
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  v23 = v14;
  v19 = v24;
  sub_10003505C(sub_1000C1D80, v22, v17);

  if (v19)
  {
    sub_10000DAF8(v14, &qword_10023A7C8, &qword_1001C17F0);
  }
}

uint64_t sub_1000C0F60(uint64_t a1, char a2)
{
  sub_10000CDE0(&qword_10023CF60, &unk_1001B5870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v7 = String._bridgeToObjectiveC()();
  v21[0] = a1;
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = objc_opt_self();
  v10 = [v9 predicateWithProperty:v7 equalToValue:v8];
  swift_unknownObjectRelease();

  *(inited + 32) = v10;
  if (a2)
  {
    v11 = 0xEA00000000006E6FLL;
  }

  else
  {
    v11 = 0xEB00000000746E65;
  }

  v12 = String._bridgeToObjectiveC()();
  v21[1] = v11;

  v13 = [v9 predicateWithProperty:v12 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v13;
  v14 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023A818, &unk_1001BC7A0);
  swift_arrayDestroy();
  v15 = [v2 connection];
  v16 = v14;
  v17 = sub_100085748(v15, v14, _swiftEmptyArrayStorage, 0, 0);
  v21[0] = _swiftEmptyArrayStorage;
  v20[2] = v21;
  sub_10003505C(sub_1000C1D10, v20, v17);

  v18 = v21[0];
  if (v3)
  {
  }

  return v18;
}

void *sub_1000C1204(void *a1)
{
  v3 = [v1 connection];
  v4 = String._bridgeToObjectiveC()();
  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = [objc_opt_self() predicateWithProperty:v4 equalToValue:v5];
  swift_unknownObjectRelease();

  v7 = sub_100085748(v3, v6, _swiftEmptyArrayStorage, 0, 0);
  v10[2] = &v11;
  v11 = &_swiftEmptySetSingleton;
  sub_10003505C(sub_1000C1CCC, v10, v7);

  v8 = v11;
  if (v2)
  {
  }

  return v8;
}

void sub_1000C1358(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_10000CDE0(&qword_10023CF60, &unk_1001B5870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v8 = String._bridgeToObjectiveC()();
  v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v10 = objc_opt_self();
  v11 = [v10 predicateWithProperty:v8 equalToValue:v9];
  swift_unknownObjectRelease();

  *(inited + 32) = v11;
  v12 = String._bridgeToObjectiveC()();
  v23 = a2;
  v24 = a3;

  v13 = [v10 predicateWithProperty:v12 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v13;
  v14 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023A818, &unk_1001BC7A0);
  swift_arrayDestroy();
  v15 = [v20 connection];
  v16 = v14;
  v17 = sub_100085748(v15, v14, _swiftEmptyArrayStorage, 0, 0);
  v18 = type metadata accessor for ImpressionModel(0);
  (*(*(v18 - 8) + 56))(a4, 1, 1, v18);
  v22 = a4;
  v19 = v25;
  sub_10003505C(sub_1000C1C78, v21, v17);

  if (v19)
  {
    sub_10000DAF8(a4, &qword_10023A7C8, &qword_1001C17F0);
  }
}

__n128 sub_1000C1604@<Q0>(uint64_t a4@<X8>)
{
  sub_10000CDE0(&qword_10023C6D8, &qword_1001BC780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v6 = String._bridgeToObjectiveC()();
  v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v8 = objc_opt_self();
  v9 = [v8 predicateWithProperty:v6 equalToValue:v7];
  swift_unknownObjectRelease();

  *(inited + 32) = v9;
  v10 = String._bridgeToObjectiveC()();

  v11 = [v8 predicateWithProperty:v10 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v11;
  v12 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023C6E0, &qword_1001BC788);
  swift_arrayDestroy();
  v13 = [v4 connection];
  v14 = v12;
  v15 = sub_100086C40(v13, v12, _swiftEmptyArrayStorage, 0, 0);
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = &v24;
  v16 = v29;
  sub_1000368E4(sub_1000C1BBC, v20, v15);

  if (v16)
  {
    v22[2] = v26;
    v22[3] = v27;
    v23 = v28;
    v22[0] = v24;
    v22[1] = v25;
    sub_10000DAF8(v22, &qword_10023C6E8, &unk_1001BC790);
  }

  else
  {
    v18 = v27;
    *(a4 + 32) = v26;
    *(a4 + 48) = v18;
    *(a4 + 64) = v28;
    result = v25;
    *a4 = v24;
    *(a4 + 16) = result;
  }

  return result;
}

BOOL sub_1000C18C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v19 - v9;
  v11 = [v2 connection];
  v12 = *(v5 + 16);
  v12(v10, a1, v4);
  v13 = String._bridgeToObjectiveC()();
  v12(v8, v10, v4);
  v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v15 = [objc_opt_self() predicateWithProperty:v13 equalToValue:v14];
  swift_unknownObjectRelease();

  (*(v5 + 8))(v10, v4);
  v16 = sub_100085748(v11, v15, _swiftEmptyArrayStorage, 0, 0);
  v17 = [v16 countOfEntities];

  return v17 > 0;
}

id sub_1000C1B64(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ImpressionDatabaseSession();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000C1BBC(__int128 *a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(v3 + 16);
  v6 = a1[3];
  v18 = a1[2];
  v19 = v6;
  v20 = *(a1 + 8);
  v7 = a1[1];
  v16 = *a1;
  v17 = v7;
  v9 = *(v5 + 32);
  v8 = *(v5 + 48);
  v10 = *(v5 + 16);
  v22 = *(v5 + 64);
  v21[2] = v9;
  v21[3] = v8;
  v21[1] = v10;
  v21[0] = *v5;
  sub_10000DAF8(v21, &qword_10023C6E8, &unk_1001BC790);
  *v5 = v16;
  v12 = v18;
  v11 = v19;
  v13 = v17;
  *(v5 + 64) = v20;
  *(v5 + 32) = v12;
  *(v5 + 48) = v11;
  *(v5 + 16) = v13;
  *a3 = 1;
  return sub_100072034(&v16, v15);
}

uint64_t sub_1000C1D18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C1DB0()
{
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v1 = qword_10023FC50;
  v0[5] = &type metadata for AMSDogBag;
  v0[6] = &off_100222F48;
  sub_1000C2030((v0 + 2), (v0 + 7));
  v0[12] = sub_10016E7D8(0x74735F74756F6E73, 0xEB0000000065726FLL, v1, (v0 + 7), 0);
  sub_1000C208C((v0 + 2));
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1000C1ED4;

  return sub_10016830C();
}

uint64_t sub_1000C1ED4()
{

  return _swift_task_switch(sub_1000C1FD0, 0, 0);
}

uint64_t sub_1000C1FD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C20E0(uint64_t a1, uint64_t a2, uint64_t a3)
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

BOOL sub_1000C21D8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1000C2280(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  if (v3 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v3 & 1);
  }

  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + v7);
      if (v9 == 2)
      {
        if (v3 == 2)
        {
          return 1;
        }
      }

      else if (v3 != 2 && ((v9 ^ v3) & 1) == 0)
      {
        return 1;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return 0;
}

uint64_t sub_1000C2388()
{
  v1[97] = v0;
  v2 = type metadata accessor for Logger();
  v1[98] = v2;
  v1[99] = *(v2 - 8);
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v1[103] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[104] = v3;
  v1[105] = *(v3 - 8);
  v1[106] = swift_task_alloc();

  return _swift_task_switch(sub_1000C24F4, 0, 0);
}

uint64_t sub_1000C24F4()
{
  v1 = *(v0 + 776);
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v0 + 840);
  v6 = *(v0 + 832);
  v7 = *(v0 + 824);
  URL.init(string:)();
  if ((*(v5 + 48))(v7, 1, v6) == 1)
  {
    sub_10000DAF8(*(v0 + 824), &qword_10023C230, &qword_1001B4FB0);
LABEL_6:
    v8 = *(v0 + 800);
    v9 = *(v0 + 792);
    v10 = *(v0 + 784);
    v11 = Logger.postback.unsafeMutableAddressor();
    (*(v9 + 16))(v8, v11, v10);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Received invalid postback URL", v14, 2u);
    }

    v15 = *(v0 + 800);
    v16 = *(v0 + 792);
    v17 = *(v0 + 784);

    (*(v16 + 8))(v15, v17);
    sub_1000C33F0();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }

  v19 = *(v0 + 776);
  (*(*(v0 + 840) + 32))(*(v0 + 848), *(v0 + 824), *(v0 + 832));
  memcpy((v0 + 16), v19, 0x121uLL);
  sub_1000B3B24(v0 + 16, v0 + 312);
  sub_1000C4614(v0 + 16, v0 + 608);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v0 + 856) = JSONEncoder.init()();
  v20 = *(v0 + 624);
  *(v0 + 664) = *(v0 + 608);
  *(v0 + 680) = v20;
  *(v0 + 696) = *(v0 + 640);
  *(v0 + 712) = *(v0 + 656);
  sub_1000C4704();
  *(v0 + 864) = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 872) = v21;
  sub_1000C4758(v0 + 608);
  v24 = sub_1000BB054(*(v0 + 208));
  if (v24 != 2 && (v24 & 1) == 0)
  {
    v30 = *(*(v0 + 776) + 392);
    *(v0 + 928) = 0;
    v33 = *(v30 + 24) + **(v30 + 24);
    v31 = swift_task_alloc();
    *(v0 + 936) = v31;
    *v31 = v0;
    v31[1] = sub_1000C2D14;

    __asm { BRAA            X8, X16 }
  }

  v25 = *(v0 + 776);
  v26 = *(v25 + 384);
  *(v0 + 880) = v26;
  v27 = *(v25 + 392);
  *(v0 + 888) = v27;
  v32 = (*(v27 + 8) + **(v27 + 8));
  v28 = swift_task_alloc();
  *(v0 + 896) = v28;
  *v28 = v0;
  v28[1] = sub_1000C2A20;
  v29 = *(v0 + 848);

  return v32(v29, v26, v27);
}

uint64_t sub_1000C2A20(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 904) = v2;

  if (v2)
  {
    v7 = sub_1000C3230;
  }

  else
  {
    *(v6 + 912) = a2;
    *(v6 + 920) = a1;
    v7 = sub_1000C2B58;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_1000C2B58()
{
  v1 = v0[115];
  v2 = v0[114];
  sub_10000CDE0(&qword_10023C708, &qword_1001BC850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B93B0;
  *(inited + 32) = 4;
  v4 = inited + 32;
  *(inited + 40) = v1;
  *(inited + 48) = v2;
  v5 = sub_1000C4788(inited);
  swift_setDeallocating();
  sub_10000DAF8(v4, &qword_10023C710, &qword_1001BC858);
  v6 = v0[111];
  v0[116] = v5;
  v8 = *(v6 + 24) + **(v6 + 24);
  v7 = swift_task_alloc();
  v0[117] = v7;
  *v7 = v0;
  v7[1] = sub_1000C2D14;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1000C2D14(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(v7 + 944) = a3;
  *(v7 + 952) = v3;

  if (v3)
  {
    v8 = sub_1000C3310;
  }

  else
  {
    sub_10001BABC(a1, a2);
    v8 = sub_1000C2E68;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000C2E68()
{
  v1 = v0[118];
  v2 = v0[99];
  v3 = sub_10002826C(&off_100213238);
  LOBYTE(v1) = sub_1000C21D8([v1 statusCode], v3);

  v4 = Logger.postback.unsafeMutableAddressor();
  v5 = *(v2 + 16);
  v6 = v0[118];
  v7 = v0[98];
  if (v1)
  {
    v5(v0[101], v4, v7);
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[118];
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = [v11 statusCode];

      _os_log_impl(&_mh_execute_header, v9, v10, "Postback transmission received error status from server: %ld", v12, 0xCu);

      v13 = v0[118];
    }

    else
    {

      v13 = v0[118];
      v9 = v13;
    }

    v22 = v0[109];
    v23 = v0[108];
    v24 = v0[105];
    v39 = v0[104];
    v40 = v0[106];
    v25 = v0[101];
    v26 = v0[99];
    v27 = v0[98];

    (*(v26 + 8))(v25, v27);
    sub_1000C33F0();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();
    sub_10001BABC(v23, v22);

    (*(v24 + 8))(v40, v39);

    v29 = v0[1];
  }

  else
  {
    v5(v0[102], v4, v7);
    v14 = v6;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[118];
    v19 = v0[109];
    v20 = v0[108];
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = [v18 statusCode];

      _os_log_impl(&_mh_execute_header, v15, v16, "Postback transmission has completed with status code: %ld", v21, 0xCu);

      sub_10001BABC(v20, v19);
    }

    else
    {
      sub_10001BABC(v0[108], v0[109]);
    }

    v30 = v15;
    v31 = v0[118];
    v32 = v0[106];
    v33 = v0[105];
    v34 = v0[104];
    v35 = v0[102];
    v36 = v0[99];
    v37 = v0[98];

    (*(v36 + 8))(v35, v37);
    (*(v33 + 8))(v32, v34);

    v29 = v0[1];
  }

  return v29();
}

uint64_t sub_1000C3230()
{
  v1 = v0[106];
  v2 = v0[105];
  v3 = v0[104];
  sub_10001BABC(v0[108], v0[109]);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000C3310()
{
  v1 = v0[106];
  v2 = v0[105];
  v3 = v0[104];
  sub_10001BABC(v0[108], v0[109]);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000C33F0()
{
  result = qword_10023C6F8;
  if (!qword_10023C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C6F8);
  }

  return result;
}

uint64_t sub_1000C3444(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023C750, &qword_1001BCA98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_1000C4C70();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + 16);
    v10[13] = 1;
    sub_1000B3B5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[11] = *(v3 + 33);
    v10[10] = 3;
    sub_100070F24();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10[9] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_1000C3660()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C3754(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000C3834(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C3924@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C4DDC(*a1);
  *a2 = result;
  return result;
}

void sub_1000C3954(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000676ELL;
  v4 = 0x697274732D73776ALL;
  v5 = 0x80000001001CAD50;
  v6 = 0x80000001001CAD70;
  v7 = 0xD000000000000017;
  if (v2 != 3)
  {
    v7 = 0x2D7972746E756F63;
    v6 = 0xEC00000065646F63;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000001001CA540;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_1000C3A04()
{
  v1 = *v0;
  v2 = 0x697274732D73776ALL;
  v3 = 0xD000000000000017;
  if (v1 != 3)
  {
    v3 = 0x2D7972746E756F63;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C3AB0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C4DDC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C3AD8(uint64_t a1)
{
  v2 = sub_1000C4C70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C3B14(uint64_t a1)
{
  v2 = sub_1000C4C70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C3B94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_1000C2388();
}

unint64_t sub_1000C3C20(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000C3E40(a1, v4);
}

unint64_t sub_1000C3C64(uint64_t a1)
{
  v2 = a1;
  v3 = sub_100150C2C(*(v1 + 40), a1);

  return sub_1000C3F08(v2, v3);
}

unint64_t sub_1000C3CA8(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1000C4368(a1, v2);
}

uint64_t sub_1000C3D18(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

unint64_t sub_1000C3DAC(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000C43D4(a1, v2);
}

unint64_t sub_1000C3E40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100025CC4(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100025D20(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000C3F08(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v6 == 1)
          {
            v7 = 0x2D746E65746E6F43;
          }

          else
          {
            v7 = 0x6567412D72657355;
          }

          if (v6 == 1)
          {
            v8 = 0xEC00000065707954;
          }

          else
          {
            v8 = 0xEA0000000000746ELL;
          }
        }

        else
        {
          v7 = 0x7A69726F68747541;
          v8 = 0xED00006E6F697461;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v6 == 5)
        {
          v7 = 0x4C2D747065636341;
          v8 = 0xEF65676175676E61;
        }

        else
        {
          v7 = 0xD000000000000015;
          v8 = 0x80000001001CA360;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x65676E6152;
        }

        else
        {
          v7 = 0xD000000000000013;
        }

        if (v6 == 3)
        {
          v8 = 0xE500000000000000;
        }

        else
        {
          v8 = 0x80000001001CA330;
        }
      }

      v9 = 0xD000000000000015;
      if (v5 == 5)
      {
        v9 = 0x4C2D747065636341;
      }

      v10 = 0xEF65676175676E61;
      if (v5 != 5)
      {
        v10 = 0x80000001001CA360;
      }

      v11 = 0x65676E6152;
      if (v5 != 3)
      {
        v11 = 0xD000000000000013;
      }

      v12 = 0xE500000000000000;
      if (v5 != 3)
      {
        v12 = 0x80000001001CA330;
      }

      if (v5 <= 4)
      {
        v9 = v11;
        v10 = v12;
      }

      v13 = 0x6567412D72657355;
      if (v5 == 1)
      {
        v13 = 0x2D746E65746E6F43;
      }

      v14 = 0xEC00000065707954;
      if (v5 != 1)
      {
        v14 = 0xEA0000000000746ELL;
      }

      if (!v5)
      {
        v13 = 0x7A69726F68747541;
        v14 = 0xED00006E6F697461;
      }

      v15 = v5 <= 2 ? v13 : v9;
      v16 = v5 <= 2 ? v14 : v10;
      if (v7 == v15 && v8 == v16)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000C41D0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12 > 4)
      {
        if (v12 <= 6)
        {
          if (v12 == 5)
          {
            if (a2 == 5)
            {
              return v6;
            }
          }

          else if (a2 == 6)
          {
            return v6;
          }

          goto LABEL_4;
        }

        switch(v12)
        {
          case 7:
            if (a2 == 7)
            {
              return v6;
            }

            goto LABEL_4;
          case 8:
            if (a2 == 8)
            {
              return v6;
            }

            goto LABEL_4;
          case 9:
            if (a2 == 9)
            {
              return v6;
            }

            goto LABEL_4;
        }
      }

      else
      {
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            if (a2 == 2)
            {
              return v6;
            }
          }

          else if (v12 == 3)
          {
            if (a2 == 3)
            {
              return v6;
            }
          }

          else if (a2 == 4)
          {
            return v6;
          }

          goto LABEL_4;
        }

        if (!v12)
        {
          if (!a2)
          {
            return v6;
          }

          goto LABEL_4;
        }

        if (v12 == 1)
        {
          if (a2 == 1)
          {
            return v6;
          }

          goto LABEL_4;
        }
      }

      if (a2 >= 0xA)
      {
        v13 = *v11 == a1 && v12 == a2;
        if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1000C4368(uint64_t a1, uint64_t a2)
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

unint64_t sub_1000C43D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000C44D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CDE0(&qword_10023C748, &qword_1001BCA88);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100014B50(v4, v13, &qword_10023C248, &qword_1001BCA90);
      result = sub_1000C3C20(v13);
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
      result = sub_100025CA4(&v15, (v3[7] + 32 * result));
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

double sub_1000C4614@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(a1 + 136);
  v13 = v15;
  v12 = *(a1 + 168);
  v14 = *(a1 + 216);
  sub_1000C4880(&v15, v10);
  sub_100014B50(&v14, v10, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10003C04C(a1);
  *&v11[6] = v14;
  if (!*(a1 + 169))
  {
    v4 = *(a1 + 120);
    v6 = *(a1 + 128);
LABEL_6:
    v10[0] = v6;
    v5 = 3;
    goto LABEL_7;
  }

  if (*(a1 + 169) != 1)
  {
    v4 = 0;
    v6 = 1;
    goto LABEL_6;
  }

  v4 = 0;
  v10[0] = 1;
  v5 = *(a1 + 129);
LABEL_7:
  v7 = v12;
  v8 = v10[0];
  *a2 = v13;
  *(a2 + 16) = v7;
  *(a2 + 24) = v4;
  *(a2 + 32) = v8;
  *(a2 + 33) = v5;
  result = *v11;
  *(a2 + 34) = *v11;
  *(a2 + 48) = *&v11[14];
  return result;
}

unint64_t sub_1000C4704()
{
  result = qword_10023C700;
  if (!qword_10023C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C700);
  }

  return result;
}

unint64_t sub_1000C4788(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CDE0(&qword_10023C718, &unk_1001BC860);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_1000C3C64(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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

unint64_t sub_1000C48DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CDE0(&qword_10023C720, &qword_1001BC878);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100014B50(v4, &v13, &qword_10023C5C8, &qword_1001BC880);
      v5 = v13;
      v6 = v14;
      result = sub_1000C3D18(v13, v14, sub_100083774, sub_1000C41D0);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100025CA4(&v15, (v3[7] + 32 * result));
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

uint64_t sub_1000C4A34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000C4A7C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000C4AF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
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

uint64_t sub_1000C4B38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000C4BF0(uint64_t a1)
{
  result = sub_1000C33F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000C4C1C()
{
  result = qword_10023C740;
  if (!qword_10023C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C740);
  }

  return result;
}

unint64_t sub_1000C4C70()
{
  result = qword_10023C758;
  if (!qword_10023C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C758);
  }

  return result;
}

unint64_t sub_1000C4CD8()
{
  result = qword_10023C760;
  if (!qword_10023C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C760);
  }

  return result;
}

unint64_t sub_1000C4D30()
{
  result = qword_10023C768;
  if (!qword_10023C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C768);
  }

  return result;
}

unint64_t sub_1000C4D88()
{
  result = qword_10023C770;
  if (!qword_10023C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C770);
  }

  return result;
}

unint64_t sub_1000C4DDC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215E20, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000C4E28(uint64_t a1)
{
  v4 = *(a1 + 88);
  v3 = *(a1 + 96);

  *(v1 + 40) = v4;
  *(v1 + 48) = v3;
  *(v1 + 88) = *(a1 + 112);
  *(v1 + 96) = 0;
  *(v1 + 145) = *(a1 + 104) > 1u;
  *(v1 + 152) = String.count.getter();
  *(v1 + 160) = 0;
  v8 = *(a1 + 16);
  *(v1 + 168) = v8;
  sub_10005CB44(&v8, &v7);

  *(v1 + 184) = (*(a1 + 56) & 1) == 0;
  if (*(a1 + 172))
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  *(v1 + 113) = v6;
  *(v1 + 146) = 2 - *(a1 + 169);
  return result;
}

unint64_t sub_1000C4EFC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x736572706D496461;
    v5 = 0x746C69466B6E696CLL;
    if (a1 != 2)
    {
      v5 = 0x68636E75616CLL;
    }

    if (a1)
    {
      v4 = 0x64696C6156706174;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x74736575716572;
    if (a1 != 7)
    {
      v1 = 0x6D6F4379726F7473;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000013;
    }

    v2 = 0xD000000000000019;
    if (a1 != 4)
    {
      v2 = 0x7265766E6F436461;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000C5038(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x73736563637573;
    v6 = 0x69737265766E6F63;
    if (a1 != 8)
    {
      v6 = 0x6573616863727570;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6365526E656B6F74;
    if (a1 != 5)
    {
      v7 = 0x52646579616C6564;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x657A696C616E6966;
    v2 = 0x657461647075;
    v3 = 0x6572756C696166;
    if (a1 != 3)
    {
      v3 = 0x73696D736E617274;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x64657463656A6572;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int sub_1000C51A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10000F210(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000C51F4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10000F210(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_1000C5238@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C870C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000C5268@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000C4EFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000C5344(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1000C5038(*a1);
  v5 = v4;
  if (v3 == sub_1000C5038(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000C53CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000C5038(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C5430(uint64_t a1)
{
  sub_1000C5038(*v1);
  String.hash(into:)();
}

Swift::Int sub_1000C5484(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1000C5038(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C54E4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C8758(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C5514@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C5038(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000C55F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C7074656B72616DLL;
  }

  else
  {
    v3 = 7368801;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xEB00000000656361;
  }

  if (*a2)
  {
    v5 = 0x6C7074656B72616DLL;
  }

  else
  {
    v5 = 7368801;
  }

  if (*a2)
  {
    v6 = 0xEB00000000656361;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000C5698()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C571C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000C578C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000C5818(uint64_t *a1@<X8>)
{
  v2 = 7368801;
  if (*v1)
  {
    v2 = 0x6C7074656B72616DLL;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000656361;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000C5908(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x647261646E617473;
  }

  else
  {
    v3 = 7107189;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x647261646E617473;
  }

  else
  {
    v5 = 7107189;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000C59A8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C5A24(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000C5A8C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000C5B10(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (*v1)
  {
    v2 = 0x647261646E617473;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_1000C5C04()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C5CC8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000C5D78(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C5E38@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C883C(*a1);
  *a2 = result;
  return result;
}

void sub_1000C5E68(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368801;
  v4 = 0xEB00000000686775;
  v5 = 0x6F72685477656976;
  if (*v1 != 2)
  {
    v5 = 0x7268546B63696C63;
    v4 = 0xEC0000006867756FLL;
  }

  if (*v1)
  {
    v3 = 6448503;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1000C5F98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656761676E656572;
  }

  else
  {
    v3 = 0x6C6C6174736E69;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEC000000746E656DLL;
  }

  if (*a2)
  {
    v5 = 0x656761676E656572;
  }

  else
  {
    v5 = 0x6C6C6174736E69;
  }

  if (*a2)
  {
    v6 = 0xEC000000746E656DLL;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000C6048()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C60D4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000C614C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000C61E0(uint64_t *a1@<X8>)
{
  v2 = 0x6C6C6174736E69;
  if (*v1)
  {
    v2 = 0x656761676E656572;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEC000000746E656DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000C62D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64657A696C616572;
  }

  else
  {
    v3 = 0x676E69646E6570;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x64657A696C616572;
  }

  else
  {
    v5 = 0x676E69646E6570;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000C6380()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C6404(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000C6474(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000C6500(uint64_t *a1@<X8>)
{
  v2 = 0x676E69646E6570;
  if (*v1)
  {
    v2 = 0x64657A696C616572;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000C65F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x656372656D6D6F63;
  v5 = 0xE900000000000072;
  if (v2 != 1)
  {
    v4 = 0x65706F6C65766564;
    v3 = 0xE900000000000072;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x726F7774654E6461;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE90000000000006BLL;
  }

  v8 = 0x656372656D6D6F63;
  if (*a2 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 0x65706F6C65766564;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x726F7774654E6461;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE90000000000006BLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000C66F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C6798(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000C682C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C68D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C87A4(*a1);
  *a2 = result;
  return result;
}

void sub_1000C6900(uint64_t *a1@<X8>)
{
  v2 = 0xE90000000000006BLL;
  v3 = *v1;
  v4 = 0xE800000000000000;
  v5 = 0x656372656D6D6F63;
  if (v3 != 1)
  {
    v5 = 0x65706F6C65766564;
    v4 = 0xE900000000000072;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x726F7774654E6461;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_1000C6A14(_BYTE *a1, _BYTE *a2)
{
  v2 = 1701734758;
  v3 = *a1;
  v4 = 0xE600000000000000;
  v5 = 0x657372616F63;
  if (v3 != 1)
  {
    v5 = 1701734758;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701736302;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0xE600000000000000;
  if (*a2 == 1)
  {
    v2 = 0x657372616F63;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000C6AF4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C6B84(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000C6C00(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C6C8C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C87F0(*a1);
  *a2 = result;
  return result;
}

void sub_1000C6CBC(uint64_t *a1@<X8>)
{
  v2 = 1701734758;
  v3 = 0xE600000000000000;
  if (*v1 == 1)
  {
    v2 = 0x657372616F63;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 1701736302;
    v4 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v4;
}

uint64_t sub_1000C6DB8(char a1)
{
  result = 0x707954746E657665;
  switch(a1)
  {
    case 1:
      v3 = 0x746C75736572;
      goto LABEL_26;
    case 2:
      return 0x446572756C696166;
    case 3:
      return 0x546572756C696166;
    case 4:
      return 0x726F7774654E6461;
    case 5:
      return 0x6D6954746E657665;
    case 6:
      return 0x4E646C697542736FLL;
    case 7:
      return 0x657079546461;
    case 8:
      v3 = 0x656C646E7562;
      goto LABEL_26;
    case 9:
      return 0xD000000000000017;
    case 10:
      return 0x7463617265746E69;
    case 11:
      v3 = 0x68636E75616CLL;
LABEL_26:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
      break;
    case 12:
      result = 0x6B63616274736F70;
      break;
    case 13:
      result = 0x65636E6575716573;
      break;
    case 14:
      result = 0x756F437972746572;
      break;
    case 15:
      result = 0x74616E6974736564;
      break;
    case 16:
      result = 0x65736E6F70736572;
      break;
    case 17:
      result = 0x4474736575716572;
      break;
    case 18:
      result = 0x7475626972747461;
      break;
    case 19:
    case 23:
      result = 0xD00000000000001ALL;
      break;
    case 20:
      result = 0xD00000000000001BLL;
      break;
    case 21:
      result = 0x6C7074656B72616DLL;
      break;
    case 22:
      result = 0xD000000000000017;
      break;
    case 24:
      result = 0x707954726566666FLL;
      break;
    case 25:
      result = 0x79636E6572727563;
      break;
    case 26:
      result = 0x437972746E756F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000C713C(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023C7D8, &qword_1001BCCD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_1000CAC2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v11 = 0;
  sub_1000CAFC8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v11 = 1;
    sub_1000CB01C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v3[80];
    v11 = 7;
    sub_1000CB070();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = v3[81];
    v11 = 8;
    sub_1000CB0C4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v3[83];
    v11 = 10;
    sub_10004CE54();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = v3[84];
    v11 = 11;
    sub_1000CB118();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = v3[85];
    v11 = 12;
    sub_1000CB16C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v3[113];
    v11 = 15;
    sub_1000CB1C0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v3[145];
    v11 = 18;
    sub_1000CB214();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = v3[146];
    v11 = 19;
    sub_1000CB268();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v3[186];
    v11 = 24;
    sub_1000CB2BC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 26;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000C77A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E756F63736964;
  }

  else
  {
    v3 = 0x6169725465657266;
  }

  if (v2)
  {
    v4 = 0xE90000000000006CLL;
  }

  else
  {
    v4 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v5 = 0x746E756F63736964;
  }

  else
  {
    v5 = 0x6169725465657266;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006465;
  }

  else
  {
    v6 = 0xE90000000000006CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000C7854()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C78E0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000C7958(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000C79EC(uint64_t *a1@<X8>)
{
  v2 = 0x6169725465657266;
  if (*v1)
  {
    v2 = 0x746E756F63736964;
  }

  v3 = 0xE90000000000006CLL;
  if (*v1)
  {
    v3 = 0xEA00000000006465;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000C7AEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000C9260(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000C7B14(uint64_t a1)
{
  v2 = sub_1000CAC2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C7B50(uint64_t a1)
{
  v2 = sub_1000CAC2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000C7B8C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1000C9AF0(a2, v12);
  if (!v2)
  {
    v5 = v12[11];
    a1[10] = v12[10];
    a1[11] = v5;
    v6 = v12[13];
    a1[12] = v12[12];
    a1[13] = v6;
    v7 = v12[7];
    a1[6] = v12[6];
    a1[7] = v7;
    v8 = v12[9];
    a1[8] = v12[8];
    a1[9] = v8;
    v9 = v12[3];
    a1[2] = v12[2];
    a1[3] = v9;
    v10 = v12[5];
    a1[4] = v12[4];
    a1[5] = v10;
    result = *v12;
    v11 = v12[1];
    *a1 = v12[0];
    a1[1] = v11;
  }

  return result;
}

uint64_t sub_1000C7C10(uint64_t a1)
{
  v8 = a1;
  swift_errorRetain();
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  sub_10000CDE0(&qword_10023AEB8, &unk_1001B7AE0);
  if (swift_dynamicCast())
  {
    sub_10000DA64(v6, v9);
    v1 = v10;
    sub_10000DA7C(v9, v10);
    v2 = sub_10009DB48(v1);
    sub_10000DB58(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1000C7D74(v6);
    v3 = _convertErrorToNSError(_:)();
    v4 = [v3 domain];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9[0] = [v3 code];
    dispatch thunk of CustomStringConvertible.description.getter();
  }

  return v2;
}

uint64_t sub_1000C7D74(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023AEC0, &unk_1001BCC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1000C7DDC@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    swift_errorRetain();
    v37 = sub_1000C7C10(a2);
    v38 = v14;
    v35 = v16;
    v36 = v15;
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v35 = 0;
    v36 = 0;
  }

  v34 = a1 > 1u;
  static Date.now.getter();
  (*(v7 + 104))(v9, enum case for Calendar.Component.hour(_:), v6);
  v17 = sub_100025808(v13, v9);
  v19 = v18;
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  v21 = [objc_opt_self() buildVersion];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v110 = 1;
  v108 = 1;
  v105 = 1;
  v103 = 1;
  v100 = 1;
  LOWORD(v40) = 5;
  *(&v40 + 2) = v111;
  WORD3(v40) = v112;
  *(&v40 + 1) = v37;
  *&v41 = v38;
  *(&v41 + 1) = v36;
  v42 = v35;
  *&v43 = 0;
  *(&v43 + 1) = v20;
  *&v44 = v22;
  *(&v44 + 1) = v24;
  LOBYTE(v45) = 0;
  *(&v45 + 1) = 33686018;
  BYTE5(v45) = 0;
  *(&v45 + 1) = 0;
  LOBYTE(v46) = 1;
  *(&v46 + 1) = *v109;
  DWORD1(v46) = *&v109[3];
  *(&v46 + 1) = 0;
  LOWORD(v47) = 769;
  *(&v47 + 2) = v106;
  WORD3(v47) = v107;
  *(&v47 + 1) = 0;
  LOBYTE(v48) = 1;
  DWORD1(v48) = *&v104[3];
  *(&v48 + 1) = *v104;
  *(&v48 + 1) = 0;
  LOBYTE(v49) = 1;
  BYTE1(v49) = v34;
  BYTE2(v49) = 3;
  BYTE7(v49) = v102;
  *(&v49 + 3) = v101;
  *(&v49 + 1) = 0;
  LOBYTE(v50) = 1;
  *(&v50 + 1) = *v99;
  DWORD1(v50) = *&v99[3];
  *(&v50 + 1) = 0;
  *&v51 = 0;
  WORD4(v51) = 514;
  BYTE10(v51) = 2;
  HIBYTE(v51) = v98;
  *(&v51 + 11) = v97;
  v52 = 0u;
  v53 = 0u;
  v54 = 5;
  v56 = v112;
  v55 = v111;
  v57 = v37;
  v58 = v38;
  v59 = v36;
  v60 = v35;
  v62 = 0;
  v61 = 0;
  v63 = v20;
  v64 = v22;
  v65 = v24;
  v66 = 0;
  v67 = 33686018;
  v68 = 0;
  v69 = 0;
  v70 = 1;
  *&v71[3] = *&v109[3];
  *v71 = *v109;
  v72 = 0;
  v73 = 1;
  v74 = 3;
  v76 = v107;
  v75 = v106;
  v77 = 0;
  v78 = 1;
  *&v79[3] = *&v104[3];
  *v79 = *v104;
  v80 = 0;
  v81 = 1;
  v82 = v34;
  v83 = 3;
  v85 = v102;
  v84 = v101;
  v86 = 0;
  v87 = 1;
  *&v88[3] = *&v99[3];
  *v88 = *v99;
  v90 = 0;
  v89 = 0;
  v91 = 514;
  v92 = 2;
  v94 = v98;
  v93 = v97;
  v95 = 0u;
  v96 = 0u;
  sub_100010568(&v40, &v39);
  sub_10003AE8C(&v54);
  v25 = v51;
  a3[10] = v50;
  a3[11] = v25;
  v26 = v53;
  a3[12] = v52;
  a3[13] = v26;
  v27 = v47;
  a3[6] = v46;
  a3[7] = v27;
  v28 = v49;
  a3[8] = v48;
  a3[9] = v28;
  v29 = v43;
  a3[2] = v42;
  a3[3] = v29;
  v30 = v45;
  a3[4] = v44;
  a3[5] = v30;
  result = *&v40;
  v32 = v41;
  *a3 = v40;
  a3[1] = v32;
  return result;
}

double sub_1000C8278@<D0>(int a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v38 = a1;
  v5 = type metadata accessor for Calendar.Component();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    v13 = sub_1000C7C10(a2);
    v36 = v14;
    v37 = v13;
    v34 = v16;
    v35 = v15;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
  }

  static Date.now.getter();
  (*(v6 + 104))(v8, enum case for Calendar.Component.hour(_:), v5);
  v17 = sub_100025808(v12, v8);
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  v21 = [objc_opt_self() buildVersion];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v110 = 1;
  v108 = 1;
  v105 = 1;
  v103 = 1;
  v100 = 1;
  LOWORD(v40) = 2310;
  *(&v40 + 2) = v111;
  WORD3(v40) = v112;
  *(&v40 + 1) = v37;
  *&v41 = v36;
  *(&v41 + 1) = v35;
  v42 = v34;
  *&v43 = 0;
  *(&v43 + 1) = v20;
  *&v44 = v22;
  *(&v44 + 1) = v24;
  LOBYTE(v45) = 0;
  BYTE5(v45) = 2;
  *(&v45 + 1) = 33686018;
  *(&v45 + 1) = 0;
  LOBYTE(v46) = 1;
  *(&v46 + 1) = *v109;
  DWORD1(v46) = *&v109[3];
  *(&v46 + 1) = 0;
  LOWORD(v47) = 769;
  *(&v47 + 2) = v106;
  WORD3(v47) = v107;
  *(&v47 + 1) = 0;
  LOBYTE(v48) = 1;
  DWORD1(v48) = *&v104[3];
  *(&v48 + 1) = *v104;
  *(&v48 + 1) = 0;
  LOBYTE(v49) = 1;
  *(&v49 + 1) = 770;
  BYTE7(v49) = v102;
  *(&v49 + 3) = v101;
  *(&v49 + 1) = 0;
  LOBYTE(v50) = 1;
  DWORD1(v50) = *&v99[3];
  *(&v50 + 1) = *v99;
  *(&v50 + 1) = 0;
  *&v51 = 0;
  WORD4(v51) = 258;
  BYTE10(v51) = v38;
  HIBYTE(v51) = v98;
  *(&v51 + 11) = v97;
  v52 = xmmword_1001BCBF0;
  v53 = 0uLL;
  v54 = 2310;
  v56 = v112;
  v55 = v111;
  v57 = v37;
  v58 = v36;
  v59 = v35;
  v60 = v34;
  v62 = 0;
  v61 = 0;
  v63 = v20;
  v64 = v22;
  v65 = v24;
  v66 = 0;
  v68 = 2;
  v67 = 33686018;
  v69 = 0;
  v70 = 1;
  *&v71[3] = *&v109[3];
  *v71 = *v109;
  v72 = 0;
  v73 = 1;
  v74 = 3;
  v76 = v107;
  v75 = v106;
  v77 = 0;
  v78 = 1;
  *&v79[3] = *&v104[3];
  *v79 = *v104;
  v80 = 0;
  v81 = 1;
  v82 = 770;
  v84 = v102;
  v83 = v101;
  v85 = 0;
  v86 = 1;
  *&v87[3] = *&v99[3];
  *v87 = *v99;
  v89 = 0;
  v88 = 0;
  v90 = 258;
  v91 = v38;
  v93 = v98;
  v92 = v97;
  v94 = xmmword_1001BCBF0;
  v96 = 0;
  v95 = 0;
  sub_100010568(&v40, &v39);
  sub_10003AE8C(&v54);
  v25 = v51;
  a3[10] = v50;
  a3[11] = v25;
  v26 = v53;
  a3[12] = v52;
  a3[13] = v26;
  v27 = v47;
  a3[6] = v46;
  a3[7] = v27;
  v28 = v49;
  a3[8] = v48;
  a3[9] = v28;
  v29 = v43;
  a3[2] = v42;
  a3[3] = v29;
  v30 = v45;
  a3[4] = v44;
  a3[5] = v30;
  result = *&v40;
  v32 = v41;
  *a3 = v40;
  a3[1] = v32;
  return result;
}

unint64_t sub_1000C870C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100214AB8, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C8758(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100214C50, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C87A4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100214D60, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C87F0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100214E18, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C883C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100214E80, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

double sub_1000C8888@<D0>(unsigned __int8 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for Calendar.Component();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Date();
  v8 = *(v34 - 8);
  __chkstk_darwin(v34);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v37 = a1[1];
  v38 = v11;
  v103[0] = *(a1 + 3);
  *&v101[6] = v103[0];
  if (a1[72])
  {
    sub_10005CB44(v103, v51);
    v35 = 0;
    v36 = 0;
  }

  else
  {
    *&v40[0] = *(a1 + 8);
    sub_10005CB44(v103, v51);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v13;
    v36 = v12;
  }

  v102 = *(a1 + 8);
  v100 = v102;
  sub_10005CB44(&v102, v51);
  static Date.now.getter();
  (*(v5 + 104))(v7, enum case for Calendar.Component.hour(_:), v4);
  v14 = sub_100025808(v10, v7);
  v16 = v15;
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v34);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v14;
  }

  v18 = [objc_opt_self() buildVersion];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  sub_1000C8D6C(a1);
  v22 = a1[24];
  v23 = a1[25];
  v24 = a1[41];
  v99 = 1;
  v97 = 1;
  v25 = a1[26];
  *&v96[6] = *(a1 + 4);
  v96[14] = a1[40];
  v94 = 1;
  v91 = 1;
  LOBYTE(v40[0]) = v38;
  BYTE1(v40[0]) = v37;
  *(v40 + 2) = *v101;
  *&v40[1] = *&v101[14];
  *(&v40[1] + 1) = v36;
  *(v41 + 8) = v100;
  *&v41[0] = v35;
  *(&v41[1] + 1) = v17;
  *&v42 = v19;
  *(&v42 + 1) = v21;
  LOBYTE(v43) = v22;
  *(&v43 + 1) = 514;
  BYTE3(v43) = v23;
  BYTE4(v43) = 2;
  BYTE5(v43) = v24;
  *(&v43 + 1) = 0;
  LOBYTE(v44) = 1;
  *(&v44 + 1) = *v98;
  DWORD1(v44) = *&v98[3];
  *(&v44 + 1) = 0;
  LOBYTE(v45[0]) = 1;
  BYTE1(v45[0]) = v25;
  *(v45 + 2) = *v96;
  *(v45 + 9) = *&v96[7];
  *(&v45[1] + 1) = *v95;
  DWORD1(v45[1]) = *&v95[3];
  *(&v45[1] + 1) = 0;
  LOBYTE(v46) = 1;
  BYTE7(v46) = v93;
  *(&v46 + 3) = v92;
  DWORD1(v47) = *&v90[3];
  *(&v47 + 1) = *v90;
  HIBYTE(v48) = v89;
  *(&v48 + 11) = v88;
  *&v52[14] = *&v101[14];
  v53 = v36;
  *(&v46 + 1) = 768;
  *(&v46 + 1) = 0;
  *v52 = *v101;
  LOBYTE(v47) = 1;
  *(&v47 + 1) = 0;
  *&v48 = 0;
  WORD4(v48) = 514;
  BYTE10(v48) = 2;
  v49 = 0u;
  v50 = 0u;
  v51[0] = v38;
  v51[1] = v37;
  v55 = v100;
  v54 = v35;
  v56 = v17;
  v57 = v19;
  v58 = v21;
  v59 = v22;
  v60 = 514;
  v61 = v23;
  v62 = 2;
  v63 = v24;
  v64 = 0;
  v65 = 1;
  *&v66[3] = *&v98[3];
  *v66 = *v98;
  v67 = 0;
  v68 = 1;
  v69 = v25;
  *&v70[7] = *&v96[7];
  *v70 = *v96;
  *&v71[3] = *&v95[3];
  *v71 = *v95;
  v72 = 0;
  v73 = 1;
  v74 = 768;
  v76 = v93;
  v75 = v92;
  v77 = 0;
  v78 = 1;
  *&v79[3] = *&v90[3];
  *v79 = *v90;
  v81 = 0;
  v80 = 0;
  v82 = 514;
  v83 = 2;
  v85 = v89;
  v84 = v88;
  v86 = 0u;
  v87 = 0u;
  sub_100010568(v40, &v39);
  sub_10003AE8C(v51);
  v26 = v48;
  a2[10] = v47;
  a2[11] = v26;
  v27 = v50;
  a2[12] = v49;
  a2[13] = v27;
  v28 = v45[0];
  a2[6] = v44;
  a2[7] = v28;
  v29 = v46;
  a2[8] = v45[1];
  a2[9] = v29;
  v30 = v41[1];
  a2[2] = v41[0];
  a2[3] = v30;
  v31 = v43;
  a2[4] = v42;
  a2[5] = v31;
  result = *v40;
  v33 = v40[1];
  *a2 = v40[0];
  a2[1] = v33;
  return result;
}

double sub_1000C8DC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v39 = a3;
  *&v40 = a1;
  *(&v40 + 1) = a2;
  v7 = type metadata accessor for Calendar.Component();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    swift_errorRetain();
    v37 = sub_1000C7C10(a4);
    v38 = v15;
    v35 = v17;
    v36 = v16;
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v35 = 0;
    v36 = 0;
  }

  static Date.now.getter();
  (*(v8 + 104))(v10, enum case for Calendar.Component.hour(_:), v7);
  v18 = sub_100025808(v14, v10);
  v20 = v19;
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  v22 = [objc_opt_self() buildVersion];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v112 = 1;
  v110 = 1;
  v107 = 1;
  v105 = 1;
  v102 = 1;
  LOWORD(v42) = 2310;
  *(&v42 + 2) = v113;
  WORD3(v42) = v114;
  *(&v42 + 1) = v37;
  *&v43 = v38;
  *(&v43 + 1) = v36;
  v44 = v35;
  *&v45 = 0;
  *(&v45 + 1) = v21;
  *&v46 = v23;
  *(&v46 + 1) = v25;
  LOBYTE(v47) = 0;
  BYTE5(v47) = 2;
  *(&v47 + 1) = 33686018;
  *(&v47 + 1) = 0;
  LOBYTE(v48) = 1;
  *(&v48 + 1) = *v111;
  DWORD1(v48) = *&v111[3];
  *(&v48 + 1) = 0;
  LOWORD(v49) = 769;
  *(&v49 + 2) = v108;
  WORD3(v49) = v109;
  *(&v49 + 1) = 0;
  LOBYTE(v50) = 1;
  DWORD1(v50) = *&v106[3];
  *(&v50 + 1) = *v106;
  *(&v50 + 1) = 0;
  LOBYTE(v51) = 1;
  *(&v51 + 1) = 770;
  BYTE7(v51) = v104;
  *(&v51 + 3) = v103;
  *(&v51 + 1) = 0;
  LOBYTE(v52) = 1;
  DWORD1(v52) = *&v101[3];
  *(&v52 + 1) = *v101;
  *(&v52 + 1) = 0;
  *&v53 = 0;
  WORD4(v53) = 2;
  BYTE10(v53) = v39;
  HIBYTE(v53) = v100;
  *(&v53 + 11) = v99;
  v54 = v40;
  v55 = 0uLL;
  v56 = 2310;
  v58 = v114;
  v57 = v113;
  v59 = v37;
  v60 = v38;
  v61 = v36;
  v62 = v35;
  v64 = 0;
  v63 = 0;
  v65 = v21;
  v66 = v23;
  v67 = v25;
  v68 = 0;
  v70 = 2;
  v69 = 33686018;
  v71 = 0;
  v72 = 1;
  *&v73[3] = *&v111[3];
  *v73 = *v111;
  v74 = 0;
  v75 = 1;
  v76 = 3;
  v78 = v109;
  v77 = v108;
  v79 = 0;
  v80 = 1;
  *&v81[3] = *&v106[3];
  *v81 = *v106;
  v82 = 0;
  v83 = 1;
  v84 = 770;
  v86 = v104;
  v85 = v103;
  v87 = 0;
  v88 = 1;
  *&v89[3] = *&v101[3];
  *v89 = *v101;
  v91 = 0;
  v90 = 0;
  v92 = 2;
  v93 = v39;
  v95 = v100;
  v94 = v99;
  v96 = v40;
  v98 = 0;
  v97 = 0;

  sub_100010568(&v42, &v41);
  sub_10003AE8C(&v56);
  v26 = v53;
  a5[10] = v52;
  a5[11] = v26;
  v27 = v55;
  a5[12] = v54;
  a5[13] = v27;
  v28 = v49;
  a5[6] = v48;
  a5[7] = v28;
  v29 = v51;
  a5[8] = v50;
  a5[9] = v29;
  v30 = v45;
  a5[2] = v44;
  a5[3] = v30;
  v31 = v47;
  a5[4] = v46;
  a5[5] = v31;
  result = *&v42;
  v33 = v43;
  *a5 = v42;
  a5[1] = v33;
  return result;
}

uint64_t sub_1000C9260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954746C75736572 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446572756C696166 && a2 == 0xED00006E69616D6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x546572756C696166 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F7774654E6461 && a2 == 0xEB0000000044496BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6954746E657665 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4E646C697542736FLL && a2 == 0xED00007265626D75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657079546461 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7954656C646E7562 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001001CAB50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x795468636E75616CLL && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6B63616274736F70 && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xED00007865646E49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x756F437972746572 && a2 == 0xEA0000000000746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x4474736575716572 && a2 == 0xEF6E6F6974617275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEF657079546E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001001CABD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001001CABF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6C7074656B72616DLL && a2 == 0xEB00000000656361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001001CCC50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001001CCC70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x707954726566666FLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL)
  {

    return 26;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 26;
    }

    else
    {
      return 27;
    }
  }
}

uint64_t sub_1000C9AF0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023C778, &qword_1001BCCD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - v7;
  v9 = a1[3];
  v154 = a1;
  sub_10000DA7C(a1, v9);
  sub_1000CAC2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000DB58(v154);
  }

  else
  {
    v73 = v6;
    LOBYTE(v74) = 0;
    sub_1000CAC80();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v88[0];
    LOBYTE(v74) = 1;
    sub_1000CACD4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v88[0];
    v88[0] = 2;
    v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v71 = v12;
    v88[0] = 3;
    v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v68 = v11;
    v69 = v13;
    v88[0] = 4;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v15;
    v66 = v14;
    v88[0] = 5;
    v65 = KeyedDecodingContainer.decode(_:forKey:)();
    v88[0] = 6;
    v64 = KeyedDecodingContainer.decode(_:forKey:)();
    v72 = v17;
    LOBYTE(v74) = 7;
    sub_1000CAD28();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v63 = v88[0];
    LOBYTE(v74) = 8;
    sub_1000CAD7C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v62 = v88[0];
    v88[0] = 9;
    v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v74) = 10;
    sub_10004DC18();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v60 = v88[0];
    LOBYTE(v74) = 11;
    sub_1000CADD0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v59 = v88[0];
    LOBYTE(v74) = 12;
    sub_1000CAE24();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v58 = v88[0];
    v88[0] = 13;
    v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v151 = v18 & 1;
    v88[0] = 14;
    v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v149 = v19 & 1;
    LOBYTE(v74) = 15;
    sub_1000CAE78();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v55 = v88[0];
    v88[0] = 16;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v146 = v20 & 1;
    v88[0] = 17;
    v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v144 = v21 & 1;
    LOBYTE(v74) = 18;
    sub_1000CAECC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v52 = v88[0];
    LOBYTE(v74) = 19;
    sub_1000CAF20();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v51 = v88[0];
    v88[0] = 20;
    v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v141 = v22 & 1;
    v88[0] = 21;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v24 = v23;
    v88[0] = 22;
    v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v88[0] = 23;
    v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v74) = 24;
    sub_1000CAF74();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v45 = v88[0];
    v88[0] = 25;
    v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v46 = v25;
    v137 = 26;
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = v27;
    v43 = v26;
    (*(v73 + 8))(v8, v5);
    LOBYTE(v74) = v10;
    BYTE1(v74) = v68;
    *(&v74 + 2) = v152;
    WORD3(v74) = v153;
    *(&v74 + 1) = v70;
    *&v75 = v71;
    *(&v75 + 1) = v67;
    *&v76 = v69;
    *(&v76 + 1) = v66;
    *&v77 = v16;
    *(&v77 + 1) = v65;
    *&v78 = v64;
    *(&v78 + 1) = v72;
    LOBYTE(v79) = v63;
    BYTE1(v79) = v62;
    BYTE2(v79) = v61;
    BYTE3(v79) = v60;
    BYTE4(v79) = v59;
    BYTE5(v79) = v58;
    *(&v79 + 1) = v57;
    LODWORD(v73) = v151;
    LOBYTE(v80) = v151;
    *(&v80 + 1) = *v150;
    DWORD1(v80) = *&v150[3];
    *(&v80 + 1) = v56;
    v41 = v149;
    LOBYTE(v81) = v149;
    BYTE1(v81) = v55;
    *(&v81 + 2) = v147;
    WORD3(v81) = v148;
    *(&v81 + 1) = v54;
    v40 = v146;
    LOBYTE(v82) = v146;
    DWORD1(v82) = *&v145[3];
    *(&v82 + 1) = *v145;
    *(&v82 + 1) = v53;
    v39 = v144;
    LOBYTE(v83) = v144;
    BYTE1(v83) = v52;
    BYTE2(v83) = v51;
    BYTE7(v83) = v143;
    *(&v83 + 3) = v142;
    v28 = v49;
    *(&v83 + 1) = v50;
    *(&v84 + 1) = *v140;
    DWORD1(v84) = *&v140[3];
    HIBYTE(v85) = v139;
    *(&v85 + 11) = v138;
    v29 = v141;
    LOBYTE(v84) = v141;
    *(&v84 + 1) = v49;
    *&v85 = v24;
    BYTE8(v85) = v48;
    BYTE9(v85) = v47;
    BYTE10(v85) = v45;
    *&v86 = v44;
    *(&v86 + 1) = v46;
    *&v87 = v43;
    *(&v87 + 1) = v42;
    sub_100010568(&v74, v88);
    sub_10000DB58(v154);
    v88[0] = v10;
    v88[1] = v68;
    v91 = v70;
    v92 = v71;
    v93 = v67;
    v94 = v69;
    v95 = v66;
    v96 = v16;
    v97 = v65;
    v98 = v64;
    v99 = v72;
    v89 = v152;
    v90 = v153;
    v100 = v63;
    v101 = v62;
    v102 = v61;
    v103 = v60;
    v104 = v59;
    v105 = v58;
    v106 = v57;
    v107 = v73;
    *v108 = *v150;
    *&v108[3] = *&v150[3];
    v109 = v56;
    v110 = v41;
    v111 = v55;
    v112 = v147;
    v113 = v148;
    v114 = v54;
    v115 = v40;
    *v116 = *v145;
    *&v116[3] = *&v145[3];
    v117 = v53;
    v118 = v39;
    v119 = v52;
    v120 = v51;
    v122 = v143;
    v121 = v142;
    v123 = v50;
    v124 = v29;
    *&v125[3] = *&v140[3];
    *v125 = *v140;
    v126 = v28;
    v127 = v24;
    v128 = v48;
    v129 = v47;
    v130 = v45;
    v132 = v139;
    v131 = v138;
    v133 = v44;
    v134 = v46;
    v135 = v43;
    v136 = v42;
    result = sub_10003AE8C(v88);
    v31 = v85;
    a2[10] = v84;
    a2[11] = v31;
    v32 = v87;
    a2[12] = v86;
    a2[13] = v32;
    v33 = v81;
    a2[6] = v80;
    a2[7] = v33;
    v34 = v83;
    a2[8] = v82;
    a2[9] = v34;
    v35 = v77;
    a2[2] = v76;
    a2[3] = v35;
    v36 = v79;
    a2[4] = v78;
    a2[5] = v36;
    v37 = v75;
    *a2 = v74;
    a2[1] = v37;
  }

  return result;
}

double sub_1000CA6E0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for Calendar.Component();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    v33 = sub_1000C7C10(a1);
    v34 = v12;
    v31 = v14;
    v32 = v13;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
  }

  static Date.now.getter();
  (*(v5 + 104))(v7, enum case for Calendar.Component.hour(_:), v4);
  v15 = sub_100025808(v11, v7);
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v15;
  }

  v19 = [objc_opt_self() buildVersion];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v105 = 1;
  v103 = 1;
  v100 = 1;
  v98 = 1;
  v95 = 1;
  LOWORD(v36) = 2054;
  *(&v36 + 2) = v106;
  WORD3(v36) = v107;
  *(&v36 + 1) = v33;
  *&v37 = v34;
  *(&v37 + 1) = v32;
  v38 = v31;
  *&v39 = 0;
  *(&v39 + 1) = v18;
  *&v40 = v20;
  *(&v40 + 1) = v22;
  LOBYTE(v41) = 0;
  BYTE5(v41) = 2;
  *(&v41 + 1) = 33686018;
  *(&v41 + 1) = 0;
  LOBYTE(v42) = 1;
  *(&v42 + 1) = *v104;
  DWORD1(v42) = *&v104[3];
  *(&v42 + 1) = 0;
  LOWORD(v43) = 769;
  *(&v43 + 2) = v101;
  WORD3(v43) = v102;
  *(&v43 + 1) = 0;
  LOBYTE(v44) = 1;
  DWORD1(v44) = *&v99[3];
  *(&v44 + 1) = *v99;
  *(&v44 + 1) = 0;
  LOBYTE(v45) = 1;
  *(&v45 + 1) = 770;
  BYTE7(v45) = v97;
  *(&v45 + 3) = v96;
  *(&v45 + 1) = 0;
  LOBYTE(v46) = 1;
  DWORD1(v46) = *&v94[3];
  *(&v46 + 1) = *v94;
  *(&v46 + 1) = 0;
  *&v47 = 0;
  WORD4(v47) = 514;
  BYTE10(v47) = 2;
  HIBYTE(v47) = v93;
  *(&v47 + 11) = v92;
  v48 = 0u;
  v49 = 0u;
  v50 = 2054;
  v52 = v107;
  v51 = v106;
  v53 = v33;
  v54 = v34;
  v55 = v32;
  v56 = v31;
  v58 = 0;
  v57 = 0;
  v59 = v18;
  v60 = v20;
  v61 = v22;
  v62 = 0;
  v64 = 2;
  v63 = 33686018;
  v65 = 0;
  v66 = 1;
  *&v67[3] = *&v104[3];
  *v67 = *v104;
  v68 = 0;
  v69 = 1;
  v70 = 3;
  v72 = v102;
  v71 = v101;
  v73 = 0;
  v74 = 1;
  *&v75[3] = *&v99[3];
  *v75 = *v99;
  v76 = 0;
  v77 = 1;
  v78 = 770;
  v80 = v97;
  v79 = v96;
  v81 = 0;
  v82 = 1;
  *&v83[3] = *&v94[3];
  *v83 = *v94;
  v85 = 0;
  v84 = 0;
  v86 = 514;
  v87 = 2;
  v89 = v93;
  v88 = v92;
  v90 = 0u;
  v91 = 0u;
  sub_100010568(&v36, &v35);
  sub_10003AE8C(&v50);
  v23 = v47;
  a2[10] = v46;
  a2[11] = v23;
  v24 = v49;
  a2[12] = v48;
  a2[13] = v24;
  v25 = v43;
  a2[6] = v42;
  a2[7] = v25;
  v26 = v45;
  a2[8] = v44;
  a2[9] = v26;
  v27 = v39;
  a2[2] = v38;
  a2[3] = v27;
  v28 = v41;
  a2[4] = v40;
  a2[5] = v28;
  result = *&v36;
  v30 = v37;
  *a2 = v36;
  a2[1] = v30;
  return result;
}

uint64_t sub_1000CAB5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CABA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000CAC2C()
{
  result = qword_10023C780;
  if (!qword_10023C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C780);
  }

  return result;
}

unint64_t sub_1000CAC80()
{
  result = qword_10023C788;
  if (!qword_10023C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C788);
  }

  return result;
}

unint64_t sub_1000CACD4()
{
  result = qword_10023C790;
  if (!qword_10023C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C790);
  }

  return result;
}

unint64_t sub_1000CAD28()
{
  result = qword_10023C798;
  if (!qword_10023C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C798);
  }

  return result;
}

unint64_t sub_1000CAD7C()
{
  result = qword_10023C7A0;
  if (!qword_10023C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7A0);
  }

  return result;
}

unint64_t sub_1000CADD0()
{
  result = qword_10023C7A8;
  if (!qword_10023C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7A8);
  }

  return result;
}

unint64_t sub_1000CAE24()
{
  result = qword_10023C7B0;
  if (!qword_10023C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7B0);
  }

  return result;
}

unint64_t sub_1000CAE78()
{
  result = qword_10023C7B8;
  if (!qword_10023C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7B8);
  }

  return result;
}

unint64_t sub_1000CAECC()
{
  result = qword_10023C7C0;
  if (!qword_10023C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7C0);
  }

  return result;
}

unint64_t sub_1000CAF20()
{
  result = qword_10023C7C8;
  if (!qword_10023C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7C8);
  }

  return result;
}

unint64_t sub_1000CAF74()
{
  result = qword_10023C7D0;
  if (!qword_10023C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7D0);
  }

  return result;
}

unint64_t sub_1000CAFC8()
{
  result = qword_10023C7E0;
  if (!qword_10023C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7E0);
  }

  return result;
}

unint64_t sub_1000CB01C()
{
  result = qword_10023C7E8;
  if (!qword_10023C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7E8);
  }

  return result;
}

unint64_t sub_1000CB070()
{
  result = qword_10023C7F0;
  if (!qword_10023C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7F0);
  }

  return result;
}

unint64_t sub_1000CB0C4()
{
  result = qword_10023C7F8;
  if (!qword_10023C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7F8);
  }

  return result;
}

unint64_t sub_1000CB118()
{
  result = qword_10023C800;
  if (!qword_10023C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C800);
  }

  return result;
}

unint64_t sub_1000CB16C()
{
  result = qword_10023C808;
  if (!qword_10023C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C808);
  }

  return result;
}

unint64_t sub_1000CB1C0()
{
  result = qword_10023C810;
  if (!qword_10023C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C810);
  }

  return result;
}

unint64_t sub_1000CB214()
{
  result = qword_10023C818;
  if (!qword_10023C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C818);
  }

  return result;
}

unint64_t sub_1000CB268()
{
  result = qword_10023C820;
  if (!qword_10023C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C820);
  }

  return result;
}

unint64_t sub_1000CB2BC()
{
  result = qword_10023C828;
  if (!qword_10023C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C828);
  }

  return result;
}

unint64_t sub_1000CB3C4()
{
  result = qword_10023C830;
  if (!qword_10023C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C830);
  }

  return result;
}

unint64_t sub_1000CB41C()
{
  result = qword_10023C838;
  if (!qword_10023C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C838);
  }

  return result;
}

unint64_t sub_1000CB474()
{
  result = qword_10023C840;
  if (!qword_10023C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C840);
  }

  return result;
}

unint64_t sub_1000CB4CC()
{
  result = qword_10023C848;
  if (!qword_10023C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C848);
  }

  return result;
}

unint64_t sub_1000CB524()
{
  result = qword_10023C850;
  if (!qword_10023C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C850);
  }

  return result;
}

unint64_t sub_1000CB57C()
{
  result = qword_10023C858;
  if (!qword_10023C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C858);
  }

  return result;
}

unint64_t sub_1000CB5D4()
{
  result = qword_10023C860;
  if (!qword_10023C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C860);
  }

  return result;
}

unint64_t sub_1000CB62C()
{
  result = qword_10023C868;
  if (!qword_10023C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C868);
  }

  return result;
}

unint64_t sub_1000CB684()
{
  result = qword_10023C870;
  if (!qword_10023C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C870);
  }

  return result;
}

unint64_t sub_1000CB6DC()
{
  result = qword_10023C878;
  if (!qword_10023C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C878);
  }

  return result;
}

unint64_t sub_1000CB734()
{
  result = qword_10023C880;
  if (!qword_10023C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C880);
  }

  return result;
}

unint64_t sub_1000CB78C()
{
  result = qword_10023C888;
  if (!qword_10023C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C888);
  }

  return result;
}

unint64_t sub_1000CB7E4()
{
  result = qword_10023C890;
  if (!qword_10023C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C890);
  }

  return result;
}

unint64_t sub_1000CB838()
{
  result = qword_10023C898;
  if (!qword_10023C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C898);
  }

  return result;
}

unint64_t sub_1000CB88C()
{
  result = qword_10023C8A0;
  if (!qword_10023C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8A0);
  }

  return result;
}

unint64_t sub_1000CB8E0()
{
  result = qword_10023C8A8;
  if (!qword_10023C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8A8);
  }

  return result;
}

unint64_t sub_1000CB934()
{
  result = qword_10023C8B0;
  if (!qword_10023C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8B0);
  }

  return result;
}

unint64_t sub_1000CB988()
{
  result = qword_10023C8B8;
  if (!qword_10023C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8B8);
  }

  return result;
}

unint64_t sub_1000CB9DC()
{
  result = qword_10023C8C0;
  if (!qword_10023C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8C0);
  }

  return result;
}

unint64_t sub_1000CBA30()
{
  result = qword_10023C8C8;
  if (!qword_10023C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8C8);
  }

  return result;
}

unint64_t sub_1000CBA84()
{
  result = qword_10023C8D0;
  if (!qword_10023C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8D0);
  }

  return result;
}

unint64_t sub_1000CBAD8()
{
  result = qword_10023C8D8;
  if (!qword_10023C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8D8);
  }

  return result;
}

unint64_t sub_1000CBB2C()
{
  result = qword_10023C8E0;
  if (!qword_10023C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8E0);
  }

  return result;
}

uint64_t sub_1000CBB80(uint64_t a1, void *a2, char *a3, unint64_t a4)
{
  v138 = *(a3 - 1);
  __chkstk_darwin(a1);
  v127 = v8;
  v146 = v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v149 = *(AssociatedTypeWitness - 8);
  isa = v149[8].isa;
  v11 = __chkstk_darwin(AssociatedTypeWitness);
  v126 = v120 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v125 = v120 - v13;
  v14 = __chkstk_darwin(v12);
  v137 = v120 - v15;
  v16 = __chkstk_darwin(v14);
  v145 = v120 - v17;
  __chkstk_darwin(v16);
  v148 = v120 - v18;
  v19 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v132 = *(TupleTypeMetadata2 - 8);
  v20 = __chkstk_darwin(TupleTypeMetadata2);
  v136 = v120 - v21;
  v147 = v19;
  v141 = *(v19 - 1);
  v22 = __chkstk_darwin(v20);
  v131 = v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v139 = v120 - v25;
  __chkstk_darwin(v24);
  v144 = v120 - v26;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of static CaseIterable.allCases.getter();
  v151 = aBlock;
  v28 = swift_allocBox();
  v30 = v29;
  v142 = a1;
  v31 = v150;
  sub_1000CD000(a1, a2, a3, a4, v29);
  v150 = v31;
  if (v31)
  {

    return swift_deallocBox();
  }

  v122 = AssociatedConformanceWitness;
  v120[0] = isa;
  v124 = a2;
  v128 = a3;
  v135 = a4;
  v134 = v28;
  v33 = v149;
  v34 = v149[2].isa;
  v35 = v144;
  v133 = v30;
  v130 = v34;
  v129 = v149 + 2;
  (v34)(v144, v30, AssociatedTypeWitness);
  v36 = v35;
  (v33[7].isa)(v35, 0, 1, AssociatedTypeWitness);
  aBlock = v151;
  v37 = type metadata accessor for Array();
  swift_getWitnessTable();
  v38 = v139;
  v121 = v37;
  BidirectionalCollection.last.getter();
  v39 = *(TupleTypeMetadata2 + 48);
  v40 = AssociatedTypeWitness;
  v41 = v141;
  v42 = *(v141 + 2);
  v43 = v136;
  v44 = v36;
  v45 = v147;
  v42(v136, v44, v147);
  v123 = v39;
  v42(&v43[v39], v38, v45);
  v46 = v33[6].isa;
  v47 = v46(v43, 1, AssociatedTypeWitness);
  v143 = AssociatedTypeWitness;
  v48 = v144;
  if (v47 == 1)
  {
    v49 = *(v41 + 1);
    v50 = v147;
    v49(v38, v147);
    v49(v48, v50);
    AssociatedTypeWitness = v40;
    if (v46(&v43[v123], 1, v40) == 1)
    {
      v49(v43, v147);
      goto LABEL_24;
    }
  }

  else
  {
    v51 = v131;
    v42(v131, v43, v147);
    v52 = v123;
    if (v46(&v43[v123], 1, AssociatedTypeWitness) != 1)
    {
      v92 = v148;
      v93 = v149;
      (v149[4].isa)(v148, &v43[v52], AssociatedTypeWitness);
      LODWORD(TupleTypeMetadata2) = dispatch thunk of static Equatable.== infix(_:_:)();
      v94 = v93[1].isa;
      v94(v92, v143);
      v95 = v43;
      v96 = *(v141 + 1);
      v97 = v147;
      v96(v139, v147);
      v96(v48, v97);
      v94(v51, v143);
      AssociatedTypeWitness = v143;
      v96(v95, v97);
      v55 = v145;
      v56 = v130;
      v57 = v128;
      v58 = v129;
      if (TupleTypeMetadata2)
      {
        goto LABEL_24;
      }

      goto LABEL_9;
    }

    v53 = *(v141 + 1);
    v54 = v147;
    v53(v139, v147);
    v53(v48, v54);
    (v149[1].isa)(v51, AssociatedTypeWitness);
  }

  (*(v132 + 8))(v43, TupleTypeMetadata2);
  v55 = v145;
  v56 = v130;
  v57 = v128;
  v58 = v129;
LABEL_9:
  v156 = v151;
  v59 = v148;
  v56(v148, v133, AssociatedTypeWitness);
  swift_getWitnessTable();
  v139 = *(v122[2].isa + 1);
  Collection<>.firstIndex(of:)();
  v60 = v149 + 1;
  TupleTypeMetadata2 = v149[1].isa;
  (TupleTypeMetadata2)(v59, AssociatedTypeWitness);
  if (v153)
  {

    if (qword_100239CD8 == -1)
    {
LABEL_11:
      v61 = type metadata accessor for Logger();
      sub_10000DAC0(v61, qword_10023FCB8);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = v133;
        v66 = v64;
        v67 = swift_slowAlloc();
        v156 = v67;
        *v66 = 136315138;
        swift_beginAccess();
        v130(v59, v65, AssociatedTypeWitness);
        v68 = String.init<A>(describing:)();
        v70 = sub_10017AD04(v68, v69, &v156);

        *(v66 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v62, v63, "No index found for current schema version: %s", v66, 0xCu);
        sub_10000DB58(v67);
      }

      sub_1000CD860();
      swift_allocError();
      *v71 = 1;
      swift_willThrow();
    }

LABEL_36:
    swift_once();
    goto LABEL_11;
  }

  v72 = aBlock + 1;
  if (__OFADD__(aBlock, 1))
  {
    __break(1u);
LABEL_38:
    swift_once();
LABEL_30:
    v98 = type metadata accessor for Logger();
    sub_10000DAC0(v98, qword_10023FCB8);
    v99 = v125;
    v56(v125, v58, AssociatedTypeWitness);
    v56(v57, v55, AssociatedTypeWitness);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v149 = v100;
      v103 = v102;
      v151 = swift_slowAlloc();
      aBlock = v151;
      *v103 = 136315394;
      v104 = v56;
      v105 = v148;
      v104(v148, v99, AssociatedTypeWitness);
      v106 = String.init<A>(describing:)();
      v108 = v107;
      LODWORD(v147) = v101;
      (TupleTypeMetadata2)(v99, AssociatedTypeWitness);
      v109 = sub_10017AD04(v106, v108, &aBlock);

      *(v103 + 4) = v109;
      *(v103 + 12) = 2080;
      v110 = v126;
      v130(v105, v126, AssociatedTypeWitness);
      v111 = String.init<A>(describing:)();
      v113 = v112;
      v114 = v110;
      v115 = TupleTypeMetadata2;
      (TupleTypeMetadata2)(v114, AssociatedTypeWitness);
      v116 = sub_10017AD04(v111, v113, &aBlock);

      *(v103 + 14) = v116;
      v58 = v137;
      v117 = v149;
      _os_log_impl(&_mh_execute_header, v149, v147, "Schema version mismatch: %s - %s", v103, 0x16u);
      swift_arrayDestroy();

      v118 = v115;
    }

    else
    {

      v118 = TupleTypeMetadata2;
      (TupleTypeMetadata2)(v57, AssociatedTypeWitness);
      v118(v99, AssociatedTypeWitness);
    }

    sub_1000CD860();
    swift_allocError();
    *v119 = 2;
    swift_willThrow();
    v118(v58, AssociatedTypeWitness);
    v118(v55, AssociatedTypeWitness);
  }

  v73 = Array.count.getter();
  swift_beginAccess();
  v136 = v73;
  v74 = v142;
  if (v72 < v73)
  {
    v75 = v72;
    v76 = 0;
    v147 = 0;
    v77 = v138;
    v132 = v138 + 16;
    v131 = (v127 + 7);
    v127 = v120[0] + 7;
    v123 = v138 + 32;
    v122 = v149 + 4;
    v121 = v154;
    v120[0] = v149 + 3;
    v78 = v75;
    v120[1] = v60;
    while (1)
    {
      v144 = v76;
      v141 = v78;
      Array.subscript.getter();
      v155 = 0;
      (*(v77 + 16))(v146, v74, v57);
      v56(v148, v55, AssociatedTypeWitness);
      v79 = (*(v77 + 80) + 40) & ~*(v77 + 80);
      v80 = &v131[v79] & 0xFFFFFFFFFFFFFFF8;
      v81 = v149;
      v82 = (LOBYTE(v149[10].isa) + v80 + 8) & ~LOBYTE(v149[10].isa);
      v83 = (v127 + v82) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      v84 = v135;
      *(v59 + 2) = v57;
      *(v59 + 3) = v84;
      v85 = v124;
      *(v59 + 4) = v124;
      (*(v77 + 32))(&v59[v79], v146, v57);
      AssociatedTypeWitness = v134;
      *&v59[v80] = v134;
      (v81[4].isa)(&v59[v82], v148, v143);
      *&v59[v83] = &v155;
      v86 = v85;

      sub_1000CE4F4(v147, v144);
      v87 = swift_allocObject();
      *(v87 + 16) = sub_1000CE680;
      *(v87 + 24) = v59;
      v154[2] = sub_100062C08;
      v154[3] = v87;
      aBlock = _NSConcreteStackBlock;
      v153 = 1107296256;
      v154[0] = sub_100121018;
      v154[1] = &unk_10021D740;
      v88 = _Block_copy(&aBlock);

      sub_10000635C(v86, v88);
      _Block_release(v88);
      LOBYTE(v88) = swift_isEscapingClosureAtFileLocation();

      if (v88)
      {
        break;
      }

      if (v155)
      {
        swift_errorRetain();

        swift_willThrow();
        (TupleTypeMetadata2)(v145, v143);
LABEL_28:
      }

      v58 = v137;
      v74 = v142;
      v89 = v86;
      v57 = v128;
      v90 = v150;
      sub_1000CD000(v142, v89, v128, v135, v137);
      AssociatedTypeWitness = v143;
      v55 = v145;
      if (v90)
      {
        (TupleTypeMetadata2)(v145, v143);

        goto LABEL_28;
      }

      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v150 = v59;

        v57 = v126;
        v56 = v130;
        if (qword_100239CD8 == -1)
        {
          goto LABEL_30;
        }

        goto LABEL_38;
      }

      v150 = 0;
      v91 = TupleTypeMetadata2;
      (TupleTypeMetadata2)(v58, AssociatedTypeWitness);
      (*v120[0])(v133, v55, AssociatedTypeWitness);
      v91(v55, AssociatedTypeWitness);
      v78 = v141 + 1;

      v147 = sub_1000CE680;
      v76 = v59;
      v56 = v130;
      v77 = v138;
      if (v136 == v78)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_24:
  v147 = 0;
  v59 = 0;
LABEL_25:

  return sub_1000CE4F4(v147, v59);
}

uint64_t sub_1000CCDBC(uint64_t a1)
{
  v2 = String._bridgeToObjectiveC()();
  v17 = 0;
  v3 = sub_1001ABB58(a1, v2, &v17);

  v4 = v17;
  if (v3 && (v5 = v17, v6 = String._bridgeToObjectiveC()(), v17 = 0, v7 = sub_1001ABB58(a1, v6, &v17), v6, v4 = v17, v7))
  {
    v8 = v17;
  }

  else
  {
    v9 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100239CD8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000DAC0(v10, qword_10023FCB8);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to setup database store schema: %@", v13, 0xCu);
      sub_1000AEA80(v14);
    }

    else
    {
    }
  }

  return 1;
}

uint64_t sub_1000CD000@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a5;
  v72 = a1;
  v7 = *(a3 - 8);
  v69 = a2;
  v70 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v63 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = v56 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v66 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = v56 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v16);
  v21 = v56 - v20;
  aBlock[0] = 0;
  v76 = a4;
  v71 = a3;
  v65 = *(swift_getAssociatedConformanceWitness() + 24);
  dispatch thunk of RawRepresentable.init(rawValue:)();
  v64 = *(v19 + 48);
  if (v64(v18, 1, AssociatedTypeWitness) != 1)
  {
    v57 = v13;
    v58 = v12;
    v59 = v19;
    v28 = *(v19 + 32);
    v61 = v19 + 32;
    v62 = v21;
    v60 = v28;
    v28(v21, v18, AssociatedTypeWitness);
    v74 = 0;
    v75 = 1;
    v29 = String._bridgeToObjectiveC()();
    v31 = v70;
    v30 = v71;
    v32 = *(v70 + 16);
    v33 = v68;
    v56[1] = v70 + 16;
    v56[0] = v32;
    v32(v68, v72, v71);
    v34 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v37 = v76;
    *(v36 + 16) = v30;
    *(v36 + 24) = v37;
    (*(v31 + 32))(v36 + v34, v33, v30);
    *(v36 + v35) = &v74;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1000CEAC8;
    *(v38 + 24) = v36;
    v68 = v36;
    aBlock[4] = sub_1000CEB40;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CE47C;
    aBlock[3] = &unk_10021D830;
    v39 = _Block_copy(aBlock);

    sub_1000061F0(v69, v29, v39);

    _Block_release(v39);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    v40 = v76;
    if (v29)
    {
      __break(1u);
    }

    else
    {
      if (v75)
      {
        v41 = v62;
LABEL_15:
        v60(v67, v41, AssociatedTypeWitness);
      }

      v35 = v31;
      v38 = v74;
      aBlock[0] = v74;
      v41 = v66;
      dispatch thunk of RawRepresentable.init(rawValue:)();
      if (v64(v41, 1, AssociatedTypeWitness) != 1)
      {
        (*(v59 + 8))(v62, AssociatedTypeWitness);
        goto LABEL_15;
      }

      v31 = v40;
      (*(v57 + 8))(v41, v58);
      if (qword_100239CD8 == -1)
      {
LABEL_12:
        v42 = type metadata accessor for Logger();
        sub_10000DAC0(v42, qword_10023FCB8);
        v43 = v63;
        (v56[0])(v63, v72, v30);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          LODWORD(v72) = v45;
          v47 = v43;
          v48 = v46;
          v69 = swift_slowAlloc();
          aBlock[0] = v69;
          *v48 = 136315394;
          v49 = (*(v31 + 40))(v30, v31);
          v51 = v50;
          (*(v35 + 8))(v47, v30);
          v52 = sub_10017AD04(v49, v51, aBlock);

          *(v48 + 4) = v52;
          *(v48 + 12) = 2048;
          *(v48 + 14) = v38;
          _os_log_impl(&_mh_execute_header, v44, v72, "Unknown schema version found for schema '%s': %lld", v48, 0x16u);
          sub_10000DB58(v69);
        }

        else
        {

          (*(v35 + 8))(v43, v30);
        }

        v53 = v59;
        v54 = v62;
        sub_1000CD860();
        swift_allocError();
        *v55 = 1;
        swift_willThrow();
        (*(v53 + 8))(v54, AssociatedTypeWitness);
      }
    }

    swift_once();
    goto LABEL_12;
  }

  (*(v13 + 8))(v18, v12);
  if (qword_100239CD8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000DAC0(v22, qword_10023FCB8);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "No zero version for schema", v25, 2u);
  }

  sub_1000CD860();
  swift_allocError();
  *v26 = 0;
  return swift_willThrow();
}

unint64_t sub_1000CD860()
{
  result = qword_10023C8F0;
  if (!qword_10023C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8F0);
  }

  return result;
}

uint64_t sub_1000CD8B4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v76 = a5;
  v78 = a4;
  v77 = *(a6 - 8);
  __chkstk_darwin(a1);
  v72 = v12;
  v68 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(AssociatedTypeWitness);
  v74 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v71 = &v64 - v18;
  __chkstk_darwin(v17);
  v20 = &v64 - v19;
  v73 = a3;
  v21 = swift_projectBox();
  v22 = objc_allocWithZone(SQLiteDatabaseStoreMigrator);
  v67 = a1;
  v23 = sub_1001AC9A4(v22, a1);
  swift_beginAccess();
  v24 = *(v14 + 16);
  v69 = v21;
  v79 = v24;
  v80 = v14 + 16;
  v24(v20, v21, AssociatedTypeWitness);
  (*(a7 + 56))(v20, v23, a6, a7);
  v75 = v14;
  v66 = a7;
  v25 = v72;
  v26 = v68;
  v27 = v77;
  v70 = *(v14 + 8);
  v70(v20, AssociatedTypeWitness);
  if (sub_1001ACC74(v23))
  {
    v65 = v23;
    v64 = String._bridgeToObjectiveC()();
    v29 = v26;
    (*(v27 + 16))(v26, a2, a6);
    v30 = v71;
    v79(v71, v78, AssociatedTypeWitness);
    v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v32 = (v25 + v31 + *(v14 + 80)) & ~*(v14 + 80);
    v33 = swift_allocObject();
    v34 = v66;
    *(v33 + 16) = a6;
    *(v33 + 24) = v34;
    (*(v27 + 32))(v33 + v31, v29, a6);
    v35 = *(v14 + 32);
    v68 = AssociatedTypeWitness;
    v35(v33 + v32, v30, AssociatedTypeWitness);
    v36 = swift_allocObject();
    v36->data = sub_1000CE91C;
    v36->length = v33;
    v77 = v33;
    aBlock[4] = sub_1000CEA14;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CE21C;
    aBlock[3] = &unk_10021D7B8;
    v37 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v38 = v64;
    LODWORD(v32) = sub_1001ABB68(v67, v64, aBlock, v37);
    _Block_release(v37);

    if (v32)
    {
      v39 = aBlock[0];

      return 1;
    }

    v46 = aBlock[0];
    v41 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v72 = sub_1000CE91C;
    v42 = v74;
    v44 = v79;
    v45 = v70;
    v23 = v65;
    AssociatedTypeWitness = v68;
  }

  else
  {
    v41 = sub_1001ACC60(v23, v28);
    v42 = v74;
    if (!v41)
    {
      sub_1000CD860();
      v41 = swift_allocError();
      *v43 = 3;
    }

    swift_willThrow();
    v72 = 0;
    v77 = 0;
    v44 = v79;
    v45 = v70;
  }

  if (qword_100239CD8 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_10000DAC0(v47, qword_10023FCB8);
  v44(v42, v78, AssociatedTypeWitness);

  swift_errorRetain();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    LODWORD(v79) = v49;
    v51 = v50;
    v78 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v82 = v80;
    *v51 = 136315650;
    v70 = v45;
    v52 = v69;
    swift_beginAccess();
    v53 = v71;
    v44(v71, v52, AssociatedTypeWitness);
    v54 = String.init<A>(describing:)();
    v55 = v44;
    v57 = sub_10017AD04(v54, v56, &v82);

    *(v51 + 4) = v57;
    *(v51 + 12) = 2080;
    v55(v53, v42, AssociatedTypeWitness);
    v58 = String.init<A>(describing:)();
    v60 = v59;
    v70(v42, AssociatedTypeWitness);
    v61 = sub_10017AD04(v58, v60, &v82);

    *(v51 + 14) = v61;
    *(v51 + 22) = 2112;
    swift_errorRetain();
    v62 = _swift_stdlib_bridgeErrorToNSError();
    *(v51 + 24) = v62;
    v63 = v78;
    *v78 = v62;
    _os_log_impl(&_mh_execute_header, v48, v79, "Failed to migrate from %s to %s: %@", v51, 0x20u);
    sub_1000AEA80(v63);

    swift_arrayDestroy();
  }

  else
  {

    v45(v42, AssociatedTypeWitness);
  }

  *v76 = v41;

  sub_1000CE4F4(v72, v77);
  return 0;
}

id sub_1000CE118(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 40))(a4, a5);
  v6 = String._bridgeToObjectiveC()();

  [a1 bindString:v6 atPosition:1];

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  return [a1 bindInt64:v8 atPosition:2];
}

uint64_t sub_1000CE21C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_1000CE270(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = *(a6 + 40);
    v10 = a1;
    v8(a5, a6);
    v11 = String._bridgeToObjectiveC()();

    [v10 bindString:v11 atPosition:1];

    v12 = sub_100004080(v10);
    *a4 = v12;
    *(a4 + 8) = 0;
  }

  else
  {
    if (qword_100239CD8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000DAC0(v14, qword_10023FCB8);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v16 + 4) = v18;
      *v17 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v15, "Failed to get current schema version: %@", v16, 0xCu);
      sub_1000AEA80(v17);
    }
  }
}

void sub_1000CE47C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000CE4F4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000CE504()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_1000CE680()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v4 = (*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = v0[4];
  v8 = *(v0 + v4);
  v9 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000CD8B4(v7, v0 + v3, v8, (v0 + v6), v9, v1, v2);
}

uint64_t sub_1000CE7B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000CE7C8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

id sub_1000CE91C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = v5 + *(*(v3 - 8) + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v1 + ((v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1000CE118(a1, v1 + v5, v8, v3, v4);
}

uint64_t sub_1000CEA3C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

unint64_t sub_1000CEB78(uint64_t a1)
{
  result = sub_1000CD860();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000CEBA4()
{
  result = qword_10023C960;
  if (!qword_10023C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C960);
  }

  return result;
}

uint64_t sub_1000CEC14(char a1)
{
  result = 0x6369706F74;
  switch(a1)
  {
    case 1:
      return 0xD000000000000014;
    case 2:
      return 6910049;
    case 3:
      v4 = 0x54746E657665;
      goto LABEL_34;
    case 4:
      return 0x4E646C697542736FLL;
    case 5:
      v5 = 0x746C75736572;
      return v5 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
    case 6:
      return 0x446572756C696166;
    case 7:
      return 0x546572756C696166;
    case 8:
      return 0x726F7774654E6461;
    case 9:
      return 0x657079546461;
    case 10:
      v5 = 0x656C646E7562;
      return v5 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
    case 11:
      v3 = 5;
      goto LABEL_19;
    case 12:
      return 0x7463617265746E69;
    case 13:
      return 1701869940;
    case 14:
      return 0x756F437972746572;
    case 15:
      return 0x74616E6974736564;
    case 16:
      return 0x65736E6F70736572;
    case 17:
      return 0x4474736575716572;
    case 18:
      return 0x7475626972747461;
    case 19:
      return 0xD00000000000001ALL;
    case 20:
      v3 = 9;
LABEL_19:
      result = v3 | 0xD000000000000012;
      break;
    case 21:
      result = 0x6B63616274736F70;
      break;
    case 22:
      result = 0x65636E6575716573;
      break;
    case 23:
      result = 0x6C7074656B72616DLL;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0xD000000000000016;
      break;
    case 26:
      v4 = 0x54726566666FLL;
LABEL_34:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7079000000000000;
      break;
    case 27:
      result = 0x79636E6572727563;
      break;
    case 28:
      result = 0x437972746E756F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000CEFE8(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023C970, &qword_1001BDA78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10000DA7C(a1, a1[3]);
  sub_1000D0040();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v9 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 26;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 27;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 28;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000CF574(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000CEC14(*a1);
  v5 = v4;
  if (v3 == sub_1000CEC14(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000CF5FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000CEC14(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000CF660(uint64_t a1)
{
  sub_1000CEC14(*v1);
  String.hash(into:)();
}

Swift::Int sub_1000CF6B4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1000CEC14(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000CF714@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D02EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1000CF744@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000CEC14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000CF778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D02EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000CF7AC(uint64_t a1)
{
  v2 = sub_1000D0040();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CF7E8(uint64_t a1)
{
  v2 = sub_1000D0040();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000CF83C@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0xEC0000006E6F6973;
  v7.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v8 = *a1;
  isa = v7.super.super.isa;
  if (v8 <= 3)
  {
    if (*a1 > 1u)
    {
      if (v8 == 2)
      {
        v6 = 0xEA00000000007265;
        v9 = 0x746C69466B6E696CLL;
      }

      else
      {
        v6 = 0xE600000000000000;
        v9 = 0x68636E75616CLL;
      }
    }

    else if (*a1)
    {
      v6 = 0xED00006E6F697461;
      v9 = 0x64696C6156706174;
    }

    else
    {
      v9 = 0x736572706D496461;
    }
  }

  else if (*a1 <= 5u)
  {
    if (v8 == 4)
    {
      v6 = 0x80000001001CA760;
      v9 = 0xD000000000000019;
    }

    else
    {
      v9 = 0x7265766E6F436461;
    }
  }

  else if (v8 == 6)
  {
    v6 = 0x80000001001CA790;
    v9 = 0xD000000000000013;
  }

  else if (v8 == 7)
  {
    v6 = 0xE700000000000000;
    v9 = 0x74736575716572;
  }

  else
  {
    v6 = 0xED00006574656C70;
    v9 = 0x6D6F4379726F7473;
  }

  v73 = v9;
  v85 = *(a1 + 4);
  v10 = a1[1];
  if (v10 == 10)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = sub_1000C5038(v10);
  }

  v13 = 7368801;
  v84 = *(a1 + 8);
  v14 = *(a1 + 24);
  v82 = *(a1 + 40);
  v83 = v14;
  v15 = a1[80];
  v69 = v12;
  v70 = v11;
  if (v15 <= 1)
  {
    v68 = 0xE300000000000000;
    if (a1[80])
    {
      v16 = 6448503;
    }

    else
    {
      v16 = 7368801;
    }
  }

  else if (v15 == 2)
  {
    v68 = 0xEB00000000686775;
    v16 = 0x6F72685477656976;
  }

  else
  {
    if (v15 != 3)
    {
      v67 = 0;
      v68 = 0;
      goto LABEL_31;
    }

    v68 = 0xEC0000006867756FLL;
    v16 = 0x7268546B63696C63;
  }

  v67 = v16;
LABEL_31:
  if (a1[113] <= 1u)
  {
    if (!a1[113])
    {
      v66 = 0x726F7774654E6461;
      v65 = 0xE90000000000006BLL;
      goto LABEL_39;
    }

    v65 = 0xE800000000000000;
    v17 = 0x656372656D6D6F63;
    goto LABEL_37;
  }

  if (a1[113] == 2)
  {
    v65 = 0xE900000000000072;
    v17 = 0x65706F6C65766564;
LABEL_37:
    v66 = v17;
    goto LABEL_39;
  }

  v65 = 0;
  v66 = 0;
LABEL_39:
  v18 = a1[81];
  v63 = a1[82];
  v19 = a1[83];
  v20 = a1[84];
  v21 = 1701734758;
  *(&v78 + 7) = *(a1 + 17);
  HIBYTE(v78) = a1[144];
  v22 = a1[145];
  v74 = v6;
  if (a1[146] <= 1u)
  {
    if (a1[146])
    {
      v62 = 0xE600000000000000;
      v21 = 0x657372616F63;
      goto LABEL_45;
    }

    v21 = 1701736302;
LABEL_43:
    v62 = 0xE400000000000000;
LABEL_45:
    v64 = v21;
    goto LABEL_47;
  }

  if (a1[146] == 2)
  {
    goto LABEL_43;
  }

  v64 = 0;
  v62 = 0;
LABEL_47:
  v81 = *(a1 + 168);
  *&v77[7] = v81;
  v23 = *(a1 + 13);
  v80 = *(a1 + 12);
  v24 = 0xEC000000746E656DLL;
  if ((v22 & 1) == 0)
  {
    v24 = 0xE700000000000000;
  }

  v25 = 0x6C6C6174736E69;
  if (v22)
  {
    v25 = 0x656761676E656572;
  }

  v26 = v22 == 2;
  if (v22 == 2)
  {
    v27 = 0;
  }

  else
  {
    v27 = v24;
  }

  v61 = v27;
  if (v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = v25;
  }

  v60 = v28;
  if (v20)
  {
    v29 = 0xE800000000000000;
  }

  else
  {
    v29 = 0xE300000000000000;
  }

  v30 = 7107189;
  if (v20)
  {
    v30 = 0x647261646E617473;
  }

  v31 = v20 == 2;
  if (v20 == 2)
  {
    v32 = 0;
  }

  else
  {
    v32 = v29;
  }

  v59 = v32;
  if (v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = v30;
  }

  v58 = v33;
  v34 = 0xE400000000000000;
  if (v19)
  {
    v34 = 0xE500000000000000;
  }

  v35 = 2003134838;
  if (v19)
  {
    v35 = 0x6B63696C63;
  }

  if (v19 == 2)
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  if (v19 == 2)
  {
    v37 = 0;
  }

  else
  {
    v37 = v35;
  }

  v38 = 0xEB00000000656361;
  if (v18)
  {
    v13 = 0x6C7074656B72616DLL;
  }

  else
  {
    v38 = 0xE300000000000000;
  }

  if (v18 == 2)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38;
  }

  if (v18 == 2)
  {
    v40 = 0;
  }

  else
  {
    v40 = v13;
  }

  v41 = a1[85];
  v42 = 0x676E69646E6570;
  if (v41)
  {
    v42 = 0x64657A696C616572;
    v43 = 0xE800000000000000;
  }

  else
  {
    v43 = 0xE700000000000000;
  }

  v44 = v41 == 2;
  if (v41 == 2)
  {
    v45 = 0;
  }

  else
  {
    v45 = v42;
  }

  v56 = v45;
  if (v44)
  {
    v46 = 0;
  }

  else
  {
    v46 = v43;
  }

  v55 = v46;
  v57 = *(a1 + 92);
  v47 = a1[186];
  v48 = 0x6169725465657266;
  if (v47)
  {
    v48 = 0x746E756F63736964;
    v49 = 0xEA00000000006465;
  }

  else
  {
    v49 = 0xE90000000000006CLL;
  }

  if (v47 == 2)
  {
    v50 = 0;
  }

  else
  {
    v50 = v48;
  }

  if (v47 == 2)
  {
    v51 = 0;
  }

  else
  {
    v51 = v49;
  }

  v79 = v23;
  sub_1000C4880(&v85, v76);
  sub_10005CB44(&v84, v76);
  sub_10005CB44(&v83, v76);
  sub_10005CB44(&v82, v76);
  sub_10005CB44(&v81, v76);
  sub_10005CB44(&v80, v76);
  sub_10005CB44(&v79, v76);
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  *a4 = xmmword_1001BD910;
  *(a4 + 104) = *(a1 + 4);
  *(a4 + 136) = *(a1 + 8);
  *(a4 + 152) = *(a1 + 24);
  *(a4 + 168) = *(a1 + 40);
  *(a4 + 297) = v78;
  *(a4 + 393) = *v77;
  result = *(a1 + 12);
  v53 = *(a1 + 13);
  *(a4 + 440) = result;
  *(a4 + 16) = 1;
  *(a4 + 24) = isa;
  *(a4 + 32) = &off_100213A70;
  *(a4 + 40) = 0xD000000000000010;
  *(a4 + 48) = 0x80000001001CCE30;
  *(a4 + 72) = 0xD000000000000010;
  *(a4 + 80) = 0x80000001001CCE50;
  *(a4 + 88) = v73;
  *(a4 + 96) = v74;
  *(a4 + 120) = v70;
  *(a4 + 128) = v69;
  *(a4 + 184) = v67;
  *(a4 + 192) = v68;
  *(a4 + 200) = v40;
  *(a4 + 208) = v39;
  *(a4 + 216) = v63;
  *(a4 + 224) = v37;
  *(a4 + 232) = v36;
  *(a4 + 240) = v58;
  *(a4 + 248) = v59;
  *(a4 + 256) = *(a1 + 13);
  *(a4 + 264) = a1[112];
  *(a4 + 272) = v66;
  *(a4 + 280) = v65;
  *(a4 + 296) = a1[128];
  *(a4 + 288) = *(a1 + 15);
  *(a4 + 320) = v60;
  *(a4 + 328) = v61;
  *(a4 + 336) = v64;
  *(a4 + 344) = v62;
  *(a4 + 352) = *(a1 + 19);
  *(a4 + 360) = a1[160];
  *(a4 + 368) = v56;
  *(a4 + 376) = v55;
  v54 = *(a1 + 11);
  *(a4 + 392) = a1[96];
  *(a4 + 384) = v54;
  *(a4 + 408) = *&v77[15];
  *(a4 + 416) = v57;
  *(a4 + 424) = v50;
  *(a4 + 432) = v51;
  *(a4 + 456) = v53;
  return result;
}

uint64_t sub_1000CFF08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 472))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CFF50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 472) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 472) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000D0018(uint64_t a1)
{
  result = sub_100025BD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000D0040()
{
  result = qword_10023C978;
  if (!qword_10023C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C978);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SnoutEventPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 28;
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

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SnoutEventPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000D01E8()
{
  result = qword_10023C980;
  if (!qword_10023C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C980);
  }

  return result;
}

unint64_t sub_1000D0240()
{
  result = qword_10023C988;
  if (!qword_10023C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C988);
  }

  return result;
}

unint64_t sub_1000D0298()
{
  result = qword_10023C990;
  if (!qword_10023C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C990);
  }

  return result;
}

unint64_t sub_1000D02EC(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x1D)
  {
    return 29;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000D0340()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for ReengagementConversionTask(0);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000D03D4, 0, 0);
}

uint64_t sub_1000D03D4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for ReengagementConversionTask.RegisterConversionParcel(0);
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = v3[4];
  v6 = v3[1];
  v36 = *v3;
  v34 = v3[3];
  v37 = v3[2];
  v39 = v3[5];
  v7 = v3[10];
  v8 = v3[13];
  v41 = v3[12];
  v28 = v3[11];
  v29 = v3[14];
  v9 = v3[7];
  v42 = v3[6];
  v33 = v3[9];
  v30 = v3[8];
  sub_10000CE28((v3 + 18), v1 + v2[10]);
  sub_10000CE28((v3 + 28), v1 + v2[11]);
  sub_10000CE28((v3 + 33), v1 + v2[12]);
  sub_10000CE28((v3 + 23), v1 + v2[13]);
  sub_10000CE28((v3 + 38), v1 + v2[14]);
  sub_10000CE28((v3 + 43), v1 + v2[15]);
  v10 = qword_100239CE0;
  v35 = v5;

  v32 = v39;
  v40 = v6;

  v31 = v37;
  v38 = v7;

  v11 = v28;
  v12 = v8;

  v13 = v29;
  v14 = v9;

  v15 = v30;
  if (v10 != -1)
  {
    swift_once();
  }

  v17 = v0[3];
  v16 = v0[4];
  v18 = v0[2];
  v19 = type metadata accessor for Logger();
  v20 = sub_10000DAC0(v19, qword_10023FCD0);
  v0[5] = v20;
  (*(*(v19 - 8) + 16))(v16 + v17[16], v20, v19);
  sub_10000CE28(v18 + 384, v16 + v17[17]);
  v21 = (v16 + v17[5]);
  *v21 = v34;
  v21[1] = v35;
  v21[2] = v32;
  v22 = (v16 + v17[6]);
  *v22 = v36;
  v22[1] = v40;
  v22[2] = v31;
  v23 = (v16 + v17[7]);
  *v23 = v33;
  v23[1] = v38;
  v23[2] = v11;
  v24 = (v16 + v17[8]);
  *v24 = v41;
  v24[1] = v12;
  v24[2] = v13;
  v25 = (v16 + v17[9]);
  *v25 = v42;
  v25[1] = v14;
  v25[2] = v15;
  v26 = swift_task_alloc();
  v0[6] = v26;
  *v26 = v0;
  v26[1] = sub_1000D06F4;

  return sub_100089B80();
}

uint64_t sub_1000D06F4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1000D0884;
  }

  else
  {
    v2 = sub_1000D0808;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D0808()
{
  sub_1000D55AC(*(v0 + 32), type metadata accessor for ReengagementConversionTask);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D0884()
{
  sub_1000D55AC(*(v0 + 32), type metadata accessor for ReengagementConversionTask);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Vending machine fetch failed with error: %@", v3, 0xCu);
    sub_10000DAF8(v4, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000D0A04(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[36] = v4;
  v2[37] = *(v4 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_1000D0B58, 0, 0);
}

uint64_t sub_1000D0B58()
{
  v1 = 915061776;
  v2 = *(v0 + 248);
  if (v2 == 915061776)
  {
LABEL_2:
    v3 = *(v0 + 256);
    v5 = v3[9];
    v4 = v3[10];
    v6 = v3[11];
    v7 = swift_allocObject();
    *(v0 + 320) = v7;
    *(v7 + 16) = v1;
    v8 = swift_task_alloc();
    *(v0 + 328) = v8;
    *v8 = v0;
    v8[1] = sub_1000D108C;

    return sub_100110B28(v0 + 176, sub_1000D54AC, v7, v5, v4, v6);
  }

  v10 = objc_allocWithZone(LSApplicationRecord);
  *(v0 + 240) = 0;
  v11 = [v10 initWithStoreItemIdentifier:v2 error:v0 + 240];
  v12 = *(v0 + 240);
  if (v11)
  {
    v13 = v11;
    v14 = *(v0 + 304);
    v15 = *(v0 + 296);
    v36 = *(v0 + 288);
    v16 = *(v0 + 272);
    v17 = *(v0 + 280);
    v18 = *(v0 + 264);
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    v19 = v12;
    PropertyListDecoder.init()();
    v20 = [v13 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + 224) = 0x696C702E6F666E49;
    *(v0 + 232) = 0xEA00000000007473;
    (*(v16 + 104))(v17, enum case for URL.DirectoryHint.inferFromPath(_:), v18);
    sub_10003E5C8();
    URL.appending<A>(path:directoryHint:)();
    (*(v16 + 8))(v17, v18);
    v21 = *(v15 + 8);
    v21(v14, v36);
    v22 = Data.init(contentsOf:options:)();
    v24 = v23;
    v21(*(v0 + 312), *(v0 + 288));
    sub_1000BB9AC();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_10001BABC(v22, v24);

    v33 = *(v0 + 64);
    *(v0 + 128) = *(v0 + 48);
    *(v0 + 144) = v33;
    *(v0 + 160) = *(v0 + 80);
    v34 = *(v0 + 32);
    *(v0 + 96) = *(v0 + 16);
    *(v0 + 112) = v34;
    sub_10009B180(v0 + 96);
    v35 = *(v0 + 113);
    if (v35 != 2 && (v35 & 1) != 0)
    {
      v1 = *(v0 + 248);
      goto LABEL_2;
    }
  }

  else
  {
    v25 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100239CE0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000DAC0(v26, qword_10023FCD0);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "Could not get next conversion tag %@", v29, 0xCu);
      sub_10000DAF8(v30, &qword_100239F10, &qword_1001B4FD0);
    }

    else
    {
    }
  }

  v32 = *(v0 + 8);

  return v32(0, 1);
}

uint64_t sub_1000D108C()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1000D12C8;
  }

  else
  {
    v2 = sub_1000D11EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D11EC()
{
  v1 = 0;
  if ((*(v0 + 216) & 1) == 0)
  {
    v2 = *(v0 + 200);
    if (v2 != 0xFFFFFFFFLL)
    {
      v1 = v2 + 1;
      if (v2 == -1)
      {
        __break(1u);
      }
    }
  }

  v3 = *(v0 + 8);

  return v3(v1, 0);
}

uint64_t sub_1000D12C8()
{
  if (qword_100239CE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FCD0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not get next conversion tag %@", v4, 0xCu);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0, 1);
}

uint64_t sub_1000D14BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 800) = v4;
  *(v5 + 936) = a4;
  *(v5 + 792) = a3;
  *(v5 + 784) = a2;
  *(v5 + 776) = a1;
  *(v5 + 808) = type metadata accessor for ReengagementConversionTask(0);
  *(v5 + 816) = swift_task_alloc();
  v6 = type metadata accessor for ReengagementConversionTask.RegisterConversionParcel(0);
  *(v5 + 824) = v6;
  *(v5 + 832) = *(v6 - 8);
  *(v5 + 840) = swift_task_alloc();
  v7 = type metadata accessor for URL.DirectoryHint();
  *(v5 + 848) = v7;
  *(v5 + 856) = *(v7 - 8);
  *(v5 + 864) = swift_task_alloc();
  v8 = type metadata accessor for URL();
  *(v5 + 872) = v8;
  *(v5 + 880) = *(v8 - 8);
  *(v5 + 888) = swift_task_alloc();
  *(v5 + 896) = swift_task_alloc();

  return _swift_task_switch(sub_1000D16AC, 0, 0);
}

uint64_t sub_1000D16AC()
{
  v1 = *(v0 + 784);
  v2 = v1 + *(sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840) + 68);
  v3 = *(v2 + *(type metadata accessor for AppImpressionPayload(0) + 44));
  if (v3 == 2 || (v3 & 1) == 0)
  {
    if (qword_100239CE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000DAC0(v8, qword_10023FCD0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Impression is not eligible for re-engagement", v11, 2u);
    }
  }

  else
  {
    v4 = *(v0 + 776);
    if (v4 == 915061776)
    {
      v5 = 0xD000000000000012;
      v6 = objc_allocWithZone(LSApplicationRecord);
      v7 = sub_1000BB120(0xD000000000000012, 0x80000001001CB3C0, 0);
      v131 = 0x80000001001CB3C0;
      *(v0 + 688) = sub_10006DF54();
      *(v0 + 696) = &off_10021F840;
      *(v0 + 664) = v7;
      sub_10000DA64((v0 + 664), v0 + 624);
      goto LABEL_16;
    }

    v14 = objc_allocWithZone(LSApplicationRecord);
    *(v0 + 760) = 0;
    v15 = [v14 initWithStoreItemIdentifier:v4 error:v0 + 760];
    v16 = *(v0 + 760);
    if (v15)
    {
      v17 = v15;
      *(v0 + 688) = sub_10006DF54();
      *(v0 + 696) = &off_10021F840;
      *(v0 + 664) = v17;
      sub_10000DA64((v0 + 664), v0 + 624);
      v18 = *(v0 + 648);
      v19 = *(v0 + 656);
      sub_10000DA7C((v0 + 624), v18);
      v20 = *(v19 + 32);
      v21 = v16;
      v22 = v20(v18, v19);
      if (v23)
      {
        v5 = v22;
        v131 = v23;
LABEL_16:
        v134 = v5;
        v24 = *(v0 + 776);
        v25 = objc_allocWithZone(LSApplicationRecord);
        *(v0 + 768) = 0;
        v26 = [v25 initWithStoreItemIdentifier:v24 error:v0 + 768];
        v27 = *(v0 + 768);
        if (v26)
        {
          v28 = v26;
          v29 = *(v0 + 888);
          v30 = *(v0 + 880);
          v128 = *(v0 + 872);
          v31 = *(v0 + 864);
          v32 = *(v0 + 856);
          v33 = *(v0 + 848);
          type metadata accessor for PropertyListDecoder();
          swift_allocObject();
          v34 = v27;
          PropertyListDecoder.init()();
          v35 = [v28 URL];
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          *(v0 + 744) = 0x696C702E6F666E49;
          *(v0 + 752) = 0xEA00000000007473;
          (*(v32 + 104))(v31, enum case for URL.DirectoryHint.inferFromPath(_:), v33);
          sub_10003E5C8();
          URL.appending<A>(path:directoryHint:)();
          (*(v32 + 8))(v31, v33);
          v36 = *(v30 + 8);
          v36(v29, v128);
          v37 = Data.init(contentsOf:options:)();
          v39 = v38;
          v36(*(v0 + 896), *(v0 + 872));
          sub_1000BB9AC();
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

          sub_10001BABC(v37, v39);

          v109 = *(v0 + 528);
          *(v0 + 592) = *(v0 + 512);
          *(v0 + 608) = v109;
          v110 = *(v0 + 496);
          *(v0 + 560) = *(v0 + 480);
          *(v0 + 576) = v110;
          *(v0 + 544) = *(v0 + 464);
          if (*(v0 + 568) != 1)
          {
            v111 = *(v0 + 616);
            v112 = *(v0 + 608);
            v124 = *(v0 + 592);
            v126 = *(v0 + 584);
            v129 = *(v0 + 576);
            v120 = (*(v0 + 600) >> 8) & 1;
            v122 = *(v0 + 600);

            sub_1000D54FC(v112, v111);
            sub_10009B180(v0 + 544);

            sub_1000D5520(v112, v111);
            goto LABEL_44;
          }

          sub_10009B180(v0 + 544);
        }

        else
        {
          v59 = v27;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_100239CE0 != -1)
          {
            swift_once();
          }

          v69 = type metadata accessor for Logger();
          sub_10000DAC0(v69, qword_10023FCD0);
          swift_errorRetain();
          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            *v72 = 138412290;
            swift_errorRetain();
            v74 = _swift_stdlib_bridgeErrorToNSError();
            *(v72 + 4) = v74;
            *v73 = v74;
            _os_log_impl(&_mh_execute_header, v70, v71, "Fetching cooldown windows failed with error: %@", v72, 0xCu);
            sub_10000DAF8(v73, &qword_100239F10, &qword_1001B4FD0);
          }

          else
          {
          }
        }

        v126 = 0;
        v129 = 0;
        LOBYTE(v122) = 0;
        v124 = 0;
        LOBYTE(v120) = 1;
LABEL_44:
        v75 = *(v0 + 840);
        v76 = *(v0 + 832);
        v77 = *(v0 + 824);
        v78 = *(v0 + 816);
        v79 = *(v0 + 808);
        v80 = *(v0 + 800);
        v81 = *(v0 + 936);
        v82 = *(v0 + 792);
        v83 = *(v0 + 776);
        sub_100014B50(*(v0 + 784), v75 + v77[5], &qword_10023A7D0, &unk_1001B5840);
        *v75 = v83;
        v84 = (v75 + v77[6]);
        *v84 = v134;
        v84[1] = v131;
        v85 = v75 + v77[7];
        *v85 = v82;
        v85[8] = v81 & 1;
        v86 = v75 + v77[8];
        *v86 = v129;
        *(v86 + 1) = v126;
        *(v86 + 2) = v124;
        v86[24] = v122;
        v86[25] = v120;
        sub_1000D5544(v75, v78, type metadata accessor for ReengagementConversionTask.RegisterConversionParcel);
        (*(v76 + 56))(v78, 0, 1, v77);
        v88 = v80[4];
        v87 = v80[5];
        v89 = v80[1];
        v132 = v80[2];
        v90 = v80[10];
        v127 = v80[11];
        v91 = v80[13];
        v123 = *v80;
        v125 = v80[12];
        v92 = v80[7];
        v130 = v80[6];
        v118 = v80[9];
        v119 = v80[3];
        v113 = v80[14];
        v114 = v80[8];
        sub_10000CE28((v80 + 18), v78 + v79[10]);
        sub_10000CE28((v80 + 28), v78 + v79[11]);
        sub_10000CE28((v80 + 33), v78 + v79[12]);
        sub_10000CE28((v80 + 23), v78 + v79[13]);
        sub_10000CE28((v80 + 38), v78 + v79[14]);
        sub_10000CE28((v80 + 43), v78 + v79[15]);
        v93 = qword_100239CE0;
        v121 = v88;

        v117 = v87;
        v135 = v89;

        v116 = v132;
        v133 = v90;

        v115 = v127;

        v94 = v113;

        v95 = v114;
        if (v93 != -1)
        {
          swift_once();
        }

        v96 = *(v0 + 816);
        v97 = *(v0 + 808);
        v98 = *(v0 + 800);
        v99 = type metadata accessor for Logger();
        v100 = sub_10000DAC0(v99, qword_10023FCD0);
        (*(*(v99 - 8) + 16))(v96 + v97[16], v100, v99);
        sub_10000CE28(v98 + 384, v96 + v97[17]);
        v101 = (v96 + v97[5]);
        *v101 = v119;
        v101[1] = v121;
        v101[2] = v117;
        v102 = (v96 + v97[6]);
        *v102 = v123;
        v102[1] = v135;
        v102[2] = v116;
        v103 = (v96 + v97[7]);
        *v103 = v118;
        v103[1] = v133;
        v103[2] = v115;
        v104 = (v96 + v97[8]);
        *v104 = v125;
        v104[1] = v91;
        v104[2] = v94;
        v105 = (v96 + v97[9]);
        *v105 = v130;
        v105[1] = v92;
        v105[2] = v95;
        sub_10000DA7C(v80 + 33, *(v98 + 288));
        *(v0 + 728) = v97;
        *(v0 + 736) = &off_10023BF18;
        v106 = sub_10005CA24((v0 + 704));
        sub_1000D5544(v96, v106, type metadata accessor for ReengagementConversionTask);
        v107 = type metadata accessor for TaskGreyhound(0);
        v108 = swift_task_alloc();
        *(v0 + 904) = v108;
        *v108 = v0;
        v108[1] = sub_1000D27AC;

        return (sub_10000C9BC)(v0 + 704, v107, &off_1002169F0);
      }

      if (qword_100239CE0 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_10000DAC0(v60, qword_10023FCD0);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = *(v0 + 776);
        v64 = swift_slowAlloc();
        *v64 = 134217984;
        *(v64 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v61, v62, "Marketplace ID for advertised app %llu is nil", v64, 0xCu);
      }

      v65 = *(v0 + 800);

      sub_10005C97C();
      v66 = swift_allocError();
      *v67 = xmmword_1001BDBD0;
      *(v67 + 16) = 2;
      sub_1000C7DDC(2u, v66, (v0 + 240));

      sub_10000DA7C((v65 + 384), *(v65 + 408));
      v55 = type metadata accessor for SnoutManager(0);
      v68 = swift_task_alloc();
      *(v0 + 912) = v68;
      *v68 = v0;
      v68[1] = sub_1000D29EC;
      v57 = *(v0 + 776);
      v58 = v0 + 240;
      goto LABEL_35;
    }

    v40 = v16;
    v41 = _convertNSErrorToError(_:)();

    swift_willThrow();
    *(v0 + 920) = v41;
    v42 = _convertErrorToNSError(_:)();
    v43 = [v42 code];

    if (v43 != -10814)
    {
      if (qword_100239CE0 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_10000DAC0(v47, qword_10023FCD0);
      swift_errorRetain();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = *(v0 + 776);
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 134218242;
        *(v51 + 4) = v50;
        *(v51 + 12) = 2112;
        swift_errorRetain();
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 14) = v53;
        *v52 = v53;
        _os_log_impl(&_mh_execute_header, v48, v49, "Unexpected error fetching LSApplicationRecord for itemID: %llu, error: %@", v51, 0x16u);
        sub_10000DAF8(v52, &qword_100239F10, &qword_1001B4FD0);
      }

      v54 = *(v0 + 800);

      swift_errorRetain();
      sub_1000C7DDC(2u, v41, (v0 + 16));

      sub_10000DA7C((v54 + 384), *(v54 + 408));
      v55 = type metadata accessor for SnoutManager(0);
      v56 = swift_task_alloc();
      *(v0 + 928) = v56;
      *v56 = v0;
      v56[1] = sub_1000D2BF0;
      v57 = *(v0 + 776);
      v58 = v0 + 16;
LABEL_35:

      return (sub_10016E27C)(v58, v57, 0, 0, v55, &off_100223858);
    }

    if (qword_100239CE0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000DAC0(v44, qword_10023FCD0);
    v9 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v9, v45, "Advertised item ID is not installed, skipping re-engagement processing", v46, 2u);

      goto LABEL_10;
    }
  }

LABEL_10:

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000D27AC()
{
  v1 = *v0;

  sub_10000DB58((v1 + 704));

  return _swift_task_switch(sub_1000D28DC, 0, 0);
}

uint64_t sub_1000D28DC()
{
  v1 = v0[105];
  sub_1000D55AC(v0[102], type metadata accessor for ReengagementConversionTask);
  sub_1000D55AC(v1, type metadata accessor for ReengagementConversionTask.RegisterConversionParcel);
  sub_10000DB58(v0 + 78);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000D29EC()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_1000D2B1C, 0, 0);
}

uint64_t sub_1000D2B1C()
{
  sub_10000DB58((v0 + 624));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D2BF0()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_1000D2D20, 0, 0);
}

uint64_t sub_1000D2D20()
{
  if (qword_100239CE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FCD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Advertised item ID is not installed, skipping re-engagement processing", v4, 2u);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000D2EBC()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 numberFromString:v1];

  if (v2)
  {
    v3 = [v2 unsignedLongLongValue];

    sub_1000B7C6C(v3, v11);
    sub_100014B50(v11, v8, &qword_10023A7E0, &qword_1001B5850);
    v4 = v9;
    if (v9)
    {
      v5 = v10;
      sub_10000DA7C(v8, v9);
      v6 = (*(v5 + 24))(v4, v5);

      sub_1000D5894(v11);
      sub_10000DB58(v8);
      return v6;
    }

    sub_1000D5894(v11);

    sub_10000DAF8(v8, &qword_10023A7E0, &qword_1001B5850);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1000D300C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 112) = a4;
  *(v5 + 72) = a3;
  *(v5 + 80) = v4;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  *(v5 + 88) = type metadata accessor for InstallConversionTask(0);
  *(v5 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_1000D30A8, 0, 0);
}

uint64_t sub_1000D30A8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = v2[4];
  v41 = v2[5];
  v6 = v2[1];
  v38 = v2[2];
  v40 = *v2;
  v7 = v2[10];
  v8 = v2[13];
  v35 = v2[12];
  v36 = v2[11];
  v33 = v2[14];
  v9 = v2[7];
  v31 = v2[3];
  v32 = v2[6];
  v30 = v2[9];
  v24 = v2[8];
  sub_10000CE28((v2 + 18), v1 + 152);
  sub_10000CE28((v2 + 28), v1 + 192);
  sub_10000CE28((v2 + 33), v1 + 232);
  sub_10000CE28((v2 + 23), v1 + 272);
  sub_1000438D8(v4, v3);
  v10 = qword_100239CE0;
  v43 = v5;

  v29 = v41;
  v42 = v6;

  v28 = v38;
  v39 = v7;

  v27 = v36;
  v37 = v8;

  v26 = v33;
  v34 = v9;

  v25 = v24;
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 112);
  v15 = *(v0 + 72);
  v14 = *(v0 + 80);
  v16 = *(v0 + 56);
  v17 = *(v0 + 64);
  v18 = type metadata accessor for Logger();
  v19 = sub_10000DAC0(v18, qword_10023FCD0);
  (*(*(v18 - 8) + 16))(v12 + *(v11 + 56), v19, v18);
  sub_10000CE28(v14 + 384, v12 + *(v11 + 60));
  *v12 = v15;
  *(v12 + 8) = v16;
  *(v12 + 16) = v17;
  *(v12 + 24) = v13;
  *(v12 + 32) = v31;
  *(v12 + 40) = v43;
  *(v12 + 48) = v29;
  *(v12 + 56) = v40;
  *(v12 + 64) = v42;
  *(v12 + 72) = v28;
  *(v12 + 80) = v30;
  *(v12 + 88) = v39;
  *(v12 + 96) = v27;
  *(v12 + 104) = v35;
  *(v12 + 112) = v37;
  *(v12 + 120) = v26;
  *(v12 + 128) = v32;
  *(v12 + 136) = v34;
  *(v12 + 144) = v25;
  sub_10000DA7C(v2 + 33, *(v14 + 288));
  *(v0 + 40) = v11;
  *(v0 + 48) = &off_10023AE78;
  v20 = sub_10005CA24((v0 + 16));
  sub_1000D5544(v12, v20, type metadata accessor for InstallConversionTask);
  v21 = type metadata accessor for TaskGreyhound(0);
  v22 = swift_task_alloc();
  *(v0 + 104) = v22;
  *v22 = v0;
  v22[1] = sub_1000D3430;

  return (sub_10000C9BC)(v0 + 16, v21, &off_1002169F0);
}

uint64_t sub_1000D3430()
{
  v1 = *v0;

  sub_10000DB58((v1 + 16));

  return _swift_task_switch(sub_1000D3534, 0, 0);
}

uint64_t sub_1000D3534()
{
  sub_1000D55AC(*(v0 + 96), type metadata accessor for InstallConversionTask);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D35B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = type metadata accessor for InstallConversionTask(0);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000D364C, 0, 0);
}

uint64_t sub_1000D364C()
{
  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v2[4];
  v40 = v2[5];
  v6 = v2[1];
  v37 = v2[2];
  v39 = *v2;
  v7 = v2[10];
  v8 = v2[13];
  v34 = v2[12];
  v35 = v2[11];
  v32 = v2[14];
  v9 = v2[7];
  v30 = v2[3];
  v31 = v2[6];
  v29 = v2[9];
  v24 = v2[8];
  sub_10000CE28((v2 + 18), v1 + 152);
  sub_10000CE28((v2 + 28), v1 + 192);
  sub_10000CE28((v2 + 33), v1 + 232);
  sub_10000CE28((v2 + 23), v1 + 272);
  sub_1000438D8(v4, v3);
  v10 = qword_100239CE0;
  v42 = v5;

  v28 = v40;
  v41 = v6;

  v27 = v37;
  v38 = v7;

  v26 = v35;
  v36 = v8;

  v25 = v32;
  v33 = v9;

  v11 = v24;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = v0[11];
  v13 = v0[12];
  v15 = v0[9];
  v14 = v0[10];
  v16 = v0[7];
  v17 = v0[8] | 0x2000000000000000;
  v18 = type metadata accessor for Logger();
  v19 = sub_10000DAC0(v18, qword_10023FCD0);
  (*(*(v18 - 8) + 16))(v13 + *(v12 + 56), v19, v18);
  sub_10000CE28(v14 + 384, v13 + *(v12 + 60));
  *v13 = v15;
  *(v13 + 8) = v16;
  *(v13 + 16) = v17;
  *(v13 + 24) = 0;
  *(v13 + 32) = v30;
  *(v13 + 40) = v42;
  *(v13 + 48) = v28;
  *(v13 + 56) = v39;
  *(v13 + 64) = v41;
  *(v13 + 72) = v27;
  *(v13 + 80) = v29;
  *(v13 + 88) = v38;
  *(v13 + 96) = v26;
  *(v13 + 104) = v34;
  *(v13 + 112) = v36;
  *(v13 + 120) = v25;
  *(v13 + 128) = v31;
  *(v13 + 136) = v33;
  *(v13 + 144) = v11;
  sub_10000DA7C(v2 + 33, *(v14 + 288));
  v0[5] = v12;
  v0[6] = &off_10023AE78;
  v20 = sub_10005CA24(v0 + 2);
  sub_1000D5544(v13, v20, type metadata accessor for InstallConversionTask);
  v21 = type metadata accessor for TaskGreyhound(0);
  v22 = swift_task_alloc();
  v0[13] = v22;
  *v22 = v0;
  v22[1] = sub_1000D39D0;

  return (sub_10000C9BC)(v0 + 2, v21, &off_1002169F0);
}

uint64_t sub_1000D39D0()
{
  v1 = *v0;

  sub_10000DB58((v1 + 16));

  return _swift_task_switch(sub_1000D58E8, 0, 0);
}

uint64_t sub_1000D3AE8(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_1000D3C14@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D4828(*a1);
  *a2 = result;
  return result;
}

void sub_1000D3C44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000746ELL;
  v4 = 0x65696C632D667270;
  v5 = 0xEB00000000657461;
  v6 = 0x6369666974726563;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564692D6D657469;
  if (v2 != 4)
  {
    v8 = 0x776F6465722D7369;
    v7 = 0xED000064616F6C6ELL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED00007475706E69;
  v10 = 0x2D65746176697270;
  if (v2 != 1)
  {
    v10 = 0x6D617473656D6974;
    v9 = 0xE900000000000070;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1000D3D38()
{
  v1 = *v0;
  v2 = 0x65696C632D667270;
  v3 = 0x6369666974726563;
  v4 = 0x6564692D6D657469;
  if (v1 != 4)
  {
    v4 = 0x776F6465722D7369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x2D65746176697270;
  if (v1 != 1)
  {
    v5 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000D3E28@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D4828(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000D3E50(uint64_t a1)
{
  v2 = sub_1000D40C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D3E8C(uint64_t a1)
{
  v2 = sub_1000D40C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TokenHandoff.encode(to:)(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023C998, &qword_1001BDBE0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000DA7C(a1, a1[3]);
  sub_1000D40C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1000D40C8()
{
  result = qword_10023C9A0;
  if (!qword_10023C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C9A0);
  }

  return result;
}

__n128 TokenHandoff.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000D48C0(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1000D41A0(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_1000D4288@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D4874(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000D42B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = 6580578;
  v3 = *v1;
  v4 = 0xE500000000000000;
  v5 = 0x65636E6F6ELL;
  if (v3 != 5)
  {
    v5 = 0x65646F6363;
    v4 = 0xE500000000000000;
  }

  v6 = 7627113;
  result = 7566185;
  if (v3 != 3)
  {
    v6 = 7566185;
  }

  if (*v1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE300000000000000;
  }

  v8 = 0xE300000000000000;
  if (v3 != 1)
  {
    v2 = 0x6570797464;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v9 = v8;
  }

  else
  {
    v2 = 6583649;
    v9 = 0xE300000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10;
  return result;
}

uint64_t sub_1000D4368()
{
  v1 = 6580578;
  v2 = *v0;
  v3 = 0x65636E6F6ELL;
  if (v2 != 5)
  {
    v3 = 0x65646F6363;
  }

  v4 = 7627113;
  if (v2 != 3)
  {
    v4 = 7566185;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0x6570797464;
  }

  if (!*v0)
  {
    v1 = 6583649;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000D4414@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D4874(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000D443C(uint64_t a1)
{
  v2 = sub_1000D4C40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D4478(uint64_t a1)
{
  v2 = sub_1000D4C40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PODTokenPayload.encode(to:)(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023C9A8, &qword_1001BDBE8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000DA7C(a1, a1[3]);
  sub_1000D4C40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

__n128 PODTokenPayload.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000D4C94(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_1000D474C(void *a1)
{
  if (a1[2])
  {
    v1 = 0;
  }

  else
  {
    v1 = 0x2C746E656D656C65;
  }

  v2 = 0x2C666F6F7270;
  if (a1[4])
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  if (a1[6])
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x6369666974726563;
  }

  if (a1[6])
  {
    v5 = 0xE000000000000000;
  }

  else
  {
    v5 = 0xEB00000000657461;
  }

  v9 = v1;
  v6._countAndFlagsBits = v2;
  v6._object = v3;
  String.append(_:)(v6);

  v7._countAndFlagsBits = v4;
  v7._object = v5;
  String.append(_:)(v7);

  return v9;
}

unint64_t sub_1000D4828(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100214F50, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000D4874(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215638, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D48C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023C9F0, &qword_1001BE010);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_1000D40C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  LOBYTE(v32[0]) = 1;
  *&v26 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v26 + 1) = v12;
  LOBYTE(v32[0]) = 2;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v32[0]) = 3;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v13;
  LOBYTE(v32[0]) = 4;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = 5;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v39 = v14 & 1;
  *&v27 = v9;
  *(&v27 + 1) = v11;
  v15 = v26;
  v28 = v26;
  v16 = v24;
  *&v29 = v24;
  *(&v29 + 1) = v23;
  v17 = v25;
  *&v30 = v25;
  *(&v30 + 1) = v22;
  v31 = v39;
  sub_1000D5644(&v27, v32);
  sub_10000DB58(a1);
  v32[0] = v9;
  v32[1] = v11;
  v33 = v15;
  v34 = v16;
  v35 = v23;
  v36 = v17;
  v37 = v22;
  v38 = v39;
  result = sub_10005C884(v32);
  v19 = v30;
  *(a2 + 32) = v29;
  *(a2 + 48) = v19;
  *(a2 + 64) = v31;
  v20 = v28;
  *a2 = v27;
  *(a2 + 16) = v20;
  return result;
}

unint64_t sub_1000D4C40()
{
  result = qword_10023C9B0;
  if (!qword_10023C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C9B0);
  }

  return result;
}

uint64_t sub_1000D4C94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023C9E8, &qword_1001BE008);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_1000D4C40();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v44[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v10;
  LOBYTE(v44[0]) = 1;
  *&v35 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v35 + 1) = v11;
  LOBYTE(v44[0]) = 2;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  LOBYTE(v44[0]) = 3;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v44[0]) = 4;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v14;
  LOBYTE(v44[0]) = 5;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v15;
  v55 = 6;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = *(v6 + 8);
  v18 = v16;
  v28 = v19;
  v17(v8, v5);
  *&v37 = v9;
  v20 = v36;
  *(&v37 + 1) = v36;
  v38 = v35;
  *&v39 = v34;
  *(&v39 + 1) = v13;
  *&v40 = v31;
  v21 = v33;
  *(&v40 + 1) = v30;
  *&v41 = v33;
  *(&v41 + 1) = v29;
  *&v42 = v32;
  v22 = v28;
  *(&v42 + 1) = v18;
  v43 = v28;
  sub_1000D560C(&v37, v44);
  sub_10000DB58(a1);
  v44[0] = v9;
  v44[1] = v20;
  v45 = v35;
  v46 = v34;
  v47 = v13;
  v48 = v31;
  v49 = v30;
  v50 = v21;
  v51 = v29;
  v52 = v32;
  v53 = v18;
  v54 = v22;
  result = sub_10005C9D0(v44);
  v24 = v42;
  *(a2 + 64) = v41;
  *(a2 + 80) = v24;
  *(a2 + 96) = v43;
  v25 = v38;
  *a2 = v37;
  *(a2 + 16) = v25;
  v26 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v26;
  return result;
}

__n128 sub_1000D518C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000D51B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1000D51F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000D5290()
{
  result = qword_10023C9B8;
  if (!qword_10023C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C9B8);
  }

  return result;
}

unint64_t sub_1000D52E8()
{
  result = qword_10023C9C0;
  if (!qword_10023C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C9C0);
  }

  return result;
}

unint64_t sub_1000D5340()
{
  result = qword_10023C9C8;
  if (!qword_10023C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C9C8);
  }

  return result;
}

unint64_t sub_1000D5398()
{
  result = qword_10023C9D0;
  if (!qword_10023C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C9D0);
  }

  return result;
}

unint64_t sub_1000D53F0()
{
  result = qword_10023C9D8;
  if (!qword_10023C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C9D8);
  }

  return result;
}

unint64_t sub_1000D5448()
{
  result = qword_10023C9E0;
  if (!qword_10023C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C9E0);
  }

  return result;
}

double sub_1000D54AC@<D0>(_OWORD *a1@<X8>)
{
  result = sub_10005CE24(&v5);
  if (!v1)
  {
    v4 = v6[0];
    *a1 = v5;
    a1[1] = v4;
    result = *(v6 + 9);
    *(a1 + 25) = *(v6 + 9);
  }

  return result;
}

uint64_t sub_1000D54FC(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1000D550C(a1, a2);
  }

  return a1;
}

uint64_t sub_1000D550C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1000D5520(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1000D5530(a1, a2);
  }

  return a1;
}

uint64_t sub_1000D5530(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1000D5544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D55AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000D567C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_1000D5698(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000D56AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000D56F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1000D5738(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1000D5768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 424))
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

uint64_t sub_1000D57B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 392) = 0u;
    *(result + 408) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 424) = 1;
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

    *(result + 424) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000D586C(uint64_t a1)
{
  result = sub_10005C97C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D591C(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for Date();
  sub_100026610(v4, a3);
  sub_10000DAC0(v4, a3);
  return Date.init(timeIntervalSinceNow:)();
}

uint64_t sub_1000D5974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[188] = v8;
  v9[187] = a8;
  v9[186] = a7;
  v9[185] = a6;
  v9[184] = a5;
  v9[183] = a4;
  v9[182] = a3;
  v9[181] = a2;
  v9[180] = a1;
  v9[189] = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  v9[190] = swift_task_alloc();
  sub_10000CDE0(&qword_10023CA30, &qword_1001BE288);
  v9[191] = swift_task_alloc();
  sub_10000CDE0(&qword_10023CA38, &qword_1001BE290);
  v9[192] = swift_task_alloc();
  sub_10000CDE0(&qword_10023A718, qword_1001BBA70);
  v9[193] = swift_task_alloc();
  v9[194] = swift_task_alloc();
  v9[195] = swift_task_alloc();
  v9[196] = swift_task_alloc();
  v9[197] = swift_task_alloc();
  v10 = type metadata accessor for AdAttributionKitConversion();
  v9[198] = v10;
  v9[199] = *(v10 - 8);
  v9[200] = swift_task_alloc();
  v9[201] = swift_task_alloc();
  v9[202] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v9[203] = v11;
  v9[204] = *(v11 - 8);
  v9[205] = swift_task_alloc();
  v9[206] = swift_task_alloc();
  v9[207] = swift_task_alloc();

  return _swift_task_switch(sub_1000D5BF4, 0, 0);
}

uint64_t sub_1000D5BF4()
{
  v1 = v0[188];
  v2 = v0[181];
  v3 = v0[180];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = swift_allocObject();
  v0[208] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;

  v8 = swift_task_alloc();
  v0[209] = v8;
  *v8 = v0;
  v8[1] = sub_1000D5D14;

  return sub_10010FF18((v0 + 158), sub_1000E1CF0, v7, v4, v5, v6);
}

uint64_t sub_1000D5D14()
{
  *(*v1 + 1680) = v0;

  if (v0)
  {
    v2 = sub_1000D87CC;
  }

  else
  {
    v2 = sub_1000D5E38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D5E38(uint64_t a1)
{
  v2 = *(v1 + 1280);
  v3 = *(v1 + 1328);
  *(v1 + 1400) = *(v1 + 1312);
  *(v1 + 1416) = v3;
  *(v1 + 1432) = *(v1 + 1344);
  v4 = *(v1 + 1296);
  *(v1 + 1368) = v2;
  *(v1 + 1384) = v4;
  *(v1 + 1352) = *(v1 + 1264);
  v5 = *(v1 + 1368);
  *(v1 + 1688) = v5;
  v6 = *(v1 + 1376);
  *(v1 + 1257) = v6;
  v7 = *(v1 + 1400);
  *(v1 + 1696) = *(v1 + 1424);
  if (v7)
  {
    v8 = *(v1 + 1496);
    Date.init(timeIntervalSince1970:)();
    sub_1000D8D88(v8, (v1 + 256));
    v9 = *(v1 + 464);
    *(v1 + 208) = *(v1 + 448);
    *(v1 + 224) = v9;
    *(v1 + 240) = *(v1 + 480);
    v10 = *(v1 + 400);
    *(v1 + 144) = *(v1 + 384);
    *(v1 + 160) = v10;
    v11 = *(v1 + 432);
    *(v1 + 176) = *(v1 + 416);
    *(v1 + 192) = v11;
    v12 = *(v1 + 336);
    *(v1 + 80) = *(v1 + 320);
    *(v1 + 96) = v12;
    v13 = *(v1 + 368);
    *(v1 + 112) = *(v1 + 352);
    *(v1 + 128) = v13;
    v14 = *(v1 + 272);
    *(v1 + 16) = *(v1 + 256);
    *(v1 + 32) = v14;
    v15 = *(v1 + 304);
    *(v1 + 48) = *(v1 + 288);
    *(v1 + 64) = v15;
    if (sub_1000E1D58(v1 + 16) == 1)
    {
      v16 = swift_task_alloc();
      *(v1 + 1784) = v16;
      *v16 = v1;
      v16[1] = sub_1000D7548;
      v17 = *(v1 + 1488);
      v18 = *(v1 + 1448);
      v19 = *(v1 + 1440);

      return sub_1000D985C(v1 + 1168, v17, v19, v18);
    }

    if (!*(*(v1 + 1480) + 16) || (v26 = sub_1000C3CA8(*(v1 + 232)), (v27 & 1) == 0))
    {
      sub_10000DAF8(v1 + 1352, &qword_10023B690, &qword_1001B9260);
      sub_10000DAF8(v1 + 256, &qword_10023CA48, &qword_1001BE2A8);
      if (qword_100239D08 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_10000DAC0(v43, qword_10023FD48);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Impression required for reporting", v46, 2u);
      }

      sub_1000E17B4();
      v41 = swift_allocError();
      v42 = 4;
      goto LABEL_29;
    }

    v28 = *(*(v1 + 1480) + 56) + 224 * v26;
    v29 = *v28;
    v30 = *(v28 + 8);
    *(v1 + 1712) = *(v28 + 24);
    *(v1 + 1720) = *(v28 + 32);
    v31 = *(v28 + 56);
    *(v1 + 1728) = v31;
    v32 = *(v28 + 64);
    v109 = *(v28 + 128);
    v110 = v29;
    v33 = *(v28 + 136);
    *(v1 + 1258) = v33;
    v34 = *(v28 + 184);
    string = *(v28 + 176);
    string_8 = *(v28 + 216);

    sub_10000DAF8(v1 + 256, &qword_10023CA48, &qword_1001BE2A8);
    if ((v32 & 1) != 0 || HIDWORD(v31))
    {
      sub_10000DAF8(v1 + 1352, &qword_10023B690, &qword_1001B9260);

      if (qword_100239D08 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_10000DAC0(v59, qword_10023FD48);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "Source id is required for reporting", v62, 2u);
      }

      sub_1000E17B4();
      v41 = swift_allocError();
      *v63 = 0;
      goto LABEL_30;
    }

    if (v33)
    {
      v35 = v110;
      if (!v30)
      {
        sub_10000DAF8(v1 + 1352, &qword_10023B690, &qword_1001B9260);

        if (qword_100239D08 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_10000DAC0(v36, qword_10023FD48);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "Publisher type is required for reporting", v39, 2u);
        }

        sub_1000E17B4();
        v41 = swift_allocError();
        v42 = 5;
LABEL_29:
        *v40 = v42;
LABEL_30:
        swift_willThrow();
        *(v1 + 1824) = v41;
        if (qword_100239D08 != -1)
        {
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        sub_10000DAC0(v47, qword_10023FD48);
        swift_errorRetain();
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v50 = 138412290;
          swift_errorRetain();
          v52 = _swift_stdlib_bridgeErrorToNSError();
          *(v50 + 4) = v52;
          *v51 = v52;
          _os_log_impl(&_mh_execute_header, v48, v49, "Encountered error while donating purchase event: %@", v50, 0xCu);
          sub_10000DAF8(v51, &qword_100239F10, &qword_1001B4FD0);
        }

        swift_errorRetain();
        sub_1000CA6E0(v41, (v1 + 496));
        v53 = swift_task_alloc();
        *(v1 + 1832) = v53;
        *v53 = v1;
        v53[1] = sub_1000D88FC;
        v54 = *(v1 + 1688);
        v55 = *(v1 + 1448);
        v56 = *(v1 + 1440);
        v57 = *(v1 + 1257);
        v58 = (v1 + 496);
LABEL_35:

        return sub_1000D8F60(v58, v56, v55, v54, v57, v41);
      }
    }

    else
    {

      v30 = 0;
      v35 = v109;
    }

    *(v1 + 1744) = v30;
    *(v1 + 1736) = v35;
    v64 = *(v1 + 1632);
    v65 = *(v1 + 1624);
    v66 = *(v1 + 1576);
    v67 = *(v64 + 56);
    *(v1 + 1752) = v67;
    *(v1 + 1760) = (v64 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v67(v66, 1, 1, v65);
    if ((string_8 & 1) == 0)
    {
      v68 = *(v1 + 1624);
      v69 = *(v1 + 1576);
      v70 = *(v1 + 1568);
      Date.init(timeIntervalSince1970:)();
      sub_10000DAF8(v69, &qword_10023A718, qword_1001BBA70);
      v67(v70, 0, 1, v68);
      sub_1000E1DB8(v70, v69);
    }

    if (v34)
    {
      v71._countAndFlagsBits = string;
      v71._object = v34;
      v72 = _findStringSwitchCase(cases:string:)(&off_100214368, v71);

      if (!v72)
      {
        v73 = &enum case for AdAttributionKitAdInteractionType.view(_:);
        goto LABEL_56;
      }

      if (v72 == 1)
      {
        v73 = &enum case for AdAttributionKitAdInteractionType.click(_:);
LABEL_56:
        string_8a = v73;
        v108 = *(v1 + 1752);
        stringa = *(v1 + 1257);
        v107 = *(v1 + 1648);
        v106 = *(v1 + 1624);
        v82 = *(v1 + 1576);
        v83 = *(v1 + 1568);
        v84 = *(v1 + 1560);
        v85 = *(*(v1 + 1632) + 16);
        v85();
        sub_100014B50(v82, v84, &qword_10023A718, qword_1001BBA70);

        AdAttributionKitConversion.init()();

        AdAttributionKitConversion.conversionID.setter();
        AdAttributionKitConversion.advertisedItemID.setter();
        AdAttributionKitConversion.adNetworkID.setter();
        AdAttributionKitConversion.sourceID.setter();

        AdAttributionKitConversion.marketplaceID.setter();
        (v85)(v83, v107, v106);
        v108(v83, 0, 1, v106);
        AdAttributionKitConversion.conversionDate.setter();
        sub_100014B50(v84, v83, &qword_10023A718, qword_1001BBA70);
        AdAttributionKitConversion.impressionDate.setter();
        AdAttributionKitConversion.countryCode.setter();
        v86 = type metadata accessor for AdAttributionKitConversionType();
        v87 = *(v86 - 8);
        v88 = *(v1 + 1258);
        v89 = *(v1 + 1536);
        (*(v87 + 104))(v89, **(&off_10021E0F8 + stringa), v86);
        (*(v87 + 56))(v89, 0, 1, v86);
        AdAttributionKitConversion.conversionType.setter();
        if (v88 == 1)
        {
          AdAttributionKitConversion.sourceDomain.setter();
        }

        else
        {
          AdAttributionKitConversion.publisherItemID.setter();
        }

        v90 = *(v1 + 1648);
        v91 = *(v1 + 1632);
        v92 = *(v1 + 1624);
        stringb = *(v1 + 1576);
        v93 = *(v1 + 1560);
        v94 = *(v1 + 1528);
        v95 = type metadata accessor for AdAttributionKitAdInteractionType();
        v96 = *(v95 - 8);
        (*(v96 + 104))(v94, *string_8a, v95);
        (*(v96 + 56))(v94, 0, 1, v95);
        AdAttributionKitConversion.adInteractionType.setter();
        sub_10000DAF8(v1 + 1352, &qword_10023B690, &qword_1001B9260);
        sub_10000DAF8(v93, &qword_10023A718, qword_1001BBA70);
        v97 = *(v91 + 8);
        v97(v90, v92);
        sub_10000DAF8(stringb, &qword_10023A718, qword_1001BBA70);
        v98 = *(v1 + 1608);
        *(v1 + 1792) = v97;
        (*(*(v1 + 1592) + 32))(*(v1 + 1616), v98, *(v1 + 1584));
        if (qword_100239D08 != -1)
        {
          swift_once();
        }

        v99 = type metadata accessor for Logger();
        sub_10000DAC0(v99, qword_10023FD48);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          *v102 = 0;
          _os_log_impl(&_mh_execute_header, v100, v101, "Donating conversion event", v102, 2u);
        }

        v103 = *(v1 + 1504);

        sub_10000DA7C((v103 + 48), *(v103 + 72));
        v104 = swift_task_alloc();
        *(v1 + 1800) = v104;
        *v104 = v1;
        v104[1] = sub_1000D8390;
        v105 = *(v1 + 1616);

        return (sub_1000FB76C)(v105, &type metadata for BiomeEventStreamDog, &off_10021F658);
      }
    }

    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_10000DAC0(v74, qword_10023FD48);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "Missing SKAN interaction type", v77, 2u);
    }

    sub_1000E17B4();
    v78 = swift_allocError();
    *v79 = 9;
    sub_1000CA6E0(v78, (v1 + 944));

    v41 = swift_allocError();
    *(v1 + 1768) = v41;
    *v80 = 9;
    v81 = swift_task_alloc();
    *(v1 + 1776) = v81;
    *v81 = v1;
    v81[1] = sub_1000D6EC8;
    v55 = *(v1 + 1448);
    v56 = *(v1 + 1440);
    v58 = (v1 + 944);
    v54 = v5;
    v57 = v6;
    goto LABEL_35;
  }

  if (qword_100239D08 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000DAC0(v21, qword_10023FD48);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "No conversion metadata found for reporting", v24, 2u);
  }

  v25 = *(v1 + 8);

  return v25();
}