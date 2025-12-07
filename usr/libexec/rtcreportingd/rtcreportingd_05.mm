uint64_t sub_10006307C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1937335659 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7365756C6176 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F697469646E6F63 && a2 == 0xEA0000000000736ELL)
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

uint64_t sub_1000631D4(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      result = 1937335659;
      break;
    case 2:
      result = 0x7365756C6176;
      break;
    case 3:
      result = 0x6F697469646E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100063248@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000228D4(&qword_10008FFC0, &qword_100070830);
  sub_100001EDC();
  __chkstk_darwin(v5);
  v6 = sub_100008DE4(a1, a1[3]);
  sub_100063A84(v6, v7, v8);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005284(a1);
  }

  LOBYTE(v15) = 0;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v9;
  sub_1000228D4(&qword_10008E4E8, &qword_10006D370);
  sub_10001E418(&qword_10008F4A8, &qword_10008E4E8, &qword_10006D370, &protocol witness table for String);
  sub_100002A18();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100002A18();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000228D4(&qword_10008FFD0, &qword_100070838);
  sub_100063AD8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v10 = sub_10000524C();
  v11(v10);
  result = sub_100005284(a1);
  *a2 = v13;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v15;
  a2[4] = v15;
  return result;
}

uint64_t sub_100063520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006307C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100063548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100063A84(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100063584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100063A84(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

double sub_1000635C0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100063248(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100063628(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100063694(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1000637B8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_100063980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008FFA8;
  if (!qword_10008FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FFA8);
  }

  return result;
}

unint64_t sub_1000639D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008FFB0;
  if (!qword_10008FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FFB0);
  }

  return result;
}

unint64_t sub_100063A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008FFB8;
  if (!qword_10008FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FFB8);
  }

  return result;
}

unint64_t sub_100063A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008FFC8;
  if (!qword_10008FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FFC8);
  }

  return result;
}

unint64_t sub_100063AD8()
{
  result = qword_10008FFD8;
  if (!qword_10008FFD8)
  {
    v1 = sub_100025D78(&qword_10008FFD0, &qword_100070838);
    sub_100020424(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FFD8);
  }

  return result;
}

uint64_t sub_100063B5C(uint64_t a1)
{
  v2 = sub_1000228D4(&qword_10008FFE0, &qword_100070840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for StorebagSectionCondition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_100063CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008FFE8;
  if (!qword_10008FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FFE8);
  }

  return result;
}

unint64_t sub_100063CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008FFF0;
  if (!qword_10008FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FFF0);
  }

  return result;
}

unint64_t sub_100063D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008FFF8;
  if (!qword_10008FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FFF8);
  }

  return result;
}

