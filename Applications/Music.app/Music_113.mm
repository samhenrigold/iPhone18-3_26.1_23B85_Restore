uint64_t OS_dispatch_queue.asyncAfterUIFeedbackDeadline(_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v13 - v9;
  type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010F1180;
  _Block_copy(aBlock);
  v13[1] = _swiftEmptyArrayStorage;
  sub_100024844();

  sub_10010FC20(&unk_1011BADE0, &qword_100F0C060);
  sub_100024A2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  DispatchWorkItem.init(flags:block:)();

  static DispatchTime.now()();
  + infix(_:_:)();
  v11 = *(v6 + 8);
  v11(v8, v5);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v11)(v10, v5);
}

uint64_t OS_dispatch_queue.asyncAfterUIFeedbackDeadline(_:)(uint64_t a1, __n128 a2)
{
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v10 - v6;
  static DispatchTime.now()();
  + infix(_:_:)();
  v8 = *(v3 + 8);
  v8(v5, v2);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();
  return (v8)(v7, v2);
}

uint64_t static OS_dispatch_queue.UIFeedbackDeadline.getter(__n128 a1)
{
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchTime.now()();
  + infix(_:_:)();
  return (*(v2 + 8))(v4, v1);
}

void NSFileManager.createDirectoryIfNeeded(at:)(uint64_t a1)
{
  v2 = v1;
  URL.path.getter();
  LOBYTE(v16) = 0;
  v3 = String._bridgeToObjectiveC()();

  v4 = [v1 fileExistsAtPath:v3 isDirectory:&v16];

  if (v4)
  {
    if (v16)
    {
      return;
    }

    URL._bridgeToObjectiveC()(v16);
    v7 = v6;
    v16 = 0;
    v8 = [v1 removeItemAtURL:v6 error:&v16];

    v9 = v16;
    if (!v8)
    {
      goto LABEL_7;
    }

    v10 = v16;
  }

  URL._bridgeToObjectiveC()(v5);
  v12 = v11;
  v16 = 0;
  v13 = [v2 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v16];

  v9 = v16;
  if (v13)
  {
    v14 = v16;
    return;
  }

LABEL_7:
  v15 = v9;
  _convertNSErrorToError(_:)();

  swift_willThrow();
}

Swift::tuple_exists_Bool_isDirectory_Bool __swiftcall NSFileManager.directoryExists(at:)(Swift::String at)
{
  v7 = 0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 fileExistsAtPath:v2 isDirectory:&v7];

  v5 = v3;
  result.isDirectory = v4;
  result.exists = v5;
  return result;
}

uint64_t NSFileManager.groupCacheURL(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_10010FC20(&qword_1011BA528, &qword_100F0C778);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v2 containerURLForSecurityApplicationGroupIdentifier:v12];

  if (v13)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *(v9 + 56);
    v14(v5, 0, 1, v8);
  }

  else
  {
    v14 = *(v9 + 56);
    v14(v5, 1, 1, v8);
  }

  sub_100027BC8(v5, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100028C40(v7);
    v15 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();
    v16 = *(v9 + 8);
    v16(v7, v8);
    URL.appendingPathComponent(_:isDirectory:)();
    v16(v11, v8);
    v15 = 0;
  }

  return (v14)(a1, v15, 1, v8);
}

unint64_t sub_100C29CC0()
{
  result = qword_1011BA530;
  if (!qword_1011BA530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BA530);
  }

  return result;
}

