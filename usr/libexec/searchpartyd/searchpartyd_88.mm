unint64_t sub_1009B1300()
{
  result = qword_1016B0BD0;
  if (!qword_1016B0BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0BD0);
  }

  return result;
}

unint64_t sub_1009B1358()
{
  result = qword_1016B0BD8;
  if (!qword_1016B0BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0BD8);
  }

  return result;
}

unint64_t sub_1009B13B0()
{
  result = qword_1016B0BE0;
  if (!qword_1016B0BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0BE0);
  }

  return result;
}

uint64_t sub_1009B1404(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v3 = 0;
  result = 53;
  switch(v2)
  {
    case 0:
      goto LABEL_121;
    case 1:
      v3 = 1;
      goto LABEL_121;
    case 2:
      v3 = 2;
      goto LABEL_121;
    case 3:
      v3 = 3;
      goto LABEL_121;
    case 4:
      v3 = 4;
      goto LABEL_121;
    case 5:
      v3 = 5;
      goto LABEL_121;
    case 6:
      v3 = 6;
      goto LABEL_121;
    case 7:
      v3 = 7;
      goto LABEL_121;
    case 8:
      v3 = 8;
      goto LABEL_121;
    case 9:
      v3 = 9;
      goto LABEL_121;
    case 10:
      v3 = 10;
      goto LABEL_121;
    case 11:
      v3 = 11;
      goto LABEL_121;
    case 12:
      v3 = 12;
      goto LABEL_121;
    case 13:
      v3 = 13;
      goto LABEL_121;
    case 14:
      v3 = 14;
      goto LABEL_121;
    case 15:
      v3 = 15;
      goto LABEL_121;
    case 16:
      v3 = 16;
      goto LABEL_121;
    case 17:
      v3 = 17;
      goto LABEL_121;
    case 18:
      v3 = 18;
      goto LABEL_121;
    case 19:
      v3 = 19;
      goto LABEL_121;
    case 20:
      v3 = 20;
      goto LABEL_121;
    case 21:
      v3 = 21;
      goto LABEL_121;
    case 22:
      v3 = 22;
      goto LABEL_121;
    case 23:
      v3 = 23;
      goto LABEL_121;
    case 24:
      v3 = 24;
      goto LABEL_121;
    case 25:
      v3 = 25;
      goto LABEL_121;
    case 26:
      v3 = 26;
      goto LABEL_121;
    case 27:
      v3 = 27;
      goto LABEL_121;
    case 28:
      v3 = 28;
      goto LABEL_121;
    case 29:
      v3 = 29;
      goto LABEL_121;
    case 30:
      v3 = 30;
      goto LABEL_121;
    case 31:
      v3 = 31;
      goto LABEL_121;
    case 32:
      v3 = 32;
      goto LABEL_121;
    case 33:
      v3 = 33;
      goto LABEL_121;
    case 34:
      v3 = 34;
      goto LABEL_121;
    case 35:
      v3 = 35;
      goto LABEL_121;
    case 36:
      v3 = 36;
      goto LABEL_121;
    case 37:
      v3 = 37;
      goto LABEL_121;
    case 38:
      v3 = 38;
      goto LABEL_121;
    case 39:
      v3 = 39;
      goto LABEL_121;
    case 40:
      v3 = 40;
      goto LABEL_121;
    case 41:
      v3 = 41;
      goto LABEL_121;
    case 42:
      v3 = 42;
      goto LABEL_121;
    case 43:
      v3 = 43;
      goto LABEL_121;
    case 44:
      v3 = 44;
      goto LABEL_121;
    case 45:
      v3 = 45;
      goto LABEL_121;
    case 46:
      v3 = 46;
      goto LABEL_121;
    case 47:
      v3 = 47;
      goto LABEL_121;
    case 48:
      v3 = 48;
      goto LABEL_121;
    case 49:
      v3 = 49;
      goto LABEL_121;
    case 50:
      v3 = 50;
      goto LABEL_121;
    case 51:
      v3 = 51;
      goto LABEL_121;
    case 52:
      v3 = 52;
LABEL_121:
      result = v3;
      break;
    case 53:
      return result;
    case 54:
      result = 54;
      break;
    case 55:
      result = 55;
      break;
    case 56:
      result = 56;
      break;
    case 57:
      result = 57;
      break;
    case 58:
      result = 58;
      break;
    case 59:
      result = 59;
      break;
    case 60:
      result = 60;
      break;
    case 61:
      result = 61;
      break;
    case 62:
      result = 62;
      break;
    case 63:
      result = 63;
      break;
    case 64:
      result = 64;
      break;
    case 65:
      result = 65;
      break;
    case 66:
      result = 66;
      break;
    case 67:
      result = 67;
      break;
    case 68:
      result = 68;
      break;
    case 69:
      result = 69;
      break;
    case 70:
      result = 70;
      break;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    case 95:
      result = 95;
      break;
    case 96:
      result = 96;
      break;
    case 97:
      result = 97;
      break;
    case 98:
      result = 98;
      break;
    case 99:
      result = 99;
      break;
    case 100:
      result = 100;
      break;
    case 101:
      result = 101;
      break;
    case 102:
      result = 102;
      break;
    case 103:
      result = 103;
      break;
    case 104:
      result = 104;
      break;
    case 105:
      result = 105;
      break;
    case 106:
      result = 106;
      break;
    case 107:
      result = 107;
      break;
    case 108:
      result = 108;
      break;
    case 109:
      result = 109;
      break;
    case 110:
      result = 110;
      break;
    case 111:
      result = 111;
      break;
    case 112:
      result = 112;
      break;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    case 122:
      result = 122;
      break;
    case 123:
      result = 123;
      break;
    case 124:
      result = 124;
      break;
    case 125:
      result = 125;
      break;
    case 126:
      result = 126;
      break;
    case 127:
      result = 127;
      break;
    default:
      if ((v2 - 128) >= 0x21)
      {
        result = 4294967201;
      }

      else
      {
        result = v2;
      }

      break;
  }

  return result;
}

uint64_t sub_1009B1884(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1684628325;
    v7 = 0x754E6C6169726573;
    v8 = 0x49746375646F7270;
    if (a1 != 3)
    {
      v8 = 0x6449726F646E6576;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x644970696863;
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
    v1 = 0x5364656573;
    v2 = 0x737574617473;
    if (a1 != 9)
    {
      v2 = 0x7374726563;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6F69737265567766;
    v4 = 0x727574616E676973;
    if (a1 != 6)
    {
      v4 = 0x4E6E6F6973736573;
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

uint64_t sub_1009B19E8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B0BE8, &unk_1013CF9B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_1009B1F84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + 80);
    v13 = *(v3 + 80);
    v12 = 6;
    sub_1001022C4(&v17, v11);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v16 = *(v3 + 96);
    v13 = *(v3 + 96);
    v12 = 7;
    sub_1001022C4(&v16, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v15 = *(v3 + 112);
    v13 = *(v3 + 112);
    v12 = 8;
    sub_1001022C4(&v15, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v13 = *(v3 + 128);
    v14 = v13;
    v12 = 9;
    sub_1001022C4(&v14, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    *&v13 = *(v3 + 144);
    v11[0] = 10;
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    sub_1002DE008();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1009B1DBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1009B20F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1009B1DE4(uint64_t a1)
{
  v2 = sub_1009B1F84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B1E20(uint64_t a1)
{
  v2 = sub_1009B1F84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009B1EC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1009B1F10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1009B1F84()
{
  result = qword_1016B0BF0;
  if (!qword_1016B0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0BF0);
  }

  return result;
}

unint64_t sub_1009B1FEC()
{
  result = qword_1016B0BF8;
  if (!qword_1016B0BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0BF8);
  }

  return result;
}

unint64_t sub_1009B2044()
{
  result = qword_1016B0C00;
  if (!qword_1016B0C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0C00);
  }

  return result;
}

unint64_t sub_1009B209C()
{
  result = qword_1016B0C08;
  if (!qword_1016B0C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0C08);
  }

  return result;
}

uint64_t sub_1009B20F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684628325 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F69737265567766 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E6E6F6973736573 && a2 == 0xEC00000065636E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5364656573 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7374726563 && a2 == 0xE500000000000000)
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

Swift::Int sub_1009B2468()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1009B24DC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1009B2530@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C6F8, *a1);

  *a2 = v3 != 0;
  return result;
}

id sub_1009B27FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureLocationsTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1009B2878()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = type metadata accessor for SecureLocationsService();
    v17[3] = v3;
    v17[4] = &off_101641638;
    v17[0] = v0;
    v4 = type metadata accessor for SecureLocationsTrampoline();
    v5 = objc_allocWithZone(v4);
    v6 = sub_10015049C(v17, v3);
    __chkstk_darwin(v6);
    v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v16[3] = v3;
    v16[4] = &off_101641638;
    v16[0] = v10;
    sub_10001F280(v16, v5 + OBJC_IVAR____TtC12searchpartyd25SecureLocationsTrampoline_implementation);
    v15.receiver = v5;
    v15.super_class = v4;

    v11 = objc_msgSendSuper2(&v15, "init");
    sub_100007BAC(v16);
    sub_100007BAC(v17);
    v12 = *(v0 + 56);
    *(v0 + 56) = v11;
    v2 = v11;

    v1 = 0;
  }

  v13 = v1;
  return v2;
}

void *sub_1009B29FC(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v25 = a1;
  v19 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v19);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v2[2] = 0xD00000000000002DLL;
  v2[3] = 0x80000001013670A0;
  v18[2] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v18[3] = "ureLocationsTrampoline";
  v21 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v20 = *(v4 + 104);
  v20(v6);
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  v18[1] = sub_100003F1C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v7 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = v22;
  v9 = v23;
  v23[4] = v7;
  (v20)(v6, v21, v8);
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  v10 = v24;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = v25;
  v9[5] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for XPCSessionManager();
  swift_allocObject();
  v12 = v9;
  v9[6] = XPCSessionManager.init(name:)();
  v9[7] = 0;
  v9[8] = v11;
  v9[9] = v10;
  type metadata accessor for SecureLocationsKeyManager();
  swift_allocObject();
  swift_retain_n();

  v9[10] = sub_100B64B7C(v11);
  if (qword_101694E48 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BFF8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "SecureLocationsService inited", v16, 2u);
  }

  return v12;
}

uint64_t sub_1009B2E78()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694E48 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177BFF8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Starting SecureLocations Service", v12, 2u);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v2;
  aBlock[4] = sub_1009B3518;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016416B0;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100003F1C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v5, v3);
  (*(v6 + 8))(v8, v17);
}

uint64_t sub_1009B3210(uint64_t a1)
{
  v1 = type metadata accessor for MachServiceName();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for XPCServiceDescription();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MachServiceName.init(_:)();
  sub_1009B2878();
  if (qword_101694B08 != -1)
  {
    swift_once();
  }

  v6 = qword_1016B0C10;

  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  XPCSessionManager.register(service:)();
  return (*(v3 + 8))(v5, v2);
}

void sub_1009B33DC()
{
  v0 = objc_opt_self();
  v1 = &OBJC_PROTOCOL___SPSecureLocationsXPCProtocol;
  v2 = [v0 interfaceWithProtocol:v1];

  qword_1016B0C10 = v2;
}

id *sub_1009B3444()
{

  return v0;
}

uint64_t sub_1009B349C()
{
  sub_1009B3444();

  return swift_deallocClassInstance();
}

unint64_t sub_1009B3558()
{
  result = qword_1016B0DF8;
  if (!qword_1016B0DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0DF8);
  }

  return result;
}

uint64_t sub_1009B35AC(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - v8;
  v10 = type metadata accessor for DirectorySequence();
  v36 = *(v10 - 8);
  v37 = v10;
  __chkstk_darwin(v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 64);
  v41 = *(v13 + 168);
  v14 = qword_101694CD0;
  v39 = v13;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_1000076D4(v3, qword_10177BC20);
  v43 = _swiftEmptyArrayStorage;
  v44 = _swiftEmptyArrayStorage;
  v16 = [objc_opt_self() defaultManager];
  v38 = v15;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v42 = v12;
  DirectorySequence.next()();
  v17 = *(v4 + 48);
  if (v17(v9, 1, v3) != 1)
  {
    v18 = v4 + 32;
    v19 = *(v4 + 32);
    v20 = (v18 - 24);
    do
    {
      v19(v6, v9, v3);
      v21 = objc_autoreleasePoolPush();
      sub_100604DCC(v6, v41, &v44, &v43);
      objc_autoreleasePoolPop(v21);
      (*v20)(v6, v3);
      DirectorySequence.next()();
    }

    while (v17(v9, 1, v3) != 1);
  }

  (*(v36 + 8))(v42, v37);
  v22 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v23 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10138BBE0;
  v25 = v44;
  v26 = v44[2];
  *(v24 + 56) = &type metadata for Int;
  *(v24 + 64) = &protocol witness table for Int;
  *(v24 + 32) = v26;
  sub_100003F1C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  v29 = v28;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = sub_100008C00();
  *(v24 + 72) = v27;
  *(v24 + 80) = v29;
  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Found %i records at %@", 22, 2, v24);

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v44 = v25;
  sub_1000BC4D4(&qword_1016B0E08, &unk_1013CFBA0);
  sub_1009B3CD0();
  v30 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v32 = v31;

  sub_100017D5C(v30, v32);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v40 + 16))(v40, isa, 0);

  sub_100016590(v30, v32);
  sub_100016590(v30, v32);
}

unint64_t sub_1009B3CD0()
{
  result = qword_1016B0E10;
  if (!qword_1016B0E10)
  {
    sub_1000BC580(&qword_1016B0E08, &unk_1013CFBA0);
    sub_100003F1C(&qword_1016B0E18, type metadata accessor for SecureLocationsCachedSharedKey, &unk_1013D8EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0E10);
  }

  return result;
}

unint64_t sub_1009B3D98()
{
  result = qword_1016B0E30;
  if (!qword_1016B0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0E30);
  }

  return result;
}

unint64_t sub_1009B3DF0()
{
  result = qword_1016B0E38;
  if (!qword_1016B0E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0E38);
  }

  return result;
}

uint64_t sub_1009B3E44(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B0F10, &qword_1013D0020);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1009B55E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  type metadata accessor for BeaconIdentifier(0);
  sub_1009B57A4(&qword_1016A9138, type metadata accessor for BeaconIdentifier, &unk_1013BEF04);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for KeyGenerationBeaconInfo(0);
    LOBYTE(v19) = 1;
    type metadata accessor for Date();
    sub_1009B57A4(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v14 = v10[4];
    v15 = v10[5];
    v19 = *v10;
    v20 = v11;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v18 = 2;
    sub_1009B53BC(v19, v11, v12, v13, v14, v15, sub_100017D5C, sub_1002DBC68);
    sub_1009B57EC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1009B53BC(v19, v20, v21, v22, v23, v24, sub_100016590, sub_100006654);
    LOBYTE(v19) = *(v3 + *(v9 + 28));
    v18 = 3;
    sub_1009B5840();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1009B4148(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v21 = type metadata accessor for Date();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BeaconIdentifier(0);
  __chkstk_darwin(v5);
  v22 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&qword_1016B0EE8, &qword_1013D0018);
  v20 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v18 - v7;
  v9 = type metadata accessor for KeyGenerationBeaconInfo(0);
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1009B55E4();
  v23 = v8;
  v12 = v25;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    sub_100007BAC(a1);
  }

  else
  {
    v13 = v4;
    v14 = v20;
    v15 = v21;
    LOBYTE(v26) = 0;
    sub_1009B57A4(&qword_1016B0EF8, type metadata accessor for BeaconIdentifier, &unk_1013BEF2C);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1009B5638(v22, v11);
    LOBYTE(v26) = 1;
    sub_1009B57A4(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v19 + 32))(&v11[v9[5]], v13, v15);
    v29 = 2;
    sub_1009B569C();
    v25 = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v16 = &v11[v9[6]];
    v17 = v27;
    *v16 = v26;
    *(v16 + 1) = v17;
    *(v16 + 2) = v28;
    v29 = 3;
    sub_1009B56F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v14 + 8))(v23, v24);
    v11[v9[7]] = v26;
    sub_100991F98(v11, v18);
    sub_100007BAC(a1);
    sub_1009B5744(v11, type metadata accessor for KeyGenerationBeaconInfo);
  }
}

uint64_t sub_1009B4668(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B0F40, &unk_1013D0030);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_1009B5E54();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_10012C038(&v16, v11);
  sub_10049DF20();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v13, *(&v13 + 1));
  if (!v2)
  {
    v15 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_10012BFDC(&v15, v11);
    sub_100313230();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v13 = v3[2];
    v14 = v13;
    v12 = 2;
    sub_1009B5EA8(&v14, v11);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1009B4998()
{
  v1 = 0x6574614472696170;
  v2 = 1937335659;
  if (*v0 != 2)
  {
    v2 = 1701869940;
  }

  if (!*v0)
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

uint64_t sub_1009B4A08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1009B58E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1009B4A30(uint64_t a1)
{
  v2 = sub_1009B55E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B4A6C(uint64_t a1)
{
  v2 = sub_1009B55E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1009B4AD8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1009B4B30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

unint64_t sub_1009B4B84()
{
  v1 = 0x6553646572616873;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4B65746176697270;
  }
}

uint64_t sub_1009B4BF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1009B5A58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1009B4C18(uint64_t a1)
{
  v2 = sub_1009B5E54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009B4C54(uint64_t a1)
{
  v2 = sub_1009B5E54();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1009B4C90@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1009B5B84(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

void sub_1009B4CEC(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for KeyGenerationBeaconInfo(0) + 24));
  v4 = v3[1];
  v5 = v3[5];
  if (v4 >> 60 == 15 || v5 >> 60 == 15)
  {
    v7 = 0;
    v9 = 0;
    v4 = 0;
    v12 = 0;
    v5 = 0;
    v8 = 0xF000000000000000;
LABEL_9:
    *a1 = v7;
    a1[1] = v8;
    a1[2] = v9;
    a1[3] = v4;
    a1[4] = v12;
    a1[5] = v5;
    return;
  }

  v9 = *v3;
  v10 = v3[2];
  v11 = v3[3];
  v12 = v3[4];
  sub_1009B53BC(*v3, v3[1], v10, v11, v12, v3[5], sub_100017D5C, sub_1002DBC68);
  sub_1002DBC68(v12, v5);
  sub_100017D5C(v9, v4);
  sub_10002EA98(57, v9, v4, v13);
  sub_100496F68(v13[0], v13[1], &v14);
  v8 = v15;
  if (v15 >> 60 != 15)
  {
    v7 = v14;
    sub_100017D5C(v9, v4);
    sub_1009B53BC(v9, v4, v10, v11, v12, v5, sub_100016590, sub_100006654);
    goto LABEL_9;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1009B4EC0()
{
  v1 = 0x794D646E69662ELL;
  v2 = 0x646567616E616D2ELL;
  if (*v0 != 2)
  {
    v2 = 0x6574726F706D692ELL;
  }

  if (*v0)
  {
    v1 = 0x6C61646E6174732ELL;
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

uint64_t sub_1009B4F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v31 = v2;
  v12 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v12, qword_10177C788);
  Row.subscript.getter();
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v12, qword_10177C818);
  Row.subscript.getter();
  v13 = *(v6 + 16);
  v13(a2, v9, v5);
  v14 = a2 + *(type metadata accessor for BeaconIdentifier(0) + 20);
  v32 = v11;
  v13(v14, v11, v5);
  if (qword_1016952D8 != -1)
  {
    swift_once();
  }

  v15 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v15, qword_10177C830);
  v16 = type metadata accessor for KeyGenerationBeaconInfo(0);
  v17 = v16[5];
  v18 = type metadata accessor for Date();
  v30 = v17;
  Row.subscript.getter();
  if (qword_1016952F0 != -1)
  {
    swift_once();
  }

  v19 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v19, qword_10177C878);
  sub_100029580();
  Row.subscript.getter();
  v20 = v33;
  v21 = v32;
  if (v33 >= 4)
  {
    sub_100991400();
    swift_allocError();
    *v26 = 5;
    swift_willThrow();
    v27 = type metadata accessor for Row();
    (*(*(v27 - 8) + 8))(a1, v27);
    v28 = *(v6 + 8);
    v28(v9, v5);
    v28(v21, v5);
    sub_1009B5744(a2, type metadata accessor for BeaconIdentifier);
    return (*(*(v18 - 8) + 8))(a2 + v30, v18);
  }

  else
  {
    v22 = type metadata accessor for Row();
    (*(*(v22 - 8) + 8))(a1, v22);
    v23 = *(v6 + 8);
    v23(v9, v5);
    result = (v23)(v21, v5);
    *(a2 + v16[7]) = v20;
    v25 = (a2 + v16[6]);
    *v25 = xmmword_10138BBF0;
    v25[1] = 0u;
    v25[2] = 0u;
  }

  return result;
}

void sub_1009B53BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(uint64_t, uint64_t))
{
  if (a2 >> 60 != 15)
  {
    a7(a1);
    (a7)(a3, a4);

    a8(a5, a6);
  }
}

void sub_1009B5460(uint64_t a1)
{
  type metadata accessor for BeaconIdentifier(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_1009B5504();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1009B5504()
{
  if (!qword_1016B0EA8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016B0EA8);
    }
  }
}

uint64_t sub_1009B5554(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1009B5590()
{
  result = qword_1016B0EE0;
  if (!qword_1016B0EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0EE0);
  }

  return result;
}

unint64_t sub_1009B55E4()
{
  result = qword_1016B0EF0;
  if (!qword_1016B0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0EF0);
  }

  return result;
}

uint64_t sub_1009B5638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1009B569C()
{
  result = qword_1016B0F00;
  if (!qword_1016B0F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F00);
  }

  return result;
}

unint64_t sub_1009B56F0()
{
  result = qword_1016B0F08;
  if (!qword_1016B0F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F08);
  }

  return result;
}

uint64_t sub_1009B5744(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1009B57A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1009B57EC()
{
  result = qword_1016B0F18;
  if (!qword_1016B0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F18);
  }

  return result;
}

unint64_t sub_1009B5840()
{
  result = qword_1016B0F20;
  if (!qword_1016B0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F20);
  }

  return result;
}

unint64_t sub_1009B5894()
{
  result = qword_1016B0F28;
  if (!qword_1016B0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F28);
  }

  return result;
}

uint64_t sub_1009B58E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574614472696170 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1937335659 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1009B5A58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6553646572616873 && a2 == 0xEC00000074657263 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013482E0 == a2)
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

uint64_t sub_1009B5B84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B0F30, &qword_1013D0028);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1009B5E54();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v25 = 0;
  sub_10049DECC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v23;
  v21 = a2;
  v22 = v24;
  v25 = 1;
  sub_100313070();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v23;
  v20 = v24;
  v25 = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v10 = v23;
  v11 = v24;
  v12 = v9;
  v13 = v9;
  v14 = v22;
  sub_100017D5C(v13, v22);
  v16 = v19;
  v15 = v20;
  sub_100017D5C(v19, v20);
  sub_1002DBC68(v10, v11);
  sub_100007BAC(a1);
  sub_100016590(v12, v14);
  sub_100016590(v16, v15);
  result = sub_100006654(v10, v11);
  v18 = v21;
  *v21 = v12;
  v18[1] = v14;
  v18[2] = v16;
  v18[3] = v15;
  v18[4] = v10;
  v18[5] = v11;
  return result;
}

unint64_t sub_1009B5E54()
{
  result = qword_1016B0F38;
  if (!qword_1016B0F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F38);
  }

  return result;
}

uint64_t sub_1009B5EA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016977A8, &qword_1013D6820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1009B5F3C()
{
  result = qword_1016B0F48;
  if (!qword_1016B0F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F48);
  }

  return result;
}

unint64_t sub_1009B5F94()
{
  result = qword_1016B0F50;
  if (!qword_1016B0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F50);
  }

  return result;
}

unint64_t sub_1009B5FEC()
{
  result = qword_1016B0F58;
  if (!qword_1016B0F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F58);
  }

  return result;
}

unint64_t sub_1009B6044()
{
  result = qword_1016B0F60;
  if (!qword_1016B0F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F60);
  }

  return result;
}

unint64_t sub_1009B609C()
{
  result = qword_1016B0F68;
  if (!qword_1016B0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F68);
  }

  return result;
}

unint64_t sub_1009B60F4()
{
  result = qword_1016B0F70;
  if (!qword_1016B0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0F70);
  }

  return result;
}

void *sub_1009B6150@<X0>(uint64_t *a1@<X8>)
{
  v2._object = 0x8000000101367730;
  v2._countAndFlagsBits = 0xD000000000000010;
  prohibitAsyncContext(functionName:)(v2);
  result = sub_1009BD934();
  *a1 = result;
  return result;
}

uint64_t sub_1009B6194()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  if (qword_101694B28 != -1)
  {
    swift_once();
  }

  return sub_10013F190(qword_1016B0F98, 0, 0);
}

uint64_t sub_1009B622C@<X0>(void *a1@<X8>)
{
  if (qword_101694B58 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = *(off_1016B0FC8 + 5);
}

uint64_t sub_1009B62D4()
{
  type metadata accessor for LocalPairingMonitor();
  v0 = swift_allocObject();
  sub_1000BC4D4(&qword_1016B1260, &unk_1013D02F0);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  sub_1000041A4(&qword_1016B1268, &qword_1016B1260, &unk_1013D02F0, &protocol conformance descriptor for PassthroughSubject<A, B>);

  v1 = Publisher.eraseToAnyPublisher()();

  *(v0 + 24) = v1;
  qword_1016B0F88 = v0;
  return result;
}

uint64_t sub_1009B63BC()
{
  if (qword_101694B28 != -1)
  {
    swift_once();
  }

  type metadata accessor for FinderStateManager(0);
  swift_allocObject();

  result = sub_1002EC088(v0);
  qword_1016B0F90 = result;
  return result;
}

uint64_t sub_1009B643C()
{
  type metadata accessor for FMIPStateManager();
  swift_allocObject();
  v0 = sub_1004F23D4();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  result = sub_10013F190(v0, 0, 0);
  qword_1016B0F98 = v0;
  return result;
}

uint64_t sub_1009B64FC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

void *sub_1009B6550()
{
  if (qword_101694B18 != -1)
  {
    swift_once();
  }

  type metadata accessor for CloudKitIDSUpdateManager();
  swift_allocObject();

  result = sub_100422334(v0);
  qword_1016B0FA8 = result;
  return result;
}

void *sub_1009B65D0()
{
  result = sub_1009B65F0();
  qword_1016B0FB0 = result;
  return result;
}

void *sub_1009B65F0()
{
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v0 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694B18 != -1)
  {
    swift_once();
  }

  type metadata accessor for CloudKitIDSUpdateManager();
  swift_allocObject();

  v10 = sub_100422334(v5);
  type metadata accessor for Cryptor();
  swift_allocObject();
  v9 = sub_1010B54C0(0x74536E6F63616542, 0xEE0079654B65726FLL, 0x74536E6F63616542, 0xEB0000000065726FLL);
  if (qword_101694B10 != -1)
  {
    swift_once();
  }

  v6 = qword_1016B0F80;
  sub_1000BC488();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v1);

  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_1009BD8EC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v7 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for BeaconStore(0);
  swift_allocObject();
  return sub_100A96C98(v9, v6, v10, v7);
}

