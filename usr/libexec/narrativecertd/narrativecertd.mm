int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for NarrativeCertDaemon();
  swift_allocObject();
  qword_10002D500 = sub_10001900C();
  sub_10001ABA8();
  dispatch_main();
}

Swift::Int sub_100001588(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000015F0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100001700(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000017A8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1000017F4()
{
  v0 = type metadata accessor for Logger();
  sub_100003030(v0, qword_10002CB80);
  sub_100002AD8(v0, qword_10002CB80);
  narrativecertdMachServiceName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000018AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100003CE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000018EC(uint64_t a1)
{
  v2 = sub_1000036A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001928(uint64_t a1)
{
  v2 = sub_1000036A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000019EC(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = v5;
  v9 = sub_100003400(a2, a3);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_100003448(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  v13 = v15;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v13)
  {
    v17 = *(v7 + 16);
    v16 = 1;
    sub_100003400(&qword_10002CC90, &qword_100021B30);
    sub_1000035DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = *(v7 + 24);
    v16 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_100001BEC()
{
  v1 = 1701869940;
  v2 = 0xD00000000000001ELL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_100001C6C(uint64_t a1)
{
  v2 = sub_100003588();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001CA8(uint64_t a1)
{
  v2 = sub_100003588();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100001CE4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100001D2C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100001D70()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000019;
  if (v1 != 4)
  {
    v4 = 0x65696B6F6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E69616D6F64;
  if (v1 != 1)
  {
    v5 = 7500643;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100001E18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100003E54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100001E4C(uint64_t a1)
{
  v2 = sub_10000348C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001E88(uint64_t a1)
{
  v2 = sub_10000348C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001EC4@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v2 = type metadata accessor for String.Encoding();
  v102 = *(v2 - 8);
  v103 = v2;
  __chkstk_darwin(v2);
  v101 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NarrativeCertRequest(0);
  __chkstk_darwin(v4);
  v100 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for UUID();
  v99 = *(v105 - 1);
  __chkstk_darwin(v105);
  v104 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v106 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v88 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v88 - v15;
  __chkstk_darwin(v14);
  v18 = &v88 - v17;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100002A80();
  v19 = v1;
  v20 = v108;
  v21 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v108 = v20;
  if (!v20)
  {
    v96 = v21;
    v92 = v13;
    v98 = v22;
    v93 = v10;
    v90 = v4;
    v94 = v18;
    v95 = v16;
    v97 = v7;

    if (qword_10002CAD0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    v35 = sub_100002AD8(v34, qword_10002CB80);
    v36 = v96;
    v37 = v98;
    sub_100002E74(v96, v98);
    v91 = v35;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    sub_100002EC8(v36, v37);
    v40 = v19;
    if (os_log_type_enabled(v38, v39))
    {
      v41 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v110._countAndFlagsBits = v89;
      *v41 = 136446210;
      v42 = Data.base64EncodedString(options:)(0);
      v43 = v36;
      v44 = sub_10001A0F0(v42._countAndFlagsBits, v42._object, &v110._countAndFlagsBits);

      *(v41 + 4) = v44;
      v36 = v43;
      _os_log_impl(&_mh_execute_header, v38, v39, "NarrativeRequest JSON Body: %{public}s", v41, 0xCu);
      sub_100002E28(v89);
    }

    v45 = v97;
    v46 = v105;
    v47 = v106;
    v48 = v104;
    if (qword_10002CB10 != -1)
    {
      swift_once();
    }

    v49._countAndFlagsBits = 0xD00000000000001FLL;
    v49._object = 0x8000000100020710;
    v50.value = preferencesBoolValue(_:domain:)(v49, narrativeCertPrefDomain).value;
    if (v50.value == 2 || !v50.value)
    {
      v73 = v95;
    }

    else
    {
      v51 = [objc_opt_self() defaultManager];
      v52 = [v51 temporaryDirectory];

      v53 = v92;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.init()();
      UUID.uuidString.getter();
      (*(v99 + 8))(v48, v46);
      v54 = v95;
      URL.appendingPathComponent(_:)();

      v55 = v45;
      v56 = *(v47 + 8);
      v56(v53, v55);
      v57 = v94;
      URL.appendingPathExtension(_:)();
      v105 = v56;
      v56(v54, v55);
      v104 = v40;
      v58 = v100;
      sub_100002F1C(v40, v100);
      v59 = v93;
      (*(v47 + 16))(v93, v57, v55);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.info.getter();
      v62 = os_log_type_enabled(v60, v61);
      v99 = v47 + 8;
      if (v62)
      {
        v63 = swift_slowAlloc();
        v110._countAndFlagsBits = swift_slowAlloc();
        *v63 = 136446466;
        v64 = (v58 + *(v90 + 24));
        v65 = v58;
        v66 = *v64;
        v67 = v64[1];

        sub_100002F80(v65);
        v68 = sub_10001A0F0(v66, v67, &v110._countAndFlagsBits);

        *(v63 + 4) = v68;
        *(v63 + 12) = 2082;
        v69 = URL.absoluteString.getter();
        v71 = v70;
        (v105)(v59, v55);
        v72 = sub_10001A0F0(v69, v71, &v110._countAndFlagsBits);

        *(v63 + 14) = v72;
        _os_log_impl(&_mh_execute_header, v60, v61, "Full request to %{public}s logged to: %{public}s", v63, 0x16u);
        swift_arrayDestroy();

        v47 = v106;
      }

      else
      {

        (v105)(v59, v55);
        sub_100002F80(v58);
      }

      v83 = v101;
      v36 = v96;
      v84 = v98;
      v110 = Data.base64EncodedString(options:)(0);
      static String.Encoding.utf8.getter();
      sub_100002FDC();
      v85 = v94;
      v86 = v108;
      StringProtocol.write(to:atomically:encoding:)();
      v87 = v104;
      v108 = v86;
      if (v86)
      {
        sub_100002EC8(v36, v84);
        (*(v102 + 8))(v83, v103);

        (v105)(v85, v97);
        goto LABEL_3;
      }

      (*(v102 + 8))(v83, v103);

      v45 = v97;
      (v105)(v85, v97);
      v73 = v95;
      v40 = v87;
      v37 = v84;
    }

    (*(v47 + 16))(v73, v40, v45);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    result = URLRequest.httpMethod.setter();
    v110._countAndFlagsBits = 0;
    v110._object = 0xE000000000000000;
    v74 = v37 >> 62;
    if ((v37 >> 62) > 1)
    {
      v75 = 0;
      if (v74 != 2)
      {
        goto LABEL_28;
      }

      v77 = *(v36 + 16);
      v76 = *(v36 + 24);
      v78 = __OFSUB__(v76, v77);
      v75 = v76 - v77;
      if (!v78)
      {
        goto LABEL_28;
      }

      __break(1u);
    }

    else if (!v74)
    {
      v75 = BYTE6(v37);
      goto LABEL_28;
    }

    LODWORD(v75) = HIDWORD(v36) - v36;
    if (__OFSUB__(HIDWORD(v36), v36))
    {
      __break(1u);
      return result;
    }

    v75 = v75;
LABEL_28:
    v109 = v75;
    v79._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v79);

    v80._object = 0xEE006874676E654CLL;
    v80._countAndFlagsBits = 0x2D746E65746E6F43;
    URLRequest.setValue(_:forHTTPHeaderField:)(v110, v80);

    v81._object = 0xEC00000065707954;
    v82.value._object = 0x8000000100020730;
    v82.value._countAndFlagsBits = 0xD000000000000010;
    v81._countAndFlagsBits = 0x2D746E65746E6F43;
    URLRequest.setValue(_:forHTTPHeaderField:)(v82, v81);
    return URLRequest.httpBody.setter();
  }

LABEL_3:
  v110._countAndFlagsBits = 0;
  v110._object = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v110._countAndFlagsBits = 0xD000000000000021;
  v110._object = 0x80000001000206E0;
  swift_getErrorValue();
  v23._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v23);

  countAndFlagsBits = v110._countAndFlagsBits;
  object = v110._object;
  if (qword_10002CAD0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100002AD8(v26, qword_10002CB80);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v110._countAndFlagsBits = v30;
    *v29 = 136446210;
    *(v29 + 4) = sub_10001A0F0(countAndFlagsBits, object, &v110._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s", v29, 0xCu);
    sub_100002E28(v30);
  }

  sub_100002B10();
  v31 = swift_allocError();
  *v32 = countAndFlagsBits;
  *(v32 + 8) = object;
  *(v32 + 16) = 3;
  v108 = v31;
  swift_willThrow();
}

uint64_t type metadata accessor for NarrativeCertRequest(uint64_t a1)
{
  result = qword_10002CC08;
  if (!qword_10002CC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100002A80()
{
  result = qword_10002CB98;
  if (!qword_10002CB98)
  {
    type metadata accessor for NarrativeCertRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB98);
  }

  return result;
}

uint64_t sub_100002AD8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100002B10()
{
  result = qword_10002CBA0;
  if (!qword_10002CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBA0);
  }

  return result;
}

uint64_t sub_100002B64(void *a1)
{
  v3 = v1;
  v5 = sub_100003400(&qword_10002CC60, &qword_100021B20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_100003448(a1, a1[3]);
  sub_10000348C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = type metadata accessor for NarrativeCertRequest(0);
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v19) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = (v3 + *(v9 + 32));
    v11 = v10[1];
    v19 = *v10;
    v20 = v11;
    v12 = *(v10 + 2);
    v21 = *(v10 + 1);
    v22 = v12;
    v18 = 3;
    sub_1000034E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = (v3 + *(v9 + 36));
    v14 = v13[1];
    v19 = *v13;
    v20 = v14;
    v15 = *(v13 + 2);
    v21 = *(v13 + 1);
    v22 = v15;
    v18 = 4;
    sub_100003534();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100002E28(void *a1)
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

void sub_100002E74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_100002EC8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100002F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NarrativeCertRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002F80(uint64_t a1)
{
  v2 = type metadata accessor for NarrativeCertRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100002FDC()
{
  result = qword_10002CBA8;
  if (!qword_10002CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBA8);
  }

  return result;
}

uint64_t *sub_100003030(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000030A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000317C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100003238(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_1000032E0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000032E0()
{
  if (!qword_10002CC18)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10002CC18);
    }
  }
}

__n128 sub_100003330(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100003358(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000033A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100003400(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_100003448(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000348C()
{
  result = qword_10002CC68;
  if (!qword_10002CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC68);
  }

  return result;
}

unint64_t sub_1000034E0()
{
  result = qword_10002CC70;
  if (!qword_10002CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC70);
  }

  return result;
}

unint64_t sub_100003534()
{
  result = qword_10002CC78;
  if (!qword_10002CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC78);
  }

  return result;
}

unint64_t sub_100003588()
{
  result = qword_10002CC88;
  if (!qword_10002CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC88);
  }

  return result;
}

unint64_t sub_1000035DC()
{
  result = qword_10002CC98;
  if (!qword_10002CC98)
  {
    sub_100003658(&qword_10002CC90, &qword_100021B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC98);
  }

  return result;
}

uint64_t sub_100003658(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000036A0()
{
  result = qword_10002CCA8;
  if (!qword_10002CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCA8);
  }

  return result;
}

uint64_t sub_100003730(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000037C0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NarrativeCertRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NarrativeCertRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000039D4()
{
  result = qword_10002CCB0;
  if (!qword_10002CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCB0);
  }

  return result;
}

unint64_t sub_100003A2C()
{
  result = qword_10002CCB8;
  if (!qword_10002CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCB8);
  }

  return result;
}

unint64_t sub_100003A84()
{
  result = qword_10002CCC0;
  if (!qword_10002CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCC0);
  }

  return result;
}

unint64_t sub_100003ADC()
{
  result = qword_10002CCC8;
  if (!qword_10002CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCC8);
  }

  return result;
}

unint64_t sub_100003B34()
{
  result = qword_10002CCD0;
  if (!qword_10002CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCD0);
  }

  return result;
}

unint64_t sub_100003B8C()
{
  result = qword_10002CCD8;
  if (!qword_10002CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCD8);
  }

  return result;
}

unint64_t sub_100003BE4()
{
  result = qword_10002CCE0;
  if (!qword_10002CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCE0);
  }

  return result;
}

unint64_t sub_100003C3C()
{
  result = qword_10002CCE8;
  if (!qword_10002CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCE8);
  }

  return result;
}

unint64_t sub_100003C94()
{
  result = qword_10002CCF0;
  if (!qword_10002CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCF0);
  }

  return result;
}

uint64_t sub_100003CE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100020790 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001000207B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001000207D0 == a2)
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

uint64_t sub_100003E54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7500643 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100020750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000100020770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65696B6F6F63 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1000040E8()
{
  v0 = type metadata accessor for Logger();
  sub_100003030(v0, qword_10002CCF8);
  sub_100002AD8(v0, qword_10002CCF8);
  narrativecertdMachServiceName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100004158(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x6E6F6973726576;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x80000001000206C0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x6E6F6973726576;
  }

  if (*a2)
  {
    v6 = 0x80000001000206C0;
  }

  else
  {
    v6 = 0xE700000000000000;
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

Swift::Int sub_100004204()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000428C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100004300()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100004384(void *a1)
{
  v3 = sub_100003400(&qword_10002CE30, &qword_100021F48);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100003448(a1, a1[3]);
  sub_100007070();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for NarrativeIdentityAquaria.AquariaCookie(0);
    v8[14] = 1;
    type metadata accessor for AttestationBundle();
    sub_1000070C4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10000450C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100028EA8, *a1);

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

void sub_10000456C(unint64_t *a1@<X8>)
{
  v2 = 0x80000001000206C0;
  v3 = 0x6E6F6973726576;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1000045B0()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1000045F0@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100028EA8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_100004660(uint64_t a1)
{
  v2 = sub_100007070();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000469C(uint64_t a1)
{
  v2 = sub_100007070();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000046F0(void *a1)
{
  v78 = a1;
  if (&protocol conformance descriptor for GenericAttestor)
  {
    v2 = &protocol witness table for GenericAttestor == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || &type metadata accessor for GenericAttestor == 0 || &nominal type descriptor for GenericAttestor == 0 || &type metadata for GenericAttestor == 0)
  {
    countAndFlagsBits = 0x8000000100020890;
    sub_100002B10();
    swift_allocError();
    *v42 = 0xD000000000000045;
    *(v42 + 8) = 0x8000000100020890;
    *(v42 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    v62 = v1;
    v6 = type metadata accessor for GenericAttestor();
    v74 = &v61;
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    __chkstk_darwin(v6);
    GenericAttestor.init()();
    v70 = sub_100003400(&qword_10002CD68, &qword_100021EB8);
    v77 = swift_allocBox();
    v10 = v9;
    v69 = v9;
    v11 = type metadata accessor for AttestationBundle();
    v67 = *(v11 - 8);
    v68 = (v11 - 8);
    v75 = v67;
    v76 = v11;
    (*(v67 + 56))(v10, 1, 1, v11);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    v61 = v12 + 16;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
    v64 = dispatch_semaphore_create(0);
    v13 = sub_100003400(&qword_10002CD70, &qword_100021EC0);
    v66 = &v61;
    __chkstk_darwin(v13 - 8);
    v15 = &v61 - v14;
    v65 = &v61 - v14;
    v16 = type metadata accessor for TaskPriority();
    v17 = (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    v63 = &v61;
    __chkstk_darwin(v17);
    v18 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = *(v7 + 16);
    v71 = v18;
    v19(v18, v18, v6);
    v20 = (*(v7 + 80) + 48) & ~*(v7 + 80);
    v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    v23 = v64;
    v24 = v77;
    *(v22 + 4) = v64;
    *(v22 + 5) = v24;
    v72 = v7;
    v73 = v6;
    (*(v7 + 32))(&v22[v20], v18, v6);
    v25 = v78;
    *&v22[v21] = v78;
    *&v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8] = v12;
    v26 = v23;

    v27 = v25;
    v28 = v12;
    v29 = v75;

    v30 = v76;
    sub_100005718(0, 0, v65, &unk_100021ED0, v22);

    OS_dispatch_semaphore.wait()();
    __chkstk_darwin(v31);
    v33 = &v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = v69;
    v35 = swift_beginAccess();
    __chkstk_darwin(v35);
    v37 = &v61 - v36;
    sub_100006B88(v34, &v61 - v36, &qword_10002CD68, &qword_100021EB8);
    if ((*(v29 + 48))(v37, 1, v30) == 1)
    {
      sub_100006E1C(v37, &qword_10002CD68, &qword_100021EB8);
      swift_beginAccess();
      countAndFlagsBits = *(v28 + 32);
      if (countAndFlagsBits == 255)
      {
        countAndFlagsBits = 0x80000001000208E0;
        sub_100002B10();
        swift_allocError();
        *v53 = 0xD000000000000023;
        *(v53 + 8) = 0x80000001000208E0;
        *(v53 + 16) = 2;
        swift_willThrow();
      }

      else
      {
        v40 = *(v28 + 16);
        v39 = *(v28 + 24);
        sub_100002B10();
        swift_allocError();
        *v41 = v40;
        *(v41 + 8) = v39;
        *(v41 + 16) = countAndFlagsBits;
        swift_willThrow();
        sub_100006A64(v40, v39, countAndFlagsBits);
      }

      (*(v72 + 8))(v71, v73);
    }

    else
    {
      v69 = &v61;
      v70 = v26;
      v78 = v28;
      (*(v29 + 32))(v33, v37, v30);
      countAndFlagsBits = type metadata accessor for NarrativeIdentityAquaria.AquariaCookie(0);
      v68 = &v61;
      v43 = __chkstk_darwin(countAndFlagsBits);
      v45 = &v61 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(&v45[*(v43 + 20)], v33, v30);
      *v45 = 49;
      *(v45 + 1) = 0xE100000000000000;
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      v46 = JSONEncoder.init()();
      v47 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
      __chkstk_darwin(v47);
      (*(v49 + 104))(&v61 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:));
      dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
      sub_100006AD4();
      v50 = v62;
      v51 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      if (v50)
      {

        sub_100006B2C(v45);
        (*(v29 + 8))(v33, v30);
        (*(v72 + 8))(v71, v73);
      }

      else
      {
        v67 = v46;
        v55 = v51;
        v56 = v52;
        countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
        sub_100002EC8(v55, v56);
        if (qword_10002CAD8 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        sub_100002AD8(v57, qword_10002CCF8);
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v58, v59, "Generated cookie for aquaria-host", v60, 2u);
        }

        sub_100006B2C(v45);
        (*(v75 + 8))(v33, v76);
        (*(v72 + 8))(v71, v73);
      }
    }
  }

  return countAndFlagsBits;
}

uint64_t sub_100005044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a4;
  v8[12] = a6;
  v9 = type metadata accessor for Date();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  sub_100003400(&qword_10002CD68, &qword_100021EB8);
  v8[18] = swift_projectBox();
  v8[19] = swift_task_alloc();

  return _swift_task_switch(sub_100005154, 0, 0);
}

uint64_t sub_100005154()
{
  v1 = type metadata accessor for GenericAttestor();
  v2 = dispatch thunk of Attestor.attestingKey.getter();
  v0[20] = v2;
  v3 = v2;
  dispatch thunk of Attestor.defaultKeyDuration.getter();
  Duration.timeInterval.getter();
  Date.init(timeIntervalSinceNow:)();
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_10000537C;
  v5 = v0[19];
  v6 = v0[17];
  v7 = v0[13];

  return dispatch thunk of Attestor.attest(key:using:expiration:nonce:)(v5, v7, v3, v6, 0, 0xF000000000000000, v1, &protocol witness table for GenericAttestor);
}

uint64_t sub_10000537C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = v2[20];
  (*(v2[16] + 8))(v2[17], v2[15]);

  if (v0)
  {
    v4 = sub_1000055D4;
  }

  else
  {
    v4 = sub_1000054FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000054FC()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = type metadata accessor for AttestationBundle();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  swift_beginAccess();
  sub_100006DAC(v2, v1);

  OS_dispatch_semaphore.signal()();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000055D4()
{
  v1 = v0[22];
  v2 = v0[14];

  _StringGuts.grow(_:)(39);
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v3._object = 0x8000000100020910;
  v3._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v3);
  v0[10] = v1;
  sub_100003400(&qword_10002CD80, &unk_100021EF0);
  _print_unlocked<A, B>(_:_:)();

  v4 = v0[8];
  v5 = v0[9];
  swift_beginAccess();
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  v8 = *(v2 + 32);
  *(v2 + 32) = 2;
  sub_100006D98(v6, v7, v8);
  OS_dispatch_semaphore.signal()();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100005718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003400(&qword_10002CD70, &qword_100021EC0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100006B88(a3, v25 - v10, &qword_10002CD70, &qword_100021EC0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100006E1C(v11, &qword_10002CD70, &qword_100021EC0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100006E1C(a3, &qword_10002CD70, &qword_100021EC0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006E1C(a3, &qword_10002CD70, &qword_100021EC0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_100005A18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NarrativeIdentityAquaria(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100005A58(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005B50;

  return v6(a1);
}

uint64_t sub_100005B50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100005C48(uint64_t a1)
{
  v1 = SecCertificateCopyURIs();
  if (!v1)
  {
    if (qword_10002CAD8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100002AD8(v4, qword_10002CCF8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_20;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Failed to parse URI from Aquaria certificate";
    goto LABEL_19;
  }

  v2 = v1;
  v3 = [v1 firstObject];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (!*(&v23 + 1))
  {
    sub_100006E1C(&v24, &qword_10002CD88, "H\t");
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    if (qword_10002CAD8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100002AD8(v12, qword_10002CCF8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_20;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Failed to convert Aquaria URI to String";
    goto LABEL_19;
  }

  v9 = SecCertificateCopyDNSNames();
  if (!v9)
  {

    if (qword_10002CAD8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100002AD8(v14, qword_10002CCF8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_20;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Failed to parse DNS names from Aquaria certificate";
    goto LABEL_19;
  }

  v10 = v9;
  v11 = [v9 firstObject];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (!*(&v23 + 1))
  {

    sub_100006E1C(&v24, &qword_10002CD88, "H\t");
LABEL_31:
    if (qword_10002CAD8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100002AD8(v19, qword_10002CCF8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_20;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Failed to convert Aquaria DNS name to String";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v5, v6, v8, v7, 2u);

LABEL_20:

    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_31;
  }

  sub_100003400(&qword_10002CD90, &qword_100021F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100021E70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v16;
  *(inited + 48) = v20;
  *(inited + 56) = v21;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v17;
  *(inited + 80) = v20;
  *(inited + 88) = v21;
  v18 = sub_10001AA94(inited);
  swift_setDeallocating();
  sub_100003400(&qword_10002CD98, &qword_100021F08);
  swift_arrayDestroy();
  return v18;
}

char *sub_1000060E0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003400(&qword_10002CD60, &qword_100021EB0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v46 - v14;
  v16 = __chkstk_darwin(v13);
  __chkstk_darwin(v16);
  v19 = v46 - v18;
  if (a1 != 1)
  {

    v53 = 0;
    v54 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v21._countAndFlagsBits = 0xD000000000000036;
    v21._object = 0x8000000100020820;
    String.append(_:)(v21);
    v22._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
    String.append(_:)(v22);

    v8 = v53;
    v23 = v54;
    sub_100002B10();
    swift_allocError();
    *v24 = v8;
    *(v24 + 8) = v23;
    *(v24 + 16) = 4;
    swift_willThrow();
    return v8;
  }

  v52 = v17;
  v55 = a2;
  v20 = sub_100008868(1);
  if (v2)
  {

    return v8;
  }

  v51 = v20;
  (*(v6 + 56))(v19, 1, 1, v5);
  v26 = objc_allocWithZone(type metadata accessor for NarrativeIdentityAquaria(0));
  v27 = v52;
  sub_100006B88(v19, v52, &qword_10002CD60, &qword_100021EB0);
  v28 = &v26[qword_10002D550];
  *v28 = 0;
  v28[1] = 0;
  v48 = v28;
  v49 = qword_10002D558;
  *&v26[qword_10002D558] = 0;
  v50 = qword_10002D560;
  *&v26[qword_10002D560] = 0;
  v26[qword_10002D568] = 1;
  sub_100006B88(v27, v15, &qword_10002CD60, &qword_100021EB0);
  v47 = *(v6 + 48);
  if (v47(v15, 1, v5) != 1)
  {
    v36 = *(v6 + 32);
    v36(v8, v15, v5);
    v36(&v26[qword_10002D540], v8, v5);
    v35 = v55;
    goto LABEL_15;
  }

  v46[1] = v6 + 48;
  sub_100006E1C(v15, &qword_10002CD60, &qword_100021EB0);
  if (qword_10002CB10 != -1)
  {
    swift_once();
  }

  v29._object = 0xEC0000004C525565;
  v29._countAndFlagsBits = 0x766974617272614ELL;
  v30 = preferencesStringValue(_:domain:)(v29, narrativeCertPrefDomain);
  countAndFlagsBits = 0xD000000000000023;
  if (v30.value._object)
  {
    countAndFlagsBits = v30.value._countAndFlagsBits;
    object = v30.value._object;
  }

  else
  {
    object = 0x8000000100020860;
  }

  v53 = countAndFlagsBits;
  v54 = object;
  v46[0] = object;

  v33._countAndFlagsBits = 47;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
  String.append(_:)(v34);

  URL.init(string:)();

  result = (v47)(v12, 1, v5);
  if (result != 1)
  {

    (*(v6 + 32))(&v26[qword_10002D540], v12, v5);
    v35 = v55;
LABEL_15:
    v37 = v48;
    *v48 = 0;
    v37[1] = 0;

    *&v26[v49] = v35;

    v38 = v51;
    v39 = *&v26[v50];
    *&v26[v50] = v51;
    v40 = v38;

    v53 = 0;
    v54 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v53 = 0x766974617272616ELL;
    v54 = 0xEF2E647472656365;
    v41._countAndFlagsBits = NarrativeDomain.rawValue.getter();
    String.append(_:)(v41);

    v42._countAndFlagsBits = 46;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    v43._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
    String.append(_:)(v43);

    v44 = v54;
    v45 = &v26[qword_10002D548];
    *v45 = v53;
    v45[1] = v44;
    v8 = NarrativeCert.init(domain:identityType:)();

    sub_100006E1C(v52, &qword_10002CD60, &qword_100021EB0);
    sub_100006E1C(v19, &qword_10002CD60, &qword_100021EB0);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000066C4()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_100006708(*(v0 + 16), *(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100006708(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_100006720()
{
  v1 = type metadata accessor for GenericAttestor();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100006820(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for GenericAttestor() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100006970;

  return sub_100005044(a1, v8, v9, v10, v11, v1 + v6, v12, v13);
}

uint64_t sub_100006970()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100006A64(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_100006A9C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100006AD4()
{
  result = qword_10002CD78;
  if (!qword_10002CD78)
  {
    type metadata accessor for NarrativeIdentityAquaria.AquariaCookie(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD78);
  }

  return result;
}

uint64_t sub_100006B2C(uint64_t a1)
{
  v2 = type metadata accessor for NarrativeIdentityAquaria.AquariaCookie(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006B88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003400(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006BF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007378;

  return sub_100005A58(a1, v4);
}

uint64_t sub_100006CA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006CE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006970;

  return sub_100005A58(a1, v4);
}

uint64_t sub_100006D98(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_100006708(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100006DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003400(&qword_10002CD68, &qword_100021EB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006E1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003400(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006E90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AttestationBundle();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100006F50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AttestationBundle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100006FF4(uint64_t a1)
{
  result = type metadata accessor for AttestationBundle();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100007070()
{
  result = qword_10002CE38;
  if (!qword_10002CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE38);
  }

  return result;
}

unint64_t sub_1000070C4()
{
  result = qword_10002CE40;
  if (!qword_10002CE40)
  {
    type metadata accessor for AttestationBundle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NarrativeIdentity.KeyResidencyAttestationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NarrativeIdentity.KeyResidencyAttestationType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100007270()
{
  result = qword_10002CE48;
  if (!qword_10002CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE48);
  }

  return result;
}

unint64_t sub_1000072C8()
{
  result = qword_10002CE50;
  if (!qword_10002CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE50);
  }

  return result;
}

unint64_t sub_100007320()
{
  result = qword_10002CE58;
  if (!qword_10002CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE58);
  }

  return result;
}

uint64_t type metadata accessor for NarrativeIdentityAcdc(uint64_t a1)
{
  result = qword_10002CE78;
  if (!qword_10002CE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007408()
{
  v0 = type metadata accessor for Logger();
  sub_100003030(v0, qword_10002CE60);
  sub_100002AD8(v0, qword_10002CE60);
  narrativecertdMachServiceName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100007478(void *a1)
{
  v3 = v1;
  v5 = sub_100003400(&qword_10002CED0, &unk_100022138);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100003448(a1, a1[3]);
  sub_100008278();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 32);
    v10[15] = 2;
    sub_100003400(&qword_10002CC90, &qword_100021B30);
    sub_1000035DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10000766C()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x6961684374726364;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1000076D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100008524(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100007704(uint64_t a1)
{
  v2 = sub_100008278();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100007740(uint64_t a1)
{
  v2 = sub_100008278();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100007794(uint64_t a1)
{
  sub_10000D1B8(a1);
  if (!v2)
  {
    v3 = sub_100010B3C();
    sub_10000800C(v3);

    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_100008170();
    v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v7 = v6;
    v8 = v4;

    if (qword_10002CAE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100002AD8(v9, qword_10002CE60);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Generated cookie for acdc-actor", v12, 2u);
    }

    countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
    sub_100002EC8(v8, v7);
  }

  return countAndFlagsBits;
}

id sub_10000798C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NarrativeIdentityAcdc(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1000079CC(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003400(&qword_10002CD60, &qword_100021EB0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v44 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v44 - v15;
  __chkstk_darwin(v14);
  v18 = &v44 - v17;
  if (a1 != 2)
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v30._countAndFlagsBits = 0xD000000000000033;
    v30._object = 0x8000000100020970;
    String.append(_:)(v30);
    v31._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
    String.append(_:)(v31);

    v6 = v50;
    v32 = v51;
    sub_100002B10();
    swift_allocError();
    *v33 = v6;
    *(v33 + 8) = v32;
    *(v33 + 16) = 4;
    swift_willThrow();
    return v6;
  }

  v19 = sub_100008868(0);
  if (v1)
  {
    return v6;
  }

  v49 = v19;
  v20 = v4[7];
  v52 = v16;
  v20(v18, 1, 1, v3);
  v21 = objc_allocWithZone(type metadata accessor for NarrativeIdentityAcdc(0));
  sub_100007F34(v18, v52);
  v22 = &v21[qword_10002D550];
  *v22 = 0;
  v22[1] = 0;
  v46 = v22;
  v47 = qword_10002D558;
  *&v21[qword_10002D558] = 0;
  v48 = qword_10002D560;
  *&v21[qword_10002D560] = 0;
  v21[qword_10002D568] = 1;
  sub_100007F34(v52, v13);
  v45 = v4[6];
  if (v45(v13, 1, v3) != 1)
  {
    v34 = v4[4];
    v34(v6, v13, v3);
    v34(&v21[qword_10002D540], v6, v3);
    goto LABEL_14;
  }

  v44 = v4 + 6;
  sub_100007FA4(v13);
  if (qword_10002CB10 != -1)
  {
    swift_once();
  }

  v23._object = 0xEC0000004C525565;
  v23._countAndFlagsBits = 0x766974617272614ELL;
  v24 = preferencesStringValue(_:domain:)(v23, narrativeCertPrefDomain);
  countAndFlagsBits = 0xD000000000000023;
  if (v24.value._object)
  {
    countAndFlagsBits = v24.value._countAndFlagsBits;
    object = v24.value._object;
  }

  else
  {
    object = 0x8000000100020860;
  }

  v50 = countAndFlagsBits;
  v51 = object;

  v27._countAndFlagsBits = 47;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
  String.append(_:)(v28);

  URL.init(string:)();

  result = (v45)(v10, 1, v3);
  if (result != 1)
  {

    (v4[4])(&v21[qword_10002D540], v10, v3);
LABEL_14:
    v35 = v46;
    *v46 = 0;
    v35[1] = 0;

    *&v21[v47] = 0;

    v36 = v49;
    v37 = *&v21[v48];
    *&v21[v48] = v49;
    v38 = v36;

    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v50 = 0x766974617272616ELL;
    v51 = 0xEF2E647472656365;
    v39._countAndFlagsBits = NarrativeDomain.rawValue.getter();
    String.append(_:)(v39);

    v40._countAndFlagsBits = 46;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    v41._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
    String.append(_:)(v41);

    v42 = v51;
    v43 = &v21[qword_10002D548];
    *v43 = v50;
    v43[1] = v42;
    v6 = NarrativeCert.init(domain:identityType:)();

    sub_100007FA4(v52);
    sub_100007FA4(v18);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100007F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003400(&qword_10002CD60, &qword_100021EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007FA4(uint64_t a1)
{
  v2 = sub_100003400(&qword_10002CD60, &qword_100021EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10000800C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = (a1 + 40);
  v3 = &_swiftEmptyArrayStorage;
  do
  {
    v4 = *(v2 - 1);
    v5 = *v2;

    _StringGuts.grow(_:)(56);
    v6._countAndFlagsBits = 0xD00000000000001CLL;
    v6._object = 0x80000001000209B0;
    String.append(_:)(v6);
    v7._countAndFlagsBits = v4;
    v7._object = v5;
    String.append(_:)(v7);

    v8._object = 0x80000001000209D0;
    v8._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_100017A8C(0, *(v3 + 2) + 1, 1, v3);
    }

    v10 = *(v3 + 2);
    v9 = *(v3 + 3);
    if (v10 >= v9 >> 1)
    {
      v3 = sub_100017A8C((v9 > 1), v10 + 1, 1, v3);
    }

    *(v3 + 2) = v10 + 1;
    v11 = &v3[16 * v10];
    *(v11 + 4) = 0;
    *(v11 + 5) = 0xE000000000000000;
    v2 += 2;
    --v1;
  }

  while (v1);
  return v3;
}

unint64_t sub_100008170()
{
  result = qword_10002CEC8;
  if (!qword_10002CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CEC8);
  }

  return result;
}

__n128 sub_1000081C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000081D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100008220(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100008278()
{
  result = qword_10002CED8;
  if (!qword_10002CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CED8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NarrativeIdentityAcdc.AcdcCookie.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NarrativeIdentityAcdc.AcdcCookie.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100008420()
{
  result = qword_10002CEE0;
  if (!qword_10002CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CEE0);
  }

  return result;
}

unint64_t sub_100008478()
{
  result = qword_10002CEE8;
  if (!qword_10002CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CEE8);
  }

  return result;
}

unint64_t sub_1000084D0()
{
  result = qword_10002CEF0;
  if (!qword_10002CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CEF0);
  }

  return result;
}

uint64_t sub_100008524(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000209F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6961684374726364 && a2 == 0xE90000000000006ELL)
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

uint64_t type metadata accessor for NarrativeIdentityAdb(uint64_t a1)
{
  result = qword_10002CEF8;
  if (!qword_10002CEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000086D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NarrativeIdentityAdb(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008718()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGCopyAnswer();

  if (v1)
  {
    _StringGuts.grow(_:)(18);

    strcpy(v6, "{serialNum:");
    HIBYTE(v6[1]) = -18;
    v6[3] = v1;
    swift_dynamicCast();
    String.append(_:)(v5);

    v2._countAndFlagsBits = 32034;
    v2._object = 0xE200000000000000;
    String.append(_:)(v2);
    return v6[0];
  }

  else
  {
    sub_100002B10();
    swift_allocError();
    *v4 = 0xD00000000000002ELL;
    *(v4 + 8) = 0x8000000100020A80;
    *(v4 + 16) = 2;
    return swift_willThrow();
  }
}

char *sub_100008868(uint64_t a1)
{
  v102 = a1;
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v99 = v1;
  v100 = v2;
  v3 = __chkstk_darwin(v1);
  v101 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v91 - v5;
  v7 = sub_100003400(&qword_10002CD60, &qword_100021EB0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v91 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v91 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v91 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v91 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v91 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v91 - v27;
  __chkstk_darwin(v26);
  v30 = &v91 - v29;
  v31 = v105;
  v32 = sub_100008718();
  if (v31)
  {
    return v19;
  }

  v98 = v25;
  v94 = v13;
  v95 = v22;
  v92 = v10;
  v105 = v30;
  v96 = v19;
  v35 = v101;
  if (v102 == 1)
  {
    v93 = v32;
    v97 = v33;
    v53 = sub_100008868(0);
    v102 = 0;
    v105 = v53;
    v65 = v99;
    v64 = v100;
    v66 = v96;
    (*(v100 + 56))(v96, 1, 1, v99);
    v67 = objc_allocWithZone(type metadata accessor for NarrativeIdentityAdb(0));
    v68 = v16;
    sub_100007F34(v66, v16);
    v69 = v67 + qword_10002D550;
    *v69 = 0;
    v69[1] = 0;
    v98 = qword_10002D558;
    *(v67 + qword_10002D558) = 0;
    v70 = qword_10002D560;
    *(v67 + qword_10002D560) = 0;
    *(v67 + qword_10002D568) = 1;
    v95 = v68;
    v71 = v94;
    sub_100007F34(v68, v94);
    v72 = *(v64 + 48);
    if (v72(v71, 1, v65) == 1)
    {
      v73 = v72;
      v74 = v70;
      sub_100007FA4(v71);
      if (qword_10002CB10 != -1)
      {
        swift_once();
      }

      v75._countAndFlagsBits = 0x766974617272614ELL;
      v75._object = 0xEC0000004C525565;
      v76 = preferencesStringValue(_:domain:)(v75, narrativeCertPrefDomain);
      countAndFlagsBits = 0xD000000000000023;
      if (v76.value._object)
      {
        countAndFlagsBits = v76.value._countAndFlagsBits;
        object = v76.value._object;
      }

      else
      {
        object = 0x8000000100020860;
      }

      v103 = countAndFlagsBits;
      v104 = object;

      v79._countAndFlagsBits = 47;
      v79._object = 0xE100000000000000;
      String.append(_:)(v79);
      v80._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
      String.append(_:)(v80);

      v81 = v92;
      URL.init(string:)();

      v82 = v99;
      result = v73(v81, 1, v99);
      v83 = v100;
      if (result == 1)
      {
        goto LABEL_29;
      }

      (*(v83 + 32))(v67 + qword_10002D540, v81, v82);
      v52 = v96;
      v70 = v74;
    }

    else
    {
      v84 = v71;
      v85 = *(v64 + 32);
      v85(v35, v84, v65);
      v85(v67 + qword_10002D540, v35, v65);
      v52 = v96;
    }

    *v69 = 0;
    v69[1] = 0;

    *&v98[v67] = 0;

    v86 = *(v67 + v70);
    v87 = v105;
    *(v67 + v70) = v105;
    v88 = v87;

    v89 = (v67 + qword_10002D548);
    v90 = v97;
    *v89 = v93;
    v89[1] = v90;
    v19 = NarrativeCert.init(domain:identityType:)();

    v63 = v95;
    goto LABEL_27;
  }

  if (v102)
  {

    v103 = 0;
    v104 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v54._countAndFlagsBits = 0xD000000000000032;
    v54._object = 0x8000000100020A40;
    String.append(_:)(v54);
    v55._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
    String.append(_:)(v55);

    v56 = v103;
    v57 = v104;
    sub_100002B10();
    v19 = swift_allocError();
    *v58 = v56;
    *(v58 + 8) = v57;
    *(v58 + 16) = 4;
    swift_willThrow();
    return v19;
  }

  v93 = v32;
  v97 = v33;
  v102 = 0;
  v37 = v99;
  v36 = v100;
  v38 = v105;
  (*(v100 + 56))(v105, 1, 1, v99);
  v39 = objc_allocWithZone(type metadata accessor for NarrativeIdentityAdb(0));
  sub_100007F34(v38, v28);
  v40 = v39 + qword_10002D550;
  *v40 = 0;
  v40[1] = 0;
  v101 = qword_10002D558;
  *(v39 + qword_10002D558) = 0;
  v41 = qword_10002D560;
  *(v39 + qword_10002D560) = 0;
  *(v39 + qword_10002D568) = 1;
  v96 = v28;
  v42 = v98;
  sub_100007F34(v28, v98);
  v43 = *(v36 + 48);
  if (v43(v42, 1, v37) != 1)
  {
    v59 = *(v36 + 32);
    v59(v6, v42, v37);
    v59(v39 + qword_10002D540, v6, v37);
    v52 = v105;
    goto LABEL_16;
  }

  v94 = v41;
  sub_100007FA4(v42);
  if (qword_10002CB10 != -1)
  {
    swift_once();
  }

  v44._countAndFlagsBits = 0x766974617272614ELL;
  v44._object = 0xEC0000004C525565;
  v45 = preferencesStringValue(_:domain:)(v44, narrativeCertPrefDomain);
  v46 = 0xD000000000000023;
  if (v45.value._object)
  {
    v46 = v45.value._countAndFlagsBits;
    v47 = v45.value._object;
  }

  else
  {
    v47 = 0x8000000100020860;
  }

  v103 = v46;
  v104 = v47;

  v48._countAndFlagsBits = 47;
  v48._object = 0xE100000000000000;
  String.append(_:)(v48);
  v49._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
  String.append(_:)(v49);

  v50 = v95;
  URL.init(string:)();

  v51 = v99;
  result = (v43)(v50, 1, v99);
  if (result != 1)
  {

    (*(v100 + 32))(v39 + qword_10002D540, v50, v51);
    v52 = v105;
    v41 = v94;
LABEL_16:
    *v40 = 0;
    v40[1] = 0;

    *&v101[v39] = 0;

    v60 = *(v39 + v41);
    *(v39 + v41) = 0;

    v61 = (v39 + qword_10002D548);
    v62 = v97;
    *v61 = v93;
    v61[1] = v62;
    v19 = NarrativeCert.init(domain:identityType:)();
    v63 = v96;
LABEL_27:
    sub_100007FA4(v63);
    sub_100007FA4(v52);
    return v19;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_10000912C(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      v13 = 0;
      _StringGuts.grow(_:)(52);
      v8._countAndFlagsBits = 0xD000000000000016;
      v8._object = 0x8000000100020B40;
      String.append(_:)(v8);
      v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v9);

      v10._countAndFlagsBits = 0xD00000000000001ALL;
      v10._object = 0x8000000100020B60;
      String.append(_:)(v10);
      v11._countAndFlagsBits = a2;
      v11._object = a3;
      String.append(_:)(v11);
      return v13;
    }

    _StringGuts.grow(_:)(21);

    v13 = 0xD000000000000013;
    swift_getErrorValue();
LABEL_6:
    v5._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v5);

    return v13;
  }

  if (a4 == 2)
  {
    _StringGuts.grow(_:)(34);

    v13 = 0xD000000000000020;
    swift_getErrorValue();
    goto LABEL_6;
  }

  result = 0xD000000000000020;
  if (!(a3 | a2 | a1))
  {
    return 0xD000000000000022;
  }

  if (a1 != 1 || a3 | a2)
  {
    return 0xD00000000000001CLL;
  }

  return result;
}

uint64_t sub_10000935C()
{
  v0 = type metadata accessor for Logger();
  sub_100003030(v0, qword_10002CF48);
  sub_100002AD8(v0, qword_10002CF48);
  narrativecertdMachServiceName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000093C8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    goto LABEL_9;
  }

  if (!a3 || (v4 = a1, objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) == 0))
  {
    v4 = 1;
    goto LABEL_9;
  }

  v8 = v7;
  v9 = a3;
  if ([v8 statusCode] - 300 < 0xFFFFFFFFFFFFFF9CLL)
  {
    if (a2 >> 60 == 15)
    {
      v4 = [v8 statusCode];

      goto LABEL_9;
    }

    sub_100002E74(v4, a2);
    sub_100002E74(v4, a2);
    sub_10000AB58(v4, a2);
    if (!v11)
    {
      v15 = v4;
      v16 = a2;
      sub_100002E74(v4, a2);
      sub_100003400(&qword_10002D058, &qword_100022390);
      if (swift_dynamicCast())
      {
        sub_10000B2F8(v13, v17);
        sub_100003448(v17, v18);
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_10000B27C(v4, a2);
          sub_100003448(v17, v18);
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          sub_100002E28(v17);
LABEL_21:
          v12 = [v8 statusCode];

          sub_10000B27C(v4, a2);
          v4 = v12;
          goto LABEL_9;
        }

        sub_100002E28(v17);
      }

      else
      {
        v14 = 0;
        memset(v13, 0, sizeof(v13));
        sub_10000B290(v13);
      }

      sub_10000A934(v4, a2);
    }

    sub_10000B27C(v4, a2);
    goto LABEL_21;
  }

  if (a2 >> 60 == 15)
  {
    v4 = 2;
  }

  else
  {
    sub_100002E74(v4, a2);
  }

LABEL_9:
  swift_errorRetain();
  return v4;
}

uint64_t sub_1000096A8()
{
  type metadata accessor for NarrativeHTTPClient();
  v0 = swift_allocObject();
  result = sub_10000A6DC();
  qword_10002D538 = v0;
  return result;
}

uint64_t sub_1000096E4(uint64_t a1)
{
  if (qword_10002CB10 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    countAndFlagsBits = narrativeCertPrefDomain._countAndFlagsBits;
    object = narrativeCertPrefDomain._object;
    v6._countAndFlagsBits = 0x797274655278614DLL;
    v6._object = 0xED0000746E756F43;
    v33 = preferencesIntegerValue(_:domain:)(v6, narrativeCertPrefDomain);
    is_nil = v33.is_nil;
    v8 = v33.value <= 1 ? 1 : v33.value;
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 259;
    v10._countAndFlagsBits = 0x5366666F6B636142;
    v10._object = 0xEE0073646E6F6365;
    v11._countAndFlagsBits = countAndFlagsBits;
    v11._object = object;
    v34 = preferencesDoubleValue(_:domain:)(v10, v11);
    v13 = (v12 & 1) != 0 ? 5.0 : *&v34.is_nil;
    if ((v12 & 1) == 0 && (*&v34.is_nil & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      break;
    }

    if (v13 <= -1.0)
    {
      goto LABEL_33;
    }

    if (v13 >= 4294967300.0)
    {
      goto LABEL_34;
    }

    if (is_nil)
    {
      v15 = 10;
    }

    else
    {
      v15 = v8;
    }

    sub_100009BF0(1, v9, v1, a1);
    if (!v2)
    {
      goto LABEL_21;
    }

    if (v15 == 1)
    {
      swift_willThrow();
      goto LABEL_25;
    }

    if (&_mh_execute_header)
    {
      sleep(1u);

      sub_100009BF0(2, v9, v1, a1);
LABEL_21:
      swift_beginAccess();
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      v18 = *(v9 + 32);
      v19 = *(v9 + 40);
      if (*(v9 + 41))
      {
        *&v25 = *(v9 + 16);
        *(&v25 + 1) = v16;
        *&v26 = v18;
        BYTE8(v26) = v19;
        sub_10000AEFC(v17, v16, v18, v19);
        v1 = sub_10000A688();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v20 = v17;
        *(v20 + 8) = v16;
        *(v20 + 16) = v18;
        *(v20 + 24) = v19;
        goto LABEL_25;
      }

      type metadata accessor for JSONDecoder();
      swift_allocObject();
      sub_100002E74(v17, v16);
      JSONDecoder.init()();
      sub_10000AF24();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      v1 = v29;
      v31 = v29;
      v30[2] = v27;
      v30[3] = v28;
      v30[0] = v25;
      v30[1] = v26;
      v32[0] = v29;
      if (v29)
      {
        sub_10000AFCC(v32, &v25);
        sub_10000AEC8(v17, v16, v18, v19, 0);
        sub_10000AF78(v30);
      }

      else
      {
        v1 = sub_1000182C8();
        v22 = v21;
        sub_10000AF78(v30);
        sub_100002B10();
        swift_allocError();
        *v23 = v1;
        *(v23 + 8) = v22;
        *(v23 + 16) = 1;
        swift_willThrow();
        sub_10000AEC8(v17, v16, v18, v19, 0);
LABEL_25:
      }

      *&v34.is_nil = v1;
      goto LABEL_35;
    }

    __break(1u);
    __break(1u);
    __break(1u);
LABEL_31:
    swift_once();
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  LOBYTE(result) = v34.is_nil;
  return result;
}

void sub_100009BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51[0] = a1;
  v55 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  isa = v56[-1].isa;
  __chkstk_darwin(v56);
  v52 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URLRequest();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = dispatch_semaphore_create(0);
  swift_beginAccess();
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 41);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  v18 = *(a2 + 40);
  *(a2 + 40) = 259;
  sub_10000AEC8(v14, v15, v16, v18, v17);
  v51[1] = *(a3 + 16);
  (*(v10 + 16))(v12, a4, v9);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v19, v12, v9);
  *(v21 + v20) = v13;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v63 = sub_10000B0E8;
  v64 = v21;
  aBlock = _NSConcreteStackBlock;
  v60 = 1107296256;
  v61 = sub_10000A5E4;
  v62 = &unk_100029620;
  v22 = _Block_copy(&aBlock);
  v23 = v13;

  v24 = v52;
  static DispatchQoS.unspecified.getter();
  v58 = &_swiftEmptyArrayStorage;
  sub_10000B198(&qword_10002D040, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003400(&qword_10002D048, &qword_100022388);
  sub_10000B1E0(&qword_10002D050, &qword_10002D048, &qword_100022388);
  v25 = v53;
  v26 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (v57[1])(v25, v26);
  (*(isa + 1))(v24, v56);

  OS_dispatch_semaphore.wait()();
  swift_beginAccess();
  if (*(a2 + 41) == 1)
  {
    v28 = *(a2 + 16);
    v27 = *(a2 + 24);
    v29 = *(a2 + 32);
    v30 = *(a2 + 40);
    sub_10000AEFC(v28, v27, v29, v30);
    if (qword_10002CAE8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100002AD8(v31, qword_10002CF48);
    sub_10000AEFC(v28, v27, v29, v30);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    sub_10000AEC8(v28, v27, v29, v30, 1);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v65 = v57;
      *v34 = 134218242;
      *(v34 + 4) = v51[0];
      *(v34 + 12) = 2082;
      aBlock = v28;
      v60 = v27;
      v61 = v29;
      LOBYTE(v62) = v30;
      sub_10000A688();
      v56 = v32;
      v35 = Error.localizedDescription.getter();
      v37 = v33;
      v38 = v27;
      v39 = v29;
      v40 = v23;
      v41 = sub_10001A0F0(v35, v36, &v65);

      *(v34 + 14) = v41;
      v23 = v40;
      v29 = v39;
      v27 = v38;
      v32 = v56;
      _os_log_impl(&_mh_execute_header, v56, v37, "attempt #%ld failed: %{public}s", v34, 0x16u);
      sub_100002E28(v57);
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v42 = v28;
        v43 = v27;
        v44 = v29;
        v45 = 2;
        goto LABEL_18;
      }
    }

    else if (v30)
    {
      if (v28 <= 499 || v28 >= 0x258)
      {
        v42 = v28;
        v43 = v27;
        v44 = v29;
        v45 = 1;
LABEL_18:
        sub_10000AEC8(v42, v43, v44, v45, 1);
        goto LABEL_20;
      }

      LOBYTE(v30) = 1;
    }

    sub_10000A688();
    swift_allocError();
    *v50 = v28;
    *(v50 + 8) = v27;
    *(v50 + 16) = v29;
    *(v50 + 24) = v30;
    swift_willThrow();
    goto LABEL_20;
  }

  if (qword_10002CAE8 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100002AD8(v46, qword_10002CF48);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 134217984;
    *(v49 + 4) = v51[0];
    _os_log_impl(&_mh_execute_header, v47, v48, "narrative request succeeded after %ld attempt(s).", v49, 0xCu);
  }

LABEL_20:
}

void sub_10000A344(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedSession];
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v11[4] = sub_10000B274;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000A51C;
  v11[3] = &unk_100029670;
  v8 = _Block_copy(v11);
  v9 = a2;

  v10 = [v5 dataTaskWithRequest:isa completionHandler:v8];
  _Block_release(v8);

  [v10 resume];
}

Swift::Int sub_10000A48C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1000093C8(a1, a2, a3, a4);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_beginAccess();
  v14 = *(a6 + 16);
  v15 = *(a6 + 24);
  v16 = *(a6 + 32);
  v17 = *(a6 + 41);
  *(a6 + 16) = v7;
  *(a6 + 24) = v9;
  *(a6 + 32) = v11;
  v18 = *(a6 + 40);
  *(a6 + 40) = v13;
  *(a6 + 41) = HIBYTE(v13) & 1;
  sub_10000AEC8(v14, v15, v16, v18, v17);
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_10000A51C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_10000B27C(v6, v10);
}

uint64_t sub_10000A5E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000A628()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_10000A688()
{
  result = qword_10002D008;
  if (!qword_10002D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D008);
  }

  return result;
}

uint64_t sub_10000A6DC()
{
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v9 - 8);
  __chkstk_darwin(v9);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v8 = sub_10000AE38();
  static DispatchQoS.unspecified.getter();
  v11 = &_swiftEmptyArrayStorage;
  sub_10000B198(&qword_10002D018, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003400(&qword_10002D020, &unk_100022370);
  sub_10000B1E0(&qword_10002D028, &qword_10002D020, &unk_100022370);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  v5 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6 = v10;
  *(v10 + 16) = v5;
  return v6;
}

uint64_t sub_10000A934(uint64_t a1, unint64_t a2)
{
  sub_100002E74(a1, a2);
  sub_10000A9DC(a1, a2);
  v4 = static String._fromUTF8Repairing(_:)();

  return v4;
}

uint64_t sub_10000A9A0@<X0>(uint64_t *a3@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a3 = result;
  a3[1] = v5;
  return result;
}

void *sub_10000A9DC(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_100002EC8(a1, a2);
      return &_swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_10001A530(v10, 0);
      v14 = Data._copyContents(initializing:)();
      sub_100002EC8(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_10000AB58(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

double sub_10000AD04(uint64_t a1)
{
  if (qword_10002CB10 != -1)
  {
    swift_once();
  }

  countAndFlagsBits = narrativeCertPrefDomain._countAndFlagsBits;
  object = narrativeCertPrefDomain._object;
  v4._countAndFlagsBits = 0x5366666F6B636142;
  v4._object = 0xEE0073646E6F6365;
  v16 = preferencesDoubleValue(_:domain:)(v4, narrativeCertPrefDomain);
  if (v5)
  {
    v6 = 5.0;
  }

  else
  {
    v6 = *&v16.is_nil;
  }

  v7._object = 0x8000000100020C00;
  v7._countAndFlagsBits = 0xD000000000000011;
  v8._countAndFlagsBits = countAndFlagsBits;
  v8._object = object;
  v17 = preferencesDoubleValue(_:domain:)(v7, v8);
  if (v9)
  {
    v10 = 300.0;
  }

  else
  {
    v10 = *&v17.is_nil;
  }

  v11 = exp2(a1) * v6;
  if (v10 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = sub_1000182C4(0x20000000000001);
  v14 = vcvtd_n_f64_u64(v13, 0x35uLL) * 15.0 + 5.0;
  if (v13 == 0x20000000000000)
  {
    v14 = 20.0;
  }

  return v12 - v12 / v14;
}

unint64_t sub_10000AE38()
{
  result = qword_10002D010;
  if (!qword_10002D010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002D010);
  }

  return result;
}

uint64_t sub_10000AE84()
{
  sub_10000AEC8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 41));

  return _swift_deallocObject(v0, 42, 7);
}

uint64_t sub_10000AEC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a5)
  {
    return sub_10000AED4(a1, a2, a3, a4);
  }

  else
  {
    return sub_100002EC8(a1, a2);
  }
}

uint64_t sub_10000AED4(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return v4;
    }
  }
}

uint64_t sub_10000AEFC(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
    return swift_errorRetain();
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return v4;
    }

    return swift_errorRetain();
  }
}

unint64_t sub_10000AF24()
{
  result = qword_10002D030;
  if (!qword_10002D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D030);
  }

  return result;
}

uint64_t sub_10000AFCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003400(&qword_10002D038, &qword_100022380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B03C()
{
  v1 = type metadata accessor for URLRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_10000B0E8()
{
  v1 = *(type metadata accessor for URLRequest() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10000A344(v0 + v2, v4, v5);
}

uint64_t sub_10000B180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000B198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000B1E0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003658(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000B234()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B27C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100002EC8(result, a2);
  }

  return result;
}

uint64_t sub_10000B290(uint64_t a1)
{
  v2 = sub_100003400(&qword_10002D060, &qword_100022398);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B2F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000B310(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 sub_10000B32C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10000B340(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000B388(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_10000B3D0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t type metadata accessor for NarrativeIdentity(uint64_t a1)
{
  result = qword_10002D080;
  if (!qword_10002D080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B450(uint64_t a1)
{
  result = type metadata accessor for URL();
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

void sub_10000B540()
{
  v2 = v1;
  v3 = type metadata accessor for URLRequest();
  v262 = *(v3 - 8);
  v263 = v3;
  __chkstk_darwin(v3);
  v5 = &v256 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for NarrativeCertRequest(0);
  __chkstk_darwin(v264);
  v266 = &v256 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10002CAF8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_100002AD8(v7, qword_10002D068);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v265 = v5;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v286 = v8;
    v15 = v14;
    v268 = v14;
    *v13 = 136446210;
    v16 = NarrativeCert.keychainLabel.getter();
    v18 = sub_10001A0F0(v16, v17, &v268);

    *(v13 + 4) = v18;
    v2 = v1;
    _os_log_impl(&_mh_execute_header, v10, v11, "Creating NarrativeIdentity for %{public}s", v13, 0xCu);
    sub_100002E28(v15);
    v8 = v286;
  }

  v19 = (*((swift_isaMask & *v9) + qword_10002D570 + 272))();
  if (!v2)
  {
    v20 = v19;
    v261 = 0;
    v21 = v9;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v286 = v8;
      v25 = v24;
      v26 = swift_slowAlloc();
      v260 = v20;
      v27 = v26;
      v268 = v26;
      *v25 = 136446210;
      v28 = NarrativeCert.keychainLabel.getter();
      v30 = sub_10001A0F0(v28, v29, &v268);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s created private key", v25, 0xCu);
      sub_100002E28(v27);
      v20 = v260;

      v8 = v286;
    }

    v31 = v261;
    v32 = sub_10000F5F0(v20);
    if (v31)
    {

      return;
    }

    v258 = v32;
    v259 = v33;
    v34 = v21;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v286 = v8;
      v38 = v37;
      v39 = swift_slowAlloc();
      v260 = v20;
      v261 = v39;
      v268 = v39;
      *v38 = 136446210;
      v40 = NarrativeCert.keychainLabel.getter();
      v42 = v34;
      v43 = sub_10001A0F0(v40, v41, &v268);

      *(v38 + 4) = v43;
      v34 = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s created CSR", v38, 0xCu);
      sub_100002E28(v261);
      v20 = v260;

      v8 = v286;
    }

    sub_10000D6BC(v20, &v272);
    v44 = v34;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v286 = v8;
      v48 = v47;
      v261 = swift_slowAlloc();
      v268 = v261;
      *v48 = 136446210;
      LODWORD(v257) = v46;
      v49 = NarrativeCert.keychainLabel.getter();
      v51 = v20;
      v52 = sub_10001A0F0(v49, v50, &v268);

      *(v48 + 4) = v52;
      v20 = v51;
      _os_log_impl(&_mh_execute_header, v45, v257, "%{public}s created identityAttestation", v48, 0xCu);
      sub_100002E28(v261);

      v8 = v286;
    }

    (*((swift_isaMask & *v44) + qword_10002D570 + 232))(&v275, v20);
    v261 = 0;
    v53 = v44;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v286 = v8;
      v57 = v56;
      v58 = swift_slowAlloc();
      v260 = v20;
      v59 = v58;
      v268 = v58;
      *v57 = 136446210;
      v60 = NarrativeCert.keychainLabel.getter();
      v62 = sub_10001A0F0(v60, v61, &v268);

      *(v57 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v54, v55, "%{public}s created keyAttestation", v57, 0xCu);
      sub_100002E28(v59);
      v20 = v260;

      v8 = v286;
    }

    v63 = v261;
    v64 = (*((swift_isaMask & *v53) + qword_10002D570 + 288))(v20);
    v261 = v63;
    if (v63)
    {
      v285 = v275;
      sub_100011310(&v285);
      v284 = v276;
      sub_100006E1C(&v284, &qword_10002D140, &qword_100022620);
      v283 = *(&v276 + 1);
      sub_100006E1C(&v283, &qword_10002D140, &qword_100022620);
      v282 = v277;
      sub_100006E1C(&v282, &qword_10002D148, qword_100022628);
      v281 = v272;
      sub_100011310(&v281);
      v280 = v273;
      sub_100006E1C(&v280, &qword_10002D140, &qword_100022620);
      v279 = *(&v273 + 1);
      sub_100006E1C(&v279, &qword_10002D140, &qword_100022620);
      v278 = v274;
      sub_100006E1C(&v278, &qword_10002D148, qword_100022628);

      return;
    }

    v66 = v64;
    v257 = v65;
    v67 = v53;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();

    v70 = os_log_type_enabled(v68, v69);
    v286 = v8;
    if (v70)
    {
      v71 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      v268 = v256;
      *v71 = 136446210;
      v72 = NarrativeCert.keychainLabel.getter();
      v74 = v66;
      v75 = v20;
      v76 = sub_10001A0F0(v72, v73, &v268);

      *(v71 + 4) = v76;
      v20 = v75;
      v66 = v74;
      _os_log_impl(&_mh_execute_header, v68, v69, "%{public}s generated cookie", v71, 0xCu);
      sub_100002E28(v256);
      v8 = v286;
    }

    v77 = qword_10002D540;
    v78 = type metadata accessor for URL();
    v79 = v266;
    (*(*(v78 - 8) + 16))(v266, v67 + v77, v78);
    v81 = *(v67 + qword_10002D548);
    v80 = *(v67 + qword_10002D548 + 8);

    NarrativeCert.domain.getter();
    v82 = NarrativeDomain.rawValue.getter();
    v83 = v264;
    v84 = v264[10];
    v85 = (v79 + v264[5]);
    *v85 = v81;
    v85[1] = v80;
    v86 = (v79 + v83[6]);
    *v86 = v82;
    v86[1] = v87;
    v88 = (v79 + v83[7]);
    *v88 = v258;
    v88[1] = v259;
    v89 = (v79 + v83[8]);
    v90 = v273;
    *v89 = v272;
    v89[1] = v90;
    v91 = v275;
    v89[2] = v274;
    v92 = (v79 + v83[9]);
    v93 = v276;
    v94 = v277;
    *v92 = v91;
    v92[1] = v93;
    v95 = (v79 + v84);
    v92[2] = v94;
    v96 = v257;
    *v95 = v66;
    v95[1] = v96;
    v97 = v67;
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.debug.getter();

    v100 = os_log_type_enabled(v98, v99);
    v264 = v97;
    if (v100)
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v268 = v102;
      *v101 = 136446210;
      v103 = NarrativeCert.keychainLabel.getter();
      v105 = v8;
      v106 = sub_10001A0F0(v103, v104, &v268);

      *(v101 + 4) = v106;
      v8 = v105;
      _os_log_impl(&_mh_execute_header, v98, v99, "%{public}s created NarrativeCertRequest", v101, 0xCu);
      sub_100002E28(v102);
    }

    v107 = v265;
    v108 = v261;
    sub_100001EC4(v265);
    v260 = v20;
    if (v108)
    {
      goto LABEL_38;
    }

    v261 = 0;
    v109 = v264;
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = v8;
      v114 = swift_slowAlloc();
      v268 = v114;
      *v112 = 136446210;
      v115 = NarrativeCert.keychainLabel.getter();
      v117 = sub_10001A0F0(v115, v116, &v268);

      *(v112 + 4) = v117;
      _os_log_impl(&_mh_execute_header, v110, v111, "%{public}s created NarrativeURLRequest", v112, 0xCu);
      sub_100002E28(v114);
      v8 = v113;

      v107 = v265;
    }

    v118 = v261;
    if (qword_10002CAF0 != -1)
    {
      swift_once();
      v118 = v261;
    }

    v119 = sub_1000096E4(v107);
    v261 = v118;
    if (v118)
    {
      (*(v262 + 8))(v107, v263);
LABEL_37:
      v108 = v261;
LABEL_38:
      v271 = v108;
      v261 = v108;
      swift_errorRetain();
      sub_100003400(&qword_10002CD80, &unk_100021EF0);
      if (swift_dynamicCast())
      {

        v143 = v268;
        v144 = v269;
        v145 = v270;
        v146 = sub_10001B6B4(v268, v269, v270);
        v147 = Logger.logObject.getter();
        v148 = static os_log_type_t.error.getter();
        v149 = os_log_type_enabled(v147, v148);
        v265 = v143;
        v263 = v144;
        LODWORD(v262) = v145;
        if (v149)
        {
          v150 = swift_slowAlloc();
          v261 = swift_slowAlloc();
          v267[0] = v261;
          *v150 = 136446210;
          v151 = [v146 description];
          v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v154 = v153;

          v155 = sub_10001A0F0(v152, v154, v267);

          *(v150 + 4) = v155;
          _os_log_impl(&_mh_execute_header, v147, v148, "Error createNarrativeIdentity: %{public}s", v150, 0xCu);
          sub_100002E28(v261);
        }

        NarrativeCert.domain.getter();
        v264 = NarrativeCert.identityType.getter();
        v267[0] = [v146 code];
        v156 = dispatch thunk of CustomStringConvertible.description.getter();
        v158 = v157;
        v159 = [v146 description];
        v261 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v161 = v160;

        v162 = Logger.logObject.getter();
        v163 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v162, v163))
        {
          v164 = swift_slowAlloc();
          v259 = v156;
          v165 = v164;
          v286 = swift_slowAlloc();
          v267[0] = v286;
          *v165 = 136446978;
          v166 = NarrativeDomain.rawValue.getter();
          v168 = v146;
          v169 = sub_10001A0F0(v166, v167, v267);

          *(v165 + 4) = v169;
          *(v165 + 12) = 2082;
          v170 = NarrativeIdentityType.rawValue.getter();
          v172 = sub_10001A0F0(v170, v171, v267);

          *(v165 + 14) = v172;
          v146 = v168;
          *(v165 + 22) = 2082;
          *(v165 + 24) = sub_10001A0F0(v259, v158, v267);
          *(v165 + 32) = 2082;
          *(v165 + 34) = sub_10001A0F0(v261, v161, v267);
          _os_log_impl(&_mh_execute_header, v162, v163, "narrative_domain=%{public}s, narrative_id_type=%{public}s, narrative_result=%{public}s, narrative_error=%{public}s", v165, 0x2Au);
          swift_arrayDestroy();
        }

        v173 = v265;
        v174 = v263;
        v175 = v262;
        sub_100002B10();
        swift_allocError();
        *v176 = v173;
        *(v176 + 8) = v174;
        *(v176 + 16) = v175;
        swift_willThrow();

        sub_100002F80(v266);
      }

      else
      {

        v268 = 0;
        v269 = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        v177._countAndFlagsBits = 0xD000000000000034;
        v177._object = 0x8000000100021060;
        String.append(_:)(v177);
        swift_getErrorValue();
        v178._countAndFlagsBits = Error.localizedDescription.getter();
        String.append(_:)(v178);

        v180 = v268;
        v179 = v269;
        sub_100003400(&qword_10002D0F8, &unk_100022960);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100022440;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v182;
        v268 = v180;
        v269 = v179;
        v270 = 2;

        v183 = String.init<A>(describing:)();
        *(inited + 72) = &type metadata for String;
        *(inited + 48) = v183;
        *(inited + 56) = v184;
        sub_10001B444(inited);
        swift_setDeallocating();
        sub_100006E1C(inited + 32, &qword_10002D100, &qword_1000225E0);
        v185 = objc_allocWithZone(NSError);
        v186 = String._bridgeToObjectiveC()();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v188 = [v185 initWithDomain:v186 code:-3 userInfo:isa];

        v189 = v188;
        v190 = Logger.logObject.getter();
        v191 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v190, v191))
        {
          v192 = swift_slowAlloc();
          v193 = swift_slowAlloc();
          v268 = v193;
          *v192 = 136446210;
          v194 = [v189 description];
          v195 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v196 = v189;
          v198 = v197;

          v199 = sub_10001A0F0(v195, v198, &v268);
          v189 = v196;

          *(v192 + 4) = v199;
          _os_log_impl(&_mh_execute_header, v190, v191, "Error creating NarrativeIdentity: %{public}s", v192, 0xCu);
          sub_100002E28(v193);
        }

        NarrativeCert.domain.getter();
        v265 = NarrativeCert.identityType.getter();
        v268 = [v189 code];
        v200 = dispatch thunk of CustomStringConvertible.description.getter();
        v202 = v201;
        v203 = [v189 description];
        v204 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v206 = v205;

        v207 = Logger.logObject.getter();
        v208 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          v286 = v189;
          v210 = v209;
          v264 = swift_slowAlloc();
          v268 = v264;
          *v210 = 136446978;
          v211 = NarrativeDomain.rawValue.getter();
          v213 = sub_10001A0F0(v211, v212, &v268);
          v263 = v204;
          v214 = v213;

          *(v210 + 4) = v214;
          *(v210 + 12) = 2082;
          v215 = NarrativeIdentityType.rawValue.getter();
          v217 = sub_10001A0F0(v215, v216, &v268);

          *(v210 + 14) = v217;
          *(v210 + 22) = 2082;
          *(v210 + 24) = sub_10001A0F0(v200, v202, &v268);
          *(v210 + 32) = 2082;
          *(v210 + 34) = sub_10001A0F0(v263, v206, &v268);
          _os_log_impl(&_mh_execute_header, v207, v208, "narrative_domain=%{public}s, narrative_id_type=%{public}s, narrative_result=%{public}s, narrative_error=%{public}s", v210, 0x2Au);
          swift_arrayDestroy();

          v189 = v286;
        }

        swift_willThrow();
        sub_100002F80(v266);
      }

      return;
    }

    v120 = v119;
    v121 = v109;
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.debug.getter();

    v124 = os_log_type_enabled(v122, v123);
    v125 = v260;
    v259 = v120;
    if (v124)
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v268 = v127;
      *v126 = 136446210;
      v128 = NarrativeCert.keychainLabel.getter();
      v130 = sub_10001A0F0(v128, v129, &v268);

      *(v126 + 4) = v130;
      _os_log_impl(&_mh_execute_header, v122, v123, "%{public}s retrieved certificates from Narrative server", v126, 0xCu);
      sub_100002E28(v127);
      v120 = v259;

      v8 = v286;
    }

    sub_10001272C(v120);
    v131 = v121;
    v132 = v8;
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v268 = v136;
      *v135 = 136446210;
      v137 = NarrativeCert.keychainLabel.getter();
      v132 = v138;
      v139 = sub_10001A0F0(v137, v138, &v268);

      *(v135 + 4) = v139;
      _os_log_impl(&_mh_execute_header, v133, v134, "%{public}s attempted to add CA chain certs to keychain", v135, 0xCu);
      sub_100002E28(v136);
      v120 = v259;
    }

    if (*(v120 + 2))
    {
      v140 = *(v120 + 4);
      v141 = *(v120 + 5);
      sub_100002E74(v140, v141);

      v142 = v261;
      sub_10000EA04(v125, v140, v141);
      v261 = v142;
      if (v142)
      {
        (*(v262 + 8))(v265, v263);
        sub_100002EC8(v140, v141);
        goto LABEL_37;
      }

      sub_100002EC8(v140, v141);
      v120 = v131;
      v218 = Logger.logObject.getter();
      v219 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v218, v219))
      {
        v220 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        v268 = v221;
        *v220 = 136446210;
        v222 = NarrativeCert.keychainLabel.getter();
        v224 = sub_10001A0F0(v222, v223, &v268);

        *(v220 + 4) = v224;
        _os_log_impl(&_mh_execute_header, v218, v219, "%{public}s rotated key and cert", v220, 0xCu);
        sub_100002E28(v221);
      }

      v132 = "eNarrativeIdentity: ";
      if (qword_10002CB10 == -1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_52:
    v225._object = (v132 | 0x8000000000000000);
    v225._countAndFlagsBits = 0xD000000000000012;
    v226.value = preferencesBoolValue(_:domain:)(v225, narrativeCertPrefDomain).value;
    if (v226.value == 2 || !v226.value)
    {
      sub_10001D9E8();
      v227 = v120;
      v228 = Logger.logObject.getter();
      v229 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v228, v229))
      {
        v230 = swift_slowAlloc();
        v231 = swift_slowAlloc();
        v268 = v231;
        *v230 = 136446210;
        v232 = NarrativeCert.keychainLabel.getter();
        v234 = sub_10001A0F0(v232, v233, &v268);

        *(v230 + 4) = v234;
        _os_log_impl(&_mh_execute_header, v228, v229, "%{public}s registered for refresh", v230, 0xCu);
        sub_100002E28(v231);
      }
    }

    (*(v262 + 8))(v265, v263);
    v235 = v120;
    v236 = Logger.logObject.getter();
    v237 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v236, v237))
    {
      v238 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      v268 = v239;
      *v238 = 136446210;
      v240 = NarrativeCert.keychainLabel.getter();
      v242 = sub_10001A0F0(v240, v241, &v268);

      *(v238 + 4) = v242;
      _os_log_impl(&_mh_execute_header, v236, v237, "Successfully created identity for %{public}s", v238, 0xCu);
      sub_100002E28(v239);
    }

    NarrativeCert.domain.getter();
    NarrativeCert.identityType.getter();
    v268 = 0;
    v243 = dispatch thunk of CustomStringConvertible.description.getter();
    v245 = v244;
    v246 = Logger.logObject.getter();
    v247 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v246, v247))
    {
      v248 = swift_slowAlloc();
      v286 = v243;
      v249 = v248;
      v268 = swift_slowAlloc();
      *v249 = 136446978;
      v250 = NarrativeDomain.rawValue.getter();
      v252 = sub_10001A0F0(v250, v251, &v268);

      *(v249 + 4) = v252;
      *(v249 + 12) = 2082;
      v253 = NarrativeIdentityType.rawValue.getter();
      v255 = sub_10001A0F0(v253, v254, &v268);

      *(v249 + 14) = v255;
      *(v249 + 22) = 2082;
      *(v249 + 24) = sub_10001A0F0(v286, v245, &v268);
      *(v249 + 32) = 2082;
      *(v249 + 34) = sub_10001A0F0(1701736302, 0xE400000000000000, &v268);
      _os_log_impl(&_mh_execute_header, v246, v247, "narrative_domain=%{public}s, narrative_id_type=%{public}s, narrative_result=%{public}s, narrative_error=%{public}s", v249, 0x2Au);
      swift_arrayDestroy();
    }

    sub_100002F80(v266);
  }
}

uint64_t sub_10000D1B8(uint64_t a1)
{
  v2 = v1;
  v34 = 0;
  v3 = SecKeyCopySystemKey();
  if (v3)
  {
    v4 = v3;
    Attestation = SecKeyCreateAttestation();

    if (Attestation)
    {
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      if (qword_10002CAF8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100002AD8(v9, qword_10002D068);
      v10 = v2;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v32 = v14;
        *v13 = 136446210;
        v15 = NarrativeCert.keychainLabel.getter();
        v17 = sub_10001A0F0(v15, v16, &v32);

        *(v13 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v11, v12, "Generated DAK attestation for %{public}s", v13, 0xCu);
        sub_100002E28(v14);
      }

      countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
      sub_100002EC8(v6, v8);
      return countAndFlagsBits;
    }

    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v19 = 0x8000000100021030;
    v20 = 0xD000000000000023;
  }

  else
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v19 = 0x8000000100021010;
    v20 = 0xD00000000000001ALL;
  }

  v32 = v20;
  v33 = v19;
  v21._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 8250;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x6E776F6E6B6E75;
  v23._object = 0xE700000000000000;
  String.append(_:)(v23);

  countAndFlagsBits = v32;
  v24 = v33;
  if (qword_10002CAF8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100002AD8(v25, qword_10002D068);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32 = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_10001A0F0(countAndFlagsBits, v24, &v32);
    _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s", v28, 0xCu);
    sub_100002E28(v29);
  }

  sub_100002B10();
  swift_allocError();
  *v30 = countAndFlagsBits;
  *(v30 + 8) = v24;
  *(v30 + 16) = 0;
  swift_willThrow();
  return countAndFlagsBits;
}

void sub_10000D6BC(__SecKey *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  NarrativeCert.identityType.getter();
  v7 = NarrativeIdentityType.rawValue.getter();
  v9 = v8;
  if (v7 == NarrativeIdentityType.rawValue.getter() && v9 == v10)
  {

    goto LABEL_5;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_5:
    v12 = v41;
    (*((swift_isaMask & *v4) + qword_10002D570 + 248))(v41, a1);
    if (v3)
    {
      return;
    }

    goto LABEL_6;
  }

  v16 = *(v4 + qword_10002D560);
  if (v16)
  {
    v17 = qword_10002CAF8;
    v18 = v16;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100002AD8(v19, qword_10002D068);
    v20 = v18;
    v21 = v4;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v40[0] = v43;
      *v24 = 136446466;
      v25 = NarrativeCert.keychainLabel.getter();
      v27 = sub_10001A0F0(v25, v26, v40);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      v28 = NarrativeCert.keychainLabel.getter();
      v30 = sub_10001A0F0(v28, v29, v40);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s attesting identity request with %{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }

    v12 = v42;
    sub_10000DC34(a1, v42);

    if (!v3)
    {
LABEL_6:
      v13 = v12[1];
      v14 = *(v12 + 1);
      v15 = *(v12 + 2);
      *a2 = *v12;
      *(a2 + 8) = v13;
      *(a2 + 16) = v14;
      *(a2 + 32) = v15;
    }
  }

  else
  {
    v40[0] = 0;
    v40[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(111);
    v31._object = 0x8000000100020F90;
    v31._countAndFlagsBits = 0xD00000000000002ALL;
    String.append(_:)(v31);
    v32._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 0xD000000000000043;
    v33._object = 0x8000000100020FC0;
    String.append(_:)(v33);
    if (qword_10002CAF8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100002AD8(v34, qword_10002D068);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40[0] = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_10001A0F0(0, 0xE000000000000000, v40);
      _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s", v37, 0xCu);
      sub_100002E28(v38);
    }

    sub_100002B10();
    swift_allocError();
    *v39 = 0;
    *(v39 + 8) = 0xE000000000000000;
    *(v39 + 16) = 2;
    swift_willThrow();
  }
}

uint64_t sub_10000DB84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(v2 + qword_10002D568))
  {
    v6 = 7366003;
  }

  else
  {
    v6 = 1952870259;
  }

  if (*(v2 + qword_10002D568))
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = sub_100010B3C();
  if (v3)
  {
  }

  v9 = v8;
  result = sub_10000D1B8(a1);
  *a2 = v6;
  a2[1] = v7;
  a2[2] = 0;
  a2[3] = v9;
  a2[4] = result;
  a2[5] = v11;
  return result;
}

void sub_10000DC34(__SecKey *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v132 = a1;
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  *&v131 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = dispatch thunk of NarrativeCert.fetchSecRefsFromKeychain()();
  v11 = &unk_10002C000;
  if (v10)
  {
    goto LABEL_2;
  }

  if (qword_10002CAF8 != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  sub_100002AD8(v69, qword_10002D068);
  v70 = v2;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v135 = v7;
    v130 = v8;
    v74 = v73;
    v128 = swift_slowAlloc();
    v129 = v3;
    v133 = v128;
    *v74 = 136446210;
    v75 = NarrativeCert.keychainLabel.getter();
    v77 = sub_10001A0F0(v75, v76, &v133);

    *(v74 + 4) = v77;
    v10 = 0;
    _os_log_impl(&_mh_execute_header, v71, v72, "No existing refs for attestation, creating identity for %{public}s", v74, 0xCu);
    sub_100002E28(v128);
    v4 = v129;

    v8 = v130;
    v7 = v135;
  }

  sub_10000B540();
  v11 = &unk_10002C000;
  if (!v4)
  {
LABEL_2:
    v135 = dispatch thunk of NarrativeCert.fetchSecRefsFromKeychain()();
    if (v135)
    {
      if (v11[351] != -1)
      {
        swift_once();
      }

      v130 = v8;
      v12 = type metadata accessor for Logger();
      v13 = sub_100002AD8(v12, qword_10002D068);
      v14 = v5;
      v128 = v13;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();

      v17 = os_log_type_enabled(v15, v16);
      v127 = v10;
      v129 = v4;
      if (v17)
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v133 = v19;
        *v18 = 136446210;
        v20 = NarrativeCert.keychainLabel.getter();
        v22 = sub_10001A0F0(v20, v21, &v133);

        *(v18 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v15, v16, "Attestor refs for %{public}s acquired", v18, 0xCu);
        sub_100002E28(v19);
      }

      v23 = dispatch thunk of NarrativeRefs.certRef.getter();
      v24 = dispatch thunk of NarrativeRefs.keyRef.getter();
      v25 = SecIdentityCreate();

      if (v25)
      {
        v132 = SecKeyCopyPublicKey(v132);
        if (!v132)
        {
          v133 = 0;
          v134 = 0xE000000000000000;
          _StringGuts.grow(_:)(47);

          v133 = 0xD00000000000002DLL;
          v134 = 0x8000000100020ED0;
          v100._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
          String.append(_:)(v100);

          v102 = v133;
          v101 = v134;

          v103 = Logger.logObject.getter();
          v104 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v133 = v106;
            *v105 = 136446210;
            *(v105 + 4) = sub_10001A0F0(v102, v101, &v133);
            _os_log_impl(&_mh_execute_header, v103, v104, "%{public}s", v105, 0xCu);
            sub_100002E28(v106);
          }

          v97 = v127;
          sub_100002B10();
          swift_allocError();
          *v107 = v102;
          *(v107 + 8) = v101;
          *(v107 + 16) = 0;
          swift_willThrow();

          goto LABEL_37;
        }

        v124 = a2;
        v26 = v131;
        static String.Encoding.utf8.getter();
        v27 = String.data(using:allowLossyConversion:)();
        v29 = v28;
        (v130)[1](v26, v7);
        if (v29 >> 60 == 15)
        {
          goto LABEL_41;
        }

        sub_100003400(&qword_10002D110, &qword_1000225F0);
        v30 = swift_allocObject();
        v131 = xmmword_100022440;
        *(v30 + 16) = xmmword_100022440;
        sub_100003400(&qword_10002D118, &qword_1000225F8);
        v31 = swift_allocObject();
        *(v31 + 16) = v131;
        sub_100003400(&qword_10002D120, &qword_100022600);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_100021E70;
        *(v32 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v32 + 40) = v33;
        *(v32 + 48) = 0xD000000000000010;
        *(v32 + 56) = 0x8000000100020F00;
        *(v31 + 32) = v32;
        *(v30 + 32) = v31;
        sub_100003400(&qword_10002D128, &qword_100022608);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v35 = Data._bridgeToObjectiveC()().super.isa;
        *&v131 = isa;
        v36 = SecIdentitySignCertificate();

        v125 = v27;
        v126 = v29;
        if (v36)
        {
          v130 = v25;
          v122 = v36;
          v37 = SecCertificateCopyData(v36);
          v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = v39;

          v41 = dispatch thunk of NarrativeRefs.certRef.getter();
          v42 = SecCertificateCopyData(v41);

          v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v14;
          v46 = v45;

          v120 = v44;
          v47 = dispatch thunk of NarrativeCert.getCertChain()();
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_100022450;
          v123 = v40;
          v49 = v43;
          *(v48 + 32) = Data.base64EncodedString(options:)(0);
          v121 = v46;
          *(v48 + 48) = Data.base64EncodedString(options:)(0);
          v50 = v47[2];
          if (v50)
          {
            v119 = v38;
            v51 = v47[5];
            *(v48 + 64) = v47[4];
            *(v48 + 72) = v51;
            if (v50 != 1)
            {
              v52 = v47[6];
              v53 = v47[7];

              *(v48 + 80) = v52;
              *(v48 + 88) = v53;
              v54 = v120;
              v55 = Logger.logObject.getter();
              v56 = static os_log_type_t.info.getter();

              if (os_log_type_enabled(v55, v56))
              {
                v57 = swift_slowAlloc();
                v58 = swift_slowAlloc();
                v133 = v58;
                *v57 = 136446210;
                v59 = NarrativeCert.keychainLabel.getter();
                v61 = sub_10001A0F0(v59, v60, &v133);

                *(v57 + 4) = v61;
                _os_log_impl(&_mh_execute_header, v55, v56, "Successfully attested a key with %{public}s", v57, 0xCu);
                sub_100002E28(v58);
              }

              v62 = v127;
              v63 = v131;
              v64 = v123;
              NarrativeCert.identityType.getter();
              v65 = NarrativeIdentityType.rawValue.getter();
              v67 = v66;
              sub_100002EC8(v49, v121);
              sub_100002EC8(v119, v64);

              sub_10000B27C(v125, v126);
              v68 = v124;
              *v124 = v65;
              v68[1] = v67;
              v68[2] = v48;
              v68[3] = 0;
              v68[4] = 0;
              v68[5] = 0;
              return;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_41:
          __break(1u);
          return;
        }

        v133 = 0;
        v134 = 0xE000000000000000;
        _StringGuts.grow(_:)(52);
        v108._countAndFlagsBits = 0xD000000000000016;
        v108._object = 0x8000000100020F20;
        String.append(_:)(v108);
        v109._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
        String.append(_:)(v109);

        v110._object = 0x8000000100020EB0;
        v110._countAndFlagsBits = 0xD00000000000001CLL;
        String.append(_:)(v110);
        v112 = v133;
        v111 = v134;

        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v133 = v116;
          *v115 = 136446210;
          *(v115 + 4) = sub_10001A0F0(v112, v111, &v133);
          _os_log_impl(&_mh_execute_header, v113, v114, "%{public}s", v115, 0xCu);
          sub_100002E28(v116);
        }

        v97 = v127;
        v117 = v131;
        sub_100002B10();
        swift_allocError();
        *v118 = v112;
        *(v118 + 8) = v111;
        *(v118 + 16) = 0;
        swift_willThrow();

        sub_10000B27C(v125, v126);
        v99 = v132;
      }

      else
      {
        v133 = 0;
        v134 = 0xE000000000000000;
        _StringGuts.grow(_:)(61);
        v88._countAndFlagsBits = 0xD00000000000001FLL;
        v88._object = 0x8000000100020E90;
        String.append(_:)(v88);
        v89._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
        String.append(_:)(v89);

        v90._object = 0x8000000100020EB0;
        v90._countAndFlagsBits = 0xD00000000000001CLL;
        String.append(_:)(v90);
        v92 = v133;
        v91 = v134;

        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v133 = v96;
          *v95 = 136446210;
          *(v95 + 4) = sub_10001A0F0(v92, v91, &v133);
          _os_log_impl(&_mh_execute_header, v93, v94, "%{public}s", v95, 0xCu);
          sub_100002E28(v96);
        }

        v97 = v127;
        sub_100002B10();
        swift_allocError();
        *v98 = v92;
        *(v98 + 8) = v91;
        *(v98 + 16) = 0;
        swift_willThrow();
        v99 = v135;
      }

LABEL_37:
      return;
    }

    v133 = 0;
    v134 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v133 = 0xD00000000000001ALL;
    v134 = 0x8000000100020E50;
    v78._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v78);

    v79._countAndFlagsBits = 0xD000000000000013;
    v79._object = 0x8000000100020E70;
    String.append(_:)(v79);
    v80 = v133;
    v81 = v134;
    if (v11[351] != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_100002AD8(v82, qword_10002D068);

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v133 = v86;
      *v85 = 136446210;
      *(v85 + 4) = sub_10001A0F0(v80, v81, &v133);
      _os_log_impl(&_mh_execute_header, v83, v84, "%{public}s", v85, 0xCu);
      sub_100002E28(v86);
    }

    sub_100002B10();
    swift_allocError();
    *v87 = v80;
    *(v87 + 8) = v81;
    *(v87 + 16) = 0;
    swift_willThrow();
  }
}

void sub_10000EA04(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (qword_10002CAF8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_100002AD8(v7, qword_10002D068);
  v9 = v3;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v31[5] = v8;
    v30 = a1;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31[0] = v13;
    *v12 = 136446210;
    v14 = NarrativeCert.keychainLabel.getter();
    v16 = sub_10001A0F0(v14, v15, v31);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Updating Cert and Key refs for %{public}s", v12, 0xCu);
    sub_100002E28(v13);
    v5 = v4;

    a1 = v30;
  }

  v18 = sub_1000128FC(v17);
  if (!v5)
  {
    v19 = v18;
    sub_10001302C();
    sub_1000138A0(a1);
    v20 = dispatch thunk of NarrativeCert.testKeychain.getter();
    if (v20)
    {

      sub_100013DA4(a1);
    }

    if (v19)
    {
      sub_1000144A4();
      type metadata accessor for CFData(0);
      v31[3] = v21;
      v31[0] = v19;
      v19;
      sub_100015578(v31);
      sub_100002E28(v31);
    }

    v22 = v9;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31[0] = v26;
      *v25 = 136446210;
      v27 = NarrativeCert.keychainLabel.getter();
      v29 = sub_10001A0F0(v27, v28, v31);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Cert and Key refs added successfully for %{public}s", v25, 0xCu);
      sub_100002E28(v26);
    }
  }
}

unint64_t sub_10000ED40()
{
  v1 = v0;
  v2 = sub_10001B444(&_swiftEmptyArrayStorage);
  error = 0;
  if (!kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate)
  {
    __break(1u);
  }

  v3 = v2;
  v4 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, &error);
  if (v4)
  {
    v5 = v4;

    sub_100003400(&qword_10002D0F8, &unk_100022960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100022460;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v7;
    type metadata accessor for CFString(0);
    v9 = v8;
    *(inited + 72) = v8;
    *(inited + 48) = kSecAttrTokenIDSecureEnclave;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v10;
    *(inited + 120) = v9;
    *(inited + 96) = kSecAttrKeyTypeECSECPrimeRandom;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v11;
    *(inited + 168) = &type metadata for Int;
    *(inited + 144) = 256;
    *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 184) = v12;
    v13 = kSecAttrTokenIDSecureEnclave;
    v14 = kSecAttrKeyTypeECSECPrimeRandom;
    v15 = narrativecertdMachServiceName.getter();
    *(inited + 216) = &type metadata for String;
    *(inited + 192) = v15;
    *(inited + 200) = v16;
    *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 232) = v17;
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_100022440;
    *(v18 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v18 + 40) = v19;
    type metadata accessor for SecAccessControl(0);
    *(v18 + 72) = v20;
    *(v18 + 48) = v5;
    v58 = v5;
    v21 = sub_10001B444(v18);
    swift_setDeallocating();
    sub_100006E1C(v18 + 32, &qword_10002D100, &qword_1000225E0);
    *(inited + 264) = sub_100003400(&qword_10002D108, &qword_1000225E8);
    *(inited + 240) = v21;
    sub_10001B444(inited);
    swift_setDeallocating();
    sub_100003400(&qword_10002D100, &qword_1000225E0);
    swift_arrayDestroy();
    sub_100015EB4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v3 = SecKeyCreateRandomKey(isa, &error);

    if (v3)
    {

      if (qword_10002CAF8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100002AD8(v23, qword_10002D068);
      v24 = v1;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v59 = v28;
        *v27 = 136446210;
        v29 = NarrativeCert.keychainLabel.getter();
        v31 = sub_10001A0F0(v29, v30, &v59);

        *(v27 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "Successfully created private key for %{public}s", v27, 0xCu);
        sub_100002E28(v28);
      }
    }

    else
    {
      v36 = error;
      if (error)
      {
        v59 = error;
        type metadata accessor for CFError(0);
        sub_100010AF4(&qword_10002D0F0, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
        v37 = Error.localizedDescription.getter();
        v39 = v38;
      }

      else
      {
        v37 = 0x6E776F6E6B6E75;

        v39 = 0xE700000000000000;
      }

      _StringGuts.grow(_:)(37);

      v59 = 0xD00000000000001FLL;
      v60 = 0x8000000100020E30;
      v48._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
      String.append(_:)(v48);

      v49._countAndFlagsBits = 8250;
      v49._object = 0xE200000000000000;
      String.append(_:)(v49);
      v50._countAndFlagsBits = v37;
      v50._object = v39;
      String.append(_:)(v50);

      v3 = 0x8000000100020E30;
      if (qword_10002CAF8 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_100002AD8(v51, qword_10002D068);

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v59 = v55;
        *v54 = 136446210;
        *(v54 + 4) = sub_10001A0F0(0xD00000000000001FLL, 0x8000000100020E30, &v59);
        _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s", v54, 0xCu);
        sub_100002E28(v55);
      }

      sub_100002B10();
      swift_allocError();
      *v56 = 0xD00000000000001FLL;
      *(v56 + 8) = 0x8000000100020E30;
      *(v56 + 16) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v32 = error;
    if (error)
    {
      v59 = error;
      type metadata accessor for CFError(0);
      sub_100010AF4(&qword_10002D0F0, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
      v33 = Error.localizedDescription.getter();
      v35 = v34;
    }

    else
    {
      v33 = 0x6E776F6E6B6E75;

      v35 = 0xE700000000000000;
    }

    _StringGuts.grow(_:)(49);

    v59 = 0xD00000000000002BLL;
    v60 = 0x8000000100020E00;
    v40._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v40);

    v41._countAndFlagsBits = 8250;
    v41._object = 0xE200000000000000;
    String.append(_:)(v41);
    v42._countAndFlagsBits = v33;
    v42._object = v35;
    String.append(_:)(v42);

    if (qword_10002CAF8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100002AD8(v43, qword_10002D068);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v3 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v59 = v46;
      *v3 = 136446210;
      *(v3 + 4) = sub_10001A0F0(0xD00000000000002BLL, 0x8000000100020E00, &v59);
      _os_log_impl(&_mh_execute_header, v44, v45, "%{public}s", v3, 0xCu);
      sub_100002E28(v46);
    }

    sub_100002B10();
    swift_allocError();
    *v47 = 0xD00000000000002BLL;
    *(v47 + 8) = 0x8000000100020E00;
    *(v47 + 16) = 0;
    swift_willThrow();
  }

  return v3;
}

void *sub_10000F5F0(__SecKey *a1)
{
  v3 = v1;
  v4 = SecKeyCopyPublicKey(a1);
  if (v4)
  {
    v5 = v4;
    v6 = *&v1[qword_10002D558];
    if (v6)
    {
      sub_100003400(&qword_10002D0D8, &qword_1000225C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100022440;
      v8 = kSecSubjectAltName;
      *(inited + 32) = kSecSubjectAltName;
      *(inited + 40) = v6;
      v9 = v8;

      sub_10001B5BC(inited);
      swift_setDeallocating();
      sub_100006E1C(inited + 32, &qword_10002D0E0, &qword_1000225C8);
      type metadata accessor for CFString(0);
      sub_100003400(&qword_10002D0E8, &unk_1000225D0);
      sub_100010AF4(&qword_10002CB50, type metadata accessor for CFString, &unk_1000218C8);
      v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v10.super.isa = 0;
    }

    isa = Array._bridgeToObjectiveC()().super.isa;
    CertificateRequest = SecGenerateCertificateRequest();

    if (CertificateRequest)
    {
      v43 = v10.super.isa;
      v19 = CertificateRequest;
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v23._countAndFlagsBits;
      sub_100002EC8(v20, v22);
      if (qword_10002CAF8 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100002AD8(v24, qword_10002D068);
      v25 = v3;

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v40 = v19;
        v28 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v28 = 136446466;
        v29 = NarrativeCert.keychainLabel.getter();
        v31 = sub_10001A0F0(v29, v30, &v41);

        *(v28 + 4) = v31;
        *(v28 + 12) = 2082;
        *(v28 + 14) = sub_10001A0F0(v23._countAndFlagsBits, v23._object, &v41);
        _os_log_impl(&_mh_execute_header, v26, v27, "NarrativeRequest CSR for %{public}s: %{public}s", v28, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }

    else
    {
      _StringGuts.grow(_:)(25);

      v41 = 0xD000000000000017;
      v42 = 0x8000000100020DE0;
      v32._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
      String.append(_:)(v32);

      countAndFlagsBits = 0x8000000100020DE0;
      if (qword_10002CAF8 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_100002AD8(v33, qword_10002D068);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v41 = v37;
        *v36 = 136446210;
        *(v36 + 4) = sub_10001A0F0(0xD000000000000017, 0x8000000100020DE0, &v41);
        _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s", v36, 0xCu);
        sub_100002E28(v37);
      }

      sub_100002B10();
      swift_allocError();
      *v38 = 0xD000000000000017;
      *(v38 + 8) = 0x8000000100020DE0;
      *(v38 + 16) = 0;
      swift_willThrow();
    }
  }

  else
  {
    _StringGuts.grow(_:)(32);

    v41 = 0xD00000000000001ELL;
    v42 = 0x8000000100020DC0;
    v11._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v11);

    if (qword_10002CAF8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100002AD8(v12, qword_10002D068);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      countAndFlagsBits = swift_slowAlloc();
      v41 = countAndFlagsBits;
      *v15 = 136446210;
      *(v15 + 4) = sub_10001A0F0(0xD00000000000001ELL, 0x8000000100020DC0, &v41);
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s", v15, 0xCu);
      sub_100002E28(countAndFlagsBits);
    }

    sub_100002B10();
    swift_allocError();
    *v16 = 0xD00000000000001ELL;
    *(v16 + 8) = 0x8000000100020DC0;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  return countAndFlagsBits;
}

uint64_t sub_10000FCAC()
{
  v0 = type metadata accessor for Logger();
  sub_100003030(v0, qword_10002D068);
  sub_100002AD8(v0, qword_10002D068);
  narrativecertdMachServiceName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000FD14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7366003;
  }

  else
  {
    v3 = 1952870259;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7366003;
  }

  else
  {
    v5 = 1952870259;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
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

Swift::Int sub_10000FDAC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000FE20(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10000FE80()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000FEF0@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100028EF8, *a1);

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

void sub_10000FF50(uint64_t *a1@<X8>)
{
  v2 = 1952870259;
  if (*v1)
  {
    v2 = 7366003;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10000FF80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

Swift::Int sub_10001001C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003400(&qword_10002D138, &qword_100022618);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000112A4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100011300(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100011300(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100011300(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100011300(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

Swift::Int sub_1000102E4(uint64_t a1, __SecCertificate *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2 && a1 && (v11 = *(a1 + 16)) != 0)
  {
    v13 = a1 + 32;
    do
    {
      sub_1000112A4(v13, v42);
      type metadata accessor for SecCertificate(0);
      swift_dynamicCast();
      v14 = certificate;
      v15 = SecCertificateCopyData(certificate);

      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = Data.base64EncodedString(options:)(0);
      if (qword_10002CAF8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100002AD8(v20, qword_10002D068);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = String.count.getter();

        _os_log_impl(&_mh_execute_header, v21, v22, "Retrieved DCRT of length: %ld", v23, 0xCu);
      }

      else
      {
      }

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v42[0] = v27;
        *v26 = 136446210;
        *(v26 + 4) = sub_10001A0F0(v19._countAndFlagsBits, v19._object, v42);
        _os_log_impl(&_mh_execute_header, v24, v25, "DCRT Body: %{public}s", v26, 0xCu);
        sub_100002E28(v27);
      }

      swift_beginAccess();
      v28 = *(a7 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a7 + 16) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_100017A8C(0, *(v28 + 2) + 1, 1, v28);
        *(a7 + 16) = v28;
      }

      v31 = *(v28 + 2);
      v30 = *(v28 + 3);
      if (v31 >= v30 >> 1)
      {
        v28 = sub_100017A8C((v30 > 1), v31 + 1, 1, v28);
      }

      *(v28 + 2) = v31 + 1;
      *&v28[16 * v31 + 32] = v19;
      *(a7 + 16) = v28;
      swift_endAccess();
      sub_100002EC8(v16, v18);
      v13 += 32;
      --v11;
    }

    while (v11);
  }

  else
  {
    v32 = sub_10000AD04(a4);
    if (qword_10002CAF8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100002AD8(v33, qword_10002D068);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42[0] = v37;
      *v36 = 134218754;
      *(v36 + 4) = a4;
      *(v36 + 12) = 2048;
      *(v36 + 14) = a5;
      *(v36 + 22) = 2048;
      *(v36 + 24) = v32;
      *(v36 + 32) = 2082;
      certificate = a2;
      swift_errorRetain();
      sub_100003400(&qword_10002D130, &qword_100022610);
      v38 = String.init<A>(describing:)();
      v40 = sub_10001A0F0(v38, v39, v42);

      *(v36 + 34) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error issuing DCRT on attempt %ld/%ld, sleeping %f: %{public}s", v36, 0x2Au);
      sub_100002E28(v37);
    }

    swift_beginAccess();
    *(a6 + 16) = a2;
    swift_errorRetain();

    [objc_opt_self() sleepForTimeInterval:v32];
  }

  return OS_dispatch_semaphore.signal()();
}

void sub_100010800()
{
  v1 = qword_10002D540;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v7 = *(v0 + qword_10002D560);
  *(v0 + qword_10002D560) = 0;
  v3 = v7;
  v4 = v7;
  if (v7)
  {
    while (1)
    {
      v8 = v4;

      if (!swift_isUniquelyReferenced())
      {
        break;
      }

      v5 = *&v8[qword_10002D560];
      v6 = v5;

      v4 = v5;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v4 = v8;
  }

LABEL_6:
}

id sub_10001090C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NarrativeIdentity(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100010944(uint64_t a1)
{
  v2 = qword_10002D540;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v8 = *(a1 + qword_10002D560);
  *(a1 + qword_10002D560) = 0;
  v4 = v8;
  v5 = v8;
  if (v8)
  {
    while (1)
    {
      v9 = v5;

      if (!swift_isUniquelyReferenced())
      {
        break;
      }

      v6 = *&v9[qword_10002D560];
      v7 = v6;

      v5 = v6;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v5 = v9;
  }

LABEL_6:
}

unint64_t sub_100010A70()
{
  result = qword_10002D0D0;
  if (!qword_10002D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D0D0);
  }

  return result;
}

uint64_t sub_100010AC4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100010AF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

NSObject *sub_100010B3C()
{
  sub_100003400(&qword_10002D0F8, &unk_100022960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100021E70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = v3;
  *(inited + 48) = 60;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 0;
  v31 = sub_10001B444(inited);
  swift_setDeallocating();
  sub_100003400(&qword_10002D100, &qword_1000225E0);
  swift_arrayDestroy();
  if (qword_10002CB10 != -1)
  {
    swift_once();
  }

  v5._countAndFlagsBits = 0x797274655278614DLL;
  v5._object = 0xED0000746E756F43;
  v39 = preferencesIntegerValue(_:domain:)(v5, narrativeCertPrefDomain);
  if (v39.is_nil)
  {
    value = 10;
  }

  else
  {
    value = v39.value;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = &_swiftEmptyArrayStorage;
  v8 = v7 + 16;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v29 = dispatch_semaphore_create(0);
  if (value < 0)
  {
    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_22;
  }

  swift_beginAccess();
  swift_beginAccess();
  v9 = 0;
  v30 = v7;
  while (1)
  {
    *(v32 + 16) = 0;

    sub_10001001C(v31);
    v10 = swift_allocObject();
    v10[2] = v29;
    v10[3] = v9;
    v11 = value;
    v10[4] = value;
    v10[5] = v32;
    v10[6] = v7;
    v12 = v29;

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v37 = sub_10001127C;
    v38 = v10;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_10000FF80;
    v36 = &unk_100029830;
    v14 = _Block_copy(&aBlock);

    MAEIssueDCRTWithCompletion();
    _Block_release(v14);

    v0 = v12;
    OS_dispatch_semaphore.wait()();
    if (!*(v32 + 16) || *(*v8 + 16))
    {
      break;
    }

    if (v11 == v9)
    {

      v17 = v30;
      goto LABEL_20;
    }

    value = v11;
    v15 = __OFADD__(v9++, 1);
    v7 = v30;
    if (v15)
    {
      __break(1u);
      break;
    }
  }

  if (qword_10002CAF8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100002AD8(v16, qword_10002D068);
  v17 = v30;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = *(*(v30 + 16) + 16);

    _os_log_impl(&_mh_execute_header, v18, v19, "Retrieved DCRT chain of length %ld", v20, 0xCu);
  }

  else
  {
  }

LABEL_20:
  if (!*(v32 + 16) && *(*v8 + 16))
  {

    v23 = *(v17 + 16);

    return v23;
  }

  aBlock = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  aBlock = 0xD000000000000029;
  v34 = 0x8000000100020F60;
  swift_errorRetain();
  sub_100003400(&qword_10002D130, &qword_100022610);
  v21._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v21);

  v1 = aBlock;
  value = v34;
  if (qword_10002CAF8 != -1)
  {
    goto LABEL_29;
  }

LABEL_22:
  v22 = type metadata accessor for Logger();
  sub_100002AD8(v22, qword_10002D068);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_10001A0F0(v1, value, &aBlock);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s", v25, 0xCu);
    sub_100002E28(v26);
  }

  sub_100002B10();
  swift_allocError();
  *v27 = v1;
  *(v27 + 8) = value;
  *(v27 + 16) = 0;
  swift_willThrow();

  return v23;
}

uint64_t sub_1000111C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000111FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011234()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001128C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000112A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_100011300(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for NarrativeIdentityExample(uint64_t a1)
{
  result = qword_10002D168;
  if (!qword_10002D168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100011408()
{
  v0 = type metadata accessor for Logger();
  sub_100003030(v0, qword_10002D150);
  sub_100002AD8(v0, qword_10002D150);
  narrativecertdMachServiceName.getter();
  return Logger.init(subsystem:category:)();
}

SecKeyRef sub_10001147C()
{
  sub_100003400(&qword_10002D0F8, &unk_100022960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100021E70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  type metadata accessor for CFString(0);
  *(inited + 72) = v2;
  *(inited + 48) = kSecAttrKeyTypeECSECPrimeRandom;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v3;
  *(inited + 120) = &type metadata for Int;
  *(inited + 96) = 256;
  v4 = kSecAttrKeyTypeECSECPrimeRandom;
  sub_10001B444(inited);
  swift_setDeallocating();
  sub_100003400(&qword_10002D100, &qword_1000225E0);
  swift_arrayDestroy();
  sub_100015EB4();
  error = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v6 = SecKeyCreateRandomKey(isa, &error);

  if (v6)
  {
  }

  else
  {
    v7 = error;
    if (error)
    {
      v21[0] = error;
      type metadata accessor for CFError(0);
      sub_1000126BC();
      v8 = Error.localizedDescription.getter();
      v10 = v9;
    }

    else
    {

      v10 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
    }

    _StringGuts.grow(_:)(37);

    v21[0] = 0xD00000000000001FLL;
    v21[1] = 0x8000000100020E30;
    v11._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 8250;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = v8;
    v13._object = v10;
    String.append(_:)(v13);

    if (qword_10002CB00 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100002AD8(v14, qword_10002D150);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_10001A0F0(0xD00000000000001FLL, 0x8000000100020E30, v21);
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s", v17, 0xCu);
      sub_100002E28(v18);
    }

    sub_100002B10();
    swift_allocError();
    *v19 = 0xD00000000000001FLL;
    *(v19 + 8) = 0x8000000100020E30;
    *(v19 + 16) = 0;
    swift_willThrow();
  }

  return v6;
}

double sub_100011838@<D0>(uint64_t a1@<X8>)
{
  v2 = 1952870259;
  if (*(v1 + qword_10002D568))
  {
    v2 = 7366003;
  }

  v3 = 0xE400000000000000;
  if (*(v1 + qword_10002D568))
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

id sub_10001187C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NarrativeIdentityExample(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000118BC(uint64_t a1, void *a2)
{
  v144 = a2;
  v3 = sub_100003400(&qword_10002CD60, &qword_100021EB0);
  v4 = __chkstk_darwin(v3 - 8);
  v133 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v135 = &v130 - v7;
  v8 = __chkstk_darwin(v6);
  v142 = &v130 - v9;
  v10 = __chkstk_darwin(v8);
  v141 = &v130 - v11;
  v12 = __chkstk_darwin(v10);
  v131 = &v130 - v13;
  v14 = __chkstk_darwin(v12);
  v134 = &v130 - v15;
  v16 = __chkstk_darwin(v14);
  v140 = &v130 - v17;
  v18 = __chkstk_darwin(v16);
  v139 = &v130 - v19;
  v20 = __chkstk_darwin(v18);
  v132 = &v130 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v130 - v23;
  v25 = __chkstk_darwin(v22);
  v138 = &v130 - v26;
  v27 = __chkstk_darwin(v25);
  v137 = &v130 - v28;
  __chkstk_darwin(v27);
  v30 = &v130 - v29;
  v31 = type metadata accessor for URL();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v130 = &v130 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v37 = &v130 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v130 - v39;
  __chkstk_darwin(v38);
  v42 = &v130 - v41;
  v146 = 0;
  v147 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v146 = 0xD000000000000029;
  v147 = 0x80000001000210F0;
  v43._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
  String.append(_:)(v43);

  URL.init(string:)();
  v44 = v31;
  v45 = v32;

  v145 = *(v32 + 48);
  result = v145(v30, 1, v44);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_37;
  }

  v47 = v30;
  v48 = v32 + 32;
  v143 = *(v32 + 32);
  result = v143(v42, v47, v44);
  if (a1 == 2)
  {
    v80 = sub_1000118BC(1, 0);
    v81 = v42;
    v82 = v80;
    v83 = *(v32 + 16);
    v84 = v141;
    v140 = v81;
    v83(v141);
    (*(v45 + 56))(v84, 0, 1, v44);
    v85 = objc_allocWithZone(type metadata accessor for NarrativeIdentityExample(0));
    v86 = v84;
    v87 = v142;
    sub_100007F34(v86, v142);
    v88 = &v85[qword_10002D550];
    *v88 = 0;
    v88[1] = 0;
    v89 = qword_10002D558;
    *&v85[qword_10002D558] = 0;
    v90 = qword_10002D560;
    *&v85[qword_10002D560] = 0;
    v85[qword_10002D568] = 0;
    v91 = v87;
    v92 = v135;
    sub_100007F34(v91, v135);
    if (v145(v92, 1, v44) == 1)
    {
      v138 = v48;
      v136 = v45;
      sub_100007FA4(v92);
      if (qword_10002CB10 != -1)
      {
        swift_once();
      }

      v93._object = 0xEC0000004C525565;
      v93._countAndFlagsBits = 0x766974617272614ELL;
      v94 = preferencesStringValue(_:domain:)(v93, narrativeCertPrefDomain);
      countAndFlagsBits = 0xD000000000000023;
      if (v94.value._object)
      {
        countAndFlagsBits = v94.value._countAndFlagsBits;
        object = v94.value._object;
      }

      else
      {
        object = 0x8000000100020860;
      }

      v146 = countAndFlagsBits;
      v147 = object;

      v97._countAndFlagsBits = 47;
      v97._object = 0xE100000000000000;
      String.append(_:)(v97);
      v98._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
      String.append(_:)(v98);

      v99 = v133;
      URL.init(string:)();

      result = v145(v99, 1, v44);
      if (result == 1)
      {
        goto LABEL_39;
      }

      v45 = v136;
      v143(&v85[qword_10002D540], v133, v44);
    }

    else
    {
      v113 = v130;
      v114 = v92;
      v115 = v143;
      v143(v130, v114, v44);
      v115(&v85[qword_10002D540], v113, v44);
    }

    *v88 = 0;
    v88[1] = 0;

    *&v85[v89] = 0;

    v101 = v44;
    v116 = *&v85[v90];
    *&v85[v90] = v82;
    v117 = v82;

    v146 = 0;
    v147 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v146 = 0x766974617272616ELL;
    v147 = 0xEF2E647472656365;
    v118._countAndFlagsBits = NarrativeDomain.rawValue.getter();
    String.append(_:)(v118);

    v119._countAndFlagsBits = 46;
    v119._object = 0xE100000000000000;
    String.append(_:)(v119);
    v120._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
    String.append(_:)(v120);

    v121 = v147;
    v122 = &v85[qword_10002D548];
    *v122 = v146;
    v122[1] = v121;
    v110 = NarrativeCert.init(domain:identityType:)();

    v112 = v141;
    v111 = v142;
    v63 = v144;
    v42 = v140;
    goto LABEL_35;
  }

  v136 = v32;
  if (a1 == 1)
  {
    v142 = sub_1000118BC(0, 0);
    v64 = v139;
    (*(v32 + 16))(v139, v42, v44);
    (*(v32 + 56))(v64, 0, 1, v44);
    v65 = objc_allocWithZone(type metadata accessor for NarrativeIdentityExample(0));
    v66 = v64;
    v67 = v140;
    sub_100007F34(v66, v140);
    v68 = &v65[qword_10002D550];
    *v68 = 0;
    v68[1] = 0;
    v69 = qword_10002D558;
    *&v65[qword_10002D558] = 0;
    v70 = qword_10002D560;
    *&v65[qword_10002D560] = 0;
    v65[qword_10002D568] = 0;
    v71 = v67;
    v72 = v134;
    sub_100007F34(v71, v134);
    if (v145(v72, 1, v44) == 1)
    {
      v138 = v48;
      v141 = v44;
      sub_100007FA4(v72);
      if (qword_10002CB10 != -1)
      {
        swift_once();
      }

      v73._object = 0xEC0000004C525565;
      v73._countAndFlagsBits = 0x766974617272614ELL;
      v74 = preferencesStringValue(_:domain:)(v73, narrativeCertPrefDomain);
      v75 = 0xD000000000000023;
      if (v74.value._object)
      {
        v75 = v74.value._countAndFlagsBits;
        v76 = v74.value._object;
      }

      else
      {
        v76 = 0x8000000100020860;
      }

      v146 = v75;
      v147 = v76;

      v77._countAndFlagsBits = 47;
      v77._object = 0xE100000000000000;
      String.append(_:)(v77);
      v78._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
      String.append(_:)(v78);

      v79 = v131;
      URL.init(string:)();

      v44 = v141;
      result = v145(v79, 1, v141);
      if (result == 1)
      {
        goto LABEL_38;
      }

      v143(&v65[qword_10002D540], v79, v44);
    }

    else
    {
      v100 = v143;
      v143(v37, v72, v44);
      v100(&v65[qword_10002D540], v37, v44);
    }

    *v68 = 0;
    v68[1] = 0;

    *&v65[v69] = 0;

    v101 = v44;
    v102 = *&v65[v70];
    v103 = v142;
    *&v65[v70] = v142;
    v104 = v103;

    v146 = 0;
    v147 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v146 = 0x766974617272616ELL;
    v147 = 0xEF2E647472656365;
    v105._countAndFlagsBits = NarrativeDomain.rawValue.getter();
    String.append(_:)(v105);

    v106._countAndFlagsBits = 46;
    v106._object = 0xE100000000000000;
    String.append(_:)(v106);
    v107._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
    String.append(_:)(v107);

    v108 = v147;
    v109 = &v65[qword_10002D548];
    *v109 = v146;
    v109[1] = v108;
    v110 = NarrativeCert.init(domain:identityType:)();

    v112 = v139;
    v111 = v140;
    v63 = v144;
    v45 = v136;
LABEL_35:

    sub_100007FA4(v111);
    sub_100007FA4(v112);
    (*(v45 + 8))(v42, v101);
    return v110;
  }

  if (a1)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v49 = *(v32 + 16);
  v50 = v137;
  v140 = v42;
  v49(v137, v42, v44);
  (*(v32 + 56))(v50, 0, 1, v44);
  v51 = objc_allocWithZone(type metadata accessor for NarrativeIdentityExample(0));
  v52 = v138;
  sub_100007F34(v50, v138);
  v53 = &v51[qword_10002D550];
  *v53 = 0;
  v53[1] = 0;
  v54 = qword_10002D558;
  *&v51[qword_10002D558] = 0;
  v55 = qword_10002D560;
  *&v51[qword_10002D560] = 0;
  v51[qword_10002D568] = 0;
  sub_100007F34(v52, v24);
  if (v145(v24, 1, v44) != 1)
  {
    v123 = v143;
    v143(v40, v24, v44);
    v63 = v144;
    v123(&v51[qword_10002D540], v40, v44);
    goto LABEL_34;
  }

  sub_100007FA4(v24);
  if (qword_10002CB10 != -1)
  {
    swift_once();
  }

  v56._object = 0xEC0000004C525565;
  v56._countAndFlagsBits = 0x766974617272614ELL;
  v57 = preferencesStringValue(_:domain:)(v56, narrativeCertPrefDomain);
  v58 = 0xD000000000000023;
  if (v57.value._object)
  {
    v58 = v57.value._countAndFlagsBits;
    v59 = v57.value._object;
  }

  else
  {
    v59 = 0x8000000100020860;
  }

  v146 = v58;
  v147 = v59;

  v60._countAndFlagsBits = 47;
  v60._object = 0xE100000000000000;
  String.append(_:)(v60);
  v61._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
  String.append(_:)(v61);

  v62 = v132;
  URL.init(string:)();

  result = v145(v62, 1, v44);
  if (result != 1)
  {

    v63 = v144;
    v143(&v51[qword_10002D540], v132, v44);
LABEL_34:
    *v53 = 0;
    v53[1] = 0;

    *&v51[v54] = 0;

    v124 = *&v51[v55];
    *&v51[v55] = 0;

    v146 = 0;
    v147 = 0xE000000000000000;
    v101 = v44;
    _StringGuts.grow(_:)(20);

    v146 = 0x766974617272616ELL;
    v147 = 0xEF2E647472656365;
    v125._countAndFlagsBits = NarrativeDomain.rawValue.getter();
    String.append(_:)(v125);

    v126._countAndFlagsBits = 46;
    v126._object = 0xE100000000000000;
    String.append(_:)(v126);
    v127._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
    String.append(_:)(v127);

    v128 = v147;
    v129 = &v51[qword_10002D548];
    *v129 = v146;
    v129[1] = v128;
    v110 = NarrativeCert.init(domain:identityType:)();
    v45 = v136;
    v112 = v137;
    v42 = v140;
    v111 = v138;
    goto LABEL_35;
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1000126BC()
{
  result = qword_10002D0F0;
  if (!qword_10002D0F0)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D0F0);
  }

  return result;
}

uint64_t sub_10001272C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >= 2)
  {

    v2 = (result + 56);
    for (i = 1; i != v1; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
        return result;
      }

      v5 = *(v2 - 1);
      v4 = *v2;
      sub_100002E74(v5, *v2);
      sub_10001302C();
      result = sub_100002EC8(v5, v4);
      v2 += 2;
    }
  }

  return result;
}

uint64_t sub_1000128FC(uint64_t a1)
{
  v2 = v1;
  v3 = dispatch thunk of NarrativeCert.fetchSecRefsFromKeychain()();
  if (v3)
  {

    sub_100003400(&qword_10002D0F8, &unk_100022960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100022460;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v5;
    v6 = NarrativeCert.keychainLabel.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v6;
    *(inited + 56) = v7;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v8;
    type metadata accessor for CFString(0);
    v10 = v9;
    *(inited + 120) = v9;
    *(inited + 96) = kSecAttrKeyTypeECSECPrimeRandom;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v11;
    *(inited + 168) = v10;
    *(inited + 144) = kSecClassKey;
    *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 184) = v12;
    *(inited + 216) = v10;
    *(inited + 192) = kSecAttrKeyClassPrivate;
    *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 232) = v13;
    *(inited + 264) = &type metadata for Bool;
    *(inited + 240) = 1;
    v14 = kSecAttrKeyTypeECSECPrimeRandom;
    v15 = kSecClassKey;
    v16 = kSecAttrKeyClassPrivate;
    sub_10001B444(inited);
    swift_setDeallocating();
    sub_100003400(&qword_10002D100, &qword_1000225E0);
    swift_arrayDestroy();
    sub_100015EB4();
    result = 0;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v18 = SecItemCopyMatching(isa, &result);

    if (v18)
    {
      v19 = SecCopyErrorMessageString(v18, 0);
      _StringGuts.grow(_:)(36);

      *&v59[0] = 0xD00000000000001ELL;
      *(&v59[0] + 1) = 0x8000000100021260;
      v20._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
      String.append(_:)(v20);

      v21._countAndFlagsBits = 8250;
      v21._object = 0xE200000000000000;
      String.append(_:)(v21);
      if (v19)
      {
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;
      }

      else
      {

        v24 = 0xE700000000000000;
        v22 = 0x6E776F6E6B6E75;
      }

      v51._countAndFlagsBits = v22;
      v51._object = v24;
      String.append(_:)(v51);

      v52 = *(&v59[0] + 1);
      sub_100002B10();
      swift_allocError();
      *v53 = *&v59[0];
      *(v53 + 8) = v52;
      *(v53 + 16) = 0;
      swift_willThrow();

      return swift_unknownObjectRelease();
    }

    if (result && (*&v59[0] = result, swift_unknownObjectRetain(), sub_100003400(&qword_10002D108, &qword_1000225E8), (swift_dynamicCast() & 1) != 0))
    {
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(*&v58[0] + 16))
      {
        v37 = sub_10001A698(v35, v36);
        v39 = v38;

        if (v39)
        {
          sub_1000112A4(*(*&v58[0] + 56) + 32 * v37, v59);

          if (qword_10002CB08 != -1)
          {
            swift_once();
          }

          v40 = type metadata accessor for Logger();
          sub_100002AD8(v40, qword_10002D1B8);
          v41 = v2;
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            *&v58[0] = v45;
            *v44 = 136446210;
            v46 = NarrativeCert.keychainLabel.getter();
            v48 = sub_10001A0F0(v46, v47, v58);

            *(v44 + 4) = v48;
            _os_log_impl(&_mh_execute_header, v42, v43, "Successfully retrieved kSecAttrApplicationLabel for %{public}s", v44, 0xCu);
            sub_100002E28(v45);
          }

          sub_100011300(v59, v58);
          type metadata accessor for CFData(0);
          swift_dynamicCast();
          swift_unknownObjectRelease();
          return v57;
        }
      }

      else
      {
      }

      *&v59[0] = 0;
      *(&v59[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v49 = 0x80000001000212B0;
      v50 = 0xD000000000000024;
    }

    else
    {
      *&v59[0] = 0;
      *(&v59[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v49 = 0x8000000100021280;
      v50 = 0xD000000000000020;
    }

    *&v59[0] = v50;
    *(&v59[0] + 1) = v49;
    v54._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v54);

    v55 = *(&v59[0] + 1);
    sub_100002B10();
    swift_allocError();
    *v56 = *&v59[0];
    *(v56 + 8) = v55;
    *(v56 + 16) = 0;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  if (qword_10002CB08 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100002AD8(v25, qword_10002D1B8);
  v26 = v1;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v59[0] = v30;
    *v29 = 136446210;
    v31 = NarrativeCert.keychainLabel.getter();
    v33 = sub_10001A0F0(v31, v32, v59);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "Key label for %{public}s not found, no refs on keychain", v29, 0xCu);
    sub_100002E28(v30);
  }

  return 0;
}

void sub_10001302C()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSData);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithData:isa];

  v5 = CFDataCreate(kCFAllocatorDefault, [v4 bytes], objc_msgSend(v4, "length"));
  if (!v5)
  {
    if (qword_10002CB08 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100002AD8(v25, qword_10002D1B8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v59 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_10001A0F0(0xD00000000000003ALL, 0x80000001000211E0, &v59);
      _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s", v28, 0xCu);
      sub_100002E28(v29);
    }

    sub_100002B10();
    swift_allocError();
    *v30 = 0xD00000000000003ALL;
    *(v30 + 8) = 0x80000001000211E0;
    *(v30 + 16) = 2;
    swift_willThrow();
    goto LABEL_27;
  }

  v6 = v5;
  v7 = SecCertificateCreateWithData(kCFAllocatorDefault, v5);
  if (v7)
  {
    v8 = v7;
    sub_100003400(&qword_10002D0F8, &unk_100022960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100021E70;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v10;
    type metadata accessor for CFString(0);
    *(inited + 72) = v11;
    *(inited + 48) = kSecClassCertificate;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v12;
    type metadata accessor for SecCertificate(0);
    *(inited + 120) = v13;
    *(inited + 96) = v8;
    v14 = kSecClassCertificate;
    v15 = v8;
    v16 = sub_10001B444(inited);
    swift_setDeallocating();
    sub_100003400(&qword_10002D100, &qword_1000225E0);
    swift_arrayDestroy();
    v61 = v16;
    sub_100015EB4();
    v17 = Dictionary._bridgeToObjectiveC()().super.isa;
    v18 = SecItemAdd(v17, 0);

    if (v18)
    {
      v19 = SecCopyErrorMessageString(v18, 0);
      _StringGuts.grow(_:)(36);

      v59 = 0xD000000000000012;
      v60 = 0x8000000100021240;
      v20._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
      String.append(_:)(v20);

      v21._countAndFlagsBits = 0x6379656B206F7420;
      v21._object = 0xEE00203A6E696168;
      String.append(_:)(v21);
      if (v19)
      {
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;
      }

      else
      {

        v24 = 0xE700000000000000;
        v22 = 0x6E776F6E6B6E75;
      }

      v47._countAndFlagsBits = v22;
      v47._object = v24;
      String.append(_:)(v47);

      v48 = v59;
      v49 = v60;
      if (qword_10002CB08 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_100002AD8(v50, qword_10002D1B8);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v58 = v19;
        v54 = v15;
        v55 = swift_slowAlloc();
        v59 = v55;
        *v53 = 136446210;
        *(v53 + 4) = sub_10001A0F0(v48, v49, &v59);
        _os_log_impl(&_mh_execute_header, v51, v52, "%{public}s", v53, 0xCu);
        sub_100002E28(v55);
        v15 = v54;
        v19 = v58;
      }

      sub_100002B10();
      swift_allocError();
      *v56 = v48;
      *(v56 + 8) = v49;
      *(v56 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      v57 = v15;

      if (qword_10002CB08 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_100002AD8(v38, qword_10002D1B8);
      v39 = v1;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v59 = v43;
        *v42 = 136446210;
        v44 = NarrativeCert.keychainLabel.getter();
        v46 = sub_10001A0F0(v44, v45, &v59);

        *(v42 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v40, v41, "Successfully added cert to keychain for %{public}s", v42, 0xCu);
        sub_100002E28(v43);
      }
    }

LABEL_27:

    return;
  }

  _StringGuts.grow(_:)(29);

  v59 = 0xD00000000000001BLL;
  v60 = 0x8000000100021220;
  v31._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
  String.append(_:)(v31);

  if (qword_10002CB08 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100002AD8(v32, qword_10002D1B8);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v59 = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_10001A0F0(0xD00000000000001BLL, 0x8000000100021220, &v59);
    _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s", v35, 0xCu);
    sub_100002E28(v36);
  }

  sub_100002B10();
  swift_allocError();
  *v37 = 0xD00000000000001BLL;
  *(v37 + 8) = 0x8000000100021220;
  *(v37 + 16) = 0;
  swift_willThrow();
}

void sub_1000138A0(void *a1)
{
  v2 = v1;
  sub_100003400(&qword_10002D0F8, &unk_100022960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100022450;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  v6 = NarrativeCert.keychainLabel.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v8;
  type metadata accessor for CFString(0);
  v10 = v9;
  *(inited + 120) = v9;
  *(inited + 96) = kSecAttrKeyTypeECSECPrimeRandom;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v11;
  *(inited + 168) = v10;
  *(inited + 144) = kSecClassKey;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v12;
  type metadata accessor for SecKey(0);
  *(inited + 216) = v13;
  *(inited + 192) = a1;
  v14 = kSecAttrKeyTypeECSECPrimeRandom;
  v15 = kSecClassKey;
  v16 = a1;
  v17 = sub_10001B444(inited);
  swift_setDeallocating();
  sub_100003400(&qword_10002D100, &qword_1000225E0);
  swift_arrayDestroy();
  v45 = v17;
  sub_100015EB4();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v19 = SecItemAdd(isa, 0);

  if (v19)
  {
    v20 = SecCopyErrorMessageString(v19, 0);
    _StringGuts.grow(_:)(35);

    v43 = 0xD000000000000011;
    v44 = 0x80000001000211C0;
    v21._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 0x6379656B206F7420;
    v22._object = 0xEE00203A6E696168;
    String.append(_:)(v22);
    if (v20)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {

      v25 = 0xE700000000000000;
      v23 = 0x6E776F6E6B6E75;
    }

    v34._countAndFlagsBits = v23;
    v34._object = v25;
    String.append(_:)(v34);

    v35 = v43;
    v36 = v44;
    if (qword_10002CB08 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100002AD8(v37, qword_10002D1B8);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43 = v41;
      *v40 = 136446210;
      *(v40 + 4) = sub_10001A0F0(v35, v36, &v43);
      _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s", v40, 0xCu);
      sub_100002E28(v41);
    }

    sub_100002B10();
    swift_allocError();
    *v42 = v35;
    *(v42 + 8) = v36;
    *(v42 + 16) = 0;
    swift_willThrow();
  }

  else
  {

    if (qword_10002CB08 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100002AD8(v26, qword_10002D1B8);
    v27 = v2;
    v20 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43 = v30;
      *v29 = 136446210;
      v31 = NarrativeCert.keychainLabel.getter();
      v33 = sub_10001A0F0(v31, v32, &v43);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v20, v28, "Successfully added private key to keychain for %{public}s", v29, 0xCu);
      sub_100002E28(v30);
    }
  }
}

void sub_100013DA4(__SecKey *a1)
{
  v2 = v1;
  v3 = SecKeyCopyPublicKey(a1);
  if (v3)
  {
    v4 = v3;
    sub_100003400(&qword_10002D0F8, &unk_100022960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100022460;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v6;
    v7 = NarrativeCert.keychainLabel.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v7;
    *(inited + 56) = v8;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v9;
    type metadata accessor for CFString(0);
    v11 = v10;
    *(inited + 120) = v10;
    *(inited + 96) = kSecAttrKeyTypeECSECPrimeRandom;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v12;
    *(inited + 168) = v11;
    *(inited + 144) = kSecClassKey;
    *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 184) = v13;
    *(inited + 216) = v11;
    *(inited + 192) = kSecAttrKeyClassPublic;
    *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 232) = v14;
    type metadata accessor for SecKey(0);
    *(inited + 264) = v15;
    *(inited + 240) = v4;
    v16 = kSecAttrKeyTypeECSECPrimeRandom;
    v17 = kSecClassKey;
    v18 = kSecAttrKeyClassPublic;
    v19 = v4;
    v20 = sub_10001B444(inited);
    swift_setDeallocating();
    sub_100003400(&qword_10002D100, &qword_1000225E0);
    swift_arrayDestroy();
    v57 = v20;
    sub_100015EB4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v22 = SecItemAdd(isa, 0);

    if (v22)
    {
      v23 = SecCopyErrorMessageString(v22, 0);
      _StringGuts.grow(_:)(42);

      v55 = 0xD000000000000018;
      v56 = 0x8000000100021140;
      v24._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
      String.append(_:)(v24);

      v25._countAndFlagsBits = 0x6379656B206F7420;
      v25._object = 0xEE00203A6E696168;
      String.append(_:)(v25);
      if (v23)
      {
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;
      }

      else
      {

        v28 = 0xE700000000000000;
        v26 = 0x6E776F6E6B6E75;
      }

      v46._countAndFlagsBits = v26;
      v46._object = v28;
      String.append(_:)(v46);

      v47 = v55;
      v48 = v56;
      if (qword_10002CB08 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_100002AD8(v49, qword_10002D1B8);

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v55 = v53;
        *v52 = 136446210;
        *(v52 + 4) = sub_10001A0F0(v47, v48, &v55);
        _os_log_impl(&_mh_execute_header, v50, v51, "%{public}s", v52, 0xCu);
        sub_100002E28(v53);
      }

      sub_100002B10();
      swift_allocError();
      *v54 = v47;
      *(v54 + 8) = v48;
      *(v54 + 16) = 0;
      swift_willThrow();
    }

    else
    {

      if (qword_10002CB08 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100002AD8(v37, qword_10002D1B8);
      v38 = v2;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v55 = v42;
        *v41 = 136446210;
        v43 = NarrativeCert.keychainLabel.getter();
        v45 = sub_10001A0F0(v43, v44, &v55);

        *(v41 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v39, v40, "Successfully added public key to keychain for %{public}s", v41, 0xCu);
        sub_100002E28(v42);
      }
    }
  }

  else
  {
    _StringGuts.grow(_:)(44);

    v55 = 0xD00000000000001ELL;
    v56 = 0x8000000100021120;
    v29._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 0x6574617669727020;
    v30._object = 0xEC00000079656B20;
    String.append(_:)(v30);
    if (qword_10002CB08 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100002AD8(v31, qword_10002D1B8);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v55 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_10001A0F0(0xD00000000000001ELL, 0x8000000100021120, &v55);
      _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s", v34, 0xCu);
      sub_100002E28(v35);
    }

    sub_100002B10();
    swift_allocError();
    *v36 = 0xD00000000000001ELL;
    *(v36 + 8) = 0x8000000100021120;
    *(v36 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1000144A4()
{
  v1 = v0;
  sub_100003400(&qword_10002D0F8, &unk_100022960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100022460;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v130 = NarrativeCert.keychainLabel.getter();
  v140 = v4;

  v5._countAndFlagsBits = 1684827950;
  v5._object = 0xE400000000000000;
  String.append(_:)(v5);

  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v130;
  *(inited + 56) = v140;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v6;
  type metadata accessor for CFString(0);
  v8 = v7;
  *(inited + 120) = v7;
  *(inited + 96) = kSecAttrKeyTypeECSECPrimeRandom;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v9;
  *(inited + 168) = v8;
  *(inited + 144) = kSecClassKey;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v10;
  *(inited + 216) = v8;
  *(inited + 192) = kSecAttrKeyClassPrivate;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v11;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  v12 = kSecAttrKeyTypeECSECPrimeRandom;
  v13 = kSecClassKey;
  v14 = kSecAttrKeyClassPrivate;
  sub_10001B444(inited);
  swift_setDeallocating();
  sub_100003400(&qword_10002D100, &qword_1000225E0);
  swift_arrayDestroy();
  v129 = v0;
  sub_100015EB4();
  result = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = SecItemCopyMatching(isa, &result);

  if (v16)
  {
    v17 = SecCopyErrorMessageString(v16, 0);
    if (qword_10002CB08 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100002AD8(v18, qword_10002D1B8);
    v19 = v1;
    v20 = v17;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      *v23 = 136446466;
      v131 = NarrativeCert.keychainLabel.getter();
      v141 = v24;

      v25._countAndFlagsBits = 1684827950;
      v25._object = 0xE400000000000000;
      String.append(_:)(v25);

      v26 = sub_10001A0F0(v131, v141, &v150);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2082;
      if (v20)
      {
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
      }

      else
      {
        v27 = 0x6E776F6E6B6E75;
        v29 = 0xE700000000000000;
      }

      v64 = sub_10001A0F0(v27, v29, &v150);

      *(v23 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v21, v22, "Old private key not found, skipping delete %{public}s: %{public}s", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return swift_unknownObjectRelease();
  }

  if (result)
  {
    type metadata accessor for SecKey(0);
    swift_unknownObjectRetain();
    v128 = swift_dynamicCastUnknownClassUnconditional();
    v30 = SecKeyCopyPublicKey(v128);
    if (v30)
    {
      v31 = v30;
      v32 = SecKeyCopyPublicKeyHash();
      if (!v32)
      {
        if (qword_10002CB08 != -1)
        {
          swift_once();
        }

        v75 = type metadata accessor for Logger();
        sub_100002AD8(v75, qword_10002D1B8);
        v76 = v1;
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = v31;
          v81 = swift_slowAlloc();
          v150 = v81;
          *v79 = 136446210;
          v136 = NarrativeCert.keychainLabel.getter();
          v146 = v82;

          v83._countAndFlagsBits = 1684827950;
          v83._object = 0xE400000000000000;
          String.append(_:)(v83);

          v84 = sub_10001A0F0(v136, v146, &v150);

          *(v79 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v77, v78, "Error getting public key hash from %{public}s", v79, 0xCu);
          sub_100002E28(v81);

          return swift_unknownObjectRelease();
        }

        v114 = v128;
LABEL_48:

        return swift_unknownObjectRelease();
      }

      v126 = v32;
      v127 = v31;
      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_100022660;
      *(v33 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v33 + 72) = v8;
      *(v33 + 40) = v34;
      *(v33 + 48) = v13;
      *(v33 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v33 + 88) = v35;
      v36 = v13;
      v132 = NarrativeCert.keychainLabel.getter();
      v142 = v37;

      v38._countAndFlagsBits = 1684827950;
      v38._object = 0xE400000000000000;
      String.append(_:)(v38);

      *(v33 + 120) = &type metadata for String;
      *(v33 + 96) = v132;
      *(v33 + 104) = v142;
      *(v33 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v33 + 136) = v39;
      *(v33 + 168) = &type metadata for Bool;
      *(v33 + 144) = 1;
      sub_10001B444(v33);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_100015EB4();
      v40 = Dictionary._bridgeToObjectiveC()().super.isa;

      v41 = SecItemDelete(v40);

      if (v41)
      {
        v42 = SecCopyErrorMessageString(v41, 0);
        if (qword_10002CB08 != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        sub_100002AD8(v43, qword_10002D1B8);
        v44 = v129;
        v45 = v42;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          *v48 = 136446466;
          v133 = NarrativeCert.keychainLabel.getter();
          v143 = v49;

          v50._countAndFlagsBits = 1684827950;
          v50._object = 0xE400000000000000;
          String.append(_:)(v50);

          v51 = sub_10001A0F0(v133, v143, &v150);

          *(v48 + 4) = v51;
          *(v48 + 12) = 2082;
          if (v45)
          {
            v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v54 = v53;
          }

          else
          {
            v52 = 0x6E776F6E6B6E75;
            v54 = 0xE700000000000000;
          }

          v31 = v127;
          v123 = sub_10001A0F0(v52, v54, &v150);

          *(v48 + 14) = v123;
          _os_log_impl(&_mh_execute_header, v46, v47, "Error deleting old key %{public}s from keychain: %{public}s", v48, 0x16u);
          swift_arrayDestroy();

          v114 = v126;
          goto LABEL_48;
        }
      }

      else
      {
        if (qword_10002CB08 != -1)
        {
          swift_once();
        }

        v85 = type metadata accessor for Logger();
        sub_100002AD8(v85, qword_10002D1B8);
        v86 = v129;
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.info.getter();

        v89 = v8;
        if (os_log_type_enabled(v87, v88))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v150 = v91;
          *v90 = 136446210;
          v137 = NarrativeCert.keychainLabel.getter();
          v147 = v92;

          v93._countAndFlagsBits = 1684827950;
          v93._object = 0xE400000000000000;
          String.append(_:)(v93);

          v94 = sub_10001A0F0(v137, v147, &v150);

          *(v90 + 4) = v94;
          _os_log_impl(&_mh_execute_header, v87, v88, "Deleted key for %{public}s", v90, 0xCu);
          sub_100002E28(v91);

          v89 = v8;
        }

        v95 = swift_initStackObject();
        *(v95 + 16) = xmmword_100021E70;
        *(v95 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v95 + 40) = v96;
        type metadata accessor for CFData(0);
        *(v95 + 72) = v97;
        *(v95 + 48) = v126;
        *(v95 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v95 + 88) = v98;
        *(v95 + 120) = v89;
        *(v95 + 96) = kSecClassCertificate;
        v99 = v126;
        v100 = kSecClassCertificate;
        sub_10001B444(v95);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_100015EB4();
        v101 = Dictionary._bridgeToObjectiveC()().super.isa;

        v102 = SecItemDelete(v101);

        if (v102)
        {
          v103 = SecCopyErrorMessageString(v102, 0);
          v104 = v86;
          v105 = Logger.logObject.getter();
          v106 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            v150 = swift_slowAlloc();
            *v107 = 136446466;
            v138 = NarrativeCert.keychainLabel.getter();
            v148 = v108;

            v109._countAndFlagsBits = 1684827950;
            v109._object = 0xE400000000000000;
            String.append(_:)(v109);

            v110 = sub_10001A0F0(v138, v148, &v150);

            *(v107 + 4) = v110;
            *(v107 + 12) = 2082;
            if (v103)
            {
              v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v113 = v112;
            }

            else
            {
              v111 = 0x6E776F6E6B6E75;
              v113 = 0xE700000000000000;
            }

            v124 = sub_10001A0F0(v111, v113, &v150);

            *(v107 + 14) = v124;
            _os_log_impl(&_mh_execute_header, v105, v106, "Error deleting old cert for %{public}s from keychain: %{public}s", v107, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
          v115 = v86;
          v116 = Logger.logObject.getter();
          v117 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            v150 = v119;
            *v118 = 136446210;
            v139 = NarrativeCert.keychainLabel.getter();
            v149 = v120;

            v121._countAndFlagsBits = 1684827950;
            v121._object = 0xE400000000000000;
            String.append(_:)(v121);

            v122 = sub_10001A0F0(v139, v149, &v150);

            *(v118 + 4) = v122;
            _os_log_impl(&_mh_execute_header, v116, v117, "Deleted cert for %{public}s", v118, 0xCu);
            sub_100002E28(v119);
          }
        }
      }

      v74 = v127;
    }

    else
    {
      if (qword_10002CB08 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_100002AD8(v65, qword_10002D1B8);
      v66 = v1;
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v150 = v70;
        *v69 = 136446210;
        v135 = NarrativeCert.keychainLabel.getter();
        v145 = v71;

        v72._countAndFlagsBits = 1684827950;
        v72._object = 0xE400000000000000;
        String.append(_:)(v72);

        v73 = sub_10001A0F0(v135, v145, &v150);

        *(v69 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v67, v68, "Error getting public key from %{public}s", v69, 0xCu);
        sub_100002E28(v70);
      }

      v74 = v128;
    }

    return swift_unknownObjectRelease();
  }

  if (qword_10002CB08 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_100002AD8(v55, qword_10002D1B8);
  v56 = v1;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v150 = v60;
    *v59 = 136446210;
    v134 = NarrativeCert.keychainLabel.getter();
    v144 = v61;

    v62._countAndFlagsBits = 1684827950;
    v62._object = 0xE400000000000000;
    String.append(_:)(v62);

    v63 = sub_10001A0F0(v134, v144, &v150);

    *(v59 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v57, v58, "Error finding old private key for %{public}s", v59, 0xCu);
    sub_100002E28(v60);
  }

  return swift_unknownObjectRelease();
}

void sub_100015578(uint64_t a1)
{
  v2 = v1;
  sub_100003400(&qword_10002D0F8, &unk_100022960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100022450;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  type metadata accessor for CFString(0);
  v7 = v6;
  *(inited + 72) = v6;
  *(inited + 48) = kSecClassKey;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v8;
  v78 = v7;
  *(inited + 120) = v7;
  *(inited + 96) = kSecAttrKeyClassPrivate;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v9;
  v77 = kSecClassKey;
  v10 = kSecAttrKeyClassPrivate;
  v11 = NarrativeCert.keychainLabel.getter();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v11;
  *(inited + 152) = v12;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v13;
  sub_1000112A4(a1, inited + 192);
  v14 = sub_10001B444(inited);
  swift_setDeallocating();
  sub_100003400(&qword_10002D100, &qword_1000225E0);
  swift_arrayDestroy();
  v81 = v14;
  sub_100015EB4();
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_100022440;
  *(v15 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v15 + 40) = v16;
  v79 = NarrativeCert.keychainLabel.getter();
  v80 = v17;

  v18._countAndFlagsBits = 1684827950;
  v18._object = 0xE400000000000000;
  String.append(_:)(v18);

  v19 = v79;
  v20 = v80;
  *(v15 + 72) = &type metadata for String;
  *(v15 + 48) = v19;
  *(v15 + 56) = v20;
  sub_10001B444(v15);
  swift_setDeallocating();
  sub_100006E1C(v15 + 32, &qword_10002D100, &qword_1000225E0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v22 = Dictionary._bridgeToObjectiveC()().super.isa;
  v23 = SecItemUpdate(isa, v22);

  if (v23)
  {

    v24 = SecCopyErrorMessageString(v23, 0);
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v25._object = 0x8000000100021160;
    v25._countAndFlagsBits = 0xD000000000000022;
    String.append(_:)(v25);
    v26._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v26);

    v27._countAndFlagsBits = 0x6379656B206F7420;
    v27._object = 0xEE00203A6E696168;
    String.append(_:)(v27);
    if (v24)
    {
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v28 = 0x6E776F6E6B6E75;

      v30 = 0xE700000000000000;
    }

    v59._countAndFlagsBits = v28;
    v59._object = v30;
    String.append(_:)(v59);

    v60 = v79;
    v61 = v80;
    if (qword_10002CB08 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_100002AD8(v62, qword_10002D1B8);

    goto LABEL_16;
  }

  if (qword_10002CB08 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100002AD8(v31, qword_10002D1B8);
  v32 = v2;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v79 = v36;
    *v35 = 136446210;
    v37 = NarrativeCert.keychainLabel.getter();
    v39 = sub_10001A0F0(v37, v38, &v79);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "Successfully updated deprecated key to old tag for %{public}s", v35, 0xCu);
    sub_100002E28(v36);
  }

  v40 = dispatch thunk of NarrativeCert.testKeychain.getter();
  if (!v40)
  {

    return;
  }

  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_100022660;
  *(v41 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v41 + 72) = v78;
  *(v41 + 40) = v42;
  *(v41 + 48) = v77;
  *(v41 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v41 + 88) = v43;
  *(v41 + 120) = v78;
  *(v41 + 96) = kSecAttrKeyClassPublic;
  *(v41 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v41 + 136) = v44;
  v45 = v77;
  v46 = kSecAttrKeyClassPublic;
  v47 = NarrativeCert.keychainLabel.getter();
  *(v41 + 168) = &type metadata for String;
  *(v41 + 144) = v47;
  *(v41 + 152) = v48;
  v49 = sub_10001B444(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  v81 = v49;
  sub_100015EB4();
  v50 = Dictionary._bridgeToObjectiveC()().super.isa;
  v51 = Dictionary._bridgeToObjectiveC()().super.isa;

  v52 = SecItemUpdate(v50, v51);

  if (v52)
  {
    v24 = SecCopyErrorMessageString(v52, 0);
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v53._countAndFlagsBits = 0xD000000000000029;
    v53._object = 0x8000000100021190;
    String.append(_:)(v53);
    v54._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v54);

    v55._countAndFlagsBits = 0x6379656B206F7420;
    v55._object = 0xEE00203A6E696168;
    String.append(_:)(v55);
    if (v24)
    {
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;
    }

    else
    {
      v56 = 0x6E776F6E6B6E75;

      v58 = 0xE700000000000000;
    }

    v76._countAndFlagsBits = v56;
    v76._object = v58;
    String.append(_:)(v76);

    v60 = v79;
    v61 = v80;

LABEL_16:
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v79 = v66;
      *v65 = 136446210;
      *(v65 + 4) = sub_10001A0F0(v60, v61, &v79);
      _os_log_impl(&_mh_execute_header, v63, v64, "%{public}s", v65, 0xCu);
      sub_100002E28(v66);
    }

    sub_100002B10();
    swift_allocError();
    *v67 = v60;
    *(v67 + 8) = v61;
    *(v67 + 16) = 0;
    swift_willThrow();

    return;
  }

  v68 = v32;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v79 = v72;
    *v71 = 136446210;
    v73 = NarrativeCert.keychainLabel.getter();
    v75 = sub_10001A0F0(v73, v74, &v79);

    *(v71 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v69, v70, "Successfully updated deprecated public key to old tag for %{public}s", v71, 0xCu);
    sub_100002E28(v72);
  }
}

uint64_t sub_100015EB4()
{
  if (qword_10002CB08 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002AD8(v1, qword_10002D1B8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136446210;
    v7 = NarrativeCert.keychainLabel.getter();
    v9 = sub_10001A0F0(v7, v8, v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Using DataProtection keychain %{public}s", v5, 0xCu);
    sub_100002E28(v6);
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13[3] = &type metadata for Bool;
  LOBYTE(v13[0]) = 1;
  return sub_1000160C4(v13, v10, v11);
}

uint64_t sub_100016050()
{
  v0 = type metadata accessor for Logger();
  sub_100003030(v0, qword_10002D1B8);
  sub_100002AD8(v0, qword_10002D1B8);
  narrativecertdMachServiceName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000160C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100011300(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_100016960(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_100006E1C(a1, &qword_10002CD88, "H\t");
    sub_100016194(a2, a3, v9);

    return sub_100006E1C(v9, &qword_10002CD88, "H\t");
  }

  return result;
}

double sub_100016194@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_10001A698(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100016B1C();
      v10 = v12;
    }

    sub_100011300((*(v10 + 56) + 32 * v8), a3);
    sub_1000167B0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_100016238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003400(&qword_10002D1D0, &qword_100022670);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100011300(v24, v34);
      }

      else
      {
        sub_1000112A4(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100011300(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_1000164F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003400(&qword_10002D1D8, &qword_100022678);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}