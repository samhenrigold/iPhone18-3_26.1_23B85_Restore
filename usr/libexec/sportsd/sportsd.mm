int main(int argc, const char **argv, const char **envp)
{
  if (qword_1000DB9C8 != -1)
  {
    swift_once();
  }

  sub_10002CBC8();

  if (qword_1000DB9C0 != -1)
  {
    swift_once();
  }

  v3 = [objc_opt_self() mainRunLoop];
  [v3 run];

  exit(1);
}

uint64_t sub_100001D68(uint64_t a1, int a2)
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

uint64_t sub_100001D88(uint64_t result, int a2, int a3)
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

NSString sub_100001DE8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100002AF4(a2);
  *a1 = result;
  return result;
}

uint64_t sub_100001E34(uint64_t a1)
{
  v2 = sub_100002450(&qword_1000DBB28, type metadata accessor for AMSError, &unk_1000AA2F0);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100001EA0(uint64_t a1)
{
  sub_100002450(&qword_1000DBB28, type metadata accessor for AMSError, &unk_1000AA2F0);

  return _BridgedStoredNSError.errorUserInfo.getter();
}

uint64_t sub_100001F0C(void *a1, uint64_t a2)
{
  v4 = sub_100002450(&qword_1000DBB28, type metadata accessor for AMSError, &unk_1000AA2F0);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100001FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002450(&qword_1000DBB28, type metadata accessor for AMSError, &unk_1000AA2F0);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100002044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000020A4(uint64_t a2@<X8>)
{
  sub_1000020D8();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_10000210C@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100002154@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100002180(uint64_t a1)
{
  v2 = sub_100002450(&qword_1000DBB58, type metadata accessor for AMSBagKey, &unk_1000AA510);
  v3 = sub_100002450(&unk_1000DBB60, type metadata accessor for AMSBagKey, &unk_1000AA4B0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000223C(uint64_t a1)
{
  v2 = sub_100002450(&qword_1000DBAF0, type metadata accessor for AMSError, &unk_1000AA2AC);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000022A8(uint64_t a1)
{
  v2 = sub_100002450(&qword_1000DBAF0, type metadata accessor for AMSError, &unk_1000AA2AC);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002318(uint64_t a1)
{
  v2 = sub_100002450(&qword_1000DBB28, type metadata accessor for AMSError, &unk_1000AA2F0);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100002384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002450(&qword_1000DBB28, type metadata accessor for AMSError, &unk_1000AA2F0);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100002450(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100002660()
{
  result = qword_1000DBB18;
  if (!qword_1000DBB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBB18);
  }

  return result;
}

void sub_100002764(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1000028AC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100002930(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100002984(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000029F8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002A7C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

NSString sub_100002AF4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String._bridgeToObjectiveC()();

  return v1;
}

uint64_t sub_100002B2C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String.hashValue.getter();

  return v1;
}

uint64_t sub_100002B68()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1000080A0(v0);
  if (!v1)
  {
    v4 = 0u;
    v5 = 0u;
    goto LABEL_6;
  }

  sub_10007BF54(0xD00000000000001ALL, 0x80000001000B0BF0, v1, &v4);

  if (!*(&v5 + 1))
  {
LABEL_6:
    sub_10000A7A8(&v4, &qword_1000DBD08, &qword_1000AA690);
    return 3157555;
  }

  if (swift_dynamicCast())
  {
    return v3;
  }

  return 3157555;
}

void sub_100002C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000AE68();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_100003998(&qword_1000DBE78, &qword_1000AA750);
  sub_10000ACFC();
  __chkstk_darwin(v14);
  sub_10000AE80();
  v15 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  sub_10000AC48();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10000ADA0();
  v21 = (v20 - v19);
  *(v13 + 48) = v7;
  v50 = v5;
  sub_10000A898(v5, v13 + 56);
  sub_10000A744(v11, &v52, &qword_1000DBE80, &qword_1000AA758);
  if (v53)
  {
    sub_10000A8F8(&v52, &v54);
    sub_10000A8F8(&v54, v13);
  }

  else
  {
    sub_10000A7A8(&v52, &qword_1000DBE80, &qword_1000AA758);
    v22 = String._bridgeToObjectiveC()();
    v23 = MGGetBoolAnswer();

    v48 = v15;
    if ((v23 & 1) != 0 && (type metadata accessor for BagProvider(), type metadata accessor for ContainerConstants(), static ContainerConstants.tempoUrlUserDefaultKey.getter(), sub_1000204A4(), v25 = v24, , v25))
    {

      v47 = 1;
    }

    else
    {
      v47 = 0;
    }

    v49 = v11;
    v26 = [objc_opt_self() defaultSessionConfiguration];
    v27 = [objc_allocWithZone(AMSURLSession) initWithConfiguration:v26];

    if (qword_1000DBA80 != -1)
    {
      swift_once();
    }

    v46 = v9;
    v28 = qword_1000E6E10;
    v55 = type metadata accessor for SportsPerformanceMeasurement(0);
    v56 = &off_1000D4A78;
    *&v54 = v28;

    sub_1000499E0();
    *(v13 + 24) = &type metadata for ApiAgent;
    *(v13 + 32) = &off_1000D18E8;
    v29 = swift_allocObject();
    *v13 = v29;
    if (qword_1000DB9B8 != -1)
    {
      swift_once();
    }

    v30 = *(qword_1000E6CC0 + 16);
    v31 = v27;
    v32 = [v27 configuration];
    v33 = sub_10000AF64();
    sub_100079034(v33, v34, v32);

    v35 = [v31 configuration];
    v36 = [objc_opt_self() currentProcess];

    v37 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:v30];
    [v37 setUrlKnownToBeTrusted:v47];
    v29[6] = sub_10000A854();
    v29[7] = &off_1000D0658;
    v29[3] = v37;
    sub_10000A898(&v54, (v29 + 9));
    v38 = [objc_allocWithZone(type metadata accessor for AMSTaskDelegate()) init];

    v29[2] = v31;
    v29[8] = v38;
    sub_100008A94(&v54);
    v11 = v49;
    v15 = v48;
    v9 = v46;
  }

  type metadata accessor for JSONDecoder();
  sub_10000AFD0();
  swift_allocObject();
  v39 = JSONDecoder.init()();
  *v21 = sub_1000329B0;
  v21[1] = 0;
  (*(v17 + 104))(v21, enum case for JSONDecoder.DateDecodingStrategy.custom(_:), v15);
  dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
  v40 = v9;
  if (!v9)
  {

    v40 = v39;
  }

  *(v13 + 40) = v40;

  static SportsJSONContext.Property<A>.initFailureObserver.getter();
  v41 = type metadata accessor for DefaultSportsJSONInitFailureObserver();
  sub_10000AFD0();
  swift_allocObject();
  v42 = DefaultSportsJSONInitFailureObserver.init()();
  v55 = v41;
  v56 = &protocol witness table for DefaultSportsJSONInitFailureObserver;
  *&v54 = v42;
  v43 = dispatch thunk of JSONDecoder.userInfo.modify();
  v45 = v44;
  v51 = *v44;
  swift_bridgeObjectRetain_n();
  sub_100003998(&qword_1000DBE90, &qword_1000AA760);
  Dictionary<>.subscript.setter();
  *v45 = v51;

  v43(&v52, 0);

  sub_100008A94(v50);
  sub_10000A7A8(v11, &qword_1000DBE80, &qword_1000AA758);

  sub_10000AE50();
}

void sub_100003200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, unsigned __int8 a22, char a23, uint64_t a24, void *a25)
{
  sub_10000AE68();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v119._countAndFlagsBits = v36;
  v119._object = v37;
  v121 = v38;
  v39 = sub_100003998(&qword_1000DBC30, &qword_1000AA608);
  sub_10000AC48();
  v41 = v40;
  sub_10000ACFC();
  __chkstk_darwin(v42);
  sub_10000AE90();
  type metadata accessor for URL();
  sub_10000AC48();
  v44 = *(v43 + 64);
  __chkstk_darwin(v45);
  __chkstk_darwin(v46);
  v51 = &v106 - v50;
  v52 = HIBYTE(v33) & 0xF;
  v120 = v33;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v52 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (!v52)
  {
    v57 = 0xD000000000000012;
    v58 = 0x80000001000B0BD0;
LABEL_19:
    v122 = sub_100029E04(1u, v57, v58);
    sub_100003998(&qword_1000DBC40, &qword_1000AA618);
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    Fail.init(error:)();
    sub_10000A6FC(&qword_1000DBC48, &qword_1000DBC30, &qword_1000AA608, &protocol conformance descriptor for Fail<A, B>);
    Publisher.eraseToAnyPublisher()();
    (*(v41 + 8))(v25, v39);
    goto LABEL_26;
  }

  v53 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v53 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v53)
  {
    v58 = 0x80000001000B0BB0;
    v57 = 0xD000000000000014;
    goto LABEL_19;
  }

  v113 = v49;
  v117 = v48;
  v118 = v47;
  if (!a21)
  {
    goto LABEL_13;
  }

  v54 = HIBYTE(a21) & 0xF;
  if ((a21 & 0x2000000000000000) == 0)
  {
    v54 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {
    v122 = v27;
    v123 = a21;

    v55._countAndFlagsBits = 58;
    v55._object = 0xE100000000000000;
    String.append(_:)(v55);
    v56._countAndFlagsBits = v31;
    v56._object = v29;
    String.append(_:)(v56);
    v31 = v122;
    v29 = v123;
  }

  else
  {
LABEL_13:
  }

  v116 = v35;
  if (qword_1000DBA20 != -1)
  {
    swift_once();
  }

  LODWORD(v108) = a22;
  v59 = type metadata accessor for Logger();
  sub_100007DE8(v59, qword_1000E6D48);
  v61 = v117;
  v60 = v118;
  v111 = *(v117 + 16);
  v112 = v117 + 16;
  v111(v51, v121, v118);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  v64 = os_log_type_enabled(v62, v63);
  v114 = v31;
  v115 = v29;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v122 = v110;
    *v65 = 136315138;
    sub_100008F6C(&qword_1000DBC38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v67;
    (*(v61 + 8))(v51, v60);
    v69 = sub_1000170D4(v66, v68, &v122);

    *(v65 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v62, v63, "Tempo /register base url: %s", v65, 0xCu);
    v70 = v110;
    sub_100008A94(v110);
    sub_10000B008(v70);
    sub_10000B008(v65);
  }

  else
  {

    (*(v61 + 8))(v51, v60);
  }

  v109 = a24;
  v110 = a25;
  v71 = Dictionary.init(dictionaryLiteral:)();
  if (v108)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v71;
    sub_100086888(0x524154534F545541, 0xE900000000000054, 0xD000000000000014, 0x80000001000B0B90, isUniquelyReferenced_nonNull_native);
    v71 = v122;
  }

  v122 = 791901743;
  v123 = 0xE400000000000000;
  String.append(_:)(v119);
  v73._countAndFlagsBits = 0x657473696765722FLL;
  v73._object = 0xE900000000000072;
  String.append(_:)(v73);
  v75 = v122;
  v74 = v123;

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.debug.getter();

  v78 = os_log_type_enabled(v76, v77);
  v107 = v74;
  v108 = v71;
  v106 = v75;
  if (v78)
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v122 = v80;
    *v79 = 136315138;
    *(v79 + 4) = sub_1000170D4(v75, v74, &v122);
    _os_log_impl(&_mh_execute_header, v76, v77, "Tempo /register path: %s", v79, 0xCu);
    sub_100008A94(v80);
    sub_10000B008(v80);
    sub_10000B008(v79);
  }

  v81 = v113;
  v82 = v118;
  v111(v113, v121, v118);
  v119._countAndFlagsBits = sub_100002B68();
  v112 = v83;
  sub_100069EA8(a23);
  v121 = v84;
  v119._object = v85;
  sub_100003998(&qword_1000DC430, &qword_1000AA610);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1000AA5B0;
  v87 = v115;
  *(v86 + 32) = v114;
  *(v86 + 40) = v87;
  v88 = v120;

  v92 = sub_1000698CC(v89, v90, v91);
  v93 = v117;
  v94 = (*(v117 + 80) + 32) & ~*(v117 + 80);
  v95 = v94 + v44;
  v96 = swift_allocObject();
  v97 = v107;
  *(v96 + 16) = v106;
  *(v96 + 24) = v97;
  (*(v93 + 32))(v96 + v94, v81, v82);
  *(v96 + v95) = 1;
  v98 = v96 + (v95 & 0xFFFFFFFFFFFFFFF8);
  v99 = v112;
  *(v98 + 8) = v119._countAndFlagsBits;
  *(v98 + 16) = v99;
  *(v98 + 24) = 0x302E302E31;
  *(v98 + 32) = 0xE500000000000000;
  *(v98 + 40) = v116;
  *(v98 + 48) = v88;
  *(v98 + 56) = 0x544E455645;
  *(v98 + 64) = 0xE500000000000000;
  object = v119._object;
  *(v98 + 72) = v121;
  *(v98 + 80) = object;
  v101 = v108;
  v102 = v109;
  *(v98 + 88) = v86;
  *(v98 + 96) = v101;
  *(v98 + 104) = 1;
  *(v98 + 112) = v92;
  v103 = sub_100008614(v102, v102[3]);
  v104 = v102[5];
  v105 = v110;

  sub_100008658(sub_10000858C, v96, v105, 0, v104, v103);

LABEL_26:
  sub_10000AF58();
  sub_10000AE50();
}

uint64_t sub_100003998(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_1000039E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000AE68();
  v7 = v5;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_100003998(&qword_1000DBD50, &qword_1000AA6B8);
  sub_10000AC48();
  sub_10000ACFC();
  __chkstk_darwin(v14);
  sub_10000ADEC();
  sub_100003998(&qword_1000DBD58, &unk_1000AA6C0);
  sub_10000AC48();
  sub_10000ACFC();
  __chkstk_darwin(v15);
  sub_10000ADEC();
  v16 = sub_100008614((v7 + 56), *(v7 + 80));
  sub_10000AF88(v16);
  sub_1000097A0(v7, v17);
  sub_10000AF7C();
  v18 = swift_allocObject();
  v18[2] = v13;
  v18[3] = v11;
  memcpy(v18 + 4, v30, 0x60uLL);
  v18[16] = v9;

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DBD60, &qword_1000ABEC0);
  sub_100003998(&qword_1000DBD68, &qword_1000AA6D0);
  sub_10000AD40();
  sub_10000A6FC(v19, &qword_1000DBD60, &qword_1000ABEC0, v20);
  sub_10000A6FC(&qword_1000DBD78, &qword_1000DBD68, &qword_1000AA6D0, v6);
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  sub_10000AC94();
  sub_10000A6FC(v21, &qword_1000DBD50, &qword_1000AA6B8, v22);
  sub_10000AFA8();
  Publisher.map<A>(_:)();
  v23 = sub_10000AF64();
  v24(v23);
  sub_10000AC5C();
  v27 = sub_10000A6FC(v25, &qword_1000DBD58, &unk_1000AA6C0, v26);
  sub_10000AFE8(v27);
  v28 = sub_10000AEC8();
  v29(v28);
  sub_10000AF58();
  sub_10000AE50();
}

uint64_t sub_100003CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v12);
  v32 = 0;
  v33 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v32 = 0x65726E752F33762FLL;
  v33 = 0xEF2F726574736967;
  v14._countAndFlagsBits = a2;
  v14._object = a3;
  String.append(_:)(v14);
  v16 = v32;
  v15 = v33;
  v20 = sub_1000698CC(v17, v18, v19);
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = v21 + v11;
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  *(v23 + 24) = v15;
  (*(v10 + 32))(v23 + v21, v13, v9);
  *(v23 + v22) = 1;
  *(v23 + (v22 & 0xFFFFFFFFFFFFFFF8) + 8) = v20;
  v24 = sub_100008614(v29, v29[3]);
  v25 = v30;

  v26 = sub_100009874(sub_100009840, v23, v25, 0, v24);

  *v31 = v26;
  return result;
}

int *sub_100003ECC@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = sub_100003998(&qword_1000DBD90, &qword_1000AA6D8);
  if (*(a1 + result[8]) && (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
  {
    result = [result statusCode];
    v5 = (result - 50) < 0x64;
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
  return result;
}

void sub_100003F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000AE68();
  v7 = v5;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v35 = sub_100003998(&qword_1000DBD50, &qword_1000AA6B8);
  sub_10000AC48();
  v36 = v18;
  sub_10000ACFC();
  __chkstk_darwin(v19);
  sub_10000ADEC();
  v34 = v20;
  sub_100003998(&qword_1000DBDB0, &qword_1000AA6E8);
  sub_10000AC48();
  sub_10000ACFC();
  __chkstk_darwin(v21);
  sub_10000ADEC();
  v22 = sub_100008614((v7 + 56), *(v7 + 80));
  sub_10000AF88(v22);
  sub_1000097A0(v7, v23);
  sub_10000AFDC();
  v24 = swift_allocObject();
  v24[2] = v17;
  v24[3] = v15;
  v24[4] = v13;
  v24[5] = v11;
  memcpy(v24 + 6, v37, 0x60uLL);
  v24[18] = v9;

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DBD60, &qword_1000ABEC0);
  sub_100003998(&qword_1000DBD68, &qword_1000AA6D0);
  sub_10000AD40();
  sub_10000A6FC(v25, &qword_1000DBD60, &qword_1000ABEC0, v26);
  sub_10000A6FC(&qword_1000DBD78, &qword_1000DBD68, &qword_1000AA6D0, v6);
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  sub_100003998(&qword_1000DBDB8, &qword_1000AA6F0);
  sub_10000AC94();
  sub_10000A6FC(v27, &qword_1000DBD50, &qword_1000AA6B8, v28);
  sub_10000AFA8();
  Publisher.map<A>(_:)();
  (*(v36 + 8))(v34, v35);
  sub_10000AC5C();
  v31 = sub_10000A6FC(v29, &qword_1000DBDB0, &qword_1000AA6E8, v30);
  sub_10000AFE8(v31);
  v32 = sub_10000AEC8();
  v33(v32);
  sub_10000AF58();
  sub_10000AE50();
}

uint64_t sub_100004264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v13, v16);
  v38 = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v38 = 0x65726E752F33762FLL;
  v39 = 0xEF2F726574736967;
  v18._countAndFlagsBits = a2;
  v18._object = a3;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 47;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = a4;
  v20._object = a5;
  String.append(_:)(v20);
  v21 = v38;
  v22 = v39;
  v26 = sub_1000698CC(v23, v24, v25);
  v27 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v28 = v27 + v15;
  v29 = swift_allocObject();
  *(v29 + 16) = v21;
  *(v29 + 24) = v22;
  (*(v14 + 32))(v29 + v27, v17, v13);
  *(v29 + v28) = 1;
  *(v29 + (v28 & 0xFFFFFFFFFFFFFFF8) + 8) = v26;
  v30 = sub_100008614(v35, v35[3]);
  v31 = v36;

  v32 = sub_100009874(sub_100009C68, v29, v31, 0, v30);

  *v37 = v32;
  return result;
}

id sub_100004488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URLRequest();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_100003998(&qword_1000DBD90, &qword_1000AA6D8);
  v19 = *(a1 + *(v11 + 32));
  if (v19 && (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) != 0))
  {
    v13 = [v12 statusCode];
    sub_10000A744(a1, v10, &qword_1000DD720, &qword_1000AA648);
    (*(v5 + 16))(v7, a1 + *(v11 + 28), v4);
    v14 = sub_100003998(&qword_1000DBDB8, &qword_1000AA6F0);
    *(a2 + v14[10]) = (v13 - 200) < 0x64;
    sub_100008C04(v10, a2);
    (*(v5 + 32))(a2 + v14[7], v7, v4);
  }

  else
  {
    sub_10000A744(a1, a2, &qword_1000DD720, &qword_1000AA648);
    v15 = *(v11 + 28);
    v14 = sub_100003998(&qword_1000DBDB8, &qword_1000AA6F0);
    (*(v5 + 16))(a2 + v14[7], a1 + v15, v4);
    *(a2 + v14[10]) = 1;
  }

  v16 = v19;
  *(a2 + v14[8]) = v19;
  *(a2 + v14[9]) = xmmword_1000AA5C0;

  return v16;
}

