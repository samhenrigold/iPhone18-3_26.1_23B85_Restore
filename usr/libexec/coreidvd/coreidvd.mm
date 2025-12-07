void sub_100002B70(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = [a2 firstObject];
  v6 = [v7 location];
  (*(v4 + 16))(v4, v6, v5);
}

__n128 sub_100002D44(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002D50(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002D70(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

BOOL sub_100002E28(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_100002E98(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833148, type metadata accessor for DIIdentityError, &unk_1006BEC94);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002F04(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833148, type metadata accessor for DIIdentityError, &unk_1006BEC94);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002F74(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833178, type metadata accessor for DIIdentityError, &unk_1006BF25C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100002FE0(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833110, type metadata accessor for DIIdentityFatalError, &unk_1006BEDC0);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000304C(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833110, type metadata accessor for DIIdentityFatalError, &unk_1006BEDC0);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000030B8(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833140, type metadata accessor for DIIdentityFatalError, &unk_1006BF14C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void *sub_100003158@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100003184@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_100003248@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_100003278@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_10000328C@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000032B8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003330(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000033B0@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

Swift::Int sub_1000033F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100003470(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000034C4(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833178, type metadata accessor for DIIdentityError, &unk_1006BF25C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003530(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833178, type metadata accessor for DIIdentityError, &unk_1006BF25C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000359C(void *a1, uint64_t a2)
{
  v4 = sub_100004214(&qword_100833178, type metadata accessor for DIIdentityError, &unk_1006BF25C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003650(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004214(&qword_100833178, type metadata accessor for DIIdentityError, &unk_1006BF25C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000036E0(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833140, type metadata accessor for DIIdentityFatalError, &unk_1006BF14C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000374C(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833140, type metadata accessor for DIIdentityFatalError, &unk_1006BF14C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000037B8(void *a1, uint64_t a2)
{
  v4 = sub_100004214(&qword_100833140, type metadata accessor for DIIdentityFatalError, &unk_1006BF14C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003848(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004214(&qword_100833140, type metadata accessor for DIIdentityFatalError, &unk_1006BF14C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000038C4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1005A0FE0();

  *a2 = v3;
  return result;
}

uint64_t sub_100003914(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008330C8, type metadata accessor for ASCAuthorizationError, &unk_1006BEFB4);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003980(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008330C8, type metadata accessor for ASCAuthorizationError, &unk_1006BEFB4);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000039EC(void *a1, uint64_t a2)
{
  v4 = sub_100004214(&qword_1008330C8, type metadata accessor for ASCAuthorizationError, &unk_1006BEFB4);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004214(&qword_1008330C8, type metadata accessor for ASCAuthorizationError, &unk_1006BEFB4);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100003AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100003B58(uint64_t a1)
{
  v2 = sub_100004214(&qword_100832F00, type metadata accessor for URLFileProtection, &unk_1006BDB10);
  v3 = sub_100004214(&qword_100832F08, type metadata accessor for URLFileProtection, &unk_1006BDAB0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003C14(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008331D8, type metadata accessor for CIImageRepresentationOption, &unk_1006BF3F4);
  v3 = sub_100004214(&qword_1008331E0, type metadata accessor for CIImageRepresentationOption, &unk_1006BE5C4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003CD0(uint64_t a1)
{
  v2 = sub_100004214(&unk_1008341B0, type metadata accessor for FileAttributeKey, &unk_1006BF3B0);
  v3 = sub_100004214(&qword_1008331D0, type metadata accessor for FileAttributeKey, &unk_1006BE6D8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003D8C(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008331E8, type metadata accessor for DIAttributeImageEncoding, &unk_1006BE4C0);
  v3 = sub_100004214(&qword_1008331F0, type metadata accessor for DIAttributeImageEncoding, &unk_1006BE460);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003E48(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833218, type metadata accessor for PKPaymentRequestClientAnalyticsParameters, &unk_1006BF47C);
  v3 = sub_100004214(&qword_100833220, type metadata accessor for PKPaymentRequestClientAnalyticsParameters, &unk_1006BE004);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004214(&qword_100833178, type metadata accessor for DIIdentityError, &unk_1006BF25C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100003F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004214(&qword_100833140, type metadata accessor for DIIdentityFatalError, &unk_1006BF14C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000400C(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008331A8, type metadata accessor for ODIAttributeKey, &unk_1006BF36C);
  v3 = sub_100004214(&qword_1008331B0, type metadata accessor for ODIAttributeKey, &unk_1006BEB00);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000040C8(uint64_t a1)
{
  v2 = sub_100004214(&qword_100832F10, type metadata accessor for ASCDigitalIdentityCredentialRequestType, &unk_1006BD8D4);
  v3 = sub_100004214(&qword_100832F18, type metadata accessor for ASCDigitalIdentityCredentialRequestType, &unk_1006BD874);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004214(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000042A4(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008330D0, type metadata accessor for ASCAuthorizationError, &unk_1006BF108);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100004310(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008330D0, type metadata accessor for ASCAuthorizationError, &unk_1006BF108);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000437C(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008330C8, type metadata accessor for ASCAuthorizationError, &unk_1006BEFB4);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000043E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004214(&qword_1008330C8, type metadata accessor for ASCAuthorizationError, &unk_1006BEFB4);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000446C(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008331B8, type metadata accessor for FileProtectionType, &unk_1006BE84C);
  v3 = sub_100004214(&unk_1008331C0, type metadata accessor for FileProtectionType, &unk_1006BE7EC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004528(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833208, type metadata accessor for DIHttpHeaderName, &unk_1006BE254);
  v3 = sub_100004214(&qword_100833210, type metadata accessor for DIHttpHeaderName, &unk_1006BE1F4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000045E4@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10000462C(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008331F8, type metadata accessor for DISharingOption, &unk_1006BF438);
  v3 = sub_100004214(&qword_100833200, type metadata accessor for DISharingOption, &unk_1006BE34C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

__n128 initializeBufferWithCopyOfBuffer for ImageDimension(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ImageDimension(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImageDimension(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10000499C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000049BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100004B9C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100004BD8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100004C2C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100004CA0(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

unint64_t sub_1000055F4()
{
  result = qword_1008330F8;
  if (!qword_1008330F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008330F8);
  }

  return result;
}

void sub_100005A1C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100005D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  defaultLogger()();
  v12 = a1;
  v13 = a2;
  Logger.sensitive(_:)();
  (*(v5 + 8))(v7, v4);
  if (!a2)
  {
    type metadata accessor for DaemonAnalytics();

    static DaemonAnalytics.sendGenderInvalidEvent(issuer:)();

    return a1;
  }

  v8 = String.lowercased()();
  if (v8._countAndFlagsBits == 49 && v8._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_5;
  }

  if (v8._countAndFlagsBits == 50 && v8._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a1 = 0x656C616D6546;
    goto LABEL_11;
  }

  if (v8._countAndFlagsBits == 109 && v8._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
LABEL_5:
    a1 = 1701601613;

    return a1;
  }

  a1 = 0x656C616D6546;
  if (v8._countAndFlagsBits == 102 && v8._object == 0xE100000000000000)
  {
LABEL_11:

    return a1;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    type metadata accessor for DaemonAnalytics();

    static DaemonAnalytics.sendGenderInvalidEvent(issuer:)();

    return 0x6E776F6E6B6E55;
  }

  return a1;
}

unint64_t sub_100005FCC(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(35);

  if (a2)
  {
    v4 = a2;
  }

  else
  {
    a1 = 0x3E6C696E3CLL;
    v4 = 0xE500000000000000;
  }

  v5._countAndFlagsBits = a1;
  v5._object = v4;
  String.append(_:)(v5);

  return 0xD000000000000021;
}

unint64_t sub_100006078(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Calendar();
  v82 = *(v6 - 8);
  v83 = v6;
  __chkstk_darwin(v6);
  v90 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DateComponents();
  v80 = *(v8 - 8);
  v81 = v8;
  __chkstk_darwin(v8);
  v79 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v84 = *(v10 - 8);
  v85 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v89 = v77 - v14;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v77 - v21;
  v23 = __chkstk_darwin(v20);
  __chkstk_darwin(v23);
  v26 = v77 - v25;
  if (!a2)
  {
    v51 = v15;
    defaultLogger()();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Date of birth doesn't exist in the PDF417, hence not stored in the database", v54, 2u);
    }

    (*(v16 + 8))(v19, v51);
    type metadata accessor for DaemonAnalytics();

    static DaemonAnalytics.sendDateOfBirthInvalidEvent(issuer:isEmpty:invalidRange:incorrectFormat:)();
    goto LABEL_14;
  }

  v78 = v24;
  v87 = v3;
  v27 = defaultLogger()();
  __chkstk_darwin(v27);
  v77[-2] = a1;
  v77[-1] = a2;
  Logger.sensitive(_:)();
  v29 = *(v16 + 8);
  v28 = (v16 + 8);
  v88 = v15;
  v86 = v29;
  v29(v26, v15);
  v30 = [objc_allocWithZone(NSDateFormatter) init];
  v31 = String._bridgeToObjectiveC()();
  [v30 setDateFormat:v31];

  v32 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v32 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32 || (v33 = String._bridgeToObjectiveC()(), v34 = [v30 dateFromString:v33], v33, !v34))
  {
LABEL_8:
    defaultLogger()();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Date of birth is in an incorrect format. Unable to derive the age. ", v50, 2u);
    }

    v86(v22, v88);
    type metadata accessor for DaemonAnalytics();

    static DaemonAnalytics.sendDateOfBirthInvalidEvent(issuer:isEmpty:invalidRange:incorrectFormat:)();

LABEL_14:

    return 0;
  }

  v77[0] = v30;
  v77[1] = v28;
  v35 = v89;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  static Calendar.current.getter();
  sub_100007224(&qword_1008334A0, &qword_1006BF610);
  v36 = type metadata accessor for Calendar.Component();
  v37 = *(v36 - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1006BF520;
  (*(v37 + 104))(v39 + v38, enum case for Calendar.Component.year(_:), v36);
  sub_1003A92C4(v39);
  swift_setDeallocating();
  (*(v37 + 8))(v39 + v38, v36);
  swift_deallocClassInstance();
  Date.init()();
  v40 = v79;
  v41 = v35;
  v42 = v90;
  Calendar.dateComponents(_:from:to:)();

  v43 = *(v84 + 8);
  v44 = v13;
  v45 = v85;
  v43(v44, v85);
  (*(v82 + 8))(v42, v83);
  v46 = DateComponents.year.getter();
  LOBYTE(v42) = v47;
  (*(v80 + 8))(v40, v81);
  if (v42)
  {
    v43(v41, v45);
    v30 = v77[0];
    goto LABEL_8;
  }

  v90 = v43;
  v56 = defaultLogger()();
  __chkstk_darwin(v56);
  v77[-2] = v46;
  Logger.sensitive(_:)();
  v57 = v26;
  v58 = v86;
  v86(v57, v88);
  sub_100007224(&qword_1008334A8, &qword_1006BF618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BF530;
  *(inited + 32) = 0x39312D3531;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = xmmword_1006BF540;
  *(inited + 64) = 0x34322D3032;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = xmmword_1006BF550;
  *(inited + 96) = 0x34332D3532;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 112) = xmmword_1006BF560;
  *(inited + 128) = 0x34342D3533;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = xmmword_1006BF570;
  *(inited + 160) = 0x34352D3534;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 176) = xmmword_1006BF580;
  *(inited + 192) = 0x39352D3535;
  *(inited + 200) = 0xE500000000000000;
  *(inited + 208) = xmmword_1006BF590;
  *(inited + 224) = 0x34362D3036;
  *(inited + 232) = 0xE500000000000000;
  *(inited + 240) = xmmword_1006BF5A0;
  *(inited + 256) = 0x34372D3536;
  *(inited + 264) = 0xE500000000000000;
  *(inited + 272) = xmmword_1006BF5B0;
  *(inited + 288) = 0x34382D3537;
  *(inited + 296) = 0xE500000000000000;
  *(inited + 304) = xmmword_1006BF5C0;
  *(inited + 320) = 2831672;
  *(inited + 328) = 0xE300000000000000;
  *(inited + 336) = xmmword_1006BF5D0;
  v60 = sub_10003CBB0(inited);
  swift_setDeallocating();
  sub_100007224(&qword_1008334B0, &qword_1006BF620);
  swift_arrayDestroy();
  result = v60;
  v61 = 0;
  v62 = 1 << *(v60 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v60 + 64);
  v65 = (v62 + 63) >> 6;
  while (v64)
  {
    v66 = v61;
LABEL_26:
    v67 = __clz(__rbit64(v64));
    v64 &= v64 - 1;
    v68 = v67 | (v66 << 6);
    v69 = (*(v60 + 56) + 16 * v68);
    v71 = *v69;
    v70 = v69[1];
    if (v46 >= v71 && v46 < v70)
    {
      v73 = *(*(v60 + 48) + 16 * v68);

      (v90)(v89, v45);

      return v73;
    }
  }

  while (1)
  {
    v66 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      __break(1u);
      return result;
    }

    if (v66 >= v65)
    {
      break;
    }

    v64 = *(v60 + 64 + 8 * v66);
    ++v61;
    if (v64)
    {
      v61 = v66;
      goto LABEL_26;
    }
  }

  defaultLogger()();
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&_mh_execute_header, v74, v75, "Age not in the valid range", v76, 2u);
  }

  v58(v78, v88);
  type metadata accessor for DaemonAnalytics();

  static DaemonAnalytics.sendDateOfBirthInvalidEvent(issuer:isEmpty:invalidRange:incorrectFormat:)();

  (v90)(v89, v45);
  return 0;
}

uint64_t sub_100006B74(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(52);
  v4._object = 0x80000001006FAC00;
  v4._countAndFlagsBits = 0xD000000000000032;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  return 0;
}

unint64_t sub_100006BF8()
{
  _StringGuts.grow(_:)(33);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  return 0xD00000000000001FLL;
}

unint64_t sub_100006C8C()
{
  _StringGuts.grow(_:)(47);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  return 0xD00000000000002DLL;
}

uint64_t sub_100006D20(unsigned __int8 a1)
{
  _StringGuts.grow(_:)(51);
  v2._countAndFlagsBits = 0xD000000000000031;
  v2._object = 0x80000001006FAB70;
  String.append(_:)(v2);
  v3 = 0xE700000000000000;
  v4 = 0x44455249505845;
  v5 = 0x80000001006F8A70;
  v6 = 0xD000000000000018;
  v7 = 0x80000001006F8A90;
  if (a1 != 4)
  {
    v7 = 0x80000001006F8AB0;
  }

  if (a1 != 3)
  {
    v6 = 0xD000000000000010;
    v5 = v7;
  }

  v8 = 0xEB00000000594441;
  v9 = 0x45525F4D49414C43;
  if (a1 != 1)
  {
    v9 = 0x474E49444E4550;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (a1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (a1 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  return 0;
}

uint64_t sub_100006E60()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100006EBC(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  if ((a2 & 1) == 0 && a1)
  {
    v9 = defaultLogger()();
    __chkstk_darwin(v9);
    *(&v14 - 2) = a1;
    Logger.sensitive(_:)();
    (*(v5 + 8))(v7, v4);
    v10 = sub_10003CCE4(&off_1007F8348);
    sub_100007224(&qword_100833498, &qword_1006BF608);
    swift_arrayDestroy();
    if (v10[2] && (v11 = sub_10003AFE4(a1), (v12 & 1) != 0))
    {
      v8 = *(v10[7] + 16 * v11);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

unint64_t sub_100007060(unsigned __int8 a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  defaultLogger()();
  v9[16] = a1;
  Logger.sensitive(_:)();
  (*(v3 + 8))(v5, v2);
  v6 = 0x4445444E45545845;
  if (a1 != 4)
  {
    v6 = 0xD000000000000010;
  }

  if (a1 == 3)
  {
    v6 = 0x44455443454A4552;
  }

  v7 = 0x4653534543435553;
  if (a1 != 1)
  {
    v7 = 0x4445444E45545845;
  }

  if (!a1)
  {
    v7 = 0x44455443454A4552;
  }

  if (a1 <= 2u)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100007224(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_100007284(void (*a1)(void, void, void), int a2, int a3)
{
  v4 = v3;
  v204 = a2;
  v224 = a1;
  v6 = sub_100007224(&qword_1008336D8, qword_1006BF6F0);
  __chkstk_darwin(v6 - 8);
  v200 = (&v197 - v7);
  v8 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v8 - 8);
  v202 = &v197 - v9;
  v207 = type metadata accessor for SHA256();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v205 = &v197 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for SHA256Digest();
  v222 = *(v223 - 8);
  v11 = __chkstk_darwin(v223);
  v212 = &v197 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v218 = &v197 - v13;
  v217 = type metadata accessor for AEADKey();
  v228 = *(v217 - 8);
  v14 = __chkstk_darwin(v217);
  v16 = &v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v214 = (&v197 - v17);
  v216 = sub_100007224(&unk_100833638, &unk_1006BF6C0);
  v227 = *(v216 - 8);
  v18 = __chkstk_darwin(v216);
  v203 = &v197 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v213 = &v197 - v20;
  v215 = sub_100007224(&qword_1008335C0, &qword_1006DA7B0);
  v21 = __chkstk_darwin(v215);
  v199 = &v197 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v230 = &v197 - v23;
  v24 = type metadata accessor for Logger();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v201 = &v197 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v209 = &v197 - v29;
  v30 = __chkstk_darwin(v28);
  v210 = &v197 - v31;
  v32 = __chkstk_darwin(v30);
  v208 = &v197 - v33;
  v34 = __chkstk_darwin(v32);
  v211 = &v197 - v35;
  v36 = __chkstk_darwin(v34);
  v198 = &v197 - v37;
  v38 = __chkstk_darwin(v36);
  v220 = &v197 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v197 - v41;
  __chkstk_darwin(v40);
  v44 = &v197 - v43;
  defaultLogger()();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  v47 = os_log_type_enabled(v45, v46);
  v221 = a3;
  *&v229 = v24;
  if (v47)
  {
    v226 = v16;
    v219 = v4;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v231 = v49;
    *v48 = 136315138;
    v50 = 0xEF746E6F7246746ELL;
    v51 = 0xE600000000000000;
    v52 = 0x6569666C6573;
    v53 = 0x7373656E6576696CLL;
    v54 = 0xED00006F65646956;
    if (a3 != 3)
    {
      v53 = 0x7261696C69787561;
      v54 = 0xEE006F6564695679;
    }

    if (a3 != 2)
    {
      v52 = v53;
      v51 = v54;
    }

    if (a3)
    {
      v50 = 0xEE006B636142746ELL;
    }

    if (a3 <= 1u)
    {
      v55 = 0x656D75636F446469;
    }

    else
    {
      v55 = v52;
    }

    if (a3 <= 1u)
    {
      v56 = v50;
    }

    else
    {
      v56 = v51;
    }

    v57 = sub_100141FE4(v55, v56, &v231);

    *(v48 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v45, v46, "CloudKitUploadBuilder.addUploadAsset: creating upload asset of type %s.", v48, 0xCu);
    sub_10000BB78(v49);

    v58 = *(v25 + 8);
    v24 = v229;
    v58(v44, v229);
    v4 = v219;
    v16 = v226;
  }

  else
  {

    v58 = *(v25 + 8);
    v58(v44, v24);
  }

  defaultLogger()();
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "CloudKitUploadBuilder.addUploadAsset: Starting to encrypt images", v61, 2u);
  }

  v226 = (v25 + 8);
  v58(v42, v24);
  objc_opt_self();
  v62 = v224;
  v63 = swift_dynamicCastObjCClass();
  if (v63)
  {
    v64 = v63;
    v65 = v62;
    v66 = v213;
    v67 = v214;
    v68 = v225;
    sub_10000AA70(v213, v214, v64);
    v69 = v68;

    if (v68)
    {
      return;
    }

LABEL_25:
    v219 = v4;
    v79 = v230;
    v224 = *(v227 + 32);
    v227 += 32;
    v224(v230, v66, v216);
    v80 = *(v228 + 32);
    v81 = v79 + *(v215 + 48);
    v228 += 32;
    v214 = v80;
    (v80)(v81, v67, v217);
    defaultLogger()();
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "CloudKitUploadBuilder.addUploadAsset: Images encryption complete", v84, 2u);
    }

    v58(v220, v24);
    v233 = SealedMessage.data.getter();
    v234 = v85;
    if (shouldIncludeUnencryptedData()())
    {
      SealedMessage.unencryptedData.getter();
      v86 = v232;
      if (v232 >> 60 != 15)
      {
        v87 = v231;
        v88 = v198;
        defaultLogger()();
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v89, v90))
        {
          v220 = v87;
          v225 = 0;
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v231 = v92;
          *v91 = 136315138;
          v93 = 0xE600000000000000;
          v94 = 0x6569666C6573;
          v95 = 0x7373656E6576696CLL;
          v96 = 0xED00006F65646956;
          if (v221 != 3)
          {
            v95 = 0x7261696C69787561;
            v96 = 0xEE006F6564695679;
          }

          if (v221 != 2)
          {
            v94 = v95;
            v93 = v96;
          }

          v97 = 0xEE006B636142746ELL;
          if (!v221)
          {
            v97 = 0xEF746E6F7246746ELL;
          }

          if (v221 <= 1u)
          {
            v98 = 0x656D75636F446469;
          }

          else
          {
            v98 = v94;
          }

          if (v221 <= 1u)
          {
            v99 = v97;
          }

          else
          {
            v99 = v93;
          }

          v100 = sub_100141FE4(v98, v99, &v231);

          *(v91 + 4) = v100;
          _os_log_impl(&_mh_execute_header, v89, v90, "CloudKitUploadBuilder.addUploadAsset: allowing unencrypted CK data for %s, privacy: .public)", v91, 0xCu);
          sub_10000BB78(v92);

          v58(v198, v229);
          v69 = v225;
          v87 = v220;
        }

        else
        {

          v58(v88, v24);
        }

        sub_10000B90C(v233, v234);
        v233 = v87;
        v234 = v86;
      }
    }

    v101 = v233;
    v102 = v234;
    sub_10000B8B8(v233, v234);
    sub_10000BD4C(&qword_1008336E0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    v103 = v205;
    v104 = v207;
    dispatch thunk of HashFunction.init()();
    sub_10000B8B8(v101, v102);
    sub_10037939C(v101, v102, v103);
    v225 = v69;
    sub_10000B90C(v101, v102);
    v105 = v218;
    dispatch thunk of HashFunction.finalize()();
    sub_10000B90C(v101, v102);
    (*(v206 + 8))(v103, v104);
    sub_10000BD4C(&qword_1008336E8, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v106 = v223;
    v213 = Digest.base64Str.getter();
    v207 = v107;
    v108 = v211;
    defaultLogger()();
    v109 = v222;
    v110 = v212;
    (*(v222 + 16))(v212, v105, v106);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v231 = swift_slowAlloc();
      *v113 = 136446466;
      v114 = 0xE600000000000000;
      v115 = 0x6569666C6573;
      v116 = 0x7373656E6576696CLL;
      v117 = 0xED00006F65646956;
      if (v221 != 3)
      {
        v116 = 0x7261696C69787561;
        v117 = 0xEE006F6564695679;
      }

      if (v221 != 2)
      {
        v115 = v116;
        v114 = v117;
      }

      v118 = 0xEE006B636142746ELL;
      if (!v221)
      {
        v118 = 0xEF746E6F7246746ELL;
      }

      if (v221 <= 1u)
      {
        v119 = 0x656D75636F446469;
      }

      else
      {
        v119 = v115;
      }

      if (v221 <= 1u)
      {
        v120 = v118;
      }

      else
      {
        v120 = v114;
      }

      v121 = sub_100141FE4(v119, v120, &v231);

      *(v113 + 4) = v121;
      *(v113 + 12) = 2080;
      v122 = v223;
      v123 = v212;
      v124 = Digest.hexStr.getter();
      v126 = v125;
      v220 = *(v222 + 8);
      (v220)(v123, v122);
      v127 = sub_100141FE4(v124, v126, &v231);

      *(v113 + 14) = v127;
      _os_log_impl(&_mh_execute_header, v111, v112, "CloudKitUploadBuilder.addUploadAsset: Hash for uploaded %{public}s: %s", v113, 0x16u);
      swift_arrayDestroy();

      v128 = v211;
    }

    else
    {

      v220 = *(v109 + 8);
      (v220)(v110, v106);
      v128 = v108;
    }

    v129 = v229;
    v58(v128, v229);
    v130 = v208;
    defaultLogger()();
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.debug.getter();
    v133 = os_log_type_enabled(v131, v132);
    v134 = v209;
    v135 = v210;
    if (v133)
    {
      v136 = swift_slowAlloc();
      *v136 = 0;
      _os_log_impl(&_mh_execute_header, v131, v132, "--- BEGIN LOGGING ENCRYPTED IMAGE SIZE----", v136, 2u);
    }

    v58(v130, v129);
    defaultLogger()();
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v137, v138))
    {

      v142 = v135;
      v143 = v129;
      goto LABEL_83;
    }

    v139 = swift_slowAlloc();
    v231 = swift_slowAlloc();
    *v139 = 136446466;
    if (v221 <= 1u)
    {
      if (v221)
      {
        v141 = 0xEE006B636142746ELL;
      }

      else
      {
        v141 = 0xEF746E6F7246746ELL;
      }

      v140 = 0x656D75636F446469;
    }

    else if (v221 == 2)
    {
      v141 = 0xE600000000000000;
      v140 = 0x6569666C6573;
    }

    else if (v221 == 3)
    {
      v140 = 0x7373656E6576696CLL;
      v141 = 0xED00006F65646956;
    }

    else
    {
      v140 = 0x7261696C69787561;
      v141 = 0xEE006F6564695679;
    }

    v144 = sub_100141FE4(v140, v141, &v231);

    *(v139 + 4) = v144;
    *(v139 + 12) = 2082;
    swift_beginAccess();
    v145 = v233;
    v146 = v234 >> 62;
    if ((v234 >> 62) > 1)
    {
      if (v146 != 2)
      {
        goto LABEL_82;
      }

      v145 = *(v233 + 16);
      if (!__OFSUB__(*(v233 + 24), v145))
      {
        goto LABEL_82;
      }

      __break(1u);
    }

    else if (!v146)
    {
LABEL_82:
      v147 = Int.formattedByteSize.getter();
      v149 = sub_100141FE4(v147, v148, &v231);

      *(v139 + 14) = v149;
      _os_log_impl(&_mh_execute_header, v137, v138, "%{public}s: %{public}s", v139, 0x16u);
      swift_arrayDestroy();

      v142 = v210;
      v129 = v229;
      v143 = v229;
LABEL_83:
      v58(v142, v143);
      defaultLogger()();
      v150 = Logger.logObject.getter();
      v151 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v150, v151))
      {
LABEL_94:

        v58(v134, v129);
        v159 = v201;
        defaultLogger()();
        v160 = Logger.logObject.getter();
        v161 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = swift_slowAlloc();
          *v162 = 0;
          _os_log_impl(&_mh_execute_header, v160, v161, "--- END LOGGING ENCRYPTED IMAGE SIZE----", v162, 2u);
        }

        v58(v159, v129);
        v163 = [objc_allocWithZone(NSUUID) init];
        v164 = [v163 UUIDString];

        v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v167 = v166;

        swift_beginAccess();
        v168 = v233;
        v169 = v234;
        v170 = type metadata accessor for URL();
        v171 = *(*(v170 - 8) + 56);
        v172 = v202;
        v171(v202, 1, 1, v170);
        type metadata accessor for UploadAsset(0);
        v173 = swift_allocObject();
        v229 = xmmword_1006BF650;
        *(v173 + 32) = xmmword_1006BF650;
        v171((v173 + OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL), 1, 1, v170);
        *(v173 + OBJC_IVAR____TtC8coreidvd11UploadAsset_systemData) = v229;
        *(v173 + 16) = v165;
        *(v173 + 24) = v167;
        v174 = *(v173 + 32);
        v175 = *(v173 + 40);
        *(v173 + 32) = v168;
        *(v173 + 40) = v169;
        sub_10000B8B8(v168, v169);
        sub_10000BD94(v174, v175);
        *(v173 + 48) = v221;
        v176 = OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL;
        swift_beginAccess();
        sub_10000BDA8(v172, v173 + v176);
        swift_endAccess();
        v177 = *(v173 + 16);
        v178 = *(v173 + 24);
        v179 = v233;
        v180 = v234 >> 62;
        if ((v234 >> 62) > 1)
        {
          v181 = 0;
          if (v180 != 2)
          {
            goto LABEL_105;
          }

          v179 = *(v233 + 16);
          v182 = *(v233 + 24);
          v181 = v182 - v179;
          if (!__OFSUB__(v182, v179))
          {
            goto LABEL_105;
          }

          __break(1u);
        }

        else if (!v180)
        {
          v181 = BYTE6(v234);
LABEL_105:
          v184 = v230;
          v185 = v199;
          sub_10000BBC4(v230, v199, &qword_1008335C0, &qword_1006DA7B0);
          v186 = *(v215 + 48);
          v187 = v200;
          v188 = v207;
          *v200 = v213;
          *(v187 + 8) = v188;
          *(v187 + 16) = v181;
          v189 = type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo(0);
          v190 = v187 + *(v189 + 24);
          v224(v190, v185, v216);
          (v214)(v190 + v186, v185 + v186, v217);
          (*(*(v189 - 8) + 56))(v187, 0, 1, v189);
          v191 = v219;
          swift_beginAccess();

          sub_10014B4FC(v187, v177, v178);
          swift_endAccess();
          v192 = *(v173 + 16);
          v193 = *(v173 + 24);
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v235 = *(v191 + 2);
          *(v191 + 2) = 0x8000000000000000;
          sub_10016C328(v173, v192, v193, isUniquelyReferenced_nonNull_native);

          *(v191 + 2) = v235;
          swift_endAccess();
          v195._countAndFlagsBits = 0x6239386161303431;
          v196._object = 0x80000001006FAEB0;
          v195._object = 0xE800000000000000;
          v196._countAndFlagsBits = 0xD000000000000047;
          logMilestone(tag:description:)(v195, v196);

          (v220)(v218, v223);
          sub_10000BE18(v184, &qword_1008335C0, &qword_1006DA7B0);
          sub_10000B90C(v233, v234);
          return;
        }

        v157 = __OFSUB__(HIDWORD(v179), v179);
        v183 = HIDWORD(v179) - v179;
        if (!v157)
        {
          v181 = v183;
          goto LABEL_105;
        }

        __break(1u);
        goto LABEL_108;
      }

      v152 = swift_slowAlloc();
      *v152 = 134349056;
      swift_beginAccess();
      v153 = v233;
      v154 = v234 >> 62;
      if ((v234 >> 62) > 1)
      {
        v155 = 0;
        if (v154 != 2)
        {
          goto LABEL_93;
        }

        v153 = *(v233 + 16);
        v156 = *(v233 + 24);
        v157 = __OFSUB__(v156, v153);
        v155 = v156 - v153;
        if (!v157)
        {
          goto LABEL_93;
        }

        __break(1u);
      }

      else if (!v154)
      {
        v155 = BYTE6(v234);
LABEL_93:
        *(v152 + 4) = v155;
        _os_log_impl(&_mh_execute_header, v150, v151, "size in bytes: %{public}ld", v152, 0xCu);

        goto LABEL_94;
      }

      v157 = __OFSUB__(HIDWORD(v153), v153);
      v158 = HIDWORD(v153) - v153;
      if (v157)
      {
LABEL_109:
        __break(1u);
        return;
      }

      v155 = v158;
      goto LABEL_93;
    }

    if (__OFSUB__(HIDWORD(v145), v145))
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    goto LABEL_82;
  }

  v219 = v58;
  v70 = [v62 data];
  v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  v74 = v16;
  if (v204)
  {
    v75 = Data.base64EncodedData(options:)();
    v77 = v76;
    sub_10000B90C(v71, v73);
    v71 = v75;
    v73 = v77;
  }

  sub_10000BA08(v4 + 4, *(v4 + 7));
  v231 = v71;
  v232 = v73;
  sub_10000B960();
  sub_10000B9B4();
  v66 = v203;
  v78 = v225;
  dispatch thunk of HPKESuite.sealMessageAEAD<A>(message:)();
  v69 = v78;
  sub_10000B90C(v71, v73);
  if (!v78)
  {
    v67 = v74;
    v24 = v229;
    v58 = v219;
    goto LABEL_25;
  }
}

uint64_t sub_100008B9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v197 = a3;
  v213 = a2;
  v215 = a1;
  v193 = a4;
  v208 = type metadata accessor for EncryptedMessageEntity();
  v216 = *(v208 - 8);
  v6 = __chkstk_darwin(v208);
  v202 = &v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v200 = &v188 - v9;
  __chkstk_darwin(v8);
  v199 = &v188 - v10;
  v207 = sub_100007224(&qword_100833680, &qword_1006C4A20);
  v203 = *(v207 - 8);
  __chkstk_darwin(v207);
  v214 = &v188 - v11;
  v217 = type metadata accessor for ProofingData(0);
  v12 = __chkstk_darwin(v217);
  v198 = &v188 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v218 = &v188 - v14;
  v223 = sub_100007224(&qword_100833688, &qword_1006BF6D0);
  v220 = *(v223 - 8);
  v15 = __chkstk_darwin(v223);
  v191 = &v188 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v206 = &v188 - v17;
  v18 = sub_100007224(&qword_100833690, &qword_1006BF6D8);
  v19 = __chkstk_darwin(v18 - 8);
  v192 = &v188 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v224 = &v188 - v21;
  v22 = sub_100007224(&qword_100833698, &qword_1006BF6E0);
  __chkstk_darwin(v22 - 8);
  v225 = &v188 - v23;
  v196 = type metadata accessor for DIPError.Code();
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v188 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AEADKey();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v189 = &v188 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v205 = &v188 - v30;
  __chkstk_darwin(v29);
  v252 = &v188 - v31;
  v253 = sub_100007224(&qword_1008335C0, &qword_1006DA7B0);
  v32 = __chkstk_darwin(v253);
  v251 = &v188 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v231 = &v188 - v34;
  v236 = type metadata accessor for Logger();
  v35 = *(v236 - 8);
  v36 = __chkstk_darwin(v236);
  v201 = &v188 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v190 = &v188 - v39;
  v40 = __chkstk_darwin(v38);
  v204 = &v188 - v41;
  __chkstk_darwin(v40);
  v240 = &v188 - v42;
  v230 = type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo(0);
  v229 = *(v230 - 8);
  v43 = __chkstk_darwin(v230);
  v239 = (&v188 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = __chkstk_darwin(v43);
  v238 = &v188 - v46;
  v47 = __chkstk_darwin(v45);
  v228 = &v188 - v48;
  __chkstk_darwin(v47);
  v260 = (&v188 - v49);
  swift_beginAccess();
  v50 = *(v4 + 16);
  v51 = v50 + 64;
  v52 = 1 << *(v50 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v50 + 64);
  v237 = v50;

  swift_beginAccess();
  v55 = 0;
  v56 = (v52 + 63) >> 6;
  v235 = (v35 + 8);
  v232 = (v26 + 8);
  v212 = 0x80000001006FAE30;
  v211 = 0x80000001006FAE50;
  v210 = 0x80000001006FAE70;
  v209 = 0x80000001006FAE90;
  v241 = (v26 + 32);
  v233 = v26;
  v221 = v26 + 40;
  v57 = &_swiftEmptyDictionarySingleton;
  v258 = _swiftEmptyArrayStorage;
  *&v58 = 136315906;
  v222 = v58;
  v254 = v25;
  v227 = v51;
  v234 = v5;
  for (i = v56; ; v56 = i)
  {
    v256._rawValue = v57;
    if (!v54)
    {
      break;
    }

LABEL_11:
    v62 = __clz(__rbit64(v54)) | (v55 << 6);
    v63 = (*(v237 + 48) + 16 * v62);
    v64 = v63[1];
    v65 = *(*(v237 + 56) + 8 * v62);
    v66 = *(v65 + 48);
    if (v66 == 5)
    {

      (*(v195 + 104))(v194, enum case for DIPError.Code.missingCloudKitAssets(_:), v196);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10000BD4C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_83;
    }

    v67 = *v63;
    v68 = *(v5 + 24);
    v69 = *(v68 + 16);

    if (!v69)
    {

      goto LABEL_62;
    }

    v70 = sub_10003ADCC(v67, v64);
    v72 = v71;

    if ((v72 & 1) == 0)
    {

LABEL_62:

      v259[0] = 0;
      v259[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(76);
      v166._countAndFlagsBits = 0xD00000000000004ALL;
      v166._object = 0x80000001006FADE0;
      String.append(_:)(v166);
      if (v66 <= 1)
      {
        if (v66)
        {
          v168 = 0xEE006B636142746ELL;
        }

        else
        {
          v168 = 0xEF746E6F7246746ELL;
        }

        v167 = 0x656D75636F446469;
      }

      else if (v66 == 2)
      {
        v168 = 0xE600000000000000;
        v167 = 0x6569666C6573;
      }

      else if (v66 == 3)
      {
        v167 = 0x7373656E6576696CLL;
        v168 = 0xED00006F65646956;
      }

      else
      {
        v167 = 0x7261696C69787561;
        v168 = 0xEE006F6564695679;
      }

      v186 = v194;
      v187 = v168;
      String.append(_:)(*&v167);

      (*(v195 + 104))(v186, enum case for DIPError.Code.missingCloudKitAssets(_:), v196);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10000BD4C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_83:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    LODWORD(v257) = v66;
    v73 = v228;
    sub_10000BAB0(*(v68 + 56) + *(v229 + 72) * v70, v228, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);

    v74 = v260;
    sub_10000BA4C(v73, v260);
    v75 = v240;
    defaultLogger()();
    v76 = v238;
    sub_10000BAB0(v74, v238, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
    v77 = v239;
    sub_10000BAB0(v74, v239, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();

    v245 = v64;

    v80 = os_log_type_enabled(v78, v79);
    v255 = v65;
    if (!v80)
    {
      sub_10000BB18(v76, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);

      sub_10000BB18(v77, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
      (*v235)(v75, v236);
      v85 = v257;
      goto LABEL_26;
    }

    v81 = swift_slowAlloc();
    v250 = swift_slowAlloc();
    v259[0] = v250;
    *v81 = v222;
    v82 = *(v65 + 16);
    v83 = *(v65 + 24);

    v84 = sub_100141FE4(v82, v83, v259);

    *(v81 + 4) = v84;
    *(v81 + 12) = 2080;
    v85 = v257;
    if (v257 <= 1)
    {
      v87 = 0x656D75636F446469;
      v88 = 0xEF746E6F7246746ELL;
      v86 = v238;
      if (v257)
      {
        v89 = 0x6B636142746ELL;
LABEL_24:
        v88 = v89 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      }
    }

    else
    {
      v86 = v238;
      if (v257 == 2)
      {
        v88 = 0xE600000000000000;
        v87 = 0x6569666C6573;
      }

      else
      {
        if (v257 != 3)
        {
          v87 = 0x7261696C69787561;
          v89 = 0x6F6564695679;
          goto LABEL_24;
        }

        v87 = 0x7373656E6576696CLL;
        v88 = 0xED00006F65646956;
      }
    }

    v90 = sub_100141FE4(v87, v88, v259);

    *(v81 + 14) = v90;
    *(v81 + 22) = 2048;
    v91 = v86;
    v92 = *(v86 + 16);
    sub_10000BB18(v91, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
    *(v81 + 24) = v92;
    *(v81 + 32) = 2080;
    v93 = v239;
    v95 = *v239;
    v94 = v239[1];

    sub_10000BB18(v93, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
    v96 = sub_100141FE4(v95, v94, v259);

    *(v81 + 34) = v96;
    _os_log_impl(&_mh_execute_header, v78, v79, "Upload data info: record ID = %s, type: %s, size: %ld, contentHash: %s", v81, 0x2Au);
    swift_arrayDestroy();

    (*v235)(v240, v236);
    v65 = v255;
LABEL_26:
    v97 = *(v65 + 16);
    v98 = *(v65 + 24);
    v99 = *(v260 + 1);
    v247 = *(v260 + 2);
    v248 = v97;
    v246 = *v260;
    v250 = *(v230 + 24);
    v100 = v231;
    sub_10000BBC4(v260 + v250, v231, &qword_1008335C0, &qword_1006DA7B0);
    v101 = *(v253 + 48);

    v249 = v99;

    v102 = sub_100007224(&unk_100833638, &unk_1006BF6C0);
    v257 = SealedMessage.keyID.getter();
    v104 = v103;
    v105 = *(v102 - 8);
    v106 = *(v105 + 8);
    v244 = v102;
    v243 = v106;
    v242 = v105 + 8;
    v106(v100, v102);
    (*v232)(v100 + v101, v254);
    if (v85 <= 1)
    {
      if (v85)
      {
        v107 = 0xD000000000000019;
        v108 = &v240;
      }

      else
      {
        v107 = 0xD00000000000001ALL;
        v108 = &v239;
      }
    }

    else
    {
      if (v85 == 2)
      {
        v109 = 0xE600000000000000;
        v107 = 0x6569666C6573;
        goto LABEL_36;
      }

      if (v85 == 3)
      {
        v107 = 0xD000000000000011;
        v108 = &v241;
      }

      else
      {
        v107 = 0xD000000000000014;
        v108 = &v242;
      }
    }

    v109 = *(v108 - 32);
LABEL_36:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v258 = sub_1003C4EB4(0, *(v258 + 2) + 1, 1, v258);
    }

    v111 = *(v258 + 2);
    v110 = *(v258 + 3);
    if (v111 >= v110 >> 1)
    {
      v258 = sub_1003C4EB4((v110 > 1), v111 + 1, 1, v258);
    }

    v113 = v257;
    v112 = v258;
    *(v258 + 2) = v111 + 1;
    v114 = &v112[72 * v111];
    *(v114 + 4) = v113;
    *(v114 + 5) = v104;
    *(v114 + 6) = v107;
    *(v114 + 7) = v109;
    v115 = v247;
    *(v114 + 8) = v248;
    *(v114 + 9) = v98;
    v116 = v246;
    *(v114 + 10) = v115;
    *(v114 + 11) = v116;
    v117 = v250;
    *(v114 + 12) = v249;
    v118 = v251;
    sub_10000BBC4(v260 + v117, v251, &qword_1008335C0, &qword_1006DA7B0);
    v119 = *v241;
    v25 = v254;
    (*v241)(v252, v118 + *(v253 + 48), v254);
    rawValue = v256._rawValue;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v259[0] = rawValue;
    v122 = sub_10003ADCC(v113, v104);
    v124 = rawValue[2];
    v125 = (v123 & 1) == 0;
    v126 = __OFADD__(v124, v125);
    v127 = v124 + v125;
    if (v126)
    {
      goto LABEL_85;
    }

    v128 = v123;
    if (rawValue[3] < v127)
    {
      sub_100165258(v127, isUniquelyReferenced_nonNull_native);
      v122 = sub_10003ADCC(v257, v104);
      if ((v128 & 1) != (v129 & 1))
      {
        goto LABEL_87;
      }

LABEL_45:
      if (v128)
      {
        goto LABEL_4;
      }

      goto LABEL_46;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_45;
    }

    v133 = v122;
    sub_10016F060();
    v122 = v133;
    if (v128)
    {
LABEL_4:
      v59 = v122;

      v60 = *(v259[0] + 56) + *(v233 + 72) * v59;
      v57 = v259[0];
      (*(v233 + 40))(v60, v252, v25);

      sub_10000BB18(v260, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
      goto LABEL_5;
    }

LABEL_46:
    v57 = v259[0];
    *(v259[0] + 8 * (v122 >> 6) + 64) |= 1 << v122;
    v130 = (v57[6] + 16 * v122);
    *v130 = v257;
    v130[1] = v104;
    v119((v57[7] + *(v233 + 72) * v122), v252, v25);

    sub_10000BB18(v260, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
    v131 = v57[2];
    v126 = __OFADD__(v131, 1);
    v132 = v131 + 1;
    if (v126)
    {
      goto LABEL_86;
    }

    v57[2] = v132;
LABEL_5:
    v54 &= v54 - 1;
    v243(v251, v244);
    v5 = v234;
    v51 = v227;
  }

  while (1)
  {
    v61 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v61 >= v56)
    {

      v134 = *(v220 + 56);
      v135 = v225;
      v134(v225, 1, 1, v223);
      v136 = *(v233 + 56);
      v136(v224, 1, 1, v25);
      v137 = v215;
      if (v215)
      {
        v257 = v134;
        v260 = v136;
        v138 = v204;
        defaultLogger()();
        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.debug.getter();
        v141 = os_log_type_enabled(v139, v140);
        v142 = v236;
        if (v141)
        {
          v143 = swift_slowAlloc();
          *v143 = 0;
          _os_log_impl(&_mh_execute_header, v139, v140, "encrypt idv data with aead", v143, 2u);
        }

        (*v235)(v138, v142);
        sub_10000BA08((v234 + 32), *(v234 + 56));
        v259[0] = v137;
        sub_100007224(&qword_1008336B0, &qword_1006BF6E8);
        sub_10000BC80(&qword_1008336B8, sub_10000BC2C, &protocol conformance descriptor for <A> [A]);
        sub_10000BC80(&qword_1008336C8, sub_10000BCF8, &protocol conformance descriptor for <A> [A]);
        v144 = v206;
        v145 = v205;
        v146 = v219;
        dispatch thunk of HPKESuite.sealMessageAEAD<A>(message:)();
        if (v146)
        {
          sub_10000BE18(v224, &qword_100833690, &qword_1006BF6D8);
          v147 = v225;
LABEL_75:
          sub_10000BE18(v147, &qword_100833698, &qword_1006BF6E0);
        }

        v219 = 0;
        v148 = v224;
        sub_10000BE18(v224, &qword_100833690, &qword_1006BF6D8);
        v135 = v225;
        sub_10000BE18(v225, &qword_100833698, &qword_1006BF6E0);
        v149 = v223;
        (*(v220 + 32))(v135, v144, v223);
        v257(v135, 0, 1, v149);
        v150 = v254;
        (*v241)(v148, v145, v254);
        v260(v148, 0, 1, v150);
      }

      v151 = v218;
      sub_10000BBC4(v135, v218, &qword_100833698, &qword_1006BF6E0);
      *(v151 + *(v217 + 20)) = v258;
      v152 = v216;
      v153 = (v216 + 16);
      v260 = *(v216 + 16);
      v154 = v213;
      v155 = v208;
      (v260)(v199, v213, v208);
      sub_10000BAB0(v151, v198, type metadata accessor for ProofingData);
      (*(v152 + 104))(v200, enum case for EncryptedMessageEntity.device(_:), v155);
      sub_10000BD4C(&qword_1008336A0, type metadata accessor for ProofingData, &unk_1006C83E8);
      sub_10000BD4C(&qword_1008336A8, type metadata accessor for ProofingData, &unk_1006C83C0);

      v156 = v214;
      v157 = v260;
      HPKEEncryptedMessageWithKeyWrap.init(sender:recipient:messages:)();
      v158 = v220;
      v159 = (*(v220 + 48))(v225, 1, v223);
      v160 = v202;
      if (!v159)
      {
        v161 = v155;
        v257 = v153;
        v162 = v191;
        v163 = v223;
        (*(v158 + 16))(v191, v225, v223);
        SealedMessage.keyID.getter();
        (*(v158 + 8))(v162, v163);
        v164 = v192;
        sub_10000BBC4(v224, v192, &qword_100833690, &qword_1006BF6D8);
        v165 = v254;
        if ((*(v233 + 48))(v164, 1, v254) == 1)
        {

          sub_10000BE18(v164, &qword_100833690, &qword_1006BF6D8);
          v154 = v213;
          v157 = v260;
          v155 = v161;
        }

        else
        {
          v169 = v189;
          (*v241)(v189, v164, v165);
          defaultLogger()();
          v170 = Logger.logObject.getter();
          v171 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v170, v171))
          {
            v172 = swift_slowAlloc();
            *v172 = 0;
            _os_log_impl(&_mh_execute_header, v170, v171, "add idv data encryption key", v172, 2u);
            v156 = v214;
          }

          (*v235)(v190, v236);
          HPKEEncryptedMessageWithKeyWrap.addMessageEncryptionKey(keyID:key:)();

          (*v232)(v169, v165);
          v155 = v208;
          v154 = v213;
          v157 = v260;
        }
      }

      v173 = v201;
      defaultLogger()();
      v157(v160, v154, v155);
      v174 = Logger.logObject.getter();
      v175 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v174, v175))
      {
        v176 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        v259[0] = v177;
        *v176 = 136315138;
        v178 = EncryptedMessageEntity.rawValue.getter();
        v179 = v173;
        v181 = v180;
        (*(v216 + 8))(v160, v155);
        v182 = sub_100141FE4(v178, v181, v259);

        *(v176 + 4) = v182;
        _os_log_impl(&_mh_execute_header, v174, v175, "add uploaded data encryption keys to encryptedIDVData for %s", v176, 0xCu);
        sub_10000BB78(v177);
        v156 = v214;

        (*v235)(v179, v236);
      }

      else
      {

        (*(v216 + 8))(v160, v155);
        (*v235)(v173, v236);
      }

      v183 = v207;
      v147 = v225;
      HPKEEncryptedMessageWithKeyWrap.addMessageEncryptionKeys(keys:)(v256);
      v184 = v219;
      HPKEEncryptedMessageWithKeyWrap.sealKeys(to:encryptor:)();
      if (v184)
      {
        (*(v203 + 8))(v156, v183);
        sub_10000BB18(v218, type metadata accessor for ProofingData);
        sub_10000BE18(v224, &qword_100833690, &qword_1006BF6D8);
      }

      else
      {
        sub_10000BB18(v218, type metadata accessor for ProofingData);
        sub_10000BE18(v224, &qword_100833690, &qword_1006BF6D8);
        (*(v203 + 32))(v193, v156, v183);
      }

      goto LABEL_75;
    }

    v54 = *(v51 + 8 * v61);
    ++v55;
    if (v54)
    {
      v55 = v61;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10000AA70(uint64_t a1, uint64_t a2, void *a3)
{
  v52 = a2;
  v51 = a1;
  v4 = type metadata accessor for DIPError.Code();
  v60 = *(v4 - 8);
  __chkstk_darwin(v4);
  v62 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v56 = *(v6 - 8);
  v57 = v6;
  __chkstk_darwin(v6);
  v55 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v61 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPFileUploadCryptor.Result();
  v58 = *(v10 - 8);
  v59 = v10;
  __chkstk_darwin(v10);
  v65 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for UUID();
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPFileUploadCryptor.Options();
  v67 = *(v13 - 8);
  v68 = v13;
  __chkstk_darwin(v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for AES.GCM.Nonce();
  v16 = *(v63 - 8);
  __chkstk_darwin(v63);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SymmetricKeySize();
  __chkstk_darwin(v19 - 8);
  v20 = type metadata accessor for SymmetricKey();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a3;
  v24 = [a3 fileHandle];
  if (v24)
  {
    v62 = v24;
    static SymmetricKeySize.bits128.getter();
    SymmetricKey.init(size:)();
    v25 = v64;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    (*(v21 + 8))(v23, v20);
    v64 = *(&v71 + 1);
    v26 = v71;
    AES.GCM.Nonce.init()();
    AES.GCM.Nonce.withUnsafeBytes<A>(_:)();
    v60 = v25;
    (*(v16 + 8))(v18, v63);
    v27 = v71;
    v28 = [v66 assetID];
    v29 = v69;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    v30 = v15;
    v31 = *(v72 + 8);
    v32 = v29;
    v33 = v72 + 8;
    v31(v32, v70);
    v34 = v64;
    sub_10000B8B8(v26, v64);
    sub_10000B8B8(v27, *(&v27 + 1));
    v35 = v26;
    DIPFileUploadCryptor.Options.init(eraseInputFileData:copyDataForInternalDiagnostics:uuid:key:nonce:publicKey:)();
    v36 = v65;
    v37 = v62;
    v38 = v60;
    static DIPFileUploadCryptor.encryptFileHandle(_:withOptions:)();
    if (v38)
    {
      (*(v67 + 8))(v30, v68);
      sub_10000B90C(v35, v34);
      sub_10000B90C(v27, *(&v27 + 1));
    }

    else
    {
      v60 = v31;
      v66 = v30;
      v63 = v27;
      v72 = v33;
      defaultLogger()();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Finished encrypting data from original FileHandle", v41, 2u);
      }

      (*(v53 + 8))(v61, v54);
      v42 = v55;
      DIPFileUploadCryptor.Result.encryptedFileURL.getter();
      v43 = v35;
      v44 = Data.init(contentsOf:options:)();
      v45 = v42;
      v47 = v46;
      (*(v56 + 8))(v45, v57);
      v48 = v69;
      UUID.init()();
      UUID.uuidString.getter();
      (v60)(v48, v70);
      v71 = xmmword_1006BF650;
      v61 = v47;
      sub_10000B8B8(v44, v47);
      sub_10000B960();
      sub_10000B9B4();
      SealedMessage.init(keyID:data:unencryptedData:)();
      v49 = v64;
      Data.base64EncodedString(options:)(0);
      v50 = v63;
      Data.base64EncodedString(options:)(0);
      AEADKey.init(secretKey:nonce:)();

      sub_10000B90C(v44, v61);
      sub_10000B90C(v50, *(&v27 + 1));
      sub_10000B90C(v43, v49);
      (*(v58 + 8))(v36, v59);
      (*(v67 + 8))(v66, v68);
    }
  }

  else
  {
    v60[13](v62, enum case for DIPError.Code.internalError(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10000BD4C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_10000B454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = &type metadata for UnsafeRawBufferPointer;
  v14[4] = &protocol witness table for UnsafeRawBufferPointer;
  v14[0] = a1;
  v14[1] = a2;
  v4 = sub_10000BA08(v14, &type metadata for UnsafeRawBufferPointer);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_10034BFA0(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_10034C0DC(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_10034C058(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = sub_10000BB78(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t sub_10000B520()
{

  sub_10000BB78((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_10000B5A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100007224(&qword_1008335C0, &qword_1006DA7B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000B670(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_1008335C0, &qword_1006DA7B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo(uint64_t a1)
{
  result = qword_100833620;
  if (!qword_100833620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B76C(uint64_t a1)
{
  sub_10000B7F0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10000B7F0(uint64_t a1)
{
  if (!qword_100833630)
  {
    sub_10000B870(&unk_100833638, &unk_1006BF6C0);
    type metadata accessor for AEADKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100833630);
    }
  }
}

uint64_t sub_10000B870(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000B8B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000B90C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_10000B960()
{
  result = qword_100833670;
  if (!qword_100833670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100833670);
  }

  return result;
}

unint64_t sub_10000B9B4()
{
  result = qword_100833678;
  if (!qword_100833678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100833678);
  }

  return result;
}

void *sub_10000BA08(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000BA4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BAB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000BB18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000BB78(void *a1)
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

uint64_t sub_10000BBC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007224(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000BC2C()
{
  result = qword_1008336C0;
  if (!qword_1008336C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008336C0);
  }

  return result;
}

uint64_t sub_10000BC80(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(&qword_1008336B0, &qword_1006BF6E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000BCF8()
{
  result = qword_1008336D0;
  if (!qword_1008336D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008336D0);
  }

  return result;
}

uint64_t sub_10000BD4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000BD94(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000B90C(result, a2);
  }

  return result;
}

uint64_t sub_10000BDA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BE18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100007224(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10000BE94(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x6F5A6574656C6564;
    v5 = 0x6465686361747461;
    if (a1 != 8)
    {
      v5 = 0x6465686361746564;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0xD000000000000010;
    if (a1 != 5)
    {
      v6 = 0xD000000000000018;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x696C616974696E69;
    v2 = 0xD000000000000017;
    if (a1 == 3)
    {
      v2 = 0x7465467075746573;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = 0x7465536E69676562;
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

uint64_t sub_10000C000(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10000BE94(*a1);
  v5 = v4;
  if (v3 == sub_10000BE94(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10000C088()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10000BE94(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000C0EC(uint64_t a1)
{
  sub_10000BE94(*v1);
  String.hash(into:)();
}

Swift::Int sub_10000C140(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10000BE94(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10000C1A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001F24C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10000C1D0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000BE94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *sub_10000C218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v84 = a4;
  v85 = a6;
  v82 = a5;
  v83 = a3;
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v91 = *(v9 - 8);
  v92 = v9;
  __chkstk_darwin(v9);
  v90 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v88);
  v89 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v87 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for Logger();
  v14 = *(v93 - 1);
  v15 = __chkstk_darwin(v93);
  v81 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v80 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v80 - v21;
  __chkstk_darwin(v20);
  v24 = &v80 - v23;
  *(v6 + 6) = dispatch_group_create();
  v25 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_retrier;
  v26 = type metadata accessor for DIPRetrier();
  (*(*(v26 - 8) + 56))(&v6[v25], 1, 1, v26);
  v27 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_waitingForState;
  *&v6[v27] = sub_10003D01C(_swiftEmptyArrayStorage);
  v28 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_zoneIDsByName;
  *&v6[v28] = sub_10003D110(_swiftEmptyArrayStorage);
  *&v6[OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_subscriptionIDs] = &_swiftEmptySetSingleton;
  v29 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_changeTokensByZoneID;
  *&v6[v29] = sub_10003D124(_swiftEmptyArrayStorage);
  *(v6 + 3) = a1;
  *(v6 + 4) = a2;
  v86 = v6;
  v6[OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state] = 0;
  v30 = objc_opt_self();
  v31 = [v30 standardUserDefaults];
  static DaemonDefaultsKeys.useCloudKitSandbox.getter();
  v32 = String._bridgeToObjectiveC()();

  LODWORD(v29) = [v31 BOOLForKey:v32];

  if (v29)
  {
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Using CloudKit sandbox container environment due to user defaults setting", v35, 2u);
    }

    v36 = *(v14 + 8);
    v36(v24, v93);
    v37 = [v30 standardUserDefaults];
    static DaemonDefaultsKeys.environmentName.getter();
    v38 = String._bridgeToObjectiveC()();

    v39 = [v37 stringForKey:v38];

    if (v39)
    {
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v96 = v40;
      v97 = v42;
      v94 = 16721;
      v95 = 0xE200000000000000;
      sub_10001F298();
      v43 = StringProtocol.contains<A>(_:)();
      v44 = v85;
      if (v43)
      {

        v45 = 2;
      }

      else
      {
        defaultLogger()();

        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = v36;
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v96 = v66;
          *v65 = 136315138;
          v67 = sub_100141FE4(v40, v42, &v96);

          *(v65 + 4) = v67;
          _os_log_impl(&_mh_execute_header, v62, v63, "CloudKit sandbox container in use but server environment name %s doesn't look compatible. Do you need to fix your CloudKit container environment setting?", v65, 0xCu);
          sub_10000BB78(v66);

          v64(v22, v93);
        }

        else
        {

          v36(v22, v93);
        }

        v45 = 2;
      }
    }

    else
    {
      v45 = 2;
      v44 = v85;
    }
  }

  else
  {
    defaultLogger()();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Using CloudKit production container environment", v48, 2u);
    }

    v49 = *(v14 + 8);
    v49(v19, v93);
    v50 = [v30 standardUserDefaults];
    static DaemonDefaultsKeys.environmentName.getter();
    v51 = String._bridgeToObjectiveC()();

    v52 = [v50 stringForKey:v51];

    v44 = v85;
    if (v52)
    {
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v96 = v53;
      v97 = v55;
      v94 = 16721;
      v95 = 0xE200000000000000;
      sub_10001F298();
      if (StringProtocol.contains<A>(_:)())
      {
        v56 = v81;
        defaultLogger()();

        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v96 = v60;
          *v59 = 136315138;
          v61 = sub_100141FE4(v53, v55, &v96);

          *(v59 + 4) = v61;
          _os_log_impl(&_mh_execute_header, v57, v58, "CloudKit production container in use but server environment name %s doesn't look compatible. Do you need to fix your CloudKit container environment setting?", v59, 0xCu);
          sub_10000BB78(v60);
        }

        else
        {
        }

        v49(v56, v93);
      }

      else
      {
      }
    }

    v45 = 1;
  }

  v68 = objc_allocWithZone(CKContainerID);
  v69 = String._bridgeToObjectiveC()();

  v70 = [v68 initWithContainerIdentifier:v69 environment:v45];

  v71 = [objc_allocWithZone(CKContainerOptions) init];
  if (v44)
  {
    v72 = String._bridgeToObjectiveC()();
  }

  else
  {
    v72 = 0;
  }

  [v71 setApplicationBundleIdentifierOverrideForNetworkAttribution:v72];

  v73 = [objc_allocWithZone(CKContainer) initWithContainerID:v70 options:v71];
  v93 = v70;
  v74 = v86;
  *(v86 + 2) = v73;
  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  v96 = 0;
  v97 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v76 = *(v74 + 3);
  v75 = *(v74 + 4);

  v96 = v76;
  v97 = v75;
  v77._object = 0x80000001006FAFB0;
  v77._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v77);
  static DispatchQoS.unspecified.getter();
  v96 = _swiftEmptyArrayStorage;
  sub_10001F43C(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_10001F484(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v91 + 104))(v90, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v92);
  v78 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

  *(v74 + 5) = v78;
  return v74;
}

uint64_t sub_10000CCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v30 = a5;
  v27 = a2;
  v28 = a4;
  v6 = type metadata accessor for DIPRetrier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPBackoffStrategy();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100007224(&qword_100833A28, &qword_1006BF8A8);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v26 - v18;
  *v13 = 0x3FC999999999999ALL;
  (*(v11 + 104))(v13, enum case for DIPBackoffStrategy.exponential(_:), v10);
  DIPRetrier.init(maxRetries:backoffStrategy:)();
  (*(v7 + 56))(v19, 0, 1, v6);
  v20 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_retrier;
  swift_beginAccess();
  sub_1000200A0(v19, v5 + v20);
  swift_endAccess();
  sub_100020110(v5 + v20, v17);
  if ((*(v7 + 48))(v17, 1, v6))
  {
    return sub_10000BE18(v17, &qword_100833A28, &qword_1006BF8A8);
  }

  (*(v7 + 16))(v9, v17, v6);
  sub_10000BE18(v17, &qword_100833A28, &qword_1006BF8A8);
  v22 = swift_allocObject();
  v23 = v27;
  v22[2] = v5;
  v22[3] = v23;
  v22[4] = v29;
  v24 = swift_allocObject();
  v25 = v28;
  v24[2] = v5;
  v24[3] = v25;
  v24[4] = v30;
  swift_retain_n();

  DIPRetrier.async(action:completion:)();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10000D050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v15 = *(v22 - 8);
  __chkstk_darwin(v22);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(a4 + 40);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a5;
  v18[6] = a6;
  aBlock[4] = sub_1000201C0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FD410;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v12 + 8))(v14, v11);
  (*(v15 + 8))(v17, v22);
}

uint64_t sub_10000D334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;

  sub_10000F500(sub_100020238, v10);
}

uint64_t sub_10000D3E4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t (*)(), void *))
{
  v22 = a3;
  v23 = a2;
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21[1] = "error from Cloudkit";
    (*(v9 + 104))(v11, enum case for DIPError.Code.internalError(_:), v8);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v16 = swift_allocError();
    (*(v13 + 16))(v17, v15, v12);

    sub_1000202C4(v16, v23, v22, a4, &unk_1007FD498, &unk_1007FD4C0, sub_1000222A4, sub_100020254);

    (*(v13 + 8))(v15, v12);
  }

  else
  {
    v19 = swift_allocObject();
    v20 = v22;
    v19[2] = v23;
    v19[3] = v20;
    v19[4] = a4;

    a5(sub_100020248, v19);
  }
}

uint64_t sub_10000D758(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v22 = a2;
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DIPError();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPRetryResult();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    (*(v6 + 104))(v8, enum case for DIPError.Code.internalError(_:), v5);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v17 = swift_allocError();
    (*(v10 + 16))(v18, v12, v9);
    v19 = v24;

    sub_1000202C4(v17, v22, v23, v19, &unk_1007FD4E8, &unk_1007FD510, sub_100022140, sub_100022264);

    (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(v14 + 104))(v16, enum case for DIPRetryResult.stop(_:), v13);
    v23(v16);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_10000DAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  __chkstk_darwin(v17);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a3;
  v13[4] = a4;
  aBlock[4] = sub_1000201B0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FD3C0;
  v14 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v9, v7);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_10000DDD0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPError();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return (a2)(0);
  }

  v17 = a3;
  v18 = a2;
  (*(v7 + 104))(v9, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v14 = swift_allocError();
  (*(v11 + 16))(v15, v13, v10);
  v18(v14);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10000E080(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v24 = a4;
  v25 = a3;
  v23 = type metadata accessor for DIPRetryResult();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = (v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_projectBox();
  if (a1)
  {
    v21[0] = "eration, retrying...";
    v21[1] = "error from Cloudkit";
    v22 = v5;
    (*(v9 + 104))(v11, enum case for DIPError.Code.internalError(_:), v8);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    v5 = v22;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_beginAccess();
    (*(v13 + 40))(v16, v15, v12);
  }

  swift_beginAccess();
  sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v17 = swift_allocError();
  (*(v13 + 16))(v18, v16, v12);
  *v7 = v17;
  v19 = v23;
  (*(v5 + 104))(v7, enum case for DIPRetryResult.retryWithError(_:), v23);
  v25(v7);
  return (*(v5 + 8))(v7, v19);
}

uint64_t sub_10000E410(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  __chkstk_darwin(v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + 40);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_100020010;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FD280;
  v14 = _Block_copy(aBlock);

  sub_10001F640(a1, a2);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_10000E6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
  if (v10 == 7)
  {
    return sub_100011E74(9, a2, a3);
  }

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  if ((v10 - 1) >= 6)
  {
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a2;
    v18[4] = a3;
    sub_10001F640(a2, a3);

    sub_10001F640(a2, a3);

    sub_10000FE20(7u, 10, sub_100020028, v18);
  }

  else
  {
    sub_10001F640(a2, a3);

    defaultLogger()();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_100141FE4(*(a1 + 24), *(a1 + 32), &v20);
      _os_log_impl(&_mh_execute_header, v13, v14, "Container %{public}s is working, waiting for it to finish before deleting", v15, 0xCu);
      sub_10000BB78(v16);
    }

    (*(v7 + 8))(v9, v6);
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = sub_10002001C;
    v17[4] = v12;

    sub_100011E74(8, sub_10002004C, v17);
  }
}

uint64_t sub_10000EA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  sub_10001F640(a2, a3);
  sub_10000FE20(7u, 10, sub_100022260, v6);
}

uint64_t sub_10000EAB8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = type metadata accessor for DIPError.Code();
  v47 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPError();
  result = __chkstk_darwin(v11);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v43 = v13;
    v44 = result;
    v37[1] = a4;
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v16 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v38 = v16;
    v17 = *(v16 - 8);
    v46 = a1;
    v42 = v8;
    v18 = *(v17 + 72);
    v19 = *(v17 + 80);
    v45 = a3;
    v20 = (v19 + 32) & ~v19;
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1006BF740;
    v22 = *(v16 + 48);
    v41 = v10;
    v23 = v15;
    v24 = (v21 + v20 + v22);
    v25 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
    v26 = type metadata accessor for DIPError.PropertyKey();
    v27 = *(*(v26 - 8) + 104);
    (v27)(v21 + v20, v25, v26);
    v29 = *(a2 + 32);
    v39 = *(a2 + 24);
    v28 = v39;
    v24[3] = &type metadata for String;
    v24[4] = &protocol witness table for String;
    *v24 = v28;
    v24[1] = v29;
    v30 = v21 + v20 + v18 + *(v38 + 48);
    v27();
    LOBYTE(v27) = *(a2 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
    *(v30 + 24) = &type metadata for DIPCloudContainerState;
    *(v30 + 32) = sub_10001F584();
    *v30 = v27;

    swift_errorRetain();
    v40 = sub_10003C9C0(v21);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v48 = 0xD000000000000021;
    v49 = 0x80000001006FB5C0;
    v31._countAndFlagsBits = v39;
    v31._object = v29;
    String.append(_:)(v31);
    (*(v47 + 104))(v41, enum case for DIPError.Code.internalError(_:), v42);
    swift_errorRetain();
    v32 = v45;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    if (v32)
    {
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v33 = v44;
      v34 = swift_allocError();
      v35 = v43;
      (*(v43 + 16))(v36, v23, v33);
      v32(v34);

      return (*(v35 + 8))(v23, v33);
    }

    else
    {
      (*(v43 + 8))(v23, v44);
    }
  }

  else if (a3)
  {
    return (a3)(0);
  }

  return result;
}

uint64_t sub_10000EF94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v57 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPError.Code();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DIPError();
  v16 = __chkstk_darwin(v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v52 = v16;
    v53 = v17;
    v50 = v19;
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v56 = a3;
    v20 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v54 = v8;
    v21 = v20;
    v22 = *(v20 - 8);
    v49 = v12;
    v45 = *(v22 + 72);
    v46 = a1;
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1006BF740;
    v51 = v10;
    v25 = v24 + v23;
    v26 = v21;
    v27 = (v24 + v23 + *(v21 + 48));
    v28 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
    v29 = type metadata accessor for DIPError.PropertyKey();
    v47 = v11;
    v48 = v14;
    v30 = *(*(v29 - 8) + 104);
    v55 = a4;
    (v30)(v24 + v23, v28, v29);
    v32 = *(a2 + 24);
    v31 = *(a2 + 32);
    v27[3] = &type metadata for String;
    v27[4] = &protocol witness table for String;
    *v27 = v32;
    v27[1] = v31;
    v33 = v25 + v45 + *(v26 + 48);
    v30();
    v34 = *(a2 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
    *(v33 + 24) = &type metadata for DIPCloudContainerState;
    *(v33 + 32) = sub_10001F584();
    *v33 = v34;
    swift_errorRetain();

    sub_10003C9C0(v24);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v58 = 0;
    v59 = 0xE000000000000000;
    _StringGuts.grow(_:)(95);
    v35._countAndFlagsBits = 0xD00000000000001DLL;
    v35._object = 0x80000001006FB530;
    String.append(_:)(v35);
    v36._countAndFlagsBits = v32;
    v36._object = v31;
    String.append(_:)(v36);
    v37._countAndFlagsBits = 0xD000000000000040;
    v37._object = 0x80000001006FB550;
    String.append(_:)(v37);
    (*(v49 + 104))(v48, enum case for DIPError.Code.internalError(_:), v47);
    swift_errorRetain();
    v38 = v50;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v39 = v52;
    swift_allocError();
    v40 = v53;
    (*(v53 + 16))(v41, v38, v39);
    v42 = v51;
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v57 + 8))(v42, v54);
    (*(v40 + 8))(v38, v39);
    a3 = v56;
  }

  return a3(v16);
}

uint64_t sub_10000F500(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v37 - v12;
  result = __chkstk_darwin(v11);
  v16 = &v37 - v15;
  v17 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state;
  v18 = *(v3 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
  if (v18 <= 6)
  {
    if (v18 - 1 < 6)
    {
      defaultLogger()();

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = a2;
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38 = v23;
        *v22 = 136446210;
        *(v22 + 4) = sub_100141FE4(*(v3 + 24), *(v3 + 32), &v38);
        _os_log_impl(&_mh_execute_header, v19, v20, "Attaching to container %{public}s; setup is already in progress", v22, 0xCu);
        sub_10000BB78(v23);

        a2 = v21;
      }

      (*(v7 + 8))(v13, v6);
      v24 = 8;
      return sub_100011E74(v24, a1, a2);
    }

LABEL_11:
    defaultLogger()();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v37 = a2;
      v28 = v27;
      v29 = swift_slowAlloc();
      v38 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_100141FE4(*(v3 + 24), *(v3 + 32), &v38);
      _os_log_impl(&_mh_execute_header, v25, v26, "Attaching to container %{public}s; starting setup", v28, 0xCu);
      sub_10000BB78(v29);

      a2 = v37;
    }

    (*(v7 + 8))(v16, v6);
    v30 = *(v3 + v17);
    v31 = swift_allocObject();
    v31[2] = v3;
    v31[3] = a1;
    v31[4] = a2;

    sub_10001F640(a1, a2);
    sub_10000FE20(1u, v30, sub_100020004, v31);
  }

  if (v18 == 7)
  {
    defaultLogger()();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = a2;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38 = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_100141FE4(*(v3 + 24), *(v3 + 32), &v38);
      _os_log_impl(&_mh_execute_header, v32, v33, "Attached to container %{public}s; container deletion is in progress", v35, 0xCu);
      sub_10000BB78(v36);

      a2 = v34;
    }

    (*(v7 + 8))(v10, v6);
    v24 = 9;
    return sub_100011E74(v24, a1, a2);
  }

  if (v18 != 8)
  {
    goto LABEL_11;
  }

  if (a1)
  {
    return a1(0);
  }

  return result;
}

uint64_t sub_10000F998(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError();
  result = __chkstk_darwin(v12);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v45 = v14;
    v46 = result;
    v39[1] = a4;
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v17 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v18 = *(v17 - 8);
    v44 = v16;
    v42 = v9;
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1006BF740;
    v22 = v21 + v20;
    v23 = *(v17 + 48);
    v47 = a3;
    v41 = v11;
    v24 = (v21 + v20 + v23);
    v25 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
    v26 = type metadata accessor for DIPError.PropertyKey();
    v43 = a1;
    v27 = *(v26 - 8);
    v40 = v8;
    v28 = *(v27 + 104);
    (v28)(v22, v25, v26);
    v29 = *(a2 + 24);
    v30 = *(a2 + 32);
    v24[3] = &type metadata for String;
    v24[4] = &protocol witness table for String;
    *v24 = v29;
    v24[1] = v30;
    v31 = v22 + v19 + *(v17 + 48);
    v32 = v44;
    v28();
    v33 = *(a2 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
    *(v31 + 24) = &type metadata for DIPCloudContainerState;
    *(v31 + 32) = sub_10001F584();
    *v31 = v33;
    v34 = v47;

    swift_errorRetain();
    sub_10003C9C0(v21);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v42 + 104))(v41, enum case for DIPError.Code.internalError(_:), v40);
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    if (v34)
    {
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v35 = v46;
      v36 = swift_allocError();
      v37 = v45;
      (*(v45 + 16))(v38, v32, v35);
      v34(v36);

      return (*(v37 + 8))(v32, v35);
    }

    else
    {
      (*(v45 + 8))(v32, v46);
    }
  }

  else if (a3)
  {
    return (a3)(0);
  }

  return result;
}

void sub_10000FE20(unsigned __int8 a1, int a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v130 = a4;
  v131 = a3;
  v8 = 0xEB0000000064657ALL;
  v9 = 0x696C616974696E69;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v128 = v10;
  v129 = v11;
  v12 = __chkstk_darwin(v10);
  v127 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v117 - v14;
  v16 = type metadata accessor for DIPError.Code();
  v125 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DIPError();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v22 = __chkstk_darwin(v21);
  v25 = &v117 - v24;
  v26 = *(v5 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
  v126 = v16;
  if (v26 > 4)
  {
    if (v26 <= 6)
    {
      v27 = a1;
      if (v26 == 5)
      {
        v29 = 0x80000001006F8940;
        v28 = 0xD000000000000010;
      }

      else
      {
        v29 = 0x80000001006F8960;
        v28 = 0xD000000000000018;
      }
    }

    else
    {
      v27 = a1;
      if (v26 == 7)
      {
        v28 = 0x6F5A6574656C6564;
        v29 = 0xEB0000000073656ELL;
      }

      else if (v26 == 8)
      {
        v28 = 0x6465686361747461;
        v29 = 0xE800000000000000;
      }

      else
      {
        v29 = 0xE800000000000000;
        v28 = 0x6465686361746564;
      }
    }
  }

  else if (v26 <= 1)
  {
    v28 = 0x696C616974696E69;
    v29 = 0xEB0000000064657ALL;
    v27 = a1;
    if (v26)
    {
      v28 = 0x7465536E69676562;
      v29 = 0xEA00000000007075;
    }
  }

  else
  {
    v27 = a1;
    if (v26 == 2)
    {
      v29 = 0x80000001006F88F0;
      v28 = 0xD000000000000011;
    }

    else if (v26 == 3)
    {
      v28 = 0x7465467075746573;
      v29 = 0xEF73656E6F5A6863;
    }

    else
    {
      v28 = 0xD000000000000017;
      v29 = 0x80000001006F8920;
    }
  }

  if (v27 > 4u)
  {
    if (v27 <= 6u)
    {
      if (v27 == 5)
      {
        v8 = 0x80000001006F8940;
        if (v28 != 0xD000000000000010)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v8 = 0x80000001006F8960;
        if (v28 != 0xD000000000000018)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_44;
    }

    if (v27 == 7)
    {
      v8 = 0xEB0000000073656ELL;
      if (v28 != 0x6F5A6574656C6564)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    if (v27 == 8)
    {
      v8 = 0xE800000000000000;
      if (v28 != 0x6465686361747461)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    v8 = 0xE800000000000000;
    v9 = 0x6465686361746564;
    goto LABEL_43;
  }

  if (v27 <= 1u)
  {
    if (v27)
    {
      v8 = 0xEA00000000007075;
      if (v28 != 0x7465536E69676562)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

LABEL_43:
    if (v28 != v9)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  if (v27 == 2)
  {
    v8 = 0x80000001006F88F0;
    if (v28 != 0xD000000000000011)
    {
      goto LABEL_47;
    }
  }

  else if (v27 == 3)
  {
    v8 = 0xEF73656E6F5A6863;
    if (v28 != 0x7465467075746573)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v8 = 0x80000001006F8920;
    if (v28 != 0xD000000000000017)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v29 == v8)
  {

    goto LABEL_48;
  }

LABEL_47:
  v122 = v22;
  v123 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state;
  v121 = v23;
  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
LABEL_48:
    if (v131)
    {
      v131(0);
    }

    return;
  }

  v119 = v18;
  v120 = v20;
  if (a2 != 10)
  {
    v31 = sub_10000BE94(*(v5 + v123));
    v33 = v32;
    if (v31 == sub_10000BE94(a2) && v33 == v34)
    {
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v35 & 1) == 0)
      {
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v85 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
        v127 = v85;
        v86 = *(v85 - 8);
        v129 = *(v86 + 72);
        v87 = (*(v86 + 80) + 32) & ~*(v86 + 80);
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_1006BF740;
        v89 = (v88 + v87 + *(v85 + 48));
        LODWORD(v128) = enum case for DIPError.PropertyKey.cloudContainerName(_:);
        v90 = type metadata accessor for DIPError.PropertyKey();
        v91 = *(*(v90 - 8) + 104);
        (v91)(v88 + v87, v128, v90);
        v93 = *(v5 + 32);
        v128 = *(v5 + 24);
        v92 = v128;
        LODWORD(v121) = a2;
        v118 = v93;
        v89[3] = &type metadata for String;
        v89[4] = &protocol witness table for String;
        *v89 = v92;
        v89[1] = v93;
        v94 = v88 + v87 + v129 + *(v127 + 12);
        v91();
        *(v94 + 24) = &type metadata for DIPCloudContainerState;
        *(v94 + 32) = sub_10001F584();
        v95 = v121;
        *v94 = v121;
        v96 = v118;

        v129 = sub_10003C9C0(v88);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        aBlock = 0;
        v133 = 0xE000000000000000;
        _StringGuts.grow(_:)(75);
        v97._countAndFlagsBits = 0xD00000000000001CLL;
        v97._object = 0x80000001006FB3C0;
        String.append(_:)(v97);
        v98._countAndFlagsBits = sub_10000BE94(a1);
        String.append(_:)(v98);
        v99 = v120;

        v100._countAndFlagsBits = 0x746E6F63206E6920;
        v100._object = 0xEE002072656E6961;
        String.append(_:)(v100);
        v101._countAndFlagsBits = v128;
        v101._object = v96;
        String.append(_:)(v101);
        v102._countAndFlagsBits = 0x676E696D6F63203BLL;
        v102._object = 0xEE00206D6F726620;
        String.append(_:)(v102);
        v103._countAndFlagsBits = sub_10000BE94(*(v5 + v123));
        String.append(_:)(v103);

        v104._countAndFlagsBits = 0x746365707865202CLL;
        v104._object = 0xEB00000000206465;
        String.append(_:)(v104);
        v105._countAndFlagsBits = sub_10000BE94(v95);
        String.append(_:)(v105);

        (*(v125 + 104))(v119, enum case for DIPError.Code.cloudContainerInvalidStateTransition(_:), v126);
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        v106 = v131;
        if (v131)
        {
          sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          v107 = v122;
          v108 = swift_allocError();
          (*(v99 + 16))(v109, v25, v107);
          v106(v108);
        }

        (*(v99 + 8))(v25, v122);
        return;
      }
    }
  }

  defaultLogger()();

  v124 = v5;
  v36 = Logger.logObject.getter();
  v37 = v124;
  v38 = v36;
  v39 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    aBlock = v118;
    *v40 = 136446722;
    *(v40 + 4) = sub_100141FE4(*(v124 + 24), *(v124 + 32), &aBlock);
    *(v40 + 12) = 2080;
    v41 = a1;
    v42 = sub_10000BE94(a1);
    v44 = sub_100141FE4(v42, v43, &aBlock);

    *(v40 + 14) = v44;
    *(v40 + 22) = 2080;
    v45 = v130;
    v46 = v131;
    v47 = v123;
    v48 = sub_10000BE94(*(v124 + v123));
    v50 = sub_100141FE4(v48, v49, &aBlock);
    v51 = v45;
    v52 = v46;

    *(v40 + 24) = v50;
    _os_log_impl(&_mh_execute_header, v38, v39, "Cloud container %{public}s moving to state %s from state %s", v40, 0x20u);
    swift_arrayDestroy();

    v37 = v124;

    v53 = v128;
    v54 = *(v129 + 8);
    v54(v15, v128);
  }

  else
  {

    v53 = v128;
    v54 = *(v129 + 8);
    v54(v15, v128);
    v41 = a1;
    v51 = v130;
    v52 = v131;
    v47 = v123;
  }

  v55 = v127;
  *(v37 + v47) = v41;
  if (v41 > 4u)
  {
    if (v41 <= 6u)
    {
      if (v41 == 5)
      {
        sub_1000122BC(5);
        v84 = swift_allocObject();
        v84[2] = v37;
        v84[3] = v52;
        v84[4] = v51;

        sub_10001F640(v52, v51);
        sub_100015F84(sub_10001FED8, v84);
      }

      else
      {
        sub_1000122BC(6);
        v116 = swift_allocObject();
        v116[2] = v37;
        v116[3] = v52;
        v116[4] = v51;

        sub_10001F640(v52, v51);
        sub_100017DA0(sub_10001FEAC, v116);
      }

      goto LABEL_85;
    }

    if (v41 == 7)
    {
      sub_1000122BC(7);
      v114 = swift_allocObject();
      v114[2] = v37;
      v114[3] = v52;
      v114[4] = v51;

      sub_10001F640(v52, v51);
      sub_10001A074(sub_10001FEA0, v114);
LABEL_85:

      return;
    }

    if (v41 == 8)
    {
      defaultLogger()();

      v57 = Logger.logObject.getter();
      v58 = v124;
      v59 = v57;
      v60 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        aBlock = v62;
        *v61 = 136446210;
        *(v61 + 4) = sub_100141FE4(*(v58 + 24), *(v58 + 32), &aBlock);
        _os_log_impl(&_mh_execute_header, v59, v60, "Container %{public}s entered attached state", v61, 0xCu);
        sub_10000BB78(v62);
      }

      v54(v55, v53);
      if (v52)
      {
        v52(0);
      }

      sub_1000122BC(8);
    }
  }

  else
  {
    if (v41 > 1u)
    {
      if (v41 == 2)
      {
        sub_1000122BC(2);
        v110 = swift_allocObject();
        v110[2] = v37;
        v110[3] = v52;
        v110[4] = v51;
        v111 = *(v37 + 16);
        v112 = swift_allocObject();
        v112[2] = v37;
        v112[3] = sub_10001FF5C;
        v112[4] = v110;
        v136 = sub_10001FF88;
        v137 = v112;
        aBlock = _NSConcreteStackBlock;
        v133 = 1107296256;
        v134 = sub_10001335C;
        v135 = &unk_1007FD1B8;
        v113 = _Block_copy(&aBlock);
        swift_retain_n();
        sub_10001F640(v52, v51);

        [v111 accountInfoWithCompletionHandler:v113];
        _Block_release(v113);
      }

      else if (v41 == 3)
      {
        sub_1000122BC(3);
        v56 = swift_allocObject();
        v56[2] = v37;
        v56[3] = v52;
        v56[4] = v51;

        sub_10001F640(v52, v51);
        sub_1000133E8(sub_10001FF30, v56);
      }

      else
      {
        sub_1000122BC(4);
        v115 = swift_allocObject();
        v115[2] = v37;
        v115[3] = v52;
        v115[4] = v51;

        sub_10001F640(v52, v51);
        sub_100014A54(sub_10001FF04, v115);
      }

      goto LABEL_85;
    }

    if (v41)
    {
      sub_10001DF3C();
      sub_10001E28C();
      sub_10001E440();
      sub_1000122BC(1);
      sub_10000FE20(2u, 1, v52, v51);
    }

    else
    {
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v63 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
      v64 = *(*(v63 - 8) + 72);
      v65 = v37;
      v66 = (*(*(v63 - 8) + 80) + 32) & ~*(*(v63 - 8) + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1006BF740;
      v68 = (v67 + v66 + *(v63 + 48));
      v69 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
      v70 = type metadata accessor for DIPError.PropertyKey();
      v71 = *(*(v70 - 8) + 104);
      (v71)(v67 + v66, v69, v70);
      v73 = *(v65 + 24);
      v72 = *(v65 + 32);
      v68[3] = &type metadata for String;
      v68[4] = &protocol witness table for String;
      *v68 = v73;
      v68[1] = v72;
      v74 = v131;
      v75 = v67 + v66 + v64 + *(v63 + 48);
      v71();
      *(v75 + 24) = &type metadata for DIPCloudContainerState;
      *(v75 + 32) = sub_10001F584();
      *v75 = 0;

      sub_10003C9C0(v67);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      aBlock = 0;
      v133 = 0xE000000000000000;
      _StringGuts.grow(_:)(82);
      v76._countAndFlagsBits = 0xD000000000000039;
      v76._object = 0x80000001006FB340;
      String.append(_:)(v76);
      v77._countAndFlagsBits = v73;
      v77._object = v72;
      String.append(_:)(v77);
      v78._object = 0x80000001006FB380;
      v78._countAndFlagsBits = 0xD000000000000017;
      String.append(_:)(v78);
      (*(v125 + 104))(v119, enum case for DIPError.Code.badLogic(_:), v126);
      v79 = v121;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v80 = v120;
      if (v74)
      {
        sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        v81 = v122;
        v82 = swift_allocError();
        (*(v80 + 16))(v83, v79, v81);
        v74(v82);
      }

      (*(v80 + 8))(v79, v122);
    }
  }
}

uint64_t sub_100011188(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, unsigned __int8 a5, int a6, uint64_t a7)
{
  v12 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v12);
  if (!a1)
  {
    return sub_10000FE20(a5, a6, a3, a4);
  }

  (*(v14 + 104))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.internalError(_:));
  swift_errorRetain();
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v15 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100011754(v15, a3, a4);
}

uint64_t sub_10001138C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v7);
  if (!a1)
  {
    return sub_100011580(a3);
  }

  (*(v9 + 104))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.internalError(_:));
  swift_errorRetain();
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v10 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100011754(v10, a3, a4);
}

uint64_t sub_100011580(uint64_t (*a1)(void))
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_100141FE4(*(v2 + 24), *(v2 + 32), &v14);
    _os_log_impl(&_mh_execute_header, v8, v9, "Container %{public}s has detached", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v5 + 8))(v7, v4);
  *(v2 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state) = 9;
  result = sub_10001DC7C();
  if (a1)
  {
    return a1(0);
  }

  return result;
}

uint64_t sub_100011754(void (*a1)(char *, char *, uint64_t), void (*a2)(uint64_t), uint64_t a3)
{
  v51 = a3;
  v62 = a2;
  v58 = a1;
  v4 = type metadata accessor for Logger();
  v60 = *(v4 - 8);
  v61 = v4;
  __chkstk_darwin(v4);
  v63 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPError.Code();
  v56 = *(v6 - 8);
  v57 = v6;
  __chkstk_darwin(v6);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DIPError();
  v53 = *(v64 - 8);
  v8 = __chkstk_darwin(v64);
  v54 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v52 = &v48 - v10;
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v11 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v12 = *(v11 - 8);
  v59 = *(v12 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006BF740;
  v15 = v14 + v13;
  v16 = (v14 + v13 + *(v11 + 48));
  v17 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
  v18 = type metadata accessor for DIPError.PropertyKey();
  v19 = *(*(v18 - 8) + 104);
  (v19)(v15, v17, v18);
  v20 = *(v3 + 24);
  v21 = *(v3 + 32);
  v16[3] = &type metadata for String;
  v16[4] = &protocol witness table for String;
  v50 = v20;
  *v16 = v20;
  v16[1] = v21;
  v22 = v15 + v59 + *(v11 + 48);
  v19();
  v23 = v52;
  v59 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state;
  LOBYTE(v19) = *(v3 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
  *(v22 + 24) = &type metadata for DIPCloudContainerState;
  *(v22 + 32) = sub_10001F584();
  *v22 = v19;
  v49 = v21;

  sub_10003C9C0(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  v24 = v54;
  swift_deallocClassInstance();
  (*(v56 + 104))(v55, enum case for DIPError.Code.internalError(_:), v57);
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  v25 = v53;
  v26 = v23;
  v58 = *(v53 + 16);
  v58(v24, v23, v64);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v57 = v3;

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v65 = v56;
    *v29 = 136446466;
    *(v29 + 4) = sub_100141FE4(v50, v49, &v65);
    *(v29 + 12) = 2080;
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v30 = v64;
    v31 = Error.localizedDescription.getter();
    v32 = v24;
    v33 = v26;
    v34 = v25;
    v36 = v35;
    v37 = *(v34 + 8);
    v37(v32, v30);
    v38 = sub_100141FE4(v31, v36, &v65);
    v26 = v33;

    *(v29 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "Container %{public}s entered error state due to error: %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v37 = *(v25 + 8);
    v37(v24, v64);
  }

  (*(v60 + 8))(v63, v61);
  *(v57 + v59) = 9;
  sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v39 = v64;
  v40 = swift_allocError();
  v41 = v58;
  v58(v42, v26, v39);
  sub_1000123D0(v40);

  sub_10001DC7C();
  v43 = v62;
  if (v62)
  {
    v44 = v64;
    v45 = swift_allocError();
    v41(v46, v26, v44);
    v43(v45);
  }

  return (v37)(v26, v64);
}

uint64_t sub_100011E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  result = __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return result;
  }

  v39 = v10;
  v40 = result;
  v13 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_waitingForState;
  swift_beginAccess();
  if (!*(*(v3 + v13) + 16))
  {

    goto LABEL_6;
  }

  sub_10001F640(a2, a3);

  sub_10003B078(a1);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_6:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v3 + v13);
    *(v3 + v13) = 0x8000000000000000;
    sub_10016C818(_swiftEmptyArrayStorage, a1, isUniquelyReferenced_nonNull_native);
    *(v3 + v13) = v41;
    swift_endAccess();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  swift_beginAccess();
  v38 = a3;

  v18 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v3 + v13);
  v19 = v41;
  *(v4 + v13) = 0x8000000000000000;
  v21 = sub_10003B078(a1);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    if (v19[3] >= v24)
    {
      if (v18)
      {
        if ((v20 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_10016F1FC();
        if ((v25 & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      sub_1001654FC(v24, v18);
      v26 = sub_10003B078(a1);
      if ((v25 & 1) != (v27 & 1))
      {
LABEL_26:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v21 = v26;
      if ((v25 & 1) == 0)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    v19 = *(v41[7] + 8 * v21);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_15;
    }
  }

  v19 = sub_1003C4FDC(0, v19[2] + 1, 1, v19);
LABEL_15:
  v29 = v19[2];
  v28 = v19[3];
  if (v29 >= v28 >> 1)
  {
    v19 = sub_1003C4FDC((v28 > 1), v29 + 1, 1, v19);
  }

  v19[2] = v29 + 1;
  v30 = &v19[2 * v29];
  v30[4] = sub_10001FE60;
  v30[5] = v17;
  v31 = v41;
  *(v41[7] + 8 * v21) = v19;
  *(v4 + v13) = v31;
  swift_endAccess();
  defaultLogger()();

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v34 = 136446466;
    v35 = sub_10000BE94(a1);
    v37 = sub_100141FE4(v35, v36, v42);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_100141FE4(*(v4 + 24), *(v4 + 32), v42);
    _os_log_impl(&_mh_execute_header, v32, v33, "Handler is waiting for state %{public}s in container %{public}s", v34, 0x16u);
    swift_arrayDestroy();

    sub_10001FE8C(a2, v38);
  }

  else
  {
    sub_10001FE8C(a2, v38);
  }

  return (*(v39 + 8))(v12, v40);
}

void sub_1000122BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_waitingForState;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_10003B078(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = v7 + 40;
        do
        {
          v10 = *(v9 - 8);
          v11[0] = 0;

          v10(v11);

          v9 += 16;
          --v8;
        }

        while (v8);
      }

      swift_beginAccess();
      sub_10014B8AC(0, a1);
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_1000123D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_waitingForState;
  swift_beginAccess();
  v20 = v3;
  v4 = *(v1 + v3);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(v1 + v3) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v21 = result;
  while (v10)
  {
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = *(*(result + 56) + ((v13 << 9) | (8 * v15)));
    v17 = *(v16 + 16);
    if (v17)
    {

      v18 = v16 + 40;
      do
      {
        v19 = *(v18 - 8);
        v22 = a1;

        v19(&v22);

        v18 += 16;
        --v17;
      }

      while (v17);

      result = v21;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      *(v1 + v20) = sub_10003D01C(_swiftEmptyArrayStorage);
    }

    v10 = *(v6 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100012538(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  __chkstk_darwin(v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a3 + 40);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a2;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a1;
  aBlock[4] = sub_10001FFEC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FD208;
  v17 = _Block_copy(aBlock);

  swift_errorRetain();
  sub_10001F640(a4, a5);
  v18 = a1;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v22 + 8))(v12, v10);
  (*(v13 + 8))(v15, v21);
}

void sub_100012828(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5)
{
  v77 = a5;
  v79 = a4;
  v86 = a3;
  v83 = a2;
  v6 = type metadata accessor for DIPError.PropertyKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DIPError.Code();
  v80 = *(v84 - 8);
  __chkstk_darwin(v84);
  v85 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPError();
  v81 = *(v10 - 8);
  v82 = v10;
  v11 = __chkstk_darwin(v10);
  v69 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v70 = &v67 - v14;
  v15 = __chkstk_darwin(v13);
  v71 = &v67 - v16;
  __chkstk_darwin(v15);
  v78 = &v67 - v17;
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v18 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v19 = *(*(v18 - 8) + 72);
  v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006BF740;
  v22 = (v21 + v20 + *(v18 + 48));
  v74 = v7;
  v23 = *(v7 + 104);
  (v23)(v21 + v20, enum case for DIPError.PropertyKey.cloudContainerName(_:), v6);
  v24 = *(a1 + 24);
  v25 = *(a1 + 32);
  v22[3] = &type metadata for String;
  v22[4] = &protocol witness table for String;
  v72 = v24;
  *v22 = v24;
  v22[1] = v25;
  v26 = v21 + v20 + v19 + *(v18 + 48);
  v75 = v6;
  v23();
  v76 = a1;
  LOBYTE(v19) = *(a1 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
  *(v26 + 24) = &type metadata for DIPCloudContainerState;
  *(v26 + 32) = sub_10001F584();
  *v26 = v19;
  v27 = v83;

  v28 = sub_10003C9C0(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v27)
  {
    (*(v80 + 104))(v85, enum case for DIPError.Code.internalError(_:), v84);
    swift_errorRetain();
    swift_errorRetain();
    v29 = v78;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v30 = v86;
    if (v86)
    {
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v31 = v82;
      v32 = swift_allocError();
      v33 = v81;
      (*(v81 + 16))(v34, v29, v31);
      v30(v32);

      (*(v33 + 8))(v29, v31);
    }

    else
    {
      (*(v81 + 8))(v29, v82);
    }

    return;
  }

  v35 = v76;
  v68 = v25;
  v36 = v73;
  v83 = v28;
  v37 = v74;
  v38 = v75;
  v39 = v84;
  v40 = v85;
  if (v77)
  {
    v78 = v77;
    v41 = [v78 accountStatus];
    if (v41 == 1)
    {
      if ((*(*v35 + 360))() & 1) == 0 || ([v78 supportsDeviceToDeviceEncryption])
      {

        if (v86)
        {
          v86(0);
        }

        v42 = v78;

        return;
      }

      (*(v80 + 104))(v40, enum case for DIPError.Code.cloudkitD2DEncryptionNotSupported(_:), v39);
      v61 = v69;
    }

    else
    {
      v51 = v41;
      (v23)(v36, enum case for DIPError.PropertyKey.appleAccountStatus(_:), v38);
      v52 = [v78 accountStatus];
      v90 = &type metadata for Int;
      v91 = &protocol witness table for Int;
      *&v89 = v52;
      sub_10001F358(&v89, v88);
      v53 = v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = v53;
      v55 = sub_10001F370(v88, v88[3]);
      sub_100658C24(*v55, v36, isUniquelyReferenced_nonNull_native, &v87);
      (*(v37 + 8))(v36, v38);
      sub_10000BB78(v88);
      *&v89 = 0;
      *(&v89 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(91);
      v56._countAndFlagsBits = 0xD00000000000001ALL;
      v56._object = 0x80000001006FB440;
      String.append(_:)(v56);
      v57._countAndFlagsBits = v72;
      v57._object = v68;
      String.append(_:)(v57);
      v58._countAndFlagsBits = 0xD00000000000002ALL;
      v58._object = 0x80000001006FB460;
      String.append(_:)(v58);
      v88[0] = v51;
      v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v59);

      v60._countAndFlagsBits = 0xD000000000000013;
      v60._object = 0x80000001006FB490;
      String.append(_:)(v60);
      (*(v80 + 104))(v40, enum case for DIPError.Code.invalidAppleAccount(_:), v39);
      v61 = v70;
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v62 = v86;
    if (v86)
    {
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v63 = v82;
      v64 = swift_allocError();
      v65 = v81;
      (*(v81 + 16))(v66, v61, v63);
      v62(v64);

      (*(v65 + 8))(v61, v63);
    }

    else
    {
      (*(v81 + 8))(v61, v82);
    }

    return;
  }

  *&v89 = 0;
  *(&v89 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  v43._countAndFlagsBits = 0xD00000000000003BLL;
  v43._object = 0x80000001006FB3E0;
  String.append(_:)(v43);
  v44._countAndFlagsBits = v72;
  v44._object = v68;
  String.append(_:)(v44);
  (*(v80 + 104))(v40, enum case for DIPError.Code.unexpectedDeviceState(_:), v39);
  v45 = v71;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  v46 = v86;
  v48 = v81;
  v47 = v82;
  if (v86)
  {
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v49 = swift_allocError();
    (*(v48 + 16))(v50, v45, v47);
    v46(v49);
  }

  (*(v48 + 8))(v45, v47);
}

void sub_10001335C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1000133E8(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v42 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v39 - v11;
  v13 = (*(*v2 + 312))(v10);
  v14 = *(v13 + 16);
  if (v14)
  {
    v39 = v6;
    v40 = a2;
    v41 = a1;
    v15 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_zoneIDsByName;
    swift_beginAccess();
    v16 = (v13 + 40);
    v17 = -v14;
    v18 = -1;
    while (v17 + v18 != -1)
    {
      if (++v18 >= *(v13 + 16))
      {
        __break(1u);
        return;
      }

      if (*(*(v2 + v15) + 16))
      {
        v19 = v16 + 2;
        v21 = *(v16 - 1);
        v20 = *v16;

        sub_10003ADCC(v21, v20);
        LOBYTE(v21) = v22;

        v16 = v19;
        if (v21)
        {
          continue;
        }
      }

      v23 = [objc_opt_self() fetchAllRecordZonesOperation];
      v24 = [objc_allocWithZone(CKOperationConfiguration) init];
      [v24 setQualityOfService:17];
      [v23 setConfiguration:v24];
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      v26 = swift_allocObject();
      *(v26 + 16) = v2;
      *(v26 + 24) = v25;

      CKFetchRecordZonesOperation.perRecordZoneResultBlock.setter();
      v27 = swift_allocObject();
      v27[2] = v2;
      v27[3] = v25;
      v29 = v40;
      v28 = v41;
      v27[4] = v41;
      v27[5] = v29;

      sub_10001F640(v28, v29);
      CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.setter();
      sub_10001B4FC(v23, 0);

      return;
    }

    defaultLogger()();

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v43 = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_100141FE4(*(v3 + 24), *(v3 + 32), &v43);
      _os_log_impl(&_mh_execute_header, v35, v36, "Not fetching zones for container %{public}s since all zones are cached.", v37, 0xCu);
      sub_10000BB78(v38);
    }

    (*(v42 + 8))(v9, v39);
    if (v41)
    {
      v41(0);
    }
  }

  else
  {

    defaultLogger()();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = v6;
      v34 = swift_slowAlloc();
      v44[0] = v34;
      *v32 = 136446210;
      *(v32 + 4) = sub_100141FE4(*(v3 + 24), *(v3 + 32), v44);
      _os_log_impl(&_mh_execute_header, v30, v31, "Not fetching zones for container %{public}s since no zones are required.", v32, 0xCu);
      sub_10000BB78(v34);

      (*(v42 + 8))(v12, v33);
      if (!a1)
      {
        return;
      }
    }

    else
    {

      (*(v42 + 8))(v12, v6);
      if (!a1)
      {
        return;
      }
    }

    a1(0);
  }
}

uint64_t sub_100013940(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a4 + 40);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v17 = a3 & 1;
  *(v16 + 24) = a3 & 1;
  *(v16 + 32) = a1;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  aBlock[4] = sub_10001FDF4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FD050;
  v18 = _Block_copy(aBlock);
  sub_10001F8C8(a2, v17);
  v19 = a1;

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v12, v10);
  (*(v13 + 8))(v15, v22);
}

uint64_t sub_100013C38(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    defaultLogger()();
    sub_10001F8C8(a1, 1);
    v13 = a3;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    sub_10001F8A4(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v37 = v17;
      v38 = swift_slowAlloc();
      v40[0] = v38;
      *v16 = 138412546;
      *(v16 + 4) = v13;
      *v17 = v13;
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v36 = v15;
      v39 = a5;
      v18 = v13;
      v19 = Error.localizedDescription.getter();
      v21 = sub_100141FE4(v19, v20, v40);
      a5 = v39;

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v14, v36, "fetchZones error received for zone ID %@: %s", v16, 0x16u);
      sub_10000BE18(v37, &unk_100833B50, &unk_1006D8FB0);

      sub_10000BB78(v38);
    }

    (*(v10 + 8))(v12, v9);
    swift_beginAccess();
    *(a5 + 16) = a1;
  }

  else
  {
    v23 = [a3 zoneName];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = [a3 zoneName];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    sub_10001F8D4(0, &qword_100833A40, CKRecordZoneID_ptr);
    if (v28 == static CKRecordZoneID.defaultZoneName.getter() && v30 == v31)
    {
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
        v34 = [a1 zoneID];
        swift_beginAccess();
        sub_10014B7B4(v34, v24, v26);
        return swift_endAccess();
      }
    }
  }
}

void sub_100014024(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v78 = a6;
  LODWORD(v77) = a5;
  v81 = type metadata accessor for DIPError();
  isa = v81[-1].isa;
  __chkstk_darwin(v81);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DIPError.Code();
  v17 = *(v79 - 1);
  __chkstk_darwin(v79);
  v80 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (a2)
    {
      (*(v17 + 104))(v80, enum case for DIPError.Code.internalError(_:), v79);
      swift_errorRetain();
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v19 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      a2(v19);
    }

    return;
  }

  v71 = a4;
  v74 = v16;
  v69 = v14;
  v70 = v13;
  v20 = v78;
  v72 = v12;
  v76 = a2;
  v73 = isa;
  v75 = a3;
  if (v77)
  {
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v21 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v22 = *(v21 - 8);
    v77 = *(v22 + 72);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1006BF740;
    v25 = v24 + v23;
    v26 = (v25 + *(v21 + 48));
    v27 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
    v28 = type metadata accessor for DIPError.PropertyKey();
    v29 = *(*(v28 - 8) + 104);
    (v29)(v25, v27, v28);
    v30 = *(v20 + 24);
    v31 = *(v20 + 32);
    v26[3] = &type metadata for String;
    v26[4] = &protocol witness table for String;
    *v26 = v30;
    v26[1] = v31;
    v32 = v25 + v77 + *(v21 + 48);
    v33 = v76;
    v29();
    v34 = *(v20 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
    *(v32 + 24) = &type metadata for DIPCloudContainerState;
    *(v32 + 32) = sub_10001F584();
    *v32 = v34;

    sub_10003C9C0(v24);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_10001CEBC(v71);
    (*(v17 + 104))(v80, enum case for DIPError.Code.internalError(_:), v79);
    v35 = v72;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v36 = v81;
    v37 = v73;
    if (v33)
    {
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v38 = swift_allocError();
      (*(v37 + 2))(v39, v35, v36);
      v33(v38);
    }

    (*(v37 + 1))(v35, v36);
    return;
  }

  v40 = v74;
  defaultLogger()();
  v41 = v20;

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  v44 = os_log_type_enabled(v42, v43);
  v45 = &qword_100833000;
  v46 = v76;
  if (v44)
  {
    LODWORD(v80) = v43;
    v47 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v83[0] = v79;
    *v47 = 136446466;
    *(v47 + 4) = sub_100141FE4(*(v41 + 24), *(v41 + 32), v83);
    *(v47 + 12) = 2112;
    v48 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_zoneIDsByName;
    swift_beginAccess();
    v49 = *(v41 + v48);
    v50 = *(v49 + 16);
    v81 = v42;
    if (v50)
    {
      v51 = sub_1003BA064(v50, 0);
      v52 = sub_1003BC304(v82, v51 + 4, v50, v49);
      v53 = v82[0];
      v73 = v82[4];

      sub_10001FA6C(v53);
      if (v52 != v50)
      {
LABEL_21:
        __break(1u);
        return;
      }

      v46 = v76;
      v54 = v70;
      v55 = v69;
      v40 = v74;
      v45 = &qword_100833000;
    }

    else
    {
      v46 = v76;
      v54 = v70;
      v55 = v69;
    }

    v56 = Array._bridgeToObjectiveC()().super.isa;

    *(v47 + 14) = v56;
    v57 = v77;
    *v77 = v56;
    v58 = v81;
    _os_log_impl(&_mh_execute_header, v81, v80, "Successfully fetched record zones for container %{public}s: %@", v47, 0x16u);
    sub_10000BE18(v57, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v79);

    (*(v55 + 8))(v40, v54);
  }

  else
  {

    (*(v69 + 8))(v40, v70);
  }

  v59 = v45[225];
  swift_beginAccess();
  v60 = *(v41 + v59);
  v61 = *(v60 + 16);
  if (v61)
  {
    v62 = sub_1003BA064(*(v60 + 16), 0);
    v63 = sub_1003BC304(v82, v62 + 4, v61, v60);
    v64 = v82[0];

    sub_10001FA6C(v64);
    if (v63 != v61)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  v65 = [objc_opt_self() standardUserDefaults];
  v66 = Array._bridgeToObjectiveC()().super.isa;

  (*(*v78 + 328))(v67);
  v68 = String._bridgeToObjectiveC()();

  [v65 setObject:v66 forKey:v68];

  if (v46)
  {
    v46(0);
  }
}

void sub_100014A54(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v50 - v12;
  v14 = (*(*v2 + 320))(v11);
  v15 = v14;
  if (*(v14 + 16))
  {
    v52 = v6;
    v53 = v10;
    v51 = v7;
    v54 = a2;
    v55 = a1;
    v16 = v14 + 64;
    v17 = 1 << *(v14 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v14 + 64);
    v58 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_subscriptionIDs;
    swift_beginAccess();
    v20 = 0;
    v21 = (v17 + 63) >> 6;
    v56 = v15;
    v57 = v3;
    while (v19)
    {
LABEL_12:
      v23 = (*(v15 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v19)))));
      v24 = v23[1];
      v25 = *(v3 + v58);
      if (!*(v25 + 16))
      {

        goto LABEL_22;
      }

      v26 = *v23;
      Hasher.init(_seed:)();

      String.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = -1 << *(v25 + 32);
      v29 = v27 & ~v28;
      if (((*(v25 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
LABEL_21:

        v3 = v57;
LABEL_22:

        v33 = [objc_opt_self() fetchAllSubscriptionsOperation];
        v34 = [objc_allocWithZone(CKOperationConfiguration) init];
        [v34 setQualityOfService:17];
        [v33 setConfiguration:v34];
        v35 = swift_allocObject();
        *(v35 + 16) = 0;
        v36 = swift_allocObject();
        *(v36 + 16) = v3;
        *(v36 + 24) = v35;

        CKFetchSubscriptionsOperation.perSubscriptionResultBlock.setter();
        v37 = swift_allocObject();
        v37[2] = v3;
        v37[3] = v35;
        v39 = v54;
        v38 = v55;
        v37[4] = v55;
        v37[5] = v39;

        sub_10001F640(v38, v39);
        CKFetchSubscriptionsOperation.fetchSubscriptionsResultBlock.setter();
        sub_10001B4FC(v33, 0);

        return;
      }

      v19 &= v19 - 1;
      v30 = ~v28;
      while (1)
      {
        v31 = (*(v25 + 48) + 16 * v29);
        v32 = *v31 == v26 && v31[1] == v24;
        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v29 = (v29 + 1) & v30;
        if (((*(v25 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v15 = v56;
      v3 = v57;
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return;
      }

      if (v22 >= v21)
      {
        break;
      }

      v19 = *(v16 + 8 * v22);
      ++v20;
      if (v19)
      {
        v20 = v22;
        goto LABEL_12;
      }
    }

    v45 = v53;
    defaultLogger()();

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v59[0] = v49;
      *v48 = 136446210;
      *(v48 + 4) = sub_100141FE4(*(v3 + 24), *(v3 + 32), v59);
      _os_log_impl(&_mh_execute_header, v46, v47, "Not fetching subscriptions for container %{public}s since all subscriptions are cached.", v48, 0xCu);
      sub_10000BB78(v49);
    }

    (*(v51 + 8))(v45, v52);
    if (v55)
    {
      v55(0);
    }
  }

  else
  {

    defaultLogger()();

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = v7;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v59[0] = v44;
      *v43 = 136446210;
      *(v43 + 4) = sub_100141FE4(*(v3 + 24), *(v3 + 32), v59);
      _os_log_impl(&_mh_execute_header, v40, v41, "Not fetching subscriptions for container %{public}s since no subscriptions are required.", v43, 0xCu);
      sub_10000BB78(v44);

      (*(v42 + 8))(v13, v6);
      if (!a1)
      {
        return;
      }
    }

    else
    {

      (*(v7 + 8))(v13, v6);
      if (!a1)
      {
        return;
      }
    }

    a1(0);
  }
}

uint64_t sub_1000150B4(void *a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    defaultLogger()();

    sub_10001F8C8(a1, 1);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    sub_10001F8A4(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v25 = a6;
      v18 = v17;
      v24 = swift_slowAlloc();
      v27[0] = v24;
      *v18 = 136315394;
      *(v18 + 4) = sub_100141FE4(a4, a5, v27);
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = sub_100141FE4(v19, v20, v27);

      *(v18 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "fetch subscriptions error received for subscription ID %s: %s", v18, 0x16u);
      swift_arrayDestroy();

      a6 = v25;
    }

    (*(v12 + 8))(v14, v11);
    swift_beginAccess();
    *(a6 + 16) = a1;
  }

  else
  {
    swift_beginAccess();

    sub_100151120(v26, a4, a5);
    swift_endAccess();
  }
}

uint64_t sub_10001535C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a8;
  v26 = a9;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v28 = *(v18 - 8);
  v29 = v18;
  __chkstk_darwin(v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a3 + 40);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  *(v21 + 32) = a6;
  *(v21 + 40) = a1;
  a2 &= 1u;
  *(v21 + 48) = a2;
  *(v21 + 56) = a3;
  aBlock[4] = v25;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = v26;
  v22 = _Block_copy(aBlock);

  sub_10001F640(a5, a6);
  sub_10001F6D4(a1, a2);

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v30 + 8))(v17, v15);
  (*(v28 + 8))(v20, v29);
}

void sub_100015654(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v69 = a6;
  LODWORD(v68) = a5;
  v72 = type metadata accessor for DIPError();
  v10 = *(v72 - 8);
  __chkstk_darwin(v72);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DIPError.Code();
  v17 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (a2)
    {
      (*(v17 + 104))(v71, enum case for DIPError.Code.internalError(_:), v70);
      swift_errorRetain();
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v19 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      a2(v19);
    }
  }

  else
  {
    v61 = v14;
    v62 = a4;
    v63 = v13;
    v64 = v12;
    v65 = v10;
    v66 = a3;
    v67 = a2;
    if (v68)
    {
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v20 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
      v21 = *(v20 - 8);
      v68 = *(v21 + 72);
      v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1006BF740;
      v24 = v23 + v22;
      v25 = (v23 + v22 + *(v20 + 48));
      v26 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
      v27 = type metadata accessor for DIPError.PropertyKey();
      v28 = *(*(v27 - 8) + 104);
      v29 = v69;
      (v28)(v24, v26, v27);
      v30 = *(v29 + 24);
      v31 = *(v29 + 32);
      v25[3] = &type metadata for String;
      v25[4] = &protocol witness table for String;
      *v25 = v30;
      v25[1] = v31;
      v32 = v24 + v68 + *(v20 + 48);
      v28();
      v33 = *(v29 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
      *(v32 + 24) = &type metadata for DIPCloudContainerState;
      *(v32 + 32) = sub_10001F584();
      *v32 = v33;

      sub_10003C9C0(v23);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_10001CEBC(v62);
      (*(v17 + 104))(v71, enum case for DIPError.Code.internalError(_:), v70);
      v34 = v64;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v35 = v67;
      v36 = v72;
      v37 = v65;
      if (v67)
      {
        sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        v38 = swift_allocError();
        (*(v37 + 16))(v39, v34, v36);
        v35(v38);
      }

      (*(v37 + 8))(v34, v36);
    }

    else
    {
      defaultLogger()();
      v40 = v69;

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *v43 = 136446466;
        *(v43 + 4) = sub_100141FE4(*(v40 + 24), *(v40 + 32), &v73);
        *(v43 + 12) = 2080;
        swift_beginAccess();

        v44 = Set.description.getter();
        v46 = v45;

        v47 = sub_100141FE4(v44, v46, &v73);

        *(v43 + 14) = v47;
        _os_log_impl(&_mh_execute_header, v41, v42, "Successfully fetched subscriptions for container self.containerName%{public}s: %s", v43, 0x16u);
        swift_arrayDestroy();
      }

      (*(v61 + 8))(v16, v63);
      v48 = [objc_opt_self() standardUserDefaults];
      v49 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_subscriptionIDs;
      swift_beginAccess();
      v50 = *(v40 + v49);
      v51 = *(v50 + 16);
      if (v51)
      {
        v72 = v48;
        v52 = sub_1003BA064(v51, 0);
        v53 = sub_1003BC45C(&v73, v52 + 4, v51, v50);
        v54 = v73;

        sub_10001FA6C(v54);
        if (v53 != v51)
        {
          __break(1u);
          return;
        }

        v55 = v67;
        v56 = v69;
        v48 = v72;
      }

      else
      {
        v56 = v40;
        v55 = v67;
      }

      isa = Array._bridgeToObjectiveC()().super.isa;

      (*(*v56 + 336))(v58);
      v59 = String._bridgeToObjectiveC()();

      [v48 setObject:isa forKey:v59];

      if (v55)
      {
        v55(0);
      }
    }
  }
}

uint64_t sub_100015F84(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v52 - v12;
  v14 = (*(*v2 + 312))(v11);
  v15 = *(v14 + 16);
  if (v15)
  {
    v57 = v10;
    v53 = v7;
    v54 = v6;
    v55 = a2;
    v59 = a1;
    v16 = swift_allocObject();
    v58 = v16;
    *(v16 + 16) = _swiftEmptyArrayStorage;
    v17 = (v16 + 16);
    v18 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_zoneIDsByName;
    v19 = v3;
    swift_beginAccess();
    v56 = v14;
    v20 = (v14 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v23 = *(*(v19 + v18) + 16);

      if (v23 && (, sub_10003ADCC(v21, v22), v25 = v24, , (v25 & 1) != 0))
      {
      }

      else
      {
        v26 = objc_allocWithZone(CKRecordZone);
        v27 = String._bridgeToObjectiveC()();

        [v26 initWithZoneName:v27];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v20 += 2;
      --v15;
    }

    while (v15);

    if (*v17 >> 62)
    {
      v28 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v28 = *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v59;
    v30 = v19;
    v31 = v57;
    if (v28)
    {
      v32 = [objc_allocWithZone(CKModifyRecordZonesOperation) init];
      v33 = v58;
      sub_10001F8D4(0, &qword_100833A80, CKRecordZone_ptr);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v32 setRecordZonesToSave:isa];

      v35 = [objc_allocWithZone(CKOperationConfiguration) init];
      [v35 setQualityOfService:17];
      [v32 setConfiguration:v35];
      v36 = swift_allocObject();
      *(v36 + 16) = _swiftEmptyArrayStorage;
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      v38 = swift_allocObject();
      v38[2] = v30;
      v38[3] = v36;
      v38[4] = v37;

      CKModifyRecordZonesOperation.perRecordZoneSaveBlock.setter();
      v39 = swift_allocObject();
      v39[2] = v30;
      v39[3] = v37;
      v40 = v55;
      v39[4] = v29;
      v39[5] = v40;
      v39[6] = v36;
      v39[7] = v33;

      sub_10001F640(v29, v40);

      CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.setter();
      sub_10001B4FC(v32, 0);
    }

    else
    {
      defaultLogger()();

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v60 = v51;
        *v50 = 136446210;
        *(v50 + 4) = sub_100141FE4(*(v30 + 24), *(v30 + 32), &v60);
        _os_log_impl(&_mh_execute_header, v48, v49, "No zones to create for container %{public}s; skipping zone creation", v50, 0xCu);
        sub_10000BB78(v51);
      }

      (*(v53 + 8))(v31, v54);
      if (v29)
      {
        v29(0);
      }
    }
  }

  else
  {

    defaultLogger()();

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = v6;
      v44 = swift_slowAlloc();
      v45 = v7;
      v46 = swift_slowAlloc();
      v61[0] = v46;
      *v44 = 136446210;
      *(v44 + 4) = sub_100141FE4(*(v3 + 24), *(v3 + 32), v61);
      _os_log_impl(&_mh_execute_header, v41, v42, "No zones required for container %{public}s; skipping zone creation", v44, 0xCu);
      sub_10000BB78(v46);

      result = (*(v45 + 8))(v13, v43);
      if (!a1)
      {
        return result;
      }
    }

    else
    {

      result = (*(v7 + 8))(v13, v6);
      if (!a1)
      {
        return result;
      }
    }

    return (a1)(0);
  }
}

uint64_t sub_100016658(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v24 = *(v15 - 8);
  v25 = v15;
  __chkstk_darwin(v15);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(a4 + 40);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  v19 = a3 & 1;
  *(v18 + 24) = a3 & 1;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = a1;
  *(v18 + 56) = a6;
  aBlock[4] = sub_10001FAD0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FCE70;
  v20 = _Block_copy(aBlock);
  sub_10001F8C8(a2, v19);

  v21 = a1;

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v26 + 8))(v14, v12);
  (*(v24 + 8))(v17, v25);
}

uint64_t sub_100016958(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    defaultLogger()();
    sub_10001F8C8(a1, 1);
    v15 = a5;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    sub_10001F8A4(a1, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v42 = v19;
      v43 = swift_slowAlloc();
      v46[0] = v43;
      *v18 = 138412546;
      *(v18 + 4) = v15;
      *v19 = v15;
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v44 = v11;
      v45 = a6;
      v20 = v15;
      v21 = Error.localizedDescription.getter();
      v23 = sub_100141FE4(v21, v22, v46);

      *(v18 + 14) = v23;
      a6 = v45;
      _os_log_impl(&_mh_execute_header, v16, v17, "createZones error received for zone ID %@: %s", v18, 0x16u);
      sub_10000BE18(v42, &unk_100833B50, &unk_1006D8FB0);

      sub_10000BB78(v43);

      (*(v12 + 8))(v14, v44);
    }

    else
    {

      (*(v12 + 8))(v14, v11);
    }

    swift_beginAccess();
    *(a6 + 16) = a1;
  }

  else
  {
    v24 = [a1 zoneID];
    v25 = [v24 zoneName];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = [a1 zoneID];
    swift_beginAccess();
    sub_10014B7B4(v29, v26, v28);
    swift_endAccess();
    v30 = [a1 zoneID];
    v31 = [v30 zoneName];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    swift_beginAccess();
    v35 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_1003C5110(0, *(v35 + 2) + 1, 1, v35);
      *(a4 + 16) = v35;
    }

    v38 = *(v35 + 2);
    v37 = *(v35 + 3);
    if (v38 >= v37 >> 1)
    {
      v35 = sub_1003C5110((v37 > 1), v38 + 1, 1, v35);
    }

    *(v35 + 2) = v38 + 1;
    v39 = &v35[16 * v38];
    *(v39 + 4) = v32;
    *(v39 + 5) = v34;
    *(a4 + 16) = v35;
    return swift_endAccess();
  }
}

uint64_t sub_100016D6C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a8;
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a3 + 40);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  *(v19 + 32) = a6;
  *(v19 + 40) = a3;
  *(v19 + 48) = a1;
  v20 = a2 & 1;
  *(v19 + 56) = a2 & 1;
  v21 = v26;
  *(v19 + 64) = a7;
  *(v19 + 72) = v21;
  aBlock[4] = sub_10001FA54;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FCE20;
  v22 = _Block_copy(aBlock);

  sub_10001F640(a5, a6);

  sub_10001F6D4(a1, v20);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  v24 = v27;
  v23 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v32 + 8))(v24, v23);
  (*(v30 + 8))(v18, v31);
}

void sub_100017094(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v94 = a8;
  v95 = a7;
  LODWORD(v97) = a6;
  v93 = a5;
  v96 = a4;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DIPError();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v82 - v20;
  v99 = type metadata accessor for DIPError.Code();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v100 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (a2)
    {
      (*(v98 + 104))(v100, enum case for DIPError.Code.internalError(_:), v99);
      swift_errorRetain();
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v23 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      a2(v23);
    }
  }

  else
  {
    v87 = v19;
    v85 = v21;
    v82 = v14;
    v83 = v12;
    v89 = v16;
    v84 = v11;
    v90 = v15;
    v91 = a3;
    v92 = a2;
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v24 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v88 = v24;
    v25 = *(*(v24 - 8) + 72);
    v26 = (*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1006BF740;
    v28 = v27 + v26;
    v29 = (v27 + v26 + *(v24 + 48));
    v30 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
    v31 = type metadata accessor for DIPError.PropertyKey();
    v32 = *(*(v31 - 8) + 104);
    (v32)(v28, v30, v31);
    v33 = v96;
    v34 = *(v96 + 24);
    v35 = *(v96 + 32);
    v29[3] = &type metadata for String;
    v29[4] = &protocol witness table for String;
    v86 = v34;
    *v29 = v34;
    v29[1] = v35;
    v36 = v28 + v25 + *(v88 + 48);
    v32();
    LOBYTE(v30) = *(v33 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
    *(v36 + 24) = &type metadata for DIPCloudContainerState;
    *(v36 + 32) = sub_10001F584();
    *v36 = v30;

    sub_10003C9C0(v27);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v97)
    {
      sub_10001CEBC(v93);
      (*(v98 + 104))(v100, enum case for DIPError.Code.internalError(_:), v99);
      v37 = v87;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v38 = v92;
      v39 = v90;
      v40 = v89;
      if (v92)
      {
        sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        v41 = swift_allocError();
        (*(v40 + 16))(v42, v37, v39);
        v38(v41);
      }

      (*(v40 + 8))(v37, v39);
    }

    else
    {
      v97 = v35;
      v43 = v33;
      v44 = v95;
      swift_beginAccess();
      v45 = *(*(v44 + 16) + 16);
      v46 = v94;
      swift_beginAccess();
      v47 = *(v46 + 16);
      v48 = v92;
      if (v47 >> 62)
      {
        v49 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v49 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v50 = v90;
      v51 = v89;
      if (v45 == v49)
      {

        v52 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_zoneIDsByName;
        swift_beginAccess();
        v53 = *(v33 + v52);
        v54 = *(v53 + 16);
        if (v54 && (v55 = sub_1003BA064(*(v53 + 16), 0), v56 = sub_1003BC304(&v101, v55 + 4, v54, v53), v57 = v101, , sub_10001FA6C(v57), v56 != v54))
        {
          __break(1u);
        }

        else
        {
          v69 = v83;
          v70 = [objc_opt_self() standardUserDefaults];
          isa = Array._bridgeToObjectiveC()().super.isa;

          (*(*v43 + 328))(v72);
          v73 = String._bridgeToObjectiveC()();

          [v70 setObject:isa forKey:v73];

          v74 = v82;
          defaultLogger()();

          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v105[0] = swift_slowAlloc();
            *v77 = 136446466;
            *(v77 + 4) = sub_100141FE4(v86, v97, v105);
            *(v77 + 12) = 2082;
            swift_beginAccess();

            v78 = Array.description.getter();
            v80 = v79;

            v81 = sub_100141FE4(v78, v80, v105);

            *(v77 + 14) = v81;
            _os_log_impl(&_mh_execute_header, v75, v76, "Created container %{public}s zones %{public}s", v77, 0x16u);
            swift_arrayDestroy();
          }

          (*(v69 + 8))(v74, v84);
          if (v92)
          {
            v92(0);
          }
        }
      }

      else
      {
        v101 = 0;
        v102 = 0xE000000000000000;
        _StringGuts.grow(_:)(69);
        v105[0] = v101;
        v105[1] = v102;
        v58._countAndFlagsBits = 0xD00000000000002ALL;
        v58._object = 0x80000001006FB240;
        String.append(_:)(v58);
        v59._countAndFlagsBits = v86;
        v59._object = v97;
        String.append(_:)(v59);
        v60._countAndFlagsBits = 0x746365707865203BLL;
        v60._object = 0xED0000203D206465;
        String.append(_:)(v60);
        swift_beginAccess();
        v61 = *(v46 + 16);
        if (v61 >> 62)
        {
          v62 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v104 = v62;
        v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v63);

        v64._countAndFlagsBits = 0x203D20746F67202CLL;
        v64._object = 0xE800000000000000;
        String.append(_:)(v64);
        swift_beginAccess();
        v103 = *(*(v44 + 16) + 16);
        v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v65);

        (*(v98 + 104))(v100, enum case for DIPError.Code.cloudkitResponseInconsistent(_:), v99);
        v66 = v85;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        if (v48)
        {
          sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          v67 = swift_allocError();
          (*(v51 + 16))(v68, v66, v50);
          v48(v67);
        }

        (*(v51 + 8))(v66, v50);
      }
    }
  }
}

uint64_t sub_100017DA0(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v112 = a2;
  v106 = type metadata accessor for DIPError.Code();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v6 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v111 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v110 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v101 - v15;
  v17 = (*(*v2 + 320))(v14);
  if (!*(v17 + 16))
  {

    defaultLogger()();

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = v3;
      v70 = v68;
      v121 = v68;
      *v67 = 136446210;
      *(v67 + 4) = sub_100141FE4(*(v69 + 24), *(v69 + 32), &v121);
      _os_log_impl(&_mh_execute_header, v65, v66, "No subscriptions required in container %{public}s; skipping subscription creation", v67, 0xCu);
      sub_10000BB78(v70);
    }

    result = (*(v111 + 8))(v16, v11);
    if (a1)
    {
      return (a1)(0);
    }

    return result;
  }

  v107 = v11;
  v101 = v6;
  v102 = v10;
  v103 = v8;
  v104 = v7;
  v109 = a1;
  v18 = swift_allocObject();
  v108 = v18;
  *(v18 + 16) = _swiftEmptyArrayStorage;
  v19 = (v18 + 16);
  v118 = v17;
  v22 = *(v17 + 64);
  v21 = v17 + 64;
  v20 = v22;
  v23 = 1 << *(v21 - 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v20;
  v26 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_zoneIDsByName;
  v116 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_subscriptionIDs;
  swift_beginAccess();
  v114 = v26;
  swift_beginAccess();
  v27 = 0;
  v28 = (v23 + 63) >> 6;
  v119 = v3;
  v115 = v19;
  v113 = v21;
  while (v25)
  {
    v29 = v118;
LABEL_13:
    v31 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v32 = (v27 << 10) | (16 * v31);
    v33 = (*(v29 + 48) + v32);
    v35 = *v33;
    v34 = v33[1];
    v36 = (*(v29 + 56) + v32);
    v37 = v36[1];
    v120 = *v36;
    v38 = *(v3 + v116);
    if (*(v38 + 16))
    {
      Hasher.init(_seed:)();

      v117 = v37;

      String.hash(into:)();
      v39 = Hasher._finalize()();
      v40 = -1 << *(v38 + 32);
      v41 = v39 & ~v40;
      if (((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
      {
LABEL_22:

        v3 = v119;
        v37 = v117;
        goto LABEL_24;
      }

      v42 = ~v40;
      while (1)
      {
        v43 = (*(v38 + 48) + 16 * v41);
        v44 = *v43 == v35 && v43[1] == v34;
        if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v41 = (v41 + 1) & v42;
        if (((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v3 = v119;
      v19 = v115;
    }

    else
    {

LABEL_24:
      v45 = *(v3 + v114);
      v46 = v120;
      if (!*(v45 + 16))
      {
        goto LABEL_38;
      }

      v47 = sub_10003ADCC(v46, v37);
      if ((v48 & 1) == 0)
      {

LABEL_38:

        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v72 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
        v73 = *(*(v72 - 8) + 72);
        v74 = *(*(v72 - 8) + 80);
        v117 = v37;
        v75 = (v74 + 32) & ~v74;
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_1006BF740;
        v77 = v76 + v75;
        v78 = (v76 + v75 + *(v72 + 48));
        v79 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
        v80 = type metadata accessor for DIPError.PropertyKey();
        v81 = *(*(v80 - 8) + 104);
        (v81)(v77, v79, v80);
        v83 = *(v3 + 32);
        v119 = *(v3 + 24);
        v82 = v119;
        v78[3] = &type metadata for String;
        v78[4] = &protocol witness table for String;
        *v78 = v82;
        v78[1] = v83;
        v84 = v77 + v73 + *(v72 + 48);
        v81();
        LOBYTE(v78) = *(v3 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
        *(v84 + 24) = &type metadata for DIPCloudContainerState;
        *(v84 + 32) = sub_10001F584();
        *v84 = v78;

        sub_10003C9C0(v76);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v121 = 0;
        v122 = 0xE000000000000000;
        _StringGuts.grow(_:)(44);

        v121 = 0xD00000000000001ALL;
        v122 = 0x80000001006FB150;
        v85._countAndFlagsBits = v120;
        v85._object = v117;
        String.append(_:)(v85);

        v86._countAndFlagsBits = 0x746E6F63206E6920;
        v86._object = 0xEE002072656E6961;
        String.append(_:)(v86);
        v87._countAndFlagsBits = v119;
        v87._object = v83;
        String.append(_:)(v87);
        (*(v105 + 104))(v101, enum case for DIPError.Code.unexpectedDaemonState(_:), v106);
        v88 = v102;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        v89 = v109;
        if (v109)
        {
          sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          v90 = v104;
          v91 = swift_allocError();
          v92 = v103;
          (*(v103 + 16))(v93, v88, v90);
          v89(v91);

          (*(v92 + 8))(v88, v90);
        }

        else
        {
          (*(v103 + 8))(v88, v104);
        }
      }

      v49 = v47;

      v50 = *(*(v45 + 56) + 8 * v49);

      sub_10001F8D4(0, &qword_100833A70, CKRecordZoneSubscription_ptr);
      v51 = v50;
      v52._countAndFlagsBits = v35;
      v52._object = v34;
      CKRecordZoneSubscription.init(zoneID:subscriptionID:)(v51, v52);
      v19 = v115;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v3 = v119;
      v21 = v113;
    }
  }

  v29 = v118;
  while (1)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_42:
      v94 = _CocoaArrayWrapper.endIndex.getter();
      v53 = v109;
      v54 = v112;
      v55 = v107;
      v56 = v110;
      if (v94)
      {
        goto LABEL_32;
      }

      goto LABEL_43;
    }

    if (v30 >= v28)
    {
      break;
    }

    v25 = *(v21 + 8 * v30);
    ++v27;
    if (v25)
    {
      v27 = v30;
      goto LABEL_13;
    }
  }

  if (*v19 >> 62)
  {
    goto LABEL_42;
  }

  v53 = v109;
  v54 = v112;
  v55 = v107;
  v56 = v110;
  if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    v57 = [objc_allocWithZone(CKModifySubscriptionsOperation) init];
    v58 = v3;
    v59 = v108;
    sub_10001F8D4(0, &qword_100833A78, CKSubscription_ptr);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v57 setSubscriptionsToSave:isa];

    v61 = [objc_allocWithZone(CKOperationConfiguration) init];
    [v61 setQualityOfService:17];
    [v57 setConfiguration:v61];
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    v63 = swift_allocObject();
    *(v63 + 16) = v58;
    *(v63 + 24) = v62;

    CKModifySubscriptionsOperation.perSubscriptionSaveBlock.setter();
    v64 = swift_allocObject();
    v64[2] = v58;
    v64[3] = v62;
    v64[4] = v53;
    v64[5] = v54;
    v64[6] = v59;

    sub_10001F640(v53, v54);

    CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.setter();
    sub_10001B4FC(v57, 0);
  }

LABEL_43:
  defaultLogger()();

  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v99 = v3;
    v100 = v98;
    v121 = v98;
    *v97 = 136446210;
    *(v97 + 4) = sub_100141FE4(*(v99 + 24), *(v99 + 32), &v121);
    _os_log_impl(&_mh_execute_header, v95, v96, "No subscriptions to create in container %{public}s; skipping subscription creation", v97, 0xCu);
    sub_10000BB78(v100);
  }

  (*(v111 + 8))(v56, v55);
  if (v53)
  {
    v53(0);
  }
}

uint64_t sub_100018B38(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a8;
  v26 = a9;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v28 = *(v18 - 8);
  v29 = v18;
  __chkstk_darwin(v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a5 + 40);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  a4 &= 1u;
  *(v21 + 24) = a4;
  *(v21 + 32) = a5;
  *(v21 + 40) = a1;
  *(v21 + 48) = a2;
  *(v21 + 56) = a6;
  aBlock[4] = v25;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = v26;
  v22 = _Block_copy(aBlock);
  sub_10001F8C8(a3, a4);

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v30 + 8))(v17, v15);
  (*(v28 + 8))(v20, v29);
}

uint64_t sub_100018E2C(void *a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    defaultLogger()();
    sub_10001F8C8(a1, 1);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    sub_10001F8A4(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = a4;
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28[0] = v26;
      *v18 = 136315394;
      *(v18 + 4) = sub_100141FE4(v17, a5, v28);
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = sub_100141FE4(v19, v20, v28);

      *(v18 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "createSubscriptions error received for subscription ID %s: %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    (*(v12 + 8))(v14, v11);
    swift_beginAccess();
    *(a6 + 16) = a1;
  }

  else
  {
    v23 = CKSubscription.subscriptionID.getter();
    v25 = v24;
    swift_beginAccess();
    sub_100151120(&v27, v23, v25);
    swift_endAccess();
  }
}

uint64_t sub_1000190D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v27 = *(v15 - 8);
  v28 = v15;
  __chkstk_darwin(v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a3 + 40);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  *(v18 + 32) = a6;
  *(v18 + 40) = a3;
  *(v18 + 48) = a1;
  v19 = a2 & 1;
  *(v18 + 56) = a2 & 1;
  *(v18 + 64) = v24;
  aBlock[4] = sub_10001F88C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FCD08;
  v20 = _Block_copy(aBlock);

  sub_10001F640(a5, a6);

  sub_10001F6D4(a1, v19);

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  v21 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v29 + 8))(v14, v21);
  (*(v27 + 8))(v17, v28);
}

void sub_1000193F0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v93 = a7;
  v94 = a6;
  v92 = a5;
  v98 = a4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DIPError();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v81 - v19;
  v21 = type metadata accessor for DIPError.Code();
  v95 = *(v21 - 8);
  v96 = v21;
  __chkstk_darwin(v21);
  v97 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (a2)
    {
      (*(v95 + 104))(v97, enum case for DIPError.Code.internalError(_:), v96);
      swift_errorRetain();
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v23 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      a2(v23);
    }
  }

  else
  {
    v87 = v18;
    v85 = v20;
    v82 = v13;
    v83 = v11;
    v84 = v10;
    v88 = v15;
    v91 = v14;
    v89 = a3;
    v90 = a2;
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v24 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v25 = *(*(v24 - 8) + 72);
    v26 = (*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1006BF740;
    v28 = v27 + v26;
    v29 = (v28 + *(v24 + 48));
    v30 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
    v31 = type metadata accessor for DIPError.PropertyKey();
    v32 = *(*(v31 - 8) + 104);
    (v32)(v28, v30, v31);
    v33 = *(v98 + 24);
    v34 = *(v98 + 32);
    v29[3] = &type metadata for String;
    v29[4] = &protocol witness table for String;
    v86 = v33;
    *v29 = v33;
    v29[1] = v34;
    v35 = v98;
    v36 = v28 + v25 + *(v24 + 48);
    v32();
    v37 = *(v35 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
    *(v36 + 24) = &type metadata for DIPCloudContainerState;
    *(v36 + 32) = sub_10001F584();
    *v36 = v37;

    sub_10003C9C0(v27);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v94)
    {
      sub_10001CEBC(v92);
      (*(v95 + 104))(v97, enum case for DIPError.Code.internalError(_:), v96);
      v38 = v87;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v39 = v90;
      v40 = v91;
      v41 = v88;
      if (v90)
      {
        sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        v42 = swift_allocError();
        (*(v41 + 16))(v43, v38, v40);
        v39(v42);
      }

      (*(v41 + 8))(v38, v40);
    }

    else
    {
      v44 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_subscriptionIDs;
      swift_beginAccess();
      v45 = *(*(v35 + v44) + 16);
      v46 = v93;
      swift_beginAccess();
      v47 = *(v46 + 16);
      if (v47 >> 62)
      {
        v48 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v49 = v91;
      if (v45 == v48)
      {
        v97 = v34;

        v50 = [objc_opt_self() standardUserDefaults];
        v51 = v50;
        v52 = *(v35 + v44);
        v53 = *(v52 + 16);
        if (v53)
        {
          v96 = v50;
          v54 = sub_1003BA064(v53, 0);
          v55 = sub_1003BC45C(&v99, v54 + 4, v53, v52);
          v56 = v99;

          sub_10001FA6C(v56);
          if (v55 != v53)
          {
            __break(1u);
            return;
          }

          v35 = v98;
          v51 = v96;
        }

        isa = Array._bridgeToObjectiveC()().super.isa;

        (*(*v35 + 336))(v71);
        v72 = String._bridgeToObjectiveC()();

        [v51 setObject:isa forKey:v72];

        v73 = v82;
        defaultLogger()();

        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          *v76 = 136446466;
          *(v76 + 4) = sub_100141FE4(v86, v97, &v99);
          *(v76 + 12) = 2080;

          v77 = Set.description.getter();
          v79 = v78;

          v80 = sub_100141FE4(v77, v79, &v99);

          *(v76 + 14) = v80;
          _os_log_impl(&_mh_execute_header, v74, v75, "Created container %{public}s subscriptions %s", v76, 0x16u);
          swift_arrayDestroy();
        }

        (*(v83 + 8))(v73, v84);
        if (v90)
        {
          v90(0);
        }
      }

      else
      {
        v99 = 0;
        v100 = 0xE000000000000000;
        _StringGuts.grow(_:)(75);
        v102 = v99;
        v103 = v100;
        v57._countAndFlagsBits = 0xD000000000000030;
        v57._object = 0x80000001006FB1C0;
        String.append(_:)(v57);
        v58._countAndFlagsBits = v86;
        v58._object = v34;
        String.append(_:)(v58);
        v59._countAndFlagsBits = 0x746365707865203BLL;
        v59._object = 0xED0000203D206465;
        String.append(_:)(v59);
        swift_beginAccess();
        v60 = *(v46 + 16);
        if (v60 >> 62)
        {
          v61 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v101 = v61;
        v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v62);

        v63._countAndFlagsBits = 0x203D20746F67202CLL;
        v63._object = 0xE800000000000000;
        String.append(_:)(v63);
        v101 = *(*(v35 + v44) + 16);
        v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v64);

        (*(v95 + 104))(v97, enum case for DIPError.Code.cloudkitResponseInconsistent(_:), v96);
        v65 = v85;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        v66 = v90;
        v67 = v88;
        if (v90)
        {
          sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          v68 = swift_allocError();
          (*(v67 + 16))(v69, v65, v49);
          v66(v68);
        }

        (*(v67 + 8))(v65, v49);
      }
    }
  }
}

uint64_t sub_10001A074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10001DD68();
  v6 = (*(*v2 + 312))();
  v7 = *(v6 + 16);
  if (v7)
  {
    v24 = a1;
    v25 = a2;
    specialized ContiguousArray.reserveCapacity(_:)();
    sub_10001F8D4(0, &qword_100833A40, CKRecordZoneID_ptr);
    v8 = (v6 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14._countAndFlagsBits = v9;
      v14._object = v10;
      v15._countAndFlagsBits = v11;
      v15._object = v13;
      CKRecordZoneID.init(zoneName:ownerName:)(v14, v15);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 += 2;
      --v7;
    }

    while (v7);

    a2 = v25;
    a1 = v24;
  }

  else
  {
  }

  v16 = [objc_allocWithZone(CKModifyRecordZonesOperation) init];
  sub_10001F8D4(0, &qword_100833A40, CKRecordZoneID_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 setRecordZoneIDsToDelete:isa];

  v18 = [objc_allocWithZone(CKOperationConfiguration) init];
  [v18 setQualityOfService:17];
  [v16 setConfiguration:v18];
  v19 = swift_allocObject();
  *(v19 + 16) = _swiftEmptyArrayStorage;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = swift_allocObject();
  v21[2] = v3;
  v21[3] = v19;
  v21[4] = v20;

  CKModifyRecordZonesOperation.perRecordZoneDeleteBlock.setter();
  v22 = swift_allocObject();
  v22[2] = v3;
  v22[3] = v20;
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = v19;

  sub_10001F640(a1, a2);
  CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.setter();
  sub_10001B4FC(v16, 0);
}

uint64_t sub_10001A3B8(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v15 = *(v23 - 8);
  __chkstk_darwin(v23);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a4 + 40);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  LOBYTE(a4) = a3 & 1;
  *(v18 + 24) = a3 & 1;
  *(v18 + 32) = a5;
  *(v18 + 40) = a1;
  *(v18 + 48) = a6;
  aBlock[4] = sub_10001F734;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FCC40;
  v19 = _Block_copy(aBlock);
  sub_10001F6D4(a2, a4);

  v20 = a1;

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v14, v12);
  (*(v15 + 8))(v17, v23);
}

uint64_t sub_10001A6B4(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    defaultLogger()();
    sub_10001F6D4(a1, 1);
    v14 = a4;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    sub_10001F6B4(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = v18;
      v36 = swift_slowAlloc();
      v38[0] = v36;
      *v17 = 138412546;
      *(v17 + 4) = v14;
      *v18 = v14;
      *(v17 + 12) = 2080;
      swift_getErrorValue();
      v34 = v16;
      v37 = a5;
      v19 = v14;
      v20 = Error.localizedDescription.getter();
      v22 = sub_100141FE4(v20, v21, v38);
      a5 = v37;

      *(v17 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v15, v34, "deleteZones error received for zone ID %@: %s", v17, 0x16u);
      sub_10000BE18(v35, &unk_100833B50, &unk_1006D8FB0);

      sub_10000BB78(v36);
    }

    (*(v11 + 8))(v13, v10);
    swift_beginAccess();
    *(a5 + 16) = a1;
  }

  else
  {
    v24 = [a4 zoneName];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    swift_beginAccess();
    v28 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_1003C5110(0, *(v28 + 2) + 1, 1, v28);
      *(a3 + 16) = v28;
    }

    v31 = *(v28 + 2);
    v30 = *(v28 + 3);
    if (v31 >= v30 >> 1)
    {
      v28 = sub_1003C5110((v30 > 1), v31 + 1, 1, v28);
    }

    *(v28 + 2) = v31 + 1;
    v32 = &v28[16 * v31];
    *(v32 + 4) = v25;
    *(v32 + 5) = v27;
    *(a3 + 16) = v28;
    return swift_endAccess();
  }
}

uint64_t sub_10001AA04(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v26 - 8);
  __chkstk_darwin(v26);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v28 = *(v15 - 8);
  v29 = v15;
  __chkstk_darwin(v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a3 + 40);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  *(v18 + 32) = a6;
  *(v18 + 40) = a1;
  v19 = a6;
  LOBYTE(a6) = a2 & 1;
  *(v18 + 48) = a2 & 1;
  v20 = v25;
  *(v18 + 56) = a3;
  *(v18 + 64) = v20;
  aBlock[4] = sub_10001F6C0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FCBF0;
  v21 = _Block_copy(aBlock);

  sub_10001F640(a5, v19);
  sub_10001F6D4(a1, a6);

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  v22 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v30 + 8))(v14, v22);
  (*(v28 + 8))(v17, v29);
}

void sub_10001AD1C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v58 = a7;
  v60 = a6;
  LODWORD(v59) = a5;
  v63 = type metadata accessor for DIPError();
  v11 = *(v63 - 8);
  __chkstk_darwin(v63);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DIPError.Code();
  v18 = *(v61 - 8);
  __chkstk_darwin(v61);
  v62 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (a2)
    {
      (*(v18 + 104))(v62, enum case for DIPError.Code.internalError(_:), v61);
      swift_errorRetain();
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v20 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      a2(v20);
    }
  }

  else
  {
    v56 = a3;
    v57 = a2;
    v51 = a4;
    v52 = v15;
    v53 = v14;
    v54 = v13;
    v55 = v11;
    if ((v59 & 1) == 0)
    {
      v40 = v60;
      sub_10001DD68();
      defaultLogger()();

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      v43 = os_log_type_enabled(v41, v42);
      v44 = v57;
      if (v43)
      {
        v45 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v45 = 136446466;
        *(v45 + 4) = sub_100141FE4(*(v40 + 24), *(v40 + 32), &v64);
        *(v45 + 12) = 2082;
        swift_beginAccess();

        v46 = Array.description.getter();
        v48 = v47;

        v49 = sub_100141FE4(v46, v48, &v64);

        *(v45 + 14) = v49;
        _os_log_impl(&_mh_execute_header, v41, v42, "Deleted container %{public}s zones %{public}s", v45, 0x16u);
        swift_arrayDestroy();

        (*(v52 + 8))(v17, v53);
        if (!v44)
        {
          return;
        }
      }

      else
      {

        (*(v52 + 8))(v17, v53);
        if (!v44)
        {
          return;
        }
      }

      v44(0);
      return;
    }

    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v21 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v22 = *(v21 - 8);
    v59 = *(v22 + 72);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1006BF740;
    v25 = v24 + v23;
    v26 = (v24 + v23 + *(v21 + 48));
    v27 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
    v28 = type metadata accessor for DIPError.PropertyKey();
    v29 = *(*(v28 - 8) + 104);
    (v29)(v24 + v23, v27, v28);
    v30 = v60;
    v31 = *(v60 + 24);
    v32 = *(v60 + 32);
    v26[3] = &type metadata for String;
    v26[4] = &protocol witness table for String;
    *v26 = v31;
    v26[1] = v32;
    v33 = v25 + v59 + *(v21 + 48);
    v29();
    LOBYTE(v29) = *(v30 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
    *(v33 + 24) = &type metadata for DIPCloudContainerState;
    *(v33 + 32) = sub_10001F584();
    *v33 = v29;

    sub_10003C9C0(v24);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_10001CEBC(v51);
    (*(v18 + 104))(v62, enum case for DIPError.Code.internalError(_:), v61);
    v34 = v57;
    v35 = v54;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v36 = v63;
    v37 = v55;
    if (v34)
    {
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v38 = swift_allocError();
      (*(v37 + 16))(v39, v35, v36);
      v34(v38);
    }

    (*(v37 + 8))(v35, v36);
  }
}

void sub_10001B4FC(void *a1, unsigned __int8 a2)
{
  v5 = [objc_allocWithZone(CKOperationGroup) init];
  if (a2 <= 4u || a2 == 5)
  {
    v6 = String._bridgeToObjectiveC()();

    [v5 setName:v6];
  }

  v7 = (*(*v2 + 44))([a1 setGroup:v5]);
  v8 = &selRef_publicCloudDatabase;
  if ((v7 & 1) == 0)
  {
    v8 = &selRef_privateCloudDatabase;
  }

  v9 = [v2[2] *v8];
  [v9 addOperation:a1];
}

uint64_t sub_10001B6FC(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v52 = a4;
  v53 = a5;
  v43 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPError.Code();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() standardUserDefaults];
  v18._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceCloudkitAllRecordsFailure.getter();
  v19 = NSUserDefaults.internalBool(forKey:)(v18);

  if (v19)
  {
    (*(v14 + 104))(v16, enum case for DIPError.Code.cloudkitAllRecordsHaveFailedToUpload(_:), v13);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v20 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v52(v20, 0);
  }

  else
  {
    sub_10001F8D4(0, &qword_100833A60, CKModifyRecordsOperation_ptr);

    v56.is_nil = 0;
    isa = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v56, v57).super.super.super.super.isa;
    [(objc_class *)isa setSavePolicy:1];
    [(objc_class *)isa setAtomic:0];
    [(objc_class *)isa setConfiguration:v43];
    defaultLogger()();
    v23 = isa;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    v26 = a1;
    if (os_log_type_enabled(v24, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136315138;
      v29 = CKOperation.operationID.getter();
      v31 = sub_100141FE4(v29, v30, aBlock);
      v43 = v10;
      v32 = a2;
      v33 = v26;
      v34 = v31;

      *(v27 + 4) = v34;
      v26 = v33;
      a2 = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "The operation ID for save records is %s", v27, 0xCu);
      sub_10000BB78(v28);

      (*(v44 + 8))(v12, v43);
    }

    else
    {

      (*(v44 + 8))(v12, v10);
    }

    v35 = v52;
    v36 = v45;
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    *(v37 + 24) = v23;
    *(v37 + 32) = v35;
    *(v37 + 40) = v53;
    *(v37 + 48) = v26;
    *(v37 + 56) = a2;
    aBlock[4] = sub_10001F410;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100503A7C;
    aBlock[3] = &unk_1007FCAD8;
    v38 = _Block_copy(aBlock);

    v39 = v23;

    v40 = v46;
    static DispatchQoS.unspecified.getter();
    v54 = _swiftEmptyArrayStorage;
    sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100007224(&qword_100848A40, &unk_1006BF8C0);
    sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
    v41 = v48;
    v42 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v38);

    (*(v50 + 8))(v41, v42);
    (*(v47 + 8))(v40, v49);
  }
}

uint64_t sub_10001BE00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = _swiftEmptyArrayStorage;
  dispatch_group_enter(*(a1 + 48));

  CKModifyRecordsOperation.perRecordSaveBlock.setter();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = v12;
  v13[6] = a5;

  CKModifyRecordsOperation.modifyRecordsResultBlock.setter();
  sub_10001B4FC(a2, a6);
}

