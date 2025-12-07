uint64_t sub_10007F748(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v54 = a4;
  v56 = a3;
  v6 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  __chkstk_darwin(v6 - 8, v7);
  v55 = &v54 - v8;
  sub_100003C4C((a2 + 16), *(a2 + 40));
  sub_1000DF9D4(&v62);
  v10 = *(&v63 + 1);
  v9 = v64;
  sub_100003C4C(&v62, *(&v63 + 1));
  sub_100003CDC(&qword_100136E98, &qword_1000F9260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3C80;
  *(inited + 32) = NSURLIsDirectoryKey;
  *(inited + 40) = NSURLIsSymbolicLinkKey;
  v12 = NSURLIsDirectoryKey;
  v13 = NSURLIsSymbolicLinkKey;
  v14 = sub_100080134(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  v15 = v69;
  (*(v9 + 192))(v67, a1, v14, v10, v9);

  result = sub_100003C90(&v62);
  if (!v15)
  {
    v17 = v55;
    v18 = v56;
    sub_100003C4C(v67, v68);
    v19 = URLResourceValues.isSymbolicLink.getter();
    if (v19 == 2 || (v19 & 1) == 0)
    {
      sub_100003C4C(v67, v68);
      v22 = URLResourceValues.isDirectory.getter();
      if (v22 == 2 || (v22 & 1) == 0)
      {
        v24 = URL.path.getter();
        sub_10007F34C(v24, v25);
LABEL_24:

        return sub_100003C90(v67);
      }

      URL.absoluteURL.getter();
      v23 = type metadata accessor for URL();
      (*(*(v23 - 8) + 56))(v17, 0, 1, v23);
      sub_10007EC48(v18, v17);
      sub_10000A184(v17, &unk_1001389D0, &qword_1000F4F60);
      return sub_100003C90(v67);
    }

    sub_100003C4C((a2 + 16), *(a2 + 40));
    sub_1000DF9D4(&v58);
    v20 = v60;
    sub_100003C4C(&v58, *(&v59 + 1));
    v21 = URL.path.getter();
    v37 = (*(v20 + 152))(v21);
    v39 = v38;

    if (v39)
    {
      sub_100003C90(&v58);
      v40._countAndFlagsBits = URL.path.getter();
      v41 = String.hasPrefix(_:)(v40);

      if (v41)
      {
        goto LABEL_24;
      }

      *&v62 = 0;
      *(&v62 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(103);
      v42._countAndFlagsBits = 0xD000000000000034;
      v42._object = 0x80000001001082D0;
      String.append(_:)(v42);
      v43._countAndFlagsBits = URL.path.getter();
      String.append(_:)(v43);

      v44._countAndFlagsBits = 0x2073746E696F7020;
      v44._object = 0xEB00000000206F74;
      String.append(_:)(v44);
      v45._countAndFlagsBits = v37;
      v45._object = v39;
      String.append(_:)(v45);

      v46._object = 0x8000000100108310;
      v46._countAndFlagsBits = 0xD000000000000022;
      String.append(_:)(v46);
    }

    else
    {
      sub_100003C90(&v58);
      *&v62 = 0;
      *(&v62 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      *&v62 = 0xD000000000000026;
      *(&v62 + 1) = 0x8000000100108030;
    }

    v47._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v47);

    v48 = v62;
    sub_10001449C();
    v49 = swift_allocError();
    *v50 = v48;
    v51 = *&v65[0];
    v53 = v63;
    v52 = v64;
    *(v50 + 16) = v62;
    *(v50 + 32) = v53;
    *(v50 + 48) = v52;
    *(v50 + 64) = v51;
    *(v50 + 72) = 19;
    swift_willThrow();
    v66 = v49;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    if (swift_dynamicCast())
    {
      *(v61 + 9) = *(v65 + 9);
      v60 = v64;
      v61[0] = v65[0];
      v58 = v62;
      v59 = v63;
      if (!BYTE8(v65[1]))
      {
        v35 = v58;

        v36 = v54;
        v57 = *v54;

        sub_100030C90(v35);
        *v36 = v57;

LABEL_18:

        return sub_100003C90(v67);
      }

      if (BYTE8(v65[1]) == 19)
      {

        v26 = v54;
        v27 = *v54;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v26 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = sub_1000319F4(0, *(v27 + 2) + 1, 1, v27);
          *v26 = v27;
        }

        v30 = *(v27 + 2);
        v29 = *(v27 + 3);
        if (v30 >= v29 >> 1)
        {
          v27 = sub_1000319F4((v29 > 1), v30 + 1, 1, v27);
          *v26 = v27;
        }

        *(v27 + 2) = v30 + 1;
        v31 = &v27[80 * v30];
        *(v31 + 2) = v58;
        v32 = v59;
        v33 = v60;
        v34 = v61[0];
        *(v31 + 89) = *(v61 + 9);
        *(v31 + 4) = v33;
        *(v31 + 5) = v34;
        *(v31 + 3) = v32;
        goto LABEL_18;
      }

      sub_10001465C(&v58);
    }

    swift_willThrow();
    return sub_100003C90(v67);
  }

  return result;
}

uint64_t sub_10007FDBC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_1000D7374();
  v10 = v9;

  if (qword_100133B10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for OSSignposter();
  sub_1000144F0(v11, qword_10014EA70);

  static OSSignpostID.exclusive.getter();
  v12 = OSSignposter.logHandle.getter();
  v13 = static os_signpost_type_t.event.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v14 = swift_slowAlloc();
    v23 = v3;
    v15 = v14;
    v24 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = sub_1000E3AF8(v8, v10, &v24);

    *(v15 + 4) = v16;
    *(v15 + 12) = 2080;
    swift_beginAccess();
    v17 = *(a2 + 16);
    v18 = *(a2 + 24);

    v19 = sub_1000E3AF8(v17, v18, &v24);

    *(v15 + 14) = v19;
    v20 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v20, "ExtensionAuthentication", "Authenticated: %s with result: %s", v15, 0x16u);
    swift_arrayDestroy();

    return (*(v4 + 8))(v7, v23);
  }

  else
  {

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100080074()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_100080134(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100136EA0, &qword_1000F9268);
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

uint64_t sub_100080328(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100080384()
{
  result = qword_100136EA8;
  if (!qword_100136EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136EA8);
  }

  return result;
}

uint64_t sub_100080480(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  result = *a2;
  if (*a2)
  {
    result = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *a3 = result;
    *a4 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1000804BC@<D0>(_UNKNOWN ***a1@<X8>)
{
  *a1 = off_100136EB0[0];

  return result;
}

double sub_1000804CC@<D0>(_UNKNOWN ***a1@<X8>)
{
  *a1 = off_100136EB8[0];

  return result;
}

uint64_t sub_10008050C(uint64_t result)
{
  if (result > 1)
  {
    switch(result)
    {
      case 2:
        return 0x67756265645FLL;
      case 3:
        return 0x6E6173616B5FLL;
      case 4:
        return 0x637261657365725FLL;
    }

    return sub_10008050C(*(result + 16));
  }

  if (result)
  {
    if (result == 1)
    {
      return 0x706F6C657665645FLL;
    }

    return sub_10008050C(*(result + 16));
  }

  return result;
}

uint64_t sub_1000805C4(uint64_t *a1, void *a2)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_17;
      }

      if (a2 == 1)
      {
        return 1;
      }
    }

    else if (!a2)
    {
      return 1;
    }

    return 0;
  }

  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a1 == 4)
  {
    return a2 == 4;
  }

LABEL_17:
  if (a2 < 5)
  {
    return 0;
  }

  v3 = a1[3];
  v2 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  if ((sub_1000805C4(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v4 && v2 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000806C0(uint64_t *a1, void *a2)
{
  v3 = 5;
  do
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        if (a2)
        {
          v3 = 0;
          goto LABEL_27;
        }

        return 0;
      }

      if (a1 == 1)
      {
        if (a2 != 1)
        {
          v3 = 1;
          goto LABEL_27;
        }

        return 0;
      }
    }

    else
    {
      if (a1 == 2)
      {
        if (a2 != 2)
        {
          v3 = 2;
          goto LABEL_27;
        }

        return 0;
      }

      if (a1 == 3)
      {
        if (a2 != 3)
        {
          v3 = 3;
          goto LABEL_27;
        }

        return 0;
      }

      if (a1 == 4)
      {
        if (a2 != 4)
        {
          v3 = 4;
LABEL_27:
          v11 = 5;
          if (a2 < 5)
          {
            v11 = a2;
          }

          return v3 < v11;
        }

        return 0;
      }
    }

    if (a2 < 5)
    {
      goto LABEL_27;
    }

    v5 = a1[3];
    v4 = a1[4];
    a1 = a1[2];
    v7 = a2[2];
    v6 = a2[3];
    v8 = a2[4];
    v9 = sub_1000805C4(a1, v7);
    a2 = v7;
  }

  while ((v9 & 1) == 0);
  if (v5 == v6 && v4 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000808A4()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x657361656C6572;
    }

    if (v1 == 1)
    {
      return 0x6D706F6C65766564;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x6775626564;
      case 3:
        return 0x6E6173616BLL;
      case 4:
        return 0x6863726165736572;
    }
  }

  v3 = *(v1 + 24);

  return v3;
}

void *sub_100080988@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

double sub_100080994@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

double sub_1000809A0@<D0>(void *a1@<X8>)
{
  *a1 = off_100136EC0;

  return result;
}