void sub_100004710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000AE68();
  v7 = v5;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_100003998(&qword_1000DBE08, &qword_1000AA718);
  sub_10000AC48();
  v20 = v14;
  v21 = v15;
  sub_10000ACFC();
  __chkstk_darwin(v16);
  sub_10000AE80();
  v22[12] = *(*sub_100008614((v7 + 56), *(v7 + 80)) + 24);
  sub_1000097A0(v7, v22);
  sub_10000AF7C();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v11;
  v17[4] = v9;
  sub_10000AEF8(v17 + 5);

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DBD60, &qword_1000ABEC0);
  sub_100003998(&qword_1000DBE10, &qword_1000AA720);
  sub_10000A6FC(&qword_1000DBD70, &qword_1000DBD60, &qword_1000ABEC0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000A6FC(&qword_1000DBE18, &qword_1000DBE10, &qword_1000AA720, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  sub_10000AC94();
  sub_10000A6FC(v18, &qword_1000DBE08, &qword_1000AA718, v19);
  Publisher.eraseToAnyPublisher()();
  (*(v21 + 8))(v6, v20);
  sub_10000AF58();
  sub_10000AE50();
}

uint64_t sub_100004944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v33 = a5;
  v34 = a4;
  v35 = a6;
  v32 = type metadata accessor for URL();
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v32);
  v12 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v11);
  v13 = 0xE000000000000000;
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v36 = 0xD000000000000018;
  v37 = 0x80000001000B0C10;
  if (a3)
  {
    v13 = a3;
  }

  else
  {
    a2 = 0;
  }

  v14._countAndFlagsBits = a2;
  v14._object = v13;
  String.append(_:)(v14);

  v16 = v36;
  v17 = v37;
  v20 = sub_1000698CC(v15, v18, v19);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v9 + 32))(v23 + v21, v12, v32);
  v24 = (v23 + v22);
  *v24 = v16;
  v24[1] = v17;
  v25 = v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v23 + ((v22 + 39) & 0xFFFFFFFFFFFFFFF8)) = v20;
  v26 = v33;
  v27 = sub_100008614(v33, v33[3]);
  v28 = v26[5];
  v29 = v34;

  v30 = sub_10000A0C0(sub_100009FCC, v23, v29, 0, v28, v27);

  *v35 = v30;
  return result;
}