void sub_100063DAC()
{
  sub_100004DA4();
  v3 = v2;
  v4 = type metadata accessor for CocoaError();
  sub_100001EDC();
  v6 = v5;
  __chkstk_darwin(v7);
  v8 = sub_100003E88();
  sub_100001EDC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100009BD4();
  (*(v6 + 16))(v1, v3, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.fault.getter();
  if (sub_1000054E8(v13))
  {
    sub_100004D20();
    sub_1000050C4();
    *v8 = 136446210;
    sub_1000047FC();
    v16 = sub_10006801C(v14, v15);
    sub_10001676C(v16);
    v17 = sub_10001A4EC();
    v18(v17);
    sub_10000CEBC();
    sub_10000B7F4();
    *(v8 + 4) = v0;
    sub_100003FD4(&_mh_execute_header, v19, v20, "unable to write storebag cache (OOS): %{public}s");
    sub_10001179C();
    sub_10000C704();

    (*(v10 + 8))(v0);
  }

  else
  {

    (*(v6 + 8))(v1, v4);
    (*(v10 + 8))(v0, v8);
  }

  _StringGuts.grow(_:)(40);

  sub_1000047FC();
  v23 = sub_10006801C(v21, v22);
  v26._countAndFlagsBits = sub_100008DC8(v23);
  sub_100019D78(v26);

  sub_100004FE0("Fatal error", v24, v25, 0xD000000000000026, 0x8000000100073200, "rtcreportingd/StorebagCache.swift");
  __break(1u);
}

void sub_10006403C()
{
  sub_100004DA4();
  v3 = v2;
  v4 = type metadata accessor for CocoaError();
  sub_100001EDC();
  v6 = v5;
  __chkstk_darwin(v7);
  v8 = sub_100003E88();
  sub_100001EDC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100009BD4();
  (*(v6 + 16))(v1, v3, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.fault.getter();
  if (sub_1000054E8(v13))
  {
    sub_100004D20();
    sub_1000050C4();
    *v8 = 136446210;
    sub_1000047FC();
    v16 = sub_10006801C(v14, v15);
    sub_10001676C(v16);
    v17 = sub_10001A4EC();
    v18(v17);
    sub_10000CEBC();
    sub_10000B7F4();
    *(v8 + 4) = v0;
    sub_100003FD4(&_mh_execute_header, v19, v20, "unable to access storebag cache (PERM): %{public}s");
    sub_10001179C();
    sub_10000C704();

    (*(v10 + 8))(v0);
  }

  else
  {

    (*(v6 + 8))(v1, v4);
    (*(v10 + 8))(v0, v8);
  }

  _StringGuts.grow(_:)(42);

  sub_1000047FC();
  v23 = sub_10006801C(v21, v22);
  v26._countAndFlagsBits = sub_100008DC8(v23);
  sub_100019D78(v26);

  sub_100004FE0("Fatal error", v24, v25, 0xD000000000000028, 0x80000001000731D0, "rtcreportingd/StorebagCache.swift");
  __break(1u);
}

void sub_1000642CC()
{
  sub_100004DA4();
  v3 = v2;
  v4 = type metadata accessor for CocoaError();
  sub_100001EDC();
  v6 = v5;
  __chkstk_darwin(v7);
  v8 = sub_100003E88();
  sub_100001EDC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100009BD4();
  (*(v6 + 16))(v1, v3, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.fault.getter();
  if (sub_1000054E8(v13))
  {
    sub_100004D20();
    sub_1000050C4();
    *v8 = 136446210;
    sub_1000047FC();
    v16 = sub_10006801C(v14, v15);
    sub_10001676C(v16);
    v17 = sub_10001A4EC();
    v18(v17);
    sub_10000CEBC();
    sub_10000B7F4();
    *(v8 + 4) = v0;
    sub_100003FD4(&_mh_execute_header, v19, v20, "unable to access storebag cache (WRITE-UNKNOWN): %{public}s");
    sub_10001179C();
    sub_10000C704();

    (*(v10 + 8))(v0);
  }

  else
  {

    (*(v6 + 8))(v1, v4);
    (*(v10 + 8))(v0, v8);
  }

  _StringGuts.grow(_:)(51);
  v21._object = 0x8000000100073230;
  v21._countAndFlagsBits = 0xD000000000000031;
  String.append(_:)(v21);
  sub_1000047FC();
  v24 = sub_10006801C(v22, v23);
  v27._countAndFlagsBits = sub_100008DC8(v24);
  sub_100019D78(v27);

  sub_100004FE0("Fatal error", v25, v26, 0, 0xE000000000000000, "rtcreportingd/StorebagCache.swift");
  __break(1u);
}

void sub_10006455C()
{
  sub_100004DA4();
  v0 = type metadata accessor for Logger();
  sub_100001EDC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100001EAC();
  v6 = v5 - v4;
  Logger.init()();
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_100004D20();
    v10 = sub_100004F18();
    v16 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_1000053A0(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "unable to access storebag cache (UNKNOWN): %{public}s", v9, 0xCu);
    sub_100005284(v10);
    sub_10000C704();
    sub_100001D1C(v9);
  }

  (*(v2 + 8))(v6, v0);
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  v16 = 0xD00000000000002BLL;
  v17 = 0x8000000100073270;
  swift_getErrorValue();
  v18._countAndFlagsBits = Error.localizedDescription.getter();
  sub_100019D78(v18);

  sub_100004FE0("Fatal error", v14, v15, v16, v17, "rtcreportingd/StorebagCache.swift");
  __break(1u);
}

uint64_t sub_100064768()
{
  sub_100004DA4();
  v96 = v1;
  v97 = v2;
  v4 = v3;
  v85 = type metadata accessor for CocoaError.Code();
  sub_100001EDC();
  v87 = v5;
  __chkstk_darwin(v6);
  sub_10000286C();
  v84 = v7 - v8;
  sub_1000029A4();
  __chkstk_darwin(v9);
  v83 = &v80 - v10;
  v89 = type metadata accessor for CocoaError();
  sub_100001EDC();
  v82 = v11;
  __chkstk_darwin(v12);
  sub_10000286C();
  v80 = (v13 - v14);
  sub_1000029A4();
  __chkstk_darwin(v15);
  v81 = &v80 - v16;
  sub_1000029A4();
  __chkstk_darwin(v17);
  v86 = &v80 - v18;
  sub_1000029A4();
  __chkstk_darwin(v19);
  v88 = &v80 - v20;
  v21 = type metadata accessor for URLResourceValues();
  sub_100001EDC();
  v91 = v22;
  __chkstk_darwin(v23);
  sub_100001EAC();
  v90 = v25 - v24;
  v26 = sub_1000228D4(&qword_10008E758, &qword_10006DC38);
  sub_100001D80(v26);
  sub_100003EC8();
  __chkstk_darwin(v27);
  v29 = &v80 - v28;
  v30 = type metadata accessor for URL();
  sub_100001EDC();
  v32 = v31;
  __chkstk_darwin(v33);
  sub_100001EAC();
  v34 = type metadata accessor for StorebagCache.Location(0);
  v35 = sub_100001D80(v34);
  __chkstk_darwin(v35);
  sub_10000286C();
  v38 = v36 - v37;
  __chkstk_darwin(v39);
  v41 = &v80 - v40;
  v92 = v0;
  v42 = sub_100005394();
  sub_10001B9E0(v42, v43, v44);
  if (sub_100002694(v41, 1, v30) == 1)
  {
    v45 = NSHomeDirectory();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:isDirectory:)();

    URL.appendingPathComponent(_:isDirectory:)();
    v46 = sub_10000B798();
    v47(v46, v30);
  }

  else
  {
    (*(v32 + 32))(v4, v41, v30);
  }

  sub_1000228D4(&qword_10008E760, &qword_10006DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAD0;
  *(inited + 32) = NSURLIsDirectoryKey;
  v49 = NSURLIsDirectoryKey;
  sub_100019E64(inited);
  URL.resourceValues(forKeys:)();

  sub_1000026BC(v29, 0, 1, v21);
  v50 = URLResourceValues.isDirectory.getter();
  result = (*(v91 + 8))(v29, v21);
  if (v50 == 2 || (v50 & 1) == 0)
  {
    v52 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v53);
    v55 = v54;
    v95 = 0;
    v56 = [v52 createDirectoryAtURL:v54 withIntermediateDirectories:1 attributes:0 error:&v95];

    v57 = v95;
    if (!v56)
    {
      v62 = v95;
      v63 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v95 = v63;
      swift_errorRetain();
      sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
      if (swift_dynamicCast())
      {
        v64 = *(v82 + 16);
        v64(v86, v88, v89);
        sub_1000047FC();
        sub_10006801C(v65, v66);
        v67 = v83;
        _BridgedStoredNSError.code.getter();
        v68 = v84;
        static CocoaError.fileWriteNoPermission.getter();
        sub_10006801C(&unk_10008E6F0, &type metadata accessor for CocoaError.Code);
        v69 = v85;
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v70 = v87 + 8;
        v71 = *(v87 + 8);
        v72 = sub_1000680A8();
        v71(v72);
        v87 = v70;
        (v71)(v67, v69);
        if (v94 == v93)
        {
          sub_10006403C();
        }

        v73 = v89;
        v92 = *(v82 + 8);
        v92(v86, v89);
        v64(v81, v88, v73);
        sub_100012814();
        _BridgedStoredNSError.code.getter();
        v74 = v84;
        static CocoaError.fileWriteOutOfSpace.getter();
        v75 = v85;
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        (v71)(v74, v75);
        v76 = sub_1000132F8();
        v71(v76);
        if (v94 == v93)
        {
          sub_100063DAC();
        }

        v77 = v89;
        v92(v81, v89);
        (*(v82 + 32))(v80, v88, v77);
        sub_100012814();
        _BridgedStoredNSError.code.getter();
        v78 = v84;
        static CocoaError.fileWriteUnknown.getter();
        v79 = v85;
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        (v71)(v78, v79);
        (v71)(v68, v79);
        if (v94 == v93)
        {
          sub_1000642CC();
        }

        v92(v80, v89);
      }

      sub_10006455C();
    }

    sub_10001B9E0(v92, v38, type metadata accessor for StorebagCache.Location);
    v58 = sub_100002694(v38, 1, v30);
    v59 = v57;
    result = sub_10001BA40(v38, type metadata accessor for StorebagCache.Location);
    if (v58 == 1)
    {
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL.setResourceValues(_:)();
      v60 = sub_1000680FC();
      return v61(v60);
    }
  }

  return result;
}

uint64_t sub_1000650A0()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_100095B38);
  sub_1000050E4(v0, qword_100095B38);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100065124()
{
  sub_100004680();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for URL();
  v1[4] = v3;
  sub_10000392C(v3);
  v1[5] = v4;
  v1[6] = sub_100003D60();

  return _swift_task_switch(sub_1000651D0, 0, 0);
}