id sub_1009B6970()
{
  if (qword_101694B40 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(type metadata accessor for TagCommandManager());

  result = sub_10089263C(v1, sub_1009BE654, 0);
  qword_1016B0FB8 = result;
  return result;
}

id sub_1009B6A00(uint64_t a1)
{
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1)
  {
    swift_unknownObjectRetain();
  }

  v2 = [objc_allocWithZone(CLFindMyAccessoryManager) initWithDelegate:v1 delegateQueue:0];
  swift_unknownObjectRelease();
  return v2;
}

double *sub_1009B6A88()
{
  result = sub_1009B6AA8();
  qword_1016B0FC0 = result;
  return result;
}

double *sub_1009B6AA8()
{
  if (qword_101694B40 != -1)
  {
    swift_once();
  }

  v0 = qword_1016B0FB0;
  if (qword_101694B28 != -1)
  {
    swift_once();
  }

  v1 = qword_1016B0F98;
  if (qword_101694B10 != -1)
  {
    swift_once();
  }

  v2 = qword_1016B0F80;
  if (qword_101694B18 != -1)
  {
    swift_once();
  }

  v3 = qword_1016B0F88;
  if (qword_101694B48 != -1)
  {
    swift_once();
  }

  v4 = qword_1016B0FB8;
  if (qword_101694B30 != -1)
  {
    swift_once();
  }

  v5 = qword_1016B0FA0;
  if (qword_101694B60 != -1)
  {
    swift_once();
  }

  v6 = qword_1016B0FD0;
  type metadata accessor for BeaconManagerService(0);
  swift_allocObject();

  v7 = v4;

  return sub_100A2CAD0(v0, v1, v2, v3, v5, v4, v6);
}

uint64_t *sub_1009B6CD4()
{
  result = sub_1009B6CF4();
  off_1016B0FC8 = result;
  return result;
}

uint64_t *sub_1009B6CF4()
{
  if (qword_101694B50 != -1)
  {
    swift_once();
  }

  v0 = qword_1016B0FC0;
  if (qword_101694B40 != -1)
  {
    swift_once();
  }

  v1 = qword_1016B0FB0;
  v2 = qword_101694B28;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1016B0F98;
  v4 = qword_101694B38;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_1016B0FA8;
  v16 = type metadata accessor for BeaconManagerService(0);
  v17 = &off_101643D38;
  v15[0] = v0;
  type metadata accessor for BeaconSharingManager();
  v6 = swift_allocObject();
  v7 = sub_10015049C(v15, v16);
  __chkstk_darwin(v7);
  v9 = (&v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;

  v12 = sub_1009BC820(v11, v1, v3, v5, v6);

  sub_100007BAC(v15);
  return v12;
}

void *sub_1009B6F44()
{
  if (qword_101694B40 != -1)
  {
    swift_once();
  }

  v0 = qword_1016B0FB0;
  v1 = qword_101694B30;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_1016B0FA0;
  type metadata accessor for AccessoryMetadataManager();
  swift_allocObject();

  result = sub_10035ADBC(v0, v2);
  qword_1016B0FD0 = result;
  return result;
}

uint64_t sub_1009B7018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1016951A8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v5 = *(a1 + 56);
  swift_beginAccess();
  v6 = v5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = qword_10177C528;
  qword_10177C528 = 0x8000000000000000;
  sub_100FFE0D8(a2, a3, v6, isUniquelyReferenced_nonNull_native);

  qword_10177C528 = v10;
  return swift_endAccess();
}

void *sub_1009B710C(void *a1)
{
  v7 = &type metadata for FindMyNetworkPublishDateProviderFactory;
  v8 = &off_101612AA8;
  swift_defaultActor_initialize();
  a1[14] = 0xD00000000000001DLL;
  a1[15] = 0x8000000101367710;
  type metadata accessor for DeviceIdentityUtility(0);
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  *(v2 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v2 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 4;
  a1[16] = v2;
  sub_1000BC4D4(&qword_1016B1270, &qword_101390A00);
  a1[17] = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  sub_10000A748(&v6, (a1 + 18));
  return a1;
}

uint64_t sub_1009B723C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  sub_1000BC4D4(&qword_1016B7C50, &qword_1013DD730);
  v5[16] = swift_task_alloc();
  type metadata accessor for UUID();
  v5[17] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v5[18] = swift_task_alloc();
  v5[19] = sub_1009BD8EC(&unk_1016B1240, type metadata accessor for BTDiscoveryManager, &unk_1013B2580);
  v7 = type metadata accessor for BubbleManager();
  v5[5] = v7;
  v5[6] = &off_10164DA50;
  v5[2] = a1;
  v5[20] = sub_1009BD8EC(&qword_1016B7E00, type metadata accessor for SystemMonitorService, &unk_1013AABD8);
  v5[21] = sub_1009BD8EC(&qword_1016B1250, &type metadata accessor for PairingService, &protocol conformance descriptor for PairingService);
  type metadata accessor for DiscoveryService();
  v5[22] = swift_allocObject();
  sub_10015049C((v5 + 2), v7);
  v8 = *(v7 - 8);
  v9 = swift_task_alloc();
  v5[23] = v9;
  (*(v8 + 16))();
  v10 = *v9;
  v5[10] = v7;
  v5[11] = &off_10164DA50;
  v5[7] = v10;

  return _swift_task_switch(sub_1009B74C0, 0, 0);
}

uint64_t sub_1009B74C0()
{
  v1 = v0[22];
  v2 = v0[18];
  v14 = v0[16];
  swift_defaultActor_initialize();
  v1[14] = 0xD000000000000010;
  v1[15] = 0x8000000101367670;
  type metadata accessor for UserSessionStateManager(0);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 14) = 0;
  *(v3 + 15) = 0;
  *(v3 + 16) = _swiftEmptyArrayStorage;
  *(v3 + 17) = _swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtC12searchpartyd23UserSessionStateManager_state;
  v5 = enum case for UserSessionState.idle(_:);
  v6 = type metadata accessor for UserSessionState();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  v1[16] = v3;
  type metadata accessor for WorkItemQueue();
  v7 = type metadata accessor for WorkItemQueue.WarningOptions();
  v8 = *(*(v7 - 8) + 56);
  v8(v2, 1, 1, v7);
  UUID.init()();
  v1[17] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  sub_1000BC4D4(&qword_1016B1258, &qword_1013D02E8);
  swift_allocObject();
  v1[18] = AsyncStreamProvider.init()();
  type metadata accessor for DiscoveryServiceStateManager(0);
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  v9[14] = 0;
  v9[15] = 0;
  v9[16] = _swiftEmptyArrayStorage;
  v9[17] = _swiftEmptyArrayStorage;
  type metadata accessor for DiscoveryState(0);
  swift_storeEnumTagMultiPayload();
  v1[19] = v9;
  v8(v2, 1, 1, v7);
  UUID.init()();
  v1[20] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v1[21] = &_swiftEmptySetSingleton;
  v1[23] = 0;
  v1[24] = 0;
  v1[22] = _swiftEmptyDictionarySingleton;
  v1[25] = sub_10090ABB8(_swiftEmptyArrayStorage);
  v1[26] = 0;
  type metadata accessor for DiscoverySession(0);
  swift_allocObject();
  v1[27] = sub_100F04FA4();
  v1[28] = _swiftEmptyArrayStorage;
  type metadata accessor for TimeTracker();
  v1[29] = TimeTracker.__allocating_init()();
  v1[50] = 0;
  sub_10001F280((v0 + 7), (v1 + 30));
  v10 = type metadata accessor for RSSIValue();
  (*(*(v10 - 8) + 56))(v14, 1, 1, v10);
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_1009B7838;
  v12 = v0[16];

  return sub_10059D518(v12);
}

uint64_t sub_1009B7838(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  *(v3 + 200) = a1;
  *(v3 + 208) = a2;

  sub_10000B3A8(v4, &qword_1016B7C50, &qword_1013DD730);

  return _swift_task_switch(sub_1009B7968, 0, 0);
}

uint64_t sub_1009B7968()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  *(v1 + 280) = *(v0 + 200);
  *(v1 + 296) = v8;
  *(v1 + 304) = v3;
  *(v1 + 312) = v7;
  *(v1 + 320) = v2;
  *(v1 + 328) = v6;
  *(v1 + 336) = v4;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  *(v1 + 392) = *(v5 + 6);
  *(v1 + 360) = v10;
  *(v1 + 376) = v11;
  *(v1 + 344) = v9;
  return _swift_task_switch(sub_1009B79C4, v1, 0);
}

uint64_t sub_1009B79C4()
{
  sub_100007BAC(v0 + 7);
  sub_100007BAC(v0 + 2);

  v1 = v0[1];
  v2 = v0[22];

  return v1(v2);
}

uint64_t sub_1009B7A64()
{
  sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v0[76] = swift_task_alloc();
  type metadata accessor for UUID();
  v0[77] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v0[78] = swift_task_alloc();
  v1 = sub_1000BC4D4(&qword_1016C2F20, &qword_1013F7790);
  v0[79] = v1;
  v0[80] = *(v1 - 8);
  v0[81] = swift_task_alloc();
  v2 = type metadata accessor for UnsafeBlockingQueueConfiguration();
  v0[82] = v2;
  v0[83] = *(v2 - 8);
  v0[84] = swift_task_alloc();

  return _swift_task_switch(sub_1009B7C24, 0, 0);
}

uint64_t sub_1009B7C24()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  UnsafeBlockingQueueConfiguration.init(verbose:queueDurationThreshold:runDurationThreshold:)();
  setUnsafeQueueConfiguration(context:config:)();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[85] = v4;
  v5 = sub_1000BC4D4(&unk_1016B0FF0, &qword_1013D0298);
  *v4 = v0;
  v4[1] = sub_1009B7D84;

  return unsafeBlocking<A>(context:_:)(v0 + 72, 0x655379636167654CLL, 0xEE00736563697672, sub_1009B6150, 0, v5);
}

uint64_t sub_1009B7D84()
{

  return _swift_task_switch(sub_1009B7E80, 0, 0);
}

uint64_t sub_1009B7E80()
{
  v1 = v0[72];
  if (*(v1 + 16))
  {
    type metadata accessor for LegacyServiceContainer();
    v2 = swift_allocObject();
    swift_defaultActor_initialize();
    v2[15] = 0xD000000000000017;
    v2[16] = 0x8000000101367180;
    v2[14] = v1;
    v3 = sub_100A5E68C(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = sub_100A5E68C((v4 > 1), v5 + 1, 1, v3);
    }

    v6 = sub_1009BD8EC(&unk_101698D70, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
    v3[2] = v5 + 1;
    v7 = &v3[2 * v5];
    v7[4] = v2;
    v7[5] = v6;
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
  }

  v0[86] = v3;
  v8 = swift_task_alloc();
  v0[87] = v8;
  *v8 = v0;
  v8[1] = sub_1009B8028;

  return unsafeBlocking<A>(_:)(v8, sub_1009B6194, 0, &type metadata for () + 1);
}

uint64_t sub_1009B8028()
{

  return _swift_task_switch(sub_1009B8124, 0, 0);
}

uint64_t sub_1009B8124()
{
  if (qword_101694B20 != -1)
  {
    swift_once();
  }

  *(v0 + 704) = qword_1016B0F90;
  type metadata accessor for FinderStateObserver(0);
  swift_allocObject();

  v2 = sub_100847B54(v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 688);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_100A5E68C(0, v4[2] + 1, 1, *(v0 + 688));
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_100A5E68C((v5 > 1), v6 + 1, 1, v4);
  }

  v7 = sub_1009BD8EC(&unk_1016B1000, type metadata accessor for FinderStateObserver, &unk_1013BF148);
  v4[2] = v6 + 1;
  v8 = &v4[2 * v6];
  v8[4] = v2;
  v8[5] = v7;
  *(v0 + 240) = &type metadata for FindMyNetworkPublishDateProviderFactory;
  *(v0 + 248) = &off_101612AA8;
  type metadata accessor for FindMyNetworkPublisherService();
  v9 = swift_allocObject();
  sub_10015049C(v0 + 216, &type metadata for FindMyNetworkPublishDateProviderFactory);
  v10 = sub_1009B710C(v9);
  sub_100007BAC((v0 + 216));
  v12 = v4[2];
  v11 = v4[3];
  if (v12 >= v11 >> 1)
  {
    v4 = sub_100A5E68C((v11 > 1), v12 + 1, 1, v4);
  }

  v13 = sub_1009BD8EC(&unk_10169BA60, type metadata accessor for FindMyNetworkPublisherService, &unk_1013C4DF8);
  v4[2] = v12 + 1;
  v14 = &v4[2 * v12];
  v14[4] = v10;
  v14[5] = v13;
  type metadata accessor for ObservationPruneSchedulerService();
  v15 = swift_allocObject();
  swift_defaultActor_initialize();
  v15[14] = 0xD000000000000020;
  v15[15] = 0x80000001013671A0;
  v15[16] = 0;
  v17 = v4[2];
  v16 = v4[3];
  if (v17 >= v16 >> 1)
  {
    v4 = sub_100A5E68C((v16 > 1), v17 + 1, 1, v4);
  }

  v18 = sub_1009BD8EC(&qword_1016B1010, type metadata accessor for ObservationPruneSchedulerService, &unk_1013B8478);
  v4[2] = v17 + 1;
  v19 = &v4[2 * v17];
  v19[4] = v15;
  v19[5] = v18;
  *(v0 + 280) = &type metadata for FindMyNetworkPublishDateProviderFactory;
  *(v0 + 288) = &off_101612AA8;
  type metadata accessor for FindMyNetworkPublishActivityService();
  v20 = swift_allocObject();
  sub_10015049C(v0 + 256, &type metadata for FindMyNetworkPublishDateProviderFactory);
  *(v0 + 320) = &type metadata for FindMyNetworkPublishDateProviderFactory;
  *(v0 + 328) = &off_101612AA8;
  swift_defaultActor_initialize();
  *(v20 + 112) = 0xD000000000000023;
  *(v20 + 120) = 0x80000001013671D0;
  *(v20 + 168) = _swiftEmptyDictionarySingleton;
  *(v20 + 176) = 1;
  sub_10000A748((v0 + 296), v20 + 128);
  sub_100007BAC((v0 + 256));
  v22 = v4[2];
  v21 = v4[3];
  if (v22 >= v21 >> 1)
  {
    v4 = sub_100A5E68C((v21 > 1), v22 + 1, 1, v4);
  }

  v23 = sub_1009BD8EC(&qword_101696C78, type metadata accessor for FindMyNetworkPublishActivityService, &unk_10138B4E8);
  v4[2] = v22 + 1;
  v24 = &v4[2 * v22];
  v24[4] = v20;
  v24[5] = v23;
  type metadata accessor for AdvertisementCacheService(0);
  swift_allocObject();
  v25 = sub_100264750();
  v27 = v4[2];
  v26 = v4[3];
  if (v27 >= v26 >> 1)
  {
    v4 = sub_100A5E68C((v26 > 1), v27 + 1, 1, v4);
  }

  v28 = sub_1009BD8EC(&qword_10169BA20, type metadata accessor for AdvertisementCacheService, &unk_101395540);
  v4[2] = v27 + 1;
  v29 = &v4[2 * v27];
  v29[4] = v25;
  v29[5] = v28;
  type metadata accessor for FileAttributionService();
  v30 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v30 + 112) = 0xD000000000000016;
  *(v30 + 120) = 0x8000000101367200;
  v32 = v4[2];
  v31 = v4[3];
  if (v32 >= v31 >> 1)
  {
    v4 = sub_100A5E68C((v31 > 1), v32 + 1, 1, v4);
  }

  *(v0 + 712) = v4;
  v33 = sub_1009BD8EC(&qword_1016B1018, type metadata accessor for FileAttributionService, &unk_1013EFB38);
  v4[2] = v32 + 1;
  v34 = &v4[2 * v32];
  v34[4] = v30;
  v34[5] = v33;
  type metadata accessor for AppActivity();
  *(v0 + 720) = swift_initStackObject();
  *(v0 + 728) = sub_100A586D8();
  if (qword_101694B18 != -1)
  {
    swift_once();
  }

  *(v0 + 736) = qword_1016B0F88;
  type metadata accessor for CloudKitIDSUpdateManager();
  *(v0 + 744) = swift_initStackObject();

  *(v0 + 752) = sub_100422334(v35);
  if (qword_101694B28 != -1)
  {
    swift_once();
  }

  v36 = qword_1016B0F98;
  type metadata accessor for PencilPairingService(0);
  swift_allocObject();

  v37 = swift_task_alloc();
  *(v0 + 760) = v37;
  *v37 = v0;
  v37[1] = sub_1009B8744;

  return sub_100D778CC(v36);
}

uint64_t sub_1009B8744(uint64_t a1)
{
  *(*v1 + 768) = a1;

  return _swift_task_switch(sub_1009B8844, 0, 0);
}

uint64_t sub_1009B8844()
{
  v1 = v0[96];
  v2 = v0[89];
  if (v1)
  {
    v3 = v2[2];
    v4 = v2[3];

    if (v3 >= v4 >> 1)
    {
      v2 = sub_100A5E68C((v4 > 1), v3 + 1, 1, v2);
    }

    v5 = sub_1009BD8EC(&qword_10169A090, type metadata accessor for PencilPairingService, &unk_1013E8708);
    v2[2] = v3 + 1;
    v6 = &v2[2 * v3];
    v6[4] = v1;
    v6[5] = v5;
    type metadata accessor for LocalFindableLostModeDetectionService();
    swift_allocObject();
    v7 = sub_101025584();
    v9 = v2[2];
    v8 = v2[3];
    if (v9 >= v8 >> 1)
    {
      v2 = sub_100A5E68C((v8 > 1), v9 + 1, 1, v2);
    }

    v10 = sub_1009BD8EC(&unk_1016BC560, type metadata accessor for LocalFindableLostModeDetectionService, &unk_1013F7ED8);
    v2[2] = v9 + 1;
    v11 = &v2[2 * v9];
    v11[4] = v7;
    v11[5] = v10;
  }

  v0[97] = v2;
  type metadata accessor for AccessoryConnectionService();
  swift_allocObject();
  v12 = swift_task_alloc();
  v0[98] = v12;
  *v12 = v0;
  v12[1] = sub_1009B8A18;

  return sub_1008D26C0();
}

uint64_t sub_1009B8A18(uint64_t a1)
{
  *(*v1 + 792) = a1;

  return _swift_task_switch(sub_1009B8B18, 0, 0);
}

uint64_t sub_1009B8B18()
{
  v1 = v0[99];
  v2 = v0[97];
  if (v1)
  {
    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = sub_100A5E68C((v3 > 1), v4 + 1, 1, v0[97]);
    }

    v5 = sub_1009BD8EC(&unk_1016AD620, type metadata accessor for AccessoryConnectionService, &unk_1013C3F20);
    v2[2] = v4 + 1;
    v6 = &v2[2 * v4];
    v6[4] = v1;
    v6[5] = v5;
  }

  v0[100] = v2;
  type metadata accessor for LocalFindableConnectionMaterialService();
  v7 = swift_allocObject();
  v0[101] = v7;
  swift_defaultActor_initialize();
  v7[14] = 0xD000000000000026;
  v7[15] = 0x8000000101367220;
  type metadata accessor for XPCSessionManager();
  swift_allocObject();
  v8 = XPCSessionManager.init(name:)();
  v7[17] = 0;
  v7[18] = 0;
  v7[16] = v8;

  return _swift_task_switch(sub_1009B8C74, 0, 0);
}

uint64_t sub_1009B8C74()
{
  v1 = v0[100];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5E68C((v2 > 1), v3 + 1, 1, v0[100]);
  }

  v0[102] = v1;
  v4 = v0[101];
  v5 = sub_1009BD8EC(&unk_1016B1020, type metadata accessor for LocalFindableConnectionMaterialService, &unk_1013F2240);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for CloudStorageService();
  swift_allocObject();
  v7 = swift_task_alloc();
  v0[103] = v7;
  *v7 = v0;
  v7[1] = sub_1009B8D9C;

  return sub_10084AD24();
}

