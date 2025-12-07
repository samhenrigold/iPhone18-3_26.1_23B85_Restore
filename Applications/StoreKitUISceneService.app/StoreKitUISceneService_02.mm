void (*sub_100037018(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v5 = type metadata accessor for URL.DirectoryHint();
  sub_100014A8C();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10002FC5C();
  v11 = v10 - v9;
  v12 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  sub_10002FD0C(v12);
  sub_10002FF34();
  __chkstk_darwin(v13);
  sub_100037C14();
  v14 = type metadata accessor for URL();
  sub_100014A8C();
  v71 = v15;
  __chkstk_darwin(v16);
  sub_10002FC38();
  v67 = v17;
  sub_10002FD18();
  __chkstk_darwin(v18);
  v20 = &v64 - v19;
  v66 = *(v7 + 104);
  v66(v11, enum case for URL.DirectoryHint.checkFileSystem(_:), v5);
  v69 = a1;
  v70 = a2;
  sub_100034760(a1, a2, v2);
  v21 = *(v7 + 8);
  v21(v11, v5);
  v22 = sub_100037C28();
  if (sub_100012898(v22, v23, v14) == 1)
  {
    sub_1000379F4(v2);
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v24 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v24, qword_1000E4560);
    sub_100037C54();

    sub_100037B40();
    sub_100037C74(v25);
    v21 = static os_log_type_t.error.getter();

    v26 = Logger.logObject.getter();

    if (os_log_type_enabled(v26, v21))
    {
      sub_10002FF14();
      v27 = swift_slowAlloc();
      sub_10002FE48();
      v28 = swift_slowAlloc();
      v72 = v28;
      *v27 = 136446466;
      v30 = sub_100037CAC(v28, v29, &v72);
      v31 = sub_100037B8C(v30);
      v33 = sub_100037C94(v31, v32, &v72);

      *(v27 + 14) = v33;
      sub_100037B4C(&_mh_execute_header, v34, v35, "%{public}s%{public}s");
      sub_100037BD0();
      sub_10002FCC8();

      sub_10002FCC8();
    }

    else
    {
    }

    type metadata accessor for ASDError(0);
    v74 = 513;
    sub_10007D238(_swiftEmptyArrayStorage);
    sub_100020A24();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  else
  {
    v36 = *(v71 + 32);
    v65 = v14;
    v36(v20, v2, v14);
    v37 = [objc_opt_self() defaultManager];
    v38 = sub_100039EF8();

    if (v38)
    {
      if ((v38 & 0x100) != 0)
      {
        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v51;
        v66(v11, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
        sub_100012B58();
        v52 = v67;
        URL.appending<A>(path:directoryHint:)();
        v21(v11, v5);

        v53 = v68;
        v54 = Data.init(contentsOf:options:)();
        if (v53)
        {
          v21 = (v71 + 8);
          v55 = *(v71 + 8);
          v56 = v52;
          v57 = v65;
          v55(v56, v65);
          v55(v20, v57);
        }

        else
        {
          v21 = v54;
          v61 = *(v71 + 8);
          v62 = v52;
          v63 = v65;
          v61(v62, v65);
          v61(v20, v63);
        }
      }

      else
      {
        v39 = v68;
        v40 = Data.init(contentsOf:options:)();
        if (!v39)
        {
          v21 = v40;
        }

        (*(v71 + 8))(v20, v65);
      }
    }

    else
    {
      if (qword_1000D1AE8 != -1)
      {
        sub_10002FBAC();
        swift_once();
      }

      v41 = type metadata accessor for SKLogger(0);
      sub_1000128C0(v41, qword_1000E4560);
      sub_100037C54();

      sub_100037B40();
      sub_100037C74(v42);
      v44 = v72;
      v43 = v73;
      v45 = static os_log_type_t.error.getter();

      v46 = Logger.logObject.getter();

      if (os_log_type_enabled(v46, v45))
      {
        sub_10002FF14();
        v47 = swift_slowAlloc();
        sub_10002FE48();
        v48 = swift_slowAlloc();
        v72 = v48;
        *v47 = 136446466;
        *(v47 + 4) = sub_100037CAC(v48, v49, &v72);
        *(v47 + 12) = 2082;
        v50 = sub_1000847A8(v44, v43, &v72);

        *(v47 + 14) = v50;
        _os_log_impl(&_mh_execute_header, v46, v45, "%{public}s%{public}s", v47, 0x16u);
        swift_arrayDestroy();
        sub_10002FCC8();

        sub_10002FCC8();
      }

      else
      {
      }

      v58 = v65;
      v59 = v71;
      type metadata accessor for ASDError(0);
      v74 = 513;
      v21 = sub_10007D238(_swiftEmptyArrayStorage);
      sub_100020A24();
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      (*(v59 + 8))(v20, v58);
    }
  }

  return v21;
}

uint64_t sub_100037984(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000379F4(uint64_t a1)
{
  v2 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037ACC(uint64_t a1)
{
  v2 = type metadata accessor for Client.Server(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037B28(uint64_t result)
{
  *(v1 - 112) = 91;
  *(v1 - 104) = 0xE100000000000000;
  *(v1 - 96) = result;
  return result;
}

void sub_100037B4C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_100037B8C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

unint64_t sub_100037BB4()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  return sub_1000847A8(v2, v3, (v0 - 96));
}

uint64_t sub_100037BD0()
{

  return swift_arrayDestroy();
}

uint64_t sub_100037BEC()
{

  return swift_arrayDestroy();
}

void sub_100037C34()
{
  *(v0 - 104) = 0;
  *(v0 - 96) = 0xE000000000000000;

  _StringGuts.grow(_:)(32);
}

void sub_100037C54()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0xE000000000000000;

  _StringGuts.grow(_:)(36);
}

void sub_100037C74(uint64_t a1@<X8>)
{
  *(v1 - 96) = 0xD000000000000022;
  *(v1 - 88) = a1;
  v3 = *(v1 - 120);
  v4 = *(v1 - 112);

  String.append(_:)(*&v3);
}

unint64_t sub_100037C94(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1000847A8(v4, v3, a3);
}

unint64_t sub_100037CAC(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1000847A8(0, 0xE000000000000000, a3);
}

uint64_t sub_100037CC4(uint64_t a1, uint64_t a2)
{

  return sub_10001267C(a1, a2, 1, v2);
}

unint64_t sub_100037CF0()
{
  result = qword_1000D2D60;
  if (!qword_1000D2D60)
  {
    sub_10001CEC4(&qword_1000D2D68, qword_100096378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D60);
  }

  return result;
}

uint64_t sub_100037D54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746375646F7270 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x786F62646E6173 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x67696C6674736574 && a2 == 0xEA00000000007468)
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

uint64_t sub_100037E78(char a1)
{
  if (!a1)
  {
    return 0x69746375646F7270;
  }

  if (a1 == 1)
  {
    return 0x786F62646E6173;
  }

  return 0x67696C6674736574;
}

uint64_t sub_100037EE0(void *a1, int a2)
{
  v33 = a2;
  sub_100012634(&qword_1000D2DB8, &qword_100096498);
  sub_100014A8C();
  v31 = v4;
  v32 = v3;
  sub_10002FF34();
  __chkstk_darwin(v5);
  v30 = &v26 - v6;
  sub_100012634(&qword_1000D2DC0, &qword_1000964A0);
  sub_100014A8C();
  v28 = v8;
  v29 = v7;
  sub_10002FF34();
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_100012634(&qword_1000D2DC8, &qword_1000964A8);
  sub_100014A8C();
  v27 = v13;
  sub_10002FF34();
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_100012634(&qword_1000D2DD0, &qword_1000964B0);
  sub_100014A8C();
  v19 = v18;
  sub_10002FF34();
  __chkstk_darwin(v20);
  v22 = &v26 - v21;
  sub_100012980(a1, a1[3]);
  sub_100038A98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = (v19 + 8);
  if (v33)
  {
    if (v33 == 1)
    {
      v35 = 1;
      sub_100038B40();
      sub_100039088(&type metadata for AccountType.SandboxCodingKeys);
      (*(v28 + 8))(v11, v29);
    }

    else
    {
      v36 = 2;
      sub_100038AEC();
      v24 = v30;
      sub_100039088(&type metadata for AccountType.TestflightCodingKeys);
      (*(v31 + 8))(v24, v32);
    }
  }

  else
  {
    v34 = 0;
    sub_100038B94();
    sub_100039088(&type metadata for AccountType.ProductionCodingKeys);
    (*(v27 + 8))(v16, v12);
  }

  return (*v23)(v22, v17);
}

uint64_t sub_100038200(void *a1)
{
  v63 = sub_100012634(&qword_1000D2D78, &qword_100096470);
  sub_100014A8C();
  v61 = v2;
  sub_10002FF34();
  __chkstk_darwin(v3);
  v59 = &v53 - v4;
  v60 = sub_100012634(&qword_1000D2D80, &qword_100096478);
  sub_100014A8C();
  v58 = v5;
  sub_10002FF34();
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v9 = sub_100012634(&qword_1000D2D88, &qword_100096480);
  sub_100014A8C();
  v57 = v10;
  sub_10002FF34();
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v14 = sub_100012634(&qword_1000D2D90, &unk_100096488);
  sub_100014A8C();
  v62 = v15;
  sub_10002FF34();
  __chkstk_darwin(v16);
  v17 = a1[3];
  sub_100012980(a1, v17);
  sub_100038A98();
  v18 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_12;
  }

  v53 = v9;
  v54 = v13;
  v55 = v8;
  v56 = 0;
  v19 = v63;
  v64 = a1;
  v20 = KeyedDecodingContainer.allKeys.getter();
  result = sub_10004E288(v20, 0);
  v17 = v14;
  if (v23 == v24 >> 1)
  {
    goto LABEL_10;
  }

  if (v23 < (v24 >> 1))
  {
    v25 = v14;
    v26 = *(v22 + v23);
    v27 = sub_10004E284(v23 + 1);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    v32 = v60;
    v33 = v61;
    if (v29 == v31 >> 1)
    {
      v17 = v26;
      if (v26)
      {
        v57 = v27;
        v34 = v56;
        if (v26 == 1)
        {
          v66 = 1;
          sub_100038B40();
          v35 = v55;
          sub_100039058();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v58 + 8))(v35, v32);
            v36 = sub_100039078();
            v37(v36);
LABEL_21:
            sub_100012A18(v64);
            return v17;
          }
        }

        else
        {
          LODWORD(v60) = v26;
          v67 = 2;
          sub_100038AEC();
          v17 = v59;
          sub_100039058();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v33 + 8))(v17, v19);
            v51 = sub_100039078();
            v52(v51);
            v17 = v60;
            goto LABEL_21;
          }
        }

        v47 = sub_100039078();
        v48(v47);
      }

      else
      {
        v65 = 0;
        sub_100038B94();
        v43 = v54;
        sub_100039058();
        v44 = v56;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v44)
        {
          swift_unknownObjectRelease();
          (*(v57 + 8))(v43, v53);
          v49 = sub_100039068();
          v50(v49, v25);
          goto LABEL_21;
        }

        v45 = sub_100039068();
        v46(v45, v25);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = v25;
LABEL_10:
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    sub_100012634(qword_1000D2A78, &qword_1000959C0);
    *v40 = &type metadata for AccountType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = sub_100039068();
    v42(v41, v17);
LABEL_11:
    a1 = v64;
LABEL_12:
    sub_100012A18(a1);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000387B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100037D54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000387E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100037E70();
  *a1 = result;
  return result;
}

uint64_t sub_100038808(uint64_t a1)
{
  v2 = sub_100038A98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100038844(uint64_t a1)
{
  v2 = sub_100038A98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100038880(uint64_t a1)
{
  v2 = sub_100038B94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000388BC(uint64_t a1)
{
  v2 = sub_100038B94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000388F8(uint64_t a1)
{
  v2 = sub_100038B40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100038934(uint64_t a1)
{
  v2 = sub_100038B40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100038970(uint64_t a1)
{
  v2 = sub_100038AEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000389AC(uint64_t a1)
{
  v2 = sub_100038AEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000389E8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100038200(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100038A44()
{
  result = qword_1000D2D70;
  if (!qword_1000D2D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D70);
  }

  return result;
}

unint64_t sub_100038A98()
{
  result = qword_1000D2D98;
  if (!qword_1000D2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2D98);
  }

  return result;
}

unint64_t sub_100038AEC()
{
  result = qword_1000D2DA0;
  if (!qword_1000D2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2DA0);
  }

  return result;
}

unint64_t sub_100038B40()
{
  result = qword_1000D2DA8;
  if (!qword_1000D2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2DA8);
  }

  return result;
}

unint64_t sub_100038B94()
{
  result = qword_1000D2DB0;
  if (!qword_1000D2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2DB0);
  }

  return result;
}

_BYTE *sub_100038BF0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100038CBCLL);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100038D28()
{
  result = qword_1000D2DD8;
  if (!qword_1000D2DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2DD8);
  }

  return result;
}

unint64_t sub_100038D80()
{
  result = qword_1000D2DE0;
  if (!qword_1000D2DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2DE0);
  }

  return result;
}

unint64_t sub_100038DD8()
{
  result = qword_1000D2DE8;
  if (!qword_1000D2DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2DE8);
  }

  return result;
}

unint64_t sub_100038E30()
{
  result = qword_1000D2DF0;
  if (!qword_1000D2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2DF0);
  }

  return result;
}

unint64_t sub_100038E88()
{
  result = qword_1000D2DF8;
  if (!qword_1000D2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2DF8);
  }

  return result;
}

unint64_t sub_100038EE0()
{
  result = qword_1000D2E00;
  if (!qword_1000D2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2E00);
  }

  return result;
}

unint64_t sub_100038F38()
{
  result = qword_1000D2E08;
  if (!qword_1000D2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2E08);
  }

  return result;
}

unint64_t sub_100038F90()
{
  result = qword_1000D2E10;
  if (!qword_1000D2E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2E10);
  }

  return result;
}

unint64_t sub_100038FE8()
{
  result = qword_1000D2E18[0];
  if (!qword_1000D2E18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000D2E18);
  }

  return result;
}

