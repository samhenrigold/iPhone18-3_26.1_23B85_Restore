void sub_100162A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v104 = a3;
  v107 = a1;
  v101 = type metadata accessor for DispatchTime();
  v100 = *(v101 - 8);
  v6 = __chkstk_darwin(v101);
  v99 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v95 = v91 - v8;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v9 - 8);
  v98 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  __chkstk_darwin(v11 - 8);
  v13 = v91 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v97 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v105 = v91 - v19;
  v20 = __chkstk_darwin(v18);
  v106 = v91 - v21;
  v22 = __chkstk_darwin(v20);
  v108 = v91 - v23;
  v96 = v24;
  __chkstk_darwin(v22);
  v26 = v91 - v25;
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = sub_10000403C(v27, qword_1003A4F30);
  v30 = v15 + 16;
  v29 = *(v15 + 16);
  v109 = a2;
  v29(v26, a2, v14);

  v103 = v28;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v33 = os_log_type_enabled(v31, v32);
  v110 = v15;
  v102 = v29;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v111 = v14;
    v35 = v34;
    v94 = swift_slowAlloc();
    v112[0] = v94;
    *v35 = 136315394;
    aBlock = 0xD000000000000010;
    v114 = 0x8000000100352690;
    String.append(_:)(*(v4 + 40));
    v36._countAndFlagsBits = 93;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    v37 = sub_100008F6C(aBlock, v114, v112);

    *(v35 + 4) = v37;
    *(v35 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1002C1790;
    *(v38 + 56) = &type metadata for Int64;
    *(v38 + 32) = v107;
    *(v38 + 88) = v111;
    v39 = sub_10000BE5C((v38 + 64));
    v29(v39, v26, v111);
    *(v38 + 120) = &type metadata for Int;
    *(v38 + 96) = v104;
    v40 = showFunction(signature:_:)(0xD000000000000034, 0x8000000100352890, v38);
    v42 = v41;

    v43 = v26;
    v44 = *(v110 + 8);
    v44(v43, v111);
    v45 = v40;
    v30 = v15 + 16;
    v46 = sub_100008F6C(v45, v42, v112);

    *(v35 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s.%s", v35, 0x16u);
    swift_arrayDestroy();

    v15 = v110;
    v14 = v111;
  }

  else
  {

    v47 = v26;
    v44 = *(v15 + 8);
    v44(v47, v14);
  }

  sub_10000BE18((v4 + 224), *(v4 + 248));
  sub_100043268(v13);
  v48 = (*(v15 + 48))(v13, 1, v14);
  v50 = v105;
  v49 = v106;
  if (v48 == 1)
  {
    sub_10000BD44(v13, &unk_1003A3BE0, &qword_1002C36F0);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      *(v53 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v51, v52, "Aborting identity #%lld renewal. Could not calculate secure now", v53, 0xCu);
    }

    return;
  }

  v54 = *(v15 + 32);
  v93 = v15 + 32;
  v92 = v54;
  v54(v108, v13, v14);
  Date.timeIntervalSince(_:)();
  if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v55 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v55 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v56 = 86400;
  v91[1] = v30;
  v94 = v44;
  if (v55 <= 86400 && (v56 = v55, v55 < 301))
  {

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();

    v74 = os_log_type_enabled(v72, v73);
    v71 = v99;
    if (v74)
    {
      v75 = v14;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock = v77;
      *v76 = 136315138;
      *(v76 + 4) = sub_100008F6C(*(v4 + 40), *(v4 + 48), &aBlock);
      _os_log_impl(&_mh_execute_header, v72, v73, "Certificate for %s will be renewed immediately", v76, 0xCu);
      sub_10000959C(v77);

      v14 = v75;
    }

    v58 = 0;
    v70 = v95;
    v65 = v110;
  }

  else
  {
    v112[0] = 300;
    v112[1] = v56;
    swift_beginAccess();
    sub_100022438(v4 + 184, *(v4 + 208));
    v111 = v14;
    sub_10000A114();
    v14 = v111;
    static FixedWidthInteger.random<A>(in:using:)();
    swift_endAccess();
    Date.addingTimeInterval(_:)();
    Date.timeIntervalSince(_:)();
    v58 = v57;
    v102(v50, v49, v14);

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v61 = 136315650;
      *(v61 + 4) = sub_100008F6C(*(v4 + 40), *(v4 + 48), &aBlock);
      *(v61 + 12) = 2080;
      sub_1001655B4(&qword_10039F3E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v65 = v110;
      v66 = v50;
      v67 = v94;
      v94(v66, v111);
      v68 = sub_100008F6C(v62, v64, &aBlock);

      *(v61 + 14) = v68;
      *(v61 + 22) = 2048;
      *(v61 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v59, v60, "Certificate for %s will be renewed on %s (in %f seconds)", v61, 0x20u);
      swift_arrayDestroy();

      v14 = v111;

      v67(v106, v14);
    }

    else
    {

      v65 = v110;
      v69 = v94;
      v94(v50, v14);
      v69(v49, v14);
    }

    v70 = v95;
    v71 = v99;
  }

  v78 = v102;

  dispatch thunk of DispatchWorkItem.cancel()();

  static DispatchWorkItemFlags.barrier.getter();
  v79 = swift_allocObject();
  swift_weakInit();
  v80 = v97;
  v78(v97, v109, v14);
  v81 = *(v65 + 80);
  v82 = v14;
  v83 = (v81 + 48) & ~v81;
  v84 = swift_allocObject();
  v85 = v107;
  *(v84 + 2) = v79;
  *(v84 + 3) = v85;
  *(v84 + 4) = v58;
  *(v84 + 5) = v104;
  v92(&v84[v83], v80, v82);
  v117 = sub_10016547C;
  v118 = v84;
  aBlock = _NSConcreteStackBlock;
  v114 = 1107296256;
  v115 = sub_100003974;
  v116 = &unk_100385968;
  _Block_copy(&aBlock);
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();

  v86 = DispatchWorkItem.init(flags:block:)();

  *(v4 + 352) = v86;

  v88 = *(v4 + 248);
  v87 = *(v4 + 256);
  sub_10000BE18((v4 + 224), v88);
  (*(*(v87 + 8) + 16))(v88);
  + infix(_:_:)();
  v89 = *(v100 + 8);
  v90 = v101;
  v89(v71, v101);

  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v89(v70, v90);
  v94(v108, v82);
}

void sub_10016375C(uint64_t a1, uint64_t a2, double a3)
{
  if (qword_10039D768 != -1)
  {
    v20 = a3;
    swift_once();
    a3 = v20;
  }

  if (*(static Terminator.shared + 16))
  {
    if (qword_10039D6E8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000403C(v4, qword_1003A4F30);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "renew identity cancelled: shutdown in progress", v6, 2u);
    }

    return;
  }

  v7 = a3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 56);
    if (v9 && *(v9 + 16) == a2)
    {
      if (qword_10039D6E8 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000403C(v10, qword_1003A4F30);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134218240;
        *(v13 + 4) = a2;
        *(v13 + 12) = 2048;
        *(v13 + 14) = v7;
        _os_log_impl(&_mh_execute_header, v11, v12, "renew identity #%lld after %fs", v13, 0x16u);
      }

      sub_100162348();
      sub_100160C18();
      v15 = v14;
      sub_100161BA0(v14);
      sub_1001627CC(v15);

      return;
    }
  }

  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000403C(v16, qword_1003A4F30);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "identity mismatch, abort renewal", v19, 2u);
  }
}

uint64_t sub_100163DC8(uint64_t a1, uint64_t a2)
{
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A4F30);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136315394;
    v30[0] = 0xD000000000000010;
    v30[1] = 0x8000000100352690;
    v31[0] = v7;
    String.append(_:)(*(v2 + 40));
    v8._countAndFlagsBits = 93;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    v9 = sub_100008F6C(0xD000000000000010, 0x8000000100352690, v31);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD000000000000026, 0x8000000100352860, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, v31);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for SecCertificate(0);
  v13 = static SecCertificateRef.parse(derRepresentation:)();
  if (v13)
  {
    v14 = v13;
    v15 = sub_100164BB8();
    if (!v15)
    {
      v20 = *(v2 + 288);
      v21 = *(v2 + 296);
      sub_10000BE18((v2 + 264), v20);
      (*(v21 + 8))(v14, v20, v21);

      return 1;
    }

    v16 = v15;
    swift_willThrow();
  }

  else
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Invalid X.509 format (SEABAAS)", v19, 2u);
    }

    v16 = sub_100020C74(10005, 0, 0, 0);
    swift_willThrow();
  }

  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30[0] = v25;
    *v24 = 136315138;
    v31[0] = v16;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v26 = String.init<A>(describing:)();
    v28 = sub_100008F6C(v26, v27, v30);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "Certificate verification failed: %s", v24, 0xCu);
    sub_10000959C(v25);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_100164200(uint64_t a1, uint64_t a2)
{
  v39 = _swiftEmptyArrayStorage;
  type metadata accessor for SecCertificate(0);
  v5 = static SecCertificateRef.parse(derRepresentation:)();
  if (v5)
  {
    v6 = v5;
    v7 = SecCertificateRef.publicKey.getter();
    if (v7)
    {
      v8 = v7;
      if (SecKeyRef.isAlgorithmSupported(_:for:)(kSecKeyAlgorithmECDSASignatureMessageX962SHA256, kSecKeyOperationTypeVerify))
      {
      }

      else
      {
        sub_100020C74(10005, 0xD00000000000001CLL, 0x8000000100352840, 0);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v39[2] >= v39[3] >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }

    else
    {
      sub_100020C74(10005, 0x696C627570206F4ELL, 0xED000079656B2063, 0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v39[2] >= v39[3] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v10 = sub_100164BB8();
    if (v10)
    {
      v11 = v10;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v39[2] >= v39[3] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    sub_10009BACC(&v35);
    v12 = v37;
    v13 = v38;

    if (v13)
    {
      v14 = *(v2 + 168);
      v15 = *(v2 + 176);
      if (v12 == v14 && v13 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_30;
      }

      v35 = 0;
      v36 = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v35 = 0xD000000000000015;
      v36 = 0x8000000100352820;
      v19._countAndFlagsBits = v12;
      v19._object = v13;
      String.append(_:)(v19);

      v20._countAndFlagsBits = 0x203A64696573202CLL;
      v20._object = 0xE800000000000000;
      String.append(_:)(v20);
      v21._countAndFlagsBits = v14;
      v21._object = v15;
      String.append(_:)(v21);
      v16 = v35;
      v17 = v36;
      v18 = 10010;
    }

    else
    {
      v16 = 0xD00000000000001ELL;
      v17 = 0x8000000100352790;
      v18 = 10005;
    }

    sub_100020C74(v18, v16, v17, 0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v39[2] >= v39[3] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_30:
    v22 = sub_10009C2B8();
    if (v23 & 1) != 0 || (v24 = v22, sub_10009C2B8(), (v26))
    {
      v27 = 0x80000001003527B0;
      v28 = 10005;
      v29 = 0xD00000000000001ALL;
    }

    else
    {
      v30 = v25;
      if (v24)
      {
        v35 = 0;
        v36 = 0xE000000000000000;
        _StringGuts.grow(_:)(49);

        v35 = 0xD000000000000022;
        v36 = 0x80000001003527D0;
        v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v31);

        v32._object = 0xED000030203A6465;
        v32._countAndFlagsBits = 0x746365707865202CLL;
        String.append(_:)(v32);
        sub_100020C74(10010, v35, v36, 0);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v39[2] >= v39[3] >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      if (v30 == 1)
      {

LABEL_36:
        sub_1001648A4(&v39, v2, a1, a2);
      }

      v35 = 0;
      v36 = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      v35 = 0xD00000000000001DLL;
      v36 = 0x8000000100352800;
      v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v33);

      v34._object = 0xED000031203A6465;
      v34._countAndFlagsBits = 0x746365707865202CLL;
      String.append(_:)(v34);
      v29 = v35;
      v27 = v36;
      v28 = 10010;
    }

    sub_100020C74(v28, v29, v27, 0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v39[2] >= v39[3] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    goto LABEL_36;
  }

  sub_100020C74(10005, 0xD00000000000001ALL, 0x8000000100352770, 0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v39[2] >= v39[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1001648A4(&v39, v2, a1, a2);
}

uint64_t sub_1001648A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*result + 16))
  {
    v4 = result;
    sub_10000CCE4(a2 + 104, v24);
    v6 = v25;
    v7 = v26;
    sub_10000BE18(v24, v25);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1790;
    *(inited + 32) = 1701605234;
    *(inited + 40) = 0xE400000000000000;
    v9 = *(a2 + 32);
    *(inited + 72) = &type metadata for Int;
    *(inited + 80) = &protocol witness table for Int;
    *(inited + 48) = v9;
    *(inited + 88) = 0x747365676964;
    *(inited + 96) = 0xE600000000000000;
    v10 = Data.sha256Digest.getter();
    v12 = v11;
    *(inited + 128) = &type metadata for Data;
    v13 = sub_10016532C();
    *(inited + 104) = v10;
    *(inited + 112) = v12;
    *(inited + 136) = v13;
    *(inited + 144) = 0x73726F727265;
    *(inited + 152) = 0xE600000000000000;
    v14 = *(*v4 + 16);
    if (v14)
    {
      v23 = v6;

      sub_10004E2DC(0, v14, 0);
      type metadata accessor for SecurityError(0);
      v15 = 32;
      do
      {
        _print_unlocked<A, B>(_:_:)();
        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          sub_10004E2DC((v16 > 1), v17 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v17 + 1;
        v18 = &_swiftEmptyArrayStorage[2 * v17];
        v18[4] = 0;
        v18[5] = 0xE000000000000000;
        v15 += 8;
        --v14;
      }

      while (v14);

      v6 = v23;
    }

    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_10001A570(&qword_10039E278, &qword_10039E270, &unk_1002C3BE0, &protocol conformance descriptor for [A]);
    v19 = BidirectionalCollection<>.joined(separator:)();
    v21 = v20;

    *(inited + 184) = &type metadata for String;
    *(inited + 192) = &protocol witness table for String;
    *(inited + 160) = v19;
    *(inited + 168) = v21;
    v22 = sub_100184010(inited);
    swift_setDeallocating();
    sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
    swift_arrayDestroy();
    sub_1000C2288(0x27u, v22, v6, v7);

    return sub_10000959C(v24);
  }

  return result;
}

uint64_t sub_100164BB8()
{
  sub_10009B644(&v24);
  v2 = v24;
  v1 = v25;

  if (!v1)
  {
    v8 = 0xD00000000000001DLL;
    v9 = 0x80000001003526D0;
    goto LABEL_5;
  }

  v3 = sub_100189160(v2, v1);
  if (v6)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v24 = 0xD000000000000020;
    v25 = 0x80000001003526F0;
    v7._countAndFlagsBits = v2;
    v7._object = v1;
    String.append(_:)(v7);

    v8 = v24;
    v9 = v25;
LABEL_5:
    v10 = 10005;
    return sub_100020C74(v10, v8, v9, 0);
  }

  v12 = v3;
  v13 = v4;
  v14 = v5;

  v15 = sub_10000BE18((v0 + 312), *(v0 + 336));
  if (v12 == *(*v15 + 16) && v13 == *(*v15 + 24) && v14 == *(*v15 + 32))
  {
    return 0;
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(69);
  v18._countAndFlagsBits = 0xD00000000000002CLL;
  v18._object = 0x8000000100352720;
  String.append(_:)(v18);
  v19._countAndFlagsBits = sub_100187828(v12, v13, v14);
  String.append(_:)(v19);

  v20._object = 0x8000000100352750;
  v20._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v20);
  v21 = sub_10000BE18((v0 + 312), *(v0 + 336));
  v22._countAndFlagsBits = sub_100187828(*(*v21 + 16), *(*v21 + 24), *(*v21 + 32));
  String.append(_:)(v22);

  v23._countAndFlagsBits = 46;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v8 = v24;
  v9 = v25;
  v10 = 10010;
  return sub_100020C74(v10, v8, v9, 0);
}

uint64_t sub_100164E2C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[0] = a1;
  v19[1] = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v20 = v8;
  v21 = a2;
  v22 = a3;
  v23 = a5;
  v24 = a4;
  sub_100004074(&qword_1003A51A8, &qword_1002C98F0);
  v17 = v27;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  if (v17)
  {
    return (*(v14 + 8))(v16, v13);
  }

  (*(v14 + 8))(v16, v13);
  result = v25;
  *v19[0] = v26;
  return result;
}

uint64_t sub_100164F9C(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static DispatchWorkItemFlags.barrier.getter();
  v12 = v4;
  v13 = a1;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_1001650B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  OS_dispatch_queue.sync<A>(flags:execute:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1001651C4()
{
  String.append(_:)(*(*v0 + 40));
  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000010;
}

unint64_t sub_10016532C()
{
  result = qword_1003A51B0;
  if (!qword_1003A51B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A51B0);
  }

  return result;
}

uint64_t sub_100165380()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001653B8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10016547C()
{
  type metadata accessor for Date();
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = v0[4];

  sub_10016375C(v1, v2, v3);
}

uint64_t sub_1001654E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100165500()
{
  result = qword_1003A51C0;
  if (!qword_1003A51C0)
  {
    sub_1000040BC(&qword_1003A51B8, &qword_1002C98F8);
    sub_1001655B4(&qword_1003A4B48, type metadata accessor for SESSigningIdentity, &unk_1002C90CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A51C0);
  }

  return result;
}

uint64_t sub_1001655B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100165604()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A51C8);
  sub_10000403C(v0, qword_1003A51C8);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

uint64_t sub_100165660()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 64);
  if (v6)
  {
    v7 = *(v0 + 56);
    v8 = *(v0 + 24);
    v20 = *(v0 + 16);
    v21 = v8;

    v9._countAndFlagsBits = 58;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    String.append(_:)(*(v0 + 40));

    v10._countAndFlagsBits = v7;
    v10._object = v6;
    String.append(_:)(v10);

    v1 = v21;
    static String.Encoding.utf8.getter();
    v11 = String.data(using:allowLossyConversion:)();
    v13 = v12;

    v14 = *(v3 + 8);
    v3 += 8;
    v14(v5, v2);
    if (v13 >> 60 != 15)
    {
      return v11;
    }

    __break(1u);
  }

  v15 = *(v1 + 24);
  v20 = *(v1 + 16);
  v21 = v15;

  v16._countAndFlagsBits = 58;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  String.append(_:)(*(v1 + 40));
  static String.Encoding.utf8.getter();
  v11 = String.data(using:allowLossyConversion:)();
  v18 = v17;

  result = (*(v3 + 8))(v5, v2);
  if (v18 >> 60 != 15)
  {
    return v11;
  }

  __break(1u);
  return result;
}

unint64_t sub_100165848()
{
  _StringGuts.grow(_:)(23);

  String.append(_:)(*(v0 + 16));
  v1._countAndFlagsBits = 0x203A656C6F72202CLL;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + 40));
  v2._countAndFlagsBits = 93;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0xD000000000000011;
}