uint64_t sub_10001BF20(void *a1, void *a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  if (a3)
  {
    v42 = v9;
    v15 = [a1 recordName];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    swift_beginAccess();
    v19 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v19;
    v43 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1003C5110(0, *(v19 + 2) + 1, 1, v19);
      *(a4 + 16) = v19;
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = sub_1003C5110((v21 > 1), v22 + 1, 1, v19);
    }

    *(v19 + 2) = v22 + 1;
    v23 = &v19[16 * v22];
    *(v23 + 4) = v16;
    *(v23 + 5) = v18;
    *(a4 + 16) = v19;
    swift_endAccess();
    defaultLogger()();
    sub_10001F8C8(a2, 1);
    v24 = a1;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    sub_10001F8A4(a2, 1);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v44[0] = v29;
      *v27 = 138412546;
      *(v27 + 4) = v24;
      *v28 = v24;
      *(v27 + 12) = 2080;
      swift_getErrorValue();
      v30 = v24;
      v31 = Error.localizedDescription.getter();
      v33 = sub_100141FE4(v31, v32, v44);

      *(v27 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v25, v26, "Received an error while saving record %@ %s", v27, 0x16u);
      sub_10000BE18(v28, &unk_100833B50, &unk_1006D8FB0);

      sub_10000BB78(v29);
    }

    return (*(v42 + 8))(v12, v43);
  }

  else
  {
    defaultLogger()();
    v35 = a2;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    sub_10001F8A4(a2, 0);
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = [v35 recordID];
      *(v38 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&_mh_execute_header, v36, v37, "%@ successfully saved", v38, 0xCu);
      sub_10000BE18(v39, &unk_100833B50, &unk_1006D8FB0);
    }

    return (*(v9 + 8))(v14, v8);
  }
}