uint64_t sub_100039088(uint64_t a1)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100039104()
{
  swift_unknownObjectWeakDestroy();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100039134()
{
  sub_100039104();

  return _swift_defaultActor_deallocate(v0);
}

void sub_1000391A0(uint64_t a1)
{
  type metadata accessor for ProductRequest(319);
  if (v1 <= 0x3F)
  {
    sub_100039CCC(319, &unk_1000D2F90, &type metadata accessor for AsyncThrowingStream);
    if (v2 <= 0x3F)
    {
      sub_100039CCC(319, &qword_1000D2FA0, &type metadata accessor for AsyncThrowingStream.Continuation);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1000392DC(uint64_t a1, uint64_t a2)
{
  sub_100039D48(a2);
  v4 = sub_100012634(&qword_1000D2FB0, &qword_100096940);
  sub_100019360();
  (*(v5 + 16))(a2, a1, v4);

  return sub_10001267C(a2, 0, 1, v4);
}

uint64_t sub_100039374(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100012634(&qword_1000D2FB8, &qword_100096948);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v58 - v8;
  v10 = type metadata accessor for SKLogger(0);
  sub_100019360();
  __chkstk_darwin(v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60(&qword_1000D1AE8);
    }

    sub_1000128C0(v10, qword_1000E4560);
    v14 = &v3[qword_1000E4528];
    v15 = &v14[*(type metadata accessor for ProductRequest(0) + 36)];
    v16 = *v15;
    v17 = v15[1];
    v18 = static os_log_type_t.debug.getter();

    v19 = Logger.logObject.getter();

    if (os_log_type_enabled(v19, v18))
    {
      v20 = sub_100039EE0();
      v21 = sub_100039EC8();
      v70 = v21;
      *v20 = 136446466;
      sub_100039E80();
      v22._countAndFlagsBits = v16;
      v22._object = v17;
      String.append(_:)(v22);
      v23._countAndFlagsBits = 8285;
      v23._object = 0xE200000000000000;
      String.append(_:)(v23);
      v24 = sub_100039EAC();

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_1000847A8(0xD00000000000001CLL, 0x800000010009FBD0, &v70);
      _os_log_impl(&_mh_execute_header, v19, v18, "%{public}s%{public}s", v20, 0x16u);
      swift_arrayDestroy();
      sub_100039E94(v21);
      sub_100039E94(v20);
    }

    v67 = 0;
    sub_100012634(&qword_1000D2FB0, &qword_100096940);
    return AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  else
  {
    v60 = v9;
    v61 = v7;
    v62 = v6;
    sub_100019008(a1, a2);
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60(&qword_1000D1AE8);
    }

    v26 = sub_1000128C0(v10, qword_1000E4560);
    v27 = &v3[qword_1000E4528];
    v28 = &v27[*(type metadata accessor for ProductRequest(0) + 36)];
    v29 = *v28;
    v30 = v28[1];
    v31 = static os_log_type_t.debug.getter();

    v63 = v26;
    v32 = Logger.logObject.getter();

    v33 = os_log_type_enabled(v32, v31);
    v65 = a2;
    v66 = a1;
    v64 = v30;
    if (v33)
    {
      v59 = "Finished receiving responses";
      v34 = sub_100039EE0();
      v35 = sub_100039EC8();
      v70 = v35;
      *v34 = 136446466;
      sub_100039E80();
      v36._countAndFlagsBits = v29;
      v36._object = v30;
      String.append(_:)(v36);
      v37._countAndFlagsBits = 8285;
      v37._object = 0xE200000000000000;
      String.append(_:)(v37);
      v38 = v3;
      v39 = sub_100039EAC();

      *(v34 + 4) = v39;
      v3 = v38;
      *(v34 + 12) = 2082;
      *(v34 + 14) = sub_1000847A8(0xD000000000000019, v59 | 0x8000000000000000, &v70);
      _os_log_impl(&_mh_execute_header, v32, v31, "%{public}s%{public}s", v34, 0x16u);
      swift_arrayDestroy();
      v40 = v35;
      a2 = v65;
      sub_100039E94(v40);
      sub_100039E94(v34);
    }

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100039DB0();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v41 = v68;
    v59 = v67;
    v42 = v69;
    sub_100012C50(v63, v13);

    v43 = v3;
    v44 = Logger.logObject.getter();
    type metadata accessor for Logger();
    sub_100019360();
    (*(v45 + 8))(v13);
    v46 = static os_log_type_t.default.getter();
    v63 = v42;

    v47 = os_log_type_enabled(v44, v46);
    v48 = v64;
    if (v47)
    {
      v49 = sub_100039EE0();
      v50 = sub_100039EC8();
      v51 = v29;
      v52 = v50;
      v67 = v50;
      *v49 = 136446467;
      *(v49 + 4) = sub_1000847A8(v51, v48, &v67);
      *(v49 + 12) = 2081;
      if (v41)
      {
        v53 = v59;
      }

      else
      {
        v53 = 0xD000000000000011;
      }

      if (v41)
      {
        v54 = v41;
      }

      else
      {
        v54 = 0x800000010009FC30;
      }

      v55 = sub_1000847A8(v53, v54, &v67);

      *(v49 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v44, v46, "[%{public}s] Decoded product response (%{private}s)", v49, 0x16u);
      swift_arrayDestroy();
      sub_100039E94(v52);
      v56 = v49;
      a2 = v65;
      sub_100039E94(v56);
    }

    v67 = v59;
    v68 = v41;
    v69 = v63;
    sub_100012634(&qword_1000D2FB0, &qword_100096940);
    v57 = v60;
    AsyncThrowingStream.Continuation.yield(_:)();

    sub_100019064(v66, a2);
    return (*(v61 + 8))(v57, v62);
  }
}

void sub_100039B1C(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (a3)
  {
    v4 = a1;
    v5 = v3;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v8 = a1;
    v7 = 0xF000000000000000;
  }

  sub_100039374(v3, v7);
  sub_100019064(v3, v7);
}

uint64_t sub_100039BF0(uint64_t a1)
{
  sub_100039E04(a1 + qword_1000E4528);
  v2 = qword_1000D2EA0;
  sub_100012634(&qword_1000D2FC8, &unk_100096950);
  sub_100019360();
  (*(v3 + 8))(a1 + v2);
  v4 = qword_1000D2EA8;
  sub_100012634(&qword_1000D2FB0, &qword_100096940);
  sub_100019360();
  v6 = *(v5 + 8);

  return v6(a1 + v4);
}

void sub_100039CCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_10001CEC4(&qword_1000D1C80, &qword_1000935C0);
    v7 = a3(a1, &type metadata for ProductResponse, v6, &protocol self-conformance witness table for Error);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100039D48(uint64_t a1)
{
  v2 = sub_100012634(&qword_1000D2FA8, &qword_100096938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100039DB0()
{
  result = qword_1000D2FC0;
  if (!qword_1000D2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D2FC0);
  }

  return result;
}

uint64_t sub_100039E04(uint64_t a1)
{
  v2 = type metadata accessor for ProductRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100039E60(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100039E94(uint64_t a1)
{
}

unint64_t sub_100039EAC()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  return sub_1000847A8(v2, v3, (v0 - 88));
}

uint64_t sub_100039EC8()
{

  return swift_slowAlloc();
}

uint64_t sub_100039EE0()
{

  return swift_slowAlloc();
}

uint64_t sub_100039EF8()
{
  v5 = 0;
  URL.path(percentEncoded:)(0);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v5];

  if (v5)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return v3 | v2;
}

uint64_t sub_100039FAC()
{
  sub_100012634(&qword_1000D3160, &qword_100096A58);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:));
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

void sub_10003A098(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_100012AD4(a1, v9);
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_10004AE5C();
    sub_100048CD8(v9, a2, v4, v5, v6, v7, type metadata accessor for AMSBagKey);

    *v2 = v8;
  }

  else
  {
    sub_100049EA0(a1, &qword_1000D1D60, &qword_100093620);
    sub_1000485F0(v9);

    sub_100049EA0(v9, &qword_1000D1D60, &qword_100093620);
  }
}

uint64_t sub_10003A180(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100012634(&qword_1000D3170, &qword_100096A80);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_100012634(&qword_1000D3168, &unk_100096A60);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  if (sub_100012898(a1, 1, v9) == 1)
  {
    sub_100049EA0(a1, &qword_1000D3170, &qword_100096A80);
    sub_10004870C(v8);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_100049EA0(v8, &qword_1000D3170, &qword_100096A80);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_100048E24(v12, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    v16 = type metadata accessor for UUID();
    return (*(*(v16 - 8) + 8))(a2, v16);
  }
}

uint64_t sub_10003A3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100012634(&qword_1000D31B8, &qword_100096AE0);
  sub_10002FD0C(v8);
  sub_10002FF34();
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  type metadata accessor for RemoteAlertConfiguration(0);
  sub_100019360();
  __chkstk_darwin(v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100012898(a1, 1, v15) == 1)
  {
    sub_100049EA0(a1, &qword_1000D31B8, &qword_100096AE0);
    sub_1000488D4(a2, a3, v11);

    return sub_100049EA0(v11, &qword_1000D31B8, &qword_100096AE0);
  }

  else
  {
    sub_1000497D8(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    sub_100049148(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v19;
  }

  return result;
}

id sub_10003A524()
{
  String._bridgeToObjectiveC()();
  sub_10004AE2C();
  v1 = [swift_getObjCClassFromMetadata() contextWithBundleID:v0];

  return v1;
}

uint64_t sub_10003A580(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t))
{

  v5 = swift_task_localValuePush();
  a3(&v7, v5);
  if (v3)
  {
    return swift_task_localValuePop();
  }

  swift_task_localValuePop();
  return v7;
}

uint64_t sub_10003A608(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  sub_10002FD0C(v4);
  sub_10002FF34();
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_10004B2A8(v8);
  sub_10004AE44();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  sub_10004AE44();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_100096B48;
  v10[5] = v9;
  v11 = sub_10004B26C();
  sub_100048074(v11, v12, v7, v13, v14);
}

uint64_t sub_10003A6F4(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10003A720@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003A6F4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10003A754()
{
  sub_100013A88();
  v0 = swift_task_alloc();
  v1 = sub_10001D6A0(v0);
  *v1 = v2;
  sub_10004ABB0(v1);

  return sub_10004223C();
}

uint64_t sub_10003A7DC()
{
  sub_100013A88();
  v2 = v1;
  sub_10001937C();
  v4 = v3;
  sub_100019350();
  *v5 = v4;
  v6 = *v0;
  sub_100019340();
  *v7 = v6;

  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v6;
  sub_10004ABB0(v8);

  return sub_10003AE00(v2);
}

uint64_t sub_10003A8F0()
{
  sub_100013A88();
  v2 = v1;
  sub_10001937C();
  v3 = *v0;
  sub_100019340();
  *v4 = v3;

  sub_10004AC54();

  return v5(v2);
}

uint64_t sub_10003AA5C(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  a1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10003AB0C;

  return sub_10003A754();
}

uint64_t sub_10003AB0C()
{
  sub_10001D674();
  v2 = v1;
  sub_10001937C();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_100019340();
  *v7 = v6;

  v8 = sub_10002FD24();
  v9(v8);
  _Block_release(v4);

  sub_100019370();

  return v10();
}

uint64_t sub_10003AC54()
{
  v2 = v0[3];
  v3 = v2 - 1;
  if ((v2 - 1) >= 3)
  {
    v0[2] = v2;

    return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)(&type metadata for objc_AccountManager.objc_AccountType, v0 + 2, &type metadata for objc_AccountManager.objc_AccountType, &type metadata for Int);
  }

  else
  {
    sub_100013A88();
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    sub_10004ABB0(v4);

    return sub_10003AE00(v3);
  }
}

uint64_t sub_10003AD18()
{
  sub_100013A88();
  v2 = v1;
  sub_10001937C();
  v3 = *v0;
  sub_100019340();
  *v4 = v3;

  sub_10004AC54();

  return v5(v2);
}

uint64_t sub_10003AE14()
{
  sub_10004B2E8();
  sub_10001D70C();
  v1 = v0 + 464;
  v2 = *(v0 + 600);
  v3 = [objc_allocWithZone(ACAccountStore) init];
  *(v0 + 472) = v3;
  if (v2 == 2)
  {
    v4 = ACAccountTypeIdentifierIDMS;
    *(v0 + 480) = ACAccountTypeIdentifierIDMS;
    *(v0 + 144) = v0;
    *(v0 + 184) = v1;
    *(v0 + 152) = sub_10003B01C;
    v5 = swift_continuation_init();
    v6 = sub_100012634(&qword_1000D3188, &unk_100096AB8);
    *(v0 + 488) = v6;
    sub_10004AC84(v6);
    sub_10004AC6C(COERCE_DOUBLE(1107296256));
    *(v0 + 416) = v7;
    *(v0 + 424) = &unk_1000C02B0;
    *(v0 + 432) = v5;
    [v3 accountTypeWithIdentifier:v4 completion:v0 + 400];
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
    *(v0 + 568) = v8;

    *(v0 + 16) = v0;
    *(v0 + 56) = v1;
    *(v0 + 24) = sub_10003BB04;
    v9 = swift_continuation_init();
    v10 = sub_100012634(&qword_1000D3188, &unk_100096AB8);
    sub_10004AC84(v10);
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_100042724;
    *(v0 + 424) = &unk_1000C0260;
    *(v0 + 432) = v9;
    [v3 accountTypeWithIdentifier:v8 completion:v0 + 400];
  }

  sub_10004B2FC();

  return _swift_continuation_await(v11);
}

uint64_t sub_10003B01C()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 496) = *(v3 + 176);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10003B118()
{
  sub_10004B1C0();
  sub_10001D70C();
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  *(v0 + 504) = v2;

  if (v2)
  {
    v3 = *(v0 + 472);
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 464;
    *(v0 + 216) = sub_10003B25C;
    v4 = swift_continuation_init();
    v5 = sub_100012634(&qword_1000D3190, &qword_100096AC8);
    *(v0 + 512) = v5;
    sub_10004ACA4(v5);
    sub_10004A864(COERCE_DOUBLE(1107296256));
    *(v0 + 416) = v6;
    *(v0 + 424) = &unk_1000C02D8;
    *(v0 + 432) = v4;
    [v3 accountsWithAccountType:v2 completion:v0 + 400];
    sub_10004B148();

    return _swift_continuation_await(v7);
  }

  else
  {

    sub_10004A8FC();
    sub_10004B148();

    return v11(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_10003B25C()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 520) = *(v3 + 240);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10003B358()
{
  sub_10004AE50();
  v1 = v0[58];
  v2 = v0[63];
  if (v1)
  {

    v3 = sub_100082B18(v1);
    v4 = v3;
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {
        v2 = v0[63];
        v7 = v0[59];

        goto LABEL_13;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v3 = *(v1 + 8 * i + 32);
      }

      v6 = v3;
      v0[66] = v3;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return _swift_continuation_await(v3);
      }

      if ([v3 isActive])
      {
        break;
      }
    }

    v11 = v0[61];
    v12 = v0[59];

    v13 = ACAccountTypeIdentifieriTunesStoreSandbox;
    v0[67] = ACAccountTypeIdentifieriTunesStoreSandbox;
    v0[34] = v0;
    v0[39] = v0 + 58;
    v0[35] = sub_10003B558;
    swift_continuation_init();
    v0[57] = v11;
    sub_10004ACEC();
    sub_10004AC6C(COERCE_DOUBLE(1107296256));
    v0[52] = v14;
    v0[53] = &unk_1000C0300;
    v0[54] = v15;
    [v12 accountTypeWithIdentifier:v13 completion:v0 + 50];
    v3 = v0 + 34;

    return _swift_continuation_await(v3);
  }

  else
  {

LABEL_13:
    v8 = sub_10004A8FC();

    return v9(v8);
  }
}

uint64_t sub_10003B558()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 544) = *(v3 + 304);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10003B654()
{
  sub_10004B1C0();
  sub_10001D70C();
  v1 = *(v0 + 536);
  v2 = *(v0 + 464);
  *(v0 + 552) = v2;

  v3 = *(v0 + 472);
  if (v2)
  {
    v4 = *(v0 + 512);
    *(v0 + 336) = v0;
    *(v0 + 376) = v0 + 464;
    *(v0 + 344) = sub_10003B794;
    swift_continuation_init();
    *(v0 + 456) = v4;
    sub_10004ACEC();
    sub_10004A864(COERCE_DOUBLE(1107296256));
    *(v0 + 416) = v5;
    *(v0 + 424) = &unk_1000C0328;
    *(v0 + 432) = v6;
    [v3 accountsWithAccountType:v2 options:1 completion:v0 + 400];
    sub_10004B148();

    return _swift_continuation_await(v7);
  }

  else
  {
    v9 = *(v0 + 504);

    sub_10004A8FC();
    sub_10004B148();

    return v12(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t sub_10003B794()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 560) = *(v3 + 368);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

void sub_10003B890()
{
  v1 = v0;
  v2 = *(v0 + 464);
  v3 = *(v0 + 552);
  if (v2)
  {

    v4 = sub_100082B18(v2);
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {
        v19 = *(v1 + 552);
        v20 = *(v1 + 528);
        v21 = *(v1 + 504);

        goto LABEL_22;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v6 = *(v2 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      v8 = v1;
      v9 = *(v1 + 528);
      v10 = sub_10002EF78(v6, &selRef_username);
      v12 = v11;
      v13 = sub_10002EF78(v9, &selRef_username);
      if (!v12)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_17;
      }

      if (v10 == v13 && v12 == v14)
      {
        v1 = v8;
        v22 = *(v8 + 504);
        v23 = *(v8 + 472);

LABEL_25:

        v24 = *(v1 + 552);

        goto LABEL_27;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        v1 = v8;
        v22 = *(v8 + 504);
        v23 = *(v8 + 472);
        goto LABEL_25;
      }

LABEL_18:
      v1 = v8;
    }

    if (!v14)
    {
      v1 = v8;
      v25 = *(v8 + 552);
      v26 = *(v8 + 528);
      v27 = *(v8 + 504);

      goto LABEL_27;
    }

LABEL_17:

    goto LABEL_18;
  }

  v17 = *(v0 + 504);
  v18 = *(v0 + 472);

LABEL_22:
  v7 = 0;
LABEL_27:
  v28 = *(v1 + 8);

  v28(v7);
}

uint64_t sub_10003BB04()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 576) = *(v3 + 48);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10003BC00()
{
  sub_10004B1C0();
  sub_10001D70C();
  v1 = *(v0 + 568);
  v2 = *(v0 + 464);
  *(v0 + 584) = v2;

  if (v2)
  {
    v3 = *(v0 + 472);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 464;
    *(v0 + 88) = sub_10003BD40;
    v4 = swift_continuation_init();
    v5 = sub_100012634(&qword_1000D3190, &qword_100096AC8);
    sub_10004ACA4(v5);
    sub_10004A864(COERCE_DOUBLE(1107296256));
    *(v0 + 416) = v6;
    *(v0 + 424) = &unk_1000C0288;
    *(v0 + 432) = v4;
    [v3 accountsWithAccountType:v2 completion:v0 + 400];
    sub_10004B148();

    return _swift_continuation_await(v7);
  }

  else
  {

    sub_10004A8FC();
    sub_10004B148();

    return v11(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_10003BD40()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 592) = *(v3 + 112);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

void sub_10003BE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004B290();
  sub_10004AE50();
  v11 = *(v10 + 464);

  if (v11)
  {
    v12 = sub_100082B18(v11);
    for (i = 0; ; ++i)
    {
      if (v12 == i)
      {
LABEL_12:
        v17 = *(v10 + 584);

        goto LABEL_13;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v14 = *(v11 + 8 * i + 32);
      }

      v15 = v14;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ([v14 isActive])
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    v16 = *(v10 + 584);

LABEL_13:
    sub_10004AC54();
    sub_10004B1A8();

    v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }
}

uint64_t sub_10003CBE8(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10003CC88;

  return sub_10003AC40(a1);
}

uint64_t sub_10003CC88()
{
  sub_100013A88();
  v2 = v1;
  sub_10001937C();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_100019340();
  *v6 = v5;

  v7 = sub_10002FD24();
  v8(v7);
  _Block_release(v4);

  sub_100019370();

  return v9();
}

uint64_t sub_10003CD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return sub_100019330();
}

uint64_t sub_10003CDB8()
{
  sub_10004AE50();
  if (qword_1000D1AC8 != -1)
  {
    sub_10004A728(&qword_1000D1AC8);
  }

  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  sub_10004B028(v0[10]);
  v5 = swift_task_alloc();
  v0[11] = v5;
  v5[2] = v4;
  v5[3] = v1;
  v5[4] = v3;
  v5[5] = v2;
  v6 = swift_task_alloc();
  v0[12] = v6;
  sub_100012634(&qword_1000D31F0, &qword_100096C20);
  *v6 = v0;
  v6[1] = sub_10003CEF4;
  sub_10004AA00();
  sub_10004B1A8();

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v7);
}

uint64_t sub_10003CEF4()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v3 = v2;
  v4 = *v1;
  sub_100019340();
  *v5 = v4;
  *(v6 + 104) = v0;

  sub_1000193B4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10003D054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_10003D07C, 0, 0);
}

uint64_t sub_10003D07C()
{
  sub_100013A88();
  if (sub_10002D1FC())
  {
    v1 = swift_task_alloc();
    v0[7] = v1;
    *v1 = v0;
    v1[1] = sub_10003D1A4;

    return sub_10003D400();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_10003D2C8;
    v4 = sub_10004B228(v0[3]);

    return sub_10003E1DC(v4, 2, v5, v6, v7);
  }
}

uint64_t sub_10003D1A4()
{
  sub_100013A88();
  sub_10001937C();
  v2 = *v1;
  sub_100019340();
  *v3 = v2;

  if (v0)
  {
    sub_100019370();

    return v4();
  }

  else
  {
    sub_1000193B4();

    return _swift_task_switch(v6, v7, v8);
  }
}

