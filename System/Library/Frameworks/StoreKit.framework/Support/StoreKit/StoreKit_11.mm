uint64_t sub_100163580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientOverrideRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001635E4(uint64_t a1)
{
  v2 = type metadata accessor for ClientOverrideRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ClientOverrideRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10016370CLL);
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

unint64_t sub_100163748()
{
  result = qword_1003CFC18;
  if (!qword_1003CFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFC18);
  }

  return result;
}

unint64_t sub_1001637A0()
{
  result = qword_1003CFC20;
  if (!qword_1003CFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFC20);
  }

  return result;
}

unint64_t sub_1001637F8()
{
  result = qword_1003CFC28;
  if (!qword_1003CFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFC28);
  }

  return result;
}

uint64_t sub_100163890(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x626967696C457369 && a2 == 0xEA0000000000656CLL)
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

uint64_t sub_10016392C(void *a1)
{
  v3 = sub_100080FB4(&qword_1003CFC30, &qword_1002F4F60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_100086D24(a1, a1[3]);
  sub_100164980();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100080F0C(a1);
  return v7 & 1;
}

uint64_t sub_100163A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100163890(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100163AB0(uint64_t a1)
{
  v2 = sub_100164980();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100163AEC(uint64_t a1)
{
  v2 = sub_100164980();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163B28@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10016392C(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_100163B58()
{
  v1[24] = v0;
  v2 = type metadata accessor for String.Encoding();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_100163C44, 0, 0);
}

uint64_t sub_100163C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = v3;
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v5 = *(v3 + 192);
  v6 = type metadata accessor for SKLogger(0);
  *(v3 + 224) = sub_10007EDA4(v6, qword_1003F26C8);
  v7 = *(v5 + 24);
  *(v3 + 232) = v7;
  v8 = *(v5 + 32);
  *(v3 + 240) = v8;

  v9 = static os_log_type_t.default.getter();

  v10 = Logger.logObject.getter();

  v58 = v8;
  v59 = v7;
  if (os_log_type_enabled(v10, v9))
  {
    swift_slowAlloc();
    v11 = sub_100143E48();
    v62 = v11;
    sub_100143DCC(4.8752e-34);
    v60 = v12;
    v61 = v13;
    v14._countAndFlagsBits = v7;
    v14._object = v8;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 8285;
    v15._object = 0xE200000000000000;
    String.append(_:)(v15);
    sub_100080210(v60, v61, &v62);

    sub_10009F124();
    *(v4 + 14) = sub_100080210(0xD00000000000002ALL, 0x800000010031A080, &v62);
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v4, 0x16u);
    sub_100098BC0();
    sub_100081C28(v11);
    sub_100081C28(v4);
  }

  v16 = *(v3 + 208);
  v17 = *(v3 + 216);
  v18 = *(v3 + 192);
  v19 = *(v3 + 200);
  sub_100080FB4(&unk_1003CEE30, qword_1002F28C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED020;
  *(inited + 32) = 0x6449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  v21 = *v18;
  v22 = (*v18 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v23 = v22[1];
  *(inited + 48) = *v22;
  *(inited + 56) = v23;
  strcpy((inited + 64), "inAppPinningId");
  *(inited + 79) = -18;
  v24 = *(v18 + 8);
  v57 = v21;

  v25 = [v24 pinningID];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  *(inited + 80) = v26;
  *(inited + 88) = v28;
  v29 = Dictionary.init(dictionaryLiteral:)();
  v30 = [v24 pinningID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static String.Encoding.utf8.getter();
  String.data(using:allowLossyConversion:)();
  v32 = v31;

  (*(v16 + 8))(v17, v19);
  if (v32 >> 60 == 15)
  {
    *(v3 + 112) = 0u;
    *(v3 + 128) = 0u;
  }

  else
  {
    v33 = objc_opt_self();
    v34 = sub_100164BB0();
    sub_1000BC808(v34, v35);
    sub_100164BB0();
    isa = Data._bridgeToObjectiveC()().super.isa;
    *(v3 + 184) = 0;
    v37 = [v33 JSONObjectWithData:isa options:0 error:v3 + 184];

    v38 = *(v3 + 184);
    if (v37)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v39 = sub_100164BB0();
      sub_1000BC8B4(v39, v40);
      v41 = sub_100164BB0();
      sub_1000BC8B4(v41, v42);
      if (*(v3 + 136))
      {
        v43 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v44 = v38;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      *(v3 + 112) = 0u;
      *(v3 + 128) = 0u;
      v45 = sub_100164BB0();
      sub_1000BC8B4(v45, v46);
      v47 = sub_100164BB0();
      sub_1000BC8B4(v47, v48);
    }
  }

  v43 = 1;
LABEL_12:
  sub_10008105C(v3 + 112);
  type metadata accessor for Request();
  if (qword_1003CBFF0 != -1)
  {
    swift_once();
  }

  v49 = *(v3 + 192);
  v50 = qword_1003F2858;
  v51 = sub_1002235CC(v29);

  v52 = sub_10021E3B0(v57, v50, 3, 4, v43, v51);
  *(v3 + 248) = v52;
  v53 = *(v49 + 16);
  *(v3 + 160) = v53;
  *&v52[OBJC_IVAR____TtC9storekitd7Request_dialogContext] = v53;
  sub_1000E0120(v3 + 160, v3 + 168);
  swift_unknownObjectRelease();
  v54 = &v52[OBJC_IVAR____TtC9storekitd7Request_logKey];
  *v54 = v59;
  v54[1] = v58;

  v55 = swift_task_alloc();
  *(v3 + 256) = v55;
  *v55 = v3;
  v55[1] = sub_1001641C0;

  return sub_1000C9754();
}

uint64_t sub_1001641C0(char a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = sub_10016456C;
  }

  else
  {
    v4 = sub_100164304;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100164304()
{
  v25 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  _StringGuts.grow(_:)(31);

  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6 = static os_log_type_t.default.getter();

  v7 = Logger.logObject.getter();

  v8 = os_log_type_enabled(v7, v6);
  v9 = *(v0 + 248);
  if (v8)
  {
    v11 = *(v0 + 232);
    v10 = *(v0 + 240);
    swift_slowAlloc();
    v12 = sub_100143E48();
    sub_100143DCC(4.8752e-34);
    v22 = v13;
    v23 = v15;
    v24 = v14;
    v16._countAndFlagsBits = v11;
    v16._object = v10;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 8285;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    sub_100080210(v22, v23, &v24);

    sub_10009F124();
    v18 = sub_100080210(0xD00000000000001DLL, 0x800000010031A0E0, &v24);

    *(v2 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v6, "%{public}s%{public}s", v2, 0x16u);
    sub_100098BC0();
    sub_100081C28(v12);
    sub_100081C28(v2);
  }

  else
  {
  }

  v19 = *(v0 + 8);
  v20 = *(v0 + 272);

  return v19(v20);
}

uint64_t sub_10016456C()
{
  v22 = v0;
  v1 = v0[33];
  v2 = v0[30];
  _StringGuts.grow(_:)(44);
  v0[18] = 0;
  v0[19] = 0xE000000000000000;
  v3._object = 0x800000010031A0B0;
  v3._countAndFlagsBits = 0xD00000000000002ALL;
  String.append(_:)(v3);
  v0[22] = v1;
  sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
  _print_unlocked<A, B>(_:_:)();
  v4 = v0[18];
  v5 = v0[19];
  v6 = static os_log_type_t.error.getter();

  v7 = Logger.logObject.getter();

  if (os_log_type_enabled(v7, v6))
  {
    v9 = v0[29];
    v8 = v0[30];
    swift_slowAlloc();
    v10 = sub_100143E48();
    v21 = v10;
    sub_100143DCC(4.8752e-34);
    v19 = v11;
    v20 = v12;
    v13._countAndFlagsBits = v9;
    v13._object = v8;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8285;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    sub_100080210(v19, v20, &v21);

    sub_10009F124();
    v15 = sub_100080210(v4, v5, &v21);

    *(v2 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v6, "%{public}s%{public}s", v2, 0x16u);
    sub_100098BC0();
    sub_100081C28(v10);
    sub_100081C28(v2);
  }

  else
  {
  }

  v16 = v0[31];
  swift_willThrow();

  v17 = v0[1];

  return v17(0);
}

uint64_t getEnumTagSinglePayload for BindPaymentAccountEligibilityResponse(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BindPaymentAccountEligibilityResponse(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100164948);
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

unint64_t sub_100164980()
{
  result = qword_1003CFC38;
  if (!qword_1003CFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFC38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BindPaymentAccountEligibilityResponse.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100164A70);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100164AAC()
{
  result = qword_1003CFC40;
  if (!qword_1003CFC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFC40);
  }

  return result;
}

unint64_t sub_100164B04()
{
  result = qword_1003CFC48;
  if (!qword_1003CFC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFC48);
  }

  return result;
}

unint64_t sub_100164B5C()
{
  result = qword_1003CFC50;
  if (!qword_1003CFC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFC50);
  }

  return result;
}

uint64_t sub_100164BBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_100164BFC(uint64_t result, int a2, int a3)
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

unint64_t sub_100164C4C(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x79636E6572727563;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    case 4:
      result = 0x746E756F63736964;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x726F466563697270;
      break;
    case 7:
      result = 0x6F43646574736F68;
      break;
    case 8:
      result = 0x6E6F6973726576;
      break;
    case 9:
      result = 1702521203;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 25705;
      break;
    case 12:
      result = 1684957547;
      break;
    case 13:
      result = 0x6449726566666FLL;
      break;
    case 14:
      result = 0x73726566666FLL;
      break;
    case 15:
      result = 0x6570795465646F6DLL;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0x726550664F6D756ELL;
      break;
    case 18:
      result = 0x6563697270;
      break;
    case 19:
      result = 0x7274536563697270;
      break;
    case 20:
      result = 0x6C61636F4C756369;
      break;
    case 21:
      result = 0x6D614E726566666FLL;
      break;
    case 22:
      result = 0xD000000000000015;
      break;
    case 23:
      result = 0x647261646E617473;
      break;
    case 24:
      result = 0xD000000000000016;
      break;
    case 25:
      result = 0xD000000000000014;
      break;
    case 26:
      result = 0xD000000000000016;
      break;
    case 27:
      result = 0xD000000000000016;
      break;
    case 28:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

char *sub_100164FC0(void *a1)
{
  v2 = type metadata accessor for DecodingError.Context();
  sub_1000890DC();
  v39 = v3;
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100080FB4(&qword_1003CFC58, &qword_1002F5118);
  sub_1000890DC();
  v40 = v7;
  __chkstk_darwin(v8);
  sub_100086D24(a1, a1[3]);
  v9 = sub_1001659E0();
  v10 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    v12 = a1;
LABEL_4:
    sub_100080F0C(v12);
    return v6;
  }

  v37 = v9;
  v38 = v2;
  v41 = v6;
  sub_100080FB4(&unk_1003CE550, &qword_1002F6970);
  LOBYTE(v42) = 0;
  sub_100165A34(&qword_1003CFC68, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v43;
  v11 = v44;
  LOBYTE(v42) = 1;
  sub_1000BC95C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = a1;
  v15 = v43;
  v14 = v44;
  v16 = objc_opt_self();
  v35 = v15;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v43 = 0;
  v18 = [v16 JSONObjectWithData:isa options:0 error:&v43];

  if (!v18)
  {
    v22 = v43;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10008E168(v35, v14);
    v23 = sub_100165CAC();
    v24(v23);
    v12 = v36;
    goto LABEL_4;
  }

  v34 = v14;
  v19 = v43;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100080FB4(&qword_1003CEDD8, qword_1002F9920);
  if (swift_dynamicCast())
  {
    v20 = sub_100165CAC();
    v21(v20);
    sub_10008E168(v35, v34);
    sub_100080F0C(v36);
  }

  else
  {
    sub_100080FB4(&qword_1003CF320, &qword_1002F2AC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1002ED290;
    v26 = v37;
    *(v25 + 56) = &type metadata for ProductResponse.CodingKeys;
    *(v25 + 64) = v26;
    *(v25 + 32) = 1;
    v27 = v41;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v6 = v29;
    v37 = v11;
    v30 = v38;
    v31 = v39;
    (*(v39 + 16))(v29, v27, v38);
    (*(*(v28 - 8) + 104))(v6, enum case for DecodingError.dataCorrupted(_:), v28);
    swift_willThrow();
    sub_10008E168(v35, v34);
    (*(v31 + 8))(v27, v30);
    v32 = sub_100165CAC();
    v33(v32);
    sub_100080F0C(v36);
  }

  return v6;
}

uint64_t sub_1001654DC(void *a1, void *a2, unint64_t a3)
{
  v23 = a2;
  v6 = sub_100080FB4(&qword_1003CFC70, &qword_1002F5120);
  sub_1000890DC();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v12 = objc_opt_self();
  sub_100080FB4(&qword_1003CC200, &unk_1002EAA50);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v25 = 0;
  v14 = [v12 dataWithJSONObject:isa options:0 error:&v25];

  v15 = v25;
  if (v14)
  {
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v17;

    sub_100086D24(a1, a1[3]);
    sub_1001659E0();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v25 = v23;
    v26 = a3;
    v24 = 0;

    sub_100080FB4(&unk_1003CE550, &qword_1002F6970);
    sub_100165A34(&qword_1003CFC78, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v3)
    {
      sub_10008E168(v16, v22);

      return (*(v8 + 8))(v11, v6);
    }

    else
    {

      v20 = v16;
      v25 = v16;
      v21 = v22;
      v26 = v22;
      v24 = 1;
      sub_1000BC860();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v8 + 8))(v11, v6);
      return sub_10008E168(v20, v21);
    }
  }

  else
  {
    v19 = v15;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_1001657D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000100316B20 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746375646F7270 && a2 == 0xE800000000000000)
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

uint64_t sub_1001658A0(char a1)
{
  if (a1)
  {
    return 0x73746375646F7270;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1001658E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001657D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100165918(uint64_t a1)
{
  v2 = sub_1001659E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100165954(uint64_t a1)
{
  v2 = sub_1001659E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

char *sub_100165990@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_100164FC0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1001659E0()
{
  result = qword_1003CFC60;
  if (!qword_1003CFC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFC60);
  }

  return result;
}

uint64_t sub_100165A34(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000852D4(&unk_1003CE550, &qword_1002F6970);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProductResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100165B6CLL);
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

unint64_t sub_100165BA8()
{
  result = qword_1003CFC80;
  if (!qword_1003CFC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFC80);
  }

  return result;
}

unint64_t sub_100165C00()
{
  result = qword_1003CFC88;
  if (!qword_1003CFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFC88);
  }

  return result;
}

unint64_t sub_100165C58()
{
  result = qword_1003CFC90;
  if (!qword_1003CFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFC90);
  }

  return result;
}

void sub_100165CBC()
{
  sub_100093D08();
  v4 = v3;
  v6 = v5;
  sub_10016C7E4();
  v7 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v7);
  sub_100089118();
  __chkstk_darwin(v8);
  v9 = sub_10016C74C();
  sub_10016C0EC(v9, v10, &unk_1003CE2B0, &qword_1002EEE80);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_100081D0C(v0, 1, v11);

  if (v12 == 1)
  {
    sub_10012AD54(v0, &unk_1003CE2B0, &qword_1002EEE80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10012ADC8();
    (*(v13 + 8))(v0, v11);
  }

  v15 = *(v4 + 16);
  v14 = *(v4 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = v15;
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_10016C87C();
    if (v1)
    {
LABEL_6:
      String.utf8CString.getter();
      sub_1000B7E4C();
      v17 = swift_allocObject();
      *(v17 + 16) = v6;
      *(v17 + 24) = v4;

      if (v14 | v16)
      {
        sub_10016C7D4();
      }

      else
      {
        v18 = 0;
      }

      sub_10016C7B4(v18);
      swift_task_create();

      sub_10012AD54(v2, &unk_1003CE2B0, &qword_1002EEE80);

      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    v14 = 0;
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_10012AD54(v2, &unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B7E4C();
  v19 = swift_allocObject();
  *(v19 + 16) = v6;
  *(v19 + 24) = v4;
  if (v14 | v16)
  {
    sub_10016C7C4();
  }

  swift_task_create();
LABEL_14:
  sub_100093CB8();
}

void sub_100165F40()
{
  sub_100093D08();
  v4 = v3;
  v6 = v5;
  sub_10016C7E4();
  v7 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v7);
  sub_100089118();
  __chkstk_darwin(v8);
  v9 = sub_10016C74C();
  sub_10016C0EC(v9, v10, &unk_1003CE2B0, &qword_1002EEE80);
  v11 = type metadata accessor for TaskPriority();
  sub_10016C8BC(v11);
  if (&qword_1002EEE80 == 1)
  {
    sub_10012AD54(v0, &unk_1003CE2B0, &qword_1002EEE80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10012ADC8();
    (*(v12 + 8))(v0, &unk_1003CE2B0);
  }

  v13 = *(v4 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_10016C87C();
    if (v1)
    {
LABEL_6:
      String.utf8CString.getter();
      sub_1000B7E4C();
      v14 = swift_allocObject();
      *(v14 + 16) = v6;
      *(v14 + 24) = v4;

      sub_100080FB4(&qword_1003CD340, &qword_1002EDE70);
      sub_10016C934();
      if (v15)
      {
        sub_10016C7D4();
      }

      sub_10016C7B4(v15);
      sub_10016C940();

      sub_10012AD54(v2, &unk_1003CE2B0, &qword_1002EEE80);

      goto LABEL_13;
    }
  }

  else if (v1)
  {
    goto LABEL_6;
  }

  sub_10012AD54(v2, &unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B7E4C();
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  *(v16 + 24) = v4;
  sub_100080FB4(&qword_1003CD340, &qword_1002EDE70);
  sub_10016C934();
  if (v17)
  {
    sub_10016C7C4();
  }

  swift_task_create();
LABEL_13:
  sub_100093CB8();
}

void sub_1001661A4()
{
  sub_100093D08();
  v4 = v3;
  v6 = v5;
  sub_10016C7E4();
  v7 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v7);
  sub_100089118();
  __chkstk_darwin(v8);
  v9 = sub_10016C74C();
  sub_10016C0EC(v9, v10, &unk_1003CE2B0, &qword_1002EEE80);
  v11 = type metadata accessor for TaskPriority();
  sub_10016C8BC(v11);
  if (&qword_1002EEE80 == 1)
  {
    sub_10012AD54(v0, &unk_1003CE2B0, &qword_1002EEE80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10012ADC8();
    (*(v12 + 8))(v0, &unk_1003CE2B0);
  }

  v13 = *(v4 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_10016C87C();
    if (v1)
    {
LABEL_6:
      String.utf8CString.getter();
      sub_1000B7E4C();
      v14 = swift_allocObject();
      *(v14 + 16) = v6;
      *(v14 + 24) = v4;

      sub_100080FB4(qword_1003CFC98, &qword_1002F52C8);
      sub_10016C934();
      if (v15)
      {
        sub_10016C7D4();
      }

      sub_10016C7B4(v15);
      sub_10016C940();

      sub_10012AD54(v2, &unk_1003CE2B0, &qword_1002EEE80);

      goto LABEL_13;
    }
  }

  else if (v1)
  {
    goto LABEL_6;
  }

  sub_10012AD54(v2, &unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B7E4C();
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  *(v16 + 24) = v4;
  sub_100080FB4(qword_1003CFC98, &qword_1002F52C8);
  sub_10016C934();
  if (v17)
  {
    sub_10016C7C4();
  }

  swift_task_create();
LABEL_13:
  sub_100093CB8();
}

id sub_100166408(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v114 = a7;
  v14 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  __chkstk_darwin(v14 - 8);
  v107 = &v107 - v15;
  v16 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  v17 = __chkstk_darwin(v16 - 8);
  v108 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v110 = &v107 - v19;
  v124 = a1;
  v125 = a2;

  swift_task_localValuePush();
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for SKLogger(0);
  v21 = sub_10007EDA4(v20, qword_1003F26C8);
  v22 = qword_1003CBE98;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = a9;
  v115 = qword_1003F2700;
  TaskLocal.get()();
  v24 = v124;
  v25 = v125;
  v26 = static os_log_type_t.default.getter();

  v27 = Logger.logObject.getter();

  v28 = os_log_type_enabled(v27, v26);
  v129 = a9;
  v113 = v21;
  if (v28)
  {
    v29 = swift_slowAlloc();
    *&v120 = swift_slowAlloc();
    *v29 = 136446466;
    v124 = 91;
    v125 = 0xE100000000000000;
    v30._countAndFlagsBits = v24;
    v30._object = v25;
    String.append(_:)(v30);
    v31._countAndFlagsBits = 8285;
    v31._object = 0xE200000000000000;
    String.append(_:)(v31);
    v32 = sub_100080210(v124, v125, &v120);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    v33 = sub_100080210(v114, a8, &v120);

    *(v29 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v27, v26, "%{public}s%{public}s", v29, 0x16u);
    swift_arrayDestroy();
    v23 = v129;
  }

  else
  {
  }

  v114 = a8;
  v34 = [objc_opt_self() currentConnection];
  if (!v34)
  {
    v124 = 0;
    v125 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    *&v120 = 0xD000000000000021;
    *(&v120 + 1) = 0x8000000100317450;
    swift_beginAccess();
    v46._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v46);

    v47 = v120;
    TaskLocal.get()();
    v48 = v120;
    v49 = static os_log_type_t.error.getter();

    v50 = Logger.logObject.getter();

    if (os_log_type_enabled(v50, v49))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v111 = a11;
      v123[0] = v52;
      *v51 = 136446466;
      *&v120 = 91;
      *(&v120 + 1) = 0xE100000000000000;
      String.append(_:)(v48);
      v53._countAndFlagsBits = 8285;
      v53._object = 0xE200000000000000;
      String.append(_:)(v53);
      v54 = sub_100080210(v120, *(&v120 + 1), v123);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2082;
      v55 = sub_100080210(v47, *(&v47 + 1), v123);

      *(v51 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v50, v49, "%{public}s%{public}s", v51, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v93 = 1;
    swift_willThrow();
    goto LABEL_29;
  }

  v35 = v34;
  v111 = a11;
  swift_beginAccess();
  v36 = *(v23 + 16);
  v37 = *(v23 + 24);
  v112 = v35;
  v38 = *(v23 + 32);
  v127 = &unk_10038D180;
  v128 = &off_10038C1A8;
  v124 = v36;
  v125 = v37;
  v126 = v38;
  sub_100086D24(&v124, &unk_10038D180);
  v39 = type metadata accessor for Optional();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = (&v107 - v41);
  v43 = v112;

  v42->n128_u64[0] = sub_1001680D0();
  v42->n128_u64[1] = v44;
  v42[1].n128_u8[0] = v45;
  if (sub_100081D0C(v42, 1, &unk_10038D180) == 1)
  {
    (*(v40 + 8))(v42, v39);
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
  }

  else
  {
    *(&v121 + 1) = &unk_10038D180;
    v122 = &off_10038C1A8;
    v56 = sub_10009E720(&v120);
    initializeBufferWithCopyOfBuffer for AuditTokenDecodingError(v56, v42);
  }

  sub_100080FB4(&qword_1003D27C0, &qword_1002F0508);
  v57 = swift_dynamicCast();
  v58 = v129;
  if (!v57 || (v59 = v118) == 0)
  {
    *&v120 = 0;
    *(&v120 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v117 = 0xD00000000000001BLL;
    v118 = 0x8000000100317480;
    swift_beginAccess();
    v80._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v80);

    v82 = v117;
    v81 = v118;
    TaskLocal.get()();
    v84 = v117;
    v83 = v118;
    v85 = static os_log_type_t.error.getter();

    v86 = Logger.logObject.getter();

    if (os_log_type_enabled(v86, v85))
    {
      v87 = swift_slowAlloc();
      v116._countAndFlagsBits = swift_slowAlloc();
      *v87 = 136446466;
      v117 = 91;
      v118 = 0xE100000000000000;
      v88._countAndFlagsBits = v84;
      v88._object = v83;
      String.append(_:)(v88);
      v89._countAndFlagsBits = 8285;
      v89._object = 0xE200000000000000;
      String.append(_:)(v89);
      v90 = sub_100080210(v117, v118, &v116._countAndFlagsBits);

      *(v87 + 4) = v90;
      *(v87 + 12) = 2082;
      v91 = sub_100080210(v82, v81, &v116._countAndFlagsBits);

      *(v87 + 14) = v91;
      _os_log_impl(&_mh_execute_header, v86, v85, "%{public}s%{public}s", v87, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v92 = 3;
    swift_willThrow();

    sub_100080F0C(&v124);
    goto LABEL_29;
  }

  v60 = v119;
  v61 = v117;
  swift_beginAccess();
  *(v58 + 16) = v61;
  *(v58 + 24) = v59;
  *(v58 + 32) = v60;

  sub_100080F0C(&v124);
  v62 = type metadata accessor for ClientOverride(0);
  v63 = v110;
  sub_100081DFC(v110, 1, 1, v62);
  type metadata accessor for Client(0);
  sub_10016C0EC(v63, v108, &unk_1003D20F0, &qword_1002EB950);
  v64 = v43;
  v65 = v109;
  sub_1001ABF2C();
  if (v65)
  {

    v124 = 0;
    v125 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v117 = 0xD00000000000001CLL;
    v118 = 0x80000001003174A0;
    swift_beginAccess();
    v67._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v67);

    v68 = v117;
    v69 = v118;
    TaskLocal.get()();
    v70 = v117;
    v71 = v118;
    v72 = static os_log_type_t.error.getter();

    v73 = Logger.logObject.getter();

    if (os_log_type_enabled(v73, v72))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v113 = v64;
      v116._countAndFlagsBits = v75;
      *v74 = 136446466;
      v117 = 91;
      v118 = 0xE100000000000000;
      v76._countAndFlagsBits = v70;
      v76._object = v71;
      String.append(_:)(v76);
      v77._countAndFlagsBits = 8285;
      v77._object = 0xE200000000000000;
      String.append(_:)(v77);
      v78 = sub_100080210(v117, v118, &v116._countAndFlagsBits);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2082;
      v79 = sub_100080210(v68, v69, &v116._countAndFlagsBits);

      *(v74 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v73, v72, "%{public}s%{public}s", v74, 0x16u);
      swift_arrayDestroy();
      v64 = v113;
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v106 = 1;
    swift_willThrow();

    sub_10012AD54(v110, &unk_1003D20F0, &qword_1002EB950);
LABEL_29:
    swift_task_localValuePop();

    goto LABEL_30;
  }

  v94 = v66;
  v113 = v64;
  swift_beginAccess();
  v117 = _typeName(_:qualified:)();
  v118 = v95;
  v96._countAndFlagsBits = 95;
  v96._object = 0xE100000000000000;
  String.append(_:)(v96);
  TaskLocal.get()();
  String.append(_:)(v116);

  v97 = v117;
  v98 = v118;
  result = [objc_opt_self() globalStore];
  if (result)
  {
    v100 = result;
    v101 = String._bridgeToObjectiveC()();
    [v100 takeKeepAliveTransaction:v101];

    v102 = type metadata accessor for TaskPriority();
    sub_100081DFC(v107, 1, 1, v102);
    v103 = swift_allocObject();
    v103[2] = 0;
    v103[3] = 0;
    v104 = v111;
    v103[4] = a10;
    v103[5] = v104;
    v103[6] = v94;
    v103[7] = v58;
    v103[8] = v97;
    v103[9] = v98;

    v105 = v94;

    sub_100165CBC();

    sub_10012AD54(v110, &unk_1003D20F0, &qword_1002EB950);
    swift_task_localValuePop();

LABEL_30:
  }

  __break(1u);
  return result;
}

id sub_10016726C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v114 = a7;
  v14 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  __chkstk_darwin(v14 - 8);
  v107 = &v107 - v15;
  v16 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  v17 = __chkstk_darwin(v16 - 8);
  v108 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v110 = &v107 - v19;
  v124 = a1;
  v125 = a2;

  swift_task_localValuePush();
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for SKLogger(0);
  v21 = sub_10007EDA4(v20, qword_1003F26C8);
  v22 = qword_1003CBE98;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = a9;
  v115 = qword_1003F2700;
  TaskLocal.get()();
  v24 = v124;
  v25 = v125;
  v26 = static os_log_type_t.default.getter();

  v27 = Logger.logObject.getter();

  v28 = os_log_type_enabled(v27, v26);
  v129 = a9;
  v113 = v21;
  if (v28)
  {
    v29 = swift_slowAlloc();
    *&v120 = swift_slowAlloc();
    *v29 = 136446466;
    v124 = 91;
    v125 = 0xE100000000000000;
    v30._countAndFlagsBits = v24;
    v30._object = v25;
    String.append(_:)(v30);
    v31._countAndFlagsBits = 8285;
    v31._object = 0xE200000000000000;
    String.append(_:)(v31);
    v32 = sub_100080210(v124, v125, &v120);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    v33 = sub_100080210(v114, a8, &v120);

    *(v29 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v27, v26, "%{public}s%{public}s", v29, 0x16u);
    swift_arrayDestroy();
    v23 = v129;
  }

  else
  {
  }

  v114 = a8;
  v34 = [objc_opt_self() currentConnection];
  if (!v34)
  {
    v124 = 0;
    v125 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    *&v120 = 0xD000000000000021;
    *(&v120 + 1) = 0x8000000100317450;
    swift_beginAccess();
    v46._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v46);

    v47 = v120;
    TaskLocal.get()();
    v48 = v120;
    v49 = static os_log_type_t.error.getter();

    v50 = Logger.logObject.getter();

    if (os_log_type_enabled(v50, v49))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v111 = a11;
      v123[0] = v52;
      *v51 = 136446466;
      *&v120 = 91;
      *(&v120 + 1) = 0xE100000000000000;
      String.append(_:)(v48);
      v53._countAndFlagsBits = 8285;
      v53._object = 0xE200000000000000;
      String.append(_:)(v53);
      v54 = sub_100080210(v120, *(&v120 + 1), v123);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2082;
      v55 = sub_100080210(v47, *(&v47 + 1), v123);

      *(v51 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v50, v49, "%{public}s%{public}s", v51, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v93 = 1;
    swift_willThrow();
    goto LABEL_29;
  }

  v35 = v34;
  v111 = a11;
  swift_beginAccess();
  v36 = *(v23 + 16);
  v37 = *(v23 + 24);
  v112 = v35;
  v38 = *(v23 + 32);
  v127 = &unk_10038D200;
  v128 = &off_10038C198;
  v124 = v36;
  v125 = v37;
  v126 = v38;
  sub_100086D24(&v124, &unk_10038D200);
  v39 = type metadata accessor for Optional();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = (&v107 - v41);
  v43 = v112;

  v42->n128_u64[0] = sub_10016871C();
  v42->n128_u64[1] = v44;
  v42[1].n128_u8[0] = v45;
  if (sub_100081D0C(v42, 1, &unk_10038D200) == 1)
  {
    (*(v40 + 8))(v42, v39);
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
  }

  else
  {
    *(&v121 + 1) = &unk_10038D200;
    v122 = &off_10038C198;
    v56 = sub_10009E720(&v120);
    initializeBufferWithCopyOfBuffer for AuditTokenDecodingError(v56, v42);
  }

  sub_100080FB4(&qword_1003D27C0, &qword_1002F0508);
  v57 = swift_dynamicCast();
  v58 = v129;
  if (!v57 || (v59 = v118) == 0)
  {
    *&v120 = 0;
    *(&v120 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v117 = 0xD00000000000001BLL;
    v118 = 0x8000000100317480;
    swift_beginAccess();
    v80._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v80);

    v82 = v117;
    v81 = v118;
    TaskLocal.get()();
    v84 = v117;
    v83 = v118;
    v85 = static os_log_type_t.error.getter();

    v86 = Logger.logObject.getter();

    if (os_log_type_enabled(v86, v85))
    {
      v87 = swift_slowAlloc();
      v116._countAndFlagsBits = swift_slowAlloc();
      *v87 = 136446466;
      v117 = 91;
      v118 = 0xE100000000000000;
      v88._countAndFlagsBits = v84;
      v88._object = v83;
      String.append(_:)(v88);
      v89._countAndFlagsBits = 8285;
      v89._object = 0xE200000000000000;
      String.append(_:)(v89);
      v90 = sub_100080210(v117, v118, &v116._countAndFlagsBits);

      *(v87 + 4) = v90;
      *(v87 + 12) = 2082;
      v91 = sub_100080210(v82, v81, &v116._countAndFlagsBits);

      *(v87 + 14) = v91;
      _os_log_impl(&_mh_execute_header, v86, v85, "%{public}s%{public}s", v87, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v92 = 3;
    swift_willThrow();

    sub_100080F0C(&v124);
    goto LABEL_29;
  }

  v60 = v119;
  v61 = v117;
  swift_beginAccess();
  *(v58 + 16) = v61;
  *(v58 + 24) = v59;
  *(v58 + 32) = v60;

  sub_100080F0C(&v124);
  v62 = type metadata accessor for ClientOverride(0);
  v63 = v110;
  sub_100081DFC(v110, 1, 1, v62);
  type metadata accessor for Client(0);
  sub_10016C0EC(v63, v108, &unk_1003D20F0, &qword_1002EB950);
  v64 = v43;
  v65 = v109;
  sub_1001ABF2C();
  if (v65)
  {

    v124 = 0;
    v125 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v117 = 0xD00000000000001CLL;
    v118 = 0x80000001003174A0;
    swift_beginAccess();
    v67._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v67);

    v68 = v117;
    v69 = v118;
    TaskLocal.get()();
    v70 = v117;
    v71 = v118;
    v72 = static os_log_type_t.error.getter();

    v73 = Logger.logObject.getter();

    if (os_log_type_enabled(v73, v72))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v113 = v64;
      v116._countAndFlagsBits = v75;
      *v74 = 136446466;
      v117 = 91;
      v118 = 0xE100000000000000;
      v76._countAndFlagsBits = v70;
      v76._object = v71;
      String.append(_:)(v76);
      v77._countAndFlagsBits = 8285;
      v77._object = 0xE200000000000000;
      String.append(_:)(v77);
      v78 = sub_100080210(v117, v118, &v116._countAndFlagsBits);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2082;
      v79 = sub_100080210(v68, v69, &v116._countAndFlagsBits);

      *(v74 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v73, v72, "%{public}s%{public}s", v74, 0x16u);
      swift_arrayDestroy();
      v64 = v113;
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v106 = 1;
    swift_willThrow();

    sub_10012AD54(v110, &unk_1003D20F0, &qword_1002EB950);
LABEL_29:
    swift_task_localValuePop();

    goto LABEL_30;
  }

  v94 = v66;
  v113 = v64;
  swift_beginAccess();
  v117 = _typeName(_:qualified:)();
  v118 = v95;
  v96._countAndFlagsBits = 95;
  v96._object = 0xE100000000000000;
  String.append(_:)(v96);
  TaskLocal.get()();
  String.append(_:)(v116);

  v97 = v117;
  v98 = v118;
  result = [objc_opt_self() globalStore];
  if (result)
  {
    v100 = result;
    v101 = String._bridgeToObjectiveC()();
    [v100 takeKeepAliveTransaction:v101];

    v102 = type metadata accessor for TaskPriority();
    sub_100081DFC(v107, 1, 1, v102);
    v103 = swift_allocObject();
    v103[2] = 0;
    v103[3] = 0;
    v104 = v111;
    v103[4] = a10;
    v103[5] = v104;
    v103[6] = v94;
    v103[7] = v58;
    v103[8] = v97;
    v103[9] = v98;

    v105 = v94;

    sub_100165CBC();

    sub_10012AD54(v110, &unk_1003D20F0, &qword_1002EB950);
    swift_task_localValuePop();

LABEL_30:
  }

  __break(1u);
  return result;
}

uint64_t sub_1001680D0()
{
  if (sub_10016C898())
  {
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08(&qword_1003CBE58);
    }

    v1 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v1, qword_1003F26C8);
    v2 = static os_log_type_t.error.getter();

    v3 = Logger.logObject.getter();

    if (os_log_type_enabled(v3, v2))
    {
      v4 = sub_10008E688();
      v5 = sub_10008E670();
      sub_10016C784(v5, v6, v7, v8, v9, v10, v11, v12, 4.8752e-34, v18, v19, v21, v23);
      sub_10008E604();
      sub_100080210(v20, v22, &v23);

      sub_10016C828();
      *(v4 + 14) = sub_100080210(0xD000000000000028, v13, v14);
      sub_100098B4C(&_mh_execute_header, v15, v16, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_100081C28(v5);
      sub_100081C28(v4);
    }

    return 0;
  }

  return v0;
}

uint64_t sub_10016823C()
{
  sub_10008BE9C();
  v2 = v1;
  *(v0 + 73) = v1;
  *(v0 + 48) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1001682D4;

  return sub_1000A10AC(v2);
}

uint64_t sub_1001682D4()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 64) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

id sub_1001683BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = v3;
  v4 = *(v3 + 64);
  if (!v4)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08(&qword_1003CBE58);
    }

    v16 = *(v3 + 73);
    v17 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v17, qword_1003F26C8);
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    *(v3 + 16) = 0;
    *(v3 + 24) = 0xE000000000000000;
    v18._countAndFlagsBits = 0x756F636361206F4ELL;
    v18._object = 0xEF20726F6620746ELL;
    String.append(_:)(v18);
    *(v3 + 72) = v16;
    _print_unlocked<A, B>(_:_:)();
    v20 = *(v3 + 16);
    v19 = *(v3 + 24);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC(&qword_1003CBE98);
    }

    TaskLocal.get()();
    v22 = *(v3 + 32);
    v21 = *(v3 + 40);
    v23 = static os_log_type_t.default.getter();

    v24 = Logger.logObject.getter();

    if (os_log_type_enabled(v24, v23))
    {
      v25 = sub_10008E688();
      v26 = sub_10008E670();
      *v25 = 136446466;
      v36 = v26;
      v37 = 91;
      v38 = 0xE100000000000000;
      v27._countAndFlagsBits = v22;
      v27._object = v21;
      String.append(_:)(v27);
      sub_10008E604();
      v28 = sub_100080210(91, 0xE100000000000000, &v36);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2082;
      v29 = sub_100080210(v20, v19, &v36);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s%{public}s", v25, 0x16u);
      swift_arrayDestroy();
      sub_100081C28(v26);
      sub_100081C28(v25);
    }

    else
    {
    }

    v7 = 0;
    v9 = 0;
    v13 = 0;
    v15 = 0;
    v31 = 0;
    v32 = 0;
LABEL_16:
    v33 = *(v3 + 48);
    *v33 = v7;
    v33[1] = v9;
    v33[2] = v13;
    v33[3] = v15;
    v33[4] = v31;
    v33[5] = v32;
    sub_100098AC4();
    sub_10008E654();

    __asm { BRAA            X1, X16 }
  }

  result = [*(v3 + 64) identifier];
  if (result)
  {
    v6 = result;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    v10 = [v4 ams_DSID];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 stringValue];

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v15 = 0xE400000000000000;
      v13 = 1701736270;
    }

    result = sub_1000AF0A4(v4);
    if (v30)
    {
      v31 = result;
      v32 = v30;

      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10016871C()
{
  if (sub_10016C898())
  {
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08(&qword_1003CBE58);
    }

    v1 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v1, qword_1003F26C8);
    v2 = static os_log_type_t.error.getter();

    v3 = Logger.logObject.getter();

    if (os_log_type_enabled(v3, v2))
    {
      v4 = sub_10008E688();
      v5 = sub_10008E670();
      sub_10016C784(v5, v6, v7, v8, v9, v10, v11, v12, 4.8752e-34, v18, v19, v21, v23);
      sub_10008E604();
      sub_100080210(v20, v22, &v23);

      sub_10016C828();
      *(v4 + 14) = sub_100080210(0xD00000000000002FLL, v13, v14);
      sub_100098B4C(&_mh_execute_header, v15, v16, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_100081C28(v5);
      sub_100081C28(v4);
    }

    return 0;
  }

  return v0;
}

uint64_t sub_100168888()
{
  sub_10008BE9C();
  *(v0 + 88) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  v4 = type metadata accessor for URL();
  *(v0 + 32) = v4;
  *(v0 + 40) = *(v4 - 8);
  *(v0 + 48) = swift_task_alloc();
  v5 = sub_10009F0B8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100168940()
{
  sub_100098BB4();
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(v2 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v4 = *(v2 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);
  (*(v0[5] + 16))(v1, v2 + OBJC_IVAR____TtC9storekitd6Client_callerBundleURL, v0[4]);

  v5 = sub_1001A8808();
  v6 = objc_allocWithZone(type metadata accessor for DialogContext(0));
  v0[7] = sub_10019E3E0(v3, v4, v1, v5, 0);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_100168A7C;

  return sub_1000A90B4();
}

uint64_t sub_100168A7C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;
  *(v2 + 80) = v0;

  sub_100098AD0();

  return _swift_task_switch(v5, v6, v7);
}

id sub_100168B7C()
{
  result = [*(v0 + 72) identifier];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 72);
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    v6 = [v3 ams_DSID];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 stringValue];

      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE400000000000000;
      v9 = 1701736270;
    }

    result = sub_1000AF0A4(*(v0 + 72));
    if (v12)
    {
      v13 = result;
      v14 = v12;
      v15 = *(v0 + 72);
      v16 = *(v0 + 16);

      *v16 = v19;
      v16[1] = v5;
      v16[2] = v9;
      v16[3] = v11;
      v16[4] = v13;
      v16[5] = v14;
      sub_100098AC4();
      sub_1001240F8();

      __asm { BRAA            X1, X16 }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100168CC4()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

void sub_100168D28(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000ED6A0;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = &unk_1002F5240;
  v10[4] = 0;
  v10[5] = sub_10016C648;
  v10[6] = v9;
  v11 = swift_allocObject();
  swift_retain_n();
  _Block_copy(a4);
  v12 = a3;

  v13 = sub_1000EAB7C(a1, a2);
  v15 = v14;
  *(v11 + 16) = v13;
  *(v11 + 24) = v14;
  *(v11 + 32) = v16;
  if (qword_1003CBE98 != -1)
  {
    swift_once();
    v13 = *(v11 + 16);
    v15 = *(v11 + 24);
  }

  v17 = qword_1003F2700;

  sub_100166408(v13, v15, 0xD000000000000029, 0x80000001003173B0, 150, v17, 0xD000000000000011, 0x800000010031A180, v11, &unk_1002F52E8, v10);

  _Block_release(a4);
}

uint64_t StoreKitServiceConnection.account(_:reply:)()
{
  sub_1000EDCC8();
  sub_1000B7E4C();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v0;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = &unk_1002F5240;
  v6[4] = 0;
  v6[5] = sub_10016922C;
  v6[6] = v5;
  sub_10016C840();
  v7 = swift_allocObject();
  swift_retain_n();
  v8 = v1;

  v9 = sub_1000EAB7C(v2, v4);
  sub_10016C920(v9, v10, v11);
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC(&qword_1003CBE98);
  }

  v12 = sub_10016C764();
  sub_100166408(v12, v13, v14, v15, v16, v17, 0xD000000000000011, v18, v7, &unk_1002F5250, v6);

  sub_10016C7F4();
}

uint64_t sub_1001691F8()
{

  sub_1000B7E4C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100169234(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_1001692D4;

  return sub_10016823C();
}

uint64_t sub_1001692D4()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

void sub_1001693D0(uint64_t a1, uint64_t a2, void *a3, void (**a4)(void, void, void))
{
  v62 = a3;
  v5 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  __chkstk_darwin(v5 - 8);
  v63 = &v62 - v6;
  v7 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  __chkstk_darwin(v7 - 8);
  v64 = &v62 - v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000ED6A0;
  *(v10 + 24) = v9;
  v65 = v10;
  swift_retain_n();
  v67 = a4;
  _Block_copy(a4);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v11, qword_1003F26C8);
  sub_1001CA63C();
  v13 = v12;
  v15 = v14;

  v16 = static os_log_type_t.default.getter();

  v17 = Logger.logObject.getter();

  v18 = os_log_type_enabled(v17, v16);
  v66 = v15;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 136446466;
    v68 = v20;
    v69 = 91;
    v70 = 0xE100000000000000;
    v21._countAndFlagsBits = v13;
    v21._object = v15;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 8285;
    v22._object = 0xE200000000000000;
    String.append(_:)(v22);
    v23 = v13;
    v24 = sub_100080210(v69, v70, &v68);

    *(v19 + 4) = v24;
    v13 = v23;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_100080210(0xD000000000000015, 0x800000010031A1A0, &v68);
    _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s%{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  v25 = [objc_opt_self() currentConnection];
  if (!v25)
  {
    v30 = v13;
    v31 = v66;

    v69 = 0;
    v70 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v69 = 0xD00000000000001CLL;
    v70 = 0x80000001003174A0;
    v32._countAndFlagsBits = 0xD000000000000015;
    v32._object = 0x800000010031A1A0;
    String.append(_:)(v32);
    v34 = v69;
    v33 = v70;
    v35 = static os_log_type_t.error.getter();

    v36 = Logger.logObject.getter();

    if (os_log_type_enabled(v36, v35))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 136446466;
      v68 = v38;
      v69 = 91;
      v70 = 0xE100000000000000;
      v39._countAndFlagsBits = v30;
      v39._object = v31;
      String.append(_:)(v39);
      v40._countAndFlagsBits = 8285;
      v40._object = 0xE200000000000000;
      String.append(_:)(v40);
      v41 = sub_100080210(v69, v70, &v68);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      v42 = sub_100080210(v34, v33, &v68);

      *(v37 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v36, v35, "%{public}s%{public}s", v37, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v43 = 1;
    v44 = _convertErrorToNSError(_:)();
    v45 = v67;
    (v67)[2](v67, 0, v44);

    goto LABEL_15;
  }

  v26 = v25;
  type metadata accessor for Client(0);
  v27 = type metadata accessor for ClientOverride(0);
  sub_100081DFC(v64, 1, 1, v27);
  v28 = v26;
  sub_1001ABF2C();
  v29 = v66;
  v47 = v46;

  v69 = 0xD000000000000015;
  v70 = 0x800000010031A1A0;
  v48._countAndFlagsBits = 95;
  v48._object = 0xE100000000000000;
  String.append(_:)(v48);
  v49._countAndFlagsBits = v13;
  v49._object = v29;
  String.append(_:)(v49);
  v51 = v69;
  v50 = v70;
  v52 = [objc_opt_self() globalStore];
  if (v52)
  {
    v53 = v52;
    v54 = String._bridgeToObjectiveC()();
    [v53 takeKeepAliveTransaction:v54];

    if (qword_1003CBE98 != -1)
    {
      swift_once();
    }

    v69 = v13;
    v70 = v29;

    v55 = v62;
    v56 = v47;
    v57 = v65;

    swift_task_localValuePush();
    v58 = type metadata accessor for TaskPriority();
    sub_100081DFC(v63, 1, 1, v58);
    v59 = swift_allocObject();
    v59[2] = 0;
    v59[3] = 0;
    v59[4] = v55;
    v59[5] = &unk_1002F5258;
    v59[6] = 0;
    v59[7] = v56;
    v59[8] = sub_10016C648;
    v59[9] = v57;
    v59[10] = v51;
    v59[11] = v50;
    v60 = v55;
    v61 = v56;

    sub_100165CBC();
    swift_task_localValuePop();

    swift_bridgeObjectRelease_n();

    v45 = v67;
LABEL_15:
    _Block_release(v45);
    return;
  }

  _Block_release(v67);
  __break(1u);
}

void StoreKitServiceConnection.accountType(_:reply:)()
{
  sub_100093D08();
  v61 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v5);
  sub_100089118();
  __chkstk_darwin(v6);
  v8 = &v61 - v7;
  v9 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  sub_1000B01B0(v9);
  sub_100089118();
  __chkstk_darwin(v10);
  v62 = &v61 - v11;
  v66 = 0x800000010031A1A0;
  sub_1000B7E4C();
  v12 = swift_allocObject();
  v63 = v4;
  *(v12 + 16) = v4;
  *(v12 + 24) = v2;
  v65 = v12;
  v13 = qword_1003CBE58;
  swift_retain_n();
  if (v13 != -1)
  {
    sub_100081C08(&qword_1003CBE58);
  }

  v14 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v14, qword_1003F26C8);
  sub_1001CA63C();
  v16 = v15;
  v18 = v17;

  v19 = static os_log_type_t.default.getter();

  v20 = Logger.logObject.getter();

  v21 = os_log_type_enabled(v20, v19);
  v64 = v16;
  if (v21)
  {
    v22 = sub_10008E688();
    v23 = sub_10008E670();
    *v22 = 136446466;
    sub_10016C84C(v23);
    v24._countAndFlagsBits = v16;
    v24._object = v18;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 8285;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    v26 = v8;
    v27 = sub_100080210(v68, v69, &v67);

    *(v22 + 4) = v27;
    v8 = v26;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_100080210(0xD000000000000015, v66, &v67);
    _os_log_impl(&_mh_execute_header, v20, v19, "%{public}s%{public}s", v22, 0x16u);
    swift_arrayDestroy();
    sub_100081C28(v23);
    sub_100081C28(v22);
  }

  v28 = [objc_opt_self() currentConnection];
  if (!v28)
  {

    v68 = 0;
    v69 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v68 = 0xD00000000000001CLL;
    v69 = 0x80000001003174A0;
    v32._countAndFlagsBits = 0xD000000000000015;
    v32._object = v66;
    String.append(_:)(v32);
    v34 = v68;
    v33 = v69;
    v35 = static os_log_type_t.error.getter();

    v36 = Logger.logObject.getter();

    if (os_log_type_enabled(v36, v35))
    {
      v37 = sub_10008E688();
      v38 = sub_10008E670();
      *v37 = 136446466;
      sub_10016C84C(v38);
      v39._countAndFlagsBits = v64;
      v39._object = v18;
      String.append(_:)(v39);
      v40._countAndFlagsBits = 8285;
      v40._object = 0xE200000000000000;
      String.append(_:)(v40);
      v41 = sub_100080210(v68, v69, &v67);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      v42 = sub_100080210(v34, v33, &v67);

      *(v37 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v36, v35, "%{public}s%{public}s", v37, 0x16u);
      swift_arrayDestroy();
      sub_100081C28(v38);
      sub_100081C28(v37);
    }

    else
    {
    }

    sub_10008B5E0();
    v43 = swift_allocError();
    *v44 = 1;
    v63(0, 0xF000000000000000, v43);

    goto LABEL_15;
  }

  v29 = v28;
  type metadata accessor for Client(0);
  v30 = type metadata accessor for ClientOverride(0);
  sub_100081DFC(v62, 1, 1, v30);
  v31 = v29;
  sub_1001ABF2C();
  v46 = v45;

  v68 = 0xD000000000000015;
  v69 = v66;
  v47._countAndFlagsBits = 95;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);
  v48._countAndFlagsBits = v64;
  v48._object = v18;
  String.append(_:)(v48);
  v50 = v68;
  v49 = v69;
  v51 = [objc_opt_self() globalStore];
  if (v51)
  {
    v52 = v51;
    v53 = String._bridgeToObjectiveC()();
    [v52 takeKeepAliveTransaction:v53];

    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC(&qword_1003CBE98);
    }

    v68 = v64;
    v69 = v18;

    v54 = v61;
    v55 = v46;
    v56 = v65;

    swift_task_localValuePush();
    v57 = type metadata accessor for TaskPriority();
    sub_100081DFC(v8, 1, 1, v57);
    v58 = swift_allocObject();
    v58[2] = 0;
    v58[3] = 0;
    v58[4] = v54;
    v58[5] = &unk_1002F5258;
    v58[6] = 0;
    v58[7] = v55;
    v58[8] = sub_10016C648;
    v58[9] = v56;
    v58[10] = v50;
    v58[11] = v49;
    v59 = v54;
    v60 = v55;

    sub_100165CBC();
    swift_task_localValuePop();

    swift_bridgeObjectRelease_n();

LABEL_15:
    sub_100093CB8();
    return;
  }

  __break(1u);
}

uint64_t sub_10016A28C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10016A324;

  return sub_1000A8544();
}

uint64_t sub_10016A324()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

void sub_10016A434(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000EBF9C;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = &unk_1002F5270;
  v10[4] = 0;
  v10[5] = sub_10016C648;
  v10[6] = v9;
  v11 = swift_allocObject();
  swift_retain_n();
  _Block_copy(a4);
  v12 = a3;

  v13 = sub_1000EABB0(a1, a2);
  v15 = v14;
  *(v11 + 16) = v13;
  *(v11 + 24) = v14;
  *(v11 + 32) = v16;
  if (qword_1003CBE98 != -1)
  {
    swift_once();
    v13 = *(v11 + 16);
    v15 = *(v11 + 24);
  }

  v17 = qword_1003F2700;

  sub_10016726C(v13, v15, 0xD000000000000029, 0x80000001003173B0, 150, v17, 0xD000000000000016, 0x800000010031A1C0, v11, &unk_1002F52D8, v10);

  _Block_release(a4);
}

uint64_t StoreKitServiceConnection.authenticate(_:reply:)()
{
  sub_1000EDCC8();
  sub_1000B7E4C();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v0;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = &unk_1002F5270;
  v6[4] = 0;
  v6[5] = sub_10016C648;
  v6[6] = v5;
  sub_10016C840();
  v7 = swift_allocObject();
  swift_retain_n();
  v8 = v1;

  v9 = sub_1000EABB0(v2, v4);
  sub_10016C920(v9, v10, v11);
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC(&qword_1003CBE98);
  }

  v12 = sub_10016C764();
  sub_10016726C(v12, v13, v14, v15, v16, v17, 0xD000000000000016, v18, v7, &unk_1002F5280, v6);

  sub_10016C7F4();
}