uint64_t sub_10001C354(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5, uint64_t a6, unint64_t a7)
{
  v82 = a5;
  v83 = a4;
  v78 = a1;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v76 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v77 = &v75 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v75 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v75 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v75 - v24;
  __chkstk_darwin(v23);
  v27 = &v75 - v26;
  v28 = type metadata accessor for DIPError.Code();
  v79 = *(v28 - 8);
  v80 = v28;
  __chkstk_darwin(v28);
  v81 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_group_leave(*(a3 + 48));
  if (a2)
  {
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v30 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v31 = *(*(v30 - 8) + 72);
    v32 = (*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1006BF740;
    v34 = v33 + v32;
    v35 = (v33 + v32 + *(v30 + 48));
    v36 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
    v37 = type metadata accessor for DIPError.PropertyKey();
    v38 = *(*(v37 - 8) + 104);
    (v38)(v34, v36, v37);
    v39 = *(a3 + 24);
    v40 = *(a3 + 32);
    v35[3] = &type metadata for String;
    v35[4] = &protocol witness table for String;
    *v35 = v39;
    v35[1] = v40;
    v41 = v34 + v31 + *(v30 + 48);
    v38();
    v42 = *(a3 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
    *(v41 + 24) = &type metadata for DIPCloudContainerState;
    *(v41 + 32) = sub_10001F584();
    *v41 = v42;

    sub_10003C9C0(v33);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_10001CEBC(v78);
    (*(v79 + 104))(v81, enum case for DIPError.Code.internalError(_:), v80);
    type metadata accessor for DIPError();
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v43 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v83(v43, 0);
  }

  else
  {
    v78 = a6;
    defaultLogger()();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Received a success from cloudkit, will check if there are any partial upload failures...", v47, 2u);
    }

    v48 = *(v12 + 8);
    v48(v27, v11);
    defaultLogger()();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Checking if all files have failed to upload.", v51, 2u);
    }

    v48(v25, v11);
    v52 = v78;
    swift_beginAccess();
    v53 = *(*(v52 + 16) + 16);
    if (a7 >> 62)
    {
      v54 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v54 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55 = v83;
    if (v53 == v54)
    {
      defaultLogger()();
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "All the files have failed to upload.", v58, 2u);
      }

      v48(v22, v11);
      (*(v79 + 104))(v81, enum case for DIPError.Code.cloudkitServerUnavailable(_:), v80);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v59 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v55(v59, 0);
    }

    else
    {
      defaultLogger()();
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "There has been at least one successful record upload.. Checking if there are any record upload failures", v62, 2u);
      }

      v48(v19, v11);
      swift_beginAccess();
      if (*(*(v52 + 16) + 16))
      {
        defaultLogger()();

        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 134217984;
          swift_beginAccess();
          *(v65 + 4) = *(*(v52 + 16) + 16);

          _os_log_impl(&_mh_execute_header, v63, v64, "%ld have failed to upload. Returning a partial upload failure error.", v65, 0xCu);
        }

        else
        {
        }

        v70 = v80;
        v71 = v81;
        v72 = v79;
        v48(v77, v11);
        (*(v72 + 104))(v71, enum case for DIPError.Code.cloudkitPartialUploadsFailure(_:), v70);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        v73 = swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_beginAccess();
        v74 = *(v52 + 16);

        v83(v73 | 0x8000000000000000, v74);
      }

      else
      {
        v66 = v76;
        defaultLogger()();
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&_mh_execute_header, v67, v68, "All uploads successfully completed", v69, 2u);
        }

        v48(v66, v11);
        return (v55)(0xF000000000000007, 0);
      }
    }
  }
}

