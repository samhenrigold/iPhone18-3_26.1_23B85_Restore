uint64_t sub_1000BA894()
{
  if (qword_10039D4F8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A19A0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = _typeName(_:qualified:)();
    v6 = sub_100008F6C(v4, v5, &v11);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    v7 = showFunction(signature:_:)(0x6374614264616572, 0xEB00000000292868, _swiftEmptyArrayStorage);
    v9 = sub_100008F6C(v7, v8, &v11);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
  }

  sub_100004074(&qword_1003A1640, &qword_1002C5980);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_1000BAAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TLVTag();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for TLV();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000BBD6C();
  if (!v2)
  {
    v11 = sub_1000C0704(*(a1 + 24));
    v13 = v11;
    v14 = v12;
    v15 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v15 != 2 || *(v11 + 16) == *(v11 + 24))
      {
        goto LABEL_13;
      }
    }

    else if (v15)
    {
      if (v11 == v11 >> 32)
      {
LABEL_13:

        sub_100009548(v13, v14);
        v16 = type metadata accessor for MPOCMonitorBatch(0);
        return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
      }
    }

    else if ((v12 & 0xFF000000000000) == 0)
    {
      goto LABEL_13;
    }

    v20[1] = 0;
    static TLVTag.asn1Sequence.getter();
    sub_1000094F4(v13, v14);
    TLV.init(tag:value:)();

    if (v15 == 2)
    {
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      sub_100009548(v13, v14);
      v14 = v17 - v18;
      if (!__OFSUB__(v17, v18))
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (v15 == 1)
    {
      result = sub_100009548(v13, v14);
      if (__OFSUB__(HIDWORD(v13), v13))
      {
        __break(1u);
        return result;
      }

      v14 = HIDWORD(v13) - v13;
      goto LABEL_18;
    }

    sub_100009548(v13, v14);
    v14 = BYTE6(v14);
LABEL_18:
    (*(v7 + 32))(a2, v9, v6);
    v19 = type metadata accessor for MPOCMonitorBatch(0);
    *(a2 + *(v19 + 20)) = v14;
    return (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
  }

  return result;
}

uint64_t sub_1000BAD90()
{
  if (qword_10039D4F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A19A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100008F6C(v5, v6, &v12);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0xD000000000000017, 0x800000010034B6A0, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, &v12);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v0)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1000BAFA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000BBD6C();
  if (!v2)
  {
    sub_1000C0CBC(*(a1 + 24));
    v7 = v6;

    *a2 = v7;
  }

  return result;
}

uint64_t sub_1000BB000(uint64_t a1)
{
  if (qword_10039D4F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A19A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100008F6C(v5, v6, &v13);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0x614265766F6D6572, 0xEF293A5F28686374, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, &v13);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  __chkstk_darwin(v11);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_1000BB234(uint64_t a1, uint64_t a2)
{
  result = sub_1000BBD6C();
  if (!v2)
  {
    v5 = result;
    v6 = sub_1000BC050();
    v7 = type metadata accessor for MPOCMonitorBatch(0);
    sub_1000C0E3C(*(a2 + *(v7 + 20)), v6);
    sub_1000BD75C(v5, v6);
  }

  return result;
}

uint64_t sub_1000BB2F0()
{
  if (qword_10039D4F8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A19A0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = _typeName(_:qualified:)();
    v6 = sub_100008F6C(v4, v5, &v11);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    v7 = showFunction(signature:_:)(0x6C4165766F6D6572, 0xEB0000000029286CLL, _swiftEmptyArrayStorage);
    v9 = sub_100008F6C(v7, v8, &v11);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
  }

  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_1000BB4F8(uint64_t a1)
{
  result = sub_1000BBD6C();
  if (!v1)
  {
    sub_1000C1180();
  }

  return result;
}

uint64_t sub_1000BB538()
{
  if (qword_10039D4F8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A19A0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = _typeName(_:qualified:)();
    v6 = sub_100008F6C(v4, v5, &v12);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    v7 = showFunction(signature:_:)(0xD000000000000018, 0x800000010034B660, _swiftEmptyArrayStorage);
    v9 = sub_100008F6C(v7, v8, &v12);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
  }

  __chkstk_darwin(v10);
  return OS_dispatch_queue.sync<A>(execute:)();
}

char *sub_1000BB760(uint64_t a1)
{
  v3 = type metadata accessor for TLVTag();
  __chkstk_darwin(v3 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TLV();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v61 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = &v49 - v11;
  v13 = *(a1 + 24);
  v14 = __OFSUB__(v13, 80);
  v15 = v13 - 80;
  if (v14)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  v16 = (v15 * 3) >> 64;
  v17 = 3 * v15;
  if (v16 != v17 >> 63)
  {
    goto LABEL_32;
  }

  if (v17 >= 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 3;
  }

  result = sub_1000BBD6C();
  if (!v1)
  {
    v19 = result;
    v55 = sub_1000BC050();
    v20 = v18 >> 2;
    v54 = OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_timeBase;
    v60 = v19;
    v21 = sub_1000C0704(v20);
    v23 = v22;
    v49 = v20;
    v59 = v12;
    v52 = (v7 + 8);
    p_type = &stru_100399FF0.type;
    v51 = xmmword_1002C1670;
    v53 = v6;
    v50 = v5;
    while (1)
    {
      v25 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        if (v25 != 2)
        {
          goto LABEL_29;
        }

        v26 = *(v21 + 16);
        v27 = *(v21 + 24);
      }

      else
      {
        if (!v25)
        {
          if ((v23 & 0xFF000000000000) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_17;
        }

        v26 = v21;
        v27 = v21 >> 32;
      }

      if (v26 == v27)
      {
LABEL_29:
        sub_100009548(v21, v23);
        sub_1000BD75C(v60, v55);
      }

LABEL_17:
      v58 = 0;
      static TLVTag.asn1Sequence.getter();
      sub_1000094F4(v21, v23);
      TLV.init(tag:value:)();
      v28 = TLV.dataRepresentation.getter();
      v30 = v29;
      v31 = Data.base64EncodedString(options:)(0);
      object = v31._object;
      countAndFlagsBits = v31._countAndFlagsBits;
      sub_100009548(v28, v30);
      if (qword_10039D708 != -1)
      {
        swift_once();
      }

      v32 = static GlobalState.shared;
      result = [*(static GlobalState.shared + 88) p_type[492]];
      while (*(v32 + 104) > 0 || *(v32 + 112) == 1)
      {
        result = [*(v32 + 88) wait];
      }

      v33 = *(v32 + 96);
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_33;
      }

      *(v32 + 96) = v34;
      [*(v32 + 88) unlock];
      result = [*(v32 + 88) p_type[492]];
      v35 = *(v32 + 96);
      v14 = __OFSUB__(v35, 1);
      v36 = v35 - 1;
      if (v14)
      {
        goto LABEL_34;
      }

      *(v32 + 96) = v36;
      if (!v36)
      {
        [*(v32 + 88) broadcast];
      }

      [*(v32 + 88) unlock];
      SPRAttestationVaultCollect(0);
      v38 = v37;
      sub_100004074(&unk_1003A3C10, &unk_1002C3760);
      inited = swift_initStackObject();
      *(inited + 16) = v51;
      *(inited + 32) = 0x65736142656D6974;
      *(inited + 40) = 0xE800000000000000;
      v62 = *&v60[v54];
      *(inited + 48) = dispatch thunk of CustomStringConvertible.description.getter();
      *(inited + 56) = v40;
      *(inited + 64) = 0x73746E657665;
      v41 = object;
      v42 = countAndFlagsBits;
      *(inited + 72) = 0xE600000000000000;
      *(inited + 80) = v42;
      *(inited + 88) = v41;
      v43 = sub_100183EFC(inited);
      swift_setDeallocating();
      sub_100004074(&qword_10039FE90, &unk_1002C5970);
      swift_arrayDestroy();
      v44 = v61;
      v45 = v58;
      sub_1000BC438(0x3E0301u, v38, v43);
      if (v45)
      {
        (*v52)(v59, v53);
        sub_100009548(v21, v23);
      }

      sub_1000C0454(v44);
      v46 = v53;
      sub_100009548(v21, v23);
      v47 = *v52;
      (*v52)(v44, v46);
      v47(v59, v46);
      v21 = sub_1000C0704(v49);
      v23 = v48;
      p_type = (&stru_100399FF0 + 16);
    }
  }

  return result;
}

uint64_t sub_1000BBD6C()
{
  v26 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v26 - 8);
  __chkstk_darwin(v26);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v23 = v4;
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v25 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - v9;
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v24 = v0;
  v13 = sub_10000BE18((v0 + 32), *(v0 + 56));
  v14 = *(v5 + 16);
  v14(v10, *v13 + OBJC_IVAR____TtC14softposreaderd11Environment_storageURL, v4);
  v27[0] = 0x69726F74696E6F6DLL;
  v27[1] = 0xEF73676F6C2D676ELL;
  v15 = v26;
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v26);
  sub_10008AB88();
  URL.appending<A>(component:directoryHint:)();
  (*(v1 + 8))(v3, v15);
  v16 = *(v5 + 8);
  v17 = v10;
  v18 = v23;
  v16(v17, v23);
  v19 = v25;
  v14(v25, v12, v18);
  sub_10000CCE4(v24 + 72, v27);
  type metadata accessor for MPOCMonitorStore(0);
  swift_allocObject();
  v20 = sub_1000BF7F4(v19, 1, v27);
  v16(v12, v18);
  return v20;
}

uint64_t sub_1000BC050()
{
  v27 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v27 - 8);
  __chkstk_darwin(v27);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - v13;
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = *(v0 + 56);
  v26 = v0;
  sub_10000BE18((v0 + 32), v17);
  sub_1000DE90C(v6);
  v18 = 1;
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000BD44(v6, &qword_1003A03D0, &unk_1002C3D50);
    sub_1000BCAB4();
    swift_allocError();
    *v19 = 0xD000000000000029;
    *(v19 + 8) = 0x800000010034B630;
    *(v19 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(v16, v6, v7);
    v28[0] = 0x69726F74696E6F6DLL;
    v28[1] = 0xEF73676F6C2D676ELL;
    v20 = v27;
    (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v27);
    sub_10008AB88();
    URL.appending<A>(component:directoryHint:)();
    (*(v1 + 8))(v3, v20);
    (*(v8 + 16))(v11, v14, v7);
    sub_10000CCE4(v26 + 72, v28);
    type metadata accessor for MPOCMonitorStore(0);
    swift_allocObject();
    v21 = v28[6];
    v22 = sub_1000BF7F4(v11, 0, v28);
    if (v21)
    {
      v18 = *(v8 + 8);
      (v18)(v14, v7);
      (v18)(v16, v7);
    }

    else
    {
      v18 = v22;
      v23 = *(v8 + 8);
      v23(v14, v7);
      v23(v16, v7);
    }
  }

  return v18;
}

void sub_1000BC438(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TLVTag();
  v7 = __chkstk_darwin(v6 - 8);
  __chkstk_darwin(v7);
  v9 = v4[12];
  v8 = v4[13];
  sub_10000BE18(v4 + 9, v9);
  v10 = (*(*(v8 + 8) + 24))(v9) * 1000000.0;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v10 <= 0)
  {
    _StringGuts.grow(_:)(34);

    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    sub_1000BC910();
    swift_allocError();
    *v12 = 0xD000000000000020;
    *(v12 + 8) = 0x800000010034B600;
    *(v12 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    swift_stdlib_random();
    sub_1000B9CA0(a3);
    static TLVTag.asn1Sequence.getter();
    sub_100004074(&qword_10039E2D8, &qword_1002C3720);
    type metadata accessor for TLV();
    *(swift_allocObject() + 16) = xmmword_1002C1680;
    static TLVTag.asn1OctetString.getter();
    TLV.init(tag:uint32:)();
    static TLVTag.asn1Integer.getter();
    sub_1000BC964();
    sub_1000BC9B8();
    TLV.init<A>(tag:integer:)();
    static TLVTag.asn1Integer.getter();
    sub_1000BCA0C();
    sub_1000BCA60();
    TLV.init<A>(tag:integer:)();
    static TLVTag.asn1OctetString.getter();
    TLV.init(tag:uint64:)();
    static TLVTag.asn1Set.getter();
    TLV.init(tag:children:)();
    TLV.init(tag:children:)();
  }
}

uint64_t sub_1000BC7C4()
{
  sub_10000959C((v0 + 32));
  sub_10000959C((v0 + 72));
  sub_10000959C((v0 + 112));

  return swift_deallocClassInstance();
}

unint64_t sub_1000BC910()
{
  result = qword_1003A1AE8;
  if (!qword_1003A1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1AE8);
  }

  return result;
}

unint64_t sub_1000BC964()
{
  result = qword_1003A1AF0;
  if (!qword_1003A1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1AF0);
  }

  return result;
}

unint64_t sub_1000BC9B8()
{
  result = qword_1003A1AF8;
  if (!qword_1003A1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1AF8);
  }

  return result;
}

unint64_t sub_1000BCA0C()
{
  result = qword_1003A1B00;
  if (!qword_1003A1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1B00);
  }

  return result;
}

unint64_t sub_1000BCA60()
{
  result = qword_1003A1B08;
  if (!qword_1003A1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1B08);
  }

  return result;
}

unint64_t sub_1000BCAB4()
{
  result = qword_1003A1B10;
  if (!qword_1003A1B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1B10);
  }

  return result;
}