uint64_t sub_10016A904(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_10016A9AC;

  return sub_100168888();
}

uint64_t sub_10016A9AC()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = *v1;
  sub_100098AB4();
  *v3 = v2;

  if (v0)
  {
    sub_100098AC4();

    return v4();
  }

  else
  {
    sub_100098AD0();

    return _swift_task_switch(v6, v7, v8);
  }
}

uint64_t sub_10016AAC4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);
  v1[1] = *(v0 + 32);
  v1[2] = v3;
  *v1 = v2;
  return sub_1000AFCE0();
}

void sub_10016AAF4(void *a1, int a2, void *a3, void *aBlock, void (*a5)(uint64_t, unint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = a3;
  v13 = a1;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  _Block_copy(v8);
  a5(v10, v12, v13, v8);
  _Block_release(v8);
  sub_10008E168(v10, v12);
}

uint64_t sub_10016ABAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v11;
  *(v8 + 88) = v10;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 48) = a4;
  return _swift_task_switch(sub_10016ABE8, 0, 0);
}

uint64_t sub_10016ABE8()
{
  sub_10008BE9C();
  v1 = *(v0 + 72);

  v2 = v1;
  swift_task_alloc();
  sub_1000F2F10();
  *(v0 + 112) = v3;
  *v3 = v4;
  v3[1] = sub_10016AC8C;

  return sub_1001E4D0C();
}