uint64_t sub_10001CEBC(uint64_t a1)
{
  v63 = type metadata accessor for Logger();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DIPError();
  v66 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v60 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v67 = &v57 - v5;
  v6 = type metadata accessor for DIPError.PropertyKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPError.Code();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v68 = &v57 - v15;
  v16 = _convertErrorToNSError(_:)();
  v17 = sub_10003C9C0(_swiftEmptyArrayStorage);
  v18 = [v16 code];
  v65 = v10;
  v64 = v16;
  switch(v18)
  {
    case 1uLL:
    case 0xFuLL:
      v19 = &enum case for DIPError.Code.cloudkitInternalError(_:);
      goto LABEL_42;
    case 2uLL:
    case 0x16uLL:
      v21 = [v16 userInfo];
      v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v22 + 16))
      {
        v25 = sub_10003ADCC(v23, v24);
        v27 = v26;

        if (v27)
        {
          sub_10001F2EC(*(v22 + 56) + 32 * v25, &v73);

          sub_10001F8D4(0, &qword_100833A58, NSDictionary_ptr);
          if (swift_dynamicCast())
          {
            v58 = v69;
            NSDictionary.makeIterator()();
            NSDictionary.Iterator.next()();
            v73 = v69;
            v74 = v70;
            v75 = v71;
            v76 = v72;
            if (!*(&v70 + 1))
            {
LABEL_16:

              v28 = v68;
              v10 = v65;
              (*(v11 + 104))(v68, enum case for DIPError.Code.cloudKitPartialFailureNoValidErrors(_:), v65);
              goto LABEL_43;
            }

            while (1)
            {
              sub_10001F348(&v75, &v69);
              sub_100007224(&qword_100833B90, &qword_1006D95C0);
              if (swift_dynamicCast())
              {
                break;
              }

              sub_10000BB78(&v73);
              NSDictionary.Iterator.next()();
              v73 = v69;
              v74 = v70;
              v75 = v71;
              v76 = v72;
              if (!*(&v70 + 1))
              {
                goto LABEL_16;
              }
            }

            v56 = v77;

            v53 = sub_10001CEBC(v56);

            sub_10000BB78(&v73);
            return v53;
          }

LABEL_41:
          v10 = v65;
          v19 = &enum case for DIPError.Code.cloudKitPartialFailureNoDictionary(_:);
LABEL_42:
          v28 = v68;
          (*(v11 + 104))(v68, *v19, v10);
          goto LABEL_43;
        }
      }

      else
      {
      }

      goto LABEL_41;
    case 3uLL:
    case 4uLL:
      v19 = &enum case for DIPError.Code.networkTimeOut(_:);
      goto LABEL_42;
    case 5uLL:
    case 8uLL:
      v19 = &enum case for DIPError.Code.cloudKitContainerEntitlementError(_:);
      goto LABEL_42;
    case 6uLL:
    case 0x17uLL:
      (*(v11 + 104))(v68, enum case for DIPError.Code.cloudkitServerUnavailable(_:), v10);
      v20 = [v16 userInfo];
      goto LABEL_27;
    case 7uLL:
      (*(v11 + 104))(v68, enum case for DIPError.Code.cloudkitRateLimited(_:), v10);
      v20 = [v16 userInfo];