uint64_t sub_1001658F0()
{
  v1 = v0;
  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A51C8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_100165848();
    v8 = sub_100008F6C(v6, v7, v16);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v16);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  dispatch thunk of DispatchWorkItem.cancel()();

  sub_10000CCE4(v0 + 80, v16);
  v12 = v17;
  v13 = v18;
  sub_10000BE18(v16, v17);
  v14 = (*(v13 + 8))(v12, v13);
  sub_10000959C(v16);
  if (v14)
  {
    sub_100167CE8();
  }

  sub_10000959C((v1 + 80));
  sub_10000959C((v1 + 120));

  sub_10000959C((v1 + 200));
  sub_10000959C((v1 + 240));
  sub_10000959C((v1 + 280));

  sub_10000959C((v1 + 328));

  return v1;
}

uint64_t sub_100165B8C()
{
  sub_1001658F0();

  return swift_deallocClassInstance();
}

void sub_100165BE4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void (*a5)(__int128 *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t *)@<X4>, uint64_t a6@<X8>)
{
  v8 = v6;
  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = *(v11 + 24);
    v13 = *(v11 + 32);

    sub_1000094F4(v12, v13);
    v14 = sub_10016950C(v12, v13);
    sub_100009548(v12, v13);
    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      a5(&v27, v11, a2, a3, &v28);
      if (!v6)
      {
        objc_autoreleasePoolPop(v15);
        *a6 = v27;
        *(a6 + 16) = v11;
        return;
      }

      objc_autoreleasePoolPop(v15);
      _s3__C4CodeOMa_13(0);
      *&v27 = 10004;
      swift_errorRetain();
      sub_10016BA2C(&qword_10039D978, _s3__C4CodeOMa_13, &unk_1002BF078);
      v16 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if ((v16 & 1) == 0 || (a4 & 1) == 0)
      {

        return;
      }

      if (qword_10039D6F0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000403C(v17, qword_1003A51C8);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Recoverable signature failure", v20, 2u);
      }

      v8 = 0;
    }

    sub_100167CE8();
  }

  if (a4)
  {
    sub_100166890();
    if (!v8)
    {
      v22 = v21;
      v23 = objc_autoreleasePoolPush();
      a5(&v27, v22, a2, a3, &v28);
      objc_autoreleasePoolPop(v23);
      v24 = v27;
      sub_100167650(v22);
      sub_10016807C(v22);
      *a6 = v24;
      *(a6 + 16) = v22;
    }
  }

  else
  {
    sub_100020C74(10006, 0, 0, 0);
    swift_willThrow();
  }
}

void sub_100165F14(void *a1@<X0>, BOOL *a2@<X8>, double a3@<D0>)
{
  v7 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - v8;
  v10 = type metadata accessor for Date();
  v11 = __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v17 = a1[9];
  if (!v17)
  {
    goto LABEL_19;
  }

  v45 = v16;
  v46 = &v43 - v15;
  v44 = v14;
  v47 = a2;
  type metadata accessor for SecCertificate(0);
  v18 = *(v17 + 24);
  v19 = *(v17 + 32);

  sub_1000094F4(v18, v19);
  v20 = static SecCertificateRef.parse(derRepresentation:)();
  sub_100009548(v18, v19);
  if (!v20)
  {

    v31 = 0;
    a2 = v47;
    goto LABEL_20;
  }

  v21 = a1[38];
  v22 = a1[39];
  sub_10000BE18(a1 + 35, v21);
  (*(v22 + 8))(v20, v21, v22);
  if (!v3)
  {
    SecCertificateNotValidAfter();
    v32 = v46;
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_10000BE18(a1 + 30, a1[33]);
    sub_100043268(v9);
    v33 = v44;
    v34 = v45;
    if ((*(v45 + 48))(v9, 1, v44) != 1)
    {
      (*(v34 + 32))(v13, v9, v33);
      Date.timeIntervalSince(_:)();
      v41 = v40;

      v42 = *(v34 + 8);
      v42(v13, v33);
      v42(v32, v33);
      v31 = v41 > a3;
      a2 = v47;
      goto LABEL_20;
    }

    v35 = v33;
    sub_10000BD44(v9, &unk_1003A3BE0, &qword_1002C36F0);
    if (qword_10039D6F0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000403C(v36, qword_1003A51C8);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Could not calculate secure now", v39, 2u);
      v34 = v45;
    }

    else
    {
    }

    a2 = v47;
    (*(v34 + 8))(v46, v35);
LABEL_19:
    v31 = 0;
    goto LABEL_20;
  }

  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000403C(v23, qword_1003A51C8);
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v49 = v27;
    *v26 = 136315138;
    v48 = v3;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v28 = String.init<A>(describing:)();
    v30 = sub_100008F6C(v28, v29, &v49);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Certificate verification failed: %s", v26, 0xCu);
    sub_10000959C(v27);
  }

  else
  {
  }

  v31 = 0;
  a2 = v47;
LABEL_20:
  *a2 = v31;
}

uint64_t sub_10016647C(uint64_t a1)
{
  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A51C8);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v6 = 136315394;
    String.append(_:)(*(a1 + 40));
    v7._countAndFlagsBits = 93;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8 = sub_100008F6C(0xD000000000000010, 0x8000000100352A30, &v20);

    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000012, 0x80000001003526B0, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v20);

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  sub_100166890();
  if (v1)
  {
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error creating identity: %@", v16, 0xCu);
      sub_10000BD44(v17, &unk_10039E220, &qword_1002C3D60);
    }

    return swift_willThrow();
  }

  else
  {
    v13 = v12;
    sub_100167650(v12);
    sub_10016807C(v13);
  }
}

void sub_100166890()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2 - 8);
  v58 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_10000403C(v4, qword_1003A51C8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v8 = 136315394;
    v59 = 0xD000000000000010;
    v60 = 0x8000000100352A30;
    String.append(_:)(*(v0 + 40));
    v9._countAndFlagsBits = 93;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v10 = sub_100008F6C(v59, v60, v61);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = showFunction(signature:_:)(0xD000000000000010, 0x8000000100352910, _swiftEmptyArrayStorage);
    v13 = sub_100008F6C(v11, v12, v61);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *(v0 + 176);
  v15 = *(v0 + 376);
  v16 = *(v1 + 168);

  UUID.init()();
  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v17 = static GlobalState.shared;
  [*(static GlobalState.shared + 88) lock];
  while (*(v17 + 104) > 0 || *(v17 + 112) == 1)
  {
    [*(v17 + 88) wait];
  }

  v18 = *(v17 + 96);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v56 = v5;
  *(v17 + 96) = v20;
  [*(v17 + 88) unlock];
  if (*(v17 + 56))
  {
    v21 = 0;
  }

  else
  {
    v21 = *(v17 + 52);
  }

  [*(v17 + 88) lock];
  v22 = *(v17 + 96);
  v19 = __OFSUB__(v22, 1);
  v23 = v22 - 1;
  if (v19)
  {
    goto LABEL_30;
  }

  *(v17 + 96) = v23;
  if (!v23)
  {
    [*(v17 + 88) broadcast];
  }

  type metadata accessor for BAASigningIdentity(0);
  [*(v17 + 88) unlock];
  TMGetKernelMonotonicClock();
  v25 = v24;
  v26 = static Data.randomBytes(count:)();
  v27 = v57;
  v29 = sub_100156A0C(v58, v21, v16, v14, v26, v28, v15, v25);
  if (!v27)
  {
    isa = v29[3].isa;
    v43 = v29[4].isa;
    v44 = v29;
    sub_1000094F4(isa, v43);
    sub_100169810(isa, v43);
    sub_100009548(isa, v43);
    v45 = *(v1 + 152);
    v57 = *(v1 + 144);
    v58 = v45;
    v56 = sub_10000BE18((v1 + 120), v57);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1670;
    *(inited + 32) = 1701605234;
    v55 = inited + 32;
    *(inited + 40) = 0xE400000000000000;
    v47 = *(v1 + 32);
    *(inited + 72) = &type metadata for Int;
    *(inited + 80) = &protocol witness table for Int;
    *(inited + 48) = v47;
    *(inited + 88) = 0x747365676964;
    *(inited + 96) = 0xE600000000000000;
    v48 = v44[3].isa;
    v49 = v44[4].isa;
    sub_1000094F4(v48, v49);
    v50 = Data.sha256Digest.getter();
    v52 = v51;
    sub_100009548(v48, v49);
    v53 = Data.base64EncodedString(options:)(0);
    sub_100009548(v50, v52);
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = v53;
    v54 = sub_100184010(inited);
    swift_setDeallocating();
    sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
    swift_arrayDestroy();
    sub_1000C2288(8u, v54, v57, v58);

    sub_10002B31C(&off_10037EF88);
    return;
  }

  v30 = *(v1 + 144);
  v57 = *(v1 + 152);
  v58 = v29;
  sub_10000BE18((v1 + 120), v30);
  sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1002C1670;
  *(v31 + 32) = 1701605234;
  *(v31 + 40) = 0xE400000000000000;
  v32 = *(v1 + 32);
  *(v31 + 72) = &type metadata for Int;
  *(v31 + 80) = &protocol witness table for Int;
  *(v31 + 48) = v32;
  *(v31 + 88) = 0x726F727265;
  *(v31 + 96) = 0xE500000000000000;
  v59 = v27;
  swift_errorRetain();
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  v33 = String.init<A>(describing:)();
  *(v31 + 128) = &type metadata for String;
  *(v31 + 136) = &protocol witness table for String;
  *(v31 + 104) = v33;
  *(v31 + 112) = v34;
  v35 = sub_100184010(v31);
  swift_setDeallocating();
  sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
  swift_arrayDestroy();
  sub_1000C2288(0xAu, v35, v30, v57);

  v59 = v27;
  swift_errorRetain();
  type metadata accessor for SecurityError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v36 = v61[0];
  v59 = v61[0];
  sub_10016BA2C(&qword_10039D998, type metadata accessor for SecurityError, &unk_1002BEFD0);
  _BridgedStoredNSError.code.getter();
  if (v61[0] != 10002)
  {

LABEL_28:
    swift_willThrow();
    return;
  }

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "BAA certificate creation failed, increase validity for next attempt", v39, 2u);
  }

  v40 = *(v1 + 376);
  v19 = __OFADD__(v40, 86400);
  v41 = v40 + 86400;
  if (!v19)
  {
    if (v41 <= 600000)
    {
      *(v1 + 376) = v41;
    }

    goto LABEL_28;
  }

LABEL_31:
  __break(1u);
}

unint64_t sub_10016704C()
{
  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A51C8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315394;
    v18 = 0xD000000000000010;
    v19[0] = v5;
    String.append(_:)(*(v0 + 40));
    v6._countAndFlagsBits = 93;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = sub_100008F6C(0xD000000000000010, 0x8000000100352A30, v19);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0x6E65644964616F6CLL, 0xEE00292879746974, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, v19);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  sub_10000BE18((v0 + 80), v11);
  v13 = sub_100165660();
  v15 = v14;
  v16 = sub_100004074(&qword_1003A5450, &qword_1002C99F0);
  sub_10016B978();
  sub_10009A1A4(v13, v15, v11, v16, v12);
  sub_100009548(v13, v15);
  return v18;
}

uint64_t sub_100167650(void *a1)
{
  v3 = type metadata accessor for JSONEncoder.OutputFormatting();
  v47 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_1003A51C8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v9 = os_log_type_enabled(v7, v8);
  v45 = v1;
  if (v9)
  {
    v10 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = v44;
    *v10 = 136315394;
    v48 = 0xD000000000000010;
    v49 = 0x8000000100352A30;
    String.append(_:)(*(v1 + 40));
    v11._countAndFlagsBits = 93;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v12 = sub_100008F6C(v48, v49, &v50);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1002C1660;
    *(v13 + 56) = type metadata accessor for BAASigningIdentity(0);
    *(v13 + 32) = a1;

    v14 = showFunction(signature:_:)(0xD000000000000010, 0x80000001003528F0, v13);
    v15 = a1;
    v17 = v16;

    v18 = sub_100008F6C(v14, v17, &v50);
    a1 = v15;

    *(v10 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for JSONEncoder();
  v48 = a1;
  v50 = _swiftEmptyArrayStorage;
  sub_10016BA2C(&qword_1003A1068, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_100004074(&qword_1003A1070, &qword_1002C5170);
  sub_10001A570(&qword_1003A1078, &qword_1003A1070, &qword_1002C5170, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for BAASigningIdentity(0);
  sub_10016BA2C(&qword_1003A4D78, type metadata accessor for BAASigningIdentity, &unk_1002C9420);
  v19 = v46;
  v20 = static JSONEncoder.encodeClean<A>(_:outputFormatting:)();
  if (v19)
  {
    return (*(v47 + 8))(v5, v3);
  }

  v44 = a1;
  v23 = v20;
  v24 = v21;
  (*(v47 + 8))(v5, v3);
  v25 = v45[14];
  sub_10000BE18(v45 + 10, v45[13]);
  v26 = sub_100165660();
  v28 = v27;
  v29 = *(v25 + 40);
  v46 = v23;
  v47 = v24;
  v29();
  sub_100009548(v26, v28);
  v30 = v45;
  v31 = v45[18];
  v43 = v45[19];
  v42[1] = sub_10000BE18(v45 + 15, v31);
  sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1670;
  *(inited + 32) = 1701605234;
  v42[0] = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  v33 = v30[4];
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = &protocol witness table for Int;
  *(inited + 48) = v33;
  *(inited + 88) = 0x747365676964;
  *(inited + 96) = 0xE600000000000000;
  v34 = v44;
  v35 = v44[3];
  v36 = v44[4];
  sub_1000094F4(v35, v36);
  v37 = Data.sha256Digest.getter();
  v39 = v38;
  sub_100009548(v35, v36);
  v40 = Data.base64EncodedString(options:)(0);
  sub_100009548(v37, v39);
  *(inited + 128) = &type metadata for String;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = v40;
  v41 = sub_100184010(inited);
  swift_setDeallocating();
  sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
  swift_arrayDestroy();
  sub_1000C2288(9u, v41, v31, v43);
  sub_100009548(v46, v47);

  v30[9] = v34;
}

void sub_100167CE8()
{
  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A51C8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315394;
    v15[0] = v5;
    String.append(_:)(*(v0 + 40));
    v6._countAndFlagsBits = 93;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = sub_100008F6C(0xD000000000000010, 0x8000000100352A30, v15);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0xD000000000000010, 0x80000001003528D0, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, v15);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v0 + 72))
  {
    v11 = *(v0 + 112);
    sub_10000BE18((v0 + 80), *(v0 + 104));

    v12 = sub_100165660();
    v14 = v13;
    (*(v11 + 48))();
    sub_100009548(v12, v14);
    sub_1001588A0();

    *(v0 + 72) = 0;
  }
}

void sub_10016807C(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SecCertificate(0);
  v6 = a1[3];
  v7 = a1[4];
  sub_1000094F4(v6, v7);
  v8 = static SecCertificateRef.parse(derRepresentation:)();
  sub_100009548(v6, v7);
  if (v8)
  {
    SecCertificateNotValidAfter();
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_100168314(a1[2], v5, 0);

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (qword_10039D6F0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000403C(v9, qword_1003A51C8);

    v17 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v13 = sub_100156620();
      v15 = sub_100008F6C(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v17, v10, "Invalid X.509 format (BAA). Not renewing: %s", v11, 0xCu);
      sub_10000959C(v12);
    }

    else
    {
      v16 = v17;
    }
  }
}

void sub_100168314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v104 = a3;
  v107 = a1;
  v101 = type metadata accessor for DispatchTime();
  v100 = *(v101 - 8);
  v6 = __chkstk_darwin(v101);
  v99 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v95 = v91 - v8;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v9 - 8);
  v98 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  __chkstk_darwin(v11 - 8);
  v13 = v91 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v97 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v105 = v91 - v19;
  v20 = __chkstk_darwin(v18);
  v106 = v91 - v21;
  v22 = __chkstk_darwin(v20);
  v108 = v91 - v23;
  v96 = v24;
  __chkstk_darwin(v22);
  v26 = v91 - v25;
  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = sub_10000403C(v27, qword_1003A51C8);
  v30 = v15 + 16;
  v29 = *(v15 + 16);
  v109 = a2;
  v29(v26, a2, v14);

  v103 = v28;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();

  v33 = os_log_type_enabled(v31, v32);
  v110 = v15;
  v102 = v29;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v111 = v14;
    v35 = v34;
    v94 = swift_slowAlloc();
    v112[0] = v94;
    *v35 = 136315394;
    aBlock = 0xD000000000000010;
    v114 = 0x8000000100352A30;
    String.append(_:)(*(v4 + 40));
    v36._countAndFlagsBits = 93;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    v37 = sub_100008F6C(aBlock, v114, v112);

    *(v35 + 4) = v37;
    *(v35 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1002C1790;
    *(v38 + 56) = &type metadata for Int64;
    *(v38 + 32) = v107;
    *(v38 + 88) = v111;
    v39 = sub_10000BE5C((v38 + 64));
    v29(v39, v26, v111);
    *(v38 + 120) = &type metadata for Int;
    *(v38 + 96) = v104;
    v40 = showFunction(signature:_:)(0xD000000000000034, 0x8000000100352890, v38);
    v42 = v41;

    v43 = v26;
    v44 = *(v110 + 8);
    v44(v43, v111);
    v45 = v40;
    v30 = v15 + 16;
    v46 = sub_100008F6C(v45, v42, v112);

    *(v35 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s.%s", v35, 0x16u);
    swift_arrayDestroy();

    v15 = v110;
    v14 = v111;
  }

  else
  {

    v47 = v26;
    v44 = *(v15 + 8);
    v44(v47, v14);
  }

  sub_10000BE18((v4 + 240), *(v4 + 264));
  sub_100043268(v13);
  v48 = (*(v15 + 48))(v13, 1, v14);
  v50 = v105;
  v49 = v106;
  if (v48 == 1)
  {
    sub_10000BD44(v13, &unk_1003A3BE0, &qword_1002C36F0);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      *(v53 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v51, v52, "Aborting identity #%lld renewal. Could not calculate secure now", v53, 0xCu);
    }

    return;
  }

  v54 = *(v15 + 32);
  v93 = v15 + 32;
  v92 = v54;
  v54(v108, v13, v14);
  Date.timeIntervalSince(_:)();
  if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v55 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v55 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v56 = 86400;
  v91[1] = v30;
  v94 = v44;
  if (v55 <= 86400 && (v56 = v55, v55 < 301))
  {

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();

    v74 = os_log_type_enabled(v72, v73);
    v71 = v99;
    if (v74)
    {
      v75 = v14;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock = v77;
      *v76 = 136315138;
      *(v76 + 4) = sub_100008F6C(*(v4 + 40), *(v4 + 48), &aBlock);
      _os_log_impl(&_mh_execute_header, v72, v73, "Certificate for %s will be renewed immediately", v76, 0xCu);
      sub_10000959C(v77);

      v14 = v75;
    }

    v58 = 0;
    v70 = v95;
    v65 = v110;
  }

  else
  {
    v112[0] = 300;
    v112[1] = v56;
    swift_beginAccess();
    sub_100022438(v4 + 200, *(v4 + 224));
    v111 = v14;
    sub_10000A114();
    v14 = v111;
    static FixedWidthInteger.random<A>(in:using:)();
    swift_endAccess();
    Date.addingTimeInterval(_:)();
    Date.timeIntervalSince(_:)();
    v58 = v57;
    v102(v50, v49, v14);

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v61 = 136315650;
      *(v61 + 4) = sub_100008F6C(*(v4 + 40), *(v4 + 48), &aBlock);
      *(v61 + 12) = 2080;
      sub_10016BA2C(&qword_10039F3E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v65 = v110;
      v66 = v50;
      v67 = v94;
      v94(v66, v111);
      v68 = sub_100008F6C(v62, v64, &aBlock);

      *(v61 + 14) = v68;
      *(v61 + 22) = 2048;
      *(v61 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v59, v60, "Certificate for %s will be renewed on %s (in %f seconds)", v61, 0x20u);
      swift_arrayDestroy();

      v14 = v111;

      v67(v106, v14);
    }

    else
    {

      v65 = v110;
      v69 = v94;
      v94(v50, v14);
      v69(v49, v14);
    }

    v70 = v95;
    v71 = v99;
  }

  v78 = v102;

  dispatch thunk of DispatchWorkItem.cancel()();

  static DispatchWorkItemFlags.barrier.getter();
  v79 = swift_allocObject();
  swift_weakInit();
  v80 = v97;
  v78(v97, v109, v14);
  v81 = *(v65 + 80);
  v82 = v14;
  v83 = (v81 + 48) & ~v81;
  v84 = swift_allocObject();
  v85 = v107;
  *(v84 + 2) = v79;
  *(v84 + 3) = v85;
  *(v84 + 4) = v58;
  *(v84 + 5) = v104;
  v92(&v84[v83], v80, v82);
  v117 = sub_10016B8F4;
  v118 = v84;
  aBlock = _NSConcreteStackBlock;
  v114 = 1107296256;
  v115 = sub_100003974;
  v116 = &unk_100385A08;
  _Block_copy(&aBlock);
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();

  v86 = DispatchWorkItem.init(flags:block:)();

  *(v4 + 368) = v86;

  v88 = *(v4 + 264);
  v87 = *(v4 + 272);
  sub_10000BE18((v4 + 240), v88);
  (*(*(v87 + 8) + 16))(v88);
  + infix(_:_:)();
  v89 = *(v100 + 8);
  v90 = v101;
  v89(v71, v101);

  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v89(v70, v90);
  v94(v108, v82);
}