uint64_t String.sha256Data.getter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for SHA256();
  v20 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SHA256Digest();
  v22 = *(v5 - 8);
  __chkstk_darwin();
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v11 = String.data(using:allowLossyConversion:)();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  if (v13 >> 60 != 15)
  {
    sub_10002BC44(v11, v13);
    sub_100C2A984(&qword_1011BA538, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_10002BC44(v11, v13);
    sub_100C2A53C(v11, v13, v4, v14);
    sub_100029CA4(v11, v13);
    sub_100029CA4(v11, v13);
    v15 = v21;
    dispatch thunk of HashFunction.finalize()();
    (*(v20 + 8))(v4, v2);
    v25 = v5;
    v26 = sub_100C2A984(&qword_1011BA540, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v16 = sub_10001C8B8(v24);
    v17 = v22;
    (*(v22 + 16))(v16, v15, v5);
    sub_10000954C(v24, v25);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    sub_100029CA4(v11, v13);
    (*(v17 + 8))(v15, v5);
    v11 = v23;
    sub_10000959C(v24);
  }

  return v11;
}

uint64_t Data.Digest.SHA256.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SHA256();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100C2A984(&qword_1011BA538, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_10002BC44(a1, a2);
  sub_100C2A53C(a1, a2, v7, v8);
  sub_10002C064(a1, a2);
  dispatch thunk of HashFunction.finalize()();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Data.Digest.MD5.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Insecure.MD5();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100C2A984(&qword_1011BA548, &type metadata accessor for Insecure.MD5, &protocol conformance descriptor for Insecure.MD5);
  dispatch thunk of HashFunction.init()();
  sub_10002BC44(a1, a2);
  sub_100C2A760(a1, a2, v7, v8);
  sub_10002C064(a1, a2);
  dispatch thunk of HashFunction.finalize()();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Data.Digest.SHA512.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SHA512();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100C2A984(&qword_1011BA550, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  dispatch thunk of HashFunction.init()();
  sub_10002BC44(a1, a2);
  sub_100C2A9CC(a1, a2, v7, v8);
  sub_10002C064(a1, a2);
  dispatch thunk of HashFunction.finalize()();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100C2A53C(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      type metadata accessor for SHA256();
      sub_100C2A984(&qword_1011BA538, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100C2ACBC(v6, v7, a4, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &qword_1011BA538, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  }

  if (v4 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    return sub_100C2ACBC(v6, v7, a4, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &qword_1011BA538, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  }

  type metadata accessor for SHA256();
  sub_100C2A984(&qword_1011BA538, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_100C2A760(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      type metadata accessor for Insecure.MD5();
      sub_100C2A984(&qword_1011BA548, &type metadata accessor for Insecure.MD5, &protocol conformance descriptor for Insecure.MD5);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100C2ACBC(v6, v7, a4, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for Insecure.MD5, &qword_1011BA548, &type metadata accessor for Insecure.MD5, &protocol conformance descriptor for Insecure.MD5);
  }

  if (v4 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    return sub_100C2ACBC(v6, v7, a4, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for Insecure.MD5, &qword_1011BA548, &type metadata accessor for Insecure.MD5, &protocol conformance descriptor for Insecure.MD5);
  }

  type metadata accessor for Insecure.MD5();
  sub_100C2A984(&qword_1011BA548, &type metadata accessor for Insecure.MD5, &protocol conformance descriptor for Insecure.MD5);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_100C2A984(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100C2A9CC(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      type metadata accessor for SHA512();
      sub_100C2A984(&qword_1011BA550, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100C2ACBC(v6, v7, a4, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA512, &qword_1011BA550, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  }

  if (v4 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    return sub_100C2ACBC(v6, v7, a4, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA512, &qword_1011BA550, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  }

  type metadata accessor for SHA512();
  sub_100C2A984(&qword_1011BA550, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_100C2ABF0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100C2AC0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100C2AC60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100C2ACBC(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), unint64_t *a7, uint64_t (*a8)(uint64_t), uint64_t a9)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      a6(0);
      sub_100C2A984(a7, a8, a9);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100C2ADA0(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  if (!a2)
  {
LABEL_20:
    a3 = 0;
    goto LABEL_24;
  }

  if (!a3)
  {
LABEL_24:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v5;
    *(result + 24) = a5 < 1;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a4 + a5;
    v7 = __OFADD__(a4, a5);
    if (v5 > v6)
    {
      v6 = v5;
    }

    v8 = v6 - v5;
    v9 = 1;
    while (1)
    {
      if (a5 < 1)
      {
        v5 = 0;
        a3 = 0;
        goto LABEL_24;
      }

      if (v7)
      {
        break;
      }

      if (v5 - v6 + v9 == 1)
      {
        v5 = v6;
        a3 = v8;
        goto LABEL_24;
      }

      *a2 = v5 + v9 - 1;
      if (a3 == v9)
      {
        v5 += v9;
        goto LABEL_24;
      }

      ++a2;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array.append(_:if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10(v7);
  if (v11)
  {
    (*(v6 + 16))(v9, a1, v5);
    Array.append(_:)();
  }

  return v11 & 1;
}

uint64_t Array.append<A>(contentsOf:if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a5 - 8);
  v9 = __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v12(v9);
  if (v13)
  {
    (*(v8 + 16))(v11, a1, a5);
    Array.append<A>(contentsOf:)();
  }

  return v13 & 1;
}

uint64_t Array.item(where:)@<X0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.firstIndex(where:)();
  if (v9)
  {
    v7 = 1;
  }

  else
  {
    Array.subscript.getter();
    v7 = 0;
  }

  return (*(*(a4 - 8) + 56))(a5, v7, 1, a4);
}

Swift::Void __swiftcall Array.moveItem(at:to:)(Swift::Int at, Swift::Int to)
{
  v3 = *(v2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v9 - v7;
  Array.remove(at:)();
  (*(v4 + 16))(v6, v8, v3);
  Array.insert(_:at:)();
  (*(v4 + 8))(v8, v3);
}

uint64_t Array.subscript.getter@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  sub_10010FC20(&qword_1011BA558, &unk_100F0C900);
  if (Range.contains(_:)())
  {
    Array.subscript.getter();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return (*(*(a3 - 8) + 56))(a4, v6, 1, a3);
}

uint64_t Array.inserting(separator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = a1;
  return Array.inserting(separator:)(sub_100C2B3D8, v4, a2, a3);
}

uint64_t Array.inserting(separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = Array.count.getter();
  if (result < 2)
  {

    return a3;
  }

  if (result + 0x4000000000000000 >= 0)
  {
    v12[8] = 0;
    v12[9] = 2 * result - 1;
    __chkstk_darwin();
    v12[2] = a4;
    v12[3] = a3;
    v12[4] = a1;
    v12[5] = a2;
    v9 = sub_10010FC20(&qword_1011BA558, &unk_100F0C900);
    v10 = sub_100C2B564();
    return sub_100006E28(sub_100C2B51C, v12, v9, a4, &type metadata for Never, v10, &protocol witness table for Never, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_100C2B51C(uint64_t *a1)
{
  if (*a1)
  {
    return (*(v1 + 32))();
  }

  else
  {
    return Array.subscript.getter();
  }
}

unint64_t sub_100C2B564()
{
  result = qword_1011BA560;
  if (!qword_1011BA560)
  {
    sub_1001109D0(&qword_1011BA558, &unk_100F0C900);
    sub_100C2B5F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BA560);
  }

  return result;
}

unint64_t sub_100C2B5F0()
{
  result = qword_1011BA568;
  if (!qword_1011BA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BA568);
  }

  return result;
}

uint64_t Set.insert(_:if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 16);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12(v9))
  {
    (*(v8 + 16))(v11, a2, v7);
    v13 = Set.insert(_:)();
    (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(a1, 1, 1, v7);
    v13 = 0;
  }

  return v13 & 1;
}

id NSBundle.displayName.getter()
{
  result = [v0 localizedInfoDictionary];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16) && (v4 = sub_10001FDC0(0xD000000000000013, 0x8000000100E69630, &String.hash(into:), sub_10000F930), (v5 & 1) != 0))
    {
      sub_10000DD18(*(v3 + 56) + 32 * v4, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t NSBundle.exportedTypeDeclarations.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForInfoDictionaryKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_10010FC20(&qword_1011BA570, &qword_100F0C910);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000095E8(v7, &qword_1011BADF0, "rb\n");
    return 0;
  }
}

uint64_t ClosedRange.clamp(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  max<A>(_:_:)();
  min<A>(_:_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ClosedRange<>.scaledValue(relativeTo:relativeValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v30 = a4;
  v25 = a2;
  v7 = *(*(a4 + 16) + 8);
  v8 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  __chkstk_darwin();
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v24 - v10;
  __chkstk_darwin();
  v31 = &v24 - v12;
  __chkstk_darwin();
  v14 = &v24 - v13;
  __chkstk_darwin();
  v16 = &v24 - v15;
  v28 = a3;
  v29 = v7;
  v17 = *(v7 + 8);
  v27 = a1;
  v19 = v18;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  LOBYTE(v7) = dispatch thunk of static Comparable.> infix(_:_:)();
  v20 = *(v19 + 8);
  v20(v14, v8);
  if (v7)
  {
    ClosedRange.clamp(_:)(v25, v28);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v24 = v17;
    dispatch thunk of static FloatingPoint./ infix(_:_:)();
    v20(v11, v8);
    v21 = v26;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v22 = v31;
    dispatch thunk of static Numeric.* infix(_:_:)();
    v20(v21, v8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v20(v11, v8);
    v20(v22, v8);
    v20(v14, v8);
    return (v20)(v16, v8);
  }

  else
  {
    v20(v16, v8);
    return (*(v19 + 16))(v32, v33, v8);
  }
}

uint64_t Data.hexRepresentation.getter(uint64_t a1, unint64_t a2)
{
  sub_10002BC44(a1, a2);
  result = sub_100C2C218(a1, a2, a1, a2, v4);
  if (!v6)
  {
    return 0;
  }

  return result;
}

void sub_100C2BF28(uint8x16_t *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a3);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    swift_slowAlloc();
    goto LABEL_42;
  }

  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_8:
    LODWORD(v9) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v9 = v9;
  }

LABEL_10:
  if (v9 + 0x4000000000000000 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v13 = swift_slowAlloc();
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      LODWORD(v14) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v14 = v14;
      goto LABEL_17;
    }

    v14 = BYTE6(a3);
    if (BYTE6(a3))
    {
LABEL_21:
      v17 = v14 - 1;
      if (v14 - 1 >= 0x4000000000000000)
      {
        v18 = 0x4000000000000000;
      }

      else
      {
        v18 = v14 - 1;
      }

      if (v14 <= 0x20)
      {
        goto LABEL_29;
      }

      if (v17 >= 0x4000000000000000)
      {
        v17 = 0x4000000000000000;
      }

      if (v13 >= a1->u64 + v17 + 1 || v13 + 2 * v17 + 2 <= a1)
      {
        v20 = v18 + 1;
        v21 = v20 & 0x1F;
        if ((v20 & 0x1F) == 0)
        {
          v21 = 32;
        }

        v19 = v20 - v21;
        v22 = (v13 + 32);
        v23 = a1 + 1;
        v24.i64[0] = 0x9F9F9F9F9F9F9F9FLL;
        v24.i64[1] = 0x9F9F9F9F9F9F9F9FLL;
        v25.i64[0] = 0x5757575757575757;
        v25.i64[1] = 0x5757575757575757;
        v26.i64[0] = 0x3030303030303030;
        v26.i64[1] = 0x3030303030303030;
        v27.i64[0] = 0xF0F0F0F0F0F0F0FLL;
        v27.i64[1] = 0xF0F0F0F0F0F0F0FLL;
        v28.i64[0] = 0x909090909090909;
        v28.i64[1] = 0x909090909090909;
        v29 = v19;
        do
        {
          v30 = v23[-1];
          v31.i64[0] = 0x5757575757575757;
          v31.i64[1] = 0x5757575757575757;
          v32.i64[0] = 0x5757575757575757;
          v32.i64[1] = 0x5757575757575757;
          v33.i64[0] = 0x3030303030303030;
          v33.i64[1] = 0x3030303030303030;
          v34.i64[0] = 0x3030303030303030;
          v34.i64[1] = 0x3030303030303030;
          v49.val[0] = vbslq_s8(vcgtq_u8(v30, v24), vsraq_n_u8(v31, v30, 4uLL), vsraq_n_u8(v33, v30, 4uLL));
          v35 = vandq_s8(v30, v27);
          v49.val[1] = vbslq_s8(vcgtq_u8(v35, v28), vaddq_s8(v35, v25), vorrq_s8(v35, v26));
          v48.val[0] = vbslq_s8(vcgtq_u8(*v23, v24), vsraq_n_u8(v32, *v23, 4uLL), vsraq_n_u8(v34, *v23, 4uLL));
          v36 = vandq_s8(*v23, v27);
          v37 = v22 - 32;
          vst2q_s8(v37, v49);
          v48.val[1] = vbslq_s8(vcgtq_u8(v36, v28), vaddq_s8(v36, v25), vorrq_s8(v36, v26));
          vst2q_s8(v22, v48);
          v22 += 64;
          v23 += 2;
          v29 -= 32;
        }

        while (v29);
      }

      else
      {
LABEL_29:
        v19 = 0;
      }

      v38 = v19 - 0x4000000000000000;
      v39 = (v13 + 2 * v19 + 1);
      v40 = v14 - v19;
      v41 = &a1->u8[v19];
      while (v38)
      {
        v43 = *v41++;
        v42 = v43;
        v44 = (v43 >> 4) + 87;
        v45 = (v43 >> 4) | 0x30;
        if (v43 > 0x9F)
        {
          LOBYTE(v45) = v44;
        }

        *(v39 - 1) = v45;
        if ((v42 & 0xFu) <= 9)
        {
          v46 = v42 & 0xF | 0x30;
        }

        else
        {
          v46 = (v42 & 0xF) + 87;
        }

        *v39 = v46;
        v39 += 2;
        ++v38;
        if (!--v40)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

LABEL_42:
    static String.Encoding.utf8.getter();
    *a4 = String.init(bytesNoCopy:length:encoding:freeWhenDone:)();
    a4[1] = v47;
    return;
  }

  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  v12 = __OFSUB__(v15, v16);
  v14 = v15 - v16;
  if (!v12)
  {
LABEL_17:
    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (!v14)
    {
      goto LABEL_42;
    }

    goto LABEL_21;
  }

LABEL_48:
  __break(1u);
}

uint64_t sub_100C2C218(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, __n128 a5)
{
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      *(v14.i64 + 6) = 0;
      v14.i64[0] = 0;
LABEL_10:
      sub_100C2BF28(&v14, a3, a4, &v15);
      result = sub_10002C064(a3, a4);
      if (!v5)
      {
        return v15;
      }

      return result;
    }

    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
  }

  else
  {
    if (!v8)
    {
      v14.i64[0] = a1;
      v14.i16[4] = a2;
      v14.i8[10] = BYTE2(a2);
      v14.i8[11] = BYTE3(a2);
      v14.i8[12] = BYTE4(a2);
      v14.i8[13] = BYTE5(a2);
      goto LABEL_10;
    }

    v9 = a1;
    v10 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_100C30E68(v9, v10, a5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
  if (v5)
  {
    return sub_10002C064(a3, a4);
  }

  v13 = v11;
  sub_10002C064(a3, a4);
  return v13;
}

uint64_t sub_100C2C3BC()
{
  v0 = sub_100C1BFC8(&off_1010EFC88);
  sub_10010FC20(&qword_1011BA6A0, &unk_100F0CD18);
  result = swift_arrayDestroy();
  static Data.Hexadecimal.hexToDecimalMapping = v0;
  return result;
}

uint64_t *Data.Hexadecimal.hexToDecimalMapping.unsafeMutableAddressor()
{
  if (qword_1011B99F0 != -1)
  {
    swift_once();
  }

  return &static Data.Hexadecimal.hexToDecimalMapping;
}

double static Data.Hexadecimal.hexToDecimalMapping.getter()
{
  if (qword_1011B99F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static Data.Hexadecimal.hexToDecimalMapping.setter(uint64_t a1)
{
  if (qword_1011B99F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Data.Hexadecimal.hexToDecimalMapping = a1;

  return result;
}

uint64_t (*static Data.Hexadecimal.hexToDecimalMapping.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1011B99F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t Data.init(hexString:)(uint64_t a1, void *a2)
{
  if (String.count.getter())
  {
    v15[0] = 48;
    v15[1] = 0xE100000000000000;
    v4._countAndFlagsBits = a1;
    v4._object = a2;
    String.append(_:)(v4);
  }

  v5 = 0;
  LOBYTE(v6) = 0;
  v16 = xmmword_100EE9560;
  while (1)
  {
    v8 = String.Iterator.next()();
    if (!v8.value._object)
    {
      break;
    }

    if (qword_1011B99F0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = static Data.Hexadecimal.hexToDecimalMapping;
    if (!*(static Data.Hexadecimal.hexToDecimalMapping + 16) || (v10 = sub_10001FDC0(v8.value._countAndFlagsBits, v8.value._object, &Character.hash(into:), sub_10000F930), (v11 & 1) == 0))
    {
      swift_endAccess();

      sub_10002C064(v16, *(&v16 + 1));
      return 0;
    }

    v12 = *(*(v9 + 56) + v10);
    swift_endAccess();

    if (v5)
    {
      v6 = v12 + v6;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_17;
      }

      v13 = sub_10010FC20(&qword_1011BA578, &qword_100F0C918);
      v15[3] = v13;
      v15[4] = sub_100020674(&qword_1011BA580, &qword_1011BA578, &qword_100F0C918, &protocol conformance descriptor for <A> CollectionOfOne<A>);
      LOBYTE(v15[0]) = v6;
      sub_10000954C(v15, v13);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_10000959C(v15);
      LOBYTE(v6) = 0;
    }

    else
    {
      v6 = 16 * (v12 & 0xF) + v6;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_18;
      }
    }

    if (__OFADD__(v5++, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
    }
  }

  return v16;
}

uint64_t sub_100C2C8B0()
{
  sub_10010FC20(&qword_1011BA588, &qword_100F0C920);
  __chkstk_darwin();
  v1 = &v14 - v0;
  v2 = type metadata accessor for Calendar.Identifier();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006080(v10, static Calendar.musicDefaultCalendar);
  v11 = sub_1000060E4(v6, static Calendar.musicDefaultCalendar);
  (*(v3 + 104))(v5, enum case for Calendar.Identifier.gregorian(_:), v2);
  Calendar.init(identifier:)();
  (*(v3 + 8))(v5, v2);
  TimeZone.init(secondsFromGMT:)();
  v12 = type metadata accessor for TimeZone();
  result = (*(*(v12 - 8) + 48))(v1, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    Calendar.timeZone.setter();
    return (*(v7 + 32))(v11, v9, v6);
  }

  return result;
}

uint64_t Calendar.musicDefaultCalendar.unsafeMutableAddressor(__n128 a1)
{
  if (qword_1011B99F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Calendar();

  return sub_1000060E4(v1, static Calendar.musicDefaultCalendar);
}

uint64_t static Calendar.musicDefaultCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B99F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Calendar();
  v4 = sub_1000060E4(v3, static Calendar.musicDefaultCalendar);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t static Calendar.date(forReleaseYear:)@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  sub_10010FC20(&qword_1011BA588, &qword_100F0C920);
  __chkstk_darwin();
  v6 = &v18 - v5;
  sub_10010FC20(&qword_1011BA590, &qword_100F0C928);
  __chkstk_darwin();
  v8 = &v18 - v7;
  v9 = type metadata accessor for DateComponents();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 56);

    return v14(a3, 1, 1, v13);
  }

  else
  {
    if (qword_1011B99F8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Calendar();
    sub_1000060E4(v16, static Calendar.musicDefaultCalendar);
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    v17 = type metadata accessor for TimeZone();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    Calendar.date(from:)();
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t static FormatStyle<>.musicReleaseYear.getter()
{
  type metadata accessor for TimeZone();
  __chkstk_darwin();
  v0 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date.FormatStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ParseableFormatStyle<>.dateTime.getter();
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  Date.FormatStyle.year(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  if (qword_1011B99F8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Calendar();
  sub_1000060E4(v8, static Calendar.musicDefaultCalendar);
  Calendar.timeZone.getter();
  return Date.FormatStyle.timeZone.setter();
}

id static NSDateFormatter.iso8601ExtendedDateFormatter.getter()
{
  sub_10010FC20(&qword_1011BA588, &qword_100F0C920);
  __chkstk_darwin();
  v1 = &v13 - v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSDateFormatter) init];
  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  [v6 setLocale:isa];

  v8 = String._bridgeToObjectiveC()();
  [v6 setDateFormat:v8];

  TimeZone.init(secondsFromGMT:)();
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v1, 1, v9) != 1)
  {
    v11 = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v1, v9);
  }

  [v6 setTimeZone:v11];

  return v6;
}

void sub_100C2D3C0()
{
  v0 = type metadata accessor for TimeZone();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  [v4 setDateStyle:3];
  if (qword_1011B99F8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Calendar();
  sub_1000060E4(v5, static Calendar.musicDefaultCalendar);
  Calendar.timeZone.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone:isa];

  static NSDateFormatter.releaseDateFormatter = v4;
}

uint64_t *NSDateFormatter.releaseDateFormatter.unsafeMutableAddressor()
{
  if (qword_1011B9A00 != -1)
  {
    swift_once();
  }

  return &static NSDateFormatter.releaseDateFormatter;
}

id sub_100C2D59C()
{
  v0 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v0 setUnitsStyle:3];
  result = [v0 setAllowedUnits:96];
  static NSDateFormatter.collectionsDurationFormatter = v0;
  return result;
}

uint64_t *NSDateFormatter.collectionsDurationFormatter.unsafeMutableAddressor()
{
  if (qword_1011B9A08 != -1)
  {
    swift_once();
  }

  return &static NSDateFormatter.collectionsDurationFormatter;
}

void Dictionary.filterIncludingPairsWithStringValues()(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = *(a3 - 8);
  __chkstk_darwin();
  v65 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v56 = v52 - v9;
  v53 = *(v10 - 8);
  __chkstk_darwin();
  v73 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = v52 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = type metadata accessor for Optional();
  v14 = *(v62 - 8);
  __chkstk_darwin();
  v68 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = v52 - v16;
  swift_getTupleTypeMetadata2();
  v17 = static Array._allocateUninitialized(_:)();
  v55 = a4;
  v18 = sub_10003B618(v17, a2, &type metadata for String, a4);

  v76 = v18;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = __CocoaDictionary.makeIterator()();
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v64 = v19 | 0x8000000000000000;
  }

  else
  {
    v23 = -1 << *(a1 + 32);
    v21 = ~v23;
    v20 = a1 + 64;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(a1 + 64);
    v64 = a1;
  }

  v70 = (v53 + 32);
  v69 = (v54 + 32);
  v60 = TupleTypeMetadata2 - 8;
  v52[1] = v21;
  v26 = (v21 + 64) >> 6;
  v66 = (v53 + 16);
  v52[2] = v54 + 16;
  v58 = (v53 + 8);
  v59 = (v14 + 32);
  v57 = (v54 + 8);

  v27 = 0;
  v28 = v65;
  v29 = v68;
  v63 = v20;
  v30 = v64;
  if ((v64 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (__CocoaDictionary.Iterator.next()())
  {
    _forceBridgeFromObjectiveC<A>(_:_:)();
    swift_unknownObjectRelease();
    v31 = v56;
    _forceBridgeFromObjectiveC<A>(_:_:)();
    swift_unknownObjectRelease();
    v32 = v27;
    v72 = v22;
    goto LABEL_20;
  }

  v33 = 1;
  v71 = v27;
  v72 = v22;
  while (1)
  {
    v28 = v65;
LABEL_22:
    v42 = *(TupleTypeMetadata2 - 8);
    (*(v42 + 56))(v29, v33, 1, TupleTypeMetadata2);
    v43 = v61;
    (*v59)(v61, v29, v62);
    if ((*(v42 + 48))(v43, 1, TupleTypeMetadata2) == 1)
    {
      sub_10005C9F8(v64);
      return;
    }

    v44 = *(TupleTypeMetadata2 + 48);
    (*v70)(v73, v43, a2);
    (*v69)(v28, &v43[v44], a3);
    if (swift_dynamicCast())
    {
      v45 = v74;
      v46 = v75;
LABEL_27:
      v50 = v67;
      v22 = v72;
      (*v57)(v28, a3);
      v51 = v73;
      (*v66)(v50, v73, a2);
      v74 = v45;
      v75 = v46;
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      (*v58)(v51, a2);
      v27 = v71;
      v29 = v68;
      goto LABEL_29;
    }

    sub_100009F78(0, &qword_1011BA598, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v47 = v74;
      v48 = [v74 description];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v49;

      v28 = v65;
      goto LABEL_27;
    }

    (*v58)(v73, a2);
    (*v57)(v28, a3);
    v27 = v71;
    v22 = v72;
LABEL_29:
    v20 = v63;
    v30 = v64;
    if ((v64 & 0x8000000000000000) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v34 = v22;
    v32 = v27;
    if (!v22)
    {
      break;
    }

LABEL_19:
    v72 = (v34 - 1) & v34;
    v38 = __clz(__rbit64(v34)) | (v32 << 6);
    v39 = v30;
    (*(v53 + 16))(v67, *(v30 + 48) + *(v53 + 72) * v38, a2);
    v40 = *(v39 + 56) + *(v54 + 72) * v38;
    v31 = v56;
    (*(v54 + 16))(v56, v40, a3);
LABEL_20:
    v41 = *(TupleTypeMetadata2 + 48);
    v29 = v68;
    (*v70)();
    (*v69)(&v29[v41], v31, a3);
    v33 = 0;
    v71 = v32;
  }

  if (v26 <= v27 + 1)
  {
    v35 = v27 + 1;
  }

  else
  {
    v35 = v26;
  }

  v36 = v35 - 1;
  v37 = v27;
  while (1)
  {
    v32 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v32 >= v26)
    {
      v71 = v36;
      v72 = 0;
      v33 = 1;
      goto LABEL_22;
    }

    v34 = *(v20 + 8 * v32);
    ++v37;
    if (v34)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

void Dictionary.filteredDictionary(_:)(uint64_t (*a1)(char *, char *), uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a1;
  v61 = a2;
  type metadata accessor for Optional();
  __chkstk_darwin();
  v52 = v50 - v10;
  v55 = *(a5 - 8);
  __chkstk_darwin();
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = v50 - v13;
  v54 = *(a4 - 8);
  __chkstk_darwin();
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = v50 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v68 = type metadata accessor for Optional();
  v18 = *(v68 - 8);
  __chkstk_darwin();
  v67 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = v50 - v20;
  swift_getTupleTypeMetadata2();
  v21 = static Array._allocateUninitialized(_:)();
  v73 = a4;
  v53 = a6;
  v22 = sub_10003B618(v21, a4, a5, a6);

  v77 = v22;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v23 = __CocoaDictionary.makeIterator()();
    v24 = 0;
    v25 = 0;
    v69 = v23 | 0x8000000000000000;
    v70 = 0;
  }

  else
  {
    v26 = -1 << *(a3 + 32);
    v24 = ~v26;
    v27 = *(a3 + 64);
    v69 = a3;
    v70 = a3 + 64;
    v28 = -v26;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v25 = v29 & v27;
  }

  v72 = (v54 + 32);
  v30 = (v55 + 32);
  v65 = TupleTypeMetadata2 - 8;
  v50[1] = v24;
  v31 = (v24 + 64) >> 6;
  v62 = (v55 + 16);
  v63 = (v54 + 16);
  v64 = (v18 + 32);
  v58 = (v54 + 8);
  v59 = (v55 + 8);
  v51 = (v55 + 56);

  v32 = 0;
  v74 = v12;
  v56 = v15;
  while (1)
  {
    v71 = v25;
    if ((v69 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (__CocoaDictionary.Iterator.next()())
    {
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v41 = v57;
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v34 = v32;
      v76 = v71;
      goto LABEL_21;
    }

    v44 = 1;
    v36 = v32;
    v76 = v71;
    v43 = v67;
LABEL_22:
    v45 = *(TupleTypeMetadata2 - 8);
    (*(v45 + 56))(v43, v44, 1, TupleTypeMetadata2);
    v46 = v66;
    (*v64)();
    if ((*(v45 + 48))(v46, 1, TupleTypeMetadata2) == 1)
    {
      sub_10005C9F8(v69);
      return;
    }

    v47 = *(TupleTypeMetadata2 + 48);
    v48 = v73;
    (*v72)(v15, v46, v73);
    (*v30)(v12, &v46[v47], a5);
    if (v60(v15, v12))
    {
      (*v63)(v75, v15, v48);
      v49 = v52;
      (*v62)(v52, v74, a5);
      (*v51)(v49, 0, 1, a5);
      type metadata accessor for Dictionary();
      v12 = v74;
      Dictionary.subscript.setter();
    }

    (*v59)(v12, a5);
    (*v58)(v15, v48);
    v32 = v36;
    v25 = v76;
  }

  v33 = v25;
  v34 = v32;
  if (v25)
  {
LABEL_18:
    v76 = (v33 - 1) & v33;
    v38 = __clz(__rbit64(v33)) | (v34 << 6);
    v39 = v69;
    (*(v54 + 16))(v75, *(v69 + 48) + *(v54 + 72) * v38, v73);
    v40 = *(v39 + 56) + *(v55 + 72) * v38;
    v41 = v57;
    (*(v55 + 16))(v57, v40, a5);
LABEL_21:
    v42 = *(TupleTypeMetadata2 + 48);
    v43 = v67;
    (*v72)();
    (*v30)(&v43[v42], v41, a5);
    v44 = 0;
    v36 = v34;
    v12 = v74;
    v15 = v56;
    goto LABEL_22;
  }

  if (v31 <= v32 + 1)
  {
    v35 = v32 + 1;
  }

  else
  {
    v35 = v31;
  }

  v36 = v35 - 1;
  v37 = v32;
  while (1)
  {
    v34 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v34 >= v31)
    {
      v76 = 0;
      v44 = 1;
      v43 = v67;
      goto LABEL_22;
    }

    v33 = *(v70 + 8 * v34);
    ++v37;
    if (v33)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t IndexPath.safeSection.getter()
{
  if ((IndexPath.count.getter() - 1) > 1)
  {

    return NSNotFound.getter();
  }

  else
  {

    return IndexPath.subscript.getter();
  }
}

uint64_t IndexPath.safeSection.setter(uint64_t a1)
{
  result = IndexPath.count.getter();
  if ((result - 1) <= 1)
  {

    return IndexPath.subscript.setter();
  }

  return result;
}

uint64_t (*IndexPath.safeSection.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if ((IndexPath.count.getter() - 1) > 1)
  {
    v3 = NSNotFound.getter();
  }

  else
  {
    v3 = IndexPath.subscript.getter();
  }

  *a1 = v3;
  return sub_100C2E680;
}

uint64_t sub_100C2E680(uint64_t *a1)
{
  result = IndexPath.count.getter();
  if ((result - 1) <= 1)
  {
    return IndexPath.subscript.setter();
  }

  return result;
}

uint64_t IndexPath.safeItem.getter()
{
  if (IndexPath.count.getter() > 1)
  {

    return IndexPath.subscript.getter();
  }

  else
  {

    return NSNotFound.getter();
  }
}

unint64_t IndexPath.safeItem.setter(uint64_t a1)
{
  result = IndexPath.count.getter();
  if (result >= 2)
  {

    return IndexPath.subscript.setter();
  }

  return result;
}

unint64_t (*IndexPath.safeItem.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (IndexPath.count.getter() > 1)
  {
    v3 = IndexPath.subscript.getter();
  }

  else
  {
    v3 = NSNotFound.getter();
  }

  *a1 = v3;
  return sub_100C2E7B8;
}

unint64_t sub_100C2E7B8(uint64_t *a1)
{
  result = IndexPath.count.getter();
  if (result >= 2)
  {
    return IndexPath.subscript.setter();
  }

  return result;
}

Swift::String __swiftcall String.trim()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CharacterSet.whitespacesAndNewlines.getter();
  v8._countAndFlagsBits = 41154;
  v8._object = 0xA200000000000000;
  CharacterSet.insert(charactersIn:)(v8);
  v15[0] = v3;
  v15[1] = v2;
  sub_100009934();
  v9 = StringProtocol.trimmingCharacters(in:)();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

Swift::String __swiftcall String.removeSpaces()()
{
  sub_100009934();
  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.replace(usingRegexPattern:with:options:)(Swift::String usingRegexPattern, Swift::String with, NSRegularExpressionOptions options)
{
  v5 = v4;
  v6 = v3;
  object = usingRegexPattern._object;
  countAndFlagsBits = usingRegexPattern._countAndFlagsBits;
  objc_allocWithZone(NSRegularExpression);

  v10 = sub_100C308E8(countAndFlagsBits, object, options);
  if (v10)
  {
    v11 = v10;
    v12 = String.count.getter();
    v13 = String._bridgeToObjectiveC()();
    v14 = String._bridgeToObjectiveC()();
    v15 = [v11 stringByReplacingMatchesInString:v13 options:0 range:0 withTemplate:{v12, v14}];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v16;
  }

  else
  {
  }

  v17 = v6;
  v18 = v5;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

Swift::String __swiftcall String.insensitiveCompareString()()
{
  v2 = v1;
  v3 = v0;
  sub_10010FC20(&qword_1011BA5A8, &qword_100F0C930);
  __chkstk_darwin();
  v5 = &v24 - v4;
  v6 = 0xE000000000000000;
  v28 = 0;
  v29 = 0xE000000000000000;
  v7 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v24 = v3;
  v25 = v2;
  v26 = 0;
  v27 = v7;

  v8 = String.Iterator.next()();
  if (v8.value._object)
  {
    countAndFlagsBits = v8.value._countAndFlagsBits;
    object = v8.value._object;
    do
    {
      if ((Character.isPunctuation.getter() & 1) == 0)
      {
        v12._countAndFlagsBits = countAndFlagsBits;
        v12._object = object;
        String.append(_:)(v12);
      }

      v11 = String.Iterator.next()();
      countAndFlagsBits = v11.value._countAndFlagsBits;
      object = v11.value._object;
    }

    while (v11.value._object);
    v13 = v28;
    v6 = v29;
  }

  else
  {
    v13 = 0;
  }

  v24 = v13;
  v25 = v6;
  sub_100009934();
  v14 = StringProtocol.localizedLowercase.getter();
  v16 = v15;

  v28 = v14;
  v29 = v16;
  static Locale.current.getter();
  v17 = type metadata accessor for Locale();
  (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
  v18 = StringProtocol.folding(options:locale:)();
  v20 = v19;
  sub_1000095E8(v5, &qword_1011BA5A8, &qword_100F0C930);

  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

id String.BOOLValue.getter()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [v0 BOOLValue];

  return v1;
}

uint64_t String.containsExcessiveHeightCharacters.getter(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011BA5B0, &qword_100F0C938);
  __chkstk_darwin();
  v5 = v22 - v4;
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v22 - v10;
  __chkstk_darwin();
  v13 = v22 - v12;
  v14 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  if (v14)
  {
    v15 = v14;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      v16 = 0;
      return v16 & 1;
    }

    (*(v7 + 56))(v5, 1, 1, v6);
    sub_100C3121C(&qword_1011BA5B8, &type metadata accessor for CharacterSet, &protocol conformance descriptor for CharacterSet);
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v17 = *(v7 + 32);
      v17(v11, v5, v6);
      v17(v13, v11, v6);
      (*(v7 + 16))(v9, v13, v6);
      CharacterSet.remove(_:)();
      CharacterSet.remove(_:)();
      v22[0] = a1;
      v22[1] = a2;
      sub_100009934();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      v19 = v18;
      v20 = *(v7 + 8);
      v20(v9, v6);
      v20(v13, v6);
      v16 = v19 ^ 1;
      return v16 & 1;
    }
  }

  v16 = 0;
  return v16 & 1;
}

BOOL String.containsCharacter(from:)(uint64_t a1)
{
  sub_100009934();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  return (v1 & 1) == 0;
}

BOOL Optional<A>.isEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

uint64_t Optional<A>.nonEmpty.getter(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  return a1;
}

NSAttributedString __swiftcall NSAttributedString.init(string:attributes:replacingPlaceholder:withImage:imageAttributes:)(Swift::String string, Swift::OpaquePointer attributes, Swift::String replacingPlaceholder, UIImage_optional withImage, Swift::OpaquePointer imageAttributes)
{
  isa = withImage.value.super.isa;
  static String.localizedStringWithFormat(_:_:)();
  v6 = objc_allocWithZone(NSMutableAttributedString);
  v7 = String._bridgeToObjectiveC()();

  _s3__C3KeyVMa_1(0);
  sub_100C3121C(&qword_1011B9B78, _s3__C3KeyVMa_1, &unk_100F0BD00);
  v8 = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [v6 initWithString:v7 attributes:v8];

  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 rangeOfString:v11 options:129];
  v14 = v13;

  if (isa)
  {
    v15 = objc_opt_self();
    isa = isa;
    v16 = [v15 textAttachmentWithImage:isa];
    v17 = Dictionary._bridgeToObjectiveC()().super.isa;

    v18 = [objc_opt_self() attributedStringWithAttachment:v16 attributes:v17];
  }

  else
  {

    v18 = [objc_allocWithZone(NSAttributedString) init];
  }

  [v9 replaceCharactersInRange:v12 withAttributedString:{v14, v18}];
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttributedString:v9];

  return v19;
}

uint64_t NSAttributedString.init(_:)(uint64_t a1)
{
  sub_10010FC20(&qword_1011BA5C0, &qword_100F0C940);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  sub_100C30DA4(a1, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(a1, &qword_1011BA5C0, &qword_100F0C940);
    sub_1000095E8(v3, &qword_1011BA5C0, &qword_100F0C940);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v9, v3, v4);
    (*(v5 + 16))(v7, v9, v4);
    v11 = NSAttributedString.init(_:)();
    sub_1000095E8(a1, &qword_1011BA5C0, &qword_100F0C940);
    (*(v5 + 8))(v9, v4);
    return v11;
  }
}

uint64_t *Double.epsilon.unsafeMutableAddressor()
{
  if (qword_1011B9A10 != -1)
  {
    swift_once();
  }

  return &static Double.epsilon;
}

double static Double.epsilon.getter()
{
  if (qword_1011B9A10 != -1)
  {
    swift_once();
  }

  return *&static Double.epsilon;
}

uint64_t _NSRange.init(range:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  String.Index.samePosition(in:)();
  if (v4 & 1) != 0 || (String.Index.samePosition(in:)(), (v5))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = String.UTF16View.distance(from:to:)();
    String.UTF16View.distance(from:to:)();

    return v6;
  }

  return result;
}

{
  String.index(after:)();
  String.Index.samePosition(in:)();
  if (v4 & 1) != 0 || (String.Index.samePosition(in:)(), (v5))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = String.UTF16View.distance(from:to:)();
    String.UTF16View.distance(from:to:)();

    return v6;
  }

  return result;
}

Swift::Bool __swiftcall _NSRange.contains(_:)(__C::_NSRange a1)
{
  if (a1.location >= v1)
  {
    if (__OFADD__(a1.location, a1.length))
    {
      __break(1u);
    }

    else if (!__OFADD__(v1, v2))
    {
      LOBYTE(a1.location) = v1 + v2 >= a1.location + a1.length;
      return a1.location;
    }

    __break(1u);
    return a1.location;
  }

  LOBYTE(a1.location) = 0;
  return a1.location;
}

__C::_NSRange __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _NSRange.convert(from:to:preserveLength:)(Swift::String from, Swift::String to, Swift::Bool preserveLength)
{
  sub_100009934();
  if (StringProtocol.contains<A>(_:)())
  {
    v4 = String.UTF16View.count.getter();
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 rangeOfString:{v6, to._countAndFlagsBits, to._object, from._countAndFlagsBits, from._object}];
    v9 = v8;

    v10.location = 0;
    v10.length = v4;
    v11.location = v7;
    v11.length = v9;
    v14 = _NSRange.convert(from:to:preserveLength:)(v10, v11, preserveLength);
    length = v14.length;
    location = v14.location;
  }

  else
  {
    sub_100C30E14();
    swift_allocError();
    *v15 = 4;
    location = swift_willThrow();
  }

  result.length = length;
  result.location = location;
  return result;
}

__C::_NSRange __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _NSRange.convert(from:to:preserveLength:)(__C::_NSRange from, __C::_NSRange to, Swift::Bool preserveLength)
{
  if (to.location < from.location)
  {
    goto LABEL_5;
  }

  if (__OFADD__(to.location, to.length))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = from.location + from.length;
  if (__OFADD__(from.location, from.length))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v5 < to.location + to.length)
  {
LABEL_5:
    v6 = 0;
LABEL_6:
    sub_100C30E14();
    swift_allocError();
    *v7 = v6;
    from.location = swift_willThrow();
    return from;
  }

  if (v3 < from.location)
  {
LABEL_11:
    v6 = 1;
    goto LABEL_6;
  }

  if (__OFADD__(v3, v4))
  {
    goto LABEL_20;
  }

  if (v5 < v3 + v4)
  {
    goto LABEL_11;
  }

  if (__OFSUB__(v3, to.location))
  {
LABEL_21:
    __break(1u);
    return from;
  }

  v9.location = 0;
  v9.length = v10;
  v11 = v4;
  *&from.location = _NSRange.intersection(_:)(v9);
  if (v12)
  {
    v6 = 2;
    goto LABEL_6;
  }

  if (preserveLength && from.length != v11)
  {
    v6 = 3;
    goto LABEL_6;
  }

  return from;
}

Swift::Bool __swiftcall _NSRange.intersects(_:)(__C::_NSRange a1)
{
  v3 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = a1.location + a1.length;
  if (__OFADD__(a1.location, a1.length))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 >= v4)
  {
    v5 = a1.location + a1.length;
  }

  else
  {
    v5 = v1 + v2;
  }

  if (v1 >= a1.location && v4 > v1)
  {
    if (!__OFSUB__(v5, v1))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v6 = 0;
  if (a1.location < v1 || v3 <= a1.location)
  {
    goto LABEL_15;
  }

  if (__OFSUB__(v5, a1.location))
  {
LABEL_18:
    __break(1u);
    return a1.location;
  }

LABEL_14:
  v6 = 1;
LABEL_15:
  LOBYTE(a1.location) = v6;
  return a1.location;
}

uint64_t sub_100C2FC10()
{
  result = NSNotFound.getter();
  static _NSRange.notFound = result;
  *algn_10121C088 = 0;
  return result;
}

uint64_t *_NSRange.notFound.unsafeMutableAddressor()
{
  if (qword_1011B9A18 != -1)
  {
    swift_once();
  }

  return &static _NSRange.notFound;
}

uint64_t static _NSRange.notFound.getter()
{
  if (qword_1011B9A18 != -1)
  {
    swift_once();
  }

  return static _NSRange.notFound;
}

Swift::tuple_first___C__NSRange_second___C__NSRange __swiftcall _NSRange.difference(_:)(__C::_NSRange a1)
{
  v3 = v1 + v2;
  v4 = __OFADD__(v1, v2);
  if (v1 < a1.location)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (__OFADD__(a1.location, a1.length))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    v11 = v2;
    v13 = v1;
    swift_once();
    v2 = v11;
    v1 = v13;
    goto LABEL_39;
  }

  if (a1.location + a1.length >= v3)
  {
    if (qword_1011B9A18 == -1)
    {
LABEL_44:
      v1 = static _NSRange.notFound;
      v2 = *algn_10121C088;
      v5 = static _NSRange.notFound;
      v7 = *algn_10121C088;
      goto LABEL_45;
    }

LABEL_47:
    swift_once();
    goto LABEL_44;
  }

LABEL_10:
  v5 = a1.location + a1.length;
  if (__OFADD__(a1.location, a1.length))
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v1 < a1.location || v5 <= v1)
  {
    goto LABEL_27;
  }

  v6 = 0;
  v2 = a1.location - v1;
  if (!__OFSUB__(a1.location, v1))
  {
    while (1)
    {
      v7 = v3 - v5;
      if (__OFSUB__(v3, v5))
      {
        goto LABEL_49;
      }

      if (!v6)
      {
        break;
      }

      if (v5 >= v3)
      {
        goto LABEL_38;
      }

      v3 = v1 + v2;
      if (__OFADD__(v1, v2))
      {
        __break(1u);
LABEL_54:
        v12 = v7;
        v14 = a1.location + a1.length;
        swift_once();
        v7 = v12;
        v5 = v14;
LABEL_42:
        v1 = v5;
        v2 = v7;
        v5 = static _NSRange.notFound;
        v7 = *algn_10121C088;
        goto LABEL_45;
      }

      if (v3 < v5)
      {
        goto LABEL_45;
      }

      v8 = __OFADD__(v5, v7);
      v9 = v5 + v7;
      if (v8)
      {
        __break(1u);
        goto LABEL_56;
      }

      if (v3 > v9)
      {
        v9 = v1 + v2;
      }

      if (v5 < v1)
      {
        v1 = a1.location + a1.length;
      }

      v2 = v9 - v1;
      if (!__OFSUB__(v9, v1))
      {
        goto LABEL_38;
      }

      __break(1u);
LABEL_27:
      if (a1.location < v1 || v3 <= a1.location)
      {
        goto LABEL_38;
      }

      v6 = v1 < a1.location && v2 > 0;
      v2 = a1.location - v1;
      if (__OFSUB__(a1.location, v1))
      {
        goto LABEL_37;
      }
    }

    if (v5 < v3)
    {
      if (qword_1011B9A18 != -1)
      {
        goto LABEL_54;
      }

      goto LABEL_42;
    }

    if (qword_1011B9A18 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_47;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  if (qword_1011B9A18 != -1)
  {
    goto LABEL_52;
  }

LABEL_39:
  v5 = static _NSRange.notFound;
  v7 = *algn_10121C088;
LABEL_45:
  a1.location = v1;
  a1.length = v2;
  v1 = v5;
  v2 = v7;
LABEL_56:
  result.first = a1;
  result.second.length = v2;
  result.second.location = v1;
  return result;
}

Swift::Int_optional __swiftcall _NSRange.NSRangeIterator.next()()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v2 = 1;
  }

  else
  {
    v3 = *(v0 + 8);
    if (__OFADD__(*v0, v3))
    {
      __break(1u);
    }

    else if (v1 >= *v0 + v3)
    {
      v1 = 0;
      v2 = 1;
    }

    else
    {
      v2 = 0;
      *(v0 + 16) = v1 + 1;
    }
  }

  result.value = v1;
  result.is_nil = v2;
  return result;
}

void sub_100C2FF10(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (*(v1 + 24))
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 8);
  if (!__OFADD__(*v1, v3))
  {
    if (v2 < *v1 + v3)
    {
      v4 = 0;
      *(v1 + 16) = v2 + 1;
LABEL_7:
      *a1 = v2;
      *(a1 + 8) = v4;
      return;
    }

    v2 = 0;
LABEL_6:
    v4 = 1;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100C2FF68(uint64_t a1@<X8>)
{
  v2 = v1[1];
  if (v2 >= 1)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2 < 1;
}

double WeakWrapper.value.setter(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t (*WeakWrapper.value.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100C30024;
}

double sub_100C30024(void *a1)
{
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

double WeakWrapper.init(value:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

BOOL static WeakWrapper.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v3)
    {
      v4 = v3;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v4;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t Int.romanNumeral.getter(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v1 = a1;
  for (i = 0; i != 13; ++i)
  {
    v3 = qword_100F0CD28[*(&off_1010EFEB8 + i + 32)];
    if (v1 >= v3)
    {
      v4 = 0xE100000000000000;
      v5 = 77;
      switch(*(&off_1010EFEB8 + i + 32))
      {
        case 1:
          v4 = 0xE200000000000000;
          v5 = 19779;
          break;
        case 2:
          v5 = 68;
          break;
        case 3:
          v4 = 0xE200000000000000;
          v5 = 17475;
          break;
        case 4:
          v5 = 67;
          break;
        case 5:
          v4 = 0xE200000000000000;
          v5 = 17240;
          break;
        case 6:
          v5 = 76;
          break;
        case 7:
          v4 = 0xE200000000000000;
          v5 = 19544;
          break;
        case 8:
          v5 = 88;
          break;
        case 9:
          v4 = 0xE200000000000000;
          v5 = 22601;
          break;
        case 0xA:
          v5 = 86;
          break;
        case 0xB:
          v4 = 0xE200000000000000;
          v5 = 22089;
          break;
        case 0xC:
          v5 = 73;
          break;
        default:
          goto LABEL_18;
      }

      do
      {
LABEL_18:
        v1 -= v3;
        v6._countAndFlagsBits = v5;
        v6._object = v4;
        String.append(_:)(v6);
      }

      while (v1 >= v3);
    }
  }

  return 0;
}

uint64_t RomanNumerals.rawValue.getter(char a1)
{
  result = 77;
  switch(a1)
  {
    case 1:
      result = 19779;
      break;
    case 2:
      result = 68;
      break;
    case 3:
      result = 17475;
      break;
    case 4:
      result = 67;
      break;
    case 5:
      result = 17240;
      break;
    case 6:
      result = 76;
      break;
    case 7:
      result = 19544;
      break;
    case 8:
      result = 88;
      break;
    case 9:
      result = 22601;
      break;
    case 10:
      result = 86;
      break;
    case 11:
      result = 22089;
      break;
    case 12:
      result = 73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100C30348(char *a1, char *a2)
{
  v2 = *a2;
  v3 = RomanNumerals.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == RomanNumerals.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100C303D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  RomanNumerals.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100C30434(uint64_t a1)
{
  RomanNumerals.rawValue.getter(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int sub_100C30488(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  RomanNumerals.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100C304E8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14MusicUtilities13RomanNumeralsO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100C30518@<X0>(uint64_t *a1@<X8>)
{
  result = RomanNumerals.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100C30554()
{
  result = sub_100C31264(&off_1010F0040);
  static NSDirectionalEdgeInsets.Edge.all = result;
  return result;
}

uint64_t *NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor()
{
  if (qword_1011B9A20 != -1)
  {
    swift_once();
  }

  return &static NSDirectionalEdgeInsets.Edge.all;
}

double static NSDirectionalEdgeInsets.Edge.all.getter()
{
  if (qword_1011B9A20 != -1)
  {
    swift_once();
  }

  return result;
}

double NSDirectionalEdgeInsets.init(edge:length:)(uint64_t a1, double a2)
{
  if (sub_10000FC04(0, a1))
  {
    v4 = a2;
  }

  else
  {
    v4 = 0.0;
  }

  sub_10000FC04(1u, a1);
  sub_10000FC04(2u, a1);
  sub_10000FC04(3u, a1);

  return v4;
}

uint64_t sub_100C306D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100C3121C(&qword_1011BA688, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_100C3121C(&qword_1011BA690, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

id sub_100C308E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_100C309F0(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1006BF00C(a1, v2);
}

unint64_t sub_100C30A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100C30A90(a1, v6, a2, a3);
}

unint64_t sub_100C30A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

void sub_100C30C18(uint64_t a1, uint64_t a2)
{
  v2 = _swiftEmptyArrayStorage;
  v21 = a2 < 1;
  if (a2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = a1;
    if (__OFADD__(a1, a2))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v4 = 0;
    if (a1 <= a1 + a2)
    {
      v5 = a1 + a2;
    }

    else
    {
      v5 = a1;
    }

    v6 = &_swiftEmptyArrayStorage[4];
    while (v5 != v3)
    {
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_30;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_10010FC20(&qword_1011BA680, "b]\n");
        v10 = swift_allocObject();
        v11 = j__malloc_size(v10);
        v12 = v11 - 32;
        if (v11 < 32)
        {
          v12 = v11 - 25;
        }

        v13 = v12 >> 3;
        v10[2] = v9;
        v10[3] = 2 * (v12 >> 3);
        v14 = (v10 + 4);
        v15 = v2[3] >> 1;
        if (v2[2])
        {
          v16 = v2 + 4;
          if (v10 != v2 || v14 >= v16 + 8 * v15)
          {
            memmove(v10 + 4, v16, 8 * v15);
          }

          v2[2] = 0;
        }

        v6 = (v14 + 8 * v15);
        v4 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v2 = v10;
      }

      v17 = __OFSUB__(v4--, 1);
      if (v17)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      *v6++ = v3++;
      if (v21)
      {
        break;
      }
    }
  }

  v18 = v2[3];
  if (v18 < 2)
  {
    return;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (v17)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v2[2] = v20;
}

uint64_t sub_100C30DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011BA5C0, &qword_100F0C940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100C30E14()
{
  result = qword_1011BA5C8;
  if (!qword_1011BA5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BA5C8);
  }

  return result;
}

void sub_100C30E68(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v11))
    {
      goto LABEL_7;
    }

    v10 = (v10 + a1 - v11);
  }

  if (!__OFSUB__(a2, a1))
  {
    __DataStorage._length.getter();
    sub_100C2BF28(v10, a5, a6, &v12);
    return;
  }

  __break(1u);
LABEL_7:
  __break(1u);
}

unint64_t _s14MusicUtilities13RomanNumeralsO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010EFEE8, v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100C30F74()
{
  result = qword_1011BA5D0;
  if (!qword_1011BA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BA5D0);
  }

  return result;
}

unint64_t sub_100C30FCC()
{
  result = qword_1011BA5D8;
  if (!qword_1011BA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BA5D8);
  }

  return result;
}

unint64_t sub_100C31024()
{
  result = qword_1011BA5E0;
  if (!qword_1011BA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BA5E0);
  }

  return result;
}

unint64_t sub_100C310C0()
{
  result = qword_1011BA5F8[0];
  if (!qword_1011BA5F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1011BA5F8);
  }

  return result;
}

__n128 sub_100C31134(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100C31148(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C31168(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

uint64_t sub_100C311A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100C3121C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_100C31264(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BA698, "d]\n");
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

  return &_swiftEmptySetSingleton;
}

void MPModelObject.humanDescription(including:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 8250;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  _print_unlocked<A, B>(_:_:)();
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v12;
  v7[4] = v2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100C3188C;
  *(v8 + 24) = v7;
  v11[4] = sub_100029B94;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100029B9C;
  v11[3] = &unk_1010F1620;
  v9 = _Block_copy(v11);

  v10 = v2;

  [v6 performWithoutEnforcement:v9];
  _Block_release(v9);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_100C31598(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = sub_100C55708(*(a1 + 16), 0);
  v30 = sub_100BCDE68(v32, v6 + 32, v4, a1);
  v7 = *&v32[0];

  sub_10005C9F8(v7);
  if (v30 != v4)
  {
    __break(1u);
LABEL_4:
    v6 = _swiftEmptyArrayStorage;
  }

  *&v32[0] = v6;
  sub_100C327C8(v32);
  v8 = *&v32[0];
  v9 = *(*&v32[0] + 16);
  if (!v9)
  {
LABEL_20:

    return;
  }

  v10 = 0;
  v11 = *&v32[0] + 32;
  while (v10 < *(v8 + 16))
  {
    if (!*(v11 + v10))
    {
      strcpy(v32, " identifiers=");
      HIWORD(v32[0]) = -4864;
      v12 = [a3 identifiers];
      v13 = [v12 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17._countAndFlagsBits = v14;
      v17._object = v16;
      String.append(_:)(v17);

LABEL_8:
      v19 = *(&v32[0] + 1);
      v18 = *&v32[0];
      goto LABEL_9;
    }

    if (*(v11 + v10) == 1)
    {
      *&v32[0] = 23328;
      *(&v32[0] + 1) = 0xE200000000000000;
      v21 = [a3 shortDescription];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25._countAndFlagsBits = v22;
      v25._object = v24;
      String.append(_:)(v25);

      v26._countAndFlagsBits = 93;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      goto LABEL_8;
    }

    sub_100C32900();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    InstanceVariable = class_getInstanceVariable(ObjCClassFromMetadata, "_storage");
    if (!InstanceVariable)
    {
      goto LABEL_10;
    }

    strcpy(v31, " properties=");
    BYTE5(v31[1]) = 0;
    HIWORD(v31[1]) = -5120;
    if (object_getIvar(a3, InstanceVariable))
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v32, 0, sizeof(v32));
    }

    sub_10010FC20(&qword_1011BADF0, "rb\n");
    v29._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v29);

    v18 = v31[0];
    v19 = v31[1];
LABEL_9:
    v20 = v19;
    String.append(_:)(*&v18);

LABEL_10:
    if (v9 == ++v10)
    {
      goto LABEL_20;
    }
  }

  __break(1u);

  __break(1u);
}

unint64_t sub_100C31898()
{
  result = qword_1011BA6A8;
  if (!qword_1011BA6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BA6A8);
  }

  return result;
}

uint64_t sub_100C31954()
{
  v1 = v0;
  v2 = [v0 title];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xED0000676E6F5320;
    v4 = 0x64656C7469746E55;
  }

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 34;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = [v1 album];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 shortDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x206D75626C41203BLL;
    v16._object = 0xE800000000000000;
    String.append(_:)(v16);
  }

  v17 = [v1 artist];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 shortDescription];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 0x747369747241203BLL;
    v24._object = 0xE900000000000020;
    String.append(_:)(v24);
  }

  return 0x22203A656C746954;
}

uint64_t sub_100C31D54()
{
  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0x8000000100E461C0;
    v3 = 0xD000000000000011;
  }

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 34;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0x22203A656D614ELL;
}

uint64_t sub_100C31E28()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_100C32788;
  *(v2 + 24) = v1;
  v12 = v2;
  v3 = v0;
  sub_10010FC20(&qword_1011BA6B0, "n\\\n");
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 2236475;
  v5._object = 0xE300000000000000;
  String.append(_:)(v5);
  v6 = [v3 anyObject];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 shortDescription];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10010FC20(&qword_1011BA6B8, "n\\\n");
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 34;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0x203A65707954;
}

uint64_t sub_100C32170()
{
  v1 = v0;
  v2 = [v0 title];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0x8000000100E69760;
    v4 = 0xD000000000000010;
  }

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 34;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = [v1 show];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 shortDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x20776F6853203BLL;
    v16._object = 0xE700000000000000;
    String.append(_:)(v16);
  }

  v17 = [v1 season];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 shortDescription];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 0x6E6F73616553203BLL;
    v24._object = 0xE900000000000020;
    String.append(_:)(v24);
  }

  return 0x22203A656C746954;
}

id sub_100C32474(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_100C324E4()
{
  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0x8000000100E69740;
    v3 = 0xD000000000000010;
  }

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 34;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0x22203A656D614ELL;
}

uint64_t sub_100C32798@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void sub_100C327C8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100C57488(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100C3294C(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

unint64_t sub_100C32900()
{
  result = qword_1011BA6C0;
  if (!qword_1011BA6C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011BA6C0);
  }

  return result;
}

void sub_100C3294C(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_100C57370(v9);
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_100BCDAD8((*a3 + *v79), (*a3 + *v81), (*a3 + v82), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100C2888C(0, *(v9 + 2) + 1, 1, v9);
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v9 = sub_100C2888C((v30 > 1), v31 + 1, 1, v9);
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_100BCDAD8((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), (*a3 + v75), v34);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100C57370(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        sub_100C572E4(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_100C32E8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_100C288A0(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_100C32F80(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100C28BC4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[16 * v8 + 32], (a1 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_100C3306C(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100C289D4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  sub_10010FC20(&qword_1011BA4F8, &qword_100F0C740);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_100C331A4(unint64_t a1)
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
    v6 = v4 + v3;
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
  v6 = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1001270A4(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100C34170(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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
    return;
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
}

void sub_100C33294(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100C28E24(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  type metadata accessor for URLQueryItem();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *String.components(wrappedToLineLength:bullet:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v78 = a1;
  v9 = type metadata accessor for CharacterSet();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79._countAndFlagsBits = a4;
  v79._object = a5;
  static CharacterSet.newlines.getter();
  v68 = sub_100009934();
  v13 = StringProtocol.components(separatedBy:)();
  v14 = *(v10 + 8);
  v14(v12, v9);
  result = v13;
  v73 = *(v13 + 16);
  if (v73)
  {
    v16 = 0;
    v71 = a2;
    v72 = v13 + 32;
    v17 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v17 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v66 = v17;
    v18 = _swiftEmptyArrayStorage;
    v69 = v13;
    v70 = a3;
    while (1)
    {
      if (v16 >= *(result + 2))
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        return result;
      }

      v19 = (v72 + 16 * v16);
      v20 = *v19;
      v21 = v19[1];
      v85 = v18;
      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        v76 = v16;
        v23 = objc_allocWithZone(NSScanner);

        v75 = v21;
        v24 = v18;
        v25 = String._bridgeToObjectiveC()();
        v26 = [v23 initWithString:v25];

        v84._countAndFlagsBits = sub_100C33A48(v71, a3, &v85);
        v84._object = v27;
        static CharacterSet.whitespaces.getter();
        v28 = NSScanner.scanUpToCharacters(from:)();
        v30 = v29;
        v14(v12, v9);
        v74 = v24;
        v77 = v24;
        if (v30)
        {
          v77 = v74;
          while (1)
          {
            v31 = v84;
            v32 = String.count.getter();
            result = String.count.getter();
            v33 = &result[v32];
            if (__OFADD__(v32, result))
            {
              break;
            }

            v34 = __OFADD__(v33, 1);
            v35 = (v33 + 1);
            if (v34)
            {
              goto LABEL_49;
            }

            if (v35 > v78)
            {
              v79 = v31;
              v82 = 606827356;
              v83 = 0xE400000000000000;
              v80 = 0;
              v81 = 0xE000000000000000;
              v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v67 = v39;

              swift_beginAccess();
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v40 = v77;
              }

              else
              {
                v40 = sub_100C288A0(0, *(v77 + 2) + 1, 1, v77);
              }

              v42 = *(v40 + 2);
              v41 = *(v40 + 3);
              if (v42 >= v41 >> 1)
              {
                v40 = sub_100C288A0((v41 > 1), v42 + 1, 1, v40);
              }

              *(v40 + 2) = v42 + 1;
              v43 = &v40[16 * v42];
              v44 = v67;
              *(v43 + 4) = v38;
              *(v43 + 5) = v44;
              v77 = v40;
              v85 = v40;
              swift_endAccess();
              if (v66)
              {
                result = String.count.getter();
                v45 = (result + 1);
                if (__OFADD__(result, 1))
                {
                  goto LABEL_51;
                }

                v46._countAndFlagsBits = 32;
                v46._object = 0xE100000000000000;
                v48 = String.init(repeating:count:)(v46, v45);
                countAndFlagsBits = v48._countAndFlagsBits;
                object = v48._object;
              }

              else
              {
                countAndFlagsBits = 0;
                object = 0xE000000000000000;
              }

              v79._countAndFlagsBits = countAndFlagsBits;
              v79._object = object;

              v50._countAndFlagsBits = v28;
              v50._object = v30;
              String.append(_:)(v50);

              v51._countAndFlagsBits = 32;
              v51._object = 0xE100000000000000;
              String.append(_:)(v51);

              v84 = v79;
            }

            else
            {
              v79._countAndFlagsBits = v28;
              v79._object = v30;

              v36._countAndFlagsBits = 32;
              v36._object = 0xE100000000000000;
              String.append(_:)(v36);

              String.append(_:)(v79);
            }

            static CharacterSet.whitespaces.getter();
            v28 = NSScanner.scanUpToCharacters(from:)();
            v30 = v37;
            v14(v12, v9);
            if (!v30)
            {
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

LABEL_31:
        v52 = (v84._object >> 56) & 0xF;
        if ((v84._object & 0x2000000000000000) == 0)
        {
          v52 = v84._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v52)
        {
          v79 = v84;
          v82 = 606827356;
          v83 = 0xE400000000000000;
          v80 = 0;
          v81 = 0xE000000000000000;
          v53 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v55 = v54;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v56 = v77;
          }

          else
          {
            v56 = sub_100C288A0(0, *(v77 + 2) + 1, 1, v77);
          }

          v58 = *(v56 + 2);
          v57 = *(v56 + 3);
          if (v58 >= v57 >> 1)
          {
            v56 = sub_100C288A0((v57 > 1), v58 + 1, 1, v56);
          }

          *(v56 + 2) = v58 + 1;
          v59 = &v56[16 * v58];
          *(v59 + 4) = v53;
          *(v59 + 5) = v55;
          a3 = v70;
          v18 = v56;
        }

        else
        {

          a3 = v70;
          v18 = v77;
        }
      }

      else
      {
        v60 = *(v18 + 2);
        if (!v60)
        {
          goto LABEL_8;
        }

        v75 = v21;
        v76 = v16;

        v61 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_100C288A0(0, v60 + 1, 1, v18);
        }

        v63 = *(v61 + 2);
        v62 = *(v61 + 3);
        if (v63 >= v62 >> 1)
        {
          v61 = sub_100C288A0((v62 > 1), v63 + 1, 1, v61);
        }

        *(v61 + 2) = v63 + 1;
        v64 = &v61[16 * v63];
        v65 = v75;
        *(v64 + 4) = v20;
        *(v64 + 5) = v65;
        v18 = v61;
      }

      result = v69;
      v16 = v76;
LABEL_8:
      if (++v16 == v73)
      {
        goto LABEL_47;
      }
    }
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_47:

  return v18;
}

uint64_t sub_100C33A48(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  swift_beginAccess();
  if (*(*a3 + 16))
  {
    result = String.count.getter();
    v7 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v8._countAndFlagsBits = 32;
      v8._object = 0xE100000000000000;
      return String.init(repeating:count:)(v8, v7)._countAndFlagsBits;
    }
  }

  else
  {

    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    return a1;
  }

  return result;
}

char *Array<A>.asciiBoxed()(uint64_t a1)
{
  v45 = *(a1 + 16);
  if (v45)
  {
    v46 = 0;
    v5 = 0;
    v43 = a1 + 32;
    while (1)
    {
      v2 = *(v43 + 8 * v5);
      v7 = v2[2];
      if (v7)
      {
        v4 = v2[4];
        v3 = v2[5];

        if (v7 != 1)
        {
          v8 = v2 + 5;
          v1 = 1;
          v42 = v5;
LABEL_10:
          v9 = &v8[2 * v1];
          while (1)
          {
            v10 = v2[2];
            if (v1 >= v10)
            {
              break;
            }

            v12 = *(v9 - 1);
            v11 = *v9;
            v13 = (v1 + 1);

            v14 = String.count.getter();
            if (v14 < String.count.getter())
            {

              v3 = v11;
              v4 = v12;
              v5 = v42;
              v15 = v7 - 1 == v1++;
              v8 = v2 + 5;
              if (v15)
              {
                goto LABEL_17;
              }

              goto LABEL_10;
            }

            v9 += 2;
            ++v1;
            if (v7 == v13)
            {
              v5 = v42;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_44;
        }

LABEL_17:
        v3 = String.count.getter();
      }

      else
      {
        v3 = 0;
      }

      ++v5;
      v6 = v46;
      if (v3 > v46)
      {
        v6 = v3;
      }

      v46 = v6;
      if (v5 == v45)
      {
        goto LABEL_19;
      }
    }
  }

  v46 = 0;
LABEL_19:
  v10 = v46;
  v7 = (v46 + 2);
  if (__OFADD__(v46, 2))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    v7 = sub_100C288A0((v10 > 1), v1, 1, v7);
    goto LABEL_40;
  }

  sub_100009934();
  v47 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v50 = v16;

  v17._countAndFlagsBits = 11441634;
  v17._object = 0xA300000000000000;
  String.append(_:)(v17);

  v40 = v47;
  v41 = v50;
  v48 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v51 = v18;

  v19._countAndFlagsBits = 10786018;
  v19._object = 0xA300000000000000;
  String.append(_:)(v19);

  if (!v45)
  {
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_42;
  }

  v20 = 0;
  v39 = a1 + 32;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    v21 = *(v39 + 8 * v20);
    if (v20)
    {
      v22 = v51;
    }

    else
    {
      v22 = v41;
    }

    if (v20)
    {
      v23 = v48;
    }

    else
    {
      v23 = v40;
    }

    v44 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100C288A0(0, *(v7 + 2) + 1, 1, v7);
    }

    v25 = *(v7 + 2);
    v24 = *(v7 + 3);
    if (v25 >= v24 >> 1)
    {
      v7 = sub_100C288A0((v24 > 1), v25 + 1, 1, v7);
    }

    *(v7 + 2) = v25 + 1;
    v26 = &v7[16 * v25];
    *(v26 + 4) = v23;
    *(v26 + 5) = v22;
    v27 = *(v21 + 16);
    if (v27)
    {
      v28 = v21 + 40;
      do
      {
        v29._countAndFlagsBits = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
        String.append(_:)(v29);

        v30._countAndFlagsBits = 8557794;
        v30._object = 0xA300000000000000;
        String.append(_:)(v30);

        v32 = *(v7 + 2);
        v31 = *(v7 + 3);
        if (v32 >= v31 >> 1)
        {
          v7 = sub_100C288A0((v31 > 1), v32 + 1, 1, v7);
        }

        *(v7 + 2) = v32 + 1;
        v33 = &v7[16 * v32];
        *(v33 + 4) = 545428706;
        *(v33 + 5) = 0xA400000000000000;
        v28 += 16;
        --v27;
      }

      while (v27);
    }

    v20 = v44 + 1;
  }

  while (v44 + 1 != v45);
  v49 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v52 = v34;

  v35._countAndFlagsBits = 11507170;
  v35._object = 0xA300000000000000;
  String.append(_:)(v35);

  v2 = v49;
  v3 = v52;
  v4 = *(v7 + 2);
  v10 = *(v7 + 3);
  v1 = v4 + 1;
  if (v4 >= v10 >> 1)
  {
    goto LABEL_45;
  }

LABEL_40:
  *(v7 + 2) = v1;
  v36 = &v7[16 * v4];
  *(v36 + 4) = v2;
  *(v36 + 5) = v3;
LABEL_42:

  return v7;
}

{
  sub_10010FC20(&qword_1011BA6C8, &qword_100F0CE88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = a1;

  v3 = Array<A>.asciiBoxed()(inited);
  swift_setDeallocating();
  sub_100C34108(inited + 32);
  return v3;
}

void Array<A>.appendStringComponents(_:lineLength:bullet:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = String.components(wrappedToLineLength:bullet:)(a3, a4, a5, a1, a2);

  sub_100C32E8C(v5);
}

uint64_t sub_100C34108(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BA6D0, &qword_100F0CFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100C34170(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100C3433C();
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011BA6D8, &unk_100F0CE90);
            v9 = sub_100AA5424(v13, i, a3);
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
        sub_100C342F0();
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

unint64_t sub_100C342F0()
{
  result = qword_1011BAD20;
  if (!qword_1011BAD20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011BAD20);
  }

  return result;
}

unint64_t sub_100C3433C()
{
  result = qword_1011BA6E0;
  if (!qword_1011BA6E0)
  {
    sub_1001109D0(&qword_1011BA6D8, &unk_100F0CE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BA6E0);
  }

  return result;
}

uint64_t MPCPlaybackIntentOptions.debugDescription.getter(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100C288A0(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100C288A0((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x656D6D4979616C70;
  *(v5 + 5) = 0xEF796C6574616964;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100C288A0(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100C288A0((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6575517465736572;
    *(v8 + 5) = 0xEA00000000006575;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100C288A0(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100C288A0((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x4E70556F54646461;
    *(v11 + 5) = 0xEF64616548747865;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100C288A0(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100C288A0((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x4E70556F54646461;
  *(v14 + 5) = 0xEF6C696154747865;
  if ((a1 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100C288A0(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_100C288A0((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x5074726174736572;
    *(v17 + 5) = 0xEF6B63616279616CLL;
  }

LABEL_31:
  sub_10010FC20(&qword_1011BA6D0, &qword_100F0CFE0);
  sub_100C34764();
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 93;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return 91;
}

__C::MPMediaLibraryFilteringOptions __swiftcall MPMediaLibraryFilteringOptions.init(_:)(NSNumber_optional a1)
{
  if (a1.value.super.super.isa)
  {
    isa = a1.value.super.super.isa;
    v2 = [(objc_class *)a1.value.super.super.isa unsignedIntegerValue];

    a1.value.super.super.isa = v2;
  }

  return a1.value.super.super.isa;
}

unint64_t sub_100C34764()
{
  result = qword_1011BA6E8;
  if (!qword_1011BA6E8)
  {
    sub_1001109D0(&qword_1011BA6D0, &qword_100F0CFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BA6E8);
  }

  return result;
}

uint64_t GenericMusicItem.innerMusicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v124 = a1;
  v72 = type metadata accessor for UploadedVideo();
  v71 = *(v72 - 8);
  __chkstk_darwin();
  v70 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for UploadedAudio();
  v74 = *(v75 - 8);
  __chkstk_darwin();
  v73 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TVShow();
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v76 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for TVSeason();
  v80 = *(v81 - 8);
  __chkstk_darwin();
  v79 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for TVEpisode();
  v83 = *(v84 - 8);
  __chkstk_darwin();
  v82 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Station();
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v85 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Song();
  v89 = *(v90 - 8);
  __chkstk_darwin();
  v88 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for SocialProfile();
  v92 = *(v93 - 8);
  __chkstk_darwin();
  v91 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for RecordLabel();
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v94 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for RadioShow();
  v98 = *(v99 - 8);
  __chkstk_darwin();
  v97 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Playlist();
  v101 = *(v102 - 8);
  __chkstk_darwin();
  v100 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MusicVideo();
  v104 = *(v12 - 8);
  v105 = v12;
  __chkstk_darwin();
  v103 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicMovie();
  v107 = *(v14 - 8);
  v108 = v14;
  __chkstk_darwin();
  v106 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Genre();
  v110 = *(v16 - 8);
  v111 = v16;
  __chkstk_darwin();
  v109 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for EditorialItem();
  v113 = *(v18 - 8);
  v114 = v18;
  __chkstk_darwin();
  v112 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Curator();
  v116 = *(v20 - 8);
  v117 = v20;
  __chkstk_darwin();
  v115 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CreditArtist();
  v119 = *(v22 - 8);
  v120 = v22;
  __chkstk_darwin();
  v118 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Composer();
  v121 = *(v24 - 8);
  v122 = v24;
  __chkstk_darwin();
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Artist();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Album();
  v32 = *(v31 - 8);
  __chkstk_darwin();
  v34 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for GenericMusicItem();
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin();
  v39 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v39, v123, v35, v37);
  v40 = (*(v36 + 88))(v39, v35);
  if (v40 == enum case for GenericMusicItem.album(_:))
  {
    (*(v36 + 96))(v39, v35);
    v41 = *(v32 + 32);
    v41(v34, v39, v31);
    v42 = v124;
    v124[3] = v31;
    v42[4] = &protocol witness table for Album;
    v43 = sub_10001C8B8(v42);
    return (v41)(v43, v34, v31);
  }

  v45 = v124;
  if (v40 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v36 + 96))(v39, v35);
    v46 = *(v28 + 32);
    v46(v30, v39, v27);
    v45[3] = v27;
    v45[4] = &protocol witness table for Artist;
    v47 = sub_10001C8B8(v45);
    return (v46)(v47, v30, v27);
  }

  if (v40 == enum case for GenericMusicItem.composer(_:))
  {
    (*(v36 + 96))(v39, v35);
    v48 = v122;
    v49 = *(v121 + 32);
    v49(v26, v39, v122);
    v45[3] = v48;
    v45[4] = sub_100C36F58(&qword_1011BA738, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
    v50 = sub_10001C8B8(v45);
    v51 = v26;
    return (v49)(v50, v51, v48);
  }

  if (v40 == enum case for GenericMusicItem.creditArtist(_:))
  {
    (*(v36 + 96))(v39, v35);
    v52 = v118;
    v49 = *(v119 + 32);
    v48 = v120;
    v49(v118, v39, v120);
    v45[3] = v48;
    v53 = &unk_1011BA730;
    v54 = &type metadata accessor for CreditArtist;
    v55 = &protocol conformance descriptor for CreditArtist;
LABEL_9:
    v45[4] = sub_100C36F58(v53, v54, v55);
    v50 = sub_10001C8B8(v45);
    v51 = v52;
    return (v49)(v50, v51, v48);
  }

  v56 = v124;
  if (v40 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v36 + 96))(v39, v35);
    v57 = v115;
    v58 = *(v116 + 32);
    v59 = v117;
    v58(v115, v39, v117);
    v60 = &protocol witness table for Curator;
LABEL_13:
    v56[3] = v59;
    v56[4] = v60;
LABEL_17:
    v64 = sub_10001C8B8(v56);
    return (v58)(v64, v57, v59);
  }

  if (v40 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v36 + 96))(v39, v35);
    v57 = v112;
    v58 = *(v113 + 32);
    v59 = v114;
    v58(v112, v39, v114);
    v56[3] = v59;
    v61 = &unk_1011BA728;
    v62 = &type metadata accessor for EditorialItem;
    v63 = &protocol conformance descriptor for EditorialItem;
LABEL_16:
    v56[4] = sub_100C36F58(v61, v62, v63);
    goto LABEL_17;
  }

  if (v40 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v36 + 96))(v39, v35);
    v57 = v109;
    v58 = *(v110 + 32);
    v59 = v111;
    v58(v109, v39, v111);
    v60 = &protocol witness table for Genre;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v36 + 96))(v39, v35);
    v57 = v106;
    v58 = *(v107 + 32);
    v59 = v108;
    v58(v106, v39, v108);
    v56[3] = v59;
    v61 = &unk_1011BA720;
    v62 = &type metadata accessor for MusicMovie;
    v63 = &protocol conformance descriptor for MusicMovie;
    goto LABEL_16;
  }

  if (v40 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v36 + 96))(v39, v35);
    v59 = v105;
    v58 = *(v104 + 32);
    v57 = v103;
    v58(v103, v39, v105);
    v60 = &protocol witness table for MusicVideo;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v101 + 32);
    v57 = v100;
    v59 = v102;
    v58(v100, v39, v102);
    v60 = &protocol witness table for Playlist;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.radioShow(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v98 + 32);
    v57 = v97;
    v59 = v99;
    v58(v97, v39, v99);
    v60 = &protocol witness table for RadioShow;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.recordLabel(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v95 + 32);
    v57 = v94;
    v59 = v96;
    v58(v94, v39, v96);
    v60 = &protocol witness table for RecordLabel;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.socialProfile(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v92 + 32);
    v57 = v91;
    v59 = v93;
    v58(v91, v39, v93);
    v56[3] = v59;
    v61 = &unk_1011BA718;
    v62 = &type metadata accessor for SocialProfile;
    v63 = &protocol conformance descriptor for SocialProfile;
    goto LABEL_16;
  }

  if (v40 == enum case for GenericMusicItem.song(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v89 + 32);
    v57 = v88;
    v59 = v90;
    v58(v88, v39, v90);
    v60 = &protocol witness table for Song;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.station(_:))
  {
    (*(v36 + 96))(v39, v35);
    v65 = *(v86 + 32);
    v66 = v85;
    v67 = v87;
    v65(v85, v39, v87);
    v45[3] = v67;
    v45[4] = &protocol witness table for Station;
    v68 = sub_10001C8B8(v45);
    return (v65)(v68, v66, v67);
  }

  else
  {
    if (v40 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v83 + 32);
      v52 = v82;
      v48 = v84;
      v49(v82, v39, v84);
      v45[3] = v48;
      v53 = &unk_1011BA710;
      v54 = &type metadata accessor for TVEpisode;
      v55 = &protocol conformance descriptor for TVEpisode;
      goto LABEL_9;
    }

    if (v40 == enum case for GenericMusicItem.tvSeason(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v80 + 32);
      v52 = v79;
      v48 = v81;
      v49(v79, v39, v81);
      v45[3] = v48;
      v53 = &unk_1011BA708;
      v54 = &type metadata accessor for TVSeason;
      v55 = &protocol conformance descriptor for TVSeason;
      goto LABEL_9;
    }

    if (v40 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v77 + 32);
      v52 = v76;
      v48 = v78;
      v49(v76, v39, v78);
      v45[3] = v48;
      v53 = &unk_1011BA700;
      v54 = &type metadata accessor for TVShow;
      v55 = &protocol conformance descriptor for TVShow;
      goto LABEL_9;
    }

    if (v40 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v74 + 32);
      v52 = v73;
      v48 = v75;
      v49(v73, v39, v75);
      v45[3] = v48;
      v53 = &unk_1011BA6F8;
      v54 = &type metadata accessor for UploadedAudio;
      v55 = &protocol conformance descriptor for UploadedAudio;
      goto LABEL_9;
    }

    if (v40 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v71 + 32);
      v52 = v70;
      v48 = v72;
      v49(v70, v39, v72);
      v45[3] = v48;
      v53 = &unk_1011BA6F0;
      v54 = &type metadata accessor for UploadedVideo;
      v55 = &protocol conformance descriptor for UploadedVideo;
      goto LABEL_9;
    }

    v69 = (v36 + 8);
    if (v40 == enum case for GenericMusicItem.other(_:))
    {
      result = (*v69)(v39, v35);
      v45[4] = 0;
      *v45 = 0u;
      *(v45 + 1) = 0u;
    }

    else
    {
      v124[4] = 0;
      *v45 = 0u;
      *(v45 + 1) = 0u;
      return (*v69)(v39, v35);
    }
  }

  return result;
}

uint64_t GenericMusicItem.catalogID.getter()
{
  v0 = type metadata accessor for TVShow();
  v38 = *(v0 - 8);
  v39 = v0;
  __chkstk_darwin();
  v37 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TVSeason();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin();
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TVEpisode();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin();
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Song();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin();
  v46 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin();
  v49 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicVideo();
  v53 = *(v10 - 8);
  v54 = v10;
  __chkstk_darwin();
  v52 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MusicMovie();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin();
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Artist();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Album();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GenericMusicItem();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin();
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, v57, v23, v25);
  v28 = (*(v24 + 88))(v27, v23);
  if (v28 != enum case for GenericMusicItem.album(_:))
  {
    if (v28 == enum case for GenericMusicItem.artist(_:))
    {
      (*(v24 + 96))(v27, v23);
      (*(v16 + 32))(v18, v27, v15);
      v29 = Artist.catalogID.getter();
      (*(v16 + 8))(v18, v15);
      return v29;
    }

    if (v28 != enum case for GenericMusicItem.composer(_:) && v28 != enum case for GenericMusicItem.curator(_:) && v28 != enum case for GenericMusicItem.editorialItem(_:) && v28 != enum case for GenericMusicItem.genre(_:))
    {
      if (v28 == enum case for GenericMusicItem.musicMovie(_:))
      {
        (*(v24 + 96))(v27, v23);
        v31 = v55;
        v30 = v56;
        (*(v55 + 32))(v14, v27, v56);
        v29 = MusicMovie.catalogID.getter();
        (*(v31 + 8))(v14, v30);
        return v29;
      }

      if (v28 == enum case for GenericMusicItem.musicVideo(_:))
      {
        (*(v24 + 96))(v27, v23);
        v32 = v52;
        v33 = v53;
        v34 = v54;
        (*(v53 + 32))(v52, v27, v54);
        v35 = MusicVideo.catalogID.getter();
LABEL_15:
        v29 = v35;
        (*(v33 + 8))(v32, v34);
        return v29;
      }

      if (v28 == enum case for GenericMusicItem.playlist(_:))
      {
        (*(v24 + 96))(v27, v23);
        v32 = v49;
        v33 = v50;
        v34 = v51;
        (*(v50 + 32))(v49, v27, v51);
        v35 = Playlist.catalogID.getter();
        goto LABEL_15;
      }

      if (v28 != enum case for GenericMusicItem.radioShow(_:) && v28 != enum case for GenericMusicItem.recordLabel(_:) && v28 != enum case for GenericMusicItem.socialProfile(_:))
      {
        if (v28 == enum case for GenericMusicItem.song(_:))
        {
          (*(v24 + 96))(v27, v23);
          v32 = v46;
          v33 = v47;
          v34 = v48;
          (*(v47 + 32))(v46, v27, v48);
          v35 = Song.catalogID.getter();
          goto LABEL_15;
        }

        if (v28 != enum case for GenericMusicItem.station(_:))
        {
          if (v28 == enum case for GenericMusicItem.tvEpisode(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v43;
            v33 = v44;
            v34 = v45;
            (*(v44 + 32))(v43, v27, v45);
            v35 = TVEpisode.catalogID.getter();
            goto LABEL_15;
          }

          if (v28 == enum case for GenericMusicItem.tvSeason(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v40;
            v33 = v41;
            v34 = v42;
            (*(v41 + 32))(v40, v27, v42);
            v35 = TVSeason.catalogID.getter();
            goto LABEL_15;
          }

          if (v28 == enum case for GenericMusicItem.tvShow(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v37;
            v33 = v38;
            v34 = v39;
            (*(v38 + 32))(v37, v27, v39);
            v35 = TVShow.catalogID.getter();
            goto LABEL_15;
          }
        }
      }
    }

    (*(v24 + 8))(v27, v23);
    return 0;
  }

  (*(v24 + 96))(v27, v23);
  (*(v20 + 32))(v22, v27, v19);
  v29 = Album.catalogID.getter();
  (*(v20 + 8))(v22, v19);
  return v29;
}

uint64_t Playlist.Entry.InternalItem.musicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for Playlist.Entry.InternalItem();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v3, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v6 + 96))(v9, v5);
    v11 = type metadata accessor for MusicMovie();
    a1[3] = v11;
    v12 = &unk_1011BA720;
    v13 = &type metadata accessor for MusicMovie;
    v14 = &protocol conformance descriptor for MusicMovie;
LABEL_3:
    v15 = sub_100C36F58(v12, v13, v14);
LABEL_8:
    a1[4] = v15;
    v16 = sub_10001C8B8(a1);
    return (*(*(v11 - 8) + 32))(v16, v9, v11);
  }

  if (v10 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v6 + 96))(v9, v5);
    v11 = type metadata accessor for MusicVideo();
    a1[3] = v11;
    v15 = &protocol witness table for MusicVideo;
    goto LABEL_8;
  }

  if (v10 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v6 + 96))(v9, v5);
    v11 = type metadata accessor for Song();
    a1[3] = v11;
    v15 = &protocol witness table for Song;
    goto LABEL_8;
  }

  if (v10 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v6 + 96))(v9, v5);
    v11 = type metadata accessor for TVEpisode();
    a1[3] = v11;
    v12 = &unk_1011BA710;
    v13 = &type metadata accessor for TVEpisode;
    v14 = &protocol conformance descriptor for TVEpisode;
    goto LABEL_3;
  }

  if (v10 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v6 + 96))(v9, v5);
    v11 = type metadata accessor for UploadedAudio();
    a1[3] = v11;
    v12 = &unk_1011BA6F8;
    v13 = &type metadata accessor for UploadedAudio;
    v14 = &protocol conformance descriptor for UploadedAudio;
    goto LABEL_3;
  }

  if (v10 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v6 + 96))(v9, v5);
    v11 = type metadata accessor for UploadedVideo();
    a1[3] = v11;
    v12 = &unk_1011BA6F0;
    v13 = &type metadata accessor for UploadedVideo;
    v14 = &protocol conformance descriptor for UploadedVideo;
    goto LABEL_3;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v19 = 0xD000000000000028;
  v20 = 0x8000000100E42000;
  sub_100C36F58(&qword_1011BA740, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Artist.pinPlayabilityStatus(isOnline:explicitContentIsAllowed:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = Artist.trackCount.getter();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = Artist.cleanTrackCount.getter();
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v12 = Artist.downloadedTrackCount.getter();
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v15 = Artist.downloadedCleanTrackCount.getter();
  if (v16)
  {
    if ((v4 & 1) == 0)
    {
      if ((a2 & 1) == 0)
      {
        if (v11 <= 0)
        {
          if (v14 <= 0)
          {
            goto LABEL_36;
          }

          goto LABEL_20;
        }

LABEL_27:
        v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.networkUnavailable(_:);
        goto LABEL_28;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 1) == 0)
  {
    if (a2)
    {
LABEL_22:
      if (v14 <= 0)
      {
        goto LABEL_27;
      }

LABEL_23:
      v17 = &enum case for MusicPlayer.PlayabilityStatus.playable(_:);
      goto LABEL_30;
    }

    if (v11 >= 1 && !v15)
    {
      goto LABEL_27;
    }

    if (v14 < 1 || v15)
    {
      if (v15 <= 0)
      {
LABEL_36:
        v20 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
        v21 = *(*(v20 - 8) + 104);
        if (v8 < 1)
        {
          v28 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
        }

        else
        {
          v28 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.explicitRestricted(_:);
        }

        v23 = *v28;
        v22 = a3;
        goto LABEL_29;
      }

      goto LABEL_23;
    }

LABEL_20:
    v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.explicitRestricted(_:);
LABEL_28:
    v19 = *v18;
    v20 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
    v21 = *(*(v20 - 8) + 104);
    v22 = a3;
    v23 = v19;
LABEL_29:
    v21(v22, v23, v20);
    v17 = &enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
    goto LABEL_30;
  }

  if (!v8)
  {
    v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
    goto LABEL_28;
  }

  v17 = &enum case for MusicPlayer.PlayabilityStatus.playable(_:);
  if ((a2 & 1) == 0 && v11 <= 0)
  {
    goto LABEL_20;
  }

LABEL_30:
  v24 = *v17;
  v25 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v26 = *(*(v25 - 8) + 104);

  return v26(a3, v24, v25);
}

uint64_t MusicPin.Action.symbolName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPin.Action();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MusicPin.Action.navigate(_:))
  {
    return 0;
  }

  if (v7 == enum case for MusicPin.Action.play(_:))
  {
    return 0x6C69662E79616C70;
  }

  if (v7 != enum case for MusicPin.Action.shuffle(_:))
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return 0x656C6666756873;
}

uint64_t sub_100C36EF0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BA748, "2\\\n");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100C36F58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100C36FB8(uint64_t (*a1)(__n128))
{
  v39 = type metadata accessor for TimeZone();
  v2 = *(v39 - 8);
  __chkstk_darwin();
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v34 = *(v36 - 8);
  __chkstk_darwin();
  v33 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin();
  v32 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = v31 - v8;
  sub_10010FC20(&qword_1011BA588, &qword_100F0C920);
  __chkstk_darwin();
  v10 = v31 - v9;
  sub_10010FC20(&qword_1011BA590, &qword_100F0C928);
  __chkstk_darwin();
  v12 = v31 - v11;
  v13 = type metadata accessor for DateComponents();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BA748, "2\\\n");
  v17 = __chkstk_darwin();
  v19 = v31 - v18;
  a1(v17);
  if (v20)
  {
    v21 = type metadata accessor for Date();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
LABEL_6:
    sub_100C36EF0(v19);
    return 0;
  }

  v31[1] = v4;
  if (qword_1011B99F8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Calendar();
  sub_1000060E4(v22, static Calendar.musicDefaultCalendar);
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  (*(v2 + 56))(v10, 1, 1, v39);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  Calendar.date(from:)();
  (*(v14 + 8))(v16, v13);
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v19, 1, v23) == 1)
  {
    goto LABEL_6;
  }

  v26 = v32;
  static ParseableFormatStyle<>.dateTime.getter();
  v27 = v33;
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  v28 = v35;
  Date.FormatStyle.year(_:)();
  (*(v34 + 8))(v27, v36);
  v29 = v38;
  v30 = *(v37 + 8);
  v30(v26, v38);
  Calendar.timeZone.getter();
  Date.FormatStyle.timeZone.setter();
  sub_100C36F58(&qword_1011BA750, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v30(v28, v29);
  (*(v24 + 8))(v19, v23);
  return v40;
}