uint64_t sub_10003D2C8()
{
  sub_10001D674();
  v3 = v2;
  sub_10001937C();
  v5 = v4;
  sub_100019350();
  *v6 = v5;
  v7 = *v1;
  sub_100019340();
  *v8 = v7;

  if (v0)
  {
    sub_10001D6BC();

    return v9();
  }

  else
  {
    *(v5 + 72) = v3;
    sub_1000193B4();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_10003D400()
{
  sub_100013A88();
  v0[20] = v1;
  v0[21] = v2;
  v0[19] = v3;
  v4 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  sub_10002FD0C(v4);
  v0[22] = swift_task_alloc();
  v5 = sub_10004AD24();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10003D490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_10004ABC8();
  a23 = v27;
  a24 = v28;
  sub_10004AC60();
  a22 = v25;
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60(&qword_1000D1AE8);
  }

  v29 = type metadata accessor for SKLogger(0);
  v25[23] = sub_10004ADA8(v29, qword_1000E4560);
  if (qword_1000D1AC8 != -1)
  {
    sub_10004A728(&qword_1000D1AC8);
  }

  v25[24] = qword_1000E4520;
  TaskLocal.get()();
  v31 = v25[2];
  v30 = v25[3];
  v32 = static os_log_type_t.default.getter();

  v33 = Logger.logObject.getter();

  if (os_log_type_enabled(v33, v32))
  {
    a10 = "ith active account for ";
    sub_100039EE0();
    sub_10004AB40();
    sub_10004A7FC(4.8752e-34);
    a11 = v34;
    a12 = v35;
    a13 = v36;
    v37._countAndFlagsBits = v31;
    v37._object = v30;
    String.append(_:)(v37);
    sub_10004ADC0();
    sub_1000847A8(a12, a13, &a11);
    sub_10004AEC0();
    sub_10004A7EC();
    *(v26 + 14) = sub_1000847A8(0xD00000000000002ELL, 0x80000001000A0680, &a11);
    _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s%{public}s", v26, 0x16u);
    sub_10004AA90();
    sub_10004A98C();
    sub_10004AA4C();
  }

  sub_100012BAC(0, &qword_1000D1D30, off_1000BD048);

  v38 = sub_10003A524();
  v25[25] = v38;
  v39 = [objc_opt_self() sharedInstance];
  v40 = [v39 getBoolValueForIdentifier:2 withContext:v38];

  if (v40)
  {
    TaskLocal.get()();
    v42 = v25[16];
    v41 = v25[17];
    static os_log_type_t.default.getter();
    sub_10004B0BC();
    Logger.logObject.getter();
    sub_10004AE2C();
    if (sub_10004B0A4())
    {
      v43 = sub_100039EE0();
      sub_100039EC8();
      *v43 = 136446466;
      sub_10004A980();
      a11 = v44;
      a12 = v45;
      a13 = v46;
      v47._countAndFlagsBits = v42;
      v47._object = v41;
      String.append(_:)(v47);
      sub_10004ADC0();
      v48 = sub_1000847A8(a12, a13, &a11);

      *(v43 + 4) = v48;
      sub_10004B08C();
      *(v43 + 14) = sub_1000847A8(0xD000000000000051, 0x80000001000A0810, &a11);
      sub_10004AD34();
      sub_10004B1EC(v49, v50, v51, v52);
      sub_100037BEC();
      sub_10004AA4C();
      sub_10004AA1C();
    }

    sub_10004AD98();
    sub_10004AAC8();

    return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v63 = v25[21];
    v62 = v25[22];
    sub_100012BAC(0, &qword_1000D31F8, AMSDialogAction_ptr);
    v64 = sub_1000437AC(0x6C65636E6143, 0xE600000000000000, 2);
    v25[26] = v64;
    v65 = sub_100043828(19279, 0xE200000000000000, 19279, 0xE200000000000000);
    v25[27] = v65;
    v66 = objc_allocWithZone(AMSDialogRequest);
    v67 = sub_100047DB0(0xD00000000000001ALL, 0x80000001000A06B0, 0xD000000000000052, 0x80000001000A06D0);
    v25[28] = v67;
    [v67 setDefaultAction:v65];
    sub_100012634(&qword_1000D3200, &qword_100096C30);
    sub_10004AE44();
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_100096960;
    *(v68 + 32) = v64;
    *(v68 + 40) = v65;
    v69 = v64;
    v70 = v65;
    sub_1000496A0(v68, v67);
    TaskLocal.get()();
    sub_100012318(v25[4], v25[5], v67, &selRef_setLogKey_);
    v71 = type metadata accessor for TaskPriority();
    sub_10004B2A8(v71);
    sub_10004AE44();
    v72 = swift_allocObject();
    v72[2] = 0;
    v72[3] = 0;
    v72[4] = v63;
    v72[5] = v67;
    swift_unknownObjectRetain();
    v73 = v67;
    v74 = sub_10004B26C();
    v25[29] = sub_10000D988(v74, v75, v62, v76, v72);
    v77 = swift_task_alloc();
    v25[30] = v77;
    v25[31] = sub_100012634(&qword_1000D1C80, &qword_1000935C0);
    *v77 = v25;
    v77[1] = sub_10003D9F8;
    sub_10004AAC8();

    return Task.value.getter(v78);
  }
}

uint64_t sub_10003D9F8()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v3 = v2;
  v4 = *v1;
  sub_100019340();
  *v5 = v4;
  *(v6 + 256) = v0;

  sub_1000193B4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10003DAF0()
{
  v84 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v3 = v2 == 19279 && v1 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    TaskLocal.get()();
    v5 = v0[14];
    v4 = v0[15];
    v6 = static os_log_type_t.default.getter();

    v7 = Logger.logObject.getter();

    v8 = os_log_type_enabled(v7, v6);
    v9 = v0[28];
    v11 = v0[26];
    v10 = v0[27];
    v12 = v0[25];
    if (v8)
    {
      v78 = v0[26];
      v13 = sub_100039EE0();
      sub_100039EC8();
      *v13 = 136446466;
      sub_10004A980();
      v81 = v14;
      v82 = v15;
      v83 = v16;
      v17._countAndFlagsBits = v5;
      v17._object = v4;
      String.append(_:)(v17);
      sub_10004ADC0();
      v26 = sub_10004B15C(v18, v19, v20, v21, v22, v23, v24, v25, v70, "ted with action id: ", v10, v9, v78, v81, v82, v83);

      *(v13 + 4) = v26;
      sub_10004B08C();
      *(v13 + 14) = sub_1000847A8(0xD000000000000036, v72 | 0x8000000000000000, &v81);
      sub_10004B1EC(&_mh_execute_header, v7, v6, "%{public}s%{public}s");
      sub_100037BEC();
      sub_10004AA4C();
      sub_10004AA1C();
    }

    else
    {
    }

    sub_10004AD98();
  }

  else
  {
    v28 = v0[23];
    v82 = 0;
    v83 = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    v29._countAndFlagsBits = 0xD000000000000044;
    v29._object = 0x80000001000A0780;
    String.append(_:)(v29);
    v30._countAndFlagsBits = v2;
    v30._object = v1;
    String.append(_:)(v30);

    TaskLocal.get()();
    static os_log_type_t.default.getter();
    sub_10004B0BC();

    Logger.logObject.getter();
    sub_10004AE2C();

    if (sub_10004B0A4())
    {
      sub_100039EE0();
      sub_10004AB40();
      sub_10004A7FC(4.8752e-34);
      v81 = v31;
      v82 = v32;
      v83 = v33;
      sub_10004AED8();
      sub_10004ADC0();
      sub_10004B15C(v34, v35, v36, v37, v38, v39, v40, v41, v70, v71, v73, v75, v77, v81, v82, v83);
      sub_10004AEC0();
      sub_10004A7EC();
      sub_1000847A8(0, 0xE000000000000000, &v81);
      sub_10004AF78();
      MEMORY[0xD000000000000044] = &v82;
      sub_10004AAE4(&_mh_execute_header, v42, v43, "%{public}s%{public}s");
      sub_10004AA90();
      sub_10004A98C();
      sub_100039E94(0xD000000000000036);
    }

    else
    {
    }

    v44 = sub_100018F34();
    v45 = sub_10004B1D4(&type metadata for StoreKitInternalError, v44);
    sub_10004B204(v46, 11);
    v47 = v0[23];
    v82 = 0;
    v83 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v48 = v83;
    v0[8] = v82;
    v0[9] = v48;
    v49._countAndFlagsBits = 0xD000000000000041;
    v49._object = 0x80000001000A0730;
    String.append(_:)(v49);
    v0[18] = v45;
    _print_unlocked<A, B>(_:_:)();
    v51 = v0[8];
    v50 = v0[9];
    TaskLocal.get()();
    v53 = v0[10];
    v52 = v0[11];
    v54 = static os_log_type_t.error.getter();

    Logger.logObject.getter();
    sub_10004B038();

    if (os_log_type_enabled(v47, v54))
    {
      sub_100039EE0();
      sub_10004AB78();
      sub_10004A8B4(4.8752e-34);
      v81 = v55;
      v82 = v56;
      v83 = v57;
      v58._countAndFlagsBits = v53;
      v58._object = v52;
      String.append(_:)(v58);
      sub_10004ADC0();
      sub_10004B15C(v59, v60, v61, v62, v63, v64, v65, v66, v70, v71, v73, v75, v51, v81, v82, v83);
      sub_10004AEA8();
      *(v51 + 4) = v53;
      sub_10004AD40();
      sub_1000847A8(v80, v50, &v81);
      sub_10004B010();
      *(v51 + 14) = &v82;
      sub_10004AC38(&_mh_execute_header, v67, v54, "%{public}s%{public}s");
      sub_10004AC1C();
      sub_10004ABF0();
      sub_10004A98C();
    }

    else
    {
    }

    sub_10004B108(v68);

    sub_100019370();
  }

  return v27();
}

uint64_t sub_10003E1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return sub_100019330();
}

uint64_t sub_10003E434()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 120) = v3;

  v4 = sub_10004AD24();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10003E51C()
{
  sub_10004B1C0();
  sub_10001D70C();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_10003E5F0;
  sub_10004B148();

  return sub_100042860(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10003E5F0()
{
  sub_10001D674();
  v3 = v2;
  sub_10001937C();
  v5 = v4;
  sub_100019350();
  *v6 = v5;
  v7 = *v1;
  sub_100019340();
  *v8 = v7;
  v5[11] = v3;

  if (v0)
  {
    sub_10001D6BC();

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v5[12] = v11;
    *v11 = v7;
    v11[1] = sub_10003E74C;
    v12 = v5[8];

    return sub_10003F130(v3, v12);
  }
}

uint64_t sub_10003E74C()
{
  sub_10001D674();
  v3 = v2;
  sub_10001937C();
  v5 = v4;
  sub_100019350();
  *v6 = v5;
  v7 = *v1;
  sub_100019340();
  *v8 = v7;
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  sub_1000193B4();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10003E858()
{
  sub_10001D674();
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = [v1 account];

  sub_10004AC54();

  return v4(v3);
}

uint64_t sub_10003E8E4()
{
  sub_100013A88();

  sub_100019370();

  return v1();
}

uint64_t sub_10003E9F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v5[2] = a1;
  v5[3] = a3;
  v5[4] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[5] = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v5[6] = v12;
  v14 = a1;
  swift_unknownObjectRetain();
  v15 = swift_task_alloc();
  v5[7] = v15;
  *v15 = v5;
  v15[1] = sub_10003EB0C;

  return sub_10003CD9C(v14, v8, v10, a3, v11, v13);
}

uint64_t sub_10003EB0C()
{
  sub_10004AE50();
  sub_10001D658();
  v4 = *(v3 + 16);
  v5 = *v2;
  sub_100019340();
  *v6 = v5;

  swift_unknownObjectRelease();

  v7 = *(v3 + 32);
  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_1000216E0();

    v8 = sub_10001D614();
    v9(v8, 0, v1);

    _Block_release(v7);
  }

  else
  {
    v10 = sub_10001D614();
    v11(v10, v1, 0);
    _Block_release(v7);
  }

  sub_10001D6BC();

  return v12();
}

uint64_t sub_10003ECD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return sub_100019330();
}

uint64_t sub_10003ECEC()
{
  sub_10001D70C();
  if (qword_1000D1AC8 != -1)
  {
    sub_10004A728(&qword_1000D1AC8);
  }

  sub_10004B028(*(v0 + 64));
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  sub_100012BAC(0, &qword_1000D2368, AMSAuthenticateResult_ptr);
  *v2 = v0;
  v2[1] = sub_10003EE20;
  sub_10004AA00();
  sub_10004B148();

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v3);
}

uint64_t sub_10003EE20()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v3 = v2;
  v4 = *v1;
  sub_100019340();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_1000193B4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10003EF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10003EFF8;

  return sub_10003F130(a2, a3);
}

uint64_t sub_10003EFF8()
{
  sub_10001D674();
  v3 = v2;
  sub_10001937C();
  v5 = v4;
  sub_100019350();
  *v6 = v5;
  v7 = *v1;
  sub_100019340();
  *v8 = v7;

  if (v0)
  {
    sub_10001D6BC();

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    sub_1000193B4();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_10003F130(uint64_t a1, uint64_t a2)
{
  *(v2 + 424) = a1;
  *(v2 + 432) = a2;
  return sub_100019330();
}

uint64_t sub_10003F5E8()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 456) = v3;

  v4 = sub_10004AD24();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10003F974()
{
  sub_100013A88();
  sub_10001937C();
  v3 = v2;
  sub_100019350();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 496) = v5;
  *(v3 + 504) = v0;

  if (v0)
  {
  }

  sub_1000193B4();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10003FC74()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 528) = v3;

  v4 = sub_10004AD24();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10003FED0()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 552) = v3;

  v4 = sub_10004AD24();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100040468()
{
  sub_100013A88();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 576) = v4;
  if (v4)
  {
  }

  sub_1000193B4();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100040918()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 600) = *(v3 + 48);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100040A14()
{
  sub_100013A88();

  sub_10004AC54();

  return v1();
}

uint64_t sub_100040A74()
{
  sub_100013A88();
  v1 = *(v0 + 464);

  sub_100019370();

  return v2();
}

uint64_t sub_100040AD8()
{
  sub_10004B1C0();
  sub_10001D70C();
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[67];
  v4 = v0[55];
  swift_willThrow();

  sub_100019370();
  sub_10004B148();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100040E44(void *a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  v10 = a1;
  swift_unknownObjectRetain();
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_100040F34;

  return sub_10003ECD4(v10, a2, v7, v9);
}

uint64_t sub_100040F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004B290();
  sub_10004AE50();
  sub_10001D658();
  v14 = *(v13 + 16);
  v15 = *v12;
  sub_100019340();
  *v16 = v15;

  swift_unknownObjectRelease();

  v17 = *(v13 + 32);
  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_1000216E0();

    v18 = sub_10001D614();
    v19(v18, 0, v11);

    _Block_release(v17);
  }

  else
  {
    v20 = sub_10001D614();
    v21(v20, v11, 0);
    _Block_release(v17);
  }

  sub_10001D6BC();
  sub_10004B1A8();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_1000410D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return sub_100019330();
}

uint64_t sub_1000410E8()
{
  sub_10001D674();
  if (qword_1000D1AC8 != -1)
  {
    sub_10004A728(&qword_1000D1AC8);
  }

  v1 = v0[4];
  sub_10004B028(v0[6]);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_100041204;
  sub_10004AA00();

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v4);
}

uint64_t sub_100041204()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v3 = v2;
  v4 = *v1;
  sub_100019340();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_1000193B4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100041340(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10001D270;

  return sub_1000413D4();
}

uint64_t sub_1000413D4()
{
  sub_100013A88();
  v0[8] = v1;
  v2 = type metadata accessor for URL();
  v0[9] = v2;
  v0[10] = *(v2 - 8);
  v0[11] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  sub_10004ABB0(v3);

  return sub_10004223C();
}

uint64_t sub_1000414C0()
{
  sub_100013A88();
  v2 = v1;
  v3 = *v0;
  sub_100019350();
  *v4 = v3;
  v5 = *v0;
  sub_100019340();
  *v6 = v5;

  if (v2 == 2)
  {
    v7 = swift_task_alloc();
    *(v3 + 104) = v7;
    *v7 = v5;
    sub_10004ABB0(v7);

    return sub_10003AE00(2);
  }

  else
  {

    sub_10004AD98();

    return v9();
  }
}

uint64_t sub_100041614()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 112) = v3;

  v4 = sub_10004AD24();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000419E4()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 144) = v3;

  v4 = sub_10004AD24();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100041D00()
{
  sub_10001D674();
  v3 = v2;
  sub_10001937C();
  v5 = v4;
  sub_100019350();
  *v6 = v5;
  v7 = *v1;
  sub_100019340();
  *v8 = v7;
  *(v5 + 168) = v0;

  if (!v0)
  {
    v9 = *(v5 + 152);
  }

  sub_1000193B4();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100041E10()
{
  sub_100013A88();

  sub_10004AD98();

  return v1();
}

uint64_t sub_100041E70()
{
  sub_100013A88();
  v1 = *(v0 + 152);

  sub_100019370();

  return v2();
}

id sub_100041F70()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_100041FA8(void *a1, uint64_t a2, void *aBlock)
{
  v3[2] = a1;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = a1;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_100042080;

  return sub_1000410D0(v8, v5, v7);
}

uint64_t sub_100042080()
{
  sub_10004B2E8();
  sub_10001D70C();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100019340();
  *v5 = v4;
  v6 = *(v3 + 16);
  *v5 = *v1;

  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = sub_10001D614();
    v9(v8, v7);
  }

  else
  {
    v10 = sub_10001D614();
    v11(v10, 0);
  }

  _Block_release(*(v4 + 24));
  sub_10001D6BC();
  sub_10004B2FC();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_10004223C()
{
  sub_100013A88();
  *(v0 + 16) = v1;
  v2 = type metadata accessor for Client.Server(0);
  sub_10002FD0C(v2);
  *(v0 + 24) = swift_task_alloc();
  v3 = sub_10004AD24();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100042414()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = sub_10004AD24();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000424FC()
{
  sub_100013A88();
  v1 = *(v0 + 40);
  if (v1)
  {

    sub_10004AC54();

    return v2(2);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 48) = v4;
    *v4 = v0;
    sub_10004ABB0(v4);

    return sub_10003AE00(1);
  }
}

uint64_t sub_1000425C8()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 56) = v3;

  v4 = sub_10004AD24();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000426B0()
{
  sub_100013A88();
  v1 = *(v0 + 56);
  if (v1)
  {

    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  sub_10004AC54();

  return v3(v2);
}

uint64_t sub_100042724(uint64_t a1, void *a2, void *a3)
{
  sub_100012980((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_100013908();
  }

  else
  {
    v7 = a2;

    return sub_1000138FC();
  }
}

uint64_t sub_1000427AC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100012980((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_100013908();
  }

  else
  {
    if (a2)
    {
      sub_100012BAC(0, &qword_1000D3198, ACAccount_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    return sub_1000138FC();
  }
}

uint64_t sub_100042860(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 176) = a6;
  *(v7 + 184) = a7;
  *(v7 + 160) = a4;
  *(v7 + 168) = a5;
  *(v7 + 144) = a2;
  *(v7 + 152) = a3;
  *(v7 + 251) = a1;
  return _swift_task_switch(sub_10004288C, 0, 0);
}

uint64_t sub_10004288C()
{
  sub_10004B290();
  sub_10004AE50();
  v1 = *(v0 + 251);
  v2 = [objc_opt_self() currentProcess];
  *(v0 + 192) = v2;
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 152);
  v6 = **(&off_1000C05C8 + v1);
  [v2 setAccountMediaType:v6];

  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  [v2 setBundleURL:v8];

  sub_100049724(v5, v4, v2);
  v10 = [objc_allocWithZone(AMSAuthenticateOptions) init];
  *(v0 + 200) = v10;
  [v10 setClientInfo:v2];
  v11 = sub_10004B098();
  [v11 v12];
  if (v3)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v10 setDebugReason:v13];

  if (qword_1000D1AC8 != -1)
  {
    sub_10004A728(&qword_1000D1AC8);
  }

  v14 = *(v0 + 251);
  *(v0 + 208) = qword_1000E4520;
  TaskLocal.get()();
  v15 = *(v0 + 24);
  v16 = String._bridgeToObjectiveC()();

  v17 = sub_10004B098();
  [v17 v18];

  if (v14 == 2)
  {
    [v10 setCanMakeAccountActive:0];
  }

  sub_10002EF78(v2, &selRef_proxyAppBundleID);
  if (v19)
  {
    String._bridgeToObjectiveC()();
    sub_1000216E0();
  }

  else
  {
    v15 = 0;
  }

  [v10 setProxyAppBundleID:v15];

  v20 = swift_task_alloc();
  *(v0 + 216) = v20;
  *v20 = v0;
  v20[1] = sub_100042AF0;
  sub_10004B1A8();

  return sub_10003AE00(v21);
}

uint64_t sub_100042AF0()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = v3;

  v4 = sub_10004AD24();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000430EC()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = v3;

  v4 = sub_10004AD24();

  return _swift_task_switch(v4, v5, v6);
}

id sub_100043750(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccount:a1 options:a2];

  return v4;
}

id sub_1000437AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() actionWithTitle:v4 style:a3];

  return v5;
}

id sub_100043828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v5 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = String._bridgeToObjectiveC()();

LABEL_6:
  v7 = [swift_getObjCClassFromMetadata() actionWithTitle:v5 identifier:v6];

  return v7;
}

uint64_t sub_1000438D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[19] = a1;
  return _swift_task_switch(sub_1000438F8, 0, 0);
}

uint64_t sub_1000438F8()
{
  sub_10004B1C0();
  sub_10001D70C();
  sub_10004B21C();
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v3;
  v0[7] = v0 + 18;
  v0[3] = sub_100043A10;
  v4 = swift_continuation_init();
  v0[17] = sub_100012634(&qword_1000D2360, &qword_100094C80);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100043724;
  v0[13] = &unk_1000C0530;
  v0[14] = v4;
  [v2 handleDialogRequest:v1 completionHandler:v0 + 10];
  sub_10004B148();

  return _swift_continuation_await(v5);
}

