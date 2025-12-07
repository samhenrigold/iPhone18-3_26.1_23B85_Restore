_BYTE *storeEnumTagSinglePayload for ClientOverride.Server.XcodeTestCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100080884);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientOverride.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100080988);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000809C4()
{
  result = qword_1000D4B50;
  if (!qword_1000D4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4B50);
  }

  return result;
}

unint64_t sub_100080A1C()
{
  result = qword_1000D4B58;
  if (!qword_1000D4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4B58);
  }

  return result;
}

unint64_t sub_100080A74()
{
  result = qword_1000D4B60;
  if (!qword_1000D4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4B60);
  }

  return result;
}

unint64_t sub_100080ACC()
{
  result = qword_1000D4B68;
  if (!qword_1000D4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4B68);
  }

  return result;
}

unint64_t sub_100080B24()
{
  result = qword_1000D4B70;
  if (!qword_1000D4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4B70);
  }

  return result;
}

unint64_t sub_100080B7C()
{
  result = qword_1000D4B78;
  if (!qword_1000D4B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4B78);
  }

  return result;
}

unint64_t sub_100080BD4()
{
  result = qword_1000D4B80;
  if (!qword_1000D4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4B80);
  }

  return result;
}

unint64_t sub_100080C2C()
{
  result = qword_1000D4B88;
  if (!qword_1000D4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4B88);
  }

  return result;
}

unint64_t sub_100080C84()
{
  result = qword_1000D4B90;
  if (!qword_1000D4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4B90);
  }

  return result;
}

unint64_t sub_100080CDC()
{
  result = qword_1000D4B98;
  if (!qword_1000D4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4B98);
  }

  return result;
}

unint64_t sub_100080D34()
{
  result = qword_1000D4BA0;
  if (!qword_1000D4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4BA0);
  }

  return result;
}

unint64_t sub_100080D8C()
{
  result = qword_1000D4BA8;
  if (!qword_1000D4BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4BA8);
  }

  return result;
}

unint64_t sub_100080DE4()
{
  result = qword_1000D4BB0;
  if (!qword_1000D4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4BB0);
  }

  return result;
}

unint64_t sub_100080E3C()
{
  result = qword_1000D4BB8;
  if (!qword_1000D4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4BB8);
  }

  return result;
}

unint64_t sub_100080E94()
{
  result = qword_1000D4BC0;
  if (!qword_1000D4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4BC0);
  }

  return result;
}

uint64_t sub_100080F90(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100080FD8(uint64_t a1)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100080FF4(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100081068()
{
  v1 = 8233;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_100081094@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

unint64_t sub_1000810C8(unint64_t result)
{
  if (result >= 0x13)
  {
    return 19;
  }

  return result;
}

unint64_t sub_1000810F4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000810C8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100081140(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000814B8();
  v5 = sub_100013764();

  return Error<>._code.getter(a1, a2, v4, v5);
}

id sub_100081204()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InvalidRequestServerError();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10008125C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InvalidRequestServerError();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for StoreKitInternalError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StoreKitInternalError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100081428);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100081464()
{
  result = qword_1000D4BF0;
  if (!qword_1000D4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4BF0);
  }

  return result;
}

unint64_t sub_1000814B8()
{
  result = qword_1000D4BF8;
  if (!qword_1000D4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4BF8);
  }

  return result;
}