uint64_t sub_1009B8D9C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 832) = a1;
  *(v3 + 840) = v1;

  if (v1)
  {
    v4 = sub_1009B9108;
  }

  else
  {
    v4 = sub_1009B8EB4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1009B8EB4()
{
  v1 = v0[104];
  v2 = v0[102];
  v3 = v2[2];
  v4 = v2[3];

  if (v3 >= v4 >> 1)
  {
    v2 = sub_100A5E68C((v4 > 1), v3 + 1, 1, v2);
    v1 = v0[104];
  }

  v0[106] = v2;
  v5 = sub_1009BD8EC(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  v2[2] = v3 + 1;
  v6 = &v2[2 * v3];
  v6[4] = v1;
  v6[5] = v5;
  type metadata accessor for LocalStorageService();
  swift_allocObject();
  v7 = swift_task_alloc();
  v0[107] = v7;
  *v7 = v0;
  v7[1] = sub_1009B8FF0;

  return sub_100B9D2C0();
}

uint64_t sub_1009B8FF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 864) = a1;
  *(v3 + 872) = v1;

  if (v1)
  {
    v4 = sub_1009BA284;
  }

  else
  {
    v4 = sub_1009B9124;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1009B9124()
{
  v1 = v0[108];
  v2 = v0[106];
  v3 = v2[2];
  v4 = v2[3];

  if (v3 >= v4 >> 1)
  {
    v2 = sub_100A5E68C((v4 > 1), v3 + 1, 1, v2);
    v1 = v0[108];
  }

  v0[110] = v2;
  v5 = sub_1009BD8EC(&unk_1016B1030, type metadata accessor for LocalStorageService, &unk_1013DB940);
  v2[2] = v3 + 1;
  v6 = &v2[2 * v3];
  v6[4] = v1;
  v6[5] = v5;
  type metadata accessor for AccessoryPairingAnalyticsService();
  swift_allocObject();
  v7 = swift_task_alloc();
  v0[111] = v7;
  *v7 = v0;
  v7[1] = sub_1009B9260;

  return sub_10026AF7C();
}

uint64_t sub_1009B9260(uint64_t a1)
{
  *(*v1 + 896) = a1;

  return _swift_task_switch(sub_1009B9360, 0, 0);
}

uint64_t sub_1009B9360()
{
  v1 = v0[110];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5E68C((v2 > 1), v3 + 1, 1, v0[110]);
  }

  v0[113] = v1;
  v4 = v0[112];
  v5 = sub_1009BD8EC(&qword_10169BCB0, type metadata accessor for AccessoryPairingAnalyticsService, &unk_1013959D0);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for AccessoryConfigurationService();
  swift_allocObject();
  v7 = swift_task_alloc();
  v0[114] = v7;
  *v7 = v0;
  v7[1] = sub_1009B9488;

  return sub_1010637D4();
}

uint64_t sub_1009B9488(uint64_t a1)
{
  *(*v1 + 920) = a1;

  return _swift_task_switch(sub_1009B9588, 0, 0);
}

uint64_t sub_1009B9588()
{
  v95 = v0;
  v1 = v0[113];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5E68C((v2 > 1), v3 + 1, 1, v0[113]);
  }

  v4 = v0[115];
  v5 = sub_1009BD8EC(&unk_1016B1040, type metadata accessor for AccessoryConfigurationService, &unk_1013FD508);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  if (qword_101694B40 != -1)
  {
    swift_once();
  }

  v7 = qword_1016B0FB0;
  type metadata accessor for BeaconStoreActor();
  v8 = swift_allocObject();
  v0[116] = v8;
  swift_retain_n();
  swift_defaultActor_initialize();
  v8[14] = 0xD000000000000010;
  v8[15] = 0x800000010134A8C0;
  v92 = v7;
  v8[16] = v7;
  v10 = v1[2];
  v9 = v1[3];

  if (v10 >= v9 >> 1)
  {
    v1 = sub_100A5E68C((v9 > 1), v10 + 1, 1, v1);
  }

  v11 = v0[88];
  v12 = sub_1009BD8EC(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  v1[2] = v10 + 1;
  v13 = &v1[2 * v10];
  v13[4] = v8;
  v13[5] = v12;
  v14 = *(v7 + 64);
  v15 = OBJC_IVAR____TtC12searchpartyd18FinderStateManager_beaconFindMyAccessoryAssociatedPublisher;
  if (*(v11 + OBJC_IVAR____TtC12searchpartyd18FinderStateManager_beaconFindMyAccessoryAssociatedPublisher))
  {
  }

  else
  {
    v16 = v0[88];
    v90 = v8;
    v17 = v0[81];
    v91 = v0[80];
    v89 = v0[79];
    v18 = v0[78];
    v0[73] = v14;
    v19 = *(v16 + 16);
    v0[74] = v19;
    v20 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
    swift_retain_n();
    v88 = v19;
    sub_1000BC4D4(&unk_1016B1050, &unk_1013A4F40);
    sub_1000BC488();
    sub_1000041A4(&unk_1016B1060, &unk_1016B1050, &unk_1013A4F40, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1009BD8EC(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v18, &unk_1016B0FE0, &unk_101391980);

    sub_1000041A4(&unk_1016B1070, &qword_1016C2F20, &qword_1013F7790, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

    v21 = v17;
    v8 = v90;
    v22 = Publisher<>.sink(receiveValue:)();

    (*(v91 + 8))(v21, v89);
    *(v16 + OBJC_IVAR____TtC12searchpartyd18FinderStateManager_cancellable) = v22;
  }

  *(v11 + v15) = v14;

  type metadata accessor for OwnDevicePublishActivityService(0);
  v23 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v23 + 112) = 0xD00000000000001FLL;
  *(v23 + 120) = 0x80000001013672B0;
  v24 = OBJC_IVAR____TtC12searchpartyd31OwnDevicePublishActivityService_configurationSubscription;
  v25 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
  *(v23 + OBJC_IVAR____TtC12searchpartyd31OwnDevicePublishActivityService_activity) = 0;
  v27 = v1[2];
  v26 = v1[3];
  if (v27 >= v26 >> 1)
  {
    v1 = sub_100A5E68C((v26 > 1), v27 + 1, 1, v1);
  }

  v28 = sub_1009BD8EC(&unk_1016B1080, type metadata accessor for OwnDevicePublishActivityService, &unk_1013EF9B8);
  v1[2] = v27 + 1;
  v29 = &v1[2 * v27];
  v29[4] = v23;
  v29[5] = v28;
  type metadata accessor for CompanionPublishActivity();
  v30 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v30 + 112) = 0xD000000000000018;
  *(v30 + 120) = 0x80000001013672D0;
  v32 = v1[2];
  v31 = v1[3];
  if (v32 >= v31 >> 1)
  {
    v1 = sub_100A5E68C((v31 > 1), v32 + 1, 1, v1);
  }

  v33 = sub_1009BD8EC(&qword_1016A00B0, type metadata accessor for CompanionPublishActivity, a9);
  v1[2] = v32 + 1;
  v34 = &v1[2 * v32];
  v34[4] = v30;
  v34[5] = v33;
  type metadata accessor for ObservationDatabase(0);
  swift_allocObject();
  v35 = sub_1011BB354(0);
  v0[117] = v35;
  v0[118] = type metadata accessor for BeaconKeyService();
  memset(v93, 0, sizeof(v93));
  v94 = 0;
  swift_allocObject();
  swift_retain_n();
  v36 = sub_10098F800(v93, v35);
  v38 = v1[2];
  v37 = v1[3];
  if (v38 >= v37 >> 1)
  {
    v1 = sub_100A5E68C((v37 > 1), v38 + 1, 1, v1);
  }

  v39 = sub_1009BD8EC(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  v0[119] = v39;
  v1[2] = v38 + 1;
  v40 = &v1[2 * v38];
  v40[4] = v36;
  v40[5] = v39;
  type metadata accessor for DistributedNotificationService();
  swift_allocObject();
  v41 = sub_100D56608();
  v43 = v1[2];
  v42 = v1[3];
  if (v43 >= v42 >> 1)
  {
    v1 = sub_100A5E68C((v42 > 1), v43 + 1, 1, v1);
  }

  v44 = sub_1009BD8EC(&qword_1016A51C8, type metadata accessor for DistributedNotificationService, &unk_1013E5D40);
  v1[2] = v43 + 1;
  v45 = &v1[2 * v43];
  v45[4] = v41;
  v45[5] = v44;
  type metadata accessor for NotifyWhenFoundManager();
  swift_allocObject();
  v46 = sub_1003585D4();
  v48 = v1[2];
  v47 = v1[3];
  if (v48 >= v47 >> 1)
  {
    v1 = sub_100A5E68C((v47 > 1), v48 + 1, 1, v1);
  }

  v49 = sub_1009BD8EC(&unk_1016B10A0, type metadata accessor for NotifyWhenFoundManager, &unk_10139D670);
  v1[2] = v48 + 1;
  v50 = &v1[2 * v48];
  v50[4] = v46;
  v50[5] = v49;
  My = type metadata accessor for Feature.FindMy();
  v0[120] = My;
  v0[45] = My;
  v52 = sub_1009BD8EC(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v0[121] = v52;
  v0[46] = v52;
  v53 = sub_1000280DC(v0 + 42);
  v54 = enum case for Feature.FindMy.networkScalingImprovements(_:);
  v55 = *(My - 8);
  v56 = *(v55 + 104);
  v0[122] = v56;
  v0[123] = (v55 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v56(v53, v54, My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 42);
  if (My)
  {
    type metadata accessor for DeviceBeaconPayloadPublisher();
    swift_allocObject();

    v58 = sub_100853228(v57);
    v60 = v1[2];
    v59 = v1[3];
    if (v60 >= v59 >> 1)
    {
      v1 = sub_100A5E68C((v59 > 1), v60 + 1, 1, v1);
    }

    v61 = sub_1009BD8EC(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher, &unk_1013BF878);
    v1[2] = v60 + 1;
    v62 = &v1[2 * v60];
    v62[4] = v58;
    v62[5] = v61;
  }

  type metadata accessor for DelegatedBeaconPayloadPublisher();
  v63 = swift_allocObject();
  v0[124] = v63;

  swift_defaultActor_initialize();
  v63[14] = 0xD00000000000001FLL;
  v63[15] = 0x80000001013672F0;
  v0[125] = type metadata accessor for WorkItemQueue();
  UUID.init()();
  v63[16] = WorkItemQueue.__allocating_init(identifier:)();
  sub_1000BC4D4(&unk_1016B10B0, &qword_1013D02A0);
  v64 = swift_allocObject();
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  v64[5] = v65;
  UUID.init()();
  v64[6] = WorkItemQueue.__allocating_init(identifier:)();
  v64[7] = _swiftEmptyDictionarySingleton;
  v63[17] = sub_100F04FA4();
  v63[18] = v8;
  v66 = v1[2];
  v67 = v1[3];

  if (v66 >= v67 >> 1)
  {
    v1 = sub_100A5E68C((v67 > 1), v66 + 1, 1, v1);
  }

  v68 = sub_1009BD8EC(&unk_1016B10C0, type metadata accessor for DelegatedBeaconPayloadPublisher, &unk_10138B158);
  v1[2] = v66 + 1;
  v69 = &v1[2 * v66];
  v69[4] = v63;
  v69[5] = v68;
  type metadata accessor for APSNotificationService();
  swift_allocObject();
  v70 = sub_100E802F8(0, 0);
  v72 = v1[2];
  v71 = v1[3];
  if (v72 >= v71 >> 1)
  {
    v1 = sub_100A5E68C((v71 > 1), v72 + 1, 1, v1);
  }

  v73 = sub_1009BD8EC(&qword_101698D40, type metadata accessor for APSNotificationService, &unk_1013EB9A0);
  v1[2] = v72 + 1;
  v74 = &v1[2 * v72];
  v74[4] = v70;
  v74[5] = v73;
  type metadata accessor for WildModeAssociationRecordsPublisher();
  swift_allocObject();
  v75 = sub_100BA4BF8();
  v0[126] = v75;
  v76 = v1[2];
  v77 = v1[3];

  if (v76 >= v77 >> 1)
  {
    v1 = sub_100A5E68C((v77 > 1), v76 + 1, 1, v1);
  }

  v78 = sub_1009BD8EC(&unk_1016B10D0, type metadata accessor for WildModeAssociationRecordsPublisher, &unk_1013DBE00);
  v1[2] = v76 + 1;
  v79 = &v1[2 * v76];
  v79[4] = v75;
  v79[5] = v78;
  type metadata accessor for BatteryLevelService();
  v80 = swift_allocObject();
  swift_defaultActor_initialize();
  v80[14] = 0xD000000000000013;
  v80[15] = 0x8000000101367310;
  v80[16] = _swiftEmptyDictionarySingleton;
  v82 = v1[2];
  v81 = v1[3];
  if (v82 >= v81 >> 1)
  {
    v1 = sub_100A5E68C((v81 > 1), v82 + 1, 1, v1);
  }

  v0[127] = v1;
  v83 = sub_1009BD8EC(&qword_1016A24B8, type metadata accessor for BatteryLevelService, &unk_1013F9320);
  v1[2] = v82 + 1;
  v84 = &v1[2 * v82];
  v84[4] = v80;
  v84[5] = v83;
  v85 = objc_allocWithZone(type metadata accessor for TagCommandManager());
  v0[128] = sub_10089263C(v92, sub_1009BE654, 0);
  type metadata accessor for OwnerCommandService(0);
  swift_allocObject();
  v86 = swift_task_alloc();
  v0[129] = v86;
  *v86 = v0;
  v86[1] = sub_1009BA2A0;

  return sub_10121B1FC();
}

uint64_t sub_1009BA2A0(uint64_t a1)
{
  *(*v1 + 1040) = a1;

  return _swift_task_switch(sub_1009BA3A0, 0, 0);
}

uint64_t sub_1009BA3A0()
{
  v112 = v0;
  v1 = *(v0 + 1016);
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5E68C((v2 > 1), v3 + 1, 1, *(v0 + 1016));
  }

  v4 = *(v0 + 1040);
  v5 = sub_1009BD8EC(&unk_1016B10E0, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for FirstUnlockService();
  Unlock = FirstUnlockService.__allocating_init()();
  v9 = v1[2];
  v8 = v1[3];
  if (v9 >= v8 >> 1)
  {
    v1 = sub_100A5E68C((v8 > 1), v9 + 1, 1, v1);
  }

  v10 = *(v0 + 976);
  v11 = sub_1009BD8EC(&qword_10169BD10, &type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  v106 = *(v0 + 960);
  v1[2] = v9 + 1;
  v12 = &v1[2 * v9];
  v12[4] = Unlock;
  v12[5] = v11;
  *(v0 + 400) = v106;
  v13 = sub_1000280DC((v0 + 376));
  v14 = enum case for Feature.FindMy.itemSharing(_:);
  v10(v13, enum case for Feature.FindMy.itemSharing(_:), v106);
  v15 = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 376));
  if (v15)
  {
    type metadata accessor for FamilyCircleService();
    v16 = swift_allocObject();
    swift_defaultActor_initialize();
    v16[14] = 0xD000000000000013;
    v16[15] = 0x8000000101367430;
    v16[16] = _swiftEmptyArrayStorage;
    v16[17] = 0;
    v16[18] = 0;
    v16[19] = 0;
    v16[20] = _swiftEmptyDictionarySingleton;
    v18 = v1[2];
    v17 = v1[3];
    if (v18 >= v17 >> 1)
    {
      v1 = sub_100A5E68C((v17 > 1), v18 + 1, 1, v1);
    }

    v19 = sub_1009BD8EC(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
    v1[2] = v18 + 1;
    v20 = &v1[2 * v18];
    v20[4] = v16;
    v20[5] = v19;
    type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
    swift_allocObject();
    v21 = sub_100D1BA90();
    v23 = v1[2];
    v22 = v1[3];
    if (v23 >= v22 >> 1)
    {
      v1 = sub_100A5E68C((v22 > 1), v23 + 1, 1, v1);
    }

    v24 = sub_1009BD8EC(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
    v1[2] = v23 + 1;
    v25 = &v1[2 * v23];
    v25[4] = v21;
    v25[5] = v24;
    type metadata accessor for PeerTrustService();
    v26 = swift_allocObject();
    swift_defaultActor_initialize();
    v26[14] = 0xD000000000000010;
    v26[15] = 0x8000000101367450;
    v26[16] = 0;
    v27 = sub_1009BD8EC(&qword_1016B1188, type metadata accessor for PeerTrustService, &unk_1013EBC74);
    type metadata accessor for PeerTrustMessageRouter();
    v28 = swift_allocObject();

    swift_defaultActor_initialize();
    *(v28 + 112) = v26;
    *(v28 + 120) = v27;
    v26[16] = v28;

    v30 = v1[2];
    v29 = v1[3];
    if (v30 >= v29 >> 1)
    {
      v1 = sub_100A5E68C((v29 > 1), v30 + 1, 1, v1);
    }

    v31 = *(v0 + 608);
    v32 = sub_1009BD8EC(&qword_1016B1190, type metadata accessor for PeerTrustService, &unk_1013EBD00);
    v1[2] = v30 + 1;
    v33 = &v1[2 * v30];
    v33[4] = v26;
    v33[5] = v32;
    type metadata accessor for CircleTrustService();
    v34 = swift_allocObject();
    swift_defaultActor_initialize();
    v34[14] = 0xD000000000000012;
    v34[15] = 0x8000000101367470;
    v34[16] = 0;
    v35 = type metadata accessor for WorkItemQueue.WarningOptions();
    (*(*(v35 - 8) + 56))(v31, 1, 1, v35);
    UUID.init()();
    v34[17] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
    v34[18] = 0;
    v37 = v1[2];
    v36 = v1[3];
    if (v37 >= v36 >> 1)
    {
      v1 = sub_100A5E68C((v36 > 1), v37 + 1, 1, v1);
    }

    v38 = sub_1009BD8EC(&unk_101698CE0, type metadata accessor for CircleTrustService, &unk_1013E49D8);
    v1[2] = v37 + 1;
    v39 = &v1[2 * v37];
    v39[4] = v34;
    v39[5] = v38;
  }

  v40 = *(v0 + 976);
  v107 = *(v0 + 960);
  *(v0 + 440) = v107;
  v41 = sub_1000280DC((v0 + 416));
  v42 = enum case for Feature.FindMy.managedCBPeripheral(_:);
  v40(v41, enum case for Feature.FindMy.managedCBPeripheral(_:), v107);
  v43 = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 416));
  if (v43)
  {
    type metadata accessor for StandaloneBeaconService();
    v44 = swift_allocObject();
    swift_defaultActor_initialize();
    v44[14] = 0xD000000000000017;
    v44[15] = 0x8000000101367410;
    v44[17] = 0;
    v44[18] = 0;
    v44[19] = _swiftEmptyArrayStorage;
    type metadata accessor for StandaloneBeaconDatabase(0);
    swift_allocObject();
    v44[16] = sub_10084DF10(0);
    v46 = v1[2];
    v45 = v1[3];
    if (v46 >= v45 >> 1)
    {
      v1 = sub_100A5E68C((v45 > 1), v46 + 1, 1, v1);
    }

    v47 = *(v0 + 936);
    v48 = sub_1009BD8EC(&qword_10169F450, type metadata accessor for StandaloneBeaconService, &unk_1013E3258);
    v1[2] = v46 + 1;
    v49 = &v1[2 * v46];
    v49[4] = v44;
    v49[5] = v48;
    v111 = 0;
    memset(v110, 0, sizeof(v110));
    swift_allocObject();

    v50 = sub_10098F800(v110, v47);
    v52 = v1[2];
    v51 = v1[3];
    if (v52 >= v51 >> 1)
    {
      v104 = v50;
      v1 = sub_100A5E68C((v51 > 1), v52 + 1, 1, v1);
      v50 = v104;
    }

    v53 = *(v0 + 952);
    v1[2] = v52 + 1;
    v54 = &v1[2 * v52];
    v54[4] = v50;
    v54[5] = v53;
    type metadata accessor for ObservationStoreService();
    swift_allocObject();

    v56 = sub_1010D0C90(v55);
    v58 = v1[2];
    v57 = v1[3];
    if (v58 >= v57 >> 1)
    {
      v1 = sub_100A5E68C((v57 > 1), v58 + 1, 1, v1);
    }

    v59 = sub_1009BD8EC(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
    v1[2] = v58 + 1;
    v60 = &v1[2 * v58];
    v60[4] = v56;
    v60[5] = v59;
  }

  else
  {
  }

  v61 = *(v0 + 976);
  v108 = *(v0 + 960);
  *(v0 + 480) = v108;
  v62 = sub_1000280DC((v0 + 456));
  v61(v62, v42, v108);
  v63 = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 456));
  if (v63)
  {
    v64 = type metadata accessor for Feature.Bluetooth();
    *(v0 + 560) = v64;
    *(v0 + 568) = sub_1009BD8EC(&qword_1016B1168, &type metadata accessor for Feature.Bluetooth, &protocol conformance descriptor for Feature.Bluetooth);
    v65 = sub_1000280DC((v0 + 536));
    (*(*(v64 - 8) + 104))(v65, enum case for Feature.Bluetooth.sentinel(_:), v64);
    LOBYTE(v64) = isFeatureEnabled(_:)();
    sub_100007BAC((v0 + 536));
    if (v64)
    {
      type metadata accessor for LeechScanningService();
      v66 = swift_allocObject();
      swift_defaultActor_initialize();
      v66[14] = 0xD000000000000014;
      v66[15] = 0x80000001013673F0;
      v66[16] = _swiftEmptyArrayStorage;
      v68 = v1[2];
      v67 = v1[3];
      if (v68 >= v67 >> 1)
      {
        v1 = sub_100A5E68C((v67 > 1), v68 + 1, 1, v1);
      }

      v69 = sub_1009BD8EC(&unk_1016B1170, type metadata accessor for LeechScanningService, &unk_101392F68);
      v1[2] = v68 + 1;
      v70 = &v1[2 * v68];
      v70[4] = v66;
      v70[5] = v69;
    }
  }

  type metadata accessor for SimpleBeaconUpdateService(0);
  swift_allocObject();
  v71 = sub_10094A1F0();
  v73 = v1[2];
  v72 = v1[3];
  if (v73 >= v72 >> 1)
  {
    v1 = sub_100A5E68C((v72 > 1), v73 + 1, 1, v1);
  }

  v74 = sub_1009BD8EC(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  v1[2] = v73 + 1;
  v75 = &v1[2 * v73];
  v75[4] = v71;
  v75[5] = v74;
  type metadata accessor for AccountService();
  v76 = swift_allocObject();
  swift_defaultActor_initialize();
  strcpy((v76 + 112), "AccountService");
  *(v76 + 127) = -18;
  v78 = v1[2];
  v77 = v1[3];
  if (v78 >= v77 >> 1)
  {
    v1 = sub_100A5E68C((v77 > 1), v78 + 1, 1, v1);
  }

  v79 = sub_1009BD8EC(&qword_101697890, type metadata accessor for AccountService, &unk_10139AEB0);
  v1[2] = v78 + 1;
  v80 = &v1[2 * v78];
  v80[4] = v76;
  v80[5] = v79;
  type metadata accessor for FMIPService();
  v81 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v81 + 112) = 0x7672655350494D46;
  *(v81 + 120) = 0xEB00000000656369;
  v83 = v1[2];
  v82 = v1[3];
  if (v83 >= v82 >> 1)
  {
    v1 = sub_100A5E68C((v82 > 1), v83 + 1, 1, v1);
  }

  *(v0 + 1048) = v1;
  v84 = *(v0 + 976);
  v85 = sub_1009BD8EC(&unk_1016B1100, type metadata accessor for FMIPService, &unk_10138C708);
  v109 = *(v0 + 960);
  v1[2] = v83 + 1;
  v86 = &v1[2 * v83];
  v86[4] = v81;
  v86[5] = v85;
  *(v0 + 520) = v109;
  v87 = sub_1000280DC((v0 + 496));
  v84(v87, v14, v109);
  v88 = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 496));
  if (v88)
  {
    v89 = swift_task_alloc();
    *(v0 + 1056) = v89;
    v90 = type metadata accessor for SharingScheduler();
    *v89 = v0;
    v89[1] = sub_1009BB1B0;

    return unsafeBlocking<A>(_:)(v0 + 600, sub_1009B622C, 0, v90);
  }

  else
  {
    type metadata accessor for LeaderCheckService();
    v91 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v91 + 112) = 0xD000000000000015;
    *(v91 + 120) = 0x8000000101367330;
    v93 = v1[2];
    v92 = v1[3];
    if (v93 >= v92 >> 1)
    {
      v1 = sub_100A5E68C((v92 > 1), v93 + 1, 1, v1);
    }

    v94 = sub_1009BD8EC(&unk_1016969D0, type metadata accessor for LeaderCheckService, &unk_1013A2368);
    v1[2] = v93 + 1;
    v95 = &v1[2 * v93];
    v95[4] = v91;
    v95[5] = v94;
    type metadata accessor for DelegatedShareMetadataService();
    v96 = swift_allocObject();
    swift_defaultActor_initialize();
    v96[14] = 0xD00000000000001DLL;
    v96[15] = 0x8000000101367350;
    type metadata accessor for KeyDropInterface();
    v97 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v97 + 112) = 0;
    *(v97 + 120) = 0;
    v96[16] = v97;
    v99 = v1[2];
    v98 = v1[3];
    if (v99 >= v98 >> 1)
    {
      v1 = sub_100A5E68C((v98 > 1), v99 + 1, 1, v1);
    }

    *(v0 + 1064) = v1;
    v100 = sub_1009BD8EC(&unk_101698C70, type metadata accessor for DelegatedShareMetadataService, &unk_1013BB8D0);
    v1[2] = v99 + 1;
    v101 = &v1[2 * v99];
    v101[4] = v96;
    v101[5] = v100;
    type metadata accessor for BTFindingService();
    swift_allocObject();

    v102 = swift_task_alloc();
    *(v0 + 1072) = v102;
    *v102 = v0;
    v102[1] = sub_1009BB768;
    v103 = *(v0 + 928);

    return sub_100F9E904(v103);
  }
}

uint64_t sub_1009BB1B0()
{

  return _swift_task_switch(sub_1009BB2AC, 0, 0);
}

uint64_t sub_1009BB2AC()
{
  v1 = v0[131];
  v2 = v0[116];
  v3 = v0[75];
  type metadata accessor for BeaconSharingService(0);
  swift_allocObject();

  v4 = sub_1001B9D8C(v2, v3);

  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  v7 = v0[131];
  if (v5 >= v6 >> 1)
  {
    v7 = sub_100A5E68C((v6 > 1), v5 + 1, 1, v0[131]);
  }

  v8 = sub_1009BD8EC(&unk_101696950, type metadata accessor for BeaconSharingService, &unk_101390650);
  v7[2] = v5 + 1;
  v9 = &v7[2 * v5];
  v9[4] = v4;
  v9[5] = v8;
  v10 = qword_101694EE0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = v0[116];
  v12 = v0[76];
  v13 = qword_10177C138;
  type metadata accessor for ItemSharingNotificationsService();
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v14 + 112) = 0xD00000000000001FLL;
  *(v14 + 120) = 0x80000001013673D0;
  v15 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  UUID.init()();
  v16 = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  *(v14 + 208) = _swiftEmptyArrayStorage;
  *(v14 + 216) = _swiftEmptyArrayStorage;
  *(v14 + 224) = _swiftEmptyArrayStorage;
  *(v14 + 128) = v13;
  *(v14 + 136) = v11;
  *(v14 + 144) = 0u;
  *(v14 + 160) = 0u;
  *(v14 + 176) = 0u;
  *(v14 + 192) = 0;
  *(v14 + 200) = v16;
  swift_unownedRetain();
  v18 = v7[2];
  v17 = v7[3];
  if (v18 >= v17 >> 1)
  {
    v7 = sub_100A5E68C((v17 > 1), v18 + 1, 1, v7);
  }

  v19 = sub_1009BD8EC(&qword_1016B1160, type metadata accessor for ItemSharingNotificationsService, &unk_1013D77C8);
  v7[2] = v18 + 1;
  v20 = &v7[2 * v18];
  v20[4] = v14;
  v20[5] = v19;
  type metadata accessor for LeaderCheckService();
  v21 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v21 + 112) = 0xD000000000000015;
  *(v21 + 120) = 0x8000000101367330;
  v23 = v7[2];
  v22 = v7[3];
  if (v23 >= v22 >> 1)
  {
    v7 = sub_100A5E68C((v22 > 1), v23 + 1, 1, v7);
  }

  v24 = sub_1009BD8EC(&unk_1016969D0, type metadata accessor for LeaderCheckService, &unk_1013A2368);
  v7[2] = v23 + 1;
  v25 = &v7[2 * v23];
  v25[4] = v21;
  v25[5] = v24;
  type metadata accessor for DelegatedShareMetadataService();
  v26 = swift_allocObject();
  swift_defaultActor_initialize();
  v26[14] = 0xD00000000000001DLL;
  v26[15] = 0x8000000101367350;
  type metadata accessor for KeyDropInterface();
  v27 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v27 + 112) = 0;
  *(v27 + 120) = 0;
  v26[16] = v27;
  v29 = v7[2];
  v28 = v7[3];
  if (v29 >= v28 >> 1)
  {
    v7 = sub_100A5E68C((v28 > 1), v29 + 1, 1, v7);
  }

  v0[133] = v7;
  v30 = sub_1009BD8EC(&unk_101698C70, type metadata accessor for DelegatedShareMetadataService, &unk_1013BB8D0);
  v7[2] = v29 + 1;
  v31 = &v7[2 * v29];
  v31[4] = v26;
  v31[5] = v30;
  type metadata accessor for BTFindingService();
  swift_allocObject();

  v32 = swift_task_alloc();
  v0[134] = v32;
  *v32 = v0;
  v32[1] = sub_1009BB768;
  v33 = v0[116];

  return sub_100F9E904(v33);
}

uint64_t sub_1009BB768(uint64_t a1)
{
  *(*v1 + 1080) = a1;

  return _swift_task_switch(sub_1009BB868, 0, 0);
}

