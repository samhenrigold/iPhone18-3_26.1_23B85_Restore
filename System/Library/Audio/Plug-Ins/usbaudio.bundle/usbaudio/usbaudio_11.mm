void sub_1000C2F74(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v27 = type metadata accessor for LogID(0);
  __chkstk_darwin(v27);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(a4 + 8) + 8);
  if (!(v9)[2](a3, v9) || (v11 = v10, ObjectType = swift_getObjectType(), v13 = (*(v11 + 240))(a2, ObjectType, v11), swift_unknownObjectRelease(), v13 == 7))
  {
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v14._countAndFlagsBits = 0xD000000000000016;
    v14._object = 0x80000001001305A0;
    String.append(_:)(v14);
    v31 = (v9)[6](a3, v9);
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x69766564206E6F20;
    v16._object = 0xEB00000000206563;
    String.append(_:)(v16);
    v17._countAndFlagsBits = (v9)[8](a3, v9);
    String.append(_:)(v17);

    v18._object = 0x80000001001305C0;
    v18._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v18);
    v31 = a2;
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);
  }

  else
  {
    if (v13 == 1)
    {
      sub_1000BF644(a1, a3, a4);
      return;
    }

    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    v20._countAndFlagsBits = 0xD000000000000020;
    v20._object = 0x80000001001305E0;
    String.append(_:)(v20);
    LOBYTE(v31) = v13;
    _print_unlocked<A, B>(_:_:)();
  }

  v21 = v29;
  v22 = v30;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A1BC(v27, qword_1001794F0);
  v24 = v28;
  sub_10000A2A4(v23, v28);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v25, qword_100179508);
  sub_100039F58(2, v24, v21, v22);

  sub_10000C9D0(v24);
  sub_10000CA2C();
  swift_allocError();
  *v26 = 2;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0xE000000000000000;
  swift_willThrow();
}

uint64_t sub_1000C3344()
{

  v1 = *(v0 + 96);
  if (v1 >> 60 != 15)
  {
    sub_10007676C(*(v0 + 88), v1);
  }

  return _swift_deallocObject(v0, 120, 7);
}

unint64_t sub_1000C33A4()
{
  result = qword_100177C40;
  if (!qword_100177C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177C40);
  }

  return result;
}

unint64_t sub_1000C33F8()
{
  result = qword_100177C48;
  if (!qword_100177C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177C48);
  }

  return result;
}

uint64_t sub_1000C344C()
{

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_1000C348C()
{
  result = qword_100177C50;
  if (!qword_100177C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177C50);
  }

  return result;
}

unint64_t sub_1000C34E4()
{
  result = qword_100177C58;
  if (!qword_100177C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177C58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AUATerminalControlSelector(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AUATerminalControlSelector(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000C36D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C3710()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C3748(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000C3D88(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

Swift::Int sub_1000C3DF4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = v0[6];
  v7 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_100124BFA[v1]);
  Hasher._combine(_:)(word_100124C42[v2]);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

void sub_1000C3EC4()
{
  v1 = v0[1];
  v2 = *(v0 + 1);
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = v0[6];
  v6 = *(v0 + 8);
  Hasher._combine(_:)(word_100124BFA[*v0]);
  Hasher._combine(_:)(word_100124C42[v1]);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v6);
}

Swift::Int sub_1000C3F64(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 1);
  v5 = *(v1 + 1);
  v6 = *(v1 + 2);
  v7 = v1[6];
  v8 = *(v1 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_100124BFA[v2]);
  Hasher._combine(_:)(word_100124C42[v3]);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

double sub_1000C4074()
{
  sub_100001AB4(&qword_1001781C8, &qword_100124B18);
  v0 = swift_allocObject();
  *&result = 4;
  *(v0 + 16) = xmmword_100120A30;
  *(v0 + 32) = 9480;
  *(v0 + 34) = -65536;
  *(v0 + 38) = 2;
  *(v0 + 40) = 1;
  *(v0 + 48) = -6400;
  *(v0 + 56) = 9480;
  *(v0 + 58) = -65536;
  *(v0 + 62) = 2;
  *(v0 + 64) = 2;
  *(v0 + 72) = -5120;
  *(v0 + 80) = 9736;
  *(v0 + 82) = -65536;
  *(v0 + 86) = 2;
  *(v0 + 88) = 1;
  *(v0 + 96) = -5120;
  *(v0 + 104) = 9736;
  *(v0 + 106) = -65536;
  *(v0 + 110) = 2;
  *(v0 + 112) = 2;
  *(v0 + 120) = -5120;
  qword_1001795C8 = v0;
  return result;
}

uint64_t (*ActiveFeatureUnit.function.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10002316C;
}

uint64_t sub_1000C41E8()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000C4248@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 80);
  v11[2] = *(v2 + 64);
  v11[3] = v4;
  v12 = *(v2 + 96);
  v5 = *(v2 + 48);
  v11[0] = *(v2 + 32);
  v11[1] = v5;
  a2[3] = &type metadata for FeatureUnit;
  a2[4] = a1();
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = *(v2 + 80);
  *(v6 + 48) = *(v2 + 64);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v2 + 96);
  v8 = *(v2 + 48);
  *(v6 + 16) = *(v2 + 32);
  *(v6 + 32) = v8;
  return sub_100076614(v11, v10);
}

unint64_t sub_1000C42DC()
{
  result = qword_100177FD0;
  if (!qword_100177FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177FD0);
  }

  return result;
}

uint64_t ActiveFeatureUnit.sourceID.getter()
{
  if (*(v0 + 40))
  {
    return 0;
  }

  else
  {
    return *(v0 + 32);
  }
}

void ActiveFeatureUnit.start(on:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  ObjectType = swift_getObjectType();
  v6 = (*(a2 + 16))(ObjectType, a2);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (qword_100173CF0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v8 = qword_1001795C8;
  v9 = *(qword_1001795C8 + 16);
  if (!v9)
  {
LABEL_26:

    return;
  }

  v10 = 0;
  v11 = OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceDescriptor;
  v12 = (qword_1001795C8 + 32);
  v29 = v3;
  while (1)
  {
    if (v10 >= *(v8 + 16))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v13 = *&v7[v11];
    if (word_100124BFA[*v12] == v13[4] && word_100124C42[v12[1]] == v13[5])
    {
      v14 = v13[6];
      v15 = v14 >= *(v12 + 1) && *(v12 + 2) >= v14;
      if (v15 && *(v3 + 48) == v12[6])
      {
        break;
      }
    }

LABEL_7:
    ++v10;
    v12 += 24;
    if (v9 == v10)
    {
      goto LABEL_26;
    }
  }

  v16 = *(v12 + 1);
  v32 = *(v12 + 8);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  v31 = v16;
  v18 = sub_10001EF4C(v16);
  v20 = v17[2];
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    goto LABEL_29;
  }

  v24 = v19;
  if (v17[3] >= v23)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = v18;
      sub_1000CCC34();
      v18 = v28;
    }
  }

  else
  {
    sub_1000CC2C8(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_10001EF4C(v16);
    if ((v24 & 1) != (v25 & 1))
    {
      goto LABEL_32;
    }
  }

  if (v24)
  {
    *(v17[7] + 2 * v18) = v32;
LABEL_6:
    v3 = v29;
    *(v29 + 112) = v17;
    swift_endAccess();
    goto LABEL_7;
  }

  v17[(v18 >> 6) + 8] |= 1 << v18;
  *(v17[6] + 8 * v18) = v31;
  *(v17[7] + 2 * v18) = v32;
  v26 = v17[2];
  v22 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v22)
  {
    v17[2] = v27;
    goto LABEL_6;
  }

  __break(1u);
LABEL_32:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void ActiveFeatureUnit.audioControlsAndProperties(scope:for:)(int a1, void *a2)
{
  v5 = type metadata accessor for LogID(0);
  __chkstk_darwin(v5);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 1735159650)
  {
    v59 = _swiftEmptyArrayStorage;
    v58 = _swiftEmptyArrayStorage;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong() || (v8 = v2[3], ObjectType = swift_getObjectType(), v10 = (*(v8 + 16))(ObjectType, v8), swift_unknownObjectRelease(), !v10))
    {
      sub_10000CA2C();
      swift_allocError();
      *v18 = 58;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0xE000000000000000;
      swift_willThrow();
      return;
    }

    v11 = __chkstk_darwin(v2[10]);
    v51[-6] = v10;
    LODWORD(v51[-5]) = a1;
    v51[-4] = &v59;
    v51[-3] = v2;
    v51[-2] = a2;
    v51[-1] = &v58;
    v51[2] = sub_1000CDF98(v11, sub_1000CCD80);
    v12 = v59;
    if (!v59[2] || (v51[1] = v58, !v58[2]))
    {

      return;
    }

    v56 = 0;
    v57 = 0xE000000000000000;
    _StringGuts.grow(_:)(74);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = v2[3];
      v14 = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(v14, v13);
      v17 = v16;
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0xE700000000000000;
      active = 0x6E776F6E6B6E55;
    }

    v19._countAndFlagsBits = active;
    v19._object = v17;
    String.append(_:)(v19);

    v20._countAndFlagsBits = 0xD000000000000022;
    v20._object = 0x80000001001309C0;
    String.append(_:)(v20);
    v55 = v2[6];
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22._object = 0x80000001001309F0;
    v22._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v22);
    v23._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v23);

    v24._countAndFlagsBits = 0x68436E696167205DLL;
    v24._object = 0xEF5B736C656E6E61;
    String.append(_:)(v24);
    v25._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 93;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    v27 = v56;
    v28 = v57;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v29 = sub_10000A1BC(v5, qword_1001794F0);
    sub_10000A2A4(v29, v7);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v30, qword_100179508);
    sub_100039AA0(2, v7, v27, v28);

    sub_10000C9D0(v7);
    v51[0] = v12;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v32 = type metadata accessor for AUASidetoneSubstituteProperty();
    v33 = objc_allocWithZone(v32);
    *&v33[OBJC_IVAR____TtC9AUASDCore29AUASidetoneSubstituteProperty_channels] = isa;
    v34 = objc_allocWithZone(ASDPropertyAddress);
    v35 = isa;
    v36 = [v34 initWithSelector:1634952563 scope:1886679669 element:0];
    v54.receiver = v33;
    v54.super_class = v32;
    v37 = objc_msgSendSuper2(&v54, "initWithAddress:propertyDataType:qualifierDataType:", v36, 1886155636, 0);

    if (v37)
    {
      v38 = v37;
      [v38 setSettable:0];

      v39 = Array._bridgeToObjectiveC()().super.isa;
      v40 = objc_allocWithZone(v32);
      *&v40[OBJC_IVAR____TtC9AUASDCore29AUASidetoneSubstituteProperty_channels] = v39;
      v41 = objc_allocWithZone(ASDPropertyAddress);
      v42 = v39;
      v43 = [v41 initWithSelector:1634956915 scope:1886679669 element:0];
      v53.receiver = v40;
      v53.super_class = v32;
      v44 = objc_msgSendSuper2(&v53, "initWithAddress:propertyDataType:qualifierDataType:", v43, 1886155636, 0);

      if (v44)
      {
        v45 = v44;
        [v45 setSettable:0];

        v46 = type metadata accessor for AUASidetoneSubstituteEnable();
        v47 = objc_allocWithZone(v46);
        v48 = [objc_allocWithZone(ASDPropertyAddress) initWithSelector:1634956133 scope:1886679669 element:0];
        v52.receiver = v47;
        v52.super_class = v46;
        v49 = objc_msgSendSuper2(&v52, "initWithAddress:propertyDataType:qualifierDataType:", v48, 1886155636, 0);

        if (v49)
        {
          [v49 setSettable:0];
          sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_100124960;
          *(v50 + 32) = v38;
          *(v50 + 40) = v45;
          *(v50 + 48) = v49;

          return;
        }

LABEL_22:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }
}

void *sub_1000C4CC0(const char *a1, uint64_t a2, void *a3, unsigned int a4, unint64_t a5, void *a6, void *a7, char *a8)
{
  v12 = _swiftEmptyArrayStorage;
  v25 = _swiftEmptyArrayStorage;
  v13 = *(a2 + 16);
  v14 = a3;

  v15 = a7;
  if (v13)
  {
    v16 = (a2 + 32);
    do
    {
      v17 = *v16;
      v24 = *(v16 + 2);
      v23 = v17;
      sub_1000C4DFC(&v23, v14, a4, a5, a1, a6, v15, a8, &v22);
      if (v22)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v12 = v25;
      }

      v16 = (v16 + 3);
      --v13;
    }

    while (v13);
  }

  return v12;
}