void sub_10016900C(uint64_t a1, uint64_t a2, double a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 72);
    if (v6 && *(v6 + 16) == a2)
    {
      if (qword_10039D6F0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000403C(v7, qword_1003A51C8);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134218240;
        *(v10 + 4) = a2;
        *(v10 + 12) = 2048;
        *(v10 + 14) = a3;
        _os_log_impl(&_mh_execute_header, v8, v9, "renew identity #%lld after %fs", v10, 0x16u);
      }

      sub_100167CE8();
      sub_100166890();
      v12 = v11;
      sub_100167650(v11);
      sub_10016807C(v12);

      return;
    }
  }

  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_1003A51C8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "identity mismatch, abort renewal", v16, 2u);
  }
}

uint64_t sub_10016950C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SecCertificate(0);
  v3 = static SecCertificateRef.parse(derRepresentation:)();
  if (v3)
  {
    v4 = v3;
    if (!sub_10016AA00())
    {
      v9 = v2[38];
      v10 = v2[39];
      sub_10000BE18(v2 + 35, v9);
      (*(v10 + 8))(v4, v9, v10);

      return 1;
    }

    swift_willThrow();
  }

  else
  {
    if (qword_10039D6F0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000403C(v5, qword_1003A51C8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Invalid X.509 format (BAA)", v8, 2u);
    }

    sub_100020C74(10005, 0, 0, 0);
    swift_willThrow();
  }

  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000403C(v11, qword_1003A51C8);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v16 = String.init<A>(describing:)();
    v18 = sub_100008F6C(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Certificate verification failed: %s", v14, 0xCu);
    sub_10000959C(v15);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_100169810(uint64_t a1, uint64_t a2)
{
  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A51C8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v8 = 136315394;
    v85 = 0xD000000000000010;
    v86 = 0x8000000100352A30;
    String.append(_:)(*(v2 + 40));
    v9._countAndFlagsBits = 93;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v10 = sub_100008F6C(0xD000000000000010, 0x8000000100352A30, v93);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = showFunction(signature:_:)(0xD000000000000030, 0x8000000100352C00, _swiftEmptyArrayStorage);
    v13 = sub_100008F6C(v11, v12, v93);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v93[0] = _swiftEmptyArrayStorage;
  type metadata accessor for SecCertificate(0);
  v14 = static SecCertificateRef.parse(derRepresentation:)();
  if (v14)
  {
    v15 = v14;
    v16 = SecCertificateRef.publicKey.getter();
    if (v16)
    {
      v17 = v16;
      if (SecKeyRef.isAlgorithmSupported(_:for:)(kSecKeyAlgorithmECDSASignatureMessageX962SHA256, kSecKeyOperationTypeVerify))
      {
      }

      else
      {
        sub_100020C74(10005, 0xD00000000000001CLL, 0x8000000100352840, 0);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(v93[0] + 16) >= *(v93[0] + 24) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }

    else
    {
      sub_100020C74(10005, 0x696C627570206F4ELL, 0xED000079656B2063, 0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(v93[0] + 16) >= *(v93[0] + 24) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v19 = sub_10016AA00();
    if (v19)
    {
      v20 = v19;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(v93[0] + 16) >= *(v93[0] + 24) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v21 = sub_10016AE78();
    if (v21)
    {
      v22 = v21;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(v93[0] + 16) >= *(v93[0] + 24) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v23 = sub_10016B094();
    if (v23)
    {
      v24 = v23;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(v93[0] + 16) >= *(v93[0] + 24) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    sub_10009B644(&v85);
    v25 = v91;
    v26 = v92;

    if (v26)
    {
      sub_100020C74(10005, 0xD00000000000001DLL, 0x80000001003526D0, 0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(v93[0] + 16) >= *(v93[0] + 24) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v27 = a1;
    }

    else
    {
      v27 = a1;
      if (!v25)
      {
        goto LABEL_40;
      }

      v85 = 0;
      v86 = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      v85 = 0xD000000000000028;
      v86 = 0x8000000100352BD0;
      v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v28);

      sub_100020C74(10010, v85, v86, 0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(v93[0] + 16) >= *(v93[0] + 24) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_40:
    v78 = a2;
    sub_10009BACC(&v85);
    v29 = v86;
    v75 = v85;
    v81 = v87;
    v83 = v88;
    v84 = v15;
    v30 = v89;
    v31 = v90;
    sub_10009BEC4(&v85);
    v79 = v85;
    v80 = v87;
    v32 = v89;
    v82 = v90;
    v33 = *(v2 + 184);
    v77 = v88;
    v34 = *(v2 + 192);
    v35 = v27;
    if (v31)
    {
      if (v30 == v33 && v31 == v34)
      {
        v36 = v86;
        goto LABEL_49;
      }

      v36 = v86;
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
LABEL_49:
        v76 = v35;
        if (v82)
        {
          if (v32 == v33 && v82 == v34 || (v40 = v82, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
            if (v29)
            {
LABEL_54:
              v41 = v2;
              v42 = v78;
              v43 = v77;
              v44 = v81;
              if (!v36)
              {
                v45 = v75;
                goto LABEL_71;
              }

              v45 = v75;
              if ((v75 != v79 || v29 != v36) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
LABEL_71:
                v85 = 0;
                v86 = 0xE000000000000000;
                _StringGuts.grow(_:)(32);

                v85 = 0xD000000000000015;
                v86 = 0x8000000100352B90;
                v49 = 0xE300000000000000;
                if (v29)
                {
                  v50 = v29;
                }

                else
                {
                  v50 = 0xE300000000000000;
                }

                v51._countAndFlagsBits = v45;
                v51._object = v50;
                String.append(_:)(v51);

                v52._countAndFlagsBits = 0x203A616162202CLL;
                v52._object = 0xE700000000000000;
                String.append(_:)(v52);
                if (v36)
                {
                  v53 = v79;
                }

                else
                {
                  v53 = 7104878;
                }

                if (v36)
                {
                  v49 = v36;
                }

                v54._countAndFlagsBits = v53;
                v54._object = v49;
                String.append(_:)(v54);

                sub_100020C74(10010, v85, v86, 0);
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*(v93[0] + 16) >= *(v93[0] + 24) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v44 = v81;
                if (!v83)
                {
                  goto LABEL_82;
                }

                goto LABEL_65;
              }

LABEL_64:
              if (!v83)
              {
LABEL_82:
                v44 = 7104878;
                if (v43)
                {
LABEL_83:
                  v85 = 0;
                  v86 = 0xE000000000000000;
                  _StringGuts.grow(_:)(32);

                  v85 = 0xD000000000000015;
                  v86 = 0x8000000100352BB0;
                  v55 = v44;
                  if (v83)
                  {
                    v56 = v83;
                  }

                  else
                  {
                    v56 = 0xE300000000000000;
                  }

                  v57 = v56;
                  String.append(_:)(*&v55);

                  v58._countAndFlagsBits = 0x203A616162202CLL;
                  v58._object = 0xE700000000000000;
                  String.append(_:)(v58);

                  if (v43)
                  {
                    v59 = v80;
                  }

                  else
                  {
                    v59 = 7104878;
                  }

                  if (v43)
                  {
                    v60 = v43;
                  }

                  else
                  {
                    v60 = 0xE300000000000000;
                  }

                  v61 = v60;
                  String.append(_:)(*&v59);

                  sub_100020C74(10010, v85, v86, 0);
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*(v93[0] + 16) >= *(v93[0] + 24) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_97:
                  v62 = sub_10009C2B8();
                  if (v63 & 1) != 0 || (v64 = v62, sub_10009C2B8(), (v66))
                  {
                    v67 = 0xD00000000000001ALL;
                    v68 = 0x80000001003527B0;
                    v69 = 10005;
                  }

                  else
                  {
                    v70 = v65;
                    if (v64)
                    {
                      v85 = 0;
                      v86 = 0xE000000000000000;
                      _StringGuts.grow(_:)(49);

                      v85 = 0xD000000000000022;
                      v86 = 0x80000001003527D0;
                      v71._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                      String.append(_:)(v71);

                      v72._object = 0xED000030203A6465;
                      v72._countAndFlagsBits = 0x746365707865202CLL;
                      String.append(_:)(v72);
                      sub_100020C74(10010, v85, v86, 0);
                      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                      if (*(v93[0] + 16) >= *(v93[0] + 24) >> 1)
                      {
                        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      }

                      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    }

                    if (v70 == 1)
                    {

LABEL_103:
                      sub_10016A6EC(v93, v41, v76, v42);
                    }

                    v85 = 0;
                    v86 = 0xE000000000000000;
                    _StringGuts.grow(_:)(44);

                    v85 = 0xD00000000000001DLL;
                    v86 = 0x8000000100352800;
                    v73._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                    String.append(_:)(v73);

                    v74._object = 0xED000031203A6465;
                    v74._countAndFlagsBits = 0x746365707865202CLL;
                    String.append(_:)(v74);
                    v67 = v85;
                    v68 = v86;
                    v69 = 10010;
                  }

                  sub_100020C74(v69, v67, v68, 0);
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*(v93[0] + 16) >= *(v93[0] + 24) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                  goto LABEL_103;
                }

LABEL_96:

                goto LABEL_97;
              }

LABEL_65:
              if (!v43 || (v44 != v80 || v83 != v43) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_83;
              }

              goto LABEL_96;
            }

LABEL_63:
            v45 = 7104878;
            v41 = v2;
            v42 = v78;
            v43 = v77;
            v44 = v81;
            if (v36)
            {
              goto LABEL_71;
            }

            goto LABEL_64;
          }
        }

        else
        {
          v40 = 0xE300000000000000;
          v32 = 7104878;
        }

        v85 = 0;
        v86 = 0xE000000000000000;
        _StringGuts.grow(_:)(31);

        v85 = 0xD000000000000014;
        v86 = 0x8000000100352B70;

        v46._countAndFlagsBits = v32;
        v46._object = v40;
        String.append(_:)(v46);

        v47._countAndFlagsBits = 0x203A6469657320;
        v47._object = 0xE700000000000000;
        String.append(_:)(v47);
        v48._countAndFlagsBits = v33;
        v48._object = v34;
        String.append(_:)(v48);
        sub_100020C74(10010, v85, v86, 0);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(v93[0] + 16) >= *(v93[0] + 24) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if (v29)
        {
          goto LABEL_54;
        }

        goto LABEL_63;
      }
    }

    else
    {
      v31 = 0xE300000000000000;
      v30 = 7104878;
      v36 = v86;
    }

    v85 = 0;
    v86 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v85 = 0xD000000000000015;
    v86 = 0x8000000100352820;

    v37._countAndFlagsBits = v30;
    v37._object = v31;
    String.append(_:)(v37);

    v38._countAndFlagsBits = 0x203A6469657320;
    v38._object = 0xE700000000000000;
    String.append(_:)(v38);
    v39._countAndFlagsBits = v33;
    v39._object = v34;
    String.append(_:)(v39);
    sub_100020C74(10010, v85, v86, 0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(v93[0] + 16) >= *(v93[0] + 24) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_49;
  }

  sub_100020C74(10005, 0xD00000000000001ALL, 0x8000000100352B50, 0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(v93[0] + 16) >= *(v93[0] + 24) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_10016A6EC(v93, v2, a1, a2);
}

uint64_t sub_10016A6EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*result + 16))
  {
    v4 = result;
    sub_10000CCE4(a2 + 120, v24);
    v6 = v25;
    v7 = v26;
    sub_10000BE18(v24, v25);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1790;
    *(inited + 32) = 1701605234;
    *(inited + 40) = 0xE400000000000000;
    v9 = *(a2 + 32);
    *(inited + 72) = &type metadata for Int;
    *(inited + 80) = &protocol witness table for Int;
    *(inited + 48) = v9;
    *(inited + 88) = 0x747365676964;
    *(inited + 96) = 0xE600000000000000;
    v10 = Data.sha256Digest.getter();
    v12 = v11;
    *(inited + 128) = &type metadata for Data;
    v13 = sub_10016532C();
    *(inited + 104) = v10;
    *(inited + 112) = v12;
    *(inited + 136) = v13;
    *(inited + 144) = 0x73726F727265;
    *(inited + 152) = 0xE600000000000000;
    v14 = *(*v4 + 16);
    if (v14)
    {
      v23 = v6;

      sub_10004E2DC(0, v14, 0);
      type metadata accessor for SecurityError(0);
      v15 = 32;
      do
      {
        _print_unlocked<A, B>(_:_:)();
        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          sub_10004E2DC((v16 > 1), v17 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v17 + 1;
        v18 = &_swiftEmptyArrayStorage[2 * v17];
        v18[4] = 0;
        v18[5] = 0xE000000000000000;
        v15 += 8;
        --v14;
      }

      while (v14);

      v6 = v23;
    }

    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_10001A570(&qword_10039E278, &qword_10039E270, &unk_1002C3BE0, &protocol conformance descriptor for [A]);
    v19 = BidirectionalCollection<>.joined(separator:)();
    v21 = v20;

    *(inited + 184) = &type metadata for String;
    *(inited + 192) = &protocol witness table for String;
    *(inited + 160) = v19;
    *(inited + 168) = v21;
    v22 = sub_100184010(inited);
    swift_setDeallocating();
    sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
    swift_arrayDestroy();
    sub_1000C2288(0x27u, v22, v6, v7);

    return sub_10000959C(v24);
  }

  return result;
}

uint64_t sub_10016AA00()
{
  v1 = v0;
  sub_10009B644(&v40);
  v3 = v40;
  v2 = v41;

  if (!v2)
  {
    if (qword_10039D6F0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000403C(v15, qword_1003A51C8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Missing BAA certificate OS version", v18, 2u);
    }

    v13 = 0xD00000000000001DLL;
    v14 = 0x80000001003526D0;
    goto LABEL_13;
  }

  v4 = sub_100189160(v3, v2);
  if (v7)
  {
    if (qword_10039D6F0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000403C(v8, qword_1003A51C8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Malformed BAA certificate OS version", v11, 2u);
    }

    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v40 = 0xD000000000000020;
    v41 = 0x80000001003526F0;
    v12._countAndFlagsBits = v3;
    v12._object = v2;
    String.append(_:)(v12);

    v13 = v40;
    v14 = v41;
LABEL_13:
    v19 = 10005;
    return sub_100020C74(v19, v13, v14, 0);
  }

  v21 = v4;
  v22 = v5;
  v23 = v6;

  v24 = sub_10000BE18((v0 + 328), *(v0 + 352));
  v26 = *(*v24 + 16);
  v25 = *(*v24 + 24);
  v27 = *(*v24 + 32);
  if (v21 != v26 || v22 != v25 || v23 != v27)
  {
    if (qword_10039D6F0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000403C(v30, qword_1003A51C8);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134219264;
      *(v33 + 4) = v21;
      *(v33 + 12) = 2048;
      *(v33 + 14) = v22;
      *(v33 + 22) = 2048;
      *(v33 + 24) = v23;
      *(v33 + 32) = 2048;
      *(v33 + 34) = v26;
      *(v33 + 42) = 2048;
      *(v33 + 44) = v25;
      *(v33 + 52) = 2048;
      *(v33 + 54) = v27;
      _os_log_impl(&_mh_execute_header, v31, v32, "BAA certificate OS version mismatch. certificate: %ld.%ld.%ld, system: %ld.%ld.%ld", v33, 0x3Eu);
    }

    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v34._countAndFlagsBits = 0xD00000000000002CLL;
    v34._object = 0x8000000100352720;
    String.append(_:)(v34);
    v35._countAndFlagsBits = sub_100187828(v21, v22, v23);
    String.append(_:)(v35);

    v36._object = 0x8000000100352750;
    v36._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v36);
    v37 = sub_10000BE18((v1 + 328), *(v1 + 352));
    v38._countAndFlagsBits = sub_100187828(*(*v37 + 16), *(*v37 + 24), *(*v37 + 32));
    String.append(_:)(v38);

    v39._countAndFlagsBits = 46;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    v13 = v40;
    v14 = v41;
    v19 = 10010;
    return sub_100020C74(v19, v13, v14, 0);
  }

  return 0;
}

uint64_t sub_10016AE78()
{
  sub_10009B644(&v24);
  v1 = v26;
  v2 = v27;

  if (!v2)
  {
    v8 = 0xD00000000000001FLL;
    v9 = 0x8000000100352AD0;
    goto LABEL_5;
  }

  v3 = sub_100189160(v1, v2);
  if (v6)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v24 = 0xD000000000000022;
    v25 = 0x8000000100352AF0;
    v7._countAndFlagsBits = v1;
    v7._object = v2;
    String.append(_:)(v7);

    v8 = v24;
    v9 = v25;
LABEL_5:
    v10 = 10005;
    return sub_100020C74(v10, v8, v9, 0);
  }

  v12 = v3;
  v13 = v4;
  v14 = v5;

  v15 = sub_10000BE18((v0 + 328), *(v0 + 352));
  if (v12 == *(*v15 + 16) && v13 == *(*v15 + 24) && v14 == *(*v15 + 32))
  {
    return 0;
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(71);
  v18._countAndFlagsBits = 0xD00000000000002ELL;
  v18._object = 0x8000000100352B20;
  String.append(_:)(v18);
  v19._countAndFlagsBits = sub_100187828(v12, v13, v14);
  String.append(_:)(v19);

  v20._object = 0x8000000100352750;
  v20._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v20);
  v21 = sub_10000BE18((v0 + 328), *(v0 + 352));
  v22._countAndFlagsBits = sub_100187828(*(*v21 + 16), *(*v21 + 24), *(*v21 + 32));
  String.append(_:)(v22);

  v23._countAndFlagsBits = 46;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v8 = v24;
  v9 = v25;
  v10 = 10010;
  return sub_100020C74(v10, v8, v9, 0);
}

uint64_t sub_10016B094()
{
  sub_10009B644(&v24);
  v1 = v26;
  v2 = v27;

  if (!v2)
  {
    v8 = 0xD00000000000001FLL;
    v9 = 0x8000000100352A50;
    goto LABEL_5;
  }

  v3 = sub_100189160(v1, v2);
  if (v6)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v24 = 0xD000000000000022;
    v25 = 0x8000000100352A70;
    v7._countAndFlagsBits = v1;
    v7._object = v2;
    String.append(_:)(v7);

    v8 = v24;
    v9 = v25;
LABEL_5:
    v10 = 10005;
    return sub_100020C74(v10, v8, v9, 0);
  }

  v12 = v3;
  v13 = v4;
  v14 = v5;

  v15 = sub_10000BE18((v0 + 328), *(v0 + 352));
  if (v12 == *(*v15 + 16) && v13 == *(*v15 + 24) && v14 == *(*v15 + 32))
  {
    return 0;
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(71);
  v18._countAndFlagsBits = 0xD00000000000002ELL;
  v18._object = 0x8000000100352AA0;
  String.append(_:)(v18);
  v19._countAndFlagsBits = sub_100187828(v12, v13, v14);
  String.append(_:)(v19);

  v20._object = 0x8000000100352750;
  v20._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v20);
  v21 = sub_10000BE18((v0 + 328), *(v0 + 352));
  v22._countAndFlagsBits = sub_100187828(*(*v21 + 16), *(*v21 + 24), *(*v21 + 32));
  String.append(_:)(v22);

  v23._countAndFlagsBits = 46;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v8 = v24;
  v9 = v25;
  v10 = 10010;
  return sub_100020C74(v10, v8, v9, 0);
}

uint64_t sub_10016B308(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a1;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v20 = v8;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  sub_100004074(&qword_1003A5448, &qword_1002C99E8);
  v16 = v26;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  if (v16)
  {
    return (*(v13 + 8))(v15, v12);
  }

  (*(v13 + 8))(v15, v12);
  result = v24;
  *v19 = v25;
  return result;
}

uint64_t sub_10016B478(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static DispatchWorkItemFlags.barrier.getter();
  v12 = v4;
  v13 = a1;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_10016B594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  OS_dispatch_queue.sync<A>(flags:execute:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10016B6A0()
{
  String.append(_:)(*(*v0 + 40));
  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000010;
}

uint64_t sub_10016B7F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10016B830()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10016B8F4()
{
  type metadata accessor for Date();
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = v0[4];

  sub_10016900C(v1, v2, v3);
}

uint64_t sub_10016B960(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10016B978()
{
  result = qword_1003A5458;
  if (!qword_1003A5458)
  {
    sub_1000040BC(&qword_1003A5450, &qword_1002C99F0);
    sub_10016BA2C(&qword_1003A4D70, type metadata accessor for BAASigningIdentity, &unk_1002C9448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5458);
  }

  return result;
}

uint64_t sub_10016BA2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10016BA74()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A5460);
  sub_10000403C(v0, qword_1003A5460);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

uint64_t sub_10016BAD0()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 64);
  if (v6)
  {
    v7 = *(v0 + 56);
    v8 = *(v0 + 24);
    v20 = *(v0 + 16);
    v21 = v8;

    v9._countAndFlagsBits = 58;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    String.append(_:)(*(v0 + 40));

    v10._countAndFlagsBits = v7;
    v10._object = v6;
    String.append(_:)(v10);

    v1 = v21;
    static String.Encoding.utf8.getter();
    v11 = String.data(using:allowLossyConversion:)();
    v13 = v12;

    v14 = *(v3 + 8);
    v3 += 8;
    v14(v5, v2);
    if (v13 >> 60 != 15)
    {
      return v11;
    }

    __break(1u);
  }

  v15 = *(v1 + 24);
  v20 = *(v1 + 16);
  v21 = v15;

  v16._countAndFlagsBits = 58;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  String.append(_:)(*(v1 + 40));
  static String.Encoding.utf8.getter();
  v11 = String.data(using:allowLossyConversion:)();
  v18 = v17;

  result = (*(v3 + 8))(v5, v2);
  if (v18 >> 60 != 15)
  {
    return v11;
  }

  __break(1u);
  return result;
}

unint64_t sub_10016BCB8()
{
  _StringGuts.grow(_:)(23);

  String.append(_:)(*(v0 + 16));
  v1._countAndFlagsBits = 0x203A656C6F72202CLL;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + 40));
  v2._countAndFlagsBits = 93;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0xD000000000000011;
}

uint64_t sub_10016BD60()
{
  v1 = v0;
  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A5460);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_10016BCB8();
    v8 = sub_100008F6C(v6, v7, v16);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v16);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  dispatch thunk of DispatchWorkItem.cancel()();

  sub_10000CCE4(v0 + 80, v16);
  v12 = v17;
  v13 = v18;
  sub_10000BE18(v16, v17);
  v14 = (*(v13 + 8))(v12, v13);
  sub_10000959C(v16);
  if (v14)
  {
    sub_10016E2B8();
  }

  sub_10000959C((v1 + 80));
  sub_10000959C((v1 + 120));

  sub_10000959C((v1 + 168));
  sub_10000959C((v1 + 208));
  sub_10000959C((v1 + 248));

  return v1;
}

uint64_t sub_10016BFDC()
{
  sub_10016BD60();

  return swift_deallocClassInstance();
}

void sub_10016C034(uint64_t a1@<X0>, char a2@<W3>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v6 = a3;
  v7 = *(a1 + 72);
  if (v7)
  {
    v9 = *(v7 + 24);
    v8 = *(v7 + 32);

    sub_1000094F4(v9, v8);
    v10 = sub_10016FB4C(v9, v8);
    sub_100009548(v9, v8);
    if (v10)
    {
      v11 = sub_10015BA94();
      if (!v3)
      {
        *a3 = v11;
        a3[1] = v12;
        a3[2] = v7;
        return;
      }

      _s3__C4CodeOMa_13(0);
      swift_errorRetain();
      sub_100170988(&qword_10039D978, _s3__C4CodeOMa_13, &unk_1002BF078);
      v13 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if ((v13 & 1) == 0 || (a2 & 1) == 0)
      {

        return;
      }

      if (qword_10039D6F8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000403C(v14, qword_1003A5460);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Recoverable signature failure", v17, 2u);
      }

      v4 = 0;
    }

    v6 = a3;
    sub_10016E2B8();
  }

  if (a2)
  {
    sub_10016CEF8();
    if (!v4)
    {
      v19 = v18;
      v20 = sub_10015BA94();
      v22 = v21;
      sub_10016DC20(v19);
      sub_10016E648(v19);
      *v6 = v20;
      v6[1] = v22;
      v6[2] = v19;
    }
  }

  else
  {
    sub_100020C74(10006, 0, 0, 0);
    swift_willThrow();
  }
}

void sub_10016C314(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v7 = *(a1 + 72);
  if (v7)
  {
    v8 = *(v7 + 24);
    v9 = *(v7 + 32);

    sub_1000094F4(v8, v9);
    v10 = sub_10016FB4C(v8, v9);
    sub_100009548(v8, v9);
    if (v10)
    {
      v11 = sub_100020C74(10004, 0, 0, 0);
      swift_willThrow();
      _s3__C4CodeOMa_13(0);
      sub_100170988(&qword_10039D978, _s3__C4CodeOMa_13, &unk_1002BF078);
      v12 = v11;
      LOBYTE(v11) = static _ErrorCodeProtocol.~= infix(_:_:)();

      if ((v11 & 1) == 0 || (a4 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (qword_10039D6F8 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000403C(v13, qword_1003A5460);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Recoverable signature failure", v16, 2u);
      }

      v5 = 0;
    }

    sub_10016E2B8();
  }

  if ((a4 & 1) == 0)
  {
    sub_100020C74(10006, 0, 0, 0);
    swift_willThrow();
    return;
  }

  sub_10016CEF8();
  if (v5)
  {
    return;
  }

  sub_100020C74(10004, 0, 0, 0);
  swift_willThrow();
  sub_10015E010();
  swift_willThrow();
LABEL_15:
}

void sub_10016C580(void *a1@<X0>, BOOL *a2@<X8>, double a3@<D0>)
{
  v7 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - v8;
  v10 = type metadata accessor for Date();
  v11 = __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v17 = a1[9];
  if (!v17)
  {
    goto LABEL_19;
  }

  v45 = v16;
  v46 = &v43 - v15;
  v44 = v14;
  v47 = a2;
  type metadata accessor for SecCertificate(0);
  v18 = *(v17 + 24);
  v19 = *(v17 + 32);

  sub_1000094F4(v18, v19);
  v20 = static SecCertificateRef.parse(derRepresentation:)();
  sub_100009548(v18, v19);
  if (!v20)
  {

    v31 = 0;
    a2 = v47;
    goto LABEL_20;
  }

  v21 = a1[34];
  v22 = a1[35];
  sub_10000BE18(a1 + 31, v21);
  (*(v22 + 8))(v20, v21, v22);
  if (!v3)
  {
    SecCertificateNotValidAfter();
    v32 = v46;
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_10000BE18(a1 + 26, a1[29]);
    sub_100043268(v9);
    v33 = v44;
    v34 = v45;
    if ((*(v45 + 48))(v9, 1, v44) != 1)
    {
      (*(v34 + 32))(v13, v9, v33);
      Date.timeIntervalSince(_:)();
      v41 = v40;

      v42 = *(v34 + 8);
      v42(v13, v33);
      v42(v32, v33);
      v31 = v41 > a3;
      a2 = v47;
      goto LABEL_20;
    }

    v35 = v33;
    sub_10000BD44(v9, &unk_1003A3BE0, &qword_1002C36F0);
    if (qword_10039D6F8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000403C(v36, qword_1003A5460);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Could not calculate secure now", v39, 2u);
      v34 = v45;
    }

    else
    {
    }

    a2 = v47;
    (*(v34 + 8))(v46, v35);
LABEL_19:
    v31 = 0;
    goto LABEL_20;
  }

  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000403C(v23, qword_1003A5460);
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v49 = v27;
    *v26 = 136315138;
    v48 = v3;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v28 = String.init<A>(describing:)();
    v30 = sub_100008F6C(v28, v29, &v49);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Certificate verification failed: %s", v26, 0xCu);
    sub_10000959C(v27);
  }

  else
  {
  }

  v31 = 0;
  a2 = v47;
LABEL_20:
  *a2 = v31;
}

uint64_t sub_10016CAE8(uint64_t a1)
{
  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A5460);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v6 = 136315394;
    String.append(_:)(*(a1 + 40));
    v7._countAndFlagsBits = 93;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8 = sub_100008F6C(0xD000000000000010, 0x8000000100352CB0, &v20);

    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000012, 0x80000001003526B0, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v20);

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  sub_10016CEF8();
  if (v1)
  {
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error creating identity: %@", v16, 0xCu);
      sub_10000BD44(v17, &unk_10039E220, &qword_1002C3D60);
    }

    return swift_willThrow();
  }

  else
  {
    v13 = v12;
    sub_10016DC20(v12);
    sub_10016E648(v13);
  }
}

void sub_10016CEF8()
{
  v2 = v0;
  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A5460);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v6 = 136315394;
    String.append(_:)(*(v0 + 40));
    v7._countAndFlagsBits = 93;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8 = sub_100008F6C(0xD000000000000010, 0x8000000100352CB0, &v48);

    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000010, 0x8000000100352910, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v48);

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v12 = static GlobalState.shared;
  [*(static GlobalState.shared + 88) lock];
  while (*(v12 + 104) > 0 || *(v12 + 112) == 1)
  {
    [*(v12 + 88) wait];
  }

  v13 = *(v12 + 96);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v12 + 96) = v15;
  [*(v12 + 88) unlock];
  if (*(v12 + 56))
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v12 + 52);
  }

  [*(v12 + 88) lock];
  v17 = *(v12 + 96);
  v14 = __OFSUB__(v17, 1);
  v18 = v17 - 1;
  if (v14)
  {
    goto LABEL_30;
  }

  *(v12 + 96) = v18;
  if (!v18)
  {
    [*(v12 + 88) broadcast];
  }

  type metadata accessor for AAASigningIdentity();
  [*(v12 + 88) unlock];
  TMGetKernelMonotonicClock();
  v20 = sub_10015A408(v16, v19);
  if (!v1)
  {
    v34 = *(v20 + 24);
    v35 = *(v20 + 32);
    v36 = v20;
    sub_1000094F4(v34, v35);
    sub_10016FE38(v34, v35);
    sub_100009548(v34, v35);
    v46 = v2[18];
    v47 = v2[19];
    sub_10000BE18(v2 + 15, v46);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1670;
    *(inited + 32) = 1701605234;
    *(inited + 40) = 0xE400000000000000;
    v38 = v2[4];
    *(inited + 72) = &type metadata for Int;
    *(inited + 80) = &protocol witness table for Int;
    *(inited + 48) = v38;
    *(inited + 88) = 0x747365676964;
    *(inited + 96) = 0xE600000000000000;
    v40 = *(v36 + 24);
    v39 = *(v36 + 32);
    sub_1000094F4(v40, v39);
    v41 = Data.sha256Digest.getter();
    v43 = v42;
    sub_100009548(v40, v39);
    v44 = Data.base64EncodedString(options:)(0);
    sub_100009548(v41, v43);
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = v44;
    v45 = sub_100184010(inited);
    swift_setDeallocating();
    sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
    swift_arrayDestroy();
    sub_1000C2288(8u, v45, v46, v47);

    sub_10002B31C(&off_10037E198);
    return;
  }

  v21 = v2[18];
  v22 = v2[19];
  sub_10000BE18(v2 + 15, v21);
  sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1002C1670;
  *(v23 + 32) = 1701605234;
  *(v23 + 40) = 0xE400000000000000;
  v24 = v2[4];
  *(v23 + 72) = &type metadata for Int;
  *(v23 + 80) = &protocol witness table for Int;
  *(v23 + 48) = v24;
  *(v23 + 88) = 0x726F727265;
  *(v23 + 96) = 0xE500000000000000;
  swift_errorRetain();
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  v25 = String.init<A>(describing:)();
  *(v23 + 128) = &type metadata for String;
  *(v23 + 136) = &protocol witness table for String;
  *(v23 + 104) = v25;
  *(v23 + 112) = v26;
  v27 = sub_100184010(v23);
  swift_setDeallocating();
  sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
  swift_arrayDestroy();
  sub_1000C2288(0xAu, v27, v21, v22);

  swift_errorRetain();
  type metadata accessor for SecurityError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v28 = v48;
  sub_100170988(&qword_10039D998, type metadata accessor for SecurityError, &unk_1002BEFD0);
  _BridgedStoredNSError.code.getter();
  if (v48 != 10002)
  {

LABEL_28:
    swift_willThrow();
    return;
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "AAA certificate creation failed, increase validity for next attempt", v31, 2u);
  }

  v32 = v2[38];
  v14 = __OFADD__(v32, 86400);
  v33 = v32 + 86400;
  if (!v14)
  {
    if (v33 <= 2592000)
    {
      v2[38] = v33;
    }

    goto LABEL_28;
  }