void *sub_1000BCB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v40 = a2;
  v39 = a5;
  v38[1] = *a5;
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v55 = type metadata accessor for Environment(0);
  v56 = sub_1000BDD70(&qword_1003A1B28, type metadata accessor for Environment, &unk_1002C7040);
  *&v54 = a1;
  v52 = type metadata accessor for DefaultSecureTimeKeeper();
  v53 = &off_100384E70;
  *&v51 = a3;
  v49 = type metadata accessor for MPOCDefaultAttestationData();
  v50 = &off_100380B10;
  *&v48 = a4;
  sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
  static DispatchQoS.background.getter();
  (*(v10 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);
  v46[0] = _swiftEmptyArrayStorage;
  sub_1000BDD70(&unk_10039E310, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004074(&qword_10039D7E0, &unk_1002BDC40);
  sub_1000BDDB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = v39;
  v14[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14[19] = 75000;
  if (qword_10039D4F8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000403C(v15, qword_1003A19A0);
  sub_10000CCE4(&v54, v46);
  sub_10000CCE4(&v51, v44);
  sub_10000CCE4(&v48, v42);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v18 = 136315394;
    v19 = _typeName(_:qualified:)();
    v21 = sub_100008F6C(v19, v20, &v41);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1002C1690;
    v23 = v47;
    v24 = sub_10000BE18(v46, v47);
    *(v22 + 56) = v23;
    v25 = sub_10000BE5C((v22 + 32));
    (*(*(v23 - 8) + 16))(v25, v24, v23);
    *(v22 + 88) = &type metadata for Int;
    v26 = v40;
    *(v22 + 64) = v40;
    v27 = v45;
    v28 = sub_10000BE18(v44, v45);
    *(v22 + 120) = v27;
    v29 = sub_10000BE5C((v22 + 96));
    (*(*(v27 - 8) + 16))(v29, v28, v27);
    v30 = v43;
    v31 = sub_10000BE18(v42, v43);
    *(v22 + 152) = v30;
    v32 = sub_10000BE5C((v22 + 128));
    (*(*(v30 - 8) + 16))(v32, v31, v30);
    v33 = showFunction(signature:_:)(0xD000000000000040, 0x800000010034B760, v22);
    v35 = v34;

    sub_10000959C(v46);
    sub_10000959C(v44);
    sub_10000959C(v42);
    v36 = sub_100008F6C(v33, v35, &v41);

    *(v18 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s.%s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(v46);
    sub_10000959C(v44);
    sub_10000959C(v42);
    v26 = v40;
  }

  sub_100029790(&v54, (v14 + 4));
  v14[3] = v26;
  sub_100029790(&v51, (v14 + 9));
  sub_100029790(&v48, (v14 + 14));
  return v14;
}

void *sub_1000BD190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = type metadata accessor for Environment(0);
  v32 = sub_1000BDD70(&qword_1003A1B28, type metadata accessor for Environment, &unk_1002C7040);
  v30[0] = a1;
  v28 = type metadata accessor for DefaultSecureTimeKeeper();
  v29 = &off_100384E70;
  v27[0] = a3;
  v25 = type metadata accessor for MPOCDefaultAttestationData();
  v26 = &off_100380B10;
  v24[0] = a4;
  type metadata accessor for MPOCDefaultMonitorLogger();
  v8 = swift_allocObject();
  v9 = sub_100022438(v30, v31);
  __chkstk_darwin(v9);
  v11 = (&v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_100022438(v27, v28);
  __chkstk_darwin(v13);
  v15 = (&v24[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_100022438(v24, v25);
  __chkstk_darwin(v17);
  v19 = (&v24[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_1000BCB24(*v11, a2, *v15, *v19, v8);
  sub_10000959C(v24);
  sub_10000959C(v27);
  sub_10000959C(v30);
  return v21;
}

void *sub_1000BD460(uint64_t a1)
{
  sub_1000E3850(v22);
  if (v1)
  {
  }

  else
  {
    v4 = a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
    v5 = *(v4 + *(type metadata accessor for Settings(0) + 36));
    sub_1000E4518(v21);
    sub_1000E51E0(v20);
    v7 = sub_100022438(v22, v22[3]);
    v22[6] = &v19;
    __chkstk_darwin(v7);
    v9 = (&v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = sub_100022438(v21, v21[3]);
    __chkstk_darwin(v11);
    v13 = (&v20[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = sub_100022438(v20, v20[3]);
    __chkstk_darwin(v15);
    v17 = (&v20[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v2 = sub_1000BD190(*v9, v5, *v13, *v17);

    sub_10000959C(v20);
    sub_10000959C(v21);
    sub_10000959C(v22);
  }

  return v2;
}

void sub_1000BD75C(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v4 = type metadata accessor for URL();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004074(&qword_1003A1B18, &unk_1002C6500);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v33 - v15;
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  sub_1000C13B4();
  if (!v2)
  {
    v36 = v7;
    v37 = v16;
    v38 = v9;
    v39 = a1;
    v34 = v6;
    v35 = v13;
    sub_1000C13B4();
    v19 = [objc_opt_self() defaultManager];
    v20 = OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileUrl;
    v21 = v39;
    v22 = v18;
    NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();

    v41 = 0;
    v23 = v40;
    v24 = v37;
    v25 = v4;
    (*(v40 + 16))(v37, v21 + v20, v4);
    (*(v23 + 56))(v24, 0, 1, v4);
    v26 = *(v36 + 48);
    v27 = v38;
    sub_1000BDC6C(v22, v38);
    sub_1000BDC6C(v24, v27 + v26);
    v28 = *(v23 + 48);
    if (v28(v27, 1, v25) == 1)
    {
      sub_10000BD44(v24, &qword_1003A03D0, &unk_1002C3D50);
      if (v28(v27 + v26, 1, v25) == 1)
      {
        sub_10000BD44(v27, &qword_1003A03D0, &unk_1002C3D50);
LABEL_12:
        sub_10000BD44(v22, &qword_1003A03D0, &unk_1002C3D50);
        return;
      }
    }

    else
    {
      v29 = v35;
      sub_1000BDC6C(v27, v35);
      if (v28(v27 + v26, 1, v25) != 1)
      {
        v31 = v34;
        (*(v23 + 32))(v34, v27 + v26, v25);
        sub_1000BDD70(&qword_1003A1B20, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        LODWORD(v39) = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *(v23 + 8);
        v32(v31, v25);
        sub_10000BD44(v24, &qword_1003A03D0, &unk_1002C3D50);
        v32(v29, v25);
        sub_10000BD44(v27, &qword_1003A03D0, &unk_1002C3D50);
        if (v39)
        {
          goto LABEL_12;
        }

LABEL_10:
        sub_1000BCAB4();
        swift_allocError();
        *v30 = 0xD000000000000018;
        *(v30 + 8) = 0x800000010034B680;
        *(v30 + 16) = 1;
        swift_willThrow();
        sub_10000BD44(v22, &qword_1003A03D0, &unk_1002C3D50);
        return;
      }

      sub_10000BD44(v24, &qword_1003A03D0, &unk_1002C3D50);
      (*(v23 + 8))(v29, v25);
    }

    sub_10000BD44(v27, &qword_1003A1B18, &unk_1002C6500);
    goto LABEL_10;
  }
}

uint64_t sub_1000BDC6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BDD70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000BDDB8()
{
  result = qword_10039E320;
  if (!qword_10039E320)
  {
    sub_1000040BC(&qword_10039D7E0, &unk_1002BDC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E320);
  }

  return result;
}

void *sub_1000BDE1C(uint64_t a1)
{
  v3 = type metadata accessor for TLVTag();
  v4 = __chkstk_darwin(v3 - 8);
  v45 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v33 - v6;
  v43 = type metadata accessor for TLV();
  v7 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v33 = v1;
  v52 = _swiftEmptyArrayStorage;
  v42 = v9;
  sub_10004E380(0, v10, 0);
  v11 = v52;
  v12 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v14 = result;
  v15 = 0;
  v16 = *(a1 + 36);
  v40 = (v7 + 32);
  v34 = a1 + 72;
  v39 = xmmword_1002C1670;
  v35 = v10;
  v36 = v7;
  v41 = a1 + 64;
  v37 = v16;
  v38 = a1;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_22;
    }

    if (v16 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v47 = 1 << v14;
    v48 = v14 >> 6;
    v46 = v15;
    v19 = *(*(a1 + 56) + 16 * v14);
    v49 = *(*(a1 + 48) + 16 * v14);
    v50 = v19;

    static TLVTag.asn1Sequence.getter();
    sub_100004074(&qword_10039E2D8, &qword_1002C3720);
    v20 = *(v7 + 72);
    v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v22 = swift_allocObject();
    v51 = v11;
    *(v22 + 16) = v39;
    static TLVTag.asn1IA5String.getter();

    TLV.init(tag:string:)();
    static TLVTag.asn1IA5String.getter();

    v23 = v42;
    TLV.init(tag:string:)();
    v11 = v51;
    TLV.init(tag:children:)();

    v52 = v11;
    v25 = v11[2];
    v24 = v11[3];
    if (v25 >= v24 >> 1)
    {
      sub_10004E380((v24 > 1), v25 + 1, 1);
      v23 = v42;
      v11 = v52;
    }

    v11[2] = v25 + 1;
    result = (*v40)(v11 + v21 + v25 * v20, v23, v43);
    a1 = v38;
    v17 = 1 << *(v38 + 32);
    v12 = v41;
    if (v14 >= v17)
    {
      goto LABEL_24;
    }

    v26 = *(v41 + 8 * v48);
    if ((v26 & v47) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v16) = v37;
    if (v37 != *(v38 + 36))
    {
      goto LABEL_26;
    }

    v27 = v26 & (-2 << (v14 & 0x3F));
    if (v27)
    {
      v17 = __clz(__rbit64(v27)) | v14 & 0x7FFFFFFFFFFFFFC0;
      v18 = v35;
    }

    else
    {
      v28 = v48 << 6;
      v29 = v48 + 1;
      v18 = v35;
      v30 = (v34 + 8 * v48);
      while (v29 < (v17 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_100064AB0(v14, v37, 0);
          v17 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_100064AB0(v14, v37, 0);
    }

LABEL_4:
    v15 = v46 + 1;
    v14 = v17;
    v7 = v36;
    if (v46 + 1 == v18)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000BE270(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v6 = type metadata accessor for TLVTag();
  v7 = __chkstk_darwin(v6 - 8);
  __chkstk_darwin(v7);
  v25[1] = v25 - v8;
  v27 = type metadata accessor for TLV();
  v9 = *(v27 - 8);
  v10 = v9;
  v11 = __chkstk_darwin(v27);
  v26 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v25 - v13;
  v25[0] = sub_1000BDE1C(a3);
  v32 = v3;
  static TLVTag.asn1Sequence.getter();
  sub_100004074(&qword_10039E2D8, &qword_1002C3720);
  v15 = *(v9 + 72);
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_1002C1690;
  v30 = v16;
  v31 = a1;
  static TLVTag.asn1Integer.getter();
  sub_10000A114();
  sub_1000B3FE0();
  TLV.init<A>(tag:integer:)();
  v31 = 0;
  static TLVTag.asn1Integer.getter();
  v17 = v28;
  TLV.init<A>(tag:integer:)();
  static TLVTag.asn1OctetString.getter();
  TLV.init(tag:uint64:)();
  static TLVTag.asn1Set.getter();
  v19 = v26;
  v18 = v27;
  TLV.init(tag:children:)();
  TLV.init(tag:children:)();
  (*(v9 + 16))(v19, v14, v18);
  swift_beginAccess();
  v20 = *(v17 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v17 + 16) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_10004D91C(0, *(v20 + 2) + 1, 1, v20);
    *(v17 + 16) = v20;
  }

  v23 = *(v20 + 2);
  v22 = *(v20 + 3);
  if (v23 >= v22 >> 1)
  {
    v20 = sub_10004D91C((v22 > 1), v23 + 1, 1, v20);
  }

  *(v20 + 2) = v23 + 1;
  (*(v10 + 32))(&v20[v30 + v23 * v15], v19, v18);
  *(v17 + 16) = v20;
  swift_endAccess();
  return (*(v10 + 8))(v14, v18);
}

uint64_t sub_1000BE5E4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TLVTag();
  __chkstk_darwin(v3 - 8);
  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {
    static TLVTag.asn1Sequence.getter();

    TLV.init(tag:children:)();
    v4 = *(*(v1 + 16) + 16);
    v5 = type metadata accessor for MPOCMonitorBatch(0);
    *(a1 + *(v5 + 20)) = v4;
    return (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
  }

  else
  {
    v7 = type metadata accessor for MPOCMonitorBatch(0);
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }
}

uint64_t sub_1000BE728(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for MPOCMonitorBatch(0) + 20));
  result = swift_beginAccess();
  if (!v2)
  {
    return swift_endAccess();
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*(v1 + 16) + 16) >= v2)
  {
    sub_1000BF098(0, v2);
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BE7BC()
{
  v1 = type metadata accessor for TLVTag();
  v2 = __chkstk_darwin(v1 - 8);
  v41 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v40 = v36 - v4;
  v5 = type metadata accessor for TLV();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v42 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v43 = v36 - v10;
  __chkstk_darwin(v9);
  v12 = v36 - v11;
  swift_beginAccess();
  v13 = *(v0 + 16);
  v48 = xmmword_1002BDC30;
  v14 = *(v13 + 16);
  v45 = v0;
  v44 = v6;
  v38 = v5;
  if (v14)
  {
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v47 = v16;
    v39 = *(v15 + 64);
    *&v46 = (v39 + 32) & ~v39;
    v17 = v13 + v46;
    v18 = *(v15 + 56);
    v49 = v15;
    v19 = (v15 - 8);
    v37 = v13;

    do
    {
      v47(v12, v17, v5);
      v20 = TLV.dataRepresentation.getter();
      v21 = v18;
      v23 = v22;
      Data.append(_:)();
      v24 = v23;
      v18 = v21;
      sub_100009548(v20, v24);
      (*v19)(v12, v5);
      v17 += v21;
      --v14;
    }

    while (v14);

    v47 = *(&v48 + 1);
    v49 = v48;
    v25 = v46;
  }

  else
  {
    v49 = 0;
    v18 = *(v6 + 72);
    v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v47 = 0xC000000000000000;
  }

  v39 = sub_100004074(&qword_10039E2D8, &qword_1002C3720);
  v26 = swift_allocObject();
  v46 = xmmword_1002C1670;
  v37 = v26;
  *(v26 + 16) = xmmword_1002C1670;
  static TLVTag.asn1Sequence.getter();
  v36[1] = 2 * v18;
  *(swift_allocObject() + 16) = v46;
  static TLVTag.asn1IA5String.getter();
  TLV.init(tag:string:)();
  static TLVTag.asn1IA5String.getter();
  TLV.init(tag:string:)();
  TLV.init(tag:children:)();
  static TLVTag.asn1Sequence.getter();
  *(swift_allocObject() + 16) = v46;
  static TLVTag.asn1IA5String.getter();
  TLV.init(tag:string:)();
  static TLVTag.asn1IA5String.getter();
  Data.base64EncodedString(options:)(0);
  TLV.init(tag:string:)();
  TLV.init(tag:children:)();
  static TLVTag.asn1Sequence.getter();
  *(swift_allocObject() + 16) = xmmword_1002C1690;
  *&v46 = v25;
  *&v48 = 4064001;
  static TLVTag.asn1Integer.getter();
  sub_10000A114();
  sub_1000B3FE0();
  TLV.init<A>(tag:integer:)();
  *&v48 = 0;
  static TLVTag.asn1Integer.getter();
  TLV.init<A>(tag:integer:)();
  static TLVTag.asn1OctetString.getter();
  TLV.init(tag:uint64:)();
  v39 = v18;
  static TLVTag.asn1Set.getter();
  TLV.init(tag:children:)();
  v27 = v43;
  TLV.init(tag:children:)();
  v28 = v45;
  *(v45 + 16) = _swiftEmptyArrayStorage;

  v29 = v44;
  v30 = v42;
  v31 = v38;
  (*(v44 + 16))(v42, v27, v38);
  swift_beginAccess();
  *(v28 + 16) = _swiftEmptyArrayStorage;
  v32 = sub_10004D91C(0, 1, 1, _swiftEmptyArrayStorage);
  *(v28 + 16) = v32;
  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  if (v34 >= v33 >> 1)
  {
    v32 = sub_10004D91C((v33 > 1), v34 + 1, 1, v32);
  }

  *(v32 + 2) = v34 + 1;
  (*(v29 + 32))(&v32[v46 + v34 * v39], v30, v31);
  *(v28 + 16) = v32;
  swift_endAccess();
  sub_100009548(v49, v47);
  return (*(v29 + 8))(v27, v31);
}

uint64_t sub_1000BEDB8()
{

  return swift_deallocClassInstance();
}

BOOL sub_1000BEE5C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 16) + 16) != 0;
}

uint64_t sub_1000BEED4()
{
  v1 = *v0;
  swift_beginAccess();
  *(v1 + 16) = _swiftEmptyArrayStorage;
}

unint64_t sub_1000BEF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for TLV();
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

unint64_t sub_1000BF098(unint64_t result, uint64_t a2)
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

    v4 = sub_10004D91C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1000BEF50(v6, a2, 0);
  *v2 = v4;
  return result;
}

int64_t sub_1000BF158()
{
  v1 = type metadata accessor for CocoaError.Code();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for CocoaError();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NSFileHandle.read(upToCount:)();
  if (v0)
  {
    return result;
  }

  v8 = v7 >> 60;
  if (v7 >> 60 != 15)
  {
    v10 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v10 != 2)
      {
LABEL_20:
        v19 = v7;
        v20 = result;
        static CocoaError.Code.fileReadCorruptFile.getter();
        sub_100140524(_swiftEmptyArrayStorage);
        sub_1000C1B70(&qword_1003A1D98, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
        _BridgedStoredNSError.init(_:userInfo:)();
        CocoaError._nsError.getter();
        (*(v3 + 8))(v5, v2);
        swift_willThrow();
        return sub_10001A074(v20, v19);
      }

      v12 = *(result + 16);
      v11 = *(result + 24);
      v13 = __OFSUB__(v11, v12);
      v14 = v11 - v12;
      if (!v13)
      {
        if (v14 == 4)
        {
          goto LABEL_11;
        }

        goto LABEL_20;
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    else
    {
      if (v10)
      {
        goto LABEL_18;
      }

      if (BYTE6(v7) != 4)
      {
        goto LABEL_20;
      }

LABEL_11:
      while (v10 != 2)
      {
        if (v10 != 1)
        {
          v25 = result;
          goto LABEL_26;
        }

        v3 = result;
        if (result > result >> 32)
        {
          goto LABEL_31;
        }

        v5 = result;
        v15 = v7;
        v16 = __DataStorage._bytes.getter();
        if (!v16)
        {
          goto LABEL_36;
        }

        v17 = v16;
        v18 = __DataStorage._offset.getter();
        if (__OFSUB__(v3, v18))
        {
          goto LABEL_33;
        }

        v2 = (v3 - v18 + v17);
        result = __DataStorage._length.getter();
        if (v2)
        {
          goto LABEL_24;
        }

        __break(1u);
LABEL_18:
        if (__OFSUB__(HIDWORD(result), result))
        {
          goto LABEL_30;
        }

        if (HIDWORD(result) - result != 4)
        {
          goto LABEL_20;
        }
      }

      v5 = result;
      v21 = *(result + 16);
      v15 = v7;
      v22 = __DataStorage._bytes.getter();
      if (!v22)
      {
        goto LABEL_34;
      }

      v23 = v22;
      v24 = __DataStorage._offset.getter();
      if (!__OFSUB__(v21, v24))
      {
        v2 = (v21 - v24 + v23);
        __DataStorage._length.getter();
        if (!v2)
        {
          goto LABEL_35;
        }

LABEL_24:
        v25 = *v2;
        v7 = v15;
        result = v5;
LABEL_26:
        sub_10001A074(result, v7);
        v9 = bswap32(v25);
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __DataStorage._length.getter();
LABEL_35:
    __break(1u);
LABEL_36:
    result = __DataStorage._length.getter();
    __break(1u);
    return result;
  }

  v9 = 0;
LABEL_27:
  v27 = v8 > 0xE;
  return v9 | ((v8 > 0xE) << 32);
}

uint64_t sub_1000BF47C()
{
  v1 = type metadata accessor for CocoaError.Code();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for CocoaError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NSFileHandle.read(upToCount:)();
  if (!v0)
  {
    if (v7 >> 60 == 15)
    {
      return 0;
    }

    v8 = v7 >> 62;
    if ((v7 >> 62) <= 1)
    {
      if (!v8)
      {
        if (BYTE6(v7) != 8)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      if (!__OFSUB__(HIDWORD(result), result))
      {
        if (HIDWORD(result) - result != 8)
        {
          goto LABEL_19;
        }

LABEL_11:
        v13 = result;
        if (!v8)
        {
LABEL_25:
          sub_10001A074(result, v7);
          return bswap64(v13);
        }

        if (v8 == 2)
        {
          v14 = result;
          v15 = *(result + 16);
          v16 = v7;
          v17 = __DataStorage._bytes.getter();
          if (!v17)
          {
LABEL_32:
            __DataStorage._length.getter();
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v18 = v17;
          v19 = __DataStorage._offset.getter();
          if (!__OFSUB__(v15, v19))
          {
            v20 = (v15 - v19 + v18);
            __DataStorage._length.getter();
            if (!v20)
            {
              goto LABEL_33;
            }

            goto LABEL_24;
          }

          goto LABEL_30;
        }

        v23 = result;
        if (result <= result >> 32)
        {
          v14 = result;
          v16 = v7;
          v24 = __DataStorage._bytes.getter();
          if (!v24)
          {
LABEL_34:
            result = __DataStorage._length.getter();
            __break(1u);
            goto LABEL_35;
          }

          v25 = v24;
          v26 = __DataStorage._offset.getter();
          if (!__OFSUB__(v23, v26))
          {
            v20 = (v23 - v26 + v25);
            result = __DataStorage._length.getter();
            if (!v20)
            {
LABEL_35:
              __break(1u);
              return result;
            }

LABEL_24:
            v13 = *v20;
            v7 = v16;
            result = v14;
            goto LABEL_25;
          }

          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v8 == 2)
    {
      v10 = *(result + 16);
      v9 = *(result + 24);
      v11 = __OFSUB__(v9, v10);
      v12 = v9 - v10;
      if (v11)
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v12 == 8)
      {
        goto LABEL_11;
      }
    }

LABEL_19:
    v21 = v7;
    v22 = result;
    static CocoaError.Code.fileReadCorruptFile.getter();
    sub_100140524(_swiftEmptyArrayStorage);
    sub_1000C1B70(&qword_1003A1D98, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v3 + 8))(v5, v2);
    swift_willThrow();
    return sub_10001A074(v22, v21);
  }

  return result;
}

uint64_t sub_1000BF788()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1C30);
  sub_10000403C(v0, qword_1003A1C30);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.monitor.getter();
}

uint64_t sub_1000BF7F4(_BYTE *a1, int a2, void *a3)
{
  v4 = v3;
  v75 = a3;
  v66 = a2;
  v6 = type metadata accessor for CocoaError.Code();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin(v6);
  v8 = &v65[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v71 = &v65[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v65[-v13];
  v15 = OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileUrl;
  v73 = v10;
  v74 = a1;
  v17 = *(v10 + 16);
  v16 = v10 + 16;
  v17(v4 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileUrl, a1, v9);
  sub_10000411C(0, &qword_1003A06B8, NSFileHandle_ptr);
  v69 = v17;
  v70 = v15;
  v76 = v9;
  v17(v14, v4 + v15, v9);
  v18 = v72;
  v19 = sub_1000C0164(v14);
  if (v18)
  {
    v20 = v4;
    swift_errorRetain();
    static CocoaError.fileNoSuchFile.getter();
    sub_1000C1B70(&qword_1003A0FD0, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
    v21 = v68;
    v22 = static _ErrorCodeProtocol.~= infix(_:_:)();

    (*(v67 + 8))(v8, v21);
    if (v22)
    {

      v23 = v75;
      v24 = v73;
      if (qword_10039D500 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000403C(v25, qword_1003A1C30);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "No existing Monitor Store file", v28, 2u);
      }
    }

    else
    {
      if (qword_10039D500 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000403C(v29, qword_1003A1C30);
      swift_errorRetain();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        swift_errorRetain();
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v34;
        *v33 = v34;
        _os_log_impl(&_mh_execute_header, v30, v31, "Error reading existing Monitor Store: %@", v32, 0xCu);
        sub_10000BD44(v33, &unk_10039E220, &qword_1002C3D60);
      }

      else
      {
      }

      v23 = v75;
      v24 = v73;
    }

    goto LABEL_30;
  }

  v35 = v19;
  v20 = v4;
  if ((v66 & 1) == 0 || (v36 = sub_1000BF158(), (v36 & 0x100000000) != 0))
  {
    v23 = v75;
    v24 = v73;
    if (qword_10039D500 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000403C(v44, qword_1003A1C30);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_29;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Missing Monitor Store version";
  }

  else
  {
    if (v36 != 2)
    {
      v72 = v16;
      v55 = v36;
      if (qword_10039D500 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_10000403C(v56, qword_1003A1C30);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      v59 = os_log_type_enabled(v57, v58);
      v23 = v75;
      v24 = v73;
      if (v59)
      {
        v60 = swift_slowAlloc();
        *v60 = 67109120;
        *(v60 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v57, v58, "Unsupported Monitor Store version: %u", v60, 8u);
      }

      v45 = v71;
      goto LABEL_31;
    }

    v37 = sub_1000BF47C();
    if (v38 & 1) != 0 || (v61 = v37, v62 = sub_1000BF47C(), (v63))
    {
      v23 = v75;
      v24 = v73;
    }

    else
    {
      v23 = v75;
      v24 = v73;
      if (v62 >= 0x14)
      {
        v64 = v62;
        (*(v73 + 8))(v74, v76);
        *(v4 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_timeBase) = v61;
        *(v4 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize) = v64;
        *(v4 + 16) = v35;
        goto LABEL_36;
      }
    }

    if (qword_10039D500 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000403C(v39, qword_1003A1C30);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_29;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Invalid or missing Monitor Store header";
  }

  _os_log_impl(&_mh_execute_header, v40, v41, v43, v42, 2u);

LABEL_29:

LABEL_30:
  v45 = v71;
LABEL_31:
  sub_10000BE18(v23, v23[3]);
  sub_1000C02BC();
  v47 = v46;
  *(v20 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_timeBase) = v46;
  *(v20 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize) = 20;
  v69(v45, v20 + v70, v76);
  v48 = sub_1000C1728(v45, v47, 0x14uLL);
  v49 = *(v24 + 8);
  v49(v45, v76);
  *(v20 + 16) = v48;
  if (qword_10039D500 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_10000403C(v50, qword_1003A1C30);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Created empty Monitor Store V2", v53, 2u);
  }

  v49(v74, v76);
LABEL_36:
  sub_10000959C(v23);
  return v20;
}

id sub_1000C0164(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForUpdatingURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

void sub_1000C02BC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[10];
  v6 = v0[11];
  sub_10000BE18(v0 + 7, v5);
  (*(v6 + 8))(v5, v6);
  Date.timeIntervalSince1970.getter();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  v9 = v0[10];
  v10 = v0[11];
  sub_10000BE18(v0 + 7, v9);
  v11 = (v8 - (*(v10 + 24))(v9, v10)) * 1000000.0;
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v11 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v11 >= 1.84467441e19)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_1000C0454(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  if (TLV.derSize.getter() < 0)
  {
    __break(1u);
  }

  v5 = *(v1 + 16);
  v6 = OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize;
  v7 = *(v1 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize);
  v30 = 0;
  v8 = [v5 seekToOffset:v7 error:&v30];
  v9 = v30;
  if (!v8)
  {
    v13 = v30;
    v3 = _convertNSErrorToError(_:)();

LABEL_6:
    swift_willThrow();
    goto LABEL_7;
  }

  v10 = *(v1 + 16);
  sub_10000411C(0, &qword_1003A06B8, NSFileHandle_ptr);
  v11 = v9;
  v12 = v10;
  DERWriter.writeDER(tlv:)();
  if (v2)
  {

LABEL_7:
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v14._object = 0x800000010034B8A0;
    v14._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v14);
    v29 = v3;
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    _print_unlocked<A, B>(_:_:)();
    v15 = v30;
    v16 = v31;
    sub_1000BCAB4();
    swift_allocError();
    *v17 = v15;
    *(v17 + 8) = v16;
    *(v17 + 16) = 1;
    swift_willThrow();

    return;
  }

  v18 = *(v1 + 16);
  v19 = NSFileHandle.offset()();
  v3 = v20;
  if (v20)
  {

    goto LABEL_7;
  }

  v21 = v19;

  v22 = *(v4 + 16);
  v30 = 0;
  v23 = [v22 seekToOffset:12 error:&v30];
  v24 = v30;
  if (!v23)
  {
    v28 = v30;
    v3 = _convertNSErrorToError(_:)();

    goto LABEL_6;
  }

  v25 = *(v4 + 16);
  v29 = bswap64(v21);
  v30 = &v29;
  v31 = &v30;
  sub_1000C16D4();
  v26 = v24;
  v27 = v25;
  NSFileHandle.write<A>(contentsOf:)();

  *(v4 + v6) = v21;
}

uint64_t sub_1000C0704(int64_t a1)
{
  v2 = v1;
  v4 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  __chkstk_darwin(v4 - 8);
  v6 = v56 - v5;
  v7 = type metadata accessor for TLV();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 16);
  v12 = NSFileHandle.offset()();
  v14 = v13;
  if (v13)
  {

LABEL_11:
    v64 = 0;
    v65 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);
    v25._object = 0x800000010034B880;
    v25._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v25);
    v63 = v14;
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    _print_unlocked<A, B>(_:_:)();
    v26 = v64;
    v27 = v65;
    sub_1000BCAB4();
    swift_allocError();
    *v28 = v26;
    *(v28 + 8) = v27;
    *(v28 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v15 = v12;
    v62 = v6;

    if (a1 < 0)
    {
      goto LABEL_45;
    }

    v16 = *(v2 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize);
    v17 = v16 >= v15;
    v18 = v16 - v15;
    if (!v17)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
    }

    v58 = v8;
    v61 = v15;
    if (v18 >= a1)
    {
      v19 = a1;
    }

    else
    {
      v19 = v18;
    }

    v64 = sub_1000C1ACC(v19);
    v65 = v20;
    v63 = *(v2 + 16);
    v21 = v63;
    v22 = sub_10000411C(0, &qword_1003A06B8, NSFileHandle_ptr);
    v23 = v21;
    v24 = v62;
    DERReader.readDERTLV()();
    v56[1] = v22;
    v57 = v2;
    v59 = (v58 + 4);
    v60 = (v58 + 6);
    ++v58;
    v30 = v24;
    while (1)
    {

      if ((*v60)(v30, 1, v7) == 1)
      {
        sub_10000BD44(v30, &unk_10039E210, &unk_1002C65B0);
        goto LABEL_41;
      }

      (*v59)(v10, v30, v7);
      v31 = TLV.dataRepresentation.getter();
      v33 = v31;
      v34 = v32;
      v35 = v65 >> 62;
      if ((v65 >> 62) > 1)
      {
        if (v35 == 2)
        {
          v37 = *(v64 + 16);
          v38 = *(v64 + 24);
          v39 = __OFSUB__(v38, v37);
          v36 = v38 - v37;
          if (v39)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v36 = 0;
        }
      }

      else if (v35)
      {
        LODWORD(v36) = HIDWORD(v64) - v64;
        if (__OFSUB__(HIDWORD(v64), v64))
        {
          goto LABEL_47;
        }

        v36 = v36;
      }

      else
      {
        v36 = BYTE6(v65);
      }

      v40 = v32 >> 62;
      if ((v32 >> 62) > 1)
      {
        if (v40 == 2)
        {
          v43 = *(v31 + 16);
          v42 = *(v31 + 24);
          v39 = __OFSUB__(v42, v43);
          v41 = v42 - v43;
          if (v39)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v41 = 0;
        }
      }

      else if (v40)
      {
        LODWORD(v41) = HIDWORD(v31) - v31;
        if (__OFSUB__(HIDWORD(v31), v31))
        {
          goto LABEL_50;
        }

        v41 = v41;
      }

      else
      {
        v41 = BYTE6(v32);
      }

      v39 = __OFADD__(v36, v41);
      v44 = v36 + v41;
      if (v39)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (v44 > a1)
      {
        break;
      }

      v45 = a1;
      v46 = v7;
      Data.append(_:)();
      v47 = v57;
      v48 = *(v57 + 16);
      v61 = NSFileHandle.offset()();
      v14 = v49;
      if (v49)
      {
        (*v58)(v10, v46);

        sub_100009548(v33, v34);
LABEL_10:
        sub_100009548(v64, v65);
        goto LABEL_11;
      }

      (*v58)(v10, v46);

      sub_100009548(v33, v34);
      v50 = *(v47 + 16);
      v7 = v46;
      v63 = v50;
      v23 = v50;
      v30 = v62;
      DERReader.readDERTLV()();
      a1 = v45;
    }

    v51 = *(v57 + 16);
    v63 = 0;
    if (![v51 seekToOffset:v61 error:&v63])
    {
      v55 = v63;
      v14 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100009548(v33, v34);
      (*v58)(v10, v7);
      goto LABEL_10;
    }

    v52 = *v58;
    v53 = v63;
    v52(v10, v7);
    sub_100009548(v33, v34);
LABEL_41:
    v26 = v64;
    v54 = v65;
    sub_1000094F4(v64, v65);
    sub_100009548(v26, v54);
  }

  return v26;
}

void sub_1000C0CBC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = NSFileHandle.offset()();
  if (v6)
  {

    _StringGuts.grow(_:)(26);
    v7._object = 0x800000010034B880;
    v7._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v7);
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    _print_unlocked<A, B>(_:_:)();
    sub_1000BCAB4();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0xE000000000000000;
    *(v8 + 16) = 1;
    swift_willThrow();

    return;
  }

  v9 = v5;

  v10 = *(v2 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize);
  v11 = v10 >= v9;
  v12 = v10 - v9;
  if (!v11)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  v13 = __OFADD__(v12, a1);
  v14 = v12 + a1;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = __OFSUB__(v14, 1);
  v15 = v14 - 1;
  if (v13)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!a1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  if (v15 == 0x8000000000000000 && a1 == -1)
  {
    goto LABEL_18;
  }
}

void sub_1000C0E3C(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v4 = a1 + 20;
  v5 = OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize;
  if (*(v2 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize) < a1 + 20)
  {
    sub_1000BCAB4();
    swift_allocError();
    *v6 = xmmword_1002C6570;
    *(v6 + 16) = 0;
    goto LABEL_28;
  }

  v9 = *(v2 + 16);
  v38 = 0;
  v10 = [v9 seekToOffset:v4 error:&v38];
  v11 = v38;
  if (!v10)
  {
    goto LABEL_27;
  }

  v12 = *(v2 + v5);
  v13 = v12 - a1;
  if (v12 < a1)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v14 = *(a2 + 16);
  v38 = 0;
  v15 = v11;
  v16 = [v14 seekToOffset:12 error:&v38];
  v11 = v38;
  if (!v16)
  {
LABEL_27:
    v34 = v11;
    _convertNSErrorToError(_:)();

    goto LABEL_28;
  }

  v17 = *(a2 + 16);
  v36 = v2;
  v37 = bswap64(v13);
  v38 = &v37;
  v39 = &v38;
  sub_1000C16D4();
  v18 = v11;
  v19 = v17;
  NSFileHandle.write<A>(contentsOf:)();

  if (v3)
  {
    return;
  }

  v20 = v2;
  v21 = *(v2 + v5);
  v22 = v21 - v4;
  if (v21 < v4)
  {
LABEL_37:
    __break(1u);
  }

  if (!v22)
  {
    return;
  }

  while (1)
  {
    v23 = *(v20 + 16);
    v24 = NSFileHandle.read(upToCount:)();
    v26 = v25;

    if (v26 >> 60 == 15)
    {
      break;
    }

    v27 = *(a2 + 16);
    v38 = v24;
    v39 = v26;
    sub_10004F340();
    v28 = v27;
    NSFileHandle.write<A>(contentsOf:)();

    v29 = v26 >> 62;
    if ((v26 >> 62) > 1)
    {
      v20 = v36;
      if (v29 != 2)
      {
        sub_10001A074(v24, v26);
        goto LABEL_25;
      }

      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      sub_10001A074(v24, v26);
      v33 = v31 - v32;
      if (__OFSUB__(v31, v32))
      {
        goto LABEL_35;
      }
    }

    else
    {
      v20 = v36;
      if (!v29)
      {
        sub_10001A074(v24, v26);
        v30 = v22 >= BYTE6(v26);
        v22 -= BYTE6(v26);
        if (!v30)
        {
          goto LABEL_34;
        }

        goto LABEL_25;
      }

      sub_10001A074(v24, v26);
      LODWORD(v33) = HIDWORD(v24) - v24;
      if (__OFSUB__(HIDWORD(v24), v24))
      {
        goto LABEL_36;
      }

      v33 = v33;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    v30 = v22 >= v33;
    v22 -= v33;
    if (!v30)
    {
      goto LABEL_34;
    }

LABEL_25:
    if (!v22)
    {
      return;
    }
  }

  sub_1000BCAB4();
  swift_allocError();
  *v35 = xmmword_1002C6560;
  *(v35 + 16) = 1;
LABEL_28:
  swift_willThrow();
}

unint64_t *sub_1000C1180()
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize;
  *(v0 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize) = 20;
  v4 = *(v0 + 16);
  v20 = 0;
  v5 = [v4 seekToOffset:12 error:&v20];
  v6 = v20;
  if (!v5)
  {
    v11 = v20;
    v2 = _convertNSErrorToError(_:)();

LABEL_5:
    swift_willThrow();
    goto LABEL_6;
  }

  v7 = *(v0 + 16);
  v8 = v0;
  v19 = bswap64(*(v0 + v3));
  v20 = &v19;
  v21 = &v20;
  sub_1000C16D4();
  v9 = v6;
  v10 = v7;
  NSFileHandle.write<A>(contentsOf:)();
  if (!v1)
  {

    v17 = *(v8 + 16);
    v20 = 0;
    if ([v17 truncateAtOffset:20 error:&v20])
    {
      return v20;
    }

    v18 = v20;
    v2 = _convertNSErrorToError(_:)();

    goto LABEL_5;
  }

LABEL_6:
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v12._object = 0x800000010034B860;
  v12._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v12);
  v19 = v2;
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  _print_unlocked<A, B>(_:_:)();
  v13 = v20;
  v14 = v21;
  sub_1000BCAB4();
  swift_allocError();
  *v15 = v13;
  *(v15 + 8) = v14;
  *(v15 + 16) = 1;
  swift_willThrow();
}

id sub_1000C13B4()
{
  v1 = *(v0 + 16);
  v8 = 0;
  if ([v1 closeAndReturnError:&v8])
  {
    return v8;
  }

  v3 = v8;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v8 = 0;
  v9 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);
  v4._object = 0x800000010034B840;
  v4._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v4);
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  _print_unlocked<A, B>(_:_:)();
  v5 = v8;
  v6 = v9;
  sub_1000BCAB4();
  swift_allocError();
  *v7 = v5;
  *(v7 + 8) = v6;
  *(v7 + 16) = 1;
  swift_willThrow();
}

uint64_t sub_1000C152C()
{
  v1 = OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileUrl;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MPOCMonitorStore(uint64_t a1)
{
  result = qword_1003A1C70;
  if (!qword_1003A1C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C1624(uint64_t a1)
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

unint64_t sub_1000C16D4()
{
  result = qword_1003A1D90;
  if (!qword_1003A1D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1D90);
  }

  return result;
}

unint64_t **sub_1000C1728(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v23 = a3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(0);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 createFileAtPath:v11 contents:0 attributes:0];

  if (v12)
  {
    sub_10000411C(0, &qword_1003A06B8, NSFileHandle_ptr);
    (*(v7 + 16))(v9, a1, v6);
    v13 = sub_1000C0164(v9);
    if (v3)
    {
      v25 = 0;
      v26 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v25 = 0xD00000000000002DLL;
      v26 = 0x800000010034B8E0;
      v15 = URL.path(percentEncoded:)(0);
      String.append(_:)(v15);

      v16 = v25;
      v14 = v26;
      sub_1000BCAB4();
      swift_allocError();
      *v17 = v16;
      *(v17 + 8) = v14;
      *(v17 + 16) = 1;
      swift_willThrow();
    }

    else
    {
      v14 = v13;
      LODWORD(v24) = 0x2000000;
      v25 = &v24;
      v26 = (&v24 + 4);
      sub_1000C16D4();
      NSFileHandle.write<A>(contentsOf:)();
      v24 = bswap64(a2);
      v25 = &v24;
      v26 = &v25;
      NSFileHandle.write<A>(contentsOf:)();
      v24 = bswap64(v23);
      v25 = &v24;
      v26 = &v25;
      NSFileHandle.write<A>(contentsOf:)();
    }
  }

  else
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v25 = 0xD00000000000001ALL;
    v26 = 0x800000010034B8C0;
    v18 = URL.path(percentEncoded:)(0);
    String.append(_:)(v18);

    v19 = v25;
    v14 = v26;
    sub_1000BCAB4();
    swift_allocError();
    *v20 = v19;
    *(v20 + 8) = v14;
    *(v20 + 16) = 1;
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_1000C1ACC(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(capacity:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000C1B70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000C1BD4(int a1)
{
  _StringGuts.grow(_:)(26);

  sub_100004074(&qword_10039E268, &unk_1002C16F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002C1660;
  *(v2 + 56) = &type metadata for UInt32;
  *(v2 + 64) = &protocol witness table for UInt32;
  *(v2 + 32) = a1;
  v3._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0xD000000000000017;
}

uint64_t sub_1000C1CBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5441545345545441 && a2 == 0xEB000000004E4F49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x52554749464E4F43 && a2 == 0xED00004E4F495441 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x49524F54494E4F4DLL && a2 == 0xEA0000000000474ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x544E4F435F4E4950 && a2 == 0xEE0052454C4C4F52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x524544414552 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x435F455255434553 && a2 == 0xEE004C454E4E4148 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 6;
  }

  result = 7;
  if (a1 != 0xD000000000000011 || 0x800000010034B930 != a2)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C1EEC()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1DA0);
  sub_10000403C(v0, qword_1003A1DA0);
  sub_100023B24();
  return static SPRLogger.monitor.getter();
}

void sub_1000C1F48(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_10039D508 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_1003A1DA0);

  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1002C1790;
    v13 = word_1002C66F8[a1];
    *(v12 + 56) = &type metadata for UInt16;
    *(v12 + 32) = v13;
    type metadata accessor for SPRAttestationVaultOptions(0);
    *(v12 + 88) = v14;
    *(v12 + 64) = a2;
    *(v12 + 120) = sub_100004074(&qword_1003A0FE0, &qword_1002C66F0);
    *(v12 + 96) = a3;

    v15 = showFunction(signature:_:)(0xD000000000000029, 0x800000010034B9B0, v12);
    v17 = v16;

    v18 = sub_100008F6C(v15, v17, &v20);

    *(v8 + 14) = v18;
    _os_log_impl(&_mh_execute_header, oslog, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000C2240@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NullAuditor();
  result = swift_initStaticObject();
  a1[3] = v2;
  a1[4] = &off_100382E88;
  *a1 = result;
  return result;
}

void *sub_1000C2288(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100004074(&qword_1003A0FD8, &qword_1002C4F60);
  result = static _DictionaryStorage.copy(original:)();
  v6 = result;
  v7 = 0;
  v36 = result;
  v37 = a2;
  v10 = *(a2 + 64);
  v9 = a2 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v35 = result + 8;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = 16 * v18;
      v20 = (*(v37 + 48) + 16 * v18);
      v21 = v20[1];
      v38 = *v20;
      sub_10000CCE4(*(v37 + 56) + 40 * v18, v39);
      sub_10000BE18(v39, v39[3]);

      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      result = sub_10000959C(v39);
      v25 = (v18 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v26 = 1 << v18;
      v6 = v36;
      *(v35 + v25) |= v26;
      v27 = (v36[6] + v19);
      *v27 = v38;
      v27[1] = v21;
      v28 = (v36[7] + v19);
      *v28 = v22;
      v28[1] = v24;
      v29 = v36[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v36[2] = v31;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        (*(a4 + 8))(a1, 206, v6, a3);
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C2474()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1F10);
  sub_10000403C(v0, qword_1003A1F10);
  sub_100023B24();
  return static SPRLogger.monitor.getter();
}

uint64_t sub_1000C24D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100183EFC(_swiftEmptyArrayStorage);
  (*(a3 + 8))(a1, 206, v6, a2, a3);
}

void sub_1000C2554(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = dword_1002C67B8[a1] | (sub_1000C1CBC(v4[2], v4[3]) << 8);
  sub_10000BE18(v4 + 9, v4[12]);
  sub_100033A6C(a2);
  v9 = v8;
  v10 = v3[7];
  v11 = v3[8];
  sub_10000BE18(v4 + 4, v4[7]);
  (*(v11 + 8))(v7 | 1u, v9, a3, v10, v11);
  sub_1000257B0(v7 | 1, v9, a2);
}

uint64_t sub_1000C2804()
{

  sub_10000959C((v0 + 32));
  sub_10000959C((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_1000C289C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xEB000000004E4F49;
    v13 = 0x5441545345545441;
    v14 = 0x49524F54494E4F4DLL;
    v15 = 0xEA0000000000474ELL;
    if (a1 != 2)
    {
      v14 = 0xD000000000000014;
      v15 = 0x800000010034B9E0;
    }

    if (a1)
    {
      v13 = 0x52554749464E4F43;
      v12 = 0xED00004E4F495441;
    }

    if (a1 <= 1u)
    {
      v10 = v13;
    }

    else
    {
      v10 = v14;
    }

    if (v3 <= 1)
    {
      v11 = v12;
    }

    else
    {
      v11 = v15;
    }
  }

  else
  {
    v4 = 0xEE0052454C4C4F52;
    v5 = 0x544E4F435F4E4950;
    v6 = 0xD000000000000011;
    v7 = 0x800000010034B930;
    if (a1 != 7)
    {
      v6 = 0x4B4F545F454D4954;
      v7 = 0xEA00000000004E45;
    }

    if (a1 != 6)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0xE600000000000000;
    v9 = 0x524544414552;
    if (a1 != 4)
    {
      v9 = 0x435F455255434553;
      v8 = 0xEE004C454E4E4148;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }
  }

  (*(a3 + 8))(v10, v11, a2);
}

uint64_t sub_1000C2A44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  if (*(*a1 + 16) && (v11 = sub_1000F5A28(a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_retain_n();
  }

  else
  {
    sub_10000CCE4(a4 + 16, v32);
    sub_10000CCE4(a4 + 56, v31);
    v29 = *(a4 + 96);
    v14 = sub_100022438(v31, v31[3]);
    v33 = &v29;
    __chkstk_darwin(v14);
    v16 = (&v30[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = *v16;
    v19 = type metadata accessor for MPOCDefaultAttestationManager();
    v30[3] = v19;
    v30[4] = &off_100380AA8;
    v30[0] = v18;
    type metadata accessor for ComponentAuditor();
    v20 = swift_allocObject();
    v21 = sub_100022438(v30, v19);
    __chkstk_darwin(v21);
    v23 = (&v30[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    v25 = *v23;

    v26 = v29;

    v13 = sub_1000C2E28(a2, a3, v32, v25, v26, v20);
    sub_10000959C(v30);
    sub_10000959C(v31);
    swift_retain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[0] = *a1;
    sub_100180608(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *a1 = *&v32[0];
  }

  a5[3] = type metadata accessor for ComponentAuditor();
  a5[4] = &off_100382E98;

  *a5 = v13;
  return result;
}

uint64_t sub_1000C2D30()
{
  sub_10000959C((v0 + 16));
  sub_10000959C((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_1000C2DA4(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 104);
  os_unfair_lock_lock((v3 + 24));
  sub_1000C2E08((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 24));
}

void *sub_1000C2E28(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v29 = type metadata accessor for MPOCDefaultAttestationManager();
  v30 = &off_100380AA8;
  *&v28 = a4;
  if (qword_10039D510 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_1003A1F10);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136315394;
    nullsub_1();
    v16 = _typeName(_:qualified:)();
    v26 = a1;
    v18 = a2;
    v19 = a3;
    v20 = a5;
    v21 = sub_100008F6C(v16, v17, &v27);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v22 = showFunction(signature:_:)(0xD000000000000046, 0x800000010034BA90, _swiftEmptyArrayStorage);
    v24 = sub_100008F6C(v22, v23, &v27);
    a5 = v20;
    a3 = v19;
    a2 = v18;
    a1 = v26;

    *(v15 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s.%s", v15, 0x16u);
    swift_arrayDestroy();
  }

  a6[2] = a1;
  a6[3] = a2;
  sub_100029790(a3, (a6 + 4));
  sub_100029790(&v28, (a6 + 9));
  a6[14] = a5;
  return a6;
}

uint64_t sub_1000C3074(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = type metadata accessor for MPOCDefaultAttestationManager();
  v11[4] = &off_100380AA8;
  v11[0] = a2;
  sub_10000CCE4(a1, a4 + 16);
  sub_10000CCE4(v11, a4 + 56);
  *(a4 + 96) = a3;
  type metadata accessor for ComponentAuditor();

  v8 = Dictionary.init(minimumCapacity:)();
  sub_100004074(&qword_1003A20C0, &qword_1002C68D8);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;

  sub_10000959C(a1);
  sub_10000959C(v11);
  *(v9 + 16) = v8;

  *(a4 + 104) = v9;
  return a4;
}

uint64_t sub_1000C317C(uint64_t a1)
{
  sub_1000EC3E8(v20);
  if (v1)
  {
  }

  else
  {
    sub_1000E8A64(v19);
    sub_1000ED0B0();
    v5 = v4;
    v6 = sub_100022438(v19, v19[3]);
    __chkstk_darwin(v6);
    v8 = (&v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v11 = type metadata accessor for MPOCDefaultAttestationManager();
    v18[3] = v11;
    v18[4] = &off_100380AA8;
    v18[0] = v10;
    type metadata accessor for ComponentAuditorFactory();
    v12 = swift_allocObject();
    v13 = sub_100022438(v18, v11);
    __chkstk_darwin(v13);
    v15 = (&v18[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v2 = sub_1000C3074(v20, *v15, v5, v12);

    sub_10000959C(v18);
    sub_10000959C(v19);
  }

  return v2;
}

uint64_t sub_1000C33C8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A20C8);
  sub_10000403C(v0, qword_1003A20C8);
  sub_100023B24();
  return static SPRLogger.monitor.getter();
}

void *sub_1000C3424()
{
  v1 = v0;
  if (qword_10039D518 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A20C8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, &v13);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v13);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  sub_10000959C((v1 + 16));
  sub_10000959C((v1 + 56));

  return v1;
}

uint64_t sub_1000C3608()
{
  sub_1000C3424();

  return swift_deallocClassInstance();
}

void sub_1000C3660(int a1, unsigned __int8 a2, unsigned __int8 a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  if (qword_10039D518 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000403C(v11, qword_1003A20C8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v14 = 136315394;
    v15 = _typeName(_:qualified:)();
    v36 = v7;
    v17 = a1;
    v18 = a2;
    v19 = a3;
    v20 = sub_100008F6C(v15, v16, v38);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = showFunction(signature:_:)(0xD000000000000027, 0x800000010034BBE0, _swiftEmptyArrayStorage);
    v23 = sub_100008F6C(v21, v22, v38);

    *(v14 + 14) = v23;
    a3 = v19;
    a2 = v18;
    a1 = v17;
    v7 = v36;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s.%s", v14, 0x16u);
    swift_arrayDestroy();

    v6 = v5;
  }

  if (a1 < 0x3E9u)
  {
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    strcpy(v38, "Event value ");
    BYTE5(v38[1]) = 0;
    HIWORD(v38[1]) = -5120;
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    v31._object = 0x800000010034BBA0;
    v31._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v31);
    v39 = 0;
LABEL_14:
    _print_unlocked<A, B>(_:_:)();
    v34._countAndFlagsBits = 3026478;
    v34._object = 0xE300000000000000;
    String.append(_:)(v34);
    _print_unlocked<A, B>(_:_:)();
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    String.append(_:)(v35);

    sub_100021564(3200, v38[0], v38[1], 0);
    swift_willThrow();
    return;
  }

  if (a2 < 0x33u)
  {
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v38[0] = 0xD000000000000010;
    v38[1] = 0x800000010034BBC0;
LABEL_13:
    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);

    v33._object = 0x800000010034BBA0;
    v33._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v33);
    v39 = 0;
    goto LABEL_14;
  }

  if (a3 < 0x33u)
  {
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    strcpy(v38, "Origin value ");
    HIWORD(v38[1]) = -4864;
    goto LABEL_13;
  }

  v24 = (a1 << 16) | (a2 << 8) | a3;
  v25 = v7[5];
  v26 = v7[6];
  sub_10000BE18(v7 + 2, v25);
  sub_10000BE18(v7 + 7, v7[10]);
  sub_100033A6C(0);
  (*(v26 + 8))(v24, v27, a4, v25, v26);
  if (v6)
  {
    v38[0] = v6;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v28 = String.init<A>(describing:)();
    sub_100021564(3201, v28, v29, 0);
    swift_willThrow();
  }

  else
  {
    sub_1000257B0(v24, 0, 0);
  }
}

uint64_t *sub_1000C3BBC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v21 = type metadata accessor for MPOCDefaultAttestationManager();
  v22 = &off_100380AA8;
  *&v20 = a2;
  *(a4 + 13) = xmmword_1002C68E0;
  *(a4 + 15) = xmmword_1002C68F0;
  *(a4 + 17) = xmmword_1002C68F0;
  if (qword_10039D518 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_1003A20C8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100008F6C(v12, v13, &v19);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = showFunction(signature:_:)(0xD000000000000038, 0x800000010034BB60, _swiftEmptyArrayStorage);
    v17 = sub_100008F6C(v15, v16, &v19);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  sub_100029790(a1, (a4 + 2));
  sub_100029790(&v20, (a4 + 7));
  a4[12] = a3;
  return a4;
}

uint64_t *sub_1000C3DF4(uint64_t a1)
{
  sub_1000EC3E8(v20);
  if (v1)
  {
  }

  else
  {
    sub_1000E8A64(v19);
    sub_1000ED0B0();
    v5 = v4;
    v6 = sub_100022438(v19, v19[3]);
    __chkstk_darwin(v6);
    v8 = (&v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v11 = type metadata accessor for MPOCDefaultAttestationManager();
    v18[3] = v11;
    v18[4] = &off_100380AA8;
    v18[0] = v10;
    type metadata accessor for Monitor();
    v12 = swift_allocObject();
    v13 = sub_100022438(v18, v11);
    __chkstk_darwin(v13);
    v15 = (&v18[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v2 = sub_1000C3BBC(v20, *v15, v5, v12);

    sub_10000959C(v18);
    sub_10000959C(v19);
  }

  return v2;
}

uint64_t sub_1000C4040()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A21B0);
  sub_10000403C(v0, qword_1003A21B0);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.common.getter();
}

id sub_1000C40AC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [*(v0 + 16) newBackgroundContext];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1000C4110(void *a1)
{
  v70 = a1;
  v2 = type metadata accessor for URL.DirectoryHint();
  v64 = *(v2 - 8);
  v65 = v2;
  __chkstk_darwin(v2);
  v63 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v4 - 8);
  v62 = &v56 - v5;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v67 = &v56 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v56 - v14;
  __chkstk_darwin(v13);
  v17 = &v56 - v16;
  v68 = v1;
  *(v1 + 24) = 0;
  v18 = [objc_opt_self() current];
  v19 = [v18 bundle];

  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v19 URLForResource:v20 withExtension:v21];

  if (v22)
  {
    v66 = v19;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 32))(v17, v15, v6);
    v23 = objc_allocWithZone(NSManagedObjectModel);
    URL._bridgeToObjectiveC()(v24);
    v26 = v25;
    v27 = [v23 initWithContentsOfURL:v25];

    if (v27)
    {
      v58 = v27;
      v28 = *sub_10000BE18(v70, v70[3]) + OBJC_IVAR____TtC14softposreaderd11Environment_storageURL;
      v57 = *(v7 + 16);
      v57(v10, v28, v6);
      v29 = v7;
      if (qword_10039D5C0 != -1)
      {
        swift_once();
      }

      sub_10000403C(v6, qword_1003A6CE8);
      v30 = static URL.== infix(_:_:)();
      v31 = v6;
      v33 = v7 + 8;
      v32 = *(v7 + 8);
      v32(v10, v31);
      v60 = v33;
      v61 = v17;
      v59 = v31;
      if (v30)
      {
        (*(v29 + 56))(v62, 1, 1, v31);
        (*(v64 + 104))(v63, enum case for URL.DirectoryHint.inferFromPath(_:), v65);
        URL.init(filePath:directoryHint:relativeTo:)();
      }

      else
      {
        v34 = sub_10000BE18(v70, v70[3]);
        v57(v10, *v34 + OBJC_IVAR____TtC14softposreaderd11Environment_storageURL, v31);
        URL.appendingPathComponent(_:)();
        v32(v10, v31);
      }

      v35 = objc_allocWithZone(NSPersistentStoreDescription);
      URL._bridgeToObjectiveC()(v36);
      v38 = v37;
      v39 = [v35 initWithURL:v37];

      [v39 setOption:NSFileProtectionCompleteUntilFirstUserAuthentication forKey:NSPersistentStoreFileProtectionKey];
      v40 = objc_allocWithZone(NSPersistentContainer);
      v41 = v58;
      v42 = String._bridgeToObjectiveC()();
      v43 = [v40 initWithName:v42 managedObjectModel:v41];

      sub_100004074(&qword_10039E3C0, &unk_1002C7840);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1002C6960;
      *(v44 + 32) = v39;
      sub_10000411C(0, &qword_1003A22A8, NSPersistentStoreDescription_ptr);
      v45 = v39;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v43 setPersistentStoreDescriptions:isa];

      v47 = objc_autoreleasePoolPush();
      v48 = swift_allocObject();
      *(v48 + 16) = 0;
      v49 = (v48 + 16);
      aBlock[4] = sub_1000C4EF4;
      aBlock[5] = v48;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000C4A08;
      aBlock[3] = &unk_100382EF0;
      v50 = _Block_copy(aBlock);

      [v43 loadPersistentStoresWithCompletionHandler:v50];
      _Block_release(v50);
      swift_beginAccess();
      v51 = *v49;
      if (!*v49)
      {

        objc_autoreleasePoolPop(v47);

        v55 = v59;
        v32(v67, v59);
        v32(v61, v55);
        v53 = v68;
        *(v68 + 16) = v43;
        sub_10000959C(v70);
        return v53;
      }

      swift_errorRetain();
      sub_100020A38(6004, 0, 0, v51);
      swift_willThrow();

      objc_autoreleasePoolPop(v47);

      v52 = v59;
      v32(v67, v59);
      v32(v61, v52);
    }

    else
    {
      sub_100020A38(6998, 0xD000000000000015, 0x800000010034BCB0, 0);
      swift_willThrow();

      (*(v7 + 8))(v17, v6);
    }
  }

  else
  {
    sub_100020A38(6998, 0xD000000000000026, 0x800000010034BC80, 0);
    swift_willThrow();
  }

  v53 = v68;

  type metadata accessor for CoreDataManager();
  swift_deallocPartialClassInstance();
  sub_10000959C(v70);
  return v53;
}

uint64_t sub_1000C49A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a2;
  swift_errorRetain();
}

void sub_1000C4A08(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_1000C4A94()
{
  v1 = v0;
  v2 = &selRef_currencyCode;
  v3 = [*(v0 + 16) persistentStoreCoordinator];
  v4 = [v3 persistentStores];

  sub_10000411C(0, &qword_1003A22A0, NSPersistentStore_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  v8 = 0;
  v9 = v5 & 0xC000000000000001;
  v10 = &selRef_currencyCode;
  *&v6 = 136315394;
  v33 = v6;
  v34 = v7;
  v39 = v5 & 0xC000000000000001;
  do
  {
    if (v9)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v5 + 8 * v8 + 32);
    }

    v13 = v12;
    v14 = [*(v1 + 16) v2[95]];
    v40 = 0;
    v15 = [v14 v10[97]];

    if (v15)
    {
      v11 = v40;
    }

    else
    {
      v16 = v40;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_10039D520 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000403C(v17, qword_1003A21B0);
      v18 = v13;
      swift_errorRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v40 = v37;
        *v21 = v33;
        v22 = [v18 debugDescription];
        v38 = v18;
        v23 = v2;
        v24 = v22;
        v25 = v1;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v19;
        v27 = v5;
        v29 = v28;

        v2 = v23;
        v30 = sub_100008F6C(v26, v29, &v40);
        v5 = v27;

        *(v21 + 4) = v30;
        v1 = v25;
        *(v21 + 12) = 2112;
        v31 = _convertErrorToNSError(_:)();
        *(v21 + 14) = v31;
        *v36 = v31;
        _os_log_impl(&_mh_execute_header, v35, v20, "Failed to remove %s: %@", v21, 0x16u);
        sub_100041D90(v36);

        sub_10000959C(v37);

        v7 = v34;
      }

      else
      {
      }

      v9 = v39;
      v10 = &selRef_currencyCode;
    }

    ++v8;
  }

  while (v7 != v8);
LABEL_18:

  return v1;
}

uint64_t sub_1000C4E64()
{
  sub_1000C4A94();

  return swift_deallocClassInstance();
}

uint64_t sub_1000C4EBC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C4EFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C4F14()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A22B0);
  sub_10000403C(v0, qword_1003A22B0);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.common.getter();
}

void sub_1000C4F80(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    __chkstk_darwin(a1);
    sub_1000C60D0();
    return;
  }

  if (a1 != a1 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  sub_100020A38(6001, 0, 0, 0);
  swift_willThrow();
}

void sub_1000C5068(uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v8 - 8);
  v9 = objc_autoreleasePoolPush();
  sub_1000C5E48(&v25, &v26);
  if (v4)
  {
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    objc_autoreleasePoolPop(v9);
    v10 = v26;
    v11 = [v26 storedValue];
    if (v11)
    {
      v12 = v11;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      *a4 = v13;
      a4[1] = v15;
    }

    else
    {
      if (qword_10039D528 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000403C(v16, qword_1003A22B0);
      sub_1000094F4(a2, a3);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      sub_100009548(a2, a3);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v26 = v20;
        *v19 = 136315138;
        static String.Encoding.utf8.getter();
        countAndFlagsBits = String.init(data:encoding:)();
        if (!object)
        {
          v23 = Data.hexString()();
          object = v23._object;
          countAndFlagsBits = v23._countAndFlagsBits;
        }

        v24 = sub_100008F6C(countAndFlagsBits, object, &v26);

        *(v19 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v17, v18, "CoreDataWrapper: Failed to retrieve data for key: %s", v19, 0xCu);
        sub_10000959C(v20);
      }

      sub_100020A38(6002, 0, 0, 0);
      swift_willThrow();
    }
  }
}

void sub_1000C52EC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    if (a1 == a1 >> 32)
    {
LABEL_12:
      v6 = 6001;
LABEL_16:
      sub_100020A38(v6, 0, 0, 0);
      swift_willThrow();
      return;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2 || *(a3 + 16) == *(a3 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v5)
  {
    if (a3 == a3 >> 32)
    {
LABEL_15:
      v6 = 6003;
      goto LABEL_16;
    }
  }

  else if ((a4 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  __chkstk_darwin(a1);
  sub_1000C6270();
}

void sub_1000C5410(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v12 - 8);
  v13 = objc_autoreleasePoolPush();
  sub_1000C5E48(&v31, &v32);
  if (v6)
  {
    v29 = a5;
    objc_autoreleasePoolPop(v13);
    _s3__C4CodeOMa_6(0);
    v32 = 6000;
    swift_errorRetain();
    sub_1000C6780();
    v14 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if ((v14 & 1) == 0)
    {
      return;
    }

    v28 = a6;

    if (qword_10039D528 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000403C(v15, qword_1003A22B0);
    sub_1000094F4(a3, a4);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    sub_100009548(a3, a4);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = v19;
      *v18 = 136315138;
      static String.Encoding.utf8.getter();
      countAndFlagsBits = String.init(data:encoding:)();
      if (!object)
      {
        v22 = Data.hexString()();
        object = v22._object;
        countAndFlagsBits = v22._countAndFlagsBits;
      }

      v23 = sub_100008F6C(countAndFlagsBits, object, &v32);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "CoreDataWrapper: Insert data for key: %s", v18, 0xCu);
      sub_10000959C(v19);
    }

    type metadata accessor for Logging();
    v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:{a1, v28, v29}];
    isa = Data._bridgeToObjectiveC()().super.isa;
    [(objc_class *)v24 setStoredKey:isa];

    v26 = Data._bridgeToObjectiveC()().super.isa;
    [(objc_class *)v24 setStoredValue:v26];

    [(objc_class *)v24 setWillBeRemovedAfterUpdate:*(a2 + OBJC_IVAR____TtC14softposreaderd15CoreDataWrapper_willBeRemovedAfterUpdate)];
  }

  else
  {
    objc_autoreleasePoolPop(v13);
    v27 = v32;
    v24 = Data._bridgeToObjectiveC()().super.isa;
    [v27 setStoredValue:v24];
  }

  sub_1000C65DC(a1);
}

void sub_1000C5774(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    __chkstk_darwin(a1);
    sub_1000C6270();
    return;
  }

  if (a1 != a1 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  sub_100020A38(6001, 0, 0, 0);
  swift_willThrow();
}

void sub_1000C584C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v8 - 8);
  v9 = objc_autoreleasePoolPush();
  sub_1000C5E48(&v21, &v22);
  if (v4)
  {
    objc_autoreleasePoolPop(v9);
    _s3__C4CodeOMa_6(0);
    v22 = 6000;
    swift_errorRetain();
    sub_1000C6780();
    v10 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v10)
    {

      if (qword_10039D528 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000403C(v11, qword_1003A22B0);
      sub_1000094F4(a3, a4);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      sub_100009548(a3, a4);
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v22 = v15;
        *v14 = 136315138;
        static String.Encoding.utf8.getter();
        countAndFlagsBits = String.init(data:encoding:)();
        if (!object)
        {
          v18 = Data.hexString()();
          object = v18._object;
          countAndFlagsBits = v18._countAndFlagsBits;
        }

        v19 = sub_100008F6C(countAndFlagsBits, object, &v22);

        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "CoreDataWrapper: key:\n%s does not exist, cannot delete", v14, 0xCu);
        sub_10000959C(v15);
      }
    }
  }

  else
  {
    objc_autoreleasePoolPop(v9);
    v20 = v22;
    [a1 deleteObject:v22];

    sub_1000C65DC(a1);
  }
}

void sub_1000C5AE4()
{
  sub_1000C6270();
  if (!v0)
  {
    if (qword_10039D528 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000403C(v1, qword_1003A22B0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "CoreDataWrapper: deleted after update", v4, 2u);
    }
  }
}

void sub_1000C5BF0(void *a1)
{
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithEntityName:v4];

  sub_10000411C(0, &qword_1003A0A80, NSPredicate_ptr);
  sub_100004074(&qword_10039E268, &unk_1002C16F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002C1660;
  v7 = [objc_allocWithZone(NSNumber) initWithBool:1];
  *(v6 + 56) = sub_10000411C(0, &qword_1003A2308, NSNumber_ptr);
  *(v6 + 64) = sub_1000C67D8(&qword_1003A2310, &qword_1003A2308, NSNumber_ptr);
  *(v6 + 32) = v7;
  v8 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v8];

  [v5 setReturnsObjectsAsFaults:1];
  type metadata accessor for Logging();
  v9 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
    goto LABEL_12;
  }

  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_11:

    sub_1000C65DC(a1);
LABEL_12:

    return;
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      [a1 deleteObject:v13];
    }

    goto LABEL_11;
  }

  __break(1u);
}