uint64_t sub_1000C4DFC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, unint64_t a4@<X3>, const char *a5@<X4>, void *a6@<X5>, void *a7@<X6>, char *a8@<X7>, objc_class *a9@<X8>)
{
  v122 = a7;
  v123 = a6;
  v129 = a5;
  v119 = type metadata accessor for LogID(0);
  __chkstk_darwin(v119);
  v120 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1 | (*(a1 + 2) << 16);
  LOBYTE(a1) = LockDelay.units.getter(*a1);
  if ((a1 & 1) == 0)
  {
    v18 = *(a2 + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
    if (v18)
    {
      if (sub_1000AA808(0x14u, v18))
      {
        result = 0;
LABEL_53:
        *a9 = result;
        return result;
      }
    }
  }

  v121 = a3;
  v124 = v9;
  USBDescriptorControl.label.getter(v16);
  v20 = (v16 >> 18) & 0x3C | (v16 >> 6);
  if (v20 <= 16)
  {
    if (v20 == 7)
    {

      LODWORD(v23) = v121;
      if (v121 == 1886679669)
      {
        a2 = *a4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a4 = a2;
        a8 = a9;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_42;
        }

        goto LABEL_76;
      }

      goto LABEL_45;
    }

    if (v20 != 8)
    {
      goto LABEL_47;
    }

    LODWORD(v23) = v121;
    a4 = v129;
    if (v121 == 1886679669)
    {
      a2 = *a8;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      *a8 = a2;
      v34 = a9;
      if ((v33 & 1) == 0)
      {
        a2 = sub_100025BB8(0, *(a2 + 16) + 1, 1, a2);
        *a8 = a2;
      }

      v36 = *(a2 + 16);
      v35 = *(a2 + 24);
      if (v36 >= v35 >> 1)
      {
        a2 = sub_100025BB8((v35 > 1), v36 + 1, 1, a2);
        *a8 = a2;
      }

      *(a2 + 16) = v36 + 1;
      a4 = v129;
      *(a2 + 8 * v36 + 32) = v129;
      a9 = v34;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_74;
    }

    v37 = objc_allocWithZone(type metadata accessor for AUAGainControl());
    v38 = v122;
    v39 = v122;

    v41 = a4;
    v42 = v16;
    v43 = v23;
LABEL_32:
    result = sub_1000C80F0(v40, v41, v42, v43, v38);
    goto LABEL_53;
  }

  if (v20 == 17)
  {
    v118 = a9;
    v120 = " trying to force unmute";
    sub_100001AB4(&unk_100177280, &unk_100120B70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10011DE90;
    *(inited + 32) = 0x4E6C6F72746E6F63;
    *(inited + 40) = 0xEB00000000656D61;
    v45 = objc_allocWithZone(NSString);
    v46 = String._bridgeToObjectiveC()();

    v47 = [v45 initWithString:v46];

    *(inited + 48) = v47;
    v48 = sub_10000AB64(inited);
    swift_setDeallocating();
    sub_10000D040(inited + 32, &qword_100174A38, &qword_100120180);
    sub_1000FC32C(0xD000000000000033, v120 | 0x8000000000000000, v48);

    if (qword_100173CF8 != -1)
    {
      swift_once();
    }

    v49 = *(qword_100179640 + 16);
    v50 = v121;
    if (!v49)
    {
      goto LABEL_70;
    }

    v51 = v49;
    v52 = String._bridgeToObjectiveC()();
    v53 = [v51 BOOLForKey:v52];

    result = 0;
    if (!v53 || v50 != 1768845428)
    {
      a9 = v118;
      goto LABEL_53;
    }

    a9 = v118;
    v54 = v129;
    if ((v129 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_81;
    }

    v55 = objc_allocWithZone(type metadata accessor for AUAGainControl());
    v38 = v122;
    v56 = v122;

    v41 = v54;
    v42 = v16;
    v43 = 1768845428;
    goto LABEL_32;
  }

  if (v20 == 19)
  {
    v118 = a9;
    v120 = " trying to force unmute";
    sub_100001AB4(&unk_100177280, &unk_100120B70);
    v57 = swift_initStackObject();
    *(v57 + 16) = xmmword_10011DE90;
    *(v57 + 32) = 0x4E6C6F72746E6F63;
    *(v57 + 40) = 0xEB00000000656D61;
    v58 = objc_allocWithZone(NSString);
    a8 = String._bridgeToObjectiveC()();

    v59 = [v58 initWithString:a8];

    *(v57 + 48) = v59;
    v60 = sub_10000AB64(v57);
    swift_setDeallocating();
    sub_10000D040(v57 + 32, &qword_100174A38, &qword_100120180);
    sub_1000FC32C(0xD000000000000033, v120 | 0x8000000000000000, v60);

    if (qword_100173CF8 != -1)
    {
      swift_once();
    }

    v61 = qword_100179640;
    v62 = *(qword_100179640 + 16);
    LODWORD(v23) = v121;
    if (v62)
    {
      a8 = "on Feature Unit control: ";
      v63 = v62;
      a2 = 0xD000000000000019;
      v64 = String._bridgeToObjectiveC()();
      v65 = [v63 objectForKey:v64];

      if (v65)
      {
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        sub_10000D040(&v125, &unk_100174A20, &unk_100120170);
        v66 = *(v61 + 16);
        if (!v66 || (v67 = v66, a2 = String._bridgeToObjectiveC()(), v68 = [v67 BOOLForKey:a2], v67, a2, !v68))
        {
LABEL_39:
          result = 0;
LABEL_52:
          a9 = v118;
          goto LABEL_53;
        }
      }

      else
      {

        v125 = 0u;
        v126 = 0u;
        sub_10000D040(&v125, &unk_100174A20, &unk_100120170);
      }
    }

    a4 = v129;
    if ((v129 & 0x8000000000000000) == 0)
    {
      v81 = objc_allocWithZone(type metadata accessor for AUAEntityBooleanControl());
      v82 = v122;
      v83 = v122;

      result = sub_1000C2194(v84, a4, v16, v23, 0x70687369u, v82, v81);
      goto LABEL_52;
    }

LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v20 != 20)
  {
LABEL_47:
    v129 = " trying to force unmute";
    sub_100001AB4(&unk_100177280, &unk_100120B70);
    v76 = swift_initStackObject();
    *(v76 + 16) = xmmword_10011DE90;
    *(v76 + 32) = 0x4E6C6F72746E6F63;
    *(v76 + 40) = 0xEB00000000656D61;
    v77 = objc_allocWithZone(NSString);
    v78 = String._bridgeToObjectiveC()();

    v79 = [v77 initWithString:v78];

    *(v76 + 48) = v79;
    v80 = sub_10000AB64(v76);
    swift_setDeallocating();
    sub_10000D040(v76 + 32, &qword_100174A38, &qword_100120180);
    sub_1000FC32C(0xD000000000000033, v129 | 0x8000000000000000, v80);

    result = 0;
    goto LABEL_53;
  }

  v117 = " trying to force unmute";
  v118 = a9;
  sub_100001AB4(&unk_100177280, &unk_100120B70);
  v21 = swift_initStackObject();
  v116 = xmmword_10011DE90;
  *(v21 + 16) = xmmword_10011DE90;
  *(v21 + 32) = 0x4E6C6F72746E6F63;
  a8 = (v21 + 32);
  *(v21 + 40) = 0xEB00000000656D61;
  v22 = objc_allocWithZone(NSString);
  v23 = String._bridgeToObjectiveC()();

  v24 = [v22 initWithString:v23];

  *(v21 + 48) = v24;
  v25 = sub_10000AB64(v21);
  swift_setDeallocating();
  sub_10000D040(v21 + 32, &qword_100174A38, &qword_100120180);
  sub_1000FC32C(0xD000000000000033, v117 | 0x8000000000000000, v25);

  if (qword_100173CF8 != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v26 = qword_100179640;
    v27 = *(qword_100179640 + 16);
    if (v27)
    {
      a2 = 0x46504832636461;
      v28 = v27;
      v29 = String._bridgeToObjectiveC()();
      a8 = [v28 objectForKey:v29];

      if (a8)
      {
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        sub_10000D040(&v125, &unk_100174A20, &unk_100120170);
        v30 = *(v26 + 16);
        if (!v30)
        {
          goto LABEL_39;
        }

        v31 = v30;
        a2 = String._bridgeToObjectiveC()();
        v32 = [v31 BOOLForKey:a2];

        if (!v32)
        {
          goto LABEL_39;
        }
      }

      else
      {

        v125 = 0u;
        v126 = 0u;
        sub_10000D040(&v125, &unk_100174A20, &unk_100120170);
      }
    }

    a4 = v129;
    if ((v129 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    a2 = sub_100025BB8(0, *(a2 + 16) + 1, 1, a2);
    *a4 = a2;
LABEL_42:
    a1 = *(a2 + 16);
    v70 = *(a2 + 24);
    if (a1 >= v70 >> 1)
    {
      a2 = sub_100025BB8((v70 > 1), a1 + 1, 1, a2);
      *a4 = a2;
    }

    *(a2 + 16) = a1 + 1;
    *(a2 + 8 * a1 + 32) = v129;
    a9 = a8;
LABEL_45:
    v71 = v129;
    if ((v129 & 0x8000000000000000) == 0)
    {
      v72 = objc_allocWithZone(type metadata accessor for AUAEntityBooleanControl());
      v73 = v122;
      v74 = v122;

      result = sub_1000C2194(v75, v71, v16, v23, 0x6D757465u, v73, v72);
      goto LABEL_53;
    }

    __break(1u);
LABEL_72:
    swift_once();
  }

  a9 = type metadata accessor for AUAHighPassFilterControl();
  v85 = objc_allocWithZone(a9);
  v86 = v122;
  v87 = v123;

  v88 = v124;
  result = sub_1000C6184(v16, a4);
  if (v88)
  {
    v122 = v85;
    v124 = a9;
    v89 = _convertErrorToNSError(_:)();
    v90 = [v89 code];

    if (v90 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else
    {
      a9 = v118;
      if (v90 <= 0x7FFFFFFF)
      {
        v85 = v86;
        *&v125 = 0;
        *(&v125 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(73);
        v128 = v125;
        v91._countAndFlagsBits = 0x20726F727245;
        v91._object = 0xE600000000000000;
        String.append(_:)(v91);
        sub_100001AB4(&qword_100173C98, &unk_100120120);
        v92 = swift_allocObject();
        *(v92 + 16) = v116;
        *(v92 + 56) = &type metadata for Int32;
        *(v92 + 64) = &protocol witness table for Int32;
        *(v92 + 32) = v90;
        v93._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v93);

        v94._countAndFlagsBits = 0xD000000000000029;
        v94._object = 0x8000000100130E30;
        String.append(_:)(v94);
        v95._countAndFlagsBits = USBDescriptorControl.label.getter(v16);
        String.append(_:)(v95);

        v96._countAndFlagsBits = 0x6C656E6E61686320;
        v96._object = 0xEA0000000000203ALL;
        String.append(_:)(v96);
        *&v125 = v129;
        v97._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v97);

        v98._countAndFlagsBits = 0x2065636976656420;
        v98._object = 0xE800000000000000;
        String.append(_:)(v98);
        v99 = v123;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v100 = v99[3];
          ObjectType = swift_getObjectType();
          active = ActiveFunction.deviceName.getter(ObjectType, v100);
          v104 = v103;
          swift_unknownObjectRelease();
        }

        else
        {
          v104 = 0xE700000000000000;
          active = 0x6E776F6E6B6E55;
        }

        v112._countAndFlagsBits = active;
        v112._object = v104;
        String.append(_:)(v112);

        v90 = *(&v128 + 1);
        v89 = v128;
        if (qword_100173CB8 == -1)
        {
          goto LABEL_66;
        }

        goto LABEL_79;
      }
    }

    __break(1u);
LABEL_79:
    swift_once();
LABEL_66:
    v113 = sub_10000A1BC(v119, qword_1001794F0);
    v114 = v120;
    sub_10000A2A4(v113, v120);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v115 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v115, qword_100179508);
    sub_100039F58(2, v114, v89, v90);

    sub_10000C9D0(v114);
    swift_deallocPartialClassInstance();
    result = 0;
    goto LABEL_53;
  }

  LODWORD(v124) = result;
  *&v85[OBJC_IVAR____TtC9AUASDCore24AUAHighPassFilterControl_featureUnit] = v87;
  *&v85[OBJC_IVAR____TtC9AUASDCore24AUAHighPassFilterControl_channel] = a4;
  v105 = &v85[OBJC_IVAR____TtC9AUASDCore24AUAHighPassFilterControl_control];
  v105[2] = BYTE2(v16);
  *v105 = v16;
  if (!HIDWORD(a4))
  {
    v127.receiver = v85;
    v127.super_class = a9;

    v106 = objc_msgSendSuper2(&v127, "initWithIsSettable:forElement:inScope:withPlugin:andObjectClassID:", a1 & 1, a4, v121, v86, 1751740518);
    if (v106)
    {
      v107 = v106;
      v108 = objc_opt_self();
      v109 = v107;
      v110 = String._bridgeToObjectiveC()();
      v111 = [v108 withValue:1 andName:v110 selected:v124 & 1];

      [v109 addValue:v111];

      result = v107;
      a9 = v118;
      goto LABEL_53;
    }

LABEL_70:
    result = 0;
    a9 = v118;
    goto LABEL_53;
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t ActiveFeatureUnit.latencyControlSelector.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    LODWORD(v2) = (*(v2 + 40))(ObjectType, v2) == 32;
    swift_unknownObjectRelease();
    return (16 * v2);
  }

  return result;
}

void sub_1000C5DCC(int a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v7 = *(v2 + 24), v8 = swift_getObjectType(), v9 = (*(v7 + 16))(v8, v7), swift_unknownObjectRelease(), v9))
  {
    v10 = *&v9[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
    if (v10 && sub_1000AA808(0x14u, v10) && (LockDelay.units.getter(a1) & 1) == 0)
    {
      sub_10000CA2C();
      swift_allocError();
      *v15 = 1;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0xE000000000000000;
      swift_willThrow();
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {

LABEL_12:
        LOBYTE(v16[0]) = Strong == 0;
        return;
      }

      v12 = *(v4 + 24);
      ObjectType = swift_getObjectType();
      v16[3] = type metadata accessor for ActiveFeatureUnit();
      v16[4] = &protocol witness table for ActiveFeatureUnit;
      v16[0] = v4;

      sub_100054C40(a1 & 0xFFFFFF, v16, a2, ObjectType, v12);

      swift_unknownObjectRelease();
      sub_10000CE78(v16);
      if (!v3)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_10000CA2C();
    swift_allocError();
    *v14 = 58;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    swift_willThrow();
  }
}

uint64_t sub_1000C5FB8(int a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v5 = *(v2 + 24), v6 = swift_getObjectType(), v7 = (*(v5 + 16))(v6, v5), swift_unknownObjectRelease(), v7))
  {
    v8 = *&v7[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
    if (v8 && sub_1000AA808(0x14u, v8) && (LockDelay.units.getter(a1) & 1) == 0)
    {
      sub_10000CA2C();
      swift_allocError();
      *v13 = 1;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0xE000000000000000;
      swift_willThrow();
    }

    else if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      v14[3] = type metadata accessor for ActiveFeatureUnit();
      v14[4] = &protocol witness table for ActiveFeatureUnit;
      v14[0] = v2;

      a2 = sub_100055164(a1 & 0xFFFFFF, v14, a2, ObjectType, v9);

      swift_unknownObjectRelease();
      sub_10000CE78(v14);
    }

    else
    {

      return 0;
    }
  }

  else
  {
    sub_10000CA2C();
    swift_allocError();
    *v11 = 58;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0xE000000000000000;
    swift_willThrow();
  }

  return a2;
}

BOOL sub_1000C6184(int a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v7 = *(v2 + 24), ObjectType = swift_getObjectType(), v9 = (*(v7 + 16))(ObjectType, v7), swift_unknownObjectRelease(), !v9))
  {
    sub_10000CA2C();
    swift_allocError();
    *v14 = 58;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v13;
  }

  v10 = *&v9[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
  if (v10 && sub_1000AA808(0x14u, v10) && (LockDelay.units.getter(a1) & 1) == 0)
  {
LABEL_13:
    sub_10000CA2C();
    swift_allocError();
    *v15 = 1;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0xE000000000000000;
    swift_willThrow();

    return v13;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_10000D040(v18, &qword_100175790, &unk_100121070);
    goto LABEL_13;
  }

  v11 = *(v2 + 24);
  v12 = swift_getObjectType();
  v17[3] = type metadata accessor for ActiveFeatureUnit();
  v17[4] = &protocol witness table for ActiveFeatureUnit;
  v17[0] = v4;

  ActiveFunction.getRawCur(forControl:onEntity:onChannel:)(a1 & 0xFFFFFF, v17, a2, v12, v11, v18);
  if (!v3)
  {
    swift_unknownObjectRelease();
    sub_10000CE78(v17);
    sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
    if (swift_dynamicCast())
    {

      return LOBYTE(v17[0]) != 0;
    }

    goto LABEL_13;
  }

  swift_unknownObjectRelease();
  sub_10000CE78(v17);
  return v13;
}

void sub_1000C63C8()
{
  v38 = type metadata accessor for LogID(0);
  __chkstk_darwin(v38);
  v37 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Mirror();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v5 = *(v0 + 80);
  if (!*(v5 + 16))
  {
    goto LABEL_33;
  }

  v6 = *(v5 + 32);
  v7 = *(v6 + 16);
  if (!v7)
  {
    swift_unknownObjectRelease();
    return;
  }

  v40 = v0;
  v39 = *(v0 + 24);
  v8 = (v2 + 8);
  v36 = " HPF value. Err: ";

  v9 = 0;
  v10 = 32;
  v35 = xmmword_10011DE90;
  v42 = v6;
  while (1)
  {
    v47 = v9;
    v48 = v7;
    v46 = v10;
    v12 = (v6 + v10);
    v13 = *(v6 + v10 + 2);
    v14 = *v12;
    v53 = &type metadata for USBDescriptorControl;
    v44 = v14;
    v45 = v13;
    BYTE2(v50) = v13;
    LOWORD(v50) = v14;
    Mirror.init(reflecting:)();
    Mirror.children.getter();
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v15 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    if (v15 != dispatch thunk of _AnyIndexBox._typeID.getter())
    {
      break;
    }

    v16 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v16)
    {

      v17 = *v8;
LABEL_14:
      v9 = v47;
      v17(v4, v43);

      goto LABEL_15;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    v19 = v50;
    v18 = v51;
    sub_10000CE78(&v52);
    v17 = *v8;
    if (!v18)
    {
      goto LABEL_14;
    }

    v17(v4, v43);
    v9 = v47;
    if (v19 == 1702131053 && v18 == 0xE400000000000000)
    {

      goto LABEL_16;
    }

LABEL_15:
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      v6 = v42;
      v11 = v48;
      goto LABEL_6;
    }

LABEL_16:
    v21 = v44 | (v45 << 16);
    ObjectType = swift_getObjectType();
    active = type metadata accessor for ActiveFeatureUnit();
    v49[3] = active;
    v49[4] = &protocol witness table for ActiveFeatureUnit;
    v49[0] = v40;

    ActiveFunction.getRawCur(forControl:onEntity:onChannel:)(v21 & 0xFFFFFF, v49, 0, ObjectType, v39, &v50);
    if (v9)
    {
      sub_10000CE78(v49);
      v9 = 0;
      v6 = v42;
      v11 = v48;
      v24 = _convertErrorToNSError(_:)();
      v25 = [v24 code];

      if (v25 < 0xFFFFFFFF80000000)
      {
        goto LABEL_31;
      }

      if (v25 > 0x7FFFFFFF)
      {
        goto LABEL_32;
      }

      v50 = 0;
      v51 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v50 = 0x20726F727245;
      v51 = 0xE600000000000000;
      sub_100001AB4(&qword_100173C98, &unk_100120120);
      v26 = swift_allocObject();
      *(v26 + 16) = v35;
      *(v26 + 56) = &type metadata for Int32;
      *(v26 + 64) = &protocol witness table for Int32;
      *(v26 + 32) = v25;
      v27._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v27);

      v28._object = (v36 | 0x8000000000000000);
      v28._countAndFlagsBits = 0xD000000000000017;
      String.append(_:)(v28);
      v29 = v50;
      v30 = v51;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v31 = sub_10000A1BC(v38, qword_1001794F0);
      v32 = v37;
      sub_10000A2A4(v31, v37);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v33, qword_100179508);
      sub_100039F58(2, v32, v29, v30);

      sub_10000C9D0(v32);
    }

    else
    {
      sub_10000CE78(v49);
      sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
      v34 = swift_dynamicCast();
      v6 = v42;
      v11 = v48;
      if ((v34 & 1) != 0 && LOBYTE(v49[0]) == 1)
      {
        v53 = active;
        v54 = &protocol witness table for ActiveFeatureUnit;
        v50 = v40;

        sub_100053170(v21 & 0xFFFFFF, 0, 0, &v50, 0, ObjectType, v39);
        sub_10000CE78(&v50);
      }
    }

LABEL_6:
    v10 = v46 + 3;
    v7 = v11 - 1;
    if (!v7)
    {
      swift_unknownObjectRelease();

      return;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveFeatureUnit.processTargetedInterrupt(attribute:controlSelector:channelNumber:)(AUASDCore::AUAInterruptAttribute attribute, Swift::UInt controlSelector, Swift::UInt channelNumber)
{
  v5 = v4;
  v6 = v3;
  v9 = attribute;
  v10 = type metadata accessor for LogID(0);
  v11 = __chkstk_darwin(v10);
  v13 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v9)
  {
    sub_10000CA2C();
    swift_allocError();
    *v14 = 2;
LABEL_39:
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v60 = v11;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_31;
  }

  v15 = *(v6 + 24);
  ObjectType = swift_getObjectType();
  v17 = (*(v15 + 256))(controlSelector, ObjectType, v15);
  swift_unknownObjectRelease();
  if (v17 > 0xBu)
  {
    if (v17 != 15 && v17 != 12)
    {
      goto LABEL_31;
    }
  }

  else if (v17)
  {
    if (v17 == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v19 = Strong;
      v20 = *(v6 + 24);
      v21 = swift_getObjectType();
      v22 = *(v6 + 48);
      v23 = type metadata accessor for AUAGainControl();
      v24 = &off_100165170;
      goto LABEL_24;
    }

LABEL_31:
    v46 = 0xEE00656369766544;
    v47 = 0x206E776F6E6B6E55;
    v58 = 0;
    v59 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v48 = *(v6 + 24);
      v49 = swift_getObjectType();
      v50 = (*(v48 + 16))(v49, v48);
      swift_unknownObjectRelease();
      if (v50)
      {
        v51 = [v50 boxName];

        if (v51)
        {
          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v52;
        }
      }
    }

    v53._countAndFlagsBits = v47;
    v53._object = v46;
    String.append(_:)(v53);

    v54._object = 0x8000000100130A10;
    v54._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v54);
    v19 = v58;
    v5 = v59;
    if (qword_100173CB8 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_42;
  }

  v26 = 0xEE00656369766544;
  v27 = 0x206E776F6E6B6E55;
  v58 = 0;
  v59 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(v6 + 24);
    v29 = swift_getObjectType();
    v30 = (*(v28 + 16))(v29, v28);
    swift_unknownObjectRelease();
    if (v30)
    {
      v31 = [v30 boxName];

      if (v31)
      {
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v32;
      }
    }
  }

  v33._countAndFlagsBits = v27;
  v33._object = v26;
  String.append(_:)(v33);

  v34._object = 0x8000000100130A30;
  v34._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v34);
  v35 = v58;
  v36 = v59;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v37 = sub_10000A1BC(v60, qword_1001794F0);
  sub_10000A2A4(v37, v13);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v38, qword_100179508);
  sub_100039AA0(2, v13, v35, v36);

  sub_10000C9D0(v13);
  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39)
  {
    v19 = v39;
    v20 = *(v6 + 24);
    v21 = swift_getObjectType();
    v22 = *(v6 + 48);
    v23 = type metadata accessor for AUAEntityBooleanControl();
    v24 = &off_100162B90;
LABEL_24:
    v13 = sub_100056D10(v22, channelNumber, v23, v24, v21, v20);
    swift_unknownObjectRelease();
    if (!v13)
    {
      return;
    }

    v60 = v13[2];
    if (!v60)
    {
LABEL_30:

      return;
    }

    v40 = 0;
    v41 = v13 + 5;
    while (v40 < v13[2])
    {
      v42 = *(v41 - 1);
      v43 = *v41;
      v44 = swift_getObjectType();
      v45 = *(v43 + 24);
      v19 = v42;
      v45(v44, v43);

      if (!v4)
      {
        ++v40;
        v41 += 2;
        if (v60 != v40)
        {
          continue;
        }
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_42:
    swift_once();
LABEL_36:
    v55 = sub_10000A1BC(v60, qword_1001794F0);
    sub_10000A2A4(v55, v13);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v56, qword_100179508);
    sub_100039AA0(2, v13, v19, v5);

    sub_10000C9D0(v13);
    sub_10000CA2C();
    swift_allocError();
    *v14 = 2;
    goto LABEL_39;
  }
}

void *ActiveFeatureUnit.deinit()
{
  sub_100024174(v0 + 16);

  return v0;
}

uint64_t ActiveFeatureUnit.__deallocating_deinit()
{
  sub_100024174(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1000C7178@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6 = *(v4 + 48);
  v5 = *(v4 + 64);
  v12 = *(v4 + 96);
  v7 = *(v4 + 80);
  v11[2] = v5;
  v11[3] = v7;
  v11[0] = *(v4 + 32);
  v11[1] = v6;
  a2[3] = &type metadata for FeatureUnit;
  a2[4] = a1();
  v8 = swift_allocObject();
  *a2 = v8;
  memmove((v8 + 16), (v4 + 32), 0x48uLL);
  return sub_100076614(v11, v10);
}

uint64_t (*sub_1000C720C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_100026374;
}

uint64_t sub_1000C72A4()
{
  v1 = *v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    LODWORD(v3) = (*(v3 + 40))(ObjectType, v3) == 32;
    swift_unknownObjectRelease();
    return (16 * v3);
  }

  return result;
}

void sub_1000C73AC(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LogID(0);
  __chkstk_darwin(v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v7 - 8);
  if (!a1)
  {
    return;
  }

  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() != 1 || !_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_48;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
LABEL_48:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_48;
  }

  v8 = *(a1 + 32);