uint64_t sub_1000651D0()
{
  sub_100004F30();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtC13rtcreportingd13StorebagCache_cache;
  type metadata accessor for CachedStorebag(0);
  *(v4 + v5) = Dictionary.init(dictionaryLiteral:)();
  *(v4 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTask) = 0;
  *(v4 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTransaction) = 0;
  sub_100064768();
  (*(v2 + 32))(v4 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_location, v1, v3);

  return _swift_task_switch(sub_1000652C8, v4, 0);
}

uint64_t sub_1000652C8()
{
  sub_100004680();
  sub_10001BA40(v0[2], type metadata accessor for StorebagCache.Location);

  v1 = v0[1];
  v2 = v0[3];

  return v1(v2);
}

uint64_t sub_100065348()
{
  sub_100004F30();
  v2 = *v1;
  v3 = *v1;
  sub_100001D58();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 424) = v0;

  v5 = *(v2 + 272);
  sub_100005284((v3 + 96));
  if (v0)
  {
    v6 = sub_100065FA4;
  }

  else
  {
    v6 = sub_1000654AC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000654AC()
{
  v81 = v0;
  v5 = *(v0 + 424);
  sub_1000228D4(&qword_10008E760, &qword_10006DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAD0;
  *(inited + 32) = NSURLContentModificationDateKey;
  v7 = NSURLContentModificationDateKey;
  sub_100019E64(inited);
  URL.resourceValues(forKeys:)();
  if (v5)
  {
    v8 = sub_100004D10();
    v9(v8);

LABEL_5:
    sub_100004518();

    sub_100001D4C();
    goto LABEL_6;
  }

  sub_100068150();
  URLResourceValues.contentModificationDate.getter();
  v10 = sub_10000B798();
  v11(v10, v1);
  result = sub_100002694(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = sub_100012360();
    v14(v13);
    v15 = Data.init(contentsOf:options:)();
    v17 = v16;
    v18 = sub_10001A058();
    sub_100006F6C(v18);
    sub_100011D18(v19);
    static Date.now.getter();
    sub_10000534C();
    static Date.< infix(_:_:)();
    v22 = sub_100008FBC();
    v3(v22);
    if ((v15 & 1) == 0)
    {
      v78 = v1;
      v79 = v3;
      v42 = *(v0 + 392);
      v41 = *(v0 + 400);
      v43 = *(v0 + 376);
      v44 = *(v0 + 272);
      v45 = *(v0 + 56);
      v46 = *(v0 + 80);
      v77 = *(v0 + 72);
      v47 = *(v0 + 88);
      (*(*(v0 + 320) + 16))(v41 + *(v42 + 20), *(v0 + 336), *(v0 + 312));
      v48 = *(v0 + 88);
      v49 = *(v0 + 72);
      *v41 = *(v0 + 56);
      *(v41 + 16) = v49;
      *(v41 + 32) = v48;
      sub_10000525C();
      sub_10001B9E0(v41, v43, v50);
      sub_1000026BC(v43, 0, 1, v42);
      sub_10000277C(v44 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_cache, v0 + 176);

      v74 = v45;

      v76 = v46;

      v75 = v47;

      sub_10001F3E0();
      swift_endAccess();
      if (qword_10008DDF8 != -1)
      {
        sub_1000020EC(&qword_10008DDF8);
      }

      v51 = type metadata accessor for Logger();
      sub_1000050E4(v51, qword_100095B38);

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();

      v54 = os_log_type_enabled(v52, v53);
      v55 = *(v0 + 400);
      v56 = *(v0 + 360);
      v57 = *(v0 + 368);
      v59 = *(v0 + 344);
      v58 = *(v0 + 352);
      v73 = *(v0 + 336);
      v60 = *(v0 + 312);
      if (v54)
      {
        v72 = *(v0 + 368);
        v70 = *(v0 + 400);
        v61 = *(v0 + 256);
        v62 = *(v0 + 264);
        v71 = *(v0 + 352);
        v63 = sub_100004D20();
        v64 = sub_100004F18();
        sub_1000680F0(v64);
        *v63 = 136446210;
        *(v63 + 4) = sub_1000053A0(v61, v62, &v80);
        _os_log_impl(&_mh_execute_header, v52, v53, "storing storebag %{public}s in cache", v63, 0xCu);
        sub_10000393C();
        sub_100001D1C(v63);

        sub_1000099D0();
        sub_10001BA40(v70, v65);
        v79(v73, v60);
        v79(v59, v60);
        (*(v56 + 8))(v72, v71);
      }

      else
      {

        sub_1000099D0();
        sub_10001BA40(v55, v67);
        v79(v73, v60);
        v68 = sub_1000132F8();
        (v79)(v68);
        (*(v56 + 8))(v57, v58);
      }

      sub_1000171A4();
      v69 = *(v0 + 248);

      *v69 = v74;
      *(v69 + 8) = v78;
      *(v69 + 16) = v77;
      *(v69 + 24) = v76;
      *(v69 + 32) = v75;
      sub_100001D4C();
LABEL_6:
      sub_100017624();

      __asm { BRAA            X1, X16 }
    }

    *(v0 + 216) = *(v0 + 56);
    sub_100005000(v0 + 216, &unk_100090270, &qword_10006D778);
    *(v0 + 200) = *(v0 + 72);
    sub_10000D9BC(v0 + 200);
    *(v0 + 224) = *(v0 + 88);
    sub_100005000(v0 + 224, &qword_10008E568, &qword_10006D770);
    if (qword_10008DDF8 != -1)
    {
      sub_1000020EC(&qword_10008DDF8);
    }

    v23 = type metadata accessor for Logger();
    sub_1000050E4(v23, qword_100095B38);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v17 = *(v0 + 256);
      v26 = sub_100004D20();
      v27 = sub_100004F18();
      sub_1000680F0(v27);
      *v26 = 136446210;
      v28 = sub_100005394();
      *(v26 + 4) = sub_1000053A0(v28, v29, v30);
      sub_100038750(&_mh_execute_header, v31, v32, "removing expired storebag %{public}s");
      sub_10000393C();
      sub_100001D1C(v26);
    }

    v33 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v34);
    v36 = v35;
    *(v0 + 240) = 0;
    v37 = [v33 removeItemAtURL:v35 error:v0 + 240];

    if (!v37)
    {
      v66 = sub_100005328();
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (v3)(v17, v4);
      (v3)(v2, v4);
      v33[1]();
      goto LABEL_5;
    }

    v38 = *(v0 + 240);
    v39 = swift_task_alloc();
    *(v0 + 448) = v39;
    *v39 = v0;
    sub_100002A38(v39);
    sub_100017624();

    return sub_10001ADD8();
  }

  return result;
}