LABEL_31:
  __break(1u);
}

unint64_t sub_10016D61C()
{
  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A5460);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315394;
    v18 = 0xD000000000000010;
    v19[0] = v5;
    String.append(_:)(*(v0 + 40));
    v6._countAndFlagsBits = 93;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = sub_100008F6C(0xD000000000000010, 0x8000000100352CB0, v19);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0x6E65644964616F6CLL, 0xEE00292879746974, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, v19);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  sub_10000BE18((v0 + 80), v11);
  v13 = sub_10016BAD0();
  v15 = v14;
  v16 = sub_100004074(&qword_1003A56B0, &qword_1002C9AC0);
  sub_1001708D4();
  sub_10009A1A4(v13, v15, v11, v16, v12);
  sub_100009548(v13, v15);
  return v18;
}

uint64_t sub_10016DC20(void *a1)
{
  v3 = type metadata accessor for JSONEncoder.OutputFormatting();
  v47 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_1003A5460);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v45 = v1;
  if (v9)
  {
    v10 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = v44;
    *v10 = 136315394;
    v48 = 0xD000000000000010;
    v49 = 0x8000000100352CB0;
    String.append(_:)(*(v1 + 40));
    v11._countAndFlagsBits = 93;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v12 = sub_100008F6C(v48, v49, &v50);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1002C1660;
    *(v13 + 56) = type metadata accessor for AAASigningIdentity();
    *(v13 + 32) = a1;

    v14 = showFunction(signature:_:)(0xD000000000000010, 0x80000001003528F0, v13);
    v15 = a1;
    v17 = v16;

    v18 = sub_100008F6C(v14, v17, &v50);
    a1 = v15;

    *(v10 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for JSONEncoder();
  v48 = a1;
  v50 = _swiftEmptyArrayStorage;
  sub_100170988(&qword_1003A1068, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_100004074(&qword_1003A1070, &qword_1002C5170);
  sub_10001A570(&qword_1003A1078, &qword_1003A1070, &qword_1002C5170, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for AAASigningIdentity();
  sub_100170988(&qword_1003A4EC8, type metadata accessor for AAASigningIdentity, &unk_1002C965C);
  v19 = v46;
  v20 = static JSONEncoder.encodeClean<A>(_:outputFormatting:)();
  if (v19)
  {
    return (*(v47 + 8))(v5, v3);
  }

  v44 = a1;
  v23 = v20;
  v24 = v21;
  (*(v47 + 8))(v5, v3);
  v25 = v45[14];
  sub_10000BE18(v45 + 10, v45[13]);
  v26 = sub_10016BAD0();
  v28 = v27;
  v29 = *(v25 + 40);
  v46 = v23;
  v47 = v24;
  v29();
  sub_100009548(v26, v28);
  v30 = v45;
  v31 = v45[18];
  v43 = v45[19];
  v42[1] = sub_10000BE18(v45 + 15, v31);
  sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1670;
  *(inited + 32) = 1701605234;
  v42[0] = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  v33 = v30[4];
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = &protocol witness table for Int;
  *(inited + 48) = v33;
  *(inited + 88) = 0x747365676964;
  *(inited + 96) = 0xE600000000000000;
  v34 = v44;
  v35 = v44[3];
  v36 = v44[4];
  sub_1000094F4(v35, v36);
  v37 = Data.sha256Digest.getter();
  v39 = v38;
  sub_100009548(v35, v36);
  v40 = Data.base64EncodedString(options:)(0);
  sub_100009548(v37, v39);
  *(inited + 128) = &type metadata for String;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = v40;
  v41 = sub_100184010(inited);
  swift_setDeallocating();
  sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
  swift_arrayDestroy();
  sub_1000C2288(9u, v41, v31, v43);
  sub_100009548(v46, v47);

  v30[9] = v34;
}

void sub_10016E2B8()
{
  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A5460);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315394;
    v15[0] = v5;
    String.append(_:)(*(v0 + 40));
    v6._countAndFlagsBits = 93;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = sub_100008F6C(0xD000000000000010, 0x8000000100352CB0, v15);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0xD000000000000010, 0x80000001003528D0, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, v15);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v0 + 72))
  {
    v11 = *(v0 + 112);
    sub_10000BE18((v0 + 80), *(v0 + 104));

    v12 = sub_10016BAD0();
    v14 = v13;
    (*(v11 + 48))();
    sub_100009548(v12, v14);
    sub_10015E010();

    *(v0 + 72) = 0;
  }
}