void sub_1000C5E48(uint64_t *a1@<X3>, void *a2@<X8>)
{
  v4 = objc_allocWithZone(NSFetchRequest);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithEntityName:v5];

  sub_10000411C(0, &qword_1003A0A80, NSPredicate_ptr);
  sub_100004074(&qword_10039E268, &unk_1002C16F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002C1660;
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v7 + 56) = sub_10000411C(0, &qword_1003A2318, NSData_ptr);
  *(v7 + 64) = sub_1000C67D8(&qword_1003A2320, &qword_1003A2318, NSData_ptr);
  *(v7 + 32) = isa;
  v9 = NSPredicate.init(format:_:)();
  [v6 setPredicate:v9];

  [v6 setFetchLimit:1];
  type metadata accessor for Logging();
  v10 = NSManagedObjectContext.fetch<A>(_:)();
  v11 = v2;
  if (v2)
  {
    goto LABEL_2;
  }

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    v11 = sub_100020A38(6000, 0, 0, 0);
    swift_willThrow();
LABEL_2:

    *a1 = v11;
    return;
  }

  v14 = v10;
  v15 = _CocoaArrayWrapper.endIndex.getter();
  v10 = v14;
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);
LABEL_8:
    v13 = v12;

    *a2 = v13;
    return;
  }

  __break(1u);
}