uint64_t sub_100065CEC()
{
  sub_100002624();
  v2 = *v1;
  sub_100001D58();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 456) = v0;

  v5 = *(v2 + 272);
  if (v0)
  {
    v6 = sub_1000660B8;
  }

  else
  {
    v6 = sub_100065E3C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100065E3C()
{
  v7 = sub_1000091D0();
  v5(v7);
  (v5)(v2, v4);
  (*(v6 + 8))(v1, v0);
  v14 = *(v3 + 32);
  v13 = *(v3 + 24);
  v12 = *(v3 + 16);
  sub_1000171A4();
  v8 = *(v3 + 248);
  v11 = *(v3 + 40);

  *v8 = v12;
  *(v8 + 8) = v13;
  *(v8 + 16) = v14;
  *(v8 + 24) = v11;
  sub_100001D4C();

  return v9();
}

uint64_t sub_100065FA4()
{
  v0 = sub_100004D10();
  v1(v0);
  sub_100004518();

  sub_100001D4C();

  return v2();
}

uint64_t sub_1000660B8()
{
  v6 = sub_1000091D0();
  v4(v6);
  (v4)(v2, v3);
  (*(v5 + 8))(v1, v0);
  sub_100004518();

  sub_100001D4C();

  return v7();
}

uint64_t sub_1000661E8()
{
  sub_100004680();
  *(v1 + 65) = v2;
  *(v1 + 88) = v3;
  *(v1 + 96) = v0;
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  *(v1 + 104) = *v0;
  v6 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  sub_100001D80(v6);
  *(v1 + 112) = sub_100003D60();

  return _swift_task_switch(sub_1000662A4, v0, 0);
}

uint64_t sub_1000662A4()
{
  v1 = v0[12];
  v2 = OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTask;
  v0[15] = OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTask;
  v3 = *(v1 + v2);
  v0[16] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[17] = v4;
    sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
    sub_100068124();
    *v4 = v5;
    sub_100007044();
    sub_100003BB0();
    sub_100008E44();

    return Task.result.getter();
  }

  else
  {
    sub_100005908();
    *(v1 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTransaction) = os_transaction_create();
    swift_unknownObjectRelease();
    v7 = type metadata accessor for TaskPriority();
    sub_1000680B4(v7);
    sub_100007C7C();
    sub_10006801C(v8, v9);
    v10 = swift_allocObject();
    sub_100010634(v10);

    v11 = sub_100001E68();
    sub_100068130(v11);

    v12 = swift_task_alloc();
    v0[19] = v12;
    sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
    sub_100068124();
    *v12 = v13;
    sub_10000CE00();
    sub_100003BB0();
    sub_100008E44();

    return Task.value.getter();
  }
}

uint64_t sub_10006648C()
{
  sub_100002624();
  v1 = *v0;
  v2 = *v0;
  sub_100001D58();
  *v3 = v2;
  v4 = *(v1 + 96);
  *v3 = *v0;

  sub_100067B44(*(v1 + 56), *(v2 + 64));

  return _swift_task_switch(sub_1000665B8, v4, 0);
}

uint64_t sub_1000665B8()
{

  v1 = v0[12];
  v2 = *(v1 + v0[15]);
  v0[16] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[17] = v3;
    sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
    sub_100068124();
    *v3 = v4;
    sub_100007044();
    sub_100003BB0();
    sub_100008E44();

    return Task.result.getter();
  }

  else
  {
    sub_100005908();
    *(v1 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTransaction) = os_transaction_create();
    swift_unknownObjectRelease();
    v6 = type metadata accessor for TaskPriority();
    sub_1000680B4(v6);
    sub_100007C7C();
    sub_10006801C(v7, v8);
    v9 = swift_allocObject();
    sub_100010634(v9);

    v10 = sub_100001E68();
    sub_100068130(v10);

    v11 = swift_task_alloc();
    v0[19] = v11;
    sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
    sub_100068124();
    *v11 = v12;
    sub_10000CE00();
    sub_100003BB0();
    sub_100008E44();

    return Task.value.getter();
  }
}

uint64_t sub_1000667A0()
{
  sub_100002624();
  v2 = *v1;
  sub_100001D58();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_10006692C;
  }

  else
  {
    v6 = sub_1000668C4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000668C4()
{
  sub_100004680();

  sub_100001D4C();

  return v0();
}

uint64_t sub_10006692C()
{
  sub_100004680();

  sub_100001D4C();

  return v0();
}

uint64_t sub_100066994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 176) = a7;
  *(v7 + 64) = a6;
  *(v7 + 72) = v12;
  *(v7 + 48) = a4;
  *(v7 + 56) = a5;
  v9 = type metadata accessor for URL();
  *(v7 + 80) = v9;
  *(v7 + 88) = *(v9 - 8);
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100066A8C, a4, 0);
}

uint64_t sub_100066A8C()
{
  sub_100004F30();
  v1 = v0[14];
  v2 = v0[11];
  v3 = sub_10001A058();
  sub_10002451C(v3, v1);
  URL.appendingPathComponent(_:)();
  v0[16] = *(v2 + 8);
  v0[17] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4 = sub_10000534C();
  v5(v4);
  v6 = [objc_opt_self() ephemeralSessionConfiguration];
  v0[18] = [objc_opt_self() sessionWithConfiguration:v6];

  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_100066BDC;
  v8 = v0[15];
  v9 = v0[13];

  return NSURLSession.download(from:delegate:)(v9, v8, 0);
}