void sub_10016E648(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SecCertificate(0);
  v6 = a1[3];
  v7 = a1[4];
  sub_1000094F4(v6, v7);
  v8 = static SecCertificateRef.parse(derRepresentation:)();
  sub_100009548(v6, v7);
  if (v8)
  {
    SecCertificateNotValidAfter();
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_10016E8E0(a1[2], v5, 0);

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (qword_10039D6F8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000403C(v9, qword_1003A5460);

    v17 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v13 = sub_10015A0C8();
      v15 = sub_100008F6C(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v17, v10, "Invalid X.509 format (AAA). Not renewing: %s", v11, 0xCu);
      sub_10000959C(v12);
    }

    else
    {
      v16 = v17;
    }
  }
}

void sub_10016E8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v104 = a3;
  v107 = a1;
  v101 = type metadata accessor for DispatchTime();
  v100 = *(v101 - 8);
  v6 = __chkstk_darwin(v101);
  v99 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v95 = v91 - v8;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v9 - 8);
  v98 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  __chkstk_darwin(v11 - 8);
  v13 = v91 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v97 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v105 = v91 - v19;
  v20 = __chkstk_darwin(v18);
  v106 = v91 - v21;
  v22 = __chkstk_darwin(v20);
  v108 = v91 - v23;
  v96 = v24;
  __chkstk_darwin(v22);
  v26 = v91 - v25;
  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = sub_10000403C(v27, qword_1003A5460);
  v30 = v15 + 16;
  v29 = *(v15 + 16);
  v109 = a2;
  v29(v26, a2, v14);

  v103 = v28;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v33 = os_log_type_enabled(v31, v32);
  v110 = v15;
  v102 = v29;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v111 = v14;
    v35 = v34;
    v94 = swift_slowAlloc();
    v112[0] = v94;
    *v35 = 136315394;
    aBlock = 0xD000000000000010;
    v114 = 0x8000000100352CB0;
    String.append(_:)(*(v4 + 40));
    v36._countAndFlagsBits = 93;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    v37 = sub_100008F6C(aBlock, v114, v112);

    *(v35 + 4) = v37;
    *(v35 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1002C1790;
    *(v38 + 56) = &type metadata for Int64;
    *(v38 + 32) = v107;
    *(v38 + 88) = v111;
    v39 = sub_10000BE5C((v38 + 64));
    v29(v39, v26, v111);
    *(v38 + 120) = &type metadata for Int;
    *(v38 + 96) = v104;
    v40 = showFunction(signature:_:)(0xD000000000000034, 0x8000000100352890, v38);
    v42 = v41;

    v43 = v26;
    v44 = *(v110 + 8);
    v44(v43, v111);
    v45 = v40;
    v30 = v15 + 16;
    v46 = sub_100008F6C(v45, v42, v112);

    *(v35 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s.%s", v35, 0x16u);
    swift_arrayDestroy();

    v15 = v110;
    v14 = v111;
  }

  else
  {

    v47 = v26;
    v44 = *(v15 + 8);
    v44(v47, v14);
  }

  sub_10000BE18((v4 + 208), *(v4 + 232));
  sub_100043268(v13);
  v48 = (*(v15 + 48))(v13, 1, v14);
  v50 = v105;
  v49 = v106;
  if (v48 == 1)
  {
    sub_10000BD44(v13, &unk_1003A3BE0, &qword_1002C36F0);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      *(v53 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v51, v52, "Aborting identity #%lld renewal. Could not calculate secure now", v53, 0xCu);
    }

    return;
  }

  v54 = *(v15 + 32);
  v93 = v15 + 32;
  v92 = v54;
  v54(v108, v13, v14);
  Date.timeIntervalSince(_:)();
  if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v55 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v55 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v56 = 345600;
  v91[1] = v30;
  v94 = v44;
  if (v55 <= 345600 && (v56 = v55, v55 <= 86400))
  {

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();

    v74 = os_log_type_enabled(v72, v73);
    v71 = v99;
    if (v74)
    {
      v75 = v14;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock = v77;
      *v76 = 136315138;
      *(v76 + 4) = sub_100008F6C(*(v4 + 40), *(v4 + 48), &aBlock);
      _os_log_impl(&_mh_execute_header, v72, v73, "Certificate for %s will be renewed immediately", v76, 0xCu);
      sub_10000959C(v77);

      v14 = v75;
    }

    v58 = 0;
    v70 = v95;
    v65 = v110;
  }

  else
  {
    v112[0] = 86400;
    v112[1] = v56;
    swift_beginAccess();
    sub_100022438(v4 + 168, *(v4 + 192));
    v111 = v14;
    sub_10000A114();
    v14 = v111;
    static FixedWidthInteger.random<A>(in:using:)();
    swift_endAccess();
    Date.addingTimeInterval(_:)();
    Date.timeIntervalSince(_:)();
    v58 = v57;
    v102(v50, v49, v14);

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v61 = 136315650;
      *(v61 + 4) = sub_100008F6C(*(v4 + 40), *(v4 + 48), &aBlock);
      *(v61 + 12) = 2080;
      sub_100170988(&qword_10039F3E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v65 = v110;
      v66 = v50;
      v67 = v94;
      v94(v66, v111);
      v68 = sub_100008F6C(v62, v64, &aBlock);

      *(v61 + 14) = v68;
      *(v61 + 22) = 2048;
      *(v61 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v59, v60, "Certificate for %s will be renewed on %s (in %f seconds)", v61, 0x20u);
      swift_arrayDestroy();

      v14 = v111;

      v67(v106, v14);
    }

    else
    {

      v65 = v110;
      v69 = v94;
      v94(v50, v14);
      v69(v49, v14);
    }

    v70 = v95;
    v71 = v99;
  }

  v78 = v102;

  dispatch thunk of DispatchWorkItem.cancel()();

  static DispatchWorkItemFlags.barrier.getter();
  v79 = swift_allocObject();
  swift_weakInit();
  v80 = v97;
  v78(v97, v109, v14);
  v81 = *(v65 + 80);
  v82 = v14;
  v83 = (v81 + 48) & ~v81;
  v84 = swift_allocObject();
  v85 = v107;
  *(v84 + 2) = v79;
  *(v84 + 3) = v85;
  *(v84 + 4) = v58;
  *(v84 + 5) = v104;
  v92(&v84[v83], v80, v82);
  v117 = sub_100170850;
  v118 = v84;
  aBlock = _NSConcreteStackBlock;
  v114 = 1107296256;
  v115 = sub_100003974;
  v116 = &unk_100385A80;
  _Block_copy(&aBlock);
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();

  v86 = DispatchWorkItem.init(flags:block:)();

  *(v4 + 296) = v86;

  v88 = *(v4 + 232);
  v87 = *(v4 + 240);
  sub_10000BE18((v4 + 208), v88);
  (*(*(v87 + 8) + 16))(v88);
  + infix(_:_:)();
  v89 = *(v100 + 8);
  v90 = v101;
  v89(v71, v101);

  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v89(v70, v90);
  v94(v108, v82);
}

void sub_10016F5DC(uint64_t a1, uint64_t a2, double a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 72);
    if (v6 && *(v6 + 16) == a2)
    {
      v7 = Strong;
      if (qword_10039D6F8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000403C(v8, qword_1003A5460);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134218240;
        *(v11 + 4) = a2;
        *(v11 + 12) = 2048;
        *(v11 + 14) = a3;
        _os_log_impl(&_mh_execute_header, v9, v10, "renew identity #%lld after %fs", v11, 0x16u);
      }

      v12 = *(v7 + 72);
      if (v12)
      {

        sub_10015C570();
        sub_10016DC20(v12);
        sub_10016E648(v12);
      }

      else
      {
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, v18, "AAA Signer missing identity, not able to refresh certificates.", v19, 2u);
        }
      }

      return;
    }
  }

  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_1003A5460);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "identity mismatch, abort renewal", v16, 2u);
  }
}

uint64_t sub_10016FB4C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SecCertificate(0);
  v3 = static SecCertificateRef.parse(derRepresentation:)();
  if (v3)
  {
    v4 = v3;
    v5 = v2[34];
    v6 = v2[35];
    sub_10000BE18(v2 + 31, v5);
    (*(v6 + 8))(v4, v5, v6);

    return 1;
  }

  else
  {
    if (qword_10039D6F8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000403C(v7, qword_1003A5460);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Invalid X.509 format (AAA)", v10, 2u);
    }

    sub_100020C74(10005, 0, 0, 0);
    swift_willThrow();
    if (qword_10039D6F8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000403C(v11, qword_1003A5460);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v16 = String.init<A>(describing:)();
      v18 = sub_100008F6C(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Certificate verification failed: %s", v14, 0xCu);
      sub_10000959C(v15);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_10016FE38(uint64_t a1, uint64_t a2)
{
  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A5460);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136315394;
    v20[0] = 0xD000000000000010;
    v20[1] = 0x8000000100352CB0;
    v21 = v9;
    String.append(_:)(*(v2 + 40));
    v10._countAndFlagsBits = 93;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11 = sub_100008F6C(0xD000000000000010, 0x8000000100352CB0, &v21);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0xD000000000000030, 0x8000000100352C00, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, &v21);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v20[0] = _swiftEmptyArrayStorage;
  type metadata accessor for SecCertificate(0);
  v15 = static SecCertificateRef.parse(derRepresentation:)();
  if (v15)
  {
    v16 = v15;
    v17 = SecCertificateRef.publicKey.getter();
    if (v17)
    {
      v18 = v17;
      if (SecKeyRef.isAlgorithmSupported(_:for:)(kSecKeyAlgorithmECDSASignatureMessageX962SHA256, kSecKeyOperationTypeVerify))
      {
      }

      else
      {
        sub_100020C74(10005, 0xD00000000000001CLL, 0x8000000100352840, 0);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(v20[0] + 16) >= *(v20[0] + 24) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }

    else
    {
      sub_100020C74(10005, 0x696C627570206F4ELL, 0xED000079656B2063, 0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(v20[0] + 16) >= *(v20[0] + 24) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  else
  {
    sub_100020C74(10005, 0xD00000000000001ALL, 0x8000000100352CD0, 0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(v20[0] + 16) >= *(v20[0] + 24) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_10016A6EC(v20, v2, a1, a2);
}

uint64_t sub_10017028C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a1;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v20 = v8;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  sub_100004074(&qword_1003A56A8, &qword_1002C9AB8);
  v16 = v26;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  if (v16)
  {
    return (*(v13 + 8))(v15, v12);
  }

  (*(v13 + 8))(v15, v12);
  result = v24;
  *v19 = v25;
  return result;
}

uint64_t sub_1001703FC(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static DispatchWorkItemFlags.barrier.getter();
  v12 = v4;
  v13 = a1;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_100170518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  OS_dispatch_queue.sync<A>(flags:execute:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_100170624()
{
  String.append(_:)(*(*v0 + 40));
  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000010;
}

uint64_t sub_100170754()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10017078C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100170850()
{
  type metadata accessor for Date();
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = v0[4];

  sub_10016F5DC(v1, v2, v3);
}

uint64_t sub_1001708BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001708D4()
{
  result = qword_1003A56B8;
  if (!qword_1003A56B8)
  {
    sub_1000040BC(&qword_1003A56B0, &qword_1002C9AC0);
    sub_100170988(&qword_1003A4EC0, type metadata accessor for AAASigningIdentity, &unk_1002C9684);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A56B8);
  }

  return result;
}

uint64_t sub_100170988(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001709D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100170A24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_100170A8C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_100170AA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 26))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100170AF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100170B68@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    v7 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v7 == 2)
      {
        a2 = *(a2 + 16);
        v8 = *(v5 + 24);
      }

      else
      {
        a2 = 0;
        v8 = 0;
      }
    }

    else
    {
      if (v7)
      {
        a2 = a2;
      }

      else
      {
        a2 = 0;
      }

      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(a3);
      }
    }

    v9 = -result;
    v10 = sub_1001714C8(v8, a2, v5, a3);
    if (v10 > 0 || v10 <= v9)
    {
      v11 = sub_100171464(v8, v9, v5, a3);
      if (v7 > 1)
      {
        v12 = 0;
        if (v7 == 2)
        {
          v12 = *(v5 + 16);
        }
      }

      else if (v7)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v11 < v12)
      {
        __break(1u);
      }
    }

    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = sub_100009548(v5, a3);
    *a4 = v13;
    a4[1] = v15;
  }

  return result;
}

uint64_t sub_100170CB0(unint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = a1 >> 8;
  v9 = a1 >> 16;
  v10 = a1 >> 24;
  sub_100004074(&qword_10039E2E0, &qword_1002C1720);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002C1690;
  *(v11 + 32) = a1;
  *(v11 + 33) = v8;
  *(v11 + 34) = v9;
  *(v11 + 35) = v10;
  v12 = sub_10014B8C8(v11);
  v14 = v13;

  v23 = v12;
  v24 = v14;
  v15 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_10;
    }

    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
  }

  else
  {
    if (!v15)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v16 = a2;
    v17 = a2 >> 32;
  }

  if (v16 != v17)
  {
LABEL_9:
    v21 = sub_100004074(&qword_10039E2E8, &qword_1002C1728);
    v22 = sub_10009E2FC();
    LOBYTE(v20[0]) = BYTE4(a1);
    sub_10000BE18(v20, v21);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_10000959C(v20);
    Data.append(_:)();
  }

LABEL_10:
  v18 = sub_100004074(&qword_10039E2E8, &qword_1002C1728);
  v21 = v18;
  v22 = sub_10009E2FC();
  LOBYTE(v20[0]) = a4;
  sub_10000BE18(v20, v18);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_10000959C(v20);
  return v23;
}

uint64_t sub_100170F04(unint64_t a1, uint64_t a2, unint64_t a3, __int16 a4)
{
  v8 = a1 >> 8;
  v9 = a1 >> 16;
  v10 = a1 >> 24;
  sub_100004074(&qword_10039E2E0, &qword_1002C1720);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002C1690;
  *(v11 + 32) = a1;
  *(v11 + 33) = v8;
  *(v11 + 34) = v9;
  *(v11 + 35) = v10;
  v12 = sub_10014B8C8(v11);
  v14 = v13;

  v22 = v12;
  v23 = v14;
  v15 = sub_100004074(&qword_10039E2E8, &qword_1002C1728);
  v20 = v15;
  v16 = sub_10009E2FC();
  v21 = v16;
  LOBYTE(v19[0]) = 0;
  sub_10000BE18(v19, v15);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_10000959C(v19);
  v17 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v17 == 2 && *(a2 + 16) != *(a2 + 24))
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!v17)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (a2 != a2 >> 32)
    {
LABEL_9:
      v20 = v15;
      v21 = v16;
      LOBYTE(v19[0]) = BYTE5(a1);
      sub_10000BE18(v19, v15);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_10000959C(v19);
      v20 = v15;
      v21 = v16;
      LOBYTE(v19[0]) = BYTE4(a1);
      sub_10000BE18(v19, v15);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_10000959C(v19);
      Data.append(_:)();
    }
  }

LABEL_10:
  v20 = v15;
  v21 = v16;
  LOBYTE(v19[0]) = HIBYTE(a4);
  sub_10000BE18(v19, v15);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_10000959C(v19);
  v20 = v15;
  v21 = v16;
  LOBYTE(v19[0]) = a4;
  sub_10000BE18(v19, v15);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_10000959C(v19);
  return v22;
}

_WORD *sub_1001712B0@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_1001712E0()
{
  v1 = *v0;
  sub_100004074(&qword_10039E268, &unk_1002C16F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002C1660;
  *(v2 + 56) = &type metadata for UInt16;
  *(v2 + 64) = &protocol witness table for UInt16;
  *(v2 + 32) = v1;

  return String.init(format:_:)();
}

uint64_t sub_100171364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001713BC();
  v5 = sub_100171410();

  return Error<>._code.getter(a1, a2, v4, v5);
}

unint64_t sub_1001713BC()
{
  result = qword_1003A56C0;
  if (!qword_1003A56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A56C0);
  }

  return result;
}

unint64_t sub_100171410()
{
  result = qword_1003A56C8;
  if (!qword_1003A56C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A56C8);
  }

  return result;
}