LABEL_27:
      v29 = v20;
      v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v30 + 16))
      {

        goto LABEL_37;
      }

      v58 = sub_10003ADCC(v31, v32);
      v59 = v33;

      if ((v59 & 1) == 0)
      {
LABEL_37:

        goto LABEL_38;
      }

      sub_10001F2EC(*(v30 + 56) + 32 * v58, &v73);

      sub_10001F8D4(0, &qword_100833A50, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v34 = v69;
        v35 = v7;
        (*(v7 + 104))(v9, enum case for DIPError.PropertyKey.serverRetryAfter(_:), v6);
        v36 = v34;
        [v34 doubleValue];
        *(&v74 + 1) = &type metadata for Double;
        *&v75 = &protocol witness table for Double;
        *&v73 = v37;
        sub_10001F358(&v73, &v69);
        LOBYTE(v34) = swift_isUniquelyReferenced_nonNull_native();
        v77 = v17;
        v38 = sub_10001F370(&v69, *(&v70 + 1));
        sub_100658E08(v9, v34, &v77, *v38);

        (*(v35 + 8))(v9, v6);
        sub_10000BB78(&v69);
      }

LABEL_38:
      v10 = v65;
      v28 = v68;
LABEL_43:
      (*(v11 + 16))(v14, v28, v10);
      swift_errorRetain();
      v39 = v67;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v40 = v61;
      defaultLogger()();
      v41 = v66;
      v42 = v60;
      (*(v66 + 16))(v60, v39, v2);
      swift_errorRetain();
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *&v73 = swift_slowAlloc();
        *v45 = 136315394;
        swift_getErrorValue();
        v46 = Error.localizedDescription.getter();
        v48 = sub_100141FE4(v46, v47, &v73);

        *(v45 + 4) = v48;
        *(v45 + 12) = 2080;
        sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        v49 = Error.localizedDescription.getter();
        v51 = v50;
        (*(v66 + 8))(v42, v2);
        v52 = sub_100141FE4(v49, v51, &v73);

        *(v45 + 14) = v52;
        _os_log_impl(&_mh_execute_header, v43, v44, "Converting CloudKit error [%s] to DIPError [%s]", v45, 0x16u);
        swift_arrayDestroy();
        v41 = v66;
      }

      else
      {

        (*(v41 + 8))(v42, v2);
      }

      (*(v62 + 8))(v40, v63);
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v53 = swift_allocError();
      (*(v41 + 32))(v54, v67, v2);

      (*(v11 + 8))(v68, v65);
      return v53;
    case 9uLL:
      v19 = &enum case for DIPError.Code.invalidAppleAccount(_:);
      goto LABEL_42;
    case 0xAuLL:
      v19 = &enum case for DIPError.Code.cloudKitPermissionFailure(_:);
      goto LABEL_42;
    case 0xBuLL:
      v19 = &enum case for DIPError.Code.cloudkitRecordDoesNotExist(_:);
      goto LABEL_42;
    case 0xCuLL:
    case 0x18uLL:
      v19 = &enum case for DIPError.Code.badLogic(_:);
      goto LABEL_42;
    case 0xEuLL:
      v19 = &enum case for DIPError.Code.cloudkitServerRecordChanged(_:);
      goto LABEL_42;
    case 0x10uLL:
    case 0x11uLL:
      v19 = &enum case for DIPError.Code.cloudKitAssetFileError(_:);
      goto LABEL_42;
    case 0x12uLL:
      v19 = &enum case for DIPError.Code.cloudkitIncompatibleVersion(_:);
      goto LABEL_42;
    case 0x13uLL:
      v19 = &enum case for DIPError.Code.cloudKitConstraintViolation(_:);
      goto LABEL_42;
    case 0x14uLL:
      v19 = &enum case for DIPError.Code.cloudkitOperationCancelled(_:);
      goto LABEL_42;
    case 0x15uLL:
      v19 = &enum case for DIPError.Code.cloudkitChangeTokenExpired(_:);
      goto LABEL_42;
    case 0x19uLL:
    case 0x1BuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x21uLL:
      v19 = &enum case for DIPError.Code.cloudKitQuotaLimitsError(_:);
      goto LABEL_42;
    case 0x1AuLL:
    case 0x1CuLL:
      v19 = &enum case for DIPError.Code.cloudkitZoneNotFound(_:);
      goto LABEL_42;
    case 0x1FuLL:
      v19 = &enum case for DIPError.Code.cloudKitReferenceViolation(_:);
      goto LABEL_42;
    case 0x20uLL:
      v19 = &enum case for DIPError.Code.cloudkitAccountRestricted(_:);
      goto LABEL_42;
    case 0x6EuLL:
      v19 = &enum case for DIPError.Code.cloudkitManateeUnavailable(_:);
      goto LABEL_42;
    case 0x6FuLL:
      v19 = &enum case for DIPError.Code.cloudkitUnsyncedKeychain(_:);
      goto LABEL_42;
    case 0x70uLL:
      v19 = &enum case for DIPError.Code.cloudkitMissingManateeIdentity(_:);
      goto LABEL_42;
    default:
      v19 = &enum case for DIPError.Code.cloudKitUnknownError(_:);
      goto LABEL_42;
  }
}