uint64_t sub_1009BB868()
{
  v1 = *(v0 + 1064);
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5E68C((v2 > 1), v3 + 1, 1, *(v0 + 1064));
  }

  v4 = *(v0 + 1080);
  v5 = sub_1009BD8EC(&qword_1016C2130, type metadata accessor for BTFindingService, &unk_1013F6058);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for AirPodsLEPairingService();
  swift_allocObject();

  v8 = sub_1000E5314(v7);
  if (v8)
  {
    v9 = v8;
    v11 = v1[2];
    v10 = v1[3];
    if (v11 >= v10 >> 1)
    {
      v1 = sub_100A5E68C((v10 > 1), v11 + 1, 1, v1);
    }

    v12 = sub_1009BD8EC(&unk_1016B1150, type metadata accessor for AirPodsLEPairingService, &unk_10138BD00);
    v1[2] = v11 + 1;
    v13 = &v1[2 * v11];
    v13[4] = v9;
    v13[5] = v12;
  }

  type metadata accessor for SystemMonitorService();
  swift_allocObject();
  v14 = sub_1004A761C();
  *(v0 + 1088) = v14;
  v15 = v1[2];
  v16 = v1[3];

  if (v15 >= v16 >> 1)
  {
    v1 = sub_100A5E68C((v16 > 1), v15 + 1, 1, v1);
  }

  v17 = sub_1009BD8EC(&qword_1016B1110, type metadata accessor for SystemMonitorService, &unk_1013AAB78);
  v1[2] = v15 + 1;
  v18 = &v1[2 * v15];
  v18[4] = v14;
  v18[5] = v17;
  type metadata accessor for PairingService();
  type metadata accessor for PairingServiceProxyImplementation();
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v19 + 112) = 0xD00000000000001FLL;
  *(v19 + 120) = 0x8000000101367370;
  sub_1009BD8EC(&qword_1016B1118, type metadata accessor for PairingServiceProxyImplementation, &unk_1013DD078);
  v20 = PairingService.__allocating_init(proxy:)();
  *(v0 + 1096) = v20;
  v21 = v1[2];
  v22 = v1[3];

  if (v21 >= v22 >> 1)
  {
    v1 = sub_100A5E68C((v22 > 1), v21 + 1, 1, v1);
  }

  *(v0 + 1104) = v1;
  v23 = sub_1009BD8EC(&unk_1016B1120, &type metadata accessor for PairingService, &protocol conformance descriptor for PairingService);
  v1[2] = v21 + 1;
  v24 = &v1[2 * v21];
  v24[4] = v20;
  v24[5] = v23;
  v25 = objc_allocWithZone(type metadata accessor for BubbleManager());

  v26 = [v25 init];
  type metadata accessor for BTDiscoveryManager();
  v27 = swift_allocObject();
  swift_defaultActor_initialize();
  if (qword_101694D38 != -1)
  {
    swift_once();
  }

  *(v0 + 160) = xmmword_1013D0260;
  *(v0 + 176) = xmmword_1013D0270;
  *(v0 + 192) = 0x4014000000000000;
  *(v0 + 200) = xmmword_1016B7850;
  v28 = swift_task_alloc();
  *(v0 + 1112) = v28;
  *v28 = v0;
  v28[1] = sub_1009BBC98;

  return sub_1009B723C(v26, v14, v20, v27, v0 + 160);
}

uint64_t sub_1009BBC98(uint64_t a1)
{
  *(*v1 + 1120) = a1;

  return _swift_task_switch(sub_1009BBD98, 0, 0);
}

uint64_t sub_1009BBD98()
{
  v1 = v0[138];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5E68C((v2 > 1), v3 + 1, 1, v0[138]);
  }

  v4 = v0[140];
  v5 = v0[92];
  v6 = sub_1009BD8EC(&unk_1016B7D70, type metadata accessor for DiscoveryService, &unk_1013DD630);
  v1[2] = v3 + 1;
  v7 = &v1[2 * v3];
  v7[4] = v4;
  v7[5] = v6;
  type metadata accessor for LocalPairingMonitorService();
  v8 = swift_allocObject();

  swift_defaultActor_initialize();
  v8[14] = 0xD00000000000001ALL;
  v8[15] = 0x8000000101367390;
  v8[16] = v5;
  v10 = v1[2];
  v9 = v1[3];
  if (v10 >= v9 >> 1)
  {
    v1 = sub_100A5E68C((v9 > 1), v10 + 1, 1, v1);
  }

  v11 = v0[117];
  v12 = sub_1009BD8EC(&qword_1016B1130, type metadata accessor for LocalPairingMonitorService, &unk_1013965D0);
  v1[2] = v10 + 1;
  v13 = &v1[2 * v10];
  v13[4] = v8;
  v13[5] = v12;
  sub_1000BC4D4(&qword_1016B1138, &qword_1013D02B0);
  swift_allocObject();

  v14 = AsyncStreamProvider.init()();
  type metadata accessor for FindMyServiceDeviceStoreService(0);
  v15 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v15 + 112) = 0xD00000000000001FLL;
  *(v15 + 120) = 0x80000001013673B0;
  *(v15 + 144) = 0;
  *(v15 + 152) = 0;
  v16 = OBJC_IVAR____TtC12searchpartyd31FindMyServiceDeviceStoreService_subscriptionTTL;
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(v15 + v16, 1, 1, v17);
  *(v15 + OBJC_IVAR____TtC12searchpartyd31FindMyServiceDeviceStoreService_isDevicesFetched) = 0;
  *(v15 + 128) = v11;
  *(v15 + 136) = v14;
  v19 = v1[2];
  v18 = v1[3];
  if (v19 >= v18 >> 1)
  {
    v1 = sub_100A5E68C((v18 > 1), v19 + 1, 1, v1);
  }

  v20 = sub_1009BD8EC(&unk_1016B1140, type metadata accessor for FindMyServiceDeviceStoreService, &unk_1013C3520);
  v1[2] = v19 + 1;
  v21 = &v1[2 * v19];
  v21[4] = v15;
  v21[5] = v20;
  if (qword_101694B50 != -1)
  {
    swift_once();
  }

  v22 = *(qword_1016B0FC0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_tagCommandManager);
  type metadata accessor for SPObserverAnalytics();
  swift_allocObject();
  v23 = sub_10075A060(v22);
  v25 = v1[2];
  v24 = v1[3];
  v31 = v23;
  if (v25 >= v24 >> 1)
  {
    v1 = sub_100A5E68C((v24 > 1), v25 + 1, 1, v1);
  }

  v30 = v0[128];

  v26 = sub_1009BD8EC(&qword_1016A8E78, type metadata accessor for SPObserverAnalytics, &unk_1013BA2E0);
  v1[2] = v25 + 1;
  v27 = &v1[2 * v25];
  v27[4] = v31;
  v27[5] = v26;

  v28 = v0[1];

  return v28(v1);
}

void sub_1009BC23C(uint64_t a1, void *a2)
{
  v3 = v2;
  v32 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v32);
  v31[2] = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v2 + 32) = v12;
  *(v2 + 40) = 0;
  *(v2 + 64) = sub_100909C98(_swiftEmptyArrayStorage);
  *(v2 + 72) = sub_100909A8C(_swiftEmptyArrayStorage);
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  v33 = a1;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v31[1] = sub_1000BC488();
  v36 = 0;
  v37 = 0xE000000000000000;

  _StringGuts.grow(_:)(50);

  v36 = 0xD000000000000030;
  v37 = 0x8000000101367630;
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  String.append(_:)(v13);
  (*(v9 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_1009BD8EC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = a2;
  *(v2 + 48) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = objc_allocWithZone(IDSService);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 initWithService:v16];

  if (v17)
  {
    v3[3]._object = v17;
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177C4F0);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v3;
      v35 = v22;
      *v21 = 136446210;
      v36 = 60;
      v37 = 0xE100000000000000;
      sub_1000BC4D4(&qword_1016B11D0, &qword_1013D02D0);
      sub_1000041A4(&unk_1016B1230, &qword_1016B11D0, &qword_1013D02D0, &unk_10140B718);
      v23._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v23);

      v24._countAndFlagsBits = 32;
      v24._object = 0xE100000000000000;
      String.append(_:)(v24);
      v25._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v25);

      v26._countAndFlagsBits = 32;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      String.append(_:)(v3[1]);
      v27._countAndFlagsBits = 62;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);

      v28 = sub_1000136BC(v36, v37, &v35);

      *(v21 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "Created %{public}s", v21, 0xCu);
      sub_100007BAC(v22);
    }

    else
    {
    }

    if (qword_1016951A0 != -1)
    {
      v29 = swift_once();
    }

    __chkstk_darwin(v29);
    v30 = v33;
    v31[-4] = v3;
    v31[-3] = v30;
    v31[-2] = v14;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_1009BC820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a4;
  v63 = a3;
  v71 = a2;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v58 = &v57 - v8;
  v69 = sub_1000BC4D4(&qword_1016B1198, &qword_1013D02B8);
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v65 = &v57 - v9;
  v70 = sub_1000BC4D4(&unk_1016B11A0, &qword_1013D02C0);
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v57 - v10;
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11 - 8);
  v62 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  __chkstk_darwin(v13 - 8);
  v61 = &v57 - v14;
  v59 = type metadata accessor for URL();
  __chkstk_darwin(v59);
  v60 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v83);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  v77 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = *(v77 - 8);
  __chkstk_darwin(v77);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86[3] = type metadata accessor for BeaconManagerService(0);
  v86[4] = &off_101643D38;
  v86[0] = a1;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v79 = a5;
  *(a5 + 16) = v20;
  *(a5 + 48) = 0;
  v76 = sub_1000BC488();
  v80 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v81 = *(v17 + 104);
  v78 = v17 + 104;
  v81(v19);
  static DispatchQoS.unspecified.getter();
  v84._countAndFlagsBits = _swiftEmptyArrayStorage;
  v21 = sub_1009BD8EC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v75 = sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v82 = sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  v74 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v72 = v19;
  v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = v79;
  *(v79 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 56) = v22;
  *(v23 + 80) = 1;
  *(v23 + 88) = 0;
  *(v23 + 96) = 0;
  v24 = v80;
  v25 = v77;
  (v81)(v19, v80, v77);
  static DispatchQoS.unspecified.getter();
  v84._countAndFlagsBits = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v72;
  *(v23 + 168) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v73 = "aconSharingManager";
  v27 = v25;
  v28 = v81;
  (v81)(v26, v24, v27);
  static DispatchQoS.unspecified.getter();
  v84._countAndFlagsBits = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v29 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v30 = v79;
  *(v79 + 176) = v29;
  v73 = "aconSharingManagerkeyUpdate";
  v31 = v77;
  (v28)(v26, v80, v77);
  static DispatchQoS.unspecified.getter();
  v84._countAndFlagsBits = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v30 + 184) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v30 + 192) = sub_100909AB0(_swiftEmptyArrayStorage);
  v32 = v30;
  (v81)(v26, v80, v31);
  static DispatchQoS.unspecified.getter();
  v84._countAndFlagsBits = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v33 = v30;
  *(v30 + 200) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v30 + 208) = 0;
  *(v30 + 216) = 0;
  *(v30 + 224) = 0x4076800000000000;
  *(v30 + 240) = 0;
  *(v30 + 248) = 0;
  *(v30 + 232) = 0;
  v34 = sub_1000BC4D4(&unk_1016B11B0, &unk_101391880);
  swift_allocObject();
  *(v30 + 256) = PassthroughSubject.init()();
  *(v30 + 272) = 0;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v36 = result;
    v83 = v34;
    v37 = MobileGestalt_copy_productType_obj();

    if (v37)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v38 = String.lowercased()();

    v84 = v38;
    sub_10058AE3C();
    sub_1000DF96C();
    static PartialMatchCase<>.first(containing:)();

    *(v30 + 280) = v85 != 5;
    *(v30 + 288) = 0;
    if (qword_101695218 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v59, qword_1016C6BF8);
    v39 = v60;
    URL.appendingPathComponent(_:)();
    type metadata accessor for ShareAttemptTracker(0);
    swift_allocObject();
    *(v30 + 320) = sub_1010B1080(v39);
    sub_1000BC4D4(&qword_1016B11C8, &qword_1013D02C8);
    swift_allocObject();
    *(v30 + 328) = PassthroughSubject.init()();
    *(v30 + 344) = 0x404E000000000000;
    *(v30 + 352) = 0x403E000000000000;
    *(v30 + 360) = 6;
    type metadata accessor for WorkItemQueue();
    v40 = type metadata accessor for WorkItemQueue.WarningOptions();
    (*(*(v40 - 8) + 56))(v61, 1, 1, v40);
    UUID.init()();
    *(v30 + 368) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
    sub_10001F280(v86, v30 + 104);
    v41 = v71;
    v42 = v63;
    v32[18] = v71;
    v32[19] = v42;
    v32[20] = v64;
    type metadata accessor for SharingScheduler();
    swift_allocObject();

    v43 = sub_100ED1B44();
    v32[5] = v43;
    type metadata accessor for SecureLocationsMessagingServiceRelay();
    v44 = swift_allocObject();
    *(v44 + 40) = 0u;
    *(v44 + 56) = 0u;
    *(v44 + 72) = 0u;
    *(v44 + 88) = 0u;
    *(v44 + 104) = 0u;
    *(v44 + 120) = 0u;
    *(v44 + 16) = xmmword_1013D0280;
    *(v44 + 32) = 6;
    v32[3] = v44;
    sub_1000BC4D4(&qword_1016B11D0, &qword_1013D02D0);
    swift_allocObject();

    sub_1009BC23C(0xD000000000000021, 0x8000000101367600);
    v32[4] = v45;
    v84._countAndFlagsBits = _swiftEmptyArrayStorage;
    sub_1000BC4D4(&qword_1016B11D8, &qword_1013D02D8);
    swift_allocObject();
    v46 = CurrentValueSubject.init(_:)();
    v33[37] = v46;

    v33[38] = CurrentValueSubject.eraseToAnyCurrentValuePublisher()();
    v84._countAndFlagsBits = v46;
    sub_1000041A4(&qword_1016B11E0, &qword_1016B11D8, &qword_1013D02D8, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    v47 = v65;
    Publisher.dropFirst(_:)();
    sub_1000041A4(&qword_1016B11E8, &qword_1016B1198, &qword_1013D02B8, &protocol conformance descriptor for Publishers.Drop<A>);
    sub_1009BD72C();
    v48 = v66;
    v49 = v69;
    Publisher<>.removeDuplicates()();
    (*(v67 + 8))(v47, v49);
    sub_1000041A4(&qword_1016B1208, &unk_1016B11A0, &qword_1013D02C0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v50 = v70;
    v51 = Publisher.eraseToAnyPublisher()();
    (*(v68 + 8))(v48, v50);
    v33[39] = v51;
    v84._countAndFlagsBits = v33[32];
    sub_1000041A4(&qword_1016B1210, &unk_1016B11B0, &unk_101391880, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v33[33] = Publisher.eraseToAnyPublisher()();
    v84._countAndFlagsBits = v33[41];
    sub_1000041A4(&qword_1016B1218, &qword_1016B11C8, &qword_1013D02C8, &protocol conformance descriptor for PassthroughSubject<A, B>);
    result = Publisher.eraseToAnyPublisher()();
    v33[42] = result;
    v52 = *(v41 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_instructionEventCoalescer);
    if (v52)
    {
      v84._countAndFlagsBits = *(v52 + 64);
      swift_allocObject();
      swift_weakInit();

      sub_1000BC4D4(&qword_1016B1220, &unk_1013F3B20);
      sub_1000041A4(&qword_1016B1228, &qword_1016B1220, &unk_1013F3B20, &protocol conformance descriptor for AnyPublisher<A, B>);
      v53 = Publisher<>.sink(receiveValue:)();

      v33[36] = v53;

      v54 = type metadata accessor for TaskPriority();
      v55 = v58;
      (*(*(v54 - 8) + 56))(v58, 1, 1, v54);
      v56 = swift_allocObject();
      v56[2] = 0;
      v56[3] = 0;
      v56[4] = v43;
      v56[5] = v33;

      sub_10025EDD4(0, 0, v55, &unk_1013D02E0, v56);

      sub_100007BAC(v86);
      return v33;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1009BD72C()
{
  result = qword_1016B11F0;
  if (!qword_1016B11F0)
  {
    sub_1000BC580(&qword_1016A4950, &qword_1013B1328);
    sub_1009BD7B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B11F0);
  }

  return result;
}

unint64_t sub_1009BD7B0()
{
  result = qword_1016B1200;
  if (!qword_1016B1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1200);
  }

  return result;
}

uint64_t sub_1009BD80C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_100532548(a1, v4, v5, v7, v6);
}

uint64_t sub_1009BD8EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1009BD934()
{
  v81 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v81);
  v80 = v78 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6._countAndFlagsBits = 0xD000000000000019;
  v6._object = 0x8000000101367750;
  prohibitAsyncContext(functionName:)(v6);
  v7 = type metadata accessor for SchedulerService(0);
  swift_allocObject();
  v8 = sub_100851AD8();
  v9 = sub_100A5E6B0(0, 1, 1, _swiftEmptyArrayStorage);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_100A5E6B0((v10 > 1), v11 + 1, 1, v9);
  }

  v86 = v7;
  v87 = &off_101636CC0;
  *&v85 = v8;
  v9[2] = v11 + 1;
  sub_10000A748(&v85, &v9[5 * v11 + 4]);
  if (qword_101694B40 != -1)
  {
    swift_once();
  }

  v12 = qword_1016B0FB0;
  v13 = objc_allocWithZone(type metadata accessor for TagCommandManager());
  v14 = swift_retain_n();
  v15 = sub_10089263C(v14, sub_1009BE654, 0);
  v16 = qword_101694B30;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_1016B0FA0;
  type metadata accessor for AccessoryMetadataManager();
  swift_allocObject();
  swift_retain_n();
  v82 = v17;
  v84 = sub_10035ADBC(v12, v17);
  v18 = v9[2];
  v19 = v9[3];

  if (v18 >= v19 >> 1)
  {
    v9 = sub_100A5E6B0((v19 > 1), v18 + 1, 1, v9);
  }

  v86 = type metadata accessor for BeaconStore(0);
  v87 = &off_101646210;
  *&v85 = v12;
  v9[2] = v18 + 1;
  sub_10000A748(&v85, &v9[5 * v18 + 4]);
  v79 = type metadata accessor for UnknownDiscoveryService();
  v20 = swift_allocObject();
  v78[2] = 0x8000000101367770;
  v20[2] = 0xD000000000000017;
  v20[3] = 0x8000000101367770;
  v21 = sub_1000BC488();
  v78[0] = "UnknownDiscoveryService";
  v78[1] = v21;
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);

  v83 = v15;
  v22 = v84;

  static DispatchQoS.unspecified.getter();
  *&v85 = _swiftEmptyArrayStorage;
  sub_1009BD8EC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20[5] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for XPCSessionManager();
  swift_allocObject();
  v20[6] = XPCSessionManager.init(name:)();
  v20[7] = 0;
  v20[4] = v12;
  v24 = v82;
  v23 = v83;
  v20[8] = 0;
  v20[9] = v24;
  v20[10] = v23;
  v20[11] = v22;
  v26 = v9[2];
  v25 = v9[3];
  if (v26 >= v25 >> 1)
  {
    v9 = sub_100A5E6B0((v25 > 1), v26 + 1, 1, v9);
  }

  v86 = v79;
  v87 = &off_10161E380;
  *&v85 = v20;
  v9[2] = v26 + 1;
  sub_10000A748(&v85, &v9[5 * v26 + 4]);
  v27 = qword_101694B58;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = off_1016B0FC8;
  v29 = type metadata accessor for SecureLocationsService();
  swift_allocObject();

  v30 = sub_1009B29FC(v12, v28);
  v32 = v9[2];
  v31 = v9[3];
  if (v32 >= v31 >> 1)
  {
    v70 = v30;
    v9 = sub_100A5E6B0((v31 > 1), v32 + 1, 1, v9);
    v30 = v70;
  }

  v86 = v29;
  v87 = &off_101641658;
  *&v85 = v30;
  v9[2] = v32 + 1;
  sub_10000A748(&v85, &v9[5 * v32 + 4]);
  v33 = qword_101694B18;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = qword_1016B0F88;
  v35 = type metadata accessor for AccessoryDiscoveryService();
  swift_allocObject();
  swift_retain_n();
  v36 = sub_100E12860(v12, v34);
  v38 = v9[2];
  v37 = v9[3];
  if (v38 >= v37 >> 1)
  {
    v71 = v36;
    v9 = sub_100A5E6B0((v37 > 1), v38 + 1, 1, v9);
    v36 = v71;
  }

  v86 = v35;
  v87 = &off_101651F38;
  *&v85 = v36;
  v9[2] = v38 + 1;
  sub_10000A748(&v85, &v9[5 * v38 + 4]);
  if (qword_101694B50 != -1)
  {
    swift_once();
  }

  v39 = qword_1016B0FC0;
  v40 = v9[2];
  v41 = v9[3];

  if (v40 >= v41 >> 1)
  {
    v9 = sub_100A5E6B0((v41 > 1), v40 + 1, 1, v9);
  }

  v86 = type metadata accessor for BeaconManagerService(0);
  v87 = &off_101643D60;
  *&v85 = v39;
  v9[2] = v40 + 1;
  sub_10000A748(&v85, &v9[5 * v40 + 4]);
  v42 = type metadata accessor for CentralManager();
  v43 = objc_allocWithZone(v42);
  sub_1013190AC(1, 0, 15.0);
  v44 = v9[2];
  v45 = v9[3];
  v47 = v46;
  if (v44 >= v45 >> 1)
  {
    v72 = v45 > 1;
    v73 = v47;
    v74 = v72;
    v9 = sub_100A5E6B0(v74, v44 + 1, 1, v9);
    v47 = v73;
  }

  v86 = v42;
  v87 = &off_101670398;
  v81 = v47;
  *&v85 = v47;
  v9[2] = v44 + 1;
  sub_10000A748(&v85, &v9[5 * v44 + 4]);
  v48 = type metadata accessor for OwnerCommandManager();
  swift_allocObject();
  v49 = sub_10067C33C(v12, v24, 0);

  v50 = v9[2];
  v51 = v9[3];

  if (v50 >= v51 >> 1)
  {
    v9 = sub_100A5E6B0((v51 > 1), v50 + 1, 1, v9);
  }

  v86 = v48;
  v87 = &off_10162CBD8;
  *&v85 = v49;
  v9[2] = v50 + 1;
  sub_10000A748(&v85, &v9[5 * v50 + 4]);
  v52 = type metadata accessor for SeparationMonitoringEnrollmentService();
  swift_allocObject();
  v53 = sub_100D673B0(v12, v34);
  v55 = v9[2];
  v54 = v9[3];
  if (v55 >= v54 >> 1)
  {
    v75 = v53;
    v9 = sub_100A5E6B0((v54 > 1), v55 + 1, 1, v9);
    v53 = v75;
  }

  v86 = v52;
  v87 = &off_1016507A0;
  *&v85 = v53;
  v9[2] = v55 + 1;
  sub_10000A748(&v85, &v9[5 * v55 + 4]);
  v56 = type metadata accessor for UnwantedTrackingUserNotificationDelegate();
  v57 = [objc_allocWithZone(v56) init];
  v59 = v9[2];
  v58 = v9[3];
  if (v59 >= v58 >> 1)
  {
    v76 = v57;
    v9 = sub_100A5E6B0((v58 > 1), v59 + 1, 1, v9);
    v57 = v76;
  }

  v86 = v56;
  v87 = &off_10160E9A0;
  *&v85 = v57;
  v9[2] = v59 + 1;
  sub_10000A748(&v85, &v9[5 * v59 + 4]);
  if (qword_101694B20 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for FinderStateManagerService(0);
  swift_allocObject();

  v62 = sub_10104363C(v61);
  v64 = v9[2];
  v63 = v9[3];
  if (v64 >= v63 >> 1)
  {
    v77 = v62;
    v9 = sub_100A5E6B0((v63 > 1), v64 + 1, 1, v9);
    v62 = v77;
  }

  v86 = v60;
  v87 = &off_1016610C8;
  *&v85 = v62;
  v9[2] = v64 + 1;
  sub_10000A748(&v85, &v9[5 * v64 + 4]);
  My = type metadata accessor for Feature.FindMy();
  v86 = My;
  v87 = sub_1009BD8EC(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v66 = sub_1000280DC(&v85);
  (*(*(My - 8) + 104))(v66, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v85);
  if (My)
  {
    v67 = v28[3];
    v68 = qword_101694868;

    if (v68 != -1)
    {
      swift_once();
    }

    *(qword_10177B0D8 + 16) = v67;
  }

  sub_100A2E174(v28);
  if (qword_101694B38 != -1)
  {
    swift_once();
  }

  sub_10042264C(v28);
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  sub_1013132BC();

  return v9;
}

unint64_t sub_1009BE66C()
{
  result = qword_1016B1278;
  if (!qword_1016B1278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1278);
  }

  return result;
}

uint64_t sub_1009BE6C0()
{
  result = sub_10098E9DC(3157553, 0xE300000000000000);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    LOWORD(dword_10177B778) = result;
    BYTE2(dword_10177B778) = BYTE2(result);
    HIBYTE(dword_10177B778) = BYTE3(result);
  }

  return result;
}

void *sub_1009BE708@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for CollaborativeKeyGen.v1.C3;
  result = sub_100101704();
  a3[4] = result;
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v12 = 0;
      goto LABEL_20;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 != 60)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v7)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 != 60)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = a1;
      a3[1] = a2;
      return sub_100017D5C(a1, a2);
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 60)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v7 == 2)
  {
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v7 != 1)
  {
LABEL_19:
    v12 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v12 = HIDWORD(a1) - a1;
LABEL_20:
    sub_100018350();
    swift_allocError();
    *v15 = 60;
    *(v15 + 8) = v12;
    *(v15 + 16) = 0;
    swift_willThrow();
    return sub_100101758(a3);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1009BE848()
{
  if (qword_101694B68 != -1)
  {
    swift_once();
  }

  return dword_10177B778;
}

__n128 sub_1009BE89C@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>, uint64_t a4@<X2>, unint64_t a5@<X3>, uint64_t a6@<X4>, unint64_t a7@<X5>, uint64_t a8@<X6>, unint64_t a9@<X7>, uint64_t a10, unint64_t a11)
{
  sub_1009BEFA8(a2, a3, a4, a5, a6, a7, a8, a9, v14, a10, a11);
  v12 = v14[3];
  *(a1 + 32) = v14[2];
  *(a1 + 48) = v12;
  *(a1 + 64) = v14[4];
  result = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = result;
  return result;
}

double sub_1009BE8EC@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x2000000000000000;
  return result;
}