uint64_t sub_100043A10()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100043B0C()
{
  sub_10004B1C0();
  sub_10001D70C();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = [v1 selectedActionIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *v2 = v4;
  v2[1] = v6;
  sub_10004AD98();
  sub_10004B148();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_100043B9C()
{
  sub_10001D674();
  swift_willThrow();
  sub_100019370();

  return v0();
}

uint64_t *sub_100043C00(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = sub_100012980((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

void *sub_100043CB0()
{
  type metadata accessor for AccountNotificationObserver();
  v0 = swift_allocObject();
  result = sub_100043D5C();
  qword_1000E4530 = v0;
  return result;
}

NSString sub_100043CEC()
{
  result = String._bridgeToObjectiveC()();
  qword_1000D2FD0 = result;
  return result;
}

NSString sub_100043D24()
{
  result = String._bridgeToObjectiveC()();
  qword_1000D2FD8 = result;
  return result;
}

void *sub_100043D5C()
{
  v1 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  sub_10002FD0C(v1);
  sub_10002FF34();
  __chkstk_darwin(v2);
  v4 = &v14 - v3;
  swift_defaultActor_initialize();
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[17] = _swiftEmptyDictionarySingleton;
  type metadata accessor for TaskPriority();
  v5 = sub_10004B234();
  sub_10001267C(v5, v6, v7, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v0;

  v10 = sub_10004B26C();
  sub_10006BA84(v10, v11, v4, v12, v9);

  return v0;
}

uint64_t sub_100043E44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001D270;

  return sub_100044730();
}

id *sub_100043ED4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100043F54()
{
  sub_100043ED4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100043F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return _swift_task_switch(sub_100043FBC, 0, 0);
}

uint64_t sub_100044120()
{
  sub_100013A88();
  sub_100045270(*(v0 + 40), 0);
  sub_100019370();

  return v1();
}

uint64_t sub_1000441B0(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, uint64_t))
{
  if (qword_1000D1AC8 != -1)
  {
    sub_10004A728(&qword_1000D1AC8);
  }

  v3 = sub_1000326AC();
  v4 = __chkstk_darwin(v3);
  sub_10003A580(v4, v5, a2);
}

uint64_t sub_100044284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>, uint64_t x3_0@<X3>)
{
  v28 = a4;
  v8 = type metadata accessor for Notification();
  sub_100014A8C();
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  v14 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  sub_10002FD0C(v14);
  sub_10002FF34();
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  type metadata accessor for TaskPriority();
  v18 = sub_10004B234();
  sub_10001267C(v18, v19, v20, v21);
  (*(v10 + 16))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v22 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = a1;
  (*(v10 + 32))(&v23[v22], &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  v24 = sub_10004B26C();
  result = sub_10006BA84(v24, v25, v17, x3_0, v23);
  *v28 = result;
  return result;
}

uint64_t sub_10004442C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return _swift_task_switch(sub_10004444C, 0, 0);
}

uint64_t sub_1000445B0()
{
  sub_100013A88();
  sub_100045270(*(v0 + 40), 1);
  sub_100019370();

  return v1();
}

uint64_t sub_100044624(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  type metadata accessor for Notification();
  sub_100014A8C();
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v7);

  v8 = sub_10004B260();
  return v9(v8);
}

uint64_t sub_100044730()
{
  sub_100013A88();
  v1[2] = v0;
  v2 = type metadata accessor for SKLogger(0);
  v1[3] = v2;
  sub_10002FD0C(v2);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  sub_10004ABB0(v3);

  return sub_10003AE00(0);
}

uint64_t sub_100044800()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v3 = *v0;
  sub_100019340();
  *v4 = v3;
  *(v6 + 64) = v5;

  v7 = sub_10004AFB0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000448F8()
{
  v1 = v0[8];
  v2 = [v1 ams_DSID];
  if (v2)
  {

    v3 = v1;
    v4 = v0[8];
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[2];
  v6 = *(v5 + 112);
  *(v5 + 112) = v4;

  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60(&qword_1000D1AE8);
  }

  v7 = v0[6];
  v8 = sub_1000128C0(v0[3], qword_1000E4560);
  v0[9] = v8;
  sub_100012C50(v8, v7);
  sub_10004A90C();
  _StringGuts.grow(_:)(58);
  sub_10004AEFC();
  sub_10004ABE4();
  v9._countAndFlagsBits = 0xD000000000000038;
  String.append(_:)(v9);
  v10 = *(v5 + 112);
  if (v10)
  {
    v11 = [v10 hashedDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = v0[6];
  v16._countAndFlagsBits = v12;
  v16._object = v14;
  String.append(_:)(v16);

  v17 = static os_log_type_t.default.getter();
  v18 = Logger.logObject.getter();
  v19 = os_log_type_enabled(v18, v17);
  v20 = v0[6];
  if (v19)
  {
    sub_100039EE0();
    v28 = sub_10004AAAC();
    *v15 = 136446466;
    *(v15 + 4) = sub_1000300EC(v28, v21);
    sub_10004ABBC();
    v22 = sub_10004AD8C();
    v25 = sub_1000847A8(v22, v23, v24);

    *(v15 + 14) = v25;
    sub_10004AE74(&_mh_execute_header, v18, v17, "%{public}s%{public}s");
    sub_100037BEC();
    sub_10004AA4C();
    sub_10004AB24();
  }

  else
  {
  }

  sub_1000498A0(v20);
  v26 = swift_task_alloc();
  v0[10] = v26;
  *v26 = v0;
  sub_10004ABB0(v26);

  return sub_10003AE00(1);
}

uint64_t sub_100044B60()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v3 = *v0;
  sub_100019340();
  *v4 = v3;
  *(v6 + 88) = v5;

  v7 = sub_10004AFB0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100044C58()
{
  v1 = v0[11];
  v2 = [v1 ams_DSID];
  if (v2)
  {

    v3 = v1;
    v4 = v0[11];
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[9];
  v6 = v0[5];
  v7 = v0[2];
  v8 = *(v7 + 120);
  *(v7 + 120) = v4;

  sub_100012C50(v5, v6);
  sub_10004A90C();
  _StringGuts.grow(_:)(66);
  sub_10004AEFC();
  sub_10004ABE4();
  v9._countAndFlagsBits = 0xD000000000000040;
  String.append(_:)(v9);
  v10 = *(v7 + 120);
  if (v10)
  {
    v11 = [v10 hashedDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = v0[5];
  v16._countAndFlagsBits = v12;
  v16._object = v14;
  String.append(_:)(v16);

  v17 = static os_log_type_t.default.getter();
  v18 = Logger.logObject.getter();
  v19 = os_log_type_enabled(v18, v17);
  v20 = v0[5];
  if (v19)
  {
    sub_100039EE0();
    v28 = sub_10004AAAC();
    *v15 = 136446466;
    *(v15 + 4) = sub_1000300EC(v28, v21);
    sub_10004ABBC();
    v22 = sub_10004AD8C();
    v25 = sub_1000847A8(v22, v23, v24);

    *(v15 + 14) = v25;
    sub_10004AE74(&_mh_execute_header, v18, v17, "%{public}s%{public}s");
    sub_100037BEC();
    sub_10004AA4C();
    sub_10004AB24();
  }

  else
  {
  }

  sub_1000498A0(v20);
  v26 = swift_task_alloc();
  v0[12] = v26;
  *v26 = v0;
  sub_10004ABB0(v26);

  return sub_10003AE00(2);
}

uint64_t sub_100044E94()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  v3 = *v0;
  sub_100019340();
  *v4 = v3;
  *(v6 + 104) = v5;

  v7 = sub_10004AFB0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100044F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10004AE8C();
  a21 = v23;
  a22 = v24;
  sub_10004ACE0();
  a20 = v22;
  v25 = v22[13];
  v26 = [v25 ams_DSID];
  if (v26)
  {

    v27 = v25;
    v28 = v22[13];
  }

  else
  {
    v28 = 0;
  }

  v29 = v22[9];
  v30 = v22[4];
  v31 = v22[2];
  v32 = *(v31 + 128);
  *(v31 + 128) = v28;

  sub_100012C50(v29, v30);
  sub_10004A90C();
  _StringGuts.grow(_:)(69);
  sub_10004AEFC();
  sub_10004ABE4();
  v33._countAndFlagsBits = 0xD000000000000043;
  String.append(_:)(v33);
  v34 = *(v31 + 128);
  if (v34)
  {
    v35 = [v34 hashedDescription];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v38 = 0xE300000000000000;
    v36 = 7104878;
  }

  v39._countAndFlagsBits = v36;
  v39._object = v38;
  String.append(_:)(v39);

  v41 = a10;
  v40 = a11;
  v42 = static os_log_type_t.default.getter();
  v43 = Logger.logObject.getter();
  v44 = os_log_type_enabled(v43, v42);
  v45 = v22[4];
  if (v44)
  {
    v46 = sub_100039EE0();
    v47 = sub_100039EC8();
    a10 = v47;
    *v46 = 136446466;
    *(v46 + 4) = sub_1000300EC(v47, v48);
    sub_10004B08C();
    v49 = sub_1000847A8(v41, v40, &a10);

    *(v46 + 14) = v49;
    sub_10004AD34();
    sub_10004B1EC(v50, v51, v52, v53);
    sub_10004AA90();
    sub_10004A98C();
    sub_10004AA1C();
  }

  else
  {
  }

  sub_1000498A0(v45);
  v54 = [objc_opt_self() defaultCenter];
  v57 = v54;
  if (qword_1000D1AD8 != -1)
  {
    v54 = swift_once();
  }

  v58 = sub_10004B2C8(v54, v55, v22[2], v56, qword_1000D2FD0);
  if (qword_1000D1AE0 != -1)
  {
    v58 = swift_once();
  }

  v61 = v22[11];
  v62 = v22[8];
  sub_10004B2C8(v58, v59, v22[2], v60, qword_1000D2FD8);

  sub_100019370();
  sub_100013A94();

  return v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14);
}

void sub_100045270(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = Notification.userInfo.getter();
  if (!v6 || (sub_100045818(v6), sub_1000216E0(), , !a1))
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60(&qword_1000D1AE8);
    }

    v15 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v15, qword_1000E4560);
    sub_10004A90C();
    _StringGuts.grow(_:)(45);
    sub_10004AEFC();
    v16._countAndFlagsBits = 0xD00000000000001CLL;
    v16._object = 0x80000001000A00B0;
    String.append(_:)(v16);
    sub_10004B080(v17, v18, &type metadata for AccountType, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v19, v20, v21, v63, v65, *(&v65 + 1), v66, v67, a2);
    _print_unlocked<A, B>(_:_:)();
    v22._countAndFlagsBits = 0x746E756F63636120;
    v22._object = 0xEF65676E61686320;
    String.append(_:)(v22);
LABEL_36:
    v41 = *(&v65 + 1);
    v48 = v65;
    if (qword_1000D1AC8 != -1)
    {
      sub_10004A728(&qword_1000D1AC8);
    }

    TaskLocal.get()();
    v59 = v65;
    v43 = static os_log_type_t.default.getter();

    v44 = Logger.logObject.getter();

    if (os_log_type_enabled(v44, v43))
    {
      sub_100039EE0();
      v64 = a2;
      v68 = sub_10004AB78();
      sub_10004A8B4(4.8752e-34);
      *&v65 = v60;
      *(&v65 + 1) = v61;
      String.append(_:)(v59);
      sub_10004AD08();
      v47 = v65;
      goto LABEL_40;
    }

LABEL_41:

    goto LABEL_42;
  }

  sub_100021A90(0x657669746361, 0xE600000000000000, a1, &v65);
  if (v67)
  {
    sub_10004B080(v7, v8, v9, &type metadata for Bool, v10, v11, v12, v13, v63, v65, *(&v65 + 1), v66, v67, v68);
    if (swift_dynamicCast())
    {
      v14 = v68;
      goto LABEL_11;
    }
  }

  else
  {
    sub_100049EA0(&v65, &qword_1000D1D60, &qword_100093620);
  }

  v14 = 0;
LABEL_11:
  sub_100021A90(0x74756F6E676973, 0xE700000000000000, a1, &v65);

  if (!v67)
  {
    sub_100049EA0(&v65, &qword_1000D1D60, &qword_100093620);
LABEL_27:
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60(&qword_1000D1AE8);
    }

    v49 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v49, qword_1000E4560);
    sub_10004A90C();
    _StringGuts.grow(_:)(30);
    sub_10004AEFC();
    sub_10004B080(v50, v51, &type metadata for AccountType, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v52, v53, v54, v63, v65, *(&v65 + 1), v66, v67, a2);
    _print_unlocked<A, B>(_:_:)();
    sub_10004ABE4();
    v55._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v55);
    if (v14)
    {
      v56 = 1702195828;
    }

    else
    {
      v56 = 0x65736C6166;
    }

    if (v14)
    {
      v57 = 0xE400000000000000;
    }

    else
    {
      v57 = 0xE500000000000000;
    }

    v58 = v57;
    String.append(_:)(*&v56);

    goto LABEL_36;
  }

  sub_10004B080(v23, v24, v25, &type metadata for Bool, v26, v27, v28, v29, v63, v65, *(&v65 + 1), v66, v67, v68);
  if (!swift_dynamicCast() || (v68 & 1) == 0)
  {
    goto LABEL_27;
  }

  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60(&qword_1000D1AE8);
  }

  v30 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v30, qword_1000E4560);
  sub_10004A90C();
  _StringGuts.grow(_:)(33);
  sub_10004AEFC();
  sub_10004B080(v31, v32, &type metadata for AccountType, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v33, v34, v35, v63, v65, *(&v65 + 1), v66, v67, a2);
  _print_unlocked<A, B>(_:_:)();
  v36._countAndFlagsBits = 0xD00000000000001DLL;
  v36._object = 0x80000001000A00F0;
  String.append(_:)(v36);
  if (v14)
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (v14)
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  v39 = v38;
  String.append(_:)(*&v37);

  v41 = *(&v65 + 1);
  v40 = v65;
  if (qword_1000D1AC8 != -1)
  {
    sub_10004A728(&qword_1000D1AC8);
  }

  TaskLocal.get()();
  v42 = v65;
  v43 = static os_log_type_t.default.getter();

  v44 = Logger.logObject.getter();

  if (!os_log_type_enabled(v44, v43))
  {
    goto LABEL_41;
  }

  sub_100039EE0();
  v64 = a2;
  v68 = sub_10004AB78();
  sub_10004A8B4(4.8752e-34);
  *&v65 = v45;
  *(&v65 + 1) = v46;
  String.append(_:)(v42);
  sub_10004AD08();
  v47 = v65;
  v48 = v40;
LABEL_40:
  sub_1000847A8(v47, *(&v65 + 1), &v68);
  sub_1000216E0();

  *(v3 + 4) = &v65;
  sub_10004AD40();
  v62 = sub_1000847A8(v48, v41, &v68);

  *(v3 + 14) = v62;
  _os_log_impl(&_mh_execute_header, v44, v43, "%{public}s%{public}s", v3, 0x16u);
  sub_10004AC1C();
  sub_10004ABF0();
  a2 = v64;
  sub_100039E94(v3);

LABEL_42:

  sub_100045AD0(a2);
  sub_100045AD0(2);
}