uint64_t sub_10001DC7C()
{
  v1 = sub_10003D01C(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_waitingForState;
  swift_beginAccess();
  *(v0 + v2) = v1;

  v3 = sub_10003D110(_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_zoneIDsByName;
  swift_beginAccess();
  *(v0 + v4) = v3;

  v5 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_subscriptionIDs;
  swift_beginAccess();
  *(v0 + v5) = &_swiftEmptySetSingleton;

  *(v0 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_changeTokensByZoneID) = sub_10003D124(_swiftEmptyArrayStorage);
}

void sub_10001DD68()
{
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  (*(*v0 + 328))();
  v3 = String._bridgeToObjectiveC()();

  [v2 removeObjectForKey:v3];

  v4 = [v1 standardUserDefaults];
  (*(*v0 + 336))();
  v5 = String._bridgeToObjectiveC()();

  [v4 removeObjectForKey:v5];

  v6 = [v1 standardUserDefaults];
  (*(*v0 + 344))();
  v7 = String._bridgeToObjectiveC()();

  [v6 removeObjectForKey:v7];
}

void sub_10001DF3C()
{
  v1 = [objc_opt_self() standardUserDefaults];
  (*(*v0 + 328))();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 arrayForKey:v2];

  if (!v3)
  {
    return;
  }

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_10003D110(_swiftEmptyArrayStorage);
  v6 = *(v4 + 16);
  if (!v6)
  {

LABEL_22:
    v28 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_zoneIDsByName;
    swift_beginAccess();
    *(v0 + v28) = v5;

    return;
  }

  v29 = v0;
  v7 = 0;
  v8 = v4 + 32;
  v31 = v4;
  v30 = *(v4 + 16);
  while (v7 < *(v4 + 16))
  {
    sub_10001F2EC(v8, &v33);
    if (!swift_dynamicCast())
    {
      goto LABEL_6;
    }

    sub_10001F8D4(0, &qword_100833A40, CKRecordZoneID_ptr);
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    v15 = CKRecordZoneID.init(zoneName:ownerName:)(v32, v14).super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v5;
    v18 = sub_10003ADCC(v32._countAndFlagsBits, v32._object);
    v19 = v5[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_25;
    }

    v22 = v17;
    if (v5[3] >= v21)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v17 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_10016F088();
        if ((v22 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_100165280(v21, isUniquelyReferenced_nonNull_native);
      v23 = sub_10003ADCC(v32._countAndFlagsBits, v32._object);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_27;
      }

      v18 = v23;
      if ((v22 & 1) == 0)
      {
LABEL_16:
        v5 = v33;
        v33[(v18 >> 6) + 8] |= 1 << v18;
        *(v5[6] + 16 * v18) = v32;
        *(v5[7] + 8 * v18) = v15;

        v25 = v5[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_26;
        }

        v5[2] = v27;
        goto LABEL_5;
      }
    }

    v5 = v33;
    v9 = v33[7];
    v10 = *(v9 + 8 * v18);
    *(v9 + 8 * v18) = v15;

LABEL_5:
    v6 = v30;
    v4 = v31;
LABEL_6:
    ++v7;
    v8 += 32;
    if (v6 == v7)
    {

      v0 = v29;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10001E28C()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  (*(*v0 + 336))();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 arrayForKey:v3];

  if (v4)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = &_swiftEmptySetSingleton;
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + 32;
      do
      {
        sub_10001F2EC(v7, &v12);
        if (swift_dynamicCast())
        {
          sub_100151120(&v12, v10, v11);
        }

        v7 += 32;
        --v6;
      }

      while (v6);

      v8 = v13;
    }

    else
    {

      v8 = &_swiftEmptySetSingleton;
    }

    v9 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_subscriptionIDs;
    swift_beginAccess();
    *(v1 + v9) = v8;
  }
}