uint64_t sub_100171464(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001714C8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_10017157C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
      result = v8 - 2;
      if (v8 < 2)
      {
        goto LABEL_8;
      }

LABEL_11:
      v13 = a3;
      v14 = Data._Representation.subscript.getter();
      v15 = Data._Representation.subscript.getter();
      sub_1000094F4(v4, a2);
      sub_100170B68(2, v4, a2, &v39);
      v37 = &type metadata for Data;
      v38 = &protocol witness table for Data;
      v36 = v39;
      v16 = sub_10000BE18(&v36, &type metadata for Data);
      v17 = *v16;
      v18 = v16[1];
      v19 = v18 >> 62;
      if ((v18 >> 62) > 1)
      {
        if (v19 != 2)
        {
          memset(v34, 0, 14);
          v21 = v34;
          v20 = v34;
          goto LABEL_33;
        }

        v22 = *(v17 + 16);
        v23 = *(v17 + 24);
        v24 = __DataStorage._bytes.getter();
        if (v24)
        {
          v25 = __DataStorage._offset.getter();
          v17 = v22 - v25;
          if (__OFSUB__(v22, v25))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v24 += v17;
        }

        v26 = __OFSUB__(v23, v22);
        v27 = v23 - v22;
        if (!v26)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v19)
      {
        v34[0] = *v16;
        LOWORD(v34[1]) = v18;
        BYTE2(v34[1]) = BYTE2(v18);
        BYTE3(v34[1]) = BYTE3(v18);
        BYTE4(v34[1]) = BYTE4(v18);
        BYTE5(v34[1]) = BYTE5(v18);
        v20 = v34 + BYTE6(v18);
        v21 = v34;
LABEL_33:
        sub_10014B4B8(v21, v20, v35);
        v10 = v15 | (v14 << 8);
        v9 = v35[0];
        v11 = v35[1];
        result = sub_10000959C(&v36);
        a3 = v13;
        goto LABEL_34;
      }

      v28 = v17;
      v29 = v17 >> 32;
      v27 = v29 - v28;
      if (v29 >= v28)
      {
        v24 = __DataStorage._bytes.getter();
        if (!v24)
        {
LABEL_25:
          v31 = __DataStorage._length.getter();
          if (v31 >= v27)
          {
            v32 = v27;
          }

          else
          {
            v32 = v31;
          }

          v33 = (v32 + v24);
          if (v24)
          {
            v20 = v33;
          }

          else
          {
            v20 = 0;
          }

          v21 = v24;
          goto LABEL_33;
        }

        v30 = __DataStorage._offset.getter();
        if (!__OFSUB__(v28, v30))
        {
          v24 += v28 - v30;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v5)
  {
    v12 = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      result = v12 - 2;
      if (v12 < 2)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  result = BYTE6(a2) - 2;
  if (BYTE6(a2) >= 2uLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  v9 = 0;
  v10 = 0;
  v11 = 0xC000000000000000;
LABEL_34:
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v10;
  *(a3 + 24) = v4;
  *(a3 + 32) = a2;
  return result;
}

uint64_t sub_100171840(__int16 a1, uint64_t a2)
{
  swift_errorRetain();
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  LODWORD(result) = swift_dynamicCast();
  v4 = v5;
  if (!result)
  {
    v4 = 0;
  }

  if (v4 == a1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001718BC()
{
  sub_100009548(*(v0 + 16), *(v0 + 24));
  sub_100009548(*(v0 + 32), *(v0 + 40));
  sub_100009548(*(v0 + 48), *(v0 + 56));
  sub_100009548(*(v0 + 64), *(v0 + 72));
  sub_100009548(*(v0 + 80), *(v0 + 88));
  sub_100009548(*(v0 + 96), *(v0 + 104));
  sub_100009548(*(v0 + 112), *(v0 + 120));
  sub_100009548(*(v0 + 128), *(v0 + 136));
  sub_100009548(*(v0 + 144), *(v0 + 152));
  sub_100009548(*(v0 + 160), *(v0 + 168));
  sub_100009548(*(v0 + 176), *(v0 + 184));
  return v0;
}

uint64_t sub_10017192C()
{
  sub_1001718BC();

  return swift_deallocClassInstance();
}

uint64_t *GlobalState.shared.unsafeMutableAddressor()
{
  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  return &static GlobalState.shared;
}

Swift::Void __swiftcall GlobalState.updateMFDEventTimestamp()()
{
  [*(v0 + 88) lock];
  v1 = *(v0 + 104);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  *(v0 + 104) = v3;
  while (*(v0 + 96) > 0 || *(v0 + 112) == 1)
  {
    [*(v0 + 88) wait];
  }

  v4 = *(v0 + 104);
  v2 = __OFSUB__(v4, 1);
  v5 = v4 - 1;
  if (v2)
  {
    goto LABEL_14;
  }

  *(v0 + 104) = v5;
  *(v0 + 112) = 1;
  [*(v0 + 88) unlock];
  v6 = *(v0 + 52);
  v7 = *(v0 + 56);
  TMGetKernelMonotonicClock();
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  *(v0 + 32) = v9;
  *(v0 + 40) = v8;
  *(v0 + 48) = 0;
  sub_100173040();
  [*(v0 + 88) lock];
  *(v0 + 112) = 0;
  [*(v0 + 88) broadcast];
  v10 = *(v0 + 88);

  [v10 unlock];
}

Swift::Void __swiftcall GlobalState.receiveTMRTCResetNotification()()
{
  v2 = v0;
  [*(v0 + 88) lock];
  v3 = *(v0 + 104);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_13;
  }

  *(v0 + 104) = v5;
  while (*(v0 + 96) > 0 || *(v0 + 112) == 1)
  {
    [*(v0 + 88) wait];
  }

  v6 = *(v0 + 104);
  v4 = __OFSUB__(v6, 1);
  v7 = v6 - 1;
  if (v4)
  {
    goto LABEL_17;
  }

  *(v0 + 104) = v7;
  *(v0 + 112) = 1;
  p_type = &stru_100399FF0.type;
  [*(v0 + 88) unlock];
  if (*(v0 + 56))
  {
    v8 = 0;
LABEL_10:
    *(v0 + 52) = v8 + 1;
    *(v0 + 56) = 0;
    goto LABEL_11;
  }

  v8 = *(v0 + 52);
  if (v8 != -1)
  {
    goto LABEL_10;
  }

  if (qword_10039D700 != -1)
  {
    goto LABEL_18;
  }

LABEL_13:
  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A57D8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "unexpected rtc reset count, reset GlobalState info", v12, 2u);
  }

  LOBYTE(v14[0]) = 1;
  v13 = *(v2 + 32);
  v14[0] = *(v2 + 16);
  v14[1] = v13;
  v15[0] = *(v2 + 48);
  *(v15 + 9) = *(v2 + 57);
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  *(v2 + 52) = 0;
  *(v2 + 56) = 1;
  *(v2 + 57) = 2;
  *(v2 + 64) = 0;
  *(v2 + 72) = 2;
  sub_1001737E8(v14);
LABEL_11:
  sub_100173040();
  [*(v2 + 88) lock];
  *(v2 + 112) = 0;
  [*(v2 + 88) broadcast];
  [*(v2 + 88) p_type[493]];
}

id GlobalState.isPANPresent.getter()
{
  result = [*(v0 + 88) lock];
  while (*(v0 + 104) > 0 || *(v0 + 112) == 1)
  {
    result = [*(v0 + 88) wait];
  }

  v2 = *(v0 + 96);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v0 + 96) = v4;
  [*(v0 + 88) unlock];
  v5 = *(v0 + 57);
  result = [*(v0 + 88) lock];
  v6 = *(v0 + 96);
  v3 = __OFSUB__(v6, 1);
  v7 = v6 - 1;
  if (v3)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *(v0 + 96) = v7;
  if (!v7)
  {
    [*(v0 + 88) broadcast];
  }

  [*(v0 + 88) unlock];
  return (v5 & 1);
}

id GlobalState.isPANPresent.setter(char a1)
{
  result = [*(v1 + 88) lock];
  v4 = *(v1 + 104);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  *(v1 + 104) = v6;
  while (*(v1 + 96) > 0 || *(v1 + 112) == 1)
  {
    result = [*(v1 + 88) wait];
  }

  v7 = *(v1 + 104);
  v5 = __OFSUB__(v7, 1);
  v8 = v7 - 1;
  if (v5)
  {
    goto LABEL_11;
  }

  *(v1 + 104) = v8;
  *(v1 + 112) = 1;
  [*(v1 + 88) unlock];
  *(v1 + 57) = a1 & 1;
  sub_100173040();
  [*(v1 + 88) lock];
  *(v1 + 112) = 0;
  [*(v1 + 88) broadcast];
  v9 = *(v1 + 88);

  return [v9 unlock];
}

void __swiftcall GlobalState.updateNumberOfDeletableClients()(Swift::tuple_previous_Int_optional_current_Int_optional *__return_ptr retstr)
{
  [*(v1 + 88) lock];
  v2 = *(v1 + 104);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 104) = v4;
    while (*(v1 + 96) > 0 || *(v1 + 112) == 1)
    {
      [*(v1 + 88) wait];
    }

    v5 = *(v1 + 104);
    v3 = __OFSUB__(v5, 1);
    v6 = v5 - 1;
    if (!v3)
    {
      *(v1 + 104) = v6;
      *(v1 + 112) = 1;
      [*(v1 + 88) unlock];
      v7 = *(sub_100173EA8() + 2);

      *(v1 + 16) = v7;
      *(v1 + 24) = 0;
      sub_100173040();
      [*(v1 + 88) lock];
      *(v1 + 112) = 0;
      [*(v1 + 88) broadcast];
      [*(v1 + 88) unlock];
      return;
    }
  }

  __break(1u);
}

id sub_100171FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  result = [*(v4 + 88) lock];
  v19 = *(v4 + 104);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  *(v4 + 104) = v21;
  while (*(v4 + 96) > 0 || *(v4 + 112) == 1)
  {
    result = [*(v4 + 88) wait];
  }

  v22 = *(v4 + 104);
  v20 = __OFSUB__(v22, 1);
  v23 = v22 - 1;
  if (v20)
  {
    goto LABEL_15;
  }

  *(v4 + 104) = v23;
  *(v4 + 112) = 1;
  [*(v4 + 88) unlock];
  if (*(v4 + 64))
  {
    v24 = *(v4 + 64);
  }

  else
  {
    v24 = sub_1001847C4(_swiftEmptyArrayStorage);
  }

  v29 = v24;
  sub_100065074(a3, v17, &unk_1003A3BE0, &qword_1002C36F0);
  if ((*(v9 + 48))(v17, 1, v8) == 1)
  {

    sub_10000BD44(v17, &unk_1003A3BE0, &qword_1002C36F0);
    sub_10017ADF8(a1, a2, v15);
    sub_10000BD44(v15, &unk_1003A3BE0, &qword_1002C36F0);
    v25 = v29;
  }

  else
  {
    (*(v9 + 32))(v11, v17, v8);

    v26 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v26;
    sub_1001807BC(v11, a1, a2, isUniquelyReferenced_nonNull_native);
    v25 = v28;
  }

  *(v4 + 64) = v25;

  sub_100173040();
  [*(v4 + 88) lock];
  *(v4 + 112) = 0;
  [*(v4 + 88) broadcast];
  return [*(v4 + 88) unlock];
}

uint64_t sub_1001722D0()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A57D8);
  sub_10000403C(v0, qword_1003A57D8);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.xpcServer.getter();
}

uint64_t sub_10017233C(double a1)
{
  _StringGuts.grow(_:)(52);
  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v1._object = 0x8000000100352F30;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._object = 0x8000000100352F50;
  v3._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v3);
  Double.write<A>(to:)();
  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0;
}

uint64_t sub_100172430(void *a1, uint64_t a2, double a3)
{
  v5 = sub_100004074(&qword_1003A5940, &qword_1002CA130);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000BE18(a1, a1[3]);
  sub_100175104();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001725B8()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x7465736552637472;
  }
}

uint64_t sub_100172604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7465736552637472 && a2 == 0xED0000746E756F43;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100353090 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001726F0(uint64_t a1)
{
  v2 = sub_100175104();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017272C(uint64_t a1)
{
  v2 = sub_100175104();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_100172794(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  return *(a1 + 8) < *(a2 + 8) && *a2 >= *a1;
}

BOOL sub_1001727C4(uint64_t a1, uint64_t a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  return *(a2 + 8) >= *(a1 + 8) || *a1 < *a2;
}

BOOL sub_1001727F4(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  return *(a1 + 8) >= *(a2 + 8) || *a2 < *a1;
}

BOOL sub_100172824(uint64_t a1, uint64_t a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  return *(a2 + 8) < *(a1 + 8) && *a1 >= *a2;
}

void sub_100172854(uint64_t a1@<X8>, void *a2@<X0>)
{
  v5 = sub_100174390(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
  }
}

uint64_t sub_1001728B0()
{
  _StringGuts.grow(_:)(154);
  v1._countAndFlagsBits = 0xD000000000000038;
  v1._object = 0x8000000100352F70;
  String.append(_:)(v1);
  v2 = 0xE300000000000000;
  v3 = 7104878;
  v4 = 0xE300000000000000;
  if ((*(v0 + 32) & 1) == 0)
  {
    v3 = sub_10017233C(*(v0 + 24));
    v4 = v5;
  }

  v6 = v4;
  String.append(_:)(*&v3);

  v7._object = 0x8000000100352FB0;
  v7._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v7);
  v8 = *(v0 + 41);
  if (v8)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  v10 = 0xE500000000000000;
  if (v8)
  {
    v10 = 0xE400000000000000;
  }

  if (v8 == 2)
  {
    v11 = 7104878;
  }

  else
  {
    v11 = v9;
  }

  if (v8 == 2)
  {
    v12 = 0xE300000000000000;
  }

  else
  {
    v12 = v10;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 0xD000000000000013;
  v14._object = 0x8000000100352FD0;
  String.append(_:)(v14);
  v15 = 7104878;
  if ((*(v0 + 8) & 1) == 0)
  {
    sub_100082B20();
    v15 = BinaryInteger.description.getter();
    v2 = v16;
  }

  v17 = v2;
  String.append(_:)(*&v15);

  v18._countAndFlagsBits = 0xD000000000000011;
  v18._object = 0x8000000100352FF0;
  String.append(_:)(v18);
  if (*(v0 + 40))
  {
    v19 = 0xE300000000000000;
    v20 = 7104878;
  }

  else
  {
    sub_100174DF8();
    v20 = BinaryInteger.description.getter();
    v19 = v21;
  }

  v22 = v19;
  String.append(_:)(*&v20);

  v23._countAndFlagsBits = 0x617355707061202CLL;
  v23._object = 0xEC000000203A6567;
  String.append(_:)(v23);
  if (*(v0 + 48))
  {
    type metadata accessor for Date();
    v24 = Dictionary.description.getter();
    v26 = v25;
  }

  else
  {
    v24 = 6109787;
    v26 = 0xE300000000000000;
  }

  v27 = v26;
  String.append(_:)(*&v24);

  v28._countAndFlagsBits = 0xD000000000000016;
  v28._object = 0x8000000100353010;
  String.append(_:)(v28);
  v29 = *(v0 + 56);
  if (v29)
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  v31 = 0xE500000000000000;
  if (v29)
  {
    v31 = 0xE400000000000000;
  }

  if (v29 == 2)
  {
    v32 = 7104878;
  }

  else
  {
    v32 = v30;
  }

  if (v29 == 2)
  {
    v33 = 0xE300000000000000;
  }

  else
  {
    v33 = v31;
  }

  v34 = v33;
  String.append(_:)(*&v32);

  return 0;
}

uint64_t sub_100172B88(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A58E0, &qword_1002C9EF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000BE18(a1, a1[3]);
  sub_100174BF4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 16);
    v14 = *(v3 + 32);
    v12 = 1;
    sub_100155B90();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = *(v3 + 40);
    LOBYTE(v13) = 2;
    v12 = v9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v13 = *(v3 + 48);
    v12 = 4;
    sub_100004074(&qword_1003A58C8, &qword_1002C9EF0);
    sub_100174D3C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100172DEC()
{
  v1 = *v0;
  v2 = 0x664F7265626D756ELL;
  v3 = 0x6572504E41507369;
  v4 = 0x6567617355707061;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x44464D7473616CLL;
  if (v1 != 1)
  {
    v5 = 0x7465736552637472;
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

uint64_t sub_100172ECC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10017453C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100172EF4(uint64_t a1)
{
  v2 = sub_100174BF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100172F30(uint64_t a1)
{
  v2 = sub_100174BF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100172F6C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100174754(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

void sub_100173040()
{
  v1 = type metadata accessor for JSONEncoder.OutputFormatting();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    type metadata accessor for JSONEncoder();
    v8 = v0[2];
    v28[0] = v0[1];
    v28[1] = v8;
    v10 = v0[1];
    v9 = v0[2];
    v29[0] = v0[3];
    *(v29 + 9) = *(v0 + 57);
    v25 = v10;
    v26 = v9;
    v27[0] = v0[3];
    *(v27 + 9) = *(v0 + 57);
    v24 = _swiftEmptyArrayStorage;
    sub_100174D04(v28, v22);
    sub_100174E4C(&qword_1003A1068, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
    sub_100004074(&qword_1003A1070, &qword_1002C5170);
    sub_10009AAB4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_100174E94();
    v15 = static JSONEncoder.encodeClean<A>(_:outputFormatting:)();
    v17 = v16;
    (*(v2 + 8))(v4, v1);
    v22[0] = v25;
    v22[1] = v26;
    v23[0] = v27[0];
    *(v23 + 9) = *(v27 + 9);
    sub_1001737E8(v22);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v19 = String._bridgeToObjectiveC()();
    [v7 setObject:isa forKey:v19];

    sub_100009548(v15, v17);
  }

  else
  {
    if (qword_10039D700 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000403C(v11, qword_1003A57D8);
    v21 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v21, v12, "Cannot access SPR user defaults", v13, 2u);
    }

    v14 = v21;
  }
}

uint64_t (*GlobalState.isPANPresent.modify(uint64_t a1))()
{
  *a1 = v1;
  result = [*(v1 + 88) lock];
  while (*(v1 + 104) > 0 || *(v1 + 112) == 1)
  {
    result = [*(v1 + 88) wait];
  }

  v4 = *(v1 + 96);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 96) = v6;
  [*(v1 + 88) unlock];
  v7 = *(v1 + 57);
  result = [*(v1 + 88) lock];
  v8 = *(v1 + 96);
  v5 = __OFSUB__(v8, 1);
  v9 = v8 - 1;
  if (v5)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *(v1 + 96) = v9;
  if (!v9)
  {
    [*(v1 + 88) broadcast];
  }

  [*(v1 + 88) unlock];
  *(a1 + 8) = v7 & 1;
  return sub_10017368C;
}

id sub_10017368C(_BYTE *a1, char a2)
{
  v3 = *a1;
  v4 = a1[8];
  result = [*(*a1 + 88) lock];
  v6 = *(v3 + 104);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  v9 = v7;
  if (a2)
  {
    if (v9)
    {
      __break(1u);
      goto LABEL_23;
    }

    *(v3 + 104) = v8;
    while (*(v3 + 96) > 0 || *(v3 + 112) == 1)
    {
      result = [*(v3 + 88) wait];
    }

    v10 = *(v3 + 104);
    v7 = __OFSUB__(v10, 1);
    v8 = v10 - 1;
    if (!v7)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  if (v9)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  *(v3 + 104) = v8;
  while (*(v3 + 96) > 0 || *(v3 + 112) == 1)
  {
    result = [*(v3 + 88) wait];
  }

  v11 = *(v3 + 104);
  v7 = __OFSUB__(v11, 1);
  v8 = v11 - 1;
  if (v7)
  {
    goto LABEL_24;
  }

LABEL_19:
  *(v3 + 104) = v8;
  *(v3 + 112) = 1;
  [*(v3 + 88) unlock];
  *(v3 + 57) = v4;
  sub_100173040();
  [*(v3 + 88) lock];
  *(v3 + 112) = 0;
  [*(v3 + 88) broadcast];
  v12 = *(v3 + 88);

  return [v12 unlock];
}

uint64_t sub_1001737C8()
{
  result = sub_100173818();
  static GlobalState.shared = result;
  return result;
}

uint64_t sub_100173818()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    if (qword_10039D700 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000403C(v12, qword_1003A57D8);
    v2 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v2, v13, "Cannot access SPR user defaults", v14, 2u);
    }

    goto LABEL_12;
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 dataForKey:v3];

  if (!v4)
  {
LABEL_12:

    LOBYTE(v32) = 1;
    LOBYTE(v29[0]) = 1;
    v31 = 1;
    type metadata accessor for GlobalState();
    v15 = swift_allocObject();
    v16 = [objc_allocWithZone(NSCondition) init];
    result = v15;
    *(v15 + 16) = 0;
    *(v15 + 96) = 0;
    *(v15 + 104) = 0;
    *(v15 + 88) = v16;
    *(v15 + 112) = 0;
    *(v15 + 24) = 1;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 1;
    *(v15 + 52) = 0;
    *(v15 + 56) = 513;
    *(v15 + 64) = 0;
    *(v15 + 72) = 2;
    goto LABEL_13;
  }

  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_10039D700 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_1003A57D8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Get GlobalState from UserDefaults key stateInfo", v11, 2u);
  }

  type metadata accessor for JSONDecoder();
  sub_10009A814(_swiftEmptyArrayStorage);
  sub_100174EE8();
  static JSONDecoder.decodeClean<A>(_:from:userInfo:)();

  v32 = v29[0];
  v33 = v29[1];
  v34[0] = v30[0];
  *(v34 + 9) = *(v30 + 9);
  sub_100174D04(&v32, v29);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  sub_1001737E8(&v32);
  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v29[0] = v22;
    *v21 = 136315138;
    v23 = sub_1001728B0();
    v25 = sub_100008F6C(v23, v24, v29);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "stateInfo: %s", v21, 0xCu);
    sub_10000959C(v22);
  }

  type metadata accessor for GlobalState();
  v26 = swift_allocObject();
  v27 = [objc_allocWithZone(NSCondition) init];

  sub_100009548(v5, v7);
  result = v26;
  *(v26 + 96) = 0;
  *(v26 + 104) = 0;
  *(v26 + 88) = v27;
  *(v26 + 112) = 0;
  v28 = v33;
  *(v26 + 16) = v32;
  *(v26 + 32) = v28;
  *(v26 + 48) = v34[0];
  *(v26 + 57) = *(v34 + 9);
LABEL_13:
  *(result + 80) = 0;
  return result;
}