BOOL sub_100081510(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_1000815C0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = sub_100082978(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

unint64_t sub_1000816B4(char a1)
{
  result = 0x73746E756F636341;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = sub_100082B1C(10);
      break;
    case 3:
      result = 0x6C616E7265747845;
      break;
    case 4:
      result = 0x4F786F62646E6153;
      break;
    case 5:
      result = sub_100082B1C(9);
      break;
    case 6:
      result = 0x73656C6369747241;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100081800(char a1)
{
  result = 0x6B7361742D746567;
  switch(a1)
  {
    case 1:
      sub_100082B54();
      result = v8 + 11;
      break;
    case 2:
      sub_100082B54();
      result = v5 + 8;
      break;
    case 3:
      sub_100082B54();
      result = v6 + 15;
      break;
    case 4:
      sub_100082B54();
      result = v4 + 25;
      break;
    case 5:
      sub_100082B54();
      result = v9 + 20;
      break;
    case 6:
      sub_100082B54();
      result = v10 + 24;
      break;
    case 7:
      sub_100082B54();
      result = v7 + 35;
      break;
    case 8:
      result = sub_100082B1C(5);
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      return result;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    default:
      sub_100082B54();
      result = v3 | 4;
      break;
  }

  return result;
}

void *sub_100081A18()
{
  sub_100081A8C(1, &v2);
  if (v3)
  {
    result = sub_100082B28();
    if (result)
    {
      return v1;
    }
  }

  else
  {
    sub_100012CB4(&v2, &qword_1000D1D60, &qword_100093620);
    return 0;
  }

  return result;
}

double sub_100081A8C@<D0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  sub_100081800(a1);
  v4 = String._bridgeToObjectiveC()();

  v5 = [v2 valueForEntitlement:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *sub_100081B60()
{
  sub_100081A8C(2, &v1);
  if (v2)
  {
    sub_100012AD4(&v1, &v3);
  }

  else
  {
    sub_100081A8C(0, &v3);
    if (v2)
    {
      sub_100012CB4(&v1, &qword_1000D1D60, &qword_100093620);
    }
  }

  if (v4)
  {
    result = sub_100082B28();
    if (result)
    {
      return v1;
    }
  }

  else
  {
    sub_100012CB4(&v3, &qword_1000D1D60, &qword_100093620);
    return 0;
  }

  return result;
}

BOOL sub_100081C54(char a1)
{
  sub_100081A8C(9, &v6);
  if (!v7)
  {
    sub_100012CB4(&v6, &qword_1000D1D60, &qword_100093620);
    return 0;
  }

  sub_100012634(&qword_1000D1D00, &qword_10009B1B0);
  if ((sub_100082B28() & 1) == 0)
  {
    return 0;
  }

  *&v6 = sub_1000816B4(a1);
  *(&v6 + 1) = v2;
  __chkstk_darwin(v6);
  v5[2] = &v6;
  v3 = sub_100081510(sub_100072004, v5, v5[5]);

  return v3;
}

void *sub_100081DDC()
{
  sub_100081A8C(8, &v3);
  if (v4)
  {
    sub_100012AD4(&v3, &v5);
  }

  else
  {
    sub_100081A8C(3, &v1);
    if (v2)
    {
      sub_100012AD4(&v1, &v5);
    }

    else
    {
      sub_100081A8C(0, &v5);
      if (v2)
      {
        sub_100012CB4(&v1, &qword_1000D1D60, &qword_100093620);
      }
    }

    if (v4)
    {
      sub_100012CB4(&v3, &qword_1000D1D60, &qword_100093620);
    }
  }

  if (v6)
  {
    result = sub_100082B28();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_100012CB4(&v5, &qword_1000D1D60, &qword_100093620);
    return 0;
  }

  return result;
}

void *sub_100081F14(char a1)
{
  sub_100081A8C(a1, &v3);
  if (v4)
  {
    result = sub_100082B28();
    if (result)
    {
      return v2;
    }
  }

  else
  {
    sub_100012CB4(&v3, &qword_1000D1D60, &qword_100093620);
    return 0;
  }

  return result;
}

uint64_t sub_100081FF4()
{
  if (sub_100081F14(10))
  {
    return 1;
  }

  result = sub_100009894();
  if (result)
  {
    if (qword_1000D1AF8 != -1)
    {
      swift_once();
    }

    return byte_1000E4579;
  }

  return result;
}

void sub_100082074()
{
  v1 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v51 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v51 - v9;
  __chkstk_darwin(v8);
  v12 = &v51 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v55 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v51 - v18;
  __chkstk_darwin(v17);
  v21 = &v51 - v20;
  sub_100082A40(v0, &selRef_sk_executablePath);
  if (!v22)
  {
    sub_100082A40(v0, &selRef_sk_processName);
    return;
  }

  v54 = v0;
  v56 = v21;
  v23 = String._bridgeToObjectiveC()();
  v24 = CFURLCreateWithFileSystemPath(0, v23, kCFURLPOSIXPathStyle, 0);

  if (v24)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v14;
    v25 = v56;
    v26 = v19;
    v27 = *(v14 + 32);
    v27(v56, v26, v13);
    sub_10001267C(v12, 1, 1, v13);
    sub_100037A5C(v12, v10);
    v28 = sub_100012898(v10, 1, v13);
    v53 = v24;
    if (v28 == 1)
    {
      sub_100012CB4(v10, &qword_1000D1D58, &unk_1000954C0);
      URL._bridgeToObjectiveC()(v29);
      v31 = v30;
      v32 = _CFBundleCopyBundleURLForExecutableURL();

      if (!v32)
      {
        __break(1u);
        return;
      }

      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100012CB4(v12, &qword_1000D1D58, &unk_1000954C0);
      sub_10001267C(v7, 0, 1, v13);
      sub_100037984(v7, v12);
      v25 = v56;
    }

    else
    {

      sub_100012CB4(v10, &qword_1000D1D58, &unk_1000954C0);
    }

    v35 = v55;
    sub_100037A5C(v12, v4);
    if (sub_100012898(v4, 1, v13) == 1)
    {
      sub_100012CB4(v4, &qword_1000D1D58, &unk_1000954C0);
      v36 = v52;
    }

    else
    {
      v27(v35, v4, v13);
      URL._bridgeToObjectiveC()(v37);
      v39 = v38;
      v40 = CFBundleCreate(0, v38);

      if (v40)
      {
        v41 = CFBundleGetIdentifier(v40);
        v36 = v52;
        v42 = v54;
        if (v41)
        {
          v43 = v41;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v44 = *(v36 + 8);
          v44(v35, v13);
          sub_100012CB4(v12, &qword_1000D1D58, &unk_1000954C0);
          v44(v25, v13);
          return;
        }

        v49 = sub_100082B40();
        v50(v49);

        goto LABEL_18;
      }

      v36 = v52;
      v45 = sub_100082B40();
      v46(v45);
    }

    v42 = v54;
LABEL_18:
    v47 = [v42 sk_processName];
    if (v47)
    {
      v48 = v47;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
    }

    sub_100012CB4(v12, &qword_1000D1D58, &unk_1000954C0);
    (*(v36 + 8))(v56, v13);
    return;
  }

  v33 = [v54 sk_processName];
  if (v33)
  {
    v34 = v33;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }
}

uint64_t sub_100082600(uint64_t a1, id a2, int (*a3)(uint64_t, uint64_t, uint64_t))
{
  [a2 auditToken];
  v5 = sub_100082AA0(v9);
  v6 = swift_slowAlloc();
  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
  }

  if (a3(v5, v6, a1) < 1)
  {

    return 0;
  }

  else
  {
    v7 = String.init(cString:)();
  }

  return v7;
}

id sub_100082714(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100082834()
{
  [v0 auditToken];
  [v0 auditToken];
  return Data.init(bytes:count:)();
}

uint64_t sub_1000828E8()
{
  v1 = sub_100082A40(v0, &selRef_sk_clientID);
  if (v2)
  {
    if (v1 == 0xD000000000000023 && v2 == 0x80000001000A28D0)
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
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_100082978(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_10008299C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100082A40(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

unint64_t sub_100082AD4()
{
  result = qword_1000D1D78;
  if (!qword_1000D1D78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D1D78);
  }

  return result;
}

uint64_t sub_100082B28()
{

  return swift_dynamicCast();
}

void *sub_100082B68(uint64_t a1, char a2)
{
  sub_100012634(&qword_1000D4C00, &qword_10009A718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100093340;
  v4 = kMISValidationOptionOnlineAuthorization;
  *(inited + 32) = kMISValidationOptionOnlineAuthorization;
  *(inited + 40) = kCFBooleanFalse;
  v5 = kMISValidationOptionValidateSignatureOnly;
  v6 = kCFBooleanTrue;
  if ((a2 & 1) == 0)
  {
    v6 = kCFBooleanFalse;
  }

  *(inited + 48) = kMISValidationOptionValidateSignatureOnly;
  *(inited + 56) = v6;
  v7 = v6;
  v8 = v4;
  v9 = kCFBooleanFalse;
  v10 = v5;
  sub_100012634(&qword_1000D4C08, &qword_10009A720);
  sub_100012634(&qword_1000D4C10, &qword_10009A728);
  sub_100083208();
  Dictionary.init(dictionaryLiteral:)();
  v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26[2] = 0;
  URL.path(percentEncoded:)(0);
  v12 = String._bridgeToObjectiveC()();

  MISValidateSignatureAndCopyInfo();
  result = MISCopyErrorStringForErrorCodeUnlocalized();
  if (result)
  {
    v14 = result;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v18, qword_1000E4560);
    _StringGuts.grow(_:)(33);

    v26[1] = 0x80000001000A2BC0;
    type metadata accessor for URL();
    sub_100083994(&qword_1000D27F0, &type metadata accessor for URL);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 8250;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = v15;
    v21._object = v17;
    String.append(_:)(v21);

    v22 = static os_log_type_t.error.getter();

    v23 = Logger.logObject.getter();

    if (os_log_type_enabled(v23, v22))
    {
      v24 = swift_slowAlloc();
      v26[0] = swift_slowAlloc();
      *v24 = 136446466;
      *(v24 + 4) = sub_1000847A8(0, 0xE000000000000000, v26);
      *(v24 + 12) = 2082;
      v25 = sub_1000847A8(0xD00000000000001BLL, 0x80000001000A2BC0, v26);

      *(v24 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v23, v22, "%{public}s%{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  else
  {
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t sub_1000830B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:)();
  v8 = sub_100082B68(v7, a3);
  (*(v5 + 8))(v7, v4);
  return v8 & 1;
}

unint64_t sub_100083208()
{
  result = qword_1000D4C18;
  if (!qword_1000D4C18)
  {
    sub_10001CEC4(&qword_1000D4C08, &qword_10009A720);
    sub_100083994(&qword_1000D1F10, type metadata accessor for CFString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4C18);
  }

  return result;
}

unint64_t sub_1000832C0(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v3 = Hasher._finalize()();

  return sub_1000836E0(a1, v3);
}

unint64_t sub_100083350()
{
  AnyHashable._rawHashValue(seed:)(*(v0 + 40));
  v1 = sub_100083AE4();

  return sub_100083518(v1, v2);
}

unint64_t sub_100083390(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_100083994(&qword_1000D4C20, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000835DC(a1, v2);
}

unint64_t sub_100083444()
{
  type metadata accessor for UUID();
  sub_100083994(&qword_1000D3180, &type metadata accessor for UUID);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v0 = sub_100083AE4();

  return sub_1000837D8(v0, v1);
}

unint64_t sub_1000834D8()
{
  NSObject._rawHashValue(seed:)(*(v0 + 40));
  v1 = sub_100083AE4();

  return sub_1000839D8(v1, v2);
}

unint64_t sub_100083518(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_10004977C(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_10001CAD0(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000835DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = *(*(v3 + 48) + 8 * i);
    type metadata accessor for CFString(0);
    sub_100083994(&qword_1000D4C20, type metadata accessor for CFString);
    v8 = v7;
    v9 = static _CFObject.== infix(_:_:)();

    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000836E0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {

      return i;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_1000837D8(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_100083994(&qword_1000D4C28, &type metadata accessor for UUID);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100083994(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_100083AE4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000839D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_100083A98();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100083A98()
{
  result = qword_1000D31B0;
  if (!qword_1000D31B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D31B0);
  }

  return result;
}

uint64_t sub_100083BE0@<X0>(uint64_t a1@<X8>)
{
  v4 = 37;
  sub_100083CAC(v5, &v4, v6);
  if (v5[1])
  {

    UUID.init(uuidString:)();
    return swift_bridgeObjectRelease_n();
  }

  else
  {
    v3 = type metadata accessor for UUID();
    return sub_10001267C(a1, 1, 1, v3);
  }
}

void sub_100083CAC(uint64_t *__return_ptr a1@<X8>, size_t *a2@<X0>, void *a3@<X1>)
{
  if (sysctlbyname("kern.bootsessionuuid", a3, a2, 0, 0))
  {
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v5, qword_1000E4560);
    v6 = static os_log_type_t.error.getter();
    v7 = Logger.logObject.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v8 = 136446466;
      *(v8 + 4) = sub_1000847A8(0, 0xE000000000000000, &v10);
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_1000847A8(0xD000000000000027, 0x80000001000A2CC0, &v10);
      _os_log_impl(&_mh_execute_header, v7, v6, "%{public}s%{public}s", v8, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_7;
  }

  if (!a3)
  {
LABEL_7:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  *a1 = String.init(cString:)();
  a1[1] = v9;
}

BOOL sub_100083E58()
{
  result = sub_100083E7C();
  byte_1000E4578 = result;
  return result;
}

BOOL sub_100083E7C()
{
  v0 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = swift_slowAlloc();
  v4 = swift_slowAlloc();
  if (sysctlbyname("kern.hv_vmm_present", v3, v4, 0, 0))
  {
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v5 = sub_1000128C0(v0, qword_1000E4560);
    sub_100012C50(v5, v2);
    v6 = Logger.logObject.getter();
    v7 = type metadata accessor for Logger();
    (*(*(v7 - 8) + 8))(v2, v7);
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, v8, "Failed to get kern.hv_vmm_present", v9, 2u);
    }

    return 0;
  }

  else
  {
    v10 = *v3 != 0;
  }

  return v10;
}

uint64_t sub_10008407C()
{
  if (qword_1000D1AF0 != -1)
  {
    sub_100084DD0(&qword_1000D1AF0);
  }

  return byte_1000E4578;
}

uint64_t sub_1000840D8(uint64_t result)
{
  v1 = result;
  if (qword_1000D1AF0 != -1)
  {
    result = sub_100084DD0(&qword_1000D1AF0);
  }

  byte_1000E4578 = v1 & 1;
  return result;
}

uint64_t sub_100084158()
{
  v0 = objc_opt_self();
  v2 = sub_100084D28(v0);
  if (v1)
  {
    v3 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v3 = v2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 4 * v3;
    for (i = 15; v4 != i >> 14; i = String.index(after:)())
    {
      String.subscript.getter();
      v6 = Character.isNumber.getter();

      if (v6)
      {
        break;
      }
    }

    String.subscript.getter();

    v2 = static String._fromSubstring(_:)();
  }

  return v2;
}

id sub_100084270(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1000842C8()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGCopyAnswer();

  if (v1)
  {
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_100084360()
{
  sub_100084D8C();
  result = sub_1000843A0(&off_1000BE868);
  byte_1000E4579 = result;
  return result;
}

BOOL sub_1000843A0(uint64_t a1)
{
  v17 = 0;
  v2 = amfi_interface_query_bootarg_state(&v17);
  if (v2)
  {
    v3 = v2;
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v4, qword_1000E4560);
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v19 = 0xD000000000000024;
    v20 = 0x80000001000A2CF0;
    strerror_r(v3, __strerrbuf, 0x100uLL);
    v5._countAndFlagsBits = String.init(cString:)();
    String.append(_:)(v5);

    v7 = v19;
    v6 = v20;
    v8 = static os_log_type_t.error.getter();

    v9 = Logger.logObject.getter();

    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v10 = 136446466;
      *(v10 + 4) = sub_1000847A8(0, 0xE000000000000000, &v19);
      *(v10 + 12) = 2082;
      v11 = sub_1000847A8(v7, v6, &v19);

      *(v10 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v9, v8, "%{public}s%{public}s", v10, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = (a1 + 32);
      do
      {
        v15 = *v14++;
        v13 |= v15;
        --v12;
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    return (v17 & v13) != 0;
  }
}

BOOL sub_100084618()
{
  sub_100084D8C();
  result = sub_1000843A0(&off_1000BE758);
  byte_1000E457A = result;
  return result;
}

id sub_100084680()
{
  v0 = [objc_opt_self() deviceIsiPad];
  v1 = &AMSMediaTaskPlatformiPad;
  if (!v0)
  {
    v1 = &AMSMediaTaskPlatformiPhone;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_1000846D8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10008474C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1000847A8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1000847A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10008486C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100012908(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100012A18(v11);
  return v7;
}

unint64_t sub_10008486C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10008496C(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

void *sub_10008496C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000849B8(a1, a2);
  sub_100084AD0(&off_1000BE6B0);
  return v3;
}

void *sub_1000849B8(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100084BB4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100084AD0(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100084C24(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100084BB4(uint64_t a1, uint64_t a2)
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

  sub_100012634(&qword_1000D4C30, qword_10009A730);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100084C24(char *result, int64_t a2, char a3, char *a4)
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
    sub_100012634(&qword_1000D4C30, qword_10009A730);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **sub_100084D18(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100084D28(void *a1)
{
  v1 = [a1 sk_hardwareModel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100084D8C()
{
  result = qword_1000D4C38;
  if (!qword_1000D4C38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D4C38);
  }

  return result;
}

uint64_t sub_100084DD0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100084DF0(void *a1, uint64_t a2)
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = sub_100084F6C(v5, v6);
  if (v3 == v7 && v2 == v8)
  {

    return 0;
  }

  v10 = sub_100084F48(v7);

  if (v10)
  {

    return 0;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = sub_100084F6C(v12, v13);
  if (v10 == v14 && v2 == v15)
  {

    return 2;
  }

  v17 = sub_100084F48(v14);

  if (v17)
  {

    return 2;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = sub_100084F6C(v18, v19);
  if (v17 == v20 && v2 == v21)
  {

    return 1;
  }

  else
  {
    v23 = sub_100084F48(v20);

    if (v23)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100084F48(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100084F6C(uint64_t a1, uint64_t a2)
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100084F9C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100012634(&qword_1000D2000, qword_1000945D0);
    v9 = a1 + *(a3 + 20);

    return sub_100012898(v9, a2, v8);
  }
}

uint64_t sub_100085044(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100012634(&qword_1000D2000, qword_1000945D0);
    v8 = v5 + *(a4 + 20);

    return sub_10001267C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ProcessPurchaseResultRequest(uint64_t a1)
{
  result = qword_1000D4C98;
  if (!qword_1000D4C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008511C(uint64_t a1)
{
  sub_100013CC0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000851A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001000A2D20 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x80000001000A2D40 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_100085314(char a1)
{
  result = 0x79654B676F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x764F746E65696C63;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000853B0(void *a1)
{
  v3 = v1;
  v5 = sub_100012634(&qword_1000D4CF8, &qword_10009A830);
  sub_100014A8C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v17[-v9];
  sub_100012980(a1, a1[3]);
  sub_100085B18();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  sub_100034204();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for ProcessPurchaseResultRequest(0);
    LOBYTE(v18) = 1;
    type metadata accessor for ClientOverride(0);
    sub_100085E80();
    sub_100085C2C(v12, v13, &unk_100099EE0);
    sub_100034204();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 2;
    sub_100034204();
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = (v3 + *(v11 + 28));
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    v17[15] = 3;
    sub_100019008(v18, v15);
    sub_10001E308();
    sub_100034204();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100018DF0(v18, v19);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1000855C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  sub_100012634(&qword_1000D4CE8, &qword_10009A828);
  sub_100014A8C();
  v27 = v8;
  v28 = v7;
  __chkstk_darwin(v7);
  v9 = type metadata accessor for ProcessPurchaseResultRequest(0);
  v10 = __chkstk_darwin(v9);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = v10;
  v13 = *(v10 + 20);
  v14 = type metadata accessor for ClientOverride(0);
  v30 = v13;
  sub_10001267C(v12 + v13, 1, 1, v14);
  sub_100012980(a1, a1[3]);
  sub_100085B18();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100012A18(a1);
    return sub_1000145CC(v12 + v30);
  }

  else
  {
    LOBYTE(v31) = 0;
    sub_100085EA8();
    *v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v12[1] = v15;
    v25 = v15;
    LOBYTE(v31) = 1;
    sub_100085E80();
    sub_100085C2C(v16, v17, &unk_100099F08);
    sub_100085EA8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v18 = v29;
    sub_100014634(v6, v12 + v30);
    LOBYTE(v31) = 2;
    sub_100085EA8();
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = (v12 + *(v18 + 24));
    *v20 = v19;
    v20[1] = v21;
    v32 = 3;
    sub_10001E244();
    sub_100085EA8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = sub_100085E98();
    v23(v22);
    *(v12 + *(v18 + 28)) = v31;
    sub_100085B6C(v12, v26);
    sub_100012A18(a1);
    return sub_100085BD0(v12);
  }
}

uint64_t sub_10008596C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000851A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100085994(uint64_t a1)
{
  v2 = sub_100085B18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000859D0(uint64_t a1)
{
  v2 = sub_100085B18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100085A3C(uint64_t a1)
{
  result = sub_100085C2C(&qword_1000D22D8, type metadata accessor for ProcessPurchaseResultRequest, &unk_10009A80C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100085A94(uint64_t a1)
{
  *(a1 + 16) = sub_100085C2C(&qword_1000D4CD8, type metadata accessor for ProcessPurchaseResultRequest, &unk_10009A7A8);
  result = sub_100085C2C(&qword_1000D4CE0, type metadata accessor for ProcessPurchaseResultRequest, &unk_10009A780);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_100085B18()
{
  result = qword_1000D4CF0;
  if (!qword_1000D4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4CF0);
  }

  return result;
}

uint64_t sub_100085B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessPurchaseResultRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100085BD0(uint64_t a1)
{
  v2 = type metadata accessor for ProcessPurchaseResultRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100085C2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for ProcessPurchaseResultRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100085D40);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100085D7C()
{
  result = qword_1000D4D00;
  if (!qword_1000D4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4D00);
  }

  return result;
}

unint64_t sub_100085DD4()
{
  result = qword_1000D4D08;
  if (!qword_1000D4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4D08);
  }

  return result;
}

unint64_t sub_100085E2C()
{
  result = qword_1000D4D10;
  if (!qword_1000D4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4D10);
  }

  return result;
}

uint64_t sub_100085EC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E61725473776ALL && a2 == 0xEE006E6F69746361)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100085F90(char a1)
{
  if (a1)
  {
    return 0x736E61725473776ALL;
  }

  else
  {
    return 0x79654B676F6CLL;
  }
}

uint64_t sub_100085FD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100012634(&qword_1000D4D28, &qword_10009AA18);
  sub_100014A8C();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = v14 - v11;
  sub_100012980(a1, a1[3]);
  sub_1000863F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_10008613C(void *a1)
{
  sub_100012634(&qword_1000D4D18, &qword_10009AA10);
  sub_100014A8C();
  __chkstk_darwin(v3);
  v4 = a1[4];
  sub_100012980(a1, a1[3]);
  sub_1000863F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v6 = sub_100067984();
    v7(v6);
  }

  sub_100012A18(a1);
  return v4;
}

uint64_t sub_100086304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100085EC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10008632C(uint64_t a1)
{
  v2 = sub_1000863F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100086368(uint64_t a1)
{
  v2 = sub_1000863F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000863A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10008613C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1000863F4()
{
  result = qword_1000D4D20;
  if (!qword_1000D4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4D20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProcessPurchaseResultResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100086514);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100086550()
{
  result = qword_1000D4D30;
  if (!qword_1000D4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4D30);
  }

  return result;
}

unint64_t sub_1000865A8()
{
  result = qword_1000D4D38;
  if (!qword_1000D4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4D38);
  }

  return result;
}

unint64_t sub_100086600()
{
  result = qword_1000D4D40;
  if (!qword_1000D4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4D40);
  }

  return result;
}

uint64_t sub_100086668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100012898(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100086734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100012634(&qword_1000D2000, qword_1000945D0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001267C(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ProductRequest(uint64_t a1)
{
  result = qword_1000D4DA0;
  if (!qword_1000D4DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100086834(uint64_t a1)
{
  sub_100013CC0(319);
  if (v1 <= 0x3F)
  {
    sub_10008699C(319, &qword_1000D4DB0, sub_100086948, &type metadata for ProductRequest.IncludedResource);
    if (v2 <= 0x3F)
    {
      sub_10008699C(319, &qword_1000D4DC0, sub_1000869FC, &type metadata for ProductRequest.ExtendedAttributes);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100086948()
{
  result = qword_1000D4DB8;
  if (!qword_1000D4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4DB8);
  }

  return result;
}

void sub_10008699C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for Set();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1000869FC()
{
  result = qword_1000D4DC8;
  if (!qword_1000D4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4DC8);
  }

  return result;
}

uint64_t sub_100086A90(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100086AA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100086AE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100086B44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C7561666544736FLL && a2 == 0xE900000000000074;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684099177 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656E6F685069 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 6513005 && a2 == 0xE300000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7974696C616572 && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 30324 && a2 == 0xE200000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6863746177 && a2 == 0xE500000000000000)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100086D6C(char a1)
{
  result = 0x6C7561666544736FLL;
  switch(a1)
  {
    case 1:
      result = 1684099177;
      break;
    case 2:
      result = 0x656E6F685069;
      break;
    case 3:
      result = 6513005;
      break;
    case 4:
      result = 0x7974696C616572;
      break;
    case 5:
      result = 30324;
      break;
    case 6:
      result = 0x6863746177;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100086E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100030230();
  v83 = v28;
  v30 = v29;
  sub_100012634(&qword_1000D4F58, &qword_10009B0E8);
  sub_100014A8C();
  v81 = v32;
  v82 = v31;
  sub_10002FF34();
  __chkstk_darwin(v33);
  sub_100032608();
  v80 = v34;
  sub_100012634(&qword_1000D4F60, &qword_10009B0F0);
  sub_100014A8C();
  v78 = v36;
  v79 = v35;
  sub_10002FF34();
  __chkstk_darwin(v37);
  sub_100032608();
  v77 = v38;
  sub_100012634(&qword_1000D4F68, &qword_10009B0F8);
  sub_100014A8C();
  v75 = v40;
  v76 = v39;
  sub_10002FF34();
  __chkstk_darwin(v41);
  sub_100032608();
  v74 = v42;
  sub_100012634(&qword_1000D4F70, &qword_10009B100);
  sub_100014A8C();
  v72 = v44;
  v73 = v43;
  sub_10002FF34();
  __chkstk_darwin(v45);
  sub_100032608();
  v71 = v46;
  sub_100012634(&qword_1000D4F78, &qword_10009B108);
  sub_100014A8C();
  v69 = v48;
  v70 = v47;
  sub_10002FF34();
  __chkstk_darwin(v49);
  sub_100032608();
  v68 = v50;
  sub_100012634(&qword_1000D4F80, &qword_10009B110);
  sub_100014A8C();
  v66 = v52;
  v67 = v51;
  sub_10002FF34();
  __chkstk_darwin(v53);
  v55 = &v64 - v54;
  v56 = sub_100012634(&qword_1000D4F88, &qword_10009B118);
  sub_100014A8C();
  v65 = v57;
  sub_10002FF34();
  __chkstk_darwin(v58);
  sub_10008D47C();
  sub_100012634(&qword_1000D4F90, &qword_10009B120);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v59);
  sub_10008D50C();
  sub_10008D54C(v30, v30[3]);
  sub_10008B63C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v83)
  {
    case 1:
      sub_10008B834();
      sub_10008D368(&type metadata for ProductRequest.Platform.IPadCodingKeys);
      v61 = v66;
      v60 = v67;
      goto LABEL_9;
    case 2:
      sub_10008B7E0();
      v55 = v68;
      sub_10008D368(&type metadata for ProductRequest.Platform.IPhoneCodingKeys);
      v61 = v69;
      v60 = v70;
      goto LABEL_9;
    case 3:
      sub_10008B78C();
      v55 = v71;
      sub_10008D368(&type metadata for ProductRequest.Platform.MacCodingKeys);
      v61 = v72;
      v60 = v73;
      goto LABEL_9;
    case 4:
      sub_10008B738();
      v55 = v74;
      sub_10008D368(&type metadata for ProductRequest.Platform.RealityCodingKeys);
      v61 = v75;
      v60 = v76;
      goto LABEL_9;
    case 5:
      sub_10008B6E4();
      v55 = v77;
      sub_10008D368(&type metadata for ProductRequest.Platform.TvCodingKeys);
      v61 = v78;
      v60 = v79;
      goto LABEL_9;
    case 6:
      sub_10008B690();
      v55 = v80;
      sub_10008D368(&type metadata for ProductRequest.Platform.WatchCodingKeys);
      v61 = v81;
      v60 = v82;
LABEL_9:
      (*(v61 + 8))(v55, v60);
      break;
    default:
      sub_10008B888();
      sub_10008D3B8(&type metadata for ProductRequest.Platform.OsDefaultCodingKeys);
      (*(v65 + 8))(v27, v56);
      break;
  }

  v62 = sub_10008D5C0();
  v63(v62);
  sub_100030218();
}

void sub_1000873A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100030230();
  a26 = v30;
  a27 = v31;
  v33 = v32;
  sub_100012634(&qword_1000D4ED8, &qword_10009B0A0);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v34);
  sub_100032608();
  v105 = v35;
  sub_100012634(&qword_1000D4EE0, &qword_10009B0A8);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v36);
  sub_100032608();
  sub_100012634(&qword_1000D4EE8, &qword_10009B0B0);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v37);
  sub_100032608();
  v101 = sub_100012634(&qword_1000D4EF0, &qword_10009B0B8);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v38);
  sub_100032608();
  sub_100012634(&qword_1000D4EF8, &qword_10009B0C0);
  sub_100014A8C();
  v102 = v40;
  v103 = v39;
  sub_10002FF34();
  __chkstk_darwin(v41);
  sub_100032608();
  v104 = v42;
  sub_100012634(&qword_1000D4F00, &qword_10009B0C8);
  sub_100014A8C();
  v99 = v44;
  v100 = v43;
  sub_10002FF34();
  __chkstk_darwin(v45);
  sub_10008D52C();
  v46 = sub_100012634(&qword_1000D4F08, &qword_10009B0D0);
  sub_100014A8C();
  v98 = v47;
  sub_10002FF34();
  __chkstk_darwin(v48);
  sub_10008D50C();
  v49 = sub_100012634(&qword_1000D4F10, &unk_10009B0D8);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v50);
  sub_10008D51C();
  v51 = sub_10008D3F8();
  sub_10008D54C(v51, v52);
  sub_10008B63C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    goto LABEL_9;
  }

  v97 = v29;
  v53 = v104;
  v54 = KeyedDecodingContainer.allKeys.getter();
  sub_10004E288(v54, 0);
  if (v56 == v55 >> 1)
  {
    goto LABEL_8;
  }

  sub_10008D46C();
  sub_10008D5CC();
  if (v59 == v60)
  {
    __break(1u);
    JUMPOUT(0x100087BD0);
  }

  v96 = *(v58 + v57);
  sub_10004E284(v57 + 1);
  v62 = v61;
  v64 = v63;
  swift_unknownObjectRelease();
  if (v62 != v64 >> 1)
  {
LABEL_8:
    v65 = type metadata accessor for DecodingError();
    sub_10004B1D4(v65, &protocol witness table for DecodingError);
    v67 = v66;
    sub_100012634(qword_1000D2A78, &qword_1000959C0);
    *v67 = &type metadata for ProductRequest.Platform;
    v68 = KeyedDecodingContainer.codingPath.getter();
    sub_10008D404(v68);
    (*(*(v65 - 8) + 104))(v67, enum case for DecodingError.typeMismatch(_:), v65);
    swift_willThrow();
    swift_unknownObjectRelease();
    v69 = sub_10008D4D4();
    v70(v69, v49);
LABEL_9:
    sub_100012A18(v33);
    goto LABEL_10;
  }

  switch(v96)
  {
    case 1:
      a12 = 1;
      v85 = sub_10008B834();
      v53 = v27;
      sub_10008D330(&type metadata for ProductRequest.Platform.IPadCodingKeys, &a12, v86, v87, v85);
      swift_unknownObjectRelease();
      v78 = v99;
      v77 = v100;
      goto LABEL_15;
    case 2:
      a13 = 2;
      v74 = sub_10008B7E0();
      sub_10008D330(&type metadata for ProductRequest.Platform.IPhoneCodingKeys, &a13, v75, v76, v74);
      swift_unknownObjectRelease();
      v78 = v102;
      v77 = v103;
LABEL_15:
      (*(v78 + 8))(v53, v77);
      goto LABEL_20;
    case 3:
      a14 = 3;
      v79 = sub_10008B78C();
      sub_10008D330(&type metadata for ProductRequest.Platform.MacCodingKeys, &a14, v80, v81, v79);
      swift_unknownObjectRelease();
      v82 = sub_10008D570();
      v84 = v101;
      goto LABEL_19;
    case 4:
      a15 = 4;
      v71 = sub_10008B738();
      sub_10008D330(&type metadata for ProductRequest.Platform.RealityCodingKeys, &a15, v72, v73, v71);
      swift_unknownObjectRelease();
      goto LABEL_18;
    case 5:
      a16 = 5;
      sub_10008B6E4();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      v94 = sub_10008D570();
      v95(v94);
      v91 = sub_10008D4C8();
      v93 = v49;
      break;
    case 6:
      a17 = 6;
      v88 = sub_10008B690();
      sub_10008D330(&type metadata for ProductRequest.Platform.WatchCodingKeys, &a17, v89, v90, v88);
      swift_unknownObjectRelease();
LABEL_18:
      v82 = sub_10008D570();
LABEL_19:
      v83(v82, v84);
LABEL_20:
      v91 = sub_10008D4C8();
      v93 = v105;
      break;
    default:
      sub_10008B888();
      sub_10008D3D4();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      (*(v98 + 8))(v97, v46);
      v91 = sub_10008D4C8();
      v93 = v49;
      break;
  }

  v92(v91, v93);
  sub_100012A18(v33);
LABEL_10:
  sub_100030218();
}

uint64_t sub_100087BEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x80000001000A2DC0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x654D79636167656CLL && a2 == 0xEE00495041616964;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x495041616964656DLL && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100087D0C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000019;
  }

  if (a1 == 1)
  {
    return 0x654D79636167656CLL;
  }

  return 0x495041616964656DLL;
}

void sub_100087D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_100030230();
  v41 = v26;
  v28 = v27;
  sub_100012634(&qword_1000D5028, &qword_10009B178);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v29);
  sub_100032608();
  sub_100012634(&qword_1000D5030, &qword_10009B180);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v30);
  sub_10008D3A8();
  v31 = sub_100012634(&qword_1000D5038, &qword_10009B188);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v32);
  sub_10008D51C();
  v33 = sub_100012634(&qword_1000D5040, &qword_10009B190);
  sub_100014A8C();
  v35 = v34;
  sub_10002FF34();
  __chkstk_darwin(v36);
  sub_10008D47C();
  sub_10008D54C(v28, v28[3]);
  sub_10008BA2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v37 = (v35 + 8);
  if (v41)
  {
    if (v41 == 1)
    {
      sub_10008BAD4();
      sub_10008D3D4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = sub_10008D570();
    }

    else
    {
      sub_10008BA80();
      sub_10008D3D4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = sub_10008D564();
    }
  }

  else
  {
    sub_10008BB28();
    sub_10008D3D4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v38 = sub_10008D4D4();
    v39 = v31;
  }

  v40(v38, v39);
  (*v37)(v25, v33);
  sub_100030218();
}

void sub_10008806C()
{
  sub_100030230();
  v2 = v1;
  v43 = sub_100012634(&qword_1000D4FE8, &qword_10009B158);
  sub_100014A8C();
  v42 = v3;
  sub_10002FF34();
  __chkstk_darwin(v4);
  sub_100032608();
  v40 = v5;
  v41 = sub_100012634(&qword_1000D4FF0, &qword_10009B160);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v6);
  sub_10007B14C();
  v7 = sub_100012634(&qword_1000D4FF8, &qword_10009B168);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v8);
  sub_10008D47C();
  v9 = sub_100012634(&qword_1000D5000, &qword_10009B170);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v10);
  sub_100081010();
  sub_10008D54C(v2, v2[3]);
  sub_10008BA2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    v11 = KeyedDecodingContainer.allKeys.getter();
    sub_10004E288(v11, 0);
    v13 = v9;
    if (v14 != v12 >> 1)
    {
      sub_10008D46C();
      sub_10008D5CC();
      if (v17 == v18)
      {
        __break(1u);
        return;
      }

      v19 = v9;
      v20 = *(v16 + v15);
      sub_10004E284(v15 + 1);
      v22 = v21;
      v24 = v23;
      swift_unknownObjectRelease();
      if (v22 == v24 >> 1)
      {
        if (v20)
        {
          if (v20 == 1)
          {
            sub_10008BAD4();
            sub_100039058();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            swift_unknownObjectRelease();
            v25 = sub_10008D564();
            v26(v25, v41);
          }

          else
          {
            sub_10008BA80();
            sub_100039058();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            swift_unknownObjectRelease();
            (*(v42 + 8))(v40, v43);
          }

          v27 = sub_100039078();
          v28(v27);
        }

        else
        {
          sub_10008BB28();
          sub_100039058();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          v36 = sub_10008D564();
          v37(v36, v7);
          v38 = sub_100039068();
          v39(v38, v19);
        }

        goto LABEL_12;
      }

      v13 = v19;
    }

    v29 = type metadata accessor for DecodingError();
    sub_10004B1D4(v29, &protocol witness table for DecodingError);
    v31 = v30;
    sub_100012634(qword_1000D2A78, &qword_1000959C0);
    *v31 = &type metadata for ProductRequest.RequestKind;
    v32 = KeyedDecodingContainer.codingPath.getter();
    sub_10008D404(v32);
    sub_10008D53C();
    (*(v33 + 104))(v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    v34 = sub_100039068();
    v35(v34, v13);
  }

LABEL_12:
  sub_100012A18(v2);
  sub_100030218();
}

uint64_t sub_10008859C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746375646F7270 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000A2DE0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10008866C(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x73746375646F7270;
  }
}

uint64_t sub_1000886B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 7554121 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_100088730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100030230();
  v36 = v21;
  v23 = v22;
  sub_100012634(&qword_1000D5078, &qword_10009B1B8);
  sub_100014A8C();
  v35 = v24;
  sub_10002FF34();
  __chkstk_darwin(v25);
  sub_10008D51C();
  v26 = sub_100012634(&qword_1000D5080, &qword_10009B1C0);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v27);
  sub_10008D3A8();
  v28 = sub_100012634(&qword_1000D5088, &qword_10009B1C8);
  sub_100014A8C();
  v30 = v29;
  sub_10002FF34();
  __chkstk_darwin(v31);
  sub_100081010();
  sub_10008D54C(v23, v23[3]);
  sub_10008BB7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v36)
  {
    sub_10008BBD0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100012634(&qword_1000D1D00, &qword_10009B1B0);
    sub_10008D48C(&qword_1000D4518);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v32 = sub_10008D4D4();
    v34 = v35;
  }

  else
  {
    sub_10008BC24();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100012634(&qword_1000D1D00, &qword_10009B1B0);
    sub_10008D48C(&qword_1000D4518);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v32 = sub_10008D570();
    v34 = v26;
  }

  v33(v32, v34);
  (*(v30 + 8))(v20, v28);
  sub_100030218();
}

void sub_100088A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100030230();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v60 = sub_100012634(&qword_1000D5048, &qword_10009B198);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v25);
  sub_100081010();
  sub_100012634(&qword_1000D5050, &qword_10009B1A0);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v26);
  sub_10008D47C();
  v27 = sub_100012634(&qword_1000D5058, &qword_10009B1A8);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v28);
  sub_10008D52C();
  sub_10008D54C(v24, v24[3]);
  sub_10008BB7C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v61 = v24;
    v29 = KeyedDecodingContainer.allKeys.getter();
    sub_10004E288(v29, 0);
    if (v31 != v30 >> 1)
    {
      sub_10008D46C();
      sub_10008D5CC();
      if (v34 == v35)
      {
        __break(1u);
        return;
      }

      v36 = *(v33 + v32);
      sub_10004E284(v32 + 1);
      v38 = v37;
      v40 = v39;
      swift_unknownObjectRelease();
      if (v38 == v40 >> 1)
      {
        if (v36)
        {
          LOBYTE(a10) = 1;
          v41 = sub_10008BBD0();
          sub_10008D5E4(&type metadata for ProductRequest.IdentifierKind.SubscriptionGroupsCodingKeys, &a10, v42, v43, v41);
          sub_100012634(&qword_1000D1D00, &qword_10009B1B0);
          sub_10008D424(&qword_1000D4530);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v54 = sub_10008D4D4();
          v55(v54, v60);
        }

        else
        {
          LOBYTE(a10) = 0;
          v51 = sub_10008BC24();
          sub_10008D5E4(&type metadata for ProductRequest.IdentifierKind.ProductsCodingKeys, &a10, v52, v53, v51);
          sub_100012634(&qword_1000D1D00, &qword_10009B1B0);
          sub_10008D424(&qword_1000D4530);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v58 = sub_10008D5C0();
          v59(v58);
        }

        v56 = sub_10008D358();
        v57(v56);
        sub_100012A18(v61);
        goto LABEL_10;
      }
    }

    v44 = type metadata accessor for DecodingError();
    sub_10004B1D4(v44, &protocol witness table for DecodingError);
    v46 = v45;
    sub_100012634(qword_1000D2A78, &qword_1000959C0);
    *v46 = &type metadata for ProductRequest.IdentifierKind;
    v47 = KeyedDecodingContainer.codingPath.getter();
    sub_10008D404(v47);
    sub_10008D53C();
    (*(v48 + 104))(v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    v49 = sub_10008D564();
    v50(v49, v27);
    v24 = v61;
  }

  sub_100012A18(v24);
LABEL_10:
  sub_100030218();
}

BOOL sub_100088F68(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000BE890, v2);

  return v3 != 0;
}

uint64_t sub_100088FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100086B44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100088FFC(uint64_t a1)
{
  v2 = sub_10008B63C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100089038(uint64_t a1)
{
  v2 = sub_10008B63C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100089074(uint64_t a1)
{
  v2 = sub_10008B834();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000890B0(uint64_t a1)
{
  v2 = sub_10008B834();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000890EC(uint64_t a1)
{
  v2 = sub_10008B7E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100089128(uint64_t a1)
{
  v2 = sub_10008B7E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100089164(uint64_t a1)
{
  v2 = sub_10008B78C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000891A0(uint64_t a1)
{
  v2 = sub_10008B78C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000891DC(uint64_t a1)
{
  v2 = sub_10008B888();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100089218(uint64_t a1)
{
  v2 = sub_10008B888();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100089254(uint64_t a1)
{
  v2 = sub_10008B738();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100089290(uint64_t a1)
{
  v2 = sub_10008B738();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000892CC(uint64_t a1)
{
  v2 = sub_10008B6E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100089308(uint64_t a1)
{
  v2 = sub_10008B6E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100089344(uint64_t a1)
{
  v2 = sub_10008B690();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100089380(uint64_t a1)
{
  v2 = sub_10008B690();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10008940C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100087BEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100089434(uint64_t a1)
{
  v2 = sub_10008BA2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100089470(uint64_t a1)
{
  v2 = sub_10008BA2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000894AC(uint64_t a1)
{
  v2 = sub_10008BB28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000894E8(uint64_t a1)
{
  v2 = sub_10008BB28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100089524(uint64_t a1)
{
  v2 = sub_10008BAD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100089560(uint64_t a1)
{
  v2 = sub_10008BAD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10008959C(uint64_t a1)
{
  v2 = sub_10008BA80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000895D8(uint64_t a1)
{
  v2 = sub_10008BA80();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100089614(_BYTE *a1@<X8>)
{
  sub_10008806C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_100089664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008859C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10008968C(uint64_t a1)
{
  v2 = sub_10008BB7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000896C8(uint64_t a1)
{
  v2 = sub_10008BB7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100089708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000886B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100089734(uint64_t a1)
{
  v2 = sub_10008BC24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100089770(uint64_t a1)
{
  v2 = sub_10008BC24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000897AC(uint64_t a1)
{
  v2 = sub_10008BBD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000897E8(uint64_t a1)
{
  v2 = sub_10008BBD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10008987C()
{
  result = qword_1000D4E10;
  if (!qword_1000D4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4E10);
  }

  return result;
}

unint64_t sub_1000898D4()
{
  result = qword_1000D4E18;
  if (!qword_1000D4E18)
  {
    sub_10001CEC4(&qword_1000D4E20, qword_10009AD38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4E18);
  }

  return result;
}

BOOL sub_100089944@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100088F68(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100089978@<X0>(void *a1@<X8>)
{
  result = sub_100088FB0();
  *a1 = 0xD000000000000016;
  a1[1] = v3;
  return result;
}

uint64_t sub_100089A64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001000A2DA0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4F6B6361426E6977 && a2 == 0xED00007372656666)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100089B3C(char a1)
{
  if (a1)
  {
    return 0x4F6B6361426E6977;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_100089B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100030230();
  v41 = v26;
  sub_100012634(&qword_1000D4FD0, &qword_10009B140);
  sub_100014A8C();
  v39 = v28;
  v40 = v27;
  sub_10002FF34();
  __chkstk_darwin(v29);
  sub_10007B14C();
  v38 = sub_100012634(&qword_1000D4FD8, &qword_10009B148);
  sub_100014A8C();
  v31 = v30;
  sub_10002FF34();
  __chkstk_darwin(v32);
  sub_10008D3A8();
  sub_100012634(&qword_1000D4FE0, &qword_10009B150);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v33);
  sub_10008D50C();
  v34 = sub_10008D3F8();
  sub_10008D54C(v34, v35);
  sub_10008B930();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v41)
  {
    sub_10008B984();
    sub_10008D3B8(&type metadata for ProductRequest.IncludedResource.WinBackOffersCodingKeys);
    (*(v39 + 8))(v24, v40);
  }

  else
  {
    sub_10008B9D8();
    sub_10008D3B8(&type metadata for ProductRequest.IncludedResource.PromotionalOffersCodingKeys);
    (*(v31 + 8))(v25, v38);
  }

  v36 = sub_10008D5C0();
  v37(v36);
  sub_100030218();
}

void sub_100089DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100030230();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v64 = sub_100012634(&qword_1000D4FA0, &qword_10009B128);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v28);
  sub_10008D52C();
  v29 = sub_100012634(&qword_1000D4FA8, &qword_10009B130);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v30);
  sub_10008D3A8();
  v31 = sub_100012634(&qword_1000D4FB0, &qword_10009B138);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v32);
  sub_10007B14C();
  sub_10008D54C(v27, v27[3]);
  sub_10008B930();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    v65 = v27;
    v33 = KeyedDecodingContainer.allKeys.getter();
    sub_10004E288(v33, 0);
    if (v35 != v34 >> 1)
    {
      sub_10008D46C();
      sub_10008D5CC();
      if (v38 == v39)
      {
        __break(1u);
        return;
      }

      v40 = *(v37 + v36);
      sub_10004E284(v36 + 1);
      v42 = v41;
      v44 = v43;
      swift_unknownObjectRelease();
      if (v42 == v44 >> 1)
      {
        if (v40)
        {
          a13 = 1;
          v45 = sub_10008B984();
          sub_10008D57C(&type metadata for ProductRequest.IncludedResource.WinBackOffersCodingKeys, &a13, v46, v47, v45);
          swift_unknownObjectRelease();
          v58 = sub_10008D4D4();
          v59(v58, v64);
        }

        else
        {
          a12 = 0;
          v55 = sub_10008B9D8();
          sub_10008D57C(&type metadata for ProductRequest.IncludedResource.PromotionalOffersCodingKeys, &a12, v56, v57, v55);
          swift_unknownObjectRelease();
          v62 = sub_10008D564();
          v63(v62, v29);
        }

        v60 = sub_10008D4B0();
        v61(v60);
        sub_100012A18(v65);
        goto LABEL_10;
      }
    }

    v48 = type metadata accessor for DecodingError();
    sub_10004B1D4(v48, &protocol witness table for DecodingError);
    v50 = v49;
    sub_100012634(qword_1000D2A78, &qword_1000959C0);
    *v50 = &type metadata for ProductRequest.IncludedResource;
    v51 = KeyedDecodingContainer.codingPath.getter();
    sub_10008D404(v51);
    sub_10008D53C();
    (*(v52 + 104))(v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    v53 = sub_100039068();
    v54(v53, v31);
    v27 = v65;
  }

  sub_100012A18(v27);
LABEL_10:
  sub_100030218();
}

uint64_t sub_10008A1E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001000A2D60 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001000A2D80 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10008A428(char a1)
{
  result = 0x764F746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x79654B676F6CLL;
      break;
    case 6:
      result = 0x6D726F6674616C70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10008A520(uint64_t a1)
{
  v3 = sub_100012634(&qword_1000D4EA0, &qword_10009B098);
  sub_100014A8C();
  v5 = v4;
  sub_10002FF34();
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = sub_10008D3F8();
  sub_10008D54C(v9, v10);
  sub_10008B23C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  type metadata accessor for ClientOverride(0);
  sub_10008D3E0();
  sub_10008B444(v11);
  sub_100034204();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v12 = type metadata accessor for ProductRequest(0);
    v13 = (v1 + v12[5]);
    v14 = *v13;
    LOBYTE(v13) = *(v13 + 8);
    v18 = v14;
    v19 = v13;
    v17 = 1;
    sub_100033C84();
    sub_10008D398();
    sub_100034204();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v18) = *(v1 + v12[6]);
    v17 = 2;
    sub_10008B488();
    sub_10008D398();
    sub_100034204();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = *(v1 + v12[7]);
    v17 = 3;
    sub_100012634(&qword_1000D4E68, &qword_10009B088);
    sub_10008B4DC(&unk_1000D4EB0);
    sub_10008D398();
    sub_100034204();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = *(v1 + v12[8]);
    v17 = 4;
    sub_100012634(&qword_1000D4E80, &qword_10009B090);
    sub_10008B338(&unk_1000D4EC0);
    sub_10008D398();
    sub_100034204();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v18) = 5;
    sub_100034204();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v18) = *(v1 + v12[10]);
    v17 = 6;
    sub_10008B5E8();
    sub_10008D398();
    sub_100034204();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_10008A85C()
{
  sub_100030230();
  v3 = v2;
  v36 = v4;
  sub_100012634(&qword_1000D2000, qword_1000945D0);
  sub_10002FF34();
  __chkstk_darwin(v5);
  sub_10008D3A8();
  v37 = sub_100012634(&qword_1000D4E50, &qword_10009B080);
  sub_100014A8C();
  v7 = v6;
  sub_10002FF34();
  __chkstk_darwin(v8);
  sub_10007B14C();
  v38 = type metadata accessor for ProductRequest(0);
  __chkstk_darwin(v38);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3[3];
  v39 = v3;
  sub_10008D54C(v3, v11);
  sub_10008B23C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100012A18(v39);
  }

  else
  {
    v35[1] = v7;
    type metadata accessor for ClientOverride(0);
    LOBYTE(v40) = 0;
    sub_10008D3E0();
    sub_10008B444(v12);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000164C0(v1, v10);
    v13 = sub_100033B34();
    sub_10008D448(&type metadata for ProductRequest.IdentifierKind, v14, v15, v16, v13);
    v17 = v41;
    v18 = v38;
    v19 = &v10[*(v38 + 20)];
    *v19 = v40;
    v19[8] = v17;
    v20 = sub_10008B290();
    sub_10008D448(&type metadata for ProductRequest.RequestKind, v21, v22, v23, v20);
    v10[v18[6]] = v40;
    sub_100012634(&qword_1000D4E68, &qword_10009B088);
    v24 = sub_10008B4DC(&unk_1000D4E70);
    sub_10008D4E0(v24);
    *&v10[v18[7]] = v40;
    sub_100012634(&qword_1000D4E80, &qword_10009B090);
    v25 = sub_10008B338(&unk_1000D4E88);
    sub_10008D4E0(v25);
    *&v10[v18[8]] = v40;
    LOBYTE(v40) = 5;
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = &v10[v18[9]];
    *v27 = v26;
    v27[1] = v28;
    v29 = sub_10008B3F0();
    sub_10008D448(&type metadata for ProductRequest.Platform, v30, v31, v32, v29);
    v33 = sub_10008D388();
    v34(v33);
    v10[v18[10]] = v40;
    sub_100057F28(v10, v36);
    sub_100012A18(v39);
    sub_100039E04(v10);
  }

  sub_100030218();
}

uint64_t sub_10008AD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100089A64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10008ADBC(uint64_t a1)
{
  v2 = sub_10008B930();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008ADF8(uint64_t a1)
{
  v2 = sub_10008B930();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10008AE34(uint64_t a1)
{
  v2 = sub_10008B9D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008AE70(uint64_t a1)
{
  v2 = sub_10008B9D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10008AEAC(uint64_t a1)
{
  v2 = sub_10008B984();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008AEE8(uint64_t a1)
{
  v2 = sub_10008B984();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10008AF84()
{
  result = qword_1000D4E28;
  if (!qword_1000D4E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4E28);
  }

  return result;
}

uint64_t sub_10008AFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008A1E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10008B008(uint64_t a1)
{
  v2 = sub_10008B23C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008B044(uint64_t a1)
{
  v2 = sub_10008B23C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10008B0B0(uint64_t a1)
{
  *(a1 + 16) = sub_10008B444(&unk_1000D4E30);
  result = sub_10008B444(&qword_1000D35E8);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10008B134(uint64_t a1)
{
  result = sub_10008B444(&unk_1000D4E38);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10008B190()
{
  result = qword_1000D4E40;
  if (!qword_1000D4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4E40);
  }

  return result;
}

unint64_t sub_10008B1E8()
{
  result = qword_1000D4E48;
  if (!qword_1000D4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4E48);
  }

  return result;
}

unint64_t sub_10008B23C()
{
  result = qword_1000D4E58;
  if (!qword_1000D4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4E58);
  }

  return result;
}

unint64_t sub_10008B290()
{
  result = qword_1000D4E60;
  if (!qword_1000D4E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4E60);
  }

  return result;
}

unint64_t sub_10008B2E4()
{
  result = qword_1000D4E78;
  if (!qword_1000D4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4E78);
  }

  return result;
}

unint64_t sub_10008B338(uint64_t a1)
{
  result = sub_10008D5D8(a1);
  if (!result)
  {
    v4 = v3;
    sub_10001CEC4(&qword_1000D4E80, &qword_10009B090);
    v4();
    result = sub_10008D604();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10008B39C()
{
  result = qword_1000D4E90;
  if (!qword_1000D4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4E90);
  }

  return result;
}

unint64_t sub_10008B3F0()
{
  result = qword_1000D4E98;
  if (!qword_1000D4E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4E98);
  }

  return result;
}

unint64_t sub_10008B444(uint64_t a1)
{
  result = sub_10008D5D8(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10008B488()
{
  result = qword_1000D4EA8;
  if (!qword_1000D4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4EA8);
  }

  return result;
}

unint64_t sub_10008B4DC(uint64_t a1)
{
  result = sub_10008D5D8(a1);
  if (!result)
  {
    v4 = v3;
    sub_10001CEC4(&qword_1000D4E68, &qword_10009B088);
    v4();
    result = sub_10008D604();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10008B540()
{
  result = qword_1000D4EB8;
  if (!qword_1000D4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4EB8);
  }

  return result;
}

unint64_t sub_10008B594()
{
  result = qword_1000D4EC8;
  if (!qword_1000D4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4EC8);
  }

  return result;
}

unint64_t sub_10008B5E8()
{
  result = qword_1000D4ED0;
  if (!qword_1000D4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4ED0);
  }

  return result;
}

unint64_t sub_10008B63C()
{
  result = qword_1000D4F18;
  if (!qword_1000D4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4F18);
  }

  return result;
}

unint64_t sub_10008B690()
{
  result = qword_1000D4F20;
  if (!qword_1000D4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4F20);
  }

  return result;
}

unint64_t sub_10008B6E4()
{
  result = qword_1000D4F28;
  if (!qword_1000D4F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4F28);
  }

  return result;
}

unint64_t sub_10008B738()
{
  result = qword_1000D4F30;
  if (!qword_1000D4F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4F30);
  }

  return result;
}

unint64_t sub_10008B78C()
{
  result = qword_1000D4F38;
  if (!qword_1000D4F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4F38);
  }

  return result;
}

unint64_t sub_10008B7E0()
{
  result = qword_1000D4F40;
  if (!qword_1000D4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4F40);
  }

  return result;
}

unint64_t sub_10008B834()
{
  result = qword_1000D4F48;
  if (!qword_1000D4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4F48);
  }

  return result;
}

unint64_t sub_10008B888()
{
  result = qword_1000D4F50;
  if (!qword_1000D4F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4F50);
  }

  return result;
}

unint64_t sub_10008B8DC()
{
  result = qword_1000D4F98;
  if (!qword_1000D4F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4F98);
  }

  return result;
}

unint64_t sub_10008B930()
{
  result = qword_1000D4FB8;
  if (!qword_1000D4FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4FB8);
  }

  return result;
}

unint64_t sub_10008B984()
{
  result = qword_1000D4FC0;
  if (!qword_1000D4FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4FC0);
  }

  return result;
}

unint64_t sub_10008B9D8()
{
  result = qword_1000D4FC8;
  if (!qword_1000D4FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4FC8);
  }

  return result;
}

unint64_t sub_10008BA2C()
{
  result = qword_1000D5008;
  if (!qword_1000D5008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5008);
  }

  return result;
}

unint64_t sub_10008BA80()
{
  result = qword_1000D5010;
  if (!qword_1000D5010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5010);
  }

  return result;
}

unint64_t sub_10008BAD4()
{
  result = qword_1000D5018;
  if (!qword_1000D5018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5018);
  }

  return result;
}

unint64_t sub_10008BB28()
{
  result = qword_1000D5020;
  if (!qword_1000D5020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5020);
  }

  return result;
}

unint64_t sub_10008BB7C()
{
  result = qword_1000D5060;
  if (!qword_1000D5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5060);
  }

  return result;
}

unint64_t sub_10008BBD0()
{
  result = qword_1000D5068;
  if (!qword_1000D5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5068);
  }

  return result;
}

unint64_t sub_10008BC24()
{
  result = qword_1000D5070;
  if (!qword_1000D5070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5070);
  }

  return result;
}

unint64_t sub_10008BC78(uint64_t a1)
{
  result = sub_10008D5D8(a1);
  if (!result)
  {
    sub_10001CEC4(&qword_1000D1D00, &qword_10009B1B0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_10008BD18(unsigned __int8 *a1, int a2)
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

  return sub_100014934(a1);
}

_BYTE *sub_10008BD64(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10008BE00);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10008BE3C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10008D5B8(-1);
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
      return sub_10008D5B8((*a1 | (v4 << 8)) - 3);
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

      return sub_10008D5B8((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10008D5B8((*a1 | (v4 << 8)) - 3);
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

  return sub_10008D5B8(v8);
}

_BYTE *sub_10008BEC4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = sub_10008D5B0(result, v6);
        break;
      case 2:
        result = sub_10008D5A0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10008BF80);
      case 4:
        result = sub_10008D5A8(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_10008D4C0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10008BFE8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10008D5B8(-1);
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
      return sub_10008D5B8((*a1 | (v4 << 8)) - 2);
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

      return sub_10008D5B8((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10008D5B8((*a1 | (v4 << 8)) - 2);
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

  return sub_10008D5B8(v8);
}

_BYTE *sub_10008C06C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = sub_10008D5B0(result, v6);
        break;
      case 2:
        result = sub_10008D5A0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10008C128);
      case 4:
        result = sub_10008D5A8(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_10008D4C0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10008C208(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10008D5B8(-1);
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
      return sub_10008D5B8((*a1 | (v4 << 8)) - 7);
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

      return sub_10008D5B8((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10008D5B8((*a1 | (v4 << 8)) - 7);
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

  return sub_10008D5B8(v8);
}

_BYTE *sub_10008C28C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result = sub_10008D5B0(result, v6);
        break;
      case 2:
        result = sub_10008D5A0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10008C348);
      case 4:
        result = sub_10008D5A8(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_10008D4C0(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10008C384()
{
  result = qword_1000D5090;
  if (!qword_1000D5090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5090);
  }

  return result;
}

unint64_t sub_10008C3DC()
{
  result = qword_1000D5098;
  if (!qword_1000D5098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5098);
  }

  return result;
}

unint64_t sub_10008C434()
{
  result = qword_1000D50A0;
  if (!qword_1000D50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D50A0);
  }

  return result;
}

unint64_t sub_10008C48C()
{
  result = qword_1000D50A8;
  if (!qword_1000D50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D50A8);
  }

  return result;
}

unint64_t sub_10008C4E4()
{
  result = qword_1000D50B0;
  if (!qword_1000D50B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D50B0);
  }

  return result;
}

unint64_t sub_10008C53C()
{
  result = qword_1000D50B8;
  if (!qword_1000D50B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D50B8);
  }

  return result;
}

unint64_t sub_10008C594()
{
  result = qword_1000D50C0;
  if (!qword_1000D50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D50C0);
  }

  return result;
}

unint64_t sub_10008C5EC()
{
  result = qword_1000D50C8;
  if (!qword_1000D50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D50C8);
  }

  return result;
}

unint64_t sub_10008C644()
{
  result = qword_1000D50D0;
  if (!qword_1000D50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D50D0);
  }

  return result;
}

unint64_t sub_10008C69C()
{
  result = qword_1000D50D8;
  if (!qword_1000D50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D50D8);
  }

  return result;
}

unint64_t sub_10008C6F4()
{
  result = qword_1000D50E0;
  if (!qword_1000D50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D50E0);
  }

  return result;
}

unint64_t sub_10008C74C()
{
  result = qword_1000D50E8;
  if (!qword_1000D50E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D50E8);
  }

  return result;
}

unint64_t sub_10008C7A4()
{
  result = qword_1000D50F0;
  if (!qword_1000D50F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D50F0);
  }

  return result;
}

unint64_t sub_10008C7FC()
{
  result = qword_1000D50F8;
  if (!qword_1000D50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D50F8);
  }

  return result;
}

unint64_t sub_10008C854()
{
  result = qword_1000D5100;
  if (!qword_1000D5100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5100);
  }

  return result;
}

unint64_t sub_10008C8AC()
{
  result = qword_1000D5108;
  if (!qword_1000D5108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5108);
  }

  return result;
}

unint64_t sub_10008C904()
{
  result = qword_1000D5110;
  if (!qword_1000D5110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5110);
  }

  return result;
}

unint64_t sub_10008C95C()
{
  result = qword_1000D5118;
  if (!qword_1000D5118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5118);
  }

  return result;
}

unint64_t sub_10008C9B4()
{
  result = qword_1000D5120;
  if (!qword_1000D5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5120);
  }

  return result;
}

unint64_t sub_10008CA0C()
{
  result = qword_1000D5128;
  if (!qword_1000D5128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5128);
  }

  return result;
}

unint64_t sub_10008CA64()
{
  result = qword_1000D5130;
  if (!qword_1000D5130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5130);
  }

  return result;
}

unint64_t sub_10008CABC()
{
  result = qword_1000D5138;
  if (!qword_1000D5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5138);
  }

  return result;
}

unint64_t sub_10008CB14()
{
  result = qword_1000D5140;
  if (!qword_1000D5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5140);
  }

  return result;
}

unint64_t sub_10008CB6C()
{
  result = qword_1000D5148;
  if (!qword_1000D5148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5148);
  }

  return result;
}

