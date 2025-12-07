unint64_t sub_10014CD30()
{
  result = qword_1003479D0;
  if (!qword_1003479D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003479D0);
  }

  return result;
}

uint64_t sub_10014CD94(void *a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v9 = sub_100035D04(&qword_100347A50, &qword_10027F5B8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - v11;
  sub_10000EBC0(a1, a1[3]);
  sub_10014E218();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    *&v14[2] = a4;
    *&v14[3] = a5;
    v15 = 1;
    sub_100035D04(&qword_100347A40, &qword_10027F5B0);
    sub_10014E26C(&qword_100347A58, &protocol witness table for Float, &protocol conformance descriptor for <> ClosedRange<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

Swift::Int sub_10014CF64()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10014CFEC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10014D060(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10014D0E4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100301540, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10014D144(uint64_t *a1@<X8>)
{
  v2 = 0x6F69746163756465;
  if (*v1)
  {
    v2 = 0x746C7561666564;
  }

  v3 = 0xE90000000000006ELL;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10014D248(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746C7561666564;
  }

  else
  {
    v3 = 0x6F69746163756465;
  }

  if (v2)
  {
    v4 = 0xE90000000000006ELL;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x746C7561666564;
  }

  else
  {
    v5 = 0x6F69746163756465;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE90000000000006ELL;
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

uint64_t sub_10014D2F4()
{
  if (*v0)
  {
    return 0x65676E6172;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_10014D320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10014D3F0(uint64_t a1)
{
  v2 = sub_10014E218();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014D42C(uint64_t a1)
{
  v2 = sub_10014E218();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10014D468(uint64_t a1@<X8>, void *a2@<X0>)
{
  v6 = sub_10014DFE4(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 20) = v7;
  }
}

uint64_t sub_10014D4B8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10014D4C4(void *a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_1003479F0, &qword_10027F590);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10000EBC0(a1, a1[3]);
  sub_10014DEAC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_100035D04(&qword_100347A00, &qword_10027F598);
  sub_10014E494(&qword_100347A08, sub_10014DF00, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10014D674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001002A2360 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10014D708(uint64_t a1)
{
  v2 = sub_10014DEAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014D744(uint64_t a1)
{
  v2 = sub_10014DEAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10014D780@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10014E2D8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10014D7C8()
{
  result = sub_10014D7E8();
  qword_10038B2C8 = result;
  return result;
}

uint64_t sub_10014D7E8()
{
  result = sub_10024E27C(_swiftEmptyArrayStorage);
  v1 = 0;
LABEL_3:
  v3 = *(&off_1003015B8 + v1 + 32);
  v61 = result;
  if (*(&off_1003015B8 + v1 + 32))
  {
    v60 = 0xE500000000000000;
    if (v3 == 1)
    {
      v4 = 0x656772616CLL;
    }

    else
    {
      v4 = 0x726568746FLL;
    }
  }

  else
  {
    v60 = 0xE700000000000000;
    v4 = 0x746C7561666564;
  }

  v59 = v4;
  v62 = v1 + 1;
  v5 = sub_10024E380(_swiftEmptyArrayStorage);
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v10 = v6;
    if (*(&off_100301590 + v7 + 32))
    {
      if (v3)
      {
        if (v3 == 1)
        {
          if (qword_100338F18 != -1)
          {
            swift_once();
          }

          v11 = qword_10038B0B8;
          v12 = *(qword_10038B0B8 + 1632);
          sub_10005FA50();
          v14 = v13;

          v15 = *(v11 + 1704);
          sub_10005FA50();
          v17 = v16;

          if (v14 > v17)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (qword_100338F18 != -1)
          {
            swift_once();
          }

          v33 = qword_10038B0B8;
          v34 = *(qword_10038B0B8 + 1640);
          sub_10005FA50();
          v14 = v35;

          v36 = *(v33 + 1712);
          sub_10005FA50();
          v17 = v37;

          if (v14 > v17)
          {
            goto LABEL_56;
          }
        }
      }

      else
      {
        if (qword_100338F18 != -1)
        {
          swift_once();
        }

        v23 = qword_10038B0B8;
        v24 = *(qword_10038B0B8 + 1624);
        sub_10005FA50();
        v14 = v25;

        v26 = *(v23 + 1696);
        sub_10005FA50();
        v17 = v27;

        if (v14 > v17)
        {
          goto LABEL_53;
        }
      }

      v38 = 0xE700000000000000;
      v39 = 0x746C7561666564;
    }

    else
    {
      if (v3)
      {
        if (v3 == 1)
        {
          if (qword_100338F18 != -1)
          {
            swift_once();
          }

          v18 = qword_10038B0B8;
          v19 = *(qword_10038B0B8 + 1632);
          sub_10005FA50();
          v14 = v20;

          v21 = *(v18 + 1616);
          sub_10005FA50();
          v17 = v22;

          if (v14 > v17)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (qword_100338F18 != -1)
          {
            swift_once();
          }

          v40 = qword_10038B0B8;
          v41 = *(qword_10038B0B8 + 1640);
          sub_10005FA50();
          v14 = v42;

          v43 = *(v40 + 1616);
          sub_10005FA50();
          v17 = v44;

          if (v14 > v17)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        if (qword_100338F18 != -1)
        {
          swift_once();
        }

        v28 = qword_10038B0B8;
        v29 = *(qword_10038B0B8 + 1624);
        sub_10005FA50();
        v14 = v30;

        v31 = *(v28 + 1616);
        sub_10005FA50();
        v17 = v32;

        if (v14 > v17)
        {
          goto LABEL_57;
        }
      }

      v39 = 0x6F69746163756465;
      v38 = 0xE90000000000006ELL;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = sub_100004B58(v39, v38);
    v48 = v5[2];
    v49 = (v47 & 1) == 0;
    v50 = __OFADD__(v48, v49);
    v51 = v48 + v49;
    if (v50)
    {
      break;
    }

    v52 = v47;
    if (v5[3] < v51)
    {
      sub_100088250(v51, isUniquelyReferenced_nonNull_native);
      v46 = sub_100004B58(v39, v38);
      if ((v52 & 1) != (v53 & 1))
      {
        goto LABEL_59;
      }

LABEL_45:
      if ((v52 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_9;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_45;
    }

    v58 = v46;
    sub_10008AC54();
    v46 = v58;
    if ((v52 & 1) == 0)
    {
LABEL_46:
      v5[(v46 >> 6) + 8] |= 1 << v46;
      v54 = (v5[6] + 16 * v46);
      *v54 = v39;
      v54[1] = v38;
      v55 = v5[7] + 24 * v46;
      *v55 = v39;
      *(v55 + 8) = v38;
      *(v55 + 16) = v14;
      *(v55 + 20) = v17;
      v56 = v5[2];
      v50 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v50)
      {
        goto LABEL_52;
      }

      v5[2] = v57;
      goto LABEL_10;
    }

LABEL_9:
    v8 = v46;

    v9 = v5[7] + 24 * v8;
    *v9 = v39;
    *(v9 + 8) = v38;
    *(v9 + 16) = v14;
    *(v9 + 20) = v17;

LABEL_10:
    v6 = 1;
    v7 = &_mh_execute_header.magic + 1;
    if (v10)
    {
      v2 = swift_isUniquelyReferenced_nonNull_native();
      sub_10004D794(v5, v59, v60, v2);

      v1 = v62;
      result = v61;
      if (v62 == 3)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10014DD34(uint64_t a1, int a2)
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

uint64_t sub_10014DD7C(uint64_t result, int a2, int a3)
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

unint64_t sub_10014DDF0()
{
  result = qword_1003479D8;
  if (!qword_1003479D8)
  {
    sub_100035D4C(&qword_1003479E0, qword_10027F3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003479D8);
  }

  return result;
}

unint64_t sub_10014DE58()
{
  result = qword_1003479E8;
  if (!qword_1003479E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003479E8);
  }

  return result;
}

unint64_t sub_10014DEAC()
{
  result = qword_1003479F8;
  if (!qword_1003479F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003479F8);
  }

  return result;
}

unint64_t sub_10014DF3C()
{
  result = qword_100347A20;
  if (!qword_100347A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347A20);
  }

  return result;
}

unint64_t sub_10014DF90()
{
  result = qword_100347A28;
  if (!qword_100347A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347A28);
  }

  return result;
}

float sub_10014DFE4(void *a1)
{
  v4 = sub_100035D04(&qword_100347A30, &qword_10027F5A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_10000EBC0(a1, a1[3]);
  sub_10014E218();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_100035D04(&qword_100347A40, &qword_10027F5B0);
    v9[3] = 1;
    sub_10014E26C(&qword_100347A48, &protocol witness table for Float, &protocol conformance descriptor for <> ClosedRange<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    v2 = v10;
  }

  sub_10000903C(a1);
  return v2;
}

unint64_t sub_10014E218()
{
  result = qword_100347A38;
  if (!qword_100347A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347A38);
  }

  return result;
}

uint64_t sub_10014E26C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&qword_100347A40, &qword_10027F5B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10014E2D8(void *a1)
{
  v3 = sub_100035D04(&qword_100347A60, &qword_10027F5C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10000EBC0(a1, a1[3]);
  sub_10014DEAC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000903C(a1);
  }

  else
  {
    sub_100035D04(&qword_100347A00, &qword_10027F598);
    sub_10014E494(&qword_100347A68, sub_10014E518, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000903C(a1);
  }

  return v7;
}

uint64_t sub_10014E494(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&qword_100347A00, &qword_10027F598);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10014E554(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&qword_100347A18, &qword_10027F5A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10014E5D8()
{
  result = qword_100347A78;
  if (!qword_100347A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347A78);
  }

  return result;
}

unint64_t sub_10014E650()
{
  result = qword_100347A80;
  if (!qword_100347A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347A80);
  }

  return result;
}

unint64_t sub_10014E6A8()
{
  result = qword_100347A88;
  if (!qword_100347A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347A88);
  }

  return result;
}

unint64_t sub_10014E700()
{
  result = qword_100347A90;
  if (!qword_100347A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347A90);
  }

  return result;
}

unint64_t sub_10014E758()
{
  result = qword_100347A98;
  if (!qword_100347A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347A98);
  }

  return result;
}

unint64_t sub_10014E7B0()
{
  result = qword_100347AA0;
  if (!qword_100347AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347AA0);
  }

  return result;
}

unint64_t sub_10014E808()
{
  result = qword_100347AA8;
  if (!qword_100347AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347AA8);
  }

  return result;
}

uint64_t sub_10014E85C(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10014E91C()
{
  v1 = swift_isaMask & *v0;
  v2 = qword_100347AC8;
  if (*(v0 + qword_100347AC8))
  {
    v3 = *(v0 + qword_100347AC8);
  }

  else
  {
    v4 = v0;
    v5 = *((swift_isaMask & *v0) + 0x60);
    v7[0] = *((swift_isaMask & *v0) + 0x50);
    v7[1] = v5;
    v7[2] = *(v1 + 112);
    type metadata accessor for XPCLink(255, v7);
    type metadata accessor for PassthroughSubject();
    v3 = PassthroughSubject.__allocating_init()();
    *(v4 + v2) = v3;
  }

  return v3;
}

id sub_10014E9FC()
{
  v1 = v0;
  v2 = (swift_isaMask & *v0);
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1 + qword_100347AC0, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Deinit", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  v10 = v2[6];
  v13[0] = v2[5];
  v13[1] = v10;
  v13[2] = v2[7];
  v11 = type metadata accessor for XPCLinkServer(0, v13);
  v14.receiver = v1;
  v14.super_class = v11;
  return objc_msgSendSuper2(&v14, "dealloc");
}

uint64_t sub_10014EBF0(uint64_t a1)
{

  v2 = qword_100347AC0;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
}

uint64_t sub_10014ECB0(void *a1, void *a2)
{
  v3 = v2;
  v5 = (swift_isaMask & *v3);
  v6 = a1;
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v30[0] = v12;
    *v10 = 136315650;
    *(v10 + 4) = sub_100017494(0xD000000000000026, 0x80000001002A02D0, v30);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v6;
    *(v10 + 22) = 2112;
    *(v10 + 24) = v7;
    *v11 = v6;
    v11[1] = v7;
    v13 = v6;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: listener=%@, newConnection=%@", v10, 0x20u);
    sub_100035D04(&qword_100339940, &unk_100272C50);
    swift_arrayDestroy();

    sub_10000903C(v12);
  }

  sub_100103CBC();
  if (static NSObject.== infix(_:_:)())
  {
    if (sub_1000D0404(1u, v7))
    {
      sub_10014E91C();
      v15 = v5[6];
      v30[0] = v5[5];
      v30[1] = v15;
      v30[2] = v5[7];
      type metadata accessor for XPCLink(0, v30);
      v16 = v3 + qword_100347AB8;
      v17 = *(v3 + qword_100347AB8);
      v18 = *(v16 + 1);
      v19 = v7;

      *&v30[0] = sub_1000A1C64(v7, v17, v18);
      PassthroughSubject.send(_:)();

      return 1;
    }

    v22 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v30[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_100017494(0xD00000000000001ALL, 0x8000000100297290, v30);
      _os_log_impl(&_mh_execute_header, v22, v27, "### Missing entitlement '%s'", v28, 0xCu);
      sub_10000903C(v29);

      goto LABEL_10;
    }
  }

  else
  {
    v21 = v6;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "### New connection from unrecognized listener %@", v24, 0xCu);
      sub_1000030B0(v25);

LABEL_10:
    }
  }

  return 0;
}

uint64_t sub_10014F0B4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_10014ECB0(v6, v7);

  return v9 & 1;
}

id sub_10014F118(void *a1)
{
  v1 = a1;
  sub_10014F180();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

uint64_t sub_10014F180()
{
  ObjectType = swift_getObjectType();
  v2 = (swift_isaMask & *v0);
  v3 = v2[6];
  v8 = v2[5];
  v9 = v3;
  v10 = v2[7];
  *(&v9 + 1) = type metadata accessor for XPCLinkServer(0, &v8);
  *&v8 = v0;
  v4 = v0;
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1000CCFC4(&v8, 2, ObjectType, WitnessTable);
  sub_10000903C(&v8);
  return v6;
}

uint64_t sub_10014F30C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_10014F3D4(uint64_t a1, char a2)
{
  if (swift_weakLoadStrong())
  {
    sub_100051F6C(*(v2 + 24), a2, a1);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "### Failed to fire xpc event: nil publisher", v6, 2u);
    }
  }
}

uint64_t sub_10014F4DC()
{

  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC17proximitycontrold13XPCSubscriber_log;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for XPCSubscriber(uint64_t a1)
{
  result = qword_100347B88;
  if (!qword_100347B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014F5DC(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10014F690()
{
  _StringGuts.grow(_:)(16);

  strcpy(v5, "XPCSubscriber-");
  HIBYTE(v5[1]) = -18;
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  result = v5[0];
  if (*(v0 + 16))
  {
    v3._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 32;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);

    return v5[0];
  }

  return result;
}

uint64_t sub_10014F7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  *(v3 + 16) = a2;
  swift_weakAssign();
  *(v3 + 24) = a1;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v13, "XPCSubscriber-");
  HIBYTE(v13[1]) = -18;
  v12[1] = a1;
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + OBJC_IVAR____TtC17proximitycontrold13XPCSubscriber_log, v9, v6);
  return v3;
}

uint64_t sub_10014F968(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10014F9B0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10014FA0C(void *a1)
{
  v3 = sub_100035D04(&qword_100347C68, &qword_10027FBD0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000EBC0(a1, a1[3]);
  sub_100150608();
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
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10014FBCC()
{
  v1 = 0x646F43726F727265;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x6D6F44726F727265;
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

uint64_t sub_10014FC58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001501E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10014FC80(uint64_t a1)
{
  v2 = sub_100150608();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014FCBC(uint64_t a1)
{
  v2 = sub_100150608();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10014FCF8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100150364(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_10014FD70(uint64_t a1)
{
  v2 = sub_10015065C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10014FDAC(uint64_t a1)
{
  v2 = sub_10015065C();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10014FDE8(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = a2[3];
  v7 = a2[4];
  v9 = a2[5];
  v8 = a2[6];
  if (a1[1] == a2[1] && a1[2] == a2[2] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v2 == v6 && v4 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    if (v5)
    {
      if (v8 && (v3 == v9 && v5 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

void sub_10014FEEC(uint64_t a1@<X0>, void *a2@<X8>)
{
  *&v25[0] = a1;
  swift_errorRetain();
  sub_100035D04(&unk_100346020, &qword_100271A00);
  if (swift_dynamicCast())
  {

    v4 = v28[0];
    v5 = v28[1];
    v6 = v28[2];
    v7 = v29;
    v8 = v30;
    v9 = v31;
    v10 = v32;
  }

  else
  {
    v27 = a1;
    swift_errorRetain();
    sub_100035D04(&qword_100347C48, &qword_10027FBB8);
    if (swift_dynamicCast())
    {
      sub_10000E754(v25, v28);
      v11 = _convertErrorToNSError(_:)();
      v24 = [v11 code];
      v12 = [v11 domain];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v13;

      sub_10000EBC0(v28, v29);
      v7 = Error.localizedDescription.getter();
      v8 = v14;
      sub_10000EBC0(v28, v29);
      v9 = dispatch thunk of LocalizedError.failureReason.getter();
      v10 = v15;

      sub_10000903C(v28);
    }

    else
    {
      v26 = 0;
      memset(v25, 0, sizeof(v25));
      sub_100150180(v25);
      v16 = _convertErrorToNSError(_:)();
      v24 = [v16 code];
      v17 = [v16 domain];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v18;

      v19 = [v16 localizedDescription];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v20;

      v21 = [v16 localizedFailureReason];
      if (v21)
      {
        v22 = v21;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v23;
      }

      else
      {

        v10 = 0;
        v9 = 0;
      }
    }

    v4 = v24;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
}

uint64_t sub_100150180(uint64_t a1)
{
  v2 = sub_100035D04(&qword_100347C50, &qword_10027FBC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001501E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001002A2490 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001002A24B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100150364@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100035D04(&qword_100347C58, &qword_10027FBC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_10000EBC0(a1, a1[3]);
  sub_100150608();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v30 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v26 = v10;
  v28 = 2;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v13;
  v27 = 3;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  v17 = *(v6 + 8);
  v23 = v14;
  v17(v8, v5);

  v18 = v25;

  sub_10000903C(a1);

  v20 = v26;
  *a2 = v9;
  a2[1] = v20;
  v21 = v23;
  v22 = v24;
  a2[2] = v12;
  a2[3] = v22;
  a2[4] = v18;
  a2[5] = v21;
  a2[6] = v16;
  return result;
}

unint64_t sub_100150608()
{
  result = qword_100347C60;
  if (!qword_100347C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347C60);
  }

  return result;
}

unint64_t sub_10015065C()
{
  result = qword_100347C70;
  if (!qword_100347C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347C70);
  }

  return result;
}

unint64_t sub_1001506C4()
{
  result = qword_100347C78;
  if (!qword_100347C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347C78);
  }

  return result;
}

unint64_t sub_10015071C()
{
  result = qword_100347C80;
  if (!qword_100347C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347C80);
  }

  return result;
}

unint64_t sub_100150774()
{
  result = qword_100347C88;
  if (!qword_100347C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347C88);
  }

  return result;
}

uint64_t sub_1001507CC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001507F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10015084C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1001508A8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    v2 = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

uint64_t sub_1001508E4(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v20 = a3;
  v4 = sub_100035D04(&qword_100347CD0, &qword_10027FE00);
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v21 = &v19 - v5;
  v6 = sub_100035D04(&qword_100347CD8, &qword_10027FE08);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  v10 = sub_100035D04(&qword_100347CE0, &qword_10027FE10);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  sub_10000EBC0(a1, a1[3]);
  sub_100151748();
  v14 = v24;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v14 == 1)
  {
    LOBYTE(v27) = 0;
    sub_100151844();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    LOBYTE(v27) = 1;
    sub_10015179C();
    v16 = v21;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v27 = v14;
    v26 = 0;
    sub_100151898();
    v17 = v23;
    v18 = v25;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v18)
    {
      v27 = v20;
      v26 = 1;
      type metadata accessor for PCInteractionDirection(0);
      sub_1001518EC(&qword_100347CF0, &protocol conformance descriptor for PCInteractionDirection);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v22 + 8))(v16, v17);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_100150C9C()
{
  if (*v0)
  {
    return 0x726566736E617274;
  }

  else
  {
    return 0x736E617254746F6ELL;
  }
}

uint64_t sub_100150CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E617254746F6ELL && a2 == 0xEF676E6972726566;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEC000000676E6972)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100150DD4(uint64_t a1)
{
  v2 = sub_100151748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100150E10(uint64_t a1)
{
  v2 = sub_100151748();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100150E4C(uint64_t a1)
{
  v2 = sub_100151844();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100150E88(uint64_t a1)
{
  v2 = sub_100151844();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100150EC4()
{
  if (*v0)
  {
    return 0x6F69746365726964;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_100150EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100150FD4(uint64_t a1)
{
  v2 = sub_10015179C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100151010(uint64_t a1)
{
  v2 = sub_10015179C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015104C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10015117C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

BOOL sub_1001510A8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1 == 1)
  {
    return a3 == 1;
  }

  if (a3 == 1)
  {
    return 0;
  }

  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v6 = a4;
    v7 = a2;
    sub_100151930();
    sub_100056F7C(a3);
    sub_100056F7C(a1);
    v9 = static NSObject.== infix(_:_:)();
    sub_10001DAC4(a3);
    sub_10001DAC4(a1);
    a2 = v7;
    a4 = v6;
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  return a2 == a4;
}

uint64_t sub_10015117C(void *a1)
{
  v2 = sub_100035D04(&qword_100347C90, &qword_10027FDE0);
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  __chkstk_darwin(v2);
  v5 = &v26 - v4;
  v6 = sub_100035D04(&qword_100347C98, &qword_10027FDE8);
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_100035D04(&qword_100347CA0, &unk_10027FDF0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = a1[3];
  v31 = a1;
  sub_10000EBC0(a1, v13);
  sub_100151748();
  v14 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v14)
  {
    v15 = v29;
    v30 = v10;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = (2 * *(v16 + 16)) | 1;
    v34 = v16;
    v35 = v16 + 32;
    v36 = 0;
    v37 = v17;
    v18 = sub_10021800C();
    if (v18 == 2 || v36 != v37 >> 1)
    {
      v20 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v21;
      v8 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
      *v22 = &type metadata for MediaTransferStatus;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
      swift_willThrow();
      (*(v30 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      LOBYTE(v38) = 1;
      sub_10015179C();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v19 = v30;
      v29 = v12;
      LOBYTE(v33) = 0;
      sub_1001517F0();
      v25 = v27;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v8 = v38;
      type metadata accessor for PCInteractionDirection(0);
      v32 = 1;
      sub_1001518EC(&qword_100347CC0, &protocol conformance descriptor for PCInteractionDirection);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v28 + 8))(v5, v25);
      (*(v19 + 8))(v29, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v38) = 0;
      sub_100151844();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v30;
      (*(v15 + 1))(v8, v6);
      (*(v24 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v8 = 1;
    }
  }

  sub_10000903C(v31);
  return v8;
}

unint64_t sub_100151748()
{
  result = qword_100347CA8;
  if (!qword_100347CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347CA8);
  }

  return result;
}

unint64_t sub_10015179C()
{
  result = qword_100347CB0;
  if (!qword_100347CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347CB0);
  }

  return result;
}

unint64_t sub_1001517F0()
{
  result = qword_100347CB8;
  if (!qword_100347CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347CB8);
  }

  return result;
}

unint64_t sub_100151844()
{
  result = qword_100347CC8;
  if (!qword_100347CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347CC8);
  }

  return result;
}

unint64_t sub_100151898()
{
  result = qword_100347CE8;
  if (!qword_100347CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347CE8);
  }

  return result;
}

uint64_t sub_1001518EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PCInteractionDirection(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100151930()
{
  result = qword_10033E390;
  if (!qword_10033E390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10033E390);
  }

  return result;
}

unint64_t sub_1001519B0()
{
  result = qword_100347CF8;
  if (!qword_100347CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347CF8);
  }

  return result;
}

unint64_t sub_100151A08()
{
  result = qword_100347D00;
  if (!qword_100347D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347D00);
  }

  return result;
}

unint64_t sub_100151A60()
{
  result = qword_100347D08;
  if (!qword_100347D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347D08);
  }

  return result;
}

unint64_t sub_100151AB8()
{
  result = qword_100347D10;
  if (!qword_100347D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347D10);
  }

  return result;
}

unint64_t sub_100151B10()
{
  result = qword_100347D18;
  if (!qword_100347D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347D18);
  }

  return result;
}

unint64_t sub_100151B68()
{
  result = qword_100347D20;
  if (!qword_100347D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347D20);
  }

  return result;
}

unint64_t sub_100151BC0()
{
  result = qword_100347D28;
  if (!qword_100347D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347D28);
  }

  return result;
}

unint64_t sub_100151C18()
{
  result = qword_100347D30;
  if (!qword_100347D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100347D30);
  }

  return result;
}

uint64_t sub_100151C6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  v8 = a4;
  v6(v7, v5, a4);
}

uint64_t sub_100151D50()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100347D38);
  sub_100003078(v0, qword_100347D38);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100151DD0()
{
  v1 = v0;
  if (qword_1003390C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100347D38);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  swift_unownedRelease();
  sub_100159F24(*(v1 + 32), *(v1 + 40), *(v1 + 48));
  return v1;
}

uint64_t sub_100151ECC()
{
  sub_100151DD0();

  return swift_deallocClassInstance();
}

void sub_100151F24(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v137 = *(v4 - 8);
  v138 = v4;
  __chkstk_darwin(v4);
  v136 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v149 = *(v6 - 8);
  __chkstk_darwin(v6);
  v135 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput(0);
  v8 = __chkstk_darwin(v141);
  v134 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v142 = &v130 - v11;
  __chkstk_darwin(v10);
  v13 = &v130 - v12;
  v145 = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded(0);
  v14 = __chkstk_darwin(v145);
  v140 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  *&v146 = &v130 - v17;
  __chkstk_darwin(v16);
  v148 = &v130 - v18;
  v143 = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted(0);
  v19 = __chkstk_darwin(v143);
  v139 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v144 = &v130 - v22;
  __chkstk_darwin(v21);
  v147 = &v130 - v23;
  v24 = type metadata accessor for RemoteFollowerMessage(0);
  v25 = __chkstk_darwin(v24);
  v27 = &v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v130 - v28;
  if (qword_1003390C8 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v30 = type metadata accessor for Logger();
    v31 = sub_100003078(v30, qword_100347D38);
    sub_10015A074(a1, v29, type metadata accessor for RemoteFollowerMessage);

    v150 = v31;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    v34 = os_log_type_enabled(v32, v33);
    v151 = v2;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v132 = v33;
      v36 = v35;
      v130 = swift_slowAlloc();
      v155[0] = v130;
      *v36 = 136315650;
      *(v36 + 4) = sub_100017494(0x293A5F28646E6573, 0xE800000000000000, v155);
      *(v36 + 12) = 2080;
      sub_10015A074(v29, v27, type metadata accessor for RemoteFollowerMessage);
      v37 = String.init<A>(describing:)();
      v131 = v32;
      v38 = v37;
      v40 = v39;
      sub_100159F38(v29, type metadata accessor for RemoteFollowerMessage);
      v41 = sub_100017494(v38, v40, v155);

      *(v36 + 14) = v41;
      *(v36 + 22) = 2080;
      swift_unownedRetainStrong();
      v152 = 60;
      v153 = 0xE100000000000000;
      v42 = UUID.uuidString.getter();
      sub_10000B584(8, v42, v43);
      v133 = a1;

      v44 = static String._fromSubstring(_:)();
      v46 = v45;

      v47._countAndFlagsBits = v44;
      v47._object = v46;
      String.append(_:)(v47);

      v48._countAndFlagsBits = 32;
      v48._object = 0xE100000000000000;
      String.append(_:)(v48);
      v51._countAndFlagsBits = sub_1000092A0(v49, v50);
      String.append(_:)(v51);

      v52._countAndFlagsBits = 62;
      v52._object = 0xE100000000000000;
      String.append(_:)(v52);

      v53 = sub_100017494(v152, v153, v155);

      *(v36 + 24) = v53;
      a1 = v133;
      v54 = v131;
      _os_log_impl(&_mh_execute_header, v131, v132, "%s: message=%s, session=%s", v36, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100159F38(v29, type metadata accessor for RemoteFollowerMessage);
    }

    v27 = a1;
    v55 = &a1[*(v24 + 20)];
    a1 = *v55;
    v56 = v55[8];
    if (!v56)
    {
      v13 = v147;
      (v149)[2](v147, v27, v6);
      v72 = v151;
      swift_unownedRetainStrong();
      v73 = UUID.uuidString.getter();
      v75 = v74;

      v76 = v143;
      Date.init()();
      if (qword_1003390C0 != -1)
      {
        swift_once();
      }

      v77 = qword_10038B2C8;
      v78 = &v13[v76[5]];
      *v78 = v73;
      v78[1] = v75;
      *&v13[v76[7]] = a1;
      *&v13[v76[8]] = v77;
      v79 = v144;
      sub_10015A074(v13, v144, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted);

      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v152 = v83;
        *v82 = 136315138;
        sub_10015A074(v79, v139, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted);
        v84 = String.init<A>(describing:)();
        v86 = v85;
        sub_100159F38(v79, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted);
        v87 = sub_100017494(v84, v86, &v152);

        *(v82 + 4) = v87;
        _os_log_impl(&_mh_execute_header, v80, v81, "Sending request: %s", v82, 0xCu);
        sub_10000903C(v83);
      }

      else
      {

        sub_100159F38(v79, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted);
      }

      sub_10015515C(v13, sub_100153038, 0, v72);
      v101 = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted;
      goto LABEL_42;
    }

    v57 = v151;
    if (v56 != 1)
    {
      v13 = v148;
      (v149)[2](v148, v27, v6);
      swift_unownedRetainStrong();
      v88 = UUID.uuidString.getter();
      v90 = v89;

      v91 = v146;
      v92 = &v13[*(v145 + 20)];
      *v92 = v88;
      v92[1] = v90;
      sub_10015A074(v13, v91, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v152 = v96;
        *v95 = 136315138;
        sub_10015A074(v91, v140, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded);
        v97 = String.init<A>(describing:)();
        v99 = v98;
        sub_100159F38(v91, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded);
        v100 = sub_100017494(v97, v99, &v152);

        *(v95 + 4) = v100;
        _os_log_impl(&_mh_execute_header, v93, v94, "Sending request: %s", v95, 0xCu);
        sub_10000903C(v96);
      }

      else
      {

        sub_100159F38(v91, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded);
      }

      sub_10015554C(v13, sub_100153044, 0, v57);
      v101 = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded;
LABEL_42:
      sub_100159F38(v13, v101);
      return;
    }

    swift_unownedRetainStrong();
    v58 = sub_100091318();

    if (!v58)
    {
      break;
    }

    if (v58 != 1)
    {
      v106 = v149;
      v107 = v135;
      v108 = v6;
      (v149)[2](v135, v27, v6);
      swift_unownedRetainStrong();
      v109 = UUID.uuidString.getter();
      v111 = v110;

      v112 = v136;
      Date.init()();
      v113 = a1 & 0xFF00;
      v114 = 0x746C7561666564;
      if ((a1 & 0x100) == 0)
      {
        v114 = 0x6F69746163756465;
      }

      v115 = 0xE700000000000000;
      if ((a1 & 0x100) == 0)
      {
        v115 = 0xE90000000000006ELL;
      }

      if (v113 == 512)
      {
        v116 = 0;
      }

      else
      {
        v116 = v114;
      }

      if (v113 == 512)
      {
        v117 = 0;
      }

      else
      {
        v117 = v115;
      }

      (v106)[4](v13, v107, v108);
      v118 = v141;
      v119 = &v13[*(v141 + 20)];
      *v119 = v109;
      v119[1] = v111;
      (*(v137 + 32))(&v13[v118[6]], v112, v138);
      v13[v118[7]] = a1;
      v120 = &v13[v118[8]];
      *v120 = v116;
      *(v120 + 1) = v117;
      sub_10015A074(v13, v142, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput);
      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v152 = v124;
        *v123 = 136315138;
        v125 = v142;
        sub_10015A074(v142, v134, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput);
        v126 = String.init<A>(describing:)();
        v128 = v127;
        sub_100159F38(v125, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput);
        v129 = sub_100017494(v126, v128, &v152);

        *(v123 + 4) = v129;
        _os_log_impl(&_mh_execute_header, v121, v122, "Sending event: %s", v123, 0xCu);
        sub_10000903C(v124);
      }

      else
      {

        sub_100159F38(v142, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput);
      }

      sub_10015593C(v13, sub_10015321C, 0, v151);
      v101 = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput;
      goto LABEL_42;
    }

    v59 = *(v57 + 32);
    v60 = *(v57 + 40);
    v24 = *(v57 + 48);
    sub_100159EF8(v59, v60, *(v57 + 48));
    v61 = sub_100159B88(a1, v59, v60, v24);
    sub_100159F24(v59, v60, v24);
    v63 = v61;
    v149 = *(v61 + 2);
    if (!v149)
    {

      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        v105 = "### No Handoff2UIEvents for output";
LABEL_45:
        _os_log_impl(&_mh_execute_header, v102, v103, v105, v104, 2u);
      }

      goto LABEL_46;
    }

    v2 = 0;
    v29 = (v63 + 48);
    *&v62 = 136315138;
    v146 = v62;
    v148 = v63;
    while (v2 < *(v63 + 2))
    {
      v27 = *(v29 - 2);
      v13 = *(v29 - 1);
      v66 = *v29;
      sub_100159F0C(v27, v13, *v29);
      sub_100159F0C(v27, v13, v66);
      sub_100159F0C(v27, v13, v66);
      v67 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      sub_10000F024(v27, v13, v66);
      if (os_log_type_enabled(v67, v6))
      {
        v68 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v155[0] = v147;
        *v68 = v146;
        v152 = v27;
        v153 = v13;
        v154 = v66;
        sub_100159F0C(v27, v13, v66);
        v69 = String.init<A>(describing:)();
        v71 = sub_100017494(v69, v70, v155);

        *(v68 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v67, v6, "Sending bannerMessage: %s", v68, 0xCu);
        sub_10000903C(v147);
      }

      ++v2;
      v24 = v151;
      sub_100155D2C(v27, v13, v66, sub_100153210, 0, v151);
      sub_10000F024(v27, v13, v66);
      v64 = *(v24 + 32);
      a1 = *(v24 + 40);
      *(v24 + 32) = v27;
      *(v24 + 40) = v13;
      v65 = *(v24 + 48);
      *(v24 + 48) = v66;
      sub_100159F0C(v27, v13, v66);
      sub_100159F24(v64, a1, v65);
      sub_10000F024(v27, v13, v66);
      v29 += 24;
      v63 = v148;
      if (v149 == v2)
      {

        return;
      }
    }

    __break(1u);
LABEL_48:
    swift_once();
  }

  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    v105 = "### Send ExperienceOutput to v1 follower??";
    goto LABEL_45;
  }

LABEL_46:
}

void sub_100153050(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, ...)
{
  if (qword_1003390C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100347D38);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    if (a3)
    {
      swift_errorRetain();
      sub_100035D04(&unk_100346020, &qword_100271A00);
      v10 = String.init<A>(describing:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    v13 = sub_100017494(v10, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v7, a4, v8, 0xCu);
    sub_10000903C(v9);
  }

  else
  {
  }
}

void sub_100153228(uint64_t a1, const char *a2, ...)
{
  if (qword_1003390C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100347D38);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    if (a1)
    {
      swift_errorRetain();
      sub_100035D04(&unk_100346020, &qword_100271A00);
      v8 = String.init<A>(describing:)();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    v11 = sub_100017494(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 0xCu);
    sub_10000903C(v7);
  }

  else
  {
  }
}

uint64_t sub_1001533E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83[3] = type metadata accessor for PresentNoticeRequest(0);
  v83[4] = &off_100315988;
  v13 = sub_10000F798(v83);
  sub_10015A074(a1, v13, type metadata accessor for PresentNoticeRequest);
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v10 + 8))(v12, v9);
  v77 = sub_10000B584(8, v14, v16);
  v76 = v17;
  v75 = v18;
  v20 = v19;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100003078(v21, qword_100351320);
  sub_10007E790(v83, aBlock);
  v23 = a2;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v73 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v71[1] = v13;
    v29 = v28;
    v30 = swift_slowAlloc();
    v71[2] = v22;
    *&v81[0] = v30;
    *v27 = 136315906;
    *(v27 + 4) = sub_100017494(0xD000000000000022, 0x80000001002A25F0, v81);
    *(v27 + 12) = 2080;
    sub_10007E790(aBlock, &v78);
    sub_100035D04(&qword_100347E30, &unk_100280190);
    v31 = String.init<A>(describing:)();
    v72 = a5;
    v32 = v31;
    v34 = v33;
    sub_10000903C(aBlock);
    v35 = sub_100017494(v32, v34, v81);

    *(v27 + 14) = v35;
    *(v27 + 22) = 2112;
    *(v27 + 24) = v23;
    *v29 = v23;
    *(v27 + 32) = 2080;
    v36 = v23;

    v37 = static String._fromSubstring(_:)();
    v39 = v38;

    v40 = sub_100017494(v37, v39, v81);
    a5 = v72;

    *(v27 + 34) = v40;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s: request=%s, rpCLDevice=%@, messageID=%s", v27, 0x2Au);
    sub_1000030B0(v29);

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v41 = sub_1002341E0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v44 = Strong;
    v45 = v43;

    if (v43)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v46 = aBlock[0];
      if (aBlock[0] && (v47 = [aBlock[0] discoveryToken], v46, v47))
      {
        sub_100159FB0();
        v48 = sub_100168F0C(v47);
        v50 = v49;

        if (v50 >> 60 != 15)
        {
          strcpy(&v78, "rangingToken");
          BYTE13(v78) = 0;
          HIWORD(v78) = -5120;
          AnyHashable.init<A>(_:)();
          v79 = &type metadata for Data;
          *&v78 = v48;
          *(&v78 + 1) = v50;
          sub_1000516B4(&v78, v81);
          sub_10006DA04(v48, v50);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v80 = v41;
          sub_10004D368(v81, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v48, v50);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v52 = *(a5 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v52)
  {

    v53 = v52;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v56 = 136315138;

      v58 = static String._fromSubstring(_:)();
      v60 = v59;

      v61 = sub_100017494(v58, v60, aBlock);

      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "Sending request with messageID: %s", v56, 0xCu);
      sub_10000903C(v57);
    }

    v62 = String._bridgeToObjectiveC()();
    v63.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v64 = [v73 effectiveIdentifier];
    if (!v64)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = String._bridgeToObjectiveC()();
    }

    v65 = swift_allocObject();
    v66 = v76;
    v65[2] = v77;
    v65[3] = v66;
    v65[4] = v75;
    v65[5] = v20;
    v65[6] = v74;
    v65[7] = a4;
    aBlock[4] = sub_10015A174;
    aBlock[5] = v65;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100151C6C;
    aBlock[3] = &unk_10030B6F8;
    v67 = _Block_copy(aBlock);

    [v53 sendRequestID:v62 request:v63.super.isa destinationID:v64 options:0 responseHandler:v67];
    _Block_release(v67);
  }

  else
  {

    v64 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v64, v68, "### Could not send request - no client?", v69, 2u);
    }
  }

  return sub_10000903C(v83);
}