uint64_t static GlobalState.shared.getter()
{
  if (qword_10039D708 != -1)
  {
    swift_once();
  }
}

uint64_t GlobalState.deinit()
{

  return v0;
}

uint64_t GlobalState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_100173EA8()
{
  v0 = [objc_opt_self() enumeratorWithOptions:0];
  v1 = [v0 nextObject];
  if (v1)
  {
    v20 = 1;
    v21 = _swiftEmptyArrayStorage;
    while (1)
    {
      v2 = v1;
      v3 = [v2 entitlements];
      v4 = String._bridgeToObjectiveC()();
      sub_10000411C(0, &qword_10039E280, NSObject_ptr);
      v5 = [v3 objectForKey:v4 ofClass:swift_getObjCClassFromMetadata()];

      if (v5)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
      }

      v25[0] = v23;
      v25[1] = v24;
      if (![v2 isDeletable])
      {
        break;
      }

      sub_100065074(v25, &v23, &qword_10039E248, &qword_1002C23D0);
      if (!*(&v24 + 1))
      {

        sub_10000BD44(&v23, &qword_10039E248, &qword_1002C23D0);
        goto LABEL_18;
      }

      if (!swift_dynamicCast() || (v22 & 1) == 0)
      {
        break;
      }

      v6 = [v2 bundleIdentifier];

      if (v6)
      {
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10004D4B0(0, *(v21 + 2) + 1, 1, v21);
        }

        v10 = *(v21 + 2);
        v9 = *(v21 + 3);
        if (v10 >= v9 >> 1)
        {
          v21 = sub_10004D4B0((v9 > 1), v10 + 1, 1, v21);
        }

        sub_10000BD44(v25, &qword_10039E248, &qword_1002C23D0);
        *(v21 + 2) = v10 + 1;
        v11 = &v21[16 * v10];
        *(v11 + 4) = v19;
        *(v11 + 5) = v8;
      }

      else
      {
        *&v23 = v20;
        v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        *&v23 = 0x236E776F6E6B6E55;
        *(&v23 + 1) = 0xE800000000000000;
        String.append(_:)(v12);

        v13 = *(&v23 + 1);
        v19 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10004D4B0(0, *(v21 + 2) + 1, 1, v21);
        }

        v15 = *(v21 + 2);
        v14 = *(v21 + 3);
        if (v15 >= v14 >> 1)
        {
          v21 = sub_10004D4B0((v14 > 1), v15 + 1, 1, v21);
        }

        result = sub_10000BD44(v25, &qword_10039E248, &qword_1002C23D0);
        *(v21 + 2) = v15 + 1;
        v17 = &v21[16 * v15];
        *(v17 + 4) = v19;
        *(v17 + 5) = v13;
        if (__OFADD__(v20++, 1))
        {
          __break(1u);
          return result;
        }
      }

LABEL_19:
      v1 = [v0 nextObject];
      if (!v1)
      {
        goto LABEL_29;
      }
    }

LABEL_18:
    sub_10000BD44(v25, &qword_10039E248, &qword_1002C23D0);
    goto LABEL_19;
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_29:

  return v21;
}

__n128 sub_1001742A4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001742C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10017431C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

double sub_100174390(void *a1)
{
  v2 = sub_100004074(&qword_1003A5930, &qword_1002CA128);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  sub_10000BE18(a1, a1[3]);
  sub_100175104();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  sub_10000959C(a1);
  return v7;
}

uint64_t sub_10017453C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x664F7265626D756ELL && a2 == 0xEF73746E65696C43;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44464D7473616CLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7465736552637472 && a2 == 0xED0000746E756F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6572504E41507369 && a2 == 0xEC000000746E6573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567617355707061 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100353070 == a2)
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

uint64_t sub_100174754@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100004074(&qword_1003A58B8, &qword_1002C9EE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v50 = 1;
  v48 = 1;
  v45 = 1;
  sub_10000BE18(a1, a1[3]);
  sub_100174BF4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000959C(a1);
    v29 = 0;
    LOBYTE(v30) = v50;
    *(&v30 + 1) = *v49;
    HIDWORD(v30) = *&v49[3];
    v31 = 0;
    v32 = 0;
    v33 = v48;
    v34 = v46;
    v35 = v47;
    v36 = 0;
    v37 = v45;
    v38 = 2;
    v39 = v43;
    v40 = v44;
    v41 = 0;
    v42 = 2;
    return sub_1001737E8(&v29);
  }

  else
  {
    LOBYTE(v29) = 0;
    v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = v9 & 1;
    LOBYTE(v25) = 1;
    sub_100155B3C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = v30;
    v24 = v29;
    v48 = v31;
    LOBYTE(v29) = 2;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = v10;
    v22 = a2;
    v45 = BYTE4(v10) & 1;
    LOBYTE(v29) = 3;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100004074(&qword_1003A58C8, &qword_1002C9EF0);
    LOBYTE(v25) = 4;
    sub_100174C48();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v13 = v29;
    v28 = 5;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *&v25 = v51;
    HIDWORD(v21) = v50;
    BYTE8(v25) = v50;
    v15 = v23;
    *&v26 = v24;
    *(&v26 + 1) = v23;
    v16 = v48;
    v27[0] = v48;
    *&v27[4] = v11;
    v17 = v45;
    v27[8] = v45;
    v27[9] = v12;
    *&v27[16] = v13;
    v27[24] = v14;
    sub_100174D04(&v25, &v29);
    sub_10000959C(a1);
    v29 = v51;
    LOBYTE(v30) = BYTE4(v21);
    v31 = v24;
    v32 = v15;
    v33 = v16;
    v36 = v11;
    v37 = v17;
    v38 = v12;
    v41 = v13;
    v42 = v14;
    result = sub_1001737E8(&v29);
    v19 = v26;
    v20 = v22;
    *v22 = v25;
    v20[1] = v19;
    v20[2] = *v27;
    *(v20 + 41) = *&v27[9];
  }

  return result;
}

unint64_t sub_100174BF4()
{
  result = qword_1003A58C0;
  if (!qword_1003A58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A58C0);
  }

  return result;
}

unint64_t sub_100174C48()
{
  result = qword_1003A58D0;
  if (!qword_1003A58D0)
  {
    sub_1000040BC(&qword_1003A58C8, &qword_1002C9EF0);
    sub_100174E4C(&qword_1003A58D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A58D0);
  }

  return result;
}

unint64_t sub_100174D3C()
{
  result = qword_1003A58E8;
  if (!qword_1003A58E8)
  {
    sub_1000040BC(&qword_1003A58C8, &qword_1002C9EF0);
    sub_100174E4C(&qword_1003A58F0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A58E8);
  }

  return result;
}

unint64_t sub_100174DF8()
{
  result = qword_1003A58F8;
  if (!qword_1003A58F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A58F8);
  }

  return result;
}

uint64_t sub_100174E4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100174E94()
{
  result = qword_1003A5900;
  if (!qword_1003A5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5900);
  }

  return result;
}

unint64_t sub_100174EE8()
{
  result = qword_1003A5908;
  if (!qword_1003A5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SPRTimestamp(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SPRTimestamp(uint64_t result, int a2, int a3)
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

unint64_t sub_100174FA8()
{
  result = qword_1003A5910;
  if (!qword_1003A5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5910);
  }

  return result;
}

unint64_t sub_100175000()
{
  result = qword_1003A5918;
  if (!qword_1003A5918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5918);
  }

  return result;
}

unint64_t sub_100175058()
{
  result = qword_1003A5920;
  if (!qword_1003A5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5920);
  }

  return result;
}

unint64_t sub_1001750B0()
{
  result = qword_1003A5928;
  if (!qword_1003A5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5928);
  }

  return result;
}

unint64_t sub_100175104()
{
  result = qword_1003A5938;
  if (!qword_1003A5938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5938);
  }

  return result;
}

unint64_t sub_10017516C()
{
  result = qword_1003A5948;
  if (!qword_1003A5948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5948);
  }

  return result;
}

unint64_t sub_1001751C4()
{
  result = qword_1003A5950;
  if (!qword_1003A5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5950);
  }

  return result;
}

unint64_t sub_10017521C()
{
  result = qword_1003A5958;
  if (!qword_1003A5958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5958);
  }

  return result;
}

uint64_t sub_100175270@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = type metadata accessor for Logger();
  v46 = *(v2 - 8);
  __chkstk_darwin(v2);
  v47 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v48 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v38 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v38 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v38 - v15;
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  if (*(v1 + 120))
  {
    static Date.distantPast.getter();
  }

  else
  {
    Date.init(timeIntervalSince1970:)();
  }

  Date.init(timeIntervalSince1970:)();
  static Date.- infix(_:_:)();
  v19 = *(v5 + 8);
  v19(v13, v4);
  if (static Date.< infix(_:_:)())
  {
    v44 = v19;
    v45 = v2;
    sub_100023B24();
    v20 = v47;
    static SPRLogger.common.getter();
    v43 = *(v5 + 16);
    v43(v10, v18, v4);
    v21 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v41))
    {
      v22 = swift_slowAlloc();
      v38 = v10;
      v23 = v22;
      v42 = v22;
      v40 = swift_slowAlloc();
      v50[0] = v40;
      *v23 = 136315394;
      swift_beginAccess();
      sub_10008BFA8();
      v39 = v21;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = sub_100008F6C(v24, v25, v50);

      v27 = v42;
      *(v42 + 4) = v26;
      *(v27 + 12) = 2080;
      v28 = v38;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v32 = v28;
      v19 = v44;
      v44(v32, v4);
      v33 = sub_100008F6C(v29, v31, v50);

      v34 = v42;
      *(v42 + 14) = v33;
      v35 = v39;
      _os_log_impl(&_mh_execute_header, v39, v41, "Invalid JWT: exp %s is before nbf %s, replacing exp with nbf.", v34, 0x16u);
      swift_arrayDestroy();

      (*(v46 + 8))(v47, v45);
    }

    else
    {

      v19 = v44;
      v44(v10, v4);
      (*(v46 + 8))(v20, v45);
    }

    swift_beginAccess();
    (*(v5 + 24))(v16, v18, v4);
    v36 = v43;
    v43(v13, v18, v4);
  }

  else
  {
    v36 = *(v5 + 16);
    v36(v13, v18, v4);
  }

  swift_beginAccess();
  v36(v48, v16, v4);
  DateInterval.init(start:end:)();
  v19(v18, v4);
  return (v19)(v16, v4);
}

BOOL static JSONWebToken.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v4 != v8 || v6 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v10 || (v5 != v11 || v7 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = *(a1 + 12);
  v30[8] = *(a1 + 11);
  v30[9] = v12;
  v13 = *(a1 + 14);
  v30[10] = *(a1 + 13);
  v30[11] = v13;
  v14 = *(a1 + 8);
  v30[4] = *(a1 + 7);
  v30[5] = v14;
  v15 = *(a1 + 10);
  v30[6] = *(a1 + 9);
  v30[7] = v15;
  v16 = *(a1 + 4);
  v30[0] = *(a1 + 3);
  v30[1] = v16;
  v17 = *(a1 + 6);
  v30[2] = *(a1 + 5);
  v30[3] = v17;
  v18 = *(a2 + 192);
  v29[8] = *(a2 + 176);
  v29[9] = v18;
  v19 = *(a2 + 224);
  v29[10] = *(a2 + 208);
  v29[11] = v19;
  v20 = *(a2 + 128);
  v29[4] = *(a2 + 112);
  v29[5] = v20;
  v21 = *(a2 + 160);
  v29[6] = *(a2 + 144);
  v29[7] = v21;
  v22 = *(a2 + 64);
  v29[0] = *(a2 + 48);
  v29[1] = v22;
  v23 = *(a2 + 96);
  v29[2] = *(a2 + 80);
  v29[3] = v23;
  if (!sub_1001769F4(v30, v29))
  {
    return 0;
  }

  v24 = a1[30];
  v25 = a1[31];
  v26 = *(a2 + 240);
  v27 = *(a2 + 248);

  return sub_10017688C(v24, v25, v26, v27);
}