uint64_t sub_10016AC8C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

id sub_10016AD84()
{
  sub_100098BB4();
  v9 = v0;
  v1 = v0[10];
  v2 = v0[3];
  v7 = v0[2];
  v8 = v2;
  sub_1000BC808(v7, v2);
  v1(&v7, 0);
  sub_1000BC8B4(v7, v8);
  sub_10008E168(v0[2], v0[3]);
  result = [objc_opt_self() globalStore];
  if (result)
  {
    v4 = result;
    v5 = String._bridgeToObjectiveC()();
    [v4 releaseKeepAliveTransaction:v5];

    sub_100098AC4();

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10016AE60()
{
  sub_10008BE9C();
  *(v0 + 32) = xmmword_1002F0420;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_10016AF04;

  return sub_1001E521C();
}

uint64_t sub_10016AF04()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 136) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

id sub_10016AFEC()
{
  sub_100098BB4();
  (*(v0 + 80))(v0 + 32, *(v0 + 136));

  sub_1000BC8B4(*(v0 + 32), *(v0 + 40));
  result = [objc_opt_self() globalStore];
  if (result)
  {
    v2 = result;
    v3 = String._bridgeToObjectiveC()();
    [v2 releaseKeepAliveTransaction:v3];

    sub_100098AC4();

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10016B0CC()
{
  sub_100098BB4();
  v1 = v0;
  sub_10016C718();
  v7 = v2;
  v3 = swift_task_alloc();
  v4 = sub_1000AFE54(v3);
  *v4 = v5;
  v4[1] = sub_10016C6A4;

  return v7(v1);
}

uint64_t sub_10016B18C()
{
  sub_10008BE9C();
  *(v0 + 16) = v1;
  sub_10016C718();
  v6 = v2;
  swift_task_alloc();
  sub_1000F2F10();
  *(v0 + 24) = v3;
  *v3 = v4;
  v3[1] = sub_10016B24C;

  return v6(v0 + 32);
}

uint64_t sub_10016B24C()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = v1;
  sub_1000AFE64();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  sub_100098AB4();
  *v7 = v6;

  *v5 = *(v2 + 32);
  sub_100098AC4();

  return v8();
}

uint64_t sub_10016B344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 104) = a6;
  *(v7 + 112) = a7;
  *(v7 + 88) = a4;
  *(v7 + 96) = a5;
  *(v7 + 72) = a1;
  *(v7 + 80) = a3;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  *(v7 + 16) = *a2;
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  return _swift_task_switch(sub_10016B37C, 0, 0);
}

