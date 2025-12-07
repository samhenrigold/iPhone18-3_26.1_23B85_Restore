void sub_1000193FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (swift_unknownObjectWeakLoadStrong())
  {
    a3();
    swift_unknownObjectRelease();
  }
}

id sub_100019500(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for D2DSetupDoneFailureViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100019558(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005DCC(&qword_1001B9CF8, &unk_10016E940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000195C8(uint64_t a1)
{
  v2 = sub_100005DCC(&qword_1001B9CF8, &unk_10016E940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100019630()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019698(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1000196E8(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  v25 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_62;
    }

    v4 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v7 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v40 = _swiftEmptyArrayStorage;
    v26 = a2 >> 62;
    sub_100020C04(0, v4 & ~(v4 >> 63), 0);
    v9 = v26;
    v8 = a1;
    if (v26)
    {
      if (v26 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    if (v4 < 0)
    {
      goto LABEL_61;
    }

    v11 = 0;
    v7 = v40;
    do
    {
      if (v9 == 2)
      {
        if (v10 < *(v8 + 16))
        {
          goto LABEL_53;
        }

        v12 = *(v8 + 24);
      }

      else if (v9 == 1)
      {
        v12 = a1 >> 32;
        if (v10 < a1)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v12 = BYTE6(a2);
        if (v10 < 0)
        {
          goto LABEL_54;
        }
      }

      if (v10 >= v12)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      if (v9 == 2)
      {
        if (v10 < *(v8 + 16))
        {
          goto LABEL_55;
        }

        if (v10 >= *(v8 + 24))
        {
          goto LABEL_58;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_64;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v10 - v18;
        if (__OFSUB__(v10, v18))
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v10 >= BYTE6(a2))
          {
            goto LABEL_56;
          }

          v28 = v8;
          v29 = BYTE2(v8);
          v30 = BYTE3(v8);
          v31 = v25;
          v32 = BYTE5(v8);
          v33 = BYTE6(v8);
          v34 = HIBYTE(v8);
          v35 = a2;
          v36 = BYTE2(a2);
          v37 = BYTE3(a2);
          v38 = BYTE4(a2);
          v39 = BYTE5(a2);
          v19 = *(&v28 + v10);
          goto LABEL_42;
        }

        if (v10 < a1 || v10 >= a1 >> 32)
        {
          goto LABEL_57;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_63;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v10 - v15;
        if (__OFSUB__(v10, v15))
        {
          goto LABEL_59;
        }
      }

      v19 = *(v14 + v16);
      v9 = v26;
      v8 = a1;
LABEL_42:
      if (v11 == &_mh_execute_header)
      {
        goto LABEL_51;
      }

      v20 = v19 << (v11 & 0x18);
      if (v11 <= 0x1F)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v40 = v7;
      v23 = v7[2];
      v22 = v7[3];
      if (v23 >= v22 >> 1)
      {
        sub_100020C04((v22 > 1), v23 + 1, 1);
        v9 = v26;
        v8 = a1;
        v7 = v40;
      }

      v7[2] = v23 + 1;
      *(v7 + v23 + 8) = v21;
      ++v10;
      v11 = (v11 + 8);
      --v4;
    }

    while (v4);
  }

  return v7;
}

uint64_t sub_100019A38@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_100022904(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_1000228A0(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = sub_1000083FC(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t SDRunState.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7472617453746F6ELL;
  v2 = 0x6574656C706D6F63;
  v3 = 0x64656C696166;
  if (a1 != 3)
  {
    v3 = 1885956979;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6572676F72506E69;
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

Swift::Int sub_100019C28()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100019D08(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100019DD4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100019EB0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s18SharingViewService10SDRunStateO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100019EE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x7472617453746F6ELL;
  v4 = 0xE900000000000064;
  v5 = 0x6574656C706D6F63;
  v6 = 0xE600000000000000;
  v7 = 0x64656C696166;
  if (v2 != 3)
  {
    v7 = 1885956979;
    v6 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEA00000000007373;
  if (*v1)
  {
    v3 = 0x6572676F72506E69;
  }

  else
  {
    v8 = 0xEA00000000006465;
  }

  if (*v1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10;
}

uint64_t Optional<A>.description.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v10);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v15 = 0x6C616E6F6974704FLL;
    v16 = 0xE90000000000003CLL;
    v11._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 0x656E6F6E2E3ELL;
    v12._object = 0xE600000000000000;
    String.append(_:)(v12);
    return v15;
  }

  else
  {
    (*(v3 + 32))(v6, v8, v2);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v3 + 8))(v6, v2);
    return v14;
  }
}

uint64_t sub_10001A1B0()
{

  return swift_deallocClassInstance();
}

uint64_t PushableTimer.__allocating_init(fireAt:noLaterThan:queue:handler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_1000235B4(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t PushableTimer.init(fireAt:noLaterThan:queue:handler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1000235B4(a1, a2, a3, a4, a5);

  return v6;
}

uint64_t PushableTimer.reschedule(deadline:)(uint64_t a1)
{
  v33 = type metadata accessor for DispatchTimeInterval();
  v30 = *(v33 - 8);
  v3 = __chkstk_darwin(v33);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = &v28 - v5;
  v6 = sub_100005DCC(&qword_1001BA000, &unk_10016D4F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  sub_1000240C8(v1 + OBJC_IVAR____TtC18SharingViewService13PushableTimer_noLaterThan, v8);
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    static DispatchTime.distantFuture.getter();
    v17 = v16(v8, 1, v9);
    v18 = v10;
    if (v17 != 1)
    {
      sub_10001259C(v8, &qword_1001BA000, &unk_10016D4F0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v18 = v10;
  }

  sub_1000252B4(&qword_1001BA008, &type metadata accessor for DispatchTime, &protocol conformance descriptor for DispatchTime);
  v19 = dispatch thunk of static Comparable.< infix(_:_:)();
  v29 = v15;
  if (v19)
  {
    (*(v18 + 32))(v15, v13, v9);
  }

  else
  {
    (*(v18 + 8))(v13, v9);
    (*(v18 + 16))(v15, a1, v9);
  }

  swift_getObjectType();
  v21 = v30;
  v20 = v31;
  v22 = *(v30 + 104);
  v23 = v33;
  v22(v31, enum case for DispatchTimeInterval.never(_:), v33);
  v24 = v32;
  *v32 = 0;
  v22(v24, enum case for DispatchTimeInterval.nanoseconds(_:), v23);
  v25 = v29;
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v26 = *(v21 + 8);
  v26(v24, v23);
  v26(v20, v23);
  return (*(v18 + 8))(v25, v9);
}

uint64_t PushableTimer.deinit()
{
  swift_getObjectType();
  OS_dispatch_source.cancel()();
  sub_10001259C(v0 + OBJC_IVAR____TtC18SharingViewService13PushableTimer_noLaterThan, &qword_1001BA000, &unk_10016D4F0);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PushableTimer.__deallocating_deinit()
{
  swift_getObjectType();
  OS_dispatch_source.cancel()();
  sub_10001259C(v0 + OBJC_IVAR____TtC18SharingViewService13PushableTimer_noLaterThan, &qword_1001BA000, &unk_10016D4F0);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10001A82C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100035288(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_100032E98(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_100035E08();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1000213E4(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_10001A9EC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_100032CC0(a3, a4);
    v10 = v9;

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v5;
      v16 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10003607C();
        v13 = v16;
      }

      result = sub_100021704(v8, v13);
      *v5 = v13;
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_100035454(a1, a3, a4, v15);

    *v4 = v17;
  }

  return result;
}

unint64_t sub_10001AAD8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_100022904(v10, v9, a2, a3);
    if (!v6 || v11 >= v6)
    {
      v12 = sub_1000228A0(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = Data._Representation.subscript.getter();
    v16 = v15;
    result = sub_1000083FC(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }

  return result;
}

BOOL sub_10001AC28(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a2[2];
  if (!a1[2])
  {
    return v2 == 0;
  }

  if (!v2 || !sub_100022DF4(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  sub_1000122EC(0, &qword_1001BA740, NSObject_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t sub_10001ACB0(unint64_t result)
{
  v2 = v1;
  v3 = v1[1];
  if (!*(v3 + 16))
  {
    return result;
  }

  v4 = result;
  result = sub_100032DCC(result);
  if ((v5 & 1) == 0)
  {
    return result;
  }

  v6 = (*(v3 + 56) + 24 * result);
  v7 = v6[2];
  if (!v7)
  {
    return result;
  }

  v8 = *v6;
  v9 = v6[1];
  v10 = *v2;
  sub_100005E64(*v6, v9);
  sub_100005E64(v8, v9);
  v11 = v7;
  sub_100005E24(v8, v9, v7);
  sub_100019A38(v10, v8, v9, &v24);
  v22 = v25;
  v23 = v24;
  sub_100005E64(v8, v9);
  sub_10001AAD8(v10, v8, v9, &v24);
  v13 = v24;
  v12 = v25;
  v14 = v25 >> 62;
  v20 = v25;
  v21 = v24;
  if ((v25 >> 62) > 1)
  {
    if (v14 != 2 || *(v24 + 16) == *(v24 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v14)
  {
    if (v24 == v24 >> 32)
    {
LABEL_13:
      v13 = 0;
      v12 = 0;
      v16 = 0;
      goto LABEL_14;
    }
  }

  else if ((v25 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  v15 = v11;
  sub_100005E64(v13, v12);
  v16 = v7;
LABEL_14:
  v17 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v2[1];
  sub_1000350F0(v13, v12, v16, v17, isUniquelyReferenced_nonNull_native);

  v2[1] = v24;
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v11 writeValue:isa forCharacteristic:v17 type:0];
  sub_1000254F8(v8, v9, v7);

  sub_1000083FC(v21, v20);
  sub_1000083FC(v23, v22);

  return sub_1000083FC(v8, v9);
}

BOOL sub_10001AED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_100032DCC(a1), (v5 & 1) != 0))
  {
    v6 = *(a3 + 56) + 24 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    sub_100005E24(*v6, v8, v9);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 1;
  }

  sub_100005DCC(&qword_1001BA748, &qword_10016D950);
  Optional.unwrap(_:file:line:)();
  sub_1000254E8(v7, v8, v9);
  if (v13)
  {
    sub_1000254F8(v11, v12, v13);
  }

  return v13 == 0;
}

uint64_t SDB389BubbleMonitor.allDevices.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void *SDB389BubbleMonitor.queue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void SDB389BubbleMonitor.queue.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t SDB389BubbleMonitor.updateHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_100024138(v1, *(v0 + 40));
  return v1;
}

uint64_t SDB389BubbleMonitor.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_100012050(v5, v6);
}

uint64_t SDB389BubbleMonitor.lostHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  sub_100024138(v1, *(v0 + 56));
  return v1;
}

uint64_t SDB389BubbleMonitor.lostHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_100012050(v5, v6);
}

unint64_t SDB389BubbleMonitor.closestB389sInBubble.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1000205D4(*(v1 + 16), 0);
  v4 = sub_100022BD4(&v8, v3 + 4, v2, v1);
  v5 = v8;
  swift_bridgeObjectRetain_n();
  sub_100024148(v5);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    v3 = _swiftEmptyArrayStorage;
  }

  v8 = v3;
  sub_1000218B4(&v8);
  v6 = sub_10001B4CC(v8);

  return v6;
}

unint64_t sub_10001B4CC(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      v20 = v19;
      v1 = sub_1000205D4(v19, 0);
      sub_100027BD4(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_100021930(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_100021930(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

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
}

uint64_t sub_10001B6DC(uint64_t a1)
{
  *(v1 + 16) = sub_1000052A4(_swiftEmptyArrayStorage);
  *(v1 + 24) = CUMainQueue();
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = [objc_allocWithZone(SFDeviceDiscovery) init];
  v3 = sub_1000052A4(_swiftEmptyArrayStorage);
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  return v1;
}

void sub_10001B75C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 64);
  [v6 setChangeFlags:13];
  [v6 setDiscoveryFlags:2];
  swift_beginAccess();
  if (*(v3 + 24))
  {
    [v6 setDispatchQueue:?];
    v7 = String._bridgeToObjectiveC()();
    [v6 setPurpose:v7];

    v17 = sub_10002560C;
    v18 = v3;
    aBlock = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_10001BE90;
    v16 = &unk_100190408;
    v8 = _Block_copy(&aBlock);

    [v6 setDeviceFoundHandler:v8];
    _Block_release(v8);
    v17 = sub_100025614;
    v18 = v3;
    aBlock = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_10001BF68;
    v16 = &unk_100190430;
    v9 = _Block_copy(&aBlock);

    [v6 setDeviceChangedHandler:v9];
    _Block_release(v9);
    v17 = sub_10002561C;
    v18 = v3;
    aBlock = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_10001BE90;
    v16 = &unk_100190458;
    v10 = _Block_copy(&aBlock);

    [v6 setDeviceLostHandler:v10];
    _Block_release(v10);
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    v17 = sub_10002565C;
    v18 = v11;
    aBlock = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1000E4BD0;
    v16 = &unk_1001904A8;
    v12 = _Block_copy(&aBlock);

    [v6 activateWithCompletion:v12];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

id sub_10001BA78(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v33 - v10;
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  result = [a1 identifier];
  if (!result)
  {
    return result;
  }

  v15 = result;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 32))(v13, v11, v4);
  v16 = [a1 bleDevice];
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v16 advertisementFields];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = 0x65707954627573;
  v35 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v20 + 16) || (v21 = sub_100032C7C(v36), (v22 & 1) == 0))
  {

    sub_10000BF98(v36);
LABEL_14:

    goto LABEL_15;
  }

  sub_10000BFEC(*(v20 + 56) + 32 * v21, v37);
  sub_10000BF98(v36);

  if ((swift_dynamicCast() & 1) == 0 || v34 != 9 && v34 != 5)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v23 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37[0] = a2[2];
  a2[2] = 0x8000000000000000;
  sub_100035288(v23, v13, isUniquelyReferenced_nonNull_native);
  a2[2] = v37[0];
  swift_endAccess();
  v25 = a2[9];
  if ((v25 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

  v26 = [v17 rssi];

  if ((v26 & 0x8000000000000000) == 0)
  {
LABEL_15:
    (*(v5 + 16))(v8, v13, v4);
    goto LABEL_16;
  }

  v27 = sub_100025684(v26, v25);
  (*(v5 + 16))(v8, v13, v4);
  if (v27 < 0)
  {
LABEL_16:
    swift_beginAccess();
    sub_10001A82C(0, v8);
    goto LABEL_17;
  }

  swift_beginAccess();
  sub_10001A82C(0, v8);
  v28 = v23;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v37[0] = a2[10];
  a2[10] = 0x8000000000000000;
  sub_100035288(v28, v13, v29);
  a2[10] = v37[0];
LABEL_17:
  swift_endAccess();
  swift_beginAccess();
  v30 = a2[4];
  if (v30)
  {
    v31 = a2[5];

    v30(v32);
    sub_100012050(v30, v31);
  }

  return (*(v5 + 8))(v13, v4);
}

void sub_10001BE90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10001BEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a3 + 64) deviceFoundHandler];
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, a1);

    _Block_release(v5);
  }
}

void sub_10001BF68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_10001BFDC(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v22[-v10];
  __chkstk_darwin(v9);
  v13 = &v22[-v12];
  result = [a1 identifier];
  if (result)
  {
    v15 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v13, v11, v4);
    v16 = *(v5 + 16);
    v16(v8, v13, v4);
    swift_beginAccess();
    sub_10001A82C(0, v8);
    swift_endAccess();
    v16(v8, v13, v4);
    swift_beginAccess();
    sub_10001A82C(0, v8);
    swift_endAccess();
    swift_beginAccess();
    v17 = a2[4];
    if (v17)
    {
      v18 = a2[5];

      v17(v19);
      sub_100012050(v17, v18);
    }

    swift_beginAccess();
    v20 = a2[6];
    if (v20)
    {
      v21 = a2[7];

      v20(v13);
      sub_100012050(v20, v21);
    }

    return (*(v5 + 8))(v13, v4);
  }

  return result;
}

uint64_t sub_10001C248()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v15 = *(v5 - 8);
  v16 = v5;
  __chkstk_darwin(v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v9 = *(v0 + 24);
  if (v9)
  {
    aBlock[4] = sub_1000255E4;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C544;
    aBlock[3] = &unk_1001903E0;
    v10 = _Block_copy(aBlock);
    v11 = v9;

    static DispatchQoS.unspecified.getter();
    v18 = _swiftEmptyArrayStorage;
    sub_1000252B4(&qword_1001BA7C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005DCC(&unk_1001BBA90, &unk_10016D130);
    sub_100025698(&qword_1001BA7D0, &unk_1001BBA90, &unk_10016D130, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v10);

    (*(v17 + 8))(v4, v2);
    (*(v15 + 8))(v7, v16);

    swift_beginAccess();
    v12 = *(v1 + 32);
    v13 = *(v1 + 40);
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    return sub_100012050(v12, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001C544(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t SDB389BubbleMonitor.deinit()
{

  sub_100012050(*(v0 + 32), *(v0 + 40));
  sub_100012050(*(v0 + 48), *(v0 + 56));

  return v0;
}

uint64_t SDB389BubbleMonitor.__deallocating_deinit()
{

  sub_100012050(*(v0 + 32), *(v0 + 40));
  sub_100012050(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t b389VersionString(from:)(uint64_t *a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D298(v4, qword_1001C38B8);
  (*(v5 + 16))(v7, v8, v4);
  sub_100005E64(a1, a2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v35 = v5;
    v36 = v4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37[0] = v12;
    *v11 = 136315138;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v14 = SFHexStringForData();

    if (!v14)
    {
      result = sub_1000083FC(a1, a2);
      __break(1u);
      return result;
    }

    sub_1000083FC(a1, a2);
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_10002065C(v15, v17, v37);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "b389VersionString from %s", v11, 0xCu);
    sub_1000083B0(v12);

    v5 = v35;
    v4 = v36;
  }

  else
  {

    sub_1000083FC(a1, a2);
  }

  v19 = sub_100023EE0(a1, a2);
  v20 = (v19 >> 20) & 0xF;
  v21 = HIWORD(v19) & 0xF;
  v22 = v19 >> 4;
  sub_100005DCC(&qword_1001BA018, &qword_10016E2F0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10016D4E0;
  LOBYTE(v37[0]) = v20;
  *(v23 + 32) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v23 + 40) = v24;
  LOBYTE(v37[0]) = v21;
  *(v23 + 48) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v23 + 56) = v25;
  LOWORD(v37[0]) = v22;
  *(v23 + 64) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v23 + 72) = v26;
  v37[0] = v23;
  sub_100005DCC(&qword_1001BA020, &qword_10016D500);
  sub_100025698(&qword_1001BA028, &qword_1001BA020, &qword_10016D500, &protocol conformance descriptor for [A]);
  v27 = BidirectionalCollection<>.joined(separator:)();
  v29 = v28;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_10002065C(v27, v29, v37);
    _os_log_impl(&_mh_execute_header, v30, v31, "Result version: %s", v32, 0xCu);
    sub_1000083B0(v33);
  }

  (*(v5 + 8))(v7, v4);
  return v27;
}

uint64_t sub_10001CBC8()
{
  _StringGuts.grow(_:)(194);
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v1._object = 0x8000000100145E80;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x3A6C65646F6D202CLL;
  v3._object = 0xE900000000000020;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + 8));
  v4._countAndFlagsBits = 0x203A65646F6D20;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5 = type metadata accessor for B389PresentationConfig(0);
  type metadata accessor for B389PresentationConfig.Mode(0);
  _print_unlocked<A, B>(_:_:)();
  v6._countAndFlagsBits = 0x43726F6C6F63202CLL;
  v6._object = 0xED0000203A65646FLL;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x7375655A7369202CLL;
  v8._object = 0xEA0000000000203ALL;
  String.append(_:)(v8);
  if (*(v0 + v5[8]))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + v5[8]))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  v12._countAndFlagsBits = 0xD000000000000012;
  v12._object = 0x8000000100145EA0;
  String.append(_:)(v12);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._object = 0x8000000100145EC0;
  v14._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v14);
  if (*(v0 + v5[10]))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (*(v0 + v5[10]))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  v18._object = 0x8000000100145EE0;
  v18._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v18);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0xD000000000000015;
  v20._object = 0x8000000100145F00;
  String.append(_:)(v20);
  DefaultStringInterpolation.appendInterpolation<A>(nilPrint:)();
  v21._countAndFlagsBits = 0x4E6E65766967202CLL;
  v21._object = 0xED0000203A656D61;
  String.append(_:)(v21);
  DefaultStringInterpolation.appendInterpolation<A>(nilPrint:)();
  v22._object = 0x8000000100145F20;
  v22._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v22);
  v23 = (v0 + v5[14]);
  v26 = *v23;
  v27 = v23[1];
  sub_100025480(*v23, v27);
  sub_100025494();
  DefaultStringInterpolation.appendInterpolation<A>(nilPrint:)();
  sub_100025404(v26, v27);
  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  return 0;
}

unint64_t sub_10001CFC0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 6580592;
    v7 = 1701080941;
    v8 = 0x646F43726F6C6F63;
    if (a1 != 3)
    {
      v8 = 0x7375655A7369;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6C65646F6DLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x6D614E6E65766967;
    if (a1 != 9)
    {
      v2 = 0x6E69766172676E65;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x5079726574746162;
    v4 = 0x5479726574746162;
    if (a1 != 6)
    {
      v4 = 0x6572685469737372;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10001D148@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000243B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10001D188(uint64_t a1)
{
  v2 = sub_1000253B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D1C4(uint64_t a1)
{
  v2 = sub_1000253B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D200(void *a1)
{
  v3 = v1;
  v5 = sub_100005DCC(&qword_1001BA720, &qword_10016D940);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_10000836C(a1, a1[3]);
  sub_1000253B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = type metadata accessor for B389PresentationConfig(0);
    LOBYTE(v14) = 2;
    type metadata accessor for B389PresentationConfig.Mode(0);
    sub_1000252B4(&qword_1001BA728, type metadata accessor for B389PresentationConfig.Mode, &unk_10016D8C4);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = (v3 + *(v9 + 56));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 10;
    sub_100025480(v14, v11);
    sub_10002535C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100025404(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10001D560@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for B389PresentationConfig.Mode(0);
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100005DCC(&qword_1001BA708, &qword_10016D938);
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v29 - v9;
  v11 = type metadata accessor for B389PresentationConfig(0);
  v33 = __chkstk_darwin(v11);
  v34 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (v34 + v33[14]);
  v35 = a1;
  v36 = v13;
  *v13 = xmmword_10016C900;
  sub_10000836C(a1, a1[3]);
  sub_1000253B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1000083B0(v35);

    return sub_100025404(*v36, *(v36 + 1));
  }

  else
  {
    v30 = a2;
    v31 = v8;
    LOBYTE(v37) = 0;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v34;
    *v34 = v14;
    LOBYTE(v37) = 1;
    *(v15 + 1) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v15 + 2) = v16;
    LOBYTE(v37) = 2;
    sub_1000252B4(&qword_1001BA718, type metadata accessor for B389PresentationConfig.Mode, &unk_10016D8EC);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = v33;
    sub_100025250(v7, v15 + v33[6]);
    LOBYTE(v37) = 3;
    *(v15 + v17[7]) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v37) = 4;
    *(v15 + v17[8]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v37) = 5;
    *(v15 + v17[9]) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v37) = 6;
    *(v15 + v17[10]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v37) = 7;
    *(v15 + v17[11]) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v37) = 8;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = v34 + v33[12];
    *v19 = v18;
    v19[8] = v20 & 1;
    LOBYTE(v37) = 9;
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22 = (v34 + v33[13]);
    *v22 = v21;
    v22[1] = v23;
    v39 = 10;
    sub_1000251FC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v31 + 8))(v10, v32);
    v24 = v37;
    v25 = v38;
    v26 = v36;
    sub_100025404(*v36, *(v36 + 1));
    *v26 = v24;
    v26[1] = v25;
    v27 = v34;
    sub_100025418(v34, v30, type metadata accessor for B389PresentationConfig);
    sub_1000083B0(v35);
    return sub_1000252FC(v27, type metadata accessor for B389PresentationConfig);
  }
}

Swift::Int sub_10001DB4C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001DC1C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10001DCD8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10001DDA4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100024758(*a1);
  *a2 = result;
  return result;
}