uint64_t sub_100C37620(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_100C309F0(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

void sub_100C376B0(NSObject *a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X3>, double (**a5)(uint64_t, uint64_t *, NSObject *, __n128)@<X4>, int a6@<W5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  LODWORD(v733) = a6;
  v721 = a5;
  v723 = a4;
  v714 = a3;
  v718 = a2;
  v19 = a14;
  v716 = a13;
  v712 = a11;
  v711 = a10;
  v701 = sub_10010FC20(&qword_1011BA4F8, &qword_100F0C740);
  v700 = *(v701 - 8);
  __chkstk_darwin();
  v699 = v628 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v702 = v628 - v21;
  swift_getAssociatedTypeWitness();
  v713 = a15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v729 = type metadata accessor for CollectionDifference.Change();
  *&v664 = v729[-1];
  __chkstk_darwin();
  v738 = (v628 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v728 = (v628 - v25);
  v26 = type metadata accessor for CollectionDifference();
  WitnessTable = swift_getWitnessTable();
  v693 = type metadata accessor for IndexingIterator();
  *&v663 = *(v693 - 8);
  __chkstk_darwin();
  v736 = v628 - v27;
  v683 = *(v26 - 8);
  __chkstk_darwin();
  v697 = v628 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v678 = v628 - v29;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v680 = type metadata accessor for Optional();
  v662 = *(v680 - 8);
  __chkstk_darwin();
  v690 = (v628 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v730 = (v628 - v31);
  v734 = v26;
  type metadata accessor for Optional();
  __chkstk_darwin();
  v685 = v628 - v32;
  v673 = sub_10010FC20(&qword_1011BA928, &qword_100F0CFD0);
  __chkstk_darwin();
  v741 = (v628 - v33);
  v737 = AssociatedTypeWitness;
  v674 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  *&v724 = v628 - v34;
  v35 = a1;
  v684 = swift_checkMetadataState();
  v665 = *(v684 - 8);
  __chkstk_darwin();
  v670 = v628 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v682 = v628 - v37;
  v671 = *(a14 - 1);
  __chkstk_darwin();
  v658 = v628 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v660 = v628 - v39;
  __chkstk_darwin();
  v659 = v628 - v40;
  __chkstk_darwin();
  v669 = v628 - v41;
  __chkstk_darwin();
  v677 = v628 - v42;
  __chkstk_darwin();
  v692 = v628 - v43;
  __chkstk_darwin();
  v722 = (v628 - v44);
  __chkstk_darwin();
  v740 = (v628 - v45);
  v742 = type metadata accessor for IndexPath();
  v725 = *(v742 - 8);
  __chkstk_darwin();
  v681 = v628 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v675 = v628 - v47;
  __chkstk_darwin();
  v668 = v628 - v48;
  __chkstk_darwin();
  v667 = v628 - v49;
  __chkstk_darwin();
  v666 = v628 - v50;
  __chkstk_darwin();
  v679 = v628 - v51;
  __chkstk_darwin();
  v661 = v628 - v52;
  __chkstk_darwin();
  v710 = v628 - v53;
  __chkstk_darwin();
  v698 = v628 - v54;
  __chkstk_darwin();
  v56 = v628 - v55;
  __chkstk_darwin();
  v687 = v628 - v57;
  __chkstk_darwin();
  v707 = v628 - v58;
  __chkstk_darwin();
  *&v705 = v628 - v59;
  __chkstk_darwin();
  v706 = (v628 - v60);
  __chkstk_darwin();
  v686 = v628 - v61;
  __chkstk_darwin();
  v696 = v628 - v62;
  __chkstk_darwin();
  v695 = v628 - v63;
  __chkstk_darwin();
  v688 = v628 - v64;
  __chkstk_darwin();
  v708 = v628 - v65;
  __chkstk_darwin();
  v709 = v628 - v66;
  __chkstk_darwin();
  v731 = v628 - v67;
  __chkstk_darwin();
  v739 = v628 - v68;
  __chkstk_darwin();
  *&v726 = v628 - v69;
  v703 = sub_10010FC20(&qword_1011BA930, &qword_100F0CFD8);
  v672 = *(v703 - 8);
  __chkstk_darwin();
  v676 = v628 - v70;
  *a9 = 0;
  v71 = type metadata accessor for AIDiffingUpdate(0);
  v72 = v71[6];
  IndexSet.init()();
  v720 = v71[7];
  IndexSet.init()();
  v73 = v71[8];
  *(a9 + v73) = _swiftEmptyArrayStorage;
  v74 = (a9 + v71[9]);
  *v74 = 0;
  v74[1] = _swiftEmptyArrayStorage;
  v704 = v74;
  v75 = (a9 + v71[10]);
  *v75 = 0;
  v75[1] = _swiftEmptyArrayStorage;
  v715 = v75;
  v76 = (a9 + v71[11]);
  *v76 = 0;
  v76[1] = _swiftEmptyArrayStorage;
  v717 = v71[12];
  *(a9 + v717) = _swiftEmptyArrayStorage;
  *(a9 + 8) = a7;
  *(a9 + 16) = a8;
  v735 = a9;
  if (!v35)
  {
    sub_100030444(a7, a8);
    sub_100020438(a12, v716);
    sub_100020438(v711, v712);
    sub_100020438(a7, a8);

LABEL_14:

    *v735 = 1;
    return;
  }

  v694 = a12;
  if (!v718)
  {
    sub_100030444(a7, a8);
    sub_100020438(v694, v716);
    sub_100020438(v711, v712);
    sub_100020438(a7, a8);
LABEL_13:

    goto LABEL_14;
  }

  v657 = v73;
  v654 = AssociatedConformanceWitness;
  sub_100030444(a7, a8);

  v77 = Array.count.getter();
  v78 = v35;
  v79 = v716;
  v80 = v694;
  if (v77 <= 0 || (v641 = v77, v689 = v78, v81 = Array.count.getter(), v81 < 1))
  {

    sub_100020438(v80, v79);
    sub_100020438(v711, v712);
    sub_100020438(a7, a8);

    goto LABEL_13;
  }

  TupleTypeMetadata3 = v81;
  v645 = v72;
  v650 = v56;
  if (qword_1011B9A28 != -1)
  {
    goto LABEL_370;
  }

  while (1)
  {
    v83 = type metadata accessor for Logger();
    v84 = sub_1000060E4(v83, qword_1011BA758);

    v727 = v84;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();

    v87 = os_log_type_enabled(v85, v86);
    v719 = v19;
    v656 = TupleTypeMetadata3;
    if (v87)
    {
      v88 = swift_slowAlloc();
      v746 = swift_slowAlloc();
      *v88 = 136315394;
      v89 = _typeName(_:qualified:)();
      v91 = sub_1000108DC(v89, v90, &v746);

      *(v88 + 4) = v91;
      *(v88 + 12) = 2080;
      v92 = Array.description.getter();
      v94 = sub_1000108DC(v92, v93, &v746);

      *(v88 + 14) = v94;
      v19 = v719;
      _os_log_impl(&_mh_execute_header, v85, v86, "Building update for section with item type %s, visible index paths: %s", v88, 0x16u);
      swift_arrayDestroy();
    }

    v644 = a8;
    v95 = v711;
    v640 = a7;
    if (v711)
    {
      v96 = swift_allocObject();
      v97 = v713;
      v96[2] = v19;
      v96[3] = v97;
      v98 = v712;
      v96[4] = v95;
      v96[5] = v98;
      v99 = sub_100C46DD0;
    }

    else
    {
      v96 = swift_allocObject();
      v97 = v713;
      v96[2] = v19;
      v96[3] = v97;
      v99 = sub_100C46BBC;
      v98 = v712;
    }

    v100 = swift_allocObject();
    v100[2] = v19;
    v100[3] = v97;
    v100[4] = v99;
    v100[5] = v96;
    v648 = v100;
    sub_100030444(v95, v98);
    v754 = sub_100C1C0E4(_swiftEmptyArrayStorage);
    v753 = &_swiftEmptySetSingleton;
    v746 = v689;
    __chkstk_darwin();
    v628[-4] = v19;
    v628[-3] = v97;
    v628[-2] = &v753;
    v101 = type metadata accessor for Array();
    v102 = swift_getWitnessTable();
    v647 = sub_100006E28(sub_100C46BFC, &v628[-6], v101, &type metadata for String, &type metadata for Never, v102, &protocol witness table for Never, v103);
    v744[0] = v718;
    swift_getWitnessTable();
    Sequence.enumerated()();
    v744[0] = v746;
    __chkstk_darwin();
    v628[-4] = v104;
    v628[-3] = v97;
    v628[-2] = &v754;
    __chkstk_darwin();
    v628[-4] = v105;
    v628[-3] = v97;
    v628[-2] = sub_100C46C20;
    v628[-1] = v106;
    v107 = type metadata accessor for EnumeratedSequence();
    v752[1] = v102;
    v108 = swift_getWitnessTable();
    v110 = sub_100006E28(sub_100C46C2C, &v628[-6], v107, &type metadata for String, &type metadata for Never, v108, &protocol witness table for Never, v109);
    v111 = v647;

    v112 = v753;
    if (v753[2] != *(v111 + 16))
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v168 = Logger.logObject.getter();
      v169 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v746 = v171;
        *v170 = 136446210;
        v172 = Array.description.getter();
        v174 = v173;

        v175 = sub_1000108DC(v172, v174, &v746);

        *(v170 + 4) = v175;
        v176 = "Found duplicate sections in old items, falling back to reload data. Sections: %{public}s";
LABEL_66:
        _os_log_impl(&_mh_execute_header, v168, v169, v176, v170, 0xCu);
        sub_10000959C(v171);

        sub_100020438(v694, v716);
        sub_100020438(v711, v712);
        sub_100020438(v640, v644);
LABEL_68:

        *v735 = 1;
        goto LABEL_69;
      }

LABEL_67:

      sub_100020438(v694, v716);
      sub_100020438(v711, v712);
      sub_100020438(v640, v644);

      goto LABEL_68;
    }

    if (v110[2] != v656)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v168 = Logger.logObject.getter();
      v169 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v746 = v171;
        *v170 = 136446210;
        v177 = Array.description.getter();
        v179 = v178;

        v180 = sub_1000108DC(v177, v179, &v746);

        *(v170 + 4) = v180;
        v176 = "Found duplicate sections in new items, falling back to reload data. Sections: %{public}s";
        goto LABEL_66;
      }

      goto LABEL_67;
    }

    v630 = v110;
    v746 = v110;
    v744[0] = v111;
    sub_10010FC20(&qword_1011BA6D0, &qword_100F0CFE0);
    sub_100020674(&qword_1011BA6E8, &qword_1011BA6D0, &qword_100F0CFE0, &protocol conformance descriptor for [A]);
    BidirectionalCollection<>.difference<A>(from:)();
    v632 = sub_100C1C1E0(_swiftEmptyArrayStorage);
    v752[0] = v632;
    v751 = &_swiftEmptySetSingleton;
    v19 = v719;
    v635 = swift_getAssociatedConformanceWitness();
    v113 = type metadata accessor for OrderedSet();
    swift_getTupleTypeMetadata2();
    v114 = static Array._allocateUninitialized(_:)();
    v115 = sub_10003B618(v114, &type metadata for Int, v113, &protocol witness table for Int);
    v116 = v113;

    v655 = v115;
    v750 = v115;
    v117 = static Array._allocateUninitialized(_:)();
    v118 = sub_10003B618(v117, &type metadata for Int, v113, &protocol witness table for Int);

    v749 = v118;
    v746 = v714;

    sub_100C439C0(&v746);
    v628[1] = 0;
    v631 = v112;
    a8 = v746;
    v119 = v746[2];
    v120 = v726;
    v653 = v116;
    v652 = v119;
    if (v119)
    {
      a7 = 0;
      *&v651 = v746 + ((*(v725 + 80) + 32) & ~*(v725 + 80));
      v656 = (v725 + 16);
      v121 = (v725 + 8);
      v642 = v713 + 40;
      v634 = (v674 + 16);
      v639 = v665 + 8;
      v633 = (v674 + 8);
      v636 = (v713 + 32);
      v637 = (v671 + 8);
      TupleTypeMetadata3 = v734;
      v638 = (v725 + 8);
      v646 = v746;
      while (1)
      {
        if (a7 >= *(a8 + 16))
        {
          goto LABEL_360;
        }

        v122 = *(v725 + 16);
        v122(v120, v651 + *(v725 + 72) * a7, v742);
        if (IndexPath.section.getter() < v723)
        {
          (*v121)(v120, v742);
        }

        else
        {
          a8 = v737;
          if ((v733 & 1) != 0 || IndexPath.section.getter() <= v721)
          {
            v123 = v731;
            v124 = v742;
            v122(v731, v120, v742);
            v125 = v739;
            v126 = v123;
            v116 = v653;
            sub_100C41CE0(v739, v126);
            v649 = *v121;
            (v649)(v125, v124);
            v744[0] = IndexPath.section.getter();
            TupleTypeMetadata3 = &type metadata for Int;
            v19 = &protocol witness table for Int;
            Dictionary.subscript.getter();
            if (v747)
            {
              sub_100B46144(v746, v747);
            }

            else
            {
              v127 = IndexPath.section.getter();
              static Array._allocateUninitialized(_:)();
              v746 = OrderedSet.init(arrayLiteral:)();
              v747 = v128;
              v744[0] = v127;
              type metadata accessor for Dictionary();
              Dictionary.subscript.setter();
              v129 = IndexPath.section.getter();
              v130 = IndexPath.item.getter();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v746 = v752[0];
              v132 = v130;
              TupleTypeMetadata3 = &type metadata for Int;
              sub_100C43738(v132, v129, isUniquelyReferenced_nonNull_native);
              v632 = v746;
              v752[0] = v746;
            }

            v744[0] = IndexPath.section.getter();
            Dictionary.subscript.getter();
            if (v747)
            {
              sub_100B46144(v746, v747);
            }

            else
            {
              v133 = IndexPath.section.getter();
              static Array._allocateUninitialized(_:)();
              v746 = OrderedSet.init(arrayLiteral:)();
              v747 = v134;
              v744[0] = v133;
              type metadata accessor for Dictionary();
              Dictionary.subscript.setter();
            }

            if (__OFSUB__(IndexPath.section.getter(), v723))
            {
              goto LABEL_368;
            }

            Array.subscript.getter();
            v744[0] = IndexPath.section.getter();
            Dictionary.subscript.getter();
            v135 = v747;
            if (v747)
            {
              v643 = ContiguousArray.count.getter();
            }

            else
            {
              v643 = 0;
            }

            v748 = IndexPath.section.getter();
            type metadata accessor for Dictionary();
            v136 = Dictionary.subscript.modify();
            if (*(v137 + 8))
            {
              v138 = v682;
              (*(v713 + 40))(v719);
              v745 = IndexPath.item.getter();
              v139 = v684;
              v140 = dispatch thunk of Collection.subscript.read();
              v141 = v724;
              (*v634)(v724);
              v140(v744, 0);
              v142 = v138;
              v116 = v653;
              v143 = v139;
              v144 = v737;
              (*v639)(v142, v143);
              OrderedSet._append(_:)();
              v145 = v141;
              v120 = v726;
              (*v633)(v145, v144);
            }

            v136(&v746, 0);
            v744[0] = IndexPath.section.getter();
            v655 = v750;
            Dictionary.subscript.getter();
            if (v747)
            {
              v146 = ContiguousArray.count.getter();

              v19 = v719;
              if (v135 && v643 == v146)
              {
LABEL_344:

                swift_bridgeObjectRelease_n();

                swift_bridgeObjectRelease_n();

                v608 = Logger.logObject.getter();
                v609 = static os_log_type_t.fault.getter();
                if (os_log_type_enabled(v608, v609))
                {
                  v610 = swift_slowAlloc();
                  *v610 = 0;
                  _os_log_impl(&_mh_execute_header, v608, v609, "Found duplicate in old visible items, falling back to reload data.", v610, 2u);
                }

                sub_100020438(v694, v716);

                sub_100020438(v711, v712);
                sub_100020438(v640, v644);
                (*v637)(v740, v19);
                (v649)(v120, v742);
                (*(v672 + 8))(v676, v703);
                *v735 = 1;

LABEL_352:

LABEL_69:

                return;
              }
            }

            else
            {
              v19 = v719;
              if (!v135)
              {
                goto LABEL_344;
              }
            }

            v147 = (*(v713 + 32))(v19);
            if (*(v754 + 16) && (sub_100019C40(v147, v148), (v149 & 1) != 0))
            {

              Array.subscript.getter();
              v150 = IndexPath.item.getter();
              v151 = *(v713 + 40);
              v152 = v682;
              v151(v19);
              v153 = v684;
              v154 = dispatch thunk of Collection.count.getter();
              v155 = *v639;
              v156 = v152;
              v116 = v653;
              (*v639)(v156, v153);
              v157 = v150 < v154;
              v158 = v120;
              if (v157)
              {
                v744[0] = IndexPath.section.getter();
                Dictionary.subscript.getter();
                v643 = v747;
                if (v747)
                {
                  v629 = ContiguousArray.count.getter();
                }

                else
                {
                  v629 = 0;
                }

                v748 = IndexPath.section.getter();
                v159 = Dictionary.subscript.modify();
                if (*(v160 + 8))
                {
                  v161 = v682;
                  v628[0] = v159;
                  (v151)(v719, v713);
                  v745 = IndexPath.item.getter();
                  v162 = v684;
                  v163 = dispatch thunk of Collection.subscript.read();
                  v164 = v724;
                  v165 = v737;
                  (*v634)(v724);
                  v163(v744, 0);
                  v155(v161, v162);
                  v116 = v653;
                  OrderedSet._append(_:)();
                  (*v633)(v164, v165);
                  (v628[0])(&v746, 0);
                }

                else
                {
                  v159(&v746, 0);
                  v116 = v653;
                }

                v744[0] = IndexPath.section.getter();
                Dictionary.subscript.getter();
                if (v747)
                {
                  v166 = ContiguousArray.count.getter();

                  v158 = v726;
                  if (v643 && v629 == v166)
                  {
LABEL_353:

                    swift_bridgeObjectRelease_n();

                    swift_bridgeObjectRelease_n();

                    v623 = Logger.logObject.getter();
                    v624 = static os_log_type_t.fault.getter();
                    if (os_log_type_enabled(v623, v624))
                    {
                      v625 = swift_slowAlloc();
                      *v625 = 0;
                      _os_log_impl(&_mh_execute_header, v623, v624, "Found duplicate in new visible items, falling back to reload data.", v625, 2u);
                    }

                    sub_100020438(v694, v716);

                    sub_100020438(v711, v712);
                    sub_100020438(v640, v644);
                    v626 = *v637;
                    v627 = v719;
                    (*v637)(v722, v719);
                    v626(v740, v627);
                    (v649)(v726, v742);
                    (*(v672 + 8))(v676, v703);

                    *v735 = 1;

                    return;
                  }
                }

                else
                {
                  v158 = v726;
                  if (!v643)
                  {
                    goto LABEL_353;
                  }
                }
              }

              v167 = *v637;
              v19 = v719;
              (*v637)(v722, v719);
              v167(v740, v19);
              v121 = v638;
              (v649)(v158, v742);
              TupleTypeMetadata3 = v734;
              v120 = v158;
            }

            else
            {

              (*v637)(v740, v19);
              v121 = v638;
              (v649)(v120, v742);
              TupleTypeMetadata3 = v734;
            }
          }

          else
          {
            (*v121)(v120, v742);
          }

          a8 = v646;
        }

        if (v652 == ++a7)
        {
          goto LABEL_71;
        }
      }
    }

    TupleTypeMetadata3 = v734;
LABEL_71:

    swift_getTupleTypeMetadata2();
    v181 = static Array._allocateUninitialized(_:)();
    v182 = sub_10003B618(v181, &type metadata for Int, TupleTypeMetadata3, &protocol witness table for Int);

    a7 = v655 + 64;
    v183 = *(v655 + 64);
    v748 = v182;
    v184 = 1 << *(v655 + 32);
    v185 = -1;
    if (v184 < 64)
    {
      v185 = ~(-1 << v184);
    }

    a8 = v185 & v183;
    v186 = (v184 + 63) >> 6;
    v722 = (v683 + 56);

    v187 = 0;
    while (1)
    {
      v188 = v703;
      if (!a8)
      {
        break;
      }

      v189 = v116;
      TupleTypeMetadata3 = v187;
LABEL_81:
      v190 = __clz(__rbit64(a8)) | (TupleTypeMetadata3 << 6);
      v191 = *(*(v655 + 48) + 8 * v190);
      a8 &= a8 - 1;
      v192 = (*(v655 + 56) + 16 * v190);
      v193 = *v192;
      v194 = v192[1];
      v740 = v191;
      v744[0] = v191;
      v195 = v193;

      v196 = v189;
      Dictionary.subscript.getter();
      v197 = v747;
      if (v747)
      {
        *&v724 = v628;
        *&v726 = v746;
        v733 = v195;
        v744[0] = v195;
        v744[1] = v194;
        v731 = v194;
        __chkstk_darwin();
        v198 = v713;
        v628[-12] = v719;
        v628[-11] = v198;
        v199 = v648;
        v628[-10] = sub_100C46BC4;
        v628[-9] = v199;
        v200 = v716;
        v628[-8] = v694;
        v628[-7] = v200;
        v628[-6] = v201;
        v628[-5] = v197;
        v628[-4] = v752;
        v202 = v740;
        v203 = v735;
        v628[-3] = v740;
        v628[-2] = v203;
        swift_getWitnessTable();
        v204 = v685;
        v116 = v653;
        BidirectionalCollection.difference<A>(from:by:)();
        (*v722)(v204, 0, 1, v734);
        v746 = v202;
        type metadata accessor for Dictionary();
        Dictionary.subscript.setter();

        v19 = v719;

        v187 = TupleTypeMetadata3;
      }

      else
      {

        v187 = TupleTypeMetadata3;
        v19 = v719;
        v116 = v196;
      }
    }

    while (1)
    {
      TupleTypeMetadata3 = v187 + 1;
      if (__OFADD__(v187, 1))
      {
        goto LABEL_359;
      }

      if (TupleTypeMetadata3 >= v186)
      {
        break;
      }

      a8 = *(a7 + 8 * TupleTypeMetadata3);
      ++v187;
      if (a8)
      {
        v189 = v116;
        goto LABEL_81;
      }
    }

    v205 = v741;
    (*(v672 + 16))(v741, v676, v188);
    v206 = *(v673 + 36);
    v207 = sub_100020674(&qword_1011BA938, &qword_1011BA930, &qword_100F0CFD8, &protocol conformance descriptor for CollectionDifference<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (*(v205 + v206) != v746)
    {
      *&v208 = 134349056;
      v726 = v208;
      *&v208 = 134349312;
      v724 = v208;
      v731 = v206;
      do
      {
        a7 = v19;
        v19 = v207;
        v388 = dispatch thunk of Collection.subscript.read();
        v390 = *v389;
        v391 = *(v389 + 16);
        v392 = *(v389 + 24);
        TupleTypeMetadata3 = *(v389 + 32);
        v393 = *(v389 + 33);
        v394 = *v389;
        v733 = *(v389 + 8);
        v740 = v391;
        v395 = MPCPlaybackEngine.Configuration.options.getter(v394, v733, v391);
        v388(&v746, 0, v395);
        v207 = v19;
        dispatch thunk of Collection.formIndex(after:)();
        a8 = v390 + v723;
        v396 = __OFADD__(v390, v723);
        if (v393)
        {
          if (v396)
          {
            goto LABEL_365;
          }

          if ((TupleTypeMetadata3 & 1) == 0)
          {
            v402 = v390 + v723;
            v403 = v392 + v723;
            if (__OFADD__(v392, v723))
            {
              goto LABEL_372;
            }

            v404 = Logger.logObject.getter();
            v405 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v404, v405))
            {
              v406 = swift_slowAlloc();
              *v406 = v724;
              *(v406 + 4) = v402;
              *(v406 + 12) = 2050;
              *(v406 + 14) = v403;
              _os_log_impl(&_mh_execute_header, v404, v405, "[Remove] Moving section from %{public}ld to %{public}ld", v406, 0x16u);
            }

            v407 = *&v735[v657];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v407 = sub_100C28BC4(0, *(v407 + 2) + 1, 1, v407);
            }

            v409 = *(v407 + 2);
            v408 = *(v407 + 3);
            if (v409 >= v408 >> 1)
            {
              v407 = sub_100C28BC4((v408 > 1), v409 + 1, 1, v407);
            }

            sub_100C46CF0();
            *(v407 + 2) = v409 + 1;
            v410 = &v407[16 * v409];
            *(v410 + 4) = v402;
            *(v410 + 5) = v403;
LABEL_226:
            *&v735[v657] = v407;
            v19 = v719;
            goto LABEL_196;
          }

          v19 = a7;
          v397 = Logger.logObject.getter();
          v398 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v397, v398))
          {
            v399 = swift_slowAlloc();
            *v399 = v726;
            *(v399 + 4) = a8;
            _os_log_impl(&_mh_execute_header, v397, v398, "Deleting section %{public}ld", v399, 0xCu);
            v19 = v719;
          }
        }

        else
        {
          if (v396)
          {
            goto LABEL_366;
          }

          if ((TupleTypeMetadata3 & 1) == 0)
          {
            v411 = v390 + v723;
            v412 = v392 + v723;
            if (__OFADD__(v392, v723))
            {
              goto LABEL_373;
            }

            v413 = Logger.logObject.getter();
            v414 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v413, v414))
            {
              v415 = swift_slowAlloc();
              *v415 = v724;
              *(v415 + 4) = v412;
              *(v415 + 12) = 2050;
              *(v415 + 14) = v411;
              _os_log_impl(&_mh_execute_header, v413, v414, "[Insert] Moving section from %{public}ld to %{public}ld", v415, 0x16u);
            }

            v407 = *&v735[v657];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v407 = sub_100C28BC4(0, *(v407 + 2) + 1, 1, v407);
            }

            v417 = *(v407 + 2);
            v416 = *(v407 + 3);
            if (v417 >= v416 >> 1)
            {
              v407 = sub_100C28BC4((v416 > 1), v417 + 1, 1, v407);
            }

            sub_100C46CF0();
            *(v407 + 2) = v417 + 1;
            v418 = &v407[16 * v417];
            *(v418 + 4) = v412;
            *(v418 + 5) = v411;
            goto LABEL_226;
          }

          v19 = a7;
          v397 = Logger.logObject.getter();
          v400 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v397, v400))
          {
            v401 = swift_slowAlloc();
            *v401 = v726;
            *(v401 + 4) = a8;
            _os_log_impl(&_mh_execute_header, v397, v400, "Inserting section %{public}ld", v401, 0xCu);
            v19 = v719;
          }
        }

        IndexSet.insert(_:)(a8);
        sub_100C46CF0();