uint64_t sub_100153DBC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83[3] = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded(0);
  v83[4] = &off_100310C90;
  v13 = sub_10000F798(v83);
  sub_10015A074(a1, v13, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded);
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v10 + 8))(v12, v9);
  v77 = sub_10000B584(8, v14, v16);
  v76 = v17;
  v75 = v18;
  v20 = v19;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100003078(v21, qword_100351320);
  sub_10007E790(v83, aBlock);
  v23 = a2;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v73 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v71[1] = v13;
    v29 = v28;
    v30 = swift_slowAlloc();
    v71[2] = v22;
    *&v81[0] = v30;
    *v27 = 136315906;
    *(v27 + 4) = sub_100017494(0xD000000000000022, 0x80000001002A25F0, v81);
    *(v27 + 12) = 2080;
    sub_10007E790(aBlock, &v78);
    sub_100035D04(&qword_100347E30, &unk_100280190);
    v31 = String.init<A>(describing:)();
    v72 = a5;
    v32 = v31;
    v34 = v33;
    sub_10000903C(aBlock);
    v35 = sub_100017494(v32, v34, v81);

    *(v27 + 14) = v35;
    *(v27 + 22) = 2112;
    *(v27 + 24) = v23;
    *v29 = v23;
    *(v27 + 32) = 2080;
    v36 = v23;

    v37 = static String._fromSubstring(_:)();
    v39 = v38;

    v40 = sub_100017494(v37, v39, v81);
    a5 = v72;

    *(v27 + 34) = v40;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s: request=%s, rpCLDevice=%@, messageID=%s", v27, 0x2Au);
    sub_1000030B0(v29);

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v41 = sub_1001D023C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v44 = Strong;
    v45 = v43;

    if (v43)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v46 = aBlock[0];
      if (aBlock[0] && (v47 = [aBlock[0] discoveryToken], v46, v47))
      {
        sub_100159FB0();
        v48 = sub_100168F0C(v47);
        v50 = v49;

        if (v50 >> 60 != 15)
        {
          strcpy(&v78, "rangingToken");
          BYTE13(v78) = 0;
          HIWORD(v78) = -5120;
          AnyHashable.init<A>(_:)();
          v79 = &type metadata for Data;
          *&v78 = v48;
          *(&v78 + 1) = v50;
          sub_1000516B4(&v78, v81);
          sub_10006DA04(v48, v50);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v80 = v41;
          sub_10004D368(v81, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v48, v50);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v52 = *(a5 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v52)
  {

    v53 = v52;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v56 = 136315138;

      v58 = static String._fromSubstring(_:)();
      v60 = v59;

      v61 = sub_100017494(v58, v60, aBlock);

      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "Sending request with messageID: %s", v56, 0xCu);
      sub_10000903C(v57);
    }

    v62 = String._bridgeToObjectiveC()();
    v63.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v64 = [v73 effectiveIdentifier];
    if (!v64)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = String._bridgeToObjectiveC()();
    }

    v65 = swift_allocObject();
    v66 = v76;
    v65[2] = v77;
    v65[3] = v66;
    v65[4] = v75;
    v65[5] = v20;
    v65[6] = v74;
    v65[7] = a4;
    aBlock[4] = sub_10015A174;
    aBlock[5] = v65;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100151C6C;
    aBlock[3] = &unk_10030B568;
    v67 = _Block_copy(aBlock);

    [v53 sendRequestID:v62 request:v63.super.isa destinationID:v64 options:0 responseHandler:v67];
    _Block_release(v67);
  }

  else
  {

    v64 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v64, v68, "### Could not send request - no client?", v69, 2u);
    }
  }

  return sub_10000903C(v83);
}

