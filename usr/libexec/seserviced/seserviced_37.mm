uint64_t sub_100322E3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v48 = a1;
  v49 = a2;
  v9 = type metadata accessor for SHA256();
  v41 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256Digest();
  v43 = *(v12 - 8);
  v44 = v12;
  __chkstk_darwin(v12);
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.Encoding();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a5;
  if ((a5 & 1) == 0)
  {
    v20 = 0;
    v22 = 0;
    v19 = 0xC000000000000000;
    goto LABEL_7;
  }

  result = sub_10032263C(a3, a4);
  if (v5)
  {
    return result;
  }

  v20 = result;
  v21 = v19 >> 62;
  if ((v19 >> 62) <= 1)
  {
    if (!v21)
    {
      v22 = BYTE6(v19);
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  if (v21 != 2)
  {
    v22 = 0;
    goto LABEL_7;
  }

  v38 = *(result + 16);
  v37 = *(result + 24);
  v39 = __OFSUB__(v37, v38);
  v22 = v37 - v38;
  if (v39)
  {
    __break(1u);
LABEL_19:
    LODWORD(v22) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      goto LABEL_23;
    }

    v22 = v22;
  }

LABEL_7:
  if (__OFADD__(v22, 37))
  {
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v46 = v19;
  v47 = v20;
  v54 = sub_1001303A8(v22 + 37);
  v55 = v23;
  static String.Encoding.utf8.getter();
  v24 = String.data(using:allowLossyConversion:)();
  v26 = v25;
  (*(v15 + 8))(v17, v14);
  if (v26 >> 60 == 15)
  {
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    sub_10030990C(0, 1, 0xD000000000000027, 0x800000010046ECD0, 0);
    swift_willThrow();
    sub_10006A178(v47, v46);
    return sub_10006A178(v54, v55);
  }

  else
  {
    sub_1003234F8(&qword_100503000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_100069E2C(v24, v26);
    sub_100357FC4(v24, v26, v11);
    sub_10006A2D0(v24, v26);
    v27 = v42;
    dispatch thunk of HashFunction.finalize()();
    (*(v41 + 8))(v11, v9);
    v28 = v44;
    v52 = v44;
    v53 = sub_1003234F8(&qword_100503008, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v29 = sub_1000B9634(v51);
    v30 = v43;
    (*(v43 + 16))(v29, v27, v28);
    sub_1000752B0(v51, v52);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v30 + 8))(v27, v28);
    v31 = v50[0];
    v32 = v50[1];
    sub_1000752F4(v51);
    Data.append(_:)();
    sub_10006A178(v31, v32);
    if (v45)
    {
      v33 = 93;
    }

    else
    {
      v33 = 29;
    }

    v34 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v52 = v34;
    v53 = sub_100075C60(&qword_100502610, &qword_100502608, &qword_100409A28, &protocol conformance descriptor for <A> CollectionOfOne<A>);
    LOBYTE(v51[0]) = v33;
    LOBYTE(v50[0]) = *sub_1000752B0(v51, v34);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_1000752F4(v51);
    LODWORD(v50[0]) = 0;
    v52 = &type metadata for UnsafeRawBufferPointer;
    v53 = &protocol witness table for UnsafeRawBufferPointer;
    v51[0] = v50;
    v51[1] = v50 + 4;
    sub_1000752B0(v51, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(v51);
    v36 = v46;
    v35 = v47;
    Data.append(_:)();
    sub_10006A2D0(v24, v26);
    sub_10006A178(v35, v36);
    return v54;
  }
}

unint64_t sub_100323450()
{
  result = qword_10050AF90;
  if (!qword_10050AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AF90);
  }

  return result;
}

unint64_t sub_1003234A4()
{
  result = qword_10050AF98;
  if (!qword_10050AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AF98);
  }

  return result;
}

uint64_t sub_1003234F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unsigned int *sub_100323540(void *a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  v132 = a5;
  v128 = a4;
  v122 = a3;
  v121 = a2;
  v123 = a1;
  v125 = type metadata accessor for SHA256();
  v129 = *(v125 - 8);
  __chkstk_darwin(v125);
  v124 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for SHA256Digest();
  v130 = *(v127 - 1);
  __chkstk_darwin(v127);
  v126 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v6;
  v119 = OBJC_IVAR____TtC10seserviced16SEFidoKeyManager_logger;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Performing FiDO signature", v12, 2u);
  }

  v135 = Data.base64EncodedString(options:)(0);
  v140 = 47;
  v141 = 0xE100000000000000;
  v133 = 95;
  v134 = 0xE100000000000000;
  sub_10012512C();
  v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v15 = v14;

  v135._countAndFlagsBits = v13;
  v135._object = v15;
  v140 = 43;
  v141 = 0xE100000000000000;
  v133 = 45;
  v134 = 0xE100000000000000;
  v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v18 = v17;

  v135._countAndFlagsBits = v16;
  v135._object = v18;
  v140 = 61;
  v141 = 0xE100000000000000;
  v133 = 0;
  v134 = 0xE000000000000000;
  v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v21 = v20;

  strcpy(&v135, "webauthn.get");
  BYTE5(v135._object) = 0;
  HIWORD(v135._object) = -5120;
  v136 = v19;
  v137 = v21;
  v138 = v132;
  v139 = a6;
  v22 = type metadata accessor for JSONEncoder();
  swift_allocObject();

  JSONEncoder.init()();
  sub_1003225E8();
  v23 = v131;
  v24 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v23)
  {

    return v22;
  }

  v26 = v24;
  v27 = v25;
  v110 = v22;

  v28 = sub_1003234F8(&qword_100503000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  v117 = a6;
  v30 = v124;
  v29 = v125;
  dispatch thunk of HashFunction.init()();
  sub_100069E2C(v26, v27);
  sub_100357FC4(v26, v27, v30);
  v131 = 0;
  sub_10006A178(v26, v27);
  v31 = v126;
  v116 = v28;
  dispatch thunk of HashFunction.finalize()();
  v32 = v129[1];
  ++v129;
  v114 = v32;
  v32(v30, v29);
  v33 = v127;
  v137 = v127;
  v34 = sub_1003234F8(&qword_100503008, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v138 = v34;
  v35 = sub_1000B9634(&v135._countAndFlagsBits);
  v36 = v130;
  v37 = *(v130 + 16);
  v113 = v130 + 16;
  v112 = v37;
  v37(v35, v31, v33);
  sub_1000752B0(&v135, v137);
  v38 = v131;
  v115 = v34;
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v39 = *(v36 + 8);
  v130 = v36 + 8;
  v111 = v39;
  v39(v31, v33);
  v118 = v140;
  v131 = v141;
  sub_1000752F4(&v135);
  v40 = [v128 key];
  v41 = [v40 publicKey];

  v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v27;
  v44 = v43;

  v45 = sub_100322E3C(v132, v117, v42, v44, 0);
  v47 = v46;
  sub_10006A178(v42, v44);
  if (v38)
  {
    sub_10006A178(v118, v131);
    v48 = v26;
    v49 = v22;
LABEL_7:
    sub_10006A178(v48, v49);
    return v22;
  }

  v117 = v26;
  v132 = v22;
  v140 = v45;
  v141 = v47;
  v137 = &type metadata for Data;
  v138 = &protocol witness table for Data;
  v51 = v118;
  v52 = v131;
  v135._countAndFlagsBits = v118;
  v135._object = v131;
  v53 = sub_1000752B0(&v135, &type metadata for Data);
  v54 = v45;
  v55 = *v53;
  v56 = v53[1];
  v109 = v54;
  sub_100069E2C(v54, v47);
  sub_100069E2C(v51, v52);
  sub_10008E4C8(v55, v56, &v140);
  sub_1000752F4(&v135);
  v57 = v140;
  v58 = v141;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v59.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v122 = v47;
  v107 = v59.super.isa;
  v61 = v124;
  v60 = v125;
  dispatch thunk of HashFunction.init()();
  sub_100069E2C(v57, v58);
  sub_100357FC4(v57, v58, v61);
  v121 = v57;
  sub_10006A178(v57, v58);
  v62 = v126;
  dispatch thunk of HashFunction.finalize()();
  v114(v61, v60);
  v63 = v127;
  v137 = v127;
  v138 = v115;
  v64 = sub_1000B9634(&v135._countAndFlagsBits);
  v112(v64, v62, v63);
  sub_1000752B0(&v135, v137);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v129 = 0;
  v111(v62, v63);
  v65 = v140;
  v66 = v141;
  sub_1000752F4(&v135);
  v67 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v65, v66);
  v135._countAndFlagsBits = 0;
  v68 = isa;
  v69 = v107;
  v70 = sub_100030BD0(v123, isa, v107, v128, v67, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, &v135);

  countAndFlagsBits = v135._countAndFlagsBits;
  if (!v70)
  {
    v94 = v122;
    v95 = v135._countAndFlagsBits;
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v130 = v58;
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v135._countAndFlagsBits = v99;
      *v98 = 136315138;
      v129 = v95;
      if (v95)
      {
        v100 = [v95 localizedDescription];
        v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v103 = v102;
      }

      else
      {
        v103 = 0xE300000000000000;
        v101 = 7104878;
      }

      v104 = v94;
      v106 = sub_1002FFA0C(v101, v103, &v135._countAndFlagsBits);

      *(v98 + 4) = v106;
      _os_log_impl(&_mh_execute_header, v96, v97, "Failed to sign challenge %s", v98, 0xCu);
      sub_1000752F4(v99);

      v105 = v109;
      v95 = v129;
      v58 = v130;
    }

    else
    {

      v104 = v94;
      v105 = v109;
    }

    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v22 = v95;
    sub_10030990C(0, 1, 0xD000000000000010, 0x800000010046ED80, countAndFlagsBits);
    swift_willThrow();

    sub_10006A178(v121, v58);
    sub_10006A178(v105, v104);
    sub_10006A178(v118, v131);
    v48 = v117;
    v49 = v132;
    goto LABEL_7;
  }

  v130 = v58;
  v128 = v135._countAndFlagsBits;
  v126 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v127 = v72;

  v135 = Data.base64EncodedString(options:)(0);
  v140 = 47;
  v141 = 0xE100000000000000;
  v133 = 95;
  v134 = 0xE100000000000000;
  v73 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v75 = v74;

  v135._countAndFlagsBits = v73;
  v135._object = v75;
  v140 = 43;
  v141 = 0xE100000000000000;
  v133 = 45;
  v134 = 0xE100000000000000;
  v76 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v78 = v77;

  v135._countAndFlagsBits = v76;
  v135._object = v78;
  v140 = 61;
  v141 = 0xE100000000000000;
  v133 = 0;
  v134 = 0xE000000000000000;
  v79 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v81 = v80;

  v135 = Data.base64EncodedString(options:)(0);
  v140 = 47;
  v141 = 0xE100000000000000;
  v133 = 95;
  v134 = 0xE100000000000000;
  v82 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v22 = v83;

  v135._countAndFlagsBits = v82;
  v135._object = v22;
  v140 = 43;
  v141 = 0xE100000000000000;
  v133 = 45;
  v134 = 0xE100000000000000;
  v84 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v86 = v85;

  v135._countAndFlagsBits = v84;
  v135._object = v86;
  v140 = 61;
  v141 = 0xE100000000000000;
  v133 = 0;
  v134 = 0xE000000000000000;
  v87 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v89 = v88;
  v90 = v126;

  v135._countAndFlagsBits = v79;
  v135._object = v81;
  v136 = v87;
  v137 = v89;
  v91 = v127;
  v138 = v90;
  v139 = v127;
  swift_allocObject();
  JSONEncoder.init()();
  sub_100324404();
  v92 = v129;
  v93 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v92)
  {
    v22 = v93;
  }

  sub_10006A178(v121, v130);
  sub_10006A178(v117, v132);
  sub_10006A178(v118, v131);
  sub_10006A178(v109, v122);

  sub_10006A178(v90, v91);

  return v22;
}

unint64_t sub_100324404()
{
  result = qword_10050AFB0;
  if (!qword_10050AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AFB0);
  }

  return result;
}

uint64_t sub_100324458(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1003244A0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100324518(uint64_t a1, int a2)
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

uint64_t sub_100324560(uint64_t result, int a2, int a3)
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

uint64_t sub_1003245BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100324604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100324664()
{
  result = qword_10050AFC0;
  if (!qword_10050AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AFC0);
  }

  return result;
}

uint64_t sub_1003246B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x50676E69796C6572 && a2 == 0xEC00000079747261;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010046EDA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4879654B6F646966 && a2 == 0xEB00000000687361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614479654B7470 && a2 == 0xE900000000000061)
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

uint64_t sub_100324834@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100068FC4(&qword_10050AFC8, &qword_100415BE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_1000752B0(a1, a1[3]);
  sub_100324664();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(a1);
  }

  LOBYTE(v30) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v10;
  LOBYTE(v30) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v12;
  v22 = v11;
  LOBYTE(v26) = 2;
  v23 = sub_1000B87D4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v30;
  v37 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v20 = *(&v36 + 1);
  v23 = v36;
  v14 = v24;
  v13 = v25;
  *&v26 = v9;
  *(&v26 + 1) = v25;
  v15 = v22;
  *&v27 = v22;
  *(&v27 + 1) = v24;
  v16 = v21;
  v28 = v21;
  v29 = v36;
  sub_100324B98(&v26, &v30);
  sub_1000752F4(a1);
  *&v30 = v9;
  *(&v30 + 1) = v13;
  v31 = v15;
  v32 = v14;
  v33 = v16;
  v34 = v23;
  v35 = v20;
  result = sub_100322510(&v30);
  v18 = v27;
  *a2 = v26;
  a2[1] = v18;
  v19 = v29;
  a2[2] = v28;
  a2[3] = v19;
  return result;
}

uint64_t sub_100324BD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000)
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

uint64_t sub_100324CEC(void *a1)
{
  v3 = sub_100068FC4(&qword_10050B020, &qword_100415C10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1003253E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_1000752F4(a1);
  return v7;
}

uint64_t sub_100324ED0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144746E65696C63 && a2 == 0xEE004E4F534A6174;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010046EDC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
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

uint64_t sub_100325000@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100068FC4(&qword_10050AFD0, &qword_100415BE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_1000752B0(a1, a1[3]);
  sub_100325294();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(a1);
  }

  LOBYTE(v23) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v21 = a2;
  v22 = v9;
  LOBYTE(v23) = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v20 = v12;
  v25 = 2;
  sub_1000B87D4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v15 = v23;
  v16 = v24;

  sub_100069E2C(v15, v16);
  sub_1000752F4(a1);

  result = sub_10006A178(v15, v16);
  v18 = v21;
  *v21 = v22;
  v18[1] = v11;
  v18[2] = v20;
  v18[3] = v14;
  v18[4] = v15;
  v18[5] = v16;
  return result;
}

unint64_t sub_100325294()
{
  result = qword_10050AFD8;
  if (!qword_10050AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AFD8);
  }

  return result;
}

unint64_t sub_1003252E8()
{
  result = qword_10050AFE8;
  if (!qword_10050AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AFE8);
  }

  return result;
}

unint64_t sub_10032533C()
{
  result = qword_10050AFF8;
  if (!qword_10050AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AFF8);
  }

  return result;
}

unint64_t sub_100325390()
{
  result = qword_10050B000;
  if (!qword_10050B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B000);
  }

  return result;
}

unint64_t sub_1003253E4()
{
  result = qword_10050B010;
  if (!qword_10050B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B010);
  }

  return result;
}

uint64_t sub_100325438(void *a1)
{
  v3 = sub_100068FC4(&qword_10050B0C0, &qword_100416218);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1000752B0(a1, v7);
  sub_100326070();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100068FC4(&qword_100502458, &qword_10040C1F0);
    v9[15] = 1;
    sub_1003260C4(&qword_100506868, sub_1000B87D4, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_1000752F4(a1);
  return v7;
}

uint64_t sub_10032563C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7630182 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746D7453747461 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614468747561 && a2 == 0xE800000000000000)
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

uint64_t sub_100325754@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100068FC4(&qword_10050B028, &qword_100415C18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_1000752B0(a1, a1[3]);
  sub_10032533C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1000752F4(a1);
  }

  else
  {
    LOBYTE(v19) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v18 = v9;
    v21 = 1;
    sub_100325A00();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v20;
    v17 = v19;
    v21 = 2;
    sub_1000B87D4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v13 = v19;
    v14 = v20;

    sub_100069E2C(v13, v14);
    sub_1000752F4(a1);

    result = sub_10006A178(v13, v14);
    v16 = v17;
    *a2 = v18;
    a2[1] = v11;
    a2[2] = v16;
    a2[3] = v12;
    a2[4] = v13;
    a2[5] = v14;
  }

  return result;
}

unint64_t sub_100325A00()
{
  result = qword_10050B030;
  if (!qword_10050B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B030);
  }

  return result;
}

uint64_t sub_100325AB4(uint64_t a1, int a2)
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

uint64_t sub_100325AFC(uint64_t result, int a2, int a3)
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

unint64_t sub_100325B4C()
{
  result = qword_10050B038;
  if (!qword_10050B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B038);
  }

  return result;
}

unint64_t sub_100325BA4()
{
  result = qword_10050B040;
  if (!qword_10050B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B040);
  }

  return result;
}

unint64_t sub_100325BFC()
{
  result = qword_10050B048;
  if (!qword_10050B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B048);
  }

  return result;
}

unint64_t sub_100325C54()
{
  result = qword_10050B050;
  if (!qword_10050B050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B050);
  }

  return result;
}

unint64_t sub_100325CAC()
{
  result = qword_10050B058;
  if (!qword_10050B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B058);
  }

  return result;
}