LABEL_196:
        v387 = v741;
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*(v387 + v731) != v746);
    }

    sub_100C46CF8(v741);
    v209 = sub_100C1C1E0(_swiftEmptyArrayStorage);
    v211 = (v748 + 64);
    v210 = *(v748 + 64);
    v212 = 1 << *(v748 + 32);
    v213 = -1;
    v745 = v209;
    if (v212 < 64)
    {
      v213 = ~(-1 << v212);
    }

    v657 = v213 & v210;
    v633 = ((v212 + 63) >> 6);
    v214 = TupleTypeMetadata2;
    v638 = (TupleTypeMetadata2 - 8);
    v653 = (v683 + 16);
    v656 = (v683 + 32);
    v637 = (v662 + 32);
    v642 = v713 + 32;
    v722 = (v664 + 16);
    v721 = (v664 + 32);
    v741 = (v725 + 16);
    v740 = (v725 + 8);
    v720 = (v674 + 8);
    v635 = (v663 + 8);
    v643 = (v671 + 8);
    v636 = (v683 + 8);
    v639 = v748;

    v215 = 0;
    *&v216 = 134349312;
    v663 = v216;
    *&v216 = 136446210;
    v664 = v216;
    *&v216 = 136446466;
    v651 = v216;
    a8 = v737;
    TupleTypeMetadata3 = v734;
    v217 = v736;
    v218 = v730;
    v634 = v211;