LABEL_7:
  v65 = v8;
  v62 = [v8 selected];
  v67 = 0;
  v68 = 0xE000000000000000;
  _StringGuts.grow(_:)(91);
  v9._object = 0x8000000100130D30;
  v9._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v9);
  v63 = OBJC_IVAR____TtC9AUASDCore24AUAHighPassFilterControl_channel;
  v71._countAndFlagsBits = *&v2[OBJC_IVAR____TtC9AUASDCore24AUAHighPassFilterControl_channel];
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0xD000000000000015;
  v11._object = 0x8000000100130D60;
  String.append(_:)(v11);
  v12 = [v2 objectClass];
  v71._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_100046824(0, 4, 0);
  countAndFlagsBits = v71._countAndFlagsBits;
  v15 = *(v71._countAndFlagsBits + 16);
  v14 = *(v71._countAndFlagsBits + 24);
  v16 = v14 >> 1;
  v17 = v15 + 1;
  v64 = v4;
  if (v14 >> 1 <= v15)
  {
    sub_100046824((v14 > 1), v15 + 1, 1);
    countAndFlagsBits = v71._countAndFlagsBits;
    v14 = *(v71._countAndFlagsBits + 24);
    v16 = v14 >> 1;
  }

  *(countAndFlagsBits + 16) = v17;
  *(countAndFlagsBits + v15 + 32) = HIBYTE(v12);
  v18 = v15 + 2;
  if (v16 <= v17)
  {
    sub_100046824((v14 > 1), v15 + 2, 1);
    countAndFlagsBits = v71._countAndFlagsBits;
    v14 = *(v71._countAndFlagsBits + 24);
    v16 = v14 >> 1;
  }

  *(countAndFlagsBits + 16) = v18;
  *(countAndFlagsBits + v17 + 32) = BYTE2(v12);
  v19 = v15 + 3;
  if (v16 <= v18)
  {
    sub_100046824((v14 > 1), v15 + 3, 1);
  }

  v66 = v6;
  v20 = v71._countAndFlagsBits;
  *(v71._countAndFlagsBits + 16) = v19;
  *(v20 + v18 + 32) = BYTE1(v12);
  v21 = *(v20 + 24);
  if (v19 >= v21 >> 1)
  {
    sub_100046824((v21 > 1), v15 + 4, 1);
    v20 = v71._countAndFlagsBits;
  }

  *(v20 + 16) = v15 + 4;
  *(v20 + v19 + 32) = v12;
  v71._countAndFlagsBits = v20;
  static String.Encoding.ascii.getter();
  sub_100001AB4(&qword_100175CA8, &unk_100124860);
  sub_10001EB60(&qword_100175CB0, &qword_100175CA8, &unk_100124860, &protocol conformance descriptor for [A]);
  v22 = String.init<A>(bytes:encoding:)();
  v24 = v23;

  v71._countAndFlagsBits = 39;
  v71._object = 0xE100000000000000;
  if (v24)
  {
    v25 = v22;
  }

  else
  {
    v25 = 1061109567;
  }

  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0xE400000000000000;
  }

  v27 = v26;
  String.append(_:)(*&v25);

  v28._countAndFlagsBits = 39;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  String.append(_:)(v71);

  v29._countAndFlagsBits = 0x6F637320646E6120;
  v29._object = 0xEB00000000206570;
  String.append(_:)(v29);
  v30 = [v2 controlScope];
  v71._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_100046824(0, 4, 0);
  v31 = v71._countAndFlagsBits;
  v33 = *(v71._countAndFlagsBits + 16);
  v32 = *(v71._countAndFlagsBits + 24);
  v34 = v32 >> 1;
  v35 = v33 + 1;
  if (v32 >> 1 <= v33)
  {
    sub_100046824((v32 > 1), v33 + 1, 1);
    v31 = v71._countAndFlagsBits;
    v32 = *(v71._countAndFlagsBits + 24);
    v34 = v32 >> 1;
  }

  *(v31 + 16) = v35;
  *(v31 + v33 + 32) = HIBYTE(v30);
  v36 = v33 + 2;
  if (v34 <= v35)
  {
    sub_100046824((v32 > 1), v33 + 2, 1);
    v31 = v71._countAndFlagsBits;
    v32 = *(v71._countAndFlagsBits + 24);
    v34 = v32 >> 1;
  }

  v37 = v62;
  *(v31 + 16) = v36;
  *(v31 + v35 + 32) = BYTE2(v30);
  v38 = v33 + 3;
  if (v34 <= v36)
  {
    sub_100046824((v32 > 1), v33 + 3, 1);
  }

  v39 = v71._countAndFlagsBits;
  *(v71._countAndFlagsBits + 16) = v38;
  *(v39 + v36 + 32) = BYTE1(v30);
  v40 = *(v39 + 24);
  if (v38 >= v40 >> 1)
  {
    sub_100046824((v40 > 1), v33 + 4, 1);
    v39 = v71._countAndFlagsBits;
  }

  *(v39 + 16) = v33 + 4;
  *(v39 + v38 + 32) = v30;
  v71._countAndFlagsBits = v39;
  static String.Encoding.ascii.getter();
  v41 = String.init<A>(bytes:encoding:)();
  v43 = v42;

  v71._countAndFlagsBits = 39;
  v71._object = 0xE100000000000000;
  if (v43)
  {
    v44 = v41;
  }

  else
  {
    v44 = 1061109567;
  }

  if (v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0xE400000000000000;
  }

  v46 = v45;
  String.append(_:)(*&v44);

  v47._countAndFlagsBits = 39;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);
  String.append(_:)(v71);

  v48._countAndFlagsBits = 0xD000000000000012;
  v48._object = 0x8000000100130D80;
  String.append(_:)(v48);
  v71._countAndFlagsBits = v37;
  v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v49);

  v50 = v67;
  v51 = v68;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v52 = sub_10000A1BC(v64, qword_1001794F0);
  v53 = v66;
  sub_10000A2A4(v52, v66);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v54, qword_100179508);
  sub_100039AA0(2, v53, v50, v51);

  sub_10000C9D0(v53);
  v55 = *&v2[OBJC_IVAR____TtC9AUASDCore24AUAHighPassFilterControl_featureUnit];
  v56 = v2[OBJC_IVAR____TtC9AUASDCore24AUAHighPassFilterControl_control + 2];
  v57 = *&v2[OBJC_IVAR____TtC9AUASDCore24AUAHighPassFilterControl_control];
  v58 = *&v2[v63];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v59 = *(v55 + 24);
    ObjectType = swift_getObjectType();
    active = type metadata accessor for ActiveFeatureUnit();
    v70 = &protocol witness table for ActiveFeatureUnit;
    v67 = v55;

    sub_100053170((v57 | (v56 << 16)) & 0xFFFFFF, v58, 0, &v67, v37, ObjectType, v59);
    swift_unknownObjectRelease();

    sub_10000CE78(&v67);
  }

  else
  {
  }
}

uint64_t sub_1000C7DD0(uint64_t result, float a2, float a3, float a4, float a5)
{
  if (a2 < 0.0 || a2 > 1.0)
  {
    return result;
  }

  v6 = (a4 - a3) / a5;
  if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v6 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 >= 1.8447e19)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v6)
  {
    return result;
  }

  v7 = (((1.0 / v6) * 0.5) + a2) * v6;
  if ((LODWORD(v7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_19;
  }

  if (v7 <= -9.2234e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v7 >= 9.2234e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v8 = *(result + 16) - 1;
  if (v8 >= v7)
  {
    v8 = v7;
  }

  if (v8 < 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000C7EB4(float a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3 == 1)
  {
    v4 = *(v2 + 32);
    v5 = *(v2 + 36);
    v6 = *(v2 + 40);
    v7 = *(v2 + 48);
LABEL_10:

    return sub_1000C7DD0(v7, a1, v4, v5, v6);
  }

  else
  {
    v8 = (v2 + 40);
    v9 = v3 + 1;
    v10 = 0.0;
    while (--v9)
    {
      v11 = v10;
      v4 = *(v8 - 2);
      v5 = *(v8 - 1);
      v6 = *v8;
      v12 = (v5 - v4) / *v8;
      if (COERCE_INT(fabs(v12)) > 2139095039)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        break;
      }

      if (v12 <= -1.0)
      {
        goto LABEL_14;
      }

      if (v12 >= 1.8447e19)
      {
        goto LABEL_15;
      }

      v8 += 6;
      v10 = v11 + (v12 / v1[1]);
      if (v10 >= a1)
      {
        v7 = *(v8 - 2);
        a1 = (a1 - v11) / (v10 - v11);
        goto LABEL_10;
      }
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C7FD4(float a1)
{
  v2 = *(*v1 + 16);
  if (v2 != 1)
  {
    if (v2)
    {
      v3 = (*v1 + 40);
      v4 = 0.0;
      while (1)
      {
        v5 = *(v3 - 2);
        v6 = *(v3 - 1);
        v7 = (v6 - v5) / *v3;
        if (COERCE_INT(fabs(v7)) > 2139095039)
        {
          break;
        }

        if (v7 <= -1.0)
        {
          goto LABEL_12;
        }

        if (v7 >= 1.8447e19)
        {
          goto LABEL_13;
        }

        v8 = v7 / v1[1];
        if (v5 <= a1 && v6 >= a1)
        {
          return result;
        }

        v4 = v4 + v8;
        v3 += 6;
        if (!--v2)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
    }

LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C80F0(uint64_t a1, uint64_t a2, int a3, unsigned int a4, void *a5)
{
  v6 = v5;
  v182 = a4;
  v189 = 0x6E776F6E6B6E55;
  v11 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v11 - 8);
  v183 = v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for LogID(0);
  __chkstk_darwin(v186);
  v187 = v178 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9AUASDCore14AUAGainControl_featureUnit;
  *&v5[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_featureUnit] = a1;
  v15 = &v5[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_control];
  v15[2] = BYTE2(a3);
  *v15 = a3;
  *&v5[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_channel] = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v188 = a5;
  if (Strong)
  {
    v184 = v5;
    LODWORD(v185) = a3;
    v17 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 16);

    v20 = v19(ObjectType, v17);
    swift_unknownObjectRelease();
    if (v20 && (v21 = [v20 boxName], v20, v21))
    {
      v189 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v23 = 0xE700000000000000;
    }

    v6 = v184;
    a3 = v185;
  }

  else
  {

    v23 = 0xE700000000000000;
  }

  v24 = sub_1000C5FB8(a3 & 0xFFFFFF, a2);

  if (!v24)
  {
    sub_10000CA2C();
    swift_allocError();
    v34 = 1;
    goto LABEL_15;
  }

  v25 = *(v24 + 16);
  if (!v25)
  {

    sub_10000CA2C();
    swift_allocError();
    v34 = 125;
LABEL_15:
    *v33 = v34;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0xE000000000000000;
    swift_willThrow();
    v35 = _convertErrorToNSError(_:)();
    v36 = [v35 code];

    if (v36 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v36 <= 0x7FFFFFFF)
    {
      v190 = 0;
      v191 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v37._countAndFlagsBits = v189;
      v37._object = v23;
      String.append(_:)(v37);

      v38._countAndFlagsBits = 0x20726F727245203ALL;
      v38._object = 0xE800000000000000;
      String.append(_:)(v38);
      sub_100001AB4(&qword_100173C98, &unk_100120120);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_10011DE90;
      *(v39 + 56) = &type metadata for Int32;
      *(v39 + 64) = &protocol witness table for Int32;
      *(v39 + 32) = v36;
      v40._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v40);

      v41._countAndFlagsBits = 0xD000000000000022;
      v41._object = 0x8000000100130EA0;
      String.append(_:)(v41);
      v194._countAndFlagsBits = *(a1 + 48);
      v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v42);

      v43._countAndFlagsBits = 0x6F72746E6F63205DLL;
      v43._object = 0xEB00000000203A6CLL;
      String.append(_:)(v43);
      v44._countAndFlagsBits = USBDescriptorControl.label.getter(a3 & 0xFFFFFF);
      String.append(_:)(v44);

      v45._countAndFlagsBits = 0x6C656E6E61686320;
      v45._object = 0xEA0000000000203ALL;
      String.append(_:)(v45);
      v194._countAndFlagsBits = a2;
      v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v46);

      v35 = v190;
      v36 = v191;
      if (qword_100173CB8 == -1)
      {
LABEL_18:
        v47 = sub_10000A1BC(v186, qword_1001794F0);
        v48 = v187;
        sub_10000A2A4(v47, v187);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v49, qword_100179508);
        sub_100039F58(2, v48, v35, v36);

        sub_10000C9D0(v48);
LABEL_21:

LABEL_22:
        type metadata accessor for AUAGainControl();
        swift_deallocPartialClassInstance();
        return 0;
      }

LABEL_105:
      swift_once();
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_105;
  }

  if (v25 != 1)
  {
    v185 = v23;
    v51 = *&v6[v14];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v52 = *(v51 + 24);
      v53 = swift_getObjectType();
      v54 = (*(v52 + 16))(v53, v52);
      swift_unknownObjectRelease();
      v184 = v54;
      if (v54)
      {
        v181 = "for Feature Unit[";
        sub_100001AB4(&unk_100177280, &unk_100120B70);
        inited = swift_initStackObject();
        *(inited + 32) = 0x65676E61526D756ELL;
        v180 = inited + 32;
        *(inited + 16) = xmmword_100121960;
        *(inited + 40) = 0xE900000000000073;
        *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:v25];
        *(inited + 56) = 0x4E6C6F72746E6F63;
        *(inited + 64) = 0xEB00000000656D61;
        USBDescriptorControl.label.getter(a3 & 0xFFFFFF);
        v179 = objc_allocWithZone(NSString);
        v56 = String._bridgeToObjectiveC()();

        v57 = [v179 initWithString:v56];

        *(inited + 72) = v57;
        v58 = sub_10000AB64(inited);
        swift_setDeallocating();
        sub_100001AB4(&qword_100174A38, &qword_100120180);
        swift_arrayDestroy();
        v59 = v184;
        sub_1000FC32C(0xD000000000000038, v181 | 0x8000000000000000, v58);
      }
    }

    v60 = (v24 + 36);
    v61 = *(v24 + 16) + 1;
    v23 = v185;
    while (--v61)
    {
      v62 = *v60 > *(v60 - 1);
      v60 += 3;
      if (!v62)
      {
        v63 = v185;

        v190 = 0;
        v191 = 0xE000000000000000;
        _StringGuts.grow(_:)(83);
        v64._countAndFlagsBits = v189;
        v64._object = v63;
        String.append(_:)(v64);

        v65._countAndFlagsBits = 0xD000000000000021;
        v65._object = 0x8000000100130F90;
        String.append(_:)(v65);
        v194._countAndFlagsBits = *(a1 + 48);
        v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v66);

        v67._countAndFlagsBits = 0x6F72746E6F63205DLL;
        v67._object = 0xEB00000000203A6CLL;
        String.append(_:)(v67);
        v68._countAndFlagsBits = USBDescriptorControl.label.getter(a3 & 0xFFFFFF);
        String.append(_:)(v68);

        v69._countAndFlagsBits = 0x6C656E6E61686320;
        v69._object = 0xEA0000000000203ALL;
        String.append(_:)(v69);
        v194._countAndFlagsBits = a2;
        v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v70);

        v71._countAndFlagsBits = 0x206E696D20;
        v71._object = 0xE500000000000000;
        String.append(_:)(v71);
        Float.write<A>(to:)();
        v72._countAndFlagsBits = 0x2078616D20;
        v72._object = 0xE500000000000000;
        String.append(_:)(v72);
        Float.write<A>(to:)();
        v73._countAndFlagsBits = 0x2073657220;
        v73._object = 0xE500000000000000;
        String.append(_:)(v73);
        Float.write<A>(to:)();
        v74 = v190;
        v75 = v191;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v76 = sub_10000A1BC(v186, qword_1001794F0);
        v77 = v187;
        sub_10000A2A4(v76, v187);
        if (qword_100173CC0 != -1)
        {
          goto LABEL_109;
        }

        goto LABEL_37;
      }
    }
  }

  v26 = sub_1000CDD3C(v24);
  if (!v26)
  {
    v190 = 0;
    v191 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v78 = v189;
    v79._countAndFlagsBits = v189;
    v79._object = v23;
    String.append(_:)(v79);
    v80._countAndFlagsBits = 0xD000000000000029;
    v80._object = 0x8000000100130ED0;
    String.append(_:)(v80);
    v81._countAndFlagsBits = USBDescriptorControl.label.getter(a3 & 0xFFFFFF);
    String.append(_:)(v81);

    v82._countAndFlagsBits = 0x6C656E6E61686320;
    v82._object = 0xEA0000000000203ALL;
    String.append(_:)(v82);
    v194._countAndFlagsBits = a2;
    v83._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v83);

    v84._countAndFlagsBits = 0x2065636976656420;
    v84._object = 0xE800000000000000;
    String.append(_:)(v84);
    v85._countAndFlagsBits = v78;
    v85._object = v23;
    String.append(_:)(v85);

    v74 = v190;
    v75 = v191;
    v77 = v187;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v86 = sub_10000A1BC(v186, qword_1001794F0);
    sub_10000A2A4(v86, v77);
    if (qword_100173CC0 != -1)
    {
LABEL_109:
      swift_once();
    }