void sub_10001DDD4(uint64_t *a1@<X8>)
{
  v2 = 0xEE00726569666974;
  v3 = 0x6E65644965736163;
  v4 = 0xE900000000000067;
  v5 = 0x69666E6F4363666ELL;
  if (*v1 != 2)
  {
    v5 = 0x69746C754D7369;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x444955557462;
    v2 = 0xE600000000000000;
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

uint64_t sub_10001DE60()
{
  v1 = 0x6E65644965736163;
  v2 = 0x69666E6F4363666ELL;
  if (*v0 != 2)
  {
    v2 = 0x69746C754D7369;
  }

  if (*v0)
  {
    v1 = 0x444955557462;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10001DEE8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100024758(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10001DF1C(uint64_t a1)
{
  v2 = sub_100025154();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001DF58(uint64_t a1)
{
  v2 = sub_100025154();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001DFAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for UUID();
  v32 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005DCC(&qword_1001BA6B0, &qword_10016D918);
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for B389PresentationConfig.Mode(0);
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v36 = a1;
  sub_10000836C(a1, v12);
  sub_100025154();
  v13 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_1000083B0(v36);
  }

  v14 = v5;
  v35 = v11;
  v15 = v34;
  LOBYTE(v37) = 0;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v6;
  v18 = v15;
  switch(v16)
  {
    case 0:
      LOBYTE(v37) = 3;
      v23 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v15 + 8))(v8, v17);
      v27 = v35;
      *v35 = v23 & 1;
      v19 = v33;
      goto LABEL_12;
    case 1:
      LOBYTE(v37) = 1;
      sub_1000252B4(&qword_1001BA6D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      LOBYTE(v37) = 3;
      v25 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v15 + 8))(v8, v17);
      v26 = *(sub_100005DCC(&unk_1001BA6E0, &unk_10016D920) + 48);
      v27 = v35;
      (*(v32 + 32))(v35, v14, v3);
      *(v27 + v26) = v25 & 1;
      v19 = v33;
LABEL_12:
      swift_storeEnumTagMultiPayload();
      sub_100025250(v27, v19);
      return sub_1000083B0(v36);
    case 2:
      v39 = 2;
      sub_1000251FC();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v19 = v33;
      v21 = v37;
      v20 = v38;
      sub_1000122EC(0, &qword_1001BA6D0, NSKeyedUnarchiver_ptr);
      sub_1000122EC(0, &unk_1001BA680, SFB389NFCPromptConfiguration_ptr);
      v22 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      if (v22)
      {
        v28 = v22;
        (*(v18 + 8))(v8, v17);
        sub_1000083FC(v21, v20);
        v27 = v35;
        *v35 = v28;
        goto LABEL_12;
      }

      sub_1000251A8();
      swift_allocError();
      *v30 = 0;
      swift_willThrow();
      sub_1000083FC(v21, v20);
      break;
    default:
      sub_1000251A8();
      swift_allocError();
      *v24 = 1;
      swift_willThrow();
      break;
  }

  (*(v18 + 8))(v8, v17);
  return sub_1000083B0(v36);
}

uint64_t sub_10001E530(void *a1)
{
  v2 = v1;
  v4 = sub_100005DCC(&unk_1001BBAA0, &qword_10016CD60);
  __chkstk_darwin(v4 - 8);
  v56 = &v54 - v5;
  v6 = type metadata accessor for B389PresentationConfig.Mode(0);
  v7 = __chkstk_darwin(v6);
  v54 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v58 = &v54 - v10;
  v11 = __chkstk_darwin(v9);
  v55 = &v54 - v12;
  v13 = __chkstk_darwin(v11);
  v57 = &v54 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v54 - v16;
  __chkstk_darwin(v15);
  v19 = &v54 - v18;
  v20 = sub_100005DCC(&qword_1001BA6F0, &qword_10016D930);
  v60 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  sub_10000836C(a1, a1[3]);
  sub_100025154();
  v61 = v22;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100025418(v2, v19, type metadata accessor for B389PresentationConfig.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = type metadata accessor for UUID();
      (*(*(v24 - 8) + 8))(v19, v24);
    }

    else
    {
      sub_1000252FC(v19, type metadata accessor for B389PresentationConfig.Mode);
    }
  }

  v25 = v20;
  v26 = v59;
  LOBYTE(v63[0]) = 0;
  v27 = v61;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v26)
  {
    return (*(v60 + 8))(v27, v20);
  }

  sub_100025418(v2, v17, type metadata accessor for B389PresentationConfig.Mode);
  v29 = swift_getEnumCaseMultiPayload();
  v30 = v58;
  if (v29)
  {
    if (v29 == 1)
    {
      v31 = type metadata accessor for UUID();
      (*(*(v31 - 8) + 8))(v17, v31);
    }

    else
    {
      sub_1000252FC(v17, type metadata accessor for B389PresentationConfig.Mode);
    }

    v32 = v57;
    sub_100025418(v2, v57, type metadata accessor for B389PresentationConfig.Mode);
    v33 = swift_getEnumCaseMultiPayload();
    if (!v33)
    {
      v37 = v60;
      goto LABEL_23;
    }

    if (v33 != 1)
    {
      sub_1000252FC(v32, type metadata accessor for B389PresentationConfig.Mode);
      v37 = v60;
      goto LABEL_23;
    }

    v34 = type metadata accessor for UUID();
    (*(*(v34 - 8) + 8))(v32, v34);
  }

  v35 = v55;
  sub_100025418(v2, v55, type metadata accessor for B389PresentationConfig.Mode);
  v36 = swift_getEnumCaseMultiPayload();
  if (v36)
  {
    v37 = v60;
    if (v36 == 1)
    {
      sub_100005DCC(&unk_1001BA6E0, &unk_10016D920);
      v38 = type metadata accessor for UUID();
      (*(*(v38 - 8) + 8))(v35, v38);
    }

    else
    {
      sub_1000252FC(v35, type metadata accessor for B389PresentationConfig.Mode);
    }
  }

  else
  {
    v37 = v60;
  }

  LOBYTE(v63[0]) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
LABEL_23:
  sub_100025418(v2, v30, type metadata accessor for B389PresentationConfig.Mode);
  v39 = swift_getEnumCaseMultiPayload();
  v40 = type metadata accessor for UUID();
  v41 = *(v40 - 8);
  v42 = v41;
  if (v39 == 1)
  {
    v43 = v56;
    (*(v41 + 32))(v56, v30, v40);
    (*(v42 + 56))(v43, 0, 1, v40);
  }

  else
  {
    v43 = v56;
    (*(v41 + 56))(v56, 1, 1, v40);
    sub_1000252FC(v30, type metadata accessor for B389PresentationConfig.Mode);
  }

  LOBYTE(v63[0]) = 1;
  sub_1000252B4(&qword_1001BA6F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  sub_10001259C(v43, &unk_1001BBAA0, &qword_10016CD60);
  v44 = v54;
  sub_100025418(v2, v54, type metadata accessor for B389PresentationConfig.Mode);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v45 = *v44;
    v46 = objc_opt_self();
    v63[0] = 0;
    v47 = [v46 archivedDataWithRootObject:v45 requiringSecureCoding:1 error:v63];
    v48 = v63[0];
    if (v47)
    {
      v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v63[0] = v49;
      v63[1] = v51;
      v62 = 2;
      sub_10002535C();
      v52 = v61;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v37 + 8))(v52, v25);

      return sub_1000083FC(v49, v51);
    }

    v53 = v48;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    sub_1000252FC(v44, type metadata accessor for B389PresentationConfig.Mode);
  }

  return (*(v37 + 8))(v61, v25);
}