unint64_t sub_100325D04()
{
  result = qword_10050B060;
  if (!qword_10050B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B060);
  }

  return result;
}

unint64_t sub_100325D5C()
{
  result = qword_10050B068;
  if (!qword_10050B068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B068);
  }

  return result;
}

unint64_t sub_100325DB4()
{
  result = qword_10050B070;
  if (!qword_10050B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B070);
  }

  return result;
}

unint64_t sub_100325E0C()
{
  result = qword_10050B078;
  if (!qword_10050B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B078);
  }

  return result;
}

unint64_t sub_100325E64()
{
  result = qword_10050B080;
  if (!qword_10050B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B080);
  }

  return result;
}

unint64_t sub_100325EBC()
{
  result = qword_10050B088;
  if (!qword_10050B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B088);
  }

  return result;
}

unint64_t sub_100325F14()
{
  result = qword_10050B090;
  if (!qword_10050B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B090);
  }

  return result;
}

unint64_t sub_100325F6C()
{
  result = qword_10050B098;
  if (!qword_10050B098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B098);
  }

  return result;
}

unint64_t sub_100325FC4()
{
  result = qword_10050B0A0;
  if (!qword_10050B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B0A0);
  }

  return result;
}

unint64_t sub_10032601C()
{
  result = qword_10050B0A8;
  if (!qword_10050B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B0A8);
  }

  return result;
}

unint64_t sub_100326070()
{
  result = qword_10050B0B8;
  if (!qword_10050B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B0B8);
  }

  return result;
}

uint64_t sub_1003260C4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&qword_100502458, &qword_10040C1F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100326150()
{
  result = qword_10050B0C8;
  if (!qword_10050B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B0C8);
  }

  return result;
}

unint64_t sub_1003261A8()
{
  result = qword_10050B0D0;
  if (!qword_10050B0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B0D0);
  }

  return result;
}

unint64_t sub_100326200()
{
  result = qword_10050B0D8;
  if (!qword_10050B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B0D8);
  }

  return result;
}

uint64_t sub_100326260(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_10050B0E0);
  sub_1000958E4(v2, qword_10050B0E0);
  return Logger.init(subsystem:category:)();
}

void sub_1003262E0()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v30 = [v0 initWithSuiteName:v1];

  if (!v30)
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_10050B0E0);
    v30 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v30, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v31 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x800000010046EE80, &v31);
      _os_log_impl(&_mh_execute_header, v30, v5, "%s -- unable to initialize Settings Suite!?", v6, 0xCu);
      sub_1000752F4(v7);
    }

    goto LABEL_21;
  }

  v2 = objc_allocWithZone(LSApplicationRecord);
  v8 = sub_10013FCB4(0xD000000000000012, 0x8000000100465B40, 0);
  v9 = [v8 localizedName];
  v10 = v9;
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [v30 stringForKey:v11];

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v13 == 0xD000000000000012 && 0x8000000100465B40 == v15)
    {

LABEL_16:
      if (qword_100501D68 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000958E4(v17, qword_10050B0E0);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Passbook is already default -- no op", v20, 2u);
      }

LABEL_21:
      v3 = v30;
      goto LABEL_22;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {

      goto LABEL_16;
    }
  }

  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  [v30 setValue:v21 forKey:v22];

  isa = UInt._bridgeToObjectiveC()().super.super.isa;
  v24 = String._bridgeToObjectiveC()();
  [v30 setValue:isa forKey:v24];

  v25 = String._bridgeToObjectiveC()();
  [v30 setValue:v10 forKey:v25];

  if (qword_100501D68 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000958E4(v26, qword_10050B0E0);
  oslog = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v27, "Configured passbook as default", v28, 2u);
  }

  v3 = oslog;
LABEL_22:
}

void sub_10032690C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v24 = [v0 initWithSuiteName:v1];

  if (!v24)
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_10050B0E0);
    v24 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v24, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v24, v13, "Unable to initialize Settings Suite!?", v14, 2u);
    }

    goto LABEL_20;
  }

  v2 = String._bridgeToObjectiveC()();
  v3 = [v24 stringForKey:v2];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000958E4(v7, qword_10050B0E0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Migrating from v1 schema to v3", v10, 2u);
    }

    v11 = objc_allocWithZone(LSApplicationRecord);
    v19 = sub_10013FCB4(v4, v6, 1);
    v20 = [v19 localizedName];
    v21 = v20;
    if (!v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = String._bridgeToObjectiveC()();
    }

    v22 = String._bridgeToObjectiveC()();
    [v24 setValue:v21 forKey:v22];

LABEL_20:
    v18 = v24;
    goto LABEL_21;
  }

  if (qword_100501D68 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000958E4(v15, qword_10050B0E0);
  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v16, "No default app, nothing to migrate", v17, 2u);
  }

  v18 = oslog;
LABEL_21:
}

void sub_100326DF8(uint64_t *a2@<X8>)
{
  if (qword_100501D68 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10050B0E0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Current Default app?", v6, 2u);
  }

  v7 = objc_allocWithZone(NSUserDefaults);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithSuiteName:v8];

  if (!v9)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "We are super doomed -- unable to initialize Settings Suite!?", v19, 2u);
    }

    goto LABEL_35;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 stringForKey:v10];

  if (!v11)
  {

    v12 = 0;
    v14 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_36;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = String._bridgeToObjectiveC()();
  v16 = [v9 objectForKey:v15];

  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (!*(&v39 + 1))
  {

    sub_1001B5024(&v40);
LABEL_35:
    v12 = 0;
    v14 = 0;
    v20 = 0;
    v21 = 0;
    v11 = 0;
    goto LABEL_36;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_34:

    goto LABEL_35;
  }

  v20 = v37;
  v22 = String._bridgeToObjectiveC()();
  v23 = [v9 stringForKey:v22];

  if (!v23)
  {

    sub_10032690C();
    v28 = String._bridgeToObjectiveC()();
    v29 = [v9 stringForKey:v28];

    if (v29)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v30;

      v31 = String._bridgeToObjectiveC()();
      v32 = [v9 objectForKey:v31];

      if (v32)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v38 = 0u;
        v39 = 0u;
      }

      v40 = v38;
      v41 = v39;
      if (*(&v39 + 1))
      {
        if (swift_dynamicCast())
        {
          v20 = v37;
          v33 = String._bridgeToObjectiveC()();
          v23 = [v9 stringForKey:v33];

          if (v23)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {

        sub_1001B5024(&v40);
      }
    }

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Default app localized name missing even after migration", v36, 2u);
    }

    goto LABEL_34;
  }

LABEL_17:
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v24;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *&v40 = swift_slowAlloc();
    *v27 = 136315394;
    *(v27 + 4) = sub_1002FFA0C(v12, v14, &v40);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_1002FFA0C(v21, v11, &v40);
    _os_log_impl(&_mh_execute_header, v25, v26, "Default App %s with display name %s", v27, 0x16u);
    swift_arrayDestroy();
  }

LABEL_36:
  *a2 = v12;
  a2[1] = v14;
  a2[2] = v20;
  a2[3] = v21;
  a2[4] = v11;
}

void sub_10032743C(uint64_t a1)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    [v4 setValue:v5 forKey:v6];

    v18 = *(a1 + 16);
    type metadata accessor for NFWalletDomain(0);
    v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v8 = String._bridgeToObjectiveC()();
    [v4 setValue:v7 forKey:v8];
    swift_unknownObjectRelease();

    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    [v4 setValue:v9 forKey:v10];

    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v12 = String._bridgeToObjectiveC()();
    [v4 setValue:isa forKey:v12];
  }

  else
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_10050B0E0);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1002FFA0C(0xD000000000000011, 0x800000010046F0E0, &v18);
      _os_log_impl(&_mh_execute_header, oslog, v14, "%s -- unable to initialize Settings Suite!?", v15, 0xCu);
      sub_1000752F4(v16);
    }

    else
    {
    }
  }
}

void sub_100327738()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    [v2 setValue:0 forKey:v3];

    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v5 = String._bridgeToObjectiveC()();
    [v2 setValue:isa forKey:v5];

    oslog = String._bridgeToObjectiveC()();
    [v2 setValue:0 forKey:oslog];
  }

  else
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10050B0E0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1002FFA0C(0xD000000000000016, 0x800000010046F120, &v11);
      _os_log_impl(&_mh_execute_header, oslog, v7, "%s -- unable to initialize Settings Suite!?", v8, 0xCu);
      sub_1000752F4(v9);
    }
  }
}

id sub_10032798C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 BOOLForKey:v3];
  }

  else
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_10050B0E0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1002FFA0C(0xD000000000000013, 0x800000010046F100, &v11);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s -- unable to initialize Settings Suite!?", v8, 0xCu);
      sub_1000752F4(v9);
    }

    return 0;
  }

  return v4;
}

void sub_100327B64()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_10050B0E0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Performing migration from v2 to v4", v6, 2u);
    }

    v7 = String._bridgeToObjectiveC()();
    v8 = [v2 BOOLForKey:v7];

    v9 = String._bridgeToObjectiveC()();
    [v2 setBool:v8 forKey:v9];

    v10 = String._bridgeToObjectiveC()();
    [v2 removeObjectForKey:v10];

    v11 = String._bridgeToObjectiveC()();
    v12 = [v2 BOOLForKey:v11];

    v13 = String._bridgeToObjectiveC()();
    [v2 setBool:v12 forKey:v13];

    v14 = String._bridgeToObjectiveC()();
    [v2 removeObjectForKey:v14];

    v15 = String._bridgeToObjectiveC()();
    v16 = [v2 BOOLForKey:v15];

    v17 = String._bridgeToObjectiveC()();
    [v2 setBool:v16 forKey:v17];

    v18 = String._bridgeToObjectiveC()();
    [v2 setBool:v16 forKey:v18];

    v19 = String._bridgeToObjectiveC()();
    [v2 removeObjectForKey:v19];

    v20 = String._bridgeToObjectiveC()();
    v21 = [v2 objectForKey:v20];

    if (v21)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    v40 = v38;
    v41 = v39;
    if (*(&v39 + 1))
    {
      sub_100068FC4(&unk_100503EC0, &unk_100417130);
      swift_dynamicCast();
    }

    else
    {
      sub_1001B5024(&v40);
    }

    sub_100068FC4(&qword_100505FD0, &qword_10040B550);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v26 = String._bridgeToObjectiveC()();
    [v2 setObject:isa forKey:v26];

    v27 = String._bridgeToObjectiveC()();
    [v2 removeObjectForKey:v27];

    v28 = String._bridgeToObjectiveC()();
    v29 = [v2 stringForKey:v28];

    v30 = String._bridgeToObjectiveC()();
    [v2 setObject:v29 forKey:v30];

    v31 = String._bridgeToObjectiveC()();
    [v2 removeObjectForKey:v31];

    v32 = PKDoubleClickAllowed();
    v33 = String._bridgeToObjectiveC()();
    [v2 setBool:v32 forKey:v33];

    v40 = 0u;
    v41 = 0u;
    v42 = 1;
    LOBYTE(v32) = sub_100306124(6, &v40, 0, 0);
    v34 = String._bridgeToObjectiveC()();
    [v2 setBool:v32 & 1 forKey:v34];

    LOBYTE(v32) = sub_100306124(4, &v40, 0, 0);
    v35 = String._bridgeToObjectiveC()();
    [v2 setBool:v32 & 1 forKey:v35];

    v36 = String._bridgeToObjectiveC()();
    [v2 setInteger:4 forKey:v36];
  }

  else
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000958E4(v22, qword_10050B0E0);
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v23, "Unable to initialize Settings Suite!?", v24, 2u);
    }
  }
}

void sub_10032828C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_10050B0E0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Performing migration from v3 to v4", v6, 2u);
    }

    memset(v13, 0, sizeof(v13));
    v14 = 1;
    v7 = sub_100306124(4, v13, 0, 0);
    v8 = String._bridgeToObjectiveC()();
    [v2 setBool:v7 & 1 forKey:v8];

    oslog = String._bridgeToObjectiveC()();
    [v2 setInteger:4 forKey:?];
  }

  else
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000958E4(v9, qword_10050B0E0);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Unable to initialize Settings Suite!?", v11, 2u);
    }
  }
}

void *sub_100328518()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001B5024(&v56);
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
    sub_1001B5024(&v56);
    sub_100327B64();
  }

  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 integerForKey:v5];

  if (v6 == 3)
  {
    sub_10032828C();
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = [v2 BOOLForKey:v7];

  v9 = String._bridgeToObjectiveC()();
  v10 = [v2 BOOLForKey:v9];

  v11 = String._bridgeToObjectiveC()();
  v12 = [v2 BOOLForKey:v11];

  v13 = String._bridgeToObjectiveC()();
  v14 = [v2 BOOLForKey:v13];

  v15 = String._bridgeToObjectiveC()();
  v16 = [v2 objectForKey:v15];

  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v56 = v54;
  v57 = v55;
  v50 = v12;
  v51 = v8;
  if (*(&v55 + 1))
  {
    sub_100068FC4(&unk_100503EC0, &unk_100417130);
    if (swift_dynamicCast())
    {
      v17 = v53;
      goto LABEL_15;
    }
  }

  else
  {
    sub_1001B5024(&v56);
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_15:
  v18 = String._bridgeToObjectiveC()();
  v19 = [v2 BOOLForKey:v18];

  v20 = String._bridgeToObjectiveC()();
  v21 = v2;
  v22 = v20;
  v52 = v21;
  v23 = [v21 BOOLForKey:v20];

  v24 = 0;
  v25 = v17[2];
  v26 = _swiftEmptyArrayStorage;
LABEL_16:
  v27 = v24;
  while (v25 != v27)
  {
    if (v27 >= v17[2])
    {
      __break(1u);
      goto LABEL_30;
    }

    v24 = v27 + 1;

    sub_1000B67A0(v28, &v56);
    v29 = *(&v56 + 1);
    v27 = v24;
    if (*(&v56 + 1))
    {
      v47 = v23;
      v48 = v19;
      v49 = v14;
      v30 = v56;
      v45 = *(&v57 + 1);
      v46 = v57;
      v31 = v58;
      v32 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_10012F2E4(0, *(v26 + 2) + 1, 1, v26);
      }

      v34 = *(v26 + 2);
      v33 = *(v26 + 3);
      if (v34 >= v33 >> 1)
      {
        v26 = sub_10012F2E4((v33 > 1), v34 + 1, 1, v26);
      }

      *(v26 + 2) = v34 + 1;
      v35 = &v26[40 * v34];
      *(v35 + 4) = v30;
      *(v35 + 5) = v29;
      *(v35 + 6) = v46;
      *(v35 + 7) = v45;
      *(v35 + 8) = v31;
      v10 = v32;
      v19 = v48;
      v14 = v49;
      v23 = v47;
      goto LABEL_16;
    }
  }

  type metadata accessor for SECSettingsPaneReconciler.PaneConfig();
  v17 = swift_allocObject();
  *(v17 + 16) = v51;
  *(v17 + 17) = v10;
  *(v17 + 18) = v50;
  *(v17 + 19) = v14;
  *(v17 + 20) = v19;
  *(v17 + 21) = v23;
  v17[3] = v26;
  if (qword_100501D68 == -1)
  {
    goto LABEL_26;
  }

LABEL_30:
  swift_once();
LABEL_26:
  v36 = type metadata accessor for Logger();
  sub_1000958E4(v36, qword_10050B0E0);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v54 = v40;
    *v39 = 136315138;
    v41 = sub_1001B25BC();
    v43 = sub_1002FFA0C(v41, v42, &v54);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "Read current Pane Config %s", v39, 0xCu);
    sub_1000752F4(v40);
  }

  return v17;
}