__n128 sub_1009BE91C@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, unint64_t a4@<X2>)
{
  sub_1009BF214(a2, a3, a4, v8);
  if (!v4)
  {
    v7 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v7;
    *(a1 + 64) = v8[4];
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_1009BE96C()
{
  result = qword_1016B12E0;
  if (!qword_1016B12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B12E0);
  }

  return result;
}

unint64_t sub_1009BE9C4()
{
  result = qword_1016B12E8;
  if (!qword_1016B12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B12E8);
  }

  return result;
}

unint64_t sub_1009BEA1C()
{
  result = qword_1016B12F0;
  if (!qword_1016B12F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B12F0);
  }

  return result;
}

unint64_t sub_1009BEA74()
{
  result = qword_1016B12F8;
  if (!qword_1016B12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B12F8);
  }

  return result;
}

unint64_t sub_1009BEACC()
{
  result = qword_1016B1300;
  if (!qword_1016B1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1300);
  }

  return result;
}

unint64_t sub_1009BEB20@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 7);
  v6 = *(v1 + 9);
  v7 = (v6 >> 59) & 6 | ((v5 & 0x2000000000000000) != 0);
  if (v7 <= 1)
  {
    v22 = *v1;
    v25 = v1[1];
    if (v7)
    {
      a1[3] = &type metadata for SendPairingDataCommandPayload;
      a1[4] = sub_1009BEA74();
    }

    else
    {
      a1[3] = &type metadata for InitiatePairingCommandPayload;
      a1[4] = sub_1009BE9C4();
    }

    v15 = swift_allocObject();
    *a1 = v15;
    *(v15 + 16) = v22;
    *(v15 + 32) = v25;
    sub_100017D5C(v22, *(&v22 + 1));
    v14 = *(&v25 + 1);
    v13 = v25;
    goto LABEL_15;
  }

  v8 = *(v1 + 4);
  v9 = *(v1 + 5);
  v10 = *(v1 + 6);
  v11 = *(v1 + 8);
  if (v7 == 2)
  {
    v16 = v5 & 0xDFFFFFFFFFFFFFFFLL;
    v17 = v6 & 0xCFFFFFFFFFFFFFFFLL;
    a1[3] = &type metadata for FinalizePairingCommandPayload;
    v23 = v4;
    v26 = v3;
    a1[4] = sub_1009BE96C();
    v18 = swift_allocObject();
    *a1 = v18;
    *(v18 + 16) = v23;
    *(v18 + 32) = v26;
    *(v18 + 48) = v8;
    *(v18 + 56) = v9;
    *(v18 + 64) = v10;
    *(v18 + 72) = v16;
    *(v18 + 80) = v11;
    *(v18 + 88) = v17;
    v28[0] = v23;
    v28[1] = v26;
    v29 = v8;
    v30 = v9;
    v31 = v10;
    v32 = v16;
    v33 = v11;
    v34 = v17;
    return sub_1009BEEF8(v28, v27);
  }

  if (v7 == 3)
  {
    a1[3] = &type metadata for SendPairingStatusCommandPayload;
    v21 = v4;
    v24 = v3;
    a1[4] = sub_1009BEACC();
    v12 = swift_allocObject();
    *a1 = v12;
    *(v12 + 16) = v21;
    *(v12 + 32) = v24;
    *(v12 + 48) = v8;
    *(v12 + 56) = v9;
    sub_100017D5C(v21, *(&v21 + 1));
    sub_100017D5C(v24, *(&v24 + 1));
    v13 = v8;
    v14 = v9;
LABEL_15:

    return sub_100017D5C(v13, v14);
  }

  if (v3 | v4 | *(&v4 + 1) | *(&v3 + 1) | v8 | v9 | v10 | v5 | v11)
  {
    v20 = 0;
  }

  else
  {
    v20 = v6 == 0x2000000000000000;
  }

  if (v20)
  {
    a1[3] = &type metadata for PairingCompleteCommandPayload;
    result = sub_1009BEA1C();
  }

  else
  {
    a1[3] = &type metadata for UnpairCommandPayload;
    result = sub_10027EE90();
  }

  a1[4] = result;
  return result;
}

unint64_t sub_1009BEDC4(uint64_t a1)
{
  *(a1 + 8) = sub_1009BEDF4();
  result = sub_1009BEE48();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1009BEDF4()
{
  result = qword_1016B13C0;
  if (!qword_1016B13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B13C0);
  }

  return result;
}

unint64_t sub_1009BEE48()
{
  result = qword_1016B13C8;
  if (!qword_1016B13C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B13C8);
  }

  return result;
}

uint64_t sub_1009BEEF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B13D0, &unk_1013D03A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009BEF68()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1009BEFA8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unint64_t a11)
{
  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v12 != 2)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v15 = *(result + 16);
  v14 = *(result + 24);
  v16 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v16)
  {
    __break(1u);
LABEL_8:
    LODWORD(v13) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v13 = v13;
  }

LABEL_10:
  if (v13 != 89)
  {
    goto LABEL_56;
  }

  if ((a4 >> 62) <= 1)
  {
    if (a4 >> 62 == 1)
    {
      LODWORD(v17) = HIDWORD(a3) - a3;
      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        v17 = v17;
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_50;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (a4 >> 62 != 2)
  {
    goto LABEL_55;
  }

  v19 = *(a3 + 16);
  v18 = *(a3 + 24);
  v16 = __OFSUB__(v18, v19);
  v17 = v18 - v19;
  if (v16)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_17:
  if (v17 != 1040)
  {
    goto LABEL_55;
  }

  v20 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v20)
    {
      v21 = BYTE6(a6);
      goto LABEL_27;
    }

LABEL_25:
    LODWORD(v21) = HIDWORD(a5) - a5;
    if (!__OFSUB__(HIDWORD(a5), a5))
    {
      v21 = v21;
      goto LABEL_27;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v20 != 2)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v23 = *(a5 + 16);
  v22 = *(a5 + 24);
  v16 = __OFSUB__(v22, v23);
  v21 = v22 - v23;
  if (v16)
  {
    __break(1u);
    goto LABEL_25;
  }

LABEL_27:
  if (v21 != 32)
  {
    goto LABEL_57;
  }

  v24 = a11 >> 62;
  if ((a11 >> 62) <= 1)
  {
    if (!v24)
    {
      v25 = BYTE6(a11);
      goto LABEL_37;
    }

LABEL_35:
    LODWORD(v25) = HIDWORD(a10) - a10;
    if (!__OFSUB__(HIDWORD(a10), a10))
    {
      v25 = v25;
      goto LABEL_37;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v24 != 2)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v27 = *(a10 + 16);
  v26 = *(a10 + 24);
  v16 = __OFSUB__(v26, v27);
  v25 = v26 - v27;
  if (v16)
  {
    __break(1u);
    goto LABEL_35;
  }

LABEL_37:
  if (v25 != 100)
  {
    goto LABEL_58;
  }

  v28 = a8 >> 62;
  if ((a8 >> 62) <= 1)
  {
    if (!v28)
    {
      v29 = BYTE6(a8);
      goto LABEL_47;
    }

LABEL_45:
    LODWORD(v29) = HIDWORD(a7) - a7;
    if (!__OFSUB__(HIDWORD(a7), a7))
    {
      v29 = v29;
      goto LABEL_47;
    }

    goto LABEL_54;
  }

  if (v28 != 2)
  {
    goto LABEL_59;
  }

  v31 = *(a7 + 16);
  v30 = *(a7 + 24);
  v16 = __OFSUB__(v30, v31);
  v29 = v30 - v31;
  if (v16)
  {
    __break(1u);
    goto LABEL_45;
  }

LABEL_47:
  if (v29 == 60)
  {
    v39 = a2 & 0xCFFFFFFFFFFFFFFFLL;
    v40 = a4 & 0xCFFFFFFFFFFFFFFFLL;
    v42 = a8 & 0xCFFFFFFFFFFFFFFFLL;
    v41 = a6 & 0xCFFFFFFFFFFFFFFFLL;
    v32 = result;
    sub_100017D5C(result, a2);
    sub_100017D5C(a3, a4);
    sub_100017D5C(a5, a6);
    sub_100017D5C(a7, a8);
    result = sub_100017D5C(a10, a11);
    *a9 = v32;
    a9[1] = v39;
    a9[2] = a3;
    a9[3] = v40;
    a9[4] = a5;
    a9[5] = v41;
    a9[6] = a7;
    a9[7] = v42;
    a9[8] = a10;
    a9[9] = a11 & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
    return result;
  }

LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1009BF214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (a3 >> 60 == 15)
  {
    sub_1009BF3DC();
    swift_allocError();
    *v5 = 9;
    return swift_willThrow();
  }

  v9 = v4;
  sub_10001F280(a1, v18);
  sub_100017D5C(a2, a3);
  sub_1000BC4D4(&qword_1016973C0, &unk_10138BF40);
  type metadata accessor for CollaborativeKeyGen.v1.OwnerContext();
  if (!swift_dynamicCast())
  {
    sub_1009BF3DC();
    swift_allocError();
    *v13 = 5;
    swift_willThrow();
    return sub_100006654(a2, a3);
  }

  v11 = CCCKGGetOpeningSize();

  sub_1003F141C(a2, a3, v17, v11, v16);
  if (v9)
  {

    sub_1009BF3DC();
    swift_allocError();
    *v12 = 10;
    swift_willThrow();

    return sub_100006654(a2, a3);
  }

  sub_100006654(a2, a3);

  v14 = v16[3];
  a4[2] = v16[2];
  a4[3] = v14;
  a4[4] = v16[4];
  v15 = v16[1];
  *a4 = v16[0];
  a4[1] = v15;
  return result;
}

unint64_t sub_1009BF3DC()
{
  result = qword_1016B13D8;
  if (!qword_1016B13D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B13D8);
  }

  return result;
}

uint64_t sub_1009BF430(uint64_t a1)
{
  if (((*(a1 + 72) >> 59) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 72) >> 59) & 6 | ((*(a1 + 56) & 0x2000000000000000) != 0);
  }
}

uint64_t sub_1009BF45C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FC && *(a1 + 80))
  {
    return (*a1 + 1020);
  }

  v3 = ((((*(a1 + 72) >> 52) & 0x300 | (*(a1 + 56) >> 54) & 0xC0) >> 7) & 0xFFFFFC07 | (8 * ((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (*(a1 + 56) >> 54) & 0x40))) ^ 0x3FF;
  if (v3 >= 0x3FB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1009BF4EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FB)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 1020;
    if (a3 >= 0x3FC)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FC)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0x7F | ((-a2 & 0x3FF) << 7);
      *result = 0;
      *(result + 8) = ((-a2 >> 3) & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = (v3 << 58) & 0x3000000000000000;
      *(result + 32) = 0;
      *(result + 40) = (v3 << 56) & 0x3000000000000000;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 54) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 52) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_1009BF580(uint64_t result)
{
  v1 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 56) &= ~0x2000000000000000uLL;
  *(result + 72) = v1;
  return result;
}

void *sub_1009BF59C(void *result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
    v3 = result[5] & 0xCFFFFFFFFFFFFFFFLL;
    v4 = result[7] & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
    v5 = result[9] & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 1) & 1) << 60);
    result[1] &= 0xCFFFFFFFFFFFFFFFLL;
    result[3] = v2;
    result[5] = v3;
    result[7] = v4;
    result[9] = v5;
  }

  else
  {
    *result = a2 - 4;
    *(result + 1) = 0u;
    *(result + 3) = 0u;
    *(result + 5) = 0u;
    *(result + 7) = 0u;
    result[9] = 0x2000000000000000;
  }

  return result;
}

uint64_t sub_1009BF638(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Connection.TransactionMode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100027FA4();
  if (v12)
  {
    v16[1] = v16;
    v13 = __chkstk_darwin(v12);
    v16[-6] = a3;
    v16[-5] = a4;
    v16[-4] = a1;
    LOBYTE(v16[-3]) = a2 & 1;
    v16[-2] = v13;
    (*(v9 + 104))(v11, enum case for Connection.TransactionMode.deferred(_:), v8);
    Connection.transaction(_:block:)();
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v15 = 2;
    *(v15 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1009BF810(uint64_t a1)
{
  v36 = a1;
  v1 = type metadata accessor for Table();
  v41 = *(v1 - 8);
  __chkstk_darwin(v1);
  v40 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v49 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  v44 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v38 = *(v44 - 8);
  v9 = __chkstk_darwin(v44);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v42 = &v33 - v12;
  __chkstk_darwin(v11);
  v43 = &v33 - v13;
  v14 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  v45 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconKeys;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v3, qword_10177C818);
  type metadata accessor for UUID();
  v15 = v36;
  QueryType.subscript.getter();
  v16 = v3;
  QueryType.subscript.getter();
  == infix<A>(_:_:)();
  v17 = (v49 + 8);
  v18 = *(v49 + 1);
  v18(v6, v16);
  v49 = v17;
  v18(v8, v16);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177C788);
  v34 = v16;
  v35 = v14;
  QueryType.subscript.getter();
  QueryType.subscript.getter();
  v19 = v37;
  == infix<A>(_:_:)();
  v20 = v34;
  v18(v6, v34);
  v18(v8, v20);
  v21 = v42;
  && infix(_:_:)();
  v22 = *(v38 + 8);
  v23 = v19;
  v24 = v44;
  v22(v23, v44);
  v49 = v22;
  v22(v21, v24);
  v47 = v1;
  v48 = &protocol witness table for Table;
  v25 = sub_1000280DC(v46);
  v26 = v41;
  v27 = *(v41 + 16);
  v27(v25, v15 + v45, v1);
  v28 = v15 + v35;
  v29 = v40;
  QueryType.join(_:on:)();
  sub_100007BAC(v46);
  v47 = v1;
  v48 = &protocol witness table for Table;
  v30 = sub_1000280DC(v46);
  v27(v30, v29, v1);
  v31 = v39;
  sub_10001E52C(v46, v15);
  if (v31)
  {
    (*(v26 + 8))(v29, v1);
    v49(v43, v44);
    sub_100007BAC(v46);
  }

  else
  {
    sub_100007BAC(v46);
    v28 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    (*(v26 + 8))(v29, v1);
    v49(v43, v44);
  }

  return v28;
}

uint64_t sub_1009BFDBC(uint64_t a1)
{
  v50 = a1;
  v1 = type metadata accessor for JoinType();
  v40 = *(v1 - 8);
  v41 = v1;
  __chkstk_darwin(v1);
  v39 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Table();
  v43 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v49 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v48 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v55 = *(v48 - 8);
  v11 = __chkstk_darwin(v48);
  v38 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v46 = &v36 - v14;
  __chkstk_darwin(v13);
  v47 = &v36 - v15;
  v16 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  v51 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconKeys;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177C818);
  type metadata accessor for UUID();
  v45 = v16;
  QueryType.subscript.getter();
  QueryType.subscript.getter();
  == infix<A>(_:_:)();
  v37 = v3;
  v17 = *(v49 + 1);
  v49 = (v49 + 8);
  v17(v8, v5);
  v17(v10, v5);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177C788);
  v18 = v37;
  QueryType.subscript.getter();
  QueryType.subscript.getter();
  v19 = v38;
  == infix<A>(_:_:)();
  v17(v8, v5);
  v17(v10, v5);
  v20 = v46;
  && infix(_:_:)();
  v21 = v55 + 8;
  v22 = *(v55 + 8);
  v23 = v19;
  v24 = v48;
  v22(v23, v48);
  v55 = v21;
  v49 = v22;
  v22(v20, v24);
  v25 = v39;
  v26 = v40;
  v27 = v41;
  (*(v40 + 104))(v39, enum case for JoinType.leftOuter(_:), v41);
  v53 = v18;
  v54 = &protocol witness table for Table;
  v28 = sub_1000280DC(v52);
  v29 = v43;
  v46 = *(v43 + 16);
  v30 = v50;
  (v46)(v28, v50 + v51, v18);
  v31 = v30 + v45;
  v32 = v42;
  QueryType.join(_:_:on:)();
  (*(v26 + 8))(v25, v27);
  sub_100007BAC(v52);
  v53 = v18;
  v54 = &protocol witness table for Table;
  v33 = sub_1000280DC(v52);
  (v46)(v33, v32, v18);
  v34 = v44;
  sub_10001E52C(v52, v50);
  if (v34)
  {
    (*(v29 + 8))(v32, v18);
    v49(v47, v48);
    sub_100007BAC(v52);
  }

  else
  {
    sub_100007BAC(v52);
    v31 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    (*(v29 + 8))(v32, v18);
    v49(v47, v48);
  }

  return v31;
}