LABEL_88:
    a7 = v690;
    v219 = v657;
    if (v657)
    {
      v652 = v215;
      v220 = v215;
      goto LABEL_98;
    }

    v221 = v633 <= v215 + 1 ? v215 + 1 : v633;
    v222 = v221 - 1;
LABEL_94:
    v220 = v215 + 1;
    if (!__OFADD__(v215, 1))
    {
      break;
    }

LABEL_358:
    __break(1u);
LABEL_359:
    __break(1u);
LABEL_360:
    __break(1u);
LABEL_361:
    __break(1u);
LABEL_362:
    __break(1u);
LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
LABEL_365:
    __break(1u);
LABEL_366:
    __break(1u);
LABEL_367:
    __break(1u);
LABEL_368:
    __break(1u);
LABEL_369:
    __break(1u);
LABEL_370:
    swift_once();
  }

  if (v220 >= v633)
  {
    v657 = 0;
    v231 = 1;
    v652 = v222;
    goto LABEL_99;
  }

  v219 = v211[v220];
  ++v215;
  if (!v219)
  {
    goto LABEL_94;
  }

  v652 = v220;
LABEL_98:
  v657 = (v219 - 1) & v219;
  v223 = __clz(__rbit64(v219)) | (v220 << 6);
  v224 = *(*(v639 + 48) + 8 * v223);
  v225 = v683;
  v226 = v678;
  (*(v683 + 16))(v678, *(v639 + 56) + *(v683 + 72) * v223, TupleTypeMetadata3);
  v227 = TupleTypeMetadata2;
  v228 = *(TupleTypeMetadata2 + 48);
  v229 = v690;
  *v690 = v224;
  v230 = *(v225 + 32);
  v214 = v227;
  v230(v229 + v228, v226, TupleTypeMetadata3);
  a7 = v229;
  v231 = 0;