void sub_100328B10(void *a1)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (v4)
  {
    if (qword_100501D68 != -1)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v5 = type metadata accessor for Logger();
      sub_1000958E4(v5, qword_10050B0E0);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v66 = v9;
        *v8 = 136315138;
        v10 = sub_1001B25BC();
        v12 = sub_1002FFA0C(v10, v11, &v66);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v6, v7, "Writing Pane Config %s", v8, 0xCu);
        sub_1000752F4(v9);
      }

      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v14 = String._bridgeToObjectiveC()();
      [v4 setValue:isa forKey:v14];

      v15 = Bool._bridgeToObjectiveC()().super.super.isa;
      v16 = String._bridgeToObjectiveC()();
      [v4 setValue:v15 forKey:v16];

      v17 = Bool._bridgeToObjectiveC()().super.super.isa;
      v18 = String._bridgeToObjectiveC()();
      [v4 setValue:v17 forKey:v18];

      v19 = Bool._bridgeToObjectiveC()().super.super.isa;
      v20 = String._bridgeToObjectiveC()();
      [v4 setValue:v19 forKey:v20];

      v21 = a1[3];
      v22 = *(v21 + 16);
      if (!v22)
      {
        break;
      }

      v64 = v4;
      v73 = _swiftEmptyArrayStorage;

      sub_10019F4C4(0, v22, 0);
      v23 = v73;
      sub_100068FC4(&unk_100504000, &unk_10040B350);
      v4 = &v69;
      v24 = (v21 + 64);
      while (1)
      {
        v25 = *(v24 - 4);
        v26 = *(v24 - 3);
        v27 = *(v24 - 2);
        v28 = *(v24 - 1);
        v29 = *v24;
        v70[0] = 0x6449656C646E7562;
        v70[1] = 0xE800000000000000;
        v70[2] = v25;
        v70[3] = v26;
        v70[5] = &type metadata for String;
        v71[0] = 0x6E69616D6F64;
        v71[1] = 0xE600000000000000;
        v71[2] = v27;
        v71[5] = &type metadata for UInt;
        v72[0] = 0x4E79616C70736964;
        v72[1] = 0xEB00000000656D61;
        v72[2] = v28;
        v72[5] = &type metadata for String;
        v72[3] = v29;
        v30 = static _DictionaryStorage.allocate(capacity:)();

        sub_10011EF24(v70, &v66);
        v32 = v66;
        v31 = v67;
        v33 = sub_10008C908(v66, v67);
        if (v34)
        {
          break;
        }

        a1 = v30 + 8;
        *(v30 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v33;
        v35 = (v30[6] + 16 * v33);
        *v35 = v32;
        v35[1] = v31;
        sub_100075D50(v68, (v30[7] + 32 * v33));
        v36 = v30[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_26;
        }

        v30[2] = v38;
        sub_10011EF24(v71, &v66);
        v39 = v66;
        v40 = v67;
        v41 = sub_10008C908(v66, v67);
        if (v42)
        {
          break;
        }

        *(a1 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
        v43 = (v30[6] + 16 * v41);
        *v43 = v39;
        v43[1] = v40;
        sub_100075D50(v68, (v30[7] + 32 * v41));
        v44 = v30[2];
        v37 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v37)
        {
          goto LABEL_26;
        }

        v30[2] = v45;
        sub_10011EF24(v72, &v66);
        v46 = v66;
        v47 = v67;
        v48 = sub_10008C908(v66, v67);
        if (v49)
        {
          break;
        }

        *(a1 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
        v50 = (v30[6] + 16 * v48);
        *v50 = v46;
        v50[1] = v47;
        sub_100075D50(v68, (v30[7] + 32 * v48));
        v51 = v30[2];
        v37 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v37)
        {
          goto LABEL_26;
        }

        v30[2] = v52;

        sub_100068FC4(&qword_100507D30, &unk_100409C90);
        swift_arrayDestroy();
        v73 = v23;
        v54 = v23[2];
        v53 = v23[3];
        if (v54 >= v53 >> 1)
        {
          sub_10019F4C4((v53 > 1), v54 + 1, 1);
          v23 = v73;
        }

        v23[2] = v54 + 1;
        v23[v54 + 4] = v30;
        v24 += 5;
        if (!--v22)
        {

          v4 = v64;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      swift_once();
    }

LABEL_24:
    sub_100068FC4(&qword_100505FD0, &qword_10040B550);
    v58 = Array._bridgeToObjectiveC()().super.isa;

    v59 = String._bridgeToObjectiveC()();
    [v4 setValue:v58 forKey:v59];

    v60 = Bool._bridgeToObjectiveC()().super.super.isa;
    v61 = String._bridgeToObjectiveC()();
    [v4 setValue:v60 forKey:v61];

    v62 = Bool._bridgeToObjectiveC()().super.super.isa;
    v63 = String._bridgeToObjectiveC()();
    [v4 setValue:v62 forKey:v63];
  }

  else
  {
    if (qword_100501D68 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_1000958E4(v55, qword_10050B0E0);
    oslog = Logger.logObject.getter();
    v56 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v56, "Unable to initialize Settings Suite!?", v57, 2u);
    }
  }
}

uint64_t sub_10032929C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  return _swift_task_switch(sub_1003292C0, 0, 0);
}

uint64_t sub_1003292C0()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100329410;
  v3 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_100503460, &qword_10040B560);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001861F4;
  v0[13] = &unk_1004D0E30;
  v0[14] = v3;
  sub_1003AF710(v1, v2, v0 + 10);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100329410()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1003297AC;
  }

  else
  {
    v2 = sub_100329520;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100329520()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);

  v4 = sub_1003299DC(v2, v1);
  v5 = *(v0 + 168);
  v6 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v4];
  v5(v6, 0);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003297AC(uint64_t a1)
{
  v16 = v1;
  v2 = v1[23];
  swift_willThrow();

  if (qword_100501D70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10050B0F8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1002FFA0C(0xD000000000000021, 0x800000010046F140, &v15);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Error %@ encountered while getting secure element", v6, 0x16u);
    sub_1000C2998(v7);

    sub_1000752F4(v8);
  }

  v10 = v1[21];
  sub_10009591C();
  v11 = swift_allocError();
  *v12 = 31;
  v10(0, v11);

  v13 = v1[1];

  return v13();
}

id sub_1003299DC(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = sub_1003AF1FC(v2, isa);

  if (v8)
  {
    v9 = qword_100501D70;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000958E4(v11, qword_10050B0F8);
    v12 = v10;
    sub_100069E2C(a1, a2);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v61 = v17;
      *v15 = 136315394;
      sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v18 = BidirectionalCollection<>.joined(separator:)();
      a1 = v19;

      v20 = sub_1002FFA0C(v18, a1, &v61);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2112;
      v21 = v12;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v22;
      *v16 = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to select %s with error %@", v15, 0x16u);
      sub_1000C2998(v16);

      sub_1000752F4(v17);
    }

    sub_10009591C();
    swift_allocError();
    *v23 = 31;
    swift_willThrow();

    return a1;
  }

  result = sub_10013044C(0x3143303041433038, 0xE800000000000000);
  if (v25 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_37;
  }

  v26 = result;
  v27 = v25;
  v28 = Data._bridgeToObjectiveC()().super.isa;
  v61 = 0;
  v29 = sub_1003AE9C8(v4, v28, &v61);

  if (!v29)
  {
    v41 = v61;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_31;
  }

  v30 = v61;
  if (sub_1003B0984(v29) != 36864 || (v31 = sub_1003B0934(v29), v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)(), a1 = v33, v31, v34 = Data._bridgeToObjectiveC()().super.isa, sub_10006A178(v32, a1), v35 = [objc_opt_self() TLVWithData:v34], v34, !v35))
  {
LABEL_30:
    sub_10009591C();
    swift_allocError();
    *v60 = 31;
    swift_willThrow();

    goto LABEL_31;
  }

  if ([v35 tag] != 193)
  {
LABEL_29:

    goto LABEL_30;
  }

  result = [v35 value];
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v36 = result;
  a1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39 = v38 >> 62;
  if ((v38 >> 62) <= 1)
  {
    if (!v39)
    {
      sub_10006A178(a1, v38);
      v40 = BYTE6(v38);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v39 != 2)
  {

    sub_10006A178(a1, v38);
    goto LABEL_30;
  }

  v43 = *(a1 + 16);
  v42 = *(a1 + 24);
  sub_10006A178(a1, v38);
  v40 = v42 - v43;
  if (__OFSUB__(v42, v43))
  {
    __break(1u);
LABEL_21:
    sub_10006A178(a1, v38);
    LODWORD(v40) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
    }

    v40 = v40;
  }

LABEL_23:
  if (v40 != 3)
  {
    goto LABEL_29;
  }

  sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1004099F0;
  *(v44 + 32) = 0;
  result = [v35 value];
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v45 = result;
  v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  LOBYTE(v45) = Data._Representation.subscript.getter();
  sub_10006A178(v46, v48);
  *(v44 + 33) = v45;
  result = [v35 value];
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v49 = result;
  v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  LOBYTE(v49) = Data._Representation.subscript.getter();
  sub_10006A178(v50, v52);
  *(v44 + 34) = v49;
  result = [v35 value];
  if (result)
  {
    v53 = result;
    v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    LOBYTE(v53) = Data._Representation.subscript.getter();
    sub_10006A178(v54, v56);
    *(v44 + 35) = v53;
    v57 = sub_1002B3B94(v44);
    v59 = v58;

    a1 = sub_1000939F8(v57, v59, 0, 0, 0);
    sub_10006A178(v57, v59);
    if (!v3)
    {
      sub_10006A2D0(v26, v27);

      return a1;
    }

LABEL_31:
    sub_10006A2D0(v26, v27);
    return a1;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10032A1C4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10032A1FC()
{
  swift_unknownObjectRelease();
  sub_10006A178(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10032A244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000C288C;

  return sub_10032929C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10032A330(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_10050B0F8);
  v3 = sub_1000958E4(v2, qword_10050B0F8);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = sub_1000958E4(v2, qword_10051B2C8);
  v5 = *(*(v2 - 8) + 16);

  return v5(v3, v4, v2);
}

uint64_t sub_10032A3F8(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&qword_10050B1B8, &qword_100416350);
  v9 = swift_allocObject();
  *(v9 + 32) = 0;
  *(v9 + 16) = &_swiftEmptySetSingleton;
  *(v9 + 24) = &_swiftEmptySetSingleton;
  *(v3 + 24) = v9;
  *(v3 + 16) = a1 & 1;
  if ((a1 & 1) == 0)
  {
    type metadata accessor for Peer(0);
    v14[1] = &OBJC_PROTOCOL___NSCopying;
    if (!swift_dynamicCastTypeToObjCProtocolConditional())
    {
      if (qword_100501D88 != -1)
      {
        swift_once();
      }

      (*(v6 + 16))(v8, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v5);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Requested a store of values but the type is not NSCopying", v12, 2u);
      }

      (*(v6 + 8))(v8, v5);
      return 0;
    }
  }

  return v3;
}

void *sub_10032A610()
{
  sub_100068FC4(&qword_10050B1B0, &qword_100416348);
  swift_allocObject();
  result = sub_10032A3F8(1, v0);
  if (result)
  {
    off_10050B110 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10032A6BC(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
LABEL_18:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v5 = v14;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v3 = &v18;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_20:

  return v3;
}

void sub_10032A878(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PresentmentInfo(0);
  v24 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_1003330E8(a3 + v14 + v15 * v12, v11);
      v16 = a1(v11);
      if (v3)
      {
        sub_10033314C(v11);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_1003331A8(v11, v23);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10019F8F4(0, v13[2] + 1, 1);
          v13 = v25;
        }

        v19 = v13[2];
        v18 = v13[3];
        if (v19 >= v18 >> 1)
        {
          sub_10019F8F4((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        v13[2] = v19 + 1;
        sub_1003331A8(v23, v13 + v14 + v19 * v15);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_10033314C(v11);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void *sub_10032AAA0(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v19 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v15;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

id sub_10032AC4C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_10032AD34()
{
  v1[2] = v0;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10032AE00, v0, 0);
}

uint64_t sub_10032AE00()
{
  v66 = v0;
  v1 = [objc_opt_self() enumeratorWithOptions:0];
  v2 = [v1 nextObject];
  if (v2)
  {
    v3 = v2;
    do
    {
      v4 = [v3 bundleIdentifier];
      if (v4)
      {
        v5 = v4;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        sub_1000D78B8(&v65, v6, v8);
      }

      else
      {
      }

      v2 = [v1 nextObject];
      v3 = v2;
    }

    while (v2);
  }

  v9 = sub_100331A8C(v2);
  v59 = v9;
  if (v9 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = 0;
    v58 = (v0[4] + 8);
    v60 = i;
    v61 = v1;
    v62 = v0;
    while (1)
    {
      if ((v59 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v16 = *(v59 + 32 + 8 * v11);
      }

      v17 = v16;
      v18 = __OFADD__(v11, 1);
      v19 = v11 + 1;
      if (v18)
      {
        break;
      }

      v20 = CredentialInternal.ownerApplications.getter();
      v1 = v20;
      if (v20 >> 62)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
        v63 = v17;
        v64 = v19;
        if (!v21)
        {
LABEL_49:

          v23 = _swiftEmptyArrayStorage;
          v0 = _swiftEmptyArrayStorage[2];
          if (v0)
          {
            goto LABEL_29;
          }

          goto LABEL_50;
        }
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v63 = v17;
        v64 = v19;
        if (!v21)
        {
          goto LABEL_49;
        }
      }

      v65 = _swiftEmptyArrayStorage;
      sub_10019F3C0(0, v21 & ~(v21 >> 63), 0);
      if (v21 < 0)
      {
        goto LABEL_58;
      }

      v22 = 0;
      v23 = v65;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v24 = *(v1 + 8 * v22 + 32);
        }

        v25 = v24;
        v26 = ApplicationInfoInternal.bundleId.getter();
        v28 = v27;

        v65 = v23;
        v30 = v23[2];
        v29 = v23[3];
        if (v30 >= v29 >> 1)
        {
          sub_10019F3C0((v29 > 1), v30 + 1, 1);
          v23 = v65;
        }

        ++v22;
        v23[2] = v30 + 1;
        v31 = &v23[2 * v30];
        v31[4] = v26;
        v31[5] = v28;
      }

      while (v21 != v22);

      v0 = v23[2];
      if (v0)
      {
LABEL_29:
        v1 = &_swiftEmptySetSingleton + 56;
        v32 = 1;
        v33 = 0;
        while (1)
        {
          if (v33 >= v23[2])
          {
            __break(1u);
            goto LABEL_57;
          }

          v34 = (v33 + 1);
          if (!*(&_swiftEmptySetSingleton + 2))
          {
            goto LABEL_31;
          }

          v35 = &v23[2 * v33 + 4];
          v37 = *v35;
          v36 = v35[1];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v38 = Hasher._finalize()();
          v39 = -1 << *(&_swiftEmptySetSingleton + 32);
          v40 = v38 & ~v39;
          if ((*(v1 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
          {
            v41 = ~v39;
            while (1)
            {
              v42 = (*(&_swiftEmptySetSingleton + 6) + 16 * v40);
              v43 = *v42 == v37 && v42[1] == v36;
              if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v40 = (v40 + 1) & v41;
              if (((*(v1 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            v32 = 0;
            if (v34 == v0)
            {

              v1 = v61;
              v0 = v62;
              goto LABEL_12;
            }

            v33 = v34;
          }

          else
          {
LABEL_30:

LABEL_31:
            v33 = v34;
            if (v34 == v0)
            {

              v1 = v61;
              if (v32)
              {
                goto LABEL_51;
              }

              v0 = v62;
              goto LABEL_12;
            }
          }
        }
      }

LABEL_50:

      v1 = v61;
LABEL_51:
      v0 = v62;
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_1000958E4(v44, qword_10051B2C8);
      v45 = v63;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = v62[6];
        v49 = v62[3];
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v65 = v51;
        *v50 = 136315138;
        CredentialInternal.identifier.getter();
        v52 = UUID.uuidString.getter();
        v54 = v53;
        v12 = v58;
        (*v58)(v48, v49);
        v55 = sub_1002FFA0C(v52, v54, &v65);

        *(v50 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v46, v47, "Credential %s last owner app has been deleted", v50, 0xCu);
        sub_1000752F4(v51);

        v1 = v61;
        v0 = v62;
      }

      else
      {

        v12 = v58;
      }

      v13 = v0[5];
      v14 = v0[6];
      v15 = v0[3];
      CredentialInternal.identifier.getter();
      sub_1000D6D84(v14, v13);

      (*v12)(v14, v15);
LABEL_12:
      v11 = v64;
      if (v64 == v60)
      {
        goto LABEL_61;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_61:

  v56 = v0[1];

  return v56(&_swiftEmptySetSingleton);
}

uint64_t sub_10032B4E4()
{
  v1[2] = v0;
  sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10032B5F4, v0, 0);
}

char *sub_10032B5F4()
{
  v110 = v0;
  v1 = [objc_allocWithZone(type metadata accessor for TCCContext()) init];
  v2 = sub_100137BA4(0);
  v3 = v2;
  v88 = v1;
  v109 = _swiftEmptyArrayStorage;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_77;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = _swiftEmptyArrayStorage;
    if (i)
    {
      v7 = 0;
      do
      {
        v8 = v6;
        v9 = v7;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *(v4 + 16))
            {
              goto LABEL_72;
            }

            v10 = *(v3 + 8 * v9 + 32);
          }

          v11 = v10;
          v7 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

          v12 = [v10 identifier];
          if (v12)
          {
            break;
          }

          ++v9;
          if (v7 == i)
          {
            v6 = v8;
            goto LABEL_19;
          }
        }

        v13 = v12;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v14 = [v11 bundleIdentifier];
        if (v14)
        {
          v15 = v14;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        type metadata accessor for ApplicationInfoInternal();
        [v11 gdprVersionShown];
        dispatch thunk of ApplicationInfoInternal.__allocating_init(applicationId:bundleId:gdprShownVersion:)();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v109;
      }

      while (v7 != i);
    }

LABEL_19:

    v109 = _swiftEmptyArrayStorage;
    v16 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = v88;
    v106 = v6;
    if (v17)
    {
      v18 = 0;
      v3 = v6 & 0xC000000000000001;
      v19 = _swiftEmptyArrayStorage;
LABEL_23:
      v103 = v19;
      v20 = v18;
      while (1)
      {
        if (v3)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *(v16 + 16))
          {
            goto LABEL_74;
          }

          v21 = *(v6 + 8 * v20 + 32);
        }

        v22 = v21;
        v18 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        ApplicationInfoInternal.bundleId.getter();
        TCCContext.checkTCCAccess(to:for:)();

        v23 = TCCContext.TCCAccess.rawValue.getter();
        if (v23 == TCCContext.TCCAccess.rawValue.getter())
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v19 = v109;
          v6 = v106;
          if (v18 != v17)
          {
            goto LABEL_23;
          }

          goto LABEL_37;
        }

        ++v20;
        v6 = v106;
        if (v18 == v17)
        {
          v19 = v103;
          goto LABEL_37;
        }
      }

LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v19 = _swiftEmptyArrayStorage;
LABEL_37:
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000958E4(v24, qword_10051B2C8);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    log = v25;
    v104 = v19;
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_1002FFA0C(0xD00000000000001FLL, 0x800000010046F2D0, &v108);
      *(v27 + 12) = 2080;
      if (v19 >> 62)
      {
        v28 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v28 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v28)
      {
        v93 = v26;
        v96 = v27;
        v109 = _swiftEmptyArrayStorage;
        result = sub_10019F3C0(0, v28 & ~(v28 >> 63), 0);
        if (v28 < 0)
        {
          __break(1u);
          return result;
        }

        v30 = 0;
        v31 = v109;
        v32 = v19 & 0xC000000000000001;
        do
        {
          if (v32)
          {
            v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v33 = *(v19 + 8 * v30 + 32);
          }

          v34 = v33;
          v35 = ApplicationInfoInternal.bundleId.getter();
          v37 = v36;

          v109 = v31;
          v39 = v31[2];
          v38 = v31[3];
          if (v39 >= v38 >> 1)
          {
            sub_10019F3C0((v38 > 1), v39 + 1, 1);
            v31 = v109;
          }

          ++v30;
          v31[2] = v39 + 1;
          v40 = &v31[2 * v39];
          v40[4] = v35;
          v40[5] = v37;
          v19 = v104;
        }

        while (v28 != v30);
        v27 = v96;
        v26 = v93;
      }

      v42 = Array.description.getter();
      v44 = v43;

      v45 = sub_1002FFA0C(v42, v44, &v108);

      *(v27 + 14) = v45;
      _os_log_impl(&_mh_execute_header, log, v26, "%s: TCC Revoked apps %s", v27, 0x16u);
      swift_arrayDestroy();

      v4 = v88;
    }

    else
    {
    }

    v46 = sub_100331A8C(v41);
    v3 = v46;
    if (!(v46 >> 62))
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v102 = v0;
      if (!v47)
      {
        break;
      }

      goto LABEL_56;
    }

    v47 = _CocoaArrayWrapper.endIndex.getter();
    v102 = v0;
    if (!v47)
    {
      break;
    }

LABEL_56:
    v4 = 0;
    v48 = v0[5];
    v97 = v3 & 0xFFFFFFFFFFFFFF8;
    loga = (v3 & 0xC000000000000001);
    v89 = v48;
    v90 = (v48 + 32);
    v91 = (v48 + 48);
    v49 = _swiftEmptyArrayStorage;
    v94 = v47;
    while (1)
    {
      if (loga)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v97 + 16))
        {
          goto LABEL_76;
        }

        v50 = *(v3 + 8 * v4 + 32);
      }

      v51 = v50;
      v52 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v53 = v3;
      v54 = v49;
      v0 = v102;
      v55 = v102[3];
      v56 = v102[4];
      v109 = v50;
      sub_100332260(v19, v55);

      if ((*v91)(v55, 1, v56) == 1)
      {
        sub_100156C78(v102[3]);
        v49 = v54;
        v3 = v53;
      }

      else
      {
        v58 = v102[7];
        v57 = v102[8];
        v59 = v102[4];
        v0 = v90;
        v60 = *v90;
        (*v90)(v57, v102[3], v59);
        v60(v58, v57, v59);
        v49 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_10012FA30(0, v54[2].isa + 1, 1, v54);
        }

        v3 = v53;
        isa = v49[2].isa;
        v61 = v49[3].isa;
        if (isa >= v61 >> 1)
        {
          v49 = sub_10012FA30((v61 > 1), isa + 1, 1, v49);
        }

        v63 = v102[7];
        v64 = v102[4];
        v49[2].isa = (isa + 1);
        v60(v49 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * isa, v63, v64);
        v19 = v104;
      }

      ++v4;
      if (v52 == v94)
      {
        v4 = v88;
        v0 = v102;
        goto LABEL_82;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    ;
  }

  v49 = _swiftEmptyArrayStorage;
LABEL_82:

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *v67 = 136315394;
    *(v67 + 4) = sub_1002FFA0C(0xD00000000000001FLL, 0x800000010046F2D0, &v108);
    *(v67 + 12) = 2080;
    v68 = v49[2].isa;
    if (v68)
    {
      v92 = v66;
      v95 = v67;
      v98 = v65;
      v69 = v0[5];
      v109 = _swiftEmptyArrayStorage;
      sub_10019F3C0(0, v68, 0);
      v70 = v109;
      v71 = *(v69 + 16);
      v69 += 16;
      logb = v49;
      v72 = v49 + ((*(v69 + 64) + 32) & ~*(v69 + 64));
      v105 = *(v69 + 56);
      v107 = v71;
      v73 = (v69 - 8);
      do
      {
        v74 = v102[6];
        v75 = v102[4];
        v107(v74, v72, v75);
        v76 = UUID.uuidString.getter();
        v78 = v77;
        (*v73)(v74, v75);
        v109 = v70;
        v80 = v70[2];
        v79 = v70[3];
        if (v80 >= v79 >> 1)
        {
          sub_10019F3C0((v79 > 1), v80 + 1, 1);
          v70 = v109;
        }

        v70[2] = v80 + 1;
        v81 = &v70[2 * v80];
        v81[4] = v76;
        v81[5] = v78;
        v72 += v105;
        --v68;
      }

      while (v68);
      v65 = v98;
      v49 = logb;
      v67 = v95;
      v66 = v92;
      v0 = v102;
    }

    v82 = Array.description.getter();
    v84 = v83;

    v85 = sub_1002FFA0C(v82, v84, &v108);

    *(v67 + 14) = v85;
    _os_log_impl(&_mh_execute_header, v65, v66, "%s: %s should be MFD since all owner apps have been revoked TCC access", v67, 0x16u);
    swift_arrayDestroy();

    v4 = v88;
  }

  else
  {
  }

  v86 = sub_1000E0348(v49);

  v87 = v0[1];

  return v87(v86);
}

uint64_t sub_10032C1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_10032C288, v5, 0);
}

uint64_t sub_10032C288(uint64_t a1, uint64_t a2)
{
  v26 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = v2[10];
  v4 = v2[6];
  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_10051B2C8);
  sub_1000756F8(v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v2[10];
  if (v8)
  {
    v10 = v2[9];
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v11 = 136315394;
    sub_1000756F8(v9, v10);
    v12 = type metadata accessor for UUID();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v10, 1, v12);
    v15 = v2[9];
    if (v14 == 1)
    {
      sub_100156C78(v2[9]);
      v16 = 0xE500000000000000;
      v17 = 0x6E696D6441;
    }

    else
    {
      v17 = UUID.uuidString.getter();
      v16 = v18;
      (*(v13 + 8))(v15, v12);
    }

    v20 = v2[3];
    v19 = v2[4];
    sub_100156C78(v2[10]);
    v21 = sub_1002FFA0C(v17, v16, &v25);

    *(v11 + 4) = v21;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1002FFA0C(v20, v19, &v25);
    _os_log_impl(&_mh_execute_header, v6, v7, "Session %s: Reconciling Database and SE Content: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100156C78(v9);
  }

  v22 = swift_task_alloc();
  v2[11] = v22;
  *v22 = v2;
  v22[1] = sub_10032C574;
  v23 = v2[5];

  return sub_10032D588(v23);
}

uint64_t sub_10032C574(uint64_t a1)
{
  v3 = *v2;
  v3[12] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[7];

    return _swift_task_switch(sub_10032C6D0, v6, 0);
  }
}