uint64_t sub_10016B37C()
{
  sub_100098BB4();
  v1 = swift_task_alloc();
  sub_10016C864(v1);
  swift_task_alloc();
  sub_1000F2F10();
  *(v0 + 128) = v2;
  *v2 = v3;
  v2[1] = sub_10016B434;
  sub_10016C90C();

  return sub_1000E8400();
}

uint64_t sub_10016B434()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10016B534()
{
  sub_100098BB4();
  v7 = v0;
  v1 = v0[13];
  v2 = v0[6];
  v5 = v0[5];
  v6 = v2;
  sub_1000BC808(v5, v2);
  v1(&v5, 0);
  sub_1000BC8B4(v5, v6);
  sub_10008E168(v0[5], v0[6]);
  sub_100098AC4();

  return v3();
}

uint64_t sub_10016B5BC()
{
  sub_10008BE9C();

  *(v0 + 56) = xmmword_1002F0420;
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  sub_10016C810(v1);

  return sub_1001E521C();
}

uint64_t sub_10016B654()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10016B73C()
{
  sub_100098BB4();
  (*(v0 + 104))(v0 + 56, *(v0 + 152));

  sub_1000BC8B4(*(v0 + 56), *(v0 + 64));
  sub_100098AC4();

  return v1();
}

uint64_t sub_10016B7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10013BDE0();
  sub_1000B02BC();
  sub_1000ED800();
  v10 = swift_task_alloc();
  v11 = sub_1000B00E0(v10);
  *v11 = v12;
  sub_10016C6AC(v11);
  sub_10013BDF8();

  return v20(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_10016B860()
{
  sub_10016C704();
  sub_10016C8F8();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_10016C6DC();
  sub_10008E654();

  return sub_10016ABAC(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10016B914(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a1;
  v7 = *(a5 + 8);
  v8 = *(a5 + 16);
  *(v5 + 64) = *a5;
  *(v5 + 72) = v7;
  *(v5 + 80) = v8;
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  *(v5 + 96) = v9;
  *v9 = v5;
  v9[1] = sub_10016BA38;

  return v11(v5 + 16, a4, v5 + 64);
}

uint64_t sub_10016BA38()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 104) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10016BB30()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  v1[2] = v3;
  return sub_1000AFCE0();
}

uint64_t sub_10016BB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 104) = a6;
  *(v7 + 112) = a7;
  *(v7 + 88) = a4;
  *(v7 + 96) = a5;
  *(v7 + 72) = a1;
  *(v7 + 80) = a3;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  *(v7 + 16) = *a2;
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  return _swift_task_switch(sub_10016BB80, 0, 0);
}

uint64_t sub_10016BB80()
{
  sub_100098BB4();
  v1 = swift_task_alloc();
  sub_10016C864(v1);
  swift_task_alloc();
  sub_1000F2F10();
  *(v0 + 128) = v2;
  *v2 = v3;
  v2[1] = sub_10016BC38;
  sub_10016C90C();

  return sub_1000E8820();
}

uint64_t sub_10016BC38()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10016BD38()
{
  sub_10008BE9C();

  *(v0 + 56) = xmmword_1002F0420;
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  sub_10016C810(v1);

  return sub_1001E521C();
}

uint64_t sub_10016BDD0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10016BEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10013BDE0();
  sub_1000B02BC();
  sub_1000ED800();
  v10 = swift_task_alloc();
  v11 = sub_1000B00E0(v10);
  *v11 = v12;
  sub_10016C6AC(v11);
  sub_10013BDF8();

  return v20(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_10016BF48()
{

  sub_10016C840();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10016BF7C()
{
  sub_100098BB4();
  sub_1000B7F24();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v3 = sub_1000B7CE4(v1);

  return v4(v3);
}

uint64_t sub_10016C00C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10016C044()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10016C0A4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10016C0EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100080FB4(a3, a4);
  sub_10012ADC8();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10016C150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10016C704();
  v9 = swift_task_alloc();
  v10 = sub_1000AFE54(v9);
  *v10 = v11;
  v10[1] = sub_1000AFC98;
  sub_10016C6DC();
  sub_1001240F8();

  return sub_1001E6BD4(v12, v13, v14, v15, v16, v17, v18, v19, a9);
}

uint64_t sub_10016C1FC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a1;
  v7 = *(a5 + 8);
  v8 = *(a5 + 16);
  *(v5 + 64) = *a5;
  *(v5 + 72) = v7;
  *(v5 + 80) = v8;
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  *(v5 + 96) = v9;
  *v9 = v5;
  v9[1] = sub_10016C320;

  return v11(v5 + 16, a4, v5 + 64);
}