uint64_t sub_1001758E8(void *a1)
{
  v3 = sub_100004074(&qword_1003A5998, &qword_1002CA688);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BE18(a1, a1[3]);
  sub_100178AF8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100175A88(char a1)
{
  result = 7566185;
  switch(a1)
  {
    case 1:
      result = 6583649;
      break;
    case 2:
      result = 6911082;
      break;
    case 3:
      result = 7627113;
      break;
    case 4:
      result = 7370853;
      break;
    case 5:
      result = 6709870;
      break;
    case 6:
      result = 6452595;
      break;
    case 7:
      result = 1684628851;
      break;
    case 8:
      result = 6580592;
      break;
    case 9:
      result = 1684631668;
      break;
    case 10:
      result = 0x64697074666173;
      break;
    case 11:
      result = 1953853539;
      break;
    case 12:
      result = 1802531681;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100175BA4(void *a1)
{
  v3 = sub_100004074(&qword_1003A59A8, &qword_1002CA690);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BE18(a1, a1[3]);
  sub_100178B4C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[7] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[6] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[5] = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[4] = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[3] = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100175EB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001773A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100175EE0(uint64_t a1)
{
  v2 = sub_100178AF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100175F1C(uint64_t a1)
{
  v2 = sub_100178AF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100175F58(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v2 == v6 && v4 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    if (v5)
    {
      if (v8 && (v3 == v9 && v5 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

double sub_10017603C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1001774B8(a2, v6);
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

uint64_t sub_1001760A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100177704(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001760D4(uint64_t a1)
{
  v2 = sub_100178B4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100176110(uint64_t a1)
{
  v2 = sub_100178B4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_10017614C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v15[8] = a1[8];
  v15[9] = v2;
  v3 = a1[11];
  v15[10] = a1[10];
  v15[11] = v3;
  v4 = a1[5];
  v15[4] = a1[4];
  v15[5] = v4;
  v5 = a1[7];
  v15[6] = a1[6];
  v15[7] = v5;
  v6 = a1[1];
  v15[0] = *a1;
  v15[1] = v6;
  v7 = a1[3];
  v15[2] = a1[2];
  v15[3] = v7;
  v8 = a2[9];
  v16[8] = a2[8];
  v16[9] = v8;
  v9 = a2[11];
  v16[10] = a2[10];
  v16[11] = v9;
  v10 = a2[5];
  v16[4] = a2[4];
  v16[5] = v10;
  v11 = a2[7];
  v16[6] = a2[6];
  v16[7] = v11;
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  v13 = a2[3];
  v16[2] = a2[2];
  v16[3] = v13;
  return sub_1001769F4(v15, v16);
}

double sub_1001761E0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100177B04(a2, v11);
  if (!v2)
  {
    v5 = v19;
    a1[8] = v18;
    a1[9] = v5;
    v6 = v21;
    a1[10] = v20;
    a1[11] = v6;
    v7 = v15;
    a1[4] = v14;
    a1[5] = v7;
    v8 = v17;
    a1[6] = v16;
    a1[7] = v8;
    v9 = v11[1];
    *a1 = v11[0];
    a1[1] = v9;
    result = *&v12;
    v10 = v13;
    a1[2] = v12;
    a1[3] = v10;
  }

  return result;
}

uint64_t sub_10017625C()
{
  v1 = 0x726564616568;
  v2 = 0x727574616E676973;
  if (*v0 != 2)
  {
    v2 = 0x65756C6156776172;
  }

  if (*v0)
  {
    v1 = 0x736D69616C63;
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

uint64_t sub_1001762D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100178234(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001762FC(uint64_t a1)
{
  v2 = sub_100176C74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100176338(uint64_t a1)
{
  v2 = sub_100176C74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t JSONWebToken.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_100004074(&qword_1003A5960, &qword_1002CA240);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25[-v6 - 8];
  sub_10000BE18(a1, a1[3]);
  sub_100176C74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[1];
  v29 = *v2;
  v30 = v8;
  v31 = v2[2];
  LOBYTE(v27[0]) = 0;
  sub_100176CC8();
  v9 = v53;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v9)
  {
    v10 = v2[12];
    v11 = v2[10];
    v49 = v2[11];
    v50 = v10;
    v12 = v2[12];
    v13 = v2[14];
    v51 = v2[13];
    v52 = v13;
    v14 = v2[8];
    v15 = v2[6];
    v45 = v2[7];
    v46 = v14;
    v16 = v2[8];
    v17 = v2[10];
    v47 = v2[9];
    v48 = v17;
    v18 = v2[4];
    v42[0] = v2[3];
    v42[1] = v18;
    v19 = v2[6];
    v21 = v2[3];
    v20 = v2[4];
    v43 = v2[5];
    v44 = v19;
    v37 = v49;
    v38 = v12;
    v22 = v2[14];
    v39 = v51;
    v40 = v22;
    v33 = v45;
    v34 = v16;
    v35 = v47;
    v36 = v11;
    v29 = v21;
    v30 = v20;
    v31 = v43;
    v32 = v15;
    v28 = 1;
    sub_100176D1C(v42, v27);
    sub_100176D54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27[8] = v37;
    v27[9] = v38;
    v27[10] = v39;
    v27[11] = v40;
    v27[4] = v33;
    v27[5] = v34;
    v27[6] = v35;
    v27[7] = v36;
    v27[0] = v29;
    v27[1] = v30;
    v27[2] = v31;
    v27[3] = v32;
    sub_100176DA8(v27);
    v41 = v2[15];
    v26 = v2[15];
    v25[23] = 2;
    sub_1000A1E00(&v41, v25);
    sub_1001002CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100009548(v26, *(&v26 + 1));
    LOBYTE(v26) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void *JSONWebToken.init(from:)@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_100178398(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x110uLL);
  }

  return result;
}

BOOL sub_1001766D0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 12);
  v33[8] = *(a1 + 11);
  v33[9] = v10;
  v11 = *(a1 + 14);
  v33[10] = *(a1 + 13);
  v33[11] = v11;
  v12 = *(a1 + 8);
  v33[4] = *(a1 + 7);
  v33[5] = v12;
  v13 = *(a1 + 10);
  v33[6] = *(a1 + 9);
  v33[7] = v13;
  v14 = *(a1 + 4);
  v33[0] = *(a1 + 3);
  v33[1] = v14;
  v15 = *(a1 + 6);
  v33[2] = *(a1 + 5);
  v33[3] = v15;
  v31 = a1[31];
  v32 = a1[30];
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v21 = a2[4];
  v20 = a2[5];
  v22 = *(a2 + 12);
  v34[8] = *(a2 + 11);
  v34[9] = v22;
  v23 = *(a2 + 14);
  v34[10] = *(a2 + 13);
  v34[11] = v23;
  v24 = *(a2 + 8);
  v34[4] = *(a2 + 7);
  v34[5] = v24;
  v25 = *(a2 + 10);
  v34[6] = *(a2 + 9);
  v34[7] = v25;
  v26 = *(a2 + 4);
  v34[0] = *(a2 + 3);
  v34[1] = v26;
  v27 = *(a2 + 6);
  v34[2] = *(a2 + 5);
  v34[3] = v27;
  v28 = a2[30];
  v29 = a2[31];
  if ((v4 != v16 || v5 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v6 != v18 || v8 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v9)
  {
    if (!v20 || (v7 != v21 || v9 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (!sub_1001769F4(v33, v34))
  {
    return 0;
  }

  return sub_10017688C(v32, v31, v28, v29);
}

BOOL sub_10017688C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1000094F4(a3, a4);
          return sub_10004D320(v13, a2, a3, a4, v17) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_1001769F4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] != *(a2 + 48) || a1[7] != *(a2 + 56))
  {
    return 0;
  }

  v6 = *(a2 + 72);
  if (a1[9])
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (a1[8] != *(a2 + 64))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = a1[11];
  v8 = *(a2 + 88);
  if (v7)
  {
    if (!v8 || (a1[10] != *(a2 + 80) || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = a1[13];
  v10 = *(a2 + 104);
  if (v9)
  {
    if (!v10 || (a1[12] != *(a2 + 96) || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = a1[15];
  v12 = *(a2 + 120);
  if (v11)
  {
    if (!v12 || (a1[14] != *(a2 + 112) || v11 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = a1[17];
  v14 = *(a2 + 136);
  if (v13)
  {
    if (!v14 || (a1[16] != *(a2 + 128) || v13 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = a1[19];
  v16 = *(a2 + 152);
  if (v15)
  {
    if (!v16 || (a1[18] != *(a2 + 144) || v15 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = a1[21];
  v18 = *(a2 + 168);
  if (v17)
  {
    if (!v18 || (a1[20] != *(a2 + 160) || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = a1[23];
  v20 = *(a2 + 184);
  if (v19)
  {
    return v20 && (a1[22] == *(a2 + 176) && v19 == v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v20;
}

unint64_t sub_100176C74()
{
  result = qword_1003A5968;
  if (!qword_1003A5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5968);
  }

  return result;
}

unint64_t sub_100176CC8()
{
  result = qword_1003A5970;
  if (!qword_1003A5970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5970);
  }

  return result;
}

unint64_t sub_100176D54()
{
  result = qword_1003A5978;
  if (!qword_1003A5978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5978);
  }

  return result;
}

void *sub_100176DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v23[0] = a1;
  *(&v23[0] + 1) = a2;
  *&__src[0] = 46;
  *(&__src[0] + 1) = 0xE100000000000000;
  sub_10008AB88();
  v7 = StringProtocol.components<A>(separatedBy:)();
  if (*(v7 + 16) != 3)
  {

    v10 = 0xD000000000000014;
    v11 = 0x80000001003530B0;
LABEL_13:
    sub_100020C74(10005, v10, v11, 0);
    return swift_willThrow();
  }

  result = Data.init(base64urlEncoded:options:)();
  if (v9 >> 60 == 15)
  {

LABEL_12:
    v11 = 0x80000001003530D0;
    v10 = 0xD000000000000012;
    goto LABEL_13;
  }

  if (*(v7 + 16) < 2uLL)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = v9;

  result = Data.init(base64urlEncoded:options:)();
  if (v14 >> 60 == 15)
  {

LABEL_11:
    sub_10001A074(v12, v13);
    goto LABEL_12;
  }

  v20 = result;
  v38 = v14;
  if (*(v7 + 16) < 3uLL)
  {
    goto LABEL_18;
  }

  v15 = Data.init(base64urlEncoded:options:)();
  if (v16 >> 60 == 15)
  {

    sub_10001A074(v20, v38);
    goto LABEL_11;
  }

  *&v19 = v15;
  *(&v19 + 1) = v16;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v17 = objc_autoreleasePoolPush();
  sub_100178BA0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {

    objc_autoreleasePoolPop(v17);

    swift_errorRetain();
    sub_100020C74(10005, 0x636564204E4F534ALL, 0xED0000676E69646FLL, v3);

    swift_willThrow();
    sub_10001A074(v12, v13);
    sub_10001A074(v20, v38);
    sub_10001A074(v19, *(&v19 + 1));
  }

  else
  {
    objc_autoreleasePoolPop(v17);
    v18 = objc_autoreleasePoolPush();
    sub_100178BF4();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    objc_autoreleasePoolPop(v18);
    sub_10001A074(v20, v38);
    sub_10001A074(v12, v13);

    v23[11] = v34;
    v23[12] = v35;
    v23[13] = v36;
    v23[14] = v37;
    v23[7] = v30;
    v23[8] = v31;
    v23[9] = v32;
    v23[10] = v33;
    v23[3] = v26;
    v23[4] = v27;
    v23[5] = v28;
    v23[6] = v29;
    __src[11] = v34;
    __src[12] = v35;
    __src[13] = v36;
    __src[14] = v37;
    __src[7] = v30;
    __src[8] = v31;
    __src[9] = v32;
    __src[10] = v33;
    __src[3] = v26;
    __src[4] = v27;
    __src[0] = v23[0];
    __src[1] = v23[1];
    __src[2] = v23[2];
    __src[5] = v28;
    __src[6] = v29;
    __src[15] = v19;
    *&__src[16] = a1;
    *(&__src[16] + 1) = a2;
    v23[15] = v19;
    v24 = a1;
    v25 = a2;
    sub_100034958(__src, v21);
    sub_10008C3EC(v23);
    return memcpy(a3, __src, 0x110uLL);
  }
}

uint64_t sub_1001773A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7371124 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6777953 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6580587 && a2 == 0xE300000000000000)
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

uint64_t sub_1001774B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100004074(&qword_1003A59D0, &qword_1002CA6A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_10000BE18(a1, a1[3]);
  sub_100178AF8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v12;
  v23 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_10000959C(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

uint64_t sub_100177704(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7566185 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6583649 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6911082 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7627113 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7370853 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 6709870 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 6452595 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1684628851 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 6580592 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1684631668 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x64697074666173 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1953853539 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 1802531681 && a2 == 0xE400000000000000)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_100177B04@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v62 = sub_100004074(&qword_1003A59C8, &qword_1002CA698);
  v5 = *(v62 - 8);
  __chkstk_darwin(v62);
  v7 = &v38 - v6;
  sub_10000BE18(a1, a1[3]);
  sub_100178B4C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v8 = v5;
  v61 = a2;
  LOBYTE(v75[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v60 = v10;
  LOBYTE(v75[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v59 = v12;
  v55 = v11;
  LOBYTE(v75[0]) = 2;
  v54 = KeyedDecodingContainer.decode(_:forKey:)();
  v58 = v13;
  LOBYTE(v75[0]) = 3;
  v53 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v75[0]) = 4;
  v52 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v75[0]) = 5;
  v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v91 = v14 & 1;
  LOBYTE(v75[0]) = 6;
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v57 = v15;
  LOBYTE(v75[0]) = 7;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v56 = v16;
  LOBYTE(v75[0]) = 8;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v49 = v17;
  LOBYTE(v75[0]) = 9;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = v19;
  v20 = v18;
  LOBYTE(v75[0]) = 10;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v45 = v21;
  LOBYTE(v75[0]) = 11;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v44 = v22;
  v92 = 12;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v40 = v24;
  v41 = v23;
  (*(v8 + 8))(v7, v62);
  *&v63 = v9;
  *(&v63 + 1) = v60;
  *&v64 = v55;
  *(&v64 + 1) = v59;
  v25 = v57;
  *&v65 = v54;
  *(&v65 + 1) = v58;
  *&v66 = v53;
  *(&v66 + 1) = v52;
  *&v67 = v51;
  LODWORD(v62) = v91;
  BYTE8(v67) = v91;
  v26 = v49;
  *&v68 = v50;
  *(&v68 + 1) = v57;
  v27 = v56;
  *&v69 = v48;
  *(&v69 + 1) = v56;
  *&v70 = v47;
  *(&v70 + 1) = v49;
  v39 = v20;
  *&v71 = v20;
  v29 = v45;
  v28 = v46;
  *(&v71 + 1) = v46;
  *&v72 = v43;
  *(&v72 + 1) = v45;
  *&v73 = v42;
  *(&v73 + 1) = v44;
  *&v74 = v41;
  *(&v74 + 1) = v40;
  sub_100176D1C(&v63, v75);
  sub_10000959C(a1);
  v75[0] = v9;
  v75[1] = v60;
  v75[2] = v55;
  v75[3] = v59;
  v75[4] = v54;
  v75[5] = v58;
  v75[6] = v53;
  v75[7] = v52;
  v75[8] = v51;
  v76 = v62;
  v77 = v50;
  v78 = v25;
  v79 = v48;
  v80 = v27;
  v81 = v47;
  v82 = v26;
  v83 = v39;
  v84 = v28;
  v85 = v43;
  v86 = v29;
  v87 = v42;
  v88 = v44;
  v89 = v41;
  v90 = v40;
  result = sub_100176DA8(v75);
  v31 = v72;
  v32 = v61;
  v61[8] = v71;
  v32[9] = v31;
  v33 = v74;
  v32[10] = v73;
  v32[11] = v33;
  v34 = v68;
  v32[4] = v67;
  v32[5] = v34;
  v35 = v70;
  v32[6] = v69;
  v32[7] = v35;
  v36 = v64;
  *v32 = v63;
  v32[1] = v36;
  v37 = v66;
  v32[2] = v65;
  v32[3] = v37;
  return result;
}

uint64_t sub_100178234(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726564616568 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D69616C63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
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

void *sub_100178398@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100004074(&qword_1003A59D8, &qword_1002CA6A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = a1[3];
  v36 = a1;
  sub_10000BE18(a1, v9);
  sub_100176C74();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(v36);
  }

  v10 = v6;
  v35 = a2;
  LOBYTE(v37[0]) = 0;
  sub_100178BA0();
  v11 = v5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v38;
  v13 = v40;
  v32 = v41;
  v33 = v39;
  v14 = v42;
  v34 = v43;
  v85 = 1;
  sub_100178BF4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v13;
  v31 = v12;
  v29 = v14;
  v80 = v68;
  v81 = v69;
  v82 = v70;
  v83 = v71;
  v76 = v64;
  v77 = v65;
  v78 = v66;
  v79 = v67;
  v72 = v60;
  v73 = v61;
  v74 = v62;
  v75 = v63;
  LOBYTE(v37[0]) = 2;
  sub_100100278();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v31;
  v16 = v38;
  v28 = v39;
  v84 = 3;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v18;
  (*(v10 + 8))(v8, v11);
  v20 = v16;
  v27 = v16;
  v22 = v32;
  v21 = v33;
  *&v37[0] = v15;
  *(&v37[0] + 1) = v33;
  v24 = v29;
  v23 = v30;
  *&v37[1] = v30;
  *(&v37[1] + 1) = v32;
  v25 = v34;
  *&v37[2] = v29;
  *(&v37[2] + 1) = v34;
  v37[11] = v80;
  v37[12] = v81;
  v37[13] = v82;
  v37[14] = v83;
  v37[7] = v76;
  v37[8] = v77;
  v37[9] = v78;
  v37[10] = v79;
  v37[3] = v72;
  v37[4] = v73;
  v37[5] = v74;
  v37[6] = v75;
  v37[15] = __PAIR128__(v28, v20);
  *&v37[16] = v17;
  *(&v37[16] + 1) = v19;
  sub_100034958(v37, &v38);
  sub_10000959C(v36);
  v38 = v31;
  v39 = v21;
  v40 = v23;
  v41 = v22;
  v42 = v24;
  v43 = v25;
  v52 = v80;
  v53 = v81;
  v54 = v82;
  v55 = v83;
  v48 = v76;
  v49 = v77;
  v50 = v78;
  v51 = v79;
  v44 = v72;
  v45 = v73;
  v46 = v74;
  v47 = v75;
  v56 = v27;
  v57 = v28;
  v58 = v17;
  v59 = v19;
  sub_10008C3EC(&v38);
  return memcpy(v35, v37, 0x110uLL);
}

uint64_t sub_1001787F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_100178840(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001788D4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_100178908(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_100178950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001789F4()
{
  result = qword_1003A5980;
  if (!qword_1003A5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5980);
  }

  return result;
}

unint64_t sub_100178A4C()
{
  result = qword_1003A5988;
  if (!qword_1003A5988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5988);
  }

  return result;
}

unint64_t sub_100178AA4()
{
  result = qword_1003A5990;
  if (!qword_1003A5990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5990);
  }

  return result;
}

unint64_t sub_100178AF8()
{
  result = qword_1003A59A0;
  if (!qword_1003A59A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A59A0);
  }

  return result;
}

unint64_t sub_100178B4C()
{
  result = qword_1003A59B0;
  if (!qword_1003A59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A59B0);
  }

  return result;
}

unint64_t sub_100178BA0()
{
  result = qword_1003A59B8;
  if (!qword_1003A59B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A59B8);
  }

  return result;
}

unint64_t sub_100178BF4()
{
  result = qword_1003A59C0;
  if (!qword_1003A59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A59C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JWTClaims.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JWTClaims.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100178DAC()
{
  result = qword_1003A59E0;
  if (!qword_1003A59E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A59E0);
  }

  return result;
}

unint64_t sub_100178E04()
{
  result = qword_1003A59E8;
  if (!qword_1003A59E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A59E8);
  }

  return result;
}

unint64_t sub_100178E5C()
{
  result = qword_1003A59F0;
  if (!qword_1003A59F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A59F0);
  }

  return result;
}

unint64_t sub_100178EB4()
{
  result = qword_1003A59F8;
  if (!qword_1003A59F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A59F8);
  }

  return result;
}

unint64_t sub_100178F0C()
{
  result = qword_1003A5A00;
  if (!qword_1003A5A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5A00);
  }

  return result;
}

unint64_t sub_100178F64()
{
  result = qword_1003A5A08;
  if (!qword_1003A5A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A5A08);
  }

  return result;
}

double sub_100178FB8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1000F5B08(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100182894();
      v9 = v11;
    }

    sub_100019D3C((*(v9 + 56) + 32 * v7), a2);
    sub_10017C00C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10017904C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A5A10);
  sub_10000403C(v0, qword_1003A5A10);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.common.getter();
}

void *sub_1001790B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v4[3];
  static DispatchWorkItemFlags.barrier.getter();
  v13 = v4;
  v14 = v5;
  OS_dispatch_queue.sync<A>(flags:execute:)();

  (*(v7 + 8))(v9, v6);

  return v4;
}

uint64_t sub_10017921C(uint64_t a1, uint64_t a2)
{
  if (qword_10039D710 != -1)
  {
LABEL_16:
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A5A10);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, v20);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, v20);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  a1 = *(a1 + 32);
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v17 = 0;
  if (v15)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *(a1 + 64 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      do
      {
LABEL_12:
        v15 &= v15 - 1;

        dispatch thunk of DispatchWorkItem.cancel()();
      }

      while (v15);
      continue;
    }
  }
}

uint64_t sub_10017949C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001790B8(a1, a2, a3);

  return swift_deallocClassInstance();
}

double sub_1001794F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (*(v6 + 16) && (v7 = sub_1000F5B08(a2), (v8 & 1) != 0))
  {
    sub_10000BDA4(*(v6 + 56) + 32 * v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_10017957C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v51 = a4;
  v52 = a5;
  v10 = type metadata accessor for DispatchTime();
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = __chkstk_darwin(v10);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v55 = &v50 - v13;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v14 - 8);
  v50 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v58 = a1;
  v16 = sub_10017AF7C(a2);
  swift_endAccess();
  if (v16)
  {
    if (qword_10039D710 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000403C(v17, qword_1003A5A10);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      LODWORD(v54) = a2;
      v22 = v21;
      aBlock[0] = v21;
      *v20 = 136315138;
      LOBYTE(v60) = v54;
      v23 = String.init<A>(describing:)();
      v25 = sub_100008F6C(v23, v24, aBlock);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "DefaultManagedDictionary Found workItem for key: %s. Cancelling it...", v20, 0xCu);
      sub_10000959C(v22);
      a2 = v54;
    }

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  sub_10000BDA4(a3, aBlock);
  swift_beginAccess();
  sub_10002D584(aBlock, a2);
  swift_endAccess();
  if (qword_10039D710 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v54 = sub_10000403C(v26, qword_1003A5A10);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136315138;
    LOBYTE(v60) = a2;
    v31 = String.init<A>(describing:)();
    v33 = a2;
    v34 = sub_100008F6C(v31, v32, aBlock);

    *(v29 + 4) = v34;
    a2 = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "DefaultManagedDictionary updated value for key: %s", v29, 0xCu);
    sub_10000959C(v30);
  }

  if (a6 > 0.0)
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = a6;
      _os_log_impl(&_mh_execute_header, v35, v36, "DefaultManagedDictionary updateValue duration: %f", v37, 0xCu);
    }

    static DispatchWorkItemFlags.barrier.getter();
    v38 = swift_allocObject();
    v39 = v58;
    swift_weakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    *(v40 + 24) = a2;
    v42 = v51;
    v41 = v52;
    *(v40 + 32) = v51;
    *(v40 + 40) = v41;
    aBlock[4] = sub_10017B0B0;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_100386200;
    _Block_copy(aBlock);
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();

    sub_1000696D8(v42, v41);
    v43 = DispatchWorkItem.init(flags:block:)();

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *(v39 + 32);
    *(v39 + 32) = 0x8000000000000000;
    sub_10018093C(v43, a2, isUniquelyReferenced_nonNull_native);
    *(v39 + 32) = v60;
    swift_endAccess();
    v45 = v53;
    static DispatchTime.now()();
    v46 = v55;
    + infix(_:_:)();
    v47 = *(v56 + 8);
    v48 = v45;
    v49 = v57;
    v47(v48, v57);
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v47(v46, v49);
  }
}

void sub_100179BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v45 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v43 = v10;
  v44 = v11;
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v42 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v41 = v15;
    swift_beginAccess();
    sub_10017AF7C(a2);
    swift_endAccess();

    swift_beginAccess();
    sub_100178FB8(a2, &aBlock);
    sub_10009E294(&aBlock);
    swift_endAccess();
    if (qword_10039D710 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000403C(v17, qword_1003A5A10);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v39 = v13;
      v21 = v20;
      v22 = swift_slowAlloc();
      v40 = a4;
      v38 = v22;
      *&aBlock = v22;
      *v21 = 136315138;
      LOBYTE(v46) = a2;
      v23 = String.init<A>(describing:)();
      v25 = v14;
      v26 = v8;
      v27 = v7;
      v28 = a3;
      v29 = sub_100008F6C(v23, v24, &aBlock);

      *(v21 + 4) = v29;
      a3 = v28;
      v7 = v27;
      v8 = v26;
      v14 = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "DefaultManagedDictionary removed value for key: %s", v21, 0xCu);
      sub_10000959C(v38);
      a4 = v40;

      v13 = v39;
    }

    v15 = v41;
  }

  if (a3)
  {
    sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
    v30 = v42;
    (*(v15 + 104))(v42, enum case for DispatchQoS.QoSClass.background(_:), v14);

    v31 = static OS_dispatch_queue.global(qos:)();
    (*(v15 + 8))(v30, v14);
    v50 = a3;
    v51 = a4;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v48 = sub_100003974;
    v49 = &unk_100386228;
    v32 = _Block_copy(&aBlock);

    v33 = static DispatchQoS.unspecified.getter();
    v46 = _swiftEmptyArrayStorage;
    sub_10017C4C0(v33, v34, v35);
    sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
    sub_100150BA0();
    v36 = v45;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);

    sub_1000048A0(a3, a4);
    (*(v8 + 8))(v36, v7);
    (*(v44 + 8))(v13, v43);
  }
}