uint64_t sub_10032C6D0()
{
  v1 = v0[8];
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_10032C7B4;
  v4 = v0[12];
  v5 = v0[5];
  v6 = v0[2];

  return sub_10032DD20(v6, v4, v5);
}

uint64_t sub_10032C7B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v6 = *(v4 + 56);
    sub_100156C78(*(v4 + 64));

    return _swift_task_switch(sub_10032C964, v6, 0);
  }

  else
  {
    sub_100156C78(*(v4 + 64));

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_10032C964()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_10032C9E4()
{
  v1 = type metadata accessor for SECCredentialConfig();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v95 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v101 = &v91 - v5;
  __chkstk_darwin(v6);
  v110 = &v91 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v91 - v13;
  __chkstk_darwin(v15);
  v17 = &v91 - v16;
  __chkstk_darwin(v18);
  v20 = (&v91 - v19);
  v21 = 0;
  v23 = sub_100331A8C(v22);
  v102 = v11;
  v103 = v20;
  v108 = v8;
  v93 = v0;
  v107 = v23;
  if (v23 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v110;
  v105 = v1;
  v109 = v14;
  if (v24)
  {
    v112[0] = _swiftEmptyArrayStorage;
    sub_10019F420(0, v24 & ~(v24 >> 63), 0);
    v26 = v108;
    if (v24 < 0)
    {
      __break(1u);
LABEL_56:
      swift_once();
      goto LABEL_35;
    }

    v104 = v2;
    v92 = 0;
    v27 = v112[0];
    v28 = v107;
    v29 = v103;
    if ((v107 & 0xC000000000000001) != 0)
    {
      v30 = 0;
      v106 = (v9 + 32);
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        CredentialInternal.configUUID.getter();
        swift_unknownObjectRelease();
        v112[0] = v27;
        v32 = v27[2];
        v31 = v27[3];
        if (v32 >= v31 >> 1)
        {
          sub_10019F420((v31 > 1), v32 + 1, 1);
          v27 = v112[0];
        }

        ++v30;
        v27[2] = v32 + 1;
        (*(v9 + 32))(v27 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v32, v29, v26);
      }

      while (v24 != v30);
    }

    else
    {
      v106 = (v9 + 32);
      v33 = 32;
      v34 = v102;
      do
      {
        v35 = *(v28 + v33);
        CredentialInternal.configUUID.getter();

        v112[0] = v27;
        v37 = v27[2];
        v36 = v27[3];
        if (v37 >= v36 >> 1)
        {
          sub_10019F420((v36 > 1), v37 + 1, 1);
          v27 = v112[0];
        }

        v27[2] = v37 + 1;
        (*(v9 + 32))(v27 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v37, v34, v26);
        v33 += 8;
        --v24;
        v28 = v107;
      }

      while (v24);
    }

    v21 = v92;
    v2 = v104;
    v1 = v105;
    v25 = v110;
  }

  else
  {

    v27 = _swiftEmptyArrayStorage;
    v26 = v108;
  }

  v38 = sub_100094934();
  if (v21)
  {

    goto LABEL_46;
  }

  v92 = 0;
  v100 = v38[2];
  if (v100)
  {
    v39 = 0;
    v98 = v2 + 16;
    v40 = (v9 + 16);
    v94 = (v2 + 8);
    v99 = (v2 + 32);
    v41 = _swiftEmptyArrayStorage;
    v104 = v2;
    v97 = v38;
    while (v39 < v38[2])
    {
      v107 = v41;
      v45 = v39;
      v103 = ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v102 = *(v2 + 72);
      (*(v2 + 16))(v25, v103 + v38 + v102 * v39, v1);
      v46 = 0;
      v106 = (v45 + 1);
      v47 = v27[2];
      while (v47 != v46)
      {
        if (v46 >= v27[2])
        {
          __break(1u);
          goto LABEL_51;
        }

        (*(v9 + 16))(v17, v27 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v46++, v26);
        v48 = v109;
        SECCredentialConfig.configUUID.getter();
        v49 = static UUID.== infix(_:_:)();
        v50 = *(v9 + 8);
        v51 = v48;
        v26 = v108;
        v50(v51, v108);
        v50(v17, v26);
        if (v49)
        {
          v25 = v110;
          v1 = v105;
          (*v94)(v110, v105);
          v41 = v107;
          goto LABEL_24;
        }
      }

      isa = v99->isa;
      v25 = v110;
      v1 = v105;
      (v99->isa)(v101, v110, v105);
      v41 = v107;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v112[0] = v41;
      v96 = isa;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10019F890(0, *(v41 + 16) + 1, 1);
        v41 = v112[0];
      }

      v43 = *(v41 + 16);
      v42 = *(v41 + 24);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        v107 = v43 + 1;
        sub_10019F890((v42 > 1), v43 + 1, 1);
        v44 = v107;
        v41 = v112[0];
      }

      *(v41 + 16) = v44;
      v96(v103 + v41 + v43 * v102, v101, v1);
LABEL_24:
      v39 = v106;
      v2 = v104;
      v38 = v97;
      if (v106 == v100)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_53:
    swift_once();
LABEL_47:
    v83 = type metadata accessor for Logger();
    sub_1000958E4(v83, qword_10051B2C8);
    swift_errorRetain();
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v112[0] = swift_slowAlloc();
      *v86 = 136315394;
      *(v86 + 4) = sub_1002FFA0C(0xD000000000000023, 0x800000010046F2A0, v112);
      *(v86 + 12) = 2080;
      swift_getErrorValue();
      v87 = Error.localizedDescription.getter();
      v89 = sub_1002FFA0C(v87, v88, v112);

      *(v86 + 14) = v89;
      _os_log_impl(&_mh_execute_header, v84, v85, "%s -- error %s encountered", v86, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return result;
  }

  v41 = _swiftEmptyArrayStorage;
LABEL_34:
  v107 = v41;

  if (qword_1005019D8 != -1)
  {
    goto LABEL_56;
  }

LABEL_35:
  v54 = type metadata accessor for Logger();
  sub_1000958E4(v54, qword_10051B2C8);
  v55 = v107;

  v56 = v55;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.info.getter();

  v59 = os_log_type_enabled(v57, v58);
  v60 = v92;
  if (v59)
  {
    LODWORD(v102) = v58;
    v61 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v112[0] = v100;
    v101 = v61;
    *v61 = 136315138;
    v62 = *(v56 + 16);
    v63 = _swiftEmptyArrayStorage;
    if (v62)
    {
      v99 = v57;
      v111 = _swiftEmptyArrayStorage;
      sub_10019F3C0(0, v62, 0);
      v63 = v111;
      v65 = *(v2 + 16);
      v64 = v2 + 16;
      v110 = v65;
      v66 = v56 + ((*(v64 + 64) + 32) & ~*(v64 + 64));
      v108 = *(v64 + 56);
      v106 = (v9 + 8);
      v103 = (v64 - 8);
      v104 = v64;
      do
      {
        v67 = v95;
        (v110)(v95, v66, v1);
        v68 = v109;
        SECCredentialConfig.configUUID.getter();
        v69 = UUID.uuidString.getter();
        v71 = v70;
        (*v106)(v68, v26);
        (*v103)(v67, v1);
        v111 = v63;
        v73 = v63[2];
        v72 = v63[3];
        if (v73 >= v72 >> 1)
        {
          sub_10019F3C0((v72 > 1), v73 + 1, 1);
          v63 = v111;
        }

        v63[2] = v73 + 1;
        v74 = &v63[2 * v73];
        v74[4] = v69;
        v74[5] = v71;
        v66 += v108;
        --v62;
        v1 = v105;
      }

      while (v62);
      v60 = v92;
      v57 = v99;
    }

    v111 = v63;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v75 = BidirectionalCollection<>.joined(separator:)();
    v77 = v76;

    v78 = sub_1002FFA0C(v75, v77, v112);

    v79 = v101;
    *(v101 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v57, v102, "Deleting credential configs due to absence of instance %s", v79, 0xCu);
    sub_1000752F4(v100);
  }

  v80 = v93;
  v81 = sub_10035E904();
  if (v60)
  {

LABEL_46:
    if (qword_1005019D8 == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_53;
  }

  v40 = v81;
  __chkstk_darwin(v81);
  *(&v91 - 4) = v80;
  *(&v91 - 3) = v82;
  *(&v91 - 2) = v107;
  NSManagedObjectContext.performAndWait<A>(_:)();
LABEL_51:

  return result;
}

uint64_t sub_10032D588(uint64_t a1)
{
  *(v2 + 88) = a1;

  return _swift_task_switch(sub_10032D618, v1, 0);
}

uint64_t sub_10032D618()
{
  v43 = v0;
  v0[8] = 0;
  v1 = v0 + 8;
  v2 = [v0[11] listAppletsAndRefreshCache:1 outError:v0 + 8];
  v3 = v0[8];
  if (!v2)
  {
    v13 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000958E4(v14, qword_10051B2C8);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_34;
    }

    v17 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_1002FFA0C(0xD00000000000002ALL, 0x800000010046F270, &v42);
    *(v17 + 12) = 2080;
    swift_getErrorValue();
    v18 = Error.localizedDescription.getter();
    v20 = sub_1002FFA0C(v18, v19, &v42);

    *(v17 + 14) = v20;
    v21 = "%s: Nearfield error %s encountered when listing applets";
    goto LABEL_33;
  }

  v4 = v2;
  sub_10009393C(0, &qword_100504280, NFApplet_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v3;

  v42 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v40 = v1;
    v41 = v0;
    v8 = 0;
    v0 = &selRef_retrievePeripheralsWithIdentifiers_;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v1 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (![v9 managedBySP] || (v11 = objc_msgSend(v10, "rawGPState"), type metadata accessor for InstanceInfoInternal(), v11 == static InstanceInfoInternal.instanceLifeCycleStateTerminated.getter()))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v8;
      if (v1 == i)
      {
        v12 = v42;
        v1 = v40;
        v0 = v41;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_24:

  if ((v12 & 0x8000000000000000) == 0 && (v12 & 0x4000000000000000) == 0)
  {
    if (*(v12 + 16))
    {
      goto LABEL_27;
    }

LABEL_38:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000958E4(v36, qword_10051B2C8);
    v24 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v24, v37, "There are no SP instances on the SE", v38, 2u);
    }

    v26 = _swiftEmptyArrayStorage;
    goto LABEL_43;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_38;
  }

LABEL_27:
  v22 = v0[11];
  isa = Array._bridgeToObjectiveC()().super.isa;

  v0[8] = 0;
  v24 = [v22 queryExtraInfoForApplets:isa outError:v1];

  v25 = v0[8];
  if (v24)
  {
    sub_10009393C(0, &qword_10050B1C0, NFAppletExtraInfo_ptr);
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v25;
LABEL_43:

    v39 = v0[1];

    return (v39)(v26);
  }

  v28 = v25;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1000958E4(v29, qword_10051B2C8);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_1002FFA0C(0xD00000000000002ALL, 0x800000010046F270, &v42);
    *(v17 + 12) = 2080;
    swift_getErrorValue();
    v30 = Error.localizedDescription.getter();
    v32 = sub_1002FFA0C(v30, v31, &v42);

    *(v17 + 14) = v32;
    v21 = "%s: Nearfield error %s encountered when querying for extra information";
LABEL_33:
    _os_log_impl(&_mh_execute_header, v15, v16, v21, v17, 0x16u);
    swift_arrayDestroy();
  }

LABEL_34:

  sub_10009591C();
  swift_allocError();
  *v33 = 8;
  swift_willThrow();

  v34 = v0[1];

  return v34();
}