void sub_1000C60D0()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC14softposreaderd15CoreDataWrapper_manager) + 16) persistentStoreCoordinator];
  v2 = [v1 persistentStores];

  sub_10000411C(0, &qword_1003A22A0, NSPersistentStore_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();

    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v4)
    {
LABEL_3:
      v5 = sub_1000C40AC();
      __chkstk_darwin(v5);
      NSManagedObjectContext.performAndWait<A>(_:)();

      return;
    }
  }

  sub_100020A38(6998, 0xD000000000000018, 0x800000010034BD80, 0);
  swift_willThrow();
}

void sub_1000C6270()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC14softposreaderd15CoreDataWrapper_manager) + 16) persistentStoreCoordinator];
  v2 = [v1 persistentStores];

  sub_10000411C(0, &qword_1003A22A0, NSPersistentStore_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();

    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v4)
    {
LABEL_3:
      v5 = sub_1000C40AC();
      __chkstk_darwin(v5);
      NSManagedObjectContext.performAndWait<A>(_:)();

      return;
    }
  }

  sub_100020A38(6998, 0xD000000000000018, 0x800000010034BD80, 0);
  swift_willThrow();
}

id sub_1000C6444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDataWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000C656C()
{
  v1 = *(v0 + 16);
  v2 = sub_1000C40AC();
  v1();
}

void sub_1000C65DC(void *a1)
{
  if ([a1 hasChanges])
  {
    v8 = 0;
    if ([a1 save:&v8])
    {
      v2 = v8;
      [a1 reset];
    }

    else
    {
      v7 = v8;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    if (qword_10039D528 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000403C(v3, qword_1003A22B0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "moc has not changed", v6, 2u);
    }
  }
}

unint64_t sub_1000C6780()
{
  result = qword_10039DB08;
  if (!qword_10039DB08)
  {
    _s3__C4CodeOMa_6(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DB08);
  }

  return result;
}

uint64_t sub_1000C67D8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000411C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000C686C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A2328);
  sub_10000403C(v0, qword_1003A2328);
  sub_100023B24();
  return static SPRLogger.common.getter();
}

uint64_t sub_1000C68C8()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1003A6BD8 = v4;
    unk_1003A6BE0 = v6;
  }

  return result;
}

uint64_t sub_1000C69E0@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v6 = v2[12];
  v7 = *(*sub_10000BE18(v2 + 2, v2[5]) + OBJC_IVAR____TtC14softposreaderd11Environment_isStorageTemporary);
  v8 = type metadata accessor for CoreDataWrapper();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC14softposreaderd15CoreDataWrapper_manager] = v6;
  v9[OBJC_IVAR____TtC14softposreaderd15CoreDataWrapper_isTransient] = v7;
  v9[OBJC_IVAR____TtC14softposreaderd15CoreDataWrapper_willBeRemovedAfterUpdate] = a1;
  v13.receiver = v9;
  v13.super_class = v8;

  v12[3] = v8;
  v12[4] = &off_100382F18;
  v12[0] = objc_msgSendSuper2(&v13, "init");
  v10 = v12[0];
  sub_1000C6AFC(v12);
  if (v3)
  {

    return sub_10000959C(v12);
  }

  else
  {
    result = sub_10000959C(v12);
    a2[3] = v8;
    a2[4] = &off_100382F18;
    *a2 = v10;
  }

  return result;
}

uint64_t sub_1000C6AFC(void *a1)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000BE18((v1 + 56), *(v1 + 80));
  v9 = sub_100187828(*(*v8 + 16), *(*v8 + 24), *(*v8 + 32));
  v11 = v10;
  static String.Encoding.utf8.getter();
  v12 = String.data(using:allowLossyConversion:)();
  v14 = v13;
  (*(v5 + 8))(v7, v4);
  if (v14 >> 60 == 15)
  {
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    v39 = 0xD00000000000002CLL;
    v40 = 0x800000010034BE40;
    v15._countAndFlagsBits = v9;
    v15._object = v11;
    String.append(_:)(v15);

    sub_100020A38(6002, v39, v40, 0);
    return swift_willThrow();
  }

  v41 = v12;
  v18 = a1[3];
  v17 = a1[4];
  sub_10000BE18(a1, v18);
  if (qword_10039D538 != -1)
  {
    swift_once();
  }

  v19 = (*(v17 + 32))(qword_1003A6BD8, unk_1003A6BE0, v18, v17);
  if (v2)
  {
  }

  else
  {
    v26 = v19;
    v27 = v20;
    static String.Encoding.utf8.getter();
    v28 = String.init(data:encoding:)();
    if (v29)
    {
      if (v28 == v9 && v29 == v11)
      {
      }

      else
      {
        v38 = v27;
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v31 & 1) == 0)
        {
          v33 = a1[3];
          v34 = a1[4];
          sub_10000BE18(a1, v33);
          (*(v34 + 64))(v33, v34);
          v35 = a1[3];
          v36 = a1[4];
          sub_10000BE18(a1, v35);
          (*(v36 + 40))(qword_1003A6BD8, unk_1003A6BE0, v41, v14, v35, v36);
        }

        v27 = v38;
      }

      sub_100009548(v26, v27);
      goto LABEL_20;
    }

    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v39 = 0xD00000000000002DLL;
    v40 = 0x800000010034BE70;
    v32 = Data.hexString()();
    String.append(_:)(v32);

    sub_100020A38(6002, v39, v40, 0);
    swift_willThrow();
    sub_100009548(v26, v27);
  }

  _s3__C4CodeOMa_6(0);
  v39 = 6000;
  swift_errorRetain();
  sub_1000C7D90(&qword_10039DB08, _s3__C4CodeOMa_6, &unk_1002BF7E8);
  v21 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if ((v21 & 1) == 0)
  {
LABEL_20:
    v25 = v41;
    return sub_10001A074(v25, v14);
  }

  v22 = a1[3];
  v23 = a1[4];
  sub_10000BE18(a1, v22);
  v24 = v41;
  (*(v23 + 40))(qword_1003A6BD8, unk_1003A6BE0, v41, v14, v22, v23);
  v25 = v24;
  return sub_10001A074(v25, v14);
}

uint64_t sub_1000C6FB4()
{
  sub_10000959C((v0 + 16));
  sub_10000959C((v0 + 56));

  return swift_deallocClassInstance();
}

void *sub_1000C7044(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v68 = a3;
  v66 = a4;
  v65 = type metadata accessor for URLResourceValues();
  v6 = *(v65 - 8);
  __chkstk_darwin(v65);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v58 - v13;
  v73 = type metadata accessor for Environment(0);
  v74 = sub_1000C7D90(&qword_1003A1B28, type metadata accessor for Environment, &unk_1002C7040);
  v72[0] = a1;
  v71[3] = type metadata accessor for SystemInfo();
  v71[4] = &off_100386330;
  v71[0] = a2;
  if (qword_10039D530 != -1)
  {
    swift_once();
  }

  v64 = v10;
  v15 = type metadata accessor for Logger();
  v67 = sub_10000403C(v15, qword_1003A2328);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v18 = 136315394;
    v19 = _typeName(_:qualified:)();
    v21 = v8;
    v22 = v6;
    v23 = sub_100008F6C(v19, v20, &v70);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = showFunction(signature:_:)(0xD00000000000002DLL, 0x800000010034BEA0, _swiftEmptyArrayStorage);
    v26 = sub_100008F6C(v24, v25, &v70);
    v6 = v22;
    v8 = v21;

    *(v18 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s.%s", v18, 0x16u);
    swift_arrayDestroy();
  }

  v27 = v66;
  sub_10000CCE4(v72, (v66 + 2));
  sub_10000CCE4(v71, (v27 + 7));
  v27[12] = v68;
  v28 = objc_opt_self();

  v29 = [v28 defaultManager];
  v30 = sub_10000BE18(v72, v73);
  v31 = v64;
  v32 = *v30 + OBJC_IVAR____TtC14softposreaderd11Environment_storageURL;
  v62 = *(v64 + 2);
  v62(v14, v32, v9);
  URL._bridgeToObjectiveC()(v33);
  v35 = v34;
  v36 = *(v31 + 1);
  v36(v14, v9);
  v70 = 0;
  v37 = [v29 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:&v70];

  if (v37)
  {
    v38 = v70;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Storage folder created", v41, 2u);
    }

    v42 = v63;
  }

  else
  {
    v64 = v36;
    v43 = v70;
    v44 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v60 = v47;
      v61 = swift_slowAlloc();
      v70 = v61;
      *v47 = 136315138;
      v69 = v44;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v48 = String.init<A>(describing:)();
      v59 = v45;
      v50 = sub_100008F6C(v48, v49, &v70);

      v51 = v60;
      *(v60 + 1) = v50;
      v52 = v59;
      _os_log_impl(&_mh_execute_header, v59, v46, "Unable to create storage folder: %s", v51, 0xCu);
      sub_10000959C(v61);
    }

    else
    {
    }

    v42 = v63;
    v36 = v64;
  }

  URLResourceValues.init()();
  URLResourceValues.isExcludedFromBackup.setter();
  v53 = sub_10000BE18(v72, v73);
  v62(v42, *v53 + OBJC_IVAR____TtC14softposreaderd11Environment_storageURL, v9);
  URL.setResourceValues(_:)();
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "Storage folder excluded from backup", v56, 2u);
  }

  v36(v42, v9);
  (*(v6 + 8))(v8, v65);
  sub_10000959C(v71);
  sub_10000959C(v72);
  return v66;
}