LABEL_37:
    v87 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v87, qword_100179508);
    sub_100039F58(2, v77, v74, v75);

    sub_10000C9D0(v77);
    goto LABEL_21;
  }

  v31 = &v6[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_range];
  *v31 = v26;
  *(v31 + 1) = v27;
  v31[16] = v28 & 1;
  *(v31 + 5) = v29;
  *(v31 + 6) = v30;
  v184 = v31;

  sub_1000C5DCC(a3 & 0xFFFFFF, a2);
  v88 = v32;

  if ((v88 & 0x100000000) != 0)
  {
    sub_10000CA2C();
    v145 = swift_allocError();
    *v146 = 1;
    *(v146 + 8) = 0;
    *(v146 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_75;
  }

  v181 = 0;
  v190 = 0;
  v191 = 0xE000000000000000;
  _StringGuts.grow(_:)(115);
  v89._countAndFlagsBits = v189;
  v185 = v23;
  v89._object = v23;
  String.append(_:)(v89);
  v90._object = 0x8000000100130F30;
  v90._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v90);
  v194._countAndFlagsBits = *(*&v6[v14] + 48);
  v91._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v91);

  v92._countAndFlagsBits = 0x656E6E616863205DLL;
  v92._object = 0xEA00000000005B6CLL;
  String.append(_:)(v92);
  v194._countAndFlagsBits = a2;
  v93._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v93);

  v94._countAndFlagsBits = 0xD000000000000011;
  v94._object = 0x8000000100130C80;
  String.append(_:)(v94);
  v194._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_100046824(0, 4, 0);
  countAndFlagsBits = v194._countAndFlagsBits;
  v97 = *(v194._countAndFlagsBits + 16);
  v96 = *(v194._countAndFlagsBits + 24);
  v98 = v96 >> 1;
  v99 = v97 + 1;
  if (v96 >> 1 <= v97)
  {
    sub_100046824((v96 > 1), v97 + 1, 1);
    countAndFlagsBits = v194._countAndFlagsBits;
    v96 = *(v194._countAndFlagsBits + 24);
    v98 = v96 >> 1;
  }

  *(countAndFlagsBits + 16) = v99;
  *(countAndFlagsBits + v97 + 32) = 118;
  v100 = v97 + 2;
  if (v98 < (v97 + 2))
  {
    sub_100046824((v96 > 1), v97 + 2, 1);
    countAndFlagsBits = v194._countAndFlagsBits;
    v96 = *(v194._countAndFlagsBits + 24);
    v98 = v96 >> 1;
  }

  *(countAndFlagsBits + 16) = v100;
  *(countAndFlagsBits + v99 + 32) = 108;
  v101 = v97 + 3;
  if (v98 < (v97 + 3))
  {
    sub_100046824((v96 > 1), v97 + 3, 1);
  }

  v180 = v88;
  v102 = v194._countAndFlagsBits;
  *(v194._countAndFlagsBits + 16) = v101;
  *(v102 + v100 + 32) = 109;
  v103 = *(v102 + 24);
  if ((v97 + 4) > (v103 >> 1))
  {
    sub_100046824((v103 > 1), v97 + 4, 1);
    v102 = v194._countAndFlagsBits;
  }

  *(v102 + 16) = v97 + 4;
  *(v102 + v101 + 32) = 101;
  v194._countAndFlagsBits = v102;
  static String.Encoding.ascii.getter();
  v104 = sub_100001AB4(&qword_100175CA8, &unk_100124860);
  v105 = sub_10001EB60(&qword_100175CB0, &qword_100175CA8, &unk_100124860, &protocol conformance descriptor for [A]);
  v179 = v104;
  v178[1] = v105;
  v106 = String.init<A>(bytes:encoding:)();
  v108 = v107;

  v194._countAndFlagsBits = 39;
  v194._object = 0xE100000000000000;
  if (v108)
  {
    v109 = v106;
  }

  else
  {
    v109 = 1061109567;
  }

  if (v108)
  {
    v110 = v108;
  }

  else
  {
    v110 = 0xE400000000000000;
  }

  v111 = v110;
  String.append(_:)(*&v109);

  v112._countAndFlagsBits = 39;
  v112._object = 0xE100000000000000;
  String.append(_:)(v112);
  String.append(_:)(v194);

  v113._countAndFlagsBits = 0x2065706F6373205DLL;
  v113._object = 0xE90000000000005BLL;
  String.append(_:)(v113);
  v194._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_100046824(0, 4, 0);
  v114 = v194._countAndFlagsBits;
  v116 = *(v194._countAndFlagsBits + 16);
  v115 = *(v194._countAndFlagsBits + 24);
  v117 = v115 >> 1;
  v118 = v116 + 1;
  if (v115 >> 1 <= v116)
  {
    sub_100046824((v115 > 1), v116 + 1, 1);
    v114 = v194._countAndFlagsBits;
    v115 = *(v194._countAndFlagsBits + 24);
    v117 = v115 >> 1;
  }

  v119 = v182;
  v120 = *&v180;
  *(v114 + 16) = v118;
  *(v114 + v116 + 32) = HIBYTE(v119);
  v121 = v116 + 2;
  if (v117 <= v118)
  {
    sub_100046824((v115 > 1), v116 + 2, 1);
    v119 = v182;
    v114 = v194._countAndFlagsBits;
    v115 = *(v194._countAndFlagsBits + 24);
    v117 = v115 >> 1;
  }

  v122 = v120;
  *(v114 + 16) = v121;
  *(v114 + v118 + 32) = BYTE2(v119);
  v123 = v116 + 3;
  if (v117 <= v121)
  {
    sub_100046824((v115 > 1), v116 + 3, 1);
    LOWORD(v119) = v182;
  }

  v180 = a2;
  v124 = v194._countAndFlagsBits;
  *(v194._countAndFlagsBits + 16) = v123;
  *(v124 + v121 + 32) = BYTE1(v119);
  v125 = *(v124 + 24);
  if (v123 >= v125 >> 1)
  {
    sub_100046824((v125 > 1), v116 + 4, 1);
    LOBYTE(v119) = v182;
    v124 = v194._countAndFlagsBits;
  }

  *(v124 + 16) = v116 + 4;
  *(v124 + v123 + 32) = v119;
  v194._countAndFlagsBits = v124;
  static String.Encoding.ascii.getter();
  v126 = String.init<A>(bytes:encoding:)();
  v128 = v127;

  v194._countAndFlagsBits = 39;
  v194._object = 0xE100000000000000;
  if (v128)
  {
    v129 = v126;
  }

  else
  {
    v129 = 1061109567;
  }

  if (v128)
  {
    v130 = v128;
  }

  else
  {
    v130 = 0xE400000000000000;
  }

  v131 = v130;
  String.append(_:)(*&v129);

  v132._countAndFlagsBits = 39;
  v132._object = 0xE100000000000000;
  String.append(_:)(v132);
  String.append(_:)(v194);

  v133._countAndFlagsBits = 0xD000000000000023;
  v133._object = 0x8000000100130F60;
  String.append(_:)(v133);
  Float.write<A>(to:)();
  v134 = v190;
  v135 = v191;
  v136 = v188;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v137 = sub_10000A1BC(v186, qword_1001794F0);
  v138 = v187;
  sub_10000A2A4(v137, v187);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v139 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v139, qword_100179508);
  sub_100039AA0(2, v138, v134, v135);

  sub_10000C9D0(v138);
  result = LockDelay.units.getter(a3);
  v140 = result;
  if (result)
  {
    v141 = *v184;
    v142 = *(*v184 + 16);
    if (v142)
    {
      v143 = *(v141 + 32);
      v144 = *(v141 + 24 * v142 + 12);
    }

    else
    {
      v143 = 0.0;
      v144 = 0.0;
    }

    if (v144 >= v120)
    {
      v144 = v120;
    }

    if (v143 > v144)
    {
      v122 = v143;
    }

    else
    {
      v122 = v144;
    }

    v162 = v122 * 256.0;
    if (COERCE_INT(fabs(v122 * 256.0)) > 2139095039)
    {
      goto LABEL_112;
    }

    if (v162 <= -32769.0)
    {
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    if (v162 >= 32768.0)
    {
LABEL_114:
      __break(1u);
      return result;
    }

    v163 = *&v6[v14];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v164 = v163[3];
      v165 = swift_getObjectType();
      active = type metadata accessor for ActiveFeatureUnit();
      v193 = &protocol witness table for ActiveFeatureUnit;
      v190 = v163;
      swift_retain_n();
      v166 = v164;
      v167 = v181;
      sub_100053170(a3 & 0xFFFFFF, v180, 0, &v190, v162, v165, v166);
      if (v167)
      {
        swift_unknownObjectRelease();

        sub_10000CE78(&v190);
        a2 = v180;
        v23 = v185;
        v145 = v167;
LABEL_75:
        v147 = _convertErrorToNSError(_:)();
        v148 = [v147 code];

        if (v148 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else
        {
          v181 = v145;
          if (v148 <= 0x7FFFFFFF)
          {
            v190 = 0;
            v191 = 0xE000000000000000;
            _StringGuts.grow(_:)(70);
            v149._countAndFlagsBits = v189;
            v149._object = v23;
            String.append(_:)(v149);

            v150._countAndFlagsBits = 0x20726F72724520;
            v150._object = 0xE700000000000000;
            String.append(_:)(v150);
            sub_100001AB4(&qword_100173C98, &unk_100120120);
            v151 = swift_allocObject();
            *(v151 + 16) = xmmword_10011DE90;
            *(v151 + 56) = &type metadata for Int32;
            *(v151 + 64) = &protocol witness table for Int32;
            *(v151 + 32) = v148;
            v152._countAndFlagsBits = String.init(format:_:)();
            String.append(_:)(v152);

            v153._object = 0x8000000100130F00;
            v153._countAndFlagsBits = 0xD000000000000020;
            String.append(_:)(v153);
            v196 = *(*&v6[v14] + 48);
            v154._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v154);

            v155._countAndFlagsBits = 0x6F72746E6F63205DLL;
            v155._object = 0xEB00000000203A6CLL;
            String.append(_:)(v155);
            v156._countAndFlagsBits = USBDescriptorControl.label.getter(a3 & 0xFFFFFF);
            String.append(_:)(v156);

            v157._countAndFlagsBits = 0x6C656E6E61686320;
            v157._object = 0xEA0000000000203ALL;
            String.append(_:)(v157);
            v196 = a2;
            v158._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v158);

            v147 = v190;
            v148 = v191;
            if (qword_100173CB8 == -1)
            {
LABEL_78:
              v159 = sub_10000A1BC(v186, qword_1001794F0);
              v160 = v187;
              sub_10000A2A4(v159, v187);
              if (qword_100173CC0 != -1)
              {
                swift_once();
              }

              v161 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v161, qword_100179508);
              sub_100039F58(2, v160, v147, v148);

              sub_10000C9D0(v160);

              goto LABEL_22;
            }

LABEL_108:
            swift_once();
            goto LABEL_78;
          }
        }

        __break(1u);
        goto LABEL_108;
      }

      swift_unknownObjectRelease();

      result = sub_10000CE78(&v190);
    }

    else
    {
    }

    v136 = v188;
  }

  else
  {
  }

  v168 = *v184;
  v169 = *(*v184 + 16);
  if (v169)
  {
    v170 = *(v168 + 32);
    v171 = *(v168 + 24 * v169 + 12);
  }

  else
  {
    v170 = 0;
    v171 = 0;
  }

  v172 = v180;
  if (HIDWORD(v180))
  {
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v173 = type metadata accessor for AUAGainControl();
  v195.receiver = v6;
  v195.super_class = v173;
  *&v174 = v122;
  LODWORD(v175) = v170;
  LODWORD(v176) = v171;
  v177 = objc_msgSendSuper2(&v195, "initWithDecibelValue:minimumValue:maximumValue:isSettable:forElement:inScope:withPlugin:andObjectClassID:", v140 & 1, v172, v182, v136, 1986817381, v174, v175, v176);

  if (!v177)
  {
    return 0;
  }

  return v177;
}

uint64_t sub_1000C9948(float a1)
{
  v7 = v2;
  v9 = type metadata accessor for LogID(0);
  __chkstk_darwin(v9);
  v11 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v12 - 8);
  v13 = [v2 controlElement];
  v14 = a1 * 256.0;
  v15 = COERCE_UNSIGNED_INT(fabs(a1 * 256.0));
  if (v15 > 2139095039)
  {
    __break(1u);
    goto LABEL_53;
  }

  v15 = 3338666240;
  if (v14 <= -32769.0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v14 < 32768.0)
  {
    v16 = v13;
    v17 = 0xEE00656369766564;
    [v2 decibelValue];
    v6 = v18;
    v92 = 0;
    v93 = 0xE000000000000000;
    _StringGuts.grow(_:)(108);
    v19 = [v2 owner];
    strcpy(v87, "Unknown device");
    v87[15] = -18;
    if (v19)
    {
      v20 = v19;
      type metadata accessor for AUAAudioDevice(0);
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v22 = [v21 deviceName];

        if (v22)
        {
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v24;

          v25 = v23;
          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    v25 = 0x206E776F6E6B6E55;
LABEL_10:
    v26 = v17;
    String.append(_:)(*&v25);

    v27._countAndFlagsBits = 0x727574616546203ALL;
    v27._object = 0xEF5B74696E552065;
    String.append(_:)(v27);
    v5 = *&v7[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_featureUnit];
    v96._countAndFlagsBits = *(v5 + 48);
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 0x656E6E616863205DLL;
    v29._object = 0xEA00000000005B6CLL;
    String.append(_:)(v29);
    v88 = v16;
    LODWORD(v96._countAndFlagsBits) = v16;
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    v86[1] = "ndObjectClassID:)";
    v31._object = 0x8000000100130C80;
    v31._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v31);
    v3 = [v7 objectClass];
    v96._countAndFlagsBits = _swiftEmptyArrayStorage;
    sub_100046824(0, 4, 0);
    countAndFlagsBits = v96._countAndFlagsBits;
    v1 = *(v96._countAndFlagsBits + 16);
    v15 = *(v96._countAndFlagsBits + 24);
    v33 = v15 >> 1;
    v4 = v1 + 1;
    if (v15 >> 1 > v1)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  sub_100046824((v15 > 1), v4, 1);
  countAndFlagsBits = v96._countAndFlagsBits;
  v15 = *(v96._countAndFlagsBits + 24);
  v33 = v15 >> 1;
LABEL_11:
  *(countAndFlagsBits + 16) = v4;
  *(countAndFlagsBits + v1 + 32) = HIBYTE(v3);
  v34 = v1 + 2;
  if (v33 <= v4)
  {
    sub_100046824((v15 > 1), v1 + 2, 1);
    countAndFlagsBits = v96._countAndFlagsBits;
    v15 = *(v96._countAndFlagsBits + 24);
    v33 = v15 >> 1;
  }

  *(countAndFlagsBits + 16) = v34;
  *(countAndFlagsBits + v4 + 32) = BYTE2(v3);
  v35 = v1 + 3;
  if (v33 <= v34)
  {
    sub_100046824((v15 > 1), v1 + 3, 1);
  }

  v89 = v11;
  v36 = v96._countAndFlagsBits;
  *(v96._countAndFlagsBits + 16) = v35;
  *(v36 + v34 + 32) = BYTE1(v3);
  v37 = *(v36 + 24);
  if (v35 >= v37 >> 1)
  {
    sub_100046824((v37 > 1), v1 + 4, 1);
    v36 = v96._countAndFlagsBits;
  }

  *(v36 + 16) = v1 + 4;
  *(v36 + v35 + 32) = v3;
  v96._countAndFlagsBits = v36;
  static String.Encoding.ascii.getter();
  v38 = sub_100001AB4(&qword_100175CA8, &unk_100124860);
  v90 = sub_10001EB60(&qword_100175CB0, &qword_100175CA8, &unk_100124860, &protocol conformance descriptor for [A]);
  v91 = v38;
  v39 = String.init<A>(bytes:encoding:)();
  v41 = v40;

  v96._countAndFlagsBits = 39;
  v96._object = 0xE100000000000000;
  if (v41)
  {
    v42 = v39;
  }

  else
  {
    v42 = 1061109567;
  }

  if (v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0xE400000000000000;
  }

  v44 = v43;
  String.append(_:)(*&v42);

  v45._countAndFlagsBits = 39;
  v45._object = 0xE100000000000000;
  String.append(_:)(v45);
  String.append(_:)(v96);

  v46._countAndFlagsBits = 0x2065706F6373205DLL;
  v46._object = 0xE90000000000005BLL;
  String.append(_:)(v46);
  v47 = [v7 controlScope];
  v96._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_100046824(0, 4, 0);
  v48 = v96._countAndFlagsBits;
  v50 = *(v96._countAndFlagsBits + 16);
  v49 = *(v96._countAndFlagsBits + 24);
  v51 = v49 >> 1;
  v52 = v50 + 1;
  if (v49 >> 1 <= v50)
  {
    sub_100046824((v49 > 1), v50 + 1, 1);
    v48 = v96._countAndFlagsBits;
    v49 = *(v96._countAndFlagsBits + 24);
    v51 = v49 >> 1;
  }

  *(v48 + 16) = v52;
  *(v48 + v50 + 32) = HIBYTE(v47);
  v53 = v50 + 2;
  if (v51 <= v52)
  {
    sub_100046824((v49 > 1), v50 + 2, 1);
    v48 = v96._countAndFlagsBits;
    v49 = *(v96._countAndFlagsBits + 24);
    v51 = v49 >> 1;
  }

  *(v48 + 16) = v53;
  *(v48 + v52 + 32) = BYTE2(v47);
  v54 = v50 + 3;
  if (v51 <= v53)
  {
    sub_100046824((v49 > 1), v50 + 3, 1);
  }

  v55 = v96._countAndFlagsBits;
  *(v96._countAndFlagsBits + 16) = v54;
  *(v55 + v53 + 32) = BYTE1(v47);
  v56 = *(v55 + 24);
  if (v54 >= v56 >> 1)
  {
    sub_100046824((v56 > 1), v50 + 4, 1);
    v55 = v96._countAndFlagsBits;
  }

  *(v55 + 16) = v50 + 4;
  *(v55 + v54 + 32) = v47;
  v96._countAndFlagsBits = v55;
  static String.Encoding.ascii.getter();
  v57 = String.init<A>(bytes:encoding:)();
  v59 = v58;

  v96._countAndFlagsBits = 39;
  v96._object = 0xE100000000000000;
  if (v59)
  {
    v60 = v57;
  }

  else
  {
    v60 = 1061109567;
  }

  if (v59)
  {
    v61 = v59;
  }

  else
  {
    v61 = 0xE400000000000000;
  }

  v62 = v61;
  String.append(_:)(*&v60);

  v63._countAndFlagsBits = 39;
  v63._object = 0xE100000000000000;
  String.append(_:)(v63);
  String.append(_:)(v96);

  v64._countAndFlagsBits = 0xD00000000000001BLL;
  v64._object = 0x8000000100130CC0;
  String.append(_:)(v64);
  Float.write<A>(to:)();
  v65._countAndFlagsBits = 2114148;
  v65._object = 0xE300000000000000;
  String.append(_:)(v65);
  if (v6 == a1)
  {
    v66 = 0x646E657320746F6ELL;
  }

  else
  {
    v66 = 0x676E69646E6573;
  }

  if (v6 == a1)
  {
    v67 = 0xEB00000000676E69;
  }

  else
  {
    v67 = 0xE700000000000000;
  }

  v68 = v67;
  String.append(_:)(*&v66);

  v69._countAndFlagsBits = 32;
  v69._object = 0xE100000000000000;
  String.append(_:)(v69);
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_10011DE90;
  *(v70 + 56) = &type metadata for UInt16;
  *(v70 + 64) = &protocol witness table for UInt16;
  *(v70 + 32) = v14;
  v71._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v71);

  v72._countAndFlagsBits = 0x69766564206F7420;
  v72._object = 0xEA00000000006563;
  String.append(_:)(v72);
  v73 = v92;
  v74 = v93;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v75 = sub_10000A1BC(v9, qword_1001794F0);
  v76 = v89;
  sub_10000A2A4(v75, v89);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v77 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v77, qword_100179508);
  sub_100039AA0(2, v76, v73, v74);

  sub_10000C9D0(v76);
  if (v6 != a1)
  {
    v78 = v7[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_control + 2];
    v79 = *&v7[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_control];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v86[0] = v75;
      v81 = v79 | (v78 << 16);
      v82 = *(v5 + 24);
      v83 = v88;
      ObjectType = swift_getObjectType();
      active = type metadata accessor for ActiveFeatureUnit();
      v95 = &protocol witness table for ActiveFeatureUnit;
      v92 = v5;

      sub_100053170(v81 & 0xFFFFFF, v83, 0, &v92, v14, ObjectType, v82);
      swift_unknownObjectRelease();
      sub_10000CE78(&v92);
    }

    *&v80 = a1;
    [v7 setDecibelValue:v80];
  }

  return 1;
}