uint64_t sub_10032DD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  type metadata accessor for SESNotifyEventPublisher.State();
  v4[16] = swift_task_alloc();
  v5 = type metadata accessor for SESNotifyEventPublisher.Notification();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = type metadata accessor for SESNotifyEventPublisher.Event();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = type metadata accessor for StateInternal();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v4[29] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[30] = v8;
  v4[31] = *(v8 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return _swift_task_switch(sub_10032DFF0, v3, 0);
}

uint64_t sub_10032DFF0()
{
  v216 = v0;
  v2 = v0;
  v3 = v0[13];
  if (v3 >> 62)
  {
    goto LABEL_144;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = 0;
    v7 = v2[31];
    v207 = (v3 & 0xFFFFFFFFFFFFFF8);
    v210 = v3 & 0xC000000000000001;
    v197 = v2[13] + 32;
    v8 = (v7 + 48);
    v193 = v7;
    v201 = (v7 + 32);
    while (1)
    {
      if (v210)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= v207[2])
        {
          goto LABEL_135;
        }

        v9 = *(v197 + 8 * v6);
      }

      v1 = v9;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v2[29];
      v12 = v2[30];
      v13 = [v9 applet];
      sub_10013070C(v11);

      if ((*v8)(v11, 1, v12) == 1)
      {
        sub_100156C78(v2[29]);
      }

      else
      {
        v1 = *v201;
        (*v201)(v2[37], v2[29], v2[30]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10012FA30(0, v5[2] + 1, 1, v5);
        }

        v15 = v5[2];
        v14 = v5[3];
        if (v15 >= v14 >> 1)
        {
          v5 = sub_10012FA30((v14 > 1), v15 + 1, 1, v5);
        }

        v16 = v2[37];
        v17 = v2[30];
        v5[2] = v15 + 1;
        (v1)(v5 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v15, v16, v17);
      }

      ++v6;
      if (v10 == v4)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    v2 = v185;

LABEL_37:

    v36 = v2[1];

    return v36();
  }

LABEL_18:
  v2[38] = v5;
  v18 = *v2[12];
  v214 = _swiftEmptyArrayStorage;
  if (v18 >> 62)
  {
    v169 = v18;
    v170 = _CocoaArrayWrapper.endIndex.getter();
    v18 = v169;
    v19 = v170;
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = _swiftEmptyArrayStorage;
  if (v19)
  {
    v1 = 0;
    v21 = v2;
    v22 = v2[24];
    v207 = (v18 & 0xFFFFFFFFFFFFFF8);
    v211 = v18 & 0xC000000000000001;
    v191 = v18 + 32;
    v23 = (v22 + 88);
    v198 = enum case for StateInternal.installed(_:);
    v194 = (v22 + 8);
    v186 = (v2[31] + 8);
    v202 = v19;
    v188 = (v22 + 88);
    do
    {
      if (v211)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v1 >= v207[2])
        {
          goto LABEL_137;
        }

        v26 = *(v191 + 8 * v1);
      }

      v27 = v26;
      if (__OFADD__(v1++, 1))
      {
        goto LABEL_136;
      }

      v29 = v21[28];
      v30 = v21[23];
      CredentialInternal.state.getter();
      if ((*v23)(v29, v30) == v198)
      {
        (*v194)(v21[28], v21[23]);
        CredentialInternal.identifier.getter();
        v31 = 0;
        v32 = v5[2];
        while (v32 != v31)
        {
          v33 = v31 + 1;
          sub_100278ACC(&qword_100502C18, &protocol conformance descriptor for UUID);
          v34 = dispatch thunk of static Equatable.== infix(_:_:)();
          v31 = v33;
          if (v34)
          {
            (*v186)(v21[36], v21[30]);

            v23 = v188;
            goto LABEL_23;
          }
        }

        (*v186)(v21[36], v21[30]);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v23 = v188;
      }

      else
      {
        v24 = v21[28];
        v25 = v21[23];

        (*v194)(v24, v25);
      }

LABEL_23:
      ;
    }

    while (v1 != v202);
    v20 = v214;
    v2 = v21;
  }

  v2[39] = v20;
  v2[40] = sub_1003313A8(v2[13]);
  v2[41] = v35;
  v39 = v2[21];
  v38 = v2[22];
  v208 = v2[19];
  v212 = v2[20];
  v40 = v2;
  v43 = v2 + 17;
  v42 = v2[17];
  v41 = v43[1];
  v44 = v40[12];
  *(swift_task_alloc() + 16) = v44;

  v46 = sub_100332F48(v45, sub_10033269C);
  v40[42] = v46;
  v40[43] = 0;

  (*(v41 + 104))(v208, enum case for SESNotifyEventPublisher.Notification.secureElementCredentialPresence(_:), v42);
  type metadata accessor for SESNotifyEventPublisher();
  SESNotifyEventPublisher.State.init(rawValue:)();
  SESNotifyEventPublisher.Event.init(notification:state:)();
  dispatch thunk of static SESNotifyEventPublisher.publish(event:)();
  v47 = *(v39 + 8);
  v1 = v39 + 8;
  v47(v38, v212);
  v48 = v46[2];
  if (qword_1005019D0 != -1)
  {
    swift_once();
  }

  v49 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  sub_1000958E4(v49, qword_100504810);
  *(v40 + 368) = v48 != 0;
  swift_beginAccess();
  UserDefaultBacked.wrappedValue.setter();
  swift_endAccess();
  v2 = v40;
  if (!v46[2])
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v145 = type metadata accessor for Logger();
    sub_1000958E4(v145, qword_10051B2C8);
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      *v148 = 0;
      _os_log_impl(&_mh_execute_header, v146, v147, "Credentials found, scheduling background tasks.", v148, 2u);
    }

    v149 = swift_task_alloc();
    v40[44] = v149;
    *v149 = v40;
    v149[1] = sub_10032FC48;

    return sub_100274458();
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v187 = type metadata accessor for Logger();
  sub_1000958E4(v187, qword_10051B2C8);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "No credentials found, not scheduling background tasks.", v52, 2u);
  }

  sub_100273E60(v53, v54);
  sub_10027415C(v55, v56);
  v57 = v40[43];
  v58 = v40[42];
  v60 = *(v58 + 64);
  v3 = v58 + 64;
  v59 = v60;
  v61 = -1;
  v62 = -1 << *(v40[42] + 32);
  if (-v62 < 64)
  {
    v61 = ~(-1 << -v62);
  }

  v63 = v61 & v59;
  v64 = (63 - v62) >> 6;
  v213 = (v40[31] + 8);
  v179 = (v40[24] + 8);
  v177 = v40[42];

  v65 = 0;
  v173 = v64;
  v175 = v3;
  v185 = v40;
LABEL_50:
  v66 = v65;
  v189 = v57;
  if (!v63)
  {
    goto LABEL_52;
  }

  do
  {
    v67 = v66;
LABEL_55:
    v180 = v67;
    v68 = (v67 << 9) | (8 * __clz(__rbit64(v63)));
    v3 = *(*(v177 + 48) + v68);
    v69 = *(*(v177 + 56) + v68);
    v70 = *v2[12];
    if (v70 >> 62)
    {
      v71 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v182 = (v63 - 1) & v63;
    v207 = v3;
    v183 = v69;

    if (v71)
    {
      v1 = 0;
      v199 = v70 & 0xFFFFFFFFFFFFFF8;
      v203 = v70 & 0xC000000000000001;
      v195 = v70;
      while (1)
      {
        if (v203)
        {
          v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v73 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            goto LABEL_139;
          }
        }

        else
        {
          if (v1 >= *(v199 + 16))
          {
            goto LABEL_140;
          }

          v72 = *(v70 + 8 * v1 + 32);
          v73 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            v4 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_3;
          }
        }

        v74 = v185[34];
        v2 = v185[35];
        v75 = v185[30];
        v76 = v72;
        CredentialInternal.identifier.getter();
        CredentialInternal.identifier.getter();
        v3 = static UUID.== infix(_:_:)();
        v77 = *v213;
        (*v213)(v74, v75);
        v77(v2, v75);
        if (v3)
        {
          break;
        }

        ++v1;
        v70 = v195;
        if (v73 == v71)
        {
          goto LABEL_68;
        }
      }

      v1 = v76;
      v88 = sub_1000BCE28(v183);
      if (v189)
      {
        goto LABEL_138;
      }

      v89 = v88;

      v2 = v185;
      if (v89)
      {
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        sub_1000958E4(v187, qword_10051B2C8);
        v98 = v76;
        v99 = Logger.logObject.getter();
        v100 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v99, v100))
        {
          v101 = v185[35];
          v205 = v185[30];
          v102 = swift_slowAlloc();
          v214 = swift_slowAlloc();
          *v102 = 136315394;
          *(v102 + 4) = sub_1002FFA0C(0xD00000000000003ALL, 0x800000010046F190, &v214);
          *(v102 + 12) = 2080;
          CredentialInternal.identifier.getter();
          v103 = UUID.uuidString.getter();
          v105 = v104;
          v106 = v101;
          v2 = v185;
          v77(v106, v205);
          v107 = sub_1002FFA0C(v103, v105, &v214);

          *(v102 + 14) = v107;
          _os_log_impl(&_mh_execute_header, v99, v100, "%s: Credential %s state updated", v102, 0x16u);
          swift_arrayDestroy();
        }

        CredentialInternal.identifier.getter();
        CredentialInternal.state.getter();
        v108 = sub_10035E904();
        v206 = v98;
        v109 = v2;
        v110 = v2[33];
        v111 = v2[27];
        v112 = v2[15];
        v113 = swift_task_alloc();
        v113[2] = v108;
        v113[3] = v112;
        v113[4] = v110;
        v113[5] = v111;
        NSManagedObjectContext.performAndWait<A>(_:)();
        v1 = v2[33];
        v114 = v2[30];
        v115 = v2[27];
        v116 = v109[23];

        (*v179)(v115, v116);
        v77(v1, v114);
        v117 = v206;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v2 = v109;
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v57 = 0;
      }

      else
      {
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        sub_1000958E4(v187, qword_10051B2C8);
        v90 = v76;
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = v185[35];
          v204 = v185[30];
          v1 = swift_slowAlloc();
          v214 = swift_slowAlloc();
          *v1 = 136315394;
          *(v1 + 4) = sub_1002FFA0C(0xD00000000000003ALL, 0x800000010046F190, &v214);
          *(v1 + 12) = 2080;
          CredentialInternal.identifier.getter();
          v94 = UUID.uuidString.getter();
          v96 = v95;
          v77(v93, v204);
          v97 = sub_1002FFA0C(v94, v96, &v214);

          *(v1 + 14) = v97;
          _os_log_impl(&_mh_execute_header, v91, v92, "%s: No state update to credential %s", v1, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v57 = 0;
      }

      v64 = v173;
      v3 = v175;
      v65 = v180;
      v63 = v182;
      goto LABEL_50;
    }

LABEL_68:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    sub_1000958E4(v187, qword_10051B2C8);
    v78 = v207;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.fault.getter();

    v2 = v185;
    if (os_log_type_enabled(v79, v80))
    {
      v81 = v185[35];
      v82 = v185[30];
      v1 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v214 = v83;
      *v1 = 136315138;
      CredentialInternal.identifier.getter();
      sub_100278ACC(&qword_100504C70, &protocol conformance descriptor for UUID);
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v85;
      (*v213)(v81, v82);
      v87 = sub_1002FFA0C(v84, v86, &v214);

      *(v1 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v79, v80, "Credential %s does not exist during reconciliation", v1, 0xCu);
      sub_1000752F4(v83);
      v2 = v185;
    }

    else
    {
    }

    v66 = v180;
    v63 = v182;
    v64 = v173;
    v3 = v175;
    v57 = v189;
  }

  while (v182);
  while (1)
  {
LABEL_52:
    v67 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      goto LABEL_141;
    }

    if (v67 >= v64)
    {
      break;
    }

    v63 = *(v3 + 8 * v67);
    ++v66;
    if (v63)
    {
      goto LABEL_55;
    }
  }

  v3 = v2[39];

  v209 = v2[39];
  if ((v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    v118 = _CocoaArrayWrapper.endIndex.getter();
    v209 = v2[39];
    if (!v118)
    {
      goto LABEL_124;
    }

LABEL_95:
    v119 = 0;
    v200 = v3 & 0xC000000000000001;
    v196 = (v2[24] + 88);
    v184 = enum case for StateInternal.installed(_:);
    v181 = enum case for StateInternal.locked(_:);
    v176 = enum case for StateInternal.installationPending(_:);
    v174 = enum case for StateInternal.installationFailed(_:);
    v172 = enum case for StateInternal.terminated(_:);
    v178 = v118;
    while (1)
    {
      v122 = v2;
      if (v200)
      {
        v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v119 >= *(v209 + 16))
        {
          goto LABEL_143;
        }

        v123 = *(v209 + 32 + 8 * v119);
      }

      v124 = v123;
      v2 = (v119 + 1);
      if (__OFADD__(v119, 1))
      {
        goto LABEL_142;
      }

      v1 = v122[26];
      v125 = v122[23];
      v3 = v123;
      CredentialInternal.state.getter();
      v126 = (*v196)(v1, v125);
      if (v126 == v184)
      {
        (*v179)(v122[26], v122[23]);
      }

      else
      {
        if (v126 == v181)
        {
          v3 = v122[26];
          v120 = v122[23];

          (*v179)(v3, v120);
          goto LABEL_97;
        }

        if (v126 == v176)
        {

          goto LABEL_97;
        }

        if (v126 != v174 && v126 != v172)
        {
          v165 = v122[25];
          v166 = v122[23];
          v214 = 0;
          v215 = 0xE000000000000000;
          _StringGuts.grow(_:)(33);
          v167 = v215;
          v122[8] = v214;
          v122[9] = v167;
          v168._countAndFlagsBits = 0xD00000000000001FLL;
          v168._object = 0x800000010046F210;
          String.append(_:)(v168);
          CredentialInternal.state.getter();
          _print_unlocked<A, B>(_:_:)();
          (*v179)(v165, v166);
          return _assertionFailure(_:_:file:line:flags:)();
        }
      }

      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      sub_1000958E4(v187, qword_10051B2C8);
      v127 = v124;
      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v128, v129))
      {
        v130 = v122[35];
        v190 = v57;
        v131 = v122[30];
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v214 = v133;
        *v132 = 136315138;
        v192 = v129;
        CredentialInternal.identifier.getter();
        sub_100278ACC(&qword_100504C70, &protocol conformance descriptor for UUID);
        v134 = dispatch thunk of CustomStringConvertible.description.getter();
        v136 = v135;
        v137 = v131;
        v57 = v190;
        (*v213)(v130, v137);
        v138 = sub_1002FFA0C(v134, v136, &v214);

        *(v132 + 4) = v138;
        _os_log_impl(&_mh_execute_header, v128, v192, "Bad Credential %s will be deleted", v132, 0xCu);
        sub_1000752F4(v133);

        v118 = v178;
      }

      CredentialInternal.identifier.getter();
      v139 = sub_10035E904();
      v1 = v127;
      v2 = v122;
      if (v57)
      {

        (*v213)(v122[32], v122[30]);

        goto LABEL_37;
      }

      v3 = v139;
      v140 = v122[32];
      v141 = v2[15];
      v142 = swift_task_alloc();
      v142[2] = v3;
      v142[3] = v141;
      v142[4] = v140;
      NSManagedObjectContext.performAndWait<A>(_:)();
      v143 = v2[32];
      v144 = v2[30];

      (*v213)(v143, v144);

      v57 = 0;
      v122 = v2;
      v2 = (v119 + 1);
LABEL_97:
      ++v119;
      v121 = v2 == v118;
      v2 = v122;
      if (v121)
      {
        goto LABEL_124;
      }
    }
  }

  v118 = *(v209 + 16);
  if (v118)
  {
    goto LABEL_95;
  }

LABEL_124:
  v150 = v2[41];

  if (v150 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_149;
    }

LABEL_126:
    v151 = v2[14];
    sub_10009393C(0, &qword_100504280, NFApplet_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v2[10] = 0;
    LODWORD(v151) = [v151 deleteApplets:isa queueServerConnection:1 outError:v2 + 10];

    v153 = v2[10];
    if (v151)
    {
      v154 = v153;
      goto LABEL_150;
    }

    v155 = v153;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    sub_1000958E4(v187, qword_10051B2C8);
    swift_errorRetain();
    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v214 = v159;
      *v158 = 136315138;
      swift_getErrorValue();
      v160 = Error.localizedDescription.getter();
      v162 = v2;
      v163 = sub_1002FFA0C(v160, v161, &v214);

      *(v158 + 4) = v163;
      v2 = v162;
      _os_log_impl(&_mh_execute_header, v156, v157, "reconcileCredentialsWithSEInfo: Nearfield error %s encountered when deleting bad SP applets", v158, 0xCu);
      sub_1000752F4(v159);
    }

    sub_10009591C();
    swift_allocError();
    *v164 = 8;
    swift_willThrow();

    goto LABEL_37;
  }

  if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_126;
  }