LABEL_99:
  v232 = *(v214 - 8);
  (*(v232 + 56))(a7, v231, 1, v214);
  (*v637)(v218, a7, v680);
  if ((*(v232 + 48))(v218, 1, v214) == 1)
  {

    v419 = 0;
    v708 = (v713 + 40);
    v420 = *(v713 + 32);
    v728 = (v665 + 8);
    v709 = (v671 + 16);
    v717 = v725 + 32;
    *&v421 = 134350594;
    v705 = v421;
    v422 = v641;
    v423 = v644;
    v720 = v420;
    while (1)
    {
      if (v419 >= v422)
      {
        goto LABEL_375;
      }

      v425 = (v419 + 1);
      if (__OFADD__(v419, 1))
      {
        goto LABEL_376;
      }

      v426 = v677;
      Array.subscript.getter();
      v427 = v420(v19, v713);
      v429 = v754;
      if (!*(v754 + 16))
      {
        (*v643)(v426, v19);

LABEL_229:
        v424 = v716;
        goto LABEL_230;
      }

      v430 = sub_100019C40(v427, v428);
      v432 = v431;

      if ((v432 & 1) == 0)
      {
        (*v643)(v677, v19);
        goto LABEL_229;
      }

      v721 = (v419 + 1);
      v433 = *(*(v429 + 7) + 8 * v430);
      v434 = v713;
      v435 = *(v713 + 40);
      v435(v19, v713);
      v738 = v433;
      Array.subscript.getter();
      v436 = v682;
      v435(v19, v434);
      v437 = v684;
      v438 = dispatch thunk of Collection.count.getter();
      v439 = *v728;
      (*v728)(v436, v437);
      v440 = dispatch thunk of Collection.count.getter();
      v736 = v438;
      v441 = __OFSUB__(v440, v438);
      v442 = v440 - v438;
      if (v441)
      {
        goto LABEL_377;
      }

      v443 = v659;
      if (v442 < 0)
      {
        v441 = __OFSUB__(0, v442);
        v442 = -v442;
        if (v441)
        {
          goto LABEL_380;
        }
      }

      v734 = v440;
      swift_beginAccess();
      v722 = v745;
      v444 = sub_100C37620(v738, v745);
      v446 = v445;
      swift_endAccess();
      if (v446)
      {
        v447 = 0;
      }

      else
      {
        v447 = v444;
      }

      v737 = v442 + v447;
      if (__OFADD__(v442, v447))
      {
        goto LABEL_378;
      }

      v735 = dispatch thunk of Collection.count.getter();
      v448 = *v709;
      v449 = v719;
      (*v709)(v443, v677, v719);
      v450 = v660;
      v706 = v448;
      v448(v660, v669, v449);
      v451 = Logger.logObject.getter();
      v452 = static os_log_type_t.default.getter();
      v453 = os_log_type_enabled(v451, v452);
      *&v726 = v439;
      v707 = v429;
      if (v453)
      {
        v454 = swift_slowAlloc();
        v733 = swift_slowAlloc();
        v743 = v733;
        *v454 = v705;
        *(v454 + 4) = v419;
        *(v454 + 12) = 2082;
        WitnessTable = v451;
        LODWORD(v731) = v452;
        v455 = v720;
        v456 = v720(v449, v713);
        v457 = v443;
        v459 = v458;
        v460 = *v643;
        (*v643)(v457, v449);
        v461 = sub_1000108DC(v456, v459, &v743);

        *(v454 + 14) = v461;
        *(v454 + 22) = 2050;
        *(v454 + 24) = v738;
        *(v454 + 32) = 2080;
        v462 = v660;
        v463 = v455(v449, v713);
        v465 = v464;
        *&v724 = v460;
        v460(v462, v449);
        v466 = sub_1000108DC(v463, v465, &v743);

        *(v454 + 34) = v466;
        *(v454 + 42) = 2050;
        *(v454 + 44) = v442;
        *(v454 + 52) = 2050;
        *(v454 + 54) = v737;
        *(v454 + 62) = 2082;
        v746 = sub_100C37620(v738, v722);
        LOBYTE(v747) = v467 & 1;
        sub_10010FC20(&qword_1011BA948, &qword_100F0CFE8);
        v468 = String.init<A>(describing:)();
        v470 = sub_1000108DC(v468, v469, &v743);

        *(v454 + 64) = v470;
        v471 = WitnessTable;
        _os_log_impl(&_mh_execute_header, WitnessTable, v731, "Section %{public}ld(%{public}s) mapped to section %{public}ld(%s): difference=%{public}ld adjustedDifference=%{public}ld diffAdjustmentMap=%{public}s", v454, 0x48u);
        swift_arrayDestroy();

        v434 = v713;
      }

      else
      {

        v472 = *v643;
        (*v643)(v450, v449);
        *&v724 = v472;
        v472(v443, v449);
      }

      v746 = _swiftEmptyArrayStorage;
      v473 = v736;
      if (v734 > v736)
      {
        v473 = v734;
      }

      v474 = (v473 - 1);
      if (__OFSUB__(v473, 1))
      {
        goto LABEL_379;
      }

      swift_beginAccess();
      isa = _swiftEmptyArrayStorage[2];
      if (isa >= v737)
      {
        v559 = _swiftEmptyArrayStorage;
        v525 = v681;
        goto LABEL_307;
      }

      v733 = v419 + v723;
      v476 = __OFADD__(v419, v723);
      LODWORD(v734) = v476;
      v477 = v738;
      if (v735 >= v736)
      {
        v477 = v419;
      }

      v730 = (v477 + v723);
      v478 = __OFADD__(v477, v723);
      LODWORD(v731) = v478;
      WitnessTable = &_swiftEmptyArrayStorage[2];
      v729 = _swiftEmptyArrayStorage;
      do
      {
        while (1)
        {
          if (v474 < 0)
          {

            v611 = v658;
            v612 = v677;
            v706(v658, v677, v449);
            v613 = Logger.logObject.getter();
            v614 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v613, v614))
            {
              v615 = swift_slowAlloc();
              v616 = swift_slowAlloc();
              v743 = v616;
              *v615 = v664;
              v617 = v720(v449, v434);
              v619 = v618;
              v620 = v724;
              (v724)(v611, v449);
              v621 = sub_1000108DC(v617, v619, &v743);

              *(v615 + 4) = v621;
              _os_log_impl(&_mh_execute_header, v613, v614, "We ran out of items while trying to build index paths for section with identifier %{public}s", v615, 0xCu);
              sub_10000959C(v616);

              sub_100020438(v694, v716);

              sub_100020438(v711, v712);
              sub_100020438(v640, v644);
              v620(v669, v449);
              (v726)(v670, v684);
              v620(v612, v449);
            }

            else
            {

              sub_100020438(v694, v716);

              sub_100020438(v711, v712);
              sub_100020438(v640, v644);
              v622 = v724;
              (v724)(v611, v449);
              v622(v669, v449);
              (v726)(v670, v684);
              v622(v612, v449);
            }

            (*(v672 + 8))(v676, v703);

            goto LABEL_193;
          }

          if (v734)
          {
            __break(1u);
LABEL_372:
            __break(1u);
LABEL_373:
            __break(1u);
LABEL_374:
            __break(1u);
LABEL_375:
            __break(1u);
LABEL_376:
            __break(1u);
LABEL_377:
            __break(1u);
LABEL_378:
            __break(1u);
LABEL_379:
            __break(1u);
LABEL_380:
            __break(1u);

            __break(1u);
            return;
          }

          IndexPath.init(item:section:)();
          v479 = v751;
          v480 = *(v751 + 2);
          v738 = v474;
          if (v480)
          {
            sub_100C46E04(&qword_1011BA688, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v481 = dispatch thunk of Hashable._rawHashValue(seed:)();
            v482 = -1 << v479[32];
            v483 = v481 & ~v482;
            if ((*&v479[((v483 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v483))
            {
              v484 = ~v482;
              v485 = *(v725 + 72);
              v486 = *(v725 + 16);
              while (1)
              {
                v487 = v739;
                v486(v739, *(v479 + 6) + v485 * v483, v742);
                sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                v488 = dispatch thunk of static Equatable.== infix(_:_:)();
                v489 = *v740;
                (*v740)(v487, v742);
                if (v488)
                {
                  break;
                }

                v483 = (v483 + 1) & v484;
                if (((*&v479[((v483 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v483) & 1) == 0)
                {
                  goto LABEL_266;
                }
              }

              v507 = v661;
              v508 = v710;
              v486(v661, v710, v742);
              v509 = Logger.logObject.getter();
              v510 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v509, v510))
              {
                v511 = swift_slowAlloc();
                v512 = swift_slowAlloc();
                v743 = v512;
                *v511 = v664;
                sub_100C46E04(&qword_1011BA940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                v513 = v742;
                v514 = dispatch thunk of CustomStringConvertible.description.getter();
                v516 = v515;
                v489(v507, v513);
                v517 = sub_1000108DC(v514, v516, &v743);

                *(v511 + 4) = v517;
                _os_log_impl(&_mh_execute_header, v509, v510, "%{public}s contained in the visible index paths set, skipping", v511, 0xCu);
                sub_10000959C(v512);

                v489(v508, v513);
              }

              else
              {

                v524 = v742;
                v489(v507, v742);
                v489(v508, v524);
              }

              v449 = v719;
              v525 = v681;
              v491 = v738;
              goto LABEL_297;
            }
          }

LABEL_266:
          if (v731)
          {
            goto LABEL_374;
          }

          v490 = v679;
          v491 = v738;
          IndexPath.init(item:section:)();
          v492 = (*(v725 + 80) + 32) & ~*(v725 + 80);
          if (v735 < v736)
          {
            break;
          }

          v501 = *v715;
          v500 = v715[1];
          v502 = v500 + v492;
          v503 = *(v500 + 16);
          if (*v715)
          {

            sub_100C458DC(v490, v502, v503, (v501 + 16), v501 + 32);
            v505 = v504;

            if (v505)
            {
              goto LABEL_299;
            }

            v506 = *v741;
          }

          else
          {
            if (!v503)
            {
              goto LABEL_299;
            }

            v521 = *(v725 + 72);
            v506 = *(v725 + 16);
            while (1)
            {
              v522 = v739;
              v506(v739, v502, v742);
              sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
              v523 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v740)(v522, v742);
              if (v523)
              {
                break;
              }

              v502 += v521;
              if (!--v503)
              {
                goto LABEL_299;
              }
            }

            v491 = v738;
          }

          v526 = v667;
          v506(v667, v490, v742);
          v527 = Logger.logObject.getter();
          v541 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v527, v541))
          {
LABEL_295:

            v547 = *v740;
            v548 = v742;
            (*v740)(v526, v742);
            v547(v710, v548);
            v547(v490, v548);
            goto LABEL_296;
          }

          v529 = swift_slowAlloc();
          v542 = v526;
          v531 = swift_slowAlloc();
          v743 = v531;
          *v529 = v664;
          sub_100C46E04(&qword_1011BA940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v532 = v742;
          v543 = dispatch thunk of CustomStringConvertible.description.getter();
          v545 = v544;
          v536 = *v740;
          (*v740)(v542, v532);
          v546 = sub_1000108DC(v543, v545, &v743);

          *(v529 + 4) = v546;
          v538 = v541;
          v539 = v527;
          v540 = "%{public}s contained in the deleted index paths set, skipping";
LABEL_294:
          _os_log_impl(&_mh_execute_header, v539, v538, v540, v529, 0xCu);
          sub_10000959C(v531);

          v536(v710, v532);
          v536(v679, v532);
          v491 = v738;
LABEL_296:
          v449 = v719;
          v525 = v681;
LABEL_297:
          v474 = v491 - 1;
          isa = WitnessTable->isa;
          v434 = v713;
          if (WitnessTable->isa >= v737)
          {
            goto LABEL_306;
          }
        }

        v494 = *v704;
        v493 = v704[1];
        v495 = v493 + v492;
        v496 = *(v493 + 16);
        if (*v704)
        {

          sub_100C458DC(v490, v495, v496, (v494 + 16), v494 + 32);
          v498 = v497;

          if ((v498 & 1) == 0)
          {
            v499 = *v741;
LABEL_289:
            v526 = v666;
            v499(v666, v490, v742);
            v527 = Logger.logObject.getter();
            v528 = static os_log_type_t.default.getter();
            if (!os_log_type_enabled(v527, v528))
            {
              goto LABEL_295;
            }

            v529 = swift_slowAlloc();
            v530 = v526;
            v531 = swift_slowAlloc();
            v743 = v531;
            *v529 = v664;
            sub_100C46E04(&qword_1011BA940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v532 = v742;
            v533 = dispatch thunk of CustomStringConvertible.description.getter();
            v535 = v534;
            v536 = *v740;
            (*v740)(v530, v532);
            v537 = sub_1000108DC(v533, v535, &v743);

            *(v529 + 4) = v537;
            v538 = v528;
            v539 = v527;
            v540 = "%{public}s contained in the inserted index paths set, skipping";
            goto LABEL_294;
          }
        }

        else if (v496)
        {
          v518 = *(v725 + 72);
          v499 = *(v725 + 16);
          while (1)
          {
            v519 = v739;
            v499(v739, v495, v742);
            sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v520 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*v740)(v519, v742);
            if (v520)
            {
              break;
            }

            v495 += v518;
            if (!--v496)
            {
              goto LABEL_299;
            }
          }

          v491 = v738;
          goto LABEL_289;
        }

LABEL_299:
        (*v741)(v668, v490, v742);
        v549 = v729;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v549 = sub_100C289AC(0, v549[2].isa + 1, 1, v549);
        }

        v449 = v719;
        v434 = v713;
        v550 = v710;
        v551 = v738;
        v553 = v549[2].isa;
        v552 = v549[3].isa;
        if (v553 >= v552 >> 1)
        {
          v549 = sub_100C289AC((v552 > 1), v553 + 1, 1, v549);
        }

        v549[2].isa = (v553 + 1);
        v554 = v549 + 2;
        v555 = v725;
        v556 = v549 + v492 + *(v725 + 72) * v553;
        v557 = v742;
        (*(v725 + 32))(v556, v668, v742);
        v729 = v549;
        v746 = v549;
        v558 = *(v555 + 8);
        v558(v550, v557);
        v558(v679, v557);
        v474 = v551 - 1;
        WitnessTable = v549 + 2;
        isa = v549[2].isa;
      }

      while (v554->isa < v737);
      v525 = v681;
LABEL_306:
      v559 = v729;
LABEL_307:
      v729 = v559;

      if (v735 >= v736)
      {
        if (isa)
        {
          v576 = 0;
          v577 = *(v725 + 72);
          v578 = (*(v725 + 80) + 32) & ~*(v725 + 80);
          v579 = v729 + v578;
          v580 = *(v725 + 16);
          v738 = (v729 + v578);
          v580(v525, v729 + v578, v742);
          while (1)
          {
            v582 = *v715;
            v581 = v715[1];
            v583 = v581 + v578;
            v584 = *(v581 + 16);
            if (*v715)
            {

              sub_100C458DC(v525, v583, v584, (v582 + 16), v582 + 32);
              v586 = v585;
              v588 = v587;

              if (v586)
              {
                v525 = v681;
                goto LABEL_336;
              }

              v525 = v681;
            }

            else if (v584)
            {
              while (1)
              {
                v589 = v739;
                v580(v739, v583, v742);
                sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                v590 = dispatch thunk of static Equatable.== infix(_:_:)();
                (*v740)(v589, v742);
                if (v590)
                {
                  break;
                }

                v583 += v577;
                if (!--v584)
                {
                  v588 = 0;
                  v579 = v738;
                  goto LABEL_336;
                }
              }

              v579 = v738;
            }

            else
            {
              v588 = 0;
LABEL_336:
              sub_100C452C0(v525, v588);
            }

            v576 = (v576 + 1);
            (*v740)(v525, v742);
            if (v576 == isa)
            {
              break;
            }

            v580(v525, (v579 + v577 * v576), v742);
          }
        }

        v591 = Logger.logObject.getter();
        v602 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v591, v602))
        {
          v593 = swift_slowAlloc();
          v594 = swift_slowAlloc();
          v743 = v594;
          *v593 = v664;

          v603 = Array.description.getter();
          v605 = v604;

          v606 = sub_1000108DC(v603, v605, &v743);

          *(v593 + 4) = v606;
          v599 = v602;
          v600 = v591;
          v601 = "Non visible adjustment: deleting %{public}s";
LABEL_342:
          _os_log_impl(&_mh_execute_header, v600, v599, v601, v593, 0xCu);
          sub_10000959C(v594);
        }
      }

      else
      {
        if (isa)
        {
          v560 = 0;
          v561 = *(v725 + 72);
          v562 = (*(v725 + 80) + 32) & ~*(v725 + 80);
          v563 = v729 + v562;
          v564 = *(v725 + 16);
          v565 = v675;
          v738 = (v729 + v562);
          v564(v675, v729 + v562, v742);
          while (1)
          {
            v567 = *v704;
            v566 = v704[1];
            v568 = v566 + v562;
            v569 = *(v566 + 16);
            if (*v704)
            {

              sub_100C458DC(v565, v568, v569, (v567 + 16), v567 + 32);
              v571 = v570;
              v573 = v572;

              if (v571)
              {
                v565 = v675;
                goto LABEL_321;
              }

              v565 = v675;
            }

            else if (v569)
            {
              while (1)
              {
                v574 = v739;
                v564(v739, v568, v742);
                sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                v575 = dispatch thunk of static Equatable.== infix(_:_:)();
                (*v740)(v574, v742);
                if (v575)
                {
                  break;
                }

                v568 += v561;
                if (!--v569)
                {
                  v573 = 0;
                  v563 = v738;
                  goto LABEL_321;
                }
              }

              v563 = v738;
            }

            else
            {
              v573 = 0;
LABEL_321:
              sub_100C452C0(v565, v573);
            }

            v560 = (v560 + 1);
            (*v740)(v565, v742);
            if (v560 == isa)
            {
              break;
            }

            v564(v565, (v563 + v561 * v560), v742);
          }
        }

        v591 = Logger.logObject.getter();
        v592 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v591, v592))
        {
          v593 = swift_slowAlloc();
          v594 = swift_slowAlloc();
          v743 = v594;
          *v593 = v664;

          v595 = Array.description.getter();
          v597 = v596;

          v598 = sub_1000108DC(v595, v597, &v743);

          *(v593 + 4) = v598;
          v599 = v592;
          v600 = v591;
          v601 = "Non visible adjustment: inserting %{public}s";
          goto LABEL_342;
        }
      }

      v19 = v719;
      v607 = v724;
      (v724)(v669, v719);
      (v726)(v670, v684);
      v607(v677, v19);

      v423 = v644;
      v424 = v716;
      v420 = v720;
      v425 = v721;