id sub_1000CA8C0(float a1)
{
  v2 = v1;
  v4 = 0xEE00656369766564;
  v5 = 0x206E776F6E6B6E55;
  v67 = type metadata accessor for LogID(0);
  __chkstk_darwin(v67);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v8 - 8);
  *&v9 = a1;
  [v1 decibelFromScalar:v9];
  v11 = v10;
  v69 = 0;
  v70 = 0xE000000000000000;
  _StringGuts.grow(_:)(101);
  v12 = [v1 owner];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for AUAAudioDevice(0);
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = [v14 deviceName];

      if (v15)
      {
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v4 = v16;
      }
    }

    else
    {
    }
  }

  v17._countAndFlagsBits = v5;
  v17._object = v4;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x727574616546203ALL;
  v18._object = 0xEF5B74696E552065;
  String.append(_:)(v18);
  v68._countAndFlagsBits = *(*&v2[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_featureUnit] + 48);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x656E6E616863205DLL;
  v20._object = 0xEA00000000005B6CLL;
  String.append(_:)(v20);
  v68._countAndFlagsBits = *&v2[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_channel];
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22._object = 0x8000000100130C80;
  v22._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v22);
  v23 = [v2 objectClass];
  v68._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_100046824(0, 4, 0);
  countAndFlagsBits = v68._countAndFlagsBits;
  v26 = *(v68._countAndFlagsBits + 16);
  v25 = *(v68._countAndFlagsBits + 24);
  v27 = v25 >> 1;
  v28 = v26 + 1;
  if (v25 >> 1 <= v26)
  {
    sub_100046824((v25 > 1), v26 + 1, 1);
    countAndFlagsBits = v68._countAndFlagsBits;
    v25 = *(v68._countAndFlagsBits + 24);
    v27 = v25 >> 1;
  }

  *(countAndFlagsBits + 16) = v28;
  *(countAndFlagsBits + v26 + 32) = HIBYTE(v23);
  v29 = v26 + 2;
  if (v27 <= v28)
  {
    sub_100046824((v25 > 1), v26 + 2, 1);
    countAndFlagsBits = v68._countAndFlagsBits;
    v25 = *(v68._countAndFlagsBits + 24);
    v27 = v25 >> 1;
  }

  *(countAndFlagsBits + 16) = v29;
  *(countAndFlagsBits + v28 + 32) = BYTE2(v23);
  v30 = v26 + 3;
  if (v27 <= v29)
  {
    sub_100046824((v25 > 1), v26 + 3, 1);
  }

  v31 = v68._countAndFlagsBits;
  *(v68._countAndFlagsBits + 16) = v30;
  *(v31 + v29 + 32) = BYTE1(v23);
  v32 = *(v31 + 24);
  if (v30 >= v32 >> 1)
  {
    sub_100046824((v32 > 1), v26 + 4, 1);
    v31 = v68._countAndFlagsBits;
  }

  *(v31 + 16) = v26 + 4;
  *(v31 + v30 + 32) = v23;
  v68._countAndFlagsBits = v31;
  static String.Encoding.ascii.getter();
  sub_100001AB4(&qword_100175CA8, &unk_100124860);
  sub_10001EB60(&qword_100175CB0, &qword_100175CA8, &unk_100124860, &protocol conformance descriptor for [A]);
  v33 = String.init<A>(bytes:encoding:)();
  v35 = v34;

  v68._countAndFlagsBits = 39;
  v68._object = 0xE100000000000000;
  if (v35)
  {
    v36 = v33;
  }

  else
  {
    v36 = 1061109567;
  }

  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0xE400000000000000;
  }

  v38 = v37;
  String.append(_:)(*&v36);

  v39._countAndFlagsBits = 39;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  String.append(_:)(v68);

  v40._countAndFlagsBits = 0x2065706F6373205DLL;
  v40._object = 0xE90000000000005BLL;
  String.append(_:)(v40);
  v41 = [v2 controlScope];
  v68._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_100046824(0, 4, 0);
  v42 = v68._countAndFlagsBits;
  v44 = *(v68._countAndFlagsBits + 16);
  v43 = *(v68._countAndFlagsBits + 24);
  v45 = v43 >> 1;
  v46 = v44 + 1;
  if (v43 >> 1 <= v44)
  {
    sub_100046824((v43 > 1), v44 + 1, 1);
    v42 = v68._countAndFlagsBits;
    v43 = *(v68._countAndFlagsBits + 24);
    v45 = v43 >> 1;
  }

  *(v42 + 16) = v46;
  *(v42 + v44 + 32) = HIBYTE(v41);
  v47 = v44 + 2;
  if (v45 <= v46)
  {
    sub_100046824((v43 > 1), v44 + 2, 1);
    v42 = v68._countAndFlagsBits;
    v43 = *(v68._countAndFlagsBits + 24);
    v45 = v43 >> 1;
  }

  *(v42 + 16) = v47;
  *(v42 + v46 + 32) = BYTE2(v41);
  v48 = v44 + 3;
  if (v45 <= v47)
  {
    sub_100046824((v43 > 1), v44 + 3, 1);
  }

  v49 = v68._countAndFlagsBits;
  *(v68._countAndFlagsBits + 16) = v48;
  *(v49 + v47 + 32) = BYTE1(v41);
  v50 = *(v49 + 24);
  if (v48 >= v50 >> 1)
  {
    sub_100046824((v50 > 1), v44 + 4, 1);
    v49 = v68._countAndFlagsBits;
  }

  *(v49 + 16) = v44 + 4;
  *(v49 + v48 + 32) = v41;
  v68._countAndFlagsBits = v49;
  static String.Encoding.ascii.getter();
  v51 = String.init<A>(bytes:encoding:)();
  v53 = v52;

  v68._countAndFlagsBits = 39;
  v68._object = 0xE100000000000000;
  if (v53)
  {
    v54 = v51;
  }

  else
  {
    v54 = 1061109567;
  }

  if (v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = 0xE400000000000000;
  }

  v56 = v55;
  String.append(_:)(*&v54);

  v57._countAndFlagsBits = 39;
  v57._object = 0xE100000000000000;
  String.append(_:)(v57);
  String.append(_:)(v68);

  v58._countAndFlagsBits = 0xD00000000000001BLL;
  v58._object = 0x8000000100130CA0;
  String.append(_:)(v58);
  Float.write<A>(to:)();
  v59._countAndFlagsBits = 0x6C65626963656420;
  v59._object = 0xE900000000000020;
  String.append(_:)(v59);
  Float.write<A>(to:)();
  v60 = v69;
  v61 = v70;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v62 = sub_10000A1BC(v67, qword_1001794F0);
  sub_10000A2A4(v62, v7);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v63, qword_100179508);
  sub_100039AA0(2, v7, v60, v61);

  sub_10000C9D0(v7);
  LODWORD(v64) = v11;
  return [v2 changeDecibelValue:v64];
}

void sub_1000CB158()
{
  v2 = v0;
  v3 = type metadata accessor for LogID(0);
  __chkstk_darwin(v3);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v6 - 8);
  v7 = *&v0[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_featureUnit];
  v8 = *&v0[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_control] | (v0[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_control + 2] << 16);
  v9 = *&v0[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_channel];
  sub_1000C5DCC(v8, v9);
  if (v1 || (v10 & 0x100000000) != 0)
  {
    return;
  }

  v81 = 0;
  v11 = *&v10;
  if (LockDelay.units.getter(v8))
  {
    v12 = *&v0[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_range];
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = *(v12 + 32);
      v15 = *(v12 + 24 * v13 + 12);
    }

    else
    {
      v14 = 0.0;
      v15 = 0.0;
    }

    if (v15 >= v11)
    {
      v15 = v11;
    }

    v16 = v14 > v15 ? v14 : v15;
    if (v16 != v11)
    {
      v17 = v16 * 256.0;
      if (COERCE_INT(fabs(v16 * 256.0)) > 2139095039)
      {
        __break(1u);
      }

      else if (v17 > -32769.0)
      {
        if (v17 < 32768.0)
        {
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v18 = *(v7 + 24);
            v74 = v17;
            v75 = v18;
            ObjectType = swift_getObjectType();
            active = type metadata accessor for ActiveFeatureUnit();
            v79 = &protocol witness table for ActiveFeatureUnit;
            v76 = v7;

            v20 = v81;
            sub_100053170(v8, v9, 0, &v76, v74, ObjectType, v75);
            swift_unknownObjectRelease();
            sub_10000CE78(&v76);
            if (v20)
            {
              return;
            }

            v81 = 0;
          }

          v11 = v16;
          goto LABEL_20;
        }

LABEL_61:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_61;
    }
  }

LABEL_20:
  v21 = 0xEE00656369766564;
  v22 = 0x206E776F6E6B6E55;
  v76 = 0;
  v77 = 0xE000000000000000;
  _StringGuts.grow(_:)(111);
  v23 = [v0 owner];
  if (v23)
  {
    v24 = v23;
    type metadata accessor for AUAAudioDevice(0);
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      v26 = [v25 deviceName];

      if (v26)
      {
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v27;
      }
    }

    else
    {
    }
  }

  v28._countAndFlagsBits = v22;
  v28._object = v21;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 0x727574616546203ALL;
  v29._object = 0xEF5B74696E552065;
  String.append(_:)(v29);
  v80._countAndFlagsBits = *(v7 + 48);
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0xD000000000000032;
  v31._object = 0x8000000100130B90;
  String.append(_:)(v31);
  v32 = [v2 objectClass];
  v80._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_100046824(0, 4, 0);
  countAndFlagsBits = v80._countAndFlagsBits;
  v35 = *(v80._countAndFlagsBits + 16);
  v34 = *(v80._countAndFlagsBits + 24);
  v36 = v34 >> 1;
  v37 = v35 + 1;
  if (v34 >> 1 <= v35)
  {
    sub_100046824((v34 > 1), v35 + 1, 1);
    countAndFlagsBits = v80._countAndFlagsBits;
    v34 = *(v80._countAndFlagsBits + 24);
    v36 = v34 >> 1;
  }

  *(countAndFlagsBits + 16) = v37;
  *(countAndFlagsBits + v35 + 32) = HIBYTE(v32);
  v38 = v35 + 2;
  if (v36 <= v37)
  {
    sub_100046824((v34 > 1), v35 + 2, 1);
    countAndFlagsBits = v80._countAndFlagsBits;
    v34 = *(v80._countAndFlagsBits + 24);
    v36 = v34 >> 1;
  }

  *(countAndFlagsBits + 16) = v38;
  *(countAndFlagsBits + v37 + 32) = BYTE2(v32);
  v39 = v35 + 3;
  if (v36 <= v38)
  {
    sub_100046824((v34 > 1), v35 + 3, 1);
  }

  v40 = v80._countAndFlagsBits;
  *(v80._countAndFlagsBits + 16) = v39;
  *(v40 + v38 + 32) = BYTE1(v32);
  v41 = *(v40 + 24);
  if (v39 >= v41 >> 1)
  {
    sub_100046824((v41 > 1), v35 + 4, 1);
    v40 = v80._countAndFlagsBits;
  }

  *(v40 + 16) = v35 + 4;
  *(v40 + v39 + 32) = v32;
  v80._countAndFlagsBits = v40;
  static String.Encoding.ascii.getter();
  v42 = sub_100001AB4(&qword_100175CA8, &unk_100124860);
  v74 = sub_10001EB60(&qword_100175CB0, &qword_100175CA8, &unk_100124860, &protocol conformance descriptor for [A]);
  v75 = v42;
  v43 = String.init<A>(bytes:encoding:)();
  v45 = v44;

  v80._countAndFlagsBits = 39;
  v80._object = 0xE100000000000000;
  if (v45)
  {
    v46 = v43;
  }

  else
  {
    v46 = 1061109567;
  }

  if (v45)
  {
    v47 = v45;
  }

  else
  {
    v47 = 0xE400000000000000;
  }

  v48 = v47;
  String.append(_:)(*&v46);

  v49._countAndFlagsBits = 39;
  v49._object = 0xE100000000000000;
  String.append(_:)(v49);
  String.append(_:)(v80);

  v50._countAndFlagsBits = 0x2065706F6373205DLL;
  v50._object = 0xE90000000000005BLL;
  String.append(_:)(v50);
  v51 = [v2 controlScope];
  v80._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_100046824(0, 4, 0);
  v52 = v80._countAndFlagsBits;
  v54 = *(v80._countAndFlagsBits + 16);
  v53 = *(v80._countAndFlagsBits + 24);
  v55 = v53 >> 1;
  v56 = v54 + 1;
  if (v53 >> 1 <= v54)
  {
    sub_100046824((v53 > 1), v54 + 1, 1);
    v52 = v80._countAndFlagsBits;
    v53 = *(v80._countAndFlagsBits + 24);
    v55 = v53 >> 1;
  }

  *(v52 + 16) = v56;
  *(v52 + v54 + 32) = HIBYTE(v51);
  v57 = v54 + 2;
  if (v55 <= v56)
  {
    sub_100046824((v53 > 1), v54 + 2, 1);
    v52 = v80._countAndFlagsBits;
    v53 = *(v80._countAndFlagsBits + 24);
    v55 = v53 >> 1;
  }

  *(v52 + 16) = v57;
  *(v52 + v56 + 32) = BYTE2(v51);
  v58 = v54 + 3;
  if (v55 <= v57)
  {
    sub_100046824((v53 > 1), v54 + 3, 1);
  }

  v59 = v80._countAndFlagsBits;
  *(v80._countAndFlagsBits + 16) = v58;
  *(v59 + v57 + 32) = BYTE1(v51);
  v60 = *(v59 + 24);
  if (v58 >= v60 >> 1)
  {
    sub_100046824((v60 > 1), v54 + 4, 1);
    v59 = v80._countAndFlagsBits;
  }

  *(v59 + 16) = v54 + 4;
  *(v59 + v58 + 32) = v51;
  v80._countAndFlagsBits = v59;
  static String.Encoding.ascii.getter();
  v61 = String.init<A>(bytes:encoding:)();
  v63 = v62;

  v80._countAndFlagsBits = 39;
  v80._object = 0xE100000000000000;
  if (v63)
  {
    v64 = v61;
  }

  else
  {
    v64 = 1061109567;
  }

  if (v63)
  {
    v65 = v63;
  }

  else
  {
    v65 = 0xE400000000000000;
  }

  v66 = v65;
  String.append(_:)(*&v64);

  v67._countAndFlagsBits = 39;
  v67._object = 0xE100000000000000;
  String.append(_:)(v67);
  String.append(_:)(v80);

  v68._object = 0x8000000100130BD0;
  v68._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v68);
  Float.write<A>(to:)();
  v69 = v76;
  v70 = v77;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v71 = sub_10000A1BC(v3, qword_1001794F0);
  sub_10000A2A4(v71, v5);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v72, qword_100179508);
  sub_100039AA0(2, v5, v69, v70);

  sub_10000C9D0(v5);
  *&v73 = v11;
  [v2 setDecibelValue:v73];
}

id sub_1000CBA3C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

Swift::Int sub_1000CBAFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001AB4(&unk_1001749C0, &qword_100120118);
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