LABEL_149:

LABEL_150:

  v171 = v2[1];

  return v171(_swiftEmptyArrayStorage);
}

uint64_t sub_10032FC48()
{
  v1 = *v0;
  v4 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 360) = v2;
  *v2 = v4;
  v2[1] = sub_10032FDB0;

  return sub_100274968();
}

uint64_t sub_10032FDB0()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_10032FEEC, v1, 0);
}

uint64_t sub_10032FEEC()
{
  v147 = v0;
  v2 = v0[43];
  v3 = v0[42];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(v0[42] + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = ((63 - v8) >> 6);
  v143 = (v0[31] + 8);
  v127 = v0[42];
  v129 = (v0[24] + 8);

  v11 = 0;
  v144 = v0;
  v123 = v10;
  v125 = v5;
LABEL_4:
  v12 = v11;
  v135 = v2;
  if (!v9)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v13 = v12;
LABEL_9:
    v14 = v0[12];
    v130 = v13;
    v15 = (v13 << 9) | (8 * __clz(__rbit64(v9)));
    v16 = *(*(v127 + 48) + v15);
    v0 = *(*(v127 + 56) + v15);
    v17 = *v14;
    v1 = *v14 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v131 = (v9 - 1) & v9;
    v142 = v16;
    v133 = v0;

    if (v1)
    {
      break;
    }

LABEL_22:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000958E4(v25, qword_10051B2C8);
    v26 = v142;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();

    v0 = v144;
    if (os_log_type_enabled(v27, v28))
    {
      v1 = v144[35];
      v29 = v144[30];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v145 = v31;
      *v30 = 136315138;
      CredentialInternal.identifier.getter();
      sub_100278ACC(&qword_100504C70, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*v143)(v1, v29);
      v35 = sub_1002FFA0C(v32, v34, &v145);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Credential %s does not exist during reconciliation", v30, 0xCu);
      sub_1000752F4(v31);

      v0 = v144;
    }

    else
    {
    }

    v12 = v130;
    v9 = v131;
    v10 = v123;
    v5 = v125;
    v2 = v135;
    if (!v131)
    {
      while (1)
      {
LABEL_6:
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_87;
        }

        if (v13 >= v10)
        {
          break;
        }

        v9 = *(v5 + 8 * v13);
        ++v12;
        if (v9)
        {
          goto LABEL_9;
        }
      }

      v70 = v0[39];

      v142 = v0[39];
      if ((v70 & 0x8000000000000000) == 0 && (v70 & 0x4000000000000000) == 0)
      {
        v140 = v142[2];
        if (v140)
        {
          goto LABEL_49;
        }

LABEL_71:
        v97 = v0[41];

        if (v97 >> 62)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_93;
          }

LABEL_73:
          v98 = v0[14];
          sub_10009393C(0, &qword_100504280, NFApplet_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          v0[10] = 0;
          LODWORD(v98) = [v98 deleteApplets:isa queueServerConnection:1 outError:v0 + 10];

          v100 = v0[10];
          if (!v98)
          {
            v102 = v100;

            _convertNSErrorToError(_:)();

            swift_willThrow();
            if (qword_1005019D8 != -1)
            {
              swift_once();
            }

            v103 = type metadata accessor for Logger();
            sub_1000958E4(v103, qword_10051B2C8);
            swift_errorRetain();
            v104 = Logger.logObject.getter();
            v105 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v104, v105))
            {
              v106 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              v145 = v107;
              *v106 = 136315138;
              swift_getErrorValue();
              v108 = Error.localizedDescription.getter();
              v110 = sub_1002FFA0C(v108, v109, &v145);

              *(v106 + 4) = v110;
              _os_log_impl(&_mh_execute_header, v104, v105, "reconcileCredentialsWithSEInfo: Nearfield error %s encountered when deleting bad SP applets", v106, 0xCu);
              sub_1000752F4(v107);
            }

            sub_10009591C();
            swift_allocError();
            *v111 = 8;
            swift_willThrow();

            goto LABEL_81;
          }

          v101 = v100;
        }

        else
        {
          if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

LABEL_93:
        }

        v121 = v144[1];

        return v121(_swiftEmptyArrayStorage);
      }

      v140 = _CocoaArrayWrapper.endIndex.getter();
      v142 = v0[39];
      if (!v140)
      {
        goto LABEL_71;
      }

LABEL_49:
      v71 = 0;
      v138 = v70 & 0xC000000000000001;
      v134 = (v0[24] + 88);
      v132 = enum case for StateInternal.installed(_:);
      v128 = enum case for StateInternal.locked(_:);
      v126 = enum case for StateInternal.installationPending(_:);
      v124 = enum case for StateInternal.installationFailed(_:);
      v122 = enum case for StateInternal.terminated(_:);
      while (2)
      {
        if (v138)
        {
          v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v71 >= v142[2])
          {
            goto LABEL_89;
          }

          v74 = v142[v71 + 4];
        }

        v10 = v74;
        v1 = (v71 + 1);
        if (__OFADD__(v71, 1))
        {
          goto LABEL_88;
        }

        v75 = v0[26];
        v76 = v0[23];
        CredentialInternal.state.getter();
        v77 = (*v134)(v75, v76);
        if (v77 == v132)
        {
          (*v129)(v0[26], v0[23]);
          goto LABEL_58;
        }

        if (v77 == v128)
        {
          v72 = v0[26];
          v73 = v0[23];

          (*v129)(v72, v73);
        }

        else if (v77 == v126)
        {
        }

        else
        {
          if (v77 != v124 && v77 != v122)
          {
            v113 = v0[25];
            v114 = v0[23];
            v145 = 0;
            v146 = 0xE000000000000000;
            _StringGuts.grow(_:)(33);
            v115 = v146;
            v0[8] = v145;
            v0[9] = v115;
            v116._countAndFlagsBits = 0xD00000000000001FLL;
            v116._object = 0x800000010046F210;
            String.append(_:)(v116);
            CredentialInternal.state.getter();
            _print_unlocked<A, B>(_:_:)();
            (*v129)(v113, v114);
            return _assertionFailure(_:_:file:line:flags:)();
          }

LABEL_58:
          if (qword_1005019D8 != -1)
          {
            swift_once();
          }

          v78 = type metadata accessor for Logger();
          sub_1000958E4(v78, qword_10051B2C8);
          v79 = v10;
          v80 = Logger.logObject.getter();
          v81 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v80, v81))
          {
            v82 = v144[35];
            v136 = v2;
            v83 = v144[30];
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v145 = v85;
            *v84 = 136315138;
            CredentialInternal.identifier.getter();
            sub_100278ACC(&qword_100504C70, &protocol conformance descriptor for UUID);
            v86 = dispatch thunk of CustomStringConvertible.description.getter();
            v88 = v87;
            v89 = v83;
            v2 = v136;
            (*v143)(v82, v89);
            v90 = sub_1002FFA0C(v86, v88, &v145);

            *(v84 + 4) = v90;
            _os_log_impl(&_mh_execute_header, v80, v81, "Bad Credential %s will be deleted", v84, 0xCu);
            sub_1000752F4(v85);
            v0 = v144;
          }

          v1 = (v71 + 1);
          CredentialInternal.identifier.getter();
          v91 = sub_10035E904();
          if (v2)
          {

            (*v143)(v0[32], v0[30]);

            goto LABEL_81;
          }

          v92 = v91;
          v93 = v0[32];
          v94 = v0[15];
          v95 = swift_task_alloc();
          v95[2] = v92;
          v95[3] = v94;
          v95[4] = v93;
          NSManagedObjectContext.performAndWait<A>(_:)();
          v10 = v0[32];
          v96 = v0[30];

          (*v143)(v10, v96);

          v2 = 0;
        }

        ++v71;
        if (v1 == v140)
        {
          goto LABEL_71;
        }

        continue;
      }
    }
  }

  v18 = 0;
  v139 = v17 & 0xFFFFFFFFFFFFFF8;
  v141 = v17 & 0xC000000000000001;
  v137 = v17;
  while (v141)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v0 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      goto LABEL_85;
    }

LABEL_16:
    v20 = v144[34];
    v21 = v144[35];
    v10 = v144[30];
    v22 = v19;
    CredentialInternal.identifier.getter();
    CredentialInternal.identifier.getter();
    v23 = static UUID.== infix(_:_:)();
    v24 = *v143;
    (*v143)(v20, v10);
    v24(v21, v10);
    if (v23)
    {
      v36 = sub_1000BCE28(v133);
      if (v135)
      {

        goto LABEL_81;
      }

      v37 = v36;

      v0 = v144;
      if (v37)
      {
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        sub_1000958E4(v49, qword_10051B2C8);
        v50 = v22;
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = v144[35];
          v54 = v144[30];
          v55 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          *v55 = 136315394;
          *(v55 + 4) = sub_1002FFA0C(0xD00000000000003ALL, 0x800000010046F190, &v145);
          *(v55 + 12) = 2080;
          CredentialInternal.identifier.getter();
          v56 = UUID.uuidString.getter();
          v58 = v57;
          v24(v53, v54);
          v59 = sub_1002FFA0C(v56, v58, &v145);

          *(v55 + 14) = v59;
          _os_log_impl(&_mh_execute_header, v51, v52, "%s: Credential %s state updated", v55, 0x16u);
          swift_arrayDestroy();

          v0 = v144;
        }

        CredentialInternal.identifier.getter();
        CredentialInternal.state.getter();
        v60 = sub_10035E904();
        v61 = v0[33];
        v62 = v0;
        v63 = v0[27];
        v64 = v62[15];
        v65 = swift_task_alloc();
        v65[2] = v60;
        v65[3] = v64;
        v65[4] = v61;
        v65[5] = v63;
        NSManagedObjectContext.performAndWait<A>(_:)();
        v66 = v62[33];
        v67 = v62[30];
        v68 = v62[27];
        v1 = v62[23];

        (*v129)(v68, v1);
        v24(v66, v67);
        v69 = v50;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v2 = 0;
        v0 = v144;
      }

      else
      {
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_1000958E4(v38, qword_10051B2C8);
        v39 = v22;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = v144[35];
          v43 = v144[30];
          v44 = swift_slowAlloc();
          v1 = swift_slowAlloc();
          v145 = v1;
          *v44 = 136315394;
          *(v44 + 4) = sub_1002FFA0C(0xD00000000000003ALL, 0x800000010046F190, &v145);
          *(v44 + 12) = 2080;
          CredentialInternal.identifier.getter();
          v45 = UUID.uuidString.getter();
          v47 = v46;
          v24(v42, v43);
          v48 = sub_1002FFA0C(v45, v47, &v145);

          *(v44 + 14) = v48;
          _os_log_impl(&_mh_execute_header, v40, v41, "%s: No state update to credential %s", v44, 0x16u);
          swift_arrayDestroy();

          v0 = v144;
        }

        else
        {
        }

        v2 = 0;
      }

      v10 = v123;
      v5 = v125;
      v11 = v130;
      v9 = v131;
      goto LABEL_4;
    }

    ++v18;
    v17 = v137;
    if (v0 == v1)
    {
      goto LABEL_22;
    }
  }

  if (v18 >= *(v139 + 16))
  {
    goto LABEL_86;
  }

  v19 = *(v17 + 8 * v18 + 32);
  v0 = (v18 + 1);
  if (!__OFADD__(v18, 1))
  {
    goto LABEL_16;
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  v118 = v0;

  v119 = v0[33];
  v120 = v0[30];
  (*v129)(v118[27], v118[23]);
  (v1)(v119, v120);

LABEL_81:

  v112 = v144[1];

  return v112();
}

void *sub_1003313A8(unint64_t a1)
{
  v3 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v3 - 8);
  v5 = &v55 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100331A8C(v10);
  v13 = v1;
  if (!v1)
  {
    v61 = result;
    v74 = _swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      goto LABEL_38;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v15 = 0;
      v63 = 0;
      v68 = (v7 + 48);
      v69 = a1 & 0xC000000000000001;
      v60 = (v7 + 32);
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      v59 = (v7 + 8);
      v66 = _swiftEmptyDictionarySingleton;
      v56 = "Unknown default state internal ";
      *&v12 = 136315394;
      v55 = v12;
      v64 = v9;
      v65 = _swiftEmptyArrayStorage;
      v57 = v6;
      v67 = i;
      while (v69)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_35;
        }

LABEL_15:
        v72 = v15;
        v70 = v17;
        v19 = [v17 applet];
        sub_10013070C(v5);
        v20 = (*v68)(v5, 1, v6);
        v71 = v18;
        if (v20 == 1)
        {
          sub_100156C78(v5);
LABEL_23:
          if (qword_1005019D8 != -1)
          {
            swift_once();
          }

          v33 = type metadata accessor for Logger();
          sub_1000958E4(v33, qword_10051B2C8);
          v34 = v19;
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v62 = v36;
            v38 = v37;
            v65 = swift_slowAlloc();
            v73[0] = v65;
            *v38 = v55;
            *(v38 + 4) = sub_1002FFA0C(0xD00000000000001ELL, v56 | 0x8000000000000000, v73);
            *(v38 + 12) = 2080;
            v39 = [v34 identifier];
            v40 = v34;
            v41 = v5;
            v42 = a1;
            v43 = v39;
            v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v45 = v13;
            v47 = v46;

            a1 = v42;
            v5 = v41;
            v34 = v40;
            v48 = sub_1002FFA0C(v44, v47, v73);
            v13 = v45;
            v9 = v64;

            *(v38 + 14) = v48;
            v6 = v57;
            _os_log_impl(&_mh_execute_header, v35, v62, "%s: Found orphaned applet with instanceAID %s", v38, 0x16u);
            swift_arrayDestroy();
          }

          v16 = v67;
          v7 = v34;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v65 = v74;
          goto LABEL_8;
        }

        v21 = (*v60)(v9, v5, v6);
        __chkstk_darwin(v21);
        *(&v55 - 2) = v9;
        v22 = sub_10011F6D0(sub_1003330C8, (&v55 - 2), v61);
        if (!v22)
        {
          (*v59)(v9, v6);
          goto LABEL_23;
        }

        v7 = v22;
        sub_1000B2A4C(v63, 0);
        v23 = v66;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73[0] = v23;
        v25 = sub_10008CDE0(v7);
        v27 = v23[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          goto LABEL_37;
        }

        v31 = v26;
        if (v23[3] >= v30)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v54 = v25;
            sub_100313318();
            v25 = v54;
            v6 = v57;
          }
        }

        else
        {
          sub_10030E318(v30, isUniquelyReferenced_nonNull_native);
          type metadata accessor for CredentialInternal();
          v25 = sub_10008CDE0(v7);
          if ((v31 & 1) != (v32 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }
        }

        v49 = v73[0];
        v16 = v67;
        v66 = v73[0];
        if ((v31 & 1) == 0)
        {
          v50 = v25;
          sub_100317A88(v25, v7, _swiftEmptyArrayStorage, v73[0]);
          v51 = v7;
          v49 = v66;
          v25 = v50;
        }

        v52 = (v49[7] + 8 * v25);
        v53 = v70;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v6 = v57;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v9 = v64;
        (*v59)(v64, v6);
        v63 = sub_10033205C;
LABEL_8:
        v15 = v72 + 1;
        if (v71 == v16)
        {

          sub_1000B2A4C(v63, 0);
          return v66;
        }
      }

      if (v15 >= *(v58 + 16))
      {
        goto LABEL_36;
      }

      v17 = *(a1 + 8 * v15 + 32);
      v18 = v15 + 1;
      if (!__OFADD__(v15, 1))
      {
        goto LABEL_15;
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      ;
    }

    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100331A8C(uint64_t a1)
{
  v2 = sub_10035E904();
  if (!v1)
  {
    v3 = v2;
    v4 = objc_allocWithZone(NSFetchRequest);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithEntityName:v5];

    v17 = NSManagedObjectContext.fetch(_:)();
    v8 = _swiftEmptyArrayStorage;
    v35 = _swiftEmptyArrayStorage;
    v18 = *(v17 + 16);
    if (!v18)
    {
      goto LABEL_26;
    }

    v19 = 0;
    v20 = v17 + 32;
    v21 = &type metadata for Any;
    while (1)
    {
      v31 = v8;
      v22 = v20 + 32 * v19;
      v23 = v19;
      while (1)
      {
        if (v23 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        sub_1000754F0(v22, v34);
        sub_1000754F0(v34, v33);
        type metadata accessor for SecureElementCredentialEntity();
        if (!swift_dynamicCast())
        {
          if (qword_1005019D8 != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          sub_1000958E4(v25, qword_10051B2C8);
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = v21;
            v30 = swift_slowAlloc();
            v33[0] = v30;
            *v28 = 136315138;
            *(v28 + 4) = sub_1002FFA0C(0xD000000000000013, 0x800000010046F250, v33);
            _os_log_impl(&_mh_execute_header, v26, v27, "%s: Unable to cast entity from database as credential entity", v28, 0xCu);
            sub_1000752F4(v30);
            v21 = v29;
          }

          sub_1000752F4(v34);
          goto LABEL_12;
        }

        type metadata accessor for CredentialInternal();
        v24 = sub_1000BF55C(v32);
        sub_1000752F4(v34);
        if (v24)
        {
          break;
        }

LABEL_12:
        ++v23;
        v22 += 32;
        if (v18 == v23)
        {
          v8 = v31;
          goto LABEL_26;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v19 = v23 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v35;
      v20 = v17 + 32;
      if (v18 - 1 == v23)
      {
LABEL_26:

        return v8;
      }
    }
  }

  if (qword_1005019D8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_1000958E4(v7, qword_10051B2C8);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_1002FFA0C(0xD000000000000013, 0x800000010046F250, v34);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v8 = v13;
    v14 = sub_1002FFA0C(v12, v13, v34);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: CoreData error %s encountered while fetching entity", v11, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009591C();
  swift_allocError();
  *v15 = 0;
  swift_willThrow();

  return v8;
}

uint64_t sub_100331F6C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  CredentialInternal.identifier.getter();
  v6 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

BOOL sub_10033206C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  v11 = *a3;
  if (v11 >> 62)
  {
LABEL_15:
    v21 = v11 & 0xFFFFFFFFFFFFFF8;
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = v11 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = (v5 + 8);

  v14 = 0;
  do
  {
    v15 = v14;
    if (v12 == v14)
    {
      break;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *(v21 + 16))
      {
        goto LABEL_14;
      }

      v16 = *(v11 + 8 * v14 + 32);
    }

    v17 = v16;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    CredentialInternal.identifier.getter();
    CredentialInternal.identifier.getter();
    v5 = static UUID.== infix(_:_:)();

    v18 = *v13;
    (*v13)(v7, v4);
    v18(v10, v4);
    v14 = v15 + 1;
  }

  while ((v5 & 1) == 0);

  return v12 != v15;
}

uint64_t sub_100332260@<X0>(unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = CredentialInternal.ownerApplications.getter();
  v38 = _swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v31 = a3;
  if (!v5)
  {
LABEL_33:
    v15 = _swiftEmptyArrayStorage;

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_34;
  }

  while (1)
  {
    a3 = 0;
    v34 = v4 & 0xFFFFFFFFFFFFFF8;
    v35 = v4 & 0xC000000000000001;
    v33 = v4 + 32;
    v32 = v5;
LABEL_6:
    if (v35)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (a3 >= *(v34 + 16))
      {
        goto LABEL_31;
      }

      v4 = *(v33 + 8 * a3);
    }

    v6 = v4;
    if (!__OFADD__(a3++, 1))
    {
      break;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v16 = v4;
    v5 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v16;
    v31 = a3;
    if (!v5)
    {
      goto LABEL_33;
    }
  }

  v36 = a3;
  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v4;
  }

  else
  {
    a3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    if (a3 == v8)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = specialized ContiguousArray._endMutation()();
      goto LABEL_5;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v4 = *(a2 + 8 * v8 + 32);
    }

    v10 = v4;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v11 = ApplicationInfoInternal.bundleId.getter();
    v13 = v12;
    if (v11 == ApplicationInfoInternal.bundleId.getter() && v13 == v14)
    {

      goto LABEL_5;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v8;
  }

  while ((v9 & 1) == 0);

LABEL_5:
  a3 = v36;
  if (v36 != v32)
  {
    goto LABEL_6;
  }

  v15 = v38;

  if ((v38 & 0x8000000000000000) != 0)
  {
LABEL_49:
    while (1)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
      if (!v17)
      {
        goto LABEL_44;
      }

LABEL_36:
      v18 = objc_opt_self();
      v19 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *(v15 + 16))
          {
            goto LABEL_48;
          }

          v20 = *(v15 + 8 * v19 + 32);
        }

        v21 = v20;
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        ApplicationInfoInternal.bundleId.getter();
        v23 = String._bridgeToObjectiveC()();

        v38 = 0;
        v24 = [v18 bundleRecordWithBundleIdentifier:v23 allowPlaceholder:0 error:&v38];

        if (v24)
        {
          v28 = v38;

          v27 = 1;
          v26 = v31;
          goto LABEL_46;
        }

        v25 = v38;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        ++v19;
        if (v22 == v17)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
    }
  }