void *sub_1000C7968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = type metadata accessor for Environment(0);
  v22 = sub_1000C7D90(&qword_1003A1B28, type metadata accessor for Environment, &unk_1002C7040);
  v20[0] = a1;
  v18 = type metadata accessor for SystemInfo();
  v19 = &off_100386330;
  v17[0] = a2;
  type metadata accessor for PersistenceFactory();
  v6 = swift_allocObject();
  v7 = sub_100022438(v20, v21);
  __chkstk_darwin(v7);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_100022438(v17, v18);
  __chkstk_darwin(v11);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_1000C7044(*v9, *v13, a3, v6);
  sub_10000959C(v17);
  sub_10000959C(v20);
  return v15;
}

void *sub_1000C7B78(uint64_t a1)
{
  sub_1000E3850(v15);
  if (v1)
  {
  }

  else
  {
    sub_1000E90C8(v14);
    sub_1000ED614();
    v5 = v4;
    v6 = sub_100022438(v15, v15[3]);
    __chkstk_darwin(v6);
    v8 = (v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = sub_100022438(v14, v14[3]);
    __chkstk_darwin(v10);
    v12 = (v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v2 = sub_1000C7968(*v8, *v12, v5);

    sub_10000959C(v14);
    sub_10000959C(v15);
  }

  return v2;
}

uint64_t sub_1000C7D90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1000C7E30@<X0>(void *a1@<X8>)
{
  v2 = sub_100183AC8(_swiftEmptyArrayStorage);
  v3 = type metadata accessor for VolatilePersisting();
  result = swift_allocObject();
  result[2] = 0x676E6967676F4CLL;
  result[3] = 0xE700000000000000;
  result[4] = v2;
  a1[3] = v3;
  a1[4] = &off_100382F98;
  *a1 = result;
  return result;
}

uint64_t sub_1000C7ED0()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A24D0);
  sub_10000403C(v0, qword_1003A24D0);
  sub_100023B24();
  return static SPRLogger.common.getter();
}

uint64_t sub_1000C7F2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  v6 = sub_1000F5CE0(a1, a2);
  if ((v7 & 1) == 0)
  {

LABEL_5:
    sub_100020A38(6000, 0xD00000000000002CLL, 0x800000010034BF50, 0);
    swift_willThrow();
    return a2;
  }

  v8 = *(v5 + 56) + 16 * v6;
  a2 = *v8;
  sub_1000094F4(*v8, *(v8 + 8));

  return a2;
}

void sub_1000C8004(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_10017ACA8(a1, a2, &v8);
  swift_endAccess();
  if (*(&v8 + 1) >> 60 == 15)
  {
    if (qword_10039D540 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000403C(v4, qword_1003A24D0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "VolatilePersisting.delete: key not present", v7, 2u);
    }
  }

  else
  {
    sub_10001A074(v8, *(&v8 + 1));
  }
}

uint64_t sub_1000C8140()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000C81C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = *v4;
  swift_beginAccess();
  sub_1000094F4(a1, a2);
  sub_1000094F4(a3, a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v9 + 32);
  *(v9 + 32) = 0x8000000000000000;
  sub_10017FF00(a3, a4, a1, a2, isUniquelyReferenced_nonNull_native);
  sub_100009548(a1, a2);
  *(v9 + 32) = v12;
  return swift_endAccess();
}

uint64_t sub_1000C82C0(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 == 2)
  {
    v7 = *(result + 16);
    v6 = *(result + 24);
    v5 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
LABEL_9:
      sub_1000094F4(result, a2);
      goto LABEL_11;
    }

    __break(1u);
LABEL_8:
    v5 = WORD2(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    goto LABEL_9;
  }

  v5 = 0;
LABEL_11:
  v63 = 62848;
  v64 = v5;
  v65 = v3;
  v66 = a2;
  v67 = 0;
  if (qword_10039D4B8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_10000403C(v8, qword_1003A1240);
  sub_10000BC94(&v63, v62);
  v73 = v9;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v63);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v62[0] = v13;
    *v12 = 136315138;
    v14 = sub_100170F04(v63 | (v64 << 32), v65, v66, v67);
    v16 = v15;
    v17 = Data.hexString()();
    sub_100009548(v14, v16);
    v18 = sub_100008F6C(v17._countAndFlagsBits, v17._object, v62);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "C-APDU (INIT PIN): %s", v12, 0xCu);
    sub_10000959C(v13);
  }

  sub_10009FAC0(v63 | (v64 << 32), v65, v66, v67, 1, &v68);
  v19 = v69;
  if (v69 >> 60 == 15)
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "no response from INIT PIN", v22, 2u);
    }

    sub_100021328(12004, 0, 0, 0);
    swift_willThrow();
    return sub_10000BCF0(&v63);
  }

  v24 = v71;
  v23 = v72;
  v25 = v68;
  v26 = v70;
  sub_1000094F4(v68, v69);
  sub_1000094F4(v24, v23);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  sub_10000BD44(&v68, &qword_10039E2C0, &unk_1002BFEB0);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v61 = v28;
    v30 = swift_slowAlloc();
    v62[0] = v30;
    *v29 = 136315138;
    v31 = Data.hexString()();
    v32 = v23;
    v33 = v19;
    v34 = v24;
    v35 = v26;
    v36 = sub_100008F6C(v31._countAndFlagsBits, v31._object, v62);

    *(v29 + 4) = v36;
    v26 = v35;
    v24 = v34;
    v19 = v33;
    v23 = v32;
    _os_log_impl(&_mh_execute_header, v27, v61, "R-APDU: %s", v29, 0xCu);
    sub_10000959C(v30);
  }

  sub_10001A3FC();
  v37 = swift_allocError();
  *v38 = v26;
  v39 = sub_100171840(36864, v37);

  if ((v39 & 1) == 0)
  {
    v43 = swift_allocError();
    *v44 = v26;
    v45 = sub_100171840(27012, v43);

    if (v45)
    {
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "transaction id mismatch", v48, 2u);
LABEL_34:
      }
    }

    else
    {
      v49 = swift_allocError();
      *v50 = v26;
      v51 = sub_100171840(27013, v49);

      if (v51)
      {
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "missing reader config or PAN", v54, 2u);
        }

        v55 = 12003;
        goto LABEL_36;
      }

      sub_1000094F4(v25, v19);
      sub_1000094F4(v24, v23);
      v46 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      sub_10000BD44(&v68, &qword_10039E2C0, &unk_1002BFEB0);
      if (os_log_type_enabled(v46, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v57 = 138412290;
        swift_allocError();
        *v59 = v26;
        v60 = _swift_stdlib_bridgeErrorToNSError();
        *(v57 + 4) = v60;
        *v58 = v60;
        _os_log_impl(&_mh_execute_header, v46, v56, "unexpected sw: %@", v57, 0xCu);
        sub_10000BD44(v58, &unk_10039E220, &qword_1002C3D60);

        goto LABEL_34;
      }
    }

    v55 = 12004;
LABEL_36:
    sub_100021328(v55, 0, 0, 0);
    swift_willThrow();
    sub_10000BCF0(&v63);
    return sub_10000BD44(&v68, &qword_10039E2C0, &unk_1002BFEB0);
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "transaction id matched", v42, 2u);
  }

  sub_10000BCF0(&v63);

  return sub_10000BD44(&v68, &qword_10039E2C0, &unk_1002BFEB0);
}

uint64_t sub_1000C8A64(uint64_t a1, unint64_t a2)
{
  if (qword_10039D3F8 != -1)
  {
    swift_once();
  }

  v4 = qword_1003A6B00;
  v5 = *algn_1003A6B08;
  v78 = qword_1003A6B00;
  v79 = *algn_1003A6B08;
  v76 = &type metadata for Data;
  v77 = &protocol witness table for Data;
  v73 = a1;
  v74 = a2;
  v6 = sub_10000BE18(&v73, &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_1000094F4(v4, v5);
  sub_1000094F4(a1, a2);
  sub_1000A1C34(v7, v8, &v78, v9);
  sub_10000959C(&v73);
  v10 = v78;
  v11 = v79;
  v12 = v79 >> 62;
  if ((v79 >> 62) > 1)
  {
    if (v12 != 2)
    {
LABEL_13:
      v13 = 0;
      goto LABEL_14;
    }

    v15 = *(v78 + 16);
    v14 = *(v78 + 24);
    v16 = __OFSUB__(v14, v15);
    v13 = v14 - v15;
    if (!v16)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v12)
  {
    v13 = BYTE6(v79);
    goto LABEL_14;
  }

  v13 = WORD2(v10) - v10;
  if (__OFSUB__(HIDWORD(v10), v10))
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  LODWORD(v73) = 61824;
  WORD2(v73) = v13;
  v74 = v10;
  v75 = v11;
  LOWORD(v76) = 0;
  if (qword_10039D4B8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_10000403C(v17, qword_1003A1240);
  sub_10000BC94(&v73, v72);
  v85 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v73);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v72[0] = v22;
    *v21 = 136315138;
    v23 = sub_100170F04(v73 | (WORD2(v73) << 32), v74, v75, v76);
    v25 = v24;
    v26 = Data.hexString()();
    sub_100009548(v23, v25);
    v27 = sub_100008F6C(v26._countAndFlagsBits, v26._object, v72);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "C-APDU (ADD PIN DIGIT): %s", v21, 0xCu);
    sub_10000959C(v22);
  }

  sub_10009FAC0(v73 | (WORD2(v73) << 32), v74, v75, v76, 1, &v80);
  v28 = v81;
  if (v81 >> 60 == 15)
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "no response from applet", v31, 2u);
    }

    sub_100021328(12004, 0, 0, 0);
    swift_willThrow();
    return sub_10000BCF0(&v73);
  }

  v34 = v83;
  v33 = v84;
  v35 = v80;
  v36 = v82;
  sub_1000094F4(v80, v81);
  sub_1000094F4(v34, v33);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  sub_10000BD44(&v80, &qword_10039E2C0, &unk_1002BFEB0);
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v71 = v38;
    v40 = swift_slowAlloc();
    v72[0] = v40;
    *v39 = 136315138;
    v41 = Data.hexString()();
    v42 = v33;
    v43 = v28;
    v44 = v34;
    v45 = v36;
    v46 = sub_100008F6C(v41._countAndFlagsBits, v41._object, v72);

    *(v39 + 4) = v46;
    v36 = v45;
    v34 = v44;
    v28 = v43;
    v33 = v42;
    _os_log_impl(&_mh_execute_header, v37, v71, "R-APDU: %s", v39, 0xCu);
    sub_10000959C(v40);
  }

  sub_10001A3FC();
  v47 = swift_allocError();
  *v48 = v36;
  v49 = sub_100171840(36864, v47);

  if ((v49 & 1) == 0)
  {
    v53 = swift_allocError();
    *v54 = v36;
    v55 = sub_100171840(26368, v53);

    if (v55)
    {
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "PIN length exceeded", v58, 2u);
      }

      v59 = 12006;
      goto LABEL_39;
    }

    v60 = swift_allocError();
    *v61 = v36;
    v62 = sub_100171840(27013, v60);

    if (v62)
    {
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&_mh_execute_header, v63, v64, "ADD PIN DIGIT failed", v65, 2u);
LABEL_37:
      }
    }

    else
    {
      sub_1000094F4(v35, v28);
      sub_1000094F4(v34, v33);
      v63 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      sub_10000BD44(&v80, &qword_10039E2C0, &unk_1002BFEB0);
      if (os_log_type_enabled(v63, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = 138412290;
        swift_allocError();
        *v69 = v36;
        v70 = _swift_stdlib_bridgeErrorToNSError();
        *(v67 + 4) = v70;
        *v68 = v70;
        _os_log_impl(&_mh_execute_header, v63, v66, "Unexpected status word: %@", v67, 0xCu);
        sub_10000BD44(v68, &unk_10039E220, &qword_1002C3D60);

        goto LABEL_37;
      }
    }

    v59 = 12004;
LABEL_39:
    sub_100021328(v59, 0, 0, 0);
    swift_willThrow();
    sub_10000BCF0(&v73);
    return sub_10000BD44(&v80, &qword_10039E2C0, &unk_1002BFEB0);
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "pin digit added", v52, 2u);
  }

  sub_10000BCF0(&v73);

  return sub_10000BD44(&v80, &qword_10039E2C0, &unk_1002BFEB0);
}

uint64_t sub_1000C929C()
{
  v55 = 62080;
  v56 = 0;
  v57 = xmmword_1002BDC30;
  v58 = 0;
  if (qword_10039D4B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A1240);
  sub_10000BC94(&v55, v49);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v55);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v49[0] = v59;
    *v3 = 136315138;
    v4 = sub_100170F04(v55 | (v56 << 32), v57, *(&v57 + 1), v58);
    v6 = v5;
    v7 = Data.hexString()();
    sub_100009548(v4, v6);
    v8 = sub_100008F6C(v7._countAndFlagsBits, v7._object, v49);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "C-APDU (REMOVE PIN DIGIT): %s", v3, 0xCu);
    sub_10000959C(v59);
  }

  sub_10009FAC0(v55 | (v56 << 32), v57, *(&v57 + 1), v58, 1, &v50);
  v9 = v51;
  if (v51 >> 60 == 15)
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "no response from applet", v12, 2u);
    }

    sub_100021328(12004, 0, 0, 0);
    swift_willThrow();
    return sub_10000BCF0(&v55);
  }

  v14 = v53;
  v15 = v54;
  v16 = v50;
  v59 = v52;
  sub_1000094F4(v50, v51);
  v48 = v14;
  sub_1000094F4(v14, v15);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  sub_10000BD44(&v50, &qword_10039E2C0, &unk_1002BFEB0);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v49[0] = v20;
    *v19 = 136315138;
    v21 = Data.hexString()();
    v22 = v15;
    v23 = sub_100008F6C(v21._countAndFlagsBits, v21._object, v49);

    *(v19 + 4) = v23;
    v15 = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "R-APDU: %s", v19, 0xCu);
    sub_10000959C(v20);
  }

  sub_10001A3FC();
  v24 = swift_allocError();
  *v25 = v59;
  v26 = sub_100171840(36864, v24);

  if ((v26 & 1) == 0)
  {
    v30 = swift_allocError();
    *v31 = v59;
    v32 = sub_100171840(26368, v30);

    if (v32)
    {
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Empty buffer", v35, 2u);
      }

      v36 = 12007;
      goto LABEL_26;
    }

    v37 = swift_allocError();
    *v38 = v59;
    v39 = sub_100171840(27013, v37);

    if (v39)
    {
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "PIN remove failed", v42, 2u);
LABEL_24:
      }
    }

    else
    {
      sub_1000094F4(v16, v9);
      sub_1000094F4(v48, v15);
      v40 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      sub_10000BD44(&v50, &qword_10039E2C0, &unk_1002BFEB0);
      if (os_log_type_enabled(v40, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        swift_allocError();
        *v46 = v59;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&_mh_execute_header, v40, v43, "Unexpected status word: %@", v44, 0xCu);
        sub_10000BD44(v45, &unk_10039E220, &qword_1002C3D60);

        goto LABEL_24;
      }
    }

    v36 = 12004;
LABEL_26:
    sub_100021328(v36, 0, 0, 0);
    swift_willThrow();
    sub_10000BCF0(&v55);
    return sub_10000BD44(&v50, &qword_10039E2C0, &unk_1002BFEB0);
  }

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "removed last digit", v29, 2u);
  }

  sub_10000BCF0(&v55);

  return sub_10000BD44(&v50, &qword_10039E2C0, &unk_1002BFEB0);
}

uint64_t *sub_1000C99F0()
{
  v82 = 62336;
  v83 = 0;
  v84 = xmmword_1002BDC30;
  v85 = 0;
  if (qword_10039D4B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A1240);
  sub_10000BC94(&v82, v76);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v82);
  v4 = os_log_type_enabled(v2, v3);
  v86 = v0;
  if (v4)
  {
    v5 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v76[0] = v74;
    *v5 = 136315138;
    v6 = sub_100170F04(v82 | (v83 << 32), v84, *(&v84 + 1), v85);
    v8 = v7;
    v9 = Data.hexString()();
    sub_100009548(v6, v8);
    v10 = sub_100008F6C(v9._countAndFlagsBits, v9._object, v76);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "C-APDU (GENERATE PIN BLOB): %s", v5, 0xCu);
    sub_10000959C(v74);
  }

  sub_10009FAC0(v82 | (v83 << 32), v84, *(&v84 + 1), v85, 1, &v77);
  v11 = v78;
  if (v78 >> 60 == 15)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "No response or error from GENERATE PIN BLOB command", v14, 2u);
    }

    sub_100021328(12004, 0, 0, 0);
    swift_willThrow();
    sub_10000BCF0(&v82);
    return v3;
  }

  v15 = v80;
  v16 = v81;
  v3 = v77;
  v17 = v79;
  sub_1000094F4(v77, v78);
  sub_1000094F4(v15, v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  sub_10000BD44(&v77, &qword_10039E2C0, &unk_1002BFEB0);
  v75 = v16;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v73 = v19;
    v21 = swift_slowAlloc();
    v76[0] = v21;
    *v20 = 136315138;
    v22 = Data.description.getter();
    v24 = v15;
    v25 = v11;
    v26 = v3;
    v27 = v17;
    v28 = sub_100008F6C(v22, v23, v76);

    *(v20 + 4) = v28;
    v17 = v27;
    v3 = v26;
    v11 = v25;
    v15 = v24;
    _os_log_impl(&_mh_execute_header, v18, v73, "R-APDU: %s", v20, 0xCu);
    sub_10000959C(v21);
  }

  sub_10001A3FC();
  v29 = swift_allocError();
  *v30 = v17;
  v31 = sub_100171840(36864, v29);

  if ((v31 & 1) == 0)
  {
    v42 = swift_allocError();
    *v43 = v17;
    v44 = sub_100171840(26368, v42);

    if (v44)
    {
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Empty Buffer", v47, 2u);
      }

      v48 = 12007;
      goto LABEL_46;
    }

    v49 = swift_allocError();
    *v50 = v17;
    v51 = sub_100171840(27272, v49);

    if (v51)
    {
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        v55 = "PAN not found";
LABEL_33:
        _os_log_impl(&_mh_execute_header, v52, v53, v55, v54, 2u);

        goto LABEL_34;
      }

      goto LABEL_34;
    }

    v56 = swift_allocError();
    *v57 = v17;
    v58 = sub_100171840(27266, v56);

    if (v58)
    {
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        v55 = "PIN KEK hash not found";
        goto LABEL_33;
      }

LABEL_34:

      v48 = 12003;
LABEL_46:
      sub_100021328(v48, 0, 0, 0);
      swift_willThrow();
      sub_10000BCF0(&v82);
      sub_10000BD44(&v77, &qword_10039E2C0, &unk_1002BFEB0);
      return v3;
    }

    v59 = swift_allocError();
    *v60 = v17;
    v61 = sub_100171840(27013, v59);

    if (v61)
    {
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        v65 = "Generation failed";
LABEL_41:
        _os_log_impl(&_mh_execute_header, v62, v63, v65, v64, 2u);
LABEL_44:
      }
    }

    else
    {
      v66 = swift_allocError();
      *v67 = v17;
      v68 = sub_100171840(27010, v66);

      if (v68)
      {
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          v65 = "Security condition not satisfied";
          goto LABEL_41;
        }
      }

      else
      {
        sub_1000094F4(v3, v11);
        sub_1000094F4(v15, v75);
        v62 = Logger.logObject.getter();
        v69 = static os_log_type_t.error.getter();
        sub_10000BD44(&v77, &qword_10039E2C0, &unk_1002BFEB0);
        if (os_log_type_enabled(v62, v69))
        {
          v70 = swift_slowAlloc();
          v3 = swift_slowAlloc();
          *v70 = 138412290;
          swift_allocError();
          *v71 = v17;
          v72 = _swift_stdlib_bridgeErrorToNSError();
          *(v70 + 4) = v72;
          *v3 = v72;
          _os_log_impl(&_mh_execute_header, v62, v69, "Unexpected status word: %@", v70, 0xCu);
          sub_10000BD44(v3, &unk_10039E220, &qword_1002C3D60);

          goto LABEL_44;
        }
      }
    }

    v48 = 12004;
    goto LABEL_46;
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Received PIN Blobs from applet", v34, 2u);
  }

  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v35 = static GlobalState.shared;
  result = [*(static GlobalState.shared + 88) lock];
  v37 = *(v35 + 104);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v35 + 104) = v39;
    while (*(v35 + 96) > 0 || *(v35 + 112) == 1)
    {
      result = [*(v35 + 88) wait];
    }

    v40 = *(v35 + 104);
    v38 = __OFSUB__(v40, 1);
    v41 = v40 - 1;
    if (!v38)
    {
      *(v35 + 104) = v41;
      *(v35 + 112) = 1;
      [*(v35 + 88) unlock];
      *(v35 + 57) = 0;
      sub_100173040();
      [*(v35 + 88) lock];
      *(v35 + 112) = 0;
      [*(v35 + 88) broadcast];
      [*(v35 + 88) unlock];
      sub_10000BCF0(&v82);
      sub_1000094F4(v3, v11);
      sub_10000BD44(&v77, &qword_10039E2C0, &unk_1002BFEB0);
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CA408()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A2600);
  sub_10000403C(v0, qword_1003A2600);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.pinAppletProxy.getter();
}

