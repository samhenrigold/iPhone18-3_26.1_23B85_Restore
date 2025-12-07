void sub_10003533C(void *a1, uint64_t a2)
{
  v6 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    swift_once();
    v7 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v7, qword_100179508);
    sub_100039F58(2, v2 + v4, v3, a1);

    return;
  }

  sub_1000330B4(v6);
  AUAAudioDevice.clockChanged()();
}

id AUAClockSelectorControl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUAClockSelectorControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100035698()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + 40);

  return v1;
}

uint64_t sub_1000356DC()
{
  if (swift_weakLoadStrong())
  {
    sub_100032520();
  }

  else
  {
    sub_10000CA2C();
    swift_allocError();
    *v1 = 72;
    *(v1 + 8) = 0;
    *(v1 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }
}

unint64_t sub_100035760(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003582C(v11, 0, 0, 1, a1, a2);
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
    sub_10001E0C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000CE78(v11);
  return v7;
}

unint64_t sub_10003582C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100035938(a5, a6);
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

void *sub_100035938(uint64_t a1, unint64_t a2)
{
  v3 = sub_100035984(a1, a2);
  sub_100035AB4(&off_100159DC8);
  return v3;
}

void *sub_100035984(uint64_t a1, unint64_t a2)
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

  v6 = sub_100035BA0(v5, 0);
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
        v7 = sub_100035BA0(v10, 0);
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

uint64_t sub_100035AB4(uint64_t result)
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

  result = sub_100035C14(result, v11, 1, v3);
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

void *sub_100035BA0(uint64_t a1, uint64_t a2)
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

  sub_100001AB4(&qword_100175C88, qword_100121348);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100035C14(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175C88, qword_100121348);
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

uint64_t sub_100035D28(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActiveClockSource(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    return *(v3 + 40) == *(a1 + 40);
  }

  else
  {
    type metadata accessor for ActiveClockSelector(0);
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 40);
    if (*(result + 40) == v6)
    {
      return 1;
    }

    swift_unknownObjectRetain();
    if (!sub_100033518())
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v8 = v7;
    ObjectType = swift_getObjectType();
    v10 = (*(*(v8 + 8) + 48))(ObjectType);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v10 == v6;
  }
}

uint64_t sub_100035E24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for LogID(0);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActiveControlInterface.entity(at:)(a1, &v32);
  if (v34)
  {
    sub_100001AB4(&qword_100174F60, &qword_100121090);
    type metadata accessor for ActiveClockSource(0);
    if (swift_dynamicCast())
    {
      v10 = v30;
      v11 = (*(a3 + 40) << 16) | (*(v30 + 40) << 24);
      if (HIDWORD(v11))
      {
        __break(1u);
      }

      else
      {
        swift_beginAccess();
        if (*(v10 + 136))
        {

          v12 = String._bridgeToObjectiveC()();
        }

        else
        {
          v12 = 0;
        }

        v28 = [objc_opt_self() withValue:v11 andName:v12];

        if (!v28)
        {
        }

        v7 = v28;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_18:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }
      }

      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_18;
    }
  }

  else
  {
    sub_10000D040(&v32, &qword_100174FB0, &unk_100120FC0);
  }

  v32 = 0;
  v33 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v30 = v32;
  v31 = v33;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    active = ActiveFunction.deviceName.getter(ObjectType, v13);
    v17 = v16;
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0xE700000000000000;
    active = 0x6E776F6E6B6E55;
  }

  v18._countAndFlagsBits = active;
  v18._object = v17;
  String.append(_:)(v18);

  v19._object = 0x800000010012C790;
  v19._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v19);
  v29 = *(a3 + 40);
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0xD000000000000022;
  v21._object = 0x800000010012CA90;
  String.append(_:)(v21);
  v29 = a1;
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  v23 = v30;
  v24 = v31;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A1BC(v7, qword_1001794F0);
  sub_10000A2A4(v25, v9);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v26, qword_100179508);
  sub_100039F58(2, v9, v23, v24);

  return sub_10000C9D0(v9);
}

id sub_100036214(int a1)
{
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 1735159650)
  {
    return 0;
  }

  v9 = *(v1 + 80);
  if (!v9)
  {
    return 0;
  }

  v76 = v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(v1 + 24);
  swift_beginAccess();
  if (*(v1 + 113) == 1 || (v73 = v1, v13 = *(v1 + 112), ObjectType = swift_getObjectType(), (v15 = (*(v12 + 16))(ObjectType, v12)) == 0))
  {
LABEL_32:
    swift_unknownObjectRelease();
    return 0;
  }

  v66 = v15;
  v16 = v11;
  v17 = (*(v12 + 24))(ObjectType, v12);
  v18 = *(v17 + 168);
  v19 = *(v18 + 16);
  if (!v19)
  {

    goto LABEL_32;
  }

  v71 = v9;
  v63 = v13;
  v72 = v17;
  v65 = v16;
  v64 = v2;
  v20 = 0;
  v21 = v18 + 32;
  v22 = v73;
  do
  {
    sub_10001EAFC(v21, &v79);
    sub_10001EFE4(&v79, v81);
    v23 = sub_100001AB4(&qword_100174F60, &qword_100121090);
    type metadata accessor for ActiveClockSelector(0);
    v24 = swift_dynamicCast();
    v25 = 0;
    if (v24)
    {

      v25 = 1;
    }

    v26 = __OFADD__(v20, v25);
    v20 += v25;
    if (v26)
    {
      __break(1u);
      goto LABEL_61;
    }

    v21 += 40;
    --v19;
  }

  while (v19);
  if (v20 != 1)
  {

    swift_unknownObjectRelease();

    return 0;
  }

  v81[0] = _swiftEmptyArrayStorage;
  v27 = *(v22 + 72);
  v23 = *(v27 + 16);
  v28 = v72;
  v29 = v71;
  if (v23)
  {
    v30 = 0;
    while (v30 < *(v27 + 16))
    {
      v31 = v30 + 1;
      sub_100035E24(*(v27 + 32 + 8 * v30), v28, v22, v81);
      v30 = v31;
      if (v23 == v31)
      {
        goto LABEL_17;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_17:
  v70 = *(v29 + 16);
  if (!v70)
  {
LABEL_31:
    sub_10000CA2C();
    swift_allocError();
    *v42 = 72;
    *(v42 + 8) = 0;
    *(v42 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  v32 = 0;
  v33 = (v29 + 32);
  v69 = (v5 + 8);
  while (1)
  {
    v34 = *(v29 + 16);
    v75 = v32;
    if (v32 >= v34)
    {
      goto LABEL_62;
    }

    v35 = v33[2];
    v74 = v33;
    v36 = *v33;
    v80[1] = &type metadata for USBDescriptorControl;
    v68 = v35;
    BYTE2(v79) = v35;
    v67 = v36;
    LOWORD(v79) = v36;
    Mirror.init(reflecting:)();
    v5 = Mirror.children.getter();
    v23 = swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v37 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    if (v37 != dispatch thunk of _AnyIndexBox._typeID.getter())
    {
      goto LABEL_63;
    }

    v38 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v38 & 1) == 0)
    {
      break;
    }

    v5 = v73;
    v29 = v71;
    (*v69)(v8, v76);
LABEL_28:

    v23 = 0x6E776F6E6B6E75;
LABEL_29:
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {
      goto LABEL_38;
    }

    v32 = v75 + 1;
    v33 = v74 + 3;
    if (v70 == v75 + 1)
    {
      goto LABEL_31;
    }
  }

  dispatch thunk of _AnyCollectionBox.subscript.getter();

  v39 = *(&v79 + 1);
  v23 = v79;
  sub_10000CE78(v80);
  v40 = *v69;
  v29 = v71;
  if (!v39)
  {
    v5 = v73;
    v40(v8, v76);
    goto LABEL_28;
  }

  v40(v8, v76);
  v5 = v73;
  if (v23 != 0x726F7463656C6573 || v39 != 0xE800000000000000)
  {
    goto LABEL_29;
  }

LABEL_38:
  v43 = LockDelay.units.getter(v67);
  v76 = v81[0];
  result = [v66 plugin];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = type metadata accessor for AUAClockSelectorControl();
  v46 = objc_allocWithZone(v45);
  swift_weakInit();
  swift_weakAssign();
  v77.receiver = v46;
  v77.super_class = v45;
  v47 = v44;
  v48 = objc_msgSendSuper2(&v77, "initWithIsSettable:forElement:inScope:withPlugin:andObjectClassID:", v43 & 1, 0, 1735159650, v47, 1668047723);
  v23 = v48;

  if (v23)
  {

    v75 = v48;
    v74 = v47;
    if (v76 >> 62)
    {
      goto LABEL_66;
    }

    for (i = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v47 = v23;
      if (!i)
      {
        break;
      }

      v50 = 0;
      v51 = v76 & 0xC000000000000001;
      v52 = v76 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v51)
        {
          v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v50 >= *(v52 + 16))
          {
            goto LABEL_65;
          }

          v53 = *(v76 + 8 * v50 + 32);
        }

        v23 = v53;
        v54 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        [v47 addValue:v53];

        ++v50;
        if (v54 == i)
        {
          goto LABEL_51;
        }
      }

LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      ;
    }

LABEL_51:

    v55 = v75;
  }

  else
  {
    v55 = 0;
  }

  swift_beginAccess();
  v56 = *(v5 + 104);
  *(v5 + 104) = v55;
  v57 = v55;

  if (!v55)
  {

    swift_unknownObjectRelease();

    return 0;
  }

  if ((v76 & 0xC000000000000001) == 0)
  {
    if (v63)
    {
      if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v63)
      {
        v58 = *(v76 + 8 * (v63 - 1) + 32);
        goto LABEL_58;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_58:
  v59 = v58;
  v60 = [v58 value];

  LODWORD(v78) = v60;
  [v57 setSelectedValues:&v78 withCount:1];
  sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_100120A20;
  *(v61 + 32) = v57;

  swift_unknownObjectRelease();

  return v61;
}

void sub_100036B74(unsigned __int8 a1, uint64_t a2)
{
  v4 = v2;
  v7 = a1;
  v99 = type metadata accessor for LogID(0);
  __chkstk_darwin(v99);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTimeInterval();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  v15 = __chkstk_darwin(v14);
  v16 = __chkstk_darwin(v15);
  if (v7)
  {
    aBlock = 0;
    v102 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v108 = aBlock;
    v109 = v102;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v4 + 120);
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v20);
      v24 = v23;
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0xE700000000000000;
      active = 0x6E776F6E6B6E55;
    }

    v30._countAndFlagsBits = active;
    v30._object = v24;
    String.append(_:)(v30);

    v31._countAndFlagsBits = 0xD00000000000001CLL;
    v31._object = 0x800000010012CB10;
    String.append(_:)(v31);
    v107 = *(v4 + 40);
    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);

    v33._object = 0x800000010012CB30;
    v33._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v33);
    LOBYTE(v107) = a1;
    _print_unlocked<A, B>(_:_:)();
    v35 = v108;
    v34 = v109;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v36 = sub_10000A1BC(v99, qword_1001794F0);
    sub_10000A2A4(v36, v9);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v37, qword_100179508);
    sub_100039F58(2, v9, v35, v34);

    sub_10000C9D0(v9);
    sub_10000CA2C();
    swift_allocError();
    *v38 = 2;
    goto LABEL_14;
  }

  v95 = v19;
  v96 = &v87 - v17;
  v97 = v10;
  v98 = v18;
  v94 = v11;
  v99 = v16;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_10000CA2C();
    swift_allocError();
    *v38 = 69;
LABEL_14:
    *(v38 + 8) = 0;
    *(v38 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v25 = *(v4 + 120);
  v26 = swift_getObjectType();
  v27 = (*(v25 + 16))(v26, v25);
  if (!v27)
  {
    sub_10000CA2C();
    swift_allocError();
    *v39 = 7;
    *(v39 + 8) = 0;
    *(v39 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    return;
  }

  v28 = v27;
  sub_1000FAF84(v4, &protocol witness table for ActiveClockSource);
  if (v3)
  {
    swift_unknownObjectRelease();

    return;
  }

  v40 = v29;
  v93 = v28;
  if (v29)
  {
    if ((sub_100035D28(v4, v29) & 1) == 0)
    {
      swift_unknownObjectRelease();
      v45 = v93;
LABEL_40:

      goto LABEL_41;
    }

    v92 = v40;
    swift_beginAccess();
    LODWORD(v91) = *(v4 + 104);
    v41 = v4 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate;
    v42 = *(v4 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate);
    v43 = *(v4 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate + 8);
    ActiveClockSource.refreshSamplingRate()();
    if (v44)
    {
      swift_unknownObjectRelease();

      return;
    }

    v46 = v92;
    if (v91 != *(v4 + 104))
    {
LABEL_25:
      v89 = v13;
      aBlock = 0;
      v102 = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      v47._countAndFlagsBits = 0xD000000000000018;
      v47._object = 0x800000010012CB50;
      String.append(_:)(v47);
      v110 = a2;
      v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v48);

      v49._countAndFlagsBits = 0x696C61567369203ALL;
      v49._object = 0xEA00000000002064;
      String.append(_:)(v49);
      if (*(v4 + 104))
      {
        v50 = 1702195828;
      }

      else
      {
        v50 = 0x65736C6166;
      }

      if (*(v4 + 104))
      {
        v51 = 0xE400000000000000;
      }

      else
      {
        v51 = 0xE500000000000000;
      }

      v52 = v51;
      String.append(_:)(*&v50);

      v53._countAndFlagsBits = 0x6E696C706D617320;
      v53._object = 0xEE00206574615267;
      String.append(_:)(v53);
      v54 = *v41;
      if (*(v41 + 8))
      {
        v54 = 0;
      }

      v110 = v54;
      v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v55);

      v56 = aBlock;
      v57 = v102;
      v58 = OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID;
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for AUALog(0);
      v60 = sub_10000A1BC(v59, qword_100179508);
      v88 = v58;
      v87 = v60;
      sub_100039AA0(2, v4 + v58, v56, v57);

      v61 = dispatch_semaphore_create(0);
      v62 = swift_allocObject();
      v63 = v92;
      v62[2] = v4;
      v62[3] = v63;
      v62[4] = v61;
      aBlock = 0xD000000000000042;
      v102 = 0x800000010012CB70;

      v64 = v63;
      v92 = v61;
      v65._countAndFlagsBits = 8236;
      v65._object = 0xE200000000000000;
      String.append(_:)(v65);
      v66._countAndFlagsBits = 0xD00000000000001BLL;
      v66._object = 0x800000010012C7D0;
      String.append(_:)(v66);
      v67._countAndFlagsBits = 2108704;
      v67._object = 0xE300000000000000;
      String.append(_:)(v67);
      v110 = 360;
      v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v68);

      sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v102, v64 + OBJC_IVAR___AUAAudioDevice_logID);

      v91 = v64;
      v69 = *(&v64->isa + OBJC_IVAR___AUAAudioDevice_configChangedHandlers);
      v70 = swift_allocObject();
      v70[2] = sub_100038498;
      v70[3] = v62;
      aBlock = sub_100038564;
      v102 = v70;
      v71 = *(v69 + 16);
      v72 = __chkstk_darwin(v70);
      *(&v87 - 2) = v69;
      *(&v87 - 1) = &aBlock;
      __chkstk_darwin(v72);
      *(&v87 - 2) = sub_10001EF50;
      *(&v87 - 1) = v73;
      v90 = v62;

      os_unfair_lock_lock(v71 + 4);
      sub_10003854C(&v110);
      os_unfair_lock_unlock(v71 + 4);
      LOBYTE(v69) = v110;

      if (v69)
      {
        v74 = swift_allocObject();
        v75 = v91;
        *(v74 + 16) = v91;
        v105 = sub_10001EFC8;
        v106 = v74;
        aBlock = _NSConcreteStackBlock;
        v102 = 1107296256;
        v103 = sub_1000172D4;
        v104 = &unk_100161C18;
        v76 = _Block_copy(&aBlock);
        v77 = v75;

        v78 = type metadata accessor for AUAAudioDevice(0);
        v100.receiver = v77;
        v100.super_class = v78;
        objc_msgSendSuper2(&v100, "requestConfigurationChange:", v76);
        _Block_release(v76);
      }

      v79 = v95;
      static DispatchTime.now()();
      v80 = v89;
      *v89 = 500;
      v81 = v94;
      v82 = v97;
      (*(v94 + 104))(v80, enum case for DispatchTimeInterval.milliseconds(_:), v97);
      v83 = v96;
      + infix(_:_:)();
      (*(v81 + 8))(v80, v82);
      v84 = v99;
      v85 = *(v98 + 8);
      v85(v79, v99);
      v40 = v92;
      OS_dispatch_semaphore.wait(timeout:)();
      v85(v83, v84);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        sub_100039AA0(2, v4 + v88, 0xD000000000000034, 0x800000010012CBC0);
      }

      swift_unknownObjectRelease();

      v45 = v91;
      goto LABEL_40;
    }

    v86 = *(v41 + 8);
    if (v43)
    {
      if ((*(v41 + 8) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v42 != *v41)
      {
        v86 = 1;
      }

      if (v86)
      {
        goto LABEL_25;
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v40 = v93;
LABEL_41:
}

unint64_t sub_10003771C()
{
  result = qword_1001757C0;
  if (!qword_1001757C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001757C0);
  }

  return result;
}

uint64_t sub_100037770()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1000377B8()
{
  result = qword_1001757C8;
  if (!qword_1001757C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001757C8);
  }

  return result;
}