uint64_t sub_10015478C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83[3] = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted(0);
  v83[4] = &off_100310CD0;
  v13 = sub_10000F798(v83);
  sub_10015A074(a1, v13, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted);
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v10 + 8))(v12, v9);
  v77 = sub_10000B584(8, v14, v16);
  v76 = v17;
  v75 = v18;
  v20 = v19;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100003078(v21, qword_100351320);
  sub_10007E790(v83, aBlock);
  v23 = a2;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v73 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v71[1] = v13;
    v29 = v28;
    v30 = swift_slowAlloc();
    v71[2] = v22;
    *&v81[0] = v30;
    *v27 = 136315906;
    *(v27 + 4) = sub_100017494(0xD000000000000022, 0x80000001002A25F0, v81);
    *(v27 + 12) = 2080;
    sub_10007E790(aBlock, &v78);
    sub_100035D04(&qword_100347E30, &unk_100280190);
    v31 = String.init<A>(describing:)();
    v72 = a5;
    v32 = v31;
    v34 = v33;
    sub_10000903C(aBlock);
    v35 = sub_100017494(v32, v34, v81);

    *(v27 + 14) = v35;
    *(v27 + 22) = 2112;
    *(v27 + 24) = v23;
    *v29 = v23;
    *(v27 + 32) = 2080;
    v36 = v23;

    v37 = static String._fromSubstring(_:)();
    v39 = v38;

    v40 = sub_100017494(v37, v39, v81);
    a5 = v72;

    *(v27 + 34) = v40;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s: request=%s, rpCLDevice=%@, messageID=%s", v27, 0x2Au);
    sub_1000030B0(v29);

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v41 = sub_1001CFEE4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v44 = Strong;
    v45 = v43;

    if (v43)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v46 = aBlock[0];
      if (aBlock[0] && (v47 = [aBlock[0] discoveryToken], v46, v47))
      {
        sub_100159FB0();
        v48 = sub_100168F0C(v47);
        v50 = v49;

        if (v50 >> 60 != 15)
        {
          strcpy(&v78, "rangingToken");
          BYTE13(v78) = 0;
          HIWORD(v78) = -5120;
          AnyHashable.init<A>(_:)();
          v79 = &type metadata for Data;
          *&v78 = v48;
          *(&v78 + 1) = v50;
          sub_1000516B4(&v78, v81);
          sub_10006DA04(v48, v50);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v80 = v41;
          sub_10004D368(v81, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v48, v50);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v52 = *(a5 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v52)
  {

    v53 = v52;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v56 = 136315138;

      v58 = static String._fromSubstring(_:)();
      v60 = v59;

      v61 = sub_100017494(v58, v60, aBlock);

      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "Sending request with messageID: %s", v56, 0xCu);
      sub_10000903C(v57);
    }

    v62 = String._bridgeToObjectiveC()();
    v63.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v64 = [v73 effectiveIdentifier];
    if (!v64)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = String._bridgeToObjectiveC()();
    }

    v65 = swift_allocObject();
    v66 = v76;
    v65[2] = v77;
    v65[3] = v66;
    v65[4] = v75;
    v65[5] = v20;
    v65[6] = v74;
    v65[7] = a4;
    aBlock[4] = sub_100159F98;
    aBlock[5] = v65;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100151C6C;
    aBlock[3] = &unk_10030B4C8;
    v67 = _Block_copy(aBlock);

    [v53 sendRequestID:v62 request:v63.super.isa destinationID:v64 options:0 responseHandler:v67];
    _Block_release(v67);
  }

  else
  {

    v64 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v64, v68, "### Could not send request - no client?", v69, 2u);
    }
  }

  return sub_10000903C(v83);
}

uint64_t sub_10015515C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[3] = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted(0);
  v33[4] = &off_100310CD0;
  v8 = sub_10000F798(v33);
  sub_10015A074(a1, v8, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted);
  if (qword_1003390C8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_100347D38);
  sub_10007E790(v33, v32);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100017494(0xD000000000000018, 0x80000001002A2540, &v31);
    *(v12 + 12) = 2080;
    sub_10007E790(v32, v30);
    sub_100035D04(&qword_100347E30, &unk_100280190);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    sub_10000903C(v32);
    v16 = sub_100017494(v13, v15, &v31);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: request=%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(v32);
  }

  v17 = sub_100142E20()[4];
  v18 = v17;

  if (v17)
  {
    v19 = *(a4 + 24);
    swift_unownedRetainStrong();
    v20 = *(*(v19 + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnection);
    v21 = v20;

    if (v20)
    {
      sub_10015901C(v8, v21, a2, a3, v18);
LABEL_13:

      goto LABEL_14;
    }

    v24 = swift_unownedRetainStrong();
    v21 = sub_100070D94(v24, v25);

    if (v21)
    {
      sub_10015478C(v8, v21, a2, a3, v18);
      goto LABEL_13;
    }

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "### Could not send message - no rpCompanionLinkClient or rpCompanionLinkDevice", v29, 2u);
    }

    v18 = v27;
  }

  else
  {
    v18 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v18, v22, "### Could not send message - no remoteFollowerTransportLink", v23, 2u);
    }
  }

LABEL_14:

  return sub_10000903C(v33);
}

uint64_t sub_10015554C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[3] = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded(0);
  v33[4] = &off_100310C90;
  v8 = sub_10000F798(v33);
  sub_10015A074(a1, v8, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded);
  if (qword_1003390C8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_100347D38);
  sub_10007E790(v33, v32);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100017494(0xD000000000000018, 0x80000001002A2540, &v31);
    *(v12 + 12) = 2080;
    sub_10007E790(v32, v30);
    sub_100035D04(&qword_100347E30, &unk_100280190);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    sub_10000903C(v32);
    v16 = sub_100017494(v13, v15, &v31);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: request=%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(v32);
  }

  v17 = sub_100142E20()[4];
  v18 = v17;

  if (v17)
  {
    v19 = *(a4 + 24);
    swift_unownedRetainStrong();
    v20 = *(*(v19 + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnection);
    v21 = v20;

    if (v20)
    {
      sub_100158708(v8, v21, a2, a3, v18);
LABEL_13:

      goto LABEL_14;
    }

    v24 = swift_unownedRetainStrong();
    v21 = sub_100070D94(v24, v25);

    if (v21)
    {
      sub_100153DBC(v8, v21, a2, a3, v18);
      goto LABEL_13;
    }

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "### Could not send message - no rpCompanionLinkClient or rpCompanionLinkDevice", v29, 2u);
    }

    v18 = v27;
  }

  else
  {
    v18 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v18, v22, "### Could not send message - no remoteFollowerTransportLink", v23, 2u);
    }
  }

LABEL_14:

  return sub_10000903C(v33);
}

uint64_t sub_10015593C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[3] = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput(0);
  v33[4] = &off_100310C50;
  v8 = sub_10000F798(v33);
  sub_10015A074(a1, v8, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput);
  if (qword_1003390C8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_100347D38);
  sub_10007E790(v33, v32);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100017494(0xD000000000000013, 0x80000001002A2640, &v31);
    *(v12 + 12) = 2080;
    sub_10007E790(v32, v30);
    sub_100035D04(&qword_100347E40, &qword_1002801F0);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    sub_10000903C(v32);
    v16 = sub_100017494(v13, v15, &v31);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: event=%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(v32);
  }

  v17 = sub_100142E20()[4];
  v18 = v17;

  if (v17)
  {
    v19 = *(a4 + 24);
    swift_unownedRetainStrong();
    v20 = *(*(v19 + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnection);
    v21 = v20;

    if (v20)
    {
      sub_100156140(v8, v21, a2, a3, v18);
LABEL_13:

      goto LABEL_14;
    }

    v24 = swift_unownedRetainStrong();
    v21 = sub_100070D94(v24, v25);

    if (v21)
    {
      sub_100157364(v8, v21, a2, a3, v18);
      goto LABEL_13;
    }

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "### Could not send message - no rpCompanionLinkClient or rpCompanionLinkDevice", v29, 2u);
    }

    v18 = v27;
  }

  else
  {
    v18 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v18, v22, "### Could not send message - no remoteFollowerTransportLink", v23, 2u);
    }
  }