id sub_1000CA474()
{
  v1 = *&v0[OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession];
  if (v1)
  {
    v2 = v1;
    if ([v2 isActive])
    {
      v3 = v0;
      if (qword_10039D548 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_10000403C(v4, qword_1003A2600);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Clear PAN in deinit (timeout/crash)", v7, 2u);
      }

      sub_100003ABC();
      v11[4] = sub_1000CA638;
      v11[5] = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_100003974;
      v11[3] = &unk_1003830F0;
      v8 = _Block_copy(v11);
      [v2 endSessionWithCompletion:v8];
      _Block_release(v8);

      v0 = v3;
    }

    else
    {
    }
  }

  v9 = type metadata accessor for DefaultPINAppletProxy();
  v12.receiver = v0;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "dealloc");
}

id sub_1000CA6F0(uint64_t a1, unint64_t a2)
{
  v48 = a2;
  v3 = v2;
  v47 = a1;
  swift_getObjectType();
  v4 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  if (qword_10039D548 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v50 = sub_10000403C(v7, qword_1003A2600);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100008F6C(v11, v12, aBlock);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = showFunction(signature:_:)(0xD000000000000022, 0x800000010034C250, _swiftEmptyArrayStorage);
    v16 = sub_100008F6C(v14, v15, aBlock);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  sub_10000BE18((v3 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_monitorManager), *(v3 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_monitorManager + 24));
  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v18 = sub_1000B100C(v6, 0.0);
  sub_10000BD44(v6, &qword_1003A0178, &unk_1002C3BB0);
  if ((v18 & 1) == 0)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Not attested", v24, 2u);
    }

    v25 = 0xD000000000000030;
    v26 = 0x800000010034C1D0;
    v27 = 12008;
    goto LABEL_15;
  }

  v19 = OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession;
  v20 = *(v3 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession);
  if (v20)
  {
    [v20 endSession];
    v21 = *(v3 + v19);
  }

  else
  {
    v21 = 0;
  }

  *(v3 + v19) = 0;

  *(v3 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_pinLength) = 0;
  result = [*(*sub_10000BE18((v3 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_secureElement) *(v3 + OBJC:"ecdsaCertificate" IVAR:? :? :? :? TtC14softposreaderd21DefaultPINAppletProxy:?secureElement + 24)) + 24)];
  if (result)
  {
    v23 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = Data.init(hexString:)();
    if (v30 >> 60 != 15)
    {
      v31 = v29;
      v32 = v30;
      v33 = [objc_opt_self() sharedHardwareManager];
      aBlock[0] = 0;
      v34 = [v33 startSecureElementManagerSessionAndReturnError:aBlock];

      if (v34)
      {
        v35 = qword_10039D3D0;
        v36 = aBlock[0];
        v37 = v34;
        if (v35 != -1)
        {
          swift_once();
        }

        v38 = v49;
        NFSecureElementManagerSession.select(_:)(AID_PIN_APPLET, *algn_1003A6AB8);
        if (v38)
        {

          swift_errorRetain();
          v39 = Logger.logObject.getter();
          v23 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v39, v23))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            *v40 = 138412290;
            swift_errorRetain();
            v42 = _swift_stdlib_bridgeErrorToNSError();
            *(v40 + 4) = v42;
            *v41 = v42;
            _os_log_impl(&_mh_execute_header, v39, v23, "Failed to select PIN applet %@", v40, 0xCu);
            sub_10000BD44(v41, &unk_10039E220, &qword_1002C3D60);
          }

          sub_100021328(12002, 0, 0, 0);
          swift_willThrow();

          aBlock[4] = sub_1000CAE90;
          aBlock[5] = 0;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100003974;
          aBlock[3] = &unk_1003830C8;
          v44 = _Block_copy(aBlock);
          [v37 endSessionWithCompletion:v44];
          _Block_release(v44);
          swift_willThrow();
          sub_10001A074(v31, v32);
        }

        else
        {

          sub_1000C82C0(v47, v48);
          if (qword_10039D3F0 != -1)
          {
            swift_once();
          }

          v23 = sub_100123DC4(1, qword_1003A6AF0, *algn_1003A6AF8);
          [v37 setDelegate:v3];
          v45 = *(v3 + v19);
          *(v3 + v19) = v34;
        }
      }

      else
      {
        v43 = aBlock[0];
        v23 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100021328(12001, 0xD00000000000001ELL, 0x800000010034C230, 0);
        swift_willThrow();
        sub_10001A074(v31, v32);
      }

      return v23;
    }

    v26 = 0x800000010034C210;
    v27 = 12003;
    v25 = 0xD000000000000016;
LABEL_15:
    sub_100021328(v27, v25, v26, 0);
    swift_willThrow();
    return v23;
  }

  __break(1u);
  return result;
}

void sub_1000CAEB0(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  swift_getObjectType();
  if (qword_10039D548 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  aBlock[7] = sub_10000403C(v7, qword_1003A2600);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100008F6C(v11, v12, aBlock);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = showFunction(signature:_:)(0xD000000000000011, 0x800000010034C1B0, _swiftEmptyArrayStorage);
    v16 = sub_100008F6C(v14, v15, aBlock);

    *(v10 + 14) = v16;
    v4 = v3;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v17 = OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_pinLength;
  if (*(v2 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_pinLength) >= *(v2 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_maxPinLength))
  {
    v24 = 0xD000000000000013;
    v25 = 0x800000010034C130;
    v26 = 12006;
LABEL_15:
    sub_100021328(v26, v24, v25, 0);
    swift_willThrow();
    return;
  }

  v18 = OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession;
  v19 = *(v2 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession);
  if (!v19)
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "no session", v29, 2u);
    }

    v24 = 0xD000000000000025;
    v25 = 0x800000010034C0A0;
    v26 = 12010;
    goto LABEL_15;
  }

  v20 = v19;
  if ([v20 isActive])
  {
    sub_1000C8A64(a1, a2);

    if (!v4)
    {
      v21 = *(v2 + v17);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
      }

      else
      {
        *(v2 + v17) = v23;
      }
    }
  }

  else
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "session not active", v32, 2u);
    }

    aBlock[4] = sub_1000CD06C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_1003830A0;
    v33 = _Block_copy(aBlock);
    [v20 endSessionWithCompletion:v33];
    _Block_release(v33);
    v34 = *(v5 + v18);
    *(v5 + v18) = 0;

    sub_100021328(12010, 0xD000000000000028, 0x800000010034C0D0, 0);
    swift_willThrow();
  }
}

void sub_1000CB310()
{
  v2 = v0;
  swift_getObjectType();
  if (qword_10039D548 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A2600);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, v27);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD000000000000011, 0x800000010034C190, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, v27);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession;
  v14 = *(v0 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession);
  if (v14)
  {
    v15 = v14;
    if ([v15 isActive])
    {
      sub_1000C929C();

      if (!v1)
      {
        v16 = *(v0 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_pinLength);
        v17 = v16 < 1;
        v18 = v16 - 1;
        if (!v17)
        {
          *(v0 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_pinLength) = v18;
        }
      }
    }

    else
    {
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "session not active", v24, 2u);
      }

      v27[4] = sub_1000CD06C;
      v27[5] = 0;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 1107296256;
      v27[2] = sub_100003974;
      v27[3] = &unk_100383078;
      v25 = _Block_copy(v27);
      [v15 endSessionWithCompletion:v25];
      _Block_release(v25);
      v26 = *(v2 + v13);
      *(v2 + v13) = 0;

      sub_100021328(12010, 0xD000000000000028, 0x800000010034C0D0, 0);
      swift_willThrow();
    }
  }

  else
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "no session", v21, 2u);
    }

    sub_100021328(12010, 0xD000000000000025, 0x800000010034C0A0, 0);
    swift_willThrow();
  }
}

void sub_1000CB724(uint64_t *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v138 = a1;
  swift_getObjectType();
  v139 = type metadata accessor for TLVTag();
  v137 = *(v139 - 1);
  __chkstk_darwin(v139);
  v133 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v7 = __chkstk_darwin(v6 - 8);
  v127 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v129 = &v114 - v10;
  v11 = __chkstk_darwin(v9);
  v130 = &v114 - v12;
  __chkstk_darwin(v11);
  v132 = &v114 - v13;
  v136 = type metadata accessor for TLV();
  v14 = *(v136 - 8);
  v15 = __chkstk_darwin(v136);
  v126 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v128 = &v114 - v18;
  v19 = __chkstk_darwin(v17);
  v131 = &v114 - v20;
  __chkstk_darwin(v19);
  v22 = &v114 - v21;
  if (qword_10039D548 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_10000403C(v23, qword_1003A2600);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v134 = v22;
  v135 = v14;
  if (v27)
  {
    v28 = v24;
    v29 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    *v29 = 136315394;
    v30 = _typeName(_:qualified:)();
    v32 = v4;
    v33 = sub_100008F6C(v30, v31, &v141);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    v34 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034C170, _swiftEmptyArrayStorage);
    v36 = sub_100008F6C(v34, v35, &v141);

    *(v29 + 14) = v36;
    v4 = v32;
    v3 = v2;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s.%s", v29, 0x16u);
    swift_arrayDestroy();

    v24 = v28;
  }

  v37 = v139;
  if (qword_10039D728 != -1)
  {
    swift_once();
  }

  if ([qword_1003A6EA0 canEvaluatePolicy:2 error:0])
  {
    v38 = *(v4 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession);
    if (v38)
    {
      v39 = v38;
      if (![v39 isActive])
      {
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&_mh_execute_header, v56, v57, "session not active", v58, 2u);
        }

        sub_100021328(12010, 0xD000000000000028, 0x800000010034C0D0, 0);
        goto LABEL_37;
      }

      v40 = *(v4 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_pinLength);
      if (v40)
      {
        if (v40 < *(v4 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_minPinLength))
        {
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 0;
            _os_log_impl(&_mh_execute_header, v41, v42, "not enough pin digits", v43, 2u);
          }

          v44 = 0x800000010034C150;
          v45 = 12009;
          v46 = 0xD000000000000012;
LABEL_33:
          v3 = sub_100021328(v45, v46, v44, 0);
          swift_willThrow();
LABEL_34:
          swift_errorRetain();
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v141 = v75;
            *v74 = 136315138;
            v140 = v3;
            swift_errorRetain();
            sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
            v76 = String.init<A>(describing:)();
            v78 = sub_100008F6C(v76, v77, &v141);

            *(v74 + 4) = v78;
            _os_log_impl(&_mh_execute_header, v72, v73, "%s", v74, 0xCu);
            sub_10000959C(v75);
          }

LABEL_37:
          swift_willThrow();

          goto LABEL_38;
        }

        if (*(v4 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_maxPinLength) < v40)
        {
          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            *v71 = 0;
            _os_log_impl(&_mh_execute_header, v69, v70, "pin length exceeded", v71, 2u);
          }

          v46 = 0xD000000000000013;
          v44 = 0x800000010034C130;
          v45 = 12006;
          goto LABEL_33;
        }

        v79 = sub_1000C99F0();
        if (v3)
        {
          goto LABEL_34;
        }

        v81 = v79;
        v82 = v80;
        v83 = static TLV.decode(from:)();
        v121 = v81;
        v122 = v4;
        v124 = v82;
        v125 = v24;
        v123 = v83;
        v141 = v83;
        v84 = v133;
        static TLVTag.cipherBlob.getter();
        v85 = sub_100004074(&qword_1003A2700, &qword_1002C16D0);
        v86 = sub_1000CCFF4();
        v87 = v132;
        v117 = v85;
        v116 = v86;
        Collection<>.first(tag:)();
        v120 = *(v137 + 8);
        v137 += 8;
        v120(v84, v37);
        v89 = v135;
        v88 = v136;
        v90 = *(v135 + 48);
        v119 = v135 + 48;
        v118 = v90;
        if (v90(v87, 1, v136) == 1)
        {

          v4 = v122;
          v91 = v87;
LABEL_49:
          sub_10000BD44(v91, &unk_10039E210, &unk_1002C65B0);
          v102 = v121;
          v103 = v124;
          sub_1000094F4(v121, v124);
          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.error.getter();
          sub_100009548(v102, v103);
          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            v141 = v107;
            *v106 = 136315138;
            v108 = Data.hexString()();
            v109 = v39;
            v110 = sub_100008F6C(v108._countAndFlagsBits, v108._object, &v141);
            v103 = v124;

            *(v106 + 4) = v110;
            v39 = v109;
            _os_log_impl(&_mh_execute_header, v104, v105, "Error parsing PIN applet response: %s", v106, 0xCu);
            sub_10000959C(v107);
          }

          v3 = sub_100021328(12003, 0xD000000000000021, 0x800000010034C100, 0);
          swift_willThrow();
          sub_100009548(v102, v103);
          goto LABEL_34;
        }

        v92 = *(v89 + 32);
        v132 = (v89 + 32);
        v115 = v92;
        v92(v134, v87, v88);
        static TLVTag.blobDefinition.getter();
        v93 = v130;
        TLV.firstChild(tag:)();
        v94 = v136;
        v120(v84, v139);
        if (v118(v93, 1, v94) == 1)
        {
          (*(v89 + 8))(v134, v94);

          v91 = v93;
          v4 = v122;
          goto LABEL_49;
        }

        v115(v131, v93, v94);
        v141 = v123;
        static TLVTag.keyBlob.getter();
        v95 = v129;
        Collection<>.first(tag:)();
        v96 = v136;
        v120(v84, v139);

        if (v118(v95, 1, v96) == 1)
        {
          v97 = *(v89 + 8);
          v97(v131, v96);
          v97(v134, v96);
          v91 = v95;
LABEL_48:
          v4 = v122;
          goto LABEL_49;
        }

        v98 = v128;
        v115(v128, v95, v96);
        static TLVTag.blobDefinition.getter();
        v99 = v127;
        TLV.firstChild(tag:)();
        v100 = v136;
        v120(v84, v139);
        if (v118(v99, 1, v100) == 1)
        {
          v101 = *(v89 + 8);
          v101(v98, v100);
          v101(v131, v100);
          v101(v134, v100);
          v91 = v99;
          goto LABEL_48;
        }

        v115(v126, v99, v100);
        if (qword_10039D3F0 != -1)
        {
          swift_once();
        }

        v64 = sub_100123DC4(2, qword_1003A6AF0, *algn_1003A6AF8);
        v67 = v111;
        v62 = TLV.dataRepresentation.getter();
        v139 = v39;
        v65 = v112;
        v63 = TLV.dataRepresentation.getter();
        v66 = v113;
        sub_100009548(v121, v124);

        v139 = *(v89 + 8);
        (v139)(v126, v136);
        (v139)(v128, v136);
        (v139)(v131, v136);
        (v139)(v134, v136);
        sub_1000CC750(v122);
      }

      else
      {
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v59, v60, "pin bypass", v61, 2u);
        }

        sub_1000CC750(v4);
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v65 = 0xC000000000000000;
        v66 = 0xC000000000000000;
        v67 = 0xC000000000000000;
      }

      v68 = v138;
      *v138 = v62;
      v68[1] = v65;
      v68[2] = v63;
      v68[3] = v66;
      v68[4] = v64;
      v68[5] = v67;
      *(v68 + 48) = v40 == 0;
      return;
    }

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "no session", v55, 2u);
    }

    v50 = 0xD000000000000025;
    v51 = 0x800000010034C0A0;
    v52 = 12010;
  }

  else
  {
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "no passcode when generating PIN block", v49, 2u);
    }

    v50 = 0xD00000000000001BLL;
    v51 = 0x800000010034C080;
    v52 = 12008;
  }

  sub_100021328(v52, v50, v51, 0);
  swift_willThrow();
LABEL_38:
  sub_1000CC750(v4);
}

void sub_1000CC750(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession;
  v3 = *(a1 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession);
  if (v3)
  {
    v7[4] = sub_1000CCEC4;
    v7[5] = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100003974;
    v7[3] = &unk_100383050;
    v4 = _Block_copy(v7);
    v5 = v3;
    [v5 endSessionWithCompletion:v4];
    _Block_release(v4);
  }

  *(a1 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_pinLength) = 0;
  v6 = *(a1 + v2);
  *(a1 + v2) = 0;
}

void sub_1000CC830()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_10039D548 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A2600);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, v18);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034C060, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v18);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession;
  v13 = *(v1 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession);
  if (v13)
  {
    v14 = v13;
    sub_100003ABC();

    v15 = *(v1 + v12);
    if (v15)
    {
      v18[4] = sub_1000CCAB4;
      v18[5] = 0;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 1107296256;
      v18[2] = sub_100003974;
      v18[3] = &unk_100383028;
      v16 = _Block_copy(v18);
      v17 = v15;
      [v17 endSessionWithCompletion:v16];
      _Block_release(v16);

      v13 = *(v1 + v12);
    }

    else
    {
      v13 = 0;
    }
  }

  *(v1 + v12) = 0;

  *(v1 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_pinLength) = 0;
}

uint64_t sub_1000CCAD4(uint64_t result)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession;
  v4 = *(v1 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession);
  if (!v4)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  sub_10000411C(0, &qword_10039E4D8, NFSecureElementManagerSession_ptr);
  v6 = v5;
  v7 = v4;
  LOBYTE(v5) = static NSObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (qword_10039D548 != -1)
  {
LABEL_8:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_1003A2600);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "secureElementManagerSessionDidEndUnexpectedly()", v11, 2u);
  }

  v12 = *(v2 + v3);
  *(v2 + v3) = 0;

  v13 = (v2 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_auditor);
  v14 = *(v2 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_auditor + 24);
  v15 = v13[4];
  sub_10000BE18(v13, v14);
  sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = 0xD000000000000010;
  v17 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0x800000010034C010;
  *(inited + 48) = 0xD00000000000002DLL;
  *(inited + 56) = 0x800000010034C030;
  v18 = sub_100184010(inited);
  swift_setDeallocating();
  sub_10000BD44(v17, &qword_10039FEC8, &unk_1002C37B0);
  sub_1000C2288(0x1Bu, v18, v14, v15);
}

id sub_1000CCDD0(uint64_t a1, unint64_t a2)
{
  result = sub_1000CA6F0(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

double sub_1000CCE50@<D0>(uint64_t a1@<X8>)
{
  sub_1000CB724(v7);
  if (!v1)
  {
    result = *v7;
    v4 = v7[1];
    v5 = v7[2];
    v6 = v8;
    *a1 = v7[0];
    *(a1 + 16) = v4;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_1000CCEE4(uint64_t (*a1)(void), const char *a2)
{
  if (qword_10039D548 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A2600);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

uint64_t sub_1000CCFDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000CCFF4()
{
  result = qword_10039E230;
  if (!qword_10039E230)
  {
    sub_1000040BC(&qword_1003A2700, &qword_1002C16D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E230);
  }

  return result;
}

uint64_t sub_1000CD084()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A2708);
  sub_10000403C(v0, qword_1003A2708);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.pinController.getter();
}

uint64_t sub_1000CD0F0()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100003FD8(v0, qword_1003A2720);
  v1 = sub_10000403C(v0, qword_1003A2720);
  if (qword_10039D740 != -1)
  {
    swift_once();
  }

  v2 = sub_10000403C(v0, qword_1003A6ED8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1000CD1B8()
{
  _StringGuts.grow(_:)(47);

  if (*(v0 + 152))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 152))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v3 = v2;
  String.append(_:)(*&v1);

  v4._countAndFlagsBits = 93;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0xD00000000000002CLL;
}

uint64_t sub_1000CD26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100383270;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  j___s8Dispatch0A3QoSV11unspecifiedACvgZ(ObjectType);
  sub_1000039BC(ObjectType, v15, v16);
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v14);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  if ((*(v3 + 272) & 1) == 0)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.resume()();
    swift_unknownObjectRelease();
  }

  sub_1000D4058();

  sub_1000D7010();

  v17 = [objc_opt_self() defaultCenter];
  v18 = AVSystemController_RecordingStateDidChangeNotification;
  v19 = [objc_opt_self() sharedInstance];
  [v17 removeObserver:v4 name:v18 object:v19];

  sub_10000959C((v4 + 16));
  sub_1000D7504(*(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), *(v4 + 88), *(v4 + 96), *(v4 + 104), *(v4 + 112), *(v4 + 120), *(v4 + 128));
  sub_10001A074(*(v4 + 136), *(v4 + 144));
  sub_10000959C((v4 + 160));
  sub_10000959C((v4 + 200));
  sub_1000048A0(*(v4 + 248), *(v4 + 256));
  swift_unknownObjectRelease();

  sub_10000959C((v4 + 304));
  sub_10000959C((v4 + 344));
  sub_10000959C((v4 + 384));

  return v4;
}

uint64_t sub_1000CD618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000CD26C(a1, a2, a3);

  return swift_deallocClassInstance();
}

double sub_1000CD64C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_1003A2708);

  v9 = a2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v12 = 136315394;
    _StringGuts.grow(_:)(47);

    *&v28[0] = 0xD00000000000002CLL;
    *(&v28[0] + 1) = 0x800000010034C3D0;
    if (*(a1 + 152))
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (*(a1 + 152))
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v15 = v14;
    String.append(_:)(*&v13);

    v16._countAndFlagsBits = 93;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v17 = sub_100008F6C(*&v28[0], *(&v28[0] + 1), &v29);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1002C1660;
    *(v18 + 56) = sub_10000411C(0, &qword_1003A2A08, SPRPINParameter_ptr);
    *(v18 + 32) = v9;
    v19 = v9;
    v20 = showFunction(signature:_:)(0xD000000000000017, 0x800000010034C440, v18);
    v22 = v21;

    v23 = v20;
    v4 = v3;
    v24 = sub_100008F6C(v23, v22, &v29);

    *(v12 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000CD944(v9, v28);
  if (!v4)
  {
    result = *v28;
    v26 = v28[1];
    v27 = v28[2];
    *a3 = v28[0];
    a3[1] = v26;
    a3[2] = v27;
  }

  return result;
}

void sub_1000CD944(NSObject *a1@<X0>, void (**a2)(char *, char *, uint64_t)@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v129 - v12;
  __chkstk_darwin(v11);
  v15 = &v129 - v14;
  if (*(v3 + 152))
  {
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000403C(v16, qword_1003A2708);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "PIN capture in progress", v19, 2u);
    }

    v20 = 0xD00000000000001FLL;
    v21 = 0x800000010034CA00;
    v22 = 11004;