unint64_t sub_10008CBC4()
{
  result = qword_1000D5150;
  if (!qword_1000D5150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5150);
  }

  return result;
}

unint64_t sub_10008CC1C()
{
  result = qword_1000D5158;
  if (!qword_1000D5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5158);
  }

  return result;
}

unint64_t sub_10008CC74()
{
  result = qword_1000D5160;
  if (!qword_1000D5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5160);
  }

  return result;
}

unint64_t sub_10008CCCC()
{
  result = qword_1000D5168;
  if (!qword_1000D5168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5168);
  }

  return result;
}

unint64_t sub_10008CD24()
{
  result = qword_1000D5170;
  if (!qword_1000D5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5170);
  }

  return result;
}

unint64_t sub_10008CD7C()
{
  result = qword_1000D5178;
  if (!qword_1000D5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5178);
  }

  return result;
}

unint64_t sub_10008CDD4()
{
  result = qword_1000D5180;
  if (!qword_1000D5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5180);
  }

  return result;
}

unint64_t sub_10008CE2C()
{
  result = qword_1000D5188;
  if (!qword_1000D5188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5188);
  }

  return result;
}

unint64_t sub_10008CE84()
{
  result = qword_1000D5190;
  if (!qword_1000D5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5190);
  }

  return result;
}