unint64_t sub_100045818(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100012634(&qword_1000D31D0, &qword_100096B00);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_10004977C(*(a1 + 48) + 40 * v10, __src);
    sub_100012908(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_10004977C(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_100012908(&__dst[40], v20);
    sub_100049EA0(__dst, &qword_1000D31D8, &qword_100096B08);
    v21 = v18;
    sub_100012AD4(v20, v22);
    v11 = v21;
    sub_100012AD4(v22, v23);
    sub_100012AD4(v23, &v21);
    result = sub_10007D370(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      sub_100012A18(v14);
      result = sub_100012AD4(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_100012AD4(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_100049EA0(__dst, &qword_1000D31D8, &qword_100096B08);

  return 0;
}

void sub_100045AD0(uint64_t a1)
{
  v2 = v1;
  v94 = sub_100012634(&qword_1000D31C8, &unk_100096AF0);
  sub_100014A8C();
  v84 = v4;
  sub_10002FF34();
  __chkstk_darwin(v5);
  v93 = &v82 - v6;
  v92 = sub_100012634(&qword_1000D3168, &unk_100096A60);
  sub_100014A8C();
  v95 = v7;
  sub_10002FF34();
  __chkstk_darwin(v8);
  v91 = &v82 - v9;
  if (qword_1000D1AE8 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v10 = type metadata accessor for SKLogger(0);
    v11 = sub_1000128C0(v10, qword_1000E4560);
    sub_10004AFA0();
    _StringGuts.grow(_:)(31);
    v12._countAndFlagsBits = 0x676E696B63656843;
    v12._object = 0xE900000000000020;
    String.append(_:)(v12);
    LOBYTE(v102[0]) = a1;
    _print_unlocked<A, B>(_:_:)();
    sub_10004ABE4();
    v13._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v13);
    v14 = v97;
    v15 = v98;
    if (qword_1000D1AC8 != -1)
    {
      sub_10004A728(&qword_1000D1AC8);
    }

    v90 = qword_1000E4520;
    TaskLocal.get()();
    v16 = v97;
    v17 = static os_log_type_t.default.getter();

    v89 = v11;
    v18 = Logger.logObject.getter();

    if (os_log_type_enabled(v18, v17))
    {
      sub_100039EE0();
      v96 = v2;
      v19 = a1;
      v20 = sub_10004AAAC();
      v102[0] = v20;
      sub_10004A7B8(4.8752e-34);
      v97 = v21;
      v98 = v22;
      v23._countAndFlagsBits = sub_10004AD8C();
      String.append(_:)(v23);
      sub_10004ADC0();
      sub_1000847A8(v97, v98, v102);
      sub_10004B050();
      *(v2 + 4) = v16;
      sub_10004ABBC();
      v24 = sub_1000847A8(v14, v15, v102);

      *(v2 + 14) = v24;
      sub_10004AE74(&_mh_execute_header, v18, v17, "%{public}s%{public}s");
      swift_arrayDestroy();
      v25 = v20;
      a1 = v19;
      sub_100039E94(v25);
      v26 = v2;
      v2 = v96;
      sub_100039E94(v26);
    }

    else
    {
    }

    v27 = v2[a1 + 14];
    v28 = **(&off_1000C05C8 + a1);
    v29 = v27;
    v30 = v28;
    v31 = [objc_opt_self() ams_sharedAccountStoreForMediaType:v30];

    v32 = [v31 ams_activeiTunesAccount];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 ams_accountID];
      v35 = v34 ? v34 : v33;
      v36 = v34 ? v33 : 0;
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    sub_100046444(v36, a1);
    v96 = v37;

    if ((sub_1000464B4(v27, v36, a1) & 1) == 0)
    {
      break;
    }

    swift_beginAccess();
    if (!*(v2[17] + 16))
    {

      goto LABEL_24;
    }

    v82 = v31;
    v83 = v29;
    sub_10004AFA0();
    _StringGuts.grow(_:)(51);
    v38._countAndFlagsBits = 0x6E69796669746F4ELL;
    v38._object = 0xEA00000000002067;
    String.append(_:)(v38);
    v101 = *(v2[17] + 16);
    v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v39);

    v40._countAndFlagsBits = 0x656E657473696C20;
    v40._object = 0xEF20726F66207372;
    String.append(_:)(v40);
    LOBYTE(v101) = a1;
    _print_unlocked<A, B>(_:_:)();
    v41._countAndFlagsBits = 0xD000000000000016;
    v41._object = 0x80000001000A0090;
    String.append(_:)(v41);
    v42 = v97;
    v43 = v98;
    TaskLocal.get()();
    v44 = v98;
    v86 = v97;
    v45 = static os_log_type_t.default.getter();

    v46 = Logger.logObject.getter();

    LODWORD(v89) = v45;
    v47 = os_log_type_enabled(v46, v45);
    v87 = v36;
    v88 = a1;
    if (v47)
    {
      sub_100039EE0();
      v48 = sub_10004AAAC();
      v101 = v48;
      sub_10004A7B8(4.8752e-34);
      v97 = v49;
      v98 = v50;
      v51._countAndFlagsBits = v86;
      v51._object = v44;
      String.append(_:)(v51);
      sub_10004ADC0();
      sub_1000847A8(v97, v98, &v101);
      sub_10004B050();
      *(v2 + 4) = v45;
      sub_10004ABBC();
      v52 = sub_1000847A8(v42, v43, &v101);

      *(v2 + 14) = v52;
      sub_10004AE74(&_mh_execute_header, v46, v89, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_100039E94(v48);
      sub_100039E94(v2);
    }

    else
    {
    }

    TaskLocal.get()();
    v68 = v2[17];
    a1 = v68 + 64;
    v69 = 1 << *(v68 + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & *(v68 + 64);
    v72 = v98;
    v89 = v97;
    v90 = v68;
    v73 = (v69 + 63) >> 6;
    v85 = v95 + 8;
    v86 = v95 + 16;
    v74 = (v84 + 8);

    v2 = 0;
    v75 = v92;
    v76 = v93;
    while (v71)
    {
      v77 = v2;
LABEL_34:
      v78 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
      v79 = v91;
      v80 = v95;
      (*(v95 + 16))(v91, *(v90 + 56) + *(v95 + 72) * (v78 | (v77 << 6)), v75);
      LOBYTE(v97) = v88;
      v98 = v87;
      v99 = v89;
      v100 = v72;
      v81 = v96;

      AsyncStream.Continuation.yield(_:)();
      (*(v80 + 8))(v79, v75);
      (*v74)(v76, v94);
    }

    while (1)
    {
      v77 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v77 >= v73)
      {

        goto LABEL_37;
      }

      v71 = *(a1 + 8 * v77);
      v2 = (v2 + 1);
      if (v71)
      {
        v2 = v77;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_39:
    sub_100039E60(&qword_1000D1AE8);
  }

  sub_10004AFA0();
  _StringGuts.grow(_:)(25);
  LOBYTE(v102[0]) = a1;
  _print_unlocked<A, B>(_:_:)();
  v53._countAndFlagsBits = 0xD000000000000017;
  v53._object = 0x80000001000A0070;
  String.append(_:)(v53);
  TaskLocal.get()();
  v54 = v97;
  static os_log_type_t.default.getter();
  sub_10004B0BC();

  v55 = Logger.logObject.getter();

  if (!sub_10004B0A4())
  {

LABEL_24:
    return;
  }

  v56 = sub_100039EE0();
  v83 = v29;
  v57 = v56;
  v102[0] = sub_100039EC8();
  *v57 = 136446466;
  sub_10004A980();
  v97 = v58;
  v98 = v59;
  sub_10004AED8();
  sub_10004ADC0();
  v60 = v98;
  sub_1000847A8(v97, v98, v102);
  sub_10004AEC0();
  *(v57 + 4) = v54;
  sub_10004B08C();
  v61 = sub_10004B260();
  sub_1000847A8(v61, v62, v63);
  sub_10004B358();
  *(v57 + 14) = v60;
  sub_10004AD34();
  sub_10004B1EC(v64, v65, v66, v67);
  sub_10004AA90();
  sub_10004A98C();
  sub_10004AA1C();

LABEL_37:
}

void sub_100046444(void *a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = v2[15];
      v2[15] = a1;
    }

    else
    {
      v4 = v2[16];
      v2[16] = a1;
    }
  }

  else
  {
    v4 = v2[14];
    v2[14] = a1;
  }

  v3 = a1;
}

uint64_t sub_1000464B4(void *a1, void *a2, char a3)
{
  v6 = type metadata accessor for SKLogger(0);
  sub_100019360();
  v8 = __chkstk_darwin(v7);
  v10 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = __chkstk_darwin(v8);
  v13 = &v101[-v12 - 8];
  v14 = __chkstk_darwin(v11);
  v16 = &v101[-v15 - 8];
  __chkstk_darwin(v14);
  v18 = &v101[-v17 - 8];
  if (!a1)
  {
    if (a2)
    {
      if (qword_1000D1AE8 != -1)
      {
        sub_100039E60(&qword_1000D1AE8);
      }

      v23 = sub_1000128C0(v6, qword_1000E4560);
      sub_100012C50(v23, v18);
      sub_10004AD7C();
      _StringGuts.grow(_:)(46);
      sub_10004B278();
      sub_10004ADF4("v24@?0@NSArray8@NSError16");
      v101[0] = a3;
      sub_10004B370(v24, v25, &type metadata for AccountType, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v26._countAndFlagsBits = 0xD000000000000018;
      v26._object = 0x800000010009FFD0;
      String.append(_:)(v26);
      v27 = [a2 hashedDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10004B254();

      sub_10004B388();

      if (qword_1000D1AC8 != -1)
      {
        sub_10004A728(&qword_1000D1AC8);
      }

      TaskLocal.get()();
      v29 = v102;
      v28 = v103;
      v30 = static os_log_type_t.default.getter();
      v31 = Logger.logObject.getter();
      if (os_log_type_enabled(v31, v30))
      {
        v32 = sub_100039EE0();
        sub_100039EC8();
        *v32 = 136446466;
        sub_10004A980();
        v35._countAndFlagsBits = sub_10004AA7C(v33, v34);
        v35._object = v28;
        String.append(_:)(v35);
        sub_10004ADC0();
        sub_10004AF50();
        sub_10004AEC0();
        *(v32 + 4) = v29;
        sub_10004B08C();
        v36 = sub_10004B260();
        sub_1000847A8(v36, v37, v38);
        sub_10004B358();
        *(v32 + 14) = v18;
        sub_10004AD34();
        sub_10004B1EC(v39, v40, v41, v42);
        sub_10004AA90();
        sub_10004A98C();
        sub_10004AA1C();
      }

      else
      {
      }

      v64 = v18;
      goto LABEL_59;
    }

    return 0;
  }

  if (!a2)
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60(&qword_1000D1AE8);
    }

    v43 = sub_1000128C0(v6, qword_1000E4560);
    sub_100012C50(v43, v16);
    sub_10004AD7C();
    _StringGuts.grow(_:)(48);
    sub_10004B278();
    sub_10004ADF4("v24@?0@NSArray8@NSError16");
    v101[0] = a3;
    sub_10004B370(v44, v45, &type metadata for AccountType, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v46._countAndFlagsBits = 0xD00000000000001ALL;
    v46._object = 0x800000010009FFF0;
    String.append(_:)(v46);
    v47 = [a1 hashedDescription];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10004B254();

    sub_10004B388();

    if (qword_1000D1AC8 != -1)
    {
      sub_10004A728(&qword_1000D1AC8);
    }

    TaskLocal.get()();
    v48 = v103;
    v49 = static os_log_type_t.default.getter();
    v50 = Logger.logObject.getter();
    if (os_log_type_enabled(v50, v49))
    {
      sub_100039EE0();
      sub_10004AB40();
      sub_10004A7FC(4.8752e-34);
      v53._countAndFlagsBits = sub_10004AA7C(v51, v52);
      v53._object = v48;
      String.append(_:)(v53);
      sub_10004ADC0();
      sub_10004AF50();
      sub_10004AEC0();
      sub_10004A7EC();
      v54 = sub_10004B260();
      sub_1000847A8(v54, v55, v56);
      sub_10004B358();
      *(v18 + 14) = v16;
      sub_10004AAE4(&_mh_execute_header, v57, v58, "%{public}s%{public}s");
      sub_10004AA90();
      sub_10004A98C();
      sub_10004AA4C();
    }

    else
    {
    }

    v64 = v16;
    goto LABEL_59;
  }

  v19 = [a1 ams_DSID];
  v20 = [a2 ams_DSID];
  v21 = v20;
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_21;
    }

LABEL_28:

LABEL_29:
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60(&qword_1000D1AE8);
    }

    v65 = sub_1000128C0(v6, qword_1000E4560);
    sub_100012C50(v65, v13);
    sub_10004AD7C();
    _StringGuts.grow(_:)(40);
    sub_10004B278();
    sub_10004ABE4();
    v66._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v66);
    v101[0] = a3;
    sub_10004B370(v67, v68, &type metadata for AccountType, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    sub_10004ABE4();
    v69._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v69);
    v70 = [a2 hashedDescription];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10004B254();

    sub_10004B388();

    v72 = v102;
    v71 = v103;
    if (qword_1000D1AC8 != -1)
    {
      sub_10004A728(&qword_1000D1AC8);
    }

    TaskLocal.get()();
    v73 = v103;
    v74 = static os_log_type_t.default.getter();
    v75 = Logger.logObject.getter();
    if (os_log_type_enabled(v75, v74))
    {
      sub_100039EE0();
      sub_10004AB40();
      sub_10004A7FC(4.8752e-34);
      v78._countAndFlagsBits = sub_10004AA7C(v76, v77);
      v78._object = v73;
      String.append(_:)(v78);
      sub_10004ADC0();
      sub_10004AF50();
      sub_10004AEC0();
      sub_10004A7EC();
      sub_1000847A8(v72, v71, v101);
      sub_10004B358();
      *(v21 + 14) = v13;
      sub_10004AB94(&_mh_execute_header, v79, v74, "%{public}s%{public}s");
      sub_10004AA90();
      sub_10004A98C();
      sub_10004AA4C();
    }

    else
    {
    }

    v64 = v13;
LABEL_59:
    sub_1000498A0(v64);
    return 1;
  }

  if (!v20)
  {
    v21 = v19;
    goto LABEL_28;
  }

  sub_100012BAC(0, &qword_1000D1D78, NSNumber_ptr);
  v22 = static NSObject.== infix(_:_:)();

  if ((v22 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_21:
  v59 = a3;
  v60 = **(&off_1000C05C8 + a3);
  v61 = [a1 ams_storefrontForMediaType:v60];

  if (v61)
  {
    v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;
  }

  else
  {
    v100 = 0;
    v63 = 0;
  }

  v80 = **(&off_1000C05C8 + a3);
  v81 = [a2 ams_storefrontForMediaType:v80];

  if (!v81)
  {
    if (!v63)
    {
      return 0;
    }

LABEL_50:

    goto LABEL_51;
  }

  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  if (!v63)
  {
    if (!v83)
    {
      return 0;
    }

    goto LABEL_50;
  }

  if (!v83)
  {
    goto LABEL_50;
  }

  if (v100 != v59 || v63 != v83)
  {
    v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v85)
    {
      return 0;
    }

LABEL_51:
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60(&qword_1000D1AE8);
    }

    v86 = sub_1000128C0(v6, qword_1000E4560);
    sub_100012C50(v86, v10);
    sub_10004AD7C();
    _StringGuts.grow(_:)(43);
    sub_10004B278();
    sub_10004ADF4("v24@?0@NSArray8@NSError16");
    v101[0] = a3;
    sub_10004B370(v87, v88, &type metadata for AccountType, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v89._countAndFlagsBits = 0xD000000000000015;
    v89._object = 0x80000001000A0030;
    String.append(_:)(v89);
    v90 = [a2 hashedDescription];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10004B254();

    sub_10004B388();

    v92 = v102;
    v91 = v103;
    if (qword_1000D1AC8 != -1)
    {
      sub_10004A728(&qword_1000D1AC8);
    }

    TaskLocal.get()();
    v93 = v103;
    v94 = static os_log_type_t.default.getter();
    v95 = Logger.logObject.getter();
    if (os_log_type_enabled(v95, v94))
    {
      sub_100039EE0();
      sub_10004AB40();
      sub_10004A7FC(4.8752e-34);
      v98._countAndFlagsBits = sub_10004AA7C(v96, v97);
      v98._object = v93;
      String.append(_:)(v98);
      sub_10004ADC0();
      sub_10004AF50();
      sub_10004AEC0();
      sub_10004A7EC();
      sub_1000847A8(v92, v91, v101);
      sub_10004AF78();
      *(v59 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v95, v94, "%{public}s%{public}s", v59, 0x16u);
      sub_10004AA90();
      sub_10004A98C();
      sub_10004AA4C();
    }

    else
    {
    }

    v64 = v10;
    goto LABEL_59;
  }

  return 0;
}

__n128 sub_100046E60(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100046E6C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100046EAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100046EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D3168, &unk_100096A60);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  sub_10001267C(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_10006BA84(0, 0, v10, &unk_100096A78, v13);
}

uint64_t sub_1000470CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000470EC, a4, 0);
}

uint64_t sub_1000470EC()
{
  sub_100013A88();
  sub_1000472D0(*(v0 + 24));
  sub_100019370();

  return v1();
}

uint64_t sub_100047144()
{
  sub_100012634(&qword_1000D3168, &unk_100096A60);
  sub_100014A8C();
  swift_unknownObjectRelease();

  v0 = sub_10004AFF0();
  v1(v0);
  v2 = sub_10004AFD0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100047200(uint64_t a1)
{
  sub_10004B2E8();
  sub_10001D70C();
  v1 = sub_100012634(&qword_1000D3168, &unk_100096A60);
  sub_10002FD0C(v1);
  sub_10004AA38();
  v2 = swift_task_alloc();
  v3 = sub_10004A854(v2);
  *v3 = v4;
  v3[1] = sub_10001D5E0;
  sub_10004A790();
  sub_10004B2FC();

  return sub_1000470CC(v5, v6, v7, v8, v9);
}

uint64_t sub_1000472D0(uint64_t a1)
{
  v30 = a1;
  v1 = sub_100012634(&qword_1000D3170, &qword_100096A80);
  __chkstk_darwin(v1 - 8);
  v27 = &v26 - v2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v6;
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  UUID.init()();
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v10, qword_1000E4560);
  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v31 = 0xD00000000000001FLL;
  v32 = 0x800000010009FF20;
  sub_10004A628(&qword_1000D2878, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v11 = v3;
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13 = v31;
  v14 = v32;
  v15 = static os_log_type_t.debug.getter();

  v16 = Logger.logObject.getter();

  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v17 = 136446466;
    *(v17 + 4) = sub_1000847A8(0, 0xE000000000000000, &v31);
    *(v17 + 12) = 2082;
    v18 = sub_1000847A8(v13, v14, &v31);

    *(v17 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v16, v15, "%{public}s%{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = *(v4 + 16);
  v19(v7, v9, v11);
  v20 = sub_100012634(&qword_1000D3168, &unk_100096A60);
  v21 = v27;
  (*(*(v20 - 8) + 16))(v27, v30, v20);
  sub_10001267C(v21, 0, 1, v20);
  v22 = v29;
  swift_beginAccess();
  sub_10003A180(v21, v7);
  swift_endAccess();
  v19(v7, v9, v11);
  v23 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  (*(v4 + 32))(v24 + v23, v7, v11);

  AsyncStream.Continuation.onTermination.setter();
  return (*(v4 + 8))(v9, v11);
}

uint64_t sub_10004775C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  sub_10001267C(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_10006BA84(0, 0, v10, &unk_100096A90, v13);
}

uint64_t sub_100047918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100047938, a4, 0);
}

uint64_t sub_100047938()
{
  sub_100013A88();
  sub_100047990(*(v0 + 24));
  sub_100019370();

  return v1();
}

uint64_t sub_100047990(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100012634(&qword_1000D3170, &qword_100096A80);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  swift_beginAccess();
  v6 = sub_100083444();
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v1 + 136);
    v10 = *(v20 + 24);
    sub_100012634(&qword_1000D3178, &qword_100096A98);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);
    v11 = v20;
    v12 = *(v20 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_100012634(&qword_1000D3168, &unk_100096A60);
    (*(*(v15 - 8) + 32))(v5, v14 + *(*(v15 - 8) + 72) * v8, v15);
    sub_10004A628(&qword_1000D3180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    _NativeDictionary._delete(at:)();
    *(v2 + 136) = v11;
    v16 = v5;
    v17 = 0;
    v18 = v15;
  }

  else
  {
    v18 = sub_100012634(&qword_1000D3168, &unk_100096A60);
    v16 = v5;
    v17 = 1;
  }

  sub_10001267C(v16, v17, 1, v18);
  sub_100049EA0(v5, &qword_1000D3170, &qword_100096A80);
  return swift_endAccess();
}

uint64_t sub_100047BD0()
{
  type metadata accessor for UUID();
  sub_100014A8C();

  v0 = sub_10004AFF0();
  v1(v0);
  v2 = sub_10004AFD0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100047C78()
{
  sub_10004B248();
  v2 = type metadata accessor for UUID();
  sub_10002FD0C(v2);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10004775C(v0, v4, v5);
}

id sub_100047CE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  if (!a3)
  {
    v11 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = String._bridgeToObjectiveC()();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = String._bridgeToObjectiveC()();

LABEL_6:
  v13 = [v7 initWithDSID:a1 altDSID:v11 username:v12 options:a6];

  return v13;
}

id sub_100047DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = String._bridgeToObjectiveC()();

LABEL_6:
  v8 = [v4 initWithTitle:v6 message:v7];

  return v8;
}

BOOL sub_100047E58(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_100047EA4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10001D5E0;

  return v6();
}

uint64_t sub_100047F8C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10001D5E0;

  return v7();
}

uint64_t sub_100048074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_100049E30(a3, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  if (sub_100012898(v11, 1, v12) == 1)
  {
    sub_100049EA0(v11, &unk_1000D3EC0, &qword_100093590);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_100049EA0(a3, &unk_1000D3EC0, &qword_100093590);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100049EA0(a3, &unk_1000D3EC0, &qword_100093590);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_100048340(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100048438;

  return v6(a1);
}

uint64_t sub_100048438()
{
  sub_100013A88();
  sub_10001937C();
  v1 = *v0;
  sub_100019340();
  *v2 = v1;

  sub_10004AD98();

  return v3();
}

uint64_t sub_100048530(uint64_t a1)
{
  sub_10004B2E8();
  sub_10001D70C();
  sub_10004B248();
  v1 = type metadata accessor for UUID();
  sub_10002FD0C(v1);
  sub_10004AA38();
  v2 = swift_task_alloc();
  v3 = sub_10004A854(v2);
  *v3 = v4;
  v3[1] = sub_10001D5E0;
  sub_10004A790();
  sub_10004B2FC();

  return sub_100047918(v5, v6, v7, v8, v9);
}

double sub_1000485F0@<D0>(_OWORD *a2@<X8>)
{
  v4 = sub_100083AE0();
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v8 = *(*v2 + 24);
    sub_100012634(&qword_1000D1CF8, &unk_1000935D0);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);

    sub_100012AD4((*(v10 + 56) + 32 * v6), a2);
    type metadata accessor for AMSBagKey(0);
    sub_10004A628(&qword_1000D1C48, type metadata accessor for AMSBagKey, &unk_1000934FC);
    _NativeDictionary._delete(at:)();
    *v2 = v10;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10004870C@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_100083444();
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    v8 = *(*v2 + 24);
    sub_100012634(&qword_1000D3178, &qword_100096A98);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
    v9 = *(v17 + 48);
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v6, v10);
    v11 = *(v17 + 56);
    v12 = sub_100012634(&qword_1000D3168, &unk_100096A60);
    (*(*(v12 - 8) + 32))(a2, v11 + *(*(v12 - 8) + 72) * v6, v12);
    sub_10004A628(&qword_1000D3180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    _NativeDictionary._delete(at:)();
    *v2 = v17;
    v13 = a2;
    v14 = 0;
    v15 = v12;
  }

  else
  {
    v15 = sub_100012634(&qword_1000D3168, &unk_100096A60);
    v13 = a2;
    v14 = 1;
  }

  return sub_10001267C(v13, v14, 1, v15);
}

uint64_t sub_1000488D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_10007D370(a1, a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v9 = *(*v3 + 24);
    sub_100012634(&qword_1000D31C0, &qword_100096AE8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);

    v10 = *(v16 + 56);
    v11 = type metadata accessor for RemoteAlertConfiguration(0);
    sub_1000497D8(v10 + *(*(v11 - 8) + 72) * v7, a3);
    _NativeDictionary._delete(at:)();
    *v3 = v16;
    v12 = a3;
    v13 = 0;
    v14 = v11;
  }

  else
  {
    v14 = type metadata accessor for RemoteAlertConfiguration(0);
    v12 = a3;
    v13 = 1;
  }

  return sub_10001267C(v12, v13, 1, v14);
}