void sub_10001E440()
{
  v71 = type metadata accessor for Logger();
  v1 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_opt_self() standardUserDefaults];
  (*(*v0 + 344))();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 dictionaryForKey:v4];

  if (v5)
  {
    v66[0] = v0;
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = sub_10003D124(_swiftEmptyArrayStorage);
    v9 = 0;
    v74 = 0;
    v81 = v7;
    v11 = v6 + 64;
    v10 = *(v6 + 64);
    v72 = v6;
    v12 = 1 << *(v6 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v10;
    v15 = (v12 + 63) >> 6;
    v69 = (v1 + 8);
    v68 = CKCurrentUserDefaultName;
    *&v8 = 136446210;
    v67 = v8;
    v16 = v70;
    if ((v13 & v10) == 0)
    {
      goto LABEL_8;
    }

    do
    {
      while (1)
      {
        v17 = v9;
LABEL_16:
        v20 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v21 = v20 | (v17 << 6);
        v22 = (*(v72 + 48) + 16 * v21);
        v24 = *v22;
        v23 = v22[1];
        sub_10001F2EC(*(v72 + 56) + 32 * v21, v75);
        *&v76 = v24;
        *(&v76 + 1) = v23;
        sub_10001F348(v75, &v77);

LABEL_17:
        v79 = v76;
        v80[0] = v77;
        v80[1] = v78;
        v25 = *(&v76 + 1);
        if (!*(&v76 + 1))
        {

          *(v66[0] + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_changeTokensByZoneID) = v81;

          return;
        }

        v26 = v79;
        sub_10001F348(v80, &v76);
        if (swift_dynamicCast())
        {
          break;
        }

        if (!v14)
        {
          goto LABEL_8;
        }
      }

      v27 = v75[0];
      sub_10001F8D4(0, &qword_100833A30, NSKeyedUnarchiver_ptr);
      sub_10001F8D4(0, &qword_100833A38, CKServerChangeToken_ptr);
      v73 = v27;
      v28 = v74;
      v29 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      if (v28)
      {

        defaultLogger()();
        swift_errorRetain();
        v30 = v16;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v74 = v28;
          v35 = v34;
          *&v76 = v34;
          *v33 = v67;
          swift_getErrorValue();
          v36 = Error.localizedDescription.getter();
          v38 = sub_100141FE4(v36, v37, &v76);

          *(v33 + 4) = v38;
          _os_log_impl(&_mh_execute_header, v31, v32, "Unable to decode change token: %{public}s", v33, 0xCu);
          sub_10000BB78(v35);

          sub_10000B90C(v73, *(&v73 + 1));

          v16 = v70;
          (*v69)(v70, v71);
          v74 = 0;
        }

        else
        {
          sub_10000B90C(v73, *(&v73 + 1));

          (*v69)(v30, v71);
          v74 = 0;
          v16 = v30;
        }
      }

      else
      {
        v39 = v29;
        v40 = sub_10001F8D4(0, &qword_100833A40, CKRecordZoneID_ptr);
        v41._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41._object = v42;
        v43._countAndFlagsBits = v26;
        v43._object = v25;
        v66[1] = v40;
        v44.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v43, v41).super.isa;
        isa = v44.super.isa;
        v74 = 0;
        if (v39)
        {
          v46 = v81;
          if ((v81 & 0xC000000000000001) != 0)
          {
            if (v81 >= 0)
            {
              v46 = v81 & 0xFFFFFFFFFFFFFF8;
            }

            v47 = v39;
            v48 = __CocoaDictionary.count.getter();
            if (__OFADD__(v48, 1))
            {
              goto LABEL_49;
            }

            v46 = sub_10001F000(v46, v48 + 1);
            v81 = v46;
          }

          else
          {
            v50 = v39;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v76 = v46;
          v52 = sub_10003B028(isa);
          v54 = *(v46 + 16);
          v55 = (v53 & 1) == 0;
          v56 = __OFADD__(v54, v55);
          v57 = v54 + v55;
          if (v56)
          {
            goto LABEL_48;
          }

          v58 = v53;
          if (*(v46 + 24) >= v57)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v65 = v52;
              sub_10016F09C();
              v52 = v65;
            }
          }

          else
          {
            sub_100165294(v57, isUniquelyReferenced_nonNull_native);
            v52 = sub_10003B028(isa);
            if ((v58 & 1) != (v59 & 1))
            {
              goto LABEL_51;
            }
          }

          v16 = v70;
          v60 = v76;
          if (v58)
          {
            v61 = *(v76 + 56);
            v62 = *(v61 + 8 * v52);
            *(v61 + 8 * v52) = v39;

            sub_10000B90C(v73, *(&v73 + 1));
          }

          else
          {
            *(v76 + 8 * (v52 >> 6) + 64) |= 1 << v52;
            *(v60[6] + 8 * v52) = isa;
            *(v60[7] + 8 * v52) = v39;
            sub_10000B90C(v73, *(&v73 + 1));

            v63 = v60[2];
            v56 = __OFADD__(v63, 1);
            v64 = v63 + 1;
            if (v56)
            {
              goto LABEL_50;
            }

            v60[2] = v64;
          }

          v81 = v60;
        }

        else
        {
          v49 = sub_10014EFBC(v44.super.isa);
          sub_10000B90C(v73, *(&v73 + 1));
        }
      }
    }

    while (v14);