unint64_t sub_10008CEDC()
{
  result = qword_1000D5198;
  if (!qword_1000D5198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D5198);
  }

  return result;
}

unint64_t sub_10008CF34()
{
  result = qword_1000D51A0;
  if (!qword_1000D51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D51A0);
  }

  return result;
}

unint64_t sub_10008CF8C()
{
  result = qword_1000D51A8;
  if (!qword_1000D51A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D51A8);
  }

  return result;
}

unint64_t sub_10008CFE4()
{
  result = qword_1000D51B0;
  if (!qword_1000D51B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D51B0);
  }

  return result;
}

unint64_t sub_10008D03C()
{
  result = qword_1000D51B8;
  if (!qword_1000D51B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D51B8);
  }

  return result;
}

unint64_t sub_10008D094()
{
  result = qword_1000D51C0;
  if (!qword_1000D51C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D51C0);
  }

  return result;
}

unint64_t sub_10008D0EC()
{
  result = qword_1000D51C8;
  if (!qword_1000D51C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D51C8);
  }

  return result;
}

unint64_t sub_10008D144()
{
  result = qword_1000D51D0;
  if (!qword_1000D51D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D51D0);
  }

  return result;
}

unint64_t sub_10008D19C()
{
  result = qword_1000D51D8;
  if (!qword_1000D51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D51D8);
  }

  return result;
}