uint64_t sub_100066BDC()
{
  sub_100002624();
  v2 = *v1;
  sub_100001D58();
  *v4 = v3;
  v5 = *v1;
  sub_100001D58();
  *v6 = v5;
  *(v8 + 160) = v7;
  *(v8 + 168) = v0;

  v9 = *(v2 + 48);
  if (v0)
  {
    v10 = sub_1000672B0;
  }

  else
  {
    v10 = sub_100066D04;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100066D04()
{
  objc_opt_self();
  sub_100003F24();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 160);
    v4 = [v2 statusCode];
    v5 = *(v0 + 160);
    if (v4 != 200)
    {
      v10 = *(v0 + 144);
      v11 = *(v0 + 128);
      v12 = *(v0 + 80);
      v66 = *(v0 + 120);
      v13 = *(v0 + 48);
      v14 = [v2 statusCode];
      sub_1000264A0(v14, v15, v16);
      swift_allocError();
      *v17 = v14;
      *(v17 + 8) = 0;
      swift_willThrow();

      sub_10006738C();
      v18 = sub_1000680A8();
      v11(v18);
      [v10 finishTasksAndInvalidate];

      (v11)(v66, v12);
LABEL_14:
      *(v13 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTask) = 0;

      *(v13 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTransaction) = 0;
      swift_unknownObjectRelease();

      sub_100001D4C();
      goto LABEL_15;
    }
  }

  v6 = *(v0 + 168);
  Data.init(contentsOf:options:)();
  if (v6)
  {
LABEL_13:
    v33 = *(v0 + 160);
    v34 = *(v0 + 144);
    v35 = *(v0 + 120);
    v36 = *(v0 + 128);
    v37 = *(v0 + 104);
    v38 = *(v0 + 80);
    v13 = *(v0 + 48);
    sub_10006738C();

    v36(v37, v38);
    [v34 finishTasksAndInvalidate];

    v36(v35, v38);
    goto LABEL_14;
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v7 = PropertyListDecoder.init()();
  sub_100067B50(v7, v8, v9);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:format:)();
  v67 = Data.init(base64Encoded:options:)();
  v20 = v19;
  v21 = Data.init(base64Encoded:options:)();
  v23 = v22;

  if (v20 >> 60 == 15 || v23 >> 60 == 15)
  {
    sub_1000264A0(v24, v25, v26);
    swift_allocError();
    *v28 = 0;
    *(v28 + 8) = 1;
    swift_willThrow();

    v29 = sub_1000680A8();
    sub_100022E50(v29, v30);
    sub_100022E50(v67, v20);
    v31 = sub_100005BF0();
    sub_100005954(v31, v32);
    goto LABEL_13;
  }

  v41 = *(v0 + 176);

  v42 = sub_100005BF0();
  sub_100005954(v42, v43);
  if ((v41 & 1) == 0)
  {
    sub_100015054();
    v44 = sub_100067F50();
    if (!v44)
    {
      v53 = *(v0 + 144);
      v60 = *(v0 + 160);
      v62 = *(v0 + 128);
      v65 = *(v0 + 120);
      v54 = *(v0 + 104);
      v55 = *(v0 + 80);
      v13 = *(v0 + 48);
      sub_1000264A0(v44, v45, v46);
      swift_allocError();
      *v56 = 1;
      *(v56 + 8) = 1;
      swift_willThrow();
      v57 = sub_100015054();
      sub_100005954(v57, v58);
      sub_100005954(v21, v23);
      sub_10006738C();

      v62(v54, v55);
      [v53 finishTasksAndInvalidate];

      v62(v65, v55);
      goto LABEL_14;
    }
  }

  sub_10000F2FC(*(v0 + 56), *(v0 + 64));
  Data.write(to:options:)();
  v59 = *(v0 + 160);
  v61 = *(v0 + 128);
  v63 = *(v0 + 120);
  v64 = *(v0 + 144);
  v47 = *(v0 + 104);
  v48 = *(v0 + 96);
  v49 = *(v0 + 80);
  v50 = *(v0 + 48);
  v51 = sub_100015054();
  sub_100005954(v51, v52);
  sub_100005954(v21, v23);
  v61(v48, v49);
  sub_10006738C();

  v61(v47, v49);
  [v64 finishTasksAndInvalidate];

  v61(v63, v49);
  *(v50 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTask) = 0;

  *(v50 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTransaction) = 0;
  swift_unknownObjectRelease();

  sub_100001D4C();
LABEL_15:

  return v39();
}

uint64_t sub_1000672B0()
{
  sub_100004F30();
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[6];
  [v1 finishTasksAndInvalidate];

  v4 = sub_10000534C();
  v2(v4);
  *(v3 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTask) = 0;

  *(v3 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_activeLoadingTransaction) = 0;
  swift_unknownObjectRelease();

  sub_100001D4C();

  return v5();
}

void sub_10006738C()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v16 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v16];

  v5 = v16;
  if (v4)
  {

    v6 = v5;
  }

  else
  {
    v7 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10008DDF8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000050E4(v8, qword_100095B38);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136446210;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_1000053A0(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "failed to remove temporary storebag download: %{public}s", v11, 0xCu);
      sub_100005284(v12);
    }

    else
    {
    }
  }
}

uint64_t sub_100067604(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1000228D4(&unk_10008F390, &qword_10006EED0);
  sub_100001D80(v6);
  sub_100003EC8();
  __chkstk_darwin(v7);
  v9 = &v17[-1] - v8;
  if (qword_10008DDF8 != -1)
  {
    sub_1000020EC(&qword_10008DDF8);
  }

  v10 = type metadata accessor for Logger();
  sub_1000050E4(v10, qword_100095B38);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = sub_100004D20();
    v14 = sub_100004F18();
    v17[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1000053A0(a1, a2, v17);
    _os_log_impl(&_mh_execute_header, v11, v12, "evicting storebag %{public}s from cache", v13, 0xCu);
    sub_100005284(v14);
    sub_10000C704();
    sub_100001D1C(v13);
  }

  sub_10000277C(v3 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_cache, v17);
  sub_100045688();
  sub_100005000(v9, &unk_10008F390, &qword_10006EED0);
  return swift_endAccess();
}