LABEL_230:
      v422 = v641;
      v419 = v425;
      if (v425 == v641)
      {

        sub_100020438(v694, v424);

        sub_100020438(v711, v712);

        sub_100020438(v640, v423);

        (*(v672 + 8))(v676, v703);

        goto LABEL_352;
      }
    }
  }

  v233 = *v218;
  (*v656)(v697, v218 + *(v214 + 48), TupleTypeMetadata3);
  v731 = v233;
  if (__OFSUB__(v233, v723))
  {
    goto LABEL_367;
  }

  Array.subscript.getter();
  v234 = (*(v713 + 32))(v19);
  v236 = *(v754 + 16);
  v662 = v754;
  if (v236 && (v237 = sub_100019C40(v234, v235), (v238 & 1) != 0))
  {
    v239 = *(*(v662 + 56) + 8 * v237);

    v240 = swift_isUniquelyReferenced_nonNull_native();
    v746 = v745;
    v685 = v239;
    sub_100C43738(0, v239, v240);
    LODWORD(v724) = 0;
    v745 = v746;
  }

  else
  {

    v685 = 0;
    LODWORD(v724) = 1;
  }

  (*v653)(v217, v697, TupleTypeMetadata3);
  v241 = *(v693 + 36);
  a7 = WitnessTable;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (static CollectionDifference.Index.== infix(_:_:)())
  {
LABEL_87:
    (*v635)(v217, v693);
    (*v643)(v692, v19);
    (*v636)(v697, TupleTypeMetadata3);
    v214 = TupleTypeMetadata2;
    v211 = v634;
    v215 = v652;
    goto LABEL_88;
  }

  v673 = v685 + v723;
  v242 = __OFADD__(v685, v723);
  LODWORD(v674) = v242;
  v733 = v241;
  while (1)
  {
    v246 = dispatch thunk of Collection.subscript.read();
    v247 = v728;
    v248 = v729;
    (*v722)(v728);
    v246(&v746, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v249 = v738;
    (*v721)(v738, v247, v248);
    LODWORD(v246) = swift_getEnumCaseMultiPayload();
    v250 = *v249;
    sub_1001109D0(&qword_1011BA948, &qword_100F0CFE8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v251 = v249 + *(TupleTypeMetadata3 + 64);
    v252 = *v251;
    a8 = v251[8];
    v253 = v752[0];
    v254 = *(v752[0] + 16);
    if (v246 != 1)
    {
      if (v254)
      {
        v257 = sub_100C309F0(v731);
        if (v258)
        {
          v254 = *(*(v253 + 56) + 8 * v257);
        }

        else
        {
          v254 = 0;
        }
      }

      if (__OFADD__(v250, v254))
      {
        __break(1u);
LABEL_357:
        __break(1u);
        goto LABEL_358;
      }

      a7 = v738 + *(TupleTypeMetadata3 + 48);
      if (v724)
      {
        v273 = Logger.logObject.getter();
        v274 = static os_log_type_t.default.getter();
        v275 = os_log_type_enabled(v273, v274);
        TupleTypeMetadata3 = v734;
        if (v275)
        {
          v276 = swift_slowAlloc();
          *v276 = v663;
          *(v276 + 4) = v731;
          *(v276 + 12) = 2050;
          *(v276 + 14) = v250;
          goto LABEL_144;
        }

LABEL_145:

        a8 = v737;
        v217 = v736;
        v218 = v730;
        goto LABEL_113;
      }

      *&v726 = v738 + *(TupleTypeMetadata3 + 48);
      if (a8)
      {
        v278 = sub_100C3E120(&v746, v685);
        if (*(v277 + 8))
        {
          (v278)(&v746, 0);
          a7 = v696;
        }

        else
        {
          a7 = v696;
          if (__OFADD__(*v277, 1))
          {
            goto LABEL_369;
          }

          ++*v277;
          (v278)(&v746, 0);
        }

        if (v674)
        {
          goto LABEL_363;
        }

        IndexPath.init(item:section:)();
        v341 = *v704;
        v340 = v704[1];
        v342 = v340 + ((*(v725 + 80) + 32) & ~*(v725 + 80));
        v343 = *(v340 + 16);
        if (*v704)
        {

          sub_100C458DC(a7, v342, v343, (v341 + 16), v341 + 32);
          v345 = v344;
          v347 = v346;

          if ((v345 & 1) == 0)
          {
            goto LABEL_185;
          }
        }

        else
        {
          if (v343)
          {
            v366 = *(v725 + 72);
            v367 = *(v725 + 16);
            do
            {
              v368 = v739;
              v369 = v742;
              v367(v739, v342, v742);
              sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
              v370 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v740)(v368, v369);
              if (v370)
              {
                goto LABEL_185;
              }

              v342 += v366;
            }

            while (--v343);
          }

          v347 = 0;
        }

        sub_100C452C0(a7, v347);
LABEL_185:
        v371 = v686;
        (*v741)(v686, a7, v742);
        v372 = Logger.logObject.getter();
        v373 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v372, v373))
        {
          v374 = swift_slowAlloc();
          v375 = swift_slowAlloc();
          v746 = v375;
          *v374 = v664;
          sub_100C46E04(&qword_1011BA940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v376 = v742;
          v377 = dispatch thunk of CustomStringConvertible.description.getter();
          v379 = v378;
          v380 = *v740;
          (*v740)(v371, v376);
          v381 = sub_1000108DC(v377, v379, &v746);

          *(v374 + 4) = v381;
          _os_log_impl(&_mh_execute_header, v372, v373, "Inserting item %{public}s", v374, 0xCu);
          sub_10000959C(v375);
          v19 = v719;

          v380(v696, v376);
        }

        else
        {

          v382 = *v740;
          v383 = v742;
          (*v740)(v371, v742);
          v382(a7, v383);
        }

        a8 = v737;
        TupleTypeMetadata3 = v734;
        v217 = v736;
        v218 = v730;
        goto LABEL_112;
      }

      v280 = v709;
      IndexPath.init(item:section:)();
      if (v674)
      {
        goto LABEL_362;
      }

      v281 = v708;
      IndexPath.init(item:section:)();
      v282 = *v741;
      v283 = v688;
      v284 = v280;
      v285 = v742;
      (*v741)(v688, v284, v742);
      v286 = v695;
      v282(v695, v281, v285);
      v287 = Logger.logObject.getter();
      v288 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v287, v288))
      {
        v289 = swift_slowAlloc();
        v649 = swift_slowAlloc();
        v746 = v649;
        *v289 = v651;
        sub_100C46E04(&qword_1011BA940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v290 = v742;
        v291 = dispatch thunk of CustomStringConvertible.description.getter();
        v292 = v283;
        v294 = v293;
        v295 = *v740;
        (*v740)(v292, v290);
        v296 = sub_1000108DC(v291, v294, &v746);

        *(v289 + 4) = v296;
        *(v289 + 12) = 2082;
        v297 = v695;
        v298 = dispatch thunk of CustomStringConvertible.description.getter();
        v300 = v299;
        v295(v297, v290);
        v301 = sub_1000108DC(v298, v300, &v746);

        *(v289 + 14) = v301;
        _os_log_impl(&_mh_execute_header, v287, v288, "[Insert] Moving item %{public}s to %{public}s", v289, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v295 = *v740;
        v348 = v286;
        v349 = v742;
        (*v740)(v348, v742);
        v295(v283, v349);
      }

      a8 = v737;
      v217 = v736;
      v218 = v730;
      v350 = *(v701 + 48);
      v351 = v702;
      v352 = v742;
      v282(v702, v709, v742);
      v282(&v351[v350], v708, v352);
      v353 = *&v735[v717];
      v354 = swift_isUniquelyReferenced_nonNull_native();
      v19 = v719;
      if ((v354 & 1) == 0)
      {
        v353 = sub_100C289D4(0, v353[2] + 1, 1, v353);
      }

      v356 = v353[2];
      v355 = v353[3];
      if (v356 >= v355 >> 1)
      {
        v353 = sub_100C289D4((v355 > 1), v356 + 1, 1, v353);
      }

      v243 = v742;
      v295(v708, v742);
      v295(v709, v243);
      v353[2] = v356 + 1;
      v244 = v353 + ((*(v700 + 80) + 32) & ~*(v700 + 80)) + *(v700 + 72) * v356;
      v245 = &v730;
      goto LABEL_111;
    }

    if (v254)
    {
      v255 = sub_100C309F0(v731);
      if (v256)
      {
        v254 = *(*(v253 + 56) + 8 * v255);
      }

      else
      {
        v254 = 0;
      }
    }

    if (__OFADD__(v250, v254))
    {
      goto LABEL_357;
    }

    if (v724)
    {
      break;
    }

    v260 = sub_100C3E120(&v746, v685);
    if (*(v259 + 8) != 1)
    {
      if (__OFSUB__(*v259, 1))
      {
        goto LABEL_361;
      }

      --*v259;
    }

    (v260)(&v746, 0);
    *&v726 = v738 + *(TupleTypeMetadata3 + 48);
    if (a8)
    {
      goto LABEL_130;
    }

    v19 = v705;
    IndexPath.init(item:section:)();
    if (v674)
    {
      goto LABEL_364;
    }

    v302 = v707;
    IndexPath.init(item:section:)();
    v303 = v742;
    v304 = *v741;
    v305 = v687;
    (*v741)(v687, v19, v742);
    v306 = v650;
    v304(v650, v302, v303);
    v307 = Logger.logObject.getter();
    v308 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v307, v308))
    {
      v309 = swift_slowAlloc();
      v649 = swift_slowAlloc();
      v746 = v649;
      *v309 = v651;
      sub_100C46E04(&qword_1011BA940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v646 = v307;
      v310 = v742;
      v311 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v645) = v308;
      v313 = v312;
      v314 = *v740;
      (*v740)(v305, v310);
      v315 = v311;
      v19 = v705;
      v316 = sub_1000108DC(v315, v313, &v746);

      *(v309 + 4) = v316;
      *(v309 + 12) = 2082;
      v317 = dispatch thunk of CustomStringConvertible.description.getter();
      v319 = v318;
      v314(v306, v310);
      v320 = sub_1000108DC(v317, v319, &v746);

      *(v309 + 14) = v320;
      v321 = v646;
      _os_log_impl(&_mh_execute_header, v646, v645, "[Remove] Moving item %{public}s to %{public}s", v309, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v314 = *v740;
      v357 = v306;
      v358 = v742;
      (*v740)(v357, v742);
      v314(v305, v358);
    }

    v217 = v736;
    v218 = v730;
    v359 = *(v701 + 48);
    v360 = v699;
    v361 = v742;
    v304(v699, v19, v742);
    v304(&v360[v359], v707, v361);
    v353 = *&v735[v717];
    v362 = swift_isUniquelyReferenced_nonNull_native();
    v19 = v719;
    a8 = v737;
    if ((v362 & 1) == 0)
    {
      v353 = sub_100C289D4(0, v353[2] + 1, 1, v353);
    }

    v364 = v353[2];
    v363 = v353[3];
    if (v364 >= v363 >> 1)
    {
      v353 = sub_100C289D4((v363 > 1), v364 + 1, 1, v353);
    }

    v365 = v742;
    v314(v707, v742);
    v314(v705, v365);
    v353[2] = v364 + 1;
    v244 = v353 + ((*(v700 + 80) + 32) & ~*(v700 + 80)) + *(v700 + 72) * v364;
    v245 = &v727;
LABEL_111:
    sub_100C46D60(*(v245 - 32), v244);
    *&v735[v717] = v353;
    TupleTypeMetadata3 = v734;
LABEL_112:
    a7 = v726;
LABEL_113:
    (*v720)(a7, a8);
    a7 = WitnessTable;
    dispatch thunk of Collection.endIndex.getter();
    if (static CollectionDifference.Index.== infix(_:_:)())
    {
      goto LABEL_87;
    }
  }

  a7 = v738 + *(TupleTypeMetadata3 + 48);
  if (!a8)
  {
    v273 = Logger.logObject.getter();
    v274 = static os_log_type_t.default.getter();
    v279 = os_log_type_enabled(v273, v274);
    TupleTypeMetadata3 = v734;
    if (v279)
    {
      v276 = swift_slowAlloc();
      *v276 = v663;
      *(v276 + 4) = v731;
      *(v276 + 12) = 2050;
      *(v276 + 14) = v252;
LABEL_144:
      _os_log_impl(&_mh_execute_header, v273, v274, "Skipping insert for [%{public}ld,%{public}ld]", v276, 0x16u);
    }

    goto LABEL_145;
  }

  *&v726 = v738 + *(TupleTypeMetadata3 + 48);