unint64_t sub_10008D1F4()
{
  result = qword_1000D51E0;
  if (!qword_1000D51E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D51E0);
  }

  return result;
}

unint64_t sub_10008D24C()
{
  result = qword_1000D51E8;
  if (!qword_1000D51E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D51E8);
  }

  return result;
}

unint64_t sub_10008D2A4()
{
  result = qword_1000D51F0;
  if (!qword_1000D51F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D51F0);
  }

  return result;
}

uint64_t sub_10008D330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_10008D368(uint64_t a1)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_10008D3B8(uint64_t a1)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_10008D404(uint64_t a1)
{

  return DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
}

unint64_t sub_10008D424(uint64_t a1)
{

  return sub_10008BC78(a1);
}

void *sub_10008D448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

unint64_t sub_10008D48C(uint64_t a1)
{

  return sub_10008BC78(a1);
}

void *sub_10008D4E0(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_10008D57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_10008D5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_10008D604()
{

  return swift_getWitnessTable();
}

uint64_t amfi_interface_cdhash_in_trustcache(__int128 *a1, uint64_t a2, void *a3)
{
  result = 22;
  if (a1 && a2 == 20 && a3)
  {
    *a3 = 0;
    result = __sandbox_ms();
    if (result)
    {
      return *__error();
    }

    else
    {
      *a3 = 0;
    }
  }

  return result;
}

uint64_t amfi_interface_query_bootarg_state(void *a1)
{
  if (!a1)
  {
    return 22;
  }

  *a1 = 0;
  result = __sandbox_ms();
  if (result)
  {
    return *__error();
  }

  *a1 = 0;
  return result;
}

uint64_t amfi_interface_get_local_signing_private_key(_BYTE *a1)
{
  v4 = 0;
  memset(__s2, 0, sizeof(__s2));
  if (!a1)
  {
    return 22;
  }

  a1[144] = 0;
  *(a1 + 7) = 0uLL;
  *(a1 + 8) = 0uLL;
  *(a1 + 5) = 0uLL;
  *(a1 + 6) = 0uLL;
  *(a1 + 3) = 0uLL;
  *(a1 + 4) = 0uLL;
  *(a1 + 1) = 0uLL;
  *(a1 + 2) = 0uLL;
  *a1 = 0uLL;
  result = __sandbox_ms();
  if (!result)
  {
    return 2 * (memcmp(a1, __s2, 0x91uLL) == 0);
  }

  return result;
}

uint64_t amfi_interface_get_local_signing_public_key(_BYTE *a1)
{
  v4 = 0;
  memset(__s2, 0, sizeof(__s2));
  if (!a1)
  {
    return 22;
  }

  a1[96] = 0;
  *(a1 + 4) = 0uLL;
  *(a1 + 5) = 0uLL;
  *(a1 + 2) = 0uLL;
  *(a1 + 3) = 0uLL;
  *a1 = 0uLL;
  *(a1 + 1) = 0uLL;
  result = __sandbox_ms();
  if (!result)
  {
    return 2 * (memcmp(a1, __s2, 0x61uLL) == 0);
  }

  return result;
}

uint64_t amfi_interface_set_local_signing_public_key(_OWORD *a1)
{
  v3 = 0;
  memset(__s2, 0, sizeof(__s2));
  if (!a1 || !memcmp(a1, __s2, 0x61uLL))
  {
    return 22;
  }

  else
  {
    return __sandbox_ms();
  }
}

BOOL amfi_developer_mode_status()
{
  v2 = 0;
  v3 = 8;
  return !sysctlbyname("security.mac.amfi.developer_mode_status", &v2, &v3, 0, 0) && v2 == 1;
}

BOOL amfi_developer_mode_resolved()
{
  v2 = 0;
  v3 = 8;
  return !sysctlbyname("security.mac.amfi.developer_mode_resolved", &v2, &v3, 0, 0) && v2 == 1;
}

uint64_t amfi_launch_constraint_set_spawnattr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && (a3 - 1) <= 0x3FFE)
  {
    return _posix_spawnattr_setmacpolicyinfo_np();
  }

  else
  {
    return 22;
  }
}