uint64_t sub_1000809B0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_1000809E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100080A34(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100080A7C(uint64_t a1, uint64_t a2)
{
  if (!a1 && a2 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D706F6C65766564 && a2 == 0xEB00000000746E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6775626564 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6173616BLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6863726165736572 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100080C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 == 0x657361656C6572 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    result = sub_100080A7C(a1, a2);
    if (result == 5)
    {

      return 5;
    }

    else if (a4)
    {
      v10 = result;
      result = swift_allocObject();
      *(result + 16) = v10;
      *(result + 24) = a3;
      *(result + 32) = a4;
    }
  }

  return result;
}

uint64_t sub_100080CEC()
{
  if (*(v0 + 16) >= 5uLL)
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100080D34(uint64_t a1, int a2)
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

uint64_t sub_100080D7C(uint64_t result, int a2, int a3)
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

uint64_t sub_100080DC8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100080DE0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100080E38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_100080E88(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_100080EEC()
{
  result = qword_100136EF8;
  if (!qword_100136EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136EF8);
  }

  return result;
}

unint64_t sub_100080F44()
{
  result = qword_100136F00;
  if (!qword_100136F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136F00);
  }

  return result;
}

uint64_t sub_100080FC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009FA4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10008101C(uint64_t a1)
{
  v3 = type metadata accessor for DriverBinEntry(0);
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3, v4);
  v41 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v39 = v10;
  v33[1] = v1;
  v46 = _swiftEmptyArrayStorage;
  sub_1000635C4(0, v11, 0);
  v12 = v46;
  v13 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v15 = v7;
  v16 = result;
  v17 = 0;
  v40 = v15;
  v37 = v15 + 32;
  v38 = (v15 + 16);
  v34 = a1 + 72;
  v35 = v11;
  v36 = a1 + 64;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    v19 = v16 >> 6;
    if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_21;
    }

    v20 = *(a1 + 36);
    v44 = v17;
    v45 = v20;
    v21 = v41;
    sub_10008E708(*(a1 + 56) + *(v42 + 72) * v16, v41, type metadata accessor for DriverBinEntry);
    v22 = v39;
    (*v38)(v39, v21 + *(v43 + 28), v6);
    sub_10008E6A8(v21, type metadata accessor for DriverBinEntry);
    v46 = v12;
    v23 = v6;
    v25 = v12[2];
    v24 = v12[3];
    if (v25 >= v24 >> 1)
    {
      sub_1000635C4((v24 > 1), v25 + 1, 1);
      v12 = v46;
    }

    v12[2] = v25 + 1;
    result = (*(v40 + 32))(v12 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v25, v22, v23);
    v18 = 1 << *(a1 + 32);
    if (v16 >= v18)
    {
      goto LABEL_22;
    }

    v6 = v23;
    v13 = v36;
    v26 = *(v36 + 8 * v19);
    if ((v26 & (1 << v16)) == 0)
    {
      goto LABEL_23;
    }

    if (v45 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v16 & 0x3F));
    if (v27)
    {
      v18 = __clz(__rbit64(v27)) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v19 << 6;
      v29 = v19 + 1;
      v30 = (v34 + 8 * v19);
      while (v29 < (v18 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_1000147E0(v16, v45, 0);
          v18 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_1000147E0(v16, v45, 0);
    }

LABEL_4:
    v17 = v44 + 1;
    v16 = v18;
    if (v44 + 1 == v35)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

BOOL sub_1000813E4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = __CocoaSet.contains(_:)();

    return v2 & 1;
  }

  else if (*(a2 + 16) && (Hasher.init(_seed:)(), v6 = *(a1 + 16), Hasher._combine(_:)(v6), v7 = Hasher._finalize()(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    do
    {
      v11 = *(*(*(a2 + 48) + 8 * v9) + 16);
      result = v11 == v6;
      if (v11 == v6)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000814E8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000815E0(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  Hasher.init(_seed:)();
  v4 = *a1;
  v5 = a1[1];
  String.hash(into:)();
  v6 = *(a1 + 16);
  String.hash(into:)();

  v55 = a1[4] >> 60;
  v56 = a1[4];
  v57 = a1[3];
  if (v55 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v7 = Hasher._finalize()();
  v8 = -1 << *(v2 + 32);
  v9 = v7 & ~v8;
  v60 = v2 + 56;
  if (((*(v2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v58 = v5;
  v59 = ~v8;
  if (v57)
  {
    v10 = 0;
  }

  else
  {
    v10 = v56 == 0xC000000000000000;
  }

  v11 = !v10;
  v53 = v11;
  v54 = v56 >> 62;
  v12 = __OFSUB__(HIDWORD(v57), v57);
  v51 = v12;
  v52 = v2;
  while (1)
  {
    v14 = *(v2 + 48) + 40 * v9;
    v15 = *(v14 + 16);
    v17 = *(v14 + 24);
    v16 = *(v14 + 32);
    v18 = *v14 == v4 && *(v14 + 8) == v5;
    if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_19;
    }

    if (v15 > 2)
    {
      v20 = 0xE200000000000000;
      if (v15 == 3)
      {
        v19 = 20805;
        if (v6 <= 2)
        {
          goto LABEL_31;
        }
      }

      else if (v15 == 4)
      {
        v19 = 21575;
        if (v6 <= 2)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v19 = 17735;
        if (v6 <= 2)
        {
          goto LABEL_31;
        }
      }
    }

    else if (v15)
    {
      if (v15 == 1)
      {
        v19 = 21580;
      }

      else
      {
        v19 = 17740;
      }

      v20 = 0xE200000000000000;
      if (v6 <= 2)
      {
LABEL_31:
        if (v6)
        {
          if (v6 == 1)
          {
            v21 = 21580;
          }

          else
          {
            v21 = 17740;
          }

          v22 = 0xE200000000000000;
        }

        else
        {
          v22 = 0xE300000000000000;
          v21 = 7958081;
        }

        goto LABEL_48;
      }
    }

    else
    {
      v20 = 0xE300000000000000;
      v19 = 7958081;
      if (v6 <= 2)
      {
        goto LABEL_31;
      }
    }

    v23 = 21575;
    if (v6 != 4)
    {
      v23 = 17735;
    }

    v21 = v6 == 3 ? 20805 : v23;
    v22 = 0xE200000000000000;
LABEL_48:
    v24 = v4;
    if (v19 == v21 && v20 == v22)
    {

      sub_1000146B0(v17, v16);
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1000146B0(v17, v16);

      if ((v25 & 1) == 0)
      {

        sub_100014528(v17, v16);
LABEL_56:
        v4 = v24;
        goto LABEL_18;
      }
    }

    if (v16 >> 60 == 15)
    {
      sub_1000146B0(v17, v16);
      v13 = v56;
      sub_1000146B0(v57, v56);

      sub_100014528(v17, v16);
      v4 = v24;
      if (v55 > 0xE)
      {
        goto LABEL_114;
      }

      goto LABEL_17;
    }

    if (v55 <= 0xE)
    {
      break;
    }

    sub_1000146B0(v17, v16);
    v13 = v56;
    sub_1000146B0(v57, v56);

    sub_100014528(v17, v16);
    v4 = v24;
LABEL_17:
    sub_100014528(v17, v16);
    sub_100014528(v57, v13);
LABEL_18:
    v5 = v58;
LABEL_19:
    v9 = (v9 + 1) & v59;
    if (((*(v60 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v26 = v16 >> 62;
  v4 = v24;
  if (v16 >> 62 == 3)
  {
    if (v17)
    {
      v27 = 0;
    }

    else
    {
      v27 = v16 == 0xC000000000000000;
    }

    v29 = !v27 || v56 >> 62 != 3;
    if (((v29 | v53) & 1) == 0)
    {
      sub_1000146B0(0, 0xC000000000000000);
      sub_1000146B0(0, 0xC000000000000000);
      sub_100014528(0, 0xC000000000000000);

      sub_100014528(0, 0xC000000000000000);
      v49 = 0;
      v50 = 0xC000000000000000;
      goto LABEL_115;
    }

LABEL_83:
    v30 = 0;
    if (v54 > 1)
    {
      goto LABEL_84;
    }

LABEL_80:
    v34 = BYTE6(v56);
    if (v54)
    {
      v34 = HIDWORD(v57) - v57;
      if (v51)
      {
        goto LABEL_118;
      }
    }
  }

  else
  {
    if (v26 <= 1)
    {
      if (v26)
      {
        LODWORD(v30) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_119;
        }

        v30 = v30;
        if (v54 > 1)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v30 = BYTE6(v16);
        if (v54 > 1)
        {
          goto LABEL_84;
        }
      }

      goto LABEL_80;
    }

    if (v26 != 2)
    {
      goto LABEL_83;
    }

    v32 = *(v17 + 16);
    v31 = *(v17 + 24);
    v33 = __OFSUB__(v31, v32);
    v30 = v31 - v32;
    if (v33)
    {
      goto LABEL_120;
    }

    if (v54 <= 1)
    {
      goto LABEL_80;
    }

LABEL_84:
    if (v54 != 2)
    {
      if (v30)
      {
LABEL_92:
        sub_1000146B0(v17, v16);
        sub_1000146B0(v57, v56);
        sub_100014528(v57, v56);

        sub_100014528(v17, v16);
        sub_100014528(v17, v16);
        goto LABEL_18;
      }

LABEL_113:
      sub_1000146B0(v17, v16);
      sub_1000146B0(v57, v56);
      sub_100014528(v57, v56);

      sub_100014528(v17, v16);
LABEL_114:
      v49 = v17;
      v50 = v16;
LABEL_115:
      sub_100014528(v49, v50);
      return 1;
    }

    v36 = *(v57 + 16);
    v35 = *(v57 + 24);
    v33 = __OFSUB__(v35, v36);
    v34 = v35 - v36;
    if (v33)
    {
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
    }
  }

  if (v30 != v34)
  {
    goto LABEL_92;
  }

  if (v30 < 1)
  {
    goto LABEL_113;
  }

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v40 = *(v17 + 16);
      v39 = *(v17 + 24);
      sub_1000146B0(v17, v16);
      sub_1000146B0(v57, v56);
      sub_1000146B0(v57, v56);
      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(v40, v42))
        {
          goto LABEL_123;
        }

        v41 += v40 - v42;
      }

      if (__OFSUB__(v39, v40))
      {
        goto LABEL_122;
      }

      __DataStorage._length.getter();
      sub_100045F4C(v41, v57, v56, v62);
      sub_100014528(v57, v56);

      sub_100014528(v17, v16);
      sub_100014528(v57, v56);
      v43 = v62[0];
      sub_100014528(v17, v16);
      if (v43)
      {
        return 1;
      }

      v4 = v24;
      goto LABEL_111;
    }

    *&v62[6] = 0;
    *v62 = 0;
    sub_1000146B0(v17, v16);
    sub_1000146B0(v57, v56);
    sub_1000146B0(v57, v56);
    sub_100045F4C(v62, v57, v56, v61);
    sub_100014528(v57, v56);

    sub_100014528(v17, v16);
    v37 = v57;
    v38 = v56;
LABEL_110:
    sub_100014528(v37, v38);
    v47 = v61[0];
    sub_100014528(v17, v16);
    if (v47)
    {
      return 1;
    }

LABEL_111:
    v2 = v52;
    goto LABEL_18;
  }

  if (!v26)
  {
    *v62 = v17;
    *&v62[8] = v16;
    v62[10] = BYTE2(v16);
    v62[11] = BYTE3(v16);
    v62[12] = BYTE4(v16);
    v62[13] = BYTE5(v16);
    sub_1000146B0(v17, v16);
    sub_1000146B0(v57, v56);
    sub_1000146B0(v57, v56);
    sub_100045F4C(v62, v57, v56, v61);
    sub_100014528(v57, v56);

    sub_100014528(v17, v16);
    v37 = v57;
    v38 = v56;
    goto LABEL_110;
  }

  if (v17 >> 32 < v17)
  {
    goto LABEL_121;
  }

  sub_1000146B0(v17, v16);
  sub_1000146B0(v57, v56);
  sub_1000146B0(v57, v56);
  v44 = __DataStorage._bytes.getter();
  if (v44)
  {
    v45 = __DataStorage._offset.getter();
    if (__OFSUB__(v17, v45))
    {
      goto LABEL_124;
    }

    v44 += v17 - v45;
  }

  __DataStorage._length.getter();
  sub_100045F4C(v44, v57, v56, v62);
  sub_100014528(v57, v56);

  sub_100014528(v17, v16);
  sub_100014528(v57, v56);
  v46 = v62[0];
  sub_100014528(v17, v16);
  if ((v46 & 1) == 0)
  {
    v2 = v52;
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_100081F78(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    Hasher.init(_seed:)();
    Data.hash(into:)();
    v6 = Hasher._finalize()();
    v7 = a3 + 56;
    v8 = -1 << *(a3 + 32);
    v9 = v6 & ~v8;
    if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      if (a1)
      {
        v11 = 0;
      }

      else
      {
        v11 = a2 == 0xC000000000000000;
      }

      v12 = !v11;
      v42 = v12;
      v13 = a2 >> 62;
      v14 = __OFSUB__(HIDWORD(a1), a1);
      v39 = v14;
      v37 = a2;
      v38 = HIDWORD(a1) - a1;
      v40 = v10;
      v41 = BYTE6(a2);
      v36 = a1;
      while (1)
      {
        v15 = (*(a3 + 48) + 16 * v9);
        v17 = *v15;
        v16 = v15[1];
        v18 = v16 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v18 > 1)
        {
          if (v18 != 2)
          {
            goto LABEL_37;
          }

          v24 = *(v17 + 16);
          v23 = *(v17 + 24);
          v25 = __OFSUB__(v23, v24);
          v22 = v23 - v24;
          if (v25)
          {
            goto LABEL_67;
          }

          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

        else if (v18)
        {
          LODWORD(v22) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_68;
          }

          v22 = v22;
          if (v13 <= 1)
          {
LABEL_34:
            v26 = v41;
            if (v13)
            {
              v26 = v38;
              if (v39)
              {
                goto LABEL_66;
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          v22 = BYTE6(v16);
          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

LABEL_38:
        if (v13 != 2)
        {
          if (!v22)
          {
            return 1;
          }

          goto LABEL_14;
        }

        v28 = *(a1 + 16);
        v27 = *(a1 + 24);
        v25 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v25)
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
        }

LABEL_40:
        if (v22 == v26)
        {
          if (v22 < 1)
          {
            return 1;
          }

          if (v18 <= 1)
          {
            if (!v18)
            {
              *v44 = v17;
              *&v44[8] = v16;
              v44[10] = BYTE2(v16);
              v44[11] = BYTE3(v16);
              v44[12] = BYTE4(v16);
              v44[13] = BYTE5(v16);
              sub_1000146C4(v17, v16);
              sub_100045F4C(v44, a1, a2, v43);
              sub_1000128D8(v17, v16);
              if (v43[0])
              {
                return 1;
              }

LABEL_61:
              v10 = v40;
              goto LABEL_14;
            }

            if (v17 >> 32 < v17)
            {
              goto LABEL_69;
            }

            sub_1000146C4(v17, v16);
            v31 = __DataStorage._bytes.getter();
            if (v31)
            {
              v33 = __DataStorage._offset.getter();
              if (__OFSUB__(v17, v33))
              {
                goto LABEL_72;
              }

              v31 += v17 - v33;
            }

LABEL_59:
            __DataStorage._length.getter();
            v34 = v31;
            a1 = v36;
            a2 = v37;
            sub_100045F4C(v34, v36, v37, v44);
            sub_1000128D8(v17, v16);
            if (v44[0])
            {
              return 1;
            }

            v7 = a3 + 56;
            goto LABEL_61;
          }

          if (v18 == 2)
          {
            v30 = *(v17 + 16);
            v29 = *(v17 + 24);
            sub_1000146C4(v17, v16);
            v31 = __DataStorage._bytes.getter();
            if (v31)
            {
              v32 = __DataStorage._offset.getter();
              if (__OFSUB__(v30, v32))
              {
                goto LABEL_71;
              }

              v31 += v30 - v32;
            }

            if (__OFSUB__(v29, v30))
            {
              goto LABEL_70;
            }

            goto LABEL_59;
          }

          *&v44[6] = 0;
          *v44 = 0;
          sub_1000146C4(v17, v16);
          sub_100045F4C(v44, a1, a2, v43);
          sub_1000128D8(v17, v16);
          if (v43[0])
          {
            return 1;
          }
        }

LABEL_14:
        v9 = (v9 + 1) & v10;
        if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          return 0;
        }
      }

      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v13 < 3;
      if (((v21 | v42) & 1) == 0)
      {
        return 1;
      }

LABEL_37:
      v22 = 0;
      if (v13 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  return 0;
}

uint64_t sub_10008239C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 20805;
  v5 = 21575;
  if (a1 != 4)
  {
    v5 = 17735;
  }

  if (a1 != 3)
  {
    v4 = v5;
  }

  v6 = 21580;
  if (a1 != 1)
  {
    v6 = 17740;
  }

  if (a1)
  {
    v3 = 0xE200000000000000;
  }

  else
  {
    v6 = 7958081;
  }

  if (a1 <= 2u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  if (a2 > 2u)
  {
    v9 = 0xE200000000000000;
    if (a2 == 3)
    {
      if (v7 != 20805)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      if (v7 != 21575)
      {
        goto LABEL_34;
      }
    }

    else if (v7 != 17735)
    {
LABEL_34:
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  else if (a2)
  {
    v9 = 0xE200000000000000;
    if (a2 == 1)
    {
      if (v7 != 21580)
      {
        goto LABEL_34;
      }
    }

    else if (v7 != 17740)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v9 = 0xE300000000000000;
    if (v7 != 7958081)
    {
      goto LABEL_34;
    }
  }

  if (v8 != v9)
  {
    goto LABEL_34;
  }

  v10 = 1;
LABEL_35:

  return v10 & 1;
}

uint64_t sub_1000824F4(uint64_t a1, unint64_t a2)
{
  v188 = a2;
  v183 = a1;
  v161 = type metadata accessor for OSSignpostError();
  v165 = *(v161 - 8);
  __chkstk_darwin(v161, v3);
  v160 = &v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for UUID();
  v5 = *(v190 - 8);
  __chkstk_darwin(v190, v6);
  v8 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for OSSignpostID();
  v168 = *(v167 - 8);
  v10 = __chkstk_darwin(v167, v9);
  v166 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v159 - v14;
  __chkstk_darwin(v13, v16);
  v18 = &v159 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19, v21);
  v23 = (&v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v187 = v2;
  isa = v2[13].isa;
  *v23 = isa;
  (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
  v25 = isa;
  v26 = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v23, v19);
  if ((v26 & 1) == 0)
  {
    goto LABEL_104;
  }

  if (qword_100133A80 != -1)
  {
LABEL_105:
    swift_once();
  }

  v27 = type metadata accessor for OSSignposter();
  v28 = sub_1000144F0(v27, qword_100138798);
  if (qword_100133A88 != -1)
  {
    swift_once();
  }

  v29 = v167;
  v30 = sub_1000144F0(v167, qword_1001387B0);
  v31 = *(v168 + 16);
  v31(v18, v30, v29);
  v164 = v28;
  v32 = OSSignposter.logHandle.getter();
  v33 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, v33, v35, "State refresh", "", v34, 2u);
  }

  v36 = v167;
  v31(v15, v18, v167);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v162 = OSSignpostIntervalState.init(id:isOpen:)();
  v37 = *(v168 + 8);
  v168 += 8;
  v163 = v37;
  v37(v18, v36);
  UUID.init()();
  v182 = UUID.uuidString.getter();
  v189 = v38;
  (*(v5 + 8))(v8, v190);
  v39 = swift_allocObject();
  *(v39 + 16) = _swiftEmptyArrayStorage;
  v40 = swift_allocObject();
  *(v40 + 16) = &_swiftEmptySetSingleton;
  v41 = swift_allocObject();
  *(v41 + 16) = &_swiftEmptySetSingleton;
  v170 = type metadata accessor for StateManagerWrapper();
  v42 = swift_allocObject();
  *(v42 + 16) = v187;
  *(v42 + 24) = &off_100126EF0;

  v15 = sub_1000C5A64(v42, v40, v41, v39);

  if (v15)
  {
    swift_beginAccess();

    v175 = sub_10008DD24(v43);

    v195 = &_swiftEmptySetSingleton;
    v5 = v188;
    if (qword_100133AC0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    v45 = sub_1000144F0(v44, qword_10014E980);
    v8 = v189;

    v190 = v45;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      *v48 = 136315394;
      *(v48 + 4) = sub_1000E3AF8(v182, v189, &v193);
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_1000E3AF8(v183, v5, &v193);
      _os_log_impl(&_mh_execute_header, v46, v47, "State refresh (id: %s, reason: %s): starting", v48, 0x16u);
      swift_arrayDestroy();

      v8 = v189;
    }

    v18 = v175;
    v49 = swift_allocObject();
    *(v49 + 16) = v187;
    *(v49 + 24) = &off_100126EF0;

    sub_1000E402C(&v193, v49);

    if (v18 >> 62)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
      if (v51)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v51 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v51)
      {
LABEL_14:
        v52 = 0;
        v53 = v18 & 0xC000000000000001;
        v172 = v18 & 0xFFFFFFFFFFFFFF8;
        v171 = v18 + 32;
        *&v50 = 136315650;
        v169 = v50;
        *&v50 = 136315906;
        v179 = v50;
        v174 = v51;
        v173 = v18 & 0xC000000000000001;
        while (1)
        {
          if (v53)
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v54 = __OFADD__(v52++, 1);
            if (v54)
            {
              goto LABEL_102;
            }
          }

          else
          {
            if (v52 >= *(v172 + 16))
            {
              goto LABEL_103;
            }

            v15 = *(v171 + 8 * v52);

            v54 = __OFADD__(v52++, 1);
            if (v54)
            {
              goto LABEL_102;
            }
          }

          v55 = v195;
          if ((v195 & 0xC000000000000001) != 0)
          {

            v56 = __CocoaSet.contains(_:)();
            v57 = v15;

            if (v56)
            {
              goto LABEL_24;
            }

LABEL_15:

            if (v52 == v51)
            {
              break;
            }
          }

          else
          {
            if (!*(v195 + 16))
            {
              goto LABEL_15;
            }

            Hasher.init(_seed:)();
            v88 = *(v15 + 16);
            Hasher._combine(_:)(v88);
            v89 = Hasher._finalize()();
            v90 = -1 << *(v55 + 32);
            v91 = v89 & ~v90;
            if (((*(v55 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
            {
              goto LABEL_15;
            }

            v57 = v15;
            v92 = ~v90;
            while (*(*(*(v55 + 48) + 8 * v91) + 16) != v88)
            {
              v91 = (v91 + 1) & v92;
              if (((*(v55 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
              {
                goto LABEL_15;
              }
            }

LABEL_24:
            v177 = v52;
            v15 = *(v57 + 16);
            v58 = *(v57 + 24);
            v176 = v57;
            swift_unknownObjectRetain_n();

            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.default.getter();
            swift_unknownObjectRelease();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = v8;
              v62 = swift_slowAlloc();
              v193 = swift_slowAlloc();
              *v62 = v169;
              *(v62 + 4) = sub_1000E3AF8(v182, v61, &v193);
              *(v62 + 12) = 2080;
              *(v62 + 14) = sub_1000E3AF8(v183, v5, &v193);
              *(v62 + 22) = 2080;
              ObjectType = swift_getObjectType();
              v64 = sub_1000C5A1C(ObjectType);
              v66 = sub_1000E3AF8(v64, v65, &v193);

              *(v62 + 24) = v66;
              _os_log_impl(&_mh_execute_header, v59, v60, "State refresh (id: %s, reason: %s): Notifying %s of state update", v62, 0x20u);
              swift_arrayDestroy();
            }

            v18 = v15;
            v67 = swift_getObjectType();
            v68 = *(v58 + 40);
            v186 = v67;
            v69 = v68(v67, v58);
            v184 = v58;
            if (v69)
            {
              v70 = v69;
              v8 = v189;

              swift_unknownObjectRetain();
              v71 = Logger.logObject.getter();
              v72 = static os_log_type_t.default.getter();
              swift_unknownObjectRelease();

              v73 = os_log_type_enabled(v71, v72);
              v178 = v18;
              if (v73)
              {
                LODWORD(v185) = v72;
                v187 = v71;
                v74 = swift_slowAlloc();
                v180 = swift_slowAlloc();
                v192 = v180;
                *v74 = v179;
                *(v74 + 4) = sub_1000E3AF8(v182, v8, &v192);
                *(v74 + 12) = 2080;
                *(v74 + 14) = sub_1000E3AF8(v183, v5, &v192);
                *(v74 + 22) = 2080;
                v75 = sub_1000C5A1C(v186);
                v77 = sub_1000E3AF8(v75, v76, &v192);

                *(v74 + 24) = v77;
                v181 = v74;
                *(v74 + 32) = 2080;
                v78 = *(v70 + 16);
                if (v78)
                {
                  v191 = _swiftEmptyArrayStorage;
                  sub_1000635A4(0, v78, 0);
                  v79 = v191;
                  v80 = (v70 + 40);
                  do
                  {
                    v81 = *(v80 - 1);
                    v82 = *v80;
                    v193 = 538976288;
                    v194 = 0xE400000000000000;

                    v83._countAndFlagsBits = v81;
                    v83._object = v82;
                    String.append(_:)(v83);

                    v85 = v193;
                    v84 = v194;
                    v191 = v79;
                    v18 = v79[2];
                    v86 = v79[3];
                    if (v18 >= v86 >> 1)
                    {
                      sub_1000635A4((v86 > 1), v18 + 1, 1);
                      v79 = v191;
                    }

                    v79[2] = v18 + 1;
                    v87 = &v79[2 * v18];
                    v87[4] = v85;
                    v87[5] = v84;
                    v80 += 2;
                    --v78;
                  }

                  while (v78);

                  v5 = v188;
                  v8 = v189;
                }

                else
                {

                  v79 = _swiftEmptyArrayStorage;
                }

                v193 = v79;
                sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
                sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
                v99 = BidirectionalCollection<>.joined(separator:)();
                v101 = v100;

                v102 = sub_1000E3AF8(v99, v101, &v192);

                v103 = v181;
                *(v181 + 34) = v102;
                v104 = v187;
                _os_log_impl(&_mh_execute_header, v187, v185, "State refresh (id: %s, reason: %s): %s updated state:\n%s", v103, 0x2Au);
                swift_arrayDestroy();

                v15 = v170;
                v58 = v184;
              }

              else
              {

                v15 = v170;
              }

              v105 = (*(v58 + 16))(v186, v58);
              v106 = *(v105 + 16);
              if (v106)
              {
                v193 = _swiftEmptyArrayStorage;
                specialized ContiguousArray.reserveCapacity(_:)();
                v107 = 32;
                do
                {
                  *(swift_allocObject() + 16) = *(v105 + v107);
                  swift_unknownObjectRetain();
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  v18 = *(v193 + 16);
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                  v107 += 16;
                  --v106;
                }

                while (v106);

                v108 = v193;
                v8 = v189;
                if (!(v193 >> 62))
                {
LABEL_52:
                  v109 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v109)
                  {
                    goto LABEL_53;
                  }

LABEL_68:
                  swift_unknownObjectRelease();

                  goto LABEL_90;
                }
              }

              else
              {

                v108 = _swiftEmptyArrayStorage;
                if (!(_swiftEmptyArrayStorage >> 62))
                {
                  goto LABEL_52;
                }
              }

              v109 = _CocoaArrayWrapper.endIndex.getter();
              if (!v109)
              {
                goto LABEL_68;
              }

LABEL_53:
              v185 = v108;
              v187 = v109;
              if ((v108 & 0xC000000000000001) != 0)
              {
                v18 = 0;
                while (1)
                {
                  while (1)
                  {
                    v110 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v54 = __OFADD__(v18++, 1);
                    if (v54)
                    {
                      __break(1u);
LABEL_101:
                      __break(1u);
LABEL_102:
                      __break(1u);
LABEL_103:
                      __break(1u);
LABEL_104:
                      __break(1u);
                      goto LABEL_105;
                    }

                    v15 = v110;
                    v111 = v195;
                    if ((v195 & 0xC000000000000001) != 0)
                    {
                      break;
                    }

                    if (!*(v195 + 16))
                    {
                      goto LABEL_65;
                    }

                    Hasher.init(_seed:)();
                    Hasher._combine(_:)(*(v15 + 16));
                    v113 = Hasher._finalize()();
                    v114 = -1 << *(v111 + 32);
                    v115 = v113 & ~v114;
                    if (((*(v111 + 56 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115) & 1) == 0)
                    {
                      goto LABEL_65;
                    }

                    v116 = ~v114;
                    while (*(*(*(v111 + 48) + 8 * v115) + 16) != *(v15 + 16))
                    {
                      v115 = (v115 + 1) & v116;
                      if (((*(v111 + 56 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115) & 1) == 0)
                      {
                        goto LABEL_65;
                      }
                    }

LABEL_55:
                    swift_unknownObjectRelease();
                    if (v18 == v109)
                    {
                      goto LABEL_68;
                    }
                  }

                  swift_unknownObjectRetain();
                  v112 = __CocoaSet.contains(_:)();
                  swift_unknownObjectRelease();
                  if (v112)
                  {
                    goto LABEL_55;
                  }

LABEL_65:

                  swift_unknownObjectRetain();
                  swift_unknownObjectRetain();
                  v117 = Logger.logObject.getter();
                  v118 = static os_log_type_t.default.getter();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  if (os_log_type_enabled(v117, v118))
                  {
                    v119 = swift_slowAlloc();
                    v193 = swift_slowAlloc();
                    *v119 = v179;
                    *(v119 + 4) = sub_1000E3AF8(v182, v8, &v193);
                    *(v119 + 12) = 2080;
                    *(v119 + 14) = sub_1000E3AF8(v183, v188, &v193);
                    *(v119 + 22) = 2080;
                    v120 = sub_1000C5A1C(v186);
                    v122 = sub_1000E3AF8(v120, v121, &v193);

                    *(v119 + 24) = v122;
                    *(v119 + 32) = 2080;
                    v123 = swift_getObjectType();
                    v124 = sub_1000C5A1C(v123);
                    v126 = sub_1000E3AF8(v124, v125, &v193);

                    *(v119 + 34) = v126;
                    v8 = v189;
                    _os_log_impl(&_mh_execute_header, v117, v118, "State refresh (id: %s, reason: %s): %s updated state, will notify subscriber: %s", v119, 0x2Au);
                    swift_arrayDestroy();

                    v5 = v188;
                  }

                  sub_1000E402C(&v193, v15);

                  v109 = v187;
                  if (v18 == v187)
                  {
                    goto LABEL_68;
                  }
                }
              }

              v8 = 0;
              v181 = v108 & 0xFFFFFFFFFFFFFF8;
              v180 = v108 + 32;
              while (2)
              {
                if (v8 >= *(v181 + 16))
                {
                  goto LABEL_101;
                }

                v18 = *(v180 + 8 * v8);
                v127 = v195;
                if ((v195 & 0xC000000000000001) != 0)
                {
                  swift_retain_n();
                  v128 = __CocoaSet.contains(_:)();

                  if (v128)
                  {
                  }

                  else
                  {
LABEL_85:
                    v133 = v5;
                    v134 = v189;

                    swift_unknownObjectRetain();

                    v15 = Logger.logObject.getter();
                    v135 = static os_log_type_t.default.getter();

                    swift_unknownObjectRelease();

                    if (os_log_type_enabled(v15, v135))
                    {
                      v136 = swift_slowAlloc();
                      v193 = swift_slowAlloc();
                      *v136 = v179;
                      *(v136 + 4) = sub_1000E3AF8(v182, v134, &v193);
                      *(v136 + 12) = 2080;
                      *(v136 + 14) = sub_1000E3AF8(v183, v133, &v193);
                      *(v136 + 22) = 2080;
                      v137 = sub_1000C5A1C(v186);
                      v139 = sub_1000E3AF8(v137, v138, &v193);

                      *(v136 + 24) = v139;
                      *(v136 + 32) = 2080;
                      v140 = swift_getObjectType();
                      v141 = sub_1000C5A1C(v140);
                      v143 = sub_1000E3AF8(v141, v142, &v193);

                      *(v136 + 34) = v143;
                      v5 = v188;
                      _os_log_impl(&_mh_execute_header, v15, v135, "State refresh (id: %s, reason: %s): %s updated state, will notify subscriber: %s", v136, 0x2Au);
                      swift_arrayDestroy();

                      v109 = v187;
                    }

                    else
                    {

                      v5 = v133;
                    }

                    sub_1000E402C(&v193, v18);
                  }
                }

                else
                {
                  if (!*(v195 + 16) || (Hasher.init(_seed:)(), Hasher._combine(_:)(*(v18 + 16)), v129 = Hasher._finalize()(), v130 = -1 << *(v127 + 32), v131 = v129 & ~v130, ((*(v127 + 56 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131) & 1) == 0))
                  {
LABEL_84:

                    goto LABEL_85;
                  }

                  v132 = ~v130;
                  while (*(*(*(v127 + 48) + 8 * v131) + 16) != *(v18 + 16))
                  {
                    v131 = (v131 + 1) & v132;
                    if (((*(v127 + 56 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131) & 1) == 0)
                    {
                      goto LABEL_84;
                    }
                  }
                }

                if (++v8 == v109)
                {
                  swift_unknownObjectRelease();

                  v8 = v189;
                  goto LABEL_90;
                }

                continue;
              }
            }

            v8 = v189;

            swift_unknownObjectRetain();
            v93 = Logger.logObject.getter();
            v94 = static os_log_type_t.default.getter();
            swift_unknownObjectRelease();

            if (os_log_type_enabled(v93, v94))
            {
              v95 = swift_slowAlloc();
              v193 = swift_slowAlloc();
              *v95 = v169;
              *(v95 + 4) = sub_1000E3AF8(v182, v189, &v193);
              *(v95 + 12) = 2080;
              *(v95 + 14) = sub_1000E3AF8(v183, v5, &v193);
              *(v95 + 22) = 2080;
              v96 = sub_1000C5A1C(v186);
              v98 = sub_1000E3AF8(v96, v97, &v193);

              *(v95 + 24) = v98;
              _os_log_impl(&_mh_execute_header, v93, v94, "State refresh (id: %s, reason: %s): %s did not update state", v95, 0x20u);
              swift_arrayDestroy();

              v8 = v189;

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

LABEL_90:
            v18 = v175;
            v51 = v174;
            v52 = v177;
            v53 = v173;
            if (v177 == v174)
            {
              break;
            }
          }
        }
      }
    }

    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      *v146 = 136315394;
      v147 = sub_1000E3AF8(v182, v8, &v193);

      *(v146 + 4) = v147;
      *(v146 + 12) = 2080;
      *(v146 + 14) = sub_1000E3AF8(v183, v5, &v193);
      _os_log_impl(&_mh_execute_header, v144, v145, "State refresh (id: %s, reason: %s): completed", v146, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v148 = v165;
    v149 = v166;
    v150 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v151 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      v152 = v160;
      checkForErrorAndConsumeState(state:)();

      v153 = v161;
      if ((*(v148 + 88))(v152, v161) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v154 = "[Error] Interval already ended";
      }

      else
      {
        (*(v148 + 8))(v152, v153);
        v154 = "";
      }

      v155 = swift_slowAlloc();
      *v155 = 0;
      v156 = v166;
      v157 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v150, v151, v157, "State refresh", v154, v155, 2u);
      v149 = v156;
    }

    return v163(v149, v167);
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100083E80(uint64_t a1, unint64_t a2)
{
  v188 = a2;
  v183 = a1;
  v161 = type metadata accessor for OSSignpostError();
  v165 = *(v161 - 8);
  __chkstk_darwin(v161, v3);
  v160 = &v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for UUID();
  v5 = *(v190 - 8);
  __chkstk_darwin(v190, v6);
  v8 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for OSSignpostID();
  v168 = *(v167 - 8);
  v10 = __chkstk_darwin(v167, v9);
  v166 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v159 - v14;
  __chkstk_darwin(v13, v16);
  v18 = &v159 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19, v21);
  v23 = (&v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v187 = v2;
  isa = v2[8].isa;
  *v23 = isa;
  (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
  v25 = isa;
  v26 = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v23, v19);
  if ((v26 & 1) == 0)
  {
    goto LABEL_104;
  }

  if (qword_100133A80 != -1)
  {
LABEL_105:
    swift_once();
  }

  v27 = type metadata accessor for OSSignposter();
  v28 = sub_1000144F0(v27, qword_100138798);
  if (qword_100133A88 != -1)
  {
    swift_once();
  }

  v29 = v167;
  v30 = sub_1000144F0(v167, qword_1001387B0);
  v31 = *(v168 + 16);
  v31(v18, v30, v29);
  v164 = v28;
  v32 = OSSignposter.logHandle.getter();
  v33 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, v33, v35, "State refresh", "", v34, 2u);
  }

  v36 = v167;
  v31(v15, v18, v167);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v162 = OSSignpostIntervalState.init(id:isOpen:)();
  v37 = *(v168 + 8);
  v168 += 8;
  v163 = v37;
  v37(v18, v36);
  UUID.init()();
  v182 = UUID.uuidString.getter();
  v189 = v38;
  (*(v5 + 8))(v8, v190);
  v39 = swift_allocObject();
  *(v39 + 16) = _swiftEmptyArrayStorage;
  v40 = swift_allocObject();
  *(v40 + 16) = &_swiftEmptySetSingleton;
  v41 = swift_allocObject();
  *(v41 + 16) = &_swiftEmptySetSingleton;
  v170 = type metadata accessor for StateManagerWrapper();
  v42 = swift_allocObject();
  *(v42 + 16) = v187;
  *(v42 + 24) = &off_1001273C8;

  v15 = sub_1000C5A64(v42, v40, v41, v39);

  if (v15)
  {
    swift_beginAccess();

    v175 = sub_10008DD24(v43);

    v195 = &_swiftEmptySetSingleton;
    v5 = v188;
    if (qword_100133AC0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    v45 = sub_1000144F0(v44, qword_10014E980);
    v8 = v189;

    v190 = v45;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      *v48 = 136315394;
      *(v48 + 4) = sub_1000E3AF8(v182, v189, &v193);
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_1000E3AF8(v183, v5, &v193);
      _os_log_impl(&_mh_execute_header, v46, v47, "State refresh (id: %s, reason: %s): starting", v48, 0x16u);
      swift_arrayDestroy();

      v8 = v189;
    }

    v18 = v175;
    v49 = swift_allocObject();
    *(v49 + 16) = v187;
    *(v49 + 24) = &off_1001273C8;

    sub_1000E402C(&v193, v49);

    if (v18 >> 62)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
      if (v51)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v51 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v51)
      {
LABEL_14:
        v52 = 0;
        v53 = v18 & 0xC000000000000001;
        v172 = v18 & 0xFFFFFFFFFFFFFF8;
        v171 = v18 + 32;
        *&v50 = 136315650;
        v169 = v50;
        *&v50 = 136315906;
        v179 = v50;
        v174 = v51;
        v173 = v18 & 0xC000000000000001;
        while (1)
        {
          if (v53)
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v54 = __OFADD__(v52++, 1);
            if (v54)
            {
              goto LABEL_102;
            }
          }

          else
          {
            if (v52 >= *(v172 + 16))
            {
              goto LABEL_103;
            }

            v15 = *(v171 + 8 * v52);

            v54 = __OFADD__(v52++, 1);
            if (v54)
            {
              goto LABEL_102;
            }
          }

          v55 = v195;
          if ((v195 & 0xC000000000000001) != 0)
          {

            v56 = __CocoaSet.contains(_:)();
            v57 = v15;

            if (v56)
            {
              goto LABEL_24;
            }

LABEL_15:

            if (v52 == v51)
            {
              break;
            }
          }

          else
          {
            if (!*(v195 + 16))
            {
              goto LABEL_15;
            }

            Hasher.init(_seed:)();
            v88 = *(v15 + 16);
            Hasher._combine(_:)(v88);
            v89 = Hasher._finalize()();
            v90 = -1 << *(v55 + 32);
            v91 = v89 & ~v90;
            if (((*(v55 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
            {
              goto LABEL_15;
            }

            v57 = v15;
            v92 = ~v90;
            while (*(*(*(v55 + 48) + 8 * v91) + 16) != v88)
            {
              v91 = (v91 + 1) & v92;
              if (((*(v55 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
              {
                goto LABEL_15;
              }
            }

LABEL_24:
            v177 = v52;
            v15 = *(v57 + 16);
            v58 = *(v57 + 24);
            v176 = v57;
            swift_unknownObjectRetain_n();

            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.default.getter();
            swift_unknownObjectRelease();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = v8;
              v62 = swift_slowAlloc();
              v193 = swift_slowAlloc();
              *v62 = v169;
              *(v62 + 4) = sub_1000E3AF8(v182, v61, &v193);
              *(v62 + 12) = 2080;
              *(v62 + 14) = sub_1000E3AF8(v183, v5, &v193);
              *(v62 + 22) = 2080;
              ObjectType = swift_getObjectType();
              v64 = sub_1000C5A1C(ObjectType);
              v66 = sub_1000E3AF8(v64, v65, &v193);

              *(v62 + 24) = v66;
              _os_log_impl(&_mh_execute_header, v59, v60, "State refresh (id: %s, reason: %s): Notifying %s of state update", v62, 0x20u);
              swift_arrayDestroy();
            }

            v18 = v15;
            v67 = swift_getObjectType();
            v68 = *(v58 + 40);
            v186 = v67;
            v69 = v68(v67, v58);
            v184 = v58;
            if (v69)
            {
              v70 = v69;
              v8 = v189;

              swift_unknownObjectRetain();
              v71 = Logger.logObject.getter();
              v72 = static os_log_type_t.default.getter();
              swift_unknownObjectRelease();

              v73 = os_log_type_enabled(v71, v72);
              v178 = v18;
              if (v73)
              {
                LODWORD(v185) = v72;
                v187 = v71;
                v74 = swift_slowAlloc();
                v180 = swift_slowAlloc();
                v192 = v180;
                *v74 = v179;
                *(v74 + 4) = sub_1000E3AF8(v182, v8, &v192);
                *(v74 + 12) = 2080;
                *(v74 + 14) = sub_1000E3AF8(v183, v5, &v192);
                *(v74 + 22) = 2080;
                v75 = sub_1000C5A1C(v186);
                v77 = sub_1000E3AF8(v75, v76, &v192);

                *(v74 + 24) = v77;
                v181 = v74;
                *(v74 + 32) = 2080;
                v78 = *(v70 + 16);
                if (v78)
                {
                  v191 = _swiftEmptyArrayStorage;
                  sub_1000635A4(0, v78, 0);
                  v79 = v191;
                  v80 = (v70 + 40);
                  do
                  {
                    v81 = *(v80 - 1);
                    v82 = *v80;
                    v193 = 538976288;
                    v194 = 0xE400000000000000;

                    v83._countAndFlagsBits = v81;
                    v83._object = v82;
                    String.append(_:)(v83);

                    v85 = v193;
                    v84 = v194;
                    v191 = v79;
                    v18 = v79[2];
                    v86 = v79[3];
                    if (v18 >= v86 >> 1)
                    {
                      sub_1000635A4((v86 > 1), v18 + 1, 1);
                      v79 = v191;
                    }

                    v79[2] = v18 + 1;
                    v87 = &v79[2 * v18];
                    v87[4] = v85;
                    v87[5] = v84;
                    v80 += 2;
                    --v78;
                  }

                  while (v78);

                  v5 = v188;
                  v8 = v189;
                }

                else
                {

                  v79 = _swiftEmptyArrayStorage;
                }

                v193 = v79;
                sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
                sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
                v99 = BidirectionalCollection<>.joined(separator:)();
                v101 = v100;

                v102 = sub_1000E3AF8(v99, v101, &v192);

                v103 = v181;
                *(v181 + 34) = v102;
                v104 = v187;
                _os_log_impl(&_mh_execute_header, v187, v185, "State refresh (id: %s, reason: %s): %s updated state:\n%s", v103, 0x2Au);
                swift_arrayDestroy();

                v15 = v170;
                v58 = v184;
              }

              else
              {

                v15 = v170;
              }

              v105 = (*(v58 + 16))(v186, v58);
              v106 = *(v105 + 16);
              if (v106)
              {
                v193 = _swiftEmptyArrayStorage;
                specialized ContiguousArray.reserveCapacity(_:)();
                v107 = 32;
                do
                {
                  *(swift_allocObject() + 16) = *(v105 + v107);
                  swift_unknownObjectRetain();
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  v18 = *(v193 + 16);
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                  v107 += 16;
                  --v106;
                }

                while (v106);

                v108 = v193;
                v8 = v189;
                if (!(v193 >> 62))
                {
LABEL_52:
                  v109 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v109)
                  {
                    goto LABEL_53;
                  }

LABEL_68:
                  swift_unknownObjectRelease();

                  goto LABEL_90;
                }
              }

              else
              {

                v108 = _swiftEmptyArrayStorage;
                if (!(_swiftEmptyArrayStorage >> 62))
                {
                  goto LABEL_52;
                }
              }

              v109 = _CocoaArrayWrapper.endIndex.getter();
              if (!v109)
              {
                goto LABEL_68;
              }

LABEL_53:
              v185 = v108;
              v187 = v109;
              if ((v108 & 0xC000000000000001) != 0)
              {
                v18 = 0;
                while (1)
                {
                  while (1)
                  {
                    v110 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v54 = __OFADD__(v18++, 1);
                    if (v54)
                    {
                      __break(1u);
LABEL_101:
                      __break(1u);
LABEL_102:
                      __break(1u);
LABEL_103:
                      __break(1u);
LABEL_104:
                      __break(1u);
                      goto LABEL_105;
                    }

                    v15 = v110;
                    v111 = v195;
                    if ((v195 & 0xC000000000000001) != 0)
                    {
                      break;
                    }

                    if (!*(v195 + 16))
                    {
                      goto LABEL_65;
                    }

                    Hasher.init(_seed:)();
                    Hasher._combine(_:)(*(v15 + 16));
                    v113 = Hasher._finalize()();
                    v114 = -1 << *(v111 + 32);
                    v115 = v113 & ~v114;
                    if (((*(v111 + 56 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115) & 1) == 0)
                    {
                      goto LABEL_65;
                    }

                    v116 = ~v114;
                    while (*(*(*(v111 + 48) + 8 * v115) + 16) != *(v15 + 16))
                    {
                      v115 = (v115 + 1) & v116;
                      if (((*(v111 + 56 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115) & 1) == 0)
                      {
                        goto LABEL_65;
                      }
                    }

LABEL_55:
                    swift_unknownObjectRelease();
                    if (v18 == v109)
                    {
                      goto LABEL_68;
                    }
                  }

                  swift_unknownObjectRetain();
                  v112 = __CocoaSet.contains(_:)();
                  swift_unknownObjectRelease();
                  if (v112)
                  {
                    goto LABEL_55;
                  }

LABEL_65:

                  swift_unknownObjectRetain();
                  swift_unknownObjectRetain();
                  v117 = Logger.logObject.getter();
                  v118 = static os_log_type_t.default.getter();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  if (os_log_type_enabled(v117, v118))
                  {
                    v119 = swift_slowAlloc();
                    v193 = swift_slowAlloc();
                    *v119 = v179;
                    *(v119 + 4) = sub_1000E3AF8(v182, v8, &v193);
                    *(v119 + 12) = 2080;
                    *(v119 + 14) = sub_1000E3AF8(v183, v188, &v193);
                    *(v119 + 22) = 2080;
                    v120 = sub_1000C5A1C(v186);
                    v122 = sub_1000E3AF8(v120, v121, &v193);

                    *(v119 + 24) = v122;
                    *(v119 + 32) = 2080;
                    v123 = swift_getObjectType();
                    v124 = sub_1000C5A1C(v123);
                    v126 = sub_1000E3AF8(v124, v125, &v193);

                    *(v119 + 34) = v126;
                    v8 = v189;
                    _os_log_impl(&_mh_execute_header, v117, v118, "State refresh (id: %s, reason: %s): %s updated state, will notify subscriber: %s", v119, 0x2Au);
                    swift_arrayDestroy();

                    v5 = v188;
                  }

                  sub_1000E402C(&v193, v15);

                  v109 = v187;
                  if (v18 == v187)
                  {
                    goto LABEL_68;
                  }
                }
              }

              v8 = 0;
              v181 = v108 & 0xFFFFFFFFFFFFFF8;
              v180 = v108 + 32;
              while (2)
              {
                if (v8 >= *(v181 + 16))
                {
                  goto LABEL_101;
                }

                v18 = *(v180 + 8 * v8);
                v127 = v195;
                if ((v195 & 0xC000000000000001) != 0)
                {
                  swift_retain_n();
                  v128 = __CocoaSet.contains(_:)();

                  if (v128)
                  {
                  }

                  else
                  {
LABEL_85:
                    v133 = v5;
                    v134 = v189;

                    swift_unknownObjectRetain();

                    v15 = Logger.logObject.getter();
                    v135 = static os_log_type_t.default.getter();

                    swift_unknownObjectRelease();

                    if (os_log_type_enabled(v15, v135))
                    {
                      v136 = swift_slowAlloc();
                      v193 = swift_slowAlloc();
                      *v136 = v179;
                      *(v136 + 4) = sub_1000E3AF8(v182, v134, &v193);
                      *(v136 + 12) = 2080;
                      *(v136 + 14) = sub_1000E3AF8(v183, v133, &v193);
                      *(v136 + 22) = 2080;
                      v137 = sub_1000C5A1C(v186);
                      v139 = sub_1000E3AF8(v137, v138, &v193);

                      *(v136 + 24) = v139;
                      *(v136 + 32) = 2080;
                      v140 = swift_getObjectType();
                      v141 = sub_1000C5A1C(v140);
                      v143 = sub_1000E3AF8(v141, v142, &v193);

                      *(v136 + 34) = v143;
                      v5 = v188;
                      _os_log_impl(&_mh_execute_header, v15, v135, "State refresh (id: %s, reason: %s): %s updated state, will notify subscriber: %s", v136, 0x2Au);
                      swift_arrayDestroy();

                      v109 = v187;
                    }

                    else
                    {

                      v5 = v133;
                    }

                    sub_1000E402C(&v193, v18);
                  }
                }

                else
                {
                  if (!*(v195 + 16) || (Hasher.init(_seed:)(), Hasher._combine(_:)(*(v18 + 16)), v129 = Hasher._finalize()(), v130 = -1 << *(v127 + 32), v131 = v129 & ~v130, ((*(v127 + 56 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131) & 1) == 0))
                  {
LABEL_84:

                    goto LABEL_85;
                  }

                  v132 = ~v130;
                  while (*(*(*(v127 + 48) + 8 * v131) + 16) != *(v18 + 16))
                  {
                    v131 = (v131 + 1) & v132;
                    if (((*(v127 + 56 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131) & 1) == 0)
                    {
                      goto LABEL_84;
                    }
                  }
                }

                if (++v8 == v109)
                {
                  swift_unknownObjectRelease();

                  v8 = v189;
                  goto LABEL_90;
                }

                continue;
              }
            }

            v8 = v189;

            swift_unknownObjectRetain();
            v93 = Logger.logObject.getter();
            v94 = static os_log_type_t.default.getter();
            swift_unknownObjectRelease();

            if (os_log_type_enabled(v93, v94))
            {
              v95 = swift_slowAlloc();
              v193 = swift_slowAlloc();
              *v95 = v169;
              *(v95 + 4) = sub_1000E3AF8(v182, v189, &v193);
              *(v95 + 12) = 2080;
              *(v95 + 14) = sub_1000E3AF8(v183, v5, &v193);
              *(v95 + 22) = 2080;
              v96 = sub_1000C5A1C(v186);
              v98 = sub_1000E3AF8(v96, v97, &v193);

              *(v95 + 24) = v98;
              _os_log_impl(&_mh_execute_header, v93, v94, "State refresh (id: %s, reason: %s): %s did not update state", v95, 0x20u);
              swift_arrayDestroy();

              v8 = v189;

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

LABEL_90:
            v18 = v175;
            v51 = v174;
            v52 = v177;
            v53 = v173;
            if (v177 == v174)
            {
              break;
            }
          }
        }
      }
    }

    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      *v146 = 136315394;
      v147 = sub_1000E3AF8(v182, v8, &v193);

      *(v146 + 4) = v147;
      *(v146 + 12) = 2080;
      *(v146 + 14) = sub_1000E3AF8(v183, v5, &v193);
      _os_log_impl(&_mh_execute_header, v144, v145, "State refresh (id: %s, reason: %s): completed", v146, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v148 = v165;
    v149 = v166;
    v150 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v151 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      v152 = v160;
      checkForErrorAndConsumeState(state:)();

      v153 = v161;
      if ((*(v148 + 88))(v152, v161) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v154 = "[Error] Interval already ended";
      }

      else
      {
        (*(v148 + 8))(v152, v153);
        v154 = "";
      }

      v155 = swift_slowAlloc();
      *v155 = 0;
      v156 = v166;
      v157 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v150, v151, v157, "State refresh", v154, v155, 2u);
      v149 = v156;
    }

    return v163(v149, v167);
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_10008580C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v192 = a3;
  v195 = a2;
  v188 = a1;
  v166 = type metadata accessor for OSSignpostError();
  v170 = *(v166 - 8);
  __chkstk_darwin(v166, v4);
  v165 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v194 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for OSSignpostID();
  v173 = *(v172 - 8);
  v11 = __chkstk_darwin(v172, v10);
  v171 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v164 - v15;
  __chkstk_darwin(v14, v17);
  v19 = &v164 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20, v22);
  v24 = (&v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v191 = v3;
  v25 = *(v3 + 56);
  *v24 = v25;
  (*(v21 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v20);
  v26 = v25;
  v27 = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v24, v20);
  if ((v27 & 1) == 0)
  {
    goto LABEL_95;
  }

  if (qword_100133A80 != -1)
  {
LABEL_96:
    swift_once();
  }

  v28 = type metadata accessor for OSSignposter();
  v29 = sub_1000144F0(v28, qword_100138798);
  if (qword_100133A88 != -1)
  {
    swift_once();
  }

  v30 = v172;
  v31 = sub_1000144F0(v172, qword_1001387B0);
  v32 = *(v173 + 16);
  v32(v19, v31, v30);
  v169 = v29;
  v33 = OSSignposter.logHandle.getter();
  v34 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v35 = v6;
    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, v34, v37, "State refresh", "", v36, 2u);
    v6 = v35;
  }

  v38 = v172;
  v32(v16, v19, v172);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v167 = OSSignpostIntervalState.init(id:isOpen:)();
  v39 = *(v173 + 8);
  v173 += 8;
  v168 = v39;
  v39(v19, v38);
  UUID.init()();
  v187 = UUID.uuidString.getter();
  v193 = v40;
  (*(v194 + 8))(v9, v6);
  v41 = swift_allocObject();
  *(v41 + 16) = _swiftEmptyArrayStorage;
  v42 = swift_allocObject();
  *(v42 + 16) = &_swiftEmptySetSingleton;
  v43 = swift_allocObject();
  *(v43 + 16) = &_swiftEmptySetSingleton;
  v175 = type metadata accessor for StateManagerWrapper();
  v44 = swift_allocObject();
  v46 = v191;
  v45 = v192;
  *(v44 + 16) = v191;
  *(v44 + 24) = v45;

  v16 = sub_1000C5A64(v44, v42, v43, v41);

  if (v16)
  {
    swift_beginAccess();

    v6 = sub_10008DD24(v47);

    v200 = &_swiftEmptySetSingleton;
    if (qword_100133AC0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    v49 = sub_1000144F0(v48, qword_10014E980);
    v50 = v193;

    v194 = v49;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    v19 = &type metadata for Any;
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      *v53 = 136315394;
      *(v53 + 4) = sub_1000E3AF8(v187, v50, &v198);
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_1000E3AF8(v188, v195, &v198);
      _os_log_impl(&_mh_execute_header, v51, v52, "State refresh (id: %s, reason: %s): starting", v53, 0x16u);
      swift_arrayDestroy();
    }

    v54 = swift_allocObject();
    v55 = v192;
    *(v54 + 16) = v46;
    *(v54 + 24) = v55;

    sub_1000E402C(&v198, v54);

    if (v6 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
      v57 = v193;
      if (v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v57 = v193;
      if (v9)
      {
LABEL_14:
        v58 = 0;
        v59 = v6 & 0xC000000000000001;
        v177 = v6 & 0xFFFFFFFFFFFFFF8;
        v176 = v6 + 32;
        *&v56 = 136315650;
        v174 = v56;
        *&v56 = 136315906;
        v184 = v56;
        v180 = v6;
        v179 = v9;
        v178 = v6 & 0xC000000000000001;
        do
        {
          if (v59)
          {
            v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v58 >= *(v177 + 16))
            {
              goto LABEL_94;
            }
          }

          v61 = __OFADD__(v58++, 1);
          if (v61)
          {
            goto LABEL_93;
          }

          v62 = v200;
          if ((v200 & 0xC000000000000001) != 0)
          {
            v63 = v60;

            v64 = __CocoaSet.contains(_:)();
            v65 = v63;

            if ((v64 & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          else
          {
            if (!*(v200 + 16))
            {
LABEL_15:

              continue;
            }

            v16 = v19;
            v96 = v60;
            Hasher.init(_seed:)();
            v97 = *(v96 + 16);
            Hasher._combine(_:)(v97);
            v98 = Hasher._finalize()();
            v99 = -1 << *(v62 + 32);
            v100 = v98 & ~v99;
            if (((*(v62 + 56 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100) & 1) == 0)
            {

              v19 = v16;
              continue;
            }

            v65 = v96;
            v101 = ~v99;
            v19 = v16;
            while (*(*(*(v62 + 48) + 8 * v100) + 16) != v97)
            {
              v100 = (v100 + 1) & v101;
              if (((*(v62 + 56 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100) & 1) == 0)
              {
                goto LABEL_15;
              }
            }
          }

          v182 = v58;
          v66 = *(v65 + 16);
          v67 = *(v65 + 24);
          v181 = v65;
          swift_unknownObjectRetain_n();

          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();

          if (os_log_type_enabled(v68, v69))
          {
            v70 = v57;
            v71 = swift_slowAlloc();
            v198 = swift_slowAlloc();
            *v71 = v174;
            *(v71 + 4) = sub_1000E3AF8(v187, v70, &v198);
            *(v71 + 12) = 2080;
            *(v71 + 14) = sub_1000E3AF8(v188, v195, &v198);
            *(v71 + 22) = 2080;
            ObjectType = swift_getObjectType();
            v73 = sub_1000C5A1C(ObjectType);
            v75 = sub_1000E3AF8(v73, v74, &v198);

            *(v71 + 24) = v75;
            _os_log_impl(&_mh_execute_header, v68, v69, "State refresh (id: %s, reason: %s): Notifying %s of state update", v71, 0x20u);
            swift_arrayDestroy();
          }

          v9 = v66;
          v76 = swift_getObjectType();
          v77 = *(v67 + 40);
          v191 = v76;
          v78 = v77(v76, v67);
          v189 = v67;
          if (!v78)
          {
            v57 = v193;

            swift_unknownObjectRetain();
            v102 = Logger.logObject.getter();
            v103 = static os_log_type_t.default.getter();
            swift_unknownObjectRelease();

            v16 = v66;
            if (!os_log_type_enabled(v102, v103))
            {
              swift_unknownObjectRelease();

              goto LABEL_89;
            }

            v104 = swift_slowAlloc();
            v198 = swift_slowAlloc();
            *v104 = v174;
            *(v104 + 4) = sub_1000E3AF8(v187, v193, &v198);
            *(v104 + 12) = 2080;
            *(v104 + 14) = sub_1000E3AF8(v188, v195, &v198);
            *(v104 + 22) = 2080;
            v105 = sub_1000C5A1C(v191);
            v107 = sub_1000E3AF8(v105, v106, &v198);

            *(v104 + 24) = v107;
            _os_log_impl(&_mh_execute_header, v102, v103, "State refresh (id: %s, reason: %s): %s did not update state", v104, 0x20u);
            v19 = &type metadata for Any;
            swift_arrayDestroy();

            v57 = v193;

            swift_unknownObjectRelease();

            goto LABEL_90;
          }

          v79 = v78;
          v57 = v193;

          swift_unknownObjectRetain();
          v6 = Logger.logObject.getter();
          v80 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();

          v81 = os_log_type_enabled(v6, v80);
          v183 = v9;
          if (v81)
          {
            LODWORD(v192) = v80;
            v82 = swift_slowAlloc();
            v186 = swift_slowAlloc();
            v197 = v186;
            *v82 = v184;
            *(v82 + 4) = sub_1000E3AF8(v187, v57, &v197);
            *(v82 + 12) = 2080;
            *(v82 + 14) = sub_1000E3AF8(v188, v195, &v197);
            *(v82 + 22) = 2080;
            v83 = sub_1000C5A1C(v191);
            v85 = sub_1000E3AF8(v83, v84, &v197);

            *(v82 + 24) = v85;
            v190 = v82;
            *(v82 + 32) = 2080;
            v86 = *(v79 + 16);
            if (v86)
            {
              v185 = v6;
              v196 = _swiftEmptyArrayStorage;
              sub_1000635A4(0, v86, 0);
              v87 = v196;
              v88 = (v79 + 40);
              do
              {
                v89 = *(v88 - 1);
                v90 = *v88;
                v198 = 538976288;
                v199 = 0xE400000000000000;

                v91._countAndFlagsBits = v89;
                v91._object = v90;
                String.append(_:)(v91);

                v93 = v198;
                v92 = v199;
                v196 = v87;
                v9 = v87[2];
                v94 = v87[3];
                if (v9 >= v94 >> 1)
                {
                  sub_1000635A4((v94 > 1), v9 + 1, 1);
                  v87 = v196;
                }

                v87[2] = v9 + 1;
                v95 = &v87[2 * v9];
                v95[4] = v93;
                v95[5] = v92;
                v88 += 2;
                --v86;
              }

              while (v86);

              v57 = v193;
              v6 = v185;
            }

            else
            {

              v87 = _swiftEmptyArrayStorage;
            }

            v198 = v87;
            sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
            sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
            v108 = BidirectionalCollection<>.joined(separator:)();
            v110 = v109;

            v111 = sub_1000E3AF8(v108, v110, &v197);

            v112 = v190;
            *(v190 + 34) = v111;
            _os_log_impl(&_mh_execute_header, v6, v192, "State refresh (id: %s, reason: %s): %s updated state:\n%s", v112, 0x2Au);
            swift_arrayDestroy();

            v19 = v175;
            v67 = v189;
          }

          else
          {

            v19 = v175;
          }

          v113 = (*(v67 + 16))(v191, v67);
          v114 = *(v113 + 16);
          if (v114)
          {
            v198 = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            v115 = 32;
            do
            {
              *(swift_allocObject() + 16) = *(v113 + v115);
              swift_unknownObjectRetain();
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v9 = *(v198 + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v115 += 16;
              --v114;
            }

            while (v114);

            v116 = v198;
            v57 = v193;
            if (v198 >> 62)
            {
LABEL_70:
              v16 = _CocoaArrayWrapper.endIndex.getter();
              if (!v16)
              {
LABEL_68:
                swift_unknownObjectRelease();

                goto LABEL_89;
              }

              goto LABEL_53;
            }
          }

          else
          {

            v116 = _swiftEmptyArrayStorage;
            if (_swiftEmptyArrayStorage >> 62)
            {
              goto LABEL_70;
            }
          }

          v16 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v16)
          {
            goto LABEL_68;
          }

LABEL_53:
          v190 = v116;
          v192 = v16;
          if ((v116 & 0xC000000000000001) != 0)
          {
            v9 = 0;
            while (1)
            {
              while (1)
              {
                v117 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v61 = __OFADD__(v9++, 1);
                if (v61)
                {
                  __break(1u);
LABEL_92:
                  __break(1u);
LABEL_93:
                  __break(1u);
LABEL_94:
                  __break(1u);
LABEL_95:
                  __break(1u);
                  goto LABEL_96;
                }

                v19 = v117;
                v118 = v200;
                if ((v200 & 0xC000000000000001) != 0)
                {
                  break;
                }

                if (!*(v200 + 16))
                {
                  goto LABEL_65;
                }

                Hasher.init(_seed:)();
                Hasher._combine(_:)(*(v19 + 2));
                v120 = Hasher._finalize()();
                v121 = -1 << *(v118 + 32);
                v122 = v120 & ~v121;
                if (((*(v118 + 56 + ((v122 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v122) & 1) == 0)
                {
                  goto LABEL_65;
                }

                v123 = ~v121;
                while (*(*(*(v118 + 48) + 8 * v122) + 16) != *(v19 + 2))
                {
                  v122 = (v122 + 1) & v123;
                  if (((*(v118 + 56 + ((v122 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v122) & 1) == 0)
                  {
                    goto LABEL_65;
                  }
                }

LABEL_55:
                swift_unknownObjectRelease();
                if (v9 == v16)
                {
                  goto LABEL_68;
                }
              }

              swift_unknownObjectRetain();
              v119 = __CocoaSet.contains(_:)();
              swift_unknownObjectRelease();
              if (v119)
              {
                goto LABEL_55;
              }

LABEL_65:

              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v124 = Logger.logObject.getter();
              v125 = static os_log_type_t.default.getter();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              if (os_log_type_enabled(v124, v125))
              {
                v6 = swift_slowAlloc();
                v198 = swift_slowAlloc();
                *v6 = v184;
                *(v6 + 4) = sub_1000E3AF8(v187, v57, &v198);
                *(v6 + 12) = 2080;
                *(v6 + 14) = sub_1000E3AF8(v188, v195, &v198);
                *(v6 + 22) = 2080;
                v126 = sub_1000C5A1C(v191);
                v128 = sub_1000E3AF8(v126, v127, &v198);

                *(v6 + 24) = v128;
                *(v6 + 32) = 2080;
                v129 = swift_getObjectType();
                v130 = sub_1000C5A1C(v129);
                v132 = sub_1000E3AF8(v130, v131, &v198);

                *(v6 + 34) = v132;
                v57 = v193;
                _os_log_impl(&_mh_execute_header, v124, v125, "State refresh (id: %s, reason: %s): %s updated state, will notify subscriber: %s", v6, 0x2Au);
                swift_arrayDestroy();
              }

              sub_1000E402C(&v198, v19);

              v16 = v192;
              if (v9 == v192)
              {
                goto LABEL_68;
              }
            }
          }

          v133 = 0;
          v186 = v116 & 0xFFFFFFFFFFFFFF8;
          v185 = v116 + 32;
          do
          {
            if (v133 >= *(v186 + 16))
            {
              goto LABEL_92;
            }

            v9 = *(v185 + 8 * v133);
            v134 = v200;
            if ((v200 & 0xC000000000000001) != 0)
            {
              swift_retain_n();
              v135 = __CocoaSet.contains(_:)();

              if (v135)
              {

                goto LABEL_74;
              }

              goto LABEL_85;
            }

            if (!*(v200 + 16) || (Hasher.init(_seed:)(), Hasher._combine(_:)(*(v9 + 16)), v136 = Hasher._finalize()(), v137 = -1 << *(v134 + 32), v138 = v136 & ~v137, ((*(v134 + 56 + ((v138 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v138) & 1) == 0))
            {
LABEL_84:

LABEL_85:
              v140 = v195;
              v6 = v193;

              swift_unknownObjectRetain();

              v19 = Logger.logObject.getter();
              v141 = static os_log_type_t.default.getter();

              swift_unknownObjectRelease();

              if (os_log_type_enabled(v19, v141))
              {
                v142 = swift_slowAlloc();
                v198 = swift_slowAlloc();
                *v142 = v184;
                *(v142 + 4) = sub_1000E3AF8(v187, v6, &v198);
                *(v142 + 12) = 2080;
                *(v142 + 14) = sub_1000E3AF8(v188, v140, &v198);
                *(v142 + 22) = 2080;
                v143 = sub_1000C5A1C(v191);
                v145 = sub_1000E3AF8(v143, v144, &v198);

                *(v142 + 24) = v145;
                *(v142 + 32) = 2080;
                v146 = swift_getObjectType();
                v147 = sub_1000C5A1C(v146);
                v6 = sub_1000E3AF8(v147, v148, &v198);

                *(v142 + 34) = v6;
                _os_log_impl(&_mh_execute_header, v19, v141, "State refresh (id: %s, reason: %s): %s updated state, will notify subscriber: %s", v142, 0x2Au);
                swift_arrayDestroy();

                v16 = v192;
              }

              sub_1000E402C(&v198, v9);

              goto LABEL_74;
            }

            v139 = ~v137;
            while (*(*(*(v134 + 48) + 8 * v138) + 16) != *(v9 + 16))
            {
              v138 = (v138 + 1) & v139;
              if (((*(v134 + 56 + ((v138 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v138) & 1) == 0)
              {
                goto LABEL_84;
              }
            }

LABEL_74:
            ++v133;
          }

          while (v133 != v16);
          swift_unknownObjectRelease();

          v57 = v193;
LABEL_89:
          v19 = &type metadata for Any;
LABEL_90:
          v6 = v180;
          v9 = v179;
          v58 = v182;
          v59 = v178;
        }

        while (v58 != v9);
      }
    }

    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      *v151 = 136315394;
      v152 = sub_1000E3AF8(v187, v57, &v198);

      *(v151 + 4) = v152;
      *(v151 + 12) = 2080;
      *(v151 + 14) = sub_1000E3AF8(v188, v195, &v198);
      _os_log_impl(&_mh_execute_header, v149, v150, "State refresh (id: %s, reason: %s): completed", v151, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v153 = v170;
    v154 = v171;
    v155 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v156 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      v157 = v165;
      checkForErrorAndConsumeState(state:)();

      v158 = v166;
      if ((*(v153 + 88))(v157, v166) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v159 = "[Error] Interval already ended";
      }

      else
      {
        (*(v153 + 8))(v157, v158);
        v159 = "";
      }

      v160 = swift_slowAlloc();
      *v160 = 0;
      v161 = v171;
      v162 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v155, v156, v162, "State refresh", v159, v160, 2u);
      v154 = v161;
    }

    return v168(v154, v172);
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_1000871AC(uint64_t a1, unint64_t a2)
{
  v188 = a2;
  v183 = a1;
  v161 = type metadata accessor for OSSignpostError();
  v165 = *(v161 - 8);
  __chkstk_darwin(v161, v3);
  v160 = &v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for UUID();
  v5 = *(v190 - 8);
  __chkstk_darwin(v190, v6);
  v8 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for OSSignpostID();
  v168 = *(v167 - 8);
  v10 = __chkstk_darwin(v167, v9);
  v166 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v159 - v14;
  __chkstk_darwin(v13, v16);
  v18 = &v159 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19, v21);
  v23 = (&v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v187 = v2;
  v24 = *(&v2->isa + OBJC_IVAR____TtC10driverkitd15ApprovalManager_stateManagerQueue);
  *v23 = v24;
  (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
  v25 = v24;
  v26 = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v23, v19);
  if ((v26 & 1) == 0)
  {
    goto LABEL_104;
  }

  if (qword_100133A80 != -1)
  {
LABEL_105:
    swift_once();
  }

  v27 = type metadata accessor for OSSignposter();
  v28 = sub_1000144F0(v27, qword_100138798);
  if (qword_100133A88 != -1)
  {
    swift_once();
  }

  v29 = v167;
  v30 = sub_1000144F0(v167, qword_1001387B0);
  v31 = *(v168 + 16);
  v31(v18, v30, v29);
  v164 = v28;
  v32 = OSSignposter.logHandle.getter();
  v33 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, v33, v35, "State refresh", "", v34, 2u);
  }

  v36 = v167;
  v31(v15, v18, v167);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v162 = OSSignpostIntervalState.init(id:isOpen:)();
  v37 = *(v168 + 8);
  v168 += 8;
  v163 = v37;
  v37(v18, v36);
  UUID.init()();
  v182 = UUID.uuidString.getter();
  v189 = v38;
  (*(v5 + 8))(v8, v190);
  v39 = swift_allocObject();
  *(v39 + 16) = _swiftEmptyArrayStorage;
  v40 = swift_allocObject();
  *(v40 + 16) = &_swiftEmptySetSingleton;
  v41 = swift_allocObject();
  *(v41 + 16) = &_swiftEmptySetSingleton;
  v170 = type metadata accessor for StateManagerWrapper();
  v42 = swift_allocObject();
  *(v42 + 16) = v187;
  *(v42 + 24) = &off_100129F40;

  v15 = sub_1000C5A64(v42, v40, v41, v39);

  if (v15)
  {
    swift_beginAccess();

    v175 = sub_10008DD24(v43);

    v195 = &_swiftEmptySetSingleton;
    v5 = v188;
    if (qword_100133AC0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    v45 = sub_1000144F0(v44, qword_10014E980);
    v8 = v189;

    v190 = v45;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      *v48 = 136315394;
      *(v48 + 4) = sub_1000E3AF8(v182, v189, &v193);
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_1000E3AF8(v183, v5, &v193);
      _os_log_impl(&_mh_execute_header, v46, v47, "State refresh (id: %s, reason: %s): starting", v48, 0x16u);
      swift_arrayDestroy();

      v8 = v189;
    }

    v18 = v175;
    v49 = swift_allocObject();
    *(v49 + 16) = v187;
    *(v49 + 24) = &off_100129F40;

    sub_1000E402C(&v193, v49);

    if (v18 >> 62)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
      if (v51)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v51 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v51)
      {
LABEL_14:
        v52 = 0;
        v53 = v18 & 0xC000000000000001;
        v172 = v18 & 0xFFFFFFFFFFFFFF8;
        v171 = v18 + 32;
        *&v50 = 136315650;
        v169 = v50;
        *&v50 = 136315906;
        v179 = v50;
        v174 = v51;
        v173 = v18 & 0xC000000000000001;
        while (1)
        {
          if (v53)
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v54 = __OFADD__(v52++, 1);
            if (v54)
            {
              goto LABEL_102;
            }
          }

          else
          {
            if (v52 >= *(v172 + 16))
            {
              goto LABEL_103;
            }

            v15 = *(v171 + 8 * v52);

            v54 = __OFADD__(v52++, 1);
            if (v54)
            {
              goto LABEL_102;
            }
          }

          v55 = v195;
          if ((v195 & 0xC000000000000001) != 0)
          {

            v56 = __CocoaSet.contains(_:)();
            v57 = v15;

            if (v56)
            {
              goto LABEL_24;
            }

LABEL_15:

            if (v52 == v51)
            {
              break;
            }
          }

          else
          {
            if (!*(v195 + 16))
            {
              goto LABEL_15;
            }

            Hasher.init(_seed:)();
            v88 = *(v15 + 16);
            Hasher._combine(_:)(v88);
            v89 = Hasher._finalize()();
            v90 = -1 << *(v55 + 32);
            v91 = v89 & ~v90;
            if (((*(v55 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
            {
              goto LABEL_15;
            }

            v57 = v15;
            v92 = ~v90;
            while (*(*(*(v55 + 48) + 8 * v91) + 16) != v88)
            {
              v91 = (v91 + 1) & v92;
              if (((*(v55 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
              {
                goto LABEL_15;
              }
            }

LABEL_24:
            v177 = v52;
            v15 = *(v57 + 16);
            v58 = *(v57 + 24);
            v176 = v57;
            swift_unknownObjectRetain_n();

            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.default.getter();
            swift_unknownObjectRelease();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = v8;
              v62 = swift_slowAlloc();
              v193 = swift_slowAlloc();
              *v62 = v169;
              *(v62 + 4) = sub_1000E3AF8(v182, v61, &v193);
              *(v62 + 12) = 2080;
              *(v62 + 14) = sub_1000E3AF8(v183, v5, &v193);
              *(v62 + 22) = 2080;
              ObjectType = swift_getObjectType();
              v64 = sub_1000C5A1C(ObjectType);
              v66 = sub_1000E3AF8(v64, v65, &v193);

              *(v62 + 24) = v66;
              _os_log_impl(&_mh_execute_header, v59, v60, "State refresh (id: %s, reason: %s): Notifying %s of state update", v62, 0x20u);
              swift_arrayDestroy();
            }

            v18 = v15;
            v67 = swift_getObjectType();
            v68 = *(v58 + 40);
            v186 = v67;
            v69 = v68(v67, v58);
            v184 = v58;
            if (v69)
            {
              v70 = v69;
              v8 = v189;

              swift_unknownObjectRetain();
              v71 = Logger.logObject.getter();
              v72 = static os_log_type_t.default.getter();
              swift_unknownObjectRelease();

              v73 = os_log_type_enabled(v71, v72);
              v178 = v18;
              if (v73)
              {
                LODWORD(v185) = v72;
                v187 = v71;
                v74 = swift_slowAlloc();
                v180 = swift_slowAlloc();
                v192 = v180;
                *v74 = v179;
                *(v74 + 4) = sub_1000E3AF8(v182, v8, &v192);
                *(v74 + 12) = 2080;
                *(v74 + 14) = sub_1000E3AF8(v183, v5, &v192);
                *(v74 + 22) = 2080;
                v75 = sub_1000C5A1C(v186);
                v77 = sub_1000E3AF8(v75, v76, &v192);

                *(v74 + 24) = v77;
                v181 = v74;
                *(v74 + 32) = 2080;
                v78 = *(v70 + 16);
                if (v78)
                {
                  v191 = _swiftEmptyArrayStorage;
                  sub_1000635A4(0, v78, 0);
                  v79 = v191;
                  v80 = (v70 + 40);
                  do
                  {
                    v81 = *(v80 - 1);
                    v82 = *v80;
                    v193 = 538976288;
                    v194 = 0xE400000000000000;

                    v83._countAndFlagsBits = v81;
                    v83._object = v82;
                    String.append(_:)(v83);

                    v85 = v193;
                    v84 = v194;
                    v191 = v79;
                    v18 = v79[2];
                    v86 = v79[3];
                    if (v18 >= v86 >> 1)
                    {
                      sub_1000635A4((v86 > 1), v18 + 1, 1);
                      v79 = v191;
                    }

                    v79[2] = v18 + 1;
                    v87 = &v79[2 * v18];
                    v87[4] = v85;
                    v87[5] = v84;
                    v80 += 2;
                    --v78;
                  }

                  while (v78);

                  v5 = v188;
                  v8 = v189;
                }

                else
                {

                  v79 = _swiftEmptyArrayStorage;
                }

                v193 = v79;
                sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
                sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
                v99 = BidirectionalCollection<>.joined(separator:)();
                v101 = v100;

                v102 = sub_1000E3AF8(v99, v101, &v192);

                v103 = v181;
                *(v181 + 34) = v102;
                v104 = v187;
                _os_log_impl(&_mh_execute_header, v187, v185, "State refresh (id: %s, reason: %s): %s updated state:\n%s", v103, 0x2Au);
                swift_arrayDestroy();

                v15 = v170;
                v58 = v184;
              }

              else
              {

                v15 = v170;
              }

              v105 = (*(v58 + 16))(v186, v58);
              v106 = *(v105 + 16);
              if (v106)
              {
                v193 = _swiftEmptyArrayStorage;
                specialized ContiguousArray.reserveCapacity(_:)();
                v107 = 32;
                do
                {
                  *(swift_allocObject() + 16) = *(v105 + v107);
                  swift_unknownObjectRetain();
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  v18 = *(v193 + 16);
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                  v107 += 16;
                  --v106;
                }

                while (v106);

                v108 = v193;
                v8 = v189;
                if (!(v193 >> 62))
                {
LABEL_52:
                  v109 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v109)
                  {
                    goto LABEL_53;
                  }

LABEL_68:
                  swift_unknownObjectRelease();

                  goto LABEL_90;
                }
              }

              else
              {

                v108 = _swiftEmptyArrayStorage;
                if (!(_swiftEmptyArrayStorage >> 62))
                {
                  goto LABEL_52;
                }
              }

              v109 = _CocoaArrayWrapper.endIndex.getter();
              if (!v109)
              {
                goto LABEL_68;
              }

LABEL_53:
              v185 = v108;
              v187 = v109;
              if ((v108 & 0xC000000000000001) != 0)
              {
                v18 = 0;
                while (1)
                {
                  while (1)
                  {
                    v110 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v54 = __OFADD__(v18++, 1);
                    if (v54)
                    {
                      __break(1u);
LABEL_101:
                      __break(1u);
LABEL_102:
                      __break(1u);
LABEL_103:
                      __break(1u);
LABEL_104:
                      __break(1u);
                      goto LABEL_105;
                    }

                    v15 = v110;
                    v111 = v195;
                    if ((v195 & 0xC000000000000001) != 0)
                    {
                      break;
                    }

                    if (!*(v195 + 16))
                    {
                      goto LABEL_65;
                    }

                    Hasher.init(_seed:)();
                    Hasher._combine(_:)(*(v15 + 16));
                    v113 = Hasher._finalize()();
                    v114 = -1 << *(v111 + 32);
                    v115 = v113 & ~v114;
                    if (((*(v111 + 56 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115) & 1) == 0)
                    {
                      goto LABEL_65;
                    }

                    v116 = ~v114;
                    while (*(*(*(v111 + 48) + 8 * v115) + 16) != *(v15 + 16))
                    {
                      v115 = (v115 + 1) & v116;
                      if (((*(v111 + 56 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115) & 1) == 0)
                      {
                        goto LABEL_65;
                      }
                    }

LABEL_55:
                    swift_unknownObjectRelease();
                    if (v18 == v109)
                    {
                      goto LABEL_68;
                    }
                  }

                  swift_unknownObjectRetain();
                  v112 = __CocoaSet.contains(_:)();
                  swift_unknownObjectRelease();
                  if (v112)
                  {
                    goto LABEL_55;
                  }

LABEL_65:

                  swift_unknownObjectRetain();
                  swift_unknownObjectRetain();
                  v117 = Logger.logObject.getter();
                  v118 = static os_log_type_t.default.getter();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  if (os_log_type_enabled(v117, v118))
                  {
                    v119 = swift_slowAlloc();
                    v193 = swift_slowAlloc();
                    *v119 = v179;
                    *(v119 + 4) = sub_1000E3AF8(v182, v8, &v193);
                    *(v119 + 12) = 2080;
                    *(v119 + 14) = sub_1000E3AF8(v183, v188, &v193);
                    *(v119 + 22) = 2080;
                    v120 = sub_1000C5A1C(v186);
                    v122 = sub_1000E3AF8(v120, v121, &v193);

                    *(v119 + 24) = v122;
                    *(v119 + 32) = 2080;
                    v123 = swift_getObjectType();
                    v124 = sub_1000C5A1C(v123);
                    v126 = sub_1000E3AF8(v124, v125, &v193);

                    *(v119 + 34) = v126;
                    v8 = v189;
                    _os_log_impl(&_mh_execute_header, v117, v118, "State refresh (id: %s, reason: %s): %s updated state, will notify subscriber: %s", v119, 0x2Au);
                    swift_arrayDestroy();

                    v5 = v188;
                  }

                  sub_1000E402C(&v193, v15);

                  v109 = v187;
                  if (v18 == v187)
                  {
                    goto LABEL_68;
                  }
                }
              }

              v8 = 0;
              v181 = v108 & 0xFFFFFFFFFFFFFF8;
              v180 = v108 + 32;
              while (2)
              {
                if (v8 >= *(v181 + 16))
                {
                  goto LABEL_101;
                }

                v18 = *(v180 + 8 * v8);
                v127 = v195;
                if ((v195 & 0xC000000000000001) != 0)
                {
                  swift_retain_n();
                  v128 = __CocoaSet.contains(_:)();

                  if (v128)
                  {
                  }

                  else
                  {
LABEL_85:
                    v133 = v5;
                    v134 = v189;

                    swift_unknownObjectRetain();

                    v15 = Logger.logObject.getter();
                    v135 = static os_log_type_t.default.getter();

                    swift_unknownObjectRelease();

                    if (os_log_type_enabled(v15, v135))
                    {
                      v136 = swift_slowAlloc();
                      v193 = swift_slowAlloc();
                      *v136 = v179;
                      *(v136 + 4) = sub_1000E3AF8(v182, v134, &v193);
                      *(v136 + 12) = 2080;
                      *(v136 + 14) = sub_1000E3AF8(v183, v133, &v193);
                      *(v136 + 22) = 2080;
                      v137 = sub_1000C5A1C(v186);
                      v139 = sub_1000E3AF8(v137, v138, &v193);

                      *(v136 + 24) = v139;
                      *(v136 + 32) = 2080;
                      v140 = swift_getObjectType();
                      v141 = sub_1000C5A1C(v140);
                      v143 = sub_1000E3AF8(v141, v142, &v193);

                      *(v136 + 34) = v143;
                      v5 = v188;
                      _os_log_impl(&_mh_execute_header, v15, v135, "State refresh (id: %s, reason: %s): %s updated state, will notify subscriber: %s", v136, 0x2Au);
                      swift_arrayDestroy();

                      v109 = v187;
                    }

                    else
                    {

                      v5 = v133;
                    }

                    sub_1000E402C(&v193, v18);
                  }
                }

                else
                {
                  if (!*(v195 + 16) || (Hasher.init(_seed:)(), Hasher._combine(_:)(*(v18 + 16)), v129 = Hasher._finalize()(), v130 = -1 << *(v127 + 32), v131 = v129 & ~v130, ((*(v127 + 56 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131) & 1) == 0))
                  {
LABEL_84:

                    goto LABEL_85;
                  }

                  v132 = ~v130;
                  while (*(*(*(v127 + 48) + 8 * v131) + 16) != *(v18 + 16))
                  {
                    v131 = (v131 + 1) & v132;
                    if (((*(v127 + 56 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131) & 1) == 0)
                    {
                      goto LABEL_84;
                    }
                  }
                }

                if (++v8 == v109)
                {
                  swift_unknownObjectRelease();

                  v8 = v189;
                  goto LABEL_90;
                }

                continue;
              }
            }

            v8 = v189;

            swift_unknownObjectRetain();
            v93 = Logger.logObject.getter();
            v94 = static os_log_type_t.default.getter();
            swift_unknownObjectRelease();

            if (os_log_type_enabled(v93, v94))
            {
              v95 = swift_slowAlloc();
              v193 = swift_slowAlloc();
              *v95 = v169;
              *(v95 + 4) = sub_1000E3AF8(v182, v189, &v193);
              *(v95 + 12) = 2080;
              *(v95 + 14) = sub_1000E3AF8(v183, v5, &v193);
              *(v95 + 22) = 2080;
              v96 = sub_1000C5A1C(v186);
              v98 = sub_1000E3AF8(v96, v97, &v193);

              *(v95 + 24) = v98;
              _os_log_impl(&_mh_execute_header, v93, v94, "State refresh (id: %s, reason: %s): %s did not update state", v95, 0x20u);
              swift_arrayDestroy();

              v8 = v189;

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

LABEL_90:
            v18 = v175;
            v51 = v174;
            v52 = v177;
            v53 = v173;
            if (v177 == v174)
            {
              break;
            }
          }
        }
      }
    }

    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      *v146 = 136315394;
      v147 = sub_1000E3AF8(v182, v8, &v193);

      *(v146 + 4) = v147;
      *(v146 + 12) = 2080;
      *(v146 + 14) = sub_1000E3AF8(v183, v5, &v193);
      _os_log_impl(&_mh_execute_header, v144, v145, "State refresh (id: %s, reason: %s): completed", v146, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v148 = v165;
    v149 = v166;
    v150 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v151 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      v152 = v160;
      checkForErrorAndConsumeState(state:)();

      v153 = v161;
      if ((*(v148 + 88))(v152, v161) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v154 = "[Error] Interval already ended";
      }

      else
      {
        (*(v148 + 8))(v152, v153);
        v154 = "";
      }

      v155 = swift_slowAlloc();
      *v155 = 0;
      v156 = v166;
      v157 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v150, v151, v157, "State refresh", v154, v155, 2u);
      v149 = v156;
    }

    return v163(v149, v167);
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100088B34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_stateManagerQueue);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_10008E950;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006CCB0;
  aBlock[3] = &unk_10012A018;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10008E840(&unk_100133CA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003CDC(&unk_100137370, &unk_1000F32E0);
  sub_10001455C(&qword_100133CB0, &unk_100137370, &unk_1000F32E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v17);
}

uint64_t sub_100088E18(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_requests;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return sub_1000871AC(0xD00000000000001BLL, 0x80000001001085C0);
}

uint64_t sub_100088EF0()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_stateManagerQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_requests;
    swift_beginAccess();
    result = *(v0 + v9);
    *(v0 + v9) = _swiftEmptyArrayStorage;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100089030()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC10driverkitd15ApprovalManager__approvalDB);
  v3 = *(v0 + OBJC_IVAR____TtC10driverkitd15ApprovalManager__approvalDB);
  if (v3)
  {

    return v3;
  }

  if (qword_100133AE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000144F0(v4, qword_10014E9E0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31[0] = v8;
    *v7 = 136315138;
    v9 = URL.path.getter();
    v11 = sub_1000E3AF8(v9, v10, v31);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Loading approvals database from %s", v7, 0xCu);
    sub_100003C90(v8);
  }

  sub_100003C4C((v1 + 16), *(v1 + 40));
  sub_1000DF9D4(v31);
  v12 = v31[4];
  sub_100003C4C(v31, v31[3]);
  v13 = URL.path.getter();
  v14 = (*(v12 + 16))(v13);
  v16 = v15;

  sub_100003C90(v31);
  if (v16 >> 60 != 15)
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Loading approvals database, decoding data", v29, 2u);
    }

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10008E894();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    sub_100014528(v14, v16);

    v3 = v31[0];
    v30 = v31[1];
    *v2 = v31[0];
    v2[1] = v30;

    return v3;
  }

  v17 = errno.getter();
  result = strerror(v17);
  if (result)
  {
    v19 = String.init(cString:)();
    v21 = v20;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31[0] = v25;
      *v24 = 136315138;
      v26 = sub_1000E3AF8(v19, v21, v31);

      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "contentsOfFile failed to read approvals database: %s", v24, 0xCu);
      sub_100003C90(v25);
    }

    else
    {
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

char *sub_100089554()
{
  v2 = v0;
  v3 = sub_100003CDC(&qword_1001342D8, &unk_100101820);
  __chkstk_darwin(v3 - 8, v4);
  v426 = &v412 - v5;
  v425 = type metadata accessor for DriverBinEntry(0);
  v428 = *(v425 - 8);
  v7 = __chkstk_darwin(v425, v6);
  v439 = &v412 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v427 = &v412 - v10;
  v11 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  __chkstk_darwin(v11 - 8, v12);
  v452 = &v412 - v13;
  v14 = type metadata accessor for URL();
  v430 = *(v14 - 8);
  v16 = __chkstk_darwin(v14, v15);
  v420 = &v412 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16, v18);
  v424 = &v412 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v419 = &v412 - v23;
  v25 = __chkstk_darwin(v22, v24);
  v418 = &v412 - v26;
  v28 = __chkstk_darwin(v25, v27);
  v417 = &v412 - v29;
  v31 = __chkstk_darwin(v28, v30);
  v423 = &v412 - v32;
  v34 = __chkstk_darwin(v31, v33);
  v444 = &v412 - v35;
  v37 = __chkstk_darwin(v34, v36);
  v435 = &v412 - v38;
  v40 = __chkstk_darwin(v37, v39);
  v42 = &v412 - v41;
  __chkstk_darwin(v40, v43);
  v461 = (&v412 - v44);
  v45 = type metadata accessor for LookupSpec(0);
  __chkstk_darwin(v45, v46);
  v48 = &v412 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v449 = sub_100089030();
  v465 = _swiftEmptyArrayStorage;
  v466 = 0;
  v434 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_driverBinManager;
  if (!*(v0 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_driverBinManager))
  {
    goto LABEL_373;
  }

  v49 = sub_100048948();
  v51 = v50;

  v52 = *(v0 + OBJC_IVAR____TtC10driverkitd15ApprovalManager_kernelStateManager);
  if (!v52)
  {
LABEL_374:
    __break(1u);
  }

  v53 = *(*(v52 + 56) + 656);

  os_unfair_lock_lock((v53 + 72));
  v54 = *(v53 + 32);
  v467[0] = *(v53 + 16);
  v467[1] = v54;
  v467[2] = *(v53 + 48);
  v468 = *(v53 + 64);
  sub_100013848(v467, &v482);
  os_unfair_lock_unlock((v53 + 72));

  swift_storeEnumTagMultiPayload();
  v55 = sub_100054F6C(v48, 0, 0);
  sub_1000138A4(v467);
  sub_10008E6A8(v48, type metadata accessor for LookupSpec);
  if (v55)
  {
    v56 = v55;
  }

  else
  {
    v56 = _swiftEmptyArrayStorage;
  }

  v57 = sub_10008101C(v49);
  *&v456 = 0;
  v58 = sub_1000EB530(v57);

  if (v56 >> 62)
  {
LABEL_343:
    v59 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v59 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v421 = v51;
  v443 = v2;
  v453 = v14;
  v431 = v49;
  v459 = v58;
  v440 = v56;
  if (!v59)
  {
    v438 = 0x80000001001084D0;
    v455 = _swiftEmptyArrayStorage;
    goto LABEL_80;
  }

  v51 = 0;
  v432 = v56 + 32;
  v433 = v56 & 0xFFFFFFFFFFFFFF8;
  v447 = (v430 + 56);
  v448 = v56 & 0xC000000000000001;
  v460 = (v430 + 16);
  v446 = (v430 + 48);
  v458 = (v58 + 56);
  v1 = v430 + 8;
  v454 = 0x8000000100104280;
  v436 = "Pending Requests ";
  *&v437 = v430 + 32;
  v438 = 0x80000001001084D0;
  v442 = (v449 + 64);
  v455 = _swiftEmptyArrayStorage;
  *(&v60 + 1) = 0xF000000000000000;
  v441 = xmmword_1000F9530;
  *&v60 = 136315394;
  v422 = v60;
  v2 = v452;
  v49 = v461;
  v445 = v59;
  do
  {
    if (v448)
    {
      v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v73 = __OFADD__(v51++, 1);
      if (v73)
      {
        goto LABEL_337;
      }
    }

    else
    {
      if (v51 >= *(v433 + 16))
      {
        goto LABEL_339;
      }

      v72 = *(v432 + 8 * v51);

      v73 = __OFADD__(v51++, 1);
      if (v73)
      {
        goto LABEL_337;
      }
    }

    sub_1000138F8(*(v72 + 24) + 24, &v482);
    v457 = v72;
    if (BYTE8(v484))
    {
      if (BYTE8(v484) == 1)
      {
        (*v460)(v2, v482._countAndFlagsBits + OBJC_IVAR____TtC10driverkitd16KernelCollection_path, v14);

        (*v447)(v2, 0, 1, v14);
      }

      else
      {
        (*v447)(v2, 1, 1, v14);
        sub_100013954(&v482);
      }
    }

    else
    {
      sub_100009F34(&v482._countAndFlagsBits, &v476);
      v74 = *(&v477 + 1);
      v75 = v478;
      sub_100003C4C(&v476, *(&v477 + 1));
      (*(v75 + 64))(v74, v75);
      (*v447)(v2, 0, 1, v14);
      sub_100003C90(&v476);
    }

    if ((*v446)(v2, 1, v14) == 1)
    {
      sub_10000A184(v2, &unk_1001389D0, &qword_1000F4F60);
LABEL_35:
      v87 = *(*(v457 + 24) + 16);
      if (qword_100133A50 != -1)
      {
        swift_once();
      }

      v88 = *(v87 + 16);
      v450 = *algn_10014E8C8;
      v451 = qword_10014E8C0;
      if (v88 && (v89 = sub_100061588(qword_10014E8C0, *algn_10014E8C8), (v90 & 1) != 0) && (sub_10000B430(*(v87 + 56) + 32 * v89, &v482), (swift_dynamicCast() & 1) != 0))
      {
        object = v476._object;
        countAndFlagsBits = v476._countAndFlagsBits;
      }

      else
      {
        countAndFlagsBits = 0xD000000000000014;
        object = v454;
      }

      v93 = *(v449 + 2);
      for (i = v442; v93; --v93)
      {
        v110 = *(i - 1);
        v109 = *i;
        if (*(i - 4) == countAndFlagsBits && *(i - 3) == object)
        {
          if (v110 >> 60 == 15)
          {
            goto LABEL_59;
          }
        }

        else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && v110 >> 60 == 15)
        {
LABEL_59:

          v14 = v453;
          v49 = v461;
          goto LABEL_60;
        }

        i += 40;
      }

      v482._countAndFlagsBits = 0;
      v482._object = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      v95._countAndFlagsBits = 0xD000000000000017;
      v95._object = (v436 | 0x8000000000000000);
      String.append(_:)(v95);
      v476._countAndFlagsBits = v457;
      type metadata accessor for RealizedInfo(0);
      _print_unlocked<A, B>(_:_:)();
      v96._countAndFlagsBits = 0xD00000000000001BLL;
      v96._object = v438;
      String.append(_:)(v96);
      if (qword_100133A30 != -1)
      {
        swift_once();
      }

      v98 = __chkstk_darwin(off_100135B38, v97);
      v84 = v456;
      v99 = sub_10006573C(v98, sub_10008E964);
      *&v456 = v84;
      v100 = _HashTable.startBucket.getter();
      v14 = v453;
      v49 = v461;
      if (v100 == 1 << *(v99 + 32))
      {

        __break(1u);
LABEL_367:
        __break(1u);
        goto LABEL_368;
      }

      v101 = sub_10008DF38(&v476, v100, *(v99 + 9), 0, v99);
      v103 = v102;

      v104._countAndFlagsBits = v101;
      v104._object = v103;
      String.append(_:)(v104);

      v105 = v482;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v455 = sub_100030EA0(0, *(v455 + 2) + 1, 1, v455);
      }

      v107 = *(v455 + 2);
      v106 = *(v455 + 3);
      if (v107 >= v106 >> 1)
      {
        v455 = sub_100030EA0((v106 > 1), v107 + 1, 1, v455);
      }

      v108 = v455;
      *(v455 + 2) = v107 + 1;
      *&v108[16 * v107 + 32] = v105;
      v109 = 1;
LABEL_60:
      v56 = v457;
      v112 = *(*(v457 + 24) + 16);
      if (*(v112 + 16) && (v113 = sub_100061588(v451, v450), (v114 & 1) != 0) && (sub_10000B430(*(v112 + 56) + 32 * v113, &v482), (swift_dynamicCast() & 1) != 0))
      {
        v116 = v476._object;
        v115 = v476._countAndFlagsBits;
      }

      else
      {
        v115 = 0xD000000000000014;
        v116 = v454;
      }

      v486[0] = v115;
      v486[1] = v116;
      v487 = v441;
      v488 = v109;
      v58 = v456;
      sub_10005DBD4(v486);
      *&v456 = v58;
      if (v58)
      {
        goto LABEL_361;
      }

      sub_100067FF4(v486);
      goto LABEL_12;
    }

    (*v437)(v49, v2, v14);
    v76 = v459;
    if (*(v459 + 16) && (sub_10008E840(&qword_1001342B0, &type metadata accessor for URL, &protocol conformance descriptor for URL), v77 = dispatch thunk of Hashable._rawHashValue(seed:)(), v78 = -1 << *(v76 + 32), v79 = v77 & ~v78, ((*&v458[(v79 >> 3) & 0xFFFFFFFFFFFFFF8] >> v79) & 1) != 0))
    {
      v80 = ~v78;
      v81 = *(v430 + 72);
      v82 = *(v430 + 16);
      while (1)
      {
        v82(v42, *(v459 + 48) + v81 * v79, v14);
        sub_10008E840(&qword_1001342B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v83 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v1)(v42, v14);
        if (v83)
        {
          break;
        }

        v79 = (v79 + 1) & v80;
        if (((*&v458[(v79 >> 3) & 0xFFFFFFFFFFFFFF8] >> v79) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v49 = v461;
    }

    else
    {
LABEL_32:
      v84 = *(v443 + v434);
      if (!v84)
      {
        goto LABEL_367;
      }

      v49 = v461;
      URL.path.getter();
      v85._countAndFlagsBits = URL.path.getter();
      v86 = String.hasPrefix(_:)(v85);

      if (!v86)
      {
        (*v1)(v49, v14);
        goto LABEL_35;
      }
    }

    v56 = v435;
    if (qword_100133AE0 != -1)
    {
      swift_once();
    }

    v117 = type metadata accessor for Logger();
    sub_1000144F0(v117, qword_10014E9E0);
    (*v460)(v56, v49, v14);
    v58 = v457;

    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.info.getter();

    LODWORD(v451) = v119;
    v120 = os_log_type_enabled(v118, v119);
    v2 = v452;
    if (v120)
    {
      v450 = v118;
      v56 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v475[0] = v121;
      *v56 = v422;
      v122 = *(*(v58 + 24) + 16);
      if (qword_100133A50 != -1)
      {
        swift_once();
      }

      v123 = *(v122 + 16);
      v429 = v121;
      if (v123 && (v124 = sub_100061588(qword_10014E8C0, *algn_10014E8C8), (v125 & 1) != 0) && (sub_10000B430(*(v122 + 56) + 32 * v124, &v482), swift_dynamicCast()))
      {
        v62 = v476._object;
        v61 = v476._countAndFlagsBits;
      }

      else
      {
        v61 = 0xD000000000000014;
        v62 = v454;
      }

      v63 = sub_1000E3AF8(v61, v62, v475);

      *(v56 + 4) = v63;
      *(v56 + 12) = 2080;
      v64 = v435;
      v65 = URL.path.getter();
      v67 = v66;
      v68 = *v1;
      (*v1)(v64, v14);
      v69 = sub_1000E3AF8(v65, v67, v475);

      *(v56 + 14) = v69;
      v70 = v450;
      _os_log_impl(&_mh_execute_header, v450, v451, "Skipping third party driver %s at %s during first approvals database update pass", v56, 0x16u);
      v58 = v429;
      swift_arrayDestroy();

      v71 = v461;
      v68(v461, v14);
      v49 = v71;
LABEL_12:
      v2 = v452;
      continue;
    }

    v126 = *v1;
    (*v1)(v56, v14);
    v126(v49, v14);
  }

  while (v51 != v445);
  v49 = v431;
LABEL_80:
  v127 = (v49 + 64);
  v128 = 1 << *(v49 + 32);
  v129 = -1;
  if (v128 < 64)
  {
    v129 = ~(-1 << v128);
  }

  v56 = v129 & *(v49 + 64);
  v448 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_applicationManager;
  v58 = (v128 + 63) >> 6;
  v461 = (v430 + 16);
  v454 = (v430 + 8);
  v429 = " new entry to database";

  v14 = 0;
  *&v422 = v449 + 64;
  *&v130 = 136315138;
  v437 = v130;
  v51 = v425;
  v49 = v444;
  v446 = v58;
  v447 = v127;
  while (2)
  {
    while (2)
    {
      if (v56)
      {
        goto LABEL_88;
      }

      while (2)
      {
        v131 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_337:
          __break(1u);
LABEL_338:
          __break(1u);
LABEL_339:
          __break(1u);
LABEL_340:
          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
          goto LABEL_343;
        }

        if (v131 >= v58)
        {

          v461 = swift_allocObject();
          v461[2] = _swiftEmptyArrayStorage;
          v295 = sub_100088EF0();
          v297 = v295;
          if (v295 >> 62)
          {
            v390 = v295;
            v298 = _CocoaArrayWrapper.endIndex.getter();
            v297 = v390;
          }

          else
          {
            v298 = *((v295 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v58 = v456;
          v460 = v297;
          if (v298)
          {
            if (v298 < 1)
            {
              __break(1u);
LABEL_346:
              __break(1u);
LABEL_347:
              __break(1u);
LABEL_348:
              __break(1u);
LABEL_349:
              __break(1u);
LABEL_350:
              __break(1u);
LABEL_351:
              __break(1u);
LABEL_352:
              __break(1u);
LABEL_353:
              __break(1u);
LABEL_354:
              __break(1u);
LABEL_355:
              __break(1u);
              goto LABEL_356;
            }

            v299 = 0;
            v457 = v297 & 0xC000000000000001;
            v451 = "Handled queued request ";
            v452 = "Approval database changed";
            *&v296 = 136315394;
            v456 = v296;
            v458 = v298;
            do
            {
              if (v457)
              {
                v300 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v300 = *(v297 + 8 * v299 + 32);
              }

              v301 = *(v300 + 32);
              v476 = *(v300 + 16);
              v477 = v301;
              LOBYTE(v478) = *(v300 + 48);
              sub_100067FBC(&v476, &v482);
              v302 = sub_10005E1C8(&v476._countAndFlagsBits);
              v303 = v58;
              if (v58)
              {
                sub_100067FF4(&v476);
                if (qword_100133AE0 != -1)
                {
                  swift_once();
                }

                v304 = type metadata accessor for Logger();
                sub_1000144F0(v304, qword_10014E9E0);

                swift_errorRetain();
                v305 = Logger.logObject.getter();
                v306 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v305, v306))
                {
                  v307 = swift_slowAlloc();
                  v482._countAndFlagsBits = swift_slowAlloc();
                  *v307 = v456;

                  updated = ApprovalStateUpdateRequest.description.getter();
                  v310 = v309;

                  v311 = sub_1000E3AF8(updated, v310, &v482._countAndFlagsBits);

                  *(v307 + 4) = v311;
                  *(v307 + 12) = 2080;
                  v475[0] = v303;
                  swift_errorRetain();
                  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
                  v312 = String.init<A>(describing:)();
                  v314 = sub_1000E3AF8(v312, v313, &v482._countAndFlagsBits);

                  *(v307 + 14) = v314;
                  _os_log_impl(&_mh_execute_header, v305, v306, "Failed to handle queued request %s: %s", v307, 0x16u);
                  swift_arrayDestroy();
                }

                swift_errorRetain();
                v58 = 0;
                v315 = v303;
              }

              else
              {
                v316 = v302;
                sub_100067FF4(&v476);
                if (v316)
                {
                  v482._countAndFlagsBits = 0;
                  v482._object = 0xE000000000000000;
                  _StringGuts.grow(_:)(61);
                  v317._countAndFlagsBits = 0xD000000000000017;
                  v317._object = (v452 | 0x8000000000000000);
                  String.append(_:)(v317);
                  v318._countAndFlagsBits = ApprovalStateUpdateRequest.description.getter();
                  String.append(_:)(v318);

                  v319._countAndFlagsBits = 0xD000000000000024;
                  v319._object = (v451 | 0x8000000000000000);
                  String.append(_:)(v319);
                  v320 = v482;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v455 = sub_100030EA0(0, *(v455 + 2) + 1, 1, v455);
                  }

                  v322 = *(v455 + 2);
                  v321 = *(v455 + 3);
                  if (v322 >= v321 >> 1)
                  {
                    v455 = sub_100030EA0((v321 > 1), v322 + 1, 1, v455);
                  }

                  v315 = 0;
                  v323 = v455;
                  *(v455 + 2) = v322 + 1;
                  *&v323[16 * v322 + 32] = v320;
                }

                else
                {
                  v315 = 0;
                }
              }

              v324 = v461;
              v325 = v461[2];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v324 + 16) = v325;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v325 = sub_100031324(0, *(v325 + 2) + 1, 1, v325);
                v461[2] = v325;
              }

              v328 = *(v325 + 2);
              v327 = *(v325 + 3);
              if (v328 >= v327 >> 1)
              {
                v325 = sub_100031324((v327 > 1), v328 + 1, 1, v325);
                v461[2] = v325;
              }

              ++v299;
              sub_10008E7A8(v315, v303 != 0);
              *(v325 + 2) = v328 + 1;
              v329 = &v325[24 * v328];
              *(v329 + 4) = v300;
              *(v329 + 5) = v315;
              v329[48] = v303 != 0;
              v297 = v460;
              v461[2] = v325;
            }

            while (v458 != v299);
          }

          v49 = v465;
          v51 = v466;
          v330 = sub_1000648C4(v465, v449);
          v331 = *(v455 + 2);
          if (v330)
          {
            v1 = v443;
            if (!v331)
            {

              sub_10008D138(0, v1, v461);
              goto LABEL_334;
            }

LABEL_317:
            if (qword_100133AE0 != -1)
            {
              swift_once();
            }

            v336 = type metadata accessor for Logger();
            v337 = sub_1000144F0(v336, qword_10014E9E0);
            v338 = Logger.logObject.getter();
            v339 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v338, v339))
            {
              v340 = swift_slowAlloc();
              *v340 = 0;
              _os_log_impl(&_mh_execute_header, v338, v339, "Saving appproval db, encoding", v340, 2u);
            }

            type metadata accessor for PropertyListEncoder();
            swift_allocObject();
            PropertyListEncoder.init()();
            v482._countAndFlagsBits = v49;
            v482._object = v51;
            sub_10008E7B4();

            v341 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
            v343 = v58;
            if (v58)
            {
            }

            else
            {
              v457 = v341;
              v458 = v342;
              v450 = v51;

              v452 = v49;

              *&v456 = v337;
              v344 = Logger.logObject.getter();
              v345 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v344, v345))
              {
                v346 = swift_slowAlloc();
                *v346 = 0;
                _os_log_impl(&_mh_execute_header, v344, v345, "Writing new approval db contents", v346, 2u);
              }

              v451 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_databasePath;
              URL.appendingPathExtension(_:)();
              sub_100003C4C((v1 + 16), *(v1 + 40));
              sub_1000DF9D4(&v482);
              v347 = *(&v483 + 1);
              v348 = v484;
              sub_100003C4C(&v482, *(&v483 + 1));
              v349 = URL.path.getter();
              v351 = v350;
              v352 = v457;
              v353 = v458;
              sub_1000146C4(v457, v458);
              v354 = sub_10003E834(_swiftEmptyArrayStorage);
              LOBYTE(v349) = (*(v348 + 40))(v349, v351, v352, v353, v354, v347, v348);

              sub_1000128D8(v352, v353);

              sub_100003C90(&v482);
              if (v349)
              {

                v355 = Logger.logObject.getter();
                v356 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v355, v356))
                {
                  v357 = swift_slowAlloc();
                  *v357 = 0;
                  _os_log_impl(&_mh_execute_header, v355, v356, "Replacing old approval db contents", v357, 2u);
                }

                v358 = v443;
                sub_100003C4C((v443 + 16), *(v443 + 40));
                sub_1000DF9D4(&v482);
                v359 = *(&v483 + 1);
                v360 = v484;
                sub_100003C4C(&v482, *(&v483 + 1));
                v361 = v420;
                (*(v360 + 88))(v358 + v451, v420, 0, 0, 0, 0, v359, v360);
                v362 = v452;
                sub_100003C90(&v482);
                sub_100003C4C((v358 + 16), *(v358 + 40));
                sub_1000DF9D4(&v482);
                v386 = *(&v483 + 1);
                v387 = v484;
                sub_100003C4C(&v482, *(&v483 + 1));
                (*(v387 + 104))(v361, v386, v387);
                sub_100003C90(&v482);
                v388 = (v358 + OBJC_IVAR____TtC10driverkitd15ApprovalManager__approvalDB);
                v389 = v450;
                *v388 = v362;
                v388[1] = v389;

                sub_10008D138(0, v358, v461);
                sub_1000128D8(v457, v458);
                (*v454)(v361, v453);

                return v455;
              }

              v363 = errno.getter();
              v364 = strerror(v363);
              v285 = v431;
              if (!v364)
              {
LABEL_381:
                __break(1u);
                goto LABEL_382;
              }

              v365 = String.init(cString:)();
              v367 = v366;
              v482._countAndFlagsBits = 0;
              v482._object = 0xE000000000000000;
              _StringGuts.grow(_:)(30);

              v482._countAndFlagsBits = 0x6946657461657263;
              v482._object = 0xEB0000000020656CLL;
              sub_10008E840(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
              v368 = v420;
              v369 = v453;
              v370._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v370);

              v371._countAndFlagsBits = 0x3A64656C69616620;
              v371._object = 0xEF206F6E72726520;
              String.append(_:)(v371);
              v372._countAndFlagsBits = v365;
              v372._object = v367;
              String.append(_:)(v372);

              v373 = v482;
              sub_10001449C();
              v343 = swift_allocError();
              *v374 = v373;
              v375 = *v485;
              v377 = v483;
              v376 = v484;
              *(v374 + 16) = v482;
              *(v374 + 32) = v377;
              *(v374 + 48) = v376;
              *(v374 + 64) = v375;
              *(v374 + 72) = 19;
              swift_willThrow();
              sub_1000128D8(v457, v458);
              (*v454)(v368, v369);
              v1 = v443;
            }

            swift_errorRetain();
            v378 = Logger.logObject.getter();
            v379 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v378, v379))
            {
              v380 = swift_slowAlloc();
              v381 = swift_slowAlloc();
              v482._countAndFlagsBits = v381;
              *v380 = v437;
              v475[0] = v343;
              swift_errorRetain();
              sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
              v382 = String.init<A>(describing:)();
              v384 = sub_1000E3AF8(v382, v383, &v482._countAndFlagsBits);

              *(v380 + 4) = v384;
              _os_log_impl(&_mh_execute_header, v378, v379, "Failed to write approval database during state update: %s", v380, 0xCu);
              sub_100003C90(v381);
            }

            swift_errorRetain();
            sub_10008D138(v343, v1, v461);

LABEL_334:

            return 0;
          }

          v1 = v443;
          if (v331)
          {
            goto LABEL_317;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_314:
            v333 = *(v455 + 2);
            v332 = *(v455 + 3);
            if (v333 >= v332 >> 1)
            {
              v455 = sub_100030EA0((v332 > 1), v333 + 1, 1, v455);
            }

            v334 = v455;
            *(v455 + 2) = v333 + 1;
            v335 = &v334[16 * v333];
            *(v335 + 4) = 0xD000000000000019;
            *(v335 + 5) = 0x8000000100108550;
            goto LABEL_317;
          }

LABEL_356:
          v455 = sub_100030EA0(0, 1, 1, v455);
          goto LABEL_314;
        }

        v56 = v127[v131];
        ++v14;
        if (!v56)
        {
          continue;
        }

        break;
      }

      v14 = v131;
LABEL_88:
      v132 = v427;
      sub_10008E708(v431[7] + *(v428 + 72) * (__clz(__rbit64(v56)) | (v14 << 6)), v427, type metadata accessor for DriverBinEntry);
      v133 = v132;
      v134 = v439;
      sub_100068024(v133, v439);
      v1 = *(v51 + 28);
      v458 = *v461;
      (v458)(v49, v134 + v1, v453);
      v135 = *(v443 + v448);
      if (!v135)
      {
        goto LABEL_372;
      }

      if (*(v135 + 88))
      {
        v136 = *(v135 + 88);
      }

      else
      {

        sub_10001B0B4();
        v136 = v137;
        *(v135 + 88) = v137;
      }

      v457 = (v56 - 1) & v56;
      v138 = *(v51 + 20);
      v139 = type metadata accessor for ApplicationRecord(0);
      v140 = v139;
      if (!*(v136 + 16))
      {

        goto LABEL_108;
      }

      v141 = *(v139 + 32);
      *&v441 = v439 + v138;
      v142 = (v439 + v138 + v141);
      v144 = *v142;
      v143 = v142[1];

      v145 = v144;
      v49 = v444;
      v146 = sub_1000618A8(v145, v143);
      if ((v147 & 1) == 0)
      {
LABEL_108:

        v169 = v426;
        (*(*(v140 - 8) + 56))(v426, 1, 1, v140);
        sub_10000A184(v169, &qword_1001342D8, &unk_100101820);
        if (qword_100133AE0 != -1)
        {
          swift_once();
        }

        v170 = type metadata accessor for Logger();
        sub_1000144F0(v170, qword_10014E9E0);
        v171 = v424;
        v42 = v453;
        (v458)(v424, v49, v453);
        v172 = Logger.logObject.getter();
        v2 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v172, v2))
        {
          v173 = v171;
          v174 = swift_slowAlloc();
          v175 = swift_slowAlloc();
          v482._countAndFlagsBits = v175;
          *v174 = v437;
          v460 = URL.path.getter();
          v177 = v176;
          v1 = *v454;
          (*v454)(v173, v42);
          v178 = sub_1000E3AF8(v460, v177, &v482._countAndFlagsBits);
          v51 = v425;

          *(v174 + 4) = v178;
          _os_log_impl(&_mh_execute_header, v172, v2, "Skipping bundle at %s since containing application was removed", v174, 0xCu);
          sub_100003C90(v175);
          v49 = v444;

          (v1)(v49, v42);
        }

        else
        {

          v179 = *v454;
          (*v454)(v171, v42);
          v179(v49, v42);
        }

        goto LABEL_113;
      }

      v148 = *(v140 - 8);
      v149 = v426;
      sub_10008E708(*(v136 + 56) + *(v148 + 72) * v146, v426, type metadata accessor for ApplicationRecord);

      (*(v148 + 56))(v149, 0, 1, v140);
      sub_10000A184(v149, &qword_1001342D8, &unk_100101820);
      sub_100003C4C((v443 + 16), *(v443 + 40));
      sub_1000DFF08(&v482);
      v42 = v453;
      (v458)(v423, v49, v453);
      v150 = type metadata accessor for UncachedBundle();
      v2 = swift_allocObject();
      URL._bridgeToObjectiveC()(v151);
      v153 = v152;
      Unique = _CFBundleCreateUnique();

      v155 = *v454;
      v436 = *v454;
      if (!Unique)
      {
        v155(v423, v42);
        sub_100003C90(&v482);
        swift_deallocPartialClassInstance();
        if (qword_100133AE0 != -1)
        {
          swift_once();
        }

        v220 = type metadata accessor for Logger();
        sub_1000144F0(v220, qword_10014E9E0);
        v1 = v419;
        v49 = v444;
        (v458)(v419, v444, v42);
        v221 = Logger.logObject.getter();
        v2 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v221, v2))
        {
          v222 = swift_slowAlloc();
          v223 = swift_slowAlloc();
          v482._countAndFlagsBits = v223;
          *v222 = v437;
          v224 = URL.path.getter();
          v226 = v225;
          v227 = v1;
          v1 = v454;
          (v436)(v227, v42);
          v228 = sub_1000E3AF8(v224, v226, &v482._countAndFlagsBits);
          v51 = v425;

          *(v222 + 4) = v228;
          _os_log_impl(&_mh_execute_header, v221, v2, "Bundle at %s is invalid", v222, 0xCu);
          sub_100003C90(v223);
          v49 = v444;

          (v436)(v49, v42);
        }

        else
        {

          v274 = v436;
          (v436)(v1, v42);
          v274(v49, v42);
        }

LABEL_113:
        sub_10008E6A8(v439, type metadata accessor for DriverBinEntry);
LABEL_114:
        v58 = v446;
        v127 = v447;
        v56 = v457;
        continue;
      }

      break;
    }

    v415 = v1;
    v156 = v155;
    v157 = Unique;
    v156(v423, v42);

    *(v2 + 16) = v157;
    *(&v477 + 1) = v150;
    *&v478 = sub_10008E840(&qword_1001373C0, type metadata accessor for UncachedBundle, &unk_1000F980C);
    v476._countAndFlagsBits = v2;
    sub_100003C90(&v482);
    sub_100009F34(&v476._countAndFlagsBits, v475);
    sub_100003C4C(v475, v475[3]);
    v442 = sub_1000990BC();
    if (!v158)
    {
      v1 = v418;
      v49 = v444;
      if (qword_100133AE0 != -1)
      {
        swift_once();
      }

      v229 = type metadata accessor for Logger();
      sub_1000144F0(v229, qword_10014E9E0);
      v42 = v453;
      (v458)(v1, v49, v453);
      v230 = Logger.logObject.getter();
      v2 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v230, v2))
      {
        v231 = swift_slowAlloc();
        v232 = swift_slowAlloc();
        v482._countAndFlagsBits = v232;
        *v231 = v437;
        v233 = URL.path.getter();
        v235 = v234;
        v236 = v1;
        v1 = v454;
        (v436)(v236, v42);
        v237 = sub_1000E3AF8(v233, v235, &v482._countAndFlagsBits);
        v51 = v425;

        *(v231 + 4) = v237;
        _os_log_impl(&_mh_execute_header, v230, v2, "Bundle at %s does not have a bundle identifier", v231, 0xCu);
        sub_100003C90(v232);
        v49 = v444;

        (v436)(v49, v42);
      }

      else
      {

        v293 = v436;
        (v436)(v1, v42);
        v293(v49, v42);
      }

      sub_10008E6A8(v439, type metadata accessor for DriverBinEntry);
      sub_100003C90(v475);
      goto LABEL_114;
    }

    v159 = v158;
    v160 = v465;
    v161 = v441 + *(v140 + 28);
    v162 = *v161;
    v1 = *(v161 + 8);
    v416 = v161;
    v163 = v465[2];
    v49 = v444;
    v433 = v158;
    v460 = v163;
    if (v163)
    {
      v56 = 0;
      if (v162)
      {
        v164 = 0;
      }

      else
      {
        v164 = v1 == 0xC000000000000000;
      }

      v165 = !v164;
      LODWORD(v435) = v165;
      v166 = v1 >> 62;
      v450 = v162;
      v451 = v1 >> 62;
      v167 = HIDWORD(v162) - v162;
      v168 = __OFSUB__(HIDWORD(v162), v162);
      LODWORD(v432) = v168;
      v430 = v167;
      v434 = BYTE6(v1);
      v51 = (v465 + 7);
      v58 = v442;
      v445 = v1;
      v452 = v465;
      while (1)
      {
        if (v56 >= v160[2])
        {
          goto LABEL_338;
        }

        v42 = *(v51 - 16);
        v2 = *(v51 - 8);
        v49 = *v51;
        if (*(v51 - 24) == v58 && v159 == v42)
        {
          if (v49 >> 60 == 15)
          {
            goto LABEL_116;
          }
        }

        else
        {
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v166 = v451;
            v160 = v452;
            goto LABEL_116;
          }

          v166 = v451;
          v160 = v452;
          if (v49 >> 60 == 15)
          {
            goto LABEL_116;
          }
        }

        v181 = v49 >> 62;
        if (v49 >> 62 == 3)
        {
          break;
        }

        if (v181 > 1)
        {
          if (v181 != 2)
          {
            goto LABEL_148;
          }

          v187 = *(v2 + 16);
          v186 = *(v2 + 24);
          v73 = __OFSUB__(v186, v187);
          v185 = v186 - v187;
          if (v73)
          {
            goto LABEL_347;
          }

          if (v166 > 1)
          {
            goto LABEL_149;
          }
        }

        else if (v181)
        {
          LODWORD(v185) = HIDWORD(v2) - v2;
          if (__OFSUB__(HIDWORD(v2), v2))
          {
            goto LABEL_346;
          }

          v185 = v185;
          if (v166 > 1)
          {
LABEL_149:
            if (v166 != 2)
            {
              if (!v185)
              {
                goto LABEL_178;
              }

              goto LABEL_116;
            }

            isa = v450[2].isa;
            v189 = v450[3].isa;
            v73 = __OFSUB__(v189, isa);
            v188 = v189 - isa;
            if (v73)
            {
              goto LABEL_341;
            }

            goto LABEL_151;
          }
        }

        else
        {
          v185 = BYTE6(v49);
          if (v166 > 1)
          {
            goto LABEL_149;
          }
        }

LABEL_145:
        v188 = v434;
        if (v166)
        {
          v188 = v430;
          if (v432)
          {
            goto LABEL_342;
          }
        }

LABEL_151:
        if (v185 == v188)
        {
          if (v185 < 1)
          {
            goto LABEL_178;
          }

          if (v181 > 1)
          {
            if (v181 == 2)
            {
              v194 = v1;
              v1 = *(v2 + 16);
              v414 = *(v2 + 24);
              sub_1000146C4(v450, v194);

              sub_1000146B0(v2, v49);
              v195 = __DataStorage._bytes.getter();
              if (v195)
              {
                v58 = v195;
                v196 = __DataStorage._offset.getter();
                if (__OFSUB__(v1, v196))
                {
                  goto LABEL_352;
                }

                v197 = v1 - v196 + v58;
              }

              else
              {
                v197 = 0;
              }

              v58 = v414 - v1;
              if (__OFSUB__(v414, v1))
              {
                goto LABEL_351;
              }

              v205 = v197;
              __DataStorage._length.getter();
              v206 = v205;
              v207 = v450;
              v208 = v450;
              v1 = v445;
LABEL_176:
              v209 = v456;
              sub_100045F4C(v206, v208, v1, &v482);
              *&v456 = v209;
              sub_1000128D8(v207, v1);

              sub_100014528(v2, v49);
              v204 = v482._countAndFlagsBits;
              v159 = v433;
            }

            else
            {
              *(&v482._countAndFlagsBits + 6) = 0;
              v482._countAndFlagsBits = 0;
              v201 = v450;
              sub_1000146C4(v450, v445);

              sub_1000146B0(v2, v49);
              v202 = v456;
              sub_100045F4C(&v482, v201, v445, &v476);
              *&v456 = v202;
              v203 = v201;
              v1 = v445;
              sub_1000128D8(v203, v445);

              sub_100014528(v2, v49);
              v204 = v476._countAndFlagsBits;
            }

            v58 = v442;
            v166 = v451;
            v160 = v452;
            if (v204)
            {
              goto LABEL_178;
            }

            goto LABEL_116;
          }

          if (v181)
          {
            v58 = v2;
            if (v2 >> 32 < v2)
            {
              goto LABEL_350;
            }

            v414 = (v2 >> 32) - v2;
            v1 = v445;
            sub_1000146C4(v450, v445);

            sub_1000146B0(v2, v49);
            v198 = __DataStorage._bytes.getter();
            if (v198)
            {
              v1 = v198;
              v199 = __DataStorage._offset.getter();
              if (__OFSUB__(v2, v199))
              {
                goto LABEL_353;
              }

              v200 = v2 - v199 + v1;
              v1 = v445;
            }

            else
            {
              v200 = 0;
            }

            __DataStorage._length.getter();
            v206 = v200;
            v207 = v450;
            v208 = v450;
            goto LABEL_176;
          }

          v482._countAndFlagsBits = v2;
          LOWORD(v482._object) = v49;
          BYTE2(v482._object) = BYTE2(v49);
          BYTE3(v482._object) = BYTE3(v49);
          BYTE4(v482._object) = BYTE4(v49);
          BYTE5(v482._object) = BYTE5(v49);
          v191 = v450;
          v1 = v445;
          sub_1000146C4(v450, v445);

          sub_1000146B0(v2, v49);
          v159 = v433;
          v192 = v191;
          v193 = v456;
          sub_100045F4C(&v482, v192, v1, &v476);
          *&v456 = v193;
          sub_1000128D8(v450, v1);

          sub_100014528(v2, v49);
          v166 = v451;
          v160 = v452;
          v58 = v442;
          if (v476._countAndFlagsBits)
          {
            goto LABEL_178;
          }
        }

LABEL_116:
        ++v56;
        v51 += 40;
        v49 = v444;
        if (v460 == v56)
        {
          v162 = *v416;
          v1 = *(v416 + 8);
          goto LABEL_191;
        }
      }

      if (v2)
      {
        v182 = 0;
      }

      else
      {
        v182 = v49 == 0xC000000000000000;
      }

      v184 = !v182 || v166 < 3;
      if (((v184 | v435) & 1) == 0)
      {
LABEL_178:

        v49 = v444;
        if (qword_100133AE0 != -1)
        {
          swift_once();
        }

        v210 = type metadata accessor for Logger();
        sub_1000144F0(v210, qword_10014E9E0);
        v211 = v417;
        v42 = v453;
        (v458)(v417, v49, v453);
        v212 = Logger.logObject.getter();
        v2 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v212, v2))
        {
          v213 = swift_slowAlloc();
          v214 = swift_slowAlloc();
          v482._countAndFlagsBits = v214;
          *v213 = v437;
          v215 = URL.path.getter();
          v216 = v211;
          v218 = v217;
          v1 = v454;
          (v436)(v216, v42);
          v219 = sub_1000E3AF8(v215, v218, &v482._countAndFlagsBits);

          *(v213 + 4) = v219;
          _os_log_impl(&_mh_execute_header, v212, v2, "Skipping bundle at %s, already inserted into approvals database", v213, 0xCu);
          sub_100003C90(v214);
          v49 = v444;

          (v436)(v49, v42);
        }

        else
        {

          v294 = v436;
          (v436)(v211, v42);
          v294(v49, v42);
        }

        v51 = v425;
        v56 = v457;
LABEL_281:
        sub_10008E6A8(v439, type metadata accessor for DriverBinEntry);
        sub_100003C90(v475);
        v58 = v446;
        v127 = v447;
        continue;
      }

LABEL_148:
      v185 = 0;
      if (v166 > 1)
      {
        goto LABEL_149;
      }

      goto LABEL_145;
    }

    break;
  }

  v58 = v442;
LABEL_191:
  v460 = *(v449 + 2);
  if (v460)
  {
    v51 = 0;
    v239 = v1 != 0xC000000000000000 || v162 != 0;
    LODWORD(v451) = v239;
    v240 = v1 >> 62;
    v450 = v162;
    v241 = HIDWORD(v162) - v162;
    v242 = __OFSUB__(HIDWORD(v162), v162);
    LODWORD(v434) = v242;
    v432 = v241;
    v435 = BYTE6(v1);
    v56 = v422;
    v452 = v1 >> 62;
    v445 = v1;
    while (1)
    {
      if (v51 >= *(v449 + 2))
      {
        goto LABEL_340;
      }

      v243 = *(v56 - 32);
      v42 = *(v56 - 24);
      v2 = *(v56 - 16);
      v49 = *(v56 - 8);
      LODWORD(v458) = *v56;
      if (v243 == v58 && v159 == v42)
      {
        if (v49 >> 60 == 15)
        {
          goto LABEL_203;
        }
      }

      else
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v240 = v452;
          goto LABEL_203;
        }

        v240 = v452;
        if (v49 >> 60 == 15)
        {
          goto LABEL_203;
        }
      }

      v245 = v49 >> 62;
      if (v49 >> 62 == 3)
      {
        break;
      }

      if (v245 > 1)
      {
        if (v245 != 2)
        {
          goto LABEL_235;
        }

        v251 = *(v2 + 16);
        v250 = *(v2 + 24);
        v73 = __OFSUB__(v250, v251);
        v249 = v250 - v251;
        if (v73)
        {
          goto LABEL_354;
        }

        if (v240 <= 1)
        {
          goto LABEL_232;
        }
      }

      else if (v245)
      {
        LODWORD(v249) = HIDWORD(v2) - v2;
        if (__OFSUB__(HIDWORD(v2), v2))
        {
          goto LABEL_355;
        }

        v249 = v249;
        if (v240 <= 1)
        {
LABEL_232:
          v252 = v435;
          if (v240)
          {
            v252 = v432;
            if (v434)
            {
              goto LABEL_349;
            }
          }

          goto LABEL_238;
        }
      }

      else
      {
        v249 = BYTE6(v49);
        if (v240 <= 1)
        {
          goto LABEL_232;
        }
      }

LABEL_236:
      if (v240 != 2)
      {
        if (!v249)
        {
          goto LABEL_265;
        }

        goto LABEL_203;
      }

      v254 = v450[2].isa;
      v253 = v450[3].isa;
      v73 = __OFSUB__(v253, v254);
      v252 = (v253 - v254);
      if (v73)
      {
        goto LABEL_348;
      }

LABEL_238:
      if (v249 != v252)
      {
        goto LABEL_203;
      }

      if (v249 < 1)
      {
        goto LABEL_265;
      }

      if (v245 > 1)
      {
        if (v245 != 2)
        {
          *(&v482._countAndFlagsBits + 6) = 0;
          v482._countAndFlagsBits = 0;
          v266 = v450;
          sub_1000146C4(v450, v445);

          sub_1000146B0(v2, v49);
          v267 = v456;
          sub_100045F4C(&v482, v266, v445, &v476);
          *&v456 = v267;
          v268 = v266;
          v1 = v445;
          sub_1000128D8(v268, v445);

          sub_100014528(v2, v49);
          v269 = v476._countAndFlagsBits;
          goto LABEL_264;
        }

        v258 = *(v2 + 24);
        v430 = *(v2 + 16);
        v414 = v258;
        sub_1000146C4(v450, v1);

        sub_1000146B0(v2, v49);
        v259 = __DataStorage._bytes.getter();
        if (v259)
        {
          v260 = v259;
          v261 = __DataStorage._offset.getter();
          v262 = v430;
          if (__OFSUB__(v430, v261))
          {
            goto LABEL_359;
          }

          v413 = v430 - v261 + v260;
        }

        else
        {
          v413 = 0;
          v262 = v430;
        }

        if (__OFSUB__(v414, v262))
        {
          goto LABEL_358;
        }

        __DataStorage._length.getter();
        v270 = v413;
      }

      else
      {
        if (!v245)
        {
          v482._countAndFlagsBits = v2;
          LOWORD(v482._object) = v49;
          BYTE2(v482._object) = BYTE2(v49);
          BYTE3(v482._object) = BYTE3(v49);
          BYTE4(v482._object) = BYTE4(v49);
          BYTE5(v482._object) = BYTE5(v49);
          v255 = v450;
          sub_1000146C4(v450, v445);

          sub_1000146B0(v2, v49);
          v159 = v433;
          v256 = v456;
          sub_100045F4C(&v482, v255, v445, &v476);
          *&v456 = v256;
          v257 = v255;
          v1 = v445;
          sub_1000128D8(v257, v445);

          sub_100014528(v2, v49);
          v240 = v452;
          v58 = v442;
          if (v476._countAndFlagsBits)
          {
            goto LABEL_265;
          }

          goto LABEL_203;
        }

        v430 = (v2 >> 32) - v2;
        if (v2 >> 32 < v2)
        {
          __break(1u);
LABEL_358:
          __break(1u);
LABEL_359:
          __break(1u);
LABEL_360:
          __break(1u);
LABEL_361:
          v84 = 0x80000001001084F0;
          v480[0] = v456;
          swift_errorRetain();
          sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
          if (swift_dynamicCast())
          {
            v484 = v478;
            *v485 = v479[0];
            *&v485[9] = *(v479 + 9);
            v482 = v476;
            v483 = v477;
            *&v469 = 0xD000000000000026;
            *(&v469 + 1) = 0x80000001001084F0;
            v391._countAndFlagsBits = 8250;
            v391._object = 0xE200000000000000;
            String.append(_:)(v391);
            v392._countAndFlagsBits = sub_1000AA704();
            String.append(_:)(v392);

            sub_10000A990(v443 + 16, v475);
            sub_10000A114(v475, &v471);
            if (v472)
            {
              sub_100009F34(&v471, v473);

              v393 = sub_1000AC3E4();
              v394 = [v393 code];

              if ((v394 & 0x8000000000000000) == 0)
              {
                sub_100003C4C(v473, v474);
                sub_1000DF65C(&v471);
                sub_100003C4C(&v471, v472);
                v395 = sub_10006A994();
                sub_100003C90(&v471);
                if ((v395 & 1) == 0)
                {
                  goto LABEL_394;
                }

LABEL_371:
                String.utf8CString.getter();
                abort_with_reason();
LABEL_372:
                __break(1u);
LABEL_373:
                __break(1u);
                goto LABEL_374;
              }

              __break(1u);
LABEL_387:
              __break(1u);
LABEL_388:
              __break(1u);
LABEL_389:
              __break(1u);
            }

LABEL_390:

            v411 = &v471;
LABEL_393:
            sub_10000A184(v411, &qword_100133CC0, &qword_1000F32F0);
            goto LABEL_394;
          }

LABEL_368:

          *&v469 = 0;
          *(&v469 + 1) = 0xE000000000000000;
          v396._countAndFlagsBits = 0xD000000000000026;
          v396._object = v84;
          String.append(_:)(v396);
          v397._countAndFlagsBits = 8250;
          v397._object = 0xE200000000000000;
          String.append(_:)(v397);
          v482._countAndFlagsBits = v456;
          _print_unlocked<A, B>(_:_:)();
          sub_10000A990(v443 + 16, v475);
          v482._countAndFlagsBits = 0x6E776F6E6B6E75;
          v482._object = 0xE700000000000000;
          v485[24] = 50;
          sub_10000A114(v475, &v471);
          if (v472)
          {
            sub_100009F34(&v471, v473);

            v398 = sub_1000AC3E4();
            v399 = [v398 code];

            if ((v399 & 0x8000000000000000) == 0)
            {
              sub_100003C4C(v473, v474);
              sub_1000DF65C(&v471);
              sub_100003C4C(&v471, v472);
              v400 = sub_10006A994();
              sub_100003C90(&v471);
              if ((v400 & 1) == 0)
              {
                goto LABEL_394;
              }

              goto LABEL_371;
            }

            goto LABEL_387;
          }

          goto LABEL_390;
        }

        sub_1000146C4(v450, v1);

        sub_1000146B0(v2, v49);
        v263 = __DataStorage._bytes.getter();
        if (v263)
        {
          v414 = v263;
          v264 = __DataStorage._offset.getter();
          if (__OFSUB__(v2, v264))
          {
            goto LABEL_360;
          }

          v265 = v2 - v264 + v414;
        }

        else
        {
          v265 = 0;
        }

        __DataStorage._length.getter();
        v270 = v265;
      }

      v271 = v450;
      v272 = v456;
      sub_100045F4C(v270, v450, v1, &v482);
      *&v456 = v272;
      sub_1000128D8(v271, v1);

      sub_100014528(v2, v49);
      v269 = v482._countAndFlagsBits;
      v159 = v433;
LABEL_264:
      v58 = v442;
      v240 = v452;
      if (v269)
      {
        goto LABEL_265;
      }

LABEL_203:
      ++v51;
      v56 += 40;
      v49 = v444;
      if (v460 == v51)
      {
        goto LABEL_267;
      }
    }

    if (v2)
    {
      v246 = 0;
    }

    else
    {
      v246 = v49 == 0xC000000000000000;
    }

    v248 = !v246 || v240 < 3;
    if (((v248 | v451) & 1) == 0)
    {
LABEL_265:
      v51 = v425;
      v49 = v444;
      v273 = v458;
      goto LABEL_275;
    }

LABEL_235:
    v249 = 0;
    if (v240 <= 1)
    {
      goto LABEL_232;
    }

    goto LABEL_236;
  }

LABEL_267:
  v482._countAndFlagsBits = 0;
  v482._object = 0xE000000000000000;
  _StringGuts.grow(_:)(69);
  v275._object = (v429 | 0x8000000000000000);
  v275._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v275);
  v476._countAndFlagsBits = 0;
  v476._object = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  strcpy(&v476, "Staged bundle ");
  HIBYTE(v476._object) = -18;
  sub_10008E840(&qword_1001342A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v276._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v276);

  v277._countAndFlagsBits = 0x70706120726F6620;
  v277._object = 0xE900000000000020;
  String.append(_:)(v277);
  String.append(_:)(*v441);
  String.append(_:)(v476);

  v278._countAndFlagsBits = 0xD00000000000001BLL;
  v278._object = v438;
  String.append(_:)(v278);
  if (qword_100133A30 != -1)
  {
    swift_once();
  }

  v280 = __chkstk_darwin(off_100135B38, v279);
  v281 = v456;
  v282 = sub_10006573C(v280, sub_10008E964);
  *&v456 = v281;
  v283 = sub_10005B7B4(v282);
  v285 = v284;

  v51 = v425;
  if (!v285)
  {
    __break(1u);
    goto LABEL_381;
  }

  v286._countAndFlagsBits = v283;
  v286._object = v285;
  String.append(_:)(v286);

  v287 = v482;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v455 = sub_100030EA0(0, *(v455 + 2) + 1, 1, v455);
  }

  v2 = *(v455 + 2);
  v288 = *(v455 + 3);
  if (v2 >= v288 >> 1)
  {
    v455 = sub_100030EA0((v288 > 1), v2 + 1, 1, v455);
  }

  v273 = 0;
  v289 = v455;
  *(v455 + 2) = v2 + 1;
  *&v289[16 * v2 + 32] = v287;
  v159 = v433;
  v58 = v442;
LABEL_275:
  v290 = *v416;
  v291 = *(v416 + 8);
  v480[0] = v58;
  v480[1] = v159;
  v480[2] = v290;
  v480[3] = v291;
  v481 = v273;
  sub_1000146C4(v290, v291);
  v292 = v456;
  sub_10005DBD4(v480);
  *&v456 = v292;
  v56 = v457;
  if (!v292)
  {
    (v436)(v49, v453);
    sub_100067FF4(v480);
    goto LABEL_281;
  }

  v285 = 0x80000001001084F0;
  v464 = v456;
  swift_errorRetain();
  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
  if (swift_dynamicCast())
  {
    v484 = v478;
    *v485 = v479[0];
    *&v485[9] = *(v479 + 9);
    v482 = v476;
    v483 = v477;
    v462 = 0xD000000000000026;
    v463 = 0x80000001001084F0;
    v401._countAndFlagsBits = 8250;
    v401._object = 0xE200000000000000;
    String.append(_:)(v401);
    v402._countAndFlagsBits = sub_1000AA704();
    String.append(_:)(v402);

    sub_10000A990(v443 + 16, v473);
    sub_10000A114(v473, &v469);
    if (v470)
    {
      sub_100009F34(&v469, &v471);

      v403 = sub_1000AC3E4();
      v404 = [v403 code];

      if ((v404 & 0x8000000000000000) != 0)
      {
        goto LABEL_388;
      }

      sub_100003C4C(&v471, v472);
      sub_1000DF65C(&v469);
      sub_100003C4C(&v469, v470);
      v405 = sub_10006A994();
      sub_100003C90(&v469);
      if (v405)
      {
        goto LABEL_371;
      }

      goto LABEL_394;
    }

LABEL_392:

    v411 = &v469;
    goto LABEL_393;
  }

LABEL_382:

  v462 = 0;
  v463 = 0xE000000000000000;
  v406._countAndFlagsBits = 0xD000000000000026;
  v406._object = v285;
  String.append(_:)(v406);
  v407._countAndFlagsBits = 8250;
  v407._object = 0xE200000000000000;
  String.append(_:)(v407);
  v482._countAndFlagsBits = v456;
  _print_unlocked<A, B>(_:_:)();
  sub_10000A990(v443 + 16, v473);
  v482._countAndFlagsBits = 0x6E776F6E6B6E75;
  v482._object = 0xE700000000000000;
  v485[24] = 50;
  sub_10000A114(v473, &v469);
  if (!v470)
  {
    goto LABEL_392;
  }

  sub_100009F34(&v469, &v471);

  v408 = sub_1000AC3E4();
  v409 = [v408 code];

  if ((v409 & 0x8000000000000000) != 0)
  {
    goto LABEL_389;
  }

  sub_100003C4C(&v471, v472);
  sub_1000DF65C(&v469);
  sub_100003C4C(&v469, v470);
  v410 = sub_10006A994();
  sub_100003C90(&v469);
  if (v410)
  {
    goto LABEL_371;
  }

LABEL_394:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10008D138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a1;
  aBlock[4] = sub_10008E820;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006CCB0;
  aBlock[3] = &unk_100129FC8;
  v14 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10008E840(&unk_100133CA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003CDC(&unk_100137370, &unk_1000F32E0);
  sub_10001455C(&qword_100133CB0, &unk_100137370, &unk_1000F32E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v8, v5);
  (*(v9 + 8))(v12, v17);
}

uint64_t sub_10008D420(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {

    for (i = (v5 + 48); ; i += 24)
    {
      v8 = *(i - 1);
      v9 = *i;
      v10 = *(*(i - 2) + 56);

      if (v9)
      {
        sub_10008E888(v8, 1);

        v10(v8, 1);
        sub_10008E7A8(v8, 1);
      }

      else
      {
        if (a2)
        {
          swift_errorRetain();

          v10(a2, 1);

          goto LABEL_5;
        }

        v10(v8, 0);
      }

LABEL_5:
      if (!--v6)
      {
      }
    }
  }

  return result;
}

uint64_t sub_10008D570()
{
  v1 = sub_100089030();
  v2 = sub_10005E9FC(v1);
  v4 = v3;

  v43 = v2;
  v44 = v4;
  v40 = 0;
  v41 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v42._countAndFlagsBits = 0xD000000000000011;
  v42._object = 0x8000000100108490;
  v5 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_requests;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39._countAndFlagsBits = v7;
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 58;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  String.append(_:)(v42);

  v10 = *(v0 + v5);
  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_5;
    }

    return v43;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    return v43;
  }

LABEL_5:
  if (v11 < 1)
  {
    __break(1u);
  }

  else
  {

    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v42._countAndFlagsBits = 0xD000000000000014;
      v42._object = 0x8000000100105F40;
      type metadata accessor for Date();
      sub_10008E840(&unk_1001372C0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 8250;
      v15._object = 0xE200000000000000;
      String.append(_:)(v15);
      v16 = v13[3];
      v18 = v13[4];
      v17 = v13[5];
      v39._countAndFlagsBits = v13[2];
      v39._object = v16;

      v19._countAndFlagsBits = 544106784;
      v19._object = 0xE400000000000000;
      String.append(_:)(v19);
      if (v17 >> 60 == 15)
      {
        v20 = 0xE600000000000000;
        v21 = 0x6D6574737973;
      }

      else
      {
        v37 = 0;
        v38 = 0xE000000000000000;
        _StringGuts.grow(_:)(38);

        v37 = 0xD000000000000024;
        v38 = 0x8000000100105EB0;
        sub_10005BD44(v18, v17);
        sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
        sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
        v22 = BidirectionalCollection<>.joined(separator:)();
        v24 = v23;

        v25._countAndFlagsBits = v22;
        v25._object = v24;
        String.append(_:)(v25);

        v21 = v37;
        v20 = v38;
      }

      v26 = v20;
      String.append(_:)(*&v21);

      v27._countAndFlagsBits = 8250;
      v27._object = 0xE200000000000000;
      String.append(_:)(v27);
      if (qword_100133A30 != -1)
      {
        swift_once();
      }

      v29 = __chkstk_darwin(off_100135B38, v28);
      v30 = sub_10006573C(v29, sub_10008E6A0);
      v31 = _HashTable.startBucket.getter();
      if (v31 == 1 << *(v30 + 32))
      {
        break;
      }

      ++v12;
      v32 = sub_10008DF38(&v37, v31, *(v30 + 9), 0, v30);
      v34 = v33;

      v35._countAndFlagsBits = v32;
      v35._object = v34;
      String.append(_:)(v35);

      String.append(_:)(v39);

      String.append(_:)(v42);

      if (v11 == v12)
      {

        return v43;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10008DA84()
{
  sub_100003C90((v0 + 16));
  v1 = OBJC_IVAR____TtC10driverkitd15ApprovalManager_databasePath;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_10008DB5C()
{
  sub_10008DA84();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ApprovalManager(uint64_t a1)
{
  result = qword_100136F48;
  if (!qword_100136F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008DC08(uint64_t a1)
{
  result = type metadata accessor for URL();
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

double sub_10008DCD8()
{
  swift_beginAccess();

  return result;
}

unint64_t sub_10008DD24(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v13 = a1;
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      v15 = v14;
      v1 = sub_100041D50();
      sub_10008E34C(v1 + 32, v15, v13);
      v17 = v16;

      if (v17 != v15)
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
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

          v9 = *(v1 + 8 * v6);
          v10 = *(v1 + 8 * v7 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_100068614();
          v11 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v10;

        if ((v1 & 0x8000000000000000) != 0 || v11)
        {
          a1 = sub_100068614();
          v1 = a1;
          v12 = a1 & 0xFFFFFFFFFFFFFF8;
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

        if (v7 >= *(v12 + 16))
        {
          goto LABEL_34;
        }

        *(v12 + 8 * v7 + 32) = v9;
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

_BYTE *sub_10008DF38(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10008DFBC(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a6 + 36) == a4)
  {
    v9 = result;
    v10 = *(a6 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 16))(v9, v10 + *(*(v11 - 8) + 72) * a3, v11);
    v12 = *(a6 + 56);
    v13 = type metadata accessor for DriverBinEntry(0);
    return sub_10008E708(v12 + *(*(v13 - 8) + 72) * a3, a2, type metadata accessor for DriverBinEntry);
  }

LABEL_8:
  __break(1u);
  return result;
}

_OWORD *sub_10008E0C0(_OWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v18 = v5;
    v19 = v6;
    v7 = *(*(a5 + 48) + 8 * a2);
    v8 = (*(a5 + 56) + 80 * a2);
    v16[0] = *v8;
    v10 = v8[2];
    v9 = v8[3];
    v11 = v8[1];
    *&v17[9] = *(v8 + 57);
    v16[2] = v10;
    *v17 = v9;
    v16[1] = v11;
    v12 = *v8;
    v13 = v8[1];
    *(result + 57) = *(v8 + 57);
    v14 = v8[3];
    result[2] = v8[2];
    result[3] = v14;
    *result = v12;
    result[1] = v13;

    sub_1000419A4(v16, &v15);
    return v7;
  }

LABEL_8:
  __break(1u);
  return result;
}

_OWORD *sub_10008E188(_OWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 32 * a2);
    v6 = *(*(a5 + 56) + 16 * a2);
    *result = v6;

    sub_1000146B0(v6, *(&v6 + 1));
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t (*sub_10008E244(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10008E968;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10008E2C4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10008E344;
  }

  __break(1u);
  return result;
}

uint64_t sub_10008E34C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10001455C(&qword_1001370F8, &qword_1001370F0, &qword_1000F95B8, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100003CDC(&qword_1001370F0, &qword_1000F95B8);
            v9 = sub_10008E244(v13, i, a3);
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
        type metadata accessor for StateManagerWrapper();
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

uint64_t sub_10008E4F0(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10001455C(&qword_100137110, &qword_100137108, &unk_1000F95C0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100003CDC(&qword_100137108, &unk_1000F95C0);
            v9 = sub_10008E2C4(v13, i, a3);
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
        sub_100003CDC(&qword_100137100, &unk_1001013C0);
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

uint64_t sub_10008E6A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10008E708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008E770()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008E7A8(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

unint64_t sub_10008E7B4()
{
  result = qword_1001370E0;
  if (!qword_1001370E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001370E0);
  }

  return result;
}

double sub_10008E828(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10008E840(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008E888(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

unint64_t sub_10008E894()
{
  result = qword_1001370E8;
  if (!qword_1001370E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001370E8);
  }

  return result;
}

uint64_t sub_10008E900(void (*a1)(void))
{

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_10008E970@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v15 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (URL.pathExtension.getter() == 0x6775626564 && v6 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    goto LABEL_5;
  }

  if (URL.pathExtension.getter() == 0x6D706F6C65766564 && v9 == 0xEB00000000746E65)
  {
    goto LABEL_3;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_5;
  }

  if (URL.pathExtension.getter() == 0x6E6173616BLL && v11 == 0xE500000000000000)
  {
LABEL_3:

LABEL_5:
    URL.deletingPathExtension()();
    URL.appendingPathExtension(_:)();
    (*(v15 + 8))(v5, v2);
    return (*(v15 + 56))(a1, 0, 1, v2);
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_5;
  }

  v13 = *(v15 + 56);

  return v13(a1, 1, 1, v2);
}

uint64_t sub_10008EBCC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v51 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v54 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v15 = &v51 - v14;
  v55 = a1;
  URL.appendingPathExtension(_:)();
  sub_100003C4C((v2 + 16), *(v2 + 40));
  sub_1000DF9D4(v56);
  v16 = v58;
  sub_100003C4C(v56, v57);
  v17 = URL.path.getter();
  v18 = (*(v16 + 16))(v17);
  v20 = v19;

  if (v20 >> 60 == 15)
  {
    sub_100003C90(v56);
    v21 = errno.getter();
    if (v21 != 2)
    {
      v22 = v21;
      v23 = static os_log_type_t.error.getter();
      if (qword_100133A98 != -1)
      {
        swift_once();
      }

      v24 = qword_10014E958;
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1000F3C80;
      v26 = URL.path.getter();
      v28 = v27;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_100003D24();
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      *(v25 + 96) = &type metadata for Int32;
      *(v25 + 104) = &protocol witness table for Int32;
      *(v25 + 72) = v22;

      (*(v9 + 8))(v15, v8);
      return 0;
    }

    sub_10008E970(v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      (*(v9 + 8))(v15, v8);
      sub_10007B024(v7);
      return 0;
    }

    (*(v9 + 32))(v54, v7, v8);
    sub_100003C4C((v2 + 16), *(v2 + 40));
    sub_1000DF9D4(v56);
    v29 = v58;
    sub_100003C4C(v56, v57);
    v30 = URL.path.getter();
    v18 = (*(v29 + 16))(v30);
    v32 = v31;

    sub_100003C90(v56);
    if (v32 >> 60 == 15)
    {
      LODWORD(v52) = errno.getter();
      v53 = static os_log_type_t.error.getter();
      if (qword_100133A98 != -1)
      {
        swift_once();
      }

      v51 = qword_10014E958;
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1000F7EC0;
      v34 = v54;
      v35 = URL.path.getter();
      v37 = v36;
      *(v33 + 56) = &type metadata for String;
      v38 = sub_100003D24();
      *(v33 + 64) = v38;
      *(v33 + 32) = v35;
      *(v33 + 40) = v37;
      v39 = URL.path.getter();
      *(v33 + 96) = &type metadata for String;
      *(v33 + 104) = v38;
      *(v33 + 72) = v39;
      *(v33 + 80) = v40;
      *(v33 + 136) = &type metadata for Int32;
      *(v33 + 144) = &protocol witness table for Int32;
      *(v33 + 112) = v52;

      v41 = *(v9 + 8);
      v41(v34, v8);
    }

    else
    {
      v53 = static os_log_type_t.default.getter();
      if (qword_100133A98 != -1)
      {
        swift_once();
      }

      v52 = qword_10014E958;
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1000F3C80;
      v43 = v54;
      v44 = URL.path.getter();
      v46 = v45;
      *(v42 + 56) = &type metadata for String;
      v47 = sub_100003D24();
      *(v42 + 64) = v47;
      *(v42 + 32) = v44;
      *(v42 + 40) = v46;
      v48 = URL.path.getter();
      *(v42 + 96) = &type metadata for String;
      *(v42 + 104) = v47;
      *(v42 + 72) = v48;
      *(v42 + 80) = v49;

      v41 = *(v9 + 8);
      v41(v43, v8);
    }

    v41(v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    sub_100003C90(v56);
  }

  return v18;
}

void *sub_10008F210(uint64_t a1)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v7 - 8, v8);
  v9 = sub_10008EBCC(a1);
  if (v10 >> 60 == 15)
  {
    v11 = static os_log_type_t.default.getter();
    if (qword_100133A98 != -1)
    {
      swift_once();
    }

    v12 = qword_10014E958;
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000F3160;
    v14 = URL.path.getter();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100003D24();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;

    return _swiftEmptyArrayStorage;
  }

  v17 = v9;
  v44 = v9;
  v45 = v10;
  v18 = v10;
  static String.Encoding.utf8.getter();
  sub_10008F69C();
  v19 = String.init<A>(bytes:encoding:)();
  if (!v20)
  {
    v36 = static os_log_type_t.error.getter();
    if (qword_100133A98 != -1)
    {
      swift_once();
    }

    v37 = qword_10014E958;
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1000F3160;
    v39 = URL.path.getter();
    v41 = v40;
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = sub_100003D24();
    *(v38 + 32) = v39;
    *(v38 + 40) = v41;
    goto LABEL_15;
  }

  v44 = v19;
  v45 = v20;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_100012814();
  v21 = StringProtocol.trimmingCharacters(in:)();
  v23 = v22;
  (*(v3 + 8))(v6, v2);

  v44 = 32;
  v45 = 0xE100000000000000;
  __chkstk_darwin(v24, v25);
  *&v43[-16] = &v44;
  v26 = sub_1000225EC(0x7FFFFFFFFFFFFFFFLL, 1, sub_100041C40, &v43[-32], v21, v23, v43);
  v27 = v26[2];
  if (!v27)
  {
LABEL_15:

    sub_100014988(v17, v18);
    return _swiftEmptyArrayStorage;
  }

  v44 = _swiftEmptyArrayStorage;
  sub_1000635A4(0, v27, 0);
  v28 = v44;
  v29 = v26 + 7;
  do
  {

    v30 = static String._fromSubstring(_:)();
    v32 = v31;

    v44 = v28;
    v34 = *(v28 + 16);
    v33 = *(v28 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_1000635A4((v33 > 1), v34 + 1, 1);
      v28 = v44;
    }

    *(v28 + 16) = v34 + 1;
    v35 = v28 + 16 * v34;
    *(v35 + 32) = v30;
    *(v35 + 40) = v32;
    v29 += 4;
    --v27;
  }

  while (v27);
  sub_100014988(v17, v18);

  return v28;
}

unint64_t sub_10008F69C()
{
  result = qword_100137118;
  if (!qword_100137118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100137118);
  }

  return result;
}

uint64_t sub_10008F6F0()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;

    do
    {
      sub_10000A990(v3, v7);
      v4 = v8;
      v5 = v9;
      sub_100003C4C(v7, v8);
      (*(v5 + 8))(v4, v5);
      sub_100003C90(v7);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  sub_1000824F4(0xD000000000000011, 0x80000001001087F0);
  return sub_100083E74(0xD000000000000014, 0x8000000100108810);
}

uint64_t sub_10008F7F8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (qword_100133A50 == -1)
    {
      if (!*(result + 16))
      {
        return 0;
      }
    }

    else
    {
      swift_once();
      if (!*(v1 + 16))
      {
        return 0;
      }
    }

    v2 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
    if (v3)
    {
      sub_10000B430(*(v1 + 56) + 32 * v2, v5);
      if (swift_dynamicCast())
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_10008F8D0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0xD00000000000001ELL;
  v35 = 0x80000001001087B0;
  static Date.now.getter();
  sub_1000981E8(&unk_1001372C0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  (*(v1 + 8))(v4, v0);
  v6._countAndFlagsBits = 10;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  sub_10001BAB8();
  v33._countAndFlagsBits = v7;
  v33._object = v8;
  v9._countAndFlagsBits = 10;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  String.append(_:)(v33);

  v33._countAndFlagsBits = 0xD000000000000014;
  v33._object = 0x80000001001087D0;
  v10 = sub_100048948();
  sub_100042B90(v10, v11, v12);
  v14 = v13;
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 10;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  String.append(_:)(v33);

  v33._countAndFlagsBits = sub_10008D570();
  v33._object = v19;
  v20._countAndFlagsBits = 10;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  String.append(_:)(v33);

  v33._countAndFlagsBits = sub_10001113C();
  v33._object = v21;
  v22._countAndFlagsBits = 10;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  String.append(_:)(v33);

  v24 = ApprovalSettingsState.debugDescription.getter(v23);
  v26 = v25;

  v33._countAndFlagsBits = v24;
  v33._object = v26;
  v27._countAndFlagsBits = 10;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  String.append(_:)(v33);

  v33._countAndFlagsBits = sub_10001F904();
  v33._object = v28;
  v29._countAndFlagsBits = 10;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  String.append(_:)(v33);

  v33._countAndFlagsBits = sub_10009EB98();
  v33._object = v30;
  v31._countAndFlagsBits = 10;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  String.append(_:)(v33);

  return v34;
}

uint64_t sub_10008FC14()
{
  v1 = v0;
  *(v0 + 16) = sub_10003D554(_swiftEmptyArrayStorage);
  v90 = type metadata accessor for DriverKitDaemonSideEffects();
  v91 = &off_10012A108;
  v89[0] = v0;
  v87 = type metadata accessor for RealBundleResolver();
  v88 = &off_10012A460;
  v86[0] = swift_allocObject();
  v2 = sub_100003DA0(v89, v90);
  sub_10000A990(v86, v84);
  v3 = sub_100003DA0(v84, v85);
  __chkstk_darwin(v3, v3);
  v5 = (&v84[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;

  sub_100095978(v7, v2);
  sub_100003C90(v86);
  sub_100003C90(v84);
  v8 = [objc_allocWithZone(NSFileManager) init];
  v9 = sub_100003DA0(v89, v90);
  sub_100095B78(v8, v9);
  v10 = type metadata accessor for RealKernelClient();
  swift_allocObject();
  sub_10006AE80();
  v87 = v10;
  v88 = &off_100128770;
  v86[0] = v11;
  v12 = sub_100003DA0(v89, v90);
  sub_10000A990(v86, v84);
  v13 = sub_100003DA0(v84, v85);
  __chkstk_darwin(v13, v13);
  v15 = (&v84[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  sub_100095D88(*v15, v12);
  sub_100003C90(v86);
  sub_100003C90(v84);
  v17 = type metadata accessor for RealDaemonLauncher();
  v18 = swift_allocObject();
  v87 = v17;
  v88 = &off_1001286E8;
  v86[0] = v18;
  v19 = sub_100003DA0(v89, v90);
  sub_10000A990(v86, v84);
  v20 = sub_100003DA0(v84, v85);
  __chkstk_darwin(v20, v20);
  v22 = (&v84[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  sub_100095F88(*v22, v19);
  sub_100003C90(v86);
  sub_100003C90(v84);
  type metadata accessor for RealCodeSigningResolver();
  v24 = swift_allocObject();
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0;
  sub_1000CB9B8(v89);

  type metadata accessor for NullSystemPolicyClient();
  v25 = swift_allocObject();
  v25[3] = 0;
  v25[4] = 0;
  v25[2] = _swiftEmptyArrayStorage;
  v26 = sub_100003DA0(v89, v90);
  sub_100096188(v25, v26);
  v27 = type metadata accessor for EmbeddedSIPStatus();
  v28 = swift_allocObject();
  v87 = v27;
  v88 = &off_100127530;
  v86[0] = v28;
  v29 = sub_100003DA0(v89, v90);
  sub_10000A990(v86, v84);
  v30 = sub_100003DA0(v84, v85);
  __chkstk_darwin(v30, v30);
  v32 = (&v84[-1] - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  sub_100096388(*v32, v29);
  sub_100003C90(v86);
  sub_100003C90(v84);
  v34 = type metadata accessor for RealDistNote();
  v35 = swift_allocObject();
  v87 = v34;
  v88 = &off_1001286F8;
  v86[0] = v35;
  v36 = sub_100003DA0(v89, v90);
  sub_10000A990(v86, v84);
  v37 = sub_100003DA0(v84, v85);
  __chkstk_darwin(v37, v37);
  v39 = (&v84[-1] - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  sub_100096588(*v39, v36);
  sub_100003C90(v86);
  sub_100003C90(v84);
  type metadata accessor for MinimalDeveloperKitClient();
  v41 = swift_allocObject();
  *(v41 + 32) = 0u;
  *(v41 + 48) = 0;
  *(v41 + 16) = 0u;
  v42 = v41 + 16;
  v43 = sub_100003DA0(v89, v90);

  sub_100096788(v44, v43);
  sub_10000A990(v89, v86);
  swift_beginAccess();
  sub_100098230(v86, v42);
  swift_endAccess();

  v45 = type metadata accessor for RealApprovalsXPCPublisher();
  *(swift_allocObject() + 64) = 0;
  v46 = sub_10006E534(0xD00000000000002BLL, 0x8000000100109050, 0xD00000000000002BLL, 0x8000000100109050);
  v87 = v45;
  v88 = &off_10012E4F8;
  v86[0] = v46;
  v47 = sub_100003DA0(v89, v90);
  sub_10000A990(v86, v84);
  v48 = sub_100003DA0(v84, v85);
  __chkstk_darwin(v48, v48);
  v50 = (&v84[-1] - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50);
  sub_100096988(*v50, v47);
  sub_100003C90(v86);
  sub_100003C90(v84);
  v52 = type metadata accessor for RealDeviceProperties();
  v53 = swift_allocObject();
  v87 = v52;
  v88 = &off_10012E1B0;
  v86[0] = v53;
  v54 = sub_100003DA0(v89, v90);
  sub_10000A990(v86, v84);
  v55 = sub_100003DA0(v84, v85);
  __chkstk_darwin(v55, v55);
  v57 = (&v84[-1] - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v58 + 16))(v57);
  sub_100096B88(*v57, v54);
  sub_100003C90(v86);
  sub_100003C90(v84);
  v59 = type metadata accessor for RealOSEnvironment();
  v60 = swift_allocObject();
  *(v60 + 16) = 2;
  v87 = v59;
  v88 = &off_100129DD0;
  v86[0] = v60;
  v61 = sub_100003DA0(v89, v90);
  sub_10000A990(v86, v84);
  v62 = sub_100003DA0(v84, v85);
  __chkstk_darwin(v62, v62);
  v64 = (&v84[-1] - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v65 + 16))(v64);
  sub_100096D88(*v64, v61);
  sub_100003C90(v86);
  sub_100003C90(v84);
  if (qword_100133B38 != -1)
  {
    swift_once();
  }

  if (byte_100138870 == 1)
  {
    type metadata accessor for NullCoreAnalyticsClient();
    v66 = swift_allocObject();
    v67 = sub_100003DA0(v89, v90);
    sub_100097188(v66, v67);
    type metadata accessor for RestoreOSFeatureFlagsClient();
    v68 = swift_allocObject();
    v69 = sub_100003DA0(v89, v90);
    sub_100097588(v68, v69);
    type metadata accessor for NullRunningBoardSupport();
    v70 = swift_allocObject();
    v71 = sub_100003DA0(v89, v90);
    sub_100097998(v70, v71);
    type metadata accessor for NullLaunchServices();
    v72 = swift_allocObject();
    v73 = sub_100003DA0(v89, v90);
    sub_100097D98(v72, v73);
  }

  else
  {
    type metadata accessor for RealCoreAnalyticsClient();
    v74 = swift_allocObject();
    v75 = sub_100003DA0(v89, v90);
    sub_100096F88(v74, v75);
    type metadata accessor for RealFeatureFlagsClient();
    v76 = swift_allocObject();
    v77 = sub_100003DA0(v89, v90);
    sub_100097388(v76, v77);
    v78 = [objc_allocWithZone(RunningBoardSupport) init];
    v79 = sub_100003DA0(v89, v90);
    sub_100097788(v78, v79);
    type metadata accessor for RealLaunchServices();
    v80 = swift_allocObject();
    v81 = sub_100003DA0(v89, v90);
    sub_100097B98(v80, v81);
  }

  sub_100003C90(v89);
  return v1;
}

uint64_t sub_10009077C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000907D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = os_transaction_create();
  swift_beginAccess();
  sub_100003C4C((v3 + 16), *(v3 + 40));
  sub_1000DF65C(v22);
  swift_endAccess();
  sub_100003C4C(v22, v22[3]);
  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3160;
  *(inited + 32) = 0xD000000000000016;
  v6 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0x8000000100104B80;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x8000000100106690;
  v7 = sub_10003E208(inited);
  swift_setDeallocating();
  sub_10000A184(v6, &unk_1001372D0, &unk_1000F4500);
  v21[3] = sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
  v21[0] = v7;
  v8 = sub_10009C698(v21);
  v10 = v9;
  sub_100003C90(v21);
  if (v10 >> 60 == 15)
  {
    sub_10001449C();
    v11 = swift_allocError();
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0;
    *(v12 + 72) = 75;
    swift_willThrow();
    sub_100003C90(v22);
    v13 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000F3160;
    v22[0] = v11;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100003D24();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v18 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v18, "Error getting kernel requests: %{public}s", 41, 2, v14);

    swift_unknownObjectRelease();
  }

  else
  {
    v20 = sub_10009CBAC(v8, v10);
    sub_100014988(v8, v10);
    sub_100003C90(v22);
    sub_100090AE0(v20, v4);

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_100090AE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v92 = a2;
  v98 = type metadata accessor for DispatchWorkItemFlags();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98, v5);
  v95 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for DispatchQoS();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96, v7);
  v93 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v103 = v2;
  if (v9)
  {
    v10 = a1 + 32;
    v102 = _swiftEmptyArrayStorage;
    v101 = xmmword_1000F3C80;
    do
    {

      sub_10006931C(v11, &v112);

      sub_100009F34(&v112, &aBlock);
      v12 = v102;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = v12;
      v111[0] = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_100031C1C(0, v12[2] + 1, 1, v12);
        v111[0] = v14;
      }

      v16 = v14[2];
      v15 = v14[3];
      if (v16 >= v15 >> 1)
      {
        v102 = sub_100031C1C((v15 > 1), v16 + 1, 1, v14);
        v111[0] = v102;
      }

      else
      {
        v102 = v14;
      }

      v17 = *(&v107 + 1);
      v18 = v108;
      v19 = sub_100003DA0(&aBlock, *(&v107 + 1));
      __chkstk_darwin(v19, v19);
      v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v21);
      sub_100097F98(v16, v21, v111, v17, v18);
      sub_100003C90(&aBlock);
      v10 += 8;
      --v9;
    }

    while (v9);
  }

  else
  {
    v102 = _swiftEmptyArrayStorage;
  }

  *&v101 = swift_allocObject();
  *(v101 + 16) = _swiftEmptyArrayStorage;
  v23 = v102[2];
  if (v23)
  {
    v24 = (v102 + 4);
    v91 = "quest %{public}s: %{public}s";
    v100 = xmmword_1000F3C80;
    *(&v25 + 1) = 2;
    v99 = xmmword_1000F3160;
    *&v25 = 136315138;
    v90 = v25;
    do
    {
      sub_10000A990(v24, &v112);
      sub_10000A990(&v112, v111);
      sub_100003CDC(&qword_100137300, &qword_1000F5020);
      if (swift_dynamicCast())
      {
        v33 = aBlock;
        v34 = sub_100091A64(aBlock);
        sub_100092504(v33, v34, v35);
        sub_100003C90(&v112);

        goto LABEL_15;
      }

      if (swift_dynamicCast())
      {
        v45 = v104;
        v46 = v101;
        v47 = *(v101 + 16);
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *(v46 + 16) = v47;
        if ((v48 & 1) == 0)
        {
          v47 = sub_100031C1C(0, v47[2] + 1, 1, v47);
          *(v101 + 16) = v47;
        }

        v50 = v47[2];
        v49 = v47[3];
        v51 = v50 + 1;
        if (v50 >= v49 >> 1)
        {
          v47 = sub_100031C1C((v49 > 1), v50 + 1, 1, v47);
          *(v101 + 16) = v47;
        }

        sub_100003C90(&v112);
        *&v108 = &off_100129428;
        v52 = &type metadata for KernelRequests.RequestExit;
LABEL_25:
        *(&v107 + 1) = v52;
        *&aBlock = v45;
        v47[2] = v51;
        sub_100009F34(&aBlock, &v47[5 * v50 + 4]);
        *(v101 + 16) = v47;
        goto LABEL_15;
      }

      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          v45 = v104;
          v67 = v101;
          v47 = *(v101 + 16);
          v68 = swift_isUniquelyReferenced_nonNull_native();
          *(v67 + 16) = v47;
          if ((v68 & 1) == 0)
          {
            v47 = sub_100031C1C(0, v47[2] + 1, 1, v47);
            *(v101 + 16) = v47;
          }

          v50 = v47[2];
          v69 = v47[3];
          v51 = v50 + 1;
          if (v50 >= v69 >> 1)
          {
            v47 = sub_100031C1C((v69 > 1), v50 + 1, 1, v47);
            *(v101 + 16) = v47;
          }

          sub_100003C90(&v112);
          *&v108 = &off_100129448;
          v52 = &type metadata for KernelRequests.UnloadNotification;
        }

        else
        {
          if (!swift_dynamicCast())
          {
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(21);
            v73._object = (v91 | 0x8000000000000000);
            v73._countAndFlagsBits = 0xD000000000000013;
            String.append(_:)(v73);
            _print_unlocked<A, B>(_:_:)();
            v74 = aBlock;
            sub_10001449C();
            v75 = swift_allocError();
            *v76 = v74;
            v77 = v109;
            v79 = v107;
            v78 = v108;
            *(v76 + 16) = aBlock;
            *(v76 + 32) = v79;
            *(v76 + 48) = v78;
            *(v76 + 64) = v77;
            *(v76 + 72) = 9;
            swift_willThrow();
            sub_100003C90(v111);
            v36 = static os_log_type_t.error.getter();
            sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
            v37 = swift_allocObject();
            *(v37 + 16) = v100;
            sub_10000A990(&v112, &aBlock);
            v38 = String.init<A>(describing:)();
            v40 = v39;
            *(v37 + 56) = &type metadata for String;
            v41 = sub_100003D24();
            *(v37 + 64) = v41;
            *(v37 + 32) = v38;
            *(v37 + 40) = v40;
            *&aBlock = v75;
            swift_errorRetain();
            sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
            v42 = String.init<A>(describing:)();
            *(v37 + 96) = &type metadata for String;
            *(v37 + 104) = v41;
            *(v37 + 72) = v42;
            *(v37 + 80) = v43;
            sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
            v44 = static OS_os_log.default.getter();
            os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v44, "Error occurred while handling request %{public}s: %{public}s", 62, 2, v37);

            sub_100003C90(&v112);
            v3 = v103;
            goto LABEL_16;
          }

          v45 = v104;
          v70 = v101;
          v47 = *(v101 + 16);
          v71 = swift_isUniquelyReferenced_nonNull_native();
          *(v70 + 16) = v47;
          if ((v71 & 1) == 0)
          {
            v47 = sub_100031C1C(0, v47[2] + 1, 1, v47);
            *(v101 + 16) = v47;
          }

          v50 = v47[2];
          v72 = v47[3];
          v51 = v50 + 1;
          if (v50 >= v72 >> 1)
          {
            v47 = sub_100031C1C((v72 > 1), v50 + 1, 1, v47);
            *(v101 + 16) = v47;
          }

          sub_100003C90(&v112);
          *&v108 = &off_100129468;
          v52 = &type metadata for KernelRequests.DextUpdateNotification;
        }

        goto LABEL_25;
      }

      v53 = v110;
      if (v110)
      {
        if (qword_100133A50 == -1)
        {
          if (*(v110 + 16))
          {
            goto LABEL_30;
          }
        }

        else
        {
          swift_once();
          if (*(v53 + 16))
          {
LABEL_30:
            v54 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
            if (v55)
            {
              sub_10000B430(*(v53 + 56) + 32 * v54, &aBlock);
              v56 = swift_dynamicCast();
              if (v56)
              {
                v58 = v104;
                v59 = v105;
                if (qword_100133A48 != -1)
                {
                  v80 = v104;
                  v56 = swift_once();
                  v58 = v80;
                }

                v60 = *(qword_10014E8A0 + 16);
                if (v60)
                {
                  __chkstk_darwin(v56, v57);
                  *(&v88 - 2) = v26;
                  *(&v88 - 1) = v59;

                  os_unfair_lock_lock(v60 + 6);
                  sub_1000980FC(&v60[4]);
                  os_unfair_lock_unlock(v60 + 6);
                }

                else
                {
                  v89 = v58;
                  if (qword_100133B08 != -1)
                  {
                    swift_once();
                  }

                  v61 = type metadata accessor for Logger();
                  sub_1000144F0(v61, qword_10014EA58);

                  v62 = Logger.logObject.getter();
                  v63 = static os_log_type_t.info.getter();

                  if (os_log_type_enabled(v62, v63))
                  {
                    v64 = v59;
                    v65 = swift_slowAlloc();
                    v66 = swift_slowAlloc();
                    *&aBlock = v66;
                    *v65 = v90;
                    *(v65 + 4) = sub_1000E3AF8(v89, v64, &aBlock);
                    _os_log_impl(&_mh_execute_header, v62, v63, "Skipping removeBreadcrumbForDextWithIdentifier for %s", v65, 0xCu);
                    sub_100003C90(v66);
                    v3 = v103;
                  }
                }
              }
            }
          }
        }
      }

      v27 = static os_log_type_t.debug.getter();
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v28 = swift_allocObject();
      *(v28 + 16) = v99;
      *&aBlock = v53;
      v29 = String.init<A>(describing:)();
      v31 = v30;
      *(v28 + 56) = &type metadata for String;
      *(v28 + 64) = sub_100003D24();
      *(v28 + 32) = v29;
      *(v28 + 40) = v31;
      sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
      v32 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v32, "Ignoring load notification: %{public}s", 38, 2, v28);

      sub_100003C90(&v112);
LABEL_15:
      sub_100003C90(v111);
LABEL_16:
      v24 += 40;
      --v23;
    }

    while (v23);
  }

  v81 = swift_allocObject();
  v82 = v101;
  v81[2] = v92;
  v81[3] = v82;
  v81[4] = v3;
  *&v108 = sub_1000980B0;
  *(&v108 + 1) = v81;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v107 = sub_10006CCB0;
  *(&v107 + 1) = &unk_10012A168;
  v83 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v84 = v93;
  static DispatchQoS.unspecified.getter();
  *&v112 = _swiftEmptyArrayStorage;
  sub_1000981E8(&unk_100133CA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003CDC(&unk_100137370, &unk_1000F32E0);
  sub_10001455C(&qword_100133CB0, &unk_100137370, &unk_1000F32E0, &protocol conformance descriptor for [A]);
  v85 = v95;
  v86 = v98;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v83);
  (*(v97 + 8))(v85, v86);
  (*(v94 + 8))(v84, v96);
}

char *sub_100091A64(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for ApplicationRecord(0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = (&v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for DriverBinEntry(0);
  v96 = *(v105 - 8);
  v15 = __chkstk_darwin(v105, v14);
  v117 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v17);
  v95 = &v86 - v18;
  v109 = type metadata accessor for UUID();
  v98 = *(v109 - 8);
  __chkstk_darwin(v109, v19);
  v94 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100003CDC(&qword_1001342E0, &unk_1000F3A30);
  v23 = __chkstk_darwin(v21 - 8, v22);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v26);
  v28 = &v86 - v27;
  v29 = sub_10008F7F8(a1);
  if (v30)
  {
    v103 = v13;
    v104 = v9;
    v87 = v8;
    v88 = v2;
    v31 = v30;
    v32 = v29;
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1000F3160;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100003D24();
    v90 = v32;
    *(v33 + 32) = v32;
    *(v33 + 40) = v31;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v91 = v31;

    v34 = static OS_os_log.default.getter();
    v35 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Figuring out dext launch context: %{public}s", 44, 2, &_mh_execute_header, v34, v35, v33);

    v36 = sub_100048948();

    v38 = v10;
    v39 = 0;
    v41 = v36 + 64;
    v40 = *(v36 + 8);
    v97 = v36;
    v42 = 1 << v36[32];
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & v40;
    v89 = (v42 + 63) >> 6;
    v93 = v98 + 16;
    v92 = v98 + 32;
    v101 = (v38 + 16);
    v100 = (v38 + 8);
    v102 = (v98 + 8);
    v106 = v25;
    v45 = v28;
    v99 = v41;
    v107 = v28;
    v108 = v3;
    while (1)
    {
      if (!v44)
      {
        if (v89 <= v39 + 1)
        {
          v47 = v39 + 1;
        }

        else
        {
          v47 = v89;
        }

        v48 = v47 - 1;
        while (1)
        {
          v46 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          if (v46 >= v89)
          {
            v79 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
            (*(*(v79 - 8) + 56))(v25, 1, 1, v79);
            v44 = 0;
            v39 = v48;
            goto LABEL_19;
          }

          v44 = *&v41[8 * v46];
          ++v39;
          if (v44)
          {
            v39 = v46;
            goto LABEL_18;
          }
        }

        __break(1u);
        return result;
      }

      v46 = v39;
LABEL_18:
      v49 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      v50 = v49 | (v46 << 6);
      v51 = v97;
      v52 = v98;
      v53 = v94;
      v54 = v109;
      (*(v98 + 16))(v94, *(v97 + 6) + *(v98 + 72) * v50, v109);
      v55 = v95;
      sub_10008E708(*(v51 + 7) + *(v96 + 72) * v50, v95, type metadata accessor for DriverBinEntry);
      v56 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
      v57 = *(v56 + 48);
      v58 = *(v52 + 32);
      v25 = v106;
      v58(v106, v53, v54);
      sub_100068024(v55, &v25[v57]);
      (*(*(v56 - 8) + 56))(v25, 0, 1, v56);
      v45 = v107;
      v3 = v108;
LABEL_19:
      sub_100098118(v25, v45);
      v59 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
      if ((*(*(v59 - 8) + 48))(v45, 1, v59) == 1)
      {

        return 0;
      }

      v60 = v45 + *(v59 + 48);
      v61 = v117;
      sub_100068024(v60, v117);
      swift_beginAccess();
      sub_100003C4C((v3 + 16), *(v3 + 40));
      sub_1000DFF08(v110);
      swift_endAccess();
      v62 = v61 + *(v105 + 28);
      v63 = v103;
      v64 = v104;
      (*v101)(v103, v62, v104);
      v65 = type metadata accessor for UncachedBundle();
      v66 = swift_allocObject();
      URL._bridgeToObjectiveC()(v67);
      v69 = v68;
      Unique = _CFBundleCreateUnique();

      v71 = *v100;
      if (Unique)
      {
        v72 = Unique;
        v71(v63, v64);

        *(v66 + 16) = v72;
        *(&v114 + 1) = v65;
        *&v115 = sub_1000981E8(&qword_1001373C0, type metadata accessor for UncachedBundle, &unk_1000F980C);
        *&v113 = v66;
        sub_100003C90(v110);
      }

      else
      {
        v71(v63, v64);
        swift_deallocPartialClassInstance();
        sub_100003C90(v110);
        *&v115 = 0;
        v113 = 0u;
        v114 = 0u;
      }

      sub_100014894(&v113, v110, &qword_1001342A8, &unk_1000F39C0);
      v73 = v111;
      v45 = v107;
      v3 = v108;
      v25 = v106;
      if (!v111)
      {
        break;
      }

      v74 = v112;
      sub_100003C4C(v110, v111);
      v75 = (*(v74 + 24))(v73, v74);
      v77 = v76;
      sub_100003C90(v110);
      if (!v77)
      {
        goto LABEL_6;
      }

      if (v75 == v90 && v77 == v91)
      {

        sub_10000A184(&v113, &qword_1001342A8, &unk_1000F39C0);
LABEL_33:

        v84 = v117;
        v85 = v87;
        sub_10008E708(v117 + *(v105 + 20), v87, type metadata accessor for ApplicationRecord);
        sub_100098188(v84, type metadata accessor for DriverBinEntry);
        v13 = *v85;

        sub_100098188(v85, type metadata accessor for ApplicationRecord);
        (*v102)(v45, v109);
        return v13;
      }

      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000A184(&v113, &qword_1001342A8, &unk_1000F39C0);
      if (v78)
      {
        goto LABEL_33;
      }

LABEL_7:
      sub_100098188(v117, type metadata accessor for DriverBinEntry);
      result = (*v102)(v45, v109);
      v41 = v99;
    }

    sub_10000A184(v110, &qword_1001342A8, &unk_1000F39C0);
LABEL_6:
    sub_10000A184(&v113, &qword_1001342A8, &unk_1000F39C0);
    goto LABEL_7;
  }

  sub_10001449C();
  swift_allocError();
  *v80 = 0xD00000000000002FLL;
  *(v80 + 8) = 0x8000000100108E30;
  v81 = v116;
  v83 = v114;
  v82 = v115;
  *(v80 + 16) = v113;
  *(v80 + 32) = v83;
  *(v80 + 48) = v82;
  *(v80 + 64) = v81;
  *(v80 + 72) = 9;
  swift_willThrow();
  return v13;
}

uint64_t sub_100092504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v159 = a2;
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003CDC(&unk_100137380, &qword_1000F96C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F4980;
  v12 = sub_10008F7F8(a1);
  if (v13)
  {
    v14 = &type metadata for String;
  }

  else
  {
    v12 = 0;
    v14 = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v12;
  *(inited + 40) = v13;
  *(inited + 56) = v14;
  v15 = sub_10006999C(a1);
  if (v16)
  {
    v17 = &type metadata for String;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    *(inited + 80) = 0;
  }

  *(inited + 64) = v15;
  *(inited + 72) = v16;
  *(inited + 88) = v17;
  v18 = sub_100069A4C(a1);
  if (v19)
  {
    v18 = 0;
    v20 = 0;
    *(inited + 104) = 0;
    *(inited + 112) = 0;
  }

  else
  {
    v20 = &type metadata for UInt64;
  }

  *(inited + 96) = v18;
  *(inited + 120) = v20;
  v21 = sub_100069B00(a1);
  if (v21 == 2)
  {
    v22 = 0;
    *(inited + 128) = 0;
    *(inited + 136) = 0;
    *(inited + 144) = 0;
  }

  else
  {
    *(inited + 128) = v21 & 1;
    v22 = &type metadata for Bool;
  }

  *(inited + 152) = v22;
  v23 = sub_100069BB8(a1);
  if ((v23 & 0x100000000) != 0)
  {
    v24 = 0;
    *(inited + 160) = 0;
    *(inited + 168) = 0;
    *(inited + 176) = 0;
  }

  else
  {
    *(inited + 160) = v23;
    v24 = &type metadata for UInt32;
  }

  *(inited + 184) = v24;
  sub_100093F80(inited);
  swift_setDeallocating();
  sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  result = swift_arrayDestroy();
  if (!v3)
  {
    v151 = a3;
    LODWORD(v155) = static os_signpost_type_t.event.getter();
    if (qword_100133AB8 != -1)
    {
      swift_once();
    }

    v156 = v7;
    v157 = v6;
    v154 = qword_10014E978;
    v150 = sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v26 = swift_allocObject();
    v149 = xmmword_1000F9130;
    *(v26 + 16) = xmmword_1000F9130;
    result = sub_10008F7F8(a1);
    if (v27)
    {
      v28 = result;
      v29 = v27;
      *(v26 + 56) = &type metadata for String;
      v30 = sub_100003D24();
      *(v26 + 64) = v30;
      *(v26 + 32) = v28;
      *(v26 + 40) = v29;
      result = sub_10006999C(a1);
      if (v31)
      {
        *(v26 + 96) = &type metadata for String;
        *(v26 + 104) = v30;
        v158 = v30;
        *(v26 + 72) = result;
        *(v26 + 80) = v31;
        result = sub_100069A4C(a1);
        if ((v32 & 1) == 0)
        {
          *(v26 + 136) = &type metadata for UInt64;
          *(v26 + 144) = &protocol witness table for UInt64;
          *(v26 + 112) = result;
          v33 = sub_100069C70();
          if (v34 >> 60 == 15)
          {
            v153 = 0;
            v35 = (v26 + 152);
            v36 = v158;
            *(v26 + 176) = &type metadata for String;
            *(v26 + 184) = v36;
          }

          else
          {
            v37 = v33;
            v38 = v34;
            v152 = a1;
            v39 = sub_10005BD44(v33, v34);
            v153 = 0;
            *&v161 = v39;
            sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
            sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
            v40 = BidirectionalCollection<>.joined(separator:)();
            v42 = v41;
            sub_100014988(v37, v38);

            v35 = (v26 + 152);
            *(v26 + 176) = &type metadata for String;
            *(v26 + 184) = v158;
            if (v42)
            {
              *v35 = v40;
              a1 = v152;
              v44 = v156;
              v43 = v157;
              v45 = v155;
              goto LABEL_28;
            }

            a1 = v152;
          }

          v44 = v156;
          v43 = v157;
          v45 = v155;
          *v35 = 0x7571696E75206F6ELL;
          v42 = 0xEC00000044492065;
LABEL_28:
          *(v26 + 160) = v42;
          static OSSignpostID.exclusive.getter();
          os_signpost(_:dso:log:name:signpostID:_:_:)(v45, &_mh_execute_header, v154, "DextLaunch", 10, 2, v10, "%{public}s %{public}s 0x%llx %{public}s", 39, 2, v26);

          (*(v44 + 8))(v10, v43);
          result = sub_100069BB8(a1);
          if ((result & 0x100000000) == 0)
          {
            v46 = result;
            if ((result + 1) < 2)
            {
              *&v161 = 0;
              *(&v161 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(31);

              *&v161 = 0xD00000000000001DLL;
              *(&v161 + 1) = 0x8000000100108AA0;
              LODWORD(v160) = v46;
              v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v47);

              v48 = v161;
              sub_10001449C();
              swift_allocError();
              *v49 = v48;
              v50 = v164;
              v52 = v162;
              v51 = v163;
              *(v49 + 16) = v161;
              *(v49 + 32) = v52;
              *(v49 + 48) = v51;
              *(v49 + 64) = v50;
              *(v49 + 72) = 9;
              return swift_willThrow();
            }

            result = sub_10008F7F8(a1);
            if (v53)
            {
              v54 = result;
              v55 = v53;
              v56 = sub_100069C70();
              v58 = v57;
              v59 = v54;
              v60 = a1;
              v61 = v165;
              v62 = v153;
              v63 = sub_10009409C(v59, v55, v56, v57, 0);
              v153 = v62;
              if (v62)
              {
                sub_100014988(v56, v58);

                return mach_port_deallocate(mach_task_self_, v46);
              }

              v64 = v63;
              v152 = v60;
              sub_100014988(v56, v58);

              if (v64)
              {
                v65 = *(v64 + 24);
                if (*v65 == _TtC10driverkitd15DriverExtension)
                {
                  v66 = qword_100133B38;

                  if (v66 != -1)
                  {
                    swift_once();
                  }

                  v157 = v64;
                  v67 = v158;
                  if (byte_100138870)
                  {
                    v68 = static os_log_type_t.error.getter();
                    v69 = swift_allocObject();
                    *(v69 + 16) = v149;
                    v70 = v152;
                    result = sub_10008F7F8(v152);
                    if (!v71)
                    {
LABEL_101:
                      __break(1u);
                      goto LABEL_102;
                    }

                    *(v69 + 56) = &type metadata for String;
                    *(v69 + 64) = v67;
                    *(v69 + 32) = result;
                    *(v69 + 40) = v71;
                    result = sub_10006999C(v70);
                    if (!v72)
                    {
LABEL_103:
                      __break(1u);
                      goto LABEL_104;
                    }

                    *(v69 + 96) = &type metadata for String;
                    *(v69 + 104) = v67;
                    *(v69 + 72) = result;
                    *(v69 + 80) = v72;
                    result = sub_100069A4C(v70);
                    if (v73)
                    {
LABEL_105:
                      __break(1u);
                      goto LABEL_106;
                    }

                    *(v69 + 136) = &type metadata for UInt64;
                    *(v69 + 144) = &protocol witness table for UInt64;
                    *(v69 + 112) = result;
                    v74 = sub_100069C70();
                    if (v75 >> 60 == 15)
                    {
                      v76 = (v69 + 152);
                      *(v69 + 176) = &type metadata for String;
                      *(v69 + 184) = v67;
                      v77 = v151;
                    }

                    else
                    {
                      LODWORD(v155) = v68;
                      v156 = v65;
                      v102 = v74;
                      v103 = v75;
                      v104 = v153;
                      v105 = sub_10005BD44(v74, v75);
                      v153 = v104;
                      *&v161 = v105;
                      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
                      sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
                      v106 = BidirectionalCollection<>.joined(separator:)();
                      v108 = v107;
                      sub_100014988(v102, v103);

                      v76 = (v69 + 152);
                      v109 = v158;
                      *(v69 + 176) = &type metadata for String;
                      *(v69 + 184) = v109;
                      if (v108)
                      {
                        *v76 = v106;
                        v77 = v151;
                        v65 = v156;
                        v68 = v155;
LABEL_59:
                        *(v69 + 160) = v108;
                        sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
                        v118 = static OS_os_log.default.getter();
                        os_log(_:dso:log:_:_:)(v68, &_mh_execute_header, v118, "(NOT AN ERROR) Launching dext %{public}s %{public}s 0x%llx %{public}s", 69, 2, v69);
                        goto LABEL_63;
                      }

                      v77 = v151;
                      v65 = v156;
                      v68 = v155;
                    }

                    *v76 = 0x7571696E75206F6ELL;
                    v108 = 0xEC00000044492065;
                    goto LABEL_59;
                  }

                  v94 = swift_allocObject();
                  *(v94 + 16) = v149;
                  v95 = v152;
                  result = sub_10008F7F8(v152);
                  if (!v96)
                  {
LABEL_102:
                    __break(1u);
                    goto LABEL_103;
                  }

                  *(v94 + 56) = &type metadata for String;
                  *(v94 + 64) = v67;
                  *(v94 + 32) = result;
                  *(v94 + 40) = v96;
                  result = sub_10006999C(v95);
                  if (!v97)
                  {
LABEL_104:
                    __break(1u);
                    goto LABEL_105;
                  }

                  *(v94 + 96) = &type metadata for String;
                  *(v94 + 104) = v67;
                  *(v94 + 72) = result;
                  *(v94 + 80) = v97;
                  result = sub_100069A4C(v95);
                  if (v98)
                  {
LABEL_106:
                    __break(1u);
                    goto LABEL_107;
                  }

                  *(v94 + 136) = &type metadata for UInt64;
                  *(v94 + 144) = &protocol witness table for UInt64;
                  *(v94 + 112) = result;
                  v99 = sub_100069C70();
                  if (v100 >> 60 == 15)
                  {
                    v101 = (v94 + 152);
                    *(v94 + 176) = &type metadata for String;
                    *(v94 + 184) = v67;
                    v77 = v151;
                  }

                  else
                  {
                    v156 = v65;
                    v110 = v99;
                    v111 = v100;
                    v112 = v153;
                    v113 = sub_10005BD44(v99, v100);
                    v153 = v112;
                    *&v161 = v113;
                    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
                    sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
                    v114 = BidirectionalCollection<>.joined(separator:)();
                    v116 = v115;
                    sub_100014988(v110, v111);

                    v101 = (v94 + 152);
                    v117 = v158;
                    *(v94 + 176) = &type metadata for String;
                    *(v94 + 184) = v117;
                    if (v116)
                    {
                      *v101 = v114;
                      v77 = v151;
                      v65 = v156;
LABEL_62:
                      *(v94 + 160) = v116;
                      sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
                      v118 = static OS_os_log.default.getter();
                      v119 = static os_log_type_t.default.getter();
                      os_log(_:dso:log:type:_:)("Launching dext %{public}s %{public}s 0x%llx %{public}s", 54, 2, &_mh_execute_header, v118, v119, v94);
LABEL_63:

                      if (qword_100133A48 != -1)
                      {
                        swift_once();
                      }

                      v120 = qword_10014E8A0;
                      result = sub_10008F7F8(v152);
                      if (v121)
                      {
                        sub_100074610(result, v121, 0);

                        v122 = v61[10];
                        v123 = *(*(v122 + 56) + 650);
                        v158 = v120;
                        if ((v123 & 0x20) == 0 || v77 == 1)
                        {
                          v133 = v152;
                          result = sub_10006999C(v152);
                          if (!v134)
                          {
LABEL_107:
                            __break(1u);
                            goto LABEL_108;
                          }

                          v135 = result;
                          v136 = v134;
                          result = sub_100069A4C(v133);
                          if (v137)
                          {
LABEL_108:
                            __break(1u);
                            goto LABEL_109;
                          }

                          v138 = result;
                          result = sub_100069B00(v133);
                          if (result == 2)
                          {
LABEL_109:
                            __break(1u);
                            goto LABEL_110;
                          }

                          v139 = result;
                          result = sub_100069BB8(v133);
                          if ((result & 0x100000000) == 0)
                          {
                            goto LABEL_84;
                          }

                          __break(1u);
                        }

                        else if (v77)
                        {
                          v156 = v65;
                          v124 = v152;
                          result = sub_10006999C(v152);
                          if (!v125)
                          {
LABEL_110:
                            __break(1u);
                            goto LABEL_111;
                          }

                          v126 = v125;
                          v155 = result;
                          result = sub_100069A4C(v124);
                          if (v127)
                          {
LABEL_111:
                            __break(1u);
                            goto LABEL_112;
                          }

                          v128 = result;
                          result = sub_100069B00(v124);
                          if (result == 2)
                          {
LABEL_112:
                            __break(1u);
                            goto LABEL_113;
                          }

                          v129 = result;
                          result = sub_100069BB8(v124);
                          if ((result & 0x100000000) != 0)
                          {
LABEL_113:
                            __break(1u);
                            goto LABEL_114;
                          }

                          v130 = v129 & 1;
                          v131 = v157;
                          v132 = v153;
                          sub_100094DF0(v156, v155, v126, v128, v130, result, v157 + 32, v159, v151);
                          if (!v132)
                          {

                            swift_beginAccess();
                            sub_100003C4C(v61 + 2, v61[5]);
                            sub_1000E00C4(&v161);
                            v144 = *(&v162 + 1);
                            v145 = v163;
                            sub_100003C4C(&v161, *(&v162 + 1));
                            v146 = *(v122 + 56);
                            v148 = *(v146 + 160);
                            v147 = *(v146 + 168);

                            sub_1000183E8(v131, v148, v147, v144, v145);

                            sub_100003C90(&v161);
                            return mach_port_deallocate(mach_task_self_, v46);
                          }

                          v133 = v152;
                          goto LABEL_85;
                        }

                        v133 = v152;
                        result = sub_10006999C(v152);
                        if (!v140)
                        {
LABEL_114:
                          __break(1u);
                          goto LABEL_115;
                        }

                        v135 = result;
                        v136 = v140;
                        result = sub_100069A4C(v133);
                        if (v141)
                        {
LABEL_115:
                          __break(1u);
                          goto LABEL_116;
                        }

                        v138 = result;
                        result = sub_100069B00(v133);
                        if (result == 2)
                        {
LABEL_116:
                          __break(1u);
                          goto LABEL_117;
                        }

                        v139 = result;
                        result = sub_100069BB8(v133);
                        if ((result & 0x100000000) != 0)
                        {
LABEL_117:
                          __break(1u);
                          return result;
                        }

LABEL_84:
                        v142 = v153;
                        sub_100075E50(v65, v135, v136, v138, v139 & 1, result, v157 + 32);
                        if (v142)
                        {
LABEL_85:

                          result = sub_10008F7F8(v133);
                          if (v143)
                          {
                            sub_100074610(result, v143, 1);

                            swift_willThrow();

                            return mach_port_deallocate(mach_task_self_, v46);
                          }

                          goto LABEL_100;
                        }

LABEL_88:

                        return mach_port_deallocate(mach_task_self_, v46);
                      }

LABEL_99:
                      __break(1u);
LABEL_100:
                      __break(1u);
                      goto LABEL_101;
                    }

                    v77 = v151;
                    v65 = v156;
                  }

                  *v101 = 0x7571696E75206F6ELL;
                  v116 = 0xEC00000044492065;
                  goto LABEL_62;
                }

                *&v161 = 0;
                *(&v161 + 1) = 0xE000000000000000;

                _StringGuts.grow(_:)(67);
                v160 = v161;
                v86._object = 0x80000001001089A0;
                v86._countAndFlagsBits = 0xD000000000000027;
                String.append(_:)(v86);
                result = sub_10008F7F8(v152);
                if (v87)
                {
                  String.append(_:)(*&result);

                  v88._countAndFlagsBits = 0xD00000000000001ALL;
                  v88._object = 0x80000001001089F0;
                  String.append(_:)(v88);
                  v89 = v160;
                  sub_10001449C();
                  swift_allocError();
                  *v90 = v89;
                  v91 = v164;
                  v93 = v162;
                  v92 = v163;
                  *(v90 + 16) = v161;
                  *(v90 + 32) = v93;
                  *(v90 + 48) = v92;
                  *(v90 + 64) = v91;
                  *(v90 + 72) = 10;
                  swift_willThrow();
                  goto LABEL_88;
                }

LABEL_98:
                __break(1u);
                goto LABEL_99;
              }

              *&v161 = 0;
              *(&v161 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(62);
              v160 = v161;
              v78._object = 0x80000001001089A0;
              v78._countAndFlagsBits = 0xD000000000000027;
              String.append(_:)(v78);
              result = sub_10008F7F8(v152);
              if (v79)
              {
                String.append(_:)(*&result);

                v80._countAndFlagsBits = 0xD000000000000015;
                v80._object = 0x80000001001089D0;
                String.append(_:)(v80);
                v81 = v160;
                sub_10001449C();
                swift_allocError();
                *v82 = v81;
                v83 = v164;
                v85 = v162;
                v84 = v163;
                *(v82 + 16) = v161;
                *(v82 + 32) = v85;
                *(v82 + 48) = v84;
                *(v82 + 64) = v83;
                *(v82 + 72) = 10;
                swift_willThrow();
                return mach_port_deallocate(mach_task_self_, v46);
              }

LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

LABEL_94:
        __break(1u);
        goto LABEL_95;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_94;
  }

  return result;
}