void sub_10003780C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  v5 = type metadata accessor for LogID(0);
  __chkstk_darwin(v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v56 = v52;
    v57 = v53;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v8);
      v12 = v11;
      swift_unknownObjectRelease();
    }

    else
    {
      active = 0x6E776F6E6B6E55;
      v12 = 0xE700000000000000;
    }

    v19._countAndFlagsBits = active;
    v19._object = v12;
    String.append(_:)(v19);

    v20._object = 0x800000010012CA50;
    v20._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v20);
    v55 = *(v2 + 40);
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 0xD00000000000001FLL;
    v22._object = 0x800000010012CA70;
    String.append(_:)(v22);
    LOBYTE(v55) = a1;
    _print_unlocked<A, B>(_:_:)();
    v24 = v56;
    v23 = v57;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v25 = sub_10000A1BC(v5, qword_1001794F0);
    sub_10000A2A4(v25, v7);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v26, qword_100179508);
    sub_100039F58(2, v7, v24, v23);

    sub_10000C9D0(v7);
    sub_10000CA2C();
    swift_allocError();
    *v27 = 2;
    goto LABEL_17;
  }

  swift_beginAccess();
  v13 = *(v2 + 104);
  if (!v13)
  {
    sub_10000CA2C();
    swift_allocError();
    v28 = 72;
LABEL_16:
    *v27 = v28;
LABEL_17:
    *(v27 + 8) = 0;
    *(v27 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_10000CA2C();
    swift_allocError();
    v28 = 69;
    goto LABEL_16;
  }

  v50 = v5;
  v14 = *(v2 + 24);
  v15 = swift_getObjectType();
  v16 = *(v14 + 24);
  v17 = v13;
  v16(v15, v14);
  swift_unknownObjectRelease();
  sub_100032520();
  swift_beginAccess();
  if (*(v2 + 113))
  {
    sub_10000CA2C();
    swift_allocError();
    *v18 = 1;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0xE000000000000000;
    swift_willThrow();

LABEL_35:

    return;
  }

  v29 = v17;
  v30 = *(v2 + 112);
  v52 = 0;
  v53 = 0xE000000000000000;
  _StringGuts.grow(_:)(50);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = *(v2 + 24);
    v32 = swift_getObjectType();
    v33 = ActiveFunction.deviceName.getter(v32, v31);
    v35 = v34;
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0x6E776F6E6B6E55;
    v35 = 0xE700000000000000;
  }

  v36._countAndFlagsBits = v33;
  v36._object = v35;
  String.append(_:)(v36);

  v37._object = 0x800000010012CA50;
  v37._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v37);
  v38 = *(v2 + 40);
  v51 = v38;
  v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v39);

  v40._countAndFlagsBits = 0x6920525543202D20;
  v40._object = 0xEE0020776F6E2073;
  String.append(_:)(v40);
  LOBYTE(v51) = v30;
  v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v41);

  v42 = v52;
  v43 = v53;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v44 = sub_10000A1BC(v50, qword_1001794F0);
  sub_10000A2A4(v44, v7);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v45, qword_100179508);
  sub_100039AA0(2, v7, v42, v43);

  sub_10000C9D0(v7);
  if (!v30 || (v46 = *(v2 + 72), *(v46 + 16) < v30))
  {
    sub_10000CA2C();
    swift_allocError();
    v48 = 1;
LABEL_34:
    *v47 = v48;
    *(v47 + 8) = 0;
    *(v47 + 16) = 0xE000000000000000;
    swift_willThrow();

    goto LABEL_35;
  }

  ActiveControlInterface.entity(at:)(*(v46 + 8 * (v30 - 1) + 32), &v52);
  if (!v54)
  {
    sub_10000D040(&v52, &qword_100174FB0, &unk_100120FC0);
    goto LABEL_33;
  }

  sub_100001AB4(&qword_100174F60, &qword_100121090);
  type metadata accessor for ActiveClockSource(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    sub_10000CA2C();
    swift_allocError();
    v48 = 87;
    goto LABEL_34;
  }

  if (((*(v51 + 40) << 24) | (v38 << 16)) >> 32)
  {
    __break(1u);
  }

  LODWORD(v52) = (*(v51 + 40) << 24) | (v38 << 16);
  [v29 setSelectedValues:&v52 withCount:1];
}