uint64_t amfi_launch_constraint_matches_process(_OWORD *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a2 && a3)
  {
    if (a3 <= 0x4000)
    {
      bzero(&v7, 0x400uLL);
      v6 = 5;
      if (!v4)
      {
        v4 = &v6;
      }

      if (!__sandbox_ms() && !*v4)
      {
        return 1;
      }
    }

    else if (a4)
    {
      result = 0;
      *a4 = 5;
      strcpy((a4 + 4), "Constraint too large");
      return result;
    }
  }

  else if (a4)
  {
    result = 0;
    *a4 = 5;
    strcpy((a4 + 4), "No Constraint provided");
    return result;
  }

  return 0;
}

void sub_10008DCD0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 logKey];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%{public}@] Requested to complete ask to buy, but this is not supported in this process.", &v5, 0xCu);
}

void sub_10008DD78()
{
  sub_100005C68();
  sub_100005C80(v1, 5.8382e-34, v2, v3);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to delete all transactions: %{public}@", v4, 0x16u);
}

void sub_10008DDC8(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 logKey];
  v8 = *a3;
  v9 = [*(a1 + 32) transactionID];
  v10 = 138543874;
  v11 = v7;
  v12 = 2048;
  v13 = v8;
  v14 = 2050;
  v15 = v9;
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to perform action %ld on %{public}ld", &v10, 0x20u);
}

void sub_10008DEE8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to generate SKAN Postback signature", buf, 0xCu);
}

void sub_10008DF40()
{
  sub_100005C68();
  sub_100005C80(v1, 5.8382e-34, v2, v3);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to validate signature %{public}@", v4, 0x16u);
}

void sub_10008DF90(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Requested receipt refresh, but this is not supported in this process.", &v2, 0xCu);
}

void sub_10008E01C(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}@ Not registering for unfinished transaction notifications because no bundle ID was available", &v1, 0xCu);
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.init(cString:)()
{
  return String.init(cString:)();
}

{
  return String.init(cString:)();
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}