uint64_t sub_1000677B0()
{
  v1 = OBJC_IVAR____TtC13rtcreportingd13StorebagCache_location;
  type metadata accessor for URL();
  sub_100003C44();
  (*(v2 + 8))(v0 + v1);

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100067840()
{
  sub_1000677B0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100067894(uint64_t a1)
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

uint64_t sub_100067948(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int sub_1000679C4(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

unint64_t sub_100067A3C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100067A60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000478A8;
  sub_100008E44();

  return sub_100066994(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100067B44(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

unint64_t sub_100067B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100090250;
  if (!qword_100090250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090250);
  }

  return result;
}

void sub_100067BA4(uint64_t a1)
{
  if (*(a1 + 16) && (sub_1000228D4(&qword_10008F8C0, &qword_10006FBD0), sub_100003F24(), v2 = static _SetStorage.allocate(capacity:)(), v3 = v2, (v4 = *(a1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(a1 + 16))
    {
      v7 = (a1 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      Hasher.init(_seed:)();

      String.hash(into:)();
      Hasher._finalize()();
      sub_100005B84();
      v12 = ~v11;
      while (1)
      {
        v13 = v10 & v12;
        v14 = (v10 & v12) >> 6;
        v15 = *(v6 + 8 * v14);
        v16 = 1 << (v10 & v12);
        if ((v16 & v15) == 0)
        {
          break;
        }

        v17 = (*(v3 + 48) + 16 * v13);
        v18 = *v17 == v9 && v17[1] == v8;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_16;
        }

        v10 = v13 + 1;
      }

      *(v6 + 8 * v14) = v16 | v15;
      v19 = (*(v3 + 48) + 16 * v13);
      *v19 = v9;
      v19[1] = v8;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_19;
      }

      *(v3 + 16) = v22;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:
  }
}

void sub_100067D28(unint64_t a1)
{
  v1 = a1;
  if (sub_100059CFC(a1))
  {
    sub_1000228D4(&unk_100090290, &qword_10006FBC0);
    sub_100003F24();
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v24 = sub_100059CF8();
  if (v24)
  {
    v3 = 0;
    v4 = (v2 + 7);
    v22 = v1;
    v23 = v1 & 0xC000000000000001;
    v21 = v1 + 32;
    while (1)
    {
      sub_100067A3C(v3, v23 == 0, v1);
      if (v23)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v21 + 8 * v3);
      }

      v6 = __OFADD__(v3, 1);
      v7 = v3 + 1;
      if (v6)
      {
        break;
      }

      v25 = v7;
      type metadata accessor for Client();
      sub_100003A18();
      sub_10006801C(&qword_10008E898, v8);
      sub_100005BF0();
      dispatch thunk of Hashable._rawHashValue(seed:)();
      sub_100005B84();
      v11 = ~v10;
      while (1)
      {
        v12 = v9 & v11;
        v13 = (v9 & v11) >> 6;
        v14 = *&v4[8 * v13];
        v15 = 1 << (v9 & v11);
        if ((v15 & v14) == 0)
        {
          break;
        }

        sub_100003A18();
        sub_10006801C(&unk_1000902A0, v16);

        v17 = Identifiable<>.id.getter();
        v18 = Identifiable<>.id.getter();

        if (v17 == v18)
        {

          goto LABEL_17;
        }

        v9 = v12 + 1;
      }

      *&v4[8 * v13] = v15 | v14;
      *(v2[6] + 8 * v12) = v5;
      v19 = v2[2];
      v6 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v6)
      {
        goto LABEL_20;
      }

      v2[2] = v20;
LABEL_17:
      v3 = v25;
      v1 = v22;
      if (v25 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

BOOL sub_100067F50()
{
  if (qword_10008DD20 != -1)
  {
    swift_once();
  }

  v0 = qword_10008E4B8;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v2 = Data._bridgeToObjectiveC()().super.isa;
  v3 = SecKeyVerifySignature(v0, kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA1, isa, v2, 0);

  return v3 != 0;
}

uint64_t sub_10006801C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_100003F24();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000680B4(uint64_t a1)
{
  sub_1000026BC(v1, 1, 1, a1);

  return sub_100009658(v3, v2 + 16);
}

uint64_t sub_100068130(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v1 + v3) = a1;
}

uint64_t sub_100068150()
{
}

xpc_object_t XPCObject.obj.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  sub_100001EDC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100001EAC();
  v8 = v7 - v6;
  type metadata accessor for XPCObject(0);
  sub_100003C44();
  __chkstk_darwin(v9);
  sub_100001EAC();
  v12 = v11 - v10;
  v13 = sub_100007C1C();
  sub_10004AC88(v13, v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v15 = xpc_BOOL_create(*v12);
      goto LABEL_13;
    case 3u:
      v15 = xpc_int64_create(*v12);
      goto LABEL_13;
    case 4u:
      v15 = xpc_uint64_create(*v12);
      goto LABEL_13;
    case 5u:
      v15 = xpc_double_create(*v12);
      goto LABEL_13;
    case 6u:
      v15 = xpc_date_create(*v12);
      goto LABEL_13;
    case 7u:
      v24 = *v12;
      v23 = *(v12 + 8);
      switch(v23 >> 62)
      {
        case 1uLL:
          v29 = v24 >> 32;
          if (v24 >> 32 < v24)
          {
            __break(1u);
          }

          v28 = v24;
          goto LABEL_20;
        case 2uLL:
          v28 = *(v24 + 16);
          v29 = *(v24 + 24);
LABEL_20:
          sub_100068F08(v28, v29);
          goto LABEL_21;
        case 3uLL:
          memset(uuid, 0, 14);
          v25 = 0;
          goto LABEL_17;
        default:
          *uuid = *v12;
          *&uuid[8] = v23;
          uuid[10] = BYTE2(v23);
          uuid[11] = BYTE3(v23);
          uuid[12] = BYTE4(v23);
          v25 = BYTE6(v23);
          uuid[13] = BYTE5(v23);
LABEL_17:
          xpc_data_create(uuid, v25);
LABEL_21:
          v30 = sub_100003EB0();
          sub_100005954(v30, v23);
          break;
      }

      return v1;
    case 8u:
      v26 = String.utf8CString.getter();

      xpc_string_create((v26 + 32));
      sub_100003EB0();

      return v1;
    case 9u:
      (*(v4 + 32))(v8, v12, v2);
      *uuid = UUID.uuid.getter();
      *&uuid[8] = v16;
      uuid[10] = v17;
      uuid[11] = v18;
      uuid[12] = v19;
      uuid[13] = v20;
      uuid[14] = v21;
      uuid[15] = v22;
      v1 = xpc_uuid_create(uuid);
      (*(v4 + 8))(v8, v2);
      return v1;
    case 0xDu:
      v15 = xpc_null_create();
LABEL_13:
      v1 = v15;
      break;
    default:
      v1 = *v12;
      break;
  }

  return v1;
}

BOOL static XPCObject.== infix(_:_:)()
{
  v0 = XPCObject.obj.getter();
  v1 = XPCObject.obj.getter();
  v2 = xpc_equal(v0, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

xpc_object_t RTCXPCDictionary.init(dictionaryLiteral:)(uint64_t a1)
{
  v2 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  v3 = sub_100001D80(v2);
  __chkstk_darwin(v3);
  sub_10000286C();
  v46 = v4 - v5;
  __chkstk_darwin(v6);
  v49 = v39 - v7;
  v8 = sub_1000228D4(&qword_100090378, &unk_100070A28);
  sub_100001EDC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000286C();
  v45 = v12 - v13;
  v15 = __chkstk_darwin(v14);
  v17 = v39 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = (v39 - v19);
  __chkstk_darwin(v18);
  v44 = (v39 - v21);
  empty = xpc_dictionary_create_empty();
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = v8[12];
    v24 = *(v10 + 80);
    v39[1] = a1;
    v40 = v20;
    v25 = a1 + ((v24 + 32) & ~v24);
    v41 = *(v10 + 72);
    v42 = v23;
    v43 = v17;
    do
    {
      v48 = v22;
      v26 = v44;
      sub_100068F90(v25, v44, &qword_100090378, &unk_100070A28);
      v27 = v26[1];
      v28 = v8[12];
      *v20 = *v26;
      v20[1] = v27;
      sub_100004254(v26 + v42, v20 + v28);
      sub_100068F90(v20, v17, &qword_100090378, &unk_100070A28);
      v29 = v45;
      sub_100068F90(v20, v45, &qword_100090378, &unk_100070A28);

      v30 = v49;
      v31 = v8;
      sub_100004254(v29 + v8[12], v49);
      type metadata accessor for XPCObject(0);
      v32 = sub_100003EB0();
      sub_1000026BC(v32, 0, 1, v8);
      v33 = v30;
      v34 = v46;
      sub_100068F90(v33, v46, &qword_10008F360, &qword_100070A20);
      if (sub_100002694(v34, 1, v8) == 1)
      {
        sub_100005000(v34, &qword_10008F360, &qword_100070A20);
        v8 = 0;
      }

      else
      {
        XPCObject.obj.getter();
        v35 = sub_100003EB0();
        sub_10002E5EC(v35);
      }

      v36 = v31[12];
      v37 = String.utf8CString.getter();

      xpc_dictionary_set_value(empty, (v37 + 32), v8);
      v8 = v31;
      swift_unknownObjectRelease();
      sub_100005000(v49, &qword_10008F360, &qword_100070A20);
      v20 = v40;
      sub_100005000(v40, &qword_100090378, &unk_100070A28);

      v17 = v43;
      sub_10002E5EC(&v43[v36]);
      v25 += v41;
      v22 = v48 - 1;
    }

    while (v48 != 1);
  }

  return empty;
}

uint64_t RTCXPCDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  v6 = sub_100001D80(v5);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  v9 = *v3;
  sub_100068F90(a1, &v14 - v7, &qword_10008F360, &qword_100070A20);
  v10 = type metadata accessor for XPCObject(0);
  if (sub_100002694(v8, 1, v10) == 1)
  {
    sub_100005000(v8, &qword_10008F360, &qword_100070A20);
    v11 = 0;
  }

  else
  {
    v11 = XPCObject.obj.getter();
    sub_10002E5EC(v8);
  }

  sub_100007C1C();
  v12 = String.utf8CString.getter();

  xpc_dictionary_set_value(v9, (v12 + 32), v11);
  swift_unknownObjectRelease();
  sub_100005000(a1, &qword_10008F360, &qword_100070A20);
}

void *RTCXPCDictionary.keys.getter(void *a1)
{
  count = xpc_dictionary_get_count(a1);
  v3 = _swiftEmptyArrayStorage;
  if (!swift_isUniquelyReferenced_nonNull_native() || count > _swiftEmptyArrayStorage[3] >> 1)
  {
    sub_100020328();
    v3 = v4;
  }

  v12 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100068FF0;
  *(v6 + 24) = v5;
  aBlock[4] = sub_10000B070;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000A6E8;
  aBlock[3] = &unk_100088D28;
  v7 = _Block_copy(aBlock);

  xpc_dictionary_apply(a1, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

uint64_t sub_100068BC0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = String.init(cString:)();
  v6 = v5;
  sub_100069138();
  v7 = *(*a3 + 16);
  sub_100069184(v7);
  v8 = *a3;
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  return 1;
}

void (*RTCXPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = sub_100038588(0x28uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v8 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  sub_100001D80(v8);
  v10 = *(v9 + 64);
  v7[3] = sub_100038588(v10);
  v11 = sub_100038588(v10);
  v7[4] = v11;
  v12 = *v3;
  sub_100007C1C();
  v13 = String.utf8CString.getter();
  v14 = xpc_dictionary_get_value(v12, (v13 + 32));

  XPCObject.init(_:)(v14, v11);
  return sub_100068D14;
}

void sub_100068D14(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = **a1;
  if (a2)
  {
    v7 = sub_100007C1C();
    sub_100068F90(v7, v8, &qword_10008F360, &qword_100070A20);

    RTCXPCDictionary.subscript.setter(v3, v6, v5);
    sub_100005000(v4, &qword_10008F360, &qword_100070A20);
  }

  else
  {

    RTCXPCDictionary.subscript.setter(v4, v6, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Bool __swiftcall RTCXPCDictionary.contains(key:)(Swift::String key)
{
  v2 = v1;
  v3 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  v4 = sub_100001D80(v3);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  v7 = String.utf8CString.getter();
  v8 = xpc_dictionary_get_value(v2, (v7 + 32));

  XPCObject.init(_:)(v8, v6);
  v9 = type metadata accessor for XPCObject(0);
  LOBYTE(v8) = sub_100002694(v6, 1, v9) != 1;
  sub_100005000(v6, &qword_10008F360, &qword_100070A20);
  return v8;
}

xpc_object_t sub_100068EE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = RTCXPCDictionary.init(dictionaryLiteral:)(a1);
  *a2 = result;
  return result;
}

char *sub_100068F08(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  v5 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = __DataStorage._length.getter();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v5)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return xpc_data_create(v5, v10);
}

uint64_t sub_100068F90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000228D4(a3, a4);
  sub_100003C44();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_100068FF8(uint64_t a1)
{
  v1 = sub_1000690CC();
  if (v2 <= 0x3F)
  {
    v3 = type metadata accessor for UUID();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v1;
}

unint64_t sub_1000690CC()
{
  result = qword_100090400;
  if (!qword_100090400)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100090400);
  }

  return result;
}

void sub_100069138()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100020328();
    *v0 = v3;
  }
}

void sub_100069184(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_100020328();
    *v1 = v2;
  }
}

uint64_t XPCError.errorDescription.getter(void *a1)
{
  if (xpc_dictionary_get_string(a1, "XPCErrorDescription"))
  {
    return String.init(cString:)();
  }

  else
  {
    return sub_100004814();
  }
}

unsigned __int8 *XPCIncomingConnection.entitlementValue(forKey:)@<X0>(uint64_t a4@<X8>)
{
  String.utf8CString.getter();
  v5 = xpc_connection_copy_entitlement_value();

  return XPCObject.init(_:)(v5, a4);
}

uint64_t XPCIncomingConnection.makeConnection(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3, _xpc_connection_s *a4)
{
  type metadata accessor for XPCConnection();
  v8 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  XPCConnection.init(conn:targetQ:delegate:)(a4, a1, a2, a3);
  return v8;
}

uint64_t XPCConnection.__allocating_init(conn:targetQ:delegate:)(_xpc_connection_s *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_100005274();
  v8 = swift_allocObject();
  XPCConnection.init(conn:targetQ:delegate:)(a1, a2, a3, a4);
  return v8;
}

uint64_t XPCConnection.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*XPCConnection.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_100038588(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1000695CC;
}

void sub_1000695CC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t XPCConnection.__allocating_init(machService:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  sub_100005274();
  v12 = swift_allocObject();
  XPCConnection.init(machService:targetQ:listen:delegate:)(a1, a2, a3, v8, a5, a6);
  return v12;
}

void *XPCConnection.init(machService:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v6[4] = 0;
  swift_unknownObjectWeakInit();
  if (a4)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v11 = String.utf8CString.getter();
  v12 = a3;

  mach_service = xpc_connection_create_mach_service((v11 + 32), v12, v10);

  sub_100004530(v14, v15, v16, v17, v18, v19, v20);
  v6[4] = a6;
  swift_unknownObjectWeakAssign();
  v6[2] = mach_service;
  v6[5] = v12;
  v21 = swift_unknownObjectRetain();
  xpc_connection_set_target_queue(v21, v12);
  sub_100009A00();
  sub_100002120();
  v26 = v22;
  v27 = &unk_100088D98;
  v23 = _Block_copy(aBlock);

  xpc_connection_set_event_handler(mach_service, v23);
  _Block_release(v23);
  xpc_connection_activate(mach_service);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v6;
}

void *XPCConnection.init(conn:targetQ:delegate:)(_xpc_connection_s *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = 0;
  v8 = swift_unknownObjectWeakInit();
  v4[2] = a1;
  sub_100004530(v8, v9, v10, v11, v12, v13, v14);
  v4[4] = a4;
  swift_unknownObjectWeakAssign();
  v4[5] = a2;
  swift_unknownObjectRetain();
  v15 = a2;
  xpc_connection_set_target_queue(a1, v15);
  sub_100009A00();
  sub_100002120();
  v20 = v16;
  v21 = &unk_100088DC0;
  v17 = _Block_copy(aBlock);

  xpc_connection_set_event_handler(a1, v17);
  _Block_release(v17);
  xpc_connection_activate(a1);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v4;
}

uint64_t XPCConnection.sendWithReply(_:)(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return _swift_task_switch(sub_100069980, 0, 0);
}

uint64_t sub_100069980()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v2 + 16);
  v5 = *(v2 + 40);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v1;
  *(v6 + 40) = v5;
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_100069A94;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000011, 0x80000001000732C0, sub_100069DF0, v6, &type metadata for RTCXPCDictionary);
}

uint64_t sub_100069A94()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100069BCC;
  }

  else
  {

    v2 = sub_100069BB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100069BCC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100069C30(uint64_t a1, _xpc_connection_s *a2, void *a3, uint64_t a4, NSObject *a5)
{
  v9 = sub_1000228D4(&unk_1000904F0, &qword_100070D40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = aBlock - v11;
  (*(v10 + 16))(aBlock - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  aBlock[4] = sub_100069FC4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100001658;
  aBlock[3] = &unk_100088E60;
  v15 = _Block_copy(aBlock);

  xpc_connection_send_message_with_reply(a2, a3, a5, v15);
  _Block_release(v15);
}

uint64_t sub_100069E00(void *a1)
{
  type = xpc_get_type(a1);
  if (type == &_xpc_type_error)
  {
    sub_100069F50(type, v3, v4);
    swift_allocError();
    *v6 = a1;
    swift_unknownObjectRetain();
    sub_1000228D4(&unk_1000904F0, &qword_100070D40);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    swift_unknownObjectRetain();
    sub_1000228D4(&unk_1000904F0, &qword_100070D40);
    return CheckedContinuation.resume(returning:)();
  }
}

unint64_t sub_100069F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100090430;
  if (!qword_100090430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090430);
  }

  return result;
}

uint64_t sub_100069FC4(void *a1)
{
  sub_1000228D4(&unk_1000904F0, &qword_100070D40);

  return sub_100069E00(a1);
}

Swift::Int sub_10006A054(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10006A0D4(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

RTCUtility::XPCMessage::MessageType_optional sub_10006A118@<W0>(Swift::Int64 *a1@<X0>, RTCUtility::XPCMessage::MessageType_optional *a2@<X8>)
{
  result.value = XPCMessage.MessageType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void *XPCMessage.init(ty:payload:)(unsigned __int8 a1, void *a2)
{
  v4 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = xpc_int64_create(a1);
  XPCObject.init(_:)(v10, v9);
  sub_100019DF4(v9, v7);
  v11 = type metadata accessor for XPCObject(0);
  if (sub_100002694(v7, 1, v11) == 1)
  {
    sub_100062450(v7);
    v12 = 0;
  }

  else
  {
    v12 = XPCObject.obj.getter();
    sub_10002E5EC(v7);
  }

  v13 = String.utf8CString.getter();
  xpc_dictionary_set_value(a2, (v13 + 32), v12);
  swift_unknownObjectRelease();
  sub_100062450(v9);

  return a2;
}

uint64_t XPCMessage.description.getter(void *a1, char a2)
{
  v44 = type metadata accessor for XPCObject(0);
  v42[1] = *(v44 - 8);
  __chkstk_darwin(v44);
  isUniquelyReferenced_nonNull_native = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  __chkstk_darwin(v6 - 8);
  v8 = v42 - v7;
  v49 = 0;
  v50 = 0xE000000000000000;
  LOBYTE(v48) = a2;
  _print_unlocked<A, B>(_:_:)();
  v9._countAndFlagsBits = 2683;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  v43 = a1;
  v10 = RTCXPCDictionary.keys.getter(a1);
  v11 = 0;
  v45 = v10[2];
  v12 = &_swiftEmptyDictionarySingleton;
  v46 = v10;
  v13 = v10 + 5;
  while (1)
  {
    if (v45 == v11)
    {

      v36 = Dictionary.description.getter();
      v38 = v37;

      v39._countAndFlagsBits = v36;
      v39._object = v38;
      String.append(_:)(v39);

      v40._countAndFlagsBits = 125;
      v40._object = 0xE100000000000000;
      String.append(_:)(v40);
      return v49;
    }

    if (v11 >= v46[2])
    {
      break;
    }

    v47 = v11;
    v14 = *(v13 - 1);
    v15 = *v13;
    v16 = v13;
    v17 = String.utf8CString.getter();

    v18 = xpc_dictionary_get_value(v43, (v17 + 32));

    XPCObject.init(_:)(v18, v8);
    if (sub_100002694(v8, 1, v44) == 1)
    {
      goto LABEL_18;
    }

    sub_100004254(v8, isUniquelyReferenced_nonNull_native);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v12;
    v19 = sub_100003BC0(v14, v15);
    v21 = v12[2];
    v22 = (v20 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_16;
    }

    v24 = v19;
    v25 = v20;
    sub_1000228D4(&qword_100090500, &qword_100070D50);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v23))
    {
      v26 = sub_100003BC0(v14, v15);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_19;
      }

      v24 = v26;
    }

    if (v25)
    {

      v12 = v48;
      v28 = sub_100009A24();
      sub_10006A630(v28, v29);
    }

    else
    {
      v12 = v48;
      v48[(v24 >> 6) + 8] |= 1 << v24;
      v30 = (v12[6] + 16 * v24);
      *v30 = v14;
      v30[1] = v15;
      v31 = sub_100009A24();
      sub_100004254(v31, v32);
      v33 = v12[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_17;
      }

      v12[2] = v35;
    }

    v13 = v16 + 2;
    v11 = v47 + 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10006A630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006A698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100090508;
  if (!qword_100090508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090508);
  }

  return result;
}

uint64_t sub_10006A6EC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10006A72C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCMessage.MessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for XPCMessage.MessageType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

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

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
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

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t dispatch thunk of SingleValueDecodingContainer.decode(_:)()
{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

uint64_t dispatch thunk of SingleValueEncodingContainer.encode(_:)()
{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}