uint64_t sub_100004BC0@<X0>(_BYTE *a1@<X8>)
{
  result = static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100004BEC(uint64_t a1)
{
  v2 = sub_10000A9E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004C28(uint64_t a1)
{
  v2 = sub_10000A9E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100004C84(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = sub_100003998(a2, a3);
  sub_10000AC48();
  v9 = v8;
  sub_10000ACFC();
  __chkstk_darwin(v10);
  v12 = &v14 - v11;
  sub_100008614(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_100004DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100004C64(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100004E04(uint64_t a1)
{
  v2 = sub_10000AA34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004E40(uint64_t a1)
{
  v2 = sub_10000AA34();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100004EC0(void *a1, uint64_t a2, uint64_t a3, int a4, const void *a5, uint64_t a6)
{
  v51 = a3;
  v55 = a6;
  v49 = a4;
  v52 = a1;
  v53 = a2;
  v7 = type metadata accessor for URLError.Code();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for URLError();
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a5, sizeof(__dst));
  (*(v18 + 16))(v13, v51, v17);
  sub_100008E2C(v13, 0, 1, v17);
  URL.init(string:relativeTo:)();
  sub_10000A7A8(v13, &unk_1000DD7B0, &qword_1000AC150);
  if (sub_100008B84(v16, 1, v17) == 1)
  {
    sub_10000A7A8(v16, &unk_1000DD7B0, &qword_1000AC150);
    static URLError.Code.badURL.getter();
    sub_100007E20(_swiftEmptyArrayStorage);
    sub_100008F6C(&qword_1000DBCE8, &type metadata accessor for URLError, &protocol conformance descriptor for URLError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v21 = URLError._nsError.getter();
    (*(v48 + 8))(v10, v8);
    v53 = v21;
    swift_willThrow();
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    v22 = objc_allocWithZone(AMSURLRequest);
    URL._bridgeToObjectiveC()(v23);
    v25 = v24;
    v26 = [v22 initWithURL:v24];

    v27 = v26;
    [v27 setTimeoutInterval:10.0];
    v28 = String._bridgeToObjectiveC()();

    [v27 setHTTPMethod:v28];

    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_100008E54();
    v29 = v50;
    v30 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v53 = v29;
    if (v29)
    {
      (*(v18 + 8))(v20, v17);
    }

    else
    {
      v32 = v30;
      v33 = v31;
      v50 = v20;
      v51 = v18;

      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100008BAC(v32, v33);
      [v27 setHTTPBody:isa];
      v52 = v27;

      v35 = v55 + 64;
      v36 = 1 << *(v55 + 32);
      v37 = -1;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      v38 = v37 & *(v55 + 64);
      v39 = (v36 + 63) >> 6;

      v40 = 0;
      while (v38)
      {
        v41 = v40;
LABEL_13:
        v42 = __clz(__rbit64(v38));
        v38 &= v38 - 1;
        v43 = (*(v55 + 56) + ((v41 << 10) | (16 * v42)));
        v44 = *v43;
        v45 = v43[1];

        v46 = String._bridgeToObjectiveC()();
        sub_100008118(v44, v45, v46, v52);
      }

      while (1)
      {
        v41 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v41 >= v39)
        {

          (*(v51 + 8))(v50, v17);
          return;
        }

        v38 = *(v35 + 8 * v41);
        ++v40;
        if (v38)
        {
          v40 = v41;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1000054B0(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v58 = a6;
  v59 = a7;
  v61 = a1;
  v63 = a5;
  v57 = a4;
  v62 = a2;
  v8 = type metadata accessor for URLError.Code();
  __chkstk_darwin(v8 - 8);
  sub_10000ADA0();
  v9 = type metadata accessor for URLError();
  sub_10000AC48();
  v56 = v10;
  __chkstk_darwin(v11);
  sub_10000ADA0();
  v14 = v13 - v12;
  v15 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  __chkstk_darwin(v15 - 8);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  v21 = type metadata accessor for URL();
  sub_10000AC48();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_10000ADA0();
  v27 = v26 - v25;
  (*(v23 + 16))(v17, a3, v21);
  sub_100008E2C(v17, 0, 1, v21);
  URL.init(string:relativeTo:)();
  sub_10000A7A8(v17, &unk_1000DD7B0, &qword_1000AC150);
  if (sub_100008B84(v20, 1, v21) == 1)
  {
    sub_10000A7A8(v20, &unk_1000DD7B0, &qword_1000AC150);
    static URLError.Code.badURL.getter();
    sub_100007E20(_swiftEmptyArrayStorage);
    sub_100008F6C(&qword_1000DBCE8, &type metadata accessor for URLError, &protocol conformance descriptor for URLError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v28 = URLError._nsError.getter();
    (*(v56 + 8))(v14, v9);
    v62 = v28;
    swift_willThrow();
  }

  else
  {
    (*(v23 + 32))(v27, v20, v21);
    v29 = objc_allocWithZone(AMSURLRequest);
    URL._bridgeToObjectiveC()(v30);
    v32 = v31;
    v33 = [v29 initWithURL:v31];

    v34 = v33;
    [v34 setTimeoutInterval:10.0];
    v35 = v23;
    v36 = String._bridgeToObjectiveC()();

    [v34 setHTTPMethod:v36];

    type metadata accessor for JSONEncoder();
    sub_10000AFD0();
    swift_allocObject();
    JSONEncoder.init()();
    v58();
    v37 = v60;
    v38 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v62 = v37;
    if (v37)
    {
      (*(v23 + 8))(v27, v21);
    }

    else
    {
      v40 = v38;
      v41 = v39;
      v59 = v27;
      v60 = v35;

      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100008BAC(v40, v41);
      [v34 setHTTPBody:isa];
      v61 = v34;

      v43 = v63 + 64;
      v44 = 1 << *(v63 + 32);
      v45 = -1;
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      v46 = v45 & *(v63 + 64);
      v47 = (v44 + 63) >> 6;

      v48 = 0;
      while (v46)
      {
        v49 = v48;
LABEL_13:
        v50 = __clz(__rbit64(v46));
        v46 &= v46 - 1;
        v51 = (*(v63 + 56) + ((v49 << 10) | (16 * v50)));
        v52 = *v51;
        v53 = v51[1];

        sub_10000AF64();
        v54 = String._bridgeToObjectiveC()();
        sub_100008118(v52, v53, v54, v61);
      }

      while (1)
      {
        v49 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v49 >= v47)
        {

          (*(v60 + 8))(v59, v21);
          return;
        }

        v46 = *(v43 + 8 * v49);
        ++v48;
        if (v46)
        {
          v48 = v49;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

id sub_100005A5C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  type metadata accessor for URL();
  sub_10000ACDC();
  (*(v7 + 8))(a1);
  return v6;
}

void sub_100005AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000AE68();
  v107 = v21;
  v23 = v22;
  v97 = v22;
  v25 = v24;
  v112 = v26;
  v104 = v27;
  v114 = v28;
  v30 = v29;
  v32 = v31;
  v108 = v33;
  v100 = type metadata accessor for URLRequest();
  sub_10000AC48();
  v115 = v34;
  v101 = *(v35 + 64);
  __chkstk_darwin(v36);
  sub_10000AF30();
  sub_10000AF24(v37);
  v38 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  v39 = sub_10000AC84(v38);
  v99 = v40;
  v95 = *(v41 + 64);
  v42 = v95;
  __chkstk_darwin(v39);
  sub_10000ADEC();
  sub_10000AF24(v43);
  v44 = sub_100003998(&qword_1000DBC88, &qword_1000AA650);
  sub_10000AC48();
  v46 = v45;
  sub_10000ACFC();
  __chkstk_darwin(v47);
  sub_10000AE90();
  v102 = sub_100003998(&qword_1000DBD10, &qword_1000AA698);
  sub_10000AC48();
  v103 = v48;
  sub_10000ACFC();
  __chkstk_darwin(v49);
  v96 = v94 - v50;
  v105 = sub_100003998(&qword_1000DBD18, &qword_1000AA6A0);
  sub_10000AC48();
  v106 = v51;
  sub_10000ACFC();
  __chkstk_darwin(v52);
  sub_10000ADEC();
  v113 = v53;
  v109 = v32;
  v117[0] = v32;
  v117[1] = v30;
  v110 = v30;
  sub_100008B28(v32, v30);
  Just.init(_:)();
  sub_100003998(&qword_1000DBD20, &qword_1000AA6A8);
  v117[0] = v25;
  type metadata accessor for JSONDecoder();
  sub_10000AD88();
  sub_10000A6FC(v54, &qword_1000DBC88, &qword_1000AA650, v55);
  sub_100008EB8();
  sub_10000AD70();
  sub_100008F6C(v56, v57, &protocol conformance descriptor for JSONDecoder);
  Publisher.decode<A, B>(type:decoder:)();
  (*(v46 + 8))(v20, v44);
  sub_100008A38(v23, v117);
  v58 = v98;
  sub_10000A744(v112, v98, &qword_1000DD720, &qword_1000AA648);
  sub_10000AE18();
  v59 = v111;
  v60 = v100;
  v61(v111, v114, v100);
  v62 = *(v99 + 80);
  v63 = (v62 + 120) & ~v62;
  v64 = *(v20 + 80);
  v65 = (v42 + v64 + v63) & ~v64;
  sub_10000ADF8(&v118);
  v67 = v66 & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  sub_10000AEF8((v68 + 16));
  v69 = v104;
  *(v68 + 112) = v104;
  sub_100008C04(v58, v68 + v63);
  sub_10000AEE0();
  v70(v68 + v65, v59, v60);
  v71 = (v68 + v67);
  v72 = v109;
  v73 = v110;
  *v71 = v109;
  v71[1] = v73;
  sub_100008B28(v72, v73);
  v74 = v69;
  sub_100003998(&qword_1000DBD38, &qword_1000AA6B0);
  sub_10000AD58();
  sub_10000A6FC(v75, &qword_1000DBD10, &qword_1000AA698, v76);
  sub_10000AEA0(sub_100009398);

  v77 = sub_10000ACE8();
  v78(v77);
  v79 = v58;
  sub_10000A744(v112, v58, &qword_1000DD720, &qword_1000AA648);
  sub_100008A38(v97, v117);
  v80 = v111;
  sub_10000AF44();
  v81();
  sub_10000A898(v107, v116);
  v82 = (v62 + 32) & ~v62;
  sub_10000AF10();
  v84 = v83 & 0xFFFFFFFFFFFFFFF8;
  v85 = (v64 + (v83 & 0xFFFFFFFFFFFFFFF8) + 96) & ~v64;
  v86 = (v101 + v85) & 0xFFFFFFFFFFFFFFF8;
  v87 = swift_allocObject();
  v88 = v109;
  v89 = v110;
  *(v87 + 16) = v109;
  *(v87 + 24) = v89;
  sub_100008C04(v79, v87 + v82);
  sub_10000AEF8((v87 + v84));
  (v94[2])(v87 + v85, v80, v60);
  sub_10000A8F8(v116, v87 + v86);
  sub_100008B28(v88, v89);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_10000AC5C();
  sub_10000A6FC(v90, &qword_1000DBD18, &qword_1000AA6A0, v91);
  sub_10000ADBC();
  Publisher.mapError<A>(_:)();

  v92 = sub_10000ACE8();
  v93(v92);
  sub_10000AE50();
}

void sub_1000061A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000AE68();
  v107 = v21;
  v111 = v22;
  v24 = v23;
  v114 = v25;
  v104 = v26;
  v113 = v27;
  v29 = v28;
  v31 = v30;
  v108 = v32;
  v100 = type metadata accessor for URLRequest();
  sub_10000AC48();
  v115 = v33;
  v101 = *(v34 + 64);
  __chkstk_darwin(v35);
  sub_10000AF30();
  sub_10000AF24(v36);
  v37 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  v38 = sub_10000AC84(v37);
  v98 = v39;
  v95 = *(v40 + 64);
  v41 = v95;
  __chkstk_darwin(v38);
  sub_10000ADEC();
  sub_10000AF24(v42);
  v43 = sub_100003998(&qword_1000DBC88, &qword_1000AA650);
  sub_10000AC48();
  v45 = v44;
  sub_10000ACFC();
  __chkstk_darwin(v46);
  sub_10000AE90();
  v102 = sub_100003998(&qword_1000DBDD0, &qword_1000AA6F8);
  sub_10000AC48();
  v103 = v47;
  sub_10000ACFC();
  __chkstk_darwin(v48);
  v96 = v94 - v49;
  v105 = sub_100003998(&qword_1000DBDD8, &unk_1000AA700);
  sub_10000AC48();
  v106 = v50;
  sub_10000ACFC();
  __chkstk_darwin(v51);
  sub_10000ADEC();
  v112 = v52;
  v109 = v31;
  v117[0] = v31;
  v117[1] = v29;
  v97 = v29;
  v53 = sub_10000AF64();
  sub_100008B28(v53, v54);
  Just.init(_:)();
  sub_100003998(&qword_1000DBDE0, &unk_1000AC110);
  v117[0] = v24;
  type metadata accessor for JSONDecoder();
  sub_10000AD88();
  sub_10000A6FC(v55, &qword_1000DBC88, &qword_1000AA650, v56);
  sub_10000A6FC(&qword_1000DBDE8, &qword_1000DBDE0, &unk_1000AC110, &unk_1000AF498);
  sub_10000AD70();
  sub_100008F6C(v57, v58, &protocol conformance descriptor for JSONDecoder);
  Publisher.decode<A, B>(type:decoder:)();
  (*(v45 + 8))(v20, v43);
  sub_100008A38(v111, v117);
  v59 = v110;
  sub_10000A744(v114, v110, &qword_1000DD720, &qword_1000AA648);
  sub_10000AE18();
  v60 = v99;
  v61 = v100;
  v62(v99, v113, v100);
  v63 = *(v98 + 80);
  v64 = (v63 + 120) & ~v63;
  v65 = *(v20 + 80);
  v66 = (v41 + v65 + v64) & ~v65;
  sub_10000ADF8(&v118);
  v68 = v67 & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  sub_10000AEF8((v69 + 16));
  v70 = v104;
  *(v69 + 112) = v104;
  sub_100008C04(v59, v69 + v64);
  sub_10000AEE0();
  v71(v69 + v66, v60, v61);
  v72 = (v69 + v68);
  v73 = v109;
  v74 = v97;
  *v72 = v109;
  v72[1] = v74;
  sub_100008B28(v73, v74);
  v75 = v70;
  sub_100003998(&qword_1000DBDF0, &qword_1000AA710);
  sub_10000AD58();
  sub_10000A6FC(v76, &qword_1000DBDD0, &qword_1000AA6F8, v77);
  sub_10000AEA0(sub_100009D8C);

  v78 = sub_10000ACE8();
  v79(v78);
  v80 = v110;
  sub_10000A744(v114, v110, &qword_1000DD720, &qword_1000AA648);
  sub_100008A38(v111, v117);
  v81 = v60;
  sub_10000AF44();
  v82();
  sub_10000A898(v107, v116);
  v83 = (v63 + 32) & ~v63;
  sub_10000AF10();
  v85 = v84 & 0xFFFFFFFFFFFFFFF8;
  v86 = (v65 + (v84 & 0xFFFFFFFFFFFFFFF8) + 96) & ~v65;
  v87 = (v101 + v86) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v109;
  *(v88 + 16) = v109;
  *(v88 + 24) = v74;
  sub_100008C04(v80, v88 + v83);
  sub_10000AEF8((v88 + v85));
  (v94[2])(v88 + v86, v81, v61);
  sub_10000A8F8(v116, v88 + v87);
  sub_100008B28(v89, v74);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_10000AC5C();
  sub_10000A6FC(v90, &qword_1000DBDD8, &unk_1000AA700, v91);
  sub_10000ADBC();
  Publisher.mapError<A>(_:)();

  v92 = sub_10000ACE8();
  v93(v92);
  sub_10000AE50();
}

uint64_t sub_100006880@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v69 = a8;
  v59 = a7;
  v73 = a5;
  v66 = a4;
  v76 = a3;
  v70 = a9;
  v74 = type metadata accessor for URLRequest();
  v77 = *(v74 - 8);
  v63 = v77[8];
  __chkstk_darwin(v74);
  v72 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  v62 = *(v14 - 8);
  v57 = *(v62 + 64);
  v15 = v57;
  __chkstk_darwin(v14 - 8);
  v61 = &v54 - v16;
  v17 = sub_100003998(&qword_1000DBC88, &qword_1000AA650);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v54 - v19;
  v64 = sub_100003998(&qword_1000DBC90, &qword_1000AA658);
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v58 = &v54 - v21;
  v67 = sub_100003998(&qword_1000DBC98, &qword_1000AA660);
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v75 = &v54 - v22;
  v71 = a1;
  __src[0] = a1;
  __src[1] = a2;
  v60 = a2;
  sub_100008B28(a1, a2);
  Just.init(_:)();
  _s20RegistrationResponseVMa(0);
  __src[0] = a6;
  type metadata accessor for JSONDecoder();
  sub_10000A6FC(&qword_1000DBCA0, &qword_1000DBC88, &qword_1000AA650, &protocol conformance descriptor for Just<A>);
  sub_100008F6C(&qword_1000DBCA8, _s20RegistrationResponseVMa, &unk_1000ADE18);
  sub_100008F6C(&qword_1000DBCB0, &type metadata accessor for JSONDecoder, &protocol conformance descriptor for JSONDecoder);
  Publisher.decode<A, B>(type:decoder:)();
  (*(v18 + 8))(v20, v17);
  sub_100008A38(a7, __src);
  v23 = v61;
  sub_10000A744(v73, v61, &qword_1000DD720, &qword_1000AA648);
  v24 = v77;
  v25 = v77[2];
  v54 = v77 + 2;
  v55 = v25;
  v26 = v72;
  v27 = v74;
  v25(v72, v76, v74);
  v28 = *(v62 + 80);
  v29 = (v28 + 120) & ~v28;
  v30 = *(v24 + 80);
  v31 = (v15 + v30 + v29) & ~v30;
  v62 = v28 | v30;
  v63 += 7;
  v32 = (v63 + v31) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  memcpy((v33 + 16), __src, 0x60uLL);
  v34 = v66;
  *(v33 + 112) = v66;
  sub_100008C04(v23, v33 + v29);
  v35 = v77[4];
  v77 += 4;
  v56 = v35;
  v35(v33 + v31, v26, v27);
  v36 = (v33 + v32);
  v37 = v71;
  v38 = v60;
  *v36 = v71;
  v36[1] = v38;
  sub_100008B28(v37, v38);
  v39 = v34;
  sub_100003998(&qword_1000DBC40, &qword_1000AA618);
  sub_10000A6FC(&qword_1000DBCB8, &qword_1000DBC90, &qword_1000AA658, &protocol conformance descriptor for Publishers.Decode<A, B, C>);
  v40 = v64;
  v41 = v58;
  Publisher.map<A>(_:)();

  (*(v65 + 8))(v41, v40);
  v42 = v23;
  sub_10000A744(v73, v23, &qword_1000DD720, &qword_1000AA648);
  sub_100008A38(v59, __src);
  v43 = v72;
  v44 = v74;
  v55(v72, v76, v74);
  sub_10000A898(v69, v78);
  v45 = (v28 + 32) & ~v28;
  v46 = (v57 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v30 + v46 + 96) & ~v30;
  v48 = (v63 + v47) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v50 = v71;
  *(v49 + 16) = v71;
  *(v49 + 24) = v38;
  sub_100008C04(v42, v49 + v45);
  memcpy((v49 + v46), __src, 0x60uLL);
  v56(v49 + v47, v43, v44);
  sub_10000A8F8(v78, v49 + v48);
  sub_100008B28(v50, v38);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_10000A6FC(&qword_1000DBCC0, &qword_1000DBC98, &qword_1000AA660, &protocol conformance descriptor for Publishers.Map<A, B>);
  v51 = v67;
  v52 = v75;
  Publisher.mapError<A>(_:)();

  return (*(v68 + 8))(v52, v51);
}

uint64_t sub_1000070C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v69 = a8;
  v59 = a7;
  v74 = a5;
  v66 = a4;
  v76 = a3;
  v70 = a9;
  v62 = type metadata accessor for URLRequest();
  v77 = *(v62 - 8);
  v63 = v77[8];
  __chkstk_darwin(v62);
  v73 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  v61 = *(v14 - 8);
  v57 = *(v61 + 64);
  v15 = v57;
  __chkstk_darwin(v14 - 8);
  v60 = &v54 - v16;
  v17 = sub_100003998(&qword_1000DBC88, &qword_1000AA650);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v54 - v19;
  v64 = sub_100003998(&qword_1000DBE50, &qword_1000AA740);
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v58 = &v54 - v21;
  v67 = sub_100003998(&qword_1000DBE58, &qword_1000AA748);
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v75 = &v54 - v22;
  v71 = a1;
  __src[0] = a1;
  __src[1] = a2;
  v72 = a2;
  sub_100008B28(a1, a2);
  Just.init(_:)();
  __src[0] = a6;
  type metadata accessor for JSONDecoder();
  sub_10000A6FC(&qword_1000DBCA0, &qword_1000DBC88, &qword_1000AA650, &protocol conformance descriptor for Just<A>);
  sub_10000A4A0();
  sub_100008F6C(&qword_1000DBCB0, &type metadata accessor for JSONDecoder, &protocol conformance descriptor for JSONDecoder);
  Publisher.decode<A, B>(type:decoder:)();
  (*(v18 + 8))(v20, v17);
  sub_100008A38(a7, __src);
  v23 = v60;
  sub_10000A744(v74, v60, &qword_1000DD720, &qword_1000AA648);
  v24 = v77;
  v25 = v77[2];
  v54 = v77 + 2;
  v55 = v25;
  v26 = v73;
  v27 = v62;
  v25(v73, v76, v62);
  v28 = *(v61 + 80);
  v29 = (v28 + 120) & ~v28;
  v30 = *(v24 + 80);
  v31 = (v15 + v30 + v29) & ~v30;
  v61 = v28 | v30;
  v63 += 7;
  v32 = (v63 + v31) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  memcpy((v33 + 16), __src, 0x60uLL);
  v34 = v66;
  *(v33 + 112) = v66;
  sub_100008C04(v23, v33 + v29);
  v35 = v77[4];
  v77 += 4;
  v56 = v35;
  v35(v33 + v31, v26, v27);
  v36 = (v33 + v32);
  v37 = v71;
  v38 = v72;
  *v36 = v71;
  v36[1] = v38;
  sub_100008B28(v37, v38);
  v39 = v34;
  sub_100003998(&qword_1000DBE30, &qword_1000AA730);
  sub_10000A6FC(&qword_1000DBE68, &qword_1000DBE50, &qword_1000AA740, &protocol conformance descriptor for Publishers.Decode<A, B, C>);
  v40 = v64;
  v41 = v58;
  Publisher.map<A>(_:)();

  (*(v65 + 8))(v41, v40);
  v42 = v23;
  sub_10000A744(v74, v23, &qword_1000DD720, &qword_1000AA648);
  sub_100008A38(v59, __src);
  v43 = v73;
  v55(v73, v76, v27);
  sub_10000A898(v69, v78);
  v44 = (v28 + 32) & ~v28;
  v45 = (v57 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v30 + v45 + 96) & ~v30;
  v47 = (v63 + v46) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v49 = v71;
  v50 = v72;
  *(v48 + 16) = v71;
  *(v48 + 24) = v50;
  sub_100008C04(v42, v48 + v44);
  memcpy((v48 + v45), __src, 0x60uLL);
  v56(v48 + v46, v43, v27);
  sub_10000A8F8(v78, v48 + v47);
  sub_100008B28(v49, v50);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_10000A6FC(&qword_1000DBE70, &qword_1000DBE58, &qword_1000AA748, &protocol conformance descriptor for Publishers.Map<A, B>);
  v51 = v67;
  v52 = v75;
  Publisher.mapError<A>(_:)();

  return (*(v68 + 8))(v52, v51);
}

id sub_1000078D4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X8>)
{
  sub_100047124(a2);
  sub_10000A744(a3, a7, &qword_1000DD720, &qword_1000AA648);
  v13 = sub_100003998(&qword_1000DBD38, &qword_1000AA6B0);
  v14 = v13[7];
  v15 = type metadata accessor for URLRequest();
  (*(*(v15 - 8) + 16))(a7 + v14, a4, v15);
  *(a7 + v13[10]) = a1;
  *(a7 + v13[8]) = a2;
  v16 = (a7 + v13[9]);
  *v16 = a5;
  v16[1] = a6;

  sub_100008B28(a5, a6);

  return a2;
}

uint64_t sub_1000079F4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X8>)
{
  sub_100047124(a2);
  sub_10000A744(a3, a7, &qword_1000DD720, &qword_1000AA648);
  v14 = sub_100003998(&qword_1000DBDF0, &qword_1000AA710);
  v15 = v14[7];
  v16 = type metadata accessor for URLRequest();
  (*(*(v16 - 8) + 16))(a7 + v15, a4, v16);
  *(a7 + v14[10]) = a1;
  *(a7 + v14[8]) = a2;
  v17 = (a7 + v14[9]);
  *v17 = a5;
  v17[1] = a6;
  sub_100008B28(a5, a6);
  v18 = a2;
}

id sub_100007B04@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X8>)
{
  sub_100047124(a2);
  sub_10000A744(a3, a7, &qword_1000DD720, &qword_1000AA648);
  v13 = sub_100003998(&qword_1000DBC40, &qword_1000AA618);
  v14 = v13[7];
  v15 = type metadata accessor for URLRequest();
  (*(*(v15 - 8) + 16))(a7 + v14, a4, v15);
  sub_100008D68(a1, a7 + v13[10]);
  *(a7 + v13[8]) = a2;
  v16 = (a7 + v13[9]);
  *v16 = a5;
  v16[1] = a6;
  sub_100008B28(a5, a6);

  return a2;
}

id sub_100007C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unint64_t a9)
{
  sub_100047124(a4);
  sub_10000A744(a5, a8, &qword_1000DD720, &qword_1000AA648);
  v16 = sub_100003998(&qword_1000DBE30, &qword_1000AA730);
  v17 = v16[7];
  v18 = type metadata accessor for URLRequest();
  (*(*(v18 - 8) + 16))(a8 + v17, a6, v18);
  v19 = (a8 + v16[10]);
  *v19 = a1;
  v19[1] = a2;
  v19[2] = a3;
  *(a8 + v16[8]) = a4;
  v20 = (a8 + v16[9]);
  *v20 = a7;
  v20[1] = a9;

  sub_100008B28(a7, a9);

  return a4;
}

uint64_t sub_100007D68(char *a1, uint64_t (*a2)(uint64_t, uint64_t, char *, void, char *))
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = sub_100003998(&qword_1000DBC80, &qword_1000AA640);
  return a2(v4, v5, &a1[v6[12]], *&a1[v6[16]], &a1[v6[20]]);
}

uint64_t sub_100007DE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100007E20(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_100003998(&qword_1000DBCF8, &qword_1000AA680);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_10000A744(v6, &v15, &qword_1000DBD00, &qword_1000AA688);
    v7 = v15;
    v8 = v16;
    result = sub_100007F74(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_100008EA8(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_100007F74(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100007FEC(a1, a2, v4);
}

unint64_t sub_100007FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1000080A0(void *a1)
{
  v2 = [a1 infoDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100008118(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();
  [a4 setValue:v6 forHTTPHeaderField:a3];
}

void sub_100008180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000AE68();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v22 = sub_100003998(&qword_1000DBCC8, &qword_1000AA668);
  sub_10000AC48();
  v17 = v16;
  sub_10000ACFC();
  __chkstk_darwin(v18);
  sub_10000AE80();
  v25[3] = &type metadata for AMSApiRequest;
  v25[4] = &off_1000D0740;
  v19 = swift_allocObject();
  v25[0] = v19;
  v19[2] = v15;
  v19[3] = v13;
  v19[4] = v11;
  v19[5] = v9;
  sub_100008A38(v7, v24);
  sub_10000A898(v25, v23);
  sub_10000AFDC();
  v20 = swift_allocObject();
  memcpy((v20 + 16), v24, 0x60uLL);
  sub_10000A8F8(v23, v20 + 112);
  sub_100003998(&qword_1000DBCD0, &unk_1000AA670);
  sub_10000AFD0();
  swift_allocObject();
  v21 = v9;

  v24[0] = Future.init(_:)();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_10000A6FC(&qword_1000DBCD8, &qword_1000DBCD0, &unk_1000AA670, &protocol conformance descriptor for Future<A, B>);
  Publisher.mapError<A>(_:)();

  sub_10000A6FC(&qword_1000DBCE0, &qword_1000DBCC8, &qword_1000AA668, &protocol conformance descriptor for Publishers.MapError<A, B>);
  Publisher.eraseToAnyPublisher()();
  (*(v17 + 8))(v5, v22);
  sub_100008A94(v25);
  sub_10000AE50();
}

uint64_t sub_100008488()
{
  v1 = type metadata accessor for URL();
  sub_10000AC48();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (v5 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 120, v4 | 7);
}

void sub_10000858C()
{
  v1 = type metadata accessor for URL();
  sub_10000AC84(v1);
  v2 = sub_10000AFBC();
  sub_10000840C(v2, v6, v0 + v4, *(v0 + v3), (v5 + 8), *(v5 + 112));
}

void *sub_100008614(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008658(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = sub_100003998(&qword_1000DBC50, &qword_1000AA628);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = v22 - v12;
  v28[3] = &type metadata for AMSApiRequest;
  v28[4] = &off_1000D0740;
  v14 = swift_allocObject();
  v28[0] = v14;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v15 = a4;

  sub_100008180(a1, a2, a3, a4, a6);
  v22[1] = v16;
  v27 = v16;
  sub_100008A38(a6, __src);
  sub_10000A898(v28, v25);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  memcpy((v17 + 24), __src, 0x60uLL);
  sub_10000A8F8(v25, v17 + 120);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_100008AE0;
  *(v18 + 24) = v17;

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DBC58, &qword_1000AA630);
  sub_100003998(&qword_1000DBC40, &qword_1000AA618);
  sub_100003998(&qword_1000DBC60, &qword_1000AA638);
  sub_10000A6FC(&qword_1000DBC68, &qword_1000DBC58, &qword_1000AA630, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000A6FC(&qword_1000DBC70, &qword_1000DBC60, &qword_1000AA638, &protocol conformance descriptor for Publishers.MapError<A, B>);
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  sub_10000A6FC(&qword_1000DBC78, &qword_1000DBC50, &qword_1000AA628, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v19 = v23;
  v20 = Publisher.eraseToAnyPublisher()();
  (*(v24 + 8))(v13, v19);
  sub_100008A94(v28);
  return v20;
}

uint64_t sub_1000089A8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000089F0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008A94(void *a1)
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

uint64_t sub_100008AF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008B28(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_100008BAC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_100008C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100008C74()
{
  sub_10000AF9C();
  v0 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  sub_10000AC84(v0);
  v1 = type metadata accessor for URLRequest();
  sub_10000AC84(v1);
  v2 = sub_10000ACAC();

  return sub_100007B04(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100008D68(uint64_t a1, uint64_t a2)
{
  v4 = _s20RegistrationResponseVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008DCC()
{
  sub_100008A94((v0 + 24));
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 72));
  sub_100008A94((v0 + 112));
  sub_10000AFDC();

  return _swift_deallocObject(v1, v2, v3);
}

unint64_t sub_100008E54()
{
  result = qword_1000DBCF0;
  if (!qword_1000DBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBCF0);
  }

  return result;
}

_OWORD *sub_100008EA8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100008EB8()
{
  result = qword_1000DBD28;
  if (!qword_1000DBD28)
  {
    sub_1000089A8(&qword_1000DBD20, &qword_1000AA6A8);
    sub_100008F6C(&qword_1000DBD30, &type metadata accessor for SportingEvent, &protocol conformance descriptor for SportingEvent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBD28);
  }

  return result;
}

uint64_t sub_100008F6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100008FB4()
{
  v1 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  sub_10000AC84(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for URLRequest();
  sub_10000AC48();
  v9 = v8;
  v10 = *(v8 + 80);
  v12 = *(v11 + 64);

  sub_100008A94((v0 + 24));
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 72));

  v13 = v0 + v4;
  v14 = type metadata accessor for ApiRequestMetrics(0);
  v15 = sub_10000AF70();
  if (!sub_100008B84(v15, v16, v14))
  {
    v44 = v6;
    v17 = type metadata accessor for Date();
    v18 = sub_10000AF70();
    if (!sub_100008B84(v18, v19, v17))
    {
      sub_10000AC74();
      (*(v20 + 8))(v13, v17);
    }

    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v21 = sub_10000ADB0();
      v22(v21);
    }

    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v23 = sub_10000ADB0();
      v24(v23);
    }

    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v25 = sub_10000ADB0();
      v26(v25);
    }

    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v27 = sub_10000ADB0();
      v28(v27);
    }

    v43 = v12;
    sub_10000AE38();
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v29 = sub_10000ADB0();
      v30(v29);
    }

    v31 = *(v14 + 56);
    v32 = type metadata accessor for URL();
    if (!sub_100008B84(v13 + v31, 1, v32))
    {
      sub_10000ACDC();
      (*(v33 + 8))(v13 + v31, v32);
    }

    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v34 = sub_10000ADB0();
      v35(v34);
    }

    v12 = v43;
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v36 = sub_10000ADB0();
      v37(v36);
    }

    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v38 = sub_10000ADB0();
      v39(v38);
    }

    sub_10000AE38();
    sub_10000AE38();
    sub_10000AE38();
    sub_10000AE38();
    sub_10000AE38();
    sub_10000AE38();
    v6 = v44;
    v4 = (v3 + 120) & ~v3;
  }

  v40 = (v4 + v6 + v10) & ~v10;
  v41 = (v12 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v9 + 8))(v0 + v40, v7);
  sub_100008BAC(*(v0 + v41), *(v0 + v41 + 8));

  return _swift_deallocObject(v0, v41 + 16, v3 | v10 | 7);
}

uint64_t sub_1000093B0()
{
  v1 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  sub_10000AC84(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for URLRequest();
  sub_10000AC48();
  v9 = v8;
  v10 = *(v8 + 80);
  v12 = *(v11 + 64);
  sub_100008BAC(*(v0 + 16), *(v0 + 24));
  v13 = v0 + v4;
  v14 = type metadata accessor for ApiRequestMetrics(0);
  v15 = sub_10000AF70();
  if (!sub_100008B84(v15, v16, v14))
  {
    v45 = v12;
    v46 = v6;
    v17 = type metadata accessor for Date();
    v18 = sub_10000AF70();
    if (!sub_100008B84(v18, v19, v17))
    {
      sub_10000AC74();
      (*(v20 + 8))(v0 + v4, v17);
    }

    if (!sub_10000AD24())
    {
      sub_10000AC74();
      v21 = sub_10000ADE0();
      v22(v21);
    }

    if (!sub_10000AD24())
    {
      sub_10000AC74();
      v23 = sub_10000ADE0();
      v24(v23);
    }

    if (!sub_10000AD24())
    {
      sub_10000AC74();
      v25 = sub_10000ADE0();
      v26(v25);
    }

    if (!sub_10000AD24())
    {
      sub_10000AC74();
      v27 = sub_10000ADE0();
      v28(v27);
    }

    v47 = v7;
    sub_10000AE38();
    if (!sub_10000AD24())
    {
      sub_10000AC74();
      v29 = sub_10000ADE0();
      v30(v29);
    }

    v31 = *(v14 + 56);
    v32 = type metadata accessor for URL();
    if (!sub_100008B84(v13 + v31, 1, v32))
    {
      sub_10000ACDC();
      (*(v33 + 8))(v13 + v31, v32);
    }

    if (!sub_10000AD24())
    {
      sub_10000AC74();
      v34 = sub_10000ADE0();
      v35(v34);
    }

    v7 = v47;
    if (!sub_10000AD24())
    {
      sub_10000AC74();
      v36 = sub_10000ADE0();
      v37(v36);
    }

    if (!sub_10000AD24())
    {
      sub_10000AC74();
      v38 = sub_10000ADE0();
      v39(v38);
    }

    sub_10000AE38();
    sub_10000AE38();
    sub_10000AE38();
    sub_10000AE38();
    sub_10000AE38();
    sub_10000AE38();
    v12 = v45;
    v6 = v46;
  }

  v40 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + v10 + 96) & ~v10;
  v42 = (v12 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = v0 + v40;

  sub_100008A94((v43 + 8));
  swift_unknownObjectRelease();
  sub_100008A94((v43 + 56));
  (*(v9 + 8))(v0 + v41, v7);
  sub_100008A94((v0 + v42));

  return _swift_deallocObject(v0, v42 + 40, v3 | v10 | 7);
}

uint64_t sub_1000097D8()
{

  sub_100008A94((v0 + 32));

  sub_100008A94((v0 + 88));

  sub_10000AF7C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100009874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100003998(&qword_1000DBD98, &qword_1000AA6E0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &__src[-v12 - 8];
  sub_100008180(a1, a2, a3, a4, a5);
  v21 = v14;
  sub_100008A38(a5, __src);
  v15 = swift_allocObject();
  memcpy((v15 + 16), __src, 0x60uLL);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100009AD0;
  *(v16 + 24) = v15;
  sub_100003998(&qword_1000DBC58, &qword_1000AA630);
  sub_100003998(&qword_1000DBD90, &qword_1000AA6D8);
  sub_10000A6FC(&qword_1000DBC68, &qword_1000DBC58, &qword_1000AA630, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  sub_10000A6FC(&qword_1000DBDA0, &qword_1000DBD98, &qword_1000AA6E0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v17 = Publisher.eraseToAnyPublisher()();
  (*(v11 + 8))(v13, v10);
  return v17;
}

unint64_t sub_100009AD8()
{
  result = qword_1000DBDA8;
  if (!qword_1000DBDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBDA8);
  }

  return result;
}

uint64_t sub_100009B2C()
{

  sub_100008A94((v0 + 48));

  sub_100008A94((v0 + 104));

  sub_10000AFDC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100009B9C()
{
  v1 = type metadata accessor for URL();
  sub_10000AC48();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (v5 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 16, v4 | 7);
}

void sub_100009C9C(void (*a1)(void), uint64_t a2)
{
  v5 = type metadata accessor for URL();
  sub_10000AC84(v5);
  v6 = sub_10000AFBC();
  sub_1000054B0(v6, v10, v2 + v9, *(v2 + v8), *(v7 + 8), a1, a2);
}

unint64_t sub_100009D38()
{
  result = qword_1000DBDC8;
  if (!qword_1000DBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBDC8);
  }

  return result;
}

uint64_t sub_100009DA4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_10000AF9C();
  v2 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  sub_10000AC84(v2);
  v3 = type metadata accessor for URLRequest();
  sub_10000AC84(v3);
  v4 = sub_10000ACAC();

  return a2(v4);
}

uint64_t sub_100009EA4()
{

  sub_100008A94((v0 + 40));

  sub_100008A94((v0 + 96));
  sub_10000AF7C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100009F08()
{
  type metadata accessor for URL();
  sub_10000ACDC();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

void sub_100009FCC()
{
  v1 = type metadata accessor for URL();
  sub_10000AC84(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10001DBDC(v0 + v6, *(v0 + v7), *(v0 + v7 + 8), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v7 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10000A0C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = sub_100003998(&qword_1000DBE28, &qword_1000AA728);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = v22 - v12;
  v28[3] = &type metadata for AMSApiRequest;
  v28[4] = &off_1000D0740;
  v14 = swift_allocObject();
  v28[0] = v14;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v15 = a4;

  sub_100008180(a1, a2, a3, a4, a6);
  v22[1] = v16;
  v27 = v16;
  sub_100008A38(a6, __src);
  sub_10000A898(v28, v25);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  memcpy((v17 + 24), __src, 0x60uLL);
  sub_10000A8F8(v25, v17 + 120);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10000A474;
  *(v18 + 24) = v17;

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DBC58, &qword_1000AA630);
  sub_100003998(&qword_1000DBE30, &qword_1000AA730);
  sub_100003998(&qword_1000DBE38, &qword_1000AA738);
  sub_10000A6FC(&qword_1000DBC68, &qword_1000DBC58, &qword_1000AA630, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000A6FC(&qword_1000DBE40, &qword_1000DBE38, &qword_1000AA738, &protocol conformance descriptor for Publishers.MapError<A, B>);
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  sub_10000A6FC(&qword_1000DBE48, &qword_1000DBE28, &qword_1000AA728, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v19 = v23;
  v20 = Publisher.eraseToAnyPublisher()();
  (*(v24 + 8))(v13, v19);
  sub_100008A94(v28);
  return v20;
}

uint64_t sub_10000A414()
{

  sub_100008A94((v0 + 32));
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 80));
  sub_100008A94((v0 + 120));

  return _swift_deallocObject(v0, 160, 7);
}

unint64_t sub_10000A4A0()
{
  result = qword_1000DBE60;
  if (!qword_1000DBE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBE60);
  }

  return result;
}

id sub_10000A4F4()
{
  sub_10000AF9C();
  v0 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  sub_10000AC84(v0);
  v1 = type metadata accessor for URLRequest();
  sub_10000AC84(v1);
  v2 = sub_10000ACAC();

  return sub_10000A078(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10000A5E0()
{
  sub_10000AF9C();
  v2 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  sub_10000AC84(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for URLRequest();
  sub_10000AC84(v7);
  v9 = v8;
  v11 = v10;
  v12 = (v6 + *(v9 + 80) + 96) & ~*(v9 + 80);
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  v15 = (v0 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10004732C(v13, v14, v0 + v4, v0 + v6, v0 + v12, v15, v1);
}

uint64_t sub_10000A6FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000089A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100003998(a3, a4);
  sub_10000ACDC();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10000A7A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100003998(a2, a3);
  sub_10000ACDC();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10000A804()
{
  sub_100008A94((v0 + 24));
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 72));

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_10000A854()
{
  result = qword_1000DBE88;
  if (!qword_1000DBE88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DBE88);
  }

  return result;
}

uint64_t sub_10000A898(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_10000ACDC();
  (*v3)(a2);
  return a2;
}

uint64_t sub_10000A8F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000A938(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10000A978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000A9E0()
{
  result = qword_1000DBEA0;
  if (!qword_1000DBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBEA0);
  }

  return result;
}

unint64_t sub_10000AA34()
{
  result = qword_1000DBEB0;
  if (!qword_1000DBEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBEB0);
  }

  return result;
}

unint64_t sub_10000AAAC()
{
  result = qword_1000DBEB8;
  if (!qword_1000DBEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBEB8);
  }

  return result;
}

unint64_t sub_10000AB04()
{
  result = qword_1000DBEC0;
  if (!qword_1000DBEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBEC0);
  }

  return result;
}

unint64_t sub_10000AB5C()
{
  result = qword_1000DBEC8;
  if (!qword_1000DBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBEC8);
  }

  return result;
}

unint64_t sub_10000ABB4()
{
  result = qword_1000DBED0;
  if (!qword_1000DBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBED0);
  }

  return result;
}

uint64_t sub_10000AD08()
{

  return sub_100008B84(v0 + v2, 1, v1);
}

uint64_t sub_10000AD24()
{

  return sub_100008B84(v1 + v0, 1, v2);
}

void sub_10000AE18()
{
  v1 = *(v0 - 232);
  v2 = *(v1 + 16);
  *(v0 - 416) = v1 + 16;
  *(v0 - 408) = v2;
}

uint64_t sub_10000AE38()
{
}

uint64_t sub_10000AEA0(uint64_t a1)
{

  return Publisher.map<A>(_:)();
}

void sub_10000AEE0()
{
  v1 = *(v0 - 232);
  v2 = *(v1 + 32);
  *(v0 - 232) = v1 + 32;
  *(v0 - 400) = v2;
}

void *sub_10000AEF8(void *a1)
{

  return memcpy(a1, (v1 - 184), 0x60uLL);
}

uint64_t sub_10000AFE8(uint64_t a1)
{

  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_10000B008(uint64_t a1)
{
}

uint64_t sub_10000B020(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for URL();
  __chkstk_darwin(v4 - 8);
  sub_10000ADA0();
  v69 = type metadata accessor for IntentsServices.PayloadPrivacy();
  sub_10000BD44();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000ADA0();
  v10 = v9 - v8;
  v11 = sub_100003998(&unk_1000DBF90, &unk_1000AA9A0);
  __chkstk_darwin(v11 - 8);
  v65 = type metadata accessor for IntentsServices.DispatcherOptions();
  sub_10000BD44();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_10000ADA0();
  v17 = v16 - v15;
  v18 = String._bridgeToObjectiveC()();
  v70 = a2;
  v19 = [a2 valueForEntitlement:v18];

  v63 = v2;
  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    v20 = swift_unknownObjectRelease();
  }

  else
  {
    v71 = 0u;
    v72 = 0u;
  }

  v74 = v71;
  v75 = v72;
  if (*(&v72 + 1))
  {
    if (sub_10000BD54(v20, v21, v22, &type metadata for String))
    {
      v67 = v82;
      v68 = v83;
      goto LABEL_16;
    }
  }

  else
  {
    sub_10000B860(&v74);
  }

  v23 = String._bridgeToObjectiveC()();
  v24 = [v70 valueForEntitlement:v23];

  if (v24)
  {
    _bridgeAnyObjectToAny(_:)();
    v25 = swift_unknownObjectRelease();
  }

  else
  {
    v71 = 0u;
    v72 = 0u;
  }

  v74 = v71;
  v75 = v72;
  if (*(&v72 + 1))
  {
    v28 = sub_10000BD54(v25, v26, v27, &type metadata for String);
    v29 = v82;
    v30 = v83;
    if (!v28)
    {
      v30 = 0;
      v29 = 0;
    }

    v67 = v29;
    v68 = v30;
  }

  else
  {
    sub_10000B860(&v74);
    v67 = 0;
    v68 = 0;
  }

LABEL_16:
  v31 = [objc_opt_self() defaultEnvironment];
  *(&v75 + 1) = sub_10000B8C8();
  v76 = &protocol witness table for LNEnvironment;
  *&v74 = v31;
  static IntentsServices.InterfaceIdiom.defaultForCurrentDevice.getter();
  (*(v6 + 104))(v10, enum case for IntentsServices.PayloadPrivacy.default(_:), v69);
  IntentsServices.DispatcherOptions.init(interfaceIdiom:payloadPrivacy:)();
  v32 = static IntentsServices.localDispatcher(clientLabel:source:environment:options:)();
  v34 = v33;
  (*(v13 + 8))(v17, v65);
  sub_100008A94(&v74);
  v35 = sub_1000499E0();
  v37 = v36;
  v38 = qword_1000DB9B8;
  swift_unknownObjectRetain();
  if (v38 != -1)
  {
    swift_once();
  }

  v39 = qword_1000E6CC0;
  type metadata accessor for LiveActivityAppIntentService();
  swift_allocObject();
  v40 = sub_100026A0C(v35, v37, v32, v34, v39);
  v41 = *(v63 + OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_entitlement + 8);
  v66 = *(v63 + OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_entitlement);
  sub_10000BC8C(v63 + OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_apsListening, &v74);
  v42 = qword_1000DB9C8;

  v64 = v41;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = qword_1000E6CD0;
  v44 = objc_opt_self();

  v45 = [v44 defaultManager];
  NSFileManager.currentContainerURL.getter();

  type metadata accessor for PlaysStore();
  swift_allocObject();
  v46 = PlaysStore.init(storeUrl:)();
  sub_10000BC8C(v63 + OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_metadataProvider, &v79);
  sub_10000BC8C(v63 + OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_tempoApiProvider, &v80);
  sub_10000BC8C(v63 + OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_supressionManager, v81);
  v77 = v43;
  v78 = v46;
  v47 = type metadata accessor for ActivityAuthorization();
  v48 = [objc_allocWithZone(v47) init];
  v49 = sub_1000499E0();
  v51 = v50;
  *(&v72 + 1) = v47;
  v73 = &off_1000D1900;
  *&v71 = v48;
  type metadata accessor for ActivityCapUtility();
  v52 = swift_allocObject();
  sub_10000B90C(&v71, v47);
  sub_10000BD44();
  __chkstk_darwin(v53);
  sub_10000ADA0();
  v56 = (v55 - v54);
  (*(v57 + 16))(v55 - v54);
  v58 = *v56;
  v52[5] = v47;
  v52[6] = &off_1000D1900;
  v52[2] = v58;
  v52[7] = v49;
  v52[8] = v51;
  sub_100008A94(&v71);

  v81[5] = v52;

  v59 = sub_10000B95C(v66, v64, v70, &v74, v67, v68, v40);
  sub_100091820(v59, v60, v61);

  swift_unknownObjectRelease();
  return 1;
}

id sub_10000B784()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000B860(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000B8C8()
{
  result = qword_1000DBFA0;
  if (!qword_1000DBFA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DBFA0);
  }

  return result;
}

uint64_t sub_10000B90C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

id sub_10000B95C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v33 = a5;
  v34 = a6;
  v35 = a4;
  v36 = a3;
  v37 = a1;
  v38 = a2;
  v8 = *a7;
  v9 = objc_allocWithZone(type metadata accessor for SportsKitRequestXPCSession());
  v40[3] = v8;
  v40[4] = &protocol witness table for LiveActivityAppIntentService;
  v40[0] = a7;
  *&v9[OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_cancellables] = &_swiftEmptySetSingleton;
  v10 = &v9[OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId];
  *v10 = 0;
  v10[1] = 0;
  v32 = OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_activityCapUtility;
  v11 = type metadata accessor for ActivityAuthorization();
  v12 = objc_allocWithZone(v11);

  v13 = [v12 init];
  v14 = sub_1000499E0();
  v16 = v15;
  v39[3] = v11;
  v39[4] = &off_1000D1900;
  v39[0] = v13;
  type metadata accessor for ActivityCapUtility();
  v17 = swift_allocObject();
  v18 = sub_10000B90C(v39, v11);
  v19 = __chkstk_darwin(v18);
  v21 = (&v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = *v21;
  v17[5] = v11;
  v17[6] = &off_1000D1900;
  v17[2] = v23;
  v17[7] = v14;
  v17[8] = v16;
  sub_100008A94(v39);

  v24 = v33;
  *&v9[v32] = v17;
  v25 = v34;
  *v10 = v24;
  v10[1] = v25;

  v26 = v35;
  sub_10000BC30(v35, &v9[OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation]);
  sub_10000BC8C(v40, &v9[OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_liveActivityAppIntentService]);
  v27 = v36;
  v28 = sub_1000917D0(v37, v38, v27);
  [v27 setExportedObject:v28];
  v29 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP7sportsd25SportsdXPCDaemon_Protocol_];
  [v27 setExportedInterface:v29];

  sub_10000BCF0(v26);
  sub_100008A94(v40);
  return v28;
}

uint64_t sub_10000BC8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000BD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_10000BD74(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = type metadata accessor for URL();
  __chkstk_darwin(v4 - 8);
  sub_10000ADA0();
  v63 = v6 - v5;
  v7 = type metadata accessor for IntentsServices.PayloadPrivacy();
  sub_10000BD44();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000ADA0();
  v13 = v12 - v11;
  v14 = sub_100003998(&unk_1000DBF90, &unk_1000AA9A0);
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for IntentsServices.DispatcherOptions();
  sub_10000BD44();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10000ADA0();
  v21 = v20 - v19;
  v22 = [objc_opt_self() defaultEnvironment];
  v70[3] = sub_10000B8C8();
  v70[4] = &protocol witness table for LNEnvironment;
  v70[0] = v22;
  static IntentsServices.InterfaceIdiom.defaultForCurrentDevice.getter();
  (*(v9 + 104))(v13, enum case for IntentsServices.PayloadPrivacy.default(_:), v7);
  IntentsServices.DispatcherOptions.init(interfaceIdiom:payloadPrivacy:)();
  v23 = static IntentsServices.localDispatcher(clientLabel:source:environment:options:)();
  v25 = v24;
  (*(v17 + 8))(v21, v15);
  sub_100008A94(v70);
  v26 = sub_1000499E0();
  v28 = v27;
  v29 = qword_1000DB9B8;
  swift_unknownObjectRetain();
  if (v29 != -1)
  {
    swift_once();
  }

  v30 = qword_1000E6CC0;
  v31 = type metadata accessor for LiveActivityAppIntentService();
  swift_allocObject();
  v32 = sub_100026A0C(v26, v28, v23, v25, v30);
  v33 = *(v3 + OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_entitlement + 8);
  v65 = *(v3 + OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_entitlement);
  sub_10000BC8C(v3 + OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_apsListening, v70);
  v34 = qword_1000DB9C8;

  v64 = v33;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = qword_1000E6CD0;
  v36 = objc_opt_self();

  v37 = [v36 defaultManager];
  NSFileManager.currentContainerURL.getter();

  type metadata accessor for PlaysStore();
  swift_allocObject();
  v38 = PlaysStore.init(storeUrl:)();
  sub_10000BC8C(v3 + OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_metadataProvider, &v71);
  sub_10000BC8C(v3 + OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_tempoApiProvider, &v72);
  sub_10000BC8C(v3 + OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_supressionManager, v73);
  v70[5] = v35;
  v70[6] = v38;
  v39 = type metadata accessor for ActivityAuthorization();
  v40 = [objc_allocWithZone(v39) init];
  v41 = sub_1000499E0();
  v43 = v42;
  v69 = &off_1000D1900;
  v68 = v39;
  v67[0] = v40;
  type metadata accessor for ActivityCapUtility();
  v44 = swift_allocObject();
  sub_10000B90C(v67, v39);
  sub_10000BD44();
  __chkstk_darwin(v45);
  sub_10000ADA0();
  v48 = (v47 - v46);
  (*(v49 + 16))(v47 - v46);
  v50 = *v48;
  v44[5] = v39;
  v44[6] = &off_1000D1900;
  v44[2] = v50;
  v44[7] = v41;
  v44[8] = v43;
  sub_100008A94(v67);

  v73[5] = v44;
  type metadata accessor for SportsManager();

  v51 = static SportsManager.shared.getter();
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  v53 = objc_allocWithZone(type metadata accessor for DirectActivityRequestXPCSession());
  v69 = &protocol witness table for LiveActivityAppIntentService;
  v68 = v31;
  v67[0] = v32;
  *&v53[OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_cancellables] = &_swiftEmptySetSingleton;
  sub_10000BC30(v70, &v53[OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_subscriptionOperation]);
  sub_10000BC8C(v67, &v53[OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_liveActivityAppIntentService]);
  v54 = &v53[OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_areLiveActivitiesEnabledForBundleId];
  *v54 = sub_10005D7BC;
  v54[1] = 0;
  v55 = &v53[OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_autostartStatus];
  *v55 = sub_10000C60C;
  v55[1] = v52;
  swift_retain_n();

  v56 = a2;
  v57 = sub_1000917D0(v65, v64, v56);
  [v56 setExportedObject:v57];
  v58 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP7sportsd38DirectSessionRequestXPCDaemon_Protocol_];
  [v56 setExportedInterface:v58];

  sub_10000BCF0(v70);
  v59 = sub_100008A94(v67);
  sub_100091820(v59, v60, v61);

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_10000C5D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C66C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365536F706D6574 && a2 == 0xEE0064496E6F6973;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6556616D65686373 && a2 == 0xED00006E6F697372;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701869940 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E756F4365747962 && a2 == 0xE900000000000074;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044)
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

Swift::Int sub_10000C8F4(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_10000C93C(char a1)
{
  result = 0x746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x7365536F706D6574;
      break;
    case 2:
      result = 0x6556616D65686373;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x6D617473656D6974;
      break;
    case 5:
      result = 0x6E756F4365747962;
      break;
    case 6:
      result = 0x496C656E6E616863;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_10000CA74()
{
  Hasher.init(_seed:)();
  sub_10000C8CC(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_10000CABC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46[0] = a4;
  type metadata accessor for Date();
  sub_10000BD44();
  v50 = v8;
  v51 = v7;
  __chkstk_darwin(v7);
  sub_10000DC58();
  v47 = v9;
  sub_10000BD44();
  v52 = v10;
  __chkstk_darwin(v11);
  sub_10000DC58();
  v48 = v12;
  type metadata accessor for CloudChannelMessageProcessor.CloudChannelMessageContentWrapper.CodingKeys(255, a2, a3, v13);
  swift_getWitnessTable();
  v54 = type metadata accessor for KeyedDecodingContainer();
  sub_10000BD44();
  v46[1] = v14;
  __chkstk_darwin(v15);
  v49 = a3;
  v53 = type metadata accessor for CloudChannelMessageProcessor.CloudChannelMessageContentWrapper(0, a2, a3, v16);
  sub_10000BD44();
  v18 = v17;
  __chkstk_darwin(v19);
  v21 = v46 - v20;
  v22 = a1[3];
  v56 = a1;
  sub_100008614(a1, v22);
  v23 = v55;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return sub_100008A94(v56);
  }

  v24 = v18;
  v25 = v47;
  v63 = 0;
  v26 = v48;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v52 + 32))(v21, v26, a2);
  v62 = 1;
  sub_10000DC4C();
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v53;
  v29 = &v21[*(v53 + 36)];
  *v29 = v27;
  v29[1] = v30;
  v61 = 2;
  sub_10000DC4C();
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = &v21[v28[10]];
  *v33 = v31;
  v33[1] = v34;
  v60 = 3;
  sub_10000DC4C();
  *&v21[v28[11]] = KeyedDecodingContainer.decode(_:forKey:)();
  v59 = 4;
  sub_10000D9EC();
  v35 = v25;
  v36 = v51;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v50 + 32))(&v21[v28[12]], v35, v36);
  v58 = 5;
  sub_10000DC4C();
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v38 = &v21[v28[13]];
  *v38 = v37;
  v38[8] = v39 & 1;
  v57 = 6;
  sub_10000DC4C();
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v42 = v41;
  v43 = &v21[v28[14]];
  v44 = sub_10000DC3C();
  v45(v44);
  *v43 = v40;
  v43[1] = v42;
  (*(v24 + 16))(v46[0], v21, v28);
  sub_100008A94(v56);
  return (*(v24 + 8))(v21, v28);
}

uint64_t sub_10000D07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000C66C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000D0D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000C8B4();
  *a1 = result;
  return result;
}