void *sub_10001EDC4()
{
  result = sub_100005858(_swiftEmptyArrayStorage);
  off_1001B9FF0 = result;
  return result;
}

uint64_t sub_10001EDEC()
{
  sub_100005DCC(&qword_1001BA758, &qword_10016D960);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1001B9FF8 = result;
  return result;
}

uint64_t sub_10001EE2C(uint64_t a1)
{
  if (qword_1001B92E8 != -1)
  {
    a1 = swift_once();
  }

  v2 = qword_1001B9FF8;
  __chkstk_darwin(a1);

  os_unfair_lock_lock(v2 + 4);
  sub_1000255C0(v3);
  os_unfair_lock_unlock(v2 + 4);

  return v1;
}

void *sub_10001EF0C(uint64_t a1)
{
  if (qword_1001B92E0 != -1)
  {
    swift_once();
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(off_1001B9FF0 + 2))
  {
    sub_100032CC0(v2, v3);
  }

  swift_endAccess();
  sub_100005DCC(&qword_1001BA7B8, &unk_10016D9A8);
  result = Optional.unwrap(_:file:line:)();
  v5 = v7 - 1;
  if (v7 == 1)
  {
    swift_beginAccess();

    sub_10001A9EC(0, 1, v2, v3);
  }

  else
  {
    if (!v7)
    {
      __break(1u);
      return result;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = off_1001B9FF0;
    off_1001B9FF0 = 0x8000000000000000;
    sub_100035454(v5, v2, v3, isUniquelyReferenced_nonNull_native);
    off_1001B9FF0 = v8;
  }

  return swift_endAccess();
}

unint64_t sub_10001F0DC(Swift::String *a1)
{
  _StringGuts.grow(_:)(23);

  String.append(_:)(a1[1]);
  return 0xD000000000000015;
}

uint64_t sub_10001F14C(uint64_t a1)
{
  sub_10001EE2C(a1);

  return swift_deallocClassInstance();
}

uint64_t sub_10001F180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1001B92E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1001B9FF0;
  v7 = *(off_1001B9FF0 + 2);
  if (v7)
  {
    v8 = sub_100032CC0(a1, a2);
    if (v9)
    {
      v7 = *(v6[7] + 8 * v8);
    }

    else
    {
      v7 = 0;
    }
  }

  *a3 = v7;
  return swift_endAccess();
}

