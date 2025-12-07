uint64_t sub_1000014D8()
{
  v0 = type metadata accessor for Logger();
  sub_100001558(v0, qword_100010A80);
  sub_1000015BC(v0, qword_100010A80);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100001558(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000015BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000015F4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100001558(v0, qword_100010A98);
  sub_1000015BC(v0, qword_100010A98);
  sub_100001FCC(&qword_1000107A0, &qword_100008498);
  v1 = (sub_100001FCC(&qword_1000107A8, &qword_1000084A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100008310;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "server_state";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "client_state";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000017BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t sub_10000183C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 == v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v11 = v3[2];
  v12 = v3[3];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
  }

  else
  {
    if (!v13)
    {
      if ((v12 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_19;
    }

    v14 = v11;
    v15 = v11 >> 32;
  }

  if (v14 != v15)
  {
    goto LABEL_18;
  }

LABEL_19:
  type metadata accessor for CombinedState(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100001950@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_100008320;
  a1[1] = xmmword_100008320;
  return UnknownStorage.init()();
}

uint64_t sub_1000019A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100001A18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100001AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000025F4(&qword_100010798, type metadata accessor for CombinedState, &unk_1000083E8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100001B68@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010758 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = sub_1000015BC(v2, qword_100010A98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100001C10(uint64_t a1)
{
  v2 = sub_1000025F4(&qword_100010780, type metadata accessor for CombinedState, &unk_100008420);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_100001C7C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100001CD4(uint64_t a1, uint64_t a2)
{
  sub_1000025F4(&qword_100010780, type metadata accessor for CombinedState, &unk_100008420);

  return Message.hash(into:)();
}

Swift::Int sub_100001D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100001DA4(_BOOL8 *a1, uint64_t *a2, uint64_t a3)
{
  if (!sub_10000248C(*a1, a1[1], *a2, a2[1]) || !sub_10000248C(a1[2], a1[3], a2[2], a2[3]))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1000025F4(&qword_1000107B0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t type metadata accessor for CombinedState(uint64_t a1)
{
  result = qword_100010810;
  if (!qword_100010810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001FCC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002014@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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

uint64_t sub_100002244(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_1000023D4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100002690(a3, a4);
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
  sub_100002014(v13, a3, a4, &v12);
  v10 = v4;
  sub_100002690(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1000023D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
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
  sub_100002014(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_10000248C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_10000263C(a3, a4);
          return sub_100002244(v13, a2, a3, a4) & 1;
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

uint64_t sub_1000025F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10000263C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void sub_100002690(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_1000026F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000027C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100002870(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1000028EC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000040D0(a1))
  {

    return sub_100002BA8(a1, a2);
  }

  else
  {
    if (qword_100010750 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000015BC(v9, qword_100010A80);
    (*(v5 + 16))(v7, a1, v4);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      sub_100005344(&qword_100010950, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v5 + 8))(v7, v4);
      v17 = sub_100005668(v14, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "URL is not a BankConnect universal link: %s", v12, 0xCu);
      sub_1000046F0(v13);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return 0;
  }
}

id sub_100002BA8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v45 - v10;
  __chkstk_darwin(v9);
  v13 = &v45 - v12;
  v14 = sub_100001FCC(&qword_100010880, &qword_1000084F0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  if (sub_1000048A4(a1) == 1)
  {
    sub_100003460(v19);
  }

  else
  {
    sub_100003714(v19);
  }

  sub_100005218(v19, v17, &qword_100010880, &qword_1000084F0);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    sub_100005290(v17, &qword_100010880, &qword_1000084F0);
    if (qword_100010750 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000015BC(v20, qword_100010A80);
    (*(v5 + 16))(v8, a1, v4);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v50 = v24;
      *v23 = 136315138;
      sub_100005344(&qword_100010950, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v5 + 8))(v8, v4);
      v28 = sub_100005668(v25, v27, &v50);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to create authorization URL from universalLink: %s", v23, 0xCu);
      sub_1000046F0(v24);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    sub_100005290(v19, &qword_100010880, &qword_1000084F0);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v13, v17, v4);
    if (qword_100010750 != -1)
    {
      swift_once();
    }

    v48 = a2;
    v49 = v19;
    v29 = type metadata accessor for Logger();
    sub_1000015BC(v29, qword_100010A80);
    (*(v5 + 16))(v11, v13, v4);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v46 = v32;
      v47 = swift_slowAlloc();
      v50 = v47;
      *v32 = 136315138;
      sub_100005344(&qword_100010950, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v36 = *(v5 + 8);
      v36(v11, v4);
      v37 = sub_100005668(v33, v35, &v50);

      v38 = v46;
      *(v46 + 1) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Opening BankConnect authorization URL: %s", v38, 0xCu);
      sub_1000046F0(v47);
    }

    else
    {

      v36 = *(v5 + 8);
      v36(v11, v4);
    }

    URL._bridgeToObjectiveC()(v39);
    v42 = v41;
    sub_100005094(&_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v44 = [v48 openSensitiveURL:v42 withOptions:isa];

    v36(v13, v4);
    sub_100005290(v49, &qword_100010880, &qword_1000084F0);
    return v44;
  }
}

uint64_t sub_100003200()
{
  v0 = sub_100001FCC(&qword_100010880, &qword_1000084F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_100001558(v3, qword_100010850);
  v4 = sub_1000015BC(v3, qword_100010850);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100003330()
{
  v0 = sub_100001FCC(&qword_100010880, &qword_1000084F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_100001558(v3, qword_100010868);
  v4 = sub_1000015BC(v3, qword_100010868);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100003460@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v24 - v7;
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  if (qword_100010768 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for URL();
  sub_1000015BC(v11, qword_100010868);
  v24 = URL.absoluteString.getter();
  v13 = v12;
  static CharacterSet.alphanumerics.getter();
  CharacterSet.init(charactersIn:)();
  CharacterSet.union(_:)();
  v14 = *(v2 + 8);
  v14(v5, v1);
  v14(v8, v1);
  v26 = URL.absoluteString.getter();
  v27 = v15;
  sub_1000051C4();
  v16 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v18 = v17;

  v14(v10, v1);
  if (v18)
  {
    v26 = v24;
    v27 = v13;
    v19._countAndFlagsBits = 38;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0x7463657269646572;
    v20._object = 0xEB000000004C5255;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 61;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v22._countAndFlagsBits = v16;
    v22._object = v18;
    String.append(_:)(v22);

    URL.init(string:)();
  }

  else
  {
    (*(*(v11 - 8) + 56))(v25, 1, 1, v11);
  }
}

uint64_t sub_100003714@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URLComponents();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001FCC(&qword_1000108A0, &qword_100008508);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  if (qword_100010760 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for URL();
  sub_1000015BC(v9, qword_100010850);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v10 = *(v3 + 48);
  if (!v10(v8, 1, v2))
  {
    sub_100001FCC(&qword_1000108A8, &qword_100008510);
    type metadata accessor for URLQueryItem();
    v13 = a1;
    *(swift_allocObject() + 16) = xmmword_1000084E0;
    URL.absoluteString.getter();
    a1 = v13;
    URLQueryItem.init(name:value:)();

    URLComponents.queryItems.setter();
  }

  if (v10(v8, 1, v2))
  {
    (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    URLComponents.url.getter();
    (*(v3 + 8))(v5, v2);
  }

  return sub_100005290(v8, &qword_1000108A0, &qword_100008508);
}

uint64_t sub_100003A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLQueryItem();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = type metadata accessor for URLComponents();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return a1;
  }

  URLComponents.init()();

  URLComponents.query.setter();
  result = URLComponents.queryItems.getter();
  if (!result)
  {
LABEL_11:
    (*(v12 + 8))(v14, v11);
    return 0;
  }

  v16 = result;
  v26 = v14;
  v27 = v12;
  v28 = v11;
  v25 = v10;
  v17 = *(result + 16);
  if (!v17)
  {
LABEL_10:

    v12 = v27;
    v11 = v28;
    v14 = v26;
    goto LABEL_11;
  }

  v18 = 0;
  v19 = 0x6574617473;
  v29 = v5 + 16;
  while (v18 < *(v16 + 16))
  {
    (*(v5 + 16))(v8, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v4);
    if (URLQueryItem.name.getter() == v19 && v20 == 0xE500000000000000)
    {

LABEL_14:

      v23 = v25;
      (*(v5 + 32))(v25, v8, v4);
      a1 = URLQueryItem.value.getter();
      (*(v27 + 8))(v26, v28);
      (*(v5 + 8))(v23, v4);
      return a1;
    }

    v21 = v19;
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_14;
    }

    ++v18;
    result = (*(v5 + 8))(v8, v4);
    v19 = v21;
    if (v17 == v18)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

char *sub_100003D4C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003E7C(v5, 0);
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
        v7 = sub_100003E7C(v10, 0);
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

void *sub_100003E7C(uint64_t a1, uint64_t a2)
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

  sub_100001FCC(&unk_100010960, &unk_100008518);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_100003EF0(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_100003FAC(a1, v2);
}

unint64_t sub_100003F34(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100004018(a1, a2, v4);
}

unint64_t sub_100003FAC(uint64_t a1, uint64_t a2)
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

unint64_t sub_100004018(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000040D0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(NSURLComponents);
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = [v6 initWithURL:v8 resolvingAgainstBaseURL:1];

  if (v10)
  {
    v11 = [v10 scheme];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v25 = [v10 host];
    if (v25)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = [v10 path];
    if (v30)
    {
      v31 = v30;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      if (v15)
      {
LABEL_14:
        if (v13 == 0x7370747468 && v15 == 0xE500000000000000)
        {
          v34 = 1;
        }

        else
        {
          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        if (v29)
        {
LABEL_22:
          if (v27 == 0x6562626131342E61 && v29 == 0xEF747365742E3565)
          {
            v36 = 1;
          }

          else
          {
            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
            if (v27 == 0xD000000000000018 && v29 == 0x80000001000086E0)
            {
              v35 = 1;
              goto LABEL_33;
            }
          }

          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if (v27 == 0xD000000000000010 && v29 == 0x80000001000086A0)
          {

LABEL_34:
            if (v33)
            {
              v39._countAndFlagsBits = 0xD000000000000015;
              v39._object = 0x80000001000086C0;
              v40 = String.hasPrefix(_:)(v39);

LABEL_38:
              if (qword_100010750 != -1)
              {
                swift_once();
              }

              v41 = type metadata accessor for Logger();
              sub_1000015BC(v41, qword_100010A80);
              v42 = Logger.logObject.getter();
              v43 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v42, v43))
              {
                v44 = swift_slowAlloc();
                *v44 = 67109632;
                *(v44 + 4) = v34 & 1;
                *(v44 + 8) = 1024;
                *(v44 + 10) = v36 & 1;
                *(v44 + 14) = 1024;
                *(v44 + 16) = v40;
                _os_log_impl(&_mh_execute_header, v42, v43, "Universal link validation: isValidScheme: %{BOOL}d, isValidUndisclosedUniversalLink: %{BOOL}d, isValidDefaultUniversalLink: %{BOOL}d.", v44, 0x14u);
              }

              v37 = v34 & (v36 | v40 | v35);
              return v37 & 1;
            }

LABEL_37:
            v40 = 0;
            goto LABEL_38;
          }

LABEL_33:
          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v38 & 1) == 0)
          {

            goto LABEL_37;
          }

          goto LABEL_34;
        }

LABEL_19:

        v35 = 0;
        v36 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v33 = 0;
      if (v15)
      {
        goto LABEL_14;
      }
    }

    v34 = 0;
    if (v29)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (qword_100010750 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000015BC(v16, qword_100010A80);
  (*(v3 + 16))(v5, a1, v2);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v47 = v20;
    *v19 = 136315138;
    sub_100005344(&qword_100010950, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v3 + 8))(v5, v2);
    v24 = sub_100005668(v21, v23, &v47);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "Failed to create URL components from universalLink:%s", v19, 0xCu);
    sub_1000046F0(v20);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v37 = 0;
  return v37 & 1;
}

uint64_t sub_1000046F0(void *a1)
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

uint64_t sub_10000473C(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_1000047F4(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_10000473C(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1000048A4(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v61 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v59 - v6;
  v8 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for CombinedState(0);
  __chkstk_darwin(v9);
  v11 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = URL.query.getter();
  v14 = sub_100003A2C(v12, v13);
  v16 = v15;

  if (v16 || (v17 = URL.fragment.getter(), v14 = sub_100003A2C(v17, v18), v16 = v19, , v16))
  {
    v60 = v14;
    v20 = String.uppercased()();
    v21 = sub_100003D4C(v20._countAndFlagsBits, v20._object);

    v22 = sub_100006E00(v21);

    if (v22)
    {
      v59[0] = a1;
      v59[1] = v2;
      v23 = sub_1000047F4((v22 + 32), *(v22 + 16));
      v25 = v24;

      v63 = 0;
      memset(v62, 0, sizeof(v62));
      sub_10000263C(v23, v25);
      BinaryDecodingOptions.init()();
      sub_100005344(&qword_100010780, type metadata accessor for CombinedState, &unk_100008420);
      Message.init(serializedData:extensions:partial:options:)();
      sub_10000263C(*(v11 + 2), *(v11 + 3));
      v36 = BankConnectAuthorizationSession.AuthSource.init(with:)();
      if ((v36 & 0x10000) == 0)
      {
        v37 = v36;
        sub_10000538C(v11);
        sub_100002690(v23, v25);

        return v37;
      }

      v49 = v25;
      if (qword_100010750 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_1000015BC(v50, qword_100010A80);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      v53 = os_log_type_enabled(v51, v52);
      v54 = v23;
      v55 = v60;
      if (v53)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v62[0] = v57;
        *v56 = 136315138;
        v58 = sub_100005668(v55, v16, v62);

        *(v56 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v51, v52, "Failed to decode AuthSource from state %s.", v56, 0xCu);
        sub_1000046F0(v57);
      }

      else
      {
      }

      sub_100002690(v54, v49);
      sub_10000538C(v11);
    }

    else
    {

      sub_1000052F0();
      swift_allocError();
      swift_willThrow();
      v26 = v61;
      if (qword_100010750 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_1000015BC(v27, qword_100010A80);
      (*(v26 + 16))(v5, a1, v2);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *&v62[0] = v31;
        *v30 = 136315138;
        sub_100005344(&qword_100010950, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v33;
        (*(v26 + 8))(v5, v2);
        v35 = sub_100005668(v32, v34, v62);

        *(v30 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v28, v29, "Failed to decode client state on redirect to %s.", v30, 0xCu);
        sub_1000046F0(v31);
      }

      else
      {

        (*(v26 + 8))(v5, v2);
      }
    }
  }

  else
  {
    if (qword_100010750 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000015BC(v39, qword_100010A80);
    v40 = v61;
    (*(v61 + 16))(v7, a1, v2);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v62[0] = v44;
      *v43 = 136315138;
      sub_100005344(&qword_100010950, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (*(v40 + 8))(v7, v2);
      v48 = sub_100005668(v45, v47, v62);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "State parameter is missed in the redirect url %s.", v43, 0xCu);
      sub_1000046F0(v44);
    }

    else
    {

      (*(v40 + 8))(v7, v2);
    }
  }

  return 0;
}

unint64_t sub_100005094(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001FCC(&qword_100010890, &qword_1000084F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005218(v4, &v13, &qword_100010898, &qword_100008500);
      v5 = v13;
      v6 = v14;
      result = sub_100003F34(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100005280(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000051C4()
{
  result = qword_100010888;
  if (!qword_100010888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010888);
  }

  return result;
}

uint64_t sub_100005218(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001FCC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_100005280(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100005290(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001FCC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000052F0()
{
  result = qword_1000108B0;
  if (!qword_1000108B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000108B0);
  }

  return result;
}

uint64_t sub_100005344(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000538C(uint64_t a1)
{
  v2 = type metadata accessor for CombinedState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100005610(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100005668(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005734(v11, 0, 0, 1, a1, a2);
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
    sub_1000067CC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000046F0(v11);
  return v7;
}

unint64_t sub_100005734(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005840(a5, a6);
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

char *sub_100005840(uint64_t a1, unint64_t a2)
{
  v3 = sub_100003D4C(a1, a2);
  sub_10000588C(&off_10000C720);
  return v3;
}

uint64_t sub_10000588C(uint64_t result)
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

  result = sub_100005978(result, v11, 1, v3);
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

char *sub_100005978(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001FCC(&unk_100010960, &unk_100008518);
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

void sub_100005A6C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v40 - v7;
  if (qword_100010750 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_1000015BC(v9, qword_100010A80);
  v43 = *(v3 + 16);
  v43(v8, a1, v2);
  v44 = v10;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v40 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v41 = v6;
    v16 = v3;
    v17 = v15;
    v45 = v15;
    *v14 = 136315138;
    sub_100006774();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v42 = *(v16 + 8);
    v42(v8, v2);
    v21 = sub_100005668(v18, v20, &v45);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "Cannot handle universal link to URL: %s", v14, 0xCu);
    sub_1000046F0(v17);
    v6 = v41;

    a1 = v40;
  }

  else
  {

    v42 = *(v3 + 8);
    v42(v8, v2);
  }

  v22 = [objc_opt_self() defaultWorkspace];
  if (!v22)
  {
    __break(1u);
  }

  v24 = v22;
  URL._bridgeToObjectiveC()(v23);
  v26 = v25;
  v45 = 0;
  v27 = [v24 openURL:v25 configuration:0 error:&v45];

  if (v27)
  {
    v28 = v45;
  }

  else
  {
    v29 = v45;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v43(v6, a1, v2);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v6;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v33 = 136315394;
      sub_100006774();
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v42(v32, v2);
      v38 = sub_100005668(v35, v37, &v45);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2112;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v39;
      *v34 = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to re-direct URL: %s to Safari with error: %@", v33, 0x16u);
      sub_100005290(v34, &qword_100010958, &qword_100008540);

      sub_1000046F0(v44);
    }

    else
    {

      v42(v6, v2);
    }
  }
}

uint64_t sub_100005F80(void *a1)
{
  v2 = sub_100001FCC(&qword_100010880, &qword_1000084F0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v63 - v6;
  v8 = type metadata accessor for URL();
  v65 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v64 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v63 - v12;
  __chkstk_darwin(v11);
  v15 = &v63 - v14;
  v16 = type metadata accessor for DeviceType();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DeviceInfo.deviceType.getter();
  v20 = DeviceType.isiPhone.getter();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  v21 = [a1 activityType];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {

    v26 = v8;
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v26 = v8;
    if ((v27 & 1) == 0)
    {
LABEL_11:
      v41 = v65;
      if (qword_100010750 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_1000015BC(v42, qword_100010A80);
      v43 = a1;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *v46 = 136315394;
        v47 = [v43 webpageURL];
        if (v47)
        {
          v48 = v47;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v49 = 0;
        }

        else
        {
          v49 = 1;
        }

        (*(v41 + 56))(v5, v49, 1, v26);
        sub_100006704(v5, v7);
        if ((*(v41 + 48))(v7, 1, v26))
        {
          sub_100005290(v7, &qword_100010880, &qword_1000084F0);
          v52 = 0;
          v53 = 0xE000000000000000;
        }

        else
        {
          v54 = v64;
          (*(v41 + 16))(v64, v7, v26);
          sub_100005290(v7, &qword_100010880, &qword_1000084F0);
          v55 = URL.absoluteString.getter();
          v53 = v56;
          (*(v41 + 8))(v54, v26);
          v52 = v55;
        }

        v57 = sub_100005668(v52, v53, &v66);

        *(v46 + 4) = v57;
        *(v46 + 12) = 2080;
        v58 = [v43 activityType];
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v62 = sub_100005668(v59, v61, &v66);

        *(v46 + 14) = v62;
        _os_log_impl(&_mh_execute_header, v44, v45, "The activity didn't continue from a universal link: %s activityType: %s", v46, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  v28 = [a1 webpageURL];
  if (!v28)
  {
    goto LABEL_11;
  }

  v29 = v28;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = v65;
  if (qword_100010750 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_1000015BC(v31, qword_100010A80);
  (*(v30 + 16))(v13, v15, v26);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v66 = v35;
    *v34 = 136315138;
    sub_100006774();
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v39 = *(v65 + 8);
    v39(v13, v26);
    v40 = sub_100005668(v36, v38, &v66);

    *(v34 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v32, v33, "Handling universal link: %s", v34, 0xCu);
    sub_1000046F0(v35);
  }

  else
  {

    v39 = *(v30 + 8);
    v39(v13, v26);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v51 = result;
    if (sub_1000028EC(v15, result))
    {
      v39(v15, v26);

      return 1;
    }

    sub_100005A6C(v15);

    v39(v15, v26);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100006704(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FCC(&qword_100010880, &qword_1000084F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100006774()
{
  result = qword_100010950;
  if (!qword_100010950)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010950);
  }

  return result;
}

uint64_t sub_1000067CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100006828()
{
  v0 = 0;
  while (1)
  {
    v1 = *(&off_10000C748 + v0 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_100003EF0(v1);
    v5 = _swiftEmptyDictionarySingleton[2];
    v6 = (v4 & 1) == 0;
    v7 = __OFADD__(v5, v6);
    v8 = v5 + v6;
    if (v7)
    {
      break;
    }

    v9 = v4;
    if (_swiftEmptyDictionarySingleton[3] < v8)
    {
      sub_100006A50(v8, isUniquelyReferenced_nonNull_native);
      result = sub_100003EF0(v1);
      if ((v9 & 1) != (v10 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v9)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v13 = result;
    sub_100006CB4();
    result = v13;
    if (v9)
    {
LABEL_2:
      *(_swiftEmptyDictionarySingleton[7] + result) = v0;
      goto LABEL_3;
    }

LABEL_10:
    _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
    *(_swiftEmptyDictionarySingleton[6] + 8 * result) = v1;
    *(_swiftEmptyDictionarySingleton[7] + result) = v0;
    v11 = _swiftEmptyDictionarySingleton[2];
    v7 = __OFADD__(v11, 1);
    v12 = v11 + 1;
    if (v7)
    {
      goto LABEL_16;
    }

    _swiftEmptyDictionarySingleton[2] = v12;
LABEL_3:
    if (++v0 == 32)
    {
      off_1000109D0 = _swiftEmptyDictionarySingleton;
      return result;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100006994()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100006A00(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100006A50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001FCC(&qword_1000109D8, &qword_100008548);
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
      v21 = *(*(v5 + 56) + v19);
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
      *(*(v7 + 56) + v15) = v21;
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

void *sub_100006CB4()
{
  v1 = v0;
  sub_100001FCC(&qword_1000109D8, &qword_100008548);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
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

uint64_t sub_100006E00(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = result;
  v3 = 0;
  v50 = result + 32;
  v4 = &_swiftEmptyArrayStorage;
  v51 = *(result + 16);
  v52 = result;
  while (1)
  {
    v5 = v3 + 8;
    if (__OFADD__(v3, 8))
    {
      break;
    }

    if (v1 >= v5)
    {
      v6 = v3 + 8;
    }

    else
    {
      v6 = v1;
    }

    v7 = v6 - v3;
    if (v6 < v3)
    {
      goto LABEL_76;
    }

    if (v1 == v7)
    {

      v8 = v2;
    }

    else
    {
      v8 = &_swiftEmptyArrayStorage;
      if (v6 != v3)
      {
        if (v7 >= 1)
        {
          sub_100001FCC(&unk_100010960, &unk_100008518);
          v8 = swift_allocObject();
          v49 = j__malloc_size(v8);
          v8[2] = v7;
          v8[3] = 2 * v49 - 64;
        }

        memcpy(v8 + 4, (v50 + v3), v7);
      }
    }

    v9 = v8[2];
    if (v9)
    {
      if (qword_100010770 != -1)
      {
        swift_once();
      }

      v10 = off_1000109D0;
      v11 = 32;
      v12 = &_swiftEmptyArrayStorage;
      do
      {
        if (v10[2])
        {
          v13 = sub_100003EF0(*(v8 + v11));
          if (v14)
          {
            v15 = *(v10[7] + v13);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_100005978(0, *(v12 + 2) + 1, 1, v12);
            }

            v17 = *(v12 + 2);
            v16 = *(v12 + 3);
            if (v17 >= v16 >> 1)
            {
              v12 = sub_100005978((v16 > 1), v17 + 1, 1, v12);
            }

            *(v12 + 2) = v17 + 1;
            v12[v17 + 32] = v15;
          }
        }

        ++v11;
        --v9;
      }

      while (v9);
    }

    else
    {

      v12 = &_swiftEmptyArrayStorage;
    }

    v18 = *(v12 + 2);
    v19 = &_swiftEmptyArrayStorage;
    if (v18 <= 4)
    {
      if (v18 == 2)
      {
        goto LABEL_56;
      }

      if (v18 != 4)
      {
LABEL_74:

        return 0;
      }
    }

    else
    {
      if (v18 != 5)
      {
        if (v18 != 7)
        {
          if (v18 != 8)
          {
            goto LABEL_74;
          }

          v20 = v12[38];
          v21 = v12[39];
          result = sub_100005978(0, 1, 1, &_swiftEmptyArrayStorage);
          v19 = result;
          v23 = *(result + 16);
          v22 = *(result + 24);
          if (v23 >= v22 >> 1)
          {
            result = sub_100005978((v22 > 1), v23 + 1, 1, result);
            v19 = result;
          }

          *(v19 + 2) = v23 + 1;
          v19[v23 + 32] = v21 | (32 * v20);
          v24 = *(v12 + 2);
          if (v24 < 5)
          {
            goto LABEL_84;
          }

          if (v24 == 5)
          {
            goto LABEL_85;
          }

          if (v24 < 7)
          {
            goto LABEL_86;
          }
        }

        v25 = v12[36];
        v26 = v12[37];
        v27 = v12[38];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100005978(0, *(v19 + 2) + 1, 1, v19);
          v19 = result;
        }

        v29 = *(v19 + 2);
        v28 = *(v19 + 3);
        if (v29 >= v28 >> 1)
        {
          result = sub_100005978((v28 > 1), v29 + 1, 1, v19);
          v19 = result;
        }

        *(v19 + 2) = v29 + 1;
        v19[v29 + 32] = (4 * v26) | (v25 << 7) | (v27 >> 3);
        v30 = *(v12 + 2);
        if (v30 < 4)
        {
          goto LABEL_82;
        }

        if (v30 == 4)
        {
          goto LABEL_83;
        }
      }

      v31 = v12[35];
      v32 = v12[36];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100005978(0, *(v19 + 2) + 1, 1, v19);
        v19 = result;
      }

      v34 = *(v19 + 2);
      v33 = *(v19 + 3);
      if (v34 >= v33 >> 1)
      {
        result = sub_100005978((v33 > 1), v34 + 1, 1, v19);
        v19 = result;
      }

      *(v19 + 2) = v34 + 1;
      v19[v34 + 32] = (v32 >> 1) | (16 * v31);
      v35 = *(v12 + 2);
      if (v35 < 2)
      {
        goto LABEL_79;
      }

      if (v35 == 2)
      {
        goto LABEL_80;
      }

      if (v35 < 4)
      {
        goto LABEL_81;
      }
    }

    v36 = v12[33];
    v37 = v12[34];
    v38 = v12[35];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100005978(0, *(v19 + 2) + 1, 1, v19);
      v19 = result;
    }

    v40 = *(v19 + 2);
    v39 = *(v19 + 3);
    if (v40 >= v39 >> 1)
    {
      result = sub_100005978((v39 > 1), v40 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = v40 + 1;
    v19[v40 + 32] = (2 * v37) | (v36 << 6) | (v38 >> 4);
    v41 = *(v12 + 2);
    if (!v41)
    {
      goto LABEL_77;
    }

    if (v41 == 1)
    {
      goto LABEL_78;
    }

LABEL_56:
    v42 = v12[32];
    v43 = v12[33];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_100005978(0, *(v19 + 2) + 1, 1, v19);
    }

    v45 = *(v19 + 2);
    v44 = *(v19 + 3);
    if (v45 >= v44 >> 1)
    {
      v19 = sub_100005978((v44 > 1), v45 + 1, 1, v19);
    }

    *(v19 + 2) = v45 + 1;
    v19[v45 + 32] = (v43 >> 2) | (8 * v42);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100005978(0, *(v4 + 2) + 1, 1, v4);
    }

    do
    {
      if (v45 >= *(v19 + 2))
      {
        __break(1u);
        goto LABEL_74;
      }

      v46 = v19[v45 + 32];
      v48 = *(v4 + 2);
      v47 = *(v4 + 3);
      if (v48 >= v47 >> 1)
      {
        v4 = sub_100005978((v47 > 1), v48 + 1, 1, v4);
      }

      --v45;
      *(v4 + 2) = v48 + 1;
      v4[v48 + 32] = v46;
    }

    while (v45 != -1);

    v3 = v5;
    v1 = v51;
    v2 = v52;
    if (v5 >= v51)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

uint64_t _s5ErrorOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s5ErrorOwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000074D0()
{
  result = qword_1000109E0;
  if (!qword_1000109E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000109E0);
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for AppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, 0, v6);

  return 0;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}