LABEL_14:

  return sub_10000903C(v33);
}

uint64_t sub_100155D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v45 = &type metadata for HandoffRemotePeerInterface.Request.Handoff2Output;
  v46 = &off_100310C18;
  v43[0] = a1;
  v43[1] = a2;
  v44 = a3;
  sub_100159F0C(a1, a2, a3);
  if (qword_1003390C8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003078(v12, qword_100347D38);
  sub_10007E790(v43, v42);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_100017494(0xD000000000000013, 0x80000001002A2640, &v41);
    *(v15 + 12) = 2080;
    sub_10007E790(v42, v40);
    sub_100035D04(&qword_100347E40, &qword_1002801F0);
    v16 = a6;
    v17 = String.init<A>(describing:)();
    v39 = v14;
    v18 = v11;
    v19 = v10;
    v20 = v9;
    v21 = a4;
    v22 = a5;
    v24 = v23;
    sub_10000903C(v42);
    v25 = sub_100017494(v17, v24, &v41);
    a5 = v22;
    a4 = v21;
    v9 = v20;
    v10 = v19;
    v11 = v18;

    *(v15 + 14) = v25;
    a6 = v16;
    _os_log_impl(&_mh_execute_header, v13, v39, "%s: event=%s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(v42);
  }

  v26 = sub_100142E20()[4];
  v27 = v26;

  if (v26)
  {
    v28 = *(a6 + 24);
    swift_unownedRetainStrong();
    v29 = *(*(v28 + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnection);
    v30 = v29;

    if (v29)
    {
      sub_100156A60(v11, v10, v9, v30, a4, a5, v27);
LABEL_13:

      goto LABEL_14;
    }

    v33 = swift_unownedRetainStrong();
    v30 = sub_100070D94(v33, v34);

    if (v30)
    {
      sub_100157D30(v11, v10, v9, v30, a4, a5, v27);
      goto LABEL_13;
    }

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "### Could not send message - no rpCompanionLinkClient or rpCompanionLinkDevice", v38, 2u);
    }

    v27 = v36;
  }

  else
  {
    v27 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v27, v31, "### Could not send message - no remoteFollowerTransportLink", v32, 2u);
    }
  }

LABEL_14:

  return sub_10000903C(v43);
}

uint64_t sub_100156140(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a4;
  v72 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81[3] = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput(0);
  v81[4] = &off_100310C50;
  v74 = sub_10000F798(v81);
  sub_10015A074(a1, v74, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput);
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  v14 = sub_10000B584(8, v11, v13);
  v75 = v15;
  v17 = v16;
  v19 = v18;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_100003078(v20, qword_100351320);
  sub_10007E790(v81, aBlock);
  v22 = a2;

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v70 = v17;
  v69 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v73 = v14;
    v28 = v27;
    v68[0] = swift_slowAlloc();
    *&v79[0] = v68[0];
    *v26 = 136315906;
    *(v26 + 4) = sub_100017494(0xD00000000000001DLL, 0x80000001002A2660, v79);
    *(v26 + 12) = 2080;
    sub_10007E790(aBlock, &v76);
    sub_100035D04(&qword_100347E40, &qword_1002801F0);
    v29 = String.init<A>(describing:)();
    v68[1] = v21;
    v31 = v30;
    sub_10000903C(aBlock);
    v32 = sub_100017494(v29, v31, v79);

    *(v26 + 14) = v32;
    *(v26 + 22) = 2112;
    *(v26 + 24) = v22;
    *v28 = v22;
    *(v26 + 32) = 2080;
    v33 = v22;

    v34 = static String._fromSubstring(_:)();
    v36 = v35;

    v37 = sub_100017494(v34, v36, v79);

    *(v26 + 34) = v37;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s: event=%s, rpCLClient=%@, messageID=%s", v26, 0x2Au);
    sub_1000030B0(v28);
    v14 = v73;

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v38 = sub_1001D03E0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v40 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v41 = Strong;
    v42 = v40;

    if (v40)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v43 = aBlock[0];
      if (aBlock[0] && (v44 = [aBlock[0] discoveryToken], v43, v44))
      {
        v45 = v38;
        sub_100159FB0();
        v46 = sub_100168F0C(v44);
        v48 = v47;

        if (v48 >> 60 != 15)
        {
          strcpy(&v76, "rangingToken");
          BYTE13(v76) = 0;
          HIWORD(v76) = -5120;
          AnyHashable.init<A>(_:)();
          v77 = &type metadata for Data;
          *&v76 = v46;
          *(&v76 + 1) = v48;
          sub_1000516B4(&v76, v79);
          sub_10006DA04(v46, v48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = v45;
          sub_10004D368(v79, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v46, v48);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136315138;

    v54 = v70;
    v55 = static String._fromSubstring(_:)();
    v56 = v14;
    v58 = v57;

    v59 = sub_100017494(v55, v58, aBlock);
    v14 = v56;

    *(v52 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v50, v51, "Sending event with messageID: %s", v52, 0xCu);
    sub_10000903C(v53);
  }

  else
  {

    v54 = v70;
  }

  v60 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v62 = swift_allocObject();
  v63 = v75;
  v62[2] = v14;
  v62[3] = v63;
  v62[4] = v54;
  v62[5] = v19;
  v64 = v72;
  v65 = v71;
  v62[6] = v72;
  v62[7] = v65;
  aBlock[4] = sub_10015A198;
  aBlock[5] = v62;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100124498;
  aBlock[3] = &unk_10030B658;
  v66 = _Block_copy(aBlock);
  sub_10009D4E0(v64, v65);

  [v69 sendEventID:v60 event:isa options:0 completion:v66];
  _Block_release(v66);

  return sub_10000903C(v81);
}

uint64_t sub_100156A60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v72 = a6;
  v71 = a5;
  v8 = a3;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = &type metadata for HandoffRemotePeerInterface.Request.Handoff2Output;
  v84 = &off_100310C18;
  v81[0] = a1;
  v81[1] = a2;
  v82 = v8;
  sub_100159F0C(a1, a2, v8);
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  v18 = sub_10000B584(8, v15, v17);
  v75 = v19;
  v74 = v20;
  v22 = v21;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_100003078(v23, qword_100351320);
  sub_10007E790(v81, aBlock);
  v25 = a4;

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v70 = v25;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v73 = v18;
    v31 = v30;
    *&v79[0] = swift_slowAlloc();
    *v29 = 136315906;
    *(v29 + 4) = sub_100017494(0xD00000000000001DLL, 0x80000001002A2660, v79);
    *(v29 + 12) = 2080;
    sub_10007E790(aBlock, &v76);
    sub_100035D04(&qword_100347E40, &qword_1002801F0);
    v32 = String.init<A>(describing:)();
    v69 = v24;
    v34 = v33;
    sub_10000903C(aBlock);
    v35 = sub_100017494(v32, v34, v79);

    *(v29 + 14) = v35;
    *(v29 + 22) = 2112;
    *(v29 + 24) = v25;
    *v31 = v25;
    *(v29 + 32) = 2080;
    v36 = v25;

    v37 = static String._fromSubstring(_:)();
    v39 = v38;

    v40 = sub_100017494(v37, v39, v79);

    *(v29 + 34) = v40;
    _os_log_impl(&_mh_execute_header, v26, v27, "%s: event=%s, rpCLClient=%@, messageID=%s", v29, 0x2Au);
    sub_1000030B0(v31);
    v18 = v73;

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v41 = sub_1001D0760();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v44 = Strong;
    v45 = v43;

    if (v43)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v46 = aBlock[0];
      if (aBlock[0] && (v47 = [aBlock[0] discoveryToken], v46, v47))
      {
        sub_100159FB0();
        v48 = sub_100168F0C(v47);
        v50 = v49;

        if (v50 >> 60 != 15)
        {
          strcpy(&v76, "rangingToken");
          BYTE13(v76) = 0;
          HIWORD(v76) = -5120;
          AnyHashable.init<A>(_:)();
          v77 = &type metadata for Data;
          *&v76 = v48;
          *(&v76 + 1) = v50;
          sub_1000516B4(&v76, v79);
          sub_10006DA04(v48, v50);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = v41;
          sub_10004D368(v79, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v48, v50);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v54 = 136315138;

    v56 = static String._fromSubstring(_:)();
    v57 = v18;
    v59 = v58;

    v60 = sub_100017494(v56, v59, aBlock);
    v18 = v57;

    *(v54 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v52, v53, "Sending event with messageID: %s", v54, 0xCu);
    sub_10000903C(v55);
  }

  v61 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v63 = swift_allocObject();
  v64 = v75;
  v63[2] = v18;
  v63[3] = v64;
  v63[4] = v74;
  v63[5] = v22;
  v65 = v71;
  v66 = v72;
  v63[6] = v71;
  v63[7] = v66;
  aBlock[4] = sub_100159FFC;
  aBlock[5] = v63;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100124498;
  aBlock[3] = &unk_10030B5B8;
  v67 = _Block_copy(aBlock);
  sub_10009D4E0(v65, v66);

  [v70 sendEventID:v61 event:isa options:0 completion:v67];
  _Block_release(v67);

  return sub_10000903C(v81);
}

uint64_t sub_100157364(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84[3] = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput(0);
  v84[4] = &off_100310C50;
  v78 = sub_10000F798(v84);
  sub_10015A074(a1, v78, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput);
  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  v77 = sub_10000B584(8, v13, v15);
  v76 = v16;
  v75 = v17;
  v19 = v18;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_100003078(v20, qword_100351320);
  sub_10007E790(v84, aBlock);
  v22 = a2;

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v73 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v71[1] = v21;
    *&v82[0] = v28;
    *v26 = 136315906;
    *(v26 + 4) = sub_100017494(0xD00000000000001BLL, 0x80000001002A2680, v82);
    *(v26 + 12) = 2080;
    sub_10007E790(aBlock, &v79);
    sub_100035D04(&qword_100347E40, &qword_1002801F0);
    v29 = String.init<A>(describing:)();
    v72 = a5;
    v30 = v29;
    v32 = v31;
    sub_10000903C(aBlock);
    v33 = sub_100017494(v30, v32, v82);

    *(v26 + 14) = v33;
    *(v26 + 22) = 2112;
    *(v26 + 24) = v22;
    *v27 = v22;
    *(v26 + 32) = 2080;
    v34 = v22;

    v35 = static String._fromSubstring(_:)();
    v37 = v36;

    v38 = sub_100017494(v35, v37, v82);
    a5 = v72;

    *(v26 + 34) = v38;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s: event=%s, rpCLDevice=%@, messageID=%s", v26, 0x2Au);
    sub_1000030B0(v27);

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v39 = sub_1001D03E0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v42 = Strong;
    v43 = v41;

    if (v41)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v44 = aBlock[0];
      if (aBlock[0] && (v45 = [aBlock[0] discoveryToken], v44, v45))
      {
        sub_100159FB0();
        v46 = sub_100168F0C(v45);
        v48 = v47;

        if (v48 >> 60 != 15)
        {
          strcpy(&v79, "rangingToken");
          BYTE13(v79) = 0;
          HIWORD(v79) = -5120;
          AnyHashable.init<A>(_:)();
          v80 = &type metadata for Data;
          *&v79 = v46;
          *(&v79 + 1) = v48;
          sub_1000516B4(&v79, v82);
          sub_10006DA04(v46, v48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v81 = v39;
          sub_10004D368(v82, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v46, v48);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v50 = *(a5 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v50)
  {

    v51 = v50;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock[0] = v55;
      *v54 = 136315138;

      v56 = static String._fromSubstring(_:)();
      v58 = v57;

      v59 = sub_100017494(v56, v58, aBlock);

      *(v54 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v52, v53, "Sending event with messageID: %s", v54, 0xCu);
      sub_10000903C(v55);
    }

    v60 = String._bridgeToObjectiveC()();
    v61.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v62 = [v73 effectiveIdentifier];
    if (!v62)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = String._bridgeToObjectiveC()();
    }

    v63 = swift_allocObject();
    v64 = v76;
    v63[2] = v77;
    v63[3] = v64;
    v63[4] = v75;
    v63[5] = v19;
    v65 = v74;
    v63[6] = v74;
    v63[7] = a4;
    aBlock[4] = sub_10015A198;
    aBlock[5] = v63;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100124498;
    aBlock[3] = &unk_10030B6A8;
    v66 = _Block_copy(aBlock);
    sub_10009D4E0(v65, a4);

    [v51 sendEventID:v60 event:v61.super.isa destinationID:v62 options:0 completion:v66];
    _Block_release(v66);
  }

  else
  {

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "### Could not send request - no client?", v70, 2u);
    }
  }

  return sub_10000903C(v84);
}

uint64_t sub_100157D30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v76 = a6;
  v75 = a5;
  v9 = a3;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = &type metadata for HandoffRemotePeerInterface.Request.Handoff2Output;
  v88 = &off_100310C18;
  v85[0] = a1;
  v85[1] = a2;
  v86 = v9;
  sub_100159F0C(a1, a2, v9);
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  v79 = sub_10000B584(8, v16, v18);
  v78 = v19;
  v77 = v20;
  v22 = v21;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_100003078(v23, qword_100351320);
  sub_10007E790(v85, aBlock);
  v25 = a4;

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v74[1] = v24;
    *&v83[0] = v30;
    *v28 = 136315906;
    *(v28 + 4) = sub_100017494(0xD00000000000001BLL, 0x80000001002A2680, v83);
    *(v28 + 12) = 2080;
    sub_10007E790(aBlock, &v80);
    sub_100035D04(&qword_100347E40, &qword_1002801F0);
    v31 = a7;
    v32 = String.init<A>(describing:)();
    v34 = v33;
    sub_10000903C(aBlock);
    v35 = sub_100017494(v32, v34, v83);

    *(v28 + 14) = v35;
    *(v28 + 22) = 2112;
    *(v28 + 24) = v25;
    *v29 = v25;
    *(v28 + 32) = 2080;
    v36 = v25;

    v37 = static String._fromSubstring(_:)();
    v39 = v38;

    v40 = sub_100017494(v37, v39, v83);
    a7 = v31;

    *(v28 + 34) = v40;
    _os_log_impl(&_mh_execute_header, v26, v27, "%s: event=%s, rpCLDevice=%@, messageID=%s", v28, 0x2Au);
    sub_1000030B0(v29);

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v41 = sub_1001D0760();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v44 = Strong;
    v45 = v43;

    if (v43)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v46 = aBlock[0];
      if (aBlock[0] && (v47 = [aBlock[0] discoveryToken], v46, v47))
      {
        sub_100159FB0();
        v48 = sub_100168F0C(v47);
        v50 = v49;

        if (v50 >> 60 != 15)
        {
          strcpy(&v80, "rangingToken");
          BYTE13(v80) = 0;
          HIWORD(v80) = -5120;
          AnyHashable.init<A>(_:)();
          v81 = &type metadata for Data;
          *&v80 = v48;
          *(&v80 + 1) = v50;
          sub_1000516B4(&v80, v83);
          sub_10006DA04(v48, v50);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v82 = v41;
          sub_10004D368(v83, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v48, v50);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v52 = *(a7 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v52)
  {

    v53 = v52;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v56 = 136315138;

      v58 = static String._fromSubstring(_:)();
      v60 = v59;

      v61 = sub_100017494(v58, v60, aBlock);

      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "Sending event with messageID: %s", v56, 0xCu);
      sub_10000903C(v57);
    }

    v62 = String._bridgeToObjectiveC()();
    v63.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v64 = [v25 effectiveIdentifier];
    if (!v64)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = String._bridgeToObjectiveC()();
    }

    v65 = swift_allocObject();
    v66 = v78;
    v65[2] = v79;
    v65[3] = v66;
    v65[4] = v77;
    v65[5] = v22;
    v67 = v75;
    v68 = v76;
    v65[6] = v75;
    v65[7] = v68;
    aBlock[4] = sub_100159FFC;
    aBlock[5] = v65;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100124498;
    aBlock[3] = &unk_10030B608;
    v69 = _Block_copy(aBlock);
    sub_10009D4E0(v67, v68);

    [v53 sendEventID:v62 event:v63.super.isa destinationID:v64 options:0 completion:v69];
    _Block_release(v69);
  }

  else
  {

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "### Could not send request - no client?", v73, 2u);
    }
  }

  return sub_10000903C(v85);
}