uint64_t sub_1000CBDA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001AB4(&qword_1001749D8, &unk_100124AF0);
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
        sub_10000CE28(v24, v34);
      }

      else
      {
        sub_10001E0C4(v24, v34);
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
      result = sub_10000CE28(v34, (*(v7 + 56) + 32 * v15));
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

Swift::Int sub_1000CC058(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001AB4(&qword_100174A18, &qword_100120168);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000CC2C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001AB4(&qword_100174A60, &qword_100124B10);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      v21 = *(*(v5 + 56) + 2 * v19);
      result = static Hasher._hash(seed:_:)();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 2 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000CC52C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001AB4(&qword_100174A80, &qword_1001201C8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v33 = *v22;
      v23 = *(v22 + 16);
      if ((v4 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:bytes:count:)();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v33;
      *(v16 + 16) = v23;
      ++*(v7 + 16);
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

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_1000CC7C0()
{
  v1 = v0;
  sub_100001AB4(&unk_1001749C0, &qword_100120118);
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

void *sub_1000CC92C()
{
  v1 = v0;
  sub_100001AB4(&qword_1001749D8, &unk_100124AF0);
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
        v22 = 32 * v17;
        sub_10001E0C4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000CE28(v25, (*(v4 + 56) + v22));
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

void *sub_1000CCAD0()
{
  v1 = v0;
  sub_100001AB4(&qword_100174A18, &qword_100120168);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void *sub_1000CCC34()
{
  v1 = v0;
  sub_100001AB4(&qword_100174A60, &qword_100124B10);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 2 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 2 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1000CCD94()
{
  v1 = v0;
  sub_100001AB4(&qword_100174A80, &qword_1001201C8);
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *v18;
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v20;
        *(v21 + 16) = v19;
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

Swift::Int sub_1000CCF44(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000CD9DC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[12 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 12) = *v13;
          *(v13 + 5) = *(v13 + 2);
          *v13 = v11;
          *(v13 + 4) = v14;
          v13 -= 12;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 12;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_100001AB4(&qword_100176198, &unk_100121AE0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1000CD0AC(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1000CD0AC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1000CD8B0(v7);
      v7 = result;
    }

    v84 = v7 + 2;
    v85 = v7[2];
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v7[2 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1000CD674((*a3 + 12 * *v86), (*a3 + 12 * *v88), *a3 + 12 * v89, v93);
        if (v4)
        {
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
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 12 * v6);
      v10 = 12 * v8;
      v11 = (*a3 + 12 * v8);
      v13 = *v11;
      v12 = v11 + 6;
      v14 = v13;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v12;
        v12 += 3;
        v18 = v17 >= v16;
        ++v15;
        v16 = v17;
        if ((((v9 < v14) ^ v18) & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v14)
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
        v20 = 12 * v6;
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
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 4);
            *v22 = *(v23 - 12);
            *(v22 + 2) = v26;
            *(v23 - 12) = v25;
            *(v23 - 4) = v24;
          }

          ++v21;
          --v19;
          v20 -= 12;
          v10 += 12;
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

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100024FF4(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v37 = v7[2];
    v36 = v7[3];
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_100024FF4((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v38;
    v39 = v7 + 4;
    v40 = &v7[2 * v37 + 4];
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
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
          v42 = v7[4];
          v43 = v7[5];
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v7[2 * v38];
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v39[2 * v41];
          v66 = *v64;
          v65 = v64[1];
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

        v68 = &v7[2 * v38];
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v39[2 * v41];
        v73 = *v71;
        v72 = v71[1];
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

        v79 = &v39[2 * v41 - 2];
        v80 = *v79;
        v81 = &v39[2 * v41];
        v82 = v81[1];
        sub_1000CD674((*a3 + 12 * *v79), (*a3 + 12 * *v81), *a3 + 12 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > v7[2])
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = v7[2];
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove(&v39[2 * v41], v81 + 2, 16 * (v83 - 1 - v41));
        v7[2] = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v39[2 * v38];
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

      v53 = &v7[2 * v38];
      v55 = *v53;
      v54 = v53[1];
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
        v75 = &v39[2 * v41];
        v77 = *v75;
        v76 = v75[1];
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
  v29 = *a3 + 12 * v6 - 12;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 12 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 12;
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

    v34 = *(v33 + 16);
    *(v33 + 12) = *v33;
    *(v33 + 20) = *(v33 + 8);
    *v33 = v31;
    *(v33 + 4) = v34;
    v33 -= 12;
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
  return result;
}

uint64_t sub_1000CD674(float *__dst, float *__src, unint64_t a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 12;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 12;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 12 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 12)
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

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 12 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 12 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 3;
    v5 -= 12;
    v17 = v12;
    do
    {
      v18 = (v5 + 12);
      v19 = *(v17 - 12);
      v17 -= 12;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 8) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 3, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 8) = *(v17 + 8);
        *v5 = v20;
      }

      v5 -= 12;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 1) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v23])
  {
    memmove(v6, v4, 12 * v23);
  }

  return 1;
}

char *sub_1000CD8C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175420, &qword_100120EE8);
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

BOOL sub_1000CD9F0(unint64_t a1, uint64_t a2, __int16 a3, unint64_t a4, uint64_t a5, __int16 a6)
{
  if (word_100124BFA[a1] != word_100124BFA[a4])
  {
    return 0;
  }

  return word_100124C42[a1 >> 8] == word_100124C42[a4 >> 8] && ((a1 >> 16) & 0xFFFFFFFFFFLL) == ((a4 >> 16) & 0xFFFFFFFFFFLL) && a2 == a5 && a3 == a6;
}

char *sub_1000CDA58(float a1, float a2, float a3)
{
  v7 = type metadata accessor for LogID(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 <= a1 || a3 == 0.0)
  {
    goto LABEL_6;
  }

  if (a1 <= a2)
  {
    v13 = v8;
    v3 = sub_100025CC8(0, 1, 1, _swiftEmptyArrayStorage);
    v14 = *(v3 + 2);
    v15 = a1;
    do
    {
      v16 = *(v3 + 3);
      v11 = v14 + 1;
      if (v14 >= v16 >> 1)
      {
        v3 = sub_100025CC8((v16 > 1), v14 + 1, 1, v3);
      }

      *(v3 + 2) = v11;
      *&v3[4 * v14 + 32] = v15;
      v15 = v15 + a3;
      ++v14;
    }

    while (v15 <= a2);
    v8 = v13;
LABEL_12:
    if (*&v3[4 * v11 + 28] == a2)
    {
      return v3;
    }

    if (qword_100173CB8 != -1)
    {
      v22 = v8;
      swift_once();
      v8 = v22;
    }

    v17 = sub_10000A1BC(v8, qword_1001794F0);
    sub_10000A2A4(v17, v10);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v18, qword_100179508);
    sub_100039F58(1, v10, 0xD00000000000002FLL, 0x8000000100131000);
    sub_10000C9D0(v10);
    if (*(v3 + 2))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = *(v3 + 2);
        if (v20)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    v3 = sub_1000CCF30(v3);
    v20 = *(v3 + 2);
    if (v20)
    {
LABEL_20:
      v10 = v20 - 1;
      *(v3 + 2) = v20 - 1;
      v19 = *(v3 + 3);
      if (v20 <= v19 >> 1)
      {
LABEL_21:
        *(v3 + 2) = v20;
        *&v3[4 * v10 + 32] = a2;
        return v3;
      }

LABEL_26:
      v3 = sub_100025CC8((v19 > 1), v20, 1, v3);
      goto LABEL_21;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v3 = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage[2];
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_10000CA2C();
  swift_allocError();
  *v12 = 120;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0xE000000000000000;
  swift_willThrow();
  return v3;
}

char *sub_1000CDD3C(char *a1)
{
  v24 = a1;

  sub_1000CCF44(&v24);

  v1 = v24;
  v2 = *(v24 + 2);
  if (v2)
  {
    v24 = _swiftEmptyArrayStorage;
    sub_1000474C0(0, v2, 0);
    v3 = 0;
    v4 = v24;
    v5 = (v1 + 40);
    while (v3 < *(v1 + 2))
    {
      v6 = sub_1000CDA58(*(v5 - 2), *(v5 - 1), *v5);
      v24 = v4;
      v11 = *(v4 + 2);
      v10 = *(v4 + 3);
      if (v11 >= v10 >> 1)
      {
        v13 = v6;
        v14 = v7;
        v15 = v8;
        v16 = v9;
        sub_1000474C0((v10 > 1), v11 + 1, 1);
        v6 = v13;
        v9 = v16;
        v8 = v15;
        v7 = v14;
        v4 = v24;
      }

      ++v3;
      *(v4 + 2) = v11 + 1;
      v12 = &v4[24 * v11];
      *(v12 + 8) = v7;
      *(v12 + 9) = v8;
      *(v12 + 10) = v9;
      *(v12 + 6) = v6;
      v5 += 3;
      if (v2 == v3)
      {

        goto LABEL_9;
      }
    }
  }

  else
  {

    v4 = _swiftEmptyArrayStorage;
LABEL_9:
    v17 = 0;
    v18 = *(v4 + 2);
    v19 = (v4 + 40);
    v20 = v18 + 1;
    while (1)
    {
      if (!--v20)
      {
        return v4;
      }

      v21 = (*(v19 - 1) - *(v19 - 2)) / *v19;
      if (COERCE_INT(fabs(v21)) > 2139095039)
      {
        break;
      }

      if (v21 <= -1.0)
      {
        goto LABEL_19;
      }

      if (v21 >= 1.8447e19)
      {
        goto LABEL_20;
      }

      v19 += 6;
      v22 = __CFADD__(v17, v21);
      v17 += v21;
      if (v22)
      {
        __break(1u);
        return v4;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000CDF98(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  v29 = a1 + 32;
  v4 = &qword_100174F90;
  while (1)
  {
    v6 = *(v29 + 8 * v2);

    v7 = a2(v2, v6);

    v8 = v7 >> 62;
    if (v7 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v3 >> 62;
    if (v3 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
      v12 = v27 + v9;
      if (__OFADD__(v27, v9))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v11 + v9;
      if (__OFADD__(v11, v9))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v10)
      {
        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v10)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    v13 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v35 = v9;
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    if (v8)
    {
      break;
    }

    v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v15 >> 1) - v14) < v35)
    {
      goto LABEL_36;
    }

    v32 = v2;
    v33 = v3;
    v18 = v13 + 8 * v14 + 32;
    v28 = v13;
    if (v8)
    {
      if (v16 < 1)
      {
        goto LABEL_38;
      }

      sub_10001EB60(&qword_100174F98, v4, &unk_100124B00, &protocol conformance descriptor for [A]);
      v19 = v4;
      for (i = 0; i != v16; ++i)
      {
        sub_100001AB4(v4, &unk_100124B00);
        v21 = sub_10001D8F4(v34, i, v7);
        v23 = *v22;
        (v21)(v34, 0);
        *(v18 + 8 * i) = v23;
      }
    }

    else
    {
      sub_10001EBA8(0, &qword_100174F58, ASDControl_ptr);
      swift_arrayInitWithCopy();
      v19 = v4;
    }

    v4 = v19;
    v2 = v32;
    v3 = v33;
    if (v35 >= 1)
    {
      v24 = *(v28 + 16);
      v25 = __OFADD__(v24, v35);
      v26 = v24 + v35;
      if (v25)
      {
        goto LABEL_37;
      }

      *(v28 + 16) = v26;
    }

LABEL_4:
    if (++v2 == v30)
    {
      return v3;
    }
  }

  v17 = v13;
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = v17;
  v16 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v35 <= 0)
  {
    goto LABEL_4;
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

unint64_t sub_1000CE2D8()
{
  result = qword_100177FD8;
  if (!qword_100177FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177FD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AUAFeatureUnitControlSelector(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AUAFeatureUnitControlSelector(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_1000CE4C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1000CE4D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_1000CE520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for FeatureUnitOverrideEntry(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FeatureUnitOverrideEntry(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xDD && a1[18])
  {
    return (*a1 + 221);
  }

  v3 = *a1;
  v4 = v3 >= 0x24;
  v5 = v3 - 36;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureUnitOverrideEntry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xDC)
  {
    *(result + 16) = 0;
    *result = a2 - 221;
    *(result + 8) = 0;
    if (a3 >= 0xDD)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xDD)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 35;
    }
  }

  return result;
}

unint64_t sub_1000CE634()
{
  result = qword_1001781D0;
  if (!qword_1001781D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001781D0);
  }

  return result;
}

void sub_1000CE688()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
      if (v3)
      {
        sub_1000D1324(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

unint64_t sub_1000CE760(unsigned __int16 a1)
{
  v2 = type metadata accessor for LogID(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x80) == 0)
  {
    return 0;
  }

  v7 = v3;
  result = HIBYTE(a1);
  v8 = a1 & 0xF;
  if ((a1 & 0xF) != 0 || a1 < 0x100u)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v10 = 512;
        if ((a1 & 0x40) == 0)
        {
          v10 = 1280;
        }

        return v10 | HIBYTE(a1) | 0x1000000;
      }

      else
      {
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v11 = sub_10000A1BC(v7, qword_1001794F0);
        sub_10000A2A4(v11, v5);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v12, qword_100179508);
        sub_100039F58(2, v5, 0xD000000000000026, 0x80000001001310D0);
        sub_10000C9D0(v5);
        sub_10000CA2C();
        swift_allocError();
        *v13 = 2;
        *(v13 + 8) = 0;
        *(v13 + 16) = 0xE000000000000000;
        return swift_willThrow();
      }
    }

    else
    {
      v9 = 512;
      if ((a1 & 0x40) == 0)
      {
        v9 = 1280;
      }

      return v9 | HIBYTE(a1) | &_mh_execute_header;
    }
  }

  return result;
}

uint64_t sub_1000CE988()
{
  v1 = *(v0 + 200);
  v81 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  p_superclass = &OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe.superclass;
  v4 = &selRef_modelUID;
  if (!Strong)
  {
    ObjectType = v1;

    goto LABEL_7;
  }

  v5 = Strong;
  v6 = *(Strong + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
  if (!v6)
  {
    ObjectType = v1;

LABEL_7:
    v11 = &off_100173000;
    if (qword_100173CF8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_137;
  }

  v7 = sub_1000AA808(3u, v6);
  v8 = v1;
  v9 = v7;
  ObjectType = v8;

  if (!v9)
  {
    goto LABEL_7;
  }

  v11 = &off_100173000;
  v12 = &OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe.superclass;
  v13 = &selRef_modelUID;
  v4 = 1;
  while (2)
  {
    v21 = swift_unknownObjectWeakLoadStrong();
    v22 = ObjectType;
    if (v21)
    {
      v23 = v21;
      v24 = *&v21[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
      if (v24)
      {
        v25 = sub_1000AA808(5u, v24);

        if (v25)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }
    }

    if (*(v11 + 3320) != -1)
    {
      swift_once();
    }

    cache = v12[200]->cache;
    if (!cache)
    {
      goto LABEL_34;
    }

    v27 = cache;
    v28 = String._bridgeToObjectiveC()();
    v11 = [v27 v13[134]];

    if (!v11)
    {

      goto LABEL_34;
    }

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    if (v29 == 0x656C7069746C756DLL && v31 == 0xE800000000000000)
    {

      v22 = ObjectType;
      goto LABEL_32;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v22 = ObjectType;
    if ((v32 & 1) == 0)
    {
LABEL_34:
      LODWORD(ObjectType) = 0;
      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_133;
      }

      goto LABEL_35;
    }

LABEL_32:
    LODWORD(ObjectType) = 1;
    if ((v22 & 0x8000000000000000) != 0)
    {
LABEL_133:
      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_134;
      }

      goto LABEL_37;
    }

LABEL_35:
    if ((v22 & 0x4000000000000000) != 0)
    {
      goto LABEL_133;
    }

    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_134;
    }

LABEL_37:
    p_superclass = &off_100167CF8;
    v64 = _swiftEmptyArrayStorage;
    v62 = ObjectType;
    v63 = v4;
    while (1)
    {
      if (v4)
      {
        v80 = v22;
        v81 = _swiftEmptyArrayStorage;
        goto LABEL_67;
      }

      if (!ObjectType)
      {
        v22 = sub_1001141B8(&v81);
        v80 = v22;
        goto LABEL_67;
      }

      sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
      result = swift_allocObject();
      v34 = result;
      *(result + 16) = xmmword_100120A20;
      v35 = v22 >> 62;
      if (v22 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (!result)
        {
          goto LABEL_145;
        }

        result = _CocoaArrayWrapper.endIndex.getter();
        if (!result)
        {
          goto LABEL_144;
        }
      }

      else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_139;
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v37 = v22 & 0xFFFFFFFFFFFFFF8;
        if (!v35)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_140;
        }

        v36 = *(v22 + 32);

        v37 = v22 & 0xFFFFFFFFFFFFFF8;
        if (!v35)
        {
LABEL_46:
          result = *(v37 + 16);
          if (!result)
          {
            goto LABEL_142;
          }

          goto LABEL_56;
        }
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_142;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 1)
      {
        goto LABEL_143;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
LABEL_56:
      v38 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_141;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v35)
        {
LABEL_62:
          _CocoaArrayWrapper.endIndex.getter();
        }

LABEL_63:
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v39 = (v22 & 0xFFFFFFFFFFFFFF8);
        goto LABEL_64;
      }

      if (v35)
      {
        goto LABEL_62;
      }

      v39 = (v22 & 0xFFFFFFFFFFFFFF8);
      if (v38 > *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_63;
      }

LABEL_64:

      if (v22 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (__OFSUB__(result, 1))
        {
          goto LABEL_146;
        }

        memmove(v39 + 4, v39 + 5, 8 * (result - 1));
        v11 = _CocoaArrayWrapper.endIndex.getter();
        v40 = v11 - 1;
        if (__OFSUB__(v11, 1))
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }
      }

      else
      {
        v11 = v39[2];
        memmove(v39 + 4, v39 + 5, 8 * v11 - 8);
        v40 = v11 - 1;
        if (__OFSUB__(v11, 1))
        {
          goto LABEL_124;
        }
      }

      v39[2] = v40;
      v80 = v34;
      v81 = v22;
      *(v34 + 32) = v36;
      v22 = v34;
      LODWORD(ObjectType) = v62;
LABEL_67:
      if (!(v22 >> 62))
      {
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
        {
          break;
        }

        goto LABEL_116;
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
        break;
      }

LABEL_116:

      v22 = v81;
      if (v81 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() <= 0)
        {
LABEL_128:

          return v64;
        }
      }

      else if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
      {
        goto LABEL_128;
      }
    }

    while (1)
    {
      if (v4)
      {
        v80 = _swiftEmptyArrayStorage;
      }

      else
      {
        v22 = sub_100114658(&v80);
      }

      if (!(v22 >> 62))
      {
        break;
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_127;
      }

      ObjectType = _CocoaArrayWrapper.endIndex.getter();
      if (ObjectType)
      {
        goto LABEL_74;
      }

      v42 = _swiftEmptyArrayStorage;
LABEL_106:
      type metadata accessor for MultiClock();
      v55 = swift_allocObject();
      *(v55 + 16) = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_10002461C(0, v64[2] + 1, 1, v64);
      }

      v57 = v64[2];
      v56 = v64[3];
      if (v57 >= v56 >> 1)
      {
        v64 = sub_10002461C((v56 > 1), v57 + 1, 1, v64);
      }

      v64[2] = v57 + 1;
      v58 = &v64[3 * v57];
      v58[4] = v55;
      v58[5] = &off_100167CA0;
      v58[6] = v22;
      v22 = v80;
      if (v80 >> 62)
      {
        v59 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v59 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      LODWORD(ObjectType) = v62;
      if (v59 <= 0)
      {
        goto LABEL_116;
      }
    }

    ObjectType = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!ObjectType)
    {
LABEL_127:

LABEL_134:

      return _swiftEmptyArrayStorage;
    }

LABEL_74:
    v79 = _swiftEmptyArrayStorage;
    result = sub_100046F90(0, ObjectType & ~(ObjectType >> 63), 0);
    if (ObjectType < 0)
    {
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      return result;
    }

    v41 = 0;
    v42 = v79;
    v68 = ObjectType;
    v69 = v22 & 0xC000000000000001;
    v66 = v22 + 32;
    v67 = v22 & 0xFFFFFFFFFFFFFF8;
    v65 = v22;
    while (2)
    {
      if (__OFADD__(v41, 1))
      {
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v70 = v41 + 1;
      if (v69)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = v43[16];
        if (!v11)
        {
          goto LABEL_86;
        }

LABEL_79:

        ObjectType = &off_100167CF8;
LABEL_80:
        v79 = v42;
        v45 = v42[2];
        v44 = v42[3];
        if (v45 >= v44 >> 1)
        {
          sub_100046F90((v44 > 1), v45 + 1, 1);
          v42 = v79;
        }

        v42[2] = v45 + 1;
        v46 = &v42[2 * v45];
        v46[4] = v11;
        v46[5] = ObjectType;
        v41 = v70;
        if (v70 == v68)
        {
          goto LABEL_106;
        }

        continue;
      }

      break;
    }

    if (v41 >= *(v67 + 16))
    {
      __break(1u);
LABEL_137:
      swift_once();
LABEL_8:
      v12 = p_superclass;
      v14 = p_superclass[200]->cache;
      if (v14)
      {
        v15 = v14;
        v16 = String._bridgeToObjectiveC()();
        v13 = v4;
        v4 = [v15 *(v4 + 1072)];

        if (v4)
        {
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;

          if (v17 == 0x656C676E6973 && v19 == 0xE600000000000000)
          {

            v4 = 1;
          }

          else
          {
            v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }
        }

        else
        {
        }
      }

      else
      {
        v13 = v4;
        v4 = 0;
      }

      continue;
    }

    break;
  }

  v43 = *(v66 + 8 * v41);

  v11 = v43[16];
  if (v11)
  {
    goto LABEL_79;
  }

LABEL_86:
  v11 = v43[9];
  if (!(v11 >> 62))
  {
    v71 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v71)
    {
      goto LABEL_88;
    }

LABEL_125:

    v60 = 86;
    goto LABEL_126;
  }

  v71 = _CocoaArrayWrapper.endIndex.getter();
  if (!v71)
  {
    goto LABEL_125;
  }

LABEL_88:
  swift_beginAccess();
  v22 = 0;
  while (2)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v4 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_130;
      }
    }

    else
    {
      if (v22 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_131;
      }

      v47 = *(v11 + 8 * v22 + 32);

      v4 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }
    }

    if (!v43[2])
    {

      v74 = 0;
      v72 = 0u;
      v73 = 0u;
      goto LABEL_90;
    }

    v48 = v43[3];
    ObjectType = swift_getObjectType();
    v49 = *(v48 + 208);
    swift_unknownObjectRetain();
    v49(&v72, v47, ObjectType, v48);
    swift_unknownObjectRelease();

    if (!*(&v73 + 1))
    {
LABEL_90:
      sub_1000D13FC(&v72);
      ++v22;
      if (v4 == v71)
      {
        goto LABEL_125;
      }

      continue;
    }

    break;
  }

  sub_10001EFE4(&v72, v75);
  sub_10001EFE4(v75, v76);
  v50 = v77;
  v51 = v78;
  sub_10001EAB8(v76, v77);
  v52 = (*(v51 + 32))(v50, v51);
  if (v52)
  {
    v11 = v52;
    v54 = v53;

    ObjectType = *(v54 + 16);
    sub_10000CE78(v76);
    v22 = v65;
    v4 = v63;
    p_superclass = &off_100167CF8;
    goto LABEL_80;
  }

  sub_10000CE78(v76);
  v60 = 87;
LABEL_126:
  sub_10000CA2C();
  swift_allocError();
  *v61 = v60;
  *(v61 + 8) = 0;
  *(v61 + 16) = 0xE000000000000000;
  swift_willThrow();

  return _swiftEmptyArrayStorage;
}