_OWORD *sub_100048A44(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  sub_10007D370(a2, a3);
  sub_10004AA68();
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  sub_100012634(&qword_1000D1D90, &unk_100093630);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v10))
  {
    sub_10007D370(a2, a3);
    sub_10004AFC0();
    if (!v17)
    {
      goto LABEL_14;
    }

    v14 = v16;
  }

  v18 = *v5;
  if (v15)
  {
    sub_100012A18((*(v18 + 56) + 32 * v14));
    v19 = sub_10002FD24();

    return sub_100012AD4(v19, v20);
  }

  else
  {
    sub_1000492A4(v14, a2, a3, a1, v18);
  }
}

_OWORD *sub_100048B74(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  sub_100083350();
  sub_10004AA68();
  if (v11)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_100012634(&qword_1000D31A0, &qword_100096AD0);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v8))
  {
    sub_100083350();
    sub_10004AFC0();
    if (!v15)
    {
      goto LABEL_12;
    }

    v12 = v14;
  }

  v16 = *v4;
  if (v13)
  {
    sub_100012A18((v16[7] + 32 * v12));
    v17 = sub_10002FD24();

    return sub_100012AD4(v17, v18);
  }

  else
  {
    sub_10004977C(a2, v20);
    return sub_100049300(v12, v20, a1, v16);
  }
}

_OWORD *sub_100048CD8(uint64_t a1, void *a2, char a3, uint64_t (*a4)(void *), uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v12 = v7;
  v15 = *v7;
  a4(a2);
  sub_10004AA68();
  if (v18)
  {
    __break(1u);
LABEL_14:
    a7(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v16;
  v20 = v17;
  sub_100012634(a5, a6);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v15))
  {
    a4(a2);
    sub_10004AFC0();
    if (!v22)
    {
      goto LABEL_14;
    }

    v19 = v21;
  }

  v23 = *v12;
  if (v20)
  {
    sub_100012A18((*(v23 + 56) + 32 * v19));
    v24 = sub_10002FD24();

    return sub_100012AD4(v24, v25);
  }

  else
  {
    sub_10004937C(v19, a2, a1, v23);

    return a2;
  }
}

uint64_t sub_100048E24(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = sub_100083444();
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v13;
  v19 = v14;
  sub_100012634(&qword_1000D3178, &qword_100096A98);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = sub_100083444();
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v20;
LABEL_5:
  v22 = *v4;
  if (v19)
  {
    v23 = v22[7];
    v24 = sub_100012634(&qword_1000D3168, &unk_100096A60);
    v25 = *(v24 - 8);
    v26 = *(v25 + 40);
    v27 = v24;
    v28 = v23 + *(v25 + 72) * v18;

    return v26(v28, a1, v27);
  }

  else
  {
    (*(v9 + 16))(v11, a2, v8);
    return sub_1000493D4(v18, v11, a1, v22);
  }
}

uint64_t sub_100049028(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  sub_1000834D8();
  sub_10004AA68();
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v8;
  v12 = v9;
  sub_100012634(&qword_1000D31A8, &qword_100096AD8);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v7);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1000834D8();
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_11:
    sub_100012BAC(0, &qword_1000D31B0, BSAction_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = result;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    *(v15[7] + v11) = a1 & 1;
  }

  else
  {
    sub_1000495C4(v11, a2, a1 & 1, v15);

    return a2;
  }

  return result;
}

uint64_t sub_100049148(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10007D370(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100012634(&qword_1000D31C0, &qword_100096AE8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_10007D370(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = v20[7];
    v22 = v21 + *(*(type metadata accessor for RemoteAlertConfiguration(0) - 8) + 72) * v16;

    return sub_10004983C(a1, v22);
  }

  else
  {
    sub_100049608(v16, a2, a3, a1, v20);
  }
}

_OWORD *sub_1000492A4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10004B068(a1, a5 + 8 * (a1 >> 6));
  v8 = (*(v7 + 48) + 16 * v6);
  *v8 = v9;
  v8[1] = v10;
  result = sub_100012AD4(v11, (*(v7 + 56) + 32 * v6));
  v13 = *(a5 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }

  return result;
}

_OWORD *sub_100049300(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100012AD4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_10004937C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10004B068(a1, a4 + 8 * (a1 >> 6));
  *(*(v6 + 48) + 8 * v5) = v7;
  result = sub_100012AD4(v8, (*(v6 + 56) + 32 * v5));
  v10 = *(a4 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }

  return result;
}

uint64_t sub_1000493D4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_100012634(&qword_1000D3168, &unk_100096A60);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1000494D4()
{
  swift_unknownObjectRelease();

  v0 = sub_10004B000();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10004950C()
{
  sub_10001D674();
  v0 = swift_task_alloc();
  v1 = sub_10004A854(v0);
  *v1 = v2;
  v1[1] = sub_10001D5E0;
  sub_10004A8A4();

  return sub_100043E44();
}

unint64_t sub_1000495C4(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_100049608(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for RemoteAlertConfiguration(0);
  result = sub_1000497D8(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_1000496A0(uint64_t a1, void *a2)
{
  sub_100012BAC(0, &qword_1000D31F8, AMSDialogAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setButtonActions:isa];
}

void sub_100049724(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setProxyAppBundleID:v4];
}

uint64_t sub_1000497D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAlertConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004983C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAlertConfiguration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000498A0(uint64_t a1)
{
  v2 = type metadata accessor for SKLogger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004994C(uint64_t a1)
{
  sub_10004B2E8();
  sub_10001D70C();
  sub_10004B248();
  v1 = type metadata accessor for Notification();
  sub_10002FD0C(v1);
  sub_10004AA38();
  v2 = swift_task_alloc();
  v3 = sub_10004A854(v2);
  *v3 = v4;
  v3[1] = sub_10001D5E0;
  sub_10004A790();
  sub_10004B2FC();

  return sub_10004442C(v5, v6, v7, v8, v9);
}

uint64_t sub_100049A44(void (*a1)(void))
{
  a1(0);
  sub_100014A8C();
  swift_unknownObjectRelease();

  v1 = sub_10004AFF0();
  v2(v1);
  v3 = sub_10004AFD0();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100049AFC(uint64_t a1)
{
  sub_10004B2E8();
  sub_10001D70C();
  sub_10004B248();
  v1 = type metadata accessor for Notification();
  sub_10002FD0C(v1);
  sub_10004AA38();
  v2 = swift_task_alloc();
  v3 = sub_10004A854(v2);
  *v3 = v4;
  v3[1] = sub_10001D5E0;
  sub_10004A790();
  sub_10004B2FC();

  return sub_100043F9C(v5, v6, v7, v8, v9);
}

uint64_t sub_100049BBC()
{
  _Block_release(*(v0 + 32));
  sub_10004AE44();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100049C00()
{
  sub_10004B1C0();
  sub_10001D70C();
  v0 = swift_task_alloc();
  v1 = sub_10001D6A0(v0);
  *v1 = v2;
  v1[1] = sub_10001D270;
  sub_10001D624();
  sub_10004B148();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100049CAC()
{
  sub_10004B1C0();
  sub_10001D70C();
  v0 = swift_task_alloc();
  v1 = sub_10001D6A0(v0);
  *v1 = v2;
  v1[1] = sub_10001D5E0;
  sub_10001D624();
  sub_10004B148();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100049D54()
{
  swift_unknownObjectRelease();

  sub_10004AE44();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100049D90(uint64_t a1)
{
  sub_10004B2E8();
  sub_10001D70C();
  sub_10004AFE0();
  v1 = swift_task_alloc();
  v2 = sub_10004A854(v1);
  *v2 = v3;
  v2[1] = sub_10001D5E0;
  sub_10004A790();
  sub_10004B2FC();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100049E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049EA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100012634(a2, a3);
  sub_100019360();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100049EF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100049F30()
{
  sub_10001D674();
  v0 = swift_task_alloc();
  v1 = sub_10004A854(v0);
  *v1 = v2;
  v1[1] = sub_10001D5E0;
  v3 = sub_10004A8A4();

  return v4(v3);
}

uint64_t sub_100049FD4()
{
  sub_100013A88();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_10004A854(v4);
  *v5 = v6;
  v5[1] = sub_10001D5E0;

  return sub_100041340(v2, v3);
}

uint64_t sub_10004A068()
{
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004A0B8()
{
  sub_10004B2E8();
  sub_10001D70C();
  v0 = swift_task_alloc();
  v1 = sub_10001D6A0(v0);
  *v1 = v2;
  v1[1] = sub_10001D5E0;
  sub_10001D624();
  sub_10004B2FC();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10004A168()
{
  sub_10001D674();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_10004A854(v2);
  *v3 = v4;
  v3[1] = sub_10001D5E0;
  v5 = sub_10004A8A4();

  return sub_10003EF58(v5, v6, v1);
}

uint64_t sub_10004A200()
{
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004A258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004B290();
  sub_10004AE50();
  v10 = swift_task_alloc();
  v11 = sub_10001D6A0(v10);
  *v11 = v12;
  v11[1] = sub_10001D5E0;
  sub_10001D624();
  sub_10004B1A8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_10004A30C(uint64_t a1)
{
  sub_10004B1C0();
  sub_10001D70C();
  sub_10004AFE0();
  v1 = swift_task_alloc();
  v2 = sub_10004A854(v1);
  *v2 = v3;
  v2[1] = sub_10001D5E0;
  sub_10004A790();
  sub_10004B148();

  return sub_10003D054(v4, v5, v6, v7, v8);
}

uint64_t sub_10004A3A0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_10004AE44();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10004A3E4(uint64_t a1)
{
  sub_10004B1C0();
  sub_10001D70C();
  sub_10004AFE0();
  v1 = swift_task_alloc();
  v2 = sub_10004A854(v1);
  *v2 = v3;
  v2[1] = sub_10001D270;
  sub_10004A790();
  sub_10004B148();

  return sub_1000438D4(v4, v5, v6, v7, v8);
}

uint64_t sub_10004A478()
{
  _Block_release(*(v0 + 24));
  v1 = sub_10004B000();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10004A4A8()
{
  sub_10001D674();
  v0 = swift_task_alloc();
  v1 = sub_10001D6A0(v0);
  *v1 = v2;
  v1[1] = sub_10001D5E0;
  v3 = sub_10001D624();

  return v4(v3);
}

uint64_t sub_10004A54C()
{
  _Block_release(*(v0 + 24));
  v1 = sub_10004B000();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10004A584()
{
  sub_10001D674();
  v0 = swift_task_alloc();
  v1 = sub_10001D6A0(v0);
  *v1 = v2;
  v1[1] = sub_10001D5E0;
  v3 = sub_10001D624();

  return v4(v3);
}

uint64_t sub_10004A628(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10004A684()
{
  result = qword_1000D3208;
  if (!qword_1000D3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3208);
  }

  return result;
}

uint64_t sub_10004A728(uint64_t a1)
{

  return swift_once();
}

void sub_10004A80C()
{
  v1[20] = sub_100043724;
  v1[21] = v0;
  v1[22] = v2;
}

uint64_t sub_10004A834(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = _NSConcreteStackBlock;
  return result;
}

unint64_t sub_10004A87C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v5 + 4) = v4;
  *(v5 + 12) = 2082;

  return sub_1000847A8(v2, v3, va);
}

uint64_t sub_10004A8C4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 24) = sub_100040918;

  return swift_continuation_init();
}

uint64_t sub_10004A91C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _print_unlocked<A, B>(_:_:)();
}

void sub_10004A93C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_10004A95C(uint64_t a1@<X8>)
{
  v3 = 0xD00000000000001ALL;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

uint64_t sub_10004A98C()
{
}

uint64_t sub_10004A9A8()
{

  return swift_slowAlloc();
}

void sub_10004A9C8()
{
  v1 = 8285;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

unint64_t sub_10004A9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v13 = a11;
  v14 = a12;

  return sub_1000847A8(v13, v14, &a10);
}

uint64_t sub_10004AA1C()
{
}

uint64_t sub_10004AA4C()
{
}

uint64_t sub_10004AA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v4 - 104) = a1;
  *(v4 - 96) = a2;
  *(v4 - 88) = v2;
  return v3;
}

uint64_t sub_10004AA90()
{

  return swift_arrayDestroy();
}

uint64_t sub_10004AAAC()
{

  return swift_slowAlloc();
}

void sub_10004AAE4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_10004AB04(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_10004AB24()
{
}

uint64_t sub_10004AB40()
{

  return swift_slowAlloc();
}

uint64_t sub_10004AB5C()
{

  return swift_slowAlloc();
}

uint64_t sub_10004AB78()
{

  return swift_slowAlloc();
}

void sub_10004AB94(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_10004ABF0()
{
}

uint64_t sub_10004AC1C()
{

  return swift_arrayDestroy();
}

void sub_10004AC38(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_10004AC84(uint64_t result)
{
  *(v1 + 456) = result;
  *(v1 + 400) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10004ACA4(uint64_t result)
{
  *(v1 + 456) = result;
  *(v1 + 400) = _NSConcreteStackBlock;
  return result;
}

void sub_10004AD08()
{
  v1 = 8285;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

void sub_10004AD4C()
{
  v1 = 8250;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

void sub_10004ADC0()
{
  v1 = 8285;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

void sub_10004ADF4(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000012;

  v2 = a1 | 0x8000000000000000;
  String.append(_:)(*&v3);
}

unint64_t sub_10004AE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v12 = a10;
  v13 = a11;

  return sub_1000847A8(v12, v13, &a9);
}

uint64_t sub_10004AE2C()
{
}

void sub_10004AE74(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_10004AEA8()
{
}

uint64_t sub_10004AEC0()
{
}

void sub_10004AED8()
{
  v3 = v1;
  v4 = v0;

  String.append(_:)(*&v3);
}

BOOL sub_10004AF08()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10004AF20()
{
}

void sub_10004AF38()
{
  v3 = v1;
  v4 = v0;

  String.append(_:)(*&v3);
}

unint64_t sub_10004AF50()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);

  return sub_1000847A8(v2, v3, (v0 - 104));
}

uint64_t sub_10004AF78()
{
}

uint64_t sub_10004B010()
{
}

uint64_t sub_10004B038()
{
}

uint64_t sub_10004B050()
{
}

BOOL sub_10004B0A4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10004B0BC()
{
}

uint64_t sub_10004B0D4()
{

  return type metadata accessor for SKLogger(0);
}

unint64_t sub_10004B0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1000847A8(v10, v9, &a9);
}

uint64_t sub_10004B108(uint64_t a1)
{

  return swift_willThrow();
}

void sub_10004B12C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v13 = v10;
  v14 = v11;

  String.append(_:)(*&v13);
}

unint64_t sub_10004B15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16)
{
  v17 = a15;
  v18 = a16;

  return sub_1000847A8(v17, v18, &a14);
}

BOOL sub_10004B178()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10004B190()
{
}

uint64_t sub_10004B1D4(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

void sub_10004B1EC(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_10004B204@<X0>(_BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;

  return swift_willThrow();
}

void sub_10004B278()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

uint64_t sub_10004B2A8(uint64_t a1)
{

  return sub_10001267C(v1, 1, 1, a1);
}

id sub_10004B2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v7 + 1272);

  return [v5 v9];
}

BOOL sub_10004B310()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10004B328()
{
}

void sub_10004B340()
{
}

uint64_t sub_10004B358()
{
}

uint64_t sub_10004B370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _print_unlocked<A, B>(_:_:)();
}

void sub_10004B388()
{
  v3 = v0;
  v4 = v1;

  String.append(_:)(*&v3);
}

__n128 sub_10004B3A0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10004B3BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004B400(uint64_t result, int a2, int a3)
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

BOOL sub_10004B448(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000BE7A8, v2);

  return v3 != 0;
}

uint64_t sub_10004B494(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100012634(&qword_1000D3248, &qword_100096E90);
  sub_100014A8C();
  v6 = v5;
  sub_10002FF34();
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  sub_100012980(a1, a1[3]);
  v10 = sub_10004BD54();
  sub_10004C0EC(&unk_1000C0760, v11, v10);
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v4);
}

void *sub_10004B5B4(void *a1)
{
  sub_100012634(&qword_1000D3238, &qword_100096E88);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v3);
  v4 = sub_100012980(a1, a1[3]);
  v5 = sub_10004BD54();
  sub_10004C0AC(&unk_1000C0760, v6, v5);
  if (!v1)
  {
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    v7 = sub_10004C0D8();
    v8(v7);
  }

  sub_100012A18(a1);
  return v4;
}

BOOL sub_10004B6EC@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004B448(*a1);
  *a2 = result;
  return result;
}

BOOL sub_10004B75C@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10004B448(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004B794(uint64_t a1)
{
  v2 = sub_10004BD54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004B7D0(uint64_t a1)
{
  v2 = sub_10004BD54();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10004B80C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10004B5B4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10004B854(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
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

uint64_t sub_10004B8F0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100012634(&qword_1000D3228, &qword_100096E80);
  sub_100014A8C();
  v8 = v7;
  sub_10002FF34();
  __chkstk_darwin(v9);
  v11 = v15 - v10;
  sub_100012980(a1, a1[3]);
  v12 = sub_10004BC58();
  sub_10004C0EC(&type metadata for ProductFetchResponse.CodingKeys, v13, v12);
  v15[0] = a2;
  v15[1] = a3;
  sub_10004BD00();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v8 + 8))(v11, v6);
}

void *sub_10004BA24(void *a1)
{
  sub_100012634(&qword_1000D3210, &qword_100096E78);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v3);
  v4 = sub_100012980(a1, a1[3]);
  v5 = sub_10004BC58();
  sub_10004C0AC(&type metadata for ProductFetchResponse.CodingKeys, v6, v5);
  if (v1)
  {
    sub_100012A18(a1);
  }

  else
  {
    sub_10004BCAC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = sub_10004C0D8();
    v8(v7);
    v4 = v10;
    sub_100012A18(a1);
  }

  return v4;
}

uint64_t sub_10004BB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004B854(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10004BB98(uint64_t a1)
{
  v2 = sub_10004BC58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004BBD4(uint64_t a1)
{
  v2 = sub_10004BC58();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10004BC10@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10004BA24(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_10004BC58()
{
  result = qword_1000D3218;
  if (!qword_1000D3218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3218);
  }

  return result;
}

unint64_t sub_10004BCAC()
{
  result = qword_1000D3220;
  if (!qword_1000D3220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3220);
  }

  return result;
}

unint64_t sub_10004BD00()
{
  result = qword_1000D3230;
  if (!qword_1000D3230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3230);
  }

  return result;
}

unint64_t sub_10004BD54()
{
  result = qword_1000D3240;
  if (!qword_1000D3240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3240);
  }

  return result;
}

_BYTE *sub_10004BDB8(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10004BE54);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10004BE90()
{
  result = qword_1000D3250;
  if (!qword_1000D3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3250);
  }

  return result;
}

unint64_t sub_10004BEE8()
{
  result = qword_1000D3258;
  if (!qword_1000D3258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3258);
  }

  return result;
}

unint64_t sub_10004BF40()
{
  result = qword_1000D3260;
  if (!qword_1000D3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3260);
  }

  return result;
}

unint64_t sub_10004BF98()
{
  result = qword_1000D3268;
  if (!qword_1000D3268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3268);
  }

  return result;
}

unint64_t sub_10004BFF0()
{
  result = qword_1000D3270;
  if (!qword_1000D3270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3270);
  }

  return result;
}

unint64_t sub_10004C048()
{
  result = qword_1000D3278;
  if (!qword_1000D3278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3278);
  }

  return result;
}

uint64_t sub_10004C0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t sub_10004C0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_10004C10C(uint64_t a1)
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

uint64_t sub_10004C128(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_10004C168(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10004C1AC(uint64_t result, unsigned int a2)
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

uint64_t sub_10004C1E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ClientOverride(0);
    v9 = a1 + *(a3 + 36);

    return sub_100012898(v9, a2, v8);
  }
}

uint64_t sub_10004C284(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ClientOverride(0);
    v8 = v5 + *(a4 + 36);

    return sub_10001267C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RemoteAlertConfiguration(uint64_t a1)
{
  result = qword_1000D32D8;
  if (!qword_1000D32D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004C350(uint64_t a1)
{
  result = type metadata accessor for ClientOverride(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10004C3F8()
{
  sub_100030230();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for RemoteAlertConfiguration(0);
  sub_100019360();
  __chkstk_darwin(v10);
  sub_10002FC5C();
  v13 = v12 - v11;
  if (!v6)
  {
    v14 = v8;
    v15 = 1;
    goto LABEL_7;
  }

  AnyHashable.init<A>(_:)();
  sub_100021C10(v6, &v26);
  sub_10001CAD0(&v24);
  if (!v27)
  {
    sub_10002090C(&v26);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v16, qword_1000E4560);
    v17 = static os_log_type_t.error.getter();

    v18 = Logger.logObject.getter();

    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      *&v26 = swift_slowAlloc();
      *v19 = 136446466;
      v24 = 91;
      v25 = 0xE100000000000000;
      v20._countAndFlagsBits = v4;
      v20._object = v2;
      String.append(_:)(v20);
      v21._countAndFlagsBits = 8285;
      v21._object = 0xE200000000000000;
      String.append(_:)(v21);
      v22 = sub_1000847A8(v24, v25, &v26);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_1000847A8(0xD00000000000004ELL, 0x80000001000A0890, &v26);
      _os_log_impl(&_mh_execute_header, v18, v17, "%{public}s%{public}s", v19, 0x16u);
      swift_arrayDestroy();
    }

    sub_100018F34();
    swift_allocError();
    *v23 = 13;
    swift_willThrow();
    goto LABEL_14;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10004DCA4(&qword_1000D3380, type metadata accessor for RemoteAlertConfiguration, &unk_1000972B4);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100018DF0(0xD000000000000012, 0x80000001000A0870);

  if (!v0)
  {
    sub_10004DCEC(v13, v8, type metadata accessor for RemoteAlertConfiguration);
    v14 = v8;
    v15 = 0;
LABEL_7:
    sub_10001267C(v14, v15, 1, v9);
  }

LABEL_14:
  sub_100030218();
}

uint64_t sub_10004C78C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72756769666E6F63 && a2 == 0xEF44496E6F697461;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001000A08E0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6570795477656976 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001000A0900 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x764F746E65696C63 && a2 == 0xEF73656469727265)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10004C994(char a1)
{
  result = 0x79654B676F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x72756769666E6F63;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x6570795477656976;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x764F746E65696C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10004CA80(void *a1)
{
  v3 = v1;
  v5 = sub_100012634(&qword_1000D3340, &qword_1000972E8);
  sub_100014A8C();
  v7 = v6;
  sub_10002FF34();
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_100012980(a1, a1[3]);
  sub_10004D984();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  sub_10004E2D4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    sub_10004E2D4();
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = v3[5];
    v18 = v3[4];
    v19 = v11;
    v17 = 2;
    sub_100019008(v18, v11);
    sub_10001E308();
    sub_10004E2D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100018DF0(v18, v19);
    LOBYTE(v18) = 3;
    sub_10004DAEC();
    sub_10004E2D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v3[7];
    v18 = v3[6];
    v19 = v12;
    v17 = 4;
    sub_100019008(v18, v12);
    sub_10004E2D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100018DF0(v18, v19);
    type metadata accessor for RemoteAlertConfiguration(0);
    LOBYTE(v18) = 5;
    type metadata accessor for ClientOverride(0);
    sub_10004E2B0();
    sub_10004DCA4(v13, v14, &unk_100099EE0);
    sub_10004E2D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_10004CCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100030230();
  v25 = v24;
  v42 = v26;
  type metadata accessor for ClientOverride(0);
  sub_100019360();
  __chkstk_darwin(v27);
  sub_10002FC5C();
  v30 = v29 - v28;
  sub_100012634(&qword_1000D3328, &qword_1000972E0);
  sub_100014A8C();
  sub_10002FF34();
  __chkstk_darwin(v31);
  v32 = type metadata accessor for RemoteAlertConfiguration(0);
  sub_100019360();
  __chkstk_darwin(v33);
  sub_10002FC5C();
  v43 = v35 - v34;
  sub_100012980(v25, v25[3]);
  sub_10004D984();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    sub_100012A18(v25);
  }

  else
  {
    sub_10004E2C8();
    *v43 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v43 + 8) = v36;
    LOBYTE(v44) = 1;
    sub_10004E2C8();
    *(v43 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v43 + 24) = v37;
    sub_10001E244();
    sub_10004E2E0();
    sub_10004E2C8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v43 + 32) = v44;
    LOBYTE(v44) = 3;
    sub_10004D9D8();
    sub_10004E2E0();
    sub_10004E2C8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10004E2E0();
    sub_10004E2C8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v43 + 48) = v44;
    sub_10004E2B0();
    sub_10004DCA4(v38, v39, &unk_100099F08);
    sub_10004E2E0();
    sub_10004E2C8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = sub_10004E2A0();
    v41(v40);
    sub_10004DCEC(v30, v43 + *(v32 + 36), type metadata accessor for ClientOverride);
    sub_10004DA2C(v43, v42);
    sub_100012A18(v25);
    sub_10004DA90(v43);
  }

  sub_100030218();
}

uint64_t sub_10004D120(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x80000001000A0920 == a2)
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

void sub_10004D1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100030230();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v25 = sub_100012634(&qword_1000D3370, &qword_100097308);
  sub_100014A8C();
  v27 = v26;
  sub_10002FF34();
  __chkstk_darwin(v28);
  v30 = &a9 - v29;
  v31 = sub_100012634(&qword_1000D3378, &unk_100097310);
  sub_100014A8C();
  v33 = v32;
  sub_10002FF34();
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  sub_100012980(v24, v24[3]);
  sub_10004DB40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10004DBD4();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v27 + 8))(v30, v25);
  (*(v33 + 8))(v36, v31);
  sub_100030218();
}