uint64_t sub_100158708(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69[2] = a5;
  v72 = a4;
  v73 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81[3] = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded(0);
  v81[4] = &off_100310C90;
  v11 = sub_10000F798(v81);
  sub_10015A074(a1, v11, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded);
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  v15 = sub_10000B584(8, v12, v14);
  v75 = v16;
  v18 = v17;
  v20 = v19;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100003078(v21, qword_100351320);
  sub_10007E790(v81, aBlock);
  v23 = a2;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v71 = v18;
  v70 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v69[1] = v11;
    v28 = v23;
    v29 = v27;
    v30 = swift_slowAlloc();
    v74 = v15;
    v31 = v30;
    *&v79[0] = swift_slowAlloc();
    *v29 = 136315906;
    *(v29 + 4) = sub_100017494(0xD000000000000024, 0x80000001002A25C0, v79);
    *(v29 + 12) = 2080;
    sub_10007E790(aBlock, &v76);
    sub_100035D04(&qword_100347E30, &unk_100280190);
    v32 = String.init<A>(describing:)();
    v69[0] = v22;
    v34 = v33;
    sub_10000903C(aBlock);
    v35 = sub_100017494(v32, v34, v79);

    *(v29 + 14) = v35;
    *(v29 + 22) = 2112;
    *(v29 + 24) = v28;
    *v31 = v28;
    *(v29 + 32) = 2080;
    v36 = v28;

    v37 = static String._fromSubstring(_:)();
    v39 = v38;

    v40 = sub_100017494(v37, v39, v79);

    *(v29 + 34) = v40;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s: request=%s, rpCLClient=%@, messageID=%s", v29, 0x2Au);
    sub_1000030B0(v31);
    v15 = v74;

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v41 = sub_1001D023C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v44 = Strong;
    v45 = v43;

    if (v43)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v46 = aBlock[0];
      if (aBlock[0] && (v47 = [aBlock[0] discoveryToken], v46, v47))
      {
        sub_100159FB0();
        v48 = sub_100168F0C(v47);
        v50 = v49;

        if (v50 >> 60 != 15)
        {
          strcpy(&v76, "rangingToken");
          BYTE13(v76) = 0;
          HIWORD(v76) = -5120;
          AnyHashable.init<A>(_:)();
          v77 = &type metadata for Data;
          *&v76 = v48;
          *(&v76 + 1) = v50;
          sub_1000516B4(&v76, v79);
          sub_10006DA04(v48, v50);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = v41;
          sub_10004D368(v79, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v48, v50);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v54 = 136315138;

    v56 = v71;
    v57 = static String._fromSubstring(_:)();
    v58 = v15;
    v60 = v59;

    v61 = sub_100017494(v57, v60, aBlock);
    v15 = v58;

    *(v54 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v52, v53, "Sending request with messageID: %s", v54, 0xCu);
    sub_10000903C(v55);
  }

  else
  {

    v56 = v71;
  }

  v62 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v64 = swift_allocObject();
  v65 = v75;
  v64[2] = v15;
  v64[3] = v65;
  v64[4] = v56;
  v64[5] = v20;
  v66 = v72;
  v64[6] = v73;
  v64[7] = v66;
  aBlock[4] = sub_10015A174;
  aBlock[5] = v64;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100151C6C;
  aBlock[3] = &unk_10030B518;
  v67 = _Block_copy(aBlock);

  [v70 sendRequestID:v62 request:isa options:0 responseHandler:v67];
  _Block_release(v67);

  return sub_10000903C(v81);
}

uint64_t sub_10015901C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69[2] = a5;
  v72 = a4;
  v73 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81[3] = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted(0);
  v81[4] = &off_100310CD0;
  v11 = sub_10000F798(v81);
  sub_10015A074(a1, v11, type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted);
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  v15 = sub_10000B584(8, v12, v14);
  v75 = v16;
  v18 = v17;
  v20 = v19;

  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100003078(v21, qword_100351320);
  sub_10007E790(v81, aBlock);
  v23 = a2;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v71 = v18;
  v70 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v69[1] = v11;
    v28 = v23;
    v29 = v27;
    v30 = swift_slowAlloc();
    v74 = v15;
    v31 = v30;
    *&v79[0] = swift_slowAlloc();
    *v29 = 136315906;
    *(v29 + 4) = sub_100017494(0xD000000000000024, 0x80000001002A25C0, v79);
    *(v29 + 12) = 2080;
    sub_10007E790(aBlock, &v76);
    sub_100035D04(&qword_100347E30, &unk_100280190);
    v32 = String.init<A>(describing:)();
    v69[0] = v22;
    v34 = v33;
    sub_10000903C(aBlock);
    v35 = sub_100017494(v32, v34, v79);

    *(v29 + 14) = v35;
    *(v29 + 22) = 2112;
    *(v29 + 24) = v28;
    *v31 = v28;
    *(v29 + 32) = 2080;
    v36 = v28;

    v37 = static String._fromSubstring(_:)();
    v39 = v38;

    v40 = sub_100017494(v37, v39, v79);

    *(v29 + 34) = v40;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s: request=%s, rpCLClient=%@, messageID=%s", v29, 0x2Au);
    sub_1000030B0(v31);
    v15 = v74;

    swift_arrayDestroy();
  }

  else
  {

    sub_10000903C(aBlock);
  }

  v41 = sub_1001CFEE4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v44 = Strong;
    v45 = v43;

    if (v43)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v46 = aBlock[0];
      if (aBlock[0] && (v47 = [aBlock[0] discoveryToken], v46, v47))
      {
        sub_100159FB0();
        v48 = sub_100168F0C(v47);
        v50 = v49;

        if (v50 >> 60 != 15)
        {
          strcpy(&v76, "rangingToken");
          BYTE13(v76) = 0;
          HIWORD(v76) = -5120;
          AnyHashable.init<A>(_:)();
          v77 = &type metadata for Data;
          *&v76 = v48;
          *(&v76 + 1) = v50;
          sub_1000516B4(&v76, v79);
          sub_10006DA04(v48, v50);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = v41;
          sub_10004D368(v79, aBlock, isUniquelyReferenced_nonNull_native);
          sub_10006DB04(v48, v50);
          sub_1000516C4(aBlock);
        }
      }

      else
      {
      }
    }
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v54 = 136315138;

    v56 = v71;
    v57 = static String._fromSubstring(_:)();
    v58 = v15;
    v60 = v59;

    v61 = sub_100017494(v57, v60, aBlock);
    v15 = v58;

    *(v54 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v52, v53, "Sending request with messageID: %s", v54, 0xCu);
    sub_10000903C(v55);
  }

  else
  {

    v56 = v71;
  }

  v62 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v64 = swift_allocObject();
  v65 = v75;
  v64[2] = v15;
  v64[3] = v65;
  v64[4] = v56;
  v64[5] = v20;
  v66 = v72;
  v64[6] = v73;
  v64[7] = v66;
  aBlock[4] = sub_100159F98;
  aBlock[5] = v64;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100151C6C;
  aBlock[3] = &unk_10030B478;
  v67 = _Block_copy(aBlock);

  [v70 sendRequestID:v62 request:isa options:0 responseHandler:v67];
  _Block_release(v67);

  return sub_10000903C(v81);
}

uint64_t sub_100159930(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = -1;
  if (qword_1003390C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100347D38);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v8 = 136315138;
    v24 = v22;
    v9 = UUID.uuidString.getter();
    sub_10000B584(8, v9, v10);
    v23 = a1;

    v11 = static String._fromSubstring(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 32;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v18._countAndFlagsBits = sub_1000092A0(v16, v17);
    String.append(_:)(v18);

    v19._countAndFlagsBits = 62;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20 = sub_100017494(60, 0xE100000000000000, &v24);

    *(v8 + 4) = v20;
    a1 = v23;
    _os_log_impl(&_mh_execute_header, v6, v7, "Init: session=%s", v8, 0xCu);
    sub_10000903C(v22);
  }

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  swift_unownedRetain();
  return v2;
}

_UNKNOWN **sub_100159B88(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (qword_1003390C8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_100347D38);
  sub_100159EF8(a2, a3, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  sub_100159F24(a2, a3, v4);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v11 = 136315650;
    *(v11 + 4) = sub_100017494(0xD00000000000002FLL, 0x80000001002A26D0, &v24);
    *(v11 + 12) = 2080;
    v23 = a1;
    v12 = String.init<A>(describing:)();
    v14 = sub_100017494(v12, v13, &v24);

    *(v11 + 14) = v14;
    *(v11 + 22) = 2080;
    if (v4 == 0xFF)
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      sub_100159F0C(a2, a3, v4);
      v15 = String.init<A>(describing:)();
      v17 = v16;
    }

    v20 = sub_100017494(v15, v17, &v24);

    *(v11 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: output=%s, lastSentHandoff2UIEvent=%s", v11, 0x20u);
    swift_arrayDestroy();

    v18 = v23;
    if (!v23)
    {
      goto LABEL_20;
    }
  }

  else
  {

    v18 = a1;
    if (!a1)
    {
LABEL_20:
      sub_100035D04(&qword_100347E48, qword_1002801F8);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_10026F050;
      _StringGuts.grow(_:)(36);
      v22._object = 0x80000001002A26A0;
      v22._countAndFlagsBits = 0xD000000000000022;
      String.append(_:)(v22);
      LOBYTE(v24) = 0;
      _print_unlocked<A, B>(_:_:)();
      result = v21;
      *(v21 + 32) = 0;
      *(v21 + 40) = 0xE000000000000000;
      *(v21 + 48) = 0;
      return result;
    }
  }

  if (v18 == 1)
  {
    if (v4)
    {
      if (v4 == 2 && a2 == 2 && !a3)
      {
        return &off_100301618;
      }

      else
      {
        return &off_100301650;
      }
    }

    else
    {
      return &off_1003015E0;
    }
  }

  else if (v4 == 2 && a2 == 4 && !a3)
  {
    return &off_100301688;
  }

  else
  {
    return &off_1003016C0;
  }
}

uint64_t sub_100159EF8(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_100159F0C(result, a2, a3);
  }

  return result;
}

uint64_t sub_100159F0C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_100159F24(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_10000F024(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100159F38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100159FB0()
{
  result = qword_100347E38;
  if (!qword_100347E38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100347E38);
  }

  return result;
}

uint64_t sub_10015A014()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10015A074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015A0DC()
{

  return _swift_deallocObject(v0, 64, 7);
}

BOOL sub_10015A19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8))(a2, a3);
  v5 = *(sub_1000089FC(a1, v4) + 16);

  return v5 != 0;
}

unint64_t sub_10015A1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v27[-v8];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v27[-v15];
  sub_10006C4AC(a1, v9);
  v17 = v11[6];
  if (v17(v9, 1, v10) == 1)
  {
    v18 = v9;
  }

  else
  {
    v19 = v9;
    v20 = v11[4];
    v20(v16, v19, v10);
    sub_10006C4AC(a2, v7);
    if (v17(v7, 1, v10) != 1)
    {
      v20(v14, v7, v10);
      Date.timeIntervalSince(_:)();
      *&v23 = v23;
      v24 = LODWORD(v23);
      v25 = v11[1];
      v25(v14, v10);
      v25(v16, v10);
      v22 = 0;
      v21 = v24 & 0x7FFFFFFF;
      return v21 | (v22 << 32);
    }

    (v11[1])(v16, v10);
    v18 = v7;
  }

  sub_1000097E8(v18, &qword_10033C280, &qword_100272A80);
  v21 = 0;
  v22 = 1;
  return v21 | (v22 << 32);
}

uint64_t sub_10015A48C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100347E50);
  sub_100003078(v0, qword_100347E50);
  return Logger.init(subsystem:category:)();
}

void sub_10015A50C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003390D0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100347E50);

  v16 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v7))
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100017494(0xD000000000000016, 0x80000001002A2790, &v17);
    *(v8 + 12) = 2080;
    v9 = OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_lastDiscoveryBeganDate;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v9, v2);
    sub_10015CC9C();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v3 + 8))(v5, v2);
    v13 = sub_100017494(v10, v12, &v17);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v16, v7, "%s: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v14 = v16;
  }
}

uint64_t sub_10015A7BC()
{
  type metadata accessor for LockscreenControlsAnalyticsManager(0);
  swift_allocObject();
  result = sub_10015A7FC();
  qword_10038B2D8 = result;
  return result;
}