void sub_1000CF490(int a1, unint64_t a2, char a3, void *a4)
{
  v93 = 0;
  v10 = USBDescriptorControl.pbLayout()();
  v11 = sub_1000A0294(v10);
  if (!v5)
  {
    v13 = v12;
    v89 = v11;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      sub_10000CA2C();
      swift_allocError();
      *v31 = 7;
      *(v31 + 8) = 0;
      *(v31 + 16) = 0xE000000000000000;
      swift_willThrow();
      goto LABEL_16;
    }

    v83 = v10;
    v91 = v13;
    v14 = sub_1000A2D88(a1 & 0xFFFFFF);
    if (a3)
    {
      v15 = 0;
    }

    else
    {
      v15 = a2;
    }

    v16 = a4[3];
    v17 = a4[4];
    sub_10001EAB8(a4, v16);
    v85 = *(v17 + 8);
    v86 = v17;
    v87 = v16;
    v85(v105, v16, v17);
    v18 = v106;
    v19 = v107;
    sub_10001EAB8(v105, v106);
    v20 = (*(v19 + 16))(v18, v19);
    if ((v20 | v15) >= 0x10000)
    {
      __break(1u);
    }

    else
    {
      v21 = v20;
      v84 = *(v4 + 16);
      v22 = *(v84 + 2);
      v23 = NSData.startIndex.getter();
      v24 = NSData.endIndex.getter();
      v25 = NSData.startIndex.getter();
      v26 = NSData.endIndex.getter();
      if (v23 >= v25 && v26 >= v23)
      {
        v27 = NSData.startIndex.getter();
        v28 = NSData.endIndex.getter();
        if (v24 >= v27 && v28 >= v24)
        {
          v29 = v24 - v23;
          if (!__OFSUB__(v24, v23))
          {
            if (v29 >= 0xFFFF)
            {
              v29 = 0xFFFFLL;
            }

            v30 = v15 | (v14 << 8);
            sub_1000FC690(((v22 | (v21 << 8)) << 32) | ((v29 & ~(v29 >> 63)) << 48) | (v30 << 16) | 0x82A1, v91, &v93);
            sub_10000CE78(v105);
            v32 = v93;
            v33 = v91;
            v34 = NSData.startIndex.getter();
            v35 = NSData.endIndex.getter();
            v36 = NSData.startIndex.getter();
            v37 = NSData.endIndex.getter();
            if (v34 < v36 || v37 < v34)
            {
              __break(1u);
            }

            else
            {
              v33 = v91;
              v36 = NSData.startIndex.getter();
              v38 = NSData.endIndex.getter();
              if (v35 >= v36 && v38 >= v35)
              {
                if (!__OFSUB__(v35, v34))
                {
                  v39 = Strong;
                  if (v32 != &v35[-v34])
                  {
                    sub_10000CA2C();
                    swift_allocError();
                    *v41 = 30;
                    *(v41 + 8) = 0;
                    *(v41 + 16) = 0xE000000000000000;
                    swift_willThrow();

LABEL_25:
                    return;
                  }

                  ADCControlRequestParameterBlock.getCur()(v105, v91, v89 & 0x1FF);
                  v88 = v30;
                  v85(v102, v87, v86);
                  v42 = v103;
                  v43 = v104;
                  sub_10001EAB8(v102, v103);
                  v44 = (*(v43 + 16))(v42, v43);
                  if (v44 >> 16)
                  {
                    __break(1u);
                  }

                  else
                  {
                    v45 = v44;
                    v46 = *(v84 + 2);
                    v47 = NSData.startIndex.getter();
                    v48 = NSData.endIndex.getter();
                    v49 = NSData.startIndex.getter();
                    v50 = NSData.endIndex.getter();
                    if (v47 >= v49 && v50 >= v47)
                    {
                      v51 = NSData.startIndex.getter();
                      v52 = NSData.endIndex.getter();
                      if (v48 >= v51 && v52 >= v48)
                      {
                        v53 = v48 - v47;
                        if (!__OFSUB__(v48, v47))
                        {
                          v54 = v88 << 16;
                          if (v53 >= 0xFFFF)
                          {
                            v53 = 0xFFFFLL;
                          }

                          sub_1000FC690(((v46 | (v45 << 8)) << 32) | ((v53 & ~(v53 >> 63)) << 48) | v54 | 0x83A1, v91, &v93);
                          v55 = 0;
                          sub_10000CE78(v102);
                          v56 = v93;
                          v57 = NSData.startIndex.getter();
                          v58 = NSData.endIndex.getter();
                          v59 = NSData.startIndex.getter();
                          v60 = NSData.endIndex.getter();
                          if (v57 >= v59 && v60 >= v57)
                          {
                            v13 = v91;
                            v61 = NSData.startIndex.getter();
                            v62 = NSData.endIndex.getter();
                            if (v58 >= v61 && v62 >= v58)
                            {
                              if (!__OFSUB__(v58, v57))
                              {
                                if (v56 == (v58 - v57))
                                {
                                  ADCControlRequestParameterBlock.getCur()(v102, v91, v89 & 0x1FF);
                                  v63 = 0;
                                  v85(&v99, v87, v86);
                                  v65 = v100;
                                  v66 = v101;
                                  v39 = sub_10001EAB8(&v99, v100);
                                  v67 = (*(v66 + 16))(v65, v66);
                                  if (v67 >> 16)
                                  {
                                    __break(1u);
                                  }

                                  else
                                  {
                                    v68 = v67;
                                    v55 = *(v84 + 2);
                                    v39 = v91;
                                    v69 = NSData.startIndex.getter();
                                    v70 = NSData.endIndex.getter();
                                    v65 = NSData.startIndex.getter();
                                    v71 = NSData.endIndex.getter();
                                    if (v69 >= v65 && v71 >= v69)
                                    {
                                      v39 = v91;
                                      v65 = NSData.startIndex.getter();
                                      v72 = NSData.endIndex.getter();
                                      if (v70 >= v65 && v72 >= v70)
                                      {
                                        v73 = v70 - v69;
                                        if (!__OFSUB__(v70, v69))
                                        {
                                          if (v73 >= 0xFFFF)
                                          {
                                            v73 = 0xFFFFLL;
                                          }

                                          v63 = v91;
                                          sub_1000FC690(((v55 | (v68 << 8)) << 32) | ((v73 & ~(v73 >> 63)) << 48) | v54 | 0x84A1, v91, &v93);
                                          v55 = 0;
                                          sub_10000CE78(&v99);
                                          v74 = v93;
                                          v39 = v91;
                                          v75 = NSData.startIndex.getter();
                                          v76 = NSData.endIndex.getter();
                                          v65 = NSData.startIndex.getter();
                                          v77 = NSData.endIndex.getter();
                                          if (v75 >= v65 && v77 >= v75)
                                          {
                                            v65 = NSData.startIndex.getter();
                                            v78 = NSData.endIndex.getter();
                                            v63 = Strong;
                                            if (v76 >= v65 && v78 >= v76)
                                            {
                                              if (!__OFSUB__(v76, v75))
                                              {
                                                if (v74 == (v76 - v75))
                                                {
                                                  ADCControlRequestParameterBlock.getCur()(&v99, v91, v89 & 0x1FF);
                                                  goto LABEL_63;
                                                }

                                                sub_10000CA2C();
                                                swift_allocError();
                                                *v80 = 30;
                                                *(v80 + 8) = 0;
                                                *(v80 + 16) = 0xE000000000000000;
                                                swift_willThrow();

                                                sub_10000CE78(v102);
                                                sub_10000CE78(v105);
                                                goto LABEL_25;
                                              }

LABEL_99:
                                              __break(1u);
                                              swift_once();
                                              v79 = type metadata accessor for AUALog(0);
                                              sub_10000A1BC(v79, qword_100179508);
                                              sub_100039F58(2, v63 + v65, v39, v55);

                                              swift_willThrow();

                                              sub_10000CE78(v102);
                                              sub_10000CE78(v105);

                                              sub_10000CE78(&v99);
                                              return;
                                            }

LABEL_98:
                                            __break(1u);
                                            goto LABEL_99;
                                          }

LABEL_97:
                                          __break(1u);
                                          goto LABEL_98;
                                        }

LABEL_96:
                                        __break(1u);
                                        __break(1u);
                                        __break(1u);
                                        goto LABEL_97;
                                      }

LABEL_95:
                                      __break(1u);
                                      goto LABEL_96;
                                    }
                                  }

                                  __break(1u);
                                  goto LABEL_95;
                                }

                                sub_10000CA2C();
                                swift_allocError();
                                *v64 = 30;
                                *(v64 + 8) = 0;
                                *(v64 + 16) = 0xE000000000000000;
                                swift_willThrow();

                                sub_10000CE78(v105);
LABEL_16:

                                return;
                              }

LABEL_92:
                              __break(1u);
                              goto LABEL_82;
                            }

LABEL_91:
                            __break(1u);
                            goto LABEL_92;
                          }

LABEL_90:
                          __break(1u);
                          goto LABEL_91;
                        }

LABEL_89:
                        __break(1u);
                        __break(1u);
                        __break(1u);
                        goto LABEL_90;
                      }

LABEL_88:
                      __break(1u);
                      goto LABEL_89;
                    }
                  }

                  __break(1u);
                  goto LABEL_88;
                }

LABEL_72:
                __break(1u);
                swift_once();
                v40 = type metadata accessor for AUALog(0);
                sub_10000A1BC(v40, qword_100179508);
                sub_100039F58(2, &v35[v36], v33, 0);

                swift_willThrow();

                sub_10000CE78(v105);
                return;
              }
            }

            __break(1u);
            goto LABEL_72;
          }

LABEL_62:
          __break(1u);
LABEL_63:
          if (v83 == 2)
          {
            sub_10001EAFC(v105, v94);
            sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
            if (swift_dynamicCast())
            {
              sub_10001EAFC(v102, v94);
              if (swift_dynamicCast())
              {
                sub_10001EAFC(&v99, v94);
                if (swift_dynamicCast())
                {
                  v97 = &type metadata for AudioClassRange32bit;
                  v98 = &off_100163F78;
                  LODWORD(v95) = v92;
                  HIDWORD(v95) = v92;
                  LODWORD(v96) = v92;
                  goto LABEL_81;
                }
              }
            }
          }

          else if (v83 == 1)
          {
            sub_10001EAFC(v105, v94);
            sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
            if (swift_dynamicCast())
            {
              sub_10001EAFC(v102, v94);
              if (swift_dynamicCast())
              {
                sub_10001EAFC(&v99, v94);
                if (swift_dynamicCast())
                {
                  v97 = &type metadata for AudioClassRange16bit;
                  v98 = &off_100163F40;
                  LOWORD(v95) = v92;
                  WORD1(v95) = v92;
                  WORD2(v95) = v92;
                  goto LABEL_81;
                }
              }
            }
          }

          else
          {
            if (v83)
            {
              sub_10000CA2C();
              swift_allocError();
              v82 = 32;
              goto LABEL_85;
            }

            sub_10001EAFC(v105, v94);
            sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
            if (swift_dynamicCast())
            {
              sub_10001EAFC(v102, v94);
              if (swift_dynamicCast())
              {
                sub_10001EAFC(&v99, v94);
                if (swift_dynamicCast())
                {
                  v97 = &type metadata for AudioClassRange8bit;
                  v98 = &off_100163F08;
                  LOBYTE(v95) = v92;
                  BYTE1(v95) = v92;
                  BYTE2(v95) = v92;
LABEL_81:
                  sub_10001EAFC(&v95, v94);
                  sub_1000A0698(v83, v94);
LABEL_82:

                  sub_10000CE78(&v99);
                  sub_10000CE78(v102);
                  sub_10000CE78(v105);
                  sub_10000CE78(&v95);

                  return;
                }
              }
            }
          }

          sub_10000CA2C();
          swift_allocError();
          v82 = 1;
LABEL_85:
          *v81 = v82;
          *(v81 + 8) = 0;
          *(v81 + 16) = 0xE000000000000000;
          swift_willThrow();

          sub_10000CE78(&v99);
          sub_10000CE78(v102);
          sub_10000CE78(v105);

          return;
        }

LABEL_61:
        __break(1u);
        goto LABEL_62;
      }
    }

    __break(1u);
    goto LABEL_61;
  }
}

unint64_t sub_1000D0D00(int a1, uint64_t a2)
{
  v5 = type metadata accessor for LogID(0);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v8._countAndFlagsBits = 0xD000000000000028;
  v8._object = 0x8000000100131050;
  String.append(_:)(v8);
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10011DE90;
  *(v9 + 56) = &type metadata for Int32;
  *(v9 + 64) = &protocol witness table for Int32;
  *(v9 + 32) = a1;
  v10._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v10);

  v11._object = 0x800000010012BE30;
  v11._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v11);
  v23 = a2;
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v14 = v21;
  v13 = v22;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A1BC(v5, qword_1001794F0);
  sub_10000A2A4(v15, v7);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v16, qword_100179508);
  sub_100039AA0(2, v7, v14, v13);

  sub_10000C9D0(v7);
  if (a2 == 2)
  {
    swift_beginAccess();
    v17 = *(v2 + 216);
    if (v17)
    {
      return sub_1000CE760(*[v17 bytes]);
    }
  }

  sub_10000A2A4(v15, v7);
  sub_100039F58(2, v7, 0xD000000000000042, 0x8000000100131080);
  sub_10000C9D0(v7);
  sub_10000CA2C();
  swift_allocError();
  *v19 = 2;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