uint64_t sub_10000D100(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_10000D154(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

BOOL sub_10000D1C8(void **a1, uint64_t a2)
{
  v3 = sub_10001B460(*a1);
  if (v4)
  {
    if (*(a2 + 16))
    {
      v5 = sub_100049B40(v3, v4, a2);
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t sub_10000D22C(void **a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_10001B46C(*a1);
    if (v6)
    {
      if (v5 == a2 && v6 == a3)
      {
        v8 = 1;
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_10000D2B8()
{

  return v0;
}

uint64_t sub_10000D2E0()
{
  sub_10000D2B8();

  return _swift_deallocClassInstance(v0, 32, 7);
}

void sub_10000D364(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_10000D988(319, &qword_1000DC100, &type metadata for Int);
      if (v3 <= 0x3F)
      {
        sub_10000D988(319, &qword_1000DC108, &type metadata for String);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10000D450(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = v8;
  v16 = v14 + 8;
  if (v12 < a2)
  {
    v17 = ((*(*(v8 - 8) + 64) + ((v16 + ((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v18 = v17 & 0xFFFFFFF8;
    if ((v17 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = a2 - v12 + 1;
    }

    if (v19 >= 0x10000)
    {
      LODWORD(v20) = 4;
    }

    else
    {
      LODWORD(v20) = 2;
    }

    if (v19 < 0x100)
    {
      LODWORD(v20) = 1;
    }

    if (v19 >= 2)
    {
      v20 = v20;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = *(a1 + v17);
        if (!v21)
        {
          break;
        }

        goto LABEL_25;
      case 2:
        v21 = *(a1 + v17);
        if (v21)
        {
          goto LABEL_25;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x10000D694);
      case 4:
        v21 = *(a1 + v17);
        if (!v21)
        {
          break;
        }

LABEL_25:
        v23 = v21 - 1;
        if (v18)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v12 + (v24 | v23) + 1;
      default:
        break;
    }
  }

  if (v7 == v12)
  {
    v25 = a1;
    v10 = v7;
    v15 = v5;
LABEL_35:

    return sub_100008B84(v25, v10, v15);
  }

  v26 = (a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v11 & 0x80000000) != 0)
  {
    v25 = ((v16 + ((((v26 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v14);
    goto LABEL_35;
  }

  v27 = *(v26 + 8);
  if (v27 >= 0xFFFFFFFF)
  {
    LODWORD(v27) = -1;
  }

  return (v27 + 1);
}

void sub_10000D6A8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = ((*(*(v10 - 8) + 64) + ((v16 + 8 + ((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 >= a3)
  {
    v20 = 0;
  }

  else
  {
    if (((*(*(v10 - 8) + 64) + ((v16 + 8 + ((((((v15 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v16) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a3 - v14 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  if (a2 > v14)
  {
    if (((*(*(v10 - 8) + 64) + ((v16 + 8 + ((((((v15 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v16) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v21 = a2 - v14;
    }

    else
    {
      v21 = 1;
    }

    if (((*(*(v10 - 8) + 64) + ((v16 + 8 + ((((((v15 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v16) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v22 = ~v14 + a2;
      bzero(a1, v17);
      *a1 = v22;
    }

    switch(v20)
    {
      case 1:
        *(a1 + v17) = v21;
        return;
      case 2:
        *(a1 + v17) = v21;
        return;
      case 3:
        goto LABEL_48;
      case 4:
        *(a1 + v17) = v21;
        return;
      default:
        return;
    }
  }

  switch(v20)
  {
    case 1:
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    case 2:
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    case 3:
LABEL_48:
      __break(1u);
      JUMPOUT(0x10000D948);
    case 4:
      *(a1 + v17) = 0;
      goto LABEL_34;
    default:
LABEL_34:
      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v14)
      {
        v23 = a1;
        v24 = a2;
        v12 = v9;
        v10 = v7;
      }

      else
      {
        v25 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v13 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            *v25 = a2 & 0x7FFFFFFF;
            v25[1] = 0;
          }

          else
          {
            v25[1] = (a2 - 1);
          }

          return;
        }

        v23 = ((v16 + 8 + ((((v25 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16);
        v24 = a2;
      }

      sub_100008E2C(v23, v24, v12, v10);
      return;
  }
}

void sub_10000D988(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_10000D9EC()
{
  result = qword_1000DC110[0];
  if (!qword_1000DC110[0])
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000DC110);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiveActivityAutostartContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10000DAE0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10000DBACLL);
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

uint64_t sub_10000DC6C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CF060, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000DCC0(char a1)
{
  if (a1)
  {
    return 7759204;
  }

  else
  {
    return 1685025392;
  }
}

uint64_t sub_10000DD0C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000DC6C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000DD3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000DCC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10000DD68()
{
  v0 = sub_100003998(&qword_1000DC238, &unk_1000AAC00);
  v7 = *(v0 - 8);
  v8 = v0;
  __chkstk_darwin(v0);
  v2 = &v6 - v1;
  if (qword_1000DB9B8 != -1)
  {
    swift_once();
  }

  v9 = *(qword_1000E6CC0 + 24);

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DBD60, &qword_1000ABEC0);
  sub_100003998(&qword_1000DC240, &qword_1000AAC10);
  sub_10000A6FC(&qword_1000DBD70, &qword_1000DBD60, &qword_1000ABEC0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000A6FC(&qword_1000DC248, &qword_1000DC240, &qword_1000AAC10, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  sub_10000A6FC(&qword_1000DC250, &qword_1000DC238, &unk_1000AAC00, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v3 = v8;
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v7 + 8))(v2, v3);
  return v4;
}

uint64_t sub_10000DFA8@<X0>(uint64_t *a1@<X8>)
{
  v21 = a1;
  v1 = sub_100003998(&qword_1000DC258, &qword_1000AAC18);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v20 = sub_100003998(&qword_1000DC260, &unk_1000AAC20);
  v19 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v19 - v4;
  sub_100003998(&qword_1000DC430, &qword_1000AA610);
  inited = swift_initStackObject();
  v7 = 0;
  *(inited + 16) = xmmword_1000AABD0;
  *(inited + 32) = 1936553065;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x6567617473;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 64) = 7630441;
  *(inited + 72) = 0xE300000000000000;
  *(inited + 80) = 24945;
  *(inited + 88) = 0xE200000000000000;
  *(inited + 96) = 7759204;
  *(inited + 104) = 0xE300000000000000;
  *(inited + 112) = 6516592;
  *(inited + 120) = 0xE300000000000000;
  *(inited + 128) = 1953719668;
  *(inited + 136) = 0xE400000000000000;
  while (1)
  {
    v8 = v7 + 16;
    if (v7 == 112)
    {
      break;
    }

    v9 = inited + v7;
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);

    v24 = URL.absoluteString.getter();
    v25 = v12;
    v22 = v10;
    v23 = v11;
    v13 = type metadata accessor for Locale();
    sub_100008E2C(v3, 1, 1, v13);
    sub_10000E304();
    StringProtocol.range<A>(of:options:range:locale:)();
    v15 = v14;
    sub_10000E358(v3);

    v7 = v8;
    if ((v15 & 1) == 0)
    {
      swift_setDeallocating();
      sub_100086754();
      LOBYTE(v24) = 1;
      goto LABEL_6;
    }
  }

  swift_setDeallocating();
  sub_100086754();
  LOBYTE(v24) = 0;
LABEL_6:
  Just.init(_:)();
  sub_10000A6FC(&qword_1000DC268, &qword_1000DC260, &unk_1000AAC20, &protocol conformance descriptor for Just<A>);
  v16 = v20;
  v17 = Publisher.eraseToAnyPublisher()();
  result = (*(v19 + 8))(v5, v16);
  *v21 = v17;
  return result;
}

unint64_t sub_10000E304()
{
  result = qword_1000DC410;
  if (!qword_1000DC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC410);
  }

  return result;
}

uint64_t sub_10000E358(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DC258, &qword_1000AAC18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SportsEnvironment(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SportsEnvironment(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10000E514);
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

unint64_t sub_10000E55C()
{
  result = qword_1000DC270;
  if (!qword_1000DC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC270);
  }

  return result;
}

uint64_t sub_10000E5B0()
{
  type metadata accessor for CloudChannelTaskActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1000E6C00 = v0;
  return result;
}

uint64_t sub_10000E5EC()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10000E668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DB960 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10000E6C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CloudChannelTaskActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

void sub_10000E6FC(unsigned __int8 *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v4;
    if (qword_1000DBA20 != -1)
    {
      sub_10001C088(&qword_1000DBA20, v4, v5);
    }

    v8 = type metadata accessor for Logger();
    sub_100007DE8(v8, qword_1000E6D48);
    sub_10001C418();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = sub_10001C4D0();
      v30 = swift_slowAlloc();
      *v11 = 136315138;
      v12 = sub_10001C400();
      *(v11 + 4) = sub_1000170D4(v12, v13, v14);
      _os_log_impl(&_mh_execute_header, v9, v10, "Current environment: %s", v11, 0xCu);
      sub_100008A94(v30);
      sub_10000B008(v30);
      sub_10000B008(v11);
    }

    sub_10001BDC0(0, &qword_1000DC5D8, OS_dispatch_queue_ptr);
    sub_10001C418();

    v15 = static OS_dispatch_queue.main.getter();
    v16 = objc_allocWithZone(APSConnection);
    v17 = sub_10001C400();
    v20 = sub_100016410(v17, v18, 0xD000000000000015, v19, v15);
    v21 = OBJC_IVAR____TtC7sportsd11ApsListener_apsConnection;
    v22 = *&v3[OBJC_IVAR____TtC7sportsd11ApsListener_apsConnection];
    *&v3[OBJC_IVAR____TtC7sportsd11ApsListener_apsConnection] = v20;

    v23 = *&v3[v21];
    if (v23)
    {
      sub_10001B4E4(&off_1000CF0B0, v23, &selRef__setEnabledTopics_);
      v24 = *&v3[v21];
      if (v24)
      {
        sub_10001B4E4(&off_1000CF0E0, v24, &selRef__setOpportunisticTopics_);
        v25 = *&v3[v21];
        if (v25)
        {
          [v25 setDelegate:v3];
        }
      }
    }

    v26 = &v3[OBJC_IVAR____TtC7sportsd11ApsListener_currentAPSConnectionEnvironment];
    *v26 = v6;
    v26[1] = v7;

    v27 = *&v3[v21];
    if (v27)
    {
      v28 = *&v3[OBJC_IVAR____TtC7sportsd11ApsListener_connection];
      v29 = v27;

      os_unfair_lock_lock((v28 + 28));
      sub_10000E998((v28 + 16), v29);
      os_unfair_lock_unlock((v28 + 28));
    }
  }
}

void sub_10000E998(_BYTE *result, void *a2)
{
  if (result[8])
  {
    if (result[8] != 1)
    {
      *result = a2;
      result[8] = 1;
      v2 = a2;
    }
  }

  else
  {
    v3 = *result;
    *result = a2;
    result[8] = 1;
    v4 = v3[2];
    if (v4)
    {
      v5 = v3 + 4;
      v6 = a2;
      do
      {
        v7 = *v5++;
        **(*(v7 + 64) + 40) = v6;
        v8 = v6;
        swift_continuation_resume();
        --v4;
      }

      while (v4);
    }

    else
    {
      v9 = a2;
    }

    sub_10001BE00(v3, 0);
  }
}

void sub_10000EA5C()
{
  type metadata accessor for CloudChannelPreferences.AuditStrategy();
  sub_10000AC48();
  __chkstk_darwin(v1);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  static CloudChannelPreferences.subscriptionAuditStrategy.getter();
  v4 = sub_10001C284();
  if (v5(v4) == enum case for CloudChannelPreferences.AuditStrategy.nextPush(_:))
  {
    v6 = sub_10001C284();
    v7(v6);
    v8 = *v3;
    v9 = OBJC_IVAR____TtC7sportsd11ApsListener_cloudChannelAuditDebouncer;
    v10 = *&v0[OBJC_IVAR____TtC7sportsd11ApsListener_cloudChannelAuditDebouncer];
    if (v10)
    {
      [v10 invalidate];
    }

    sub_10001BDC0(0, &qword_1000DC5B0, NSTimer_ptr);
    sub_10001C594();
    v11 = swift_allocObject();
    *(v11 + 16) = v0;
    v12 = v0;
    v13 = sub_100011220(0, sub_10001BCC8, v11, v8);
    v14 = *&v0[v9];
    *&v0[v9] = v13;

    v15 = [objc_opt_self() mainRunLoop];
    v16 = *&v0[v9];
    if (v16)
    {
      v17 = v15;
      [v15 addTimer:v16 forMode:NSRunLoopCommonModes];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v18 = sub_10001C284();
    v19(v18);
  }
}

uint64_t sub_10000EC58()
{
  sub_10001BEC4();
  type metadata accessor for CloudChannelSubscriptionManager();
  *(v0 + 16) = static CloudChannelSubscriptionManager.shared.getter();
  sub_10001BE48();
  sub_10001BA4C(v1, 255, v2, &protocol conformance descriptor for CloudChannelSubscriptionManager);
  sub_10001C548();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10001C224();
  v3 = sub_10001BEE8();

  return _swift_task_switch(v3);
}

uint64_t sub_10000ECFC()
{
  sub_10001BF48();
  dispatch thunk of CloudChannelSubscriptionManager.clearChannelMap()();
  *(v0 + 24) = 0;

  sub_10001BE84();

  return v1();
}

uint64_t sub_10000EDA8()
{
  sub_10001BEC4();

  sub_10001BEDC();

  return v0();
}

uint64_t sub_10000EE04(unint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  v3 = _swiftEmptyArrayStorage;
  v5 = a1;
  v6 = HIDWORD(a1);
  v7 = BYTE6(a2);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_43;
      }

      v8 = HIDWORD(a1) - a1;
LABEL_6:
      if (!v8)
      {
        goto LABEL_35;
      }

      v46 = _swiftEmptyArrayStorage;
      sub_100017B68(0, v8 & ~(v8 >> 63), 0);
      v37 = v7;
      v38 = v5;
      v35 = v6;
      if (v2)
      {
        if (v2 == 2)
        {
          v11 = *(v5 + 16);
        }

        else
        {
          v11 = v5;
        }
      }

      else
      {
        v11 = 0;
      }

      if (v8 < 0)
      {
        goto LABEL_42;
      }

      v3 = v46;
      v36 = v5 >> 32;
      v33 = v5 >> 16;
      v34 = v5 >> 8;
      v31 = v5 >> 40;
      v32 = v5 >> 24;
      v29 = HIBYTE(v5);
      v30 = HIWORD(v5);
      v39 = v5;
      break;
    case 2uLL:
      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_6;
      }

      goto LABEL_44;
    case 3uLL:
      goto LABEL_35;
    default:
      v8 = BYTE6(a2);
      goto LABEL_6;
  }

  do
  {
    if (v2 == 1)
    {
      if (v11 < v38 || v11 >= v36)
      {
        goto LABEL_38;
      }

      v14 = __DataStorage._bytes.getter();
      if (!v14)
      {
        goto LABEL_45;
      }

      v15 = v14;
      v16 = __DataStorage._offset.getter();
      v17 = v11 - v16;
      if (__OFSUB__(v11, v16))
      {
        goto LABEL_40;
      }

LABEL_31:
      v12 = *(v15 + v17);
      goto LABEL_32;
    }

    if (v2)
    {
      if (v11 < *(v5 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      if (v11 >= *(v5 + 24))
      {
        goto LABEL_39;
      }

      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
        goto LABEL_46;
      }

      v15 = v18;
      v19 = __DataStorage._offset.getter();
      v17 = v11 - v19;
      if (__OFSUB__(v11, v19))
      {
        goto LABEL_41;
      }

      goto LABEL_31;
    }

    if (v11 >= v37)
    {
      goto LABEL_37;
    }

    LOBYTE(v40) = v5;
    BYTE1(v40) = v34;
    BYTE2(v40) = v33;
    BYTE3(v40) = v32;
    BYTE4(v40) = v35;
    BYTE5(v40) = v31;
    BYTE6(v40) = v30;
    HIBYTE(v40) = v29;
    v41 = a2;
    v42 = BYTE2(a2);
    v43 = BYTE3(a2);
    v44 = BYTE4(a2);
    v45 = BYTE5(a2);
    v12 = *(&v40 + v11);
LABEL_32:
    sub_100003998(&qword_1000DC508, &qword_1000AAF50);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1000AA5B0;
    *(v20 + 56) = &type metadata for UInt8;
    *(v20 + 64) = &protocol witness table for UInt8;
    *(v20 + 32) = v12;
    v21 = String.init(format:_:)();
    v23 = v22;
    v46 = v3;
    v25 = v3[2];
    v24 = v3[3];
    if (v25 >= v24 >> 1)
    {
      sub_100017B68((v24 > 1), v25 + 1, 1);
      v3 = v46;
    }

    v3[2] = v25 + 1;
    v26 = &v3[2 * v25];
    v26[4] = v21;
    v26[5] = v23;
    ++v11;
    --v8;
    v5 = v39;
  }

  while (v8);
LABEL_35:
  v40 = v3;
  sub_100003998(&qword_1000DC420, &unk_1000ADE60);
  sub_10000A6FC(&qword_1000DC428, &qword_1000DC420, &unk_1000ADE60, &protocol conformance descriptor for [A]);
  v27 = BidirectionalCollection<>.joined(separator:)();

  return v27;
}

uint64_t sub_10000F1CC()
{
  sub_100003998(&qword_1000DC550, &qword_1000AAF98);
  sub_10000AC48();
  sub_10000ACFC();
  __chkstk_darwin(v1);
  v2 = sub_100003998(&qword_1000DC558, &unk_1000AAFA0);
  sub_10000AC48();
  v4 = v3;
  sub_10000ACFC();
  __chkstk_darwin(v5);
  v7 = v13 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC7sportsd11ApsListener_pushToken + 8);
  if (v8)
  {
    v13[0] = *(v0 + OBJC_IVAR____TtC7sportsd11ApsListener_pushToken);
    v13[1] = v8;

    Just.init(_:)();
    sub_10000A6FC(&qword_1000DC578, &qword_1000DC558, &unk_1000AAFA0, &protocol conformance descriptor for Just<A>);
    v9 = Publisher.eraseToAnyPublisher()();
    (*(v4 + 8))(v7, v2);
  }

  else
  {
    v13[0] = *(v0 + OBJC_IVAR____TtC7sportsd11ApsListener_tokenPublisher);
    sub_100003998(&qword_1000DC560, &qword_1000AB830);
    sub_10000A6FC(&qword_1000DC568, &qword_1000DC560, &qword_1000AB830, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Publisher.first()();
    sub_10000A6FC(&qword_1000DC570, &qword_1000DC550, &qword_1000AAF98, &protocol conformance descriptor for Publishers.First<A>);
    sub_10001C548();
    v9 = Publisher.eraseToAnyPublisher()();
    v10 = sub_10000AF64();
    v11(v10);
  }

  return v9;
}

uint64_t sub_10000F440()
{
  sub_10001BEC4();
  *(v1 + 88) = v0;
  if (qword_1000DB960 != -1)
  {
    sub_10001BE28(&qword_1000DB960, v2, v3);
  }

  v4 = qword_1000E6C00;
  sub_10001BFBC();
  sub_10001BA4C(v5, v6, v7, &unk_1000AAE58);
  if (v4)
  {
    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
  }

  return _swift_task_switch(sub_10000F514);
}

uint64_t sub_10000F514()
{
  sub_10001BF48();
  v1 = v0 + 2;
  v2 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_10000F5F8;
  v3 = swift_continuation_init();
  v4 = *(v2 + OBJC_IVAR____TtC7sportsd11ApsListener_connection);
  os_unfair_lock_lock(v4 + 7);
  sub_10000F6E0(&v4[4], v3);
  os_unfair_lock_unlock(v4 + 7);

  return _swift_continuation_await(v1);
}

uint64_t sub_10000F5F8()
{
  sub_10001BEC4();
  sub_10001BF54();
  v2 = *(v1 + 80);
  v3 = *(*v0 + 8);

  return v3(v2);
}

void sub_10000F6E0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      **(*(a2 + 64) + 40) = v4;
      v5 = v4;
      swift_continuation_resume();
      return;
    }

    sub_100003998(&qword_1000DC440, &qword_1000AAED8);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1000AA5B0;
    *(v7 + 32) = a2;
    *a1 = v7;
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100016A58();
      v4 = v8;
    }

    v6 = v4[2];
    if (v6 >= v4[3] >> 1)
    {
      sub_100016A58();
      v4 = v9;
    }

    v4[2] = v6 + 1;
    v4[v6 + 4] = a2;
    *a1 = v4;
  }

  *(a1 + 8) = 0;
}

void sub_10000F94C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = sub_10000EE04(a2, a3);
  v5 = &v3[OBJC_IVAR____TtC7sportsd11ApsListener_pushToken];
  *v5 = v4;
  v5[1] = v6;

  v7 = sub_10001C400();
  v21[0] = sub_10000EE04(v7, v8);
  v21[1] = v9;
  PassthroughSubject.send(_:)();

  if (qword_1000DBA18 != -1)
  {
    sub_10001C0A8(&qword_1000DBA18, v10, v11);
  }

  v12 = type metadata accessor for Logger();
  sub_100007DE8(v12, qword_1000E6D30);
  v13 = v3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_10001C4D0();
    v17 = swift_slowAlloc();
    v21[0] = v17;
    *v16 = 136380675;
    v18 = v5[1];
    if (v18)
    {
      v19 = *v5;
      v20 = v18;
    }

    else
    {
      v19 = 0;
      v20 = 0xE000000000000000;
    }

    sub_1000170D4(v19, v20, v21);
    sub_10001C61C();

    *(v16 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "Did receive push token %{private}s", v16, 0xCu);
    sub_100008A94(v17);
    sub_10000B008(v17);
    sub_10000B008(v16);
  }
}

void sub_10000FB88()
{
  sub_10000AE68();
  v1 = v0;
  v3 = v2;
  v4 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  sub_10001C3C4(v4);
  sub_10000ACFC();
  __chkstk_darwin(v5);
  v7 = v43 - v6;
  v8 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10001C3C4(v8);
  sub_10000ACFC();
  __chkstk_darwin(v9);
  v11 = v43 - v10;
  sub_10001B7F8(v3, &selRef_channelID);
  if (v12)
  {

    if (qword_1000DB9D0 != -1)
    {
      swift_once();
    }

    v45[0] = v3;

    PassthroughSubject.send(_:)();

    sub_10000EA5C();
    goto LABEL_16;
  }

  v13 = sub_10001B7F8(v3, &selRef_topic);
  if (!v14)
  {
    if (qword_1000DBA20 != -1)
    {
      sub_10001C088(&qword_1000DBA20, 0, v15);
    }

    v29 = type metadata accessor for Logger();
    sub_100007DE8(v29, qword_1000E6D48);
    v44 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v44, v30, "This message has no topic", v31, 2u);
      sub_10001C17C();
    }

LABEL_21:
    sub_10000AE50();

    return;
  }

  v16 = v13;
  v17 = v14;
  if (qword_1000DBA18 != -1)
  {
    sub_10001C0A8(&qword_1000DBA18, v14, v15);
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_100007DE8(v18, qword_1000E6D30);

  v43[1] = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    sub_10001C4D0();
    v44 = v16;
    v22 = sub_10001C490();
    v45[0] = v22;
    LODWORD(v16->isa) = 136315138;
    *(&v16->isa + 4) = sub_1000170D4(v44, v17, v45);
    _os_log_impl(&_mh_execute_header, v20, v21, "Did receive push notification for topic %s", v16, 0xCu);
    sub_100008A94(v22);
    sub_10000B008(v22);
    v23 = v16;
    v16 = v44;
    sub_10000B008(v23);
  }

  v24 = v16 == 0xD000000000000011 && 0x80000001000B0480 == v17;
  if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v25 = type metadata accessor for TaskPriority();
    sub_100008E2C(v11, 1, 1, v25);
    sub_10001C594();
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v26;
    v27[5] = v3;
    v28 = v3;
    sub_10004A77C();

LABEL_16:
    sub_10000AE50();
    return;
  }

  v34 = v16 == 0xD000000000000020 && 0x80000001000B04A0 == v17;
  if (!v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    v44 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v39))
    {
      v40 = sub_10001C4D0();
      v41 = swift_slowAlloc();
      v45[0] = v41;
      *v40 = 136315138;
      v42 = sub_1000170D4(v16, v17, v45);

      *(v40 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v44, v39, "Topic not supported: %s", v40, 0xCu);
      sub_100008A94(v41);
      sub_10000B008(v41);
      sub_10001C17C();

      goto LABEL_16;
    }

    goto LABEL_21;
  }

  sub_10000BC8C(v1 + OBJC_IVAR____TtC7sportsd11ApsListener_messageProcessing, v45);
  sub_100008614(v45, v45[3]);
  v35 = sub_10001C1DC();
  v36 = sub_10001B478(v35);
  if (v36)
  {
    v37 = v36;

    v38 = type metadata accessor for Date();
    sub_100008E2C(v7, 1, 1, v38);
    sub_1000A5B88(v37, 1, v7, nullsub_1, 0);

    sub_10001BB44(v7, &qword_1000DC5A0, &unk_1000AB0E0);
    sub_100008A94(v45);
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_10001010C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000101A8);
}

uint64_t sub_1000101A8()
{
  sub_10001BEC4();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    if (qword_1000DBA50 != -1)
    {
      swift_once();
    }

    *(v0 + 112) = qword_1000E6DD8;
    v2 = sub_10001C530();

    return _swift_task_switch(v2);
  }

  else
  {

    sub_10001BEDC();

    return v3();
  }
}

uint64_t sub_100010294()
{
  sub_10001BEC4();
  *(v0 + 120) = sub_10006EC84() & 1;
  sub_10001C740();

  return _swift_task_switch(v1);
}

uint64_t sub_1000102FC()
{
  sub_10001BF48();
  v1 = *(v0 + 120);
  v2 = sub_1000104AC();
  if (v1 == 1)
  {
    if (v2)
    {
      v3 = *(v0 + 104);
      v4 = OBJC_IVAR____TtC7sportsd11ApsListener_apsConnection;
      v5 = *(v3 + OBJC_IVAR____TtC7sportsd11ApsListener_apsConnection);
      if (v5)
      {
        sub_10001B4E4(&off_1000CF110, v5, &selRef__setEnabledTopics_);
        v6 = *(v3 + v4);
        if (v6)
        {
          v7 = &off_1000CF140;
LABEL_10:
          sub_10001B4E4(v7, v6, &selRef__setOpportunisticTopics_);
        }
      }
    }
  }

  else if ((v2 & 1) == 0)
  {
    v8 = *(v0 + 104);
    v9 = OBJC_IVAR____TtC7sportsd11ApsListener_apsConnection;
    v10 = *(v8 + OBJC_IVAR____TtC7sportsd11ApsListener_apsConnection);
    if (v10)
    {
      sub_10001B4E4(_swiftEmptyArrayStorage, v10, &selRef__setEnabledTopics_);
      v6 = *(v8 + v9);
      if (v6)
      {
        v7 = &off_1000CF170;
        goto LABEL_10;
      }
    }
  }

  sub_10000BC8C(*(v0 + 104) + OBJC_IVAR____TtC7sportsd11ApsListener_messageProcessing, v0 + 16);
  sub_100008614((v0 + 16), *(v0 + 40));
  v11 = sub_10001C1DC();
  result = sub_10001B478(v11);
  if (result)
  {
    v13 = result;
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v16 = type metadata accessor for Date();
    sub_100008E2C(v14, 1, 1, v16);
    sub_1000A5B88(v13, 0, v14, nullsub_1, 0);

    sub_10001BB44(v14, &qword_1000DC5A0, &unk_1000AB0E0);
    sub_100008A94((v0 + 16));

    sub_10001BEDC();

    return v17();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000104AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7sportsd11ApsListener_apsConnection);
  if (!v1)
  {
    return 0;
  }

  result = sub_10001B558(v1);
  if (result)
  {
    v3 = *(result + 16);

    return v3 == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100010574(uint64_t a1, void *a2)
{
  v3 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  sub_100008E2C(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;
  v8 = a2;
  sub_100032C10(0, 0, v5, &unk_1000AAFF0, v7);
}

uint64_t sub_100010678()
{
  sub_10001BEC4();
  *(v0 + 24) = type metadata accessor for CloudChannelSubscriptionManager();
  *(v0 + 32) = static CloudChannelSubscriptionManager.shared.getter();
  sub_10001BE48();
  sub_10001BA4C(v1, 255, v2, &protocol conformance descriptor for CloudChannelSubscriptionManager);
  sub_10001C548();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10001C224();
  v3 = sub_10001BEE8();

  return _swift_task_switch(v3);
}

uint64_t sub_100010720()
{
  sub_10001BF48();
  *(v0 + 40) = dispatch thunk of CloudChannelSubscriptionManager.audit(clearExpiredEntries:)();
  *(v0 + 48) = 0;

  sub_10001C740();

  return _swift_task_switch(v1);
}

uint64_t sub_1000107B0()
{
  sub_10001BF48();
  static CloudChannelSubscriptionManager.topic.getter();
  *(v0 + 56) = v1;
  v2 = swift_task_alloc();
  v3 = sub_10001C424(v2);
  *v3 = v4;
  v3[1] = sub_100010858;
  sub_10001C648(*(v0 + 40));

  return sub_100010A44();
}

uint64_t sub_100010858()
{
  sub_10001BEC4();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v5 = *v1;
  sub_10001BE74();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_10001C740();

    return _swift_task_switch(v7);
  }

  else
  {

    sub_10001BE84();

    return v8();
  }
}

uint64_t sub_100010980()
{
  sub_10001BEC4();

  sub_10001BEDC();

  return v0();
}

uint64_t sub_1000109DC()
{
  sub_10001BEC4();

  sub_10001BEDC();

  return v0();
}

uint64_t sub_100010A44()
{
  sub_10001BF48();
  sub_10001C674(v1, v2, v3);
  if (qword_1000DB960 != -1)
  {
    sub_10001BE28(&qword_1000DB960, v4, v5);
  }

  *(v0 + 56) = qword_1000E6C00;
  v6 = swift_task_alloc();
  v7 = sub_10001C424(v6);
  *v7 = v8;
  sub_10001BF34(v7);

  return sub_100013184();
}

uint64_t sub_100010AFC()
{
  sub_10001BF48();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  *v4 = *v1;
  sub_10001C728(v5);
  if (v0)
  {
    sub_10001BF80();

    return v6();
  }

  else
  {
    v8 = sub_10001BF70();

    return _swift_task_switch(v8);
  }
}

uint64_t sub_1000110BC()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v2 = v1;
  v3 = *v0;
  sub_10001BE74();
  *v4 = v3;
  sub_10001C710(v5);
  v6 = sub_10001BF60();

  return _swift_task_switch(v6);
}

uint64_t sub_1000111B0()
{
  sub_10001BEC4();
  v1 = v0[12];
  sub_10001B5BC(v0[10], v0[4], v0[5], v1, &selRef_unsubscribeFromChannels_forTopic_);

  sub_10001BE84();

  return v2();
}

id sub_100011220(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000112F0;
  v9[3] = &unk_1000D0500;
  v6 = _Block_copy(v9);
  v7 = [swift_getObjCClassFromMetadata() timerWithTimeInterval:a1 & 1 repeats:v6 block:a4];
  _Block_release(v6);

  return v7;
}

void sub_1000112F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100011358()
{
  sub_10001C524();
  v4 = v3;
  if (qword_1000DB960 != -1)
  {
    sub_10001BE28(&qword_1000DB960, v1, v2);
  }

  if (*(v4 + 32))
  {
    if (*(v4 + 32) == 1)
    {
      v5 = swift_task_alloc();
      v0[3] = v5;
      *v5 = v0;
      sub_10001C0F0(v5);
      sub_10001C2BC();
      sub_10001C74C();

      return sub_1000125F4();
    }

    else
    {
      v10 = swift_task_alloc();
      v0[4] = v10;
      *v10 = v0;
      sub_10001C0F0(v10);
      sub_10001C2BC();
      sub_10001C74C();

      return sub_100012BBC();
    }
  }

  else
  {
    v8 = swift_task_alloc();
    v0[2] = v8;
    *v8 = v0;
    sub_10001C0F0(v8);
    sub_10001C74C();

    return sub_1000117A4();
  }
}

uint64_t sub_100011504()
{
  sub_10001BEC4();
  sub_10001BF54();
  v1 = *v0;
  sub_10001BE74();
  *v2 = v1;

  sub_10001BEDC();

  return v3();
}

uint64_t sub_1000115E4()
{
  sub_10001BEC4();
  sub_10001BF54();
  v1 = *v0;
  sub_10001BE74();
  *v2 = v1;

  sub_10001BEDC();

  return v3();
}

uint64_t sub_1000116C4()
{
  sub_10001BEC4();
  sub_10001BF54();
  v1 = *v0;
  sub_10001BE74();
  *v2 = v1;

  sub_10001BEDC();

  return v3();
}

uint64_t sub_1000117A4()
{
  sub_10001BEC4();
  v1[4] = v4;
  v1[5] = v0;
  if (qword_1000DB960 != -1)
  {
    sub_10001BE28(&qword_1000DB960, v2, v3);
  }

  v1[6] = qword_1000E6C00;
  v5 = swift_task_alloc();
  v1[7] = v5;
  *v5 = v1;
  sub_10001C0F0(v5);

  return sub_100013D9C();
}

uint64_t sub_100011860()
{
  sub_10001BF48();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v5 = *v1;
  sub_10001BE74();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_10001BF80();

    return v7();
  }

  else
  {
    v9 = sub_10001BF70();

    return _swift_task_switch(v9);
  }
}

uint64_t sub_100011980()
{
  sub_10001BEC4();
  *(v0 + 72) = type metadata accessor for CloudChannelSubscriptionManager();
  *(v0 + 80) = static CloudChannelSubscriptionManager.shared.getter();
  sub_10001BE48();
  sub_10001BA4C(v1, 255, v2, &protocol conformance descriptor for CloudChannelSubscriptionManager);
  sub_10001C548();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10001C224();
  v3 = sub_10001BEE8();

  return _swift_task_switch(v3);
}

uint64_t sub_100011A28()
{
  sub_10001BF48();
  v1 = v0[8];
  v2 = dispatch thunk of CloudChannelSubscriptionManager.signal(demand:)();
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v3;
  if (v1)
  {
    v4 = sub_100012488;
  }

  else
  {

    v4 = sub_100011ACC;
  }

  return _swift_task_switch(v4);
}

uint64_t sub_100011ACC()
{
  sub_10001BF48();
  static CloudChannelSubscriptionManager.topic.getter();
  *(v0 + 112) = v1;
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_100011B78;
  sub_10000AF64();

  return sub_100013184();
}

uint64_t sub_100011B78()
{
  sub_10001C524();
  v3 = v2;
  v4 = *v1;
  sub_10001BE74();
  *v5 = v4;
  *v5 = *v1;

  if (v0)
  {

    sub_10001C74C();

    __asm { BRAA            X1, X16 }
  }

  *(v4 + 128) = v3;
  sub_10001C74C();

  return _swift_task_switch(v8);
}

void sub_100011CEC()
{
  sub_10001C6BC();
  v19 = _swiftEmptyArrayStorage;
  if (v0[16])
  {
    v1 = v0[16];
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = sub_1000163EC(v1);
  v3 = 0;
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    sub_10001B7F8(v4, &selRef_channelID);
    v8 = v7;

    ++v3;
    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001BFA0();
        sub_100016520();
        v19 = v10;
      }

      sub_10001C2DC();
      if (v9)
      {
        sub_10001C40C();
        sub_100016520();
        v19 = v11;
      }

      sub_10001C2CC(v19);
      v3 = v6;
    }
  }

  v13 = v0[12];
  v12 = v0[13];

  v14 = sub_100015240(v19);
  v0[17] = sub_1000155BC(v13, v14);

  v0[18] = sub_10001513C(v15, v12);
  static CloudChannelSubscriptionManager.topic.getter();
  v0[19] = v16;
  v17 = swift_task_alloc();
  v0[20] = v17;
  *v17 = v0;
  v17[1] = sub_100011EF0;
  sub_10001C208();

  sub_100010A44();
}

uint64_t sub_100011EF0()
{
  sub_10001BEC4();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v5 = *v1;
  sub_10001BE74();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
    v7 = sub_1000124E4;
  }

  else
  {

    v7 = sub_100012008;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_100012008()
{
  sub_10001BF48();
  static CloudChannelSubscriptionManager.topic.getter();
  v0[22] = v1;
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_1000120B4;
  sub_10001C648(v0[12]);

  return sub_100015610();
}

uint64_t sub_1000120B4()
{
  sub_10001BEC4();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v5 = *v1;
  sub_10001BE74();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (v0)
  {
    v7 = sub_100012570;
  }

  else
  {

    v7 = sub_1000121C4;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_1000121C4()
{
  v19 = v0;
  if (qword_1000DBA40 != -1)
  {
    sub_10001BE60();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100007DE8(v1, qword_1000E6DA8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[17];
  v7 = v0[12];
  v6 = v0[13];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v8 = 136315394;
    v0[2] = v7;
    v17 = v3;
    sub_100003998(&qword_1000DC400, &qword_1000AAEC0);
    sub_10000A6FC(&qword_1000DC408, &qword_1000DC400, &qword_1000AAEC0, &protocol conformance descriptor for Set<A>);
    sub_10000E304();
    sub_10001C2EC();
    v9 = Sequence<>.joined(separator:)();
    v11 = sub_1000170D4(v9, v10, &v18);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;

    v0[3] = sub_10001513C(v5, v6);
    v12 = Sequence<>.joined(separator:)();
    v14 = v13;

    sub_1000170D4(v12, v14, &v18);
    sub_10001C418();

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v2, v17, "active channels: [%s], expired channels: [%s]", v8, 0x16u);
    swift_arrayDestroy();
    sub_10001C17C();
    sub_10000B008(v8);
  }

  else
  {
  }

  sub_10001BE84();

  return v15();
}

uint64_t sub_100012488()
{
  sub_10001BEC4();

  sub_10001BEDC();

  return v0();
}

uint64_t sub_1000124E4()
{
  sub_10001BF48();

  sub_10001BEDC();

  return v0();
}

uint64_t sub_100012570()
{
  sub_10001BF48();

  sub_10001BEDC();

  return v0();
}

uint64_t sub_1000125F4()
{
  sub_10001BF48();
  sub_10001C3A0(v1, v2, v3, v4);
  if (qword_1000DB960 != -1)
  {
    sub_10001BE28(&qword_1000DB960, v5, v6);
  }

  *(v0 + 56) = qword_1000E6C00;
  v7 = swift_task_alloc();
  v8 = sub_10001C424(v7);
  *v8 = v9;
  sub_10001BF34(v8);

  return sub_100013184();
}

uint64_t sub_1000126AC()
{
  sub_10001BF48();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  *v4 = *v1;
  sub_10001C728(v5);
  if (v0)
  {
    sub_10001BF80();

    return v6();
  }

  else
  {
    v8 = sub_10001BF70();

    return _swift_task_switch(v8);
  }
}

void sub_1000127CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10001C6BC();
  v22 = v15[9];
  if (v22)
  {
    sub_1000163EC(v15[9]);
    sub_10001C580();
    v57 = _swiftEmptyArrayStorage;
    while (v14 != v17)
    {
      if (v21)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *(v16 + 16))
        {
          goto LABEL_39;
        }

        v23 = *(v22 + 8 * v17 + 32);
      }

      v20 = v23;
      v24 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return;
      }

      v18 = sub_10001B7F8(v23, &selRef_channelID);
      v19 = v25;

      ++v17;
      if (v19)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10001BFA0();
          sub_100016520();
          v57 = v27;
        }

        sub_10001C2DC();
        if (v26)
        {
          sub_10001C40C();
          sub_100016520();
          v57 = v28;
        }

        sub_10001C2CC(v57);
        v17 = v24;
      }
    }

    sub_10001C3D0();
LABEL_16:
    v29 = (v18 + 16 * v20);
    while (v20 + v19 + 1 != 1)
    {
      sub_10001C554();
      if (v26)
      {
        goto LABEL_40;
      }

      v32 = v15[2];
      v33 = v15[3];
      v35 = *(v29 - 1);
      v34 = *v29;
      if (v35 == v32 && v34 == v33)
      {
        v35 = v15[2];
LABEL_26:

        a11 = _swiftEmptyArrayStorage;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10001C430();
        }

        v37 = _swiftEmptyArrayStorage[2];
        if (v37 >= _swiftEmptyArrayStorage[3] >> 1)
        {
          sub_10001C40C();
          sub_100017B68(v39, v40, v41);
        }

        _swiftEmptyArrayStorage[2] = v37 + 1;
        v38 = &_swiftEmptyArrayStorage[2 * v37];
        v38[4] = v35;
        v38[5] = v34;
        goto LABEL_16;
      }

      if (sub_10001C4E8(v30, v31, v32, v33))
      {
        goto LABEL_26;
      }
    }

    v42 = _swiftEmptyArrayStorage[2];

    if (v42)
    {
      sub_10001BE84();
      sub_10001C208();

      v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, v57, a11, a12, a13, a14);
      return;
    }
  }

  objc_allocWithZone(PKPublicChannel);

  v51 = sub_10001C53C();
  v15[10] = sub_1000164BC(v51, v52);
  v53 = swift_task_alloc();
  v54 = sub_10001C65C(v53);
  *v54 = v55;
  sub_10001C0FC(v54);
  sub_10001C208();

  sub_10000F440();
}

uint64_t sub_100012A68()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v2 = v1;
  v3 = *v0;
  sub_10001BE74();
  *v4 = v3;
  sub_10001C710(v5);
  v6 = sub_10001BF60();

  return _swift_task_switch(v6);
}

uint64_t sub_100012B5C()
{
  sub_10001BEC4();
  v2 = sub_10001C340();
  sub_10001B668(v2, v3, v4, v5);

  sub_10001BE84();

  return v6();
}

uint64_t sub_100012BBC()
{
  sub_10001BF48();
  sub_10001C3A0(v1, v2, v3, v4);
  if (qword_1000DB960 != -1)
  {
    sub_10001BE28(&qword_1000DB960, v5, v6);
  }

  *(v0 + 56) = qword_1000E6C00;
  v7 = swift_task_alloc();
  v8 = sub_10001C424(v7);
  *v8 = v9;
  sub_10001BF34(v8);

  return sub_100013184();
}

uint64_t sub_100012C74()
{
  sub_10001BF48();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  *v4 = *v1;
  sub_10001C728(v5);
  if (v0)
  {
    sub_10001BF80();

    return v6();
  }

  else
  {
    v8 = sub_10001BF70();

    return _swift_task_switch(v8);
  }
}

void sub_100012D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10001C6BC();
  v22 = v15[9];
  if (v22)
  {
    sub_1000163EC(v15[9]);
    sub_10001C580();
    a10 = _swiftEmptyArrayStorage;
    while (v14 != v17)
    {
      if (v21)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *(v16 + 16))
        {
          goto LABEL_39;
        }

        v23 = *(v22 + 8 * v17 + 32);
      }

      v20 = v23;
      v24 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return;
      }

      v18 = sub_10001B7F8(v23, &selRef_channelID);
      v19 = v25;

      ++v17;
      if (v19)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10001BFA0();
          sub_100016520();
          a10 = v27;
        }

        sub_10001C2DC();
        if (v26)
        {
          sub_10001C40C();
          sub_100016520();
          a10 = v28;
        }

        sub_10001C2CC(a10);
        v17 = v24;
      }
    }

    sub_10001C3D0();
LABEL_16:
    v29 = (v18 + 16 * v20);
    while (v20 + v19 + 1 != 1)
    {
      sub_10001C554();
      if (v26)
      {
        goto LABEL_40;
      }

      v32 = v15[2];
      v33 = v15[3];
      v35 = *(v29 - 1);
      v34 = *v29;
      if (v35 == v32 && v34 == v33)
      {
        v35 = v15[2];
LABEL_26:

        a11 = _swiftEmptyArrayStorage;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10001C430();
        }

        v37 = _swiftEmptyArrayStorage[2];
        if (v37 >= _swiftEmptyArrayStorage[3] >> 1)
        {
          sub_10001C40C();
          sub_100017B68(v39, v40, v41);
        }

        _swiftEmptyArrayStorage[2] = v37 + 1;
        v38 = &_swiftEmptyArrayStorage[2 * v37];
        v38[4] = v35;
        v38[5] = v34;
        goto LABEL_16;
      }

      if (sub_10001C4E8(v30, v31, v32, v33))
      {
        goto LABEL_26;
      }
    }

    v42 = _swiftEmptyArrayStorage[2];

    if (v42)
    {
      objc_allocWithZone(PKPublicChannel);

      v43 = sub_10001C53C();
      v15[10] = sub_1000164BC(v43, v44);
      v45 = swift_task_alloc();
      v46 = sub_10001C65C(v45);
      *v46 = v47;
      sub_10001C0FC(v46);
      sub_10001C208();

      sub_10000F440();
      return;
    }
  }

  sub_10001BE84();
  sub_10001C208();

  v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100013030()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v2 = v1;
  v3 = *v0;
  sub_10001BE74();
  *v4 = v3;
  sub_10001C710(v5);
  v6 = sub_10001BF60();

  return _swift_task_switch(v6);
}

uint64_t sub_100013124()
{
  sub_10001BEC4();
  v2 = sub_10001C340();
  sub_10001B6D0(v2, v3, v4, v5);

  sub_10001BE84();

  return v6();
}

uint64_t sub_100013184()
{
  sub_10001BEC4();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v4;
  if (qword_1000DB960 != -1)
  {
    sub_10001BE28(&qword_1000DB960, v2, v3);
  }

  v1[6] = qword_1000E6C00;
  v5 = swift_task_alloc();
  v1[7] = v5;
  *v5 = v1;
  sub_10001C0F0(v5);

  return sub_10000F440();
}

uint64_t sub_10001323C()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v2 = v1;
  v3 = *v0;
  sub_10001BE74();
  *v4 = v3;
  *(v6 + 64) = v5;

  v7 = sub_10001BF60();

  return _swift_task_switch(v7);
}

uint64_t sub_100013338()
{
  sub_10001C524();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  sub_10001BFBC();
  v7 = sub_10001BA4C(v4, v5, v6, &unk_1000AAE58);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  v9 = *(v0 + 32);
  *(v8 + 16) = v1;
  *(v8 + 24) = v3;
  *(v8 + 32) = v9;
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  v11 = sub_100003998(&qword_1000DC450, &qword_1000AAEE8);
  *v10 = v0;
  v10[1] = sub_10001347C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v2, v7, 0xD00000000000001BLL, 0x80000001000B1270, sub_10001B8A8, v8, v11);
}

uint64_t sub_10001347C()
{
  sub_10001BEC4();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v5 = *v1;
  sub_10001BE74();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = sub_1000135F0;
  }

  else
  {

    v7 = sub_10001358C;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_10001358C()
{
  sub_10001BEC4();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000135F0()
{
  sub_10001BEC4();

  sub_10001BEDC();

  return v1();
}

void sub_100013654(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003998(&qword_1000DC458, &qword_1000AAEF0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = aBlock - v11;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v10 + 16))(v12, a1, v9);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v10 + 32))(v15 + v14, v12, v9);
  aBlock[4] = sub_10001B9AC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100013CF8;
  aBlock[3] = &unk_1000D0488;
  v16 = _Block_copy(aBlock);

  sub_10001B738(a3, a4, v16, a2);
  _Block_release(v16);
}

uint64_t sub_100013840(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003998(&qword_1000DC460, &qword_1000AAEF8);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for CloudChannelError();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v31 = a3;
    swift_errorRetain();
    if (qword_1000DBA40 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100007DE8(v13, qword_1000E6DA8);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v30 = v8;
      v17 = v16;
      v29 = swift_slowAlloc();
      v33 = v29;
      *v17 = 136315138;
      swift_getErrorValue();
      v18 = Error.localizedDescription.getter();
      v20 = sub_1000170D4(v18, v19, &v33);

      *(v17 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to fetch registered channels - error: %s", v17, 0xCu);
      sub_100008A94(v29);

      v8 = v30;
    }

    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v33 = 0xD00000000000002DLL;
    v34 = 0x80000001000B12B0;
    swift_getErrorValue();
    v21._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v21);

    v22 = v34;
    *v12 = v33;
    v12[1] = v22;
    (*(v10 + 104))(v12, enum case for CloudChannelError.failedToFetchRegisteredChannels(_:), v9);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      if (*&Strong[OBJC_IVAR____TtC7sportsd11ApsListener_scoreboardProcessor])
      {

        (*(v10 + 16))(v8, v12, v9);
        sub_100008E2C(v8, 0, 1, v9);
        sub_10003F3A8(v8);

        sub_10001BB44(v8, &qword_1000DC460, &qword_1000AAEF8);
      }

      else
      {
      }
    }

    sub_10001BA4C(&qword_1000DC468, 255, &type metadata accessor for CloudChannelError, &protocol conformance descriptor for CloudChannelError);
    v26 = swift_allocError();
    (*(v10 + 16))(v27, v12, v9);
    v32 = v26;
    sub_100003998(&qword_1000DC458, &qword_1000AAEF0);
    CheckedContinuation.resume(throwing:)();

    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v33 = a1;

    sub_100003998(&qword_1000DC458, &qword_1000AAEF0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100013CF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10001BDC0(0, &qword_1000DC438, PKPublicChannel_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_100013D9C()
{
  sub_10001BEC4();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_100003998(&qword_1000DC460, &qword_1000AAEF8);
  sub_10001C3C4(v3);
  v1[6] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[7] = v4;
  sub_10000AC84(v4);
  v1[8] = v5;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = type metadata accessor for CloudChannelSubscription.CacheValue();
  v1[11] = v6;
  sub_10000AC84(v6);
  v1[12] = v7;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v8 = type metadata accessor for CloudChannelSubscription.Demand();
  v1[15] = v8;
  sub_10000AC84(v8);
  v1[16] = v9;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  if (qword_1000DB960 != -1)
  {
    sub_10001BE28(&qword_1000DB960, v10, v11);
  }

  v1[19] = qword_1000E6C00;
  v12 = sub_10001C530();

  return _swift_task_switch(v12);
}

uint64_t sub_100013F74()
{
  sub_10001BEC4();
  if (qword_1000DB9E0 != -1)
  {
    swift_once();
  }

  *(v0 + 160) = qword_1000E6CE8;
  v1 = sub_10001C530();

  return _swift_task_switch(v1);
}

uint64_t sub_100014004()
{
  sub_10001BEC4();
  *(v0 + 168) = *(*(v0 + 160) + 112);

  v1 = sub_10001C53C();

  return _swift_task_switch(v1);
}

uint64_t sub_100014330()
{
  sub_10001BEC4();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v5 = *v1;
  sub_10001BE74();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (v0)
  {
    v7 = sub_100014D40;
  }

  else
  {

    v7 = sub_100014440;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_100014650()
{
  sub_10001BF48();
  v1 = v0[24];
  v0[29] = dispatch thunk of CloudChannelSubscriptionManager.readChannelMap()();
  v0[30] = v1;

  if (v1)
  {

    v2 = sub_100014DE0;
  }

  else
  {
    v2 = sub_100014700;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100014700()
{
  v34 = v0[29];
  v27 = v0[25] + 56;
  sub_10001BF08();
  v3 = v2 & v1;
  v31 = v5;
  v32 = v0;
  v6 = (63 - v4) >> 6;
  v30 = v7;
  v29 = (v0[8] + 8);

  v9 = 0;
  v28 = v6;
  while (v3)
  {
    v10 = v32;
LABEL_9:
    if (!*(v34 + 16))
    {
      goto LABEL_18;
    }

    v12 = (*(v31 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v3)))));
    v14 = *v12;
    v13 = v12[1];

    v15 = sub_100017538(v14, v13);
    if ((v16 & 1) == 0)
    {

LABEL_18:

LABEL_19:

      v26 = swift_task_alloc();
      v10[31] = v26;
      *v26 = v10;
      v26[1] = sub_100014AA8;

      return sub_100033514();
    }

    v3 &= v3 - 1;
    v18 = v10[13];
    v17 = v10[14];
    v19 = v10[10];
    v20 = v10[9];
    v21 = v10[7];
    v22 = v10[11];
    (*(v30 + 16))(v18, *(v34 + 56) + *(v30 + 72) * v15);
    (*(v30 + 32))(v17, v18, v22);
    CloudChannelSubscription.CacheValue.expiration.getter();
    static Date.now.getter();
    sub_10001BA4C(&qword_1000DC478, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v33 = dispatch thunk of static Comparable.< infix(_:_:)();

    v23 = *v29;
    (*v29)(v20, v21);
    v23(v19, v21);
    v24 = v22;
    v6 = v28;
    result = (*(v30 + 8))(v17, v24);
    if (v33)
    {
      v10 = v32;

      goto LABEL_19;
    }
  }

  v10 = v32;
  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v6)
    {
      break;
    }

    v3 = *(v27 + 8 * v11);
    ++v9;
    if (v3)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  sub_10001BEF8();

  sub_10001BE84();

  return v25();
}

uint64_t sub_100014AA8()
{
  sub_10001BF48();
  sub_10001BE94();
  *v3 = v2;
  v4 = *v1;
  sub_10001BED0();
  *v5 = v4;
  *(v7 + 256) = v6;
  *(v7 + 264) = v0;

  if (v0)
  {
    v8 = sub_100014EF8;
  }

  else
  {
    v8 = sub_100014BCC;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_100014BCC()
{
  sub_10001BF48();
  *(v0 + 272) = static CloudChannelSubscriptionManager.shared.getter();
  sub_10000AF64();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10001C224();
  v1 = sub_10001BEE8();

  return _swift_task_switch(v1);
}

uint64_t sub_100014C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001C50C();
  sub_10001C370();
  v11 = *(v10 + 264);
  dispatch thunk of CloudChannelSubscriptionManager.updateChannelMap(_:)();
  *(v10 + 280) = v11;
  if (v11)
  {
    sub_10001C530();
    sub_10001C358();

    return _swift_task_switch(v12);
  }

  else
  {

    sub_10001BEF8();

    sub_10001BE84();
    sub_10001C358();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
  }
}

uint64_t sub_100014D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001C50C();
  sub_10001C370();

  sub_10001BEF8();

  sub_10001BEDC();
  sub_10001C358();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_100014DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001C50C();
  sub_10001C370();
  if (*(*(v10 + 40) + OBJC_IVAR____TtC7sportsd11ApsListener_scoreboardProcessor))
  {
    sub_10001C1E8();
    swift_errorRetain();
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    sub_10001C610();
    type metadata accessor for CloudChannelError();
    sub_10001BF24();
    v12 = swift_dynamicCast();
    sub_10001C198(v12);

    sub_10001BB44(v11, &qword_1000DC460, &qword_1000AAEF8);
  }

  swift_willThrow();
  sub_10001BEF8();

  sub_10001BEDC();
  sub_10001C358();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_100014EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001C50C();
  sub_10001C370();
  if (*(*(v10 + 40) + OBJC_IVAR____TtC7sportsd11ApsListener_scoreboardProcessor))
  {
    sub_10001C1E8();
    swift_errorRetain();
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    sub_10001C610();
    type metadata accessor for CloudChannelError();
    sub_10001BF24();
    v12 = swift_dynamicCast();
    sub_10001C198(v12);

    sub_10001BB44(v11, &qword_1000DC460, &qword_1000AAEF8);
  }

  swift_willThrow();
  sub_10001BEF8();

  sub_10001BEDC();
  sub_10001C358();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_100015010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001C50C();
  sub_10001C370();

  if (*(*(v10 + 40) + OBJC_IVAR____TtC7sportsd11ApsListener_scoreboardProcessor))
  {
    sub_10001C1E8();
    swift_errorRetain();
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    sub_10001C610();
    type metadata accessor for CloudChannelError();
    sub_10001BF24();
    v12 = swift_dynamicCast();
    sub_10001C198(v12);

    sub_10001BB44(v11, &qword_1000DC460, &qword_1000AAEF8);
  }

  swift_willThrow();
  sub_10001BEF8();

  sub_10001BEDC();
  sub_10001C358();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_10001513C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100019204(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100015240(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_100019204(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_100015300()
{
  sub_10000AE68();
  v1 = v0;
  v2 = type metadata accessor for Sport();
  sub_10000AC48();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v18 - v9;
  sub_10001BA4C(&qword_1000DC4E0, 255, &type metadata accessor for Sport, &protocol conformance descriptor for Sport);
  v18[1] = Set.init(minimumCapacity:)();
  v11 = *(v1 + 16);
  if (v11)
  {
    v14 = *(v4 + 16);
    v12 = v4 + 16;
    v13 = v14;
    sub_10001C290();
    v18[0] = v1;
    v16 = v1 + v15;
    v17 = *(v12 + 56);
    do
    {
      v13(v7, v16, v2);
      sub_100019348(v10, v7);
      (*(v12 - 8))(v10, v2);
      v16 += v17;
      --v11;
    }

    while (v11);
  }

  else
  {
    sub_10001C1DC();
  }

  sub_10000AE50();
}

uint64_t sub_1000154A0(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_100019204(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *sub_1000155BC(uint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_100019618(a1);
    return a2;
  }

  else
  {

    return sub_100019B28(a1, a2);
  }
}

uint64_t sub_100015610()
{
  sub_10001BF48();
  sub_10001C674(v1, v2, v3);
  if (qword_1000DB960 != -1)
  {
    sub_10001BE28(&qword_1000DB960, v4, v5);
  }

  *(v0 + 56) = qword_1000E6C00;
  v6 = swift_task_alloc();
  v7 = sub_10001C424(v6);
  *v7 = v8;
  sub_10001BF34(v7);

  return sub_100013184();
}

uint64_t sub_1000156C8()
{
  sub_10001BF48();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  *v4 = *v1;
  sub_10001C728(v5);
  if (v0)
  {
    sub_10001BF80();

    return v6();
  }

  else
  {
    v8 = sub_10001BF70();

    return _swift_task_switch(v8);
  }
}

uint64_t sub_100015C88()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v2 = v1;
  v3 = *v0;
  sub_10001BE74();
  *v4 = v3;
  sub_10001C710(v5);
  v6 = sub_10001BF60();

  return _swift_task_switch(v6);
}

uint64_t sub_100015D7C()
{
  sub_10001BEC4();
  v1 = v0[12];
  sub_10001B5BC(v0[10], v0[4], v0[5], v1, &selRef_subscribeToChannels_forTopic_);

  sub_10001BE84();

  return v2();
}

void sub_100015DEC()
{
  sub_10000AE68();
  v1 = v0;
  v3 = v2;
  v4 = sub_100003998(&qword_1000DC460, &qword_1000AAEF8);
  sub_10001C3C4(v4);
  sub_10000ACFC();
  v6 = __chkstk_darwin(v5);
  v44 = (v39.n128_u64 - v7);
  if (!v3)
  {
    goto LABEL_32;
  }

  if (v3 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_30:
    sub_10000AE50();
    return;
  }

  v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_30;
  }

LABEL_4:
  if (v8 >= 1)
  {
    v9 = 0;
    v45 = v3 & 0xC000000000000001;
    v46 = OBJC_IVAR____TtC7sportsd11ApsListener_scoreboardProcessor;
    v42 = "ibe to channel [";
    v43 = "registered channels - error: ";
    v41 = enum case for CloudChannelError.failedToSubscribe(_:);
    v6.n128_u64[0] = 136315650;
    v39 = v6;
    v40 = v3;
    do
    {
      if (v45)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v3 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = sub_10001B7F8(v10, &selRef_channelID);
      if (v13)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      v49 = v14;
      v15 = 0xE000000000000000;
      if (v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      v17 = sub_10001B7F8(v11, &selRef_pushTopic);
      if (v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0;
      }

      v47 = v19;
      if (v18)
      {
        v15 = v18;
      }

      v48 = [v11 failureReason];
      if (qword_1000DBA40 != -1)
      {
        sub_10001BE60();
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100007DE8(v20, qword_1000E6DA8);
      sub_10001C1DC();

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = v1;
        v24 = swift_slowAlloc();
        v25 = v8;
        v26 = swift_slowAlloc();
        v51 = v26;
        *v24 = v39.n128_u32[0];
        *(v24 + 4) = sub_1000170D4(v47, v15, &v51);
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1000170D4(v49, v16, &v51);
        *(v24 + 22) = 1024;
        *(v24 + 24) = v48;
        _os_log_impl(&_mh_execute_header, v21, v22, "Failed to subscribe to channel [%s:%s] with failure reason: %d", v24, 0x1Cu);
        swift_arrayDestroy();
        v27 = v26;
        v8 = v25;
        sub_10000B008(v27);
        v28 = v24;
        v1 = v23;
        v3 = v40;
        sub_10000B008(v28);
      }

      if (*(v1 + v46))
      {
        v51 = 0;
        v52 = 0xE000000000000000;

        _StringGuts.grow(_:)(62);
        v29._countAndFlagsBits = 0xD000000000000020;
        v29._object = (v43 | 0x8000000000000000);
        String.append(_:)(v29);
        v30._countAndFlagsBits = v47;
        v30._object = v15;
        String.append(_:)(v30);

        v31._countAndFlagsBits = 58;
        v31._object = 0xE100000000000000;
        String.append(_:)(v31);
        v32._countAndFlagsBits = v49;
        v32._object = v16;
        String.append(_:)(v32);

        v33._object = (v42 | 0x8000000000000000);
        v33._countAndFlagsBits = 0xD000000000000017;
        String.append(_:)(v33);
        v50 = v48;
        v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v34);

        v35 = v52;
        v36 = v44;
        *v44 = v51;
        *(v36 + 8) = v35;
        v37 = type metadata accessor for CloudChannelError();
        sub_10001C2AC();
        (*(v38 + 104))(v36, v41, v37);
        sub_100008E2C(v36, 0, 1, v37);
        sub_10003F3A8(v36);

        sub_10001BB44(v36, &qword_1000DC460, &qword_1000AAEF8);
      }

      else
      {
      }

      ++v9;
    }

    while (v8 != v9);
    goto LABEL_30;
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_1000162C4(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1000162E0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000162F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_100016334(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_100016378(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1000163EC(unint64_t a1)
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

id sub_100016410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = String._bridgeToObjectiveC()();

LABEL_6:
  v10 = [v5 initWithEnvironmentName:v8 namedDelegatePort:v9 queue:a5];

  return v10;
}

id sub_1000164BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithChannelID:v3];

  return v4;
}

void sub_100016520()
{
  sub_10001C1D0();
  if (v4)
  {
    sub_10001BEB4();
    if (v5 != v6)
    {
      sub_10001C05C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10001BEA4();
    }
  }

  sub_10001BF90();
  if (v3)
  {
    sub_100003998(&qword_1000DC430, &qword_1000AA610);
    v7 = sub_10001C478();
    sub_10001C568(v7);
    sub_10001C29C(v8);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000165F4()
{
  sub_10001C1D0();
  if (v4)
  {
    sub_10001BEB4();
    if (v5 != v6)
    {
      sub_10001C05C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10001BEA4();
    }
  }

  sub_10001BF90();
  if (v3)
  {
    sub_100003998(&qword_1000DC418, &qword_1000AAEC8);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * v8 - 64;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_1000166C8()
{
  sub_10001C1D0();
  if (v4)
  {
    sub_10001BEB4();
    if (v5 != v6)
    {
      sub_10001C05C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10001BEA4();
    }
  }

  sub_10001BF90();
  if (v3)
  {
    sub_100003998(&qword_1000DC520, &qword_1000AAF68);
    v7 = sub_10001C478();
    sub_10001C568(v7);
    sub_10001C29C(v8);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v7 != v0 || &v0[4 * v2 + 4] <= v7 + 4)
    {
      v10 = sub_10001BFB0();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100003998(&qword_1000DC528, &qword_1000AAF70);
    sub_10001BFB0();
    swift_arrayInitWithCopy();
  }
}

void sub_1000167BC()
{
  sub_10001C078();
  if (v4)
  {
    sub_10001C068();
    if (v6 != v7)
    {
      sub_10001C5A0();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001C030();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10001C6F8(v2, v5, &qword_1000DC548, &qword_1000AAF90);
  sub_10001C37C();
  type metadata accessor for SportingEventRunningClockFeature();
  sub_10001C3B8();
  sub_10001C290();
  if (v1)
  {
    sub_10001C268(&type metadata accessor for SportingEventRunningClockFeature, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10001C010();
  }
}

void sub_100016894()
{
  sub_10001C078();
  if (v4)
  {
    sub_10001C068();
    if (v6 != v7)
    {
      sub_10001C5A0();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001C030();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10001C6F8(v2, v5, &qword_1000DC540, &qword_1000AAF88);
  sub_10001C37C();
  type metadata accessor for SportingEventSubscription.Competitor();
  sub_10001C3B8();
  sub_10001C290();
  if (v1)
  {
    sub_10001C268(&type metadata accessor for SportingEventSubscription.Competitor, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10001C010();
  }
}

void sub_10001696C()
{
  sub_10001C078();
  if (v4)
  {
    sub_10001C068();
    if (v6 != v7)
    {
      sub_10001C5A0();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001C030();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10001C6F8(v2, v5, &qword_1000DC518, &qword_1000AAF60);
  sub_10001C37C();
  type metadata accessor for IngestionError();
  sub_10001C3B8();
  sub_10001C290();
  if (v1)
  {
    sub_10001C268(&type metadata accessor for IngestionError, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10001C010();
  }
}

void sub_100016A58()
{
  sub_10001C1D0();
  if (v5)
  {
    sub_10001BEB4();
    if (v7 != v8)
    {
      sub_10001C05C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10001BEA4();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = *(v0 + 2);
  if (v6 <= v9)
  {
    v10 = *(v0 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_100003998(v3, v4);
    v11 = sub_10001C478();
    sub_10001C568(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 8);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = v0 + 32;
  if (v1)
  {
    if (v11 != v0 || &v14[8 * v9] <= v13)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v9);
  }
}

void sub_100016B2C()
{
  sub_10001C1D0();
  if (v3)
  {
    sub_10001BEB4();
    if (v5 != v6)
    {
      sub_10001C05C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10001BEA4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100003998(&qword_1000DC4A0, &qword_1000AEBA0);
    v9 = sub_10001C478();
    sub_10001C568(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * (v10 / 16);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_100016C08()
{
  sub_10001C1D0();
  if (v4)
  {
    sub_10001BEB4();
    if (v5 != v6)
    {
      sub_10001C05C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10001BEA4();
    }
  }

  sub_10001BF90();
  if (v3)
  {
    sub_100003998(&qword_1000DC4D0, &qword_1000AAF28);
    v7 = sub_10001C478();
    sub_10001C568(v7);
    sub_10001C29C(v8);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v7 != v0 || &v0[v2 + 4] <= v7 + 4)
    {
      v10 = sub_10001BFB0();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100003998(&qword_1000DC4D8, &qword_1000AAF30);
    sub_10001BFB0();
    swift_arrayInitWithCopy();
  }
}

void sub_100016CFC()
{
  sub_10001C078();
  if (v4)
  {
    sub_10001C068();
    if (v6 != v7)
    {
      sub_10001C5A0();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001C030();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10001C6F8(v2, v5, &qword_1000DC488, &qword_1000AAF00);
  sub_10001C37C();
  type metadata accessor for CloudChannelSubscription.Demand();
  sub_10001C3B8();
  sub_10001C290();
  if (v1)
  {
    sub_10001C268(&type metadata accessor for CloudChannelSubscription.Demand, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10001C010();
  }
}

void *sub_100016DD4(uint64_t a1, uint64_t a2)
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

  sub_100003998(&qword_1000DC4A8, &qword_1000AAF20);
  v4 = sub_10001C478();
  sub_10001C568(v4);
  v4[2] = a1;
  v4[3] = (2 * (v5 / 8)) | 1;
  return v4;
}

void *sub_100016E48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003998(a3, a4);
  v8 = sub_10001C37C();
  v9 = a5(v8);
  sub_10000AC84(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_100016F38(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_10001C000(a3, result);
  }

  return result;
}

char *sub_100016F60(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_10001C000(a3, result);
  }

  return result;
}

void sub_100016F80(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), sub_10001C2AC(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = sub_10001C284();

    _swift_arrayInitWithTakeFrontToBack(v10);
  }

  else if (a3 != a1)
  {
    v9 = sub_10001C284();

    _swift_arrayInitWithTakeBackToFront(v9);
  }
}

uint64_t sub_100017078(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1000170D4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1000170D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_10001C740();
  v9 = sub_100017194(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_10001B798(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_100008A94(v14);
  return v10;
}

unint64_t sub_100017194(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100017294(a5, a6);
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

void *sub_100017294(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000202A8(a1, a2);
  sub_1000172E0(&off_1000CEEC0);
  return v3;
}

uint64_t sub_1000172E0(uint64_t result)
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

    result = sub_100017434(result, v7, 1, v3);
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

void *sub_1000173C4(uint64_t a1, uint64_t a2)
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

  sub_100003998(&qword_1000DC418, &qword_1000AAEC8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100017434(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003998(&qword_1000DC418, &qword_1000AAEC8);
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

_BYTE **sub_100017528(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_100017538(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v2 = sub_10001C400();

  return sub_100007FEC(v2, v3, v4);
}

unint64_t sub_1000175AC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100083914(a1);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_100017810(a1, v2);
}

unint64_t sub_100017634(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100017908(a1, v4);
}

void sub_100017678()
{
  sub_10001C5C0();
  type metadata accessor for SportingEventPlayLevel();
  sub_10001BA4C(&qword_1000DC4B0, 255, &type metadata accessor for SportingEventPlayLevel, &protocol conformance descriptor for SportingEventPlayLevel);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_1000179CC();
}

void sub_100017744()
{
  sub_10001C5C0();
  type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
  sub_10001BA4C(&qword_1000DC4C0, 255, &type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName, &protocol conformance descriptor for SportingEventCompetitorScoreStatisticType.StatisticName);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_1000179CC();
}

unint64_t sub_100017810(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = sub_100083914(*(*(v2 + 48) + i));
    v8 = v7;
    if (v6 == sub_100083914(v3) && v8 == v9)
    {

      return i;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_100017908(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_10001BA94(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_10001BAF0(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

void sub_1000179CC()
{
  sub_10000AE68();
  v21 = v1;
  v22 = v2;
  v20 = v3;
  v5 = v4;
  v18 = v6;
  v8 = v7(0);
  sub_10000AC48();
  v10 = v9;
  sub_10000ACFC();
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - v13;
  v23 = v0 + 64;
  v19 = v0;
  v15 = ~(-1 << *(v0 + 32));
  for (i = v5 & v15; ((1 << i) & *(v23 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v15)
  {
    (*(v10 + 16))(v14, *(v19 + 48) + *(v10 + 72) * i, v8, v12);
    sub_10001BA4C(v20, 255, v21, v22);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v14, v8);
    if (v17)
    {
      break;
    }
  }

  sub_10000AE50();
}

void *sub_100017B48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100017D38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100017B68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100017E70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100017C00(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100018084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100017CA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000182D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100017D18(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100018590(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100017D38(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003998(&qword_1000DC5C8, &qword_1000AB008);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003998(&qword_1000DC5D0, &qword_1000AB010);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100017E70(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003998(&qword_1000DC430, &qword_1000AA610);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100017F78()
{
  sub_10001C1D0();
  if (v4)
  {
    sub_10001BEB4();
    if (v5 != v6)
    {
      sub_10001C05C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10001BEA4();
    }
  }

  sub_10001BF90();
  if (v3)
  {
    sub_100003998(&qword_1000DC4F8, &qword_1000AAF40);
    v7 = swift_allocObject();
    sub_10001C568(v7);
    v7[2] = v2;
    v7[3] = 2 * (v8 / 24);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v7 != v0 || &v0[3 * v2 + 4] <= v7 + 4)
    {
      v10 = sub_10001BFB0();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100003998(&qword_1000DC500, &qword_1000AAF48);
    sub_10001BFB0();
    swift_arrayInitWithCopy();
  }
}

void *sub_100018084(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003998(&qword_1000DC490, &qword_1000AAF08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003998(&qword_1000DC498, &unk_1000AAF10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000181B4(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = a1;
  if (a3)
  {
    sub_10001BEB4();
    if (v9 != v10)
    {
      sub_10001C05C();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_10001BEA4();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = a4[2];
  if (v8 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    sub_100003998(a5, a6);
    v13 = swift_allocObject();
    sub_10001C568(v13);
    v13[2] = v11;
    v13[3] = 2 * (v14 / 40);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (v7)
  {
    if (v13 != a4 || &a4[5 * v11 + 4] <= v13 + 4)
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    v16 = sub_10001C284();
    sub_100003998(v16, v17);
    swift_arrayInitWithCopy();
  }
}

void *sub_1000182D0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003998(&qword_1000DC580, &qword_1000AAFB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003998(&qword_1000DC588, &qword_1000AAFB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100018400()
{
  sub_10000AE68();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    sub_10001BEB4();
    if (v13 != v14)
    {
      sub_10001C05C();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_10001BEA4();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v23 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_100003998(v1, v2);
  v17 = sub_10001C610();
  v18 = v6(v17);
  sub_10000AC84(v18);
  v20 = *(v19 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v24 = j__malloc_size(v23);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v24 - v22 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_23;
  }

  v23[2] = v15;
  v23[3] = 2 * ((v24 - v22) / v20);
LABEL_18:
  v6(0);
  sub_10001C3B8();
  sub_10001C290();
  if (v10)
  {
    sub_100016F80(v8 + v26, v15, v23 + v26, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_10000AE50();
}

char *sub_100018590(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003998(&qword_1000DC538, &qword_1000AAF80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

Swift::Int sub_10001868C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v11[3] = v11;
  v11[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v6 = &v11[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_10008BE9C(0, v5, v6);
    v7 = sub_100018DE4(v6, v5, v3, a2);
  }

  else
  {
    v9 = swift_slowAlloc();
    v7 = sub_100018F70(v9, v5, sub_10001B884);
  }

  return v7;
}

Swift::Int sub_10001882C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003998(&qword_1000DC448, &qword_1000AAEE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_10008BE9C(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100018A88(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Sport();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100003998(&qword_1000DC4F0, &qword_1000AAF38);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_10008BE9C(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10001BA4C(&qword_1000DC4E0, 255, &type metadata accessor for Sport, &protocol conformance descriptor for Sport);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_100018DE4(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v24 = *(a3 + 16);
  v22 = result;
  v23 = a3 + 32;
  v7 = a4 + 56;
  while (1)
  {
    v21 = v5;
LABEL_3:
    if (v6 == v24)
    {
      goto LABEL_19;
    }

    if (v6 >= v24)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_21;
    }

    v8 = (v23 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    v25 = v6 + 1;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = ~(-1 << *(a4 + 32));
    do
    {
      v13 = v11 & v12;
      v14 = (v11 & v12) >> 6;
      v15 = 1 << (v11 & v12);
      if ((v15 & *(v7 + 8 * v14)) == 0)
      {

        v6 = v25;
        goto LABEL_3;
      }

      v16 = (*(a4 + 48) + 16 * v13);
      if (*v16 == v10 && v16[1] == v9)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v11 = v13 + 1;
    }

    while ((v18 & 1) == 0);

    v19 = v22[v14];
    v22[v14] = v19 | v15;
    v6 = v25;
    if ((v19 & v15) != 0)
    {
      goto LABEL_3;
    }

    v5 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_19:

      return sub_100018FEC(v22, a2, v21, a4);
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}