uint64_t sub_10016C320()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 104) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10016C418()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return sub_1000AFCE0();
}

uint64_t sub_10016C430()
{
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  v3 = sub_1000AFD08();

  return v4(v3);
}

uint64_t sub_10016C4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10016C704();
  v9 = swift_task_alloc();
  v10 = sub_1000AFE54(v9);
  *v10 = v11;
  v10[1] = sub_1000A7644;
  sub_10016C6DC();
  sub_1001240F8();

  return sub_1001E692C(v12, v13, v14, v15, v16, v17, v18, v19, a9);
}

uint64_t sub_10016C594()
{
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000A7644;
  v3 = sub_1000AFD08();

  return v4(v3);
}

void sub_10016C784(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *v15 = a9;
  v17 = v14;
  v18 = v13;

  String.append(_:)(*&v17);
}

void sub_10016C7B4(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;
}

void sub_10016C7C4()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

void sub_10016C7D4()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

uint64_t sub_10016C84C(uint64_t result)
{
  *(v1 - 104) = result;
  *(v1 - 96) = 91;
  *(v1 - 88) = 0xE100000000000000;
  return result;
}

__n128 sub_10016C864(__n128 *a1)
{
  *(v3 + 120) = a1;
  result = *(v3 + 88);
  a1[1] = result;
  a1[2].n128_u64[0] = v2;
  a1[2].n128_u64[1] = v1;
  return result;
}

uint64_t sub_10016C87C()
{

  return swift_unknownObjectRelease();
}

BOOL sub_10016C898()
{

  return sub_1001B56A0(0);
}

uint64_t sub_10016C8BC(uint64_t a1)
{
  sub_100081D0C(v1, 1, a1);
}

uint64_t sub_10016C920(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

uint64_t sub_10016C940()
{

  return swift_task_create();
}

uint64_t sub_10016C960(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

Swift::Int sub_10016CA08()
{
  Hasher.init(_seed:)();
  sub_100083F10();
  return Hasher._finalize()();
}

uint64_t sub_10016CA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10016C960(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10016CAA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100082638();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10016CAD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_10016CB28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_10016CB7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a3;
  type metadata accessor for SwiftXPCCoding.TopLevelContainer.CodingKeys(255, *(a2 + 16), a3, a4);
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_100086D24(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10016CCE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v28 = *(a2 - 8);
  v29 = a3;
  __chkstk_darwin(a1);
  v30 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SwiftXPCCoding.TopLevelContainer.CodingKeys(255, v7, v8, v9);
  swift_getWitnessTable();
  v10 = type metadata accessor for KeyedDecodingContainer();
  v26 = *(v10 - 8);
  v27 = v10;
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v15 = type metadata accessor for SwiftXPCCoding.TopLevelContainer(0, a2, v13, v14);
  v24 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v23 - v16;
  sub_100086D24(a1, a1[3]);
  v18 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v31 = v15;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v19 + 8))(v12, v20);
    (*(v21 + 32))(v17, v30, a2);
    (*(v24 + 32))(v25, v17, v31);
  }

  return sub_100080F0C(a1);
}