LABEL_34:
  if ((v15 & 0x4000000000000000) != 0)
  {
    goto LABEL_49;
  }

  v17 = *(v15 + 16);
  if (v17)
  {
    goto LABEL_36;
  }

LABEL_44:

  v26 = v31;
  CredentialInternal.identifier.getter();
  v27 = 0;
LABEL_46:
  v29 = type metadata accessor for UUID();
  return (*(*(v29 - 8) + 56))(v26, v27, 1, v29);
}

unint64_t *sub_1003326A4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_100332DE0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100332734(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100068FC4(&unk_100504000, &unk_10040B350);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1000754F0(v17 + 32 * v16, v33);
    sub_100075D50(v33, v32);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_100075D50(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100332984(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100068FC4(&qword_10050AAC0, &qword_100415220);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = *(v9 + 40);
    v20 = v17;

    result = NSObject._rawHashValue(seed:)(v19);
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v20;
    *(*(v9 + 56) + 8 * v24) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100332BA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100068FC4(&qword_10050B1C8, &qword_100416370);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    v33 = v21;
    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *sub_100332DE0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t))
{
  v19 = result;
  v20 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    v15 = *(*(a3 + 48) + 8 * v13);

    v16 = a4(v15, v14);

    if (v16)
    {
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        return sub_100332984(v19, a2, v20, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_100332984(v19, a2, v20, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100332F48(uint64_t a1, uint64_t (*a2)(id, uint64_t))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_100332DE0(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1003326A4(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1003330E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentmentInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033314C(uint64_t a1)
{
  v2 = type metadata accessor for PresentmentInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003331A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentmentInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10033325C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(v3 + 20);

    _os_log_impl(&_mh_execute_header, v5, v6, "Stopping timer for pid %d", v7, 8u);

    v8 = *(v3 + 24);
    if (v8)
    {
LABEL_5:
      [v8 invalidate];
      v9 = *(v3 + 24);
      goto LABEL_8;
    }
  }

  else
  {

    v8 = *(v3 + 24);
    if (v8)
    {
      goto LABEL_5;
    }
  }

  v9 = 0;
LABEL_8:
  *(v3 + 24) = 0;

  v10 = *(v3 + 32);
  if (v10)
  {
    sub_1003AE754(v10);
    v10 = *(v3 + 32);
  }

  *(v3 + 32) = 0;
}

double sub_1003333B8(void *a1, uint64_t a2)
{
  if (!*(v2 + 16))
  {
    v3 = v2;
    if (*(v2 + 32) || *(v2 + 24))
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1000958E4(v4, qword_10051B2C8);

      oslog = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 67109120;
        *(v6 + 4) = *(v3 + 20);

        _os_log_impl(&_mh_execute_header, oslog, v5, "Existing background timer / assertion for pid %d found, do not start a new one", v6, 8u);
      }

      else
      {
      }
    }

    else
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000958E4(v8, qword_10051B2C8);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 67109120;
        *(v11 + 4) = *(v3 + 20);

        _os_log_impl(&_mh_execute_header, v9, v10, "Client pid %d WM transceive, starting timer for 15s and acquiring RBSAssertion", v11, 8u);
      }

      else
      {
      }

      v12 = [objc_opt_self() targetWithPid:*(v3 + 20)];
      _StringGuts.grow(_:)(30);

      aBlock = 0x20746E65696C43;
      v40 = 0xE700000000000000;
      v45 = *(v3 + 20);
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 0xD000000000000015;
      v14._object = 0x800000010046F350;
      String.append(_:)(v14);
      sub_100068FC4(&qword_100504060, &qword_10040B370);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100409E40;
      v16 = v12;
      v17 = String._bridgeToObjectiveC()();
      v18 = String._bridgeToObjectiveC()();
      v19 = [objc_opt_self() attributeWithDomain:v17 name:v18];

      *(v15 + 32) = v19;
      v20 = objc_allocWithZone(RBSAssertion);
      v21 = String._bridgeToObjectiveC()();

      sub_10009393C(0, &qword_100504750, RBSAttribute_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = [v20 initWithExplanation:v21 target:v16 attributes:isa];

      v43 = sub_1003348D4;
      v44 = v3;
      aBlock = _NSConcreteStackBlock;
      v40 = 1107296256;
      v41 = sub_10033432C;
      v42 = &unk_1004D0EE8;
      v24 = _Block_copy(&aBlock);

      [v23 acquireWithInvalidationHandler:v24];
      _Block_release(v24);
      v25 = *(v3 + 24);
      *(v3 + 24) = v23;
      v26 = v23;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 67109120;
        *(v29 + 4) = *(v3 + 20);

        _os_log_impl(&_mh_execute_header, v27, v28, "Setting new background timer for client pid %d", v29, 8u);
      }

      else
      {
      }

      v30 = swift_allocObject();
      swift_weakInit();
      v31 = objc_allocWithZone(SESTimer);
      v43 = sub_10033492C;
      v44 = v30;
      aBlock = _NSConcreteStackBlock;
      v40 = 1107296256;
      v41 = sub_100080830;
      v42 = &unk_1004D0F38;
      v32 = _Block_copy(&aBlock);

      v33 = sub_1003AE50C(v31, a1, v32);
      _Block_release(v32);

      v34 = *(v3 + 32);
      *(v3 + 32) = v33;

      v35 = *(v3 + 32);
      if (v35)
      {
        v36 = v35;
        sub_1003AE64C(v36, 14.5, 0.5);
      }

      else
      {
      }
    }
  }

  return result;
}

double sub_100333A98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(v2 + 32))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_10051B2C8);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = *(v3 + 20);

      _os_log_impl(&_mh_execute_header, v5, v6, "Client pid %d entering foreground outside, idempotently invalidate RBS assertion, stopping timer", v7, 8u);
    }

    else
    {
    }

    sub_10033325C(v8, v9);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_10051B2C8);

    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = *(v3 + 20);

      _os_log_impl(&_mh_execute_header, oslog, v11, "Client pid %d entering foreground outside of Wired Mode transceive, no op", v12, 8u);
    }

    else
    {
    }
  }

  return result;
}

void sub_100333CE0(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + 32))
  {
    v3 = v2;
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_10051B2C8);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = *(v3 + 20);

      _os_log_impl(&_mh_execute_header, v5, v6, "Client pid %d backgrounded outside of WM transceive, invalidating session", v7, 8u);
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100142EA4(*(v3 + 20), 0);
      swift_unknownObjectRelease();
    }

    v8 = *(v3 + 24);
    if (v8)
    {
      [v8 invalidate];
      v8 = *(v3 + 24);
    }

    *(v3 + 24) = 0;
  }
}

uint64_t sub_100333E54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(v3 + 20);

    _os_log_impl(&_mh_execute_header, v5, v6, "Client pid %d entering suspended state, stopping all timers and assertions to end session", v7, 8u);
  }

  else
  {
  }

  sub_10033325C(v8, v9);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100142EA4(*(v3 + 20), 0);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100333FA8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10033325C(a1, a2);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100142EA4(*(a3 + 20), 1);
    swift_unknownObjectRelease();
  }

  if (!a2 || (v28 = a2, swift_errorRetain(), sub_100068FC4(&unk_100503F80, &qword_100409CF0), sub_10009393C(0, &qword_10050AA20, NSError_ptr), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_10051B2C8);
    v5 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v5, v14, "Skipping invalidation handler due to missing error", v15, 2u);
    }

    goto LABEL_22;
  }

  v5 = v27;
  v6 = [v27 domain];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

LABEL_16:
    if ([v27 code]== 1)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000958E4(v16, qword_10051B2C8);
  v17 = v27;
  v5 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    v21 = v17;
    v22 = [v21 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_1002FFA0C(v23, v25, &v28);

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v5, v18, "Assertion invalidated, %s", v19, 0xCu);
    sub_1000752F4(v20);

    return;
  }

LABEL_22:
}

void sub_10033432C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

double sub_1003343B8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_100334410(Strong, v2);
  }

  return result;
}

void sub_100334410(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(v2 + 20);

    _os_log_impl(&_mh_execute_header, v5, v6, "Background timer for pid %d expired", v7, 8u);

    v8 = *(v2 + 24);
    if (v8)
    {
LABEL_5:
      [v8 invalidate];
      v9 = *(v2 + 24);
      goto LABEL_8;
    }
  }

  else
  {

    v8 = *(v2 + 24);
    if (v8)
    {
      goto LABEL_5;
    }
  }

  v9 = 0;
LABEL_8:
  *(v2 + 24) = 0;

  v10 = *(v2 + 16) - 1;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  if (v10 > 1)
  {
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = *(v3 + 20);

      _os_log_impl(&_mh_execute_header, v11, v12, "Invalidating expired background timer for pid %d", v17, 8u);
    }

    else
    {
    }

    v18 = *(v3 + 32);
    *(v3 + 32) = 0;
  }

  else
  {
    if (v13)
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = *(v3 + 20);

      _os_log_impl(&_mh_execute_header, v11, v12, "Ending session for suspended client %d after background timer expiration", v14, 8u);
    }

    else
    {
    }

    sub_10033325C(v15, v16);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100142EA4(*(v3 + 20), 1);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1003346EC()
{
  _StringGuts.grow(_:)(22);
  v1._countAndFlagsBits = 0x3D6574617473;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 0x747265737361202CLL;
  v2._object = 0xEC0000003D6E6F69;
  String.append(_:)(v2);
  v3 = *(v0 + 24);
  sub_100068FC4(&qword_10050B298, &qword_100416498);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  return 0;
}

uint64_t sub_1003347DC()
{
  sub_10006A49C(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_10033485C()
{
  result = qword_10050B290;
  if (!qword_10050B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B290);
  }

  return result;
}

double sub_1003348DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1003348F4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1003349C4(void (*a1)(void *), uint64_t a2)
{
  sub_10006928C();
  if (qword_100501D80 != -1)
  {
    swift_once();
  }

  v4 = static OS_dispatch_queue.getSpecific<A>(key:)();
  if ((v7 & 1) != 0 || v6 != 0x534F534543555245)
  {
    v5 = sub_1003AF3D8(v2);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    a1(v4);
  }
}

uint64_t sub_100334B34()
{
  sub_100068FC4(&qword_10050B2A8, &qword_1004164A0);
  swift_allocObject();
  result = DispatchSpecificKey.init()();
  qword_10050B2A0 = result;
  return result;
}

void *sub_100334BA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v27 = *(a1 + 16);
  sub_10019F3C0(0, v1, 0);
  v3 = a1 + 56;
  v4 = _HashTable.startBucket.getter();
  v5 = v27;
  v6 = 0;
  while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
  {
    v8 = v4 >> 6;
    v9 = 1 << v4;
    if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_26;
    }

    v10 = *(a1 + 36);
    v11 = *(*(a1 + 48) + 8 * v4);
    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_30;
      }

      v12 = 0xE400000000000000;
      v13 = 1852799308;
    }

    else
    {
      v12 = 0xE600000000000000;
      v13 = 0x616873696C41;
    }

    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      v25 = *(a1 + 36);
      v26 = v4;
      sub_10019F3C0((v14 > 1), v15 + 1, 1);
      v5 = v27;
      v10 = v25;
      v4 = v26;
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[2 * v15];
    v16[4] = v13;
    v16[5] = v12;
    v7 = 1 << *(a1 + 32);
    if (v4 >= v7)
    {
      goto LABEL_27;
    }

    v3 = a1 + 56;
    v17 = *(a1 + 56 + 8 * v8);
    if ((v17 & v9) == 0)
    {
      goto LABEL_28;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_29;
    }

    v18 = v17 & (-2 << (v4 & 0x3F));
    if (v18)
    {
      v7 = __clz(__rbit64(v18)) | v4 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v8 << 6;
      v20 = v8 + 1;
      v21 = (a1 + 64 + 8 * v8);
      while (v20 < (v7 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1000937D4(v4, v10, 0);
          v7 = __clz(__rbit64(v22)) + v19;
          goto LABEL_23;
        }
      }

      sub_1000937D4(v4, v10, 0);
LABEL_23:
      v5 = v27;
    }

    ++v6;
    v4 = v7;
    if (v6 == v5)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_100334E18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_100334E78()
{
  result = [objc_allocWithZone(type metadata accessor for DSK(0)) init];
  qword_10051B7E8 = result;
  return result;
}

uint64_t sub_100334ED0()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v11[0] = sub_10006928C();
  (*(v6 + 104))(v8, enum case for DispatchQoS.QoSClass.userInitiated(_:), v5);
  DispatchQoS.init(qosClass:relativePriority:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v1);
  v11[1] = _swiftEmptyArrayStorage;
  sub_1001CB0E0();
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_100075C60(&qword_1005064B0, &unk_100501E60, &qword_100408C30, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10051B7F0 = result;
  return result;
}

id sub_1003351CC(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

uint64_t sub_100335230()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v11[0] = sub_10006928C();
  (*(v6 + 104))(v8, enum case for DispatchQoS.QoSClass.userInitiated(_:), v5);
  DispatchQoS.init(qosClass:relativePriority:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v1);
  v11[1] = _swiftEmptyArrayStorage;
  sub_1001CB0E0();
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_100075C60(&qword_1005064B0, &unk_100501E60, &qword_100408C30, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10051B7F8 = result;
  return result;
}

id sub_100335508()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC10seserviced3DSK_isRunning] = 0;
  v0[OBJC_IVAR____TtC10seserviced3DSK_isLowPowerModeEnabled] = 0;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v2 = &v0[OBJC_IVAR____TtC10seserviced3DSK_lowPowerHandlerName];
  *v2 = 0xD000000000000016;
  v2[1] = 0x800000010046F480;
  *&v0[OBJC_IVAR____TtC10seserviced3DSK_runningModules] = &_swiftEmptySetSingleton;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v10, "init");
  v4 = qword_100501D90;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v9[4] = sub_100337A10;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100193978;
  v9[3] = &unk_1004D0FD0;
  v7 = _Block_copy(v9);

  os_state_add_handler();
  _Block_release(v7);

  return v5;
}