unint64_t sub_1000D1038(int a1, uint64_t a2)
{
  result = sub_1000D0D00(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

unint64_t sub_1000D1094(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_100001AB4(&qword_100175508, &qword_100120F98);
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

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
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

unint64_t sub_1000D1164(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100024020(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1000D1094(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1000D1224(uint64_t a1, uint64_t a2, uint64_t a3)
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
  type metadata accessor for ActiveStreamingInterface();
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

uint64_t sub_1000D1324(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_10007F77C();

  return sub_1000D1224(v5, v3, 0);
}

uint64_t sub_1000D13FC(uint64_t a1)
{
  v2 = sub_100001AB4(&qword_100176188, &qword_100124520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

const IOUSBEndpointDescriptor *sub_1000D1464@<X0>(uint64_t a1@<X0>, char *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a2;
  v7 = type metadata accessor for LogID(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:

    sub_10000CA2C();
    swift_allocError();
    v16 = 36;
    goto LABEL_17;
  }

  v12 = *(a1 + 41);
  if (v12 > 0xF || ((1 << v12) & 0xF3FC) == 0)
  {
    sub_10000CA2C();
    swift_allocError();
    v16 = 49;
    goto LABEL_17;
  }

  v14 = *(a1 + 32);
  if (v14[2] != v4)
  {
    sub_10000CA2C();
    swift_allocError();
    v16 = 84;
    goto LABEL_17;
  }

  if (!v14[3])
  {
    sub_10000CA2C();
    swift_allocError();
    v16 = 83;
    goto LABEL_17;
  }

  if (v14[5] != 1)
  {
    sub_10000CA2C();
    swift_allocError();
    v16 = 81;
    goto LABEL_17;
  }

  if (v14[6] != 2)
  {
    sub_10000CA2C();
    swift_allocError();
    v16 = 82;
    goto LABEL_17;
  }

  if (v14[7])
  {
    sub_10000CA2C();
    swift_allocError();
    v16 = 85;
LABEL_17:
    *v15 = v16;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  v189 = v10;
  v190 = v8;
  v175 = 0;
  v176 = v3;
  v173 = 0;
  v174 = 0;
  bmAttributes = 0;
  v170 = 0;
  v194 = 0;
  v195 = 0;
  v178 = 0;
  v181 = 0;
  v182 = 0;
  *&v191[4] = 0;
  v192 = 0;
  v18 = 0;
  v19 = 0;
  v20 = &v210;
  v21 = *(a1 + 40);
  v168 = v14[4];
  v202 = &_swiftEmptySetSingleton;
  v203 = &_swiftEmptySetSingleton;
  *v191 = v21 | (v12 << 8);
  v188 = "tusWord did not decode";
  v164 = "lid for Data EPs";
  v163 = "n, defaulting to 6";
  v166 = "ontrol Interface";
  v165 = "ard EP in ADC1 function";
  v162 = "P - only valid for Feedback EPs";
  v177 = a1 + 41;
  v22 = _swiftEmptyArrayStorage;
  v167 = 1;
  v172 = 65280;
  v180 = 1;
  v183 = 1;
  v23 = _swiftEmptyArrayStorage;
  v169 = a3;
  v179 = v14;
  v193 = v11;
  while (2)
  {
    v187 = v178 & 1;
    v24 = v19;
    v25 = v18;
    v26 = (v177 + 16 * v19);
    while (1)
    {
      if (v24 >= v11)
      {
        goto LABEL_223;
      }

      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_224;
      }

      v197 = v24;
      v198 = v25;
      v28 = *v26;
      v29 = *(v26 - 1) | (v28 << 8);
      v199 = *(v26 - 9);
      if (_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v199, v29, v14, *v191))
      {
        v196 = v27;
LABEL_20:
        v11 = v193;
LABEL_21:
        v18 = v198;
        goto LABEL_22;
      }

      if (v28 != 17)
      {
        break;
      }

      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v30 = sub_10000A1BC(v190, qword_1001794F0);
      v31 = v189;
      sub_10000A2A4(v30, v189);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v32, qword_100179508);
      sub_100039F58(1, v31, 0xD000000000000027, (v188 | 0x8000000000000000));
      sub_10000C9D0(v31);
      v33 = v198;
      if (v198)
      {
        v196 = v27;
        v34 = v203;
        v20 = v203[2];
        if (v20)
        {
          v185 = v22;
          v186 = v23;
          sub_100001AB4(&qword_100175170, &qword_100120D48);
          v35 = swift_allocObject();
          v36 = j__malloc_size(v35);
          v35[2] = v20;
          v35[3] = 2 * v36 - 64;
          v184 = sub_10011B610(&v215, v35 + 32, v20, v34);
          v37 = v215;
          v23 = v216;
          v14 = v218;
          v22 = v219;

          sub_100022644(v37);
          if (v184 != v20)
          {
            __break(1u);
            goto LABEL_230;
          }

          v14 = v179;
          v20 = &v210;
          v22 = v185;
          v23 = v186;
          v27 = v196;
          v33 = v198;
          if (!v35[2])
          {
LABEL_37:

            v35 = 0;
          }
        }

        else
        {
          v35 = _swiftEmptyArrayStorage;
          v20 = &v210;
          v27 = v196;
          if (!_swiftEmptyArrayStorage[2])
          {
            goto LABEL_37;
          }
        }

        v200 = v183 & 1;
        v201 = v180 & 1;
        if (!*(v23 + 2))
        {

          v23 = 0;
        }

        *&v210 = v33;
        *(&v210 + 1) = *&v191[4];
        *&v211 = v192;
        BYTE8(v211) = v181;
        *(&v211 + 10) = v207;
        HIWORD(v211) = v208;
        *(&v212 + 1) = *v206;
        DWORD1(v212) = *&v206[3];
        *(&v213 + 2) = v204;
        WORD3(v213) = v205;
        BYTE9(v211) = v201;
        LOBYTE(v212) = v187;
        *(&v212 + 1) = v195;
        LOBYTE(v213) = v182;
        *(&v214 + 1) = v35;
        v215 = v33;
        BYTE1(v213) = v200;
        *(&v213 + 1) = v23;
        *&v214 = v194;
        v216 = *&v191[4];
        v217 = v192;
        LOBYTE(v218) = v181;
        BYTE1(v218) = v201;
        *(&v218 + 2) = v207;
        HIWORD(v218) = v208;
        LOBYTE(v219) = v187;
        HIDWORD(v219) = *&v206[3];
        *(&v219 + 1) = *v206;
        v220 = v195;
        v221 = v182;
        v222 = v200;
        v224 = v205;
        v223 = v204;
        v225 = v23;
        v226 = v194;
        v227 = v35;
        sub_100022594(&v210, v209);
        sub_1000225F0(&v215);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1000243F8(0, *(v22 + 2) + 1, 1, v22);
        }

        v39 = *(v22 + 2);
        v38 = *(v22 + 3);
        if (v39 >= v38 >> 1)
        {
          v22 = sub_1000243F8((v38 > 1), v39 + 1, 1, v22);
        }

        v194 = 0;
        *&v191[4] = 0;
        v192 = 0;
        *(v22 + 2) = v39 + 1;
        v40 = &v22[80 * v39];
        *(v40 + 2) = v210;
        v41 = v211;
        v42 = v212;
        v43 = v214;
        *(v40 + 5) = v213;
        *(v40 + 6) = v43;
        *(v40 + 3) = v41;
        *(v40 + 4) = v42;
        v23 = _swiftEmptyArrayStorage;
        goto LABEL_46;
      }

      v20 = &v210;
LABEL_46:
      v25 = v199;
      v44 = IOUSBGetEndpointDirection(v199) == 1 && v25->wMaxPacketSize < 9u;
      if (IOUSBGetEndpointType(v25) != 1)
      {
        sub_10009B498(&v215, 62);
        v25 = v199;
      }

      if (!v44 && !IOUSBGetEndpointSynchronizationType(v25))
      {
        sub_10009B498(&v215, 94);
        v25 = v199;
      }

      v195 = 0;
      v26 += 16;
      v24 = (v197 + 1);
      v11 = v193;
      if (v27 == v193)
      {
        goto LABEL_184;
      }
    }

    v196 = v27;
    if (v28 <= 59)
    {
      v11 = v193;
      v48 = v199;
      if (v28 != 18)
      {
        if (v28 == 19)
        {
          *&v191[4] = v199;
          goto LABEL_21;
        }

        if (v28 == 20)
        {
          v192 = v199;
          goto LABEL_21;
        }

LABEL_107:
        sub_10009B498(&v215, 37);
        goto LABEL_20;
      }

      v68 = v198;
      if (v198)
      {
        v69 = v203;
        v70 = v203[2];
        if (v70)
        {
          sub_100001AB4(&qword_100175170, &qword_100120D48);
          v71 = swift_allocObject();
          v72 = j__malloc_size(v71);
          *(v71 + 16) = v70;
          *(v71 + 24) = 2 * v72 - 64;
          v73 = v71;
          v197 = sub_10011B610(&v215, (v71 + 32), v70, v69);
          v74 = v215;
          v185 = v218;
          v186 = v217;
          v184 = v219;

          sub_100022644(v74);
          if (v197 != v70)
          {
            __break(1u);
            goto LABEL_232;
          }

          v20 = &v210;
          v68 = v198;
        }

        else
        {
          v73 = _swiftEmptyArrayStorage;
          v20 = &v210;
        }

        if (!v73[2])
        {

          v73 = 0;
        }

        v200 = v183 & 1;
        v201 = v180 & 1;
        if (!*(v23 + 2))
        {

          v23 = 0;
        }

        *&v210 = v68;
        *(&v210 + 1) = *&v191[4];
        *&v211 = v192;
        BYTE8(v211) = v181;
        *(&v211 + 10) = v207;
        HIWORD(v211) = v208;
        *(&v212 + 1) = *v206;
        DWORD1(v212) = *&v206[3];
        *(&v213 + 2) = v204;
        WORD3(v213) = v205;
        BYTE9(v211) = v201;
        LOBYTE(v212) = v187;
        *(&v212 + 1) = v195;
        LOBYTE(v213) = v182;
        *(&v214 + 1) = v73;
        v215 = v68;
        BYTE1(v213) = v200;
        *(&v213 + 1) = v23;
        *&v214 = v194;
        v216 = *&v191[4];
        v217 = v192;
        LOBYTE(v218) = v181;
        BYTE1(v218) = v201;
        *(&v218 + 2) = v207;
        HIWORD(v218) = v208;
        LOBYTE(v219) = v187;
        HIDWORD(v219) = *&v206[3];
        *(&v219 + 1) = *v206;
        v220 = v195;
        v221 = v182;
        v222 = v200;
        v224 = v205;
        v223 = v204;
        v225 = v23;
        v226 = v194;
        v227 = v73;
        sub_100022594(&v210, v209);
        sub_1000225F0(&v215);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1000243F8(0, *(v22 + 2) + 1, 1, v22);
        }

        v88 = *(v22 + 2);
        v87 = *(v22 + 3);
        if (v88 >= v87 >> 1)
        {
          v22 = sub_1000243F8((v87 > 1), v88 + 1, 1, v22);
        }

        v194 = 0;
        v195 = 0;
        *&v191[4] = 0;
        v192 = 0;
        *(v22 + 2) = v88 + 1;
        v89 = &v22[80 * v88];
        *(v89 + 2) = v210;
        v90 = v211;
        v91 = v212;
        v92 = v214;
        *(v89 + 5) = v213;
        *(v89 + 6) = v92;
        *(v89 + 3) = v90;
        *(v89 + 4) = v91;
        v23 = _swiftEmptyArrayStorage;
        v48 = v199;
      }

      if (IOUSBGetEndpointDirection(v48) == 1)
      {
        wMaxPacketSize = v48->wMaxPacketSize;
        v94 = wMaxPacketSize < 9;
        bDescriptorType = v48[1].bDescriptorType;
        if (!v48[1].bDescriptorType)
        {
          v186 = v23;
          v101 = v22;
          v106 = v48 + 1;
          bLength = v48[1].bLength;
          if (!v48[1].bLength)
          {
            goto LABEL_168;
          }

          if (wMaxPacketSize <= 8)
          {
LABEL_159:
            if (bLength >= 0xA)
            {
              v215 = 0;
              v216 = 0xE000000000000000;
              _StringGuts.grow(_:)(56);
              v107._object = (v166 | 0x8000000000000000);
              v107._countAndFlagsBits = 0xD000000000000014;
              String.append(_:)(v107);
              LOBYTE(v210) = v106->bLength;
              v108._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v108);

              v109._countAndFlagsBits = 0xD000000000000022;
              v109._object = (v162 | 0x8000000000000000);
              String.append(_:)(v109);
              v110 = v216;
              v198 = v215;
              if (qword_100173CB8 != -1)
              {
                swift_once();
              }

              v111 = sub_10000A1BC(v190, qword_1001794F0);
              v112 = v189;
              sub_10000A2A4(v111, v189);
              v22 = v101;
              if (qword_100173CC0 != -1)
              {
                swift_once();
              }

              v113 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v113, qword_100179508);
              v94 = 1;
              sub_100039F58(1, v112, v198, v110);

              sub_10000C9D0(v112);
              v23 = v186;
              v180 = 0;
              v181 = 6;
LABEL_175:
              v48 = v199;
              goto LABEL_176;
            }

            v180 = 0;
            v181 = bLength;
            v94 = 1;
LABEL_168:
            v22 = v101;
            v23 = v186;
            goto LABEL_176;
          }

          v22 = v101;
          v23 = v186;
          goto LABEL_170;
        }

        if (wMaxPacketSize <= 8)
        {
          v186 = v23;
          v215 = 0;
          v216 = 0xE000000000000000;
          _StringGuts.grow(_:)(73);
          v96._countAndFlagsBits = 0xD000000000000018;
          v96._object = (v164 | 0x8000000000000000);
          String.append(_:)(v96);
          LOBYTE(v210) = v48[1].bDescriptorType;
          v97._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v97);

          v98._countAndFlagsBits = 0xD00000000000002FLL;
          v98._object = (v163 | 0x8000000000000000);
          String.append(_:)(v98);
          v99 = v215;
          v100 = v216;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v101 = v22;
          v102 = sub_10000A1BC(v190, qword_1001794F0);
          v103 = v189;
          sub_10000A2A4(v102, v189);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v104 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v104, qword_100179508);
          v94 = 1;
          sub_100039F58(1, v103, v99, v100);

          sub_10000C9D0(v103);
          sub_10009B498(&v215, 34);
          v48 = v199;
          v106 = v199 + 1;
          bLength = v199[1].bLength;
          if (!v199[1].bLength)
          {
            goto LABEL_168;
          }

          goto LABEL_159;
        }
      }

      else
      {
        bDescriptorType = v48[1].bDescriptorType;
        if (!v48[1].bDescriptorType)
        {
          if (!v48[1].bLength)
          {
            v94 = 0;
            goto LABEL_176;
          }

LABEL_170:
          v215 = 0;
          v216 = 0xE000000000000000;
          _StringGuts.grow(_:)(69);
          v114._object = (v166 | 0x8000000000000000);
          v114._countAndFlagsBits = 0xD000000000000014;
          String.append(_:)(v114);
          LOBYTE(v210) = v48[1].bLength;
          v115._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v115);

          v116._countAndFlagsBits = 0xD00000000000002FLL;
          v116._object = (v165 | 0x8000000000000000);
          String.append(_:)(v116);
          v117 = v215;
          v118 = v216;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v119 = sub_10000A1BC(v190, qword_1001794F0);
          v120 = v189;
          sub_10000A2A4(v119, v189);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v121 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v121, qword_100179508);
          sub_100039F58(1, v120, v117, v118);

          sub_10000C9D0(v120);
          sub_10009B498(&v215, 35);
          v94 = 0;
          goto LABEL_175;
        }
      }

      v182 = bDescriptorType | 0x80;
      v183 = 0;
      if (!v48[1].bLength)
      {
        v94 = v183;
LABEL_176:
        if (IOUSBGetEndpointType(v48) != 1)
        {
          sub_10009B498(&v215, 62);
          v48 = v199;
        }

        if (v94 || IOUSBGetEndpointSynchronizationType(v48))
        {
          v18 = v48;
          v11 = v193;
        }

        else
        {
          v18 = v48;
          sub_10009B498(&v215, 94);
          v11 = v193;
        }

        goto LABEL_22;
      }

      goto LABEL_170;
    }

    v45 = v176;
    v11 = v193;
    if (v28 > 63)
    {
      if (v28 != 64)
      {
        if (v28 == 65)
        {
          v49 = v22;

          result = USBDescriptor.usbDescriptor()(v199, v29);
          if (result)
          {
            v50 = result->bLength;
            if (result->bLength)
            {
              if (v50 >= 0xF)
              {
                type metadata accessor for __DataStorage();
                swift_allocObject();
                __DataStorage.init(bytes:length:)();
                v51 = __DataStorage._bytes.getter();
                if (!v51)
                {
                  goto LABEL_74;
                }

                v52 = __DataStorage._offset.getter();
                if (!__OFSUB__(0, v52))
                {
                  v51 -= v52;
LABEL_74:
                  v53 = __DataStorage._length.getter();
                  if (v53 >= v50)
                  {
                    v54 = v50;
                  }

                  else
                  {
                    v54 = v53;
                  }

                  v55 = &v51[v54];
                  if (v51)
                  {
                    v56 = v55;
                  }

                  else
                  {
                    v56 = 0;
                  }

                  sub_1000ED068(v51, v56, &v215);
                  if (!v45)
                  {
                    v176 = 0;

LABEL_131:
                    v22 = v49;
                    v172 = 0;
                    v173 = BYTE4(v215);
                    v175 = BYTE5(v215);
                    v174 = BYTE6(v215);
                    v194 = v216;
                    goto LABEL_20;
                  }

                  goto LABEL_227;
                }

LABEL_233:
                __break(1u);
              }

              *(&v210 + 6) = 0;
              *&v210 = 0;
              BYTE14(v210) = v50;
              memcpy(&v210, result, v50);
              *v209 = v210;
              *&v209[6] = *(&v210 + 6);
              v82 = v209;
              v83 = &v209[v50];
            }

            else
            {
              *(&v210 + 6) = 0;
              *&v210 = 0;
              v82 = &v210;
              v83 = &v210;
            }

            sub_1000ED068(v82, v83, &v215);
            if (!v45)
            {
              v176 = 0;
              goto LABEL_131;
            }

LABEL_228:
          }

LABEL_235:
          __break(1u);
          return result;
        }

        goto LABEL_107;
      }

      v185 = v22;

      result = USBDescriptor.usbDescriptor()(v199, v29);
      if (!result)
      {
        __break(1u);
        goto LABEL_235;
      }

      v60 = result;
      v61 = result->bLength;
      v18 = v198;
      if (!result->bLength)
      {
        *(&v210 + 6) = 0;
        *&v210 = 0;
        sub_1000EC290(&v210, &v210, &v215);
        if (v45)
        {
          goto LABEL_228;
        }

        v176 = 0;
        goto LABEL_126;
      }

      if (v61 < 0xF)
      {
        v84 = sub_1001127F8(result->bLength);
        v86 = HIWORD(v85);
        *&v210 = v84;
        DWORD2(v210) = v85;
        BYTE14(v210) = BYTE6(v85);
        WORD6(v210) = WORD2(v85);
        memcpy(&v210, v60, v61);
        *v209 = v210;
        *&v209[6] = *(&v210 + 6);
        sub_1000EC290(v209, &v209[v86], &v215);
        if (v45)
        {
          goto LABEL_228;
        }

        v176 = 0;
        v22 = v185;
        v18 = v198;
LABEL_134:
        v172 = 0;
        v173 = BYTE4(v215);
        v175 = BYTE5(v215);
        v174 = BYTE6(v215);
        v194 = v216;
        v11 = v193;
        goto LABEL_22;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(bytes:length:)();
      v62 = __DataStorage._bytes.getter();
      if (!v62)
      {
LABEL_94:
        v64 = __DataStorage._length.getter();
        if (v64 >= v61)
        {
          v65 = v61;
        }

        else
        {
          v65 = v64;
        }

        v66 = &v62[v65];
        if (v62)
        {
          v67 = v66;
        }

        else
        {
          v67 = 0;
        }

        sub_1000EC290(v62, v67, &v215);
        if (v45)
        {
LABEL_227:

          goto LABEL_228;
        }

        v176 = 0;

LABEL_126:
        v22 = v185;
        goto LABEL_134;
      }

      v63 = __DataStorage._offset.getter();
      if (!__OFSUB__(0, v63))
      {
        v62 -= v63;
        goto LABEL_94;
      }

LABEL_232:
      __break(1u);
      goto LABEL_233;
    }

    if (v28 == 60)
    {
      v57 = *(&v199->wMaxPacketSize + 1);
      v58 = v57 - 1;
      if (v57 == 8193)
      {
        v59 = 5;
      }

      else
      {
        v59 = 0;
      }

      if (v58 < 5)
      {
        v59 = 0x304020101uLL >> (8 * v58);
      }

      v170 = v59;
      bmAttributes = v199->bmAttributes;
      goto LABEL_21;
    }

    if (v28 != 63)
    {
      goto LABEL_107;
    }

    v46 = v199;
    v47 = v199->bmAttributes;
    if ((v47 & 1) == 0)
    {
      v18 = v198;
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_100024518(0, *(v23 + 2) + 1, 1, v23);
    }

    v76 = *(v23 + 2);
    v75 = *(v23 + 3);
    v11 = v193;
    if (v76 >= v75 >> 1)
    {
      v122 = sub_100024518((v75 > 1), v76 + 1, 1, v23);
      v11 = v193;
      v23 = v122;
    }

    *(v23 + 2) = v76 + 1;
    v77 = &v23[3 * v76];
    v77[34] = -61;
    *(v77 + 16) = 385;
    if (!v167)
    {
      goto LABEL_225;
    }

    v18 = v198;
    v46 = v199;
    v167 = v198 == 0;
    v47 = v199->bmAttributes;
LABEL_114:
    if ((v47 & 2) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_100024518(0, *(v23 + 2) + 1, 1, v23);
      }

      v79 = *(v23 + 2);
      v78 = *(v23 + 3);
      v11 = v193;
      if (v79 >= v78 >> 1)
      {
        v123 = sub_100024518((v78 > 1), v79 + 1, 1, v23);
        v11 = v193;
        v23 = v123;
      }

      *(v23 + 2) = v79 + 1;
      v80 = &v23[3 * v79];
      v80[34] = -64;
      *(v80 + 16) = 705;
      v18 = v198;
      v46 = v199;
    }

    wMaxPacketSize_low = LOBYTE(v46->wMaxPacketSize);
    if (wMaxPacketSize_low == 2)
    {
      v195 = *(&v46->wMaxPacketSize + 1);
      v178 = 1;
    }

    else if (wMaxPacketSize_low == 1)
    {
      v178 = 0;
      v195 = *(&v46->wMaxPacketSize + 1);
    }

LABEL_22:
    v19 = v196;
    if (v196 != v11)
    {
      continue;
    }

    break;
  }

  if (v18)
  {
    v25 = v18;
LABEL_184:

    v125 = sub_1000E45A0(v124);
    if (!v125[2])
    {

      v125 = 0;
    }

    v200 = v183 & 1;
    v201 = v180 & 1;
    if (*(v23 + 2))
    {
      v126 = v23;
    }

    else
    {
      v127 = v25;
      v128 = v125;

      v125 = v128;
      v25 = v127;
      v126 = 0;
    }

    *&v210 = v25;
    *(&v210 + 1) = *&v191[4];
    *&v211 = v192;
    BYTE8(v211) = v181;
    *(&v211 + 10) = v207;
    HIWORD(v211) = v208;
    *(&v212 + 1) = *v206;
    DWORD1(v212) = *&v206[3];
    *(&v213 + 2) = v204;
    WORD3(v213) = v205;
    BYTE9(v211) = v201;
    LOBYTE(v212) = v178 & 1;
    *(&v212 + 1) = v195;
    LOBYTE(v213) = v182;
    *(&v214 + 1) = v125;
    v215 = v25;
    BYTE1(v213) = v200;
    *(&v213 + 1) = v126;
    *&v214 = v194;
    v216 = *&v191[4];
    v217 = v192;
    LOBYTE(v218) = v181;
    BYTE1(v218) = v201;
    *(&v218 + 2) = v207;
    HIWORD(v218) = v208;
    LOBYTE(v219) = v178 & 1;
    HIDWORD(v219) = *&v206[3];
    *(&v219 + 1) = *v206;
    v220 = v195;
    v221 = v182;
    v222 = v200;
    v224 = v205;
    v223 = v204;
    v225 = v126;
    v226 = v194;
    v227 = v125;
    sub_100022594(&v210, v209);
    sub_1000225F0(&v215);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_230:
      v22 = sub_1000243F8(0, *(v22 + 2) + 1, 1, v22);
    }

    v130 = *(v22 + 2);
    v129 = *(v22 + 3);
    if (v130 >= v129 >> 1)
    {
      v22 = sub_1000243F8((v129 > 1), v130 + 1, 1, v22);
    }

    *(v22 + 2) = v130 + 1;
    v131 = &v22[80 * v130];
    *(v131 + 2) = v210;
    v132 = v20[1];
    v133 = v20[2];
    v134 = v20[4];
    *(v131 + 5) = v20[3];
    *(v131 + 6) = v134;
    *(v131 + 3) = v132;
    *(v131 + 4) = v133;
  }

  else
  {
  }

  v186 = v23;
  v135 = *(v22 + 2);

  if (v135)
  {
    v136 = 0;
    v137 = v22;
    v138 = 0;
    v139 = v137;
    v140 = (v137 + 32);
    while (1)
    {
      if (v138 >= *(v139 + 2))
      {
        __break(1u);
        goto LABEL_227;
      }

      v20[5] = *v140;
      v141 = v140[1];
      v142 = v140[2];
      v143 = v140[4];
      v20[8] = v140[3];
      v20[9] = v143;
      v20[6] = v141;
      v20[7] = v142;
      if (!v136)
      {
        v144 = *(v20 + 10);
        sub_100022594(&v215, &v210);
        if (IOUSBGetEndpointUsageType(v144) || (v146 = v144->wMaxPacketSize, v146 <= 8) && v146 > 2)
        {
          v145 = IOUSBGetEndpointUsageType(v144);
          sub_1000225F0(&v215);
          v136 = v145 == 2;
          goto LABEL_197;
        }

        sub_1000225F0(&v215);
      }

      v136 = 1;
LABEL_197:
      ++v138;
      v140 += 5;
      if (v135 == v138)
      {
        v22 = v139;
        if (v136)
        {
          goto LABEL_207;
        }

        break;
      }
    }
  }

  sub_10009B498(&v215, 90);
LABEL_207:
  v147 = v22;
  if (*(v22 + 2) != v168)
  {
    sub_10009B498(&v215, 91);
  }

  v148 = v172 >> 8;
  if (v172 >> 8 <= 0xFE)
  {
    v149 = v173;
  }

  else
  {
    v149 = 0;
  }

  if (v148 <= 0xFE)
  {
    v150 = v172;
  }

  else
  {
    v150 = 0;
  }

  if (v148 <= 0xFE)
  {
    v151 = BYTE1(v172);
  }

  else
  {
    v151 = 0;
  }

  v152 = sub_1000E45A0(v202);
  if (!v152[2])
  {

    v152 = 0;
  }

  v153 = bmAttributes;
  v154 = v170;
  v156 = v174;
  v155 = v175;
  *&v210 = v14;
  BYTE8(v210) = v170;
  *(v20 + 2) = bmAttributes;
  *(v20 + 3) = v155;
  *(v20 + 4) = v156;
  *(v20 + 5) = v149;
  LOBYTE(v213) = v150;
  BYTE1(v213) = v151;
  *(v20 + 7) = v147;
  *(v20 + 8) = 0;
  *(v20 + 9) = v152;
  *(v20 + 10) = v14;
  LOBYTE(v216) = v154;
  *(v20 + 12) = v153;
  *(v20 + 13) = v155;
  *(v20 + 14) = v156;
  *(v20 + 15) = v149;
  v221 = v150;
  v222 = v151;
  *(v20 + 17) = v147;
  *(v20 + 18) = 0;
  *(v20 + 19) = v152;
  sub_10001EBF0(&v210, v209);
  result = sub_10001EC4C(&v215);
  v157 = v20[1];
  v158 = v20[3];
  v159 = v20[4];
  v160 = v169;
  v169[2] = v20[2];
  v160[3] = v158;
  v160[4] = v159;
  *v160 = v210;
  v160[1] = v157;
  return result;
}

uint64_t sub_1000D2D48()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() entryFromPath:v0];

  if (!v1)
  {
    return 0;
  }

  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 propertyForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {

    sub_100022ADC(v9);
    return 0;
  }

  sub_1000D3028();
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v4 = *[v6 bytes];

  if (v4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1000D2EB8()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() entryFromPath:v0];

  if (!v1)
  {
    return 0;
  }

  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 propertyForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {

    sub_100022ADC(v9);
    return 0;
  }

  sub_1000D3028();
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v4 = *[v6 bytes];

  if (v4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}