uint64_t sub_10015A7FC()
{
  v1 = v0;
  v17 = sub_100035D04(&qword_100347FF8, &qword_100280438);
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = &v16 - v3;
  v5 = sub_100035D04(&qword_100348000, &unk_100280440);
  v6 = *(v5 - 8);
  v18 = v5;
  v19 = v6;
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  Date.init()();
  *(v0 + OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_discoveryDates) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_firstMeasurementDates) = _swiftEmptyDictionarySingleton;
  v9 = OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_backlightMonitor;
  v10 = [objc_allocWithZone(type metadata accessor for BacklightMonitor()) init];
  *(v1 + v9) = v10;
  v20 = OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_tasks;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_tasks) = &_swiftEmptySetSingleton;
  v16 = v10;

  v21 = sub_10005E680();
  sub_100035D04(&qword_10033C358, &qword_100272B70);
  sub_10000E244(&qword_100348008, &qword_10033C358, &qword_100272B70, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v11 = Publisher.eraseToAnyPublisher()();

  v21 = v11;
  swift_getKeyPath();
  sub_100035D04(&qword_100348010, &qword_100280478);
  sub_10000E244(&qword_100348018, &qword_100348010, &qword_100280478, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100348020, &qword_100347FF8, &qword_100280438, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  v12 = v17;
  Publisher<>.removeDuplicates()();
  (*(v2 + 8))(v4, v12);
  sub_10000E244(&qword_100348028, &qword_100348000, &unk_100280440, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v13 = v18;
  v14 = Publisher.eraseToAnyPublisher()();

  (*(v19 + 8))(v8, v13);
  v21 = v14;
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&unk_1003436E0, &unk_100276210);
  sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

uint64_t sub_10015AC70(_BYTE *a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1 == 1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v8 = result;
      Date.init()();
      v9 = OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_lastDiscoveryBeganDate;
      swift_beginAccess();
      (*(v4 + 24))(v8 + v9, v7, v3);
      swift_endAccess();
      sub_10015A50C();

      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

__n128 sub_10015ADC4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  *(&v71 + 1) = a3;
  v87 = a2;
  v80 = a4;
  v7 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v8 = __chkstk_darwin(v7 - 8);
  v75 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v85 = &v67 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v67 - v13;
  __chkstk_darwin(v12);
  v16 = &v67 - v15;
  v17 = type metadata accessor for Date();
  v89 = *(v17 - 8);
  __chkstk_darwin(v17);
  v83 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UUID();
  __chkstk_darwin(v19);
  v78 = v22;
  v79 = v21;
  v23 = *(v22 + 16);
  v86 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23();
  v24 = *(*(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext) + 24);
  v84 = v16;
  v25 = v17;
  if (v24)
  {
    v26 = v24;
    LODWORD(v71) = sub_1000AF120();
  }

  else
  {
    LODWORD(v71) = 7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v29 = sub_10000A0B4(v27, v28);
  v76 = v30;
  v77 = v29;

  v74 = *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_lastDistanceMeasurementQuality);
  v73 = *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_lastDistanceMeasurementQuality + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v72 = sub_10000E120();

  v31 = OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_lastDiscoveryBeganDate;
  swift_beginAccess();
  v32 = v25;
  v88 = *(v89 + 16);
  v88(v83, v5 + v31, v25);
  v33 = OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_discoveryDates;
  swift_beginAccess();
  v34 = *(v5 + v33);
  if (*(v34 + 16))
  {

    v35 = sub_100019110(v86);
    v36 = v84;
    if (v37)
    {
      v88(v84, *(v34 + 56) + *(v89 + 72) * v35, v25);
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }
  }

  else
  {
    v38 = 1;
    v36 = v84;
  }

  v39 = 1;
  v82 = *(v89 + 56);
  v82(v36, v38, 1, v25);
  v40 = OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_firstMeasurementDates;
  swift_beginAccess();
  v41 = *(v5 + v40);
  if (*(v41 + 16))
  {

    v42 = sub_100019110(v86);
    if (v43)
    {
      v88(v14, *(v41 + 56) + *(v89 + 72) * v42, v25);
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }
  }

  v44 = v82;
  v82(v14, v39, 1, v25);
  v45 = v85;
  v88(v85, *(&v71 + 1), v25);
  v44(v45, 0, 1, v25);
  if ((v87 & 0x100000000) != 0)
  {

    CurrentValueSubject.value.getter();
    if (BYTE5(v113))
    {
      CurrentValueSubject.value.getter();

      v87 = v106;
      v46 = BYTE4(v106);
    }

    else
    {
      v47 = BYTE4(v113);
      v87 = v113;

      v46 = v47 & 1;
    }
  }

  else
  {
    v46 = 0;
  }

  v70 = v46;
  v81 = v14;
  if (v71 <= 3u)
  {
    if (v71 > 1u)
    {
      if (v71 == 2)
      {
        *(&v71 + 1) = 0xE500000000000000;
        v48 = 0x656E6F6850;
      }

      else
      {
        *(&v71 + 1) = 0xE700000000000000;
        v48 = 0x74736163646F50;
      }
    }

    else if (v71)
    {
      *(&v71 + 1) = 0xE500000000000000;
      v48 = 0x636973754DLL;
    }

    else
    {
      *(&v71 + 1) = 0xE800000000000000;
      v48 = 0x656D695465636146;
    }

    goto LABEL_37;
  }

  if (v71 > 5u)
  {
    if (v71 == 6)
    {
      *(&v71 + 1) = 0xEB000000006C6C61;
      v48 = 0x436E776F6E6B6E55;
    }

    else if (v71 == 7)
    {
      *(&v71 + 1) = 0xEC00000061696465;
      v48 = 0x4D6E776F6E6B6E55;
    }

    else
    {
      *(&v71 + 1) = 0xE700000000000000;
      v48 = 0x6E776F6E6B6E55;
    }

    goto LABEL_37;
  }

  if (v71 != 4)
  {
    *(&v71 + 1) = 0x8000000100297170;
    v48 = 0xD00000000000001ALL;
LABEL_37:
    *&v71 = v48;
    goto LABEL_38;
  }

  *&v71 = 0xD000000000000019;
  *(&v71 + 1) = 0x8000000100297150;
LABEL_38:
  v49 = v75;
  v50 = v83;
  v51 = v88;
  v88(v75, v83, v25);
  v52 = v82;
  v82(v49, 0, 1, v25);
  v53 = sub_10015A1F4(v49, v36);
  v54 = BYTE4(v53);
  v67 = v53;
  sub_1000097E8(v49, &qword_10033C280, &qword_100272A80);
  v105 = v54 & 1;
  v55 = v81;
  v69 = sub_10015A1F4(v36, v81);
  v96 = BYTE4(v69) & 1;
  v56 = v85;
  v68 = sub_10015A1F4(v55, v85);
  v93 = BYTE4(v68) & 1;
  v51(v49, v50, v25);
  v52(v49, 0, 1, v25);
  v57 = sub_10015A1F4(v49, v56);
  sub_1000097E8(v49, &qword_10033C280, &qword_100272A80);
  v99 = BYTE4(v57) & 1;
  v102 = v70;
  v58 = sub_10020828C(v74, v73);
  v88 = v59;
  *&v113 = sub_100016BD4(v72);
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
  v60 = BidirectionalCollection<>.joined(separator:)();
  v62 = v61;
  sub_1000097E8(v56, &qword_10033C280, &qword_100272A80);
  sub_1000097E8(v81, &qword_10033C280, &qword_100272A80);
  sub_1000097E8(v84, &qword_10033C280, &qword_100272A80);
  (*(v89 + 8))(v50, v32);
  (*(v78 + 8))(v86, v79);

  v106 = v71;
  LODWORD(v107) = v67;
  BYTE4(v107) = v105;
  *(&v107 + 5) = v103;
  BYTE7(v107) = v104;
  DWORD2(v107) = v87;
  BYTE12(v107) = v102;
  *(&v107 + 13) = v100;
  HIBYTE(v107) = v101;
  LODWORD(v108) = v57;
  BYTE4(v108) = v99;
  BYTE7(v108) = v98;
  *(&v108 + 5) = v97;
  DWORD2(v108) = v69;
  BYTE12(v108) = v96;
  HIBYTE(v108) = v95;
  *(&v108 + 13) = v94;
  v109.n128_u64[0] = v77;
  v109.n128_u64[1] = v76;
  LODWORD(v110) = v68;
  BYTE4(v110) = v93;
  *(&v110 + 5) = v91;
  BYTE7(v110) = v92;
  *(&v110 + 1) = v58;
  *&v111 = v88;
  *(&v111 + 1) = v60;
  v112 = v62;
  v113 = v71;
  v114 = v67;
  v115 = v105;
  v116 = v103;
  v117 = v104;
  v118 = v87;
  v119 = v102;
  v121 = v101;
  v120 = v100;
  v122 = v57;
  v123 = v99;
  v125 = v98;
  v124 = v97;
  v126 = v69;
  v127 = v96;
  v129 = v95;
  v128 = v94;
  v130 = v77;
  v131 = v76;
  v132 = v68;
  v133 = v93;
  v135 = v92;
  v134 = v91;
  v136 = v58;
  v137 = v88;
  v138 = v60;
  v139 = v62;
  sub_10011D9B8(&v106, &v90);
  sub_10015CC40(&v113);
  v63 = v111;
  v64 = v80;
  *(v80 + 64) = v110;
  *(v64 + 80) = v63;
  *(v64 + 96) = v112;
  v65 = v107;
  *v64 = v106;
  *(v64 + 16) = v65;
  result = v109;
  *(v64 + 32) = v108;
  *(v64 + 48) = result;
  return result;
}

uint64_t sub_10015B870(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003390D0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100347E50);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Did switch route to %@", v10, 0xCu);
    sub_1000097E8(v11, &qword_100339940, &unk_100272C50);
  }

  Date.init()();
  sub_10015BB10(v7, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10015BB10(void *a1, uint64_t a2)
{
  if (qword_100338E78 != -1)
  {
    v24 = a1;
    swift_once();
    a1 = v24;
  }

  v3 = *(*(qword_10038AEE0 + 16) + 24);
  if (v3 && (v4 = (*(v3 + 16) + qword_100346AF8), v5 = a1, , os_unfair_lock_lock(v4), v6 = , sub_10015CA2C(v6, v5), v8 = v7, , v5, os_unfair_lock_unlock(v4), , v8))
  {
    v9 = [v5 distance];
    v10 = v9;
    if (v9)
    {
      [v9 floatValue];
      v12 = v11;

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    LOBYTE(v27[0]) = v10 == 0;
    sub_10015ADC4(v8, v13 | ((v10 == 0) << 32), a2, v29);
    if (qword_1003390D0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003078(v16, qword_100347E50);
    sub_10011D9B8(v29, v27);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    sub_10015CC40(v29);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      v27[4] = v29[4];
      v27[5] = v29[5];
      v28 = v30;
      v27[0] = v29[0];
      v27[1] = v29[1];
      v27[2] = v29[2];
      v27[3] = v29[3];
      sub_10011D9B8(v29, &v25);
      v21 = String.init<A>(describing:)();
      v23 = sub_100017494(v21, v22, &v26);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Logging: %s", v19, 0xCu);
      sub_10000903C(v20);
    }

    sub_10011843C();

    return sub_10015CC40(v29);
  }

  else
  {
    sub_10011D74C();
    swift_allocError();
    *v14 = 0xD000000000000018;
    v14[1] = 0x80000001002A2800;
    return swift_willThrow();
  }
}

uint64_t sub_10015BE48(uint64_t a1)
{
  v3 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003390D0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_100347E50);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v25 = v6;
    v16 = v15;
    v27[0] = v15;
    *v14 = 136315138;
    v18 = sub_1000092A0(v15, v17);
    v20 = sub_100017494(v18, v19, v27);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Ranging did discover %s", v14, 0xCu);
    sub_10000903C(v16);
    v6 = v25;
  }

  v21 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  (*(v7 + 16))(v9, a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id, v6);
  Date.init()();
  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 56))(v5, 0, 1, v22);
  swift_beginAccess();
  sub_1001CF9B4(v5, v9);
  swift_endAccess();
  swift_beginAccess();
  sub_1001D0B58(a1 + v21, v5);
  sub_1000097E8(v5, &qword_10033C280, &qword_100272A80);
  return swift_endAccess();
}

uint64_t sub_10015C174(uint64_t a1)
{
  v2 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  __chkstk_darwin(v2 - 8);
  v4 = &v17[-1] - v3;
  if (qword_1003390D0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100347E50);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136315138;
    v11 = sub_1000092A0(v9, v10);
    v13 = sub_100017494(v11, v12, v17);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Ranging did remove %s", v8, 0xCu);
    sub_10000903C(v9);
  }

  v14 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  swift_beginAccess();
  sub_1001D0B58(a1 + v14, v4);
  sub_1000097E8(v4, &qword_10033C280, &qword_100272A80);
  swift_endAccess();
  swift_beginAccess();
  sub_1001D0B58(a1 + v14, v4);
  sub_1000097E8(v4, &qword_10033C280, &qword_100272A80);
  return swift_endAccess();
}

uint64_t sub_10015C3CC(uint64_t a1)
{
  v43 = a1;
  v41 = type metadata accessor for UUID();
  v2 = *(v41 - 8);
  __chkstk_darwin(v41);
  v42 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v38 - v8;
  v10 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  v11 = OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_firstMeasurementDates;
  swift_beginAccess();
  v40 = v1;
  v12 = *(v1 + v11);
  if (*(v12 + 16))
  {

    v13 = sub_100019110(v43 + v10);
    if (v14)
    {
      v15 = v13;
      v16 = *(v12 + 56);
      v17 = type metadata accessor for Date();
      v18 = *(v17 - 8);
      (*(v18 + 16))(v9, v16 + *(v18 + 72) * v15, v17);

      (*(v18 + 56))(v9, 0, 1, v17);
      return sub_1000097E8(v9, &qword_10033C280, &qword_100272A80);
    }
  }

  v39 = v2;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v23 = v21 + 56;
  v22(v9, 1, 1, v20);
  sub_1000097E8(v9, &qword_10033C280, &qword_100272A80);
  if (qword_1003390D0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100003078(v24, qword_100347E50);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v38[1] = v23;
    v28 = v27;
    v29 = swift_slowAlloc();
    v38[2] = v11;
    v30 = v29;
    v44[0] = v29;
    *v28 = 136315138;
    v32 = sub_1000092A0(v29, v31);
    v34 = v20;
    v35 = v22;
    v36 = sub_100017494(v32, v33, v44);

    *(v28 + 4) = v36;
    v22 = v35;
    v20 = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "Ranging did update %s", v28, 0xCu);
    sub_10000903C(v30);
  }

  v37 = v42;
  (*(v39 + 16))(v42, v43 + v10, v41);
  Date.init()();
  v22(v7, 0, 1, v20);
  swift_beginAccess();
  sub_1001CF9B4(v7, v37);
  return swift_endAccess();
}

uint64_t sub_10015C84C()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold34LockscreenControlsAnalyticsManager_lastDiscoveryBeganDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LockscreenControlsAnalyticsManager(uint64_t a1)
{
  result = qword_100347EA8;
  if (!qword_100347EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015C97C(uint64_t a1)
{
  result = type metadata accessor for Date();
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

void sub_10015CA2C(uint64_t a1, void *a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v19 = v2;
  while (v5)
  {
    v8 = v7;
LABEL_11:
    v5 &= v5 - 1;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v11 = sub_10000DF0C(v9, v10);
    v13 = v12;

    v14 = [a2 mediaRouteID];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v13)
    {
      if (v11 == v15 && v13 == v17)
      {

        return;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
LABEL_16:

        return;
      }
    }

    else
    {
    }

    v7 = v8;
    v2 = v19;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      goto LABEL_16;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_10015CC9C()
{
  result = qword_100345628;
  if (!qword_100345628)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100345628);
  }

  return result;
}

__n128 sub_10015CCF4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_10015CD30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 177))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 88);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10015CD8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for HandoffTargetStatus(uint64_t a1)
{
  result = qword_100348090;
  if (!qword_100348090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10015CE94(uint64_t a1)
{
  sub_10015CF30();
  if (v1 <= 0x3F)
  {
    sub_10015CF80(319);
    if (v2 <= 0x3F)
    {
      sub_10015CFD8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10015CF30()
{
  if (!qword_1003480A0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003480A0);
    }
  }
}

void sub_10015CF80(uint64_t a1)
{
  if (!qword_1003480A8)
  {
    type metadata accessor for ShareableContent(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1003480A8);
    }
  }
}

void sub_10015CFD8(uint64_t a1)
{
  if (!qword_1003480B0)
  {
    sub_100035D4C(&unk_1003480B8, &qword_100280538);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1003480B0);
    }
  }
}

uint64_t sub_10015D03C(uint64_t a1)
{
  v5[3] = a1;
  v2 = sub_10000F798(v5);
  sub_10015DE6C(v1, v2);
  v3 = sub_1000CF5E0(v5);
  sub_10000903C(v5);
  return v3;
}

uint64_t sub_10015D098(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_100348168, &qword_1002806F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_10000EBC0(a1, a1[3]);
  sub_10015E3D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 4);
  v10 = *(v3 + 40);
  v11 = v3[1];
  v16 = *v3;
  v17 = v11;
  v18 = v9;
  v19 = v10;
  v15 = 0;
  sub_10015E59C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v12 = type metadata accessor for HandoffTargetStatus(0);
    LOBYTE(v16) = 1;
    type metadata accessor for ShareableContent(0);
    sub_10015E5F0(&qword_100348178, type metadata accessor for ShareableContent, &unk_10028B9D0);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v16 = *(v3 + *(v12 + 24));
    v15 = 2;
    sub_100035D04(&unk_1003480B8, &qword_100280538);
    sub_10015E638(&qword_100348180, sub_10015E6B0, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10015D304@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_100035D04(&qword_100348030, qword_1002804F0);
  __chkstk_darwin(v3 - 8);
  v27 = &v24 - v4;
  v5 = sub_100035D04(&qword_100348138, &qword_1002806F0);
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for HandoffTargetStatus(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = xmmword_100270E80;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  *(v11 + 2) = 0;
  v11[40] = 0;
  v12 = *(v9 + 28);
  v13 = type metadata accessor for ShareableContent(0);
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  v14 = *(v9 + 32);
  *&v11[v14] = 0;
  sub_10000EBC0(a1, a1[3]);
  sub_10015E3D4();
  v28 = v7;
  v15 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    v23 = a1;
  }

  else
  {
    v24 = v14;
    v25 = v12;
    v31 = a1;
    v16 = v27;
    v36 = 0;
    sub_10015E484();
    v17 = v30;
    v18 = v28;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v34;
    v20 = v35;
    v21 = v33;
    *v11 = v32;
    *(v11 + 1) = v21;
    *(v11 + 4) = v19;
    v11[40] = v20;
    LOBYTE(v32) = 1;
    sub_10015E5F0(&qword_100348150, type metadata accessor for ShareableContent, &unk_10028B9F8);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10015E4D8(v16, &v11[v25]);
    sub_100035D04(&unk_1003480B8, &qword_100280538);
    v36 = 2;
    sub_10015E638(&qword_100348158, sub_10015E548, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v29 + 8))(v18, v17);
    *&v11[v24] = v32;
    sub_10015DE6C(v11, v26);
    v23 = v31;
  }

  sub_10000903C(v23);
  return sub_10015E428(v11);
}

unint64_t sub_10015D6D8()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x7367616C66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x697463416C6C6163;
  }
}

uint64_t sub_10015D73C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10015DED0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10015D764(uint64_t a1)
{
  v2 = sub_10015E3D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015D7A0(uint64_t a1)
{
  v2 = sub_10015E3D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015D80C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 1);
  v5 = *(v1 + 16);
  v10 = a1;
  LOWORD(v8[0]) = v2;
  BYTE2(v8[0]) = v3;
  v8[1] = v4;
  v9 = v5;
  v6 = sub_1000CF61C(v8);
  sub_10000903C(v8);
  return v6;
}

unint64_t sub_10015D874()
{
  v1 = 0x697463416C6C6163;
  v2 = 0x6353657669746361;
  if (*v0 != 2)
  {
    v2 = 0x4174756F656D6974;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_10015D910@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10015DFF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10015D938(uint64_t a1)
{
  v2 = sub_10015E380();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015D974(uint64_t a1)
{
  v2 = sub_10015E380();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015D9B0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = sub_100035D04(&qword_100348130, &qword_1002806E8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_10000EBC0(a1, a1[3]);
  sub_10015E380();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v4)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v15 = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v14 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v13 = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10015DB84@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10015E16C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = BYTE2(result);
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_10015DC3C(uint64_t a1)
{
  *(a1 + 8) = sub_10015E5F0(&qword_1003480F0, type metadata accessor for HandoffTargetStatus, &unk_100280568);
  result = sub_10015E5F0(&qword_1003480F8, type metadata accessor for HandoffTargetStatus, &unk_100280540);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10015DCC0(uint64_t a1)
{
  *(a1 + 8) = sub_10015DCF0();
  result = sub_10015DD44();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10015DCF0()
{
  result = qword_100348100;
  if (!qword_100348100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348100);
  }

  return result;
}

unint64_t sub_10015DD44()
{
  result = qword_100348108;
  if (!qword_100348108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348108);
  }

  return result;
}

unint64_t sub_10015DD98(uint64_t a1)
{
  result = sub_10015DDC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10015DDC0()
{
  result = qword_100348110;
  if (!qword_100348110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348110);
  }

  return result;
}

uint64_t sub_10015DE14(uint64_t a1)
{
  result = sub_10015E5F0(&qword_100348118, type metadata accessor for HandoffTargetStatus, &unk_10028069C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10015DE6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandoffTargetStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015DED0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463416C6C6163 && a2 == 0xEC00000079746976;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002A28A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10015DFF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463416C6C6163 && a2 == 0xEC00000079746976;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002A28A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6353657669746361 && a2 == 0xEF6F666E49656E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4174756F656D6974 && a2 == 0xEC00000072657466)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10015E16C(void *a1)
{
  v3 = sub_100035D04(&qword_100348120, &qword_1002806E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  sub_10000EBC0(a1, a1[3]);
  sub_10015E380();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10000903C(a1);
  }

  v15 = 0;
  v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = 1;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = 2;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = 3;
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_10000903C(a1);
  return v7 | (v8 << 8) | (v11 << 16);
}

unint64_t sub_10015E380()
{
  result = qword_100348128;
  if (!qword_100348128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348128);
  }

  return result;
}

unint64_t sub_10015E3D4()
{
  result = qword_100348140;
  if (!qword_100348140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348140);
  }

  return result;
}

uint64_t sub_10015E428(uint64_t a1)
{
  v2 = type metadata accessor for HandoffTargetStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10015E484()
{
  result = qword_100348148;
  if (!qword_100348148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348148);
  }

  return result;
}

uint64_t sub_10015E4D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_100348030, qword_1002804F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10015E548()
{
  result = qword_100348160;
  if (!qword_100348160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348160);
  }

  return result;
}

unint64_t sub_10015E59C()
{
  result = qword_100348170;
  if (!qword_100348170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348170);
  }

  return result;
}

uint64_t sub_10015E5F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10015E638(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&unk_1003480B8, &qword_100280538);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10015E6B0()
{
  result = qword_100348188;
  if (!qword_100348188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348188);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandoffTargetStatusRequest(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[17])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HandoffTargetStatusRequest(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_10015E7DC()
{
  result = qword_100348190;
  if (!qword_100348190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348190);
  }

  return result;
}

unint64_t sub_10015E834()
{
  result = qword_100348198;
  if (!qword_100348198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348198);
  }

  return result;
}

unint64_t sub_10015E88C()
{
  result = qword_1003481A0;
  if (!qword_1003481A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003481A0);
  }

  return result;
}