uint64_t sub_1009C0458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Connection.TransactionMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100027FA4();
  if (v10)
  {
    v14[1] = v14;
    v11 = __chkstk_darwin(v10);
    v14[-4] = a3;
    v14[-3] = a1;
    v14[-2] = v11;
    v14[-1] = a2;
    (*(v7 + 104))(v9, enum case for Connection.TransactionMode.deferred(_:), v6);
    Connection.transaction(_:block:)();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1009C0618(void *a1, void *a2)
{
  v5 = type metadata accessor for KeyGenerationBeaconInfo(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v32 = &v29 - v9;
  v10 = type metadata accessor for Connection.TransactionMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100027FA4();
  if (v14)
  {
    v30 = v5;
    v31 = v8;
    v15 = __chkstk_darwin(v14);
    *(&v29 - 4) = a2;
    *(&v29 - 3) = a1;
    *(&v29 - 2) = v15;
    (*(v11 + 104))(v13, enum case for Connection.TransactionMode.deferred(_:), v10);
    Connection.transaction(_:block:)();
    if (v2)
    {
      (*(v11 + 8))(v13, v10);
    }

    else
    {
      (*(v11 + 8))(v13, v10);
      if (qword_1016944D0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000076D4(v18, qword_10177A5C0);
      v19 = v32;
      sub_100991F98(a1, v32);
      v20 = v31;
      sub_100991F98(a1, v31);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v33 = v29;
        *v23 = 141558531;
        *(v23 + 4) = 1752392040;
        *(v23 + 12) = 2081;
        type metadata accessor for BeaconIdentifier(0);
        type metadata accessor for UUID();
        sub_1002FFBAC();
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        sub_100992068(v19);
        v27 = sub_1000136BC(v24, v26, &v33);

        *(v23 + 14) = v27;
        *(v23 + 22) = 2050;
        v28 = *(v20 + *(v30 + 28));
        sub_100992068(v20);
        *(v23 + 24) = v28;
        _os_log_impl(&_mh_execute_header, v21, v22, "Saved KeyGenerationBeaconInfo for %{private,mask.hash}s, type: %{public}llu", v23, 0x20u);
        sub_100007BAC(v29);
      }

      else
      {
        sub_100992068(v20);

        return sub_100992068(v19);
      }
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v17 = 2;
    *(v17 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1009C0A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v68 = a1;
  v57[0] = a3;
  v67 = type metadata accessor for JoinType();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Table();
  v78 = *(v75 - 8);
  v4 = __chkstk_darwin(v75);
  v77 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = v57 - v6;
  v7 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v87 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v57 - v11;
  v76 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v83 = *(v76 - 8);
  v13 = __chkstk_darwin(v76);
  v64 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v82 = v57 - v16;
  v17 = __chkstk_darwin(v15);
  v81 = v57 - v18;
  __chkstk_darwin(v17);
  v74 = v57 - v19;
  v20 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  v79 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconKeys;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v21 = sub_1000076D4(v7, qword_10177C818);
  v22 = type metadata accessor for UUID();
  v73 = v20;
  QueryType.subscript.getter();
  v23 = v10;
  v63 = v21;
  QueryType.subscript.getter();
  == infix<A>(_:_:)();
  v25 = v87 + 8;
  v24 = *(v87 + 8);
  v24(v23, v7);
  v87 = v25;
  v24(v12, v7);
  v26 = v23;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v27 = sub_1000076D4(v7, qword_10177C788);
  v72 = v7;
  v28 = v80;
  v60 = v27;
  v29 = v75;
  QueryType.subscript.getter();
  QueryType.subscript.getter();
  v30 = v82;
  == infix<A>(_:_:)();
  v31 = v72;
  v24(v26, v72);
  v24(v12, v31);
  v59 = v24;
  v58 = v12;
  v32 = v81;
  && infix(_:_:)();
  v33 = v28;
  v34 = *(v83 + 8);
  v83 += 8;
  v71 = v34;
  v35 = v30;
  v36 = v76;
  v34(v35, v76);
  v34(v32, v36);
  v37 = v66;
  v38 = v65;
  v39 = v67;
  (*(v66 + 104))(v65, enum case for JoinType.leftOuter(_:), v67);
  v85 = v29;
  v86 = &protocol witness table for Table;
  v40 = sub_1000280DC(v84);
  v57[1] = v22;
  v41 = *(v78 + 16);
  v61 = v78 + 16;
  v62 = v41;
  v41(v40, (v33 + v79), v29);
  QueryType.join(_:_:on:)();
  (*(v37 + 8))(v38, v39);
  sub_100007BAC(v84);
  v42 = v58;
  QueryType.subscript.getter();
  == infix<A>(_:_:)();
  v43 = v72;
  v44 = v59;
  v59(v42, v72);
  QueryType.subscript.getter();
  type metadata accessor for BeaconIdentifier(0);
  v45 = v64;
  v46 = v78;
  == infix<A>(_:_:)();
  v44(v42, v43);
  v47 = v76;
  v48 = v82;
  v49 = v71;
  v50 = v81;
  && infix(_:_:)();
  v49(v45, v47);
  v49(v48, v47);
  v51 = v69;
  v52 = v77;
  QueryType.filter(_:)();
  v49(v50, v47);
  v53 = *(v46 + 8);
  v53(v52, v29);
  v85 = v29;
  v86 = &protocol witness table for Table;
  v54 = sub_1000280DC(v84);
  v62(v54, v51, v29);
  v55 = v70;
  sub_10001E52C(v84, v80);
  if (v55)
  {
    v53(v51, v29);
    v49(v74, v47);
    return sub_100007BAC(v84);
  }

  else
  {
    sub_100007BAC(v84);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    v53(v51, v29);
    return (v71)(v74, v47);
  }
}

uint64_t sub_1009C1320(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v187 = a4;
  v209 = a1;
  v210 = a3;
  v182 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  v172 = *(v182 - 8);
  __chkstk_darwin(v182);
  v181 = v164 - v5;
  v212 = type metadata accessor for OnConflict();
  v171 = *(v212 - 8);
  v6 = __chkstk_darwin(v212);
  v193 = v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v205 = v164 - v8;
  v195 = type metadata accessor for Insert();
  *&v170 = *(v195 - 8);
  v9 = __chkstk_darwin(v195);
  v180 = v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v206 = v164 - v11;
  v12 = type metadata accessor for Delete();
  v175 = *(v12 - 1);
  v13 = __chkstk_darwin(v12);
  v168 = v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v169 = v164 - v16;
  __chkstk_darwin(v15);
  v177 = v164 - v17;
  v194 = type metadata accessor for KeyGenerationBeaconInfo(0);
  v178 = *(v194 - 8);
  v18 = __chkstk_darwin(v194);
  v201 = v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v214 = (v164 - v20);
  v211 = type metadata accessor for UUID();
  v220 = *(v211 - 8);
  v21 = __chkstk_darwin(v211);
  v188 = v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v176 = v164 - v24;
  __chkstk_darwin(v23);
  v26 = v164 - v25;
  v191 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v198 = *(v191 - 8);
  __chkstk_darwin(v191);
  v196 = v164 - v27;
  v28 = type metadata accessor for Table();
  v200 = *(v28 - 8);
  v29 = __chkstk_darwin(v28);
  v192 = v164 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  *&v183 = v164 - v32;
  v33 = __chkstk_darwin(v31);
  v173 = (v164 - v34);
  v35 = __chkstk_darwin(v33);
  v37 = v164 - v36;
  __chkstk_darwin(v35);
  v197 = v164 - v38;
  v39 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  if (qword_1016952A0 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v179 = v26;
    v184 = v12;
    v208 = a2;
    v40 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    v41 = sub_1000076D4(v40, qword_10177C788);
    v218 = v40;
    v219 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
    v42 = sub_1000280DC(&v216);
    v43 = *(*(v40 - 8) + 16);
    v204 = v41;
    v43(v42, v41, v40);
    v199 = v39;
    SchemaType.select(_:_:)();
    sub_100007BAC(&v216);
    v44 = v37;
    v45 = v28;
    if (qword_1016952D0 != -1)
    {
      swift_once();
    }

    v46 = sub_1000076D4(v40, qword_10177C818);
    v47 = v196;
    v202 = v46;
    v48 = v211;
    == infix<A>(_:_:)();
    v49 = v197;
    QueryType.filter(_:)();
    v50 = v198 + 8;
    v190 = *(v198 + 8);
    v190(v47, v191);
    v51 = v200;
    v53 = v200 + 8;
    v52 = *(v200 + 8);
    v52(v44, v45);
    v218 = v45;
    v219 = &protocol witness table for Table;
    v54 = sub_1000280DC(&v216);
    v189 = v44;
    v57 = *(v51 + 16);
    v55 = v51 + 16;
    v56 = v57;
    v57(v54, v49, v45);
    v58 = v215;
    Connection.prepare(_:)();
    if (v58)
    {
      v52(v197, v45);
      return sub_100007BAC(&v216);
    }

    v200 = v55;
    v198 = v50;
    v174 = v56;
    v186 = v52;
    sub_100007BAC(&v216);
    v60 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
    v215 = 0;
    v61 = v60;

    v167 = sub_10000954C(v61);

    v62 = v187;
    v63 = *(v187 + 16);
    v64 = _swiftEmptyArrayStorage;
    v207 = v45;
    v65 = v179;
    v185 = v53;
    v203 = v63;
    if (v63)
    {
      v216 = _swiftEmptyArrayStorage;
      sub_101123D4C(0, v63, 0);
      v64 = v216;
      v66 = v62 + ((*(v178 + 80) + 32) & ~*(v178 + 80));
      v213 = *(v178 + 72);
      v67 = (v220 + 16);
      do
      {
        v68 = v214;
        sub_100991F98(v66, v214);
        v69 = type metadata accessor for BeaconIdentifier(0);
        (*v67)(v65, v68 + *(v69 + 20), v48);
        sub_100992068(v68);
        v216 = v64;
        v70 = v65;
        v72 = v64[2];
        v71 = v64[3];
        if (v72 >= v71 >> 1)
        {
          sub_101123D4C((v71 > 1), v72 + 1, 1);
          v64 = v216;
        }

        v64[2] = v72 + 1;
        (*(v220 + 32))(v64 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v72, v70, v48);
        v66 += v213;
        --v63;
        v65 = v70;
      }

      while (v63);
    }

    v73 = sub_10000954C(v64);

    if (*(v73 + 16) <= v167[2] >> 3)
    {
      v216 = v167;
      sub_10087D5B4(v73);

      v74 = v216;
    }

    else
    {
      v74 = sub_100610BC8(v73, v167);
    }

    v75 = v196;
    if (!v74[2])
    {
      break;
    }

    == infix<A>(_:_:)();
    v76 = v173;
    QueryType.filter(_:)();
    v77 = v191;
    v78 = v190;
    v190(v75, v191);
    v216 = v74;
    sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
    v214 = v74;
    v79 = v75;
    v80 = v207;
    sub_1000041A4(&qword_101699E08, &qword_1016AF8E0, &qword_101393130, &protocol conformance descriptor for Set<A>);
    Collection<>.contains(_:)();
    v81 = v189;
    QueryType.filter(_:)();
    v82 = v81;
    v78(v79, v77);
    v83 = v186;
    v186(v76, v80);
    v84 = v177;
    QueryType.delete()();
    v83(v82, v80);
    v85 = v215;
    Connection.run(_:)();
    if (v85)
    {

      (*(v175 + 8))(v84, v184);
      return (v83)(v197, v80);
    }

    v215 = 0;
    v26 = 0;
    v39 = v214;
    v86 = (v214 + 7);
    v87 = 1 << *(v214 + 32);
    v88 = -1;
    if (v87 < 64)
    {
      v88 = ~(-1 << v87);
    }

    v28 = v88 & v214[7];
    v164[2] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
    v164[1] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keySyncMetadata;
    v89 = (v87 + 63) >> 6;
    v173 = (v220 + 16);
    v167 = (v220 + 32);
    v179 = (v220 + 8);
    v12 = (v175 + 8);
    a2 = v188;
    v37 = v208;
    v213 = v175 + 8;
    v175 = (v214 + 7);
    v166 = v89;
    while (v28)
    {
LABEL_28:
      v92 = v220;
      v93 = *(v39 + 48) + *(v220 + 72) * (__clz(__rbit64(v28)) | (v26 << 6));
      v94 = v176;
      v95 = v211;
      (*(v220 + 16))(v176, v93, v211);
      (*(v92 + 32))(a2, v94, v95);
      v96 = v196;
      == infix<A>(_:_:)();
      v97 = v189;
      v98 = v207;
      QueryType.filter(_:)();
      v190(v96, v191);
      v99 = v183;
      QueryType.limit(_:)();
      v186(v97, v98);
      v218 = v98;
      v219 = &protocol witness table for Table;
      v100 = sub_1000280DC(&v216);
      v174(v100, v99, v98);
      v101 = v215;
      Connection.prepare(_:)();
      v215 = v101;
      if (v101)
      {

        v154 = v207;
        v155 = v186;
        v186(v99, v207);
        (*v179)(v188, v211);
        (*v213)(v177, v184);
        v155(v197, v154);
        return sub_100007BAC(&v216);
      }

      sub_100007BAC(&v216);
      v102 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

      v103 = *(v102 + 16);

      if (v103)
      {
        v90 = v186;
        v12 = v213;
        v39 = v214;
      }

      else
      {
        v104 = v196;
        == infix<A>(_:_:)();
        v105 = v189;
        v106 = v207;
        QueryType.filter(_:)();
        v107 = v191;
        v190(v104, v191);
        v108 = v169;
        QueryType.delete()();
        v186(v105, v106);
        v109 = v215;
        Connection.run(_:)();
        v215 = v109;
        if (v109)
        {

          v156 = *v213;
          v157 = v108;
          v158 = v184;
          (*v213)(v157, v184);
          v159 = v186;
          v186(v183, v106);
          (*v179)(v188, v211);
          (v156)(v177, v158);
          return v159(v197, v106);
        }

        v165 = *v213;
        (v165)(v108, v184);
        == infix<A>(_:_:)();
        QueryType.filter(_:)();
        v190(v104, v107);
        v110 = v168;
        QueryType.delete()();
        v186(v105, v106);
        v111 = v215;
        Connection.run(_:)();
        v215 = v111;
        if (v111)
        {

          v160 = v184;
          v161 = v165;
          (v165)(v110, v184);
          v162 = v207;
          v163 = v186;
          v186(v183, v207);
          (*v179)(v188, v211);
          (v161)(v177, v160);
          return v163(v197, v162);
        }

        v12 = v213;
        (v165)(v110, v184);
        v90 = v186;
        v99 = v183;
        v39 = v214;
      }

      v28 &= v28 - 1;
      v90(v99, v207);
      a2 = v188;
      (*v179)(v188, v211);
      v86 = v175;
      v89 = v166;
    }

    while (1)
    {
      v91 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v91 >= v89)
      {
        (*v12)(v177, v184);

        goto LABEL_34;
      }

      v28 = *(v86 + 8 * v91);
      ++v26;
      if (v28)
      {
        v26 = v91;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_64:
    swift_once();
  }

LABEL_34:
  v112 = v215;
  v113 = v203;
  if (!v203)
  {
    return (v186)(v197, v207);
  }

  v213 = v171 + 8;
  v214 = (v171 + 104);
  v173 = (v172 + 2);
  ++v172;
  v184 = (v170 + 8);
  v114 = *(v178 + 80);
  v171 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconKeys;
  v115 = v187 + ((v114 + 32) & ~v114);
  LODWORD(v198) = enum case for OnConflict.replace(_:);
  v179 = *(v178 + 72);
  v183 = xmmword_101391790;
  v170 = xmmword_10138C0D0;
  v116 = v201;
  while (1)
  {
    v203 = v113;
    v215 = v112;
    v220 = v115;
    sub_100991F98(v115, v116);
    v190 = *v214;
    (v190)(v205, v198, v212);
    v117 = sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
    v118 = *(type metadata accessor for Setter() - 8);
    v119 = *(v118 + 72);
    v120 = (*(v118 + 80) + 32) & ~*(v118 + 80);
    v196 = (4 * v119);
    v189 = v117;
    *(swift_allocObject() + 16) = v183;
    v187 = v120;
    <- infix<A>(_:_:)();
    v188 = *(type metadata accessor for BeaconIdentifier(0) + 20);
    <- infix<A>(_:_:)();
    if (qword_1016952D8 != -1)
    {
      swift_once();
    }

    v121 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
    sub_1000076D4(v121, qword_10177C830);
    v122 = v194;
    type metadata accessor for Date();
    v191 = 2 * v119;
    <- infix<A>(_:_:)();
    if (qword_1016952F0 != -1)
    {
      swift_once();
    }

    v123 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
    sub_1000076D4(v123, qword_10177C878);
    v216 = *(v116 + *(v122 + 28));
    sub_100029580();
    <- infix<A>(_:_:)();
    v124 = v205;
    QueryType.insert(or:_:)();

    v125 = *v213;
    (*v213)(v124, v212);
    v126 = v215;
    Connection.run(_:)();
    v215 = v126;
    if (v126)
    {
      (*v184)(v206, v195);
      sub_100992068(v116);
      return (v186)(v197, v207);
    }

    v127 = (v116 + *(v122 + 24));
    v128 = v127[1];
    if (v128 >> 60 != 15)
    {
      break;
    }

    (*v184)(v206, v195);
    v112 = v215;
LABEL_37:
    v116 = v201;
    sub_100992068(v201);
    v115 = v179 + v220;
    v113 = v203 - 1;
    if (v203 == 1)
    {
      return (v186)(v197, v207);
    }
  }

  v175 = 3 * v119;
  v177 = v125;
  v129 = *v127;
  v130 = v127[2];
  v131 = v127[3];
  v133 = v127[4];
  v132 = v127[5];
  v174(v192, v209 + v171, v207);
  (v190)(v193, v198, v212);
  v134 = swift_allocObject();
  *(v134 + 16) = v170;
  v176 = v134;
  sub_100017D5C(v129, v128);
  v189 = v130;
  v190 = v131;
  sub_100017D5C(v130, v131);
  v187 = v133;
  v178 = v132;
  sub_1002DBC68(v133, v132);
  <- infix<A>(_:_:)();
  <- infix<A>(_:_:)();
  if (qword_1016952E0 != -1)
  {
    swift_once();
  }

  v135 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v135, qword_10177C848);
  v216 = v129;
  v217 = v128;
  v188 = v128;
  sub_100017D5C(v129, v128);
  <- infix<A>(_:_:)();
  sub_100016590(v216, v217);
  v136 = v177;
  if (qword_1016952C0 != -1)
  {
    swift_once();
  }

  v191 = v129;
  sub_1000076D4(v135, qword_10177C7E8);
  v216 = v189;
  v217 = v190;
  sub_100017D5C(v189, v190);
  <- infix<A>(_:_:)();
  sub_100016590(v216, v217);
  v137 = v178;
  if (qword_1016952E8 != -1)
  {
    swift_once();
  }

  v138 = v182;
  v139 = sub_1000076D4(v182, qword_10177C860);
  v140 = v181;
  (*v173)(v181, v139, v138);
  v141 = v187;
  if (v137 >> 60 == 15)
  {
    v142 = 0;
  }

  else
  {
    v142 = v187;
  }

  v143 = 0xF000000000000000;
  if (v137 >> 60 != 15)
  {
    v143 = v137;
  }

  v216 = v142;
  v217 = v143;
  sub_1002DBC68(v187, v137);
  <- infix<A>(_:_:)();
  sub_100006654(v216, v217);
  (*v172)(v140, v138);
  v144 = v180;
  v145 = v193;
  v146 = v207;
  v147 = v192;
  QueryType.insert(or:_:)();
  v148 = v144;

  (v136)(v145, v212);
  v186(v147, v146);
  v149 = v215;
  Connection.run(_:)();
  v112 = v149;
  if (!v149)
  {
    sub_100883574(v191, v188, v189, v190, v141, v137);
    v150 = *v184;
    v151 = v195;
    (*v184)(v148, v195);
    v150(v206, v151);
    goto LABEL_37;
  }

  sub_100883574(v191, v188, v189, v190, v141, v137);
  v152 = *v184;
  v153 = v195;
  (*v184)(v148, v195);
  v152(v206, v153);
  sub_100992068(v201);
  return (v186)(v197, v207);
}

uint64_t sub_1009C3100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v19 = a1;
  v4 = type metadata accessor for OnConflict();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Insert();
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationBeaconInfo;
  v20 = v5;
  v10 = *(v5 + 104);
  v18 = v7;
  v22 = v4;
  v10(v7, enum case for OnConflict.replace(_:), v4);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  type metadata accessor for Setter();
  *(swift_allocObject() + 16) = xmmword_101391790;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v11, qword_10177C818);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v11, qword_10177C788);
  type metadata accessor for BeaconIdentifier(0);
  <- infix<A>(_:_:)();
  if (qword_1016952D8 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v12, qword_10177C830);
  v13 = type metadata accessor for KeyGenerationBeaconInfo(0);
  type metadata accessor for Date();
  <- infix<A>(_:_:)();
  if (qword_1016952F0 != -1)
  {
    swift_once();
  }

  v14 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v14, qword_10177C878);
  v25 = *(a2 + *(v13 + 28));
  sub_100029580();
  <- infix<A>(_:_:)();
  type metadata accessor for Table();
  v15 = v18;
  QueryType.insert(or:_:)();

  (*(v20 + 8))(v15, v22);
  Connection.run(_:)();
  return (*(v21 + 8))(v9, v23);
}

uint64_t sub_1009C3594(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v42 = a2;
  v43 = a5;
  v10 = type metadata accessor for OnConflict();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Insert();
  result = __chkstk_darwin(v41);
  v17 = *(a1 + 16);
  if (v17)
  {
    v19 = *(v11 + 104);
    v18 = v11 + 104;
    v37 = v19;
    v36 = a4 & 1;
    v35 = (v18 - 96);
    v32 = (v15 + 8);
    v20 = (a1 + 48);
    v34 = enum case for OnConflict.replace(_:);
    v33 = xmmword_10138C0D0;
    v39 = v13;
    v40 = v10;
    v31[2] = v18;
    v38 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31[1] = a3;
    while (1)
    {
      v50 = v6;
      v21 = *(v20 - 2);
      v22 = *(v20 - 1);
      v44 = v17;
      v45 = v21;
      v23 = *v20;
      v46 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationHint;
      v37(v13, v34, v10);
      sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
      type metadata accessor for Setter();
      *(swift_allocObject() + 16) = v33;
      v47 = v23;
      sub_100017D5C(v22, v23);
      if (qword_1016952D0 != -1)
      {
        swift_once();
      }

      v24 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v24, qword_10177C818);
      type metadata accessor for UUID();
      <- infix<A>(_:_:)();
      if (qword_1016952A0 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v24, qword_10177C788);
      type metadata accessor for BeaconIdentifier(0);
      <- infix<A>(_:_:)();
      v25 = v38;
      if (qword_1016952B0 != -1)
      {
        swift_once();
      }

      v26 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
      sub_1000076D4(v26, qword_10177C7B8);
      LOBYTE(v48) = v36;
      sub_100028088();
      <- infix<A>(_:_:)();
      if (qword_1016952A8 != -1)
      {
        swift_once();
      }

      v27 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
      sub_1000076D4(v27, qword_10177C7A0);
      v48 = v45;
      sub_100029580();
      <- infix<A>(_:_:)();
      if (qword_1016952C0 != -1)
      {
        swift_once();
      }

      v28 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
      sub_1000076D4(v28, qword_10177C7E8);
      v29 = v47;
      v48 = v22;
      v49 = v47;
      sub_100017D5C(v22, v47);
      <- infix<A>(_:_:)();
      sub_100016590(v48, v49);
      type metadata accessor for Table();
      v13 = v39;
      QueryType.insert(or:_:)();

      v10 = v40;
      (*v35)(v13, v40);
      v30 = v50;
      Connection.run(_:)();
      v6 = v30;
      if (v30)
      {
        break;
      }

      v20 += 3;
      (*v32)(v25, v41);
      result = sub_100016590(v22, v29);
      v17 = v44 - 1;
      if (v44 == 1)
      {
        return result;
      }
    }

    (*v32)(v25, v41);
    return sub_100016590(v22, v29);
  }

  return result;
}

void *sub_1009C3B88(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v72 = v69 - v6;
  v77 = type metadata accessor for Row();
  v7 = *(v77 - 1);
  v8 = __chkstk_darwin(v77);
  v10 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v71 = v69 - v12;
  __chkstk_darwin(v11);
  v76 = v69 - v13;
  v14 = sub_100028E90();
  if (!v14)
  {
    sub_10020223C();
    swift_allocError();
    *v18 = 2;
    *(v18 + 4) = 1;
    return swift_willThrow();
  }

  v15 = v14;
  v16 = Connection.prepare(_:)();
  if (v1)
  {
  }

  v70 = v7;
  v69[1] = 0;
  v19 = v16;

  v20 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v82 = _swiftEmptyArrayStorage;
  sub_101124920(0, v20 & ~(v20 >> 63), 0);
  v79 = v82;
  v69[3] = v19;
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  v78 = result;
  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = v77;
    v69[2] = v15;
    if (v20)
    {
      v74 = (v70 + 16);
      v75 = (v70 + 48);
      v73 = (v70 + 8);
      do
      {
        dispatch thunk of _AnyIteratorBoxBase.next()();
        result = (*v75)(v5, 1, v21);
        if (result == 1)
        {
          goto LABEL_74;
        }

        (*v74)(v10, v5, v21);
        if (qword_1016952A8 != -1)
        {
          swift_once();
        }

        v22 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
        sub_1000076D4(v22, qword_10177C7A0);
        sub_100029580();
        Row.subscript.getter();
        v23 = v80;
        if (qword_1016952C0 != -1)
        {
          swift_once();
        }

        v24 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
        sub_1000076D4(v24, qword_10177C7E8);
        result = Row.subscript.getter();
        v25 = v80;
        v26 = v81;
        v27 = v81 >> 62;
        if ((v81 >> 62) > 1)
        {
          if (v27 != 2)
          {

            v59 = 0;
            goto LABEL_60;
          }

          v29 = *(v80 + 16);
          v28 = *(v80 + 24);
          v30 = __OFSUB__(v28, v29);
          v31 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          if (v31 != 32)
          {
            goto LABEL_47;
          }
        }

        else if (v27)
        {
          if (__OFSUB__(HIDWORD(v80), v80))
          {
            goto LABEL_68;
          }

          if (HIDWORD(v80) - v80 != 32)
          {
LABEL_47:

            if (v27 == 2)
            {
              v62 = *(v25 + 16);
              v61 = *(v25 + 24);
              v59 = v61 - v62;
              if (__OFSUB__(v61, v62))
              {
                __break(1u);
                goto LABEL_59;
              }
            }

            else
            {
              if (v27 == 1)
              {
                if (__OFSUB__(HIDWORD(v25), v25))
                {
                  goto LABEL_72;
                }

                v59 = HIDWORD(v25) - v25;
                goto LABEL_60;
              }

LABEL_59:
              v59 = BYTE6(v26);
            }

LABEL_60:
            sub_100018350();
            swift_allocError();
            *v63 = 32;
            *(v63 + 8) = v59;
            *(v63 + 16) = 0;
            swift_willThrow();

            sub_100016590(v25, v26);

            v64 = *v73;
            (*v73)(v10, v21);

            return (v64)(v5, v21);
          }
        }

        else if (BYTE6(v81) != 32)
        {
          goto LABEL_47;
        }

        v32 = *v73;
        (*v73)(v10, v21);
        v32(v5, v21);
        v33 = v79;
        v82 = v79;
        v35 = v79[2];
        v34 = v79[3];
        if (v35 >= v34 >> 1)
        {
          sub_101124920((v34 > 1), v35 + 1, 1);
          v33 = v82;
        }

        v33[2] = v35 + 1;
        v79 = v33;
        v36 = &v33[3 * v35];
        v36[4] = v23;
        v36[5] = v25;
        v36[6] = v26;
        --v20;
        v21 = v77;
      }

      while (v20);
    }

    v37 = v72;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v38 = v70;
    v77 = *(v70 + 48);
    if ((v77)(v37, 1, v21) == 1)
    {
LABEL_27:

      sub_10000B3A8(v37, &qword_101699D68, &unk_1013B6450);
      sub_1000BC4D4(&qword_1016B13E8, &qword_1013D09F8);
      result = swift_allocObject();
      result[2] = v79;
      return result;
    }

    v40 = *(v38 + 32);
    v39 = v38 + 32;
    v74 = (v39 - 16);
    v75 = v40;
    v70 = v39;
    v41 = (v39 - 24);
    while (1)
    {
      v42 = v76;
      (v75)(v76, v37, v21);
      v43 = v71;
      (*v74)(v71, v42, v21);
      if (qword_1016952A8 != -1)
      {
        swift_once();
      }

      v44 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
      sub_1000076D4(v44, qword_10177C7A0);
      sub_100029580();
      Row.subscript.getter();
      v45 = v80;
      if (qword_1016952C0 != -1)
      {
        swift_once();
      }

      v46 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
      sub_1000076D4(v46, qword_10177C7E8);
      result = Row.subscript.getter();
      v47 = v80;
      v48 = v81;
      v49 = v81 >> 62;
      if ((v81 >> 62) > 1)
      {
        if (v49 != 2)
        {

          v60 = 0;
          goto LABEL_66;
        }

        v52 = *(v80 + 16);
        v51 = *(v80 + 24);
        v30 = __OFSUB__(v51, v52);
        v50 = v51 - v52;
        if (v30)
        {
          goto LABEL_69;
        }
      }

      else if (v49)
      {
        LODWORD(v50) = HIDWORD(v80) - v80;
        if (__OFSUB__(HIDWORD(v80), v80))
        {
          goto LABEL_70;
        }

        v50 = v50;
      }

      else
      {
        v50 = BYTE6(v81);
      }

      if (v50 != 32)
      {
        break;
      }

      v53 = *v41;
      (*v41)(v43, v21);
      v53(v76, v21);
      v54 = v79;
      v82 = v79;
      v55 = v21;
      v57 = v79[2];
      v56 = v79[3];
      if (v57 >= v56 >> 1)
      {
        sub_101124920((v56 > 1), v57 + 1, 1);
        v54 = v82;
      }

      v54[2] = v57 + 1;
      v79 = v54;
      v58 = &v54[3 * v57];
      v58[4] = v45;
      v58[5] = v47;
      v58[6] = v48;
      v37 = v72;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v21 = v55;
      if ((v77)(v37, 1, v55) == 1)
      {
        goto LABEL_27;
      }
    }

    if (v49 == 2)
    {
      v66 = *(v47 + 16);
      v65 = *(v47 + 24);
      v60 = v65 - v66;
      if (!__OFSUB__(v65, v66))
      {
        goto LABEL_66;
      }

      __break(1u);
    }

    else if (v49 == 1)
    {
      if (__OFSUB__(HIDWORD(v47), v47))
      {
        goto LABEL_73;
      }

      v60 = HIDWORD(v47) - v47;
      goto LABEL_66;
    }

    v60 = BYTE6(v48);
LABEL_66:
    sub_100018350();
    swift_allocError();
    *v67 = 32;
    *(v67 + 8) = v60;
    *(v67 + 16) = 0;
    swift_willThrow();

    sub_100016590(v47, v48);

    v68 = *v41;
    (*v41)(v43, v21);
    v68(v76, v21);
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_1009C44D0(uint64_t a1, uint64_t a2)
{
  sub_1009C0458(a1, a2, *v2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1009C454C()
{
  v2 = sub_1009BFDBC(*v0);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1009C45C8(uint64_t a1, uint64_t a2)
{
  sub_1009C0A2C(a2, *v2, a1);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1009C4650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Row();
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  result = sub_1009B4F48(v7, a2);
  if (v2)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    result = swift_allocError();
    *v10 = v2;
  }

  return result;
}

uint64_t sub_1009C475C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40[9] = a3;
  v35 = a2;
  v34 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3 = *(v34 - 8);
  v4 = __chkstk_darwin(v34);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v32 - v8;
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = type metadata accessor for Table();
  v37 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v36 = &v32 - v17;
  v18 = __chkstk_darwin(v16);
  v38 = &v32 - v19;
  v32 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keyGenerationHint;
  if (qword_1016952D0 != -1)
  {
    v31 = v18;
    swift_once();
    v18 = v31;
  }

  v33 = v18;
  v20 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v20, qword_10177C818);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v20, qword_10177C788);
  type metadata accessor for BeaconIdentifier(0);
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v21 = *(v3 + 8);
  v22 = v34;
  v21(v6, v34);
  v21(v9, v22);
  v23 = v33;
  QueryType.filter(_:)();
  v21(v11, v22);
  if (qword_1016952A8 != -1)
  {
    swift_once();
  }

  v32 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v32, qword_10177C7A0);
  v40[0] = v35;
  sub_100029580();
  <= infix<A>(_:_:)();
  v24 = v36;
  QueryType.filter(_:)();
  v21(v11, v22);
  v25 = v37;
  v26 = *(v37 + 8);
  v26(v15, v23);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  sub_1000041A4(&qword_10169DDA0, &qword_101699DE8, &qword_101393120, &protocol conformance descriptor for Expression<A>);
  ExpressionType.desc.getter();
  v27 = v38;
  QueryType.order(_:)();

  v26(v24, v23);
  v40[3] = v23;
  v40[4] = &protocol witness table for Table;
  v28 = sub_1000280DC(v40);
  (*(v25 + 16))(v28, v27, v23);
  v29 = v39;
  sub_1009C3B88(v40);
  if (v29)
  {
    v26(v27, v23);
    return sub_100007BAC(v40);
  }

  else
  {
    sub_100007BAC(v40);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    v26(v27, v23);
    return v40[5];
  }
}

uint64_t type metadata accessor for LostModeEndPoint(uint64_t a1)
{
  result = qword_1016B1448;
  if (!qword_1016B1448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1009C4DB4()
{
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v0 = URLComponents.path.modify();
  v1._countAndFlagsBits = 0x646F4D74736F6C2FLL;
  v1._object = 0xE900000000000065;
  String.append(_:)(v1);
  return v0(&v3, 0);
}

uint64_t sub_1009C4EC0(uint64_t a1)
{
  v2 = type metadata accessor for FeatureSupportMatrix(0);
  v68 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v64 - v9;
  v11 = type metadata accessor for BeaconProductInfoRecord(0);
  v69 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v64 - v15;
  v17 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v17);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000325D4(a1, v19, type metadata accessor for OwnedBeaconRecord);
  My = type metadata accessor for Feature.FindMy();
  v70[3] = My;
  v70[4] = sub_10004521C();
  v21 = sub_1000280DC(v70);
  (*(*(My - 8) + 104))(v21, enum case for Feature.FindMy.separationAlerts(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v70);
  if ((My & 1) == 0)
  {
    goto LABEL_38;
  }

  v64 = v4;
  v65 = v14;
  v67 = v11;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v66 = v70[0];
  v22 = sub_100D60CD0();
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {

    goto LABEL_9;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v27 & 1) == 0)
  {
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
    v34 = v22;
    if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v35)
    {

      v36 = v67;
      v37 = v65;
LABEL_23:

      sub_100AC1584(&v19[*(v17 + 20)], v8);
      sub_1009C650C(v19, type metadata accessor for OwnedBeaconRecord);
      if ((*(v69 + 48))(v8, 1, v36) == 1)
      {
        v30 = v8;
        goto LABEL_25;
      }

      sub_1009C656C(v8, v37, type metadata accessor for BeaconProductInfoRecord);
      v38 = *(v37 + *(v36 + 80));
      v39 = v37;
LABEL_27:
      sub_1009C650C(v39, type metadata accessor for BeaconProductInfoRecord);
      LODWORD(v29) = (v38 >> 11) & 1;
      return v29 & 1;
    }

    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v36 = v67;
    v37 = v65;
    if (v40)
    {
      goto LABEL_19;
    }

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
    if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
    {

      goto LABEL_23;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {
LABEL_19:

      goto LABEL_23;
    }

    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;
    if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
    {
    }

    else
    {
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v50 & 1) == 0)
      {

        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;
        if (v55 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v57 == v58)
        {
        }

        else
        {
          v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v59 & 1) == 0)
          {
            v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v62 = v61;
            if (v60 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v62 != v63)
            {
              _stringCompareWithSmolCheck(_:_:expecting:)();
            }

LABEL_37:

LABEL_38:
            sub_1009C650C(v19, type metadata accessor for OwnedBeaconRecord);
            goto LABEL_39;
          }
        }

        sub_1009C650C(v19, type metadata accessor for OwnedBeaconRecord);

        goto LABEL_39;
      }
    }

    v29 = sub_101073E50(v66);

    v51 = v64;
    if (*(v29 + 16))
    {
      v52 = sub_100771D84(1);
      if (v53)
      {
        sub_1000325D4(*(v29 + 56) + *(v68 + 72) * v52, v51, type metadata accessor for FeatureSupportMatrix);

        LOBYTE(v29) = sub_1009C5794(v19, v51);
        sub_1009C650C(v51, type metadata accessor for FeatureSupportMatrix);
        goto LABEL_11;
      }
    }

    goto LABEL_37;
  }