void sub_10004D364()
{
  sub_100030230();
  v2 = v1;
  v3 = sub_100012634(&qword_1000D3350, &qword_1000972F0);
  sub_100014A8C();
  v36 = v4;
  sub_10002FF34();
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  v8 = sub_100012634(&qword_1000D3358, &unk_1000972F8);
  sub_100014A8C();
  v37 = v9;
  sub_10002FF34();
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  sub_100012980(v2, v2[3]);
  sub_10004DB40();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_9;
  }

  v34 = v7;
  v35 = v2;
  v13 = KeyedDecodingContainer.allKeys.getter();
  sub_10004DB98(v13, 0);
  v18 = v12;
  if (v16 == v17 >> 1)
  {
    v36 = v14;
LABEL_8:
    v28 = v8;
    v29 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    sub_100012634(qword_1000D2A78, &qword_1000959C0);
    *v31 = &type metadata for RemoteAlertViewType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v29);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v37 + 8))(v18, v28);
    v2 = v35;
LABEL_9:
    v32 = v2;
    goto LABEL_10;
  }

  if (v16 < (v17 >> 1))
  {
    v19 = sub_10004DC28(v16 + 1, v17 >> 1, v14, v15, v16, v17);
    v21 = v20;
    v23 = v22;
    swift_unknownObjectRelease();
    v24 = v21 == v23 >> 1;
    v25 = v35;
    v26 = v36;
    if (v24)
    {
      sub_10004DBD4();
      v27 = v34;
      sub_10004E2E0();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      (*(v26 + 8))(v27, v3);
      (*(v37 + 8))(v18, v8);
      v32 = v25;
LABEL_10:
      sub_100012A18(v32);
      sub_100030218();
      return;
    }

    v36 = v19;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_10004D6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004C78C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004D70C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004C98C();
  *a1 = result;
  return result;
}

uint64_t sub_10004D734(uint64_t a1)
{
  v2 = sub_10004D984();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004D770(uint64_t a1)
{
  v2 = sub_10004D984();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004D7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004D120(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10004D80C(uint64_t a1)
{
  v2 = sub_10004DB40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004D848(uint64_t a1)
{
  v2 = sub_10004DB40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004D884(uint64_t a1)
{
  v2 = sub_10004DBD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004D8C0(uint64_t a1)
{
  v2 = sub_10004DBD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10004D930()
{
  result = qword_1000D3320;
  if (!qword_1000D3320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3320);
  }

  return result;
}

unint64_t sub_10004D984()
{
  result = qword_1000D3330;
  if (!qword_1000D3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3330);
  }

  return result;
}

unint64_t sub_10004D9D8()
{
  result = qword_1000D3338;
  if (!qword_1000D3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3338);
  }

  return result;
}

uint64_t sub_10004DA2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAlertConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004DA90(uint64_t a1)
{
  v2 = type metadata accessor for RemoteAlertConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004DAEC()
{
  result = qword_1000D3348;
  if (!qword_1000D3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3348);
  }

  return result;
}

unint64_t sub_10004DB40()
{
  result = qword_1000D3360;
  if (!qword_1000D3360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3360);
  }

  return result;
}

void sub_10004DB98(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_10004E28C();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_10004DBD4()
{
  result = qword_1000D3368;
  if (!qword_1000D3368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3368);
  }

  return result;
}

uint64_t sub_10004DC28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10004DCA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004DCEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100019360();
  (*(v5 + 32))(a2, a1);
  return a2;
}

_BYTE *sub_10004DD50(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10004DDECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteAlertConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RemoteAlertConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x10004DF88);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10004DFC4()
{
  result = qword_1000D3388;
  if (!qword_1000D3388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3388);
  }

  return result;
}

unint64_t sub_10004E01C()
{
  result = qword_1000D3390;
  if (!qword_1000D3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3390);
  }

  return result;
}

unint64_t sub_10004E074()
{
  result = qword_1000D3398;
  if (!qword_1000D3398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3398);
  }

  return result;
}

unint64_t sub_10004E0CC()
{
  result = qword_1000D33A0;
  if (!qword_1000D33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D33A0);
  }

  return result;
}

unint64_t sub_10004E124()
{
  result = qword_1000D33A8;
  if (!qword_1000D33A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D33A8);
  }

  return result;
}

unint64_t sub_10004E17C()
{
  result = qword_1000D33B0;
  if (!qword_1000D33B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D33B0);
  }

  return result;
}

unint64_t sub_10004E1D4()
{
  result = qword_1000D33B8;
  if (!qword_1000D33B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D33B8);
  }

  return result;
}

unint64_t sub_10004E22C()
{
  result = qword_1000D33C0;
  if (!qword_1000D33C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D33C0);
  }

  return result;
}

uint64_t sub_10004E2FC(void *a1)
{
  v2 = sub_100012634(&qword_1000D33C8, &qword_1000976A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100012980(a1, a1[3]);
  sub_10004E4E0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10004E438(uint64_t a1)
{
  v2 = sub_10004E4E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004E474(uint64_t a1)
{
  v2 = sub_10004E4E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10004E4E0()
{
  result = qword_1000D33D0;
  if (!qword_1000D33D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D33D0);
  }

  return result;
}

unint64_t sub_10004E548()
{
  result = qword_1000D33D8;
  if (!qword_1000D33D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D33D8);
  }

  return result;
}

unint64_t sub_10004E5A0()
{
  result = qword_1000D33E0;
  if (!qword_1000D33E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D33E0);
  }

  return result;
}

uint64_t sub_10004E5F4()
{
  v1 = v0;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    Strong = (*(v1 + 120))();
    swift_weakAssign();
  }

  return Strong;
}

uint64_t sub_10004E644()
{
  sub_100013A88();
  v1[20] = v2;
  v1[21] = v0;
  v3 = type metadata accessor for URL();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = sub_10005429C();
  v4 = sub_100012634(&qword_1000D2000, qword_1000945D0);
  sub_10002FD0C(v4);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v5 = type metadata accessor for ClientTypeResponse(0);
  v1[27] = v5;
  sub_10002FD0C(v5);
  v1[28] = sub_10005429C();
  v6 = type metadata accessor for ClientTypeRequest(0);
  v1[29] = v6;
  sub_10002FD0C(v6);
  v1[30] = sub_10005429C();
  v7 = sub_100012634(&qword_1000D2800, qword_100099E20);
  sub_10002FD0C(v7);
  v1[31] = sub_10005429C();
  v8 = type metadata accessor for Client.Server(0);
  sub_10002FD0C(v8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v9 = type metadata accessor for ClientOverride.Server(0);
  sub_10002FD0C(v9);
  v1[34] = sub_10005429C();
  v10 = type metadata accessor for ClientOverride(0);
  v1[35] = v10;
  sub_10002FD0C(v10);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v11 = sub_10004AD24();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10004E83C()
{
  v1 = v0[38];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v34 = v0[34];
  v36 = v0[31];
  v6 = v0[20];
  v46 = v0[21];
  v48 = v0[29];
  v44 = *(v6 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID);
  v40 = *(v6 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID + 8);
  v42 = *(v6 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleVersion);
  v38 = *(v6 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleVersion + 8);

  sub_1000223E4(v7, v8, v9, v10, v11, v12, v13, v14, v30, v31, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50);
  v15 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  sub_10001267C(v4, 1, 2, v15);
  v16 = sub_100022084(v3, v4);
  sub_100053F08(v4, type metadata accessor for Client.Server);
  sub_100053F08(v3, type metadata accessor for Client.Server);
  if (v16)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  sub_10001267C(v35, v17, 3, v15);
  v33 = *(v6 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID);
  v18 = *(v6 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeExternalVersionID);
  sub_100053C28(v6 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_deviceVendorID, v37, &qword_1000D2800, qword_100099E20);
  *v1 = xmmword_100095310;
  v19 = v1 + v2[8];
  v20 = v1 + v2[9];
  v21 = v2[10];
  v22 = type metadata accessor for UUID();
  sub_10001267C(v1 + v21, 1, 1, v22);
  sub_100019064(*v1, v1[1]);
  *v1 = xmmword_100095310;
  v1[2] = v45;
  v1[3] = v41;
  v1[4] = v43;
  v1[5] = v39;
  sub_100053C84(v35, v1 + v2[7], type metadata accessor for ClientOverride.Server);
  *v19 = v18;
  v19[8] = 0;
  *v20 = v33;
  v20[8] = 0;
  sub_10002F384(v37, v1 + v21);
  v24 = *v47;
  v23 = v47[1];
  v25 = *(v49 + 20);
  sub_100054088();
  sub_100053D5C(v1, v5 + v25, v26);
  sub_10001267C(v5 + v25, 0, 1, v2);
  *v5 = v24;
  v5[1] = v23;
  v27 = qword_1000D1AA8;

  if (v27 != -1)
  {
    sub_100054198(&qword_1000D1AA8);
  }

  v28 = qword_1000D20F8;
  v0[39] = qword_1000D20F8;

  return _swift_task_switch(sub_10004EB08, v28, 0);
}

uint64_t sub_10004EB08()
{
  sub_100013A88();
  v1 = sub_10004E5F4();
  v0[40] = v1;
  v2 = swift_task_alloc();
  v0[41] = v2;
  *v2 = v0;
  v2[1] = sub_10004EBB0;
  v3 = v0[30];
  v4 = v0[28];

  return sub_1000184CC(v4, v3, v1);
}

uint64_t sub_10004EBB0()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v3 = v2;
  v4 = *v1;
  sub_1000540C0();
  *v5 = v4;
  *(v6 + 336) = v0;

  sub_1000193B4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10004ECAC()
{
  v78 = v0;
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60(&qword_1000D1AE8);
  }

  v1 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v1, qword_1000E4560);
  sub_1000542D0();
  v2 = v77;
  *(v0 + 112) = v76;
  *(v0 + 120) = v2;
  sub_10004ABE4();
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  if (qword_1000D1AC8 != -1)
  {
    sub_10004A728(&qword_1000D1AC8);
  }

  TaskLocal.get()();
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v8 = static os_log_type_t.debug.getter();

  v9 = Logger.logObject.getter();

  if (os_log_type_enabled(v9, v8))
  {
    v10 = sub_100039EE0();
    v11 = sub_100039EC8();
    *v10 = 136446466;
    sub_10004A980();
    v75 = v12;
    v76 = v13;
    v77 = v14;
    v15._countAndFlagsBits = v7;
    v15._object = v6;
    String.append(_:)(v15);
    sub_10004ADC0();
    v22 = sub_100054350(v76, v16, v17, v18, v19, v20, v21);

    *(v10 + 4) = v22;
    *(v10 + 12) = 2082;
    v23 = sub_1000847A8(v5, v4, &v75);

    *(v10 + 14) = v23;
    sub_100054310(&_mh_execute_header, v24, v25, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_100039E94(v11);
    sub_10004ABF0();
  }

  else
  {
  }

  v26 = *(v0 + 280);
  v27 = *(v0 + 208);
  sub_100053C28(*(v0 + 224) + *(*(v0 + 216) + 20), v27, &qword_1000D2000, qword_1000945D0);
  if (sub_100012898(v27, 1, v26) == 1)
  {
    sub_100049EA0(*(v0 + 208), &qword_1000D2000, qword_1000945D0);
  }

  else
  {
    v29 = *(v0 + 296);
    v28 = *(v0 + 304);
    v30 = *(v0 + 288);
    sub_100053C84(*(v0 + 208), v29, type metadata accessor for ClientOverride);
    sub_10004FA2C(v28, v29, v30);
    sub_100053F08(v29, type metadata accessor for ClientOverride);
    v31 = sub_10002FD24();
    sub_100053F08(v31, v32);
    sub_100053C84(v30, v28, type metadata accessor for ClientOverride);
  }

  v33 = *(v0 + 336);
  v34 = *(v0 + 304);
  v35 = *(v0 + 280);
  v37 = *(v0 + 192);
  v36 = *(v0 + 200);
  v38 = *(v0 + 176);
  v39 = *(v0 + 184);
  v40 = *(v0 + 160);
  type metadata accessor for Client(0);
  v41 = *(v40 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_auditToken + 32);
  v42 = *(v40 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_auditToken + 16);
  *(v0 + 384) = *(v40 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_auditToken);
  *(v0 + 400) = v42;
  *(v0 + 416) = v41;
  (*(v39 + 16))(v37, v40 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_callerBundleURL, v38);
  sub_100054088();
  sub_100053D5C(v34, v36, v43);
  sub_10001267C(v36, 0, 1, v35);
  sub_100025DD8(v0 + 384, v37, v36);
  if (v33)
  {
    v45 = *(v0 + 160);

    v46 = v45;
    v47 = *(v0 + 160);
  }

  else
  {
    v47 = v44;
    sub_1000542D0();

    v76 = 0xD00000000000001FLL;
    v77 = 0x80000001000A0960;
    v48._countAndFlagsBits = sub_10007F380();
    String.append(_:)(v48);

    v50 = v76;
    v49 = v77;
    TaskLocal.get()();
    v52 = *(v0 + 144);
    v51 = *(v0 + 152);
    v53 = static os_log_type_t.default.getter();

    v54 = Logger.logObject.getter();

    if (sub_100054368())
    {
      sub_100039EE0();
      sub_10004AB78();
      *v50 = 136446466;
      sub_10004A980();
      v75 = v55;
      v76 = v56;
      v77 = v57;
      v58._countAndFlagsBits = v52;
      v58._object = v51;
      String.append(_:)(v58);
      sub_10004ADC0();
      sub_100054350(v76, v59, v60, v61, v62, v63, v64);
      sub_10004AEA8();
      sub_1000540CC();
      v65 = sub_1000847A8(v50, v49, &v75);

      *(v50 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v54, v53, "%{public}s%{public}s", v50, 0x16u);
      sub_10004AC1C();
      sub_10004ABF0();
      sub_10004A98C();
    }

    else
    {
    }
  }

  *(v0 + 344) = v47;
  if (**(v0 + 224))
  {
    v66 = swift_task_alloc();
    *(v0 + 368) = v66;
    *v66 = v0;
    v66[1] = sub_10004F4D0;
    sub_1000542B4();

    return sub_100050158(v67, v68, v69, v70);
  }

  else
  {
    v73 = swift_task_alloc();
    *(v0 + 352) = v73;
    *v73 = v0;
    v73[1] = sub_10004F2BC;
    sub_1000542B4();

    return sub_10004FEFC();
  }
}

uint64_t sub_10004F2BC()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v6;
  v2[6] = v7;
  v2[7] = v0;
  v8 = *v1;
  sub_1000540C0();
  *v9 = v8;
  *(v10 + 360) = v0;

  sub_1000193B4();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10004F3C4()
{
  v26 = *(v2 + 32);
  v27 = *(v2 + 24);
  sub_100054134();

  sub_100054070();
  sub_100053F08(v3, v5);
  sub_100054040();
  sub_100053F08(v4, v6);
  sub_100054028();
  sub_100053F08(v1, v7);

  v16 = sub_100054268(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27);

  return v17(v16);
}

uint64_t sub_10004F4D0()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v5;
  v2[11] = v6;
  v2[12] = v7;
  v2[13] = v0;
  v8 = *v1;
  sub_1000540C0();
  *v9 = v8;
  *(v10 + 376) = v0;

  sub_1000193B4();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10004F5D8()
{
  v26 = *(v2 + 80);
  v27 = *(v2 + 72);
  sub_100054134();

  sub_100054070();
  sub_100053F08(v3, v5);
  sub_100054040();
  sub_100053F08(v4, v6);
  sub_100054028();
  sub_100053F08(v1, v7);

  v16 = sub_100054268(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27);

  return v17(v16);
}

uint64_t sub_10004F6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10004ABC8();
  sub_10004AC60();

  v17 = v16[38];
  v18 = v16[30];
  v30 = v16[26];
  v31 = v16[25];
  v32 = v16[24];
  v33 = v16[42];
  sub_100054040();
  sub_100053F08(v18, v19);
  sub_100054028();
  sub_100053F08(v17, v20);

  sub_100019370();
  sub_10004AAC8();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, v32, v33, a14, a15, a16);
}