_DWORD *sub_1003356B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC10seserviced3DSK_isRunning);
  v13 = &type metadata for Bool;
  LOBYTE(v12) = v1;
  sub_100075D50(&v12, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v11, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced3DSK_isLowPowerModeEnabled);
  v13 = &type metadata for Bool;
  LOBYTE(v12) = v3;
  sub_100075D50(&v12, v11);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v11, 0xD000000000000015, 0x8000000100468590, v4);
  swift_beginAccess();

  v6 = sub_100334BA8(v5);

  v13 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  *&v12 = v6;
  sub_100075D50(&v12, v11);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v11, 0x4D676E696E6E7572, 0xEE0073656C75646FLL, v7);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = sub_100015DA0("dsk.state", isa);

  return v9;
}

void sub_1003358D4(Swift::UInt a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v10 = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (!a1)
  {
    if (sub_10023ECBC(v10, v11))
    {
      goto LABEL_6;
    }

LABEL_32:
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35[0] = v27;
      *v26 = 136315138;
      if (a1)
      {
        v28 = 1852799308;
      }

      else
      {
        v28 = 0x616873696C41;
      }

      if (a1)
      {
        v29 = 0xE400000000000000;
      }

      else
      {
        v29 = 0xE600000000000000;
      }

      v30 = sub_1002FFA0C(v28, v29, v35);

      *(v26 + 4) = v30;
      v31 = "Rejecting DSK %s start";
      goto LABEL_48;
    }

LABEL_49:

    return;
  }

  if (a1 != 1)
  {
    v35[0] = a1;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  if ((sub_100092F7C(v10, v11) & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_6:
  swift_beginAccess();
  v12 = sub_1000D558C(&v36, a1);
  swift_endAccess();
  if ((v12 & 1) == 0)
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35[0] = v27;
      *v26 = 136315138;
      if (a1)
      {
        v32 = 1852799308;
      }

      else
      {
        v32 = 0x616873696C41;
      }

      if (a1)
      {
        v33 = 0xE400000000000000;
      }

      else
      {
        v33 = 0xE600000000000000;
      }

      v34 = sub_1002FFA0C(v32, v33, v35);

      *(v26 + 4) = v34;
      v31 = "DSK %s is already running";
LABEL_48:
      _os_log_impl(&_mh_execute_header, v24, v25, v31, v26, 0xCu);
      sub_1000752F4(v27);

      goto LABEL_49;
    }

    goto LABEL_49;
  }

  v13 = OBJC_IVAR____TtC10seserviced3DSK_isRunning;
  if ((*(v2 + OBJC_IVAR____TtC10seserviced3DSK_isRunning) & 1) == 0)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Starting DSK", v16, 2u);
    }

    *(v2 + v13) = 1;
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    sub_1000ED9C0();
    if (qword_100501A30 != -1)
    {
      swift_once();
    }

    sub_1001941C0();
    if (qword_100501B70 != -1)
    {
      swift_once();
    }

    sub_100244648();
    if (qword_100501A58 != -1)
    {
      swift_once();
    }

    sub_1001BFEC0();
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35[0] = v20;
    *v19 = 136315138;
    if (a1)
    {
      v21 = 1852799308;
    }

    else
    {
      v21 = 0x616873696C41;
    }

    if (a1)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE600000000000000;
    }

    v23 = sub_1002FFA0C(v21, v22, v35);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "Starting DSK %s", v19, 0xCu);
    sub_1000752F4(v20);
  }

  if (a1)
  {
    if (qword_1005018F8 == -1)
    {
LABEL_29:
      sub_100082B94();
      return;
    }

LABEL_54:
    swift_once();
    goto LABEL_29;
  }

  if (qword_100501B60 != -1)
  {
    swift_once();
  }

  sub_10022F334();
}

void sub_100335F8C(Swift::UInt a1)
{
  v4 = v1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v2 = OBJC_IVAR____TtC10seserviced3DSK_isRunning;
  if (*(v4 + OBJC_IVAR____TtC10seserviced3DSK_isRunning) != 1 || (v3 = OBJC_IVAR____TtC10seserviced3DSK_runningModules, swift_beginAccess(), sub_10010D998(a1), v13 = v12, swift_endAccess(), (v13 & 1) != 0))
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v14, v15))
    {
LABEL_15:

      return;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v34[0] = v17;
    *v16 = 136315138;
    if (!a1)
    {
      v18 = 0x616873696C41;
      v19 = 0xE600000000000000;
LABEL_14:
      v27 = sub_1002FFA0C(v18, v19, v34);

      *(v16 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v14, v15, "DSK %s is not running", v16, 0xCu);
      sub_1000752F4(v17);

      goto LABEL_15;
    }

    if (a1 == 1)
    {
      v19 = 0xE400000000000000;
      v18 = 1852799308;
      goto LABEL_14;
    }

    goto LABEL_43;
  }

  v20 = OBJC_IVAR____TtC10seserviced3DSK_logger;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 136315138;
    v33[1] = v20;
    v34[0] = v24;
    if (a1)
    {
      if (a1 != 1)
      {
LABEL_43:
        v34[3] = a1;
LABEL_45:
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }

      v26 = 0xE400000000000000;
      v25 = 1852799308;
    }

    else
    {
      v25 = 0x616873696C41;
      v26 = 0xE600000000000000;
    }

    v28 = sub_1002FFA0C(v25, v26, v34);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Stopping DSK %s", v23, 0xCu);
    sub_1000752F4(v24);

    if (a1 != 1)
    {
      goto LABEL_23;
    }

LABEL_18:
    if (qword_1005018F8 == -1)
    {
LABEL_19:
      sub_100082F6C();
      goto LABEL_27;
    }

LABEL_42:
    swift_once();
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    goto LABEL_18;
  }

LABEL_23:
  if (a1)
  {
    v34[0] = a1;
    goto LABEL_45;
  }

  if (qword_100501B60 != -1)
  {
    swift_once();
  }

  sub_1002307D0();
LABEL_27:
  if (!*(*(v4 + v3) + 16))
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Stopping DSK", v31, 2u);
    }

    if (qword_100501960 != -1)
    {
      swift_once();
    }

    sub_1000EDD78();
    if (qword_100501A30 != -1)
    {
      swift_once();
    }

    sub_1001973A8();
    if (qword_100501B70 != -1)
    {
      swift_once();
    }

    sub_100244A18();
    if (qword_100501A58 != -1)
    {
      swift_once();
    }

    sub_1001C0DD4();
    if (qword_100501D78 != -1)
    {
      swift_once();
    }

    v32 = *(off_10050B110 + 3);
    os_unfair_lock_lock((v32 + 32));

    *(v32 + 24) = &_swiftEmptySetSingleton;
    os_unfair_lock_unlock((v32 + 32));
    *(v4 + v2) = 0;
  }
}

void sub_100336618()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
LABEL_41:
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_43:
    swift_once();
LABEL_33:
    sub_1000EDD78();
    if (qword_100501A30 != -1)
    {
      swift_once();
    }

    sub_1001973A8();
    if (qword_100501B70 != -1)
    {
      swift_once();
    }

    sub_100244A18();
    if (qword_100501A58 != -1)
    {
      swift_once();
    }

    sub_1001C0DD4();
    *(v1 + v34) = 0;
    return;
  }

  v2 = &unk_10051B000;
  if (*(v1 + OBJC_IVAR____TtC10seserviced3DSK_isRunning) == 1)
  {
    v34 = OBJC_IVAR____TtC10seserviced3DSK_isRunning;
    v8 = OBJC_IVAR____TtC10seserviced3DSK_runningModules;
    swift_beginAccess();
    v33 = v8;
    v9 = *(v1 + v8);
    v5 = (v9 + 56);
    v10 = 1 << *(v9 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 56);
    v13 = OBJC_IVAR____TtC10seserviced3DSK_logger;
    v14 = (v10 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v3 = 0;
    *&v15 = 136315138;
    v35 = v15;
    v37 = v9;
    v38 = v1;
    v36 = v13;
    while (v12)
    {
LABEL_12:
      v17 = *(*(v9 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v12)))));
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = v17;
        v23 = v21;
        v41 = v21;
        *v20 = v35;
        v39 = v22;
        if (v22)
        {
          if (v22 != 1)
          {
            v40 = v39;
            goto LABEL_46;
          }

          v24 = 0xE400000000000000;
          v25 = 1852799308;
        }

        else
        {
          v24 = 0xE600000000000000;
          v25 = 0x616873696C41;
        }

        v26 = sub_1002FFA0C(v25, v24, &v41);

        *(v20 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v18, v19, "Stopping DSK %s", v20, 0xCu);
        sub_1000752F4(v23);

        v9 = v37;
        v1 = v38;
        v17 = v39;
      }

      else
      {
      }

      v12 &= v12 - 1;
      if (v17 == 1)
      {
        if (qword_1005018F8 != -1)
        {
          swift_once();
        }

        v2 = qword_10051B188;
        sub_100082F6C();
      }

      else
      {
        if (v17)
        {
          v41 = v17;
LABEL_46:
          _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
          __break(1u);
          return;
        }

        if (qword_100501B60 != -1)
        {
          swift_once();
        }

        v2 = qword_10051B5A0;
        sub_1002307D0();
      }
    }

    while (1)
    {
      v16 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v16 >= v14)
      {
        break;
      }

      v12 = v5[v16];
      ++v3;
      if (v12)
      {
        v3 = v16;
        goto LABEL_12;
      }
    }

    *(v1 + v33) = &_swiftEmptySetSingleton;

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Stopping DSK", v32, 2u);
    }

    if (qword_100501960 == -1)
    {
      goto LABEL_33;
    }

    goto LABEL_43;
  }

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "DSK is not running", v29, 2u);
  }
}

Swift::Int sub_100336C78()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100336CEC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t *sub_100336D30@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_100336D4C(uint64_t a1)
{
  if (!*v1)
  {
    return 0x616873696C41;
  }

  if (*v1 == 1)
  {
    return 1852799308;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DSK(uint64_t a1)
{
  result = qword_10050B2F8;
  if (!qword_10050B2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100336E98(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100336F70()
{
  result = qword_10050B308;
  if (!qword_10050B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B308);
  }

  return result;
}

unint64_t sub_100336FC8()
{
  result = qword_10050B310;
  if (!qword_10050B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B310);
  }

  return result;
}

unint64_t sub_100337020()
{
  result = qword_10050B318;
  if (!qword_10050B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B318);
  }

  return result;
}

unint64_t sub_100337078()
{
  result = qword_10050B320;
  if (!qword_10050B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B320);
  }

  return result;
}

unint64_t sub_1003370D0()
{
  result = qword_10050B328;
  if (!qword_10050B328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B328);
  }

  return result;
}

double sub_100337124@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1000754F0((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

void sub_100337170(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000754F0(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_100075D50(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_100075768(v20, &qword_100505FD8, &unk_10040DE10);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1003372D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v46 = a1;
  v47 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v48 = v8;
  v49 = 0;
  v50 = v11 & v9;
  v51 = a2;
  v52 = a3;

  sub_100337170(&v44);
  v12 = *(&v44 + 1);
  if (!*(&v44 + 1))
  {
    goto LABEL_25;
  }

  v13 = v44;
  sub_100075D50(v45, v43);
  v14 = *a5;
  v15 = sub_10008C908(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_10030A928(v20, a4 & 1);
    v15 = sub_10008C908(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v15 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = v15;
    sub_10031130C();
    v15 = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = v15;

    v25 = (v23[7] + 32 * v24);
    sub_1000752F4(v25);
    sub_100075D50(v43, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v23[6] + 16 * v15);
  *v27 = v13;
  v27[1] = v12;
  sub_100075D50(v43, (v23[7] + 32 * v15));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_100337170(&v44);
    v12 = *(&v44 + 1);
    if (*(&v44 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v44;
        sub_100075D50(v45, v43);
        v32 = *a5;
        v33 = sub_10008C908(v13, v12);
        v35 = v32[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v32[3] < v37)
        {
          sub_10030A928(v37, 1);
          v33 = sub_10008C908(v13, v12);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_8;
          }
        }

        v39 = *a5;
        if (a4)
        {
          v30 = v33;

          v31 = (v39[7] + 32 * v30);
          sub_1000752F4(v31);
          sub_100075D50(v43, v31);
        }

        else
        {
          v39[(v33 >> 6) + 8] |= 1 << v33;
          v40 = (v39[6] + 16 * v33);
          *v40 = v13;
          v40[1] = v12;
          sub_100075D50(v43, (v39[7] + 32 * v33));
          v41 = v39[2];
          v19 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v39[2] = v42;
        }

        sub_100337170(&v44);
        v12 = *(&v44 + 1);
      }

      while (*(&v44 + 1));
    }

LABEL_25:
    sub_100093854(v46);

    return;
  }

LABEL_27:
  __break(1u);
}

void sub_1003375E0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  strcpy((inited + 32), "xpcEventName");
  *(inited + 72) = &type metadata for String;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v13 = sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100075768(inited + 32, &qword_100507D30, &unk_100409C90);
  if (a4 >> 60 != 15)
  {
    v26 = "110ExpressKey";
    sub_100069E2C(a3, a4);
    sub_100288788(a3, a4);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v14 = BidirectionalCollection<>.joined(separator:)();
    v16 = v15;

    v31 = &type metadata for String;
    *&v30 = v14;
    *(&v30 + 1) = v16;
    sub_100075D50(&v30, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100315178(v29, 0xD000000000000010, 0x8000000100465F50, isUniquelyReferenced_nonNull_native);
    sub_10006A2D0(a3, a4);
  }

  if (a6 >> 60 != 15)
  {
    sub_100069E2C(a5, a6);
    *&v30 = sub_100288788(a5, a6);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v18 = BidirectionalCollection<>.joined(separator:)();
    v20 = v19;

    v31 = &type metadata for String;
    *&v30 = v18;
    *(&v30 + 1) = v20;
    sub_100075D50(&v30, v29);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_100315178(v29, 0x746E65644979656BLL, 0xED00007265696669, v21);
    sub_10006A2D0(a5, a6);
  }

  if (a7)
  {

    v22 = swift_isUniquelyReferenced_nonNull_native();
    *&v30 = v13;
    sub_1003372D0(a7, sub_100337124, 0, v22, &v30);

    v13 = v30;
  }

  v23 = [objc_opt_self() sharedInstance];
  sub_1001950D4(v13);

  v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (a6 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [v23 sendEvent:v24.super.isa keyIdentifier:{isa, v26}];
}

uint64_t sub_1003379D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100337A34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_100337D50()
{
  result = qword_10050B330;
  if (!qword_10050B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050B330);
  }

  return result;
}

uint64_t sub_100337DAC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    (*(v5 + 16))(v7, a1, v4);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = a1;
      v19 = v18;
      v29[0] = v18;
      *v17 = 136315138;
      sub_10033C34C(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v5 + 8))(v7, v4);
      v23 = sub_1002FFA0C(v20, v22, v29);

      *(v17 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "Removing connection %s", v17, 0xCu);
      sub_1000752F4(v19);
      a1 = v28;
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v24 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_connections;
    v25 = swift_beginAccess();
    v26 = *(v2 + v24);
    __chkstk_darwin(v25);
    *(&v27 - 2) = a1;

    *(v2 + v24) = sub_100333244(sub_10033BD9C, &v27 - 4, v26);

    return sub_10033A8B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100338184(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v43 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v40 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      return;
    }

LABEL_12:

    sub_1001A2144(0, 0, v14);

    swift_endAccess();

    sub_10033A8B4();
    return;
  }

  v17 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_logger;
  v18 = *(v5 + 16);
  v44 = a1;
  v41 = v18;
  v18(v9, a1, v4);
  v40[1] = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v42 = v5;
    v23 = v22;
    v46[0] = v22;
    *v21 = 136315138;
    sub_10033C34C(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v42 + 8))(v9, v4);
    v27 = sub_1002FFA0C(v24, v26, v46);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "Adding connection %s", v21, 0xCu);
    sub_1000752F4(v23);
    v5 = v42;
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v28 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_connections;
  v29 = swift_beginAccess();
  v30 = *(v2 + v28);
  __chkstk_darwin(v29);
  v31 = v44;
  v40[-2] = v44;

  v32 = sub_1002F7E70(sub_10033C4D4, &v40[-4], v30);

  if ((v32 & 1) == 0)
  {
    v36 = v43;
    v41(v43, v31, v4);
    type metadata accessor for DSKBLEConnectionPriority.Connection(0);
    v14 = swift_allocObject();
    *(v14 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityCurrent) = 1;
    *(v14 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_isHighPriorityWanted) = 1;
    (*(v5 + 32))(v14 + OBJC_IVAR____TtCC10seserviced24DSKBLEConnectionPriorityP33_4368DB7FA3E5E29B3E4F0A34BA069AD110Connection_identifier, v36, v4);
    v37 = swift_beginAccess();
    v45 = v14;
    v38 = *(v2 + v28);
    __chkstk_darwin(v37);
    v40[-2] = &v45;

    v39 = sub_100333244(sub_10033C4FC, &v40[-4], v38);

    *(v2 + v28) = v39;
    if (!(v39 >> 62))
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Connection already exists", v35, 2u);
  }
}