LABEL_29:
    sub_1000217A0(v22, v20, v21, 0);
    swift_willThrow();
    return;
  }

  v140 = a2;
  v141 = a1;
  v23 = [objc_opt_self() sharedHardwareManager];
  v24 = [v23 getHwSupport];

  if (v24 != 2)
  {
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000403C(v46, qword_1003A2708);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "NFC not available", v49, 2u);
    }

    v22 = 11015;
    v20 = 0;
    v21 = 0;
    goto LABEL_29;
  }

  v137 = v10;
  if (qword_10039D558 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for OSSignposter();
  v26 = sub_10000403C(v25, qword_1003A2720);
  static OSSignpostID.exclusive.getter();
  v134 = v26;
  v27 = OSSignposter.logHandle.getter();
  v28 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v29 = swift_slowAlloc();
    v139 = v3;
    v30 = v7;
    v31 = v29;
    *v29 = 0;
    v32 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, v28, v32, "pin-captureStart", "begin capture pin initialization", v31, 2u);
    v7 = v30;
    v3 = v139;
  }

  v133 = *(v7 + 16);
  v133(v13, v15, v6);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v33 = OSSignpostIntervalState.init(id:isOpen:)();
  v138 = v6;
  v139 = v33;
  v135 = *(v7 + 8);
  v136 = v7 + 8;
  v135(v15, v6);
  sub_10000BE18((v3 + 304), *(v3 + 328));
  type metadata accessor for DefaultManagedDictionary();
  sub_10017A944(0);
  if (!v158)
  {
    sub_10000BD44(v157, &qword_10039E248, &qword_1002C23D0);
    goto LABEL_31;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    sub_1000217A0(11004, 0xD00000000000002BLL, 0x800000010034C5B0, 0);
    swift_willThrow();
    goto LABEL_32;
  }

  v34 = v154;
  v35 = v153;
  v148 = v154;
  v149 = v155;
  v146 = v152;
  v147 = v153;
  v36 = *(v3 + 88);
  v151[1] = *(v3 + 72);
  v151[2] = v36;
  v37 = *(v3 + 120);
  v151[3] = *(v3 + 104);
  v151[4] = v37;
  v38 = *(v3 + 56);
  v39 = v155;
  v150 = v156;
  v151[0] = v38;
  *(v3 + 56) = v152;
  *(v3 + 120) = v156;
  *(v3 + 104) = v39;
  *(v3 + 88) = v34;
  *(v3 + 72) = v35;
  sub_1000D7454(&v146, v145);
  sub_10000BD44(v151, &qword_1003A2A20, &qword_1002C6C88);
  v40 = v159;
  sub_1000CEC9C(v141);
  if (v40)
  {
    v145[0] = v40;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    type metadata accessor for PINControllerError(0);
    if (swift_dynamicCast())
    {
      v41 = v144;
      v143 = v144;
      sub_1000D73EC(&qword_10039DAB0, type metadata accessor for PINControllerError, &unk_1002BF520);
      if (_BridgedStoredNSError.errorCode.getter() >= 11000)
      {
        v143 = v41;
        if (_BridgedStoredNSError.errorCode.getter() <= 11999)
        {

          if (qword_10039D550 != -1)
          {
            swift_once();
          }

          v112 = type metadata accessor for Logger();
          sub_10000403C(v112, qword_1003A2708);
          v113 = v41;
          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            v159 = swift_slowAlloc();
            v142 = v113;
            v143 = v159;
            *v116 = 136315138;
            v117 = v113;
            v118 = String.init<A>(describing:)();
            v120 = sub_100008F6C(v118, v119, &v143);
            v141 = v114;
            v121 = v115;
            v122 = v120;

            *(v116 + 4) = v122;
            v123 = v141;
            _os_log_impl(&_mh_execute_header, v141, v121, "validation failed: %s", v116, 0xCu);
            sub_10000959C(v159);
          }

          else
          {
          }

          v127 = *(v3 + 296);
          v143 = v113;
          v128 = _BridgedStoredNSError.errorCode.getter();
          *(v127 + 120) = 0;
          *(v127 + 160) = v128;
          swift_willThrow();
          sub_1000D74B0(&v146);

          goto LABEL_32;
        }
      }
    }

    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000403C(v42, qword_1003A2708);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "throwing non PINControllerError?", v45, 2u);
    }

    swift_errorRetain();
    sub_1000217A0(11004, 0, 0, v40);

    swift_willThrow();

    sub_1000D74B0(&v146);
LABEL_32:
    sub_1000CEA10(v139);

    return;
  }

  v159 = 0;
  OSSignposter.logHandle.getter();
  v50 = v137;
  OSSignpostID.init(log:)();
  v51 = OSSignposter.logHandle.getter();
  v52 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v53 = swift_slowAlloc();
    LODWORD(v134) = v52;
    v54 = v53;
    *v53 = 0;
    v55 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, v134, v55, "pin-totalCaptureTime", "begin pin capture", v54, 2u);
  }

  v133(v13, v50, v138);
  swift_allocObject();
  *(v3 + 280) = OSSignpostIntervalState.init(id:isOpen:)();

  v56 = [v141 pinToken];
  v57 = v56;
  if (v56)
  {

    v58 = &off_10037E6E0;
  }

  else
  {
    v58 = &off_10037E708;
  }

  v59 = v159;
  v60 = *(v3 + 296);
  *(v60 + 123) = v57 != 0;
  sub_100027F94(v58);

  sub_10011BBA0(&off_10037E758);
  sub_10011B164(&off_10037E730);
  v61 = [v141 transactionDataLifetime];
  *(v3 + 240) = v62;
  sub_1000D32D0(v61, v63, v64);
  sub_1000D2A08(v65, v66, v67);
  v68 = *(v3 + 184);
  v69 = *(v3 + 192);
  sub_10000BE18((v3 + 160), v68);
  v70 = v59;
  v71 = (*(v69 + 8))(*(&v147 + 1), v148, v68, v69);
  v159 = v59;
  if (v59)
  {
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_10000403C(v75, qword_1003A2708);
    swift_errorRetain();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v144 = v70;
      v145[0] = v79;
      *v78 = 136315138;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v80 = String.init<A>(describing:)();
      v82 = sub_100008F6C(v80, v81, v145);

      *(v78 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v76, v77, "Error initializing PIN applet: %s", v78, 0xCu);
      sub_10000959C(v79);
    }

    v83 = *(v3 + 224);
    v84 = *(v3 + 232);
    sub_10000BE18((v3 + 200), v83);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x800000010034C010;
    v145[0] = v159;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v86 = String.init<A>(describing:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 48) = v86;
    *(inited + 56) = v87;
    v88 = sub_100184010(inited);
    swift_setDeallocating();
    sub_10000BD44(inited + 32, &qword_10039FEC8, &unk_1002C37B0);
    sub_1000C2288(0x1Bu, v88, v83, v84);

    v145[0] = sub_1000217A0(11001, 0, 0, 0);
    type metadata accessor for PINControllerError(0);
    sub_1000D73EC(&qword_10039DAB0, type metadata accessor for PINControllerError, &unk_1002BF520);
    v89 = _BridgedStoredNSError.errorCode.getter();
    *(v60 + 120) = 0;
    *(v60 + 160) = v89;
    swift_willThrow();

    sub_1000D74B0(&v146);
    goto LABEL_52;
  }

  v90 = v73;
  v91 = v74;
  v132 = v60;
  v92 = v71;
  v93 = v72;
  sub_1000094F4(v71, v72);
  sub_1000094F4(v90, v91);
  sub_100009548(v90, v91);
  sub_1000094F4(v92, v93);
  sub_1000094F4(v90, v91);
  sub_100009548(v92, v93);
  v134 = static Data.randomBytes(count:)();
  v141 = v94;
  sub_10000BE18((v3 + 304), *(v3 + 328));
  v131 = v90;
  sub_10017A138(0);
  sub_10000BD44(v145, &qword_10039E248, &qword_1002C23D0);
  v95 = *(v3 + 224);
  v133 = *(v3 + 232);
  v130 = sub_10000BE18((v3 + 200), v95);
  sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  v96 = swift_initStackObject();
  *(v96 + 16) = xmmword_1002C1660;
  strcpy((v96 + 32), "transactionId");
  *(v96 + 72) = &type metadata for String;
  *(v96 + 80) = &protocol witness table for String;
  v98 = *(&v146 + 1);
  v97 = v147;
  *(v96 + 46) = -4864;
  *(v96 + 48) = v98;
  *(v96 + 56) = v97;

  v99 = sub_100184010(v96);
  swift_setDeallocating();
  sub_10000BD44(v96 + 32, &qword_10039FEC8, &unk_1002C37B0);
  sub_1000C2288(0x18u, v99, v95, v133);

  v133 = v92;
  v100 = v92;
  v101 = v93;
  v102 = v93;
  v103 = v131;
  sub_100009548(v100, v102);
  sub_100009548(v103, v91);
  v104 = *(v3 + 136);
  v105 = *(v3 + 144);
  *(v3 + 136) = v103;
  *(v3 + 144) = v91;
  sub_1000094F4(v103, v91);
  sub_10001A074(v104, v105);
  sub_1000D7010();
  if ((sub_1000D4374() & 1) == 0)
  {
    v124 = v132;
    *(v132 + 120) = 0;
    *(v124 + 160) = 11013;
    sub_100027534();
    v125 = *(v3 + 184);
    v126 = *(v3 + 192);
    sub_10000BE18((v3 + 160), v125);
    (*(v126 + 40))(v125, v126);
    sub_1000217A0(11013, 0xD000000000000019, 0x800000010034C9C0, 0);
    swift_willThrow();
    sub_1000D74B0(&v146);
    sub_100009548(v133, v101);
    sub_100009548(v103, v91);
    sub_100009548(v134, v141);
LABEL_52:
    v135(v137, v138);
    goto LABEL_32;
  }

  v106 = v133;
  v130 = v101;
  v107 = *(v132 + 56);
  os_unfair_lock_lock(v107 + 8);
  v108 = v159;
  sub_10011D358(&v107[4], 9);
  os_unfair_lock_unlock(v107 + 8);
  if (v108)
  {
    __break(1u);
  }

  else
  {
    sub_1000D74B0(&v146);
    v135(v137, v138);
    *(v3 + 152) = 1;
    sub_1000CEA10(v139);

    v109 = v140;
    v110 = v130;
    *v140 = v106;
    v109[1] = v110;
    v109[2] = v103;
    v109[3] = v91;
    v111 = v141;
    v109[4] = v134;
    v109[5] = v111;
  }
}

uint64_t sub_1000CEA10(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D558 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000403C(v9, qword_1003A2720);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "end capture pin initialization";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "pin-captureStart", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

id sub_1000CEC9C(void *a1)
{
  v2 = v1;
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A2708);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v59 = a1;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *&v54 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, &v54);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = showFunction(signature:_:)(0xD000000000000019, 0x800000010034C9A0, _swiftEmptyArrayStorage);
    v13 = sub_100008F6C(v11, v12, &v54);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *(v1 + 72);
  v54 = *(v1 + 56);
  v55 = v14;
  v15 = *(v1 + 120);
  v16 = *(v1 + 104);
  v56 = *(v1 + 88);
  v57 = v16;
  v58 = v15;
  if (!v55)
  {
    sub_1000217A0(11004, 0xD000000000000037, 0x800000010034C810, 0);
LABEL_27:
    v43 = v2[28];
    v44 = v2[29];
    sub_10000BE18(v2 + 25, v43);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x800000010034C010;
    swift_getErrorValue();
    v46 = Error.localizedDescription.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 48) = v46;
    *(inited + 56) = v47;
    v48 = sub_100184010(inited);
    swift_setDeallocating();
    sub_10000BD44(inited + 32, &qword_10039FEC8, &unk_1002C37B0);
    sub_1000C2288(0x1Bu, v48, v43, v44);

    return swift_willThrow();
  }

  v17 = v54;
  v18 = v58;
  v19 = *(&v55 + 1);
  v21 = v56;
  v20 = v57;

  sub_1000094F4(v19, v21);
  sub_1000094F4(*(&v21 + 1), v20);
  sub_1000094F4(v18, *(&v18 + 1));
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = v17 & 1;
    _os_log_impl(&_mh_execute_header, v22, v23, "internalTransactionData.pinRequired: %{BOOL}d", v24, 8u);
  }

  v25 = v59;
  v26 = [v59 digest];
  v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  LOBYTE(v26) = sub_10017688C(v27, v29, v18, *(&v18 + 1));
  sub_100009548(v27, v29);
  if ((v26 & 1) == 0)
  {
    _StringGuts.grow(_:)(138);
    v33._countAndFlagsBits = 0xD000000000000088;
    v33._object = 0x800000010034C850;
    String.append(_:)(v33);
    v34 = Data.hexString()();
    String.append(_:)(v34);

    v32 = 0;
    v35 = 0xE000000000000000;
LABEL_25:
    v40 = 11004;
    goto LABEL_26;
  }

  v30 = [v25 pinToken];
  if (v30)
  {

    if (v17)
    {
      v31 = "s than the maximum ";
      v32 = 0xD000000000000027;
LABEL_24:
      v35 = (v31 | 0x8000000000000000);
      goto LABEL_25;
    }
  }

  v36 = [v25 pinToken];
  if (v36)
  {
  }

  else if ((v17 & 1) == 0)
  {
    v31 = "transactionFingerprint: ";
    v32 = 0xD00000000000003BLL;
    goto LABEL_24;
  }

  [v25 transactionDataLifetime];
  if (v37 <= 0.0 || ([v25 transactionDataLifetime], v38 > 300.0))
  {
    _StringGuts.grow(_:)(69);
    v39._countAndFlagsBits = 0xD000000000000043;
    v39._object = 0x800000010034C920;
    String.append(_:)(v39);
    Double.write<A>(to:)();
    v32 = 0;
    v35 = 0xE000000000000000;
    v40 = 11010;
LABEL_26:
    sub_1000217A0(v40, v32, v35, 0);
    sub_10000BD44(&v54, &qword_1003A2A20, &qword_1002C6C88);
    goto LABEL_27;
  }

  v41 = [v25 pinToken];
  if (!v41)
  {
    return sub_10000BD44(&v54, &qword_1003A2A20, &qword_1002C6C88);
  }

  if (v17)
  {
    return sub_10000BD44(&v54, &qword_1003A2A20, &qword_1002C6C88);
  }

  result = [v25 pinToken];
  if (result)
  {
    v49 = result;
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    sub_1000D36C4(v50, v52);
    if (v53)
    {

      return sub_10000BD44(&v54, &qword_1003A2A20, &qword_1002C6C88);
    }

    else
    {
      sub_10000BD44(&v54, &qword_1003A2A20, &qword_1002C6C88);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000CF3E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_1003A2708);
  sub_1000094F4(a1, a2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  sub_100009548(a1, a2);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100008F6C(v10, v11, &v20);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1002C1660;
    v14 = Data.hexString()();
    *(v13 + 56) = &type metadata for String;
    *(v13 + 32) = v14;
    v15 = showFunction(signature:_:)(0xD000000000000011, 0x800000010034C1B0, v13);
    v17 = v16;

    v18 = sub_100008F6C(v15, v17, &v20);

    *(v9 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s.%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  return sub_1000CF638(a1, a2);
}

uint64_t sub_1000CF638(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v42 - v12;
  if (*(v4 + 152) != 1)
  {
    sub_1000217A0(11004, 0xD00000000000001BLL, 0x800000010034C670, 0);
    return swift_willThrow();
  }

  v42 = a1;
  v43 = a2;
  v44 = v3;
  if (qword_10039D558 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10000403C(v14, qword_1003A2720);
  static OSSignpostID.exclusive.getter();
  v15 = OSSignposter.logHandle.getter();
  v16 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v16, v18, "pin-addDigit", "begin add digit daemon", v17, 2u);
  }

  (*(v8 + 16))(v11, v13, v7);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v19 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v8 + 8))(v13, v7);
  if (!*(v4 + 72))
  {
    v29 = sub_1000217A0(11004, 0xD000000000000013, 0x800000010034C690, 0);
    v30 = *(v4 + 296);
    v46 = v29;
    type metadata accessor for PINControllerError(0);
    sub_1000D73EC(&qword_10039DAB0, type metadata accessor for PINControllerError, &unk_1002BF520);
    v31 = _BridgedStoredNSError.errorCode.getter();
    *(v30 + 120) = 0;
    *(v30 + 160) = v31;
    sub_100027534();
    v32 = *(v4 + 184);
    v33 = *(v4 + 192);
    sub_10000BE18((v4 + 160), v32);
    (*(v33 + 40))(v32, v33);
    *(v4 + 152) = 0;
    swift_willThrow();
LABEL_17:
    sub_1000CFCBC(v19);
  }

  sub_1000279D8();
  v20 = *(v4 + 184);
  v21 = *(v4 + 192);
  sub_10000BE18((v4 + 160), v20);
  v22 = v44;
  (*(v21 + 16))(v42, v43, v20, v21);
  if (!v22)
  {
    *(v4 + 273) = 0;
    goto LABEL_17;
  }

  _s3__C4CodeOMa_7(0);
  v46 = 12006;
  swift_errorRetain();
  sub_1000D73EC(&qword_10039DAD0, _s3__C4CodeOMa_7, &unk_1002BF6D8);
  v23 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v23)
  {

    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000403C(v24, qword_1003A2708);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Maximum Applet PIN length exceeded", v27, 2u);
    }

    sub_1000217A0(11007, 0, 0, 0);
    swift_willThrow();
    goto LABEL_17;
  }

  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000403C(v34, qword_1003A2708);
  swift_errorRetain();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v46 = v38;
    *v37 = 136315138;
    v45 = v22;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v39 = String.init<A>(describing:)();
    v41 = sub_100008F6C(v39, v40, &v46);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "Error adding digit: %s", v37, 0xCu);
    sub_10000959C(v38);
  }

  sub_1000217A0(11006, 0xD000000000000029, 0x800000010034C7D0, 0);
  swift_willThrow();

  sub_1000CFCBC(v19);
}

uint64_t sub_1000CFCBC(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D558 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000403C(v9, qword_1003A2720);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "end add digit daemon";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "pin-addDigit", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1000CFF48(uint64_t a1)
{
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A2708);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315394;
    v15 = v6;
    _StringGuts.grow(_:)(47);

    if (*(a1 + 152))
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (*(a1 + 152))
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v9 = v8;
    String.append(_:)(*&v7);

    v10._countAndFlagsBits = 93;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11 = sub_100008F6C(0xD00000000000002CLL, 0x800000010034C3D0, &v15);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2080;
    v12 = showFunction(signature:_:)(0xD000000000000011, 0x800000010034C190, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, &v15);

    *(v5 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000D0194();
}

void sub_1000D0194()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v26 - v9;
  if (*(v0 + 152) != 1)
  {
    sub_1000217A0(11004, 0xD00000000000001BLL, 0x800000010034C670, 0);
    swift_willThrow();
    return;
  }

  if (qword_10039D558 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for OSSignposter();
  sub_10000403C(v11, qword_1003A2720);
  static OSSignpostID.exclusive.getter();
  v12 = OSSignposter.logHandle.getter();
  v13 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v14 = swift_slowAlloc();
    v26[0] = v1;
    v15 = v14;
    *v14 = 0;
    v16 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v16, "pin-removeDigit", "begin remove pin digit", v15, 2u);
    v2 = v26[0];
  }

  (*(v5 + 16))(v8, v10, v4);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v17 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v5 + 8))(v10, v4);
  if (!*(v0 + 72))
  {
    v21 = sub_1000217A0(11004, 0xD000000000000013, 0x800000010034C690, 0);
    v22 = *(v0 + 296);
    v26[3] = v21;
    type metadata accessor for PINControllerError(0);
    sub_1000D73EC(&qword_10039DAB0, type metadata accessor for PINControllerError, &unk_1002BF520);
    v23 = _BridgedStoredNSError.errorCode.getter();
    *(v22 + 120) = 0;
    *(v22 + 160) = v23;
    sub_100027534();
    v24 = *(v0 + 184);
    v25 = *(v0 + 192);
    sub_10000BE18((v0 + 160), v24);
    (*(v25 + 40))(v24, v25);
    *(v0 + 152) = 0;
    swift_willThrow();
    goto LABEL_11;
  }

  v18 = *(*(v0 + 296) + 56);
  os_unfair_lock_lock((v18 + 32));
  sub_10011C1A4((v18 + 16), 27, 1);
  if (!v2)
  {
    os_unfair_lock_unlock((v18 + 32));
    v19 = v3[23];
    v20 = v3[24];
    sub_10000BE18(v3 + 20, v19);
    (*(v20 + 24))(v19, v20);
LABEL_11:
    sub_1000D0820(v17);

    return;
  }

  os_unfair_lock_unlock((v18 + 32));
  __break(1u);
}

uint64_t sub_1000D0820(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D558 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000403C(v9, qword_1003A2720);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "end remove pin digit";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "pin-removeDigit", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1000D0AAC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A2708);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v8 = 136315394;
    _StringGuts.grow(_:)(47);

    if (*(a1 + 152))
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (*(a1 + 152))
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = v10;
    String.append(_:)(*&v9);

    v12._countAndFlagsBits = 93;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = sub_100008F6C(0xD00000000000002CLL, 0x800000010034C3D0, &v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v14 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034C420, _swiftEmptyArrayStorage);
    v16 = sub_100008F6C(v14, v15, &v18);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000D0D0C();
  if (!v2)
  {
    *a2 = v17;
  }
}