uint64_t sub_100037F64()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100037FB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100037FF0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100038028(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100038068()
{
  result = qword_1001757E0;
  if (!qword_1001757E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001757E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LockDelay.LockDelayUnits(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LockDelay.LockDelayUnits(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100038228(uint64_t a1)
{
  result = type metadata accessor for LogID(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100038338(uint64_t a1)
{
  result = type metadata accessor for LogID(319);
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

uint64_t sub_100038450()
{

  return _swift_deallocObject(v0, 40, 7);
}

Swift::Int sub_100038498()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_lastSamplingRateChangedTimestamp) = mach_absolute_time();
  AUAAudioDevice.clockChanged()();
  return OS_dispatch_semaphore.signal()();
}

unint64_t sub_1000384E4()
{
  result = qword_100175C80;
  if (!qword_100175C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175C80);
  }

  return result;
}

AUASDCore::AUAExceptionLevel_optional __swiftcall AUAExceptionLevel.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

unint64_t *sub_100038580@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

Swift::Int tADCControlRequestParameterBlockLayout.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t AUAError.hash(into:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  Hasher._combine(_:)(a2);

  return String.hash(into:)();
}

Swift::Int AUAError.hashValue.getter(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10003873C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000387A0(uint64_t a1)
{
  Hasher._combine(_:)(*v1);

  return String.hash(into:)();
}

Swift::Int sub_1000387F4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_100038858()
{
  result = qword_100175C90;
  if (!qword_100175C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175C90);
  }

  return result;
}

unint64_t sub_1000388B0()
{
  result = qword_100175C98;
  if (!qword_100175C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175C98);
  }

  return result;
}

unint64_t sub_100038908()
{
  result = qword_100175CA0;
  if (!qword_100175CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175CA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AUAFeedbackTransferBlock.FeedbackPacketSize(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AUAFeedbackTransferBlock.FeedbackPacketSize(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AUAErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x82)
  {
    goto LABEL_17;
  }

  if (a2 + 126 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 126) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 126;
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

      return (*a1 | (v4 << 8)) - 126;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 126;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7F;
  v8 = v6 - 127;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AUAErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 126 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 126) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x82)
  {
    v4 = 0;
  }

  if (a2 > 0x81)
  {
    v5 = ((a2 - 130) >> 8) + 1;
    *result = a2 + 126;
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
    *result = a2 + 126;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ClockRateRange(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100038C18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100038C60(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_100038D08(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *, uint64_t))
{
  v11 = a3;
  v13 = type metadata accessor for OSSignpostID();
  v14 = *(v13 - 8);
  v33 = v13;
  v34 = v14;
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v17, qword_100179508);
  v35 = StaticString.description.getter();
  v36 = v18;
  v19._countAndFlagsBits = 32;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v32 = a4;
  v20._countAndFlagsBits = a4;
  v20._object = a5;
  String.append(_:)(v20);
  a7(4, a6, v35, v36);

  if (qword_100173CB0 != -1)
  {
    result = swift_once();
  }

  if ((byte_1001794E8 & 1) == 0)
  {
    v22 = type metadata accessor for LogID(0);
    v23 = v33;
    v24 = v34;
    (*(v34 + 16))(v16, a6 + *(v22 + 20), v33);

    v25 = OSSignposter.logHandle.getter();
    v26 = static os_signpost_type_t.event.getter();
    result = OS_os_log.signpostsEnabled.getter();
    if ((result & 1) == 0)
    {

      return (*(v24 + 8))(v16, v23);
    }

    if (v11)
    {
      if (!(a1 >> 32))
      {
        v27 = v34;
        if ((a1 & 0xFFFFF800) == 0xD800)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        if (a1 >> 16 <= 0x10)
        {

          a1 = &v35;
          goto LABEL_15;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {

      if (a1)
      {
        v27 = v34;
LABEL_15:
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v35 = v29;
        *v28 = 136446210;
        *(v28 + 4) = sub_100035760(v32, a5, &v35);
        v30 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v26, v30, a1, "%{public}s", v28, 0xCu);
        sub_10000CE78(v29);

        return (*(v27 + 8))(v16, v33);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10003906C(int a1, uint64_t a2, uint64_t a3)
{
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10011DE90;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 32) = a1;

  return String.init(format:_:)();
}

uint64_t sub_1000390F4(char a1, char a2)
{
  if (*&asc_100121928[8 * a1] == *&asc_100121928[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_10003915C(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000391BC(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100039218()
{
  if (qword_100173CF8 != -1)
  {
    swift_once();
  }

  v0 = *(qword_100179640 + 16);
  if (v0)
  {

    v1 = v0;
    v2 = String._bridgeToObjectiveC()();
    LOBYTE(v0) = [v1 BOOLForKey:v2];
  }

  byte_1001794E8 = v0;
}

uint64_t UInt8.hexString.getter(char a1)
{
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10011DE90;
  *(v2 + 56) = &type metadata for UInt8;
  *(v2 + 64) = &protocol witness table for UInt8;
  *(v2 + 32) = a1;

  return String.init(format:_:)();
}

uint64_t UInt16.hexString.getter(__int16 a1)
{
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10011DE90;
  *(v2 + 56) = &type metadata for UInt16;
  *(v2 + 64) = &protocol witness table for UInt16;
  *(v2 + 32) = a1;

  return String.init(format:_:)();
}

uint64_t UInt32.fourCharString.getter(int a1)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  sub_100046824(0, 4, 0);
  v4 = _swiftEmptyArrayStorage[2];
  v3 = _swiftEmptyArrayStorage[3];
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    sub_100046824((v3 > 1), v4 + 1, 1);
    v3 = _swiftEmptyArrayStorage[3];
    v5 = v3 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v6;
  *(&_swiftEmptyArrayStorage[4] + v4) = HIBYTE(a1);
  v7 = v4 + 2;
  if (v5 <= v6)
  {
    sub_100046824((v3 > 1), v4 + 2, 1);
    v3 = _swiftEmptyArrayStorage[3];
    v5 = v3 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v7;
  *(&_swiftEmptyArrayStorage[4] + v6) = BYTE2(a1);
  v8 = v4 + 3;
  if (v5 <= v7)
  {
    sub_100046824((v3 > 1), v4 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v8;
  *(&_swiftEmptyArrayStorage[4] + v7) = BYTE1(a1);
  v9 = _swiftEmptyArrayStorage[3];
  if (v8 >= v9 >> 1)
  {
    sub_100046824((v9 > 1), v4 + 4, 1);
  }

  _swiftEmptyArrayStorage[2] = v4 + 4;
  *(&_swiftEmptyArrayStorage[4] + v8) = a1;
  static String.Encoding.ascii.getter();
  sub_100001AB4(&qword_100175CA8, &unk_100124860);
  sub_100046844();
  v10 = String.init<A>(bytes:encoding:)();
  v12 = v11;

  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1061109567;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  v15 = v14;
  String.append(_:)(*&v13);

  v16._countAndFlagsBits = 39;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return 39;
}

uint64_t sub_100039624()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LogID(0);
  sub_10004EF10(v4, qword_1001794F0);
  v5 = sub_10000A1BC(v4, qword_1001794F0);
  static OSSignpostID.null.getter();
  *v5 = 1701736302;
  *(v5 + 1) = 0xE400000000000000;
  result = (*(v1 + 32))(&v5[*(v4 + 20)], v3, v0);
  v7 = &v5[*(v4 + 24)];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_100039740@<X0>(uint64_t a1@<X0>, void *a2@<X1>, Swift::String *a3@<X2>, uint64_t *a4@<X8>)
{
  v30 = a3;
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AUALog(0);
  v32 = v4;
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10011DE90;
  v13 = OSSignpostID.rawValue.getter();
  *(v12 + 56) = &type metadata for UInt64;
  *(v12 + 64) = &protocol witness table for UInt64;
  *(v12 + 32) = v13;
  v14 = String.init(format:_:)();
  v16 = v15;
  v17 = a1;
  *a4 = a1;
  a4[1] = a2;
  v18 = type metadata accessor for LogID(0);
  v19 = *(v9 + 16);
  v20 = a4 + *(v18 + 20);
  v31 = v8;
  v19(v20, v11, v8);
  v21 = (a4 + *(v18 + 24));
  *v21 = v14;
  v21[1] = v16;
  v22 = qword_100173CB8;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A1BC(v18, qword_1001794F0);
  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v33 = 0x7263204449676F6CLL;
  v34 = 0xEF203A6465746165;
  v24._countAndFlagsBits = v14;
  v24._object = v16;
  String.append(_:)(v24);
  v25._countAndFlagsBits = v17;
  v25._object = a2;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x206D6F726620;
  v26._object = 0xE600000000000000;
  String.append(_:)(v26);
  v27 = v30;
  String.append(_:)(*(v30 + *(v18 + 24)));
  String.append(_:)(*v27);
  sub_100039AA0(4, v23, v33, v34);

  return (*(v9 + 8))(v11, v31);
}

uint64_t sub_100039A0C(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_100039A54@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004EC10(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100039AA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v45._countAndFlagsBits = a3;
  v45._object = a4;
  v44 = type metadata accessor for LogID(0);
  __chkstk_darwin(v44);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AUALog(0);
  __chkstk_darwin(v10 - 8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v20 = v40 - v19;
  v21 = *(v4 + 8);
  if (*(v21 + 16))
  {
    result = sub_10001D1DC(a1);
    if (v22)
    {
      (*(v14 + 16))(v17, *(v21 + 56) + *(v14 + 72) * result, v13);
      (*(v14 + 32))(v20, v17, v13);
      sub_10004EDD0(v5, v12, type metadata accessor for AUALog);
      sub_10004EDD0(a2, v9, type metadata accessor for LogID);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v43 = v24;
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v40[1] = v40;
        v41 = v26;
        v48 = v26;
        v42 = v25;
        *v25 = 136446210;
        v27 = *(*v12 + 16);
        __chkstk_darwin(v26);
        v40[-2] = sub_10004EFBC;
        v40[-1] = v28;

        os_unfair_lock_lock(v27 + 4);
        sub_10004EF8C(&v46);
        os_unfair_lock_unlock(v27 + 4);
        v29 = v46;
        v30 = v47;

        v46 = 2105376;
        v47 = 0xE300000000000000;
        v31._countAndFlagsBits = v29;
        v31._object = v30;
        String.append(_:)(v31);

        v32 = &v9[*(v44 + 24)];
        v33 = *v32;
        v34 = v32[1];

        v35._countAndFlagsBits = v33;
        v35._object = v34;
        String.append(_:)(v35);

        String.append(_:)(v45);

        v36 = v46;
        v37 = v47;
        sub_10004EE38(v12, type metadata accessor for AUALog);
        sub_10004EE38(v9, type metadata accessor for LogID);
        v38 = sub_100035760(v36, v37, &v48);

        v39 = v42;
        *(v42 + 1) = v38;
        _os_log_impl(&_mh_execute_header, v23, v43, "%{public}s", v39, 0xCu);
        sub_10000CE78(v41);

        return (*(v14 + 8))(v20, v13);
      }

      else
      {

        (*(v14 + 8))(v20, v13);
        sub_10004EE38(v12, type metadata accessor for AUALog);
        return sub_10004EE38(v9, type metadata accessor for LogID);
      }
    }
  }

  return result;
}

unint64_t sub_100039F58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v45._countAndFlagsBits = a3;
  v45._object = a4;
  v44 = type metadata accessor for LogID(0);
  __chkstk_darwin(v44);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AUALog(0);
  __chkstk_darwin(v10 - 8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v20 = v40 - v19;
  v21 = *(v4 + 8);
  if (*(v21 + 16))
  {
    result = sub_10001D1DC(a1);
    if (v22)
    {
      (*(v14 + 16))(v17, *(v21 + 56) + *(v14 + 72) * result, v13);
      (*(v14 + 32))(v20, v17, v13);
      sub_10004EDD0(v5, v12, type metadata accessor for AUALog);
      sub_10004EDD0(a2, v9, type metadata accessor for LogID);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v43 = v24;
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v40[1] = v40;
        v41 = v26;
        v48 = v26;
        v42 = v25;
        *v25 = 136446210;
        v27 = *(*v12 + 16);
        __chkstk_darwin(v26);
        v40[-2] = sub_10004EE98;
        v40[-1] = v28;

        os_unfair_lock_lock(v27 + 4);
        sub_10004EEB4(&v46);
        os_unfair_lock_unlock(v27 + 4);
        v29 = v46;
        v30 = v47;

        v46 = 2105376;
        v47 = 0xE300000000000000;
        v31._countAndFlagsBits = v29;
        v31._object = v30;
        String.append(_:)(v31);

        v32 = &v9[*(v44 + 24)];
        v33 = *v32;
        v34 = v32[1];

        v35._countAndFlagsBits = v33;
        v35._object = v34;
        String.append(_:)(v35);

        String.append(_:)(v45);

        v36 = v46;
        v37 = v47;
        sub_10004EE38(v12, type metadata accessor for AUALog);
        sub_10004EE38(v9, type metadata accessor for LogID);
        v38 = sub_100035760(v36, v37, &v48);

        v39 = v42;
        *(v42 + 1) = v38;
        _os_log_impl(&_mh_execute_header, v23, v43, "%{public}s", v39, 0xCu);
        sub_10000CE78(v41);

        return (*(v14 + 8))(v20, v13);
      }

      else
      {

        (*(v14 + 8))(v20, v13);
        sub_10004EE38(v12, type metadata accessor for AUALog);
        return sub_10004EE38(v9, type metadata accessor for LogID);
      }
    }
  }

  return result;
}

void sub_10003A410(char *a1, uint64_t a2, uint64_t a3, int a4, os_unfair_lock_s *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v113 = a7;
  v121 = a5;
  LODWORD(v120) = a4;
  v118 = a2;
  v119 = a3;
  v112 = type metadata accessor for LogID(0);
  v13 = __chkstk_darwin(v112);
  v116 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v106 = &v104 - v16;
  __chkstk_darwin(v15);
  v18 = &v104 - v17;
  v19 = type metadata accessor for Logger();
  v122 = *(v19 - 8);
  __chkstk_darwin(v19);
  v123 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = mach_absolute_time();
  v21 = *a8;
  v22 = *(*a8 + 16);
  v124 = sub_10004EFA4;
  v125 = v21;

  os_unfair_lock_lock(v22 + 4);
  sub_10004EF74(&v126);
  v114 = v9;
  if (v9)
  {
    goto LABEL_40;
  }

  os_unfair_lock_unlock(v22 + 4);
  v23 = v127;
  v111 = v126;
  v110 = v128;

  v24 = a8[1];
  if (!*(v24 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v25 = sub_10001D1DC(a1);
  if ((v26 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v117 = a9;
  (*(v122 + 16))(v123, *(v24 + 56) + *(v122 + 72) * v25, v19);
  v126 = StaticString.description.getter();
  v127 = v27;
  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = a6;
  v29._object = v113;
  String.append(_:)(v29);
  v30 = v127;
  v113 = v126;
  v31 = v18;
  sub_10004EDD0(v121, v18, type metadata accessor for LogID);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v109 = v19;
  v107 = v21;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v129 = v105;
    *v35 = 136446210;
    v126 = 2113069;
    v127 = 0xE300000000000000;
    v36._countAndFlagsBits = v111;
    v36._object = v23;
    String.append(_:)(v36);
    v37 = (v31 + *(v112 + 24));
    v38 = *v37;
    v39 = v37[1];

    v40._countAndFlagsBits = v38;
    v40._object = v39;
    String.append(_:)(v40);

    v41._countAndFlagsBits = v113;
    v41._object = v30;
    String.append(_:)(v41);

    v42 = v126;
    v43 = v127;
    sub_10004EE38(v31, type metadata accessor for LogID);
    v44 = sub_100035760(v42, v43, &v129);

    *(v35 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s", v35, 0xCu);
    sub_10000CE78(v105);
  }

  else
  {

    sub_10004EE38(v31, type metadata accessor for LogID);
  }

  a1 = v116;
  v45 = v114;
  sub_1000B7C4C(v117);
  v22 = v45;
  v108 = v23;
  if (v45)
  {
    v46 = mach_absolute_time();
    a6 = v46 - v115;
    if (v46 >= v115)
    {
      if (qword_100173D00 == -1)
      {
LABEL_10:
        if (qword_100179650 == HIDWORD(qword_100179650))
        {
LABEL_14:
          v126 = 0;
          v127 = 0xE000000000000000;
          _StringGuts.grow(_:)(20);
          v47._countAndFlagsBits = StaticString.description.getter();
          String.append(_:)(v47);

          v48._countAndFlagsBits = 0x203A524F52524520;
          v48._object = 0xE800000000000000;
          String.append(_:)(v48);
          v129 = v22;
          sub_100001AB4(&qword_100177270, &qword_100120A40);
          _print_unlocked<A, B>(_:_:)();
          v49._countAndFlagsBits = 23328;
          v49._object = 0xE200000000000000;
          String.append(_:)(v49);
          v129 = a6 / 0x3E8;
          v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v50);

          v51._countAndFlagsBits = 1567847712;
          v51._object = 0xE400000000000000;
          String.append(_:)(v51);
          v53 = v126;
          v52 = v127;
          sub_10004EDD0(v121, a1, type metadata accessor for LogID);

          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v121 = v22;
            v57 = v56;
            v58 = swift_slowAlloc();
            v120 = v53;
            v59 = v58;
            v129 = v58;
            *v57 = 136446210;
            v126 = 11580;
            v127 = 0xE200000000000000;
            v60._countAndFlagsBits = v111;
            v60._object = v23;
            String.append(_:)(v60);
            v61 = &a1[*(v112 + 24)];
            v62 = *v61;
            v63 = v61[1];

            v64._countAndFlagsBits = v62;
            v64._object = v63;
            String.append(_:)(v64);

            v65._countAndFlagsBits = v120;
            v65._object = v52;
            String.append(_:)(v65);

            v66 = v126;
            v67 = v127;
            sub_10004EE38(a1, type metadata accessor for LogID);
            v68 = sub_100035760(v66, v67, &v129);

            *(v57 + 4) = v68;
            _os_log_impl(&_mh_execute_header, v54, v55, "%{public}s", v57, 0xCu);
            sub_10000CE78(v59);
          }

          else
          {

            v69 = sub_10004EE38(a1, type metadata accessor for LogID);
          }

          v95 = v109;
          v96 = *(v107 + 16);
          v97 = __chkstk_darwin(v69);
          *(&v104 - 2) = v98;
          *(&v104 - 2) = v110;
          __chkstk_darwin(v97);
          *(&v104 - 2) = sub_10001EF68;
          *(&v104 - 1) = v99;

          os_unfair_lock_lock(v96 + 4);
          sub_10004EFD4();
          os_unfair_lock_unlock(v96 + 4);

          swift_willThrow();
          (*(v122 + 8))(v123, v95);
          goto LABEL_29;
        }

        if (is_mul_ok(a6, qword_100179650))
        {
          if (HIDWORD(qword_100179650))
          {
            a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
            goto LABEL_14;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_38;
      }

LABEL_33:
      swift_once();
      goto LABEL_10;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v70 = mach_absolute_time();
  a6 = v70 - v115;
  if (v70 < v115)
  {
    __break(1u);
  }

  else if (qword_100173D00 == -1)
  {
    goto LABEL_18;
  }

  swift_once();
LABEL_18:
  v71 = v106;
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (!is_mul_ok(a6, qword_100179650))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (!HIDWORD(qword_100179650))
    {
LABEL_39:
      __break(1u);
LABEL_40:
      os_unfair_lock_unlock(v22 + 4);
      __break(1u);
      goto LABEL_41;
    }

    a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
  }

  v126 = StaticString.description.getter();
  v127 = v72;
  v73._countAndFlagsBits = 23328;
  v73._object = 0xE200000000000000;
  String.append(_:)(v73);
  v129 = a6 / 0x3E8;
  v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v74);

  v75._countAndFlagsBits = 1567847712;
  v75._object = 0xE400000000000000;
  String.append(_:)(v75);
  v77 = v126;
  v76 = v127;
  sub_10004EDD0(v121, v71, type metadata accessor for LogID);

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v121 = 0;
    v81 = v80;
    v82 = swift_slowAlloc();
    v83._object = v23;
    v84 = v77;
    v85 = v82;
    v129 = v82;
    *v81 = 136446210;
    v126 = 2108732;
    v127 = 0xE300000000000000;
    LODWORD(v120) = v79;
    v83._countAndFlagsBits = v111;
    String.append(_:)(v83);
    v86 = (v71 + *(v112 + 24));
    v87 = *v86;
    v88 = v86[1];

    v89._countAndFlagsBits = v87;
    v89._object = v88;
    String.append(_:)(v89);

    v90._countAndFlagsBits = v84;
    v90._object = v76;
    String.append(_:)(v90);

    v91 = v126;
    v92 = v127;
    sub_10004EE38(v71, type metadata accessor for LogID);
    v93 = sub_100035760(v91, v92, &v129);

    *(v81 + 4) = v93;
    _os_log_impl(&_mh_execute_header, v78, v120, "%{public}s", v81, 0xCu);
    sub_10000CE78(v85);

    v22 = v121;
  }

  else
  {

    v94 = sub_10004EE38(v71, type metadata accessor for LogID);
  }

  v100 = v109;
  a6 = *(v107 + 16);
  v101 = __chkstk_darwin(v94);
  *(&v104 - 2) = v102;
  *(&v104 - 2) = v110;
  __chkstk_darwin(v101);
  *(&v104 - 2) = sub_10001EF68;
  *(&v104 - 1) = v103;

  os_unfair_lock_lock((a6 + 16));
  sub_10004EFD4();
  if (!v22)
  {
    os_unfair_lock_unlock((a6 + 16));

    (*(v122 + 8))(v123, v100);

LABEL_29:

    return;
  }

LABEL_41:
  os_unfair_lock_unlock((a6 + 16));
  __break(1u);
}

void sub_10003B08C(char *a1, uint64_t a2, uint64_t a3, int a4, os_unfair_lock_s *a5, uint64_t a6, void *a7, void *a8, double a9, char *a10)
{
  v116 = a7;
  v124 = a5;
  LODWORD(v123) = a4;
  v121 = a2;
  v122 = a3;
  v115 = type metadata accessor for LogID(0);
  v15 = __chkstk_darwin(v115);
  v119 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v109 = &v107 - v18;
  __chkstk_darwin(v17);
  v20 = &v107 - v19;
  v21 = type metadata accessor for Logger();
  v125 = *(v21 - 8);
  __chkstk_darwin(v21);
  v126 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = mach_absolute_time();
  v23 = *a8;
  v24 = *(*a8 + 16);
  v127 = sub_10004EFA4;
  v128 = v23;

  os_unfair_lock_lock(v24 + 4);
  sub_10004EF74(&v130);
  v117 = v10;
  if (v10)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v24 + 4);
  v25 = v131;
  v114 = v130;
  v113 = v132;

  v26 = a8[1];
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v27 = sub_10001D1DC(a1);
  if ((v28 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v120 = a10;
  (*(v125 + 16))(v126, *(v26 + 56) + *(v125 + 72) * v27, v21);
  v130 = StaticString.description.getter();
  v131 = v29;
  v30._countAndFlagsBits = 32;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = a6;
  v31._object = v116;
  String.append(_:)(v31);
  v32 = v131;
  v116 = v130;
  v33 = v20;
  sub_10004EDD0(v124, v20, type metadata accessor for LogID);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = os_log_type_enabled(v34, v35);
  v112 = v21;
  v110 = v23;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v108 = v38;
    *v37 = 136446210;
    v129 = v38;
    v130 = 2113069;
    v131 = 0xE300000000000000;
    v39._countAndFlagsBits = v114;
    v39._object = v25;
    String.append(_:)(v39);
    v40 = (v33 + *(v115 + 24));
    v41 = *v40;
    v42 = v40[1];

    v43._countAndFlagsBits = v41;
    v43._object = v42;
    String.append(_:)(v43);

    v44._countAndFlagsBits = v116;
    v44._object = v32;
    String.append(_:)(v44);

    v45 = v130;
    v46 = v131;
    sub_10004EE38(v33, type metadata accessor for LogID);
    v47 = sub_100035760(v45, v46, &v129);

    *(v37 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s", v37, 0xCu);
    sub_10000CE78(v108);
  }

  else
  {

    sub_10004EE38(v33, type metadata accessor for LogID);
  }

  a1 = v119;
  v48 = v117;
  sub_100016440(v120, a9);
  v24 = v48;
  v111 = v25;
  if (!v48)
  {
    v73 = mach_absolute_time();
    a6 = v73 - v118;
    if (v73 < v118)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v74 = v109;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(a6, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v24 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((a6 + 16));
        __break(1u);
        return;
      }

      a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v130 = StaticString.description.getter();
    v131 = v75;
    v76._countAndFlagsBits = 23328;
    v76._object = 0xE200000000000000;
    String.append(_:)(v76);
    v129 = a6 / 0x3E8;
    v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v77);

    v78._countAndFlagsBits = 1567847712;
    v78._object = 0xE400000000000000;
    String.append(_:)(v78);
    v80 = v130;
    v79 = v131;
    sub_10004EDD0(v124, v74, type metadata accessor for LogID);

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v124 = 0;
      v84 = v83;
      v85 = swift_slowAlloc();
      v86._object = v25;
      v87 = v80;
      v88 = v85;
      *v84 = 136446210;
      v129 = v85;
      v130 = 2108732;
      v131 = 0xE300000000000000;
      LODWORD(v123) = v82;
      v86._countAndFlagsBits = v114;
      String.append(_:)(v86);
      v89 = (v74 + *(v115 + 24));
      v90 = *v89;
      v91 = v89[1];

      v92._countAndFlagsBits = v90;
      v92._object = v91;
      String.append(_:)(v92);

      v93._countAndFlagsBits = v87;
      v93._object = v79;
      String.append(_:)(v93);

      v94 = v130;
      v95 = v131;
      sub_10004EE38(v74, type metadata accessor for LogID);
      v96 = sub_100035760(v94, v95, &v129);

      *(v84 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v81, v123, "%{public}s", v84, 0xCu);
      sub_10000CE78(v88);

      v24 = v124;
    }

    else
    {

      v97 = sub_10004EE38(v74, type metadata accessor for LogID);
    }

    v103 = v112;
    a6 = *(v110 + 16);
    v104 = __chkstk_darwin(v97);
    *(&v107 - 2) = v105;
    *(&v107 - 2) = v113;
    __chkstk_darwin(v104);
    *(&v107 - 2) = sub_10001EF68;
    *(&v107 - 1) = v106;

    os_unfair_lock_lock((a6 + 16));
    sub_10004EFD4();
    if (!v24)
    {
      os_unfair_lock_unlock((a6 + 16));

      (*(v125 + 8))(v126, v103);

      return;
    }

    goto LABEL_40;
  }

  v49 = mach_absolute_time();
  a6 = v49 - v118;
  if (v49 >= v118)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(a6, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v130 = 0;
  v131 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v50._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v50);

  v51._countAndFlagsBits = 0x203A524F52524520;
  v51._object = 0xE800000000000000;
  String.append(_:)(v51);
  v129 = v24;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v52._countAndFlagsBits = 23328;
  v52._object = 0xE200000000000000;
  String.append(_:)(v52);
  v129 = a6 / 0x3E8;
  v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v53);

  v54._countAndFlagsBits = 1567847712;
  v54._object = 0xE400000000000000;
  String.append(_:)(v54);
  v56 = v130;
  v55 = v131;
  sub_10004EDD0(v124, a1, type metadata accessor for LogID);

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v124 = v24;
    v60 = v59;
    v61 = swift_slowAlloc();
    v123 = v56;
    v62 = v61;
    *v60 = 136446210;
    v129 = v61;
    v130 = 11580;
    v131 = 0xE200000000000000;
    v63._countAndFlagsBits = v114;
    v63._object = v25;
    String.append(_:)(v63);
    v64 = &a1[*(v115 + 24)];
    v65 = *v64;
    v66 = v64[1];

    v67._countAndFlagsBits = v65;
    v67._object = v66;
    String.append(_:)(v67);

    v68._countAndFlagsBits = v123;
    v68._object = v55;
    String.append(_:)(v68);

    v69 = v130;
    v70 = v131;
    sub_10004EE38(a1, type metadata accessor for LogID);
    v71 = sub_100035760(v69, v70, &v129);

    *(v60 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v57, v58, "%{public}s", v60, 0xCu);
    sub_10000CE78(v62);
  }

  else
  {

    v72 = sub_10004EE38(a1, type metadata accessor for LogID);
  }

  v98 = v112;
  v99 = *(v110 + 16);
  v100 = __chkstk_darwin(v72);
  *(&v107 - 2) = v101;
  *(&v107 - 2) = v113;
  __chkstk_darwin(v100);
  *(&v107 - 2) = sub_10001EF68;
  *(&v107 - 1) = v102;

  os_unfair_lock_lock(v99 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v99 + 4);

  swift_willThrow();
  (*(v125 + 8))(v126, v98);
}

void sub_10003BD38(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, void *a7, void *a8, char *a9)
{
  v88 = a7;
  v95 = a5;
  v94 = a4;
  v92 = a2;
  v93 = a3;
  v87 = type metadata accessor for LogID(0);
  v13 = __chkstk_darwin(v87);
  v91 = &v80[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v16 = &v80[-v15];
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v96 = &v80[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = mach_absolute_time();
  v20 = *a8;
  v21 = *(*a8 + 16);
  v98 = sub_10004EFA4;
  v99 = v20;
  v85 = v20;

  os_unfair_lock_lock(v21 + 4);
  sub_10004EF74(&v100);
  if (v9)
  {
    goto LABEL_26;
  }

  os_unfair_lock_unlock(v21 + 4);
  v97 = *(&v100 + 1);
  v86 = v100;
  v84 = v101;

  v22 = a8[1];
  if (!*(v22 + 16))
  {
    __break(1u);
    goto LABEL_21;
  }

  v23 = sub_10001D1DC(a1);
  if ((v24 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v25 = a9;
  v26 = *(v22 + 56);
  v82 = v18;
  (*(v18 + 16))(v96, v26 + *(v18 + 72) * v23, v17);
  *&v100 = StaticString.description.getter();
  *(&v100 + 1) = v27;
  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = a6;
  v29._object = v88;
  String.append(_:)(v29);
  v30 = *(&v100 + 1);
  v88 = v100;
  v31 = v16;
  sub_10004EDD0(v95, v16, type metadata accessor for LogID);

  v32 = v97;

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  v35 = os_log_type_enabled(v33, v34);
  v83 = v17;
  v90 = a9;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38._object = v32;
    v39 = v37;
    v102 = v37;
    *v36 = 136446210;
    *&v100 = 2113069;
    *(&v100 + 1) = 0xE300000000000000;
    v81 = v34;
    v38._countAndFlagsBits = v86;
    String.append(_:)(v38);
    v40 = (v31 + *(v87 + 24));
    v41 = *v40;
    v42 = v40[1];

    v43._countAndFlagsBits = v41;
    v43._object = v42;
    String.append(_:)(v43);

    v44._countAndFlagsBits = v88;
    v44._object = v30;
    String.append(_:)(v44);

    v45 = v100;
    sub_10004EE38(v31, type metadata accessor for LogID);
    v46 = sub_100035760(v45, *(&v45 + 1), &v102);

    *(v36 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v33, v81, "%{public}s", v36, 0xCu);
    sub_10000CE78(v39);

    v25 = v90;
  }

  else
  {

    v47 = sub_10004EE38(v31, type metadata accessor for LogID);
  }

  v21 = *&v25[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
  v16 = v91;
  while (1)
  {
    a1 = *&v21[4]._os_unfair_lock_opaque;
    __chkstk_darwin(v47);
    *&v80[-16] = sub_10001EE88;
    *&v80[-8] = v21;

    os_unfair_lock_lock(a1 + 4);
    sub_10004EDB4(&v100);
    os_unfair_lock_unlock(a1 + 4);
    v48 = v100;

    if (!v48)
    {
      break;
    }

    (v48)(v49);
    v50 = sub_10001EFC0(v48, *(&v48 + 1));
    v51 = *&v21[4]._os_unfair_lock_opaque;
    __chkstk_darwin(v50);
    *&v80[-16] = sub_10001EEE8;
    *&v80[-8] = v21;

    os_unfair_lock_lock(v51 + 4);
    sub_10004EDB4(&v100);
    os_unfair_lock_unlock(v51 + 4);
  }

  v52 = mach_absolute_time();
  v22 = v52 - v89;
  if (v52 >= v89)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  swift_once();
LABEL_12:
  v53 = v97;
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(v22, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        v22 = v22 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    os_unfair_lock_unlock(a1 + 4);
    __break(1u);
LABEL_26:
    os_unfair_lock_unlock(v21 + 4);
    __break(1u);
    return;
  }

LABEL_16:
  *&v100 = StaticString.description.getter();
  *(&v100 + 1) = v54;
  v55._countAndFlagsBits = 23328;
  v55._object = 0xE200000000000000;
  String.append(_:)(v55);
  v102 = v22 / 0x3E8;
  v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v56);

  v57._countAndFlagsBits = 1567847712;
  v57._object = 0xE400000000000000;
  String.append(_:)(v57);
  v58 = v100;
  sub_10004EDD0(v95, v16, type metadata accessor for LogID);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v95 = v58;
    v63 = v62;
    v102 = v62;
    *v61 = 136446210;
    *&v100 = 2108732;
    *(&v100 + 1) = 0xE300000000000000;
    v64._countAndFlagsBits = v86;
    v64._object = v53;
    String.append(_:)(v64);
    v65 = &v16[*(v87 + 24)];
    v66 = *v65;
    v67 = v65[1];

    v68._countAndFlagsBits = v66;
    v68._object = v67;
    String.append(_:)(v68);

    v69._countAndFlagsBits = v95;
    v69._object = *(&v58 + 1);
    String.append(_:)(v69);

    v70 = v100;
    sub_10004EE38(v91, type metadata accessor for LogID);
    v71 = sub_100035760(v70, *(&v70 + 1), &v102);

    *(v61 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v59, v60, "%{public}s", v61, 0xCu);
    sub_10000CE78(v63);
  }

  else
  {

    v72 = sub_10004EE38(v16, type metadata accessor for LogID);
  }

  v73 = *(v85 + 16);
  v74 = __chkstk_darwin(v72);
  *&v80[-16] = v75;
  *&v80[-8] = v76;
  __chkstk_darwin(v74);
  *&v80[-16] = sub_10001EF68;
  *&v80[-8] = v77;

  os_unfair_lock_lock(v73 + 4);
  sub_10004EFD4();
  v78 = v83;
  v79 = v82;
  os_unfair_lock_unlock(v73 + 4);

  (*(v79 + 8))(v96, v78);
}

void sub_10003C66C(void *a1, _DWORD *a2, uint64_t a3, int a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, void *a11, os_unfair_lock_s *a12)
{
  v117 = a7;
  v125 = a5;
  LODWORD(v124) = a4;
  v122 = a2;
  v123 = a3;
  v116 = type metadata accessor for LogID(0);
  v16 = __chkstk_darwin(v116);
  v111 = &v106[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v110 = &v106[-v19];
  __chkstk_darwin(v18);
  v21 = &v106[-v20];
  v126 = type metadata accessor for Logger();
  v22 = *(v126 - 8);
  __chkstk_darwin(v126);
  v128 = &v106[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v119 = mach_absolute_time();
  v24 = *a8;
  v25 = *(*a8 + 16);
  v129 = sub_10004EFA4;
  v130 = v24;

  os_unfair_lock_lock(v25 + 4);
  sub_10004EF74(&v131);
  v118 = v12;
  if (v12)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v25 + 4);
  v115 = v131;
  v127 = v132;
  v26 = v133;

  v27 = a8[1];
  if (!*(v27 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v28 = sub_10001D1DC(a1);
  if ((v29 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v112 = v26;
  v113 = v24;
  v25 = a12;
  a8 = a9;
  v120 = a11;
  v121 = a10;
  (*(v22 + 16))(v128, *(v27 + 56) + *(v22 + 72) * v28, v126);
  v131 = StaticString.description.getter();
  v132 = v30;
  v31._countAndFlagsBits = 32;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = a6;
  v32._object = v117;
  String.append(_:)(v32);
  v33 = v132;
  v117 = v131;
  v34 = v21;
  sub_10004EDD0(v125, v21, type metadata accessor for LogID);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v114 = v22;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v109 = a9;
    v39 = v38;
    v108 = swift_slowAlloc();
    v134 = v108;
    *v39 = 136446210;
    v131 = 2113069;
    v132 = 0xE300000000000000;
    v107 = v36;
    v40._countAndFlagsBits = v115;
    v40._object = a1;
    String.append(_:)(v40);
    v41 = (v34 + *(v116 + 24));
    v42 = v34;
    v43 = *v41;
    v44 = v41[1];

    v45._countAndFlagsBits = v43;
    v45._object = v44;
    String.append(_:)(v45);
    a1 = v127;

    v46._countAndFlagsBits = v117;
    v46._object = v33;
    String.append(_:)(v46);

    v47 = v131;
    v48 = v132;
    sub_10004EE38(v42, type metadata accessor for LogID);
    v49 = sub_100035760(v47, v48, &v134);

    *(v39 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v35, v107, "%{public}s", v39, 0xCu);
    sub_10000CE78(v108);

    a8 = v109;
  }

  else
  {

    sub_10004EE38(v34, type metadata accessor for LogID);
  }

  v50 = v118;
  sub_1000B2494(a8, v121, v120, a12);
  v22 = v50;
  if (!v50)
  {
    v74 = mach_absolute_time();
    v21 = v74 - v119;
    if (v74 < v119)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(v21, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v25 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((v21 + 16));
        __break(1u);
        return;
      }

      v21 = v21 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v131 = StaticString.description.getter();
    v132 = v75;
    v76._countAndFlagsBits = 23328;
    v76._object = 0xE200000000000000;
    String.append(_:)(v76);
    v134 = v21 / 0x3E8;
    v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v77);

    v78._countAndFlagsBits = 1567847712;
    v78._object = 0xE400000000000000;
    String.append(_:)(v78);
    v79 = v132;
    v123 = v131;
    v80 = v110;
    sub_10004EDD0(v125, v110, type metadata accessor for LogID);

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v124 = 0;
      v84 = v83;
      v125 = swift_slowAlloc();
      v134 = v125;
      *v84 = 136446210;
      v131 = 2108732;
      v132 = 0xE300000000000000;
      LODWORD(v122) = v82;
      v85._countAndFlagsBits = v115;
      v85._object = a1;
      String.append(_:)(v85);
      v86 = &v80[*(v116 + 24)];
      v87 = a8;
      v88 = *v86;
      v89 = v86[1];

      v90._countAndFlagsBits = v88;
      v90._object = v89;
      String.append(_:)(v90);

      v91._countAndFlagsBits = v123;
      v91._object = v79;
      String.append(_:)(v91);
      a8 = v87;

      v92 = v131;
      v93 = v132;
      sub_10004EE38(v80, type metadata accessor for LogID);
      v94 = sub_100035760(v92, v93, &v134);

      *(v84 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v81, v122, "%{public}s", v84, 0xCu);
      sub_10000CE78(v125);

      v22 = v124;
    }

    else
    {

      v95 = sub_10004EE38(v80, type metadata accessor for LogID);
    }

    v102 = v114;
    v21 = *(v113 + 16);
    v103 = __chkstk_darwin(v95);
    *&v106[-16] = v104;
    *&v106[-8] = v112;
    __chkstk_darwin(v103);
    *&v106[-16] = sub_10001EF68;
    *&v106[-8] = v105;

    os_unfair_lock_lock((v21 + 16));
    sub_10004EFD4();
    if (!v22)
    {
      os_unfair_lock_unlock((v21 + 16));

      (*(v102 + 8))(v128, v126);

      return;
    }

    goto LABEL_40;
  }

  v51 = mach_absolute_time();
  v21 = v51 - v119;
  if (v51 >= v119)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(v21, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        v21 = v21 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v119 = v25;
  v131 = 0;
  v132 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v52._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 0x203A524F52524520;
  v53._object = 0xE800000000000000;
  String.append(_:)(v53);
  v124 = v22;
  v134 = v22;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v54._countAndFlagsBits = 23328;
  v54._object = 0xE200000000000000;
  String.append(_:)(v54);
  v134 = v21 / 0x3E8;
  v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v55);

  v56._countAndFlagsBits = 1567847712;
  v56._object = 0xE400000000000000;
  String.append(_:)(v56);
  v58 = v131;
  v57 = v132;
  v59 = v111;
  sub_10004EDD0(v125, v111, type metadata accessor for LogID);

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v122 = v62;
    v125 = swift_slowAlloc();
    v134 = v125;
    *v62 = 136446210;
    v131 = 11580;
    v132 = 0xE200000000000000;
    LODWORD(v123) = v61;
    v63._countAndFlagsBits = v115;
    v63._object = a1;
    String.append(_:)(v63);
    v64 = &v59[*(v116 + 24)];
    v65 = *v64;
    v66 = v64[1];

    v67._countAndFlagsBits = v65;
    v67._object = v66;
    String.append(_:)(v67);

    v68._countAndFlagsBits = v58;
    v68._object = v57;
    String.append(_:)(v68);

    v69 = v131;
    v70 = v132;
    sub_10004EE38(v59, type metadata accessor for LogID);
    v71 = sub_100035760(v69, v70, &v134);

    v72 = v122;
    *(v122 + 1) = v71;
    _os_log_impl(&_mh_execute_header, v60, v123, "%{public}s", v72, 0xCu);
    sub_10000CE78(v125);
  }

  else
  {

    v73 = sub_10004EE38(v59, type metadata accessor for LogID);
  }

  v96 = v114;
  v97 = v119;
  v98 = *(v113 + 16);
  v99 = __chkstk_darwin(v73);
  *&v106[-16] = v100;
  *&v106[-8] = v112;
  __chkstk_darwin(v99);
  *&v106[-16] = sub_10001EF68;
  *&v106[-8] = v101;

  os_unfair_lock_lock(v98 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v98 + 4);

  swift_willThrow();
  (*(v96 + 8))(v128, v126);
}

void sub_10003D374(char *a1, uint64_t a2, uint64_t a3, int a4, os_unfair_lock_s *a5, uint64_t a6, void *a7, void *a8, char *a9)
{
  v113 = a7;
  v121 = a5;
  LODWORD(v120) = a4;
  v118 = a2;
  v119 = a3;
  v112 = type metadata accessor for LogID(0);
  v13 = __chkstk_darwin(v112);
  v116 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v106 = &v104 - v16;
  __chkstk_darwin(v15);
  v18 = &v104 - v17;
  v19 = type metadata accessor for Logger();
  v122 = *(v19 - 8);
  __chkstk_darwin(v19);
  v123 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = mach_absolute_time();
  v21 = *a8;
  v22 = *(*a8 + 16);
  v124 = sub_10004EFA4;
  v125 = v21;

  os_unfair_lock_lock(v22 + 4);
  sub_10004EF74(&v126);
  v114 = v9;
  if (v9)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v22 + 4);
  v23 = v127;
  v111 = v126;
  v110 = v128;

  v24 = a8[1];
  if (!*(v24 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v25 = sub_10001D1DC(a1);
  if ((v26 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v117 = a9;
  (*(v122 + 16))(v123, *(v24 + 56) + *(v122 + 72) * v25, v19);
  v126 = StaticString.description.getter();
  v127 = v27;
  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = a6;
  v29._object = v113;
  String.append(_:)(v29);
  v30 = v127;
  v113 = v126;
  v31 = v18;
  sub_10004EDD0(v121, v18, type metadata accessor for LogID);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v109 = v19;
  v107 = v21;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v129 = v105;
    *v35 = 136446210;
    v126 = 2113069;
    v127 = 0xE300000000000000;
    v36._countAndFlagsBits = v111;
    v36._object = v23;
    String.append(_:)(v36);
    v37 = (v31 + *(v112 + 24));
    v38 = *v37;
    v39 = v37[1];

    v40._countAndFlagsBits = v38;
    v40._object = v39;
    String.append(_:)(v40);

    v41._countAndFlagsBits = v113;
    v41._object = v30;
    String.append(_:)(v41);

    v42 = v126;
    v43 = v127;
    sub_10004EE38(v31, type metadata accessor for LogID);
    v44 = sub_100035760(v42, v43, &v129);

    *(v35 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s", v35, 0xCu);
    sub_10000CE78(v105);
  }

  else
  {

    sub_10004EE38(v31, type metadata accessor for LogID);
  }

  a1 = v116;
  v45 = v114;
  sub_1000B4430(v117);
  v22 = v45;
  v108 = v23;
  if (!v45)
  {
    v70 = mach_absolute_time();
    a6 = v70 - v115;
    if (v70 < v115)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v71 = v106;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(a6, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v22 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((a6 + 16));
        __break(1u);
        return;
      }

      a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v126 = StaticString.description.getter();
    v127 = v72;
    v73._countAndFlagsBits = 23328;
    v73._object = 0xE200000000000000;
    String.append(_:)(v73);
    v129 = a6 / 0x3E8;
    v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v74);

    v75._countAndFlagsBits = 1567847712;
    v75._object = 0xE400000000000000;
    String.append(_:)(v75);
    v77 = v126;
    v76 = v127;
    sub_10004EDD0(v121, v71, type metadata accessor for LogID);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v121 = 0;
      v81 = v80;
      v82 = swift_slowAlloc();
      v83._object = v23;
      v84 = v77;
      v85 = v82;
      v129 = v82;
      *v81 = 136446210;
      v126 = 2108732;
      v127 = 0xE300000000000000;
      LODWORD(v120) = v79;
      v83._countAndFlagsBits = v111;
      String.append(_:)(v83);
      v86 = (v71 + *(v112 + 24));
      v87 = *v86;
      v88 = v86[1];

      v89._countAndFlagsBits = v87;
      v89._object = v88;
      String.append(_:)(v89);

      v90._countAndFlagsBits = v84;
      v90._object = v76;
      String.append(_:)(v90);

      v91 = v126;
      v92 = v127;
      sub_10004EE38(v71, type metadata accessor for LogID);
      v93 = sub_100035760(v91, v92, &v129);

      *(v81 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v78, v120, "%{public}s", v81, 0xCu);
      sub_10000CE78(v85);

      v22 = v121;
    }

    else
    {

      v94 = sub_10004EE38(v71, type metadata accessor for LogID);
    }

    v100 = v109;
    a6 = *(v107 + 16);
    v101 = __chkstk_darwin(v94);
    *(&v104 - 2) = v102;
    *(&v104 - 2) = v110;
    __chkstk_darwin(v101);
    *(&v104 - 2) = sub_10001EF68;
    *(&v104 - 1) = v103;

    os_unfair_lock_lock((a6 + 16));
    sub_10004EFD4();
    if (!v22)
    {
      os_unfair_lock_unlock((a6 + 16));

      (*(v122 + 8))(v123, v100);

      return;
    }

    goto LABEL_40;
  }

  v46 = mach_absolute_time();
  a6 = v46 - v115;
  if (v46 >= v115)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(a6, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v126 = 0;
  v127 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v47._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 0x203A524F52524520;
  v48._object = 0xE800000000000000;
  String.append(_:)(v48);
  v129 = v22;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v49._countAndFlagsBits = 23328;
  v49._object = 0xE200000000000000;
  String.append(_:)(v49);
  v129 = a6 / 0x3E8;
  v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v50);

  v51._countAndFlagsBits = 1567847712;
  v51._object = 0xE400000000000000;
  String.append(_:)(v51);
  v53 = v126;
  v52 = v127;
  sub_10004EDD0(v121, a1, type metadata accessor for LogID);

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v121 = v22;
    v57 = v56;
    v58 = swift_slowAlloc();
    v120 = v53;
    v59 = v58;
    v129 = v58;
    *v57 = 136446210;
    v126 = 11580;
    v127 = 0xE200000000000000;
    v60._countAndFlagsBits = v111;
    v60._object = v23;
    String.append(_:)(v60);
    v61 = &a1[*(v112 + 24)];
    v62 = *v61;
    v63 = v61[1];

    v64._countAndFlagsBits = v62;
    v64._object = v63;
    String.append(_:)(v64);

    v65._countAndFlagsBits = v120;
    v65._object = v52;
    String.append(_:)(v65);

    v66 = v126;
    v67 = v127;
    sub_10004EE38(a1, type metadata accessor for LogID);
    v68 = sub_100035760(v66, v67, &v129);

    *(v57 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v54, v55, "%{public}s", v57, 0xCu);
    sub_10000CE78(v59);
  }

  else
  {

    v69 = sub_10004EE38(a1, type metadata accessor for LogID);
  }

  v95 = v109;
  v96 = *(v107 + 16);
  v97 = __chkstk_darwin(v69);
  *(&v104 - 2) = v98;
  *(&v104 - 2) = v110;
  __chkstk_darwin(v97);
  *(&v104 - 2) = sub_10001EF68;
  *(&v104 - 1) = v99;

  os_unfair_lock_lock(v96 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v96 + 4);

  swift_willThrow();
  (*(v122 + 8))(v123, v95);
}

void sub_10003DFF4(void *a1, _DWORD *a2, uint64_t a3, int a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9, unint64_t a10, uint64_t a11, os_unfair_lock_s *a12)
{
  v117 = a7;
  v125 = a5;
  LODWORD(v124) = a4;
  v122 = a2;
  v123 = a3;
  v116 = type metadata accessor for LogID(0);
  v16 = __chkstk_darwin(v116);
  v111 = &v106[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v110 = &v106[-v19];
  __chkstk_darwin(v18);
  v21 = &v106[-v20];
  v126 = type metadata accessor for Logger();
  v22 = *(v126 - 8);
  __chkstk_darwin(v126);
  v128 = &v106[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v119 = mach_absolute_time();
  v24 = *a8;
  v25 = *(*a8 + 16);
  v129 = sub_10004EFA4;
  v130 = v24;

  os_unfair_lock_lock(v25 + 4);
  sub_10004EF74(&v131);
  v118 = v12;
  if (v12)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v25 + 4);
  v115 = v131;
  v127 = v132;
  v26 = v133;

  v27 = a8[1];
  if (!*(v27 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v28 = sub_10001D1DC(a1);
  if ((v29 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v112 = v26;
  v113 = v24;
  v25 = a12;
  a8 = a9;
  v120 = a11;
  v121 = a10;
  (*(v22 + 16))(v128, *(v27 + 56) + *(v22 + 72) * v28, v126);
  v131 = StaticString.description.getter();
  v132 = v30;
  v31._countAndFlagsBits = 32;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = a6;
  v32._object = v117;
  String.append(_:)(v32);
  v33 = v132;
  v117 = v131;
  v34 = v21;
  sub_10004EDD0(v125, v21, type metadata accessor for LogID);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v114 = v22;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v109 = a9;
    v39 = v38;
    v108 = swift_slowAlloc();
    v134 = v108;
    *v39 = 136446210;
    v131 = 2113069;
    v132 = 0xE300000000000000;
    v107 = v36;
    v40._countAndFlagsBits = v115;
    v40._object = a1;
    String.append(_:)(v40);
    v41 = (v34 + *(v116 + 24));
    v42 = v34;
    v43 = *v41;
    v44 = v41[1];

    v45._countAndFlagsBits = v43;
    v45._object = v44;
    String.append(_:)(v45);
    a1 = v127;

    v46._countAndFlagsBits = v117;
    v46._object = v33;
    String.append(_:)(v46);

    v47 = v131;
    v48 = v132;
    sub_10004EE38(v42, type metadata accessor for LogID);
    v49 = sub_100035760(v47, v48, &v134);

    *(v39 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v35, v107, "%{public}s", v39, 0xCu);
    sub_10000CE78(v108);

    a8 = v109;
  }

  else
  {

    sub_10004EE38(v34, type metadata accessor for LogID);
  }

  v50 = v118;
  sub_10005B8D4(a8, v121, v120, a12);
  v22 = v50;
  if (!v50)
  {
    v74 = mach_absolute_time();
    v21 = v74 - v119;
    if (v74 < v119)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(v21, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v25 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((v21 + 16));
        __break(1u);
        return;
      }

      v21 = v21 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v131 = StaticString.description.getter();
    v132 = v75;
    v76._countAndFlagsBits = 23328;
    v76._object = 0xE200000000000000;
    String.append(_:)(v76);
    v134 = v21 / 0x3E8;
    v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v77);

    v78._countAndFlagsBits = 1567847712;
    v78._object = 0xE400000000000000;
    String.append(_:)(v78);
    v79 = v132;
    v123 = v131;
    v80 = v110;
    sub_10004EDD0(v125, v110, type metadata accessor for LogID);

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v124 = 0;
      v84 = v83;
      v125 = swift_slowAlloc();
      v134 = v125;
      *v84 = 136446210;
      v131 = 2108732;
      v132 = 0xE300000000000000;
      LODWORD(v122) = v82;
      v85._countAndFlagsBits = v115;
      v85._object = a1;
      String.append(_:)(v85);
      v86 = &v80[*(v116 + 24)];
      v87 = a8;
      v88 = *v86;
      v89 = v86[1];

      v90._countAndFlagsBits = v88;
      v90._object = v89;
      String.append(_:)(v90);

      v91._countAndFlagsBits = v123;
      v91._object = v79;
      String.append(_:)(v91);
      a8 = v87;

      v92 = v131;
      v93 = v132;
      sub_10004EE38(v80, type metadata accessor for LogID);
      v94 = sub_100035760(v92, v93, &v134);

      *(v84 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v81, v122, "%{public}s", v84, 0xCu);
      sub_10000CE78(v125);

      v22 = v124;
    }

    else
    {

      v95 = sub_10004EE38(v80, type metadata accessor for LogID);
    }

    v102 = v114;
    v21 = *(v113 + 16);
    v103 = __chkstk_darwin(v95);
    *&v106[-16] = v104;
    *&v106[-8] = v112;
    __chkstk_darwin(v103);
    *&v106[-16] = sub_10001EF68;
    *&v106[-8] = v105;

    os_unfair_lock_lock((v21 + 16));
    sub_10004EFD4();
    if (!v22)
    {
      os_unfair_lock_unlock((v21 + 16));

      (*(v102 + 8))(v128, v126);

      return;
    }

    goto LABEL_40;
  }

  v51 = mach_absolute_time();
  v21 = v51 - v119;
  if (v51 >= v119)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(v21, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        v21 = v21 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v119 = v25;
  v131 = 0;
  v132 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v52._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 0x203A524F52524520;
  v53._object = 0xE800000000000000;
  String.append(_:)(v53);
  v124 = v22;
  v134 = v22;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v54._countAndFlagsBits = 23328;
  v54._object = 0xE200000000000000;
  String.append(_:)(v54);
  v134 = v21 / 0x3E8;
  v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v55);

  v56._countAndFlagsBits = 1567847712;
  v56._object = 0xE400000000000000;
  String.append(_:)(v56);
  v58 = v131;
  v57 = v132;
  v59 = v111;
  sub_10004EDD0(v125, v111, type metadata accessor for LogID);

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v122 = v62;
    v125 = swift_slowAlloc();
    v134 = v125;
    *v62 = 136446210;
    v131 = 11580;
    v132 = 0xE200000000000000;
    LODWORD(v123) = v61;
    v63._countAndFlagsBits = v115;
    v63._object = a1;
    String.append(_:)(v63);
    v64 = &v59[*(v116 + 24)];
    v65 = *v64;
    v66 = v64[1];

    v67._countAndFlagsBits = v65;
    v67._object = v66;
    String.append(_:)(v67);

    v68._countAndFlagsBits = v58;
    v68._object = v57;
    String.append(_:)(v68);

    v69 = v131;
    v70 = v132;
    sub_10004EE38(v59, type metadata accessor for LogID);
    v71 = sub_100035760(v69, v70, &v134);

    v72 = v122;
    *(v122 + 1) = v71;
    _os_log_impl(&_mh_execute_header, v60, v123, "%{public}s", v72, 0xCu);
    sub_10000CE78(v125);
  }

  else
  {

    v73 = sub_10004EE38(v59, type metadata accessor for LogID);
  }

  v96 = v114;
  v97 = v119;
  v98 = *(v113 + 16);
  v99 = __chkstk_darwin(v73);
  *&v106[-16] = v100;
  *&v106[-8] = v112;
  __chkstk_darwin(v99);
  *&v106[-16] = sub_10001EF68;
  *&v106[-8] = v101;

  os_unfair_lock_lock(v98 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v98 + 4);

  swift_willThrow();
  (*(v96 + 8))(v128, v126);
}

void sub_10003ECFC(_BYTE *a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, uint64_t a6, void *a7, void *a8, char *a9, void *a10, void *a11)
{
  v120 = a7;
  v126 = a5;
  v125 = a4;
  v123 = a2;
  v124 = a3;
  v116 = type metadata accessor for LogID(0);
  v15 = __chkstk_darwin(v116);
  v119 = &v106[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v109 = &v106[-v18];
  __chkstk_darwin(v17);
  v20 = &v106[-v19];
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v127 = &v106[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v118 = mach_absolute_time();
  v24 = *a8;
  v25 = *(*a8 + 16);
  v128 = sub_10001E9F0;
  v129 = v24;
  v114 = v24;

  os_unfair_lock_lock(v25 + 4);
  sub_10004EC5C(&v130);
  v117 = v11;
  if (v11)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v25 + 4);
  v26 = v131;
  v115 = v130;
  v113 = v132;

  v27 = a8[1];
  if (!*(v27 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v28 = sub_10001D1DC(a1);
  if ((v29 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  a8 = a10;
  v121 = a11;
  v122 = a9;
  (*(v22 + 16))(v127, *(v27 + 56) + *(v22 + 72) * v28, v21);
  v130 = StaticString.description.getter();
  v131 = v30;
  v31._countAndFlagsBits = 32;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = a6;
  v32._object = v120;
  String.append(_:)(v32);
  v33 = v131;
  v110 = v130;
  v25 = v20;
  sub_10004EDD0(v126, v20, type metadata accessor for LogID);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = os_log_type_enabled(v34, v35);
  v120 = v26;
  v111 = v22;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v133 = v108;
    *v37 = 136446210;
    v130 = 2113069;
    v131 = 0xE300000000000000;
    v107 = v35;
    v38._countAndFlagsBits = v115;
    v38._object = v26;
    String.append(_:)(v38);
    v39 = (v25 + *(v116 + 24));
    v40 = *v39;
    v41 = v39[1];

    v42._countAndFlagsBits = v40;
    v42._object = v41;
    String.append(_:)(v42);

    v43._countAndFlagsBits = v110;
    v43._object = v33;
    String.append(_:)(v43);
    a8 = a10;

    v44 = v130;
    v45 = v131;
    sub_10004EE38(v25, type metadata accessor for LogID);
    v46 = sub_100035760(v44, v45, &v133);

    *(v37 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v34, v107, "%{public}s", v37, 0xCu);
    sub_10000CE78(v108);
  }

  else
  {

    sub_10004EE38(v25, type metadata accessor for LogID);
  }

  a1 = v119;
  v47 = v117;
  sub_1000B9084(v122, a8, v121);
  v26 = v47;
  v112 = v21;
  if (!v47)
  {
    v74 = mach_absolute_time();
    v20 = v74 - v118;
    if (v74 < v118)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v75 = v109;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(v20, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v25 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((v20 + 16));
        __break(1u);
        return;
      }

      v20 = v20 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v119 = 0;
    v130 = StaticString.description.getter();
    v131 = v76;
    v77._countAndFlagsBits = 23328;
    v77._object = 0xE200000000000000;
    String.append(_:)(v77);
    v133 = v20 / 0x3E8;
    v78._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v78);

    v79._countAndFlagsBits = 1567847712;
    v79._object = 0xE400000000000000;
    String.append(_:)(v79);
    v81 = v130;
    v80 = v131;
    sub_10004EDD0(v126, v75, type metadata accessor for LogID);
    v82 = v120;

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v133 = v126;
      *v85 = 136446210;
      v130 = 2108732;
      v131 = 0xE300000000000000;
      v125 = v84;
      v86._countAndFlagsBits = v115;
      v86._object = v82;
      String.append(_:)(v86);
      v87 = (v75 + *(v116 + 24));
      v88 = *v87;
      v89 = v87[1];

      v90._countAndFlagsBits = v88;
      v90._object = v89;
      String.append(_:)(v90);

      v91._countAndFlagsBits = v81;
      v91._object = v80;
      String.append(_:)(v91);

      v92 = v130;
      v93 = v131;
      sub_10004EE38(v75, type metadata accessor for LogID);
      v94 = sub_100035760(v92, v93, &v133);

      *(v85 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v83, v125, "%{public}s", v85, 0xCu);
      sub_10000CE78(v126);
    }

    else
    {

      v95 = sub_10004EE38(v75, type metadata accessor for LogID);
    }

    v101 = v111;
    v20 = *(v114 + 16);
    v102 = __chkstk_darwin(v95);
    *&v106[-16] = v103;
    *&v106[-8] = v113;
    __chkstk_darwin(v102);
    *&v106[-16] = sub_10001EF68;
    *&v106[-8] = v104;

    os_unfair_lock_lock((v20 + 16));
    v105 = v119;
    sub_10004EFD4();
    if (!v105)
    {
      os_unfair_lock_unlock((v20 + 16));

      (*(v101 + 8))(v127, v112);

      return;
    }

    goto LABEL_40;
  }

  v48 = mach_absolute_time();
  v20 = v48 - v118;
  if (v48 >= v118)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(v20, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        v20 = v20 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v118 = a8;
  v130 = 0;
  v131 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v49._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v49);

  v50._countAndFlagsBits = 0x203A524F52524520;
  v50._object = 0xE800000000000000;
  String.append(_:)(v50);
  v133 = v26;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v51._countAndFlagsBits = 23328;
  v51._object = 0xE200000000000000;
  String.append(_:)(v51);
  v133 = v20 / 0x3E8;
  v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 1567847712;
  v53._object = 0xE400000000000000;
  String.append(_:)(v53);
  v55 = v130;
  v54 = v131;
  sub_10004EDD0(v126, a1, type metadata accessor for LogID);
  v56 = v120;

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v126 = v55;
    v60 = a1;
    v61 = v59;
    v62 = swift_slowAlloc();
    v119 = v26;
    v63 = v62;
    v133 = v62;
    *v61 = 136446210;
    v130 = 11580;
    v131 = 0xE200000000000000;
    v64._countAndFlagsBits = v115;
    v64._object = v56;
    String.append(_:)(v64);
    v65 = (v60 + *(v116 + 24));
    v66 = *v65;
    v67 = v65[1];

    v68._countAndFlagsBits = v66;
    v68._object = v67;
    String.append(_:)(v68);

    v69._countAndFlagsBits = v126;
    v69._object = v54;
    String.append(_:)(v69);

    v70 = v130;
    v71 = v131;
    sub_10004EE38(v60, type metadata accessor for LogID);
    v72 = sub_100035760(v70, v71, &v133);

    *(v61 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v57, v58, "%{public}s", v61, 0xCu);
    sub_10000CE78(v63);
  }

  else
  {

    v73 = sub_10004EE38(a1, type metadata accessor for LogID);
  }

  v96 = v112;
  v97 = *(v114 + 16);
  v98 = __chkstk_darwin(v73);
  *&v106[-16] = v99;
  *&v106[-8] = v113;
  __chkstk_darwin(v98);
  *&v106[-16] = sub_10001EA28;
  *&v106[-8] = v100;

  os_unfair_lock_lock(v97 + 4);
  sub_10004EC74();
  os_unfair_lock_unlock(v97 + 4);

  swift_willThrow();
  (*(v111 + 8))(v127, v96);
}

void sub_10003F9E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, void *a8, os_unfair_lock_s *a9, uint64_t a10, unsigned int a11)
{
  v118 = a7;
  v126 = a5;
  LODWORD(v125) = a4;
  v123 = a2;
  v124 = a3;
  v117 = type metadata accessor for LogID(0);
  v15 = __chkstk_darwin(v117);
  v110 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v121 = &v109 - v18;
  __chkstk_darwin(v17);
  v20 = &v109 - v19;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v128 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = mach_absolute_time();
  v24 = *a8;
  v25 = *(*a8 + 16);
  v129 = sub_10004EFA4;
  v130 = v24;
  v115 = v24;

  os_unfair_lock_lock(v25 + 4);
  sub_10004EF74(&v131);
  v119 = v11;
  if (v11)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v25 + 4);
  v116 = v131;
  v127 = v132;
  v26 = v133;

  v27 = a8[1];
  if (!*(v27 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v28 = sub_10001D1DC(a1);
  if ((v29 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v111 = v26;
  v114 = a11;
  v113 = a10;
  v25 = a9;
  (*(v22 + 16))(v128, *(v27 + 56) + *(v22 + 72) * v28, v21);
  v131 = StaticString.description.getter();
  v132 = v30;
  v31._countAndFlagsBits = 32;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = a6;
  v32._object = v118;
  String.append(_:)(v32);
  v33 = v132;
  v118 = v131;
  v34 = v20;
  sub_10004EDD0(v126, v20, type metadata accessor for LogID);

  v35 = v127;

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  v38 = os_log_type_enabled(v36, v37);
  v112 = v22;
  v122 = a9;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v134 = v109;
    *v39 = 136446210;
    v131 = 2113069;
    v132 = 0xE300000000000000;
    v40._countAndFlagsBits = v116;
    v40._object = v35;
    String.append(_:)(v40);
    v41 = (v34 + *(v117 + 24));
    v42 = *v41;
    v43 = v41[1];

    v44._countAndFlagsBits = v42;
    v44._object = v43;
    String.append(_:)(v44);
    v22 = v21;

    v45._countAndFlagsBits = v118;
    v45._object = v33;
    String.append(_:)(v45);

    v46 = v131;
    v47 = v132;
    sub_10004EE38(v34, type metadata accessor for LogID);
    v48 = sub_100035760(v46, v47, &v134);

    *(v39 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s", v39, 0xCu);
    sub_10000CE78(v109);

    v25 = v122;

    v49 = v119;
  }

  else
  {

    sub_10004EE38(v34, type metadata accessor for LogID);
    v49 = v119;
    v22 = v21;
  }

  sub_1000AF10C(v25, v113, v114);
  a6 = v49;
  v50 = v121;
  if (!v49)
  {
    v77 = mach_absolute_time();
    a1 = v77 - v120;
    if (v77 < v120)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(a1, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v25 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((a1 + 16));
        __break(1u);
        return;
      }

      a1 = a1 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v131 = StaticString.description.getter();
    v132 = v78;
    v79._countAndFlagsBits = 23328;
    v79._object = 0xE200000000000000;
    String.append(_:)(v79);
    v134 = a1 / 0x3E8;
    v80._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v80);

    v81._countAndFlagsBits = 1567847712;
    v81._object = 0xE400000000000000;
    String.append(_:)(v81);
    v82 = v132;
    v125 = v131;
    sub_10004EDD0(v126, v50, type metadata accessor for LogID);
    v83 = v127;

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v126 = 0;
      v134 = v87;
      v120 = v22;
      v88 = v87;
      *v86 = 136446210;
      v131 = 2108732;
      v132 = 0xE300000000000000;
      v89._countAndFlagsBits = v116;
      v89._object = v83;
      String.append(_:)(v89);
      v90 = (v50 + *(v117 + 24));
      v91 = *v90;
      v92 = v90[1];

      v93._countAndFlagsBits = v91;
      v93._object = v92;
      String.append(_:)(v93);

      v94._countAndFlagsBits = v125;
      v94._object = v82;
      String.append(_:)(v94);

      v95 = v131;
      v96 = v132;
      sub_10004EE38(v50, type metadata accessor for LogID);
      v97 = sub_100035760(v95, v96, &v134);

      *(v86 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v84, v85, "%{public}s", v86, 0xCu);
      sub_10000CE78(v88);
      v22 = v120;
      a6 = v126;

      v25 = v122;
    }

    else
    {

      v98 = sub_10004EE38(v50, type metadata accessor for LogID);
    }

    v105 = v112;
    a1 = *(v115 + 16);
    v106 = __chkstk_darwin(v98);
    *(&v109 - 2) = v107;
    *(&v109 - 2) = v111;
    __chkstk_darwin(v106);
    *(&v109 - 2) = sub_10001EF68;
    *(&v109 - 1) = v108;

    os_unfair_lock_lock((a1 + 16));
    sub_10004EFD4();
    if (!a6)
    {
      os_unfair_lock_unlock((a1 + 16));

      (*(v105 + 8))(v128, v22);

      return;
    }

    goto LABEL_40;
  }

  v51 = mach_absolute_time();
  a1 = v51 - v120;
  if (v51 >= v120)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(a1, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        a1 = a1 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v120 = v22;
  v131 = 0;
  v132 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v52._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 0x203A524F52524520;
  v53._object = 0xE800000000000000;
  String.append(_:)(v53);
  v134 = a6;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v54._countAndFlagsBits = 23328;
  v54._object = 0xE200000000000000;
  String.append(_:)(v54);
  v134 = a1 / 0x3E8;
  v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v55);

  v56._countAndFlagsBits = 1567847712;
  v56._object = 0xE400000000000000;
  String.append(_:)(v56);
  v58 = v131;
  v57 = v132;
  v59 = v110;
  sub_10004EDD0(v126, v110, type metadata accessor for LogID);
  v60 = v127;

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v125 = v58;
    v64 = v63;
    v65 = swift_slowAlloc();
    v126 = a6;
    v66 = v65;
    v134 = v65;
    *v64 = 136446210;
    v131 = 11580;
    v132 = 0xE200000000000000;
    v67._countAndFlagsBits = v116;
    v67._object = v60;
    String.append(_:)(v67);
    v68 = (v59 + *(v117 + 24));
    v69 = *v68;
    v70 = v68[1];

    v71._countAndFlagsBits = v69;
    v71._object = v70;
    String.append(_:)(v71);

    v72._countAndFlagsBits = v125;
    v72._object = v57;
    String.append(_:)(v72);

    v73 = v131;
    v74 = v132;
    sub_10004EE38(v59, type metadata accessor for LogID);
    v75 = sub_100035760(v73, v74, &v134);

    *(v64 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v61, v62, "%{public}s", v64, 0xCu);
    sub_10000CE78(v66);
  }

  else
  {

    v76 = sub_10004EE38(v59, type metadata accessor for LogID);
  }

  v99 = v120;
  v100 = v112;
  v101 = *(v115 + 16);
  v102 = __chkstk_darwin(v76);
  *(&v109 - 2) = v103;
  *(&v109 - 2) = v111;
  __chkstk_darwin(v102);
  *(&v109 - 2) = sub_10001EF68;
  *(&v109 - 1) = v104;

  os_unfair_lock_lock(v101 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v101 + 4);

  swift_willThrow();
  (*(v100 + 8))(v128, v99);
}

void sub_1000406A0(char *a1, uint64_t a2, uint64_t a3, int a4, os_unfair_lock_s *a5, uint64_t a6, void *a7, void *a8, char *a9)
{
  v113 = a7;
  v121 = a5;
  LODWORD(v120) = a4;
  v118 = a2;
  v119 = a3;
  v112 = type metadata accessor for LogID(0);
  v13 = __chkstk_darwin(v112);
  v116 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v106 = &v104 - v16;
  __chkstk_darwin(v15);
  v18 = &v104 - v17;
  v19 = type metadata accessor for Logger();
  v122 = *(v19 - 8);
  __chkstk_darwin(v19);
  v123 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = mach_absolute_time();
  v21 = *a8;
  v22 = *(*a8 + 16);
  v124 = sub_10004EFA4;
  v125 = v21;

  os_unfair_lock_lock(v22 + 4);
  sub_10004EF74(&v126);
  v114 = v9;
  if (v9)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v22 + 4);
  v23 = v127;
  v111 = v126;
  v110 = v128;

  v24 = a8[1];
  if (!*(v24 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v25 = sub_10001D1DC(a1);
  if ((v26 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v117 = a9;
  (*(v122 + 16))(v123, *(v24 + 56) + *(v122 + 72) * v25, v19);
  v126 = StaticString.description.getter();
  v127 = v27;
  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = a6;
  v29._object = v113;
  String.append(_:)(v29);
  v30 = v127;
  v113 = v126;
  v31 = v18;
  sub_10004EDD0(v121, v18, type metadata accessor for LogID);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v109 = v19;
  v107 = v21;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v129 = v105;
    *v35 = 136446210;
    v126 = 2113069;
    v127 = 0xE300000000000000;
    v36._countAndFlagsBits = v111;
    v36._object = v23;
    String.append(_:)(v36);
    v37 = (v31 + *(v112 + 24));
    v38 = *v37;
    v39 = v37[1];

    v40._countAndFlagsBits = v38;
    v40._object = v39;
    String.append(_:)(v40);

    v41._countAndFlagsBits = v113;
    v41._object = v30;
    String.append(_:)(v41);

    v42 = v126;
    v43 = v127;
    sub_10004EE38(v31, type metadata accessor for LogID);
    v44 = sub_100035760(v42, v43, &v129);

    *(v35 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s", v35, 0xCu);
    sub_10000CE78(v105);
  }

  else
  {

    sub_10004EE38(v31, type metadata accessor for LogID);
  }

  a1 = v116;
  v45 = v114;
  sub_1000B498C(v117);
  v22 = v45;
  v108 = v23;
  if (!v45)
  {
    v70 = mach_absolute_time();
    a6 = v70 - v115;
    if (v70 < v115)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v71 = v106;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(a6, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v22 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((a6 + 16));
        __break(1u);
        return;
      }

      a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v126 = StaticString.description.getter();
    v127 = v72;
    v73._countAndFlagsBits = 23328;
    v73._object = 0xE200000000000000;
    String.append(_:)(v73);
    v129 = a6 / 0x3E8;
    v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v74);

    v75._countAndFlagsBits = 1567847712;
    v75._object = 0xE400000000000000;
    String.append(_:)(v75);
    v77 = v126;
    v76 = v127;
    sub_10004EDD0(v121, v71, type metadata accessor for LogID);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v121 = 0;
      v81 = v80;
      v82 = swift_slowAlloc();
      v83._object = v23;
      v84 = v77;
      v85 = v82;
      v129 = v82;
      *v81 = 136446210;
      v126 = 2108732;
      v127 = 0xE300000000000000;
      LODWORD(v120) = v79;
      v83._countAndFlagsBits = v111;
      String.append(_:)(v83);
      v86 = (v71 + *(v112 + 24));
      v87 = *v86;
      v88 = v86[1];

      v89._countAndFlagsBits = v87;
      v89._object = v88;
      String.append(_:)(v89);

      v90._countAndFlagsBits = v84;
      v90._object = v76;
      String.append(_:)(v90);

      v91 = v126;
      v92 = v127;
      sub_10004EE38(v71, type metadata accessor for LogID);
      v93 = sub_100035760(v91, v92, &v129);

      *(v81 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v78, v120, "%{public}s", v81, 0xCu);
      sub_10000CE78(v85);

      v22 = v121;
    }

    else
    {

      v94 = sub_10004EE38(v71, type metadata accessor for LogID);
    }

    v100 = v109;
    a6 = *(v107 + 16);
    v101 = __chkstk_darwin(v94);
    *(&v104 - 2) = v102;
    *(&v104 - 2) = v110;
    __chkstk_darwin(v101);
    *(&v104 - 2) = sub_10001EF68;
    *(&v104 - 1) = v103;

    os_unfair_lock_lock((a6 + 16));
    sub_10004EFD4();
    if (!v22)
    {
      os_unfair_lock_unlock((a6 + 16));

      (*(v122 + 8))(v123, v100);

      return;
    }

    goto LABEL_40;
  }

  v46 = mach_absolute_time();
  a6 = v46 - v115;
  if (v46 >= v115)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(a6, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v126 = 0;
  v127 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v47._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 0x203A524F52524520;
  v48._object = 0xE800000000000000;
  String.append(_:)(v48);
  v129 = v22;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v49._countAndFlagsBits = 23328;
  v49._object = 0xE200000000000000;
  String.append(_:)(v49);
  v129 = a6 / 0x3E8;
  v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v50);

  v51._countAndFlagsBits = 1567847712;
  v51._object = 0xE400000000000000;
  String.append(_:)(v51);
  v53 = v126;
  v52 = v127;
  sub_10004EDD0(v121, a1, type metadata accessor for LogID);

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v121 = v22;
    v57 = v56;
    v58 = swift_slowAlloc();
    v120 = v53;
    v59 = v58;
    v129 = v58;
    *v57 = 136446210;
    v126 = 11580;
    v127 = 0xE200000000000000;
    v60._countAndFlagsBits = v111;
    v60._object = v23;
    String.append(_:)(v60);
    v61 = &a1[*(v112 + 24)];
    v62 = *v61;
    v63 = v61[1];

    v64._countAndFlagsBits = v62;
    v64._object = v63;
    String.append(_:)(v64);

    v65._countAndFlagsBits = v120;
    v65._object = v52;
    String.append(_:)(v65);

    v66 = v126;
    v67 = v127;
    sub_10004EE38(a1, type metadata accessor for LogID);
    v68 = sub_100035760(v66, v67, &v129);

    *(v57 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v54, v55, "%{public}s", v57, 0xCu);
    sub_10000CE78(v59);
  }

  else
  {

    v69 = sub_10004EE38(a1, type metadata accessor for LogID);
  }

  v95 = v109;
  v96 = *(v107 + 16);
  v97 = __chkstk_darwin(v69);
  *(&v104 - 2) = v98;
  *(&v104 - 2) = v110;
  __chkstk_darwin(v97);
  *(&v104 - 2) = sub_10001EF68;
  *(&v104 - 1) = v99;

  os_unfair_lock_lock(v96 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v96 + 4);

  swift_willThrow();
  (*(v122 + 8))(v123, v95);
}

void sub_100041320(char *a1, uint64_t a2, uint64_t a3, int a4, os_unfair_lock_s *a5, uint64_t a6, void *a7, void *a8, char *a9)
{
  v113 = a7;
  v121 = a5;
  LODWORD(v120) = a4;
  v118 = a2;
  v119 = a3;
  v112 = type metadata accessor for LogID(0);
  v13 = __chkstk_darwin(v112);
  v116 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v106 = &v104 - v16;
  __chkstk_darwin(v15);
  v18 = &v104 - v17;
  v19 = type metadata accessor for Logger();
  v122 = *(v19 - 8);
  __chkstk_darwin(v19);
  v123 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = mach_absolute_time();
  v21 = *a8;
  v22 = *(*a8 + 16);
  v124 = sub_10004EFA4;
  v125 = v21;

  os_unfair_lock_lock(v22 + 4);
  sub_10004EF74(&v126);
  v114 = v9;
  if (v9)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v22 + 4);
  v23 = v127;
  v111 = v126;
  v110 = v128;

  v24 = a8[1];
  if (!*(v24 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v25 = sub_10001D1DC(a1);
  if ((v26 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v117 = a9;
  (*(v122 + 16))(v123, *(v24 + 56) + *(v122 + 72) * v25, v19);
  v126 = StaticString.description.getter();
  v127 = v27;
  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = a6;
  v29._object = v113;
  String.append(_:)(v29);
  v30 = v127;
  v113 = v126;
  v31 = v18;
  sub_10004EDD0(v121, v18, type metadata accessor for LogID);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v109 = v19;
  v107 = v21;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v129 = v105;
    *v35 = 136446210;
    v126 = 2113069;
    v127 = 0xE300000000000000;
    v36._countAndFlagsBits = v111;
    v36._object = v23;
    String.append(_:)(v36);
    v37 = (v31 + *(v112 + 24));
    v38 = *v37;
    v39 = v37[1];

    v40._countAndFlagsBits = v38;
    v40._object = v39;
    String.append(_:)(v40);

    v41._countAndFlagsBits = v113;
    v41._object = v30;
    String.append(_:)(v41);

    v42 = v126;
    v43 = v127;
    sub_10004EE38(v31, type metadata accessor for LogID);
    v44 = sub_100035760(v42, v43, &v129);

    *(v35 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s", v35, 0xCu);
    sub_10000CE78(v105);
  }

  else
  {

    sub_10004EE38(v31, type metadata accessor for LogID);
  }

  a1 = v116;
  v45 = v114;
  sub_1000B88F8(v117);
  v22 = v45;
  v108 = v23;
  if (!v45)
  {
    v70 = mach_absolute_time();
    a6 = v70 - v115;
    if (v70 < v115)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v71 = v106;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(a6, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v22 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((a6 + 16));
        __break(1u);
        return;
      }

      a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v126 = StaticString.description.getter();
    v127 = v72;
    v73._countAndFlagsBits = 23328;
    v73._object = 0xE200000000000000;
    String.append(_:)(v73);
    v129 = a6 / 0x3E8;
    v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v74);

    v75._countAndFlagsBits = 1567847712;
    v75._object = 0xE400000000000000;
    String.append(_:)(v75);
    v77 = v126;
    v76 = v127;
    sub_10004EDD0(v121, v71, type metadata accessor for LogID);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v121 = 0;
      v81 = v80;
      v82 = swift_slowAlloc();
      v83._object = v23;
      v84 = v77;
      v85 = v82;
      v129 = v82;
      *v81 = 136446210;
      v126 = 2108732;
      v127 = 0xE300000000000000;
      LODWORD(v120) = v79;
      v83._countAndFlagsBits = v111;
      String.append(_:)(v83);
      v86 = (v71 + *(v112 + 24));
      v87 = *v86;
      v88 = v86[1];

      v89._countAndFlagsBits = v87;
      v89._object = v88;
      String.append(_:)(v89);

      v90._countAndFlagsBits = v84;
      v90._object = v76;
      String.append(_:)(v90);

      v91 = v126;
      v92 = v127;
      sub_10004EE38(v71, type metadata accessor for LogID);
      v93 = sub_100035760(v91, v92, &v129);

      *(v81 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v78, v120, "%{public}s", v81, 0xCu);
      sub_10000CE78(v85);

      v22 = v121;
    }

    else
    {

      v94 = sub_10004EE38(v71, type metadata accessor for LogID);
    }

    v100 = v109;
    a6 = *(v107 + 16);
    v101 = __chkstk_darwin(v94);
    *(&v104 - 2) = v102;
    *(&v104 - 2) = v110;
    __chkstk_darwin(v101);
    *(&v104 - 2) = sub_10001EF68;
    *(&v104 - 1) = v103;

    os_unfair_lock_lock((a6 + 16));
    sub_10004EFD4();
    if (!v22)
    {
      os_unfair_lock_unlock((a6 + 16));

      (*(v122 + 8))(v123, v100);

      return;
    }

    goto LABEL_40;
  }

  v46 = mach_absolute_time();
  a6 = v46 - v115;
  if (v46 >= v115)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(a6, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v126 = 0;
  v127 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v47._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 0x203A524F52524520;
  v48._object = 0xE800000000000000;
  String.append(_:)(v48);
  v129 = v22;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v49._countAndFlagsBits = 23328;
  v49._object = 0xE200000000000000;
  String.append(_:)(v49);
  v129 = a6 / 0x3E8;
  v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v50);

  v51._countAndFlagsBits = 1567847712;
  v51._object = 0xE400000000000000;
  String.append(_:)(v51);
  v53 = v126;
  v52 = v127;
  sub_10004EDD0(v121, a1, type metadata accessor for LogID);

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v121 = v22;
    v57 = v56;
    v58 = swift_slowAlloc();
    v120 = v53;
    v59 = v58;
    v129 = v58;
    *v57 = 136446210;
    v126 = 11580;
    v127 = 0xE200000000000000;
    v60._countAndFlagsBits = v111;
    v60._object = v23;
    String.append(_:)(v60);
    v61 = &a1[*(v112 + 24)];
    v62 = *v61;
    v63 = v61[1];

    v64._countAndFlagsBits = v62;
    v64._object = v63;
    String.append(_:)(v64);

    v65._countAndFlagsBits = v120;
    v65._object = v52;
    String.append(_:)(v65);

    v66 = v126;
    v67 = v127;
    sub_10004EE38(a1, type metadata accessor for LogID);
    v68 = sub_100035760(v66, v67, &v129);

    *(v57 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v54, v55, "%{public}s", v57, 0xCu);
    sub_10000CE78(v59);
  }

  else
  {

    v69 = sub_10004EE38(a1, type metadata accessor for LogID);
  }

  v95 = v109;
  v96 = *(v107 + 16);
  v97 = __chkstk_darwin(v69);
  *(&v104 - 2) = v98;
  *(&v104 - 2) = v110;
  __chkstk_darwin(v97);
  *(&v104 - 2) = sub_10001EF68;
  *(&v104 - 1) = v99;

  os_unfair_lock_lock(v96 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v96 + 4);

  swift_willThrow();
  (*(v122 + 8))(v123, v95);
}

void sub_100041FA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v117 = a7;
  v126 = a5;
  LODWORD(v125) = a4;
  v123 = a2;
  v124 = a3;
  v116 = type metadata accessor for LogID(0);
  v15 = __chkstk_darwin(v116);
  v109 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v120 = (&v109 - v18);
  __chkstk_darwin(v17);
  v20 = &v109 - v19;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v127 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = mach_absolute_time();
  v24 = *a8;
  v25 = *(*a8 + 16);
  v129 = sub_10004EFA4;
  v130 = v24;
  v114 = v24;

  os_unfair_lock_lock(v25 + 4);
  sub_10004EF74(&v131);
  v118 = v11;
  if (v11)
  {
    goto LABEL_38;
  }

  os_unfair_lock_unlock(v25 + 4);
  v115 = v131;
  v128 = v132;
  v26 = v133;

  v27 = a8[1];
  if (!*(v27 + 16))
  {
    __break(1u);
    goto LABEL_29;
  }

  v28 = sub_10001D1DC(a1);
  if ((v29 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v110 = v26;
  v113 = a11;
  v121 = a10;
  v122 = a9;
  v30 = v22;
  (*(v22 + 16))(v127, *(v27 + 56) + *(v22 + 72) * v28, v21);
  v131 = StaticString.description.getter();
  v132 = v31;
  v32._countAndFlagsBits = 32;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = a6;
  v33._object = v117;
  String.append(_:)(v33);
  v34 = v132;
  v117 = v131;
  sub_10004EDD0(v126, v20, type metadata accessor for LogID);

  v35 = v21;
  v36 = v128;

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v39 = os_log_type_enabled(v37, v38);
  v112 = v35;
  v111 = v30;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v134 = v41;
    *v40 = 136446210;
    v131 = 2113069;
    v132 = 0xE300000000000000;
    v42._countAndFlagsBits = v115;
    v42._object = v36;
    String.append(_:)(v42);
    v43 = &v20[*(v116 + 24)];
    v44 = *v43;
    v45 = v43[1];

    v46._countAndFlagsBits = v44;
    v46._object = v45;
    String.append(_:)(v46);

    v47._countAndFlagsBits = v117;
    v47._object = v34;
    String.append(_:)(v47);

    v48 = v131;
    v49 = v132;
    sub_10004EE38(v20, type metadata accessor for LogID);
    v50 = sub_100035760(v48, v49, &v134);
    v51 = v121;

    *(v40 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s", v40, 0xCu);
    sub_10000CE78(v41);

    v52 = v122;
  }

  else
  {

    sub_10004EE38(v20, type metadata accessor for LogID);
    v51 = v121;
    v52 = v122;
  }

  v53 = v118;
  sub_1000B0228(v52, v51, v113);
  v21 = v53;
  v25 = v120;
  if (v53)
  {
    v54 = mach_absolute_time();
    v22 = v54 - v119;
    v20 = v128;
    if (v54 >= v119)
    {
      if (qword_100173D00 == -1)
      {
LABEL_10:
        if (qword_100179650 == HIDWORD(qword_100179650))
        {
LABEL_14:
          v131 = 0;
          v132 = 0xE000000000000000;
          _StringGuts.grow(_:)(20);
          v55._countAndFlagsBits = StaticString.description.getter();
          String.append(_:)(v55);

          v56._countAndFlagsBits = 0x203A524F52524520;
          v56._object = 0xE800000000000000;
          String.append(_:)(v56);
          v125 = v21;
          v134 = v21;
          sub_100001AB4(&qword_100177270, &qword_100120A40);
          _print_unlocked<A, B>(_:_:)();
          v57._countAndFlagsBits = 23328;
          v57._object = 0xE200000000000000;
          String.append(_:)(v57);
          v134 = v22 / 0x3E8;
          v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v58);

          v59._countAndFlagsBits = 1567847712;
          v59._object = 0xE400000000000000;
          String.append(_:)(v59);
          v61 = v131;
          v60 = v132;
          v62 = v109;
          sub_10004EDD0(v126, v109, type metadata accessor for LogID);

          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v126 = v61;
            v66 = v65;
            v67 = swift_slowAlloc();
            v134 = v67;
            *v66 = 136446210;
            v131 = 11580;
            v132 = 0xE200000000000000;
            v68._countAndFlagsBits = v115;
            v68._object = v20;
            String.append(_:)(v68);
            v69 = (v62 + *(v116 + 24));
            v70 = *v69;
            v71 = v69[1];

            v72._countAndFlagsBits = v70;
            v72._object = v71;
            String.append(_:)(v72);

            v73._countAndFlagsBits = v126;
            v73._object = v60;
            String.append(_:)(v73);

            v74 = v131;
            v75 = v132;
            sub_10004EE38(v62, type metadata accessor for LogID);
            v76 = sub_100035760(v74, v75, &v134);

            *(v66 + 4) = v76;
            _os_log_impl(&_mh_execute_header, v63, v64, "%{public}s", v66, 0xCu);
            sub_10000CE78(v67);
          }

          else
          {

            v77 = sub_10004EE38(v62, type metadata accessor for LogID);
          }

          v99 = v112;
          v100 = v111;
          v101 = *(v114 + 16);
          v102 = __chkstk_darwin(v77);
          *(&v109 - 2) = v103;
          *(&v109 - 2) = v110;
          __chkstk_darwin(v102);
          *(&v109 - 2) = sub_10001EF68;
          *(&v109 - 1) = v104;

          os_unfair_lock_lock(v101 + 4);
          sub_10004EFD4();
          os_unfair_lock_unlock(v101 + 4);

          swift_willThrow();
          (*(v100 + 8))(v127, v99);
          swift_unknownObjectRelease();

          return;
        }

        if (is_mul_ok(v22, qword_100179650))
        {
          if (HIDWORD(qword_100179650))
          {
            v22 = v22 * qword_100179650 / HIDWORD(qword_100179650);
            goto LABEL_14;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_36;
      }

LABEL_31:
      swift_once();
      goto LABEL_10;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v78 = mach_absolute_time();
  v22 = v78 - v119;
  v79 = v128;
  if (v78 < v119)
  {
    __break(1u);
  }

  else if (qword_100173D00 == -1)
  {
    goto LABEL_18;
  }

  swift_once();
LABEL_18:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (!is_mul_ok(v22, qword_100179650))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (!HIDWORD(qword_100179650))
    {
LABEL_37:
      __break(1u);
LABEL_38:
      os_unfair_lock_unlock(v25 + 4);
      __break(1u);
      os_unfair_lock_unlock((v22 + 16));
      __break(1u);
      return;
    }

    v22 = v22 * qword_100179650 / HIDWORD(qword_100179650);
  }

  v131 = StaticString.description.getter();
  v132 = v80;
  v81._countAndFlagsBits = 23328;
  v81._object = 0xE200000000000000;
  String.append(_:)(v81);
  v134 = v22 / 0x3E8;
  v82._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v82);

  v83._countAndFlagsBits = 1567847712;
  v83._object = 0xE400000000000000;
  String.append(_:)(v83);
  v84 = v132;
  v125 = v131;
  sub_10004EDD0(v126, v25, type metadata accessor for LogID);

  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v134 = v126;
    *v87 = 136446210;
    v131 = 2108732;
    v132 = 0xE300000000000000;
    v88._countAndFlagsBits = v115;
    v88._object = v79;
    String.append(_:)(v88);
    v89 = (v25 + *(v116 + 24));
    v90 = *v89;
    v91 = v89[1];

    v92._countAndFlagsBits = v90;
    v92._object = v91;
    String.append(_:)(v92);

    v93._countAndFlagsBits = v125;
    v93._object = v84;
    String.append(_:)(v93);

    v94 = v131;
    v95 = v132;
    sub_10004EE38(v25, type metadata accessor for LogID);
    v96 = sub_100035760(v94, v95, &v134);

    *(v87 + 4) = v96;
    _os_log_impl(&_mh_execute_header, v85, v86, "%{public}s", v87, 0xCu);
    sub_10000CE78(v126);

    v52 = v122;
  }

  else
  {

    v97 = sub_10004EE38(v25, type metadata accessor for LogID);
  }

  v98 = v111;
  v105 = *(v114 + 16);
  v106 = __chkstk_darwin(v97);
  *(&v109 - 2) = v107;
  *(&v109 - 2) = v110;
  __chkstk_darwin(v106);
  *(&v109 - 2) = sub_10001EF68;
  *(&v109 - 1) = v108;

  os_unfair_lock_lock(v105 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v105 + 4);

  (*(v98 + 8))(v127, v112);
  swift_unknownObjectRelease();
}

void sub_100042C74(char *a1, uint64_t a2, uint64_t a3, int a4, os_unfair_lock_s *a5, uint64_t a6, void *a7, void *a8, _BYTE *a9)
{
  v113 = a7;
  v121 = a5;
  LODWORD(v120) = a4;
  v118 = a2;
  v119 = a3;
  v112 = type metadata accessor for LogID(0);
  v13 = __chkstk_darwin(v112);
  v116 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v106 = &v104 - v16;
  __chkstk_darwin(v15);
  v18 = &v104 - v17;
  v19 = type metadata accessor for Logger();
  v122 = *(v19 - 8);
  __chkstk_darwin(v19);
  v123 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = mach_absolute_time();
  v21 = *a8;
  v22 = *(*a8 + 16);
  v124 = sub_10004EFA4;
  v125 = v21;

  os_unfair_lock_lock(v22 + 4);
  sub_10004EF74(&v126);
  v114 = v9;
  if (v9)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v22 + 4);
  v23 = v127;
  v111 = v126;
  v110 = v128;

  v24 = a8[1];
  if (!*(v24 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v25 = sub_10001D1DC(a1);
  if ((v26 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v117 = a9;
  (*(v122 + 16))(v123, *(v24 + 56) + *(v122 + 72) * v25, v19);
  v126 = StaticString.description.getter();
  v127 = v27;
  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = a6;
  v29._object = v113;
  String.append(_:)(v29);
  v30 = v127;
  v113 = v126;
  v31 = v18;
  sub_10004EDD0(v121, v18, type metadata accessor for LogID);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v109 = v19;
  v107 = v21;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v129 = v105;
    *v35 = 136446210;
    v126 = 2113069;
    v127 = 0xE300000000000000;
    v36._countAndFlagsBits = v111;
    v36._object = v23;
    String.append(_:)(v36);
    v37 = (v31 + *(v112 + 24));
    v38 = *v37;
    v39 = v37[1];

    v40._countAndFlagsBits = v38;
    v40._object = v39;
    String.append(_:)(v40);

    v41._countAndFlagsBits = v113;
    v41._object = v30;
    String.append(_:)(v41);

    v42 = v126;
    v43 = v127;
    sub_10004EE38(v31, type metadata accessor for LogID);
    v44 = sub_100035760(v42, v43, &v129);

    *(v35 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s", v35, 0xCu);
    sub_10000CE78(v105);
  }

  else
  {

    sub_10004EE38(v31, type metadata accessor for LogID);
  }

  a1 = v116;
  v45 = v114;
  sub_1000B0DF8(v117);
  v22 = v45;
  v108 = v23;
  if (!v45)
  {
    v70 = mach_absolute_time();
    a6 = v70 - v115;
    if (v70 < v115)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v71 = v106;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(a6, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v22 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((a6 + 16));
        __break(1u);
        return;
      }

      a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v126 = StaticString.description.getter();
    v127 = v72;
    v73._countAndFlagsBits = 23328;
    v73._object = 0xE200000000000000;
    String.append(_:)(v73);
    v129 = a6 / 0x3E8;
    v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v74);

    v75._countAndFlagsBits = 1567847712;
    v75._object = 0xE400000000000000;
    String.append(_:)(v75);
    v77 = v126;
    v76 = v127;
    sub_10004EDD0(v121, v71, type metadata accessor for LogID);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v121 = 0;
      v81 = v80;
      v82 = swift_slowAlloc();
      v83._object = v23;
      v84 = v77;
      v85 = v82;
      v129 = v82;
      *v81 = 136446210;
      v126 = 2108732;
      v127 = 0xE300000000000000;
      LODWORD(v120) = v79;
      v83._countAndFlagsBits = v111;
      String.append(_:)(v83);
      v86 = (v71 + *(v112 + 24));
      v87 = *v86;
      v88 = v86[1];

      v89._countAndFlagsBits = v87;
      v89._object = v88;
      String.append(_:)(v89);

      v90._countAndFlagsBits = v84;
      v90._object = v76;
      String.append(_:)(v90);

      v91 = v126;
      v92 = v127;
      sub_10004EE38(v71, type metadata accessor for LogID);
      v93 = sub_100035760(v91, v92, &v129);

      *(v81 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v78, v120, "%{public}s", v81, 0xCu);
      sub_10000CE78(v85);

      v22 = v121;
    }

    else
    {

      v94 = sub_10004EE38(v71, type metadata accessor for LogID);
    }

    v100 = v109;
    a6 = *(v107 + 16);
    v101 = __chkstk_darwin(v94);
    *(&v104 - 2) = v102;
    *(&v104 - 2) = v110;
    __chkstk_darwin(v101);
    *(&v104 - 2) = sub_10001EF68;
    *(&v104 - 1) = v103;

    os_unfair_lock_lock((a6 + 16));
    sub_10004EFD4();
    if (!v22)
    {
      os_unfair_lock_unlock((a6 + 16));

      (*(v122 + 8))(v123, v100);

      return;
    }

    goto LABEL_40;
  }

  v46 = mach_absolute_time();
  a6 = v46 - v115;
  if (v46 >= v115)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(a6, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v126 = 0;
  v127 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v47._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 0x203A524F52524520;
  v48._object = 0xE800000000000000;
  String.append(_:)(v48);
  v129 = v22;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v49._countAndFlagsBits = 23328;
  v49._object = 0xE200000000000000;
  String.append(_:)(v49);
  v129 = a6 / 0x3E8;
  v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v50);

  v51._countAndFlagsBits = 1567847712;
  v51._object = 0xE400000000000000;
  String.append(_:)(v51);
  v53 = v126;
  v52 = v127;
  sub_10004EDD0(v121, a1, type metadata accessor for LogID);

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v121 = v22;
    v57 = v56;
    v58 = swift_slowAlloc();
    v120 = v53;
    v59 = v58;
    v129 = v58;
    *v57 = 136446210;
    v126 = 11580;
    v127 = 0xE200000000000000;
    v60._countAndFlagsBits = v111;
    v60._object = v23;
    String.append(_:)(v60);
    v61 = &a1[*(v112 + 24)];
    v62 = *v61;
    v63 = v61[1];

    v64._countAndFlagsBits = v62;
    v64._object = v63;
    String.append(_:)(v64);

    v65._countAndFlagsBits = v120;
    v65._object = v52;
    String.append(_:)(v65);

    v66 = v126;
    v67 = v127;
    sub_10004EE38(a1, type metadata accessor for LogID);
    v68 = sub_100035760(v66, v67, &v129);

    *(v57 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v54, v55, "%{public}s", v57, 0xCu);
    sub_10000CE78(v59);
  }

  else
  {

    v69 = sub_10004EE38(a1, type metadata accessor for LogID);
  }

  v95 = v109;
  v96 = *(v107 + 16);
  v97 = __chkstk_darwin(v69);
  *(&v104 - 2) = v98;
  *(&v104 - 2) = v110;
  __chkstk_darwin(v97);
  *(&v104 - 2) = sub_10001EF68;
  *(&v104 - 1) = v99;

  os_unfair_lock_lock(v96 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v96 + 4);

  swift_willThrow();
  (*(v122 + 8))(v123, v95);
}

void sub_1000438F4(_BYTE *a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v122 = a7;
  v128 = a5;
  v127 = a4;
  v125 = a2;
  v126 = a3;
  v118 = type metadata accessor for LogID(0);
  v15 = __chkstk_darwin(v118);
  v121 = &v108[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v111 = &v108[-v18];
  __chkstk_darwin(v17);
  v20 = &v108[-v19];
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v129 = &v108[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v120 = mach_absolute_time();
  v24 = *a8;
  v25 = *(*a8 + 16);
  v130 = sub_10004EFA4;
  v131 = v24;
  v116 = v24;

  os_unfair_lock_lock(v25 + 4);
  sub_10004EF74(&v132);
  v119 = v11;
  if (v11)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v25 + 4);
  v26 = v133;
  v117 = v132;
  v115 = v134;

  v27 = a8[1];
  if (!*(v27 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v28 = sub_10001D1DC(a1);
  if ((v29 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  a8 = a10;
  v123 = a11;
  v124 = a9;
  (*(v22 + 16))(v129, *(v27 + 56) + *(v22 + 72) * v28, v21);
  v132 = StaticString.description.getter();
  v133 = v30;
  v31._countAndFlagsBits = 32;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = a6;
  v32._object = v122;
  String.append(_:)(v32);
  v33 = v133;
  v112 = v132;
  v25 = v20;
  sub_10004EDD0(v128, v20, type metadata accessor for LogID);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = os_log_type_enabled(v34, v35);
  v122 = v26;
  v113 = v22;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v135 = v110;
    *v37 = 136446210;
    v132 = 2113069;
    v133 = 0xE300000000000000;
    v109 = v35;
    v38._countAndFlagsBits = v117;
    v38._object = v26;
    String.append(_:)(v38);
    v39 = (v25 + *(v118 + 24));
    v40 = *v39;
    v41 = v39[1];

    v42._countAndFlagsBits = v40;
    v42._object = v41;
    String.append(_:)(v42);

    v43._countAndFlagsBits = v112;
    v43._object = v33;
    String.append(_:)(v43);
    a8 = a10;

    v44 = v132;
    v45 = v133;
    sub_10004EE38(v25, type metadata accessor for LogID);
    v46 = sub_100035760(v44, v45, &v135);

    *(v37 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v34, v109, "%{public}s", v37, 0xCu);
    sub_10000CE78(v110);
  }

  else
  {

    sub_10004EE38(v25, type metadata accessor for LogID);
  }

  a1 = v121;
  v47 = v119;
  sub_1000B1CE4(v124, a8, v123);
  v26 = v47;
  v114 = v21;
  if (!v47)
  {
    v74 = mach_absolute_time();
    v20 = v74 - v120;
    if (v74 < v120)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v75 = v111;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(v20, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v25 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((v20 + 16));
        __break(1u);
        return;
      }

      v20 = v20 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v121 = 0;
    v132 = StaticString.description.getter();
    v133 = v76;
    v77._countAndFlagsBits = 23328;
    v77._object = 0xE200000000000000;
    String.append(_:)(v77);
    v135 = v20 / 0x3E8;
    v78._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v78);

    v79._countAndFlagsBits = 1567847712;
    v79._object = 0xE400000000000000;
    String.append(_:)(v79);
    v81 = v132;
    v80 = v133;
    sub_10004EDD0(v128, v75, type metadata accessor for LogID);
    v82 = v122;

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v135 = v128;
      *v85 = 136446210;
      v132 = 2108732;
      v133 = 0xE300000000000000;
      v127 = v84;
      v86._countAndFlagsBits = v117;
      v86._object = v82;
      String.append(_:)(v86);
      v87 = (v75 + *(v118 + 24));
      v88 = a8;
      v89 = *v87;
      v90 = v87[1];

      v91._countAndFlagsBits = v89;
      v91._object = v90;
      String.append(_:)(v91);

      v92._countAndFlagsBits = v81;
      v92._object = v80;
      String.append(_:)(v92);
      a8 = v88;

      v93 = v132;
      v94 = v133;
      sub_10004EE38(v75, type metadata accessor for LogID);
      v95 = sub_100035760(v93, v94, &v135);

      *(v85 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v83, v127, "%{public}s", v85, 0xCu);
      sub_10000CE78(v128);
    }

    else
    {

      v96 = sub_10004EE38(v75, type metadata accessor for LogID);
    }

    v103 = v113;
    v20 = *(v116 + 16);
    v104 = __chkstk_darwin(v96);
    *&v108[-16] = v105;
    *&v108[-8] = v115;
    __chkstk_darwin(v104);
    *&v108[-16] = sub_10001EF68;
    *&v108[-8] = v106;

    os_unfair_lock_lock((v20 + 16));
    v107 = v121;
    sub_10004EFD4();
    if (!v107)
    {
      os_unfair_lock_unlock((v20 + 16));

      (*(v103 + 8))(v129, v114);

      return;
    }

    goto LABEL_40;
  }

  v48 = mach_absolute_time();
  v20 = v48 - v120;
  if (v48 >= v120)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(v20, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        v20 = v20 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v120 = a8;
  v132 = 0;
  v133 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v49._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v49);

  v50._countAndFlagsBits = 0x203A524F52524520;
  v50._object = 0xE800000000000000;
  String.append(_:)(v50);
  v135 = v26;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v51._countAndFlagsBits = 23328;
  v51._object = 0xE200000000000000;
  String.append(_:)(v51);
  v135 = v20 / 0x3E8;
  v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 1567847712;
  v53._object = 0xE400000000000000;
  String.append(_:)(v53);
  v55 = v132;
  v54 = v133;
  sub_10004EDD0(v128, a1, type metadata accessor for LogID);
  v56 = v122;

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v128 = v55;
    v60 = a1;
    v61 = v59;
    v62 = swift_slowAlloc();
    v121 = v26;
    v63 = v62;
    v135 = v62;
    *v61 = 136446210;
    v132 = 11580;
    v133 = 0xE200000000000000;
    v64._countAndFlagsBits = v117;
    v64._object = v56;
    String.append(_:)(v64);
    v65 = (v60 + *(v118 + 24));
    v66 = *v65;
    v67 = v65[1];

    v68._countAndFlagsBits = v66;
    v68._object = v67;
    String.append(_:)(v68);

    v69._countAndFlagsBits = v128;
    v69._object = v54;
    String.append(_:)(v69);

    v70 = v132;
    v71 = v133;
    sub_10004EE38(v60, type metadata accessor for LogID);
    v72 = sub_100035760(v70, v71, &v135);

    *(v61 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v57, v58, "%{public}s", v61, 0xCu);
    sub_10000CE78(v63);
  }

  else
  {

    v73 = sub_10004EE38(a1, type metadata accessor for LogID);
  }

  v97 = v114;
  v98 = v120;
  v99 = *(v116 + 16);
  v100 = __chkstk_darwin(v73);
  *&v108[-16] = v101;
  *&v108[-8] = v115;
  __chkstk_darwin(v100);
  *&v108[-16] = sub_10001EF68;
  *&v108[-8] = v102;

  os_unfair_lock_lock(v99 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v99 + 4);

  swift_willThrow();
  (*(v113 + 8))(v129, v97);
}

void sub_1000445D0(char *a1, uint64_t a2, uint64_t a3, int a4, os_unfair_lock_s *a5, uint64_t a6, void *a7, void *a8, uint64_t a9)
{
  v113 = a7;
  v121 = a5;
  LODWORD(v120) = a4;
  v118 = a2;
  v119 = a3;
  v112 = type metadata accessor for LogID(0);
  v13 = __chkstk_darwin(v112);
  v116 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v106 = &v104 - v16;
  __chkstk_darwin(v15);
  v18 = &v104 - v17;
  v19 = type metadata accessor for Logger();
  v122 = *(v19 - 8);
  __chkstk_darwin(v19);
  v123 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = mach_absolute_time();
  v21 = *a8;
  v22 = *(*a8 + 16);
  v124 = sub_10004EFA4;
  v125 = v21;

  os_unfair_lock_lock(v22 + 4);
  sub_10004EF74(&v126);
  v114 = v9;
  if (v9)
  {
    goto LABEL_40;
  }

  os_unfair_lock_unlock(v22 + 4);
  v23 = v127;
  v111 = v126;
  v110 = v128;

  v24 = a8[1];
  if (!*(v24 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v25 = sub_10001D1DC(a1);
  if ((v26 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v117 = a9;
  (*(v122 + 16))(v123, *(v24 + 56) + *(v122 + 72) * v25, v19);
  v126 = StaticString.description.getter();
  v127 = v27;
  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = a6;
  v29._object = v113;
  String.append(_:)(v29);
  v30 = v127;
  v113 = v126;
  v31 = v18;
  sub_10004EDD0(v121, v18, type metadata accessor for LogID);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v109 = v19;
  v107 = v21;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v129 = v105;
    *v35 = 136446210;
    v126 = 2113069;
    v127 = 0xE300000000000000;
    v36._countAndFlagsBits = v111;
    v36._object = v23;
    String.append(_:)(v36);
    v37 = (v31 + *(v112 + 24));
    v38 = *v37;
    v39 = v37[1];

    v40._countAndFlagsBits = v38;
    v40._object = v39;
    String.append(_:)(v40);

    v41._countAndFlagsBits = v113;
    v41._object = v30;
    String.append(_:)(v41);

    v42 = v126;
    v43 = v127;
    sub_10004EE38(v31, type metadata accessor for LogID);
    v44 = sub_100035760(v42, v43, &v129);

    *(v35 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s", v35, 0xCu);
    sub_10000CE78(v105);
  }

  else
  {

    sub_10004EE38(v31, type metadata accessor for LogID);
  }

  a1 = v116;
  v45 = v114;
  sub_1000B6AEC(v117);
  v22 = v45;
  v108 = v23;
  if (v45)
  {
    v46 = mach_absolute_time();
    a6 = v46 - v115;
    if (v46 >= v115)
    {
      if (qword_100173D00 == -1)
      {
LABEL_10:
        if (qword_100179650 == HIDWORD(qword_100179650))
        {
LABEL_14:
          v126 = 0;
          v127 = 0xE000000000000000;
          _StringGuts.grow(_:)(20);
          v47._countAndFlagsBits = StaticString.description.getter();
          String.append(_:)(v47);

          v48._countAndFlagsBits = 0x203A524F52524520;
          v48._object = 0xE800000000000000;
          String.append(_:)(v48);
          v129 = v22;
          sub_100001AB4(&qword_100177270, &qword_100120A40);
          _print_unlocked<A, B>(_:_:)();
          v49._countAndFlagsBits = 23328;
          v49._object = 0xE200000000000000;
          String.append(_:)(v49);
          v129 = a6 / 0x3E8;
          v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v50);

          v51._countAndFlagsBits = 1567847712;
          v51._object = 0xE400000000000000;
          String.append(_:)(v51);
          v53 = v126;
          v52 = v127;
          sub_10004EDD0(v121, a1, type metadata accessor for LogID);

          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v121 = v22;
            v57 = v56;
            v58 = swift_slowAlloc();
            v120 = v53;
            v59 = v58;
            v129 = v58;
            *v57 = 136446210;
            v126 = 11580;
            v127 = 0xE200000000000000;
            v60._countAndFlagsBits = v111;
            v60._object = v23;
            String.append(_:)(v60);
            v61 = &a1[*(v112 + 24)];
            v62 = *v61;
            v63 = v61[1];

            v64._countAndFlagsBits = v62;
            v64._object = v63;
            String.append(_:)(v64);

            v65._countAndFlagsBits = v120;
            v65._object = v52;
            String.append(_:)(v65);

            v66 = v126;
            v67 = v127;
            sub_10004EE38(a1, type metadata accessor for LogID);
            v68 = sub_100035760(v66, v67, &v129);

            *(v57 + 4) = v68;
            _os_log_impl(&_mh_execute_header, v54, v55, "%{public}s", v57, 0xCu);
            sub_10000CE78(v59);
          }

          else
          {

            v69 = sub_10004EE38(a1, type metadata accessor for LogID);
          }

          v95 = v109;
          v96 = *(v107 + 16);
          v97 = __chkstk_darwin(v69);
          *(&v104 - 2) = v98;
          *(&v104 - 2) = v110;
          __chkstk_darwin(v97);
          *(&v104 - 2) = sub_10001EF68;
          *(&v104 - 1) = v99;

          os_unfair_lock_lock(v96 + 4);
          sub_10004EFD4();
          os_unfair_lock_unlock(v96 + 4);

          swift_willThrow();
          (*(v122 + 8))(v123, v95);
          goto LABEL_29;
        }

        if (is_mul_ok(a6, qword_100179650))
        {
          if (HIDWORD(qword_100179650))
          {
            a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
            goto LABEL_14;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_38;
      }

LABEL_33:
      swift_once();
      goto LABEL_10;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v70 = mach_absolute_time();
  a6 = v70 - v115;
  if (v70 < v115)
  {
    __break(1u);
  }

  else if (qword_100173D00 == -1)
  {
    goto LABEL_18;
  }

  swift_once();
LABEL_18:
  v71 = v106;
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (!is_mul_ok(a6, qword_100179650))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (!HIDWORD(qword_100179650))
    {
LABEL_39:
      __break(1u);
LABEL_40:
      os_unfair_lock_unlock(v22 + 4);
      __break(1u);
      goto LABEL_41;
    }

    a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
  }

  v126 = StaticString.description.getter();
  v127 = v72;
  v73._countAndFlagsBits = 23328;
  v73._object = 0xE200000000000000;
  String.append(_:)(v73);
  v129 = a6 / 0x3E8;
  v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v74);

  v75._countAndFlagsBits = 1567847712;
  v75._object = 0xE400000000000000;
  String.append(_:)(v75);
  v77 = v126;
  v76 = v127;
  sub_10004EDD0(v121, v71, type metadata accessor for LogID);

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v121 = 0;
    v81 = v80;
    v82 = swift_slowAlloc();
    v83._object = v23;
    v84 = v77;
    v85 = v82;
    v129 = v82;
    *v81 = 136446210;
    v126 = 2108732;
    v127 = 0xE300000000000000;
    LODWORD(v120) = v79;
    v83._countAndFlagsBits = v111;
    String.append(_:)(v83);
    v86 = (v71 + *(v112 + 24));
    v87 = *v86;
    v88 = v86[1];

    v89._countAndFlagsBits = v87;
    v89._object = v88;
    String.append(_:)(v89);

    v90._countAndFlagsBits = v84;
    v90._object = v76;
    String.append(_:)(v90);

    v91 = v126;
    v92 = v127;
    sub_10004EE38(v71, type metadata accessor for LogID);
    v93 = sub_100035760(v91, v92, &v129);

    *(v81 + 4) = v93;
    _os_log_impl(&_mh_execute_header, v78, v120, "%{public}s", v81, 0xCu);
    sub_10000CE78(v85);

    v22 = v121;
  }

  else
  {

    v94 = sub_10004EE38(v71, type metadata accessor for LogID);
  }

  v100 = v109;
  a6 = *(v107 + 16);
  v101 = __chkstk_darwin(v94);
  *(&v104 - 2) = v102;
  *(&v104 - 2) = v110;
  __chkstk_darwin(v101);
  *(&v104 - 2) = sub_10001EF68;
  *(&v104 - 1) = v103;

  os_unfair_lock_lock((a6 + 16));
  sub_10004EFD4();
  if (!v22)
  {
    os_unfair_lock_unlock((a6 + 16));

    (*(v122 + 8))(v123, v100);

LABEL_29:

    return;
  }

LABEL_41:
  os_unfair_lock_unlock((a6 + 16));
  __break(1u);
}

void sub_10004524C(char *a1, uint64_t a2, uint64_t a3, int a4, os_unfair_lock_s *a5, uint64_t a6, void *a7, void *a8, char *a9)
{
  v113 = a7;
  v121 = a5;
  LODWORD(v120) = a4;
  v118 = a2;
  v119 = a3;
  v112 = type metadata accessor for LogID(0);
  v13 = __chkstk_darwin(v112);
  v116 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v106 = &v104 - v16;
  __chkstk_darwin(v15);
  v18 = &v104 - v17;
  v19 = type metadata accessor for Logger();
  v122 = *(v19 - 8);
  __chkstk_darwin(v19);
  v123 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = mach_absolute_time();
  v21 = *a8;
  v22 = *(*a8 + 16);
  v124 = sub_10004EFA4;
  v125 = v21;

  os_unfair_lock_lock(v22 + 4);
  sub_10004EF74(&v126);
  v114 = v9;
  if (v9)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v22 + 4);
  v23 = v127;
  v111 = v126;
  v110 = v128;

  v24 = a8[1];
  if (!*(v24 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v25 = sub_10001D1DC(a1);
  if ((v26 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v117 = a9;
  (*(v122 + 16))(v123, *(v24 + 56) + *(v122 + 72) * v25, v19);
  v126 = StaticString.description.getter();
  v127 = v27;
  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = a6;
  v29._object = v113;
  String.append(_:)(v29);
  v30 = v127;
  v113 = v126;
  v31 = v18;
  sub_10004EDD0(v121, v18, type metadata accessor for LogID);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v109 = v19;
  v107 = v21;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v129 = v105;
    *v35 = 136446210;
    v126 = 2113069;
    v127 = 0xE300000000000000;
    v36._countAndFlagsBits = v111;
    v36._object = v23;
    String.append(_:)(v36);
    v37 = (v31 + *(v112 + 24));
    v38 = *v37;
    v39 = v37[1];

    v40._countAndFlagsBits = v38;
    v40._object = v39;
    String.append(_:)(v40);

    v41._countAndFlagsBits = v113;
    v41._object = v30;
    String.append(_:)(v41);

    v42 = v126;
    v43 = v127;
    sub_10004EE38(v31, type metadata accessor for LogID);
    v44 = sub_100035760(v42, v43, &v129);

    *(v35 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s", v35, 0xCu);
    sub_10000CE78(v105);
  }

  else
  {

    sub_10004EE38(v31, type metadata accessor for LogID);
  }

  a1 = v116;
  v45 = v114;
  sub_1000B97B8(v117);
  v22 = v45;
  v108 = v23;
  if (!v45)
  {
    v70 = mach_absolute_time();
    a6 = v70 - v115;
    if (v70 < v115)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v71 = v106;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(a6, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v22 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((a6 + 16));
        __break(1u);
        return;
      }

      a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v126 = StaticString.description.getter();
    v127 = v72;
    v73._countAndFlagsBits = 23328;
    v73._object = 0xE200000000000000;
    String.append(_:)(v73);
    v129 = a6 / 0x3E8;
    v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v74);

    v75._countAndFlagsBits = 1567847712;
    v75._object = 0xE400000000000000;
    String.append(_:)(v75);
    v77 = v126;
    v76 = v127;
    sub_10004EDD0(v121, v71, type metadata accessor for LogID);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v121 = 0;
      v81 = v80;
      v82 = swift_slowAlloc();
      v83._object = v23;
      v84 = v77;
      v85 = v82;
      v129 = v82;
      *v81 = 136446210;
      v126 = 2108732;
      v127 = 0xE300000000000000;
      LODWORD(v120) = v79;
      v83._countAndFlagsBits = v111;
      String.append(_:)(v83);
      v86 = (v71 + *(v112 + 24));
      v87 = *v86;
      v88 = v86[1];

      v89._countAndFlagsBits = v87;
      v89._object = v88;
      String.append(_:)(v89);

      v90._countAndFlagsBits = v84;
      v90._object = v76;
      String.append(_:)(v90);

      v91 = v126;
      v92 = v127;
      sub_10004EE38(v71, type metadata accessor for LogID);
      v93 = sub_100035760(v91, v92, &v129);

      *(v81 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v78, v120, "%{public}s", v81, 0xCu);
      sub_10000CE78(v85);

      v22 = v121;
    }

    else
    {

      v94 = sub_10004EE38(v71, type metadata accessor for LogID);
    }

    v100 = v109;
    a6 = *(v107 + 16);
    v101 = __chkstk_darwin(v94);
    *(&v104 - 2) = v102;
    *(&v104 - 2) = v110;
    __chkstk_darwin(v101);
    *(&v104 - 2) = sub_10001EF68;
    *(&v104 - 1) = v103;

    os_unfair_lock_lock((a6 + 16));
    sub_10004EFD4();
    if (!v22)
    {
      os_unfair_lock_unlock((a6 + 16));

      (*(v122 + 8))(v123, v100);

      return;
    }

    goto LABEL_40;
  }

  v46 = mach_absolute_time();
  a6 = v46 - v115;
  if (v46 >= v115)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(a6, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        a6 = a6 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v126 = 0;
  v127 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v47._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 0x203A524F52524520;
  v48._object = 0xE800000000000000;
  String.append(_:)(v48);
  v129 = v22;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v49._countAndFlagsBits = 23328;
  v49._object = 0xE200000000000000;
  String.append(_:)(v49);
  v129 = a6 / 0x3E8;
  v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v50);

  v51._countAndFlagsBits = 1567847712;
  v51._object = 0xE400000000000000;
  String.append(_:)(v51);
  v53 = v126;
  v52 = v127;
  sub_10004EDD0(v121, a1, type metadata accessor for LogID);

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v121 = v22;
    v57 = v56;
    v58 = swift_slowAlloc();
    v120 = v53;
    v59 = v58;
    v129 = v58;
    *v57 = 136446210;
    v126 = 11580;
    v127 = 0xE200000000000000;
    v60._countAndFlagsBits = v111;
    v60._object = v23;
    String.append(_:)(v60);
    v61 = &a1[*(v112 + 24)];
    v62 = *v61;
    v63 = v61[1];

    v64._countAndFlagsBits = v62;
    v64._object = v63;
    String.append(_:)(v64);

    v65._countAndFlagsBits = v120;
    v65._object = v52;
    String.append(_:)(v65);

    v66 = v126;
    v67 = v127;
    sub_10004EE38(a1, type metadata accessor for LogID);
    v68 = sub_100035760(v66, v67, &v129);

    *(v57 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v54, v55, "%{public}s", v57, 0xCu);
    sub_10000CE78(v59);
  }

  else
  {

    v69 = sub_10004EE38(a1, type metadata accessor for LogID);
  }

  v95 = v109;
  v96 = *(v107 + 16);
  v97 = __chkstk_darwin(v69);
  *(&v104 - 2) = v98;
  *(&v104 - 2) = v110;
  __chkstk_darwin(v97);
  *(&v104 - 2) = sub_10001EF68;
  *(&v104 - 1) = v99;

  os_unfair_lock_lock(v96 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v96 + 4);

  swift_willThrow();
  (*(v122 + 8))(v123, v95);
}

uint64_t sub_100045ECC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = pthread_self();
  v5 = pthread_mach_thread_np(v4);
  result = swift_beginAccess();
  v7 = *(a1 + 24);
  if (*(v7 + 16) && (result = sub_10001D194(v5), (v8 & 1) != 0))
  {
    v9 = *(v7 + 56) + 24 * result;
    v10 = *(v9 + 16);
    *a2 = *(v9 + 8);
    a2[1] = v10;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }

  return result;
}

unint64_t sub_100045F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = pthread_self();
  v5 = pthread_mach_thread_np(v4);
  swift_beginAccess();
  v6 = *(a1 + 24);
  if (*(v6 + 16) && (v7 = sub_10001D194(v5), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 24 * v7);
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    v10 = 0;
    v11 = 0;
    result = 0;
  }

  if (result)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v15 = result;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    if (result)
    {
      v16 = v11;
    }

    else
    {
      v16 = 0;
    }

    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    swift_beginAccess();
    sub_10004BC5C(v14, v16, v15, v5);
    swift_endAccess();

    *a2 = v16;
    *(a2 + 8) = v15;
    *(a2 + 16) = v5;
  }

  return result;
}

uint64_t sub_1000460A4(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 24);
  if (*(v5 + 16))
  {
    result = sub_10001D194(a2);
    if (v6)
    {
      v7 = (*(v5 + 56) + 24 * result);
      if (*v7 < 2)
      {
        swift_beginAccess();
        sub_10004B980(a2);
      }

      else
      {
        v9 = v7[1];
        v8 = v7[2];
        v10 = *v7 - 1;

        sub_10004EC9C(1, v9, v8, v11);

        v12 = static String._fromSubstring(_:)();
        v14 = v13;

        swift_beginAccess();
        sub_10004BC5C(v10, v12, v14, a2);
      }

      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1000461FC(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = type metadata accessor for OSSignpostError();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for AUALog(0);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v21 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v7 + 88))(v9, v6) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v21, v19, v16, v17, v18, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000464A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AUALog.Padding();
  v2 = swift_allocObject();
  sub_100001AB4(&qword_100173D10, &qword_10011DF90);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v2 + 16) = v3;
  *(v2 + 24) = sub_10000A718(_swiftEmptyArrayStorage);
  *a1 = v2;
  sub_100001AB4(&qword_100176170, &qword_100121920);
  v4 = *(sub_100001AB4(&qword_100174A70, &qword_1001201B8) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001215B0;
  v8 = (v7 + v6);
  *v8 = 0;
  Logger.init(subsystem:category:)();
  v8[v5] = 1;
  Logger.init(subsystem:category:)();
  v8[2 * v5] = 2;
  Logger.init(subsystem:category:)();
  v8[3 * v5] = 3;
  Logger.init(subsystem:category:)();
  v8[4 * v5] = 4;
  Logger.init(subsystem:category:)();
  v8[5 * v5] = 5;
  Logger.init(subsystem:category:)();
  v9 = sub_10000A844(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  a1[1] = v9;
  type metadata accessor for AUALog(0);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_100046770()
{
  v0 = type metadata accessor for AUALog(0);
  sub_10004EF10(v0, qword_100179508);
  v1 = sub_10000A1BC(v0, qword_100179508);
  return sub_1000464A8(v1);
}

char *sub_1000467E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100047BE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100046804(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100047CEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100046824(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100047E0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_100046844()
{
  result = qword_100175CB0;
  if (!qword_100175CB0)
  {
    sub_10001E8F0(&qword_100175CA8, &unk_100124860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175CB0);
  }

  return result;
}

uint64_t sub_1000468E0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OSSignposter();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000469A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OSSignposter();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100046A64(uint64_t a1)
{
  type metadata accessor for AUALog.Padding();
  sub_100046AF4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for OSSignposter();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100046AF4(uint64_t a1)
{
  if (!qword_100175E10)
  {
    type metadata accessor for Logger();
    sub_100046B60();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_100175E10);
    }
  }
}

unint64_t sub_100046B60()
{
  result = qword_100175E18;
  if (!qword_100175E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175E18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StreamingInterfaceDataFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StreamingInterfaceDataFormat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100046D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OSSignpostID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100046DD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OSSignpostID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100046E9C(uint64_t a1)
{
  result = type metadata accessor for OSSignpostID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100046F1C()
{
  result = qword_100175EE8;
  if (!qword_100175EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175EE8);
  }

  return result;
}

char *sub_100046F70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100047F00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100046F90(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004801C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100046FB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100048164(a1, a2, a3, *v3, &qword_100175F10, &qword_1001216C0);
  *v3 = result;
  return result;
}

char *sub_100046FE0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100048164(a1, a2, a3, *v3, &qword_100175F18, &qword_1001216C8);
  *v3 = result;
  return result;
}

char *sub_100047010(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100048278(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047030(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000489E4(a1, a2, a3, *v3, &qword_100175398, &qword_100121F30);
  *v3 = result;
  return result;
}

void *sub_100047060(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100048390(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047080(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000484C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000470A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000485C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000470C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000486C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000470E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000487C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047100(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000488D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047120(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100048AE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047140(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100048C00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047160(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100048D08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047180(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004902C(a1, a2, a3, *v3, &qword_100176040, &qword_1001217F0);
  *v3 = result;
  return result;
}

char *sub_1000471B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100049254(a1, a2, a3, *v3, &qword_100176048, &qword_1001217F8);
  *v3 = result;
  return result;
}

char *sub_1000471E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_100176050, &qword_100121800);
  *v3 = result;
  return result;
}

char *sub_100047210(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004902C(a1, a2, a3, *v3, &qword_100176058, &qword_100121808);
  *v3 = result;
  return result;
}

char *sub_100047240(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_100176060, &qword_100121810);
  *v3 = result;
  return result;
}

char *sub_100047270(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_100176068, &qword_100121818);
  *v3 = result;
  return result;
}

char *sub_1000472A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100048E24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000472C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AC68(a1, a2, a3, *v3, &qword_100176078, &qword_100121828);
  *v3 = result;
  return result;
}

char *sub_1000472F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100048F28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047310(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004902C(a1, a2, a3, *v3, &qword_100176088, &qword_100121838);
  *v3 = result;
  return result;
}

char *sub_100047340(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_100176090, &qword_100121840);
  *v3 = result;
  return result;
}

void *sub_100047370(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100049364(a1, a2, a3, *v3, &qword_100175FC8, &qword_100121778, &qword_100174F68, &unk_100120B90);
  *v3 = result;
  return result;
}

void *sub_1000473B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100049120(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000473D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100049254(a1, a2, a3, *v3, &qword_100175EF0, &qword_1001216A0);
  *v3 = result;
  return result;
}

void *sub_100047400(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100049364(a1, a2, a3, *v3, &qword_100176158, &qword_100121908, &qword_100176160, &qword_100121910);
  *v3 = result;
  return result;
}

char *sub_100047440(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000494AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047460(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000495C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047480(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000496E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000474A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000497E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000474C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100049910(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000474E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100049A30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047500(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100049B34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047520(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100049C3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047540(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100049D60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047560(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100049E78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047580(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100049F7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000475A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004A0A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000475C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004A1BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000475E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100049254(a1, a2, a3, *v3, &qword_1001760A8, &qword_100121858);
  *v3 = result;
  return result;
}

char *sub_100047610(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_1001760B0, &qword_100121860);
  *v3 = result;
  return result;
}

char *sub_100047640(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100049254(a1, a2, a3, *v3, &qword_1001760B8, &qword_100121868);
  *v3 = result;
  return result;
}

char *sub_100047670(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_1001760C0, &qword_100121870);
  *v3 = result;
  return result;
}

char *sub_1000476A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_1001760C8, &qword_100121878);
  *v3 = result;
  return result;
}

char *sub_1000476D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AC68(a1, a2, a3, *v3, &qword_1001760D0, &qword_100121880);
  *v3 = result;
  return result;
}

char *sub_100047700(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AC68(a1, a2, a3, *v3, &qword_1001760D8, &qword_100121888);
  *v3 = result;
  return result;
}

char *sub_100047730(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004A2D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047750(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AC68(a1, a2, a3, *v3, &qword_1001760E8, &qword_100121898);
  *v3 = result;
  return result;
}

char *sub_100047780(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004A3DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000477A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100049254(a1, a2, a3, *v3, &qword_1001760F8, &qword_1001218A8);
  *v3 = result;
  return result;
}

char *sub_1000477D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_100176100, &qword_1001218B0);
  *v3 = result;
  return result;
}

char *sub_100047800(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004A4F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047820(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004A618(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047840(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004A724(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047860(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004A840(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047880(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004A94C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000478A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_100175FE8, &qword_100121798);
  *v3 = result;
  return result;
}

char *sub_1000478D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_100175FF0, &qword_1001217A0);
  *v3 = result;
  return result;
}

char *sub_100047900(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AB50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047920(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_100176010, &qword_1001217C0);
  *v3 = result;
  return result;
}

char *sub_100047950(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AC68(a1, a2, a3, *v3, &qword_100176018, &qword_1001217C8);
  *v3 = result;
  return result;
}

char *sub_100047980(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AA50(a1, a2, a3, *v3, &qword_100176020, &qword_1001217D0);
  *v3 = result;
  return result;
}

char *sub_1000479B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AC68(a1, a2, a3, *v3, &qword_100176028, &qword_1001217D8);
  *v3 = result;
  return result;
}

char *sub_1000479E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000489E4(a1, a2, a3, *v3, &qword_100175FB0, &qword_100121760);
  *v3 = result;
  return result;
}

char *sub_100047A10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000489E4(a1, a2, a3, *v3, &qword_100176130, &qword_1001218E0);
  *v3 = result;
  return result;
}

char *sub_100047A40(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004B768(a1, a2, a3, *v3, &qword_100175FA0, &qword_100121750);
  *v3 = result;
  return result;
}

char *sub_100047A70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AD84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047A90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AEA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047AB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004AFC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047AD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004B0E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047AF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004B204(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047B10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004B324(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047B30(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004B428(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047B50(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004B540(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047B70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004B644(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047B90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004B768(a1, a2, a3, *v3, &qword_100175F88, &qword_100121738);
  *v3 = result;
  return result;
}

char *sub_100047BC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004B864(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100047BE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754F8, &qword_100120F88);
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

char *sub_100047CEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001754F0, &qword_100120F80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100047E0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175C88, qword_100121348);
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

char *sub_100047F00(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001753F8, &qword_100120EC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}