LABEL_130:
  v261 = v706;
  IndexPath.init(item:section:)();
  v262 = sub_100C306D0(v261, v751);
  v263 = v737;
  v264 = v736;
  if (v262)
  {
    v266 = *v715;
    v265 = v715[1];
    v267 = v265 + ((*(v725 + 80) + 32) & ~*(v725 + 80));
    v268 = *(v265 + 16);
    if (*v715)
    {

      sub_100C458DC(v261, v267, v268, (v266 + 16), v266 + 32);
      v270 = v269;
      v272 = v271;

      if ((v270 & 1) == 0)
      {
        goto LABEL_158;
      }
    }

    else
    {
      if (v268)
      {
        v322 = *(v725 + 72);
        v323 = *(v725 + 16);
        do
        {
          v324 = v739;
          v325 = v742;
          v323(v739, v267, v742);
          sub_100C46E04(&qword_1011BA690, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v326 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v740)(v324, v325);
          if (v326)
          {
            goto LABEL_158;
          }

          v267 += v322;
        }

        while (--v268);
      }

      v272 = 0;
    }

    sub_100C452C0(v261, v272);
LABEL_158:
    v327 = v698;
    (*v741)(v698, v261, v742);
    v328 = Logger.logObject.getter();
    v329 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v328, v329))
    {
      v330 = swift_slowAlloc();
      v331 = swift_slowAlloc();
      v746 = v331;
      *v330 = v664;
      sub_100C46E04(&qword_1011BA940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v332 = v742;
      v333 = dispatch thunk of CustomStringConvertible.description.getter();
      v335 = v334;
      v336 = *v740;
      (*v740)(v327, v332);
      v337 = sub_1000108DC(v333, v335, &v746);

      *(v330 + 4) = v337;
      _os_log_impl(&_mh_execute_header, v328, v329, "Deleting item %{public}s", v330, 0xCu);
      sub_10000959C(v331);
      v19 = v719;

      v336(v706, v332);
    }

    else
    {

      v338 = *v740;
      v339 = v742;
      (*v740)(v327, v742);
      v338(v261, v339);
    }

    a8 = v737;
    TupleTypeMetadata3 = v734;
    v217 = v736;
    v218 = v730;
    goto LABEL_112;
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v384 = Logger.logObject.getter();
  v385 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v384, v385))
  {
    v386 = swift_slowAlloc();
    *v386 = 0;
    _os_log_impl(&_mh_execute_header, v384, v385, "Tried to delete an index path from the visible items diff that is not present in the visible index paths set. The visible index paths are likely not consecutive and the diff would be inconsistent, bailing and reloading data.", v386, 2u);
    v263 = v737;
  }

  sub_100020438(v694, v716);

  sub_100020438(v711, v712);
  sub_100020438(v640, v644);
  (*v635)(v264, v693);
  (*v643)(v692, v19);
  (*v636)(v697, v734);
  (*(v672 + 8))(v676, v703);
  (*v740)(v261, v742);
  *v735 = 1;
  (*v720)(v726, v263);

LABEL_193:
}

uint64_t sub_100C3DE98@<X0>(_BYTE *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  *a5 = result & 1;
  return result;
}

uint64_t sub_100C3DF80@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 32);
  v7 = v6(a1, a2);
  sub_100C41FC0(&v11, v7, v8);

  result = v6(a1, a2);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t sub_100C3E040(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 32);
  v10 = v9(a4, a5);
  v12 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *a3;
  *a3 = 0x8000000000000000;
  sub_100C4385C(a1, v10, v12, isUniquelyReferenced_nonNull_native);

  *a3 = v15;

  return v9(a4, a5);
}

uint64_t (*sub_100C3E120(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_100C44F58(v4, a2);
  return sub_1005762FC;
}

uint64_t (*sub_100C3E198(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_100C44FFC(v8, a2, a3, a4);
  return sub_100C46EC4;
}

uint64_t sub_100C3E228(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __n128), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v37 = a8;
  v19 = type metadata accessor for IndexPath();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin();
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a3(a1, a2, v21);
  if ((v24 & 1) == 0 || !a5)
  {
    return v24 & 1;
  }

  if (a5(a1, a2) & 1) != 0 || (v35 = v20, v36 = a7, swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), v25 = OrderedSet._find(_:)(), (v26))
  {
    sub_100020438(a5, a6);
    return v24 & 1;
  }

  v27 = *a9;
  v28 = *(*a9 + 16);
  if (v28)
  {
    v29 = v25;
    v30 = sub_100C309F0(a10);
    if (v31)
    {
      v28 = *(*(v27 + 56) + 8 * v30);
    }

    else
    {
      v28 = 0;
    }

    v25 = v29;
  }

  v32 = __OFADD__(v25, v28);
  result = v25 + v28;
  if (!v32)
  {
    IndexPath.init(item:section:)();
    type metadata accessor for AIDiffingUpdate(0);
    sub_100C450B8(v23);
    sub_100020438(a5, a6);
    (*(v35 + 8))(v23, v19);
    return v24 & 1;
  }

  __break(1u);
  return result;
}

void UICollectionView.calculateAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double (**a4)(uint64_t, uint64_t *, NSObject *, __n128)@<X3>, char a5@<W4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{

  v20 = [v14 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100030444(a6, a7);
  sub_100030444(a8, a10);
  sub_100030444(a11, a12);
  sub_100C376B0(a1, a2, v21, a3, a4, a5 & 1, a6, a7, a9, a8, a10, a11, a12, a13, a14);
}

uint64_t UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double (**a3)(uint64_t, uint64_t *, NSObject *, __n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v49 = a4;
  v53 = a7;
  v54 = a8;
  v50 = a5;
  v55 = a9;
  v56 = a3;
  v45 = a1;
  v46 = a2;
  v51 = a10;
  v52 = a6;
  v11 = *(a11 - 8);
  __chkstk_darwin();
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _DiffableSection(0, a11, v14, v15);
  v57 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin();
  v21 = &v45 - v20;
  v22 = *(v11 + 16);
  v22(v13, v45, a11, v19);
  v23 = v21;
  v58 = v21;
  *v21 = 0;
  *(v21 + 1) = 0xE000000000000000;
  v24 = *(v11 + 32);
  v24(&v23[*(v16 + 44)], v13, a11);
  (v22)(v13, v46, a11);
  *v18 = 0;
  *(v18 + 1) = 0xE000000000000000;
  v25 = &v18[*(v16 + 44)];
  v47 = v18;
  v24(v25, v13, a11);
  type metadata accessor for _ContiguousArrayStorage();
  v26 = v57;
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  v27 = *(v26 + 16);
  v27(v28, v58, v16);
  sub_100C1D3D8();
  v30 = v29;
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  v27(v31, v18, v16);
  sub_100C1D3D8();
  v33 = v32;
  v34 = [v48 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = v49;
  v36 = v50;
  sub_100030444(v49, v50);
  v38 = v52;
  v39 = v53;
  sub_100030444(v52, v53);
  v40 = v54;
  v41 = v51;
  sub_100030444(v54, v51);
  WitnessTable = swift_getWitnessTable();
  sub_100C376B0(v30, v33, v35, v56, v56, 0, v37, v36, v55, v38, v39, v40, v41, v16, WitnessTable);
  v43 = *(v57 + 8);
  v43(v47, v16);
  return v43(v58, v16);
}

uint64_t UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(NSObject *a1, uint64_t a2, uint64_t a3, double (**a4)(uint64_t, uint64_t *, NSObject *, __n128), int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(void), uint64_t a14, void (*a15)(uint64_t), uint64_t a16, void *a17, uint64_t a18)
{
  v38 = a3;
  v32 = a7;
  v33 = a8;
  v44 = a6;
  v37 = a5;
  v29 = a1;
  v42 = a14;
  v43 = a13;
  v41 = a15;
  v39 = a4;
  v40 = a16;
  v34 = a18;
  v35 = a17;
  v30 = a9;
  v31 = a2;
  v36 = *(type metadata accessor for AIDiffingUpdate(0) - 8);
  __chkstk_darwin();
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  v21 = [v18 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = v32;
  v24 = v33;
  sub_100030444(v32, v33);
  v25 = v30;
  sub_100030444(v30, a10);
  sub_100030444(a11, a12);
  sub_100C376B0(v29, v31, v22, v38, v39, v37 & 1, v23, v24, v20, v25, a10, a11, a12, v35, v34);
  sub_10010FC20(&qword_1011BA770, "\\\n");
  v26 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100EBC6B0;
  sub_100C41B2C(v20, v27 + v26);
  UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v27, v44, v43, v42, v41, v40);

  return sub_100C41B90(v20);
}

uint64_t UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(uint64_t a1, int a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v163 = a4;
  v160 = a3;
  v157 = a2;
  v10 = type metadata accessor for IndexSet();
  v158 = *(v10 - 8);
  __chkstk_darwin();
  v156 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AIDiffingUpdate(0);
  v13 = *(v12 - 1);
  __chkstk_darwin();
  v15 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v153 - v16;
  v159 = v6;
  swift_unknownObjectWeakInit();
  if (qword_1011B9A28 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_1000060E4(v18, qword_1011BA758);

  v162 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v164 = a6;
  v161 = a5;
  if (v22)
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v20, v21, "applyUpdates called with %ld updates", v23, 0xCu);
  }

  else
  {
  }

  v170 = swift_allocBox();
  v177 = v24;
  IndexSet.init()();
  v166 = swift_allocBox();
  v176 = v25;
  IndexSet.init()();
  v26 = swift_allocObject();
  v165 = v26;
  *(v26 + 16) = _swiftEmptyArrayStorage;
  v175 = (v26 + 16);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v174 = v27 + 16;
  v171 = v27;
  *(v27 + 24) = _swiftEmptyArrayStorage;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v173 = v28 + 16;
  v172 = v28;
  *(v28 + 24) = _swiftEmptyArrayStorage;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v169 = v29;
  *(v29 + 24) = _swiftEmptyArrayStorage;
  v30 = swift_allocObject();
  v168 = v30;
  *(v30 + 16) = _swiftEmptyArrayStorage;
  v31 = (v30 + 16);
  v32 = a1;
  v33 = *(a1 + 16);
  v167 = v32;
  if (v33 == 1)
  {
    sub_100C41B2C(v32 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v17);
    if (*v17 == 1)
    {
      sub_100C40460(v32, v184, v160, v163, v161, v164);
      sub_100C41B90(v17);
      swift_unknownObjectWeakDestroy();
LABEL_39:

      v147 = 0;
      v15 = 0;
      goto LABEL_40;
    }

    v70 = *(v158 + 24);
    v70(v177, &v17[v12[6]], v10);
    v70(v176, &v17[v12[7]], v10);
    *v175 = *&v17[v12[8]];

    v71 = &v17[v12[9]];
    v72 = *v71;
    v73 = v71[1];
    v74 = v171;
    *(v171 + 16) = v72;
    *(v74 + 24) = v73;

    v75 = &v17[v12[10]];
    v76 = *v75;
    v77 = v75[1];
    v78 = v172;
    *(v172 + 16) = v76;
    *(v78 + 24) = v77;

    v79 = &v17[v12[11]];
    v80 = v79[1];
    v81 = v31;
    v82 = v169;
    *(v169 + 16) = *v79;
    *(v82 + 24) = v80;

    v83 = *&v17[v12[12]];

    sub_100C41B90(v17);
    v155 = v81;
    *v81 = v83;

    v84 = v170;
    v85 = v166;
    v86 = v161;
    v87 = v163;
    v88 = v168;
    v89 = v160;
  }

  else
  {
    if (v33)
    {
      v34 = v15 + 8;
      v35 = v167 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v36 = *(v13 + 72);
      do
      {
        sub_100C41B2C(v35, v15);
        if (*v15 == 1)
        {
          goto LABEL_38;
        }

        IndexSet.formUnion(_:)();
        IndexSet.formUnion(_:)();

        sub_100C32F80(v37);
        sub_100C4605C(*&v34[v12[9]]);
        sub_100C4605C(*&v34[v12[10]]);
        sub_100C4605C(*&v34[v12[11]]);

        sub_100C3306C(v38);
        sub_100C41B90(v15);
        v35 += v36;
      }

      while (--v33);
    }

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Final update:", v41, 2u);
    }

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      aBlock = v154;
      *v44 = 136315138;
      v45 = v177;
      swift_beginAccess();
      v46 = v158;
      v47 = v156;
      (*(v158 + 16))(v156, v45, v10);
      sub_100C46E04(&qword_1011BA780, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v46 + 8))(v47, v10);
      v51 = sub_1000108DC(v48, v50, &aBlock);

      *(v44 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v42, v43, " - Inserted sections: %s", v44, 0xCu);
      sub_10000959C(v154);
    }

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      aBlock = v154;
      *v54 = 136315138;
      v55 = v176;
      swift_beginAccess();
      v56 = v158;
      v57 = v156;
      (*(v158 + 16))(v156, v55, v10);
      sub_100C46E04(&qword_1011BA780, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      (*(v56 + 8))(v57, v10);
      v61 = sub_1000108DC(v58, v60, &aBlock);

      *(v54 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v52, v53, " - Deleted sections: %s", v54, 0xCu);
      sub_10000959C(v154);
    }

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock = v65;
      *v64 = 136315138;
      swift_beginAccess();

      sub_10010FC20(&qword_1011BA778, &unk_100F0CF20);
      v66 = Array.description.getter();
      v68 = v67;

      v69 = sub_1000108DC(v66, v68, &aBlock);

      *(v64 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v62, v63, " - Section move pairs: %s", v64, 0xCu);
      sub_10000959C(v65);
    }

    else
    {
    }

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      aBlock = v93;
      *v92 = 136315138;
      swift_beginAccess();
      type metadata accessor for IndexPath();

      v94 = Array.description.getter();
      v96 = v95;

      v97 = sub_1000108DC(v94, v96, &aBlock);

      *(v92 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v90, v91, " - Inserted index paths: %s", v92, 0xCu);
      sub_10000959C(v93);
    }

    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();

    v100 = os_log_type_enabled(v98, v99);
    v155 = v31;
    if (v100)
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      aBlock = v102;
      *v101 = 136315138;
      swift_beginAccess();
      type metadata accessor for IndexPath();

      v103 = Array.description.getter();
      v105 = v104;

      v106 = sub_1000108DC(v103, v105, &aBlock);

      *(v101 + 4) = v106;
      _os_log_impl(&_mh_execute_header, v98, v99, " - Deleted index paths: %s", v101, 0xCu);
      sub_10000959C(v102);
    }

    v88 = v168;

    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      aBlock = v110;
      *v109 = 136315138;
      swift_beginAccess();
      type metadata accessor for IndexPath();

      v111 = Array.description.getter();
      v113 = v112;

      v114 = sub_1000108DC(v111, v113, &aBlock);

      *(v109 + 4) = v114;
      _os_log_impl(&_mh_execute_header, v107, v108, " - Updated index paths: %s", v109, 0xCu);
      sub_10000959C(v110);
    }

    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      aBlock = v118;
      *v117 = 136315138;
      swift_beginAccess();

      sub_10010FC20(&qword_1011BA4F8, &qword_100F0C740);
      v119 = Array.description.getter();
      v121 = v120;

      v122 = sub_1000108DC(v119, v121, &aBlock);

      *(v117 + 4) = v122;
      _os_log_impl(&_mh_execute_header, v115, v116, " - Item move pairs: %s", v117, 0xCu);
      sub_10000959C(v118);
    }

    else
    {
    }

    v85 = v166;
    v89 = v160;
    v87 = v163;
    v82 = v169;
    v84 = v170;
    v86 = v161;
  }

  isEscapingClosureAtFileLocation = swift_allocObject();
  v124 = v159;
  v125 = v167;
  *(isEscapingClosureAtFileLocation + 16) = v159;
  *(isEscapingClosureAtFileLocation + 24) = v125;
  *(isEscapingClosureAtFileLocation + 32) = v85;
  *(isEscapingClosureAtFileLocation + 40) = v84;
  *(isEscapingClosureAtFileLocation + 48) = v165;
  v126 = v172;
  *(isEscapingClosureAtFileLocation + 56) = v171;
  *(isEscapingClosureAtFileLocation + 64) = v126;
  *(isEscapingClosureAtFileLocation + 72) = v88;
  *(isEscapingClosureAtFileLocation + 80) = v89;
  *(isEscapingClosureAtFileLocation + 88) = v87;
  *(isEscapingClosureAtFileLocation + 96) = v82;
  v127 = v164;
  *(isEscapingClosureAtFileLocation + 104) = v86;
  *(isEscapingClosureAtFileLocation + 112) = v127;
  if (v157)
  {

    v128 = v164;
    sub_100030444(v86, v164);
    sub_100030444(v89, v87);
    v129 = v89;
    v130 = v124;
    v131 = [v130 indexPathsForVisibleItems];
    type metadata accessor for IndexPath();
    v132 = v87;
    v133 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v134 = sub_100C46308(v133);

    v135 = swift_allocObject();
    v135[2] = v167;
    v135[3] = v130;
    v136 = v177;
    v135[4] = v176;
    v135[5] = v136;
    v137 = v174;
    v135[6] = v175;
    v135[7] = v137;
    v138 = v155;
    v135[8] = v173;
    v135[9] = v138;
    v135[10] = v134;
    v135[11] = v129;
    v135[12] = v132;
    v139 = swift_allocObject();
    *(v139 + 16) = sub_100C464A4;
    *(v139 + 24) = v135;
    v182 = sub_10018A020;
    v183 = v139;
    aBlock = _NSConcreteStackBlock;
    v179 = 1107296256;
    v140 = v161;
    v180 = sub_100029B9C;
    v181 = &unk_1010F18B0;
    v177 = _Block_copy(&aBlock);

    sub_100030444(v129, v163);
    v141 = v130;

    v142 = swift_allocObject();
    v143 = v169;
    *(v142 + 2) = v141;
    *(v142 + 3) = v143;
    *(v142 + 4) = v140;
    *(v142 + 5) = v128;
    v182 = sub_100C464A8;
    v183 = v142;
    aBlock = _NSConcreteStackBlock;
    v179 = 1107296256;
    v180 = sub_1005C3688;
    v181 = &unk_1010F1900;
    v144 = _Block_copy(&aBlock);
    v86 = v183;

    sub_100030444(v140, v128);
    v145 = v141;

    v146 = v177;
    [v145 performBatchUpdates:v177 completion:v144];
    _Block_release(v144);
    _Block_release(v146);

    swift_unknownObjectWeakDestroy();

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    v147 = 0;
    v15 = 0;
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_40;
    }

    __break(1u);
  }

  v177 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 2) = sub_100C462C8;
  *(v15 + 3) = isEscapingClosureAtFileLocation;
  v148 = swift_allocObject();
  v147 = sub_100029B6C;
  *(v148 + 16) = sub_100029B6C;
  *(v148 + 24) = v15;
  v182 = sub_100029B94;
  v183 = v148;
  aBlock = _NSConcreteStackBlock;
  v179 = 1107296256;
  v180 = sub_100029B9C;
  v181 = &unk_1010F1838;
  v149 = _Block_copy(&aBlock);
  v176 = v183;

  sub_100030444(v86, v164);
  sub_100030444(v160, v163);
  v150 = v159;

  [v177 performWithoutAnimation:v149];
  _Block_release(v149);

  swift_unknownObjectWeakDestroy();
  v151 = swift_isEscapingClosureAtFileLocation();

  if (v151)
  {
    __break(1u);
LABEL_38:
    sub_100C40460(v167, v184, v160, v163, v161, v164);
    swift_unknownObjectWeakDestroy();
    sub_100C41B90(v15);
    goto LABEL_39;
  }

LABEL_40:

  return sub_100020438(v147, v15);
}