uint64_t sub_10004F7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10004ABC8();
  sub_10004AC60();
  v17 = v16[43];
  v18 = v16[28];

  sub_100054070();
  sub_100053F08(v18, v19);
  v20 = v16[38];
  v21 = v16[30];
  v33 = v16[26];
  v34 = v16[25];
  v35 = v16[24];
  v36 = v16[45];
  sub_100054040();
  sub_100053F08(v21, v22);
  sub_100054028();
  sub_100053F08(v20, v23);

  sub_100019370();
  sub_10004AAC8();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v34, v35, v36, a14, a15, a16);
}

uint64_t sub_10004F90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10004ABC8();
  sub_10004AC60();
  v17 = v16[43];
  v18 = v16[28];

  sub_100054070();
  sub_100053F08(v18, v19);
  v20 = v16[38];
  v21 = v16[30];
  v33 = v16[26];
  v34 = v16[25];
  v35 = v16[24];
  v36 = v16[47];
  sub_100054040();
  sub_100053F08(v21, v22);
  sub_100054028();
  sub_100053F08(v20, v23);

  sub_100019370();
  sub_10004AAC8();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v34, v35, v36, a14, a15, a16);
}

uint64_t sub_10004FA2C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100012634(&qword_1000D2800, qword_100099E20);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053D5C(a1, a3, type metadata accessor for ClientOverride);
  v13 = a2[3];
  if (v13)
  {
    v14 = a2[2];

    *(a3 + 16) = v14;
    *(a3 + 24) = v13;
  }

  v15 = a2[5];
  if (v15)
  {
    v16 = a2[4];

    *(a3 + 16) = v16;
    *(a3 + 24) = v15;
  }

  v17 = type metadata accessor for ClientOverride(0);
  sub_100053CE0(a2 + v17[7], a3 + v17[7]);
  v18 = v17[8];
  if ((*(a2 + v18 + 8) & 1) == 0)
  {
    v19 = *(a2 + v18);
    v20 = a3 + v18;
    *v20 = v19;
    *(v20 + 8) = 0;
  }

  v21 = v17[9];
  if ((*(a2 + v21 + 8) & 1) == 0)
  {
    v22 = *(a2 + v21);
    v23 = a3 + v21;
    *v23 = v22;
    *(v23 + 8) = 0;
  }

  sub_100053C28(a2 + v17[10], v8, &qword_1000D2800, qword_100099E20);
  if (sub_100012898(v8, 1, v9) == 1)
  {
    sub_100049EA0(v8, &qword_1000D2800, qword_100099E20);
  }

  else
  {
    v24 = *(v10 + 32);
    v24(v12, v8, v9);
    v25 = v17[10];
    sub_100049EA0(a3 + v25, &qword_1000D2800, qword_100099E20);
    v24((a3 + v25), v12, v9);
    sub_10001267C(a3 + v25, 0, 1, v9);
  }

  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v26, qword_1000E4560);
  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v43 = 0xD00000000000001DLL;
  v44 = 0x80000001000A0980;
  v27._countAndFlagsBits = sub_10007F380();
  String.append(_:)(v27);

  v29 = v43;
  v28 = v44;
  if (qword_1000D1AC8 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v31 = v43;
  v30 = v44;
  v32 = static os_log_type_t.debug.getter();

  v33 = Logger.logObject.getter();

  if (os_log_type_enabled(v33, v32))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 136446466;
    v42 = v35;
    v43 = 91;
    v44 = 0xE100000000000000;
    v36._countAndFlagsBits = v31;
    v36._object = v30;
    String.append(_:)(v36);
    v37._countAndFlagsBits = 8285;
    v37._object = 0xE200000000000000;
    String.append(_:)(v37);
    v38 = sub_1000847A8(v43, v44, &v42);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2082;
    v39 = sub_1000847A8(v29, v28, &v42);

    *(v34 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s%{public}s", v34, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100050158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  *(v4 + 648) = a4;
  *(v4 + 392) = a2;
  *(v4 + 400) = a3;
  *(v4 + 408) = type metadata accessor for ProcessPurchaseResultRequest(0);
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = type metadata accessor for SKLogger(0);
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v4 + 448) = v8;
  *v8 = v4;
  v8[1] = sub_100050280;

  return sub_100051D48(a1, a2, v5);
}

uint64_t sub_100050280()
{
  sub_10001D674();
  sub_10001937C();
  v3 = v2;
  sub_1000540C0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 456) = v5;
  *(v3 + 464) = v0;

  if (v0)
  {

    sub_100019370();

    return v6();
  }

  else
  {
    sub_1000193B4();

    return _swift_task_switch(v8, v9, v10);
  }
}

uint64_t sub_1000503C8()
{
  sub_100013A88();
  v1 = [objc_allocWithZone(AMSSystemEngagementTask) initWithRequest:*(v0 + 456)];
  *(v0 + 472) = v1;
  *(v0 + 480) = sub_10002420C(v1);
  v2 = swift_task_alloc();
  *(v0 + 488) = v2;
  *v2 = v0;
  v2[1] = sub_100050488;
  v3 = *(v0 + 648);

  return sub_100052D80(v3);
}

uint64_t sub_100050488()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 496) = v3;

  v4 = sub_10004AD24();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100050570()
{
  v30 = v0;
  v1 = *(v0 + 496);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  [v2 setAccountMediaType:v1];

  [v3 setClientInfo:v2];
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60(&qword_1000D1AE8);
  }

  v4 = *(v0 + 480);
  v5 = sub_1000128C0(*(v0 + 424), qword_1000E4560);
  *(v0 + 504) = v5;
  _StringGuts.grow(_:)(39);

  v28 = 0xD000000000000025;
  v29 = 0x80000001000A09D0;
  *(v0 + 352) = [v4 accountMediaType];
  sub_100012634(&qword_1000D33E8, &qword_100097788);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v8 = v28;
  v7 = v29;
  if (qword_1000D1AC8 != -1)
  {
    sub_10004A728(&qword_1000D1AC8);
  }

  *(v0 + 512) = qword_1000E4520;
  TaskLocal.get()();
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  v11 = static os_log_type_t.debug.getter();

  Logger.logObject.getter();
  sub_10004AE2C();

  if (os_log_type_enabled(v5, v11))
  {
    v12 = sub_100039EE0();
    sub_100039EC8();
    *v12 = 136446466;
    sub_10004A980();
    v27 = v13;
    v28 = v14;
    v29 = v15;
    v16._countAndFlagsBits = v10;
    v16._object = v9;
    String.append(_:)(v16);
    sub_10004ADC0();
    v17 = sub_1000847A8(v28, v29, &v27);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    v18 = sub_1000847A8(v8, v7, &v27);

    *(v12 + 14) = v18;
    sub_100054330(&_mh_execute_header, v19, v20, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_10004A98C();
    sub_10004AA4C();
  }

  else
  {
  }

  v21 = 0;
  switch(*(v0 + 648))
  {
    case 1:
      if (qword_1000D1A90 != -1)
      {
        sub_1000541B8(&qword_1000D1A90);
      }

      v22 = &qword_1000E4470;
      goto LABEL_18;
    case 2:
      if (qword_1000D1A80 != -1)
      {
        sub_1000541F8(&qword_1000D1A80);
      }

      v22 = &qword_1000E4460;
      goto LABEL_18;
    case 3:
      if (qword_1000D1A88 != -1)
      {
        sub_1000541D8(&qword_1000D1A88);
      }

      v22 = &qword_1000E4468;
LABEL_18:
      v21 = *v22;
      swift_unknownObjectRetain();
      break;
    default:
      break;
  }

  v23 = *(v0 + 472);
  [v23 setBag:{v21, v27}];
  swift_unknownObjectRelease();
  v24 = [v23 present];
  *(v0 + 520) = v24;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 360;
  *(v0 + 24) = sub_1000509E8;
  v25 = swift_continuation_init();
  *(v0 + 136) = sub_100012634(&qword_1000D2358, &qword_100094C78);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10001B4BC;
  *(v0 + 104) = &unk_1000C0AA0;
  *(v0 + 112) = v25;
  [v24 resultWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1000509E8()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 528) = *(v3 + 48);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100051218()
{
  sub_100013A88();
  *(v0 + 600) = sub_10004E5F4();
  v1 = sub_10004AD24();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100051278(uint64_t a1)
{
  v2 = v1[73];
  v3 = v1[72];
  v5 = v1[51];
  v4 = v1[52];
  v6 = v1[50];
  TaskLocal.get()();
  v7 = v1[38];
  v8 = v1[39];
  v9 = v5[5];
  sub_100054088();
  sub_100053D5C(v6, v4 + v9, v10);
  v11 = type metadata accessor for ClientOverride(0);
  sub_10001267C(v4 + v9, 0, 1, v11);
  v12 = URL.absoluteString.getter();
  *v4 = v7;
  v4[1] = v8;
  v13 = (v4 + v5[6]);
  *v13 = v12;
  v13[1] = v14;
  v15 = (v4 + v5[7]);
  *v15 = v3;
  v15[1] = v2;
  v16 = swift_task_alloc();
  v1[76] = v16;
  *v16 = v1;
  v16[1] = sub_1000513B0;
  v17 = v1[75];
  v18 = v1[52];

  return sub_100018878(v18, v17);
}

uint64_t sub_1000513B0()
{
  sub_10001D674();
  v3 = v2;
  sub_10001937C();
  v5 = v4;
  sub_1000540C0();
  *v6 = v5;
  v7 = *v1;
  sub_1000540C0();
  *v8 = v7;
  v5[77] = v9;
  v5[78] = v10;
  v5[79] = v0;

  if (!v0)
  {
    v5[80] = v3;
  }

  sub_1000193B4();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100051D48(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 296) = a2;
  *(v4 + 304) = v3;
  *(v4 + 265) = a3;
  *(v4 + 288) = a1;
  *(v4 + 312) = type metadata accessor for SKLogger(0);
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  v5 = type metadata accessor for URL();
  *(v4 + 336) = v5;
  *(v4 + 344) = *(v5 - 8);
  *(v4 + 352) = swift_task_alloc();

  return _swift_task_switch(sub_100051E4C, 0, 0);
}

uint64_t sub_100051E4C(uint64_t a1, uint64_t a2)
{
  v21 = v2;
  if (qword_1000D18C8 != -1)
  {
    swift_once();
  }

  v4 = qword_1000E42A8;
  switch(*(v2 + 265))
  {
    case 1:
      if (qword_1000D1A90 != -1)
      {
        sub_1000541B8(&qword_1000D1A90);
      }

      v15 = &qword_1000E4470;
      goto LABEL_22;
    case 2:
      if (qword_1000D1A80 != -1)
      {
        sub_1000541F8(&qword_1000D1A80);
      }

      v15 = &qword_1000E4460;
      goto LABEL_22;
    case 3:
      if (qword_1000D1A88 != -1)
      {
        sub_1000541D8(&qword_1000D1A88);
      }

      v15 = &qword_1000E4468;
LABEL_22:
      *(v2 + 360) = *v15;
      v16 = [swift_unknownObjectRetain() URLForKey:v4];
      *(v2 + 368) = v16;
      *(v2 + 16) = v2;
      *(v2 + 56) = v2 + 256;
      *(v2 + 24) = sub_100052250;
      v17 = swift_continuation_init();
      *(v2 + 136) = sub_100012634(&qword_1000D33F8, &qword_100097798);
      *(v2 + 80) = _NSConcreteStackBlock;
      *(v2 + 88) = 1107296256;
      *(v2 + 96) = sub_1000531F0;
      *(v2 + 104) = &unk_1000C0AC8;
      *(v2 + 112) = v17;
      [v16 valueWithCompletion:v2 + 80];

      result = _swift_continuation_await(v2 + 16);
      break;
    default:
      if (qword_1000D1AE8 != -1)
      {
        sub_100039E60(&qword_1000D1AE8);
      }

      v5 = sub_1000128C0(*(v2 + 312), qword_1000E4560);
      if (qword_1000D1AC8 != -1)
      {
        sub_10004A728(&qword_1000D1AC8);
      }

      TaskLocal.get()();
      v6 = static os_log_type_t.error.getter();

      Logger.logObject.getter();
      sub_10004AE2C();
      if (os_log_type_enabled(v5, v6))
      {
        sub_100039EE0();
        sub_10004AAAC();
        *v3 = 136446466;
        sub_10004A980();
        v18 = v7;
        v19 = v8;
        v20 = v9;
        sub_10004AF38();
        sub_10004ADC0();
        sub_1000847A8(v19, v20, &v18);
        sub_10004AEA8();
        sub_10004A824();
        *(v3 + 14) = sub_1000847A8(0xD000000000000028, 0x80000001000A0BD0, &v18);
        sub_10004A93C(&_mh_execute_header, v10, v11, "%{public}s%{public}s");
        sub_100037BD0();
        sub_10004AA1C();
        sub_10004AB24();
      }

      sub_100018F34();
      swift_allocError();
      *v12 = 10;
      swift_willThrow();

      sub_100019370();

      result = v13();
      break;
  }

  return result;
}

uint64_t sub_100052250()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 376) = *(v3 + 48);
  sub_1000193B4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10005279C()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 432) = v3;

  v4 = sub_10004AD24();

  return _swift_task_switch(v4, v5, v6);
}

void sub_100052884(uint64_t a1)
{
  v3 = *(v1 + 432);
  if (v3)
  {
    v4 = *(v1 + 320);
    sub_100054058();
    sub_100053D5C(v5, v4, v6);
    _StringGuts.grow(_:)(38);

    v47 = 0xD000000000000020;
    v48 = 0x80000001000A0BA0;
    v7 = v3;
    *(v1 + 272) = [v7 accountType];
    sub_100012634(&qword_1000D3400, &qword_1000977A8);
    v8._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 8250;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
    v10 = [v7 ams_DSID];

    *(v1 + 280) = v10;
    sub_100012634(&qword_1000D3408, qword_1000977B0);
    v11._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v11);

    v13 = v47;
    v12 = v48;
    TaskLocal.get()();
    v14 = static os_log_type_t.default.getter();
    v15 = Logger.logObject.getter();
    v16 = os_log_type_enabled(v15, v14);
    v17 = *(v1 + 320);
    if (v16)
    {
      sub_100039EE0();
      sub_10004AB78();
      *v47 = 136446466;
      sub_10004A980();
      v46 = v18;
      v47 = v19;
      v48 = v20;
      v45 = v17;
      sub_10004AF38();
      sub_10004ADC0();
      v21 = v48;
      sub_1000847A8(v47, v48, &v46);
      sub_10004AEA8();
      sub_1000540CC();
      sub_1000847A8(v13, v12, &v46);
      sub_10004B010();
      *(v13 + 14) = v21;
      sub_100054178(&_mh_execute_header, v22, v23, "%{public}s%{public}s");
      sub_10004AC1C();
      sub_10004ABF0();
      sub_10004A98C();

      sub_100054104();
      v25 = v45;
    }

    else
    {

      sub_100054104();
      v25 = v17;
    }

    sub_100053F08(v25, v24);
  }

  else
  {
    v26 = *(v1 + 392);
    TaskLocal.get()();
    v27 = static os_log_type_t.default.getter();

    Logger.logObject.getter();
    sub_10004AE2C();
    if (os_log_type_enabled(v26, v27))
    {
      sub_100039EE0();
      sub_10004AAAC();
      *v2 = 136446466;
      sub_10004A980();
      v46 = v28;
      v47 = v29;
      v48 = v30;
      sub_10004AF38();
      sub_10004ADC0();
      sub_1000847A8(v47, v48, &v46);
      sub_10004AEA8();
      sub_10004A824();
      *(v2 + 14) = sub_1000847A8(0xD00000000000002ELL, 0x80000001000A0B40, &v46);
      sub_10004A93C(&_mh_execute_header, v31, v32, "%{public}s%{public}s");
      sub_100037BD0();
      sub_10004AA1C();
      sub_10004AB24();
    }
  }

  v33 = *(v1 + 432);
  v35 = *(v1 + 408);
  v34 = *(v1 + 416);
  v36 = *(v1 + 384);
  v37 = *(v1 + 352);
  v38 = *(v1 + 344);
  v44 = *(v1 + 336);
  URL._bridgeToObjectiveC()(*(v1 + 320));
  v40 = v39;
  [v34 setURL:v39];

  [v34 setAccount:v33];
  TaskLocal.get()();
  sub_100053DB8(*(v1 + 192), *(v1 + 200), v34);
  sub_100053E1C(v35, v34);
  [v34 setFailOnDismiss:0];
  sub_10004ABE4();
  v41 = String._bridgeToObjectiveC()();
  [v34 setMediaClientIdentifier:v41];

  swift_unknownObjectRelease();
  (*(v38 + 8))(v37, v44);

  sub_10004AC54();
  sub_1000542B4();

  __asm { BRAA            X2, X16 }
}