unint64_t sub_10015E8E4()
{
  result = qword_1003481A8;
  if (!qword_1003481A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003481A8);
  }

  return result;
}

unint64_t sub_10015E93C()
{
  result = qword_1003481B0;
  if (!qword_1003481B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003481B0);
  }

  return result;
}

unint64_t sub_10015E994()
{
  result = qword_1003481B8;
  if (!qword_1003481B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003481B8);
  }

  return result;
}

id sub_10015EA28(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t static EdgeBuilder.buildExpression<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[6] = a1;
  type metadata accessor for Array();
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = swift_getAssociatedConformanceWitness();
  v10[4] = swift_getAssociatedConformanceWitness();
  type metadata accessor for Edge2(255, v10);
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return Sequence.flatMap<A>(_:)();
}

uint64_t static EdgeBuilder.buildBlock<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Array();
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v11[5] = Sequence.flatMap<A>(_:)();
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = swift_getAssociatedConformanceWitness();
  v11[4] = swift_getAssociatedConformanceWitness();
  type metadata accessor for Edge2(255, v11);
  type metadata accessor for Array();
  swift_getWitnessTable();
  v9 = Sequence.flatMap<A>(_:)();

  return v9;
}

uint64_t static EdgeBuilder.buildArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for Array();
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return Sequence.flatMap<A>(_:)();
}

uint64_t static EdgeBuilder.buildBlock()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  type metadata accessor for Edge2(0, v6);
  return static Array._allocateUninitialized(_:)();
}

uint64_t sub_10015EEA0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 48) + 16))(*(v1 + 40));
  *a1 = result;
  return result;
}

uint64_t static EdgeBuilder.buildOptional<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = static Array._allocateUninitialized(_:)();
  }

  return v5;
}

unint64_t sub_10015EFB8()
{
  result = qword_1003482D0;
  if (!qword_1003482D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003482D0);
  }

  return result;
}

unint64_t sub_10015F01C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a1;
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v11 = 0x286C696166;
      if (a2)
      {

        v5 = String.init<A>(describing:)();
        v8 = v7;
      }

      else
      {
        sub_100094CC0(a1, 0, 2);
        v8 = 0xE300000000000000;
        v5 = 7104878;
      }

LABEL_17:
      v6 = v8;
      goto LABEL_18;
    }

    if (a3 != 3)
    {
      return 0x746E6573657270;
    }

    _StringGuts.grow(_:)(22);

    v4 = 0xD000000000000013;
LABEL_11:
    v11 = v4;
    if (v3)
    {
      v5 = 1702195828;
    }

    else
    {
      v5 = 0x65736C6166;
    }

    if (v3)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    goto LABEL_17;
  }

  if (a3)
  {
    _StringGuts.grow(_:)(21);

    v4 = 0xD000000000000012;
    goto LABEL_11;
  }

  _StringGuts.grow(_:)(23);

  v11 = 0xD000000000000014;
  v5 = String.init<A>(describing:)();
LABEL_18:
  String.append(_:)(*&v5);

  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return v11;
}

BOOL sub_10015F21C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      if (!a6)
      {
        return *&a1 == *&a4;
      }

      return 0;
    }

    if (a6 == 1)
    {
      return (a4 ^ a1 ^ 1) & 1;
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        if (a6 != 3)
        {
          return 0;
        }

        return (a4 ^ a1 ^ 1) & 1;
      }

      return a6 == 4 && !(a5 | a4);
    }

    if (a6 == 2)
    {
      if (a2)
      {
        return a5 && (a1 == a4 && a2 == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
      }

      if (!a5)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_10015F318(char a1)
{
  v1 = qword_100338F18;
  if (!a1)
  {
LABEL_7:
    if (v1 != -1)
    {
      swift_once();
    }

    v9 = qword_10038B0B8;
    v10 = *(qword_10038B0B8 + 1624);
    sub_10005FA50();
    v12 = v11;

    v13 = *(v9 + 1616);
    sub_10005FA50();
    v15 = v14;

    if (v12 > v15)
    {
      __break(1u);
      goto LABEL_11;
    }

    return;
  }

  if (a1 != 1)
  {
LABEL_11:
    if (v1 != -1)
    {
      swift_once();
    }

    v16 = qword_10038B0B8;
    v17 = *(qword_10038B0B8 + 1640);
    sub_10005FA50();
    v19 = v18;

    v20 = *(v16 + 1616);
    sub_10005FA50();
    v22 = v21;

    if (v19 > v22)
    {
      __break(1u);
    }

    return;
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = qword_10038B0B8;
  v3 = *(qword_10038B0B8 + 1632);
  sub_10005FA50();
  v5 = v4;

  v6 = *(v2 + 1616);
  sub_10005FA50();
  v8 = v7;

  if (v5 > v8)
  {
    __break(1u);
    goto LABEL_7;
  }
}

void sub_10015F4A0(char a1)
{
  v1 = qword_100338F18;
  if (!a1)
  {
LABEL_7:
    if (v1 != -1)
    {
      swift_once();
    }

    v9 = qword_10038B0B8;
    v10 = *(qword_10038B0B8 + 1624);
    sub_10005FA50();
    v12 = v11;

    v13 = *(v9 + 1696);
    sub_10005FA50();
    v15 = v14;

    if (v12 > v15)
    {
      __break(1u);
      goto LABEL_11;
    }

    return;
  }

  if (a1 != 1)
  {
LABEL_11:
    if (v1 != -1)
    {
      swift_once();
    }

    v16 = qword_10038B0B8;
    v17 = *(qword_10038B0B8 + 1640);
    sub_10005FA50();
    v19 = v18;

    v20 = *(v16 + 1712);
    sub_10005FA50();
    v22 = v21;

    if (v19 > v22)
    {
      __break(1u);
    }

    return;
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = qword_10038B0B8;
  v3 = *(qword_10038B0B8 + 1632);
  sub_10005FA50();
  v5 = v4;

  v6 = *(v2 + 1704);
  sub_10005FA50();
  v8 = v7;

  if (v5 > v8)
  {
    __break(1u);
    goto LABEL_7;
  }
}

uint64_t sub_10015F628(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656772616CLL;
  if (v2 != 1)
  {
    v3 = 0x726568746FLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x746C7561666564;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x656772616CLL;
  if (*a2 != 1)
  {
    v6 = 0x726568746FLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_10015F71C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10015F7B8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10015F840(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10015F8D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10015FAE0(*a1);
  *a2 = result;
  return result;
}

void sub_10015F908(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x656772616CLL;
  if (v2 != 1)
  {
    v4 = 0x726568746FLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_10015FA24()
{
  result = qword_1003482D8;
  if (!qword_1003482D8)
  {
    sub_100035D4C(&qword_1003482E0, qword_100280C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003482D8);
  }

  return result;
}

unint64_t sub_10015FA8C()
{
  result = qword_1003482E8;
  if (!qword_1003482E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003482E8);
  }

  return result;
}

unint64_t sub_10015FAE0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100301710, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10015FB2C()
{
  result = qword_1003482F0[0];
  if (!qword_1003482F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1003482F0);
  }

  return result;
}

uint64_t sub_10015FB80(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_10015FC2C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100165238(a1, a2);
  *a3 = v5 & 1 | (result != 0);
  return result;
}

uint64_t sub_10015FC64@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100010708(a1, a2);
  *a3 = 1;
  return result;
}

unint64_t sub_10015FCA8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100078D7C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10015FCD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100010708(a1, a2);
  *a3 = 3;
  return result;
}

unint64_t sub_10015FD08@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C7FA0(a1);
  *a2 = result;
  return result;
}

unint64_t sub_10015FD3C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C7FEC(a1);
  *a2 = result;
  return result;
}

unint64_t sub_10015FD64@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = sub_100165238(a1, a2);
  if ((v5 & 1) != 0 || (result = sub_1000CB020(v4), result == 5))
  {
    result = 5;
  }

  *a3 = result;
  return result;
}

uint64_t sub_10015FDA4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_100165238(a1, a2);
  if ((v4 & 1) != 0 || (result = sub_1000CFBA0(), result == 13))
  {
    result = 13;
  }

  *a3 = result;
  return result;
}

uint64_t sub_10015FDE4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100010708(a1, a2);
  *a3 = 13;
  return result;
}

uint64_t sub_10015FE10@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10015FE50@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_100010708(a1, a2);
  *a3 = 0;
  return result;
}

uint64_t sub_10015FE78@<X0>(uint64_t a1@<X8>)
{
  v3 = (swift_isaMask & *v1);
  v4 = v3;
  v5 = v3[10];
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v64 - v12;
  __chkstk_darwin(v11);
  v15 = &v64 - v14;
  v16 = *(v1 + v3[14]);
  if (v16)
  {
    v72 = a1;
    v73 = v5;
    v17 = (v1 + v3[13]);
    v18 = *v17;
    v19 = v17[1];
    v20 = v16;
    v70 = v18;
    v71 = v19;
    v21 = v20;
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 objectForKey:v22];

    if (v23)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10001766C(v75, v74);
      v24 = v73;
      if (swift_dynamicCast())
      {
        sub_10000903C(v75);

        v25 = *(v24 - 8);
        (*(v25 + 56))(v15, 0, 1, v24);
        return (*(v25 + 32))(v72, v15, v24);
      }

      else
      {
        v68 = *(v24 - 8);
        v69 = v1;
        (*(v68 + 56))(v15, 1, 1, v24);
        v66 = *(v7 + 8);
        v67 = v7 + 8;
        v66(v15, v6);
        v29 = v24;
        v30 = v70;
        v31 = String._bridgeToObjectiveC()();
        v32 = [v21 stringForKey:v31];

        if (v32)
        {
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          (*(v4[11] + 16))(v33, v35, v29);
          v36 = v68;
          if ((*(v68 + 48))(v13, 1, v29) == 1)
          {
            v66(v13, v6);
            v37 = v69;
            v38 = Logger.logObject.getter();
            v39 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              v41 = swift_slowAlloc();
              v74[0] = v41;
              *v40 = 136315138;
              *(v40 + 4) = sub_100017494(v70, v71, v74);
              _os_log_impl(&_mh_execute_header, v38, v39, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v40, 0xCu);
              sub_10000903C(v41);
            }

            sub_10000903C(v75);
            return (*(v36 + 16))(v72, v37 + *((swift_isaMask & *v37) + 0x60), v73);
          }

          else
          {
            sub_10000903C(v75);

            return (*(v36 + 32))(v72, v13, v29);
          }
        }

        else
        {
          v42 = String._bridgeToObjectiveC()();
          v65 = v21;
          v43 = [v21 dataForKey:v42];

          if (v43)
          {
            v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v46 = v45;

            v47 = v4[11];
            v48 = *(v47 + 24);
            sub_10006DA04(v44, v46);
            v49 = v73;
            v48(v44, v46, v73, v47);
            v50 = v68;
            if ((*(v68 + 48))(v10, 1, v49) == 1)
            {
              v66(v10, v6);
              v51 = v69;
              v52 = Logger.logObject.getter();
              v53 = static os_log_type_t.error.getter();

              v54 = os_log_type_enabled(v52, v53);
              v55 = v65;
              if (v54)
              {
                v56 = swift_slowAlloc();
                v57 = swift_slowAlloc();
                v74[0] = v57;
                *v56 = 136315138;
                *(v56 + 4) = sub_100017494(v70, v71, v74);
                _os_log_impl(&_mh_execute_header, v52, v53, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v56, 0xCu);
                sub_10000903C(v57);

                sub_100010708(v44, v46);
              }

              else
              {

                sub_100010708(v44, v46);
              }

              sub_10000903C(v75);
              return (*(v50 + 16))(v72, v51 + *((swift_isaMask & *v51) + 0x60), v73);
            }

            else
            {
              sub_10000903C(v75);

              sub_100010708(v44, v46);
              return (*(v50 + 32))(v72, v10, v49);
            }
          }

          else
          {
            v58 = v30;
            v59 = v69;
            v60 = Logger.logObject.getter();
            v61 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              v74[0] = v63;
              *v62 = 136315138;
              *(v62 + 4) = sub_100017494(v58, v71, v74);
              _os_log_impl(&_mh_execute_header, v60, v61, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v62, 0xCu);
              sub_10000903C(v63);
            }

            sub_10000903C(v75);
            return (*(v68 + 16))(v72, v59 + *((swift_isaMask & *v59) + 0x60), v73);
          }
        }
      }
    }

    v3 = (swift_isaMask & *v1);
    a1 = v72;
    v5 = v73;
  }

  v27 = *(*(v5 - 8) + 16);
  v28 = v1 + v3[12];

  return v27(a1, v28, v5);
}

id sub_1001607FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (swift_isaMask & *v4);
  v6 = *(v4 + v5[14]);
  if (v6)
  {
    v7 = v6;

    v8 = String._bridgeToObjectiveC()();

    [v7 removeObserver:v4 forKeyPath:v8 context:0];
  }

  v9 = type metadata accessor for UserDefault(0, v5[10], v5[11], a4);
  v11.receiver = v4;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

double sub_100160924(char *a1)
{
  (*(*(*((swift_isaMask & *a1) + 0x50) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0x60)]);

  v2 = *((swift_isaMask & *a1) + 0x80);
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&a1[v2], v3);

  return result;
}

uint64_t sub_100160A80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    v10 = a5;
    v11 = a1;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_100165F94(&qword_100339C10, type metadata accessor for NSKeyValueChangeKey, &unk_100270B34);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_7:
  sub_100165888(v13);

  return sub_1000097E8(v13, &unk_100339680, &qword_100278390);
}