LABEL_9:
  v28 = v67;
  if (*&v19[*(v17 + 68)] != 21760)
  {

    sub_100AC1584(&v19[*(v17 + 20)], v10);
    sub_1009C650C(v19, type metadata accessor for OwnedBeaconRecord);
    if ((*(v69 + 48))(v10, 1, v28) == 1)
    {
      v30 = v10;
LABEL_25:
      sub_10000B3A8(v30, &unk_1016AF8C0, &unk_1013A07A0);
LABEL_39:
      LOBYTE(v29) = 0;
      return v29 & 1;
    }

    sub_1009C656C(v10, v16, type metadata accessor for BeaconProductInfoRecord);
    v38 = *&v16[*(v28 + 80)];
    v39 = v16;
    goto LABEL_27;
  }

  LOBYTE(v29) = sub_101073E44(v66);

LABEL_11:
  sub_1009C650C(v19, type metadata accessor for OwnedBeaconRecord);
  return v29 & 1;
}

uint64_t sub_1009C5794(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697BC8, &qword_10138CBE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for SystemVersionNumber();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000325D4(a1, v13, type metadata accessor for OwnedBeaconRecord);

  v14 = sub_10088D4B8();
  if (v15)
  {
    v18 = v15;
    v23 = a2;
    v24 = v17;
    v19 = v16;
    v20 = v14;

    sub_1009C650C(v13, type metadata accessor for OwnedBeaconRecord);
    SystemVersionNumber.init(rawValue:)();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      v21 = sub_100E96A14(v20, v18, v19, v24, v10);

      (*(v8 + 8))(v10, v7);
      return v21 & 1;
    }

    sub_10000B3A8(v6, &qword_101697BC8, &qword_10138CBE0);
  }

  else
  {
    sub_1009C650C(v13, type metadata accessor for OwnedBeaconRecord);
  }

  v21 = 0;
  return v21 & 1;
}

void *sub_1009C5A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a2;
  v59 = type metadata accessor for LocalFindableAccessoryRecord(0);
  __chkstk_darwin(v59);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - v10;
  v63 = type metadata accessor for StableIdentifier(0);
  v12 = __chkstk_darwin(v63);
  v62 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v58 - v14;
  v15 = type metadata accessor for SharedBeaconRecord(0);
  v16 = __chkstk_darwin(v15);
  v60 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v58 - v18;
  v20 = type metadata accessor for OwnedBeaconRecord(0);
  v21 = __chkstk_darwin(v20);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v58 - v24;
  v71[3] = a3;
  v71[4] = a4;
  v26 = sub_1000280DC(v71);
  (*(*(a3 - 8) + 16))(v26, a1, a3);
  sub_10001F280(v71, v70);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if (swift_dynamicCast())
  {
    sub_1009C656C(v25, v23, type metadata accessor for OwnedBeaconRecord);
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    v27 = v66[0];
    if (qword_1016954E8 != -1)
    {
      swift_once();
    }

    v28 = qword_10177CE20;
    v67 = &type metadata for KoreaFeatureFlag;
    v29 = sub_10013CCC4();
    v68 = v29;

    v30 = isFeatureEnabled(_:)();
    sub_100007BAC(v66);
    if ((v30 & 1) != 0 || (sub_100EF9844() & 1) == 0)
    {
      v65 = v28;
    }

    else
    {
      v65 = v28;
      sub_1010F6870(2);
      sub_1010F6870(1);
    }

    if (sub_1009C4EC0(v23) & 1) != 0 && ((v67 = &type metadata for KoreaFeatureFlag, v68 = v29, v35 = isFeatureEnabled(_:)(), sub_100007BAC(v66), (v35) || (sub_100EF9844() & 1) == 0))
    {
      sub_100DEB610(v66, 8);
      sub_100DEB610(v66, 9);
    }

    else
    {
      sub_1010F6870(8);
      sub_1010F6870(9);
    }

    v37 = *(v20 + 24);
    v38 = v61;
    sub_1000325D4(&v23[v37], v61, type metadata accessor for StableIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1009C650C(v38, type metadata accessor for StableIdentifier);
    if (EnumCaseMultiPayload != 1)
    {
      sub_1010F6870(12);
      sub_1010F6870(13);
    }

    if ((sub_100D60B1C() & 1) == 0 || (My = type metadata accessor for Feature.FindMy(), v67 = My, v68 = sub_10004521C(), v41 = sub_1000280DC(v66), (*(*(My - 8) + 104))(v41, enum case for Feature.FindMy.btRSSIFinding(_:), My), LOBYTE(My) = isFeatureEnabled(_:)(), sub_100007BAC(v66), (My & 1) == 0))
    {
      sub_1010F6870(10);
      sub_1010F6870(11);
    }

    v42 = v62;
    sub_1000325D4(&v23[v37], v62, type metadata accessor for StableIdentifier);
    v43 = swift_getEnumCaseMultiPayload();
    sub_1009C650C(v42, type metadata accessor for StableIdentifier);
    if (!v43)
    {
      sub_1010F6870(7);
    }

    if (sub_1000322C8() & 1) != 0 && (v44 = type metadata accessor for Feature.FindMy(), v67 = v44, v45 = sub_10004521C(), v68 = v45, v46 = sub_1000280DC(v66), v47 = *(*(v44 - 8) + 104), v47(v46, enum case for Feature.FindMy.itemSharing(_:), v44), v48 = isFeatureEnabled(_:)(), sub_100007BAC(v66), (v48))
    {
      sub_100DEB610(v66, 4);
      v67 = v44;
      v68 = v45;
      v49 = sub_1000280DC(v66);
      v47(v49, enum case for Feature.FindMy.cowardlyCarrot(_:), v44);
      v50 = isFeatureEnabled(_:)();
      sub_100007BAC(v66);
      if (v50)
      {
        v51 = sub_101073410(v27);

        if ((v51 & 1) == 0)
        {
          sub_100DEB610(v66, 21);
LABEL_42:
          sub_1009C650C(v23, type metadata accessor for OwnedBeaconRecord);
          v36 = v65;
          goto LABEL_60;
        }
      }

      else
      {
      }
    }

    else
    {

      v52 = v65;
      if (sub_10111F67C(4, v65))
      {
        sub_1010F6870(4);
        v52 = v65;
      }

      if (sub_10111F67C(5, v52))
      {
        sub_1010F6870(5);
      }
    }

    sub_1010F6870(21);
    goto LABEL_42;
  }

  if (swift_dynamicCast())
  {
    v31 = v60;
    sub_1009C656C(v19, v60, type metadata accessor for SharedBeaconRecord);
    v66[0] = &_swiftEmptySetSingleton;
    sub_100AC1584(v31 + v15[5], v11);
    v32 = type metadata accessor for BeaconProductInfoRecord(0);
    if ((*(*(v32 - 8) + 48))(v11, 1, v32) == 1)
    {
      sub_10000B3A8(v11, &unk_1016AF8C0, &unk_1013A07A0);
      v33 = *(v31 + v15[11]);
      if (v33 == -1)
      {
        if (*(v31 + v15[12]) == -1)
        {
          sub_100DEB610(&v69, 6);
          sub_100DEB610(&v69, 3);
          sub_100DEB610(&v69, 14);
          v54 = 15;
          goto LABEL_49;
        }
      }

      else if (v33 == 76)
      {
        v34 = *(v31 + v15[12]);
        if (!HIDWORD(v34) && (v34 == 22034 || v34 == 21760))
        {
          sub_100DEB610(&v69, 6);
          sub_100DEB610(&v69, 7);
          sub_100DEB610(&v69, 12);
          sub_100DEB610(&v69, 13);
LABEL_48:
          sub_100DEB610(&v69, 17);
          sub_100DEB610(&v69, 3);
          sub_100DEB610(&v69, 16);
          v54 = 5;
LABEL_49:
          sub_100DEB610(&v69, v54);
        }
      }

      if (*(v31 + v15[16]) == 5)
      {
        sub_100DEB610(&v69, 6);
        sub_1010F6870(7);
        sub_100DEB610(&v69, 3);
        if (*(v31 + v15[11]) != 76)
        {
          goto LABEL_59;
        }

        v55 = *(v31 + v15[12]);
        if (HIDWORD(v55) || v55 != 22034 && v55 != 21760)
        {
          goto LABEL_59;
        }

        sub_100DEB610(&v69, 12);
        v56 = 13;
      }

      else
      {
        v56 = 5;
      }

      sub_100DEB610(&v69, v56);
LABEL_59:
      sub_1009C650C(v31, type metadata accessor for SharedBeaconRecord);
      v36 = v66[0];
      goto LABEL_60;
    }

    v53 = *&v11[*(v32 + 80)];
    sub_1009C650C(v11, type metadata accessor for BeaconProductInfoRecord);
    if (v53)
    {
      sub_100DEB610(&v69, 6);
      sub_100DEB610(&v69, 7);
      if ((v53 & 0x400) == 0)
      {
LABEL_45:
        if ((v53 & 0x100) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_64;
      }
    }

    else if ((v53 & 0x400) == 0)
    {
      goto LABEL_45;
    }

    sub_100DEB610(&v69, 10);
    sub_100DEB610(&v69, 11);
    if ((v53 & 0x100) == 0)
    {
LABEL_46:
      if ((v53 & 0x4000) == 0)
      {
        goto LABEL_48;
      }

LABEL_47:
      sub_100DEB610(&v69, 22);
      sub_100DEB610(&v69, 23);
      goto LABEL_48;
    }

LABEL_64:
    sub_100DEB610(&v69, 12);
    sub_100DEB610(&v69, 13);
    if ((v53 & 0x4000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (swift_dynamicCast())
  {
    v36 = sub_100B041C8(&off_101608658);
    sub_1009C650C(v8, type metadata accessor for LocalFindableAccessoryRecord);
  }

  else
  {
    v36 = &_swiftEmptySetSingleton;
  }

LABEL_60:
  sub_100007BAC(v70);
  sub_100007BAC(v71);
  return v36;
}

uint64_t sub_1009C650C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1009C656C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1009C65D4(id *a1, uint64_t a2)
{
  v5 = type metadata accessor for Date();
  v62 = *(v5 - 8);
  __chkstk_darwin(v5);
  v57 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v8 = __chkstk_darwin(v7 - 8);
  v58 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v54 - v10;
  v12 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  v15 = type metadata accessor for ShareRecord(0);
  __chkstk_darwin(v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A1B358(a2, v17, type metadata accessor for ShareRecord);
  v18 = [*a1 encryptedValues];
  ObjectType = swift_getObjectType();
  v63 = v15;
  type metadata accessor for UUID();
  sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v19 = UUID.uuidString.getter();
    *(&v65 + 1) = &type metadata for String;
    v66 = &protocol witness table for String;
    *&v64 = v19;
    *(&v64 + 1) = v20;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v21 = v63[7];
  v22 = sub_100003F64(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    *(&v65 + 1) = v5;
    v66 = &protocol witness table for Date;
    v23 = sub_1000280DC(&v64);
    (*(v62 + 16))(v23, &v17[v21], v5);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v59 = v2;
  v60 = v18;
  v24 = v63[8];
  v25 = *(v12 + 48);
  sub_1000D2A70(v2 + v24, v14, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(&v17[v24], &v14[v25], &unk_101696900, &unk_10138B1E0);
  v26 = *(v62 + 48);
  if (v26(v14, 1, v5) == 1)
  {
    if (v26(&v14[v25], 1, v5) == 1)
    {
      sub_10000B3A8(v14, &unk_101696900, &unk_10138B1E0);
      v27 = v63;
      goto LABEL_15;
    }
  }

  else
  {
    v28 = v11;
    sub_1000D2A70(v14, v11, &unk_101696900, &unk_10138B1E0);
    if (v26(&v14[v25], 1, v5) != 1)
    {
      v56 = v22;
      v50 = v62;
      v51 = v57;
      (*(v62 + 32))(v57, &v14[v25], v5);
      v55 = v28;
      v52 = dispatch thunk of static Equatable.== infix(_:_:)();
      v53 = *(v50 + 8);
      v53(v51, v5);
      v53(v55, v5);
      sub_10000B3A8(v14, &unk_101696900, &unk_10138B1E0);
      v27 = v63;
      if (v52)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    (*(v62 + 8))(v11, v5);
  }

  sub_10000B3A8(v14, &unk_1016B1660, &unk_10138CE10);
  v27 = v63;
LABEL_11:
  v29 = v58;
  sub_1000D2A70(&v17[v24], v58, &unk_101696900, &unk_10138B1E0);
  if (v26(v29, 1, v5) == 1)
  {
    sub_10000B3A8(v29, &unk_101696900, &unk_10138B1E0);
    v64 = 0u;
    v65 = 0u;
    v66 = 0;
  }

  else
  {
    *(&v65 + 1) = v5;
    v66 = &protocol witness table for Date;
    v30 = sub_1000280DC(&v64);
    (*(v62 + 32))(v30, v29, v5);
  }

  CKRecordKeyValueSetting.subscript.setter();
LABEL_15:
  v31 = v27[9];
  v32 = v59;
  v33 = *(v59 + v31);
  v35 = *(v59 + v31 + 8);
  v34 = *(v59 + v31 + 16);
  v36 = &v17[v31];
  if (v33 != *v36 || (v35 != *(v36 + 1) || v34 != *(v36 + 2)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    *(&v65 + 1) = &type metadata for String;
    v66 = &protocol witness table for String;
    *&v64 = v35;
    *(&v64 + 1) = v34;

    CKRecordKeyValueSetting.subscript.setter();
  }

  v37 = v27[10];
  v38 = *(v32 + v37);
  v39 = *(v32 + v37 + 8);
  v40 = &v17[v37];
  v41 = *v40;
  v42 = *(v40 + 1);
  if ((v38 != *v40 || v39 != v42) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    *(&v65 + 1) = &type metadata for String;
    v66 = &protocol witness table for String;
    *&v64 = v41;
    *(&v64 + 1) = v42;

    CKRecordKeyValueSetting.subscript.setter();
  }

  v43 = v27[11];
  v44 = *(v32 + v43);
  v45 = *&v17[v43];
  if (v44 != v45)
  {
    *(&v65 + 1) = &type metadata for UInt64;
    v66 = &protocol witness table for UInt64;
    *&v64 = v45;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v46 = v27[12];
  v47 = *(v32 + v46);
  v48 = v17[v46];
  if (v47 == v48)
  {
    sub_100A1B3C0(v17, type metadata accessor for ShareRecord);
    return swift_unknownObjectRelease();
  }

  else
  {
    *(&v65 + 1) = &type metadata for Int;
    v66 = &protocol witness table for Int;
    *&v64 = v48;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    return sub_100A1B3C0(v17, type metadata accessor for ShareRecord);
  }
}

uint64_t sub_1009C6E04(id *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress(0);
  __chkstk_darwin(v6);
  v8 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v9);
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A1B358(a2, v11, type metadata accessor for OwnedBeaconGroup);
  v12 = [*a1 encryptedValues];
  ObjectType = swift_getObjectType();
  v14 = *(v3 + 24);
  v64 = v11;
  v65 = v9;
  v62 = ObjectType;
  v63 = v12;
  if (v14 != 1)
  {
    v20 = *(v3 + 16);
    if (v20 != 1)
    {
      if (qword_1016946D0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_1000076D4(v31, qword_10177ACC8);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        *(v34 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v32, v33, "Unexpected OwnedBeaconGroup version: %ld!", v34, 0xCu);
      }

      goto LABEL_22;
    }

    v21 = *(v65 + 28);
    v22 = *(v6 + 20);
    v23 = type metadata accessor for MACAddress();
    (*(*(v23 - 8) + 16))(&v8[v22], v3 + v21, v23);
    *v8 = 1;
    v8[8] = 0;
    v24 = sub_10051EC44();
    v26 = v25;
    sub_100A1B3C0(v8, type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress);
    CKRecordKeyValueSetting.subscript.getter();
    v28 = v66;
    v27 = v67;
    if (v67 >> 60 == 15)
    {
      if (v26 >> 60 == 15)
      {
        sub_100006654(v66, v67);
        goto LABEL_22;
      }
    }

    else if (v26 >> 60 != 15)
    {
      sub_100017D5C(v24, v26);
      sub_100017D5C(v24, v26);
      sub_10002E98C(v28, v27);
      v59 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v28, v27, v24, v26);
      sub_100016590(v24, v26);
      sub_100006654(v28, v27);
      sub_100006654(v24, v26);
      sub_100006654(v28, v27);
      if (v59)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    sub_100017D5C(v24, v26);
    sub_100006654(v28, v27);
    sub_100006654(v24, v26);
LABEL_19:
    v68 = &type metadata for Data;
    v69 = &protocol witness table for Data;
    v66 = v24;
    v67 = v26;
    sub_100017D5C(v24, v26);
    CKRecordKeyValueSetting.subscript.setter();
LABEL_20:
    sub_100016590(v24, v26);
    goto LABEL_22;
  }

  CKRecordKeyValueSetting.subscript.getter();
  v15 = v66;
  v16 = v67;
  v18 = MACAddress.dataRepresentation.getter();
  v19 = v17;
  if (v16 >> 60 == 15)
  {
    if (v17 >> 60 == 15)
    {
      sub_100006654(v15, v16);
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  if (v17 >> 60 == 15)
  {
LABEL_10:
    sub_100006654(v15, v16);
    sub_100006654(v18, v19);
LABEL_11:
    v29 = MACAddress.dataRepresentation.getter();
    v68 = &type metadata for Data;
    v69 = &protocol witness table for Data;
    v66 = v29;
    v67 = v30;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_22;
  }

  sub_10002E98C(v15, v16);
  sub_100017D5C(v18, v19);
  v35 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v15, v16, v18, v19);
  sub_100016590(v18, v19);
  sub_100006654(v15, v16);
  sub_100006654(v18, v19);
  sub_100006654(v15, v16);
  if (!v35)
  {
    goto LABEL_11;
  }

LABEL_22:
  v61 = v3;
  v36 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v37 = sub_100523B4C();
  sub_100523BA0();
  sub_100101BAC();
  sub_100003F64(&qword_1016A4178, type metadata accessor for OwnedBeaconGroup.PairingState, &unk_1013AFCA8);
  sub_100003F64(&unk_1016A4180, type metadata accessor for OwnedBeaconGroup.PairingState, &unk_1013AFC80);
  v38 = Dictionary<>.dataRepresentation.getter();
  v40 = v39;
  v60[0] = v37;
  v60[1] = v36;
  v41 = Dictionary<>.dataRepresentation.getter();
  v43 = v42;
  LOBYTE(v36) = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v38, v40, v41, v42);
  sub_100016590(v41, v43);
  sub_100016590(v38, v40);
  if ((v36 & 1) == 0)
  {
    v44 = Dictionary<>.dataRepresentation.getter();
    v68 = &type metadata for Data;
    v69 = &protocol witness table for Data;
    v66 = v44;
    v67 = v45;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v46 = v64;
  v47 = v65;
  v48 = *(v65 + 36);
  v49 = v61;
  v50 = *(v61 + v48);
  v51 = *(v61 + v48 + 8);
  v52 = &v64[v48];
  v54 = *v52;
  v53 = v52[1];
  if ((v50 != *v52 || v51 != v53) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v68 = &type metadata for String;
    v69 = &protocol witness table for String;
    v66 = v54;
    v67 = v53;

    CKRecordKeyValueSetting.subscript.setter();
  }

  v55 = *(v47 + 32);
  v56 = *(v49 + v55);
  v57 = *(v46 + v55);
  if (v56 != v57)
  {
    v68 = &type metadata for Bool;
    v69 = &protocol witness table for Bool;
    LOBYTE(v66) = v57;
    CKRecordKeyValueSetting.subscript.setter();
  }

  swift_unknownObjectRelease();
  return sub_100A1B3C0(v46, type metadata accessor for OwnedBeaconGroup);
}

void *sub_1009C75D0(int a1, uint64_t a2)
{
  v58 = a2;
  v57 = a1;
  v63 = type metadata accessor for SafeLocation(0);
  v3 = *(v63 - 8);
  v4 = __chkstk_darwin(v63);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v68 = &v54 - v7;
  v8 = __chkstk_darwin(v6);
  v55 = &v54 - v9;
  __chkstk_darwin(v8);
  v11 = &v54 - v10;
  v12 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v12 - 8);
  v14 = &v54 - v13;
  v15 = type metadata accessor for DirectorySequence();
  v59 = *(v15 - 8);
  v60 = v15;
  __chkstk_darwin(v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v54 - v23;
  v54 = *(*(v2 + 280) + 168);
  if (qword_101694F88 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v64 = v11;
    v67 = v3;
    v25 = sub_1000076D4(v18, qword_10177C268);
    (*(v19 + 2))(v24, v25, v18);
    v69 = _swiftEmptyArrayStorage;
    v70 = _swiftEmptyArrayStorage;
    v26 = [objc_opt_self() defaultManager];
    v61 = v24;
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v27 = v18;
    v28 = v17;
    DirectorySequence.next()();
    v30 = v19 + 48;
    v29 = *(v19 + 6);
    v31 = v27;
    v32 = v29(v14, 1, v27);
    v62 = v19;
    v11 = 0;
    if (v32 != 1)
    {
      v65 = *(v19 + 4);
      v66 = v19 + 32;
      v33 = (v19 + 8);
      v34 = v54;
      do
      {
        v65(v22, v14, v31);
        v35 = v30;
        v36 = v29;
        v37 = objc_autoreleasePoolPush();
        sub_1006005CC(v22, v34, &v70, &v69);
        objc_autoreleasePoolPop(v37);
        (*v33)(v22, v31);
        DirectorySequence.next()();
        v29 = v36;
        v30 = v35;
      }

      while (v29(v14, 1, v31) != 1);
    }

    (*(v59 + 8))(v28, v60);
    v24 = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v38 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_10138BBE0;
    v14 = v70;
    v40 = *(v70 + 16);
    *(v39 + 56) = &type metadata for Int;
    *(v39 + 64) = &protocol witness table for Int;
    *(v39 + 32) = v40;
    sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

    v41 = v61;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    *(v39 + 96) = &type metadata for String;
    *(v39 + 104) = sub_100008C00();
    *(v39 + 72) = v42;
    *(v39 + 80) = v44;
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v38, "Found %i records at %@", 22, 2, v39);

    v62[1](v41, v31);

    v17 = *(v14 + 16);
    v45 = _swiftEmptyArrayStorage;
    if (v17)
    {
      v22 = 0;
      v18 = v57;
      v3 = v67;
      v19 = v64;
      while (v22 < *(v14 + 16))
      {
        v24 = ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v46 = *(v3 + 72);
        sub_100A1B358(&v24[v14 + v46 * v22], v19, type metadata accessor for SafeLocation);
        if (v18 == 4 || v19[*(v63 + 48)] == v18)
        {
          sub_100A18C9C(v19, v68, type metadata accessor for SafeLocation);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v70 = v45;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10112483C(0, *(v45 + 16) + 1, 1);
            v45 = v70;
          }

          v49 = *(v45 + 16);
          v48 = *(v45 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_10112483C((v48 > 1), v49 + 1, 1);
            v45 = v70;
          }

          *(v45 + 16) = v49 + 1;
          sub_100A18C9C(v68, &v24[v45 + v49 * v46], type metadata accessor for SafeLocation);
          v3 = v67;
          v19 = v64;
        }

        else
        {
          sub_100A1B3C0(v19, type metadata accessor for SafeLocation);
        }

        if (v17 == ++v22)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_26;
    }

LABEL_17:

    __chkstk_darwin(v50);
    *(&v54 - 2) = v58;
    v11 = sub_10013D504(sub_100A18C7C, (&v54 - 4), v45);
    v51 = _swiftEmptyArrayStorage;
    v70 = _swiftEmptyArrayStorage;
    v22 = *(v11 + 2);
    if (!v22)
    {
      break;
    }

    v52 = 0;
    v19 = &unk_1016B1680;
    v18 = SPSafeLocation_ptr;
    v3 = v67;
    v14 = v55;
    v24 = v56;
    while (v52 < *(v11 + 2))
    {
      sub_100A1B358(&v11[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v52], v14, type metadata accessor for SafeLocation);
      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      sub_100A1B358(v14, v24, type metadata accessor for SafeLocation);
      v17 = sub_1009C859C(v24);
      sub_100A1B3C0(v14, type metadata accessor for SafeLocation);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v67;
      }

      ++v52;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v22 == v52)
      {
        v51 = v70;
        goto LABEL_24;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_24:

  return v51;
}

uint64_t sub_1009C7E64(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  __chkstk_darwin(v3 - 8);
  v5 = v42 - v4;
  v6 = type metadata accessor for BeaconObservation(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v42[0] = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v9 - 8);
  v47 = v42 - v10;
  v53 = type metadata accessor for OwnedBeaconRecord(0);
  v11 = *(v53 - 8);
  __chkstk_darwin(v53);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for UUID();
  v14 = *(v49 - 8);
  v15 = __chkstk_darwin(v49);
  v50 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v42 - v17;
  v48 = *(v1 + 280);
  v19 = sub_100AA5C88();
  v20 = v19[2];
  if (v20)
  {
    v43 = v7;
    v44 = a1;
    v45 = v6;
    v46 = v5;
    v56[0] = _swiftEmptyArrayStorage;
    v21 = v19;
    sub_101123D4C(0, v20, 0);
    v22 = v56[0];
    v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v42[1] = v21;
    v24 = v21 + v23;
    v25 = *(v11 + 72);
    v51 = v14 + 32;
    v52 = v25;
    v26 = v49;
    do
    {
      sub_100A1B358(v24, v13, type metadata accessor for OwnedBeaconRecord);
      (*(v14 + 16))(v18, &v13[*(v53 + 20)], v26);
      sub_100A1B3C0(v13, type metadata accessor for OwnedBeaconRecord);
      v56[0] = v22;
      v28 = v22[2];
      v27 = v22[3];
      if (v28 >= v27 >> 1)
      {
        sub_101123D4C((v27 > 1), v28 + 1, 1);
        v22 = v56[0];
      }

      v22[2] = v28 + 1;
      (*(v14 + 32))(v22 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v28, v18, v26);
      v24 += v52;
      --v20;
    }

    while (v20);

    v6 = v45;
    v5 = v46;
    v7 = v43;
    a1 = v44;
  }

  else
  {

    v22 = _swiftEmptyArrayStorage;
  }

  v29 = sub_1005C8A30(a1, v22);

  v30 = v50;
  if (v29)
  {
    return 1;
  }

  sub_100025020(a1, &v54);
  if (v55)
  {
    sub_10000A748(&v54, v56);
    v32 = v57;
    v33 = v58;
    sub_1000035D0(v56, v57);
    (*(*(*(v33 + 8) + 8) + 32))(v32);
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v34 = sub_100035730(v30, 0, 0);
    v35 = v47;
    v36 = sub_10003ABC0(v47, v30, v34, 1);

    (*(v14 + 8))(v30, v49);
    sub_10000B3A8(v35, &unk_101696900, &unk_10138B1E0);
    sub_100007BAC(v56);
    if (v36)
    {
      return 4;
    }
  }

  else
  {
    sub_10000B3A8(&v54, &qword_101696920, &unk_10138B200);
  }

  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v37 = swift_allocObject();
  *(v37 + 16) = &off_101608680;
  v38 = sub_100035730(a1, sub_100319F00, v37);

  sub_1012BB138(v38, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000B3A8(v5, &qword_1016A42E0, &qword_1013B0010);
    return 0;
  }

  else
  {
    v39 = v42[0];
    sub_100A18C9C(v5, v42[0], type metadata accessor for BeaconObservation);
    v40 = *(v39 + *(v6 + 24));
    sub_100A1B3C0(v39, type metadata accessor for BeaconObservation);
    v41 = 3;
    if (v40 != 42)
    {
      v41 = 0;
    }

    if (v40 == 41)
    {
      return 2;
    }

    else
    {
      return v41;
    }
  }
}

Swift::Int sub_1009C84E8(uint64_t *a1)
{
  v2 = *(sub_1000BC4D4(&qword_1016B1780, &unk_1013B36E0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B32200(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100A02DC0(v6);
  *a1 = v3;
  return result;
}

id sub_1009C859C(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SafeLocation(0);
  v7.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v8 = v6[7];
  v22 = qword_1013D0D28[*(a1 + v6[6])];
  v9 = *(a1 + v8 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + v8) & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + v6[8]);
  v13 = *(a1 + v6[9]);
  v14 = *(a1 + v6[10]);
  Date.init()();
  v15 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v17 = [v15 initWithCoordinate:isa altitude:v12 horizontalAccuracy:v13 verticalAccuracy:0.0 course:v14 courseAccuracy:v14 speed:-1.0 speedAccuracy:-1.0 timestamp:{-1.0, 0xBFF0000000000000}];

  (*(v3 + 8))(v5, v2);
  [v17 setReferenceFrame:*(a1 + v6[11])];
  v18 = *(a1 + v6[12]);
  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = [v19 initWithIdentifier:v7.super.isa type:v22 name:v11 location:v17 approvalState:v18];

  sub_100A1B3C0(a1, type metadata accessor for SafeLocation);
  return v20;
}

uint64_t sub_1009C87E4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B780);
  sub_1000076D4(v0, qword_10177B780);
  return Logger.init(subsystem:category:)();
}

void sub_1009C8868(void *a1, char a2, uint64_t a3, void (*a4)(void, void *), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a2)
    {
      v13 = a1;
      a4(0, a1);
      sub_100408170(a1, 1);
    }

    else
    {
      v14 = swift_allocObject();
      *(v14 + 16) = a4;
      *(v14 + 24) = a5;

      sub_1009C8978(a6, sub_100A1B798, v14);
    }
  }
}

uint64_t sub_1009C8978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v100 = a3;
  v99 = a2;
  v118 = a1;
  v3 = type metadata accessor for UUID();
  v124 = *(v3 - 8);
  __chkstk_darwin(v3);
  v91 = v4;
  v5 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016B16B8, &qword_1013D0A98);
  v90 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v89 - v7;
  v95 = sub_1000BC4D4(&qword_1016B16C0, &qword_1013D0AA0);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v89 - v9;
  v98 = sub_1000BC4D4(&qword_1016B16C8, &qword_1013D0AA8);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v89 - v10;
  v125 = type metadata accessor for SafeLocation(0);
  v129 = *(v125 - 8);
  v11 = __chkstk_darwin(v125);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v128 = &v89 - v15;
  __chkstk_darwin(v14);
  v127 = &v89 - v16;
  v17 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v17 - 8);
  v113 = &v89 - v18;
  v112 = type metadata accessor for DirectorySequence();
  v130 = *(v112 - 8);
  __chkstk_darwin(v112);
  v122 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = 0;
  v111 = type metadata accessor for URL();
  v20 = *(v111 - 8);
  v21 = __chkstk_darwin(v111);
  v131 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v121 = &v89 - v23;
  v24 = sub_100EE8F6C();
  v25 = v24[2];
  v26 = _swiftEmptyArrayStorage;
  v116 = v5;
  v117 = v3;
  v115 = v6;
  if (v25)
  {
    v27 = (v24 + 4);
    do
    {
      v30 = *v27++;
      if (v30 == 2)
      {
        v31 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v31;
        v134 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101125550(0, v31[2] + 1, 1);
          v26 = v134;
        }

        v29 = v26[2];
        v28 = v26[3];
        if (v29 >= v28 >> 1)
        {
          sub_101125550((v28 > 1), v29 + 1, 1);
          v26 = v134;
        }

        v26[2] = v29 + 1;
        *(v26 + v29 + 32) = 2;
      }

      --v25;
    }

    while (v25);
  }

  v114 = v26;

  v33 = v114;
  v34 = _swiftEmptyArrayStorage;
  v134 = _swiftEmptyArrayStorage;
  v35 = v114[2];
  v92 = v13;
  v110 = v35;
  if (v35)
  {
    v36 = *(v119 + 168);
    if (qword_101694F88 != -1)
    {
LABEL_40:
      swift_once();
      v33 = v114;
    }

    v109 = v33 + 4;
    v108 = objc_opt_self();
    v37 = 0;
    v107 = (v20 + 16);
    v106 = (v20 + 48);
    v104 = (v130 + 8);
    v103 = xmmword_10138BBE0;
    v102 = v36;
    v105 = v8;
    v101 = (v20 + 32);
    v126 = (v20 + 8);
    do
    {
      if (v37 >= v114[2])
      {
        goto LABEL_39;
      }

      v120 = v37;
      LODWORD(v130) = *(v109 + v37);
      v38 = v111;
      v39 = sub_1000076D4(v111, qword_10177C268);
      (*v107)(v121, v39, v38);
      v132 = v34;
      v133 = v34;
      v40 = [v108 defaultManager];
      NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

      v41 = v113;
      DirectorySequence.next()();
      v42 = *v106;
      if ((*v106)(v41, 1, v38) == 1)
      {
        v43 = v122;
        v44 = v123;
      }

      else
      {
        v45 = *v101;
        v43 = v122;
        v44 = v123;
        v46 = v131;
        v47 = v102;
        do
        {
          v45(v46, v41, v38);
          v48 = objc_autoreleasePoolPush();
          sub_1006005CC(v131, v47, &v133, &v132);
          v49 = v48;
          v46 = v131;
          objc_autoreleasePoolPop(v49);
          (*v126)(v46, v38);
          DirectorySequence.next()();
        }

        while (v42(v41, 1, v38) != 1);
      }

      v123 = v44;
      (*v104)(v43, v112);
      v50 = static os_log_type_t.debug.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v51 = static OS_os_log.default.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v52 = swift_allocObject();
      *(v52 + 16) = v103;
      v36 = v133;
      v53 = v133[2];
      *(v52 + 56) = &type metadata for Int;
      *(v52 + 64) = &protocol witness table for Int;
      *(v52 + 32) = v53;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v20 = v38;

      v54 = v121;
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      *(v52 + 96) = &type metadata for String;
      *(v52 + 104) = sub_100008C00();
      *(v52 + 72) = v55;
      *(v52 + 80) = v57;
      os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v51, "Found %i records at %@", 22, 2, v52);

      (*v126)(v54, v20);

      v58 = *(v36 + 16);
      if (v58)
      {
        v59 = 0;
        v34 = _swiftEmptyArrayStorage;
        v60 = v125;
        v8 = v105;
        while (v59 < *(v36 + 16))
        {
          v61 = v8;
          v62 = (*(v129 + 80) + 32) & ~*(v129 + 80);
          v20 = *(v129 + 72);
          v63 = v127;
          sub_100A1B358(v36 + v62 + v20 * v59, v127, type metadata accessor for SafeLocation);
          if (v63[*(v60 + 24)] == v130)
          {
            sub_100A18C9C(v63, v128, type metadata accessor for SafeLocation);
            v64 = swift_isUniquelyReferenced_nonNull_native();
            v133 = v34;
            if ((v64 & 1) == 0)
            {
              sub_10112483C(0, v34[2] + 1, 1);
              v60 = v125;
              v34 = v133;
            }

            v66 = v34[2];
            v65 = v34[3];
            if (v66 >= v65 >> 1)
            {
              sub_10112483C((v65 > 1), v66 + 1, 1);
              v60 = v125;
              v34 = v133;
            }

            v34[2] = v66 + 1;
            sub_100A18C9C(v128, v34 + v62 + v66 * v20, type metadata accessor for SafeLocation);
          }

          else
          {
            sub_100A1B3C0(v63, type metadata accessor for SafeLocation);
          }

          ++v59;
          v8 = v61;
          if (v58 == v59)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v34 = _swiftEmptyArrayStorage;
      v8 = v105;
LABEL_14:
      v37 = v120 + 1;

      sub_10039A920(v34);
      v34 = _swiftEmptyArrayStorage;
    }

    while (v37 != v110);

    v67 = v134;
    v68 = v134[2];
    if (v68)
    {
      goto LABEL_32;
    }

LABEL_36:

    v81 = _swiftEmptyArrayStorage;
    goto LABEL_37;
  }

  v67 = _swiftEmptyArrayStorage;
  v68 = _swiftEmptyArrayStorage[2];
  if (!v68)
  {
    goto LABEL_36;
  }

LABEL_32:
  v134 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v69 = (*(v129 + 80) + 32) & ~*(v129 + 80);
  v126 = v67;
  v70 = v67 + v69;
  v71 = v124;
  v130 = *(v129 + 72);
  v131 = v124 + 16;
  v128 = v124 + 32;
  v129 = v91 + 7;
  v127 = (v90 + 8);
  v72 = v8;
  v73 = v92;
  v74 = v116;
  do
  {
    sub_100A1B358(v70, v73, type metadata accessor for SafeLocation);
    v75 = v117;
    (*(v71 + 16))(v74, v73 + *(v125 + 20), v117);
    v76 = (*(v71 + 80) + 24) & ~*(v71 + 80);
    v77 = (v129 + v76) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    *(v78 + 16) = v119;
    (*(v124 + 32))(v78 + v76, v74, v75);
    *(v78 + v77) = v118;

    sub_1000BC4D4(&unk_1016B16A0, &unk_1013EE850);
    sub_1000041A4(&qword_1016B16D0, &unk_1016B16A0, &unk_1013EE850, &protocol conformance descriptor for Future<A, B>);
    Deferred.init(createPublisher:)();
    sub_1000041A4(&qword_1016B16D8, &qword_1016B16B8, &qword_1013D0A98, &protocol conformance descriptor for Deferred<A>);
    v79 = v115;
    v80 = Publisher.eraseToAnyPublisher()();
    (*v127)(v72, v79);
    v133 = v80;
    sub_1000BC4D4(&qword_1016B16E0, &qword_1013D0AB0);
    sub_1000041A4(&qword_1016B16E8, &qword_1016B16E0, &qword_1013D0AB0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.eraseToAnyPublisher()();

    sub_100A1B3C0(v73, type metadata accessor for SafeLocation);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v71 = v124;
    v70 += v130;
    --v68;
  }

  while (v68);

  v81 = v134;
LABEL_37:
  v134 = v81;
  sub_1000BC4D4(&qword_1016B16E0, &qword_1013D0AB0);
  sub_1000BC4D4(&qword_1016B16F0, &qword_1013D0AB8);
  sub_1000041A4(&qword_1016B16E8, &qword_1016B16E0, &qword_1013D0AB0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1000041A4(&qword_1016B16F8, &qword_1016B16F0, &qword_1013D0AB8, &protocol conformance descriptor for [A]);
  v82 = v93;
  Publishers.MergeMany.init<A>(_:)();
  sub_1000041A4(&qword_1016B1700, &qword_1016B16C0, &qword_1013D0AA0, &protocol conformance descriptor for Publishers.MergeMany<A>);
  v83 = v96;
  v84 = v95;
  Publisher.collect()();
  (*(v94 + 8))(v82, v84);
  v85 = swift_allocObject();
  v86 = v100;
  *(v85 + 16) = v99;
  *(v85 + 24) = v86;
  sub_1000041A4(&qword_1016B1708, &qword_1016B16C8, &qword_1013D0AA8, &protocol conformance descriptor for Publishers.Collect<A>);

  v87 = v98;
  Publisher.oneshot(_:)();

  return (*(v97 + 8))(v83, v87);
}

uint64_t sub_1009C99E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v8 = v6;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v15 = *(v24 - 8);
  __chkstk_darwin(v24);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v8 + 96);
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = v8;
  v18[4] = a2;
  v18[5] = a3;
  aBlock[4] = a5;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = v22;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v25 + 8))(v14, v12);
  (*(v15 + 8))(v17, v24);
}

uint64_t sub_1009C9CE8(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  type metadata accessor for UUID();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v7);
  v9 = a1;
  a5(v8, v9, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_1009C9D88(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = type metadata accessor for DispatchQoS();
  v10 = *(v30 - 8);
  __chkstk_darwin(v30);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for SafeLocation(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = *(v4 + 96);
  sub_100A1B358(a1, v16, type metadata accessor for SafeLocation);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = v17 + v15;
  v19 = (v17 + v15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v5;
  sub_100A18C9C(v16, v20 + v17, type metadata accessor for SafeLocation);
  *(v20 + v18) = v26;
  v21 = v20 + v19;
  v22 = v28;
  *(v21 + 8) = v27;
  *(v21 + 16) = v22;
  aBlock[4] = sub_100A190A4;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016423C0;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v9, v7);
  (*(v10 + 8))(v12, v30);
}

uint64_t sub_1009CA164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a2;
  v23 = a3;
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v3 + 96);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v14, v13, v10);
  *(v16 + v15) = v4;
  v17 = (v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = v23;
  *v17 = v22;
  v17[1] = v18;
  aBlock[4] = sub_100A19358;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016425A0;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v20 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v28 + 8))(v7, v20);
  (*(v25 + 8))(v9, v27);
}

uint64_t sub_1009CA64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[0] = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v23 = *(v9 - 8);
  v24 = v9;
  __chkstk_darwin(v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SafeLocation(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v3 + 96);
  sub_100A1B358(a1, v15, type metadata accessor for SafeLocation);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_100A18C9C(v15, v18 + v16, type metadata accessor for SafeLocation);
  v19 = (v18 + v17);
  *v19 = v22[0];
  v19[1] = a3;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v3;
  aBlock[4] = sub_100A19548;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101642758;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v25 + 8))(v8, v6);
  (*(v23 + 8))(v11, v24);
}