_BYTE *sub_10016D020(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10016D0BCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10016D0EC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10016D15C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_100081D0C(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_100081D0C(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_10016D2A8(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x10016D4ACLL);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        sub_100081DFC(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_10016D53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 28);

    return sub_100081D0C(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10016D610(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 28);

    return sub_100081DFC(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ExternalGatewayRequest(uint64_t a1)
{
  result = qword_1003CFDF8;
  if (!qword_1003CFDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10016D718(uint64_t a1)
{
  sub_10016D86C(319, &qword_1003CFE08, &type metadata for ExternalGatewayTokenType);
  if (v1 <= 0x3F)
  {
    sub_100081F84(319);
    if (v2 <= 0x3F)
    {
      sub_10016D808(319);
      if (v3 <= 0x3F)
      {
        sub_10016D86C(319, &qword_1003CD3C0, &type metadata for String);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10016D808(uint64_t a1)
{
  if (!qword_1003CFE10)
  {
    sub_1000852D4(&qword_1003CC200, &unk_1002EAA50);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1003CFE10);
    }
  }
}

void sub_10016D86C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_10016D8B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10016D8D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10016D924(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExternalGatewayMode(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10016DA5CLL);
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

unint64_t sub_10016DA98()
{
  result = qword_1003CFE58;
  if (!qword_1003CFE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFE58);
  }

  return result;
}

unint64_t sub_10016DAEC(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10016DB98(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_10016DBA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7070416E69 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74754F6B6E696CLL && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
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

uint64_t sub_10016DCB0(char a1)
{
  if (!a1)
  {
    return 0x7070416E69;
  }

  if (a1 == 1)
  {
    return 0x74754F6B6E696CLL;
  }

  return 0x6D6F74737563;
}

uint64_t sub_10016DD00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 != a3 || a2 != a4)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 1;
}

uint64_t sub_10016DD4C(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v33 = a2;
  v34 = sub_100080FB4(&qword_1003CFEF0, &qword_1002F5868);
  sub_1000890DC();
  v32 = v4;
  sub_100089118();
  __chkstk_darwin(v5);
  v31 = &v27 - v6;
  sub_100080FB4(&qword_1003CFEF8, &qword_1002F5870);
  sub_1000890DC();
  v29 = v8;
  v30 = v7;
  sub_100089118();
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = sub_100080FB4(&qword_1003CFF00, &qword_1002F5878);
  sub_1000890DC();
  v28 = v13;
  sub_100089118();
  __chkstk_darwin(v14);
  v16 = &v27 - v15;
  v17 = sub_100080FB4(&qword_1003CFF08, &qword_1002F5880);
  sub_1000890DC();
  v19 = v18;
  sub_100089118();
  __chkstk_darwin(v20);
  v22 = &v27 - v21;
  sub_100086D24(a1, a1[3]);
  sub_10016FD54();
  v23 = v35;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v23)
  {
    v36 = 0;
    sub_10016FE50();
    sub_100089184(&type metadata for ExternalGatewayTokenType.InAppCodingKeys);
    (*(v28 + 8))(v16, v12);
    return (*(v19 + 8))(v22, v17);
  }

  if (v23 == 1)
  {
    v37 = 1;
    sub_10016FDFC();
    sub_100089184(&type metadata for ExternalGatewayTokenType.LinkOutCodingKeys);
    (*(v29 + 8))(v11, v30);
    return (*(v19 + 8))(v22, v17);
  }

  v38 = 2;
  sub_10016FDA8();
  v25 = v31;
  sub_100089184(&type metadata for ExternalGatewayTokenType.CustomCodingKeys);
  v26 = v34;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v32 + 8))(v25, v26);
  return (*(v19 + 8))(v22, v17);
}

void sub_10016E0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = 1;
LABEL_5:
    Hasher._combine(_:)(v3);
    return;
  }

  Hasher._combine(_:)(2uLL);

  String.hash(into:)();
}

Swift::Int sub_10016E130(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    if (a2 != 1)
    {
      Hasher._combine(_:)(2uLL);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void *sub_10016E1B4(void *a1)
{
  v58 = sub_100080FB4(&qword_1003CFEB0, &qword_1002F5840);
  sub_1000890DC();
  v61 = v3;
  sub_100089118();
  __chkstk_darwin(v4);
  v63 = &v55 - v5;
  sub_100080FB4(&qword_1003CFEB8, &qword_1002F5848);
  sub_1000890DC();
  v59 = v7;
  v60 = v6;
  sub_100089118();
  __chkstk_darwin(v8);
  v10 = &v55 - v9;
  v11 = sub_100080FB4(&qword_1003CFEC0, &qword_1002F5850);
  sub_1000890DC();
  v57 = v12;
  sub_100089118();
  __chkstk_darwin(v13);
  v15 = &v55 - v14;
  v16 = sub_100080FB4(&qword_1003CFEC8, &unk_1002F5858);
  sub_1000890DC();
  v62 = v17;
  sub_100089118();
  __chkstk_darwin(v18);
  sub_100089350();
  v19 = sub_100086D24(a1, a1[3]);
  sub_10016FD54();
  v20 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    goto LABEL_9;
  }

  v55 = v11;
  v56 = v15;
  v64 = a1;
  v21 = v1;
  v22 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100162698(v22, 0);
  if (v25 == v26 >> 1)
  {
LABEL_8:
    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    sub_100080FB4(&qword_1003CC798, &qword_1002EBEF0);
    *v39 = &type metadata for ExternalGatewayTokenType;
    v19 = v21;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v37 - 8) + 104))(v39, enum case for DecodingError.typeMismatch(_:), v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v40 = sub_10017066C();
    v41(v40);
    a1 = v64;
LABEL_9:
    sub_100080F0C(a1);
    return v19;
  }

  if (v25 < (v26 >> 1))
  {
    v27 = *(v24 + v25);
    sub_100162694(v25 + 1);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    if (v29 == v31 >> 1)
    {
      if (v27)
      {
        if (v27 == 1)
        {
          v66 = 1;
          v32 = sub_10016FDFC();
          sub_100170700(&type metadata for ExternalGatewayTokenType.LinkOutCodingKeys, &v66, v33, v34, v32);
          swift_unknownObjectRelease();
          (*(v59 + 8))(v10, v60);
          v35 = sub_10017066C();
          v36(v35);
          v19 = 0;
        }

        else
        {
          v67 = 2;
          v46 = sub_10016FDA8();
          sub_100170700(&type metadata for ExternalGatewayTokenType.CustomCodingKeys, &v67, v47, v48, v46);
          v51 = KeyedDecodingContainer.decode(_:forKey:)();
          v52 = v62;
          v19 = v51;
          swift_unknownObjectRelease();
          v53 = sub_100170784();
          v54(v53);
          (*(v52 + 8))(v1, v16);
        }
      }

      else
      {
        v65 = 0;
        v42 = sub_10016FE50();
        v43 = v56;
        sub_100170700(&type metadata for ExternalGatewayTokenType.InAppCodingKeys, &v65, v44, v45, v42);
        swift_unknownObjectRelease();
        (*(v57 + 8))(v43, v55);
        v49 = sub_10017066C();
        v50(v49);
        v19 = 0;
      }

      sub_100080F0C(v64);
      return v19;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t sub_10016E790@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10016DB98(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10016E870()
{
  result = qword_1003CFE60;
  if (!qword_1003CFE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFE60);
  }

  return result;
}

uint64_t sub_10016E8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10016DBA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10016E8F4(uint64_t a1)
{
  v2 = sub_10016FD54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016E930(uint64_t a1)
{
  v2 = sub_10016FD54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016E96C(uint64_t a1)
{
  v2 = sub_10016FDA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016E9A8(uint64_t a1)
{
  v2 = sub_10016FDA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016E9E4(uint64_t a1)
{
  v2 = sub_10016FE50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016EA20(uint64_t a1)
{
  v2 = sub_10016FE50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016EA5C(uint64_t a1)
{
  v2 = sub_10016FDFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016EA98(uint64_t a1)
{
  v2 = sub_10016FDFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10016EAD4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10016E1B4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

Swift::Int sub_10016EB40()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      Hasher._combine(_:)(2uLL);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10016EBBC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v62 = a2;
  v63 = type metadata accessor for DecodingError.Context();
  sub_1000890DC();
  v61 = v5;
  __chkstk_darwin(v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  sub_100089118();
  __chkstk_darwin(v9);
  sub_100089350();
  v10 = sub_100080FB4(&qword_1003CFE78, &unk_1002F5828);
  sub_1000890DC();
  v64 = v11;
  sub_100089118();
  __chkstk_darwin(v12);
  v14 = &v55 - v13;
  v67 = type metadata accessor for ExternalGatewayRequest(0);
  __chkstk_darwin(v67);
  v65 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  sub_100086D24(a1, a1[3]);
  v16 = sub_10016FAE8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = v67;
    v23 = v65;
  }

  else
  {
    v59 = v8;
    v60 = v3;
    v17 = v63;
    LOBYTE(v68) = 0;
    sub_10016FB60();
    sub_100170680();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = v65;
    *(v65 + 8) = *v69;
    LOBYTE(v68) = 1;
    sub_10016FBB4();
    sub_100170680();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v67;
    *v23 = v69[0];
    sub_1001706AC(2);
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = (v23 + v24[10]);
    *v26 = v25;
    v26[1] = v27;
    sub_1001706AC(4);
    *(v23 + 24) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_1001706AC(5);
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = (v23 + v24[9]);
    *v29 = v28;
    v29[1] = v30;
    v58 = v30;
    type metadata accessor for ClientOverride(0);
    LOBYTE(v69[0]) = 6;
    sub_1001706DC();
    sub_10016FD0C(v31, v32, &unk_1002F8A98);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100086E28(v60, v23 + v24[7]);
    LOBYTE(v68) = 3;
    sub_1000BC95C();
    sub_100170680();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v33 = v24[8];
    v60 = v69[1];
    if (v69[1] >> 60 == 15)
    {
      v34 = sub_10017069C();
      v35(v34);
      v36 = 0;
LABEL_17:
      *(v23 + v33) = v36;
      sub_1000F2600(v23, v62);
      sub_100080F0C(v66);
      return sub_10016FC08(v23);
    }

    v56 = v33;
    v37 = v69[0];
    v38 = objc_opt_self();
    v57 = v37;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v69[0] = 0;
    v40 = [v38 JSONObjectWithData:isa options:0 error:v69];

    if (!v40)
    {
      v46 = v69[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1000BC8B4(v57, v60);
      v47 = sub_100170798();
      v48(v47);
      sub_100080F0C(v66);
      LOBYTE(v19) = 1;
      v20 = 1;
      v21 = v67;
LABEL_5:
      sub_10016FB3C(*(v23 + 8), *(v23 + 16));
      if (v19)
      {
        goto LABEL_6;
      }

LABEL_9:

      if (!v20)
      {
        return result;
      }
    }

    v41 = v69[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100080FB4(&qword_1003CC200, &unk_1002EAA50);
    v42 = swift_dynamicCast();
    v43 = v64;
    if (v42)
    {
      v44 = sub_10017069C();
      v45(v44);
      sub_1000BC8B4(v57, v60);
      v36 = v68;
      v33 = v56;
      goto LABEL_17;
    }

    sub_100080FB4(&qword_1003CF320, &qword_1002F2AC0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1002ED290;
    *(v49 + 56) = &type metadata for ExternalGatewayRequest.CodingKeys;
    *(v49 + 64) = v16;
    *(v49 + 32) = 3;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v50 = type metadata accessor for DecodingError();
    swift_allocError();
    v52 = v51;
    v53 = v61;
    v54 = *(v61 + 16);
    v62 = v14;
    v54(v51, v59, v17);
    (*(*(v50 - 8) + 104))(v52, enum case for DecodingError.dataCorrupted(_:), v50);
    swift_willThrow();
    sub_1000BC8B4(v57, v60);
    (*(v53 + 8))(v59, v17);
    (*(v43 + 8))(v62, v10);
    v18 = 1;
    v19 = 1;
    v20 = 1;
    v21 = v67;
  }

  sub_100080F0C(v66);
  if (v18)
  {
    goto LABEL_5;
  }

  if (!v19)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_100086DC0(v23 + *(v21 + 28));

  if ((v20 & 1) == 0)
  {
    return result;
  }
}

uint64_t sub_10016F330(void *a1)
{
  v4 = v1;
  v6 = sub_100080FB4(&qword_1003CFE98, &qword_1002F5838);
  sub_1000890DC();
  v8 = v7;
  sub_100089118();
  __chkstk_darwin(v9);
  sub_100089350();
  sub_100086D24(a1, a1[3]);
  sub_10016FAE8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = *(v4 + 8);
  sub_10016FC64();
  sub_1001706C4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v8 + 8))(v3, v6);
  }

  sub_10016FCB8();
  sub_1001706C4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v10 = type metadata accessor for ExternalGatewayRequest(0);
  sub_1001706F4();
  KeyedEncodingContainer.encode(_:forKey:)();
  sub_1001706F4();
  KeyedEncodingContainer.encode(_:forKey:)();
  sub_1001706F4();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v22) = 6;
  type metadata accessor for ClientOverride(0);
  sub_1001706DC();
  sub_10016FD0C(v11, v12, &unk_1002F8A70);
  sub_1001706F4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!*(v4 + *(v10 + 32)))
  {
    return (*(v8 + 8))(v3, v6);
  }

  v14 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *&v22 = 0;
  v16 = [v14 dataWithJSONObject:isa options:0 error:&v22];

  v17 = v22;
  if (!v16)
  {
    v21 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v8 + 8))(v3, v6);
  }

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *&v22 = v18;
  *(&v22 + 1) = v20;
  sub_1000BC860();
  sub_1001706C4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v8 + 8))(v3, v6);
  return sub_10008E168(v18, v20);
}

uint64_t sub_10016F6A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546E656B6F74 && a2 == 0xE900000000000065;
  if (v4 || (sub_1000DCD4C(0x7079546E656B6F74, 0xE900000000000065) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (sub_1000DCD4C(1684957547, 0xE400000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
      if (v7 || (sub_1000DCD4C(0x79654B676F6CLL, 0xE600000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
        if (v8 || (sub_1000DCD4C(0x736E6F6974706FLL, 0xE700000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = sub_100170764();
          v11 = a1 == v9 && a2 == v10;
          if (v11 || (sub_1000DCD4C(v9, v10) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = sub_100170744();
            v14 = a1 == v12 && a2 == v13;
            if (v14 || (sub_1000DCD4C(v12, v13) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v15 = sub_100170720();
              if (a1 == v15 && a2 == v16)
              {

                return 6;
              }

              else
              {
                v18 = sub_1000DCD4C(v15, v16);

                if (v18)
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
}

uint64_t sub_10016F848(char a1)
{
  result = 0x7079546E656B6F74;
  switch(a1)
  {
    case 1:
      result = 1684957547;
      break;
    case 2:
      result = 0x79654B676F6CLL;
      break;
    case 3:
      result = 0x736E6F6974706FLL;
      break;
    case 4:
      result = sub_100170764();
      break;
    case 5:
      result = sub_100170744();
      break;
    case 6:
      result = sub_100170720();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10016F930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10016F6A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10016F964(uint64_t a1)
{
  v2 = sub_10016FAE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016F9A0(uint64_t a1)
{
  v2 = sub_10016FAE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016FA0C(uint64_t a1)
{
  *(a1 + 8) = sub_10016FD0C(&qword_1003CE268, type metadata accessor for ExternalGatewayRequest, &unk_1002F57A4);
  result = sub_10016FD0C(&qword_1003CFE68, type metadata accessor for ExternalGatewayRequest, &unk_1002F577C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10016FA90(uint64_t a1)
{
  result = sub_10016FD0C(&qword_1003CFE70, type metadata accessor for ExternalGatewayRequest, &unk_1002F57DC);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10016FAE8()
{
  result = qword_1003CFE80;
  if (!qword_1003CFE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFE80);
  }

  return result;
}

uint64_t sub_10016FB3C(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_10016FB4C(a1, a2);
  }

  return a1;
}

uint64_t sub_10016FB4C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_10016FB60()
{
  result = qword_1003CFE88;
  if (!qword_1003CFE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFE88);
  }

  return result;
}

unint64_t sub_10016FBB4()
{
  result = qword_1003CFE90;
  if (!qword_1003CFE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFE90);
  }

  return result;
}

uint64_t sub_10016FC08(uint64_t a1)
{
  v2 = type metadata accessor for ExternalGatewayRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10016FC64()
{
  result = qword_1003CFEA0;
  if (!qword_1003CFEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFEA0);
  }

  return result;
}

unint64_t sub_10016FCB8()
{
  result = qword_1003CFEA8;
  if (!qword_1003CFEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFEA8);
  }

  return result;
}

uint64_t sub_10016FD0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10016FD54()
{
  result = qword_1003CFED0;
  if (!qword_1003CFED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFED0);
  }

  return result;
}

unint64_t sub_10016FDA8()
{
  result = qword_1003CFED8;
  if (!qword_1003CFED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFED8);
  }

  return result;
}

unint64_t sub_10016FDFC()
{
  result = qword_1003CFEE0;
  if (!qword_1003CFEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFEE0);
  }

  return result;
}

unint64_t sub_10016FE50()
{
  result = qword_1003CFEE8;
  if (!qword_1003CFEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFEE8);
  }

  return result;
}

unint64_t sub_10016FEA4()
{
  result = qword_1003CFF10;
  if (!qword_1003CFF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFF10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExternalGatewayTokenType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10016FFC4);
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

_BYTE *storeEnumTagSinglePayload for ExternalGatewayTokenType.CustomCodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1001700B8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExternalGatewayRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001701BCLL);
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

unint64_t sub_1001701F8()
{
  result = qword_1003CFF18;
  if (!qword_1003CFF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFF18);
  }

  return result;
}

unint64_t sub_100170250()
{
  result = qword_1003CFF20;
  if (!qword_1003CFF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFF20);
  }

  return result;
}

unint64_t sub_1001702A8()
{
  result = qword_1003CFF28;
  if (!qword_1003CFF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFF28);
  }

  return result;
}

unint64_t sub_100170300()
{
  result = qword_1003CFF30;
  if (!qword_1003CFF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFF30);
  }

  return result;
}

unint64_t sub_100170358()
{
  result = qword_1003CFF38;
  if (!qword_1003CFF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFF38);
  }

  return result;
}

unint64_t sub_1001703B0()
{
  result = qword_1003CFF40;
  if (!qword_1003CFF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFF40);
  }

  return result;
}

unint64_t sub_100170408()
{
  result = qword_1003CFF48;
  if (!qword_1003CFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFF48);
  }

  return result;
}

unint64_t sub_100170460()
{
  result = qword_1003CFF50;
  if (!qword_1003CFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFF50);
  }

  return result;
}

unint64_t sub_1001704B8()
{
  result = qword_1003CFF58;
  if (!qword_1003CFF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFF58);
  }

  return result;
}

unint64_t sub_100170510()
{
  result = qword_1003CFF60;
  if (!qword_1003CFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFF60);
  }

  return result;
}

unint64_t sub_100170568()
{
  result = qword_1003CFF68;
  if (!qword_1003CFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFF68);
  }

  return result;
}

unint64_t sub_1001705C0()
{
  result = qword_1003CFF70;
  if (!qword_1003CFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFF70);
  }

  return result;
}

unint64_t sub_100170618()
{
  result = qword_1003CFF78;
  if (!qword_1003CFF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CFF78);
  }

  return result;
}

uint64_t sub_100170700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1001707C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
    v9 = a1 + *(a3 + 20);

    return sub_100081D0C(v9, a2, v8);
  }
}

uint64_t sub_100170868(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
    v8 = v5 + *(a4 + 20);

    return sub_100081DFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ProcessPurchaseResultRequest(uint64_t a1)
{
  result = qword_1003CFFD8;
  if (!qword_1003CFFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100170940(uint64_t a1)
{
  sub_100081F84(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1001709CC(uint64_t a1, uint64_t a2)
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
      v7 = a1 == 0xD000000000000015 && 0x800000010031A380 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x800000010031A3A0 == a2)
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

unint64_t sub_100170B38(char a1)
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

uint64_t sub_100170BD4(void *a1)
{
  v3 = v1;
  v5 = sub_100080FB4(&qword_1003D0038, &qword_1002F5E30);
  sub_1000890DC();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v17[-v9];
  sub_100086D24(a1, a1[3]);
  sub_10017133C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  sub_1000892B8();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for ProcessPurchaseResultRequest(0);
    LOBYTE(v18) = 1;
    type metadata accessor for ClientOverride(0);
    sub_100171648();
    sub_1001713F4(v12, v13, &unk_1002F8A70);
    sub_1000892B8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 2;
    sub_1000892B8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = (v3 + *(v11 + 28));
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    v17[15] = 3;
    sub_1000BC808(v18, v15);
    sub_1000BC860();
    sub_1000892B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10008E168(v18, v19);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100170DE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  sub_100080FB4(&qword_1003D0028, &qword_1002F5E28);
  sub_1000890DC();
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
  sub_100081DFC(v12 + v13, 1, 1, v14);
  sub_100086D24(a1, a1[3]);
  sub_10017133C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100080F0C(a1);
    return sub_100086DC0(v12 + v30);
  }

  else
  {
    LOBYTE(v31) = 0;
    sub_100171670();
    *v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v12[1] = v15;
    v25 = v15;
    LOBYTE(v31) = 1;
    sub_100171648();
    sub_1001713F4(v16, v17, &unk_1002F8A98);
    sub_100171670();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v18 = v29;
    sub_1000E0B18(v6, v12 + v30);
    LOBYTE(v31) = 2;
    sub_100171670();
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = (v12 + *(v18 + 24));
    *v20 = v19;
    v20[1] = v21;
    v32 = 3;
    sub_1000BC95C();
    sub_100171670();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = sub_100171660();
    v23(v22);
    *(v12 + *(v18 + 28)) = v31;
    sub_100171390(v12, v26);
    sub_100080F0C(a1);
    return sub_10012A868(v12);
  }
}

uint64_t sub_100171190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001709CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001711B8(uint64_t a1)
{
  v2 = sub_10017133C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001711F4(uint64_t a1)
{
  v2 = sub_10017133C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100171260(uint64_t a1)
{
  *(a1 + 8) = sub_1001713F4(&qword_1003CE2F0, type metadata accessor for ProcessPurchaseResultRequest, &unk_1002F5DA8);
  result = sub_1001713F4(&qword_1003D0018, type metadata accessor for ProcessPurchaseResultRequest, &unk_1002F5D80);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001712E4(uint64_t a1)
{
  result = sub_1001713F4(&qword_1003D0020, type metadata accessor for ProcessPurchaseResultRequest, &unk_1002F5DE0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10017133C()
{
  result = qword_1003D0030;
  if (!qword_1003D0030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0030);
  }

  return result;
}

uint64_t sub_100171390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessPurchaseResultRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001713F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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
        JUMPOUT(0x100171508);
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

unint64_t sub_100171544()
{
  result = qword_1003D0040;
  if (!qword_1003D0040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0040);
  }

  return result;
}

unint64_t sub_10017159C()
{
  result = qword_1003D0048;
  if (!qword_1003D0048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0048);
  }

  return result;
}

unint64_t sub_1001715F4()
{
  result = qword_1003D0050;
  if (!qword_1003D0050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0050);
  }

  return result;
}

__n128 sub_10017167C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100171698(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1001716D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100171738(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7542746E65696C63 && a2 == 0xEE004449656C646ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x800000010031A3C0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x800000010031A3E0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656E6174634F7369 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1001718E8(char a1)
{
  result = 0x79654B676F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x7542746E65696C63;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x656E6174634F7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001719B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100171738(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001719DC(uint64_t a1)
{
  v2 = sub_100172020();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100171A18(uint64_t a1)
{
  v2 = sub_100172020();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100171A54(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100080FB4(&qword_1003D0068, &qword_1002F6078);
  sub_1000890DC();
  __chkstk_darwin(v5);
  sub_100086D24(a1, a1[3]);
  sub_100172020();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100080F0C(a1);
  }

  else
  {
    sub_100172354();
    v6 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v7;
    LOBYTE(v22) = 1;
    sub_100172354();
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    *(&v17 + 1) = v9;
    *&v17 = v8;
    LOBYTE(v19) = 2;
    sub_1000BC95C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v23;
    v16 = v22;
    LOBYTE(v22) = 3;
    sub_100172354();
    KeyedDecodingContainer.decode(_:forKey:)();
    v14 = String._bridgeToObjectiveC()();

    v30 = 4;
    sub_100172354();
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = sub_100172344();
    v12(v11);
    v29 = v10 & 1;
    *&v19 = v6;
    *(&v19 + 1) = v18;
    v20 = v17;
    *v21 = v16;
    *&v21[8] = v15;
    *&v21[16] = v14;
    v21[24] = v10 & 1;
    sub_1001720D0(&v19, &v22);
    sub_100080F0C(a1);
    v22 = v6;
    v23 = v18;
    v24 = v17;
    v25 = v16;
    v26 = v15;
    v27 = v14;
    v28 = v29;
    sub_100172108(&v22);
    v13 = v20;
    *a2 = v19;
    a2[1] = v13;
    a2[2] = *v21;
    *(a2 + 41) = *&v21[9];
  }
}

uint64_t sub_100171DB4(void *a1)
{
  v3 = v1;
  v5 = sub_100080FB4(&qword_1003D0058, &qword_1002F6070);
  sub_1000890DC();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v16[-v9 - 8];
  sub_100086D24(a1, a1[3]);
  sub_100172020();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v17) = 0;
  sub_100172364(v11);
  if (!v2)
  {
    v12 = *(v3 + 16);
    LOBYTE(v17) = 1;
    sub_100172364(v12);
    v17 = *(v3 + 32);
    v18 = v17;
    v16[23] = 2;
    sub_100172074(&v18, v16);
    sub_1000BC860();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10008E168(v17, *(&v17 + 1));
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    LOBYTE(v17) = 3;
    sub_100172364(v14);

    LOBYTE(v17) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

double sub_100171FBC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100171A54(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_100172020()
{
  result = qword_1003D0060;
  if (!qword_1003D0060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0060);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoteUIEngagementRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100172204);
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

unint64_t sub_100172240()
{
  result = qword_1003D0070;
  if (!qword_1003D0070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0070);
  }

  return result;
}

unint64_t sub_100172298()
{
  result = qword_1003D0078;
  if (!qword_1003D0078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0078);
  }

  return result;
}

unint64_t sub_1001722F0()
{
  result = qword_1003D0080;
  if (!qword_1003D0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0080);
  }

  return result;
}

uint64_t sub_100172364(uint64_t a1)
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

Swift::Int sub_100172384(uint64_t a1)
{
  v1 = sub_100175A50(a1);
  sub_1001759FC(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001723F0(uint64_t a1)
{
  v1 = sub_100175A50(a1);
  sub_1001759FC(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10017243C(uint64_t a1)
{
  sub_100175A50(a1);
  v1 = sub_1000BA5A0();
  sub_100175A8C(v1, v2, v3);

  return Hasher._finalize()();
}

Swift::Int sub_100172484(uint64_t a1)
{
  v1 = sub_100175A50(a1);
  sub_1001759FC(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001724DC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000DF6F0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10017255C(uint64_t a1)
{
  v1 = a1;
  sub_100175A50(a1);
  Hasher._combine(_:)((v1 & 1u) + 1);
  return Hasher._finalize()();
}

Swift::Int sub_1001725A0(uint64_t a1)
{
  v1 = a1;
  sub_100175A50(a1);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001725E0(Swift::UInt a1)
{
  sub_100175A50(a1);
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_100172638(uint64_t a1)
{
  v1 = a1;
  sub_100175A50(a1);
  Hasher._combine(_:)(qword_1002F6328[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1001726D8(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_100175A50(a1);
  a2(v5, a1);
  return Hasher._finalize()();
}

Swift::Int sub_100172720(uint64_t a1)
{
  v1 = a1;
  sub_100175A50(a1);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100172784(uint64_t a1)
{
  v1 = a1;
  sub_100175A50(a1);
  Hasher._combine(_:)(v1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_1001727C4(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100172890(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_100172900(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100172970()
{
  sub_100175AE0();
  sub_100175AC8();
  String.hash(into:)();
}

uint64_t sub_1001729CC(void *a1, char a2)
{
  switch(a2)
  {
    case 2:
      sub_100175A2C();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_100172AB4(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100172B28(uint64_t a1)
{
  sub_100175AC8();
  String.hash(into:)();
}

uint64_t sub_100172B8C(uint64_t a1)
{
  sub_100175AC8();
  String.hash(into:)();
}

uint64_t sub_100172BF0(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
      break;
    default:
      sub_100175A2C();
      break;
  }

  String.hash(into:)();
}

uint64_t sub_100172CBC(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_100175AF4();
    sub_100175A0C();
  }

  else
  {
    sub_100175A2C();
  }

  String.hash(into:)();
}

uint64_t sub_100172D28(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_100172DB4(void *a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
      sub_100175A2C();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_100172F58(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100173034(uint64_t a1)
{
  sub_100175AC8();
  String.hash(into:)();
}

uint64_t sub_100173160(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int sub_10017324C()
{
  v0 = Hasher.init(_seed:)();
  sub_1001759FC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10017329C(uint64_t a1)
{
  sub_100175A38(a1);
  Hasher._combine(_:)((v1 & 1u) + 1);
  return Hasher._finalize()();
}

Swift::Int sub_1001732DC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_1000DF6F0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100173334(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100173378(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_1001733BC(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1002F6328[a2]);
  return Hasher._finalize()();
}

Swift::Int sub_10017340C(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_100173450(uint64_t a1)
{
  sub_100175A38(a1);
  sub_100175AD4();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  sub_100175B14(v1, v6, v2);

  return Hasher._finalize()();
}

Swift::Int sub_1001734B8()
{
  v0 = Hasher.init(_seed:)();
  sub_1001759FC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10017351C(uint64_t a1)
{
  sub_100175A38(a1);
  v1 = sub_1000BA5A0();
  sub_100175A8C(v1, v2, v3);

  return Hasher._finalize()();
}

Swift::Int sub_100173560(uint64_t a1)
{
  v2 = sub_100175A38(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x7473696C2D707061;
    }

    else
    {
      v4 = 0x2D74706965636572;
    }
  }

  else
  {
    v4 = 1701998445;
  }

  sub_100175AB0(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1001735F0(uint64_t a1)
{
  sub_100175A38(a1);
  if (v1)
  {
    sub_100175AF4();
    sub_100175A0C();
  }

  else
  {
    sub_100175A2C();
  }

  sub_100175AB0(v2, v3, v4);

  return Hasher._finalize()();
}

Swift::Int sub_100173678(uint64_t a1)
{
  sub_100175A38(a1);
  sub_100175AD4();
  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_100175B14(v1, v6, v2);

  return Hasher._finalize()();
}

Swift::Int sub_1001736E0(uint64_t a1)
{
  sub_100175A38(a1);
  sub_100175AD4();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  sub_100175B14(v1, v6, v2);

  return Hasher._finalize()();
}

Swift::Int sub_100173748(uint64_t a1)
{
  v2 = sub_100175A38(a1);
  if (v1)
  {
    v4 = 0x7079546E656B6F74;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  sub_100175AB0(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1001737D8(uint64_t a1)
{
  sub_100175A38(a1);
  sub_100175AE0();
  sub_100175AD4();
  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_100175B14(v1, v6, v2);

  return Hasher._finalize()();
}

Swift::Int sub_100173838(uint64_t a1)
{
  v2 = sub_100175A38(a1);
  if (v1)
  {
    v4 = 0x746361736E617274;
  }

  else
  {
    v4 = 7761509;
  }

  sub_100175AB0(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1001738AC(uint64_t a1, char a2)
{
  v3 = Hasher.init(_seed:)();
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 1684627824;
    }

    else
    {
      v5 = 7894115;
    }
  }

  else
  {
    v5 = 1684628080;
  }

  sub_100175AB0(v3, v5, v4);

  return Hasher._finalize()();
}

Swift::Int sub_100173928()
{
  v0 = Hasher.init(_seed:)();
  sub_1001759FC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10017398C(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  Hasher.init(_seed:)();
  a3(v6, a2);
  return Hasher._finalize()();
}

Swift::Int sub_1001739D8(uint64_t a1)
{
  sub_100175A38(a1);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_100173A14(uint64_t a1)
{
  if (a1)
  {
    v2 = _convertErrorToNSError(_:)();
    v3 = [v2 domain];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = (v1 + OBJC_IVAR____TtC9storekitd23ManualSyncFinishedEvent_errorDomain);
    *v7 = v4;
    v7[1] = v6;

    v8 = [v2 code];
    v9 = v1 + OBJC_IVAR____TtC9storekitd23ManualSyncFinishedEvent_errorCode;
    *v9 = v8;
    *(v9 + 8) = 0;
    if ([v2 code] != 100)
    {
      goto LABEL_8;
    }

    v10 = [v2 domain];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v11 == v14 && v13 == v15)
    {

LABEL_21:
      v26 = 2;
      goto LABEL_22;
    }

    v17 = sub_100175A68(v14);

    if ((v17 & 1) == 0)
    {
LABEL_8:
      if ([v2 code] != 907)
      {

LABEL_17:
        v26 = 1;
        goto LABEL_22;
      }

      v18 = [v2 domain];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v19 != v22 || v21 != v23)
      {
        v25 = sub_100175A68(v22);

        if (v25)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }
    }

    goto LABEL_21;
  }

  v26 = 0;
LABEL_22:
  v27 = v1 + OBJC_IVAR____TtC9storekitd23ManualSyncFinishedEvent_result;
  *v27 = v26;
  *(v27 + 8) = 0;
}

void sub_100173C08(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  (*(v2 + 104))();
  v6 = String._bridgeToObjectiveC()();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9[4] = sub_100175954;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100173D30;
  v9[3] = &unk_10038CB00;
  v8 = _Block_copy(v9);

  [v5 sendEventLazyWithName:v6 buildEvent:v8];
  _Block_release(v8);
}

id sub_100173D30(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_100173E0C(uint64_t a1)
{
  v1 = (*(a1 + 16))();

  return v1;
}

id sub_100173EB4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Mirror();
  sub_1000890DC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100093D40();
  v27 = v7 - v6;
  v8 = sub_100080FB4(&qword_1003D0218, &qword_1002F6300);
  v9 = __chkstk_darwin(v8 - 8);
  v25 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v22 - v12;
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  *(&v31 + 1) = type metadata accessor for AnalyticsEvent();
  *&v30 = v1;
  v16 = v1;
  Mirror.init(reflecting:)();
  sub_100081DFC(v15, 0, 1, v2);
  sub_100175868();
  v28 = Dictionary.init(dictionaryLiteral:)();
  v23 = (v4 + 8);
  v24 = (v4 + 32);
  v17 = v15;
  for (i = v13; ; v13 = i)
  {
    v18 = v17;
    sub_100105C8C(v17, v13, &qword_1003D0218, &qword_1002F6300);
    if (sub_100081D0C(v13, 1, v2) == 1)
    {
      break;
    }

    (*v24)(v27, v13, v2);
    Mirror.children.getter();
    v33 = v28;
    dispatch thunk of _AnySequenceBox._makeIterator()();
    while (1)
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!*(&v32 + 1))
      {
        break;
      }

      v29[0] = v30;
      v29[1] = v31;
      v29[2] = v32;
      sub_100174234(&v33, v29);
      sub_1000AF25C(v29, &qword_1003D0220, &qword_1002F6308);
    }

    v28 = v33;
    v19 = v25;
    v20 = v27;
    Mirror.superclassMirror.getter();
    (*v23)(v20, v2);
    v17 = v18;
    sub_1000AF25C(v18, &qword_1003D0218, &qword_1002F6300);
    sub_1001758AC(v19, v18);
  }

  sub_1000AF25C(v17, &qword_1003D0218, &qword_1002F6300);
  sub_1000AF25C(v13, &qword_1003D0218, &qword_1002F6300);
  return v28;
}

void sub_100174234(id *a1, uint64_t a2)
{
  sub_100105C8C(a2, &v13, &qword_1003D0220, &qword_1002F6308);
  v4 = v14;
  if (v14)
  {
    v5 = v13;
    sub_100080F0C(v15);
    sub_100105C8C(a2, &v13, &qword_1003D0220, &qword_1002F6308);

    v6 = sub_100175868();
    if (swift_dynamicCast())
    {
      v7 = v12[0];
      swift_isUniquelyReferenced_nonNull_native();
      v13 = *a1;
      sub_10023F0D4(v7, v5, v4);

      *a1 = v13;
      return;
    }

    sub_100105C8C(a2, &v13, &qword_1003D0220, &qword_1002F6308);

    sub_100080FB4(&qword_1003D0228, &qword_1002F6310);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v11 = 0;
      memset(v10, 0, sizeof(v10));
      sub_1000AF25C(v10, &qword_1003D0230, &unk_1002F6318);
      return;
    }

    sub_1000F2C78(v10, v12);
    sub_100086D24(v12, v12[3]);
    sub_100174474(v6, &v13);
    if (v13)
    {
      v9 = v13;
      swift_isUniquelyReferenced_nonNull_native();
      v13 = *a1;
      sub_10023F0D4(v9, v5, v4);

      *a1 = v13;
    }

    else
    {
    }

    v8 = v12;
  }

  else
  {
    v8 = v15;
  }

  sub_100080F0C(v8);
}

uint64_t sub_100174474@<X0>(uint64_t a1@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_100098B7C();
  __chkstk_darwin(v6);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = swift_dynamicCast();
  return sub_100081DFC(a4, v7 ^ 1u, 1, a1);
}

uint64_t sub_1001745A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v3, qword_1003F26C8);
  _StringGuts.grow(_:)(20);
  v4 = _typeName(_:qualified:)();
  v6 = v5;

  v14[1] = v6;
  v7._object = 0x800000010031A740;
  v7._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v7);
  v8 = v4;
  v9 = static os_log_type_t.fault.getter();

  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v11 = 136446466;
    *(v11 + 4) = sub_100080210(0, 0xE000000000000000, v14);
    *(v11 + 12) = 2082;
    v12 = sub_100080210(v8, v6, v14);

    *(v11 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

id sub_10017479C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AnalyticsEvent();
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_100174A00(uint64_t a1)
{
  v1 = type metadata accessor for Insecure.SHA1();
  sub_1000890DC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100093D40();
  v7 = v6 - v5;
  v8 = type metadata accessor for Insecure.SHA1Digest();
  __chkstk_darwin(v8 - 8);
  sub_100093D40();
  v11 = v10 - v9;

  sub_1001BEBD8();
  sub_100128C74();
  dispatch thunk of HashFunction.init()();
  v12 = sub_100175B08();
  sub_1000BC808(v12, v13);
  v14 = sub_100175B08();
  sub_1001C4B70(v14, v15, v7);
  v16 = sub_100175B08();
  sub_10008E168(v16, v17);
  dispatch thunk of HashFunction.finalize()();
  (*(v3 + 8))(v7, v1);
  v18 = sub_100175B08();
  sub_10008E168(v18, v19);
  v20 = sub_1001BF094(v11);
  v22 = v21;
  v23 = Data.base64EncodedString(options:)(0);
  sub_10008E168(v20, v22);
  *(v26 + OBJC_IVAR____TtC9storekitd19BaseManualSyncEvent_app) = v23;

  result = sub_1001AA4F4(v24);
  *(v26 + OBJC_IVAR____TtC9storekitd19BaseManualSyncEvent_environment) = result;
  return result;
}

id sub_100174C60()
{
  v1 = &v0[OBJC_IVAR____TtC9storekitd19BaseManualSyncEvent_app];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC9storekitd19BaseManualSyncEvent_environment] = 256;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseManualSyncEvent();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_100174D00(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100174ED0()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC9storekitd22ManualSyncSuccessEvent_transactionsCountDifference] = NSNotFound.getter();
  *&v0[OBJC_IVAR____TtC9storekitd22ManualSyncSuccessEvent_modifiedOrAddedTransactionsCount] = NSNotFound.getter();
  *&v0[OBJC_IVAR____TtC9storekitd22ManualSyncSuccessEvent_modifiedOrAddedStatusesCount] = NSNotFound.getter();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

unint64_t sub_100174F8C(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100174FDC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100174F8C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_100175060(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
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

void sub_100175100(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

id sub_1001751EC()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC9storekitd23ManualSyncFinishedEvent_result];
  *v2 = 0;
  v2[8] = 1;
  v3 = &v0[OBJC_IVAR____TtC9storekitd23ManualSyncFinishedEvent_errorDomain];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC9storekitd23ManualSyncFinishedEvent_errorCode];
  *v4 = 0;
  v4[8] = 1;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

id sub_1001752E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

id sub_1001754AC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC9storekitd24KeychainWriteFailedEvent_securityErrorCode];
  *v4 = 0;
  v4[4] = 1;
  v5 = [a1 domain];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = &v1[OBJC_IVAR____TtC9storekitd24KeychainWriteFailedEvent_errorDomain];
  *v9 = v6;
  v9[1] = v8;
  v10 = [a1 code];
  *&v1[OBJC_IVAR____TtC9storekitd24KeychainWriteFailedEvent_errorCode] = v10;
  v11 = [a1 userInfo];
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001DA990(v13, v14, v12, &v19);

  if (v20)
  {
    if (swift_dynamicCast())
    {
      *v4 = v17;
      v4[4] = 0;
    }
  }

  else
  {
    sub_1000AF25C(&v19, &unk_1003CCB70, &unk_1002ED050);
  }

  v18.receiver = v1;
  v18.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v18, "init");

  return v15;
}

id sub_100175674()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC9storekitd24KeychainWriteFailedEvent_securityErrorCode];
  *v2 = 0;
  v2[4] = 1;
  v3 = &v0[OBJC_IVAR____TtC9storekitd24KeychainWriteFailedEvent_errorDomain];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC9storekitd24KeychainWriteFailedEvent_errorCode] = NSNotFound.getter();
  *v2 = 0;
  v2[4] = 1;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

unint64_t sub_1001757E8()
{
  result = qword_1003D0208;
  if (!qword_1003D0208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0208);
  }

  return result;
}

unint64_t sub_100175868()
{
  result = qword_1003D0210;
  if (!qword_1003D0210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003D0210);
  }

  return result;
}

uint64_t sub_1001758AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003D0218, &qword_1002F6300);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017591C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10017597C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100175994()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100175A38(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

void *sub_100175A50(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t sub_100175A68(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100175A8C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

uint64_t sub_100175AB0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

uint64_t sub_100175B14(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

uint64_t sub_100175B40(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
    v9 = &a1[*(a3 + 20)];

    return sub_100081D0C(v9, a2, v8);
  }
}

_BYTE *sub_100175BE0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
    v8 = &v5[*(a4 + 20)];

    return sub_100081DFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ClientTypeResponse(uint64_t a1)
{
  result = qword_1003D0290;
  if (!qword_1003D0290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100175CB4(uint64_t a1)
{
  sub_100081F84(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

_BYTE *storeEnumTagSinglePayload for ClientType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100175DFCLL);
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

uint64_t sub_100175E34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954746E65696C63 && a2 == 0xEA00000000006570;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x764F646563726F66 && a2 == 0xEE00656469727265)
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

uint64_t sub_100175F0C(char a1)
{
  if (a1)
  {
    return 0x764F646563726F66;
  }

  else
  {
    return 0x7954746E65696C63;
  }
}

uint64_t sub_100175F54(void *a1)
{
  v3 = v1;
  v5 = sub_100080FB4(&qword_1003D02D0, &qword_1002F64D0);
  sub_1000890DC();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12[-v9];
  sub_100086D24(a1, a1[3]);
  sub_1001766FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = *v3;
  v12[14] = 0;
  sub_100176750();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for ClientTypeResponse(0);
    v12[13] = 1;
    type metadata accessor for ClientOverride(0);
    sub_1001767F8(&qword_1003CC710, &unk_1002F8A70);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100176104@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  sub_100080FB4(&qword_1003D02E8, &qword_1002F64D8);
  sub_1000890DC();
  v20 = v8;
  v21 = v7;
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = type metadata accessor for ClientTypeResponse(0);
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100086D24(a1, a1[3]);
  sub_1001766FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = v13;
    v18 = v11;
    v15 = v20;
    v23 = 0;
    sub_1001767A4();
    v16 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v14 = v24;
    type metadata accessor for ClientOverride(0);
    v22 = 1;
    sub_1001767F8(&qword_1003CC6B8, &unk_1002F8A98);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v15 + 8))(v10, v16);
    sub_100086E28(v6, &v14[*(v18 + 20)]);
    sub_10017683C(v14, v19);
  }

  return sub_100080F0C(a1);
}

unint64_t sub_1001763B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100383990, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100176400(char a1)
{
  result = 0x65646F6378;
  switch(a1)
  {
    case 1:
      result = 0x67696C6674736574;
      break;
    case 2:
      result = 0x69746375646F7270;
      break;
    case 3:
      result = 0x786F62646E6173;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001764A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100175E34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001764CC(uint64_t a1)
{
  v2 = sub_1001766FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100176508(uint64_t a1)
{
  v2 = sub_1001766FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100176598@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001763B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001765C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100176400(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1001766A8()
{
  result = qword_1003D02C8;
  if (!qword_1003D02C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D02C8);
  }

  return result;
}

unint64_t sub_1001766FC()
{
  result = qword_1003D02D8;
  if (!qword_1003D02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D02D8);
  }

  return result;
}

unint64_t sub_100176750()
{
  result = qword_1003D02E0;
  if (!qword_1003D02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D02E0);
  }

  return result;
}

unint64_t sub_1001767A4()
{
  result = qword_1003D02F0;
  if (!qword_1003D02F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D02F0);
  }

  return result;
}

uint64_t sub_1001767F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClientOverride(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10017683C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientTypeResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001768A0()
{
  result = qword_1003D02F8;
  if (!qword_1003D02F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D02F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientTypeResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001769C0);
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

unint64_t sub_1001769FC()
{
  result = qword_1003D0300;
  if (!qword_1003D0300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0300);
  }

  return result;
}

unint64_t sub_100176A54()
{
  result = qword_1003D0308;
  if (!qword_1003D0308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0308);
  }

  return result;
}

unint64_t sub_100176AAC()
{
  result = qword_1003D0310;
  if (!qword_1003D0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0310);
  }

  return result;
}

id sub_100176B00()
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

uint64_t sub_100176C48@<X0>(uint64_t a1@<X8>)
{
  v4 = 37;
  sub_100176D14(v5, &v4, v6);
  if (v5[1])
  {

    UUID.init(uuidString:)();
    return swift_bridgeObjectRelease_n();
  }

  else
  {
    v3 = type metadata accessor for UUID();
    return sub_100081DFC(a1, 1, 1, v3);
  }
}

void sub_100176D14(uint64_t *__return_ptr a1@<X8>, size_t *a2@<X0>, void *a3@<X1>)
{
  if (sysctlbyname("kern.bootsessionuuid", a3, a2, 0, 0))
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v5, qword_1003F26C8);
    v6 = static os_log_type_t.error.getter();
    v7 = Logger.logObject.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v8 = 136446466;
      *(v8 + 4) = sub_100080210(0, 0xE000000000000000, &v10);
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_100080210(0xD000000000000027, 0x800000010031A8B0, &v10);
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

BOOL sub_100176EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100176EE4(a1, a2, a3);
  byte_1003F25E0 = result;
  return result;
}

BOOL sub_100176EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  if (sysctlbyname("kern.hv_vmm_present", v6, v7, 0, 0))
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v8 = sub_10007EDA4(v3, qword_1003F26C8);
    sub_10007EDDC(v8, v5, v9);
    v10 = Logger.logObject.getter();
    v11 = type metadata accessor for Logger();
    (*(*(v11 - 8) + 8))(v5, v11);
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v10, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, v12, "Failed to get kern.hv_vmm_present", v13, 2u);
    }

    return 0;
  }

  else
  {
    v14 = *v6 != 0;
  }

  return v14;
}

uint64_t sub_1001770E4()
{
  if (qword_1003CBDF0 != -1)
  {
    sub_100177790(&qword_1003CBDF0);
  }

  return byte_1003F25E0;
}

uint64_t sub_100177140(uint64_t result)
{
  v1 = result;
  if (qword_1003CBDF0 != -1)
  {
    result = sub_100177790(&qword_1003CBDF0);
  }

  byte_1003F25E0 = v1 & 1;
  return result;
}

uint64_t sub_1001771C0()
{
  v0 = objc_opt_self();
  v2 = sub_10017772C(v0);
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

id sub_1001772D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
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

void sub_100177330()
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

BOOL sub_1001773C8()
{
  sub_1001776E8();
  result = sub_100177408(&off_100383A10);
  byte_1003F25E1 = result;
  return result;
}

BOOL sub_100177408(uint64_t a1)
{
  v17 = 0;
  v2 = amfi_interface_query_bootarg_state(&v17);
  if (v2)
  {
    v3 = v2;
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v4, qword_1003F26C8);
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v19 = 0xD000000000000024;
    v20 = 0x800000010031A840;
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
      *(v10 + 4) = sub_100080210(0, 0xE000000000000000, &v19);
      *(v10 + 12) = 2082;
      v11 = sub_100080210(v7, v6, &v19);

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

BOOL sub_100177680()
{
  sub_1001776E8();
  result = sub_100177408(&off_1003835F8);
  byte_1003F25E2 = result;
  return result;
}

unint64_t sub_1001776E8()
{
  result = qword_1003CEE00;
  if (!qword_1003CEE00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003CEE00);
  }

  return result;
}

uint64_t sub_10017772C(void *a1)
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

uint64_t sub_100177790(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100177894@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9storekitd26objc_MessageServerResponse_url;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_100177978(uint64_t a1, char a2, void *a3)
{
  v7 = sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10012A7F8(a1, v9);
  if (sub_100081D0C(v9, 1, v10) == 1)
  {
    sub_100146014(a1);

    sub_100146014(v9);
LABEL_6:
    type metadata accessor for objc_MessageServerResponse(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v11 + 32))(v13, v9, v10);
  if (!a3)
  {
    sub_100146014(a1);
    (*(v11 + 8))(v13, v10);
    goto LABEL_6;
  }

  (*(v11 + 16))(&v3[OBJC_IVAR____TtC9storekitd26objc_MessageServerResponse_url], v13, v10);
  v14 = [a3 integerValue];
  (*(v11 + 8))(v13, v10);
  *&v3[OBJC_IVAR____TtC9storekitd26objc_MessageServerResponse_messageType] = v14;
  v3[OBJC_IVAR____TtC9storekitd26objc_MessageServerResponse_shouldAllowDeveloperControl] = a2 & 1;
  v15 = type metadata accessor for objc_MessageServerResponse(0);
  v18.receiver = v3;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, "init");

  sub_100146014(a1);
  return v16;
}

id sub_100177D1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for objc_MessageServerResponse(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100177DE8(uint64_t a1)
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

uint64_t sub_100177EB0(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100177F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MessageServerResponse.MessageItem(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100081D0C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10017800C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MessageServerResponse.MessageItem(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100081DFC(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1001780D4(uint64_t a1)
{
  result = type metadata accessor for MessageServerResponse.MessageItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001781D0(uint64_t a1)
{
  result = 1;
  switch(a1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    default:
      if (a1 == 999)
      {
        result = 4;
      }

      else
      {
        result = 5;
      }

      break;
  }

  return result;
}

uint64_t sub_100178274@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001781D0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001782A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10017823C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1001782CC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10017833C()
{
  sub_1001782CC();

  return _swift_defaultActor_deallocate(v0);
}

_BYTE *storeEnumTagSinglePayload for CloudStoreChangeReason(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10017844CLL);
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

unint64_t sub_100178488()
{
  result = qword_1003D0510;
  if (!qword_1003D0510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0510);
  }

  return result;
}

void sub_1001784DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100213374(0, v1, 0);
    v5 = sub_10017C828(a1);
    v6 = 0;
    v7 = a1 + 64;
    v20 = v1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_24;
        }

        v21 = v4;
        v22 = v6;
        v23 = v3;
        v9 = String.lowercased()();
        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_100213374(v10 > 1, v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        *&_swiftEmptyArrayStorage[2 * v11 + 4] = v9;
        v12 = 1 << *(a1 + 32);
        if (v5 >= v12)
        {
          goto LABEL_25;
        }

        v7 = a1 + 64;
        v13 = *(a1 + 64 + 8 * v8);
        if ((v13 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v23)
        {
          goto LABEL_27;
        }

        v14 = v13 & (-2 << (v5 & 0x3F));
        if (v14)
        {
          v12 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = v8 << 6;
          v16 = v8 + 1;
          v17 = (a1 + 72 + 8 * v8);
          while (v16 < (v12 + 63) >> 6)
          {
            v19 = *v17++;
            v18 = v19;
            v15 += 64;
            ++v16;
            if (v19)
            {
              sub_10013AC84(v5, v23, v21 & 1);
              v12 = __clz(__rbit64(v18)) + v15;
              goto LABEL_18;
            }
          }

          sub_10013AC84(v5, v23, v21 & 1);
        }

LABEL_18:
        v6 = v22 + 1;
        if (v22 + 1 == v20)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v12;
        if (v12 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

BOOL sub_100178710()
{
  if ([v0 isProfileValidated])
  {
    return 0;
  }

  else
  {
    if (!sub_100070464())
    {
      return 1;
    }

    if (qword_1003CBE00 != -1)
    {
      swift_once();
    }

    return byte_1003F25E2 != 1 || !sub_1001790E4(4);
  }
}

uint64_t sub_1001787A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for URL();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_100081DFC(a2, v7, 1, v6);
}

BOOL sub_100178848(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void sub_1001788F8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1000AFC90(a3);
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

unint64_t sub_1001789EC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000016;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0xD00000000000001BLL;
}

void sub_100178B44()
{
  sub_100093D08();
  v1 = v0;
  v52 = v2;
  v3 = type metadata accessor for SKLogger(0);
  sub_100098B7C();
  __chkstk_darwin(v4);
  sub_100093D40();
  v50 = v6 - v5;
  v7 = sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  v8 = sub_1000B01B0(v7);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for URL();
  sub_1000890DC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1001460C4();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v49 - v19;
  v21 = [v1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10017CB34();
  URL.appendingPathComponent(_:isDirectory:)();
  v51 = *(v13 + 8);
  v51(v17, v11);
  sub_10008E5A4(0, &unk_1003D0550, NSDictionary_ptr);
  v22 = sub_10017CB5C();
  v23(v22);
  v24 = sub_100179048(v17);
  if (!v24)
  {
    goto LABEL_13;
  }

  v25 = v24;
  *&v53 = 0xD000000000000026;
  *(&v53 + 1) = 0x800000010031AAF0;
  v26 = [v24 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v26)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  v55[0] = v53;
  v55[1] = v54;
  if (*(&v54 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_13;
    }

    URL.init(string:)();

    sub_10017CBF0(v10);
    if (!v27)
    {
      v51(v20, v11);
      v47 = v52;
      (*(v13 + 32))(v52, v10, v11);
      v48 = 0;
      goto LABEL_19;
    }

    v28 = &unk_1003D0540;
    v29 = &unk_1002EDD50;
    v30 = v10;
  }

  else
  {

    v28 = &unk_1003CCB70;
    v29 = &unk_1002ED050;
    v30 = v55;
  }

  sub_1000AF25C(v30, v28, v29);
LABEL_13:
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v31 = sub_10007EDA4(v3, qword_1003F26C8);
  v32 = v50;
  sub_10007EDDC(v31, v50, v33);
  sub_10017C960();
  _StringGuts.grow(_:)(61);
  v34._countAndFlagsBits = 0xD00000000000003BLL;
  v34._object = 0x800000010031AAB0;
  String.append(_:)(v34);
  *&v53 = sub_100213F6C(v1);
  *(&v53 + 1) = v35;
  v36 = sub_100080FB4(&unk_1003CE550, &qword_1002F6970);
  v37._countAndFlagsBits = sub_10017CBC0(v36);
  String.append(_:)(v37);

  v38 = v55[0];
  v39 = static os_log_type_t.error.getter();
  v40 = Logger.logObject.getter();
  if (os_log_type_enabled(v40, v39))
  {
    v41 = sub_10008E688();
    v42 = swift_slowAlloc();
    *&v55[0] = v42;
    *v41 = 136446466;
    *(v41 + 4) = sub_100093CF0(v42, v43, v55);
    *(v41 + 12) = 2082;
    v44 = sub_100080210(v38, *(&v38 + 1), v55);

    *(v41 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v40, v39, "%{public}s%{public}s", v41, 0x16u);
    swift_arrayDestroy();
    sub_100081C28(v42);
    sub_1000AFF34();
  }

  else
  {
  }

  sub_100080130(v32, v45, v46);
  v51(v20, v11);
  v48 = 1;
  v47 = v52;
LABEL_19:
  sub_100081DFC(v47, v48, 1, v11);
  sub_100093CB8();
}

id sub_100179048(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithContentsOfURL:v4];

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

BOOL sub_1001790E4(uint64_t a1)
{
  v1 = a1;
  sub_100179204(9, &v6);
  if (!v7)
  {
    sub_1000AF25C(&v6, &unk_1003CCB70, &unk_1002ED050);
    return 0;
  }

  sub_100080FB4(&unk_1003D0530, &qword_1002EBFC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  *&v6 = sub_1001B5864(v1);
  *(&v6 + 1) = v2;
  __chkstk_darwin(v6);
  v5[2] = &v6;
  v3 = sub_100178848(sub_1001060A4, v5, v5[5]);

  return v3;
}

double sub_100179204@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1;
  v5 = [v2 entitlements];
  sub_1001B59B0(v3);
  v6 = String._bridgeToObjectiveC()();

  sub_10008E5A4(0, &qword_1003D0210, NSObject_ptr);
  v7 = [v5 objectForKey:v6 ofClass:swift_getObjCClassFromMetadata()];

  if (v7)
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

void *sub_100179370(uint64_t a1)
{
  sub_100179204(a1, &v12);
  if (v13)
  {
    result = sub_10017CB68(v1, v2, v3, &type metadata for Bool, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10), v12);
    if (result)
    {
      return v11;
    }
  }

  else
  {
    sub_1000AF25C(&v12, &unk_1003CCB70, &unk_1002ED050);
    return 0;
  }

  return result;
}