LABEL_8:
    if (v15 <= v9 + 1)
    {
      v18 = v9 + 1;
    }

    else
    {
      v18 = v15;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
        v14 = 0;
        v77 = 0u;
        v78 = 0u;
        v9 = v19;
        v76 = 0u;
        goto LABEL_17;
      }

      v14 = *(v11 + 8 * v17);
      ++v9;
      if (v14)
      {
        v9 = v17;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

id *sub_10001EBD4()
{

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_retrier, &qword_100833A28, &qword_1006BF8A8);

  return v0;
}

uint64_t sub_10001EC6C()
{
  sub_10001EBD4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DIPCloudContainer(uint64_t a1)
{
  result = qword_100833748;
  if (!qword_100833748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001ED18(uint64_t a1)
{
  sub_10001EDE0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10001EDE0(uint64_t a1)
{
  if (!qword_100833758)
  {
    type metadata accessor for DIPRetrier();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100833758);
    }
  }
}

uint64_t getEnumTagSinglePayload for DIPCloudContainerState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DIPCloudContainerState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001EFAC()
{
  result = qword_100833A18;
  if (!qword_100833A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100833A18);
  }

  return result;
}

Swift::Int sub_10001F000(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100007224(&qword_100833A48, &unk_1006BF8B0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_10001F8D4(0, &qword_100833A40, CKRecordZoneID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_10001F8D4(0, &qword_100833A38, CKServerChangeToken_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100165294(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_10001F24C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F8420, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10001F298()
{
  result = qword_100833A20;
  if (!qword_100833A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100833A20);
  }

  return result;
}

uint64_t sub_10001F2EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10001F348(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001F358(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001F370(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_10001F3C0()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_10001F424(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001F43C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001F484(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001F4D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F51C()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10001F584()
{
  result = qword_100833A68;
  if (!qword_100833A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100833A68);
  }

  return result;
}

uint64_t sub_10001F5D8()
{

  return _swift_deallocObject(v0, 24, 7);
}