void sub_1009CAA24(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_1009CAAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a7;
  v28 = a4;
  v29 = a6;
  v8 = v7;
  v26 = a2;
  v27 = a3;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v8 + 96);
  (*(v14 + 16))(v16, a1, v13);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v26;
  (*(v14 + 32))(v19 + v17, v16, v13);
  *(v19 + v18) = v8;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v28;
  *v20 = v27;
  v20[1] = v21;
  aBlock[4] = v29;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = v31;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v23 = v32;
  v24 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v36 + 8))(v23, v24);
  (*(v33 + 8))(v12, v35);
}

uint64_t sub_1009CAEC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, void (*a6)(char *, uint64_t, id, void *))
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);
  v15 = a1;
  a6(v12, v14, v15, v13);
  _Block_release(v13);
  _Block_release(v13);

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1009CB040(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v26 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DispatchQoS();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v14 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v17 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v16, v13);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v19 = v26 & 1;
  *(v18 + 24) = v26 & 1;
  v20 = v27;
  v21 = v28;
  *(v18 + 32) = a3;
  *(v18 + 40) = v20;
  *(v18 + 48) = v21;
  aBlock[4] = sub_100A1B30C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101643130;
  v22 = _Block_copy(aBlock);
  sub_100A1B320(a1, v19);
  v23 = a3;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v31 + 8))(v9, v7);
  (*(v29 + 8))(v12, v30);
}

uint64_t sub_1009CB420(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2)
  {
    return a4(0);
  }

  v6 = sub_1009CB4B0(a1);
  v7 = sub_10000AB68(v6);

  a4(v7);
}

unint64_t sub_1009CB4B0(uint64_t a1)
{
  v3 = type metadata accessor for SafeLocation(0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v101 = &v77 - v9;
  v10 = __chkstk_darwin(v8);
  v100 = &v77 - v11;
  __chkstk_darwin(v10);
  v102 = &v77 - v12;
  v13 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v13 - 8);
  v15 = &v77 - v14;
  v90 = type metadata accessor for DirectorySequence();
  v16 = *(v90 - 8);
  __chkstk_darwin(v90);
  v96 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for URL();
  v18 = *(v95 - 8);
  v19 = __chkstk_darwin(v95 - 8);
  v78 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v94 = &v77 - v21;
  v22 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v22 - 8);
  v97 = &v77 - v23;
  v24 = *(a1 + 16);
  v99 = v1;
  if (v24)
  {
    v98 = v16;
    v25 = *(v1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
    v107 = _swiftEmptyArrayStorage;
    v26 = v25;

    specialized ContiguousArray.reserveCapacity(_:)();
    v27 = a1 + 32;
    do
    {
      sub_10001F280(v27, &v104);
      v28 = v105;
      v29 = v106;
      v30 = sub_1000035D0(&v104, v105);
      sub_100B005BC(v30, v26, v28, v29);
      sub_100007BAC(&v104);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v27 += 40;
      --v24;
    }

    while (v24);

    v31 = v107;
    v16 = v98;
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
  }

  v77 = v31;
  if (v31 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v33 = 0;
    v86 = (v99 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation);
    v89 = v77 & 0xC000000000000001;
    v88 = v77 & 0xFFFFFFFFFFFFFF8;
    v82 = v77 + 32;
    v85 = (v18 + 2);
    v34 = (v18 + 4);
    v99 = (v18 + 1);
    v84 = (v16 + 8);
    v83 = xmmword_10138BBE0;
    v103 = v7;
    v81 = v15;
    v87 = v4;
    v80 = i;
    v91 = (v18 + 6);
    v79 = (v18 + 4);
    while (1)
    {
      if (v89)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v33 >= *(v88 + 16))
        {
          goto LABEL_41;
        }

        v37 = *(v82 + 8 * v33);
      }

      v18 = v37;
      v38 = __OFADD__(v33, 1);
      v39 = v33 + 1;
      if (v38)
      {
        break;
      }

      v93 = v39;
      v40 = sub_1000035D0(v86, v86[3]);
      v92 = v18;
      v41 = [v18 identifier];
      v42 = v97;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = type metadata accessor for UUID();
      (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
      v44 = *(*(*v40 + 280) + 168);
      if (qword_101694F88 != -1)
      {
        swift_once();
      }

      v45 = v95;
      v46 = sub_1000076D4(v95, qword_10177C268);
      (*v85)(v94, v46, v45);
      v104 = _swiftEmptyArrayStorage;
      v107 = _swiftEmptyArrayStorage;
      v47 = [objc_opt_self() defaultManager];
      NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

      DirectorySequence.next()();
      v48 = *v91;
      if ((*v91)(v15, 1, v45) == 1)
      {
        v16 = v95;
        v49 = v96;
      }

      else
      {
        v98 = *v34;
        v16 = v95;
        v49 = v96;
        v50 = v48;
        v51 = v78;
        v52 = v44;
        do
        {
          v98(v51, v15, v16);
          v53 = v15;
          v54 = objc_autoreleasePoolPush();
          sub_1006005CC(v51, v52, &v104, &v107);
          v55 = v54;
          v15 = v53;
          objc_autoreleasePoolPop(v55);
          (*v99)(v51, v16);
          DirectorySequence.next()();
        }

        while (v50(v53, 1, v16) != 1);
      }

      (*v84)(v49, v90);
      v56 = static os_log_type_t.debug.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v57 = static OS_os_log.default.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v7 = swift_allocObject();
      *(v7 + 1) = v83;
      v58 = v104;
      v59 = *(v104 + 16);
      *(v7 + 7) = &type metadata for Int;
      *(v7 + 8) = &protocol witness table for Int;
      *(v7 + 4) = v59;
      sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

      v60 = v94;
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      *(v7 + 12) = &type metadata for String;
      *(v7 + 13) = sub_100008C00();
      *(v7 + 9) = v61;
      *(v7 + 10) = v63;
      os_log(_:dso:log:_:_:)(v56, &_mh_execute_header, v57, "Found %i records at %@", 22, 2, v7);

      (*v99)(v60, v16);

      v18 = *(v58 + 16);
      if (v18)
      {
        v64 = 0;
        v65 = _swiftEmptyArrayStorage;
        v4 = v87;
        v7 = v103;
        while (v64 < *(v58 + 16))
        {
          v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
          v15 = *(v4 + 72);
          v66 = v102;
          sub_100A1B358(v58 + v16 + v15 * v64, v102, type metadata accessor for SafeLocation);
          sub_100A18C9C(v66, v7, type metadata accessor for SafeLocation);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v104 = v65;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10112483C(0, v65[2] + 1, 1);
            v65 = v104;
          }

          v69 = v65[2];
          v68 = v65[3];
          if (v69 >= v68 >> 1)
          {
            sub_10112483C((v68 > 1), v69 + 1, 1);
            v65 = v104;
          }

          ++v64;
          v65[2] = v69 + 1;
          v70 = v65 + v16 + v69 * v15;
          v7 = v103;
          sub_100A18C9C(v103, v70, type metadata accessor for SafeLocation);
          if (v18 == v64)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

      v65 = _swiftEmptyArrayStorage;
      v4 = v87;
LABEL_30:

      __chkstk_darwin(v71);
      *(&v77 - 2) = v97;
      v72 = sub_10013D504(sub_100A1B6D8, (&v77 - 4), v65);
      v73 = _swiftEmptyArrayStorage;
      v104 = _swiftEmptyArrayStorage;
      v74 = v72[2];
      if (v74)
      {
        v16 = 0;
        while (v16 < v72[2])
        {
          v15 = v100;
          sub_100A1B358(v72 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, v100, type metadata accessor for SafeLocation);
          sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
          v75 = v101;
          sub_100A1B358(v15, v101, type metadata accessor for SafeLocation);
          sub_1009C859C(v75);
          sub_100A1B3C0(v15, type metadata accessor for SafeLocation);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v18 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v18 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          ++v16;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v74 == v16)
          {
            v73 = v104;
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        break;
      }

LABEL_9:

      sub_10000B3A8(v97, &qword_1016980D0, &unk_10138F3B0);
      sub_10112A684(v73);

      v18 = SPSafeLocation_ptr;
      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      sub_100009CC8(qword_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
      isa = Set._bridgeToObjectiveC()().super.isa;

      v36 = v92;
      [v92 setSafeLocations:isa];

      v33 = v93;
      v15 = v81;
      v34 = v79;
      if (v93 == v80)
      {
        return v77;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  return v77;
}

void sub_1009CC0E4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
    sub_100009CC8(&qword_1016B1830, &unk_1016BC050, SPBeacon_ptr);
    v3.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

uint64_t sub_1009CC3A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B780);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Client forces LOI based safe location refresh.", v9, 2u);
  }

  sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = type metadata accessor for Transaction();
  __chkstk_darwin(v11);

  static Transaction.named<A>(_:with:)();
}

uint64_t sub_1009CC57C(uint64_t a1, __int16 a2, uint64_t (*a3)(BOOL))
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B780);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Update ALL LOI based safe location finished.", v8, 2u);
  }

  return a3((a2 & 0x100) == 0);
}

void sub_1009CC724(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_1009CC7A0(void *a1, char a2, uint64_t (*a3)(uint64_t, void *))
{
  if (a2)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B780);
    a1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_100408170(a1, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      type metadata accessor for SPSeparationMonitoringError(0);
      sub_100003F64(&qword_1016B1740, type metadata accessor for SPSeparationMonitoringError, &unk_101389BEC);
      v10 = Error.localizedDescription.getter();
      v12 = sub_1000136BC(v10, v11, &v16);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "XPC call failed with error: %s", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v13 = 0;
    v14 = a1;
  }

  else
  {
    v13 = 1;
    v14 = 0;
  }

  return a3(v13, v14);
}