Swift::String __swiftcall URL.fileName()()
{
  v0 = URL.lastPathComponent.getter();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t URL.fileUTType()()
{
  v1 = type metadata accessor for URLResourceValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005DCC(&qword_1001BA030, &qword_10016D508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016CCE0;
  *(inited + 32) = NSURLContentTypeKey;
  v6 = NSURLContentTypeKey;
  sub_1000247A4(inited);
  swift_setDeallocating();
  sub_1000252FC(inited + 32, type metadata accessor for URLResourceKey);
  URL.resourceValues(forKeys:)();

  if (!v0)
  {
    URLResourceValues.contentType.getter();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> URL.fileTypeIdentifier()()
{
  v2 = type metadata accessor for URLResourceValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005DCC(&qword_1001BA030, &qword_10016D508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016CCE0;
  *(inited + 32) = NSURLTypeIdentifierKey;
  v7 = NSURLTypeIdentifierKey;
  sub_1000247A4(inited);
  swift_setDeallocating();
  sub_1000252FC(inited + 32, type metadata accessor for URLResourceKey);
  URL.resourceValues(forKeys:)();

  if (!v1)
  {
    v0 = URLResourceValues.typeIdentifier.getter();
    inited = v8;
    (*(v3 + 8))(v5, v2);
  }

  v9 = v0;
  v10 = inited;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

Swift::Int_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> URL.fileSize()()
{
  v0 = sub_10001F99C(&NSURLFileSizeKey, &URLResourceValues.fileSize.getter);
  result.value = v0;
  result.is_nil = v1;
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> URL.isDirectory()()
{
  v2 = type metadata accessor for URLResourceValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005DCC(&qword_1001BA030, &qword_10016D508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016CCE0;
  *(inited + 32) = NSURLIsDirectoryKey;
  v7 = NSURLIsDirectoryKey;
  sub_1000247A4(inited);
  swift_setDeallocating();
  sub_1000252FC(inited + 32, type metadata accessor for URLResourceKey);
  URL.resourceValues(forKeys:)();

  if (!v1)
  {
    v0 = URLResourceValues.isDirectory.getter();
    (*(v3 + 8))(v5, v2);
  }

  return v0 & 1;
}

void URL.realPathURL()(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v3 = v2;
  v4 = CFURLCopyFileSystemPath(v2, kCFURLPOSIXPathStyle);

  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String.utf8CString.getter();

    v6 = realpath_DARWIN_EXTSN((v5 + 32), 0);

    if (!v6)
    {
      goto LABEL_9;
    }

    String.init(cString:)();
    free(v6);
    v7 = String.utf8CString.getter();
    v8 = strlen((v7 + 32));

    v9 = URL.isDirectory()();
    if (v10)
    {

      return;
    }

    v12 = v9;
    v13 = String.utf8CString.getter();

    v14 = CFURLCreateFromFileSystemRepresentation(0, (v13 + 32), v8, v12);

    if (v14)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
    }

    else
    {
LABEL_9:
      v16 = type metadata accessor for URL();
      (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    }
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

Swift::Int_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> URL.availableStorage()()
{
  v0 = sub_10001F99C(&NSURLVolumeAvailableCapacityKey, &URLResourceValues.volumeAvailableCapacity.getter);
  result.value = v0;
  result.is_nil = v1;
  return result;
}

uint64_t (*sub_10001F99C(void **a1, uint64_t (*a2)(uint64_t)))(uint64_t)
{
  v5 = type metadata accessor for URLResourceValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005DCC(&qword_1001BA030, &qword_10016D508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016CCE0;
  v10 = *a1;
  *(inited + 32) = *a1;
  v11 = v10;
  sub_1000247A4(inited);
  swift_setDeallocating();
  sub_1000252FC(inited + 32, type metadata accessor for URLResourceKey);
  URL.resourceValues(forKeys:)();

  if (!v2)
  {
    a2 = a2(v12);
    (*(v6 + 8))(v8, v5);
  }

  return a2;
}

uint64_t Sequence.batch(size:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v22 - v5;
  v7 = type metadata accessor for Optional();
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v22 - v9;
  v11 = *(a2 - 8);
  __chkstk_darwin(v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v22 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  type metadata accessor for Array();
  v29 = Array.init()();
  v28 = Array.init()();
  (*(v11 + 16))(v13, v25, a2);
  dispatch thunk of Sequence.makeIterator()();
  v17 = v24;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v25 = v17[6];
  if (v25(v10, 1, AssociatedTypeWitness) != 1)
  {
    v19 = v17[4];
    v23 = v10;
    v24 = v19;
    (v19)(v6, v10, AssociatedTypeWitness);
    while (1)
    {
      Array.append(_:)();
      v20 = v28;
      if (Array.count.getter() > v26)
      {
        v27 = v20;
        type metadata accessor for Array();

        v10 = v23;
        Array.append(_:)();
        Array.removeAll(keepingCapacity:)(0);
      }

      dispatch thunk of IteratorProtocol.next()();
      if (v25(v10, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      (v24)(v6, v10, AssociatedTypeWitness);
    }
  }

  (*(v22 + 8))(v16, v14);
  v18 = v28;
  v27 = v28;
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
  }

  else
  {
    v27 = v18;
    type metadata accessor for Array();
    Array.append(_:)();
  }

  return v29;
}

uint64_t SDAsyncSemaphore.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SDAsyncSemaphore.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100020000@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 containerURLForSecurityApplicationGroupIdentifier:v3];

  if (v4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_100020214@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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

uint64_t sub_100020444(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_100022D3C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000083FC(a3, a4);
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
  sub_100020214(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000083FC(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

void *sub_1000205D4(uint64_t a1, uint64_t a2)
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

  sub_100005DCC(&qword_1001BBB00, &unk_10016CF10);
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

unint64_t sub_10002065C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100020728(v11, 0, 0, 1, a1, a2);
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
    sub_10000BFEC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000083B0(v11);
  return v7;
}

unint64_t sub_100020728(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100020834(a5, a6);
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

void *sub_100020834(uint64_t a1, unint64_t a2)
{
  v3 = sub_100020880(a1, a2);
  sub_1000209B0(&off_10018EE60);
  return v3;
}

void *sub_100020880(uint64_t a1, unint64_t a2)
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

  v6 = sub_100020A9C(v5, 0);
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
        v7 = sub_100020A9C(v10, 0);
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

uint64_t sub_1000209B0(uint64_t result)
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

  result = sub_100020B10(result, v11, 1, v3);
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

void *sub_100020A9C(uint64_t a1, uint64_t a2)
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

  sub_100005DCC(&qword_1001BA7E8, &qword_10016D9C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100020B10(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005DCC(&qword_1001BA7E8, &qword_10016D9C0);
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

char *sub_100020C04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100020CC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100020C24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100020DC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100020C44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100020EFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100020C64(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100021000(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100020C84(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000210FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100020CA4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002120C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100020CC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005DCC(&unk_1001BA800, &qword_10016D9D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_100020DC8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005DCC(&qword_1001BA778, &unk_10016E320);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100005DCC(&qword_1001BA780, &qword_10016D980);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100020EFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005DCC(&qword_1001BA788, &qword_10016D988);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100021000(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005DCC(&qword_1001BA770, &unk_10016D970);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1000210FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005DCC(&qword_1001BA790, &qword_10016D990);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10002120C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005DCC(&qword_1001BA798, &qword_10016D998);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URL() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_1000213E4(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1000252B4(&qword_1001BA7D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_100021704(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000218B4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100022D28(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100021994(v6);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_100021930(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void sub_100021994(uint64_t *a1)
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
        sub_1000122EC(0, &qword_1001BBBB0, SFDevice_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100021BEC(v8, v9, a1, v4);
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
    sub_100021AA8(0, v2, 1, a1);
  }
}

void sub_100021AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_5:
    v20 = v4;
    v21 = a3;
    v6 = *(v22 + 8 * a3);
    v19 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 bleDevice];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = [v10 rssiFloor];

      v13 = [v9 bleDevice];
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = v13;
      v15 = [v13 rssiFloor];

      if (v12 < v15)
      {
        if (!v22)
        {
          goto LABEL_15;
        }

        v16 = *v4;
        v6 = *(v4 + 8);
        *v4 = v6;
        *(v4 + 8) = v16;
        v4 -= 8;
        if (!__CFADD__(v5++, 1))
        {
          continue;
        }
      }

      a3 = v21 + 1;
      v4 = v20 + 8;
      v5 = v19 - 1;
      if (v21 + 1 == a2)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_100021BEC(id **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v11 = &selRef_applicationProxyForIdentifier_;
    v12 = &off_1001AD000;
    while (1)
    {
      v13 = v9;
      v14 = v9 + 1;
      v113 = v9;
      if (v9 + 1 < v8)
      {
        v108 = v10;
        v110 = v6;
        v15 = *v7;
        v16 = *(*v7 + 8 * v9);
        v17 = *(*v7 + 8 * v14);
        v18 = v16;
        v19 = [v17 v11[17]];
        if (!v19)
        {
          goto LABEL_138;
        }

        v20 = v19;
        v118 = [v19 v12[101]];

        v21 = [v18 v11[17]];
        if (!v21)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        v22 = v21;
        v116 = [v21 v12[101]];

        v4 = v113 + 2;
        v23 = &v15[8 * v113 + 16];
        while (v8 != v4)
        {
          v24 = *(v23 - 1);
          v25 = *v23;
          v26 = v24;
          v27 = [v25 bleDevice];
          if (!v27)
          {
            goto LABEL_133;
          }

          v28 = v27;
          v29 = [v27 rssiFloor];

          v30 = [v26 bleDevice];
          if (!v30)
          {
            goto LABEL_132;
          }

          v31 = v30;
          v14 = v118 < v116;
          v32 = [v30 rssiFloor];

          ++v4;
          ++v23;
          if (v118 < v116 == v29 >= v32)
          {
            v8 = v4 - 1;
            break;
          }
        }

        v10 = v108;
        v6 = v110;
        v7 = a3;
        v11 = &selRef_applicationProxyForIdentifier_;
        v13 = v113;
        v33 = 8 * v113;
        if (v118 >= v116)
        {
          goto LABEL_21;
        }

        if (v8 < v113)
        {
          goto LABEL_125;
        }

        if (v113 >= v8)
        {
LABEL_21:
          v14 = v8;
          v12 = &off_1001AD000;
        }

        else
        {
          v34 = 8 * v8 - 8;
          v35 = v8;
          v36 = v113;
          v12 = &off_1001AD000;
          do
          {
            if (v36 != --v35)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_135;
              }

              v38 = *(v37 + v33);
              *(v37 + v33) = *(v37 + v34);
              *(v37 + v34) = v38;
            }

            ++v36;
            v34 -= 8;
            v33 += 8;
          }

          while (v36 < v35);
          v14 = v8;
        }
      }

      v39 = v7[1];
      if (v14 < v39)
      {
        if (__OFSUB__(v14, v13))
        {
          goto LABEL_124;
        }

        if (v14 - v13 < a4)
        {
          v40 = (v13 + a4);
          if (__OFADD__(v13, a4))
          {
            goto LABEL_126;
          }

          if (v40 >= v39)
          {
            v40 = v7[1];
          }

          if (v40 < v13)
          {
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          if (v14 != v40)
          {
            v109 = v10;
            v111 = v6;
            v41 = *v7;
            v42 = *v7 + 8 * v14 - 8;
            v4 = v13 - v14;
            v114 = v40;
            do
            {
              v117 = v42;
              v119 = v14;
              v43 = *(v41 + 8 * v14);
              v115 = v4;
              while (1)
              {
                v44 = *v42;
                v45 = v43;
                v46 = v44;
                v47 = [v45 bleDevice];
                if (!v47)
                {
                  goto LABEL_130;
                }

                v48 = v47;
                v49 = [v47 v12[101]];

                v50 = [v46 bleDevice];
                if (!v50)
                {
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
                  goto LABEL_139;
                }

                v51 = v50;
                v52 = [v50 v12[101]];

                if (v49 >= v52)
                {
                  break;
                }

                if (!v41)
                {
                  goto LABEL_131;
                }

                v53 = *v42;
                v43 = *(v42 + 8);
                *v42 = v43;
                *(v42 + 8) = v53;
                v42 -= 8;
                v54 = __CFADD__(v4++, 1);
                v12 = &off_1001AD000;
                if (v54)
                {
                  goto LABEL_33;
                }
              }

              v12 = &off_1001AD000;
LABEL_33:
              v14 = v119 + 1;
              v42 = v117 + 8;
              v4 = v115 - 1;
            }

            while ((v119 + 1) != v114);
            v14 = v114;
            v10 = v109;
            v6 = v111;
            v7 = a3;
            v11 = &selRef_applicationProxyForIdentifier_;
            v13 = v113;
          }
        }
      }

      if (v14 < v13)
      {
        goto LABEL_123;
      }

      v55 = v10;
      v120 = v14;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v10 = v55;
      }

      else
      {
        v10 = sub_10002279C(0, *(v55 + 2) + 1, 1, v55);
      }

      v4 = *(v10 + 2);
      v56 = *(v10 + 3);
      v57 = v4 + 1;
      if (v4 >= v56 >> 1)
      {
        v10 = sub_10002279C((v56 > 1), v4 + 1, 1, v10);
      }

      *(v10 + 2) = v57;
      v58 = &v10[16 * v4];
      *(v58 + 4) = v113;
      *(v58 + 5) = v14;
      v14 = *a1;
      if (!*a1)
      {
        goto LABEL_137;
      }

      if (v4)
      {
        while (1)
        {
          v59 = v57 - 1;
          if (v57 >= 4)
          {
            break;
          }

          if (v57 == 3)
          {
            v60 = *(v10 + 4);
            v61 = *(v10 + 5);
            v70 = __OFSUB__(v61, v60);
            v62 = v61 - v60;
            v63 = v70;
LABEL_63:
            if (v63)
            {
              goto LABEL_112;
            }

            v76 = &v10[16 * v57];
            v78 = *v76;
            v77 = *(v76 + 1);
            v79 = __OFSUB__(v77, v78);
            v80 = v77 - v78;
            v81 = v79;
            if (v79)
            {
              goto LABEL_115;
            }

            v82 = &v10[16 * v59 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v70 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v70)
            {
              goto LABEL_118;
            }

            if (__OFADD__(v80, v85))
            {
              goto LABEL_119;
            }

            if (v80 + v85 >= v62)
            {
              if (v62 < v85)
              {
                v59 = v57 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          v86 = &v10[16 * v57];
          v88 = *v86;
          v87 = *(v86 + 1);
          v70 = __OFSUB__(v87, v88);
          v80 = v87 - v88;
          v81 = v70;
LABEL_77:
          if (v81)
          {
            goto LABEL_114;
          }

          v89 = &v10[16 * v59];
          v91 = *(v89 + 4);
          v90 = *(v89 + 5);
          v70 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v70)
          {
            goto LABEL_117;
          }

          if (v92 < v80)
          {
            goto LABEL_3;
          }

LABEL_84:
          v4 = v59 - 1;
          if (v59 - 1 >= v57)
          {
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
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

          if (!*v7)
          {
            goto LABEL_134;
          }

          v97 = v10;
          v98 = *&v10[16 * v4 + 32];
          v99 = *&v10[16 * v59 + 40];
          sub_100022354((*v7 + 8 * v98), (*v7 + 8 * *&v10[16 * v59 + 32]), (*v7 + 8 * v99), v14);
          if (v6)
          {
            goto LABEL_106;
          }

          if (v99 < v98)
          {
            goto LABEL_108;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_100022788(v97);
          }

          if (v4 >= *(v97 + 2))
          {
            goto LABEL_109;
          }

          v100 = &v97[16 * v4];
          *(v100 + 4) = v98;
          *(v100 + 5) = v99;
          sub_1000226FC(v59);
          v10 = v97;
          v57 = *(v97 + 2);
          v11 = &selRef_applicationProxyForIdentifier_;
          if (v57 <= 1)
          {
            goto LABEL_3;
          }
        }

        v64 = &v10[16 * v57 + 32];
        v65 = *(v64 - 64);
        v66 = *(v64 - 56);
        v70 = __OFSUB__(v66, v65);
        v67 = v66 - v65;
        if (v70)
        {
          goto LABEL_110;
        }

        v69 = *(v64 - 48);
        v68 = *(v64 - 40);
        v70 = __OFSUB__(v68, v69);
        v62 = v68 - v69;
        v63 = v70;
        if (v70)
        {
          goto LABEL_111;
        }

        v71 = &v10[16 * v57];
        v73 = *v71;
        v72 = *(v71 + 1);
        v70 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v70)
        {
          goto LABEL_113;
        }

        v70 = __OFADD__(v62, v74);
        v75 = v62 + v74;
        if (v70)
        {
          goto LABEL_116;
        }

        if (v75 >= v67)
        {
          v93 = &v10[16 * v59 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v70 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v70)
          {
            goto LABEL_120;
          }

          if (v62 < v96)
          {
            v59 = v57 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_63;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v120;
      if (v120 >= v8)
      {
        goto LABEL_95;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_95:
  v14 = v7;
  v7 = *a1;
  if (*a1)
  {
    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v101 = v4;
    }

    else
    {
LABEL_128:
      v101 = sub_100022788(v4);
    }

    v4 = *(v101 + 2);
    if (v4 >= 2)
    {
      while (*v14)
      {
        v102 = *&v101[16 * v4];
        v103 = v101;
        v104 = *&v101[16 * v4 + 24];
        sub_100022354((*v14 + 8 * v102), (*v14 + 8 * *&v101[16 * v4 + 16]), (*v14 + 8 * v104), v7);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v104 < v102)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_100022788(v103);
        }

        if (v4 - 2 >= *(v103 + 2))
        {
          goto LABEL_122;
        }

        v105 = &v103[16 * v4];
        *v105 = v102;
        *(v105 + 1) = v104;
        sub_1000226FC(v4 - 1);
        v101 = v103;
        v4 = *(v103 + 2);
        if (v4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_136;
    }

LABEL_106:
  }

  else
  {
LABEL_140:
    __break(1u);
  }
}

uint64_t sub_100022354(id *__src, id *__dst, id *a3, id *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __dst - __src;
  v7 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v7 = __dst - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - __dst;
  v10 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v10 = a3 - __dst;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v31 = a4;
      memmove(a4, __dst, 8 * v11);
      v5 = __dst;
      a4 = v31;
    }

    v48 = a4;
    v15 = &a4[v11];
    if (v9 < 8)
    {
      v12 = a4;
    }

    else
    {
      v12 = a4;
      if (v5 > __src)
      {
        while (1)
        {
          v44 = v5;
          v33 = v5 - 1;
          --v4;
          v34 = v15;
          v47 = v33;
          while (1)
          {
            v50 = v15;
            v35 = *--v34;
            v36 = *v33;
            v37 = v35;
            v38 = v36;
            result = [v37 bleDevice];
            if (!result)
            {
              goto LABEL_49;
            }

            v39 = result;
            v40 = [result rssiFloor];

            result = [v38 bleDevice];
            if (!result)
            {
              goto LABEL_48;
            }

            v41 = result;
            v42 = [result rssiFloor];

            v43 = v4 + 1;
            if (v40 < v42)
            {
              break;
            }

            v33 = v47;
            if (v43 != v50)
            {
              *v4 = *v34;
            }

            --v4;
            v15 = v34;
            if (v34 <= v48)
            {
              v15 = v34;
              v12 = v48;
              v30 = v44;
              goto LABEL_42;
            }
          }

          v15 = v50;
          v30 = v47;
          if (v43 != v44)
          {
            *v4 = *v47;
          }

          v12 = v48;
          if (v50 > v48)
          {
            v5 = v47;
            if (v47 > __src)
            {
              continue;
            }
          }

          goto LABEL_42;
        }
      }
    }

    v30 = v5;
LABEL_42:
    if (v30 != v12 || v30 >= (v12 + ((v15 - v12 + (v15 - v12 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v30, v12, 8 * (v15 - v12));
    }

    return 1;
  }

  v12 = a4;
  v13 = __src;
  if (a4 != __src || &__src[v8] <= a4)
  {
    memmove(a4, __src, 8 * v8);
    v5 = __dst;
  }

  v15 = &v12[v8];
  if (v6 < 8 || v5 >= v4)
  {
LABEL_21:
    v30 = v13;
    goto LABEL_42;
  }

  v16 = &off_1001AD000;
  v46 = v4;
  v49 = &v12[v8];
  while (1)
  {
    v17 = v13;
    v18 = v5;
    v19 = v12;
    v20 = *v12;
    v21 = *v5;
    v22 = v20;
    result = [v21 bleDevice];
    if (!result)
    {
      break;
    }

    v24 = result;
    v25 = [result v16[101]];

    result = [v22 bleDevice];
    if (!result)
    {
      goto LABEL_47;
    }

    v26 = result;
    v27 = [result v16[101]];

    if (v25 >= v27)
    {
      v28 = v19;
      v12 = v19 + 1;
      v29 = v17;
      v5 = v18;
      if (v17 == v19)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v29 = *v28;
      goto LABEL_19;
    }

    v28 = v18;
    v5 = v18 + 1;
    v29 = v17;
    v12 = v19;
    if (v17 != v18)
    {
      goto LABEL_18;
    }

LABEL_19:
    v13 = v29 + 1;
    v15 = v49;
    v16 = &off_1001AD000;
    if (v12 >= v49 || v5 >= v46)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1000226FC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100022788(v3);
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

char *sub_10002279C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005DCC(&unk_1001BA810, &unk_10016E350);
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

uint64_t sub_1000228A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100022904(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

void *sub_1000229B8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_1000122EC(0, &qword_1001BA7A0, CALayer_ptr);
  sub_10002553C();
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_1000122EC(0, &qword_1001BA7A0, CALayer_ptr);
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
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
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

    if (v15 >= v13)
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
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_100022BD4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100022D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
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
  sub_100020214(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_100022DF4(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_100005E64(a3, a4);
          return sub_100020444(v13, a2, a3, a4) & 1;
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

uint64_t sub_100022F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for B389PresentationConfig.Mode(0);
  v8 = __chkstk_darwin(v7);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = &v34 - v12;
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = sub_100005DCC(&qword_1001BA738, &qword_10016D948);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v34 - v18;
  v20 = &v34 + *(v17 + 56) - v18;
  sub_100025418(a1, &v34 - v18, type metadata accessor for B389PresentationConfig.Mode);
  sub_100025418(a2, v20, type metadata accessor for B389PresentationConfig.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100025418(v19, v15, type metadata accessor for B389PresentationConfig.Mode);
    if (!swift_getEnumCaseMultiPayload())
    {
      v29 = *v15 ^ *v20;
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_100025418(v19, v10, type metadata accessor for B389PresentationConfig.Mode);
    v31 = *v10;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v32 = *v20;
      sub_1000122EC(0, &qword_1001BA740, NSObject_ptr);
      v30 = static NSObject.== infix(_:_:)();

      sub_1000252FC(v19, type metadata accessor for B389PresentationConfig.Mode);
      return v30 & 1;
    }

    goto LABEL_13;
  }

  sub_100025418(v19, v13, type metadata accessor for B389PresentationConfig.Mode);
  v22 = *(sub_100005DCC(&unk_1001BA6E0, &unk_10016D920) + 48);
  v23 = v13[v22];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v34 + 8))(v13, v35);
LABEL_13:
    sub_10001259C(v19, &qword_1001BA738, &qword_10016D948);
LABEL_14:
    v30 = 0;
    return v30 & 1;
  }

  v24 = v20[v22];
  v26 = v34;
  v25 = v35;
  (*(v34 + 32))(v6, v20, v35);
  v27 = static UUID.== infix(_:_:)();
  v28 = *(v26 + 8);
  v28(v6, v25);
  v28(v13, v25);
  if ((v27 & 1) == 0)
  {
    sub_1000252FC(v19, type metadata accessor for B389PresentationConfig.Mode);
    goto LABEL_14;
  }

  v29 = v23 ^ v24;
LABEL_8:
  sub_1000252FC(v19, type metadata accessor for B389PresentationConfig.Mode);
  v30 = v29 ^ 1;
  return v30 & 1;
}

BOOL sub_100023358(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for B389PresentationConfig(0);
  if ((sub_100022F5C(a1 + v5[6], a2 + v5[6]) & 1) == 0 || *(a1 + v5[7]) != *(a2 + v5[7]) || *(a1 + v5[8]) != *(a2 + v5[8]) || *(a1 + v5[9]) != *(a2 + v5[9]) || *(a1 + v5[10]) != *(a2 + v5[10]) || *(a1 + v5[11]) != *(a2 + v5[11]))
  {
    return 0;
  }

  v6 = v5[12];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v12 = v5[13];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (!v16 || (*v13 != *v15 || v14 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = v5[14];
  v19 = *(a1 + v17);
  v18 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v22 = *v20;
  v21 = v20[1];
  if (v18 >> 60 != 15)
  {
    if (v21 >> 60 == 15)
    {
      goto LABEL_31;
    }

    sub_100025480(v19, v18);
    sub_100025480(v22, v21);
    v23 = sub_100022DF4(v19, v18, v22, v21);
    sub_100025404(v22, v21);
    sub_100025404(v19, v18);
    return v23;
  }

  if (v21 >> 60 != 15)
  {
LABEL_31:
    sub_100025480(v19, v18);
    sub_100025480(v22, v21);
    sub_100025404(v19, v18);
    sub_100025404(v22, v21);
    return 0;
  }

  sub_100025480(v19, v18);
  sub_100025480(v22, v21);
  sub_100025404(v19, v18);
  return 1;
}

uint64_t sub_1000235B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v48 = a4;
  v46 = a3;
  v58 = a1;
  v7 = type metadata accessor for DispatchTimeInterval();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = __chkstk_darwin(v7);
  v52 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = v44 - v10;
  v11 = sub_100005DCC(&qword_1001BA000, &unk_10016D4F0);
  __chkstk_darwin(v11 - 8);
  v44[0] = v44 - v12;
  v57 = type metadata accessor for DispatchTime();
  v47 = *(v57 - 8);
  v13 = __chkstk_darwin(v57);
  v49 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v50 = v44 - v15;
  v45 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v45);
  v44[1] = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000240C8(a2, v5 + OBJC_IVAR____TtC18SharingViewService13PushableTimer_noLaterThan);
  sub_1000122EC(0, &unk_1001BA820, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000252B4(&unk_1001BD5E0, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_100005DCC(qword_1001BA830, &qword_10016D9D8);
  sub_100025698(&unk_1001BD5F0, qword_1001BA830, &qword_10016D9D8, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v46;
  v22 = a2;
  v23 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  (*(v18 + 8))(v20, v17);
  *(v56 + OBJC_IVAR____TtC18SharingViewService13PushableTimer_timer) = v23;
  aBlock[4] = v48;
  aBlock[5] = v53;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  v24 = v44[0];
  aBlock[2] = sub_10001C544;
  aBlock[3] = &unk_1001904D0;
  _Block_copy(aBlock);
  v59 = _swiftEmptyArrayStorage;
  sub_1000252B4(&qword_1001BA7C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  sub_100005DCC(&unk_1001BBA90, &unk_10016D130);
  sub_100025698(&qword_1001BA7D0, &unk_1001BBA90, &unk_10016D130, &protocol conformance descriptor for [A]);
  v25 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v26 = DispatchWorkItem.init(flags:block:)();

  v27 = v57;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v48 = v26;
  OS_dispatch_source.setEventHandler(handler:)();
  swift_unknownObjectRelease();
  v53 = v22;
  sub_1000240C8(v22, v24);
  v28 = *(v25 + 48);
  if (v28(v24, 1, v27) == 1)
  {
    v29 = v49;
    static DispatchTime.distantFuture.getter();
    if (v28(v24, 1, v27) != 1)
    {
      sub_10001259C(v24, &qword_1001BA000, &unk_10016D4F0);
    }
  }

  else
  {
    v29 = v49;
    (*(v25 + 32))(v49, v24, v27);
  }

  sub_1000252B4(&qword_1001BA008, &type metadata accessor for DispatchTime, &protocol conformance descriptor for DispatchTime);
  v30 = v58;
  v31 = dispatch thunk of static Comparable.< infix(_:_:)();
  v32 = v50;
  if (v31)
  {
    (*(v25 + 32))(v50, v29, v27);
  }

  else
  {
    (*(v25 + 8))(v29, v27);
    (*(v25 + 16))(v32, v30, v27);
  }

  v33 = v25;
  swift_getObjectType();
  v35 = v54;
  v34 = v55;
  v36 = *(v54 + 104);
  v37 = v51;
  v36(v51, enum case for DispatchTimeInterval.never(_:), v55);
  v38 = v52;
  *v52 = 0;
  v36(v38, enum case for DispatchTimeInterval.nanoseconds(_:), v34);
  v39 = v32;
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();

  sub_10001259C(v53, &qword_1001BA000, &unk_10016D4F0);
  v40 = *(v33 + 8);
  v41 = v57;
  v40(v58, v57);
  v42 = *(v35 + 8);
  v42(v38, v34);
  v42(v37, v34);
  v40(v39, v41);
  return v56;
}

Swift::Int sub_100023D78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005DCC(&qword_1001BA750, &qword_10016D958);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t *sub_100023EE0(uint64_t *result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_15;
    }

    v5 = result[2];
    v4 = result[3];
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v3) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_25;
  }

  v3 = v3;
LABEL_10:
  if ((v3 - 0x1000000000000000) >> 61 == 7)
  {
    if ((v3 & 0x1FFFFFFFFFFFFFFFLL) == 4)
    {
      v7 = sub_1000196E8(result, a2);
      v8 = v7[1].u64[0];
      if (v8)
      {
        if (v8 > 7)
        {
          v9 = v8 & 0x7FFFFFFFFFFFFFF8;
          v11 = v7 + 3;
          v12 = 0uLL;
          v13 = v8 & 0x7FFFFFFFFFFFFFF8;
          v14 = 0uLL;
          do
          {
            v12 = vorrq_s8(v11[-1], v12);
            v14 = vorrq_s8(*v11, v14);
            v11 += 2;
            v13 -= 8;
          }

          while (v13);
          v15 = vorrq_s8(v14, v12);
          v16 = vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
          v10 = (v16.i32[0] | v16.i32[1]);
          if (v8 == v9)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v9 = 0;
          LODWORD(v10) = 0;
        }

        v17 = v8 - v9;
        v18 = &v7[2].i32[v9];
        do
        {
          v19 = *v18++;
          v10 = v19 | v10;
          --v17;
        }

        while (v17);
LABEL_22:

        return v10;
      }

      return 0;
    }

LABEL_15:
    v10 = &qword_10016D9C8;
    sub_100005DCC(&qword_1001BA7F0, &qword_10016D9C8);
    sub_100025698(&qword_1001BA7F8, &qword_1001BA7F0, &qword_10016D9C8, &unk_10016DDBC);
    swift_allocError();
    swift_willThrow();
    return v10;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t _s18SharingViewService10SDRunStateO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10018EEC8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000240C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005DCC(&qword_1001BA000, &unk_10016D4F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024138(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t *sub_100024150(uint64_t a1)
{
  v5 = *(a1 + 16);
  if (v5 >> 60)
  {
    __break(1u);
LABEL_23:
    sub_100020C64((v5 > 1), v1, 1);
    v6 = v26;
LABEL_4:
    v6[1].i64[0] = v1;
    v6[2].i16[v4] = v3;
    v7 = *(v2 + 33) << 8;
    v27 = v6;
    v8 = v6[1].u64[1];
    if (v1 >= v8 >> 1)
    {
      sub_100020C64((v8 > 1), v1 + 1, 1);
      v6 = v27;
    }

    v6[1].i64[0] = v1 + 1;
    v6[2].i16[v1] = v7;
    if (v1 < 3)
    {
      v9 = 0;
      LODWORD(v10) = 0;
LABEL_18:
      v22 = v1 - v9 + 1;
      v23 = &v6[2] + v9;
      do
      {
        v24 = *v23++;
        v10 = (v24 | v10);
        --v22;
      }

      while (v22);
LABEL_20:

      return v10;
    }

    v11 = v1 + 1;
    if (v1 >= 0xF)
    {
      v9 = v11 & 0x7FFFFFFFFFFFFFF0;
      v12 = v6 + 3;
      v13 = 0uLL;
      v14 = v11 & 0x7FFFFFFFFFFFFFF0;
      v15 = 0uLL;
      do
      {
        v13 = vorrq_s8(v12[-1], v13);
        v15 = vorrq_s8(*v12, v15);
        v12 += 2;
        v14 -= 16;
      }

      while (v14);
      v16 = vorrq_s8(v15, v13);
      *v16.i8 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
      v10 = (v16.i32[0] | v16.i32[1] | ((v16.i64[0] | HIDWORD(v16.i64[0])) >> 16));
      if (v11 == v9)
      {
        goto LABEL_20;
      }

      if ((v11 & 0xC) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      LOWORD(v10) = 0;
      v9 = 0;
    }

    v17 = v9;
    v9 = v11 & 0x7FFFFFFFFFFFFFFCLL;
    v18 = v10;
    v19 = (&v6[2] + 2 * v17);
    v20 = v17 - (v11 & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v21 = *v19++;
      v18 = vorr_s8(v21, v18);
      v20 += 4;
    }

    while (v20);
    v10 = (v18.i32[0] | v18.i32[1] | ((*&v18 | HIDWORD(*&v18)) >> 16));
    if (v11 == v9)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v5 == 2)
  {
    v2 = a1;
    v26 = _swiftEmptyArrayStorage;
    sub_100020C64(0, 2, 0);
    v6 = _swiftEmptyArrayStorage;
    v3 = *(v2 + 32);
    v4 = _swiftEmptyArrayStorage[2];
    v5 = _swiftEmptyArrayStorage[3];
    v1 = v4 + 1;
    if (v4 < v5 >> 1)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  v10 = &qword_10016D968;
  sub_100005DCC(&qword_1001BA760, &qword_10016D968);
  sub_100025698(&qword_1001BA768, &qword_1001BA760, &qword_10016D968, &unk_10016DDBC);
  swift_allocError();
  swift_willThrow();
  return v10;
}

uint64_t sub_1000243B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580592 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646F43726F6C6F63 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7375655A7369 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5079726574746162 && a2 == 0xEE0064616F6C7961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5479726574746162 && a2 == 0xED0000776F4C6F6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6572685469737372 && a2 == 0xED0000646C6F6873 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100146050 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E69766172676E65 && a2 == 0xED00006174614467)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t sub_100024758(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10018EF60, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void *sub_1000247A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005DCC(&qword_1001BA7E0, &qword_10016D9B8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10002499C()
{
  result = qword_1001BA038;
  if (!qword_1001BA038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BA038);
  }

  return result;
}

void sub_100024A4C(uint64_t a1)
{
  sub_100024AE4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100024AE4(uint64_t a1)
{
  if (!qword_1001BA140)
  {
    type metadata accessor for DispatchTime();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001BA140);
    }
  }
}

uint64_t sub_100024BE0(uint64_t a1, int a2)
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

uint64_t sub_100024C28(uint64_t result, int a2, int a3)
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

uint64_t sub_100024C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for B389PresentationConfig.Mode(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100024D68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for B389PresentationConfig.Mode(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100024E2C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100024E64(uint64_t a1)
{
  type metadata accessor for B389PresentationConfig.Mode(319);
  if (v1 <= 0x3F)
  {
    sub_100024F84(319, &qword_1001BA588, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      sub_100024F84(319, &qword_1001BA590, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_100024F84(319, &unk_1001BA598, &type metadata for Data);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100024F84(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100025020(uint64_t a1)
{
  sub_1000250B8();
  if (v1 <= 0x3F)
  {
    sub_1000250E8(319);
    if (v2 <= 0x3F)
    {
      sub_1000122EC(319, &unk_1001BA680, SFB389NFCPromptConfiguration_ptr);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void *sub_1000250B8()
{
  result = qword_1001BA670;
  if (!qword_1001BA670)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_1001BA670);
  }

  return result;
}

void sub_1000250E8(uint64_t a1)
{
  if (!qword_1001BA678)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001BA678);
    }
  }
}

unint64_t sub_100025154()
{
  result = qword_1001BA6B8;
  if (!qword_1001BA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BA6B8);
  }

  return result;
}

unint64_t sub_1000251A8()
{
  result = qword_1001BA6C0;
  if (!qword_1001BA6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BA6C0);
  }

  return result;
}

unint64_t sub_1000251FC()
{
  result = qword_1001BA6C8;
  if (!qword_1001BA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BA6C8);
  }

  return result;
}

uint64_t sub_100025250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for B389PresentationConfig.Mode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000252B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000252FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10002535C()
{
  result = qword_1001BA700;
  if (!qword_1001BA700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BA700);
  }

  return result;
}

unint64_t sub_1000253B0()
{
  result = qword_1001BA710;
  if (!qword_1001BA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BA710);
  }

  return result;
}

uint64_t sub_100025404(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000083FC(result, a2);
  }

  return result;
}

uint64_t sub_100025418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100025480(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_100005E64(a1, a2);
  }
}

unint64_t sub_100025494()
{
  result = qword_1001BA730;
  if (!qword_1001BA730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BA730);
  }

  return result;
}

void sub_1000254E8(uint64_t result, unint64_t a2, void *a3)
{
  if (a3 != 1)
  {
    sub_1000254F8(result, a2, a3);
  }
}

void sub_1000254F8(uint64_t a1, unint64_t a2, void *a3)
{
  if (a3)
  {
    sub_1000083FC(a1, a2);
  }
}

unint64_t sub_10002553C()
{
  result = qword_1001BA7A8;
  if (!qword_1001BA7A8)
  {
    sub_1000122EC(255, &qword_1001BA7A0, CALayer_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BA7A8);
  }

  return result;
}

uint64_t sub_1000255F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100025624()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100025698(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000072B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000256E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for B389PresentationConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for B389PresentationConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for B389PresentationConfig.Mode.DecodeError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for B389PresentationConfig.Mode.DecodeError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for B389SetupMainViewController.FindMyFinalizationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for B389SetupMainViewController.FindMyFinalizationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100025B50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100025B68(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100025B7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100025BCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *sub_100025C24(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

unint64_t sub_100025C5C()
{
  result = qword_1001BA940;
  if (!qword_1001BA940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BA940);
  }

  return result;
}

unint64_t sub_100025CB4()
{
  result = qword_1001BA948;
  if (!qword_1001BA948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BA948);
  }

  return result;
}

unint64_t sub_100025D0C()
{
  result = qword_1001BA950;
  if (!qword_1001BA950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BA950);
  }

  return result;
}

unint64_t sub_100025D80()
{
  result = qword_1001BA958;
  if (!qword_1001BA958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BA958);
  }

  return result;
}

unint64_t sub_100025DD8()
{
  result = qword_1001BA960;
  if (!qword_1001BA960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BA960);
  }

  return result;
}

unint64_t sub_100025E30()
{
  result = qword_1001BA968;
  if (!qword_1001BA968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BA968);
  }

  return result;
}

unint64_t sub_100025E88()
{
  result = qword_1001BA970;
  if (!qword_1001BA970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BA970);
  }

  return result;
}

id SVSAdjustedImageView.__allocating_init(image:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithImage:a1];

  return v3;
}

id SVSAdjustedImageView.init(image:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SVSAdjustedImageView();
  v3 = objc_msgSendSuper2(&v5, "initWithImage:", a1);

  return v3;
}

id SVSAdjustedImageView.__allocating_init(image:highlightedImage:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithImage:a1 highlightedImage:a2];

  return v5;
}

id SVSAdjustedImageView.init(image:highlightedImage:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SVSAdjustedImageView();
  v5 = objc_msgSendSuper2(&v7, "initWithImage:highlightedImage:", a1, a2);

  return v5;
}

id sub_1000261CC(uint64_t (*a1)(void), double a2, double a3, double a4, double a5)
{
  v11.receiver = v5;
  v11.super_class = a1();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a2, a3, a4, a5);
}

id SVSMediaPlayerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id sub_1000262CC(void *a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1000264F8(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t))
{
  v12.receiver = a1;
  v12.super_class = a7(a1, a6);
  return objc_msgSendSuper2(&v12, "initWithFrame:", a2, a3, a4, a5);
}

id sub_100026584(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  v8.receiver = a1;
  v8.super_class = a4(a1, a2);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", v5);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_100026618(void *a1)
{
  v1 = [a1 sublayers];
  if (v1)
  {
    v2 = v1;
    sub_1000122EC(0, &qword_1001BA7A0, CALayer_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = sub_100026618(v6);

      sub_100027574(v9);
      ++v5;
      if (v8 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  sub_100027484(_swiftEmptyArrayStorage);
  v10 = sub_1000DE28C(v3);

  return v10;
}

char *sub_10002678C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = OBJC_IVAR____TtC18SharingViewService16SVSProxVideoView_movieView;
  type metadata accessor for MediaPlayerView();
  *&v3[v8] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = &v3[OBJC_IVAR____TtC18SharingViewService16SVSProxVideoView_playing];
  *v9 = a1;
  *(v9 + 1) = a2;
  v9[16] = v5;
  v10 = objc_allocWithZone(AVMutableComposition);
  sub_10002799C(a1, a2, v5);
  v11 = [v10 init];
  v51 = v5;
  v49 = a1;
  v50 = a2;
  if (v5)
  {
    if (v5 == 1)
    {
      sub_100026F24(&v54, 0, a1, v11);
      v12 = 0;
      v13 = v55;
      v47 = v56;
      v48 = v54;
      v14 = v58;
      v45 = v59;
      v46 = v57;
    }

    else
    {
      sub_100026DA0(a1, v11);
      v15 = a1;
      sub_100026F24(&v54, a1, a2, v11);
      v13 = v55;
      v47 = v56;
      v48 = v54;
      v14 = v58;
      v45 = v59;
      v46 = v57;

      v12 = 0;
    }
  }

  else
  {
    sub_100026DA0(a1, v11);
    v47 = 0;
    v48 = 0;
    v13 = 0;
    v45 = 0;
    v46 = 0;
    v14 = 0;
    v12 = 1;
  }

  sub_100005DCC(&qword_1001BBB00, &unk_10016CF10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016D240;
  *(inited + 32) = [*&v4[v8] layer];
  v17 = [*&v4[v8] layer];
  v18 = sub_100026618(v17);

  v52[0] = inited;
  result = sub_100027574(v18);
  if (inited >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v20 = result;
    if (!result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v20 = *((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_15;
    }
  }

  if (v20 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v20; ++i)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v22 = *(inited + 8 * i + 32);
    }

    v23 = v22;
    [v22 setAllowsDisplayCompositing:{0, v45, v46, v47, v48, v49, v50}];
  }

LABEL_15:

  v24 = [objc_allocWithZone(AVPlayerItem) initWithAsset:v11];
  v25 = v24;
  if ((v12 & 1) == 0)
  {
    v52[0] = v48;
    v52[1] = v13;
    v52[2] = v47;
    v52[3] = v46;
    v52[4] = v14;
    v52[5] = v45;
    [v24 setLoopTimeRange:v52];
  }

  v26 = [objc_allocWithZone(AVPlayer) initWithPlayerItem:v25];
  [v26 _setDisallowsVideoLayerDisplayCompositing:1];
  v27 = type metadata accessor for SVSProxVideoView();
  v53.receiver = v4;
  v53.super_class = v27;
  v28 = objc_msgSendSuper2(&v53, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v26 setPreventsDisplaySleepDuringVideoPlayback:0];
  [v26 _setDisallowsAutoPauseOnRouteRemovalIfNoAudio:1];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = OBJC_IVAR____TtC18SharingViewService16SVSProxVideoView_movieView;
  [*&v28[OBJC_IVAR____TtC18SharingViewService16SVSProxVideoView_movieView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v28 addSubview:*&v28[v29]];
  v30 = [*&v28[v29] leftAnchor];
  v31 = [v28 leftAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  [v32 setActive:1];
  v33 = [*&v28[v29] rightAnchor];
  v34 = [v28 rightAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  [v35 setActive:1];
  v36 = [*&v28[v29] topAnchor];
  v37 = [v28 topAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  [v38 setActive:1];
  v39 = [*&v28[v29] bottomAnchor];
  v40 = [v28 bottomAnchor];

  v41 = [v39 constraintEqualToAnchor:v40];
  [v41 setActive:1];

  [v26 setAllowsExternalPlayback:0];
  v42 = *&v28[v29];
  v43 = v26;
  v44 = [v42 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setPlayer:v43];

  sub_1000279E8(v49, v50, v51);
  return v28;
}

id sub_100026DA0(void *a1, void *a2)
{
  timescale = kCMTimeZero.timescale;
  flags = kCMTimeZero.flags;
  epoch = kCMTimeZero.epoch;
  v7 = [a1 asset];
  [v7 duration];
  v8 = value;
  v9 = v21;
  v10 = v20;

  v11 = [a1 asset];
  v24 = v9;
  v25 = 0;
  v18 = epoch;
  value = kCMTimeZero.value;
  v20 = __PAIR64__(flags, timescale);
  v21 = epoch;
  v22 = v8;
  v23 = v10;
  v15 = kCMTimeZero.value;
  v16 = timescale;
  v17 = flags;
  LODWORD(a2) = [a2 insertTimeRange:&value ofAsset:v11 atTime:&v15 error:&v25];

  v12 = v25;
  if (a2)
  {

    return v12;
  }

  else
  {
    v14 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_100026F24(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, void *a3@<X0>, void *a4@<X2>)
{
  v6 = *&kCMTimeZero.timescale;
  epoch = kCMTimeZero.epoch;
  value = kCMTimeZero.value;
  v9 = epoch;
  v10 = v6;
  if (a2)
  {
    v11 = [a2 asset];
    [v11 duration];
    value = lhs.value;
    v10 = *&lhs.timescale;
    v9 = lhs.epoch;
  }

  lhs.value = kCMTimeZero.value;
  *&lhs.timescale = v6;
  lhs.epoch = epoch;
  rhs.value = value;
  *&rhs.timescale = v10;
  rhs.epoch = v9;
  CMTimeAdd(&v33, &lhs, &rhs);
  v27 = v33.value;
  flags = v33.flags;
  timescale = v33.timescale;
  v13 = v33.epoch;
  v14 = [a3 asset];
  [v14 duration];
  v15 = lhs.value;
  v16 = lhs.epoch;
  v17 = *&lhs.timescale;

  v18 = [a3 asset];
  v32 = v16;
  v33.value = 0;
  lhs.value = kCMTimeZero.value;
  *&lhs.timescale = v6;
  lhs.epoch = epoch;
  v30 = v15;
  v31 = v17;
  rhs.value = v27;
  rhs.timescale = timescale;
  rhs.flags = flags;
  rhs.epoch = v13;
  v19 = [a4 insertTimeRange:&lhs ofAsset:v18 atTime:&rhs error:&v33];

  if (v19)
  {
    v20 = v33.value;
    v21 = [a3 asset];
    [v21 duration];
    v22 = lhs.value;
    v23 = lhs.epoch;
    v24 = *&lhs.timescale;

    *a1 = v27;
    *(a1 + 2) = timescale;
    *(a1 + 3) = flags;
    a1[2] = v13;
    a1[3] = v22;
    a1[4] = v24;
    a1[5] = v23;
  }

  else
  {
    v25 = v33.value;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

id sub_100027210(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id sub_1000272EC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

__n128 sub_1000273CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000273E0(uint64_t a1, unsigned int a2)
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

uint64_t sub_100027428(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100027484(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000278FC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100027A34(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100027574(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1000278FC(result, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_1000229B8(&v34, (v3 + 8 * v13 + 32), v14, v8);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_100024148(v34);
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_11;
    }

    sub_1000122EC(0, &qword_1001BA7A0, CALayer_ptr);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (__CocoaSet.Iterator.next()())
      {
        sub_1000122EC(0, &qword_1001BA7A0, CALayer_ptr);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1000278FC(uint64_t a1, char a2)
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

id sub_10002799C(id result, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }

    v4 = result;
    result = a2;
  }

  return result;
}

void sub_1000279E8(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t sub_100027A34(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100027D74(&qword_1001BAA38, &qword_1001BAA30, &qword_10016DFF0);
          for (i = 0; i != v6; ++i)
          {
            sub_100005DCC(&qword_1001BAA30, &qword_10016DFF0);
            v9 = sub_1000DD364(v13, i, a3);
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
        sub_1000122EC(0, &qword_1001BA7A0, CALayer_ptr);
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

uint64_t sub_100027BD4(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100027D74(&qword_1001BAA50, &qword_1001BAA48, &qword_10016DFF8);
          for (i = 0; i != v6; ++i)
          {
            sub_100005DCC(&qword_1001BAA48, &qword_10016DFF8);
            v9 = sub_1000DD364(v13, i, a3);
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
        sub_1000122EC(0, &qword_1001BBBB0, SFDevice_ptr);
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

uint64_t sub_100027D74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000072B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100027DD0()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BAA58);
  v1 = sub_10000D298(v0, qword_1001BAA58);
  if (qword_1001B92C8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C3900);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100027E98(__int128 *a1)
{
  v3 = a1[3];
  v4 = a1[5];
  v28 = a1[4];
  v29 = v4;
  v5 = a1[1];
  v6 = a1[2];
  v24 = *a1;
  v25 = v5;
  v30 = *(a1 + 12);
  v26 = v6;
  v27 = v3;
  v7 = String._bridgeToObjectiveC()();
  [v1 setTitle:v7];

  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v10 = String._bridgeToObjectiveC()();
  *&v33 = sub_100028DEC;
  *(&v33 + 1) = v9;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v32 = sub_10001BE90;
  *(&v32 + 1) = &unk_100190890;
  v11 = _Block_copy(&aBlock);
  v12 = [objc_opt_self() actionWithTitle:v10 style:0 handler:v11];

  _Block_release(v11);

  v13 = &v1[OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_model];
  v14 = *&v1[OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_model + 80];
  v35 = *&v1[OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_model + 64];
  v36 = v14;
  v37 = *&v1[OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_model + 96];
  v15 = *&v1[OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_model + 16];
  aBlock = *&v1[OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_model];
  v32 = v15;
  v16 = *&v1[OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_model + 48];
  v33 = *&v1[OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_model + 32];
  v34 = v16;
  v17 = v25;
  *v13 = v24;
  *(v13 + 1) = v17;
  v18 = v26;
  v19 = v27;
  v20 = v28;
  v21 = v29;
  *(v13 + 12) = v30;
  *(v13 + 4) = v20;
  *(v13 + 5) = v21;
  *(v13 + 2) = v18;
  *(v13 + 3) = v19;
  sub_100028E0C(a1, v23);
  return sub_100028E68(&aBlock);
}

void sub_1000280C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100028B24();
  }
}

void sub_100028118()
{
  v38.receiver = v0;
  v38.super_class = type metadata accessor for PasswordSharingDoneViewController();
  objc_msgSendSuper2(&v38, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_model + 16];
  v39[0] = *&v0[OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_model];
  v2 = *&v0[OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_model + 64];
  v3 = *&v0[OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_model + 80];
  v4 = *&v0[OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_model + 32];
  v40 = *&v0[OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_model + 48];
  v41 = v2;
  v42 = v3;
  v43 = *&v0[OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_model + 96];
  v39[1] = v1;
  v39[2] = v4;
  if (*(&v39[0] + 1))
  {
    v5 = v40;
    sub_100028ED0(v39, aBlock);
    [v0 setDismissalType:3];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v7 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100028F40;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001BE90;
    aBlock[3] = &unk_1001908B8;
    v8 = _Block_copy(aBlock);
    v9 = [objc_opt_self() actionWithTitle:v7 style:0 handler:v8];

    _Block_release(v8);

    [v0 setDismissButtonAction:v9];

    v10 = [objc_opt_self() configurationWithPointSize:72.0];
    v11 = String._bridgeToObjectiveC()();
    v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

    v13 = [objc_allocWithZone(UIImageView) initWithImage:v12];
    [v13 setTintColor:v5];
    v14 = v13;
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v0 contentView];
    [v15 addSubview:v14];

    v16 = [v0 contentView];
    v17 = [v16 mainContentGuide];

    v18 = objc_opt_self();
    sub_100005DCC(&qword_1001BBB00, &unk_10016CF10);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10016D4A0;
    v20 = [v14 topAnchor];
    v21 = [v17 topAnchor];
    v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21];

    *(v19 + 32) = v22;
    v23 = [v14 bottomAnchor];
    v24 = [v17 bottomAnchor];
    v25 = [v23 constraintLessThanOrEqualToAnchor:v24];

    *(v19 + 40) = v25;
    v26 = [v14 centerXAnchor];
    v27 = [v17 centerXAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    *(v19 + 48) = v28;
    v29 = [v14 centerYAnchor];

    v30 = [v17 centerYAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    *(v19 + 56) = v31;
    sub_10000D1F4();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 activateConstraints:isa];

    sub_100028E68(v39);
  }

  else
  {
    if (qword_1001B92F0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000D298(v33, qword_1001BAA58);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Done view: model not available", v36, 2u);
    }
  }
}

void sub_1000286C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1001B92F0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000D298(v4, qword_1001BAA58);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Done dismissed", v7, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000A4AB4(5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100028848(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for PasswordSharingDoneViewController();
  objc_msgSendSuper2(&v9, "viewDidAppear:", a1 & 1);
  if (qword_1001B92F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BAA58);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Done ViewDidAppear", v7, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000A5054(*(v2 + OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_type));
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000289D0(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PasswordSharingDoneViewController();
  objc_msgSendSuper2(&v7, "viewDidDisappear:", a1 & 1);
  if (qword_1001B92F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000D298(v3, qword_1001BAA58);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Done ViewDidDisappear", v6, 2u);
  }
}

uint64_t sub_100028B24()
{
  v1 = v0;
  if (qword_1001B92F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BAA58);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Done button tapped", v5, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_type))
    {
      sub_1000A4AB4(5);
    }

    else
    {
      sub_1000A5D30();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100028CF4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PasswordSharingDoneViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100028DB4(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_100028DF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100028E68(uint64_t a1)
{
  v2 = sub_100005DCC(&qword_1001BAAB0, &qword_10016E038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005DCC(&qword_1001BAAB0, &qword_10016E038);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100028F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
  }
}

uint64_t sub_100028FDC()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BAAB8);
  v1 = sub_10000D298(v0, qword_1001BAAB8);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000290A4()
{
  if (qword_1001B92F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000D298(v1, qword_1001BAAB8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *&v2[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_nfcConfig];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "nfcConfig = %@", v5, 0xCu);
    sub_10001259C(v6, &unk_1001BBA60, &qword_10016D230);
  }

  v9 = OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_coalescer;
  v10 = *&v2[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_coalescer];
  if (!v10)
  {
    v12 = [objc_allocWithZone(CUCoalescer) init];
    v13 = *&v2[v9];
    *&v2[v9] = v12;
    v14 = v12;

    if (v14)
    {
      sub_1000122EC(0, &qword_1001BCE90, OS_dispatch_queue_ptr);
      v15 = static OS_dispatch_queue.main.getter();
      [v14 setDispatchQueue:v15];
    }

    v10 = *&v2[v9];
    if (v10)
    {
      [v10 setMinDelay:0.5];
      v16 = *&v2[v9];
      if (v16)
      {
        v17 = swift_allocObject();
        *(v17 + 16) = v2;
        v21[4] = sub_10002E56C;
        v21[5] = v17;
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 1107296256;
        v21[2] = sub_10001C544;
        v21[3] = &unk_100190908;
        v18 = _Block_copy(v21);
        v19 = v2;
        v20 = v16;

        [v20 setActionHandler:v18];
        _Block_release(v18);

        v10 = *&v2[v9];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  return [v10 trigger];
}

void sub_100029364(char a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for B389NFCStatusViewController();
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  v3 = sub_1000A1F84(v1, 0, 390.0);
  v5 = v4;

  v6 = [v1 containerView];
  [v6 setSwipeDismissible:1];

  [v1 setModalPresentationStyle:4];
  if (*&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_nfcConfig])
  {
    v7 = *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_heightConstraint];
    *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_heightConstraint] = v5;
    v8 = v5;

    [v8 setConstant:390.0];
    v9 = [v1 containerView];
    [v9 layoutIfNeeded];

    *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_uiStartTicks] = UpTicks()();
    sub_1000295B0();
  }

  else
  {
    if (qword_1001B92F8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000D298(v10, qword_1001BAAB8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No NFC config.", v13, 2u);
    }
  }
}

void sub_1000295B0()
{
  v2 = v0;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v234 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v0[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_heightConstraint])
  {
    if (qword_1001B92F8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000D298(v23, qword_1001BAAB8);
    v249 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v249, v24))
    {
      goto LABEL_24;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "No heightConstraint.";
LABEL_23:
    _os_log_impl(&_mh_execute_header, v249, v24, v26, v25, 2u);

    goto LABEL_24;
  }

  v8 = OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_nfcConfig;
  v9 = *&v0[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_nfcConfig];
  if (!v9)
  {
    if (qword_1001B92F8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000D298(v31, qword_1001BAAB8);
    v249 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v249, v24))
    {
      goto LABEL_24;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "No NFC config.";
    goto LABEL_23;
  }

  v247 = v5;
  v249 = v9;
  v10 = [v0 mainController];
  if (v10)
  {
    v11 = *&v10[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_assetBundle];
    v12 = v10;
    v13 = v11;

    if (v11)
    {
      v14 = (v2 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_onDoneAction);
      v15 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_onDoneAction);
      v16 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_onDoneAction + 8);
      *v14 = 0;
      v14[1] = 0;
      sub_100012050(v15, v16);
      v17 = OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_previousNFCConfig;
      v18 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_previousNFCConfig);
      v19 = &off_1001AD000;
      v245 = v13;
      if (v18)
      {
        if ([v18 promptState] == 2)
        {
          v20 = [v249 promptState];
          v21 = v20 == 3;
          v22 = *(v2 + v17);
          if (!v22)
          {
            if (v20 != 3)
            {
              goto LABEL_32;
            }

LABEL_30:
            v35 = objc_opt_self();
            v36 = swift_allocObject();
            *(v36 + 16) = v2;
            v254 = sub_10002E7AC;
            v255 = v36;
            aBlock = _NSConcreteStackBlock;
            v251 = 1107296256;
            v252 = sub_10001C544;
            v253 = &unk_100190B38;
            v37 = _Block_copy(&aBlock);
            v38 = v2;

            v39 = swift_allocObject();
            *(v39 + 16) = v38;
            v254 = sub_10002E81C;
            v255 = v39;
            aBlock = _NSConcreteStackBlock;
            v251 = 1107296256;
            v252 = sub_1000BA87C;
            v253 = &unk_100190B88;
            v40 = _Block_copy(&aBlock);
            v41 = v38;

            [v35 animateWithDuration:0x20000 delay:v37 options:v40 animations:0.5 completion:0.0];
            _Block_release(v40);
            _Block_release(v37);

            return;
          }
        }

        else
        {
          v22 = *(v2 + v17);
          if (!v22)
          {
            goto LABEL_32;
          }

          v21 = 0;
        }

        v33 = [v22 promptState];
        v34 = [v249 promptState];
        if (v21)
        {
          goto LABEL_30;
        }

        if (v33 != v34)
        {
          v209 = OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_subviewsToRemoveOnUpdate;
          swift_beginAccess();
          v210 = *(v2 + v209);
          if (v210 >> 62)
          {
            v211 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v211 = *((v210 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v240 = v4;
          v241 = v7;
          v238 = v8;
          if (v211)
          {
            v239 = v14;
            v248 = objc_opt_self();
            if (v211 < 1)
            {
              __break(1u);
              goto LABEL_132;
            }

            v246 = (v210 & 0xC000000000000001);

            v212 = 0;
            v213 = v211;
            do
            {
              if (v246)
              {
                v214 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v214 = *(v210 + 8 * v212 + 32);
              }

              v215 = v214;
              ++v212;
              v216 = swift_allocObject();
              *(v216 + 16) = v215;
              v254 = sub_10002E884;
              v255 = v216;
              aBlock = _NSConcreteStackBlock;
              v251 = 1107296256;
              v252 = sub_10001C544;
              v253 = &unk_100190BD8;
              v217 = _Block_copy(&aBlock);
              v218 = v215;

              v219 = swift_allocObject();
              *(v219 + 16) = v2;
              *(v219 + 24) = v218;
              v254 = sub_10002E8D8;
              v255 = v219;
              aBlock = _NSConcreteStackBlock;
              v251 = 1107296256;
              v252 = sub_1000BA87C;
              v253 = &unk_100190C28;
              v220 = _Block_copy(&aBlock);
              v221 = v2;
              v222 = v218;

              [v248 animateWithDuration:0x20000 delay:v217 options:v220 animations:0.5 completion:0.0];
              _Block_release(v220);
              _Block_release(v217);
            }

            while (v213 != v212);
            v48 = 1;
            v14 = v239;
            v19 = &off_1001AD000;
            goto LABEL_42;
          }

          v48 = 1;
LABEL_44:
          v7 = OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_subviewsToRemoveOnUpdate;
          swift_beginAccess();
          *&v7[v2] = _swiftEmptyArrayStorage;

          v243 = [v249 v19[117]];
          v49 = [v2 containerView];
          isa = setupTitleLabel(inContainerView:textAlignment:)(v49, NSTextAlignmentCenter).super.super.super.isa;

          swift_beginAccess();
          v51 = isa;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v239 = v14;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          v52 = [v249 localizedTitle];
          [(objc_class *)v51 setText:v52];

          if (v48)
          {
            v1 = 0.0;
          }

          else
          {
            v1 = 1.0;
          }

          [(objc_class *)v51 setAlpha:v1];
          v53 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_titleLabel);
          *(v2 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_titleLabel) = v51;
          v246 = v51;

          v54 = [objc_allocWithZone(UILabel) init];
          swift_beginAccess();
          v55 = v54;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v242 = v48;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          v56 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_msgLbl);
          *(v2 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_msgLbl) = v55;
          v57 = v55;

          v58 = objc_opt_self();
          v59 = [v58 defaultFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:0x8000 options:0];
          if (!v59)
          {
            goto LABEL_134;
          }

          v60 = v59;
          v61 = objc_opt_self();
          v62 = [v61 fontWithDescriptor:v60 size:0.0];

          [v57 setFont:v62];
          v244 = objc_opt_self();
          v63 = [v244 blackColor];
          [v57 setTextColor:v63];

          [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v57 setNumberOfLines:0];
          v248 = v57;
          [v57 setAlpha:v1];
          v64 = [objc_allocWithZone(UILabel) init];
          swift_beginAccess();
          v65 = v64;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v237 = *((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          v66 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_numberLbl);
          *(v2 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_numberLbl) = v65;
          v8 = v65;

          v67 = [v58 defaultFontDescriptorWithTextStyle:UIFontTextStyleSubhead addingSymbolicTraits:0x8000 options:0];
          if (!v67)
          {
            goto LABEL_135;
          }

          v68 = v67;
          v69 = [v61 fontWithDescriptor:v67 size:0.0];

          [v8 setFont:v69];
          v70 = [v244 secondaryLabelColor];
          [v8 setTextColor:v70];

          [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v8 setNumberOfLines:1];
          [v8 setAlpha:v1];
          if (v243 == 4)
          {
            v243 = objc_opt_self();
            v71 = [v243 mainBundle];
            v247 = "person.circle.fill";
            v72 = String._bridgeToObjectiveC()();
            v73 = String._bridgeToObjectiveC()();
            v74 = sub_1001279D0(v71, v72, v73);

            v19 = &selRef_applicationProxyForIdentifier_;
            if (!v74)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v74 = String._bridgeToObjectiveC()();
            }

            [(objc_class *)v246 setText:v74];

            v75 = [v249 phoneNumber];
            if (v75)
            {
              v76 = v75;
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v77 = String.count.getter();

              LOBYTE(v13) = v77 > 0;
            }

            else
            {
              LOBYTE(v13) = 0;
            }

            v44 = [v2 containerView];
            sub_1000A81E4(v44);
            v43 = v157;
            v4 = [v43 bottomAnchor];
            v14 = [v44 bottomAnchor];
            if (qword_1001B9448 == -1)
            {
LABEL_87:
              v158 = [v4 constraintEqualToAnchor:v14 constant:-*(&xmmword_1001BD608 + 1)];

              LODWORD(v159) = 1148846080;
              [v158 setPriority:v159];
              [v158 setActive:1];

              [v43 setAlpha:v1];
              swift_beginAccess();
              v160 = v43;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              swift_endAccess();
              v161 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_bigBtn);
              *(v2 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_bigBtn) = v160;
              v162 = v160;

              v163 = [v244 labelColor];
              [v162 setTitleColor:v163 forState:0];

              v164 = v248;
              if (v13)
              {
                [v162 addTarget:v2 action:"contactPressed" forControlEvents:64];
              }

              else
              {
                [v162 addTarget:v2 action:"_dismissX" forControlEvents:64];
              }

              v165 = [v243 mainBundle];
              v166 = String._bridgeToObjectiveC()();
              v167 = String._bridgeToObjectiveC()();
              v168 = sub_1001279D0(v165, v166, v167);

              if (!v168)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v168 = String._bridgeToObjectiveC()();
              }

              [v162 setTitle:v168 forState:0];

              v169 = [v2 v19[66]];
              [v169 addSubview:v164];

              [v164 setTextAlignment:1];
              v170 = [v249 userMessage];
              if (v170)
              {
                v171 = v170;
                static String._unconditionallyBridgeFromObjectiveC(_:)();
              }

              v172 = String._bridgeToObjectiveC()();

              [v164 setText:v172];

              v173 = [v2 containerView];
              [v173 addSubview:v8];

              [v8 setTextAlignment:1];
              v174 = [v249 message];
              [v8 setText:v174];

              v175 = [v8 centerXAnchor];
              v176 = v246;
              v177 = [(objc_class *)v246 centerXAnchor];
              v178 = [v175 constraintEqualToAnchor:v177];

              [v178 setActive:1];
              v179 = [v8 widthAnchor];
              v180 = [v162 widthAnchor];
              v181 = [v179 constraintEqualToAnchor:v180];

              [v181 setActive:1];
              v247 = v162;
              v182 = [v8 topAnchor];
              v183 = [(objc_class *)v176 bottomAnchor];

              v184 = [v182 constraintEqualToAnchor:v183 constant:12.0];
              [v184 setActive:1];

              v185 = [v248 topAnchor];
              v186 = [v8 bottomAnchor];
              v187 = v8;

              v188 = [v185 constraintEqualToAnchor:v186 constant:20.0];
              [v188 setActive:1];

              v189 = [v248 widthAnchor];
              v190 = v248;
              v191 = v247;
              v192 = [v247 widthAnchor];
              v193 = [v189 constraintEqualToAnchor:v192];

              [v193 setActive:1];
              v194 = [v190 centerXAnchor];
              v195 = [v2 containerView];
              v196 = [v195 centerXAnchor];

              v197 = [v194 constraintEqualToAnchor:v196];
              [v197 setActive:1];

              v198 = [v191 topAnchor];
              v199 = [v190 bottomAnchor];

              v200 = [v198 constraintGreaterThanOrEqualToAnchor:v199 constant:16.0];
              [v200 setActive:1];

              v107 = v245;
              if (!v242)
              {
                goto LABEL_98;
              }

LABEL_97:
              v201 = objc_opt_self();
              v202 = swift_allocObject();
              *(v202 + 16) = v2;
              v254 = sub_10002E79C;
              v255 = v202;
              aBlock = _NSConcreteStackBlock;
              v251 = 1107296256;
              v252 = sub_10001C544;
              v253 = &unk_100190AC0;
              v203 = _Block_copy(&aBlock);
              v204 = v2;

              [v201 animateWithDuration:0x10000 delay:v203 options:0 animations:0.5 completion:0.3];
              _Block_release(v203);
LABEL_98:
              v205 = [v2 containerView];
              v206 = setupXButton(inContainerView:)(v205).super.super.super.super.isa;

              swift_beginAccess();
              v207 = v206;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              swift_endAccess();
              [(objc_class *)v207 addTarget:v2 action:"_dismissX" forControlEvents:64];
              v208 = [v2 containerView];
              [v208 layoutIfNeeded];

              return;
            }

LABEL_126:
            swift_once();
            goto LABEL_87;
          }

          v78 = String._bridgeToObjectiveC()();
          v79 = String._bridgeToObjectiveC()();
          v80 = [v245 URLForResource:v78 withExtension:v79];

          if (!v80)
          {
            goto LABEL_136;
          }

          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v81 = objc_allocWithZone(AVURLAsset);
          URL._bridgeToObjectiveC()(v82);
          v84 = v83;
          v85 = [v81 initWithURL:v83 options:0];

          v86 = [objc_allocWithZone(AVPlayerItem) initWithAsset:v85];
          objc_allocWithZone(type metadata accessor for SVSProxVideoView());
          v236 = v86;
          v87 = sub_10002678C(v86, 0, 1);
          v88 = OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_player;
          v89 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_player);
          *(v2 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_player) = v87;

          v90 = *(v2 + v88);
          if (v242)
          {
            v91 = 0.0;
            if (v90)
            {
LABEL_65:
              [v90 setAlpha:v91];
              v92 = *(v2 + v88);
              if (!v92)
              {
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
LABEL_139:
                __break(1u);
                goto LABEL_140;
              }

              swift_beginAccess();
              v93 = v92;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v94 = *((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x10);
              v95 = *((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x18);
              v237 = v88;
              if (v94 >= v95 >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v88 = v237;
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              swift_endAccess();
              v96 = *(v2 + v88);
              if (!v96)
              {
                goto LABEL_138;
              }

              v97 = v96;
              v98 = [v2 containerView];
              v99 = sub_1000A72CC(v97, v98, 260.0);

              v235 = v99;
              [v99 setConstant:15.0];
              if (v243 == 1)
              {

                v100 = [v2 containerView];
                v101.super.super.super.super.isa = setupOptionButton(inContainerView:)(v100).super.super.super.super.isa;

                v102 = [objc_opt_self() mainBundle];
                v103 = String._bridgeToObjectiveC()();
                v104 = String._bridgeToObjectiveC()();
                v105 = sub_1001279D0(v102, v103, v104);

                if (!v105)
                {
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v105 = String._bridgeToObjectiveC()();
                }

                [(objc_class *)v101.super.super.super.super.isa setTitle:v105 forState:0];

                [(objc_class *)v101.super.super.super.super.isa setAlpha:v1];
                swift_beginAccess();
                v106 = v101.super.super.super.super.isa;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                v107 = v245;
                if (*((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                swift_endAccess();
                v108 = *&v238[v2];
                v109 = swift_allocObject();
                *(v109 + 16) = v108;
                v110 = v239;
                v111 = *v239;
                v112 = v239[1];
                *v239 = sub_10002E7A4;
                v110[1] = v109;
                v113 = v108;
                sub_100012050(v111, v112);
                [(objc_class *)v106 addTarget:v2 action:"_dismiss" forControlEvents:64];

LABEL_121:
                v232 = [v2 containerView];
                if (*(v2 + v237))
                {
                  v233 = v232;
                  v187 = v8;
                  [v232 sendSubviewToBack:?];

                  v240[1](v241, v247);
                  v190 = v248;
                  if (!v242)
                  {
                    goto LABEL_98;
                  }

                  goto LABEL_97;
                }

                goto LABEL_139;
              }

              v114 = [v2 containerView];
              v239 = v85;
              v115 = v248;
              [v114 addSubview:v248];

              v116 = [v249 message];
              [v115 setText:v116];

              v117 = [v244 secondaryLabelColor];
              [v115 setTextColor:v117];

              [v115 setTextAlignment:1];
              v118 = [v115 topAnchor];
              v119 = v246;
              v120 = [(objc_class *)v246 bottomAnchor];

              v121 = [v118 constraintEqualToAnchor:v120 constant:12.0];
              [v121 setActive:1];

              v122 = [v115 heightAnchor];
              v123 = [v122 constraintEqualToConstant:20.0];

              [v123 setActive:1];
              v124 = [v115 widthAnchor];
              v125 = [v2 containerView];
              v126 = [v125 widthAnchor];

              v127 = [v124 constraintEqualToAnchor:v126];
              [v127 setActive:1];

              v128 = [v115 centerXAnchor];
              v85 = v239;
              v129 = [v2 containerView];
              v130 = [v129 centerXAnchor];

              v131 = [v128 constraintEqualToAnchor:v130];
              v107 = v245;
              [v131 setActive:1];

              if (v243 != 2)
              {
                goto LABEL_121;
              }

              v132 = [v2 containerView];
              v133 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_connectingLabel);
              setupBottomLabel(inContainerView:forLabel:)(v132, v133);

              v134 = [objc_opt_self() mainBundle];
              v135 = String._bridgeToObjectiveC()();
              v136 = String._bridgeToObjectiveC()();
              v137 = sub_1001279D0(v134, v135, v136);

              if (!v137)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v137 = String._bridgeToObjectiveC()();
              }

              [v133 setText:v137];

              swift_beginAccess();
              v138 = v133;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              swift_endAccess();
              v139 = [v2 containerView];
              v140 = [v138 topAnchor];
              v141 = objc_allocWithZone(type metadata accessor for TextSpinner());
              v142 = sub_1000A88C0(100, 0, 0);
              [v142 setTranslatesAutoresizingMaskIntoConstraints:0];
              v143 = v142;
              [v143 setDistribution:0];
              [v143 setAlignment:3];
              [v143 setSpacing:7.0];

              [v139 addSubview:v143];
              sub_100005DCC(&qword_1001BBB00, &unk_10016CF10);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_10016D310;
              v145 = [v143 heightAnchor];
              v146 = [v145 constraintEqualToConstant:50.0];

              *(inited + 32) = v146;
              v147 = [v143 centerXAnchor];
              v243 = v139;
              v148 = [v139 centerXAnchor];
              v149 = [v147 constraintEqualToAnchor:v148];

              *(inited + 40) = v149;
              v150 = [v143 bottomAnchor];

              v244 = v140;
              v151 = [v150 constraintEqualToAnchor:v140 constant:-8.0];

              *(inited + 48) = v151;
              v107 = (inited & 0xC000000000000001);
              if ((inited & 0xC000000000000001) != 0)
              {
                v152 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
LABEL_130:
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_120:
                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  swift_endAccess();
                  goto LABEL_121;
                }

                v152 = *(inited + 32);
              }

              v154 = v152;
              LODWORD(v153) = 1148846080;
              [v152 setPriority:v153];
              [v154 setActive:1];

              if (v107)
              {
                v155 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_114:
                v223 = v155;
                LODWORD(v156) = 1148846080;
                [v155 setPriority:v156];
                [v223 setActive:1];

                if (v107)
                {
                  v224 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  goto LABEL_118;
                }

                if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
                {
                  v224 = *(inited + 48);
LABEL_118:
                  v225 = v224;
                  v107 = v245;

                  LODWORD(v226) = 1148846080;
                  [v225 setPriority:v226];
                  [v225 setActive:1];

                  v227 = OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_spinner;
                  v228 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_spinner);
                  *(v2 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_spinner) = v143;
                  v229 = v143;

                  [*&v229[OBJC_IVAR____TtC18SharingViewService11TextSpinner_spinner] startAnimating];
                  v230 = *(v2 + v227);
                  if (!v230)
                  {
LABEL_141:
                    __break(1u);
                    return;
                  }

                  swift_beginAccess();
                  v231 = v230;
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*&v7[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    goto LABEL_120;
                  }

                  goto LABEL_130;
                }

                goto LABEL_133;
              }

              if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
              {
                v155 = *(inited + 40);
                goto LABEL_114;
              }

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
              goto LABEL_137;
            }

            __break(1u);
          }

          v91 = 1.0;
          if (!v90)
          {
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          goto LABEL_65;
        }
      }

LABEL_32:
      v42 = OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_subviewsToRemoveOnUpdate;
      swift_beginAccess();
      v43 = *(v2 + v42);
      if (v43 >> 62)
      {
        v44 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v240 = v4;
      v241 = v7;
      v238 = v8;
      if (v44)
      {
        if (v44 < 1)
        {
          __break(1u);
          goto LABEL_126;
        }

        for (i = 0; i != v44; ++i)
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v46 = *(v43 + 8 * i + 32);
          }

          v47 = v46;
          [v46 removeFromSuperview];
        }

        v48 = 0;
LABEL_42:

        goto LABEL_44;
      }

      v48 = 0;
      goto LABEL_44;
    }
  }

  if (qword_1001B92F8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000D298(v27, qword_1001BAAB8);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "No asset bundle.", v30, 2u);
  }

LABEL_24:
  v32 = v249;
}