uint64_t sub_100160BF0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 7107189;
    v6 = 1684632949;
    if (a1 != 8)
    {
      v6 = 1701736302;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x676E69727473;
    if (a1 != 5)
    {
      v7 = 0x3233746E6975;
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
    v1 = 1819242338;
    v2 = 1702125924;
    v3 = 0x656C62756F64;
    if (a1 != 3)
    {
      v3 = 7630441;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1635017060;
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

uint64_t sub_100160CE8(void *a1)
{
  v2 = sub_100035D04(&qword_1003484E0, &qword_100281000);
  v88 = *(v2 - 8);
  v89 = v2;
  __chkstk_darwin(v2);
  v86 = &v59 - v3;
  v4 = sub_100035D04(&qword_1003484E8, &qword_100281008);
  v93 = *(v4 - 8);
  v94 = v4;
  __chkstk_darwin(v4);
  v90 = &v59 - v5;
  v6 = type metadata accessor for UUID();
  v91 = *(v6 - 8);
  v92 = v6;
  __chkstk_darwin(v6);
  v87 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100035D04(&qword_1003484F0, &qword_100281010);
  v84 = *(v8 - 8);
  v85 = v8;
  __chkstk_darwin(v8);
  v81 = &v59 - v9;
  v10 = type metadata accessor for URL();
  v82 = *(v10 - 8);
  v83 = v10;
  __chkstk_darwin(v10);
  v80 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100035D04(&qword_1003484F8, &qword_100281018);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v59 - v12;
  v77 = sub_100035D04(&qword_100348500, &qword_100281020);
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v59 - v13;
  v73 = sub_100035D04(&qword_100348508, &qword_100281028);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v59 - v14;
  v68 = sub_100035D04(&qword_100348510, &qword_100281030);
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v63 = &v59 - v15;
  v70 = sub_100035D04(&qword_100348518, &qword_100281038);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v64 = &v59 - v16;
  v67 = type metadata accessor for Date();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100035D04(&qword_100348520, &qword_100281040);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v19 = &v59 - v18;
  v20 = sub_100035D04(&qword_100348528, &qword_100281048);
  v59 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v59 - v21;
  v23 = type metadata accessor for UserDefaultsRepresentation(0);
  __chkstk_darwin(v23);
  v25 = (&v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_100035D04(&qword_100348530, &qword_100281050);
  v27 = *(v26 - 8);
  v97 = v26;
  v98 = v27;
  __chkstk_darwin(v26);
  v29 = &v59 - v28;
  sub_10000EBC0(a1, a1[3]);
  sub_100165ADC();
  v96 = v29;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100165F30(v95, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        LOBYTE(v99) = 6;
        sub_100165C90();
        v48 = v76;
        v41 = v96;
        v40 = v97;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v49 = v79;
        KeyedEncodingContainer.encode(_:forKey:)();
        v50 = &v102;
LABEL_21:
        (*(*(v50 - 32) + 8))(v48, v49);
        return (*(v98 + 8))(v41, v40);
      }

      LOBYTE(v99) = 5;
      sub_100165CE4();
      v46 = v74;
      v41 = v96;
      v40 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v47 = v77;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v75 + 8))(v46, v47);
      return (*(v98 + 8))(v41, v40);
    }

    if (EnumCaseMultiPayload == 7)
    {
      v37 = v82;
      v36 = v83;
      v38 = v80;
      (*(v82 + 32))(v80, v25, v83);
      LOBYTE(v99) = 7;
      sub_100165C3C();
      v39 = v81;
      v41 = v96;
      v40 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100165F94(&qword_100348538, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v42 = v85;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v43 = v84;
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        LOBYTE(v99) = 9;
        sub_100165B30();
        v51 = v86;
        v53 = v96;
        v52 = v97;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v88 + 8))(v51, v89);
        return (*(v98 + 8))(v53, v52);
      }

      v37 = v91;
      v36 = v92;
      v38 = v87;
      (*(v91 + 32))(v87, v25, v92);
      LOBYTE(v99) = 8;
      sub_100165BE8();
      v39 = v90;
      v41 = v96;
      v40 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100165F94(&qword_1003437D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v42 = v94;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v43 = v93;
    }

LABEL_16:
    (*(v43 + 8))(v39, v42);
    (*(v37 + 8))(v38, v36);
    return (*(v98 + 8))(v41, v40);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        LOBYTE(v99) = 3;
        sub_100165D8C();
        v31 = v63;
        v33 = v96;
        v32 = v97;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v34 = v68;
        KeyedEncodingContainer.encode(_:forKey:)();
        (*(v66 + 8))(v31, v34);
        return (*(v98 + 8))(v33, v32);
      }

      LOBYTE(v99) = 4;
      sub_100165D38();
      v48 = v71;
      v41 = v96;
      v40 = v97;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v49 = v73;
      KeyedEncodingContainer.encode(_:forKey:)();
      v50 = &v101;
      goto LABEL_21;
    }

    v37 = v65;
    v38 = v62;
    v36 = v67;
    (*(v65 + 32))(v62, v25, v67);
    LOBYTE(v99) = 2;
    sub_100165DE0();
    v39 = v64;
    v41 = v96;
    v40 = v97;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100165F94(&qword_100346608, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v42 = v70;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v43 = v69;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload)
  {
    v54 = *v25;
    v55 = v25[1];
    LOBYTE(v99) = 1;
    sub_100165E34();
    v56 = v96;
    v57 = v97;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v99 = v54;
    v100 = v55;
    sub_100165FDC();
    v58 = v61;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v60 + 8))(v19, v58);
    (*(v98 + 8))(v56, v57);
    return sub_100010708(v54, v55);
  }

  else
  {
    LOBYTE(v99) = 0;
    sub_100165EDC();
    v45 = v96;
    v44 = v97;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v59 + 8))(v22, v20);
    return (*(v98 + 8))(v45, v44);
  }
}

uint64_t sub_100161BD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v118 = sub_100035D04(&qword_100348420, &qword_100280FA0);
  v115 = *(v118 - 8);
  __chkstk_darwin(v118);
  v125 = &v92 - v3;
  v119 = sub_100035D04(&qword_100348428, &qword_100280FA8);
  v120 = *(v119 - 8);
  __chkstk_darwin(v119);
  v127 = &v92 - v4;
  v117 = sub_100035D04(&qword_100348430, &qword_100280FB0);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v126 = &v92 - v5;
  v114 = sub_100035D04(&qword_100348438, &qword_100280FB8);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v134 = &v92 - v6;
  v112 = sub_100035D04(&qword_100348440, &qword_100280FC0);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v124 = &v92 - v7;
  v110 = sub_100035D04(&qword_100348448, &qword_100280FC8);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v123 = &v92 - v8;
  v108 = sub_100035D04(&qword_100348450, &qword_100280FD0);
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v122 = &v92 - v9;
  v105 = sub_100035D04(&qword_100348458, &qword_100280FD8);
  v106 = *(v105 - 8);
  __chkstk_darwin(v105);
  v133 = &v92 - v10;
  v103 = sub_100035D04(&qword_100348460, &qword_100280FE0);
  v104 = *(v103 - 8);
  __chkstk_darwin(v103);
  v132 = &v92 - v11;
  v102 = sub_100035D04(&qword_100348468, &qword_100280FE8);
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v121 = &v92 - v12;
  v131 = sub_100035D04(&qword_100348470, &unk_100280FF0);
  v129 = *(v131 - 8);
  __chkstk_darwin(v131);
  v14 = &v92 - v13;
  v128 = type metadata accessor for UserDefaultsRepresentation(0);
  v15 = __chkstk_darwin(v128);
  v100 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v99 = &v92 - v18;
  v19 = __chkstk_darwin(v17);
  v98 = (&v92 - v20);
  v21 = __chkstk_darwin(v19);
  v97 = (&v92 - v22);
  v23 = __chkstk_darwin(v21);
  v96 = (&v92 - v24);
  v25 = __chkstk_darwin(v23);
  v27 = &v92 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v92 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v92 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v92 - v35;
  __chkstk_darwin(v34);
  v38 = &v92 - v37;
  v39 = a1[3];
  v136 = a1;
  sub_10000EBC0(a1, v39);
  sub_100165ADC();
  v130 = v14;
  v40 = v137;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v40)
  {
    v92 = v36;
    v93 = v33;
    v94 = v27;
    v95 = v30;
    v41 = v132;
    v42 = v133;
    v137 = v38;
    v44 = v134;
    v43 = v135;
    v45 = v131;
    v46 = v130;
    v47 = KeyedDecodingContainer.allKeys.getter();
    v48 = (2 * *(v47 + 16)) | 1;
    v139 = v47;
    v140 = v47 + 32;
    v141 = 0;
    v142 = v48;
    v49 = sub_100217224();
    if (v49 != 10 && v141 == v142 >> 1)
    {
      if (v49 <= 4u)
      {
        if (v49 <= 1u)
        {
          if (v49)
          {
            LOBYTE(v138) = 1;
            sub_100165E34();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            sub_100165E88();
            v77 = v103;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v104 + 8))(v41, v77);
            (*(v129 + 8))(v46, v45);
            swift_unknownObjectRelease();
            v82 = v93;
            *v93 = v138;
          }

          else
          {
            LOBYTE(v138) = 0;
            sub_100165EDC();
            v61 = v121;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v62 = v102;
            v63 = KeyedDecodingContainer.decode(_:forKey:)();
            (*(v101 + 8))(v61, v62);
            (*(v129 + 8))(v46, v45);
            swift_unknownObjectRelease();
            v64 = v63 & 1;
            v82 = v92;
            *v92 = v64;
          }

          goto LABEL_27;
        }

        if (v49 == 2)
        {
          LOBYTE(v138) = 2;
          sub_100165DE0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for Date();
          sub_100165F94(&qword_1003465F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v82 = v95;
          v67 = v105;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v106 + 8))(v42, v67);
          (*(v129 + 8))(v46, v45);
          swift_unknownObjectRelease();
          goto LABEL_27;
        }

        if (v49 == 3)
        {
          LOBYTE(v138) = 3;
          sub_100165D8C();
          v50 = v122;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v51 = v129;
          v52 = v108;
          KeyedDecodingContainer.decode(_:forKey:)();
          v81 = v80;
          (*(v107 + 8))(v50, v52);
          (*(v51 + 8))(v46, v45);
          swift_unknownObjectRelease();
          v82 = v94;
          *v94 = v81;
LABEL_27:
          swift_storeEnumTagMultiPayload();
          v89 = v82;
          goto LABEL_29;
        }

        LOBYTE(v138) = 4;
        sub_100165D38();
        v70 = v123;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v71 = v129;
        v72 = v110;
        v73 = KeyedDecodingContainer.decode(_:forKey:)();
        v74 = v70;
        v83 = v73;
        (*(v109 + 8))(v74, v72);
        (*(v71 + 8))(v46, v45);
        swift_unknownObjectRelease();
        v84 = v96;
        *v96 = v83;
LABEL_28:
        swift_storeEnumTagMultiPayload();
        v89 = v84;
        goto LABEL_29;
      }

      if (v49 <= 6u)
      {
        if (v49 != 5)
        {
          LOBYTE(v138) = 6;
          sub_100165C90();
          v78 = v44;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v79 = v114;
          v90 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v113 + 8))(v78, v79);
          (*(v129 + 8))(v46, v45);
          swift_unknownObjectRelease();
          v84 = v98;
          *v98 = v90;
          goto LABEL_28;
        }

        LOBYTE(v138) = 5;
        sub_100165CE4();
        v65 = v124;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v66 = v112;
        v85 = KeyedDecodingContainer.decode(_:forKey:)();
        v87 = v86;
        (*(v111 + 8))(v65, v66);
        (*(v129 + 8))(v46, v45);
        swift_unknownObjectRelease();
        v88 = v97;
        *v97 = v85;
        v88[1] = v87;
        swift_storeEnumTagMultiPayload();
        v89 = v88;
      }

      else
      {
        if (v49 == 7)
        {
          LOBYTE(v138) = 7;
          sub_100165C3C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for URL();
          sub_100165F94(&qword_100348498, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v58 = v99;
          v68 = v117;
          v69 = v126;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v116 + 8))(v69, v68);
          (*(v129 + 8))(v46, v45);
          swift_unknownObjectRelease();
        }

        else
        {
          if (v49 != 8)
          {
            LOBYTE(v138) = 9;
            sub_100165B30();
            v75 = v125;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v115 + 8))(v75, v118);
            (*(v129 + 8))(v46, v45);
            swift_unknownObjectRelease();
            v76 = v137;
            swift_storeEnumTagMultiPayload();
LABEL_30:
            v91 = v136;
            sub_100165B84(v76, v43);
            v56 = v91;
            return sub_10000903C(v56);
          }

          LOBYTE(v138) = 8;
          sub_100165BE8();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for UUID();
          sub_100165F94(&qword_1003437F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v58 = v100;
          v59 = v119;
          v60 = v127;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v120 + 8))(v60, v59);
          (*(v129 + 8))(v46, v45);
          swift_unknownObjectRelease();
        }

        swift_storeEnumTagMultiPayload();
        v89 = v58;
      }

LABEL_29:
      v76 = v137;
      sub_100165B84(v89, v137);
      goto LABEL_30;
    }

    v53 = type metadata accessor for DecodingError();
    swift_allocError();
    v55 = v54;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v55 = v128;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v53 - 8) + 104))(v55, enum case for DecodingError.typeMismatch(_:), v53);
    swift_willThrow();
    (*(v129 + 8))(v46, v45);
    swift_unknownObjectRelease();
  }

  v56 = v136;
  return sub_10000903C(v56);
}

uint64_t sub_100162F8C(uint64_t a1)
{
  v2 = sub_100165EDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100162FC8(uint64_t a1)
{
  v2 = sub_100165EDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016300C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100166BE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100163040(uint64_t a1)
{
  v2 = sub_100165ADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016307C(uint64_t a1)
{
  v2 = sub_100165ADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001630B8(uint64_t a1)
{
  v2 = sub_100165E34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001630F4(uint64_t a1)
{
  v2 = sub_100165E34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163130(uint64_t a1)
{
  v2 = sub_100165DE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016316C(uint64_t a1)
{
  v2 = sub_100165DE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001631A8(uint64_t a1)
{
  v2 = sub_100165D8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001631E4(uint64_t a1)
{
  v2 = sub_100165D8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163220(uint64_t a1)
{
  v2 = sub_100165D38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016325C(uint64_t a1)
{
  v2 = sub_100165D38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163298(uint64_t a1)
{
  v2 = sub_100165B30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001632D4(uint64_t a1)
{
  v2 = sub_100165B30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163310(uint64_t a1)
{
  v2 = sub_100165CE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016334C(uint64_t a1)
{
  v2 = sub_100165CE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163388(uint64_t a1)
{
  v2 = sub_100165C90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001633C4(uint64_t a1)
{
  v2 = sub_100165C90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163400(uint64_t a1)
{
  v2 = sub_100165C3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016343C(uint64_t a1)
{
  v2 = sub_100165C3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163478(uint64_t a1)
{
  v2 = sub_100165BE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001634B4(uint64_t a1)
{
  v2 = sub_100165BE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001650E4(a1, a2);
  *a3 = result;
  return result;
}

double sub_100163548@<D0>(_OWORD *a2@<X8>)
{

  result = 0.0;
  *a2 = xmmword_100272810;
  return result;
}

double sub_10016357C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_100010708(a1, a2);
  result = 0.0;
  *a3 = xmmword_100272810;
  return result;
}

uint64_t sub_1001635AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date.ISO8601FormatStyle();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[2] = a1;
  v12[3] = a2;
  static ParseStrategy<>.iso8601.getter();
  sub_100165F94(&qword_10033C288, &type metadata accessor for Date.ISO8601FormatStyle, &protocol conformance descriptor for Date.ISO8601FormatStyle);
  Date.init<A>(_:strategy:)();
  (*(v8 + 32))(a3, v10, v7);
  return (*(v8 + 56))(a3, 0, 1, v7);
}

uint64_t sub_10016376C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v4 = sub_10006B2FC(a1, a2, &v7);

  v6 = v7;
  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  *(a3 + 8) = !v4;
  return result;
}

uint64_t sub_1001637D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v4 = sub_10006B340(a1, a2, &v7);

  v6 = v7;
  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  *(a3 + 4) = !v4;
  return result;
}

unint64_t sub_100163844@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100165238(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_100163874@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_10016387C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_100010708(a1, a2);
  *a3 = 0;
  a3[1] = 0;
  return result;
}

unint64_t sub_1001638A4@<X0>(uint64_t a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_1001655AC(a2, a3);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_100163924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t *a5@<X5>, void (*a6)(uint64_t, uint64_t)@<X6>, uint64_t a7@<X8>)
{
  v14 = sub_100035D04(a4, a5);
  __chkstk_darwin(v14 - 8);
  v16 = &v20 - v15;
  a6(a1, a2);

  v17 = *(a3 - 8);
  if ((*(v17 + 48))(v16, 1, a3) == 1)
  {
    sub_1000097E8(v16, a4, a5);
    v18 = 1;
  }

  else
  {
    (*(v17 + 32))(a7, v16, a3);
    v18 = 0;
  }

  return (*(v17 + 56))(a7, v18, 1, a3);
}

uint64_t sub_100163A80@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100010708(a1, a2);
  v6 = *(*(a3 - 8) + 56);

  return v6(a4, 1, 1, a3);
}

uint64_t sub_100163AEC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100010708(a1, a2);

  return v10;
}

uint64_t sub_100163C00@<X0>(uint64_t *a2@<X8>)
{
  v3 = variable initialization expression of StateMachine2.$__lazy_storage_$_edgeDictionary();

  *a2 = v3;
  return result;
}

uint64_t sub_100163C58@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  result = sub_100163AEC(a1, a2, a3[2], a3[3], *(a4 - 8), a5, a3[4]);
  *a6 = result;
  return result;
}

uint64_t sub_100163C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v9 = *(a3 - 8);
  __chkstk_darwin(a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  (*(a4 + 16))(a1, a2, a3, a4);
  if ((*(v9 + 48))(v16, 1, a3) == 1)
  {
    (*(v13 + 8))(v16, v12);
    v19 = 1;
  }

  else
  {
    v20 = *(v9 + 32);
    v20(v11, v16, a3);
    v20(v18, v11, a3);
    v19 = 0;
  }

  (*(v9 + 56))(v18, v19, 1, a3);
  v21 = v24;
  (*(v13 + 32))(v24, v18, v12);
  return (*(v13 + 56))(v21, 0, 1, v12);
}

uint64_t sub_100163F0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a4@<X8>)
{
  sub_100010708(a1, a2);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 56);

  return v6(a4, 1, 1, v5);
}

uint64_t sub_100163F98(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1001640B0@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100164110(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_100164190(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100164190(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10001B694(v9, 0), v12 = sub_1001642E8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
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

unint64_t sub_1001642E8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_100164508(v12, a6, a7);
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

    result = sub_100164508(v12, a6, a7);
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

unint64_t sub_100164508(unint64_t a1, uint64_t a2, uint64_t a3)
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

unsigned __int8 *sub_100164584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100164110(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
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
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
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
                  goto LABEL_127;
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

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100164B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100164110(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
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
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
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
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
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

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}