void sub_1000D0D0C()
{
  v2 = *v0;
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v108 - v8;
  v133 = v0;
  if (*(v0 + 152) != 1)
  {
    sub_1000217A0(11004, 0xD00000000000001BLL, 0x800000010034C670, 0);
    swift_willThrow();
    return;
  }

  v123 = v2;
  v124 = v1;
  if (qword_10039D558 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000403C(v10, qword_1003A2720);
  static OSSignpostID.exclusive.getter();
  v11 = OSSignposter.logHandle.getter();
  v12 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v14, "pin-generateBlock", "begin generate pin block", v13, 2u);
  }

  (*(v4 + 16))(v7, v9, v3);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v15 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v4 + 8))(v9, v3);
  v16 = v133;
  v17 = *(v133 + 72);
  v128 = *(v133 + 56);
  v129 = v17;
  v18 = *(v133 + 104);
  v130 = *(v133 + 88);
  v131 = v18;
  v132 = *(v133 + 120);
  v19 = v129;
  if (!v129)
  {
    v26 = sub_1000217A0(11004, 0xD000000000000013, 0x800000010034C690, 0);
    v27 = v16[37];
    v126[0] = v26;
    type metadata accessor for PINControllerError(0);
    sub_1000D73EC(&qword_10039DAB0, type metadata accessor for PINControllerError, &unk_1002BF520);
    v28 = _BridgedStoredNSError.errorCode.getter();
    *(v27 + 120) = 0;
    *(v27 + 160) = v28;
    sub_100027534();
    v29 = v16[23];
    v30 = v16[24];
    sub_10000BE18(v16 + 20, v29);
    (*(v30 + 40))(v29, v30);
    swift_willThrow();
    goto LABEL_11;
  }

  v20 = *(v133 + 144);
  if (v20 >> 60 == 15)
  {
    sub_1000D6FA0(&v128, v126);
    v21 = sub_1000217A0(11009, 0xD000000000000054, 0x800000010034C6B0, 0);
    v22 = v16[37];
    v126[0] = v21;
    type metadata accessor for PINControllerError(0);
    sub_1000D73EC(&qword_10039DAB0, type metadata accessor for PINControllerError, &unk_1002BF520);
    v23 = _BridgedStoredNSError.errorCode.getter();
    *(v22 + 120) = 0;
    *(v22 + 160) = v23;
    sub_100027534();
    v24 = v16[23];
    v25 = v16[24];
    sub_10000BE18(v16 + 20, v24);
    (*(v25 + 40))(v24, v25);
    swift_willThrow();
    sub_10000BD44(&v128, &qword_1003A2A20, &qword_1002C6C88);
LABEL_11:
    sub_1000D1C74(v16, v15);
LABEL_20:

    return;
  }

  v119 = v15;
  v31 = *(&v128 + 1);
  v112 = v131;
  v113 = *(&v130 + 1);
  LODWORD(v111) = BYTE8(v131);
  v32 = *(v133 + 136);
  v122 = *(v133 + 296);
  v33 = v122[7];
  sub_1000D6FA0(&v128, v126);
  v120 = v32;
  v121 = v20;
  sub_10001A3E8(v32, v20);
  os_unfair_lock_lock(v33 + 8);
  v34 = v124;
  sub_10011C8AC(&v33[4], 10);
  if (v34)
  {
    os_unfair_lock_unlock(v33 + 8);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v33 + 8);
    v35 = v16[23];
    v36 = v16[24];
    sub_10000BE18(v16 + 20, v35);
    (*(v36 + 32))(v126, v35, v36);
    v116 = v126[2];
    v114 = v126[0];
    v115 = v126[3];
    v124 = v126[4];
    v117 = v126[5];
    v118 = v126[1];
    v37 = v31;
    v38 = v127;
    v39 = v16[28];
    v110 = v16[29];
    v109 = sub_10000BE18(v16 + 25, v39);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    strcpy((inited + 32), "transactionId");
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 46) = -4864;
    *(inited + 48) = v37;
    v108 = v37;
    *(inited + 56) = v19;

    v41 = sub_100184010(inited);
    swift_setDeallocating();
    sub_10000BD44(inited + 32, &qword_10039FEC8, &unk_1002C37B0);
    sub_1000C2288(0x1Au, v41, v39, v110);

    sub_1000D32D0(v42, v43, v44);
    sub_10011BBA0(&off_10037E780);
    LODWORD(v110) = v38;
    if (v38 && (v111 & 1) == 0)
    {
      v45 = sub_1000217A0(11014, 0xD00000000000003ALL, 0x800000010034C730, 0);
      swift_willThrow();
      sub_100009548(v114, v118);
      sub_100009548(v116, v115);
      sub_100009548(v124, v117);
      if (qword_10039D550 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10000403C(v46, qword_1003A2708);
      swift_errorRetain();
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v126[0] = v50;
        *v49 = 136315138;
        v125 = v45;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v51 = String.init<A>(describing:)();
        v53 = sub_100008F6C(v51, v52, v126);

        *(v49 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v47, v48, "Error from generatePINBlock: %s", v49, 0xCu);
        sub_10000959C(v50);
      }

      v54 = v16[28];
      v55 = v16[29];
      sub_10000BE18(v16 + 25, v54);
      sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
      v56 = swift_initStackObject();
      *(v56 + 16) = xmmword_1002C1660;
      *(v56 + 32) = 0xD000000000000010;
      *(v56 + 40) = 0x800000010034C010;
      v126[0] = v45;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v57 = String.init<A>(describing:)();
      *(v56 + 72) = &type metadata for String;
      *(v56 + 80) = &protocol witness table for String;
      *(v56 + 48) = v57;
      *(v56 + 56) = v58;
      v59 = sub_100184010(v56);
      swift_setDeallocating();
      sub_10000BD44(v56 + 32, &qword_10039FEC8, &unk_1002C37B0);
      sub_1000C2288(0x1Bu, v59, v54, v55);

      v126[0] = sub_1000D7148(v45);
      type metadata accessor for PINControllerError(0);
      sub_1000D73EC(&qword_10039DAB0, type metadata accessor for PINControllerError, &unk_1002BF520);
      v60 = _BridgedStoredNSError.errorCode.getter();
      v61 = v122;
      *(v122 + 120) = 0;
      v61[20] = v60;
      sub_100027534();
      swift_willThrow();

      sub_10001A074(v120, v121);
      sub_10000BD44(&v128, &qword_1003A2A20, &qword_1002C6C88);
      sub_1000D1C74(v16, v119);
      goto LABEL_20;
    }

    v62 = v114;
    sub_1000094F4(v114, v118);
    v64 = v115;
    v63 = v116;
    sub_1000094F4(v116, v115);
    v65 = v124;
    v66 = v117;
    sub_1000094F4(v124, v117);
    sub_100009548(v65, v66);
    sub_100009548(v63, v64);
    sub_100009548(v62, v118);
    if (v110)
    {
      v67 = 2;
    }

    else
    {
      v67 = 1;
    }

    v68 = v122;
    *(v122 + 120) = v67;
    v69 = v68[7];
    os_unfair_lock_lock(v69 + 8);
    sub_10011C8AC(&v69[4], 13);
    os_unfair_lock_unlock(v69 + 8);
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    v122 = sub_10000403C(v70, qword_1003A2708);
    v71 = *(&v129 + 1);
    v72 = v130;
    v73 = v131;
    v74 = v132;

    sub_1000094F4(v71, v72);
    sub_1000094F4(*(&v72 + 1), v73);
    sub_1000094F4(v74, *(&v74 + 1));
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.info.getter();
    sub_10000BD44(&v128, &qword_1003A2A20, &qword_1002C6C88);
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v126[0] = v122;
      *v77 = 136315650;
      v78 = _typeName(_:qualified:)();
      v80 = sub_100008F6C(v78, v79, v126);

      *(v77 + 4) = v80;
      *(v77 + 12) = 2080;
      *(v77 + 14) = sub_100008F6C(0xD000000000000013, 0x800000010034C710, v126);
      *(v77 + 22) = 2080;
      v16 = v133;

      v81 = sub_100008F6C(v108, v19, v126);

      *(v77 + 24) = v81;
      _os_log_impl(&_mh_execute_header, v75, v76, "%s.%s using internalTransactionData with transactionId: %s", v77, 0x20u);
      swift_arrayDestroy();
    }

    v82 = v114;
    v83 = v118;
    sub_1000094F4(v114, v118);
    v85 = v115;
    v84 = v116;
    sub_1000094F4(v116, v115);
    v86 = v124;
    v87 = v117;
    sub_1000094F4(v124, v117);
    sub_100009548(v86, v87);
    sub_100009548(v84, v85);
    sub_1000094F4(v82, v83);
    sub_1000094F4(v84, v85);
    sub_1000094F4(v86, v87);
    sub_100009548(v86, v87);
    sub_100009548(v82, v83);
    sub_1000094F4(v82, v83);
    sub_1000094F4(v84, v85);
    sub_1000094F4(v86, v87);
    sub_100009548(v86, v87);
    sub_100009548(v84, v85);
    sub_100009548(v82, v83);
    if (v110)
    {
      v133 = 0;
      v123 = 0xC000000000000000;
    }

    else
    {
      v89 = v120;
      v88 = v121;
      sub_1000094F4(v120, v121);
      v133 = v89;
      v123 = v88;
    }

    v90 = v114;
    v91 = v118;
    sub_1000094F4(v114, v118);
    v93 = v115;
    v92 = v116;
    sub_1000094F4(v116, v115);
    v94 = v124;
    v95 = v117;
    sub_1000094F4(v124, v117);
    sub_100009548(v92, v93);
    sub_100009548(v90, v91);
    sub_1000094F4(v90, v91);
    sub_1000094F4(v92, v93);
    sub_1000094F4(v94, v95);
    sub_100009548(v94, v95);
    sub_100009548(v92, v93);
    sub_100009548(v90, v91);
    if (v110)
    {
      v96 = 0;
      v97 = 0xC000000000000000;
    }

    else
    {
      v96 = v113;
      v97 = v112;
      sub_1000094F4(v113, v112);
    }

    v111 = objc_allocWithZone(SPRPINData);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v122 = isa;
    v99 = Data._bridgeToObjectiveC()().super.isa;
    v109 = Data._bridgeToObjectiveC()().super.isa;
    v100 = v117;
    v101 = Data._bridgeToObjectiveC()().super.isa;
    v112 = v97;
    v113 = v96;
    v102 = Data._bridgeToObjectiveC()().super.isa;
    v103 = v109;
    [v111 initWithPinCipherBlob:isa pinKeyBlob:v99 casd:v109 pinAppletAttestationData:v101 pinKEKHash:v102 isPinBypass:v110];

    sub_100009548(v113, v112);
    sub_100009548(v124, v100);

    sub_100009548(v133, v123);
    v105 = v115;
    v104 = v116;
    sub_100009548(v116, v115);

    v106 = v114;
    v107 = v118;
    sub_100009548(v114, v118);
    sub_1000D4058();
    sub_100009548(v106, v107);
    sub_100009548(v104, v105);
    sub_100009548(v124, v117);
    sub_10001A074(v120, v121);
    sub_10000BD44(&v128, &qword_1003A2A20, &qword_1002C6C88);
    sub_1000D1C74(v16, v119);
  }
}

uint64_t sub_1000D1C74(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OSSignpostError();
  v22 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D7010();
  v10 = [objc_opt_self() defaultCenter];
  v11 = AVSystemController_RecordingStateDidChangeNotification;
  v12 = [objc_opt_self() sharedInstance];
  [v10 removeObserver:a1 name:v11 object:v12];

  if (qword_10039D558 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10000403C(v13, qword_1003A2720);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v15 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v16 = v22;
    if ((*(v22 + 88))(v5, v3) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v16 + 8))(v5, v3);
      v17 = "end generate pin block";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, v19, "pin-generateBlock", v17, v18, 2u);
  }

  result = (*(v7 + 8))(v9, v6);
  *(a1 + 152) = 0;
  return result;
}

void sub_1000D1F90(uint64_t a1)
{
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A2708);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315394;
    v15 = v6;
    _StringGuts.grow(_:)(47);

    if (*(a1 + 152))
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (*(a1 + 152))
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v9 = v8;
    String.append(_:)(*&v7);

    v10._countAndFlagsBits = 93;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11 = sub_100008F6C(0xD00000000000002CLL, 0x800000010034C3D0, &v15);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2080;
    v12 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034C060, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, &v15);

    *(v5 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000D21FC();
}

void sub_1000D21FC()
{
  if (*(v0 + 152) == 1)
  {
    sub_10000CCE4(v0 + 200, v37);
    v1 = v38;
    oslog = v39;
    sub_10000BE18(v37, v38);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    strcpy((inited + 32), "transactionId");
    *(inited + 46) = -4864;
    v3 = *(v0 + 72);
    v40 = *(v0 + 56);
    v41 = v3;
    v4 = *(v0 + 104);
    v42 = *(v0 + 88);
    v43 = v4;
    v44 = *(v0 + 120);
    v5 = v40;
    v6 = v41;
    if (v41)
    {

      v7 = *(&v5 + 1);
      v8 = v6;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v31 = v5;
    v32 = v6;
    v12 = *(v0 + 96);
    v33 = *(v0 + 80);
    v34 = v12;
    v35 = *(v0 + 112);
    v36 = *(v0 + 128);
    sub_1000D6FA0(&v40, v30);
    sub_10000BD44(&v31, &qword_1003A2A20, &qword_1002C6C88);
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    v13 = 7104878;
    if (v8)
    {
      v13 = v7;
    }

    v14 = 0xE300000000000000;
    if (v8)
    {
      v14 = v8;
    }

    *(inited + 48) = v13;
    *(inited + 56) = v14;
    v15 = sub_100184010(inited);
    swift_setDeallocating();
    sub_10000BD44(inited + 32, &qword_10039FEC8, &unk_1002C37B0);
    v16 = v1;
    v17 = v0;
    sub_1000C2288(0x19u, v15, v16, oslog);

    sub_10000959C(v37);
    v18 = *(v0 + 296);
    v19 = *(v18 + 56);
    os_unfair_lock_lock(v19 + 8);
    sub_10011D358(&v19[4], 11);
    os_unfair_lock_unlock(v19 + 8);
    *(v18 + 120) = 3;
    sub_100027534();
    sub_1000D4058();
    sub_1000D7010();
    v20 = [objc_opt_self() defaultCenter];
    v21 = AVSystemController_RecordingStateDidChangeNotification;
    v22 = [objc_opt_self() sharedInstance];
    [v20 removeObserver:v17 name:v21 object:v22];

    sub_1000D32D0(v23, v24, v25);
    v26 = *(v17 + 184);
    v27 = *(v17 + 192);
    sub_10000BE18((v17 + 160), v26);
    (*(v27 + 40))(v26, v27);
    *(v17 + 152) = 0;
  }

  else
  {
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000403C(v9, qword_1003A2708);
    osloga = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(osloga, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, osloga, v10, "PIN Capture not in progress", v11, 2u);
    }
  }
}

void sub_1000D25BC(uint64_t a1, void *a2)
{
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A2708);

  v5 = a2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v8 = 136315394;
    log = v6;
    _StringGuts.grow(_:)(47);

    if (*(a1 + 152))
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (*(a1 + 152))
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = v10;
    String.append(_:)(*&v9);

    v12._countAndFlagsBits = 93;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = sub_100008F6C(0xD00000000000002CLL, 0x800000010034C3D0, &v25);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1002C1660;
    v15 = [v5 digest];
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = Data.hexString()();
    sub_100009548(v16, v18);
    *(v14 + 56) = &type metadata for String;
    *(v14 + 32) = v19;
    v20 = showFunction(signature:_:)(0xD00000000000001DLL, 0x800000010034C400, v14);
    v22 = v21;

    v23 = sub_100008F6C(v20, v22, &v25);

    *(v8 + 14) = v23;
    _os_log_impl(&_mh_execute_header, log, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_1000D28F8(v5);
}

void sub_1000D28F8(void *result)
{
  if (*(v1 + 272) == 1)
  {
    if (*(v1 + 273) == 1)
    {
      sub_1000CEC9C(result);
      if (v2)
      {
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v4 = String.init<A>(describing:)();
        sub_1000217A0(11010, v4, v5, 0);
        swift_willThrow();
      }

      else
      {
        v6 = [result transactionDataLifetime];
        *(v1 + 240) = v7;
        sub_1000D32D0(v6, v8, v9);
        sub_1000D2A08(v10, v11, v12);
        *(v1 + 273) = 0;
      }
    }

    else
    {
      sub_1000217A0(11012, 0xD000000000000045, 0x800000010034C620, 0);
      swift_willThrow();
    }
  }
}

void sub_1000D2A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  isa = v47[-1].isa;
  __chkstk_darwin(v47);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTimeInterval();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v14 = type metadata accessor for DispatchTime();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v40 - v19;
  if (*(v3 + 272))
  {
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000403C(v21, qword_1003A2708);
    v47 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v47, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v47, v22, "PIN timer already started", v23, 2u);
    }

    v24 = v47;
  }

  else
  {
    swift_getObjectType();
    v41 = v4;
    swift_unknownObjectRetain();
    static DispatchTime.now()();
    + infix(_:_:)();
    v40 = v5;
    v25 = *(v15 + 8);
    v25(v18, v14);
    sub_100146FDC(v13);
    sub_100147050(v11);
    v26 = v3;
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    swift_unknownObjectRelease();
    v27 = v43;
    v28 = *(v42 + 8);
    v28(v11, v43);
    v28(v13, v27);
    v25(v20, v14);
    ObjectType = swift_getObjectType();
    v30 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1000D6F98;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_100383248;
    v31 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v32 = v44;
    j___s8Dispatch0A3QoSV11unspecifiedACvgZ(ObjectType);
    v33 = v46;
    sub_1000039BC(ObjectType, v34, v35);
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v31);
    swift_unknownObjectRelease();
    (*(v40 + 8))(v33, v41);
    (*(isa + 1))(v32, v47);

    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.resume()();
    swift_unknownObjectRelease();
    *(v26 + 272) = 257;
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000403C(v36, qword_1003A2708);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "PIN timer started", v39, 2u);
    }
  }
}

uint64_t sub_1000D3044(uint64_t a1)
{
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A2708);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DefaultPINController timer fired", v4, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(result + 72);
    v8 = *(result + 120);
    v21[3] = *(result + 104);
    v21[4] = v8;
    v9 = *(result + 88);
    v21[1] = v7;
    v21[2] = v9;
    v21[0] = *(result + 56);
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    v10 = sub_10000BD44(v21, &qword_1003A2A20, &qword_1002C6C88);
    *(v6 + 273) = 0;
    sub_1000D32D0(v10, v11, v12);
    v13 = *(v6 + 248);
    if (v13)
    {
      v14 = *(v6 + 256);

      v13(v15);
      sub_1000048A0(v13, v14);
    }

    v16 = *(v6 + 224);
    v17 = *(v6 + 232);
    sub_10000BE18((v6 + 200), v16);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 32) = 0xD000000000000010;
    v19 = inited + 32;
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 40) = 0x800000010034C010;
    *(inited + 48) = 0x656D6974204E4950;
    *(inited + 56) = 0xEF64657269662072;
    v20 = sub_100184010(inited);
    swift_setDeallocating();
    sub_10000BD44(v19, &qword_10039FEC8, &unk_1002C37B0);
    sub_1000C2288(0x1Bu, v20, v16, v17);
  }

  return result;
}

void sub_1000D32D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 272) == 1)
  {
    ObjectType = swift_getObjectType();
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_1003831F8;
    v13 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    j___s8Dispatch0A3QoSV11unspecifiedACvgZ(ObjectType);
    sub_1000039BC(ObjectType, v14, v15);
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v13);
    swift_unknownObjectRelease();
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.suspend()();
    swift_unknownObjectRelease();
    *(v3 + 272) = 0;
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000403C(v16, qword_1003A2708);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "PIN timer stopped", v19, 2u);
    }
  }

  else
  {
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000403C(v20, qword_1003A2708);
    v25 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v25, v21, "PIN timer already stopped", v22, 2u);
    }

    v23 = v25;
  }
}

id sub_1000D36C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v81 = a1;
  v5 = type metadata accessor for String.Encoding();
  v78 = *(v5 - 8);
  v79 = v5;
  __chkstk_darwin(v5);
  v77 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_1003A2708);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v95 = a2;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100008F6C(v12, v13, &v84);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1002C1660;
    v16 = String.redactedTokenFromBase64()();
    *(v15 + 56) = &type metadata for String;
    *(v15 + 32) = v16;
    v17 = showFunction(signature:_:)(0xD000000000000019, 0x800000010034C600, v15);
    v19 = v18;

    v20 = sub_100008F6C(v17, v19, &v84);

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  if (v3[9])
  {

    goto LABEL_7;
  }

  sub_10000BE18(v3 + 38, v3[41]);
  type metadata accessor for DefaultManagedDictionary();
  sub_10017A944(0);
  if (!v94)
  {
    sub_10000BD44(&v92, &qword_10039E248, &qword_1002C23D0);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    sub_1000217A0(11004, 0xD00000000000002BLL, 0x800000010034C5B0, 0);
    return swift_willThrow();
  }

  v65 = v88;
  v66 = v89;
  v67 = v90;
  v68 = v91;
  sub_100009548(v86, v87);
  sub_100009548(v65, v66);
  sub_100009548(v67, v68);
LABEL_7:
  String.uppercased()();
  v21 = v77;
  static String.Encoding.utf8.getter();
  v22 = String.data(using:allowLossyConversion:)();
  v24 = v23;

  result = (v78[1])(v21, v79);
  if (v24 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_18;
  }

  v80 = v24;
  v26 = String.uppercased()();

  v79 = sub_100146900(v26._countAndFlagsBits, v26._object);
  v28 = v27;
  result = [*(*sub_10000BE18(v3 + 43 v3[46]) + 16)];
  v78 = v3;
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v29 = result;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = sub_100146900(v30, v32);
  v35 = v34;
  v36 = v79;
  v37 = v80;
  v82 = v22;
  v83 = v80;
  v86 = &type metadata for Data;
  v87 = &protocol witness table for Data;
  v84 = v79;
  v85 = v28;
  v38 = sub_10000BE18(&v84, &type metadata for Data);
  v39 = *v38;
  v40 = v38[1];
  v77 = v22;
  v41 = v22;
  v42 = v35;
  sub_10001A3E8(v41, v37);
  v43 = v36;
  v44 = v33;
  sub_1000094F4(v43, v28);
  v45 = v76;
  sub_1000A1C34(v39, v40, &v82, v46);
  sub_10000959C(&v84);
  v47 = v28;
  v48 = v82;
  v49 = v83;
  v92 = v82;
  v93 = v83;
  v86 = &type metadata for Data;
  v87 = &protocol witness table for Data;
  v84 = v44;
  v85 = v35;
  v50 = sub_10000BE18(&v84, &type metadata for Data);
  v51 = *v50;
  v52 = v50[1];
  sub_1000094F4(v48, v49);
  sub_1000094F4(v44, v42);
  sub_1000A1C34(v51, v52, &v92, v53);
  sub_100009548(v48, v49);
  sub_10000959C(&v84);
  v55 = v92;
  v54 = v93;
  sub_10000BE18(v78 + 2, v78[5]);
  sub_10004BE4C(300, 7596553831663430000, 0xEE006E6F69746164, v81, v95, v55, v54);
  if (v45)
  {
    v75 = v55;
    v76 = v54;
    v72 = v44;
    v73 = v42;
    v74 = v47;
    v56 = v78;
    v57 = v78[28];
    v58 = v78[29];
    sub_10000BE18(v78 + 25, v57);
    v71 = sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    v70 = xmmword_1002C1660;
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = 0xD000000000000010;
    v69[1] = 0x800000010034C010;
    *(inited + 40) = 0x800000010034C010;
    v84 = v45;
    swift_errorRetain();
    v69[0] = sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v60 = String.init<A>(describing:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 48) = v60;
    *(inited + 56) = v61;
    v62 = sub_100184010(inited);
    swift_setDeallocating();
    sub_10000BD44(inited + 32, &qword_10039FEC8, &unk_1002C37B0);
    sub_1000C2288(0x1Bu, v62, v57, v58);

    sub_10000BE18(v56 + 2, v56[5]);
    type metadata accessor for CertificateManager(0);
    sub_10004CE60();
    sub_10000BE18(v56 + 2, v56[5]);
    v64 = v75;
    v63 = v76;
    sub_10004BE4C(300, 7596553831663430000, 0xEE006E6F69746164, v81, v95, v75, v76);
    sub_100009548(v64, v63);
    sub_100009548(v72, v73);
    sub_100009548(v79, v74);
    sub_10001A074(v77, v80);
  }

  else
  {
    sub_100009548(v55, v54);
    sub_100009548(v44, v42);
    sub_100009548(v79, v47);
    return sub_10001A074(v77, v80);
  }
}